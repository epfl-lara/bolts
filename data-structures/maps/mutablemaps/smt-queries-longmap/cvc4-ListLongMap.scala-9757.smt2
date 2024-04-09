; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115662 () Bool)

(assert start!115662)

(declare-fun res!910944 () Bool)

(declare-fun e!774919 () Bool)

(assert (=> start!115662 (=> (not res!910944) (not e!774919))))

(declare-datatypes ((array!92816 0))(
  ( (array!92817 (arr!44829 (Array (_ BitVec 32) (_ BitVec 64))) (size!45380 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92816)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115662 (= res!910944 (and (bvslt (size!45380 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45380 a!3861))))))

(assert (=> start!115662 e!774919))

(declare-fun array_inv!33774 (array!92816) Bool)

(assert (=> start!115662 (array_inv!33774 a!3861)))

(assert (=> start!115662 true))

(declare-fun b!1367297 () Bool)

(declare-fun res!910946 () Bool)

(declare-fun e!774917 () Bool)

(assert (=> b!1367297 (=> (not res!910946) (not e!774917))))

(assert (=> b!1367297 (= res!910946 (bvslt from!3239 (size!45380 a!3861)))))

(declare-fun b!1367298 () Bool)

(assert (=> b!1367298 (= e!774919 e!774917)))

(declare-fun res!910953 () Bool)

(assert (=> b!1367298 (=> (not res!910953) (not e!774917))))

(declare-datatypes ((List!32077 0))(
  ( (Nil!32074) (Cons!32073 (h!33282 (_ BitVec 64)) (t!46778 List!32077)) )
))
(declare-fun acc!866 () List!32077)

(declare-fun arrayNoDuplicates!0 (array!92816 (_ BitVec 32) List!32077) Bool)

(assert (=> b!1367298 (= res!910953 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45093 0))(
  ( (Unit!45094) )
))
(declare-fun lt!601817 () Unit!45093)

(declare-fun newAcc!98 () List!32077)

(declare-fun noDuplicateSubseq!193 (List!32077 List!32077) Unit!45093)

(assert (=> b!1367298 (= lt!601817 (noDuplicateSubseq!193 newAcc!98 acc!866))))

(declare-fun b!1367299 () Bool)

(declare-fun res!910951 () Bool)

(assert (=> b!1367299 (=> (not res!910951) (not e!774919))))

(declare-fun subseq!1006 (List!32077 List!32077) Bool)

(assert (=> b!1367299 (= res!910951 (subseq!1006 newAcc!98 acc!866))))

(declare-fun b!1367300 () Bool)

(declare-fun res!910945 () Bool)

(assert (=> b!1367300 (=> (not res!910945) (not e!774919))))

(declare-fun contains!9615 (List!32077 (_ BitVec 64)) Bool)

(assert (=> b!1367300 (= res!910945 (not (contains!9615 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367301 () Bool)

(declare-fun res!910947 () Bool)

(assert (=> b!1367301 (=> (not res!910947) (not e!774917))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1367301 (= res!910947 (validKeyInArray!0 (select (arr!44829 a!3861) from!3239)))))

(declare-fun b!1367302 () Bool)

(declare-fun res!910950 () Bool)

(assert (=> b!1367302 (=> (not res!910950) (not e!774919))))

(assert (=> b!1367302 (= res!910950 (not (contains!9615 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367303 () Bool)

(declare-fun res!910949 () Bool)

(assert (=> b!1367303 (=> (not res!910949) (not e!774919))))

(declare-fun noDuplicate!2494 (List!32077) Bool)

(assert (=> b!1367303 (= res!910949 (noDuplicate!2494 acc!866))))

(declare-fun b!1367304 () Bool)

(declare-fun res!910948 () Bool)

(assert (=> b!1367304 (=> (not res!910948) (not e!774919))))

(assert (=> b!1367304 (= res!910948 (not (contains!9615 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367305 () Bool)

(assert (=> b!1367305 (= e!774917 false)))

(declare-fun lt!601816 () Bool)

(assert (=> b!1367305 (= lt!601816 (contains!9615 acc!866 (select (arr!44829 a!3861) from!3239)))))

(declare-fun b!1367306 () Bool)

(declare-fun res!910952 () Bool)

(assert (=> b!1367306 (=> (not res!910952) (not e!774919))))

(assert (=> b!1367306 (= res!910952 (not (contains!9615 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115662 res!910944) b!1367303))

(assert (= (and b!1367303 res!910949) b!1367302))

(assert (= (and b!1367302 res!910950) b!1367306))

(assert (= (and b!1367306 res!910952) b!1367300))

(assert (= (and b!1367300 res!910945) b!1367304))

(assert (= (and b!1367304 res!910948) b!1367299))

(assert (= (and b!1367299 res!910951) b!1367298))

(assert (= (and b!1367298 res!910953) b!1367297))

(assert (= (and b!1367297 res!910946) b!1367301))

(assert (= (and b!1367301 res!910947) b!1367305))

(declare-fun m!1251571 () Bool)

(assert (=> b!1367305 m!1251571))

(assert (=> b!1367305 m!1251571))

(declare-fun m!1251573 () Bool)

(assert (=> b!1367305 m!1251573))

(declare-fun m!1251575 () Bool)

(assert (=> b!1367304 m!1251575))

(declare-fun m!1251577 () Bool)

(assert (=> b!1367302 m!1251577))

(declare-fun m!1251579 () Bool)

(assert (=> b!1367300 m!1251579))

(assert (=> b!1367301 m!1251571))

(assert (=> b!1367301 m!1251571))

(declare-fun m!1251581 () Bool)

(assert (=> b!1367301 m!1251581))

(declare-fun m!1251583 () Bool)

(assert (=> b!1367299 m!1251583))

(declare-fun m!1251585 () Bool)

(assert (=> b!1367303 m!1251585))

(declare-fun m!1251587 () Bool)

(assert (=> b!1367306 m!1251587))

(declare-fun m!1251589 () Bool)

(assert (=> start!115662 m!1251589))

(declare-fun m!1251591 () Bool)

(assert (=> b!1367298 m!1251591))

(declare-fun m!1251593 () Bool)

(assert (=> b!1367298 m!1251593))

(push 1)

(assert (not b!1367304))

(assert (not b!1367305))

(assert (not b!1367300))

