; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134302 () Bool)

(assert start!134302)

(declare-fun res!1071955 () Bool)

(declare-fun e!874203 () Bool)

(assert (=> start!134302 (=> (not res!1071955) (not e!874203))))

(declare-fun from!2856 () (_ BitVec 32))

(declare-datatypes ((array!104733 0))(
  ( (array!104734 (arr!50542 (Array (_ BitVec 32) (_ BitVec 64))) (size!51093 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104733)

(assert (=> start!134302 (= res!1071955 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51093 a!3481)) (bvslt (size!51093 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134302 e!874203))

(assert (=> start!134302 true))

(declare-fun array_inv!39187 (array!104733) Bool)

(assert (=> start!134302 (array_inv!39187 a!3481)))

(declare-fun b!1568130 () Bool)

(declare-fun res!1071954 () Bool)

(assert (=> b!1568130 (=> (not res!1071954) (not e!874203))))

(declare-datatypes ((List!36853 0))(
  ( (Nil!36850) (Cons!36849 (h!38297 (_ BitVec 64)) (t!51768 List!36853)) )
))
(declare-fun acc!619 () List!36853)

(declare-fun noDuplicate!2703 (List!36853) Bool)

(assert (=> b!1568130 (= res!1071954 (noDuplicate!2703 acc!619))))

(declare-fun b!1568131 () Bool)

(declare-fun res!1071956 () Bool)

(assert (=> b!1568131 (=> (not res!1071956) (not e!874203))))

(declare-fun contains!10412 (List!36853 (_ BitVec 64)) Bool)

(assert (=> b!1568131 (= res!1071956 (not (contains!10412 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568132 () Bool)

(assert (=> b!1568132 (= e!874203 false)))

(declare-fun lt!673063 () Bool)

(assert (=> b!1568132 (= lt!673063 (contains!10412 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!134302 res!1071955) b!1568130))

(assert (= (and b!1568130 res!1071954) b!1568131))

(assert (= (and b!1568131 res!1071956) b!1568132))

(declare-fun m!1442881 () Bool)

(assert (=> start!134302 m!1442881))

(declare-fun m!1442883 () Bool)

(assert (=> b!1568130 m!1442883))

(declare-fun m!1442885 () Bool)

(assert (=> b!1568131 m!1442885))

(declare-fun m!1442887 () Bool)

(assert (=> b!1568132 m!1442887))

(push 1)

(assert (not b!1568130))

(assert (not b!1568132))

(assert (not b!1568131))

(assert (not start!134302))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

