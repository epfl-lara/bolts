; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115006 () Bool)

(assert start!115006)

(declare-fun b!1362604 () Bool)

(declare-fun res!906672 () Bool)

(declare-fun e!772930 () Bool)

(assert (=> b!1362604 (=> (not res!906672) (not e!772930))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1362604 (= res!906672 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1362605 () Bool)

(declare-datatypes ((Unit!44879 0))(
  ( (Unit!44880) )
))
(declare-fun e!772928 () Unit!44879)

(declare-fun lt!600496 () Unit!44879)

(assert (=> b!1362605 (= e!772928 lt!600496)))

(declare-fun lt!600497 () Unit!44879)

(declare-datatypes ((List!31953 0))(
  ( (Nil!31950) (Cons!31949 (h!33158 (_ BitVec 64)) (t!46648 List!31953)) )
))
(declare-fun acc!759 () List!31953)

(declare-fun lemmaListSubSeqRefl!0 (List!31953) Unit!44879)

(assert (=> b!1362605 (= lt!600497 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!909 (List!31953 List!31953) Bool)

(assert (=> b!1362605 (subseq!909 acc!759 acc!759)))

(declare-datatypes ((array!92607 0))(
  ( (array!92608 (arr!44732 (Array (_ BitVec 32) (_ BitVec 64))) (size!45283 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92607)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92607 List!31953 List!31953 (_ BitVec 32)) Unit!44879)

(declare-fun $colon$colon!914 (List!31953 (_ BitVec 64)) List!31953)

(assert (=> b!1362605 (= lt!600496 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!914 acc!759 (select (arr!44732 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92607 (_ BitVec 32) List!31953) Bool)

(assert (=> b!1362605 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1362606 () Bool)

(declare-fun Unit!44881 () Unit!44879)

(assert (=> b!1362606 (= e!772928 Unit!44881)))

(declare-fun res!906671 () Bool)

(assert (=> start!115006 (=> (not res!906671) (not e!772930))))

(assert (=> start!115006 (= res!906671 (and (bvslt (size!45283 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45283 a!3742))))))

(assert (=> start!115006 e!772930))

(assert (=> start!115006 true))

(declare-fun array_inv!33677 (array!92607) Bool)

(assert (=> start!115006 (array_inv!33677 a!3742)))

(declare-fun b!1362607 () Bool)

(declare-fun res!906669 () Bool)

(assert (=> b!1362607 (=> (not res!906669) (not e!772930))))

(assert (=> b!1362607 (= res!906669 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31950))))

(declare-fun b!1362608 () Bool)

(declare-fun res!906674 () Bool)

(assert (=> b!1362608 (=> (not res!906674) (not e!772930))))

(assert (=> b!1362608 (= res!906674 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45283 a!3742)))))

(declare-fun b!1362609 () Bool)

(declare-fun res!906668 () Bool)

(assert (=> b!1362609 (=> (not res!906668) (not e!772930))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1362609 (= res!906668 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45283 a!3742))))))

(declare-fun lt!600495 () Bool)

(declare-fun b!1362610 () Bool)

(assert (=> b!1362610 (= e!772930 (and (not (= from!3120 i!1404)) (not lt!600495) (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!600494 () Unit!44879)

(assert (=> b!1362610 (= lt!600494 e!772928)))

(declare-fun c!127411 () Bool)

(assert (=> b!1362610 (= c!127411 lt!600495)))

(assert (=> b!1362610 (= lt!600495 (validKeyInArray!0 (select (arr!44732 a!3742) from!3120)))))

(declare-fun b!1362611 () Bool)

(declare-fun res!906675 () Bool)

(assert (=> b!1362611 (=> (not res!906675) (not e!772930))))

(declare-fun noDuplicate!2397 (List!31953) Bool)

(assert (=> b!1362611 (= res!906675 (noDuplicate!2397 acc!759))))

(declare-fun b!1362612 () Bool)

(declare-fun res!906673 () Bool)

(assert (=> b!1362612 (=> (not res!906673) (not e!772930))))

(assert (=> b!1362612 (= res!906673 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1362613 () Bool)

(declare-fun res!906670 () Bool)

(assert (=> b!1362613 (=> (not res!906670) (not e!772930))))

(declare-fun contains!9518 (List!31953 (_ BitVec 64)) Bool)

(assert (=> b!1362613 (= res!906670 (not (contains!9518 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362614 () Bool)

(declare-fun res!906667 () Bool)

(assert (=> b!1362614 (=> (not res!906667) (not e!772930))))

(assert (=> b!1362614 (= res!906667 (not (contains!9518 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115006 res!906671) b!1362611))

(assert (= (and b!1362611 res!906675) b!1362614))

(assert (= (and b!1362614 res!906667) b!1362613))

(assert (= (and b!1362613 res!906670) b!1362607))

(assert (= (and b!1362607 res!906669) b!1362612))

(assert (= (and b!1362612 res!906673) b!1362609))

(assert (= (and b!1362609 res!906668) b!1362604))

(assert (= (and b!1362604 res!906672) b!1362608))

(assert (= (and b!1362608 res!906674) b!1362610))

(assert (= (and b!1362610 c!127411) b!1362605))

(assert (= (and b!1362610 (not c!127411)) b!1362606))

(declare-fun m!1247579 () Bool)

(assert (=> start!115006 m!1247579))

(declare-fun m!1247581 () Bool)

(assert (=> b!1362612 m!1247581))

(declare-fun m!1247583 () Bool)

(assert (=> b!1362607 m!1247583))

(declare-fun m!1247585 () Bool)

(assert (=> b!1362605 m!1247585))

(declare-fun m!1247587 () Bool)

(assert (=> b!1362605 m!1247587))

(declare-fun m!1247589 () Bool)

(assert (=> b!1362605 m!1247589))

(declare-fun m!1247591 () Bool)

(assert (=> b!1362605 m!1247591))

(declare-fun m!1247593 () Bool)

(assert (=> b!1362605 m!1247593))

(assert (=> b!1362605 m!1247587))

(assert (=> b!1362605 m!1247589))

(declare-fun m!1247595 () Bool)

(assert (=> b!1362605 m!1247595))

(declare-fun m!1247597 () Bool)

(assert (=> b!1362614 m!1247597))

(declare-fun m!1247599 () Bool)

(assert (=> b!1362613 m!1247599))

(declare-fun m!1247601 () Bool)

(assert (=> b!1362611 m!1247601))

(assert (=> b!1362610 m!1247587))

(assert (=> b!1362610 m!1247587))

(declare-fun m!1247603 () Bool)

(assert (=> b!1362610 m!1247603))

(declare-fun m!1247605 () Bool)

(assert (=> b!1362604 m!1247605))

(check-sat (not b!1362611) (not b!1362610) (not b!1362613) (not start!115006) (not b!1362614) (not b!1362607) (not b!1362612) (not b!1362605) (not b!1362604))
(check-sat)
