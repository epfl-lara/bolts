; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134290 () Bool)

(assert start!134290)

(declare-fun b!1568028 () Bool)

(declare-fun res!1071857 () Bool)

(declare-fun e!874150 () Bool)

(assert (=> b!1568028 (=> (not res!1071857) (not e!874150))))

(declare-datatypes ((List!36847 0))(
  ( (Nil!36844) (Cons!36843 (h!38291 (_ BitVec 64)) (t!51762 List!36847)) )
))
(declare-fun acc!619 () List!36847)

(declare-fun contains!10406 (List!36847 (_ BitVec 64)) Bool)

(assert (=> b!1568028 (= res!1071857 (not (contains!10406 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568029 () Bool)

(declare-fun res!1071854 () Bool)

(assert (=> b!1568029 (=> (not res!1071854) (not e!874150))))

(assert (=> b!1568029 (= res!1071854 (not (contains!10406 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568030 () Bool)

(assert (=> b!1568030 (= e!874150 false)))

(declare-fun lt!673045 () Bool)

(declare-fun e!874152 () Bool)

(assert (=> b!1568030 (= lt!673045 e!874152)))

(declare-fun res!1071855 () Bool)

(assert (=> b!1568030 (=> res!1071855 e!874152)))

(declare-datatypes ((array!104721 0))(
  ( (array!104722 (arr!50536 (Array (_ BitVec 32) (_ BitVec 64))) (size!51087 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104721)

(declare-fun from!2856 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1568030 (= res!1071855 (not (validKeyInArray!0 (select (arr!50536 a!3481) from!2856))))))

(declare-fun b!1568031 () Bool)

(declare-fun res!1071852 () Bool)

(assert (=> b!1568031 (=> (not res!1071852) (not e!874150))))

(assert (=> b!1568031 (= res!1071852 (bvslt from!2856 (size!51087 a!3481)))))

(declare-fun b!1568032 () Bool)

(declare-fun res!1071853 () Bool)

(assert (=> b!1568032 (=> (not res!1071853) (not e!874150))))

(declare-fun noDuplicate!2697 (List!36847) Bool)

(assert (=> b!1568032 (= res!1071853 (noDuplicate!2697 acc!619))))

(declare-fun res!1071856 () Bool)

(assert (=> start!134290 (=> (not res!1071856) (not e!874150))))

(assert (=> start!134290 (= res!1071856 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51087 a!3481)) (bvslt (size!51087 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134290 e!874150))

(assert (=> start!134290 true))

(declare-fun array_inv!39181 (array!104721) Bool)

(assert (=> start!134290 (array_inv!39181 a!3481)))

(declare-fun b!1568033 () Bool)

(assert (=> b!1568033 (= e!874152 (not (contains!10406 acc!619 (select (arr!50536 a!3481) from!2856))))))

(assert (= (and start!134290 res!1071856) b!1568032))

(assert (= (and b!1568032 res!1071853) b!1568029))

(assert (= (and b!1568029 res!1071854) b!1568028))

(assert (= (and b!1568028 res!1071857) b!1568031))

(assert (= (and b!1568031 res!1071852) b!1568030))

(assert (= (and b!1568030 (not res!1071855)) b!1568033))

(declare-fun m!1442797 () Bool)

(assert (=> b!1568030 m!1442797))

(assert (=> b!1568030 m!1442797))

(declare-fun m!1442799 () Bool)

(assert (=> b!1568030 m!1442799))

(declare-fun m!1442801 () Bool)

(assert (=> start!134290 m!1442801))

(assert (=> b!1568033 m!1442797))

(assert (=> b!1568033 m!1442797))

(declare-fun m!1442803 () Bool)

(assert (=> b!1568033 m!1442803))

(declare-fun m!1442805 () Bool)

(assert (=> b!1568029 m!1442805))

(declare-fun m!1442807 () Bool)

(assert (=> b!1568032 m!1442807))

(declare-fun m!1442809 () Bool)

(assert (=> b!1568028 m!1442809))

(push 1)

(assert (not b!1568030))

(assert (not b!1568032))

(assert (not b!1568028))

(assert (not b!1568029))

(assert (not start!134290))

(assert (not b!1568033))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

