; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118244 () Bool)

(assert start!118244)

(declare-fun res!924584 () Bool)

(declare-fun e!783845 () Bool)

(assert (=> start!118244 (=> (not res!924584) (not e!783845))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118244 (= res!924584 (validMask!0 mask!2987))))

(assert (=> start!118244 e!783845))

(assert (=> start!118244 true))

(declare-datatypes ((array!94465 0))(
  ( (array!94466 (arr!45606 (Array (_ BitVec 32) (_ BitVec 64))) (size!46157 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94465)

(declare-fun array_inv!34551 (array!94465) Bool)

(assert (=> start!118244 (array_inv!34551 a!2938)))

(declare-fun b!1382882 () Bool)

(declare-fun res!924583 () Bool)

(assert (=> b!1382882 (=> (not res!924583) (not e!783845))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1382882 (= res!924583 (and (= (size!46157 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46157 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46157 a!2938))))))

(declare-fun b!1382883 () Bool)

(declare-fun res!924585 () Bool)

(assert (=> b!1382883 (=> (not res!924585) (not e!783845))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382883 (= res!924585 (validKeyInArray!0 (select (arr!45606 a!2938) i!1065)))))

(declare-fun b!1382884 () Bool)

(assert (=> b!1382884 (= e!783845 false)))

(declare-fun lt!608443 () Bool)

(declare-datatypes ((List!32314 0))(
  ( (Nil!32311) (Cons!32310 (h!33519 (_ BitVec 64)) (t!47015 List!32314)) )
))
(declare-fun arrayNoDuplicates!0 (array!94465 (_ BitVec 32) List!32314) Bool)

(assert (=> b!1382884 (= lt!608443 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32311))))

(assert (= (and start!118244 res!924584) b!1382882))

(assert (= (and b!1382882 res!924583) b!1382883))

(assert (= (and b!1382883 res!924585) b!1382884))

(declare-fun m!1268047 () Bool)

(assert (=> start!118244 m!1268047))

(declare-fun m!1268049 () Bool)

(assert (=> start!118244 m!1268049))

(declare-fun m!1268051 () Bool)

(assert (=> b!1382883 m!1268051))

(assert (=> b!1382883 m!1268051))

(declare-fun m!1268053 () Bool)

(assert (=> b!1382883 m!1268053))

(declare-fun m!1268055 () Bool)

(assert (=> b!1382884 m!1268055))

(push 1)

(assert (not b!1382883))

(assert (not start!118244))

(assert (not b!1382884))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

