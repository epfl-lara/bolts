; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59784 () Bool)

(assert start!59784)

(declare-fun b!659992 () Bool)

(declare-fun res!428235 () Bool)

(declare-fun e!379266 () Bool)

(assert (=> b!659992 (=> (not res!428235) (not e!379266))))

(declare-datatypes ((List!12676 0))(
  ( (Nil!12673) (Cons!12672 (h!13717 (_ BitVec 64)) (t!18912 List!12676)) )
))
(declare-fun acc!681 () List!12676)

(declare-fun contains!3219 (List!12676 (_ BitVec 64)) Bool)

(assert (=> b!659992 (= res!428235 (not (contains!3219 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659993 () Bool)

(declare-fun res!428232 () Bool)

(assert (=> b!659993 (=> (not res!428232) (not e!379266))))

(assert (=> b!659993 (= res!428232 (not (contains!3219 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659994 () Bool)

(declare-fun res!428230 () Bool)

(assert (=> b!659994 (=> (not res!428230) (not e!379266))))

(declare-fun e!379263 () Bool)

(assert (=> b!659994 (= res!428230 e!379263)))

(declare-fun res!428237 () Bool)

(assert (=> b!659994 (=> res!428237 e!379263)))

(declare-fun e!379265 () Bool)

(assert (=> b!659994 (= res!428237 e!379265)))

(declare-fun res!428236 () Bool)

(assert (=> b!659994 (=> (not res!428236) (not e!379265))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!659994 (= res!428236 (bvsgt from!3004 i!1382))))

(declare-fun b!659995 () Bool)

(assert (=> b!659995 (= e!379266 false)))

(declare-fun lt!308697 () Bool)

(declare-datatypes ((array!38787 0))(
  ( (array!38788 (arr!18582 (Array (_ BitVec 32) (_ BitVec 64))) (size!18946 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38787)

(declare-fun arrayNoDuplicates!0 (array!38787 (_ BitVec 32) List!12676) Bool)

(assert (=> b!659995 (= lt!308697 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12673))))

(declare-fun b!659996 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!659996 (= e!379265 (contains!3219 acc!681 k!2843))))

(declare-fun res!428234 () Bool)

(assert (=> start!59784 (=> (not res!428234) (not e!379266))))

(assert (=> start!59784 (= res!428234 (and (bvslt (size!18946 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18946 a!3626))))))

(assert (=> start!59784 e!379266))

(assert (=> start!59784 true))

(declare-fun array_inv!14356 (array!38787) Bool)

(assert (=> start!59784 (array_inv!14356 a!3626)))

(declare-fun b!659997 () Bool)

(declare-fun res!428233 () Bool)

(assert (=> b!659997 (=> (not res!428233) (not e!379266))))

(declare-fun noDuplicate!466 (List!12676) Bool)

(assert (=> b!659997 (= res!428233 (noDuplicate!466 acc!681))))

(declare-fun b!659998 () Bool)

(declare-fun e!379267 () Bool)

(assert (=> b!659998 (= e!379267 (not (contains!3219 acc!681 k!2843)))))

(declare-fun b!659999 () Bool)

(assert (=> b!659999 (= e!379263 e!379267)))

(declare-fun res!428231 () Bool)

(assert (=> b!659999 (=> (not res!428231) (not e!379267))))

(assert (=> b!659999 (= res!428231 (bvsle from!3004 i!1382))))

(assert (= (and start!59784 res!428234) b!659997))

(assert (= (and b!659997 res!428233) b!659993))

(assert (= (and b!659993 res!428232) b!659992))

(assert (= (and b!659992 res!428235) b!659994))

(assert (= (and b!659994 res!428236) b!659996))

(assert (= (and b!659994 (not res!428237)) b!659999))

(assert (= (and b!659999 res!428231) b!659998))

(assert (= (and b!659994 res!428230) b!659995))

(declare-fun m!632859 () Bool)

(assert (=> start!59784 m!632859))

(declare-fun m!632861 () Bool)

(assert (=> b!659993 m!632861))

(declare-fun m!632863 () Bool)

(assert (=> b!659992 m!632863))

(declare-fun m!632865 () Bool)

(assert (=> b!659995 m!632865))

(declare-fun m!632867 () Bool)

(assert (=> b!659998 m!632867))

(declare-fun m!632869 () Bool)

(assert (=> b!659997 m!632869))

(assert (=> b!659996 m!632867))

(push 1)

(assert (not start!59784))

(assert (not b!659995))

(assert (not b!659997))

(assert (not b!659996))

(assert (not b!659992))

(assert (not b!659998))

(assert (not b!659993))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

