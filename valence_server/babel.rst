
babel.cfg::
  [python: valence/valencecolor.py]
  [mako: views/**.mak]
  input_encoding = utf-8

commands::
  pybabel extract -F babel.cfg -o i18n/messages.pot .
  pybabel update -d i18n -l et -i i18n/messages.pot
  pybabel compile -d i18n -f

