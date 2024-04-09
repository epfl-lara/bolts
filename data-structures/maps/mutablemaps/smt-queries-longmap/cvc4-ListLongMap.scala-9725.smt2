; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115116 () Bool)

(assert start!115116)

(declare-fun res!907611 () Bool)

(declare-fun e!773364 () Bool)

(assert (=> start!115116 (=> (not res!907611) (not e!773364))))

(declare-datatypes ((array!92666 0))(
  ( (array!92667 (arr!44760 (Array (_ BitVec 32) (_ BitVec 64))) (size!45311 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92666)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!115116 (= res!907611 (and (bvslt (size!45311 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45311 a!3742))))))

(assert (=> start!115116 e!773364))

(assert (=> start!115116 true))

(declare-fun array_inv!33705 (array!92666) Bool)

(assert (=> start!115116 (array_inv!33705 a!3742)))

(declare-fun b!1363742 () Bool)

(declare-datatypes ((Unit!44963 0))(
  ( (Unit!44964) )
))
(declare-fun e!773362 () Unit!44963)

(declare-fun lt!600854 () Unit!44963)

(assert (=> b!1363742 (= e!773362 lt!600854)))

(declare-fun lt!600850 () Unit!44963)

(declare-datatypes ((List!31981 0))(
  ( (Nil!31978) (Cons!31977 (h!33186 (_ BitVec 64)) (t!46679 List!31981)) )
))
(declare-fun acc!759 () List!31981)

(declare-fun lemmaListSubSeqRefl!0 (List!31981) Unit!44963)

(assert (=> b!1363742 (= lt!600850 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!937 (List!31981 List!31981) Bool)

(assert (=> b!1363742 (subseq!937 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92666 List!31981 List!31981 (_ BitVec 32)) Unit!44963)

(declare-fun $colon$colon!942 (List!31981 (_ BitVec 64)) List!31981)

(assert (=> b!1363742 (= lt!600854 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!942 acc!759 (select (arr!44760 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92666 (_ BitVec 32) List!31981) Bool)

(assert (=> b!1363742 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1363743 () Bool)

(declare-fun res!907612 () Bool)

(assert (=> b!1363743 (=> (not res!907612) (not e!773364))))

(declare-fun contains!9546 (List!31981 (_ BitVec 64)) Bool)

(assert (=> b!1363743 (= res!907612 (not (contains!9546 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363744 () Bool)

(declare-fun res!907617 () Bool)

(assert (=> b!1363744 (=> (not res!907617) (not e!773364))))

(assert (=> b!1363744 (= res!907617 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45311 a!3742)))))

(declare-fun b!1363745 () Bool)

(declare-fun res!907610 () Bool)

(assert (=> b!1363745 (=> (not res!907610) (not e!773364))))

(assert (=> b!1363745 (= res!907610 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1363746 () Bool)

(declare-fun res!907616 () Bool)

(assert (=> b!1363746 (=> (not res!907616) (not e!773364))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1363746 (= res!907616 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45311 a!3742))))))

(declare-fun b!1363747 () Bool)

(declare-fun res!907615 () Bool)

(assert (=> b!1363747 (=> (not res!907615) (not e!773364))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1363747 (= res!907615 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1363748 () Bool)

(declare-fun res!907613 () Bool)

(assert (=> b!1363748 (=> (not res!907613) (not e!773364))))

(assert (=> b!1363748 (= res!907613 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31978))))

(declare-fun b!1363749 () Bool)

(declare-fun res!907607 () Bool)

(assert (=> b!1363749 (=> (not res!907607) (not e!773364))))

(assert (=> b!1363749 (= res!907607 (not (contains!9546 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363750 () Bool)

(declare-fun Unit!44965 () Unit!44963)

(assert (=> b!1363750 (= e!773362 Unit!44965)))

(declare-fun b!1363751 () Bool)

(declare-fun e!773363 () Bool)

(assert (=> b!1363751 (= e!773364 e!773363)))

(declare-fun res!907608 () Bool)

(assert (=> b!1363751 (=> (not res!907608) (not e!773363))))

(declare-fun lt!600853 () Bool)

(assert (=> b!1363751 (= res!907608 (and (not (= from!3120 i!1404)) (not lt!600853) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!600852 () Unit!44963)

(assert (=> b!1363751 (= lt!600852 e!773362)))

(declare-fun c!127510 () Bool)

(assert (=> b!1363751 (= c!127510 lt!600853)))

(assert (=> b!1363751 (= lt!600853 (validKeyInArray!0 (select (arr!44760 a!3742) from!3120)))))

(declare-fun b!1363752 () Bool)

(declare-fun res!907614 () Bool)

(assert (=> b!1363752 (=> (not res!907614) (not e!773364))))

(declare-fun noDuplicate!2425 (List!31981) Bool)

(assert (=> b!1363752 (= res!907614 (noDuplicate!2425 acc!759))))

(declare-fun b!1363753 () Bool)

(assert (=> b!1363753 (= e!773363 (not true))))

(assert (=> b!1363753 (arrayNoDuplicates!0 (array!92667 (store (arr!44760 a!3742) i!1404 l!3587) (size!45311 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!600851 () Unit!44963)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92666 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31981) Unit!44963)

(assert (=> b!1363753 (= lt!600851 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1363754 () Bool)

(declare-fun res!907609 () Bool)

(assert (=> b!1363754 (=> (not res!907609) (not e!773363))))

(assert (=> b!1363754 (= res!907609 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(assert (= (and start!115116 res!907611) b!1363752))

(assert (= (and b!1363752 res!907614) b!1363749))

(assert (= (and b!1363749 res!907607) b!1363743))

(assert (= (and b!1363743 res!907612) b!1363748))

(assert (= (and b!1363748 res!907613) b!1363745))

(assert (= (and b!1363745 res!907610) b!1363746))

(assert (= (and b!1363746 res!907616) b!1363747))

(assert (= (and b!1363747 res!907615) b!1363744))

(assert (= (and b!1363744 res!907617) b!1363751))

(assert (= (and b!1363751 c!127510) b!1363742))

(assert (= (and b!1363751 (not c!127510)) b!1363750))

(assert (= (and b!1363751 res!907608) b!1363754))

(assert (= (and b!1363754 res!907609) b!1363753))

(declare-fun m!1248501 () Bool)

(assert (=> b!1363748 m!1248501))

(declare-fun m!1248503 () Bool)

(assert (=> b!1363742 m!1248503))

(declare-fun m!1248505 () Bool)

(assert (=> b!1363742 m!1248505))

(declare-fun m!1248507 () Bool)

(assert (=> b!1363742 m!1248507))

(declare-fun m!1248509 () Bool)

(assert (=> b!1363742 m!1248509))

(declare-fun m!1248511 () Bool)

(assert (=> b!1363742 m!1248511))

(assert (=> b!1363742 m!1248505))

(assert (=> b!1363742 m!1248507))

(declare-fun m!1248513 () Bool)

(assert (=> b!1363742 m!1248513))

(declare-fun m!1248515 () Bool)

(assert (=> start!115116 m!1248515))

(assert (=> b!1363754 m!1248511))

(declare-fun m!1248517 () Bool)

(assert (=> b!1363743 m!1248517))

(declare-fun m!1248519 () Bool)

(assert (=> b!1363745 m!1248519))

(declare-fun m!1248521 () Bool)

(assert (=> b!1363749 m!1248521))

(declare-fun m!1248523 () Bool)

(assert (=> b!1363753 m!1248523))

(declare-fun m!1248525 () Bool)

(assert (=> b!1363753 m!1248525))

(declare-fun m!1248527 () Bool)

(assert (=> b!1363753 m!1248527))

(assert (=> b!1363751 m!1248505))

(assert (=> b!1363751 m!1248505))

(declare-fun m!1248529 () Bool)

(assert (=> b!1363751 m!1248529))

(declare-fun m!1248531 () Bool)

(assert (=> b!1363752 m!1248531))

(declare-fun m!1248533 () Bool)

(assert (=> b!1363747 m!1248533))

(push 1)

