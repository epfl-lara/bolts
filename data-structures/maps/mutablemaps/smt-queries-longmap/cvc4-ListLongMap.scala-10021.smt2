; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118274 () Bool)

(assert start!118274)

(declare-fun b!1383053 () Bool)

(declare-fun res!924753 () Bool)

(declare-fun e!783935 () Bool)

(assert (=> b!1383053 (=> (not res!924753) (not e!783935))))

(declare-datatypes ((array!94495 0))(
  ( (array!94496 (arr!45621 (Array (_ BitVec 32) (_ BitVec 64))) (size!46172 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94495)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383053 (= res!924753 (validKeyInArray!0 (select (arr!45621 a!2938) i!1065)))))

(declare-fun res!924756 () Bool)

(assert (=> start!118274 (=> (not res!924756) (not e!783935))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118274 (= res!924756 (validMask!0 mask!2987))))

(assert (=> start!118274 e!783935))

(assert (=> start!118274 true))

(declare-fun array_inv!34566 (array!94495) Bool)

(assert (=> start!118274 (array_inv!34566 a!2938)))

(declare-fun b!1383052 () Bool)

(declare-fun res!924755 () Bool)

(assert (=> b!1383052 (=> (not res!924755) (not e!783935))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383052 (= res!924755 (and (= (size!46172 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46172 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46172 a!2938))))))

(declare-fun b!1383055 () Bool)

(assert (=> b!1383055 (= e!783935 false)))

(declare-fun lt!608479 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94495 (_ BitVec 32)) Bool)

(assert (=> b!1383055 (= lt!608479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383054 () Bool)

(declare-fun res!924754 () Bool)

(assert (=> b!1383054 (=> (not res!924754) (not e!783935))))

(declare-datatypes ((List!32329 0))(
  ( (Nil!32326) (Cons!32325 (h!33534 (_ BitVec 64)) (t!47030 List!32329)) )
))
(declare-fun arrayNoDuplicates!0 (array!94495 (_ BitVec 32) List!32329) Bool)

(assert (=> b!1383054 (= res!924754 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32326))))

(assert (= (and start!118274 res!924756) b!1383052))

(assert (= (and b!1383052 res!924755) b!1383053))

(assert (= (and b!1383053 res!924753) b!1383054))

(assert (= (and b!1383054 res!924754) b!1383055))

(declare-fun m!1268213 () Bool)

(assert (=> b!1383053 m!1268213))

(assert (=> b!1383053 m!1268213))

(declare-fun m!1268215 () Bool)

(assert (=> b!1383053 m!1268215))

(declare-fun m!1268217 () Bool)

(assert (=> start!118274 m!1268217))

(declare-fun m!1268219 () Bool)

(assert (=> start!118274 m!1268219))

(declare-fun m!1268221 () Bool)

(assert (=> b!1383055 m!1268221))

(declare-fun m!1268223 () Bool)

(assert (=> b!1383054 m!1268223))

(push 1)

(assert (not b!1383053))

(assert (not start!118274))

(assert (not b!1383054))

(assert (not b!1383055))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

