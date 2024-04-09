; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134318 () Bool)

(assert start!134318)

(declare-fun res!1072028 () Bool)

(declare-fun e!874251 () Bool)

(assert (=> start!134318 (=> (not res!1072028) (not e!874251))))

(declare-fun from!2856 () (_ BitVec 32))

(declare-datatypes ((array!104749 0))(
  ( (array!104750 (arr!50550 (Array (_ BitVec 32) (_ BitVec 64))) (size!51101 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104749)

(assert (=> start!134318 (= res!1072028 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51101 a!3481)) (bvslt (size!51101 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134318 e!874251))

(assert (=> start!134318 true))

(declare-fun array_inv!39195 (array!104749) Bool)

(assert (=> start!134318 (array_inv!39195 a!3481)))

(declare-fun b!1568202 () Bool)

(declare-fun res!1072027 () Bool)

(assert (=> b!1568202 (=> (not res!1072027) (not e!874251))))

(declare-datatypes ((List!36861 0))(
  ( (Nil!36858) (Cons!36857 (h!38305 (_ BitVec 64)) (t!51776 List!36861)) )
))
(declare-fun acc!619 () List!36861)

(declare-fun noDuplicate!2711 (List!36861) Bool)

(assert (=> b!1568202 (= res!1072027 (noDuplicate!2711 acc!619))))

(declare-fun b!1568203 () Bool)

(declare-fun res!1072026 () Bool)

(assert (=> b!1568203 (=> (not res!1072026) (not e!874251))))

(declare-fun contains!10420 (List!36861 (_ BitVec 64)) Bool)

(assert (=> b!1568203 (= res!1072026 (not (contains!10420 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568204 () Bool)

(assert (=> b!1568204 (= e!874251 false)))

(declare-fun lt!673087 () Bool)

(assert (=> b!1568204 (= lt!673087 (contains!10420 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!134318 res!1072028) b!1568202))

(assert (= (and b!1568202 res!1072027) b!1568203))

(assert (= (and b!1568203 res!1072026) b!1568204))

(declare-fun m!1442945 () Bool)

(assert (=> start!134318 m!1442945))

(declare-fun m!1442947 () Bool)

(assert (=> b!1568202 m!1442947))

(declare-fun m!1442949 () Bool)

(assert (=> b!1568203 m!1442949))

(declare-fun m!1442951 () Bool)

(assert (=> b!1568204 m!1442951))

(push 1)

(assert (not start!134318))

(assert (not b!1568204))

(assert (not b!1568202))

(assert (not b!1568203))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

