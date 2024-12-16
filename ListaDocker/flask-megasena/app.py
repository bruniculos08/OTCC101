from flask import Flask, render_template
import random, datetime

app = Flask(__name__)

@app.route('/')
def index():
    num = random.sample(xrange(1, 61), 6)
    msg = 'Dezenas sorteadas em ' + datetime.datetime.now().strftime('%c%z') + ': '
    num.sort()
    msg2 = ''
    for n in num:
        msg2 = msg2 + "%02d " % (n)
    try:
        f = open("/var/megasena/log.txt", "a")
        f.write(msg + msg2 + "\n")
        f.close()
    except IOError as e:
        print "I/O error ({0}): {1}".format(e.errno, e.strerror)
    except:
        pass
    return render_template('index.html', msg=msg+'\n'+msg2)

if __name__ == "__main__":
    app.run(host="0.0.0.0")

