; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118336 () Bool)

(assert start!118336)

(declare-fun b!1383484 () Bool)

(declare-fun res!925186 () Bool)

(declare-fun e!784121 () Bool)

(assert (=> b!1383484 (=> (not res!925186) (not e!784121))))

(declare-datatypes ((array!94557 0))(
  ( (array!94558 (arr!45652 (Array (_ BitVec 32) (_ BitVec 64))) (size!46203 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94557)

(declare-fun i!1065 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1383484 (= res!925186 (validKeyInArray!0 (select (arr!45652 a!2938) i!1065)))))

(declare-fun res!925188 () Bool)

(assert (=> start!118336 (=> (not res!925188) (not e!784121))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118336 (= res!925188 (validMask!0 mask!2987))))

(assert (=> start!118336 e!784121))

(assert (=> start!118336 true))

(declare-fun array_inv!34597 (array!94557) Bool)

(assert (=> start!118336 (array_inv!34597 a!2938)))

(declare-fun b!1383485 () Bool)

(declare-fun res!925185 () Bool)

(assert (=> b!1383485 (=> (not res!925185) (not e!784121))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94557 (_ BitVec 32)) Bool)

(assert (=> b!1383485 (= res!925185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1383486 () Bool)

(declare-fun res!925189 () Bool)

(assert (=> b!1383486 (=> (not res!925189) (not e!784121))))

(declare-fun startIndex!16 () (_ BitVec 32))

(assert (=> b!1383486 (= res!925189 (and (not (= (select (arr!45652 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45652 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= startIndex!16 i!1065))))))

(declare-fun b!1383487 () Bool)

(declare-fun res!925191 () Bool)

(assert (=> b!1383487 (=> (not res!925191) (not e!784121))))

(declare-datatypes ((List!32360 0))(
  ( (Nil!32357) (Cons!32356 (h!33565 (_ BitVec 64)) (t!47061 List!32360)) )
))
(declare-fun arrayNoDuplicates!0 (array!94557 (_ BitVec 32) List!32360) Bool)

(assert (=> b!1383487 (= res!925191 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32357))))

(declare-fun b!1383488 () Bool)

(declare-fun res!925187 () Bool)

(assert (=> b!1383488 (=> (not res!925187) (not e!784121))))

(assert (=> b!1383488 (= res!925187 (validKeyInArray!0 (select (arr!45652 a!2938) startIndex!16)))))

(declare-fun b!1383489 () Bool)

(assert (=> b!1383489 (= e!784121 (not true))))

(declare-datatypes ((SeekEntryResult!10066 0))(
  ( (MissingZero!10066 (index!42634 (_ BitVec 32))) (Found!10066 (index!42635 (_ BitVec 32))) (Intermediate!10066 (undefined!10878 Bool) (index!42636 (_ BitVec 32)) (x!124158 (_ BitVec 32))) (Undefined!10066) (MissingVacant!10066 (index!42637 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94557 (_ BitVec 32)) SeekEntryResult!10066)

(assert (=> b!1383489 (= (seekEntryOrOpen!0 (select (arr!45652 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45652 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94558 (store (arr!45652 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46203 a!2938)) mask!2987))))

(declare-datatypes ((Unit!46023 0))(
  ( (Unit!46024) )
))
(declare-fun lt!608572 () Unit!46023)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94557 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46023)

(assert (=> b!1383489 (= lt!608572 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-fun b!1383490 () Bool)

(declare-fun res!925190 () Bool)

(assert (=> b!1383490 (=> (not res!925190) (not e!784121))))

(assert (=> b!1383490 (= res!925190 (and (= (size!46203 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46203 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46203 a!2938))))))

(assert (= (and start!118336 res!925188) b!1383490))

(assert (= (and b!1383490 res!925190) b!1383484))

(assert (= (and b!1383484 res!925186) b!1383487))

(assert (= (and b!1383487 res!925191) b!1383485))

(assert (= (and b!1383485 res!925185) b!1383486))

(assert (= (and b!1383486 res!925189) b!1383488))

(assert (= (and b!1383488 res!925187) b!1383489))

(declare-fun m!1268669 () Bool)

(assert (=> b!1383485 m!1268669))

(declare-fun m!1268671 () Bool)

(assert (=> b!1383484 m!1268671))

(assert (=> b!1383484 m!1268671))

(declare-fun m!1268673 () Bool)

(assert (=> b!1383484 m!1268673))

(assert (=> b!1383486 m!1268671))

(declare-fun m!1268675 () Bool)

(assert (=> b!1383488 m!1268675))

(assert (=> b!1383488 m!1268675))

(declare-fun m!1268677 () Bool)

(assert (=> b!1383488 m!1268677))

(declare-fun m!1268679 () Bool)

(assert (=> start!118336 m!1268679))

(declare-fun m!1268681 () Bool)

(assert (=> start!118336 m!1268681))

(declare-fun m!1268683 () Bool)

(assert (=> b!1383489 m!1268683))

(assert (=> b!1383489 m!1268683))

(declare-fun m!1268685 () Bool)

(assert (=> b!1383489 m!1268685))

(declare-fun m!1268687 () Bool)

(assert (=> b!1383489 m!1268687))

(declare-fun m!1268689 () Bool)

(assert (=> b!1383489 m!1268689))

(assert (=> b!1383489 m!1268675))

(assert (=> b!1383489 m!1268675))

(declare-fun m!1268691 () Bool)

(assert (=> b!1383489 m!1268691))

(declare-fun m!1268693 () Bool)

(assert (=> b!1383487 m!1268693))

(push 1)

(assert (not b!1383485))

(assert (not b!1383489))

(assert (not b!1383488))

(assert (not b!1383484))

(assert (not b!1383487))

(assert (not start!118336))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

