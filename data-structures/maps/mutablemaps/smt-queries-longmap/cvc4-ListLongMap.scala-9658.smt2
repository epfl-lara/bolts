; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114126 () Bool)

(assert start!114126)

(declare-fun b!1354630 () Bool)

(declare-fun res!899792 () Bool)

(declare-fun e!769495 () Bool)

(assert (=> b!1354630 (=> (not res!899792) (not e!769495))))

(declare-datatypes ((List!31780 0))(
  ( (Nil!31777) (Cons!31776 (h!32985 (_ BitVec 64)) (t!46445 List!31780)) )
))
(declare-fun lt!598289 () List!31780)

(declare-datatypes ((array!92231 0))(
  ( (array!92232 (arr!44559 (Array (_ BitVec 32) (_ BitVec 64))) (size!45110 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92231)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92231 (_ BitVec 32) List!31780) Bool)

(assert (=> b!1354630 (= res!899792 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!598289))))

(declare-fun b!1354631 () Bool)

(declare-fun res!899786 () Bool)

(declare-fun e!769494 () Bool)

(assert (=> b!1354631 (=> (not res!899786) (not e!769494))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1354631 (= res!899786 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1354632 () Bool)

(declare-datatypes ((Unit!44441 0))(
  ( (Unit!44442) )
))
(declare-fun e!769498 () Unit!44441)

(declare-fun Unit!44443 () Unit!44441)

(assert (=> b!1354632 (= e!769498 Unit!44443)))

(declare-fun b!1354633 () Bool)

(declare-fun lt!598287 () Unit!44441)

(assert (=> b!1354633 (= e!769498 lt!598287)))

(declare-fun lt!598288 () Unit!44441)

(declare-fun acc!759 () List!31780)

(declare-fun lemmaListSubSeqRefl!0 (List!31780) Unit!44441)

(assert (=> b!1354633 (= lt!598288 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!754 (List!31780 List!31780) Bool)

(assert (=> b!1354633 (subseq!754 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92231 List!31780 List!31780 (_ BitVec 32)) Unit!44441)

(declare-fun $colon$colon!771 (List!31780 (_ BitVec 64)) List!31780)

(assert (=> b!1354633 (= lt!598287 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!771 acc!759 (select (arr!44559 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1354633 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1354634 () Bool)

(declare-fun res!899782 () Bool)

(assert (=> b!1354634 (=> (not res!899782) (not e!769495))))

(declare-fun contains!9345 (List!31780 (_ BitVec 64)) Bool)

(assert (=> b!1354634 (= res!899782 (not (contains!9345 lt!598289 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354635 () Bool)

(declare-fun res!899789 () Bool)

(assert (=> b!1354635 (=> (not res!899789) (not e!769494))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1354635 (= res!899789 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45110 a!3742))))))

(declare-fun b!1354636 () Bool)

(declare-fun res!899790 () Bool)

(assert (=> b!1354636 (=> (not res!899790) (not e!769494))))

(assert (=> b!1354636 (= res!899790 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31777))))

(declare-fun res!899780 () Bool)

(assert (=> start!114126 (=> (not res!899780) (not e!769494))))

(assert (=> start!114126 (= res!899780 (and (bvslt (size!45110 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45110 a!3742))))))

(assert (=> start!114126 e!769494))

(assert (=> start!114126 true))

(declare-fun array_inv!33504 (array!92231) Bool)

(assert (=> start!114126 (array_inv!33504 a!3742)))

(declare-fun b!1354637 () Bool)

(declare-fun res!899788 () Bool)

(assert (=> b!1354637 (=> (not res!899788) (not e!769494))))

(assert (=> b!1354637 (= res!899788 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1354638 () Bool)

(assert (=> b!1354638 (= e!769495 (not true))))

(assert (=> b!1354638 (arrayNoDuplicates!0 (array!92232 (store (arr!44559 a!3742) i!1404 l!3587) (size!45110 a!3742)) (bvadd #b00000000000000000000000000000001 from!3120) lt!598289)))

(declare-fun lt!598292 () Unit!44441)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!92231 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!31780) Unit!44441)

(assert (=> b!1354638 (= lt!598292 (lemmaPutNonValidKeyPreservesNoDuplicate!0 a!3742 l!3587 i!1404 (bvadd #b00000000000000000000000000000001 from!3120) lt!598289))))

(declare-fun b!1354639 () Bool)

(declare-fun res!899779 () Bool)

(assert (=> b!1354639 (=> (not res!899779) (not e!769494))))

(assert (=> b!1354639 (= res!899779 (not (contains!9345 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354640 () Bool)

(declare-fun res!899784 () Bool)

(assert (=> b!1354640 (=> (not res!899784) (not e!769495))))

(assert (=> b!1354640 (= res!899784 (not (contains!9345 lt!598289 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354641 () Bool)

(declare-fun res!899791 () Bool)

(assert (=> b!1354641 (=> (not res!899791) (not e!769494))))

(assert (=> b!1354641 (= res!899791 (not (contains!9345 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1354642 () Bool)

(declare-fun e!769497 () Bool)

(assert (=> b!1354642 (= e!769494 e!769497)))

(declare-fun res!899781 () Bool)

(assert (=> b!1354642 (=> (not res!899781) (not e!769497))))

(declare-fun lt!598290 () Bool)

(assert (=> b!1354642 (= res!899781 (and (not (= from!3120 i!1404)) lt!598290))))

(declare-fun lt!598291 () Unit!44441)

(assert (=> b!1354642 (= lt!598291 e!769498)))

(declare-fun c!126868 () Bool)

(assert (=> b!1354642 (= c!126868 lt!598290)))

(assert (=> b!1354642 (= lt!598290 (validKeyInArray!0 (select (arr!44559 a!3742) from!3120)))))

(declare-fun b!1354643 () Bool)

(declare-fun res!899785 () Bool)

(assert (=> b!1354643 (=> (not res!899785) (not e!769494))))

(declare-fun noDuplicate!2224 (List!31780) Bool)

(assert (=> b!1354643 (= res!899785 (noDuplicate!2224 acc!759))))

(declare-fun b!1354644 () Bool)

(declare-fun res!899787 () Bool)

(assert (=> b!1354644 (=> (not res!899787) (not e!769494))))

(assert (=> b!1354644 (= res!899787 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45110 a!3742)))))

(declare-fun b!1354645 () Bool)

(assert (=> b!1354645 (= e!769497 e!769495)))

(declare-fun res!899783 () Bool)

(assert (=> b!1354645 (=> (not res!899783) (not e!769495))))

(assert (=> b!1354645 (= res!899783 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1354645 (= lt!598289 ($colon$colon!771 acc!759 (select (arr!44559 a!3742) from!3120)))))

(declare-fun b!1354646 () Bool)

(declare-fun res!899793 () Bool)

(assert (=> b!1354646 (=> (not res!899793) (not e!769495))))

(assert (=> b!1354646 (= res!899793 (noDuplicate!2224 lt!598289))))

(assert (= (and start!114126 res!899780) b!1354643))

(assert (= (and b!1354643 res!899785) b!1354639))

(assert (= (and b!1354639 res!899779) b!1354641))

(assert (= (and b!1354641 res!899791) b!1354636))

(assert (= (and b!1354636 res!899790) b!1354637))

(assert (= (and b!1354637 res!899788) b!1354635))

(assert (= (and b!1354635 res!899789) b!1354631))

(assert (= (and b!1354631 res!899786) b!1354644))

(assert (= (and b!1354644 res!899787) b!1354642))

(assert (= (and b!1354642 c!126868) b!1354633))

(assert (= (and b!1354642 (not c!126868)) b!1354632))

(assert (= (and b!1354642 res!899781) b!1354645))

(assert (= (and b!1354645 res!899783) b!1354646))

(assert (= (and b!1354646 res!899793) b!1354634))

(assert (= (and b!1354634 res!899782) b!1354640))

(assert (= (and b!1354640 res!899784) b!1354630))

(assert (= (and b!1354630 res!899792) b!1354638))

(declare-fun m!1240987 () Bool)

(assert (=> b!1354640 m!1240987))

(declare-fun m!1240989 () Bool)

(assert (=> b!1354646 m!1240989))

(declare-fun m!1240991 () Bool)

(assert (=> b!1354638 m!1240991))

(declare-fun m!1240993 () Bool)

(assert (=> b!1354638 m!1240993))

(declare-fun m!1240995 () Bool)

(assert (=> b!1354638 m!1240995))

(declare-fun m!1240997 () Bool)

(assert (=> b!1354636 m!1240997))

(declare-fun m!1240999 () Bool)

(assert (=> b!1354639 m!1240999))

(declare-fun m!1241001 () Bool)

(assert (=> b!1354637 m!1241001))

(declare-fun m!1241003 () Bool)

(assert (=> b!1354642 m!1241003))

(assert (=> b!1354642 m!1241003))

(declare-fun m!1241005 () Bool)

(assert (=> b!1354642 m!1241005))

(declare-fun m!1241007 () Bool)

(assert (=> b!1354631 m!1241007))

(declare-fun m!1241009 () Bool)

(assert (=> b!1354634 m!1241009))

(declare-fun m!1241011 () Bool)

(assert (=> b!1354641 m!1241011))

(declare-fun m!1241013 () Bool)

(assert (=> b!1354643 m!1241013))

(declare-fun m!1241015 () Bool)

(assert (=> b!1354633 m!1241015))

(assert (=> b!1354633 m!1241003))

(declare-fun m!1241017 () Bool)

(assert (=> b!1354633 m!1241017))

(declare-fun m!1241019 () Bool)

(assert (=> b!1354633 m!1241019))

(declare-fun m!1241021 () Bool)

(assert (=> b!1354633 m!1241021))

(assert (=> b!1354633 m!1241003))

(assert (=> b!1354633 m!1241017))

(declare-fun m!1241023 () Bool)

(assert (=> b!1354633 m!1241023))

(declare-fun m!1241025 () Bool)

(assert (=> start!114126 m!1241025))

(declare-fun m!1241027 () Bool)

(assert (=> b!1354630 m!1241027))

(assert (=> b!1354645 m!1241003))

(assert (=> b!1354645 m!1241003))

(assert (=> b!1354645 m!1241017))

(push 1)

(assert (not b!1354639))

(assert (not b!1354646))

(assert (not b!1354630))

(assert (not b!1354641))

(assert (not b!1354637))

(assert (not b!1354634))

(assert (not b!1354633))

(assert (not b!1354643))

(assert (not start!114126))

(assert (not b!1354631))

(assert (not b!1354636))

(assert (not b!1354638))

(assert (not b!1354645))

(assert (not b!1354640))

(assert (not b!1354642))

(check-sat)

