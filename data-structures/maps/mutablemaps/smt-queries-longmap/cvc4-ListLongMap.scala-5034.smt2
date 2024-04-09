; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68738 () Bool)

(assert start!68738)

(declare-fun b!800163 () Bool)

(declare-fun res!544852 () Bool)

(declare-fun e!443678 () Bool)

(assert (=> b!800163 (=> (not res!544852) (not e!443678))))

(declare-datatypes ((array!43479 0))(
  ( (array!43480 (arr!20816 (Array (_ BitVec 32) (_ BitVec 64))) (size!21237 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43479)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800163 (= res!544852 (validKeyInArray!0 (select (arr!20816 a!3170) j!153)))))

(declare-fun b!800164 () Bool)

(declare-fun e!443675 () Bool)

(declare-fun e!443679 () Bool)

(assert (=> b!800164 (= e!443675 e!443679)))

(declare-fun res!544863 () Bool)

(assert (=> b!800164 (=> (not res!544863) (not e!443679))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!357489 () (_ BitVec 32))

(assert (=> b!800164 (= res!544863 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357489 #b00000000000000000000000000000000) (bvslt lt!357489 (size!21237 a!3170))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800164 (= lt!357489 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!800165 () Bool)

(declare-fun e!443677 () Bool)

(declare-fun e!443680 () Bool)

(assert (=> b!800165 (= e!443677 e!443680)))

(declare-fun res!544864 () Bool)

(assert (=> b!800165 (=> (not res!544864) (not e!443680))))

(declare-fun lt!357484 () array!43479)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!357483 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8414 0))(
  ( (MissingZero!8414 (index!36023 (_ BitVec 32))) (Found!8414 (index!36024 (_ BitVec 32))) (Intermediate!8414 (undefined!9226 Bool) (index!36025 (_ BitVec 32)) (x!66917 (_ BitVec 32))) (Undefined!8414) (MissingVacant!8414 (index!36026 (_ BitVec 32))) )
))
(declare-fun lt!357486 () SeekEntryResult!8414)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43479 (_ BitVec 32)) SeekEntryResult!8414)

(assert (=> b!800165 (= res!544864 (= lt!357486 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357483 lt!357484 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43479 (_ BitVec 32)) SeekEntryResult!8414)

(assert (=> b!800165 (= lt!357486 (seekEntryOrOpen!0 lt!357483 lt!357484 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!800165 (= lt!357483 (select (store (arr!20816 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!800165 (= lt!357484 (array!43480 (store (arr!20816 a!3170) i!1163 k!2044) (size!21237 a!3170)))))

(declare-fun b!800166 () Bool)

(declare-fun res!544859 () Bool)

(assert (=> b!800166 (=> (not res!544859) (not e!443679))))

(assert (=> b!800166 (= res!544859 (= lt!357486 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357489 vacantAfter!23 lt!357483 lt!357484 mask!3266)))))

(declare-fun b!800167 () Bool)

(declare-fun res!544856 () Bool)

(assert (=> b!800167 (=> (not res!544856) (not e!443678))))

(assert (=> b!800167 (= res!544856 (and (= (size!21237 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21237 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21237 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!800168 () Bool)

(assert (=> b!800168 (= e!443678 e!443677)))

(declare-fun res!544858 () Bool)

(assert (=> b!800168 (=> (not res!544858) (not e!443677))))

(declare-fun lt!357485 () SeekEntryResult!8414)

(assert (=> b!800168 (= res!544858 (or (= lt!357485 (MissingZero!8414 i!1163)) (= lt!357485 (MissingVacant!8414 i!1163))))))

(assert (=> b!800168 (= lt!357485 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!800169 () Bool)

(declare-fun res!544857 () Bool)

(assert (=> b!800169 (=> (not res!544857) (not e!443677))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!800169 (= res!544857 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21237 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20816 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21237 a!3170)) (= (select (arr!20816 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!800170 () Bool)

(assert (=> b!800170 (= e!443679 false)))

(declare-fun lt!357487 () SeekEntryResult!8414)

(assert (=> b!800170 (= lt!357487 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357489 vacantBefore!23 (select (arr!20816 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800171 () Bool)

(declare-fun res!544861 () Bool)

(assert (=> b!800171 (=> (not res!544861) (not e!443678))))

(declare-fun arrayContainsKey!0 (array!43479 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800171 (= res!544861 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun res!544860 () Bool)

(assert (=> start!68738 (=> (not res!544860) (not e!443678))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68738 (= res!544860 (validMask!0 mask!3266))))

(assert (=> start!68738 e!443678))

(assert (=> start!68738 true))

(declare-fun array_inv!16590 (array!43479) Bool)

(assert (=> start!68738 (array_inv!16590 a!3170)))

(declare-fun b!800172 () Bool)

(declare-fun res!544853 () Bool)

(assert (=> b!800172 (=> (not res!544853) (not e!443678))))

(assert (=> b!800172 (= res!544853 (validKeyInArray!0 k!2044))))

(declare-fun b!800173 () Bool)

(declare-fun res!544862 () Bool)

(assert (=> b!800173 (=> (not res!544862) (not e!443677))))

(declare-datatypes ((List!14832 0))(
  ( (Nil!14829) (Cons!14828 (h!15957 (_ BitVec 64)) (t!21155 List!14832)) )
))
(declare-fun arrayNoDuplicates!0 (array!43479 (_ BitVec 32) List!14832) Bool)

(assert (=> b!800173 (= res!544862 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14829))))

(declare-fun b!800174 () Bool)

(declare-fun res!544855 () Bool)

(assert (=> b!800174 (=> (not res!544855) (not e!443677))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43479 (_ BitVec 32)) Bool)

(assert (=> b!800174 (= res!544855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!800175 () Bool)

(assert (=> b!800175 (= e!443680 e!443675)))

(declare-fun res!544854 () Bool)

(assert (=> b!800175 (=> (not res!544854) (not e!443675))))

(declare-fun lt!357490 () SeekEntryResult!8414)

(declare-fun lt!357488 () SeekEntryResult!8414)

(assert (=> b!800175 (= res!544854 (and (= lt!357490 lt!357488) (= lt!357488 (Found!8414 j!153)) (not (= (select (arr!20816 a!3170) index!1236) (select (arr!20816 a!3170) j!153)))))))

(assert (=> b!800175 (= lt!357488 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20816 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!800175 (= lt!357490 (seekEntryOrOpen!0 (select (arr!20816 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68738 res!544860) b!800167))

(assert (= (and b!800167 res!544856) b!800163))

(assert (= (and b!800163 res!544852) b!800172))

(assert (= (and b!800172 res!544853) b!800171))

(assert (= (and b!800171 res!544861) b!800168))

(assert (= (and b!800168 res!544858) b!800174))

(assert (= (and b!800174 res!544855) b!800173))

(assert (= (and b!800173 res!544862) b!800169))

(assert (= (and b!800169 res!544857) b!800165))

(assert (= (and b!800165 res!544864) b!800175))

(assert (= (and b!800175 res!544854) b!800164))

(assert (= (and b!800164 res!544863) b!800166))

(assert (= (and b!800166 res!544859) b!800170))

(declare-fun m!741337 () Bool)

(assert (=> start!68738 m!741337))

(declare-fun m!741339 () Bool)

(assert (=> start!68738 m!741339))

(declare-fun m!741341 () Bool)

(assert (=> b!800164 m!741341))

(declare-fun m!741343 () Bool)

(assert (=> b!800171 m!741343))

(declare-fun m!741345 () Bool)

(assert (=> b!800175 m!741345))

(declare-fun m!741347 () Bool)

(assert (=> b!800175 m!741347))

(assert (=> b!800175 m!741347))

(declare-fun m!741349 () Bool)

(assert (=> b!800175 m!741349))

(assert (=> b!800175 m!741347))

(declare-fun m!741351 () Bool)

(assert (=> b!800175 m!741351))

(declare-fun m!741353 () Bool)

(assert (=> b!800174 m!741353))

(assert (=> b!800163 m!741347))

(assert (=> b!800163 m!741347))

(declare-fun m!741355 () Bool)

(assert (=> b!800163 m!741355))

(declare-fun m!741357 () Bool)

(assert (=> b!800173 m!741357))

(declare-fun m!741359 () Bool)

(assert (=> b!800166 m!741359))

(assert (=> b!800170 m!741347))

(assert (=> b!800170 m!741347))

(declare-fun m!741361 () Bool)

(assert (=> b!800170 m!741361))

(declare-fun m!741363 () Bool)

(assert (=> b!800165 m!741363))

(declare-fun m!741365 () Bool)

(assert (=> b!800165 m!741365))

(declare-fun m!741367 () Bool)

(assert (=> b!800165 m!741367))

(declare-fun m!741369 () Bool)

(assert (=> b!800165 m!741369))

(declare-fun m!741371 () Bool)

(assert (=> b!800168 m!741371))

(declare-fun m!741373 () Bool)

(assert (=> b!800169 m!741373))

(declare-fun m!741375 () Bool)

(assert (=> b!800169 m!741375))

(declare-fun m!741377 () Bool)

(assert (=> b!800172 m!741377))

(push 1)

