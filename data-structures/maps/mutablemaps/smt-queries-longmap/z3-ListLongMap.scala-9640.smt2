; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114016 () Bool)

(assert start!114016)

(declare-fun b!1352205 () Bool)

(declare-fun e!768739 () Bool)

(assert (=> b!1352205 (= e!768739 false)))

(declare-datatypes ((List!31725 0))(
  ( (Nil!31722) (Cons!31721 (h!32930 (_ BitVec 64)) (t!46390 List!31725)) )
))
(declare-fun acc!759 () List!31725)

(declare-fun lt!597434 () Bool)

(declare-datatypes ((array!92121 0))(
  ( (array!92122 (arr!44504 (Array (_ BitVec 32) (_ BitVec 64))) (size!45055 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92121)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92121 (_ BitVec 32) List!31725) Bool)

(assert (=> b!1352205 (= lt!597434 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352206 () Bool)

(declare-fun res!897684 () Bool)

(declare-fun e!768738 () Bool)

(assert (=> b!1352206 (=> (not res!897684) (not e!768738))))

(declare-fun noDuplicate!2169 (List!31725) Bool)

(assert (=> b!1352206 (= res!897684 (noDuplicate!2169 acc!759))))

(declare-fun b!1352207 () Bool)

(declare-datatypes ((Unit!44276 0))(
  ( (Unit!44277) )
))
(declare-fun e!768736 () Unit!44276)

(declare-fun Unit!44278 () Unit!44276)

(assert (=> b!1352207 (= e!768736 Unit!44278)))

(declare-fun b!1352208 () Bool)

(assert (=> b!1352208 (= e!768738 e!768739)))

(declare-fun res!897691 () Bool)

(assert (=> b!1352208 (=> (not res!897691) (not e!768739))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1352208 (= res!897691 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597432 () Unit!44276)

(assert (=> b!1352208 (= lt!597432 e!768736)))

(declare-fun c!126703 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352208 (= c!126703 (validKeyInArray!0 (select (arr!44504 a!3742) from!3120)))))

(declare-fun res!897687 () Bool)

(assert (=> start!114016 (=> (not res!897687) (not e!768738))))

(assert (=> start!114016 (= res!897687 (and (bvslt (size!45055 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45055 a!3742))))))

(assert (=> start!114016 e!768738))

(assert (=> start!114016 true))

(declare-fun array_inv!33449 (array!92121) Bool)

(assert (=> start!114016 (array_inv!33449 a!3742)))

(declare-fun b!1352209 () Bool)

(declare-fun lt!597431 () Unit!44276)

(assert (=> b!1352209 (= e!768736 lt!597431)))

(declare-fun lt!597433 () Unit!44276)

(declare-fun lemmaListSubSeqRefl!0 (List!31725) Unit!44276)

(assert (=> b!1352209 (= lt!597433 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!699 (List!31725 List!31725) Bool)

(assert (=> b!1352209 (subseq!699 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92121 List!31725 List!31725 (_ BitVec 32)) Unit!44276)

(declare-fun $colon$colon!716 (List!31725 (_ BitVec 64)) List!31725)

(assert (=> b!1352209 (= lt!597431 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!716 acc!759 (select (arr!44504 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1352209 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352210 () Bool)

(declare-fun res!897686 () Bool)

(assert (=> b!1352210 (=> (not res!897686) (not e!768738))))

(declare-fun contains!9290 (List!31725 (_ BitVec 64)) Bool)

(assert (=> b!1352210 (= res!897686 (not (contains!9290 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352211 () Bool)

(declare-fun res!897689 () Bool)

(assert (=> b!1352211 (=> (not res!897689) (not e!768738))))

(assert (=> b!1352211 (= res!897689 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1352212 () Bool)

(declare-fun res!897685 () Bool)

(assert (=> b!1352212 (=> (not res!897685) (not e!768738))))

(assert (=> b!1352212 (= res!897685 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31722))))

(declare-fun b!1352213 () Bool)

(declare-fun res!897688 () Bool)

(assert (=> b!1352213 (=> (not res!897688) (not e!768738))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1352213 (= res!897688 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1352214 () Bool)

(declare-fun res!897692 () Bool)

(assert (=> b!1352214 (=> (not res!897692) (not e!768738))))

(assert (=> b!1352214 (= res!897692 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45055 a!3742)))))

(declare-fun b!1352215 () Bool)

(declare-fun res!897690 () Bool)

(assert (=> b!1352215 (=> (not res!897690) (not e!768738))))

(assert (=> b!1352215 (= res!897690 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45055 a!3742))))))

(declare-fun b!1352216 () Bool)

(declare-fun res!897693 () Bool)

(assert (=> b!1352216 (=> (not res!897693) (not e!768738))))

(assert (=> b!1352216 (= res!897693 (not (contains!9290 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114016 res!897687) b!1352206))

(assert (= (and b!1352206 res!897684) b!1352210))

(assert (= (and b!1352210 res!897686) b!1352216))

(assert (= (and b!1352216 res!897693) b!1352212))

(assert (= (and b!1352212 res!897685) b!1352211))

(assert (= (and b!1352211 res!897689) b!1352215))

(assert (= (and b!1352215 res!897690) b!1352213))

(assert (= (and b!1352213 res!897688) b!1352214))

(assert (= (and b!1352214 res!897692) b!1352208))

(assert (= (and b!1352208 c!126703) b!1352209))

(assert (= (and b!1352208 (not c!126703)) b!1352207))

(assert (= (and b!1352208 res!897691) b!1352205))

(declare-fun m!1239089 () Bool)

(assert (=> b!1352208 m!1239089))

(assert (=> b!1352208 m!1239089))

(declare-fun m!1239091 () Bool)

(assert (=> b!1352208 m!1239091))

(declare-fun m!1239093 () Bool)

(assert (=> b!1352212 m!1239093))

(declare-fun m!1239095 () Bool)

(assert (=> b!1352205 m!1239095))

(declare-fun m!1239097 () Bool)

(assert (=> b!1352216 m!1239097))

(declare-fun m!1239099 () Bool)

(assert (=> b!1352211 m!1239099))

(declare-fun m!1239101 () Bool)

(assert (=> b!1352209 m!1239101))

(assert (=> b!1352209 m!1239089))

(declare-fun m!1239103 () Bool)

(assert (=> b!1352209 m!1239103))

(declare-fun m!1239105 () Bool)

(assert (=> b!1352209 m!1239105))

(assert (=> b!1352209 m!1239095))

(assert (=> b!1352209 m!1239089))

(assert (=> b!1352209 m!1239103))

(declare-fun m!1239107 () Bool)

(assert (=> b!1352209 m!1239107))

(declare-fun m!1239109 () Bool)

(assert (=> b!1352210 m!1239109))

(declare-fun m!1239111 () Bool)

(assert (=> b!1352213 m!1239111))

(declare-fun m!1239113 () Bool)

(assert (=> b!1352206 m!1239113))

(declare-fun m!1239115 () Bool)

(assert (=> start!114016 m!1239115))

(check-sat (not b!1352211) (not b!1352206) (not start!114016) (not b!1352210) (not b!1352208) (not b!1352212) (not b!1352205) (not b!1352213) (not b!1352216) (not b!1352209))
(check-sat)
