; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113980 () Bool)

(assert start!113980)

(declare-fun b!1351545 () Bool)

(declare-fun res!897135 () Bool)

(declare-fun e!768525 () Bool)

(assert (=> b!1351545 (=> (not res!897135) (not e!768525))))

(declare-datatypes ((List!31707 0))(
  ( (Nil!31704) (Cons!31703 (h!32912 (_ BitVec 64)) (t!46372 List!31707)) )
))
(declare-fun acc!759 () List!31707)

(declare-fun contains!9272 (List!31707 (_ BitVec 64)) Bool)

(assert (=> b!1351545 (= res!897135 (not (contains!9272 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351546 () Bool)

(declare-fun res!897130 () Bool)

(declare-fun e!768524 () Bool)

(assert (=> b!1351546 (=> res!897130 e!768524)))

(declare-fun lt!597217 () List!31707)

(assert (=> b!1351546 (= res!897130 (contains!9272 lt!597217 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351547 () Bool)

(declare-fun res!897134 () Bool)

(assert (=> b!1351547 (=> (not res!897134) (not e!768525))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1351547 (= res!897134 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1351548 () Bool)

(declare-fun res!897133 () Bool)

(assert (=> b!1351548 (=> res!897133 e!768524)))

(assert (=> b!1351548 (= res!897133 (contains!9272 lt!597217 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1351550 () Bool)

(declare-fun res!897127 () Bool)

(assert (=> b!1351550 (=> (not res!897127) (not e!768525))))

(assert (=> b!1351550 (= res!897127 (not (contains!9272 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1351551 () Bool)

(declare-fun res!897129 () Bool)

(assert (=> b!1351551 (=> (not res!897129) (not e!768525))))

(declare-datatypes ((array!92085 0))(
  ( (array!92086 (arr!44486 (Array (_ BitVec 32) (_ BitVec 64))) (size!45037 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92085)

(declare-fun arrayNoDuplicates!0 (array!92085 (_ BitVec 32) List!31707) Bool)

(assert (=> b!1351551 (= res!897129 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31704))))

(declare-fun b!1351552 () Bool)

(declare-fun res!897138 () Bool)

(assert (=> b!1351552 (=> (not res!897138) (not e!768525))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1351552 (= res!897138 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45037 a!3742))))))

(declare-fun b!1351553 () Bool)

(assert (=> b!1351553 (= e!768525 (not e!768524))))

(declare-fun res!897128 () Bool)

(assert (=> b!1351553 (=> res!897128 e!768524)))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> b!1351553 (= res!897128 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!698 (List!31707 (_ BitVec 64)) List!31707)

(assert (=> b!1351553 (= lt!597217 ($colon$colon!698 acc!759 (select (arr!44486 a!3742) from!3120)))))

(declare-fun subseq!681 (List!31707 List!31707) Bool)

(assert (=> b!1351553 (subseq!681 acc!759 acc!759)))

(declare-datatypes ((Unit!44224 0))(
  ( (Unit!44225) )
))
(declare-fun lt!597218 () Unit!44224)

(declare-fun lemmaListSubSeqRefl!0 (List!31707) Unit!44224)

(assert (=> b!1351553 (= lt!597218 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1351554 () Bool)

(declare-fun res!897124 () Bool)

(assert (=> b!1351554 (=> res!897124 e!768524)))

(declare-fun noDuplicate!2151 (List!31707) Bool)

(assert (=> b!1351554 (= res!897124 (not (noDuplicate!2151 lt!597217)))))

(declare-fun b!1351555 () Bool)

(declare-fun res!897137 () Bool)

(assert (=> b!1351555 (=> (not res!897137) (not e!768525))))

(assert (=> b!1351555 (= res!897137 (noDuplicate!2151 acc!759))))

(declare-fun b!1351556 () Bool)

(declare-fun res!897132 () Bool)

(assert (=> b!1351556 (=> (not res!897132) (not e!768525))))

(assert (=> b!1351556 (= res!897132 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1351557 () Bool)

(assert (=> b!1351557 (= e!768524 true)))

(declare-fun lt!597215 () Bool)

(assert (=> b!1351557 (= lt!597215 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!597217))))

(declare-fun lt!597216 () Unit!44224)

(declare-fun noDuplicateSubseq!132 (List!31707 List!31707) Unit!44224)

(assert (=> b!1351557 (= lt!597216 (noDuplicateSubseq!132 acc!759 lt!597217))))

(declare-fun b!1351558 () Bool)

(declare-fun res!897126 () Bool)

(assert (=> b!1351558 (=> res!897126 e!768524)))

(assert (=> b!1351558 (= res!897126 (not (subseq!681 acc!759 lt!597217)))))

(declare-fun b!1351559 () Bool)

(declare-fun res!897125 () Bool)

(assert (=> b!1351559 (=> (not res!897125) (not e!768525))))

(assert (=> b!1351559 (= res!897125 (validKeyInArray!0 (select (arr!44486 a!3742) from!3120)))))

(declare-fun b!1351549 () Bool)

(declare-fun res!897136 () Bool)

(assert (=> b!1351549 (=> (not res!897136) (not e!768525))))

(assert (=> b!1351549 (= res!897136 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45037 a!3742)))))

(declare-fun res!897131 () Bool)

(assert (=> start!113980 (=> (not res!897131) (not e!768525))))

(assert (=> start!113980 (= res!897131 (and (bvslt (size!45037 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45037 a!3742))))))

(assert (=> start!113980 e!768525))

(assert (=> start!113980 true))

(declare-fun array_inv!33431 (array!92085) Bool)

(assert (=> start!113980 (array_inv!33431 a!3742)))

(assert (= (and start!113980 res!897131) b!1351555))

(assert (= (and b!1351555 res!897137) b!1351550))

(assert (= (and b!1351550 res!897127) b!1351545))

(assert (= (and b!1351545 res!897135) b!1351551))

(assert (= (and b!1351551 res!897129) b!1351556))

(assert (= (and b!1351556 res!897132) b!1351552))

(assert (= (and b!1351552 res!897138) b!1351547))

(assert (= (and b!1351547 res!897134) b!1351549))

(assert (= (and b!1351549 res!897136) b!1351559))

(assert (= (and b!1351559 res!897125) b!1351553))

(assert (= (and b!1351553 (not res!897128)) b!1351554))

(assert (= (and b!1351554 (not res!897124)) b!1351548))

(assert (= (and b!1351548 (not res!897133)) b!1351546))

(assert (= (and b!1351546 (not res!897130)) b!1351558))

(assert (= (and b!1351558 (not res!897126)) b!1351557))

(declare-fun m!1238569 () Bool)

(assert (=> b!1351559 m!1238569))

(assert (=> b!1351559 m!1238569))

(declare-fun m!1238571 () Bool)

(assert (=> b!1351559 m!1238571))

(declare-fun m!1238573 () Bool)

(assert (=> b!1351551 m!1238573))

(declare-fun m!1238575 () Bool)

(assert (=> b!1351557 m!1238575))

(declare-fun m!1238577 () Bool)

(assert (=> b!1351557 m!1238577))

(declare-fun m!1238579 () Bool)

(assert (=> b!1351547 m!1238579))

(declare-fun m!1238581 () Bool)

(assert (=> b!1351554 m!1238581))

(declare-fun m!1238583 () Bool)

(assert (=> b!1351546 m!1238583))

(declare-fun m!1238585 () Bool)

(assert (=> b!1351555 m!1238585))

(declare-fun m!1238587 () Bool)

(assert (=> b!1351548 m!1238587))

(declare-fun m!1238589 () Bool)

(assert (=> b!1351556 m!1238589))

(declare-fun m!1238591 () Bool)

(assert (=> b!1351550 m!1238591))

(declare-fun m!1238593 () Bool)

(assert (=> start!113980 m!1238593))

(declare-fun m!1238595 () Bool)

(assert (=> b!1351545 m!1238595))

(declare-fun m!1238597 () Bool)

(assert (=> b!1351558 m!1238597))

(assert (=> b!1351553 m!1238569))

(assert (=> b!1351553 m!1238569))

(declare-fun m!1238599 () Bool)

(assert (=> b!1351553 m!1238599))

(declare-fun m!1238601 () Bool)

(assert (=> b!1351553 m!1238601))

(declare-fun m!1238603 () Bool)

(assert (=> b!1351553 m!1238603))

(check-sat (not start!113980) (not b!1351547) (not b!1351551) (not b!1351554) (not b!1351557) (not b!1351548) (not b!1351545) (not b!1351553) (not b!1351556) (not b!1351550) (not b!1351555) (not b!1351546) (not b!1351558) (not b!1351559))
(check-sat)
