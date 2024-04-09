; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118240 () Bool)

(assert start!118240)

(declare-fun res!924566 () Bool)

(declare-fun e!783832 () Bool)

(assert (=> start!118240 (=> (not res!924566) (not e!783832))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118240 (= res!924566 (validMask!0 mask!2987))))

(assert (=> start!118240 e!783832))

(assert (=> start!118240 true))

(declare-datatypes ((array!94461 0))(
  ( (array!94462 (arr!45604 (Array (_ BitVec 32) (_ BitVec 64))) (size!46155 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94461)

(declare-fun array_inv!34549 (array!94461) Bool)

(assert (=> start!118240 (array_inv!34549 a!2938)))

(declare-fun b!1382864 () Bool)

(declare-fun res!924567 () Bool)

(assert (=> b!1382864 (=> (not res!924567) (not e!783832))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1382864 (= res!924567 (and (= (size!46155 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46155 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46155 a!2938))))))

(declare-fun b!1382865 () Bool)

(declare-fun res!924565 () Bool)

(assert (=> b!1382865 (=> (not res!924565) (not e!783832))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382865 (= res!924565 (validKeyInArray!0 (select (arr!45604 a!2938) i!1065)))))

(declare-fun b!1382866 () Bool)

(assert (=> b!1382866 (= e!783832 false)))

(declare-fun lt!608437 () Bool)

(declare-datatypes ((List!32312 0))(
  ( (Nil!32309) (Cons!32308 (h!33517 (_ BitVec 64)) (t!47013 List!32312)) )
))
(declare-fun arrayNoDuplicates!0 (array!94461 (_ BitVec 32) List!32312) Bool)

(assert (=> b!1382866 (= lt!608437 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32309))))

(assert (= (and start!118240 res!924566) b!1382864))

(assert (= (and b!1382864 res!924567) b!1382865))

(assert (= (and b!1382865 res!924565) b!1382866))

(declare-fun m!1268027 () Bool)

(assert (=> start!118240 m!1268027))

(declare-fun m!1268029 () Bool)

(assert (=> start!118240 m!1268029))

(declare-fun m!1268031 () Bool)

(assert (=> b!1382865 m!1268031))

(assert (=> b!1382865 m!1268031))

(declare-fun m!1268033 () Bool)

(assert (=> b!1382865 m!1268033))

(declare-fun m!1268035 () Bool)

(assert (=> b!1382866 m!1268035))

(push 1)

(assert (not start!118240))

(assert (not b!1382866))

(assert (not b!1382865))

(check-sat)

(pop 1)

(push 1)

(check-sat)

