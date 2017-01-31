from setuptools import setup

setup(name='helloTravis',
    version='0.1',
    description='',
    author='Michael Hao',
    author_email='mike.hao@yahoo.com',
    setup_requires=['numpy','scipy'],
    install_requires=['markdown','pandas', 'pyparsing', 'requests', \
    'scikit-learn' ],
    zip_safe=False)
