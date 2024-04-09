; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62466 () Bool)

(assert start!62466)

(declare-fun b!701675 () Bool)

(declare-fun res!465682 () Bool)

(declare-fun e!397334 () Bool)

(assert (=> b!701675 (=> (not res!465682) (not e!397334))))

(declare-datatypes ((List!13297 0))(
  ( (Nil!13294) (Cons!13293 (h!14338 (_ BitVec 64)) (t!19587 List!13297)) )
))
(declare-fun lt!317586 () List!13297)

(declare-fun contains!3840 (List!13297 (_ BitVec 64)) Bool)

(assert (=> b!701675 (= res!465682 (not (contains!3840 lt!317586 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701676 () Bool)

(declare-fun res!465664 () Bool)

(declare-fun e!397335 () Bool)

(assert (=> b!701676 (=> (not res!465664) (not e!397335))))

(declare-fun newAcc!49 () List!13297)

(assert (=> b!701676 (= res!465664 (not (contains!3840 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701677 () Bool)

(declare-fun res!465678 () Bool)

(assert (=> b!701677 (=> (not res!465678) (not e!397335))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40101 0))(
  ( (array!40102 (arr!19203 (Array (_ BitVec 32) (_ BitVec 64))) (size!19586 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40101)

(assert (=> b!701677 (= res!465678 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19586 a!3591)))))

(declare-fun b!701678 () Bool)

(declare-fun res!465668 () Bool)

(assert (=> b!701678 (=> (not res!465668) (not e!397335))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40101 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!701678 (= res!465668 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!701679 () Bool)

(declare-fun res!465684 () Bool)

(assert (=> b!701679 (=> (not res!465684) (not e!397335))))

(declare-fun noDuplicate!1087 (List!13297) Bool)

(assert (=> b!701679 (= res!465684 (noDuplicate!1087 newAcc!49))))

(declare-fun b!701680 () Bool)

(assert (=> b!701680 (= e!397335 e!397334)))

(declare-fun res!465676 () Bool)

(assert (=> b!701680 (=> (not res!465676) (not e!397334))))

(assert (=> b!701680 (= res!465676 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun lt!317584 () List!13297)

(declare-fun $colon$colon!481 (List!13297 (_ BitVec 64)) List!13297)

(assert (=> b!701680 (= lt!317584 ($colon$colon!481 newAcc!49 (select (arr!19203 a!3591) from!2969)))))

(declare-fun acc!652 () List!13297)

(assert (=> b!701680 (= lt!317586 ($colon$colon!481 acc!652 (select (arr!19203 a!3591) from!2969)))))

(declare-fun b!701681 () Bool)

(declare-fun res!465677 () Bool)

(assert (=> b!701681 (=> (not res!465677) (not e!397335))))

(declare-fun arrayNoDuplicates!0 (array!40101 (_ BitVec 32) List!13297) Bool)

(assert (=> b!701681 (= res!465677 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!701682 () Bool)

(declare-fun res!465659 () Bool)

(assert (=> b!701682 (=> (not res!465659) (not e!397334))))

(assert (=> b!701682 (= res!465659 (not (contains!3840 lt!317586 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701683 () Bool)

(declare-fun res!465679 () Bool)

(assert (=> b!701683 (=> (not res!465679) (not e!397334))))

(assert (=> b!701683 (= res!465679 (not (contains!3840 lt!317586 k!2824)))))

(declare-fun b!701684 () Bool)

(assert (=> b!701684 (= e!397334 false)))

(declare-fun lt!317585 () Bool)

(assert (=> b!701684 (= lt!317585 (contains!3840 lt!317584 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!701685 () Bool)

(declare-fun res!465674 () Bool)

(assert (=> b!701685 (=> (not res!465674) (not e!397335))))

(assert (=> b!701685 (= res!465674 (not (contains!3840 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701686 () Bool)

(declare-fun res!465672 () Bool)

(assert (=> b!701686 (=> (not res!465672) (not e!397335))))

(assert (=> b!701686 (= res!465672 (not (contains!3840 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!465667 () Bool)

(assert (=> start!62466 (=> (not res!465667) (not e!397335))))

(assert (=> start!62466 (= res!465667 (and (bvslt (size!19586 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19586 a!3591))))))

(assert (=> start!62466 e!397335))

(assert (=> start!62466 true))

(declare-fun array_inv!14977 (array!40101) Bool)

(assert (=> start!62466 (array_inv!14977 a!3591)))

(declare-fun b!701687 () Bool)

(declare-fun res!465662 () Bool)

(assert (=> b!701687 (=> (not res!465662) (not e!397335))))

(assert (=> b!701687 (= res!465662 (not (contains!3840 acc!652 k!2824)))))

(declare-fun b!701688 () Bool)

(declare-fun res!465661 () Bool)

(assert (=> b!701688 (=> (not res!465661) (not e!397334))))

(assert (=> b!701688 (= res!465661 (not (contains!3840 lt!317584 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701689 () Bool)

(declare-fun res!465675 () Bool)

(assert (=> b!701689 (=> (not res!465675) (not e!397335))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!701689 (= res!465675 (validKeyInArray!0 k!2824))))

(declare-fun b!701690 () Bool)

(declare-fun res!465660 () Bool)

(assert (=> b!701690 (=> (not res!465660) (not e!397335))))

(assert (=> b!701690 (= res!465660 (contains!3840 newAcc!49 k!2824))))

(declare-fun b!701691 () Bool)

(declare-fun res!465671 () Bool)

(assert (=> b!701691 (=> (not res!465671) (not e!397334))))

(assert (=> b!701691 (= res!465671 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317586))))

(declare-fun b!701692 () Bool)

(declare-fun res!465686 () Bool)

(assert (=> b!701692 (=> (not res!465686) (not e!397334))))

(declare-fun -!249 (List!13297 (_ BitVec 64)) List!13297)

(assert (=> b!701692 (= res!465686 (= (-!249 lt!317584 k!2824) lt!317586))))

(declare-fun b!701693 () Bool)

(declare-fun res!465666 () Bool)

(assert (=> b!701693 (=> (not res!465666) (not e!397335))))

(assert (=> b!701693 (= res!465666 (= (-!249 newAcc!49 k!2824) acc!652))))

(declare-fun b!701694 () Bool)

(declare-fun res!465681 () Bool)

(assert (=> b!701694 (=> (not res!465681) (not e!397335))))

(assert (=> b!701694 (= res!465681 (not (contains!3840 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!701695 () Bool)

(declare-fun res!465680 () Bool)

(assert (=> b!701695 (=> (not res!465680) (not e!397335))))

(assert (=> b!701695 (= res!465680 (validKeyInArray!0 (select (arr!19203 a!3591) from!2969)))))

(declare-fun b!701696 () Bool)

(declare-fun res!465685 () Bool)

(assert (=> b!701696 (=> (not res!465685) (not e!397334))))

(assert (=> b!701696 (= res!465685 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!701697 () Bool)

(declare-fun res!465673 () Bool)

(assert (=> b!701697 (=> (not res!465673) (not e!397334))))

(assert (=> b!701697 (= res!465673 (noDuplicate!1087 lt!317586))))

(declare-fun b!701698 () Bool)

(declare-fun res!465663 () Bool)

(assert (=> b!701698 (=> (not res!465663) (not e!397334))))

(declare-fun subseq!284 (List!13297 List!13297) Bool)

(assert (=> b!701698 (= res!465663 (subseq!284 lt!317586 lt!317584))))

(declare-fun b!701699 () Bool)

(declare-fun res!465670 () Bool)

(assert (=> b!701699 (=> (not res!465670) (not e!397335))))

(assert (=> b!701699 (= res!465670 (noDuplicate!1087 acc!652))))

(declare-fun b!701700 () Bool)

(declare-fun res!465683 () Bool)

(assert (=> b!701700 (=> (not res!465683) (not e!397335))))

(assert (=> b!701700 (= res!465683 (subseq!284 acc!652 newAcc!49))))

(declare-fun b!701701 () Bool)

(declare-fun res!465669 () Bool)

(assert (=> b!701701 (=> (not res!465669) (not e!397334))))

(assert (=> b!701701 (= res!465669 (noDuplicate!1087 lt!317584))))

(declare-fun b!701702 () Bool)

(declare-fun res!465665 () Bool)

(assert (=> b!701702 (=> (not res!465665) (not e!397334))))

(assert (=> b!701702 (= res!465665 (contains!3840 lt!317584 k!2824))))

(assert (= (and start!62466 res!465667) b!701699))

(assert (= (and b!701699 res!465670) b!701679))

(assert (= (and b!701679 res!465684) b!701694))

(assert (= (and b!701694 res!465681) b!701686))

(assert (= (and b!701686 res!465672) b!701678))

(assert (= (and b!701678 res!465668) b!701687))

(assert (= (and b!701687 res!465662) b!701689))

(assert (= (and b!701689 res!465675) b!701681))

(assert (= (and b!701681 res!465677) b!701700))

(assert (= (and b!701700 res!465683) b!701690))

(assert (= (and b!701690 res!465660) b!701693))

(assert (= (and b!701693 res!465666) b!701685))

(assert (= (and b!701685 res!465674) b!701676))

(assert (= (and b!701676 res!465664) b!701677))

(assert (= (and b!701677 res!465678) b!701695))

(assert (= (and b!701695 res!465680) b!701680))

(assert (= (and b!701680 res!465676) b!701697))

(assert (= (and b!701697 res!465673) b!701701))

(assert (= (and b!701701 res!465669) b!701682))

(assert (= (and b!701682 res!465659) b!701675))

(assert (= (and b!701675 res!465682) b!701696))

(assert (= (and b!701696 res!465685) b!701683))

(assert (= (and b!701683 res!465679) b!701691))

(assert (= (and b!701691 res!465671) b!701698))

(assert (= (and b!701698 res!465663) b!701702))

(assert (= (and b!701702 res!465665) b!701692))

(assert (= (and b!701692 res!465686) b!701688))

(assert (= (and b!701688 res!465661) b!701684))

(declare-fun m!661011 () Bool)

(assert (=> b!701702 m!661011))

(declare-fun m!661013 () Bool)

(assert (=> b!701685 m!661013))

(declare-fun m!661015 () Bool)

(assert (=> b!701686 m!661015))

(declare-fun m!661017 () Bool)

(assert (=> b!701699 m!661017))

(declare-fun m!661019 () Bool)

(assert (=> b!701682 m!661019))

(declare-fun m!661021 () Bool)

(assert (=> b!701689 m!661021))

(declare-fun m!661023 () Bool)

(assert (=> b!701693 m!661023))

(declare-fun m!661025 () Bool)

(assert (=> b!701680 m!661025))

(assert (=> b!701680 m!661025))

(declare-fun m!661027 () Bool)

(assert (=> b!701680 m!661027))

(assert (=> b!701680 m!661025))

(declare-fun m!661029 () Bool)

(assert (=> b!701680 m!661029))

(declare-fun m!661031 () Bool)

(assert (=> b!701679 m!661031))

(declare-fun m!661033 () Bool)

(assert (=> b!701688 m!661033))

(assert (=> b!701695 m!661025))

(assert (=> b!701695 m!661025))

(declare-fun m!661035 () Bool)

(assert (=> b!701695 m!661035))

(declare-fun m!661037 () Bool)

(assert (=> b!701700 m!661037))

(declare-fun m!661039 () Bool)

(assert (=> start!62466 m!661039))

(declare-fun m!661041 () Bool)

(assert (=> b!701676 m!661041))

(declare-fun m!661043 () Bool)

(assert (=> b!701683 m!661043))

(declare-fun m!661045 () Bool)

(assert (=> b!701698 m!661045))

(declare-fun m!661047 () Bool)

(assert (=> b!701694 m!661047))

(declare-fun m!661049 () Bool)

(assert (=> b!701691 m!661049))

(declare-fun m!661051 () Bool)

(assert (=> b!701701 m!661051))

(declare-fun m!661053 () Bool)

(assert (=> b!701697 m!661053))

(declare-fun m!661055 () Bool)

(assert (=> b!701692 m!661055))

(declare-fun m!661057 () Bool)

(assert (=> b!701675 m!661057))

(declare-fun m!661059 () Bool)

(assert (=> b!701684 m!661059))

(declare-fun m!661061 () Bool)

(assert (=> b!701678 m!661061))

(declare-fun m!661063 () Bool)

(assert (=> b!701690 m!661063))

(declare-fun m!661065 () Bool)

(assert (=> b!701681 m!661065))

(declare-fun m!661067 () Bool)

(assert (=> b!701696 m!661067))

(declare-fun m!661069 () Bool)

(assert (=> b!701687 m!661069))

(push 1)

