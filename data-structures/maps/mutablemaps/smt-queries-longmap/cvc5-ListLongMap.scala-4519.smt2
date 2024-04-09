; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62598 () Bool)

(assert start!62598)

(declare-fun res!469719 () Bool)

(declare-fun e!397773 () Bool)

(assert (=> start!62598 (=> (not res!469719) (not e!397773))))

(declare-datatypes ((array!40233 0))(
  ( (array!40234 (arr!19269 (Array (_ BitVec 32) (_ BitVec 64))) (size!19652 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40233)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62598 (= res!469719 (and (bvslt (size!19652 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19652 a!3591))))))

(assert (=> start!62598 e!397773))

(assert (=> start!62598 true))

(declare-fun array_inv!15043 (array!40233) Bool)

(assert (=> start!62598 (array_inv!15043 a!3591)))

(declare-fun b!705734 () Bool)

(declare-fun res!469721 () Bool)

(assert (=> b!705734 (=> (not res!469721) (not e!397773))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40233 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!705734 (= res!469721 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!705735 () Bool)

(declare-fun res!469726 () Bool)

(assert (=> b!705735 (=> (not res!469726) (not e!397773))))

(declare-datatypes ((List!13363 0))(
  ( (Nil!13360) (Cons!13359 (h!14404 (_ BitVec 64)) (t!19653 List!13363)) )
))
(declare-fun acc!652 () List!13363)

(declare-fun arrayNoDuplicates!0 (array!40233 (_ BitVec 32) List!13363) Bool)

(assert (=> b!705735 (= res!469726 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!705736 () Bool)

(declare-fun res!469727 () Bool)

(assert (=> b!705736 (=> (not res!469727) (not e!397773))))

(declare-fun contains!3906 (List!13363 (_ BitVec 64)) Bool)

(assert (=> b!705736 (= res!469727 (not (contains!3906 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705737 () Bool)

(assert (=> b!705737 (= e!397773 (not true))))

(declare-fun newAcc!49 () List!13363)

(assert (=> b!705737 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) newAcc!49)))

(declare-datatypes ((Unit!24604 0))(
  ( (Unit!24605) )
))
(declare-fun lt!317868 () Unit!24604)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40233 (_ BitVec 64) (_ BitVec 32) List!13363 List!13363) Unit!24604)

(assert (=> b!705737 (= lt!317868 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969) acc!652 newAcc!49))))

(declare-fun b!705738 () Bool)

(declare-fun res!469725 () Bool)

(assert (=> b!705738 (=> (not res!469725) (not e!397773))))

(assert (=> b!705738 (= res!469725 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!705739 () Bool)

(declare-fun res!469734 () Bool)

(assert (=> b!705739 (=> (not res!469734) (not e!397773))))

(declare-fun subseq!350 (List!13363 List!13363) Bool)

(assert (=> b!705739 (= res!469734 (subseq!350 acc!652 newAcc!49))))

(declare-fun b!705740 () Bool)

(declare-fun res!469718 () Bool)

(assert (=> b!705740 (=> (not res!469718) (not e!397773))))

(declare-fun noDuplicate!1153 (List!13363) Bool)

(assert (=> b!705740 (= res!469718 (noDuplicate!1153 acc!652))))

(declare-fun b!705741 () Bool)

(declare-fun res!469733 () Bool)

(assert (=> b!705741 (=> (not res!469733) (not e!397773))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!705741 (= res!469733 (not (validKeyInArray!0 (select (arr!19269 a!3591) from!2969))))))

(declare-fun b!705742 () Bool)

(declare-fun res!469731 () Bool)

(assert (=> b!705742 (=> (not res!469731) (not e!397773))))

(assert (=> b!705742 (= res!469731 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19652 a!3591)))))

(declare-fun b!705743 () Bool)

(declare-fun res!469730 () Bool)

(assert (=> b!705743 (=> (not res!469730) (not e!397773))))

(assert (=> b!705743 (= res!469730 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!705744 () Bool)

(declare-fun res!469728 () Bool)

(assert (=> b!705744 (=> (not res!469728) (not e!397773))))

(assert (=> b!705744 (= res!469728 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!705745 () Bool)

(declare-fun res!469723 () Bool)

(assert (=> b!705745 (=> (not res!469723) (not e!397773))))

(assert (=> b!705745 (= res!469723 (validKeyInArray!0 k!2824))))

(declare-fun b!705746 () Bool)

(declare-fun res!469736 () Bool)

(assert (=> b!705746 (=> (not res!469736) (not e!397773))))

(assert (=> b!705746 (= res!469736 (not (contains!3906 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705747 () Bool)

(declare-fun res!469724 () Bool)

(assert (=> b!705747 (=> (not res!469724) (not e!397773))))

(assert (=> b!705747 (= res!469724 (not (contains!3906 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705748 () Bool)

(declare-fun res!469732 () Bool)

(assert (=> b!705748 (=> (not res!469732) (not e!397773))))

(assert (=> b!705748 (= res!469732 (noDuplicate!1153 newAcc!49))))

(declare-fun b!705749 () Bool)

(declare-fun res!469720 () Bool)

(assert (=> b!705749 (=> (not res!469720) (not e!397773))))

(declare-fun -!315 (List!13363 (_ BitVec 64)) List!13363)

(assert (=> b!705749 (= res!469720 (= (-!315 newAcc!49 k!2824) acc!652))))

(declare-fun b!705750 () Bool)

(declare-fun res!469729 () Bool)

(assert (=> b!705750 (=> (not res!469729) (not e!397773))))

(assert (=> b!705750 (= res!469729 (not (contains!3906 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!705751 () Bool)

(declare-fun res!469735 () Bool)

(assert (=> b!705751 (=> (not res!469735) (not e!397773))))

(assert (=> b!705751 (= res!469735 (contains!3906 newAcc!49 k!2824))))

(declare-fun b!705752 () Bool)

(declare-fun res!469722 () Bool)

(assert (=> b!705752 (=> (not res!469722) (not e!397773))))

(assert (=> b!705752 (= res!469722 (not (contains!3906 acc!652 k!2824)))))

(assert (= (and start!62598 res!469719) b!705740))

(assert (= (and b!705740 res!469718) b!705748))

(assert (= (and b!705748 res!469732) b!705747))

(assert (= (and b!705747 res!469724) b!705736))

(assert (= (and b!705736 res!469727) b!705744))

(assert (= (and b!705744 res!469728) b!705752))

(assert (= (and b!705752 res!469722) b!705745))

(assert (= (and b!705745 res!469723) b!705735))

(assert (= (and b!705735 res!469726) b!705739))

(assert (= (and b!705739 res!469734) b!705751))

(assert (= (and b!705751 res!469735) b!705749))

(assert (= (and b!705749 res!469720) b!705746))

(assert (= (and b!705746 res!469736) b!705750))

(assert (= (and b!705750 res!469729) b!705742))

(assert (= (and b!705742 res!469731) b!705741))

(assert (= (and b!705741 res!469733) b!705743))

(assert (= (and b!705743 res!469730) b!705734))

(assert (= (and b!705734 res!469721) b!705738))

(assert (= (and b!705738 res!469725) b!705737))

(declare-fun m!663831 () Bool)

(assert (=> b!705736 m!663831))

(declare-fun m!663833 () Bool)

(assert (=> b!705737 m!663833))

(declare-fun m!663835 () Bool)

(assert (=> b!705737 m!663835))

(declare-fun m!663837 () Bool)

(assert (=> b!705741 m!663837))

(assert (=> b!705741 m!663837))

(declare-fun m!663839 () Bool)

(assert (=> b!705741 m!663839))

(declare-fun m!663841 () Bool)

(assert (=> b!705735 m!663841))

(declare-fun m!663843 () Bool)

(assert (=> b!705744 m!663843))

(declare-fun m!663845 () Bool)

(assert (=> b!705740 m!663845))

(declare-fun m!663847 () Bool)

(assert (=> b!705738 m!663847))

(declare-fun m!663849 () Bool)

(assert (=> b!705747 m!663849))

(declare-fun m!663851 () Bool)

(assert (=> b!705746 m!663851))

(declare-fun m!663853 () Bool)

(assert (=> b!705745 m!663853))

(declare-fun m!663855 () Bool)

(assert (=> b!705751 m!663855))

(declare-fun m!663857 () Bool)

(assert (=> b!705748 m!663857))

(declare-fun m!663859 () Bool)

(assert (=> b!705752 m!663859))

(declare-fun m!663861 () Bool)

(assert (=> start!62598 m!663861))

(declare-fun m!663863 () Bool)

(assert (=> b!705734 m!663863))

(declare-fun m!663865 () Bool)

(assert (=> b!705739 m!663865))

(declare-fun m!663867 () Bool)

(assert (=> b!705750 m!663867))

(declare-fun m!663869 () Bool)

(assert (=> b!705749 m!663869))

(push 1)

(assert (not b!705746))

(assert (not b!705737))

(assert (not b!705751))

(assert (not b!705735))

(assert (not b!705750))

(assert (not b!705747))

(assert (not b!705741))

(assert (not b!705739))

(assert (not b!705740))

(assert (not start!62598))

(assert (not b!705749))

(assert (not b!705745))

(assert (not b!705744))

(assert (not b!705752))

(assert (not b!705734))

(assert (not b!705736))

(assert (not b!705748))

(assert (not b!705738))

(check-sat)

(pop 1)

(push 1)

(check-sat)

