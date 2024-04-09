; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118234 () Bool)

(assert start!118234)

(declare-fun res!924540 () Bool)

(declare-fun e!783815 () Bool)

(assert (=> start!118234 (=> (not res!924540) (not e!783815))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118234 (= res!924540 (validMask!0 mask!2987))))

(assert (=> start!118234 e!783815))

(assert (=> start!118234 true))

(declare-datatypes ((array!94455 0))(
  ( (array!94456 (arr!45601 (Array (_ BitVec 32) (_ BitVec 64))) (size!46152 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94455)

(declare-fun array_inv!34546 (array!94455) Bool)

(assert (=> start!118234 (array_inv!34546 a!2938)))

(declare-fun b!1382837 () Bool)

(declare-fun res!924539 () Bool)

(assert (=> b!1382837 (=> (not res!924539) (not e!783815))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1382837 (= res!924539 (and (= (size!46152 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46152 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46152 a!2938))))))

(declare-fun b!1382838 () Bool)

(declare-fun res!924538 () Bool)

(assert (=> b!1382838 (=> (not res!924538) (not e!783815))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382838 (= res!924538 (validKeyInArray!0 (select (arr!45601 a!2938) i!1065)))))

(declare-fun b!1382839 () Bool)

(assert (=> b!1382839 (= e!783815 false)))

(declare-fun lt!608428 () Bool)

(declare-datatypes ((List!32309 0))(
  ( (Nil!32306) (Cons!32305 (h!33514 (_ BitVec 64)) (t!47010 List!32309)) )
))
(declare-fun arrayNoDuplicates!0 (array!94455 (_ BitVec 32) List!32309) Bool)

(assert (=> b!1382839 (= lt!608428 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32306))))

(assert (= (and start!118234 res!924540) b!1382837))

(assert (= (and b!1382837 res!924539) b!1382838))

(assert (= (and b!1382838 res!924538) b!1382839))

(declare-fun m!1267997 () Bool)

(assert (=> start!118234 m!1267997))

(declare-fun m!1267999 () Bool)

(assert (=> start!118234 m!1267999))

(declare-fun m!1268001 () Bool)

(assert (=> b!1382838 m!1268001))

(assert (=> b!1382838 m!1268001))

(declare-fun m!1268003 () Bool)

(assert (=> b!1382838 m!1268003))

(declare-fun m!1268005 () Bool)

(assert (=> b!1382839 m!1268005))

(push 1)

(assert (not b!1382838))

(assert (not b!1382839))

(assert (not start!118234))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

