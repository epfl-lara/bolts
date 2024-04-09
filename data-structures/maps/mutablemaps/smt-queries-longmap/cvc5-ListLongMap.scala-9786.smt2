; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116168 () Bool)

(assert start!116168)

(declare-fun b!1371545 () Bool)

(declare-fun res!915039 () Bool)

(declare-fun e!777018 () Bool)

(assert (=> b!1371545 (=> (not res!915039) (not e!777018))))

(declare-datatypes ((List!32162 0))(
  ( (Nil!32159) (Cons!32158 (h!33367 (_ BitVec 64)) (t!46863 List!32162)) )
))
(declare-fun lt!602629 () List!32162)

(declare-fun contains!9700 (List!32162 (_ BitVec 64)) Bool)

(assert (=> b!1371545 (= res!915039 (not (contains!9700 lt!602629 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1371546 () Bool)

(declare-fun res!915042 () Bool)

(assert (=> b!1371546 (=> (not res!915042) (not e!777018))))

(assert (=> b!1371546 (= res!915042 (not (contains!9700 lt!602629 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1371547 () Bool)

(declare-fun res!915035 () Bool)

(declare-fun e!777015 () Bool)

(assert (=> b!1371547 (=> (not res!915035) (not e!777015))))

(declare-fun from!3239 () (_ BitVec 32))

(declare-datatypes ((array!93010 0))(
  ( (array!93011 (arr!44914 (Array (_ BitVec 32) (_ BitVec 64))) (size!45465 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93010)

(assert (=> b!1371547 (= res!915035 (bvslt from!3239 (size!45465 a!3861)))))

(declare-fun res!915044 () Bool)

(declare-fun e!777019 () Bool)

(assert (=> start!116168 (=> (not res!915044) (not e!777019))))

(assert (=> start!116168 (= res!915044 (and (bvslt (size!45465 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45465 a!3861))))))

(assert (=> start!116168 e!777019))

(declare-fun array_inv!33859 (array!93010) Bool)

(assert (=> start!116168 (array_inv!33859 a!3861)))

(assert (=> start!116168 true))

(declare-fun b!1371548 () Bool)

(declare-fun res!915038 () Bool)

(assert (=> b!1371548 (=> (not res!915038) (not e!777019))))

(declare-fun acc!866 () List!32162)

(assert (=> b!1371548 (= res!915038 (not (contains!9700 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1371549 () Bool)

(assert (=> b!1371549 (= e!777015 e!777018)))

(declare-fun res!915040 () Bool)

(assert (=> b!1371549 (=> (not res!915040) (not e!777018))))

(assert (=> b!1371549 (= res!915040 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun newAcc!98 () List!32162)

(assert (=> b!1371549 (= lt!602629 (Cons!32158 (select (arr!44914 a!3861) from!3239) newAcc!98))))

(declare-fun lt!602630 () List!32162)

(assert (=> b!1371549 (= lt!602630 (Cons!32158 (select (arr!44914 a!3861) from!3239) acc!866))))

(declare-fun b!1371550 () Bool)

(declare-fun res!915046 () Bool)

(assert (=> b!1371550 (=> (not res!915046) (not e!777018))))

(assert (=> b!1371550 (= res!915046 (not (contains!9700 lt!602630 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1371551 () Bool)

(declare-fun res!915032 () Bool)

(assert (=> b!1371551 (=> (not res!915032) (not e!777018))))

(assert (=> b!1371551 (= res!915032 (not (contains!9700 lt!602630 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1371552 () Bool)

(declare-fun e!777017 () Bool)

(assert (=> b!1371552 (= e!777018 e!777017)))

(declare-fun res!915030 () Bool)

(assert (=> b!1371552 (=> (not res!915030) (not e!777017))))

(declare-fun arrayNoDuplicates!0 (array!93010 (_ BitVec 32) List!32162) Bool)

(assert (=> b!1371552 (= res!915030 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) lt!602630))))

(declare-datatypes ((Unit!45263 0))(
  ( (Unit!45264) )
))
(declare-fun lt!602627 () Unit!45263)

(declare-fun noDuplicateSubseq!278 (List!32162 List!32162) Unit!45263)

(assert (=> b!1371552 (= lt!602627 (noDuplicateSubseq!278 lt!602629 lt!602630))))

(declare-fun b!1371553 () Bool)

(declare-fun res!915045 () Bool)

(assert (=> b!1371553 (=> (not res!915045) (not e!777015))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1371553 (= res!915045 (validKeyInArray!0 (select (arr!44914 a!3861) from!3239)))))

(declare-fun b!1371554 () Bool)

(declare-fun res!915033 () Bool)

(assert (=> b!1371554 (=> (not res!915033) (not e!777019))))

(declare-fun noDuplicate!2579 (List!32162) Bool)

(assert (=> b!1371554 (= res!915033 (noDuplicate!2579 acc!866))))

(declare-fun b!1371555 () Bool)

(declare-fun res!915031 () Bool)

(assert (=> b!1371555 (=> (not res!915031) (not e!777015))))

(assert (=> b!1371555 (= res!915031 (not (contains!9700 acc!866 (select (arr!44914 a!3861) from!3239))))))

(declare-fun b!1371556 () Bool)

(declare-fun res!915034 () Bool)

(assert (=> b!1371556 (=> (not res!915034) (not e!777019))))

(assert (=> b!1371556 (= res!915034 (not (contains!9700 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1371557 () Bool)

(assert (=> b!1371557 (= e!777019 e!777015)))

(declare-fun res!915041 () Bool)

(assert (=> b!1371557 (=> (not res!915041) (not e!777015))))

(assert (=> b!1371557 (= res!915041 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!602628 () Unit!45263)

(assert (=> b!1371557 (= lt!602628 (noDuplicateSubseq!278 newAcc!98 acc!866))))

(declare-fun b!1371558 () Bool)

(declare-fun res!915047 () Bool)

(assert (=> b!1371558 (=> (not res!915047) (not e!777019))))

(declare-fun subseq!1091 (List!32162 List!32162) Bool)

(assert (=> b!1371558 (= res!915047 (subseq!1091 newAcc!98 acc!866))))

(declare-fun b!1371559 () Bool)

(assert (=> b!1371559 (= e!777017 (bvsge (bvsub (size!45465 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) (bvsub (size!45465 a!3861) from!3239)))))

(declare-fun b!1371560 () Bool)

(declare-fun res!915036 () Bool)

(assert (=> b!1371560 (=> (not res!915036) (not e!777018))))

(assert (=> b!1371560 (= res!915036 (subseq!1091 lt!602629 lt!602630))))

(declare-fun b!1371561 () Bool)

(declare-fun res!915043 () Bool)

(assert (=> b!1371561 (=> (not res!915043) (not e!777018))))

(assert (=> b!1371561 (= res!915043 (noDuplicate!2579 lt!602630))))

(declare-fun b!1371562 () Bool)

(declare-fun res!915048 () Bool)

(assert (=> b!1371562 (=> (not res!915048) (not e!777019))))

(assert (=> b!1371562 (= res!915048 (not (contains!9700 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1371563 () Bool)

(declare-fun res!915037 () Bool)

(assert (=> b!1371563 (=> (not res!915037) (not e!777019))))

(assert (=> b!1371563 (= res!915037 (not (contains!9700 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!116168 res!915044) b!1371554))

(assert (= (and b!1371554 res!915033) b!1371562))

(assert (= (and b!1371562 res!915048) b!1371548))

(assert (= (and b!1371548 res!915038) b!1371556))

(assert (= (and b!1371556 res!915034) b!1371563))

(assert (= (and b!1371563 res!915037) b!1371558))

(assert (= (and b!1371558 res!915047) b!1371557))

(assert (= (and b!1371557 res!915041) b!1371547))

(assert (= (and b!1371547 res!915035) b!1371553))

(assert (= (and b!1371553 res!915045) b!1371555))

(assert (= (and b!1371555 res!915031) b!1371549))

(assert (= (and b!1371549 res!915040) b!1371561))

(assert (= (and b!1371561 res!915043) b!1371551))

(assert (= (and b!1371551 res!915032) b!1371550))

(assert (= (and b!1371550 res!915046) b!1371546))

(assert (= (and b!1371546 res!915042) b!1371545))

(assert (= (and b!1371545 res!915039) b!1371560))

(assert (= (and b!1371560 res!915036) b!1371552))

(assert (= (and b!1371552 res!915030) b!1371559))

(declare-fun m!1255027 () Bool)

(assert (=> b!1371555 m!1255027))

(assert (=> b!1371555 m!1255027))

(declare-fun m!1255029 () Bool)

(assert (=> b!1371555 m!1255029))

(declare-fun m!1255031 () Bool)

(assert (=> b!1371554 m!1255031))

(declare-fun m!1255033 () Bool)

(assert (=> b!1371551 m!1255033))

(declare-fun m!1255035 () Bool)

(assert (=> b!1371548 m!1255035))

(declare-fun m!1255037 () Bool)

(assert (=> b!1371550 m!1255037))

(declare-fun m!1255039 () Bool)

(assert (=> b!1371562 m!1255039))

(declare-fun m!1255041 () Bool)

(assert (=> b!1371560 m!1255041))

(declare-fun m!1255043 () Bool)

(assert (=> b!1371558 m!1255043))

(assert (=> b!1371553 m!1255027))

(assert (=> b!1371553 m!1255027))

(declare-fun m!1255045 () Bool)

(assert (=> b!1371553 m!1255045))

(declare-fun m!1255047 () Bool)

(assert (=> b!1371556 m!1255047))

(declare-fun m!1255049 () Bool)

(assert (=> b!1371552 m!1255049))

(declare-fun m!1255051 () Bool)

(assert (=> b!1371552 m!1255051))

(declare-fun m!1255053 () Bool)

(assert (=> start!116168 m!1255053))

(declare-fun m!1255055 () Bool)

(assert (=> b!1371557 m!1255055))

(declare-fun m!1255057 () Bool)

(assert (=> b!1371557 m!1255057))

(declare-fun m!1255059 () Bool)

(assert (=> b!1371563 m!1255059))

(declare-fun m!1255061 () Bool)

(assert (=> b!1371561 m!1255061))

(declare-fun m!1255063 () Bool)

(assert (=> b!1371545 m!1255063))

(assert (=> b!1371549 m!1255027))

(declare-fun m!1255065 () Bool)

(assert (=> b!1371546 m!1255065))

(push 1)

(assert (not b!1371552))

(assert (not b!1371557))

(assert (not b!1371560))

(assert (not b!1371546))

(assert (not b!1371558))

(assert (not b!1371554))

(assert (not b!1371550))

(assert (not b!1371556))

(assert (not b!1371555))

(assert (not b!1371553))

(assert (not b!1371561))

(assert (not start!116168))

(assert (not b!1371545))

(assert (not b!1371562))

(assert (not b!1371563))

(assert (not b!1371548))

(assert (not b!1371551))

(check-sat)

(pop 1)

(push 1)

(check-sat)

