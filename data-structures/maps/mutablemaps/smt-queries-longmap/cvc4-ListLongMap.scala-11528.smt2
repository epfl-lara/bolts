; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134288 () Bool)

(assert start!134288)

(declare-fun b!1568010 () Bool)

(declare-fun res!1071839 () Bool)

(declare-fun e!874142 () Bool)

(assert (=> b!1568010 (=> (not res!1071839) (not e!874142))))

(declare-fun from!2856 () (_ BitVec 32))

(declare-datatypes ((array!104719 0))(
  ( (array!104720 (arr!50535 (Array (_ BitVec 32) (_ BitVec 64))) (size!51086 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104719)

(assert (=> b!1568010 (= res!1071839 (bvslt from!2856 (size!51086 a!3481)))))

(declare-fun b!1568011 () Bool)

(declare-fun res!1071837 () Bool)

(assert (=> b!1568011 (=> (not res!1071837) (not e!874142))))

(declare-datatypes ((List!36846 0))(
  ( (Nil!36843) (Cons!36842 (h!38290 (_ BitVec 64)) (t!51761 List!36846)) )
))
(declare-fun acc!619 () List!36846)

(declare-fun noDuplicate!2696 (List!36846) Bool)

(assert (=> b!1568011 (= res!1071837 (noDuplicate!2696 acc!619))))

(declare-fun b!1568012 () Bool)

(declare-fun res!1071838 () Bool)

(assert (=> b!1568012 (=> (not res!1071838) (not e!874142))))

(declare-fun contains!10405 (List!36846 (_ BitVec 64)) Bool)

(assert (=> b!1568012 (= res!1071838 (not (contains!10405 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568013 () Bool)

(declare-fun res!1071836 () Bool)

(assert (=> b!1568013 (=> (not res!1071836) (not e!874142))))

(assert (=> b!1568013 (= res!1071836 (not (contains!10405 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1071834 () Bool)

(assert (=> start!134288 (=> (not res!1071834) (not e!874142))))

(assert (=> start!134288 (= res!1071834 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51086 a!3481)) (bvslt (size!51086 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134288 e!874142))

(assert (=> start!134288 true))

(declare-fun array_inv!39180 (array!104719) Bool)

(assert (=> start!134288 (array_inv!39180 a!3481)))

(declare-fun b!1568014 () Bool)

(assert (=> b!1568014 (= e!874142 false)))

(declare-fun lt!673042 () Bool)

(declare-fun e!874141 () Bool)

(assert (=> b!1568014 (= lt!673042 e!874141)))

(declare-fun res!1071835 () Bool)

(assert (=> b!1568014 (=> res!1071835 e!874141)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1568014 (= res!1071835 (not (validKeyInArray!0 (select (arr!50535 a!3481) from!2856))))))

(declare-fun b!1568015 () Bool)

(assert (=> b!1568015 (= e!874141 (not (contains!10405 acc!619 (select (arr!50535 a!3481) from!2856))))))

(assert (= (and start!134288 res!1071834) b!1568011))

(assert (= (and b!1568011 res!1071837) b!1568012))

(assert (= (and b!1568012 res!1071838) b!1568013))

(assert (= (and b!1568013 res!1071836) b!1568010))

(assert (= (and b!1568010 res!1071839) b!1568014))

(assert (= (and b!1568014 (not res!1071835)) b!1568015))

(declare-fun m!1442783 () Bool)

(assert (=> b!1568015 m!1442783))

(assert (=> b!1568015 m!1442783))

(declare-fun m!1442785 () Bool)

(assert (=> b!1568015 m!1442785))

(declare-fun m!1442787 () Bool)

(assert (=> b!1568011 m!1442787))

(declare-fun m!1442789 () Bool)

(assert (=> b!1568013 m!1442789))

(declare-fun m!1442791 () Bool)

(assert (=> start!134288 m!1442791))

(assert (=> b!1568014 m!1442783))

(assert (=> b!1568014 m!1442783))

(declare-fun m!1442793 () Bool)

(assert (=> b!1568014 m!1442793))

(declare-fun m!1442795 () Bool)

(assert (=> b!1568012 m!1442795))

(push 1)

(assert (not b!1568011))

(assert (not b!1568014))

(assert (not start!134288))

(assert (not b!1568013))

(assert (not b!1568015))

(assert (not b!1568012))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

