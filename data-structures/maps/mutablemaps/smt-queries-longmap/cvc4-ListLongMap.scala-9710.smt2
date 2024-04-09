; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114912 () Bool)

(assert start!114912)

(declare-fun b!1361606 () Bool)

(declare-fun res!905828 () Bool)

(declare-fun e!772502 () Bool)

(assert (=> b!1361606 (=> (not res!905828) (not e!772502))))

(declare-datatypes ((List!31936 0))(
  ( (Nil!31933) (Cons!31932 (h!33141 (_ BitVec 64)) (t!46628 List!31936)) )
))
(declare-fun acc!759 () List!31936)

(declare-fun noDuplicate!2380 (List!31936) Bool)

(assert (=> b!1361606 (= res!905828 (noDuplicate!2380 acc!759))))

(declare-fun b!1361607 () Bool)

(declare-fun res!905830 () Bool)

(declare-fun e!772504 () Bool)

(assert (=> b!1361607 (=> (not res!905830) (not e!772504))))

(declare-fun lt!600185 () List!31936)

(declare-fun contains!9501 (List!31936 (_ BitVec 64)) Bool)

(assert (=> b!1361607 (= res!905830 (not (contains!9501 lt!600185 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361608 () Bool)

(declare-fun res!905822 () Bool)

(assert (=> b!1361608 (=> (not res!905822) (not e!772502))))

(assert (=> b!1361608 (= res!905822 (not (contains!9501 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!905831 () Bool)

(assert (=> start!114912 (=> (not res!905831) (not e!772502))))

(declare-datatypes ((array!92570 0))(
  ( (array!92571 (arr!44715 (Array (_ BitVec 32) (_ BitVec 64))) (size!45266 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92570)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114912 (= res!905831 (and (bvslt (size!45266 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45266 a!3742))))))

(assert (=> start!114912 e!772502))

(assert (=> start!114912 true))

(declare-fun array_inv!33660 (array!92570) Bool)

(assert (=> start!114912 (array_inv!33660 a!3742)))

(declare-fun b!1361609 () Bool)

(declare-fun res!905821 () Bool)

(assert (=> b!1361609 (=> (not res!905821) (not e!772502))))

(declare-fun arrayNoDuplicates!0 (array!92570 (_ BitVec 32) List!31936) Bool)

(assert (=> b!1361609 (= res!905821 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31933))))

(declare-fun b!1361610 () Bool)

(declare-fun res!905824 () Bool)

(assert (=> b!1361610 (=> (not res!905824) (not e!772502))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1361610 (= res!905824 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45266 a!3742))))))

(declare-fun b!1361611 () Bool)

(declare-fun e!772501 () Bool)

(assert (=> b!1361611 (= e!772501 e!772504)))

(declare-fun res!905827 () Bool)

(assert (=> b!1361611 (=> (not res!905827) (not e!772504))))

(assert (=> b!1361611 (= res!905827 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!897 (List!31936 (_ BitVec 64)) List!31936)

(assert (=> b!1361611 (= lt!600185 ($colon$colon!897 acc!759 (select (arr!44715 a!3742) from!3120)))))

(declare-fun b!1361612 () Bool)

(declare-fun res!905823 () Bool)

(assert (=> b!1361612 (=> (not res!905823) (not e!772502))))

(assert (=> b!1361612 (= res!905823 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45266 a!3742)))))

(declare-fun b!1361613 () Bool)

(declare-datatypes ((Unit!44828 0))(
  ( (Unit!44829) )
))
(declare-fun e!772500 () Unit!44828)

(declare-fun Unit!44830 () Unit!44828)

(assert (=> b!1361613 (= e!772500 Unit!44830)))

(declare-fun b!1361614 () Bool)

(declare-fun lt!600184 () Unit!44828)

(assert (=> b!1361614 (= e!772500 lt!600184)))

(declare-fun lt!600180 () Unit!44828)

(declare-fun lemmaListSubSeqRefl!0 (List!31936) Unit!44828)

(assert (=> b!1361614 (= lt!600180 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!892 (List!31936 List!31936) Bool)

(assert (=> b!1361614 (subseq!892 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92570 List!31936 List!31936 (_ BitVec 32)) Unit!44828)

(assert (=> b!1361614 (= lt!600184 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!897 acc!759 (select (arr!44715 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1361614 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1361615 () Bool)

(assert (=> b!1361615 (= e!772504 false)))

(declare-fun lt!600182 () Bool)

(assert (=> b!1361615 (= lt!600182 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!600185))))

(declare-fun b!1361616 () Bool)

(declare-fun res!905820 () Bool)

(assert (=> b!1361616 (=> (not res!905820) (not e!772504))))

(assert (=> b!1361616 (= res!905820 (not (contains!9501 lt!600185 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361617 () Bool)

(declare-fun res!905825 () Bool)

(assert (=> b!1361617 (=> (not res!905825) (not e!772504))))

(assert (=> b!1361617 (= res!905825 (noDuplicate!2380 lt!600185))))

(declare-fun b!1361618 () Bool)

(declare-fun res!905832 () Bool)

(assert (=> b!1361618 (=> (not res!905832) (not e!772502))))

(assert (=> b!1361618 (= res!905832 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1361619 () Bool)

(declare-fun res!905826 () Bool)

(assert (=> b!1361619 (=> (not res!905826) (not e!772502))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1361619 (= res!905826 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1361620 () Bool)

(declare-fun res!905829 () Bool)

(assert (=> b!1361620 (=> (not res!905829) (not e!772502))))

(assert (=> b!1361620 (= res!905829 (not (contains!9501 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361621 () Bool)

(assert (=> b!1361621 (= e!772502 e!772501)))

(declare-fun res!905819 () Bool)

(assert (=> b!1361621 (=> (not res!905819) (not e!772501))))

(declare-fun lt!600181 () Bool)

(assert (=> b!1361621 (= res!905819 (and (not (= from!3120 i!1404)) lt!600181))))

(declare-fun lt!600183 () Unit!44828)

(assert (=> b!1361621 (= lt!600183 e!772500)))

(declare-fun c!127336 () Bool)

(assert (=> b!1361621 (= c!127336 lt!600181)))

(assert (=> b!1361621 (= lt!600181 (validKeyInArray!0 (select (arr!44715 a!3742) from!3120)))))

(assert (= (and start!114912 res!905831) b!1361606))

(assert (= (and b!1361606 res!905828) b!1361608))

(assert (= (and b!1361608 res!905822) b!1361620))

(assert (= (and b!1361620 res!905829) b!1361609))

(assert (= (and b!1361609 res!905821) b!1361618))

(assert (= (and b!1361618 res!905832) b!1361610))

(assert (= (and b!1361610 res!905824) b!1361619))

(assert (= (and b!1361619 res!905826) b!1361612))

(assert (= (and b!1361612 res!905823) b!1361621))

(assert (= (and b!1361621 c!127336) b!1361614))

(assert (= (and b!1361621 (not c!127336)) b!1361613))

(assert (= (and b!1361621 res!905819) b!1361611))

(assert (= (and b!1361611 res!905827) b!1361617))

(assert (= (and b!1361617 res!905825) b!1361607))

(assert (= (and b!1361607 res!905830) b!1361616))

(assert (= (and b!1361616 res!905820) b!1361615))

(declare-fun m!1246717 () Bool)

(assert (=> b!1361607 m!1246717))

(declare-fun m!1246719 () Bool)

(assert (=> b!1361621 m!1246719))

(assert (=> b!1361621 m!1246719))

(declare-fun m!1246721 () Bool)

(assert (=> b!1361621 m!1246721))

(declare-fun m!1246723 () Bool)

(assert (=> b!1361617 m!1246723))

(declare-fun m!1246725 () Bool)

(assert (=> b!1361619 m!1246725))

(declare-fun m!1246727 () Bool)

(assert (=> b!1361614 m!1246727))

(assert (=> b!1361614 m!1246719))

(declare-fun m!1246729 () Bool)

(assert (=> b!1361614 m!1246729))

(declare-fun m!1246731 () Bool)

(assert (=> b!1361614 m!1246731))

(declare-fun m!1246733 () Bool)

(assert (=> b!1361614 m!1246733))

(assert (=> b!1361614 m!1246719))

(assert (=> b!1361614 m!1246729))

(declare-fun m!1246735 () Bool)

(assert (=> b!1361614 m!1246735))

(declare-fun m!1246737 () Bool)

(assert (=> b!1361606 m!1246737))

(declare-fun m!1246739 () Bool)

(assert (=> b!1361616 m!1246739))

(assert (=> b!1361611 m!1246719))

(assert (=> b!1361611 m!1246719))

(assert (=> b!1361611 m!1246729))

(declare-fun m!1246741 () Bool)

(assert (=> b!1361608 m!1246741))

(declare-fun m!1246743 () Bool)

(assert (=> b!1361609 m!1246743))

(declare-fun m!1246745 () Bool)

(assert (=> b!1361618 m!1246745))

(declare-fun m!1246747 () Bool)

(assert (=> b!1361615 m!1246747))

(declare-fun m!1246749 () Bool)

(assert (=> b!1361620 m!1246749))

(declare-fun m!1246751 () Bool)

(assert (=> start!114912 m!1246751))

(push 1)

