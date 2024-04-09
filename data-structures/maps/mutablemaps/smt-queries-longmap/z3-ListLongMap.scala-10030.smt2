; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118326 () Bool)

(assert start!118326)

(declare-fun b!1383379 () Bool)

(declare-fun e!784090 () Bool)

(assert (=> b!1383379 (= e!784090 (not true))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((array!94547 0))(
  ( (array!94548 (arr!45647 (Array (_ BitVec 32) (_ BitVec 64))) (size!46198 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94547)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10061 0))(
  ( (MissingZero!10061 (index!42614 (_ BitVec 32))) (Found!10061 (index!42615 (_ BitVec 32))) (Intermediate!10061 (undefined!10873 Bool) (index!42616 (_ BitVec 32)) (x!124137 (_ BitVec 32))) (Undefined!10061) (MissingVacant!10061 (index!42617 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94547 (_ BitVec 32)) SeekEntryResult!10061)

(assert (=> b!1383379 (= (seekEntryOrOpen!0 (select (arr!45647 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45647 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94548 (store (arr!45647 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46198 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46013 0))(
  ( (Unit!46014) )
))
(declare-fun lt!608557 () Unit!46013)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94547 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46013)

(assert (=> b!1383379 (= lt!608557 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun b!1383380 () Bool)

(declare-fun res!925080 () Bool)

(assert (=> b!1383380 (=> (not res!925080) (not e!784090))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383380 (= res!925080 (validKeyInArray!0 (select (arr!45647 a!2938) startIndex!16)))))

(declare-fun b!1383381 () Bool)

(declare-fun res!925084 () Bool)

(assert (=> b!1383381 (=> (not res!925084) (not e!784090))))

(assert (=> b!1383381 (= res!925084 (and (not (= (select (arr!45647 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45647 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun res!925081 () Bool)

(assert (=> start!118326 (=> (not res!925081) (not e!784090))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118326 (= res!925081 (validMask!0 mask!2987))))

(assert (=> start!118326 e!784090))

(assert (=> start!118326 true))

(declare-fun array_inv!34592 (array!94547) Bool)

(assert (=> start!118326 (array_inv!34592 a!2938)))

(declare-fun b!1383382 () Bool)

(declare-fun res!925082 () Bool)

(assert (=> b!1383382 (=> (not res!925082) (not e!784090))))

(assert (=> b!1383382 (= res!925082 (and (= (size!46198 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46198 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46198 a!2938))))))

(declare-fun b!1383383 () Bool)

(declare-fun res!925086 () Bool)

(assert (=> b!1383383 (=> (not res!925086) (not e!784090))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94547 (_ BitVec 32)) Bool)

(assert (=> b!1383383 (= res!925086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383384 () Bool)

(declare-fun res!925083 () Bool)

(assert (=> b!1383384 (=> (not res!925083) (not e!784090))))

(declare-datatypes ((List!32355 0))(
  ( (Nil!32352) (Cons!32351 (h!33560 (_ BitVec 64)) (t!47056 List!32355)) )
))
(declare-fun arrayNoDuplicates!0 (array!94547 (_ BitVec 32) List!32355) Bool)

(assert (=> b!1383384 (= res!925083 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32352))))

(declare-fun b!1383385 () Bool)

(declare-fun res!925085 () Bool)

(assert (=> b!1383385 (=> (not res!925085) (not e!784090))))

(assert (=> b!1383385 (= res!925085 (validKeyInArray!0 (select (arr!45647 a!2938) i!1065)))))

(assert (= (and start!118326 res!925081) b!1383382))

(assert (= (and b!1383382 res!925082) b!1383385))

(assert (= (and b!1383385 res!925085) b!1383384))

(assert (= (and b!1383384 res!925083) b!1383383))

(assert (= (and b!1383383 res!925086) b!1383381))

(assert (= (and b!1383381 res!925084) b!1383380))

(assert (= (and b!1383380 res!925080) b!1383379))

(declare-fun m!1268539 () Bool)

(assert (=> b!1383383 m!1268539))

(declare-fun m!1268541 () Bool)

(assert (=> b!1383381 m!1268541))

(declare-fun m!1268543 () Bool)

(assert (=> b!1383380 m!1268543))

(assert (=> b!1383380 m!1268543))

(declare-fun m!1268545 () Bool)

(assert (=> b!1383380 m!1268545))

(assert (=> b!1383385 m!1268541))

(assert (=> b!1383385 m!1268541))

(declare-fun m!1268547 () Bool)

(assert (=> b!1383385 m!1268547))

(declare-fun m!1268549 () Bool)

(assert (=> start!118326 m!1268549))

(declare-fun m!1268551 () Bool)

(assert (=> start!118326 m!1268551))

(declare-fun m!1268553 () Bool)

(assert (=> b!1383379 m!1268553))

(assert (=> b!1383379 m!1268553))

(declare-fun m!1268555 () Bool)

(assert (=> b!1383379 m!1268555))

(declare-fun m!1268557 () Bool)

(assert (=> b!1383379 m!1268557))

(declare-fun m!1268559 () Bool)

(assert (=> b!1383379 m!1268559))

(assert (=> b!1383379 m!1268543))

(assert (=> b!1383379 m!1268543))

(declare-fun m!1268561 () Bool)

(assert (=> b!1383379 m!1268561))

(declare-fun m!1268563 () Bool)

(assert (=> b!1383384 m!1268563))

(check-sat (not b!1383383) (not b!1383379) (not b!1383385) (not start!118326) (not b!1383384) (not b!1383380))
