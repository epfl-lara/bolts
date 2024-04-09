; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134294 () Bool)

(assert start!134294)

(declare-fun b!1568064 () Bool)

(declare-fun e!874168 () Bool)

(assert (=> b!1568064 (= e!874168 false)))

(declare-fun lt!673051 () Bool)

(declare-fun e!874170 () Bool)

(assert (=> b!1568064 (= lt!673051 e!874170)))

(declare-fun res!1071888 () Bool)

(assert (=> b!1568064 (=> res!1071888 e!874170)))

(declare-datatypes ((array!104725 0))(
  ( (array!104726 (arr!50538 (Array (_ BitVec 32) (_ BitVec 64))) (size!51089 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104725)

(declare-fun from!2856 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1568064 (= res!1071888 (not (validKeyInArray!0 (select (arr!50538 a!3481) from!2856))))))

(declare-fun res!1071889 () Bool)

(assert (=> start!134294 (=> (not res!1071889) (not e!874168))))

(assert (=> start!134294 (= res!1071889 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51089 a!3481)) (bvslt (size!51089 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134294 e!874168))

(assert (=> start!134294 true))

(declare-fun array_inv!39183 (array!104725) Bool)

(assert (=> start!134294 (array_inv!39183 a!3481)))

(declare-fun b!1568065 () Bool)

(declare-fun res!1071893 () Bool)

(assert (=> b!1568065 (=> (not res!1071893) (not e!874168))))

(declare-datatypes ((List!36849 0))(
  ( (Nil!36846) (Cons!36845 (h!38293 (_ BitVec 64)) (t!51764 List!36849)) )
))
(declare-fun acc!619 () List!36849)

(declare-fun contains!10408 (List!36849 (_ BitVec 64)) Bool)

(assert (=> b!1568065 (= res!1071893 (not (contains!10408 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568066 () Bool)

(declare-fun res!1071892 () Bool)

(assert (=> b!1568066 (=> (not res!1071892) (not e!874168))))

(assert (=> b!1568066 (= res!1071892 (not (contains!10408 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568067 () Bool)

(assert (=> b!1568067 (= e!874170 (not (contains!10408 acc!619 (select (arr!50538 a!3481) from!2856))))))

(declare-fun b!1568068 () Bool)

(declare-fun res!1071891 () Bool)

(assert (=> b!1568068 (=> (not res!1071891) (not e!874168))))

(declare-fun noDuplicate!2699 (List!36849) Bool)

(assert (=> b!1568068 (= res!1071891 (noDuplicate!2699 acc!619))))

(declare-fun b!1568069 () Bool)

(declare-fun res!1071890 () Bool)

(assert (=> b!1568069 (=> (not res!1071890) (not e!874168))))

(assert (=> b!1568069 (= res!1071890 (bvslt from!2856 (size!51089 a!3481)))))

(assert (= (and start!134294 res!1071889) b!1568068))

(assert (= (and b!1568068 res!1071891) b!1568065))

(assert (= (and b!1568065 res!1071893) b!1568066))

(assert (= (and b!1568066 res!1071892) b!1568069))

(assert (= (and b!1568069 res!1071890) b!1568064))

(assert (= (and b!1568064 (not res!1071888)) b!1568067))

(declare-fun m!1442825 () Bool)

(assert (=> b!1568068 m!1442825))

(declare-fun m!1442827 () Bool)

(assert (=> b!1568065 m!1442827))

(declare-fun m!1442829 () Bool)

(assert (=> start!134294 m!1442829))

(declare-fun m!1442831 () Bool)

(assert (=> b!1568064 m!1442831))

(assert (=> b!1568064 m!1442831))

(declare-fun m!1442833 () Bool)

(assert (=> b!1568064 m!1442833))

(declare-fun m!1442835 () Bool)

(assert (=> b!1568066 m!1442835))

(assert (=> b!1568067 m!1442831))

(assert (=> b!1568067 m!1442831))

(declare-fun m!1442837 () Bool)

(assert (=> b!1568067 m!1442837))

(push 1)

(assert (not b!1568065))

(assert (not b!1568067))

(assert (not b!1568068))

(assert (not start!134294))

(assert (not b!1568066))

(assert (not b!1568064))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

