; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118294 () Bool)

(assert start!118294)

(declare-fun b!1383174 () Bool)

(declare-fun res!924876 () Bool)

(declare-fun e!783994 () Bool)

(assert (=> b!1383174 (=> (not res!924876) (not e!783994))))

(declare-datatypes ((array!94515 0))(
  ( (array!94516 (arr!45631 (Array (_ BitVec 32) (_ BitVec 64))) (size!46182 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94515)

(declare-datatypes ((List!32339 0))(
  ( (Nil!32336) (Cons!32335 (h!33544 (_ BitVec 64)) (t!47040 List!32339)) )
))
(declare-fun arrayNoDuplicates!0 (array!94515 (_ BitVec 32) List!32339) Bool)

(assert (=> b!1383174 (= res!924876 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32336))))

(declare-fun res!924873 () Bool)

(assert (=> start!118294 (=> (not res!924873) (not e!783994))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118294 (= res!924873 (validMask!0 mask!2987))))

(assert (=> start!118294 e!783994))

(assert (=> start!118294 true))

(declare-fun array_inv!34576 (array!94515) Bool)

(assert (=> start!118294 (array_inv!34576 a!2938)))

(declare-fun b!1383173 () Bool)

(declare-fun res!924875 () Bool)

(assert (=> b!1383173 (=> (not res!924875) (not e!783994))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383173 (= res!924875 (validKeyInArray!0 (select (arr!45631 a!2938) i!1065)))))

(declare-fun b!1383172 () Bool)

(declare-fun res!924874 () Bool)

(assert (=> b!1383172 (=> (not res!924874) (not e!783994))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383172 (= res!924874 (and (= (size!46182 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46182 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46182 a!2938))))))

(declare-fun b!1383175 () Bool)

(assert (=> b!1383175 (= e!783994 false)))

(declare-fun lt!608509 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94515 (_ BitVec 32)) Bool)

(assert (=> b!1383175 (= lt!608509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(assert (= (and start!118294 res!924873) b!1383172))

(assert (= (and b!1383172 res!924874) b!1383173))

(assert (= (and b!1383173 res!924875) b!1383174))

(assert (= (and b!1383174 res!924876) b!1383175))

(declare-fun m!1268333 () Bool)

(assert (=> b!1383174 m!1268333))

(declare-fun m!1268335 () Bool)

(assert (=> start!118294 m!1268335))

(declare-fun m!1268337 () Bool)

(assert (=> start!118294 m!1268337))

(declare-fun m!1268339 () Bool)

(assert (=> b!1383173 m!1268339))

(assert (=> b!1383173 m!1268339))

(declare-fun m!1268341 () Bool)

(assert (=> b!1383173 m!1268341))

(declare-fun m!1268343 () Bool)

(assert (=> b!1383175 m!1268343))

(push 1)

(assert (not b!1383173))

(assert (not start!118294))

(assert (not b!1383174))

(assert (not b!1383175))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

