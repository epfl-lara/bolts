; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114172 () Bool)

(assert start!114172)

(declare-fun b!1355553 () Bool)

(declare-fun res!900573 () Bool)

(declare-fun e!769791 () Bool)

(assert (=> b!1355553 (=> (not res!900573) (not e!769791))))

(declare-datatypes ((List!31803 0))(
  ( (Nil!31800) (Cons!31799 (h!33008 (_ BitVec 64)) (t!46468 List!31803)) )
))
(declare-fun acc!759 () List!31803)

(declare-fun contains!9368 (List!31803 (_ BitVec 64)) Bool)

(assert (=> b!1355553 (= res!900573 (not (contains!9368 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!900569 () Bool)

(assert (=> start!114172 (=> (not res!900569) (not e!769791))))

(declare-datatypes ((array!92277 0))(
  ( (array!92278 (arr!44582 (Array (_ BitVec 32) (_ BitVec 64))) (size!45133 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92277)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114172 (= res!900569 (and (bvslt (size!45133 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45133 a!3742))))))

(assert (=> start!114172 e!769791))

(assert (=> start!114172 true))

(declare-fun array_inv!33527 (array!92277) Bool)

(assert (=> start!114172 (array_inv!33527 a!3742)))

(declare-fun b!1355554 () Bool)

(declare-fun res!900567 () Bool)

(assert (=> b!1355554 (=> (not res!900567) (not e!769791))))

(declare-fun arrayNoDuplicates!0 (array!92277 (_ BitVec 32) List!31803) Bool)

(assert (=> b!1355554 (= res!900567 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1355555 () Bool)

(declare-fun res!900566 () Bool)

(assert (=> b!1355555 (=> (not res!900566) (not e!769791))))

(assert (=> b!1355555 (= res!900566 (not (contains!9368 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1355556 () Bool)

(declare-fun res!900572 () Bool)

(assert (=> b!1355556 (=> (not res!900572) (not e!769791))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1355556 (= res!900572 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1355557 () Bool)

(declare-fun res!900568 () Bool)

(assert (=> b!1355557 (=> (not res!900568) (not e!769791))))

(assert (=> b!1355557 (= res!900568 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45133 a!3742)))))

(declare-fun b!1355558 () Bool)

(declare-datatypes ((Unit!44510 0))(
  ( (Unit!44511) )
))
(declare-fun e!769789 () Unit!44510)

(declare-fun lt!598655 () Unit!44510)

(assert (=> b!1355558 (= e!769789 lt!598655)))

(declare-fun lt!598652 () Unit!44510)

(declare-fun lemmaListSubSeqRefl!0 (List!31803) Unit!44510)

(assert (=> b!1355558 (= lt!598652 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!777 (List!31803 List!31803) Bool)

(assert (=> b!1355558 (subseq!777 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92277 List!31803 List!31803 (_ BitVec 32)) Unit!44510)

(declare-fun $colon$colon!794 (List!31803 (_ BitVec 64)) List!31803)

(assert (=> b!1355558 (= lt!598655 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!794 acc!759 (select (arr!44582 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1355558 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1355559 () Bool)

(declare-fun res!900570 () Bool)

(assert (=> b!1355559 (=> (not res!900570) (not e!769791))))

(declare-fun noDuplicate!2247 (List!31803) Bool)

(assert (=> b!1355559 (= res!900570 (noDuplicate!2247 acc!759))))

(declare-fun b!1355560 () Bool)

(declare-fun res!900564 () Bool)

(assert (=> b!1355560 (=> (not res!900564) (not e!769791))))

(assert (=> b!1355560 (= res!900564 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31800))))

(declare-fun b!1355561 () Bool)

(declare-fun e!769792 () Bool)

(assert (=> b!1355561 (= e!769791 e!769792)))

(declare-fun res!900565 () Bool)

(assert (=> b!1355561 (=> (not res!900565) (not e!769792))))

(declare-fun lt!598654 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1355561 (= res!900565 (and (not (= from!3120 i!1404)) (not lt!598654) (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-fun lt!598653 () Unit!44510)

(assert (=> b!1355561 (= lt!598653 e!769789)))

(declare-fun c!126937 () Bool)

(assert (=> b!1355561 (= c!126937 lt!598654)))

(assert (=> b!1355561 (= lt!598654 (validKeyInArray!0 (select (arr!44582 a!3742) from!3120)))))

(declare-fun b!1355562 () Bool)

(assert (=> b!1355562 (= e!769792 false)))

(declare-fun lt!598651 () Bool)

(assert (=> b!1355562 (= lt!598651 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759))))

(declare-fun b!1355563 () Bool)

(declare-fun Unit!44512 () Unit!44510)

(assert (=> b!1355563 (= e!769789 Unit!44512)))

(declare-fun b!1355564 () Bool)

(declare-fun res!900571 () Bool)

(assert (=> b!1355564 (=> (not res!900571) (not e!769791))))

(assert (=> b!1355564 (= res!900571 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45133 a!3742))))))

(assert (= (and start!114172 res!900569) b!1355559))

(assert (= (and b!1355559 res!900570) b!1355553))

(assert (= (and b!1355553 res!900573) b!1355555))

(assert (= (and b!1355555 res!900566) b!1355560))

(assert (= (and b!1355560 res!900564) b!1355554))

(assert (= (and b!1355554 res!900567) b!1355564))

(assert (= (and b!1355564 res!900571) b!1355556))

(assert (= (and b!1355556 res!900572) b!1355557))

(assert (= (and b!1355557 res!900568) b!1355561))

(assert (= (and b!1355561 c!126937) b!1355558))

(assert (= (and b!1355561 (not c!126937)) b!1355563))

(assert (= (and b!1355561 res!900565) b!1355562))

(declare-fun m!1241729 () Bool)

(assert (=> b!1355556 m!1241729))

(declare-fun m!1241731 () Bool)

(assert (=> b!1355554 m!1241731))

(declare-fun m!1241733 () Bool)

(assert (=> b!1355561 m!1241733))

(assert (=> b!1355561 m!1241733))

(declare-fun m!1241735 () Bool)

(assert (=> b!1355561 m!1241735))

(declare-fun m!1241737 () Bool)

(assert (=> b!1355558 m!1241737))

(assert (=> b!1355558 m!1241733))

(declare-fun m!1241739 () Bool)

(assert (=> b!1355558 m!1241739))

(declare-fun m!1241741 () Bool)

(assert (=> b!1355558 m!1241741))

(declare-fun m!1241743 () Bool)

(assert (=> b!1355558 m!1241743))

(assert (=> b!1355558 m!1241733))

(assert (=> b!1355558 m!1241739))

(declare-fun m!1241745 () Bool)

(assert (=> b!1355558 m!1241745))

(declare-fun m!1241747 () Bool)

(assert (=> b!1355559 m!1241747))

(declare-fun m!1241749 () Bool)

(assert (=> b!1355553 m!1241749))

(declare-fun m!1241751 () Bool)

(assert (=> b!1355555 m!1241751))

(declare-fun m!1241753 () Bool)

(assert (=> start!114172 m!1241753))

(assert (=> b!1355562 m!1241743))

(declare-fun m!1241755 () Bool)

(assert (=> b!1355560 m!1241755))

(check-sat (not start!114172) (not b!1355561) (not b!1355555) (not b!1355556) (not b!1355558) (not b!1355554) (not b!1355553) (not b!1355559) (not b!1355560) (not b!1355562))
(check-sat)
