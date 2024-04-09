; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113960 () Bool)

(assert start!113960)

(declare-fun b!1351096 () Bool)

(declare-fun e!768435 () Bool)

(assert (=> b!1351096 (= e!768435 true)))

(declare-fun lt!597095 () Bool)

(declare-datatypes ((List!31697 0))(
  ( (Nil!31694) (Cons!31693 (h!32902 (_ BitVec 64)) (t!46362 List!31697)) )
))
(declare-fun lt!597098 () List!31697)

(declare-datatypes ((array!92065 0))(
  ( (array!92066 (arr!44476 (Array (_ BitVec 32) (_ BitVec 64))) (size!45027 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92065)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92065 (_ BitVec 32) List!31697) Bool)

(assert (=> b!1351096 (= lt!597095 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597098))))

(declare-datatypes ((Unit!44204 0))(
  ( (Unit!44205) )
))
(declare-fun lt!597096 () Unit!44204)

(declare-fun acc!759 () List!31697)

(declare-fun noDuplicateSubseq!122 (List!31697 List!31697) Unit!44204)

(assert (=> b!1351096 (= lt!597096 (noDuplicateSubseq!122 acc!759 lt!597098))))

(declare-fun b!1351097 () Bool)

(declare-fun res!896676 () Bool)

(declare-fun e!768436 () Bool)

(assert (=> b!1351097 (=> (not res!896676) (not e!768436))))

(assert (=> b!1351097 (= res!896676 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31694))))

(declare-fun b!1351098 () Bool)

(declare-fun res!896687 () Bool)

(assert (=> b!1351098 (=> res!896687 e!768435)))

(declare-fun contains!9262 (List!31697 (_ BitVec 64)) Bool)

(assert (=> b!1351098 (= res!896687 (contains!9262 lt!597098 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351099 () Bool)

(declare-fun res!896682 () Bool)

(assert (=> b!1351099 (=> (not res!896682) (not e!768436))))

(assert (=> b!1351099 (= res!896682 (not (contains!9262 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351100 () Bool)

(declare-fun res!896685 () Bool)

(assert (=> b!1351100 (=> res!896685 e!768435)))

(assert (=> b!1351100 (= res!896685 (contains!9262 lt!597098 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351101 () Bool)

(declare-fun res!896681 () Bool)

(assert (=> b!1351101 (=> res!896681 e!768435)))

(declare-fun subseq!671 (List!31697 List!31697) Bool)

(assert (=> b!1351101 (= res!896681 (not (subseq!671 acc!759 lt!597098)))))

(declare-fun b!1351102 () Bool)

(declare-fun res!896677 () Bool)

(assert (=> b!1351102 (=> (not res!896677) (not e!768436))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351102 (= res!896677 (validKeyInArray!0 (select (arr!44476 a!3742) from!3120)))))

(declare-fun b!1351103 () Bool)

(declare-fun res!896684 () Bool)

(assert (=> b!1351103 (=> res!896684 e!768435)))

(declare-fun noDuplicate!2141 (List!31697) Bool)

(assert (=> b!1351103 (= res!896684 (not (noDuplicate!2141 lt!597098)))))

(declare-fun b!1351095 () Bool)

(declare-fun res!896683 () Bool)

(assert (=> b!1351095 (=> (not res!896683) (not e!768436))))

(assert (=> b!1351095 (= res!896683 (noDuplicate!2141 acc!759))))

(declare-fun res!896678 () Bool)

(assert (=> start!113960 (=> (not res!896678) (not e!768436))))

(assert (=> start!113960 (= res!896678 (and (bvslt (size!45027 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45027 a!3742))))))

(assert (=> start!113960 e!768436))

(assert (=> start!113960 true))

(declare-fun array_inv!33421 (array!92065) Bool)

(assert (=> start!113960 (array_inv!33421 a!3742)))

(declare-fun b!1351104 () Bool)

(declare-fun res!896686 () Bool)

(assert (=> b!1351104 (=> (not res!896686) (not e!768436))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1351104 (= res!896686 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1351105 () Bool)

(assert (=> b!1351105 (= e!768436 (not e!768435))))

(declare-fun res!896675 () Bool)

(assert (=> b!1351105 (=> res!896675 e!768435)))

(assert (=> b!1351105 (= res!896675 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!688 (List!31697 (_ BitVec 64)) List!31697)

(assert (=> b!1351105 (= lt!597098 ($colon$colon!688 acc!759 (select (arr!44476 a!3742) from!3120)))))

(assert (=> b!1351105 (subseq!671 acc!759 acc!759)))

(declare-fun lt!597097 () Unit!44204)

(declare-fun lemmaListSubSeqRefl!0 (List!31697) Unit!44204)

(assert (=> b!1351105 (= lt!597097 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1351106 () Bool)

(declare-fun res!896680 () Bool)

(assert (=> b!1351106 (=> (not res!896680) (not e!768436))))

(assert (=> b!1351106 (= res!896680 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45027 a!3742)))))

(declare-fun b!1351107 () Bool)

(declare-fun res!896688 () Bool)

(assert (=> b!1351107 (=> (not res!896688) (not e!768436))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1351107 (= res!896688 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45027 a!3742))))))

(declare-fun b!1351108 () Bool)

(declare-fun res!896674 () Bool)

(assert (=> b!1351108 (=> (not res!896674) (not e!768436))))

(assert (=> b!1351108 (= res!896674 (not (contains!9262 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351109 () Bool)

(declare-fun res!896679 () Bool)

(assert (=> b!1351109 (=> (not res!896679) (not e!768436))))

(assert (=> b!1351109 (= res!896679 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(assert (= (and start!113960 res!896678) b!1351095))

(assert (= (and b!1351095 res!896683) b!1351108))

(assert (= (and b!1351108 res!896674) b!1351099))

(assert (= (and b!1351099 res!896682) b!1351097))

(assert (= (and b!1351097 res!896676) b!1351109))

(assert (= (and b!1351109 res!896679) b!1351107))

(assert (= (and b!1351107 res!896688) b!1351104))

(assert (= (and b!1351104 res!896686) b!1351106))

(assert (= (and b!1351106 res!896680) b!1351102))

(assert (= (and b!1351102 res!896677) b!1351105))

(assert (= (and b!1351105 (not res!896675)) b!1351103))

(assert (= (and b!1351103 (not res!896684)) b!1351100))

(assert (= (and b!1351100 (not res!896685)) b!1351098))

(assert (= (and b!1351098 (not res!896687)) b!1351101))

(assert (= (and b!1351101 (not res!896681)) b!1351096))

(declare-fun m!1238209 () Bool)

(assert (=> b!1351099 m!1238209))

(declare-fun m!1238211 () Bool)

(assert (=> b!1351109 m!1238211))

(declare-fun m!1238213 () Bool)

(assert (=> b!1351104 m!1238213))

(declare-fun m!1238215 () Bool)

(assert (=> b!1351103 m!1238215))

(declare-fun m!1238217 () Bool)

(assert (=> b!1351097 m!1238217))

(declare-fun m!1238219 () Bool)

(assert (=> b!1351108 m!1238219))

(declare-fun m!1238221 () Bool)

(assert (=> b!1351096 m!1238221))

(declare-fun m!1238223 () Bool)

(assert (=> b!1351096 m!1238223))

(declare-fun m!1238225 () Bool)

(assert (=> b!1351101 m!1238225))

(declare-fun m!1238227 () Bool)

(assert (=> b!1351102 m!1238227))

(assert (=> b!1351102 m!1238227))

(declare-fun m!1238229 () Bool)

(assert (=> b!1351102 m!1238229))

(declare-fun m!1238231 () Bool)

(assert (=> start!113960 m!1238231))

(assert (=> b!1351105 m!1238227))

(assert (=> b!1351105 m!1238227))

(declare-fun m!1238233 () Bool)

(assert (=> b!1351105 m!1238233))

(declare-fun m!1238235 () Bool)

(assert (=> b!1351105 m!1238235))

(declare-fun m!1238237 () Bool)

(assert (=> b!1351105 m!1238237))

(declare-fun m!1238239 () Bool)

(assert (=> b!1351095 m!1238239))

(declare-fun m!1238241 () Bool)

(assert (=> b!1351098 m!1238241))

(declare-fun m!1238243 () Bool)

(assert (=> b!1351100 m!1238243))

(push 1)

(assert (not b!1351097))

(assert (not b!1351103))

(assert (not b!1351109))

(assert (not b!1351096))

(assert (not start!113960))

(assert (not b!1351098))

(assert (not b!1351099))

(assert (not b!1351095))

(assert (not b!1351102))

(assert (not b!1351108))

(assert (not b!1351100))

(assert (not b!1351101))

(assert (not b!1351104))

(assert (not b!1351105))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

