; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68702 () Bool)

(assert start!68702)

(declare-fun res!544150 () Bool)

(declare-fun e!443353 () Bool)

(assert (=> start!68702 (=> (not res!544150) (not e!443353))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68702 (= res!544150 (validMask!0 mask!3266))))

(assert (=> start!68702 e!443353))

(assert (=> start!68702 true))

(declare-datatypes ((array!43443 0))(
  ( (array!43444 (arr!20798 (Array (_ BitVec 32) (_ BitVec 64))) (size!21219 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43443)

(declare-fun array_inv!16572 (array!43443) Bool)

(assert (=> start!68702 (array_inv!16572 a!3170)))

(declare-fun b!799461 () Bool)

(declare-fun res!544155 () Bool)

(assert (=> b!799461 (=> (not res!544155) (not e!443353))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!799461 (= res!544155 (and (= (size!21219 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21219 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21219 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!799462 () Bool)

(declare-fun res!544157 () Bool)

(declare-fun e!443355 () Bool)

(assert (=> b!799462 (=> (not res!544157) (not e!443355))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43443 (_ BitVec 32)) Bool)

(assert (=> b!799462 (= res!544157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!799463 () Bool)

(declare-fun res!544162 () Bool)

(assert (=> b!799463 (=> (not res!544162) (not e!443355))))

(declare-datatypes ((List!14814 0))(
  ( (Nil!14811) (Cons!14810 (h!15939 (_ BitVec 64)) (t!21137 List!14814)) )
))
(declare-fun arrayNoDuplicates!0 (array!43443 (_ BitVec 32) List!14814) Bool)

(assert (=> b!799463 (= res!544162 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14811))))

(declare-fun b!799464 () Bool)

(declare-fun res!544152 () Bool)

(assert (=> b!799464 (=> (not res!544152) (not e!443353))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43443 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!799464 (= res!544152 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!799465 () Bool)

(declare-fun e!443351 () Bool)

(assert (=> b!799465 (= e!443355 e!443351)))

(declare-fun res!544158 () Bool)

(assert (=> b!799465 (=> (not res!544158) (not e!443351))))

(declare-fun lt!357051 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8396 0))(
  ( (MissingZero!8396 (index!35951 (_ BitVec 32))) (Found!8396 (index!35952 (_ BitVec 32))) (Intermediate!8396 (undefined!9208 Bool) (index!35953 (_ BitVec 32)) (x!66851 (_ BitVec 32))) (Undefined!8396) (MissingVacant!8396 (index!35954 (_ BitVec 32))) )
))
(declare-fun lt!357055 () SeekEntryResult!8396)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!357056 () array!43443)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43443 (_ BitVec 32)) SeekEntryResult!8396)

(assert (=> b!799465 (= res!544158 (= lt!357055 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357051 lt!357056 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43443 (_ BitVec 32)) SeekEntryResult!8396)

(assert (=> b!799465 (= lt!357055 (seekEntryOrOpen!0 lt!357051 lt!357056 mask!3266))))

(assert (=> b!799465 (= lt!357051 (select (store (arr!20798 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!799465 (= lt!357056 (array!43444 (store (arr!20798 a!3170) i!1163 k!2044) (size!21219 a!3170)))))

(declare-fun b!799466 () Bool)

(declare-fun res!544151 () Bool)

(declare-fun e!443352 () Bool)

(assert (=> b!799466 (=> (not res!544151) (not e!443352))))

(declare-fun lt!357058 () (_ BitVec 32))

(assert (=> b!799466 (= res!544151 (= lt!357055 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357058 vacantAfter!23 lt!357051 lt!357056 mask!3266)))))

(declare-fun b!799467 () Bool)

(declare-fun res!544160 () Bool)

(assert (=> b!799467 (=> (not res!544160) (not e!443353))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!799467 (= res!544160 (validKeyInArray!0 k!2044))))

(declare-fun b!799468 () Bool)

(declare-fun e!443354 () Bool)

(assert (=> b!799468 (= e!443351 e!443354)))

(declare-fun res!544154 () Bool)

(assert (=> b!799468 (=> (not res!544154) (not e!443354))))

(declare-fun lt!357054 () SeekEntryResult!8396)

(declare-fun lt!357053 () SeekEntryResult!8396)

(assert (=> b!799468 (= res!544154 (and (= lt!357053 lt!357054) (= lt!357054 (Found!8396 j!153)) (not (= (select (arr!20798 a!3170) index!1236) (select (arr!20798 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!799468 (= lt!357054 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20798 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!799468 (= lt!357053 (seekEntryOrOpen!0 (select (arr!20798 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799469 () Bool)

(assert (=> b!799469 (= e!443352 false)))

(declare-fun lt!357052 () SeekEntryResult!8396)

(assert (=> b!799469 (= lt!357052 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357058 vacantBefore!23 (select (arr!20798 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!799470 () Bool)

(assert (=> b!799470 (= e!443353 e!443355)))

(declare-fun res!544159 () Bool)

(assert (=> b!799470 (=> (not res!544159) (not e!443355))))

(declare-fun lt!357057 () SeekEntryResult!8396)

(assert (=> b!799470 (= res!544159 (or (= lt!357057 (MissingZero!8396 i!1163)) (= lt!357057 (MissingVacant!8396 i!1163))))))

(assert (=> b!799470 (= lt!357057 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!799471 () Bool)

(assert (=> b!799471 (= e!443354 e!443352)))

(declare-fun res!544161 () Bool)

(assert (=> b!799471 (=> (not res!544161) (not e!443352))))

(assert (=> b!799471 (= res!544161 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357058 #b00000000000000000000000000000000) (bvslt lt!357058 (size!21219 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!799471 (= lt!357058 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!799472 () Bool)

(declare-fun res!544156 () Bool)

(assert (=> b!799472 (=> (not res!544156) (not e!443355))))

(assert (=> b!799472 (= res!544156 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21219 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20798 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21219 a!3170)) (= (select (arr!20798 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!799473 () Bool)

(declare-fun res!544153 () Bool)

(assert (=> b!799473 (=> (not res!544153) (not e!443353))))

(assert (=> b!799473 (= res!544153 (validKeyInArray!0 (select (arr!20798 a!3170) j!153)))))

(assert (= (and start!68702 res!544150) b!799461))

(assert (= (and b!799461 res!544155) b!799473))

(assert (= (and b!799473 res!544153) b!799467))

(assert (= (and b!799467 res!544160) b!799464))

(assert (= (and b!799464 res!544152) b!799470))

(assert (= (and b!799470 res!544159) b!799462))

(assert (= (and b!799462 res!544157) b!799463))

(assert (= (and b!799463 res!544162) b!799472))

(assert (= (and b!799472 res!544156) b!799465))

(assert (= (and b!799465 res!544158) b!799468))

(assert (= (and b!799468 res!544154) b!799471))

(assert (= (and b!799471 res!544161) b!799466))

(assert (= (and b!799466 res!544151) b!799469))

(declare-fun m!740581 () Bool)

(assert (=> b!799471 m!740581))

(declare-fun m!740583 () Bool)

(assert (=> b!799466 m!740583))

(declare-fun m!740585 () Bool)

(assert (=> b!799472 m!740585))

(declare-fun m!740587 () Bool)

(assert (=> b!799472 m!740587))

(declare-fun m!740589 () Bool)

(assert (=> b!799462 m!740589))

(declare-fun m!740591 () Bool)

(assert (=> start!68702 m!740591))

(declare-fun m!740593 () Bool)

(assert (=> start!68702 m!740593))

(declare-fun m!740595 () Bool)

(assert (=> b!799469 m!740595))

(assert (=> b!799469 m!740595))

(declare-fun m!740597 () Bool)

(assert (=> b!799469 m!740597))

(declare-fun m!740599 () Bool)

(assert (=> b!799464 m!740599))

(declare-fun m!740601 () Bool)

(assert (=> b!799463 m!740601))

(declare-fun m!740603 () Bool)

(assert (=> b!799467 m!740603))

(declare-fun m!740605 () Bool)

(assert (=> b!799468 m!740605))

(assert (=> b!799468 m!740595))

(assert (=> b!799468 m!740595))

(declare-fun m!740607 () Bool)

(assert (=> b!799468 m!740607))

(assert (=> b!799468 m!740595))

(declare-fun m!740609 () Bool)

(assert (=> b!799468 m!740609))

(assert (=> b!799473 m!740595))

(assert (=> b!799473 m!740595))

(declare-fun m!740611 () Bool)

(assert (=> b!799473 m!740611))

(declare-fun m!740613 () Bool)

(assert (=> b!799470 m!740613))

(declare-fun m!740615 () Bool)

(assert (=> b!799465 m!740615))

(declare-fun m!740617 () Bool)

(assert (=> b!799465 m!740617))

(declare-fun m!740619 () Bool)

(assert (=> b!799465 m!740619))

(declare-fun m!740621 () Bool)

(assert (=> b!799465 m!740621))

(push 1)

