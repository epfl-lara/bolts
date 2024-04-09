; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114908 () Bool)

(assert start!114908)

(declare-fun res!905744 () Bool)

(declare-fun e!772471 () Bool)

(assert (=> start!114908 (=> (not res!905744) (not e!772471))))

(declare-datatypes ((array!92566 0))(
  ( (array!92567 (arr!44713 (Array (_ BitVec 32) (_ BitVec 64))) (size!45264 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92566)

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114908 (= res!905744 (and (bvslt (size!45264 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45264 a!3742))))))

(assert (=> start!114908 e!772471))

(assert (=> start!114908 true))

(declare-fun array_inv!33658 (array!92566) Bool)

(assert (=> start!114908 (array_inv!33658 a!3742)))

(declare-fun b!1361510 () Bool)

(declare-fun res!905743 () Bool)

(assert (=> b!1361510 (=> (not res!905743) (not e!772471))))

(assert (=> b!1361510 (= res!905743 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45264 a!3742)))))

(declare-fun b!1361511 () Bool)

(declare-fun e!772473 () Bool)

(assert (=> b!1361511 (= e!772473 false)))

(declare-datatypes ((List!31934 0))(
  ( (Nil!31931) (Cons!31930 (h!33139 (_ BitVec 64)) (t!46626 List!31934)) )
))
(declare-fun lt!600145 () List!31934)

(declare-fun lt!600146 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92566 (_ BitVec 32) List!31934) Bool)

(assert (=> b!1361511 (= lt!600146 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!600145))))

(declare-fun b!1361512 () Bool)

(declare-fun e!772470 () Bool)

(assert (=> b!1361512 (= e!772471 e!772470)))

(declare-fun res!905736 () Bool)

(assert (=> b!1361512 (=> (not res!905736) (not e!772470))))

(declare-fun lt!600149 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1361512 (= res!905736 (and (not (= from!3120 i!1404)) lt!600149))))

(declare-datatypes ((Unit!44822 0))(
  ( (Unit!44823) )
))
(declare-fun lt!600148 () Unit!44822)

(declare-fun e!772472 () Unit!44822)

(assert (=> b!1361512 (= lt!600148 e!772472)))

(declare-fun c!127330 () Bool)

(assert (=> b!1361512 (= c!127330 lt!600149)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1361512 (= lt!600149 (validKeyInArray!0 (select (arr!44713 a!3742) from!3120)))))

(declare-fun b!1361513 () Bool)

(declare-fun res!905738 () Bool)

(assert (=> b!1361513 (=> (not res!905738) (not e!772471))))

(declare-fun acc!759 () List!31934)

(declare-fun noDuplicate!2378 (List!31934) Bool)

(assert (=> b!1361513 (= res!905738 (noDuplicate!2378 acc!759))))

(declare-fun b!1361514 () Bool)

(declare-fun res!905742 () Bool)

(assert (=> b!1361514 (=> (not res!905742) (not e!772471))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1361514 (= res!905742 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1361515 () Bool)

(declare-fun lt!600144 () Unit!44822)

(assert (=> b!1361515 (= e!772472 lt!600144)))

(declare-fun lt!600147 () Unit!44822)

(declare-fun lemmaListSubSeqRefl!0 (List!31934) Unit!44822)

(assert (=> b!1361515 (= lt!600147 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!890 (List!31934 List!31934) Bool)

(assert (=> b!1361515 (subseq!890 acc!759 acc!759)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92566 List!31934 List!31934 (_ BitVec 32)) Unit!44822)

(declare-fun $colon$colon!895 (List!31934 (_ BitVec 64)) List!31934)

(assert (=> b!1361515 (= lt!600144 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!895 acc!759 (select (arr!44713 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(assert (=> b!1361515 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun b!1361516 () Bool)

(declare-fun Unit!44824 () Unit!44822)

(assert (=> b!1361516 (= e!772472 Unit!44824)))

(declare-fun b!1361517 () Bool)

(declare-fun res!905745 () Bool)

(assert (=> b!1361517 (=> (not res!905745) (not e!772471))))

(declare-fun contains!9499 (List!31934 (_ BitVec 64)) Bool)

(assert (=> b!1361517 (= res!905745 (not (contains!9499 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361518 () Bool)

(declare-fun res!905739 () Bool)

(assert (=> b!1361518 (=> (not res!905739) (not e!772471))))

(assert (=> b!1361518 (= res!905739 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1361519 () Bool)

(declare-fun res!905747 () Bool)

(assert (=> b!1361519 (=> (not res!905747) (not e!772471))))

(assert (=> b!1361519 (= res!905747 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45264 a!3742))))))

(declare-fun b!1361520 () Bool)

(assert (=> b!1361520 (= e!772470 e!772473)))

(declare-fun res!905748 () Bool)

(assert (=> b!1361520 (=> (not res!905748) (not e!772473))))

(assert (=> b!1361520 (= res!905748 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1361520 (= lt!600145 ($colon$colon!895 acc!759 (select (arr!44713 a!3742) from!3120)))))

(declare-fun b!1361521 () Bool)

(declare-fun res!905740 () Bool)

(assert (=> b!1361521 (=> (not res!905740) (not e!772471))))

(assert (=> b!1361521 (= res!905740 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31931))))

(declare-fun b!1361522 () Bool)

(declare-fun res!905735 () Bool)

(assert (=> b!1361522 (=> (not res!905735) (not e!772473))))

(assert (=> b!1361522 (= res!905735 (not (contains!9499 lt!600145 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361523 () Bool)

(declare-fun res!905737 () Bool)

(assert (=> b!1361523 (=> (not res!905737) (not e!772473))))

(assert (=> b!1361523 (= res!905737 (noDuplicate!2378 lt!600145))))

(declare-fun b!1361524 () Bool)

(declare-fun res!905746 () Bool)

(assert (=> b!1361524 (=> (not res!905746) (not e!772473))))

(assert (=> b!1361524 (= res!905746 (not (contains!9499 lt!600145 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361525 () Bool)

(declare-fun res!905741 () Bool)

(assert (=> b!1361525 (=> (not res!905741) (not e!772471))))

(assert (=> b!1361525 (= res!905741 (not (contains!9499 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!114908 res!905744) b!1361513))

(assert (= (and b!1361513 res!905738) b!1361517))

(assert (= (and b!1361517 res!905745) b!1361525))

(assert (= (and b!1361525 res!905741) b!1361521))

(assert (= (and b!1361521 res!905740) b!1361518))

(assert (= (and b!1361518 res!905739) b!1361519))

(assert (= (and b!1361519 res!905747) b!1361514))

(assert (= (and b!1361514 res!905742) b!1361510))

(assert (= (and b!1361510 res!905743) b!1361512))

(assert (= (and b!1361512 c!127330) b!1361515))

(assert (= (and b!1361512 (not c!127330)) b!1361516))

(assert (= (and b!1361512 res!905736) b!1361520))

(assert (= (and b!1361520 res!905748) b!1361523))

(assert (= (and b!1361523 res!905737) b!1361524))

(assert (= (and b!1361524 res!905746) b!1361522))

(assert (= (and b!1361522 res!905735) b!1361511))

(declare-fun m!1246645 () Bool)

(assert (=> b!1361524 m!1246645))

(declare-fun m!1246647 () Bool)

(assert (=> start!114908 m!1246647))

(declare-fun m!1246649 () Bool)

(assert (=> b!1361511 m!1246649))

(declare-fun m!1246651 () Bool)

(assert (=> b!1361525 m!1246651))

(declare-fun m!1246653 () Bool)

(assert (=> b!1361515 m!1246653))

(declare-fun m!1246655 () Bool)

(assert (=> b!1361515 m!1246655))

(declare-fun m!1246657 () Bool)

(assert (=> b!1361515 m!1246657))

(declare-fun m!1246659 () Bool)

(assert (=> b!1361515 m!1246659))

(declare-fun m!1246661 () Bool)

(assert (=> b!1361515 m!1246661))

(assert (=> b!1361515 m!1246655))

(assert (=> b!1361515 m!1246657))

(declare-fun m!1246663 () Bool)

(assert (=> b!1361515 m!1246663))

(assert (=> b!1361520 m!1246655))

(assert (=> b!1361520 m!1246655))

(assert (=> b!1361520 m!1246657))

(declare-fun m!1246665 () Bool)

(assert (=> b!1361518 m!1246665))

(declare-fun m!1246667 () Bool)

(assert (=> b!1361513 m!1246667))

(declare-fun m!1246669 () Bool)

(assert (=> b!1361522 m!1246669))

(assert (=> b!1361512 m!1246655))

(assert (=> b!1361512 m!1246655))

(declare-fun m!1246671 () Bool)

(assert (=> b!1361512 m!1246671))

(declare-fun m!1246673 () Bool)

(assert (=> b!1361514 m!1246673))

(declare-fun m!1246675 () Bool)

(assert (=> b!1361517 m!1246675))

(declare-fun m!1246677 () Bool)

(assert (=> b!1361523 m!1246677))

(declare-fun m!1246679 () Bool)

(assert (=> b!1361521 m!1246679))

(push 1)

