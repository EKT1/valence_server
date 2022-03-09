from setuptools import setup

setup(
    name='valence_server',
    version='1.2',
    description='A HTTP server for package for Estonian language text valence(positive/negative) detection',
    packages=['valence_server',],
    include_package_data=True,
    install_requires=['valence>=1.2','mako>=1.0.4', 'bottle>=0.12.9', 'waitress>=0.9.0'],
    url='www.eki.ee',
    author='Institute of the Estonian Language',
    author_email='ekorpus@eki.ee',
    classifiers=[
        'Development Status :: 4 - Beta',
        'License :: OSI Approved :: GNU General Public License v3 (GPLv3)',
        'Programming Language :: Python',
        'Topic :: Text Processing :: Linguistic',
        'Natural Language :: Estonian',
    ],
    keywords='estonian valence',
    license='GPLv3',
    zip_safe=False
)