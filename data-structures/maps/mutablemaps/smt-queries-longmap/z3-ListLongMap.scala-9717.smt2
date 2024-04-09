; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115012 () Bool)

(assert start!115012)

(declare-fun b!1362703 () Bool)

(declare-datatypes ((Unit!44888 0))(
  ( (Unit!44889) )
))
(declare-fun e!772955 () Unit!44888)

(declare-fun Unit!44890 () Unit!44888)

(assert (=> b!1362703 (= e!772955 Unit!44890)))

(declare-fun b!1362704 () Bool)

(declare-fun res!906750 () Bool)

(declare-fun e!772957 () Bool)

(assert (=> b!1362704 (=> (not res!906750) (not e!772957))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92613 0))(
  ( (array!92614 (arr!44735 (Array (_ BitVec 32) (_ BitVec 64))) (size!45286 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92613)

(assert (=> b!1362704 (= res!906750 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45286 a!3742)))))

(declare-fun b!1362705 () Bool)

(declare-fun res!906748 () Bool)

(assert (=> b!1362705 (=> (not res!906748) (not e!772957))))

(declare-datatypes ((List!31956 0))(
  ( (Nil!31953) (Cons!31952 (h!33161 (_ BitVec 64)) (t!46651 List!31956)) )
))
(declare-fun acc!759 () List!31956)

(declare-fun contains!9521 (List!31956 (_ BitVec 64)) Bool)

(assert (=> b!1362705 (= res!906748 (not (contains!9521 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362706 () Bool)

(declare-fun lt!600525 () Unit!44888)

(assert (=> b!1362706 (= e!772955 lt!600525)))

(declare-fun lt!600526 () Unit!44888)

(declare-fun lemmaListSubSeqRefl!0 (List!31956) Unit!44888)

(assert (=> b!1362706 (= lt!600526 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!912 (List!31956 List!31956) Bool)

(assert (=> b!1362706 (subseq!912 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92613 List!31956 List!31956 (_ BitVec 32)) Unit!44888)

(declare-fun $colon$colon!917 (List!31956 (_ BitVec 64)) List!31956)

(assert (=> b!1362706 (= lt!600525 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!917 acc!759 (select (arr!44735 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92613 (_ BitVec 32) List!31956) Bool)

(assert (=> b!1362706 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1362707 () Bool)

(declare-fun res!906749 () Bool)

(assert (=> b!1362707 (=> (not res!906749) (not e!772957))))

(assert (=> b!1362707 (= res!906749 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31953))))

(declare-fun b!1362708 () Bool)

(declare-fun res!906753 () Bool)

(assert (=> b!1362708 (=> (not res!906753) (not e!772957))))

(assert (=> b!1362708 (= res!906753 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1362709 () Bool)

(declare-fun res!906756 () Bool)

(assert (=> b!1362709 (=> (not res!906756) (not e!772957))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1362709 (= res!906756 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45286 a!3742))))))

(declare-fun b!1362710 () Bool)

(declare-fun res!906751 () Bool)

(assert (=> b!1362710 (=> (not res!906751) (not e!772957))))

(assert (=> b!1362710 (= res!906751 (not (contains!9521 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!906755 () Bool)

(assert (=> start!115012 (=> (not res!906755) (not e!772957))))

(assert (=> start!115012 (= res!906755 (and (bvslt (size!45286 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45286 a!3742))))))

(assert (=> start!115012 e!772957))

(assert (=> start!115012 true))

(declare-fun array_inv!33680 (array!92613) Bool)

(assert (=> start!115012 (array_inv!33680 a!3742)))

(declare-fun b!1362711 () Bool)

(declare-fun res!906754 () Bool)

(assert (=> b!1362711 (=> (not res!906754) (not e!772957))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1362711 (= res!906754 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1362712 () Bool)

(declare-fun res!906752 () Bool)

(assert (=> b!1362712 (=> (not res!906752) (not e!772957))))

(declare-fun noDuplicate!2400 (List!31956) Bool)

(assert (=> b!1362712 (= res!906752 (noDuplicate!2400 acc!759))))

(declare-fun b!1362713 () Bool)

(assert (=> b!1362713 (= e!772957 false)))

(declare-fun lt!600527 () Unit!44888)

(assert (=> b!1362713 (= lt!600527 e!772955)))

(declare-fun c!127420 () Bool)

(assert (=> b!1362713 (= c!127420 (validKeyInArray!0 (select (arr!44735 a!3742) from!3120)))))

(assert (= (and start!115012 res!906755) b!1362712))

(assert (= (and b!1362712 res!906752) b!1362705))

(assert (= (and b!1362705 res!906748) b!1362710))

(assert (= (and b!1362710 res!906751) b!1362707))

(assert (= (and b!1362707 res!906749) b!1362708))

(assert (= (and b!1362708 res!906753) b!1362709))

(assert (= (and b!1362709 res!906756) b!1362711))

(assert (= (and b!1362711 res!906754) b!1362704))

(assert (= (and b!1362704 res!906750) b!1362713))

(assert (= (and b!1362713 c!127420) b!1362706))

(assert (= (and b!1362713 (not c!127420)) b!1362703))

(declare-fun m!1247663 () Bool)

(assert (=> b!1362710 m!1247663))

(declare-fun m!1247665 () Bool)

(assert (=> b!1362712 m!1247665))

(declare-fun m!1247667 () Bool)

(assert (=> b!1362708 m!1247667))

(declare-fun m!1247669 () Bool)

(assert (=> b!1362706 m!1247669))

(declare-fun m!1247671 () Bool)

(assert (=> b!1362706 m!1247671))

(declare-fun m!1247673 () Bool)

(assert (=> b!1362706 m!1247673))

(declare-fun m!1247675 () Bool)

(assert (=> b!1362706 m!1247675))

(declare-fun m!1247677 () Bool)

(assert (=> b!1362706 m!1247677))

(assert (=> b!1362706 m!1247671))

(assert (=> b!1362706 m!1247673))

(declare-fun m!1247679 () Bool)

(assert (=> b!1362706 m!1247679))

(declare-fun m!1247681 () Bool)

(assert (=> b!1362705 m!1247681))

(declare-fun m!1247683 () Bool)

(assert (=> b!1362711 m!1247683))

(declare-fun m!1247685 () Bool)

(assert (=> start!115012 m!1247685))

(assert (=> b!1362713 m!1247671))

(assert (=> b!1362713 m!1247671))

(declare-fun m!1247687 () Bool)

(assert (=> b!1362713 m!1247687))

(declare-fun m!1247689 () Bool)

(assert (=> b!1362707 m!1247689))

(check-sat (not b!1362705) (not b!1362713) (not b!1362711) (not b!1362708) (not b!1362707) (not start!115012) (not b!1362710) (not b!1362706) (not b!1362712))
