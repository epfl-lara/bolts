; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118412 () Bool)

(assert start!118412)

(declare-fun b!1384468 () Bool)

(declare-fun res!925997 () Bool)

(declare-fun e!784538 () Bool)

(assert (=> b!1384468 (=> (not res!925997) (not e!784538))))

(declare-datatypes ((array!94633 0))(
  ( (array!94634 (arr!45690 (Array (_ BitVec 32) (_ BitVec 64))) (size!46241 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94633)

(declare-datatypes ((List!32398 0))(
  ( (Nil!32395) (Cons!32394 (h!33603 (_ BitVec 64)) (t!47099 List!32398)) )
))
(declare-fun arrayNoDuplicates!0 (array!94633 (_ BitVec 32) List!32398) Bool)

(assert (=> b!1384468 (= res!925997 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32395))))

(declare-fun res!925994 () Bool)

(assert (=> start!118412 (=> (not res!925994) (not e!784538))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118412 (= res!925994 (validMask!0 mask!2987))))

(assert (=> start!118412 e!784538))

(assert (=> start!118412 true))

(declare-fun array_inv!34635 (array!94633) Bool)

(assert (=> start!118412 (array_inv!34635 a!2938)))

(declare-fun b!1384469 () Bool)

(declare-fun e!784537 () Bool)

(assert (=> b!1384469 (= e!784537 (not true))))

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun lt!608882 () array!94633)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94633 (_ BitVec 32)) Bool)

(assert (=> b!1384469 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!16) lt!608882 mask!2987)))

(declare-fun i!1065 () (_ BitVec 32))

(declare-datatypes ((Unit!46128 0))(
  ( (Unit!46129) )
))
(declare-fun lt!608883 () Unit!46128)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 (array!94633 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46128)

(assert (=> b!1384469 (= lt!608883 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenStartIndex!0 a!2938 i!1065 (bvadd #b00000000000000000000000000000001 startIndex!16) mask!2987))))

(declare-fun b!1384470 () Bool)

(declare-fun res!925998 () Bool)

(assert (=> b!1384470 (=> (not res!925998) (not e!784538))))

(assert (=> b!1384470 (= res!925998 (and (not (= (select (arr!45690 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45690 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1384471 () Bool)

(declare-fun res!925993 () Bool)

(assert (=> b!1384471 (=> (not res!925993) (not e!784538))))

(assert (=> b!1384471 (= res!925993 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1384472 () Bool)

(declare-fun e!784536 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1384472 (= e!784536 (validKeyInArray!0 (select (arr!45690 a!2938) startIndex!16)))))

(declare-fun b!1384473 () Bool)

(assert (=> b!1384473 (= e!784538 e!784537)))

(declare-fun res!925992 () Bool)

(assert (=> b!1384473 (=> (not res!925992) (not e!784537))))

(assert (=> b!1384473 (= res!925992 (and (bvslt startIndex!16 (bvsub (size!46241 a!2938) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!16) #b00000000000000000000000000000000)))))

(declare-fun lt!608884 () Unit!46128)

(declare-fun e!784534 () Unit!46128)

(assert (=> b!1384473 (= lt!608884 e!784534)))

(declare-fun c!128681 () Bool)

(assert (=> b!1384473 (= c!128681 e!784536)))

(declare-fun res!925996 () Bool)

(assert (=> b!1384473 (=> (not res!925996) (not e!784536))))

(assert (=> b!1384473 (= res!925996 (not (= startIndex!16 i!1065)))))

(assert (=> b!1384473 (= lt!608882 (array!94634 (store (arr!45690 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46241 a!2938)))))

(declare-fun b!1384474 () Bool)

(declare-fun Unit!46130 () Unit!46128)

(assert (=> b!1384474 (= e!784534 Unit!46130)))

(declare-fun b!1384475 () Bool)

(declare-fun res!925991 () Bool)

(assert (=> b!1384475 (=> (not res!925991) (not e!784538))))

(assert (=> b!1384475 (= res!925991 (validKeyInArray!0 (select (arr!45690 a!2938) i!1065)))))

(declare-fun b!1384476 () Bool)

(declare-fun lt!608881 () Unit!46128)

(assert (=> b!1384476 (= e!784534 lt!608881)))

(declare-fun lt!608880 () Unit!46128)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94633 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46128)

(assert (=> b!1384476 (= lt!608880 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10104 0))(
  ( (MissingZero!10104 (index!42786 (_ BitVec 32))) (Found!10104 (index!42787 (_ BitVec 32))) (Intermediate!10104 (undefined!10916 Bool) (index!42788 (_ BitVec 32)) (x!124292 (_ BitVec 32))) (Undefined!10104) (MissingVacant!10104 (index!42789 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94633 (_ BitVec 32)) SeekEntryResult!10104)

(assert (=> b!1384476 (= (seekEntryOrOpen!0 (select (arr!45690 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45690 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) lt!608882 mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94633 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46128)

(assert (=> b!1384476 (= lt!608881 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1384476 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1384477 () Bool)

(declare-fun res!925995 () Bool)

(assert (=> b!1384477 (=> (not res!925995) (not e!784538))))

(assert (=> b!1384477 (= res!925995 (and (= (size!46241 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46241 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46241 a!2938))))))

(assert (= (and start!118412 res!925994) b!1384477))

(assert (= (and b!1384477 res!925995) b!1384475))

(assert (= (and b!1384475 res!925991) b!1384468))

(assert (= (and b!1384468 res!925997) b!1384471))

(assert (= (and b!1384471 res!925993) b!1384470))

(assert (= (and b!1384470 res!925998) b!1384473))

(assert (= (and b!1384473 res!925996) b!1384472))

(assert (= (and b!1384473 c!128681) b!1384476))

(assert (= (and b!1384473 (not c!128681)) b!1384474))

(assert (= (and b!1384473 res!925992) b!1384469))

(declare-fun m!1269781 () Bool)

(assert (=> b!1384471 m!1269781))

(declare-fun m!1269783 () Bool)

(assert (=> b!1384470 m!1269783))

(declare-fun m!1269785 () Bool)

(assert (=> b!1384468 m!1269785))

(declare-fun m!1269787 () Bool)

(assert (=> b!1384476 m!1269787))

(declare-fun m!1269789 () Bool)

(assert (=> b!1384476 m!1269789))

(declare-fun m!1269791 () Bool)

(assert (=> b!1384476 m!1269791))

(assert (=> b!1384476 m!1269789))

(declare-fun m!1269793 () Bool)

(assert (=> b!1384476 m!1269793))

(declare-fun m!1269795 () Bool)

(assert (=> b!1384476 m!1269795))

(declare-fun m!1269797 () Bool)

(assert (=> b!1384476 m!1269797))

(declare-fun m!1269799 () Bool)

(assert (=> b!1384476 m!1269799))

(assert (=> b!1384476 m!1269797))

(declare-fun m!1269801 () Bool)

(assert (=> b!1384476 m!1269801))

(declare-fun m!1269803 () Bool)

(assert (=> b!1384469 m!1269803))

(declare-fun m!1269805 () Bool)

(assert (=> b!1384469 m!1269805))

(assert (=> b!1384475 m!1269783))

(assert (=> b!1384475 m!1269783))

(declare-fun m!1269807 () Bool)

(assert (=> b!1384475 m!1269807))

(assert (=> b!1384472 m!1269797))

(assert (=> b!1384472 m!1269797))

(declare-fun m!1269809 () Bool)

(assert (=> b!1384472 m!1269809))

(declare-fun m!1269811 () Bool)

(assert (=> start!118412 m!1269811))

(declare-fun m!1269813 () Bool)

(assert (=> start!118412 m!1269813))

(assert (=> b!1384473 m!1269791))

(push 1)

(assert (not b!1384476))

(assert (not b!1384472))

