; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118320 () Bool)

(assert start!118320)

(declare-fun b!1383328 () Bool)

(declare-fun res!925029 () Bool)

(declare-fun e!784073 () Bool)

(assert (=> b!1383328 (=> (not res!925029) (not e!784073))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94541 0))(
  ( (array!94542 (arr!45644 (Array (_ BitVec 32) (_ BitVec 64))) (size!46195 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94541)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1383328 (= res!925029 (and (= (size!46195 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46195 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46195 a!2938))))))

(declare-fun b!1383331 () Bool)

(assert (=> b!1383331 (= e!784073 false)))

(declare-fun lt!608548 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94541 (_ BitVec 32)) Bool)

(assert (=> b!1383331 (= lt!608548 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383329 () Bool)

(declare-fun res!925030 () Bool)

(assert (=> b!1383329 (=> (not res!925030) (not e!784073))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383329 (= res!925030 (validKeyInArray!0 (select (arr!45644 a!2938) i!1065)))))

(declare-fun res!925032 () Bool)

(assert (=> start!118320 (=> (not res!925032) (not e!784073))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118320 (= res!925032 (validMask!0 mask!2987))))

(assert (=> start!118320 e!784073))

(assert (=> start!118320 true))

(declare-fun array_inv!34589 (array!94541) Bool)

(assert (=> start!118320 (array_inv!34589 a!2938)))

(declare-fun b!1383330 () Bool)

(declare-fun res!925031 () Bool)

(assert (=> b!1383330 (=> (not res!925031) (not e!784073))))

(declare-datatypes ((List!32352 0))(
  ( (Nil!32349) (Cons!32348 (h!33557 (_ BitVec 64)) (t!47053 List!32352)) )
))
(declare-fun arrayNoDuplicates!0 (array!94541 (_ BitVec 32) List!32352) Bool)

(assert (=> b!1383330 (= res!925031 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32349))))

(assert (= (and start!118320 res!925032) b!1383328))

(assert (= (and b!1383328 res!925029) b!1383329))

(assert (= (and b!1383329 res!925030) b!1383330))

(assert (= (and b!1383330 res!925031) b!1383331))

(declare-fun m!1268489 () Bool)

(assert (=> b!1383331 m!1268489))

(declare-fun m!1268491 () Bool)

(assert (=> b!1383329 m!1268491))

(assert (=> b!1383329 m!1268491))

(declare-fun m!1268493 () Bool)

(assert (=> b!1383329 m!1268493))

(declare-fun m!1268495 () Bool)

(assert (=> start!118320 m!1268495))

(declare-fun m!1268497 () Bool)

(assert (=> start!118320 m!1268497))

(declare-fun m!1268499 () Bool)

(assert (=> b!1383330 m!1268499))

(check-sat (not b!1383331) (not start!118320) (not b!1383330) (not b!1383329))
