; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115648 () Bool)

(assert start!115648)

(declare-fun b!1367083 () Bool)

(declare-fun res!910738 () Bool)

(declare-fun e!774855 () Bool)

(assert (=> b!1367083 (=> (not res!910738) (not e!774855))))

(declare-datatypes ((array!92802 0))(
  ( (array!92803 (arr!44822 (Array (_ BitVec 32) (_ BitVec 64))) (size!45373 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92802)

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((List!32070 0))(
  ( (Nil!32067) (Cons!32066 (h!33275 (_ BitVec 64)) (t!46771 List!32070)) )
))
(declare-fun acc!866 () List!32070)

(declare-fun contains!9608 (List!32070 (_ BitVec 64)) Bool)

(assert (=> b!1367083 (= res!910738 (not (contains!9608 acc!866 (select (arr!44822 a!3861) from!3239))))))

(declare-fun b!1367084 () Bool)

(declare-fun res!910732 () Bool)

(declare-fun e!774854 () Bool)

(assert (=> b!1367084 (=> (not res!910732) (not e!774854))))

(declare-fun noDuplicate!2487 (List!32070) Bool)

(assert (=> b!1367084 (= res!910732 (noDuplicate!2487 acc!866))))

(declare-fun b!1367085 () Bool)

(declare-fun res!910731 () Bool)

(assert (=> b!1367085 (=> (not res!910731) (not e!774854))))

(assert (=> b!1367085 (= res!910731 (not (contains!9608 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367086 () Bool)

(declare-fun res!910733 () Bool)

(assert (=> b!1367086 (=> (not res!910733) (not e!774855))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1367086 (= res!910733 (validKeyInArray!0 (select (arr!44822 a!3861) from!3239)))))

(declare-fun b!1367087 () Bool)

(declare-fun res!910730 () Bool)

(assert (=> b!1367087 (=> (not res!910730) (not e!774854))))

(assert (=> b!1367087 (= res!910730 (not (contains!9608 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!910737 () Bool)

(assert (=> start!115648 (=> (not res!910737) (not e!774854))))

(assert (=> start!115648 (= res!910737 (and (bvslt (size!45373 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45373 a!3861))))))

(assert (=> start!115648 e!774854))

(declare-fun array_inv!33767 (array!92802) Bool)

(assert (=> start!115648 (array_inv!33767 a!3861)))

(assert (=> start!115648 true))

(declare-fun b!1367088 () Bool)

(declare-fun res!910739 () Bool)

(assert (=> b!1367088 (=> (not res!910739) (not e!774854))))

(declare-fun newAcc!98 () List!32070)

(assert (=> b!1367088 (= res!910739 (not (contains!9608 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367089 () Bool)

(assert (=> b!1367089 (= e!774855 (not true))))

(declare-fun lt!601762 () Bool)

(assert (=> b!1367089 (= lt!601762 (noDuplicate!2487 newAcc!98))))

(declare-datatypes ((Unit!45079 0))(
  ( (Unit!45080) )
))
(declare-fun lt!601761 () Unit!45079)

(declare-fun lt!601758 () List!32070)

(declare-fun lt!601759 () List!32070)

(declare-fun noDuplicateSubseq!186 (List!32070 List!32070) Unit!45079)

(assert (=> b!1367089 (= lt!601761 (noDuplicateSubseq!186 lt!601758 lt!601759))))

(declare-fun arrayNoDuplicates!0 (array!92802 (_ BitVec 32) List!32070) Bool)

(assert (=> b!1367089 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!601758)))

(declare-fun lt!601763 () Unit!45079)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92802 List!32070 List!32070 (_ BitVec 32)) Unit!45079)

(assert (=> b!1367089 (= lt!601763 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 lt!601759 lt!601758 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> b!1367089 (= lt!601758 (Cons!32066 (select (arr!44822 a!3861) from!3239) newAcc!98))))

(assert (=> b!1367089 (= lt!601759 (Cons!32066 (select (arr!44822 a!3861) from!3239) acc!866))))

(declare-fun b!1367090 () Bool)

(declare-fun res!910735 () Bool)

(assert (=> b!1367090 (=> (not res!910735) (not e!774854))))

(declare-fun subseq!999 (List!32070 List!32070) Bool)

(assert (=> b!1367090 (= res!910735 (subseq!999 newAcc!98 acc!866))))

(declare-fun b!1367091 () Bool)

(declare-fun res!910736 () Bool)

(assert (=> b!1367091 (=> (not res!910736) (not e!774854))))

(assert (=> b!1367091 (= res!910736 (not (contains!9608 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367092 () Bool)

(assert (=> b!1367092 (= e!774854 e!774855)))

(declare-fun res!910740 () Bool)

(assert (=> b!1367092 (=> (not res!910740) (not e!774855))))

(assert (=> b!1367092 (= res!910740 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!601760 () Unit!45079)

(assert (=> b!1367092 (= lt!601760 (noDuplicateSubseq!186 newAcc!98 acc!866))))

(declare-fun b!1367093 () Bool)

(declare-fun res!910734 () Bool)

(assert (=> b!1367093 (=> (not res!910734) (not e!774855))))

(assert (=> b!1367093 (= res!910734 (bvslt from!3239 (size!45373 a!3861)))))

(assert (= (and start!115648 res!910737) b!1367084))

(assert (= (and b!1367084 res!910732) b!1367085))

(assert (= (and b!1367085 res!910731) b!1367087))

(assert (= (and b!1367087 res!910730) b!1367088))

(assert (= (and b!1367088 res!910739) b!1367091))

(assert (= (and b!1367091 res!910736) b!1367090))

(assert (= (and b!1367090 res!910735) b!1367092))

(assert (= (and b!1367092 res!910740) b!1367093))

(assert (= (and b!1367093 res!910734) b!1367086))

(assert (= (and b!1367086 res!910733) b!1367083))

(assert (= (and b!1367083 res!910738) b!1367089))

(declare-fun m!1251387 () Bool)

(assert (=> b!1367084 m!1251387))

(declare-fun m!1251389 () Bool)

(assert (=> b!1367083 m!1251389))

(assert (=> b!1367083 m!1251389))

(declare-fun m!1251391 () Bool)

(assert (=> b!1367083 m!1251391))

(declare-fun m!1251393 () Bool)

(assert (=> b!1367090 m!1251393))

(assert (=> b!1367086 m!1251389))

(assert (=> b!1367086 m!1251389))

(declare-fun m!1251395 () Bool)

(assert (=> b!1367086 m!1251395))

(declare-fun m!1251397 () Bool)

(assert (=> b!1367087 m!1251397))

(declare-fun m!1251399 () Bool)

(assert (=> b!1367091 m!1251399))

(declare-fun m!1251401 () Bool)

(assert (=> b!1367092 m!1251401))

(declare-fun m!1251403 () Bool)

(assert (=> b!1367092 m!1251403))

(declare-fun m!1251405 () Bool)

(assert (=> b!1367089 m!1251405))

(declare-fun m!1251407 () Bool)

(assert (=> b!1367089 m!1251407))

(assert (=> b!1367089 m!1251389))

(declare-fun m!1251409 () Bool)

(assert (=> b!1367089 m!1251409))

(declare-fun m!1251411 () Bool)

(assert (=> b!1367089 m!1251411))

(declare-fun m!1251413 () Bool)

(assert (=> b!1367088 m!1251413))

(declare-fun m!1251415 () Bool)

(assert (=> b!1367085 m!1251415))

(declare-fun m!1251417 () Bool)

(assert (=> start!115648 m!1251417))

(check-sat (not b!1367088) (not b!1367092) (not b!1367091) (not b!1367089) (not b!1367084) (not b!1367087) (not b!1367085) (not b!1367086) (not b!1367090) (not start!115648) (not b!1367083))
(check-sat)
