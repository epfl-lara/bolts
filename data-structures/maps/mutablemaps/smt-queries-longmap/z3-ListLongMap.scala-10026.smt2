; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118302 () Bool)

(assert start!118302)

(declare-fun b!1383222 () Bool)

(declare-fun res!924924 () Bool)

(declare-fun e!784019 () Bool)

(assert (=> b!1383222 (=> (not res!924924) (not e!784019))))

(declare-datatypes ((array!94523 0))(
  ( (array!94524 (arr!45635 (Array (_ BitVec 32) (_ BitVec 64))) (size!46186 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94523)

(declare-datatypes ((List!32343 0))(
  ( (Nil!32340) (Cons!32339 (h!33548 (_ BitVec 64)) (t!47044 List!32343)) )
))
(declare-fun arrayNoDuplicates!0 (array!94523 (_ BitVec 32) List!32343) Bool)

(assert (=> b!1383222 (= res!924924 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32340))))

(declare-fun b!1383220 () Bool)

(declare-fun res!924922 () Bool)

(assert (=> b!1383220 (=> (not res!924922) (not e!784019))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1383220 (= res!924922 (and (= (size!46186 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46186 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46186 a!2938))))))

(declare-fun b!1383221 () Bool)

(declare-fun res!924923 () Bool)

(assert (=> b!1383221 (=> (not res!924923) (not e!784019))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383221 (= res!924923 (validKeyInArray!0 (select (arr!45635 a!2938) i!1065)))))

(declare-fun b!1383223 () Bool)

(assert (=> b!1383223 (= e!784019 false)))

(declare-fun lt!608521 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94523 (_ BitVec 32)) Bool)

(assert (=> b!1383223 (= lt!608521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun res!924921 () Bool)

(assert (=> start!118302 (=> (not res!924921) (not e!784019))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118302 (= res!924921 (validMask!0 mask!2987))))

(assert (=> start!118302 e!784019))

(assert (=> start!118302 true))

(declare-fun array_inv!34580 (array!94523) Bool)

(assert (=> start!118302 (array_inv!34580 a!2938)))

(assert (= (and start!118302 res!924921) b!1383220))

(assert (= (and b!1383220 res!924922) b!1383221))

(assert (= (and b!1383221 res!924923) b!1383222))

(assert (= (and b!1383222 res!924924) b!1383223))

(declare-fun m!1268381 () Bool)

(assert (=> b!1383222 m!1268381))

(declare-fun m!1268383 () Bool)

(assert (=> b!1383221 m!1268383))

(assert (=> b!1383221 m!1268383))

(declare-fun m!1268385 () Bool)

(assert (=> b!1383221 m!1268385))

(declare-fun m!1268387 () Bool)

(assert (=> b!1383223 m!1268387))

(declare-fun m!1268389 () Bool)

(assert (=> start!118302 m!1268389))

(declare-fun m!1268391 () Bool)

(assert (=> start!118302 m!1268391))

(check-sat (not b!1383221) (not start!118302) (not b!1383222) (not b!1383223))
