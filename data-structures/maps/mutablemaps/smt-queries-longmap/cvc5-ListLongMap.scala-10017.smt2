; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118246 () Bool)

(assert start!118246)

(declare-fun res!924594 () Bool)

(declare-fun e!783851 () Bool)

(assert (=> start!118246 (=> (not res!924594) (not e!783851))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118246 (= res!924594 (validMask!0 mask!2987))))

(assert (=> start!118246 e!783851))

(assert (=> start!118246 true))

(declare-datatypes ((array!94467 0))(
  ( (array!94468 (arr!45607 (Array (_ BitVec 32) (_ BitVec 64))) (size!46158 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94467)

(declare-fun array_inv!34552 (array!94467) Bool)

(assert (=> start!118246 (array_inv!34552 a!2938)))

(declare-fun b!1382891 () Bool)

(declare-fun res!924593 () Bool)

(assert (=> b!1382891 (=> (not res!924593) (not e!783851))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1382891 (= res!924593 (and (= (size!46158 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46158 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46158 a!2938))))))

(declare-fun b!1382892 () Bool)

(declare-fun res!924592 () Bool)

(assert (=> b!1382892 (=> (not res!924592) (not e!783851))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382892 (= res!924592 (validKeyInArray!0 (select (arr!45607 a!2938) i!1065)))))

(declare-fun b!1382893 () Bool)

(assert (=> b!1382893 (= e!783851 false)))

(declare-fun lt!608446 () Bool)

(declare-datatypes ((List!32315 0))(
  ( (Nil!32312) (Cons!32311 (h!33520 (_ BitVec 64)) (t!47016 List!32315)) )
))
(declare-fun arrayNoDuplicates!0 (array!94467 (_ BitVec 32) List!32315) Bool)

(assert (=> b!1382893 (= lt!608446 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32312))))

(assert (= (and start!118246 res!924594) b!1382891))

(assert (= (and b!1382891 res!924593) b!1382892))

(assert (= (and b!1382892 res!924592) b!1382893))

(declare-fun m!1268057 () Bool)

(assert (=> start!118246 m!1268057))

(declare-fun m!1268059 () Bool)

(assert (=> start!118246 m!1268059))

(declare-fun m!1268061 () Bool)

(assert (=> b!1382892 m!1268061))

(assert (=> b!1382892 m!1268061))

(declare-fun m!1268063 () Bool)

(assert (=> b!1382892 m!1268063))

(declare-fun m!1268065 () Bool)

(assert (=> b!1382893 m!1268065))

(push 1)

(assert (not start!118246))

(assert (not b!1382893))

(assert (not b!1382892))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

