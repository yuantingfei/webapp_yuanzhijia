from base import *
# DEBUG = True
DEBUG = False
LOGGING = {
    'version': 1,
    'disable_existing_loggers': True,
    'formatters': {
        'verbose': {
            'format': '%(levelname)s %(asctime)s %(filename)s [line:%(lineno)d] %(module)s %(process)d %(thread)d %(message)s'
        },
        'simple': {
            'format': '%(levelname)s %(message)s'
        },
    },
    'handlers': {
        'console':{
            'level':'DEBUG',
            'class':'logging.StreamHandler',
            'formatter': 'verbose'
        },
        'filelog': {
            'level': 'INFO',
            'class': 'logging.handlers.TimedRotatingFileHandler',
            'formatter': 'verbose',
            # 'filename':'G:/2018/NCASB/UI/test/webapp/webapp.log',
            'filename':BASE_DIR+'.log',
            'when':'midnight',
            'backupCount':5
        }
    },
    'loggers': {
         'django.db.backends': {
            'handlers': ['console'],
            'propagate': True,
            'level':'DEBUG',
        },
        'django.request': {
            'handlers': ['console', 'filelog'],
            'level': 'ERROR',
            'propagate': False,
        },
        'webapp': {
            'handlers': ['console', 'filelog'],
            'propagate': True,
            'level': 'INFO',
        },
        'nsfocus': {
            'handlers': ['console', 'filelog'],
            'propagate': True,
            'level': 'INFO',
        }
    }
}