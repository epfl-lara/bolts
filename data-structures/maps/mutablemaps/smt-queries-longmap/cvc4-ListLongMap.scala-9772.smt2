; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115842 () Bool)

(assert start!115842)

(declare-fun b!1369121 () Bool)

(declare-fun res!912724 () Bool)

(declare-fun e!775626 () Bool)

(assert (=> b!1369121 (=> (not res!912724) (not e!775626))))

(declare-datatypes ((List!32122 0))(
  ( (Nil!32119) (Cons!32118 (h!33327 (_ BitVec 64)) (t!46823 List!32122)) )
))
(declare-fun newAcc!98 () List!32122)

(declare-fun acc!866 () List!32122)

(declare-fun subseq!1051 (List!32122 List!32122) Bool)

(assert (=> b!1369121 (= res!912724 (subseq!1051 newAcc!98 acc!866))))

(declare-fun b!1369122 () Bool)

(declare-fun res!912725 () Bool)

(assert (=> b!1369122 (=> (not res!912725) (not e!775626))))

(declare-fun contains!9660 (List!32122 (_ BitVec 64)) Bool)

(assert (=> b!1369122 (= res!912725 (not (contains!9660 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!912720 () Bool)

(assert (=> start!115842 (=> (not res!912720) (not e!775626))))

(declare-datatypes ((array!92912 0))(
  ( (array!92913 (arr!44874 (Array (_ BitVec 32) (_ BitVec 64))) (size!45425 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92912)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115842 (= res!912720 (and (bvslt (size!45425 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45425 a!3861))))))

(assert (=> start!115842 e!775626))

(declare-fun array_inv!33819 (array!92912) Bool)

(assert (=> start!115842 (array_inv!33819 a!3861)))

(assert (=> start!115842 true))

(declare-fun b!1369123 () Bool)

(declare-fun res!912723 () Bool)

(assert (=> b!1369123 (=> (not res!912723) (not e!775626))))

(assert (=> b!1369123 (= res!912723 (not (contains!9660 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369124 () Bool)

(assert (=> b!1369124 (= e!775626 false)))

(declare-fun lt!602152 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92912 (_ BitVec 32) List!32122) Bool)

(assert (=> b!1369124 (= lt!602152 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45183 0))(
  ( (Unit!45184) )
))
(declare-fun lt!602153 () Unit!45183)

(declare-fun noDuplicateSubseq!238 (List!32122 List!32122) Unit!45183)

(assert (=> b!1369124 (= lt!602153 (noDuplicateSubseq!238 newAcc!98 acc!866))))

(declare-fun b!1369125 () Bool)

(declare-fun res!912722 () Bool)

(assert (=> b!1369125 (=> (not res!912722) (not e!775626))))

(assert (=> b!1369125 (= res!912722 (not (contains!9660 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369126 () Bool)

(declare-fun res!912726 () Bool)

(assert (=> b!1369126 (=> (not res!912726) (not e!775626))))

(declare-fun noDuplicate!2539 (List!32122) Bool)

(assert (=> b!1369126 (= res!912726 (noDuplicate!2539 acc!866))))

(declare-fun b!1369127 () Bool)

(declare-fun res!912721 () Bool)

(assert (=> b!1369127 (=> (not res!912721) (not e!775626))))

(assert (=> b!1369127 (= res!912721 (not (contains!9660 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115842 res!912720) b!1369126))

(assert (= (and b!1369126 res!912726) b!1369125))

(assert (= (and b!1369125 res!912722) b!1369123))

(assert (= (and b!1369123 res!912723) b!1369122))

(assert (= (and b!1369122 res!912725) b!1369127))

(assert (= (and b!1369127 res!912721) b!1369121))

(assert (= (and b!1369121 res!912724) b!1369124))

(declare-fun m!1252987 () Bool)

(assert (=> b!1369124 m!1252987))

(declare-fun m!1252989 () Bool)

(assert (=> b!1369124 m!1252989))

(declare-fun m!1252991 () Bool)

(assert (=> b!1369121 m!1252991))

(declare-fun m!1252993 () Bool)

(assert (=> b!1369127 m!1252993))

(declare-fun m!1252995 () Bool)

(assert (=> b!1369125 m!1252995))

(declare-fun m!1252997 () Bool)

(assert (=> b!1369122 m!1252997))

(declare-fun m!1252999 () Bool)

(assert (=> b!1369123 m!1252999))

(declare-fun m!1253001 () Bool)

(assert (=> start!115842 m!1253001))

(declare-fun m!1253003 () Bool)

(assert (=> b!1369126 m!1253003))

(push 1)

(assert (not b!1369126))

(assert (not b!1369123))

(assert (not b!1369121))

(assert (not start!115842))

(assert (not b!1369122))

(assert (not b!1369127))

(assert (not b!1369124))

(assert (not b!1369125))

(check-sat)

(pop 1)

(push 1)

(check-sat)

