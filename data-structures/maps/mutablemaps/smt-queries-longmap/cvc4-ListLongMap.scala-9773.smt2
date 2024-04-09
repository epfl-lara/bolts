; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115848 () Bool)

(assert start!115848)

(declare-fun b!1369184 () Bool)

(declare-fun res!912789 () Bool)

(declare-fun e!775645 () Bool)

(assert (=> b!1369184 (=> (not res!912789) (not e!775645))))

(declare-datatypes ((List!32125 0))(
  ( (Nil!32122) (Cons!32121 (h!33330 (_ BitVec 64)) (t!46826 List!32125)) )
))
(declare-fun acc!866 () List!32125)

(declare-fun noDuplicate!2542 (List!32125) Bool)

(assert (=> b!1369184 (= res!912789 (noDuplicate!2542 acc!866))))

(declare-fun b!1369186 () Bool)

(declare-fun res!912786 () Bool)

(assert (=> b!1369186 (=> (not res!912786) (not e!775645))))

(declare-fun newAcc!98 () List!32125)

(declare-fun subseq!1054 (List!32125 List!32125) Bool)

(assert (=> b!1369186 (= res!912786 (subseq!1054 newAcc!98 acc!866))))

(declare-fun b!1369187 () Bool)

(declare-fun res!912788 () Bool)

(assert (=> b!1369187 (=> (not res!912788) (not e!775645))))

(declare-fun contains!9663 (List!32125 (_ BitVec 64)) Bool)

(assert (=> b!1369187 (= res!912788 (not (contains!9663 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369188 () Bool)

(assert (=> b!1369188 (= e!775645 false)))

(declare-datatypes ((array!92918 0))(
  ( (array!92919 (arr!44877 (Array (_ BitVec 32) (_ BitVec 64))) (size!45428 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92918)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun lt!602171 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92918 (_ BitVec 32) List!32125) Bool)

(assert (=> b!1369188 (= lt!602171 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45189 0))(
  ( (Unit!45190) )
))
(declare-fun lt!602170 () Unit!45189)

(declare-fun noDuplicateSubseq!241 (List!32125 List!32125) Unit!45189)

(assert (=> b!1369188 (= lt!602170 (noDuplicateSubseq!241 newAcc!98 acc!866))))

(declare-fun b!1369185 () Bool)

(declare-fun res!912783 () Bool)

(assert (=> b!1369185 (=> (not res!912783) (not e!775645))))

(assert (=> b!1369185 (= res!912783 (not (contains!9663 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!912787 () Bool)

(assert (=> start!115848 (=> (not res!912787) (not e!775645))))

(assert (=> start!115848 (= res!912787 (and (bvslt (size!45428 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45428 a!3861))))))

(assert (=> start!115848 e!775645))

(declare-fun array_inv!33822 (array!92918) Bool)

(assert (=> start!115848 (array_inv!33822 a!3861)))

(assert (=> start!115848 true))

(declare-fun b!1369189 () Bool)

(declare-fun res!912784 () Bool)

(assert (=> b!1369189 (=> (not res!912784) (not e!775645))))

(assert (=> b!1369189 (= res!912784 (not (contains!9663 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369190 () Bool)

(declare-fun res!912785 () Bool)

(assert (=> b!1369190 (=> (not res!912785) (not e!775645))))

(assert (=> b!1369190 (= res!912785 (not (contains!9663 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115848 res!912787) b!1369184))

(assert (= (and b!1369184 res!912789) b!1369189))

(assert (= (and b!1369189 res!912784) b!1369190))

(assert (= (and b!1369190 res!912785) b!1369185))

(assert (= (and b!1369185 res!912783) b!1369187))

(assert (= (and b!1369187 res!912788) b!1369186))

(assert (= (and b!1369186 res!912786) b!1369188))

(declare-fun m!1253041 () Bool)

(assert (=> b!1369189 m!1253041))

(declare-fun m!1253043 () Bool)

(assert (=> b!1369185 m!1253043))

(declare-fun m!1253045 () Bool)

(assert (=> b!1369186 m!1253045))

(declare-fun m!1253047 () Bool)

(assert (=> b!1369190 m!1253047))

(declare-fun m!1253049 () Bool)

(assert (=> b!1369188 m!1253049))

(declare-fun m!1253051 () Bool)

(assert (=> b!1369188 m!1253051))

(declare-fun m!1253053 () Bool)

(assert (=> start!115848 m!1253053))

(declare-fun m!1253055 () Bool)

(assert (=> b!1369184 m!1253055))

(declare-fun m!1253057 () Bool)

(assert (=> b!1369187 m!1253057))

(push 1)

(assert (not start!115848))

(assert (not b!1369188))

(assert (not b!1369185))

(assert (not b!1369187))

(assert (not b!1369186))

(assert (not b!1369184))

(assert (not b!1369189))

(assert (not b!1369190))

(check-sat)

