; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117216 () Bool)

(assert start!117216)

(declare-fun b!1378875 () Bool)

(declare-fun res!921519 () Bool)

(declare-fun e!781139 () Bool)

(assert (=> b!1378875 (=> (not res!921519) (not e!781139))))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378875 (= res!921519 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378876 () Bool)

(declare-fun res!921520 () Bool)

(declare-fun e!781138 () Bool)

(assert (=> b!1378876 (=> (not res!921520) (not e!781138))))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1378876 (= res!921520 (bvsgt from!3466 #b00000000000000000000000000000000))))

(declare-fun b!1378877 () Bool)

(assert (=> b!1378877 (= e!781138 (not true))))

(declare-datatypes ((array!93749 0))(
  ( (array!93750 (arr!45270 (Array (_ BitVec 32) (_ BitVec 64))) (size!45821 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93749)

(declare-fun lt!606969 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93749 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378877 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!606969) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-datatypes ((Unit!45765 0))(
  ( (Unit!45766) )
))
(declare-fun lt!606970 () Unit!45765)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93749 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45765)

(assert (=> b!1378877 (= lt!606970 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378878 () Bool)

(assert (=> b!1378878 (= e!781139 e!781138)))

(declare-fun res!921517 () Bool)

(assert (=> b!1378878 (=> (not res!921517) (not e!781138))))

(assert (=> b!1378878 (= res!921517 (= (arrayCountValidKeys!0 (array!93750 (store (arr!45270 a!4094) i!1451 k!2953) (size!45821 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub lt!606969 #b00000000000000000000000000000001)))))

(assert (=> b!1378878 (= lt!606969 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun b!1378879 () Bool)

(declare-fun res!921521 () Bool)

(assert (=> b!1378879 (=> (not res!921521) (not e!781139))))

(assert (=> b!1378879 (= res!921521 (validKeyInArray!0 (select (arr!45270 a!4094) i!1451)))))

(declare-fun res!921518 () Bool)

(assert (=> start!117216 (=> (not res!921518) (not e!781139))))

(assert (=> start!117216 (= res!921518 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45821 a!4094))))))

(assert (=> start!117216 e!781139))

(assert (=> start!117216 true))

(declare-fun array_inv!34215 (array!93749) Bool)

(assert (=> start!117216 (array_inv!34215 a!4094)))

(declare-fun b!1378874 () Bool)

(declare-fun res!921522 () Bool)

(assert (=> b!1378874 (=> (not res!921522) (not e!781139))))

(assert (=> b!1378874 (= res!921522 (and (bvslt (size!45821 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45821 a!4094)) (bvsge i!1451 from!3466)))))

(assert (= (and start!117216 res!921518) b!1378879))

(assert (= (and b!1378879 res!921521) b!1378875))

(assert (= (and b!1378875 res!921519) b!1378874))

(assert (= (and b!1378874 res!921522) b!1378878))

(assert (= (and b!1378878 res!921517) b!1378876))

(assert (= (and b!1378876 res!921520) b!1378877))

(declare-fun m!1263763 () Bool)

(assert (=> b!1378879 m!1263763))

(assert (=> b!1378879 m!1263763))

(declare-fun m!1263765 () Bool)

(assert (=> b!1378879 m!1263765))

(declare-fun m!1263767 () Bool)

(assert (=> b!1378875 m!1263767))

(declare-fun m!1263769 () Bool)

(assert (=> b!1378878 m!1263769))

(declare-fun m!1263771 () Bool)

(assert (=> b!1378878 m!1263771))

(declare-fun m!1263773 () Bool)

(assert (=> b!1378878 m!1263773))

(declare-fun m!1263775 () Bool)

(assert (=> b!1378877 m!1263775))

(declare-fun m!1263777 () Bool)

(assert (=> b!1378877 m!1263777))

(declare-fun m!1263779 () Bool)

(assert (=> b!1378877 m!1263779))

(declare-fun m!1263781 () Bool)

(assert (=> start!117216 m!1263781))

(push 1)

(assert (not b!1378878))

(assert (not start!117216))

(assert (not b!1378877))

(assert (not b!1378875))

(assert (not b!1378879))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

