; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134314 () Bool)

(assert start!134314)

(declare-fun res!1072008 () Bool)

(declare-fun e!874238 () Bool)

(assert (=> start!134314 (=> (not res!1072008) (not e!874238))))

(declare-fun from!2856 () (_ BitVec 32))

(declare-datatypes ((array!104745 0))(
  ( (array!104746 (arr!50548 (Array (_ BitVec 32) (_ BitVec 64))) (size!51099 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104745)

(assert (=> start!134314 (= res!1072008 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51099 a!3481)) (bvslt (size!51099 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134314 e!874238))

(assert (=> start!134314 true))

(declare-fun array_inv!39193 (array!104745) Bool)

(assert (=> start!134314 (array_inv!39193 a!3481)))

(declare-fun b!1568184 () Bool)

(declare-fun res!1072010 () Bool)

(assert (=> b!1568184 (=> (not res!1072010) (not e!874238))))

(declare-datatypes ((List!36859 0))(
  ( (Nil!36856) (Cons!36855 (h!38303 (_ BitVec 64)) (t!51774 List!36859)) )
))
(declare-fun acc!619 () List!36859)

(declare-fun noDuplicate!2709 (List!36859) Bool)

(assert (=> b!1568184 (= res!1072010 (noDuplicate!2709 acc!619))))

(declare-fun b!1568185 () Bool)

(declare-fun res!1072009 () Bool)

(assert (=> b!1568185 (=> (not res!1072009) (not e!874238))))

(declare-fun contains!10418 (List!36859 (_ BitVec 64)) Bool)

(assert (=> b!1568185 (= res!1072009 (not (contains!10418 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568186 () Bool)

(assert (=> b!1568186 (= e!874238 false)))

(declare-fun lt!673081 () Bool)

(assert (=> b!1568186 (= lt!673081 (contains!10418 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!134314 res!1072008) b!1568184))

(assert (= (and b!1568184 res!1072010) b!1568185))

(assert (= (and b!1568185 res!1072009) b!1568186))

(declare-fun m!1442929 () Bool)

(assert (=> start!134314 m!1442929))

(declare-fun m!1442931 () Bool)

(assert (=> b!1568184 m!1442931))

(declare-fun m!1442933 () Bool)

(assert (=> b!1568185 m!1442933))

(declare-fun m!1442935 () Bool)

(assert (=> b!1568186 m!1442935))

(push 1)

(assert (not b!1568186))

(assert (not b!1568185))

(assert (not start!134314))

(assert (not b!1568184))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

