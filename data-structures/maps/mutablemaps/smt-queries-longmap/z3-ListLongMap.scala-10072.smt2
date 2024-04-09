; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118608 () Bool)

(assert start!118608)

(declare-fun b!1386034 () Bool)

(declare-fun res!927396 () Bool)

(declare-fun e!785252 () Bool)

(assert (=> b!1386034 (=> (not res!927396) (not e!785252))))

(declare-datatypes ((array!94802 0))(
  ( (array!94803 (arr!45773 (Array (_ BitVec 32) (_ BitVec 64))) (size!46324 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94802)

(declare-datatypes ((List!32481 0))(
  ( (Nil!32478) (Cons!32477 (h!33686 (_ BitVec 64)) (t!47182 List!32481)) )
))
(declare-fun arrayNoDuplicates!0 (array!94802 (_ BitVec 32) List!32481) Bool)

(assert (=> b!1386034 (= res!927396 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32478))))

(declare-fun b!1386035 () Bool)

(declare-fun res!927397 () Bool)

(assert (=> b!1386035 (=> (not res!927397) (not e!785252))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386035 (= res!927397 (validKeyInArray!0 (select (arr!45773 a!2938) startIndex!16)))))

(declare-fun b!1386036 () Bool)

(declare-fun res!927394 () Bool)

(assert (=> b!1386036 (=> (not res!927394) (not e!785252))))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1386036 (= res!927394 (and (not (= (select (arr!45773 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45773 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1386037 () Bool)

(declare-fun res!927399 () Bool)

(assert (=> b!1386037 (=> (not res!927399) (not e!785252))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94802 (_ BitVec 32)) Bool)

(assert (=> b!1386037 (= res!927399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386038 () Bool)

(declare-fun res!927395 () Bool)

(assert (=> b!1386038 (=> (not res!927395) (not e!785252))))

(assert (=> b!1386038 (= res!927395 (validKeyInArray!0 (select (arr!45773 a!2938) i!1065)))))

(declare-fun res!927398 () Bool)

(assert (=> start!118608 (=> (not res!927398) (not e!785252))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118608 (= res!927398 (validMask!0 mask!2987))))

(assert (=> start!118608 e!785252))

(assert (=> start!118608 true))

(declare-fun array_inv!34718 (array!94802) Bool)

(assert (=> start!118608 (array_inv!34718 a!2938)))

(declare-fun b!1386039 () Bool)

(assert (=> b!1386039 (= e!785252 (not (or (bvsgt #b00000000000000000000000000000000 (size!46324 a!2938)) (bvsle startIndex!16 (size!46324 a!2938)))))))

(declare-datatypes ((SeekEntryResult!10138 0))(
  ( (MissingZero!10138 (index!42922 (_ BitVec 32))) (Found!10138 (index!42923 (_ BitVec 32))) (Intermediate!10138 (undefined!10950 Bool) (index!42924 (_ BitVec 32)) (x!124550 (_ BitVec 32))) (Undefined!10138) (MissingVacant!10138 (index!42925 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94802 (_ BitVec 32)) SeekEntryResult!10138)

(assert (=> b!1386039 (= (seekEntryOrOpen!0 (select (arr!45773 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45773 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94803 (store (arr!45773 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46324 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46218 0))(
  ( (Unit!46219) )
))
(declare-fun lt!609313 () Unit!46218)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94802 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46218)

(assert (=> b!1386039 (= lt!609313 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun b!1386040 () Bool)

(declare-fun res!927393 () Bool)

(assert (=> b!1386040 (=> (not res!927393) (not e!785252))))

(assert (=> b!1386040 (= res!927393 (and (= (size!46324 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46324 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46324 a!2938))))))

(assert (= (and start!118608 res!927398) b!1386040))

(assert (= (and b!1386040 res!927393) b!1386038))

(assert (= (and b!1386038 res!927395) b!1386034))

(assert (= (and b!1386034 res!927396) b!1386037))

(assert (= (and b!1386037 res!927399) b!1386036))

(assert (= (and b!1386036 res!927394) b!1386035))

(assert (= (and b!1386035 res!927397) b!1386039))

(declare-fun m!1271413 () Bool)

(assert (=> b!1386035 m!1271413))

(assert (=> b!1386035 m!1271413))

(declare-fun m!1271415 () Bool)

(assert (=> b!1386035 m!1271415))

(declare-fun m!1271417 () Bool)

(assert (=> b!1386036 m!1271417))

(declare-fun m!1271419 () Bool)

(assert (=> b!1386034 m!1271419))

(declare-fun m!1271421 () Bool)

(assert (=> b!1386037 m!1271421))

(declare-fun m!1271423 () Bool)

(assert (=> start!118608 m!1271423))

(declare-fun m!1271425 () Bool)

(assert (=> start!118608 m!1271425))

(declare-fun m!1271427 () Bool)

(assert (=> b!1386039 m!1271427))

(assert (=> b!1386039 m!1271427))

(declare-fun m!1271429 () Bool)

(assert (=> b!1386039 m!1271429))

(declare-fun m!1271431 () Bool)

(assert (=> b!1386039 m!1271431))

(declare-fun m!1271433 () Bool)

(assert (=> b!1386039 m!1271433))

(assert (=> b!1386039 m!1271413))

(assert (=> b!1386039 m!1271413))

(declare-fun m!1271435 () Bool)

(assert (=> b!1386039 m!1271435))

(assert (=> b!1386038 m!1271417))

(assert (=> b!1386038 m!1271417))

(declare-fun m!1271437 () Bool)

(assert (=> b!1386038 m!1271437))

(check-sat (not b!1386037) (not b!1386039) (not start!118608) (not b!1386038) (not b!1386035) (not b!1386034))
(check-sat)
