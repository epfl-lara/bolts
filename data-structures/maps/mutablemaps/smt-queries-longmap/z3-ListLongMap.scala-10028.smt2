; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118314 () Bool)

(assert start!118314)

(declare-fun b!1383292 () Bool)

(declare-fun res!924995 () Bool)

(declare-fun e!784055 () Bool)

(assert (=> b!1383292 (=> (not res!924995) (not e!784055))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94535 0))(
  ( (array!94536 (arr!45641 (Array (_ BitVec 32) (_ BitVec 64))) (size!46192 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94535)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1383292 (= res!924995 (and (= (size!46192 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46192 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46192 a!2938))))))

(declare-fun b!1383295 () Bool)

(assert (=> b!1383295 (= e!784055 false)))

(declare-fun lt!608539 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94535 (_ BitVec 32)) Bool)

(assert (=> b!1383295 (= lt!608539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383294 () Bool)

(declare-fun res!924994 () Bool)

(assert (=> b!1383294 (=> (not res!924994) (not e!784055))))

(declare-datatypes ((List!32349 0))(
  ( (Nil!32346) (Cons!32345 (h!33554 (_ BitVec 64)) (t!47050 List!32349)) )
))
(declare-fun arrayNoDuplicates!0 (array!94535 (_ BitVec 32) List!32349) Bool)

(assert (=> b!1383294 (= res!924994 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32346))))

(declare-fun b!1383293 () Bool)

(declare-fun res!924993 () Bool)

(assert (=> b!1383293 (=> (not res!924993) (not e!784055))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383293 (= res!924993 (validKeyInArray!0 (select (arr!45641 a!2938) i!1065)))))

(declare-fun res!924996 () Bool)

(assert (=> start!118314 (=> (not res!924996) (not e!784055))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118314 (= res!924996 (validMask!0 mask!2987))))

(assert (=> start!118314 e!784055))

(assert (=> start!118314 true))

(declare-fun array_inv!34586 (array!94535) Bool)

(assert (=> start!118314 (array_inv!34586 a!2938)))

(assert (= (and start!118314 res!924996) b!1383292))

(assert (= (and b!1383292 res!924995) b!1383293))

(assert (= (and b!1383293 res!924993) b!1383294))

(assert (= (and b!1383294 res!924994) b!1383295))

(declare-fun m!1268453 () Bool)

(assert (=> b!1383295 m!1268453))

(declare-fun m!1268455 () Bool)

(assert (=> b!1383294 m!1268455))

(declare-fun m!1268457 () Bool)

(assert (=> b!1383293 m!1268457))

(assert (=> b!1383293 m!1268457))

(declare-fun m!1268459 () Bool)

(assert (=> b!1383293 m!1268459))

(declare-fun m!1268461 () Bool)

(assert (=> start!118314 m!1268461))

(declare-fun m!1268463 () Bool)

(assert (=> start!118314 m!1268463))

(check-sat (not b!1383295) (not start!118314) (not b!1383294) (not b!1383293))
