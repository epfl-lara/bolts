; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62354 () Bool)

(assert start!62354)

(declare-fun b!698059 () Bool)

(declare-fun res!462041 () Bool)

(declare-fun e!396880 () Bool)

(assert (=> b!698059 (=> (not res!462041) (not e!396880))))

(declare-datatypes ((List!13241 0))(
  ( (Nil!13238) (Cons!13237 (h!14282 (_ BitVec 64)) (t!19531 List!13241)) )
))
(declare-fun acc!652 () List!13241)

(declare-fun contains!3784 (List!13241 (_ BitVec 64)) Bool)

(assert (=> b!698059 (= res!462041 (not (contains!3784 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698058 () Bool)

(declare-fun res!462042 () Bool)

(assert (=> b!698058 (=> (not res!462042) (not e!396880))))

(declare-fun newAcc!49 () List!13241)

(declare-fun noDuplicate!1031 (List!13241) Bool)

(assert (=> b!698058 (= res!462042 (noDuplicate!1031 newAcc!49))))

(declare-fun b!698057 () Bool)

(declare-fun res!462043 () Bool)

(assert (=> b!698057 (=> (not res!462043) (not e!396880))))

(assert (=> b!698057 (= res!462043 (noDuplicate!1031 acc!652))))

(declare-fun res!462044 () Bool)

(assert (=> start!62354 (=> (not res!462044) (not e!396880))))

(declare-datatypes ((array!39989 0))(
  ( (array!39990 (arr!19147 (Array (_ BitVec 32) (_ BitVec 64))) (size!19530 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!39989)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62354 (= res!462044 (and (bvslt (size!19530 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19530 a!3591))))))

(assert (=> start!62354 e!396880))

(declare-fun array_inv!14921 (array!39989) Bool)

(assert (=> start!62354 (array_inv!14921 a!3591)))

(assert (=> start!62354 true))

(declare-fun b!698060 () Bool)

(assert (=> b!698060 (= e!396880 false)))

(declare-fun lt!317187 () Bool)

(assert (=> b!698060 (= lt!317187 (contains!3784 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!62354 res!462044) b!698057))

(assert (= (and b!698057 res!462043) b!698058))

(assert (= (and b!698058 res!462042) b!698059))

(assert (= (and b!698059 res!462041) b!698060))

(declare-fun m!658447 () Bool)

(assert (=> b!698057 m!658447))

(declare-fun m!658449 () Bool)

(assert (=> b!698060 m!658449))

(declare-fun m!658451 () Bool)

(assert (=> b!698059 m!658451))

(declare-fun m!658453 () Bool)

(assert (=> start!62354 m!658453))

(declare-fun m!658455 () Bool)

(assert (=> b!698058 m!658455))

(check-sat (not b!698057) (not start!62354) (not b!698059) (not b!698060) (not b!698058))
(check-sat)
