; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115718 () Bool)

(assert start!115718)

(declare-fun res!911315 () Bool)

(declare-fun e!775127 () Bool)

(assert (=> start!115718 (=> (not res!911315) (not e!775127))))

(declare-datatypes ((array!92833 0))(
  ( (array!92834 (arr!44836 (Array (_ BitVec 32) (_ BitVec 64))) (size!45387 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92833)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115718 (= res!911315 (and (bvslt (size!45387 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45387 a!3861))))))

(assert (=> start!115718 e!775127))

(declare-fun array_inv!33781 (array!92833) Bool)

(assert (=> start!115718 (array_inv!33781 a!3861)))

(assert (=> start!115718 true))

(declare-fun b!1367683 () Bool)

(declare-fun res!911314 () Bool)

(declare-fun e!775129 () Bool)

(assert (=> b!1367683 (=> (not res!911314) (not e!775129))))

(assert (=> b!1367683 (= res!911314 (bvslt from!3239 (size!45387 a!3861)))))

(declare-fun b!1367684 () Bool)

(declare-fun res!911322 () Bool)

(assert (=> b!1367684 (=> (not res!911322) (not e!775127))))

(declare-datatypes ((List!32084 0))(
  ( (Nil!32081) (Cons!32080 (h!33289 (_ BitVec 64)) (t!46785 List!32084)) )
))
(declare-fun newAcc!98 () List!32084)

(declare-fun acc!866 () List!32084)

(declare-fun subseq!1013 (List!32084 List!32084) Bool)

(assert (=> b!1367684 (= res!911322 (subseq!1013 newAcc!98 acc!866))))

(declare-fun b!1367685 () Bool)

(declare-fun res!911321 () Bool)

(assert (=> b!1367685 (=> (not res!911321) (not e!775127))))

(declare-fun contains!9622 (List!32084 (_ BitVec 64)) Bool)

(assert (=> b!1367685 (= res!911321 (not (contains!9622 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367686 () Bool)

(declare-fun res!911319 () Bool)

(assert (=> b!1367686 (=> (not res!911319) (not e!775127))))

(assert (=> b!1367686 (= res!911319 (not (contains!9622 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367687 () Bool)

(declare-fun res!911317 () Bool)

(assert (=> b!1367687 (=> (not res!911317) (not e!775129))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1367687 (= res!911317 (not (validKeyInArray!0 (select (arr!44836 a!3861) from!3239))))))

(declare-fun b!1367688 () Bool)

(declare-fun res!911320 () Bool)

(assert (=> b!1367688 (=> (not res!911320) (not e!775127))))

(assert (=> b!1367688 (= res!911320 (not (contains!9622 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1367689 () Bool)

(assert (=> b!1367689 (= e!775127 e!775129)))

(declare-fun res!911318 () Bool)

(assert (=> b!1367689 (=> (not res!911318) (not e!775129))))

(declare-fun arrayNoDuplicates!0 (array!92833 (_ BitVec 32) List!32084) Bool)

(assert (=> b!1367689 (= res!911318 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45107 0))(
  ( (Unit!45108) )
))
(declare-fun lt!601879 () Unit!45107)

(declare-fun noDuplicateSubseq!200 (List!32084 List!32084) Unit!45107)

(assert (=> b!1367689 (= lt!601879 (noDuplicateSubseq!200 newAcc!98 acc!866))))

(declare-fun b!1367690 () Bool)

(declare-fun res!911316 () Bool)

(assert (=> b!1367690 (=> (not res!911316) (not e!775127))))

(declare-fun noDuplicate!2501 (List!32084) Bool)

(assert (=> b!1367690 (= res!911316 (noDuplicate!2501 acc!866))))

(declare-fun b!1367691 () Bool)

(assert (=> b!1367691 (= e!775129 false)))

(declare-fun lt!601880 () Bool)

(assert (=> b!1367691 (= lt!601880 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1367692 () Bool)

(declare-fun res!911312 () Bool)

(assert (=> b!1367692 (=> (not res!911312) (not e!775129))))

(assert (=> b!1367692 (= res!911312 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1367693 () Bool)

(declare-fun res!911313 () Bool)

(assert (=> b!1367693 (=> (not res!911313) (not e!775127))))

(assert (=> b!1367693 (= res!911313 (not (contains!9622 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!115718 res!911315) b!1367690))

(assert (= (and b!1367690 res!911316) b!1367685))

(assert (= (and b!1367685 res!911321) b!1367688))

(assert (= (and b!1367688 res!911320) b!1367686))

(assert (= (and b!1367686 res!911319) b!1367693))

(assert (= (and b!1367693 res!911313) b!1367684))

(assert (= (and b!1367684 res!911322) b!1367689))

(assert (= (and b!1367689 res!911318) b!1367683))

(assert (= (and b!1367683 res!911314) b!1367687))

(assert (= (and b!1367687 res!911317) b!1367692))

(assert (= (and b!1367692 res!911312) b!1367691))

(declare-fun m!1251871 () Bool)

(assert (=> b!1367691 m!1251871))

(declare-fun m!1251873 () Bool)

(assert (=> b!1367686 m!1251873))

(declare-fun m!1251875 () Bool)

(assert (=> b!1367693 m!1251875))

(declare-fun m!1251877 () Bool)

(assert (=> b!1367688 m!1251877))

(declare-fun m!1251879 () Bool)

(assert (=> b!1367685 m!1251879))

(declare-fun m!1251881 () Bool)

(assert (=> b!1367687 m!1251881))

(assert (=> b!1367687 m!1251881))

(declare-fun m!1251883 () Bool)

(assert (=> b!1367687 m!1251883))

(declare-fun m!1251885 () Bool)

(assert (=> b!1367690 m!1251885))

(declare-fun m!1251887 () Bool)

(assert (=> b!1367684 m!1251887))

(declare-fun m!1251889 () Bool)

(assert (=> start!115718 m!1251889))

(declare-fun m!1251891 () Bool)

(assert (=> b!1367689 m!1251891))

(declare-fun m!1251893 () Bool)

(assert (=> b!1367689 m!1251893))

(push 1)

