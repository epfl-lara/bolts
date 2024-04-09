; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118312 () Bool)

(assert start!118312)

(declare-fun b!1383280 () Bool)

(declare-fun res!924981 () Bool)

(declare-fun e!784049 () Bool)

(assert (=> b!1383280 (=> (not res!924981) (not e!784049))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94533 0))(
  ( (array!94534 (arr!45640 (Array (_ BitVec 32) (_ BitVec 64))) (size!46191 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94533)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(assert (=> b!1383280 (= res!924981 (and (= (size!46191 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46191 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46191 a!2938))))))

(declare-fun b!1383281 () Bool)

(declare-fun res!924983 () Bool)

(assert (=> b!1383281 (=> (not res!924983) (not e!784049))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383281 (= res!924983 (validKeyInArray!0 (select (arr!45640 a!2938) i!1065)))))

(declare-fun res!924984 () Bool)

(assert (=> start!118312 (=> (not res!924984) (not e!784049))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118312 (= res!924984 (validMask!0 mask!2987))))

(assert (=> start!118312 e!784049))

(assert (=> start!118312 true))

(declare-fun array_inv!34585 (array!94533) Bool)

(assert (=> start!118312 (array_inv!34585 a!2938)))

(declare-fun b!1383282 () Bool)

(declare-fun res!924982 () Bool)

(assert (=> b!1383282 (=> (not res!924982) (not e!784049))))

(declare-datatypes ((List!32348 0))(
  ( (Nil!32345) (Cons!32344 (h!33553 (_ BitVec 64)) (t!47049 List!32348)) )
))
(declare-fun arrayNoDuplicates!0 (array!94533 (_ BitVec 32) List!32348) Bool)

(assert (=> b!1383282 (= res!924982 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32345))))

(declare-fun b!1383283 () Bool)

(assert (=> b!1383283 (= e!784049 false)))

(declare-fun lt!608536 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94533 (_ BitVec 32)) Bool)

(assert (=> b!1383283 (= lt!608536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(assert (= (and start!118312 res!924984) b!1383280))

(assert (= (and b!1383280 res!924981) b!1383281))

(assert (= (and b!1383281 res!924983) b!1383282))

(assert (= (and b!1383282 res!924982) b!1383283))

(declare-fun m!1268441 () Bool)

(assert (=> b!1383281 m!1268441))

(assert (=> b!1383281 m!1268441))

(declare-fun m!1268443 () Bool)

(assert (=> b!1383281 m!1268443))

(declare-fun m!1268445 () Bool)

(assert (=> start!118312 m!1268445))

(declare-fun m!1268447 () Bool)

(assert (=> start!118312 m!1268447))

(declare-fun m!1268449 () Bool)

(assert (=> b!1383282 m!1268449))

(declare-fun m!1268451 () Bool)

(assert (=> b!1383283 m!1268451))

(push 1)

(assert (not start!118312))

(assert (not b!1383282))

(assert (not b!1383281))

(assert (not b!1383283))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

