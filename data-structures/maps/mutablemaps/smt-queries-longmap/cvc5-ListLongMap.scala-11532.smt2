; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134308 () Bool)

(assert start!134308)

(declare-fun res!1071981 () Bool)

(declare-fun e!874220 () Bool)

(assert (=> start!134308 (=> (not res!1071981) (not e!874220))))

(declare-fun from!2856 () (_ BitVec 32))

(declare-datatypes ((array!104739 0))(
  ( (array!104740 (arr!50545 (Array (_ BitVec 32) (_ BitVec 64))) (size!51096 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104739)

(assert (=> start!134308 (= res!1071981 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51096 a!3481)) (bvslt (size!51096 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134308 e!874220))

(assert (=> start!134308 true))

(declare-fun array_inv!39190 (array!104739) Bool)

(assert (=> start!134308 (array_inv!39190 a!3481)))

(declare-fun b!1568157 () Bool)

(declare-fun res!1071983 () Bool)

(assert (=> b!1568157 (=> (not res!1071983) (not e!874220))))

(declare-datatypes ((List!36856 0))(
  ( (Nil!36853) (Cons!36852 (h!38300 (_ BitVec 64)) (t!51771 List!36856)) )
))
(declare-fun acc!619 () List!36856)

(declare-fun noDuplicate!2706 (List!36856) Bool)

(assert (=> b!1568157 (= res!1071983 (noDuplicate!2706 acc!619))))

(declare-fun b!1568158 () Bool)

(declare-fun res!1071982 () Bool)

(assert (=> b!1568158 (=> (not res!1071982) (not e!874220))))

(declare-fun contains!10415 (List!36856 (_ BitVec 64)) Bool)

(assert (=> b!1568158 (= res!1071982 (not (contains!10415 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568159 () Bool)

(assert (=> b!1568159 (= e!874220 false)))

(declare-fun lt!673072 () Bool)

(assert (=> b!1568159 (= lt!673072 (contains!10415 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!134308 res!1071981) b!1568157))

(assert (= (and b!1568157 res!1071983) b!1568158))

(assert (= (and b!1568158 res!1071982) b!1568159))

(declare-fun m!1442905 () Bool)

(assert (=> start!134308 m!1442905))

(declare-fun m!1442907 () Bool)

(assert (=> b!1568157 m!1442907))

(declare-fun m!1442909 () Bool)

(assert (=> b!1568158 m!1442909))

(declare-fun m!1442911 () Bool)

(assert (=> b!1568159 m!1442911))

(push 1)

(assert (not start!134308))

(assert (not b!1568159))

(assert (not b!1568157))

(assert (not b!1568158))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

