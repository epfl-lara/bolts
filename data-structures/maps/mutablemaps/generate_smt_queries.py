# This script runs the verification of the LongMap and the ListLongMap classes, generating SMT queries.
# The queries are filtered to keep only the ones corresponding to the solver that wins the race during verification with Stainless.

import time
import subprocess
import os
from typing import List, Dict

def verify(file_paths: List[str]) -> List[str]:
    files = " ".join(file_paths)
    cmd = f"stainless-dotty {files} --config-file=stainless.conf -Dparallel=12 --vc-cache=false --solvers=smt-z3,smt-cvc4,smt-cvc5 --debug=smt --no-colors=true --functions=repack"
    print("Running verification...")
    print(f"Command: {cmd}")
    res = subprocess.getoutput(cmd).split("\n")
    print("Verification done.")
    return res

def extract_table_from_res(res: List[str]) -> List[str]:
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


def write_to_file(file_path: str, lines: List[str]):
    with open(file_path, "w") as f:
        for line in lines:
            f.write(line + "\n")

def parse_table_smt_q_solver_correspondance(table: List[str]) -> Dict[int, str]:
    query_to_solver = {}
    for l in table:
        # Format of the id in the line: "smt-lib-{id}"
        if "smt-lib-" not in l:
            continue
        q_id = int(l.strip().split("  ")[-1].split("smt-lib-")[1].strip())
        if "smt-cvc4" in l:
            query_to_solver[q_id] = "cvc4"
        elif "smt-cvc5" in l:
            query_to_solver[q_id] = "cvc5"
        elif "smt-z3" in l:
            query_to_solver[q_id] = "z3"
        
    return query_to_solver

def delete_unwanted_smt_queries(q_id_to_solver: Dict[int, str], smt_folder: str):
    # Go through all the files in the smt folder
    for file in os.listdir(smt_folder):
        if file.endswith(".smt2"):
            # Get the id of the query
            q_id = int(file.split(".scala-")[1].replace(".smt2", ""))
            real_solver = q_id_to_solver[q_id]
            file_solver = file.split("-")[0]

            if file_solver != real_solver:
                os.remove(os.path.join(smt_folder, file))

def main():
    files = ["./src/main/scala/ch/epfl/chassot/ListLongMap.scala", "./src/main/scala/ch/epfl/chassot/MutableLongMap.scala"]
    res = verify(files)
    table = extract_table_from_res(res)
    today_date = time.strftime("%Y-%m-%d-%H-%M-%S")
    table_file_name = f"verification_summary_{today_date}.txt"
    write_to_file(table_file_name, table)
    print(f"Summary written to file: {table_file_name}")
    q_id_to_solver = parse_table_smt_q_solver_correspondance(table)
    print("Table parsed.")
    print(f"Query ID to solver correspondance: {q_id_to_solver}")
    print("Deleting unwanted queries...")
    delete_unwanted_smt_queries(q_id_to_solver, "./smt-sessions")
    print("SMT queries for losing solvers deleted.")

if __name__ == "__main__":
    main()