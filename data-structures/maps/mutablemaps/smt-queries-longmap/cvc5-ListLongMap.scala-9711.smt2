; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114914 () Bool)

(assert start!114914)

(declare-fun b!1361654 () Bool)

(declare-fun res!905865 () Bool)

(declare-fun e!772517 () Bool)

(assert (=> b!1361654 (=> (not res!905865) (not e!772517))))

(declare-fun i!1404 () (_ BitVec 32))

(declare-datatypes ((array!92572 0))(
  ( (array!92573 (arr!44716 (Array (_ BitVec 32) (_ BitVec 64))) (size!45267 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92572)

(assert (=> b!1361654 (= res!905865 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45267 a!3742))))))

(declare-fun b!1361655 () Bool)

(declare-fun res!905868 () Bool)

(assert (=> b!1361655 (=> (not res!905868) (not e!772517))))

(declare-datatypes ((List!31937 0))(
  ( (Nil!31934) (Cons!31933 (h!33142 (_ BitVec 64)) (t!46629 List!31937)) )
))
(declare-fun acc!759 () List!31937)

(declare-fun noDuplicate!2381 (List!31937) Bool)

(assert (=> b!1361655 (= res!905868 (noDuplicate!2381 acc!759))))

(declare-fun b!1361656 () Bool)

(declare-fun res!905864 () Bool)

(assert (=> b!1361656 (=> (not res!905864) (not e!772517))))

(declare-fun contains!9502 (List!31937 (_ BitVec 64)) Bool)

(assert (=> b!1361656 (= res!905864 (not (contains!9502 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!905862 () Bool)

(assert (=> start!114914 (=> (not res!905862) (not e!772517))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114914 (= res!905862 (and (bvslt (size!45267 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45267 a!3742))))))

(assert (=> start!114914 e!772517))

(assert (=> start!114914 true))

(declare-fun array_inv!33661 (array!92572) Bool)

(assert (=> start!114914 (array_inv!33661 a!3742)))

(declare-fun b!1361657 () Bool)

(declare-datatypes ((Unit!44831 0))(
  ( (Unit!44832) )
))
(declare-fun e!772515 () Unit!44831)

(declare-fun Unit!44833 () Unit!44831)

(assert (=> b!1361657 (= e!772515 Unit!44833)))

(declare-fun b!1361658 () Bool)

(declare-fun e!772516 () Bool)

(assert (=> b!1361658 (= e!772517 e!772516)))

(declare-fun res!905861 () Bool)

(assert (=> b!1361658 (=> (not res!905861) (not e!772516))))

(declare-fun lt!600202 () Bool)

(assert (=> b!1361658 (= res!905861 (and (not (= from!3120 i!1404)) lt!600202))))

(declare-fun lt!600201 () Unit!44831)

(assert (=> b!1361658 (= lt!600201 e!772515)))

(declare-fun c!127339 () Bool)

(assert (=> b!1361658 (= c!127339 lt!600202)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1361658 (= lt!600202 (validKeyInArray!0 (select (arr!44716 a!3742) from!3120)))))

(declare-fun b!1361659 () Bool)

(declare-fun res!905869 () Bool)

(assert (=> b!1361659 (=> (not res!905869) (not e!772517))))

(assert (=> b!1361659 (= res!905869 (not (contains!9502 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361660 () Bool)

(declare-fun res!905872 () Bool)

(assert (=> b!1361660 (=> (not res!905872) (not e!772517))))

(assert (=> b!1361660 (= res!905872 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45267 a!3742)))))

(declare-fun b!1361661 () Bool)

(declare-fun res!905870 () Bool)

(assert (=> b!1361661 (=> (not res!905870) (not e!772517))))

(declare-fun arrayNoDuplicates!0 (array!92572 (_ BitVec 32) List!31937) Bool)

(assert (=> b!1361661 (= res!905870 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1361662 () Bool)

(declare-fun res!905874 () Bool)

(declare-fun e!772519 () Bool)

(assert (=> b!1361662 (=> (not res!905874) (not e!772519))))

(declare-fun lt!600199 () List!31937)

(assert (=> b!1361662 (= res!905874 (not (contains!9502 lt!600199 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361663 () Bool)

(declare-fun res!905863 () Bool)

(assert (=> b!1361663 (=> (not res!905863) (not e!772517))))

(assert (=> b!1361663 (= res!905863 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31934))))

(declare-fun b!1361664 () Bool)

(declare-fun res!905873 () Bool)

(assert (=> b!1361664 (=> (not res!905873) (not e!772517))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1361664 (= res!905873 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1361665 () Bool)

(declare-fun res!905867 () Bool)

(assert (=> b!1361665 (=> (not res!905867) (not e!772519))))

(assert (=> b!1361665 (= res!905867 (not (contains!9502 lt!600199 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361666 () Bool)

(declare-fun res!905871 () Bool)

(assert (=> b!1361666 (=> (not res!905871) (not e!772519))))

(assert (=> b!1361666 (= res!905871 (noDuplicate!2381 lt!600199))))

(declare-fun b!1361667 () Bool)

(declare-fun lt!600198 () Unit!44831)

(assert (=> b!1361667 (= e!772515 lt!600198)))

(declare-fun lt!600203 () Unit!44831)

(declare-fun lemmaListSubSeqRefl!0 (List!31937) Unit!44831)

(assert (=> b!1361667 (= lt!600203 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!893 (List!31937 List!31937) Bool)

(assert (=> b!1361667 (subseq!893 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92572 List!31937 List!31937 (_ BitVec 32)) Unit!44831)

(declare-fun $colon$colon!898 (List!31937 (_ BitVec 64)) List!31937)

(assert (=> b!1361667 (= lt!600198 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!898 acc!759 (select (arr!44716 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1361667 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1361668 () Bool)

(assert (=> b!1361668 (= e!772516 e!772519)))

(declare-fun res!905866 () Bool)

(assert (=> b!1361668 (=> (not res!905866) (not e!772519))))

(assert (=> b!1361668 (= res!905866 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1361668 (= lt!600199 ($colon$colon!898 acc!759 (select (arr!44716 a!3742) from!3120)))))

(declare-fun b!1361669 () Bool)

(assert (=> b!1361669 (= e!772519 false)))

(declare-fun lt!600200 () Bool)

(assert (=> b!1361669 (= lt!600200 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!600199))))

(assert (= (and start!114914 res!905862) b!1361655))

(assert (= (and b!1361655 res!905868) b!1361656))

(assert (= (and b!1361656 res!905864) b!1361659))

(assert (= (and b!1361659 res!905869) b!1361663))

(assert (= (and b!1361663 res!905863) b!1361661))

(assert (= (and b!1361661 res!905870) b!1361654))

(assert (= (and b!1361654 res!905865) b!1361664))

(assert (= (and b!1361664 res!905873) b!1361660))

(assert (= (and b!1361660 res!905872) b!1361658))

(assert (= (and b!1361658 c!127339) b!1361667))

(assert (= (and b!1361658 (not c!127339)) b!1361657))

(assert (= (and b!1361658 res!905861) b!1361668))

(assert (= (and b!1361668 res!905866) b!1361666))

(assert (= (and b!1361666 res!905871) b!1361662))

(assert (= (and b!1361662 res!905874) b!1361665))

(assert (= (and b!1361665 res!905867) b!1361669))

(declare-fun m!1246753 () Bool)

(assert (=> b!1361664 m!1246753))

(declare-fun m!1246755 () Bool)

(assert (=> b!1361662 m!1246755))

(declare-fun m!1246757 () Bool)

(assert (=> b!1361659 m!1246757))

(declare-fun m!1246759 () Bool)

(assert (=> start!114914 m!1246759))

(declare-fun m!1246761 () Bool)

(assert (=> b!1361661 m!1246761))

(declare-fun m!1246763 () Bool)

(assert (=> b!1361665 m!1246763))

(declare-fun m!1246765 () Bool)

(assert (=> b!1361667 m!1246765))

(declare-fun m!1246767 () Bool)

(assert (=> b!1361667 m!1246767))

(declare-fun m!1246769 () Bool)

(assert (=> b!1361667 m!1246769))

(declare-fun m!1246771 () Bool)

(assert (=> b!1361667 m!1246771))

(declare-fun m!1246773 () Bool)

(assert (=> b!1361667 m!1246773))

(assert (=> b!1361667 m!1246767))

(assert (=> b!1361667 m!1246769))

(declare-fun m!1246775 () Bool)

(assert (=> b!1361667 m!1246775))

(declare-fun m!1246777 () Bool)

(assert (=> b!1361666 m!1246777))

(declare-fun m!1246779 () Bool)

(assert (=> b!1361663 m!1246779))

(assert (=> b!1361668 m!1246767))

(assert (=> b!1361668 m!1246767))

(assert (=> b!1361668 m!1246769))

(declare-fun m!1246781 () Bool)

(assert (=> b!1361669 m!1246781))

(assert (=> b!1361658 m!1246767))

(assert (=> b!1361658 m!1246767))

(declare-fun m!1246783 () Bool)

(assert (=> b!1361658 m!1246783))

(declare-fun m!1246785 () Bool)

(assert (=> b!1361655 m!1246785))

(declare-fun m!1246787 () Bool)

(assert (=> b!1361656 m!1246787))

(push 1)

