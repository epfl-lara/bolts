; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114054 () Bool)

(assert start!114054)

(declare-fun b!1352915 () Bool)

(declare-fun res!898288 () Bool)

(declare-fun e!768965 () Bool)

(assert (=> b!1352915 (=> (not res!898288) (not e!768965))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92159 0))(
  ( (array!92160 (arr!44523 (Array (_ BitVec 32) (_ BitVec 64))) (size!45074 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92159)

(assert (=> b!1352915 (= res!898288 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45074 a!3742))))))

(declare-fun b!1352916 () Bool)

(declare-datatypes ((Unit!44333 0))(
  ( (Unit!44334) )
))
(declare-fun e!768964 () Unit!44333)

(declare-fun lt!597661 () Unit!44333)

(assert (=> b!1352916 (= e!768964 lt!597661)))

(declare-fun lt!597660 () Unit!44333)

(declare-datatypes ((List!31744 0))(
  ( (Nil!31741) (Cons!31740 (h!32949 (_ BitVec 64)) (t!46409 List!31744)) )
))
(declare-fun acc!759 () List!31744)

(declare-fun lemmaListSubSeqRefl!0 (List!31744) Unit!44333)

(assert (=> b!1352916 (= lt!597660 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!718 (List!31744 List!31744) Bool)

(assert (=> b!1352916 (subseq!718 acc!759 acc!759)))

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92159 List!31744 List!31744 (_ BitVec 32)) Unit!44333)

(declare-fun $colon$colon!735 (List!31744 (_ BitVec 64)) List!31744)

(assert (=> b!1352916 (= lt!597661 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!735 acc!759 (select (arr!44523 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92159 (_ BitVec 32) List!31744) Bool)

(assert (=> b!1352916 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1352917 () Bool)

(declare-fun res!898280 () Bool)

(assert (=> b!1352917 (=> (not res!898280) (not e!768965))))

(assert (=> b!1352917 (= res!898280 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1352918 () Bool)

(declare-fun res!898284 () Bool)

(assert (=> b!1352918 (=> (not res!898284) (not e!768965))))

(declare-fun contains!9309 (List!31744 (_ BitVec 64)) Bool)

(assert (=> b!1352918 (= res!898284 (not (contains!9309 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352920 () Bool)

(declare-fun e!768967 () Bool)

(assert (=> b!1352920 (= e!768965 e!768967)))

(declare-fun res!898286 () Bool)

(assert (=> b!1352920 (=> (not res!898286) (not e!768967))))

(assert (=> b!1352920 (= res!898286 (and (= from!3120 i!1404) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!597662 () Unit!44333)

(assert (=> b!1352920 (= lt!597662 e!768964)))

(declare-fun c!126760 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1352920 (= c!126760 (validKeyInArray!0 (select (arr!44523 a!3742) from!3120)))))

(declare-fun b!1352921 () Bool)

(declare-fun res!898285 () Bool)

(assert (=> b!1352921 (=> (not res!898285) (not e!768965))))

(assert (=> b!1352921 (= res!898285 (not (contains!9309 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1352922 () Bool)

(declare-fun res!898282 () Bool)

(assert (=> b!1352922 (=> (not res!898282) (not e!768965))))

(assert (=> b!1352922 (= res!898282 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31741))))

(declare-fun b!1352923 () Bool)

(declare-fun res!898289 () Bool)

(assert (=> b!1352923 (=> (not res!898289) (not e!768967))))

(assert (=> b!1352923 (= res!898289 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352924 () Bool)

(declare-fun Unit!44335 () Unit!44333)

(assert (=> b!1352924 (= e!768964 Unit!44335)))

(declare-fun b!1352925 () Bool)

(assert (=> b!1352925 (= e!768967 (not true))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1352925 (arrayNoDuplicates!0 (array!92160 (store (arr!44523 a!3742) i!1404 l!3587) (size!45074 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun lt!597659 () Unit!44333)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92159 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31744) Unit!44333)

(assert (=> b!1352925 (= lt!597659 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1352919 () Bool)

(declare-fun res!898287 () Bool)

(assert (=> b!1352919 (=> (not res!898287) (not e!768965))))

(declare-fun noDuplicate!2188 (List!31744) Bool)

(assert (=> b!1352919 (= res!898287 (noDuplicate!2188 acc!759))))

(declare-fun res!898281 () Bool)

(assert (=> start!114054 (=> (not res!898281) (not e!768965))))

(assert (=> start!114054 (= res!898281 (and (bvslt (size!45074 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45074 a!3742))))))

(assert (=> start!114054 e!768965))

(assert (=> start!114054 true))

(declare-fun array_inv!33468 (array!92159) Bool)

(assert (=> start!114054 (array_inv!33468 a!3742)))

(declare-fun b!1352926 () Bool)

(declare-fun res!898283 () Bool)

(assert (=> b!1352926 (=> (not res!898283) (not e!768965))))

(assert (=> b!1352926 (= res!898283 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1352927 () Bool)

(declare-fun res!898290 () Bool)

(assert (=> b!1352927 (=> (not res!898290) (not e!768965))))

(assert (=> b!1352927 (= res!898290 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45074 a!3742)))))

(assert (= (and start!114054 res!898281) b!1352919))

(assert (= (and b!1352919 res!898287) b!1352918))

(assert (= (and b!1352918 res!898284) b!1352921))

(assert (= (and b!1352921 res!898285) b!1352922))

(assert (= (and b!1352922 res!898282) b!1352917))

(assert (= (and b!1352917 res!898280) b!1352915))

(assert (= (and b!1352915 res!898288) b!1352926))

(assert (= (and b!1352926 res!898283) b!1352927))

(assert (= (and b!1352927 res!898290) b!1352920))

(assert (= (and b!1352920 c!126760) b!1352916))

(assert (= (and b!1352920 (not c!126760)) b!1352924))

(assert (= (and b!1352920 res!898286) b!1352923))

(assert (= (and b!1352923 res!898289) b!1352925))

(declare-fun m!1239669 () Bool)

(assert (=> start!114054 m!1239669))

(declare-fun m!1239671 () Bool)

(assert (=> b!1352922 m!1239671))

(declare-fun m!1239673 () Bool)

(assert (=> b!1352917 m!1239673))

(declare-fun m!1239675 () Bool)

(assert (=> b!1352920 m!1239675))

(assert (=> b!1352920 m!1239675))

(declare-fun m!1239677 () Bool)

(assert (=> b!1352920 m!1239677))

(declare-fun m!1239679 () Bool)

(assert (=> b!1352919 m!1239679))

(declare-fun m!1239681 () Bool)

(assert (=> b!1352916 m!1239681))

(assert (=> b!1352916 m!1239675))

(declare-fun m!1239683 () Bool)

(assert (=> b!1352916 m!1239683))

(declare-fun m!1239685 () Bool)

(assert (=> b!1352916 m!1239685))

(declare-fun m!1239687 () Bool)

(assert (=> b!1352916 m!1239687))

(assert (=> b!1352916 m!1239675))

(assert (=> b!1352916 m!1239683))

(declare-fun m!1239689 () Bool)

(assert (=> b!1352916 m!1239689))

(assert (=> b!1352923 m!1239687))

(declare-fun m!1239691 () Bool)

(assert (=> b!1352921 m!1239691))

(declare-fun m!1239693 () Bool)

(assert (=> b!1352926 m!1239693))

(declare-fun m!1239695 () Bool)

(assert (=> b!1352918 m!1239695))

(declare-fun m!1239697 () Bool)

(assert (=> b!1352925 m!1239697))

(declare-fun m!1239699 () Bool)

(assert (=> b!1352925 m!1239699))

(declare-fun m!1239701 () Bool)

(assert (=> b!1352925 m!1239701))

(push 1)

