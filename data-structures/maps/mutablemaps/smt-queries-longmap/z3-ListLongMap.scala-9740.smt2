; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115462 () Bool)

(assert start!115462)

(declare-fun res!908516 () Bool)

(declare-fun e!774058 () Bool)

(assert (=> start!115462 (=> (not res!908516) (not e!774058))))

(declare-datatypes ((array!92706 0))(
  ( (array!92707 (arr!44777 (Array (_ BitVec 32) (_ BitVec 64))) (size!45328 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92706)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115462 (= res!908516 (and (bvslt (size!45328 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45328 a!3861))))))

(assert (=> start!115462 e!774058))

(declare-fun array_inv!33722 (array!92706) Bool)

(assert (=> start!115462 (array_inv!33722 a!3861)))

(assert (=> start!115462 true))

(declare-fun b!1364816 () Bool)

(declare-fun res!908517 () Bool)

(assert (=> b!1364816 (=> (not res!908517) (not e!774058))))

(declare-datatypes ((List!32025 0))(
  ( (Nil!32022) (Cons!32021 (h!33230 (_ BitVec 64)) (t!46726 List!32025)) )
))
(declare-fun acc!866 () List!32025)

(declare-fun contains!9563 (List!32025 (_ BitVec 64)) Bool)

(assert (=> b!1364816 (= res!908517 (not (contains!9563 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364817 () Bool)

(declare-fun res!908513 () Bool)

(assert (=> b!1364817 (=> (not res!908513) (not e!774058))))

(assert (=> b!1364817 (= res!908513 (not (contains!9563 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364818 () Bool)

(declare-fun res!908512 () Bool)

(assert (=> b!1364818 (=> (not res!908512) (not e!774058))))

(declare-fun newAcc!98 () List!32025)

(assert (=> b!1364818 (= res!908512 (not (contains!9563 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364819 () Bool)

(declare-fun res!908515 () Bool)

(assert (=> b!1364819 (=> (not res!908515) (not e!774058))))

(declare-fun noDuplicate!2442 (List!32025) Bool)

(assert (=> b!1364819 (= res!908515 (noDuplicate!2442 acc!866))))

(declare-fun b!1364820 () Bool)

(declare-fun res!908511 () Bool)

(assert (=> b!1364820 (=> (not res!908511) (not e!774058))))

(assert (=> b!1364820 (= res!908511 (not (contains!9563 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1364821 () Bool)

(declare-fun res!908514 () Bool)

(assert (=> b!1364821 (=> (not res!908514) (not e!774058))))

(declare-fun subseq!954 (List!32025 List!32025) Bool)

(assert (=> b!1364821 (= res!908514 (subseq!954 newAcc!98 acc!866))))

(declare-fun b!1364822 () Bool)

(assert (=> b!1364822 (= e!774058 false)))

(declare-datatypes ((Unit!44989 0))(
  ( (Unit!44990) )
))
(declare-fun lt!601094 () Unit!44989)

(declare-fun noDuplicateSubseq!141 (List!32025 List!32025) Unit!44989)

(assert (=> b!1364822 (= lt!601094 (noDuplicateSubseq!141 newAcc!98 acc!866))))

(assert (= (and start!115462 res!908516) b!1364819))

(assert (= (and b!1364819 res!908515) b!1364816))

(assert (= (and b!1364816 res!908517) b!1364817))

(assert (= (and b!1364817 res!908513) b!1364820))

(assert (= (and b!1364820 res!908511) b!1364818))

(assert (= (and b!1364818 res!908512) b!1364821))

(assert (= (and b!1364821 res!908514) b!1364822))

(declare-fun m!1249553 () Bool)

(assert (=> b!1364820 m!1249553))

(declare-fun m!1249555 () Bool)

(assert (=> b!1364818 m!1249555))

(declare-fun m!1249557 () Bool)

(assert (=> start!115462 m!1249557))

(declare-fun m!1249559 () Bool)

(assert (=> b!1364817 m!1249559))

(declare-fun m!1249561 () Bool)

(assert (=> b!1364816 m!1249561))

(declare-fun m!1249563 () Bool)

(assert (=> b!1364819 m!1249563))

(declare-fun m!1249565 () Bool)

(assert (=> b!1364821 m!1249565))

(declare-fun m!1249567 () Bool)

(assert (=> b!1364822 m!1249567))

(check-sat (not b!1364819) (not b!1364818) (not b!1364821) (not b!1364817) (not b!1364822) (not b!1364820) (not b!1364816) (not start!115462))
(check-sat)
