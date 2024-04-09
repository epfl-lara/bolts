; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62418 () Bool)

(assert start!62418)

(declare-fun b!699659 () Bool)

(declare-fun res!463663 () Bool)

(declare-fun e!397120 () Bool)

(assert (=> b!699659 (=> (not res!463663) (not e!397120))))

(declare-datatypes ((List!13273 0))(
  ( (Nil!13270) (Cons!13269 (h!14314 (_ BitVec 64)) (t!19563 List!13273)) )
))
(declare-fun newAcc!49 () List!13273)

(declare-fun contains!3816 (List!13273 (_ BitVec 64)) Bool)

(assert (=> b!699659 (= res!463663 (not (contains!3816 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699660 () Bool)

(declare-fun res!463647 () Bool)

(declare-fun e!397119 () Bool)

(assert (=> b!699660 (=> (not res!463647) (not e!397119))))

(declare-fun lt!317368 () List!13273)

(declare-fun k!2824 () (_ BitVec 64))

(assert (=> b!699660 (= res!463647 (not (contains!3816 lt!317368 k!2824)))))

(declare-fun b!699661 () Bool)

(declare-fun res!463654 () Bool)

(assert (=> b!699661 (=> (not res!463654) (not e!397120))))

(assert (=> b!699661 (= res!463654 (not (contains!3816 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699662 () Bool)

(declare-fun res!463651 () Bool)

(assert (=> b!699662 (=> (not res!463651) (not e!397120))))

(declare-fun acc!652 () List!13273)

(assert (=> b!699662 (= res!463651 (not (contains!3816 acc!652 k!2824)))))

(declare-fun b!699663 () Bool)

(declare-fun res!463652 () Bool)

(assert (=> b!699663 (=> (not res!463652) (not e!397120))))

(assert (=> b!699663 (= res!463652 (not (contains!3816 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699664 () Bool)

(declare-fun res!463645 () Bool)

(assert (=> b!699664 (=> (not res!463645) (not e!397119))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40053 0))(
  ( (array!40054 (arr!19179 (Array (_ BitVec 32) (_ BitVec 64))) (size!19562 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40053)

(declare-fun arrayNoDuplicates!0 (array!40053 (_ BitVec 32) List!13273) Bool)

(assert (=> b!699664 (= res!463645 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317368))))

(declare-fun b!699665 () Bool)

(declare-fun res!463649 () Bool)

(assert (=> b!699665 (=> (not res!463649) (not e!397120))))

(assert (=> b!699665 (= res!463649 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19562 a!3591)))))

(declare-fun b!699666 () Bool)

(declare-fun res!463664 () Bool)

(assert (=> b!699666 (=> (not res!463664) (not e!397120))))

(assert (=> b!699666 (= res!463664 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!699667 () Bool)

(declare-fun res!463653 () Bool)

(assert (=> b!699667 (=> (not res!463653) (not e!397119))))

(assert (=> b!699667 (= res!463653 (not (contains!3816 lt!317368 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699668 () Bool)

(declare-fun res!463658 () Bool)

(assert (=> b!699668 (=> (not res!463658) (not e!397119))))

(declare-fun lt!317370 () List!13273)

(assert (=> b!699668 (= res!463658 (contains!3816 lt!317370 k!2824))))

(declare-fun b!699669 () Bool)

(declare-fun res!463667 () Bool)

(assert (=> b!699669 (=> (not res!463667) (not e!397120))))

(declare-fun arrayContainsKey!0 (array!40053 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!699669 (= res!463667 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!699670 () Bool)

(declare-fun res!463668 () Bool)

(assert (=> b!699670 (=> (not res!463668) (not e!397119))))

(declare-fun subseq!260 (List!13273 List!13273) Bool)

(assert (=> b!699670 (= res!463668 (subseq!260 lt!317368 lt!317370))))

(declare-fun res!463660 () Bool)

(assert (=> start!62418 (=> (not res!463660) (not e!397120))))

(assert (=> start!62418 (= res!463660 (and (bvslt (size!19562 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19562 a!3591))))))

(assert (=> start!62418 e!397120))

(assert (=> start!62418 true))

(declare-fun array_inv!14953 (array!40053) Bool)

(assert (=> start!62418 (array_inv!14953 a!3591)))

(declare-fun b!699671 () Bool)

(declare-fun res!463655 () Bool)

(assert (=> b!699671 (=> (not res!463655) (not e!397119))))

(declare-fun noDuplicate!1063 (List!13273) Bool)

(assert (=> b!699671 (= res!463655 (noDuplicate!1063 lt!317370))))

(declare-fun b!699672 () Bool)

(declare-fun res!463650 () Bool)

(assert (=> b!699672 (=> (not res!463650) (not e!397120))))

(declare-fun -!225 (List!13273 (_ BitVec 64)) List!13273)

(assert (=> b!699672 (= res!463650 (= (-!225 newAcc!49 k!2824) acc!652))))

(declare-fun b!699673 () Bool)

(declare-fun res!463644 () Bool)

(assert (=> b!699673 (=> (not res!463644) (not e!397119))))

(assert (=> b!699673 (= res!463644 (= (-!225 lt!317370 k!2824) lt!317368))))

(declare-fun b!699674 () Bool)

(declare-fun res!463648 () Bool)

(assert (=> b!699674 (=> (not res!463648) (not e!397120))))

(assert (=> b!699674 (= res!463648 (noDuplicate!1063 newAcc!49))))

(declare-fun b!699675 () Bool)

(assert (=> b!699675 (= e!397119 false)))

(declare-fun lt!317369 () Bool)

(assert (=> b!699675 (= lt!317369 (contains!3816 lt!317370 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!699676 () Bool)

(assert (=> b!699676 (= e!397120 e!397119)))

(declare-fun res!463669 () Bool)

(assert (=> b!699676 (=> (not res!463669) (not e!397119))))

(assert (=> b!699676 (= res!463669 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!457 (List!13273 (_ BitVec 64)) List!13273)

(assert (=> b!699676 (= lt!317370 ($colon$colon!457 newAcc!49 (select (arr!19179 a!3591) from!2969)))))

(assert (=> b!699676 (= lt!317368 ($colon$colon!457 acc!652 (select (arr!19179 a!3591) from!2969)))))

(declare-fun b!699677 () Bool)

(declare-fun res!463670 () Bool)

(assert (=> b!699677 (=> (not res!463670) (not e!397120))))

(assert (=> b!699677 (= res!463670 (not (contains!3816 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699678 () Bool)

(declare-fun res!463661 () Bool)

(assert (=> b!699678 (=> (not res!463661) (not e!397119))))

(assert (=> b!699678 (= res!463661 (noDuplicate!1063 lt!317368))))

(declare-fun b!699679 () Bool)

(declare-fun res!463666 () Bool)

(assert (=> b!699679 (=> (not res!463666) (not e!397120))))

(assert (=> b!699679 (= res!463666 (subseq!260 acc!652 newAcc!49))))

(declare-fun b!699680 () Bool)

(declare-fun res!463665 () Bool)

(assert (=> b!699680 (=> (not res!463665) (not e!397119))))

(assert (=> b!699680 (= res!463665 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!699681 () Bool)

(declare-fun res!463643 () Bool)

(assert (=> b!699681 (=> (not res!463643) (not e!397120))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!699681 (= res!463643 (validKeyInArray!0 (select (arr!19179 a!3591) from!2969)))))

(declare-fun b!699682 () Bool)

(declare-fun res!463656 () Bool)

(assert (=> b!699682 (=> (not res!463656) (not e!397119))))

(assert (=> b!699682 (= res!463656 (not (contains!3816 lt!317370 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699683 () Bool)

(declare-fun res!463657 () Bool)

(assert (=> b!699683 (=> (not res!463657) (not e!397120))))

(assert (=> b!699683 (= res!463657 (noDuplicate!1063 acc!652))))

(declare-fun b!699684 () Bool)

(declare-fun res!463646 () Bool)

(assert (=> b!699684 (=> (not res!463646) (not e!397120))))

(assert (=> b!699684 (= res!463646 (contains!3816 newAcc!49 k!2824))))

(declare-fun b!699685 () Bool)

(declare-fun res!463662 () Bool)

(assert (=> b!699685 (=> (not res!463662) (not e!397119))))

(assert (=> b!699685 (= res!463662 (not (contains!3816 lt!317368 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!699686 () Bool)

(declare-fun res!463659 () Bool)

(assert (=> b!699686 (=> (not res!463659) (not e!397120))))

(assert (=> b!699686 (= res!463659 (validKeyInArray!0 k!2824))))

(assert (= (and start!62418 res!463660) b!699683))

(assert (= (and b!699683 res!463657) b!699674))

(assert (= (and b!699674 res!463648) b!699677))

(assert (= (and b!699677 res!463670) b!699663))

(assert (= (and b!699663 res!463652) b!699669))

(assert (= (and b!699669 res!463667) b!699662))

(assert (= (and b!699662 res!463651) b!699686))

(assert (= (and b!699686 res!463659) b!699666))

(assert (= (and b!699666 res!463664) b!699679))

(assert (= (and b!699679 res!463666) b!699684))

(assert (= (and b!699684 res!463646) b!699672))

(assert (= (and b!699672 res!463650) b!699659))

(assert (= (and b!699659 res!463663) b!699661))

(assert (= (and b!699661 res!463654) b!699665))

(assert (= (and b!699665 res!463649) b!699681))

(assert (= (and b!699681 res!463643) b!699676))

(assert (= (and b!699676 res!463669) b!699678))

(assert (= (and b!699678 res!463661) b!699671))

(assert (= (and b!699671 res!463655) b!699667))

(assert (= (and b!699667 res!463653) b!699685))

(assert (= (and b!699685 res!463662) b!699680))

(assert (= (and b!699680 res!463665) b!699660))

(assert (= (and b!699660 res!463647) b!699664))

(assert (= (and b!699664 res!463645) b!699670))

(assert (= (and b!699670 res!463668) b!699668))

(assert (= (and b!699668 res!463658) b!699673))

(assert (= (and b!699673 res!463644) b!699682))

(assert (= (and b!699682 res!463656) b!699675))

(declare-fun m!659571 () Bool)

(assert (=> b!699685 m!659571))

(declare-fun m!659573 () Bool)

(assert (=> b!699678 m!659573))

(declare-fun m!659575 () Bool)

(assert (=> b!699661 m!659575))

(declare-fun m!659577 () Bool)

(assert (=> b!699686 m!659577))

(declare-fun m!659579 () Bool)

(assert (=> start!62418 m!659579))

(declare-fun m!659581 () Bool)

(assert (=> b!699674 m!659581))

(declare-fun m!659583 () Bool)

(assert (=> b!699684 m!659583))

(declare-fun m!659585 () Bool)

(assert (=> b!699662 m!659585))

(declare-fun m!659587 () Bool)

(assert (=> b!699669 m!659587))

(declare-fun m!659589 () Bool)

(assert (=> b!699666 m!659589))

(declare-fun m!659591 () Bool)

(assert (=> b!699676 m!659591))

(assert (=> b!699676 m!659591))

(declare-fun m!659593 () Bool)

(assert (=> b!699676 m!659593))

(assert (=> b!699676 m!659591))

(declare-fun m!659595 () Bool)

(assert (=> b!699676 m!659595))

(declare-fun m!659597 () Bool)

(assert (=> b!699663 m!659597))

(declare-fun m!659599 () Bool)

(assert (=> b!699667 m!659599))

(declare-fun m!659601 () Bool)

(assert (=> b!699672 m!659601))

(declare-fun m!659603 () Bool)

(assert (=> b!699682 m!659603))

(declare-fun m!659605 () Bool)

(assert (=> b!699675 m!659605))

(declare-fun m!659607 () Bool)

(assert (=> b!699659 m!659607))

(declare-fun m!659609 () Bool)

(assert (=> b!699670 m!659609))

(declare-fun m!659611 () Bool)

(assert (=> b!699664 m!659611))

(declare-fun m!659613 () Bool)

(assert (=> b!699679 m!659613))

(declare-fun m!659615 () Bool)

(assert (=> b!699673 m!659615))

(declare-fun m!659617 () Bool)

(assert (=> b!699668 m!659617))

(declare-fun m!659619 () Bool)

(assert (=> b!699671 m!659619))

(declare-fun m!659621 () Bool)

(assert (=> b!699680 m!659621))

(assert (=> b!699681 m!659591))

(assert (=> b!699681 m!659591))

(declare-fun m!659623 () Bool)

(assert (=> b!699681 m!659623))

(declare-fun m!659625 () Bool)

(assert (=> b!699660 m!659625))

(declare-fun m!659627 () Bool)

(assert (=> b!699683 m!659627))

(declare-fun m!659629 () Bool)

(assert (=> b!699677 m!659629))

(push 1)

