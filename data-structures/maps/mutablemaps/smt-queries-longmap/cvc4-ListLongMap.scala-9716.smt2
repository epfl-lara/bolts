; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115008 () Bool)

(assert start!115008)

(declare-fun b!1362637 () Bool)

(declare-fun res!906694 () Bool)

(declare-fun e!772939 () Bool)

(assert (=> b!1362637 (=> (not res!906694) (not e!772939))))

(declare-fun from!3120 () (_ BitVec 32))

(declare-datatypes ((array!92609 0))(
  ( (array!92610 (arr!44733 (Array (_ BitVec 32) (_ BitVec 64))) (size!45284 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92609)

(assert (=> b!1362637 (= res!906694 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45284 a!3742)))))

(declare-fun b!1362638 () Bool)

(declare-fun res!906700 () Bool)

(assert (=> b!1362638 (=> (not res!906700) (not e!772939))))

(declare-datatypes ((List!31954 0))(
  ( (Nil!31951) (Cons!31950 (h!33159 (_ BitVec 64)) (t!46649 List!31954)) )
))
(declare-fun arrayNoDuplicates!0 (array!92609 (_ BitVec 32) List!31954) Bool)

(assert (=> b!1362638 (= res!906700 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31951))))

(declare-fun b!1362639 () Bool)

(declare-fun res!906699 () Bool)

(assert (=> b!1362639 (=> (not res!906699) (not e!772939))))

(declare-fun acc!759 () List!31954)

(declare-fun contains!9519 (List!31954 (_ BitVec 64)) Bool)

(assert (=> b!1362639 (= res!906699 (not (contains!9519 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1362640 () Bool)

(declare-fun res!906701 () Bool)

(assert (=> b!1362640 (=> (not res!906701) (not e!772939))))

(assert (=> b!1362640 (= res!906701 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun lt!600507 () Bool)

(declare-fun b!1362641 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1362641 (= e!772939 (and (not (= from!3120 i!1404)) (not lt!600507) (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!44882 0))(
  ( (Unit!44883) )
))
(declare-fun lt!600506 () Unit!44882)

(declare-fun e!772938 () Unit!44882)

(assert (=> b!1362641 (= lt!600506 e!772938)))

(declare-fun c!127414 () Bool)

(assert (=> b!1362641 (= c!127414 lt!600507)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1362641 (= lt!600507 (validKeyInArray!0 (select (arr!44733 a!3742) from!3120)))))

(declare-fun b!1362642 () Bool)

(declare-fun lt!600509 () Unit!44882)

(assert (=> b!1362642 (= e!772938 lt!600509)))

(declare-fun lt!600508 () Unit!44882)

(declare-fun lemmaListSubSeqRefl!0 (List!31954) Unit!44882)

(assert (=> b!1362642 (= lt!600508 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!910 (List!31954 List!31954) Bool)

(assert (=> b!1362642 (subseq!910 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92609 List!31954 List!31954 (_ BitVec 32)) Unit!44882)

(declare-fun $colon$colon!915 (List!31954 (_ BitVec 64)) List!31954)

(assert (=> b!1362642 (= lt!600509 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!915 acc!759 (select (arr!44733 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1362642 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1362643 () Bool)

(declare-fun res!906702 () Bool)

(assert (=> b!1362643 (=> (not res!906702) (not e!772939))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1362643 (= res!906702 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1362644 () Bool)

(declare-fun res!906696 () Bool)

(assert (=> b!1362644 (=> (not res!906696) (not e!772939))))

(assert (=> b!1362644 (= res!906696 (not (contains!9519 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!906697 () Bool)

(assert (=> start!115008 (=> (not res!906697) (not e!772939))))

(assert (=> start!115008 (= res!906697 (and (bvslt (size!45284 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45284 a!3742))))))

(assert (=> start!115008 e!772939))

(assert (=> start!115008 true))

(declare-fun array_inv!33678 (array!92609) Bool)

(assert (=> start!115008 (array_inv!33678 a!3742)))

(declare-fun b!1362645 () Bool)

(declare-fun res!906695 () Bool)

(assert (=> b!1362645 (=> (not res!906695) (not e!772939))))

(assert (=> b!1362645 (= res!906695 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45284 a!3742))))))

(declare-fun b!1362646 () Bool)

(declare-fun Unit!44884 () Unit!44882)

(assert (=> b!1362646 (= e!772938 Unit!44884)))

(declare-fun b!1362647 () Bool)

(declare-fun res!906698 () Bool)

(assert (=> b!1362647 (=> (not res!906698) (not e!772939))))

(declare-fun noDuplicate!2398 (List!31954) Bool)

(assert (=> b!1362647 (= res!906698 (noDuplicate!2398 acc!759))))

(assert (= (and start!115008 res!906697) b!1362647))

(assert (= (and b!1362647 res!906698) b!1362639))

(assert (= (and b!1362639 res!906699) b!1362644))

(assert (= (and b!1362644 res!906696) b!1362638))

(assert (= (and b!1362638 res!906700) b!1362640))

(assert (= (and b!1362640 res!906701) b!1362645))

(assert (= (and b!1362645 res!906695) b!1362643))

(assert (= (and b!1362643 res!906702) b!1362637))

(assert (= (and b!1362637 res!906694) b!1362641))

(assert (= (and b!1362641 c!127414) b!1362642))

(assert (= (and b!1362641 (not c!127414)) b!1362646))

(declare-fun m!1247607 () Bool)

(assert (=> b!1362638 m!1247607))

(declare-fun m!1247609 () Bool)

(assert (=> b!1362644 m!1247609))

(declare-fun m!1247611 () Bool)

(assert (=> b!1362639 m!1247611))

(declare-fun m!1247613 () Bool)

(assert (=> start!115008 m!1247613))

(declare-fun m!1247615 () Bool)

(assert (=> b!1362643 m!1247615))

(declare-fun m!1247617 () Bool)

(assert (=> b!1362647 m!1247617))

(declare-fun m!1247619 () Bool)

(assert (=> b!1362642 m!1247619))

(declare-fun m!1247621 () Bool)

(assert (=> b!1362642 m!1247621))

(declare-fun m!1247623 () Bool)

(assert (=> b!1362642 m!1247623))

(declare-fun m!1247625 () Bool)

(assert (=> b!1362642 m!1247625))

(declare-fun m!1247627 () Bool)

(assert (=> b!1362642 m!1247627))

(assert (=> b!1362642 m!1247621))

(assert (=> b!1362642 m!1247623))

(declare-fun m!1247629 () Bool)

(assert (=> b!1362642 m!1247629))

(declare-fun m!1247631 () Bool)

(assert (=> b!1362640 m!1247631))

(assert (=> b!1362641 m!1247621))

(assert (=> b!1362641 m!1247621))

(declare-fun m!1247633 () Bool)

(assert (=> b!1362641 m!1247633))

(push 1)

(assert (not b!1362639))

(assert (not b!1362642))

(assert (not b!1362641))

(assert (not b!1362643))

(assert (not b!1362647))

