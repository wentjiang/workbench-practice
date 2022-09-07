from clickhouse_driver import Client

if __name__ == '__main__':
    client = Client(host='localhost', port='30123')
    length = 1000000
    list = []
    for index in range(length):
        list.append("('" + str(index) + "','" + str(hash(str(index))) + "')")

        if index % 10000 == 9999:
            values = ','.join(list)
            command = "insert into test_table values " + values
            # print(command + "\n")
            client.execute(command)
            print("index : " + str(index))
            list.clear()
