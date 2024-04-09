; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62490 () Bool)

(assert start!62490)

(declare-fun b!702712 () Bool)

(declare-fun res!466714 () Bool)

(declare-fun e!397444 () Bool)

(assert (=> b!702712 (=> (not res!466714) (not e!397444))))

(declare-datatypes ((array!40125 0))(
  ( (array!40126 (arr!19215 (Array (_ BitVec 32) (_ BitVec 64))) (size!19598 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40125)

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((List!13309 0))(
  ( (Nil!13306) (Cons!13305 (h!14350 (_ BitVec 64)) (t!19599 List!13309)) )
))
(declare-fun acc!652 () List!13309)

(declare-fun arrayNoDuplicates!0 (array!40125 (_ BitVec 32) List!13309) Bool)

(assert (=> b!702712 (= res!466714 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!702713 () Bool)

(declare-fun res!466704 () Bool)

(assert (=> b!702713 (=> (not res!466704) (not e!397444))))

(declare-fun noDuplicate!1099 (List!13309) Bool)

(assert (=> b!702713 (= res!466704 (noDuplicate!1099 acc!652))))

(declare-fun b!702714 () Bool)

(declare-fun res!466703 () Bool)

(assert (=> b!702714 (=> (not res!466703) (not e!397444))))

(declare-fun newAcc!49 () List!13309)

(declare-fun subseq!296 (List!13309 List!13309) Bool)

(assert (=> b!702714 (= res!466703 (subseq!296 acc!652 newAcc!49))))

(declare-fun res!466712 () Bool)

(assert (=> start!62490 (=> (not res!466712) (not e!397444))))

(assert (=> start!62490 (= res!466712 (and (bvslt (size!19598 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19598 a!3591))))))

(assert (=> start!62490 e!397444))

(assert (=> start!62490 true))

(declare-fun array_inv!14989 (array!40125) Bool)

(assert (=> start!62490 (array_inv!14989 a!3591)))

(declare-fun b!702715 () Bool)

(declare-fun res!466707 () Bool)

(assert (=> b!702715 (=> (not res!466707) (not e!397444))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!702715 (= res!466707 (validKeyInArray!0 (select (arr!19215 a!3591) from!2969)))))

(declare-fun b!702716 () Bool)

(declare-fun res!466720 () Bool)

(declare-fun e!397443 () Bool)

(assert (=> b!702716 (=> (not res!466720) (not e!397443))))

(declare-fun lt!317693 () List!13309)

(declare-fun contains!3852 (List!13309 (_ BitVec 64)) Bool)

(assert (=> b!702716 (= res!466720 (not (contains!3852 lt!317693 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702717 () Bool)

(declare-fun res!466706 () Bool)

(assert (=> b!702717 (=> (not res!466706) (not e!397444))))

(declare-fun k!2824 () (_ BitVec 64))

(assert (=> b!702717 (= res!466706 (validKeyInArray!0 k!2824))))

(declare-fun b!702718 () Bool)

(declare-fun res!466724 () Bool)

(assert (=> b!702718 (=> (not res!466724) (not e!397444))))

(assert (=> b!702718 (= res!466724 (noDuplicate!1099 newAcc!49))))

(declare-fun b!702719 () Bool)

(declare-fun res!466702 () Bool)

(assert (=> b!702719 (=> (not res!466702) (not e!397444))))

(declare-fun -!261 (List!13309 (_ BitVec 64)) List!13309)

(assert (=> b!702719 (= res!466702 (= (-!261 newAcc!49 k!2824) acc!652))))

(declare-fun b!702720 () Bool)

(declare-fun res!466715 () Bool)

(assert (=> b!702720 (=> (not res!466715) (not e!397444))))

(assert (=> b!702720 (= res!466715 (not (contains!3852 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702721 () Bool)

(declare-fun res!466722 () Bool)

(assert (=> b!702721 (=> (not res!466722) (not e!397444))))

(assert (=> b!702721 (= res!466722 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19598 a!3591)))))

(declare-fun b!702722 () Bool)

(declare-fun res!466700 () Bool)

(assert (=> b!702722 (=> (not res!466700) (not e!397443))))

(assert (=> b!702722 (= res!466700 (not (contains!3852 lt!317693 k!2824)))))

(declare-fun b!702723 () Bool)

(declare-fun res!466719 () Bool)

(assert (=> b!702723 (=> (not res!466719) (not e!397443))))

(assert (=> b!702723 (= res!466719 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317693))))

(declare-fun b!702724 () Bool)

(declare-fun res!466705 () Bool)

(assert (=> b!702724 (=> (not res!466705) (not e!397443))))

(declare-fun arrayContainsKey!0 (array!40125 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!702724 (= res!466705 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!702725 () Bool)

(declare-fun res!466696 () Bool)

(assert (=> b!702725 (=> (not res!466696) (not e!397444))))

(assert (=> b!702725 (= res!466696 (not (contains!3852 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702726 () Bool)

(assert (=> b!702726 (= e!397443 (not true))))

(declare-fun lt!317694 () List!13309)

(assert (=> b!702726 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317694)))

(declare-datatypes ((Unit!24580 0))(
  ( (Unit!24581) )
))
(declare-fun lt!317692 () Unit!24580)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40125 (_ BitVec 64) (_ BitVec 32) List!13309 List!13309) Unit!24580)

(assert (=> b!702726 (= lt!317692 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969) lt!317693 lt!317694))))

(declare-fun b!702727 () Bool)

(declare-fun res!466701 () Bool)

(assert (=> b!702727 (=> (not res!466701) (not e!397443))))

(assert (=> b!702727 (= res!466701 (= (-!261 lt!317694 k!2824) lt!317693))))

(declare-fun b!702728 () Bool)

(declare-fun res!466709 () Bool)

(assert (=> b!702728 (=> (not res!466709) (not e!397443))))

(assert (=> b!702728 (= res!466709 (noDuplicate!1099 lt!317694))))

(declare-fun b!702729 () Bool)

(declare-fun res!466708 () Bool)

(assert (=> b!702729 (=> (not res!466708) (not e!397443))))

(assert (=> b!702729 (= res!466708 (subseq!296 lt!317693 lt!317694))))

(declare-fun b!702730 () Bool)

(declare-fun res!466697 () Bool)

(assert (=> b!702730 (=> (not res!466697) (not e!397444))))

(assert (=> b!702730 (= res!466697 (not (contains!3852 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702731 () Bool)

(assert (=> b!702731 (= e!397444 e!397443)))

(declare-fun res!466721 () Bool)

(assert (=> b!702731 (=> (not res!466721) (not e!397443))))

(assert (=> b!702731 (= res!466721 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!493 (List!13309 (_ BitVec 64)) List!13309)

(assert (=> b!702731 (= lt!317694 ($colon$colon!493 newAcc!49 (select (arr!19215 a!3591) from!2969)))))

(assert (=> b!702731 (= lt!317693 ($colon$colon!493 acc!652 (select (arr!19215 a!3591) from!2969)))))

(declare-fun b!702732 () Bool)

(declare-fun res!466699 () Bool)

(assert (=> b!702732 (=> (not res!466699) (not e!397443))))

(assert (=> b!702732 (= res!466699 (noDuplicate!1099 lt!317693))))

(declare-fun b!702733 () Bool)

(declare-fun res!466710 () Bool)

(assert (=> b!702733 (=> (not res!466710) (not e!397444))))

(assert (=> b!702733 (= res!466710 (not (contains!3852 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702734 () Bool)

(declare-fun res!466713 () Bool)

(assert (=> b!702734 (=> (not res!466713) (not e!397444))))

(assert (=> b!702734 (= res!466713 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!702735 () Bool)

(declare-fun res!466711 () Bool)

(assert (=> b!702735 (=> (not res!466711) (not e!397443))))

(assert (=> b!702735 (= res!466711 (not (contains!3852 lt!317694 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702736 () Bool)

(declare-fun res!466698 () Bool)

(assert (=> b!702736 (=> (not res!466698) (not e!397443))))

(assert (=> b!702736 (= res!466698 (contains!3852 lt!317694 k!2824))))

(declare-fun b!702737 () Bool)

(declare-fun res!466716 () Bool)

(assert (=> b!702737 (=> (not res!466716) (not e!397444))))

(assert (=> b!702737 (= res!466716 (contains!3852 newAcc!49 k!2824))))

(declare-fun b!702738 () Bool)

(declare-fun res!466723 () Bool)

(assert (=> b!702738 (=> (not res!466723) (not e!397443))))

(assert (=> b!702738 (= res!466723 (not (contains!3852 lt!317693 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702739 () Bool)

(declare-fun res!466717 () Bool)

(assert (=> b!702739 (=> (not res!466717) (not e!397444))))

(assert (=> b!702739 (= res!466717 (not (contains!3852 acc!652 k!2824)))))

(declare-fun b!702740 () Bool)

(declare-fun res!466718 () Bool)

(assert (=> b!702740 (=> (not res!466718) (not e!397443))))

(assert (=> b!702740 (= res!466718 (not (contains!3852 lt!317694 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62490 res!466712) b!702713))

(assert (= (and b!702713 res!466704) b!702718))

(assert (= (and b!702718 res!466724) b!702720))

(assert (= (and b!702720 res!466715) b!702725))

(assert (= (and b!702725 res!466696) b!702734))

(assert (= (and b!702734 res!466713) b!702739))

(assert (= (and b!702739 res!466717) b!702717))

(assert (= (and b!702717 res!466706) b!702712))

(assert (= (and b!702712 res!466714) b!702714))

(assert (= (and b!702714 res!466703) b!702737))

(assert (= (and b!702737 res!466716) b!702719))

(assert (= (and b!702719 res!466702) b!702733))

(assert (= (and b!702733 res!466710) b!702730))

(assert (= (and b!702730 res!466697) b!702721))

(assert (= (and b!702721 res!466722) b!702715))

(assert (= (and b!702715 res!466707) b!702731))

(assert (= (and b!702731 res!466721) b!702732))

(assert (= (and b!702732 res!466699) b!702728))

(assert (= (and b!702728 res!466709) b!702738))

(assert (= (and b!702738 res!466723) b!702716))

(assert (= (and b!702716 res!466720) b!702724))

(assert (= (and b!702724 res!466705) b!702722))

(assert (= (and b!702722 res!466700) b!702723))

(assert (= (and b!702723 res!466719) b!702729))

(assert (= (and b!702729 res!466708) b!702736))

(assert (= (and b!702736 res!466698) b!702727))

(assert (= (and b!702727 res!466701) b!702735))

(assert (= (and b!702735 res!466711) b!702740))

(assert (= (and b!702740 res!466718) b!702726))

(declare-fun m!661767 () Bool)

(assert (=> b!702735 m!661767))

(declare-fun m!661769 () Bool)

(assert (=> start!62490 m!661769))

(declare-fun m!661771 () Bool)

(assert (=> b!702729 m!661771))

(declare-fun m!661773 () Bool)

(assert (=> b!702720 m!661773))

(declare-fun m!661775 () Bool)

(assert (=> b!702714 m!661775))

(declare-fun m!661777 () Bool)

(assert (=> b!702712 m!661777))

(declare-fun m!661779 () Bool)

(assert (=> b!702734 m!661779))

(declare-fun m!661781 () Bool)

(assert (=> b!702731 m!661781))

(assert (=> b!702731 m!661781))

(declare-fun m!661783 () Bool)

(assert (=> b!702731 m!661783))

(assert (=> b!702731 m!661781))

(declare-fun m!661785 () Bool)

(assert (=> b!702731 m!661785))

(declare-fun m!661787 () Bool)

(assert (=> b!702719 m!661787))

(declare-fun m!661789 () Bool)

(assert (=> b!702717 m!661789))

(declare-fun m!661791 () Bool)

(assert (=> b!702723 m!661791))

(declare-fun m!661793 () Bool)

(assert (=> b!702730 m!661793))

(declare-fun m!661795 () Bool)

(assert (=> b!702740 m!661795))

(declare-fun m!661797 () Bool)

(assert (=> b!702737 m!661797))

(declare-fun m!661799 () Bool)

(assert (=> b!702722 m!661799))

(declare-fun m!661801 () Bool)

(assert (=> b!702733 m!661801))

(declare-fun m!661803 () Bool)

(assert (=> b!702727 m!661803))

(declare-fun m!661805 () Bool)

(assert (=> b!702732 m!661805))

(declare-fun m!661807 () Bool)

(assert (=> b!702728 m!661807))

(declare-fun m!661809 () Bool)

(assert (=> b!702738 m!661809))

(declare-fun m!661811 () Bool)

(assert (=> b!702716 m!661811))

(declare-fun m!661813 () Bool)

(assert (=> b!702725 m!661813))

(declare-fun m!661815 () Bool)

(assert (=> b!702736 m!661815))

(declare-fun m!661817 () Bool)

(assert (=> b!702713 m!661817))

(declare-fun m!661819 () Bool)

(assert (=> b!702739 m!661819))

(declare-fun m!661821 () Bool)

(assert (=> b!702726 m!661821))

(declare-fun m!661823 () Bool)

(assert (=> b!702726 m!661823))

(assert (=> b!702715 m!661781))

(assert (=> b!702715 m!661781))

(declare-fun m!661825 () Bool)

(assert (=> b!702715 m!661825))

(declare-fun m!661827 () Bool)

(assert (=> b!702718 m!661827))

(declare-fun m!661829 () Bool)

(assert (=> b!702724 m!661829))

(push 1)

