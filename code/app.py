from flask import Flask,request

app = Flask(__name__)


@app.route('/', methods=['GET'])
def portal():
    return 'Hello, World!\n'

@app.route('/api/v1/rev_string', methods=['GET'])
def rev_string_v1():
    name = request.args.get('name')
    if name != None:
        return name[::-1]+'\n'
    return "Name not provided\n"

if __name__ == '__main__':
    app.run(debug=True)
