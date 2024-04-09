; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68362 () Bool)

(assert start!68362)

(declare-fun b!793867 () Bool)

(declare-fun res!538564 () Bool)

(declare-fun e!440907 () Bool)

(assert (=> b!793867 (=> (not res!538564) (not e!440907))))

(declare-datatypes ((array!43103 0))(
  ( (array!43104 (arr!20628 (Array (_ BitVec 32) (_ BitVec 64))) (size!21049 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43103)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43103 (_ BitVec 32)) Bool)

(assert (=> b!793867 (= res!538564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793868 () Bool)

(declare-fun res!538559 () Bool)

(declare-fun e!440908 () Bool)

(assert (=> b!793868 (=> (not res!538559) (not e!440908))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793868 (= res!538559 (validKeyInArray!0 (select (arr!20628 a!3170) j!153)))))

(declare-fun b!793869 () Bool)

(declare-fun res!538557 () Bool)

(assert (=> b!793869 (=> (not res!538557) (not e!440908))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43103 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793869 (= res!538557 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793870 () Bool)

(declare-fun res!538561 () Bool)

(assert (=> b!793870 (=> (not res!538561) (not e!440907))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!793870 (= res!538561 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21049 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20628 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21049 a!3170)) (= (select (arr!20628 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!793871 () Bool)

(declare-fun res!538560 () Bool)

(assert (=> b!793871 (=> (not res!538560) (not e!440908))))

(assert (=> b!793871 (= res!538560 (validKeyInArray!0 k!2044))))

(declare-fun b!793872 () Bool)

(declare-fun res!538556 () Bool)

(assert (=> b!793872 (=> (not res!538556) (not e!440907))))

(declare-datatypes ((List!14644 0))(
  ( (Nil!14641) (Cons!14640 (h!15769 (_ BitVec 64)) (t!20967 List!14644)) )
))
(declare-fun arrayNoDuplicates!0 (array!43103 (_ BitVec 32) List!14644) Bool)

(assert (=> b!793872 (= res!538556 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14641))))

(declare-fun b!793873 () Bool)

(assert (=> b!793873 (= e!440908 e!440907)))

(declare-fun res!538563 () Bool)

(assert (=> b!793873 (=> (not res!538563) (not e!440907))))

(declare-datatypes ((SeekEntryResult!8226 0))(
  ( (MissingZero!8226 (index!35271 (_ BitVec 32))) (Found!8226 (index!35272 (_ BitVec 32))) (Intermediate!8226 (undefined!9038 Bool) (index!35273 (_ BitVec 32)) (x!66233 (_ BitVec 32))) (Undefined!8226) (MissingVacant!8226 (index!35274 (_ BitVec 32))) )
))
(declare-fun lt!353903 () SeekEntryResult!8226)

(assert (=> b!793873 (= res!538563 (or (= lt!353903 (MissingZero!8226 i!1163)) (= lt!353903 (MissingVacant!8226 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43103 (_ BitVec 32)) SeekEntryResult!8226)

(assert (=> b!793873 (= lt!353903 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!538562 () Bool)

(assert (=> start!68362 (=> (not res!538562) (not e!440908))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68362 (= res!538562 (validMask!0 mask!3266))))

(assert (=> start!68362 e!440908))

(assert (=> start!68362 true))

(declare-fun array_inv!16402 (array!43103) Bool)

(assert (=> start!68362 (array_inv!16402 a!3170)))

(declare-fun b!793874 () Bool)

(declare-fun res!538558 () Bool)

(assert (=> b!793874 (=> (not res!538558) (not e!440908))))

(assert (=> b!793874 (= res!538558 (and (= (size!21049 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21049 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21049 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793875 () Bool)

(assert (=> b!793875 (= e!440907 false)))

(declare-fun lt!353901 () array!43103)

(declare-fun lt!353905 () SeekEntryResult!8226)

(declare-fun lt!353902 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43103 (_ BitVec 32)) SeekEntryResult!8226)

(assert (=> b!793875 (= lt!353905 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353902 lt!353901 mask!3266))))

(declare-fun lt!353904 () SeekEntryResult!8226)

(assert (=> b!793875 (= lt!353904 (seekEntryOrOpen!0 lt!353902 lt!353901 mask!3266))))

(assert (=> b!793875 (= lt!353902 (select (store (arr!20628 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!793875 (= lt!353901 (array!43104 (store (arr!20628 a!3170) i!1163 k!2044) (size!21049 a!3170)))))

(assert (= (and start!68362 res!538562) b!793874))

(assert (= (and b!793874 res!538558) b!793868))

(assert (= (and b!793868 res!538559) b!793871))

(assert (= (and b!793871 res!538560) b!793869))

(assert (= (and b!793869 res!538557) b!793873))

(assert (= (and b!793873 res!538563) b!793867))

(assert (= (and b!793867 res!538564) b!793872))

(assert (= (and b!793872 res!538556) b!793870))

(assert (= (and b!793870 res!538561) b!793875))

(declare-fun m!734473 () Bool)

(assert (=> b!793873 m!734473))

(declare-fun m!734475 () Bool)

(assert (=> b!793867 m!734475))

(declare-fun m!734477 () Bool)

(assert (=> b!793871 m!734477))

(declare-fun m!734479 () Bool)

(assert (=> start!68362 m!734479))

(declare-fun m!734481 () Bool)

(assert (=> start!68362 m!734481))

(declare-fun m!734483 () Bool)

(assert (=> b!793870 m!734483))

(declare-fun m!734485 () Bool)

(assert (=> b!793870 m!734485))

(declare-fun m!734487 () Bool)

(assert (=> b!793872 m!734487))

(declare-fun m!734489 () Bool)

(assert (=> b!793868 m!734489))

(assert (=> b!793868 m!734489))

(declare-fun m!734491 () Bool)

(assert (=> b!793868 m!734491))

(declare-fun m!734493 () Bool)

(assert (=> b!793869 m!734493))

(declare-fun m!734495 () Bool)

(assert (=> b!793875 m!734495))

(declare-fun m!734497 () Bool)

(assert (=> b!793875 m!734497))

(declare-fun m!734499 () Bool)

(assert (=> b!793875 m!734499))

(declare-fun m!734501 () Bool)

(assert (=> b!793875 m!734501))

(push 1)

