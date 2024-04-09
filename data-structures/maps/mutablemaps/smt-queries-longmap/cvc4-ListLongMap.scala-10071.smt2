; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118604 () Bool)

(assert start!118604)

(declare-fun b!1385992 () Bool)

(declare-fun res!927354 () Bool)

(declare-fun e!785240 () Bool)

(assert (=> b!1385992 (=> (not res!927354) (not e!785240))))

(declare-datatypes ((array!94798 0))(
  ( (array!94799 (arr!45771 (Array (_ BitVec 32) (_ BitVec 64))) (size!46322 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94798)

(declare-datatypes ((List!32479 0))(
  ( (Nil!32476) (Cons!32475 (h!33684 (_ BitVec 64)) (t!47180 List!32479)) )
))
(declare-fun arrayNoDuplicates!0 (array!94798 (_ BitVec 32) List!32479) Bool)

(assert (=> b!1385992 (= res!927354 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32476))))

(declare-fun b!1385993 () Bool)

(declare-fun res!927356 () Bool)

(assert (=> b!1385993 (=> (not res!927356) (not e!785240))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94798 (_ BitVec 32)) Bool)

(assert (=> b!1385993 (= res!927356 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1385994 () Bool)

(assert (=> b!1385994 (= e!785240 (not (bvsle #b00000000000000000000000000000000 (size!46322 a!2938))))))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10136 0))(
  ( (MissingZero!10136 (index!42914 (_ BitVec 32))) (Found!10136 (index!42915 (_ BitVec 32))) (Intermediate!10136 (undefined!10948 Bool) (index!42916 (_ BitVec 32)) (x!124540 (_ BitVec 32))) (Undefined!10136) (MissingVacant!10136 (index!42917 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94798 (_ BitVec 32)) SeekEntryResult!10136)

(assert (=> b!1385994 (= (seekEntryOrOpen!0 (select (arr!45771 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45771 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94799 (store (arr!45771 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46322 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46214 0))(
  ( (Unit!46215) )
))
(declare-fun lt!609307 () Unit!46214)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94798 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46214)

(assert (=> b!1385994 (= lt!609307 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun res!927355 () Bool)

(assert (=> start!118604 (=> (not res!927355) (not e!785240))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118604 (= res!927355 (validMask!0 mask!2987))))

(assert (=> start!118604 e!785240))

(assert (=> start!118604 true))

(declare-fun array_inv!34716 (array!94798) Bool)

(assert (=> start!118604 (array_inv!34716 a!2938)))

(declare-fun b!1385995 () Bool)

(declare-fun res!927351 () Bool)

(assert (=> b!1385995 (=> (not res!927351) (not e!785240))))

(assert (=> b!1385995 (= res!927351 (and (= (size!46322 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46322 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46322 a!2938))))))

(declare-fun b!1385996 () Bool)

(declare-fun res!927357 () Bool)

(assert (=> b!1385996 (=> (not res!927357) (not e!785240))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1385996 (= res!927357 (validKeyInArray!0 (select (arr!45771 a!2938) startIndex!16)))))

(declare-fun b!1385997 () Bool)

(declare-fun res!927352 () Bool)

(assert (=> b!1385997 (=> (not res!927352) (not e!785240))))

(assert (=> b!1385997 (= res!927352 (validKeyInArray!0 (select (arr!45771 a!2938) i!1065)))))

(declare-fun b!1385998 () Bool)

(declare-fun res!927353 () Bool)

(assert (=> b!1385998 (=> (not res!927353) (not e!785240))))

(assert (=> b!1385998 (= res!927353 (and (not (= (select (arr!45771 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45771 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(assert (= (and start!118604 res!927355) b!1385995))

(assert (= (and b!1385995 res!927351) b!1385997))

(assert (= (and b!1385997 res!927352) b!1385992))

(assert (= (and b!1385992 res!927354) b!1385993))

(assert (= (and b!1385993 res!927356) b!1385998))

(assert (= (and b!1385998 res!927353) b!1385996))

(assert (= (and b!1385996 res!927357) b!1385994))

(declare-fun m!1271361 () Bool)

(assert (=> b!1385996 m!1271361))

(assert (=> b!1385996 m!1271361))

(declare-fun m!1271363 () Bool)

(assert (=> b!1385996 m!1271363))

(declare-fun m!1271365 () Bool)

(assert (=> b!1385994 m!1271365))

(assert (=> b!1385994 m!1271365))

(declare-fun m!1271367 () Bool)

(assert (=> b!1385994 m!1271367))

(declare-fun m!1271369 () Bool)

(assert (=> b!1385994 m!1271369))

(declare-fun m!1271371 () Bool)

(assert (=> b!1385994 m!1271371))

(assert (=> b!1385994 m!1271361))

(assert (=> b!1385994 m!1271361))

(declare-fun m!1271373 () Bool)

(assert (=> b!1385994 m!1271373))

(declare-fun m!1271375 () Bool)

(assert (=> b!1385993 m!1271375))

(declare-fun m!1271377 () Bool)

(assert (=> start!118604 m!1271377))

(declare-fun m!1271379 () Bool)

(assert (=> start!118604 m!1271379))

(declare-fun m!1271381 () Bool)

(assert (=> b!1385998 m!1271381))

(declare-fun m!1271383 () Bool)

(assert (=> b!1385992 m!1271383))

(assert (=> b!1385997 m!1271381))

(assert (=> b!1385997 m!1271381))

(declare-fun m!1271385 () Bool)

(assert (=> b!1385997 m!1271385))

(push 1)

(assert (not b!1385993))

(assert (not b!1385992))

(assert (not b!1385997))

