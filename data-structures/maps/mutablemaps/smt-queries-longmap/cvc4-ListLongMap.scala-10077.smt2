; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118640 () Bool)

(assert start!118640)

(declare-fun res!927732 () Bool)

(declare-fun e!785420 () Bool)

(assert (=> start!118640 (=> (not res!927732) (not e!785420))))

(declare-fun mask!2987 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118640 (= res!927732 (validMask!0 mask!2987))))

(assert (=> start!118640 e!785420))

(assert (=> start!118640 true))

(declare-datatypes ((array!94834 0))(
  ( (array!94835 (arr!45789 (Array (_ BitVec 32) (_ BitVec 64))) (size!46340 (_ BitVec 32))) )
))
(declare-fun a!2938 () array!94834)

(declare-fun array_inv!34734 (array!94834) Bool)

(assert (=> start!118640 (array_inv!34734 a!2938)))

(declare-fun b!1386440 () Bool)

(declare-fun res!927735 () Bool)

(assert (=> b!1386440 (=> (not res!927735) (not e!785420))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94834 (_ BitVec 32)) Bool)

(assert (=> b!1386440 (= res!927735 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2938 mask!2987))))

(declare-fun b!1386441 () Bool)

(declare-fun res!927729 () Bool)

(assert (=> b!1386441 (=> (not res!927729) (not e!785420))))

(declare-datatypes ((List!32497 0))(
  ( (Nil!32494) (Cons!32493 (h!33702 (_ BitVec 64)) (t!47198 List!32497)) )
))
(declare-fun arrayNoDuplicates!0 (array!94834 (_ BitVec 32) List!32497) Bool)

(assert (=> b!1386441 (= res!927729 (arrayNoDuplicates!0 a!2938 #b00000000000000000000000000000000 Nil!32494))))

(declare-fun b!1386442 () Bool)

(declare-datatypes ((Unit!46261 0))(
  ( (Unit!46262) )
))
(declare-fun e!785417 () Unit!46261)

(declare-fun Unit!46263 () Unit!46261)

(assert (=> b!1386442 (= e!785417 Unit!46263)))

(declare-fun b!1386443 () Bool)

(declare-fun e!785419 () Bool)

(declare-fun startIndex!16 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1386443 (= e!785419 (validKeyInArray!0 (select (arr!45789 a!2938) startIndex!16)))))

(declare-fun b!1386444 () Bool)

(declare-fun res!927730 () Bool)

(assert (=> b!1386444 (=> (not res!927730) (not e!785420))))

(declare-fun i!1065 () (_ BitVec 32))

(assert (=> b!1386444 (= res!927730 (and (not (= (select (arr!45789 a!2938) i!1065) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45789 a!2938) i!1065) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1386445 () Bool)

(declare-fun res!927734 () Bool)

(assert (=> b!1386445 (=> (not res!927734) (not e!785420))))

(assert (=> b!1386445 (= res!927734 (validKeyInArray!0 (select (arr!45789 a!2938) i!1065)))))

(declare-fun b!1386446 () Bool)

(assert (=> b!1386446 (= e!785420 false)))

(declare-fun lt!609433 () Unit!46261)

(assert (=> b!1386446 (= lt!609433 e!785417)))

(declare-fun c!128798 () Bool)

(assert (=> b!1386446 (= c!128798 e!785419)))

(declare-fun res!927733 () Bool)

(assert (=> b!1386446 (=> (not res!927733) (not e!785419))))

(assert (=> b!1386446 (= res!927733 (not (= startIndex!16 i!1065)))))

(declare-fun b!1386447 () Bool)

(declare-fun lt!609431 () Unit!46261)

(assert (=> b!1386447 (= e!785417 lt!609431)))

(declare-fun lt!609432 () Unit!46261)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 (array!94834 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46261)

(assert (=> b!1386447 (= lt!609432 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2!0 a!2938 i!1065 startIndex!16 mask!2987))))

(declare-datatypes ((SeekEntryResult!10154 0))(
  ( (MissingZero!10154 (index!42986 (_ BitVec 32))) (Found!10154 (index!42987 (_ BitVec 32))) (Intermediate!10154 (undefined!10966 Bool) (index!42988 (_ BitVec 32)) (x!124606 (_ BitVec 32))) (Undefined!10154) (MissingVacant!10154 (index!42989 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94834 (_ BitVec 32)) SeekEntryResult!10154)

(assert (=> b!1386447 (= (seekEntryOrOpen!0 (select (arr!45789 a!2938) startIndex!16) a!2938 mask!2987) (seekEntryOrOpen!0 (select (store (arr!45789 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) startIndex!16) (array!94835 (store (arr!45789 a!2938) i!1065 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46340 a!2938)) mask!2987))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!94834 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46261)

(assert (=> b!1386447 (= lt!609431 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2938 mask!2987 #b00000000000000000000000000000000 startIndex!16))))

(assert (=> b!1386447 (arrayForallSeekEntryOrOpenFound!0 startIndex!16 a!2938 mask!2987)))

(declare-fun b!1386448 () Bool)

(declare-fun res!927731 () Bool)

(assert (=> b!1386448 (=> (not res!927731) (not e!785420))))

(assert (=> b!1386448 (= res!927731 (and (= (size!46340 a!2938) (bvadd #b00000000000000000000000000000001 mask!2987)) (bvsge i!1065 #b00000000000000000000000000000000) (bvslt i!1065 (size!46340 a!2938)) (bvsge startIndex!16 #b00000000000000000000000000000000) (bvslt startIndex!16 (size!46340 a!2938))))))

(assert (= (and start!118640 res!927732) b!1386448))

(assert (= (and b!1386448 res!927731) b!1386445))

(assert (= (and b!1386445 res!927734) b!1386441))

(assert (= (and b!1386441 res!927729) b!1386440))

(assert (= (and b!1386440 res!927735) b!1386444))

(assert (= (and b!1386444 res!927730) b!1386446))

(assert (= (and b!1386446 res!927733) b!1386443))

(assert (= (and b!1386446 c!128798) b!1386447))

(assert (= (and b!1386446 (not c!128798)) b!1386442))

(declare-fun m!1271873 () Bool)

(assert (=> b!1386443 m!1271873))

(assert (=> b!1386443 m!1271873))

(declare-fun m!1271875 () Bool)

(assert (=> b!1386443 m!1271875))

(declare-fun m!1271877 () Bool)

(assert (=> b!1386440 m!1271877))

(declare-fun m!1271879 () Bool)

(assert (=> b!1386444 m!1271879))

(declare-fun m!1271881 () Bool)

(assert (=> b!1386441 m!1271881))

(declare-fun m!1271883 () Bool)

(assert (=> start!118640 m!1271883))

(declare-fun m!1271885 () Bool)

(assert (=> start!118640 m!1271885))

(declare-fun m!1271887 () Bool)

(assert (=> b!1386447 m!1271887))

(declare-fun m!1271889 () Bool)

(assert (=> b!1386447 m!1271889))

(assert (=> b!1386447 m!1271889))

(declare-fun m!1271891 () Bool)

(assert (=> b!1386447 m!1271891))

(declare-fun m!1271893 () Bool)

(assert (=> b!1386447 m!1271893))

(declare-fun m!1271895 () Bool)

(assert (=> b!1386447 m!1271895))

(assert (=> b!1386447 m!1271873))

(declare-fun m!1271897 () Bool)

(assert (=> b!1386447 m!1271897))

(assert (=> b!1386447 m!1271873))

(declare-fun m!1271899 () Bool)

(assert (=> b!1386447 m!1271899))

(assert (=> b!1386445 m!1271879))

(assert (=> b!1386445 m!1271879))

(declare-fun m!1271901 () Bool)

(assert (=> b!1386445 m!1271901))

(push 1)

(assert (not b!1386447))

(assert (not b!1386441))

(assert (not b!1386440))

(assert (not start!118640))

(assert (not b!1386445))

(assert (not b!1386443))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

