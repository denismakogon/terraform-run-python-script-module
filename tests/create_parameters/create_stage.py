import argparse

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='JMS JDK installation script')
    parser.add_argument('-a', dest="a")
    parser.add_argument('-b', dest="b")
    args = parser.parse_args()
    a = args.a
    b = args.b

    assert a == "a"
    assert b == "b"
