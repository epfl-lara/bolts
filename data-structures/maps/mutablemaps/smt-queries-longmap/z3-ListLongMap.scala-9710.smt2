; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114910 () Bool)

(assert start!114910)

(declare-fun b!1361558 () Bool)

(declare-fun res!905789 () Bool)

(declare-fun e!772486 () Bool)

(assert (=> b!1361558 (=> (not res!905789) (not e!772486))))

(declare-datatypes ((List!31935 0))(
  ( (Nil!31932) (Cons!31931 (h!33140 (_ BitVec 64)) (t!46627 List!31935)) )
))
(declare-fun lt!600166 () List!31935)

(declare-fun noDuplicate!2379 (List!31935) Bool)

(assert (=> b!1361558 (= res!905789 (noDuplicate!2379 lt!600166))))

(declare-fun b!1361559 () Bool)

(declare-fun res!905786 () Bool)

(declare-fun e!772485 () Bool)

(assert (=> b!1361559 (=> (not res!905786) (not e!772485))))

(declare-fun acc!759 () List!31935)

(assert (=> b!1361559 (= res!905786 (noDuplicate!2379 acc!759))))

(declare-fun b!1361560 () Bool)

(declare-datatypes ((Unit!44825 0))(
  ( (Unit!44826) )
))
(declare-fun e!772489 () Unit!44825)

(declare-fun lt!600165 () Unit!44825)

(assert (=> b!1361560 (= e!772489 lt!600165)))

(declare-fun lt!600163 () Unit!44825)

(declare-fun lemmaListSubSeqRefl!0 (List!31935) Unit!44825)

(assert (=> b!1361560 (= lt!600163 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun subseq!891 (List!31935 List!31935) Bool)

(assert (=> b!1361560 (subseq!891 acc!759 acc!759)))

(declare-datatypes ((array!92568 0))(
  ( (array!92569 (arr!44714 (Array (_ BitVec 32) (_ BitVec 64))) (size!45265 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92568)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92568 List!31935 List!31935 (_ BitVec 32)) Unit!44825)

(declare-fun $colon$colon!896 (List!31935 (_ BitVec 64)) List!31935)

(assert (=> b!1361560 (= lt!600165 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3742 ($colon$colon!896 acc!759 (select (arr!44714 a!3742) from!3120)) acc!759 (bvadd #b00000000000000000000000000000001 from!3120)))))

(declare-fun arrayNoDuplicates!0 (array!92568 (_ BitVec 32) List!31935) Bool)

(assert (=> b!1361560 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) acc!759)))

(declare-fun res!905780 () Bool)

(assert (=> start!114910 (=> (not res!905780) (not e!772485))))

(assert (=> start!114910 (= res!905780 (and (bvslt (size!45265 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45265 a!3742))))))

(assert (=> start!114910 e!772485))

(assert (=> start!114910 true))

(declare-fun array_inv!33659 (array!92568) Bool)

(assert (=> start!114910 (array_inv!33659 a!3742)))

(declare-fun b!1361561 () Bool)

(declare-fun res!905783 () Bool)

(assert (=> b!1361561 (=> (not res!905783) (not e!772485))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1361561 (= res!905783 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1361562 () Bool)

(declare-fun res!905777 () Bool)

(assert (=> b!1361562 (=> (not res!905777) (not e!772486))))

(declare-fun contains!9500 (List!31935 (_ BitVec 64)) Bool)

(assert (=> b!1361562 (= res!905777 (not (contains!9500 lt!600166 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361563 () Bool)

(declare-fun res!905782 () Bool)

(assert (=> b!1361563 (=> (not res!905782) (not e!772485))))

(assert (=> b!1361563 (= res!905782 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31932))))

(declare-fun b!1361564 () Bool)

(assert (=> b!1361564 (= e!772486 false)))

(declare-fun lt!600164 () Bool)

(assert (=> b!1361564 (= lt!600164 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000001 from!3120) lt!600166))))

(declare-fun b!1361565 () Bool)

(declare-fun e!772487 () Bool)

(assert (=> b!1361565 (= e!772485 e!772487)))

(declare-fun res!905779 () Bool)

(assert (=> b!1361565 (=> (not res!905779) (not e!772487))))

(declare-fun lt!600162 () Bool)

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1361565 (= res!905779 (and (not (= from!3120 i!1404)) lt!600162))))

(declare-fun lt!600167 () Unit!44825)

(assert (=> b!1361565 (= lt!600167 e!772489)))

(declare-fun c!127333 () Bool)

(assert (=> b!1361565 (= c!127333 lt!600162)))

(assert (=> b!1361565 (= lt!600162 (validKeyInArray!0 (select (arr!44714 a!3742) from!3120)))))

(declare-fun b!1361566 () Bool)

(declare-fun Unit!44827 () Unit!44825)

(assert (=> b!1361566 (= e!772489 Unit!44827)))

(declare-fun b!1361567 () Bool)

(declare-fun res!905781 () Bool)

(assert (=> b!1361567 (=> (not res!905781) (not e!772485))))

(assert (=> b!1361567 (= res!905781 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45265 a!3742))))))

(declare-fun b!1361568 () Bool)

(declare-fun res!905787 () Bool)

(assert (=> b!1361568 (=> (not res!905787) (not e!772485))))

(assert (=> b!1361568 (= res!905787 (not (contains!9500 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361569 () Bool)

(assert (=> b!1361569 (= e!772487 e!772486)))

(declare-fun res!905784 () Bool)

(assert (=> b!1361569 (=> (not res!905784) (not e!772486))))

(assert (=> b!1361569 (= res!905784 (bvsge (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(assert (=> b!1361569 (= lt!600166 ($colon$colon!896 acc!759 (select (arr!44714 a!3742) from!3120)))))

(declare-fun b!1361570 () Bool)

(declare-fun res!905778 () Bool)

(assert (=> b!1361570 (=> (not res!905778) (not e!772486))))

(assert (=> b!1361570 (= res!905778 (not (contains!9500 lt!600166 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361571 () Bool)

(declare-fun res!905785 () Bool)

(assert (=> b!1361571 (=> (not res!905785) (not e!772485))))

(assert (=> b!1361571 (= res!905785 (not (contains!9500 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1361572 () Bool)

(declare-fun res!905788 () Bool)

(assert (=> b!1361572 (=> (not res!905788) (not e!772485))))

(assert (=> b!1361572 (= res!905788 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1361573 () Bool)

(declare-fun res!905790 () Bool)

(assert (=> b!1361573 (=> (not res!905790) (not e!772485))))

(assert (=> b!1361573 (= res!905790 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45265 a!3742)))))

(assert (= (and start!114910 res!905780) b!1361559))

(assert (= (and b!1361559 res!905786) b!1361571))

(assert (= (and b!1361571 res!905785) b!1361568))

(assert (= (and b!1361568 res!905787) b!1361563))

(assert (= (and b!1361563 res!905782) b!1361572))

(assert (= (and b!1361572 res!905788) b!1361567))

(assert (= (and b!1361567 res!905781) b!1361561))

(assert (= (and b!1361561 res!905783) b!1361573))

(assert (= (and b!1361573 res!905790) b!1361565))

(assert (= (and b!1361565 c!127333) b!1361560))

(assert (= (and b!1361565 (not c!127333)) b!1361566))

(assert (= (and b!1361565 res!905779) b!1361569))

(assert (= (and b!1361569 res!905784) b!1361558))

(assert (= (and b!1361558 res!905789) b!1361562))

(assert (= (and b!1361562 res!905777) b!1361570))

(assert (= (and b!1361570 res!905778) b!1361564))

(declare-fun m!1246681 () Bool)

(assert (=> b!1361562 m!1246681))

(declare-fun m!1246683 () Bool)

(assert (=> b!1361561 m!1246683))

(declare-fun m!1246685 () Bool)

(assert (=> b!1361569 m!1246685))

(assert (=> b!1361569 m!1246685))

(declare-fun m!1246687 () Bool)

(assert (=> b!1361569 m!1246687))

(declare-fun m!1246689 () Bool)

(assert (=> b!1361560 m!1246689))

(assert (=> b!1361560 m!1246685))

(assert (=> b!1361560 m!1246687))

(declare-fun m!1246691 () Bool)

(assert (=> b!1361560 m!1246691))

(declare-fun m!1246693 () Bool)

(assert (=> b!1361560 m!1246693))

(assert (=> b!1361560 m!1246685))

(assert (=> b!1361560 m!1246687))

(declare-fun m!1246695 () Bool)

(assert (=> b!1361560 m!1246695))

(declare-fun m!1246697 () Bool)

(assert (=> b!1361571 m!1246697))

(declare-fun m!1246699 () Bool)

(assert (=> start!114910 m!1246699))

(declare-fun m!1246701 () Bool)

(assert (=> b!1361570 m!1246701))

(assert (=> b!1361565 m!1246685))

(assert (=> b!1361565 m!1246685))

(declare-fun m!1246703 () Bool)

(assert (=> b!1361565 m!1246703))

(declare-fun m!1246705 () Bool)

(assert (=> b!1361564 m!1246705))

(declare-fun m!1246707 () Bool)

(assert (=> b!1361568 m!1246707))

(declare-fun m!1246709 () Bool)

(assert (=> b!1361558 m!1246709))

(declare-fun m!1246711 () Bool)

(assert (=> b!1361563 m!1246711))

(declare-fun m!1246713 () Bool)

(assert (=> b!1361559 m!1246713))

(declare-fun m!1246715 () Bool)

(assert (=> b!1361572 m!1246715))

(check-sat (not b!1361558) (not b!1361563) (not b!1361569) (not b!1361570) (not b!1361562) (not b!1361561) (not b!1361560) (not b!1361568) (not start!114910) (not b!1361571) (not b!1361564) (not b!1361565) (not b!1361572) (not b!1361559))
(check-sat)
