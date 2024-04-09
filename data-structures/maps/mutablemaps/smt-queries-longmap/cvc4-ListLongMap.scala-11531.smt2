; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134306 () Bool)

(assert start!134306)

(declare-fun res!1071972 () Bool)

(declare-fun e!874215 () Bool)

(assert (=> start!134306 (=> (not res!1071972) (not e!874215))))

(declare-fun from!2856 () (_ BitVec 32))

(declare-datatypes ((array!104737 0))(
  ( (array!104738 (arr!50544 (Array (_ BitVec 32) (_ BitVec 64))) (size!51095 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104737)

(assert (=> start!134306 (= res!1071972 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51095 a!3481)) (bvslt (size!51095 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134306 e!874215))

(assert (=> start!134306 true))

(declare-fun array_inv!39189 (array!104737) Bool)

(assert (=> start!134306 (array_inv!39189 a!3481)))

(declare-fun b!1568148 () Bool)

(declare-fun res!1071974 () Bool)

(assert (=> b!1568148 (=> (not res!1071974) (not e!874215))))

(declare-datatypes ((List!36855 0))(
  ( (Nil!36852) (Cons!36851 (h!38299 (_ BitVec 64)) (t!51770 List!36855)) )
))
(declare-fun acc!619 () List!36855)

(declare-fun noDuplicate!2705 (List!36855) Bool)

(assert (=> b!1568148 (= res!1071974 (noDuplicate!2705 acc!619))))

(declare-fun b!1568149 () Bool)

(declare-fun res!1071973 () Bool)

(assert (=> b!1568149 (=> (not res!1071973) (not e!874215))))

(declare-fun contains!10414 (List!36855 (_ BitVec 64)) Bool)

(assert (=> b!1568149 (= res!1071973 (not (contains!10414 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568150 () Bool)

(assert (=> b!1568150 (= e!874215 false)))

(declare-fun lt!673069 () Bool)

(assert (=> b!1568150 (= lt!673069 (contains!10414 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!134306 res!1071972) b!1568148))

(assert (= (and b!1568148 res!1071974) b!1568149))

(assert (= (and b!1568149 res!1071973) b!1568150))

(declare-fun m!1442897 () Bool)

(assert (=> start!134306 m!1442897))

(declare-fun m!1442899 () Bool)

(assert (=> b!1568148 m!1442899))

(declare-fun m!1442901 () Bool)

(assert (=> b!1568149 m!1442901))

(declare-fun m!1442903 () Bool)

(assert (=> b!1568150 m!1442903))

(push 1)

(assert (not start!134306))

(assert (not b!1568150))

(assert (not b!1568148))

(assert (not b!1568149))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

