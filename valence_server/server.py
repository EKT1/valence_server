
#import pkg_resources
#i18n = pkg_resources.resource_filename('valence_server','i18n')
import gettext
et = gettext.translation('messages', 'i18n', languages=['et'])
et.install()

from bottle import hook, route, post, get, request, response, run, template, static_file, default_app
from bottle import mako_view as view, mako_template as template, ResourceManager, Bottle
from valence.valencecolor import marktext

@hook('before_request')
def strip_path():
    request.environ['PATH_INFO'] = request.environ['PATH_INFO'].rstrip('/')

@get("/")
@get('/valence')
def valence():
    return template("valence.mak", c=request.forms)


@post('/valence/color')
def color():
    p = request.forms
    text = marktext(p.text, p.dataonly, p.lexiconbased)
    if p.dataonly:
        return text
    else:
        p.text = text   #TODO remove
        return template("colored.mak", c=p)


@route('/valence/html/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='html')


@route('/valence/style/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root='style')

run(host="0.0.0.0", port=80, server="waitress", debug=True)

