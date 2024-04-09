; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115734 () Bool)

(assert start!115734)

(declare-fun b!1367947 () Bool)

(declare-fun res!911584 () Bool)

(declare-fun e!775200 () Bool)

(assert (=> b!1367947 (=> (not res!911584) (not e!775200))))

(declare-datatypes ((List!32092 0))(
  ( (Nil!32089) (Cons!32088 (h!33297 (_ BitVec 64)) (t!46793 List!32092)) )
))
(declare-fun acc!866 () List!32092)

(declare-fun contains!9630 (List!32092 (_ BitVec 64)) Bool)

(assert (=> b!1367947 (= res!911584 (not (contains!9630 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367948 () Bool)

(declare-fun res!911577 () Bool)

(declare-fun e!775199 () Bool)

(assert (=> b!1367948 (=> (not res!911577) (not e!775199))))

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> b!1367948 (= res!911577 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1367949 () Bool)

(declare-fun res!911576 () Bool)

(assert (=> b!1367949 (=> (not res!911576) (not e!775199))))

(declare-datatypes ((array!92849 0))(
  ( (array!92850 (arr!44844 (Array (_ BitVec 32) (_ BitVec 64))) (size!45395 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92849)

(assert (=> b!1367949 (= res!911576 (bvslt from!3239 (size!45395 a!3861)))))

(declare-fun b!1367950 () Bool)

(declare-fun res!911578 () Bool)

(assert (=> b!1367950 (=> (not res!911578) (not e!775200))))

(declare-fun newAcc!98 () List!32092)

(assert (=> b!1367950 (= res!911578 (not (contains!9630 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367951 () Bool)

(assert (=> b!1367951 (= e!775199 false)))

(declare-fun lt!601928 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92849 (_ BitVec 32) List!32092) Bool)

(assert (=> b!1367951 (= lt!601928 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1367952 () Bool)

(declare-fun res!911582 () Bool)

(assert (=> b!1367952 (=> (not res!911582) (not e!775200))))

(declare-fun noDuplicate!2509 (List!32092) Bool)

(assert (=> b!1367952 (= res!911582 (noDuplicate!2509 acc!866))))

(declare-fun b!1367953 () Bool)

(declare-fun res!911586 () Bool)

(assert (=> b!1367953 (=> (not res!911586) (not e!775200))))

(assert (=> b!1367953 (= res!911586 (not (contains!9630 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367954 () Bool)

(declare-fun res!911583 () Bool)

(assert (=> b!1367954 (=> (not res!911583) (not e!775199))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1367954 (= res!911583 (not (validKeyInArray!0 (select (arr!44844 a!3861) from!3239))))))

(declare-fun b!1367955 () Bool)

(assert (=> b!1367955 (= e!775200 e!775199)))

(declare-fun res!911585 () Bool)

(assert (=> b!1367955 (=> (not res!911585) (not e!775199))))

(assert (=> b!1367955 (= res!911585 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45123 0))(
  ( (Unit!45124) )
))
(declare-fun lt!601927 () Unit!45123)

(declare-fun noDuplicateSubseq!208 (List!32092 List!32092) Unit!45123)

(assert (=> b!1367955 (= lt!601927 (noDuplicateSubseq!208 newAcc!98 acc!866))))

(declare-fun b!1367957 () Bool)

(declare-fun res!911580 () Bool)

(assert (=> b!1367957 (=> (not res!911580) (not e!775200))))

(assert (=> b!1367957 (= res!911580 (not (contains!9630 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367956 () Bool)

(declare-fun res!911581 () Bool)

(assert (=> b!1367956 (=> (not res!911581) (not e!775200))))

(declare-fun subseq!1021 (List!32092 List!32092) Bool)

(assert (=> b!1367956 (= res!911581 (subseq!1021 newAcc!98 acc!866))))

(declare-fun res!911579 () Bool)

(assert (=> start!115734 (=> (not res!911579) (not e!775200))))

(assert (=> start!115734 (= res!911579 (and (bvslt (size!45395 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45395 a!3861))))))

(assert (=> start!115734 e!775200))

(declare-fun array_inv!33789 (array!92849) Bool)

(assert (=> start!115734 (array_inv!33789 a!3861)))

(assert (=> start!115734 true))

(assert (= (and start!115734 res!911579) b!1367952))

(assert (= (and b!1367952 res!911582) b!1367947))

(assert (= (and b!1367947 res!911584) b!1367953))

(assert (= (and b!1367953 res!911586) b!1367957))

(assert (= (and b!1367957 res!911580) b!1367950))

(assert (= (and b!1367950 res!911578) b!1367956))

(assert (= (and b!1367956 res!911581) b!1367955))

(assert (= (and b!1367955 res!911585) b!1367949))

(assert (= (and b!1367949 res!911576) b!1367954))

(assert (= (and b!1367954 res!911583) b!1367948))

(assert (= (and b!1367948 res!911577) b!1367951))

(declare-fun m!1252063 () Bool)

(assert (=> b!1367954 m!1252063))

(assert (=> b!1367954 m!1252063))

(declare-fun m!1252065 () Bool)

(assert (=> b!1367954 m!1252065))

(declare-fun m!1252067 () Bool)

(assert (=> b!1367947 m!1252067))

(declare-fun m!1252069 () Bool)

(assert (=> b!1367956 m!1252069))

(declare-fun m!1252071 () Bool)

(assert (=> b!1367953 m!1252071))

(declare-fun m!1252073 () Bool)

(assert (=> b!1367957 m!1252073))

(declare-fun m!1252075 () Bool)

(assert (=> b!1367952 m!1252075))

(declare-fun m!1252077 () Bool)

(assert (=> start!115734 m!1252077))

(declare-fun m!1252079 () Bool)

(assert (=> b!1367950 m!1252079))

(declare-fun m!1252081 () Bool)

(assert (=> b!1367955 m!1252081))

(declare-fun m!1252083 () Bool)

(assert (=> b!1367955 m!1252083))

(declare-fun m!1252085 () Bool)

(assert (=> b!1367951 m!1252085))

(push 1)

(assert (not start!115734))

(assert (not b!1367951))

