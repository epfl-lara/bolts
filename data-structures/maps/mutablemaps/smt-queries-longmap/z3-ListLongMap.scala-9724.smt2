; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115108 () Bool)

(assert start!115108)

(declare-fun b!1363586 () Bool)

(declare-fun res!907484 () Bool)

(declare-fun e!773315 () Bool)

(assert (=> b!1363586 (=> (not res!907484) (not e!773315))))

(declare-datatypes ((List!31977 0))(
  ( (Nil!31974) (Cons!31973 (h!33182 (_ BitVec 64)) (t!46675 List!31977)) )
))
(declare-fun acc!759 () List!31977)

(declare-fun contains!9542 (List!31977 (_ BitVec 64)) Bool)

(assert (=> b!1363586 (= res!907484 (not (contains!9542 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1363587 () Bool)

(declare-fun res!907481 () Bool)

(assert (=> b!1363587 (=> (not res!907481) (not e!773315))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92658 0))(
  ( (array!92659 (arr!44756 (Array (_ BitVec 32) (_ BitVec 64))) (size!45307 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92658)

(assert (=> b!1363587 (= res!907481 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45307 a!3742)))))

(declare-fun b!1363588 () Bool)

(declare-fun res!907483 () Bool)

(assert (=> b!1363588 (=> (not res!907483) (not e!773315))))

(declare-fun arrayNoDuplicates!0 (array!92658 (_ BitVec 32) List!31977) Bool)

(assert (=> b!1363588 (= res!907483 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31974))))

(declare-fun b!1363589 () Bool)

(declare-fun res!907475 () Bool)

(assert (=> b!1363589 (=> (not res!907475) (not e!773315))))

(assert (=> b!1363589 (= res!907475 (not (contains!9542 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!907478 () Bool)

(assert (=> start!115108 (=> (not res!907478) (not e!773315))))

(assert (=> start!115108 (= res!907478 (and (bvslt (size!45307 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45307 a!3742))))))

(assert (=> start!115108 e!773315))

(assert (=> start!115108 true))

(declare-fun array_inv!33701 (array!92658) Bool)

(assert (=> start!115108 (array_inv!33701 a!3742)))

(declare-fun b!1363590 () Bool)

(declare-fun res!907482 () Bool)

(assert (=> b!1363590 (=> (not res!907482) (not e!773315))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1363590 (= res!907482 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1363591 () Bool)

(declare-fun e!773314 () Bool)

(assert (=> b!1363591 (= e!773314 (bvsge (bvsub (size!45307 a!3742) (bvadd #b00000000000000000000000000000001 from!3120)) (bvsub (size!45307 a!3742) from!3120)))))

(declare-fun b!1363592 () Bool)

(declare-datatypes ((Unit!44951 0))(
  ( (Unit!44952) )
))
(declare-fun e!773317 () Unit!44951)

(declare-fun lt!600796 () Unit!44951)

(assert (=> b!1363592 (= e!773317 lt!600796)))

(declare-fun lt!600794 () Unit!44951)

(declare-fun lemmaListSubSeqRefl!0 (List!31977) Unit!44951)

(assert (=> b!1363592 (= lt!600794 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!933 (List!31977 List!31977) Bool)

(assert (=> b!1363592 (subseq!933 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92658 List!31977 List!31977 (_ BitVec 32)) Unit!44951)

(declare-fun $colon$colon!938 (List!31977 (_ BitVec 64)) List!31977)

(assert (=> b!1363592 (= lt!600796 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!938 acc!759 (select (arr!44756 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1363592 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1363593 () Bool)

(declare-fun res!907477 () Bool)

(assert (=> b!1363593 (=> (not res!907477) (not e!773315))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1363593 (= res!907477 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45307 a!3742))))))

(declare-fun b!1363594 () Bool)

(declare-fun res!907485 () Bool)

(assert (=> b!1363594 (=> (not res!907485) (not e!773314))))

(assert (=> b!1363594 (= res!907485 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1363595 () Bool)

(declare-fun res!907476 () Bool)

(assert (=> b!1363595 (=> (not res!907476) (not e!773315))))

(assert (=> b!1363595 (= res!907476 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1363596 () Bool)

(declare-fun Unit!44953 () Unit!44951)

(assert (=> b!1363596 (= e!773317 Unit!44953)))

(declare-fun b!1363597 () Bool)

(assert (=> b!1363597 (= e!773315 e!773314)))

(declare-fun res!907480 () Bool)

(assert (=> b!1363597 (=> (not res!907480) (not e!773314))))

(declare-fun lt!600795 () Bool)

(assert (=> b!1363597 (= res!907480 (and (not (= from!3120 i!1404)) (not lt!600795) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!600797 () Unit!44951)

(assert (=> b!1363597 (= lt!600797 e!773317)))

(declare-fun c!127498 () Bool)

(assert (=> b!1363597 (= c!127498 lt!600795)))

(assert (=> b!1363597 (= lt!600795 (validKeyInArray!0 (select (arr!44756 a!3742) from!3120)))))

(declare-fun b!1363598 () Bool)

(declare-fun res!907479 () Bool)

(assert (=> b!1363598 (=> (not res!907479) (not e!773315))))

(declare-fun noDuplicate!2421 (List!31977) Bool)

(assert (=> b!1363598 (= res!907479 (noDuplicate!2421 acc!759))))

(assert (= (and start!115108 res!907478) b!1363598))

(assert (= (and b!1363598 res!907479) b!1363586))

(assert (= (and b!1363586 res!907484) b!1363589))

(assert (= (and b!1363589 res!907475) b!1363588))

(assert (= (and b!1363588 res!907483) b!1363595))

(assert (= (and b!1363595 res!907476) b!1363593))

(assert (= (and b!1363593 res!907477) b!1363590))

(assert (= (and b!1363590 res!907482) b!1363587))

(assert (= (and b!1363587 res!907481) b!1363597))

(assert (= (and b!1363597 c!127498) b!1363592))

(assert (= (and b!1363597 (not c!127498)) b!1363596))

(assert (= (and b!1363597 res!907480) b!1363594))

(assert (= (and b!1363594 res!907485) b!1363591))

(declare-fun m!1248377 () Bool)

(assert (=> b!1363588 m!1248377))

(declare-fun m!1248379 () Bool)

(assert (=> b!1363595 m!1248379))

(declare-fun m!1248381 () Bool)

(assert (=> start!115108 m!1248381))

(declare-fun m!1248383 () Bool)

(assert (=> b!1363597 m!1248383))

(assert (=> b!1363597 m!1248383))

(declare-fun m!1248385 () Bool)

(assert (=> b!1363597 m!1248385))

(declare-fun m!1248387 () Bool)

(assert (=> b!1363589 m!1248387))

(declare-fun m!1248389 () Bool)

(assert (=> b!1363586 m!1248389))

(declare-fun m!1248391 () Bool)

(assert (=> b!1363598 m!1248391))

(declare-fun m!1248393 () Bool)

(assert (=> b!1363590 m!1248393))

(declare-fun m!1248395 () Bool)

(assert (=> b!1363594 m!1248395))

(declare-fun m!1248397 () Bool)

(assert (=> b!1363592 m!1248397))

(assert (=> b!1363592 m!1248383))

(declare-fun m!1248399 () Bool)

(assert (=> b!1363592 m!1248399))

(declare-fun m!1248401 () Bool)

(assert (=> b!1363592 m!1248401))

(assert (=> b!1363592 m!1248395))

(assert (=> b!1363592 m!1248383))

(assert (=> b!1363592 m!1248399))

(declare-fun m!1248403 () Bool)

(assert (=> b!1363592 m!1248403))

(check-sat (not b!1363590) (not b!1363595) (not b!1363598) (not b!1363586) (not start!115108) (not b!1363597) (not b!1363592) (not b!1363589) (not b!1363588) (not b!1363594))
(check-sat)
