; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118446 () Bool)

(assert start!118446)

(declare-fun b!1384955 () Bool)

(declare-datatypes ((Unit!46179 0))(
  ( (Unit!46180) )
))
(declare-fun e!784768 () Unit!46179)

(declare-fun Unit!46181 () Unit!46179)

(assert (=> b!1384955 (= e!784768 Unit!46181)))

(declare-fun b!1384956 () Bool)

(declare-fun res!926379 () Bool)

(declare-fun e!784767 () Bool)

(assert (=> b!1384956 (=> (not res!926379) (not e!784767))))

(declare-datatypes ((array!94667 0))(
  ( (array!94668 (arr!45707 (Array (_ BitVec 32) (_ BitVec 64))) (size!46258 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94667)

(declare-datatypes ((List!32415 0))(
  ( (Nil!32412) (Cons!32411 (h!33620 (_ BitVec 64)) (t!47116 List!32415)) )
))
(declare-fun arrayNoDuplicates!0 (array!94667 (_ BitVec 32) List!32415) Bool)

(assert (=> b!1384956 (= res!926379 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32412))))

(declare-fun res!926378 () Bool)

(assert (=> start!118446 (=> (not res!926378) (not e!784767))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118446 (= res!926378 (validMask!0 mask!2987))))

(assert (=> start!118446 e!784767))

(assert (=> start!118446 true))

(declare-fun array_inv!34652 (array!94667) Bool)

(assert (=> start!118446 (array_inv!34652 a!2938)))

(declare-fun b!1384957 () Bool)

(declare-fun lt!609090 () Unit!46179)

(assert (=> b!1384957 (= e!784768 lt!609090)))

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun lt!609089 () Unit!46179)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94667 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46179)

(assert (=> b!1384957 (= lt!609089 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10121 0))(
  ( (MissingZero!10121 (index!42854 (_ BitVec 32))) (Found!10121 (index!42855 (_ BitVec 32))) (Intermediate!10121 (undefined!10933 Bool) (index!42856 (_ BitVec 32)) (x!124357 (_ BitVec 32))) (Undefined!10121) (MissingVacant!10121 (index!42857 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94667 (_ BitVec 32)) SeekEntryResult!10121)

(assert (=> b!1384957 (= (seekEntryOrOpen!0 (select (arr!45707 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45707 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94668 (store (arr!45707 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46258 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94667 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46179)

(assert (=> b!1384957 (= lt!609090 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94667 (_ BitVec 32)) Bool)

(assert (=> b!1384957 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384958 () Bool)

(declare-fun res!926377 () Bool)

(assert (=> b!1384958 (=> (not res!926377) (not e!784767))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384958 (= res!926377 (validKeyInArray!0 (select (arr!45707 a!2938) i!1065)))))

(declare-fun b!1384959 () Bool)

(assert (=> b!1384959 (= e!784767 false)))

(declare-fun lt!609091 () Unit!46179)

(assert (=> b!1384959 (= lt!609091 e!784768)))

(declare-fun c!128732 () Bool)

(declare-fun e!784769 () Bool)

(assert (=> b!1384959 (= c!128732 e!784769)))

(declare-fun res!926382 () Bool)

(assert (=> b!1384959 (=> (not res!926382) (not e!784769))))

(assert (=> b!1384959 (= res!926382 (not (= startIndex!16 i!1065)))))

(declare-fun b!1384960 () Bool)

(assert (=> b!1384960 (= e!784769 (validKeyInArray!0 (select (arr!45707 a!2938) startIndex!16)))))

(declare-fun b!1384961 () Bool)

(declare-fun res!926380 () Bool)

(assert (=> b!1384961 (=> (not res!926380) (not e!784767))))

(assert (=> b!1384961 (= res!926380 (and (not (= (select (arr!45707 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45707 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384962 () Bool)

(declare-fun res!926381 () Bool)

(assert (=> b!1384962 (=> (not res!926381) (not e!784767))))

(assert (=> b!1384962 (= res!926381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384963 () Bool)

(declare-fun res!926376 () Bool)

(assert (=> b!1384963 (=> (not res!926376) (not e!784767))))

(assert (=> b!1384963 (= res!926376 (and (= (size!46258 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46258 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46258 a!2938))))))

(assert (= (and start!118446 res!926378) b!1384963))

(assert (= (and b!1384963 res!926376) b!1384958))

(assert (= (and b!1384958 res!926377) b!1384956))

(assert (= (and b!1384956 res!926379) b!1384962))

(assert (= (and b!1384962 res!926381) b!1384961))

(assert (= (and b!1384961 res!926380) b!1384959))

(assert (= (and b!1384959 res!926382) b!1384960))

(assert (= (and b!1384959 c!128732) b!1384957))

(assert (= (and b!1384959 (not c!128732)) b!1384955))

(declare-fun m!1270331 () Bool)

(assert (=> b!1384957 m!1270331))

(declare-fun m!1270333 () Bool)

(assert (=> b!1384957 m!1270333))

(assert (=> b!1384957 m!1270333))

(declare-fun m!1270335 () Bool)

(assert (=> b!1384957 m!1270335))

(declare-fun m!1270337 () Bool)

(assert (=> b!1384957 m!1270337))

(declare-fun m!1270339 () Bool)

(assert (=> b!1384957 m!1270339))

(declare-fun m!1270341 () Bool)

(assert (=> b!1384957 m!1270341))

(declare-fun m!1270343 () Bool)

(assert (=> b!1384957 m!1270343))

(assert (=> b!1384957 m!1270341))

(declare-fun m!1270345 () Bool)

(assert (=> b!1384957 m!1270345))

(assert (=> b!1384960 m!1270341))

(assert (=> b!1384960 m!1270341))

(declare-fun m!1270347 () Bool)

(assert (=> b!1384960 m!1270347))

(declare-fun m!1270349 () Bool)

(assert (=> start!118446 m!1270349))

(declare-fun m!1270351 () Bool)

(assert (=> start!118446 m!1270351))

(declare-fun m!1270353 () Bool)

(assert (=> b!1384956 m!1270353))

(declare-fun m!1270355 () Bool)

(assert (=> b!1384961 m!1270355))

(assert (=> b!1384958 m!1270355))

(assert (=> b!1384958 m!1270355))

(declare-fun m!1270357 () Bool)

(assert (=> b!1384958 m!1270357))

(declare-fun m!1270359 () Bool)

(assert (=> b!1384962 m!1270359))

(check-sat (not b!1384958) (not b!1384962) (not b!1384957) (not b!1384956) (not start!118446) (not b!1384960))
