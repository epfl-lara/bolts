; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134296 () Bool)

(assert start!134296)

(declare-fun b!1568082 () Bool)

(declare-fun e!874177 () Bool)

(assert (=> b!1568082 (= e!874177 false)))

(declare-fun lt!673054 () Bool)

(declare-fun e!874179 () Bool)

(assert (=> b!1568082 (= lt!673054 e!874179)))

(declare-fun res!1071907 () Bool)

(assert (=> b!1568082 (=> res!1071907 e!874179)))

(declare-datatypes ((array!104727 0))(
  ( (array!104728 (arr!50539 (Array (_ BitVec 32) (_ BitVec 64))) (size!51090 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104727)

(declare-fun from!2856 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1568082 (= res!1071907 (not (validKeyInArray!0 (select (arr!50539 a!3481) from!2856))))))

(declare-fun b!1568083 () Bool)

(declare-fun res!1071908 () Bool)

(assert (=> b!1568083 (=> (not res!1071908) (not e!874177))))

(declare-datatypes ((List!36850 0))(
  ( (Nil!36847) (Cons!36846 (h!38294 (_ BitVec 64)) (t!51765 List!36850)) )
))
(declare-fun acc!619 () List!36850)

(declare-fun contains!10409 (List!36850 (_ BitVec 64)) Bool)

(assert (=> b!1568083 (= res!1071908 (not (contains!10409 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568084 () Bool)

(declare-fun res!1071909 () Bool)

(assert (=> b!1568084 (=> (not res!1071909) (not e!874177))))

(assert (=> b!1568084 (= res!1071909 (not (contains!10409 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568085 () Bool)

(assert (=> b!1568085 (= e!874179 (not (contains!10409 acc!619 (select (arr!50539 a!3481) from!2856))))))

(declare-fun res!1071906 () Bool)

(assert (=> start!134296 (=> (not res!1071906) (not e!874177))))

(assert (=> start!134296 (= res!1071906 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51090 a!3481)) (bvslt (size!51090 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134296 e!874177))

(assert (=> start!134296 true))

(declare-fun array_inv!39184 (array!104727) Bool)

(assert (=> start!134296 (array_inv!39184 a!3481)))

(declare-fun b!1568086 () Bool)

(declare-fun res!1071911 () Bool)

(assert (=> b!1568086 (=> (not res!1071911) (not e!874177))))

(declare-fun noDuplicate!2700 (List!36850) Bool)

(assert (=> b!1568086 (= res!1071911 (noDuplicate!2700 acc!619))))

(declare-fun b!1568087 () Bool)

(declare-fun res!1071910 () Bool)

(assert (=> b!1568087 (=> (not res!1071910) (not e!874177))))

(assert (=> b!1568087 (= res!1071910 (bvslt from!2856 (size!51090 a!3481)))))

(assert (= (and start!134296 res!1071906) b!1568086))

(assert (= (and b!1568086 res!1071911) b!1568083))

(assert (= (and b!1568083 res!1071908) b!1568084))

(assert (= (and b!1568084 res!1071909) b!1568087))

(assert (= (and b!1568087 res!1071910) b!1568082))

(assert (= (and b!1568082 (not res!1071907)) b!1568085))

(declare-fun m!1442839 () Bool)

(assert (=> b!1568085 m!1442839))

(assert (=> b!1568085 m!1442839))

(declare-fun m!1442841 () Bool)

(assert (=> b!1568085 m!1442841))

(assert (=> b!1568082 m!1442839))

(assert (=> b!1568082 m!1442839))

(declare-fun m!1442843 () Bool)

(assert (=> b!1568082 m!1442843))

(declare-fun m!1442845 () Bool)

(assert (=> b!1568083 m!1442845))

(declare-fun m!1442847 () Bool)

(assert (=> b!1568086 m!1442847))

(declare-fun m!1442849 () Bool)

(assert (=> b!1568084 m!1442849))

(declare-fun m!1442851 () Bool)

(assert (=> start!134296 m!1442851))

(push 1)

(assert (not b!1568085))

(assert (not start!134296))

(assert (not b!1568086))

(assert (not b!1568082))

(assert (not b!1568084))

(assert (not b!1568083))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

