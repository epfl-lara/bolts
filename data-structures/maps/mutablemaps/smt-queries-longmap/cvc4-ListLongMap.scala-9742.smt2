; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115476 () Bool)

(assert start!115476)

(declare-fun b!1364963 () Bool)

(declare-fun res!908658 () Bool)

(declare-fun e!774099 () Bool)

(assert (=> b!1364963 (=> (not res!908658) (not e!774099))))

(declare-datatypes ((List!32032 0))(
  ( (Nil!32029) (Cons!32028 (h!33237 (_ BitVec 64)) (t!46733 List!32032)) )
))
(declare-fun newAcc!98 () List!32032)

(declare-fun contains!9570 (List!32032 (_ BitVec 64)) Bool)

(assert (=> b!1364963 (= res!908658 (not (contains!9570 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364965 () Bool)

(assert (=> b!1364965 (= e!774099 false)))

(declare-datatypes ((Unit!45003 0))(
  ( (Unit!45004) )
))
(declare-fun lt!601115 () Unit!45003)

(declare-fun acc!866 () List!32032)

(declare-fun noDuplicateSubseq!148 (List!32032 List!32032) Unit!45003)

(assert (=> b!1364965 (= lt!601115 (noDuplicateSubseq!148 newAcc!98 acc!866))))

(declare-fun res!908661 () Bool)

(assert (=> start!115476 (=> (not res!908661) (not e!774099))))

(declare-datatypes ((array!92720 0))(
  ( (array!92721 (arr!44784 (Array (_ BitVec 32) (_ BitVec 64))) (size!45335 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92720)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115476 (= res!908661 (and (bvslt (size!45335 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45335 a!3861))))))

(assert (=> start!115476 e!774099))

(declare-fun array_inv!33729 (array!92720) Bool)

(assert (=> start!115476 (array_inv!33729 a!3861)))

(assert (=> start!115476 true))

(declare-fun b!1364964 () Bool)

(declare-fun res!908664 () Bool)

(assert (=> b!1364964 (=> (not res!908664) (not e!774099))))

(assert (=> b!1364964 (= res!908664 (not (contains!9570 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364966 () Bool)

(declare-fun res!908663 () Bool)

(assert (=> b!1364966 (=> (not res!908663) (not e!774099))))

(declare-fun noDuplicate!2449 (List!32032) Bool)

(assert (=> b!1364966 (= res!908663 (noDuplicate!2449 acc!866))))

(declare-fun b!1364967 () Bool)

(declare-fun res!908660 () Bool)

(assert (=> b!1364967 (=> (not res!908660) (not e!774099))))

(assert (=> b!1364967 (= res!908660 (not (contains!9570 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364968 () Bool)

(declare-fun res!908659 () Bool)

(assert (=> b!1364968 (=> (not res!908659) (not e!774099))))

(declare-fun subseq!961 (List!32032 List!32032) Bool)

(assert (=> b!1364968 (= res!908659 (subseq!961 newAcc!98 acc!866))))

(declare-fun b!1364969 () Bool)

(declare-fun res!908662 () Bool)

(assert (=> b!1364969 (=> (not res!908662) (not e!774099))))

(assert (=> b!1364969 (= res!908662 (not (contains!9570 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115476 res!908661) b!1364966))

(assert (= (and b!1364966 res!908663) b!1364964))

(assert (= (and b!1364964 res!908664) b!1364967))

(assert (= (and b!1364967 res!908660) b!1364969))

(assert (= (and b!1364969 res!908662) b!1364963))

(assert (= (and b!1364963 res!908658) b!1364968))

(assert (= (and b!1364968 res!908659) b!1364965))

(declare-fun m!1249665 () Bool)

(assert (=> start!115476 m!1249665))

(declare-fun m!1249667 () Bool)

(assert (=> b!1364966 m!1249667))

(declare-fun m!1249669 () Bool)

(assert (=> b!1364963 m!1249669))

(declare-fun m!1249671 () Bool)

(assert (=> b!1364967 m!1249671))

(declare-fun m!1249673 () Bool)

(assert (=> b!1364969 m!1249673))

(declare-fun m!1249675 () Bool)

(assert (=> b!1364964 m!1249675))

(declare-fun m!1249677 () Bool)

(assert (=> b!1364968 m!1249677))

(declare-fun m!1249679 () Bool)

(assert (=> b!1364965 m!1249679))

(push 1)

(assert (not b!1364963))

(assert (not b!1364969))

(assert (not start!115476))

(assert (not b!1364965))

(assert (not b!1364967))

(assert (not b!1364968))

(assert (not b!1364966))

(assert (not b!1364964))

(check-sat)

