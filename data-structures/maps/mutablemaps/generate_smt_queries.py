# This script runs the verification of the LongMap and the ListLongMap classes, generating SMT queries.
# The queries are filtered to keep only the ones corresponding to the solver that wins the race during verification with Stainless.

import time
import subprocess

def verify(file_paths: list[str]) -> list[str]:
    files = " ".join(file_paths)
    cmd = f"stainless-dotty {files} --config-file=stainless.conf -Dparallel=12 --vc-cache=false --solvers=smt-z3,smt-cvc4,smt-cvc5 --debug=smt --no-colors=true"
    print("Running verification...")
    print(f"Command: {cmd}")
    res = subprocess.getoutput(cmd).split("\n")
    print("Verification done.")
    return res

def extract_table_from_res(res: list[str]) -> list[str]:
    table_lines = []
    flag = False
    for line in res:
        if "stainless summary" in line:
            flag = True
        elif "Verification pipeline summary:" in line:
            flag = False
        
        if flag:
            table_lines.append(line)
    return table_lines


def write_to_file(file_path: str, lines: list[str]):
    with open(file_path, "w") as f:
        for line in lines:
            f.write(line + "\n")

def main():
    files = ["./src/main/scala/ch/epfl/chassot/ListLongMap.scala", "./src/main/scala/ch/epfl/chassot/MutableLongMap.scala"]
    res = verify(files)
    table = extract_table_from_res(res)
    today_date = time.strftime("%Y-%m-%d-%H-%M-%S")
    write_to_file(f"verification_summary_{today_date}.txt", table)

if __name__ == "__main__":
    main()