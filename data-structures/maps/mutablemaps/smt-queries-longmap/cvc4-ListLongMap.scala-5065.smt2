; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68924 () Bool)

(assert start!68924)

(declare-fun b!803512 () Bool)

(declare-fun e!445254 () Bool)

(declare-fun e!445253 () Bool)

(assert (=> b!803512 (= e!445254 e!445253)))

(declare-fun res!548209 () Bool)

(assert (=> b!803512 (=> (not res!548209) (not e!445253))))

(declare-datatypes ((SeekEntryResult!8507 0))(
  ( (MissingZero!8507 (index!36395 (_ BitVec 32))) (Found!8507 (index!36396 (_ BitVec 32))) (Intermediate!8507 (undefined!9319 Bool) (index!36397 (_ BitVec 32)) (x!67258 (_ BitVec 32))) (Undefined!8507) (MissingVacant!8507 (index!36398 (_ BitVec 32))) )
))
(declare-fun lt!359728 () SeekEntryResult!8507)

(declare-fun lt!359729 () SeekEntryResult!8507)

(assert (=> b!803512 (= res!548209 (= lt!359728 lt!359729))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!359724 () (_ BitVec 64))

(declare-datatypes ((array!43665 0))(
  ( (array!43666 (arr!20909 (Array (_ BitVec 32) (_ BitVec 64))) (size!21330 (_ BitVec 32))) )
))
(declare-fun lt!359723 () array!43665)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43665 (_ BitVec 32)) SeekEntryResult!8507)

(assert (=> b!803512 (= lt!359729 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359724 lt!359723 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43665 (_ BitVec 32)) SeekEntryResult!8507)

(assert (=> b!803512 (= lt!359728 (seekEntryOrOpen!0 lt!359724 lt!359723 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun a!3170 () array!43665)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!803512 (= lt!359724 (select (store (arr!20909 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!803512 (= lt!359723 (array!43666 (store (arr!20909 a!3170) i!1163 k!2044) (size!21330 a!3170)))))

(declare-fun b!803513 () Bool)

(declare-fun e!445255 () Bool)

(declare-fun lt!359730 () SeekEntryResult!8507)

(assert (=> b!803513 (= e!445255 (not (or (not (= lt!359729 lt!359730)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-fun lt!359727 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!803513 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359727 vacantAfter!23 lt!359724 lt!359723 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359727 vacantBefore!23 (select (arr!20909 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27556 0))(
  ( (Unit!27557) )
))
(declare-fun lt!359722 () Unit!27556)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43665 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27556)

(assert (=> b!803513 (= lt!359722 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359727 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803513 (= lt!359727 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!803514 () Bool)

(declare-fun res!548212 () Bool)

(declare-fun e!445250 () Bool)

(assert (=> b!803514 (=> (not res!548212) (not e!445250))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803514 (= res!548212 (validKeyInArray!0 (select (arr!20909 a!3170) j!153)))))

(declare-fun b!803515 () Bool)

(declare-fun res!548210 () Bool)

(assert (=> b!803515 (=> (not res!548210) (not e!445250))))

(assert (=> b!803515 (= res!548210 (and (= (size!21330 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21330 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21330 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!803516 () Bool)

(declare-fun res!548201 () Bool)

(assert (=> b!803516 (=> (not res!548201) (not e!445250))))

(assert (=> b!803516 (= res!548201 (validKeyInArray!0 k!2044))))

(declare-fun b!803517 () Bool)

(declare-fun e!445252 () Bool)

(assert (=> b!803517 (= e!445252 e!445255)))

(declare-fun res!548204 () Bool)

(assert (=> b!803517 (=> (not res!548204) (not e!445255))))

(declare-fun lt!359731 () SeekEntryResult!8507)

(assert (=> b!803517 (= res!548204 (and (= lt!359731 lt!359730) (not (= (select (arr!20909 a!3170) index!1236) (select (arr!20909 a!3170) j!153)))))))

(assert (=> b!803517 (= lt!359730 (Found!8507 j!153))))

(declare-fun b!803518 () Bool)

(declare-fun res!548207 () Bool)

(assert (=> b!803518 (=> (not res!548207) (not e!445250))))

(declare-fun arrayContainsKey!0 (array!43665 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803518 (= res!548207 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803519 () Bool)

(declare-fun res!548203 () Bool)

(assert (=> b!803519 (=> (not res!548203) (not e!445254))))

(assert (=> b!803519 (= res!548203 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21330 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20909 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21330 a!3170)) (= (select (arr!20909 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803520 () Bool)

(declare-fun res!548205 () Bool)

(assert (=> b!803520 (=> (not res!548205) (not e!445254))))

(declare-datatypes ((List!14925 0))(
  ( (Nil!14922) (Cons!14921 (h!16050 (_ BitVec 64)) (t!21248 List!14925)) )
))
(declare-fun arrayNoDuplicates!0 (array!43665 (_ BitVec 32) List!14925) Bool)

(assert (=> b!803520 (= res!548205 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14922))))

(declare-fun b!803521 () Bool)

(assert (=> b!803521 (= e!445253 e!445252)))

(declare-fun res!548206 () Bool)

(assert (=> b!803521 (=> (not res!548206) (not e!445252))))

(declare-fun lt!359725 () SeekEntryResult!8507)

(assert (=> b!803521 (= res!548206 (= lt!359725 lt!359731))))

(assert (=> b!803521 (= lt!359731 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20909 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!803521 (= lt!359725 (seekEntryOrOpen!0 (select (arr!20909 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!803522 () Bool)

(assert (=> b!803522 (= e!445250 e!445254)))

(declare-fun res!548208 () Bool)

(assert (=> b!803522 (=> (not res!548208) (not e!445254))))

(declare-fun lt!359726 () SeekEntryResult!8507)

(assert (=> b!803522 (= res!548208 (or (= lt!359726 (MissingZero!8507 i!1163)) (= lt!359726 (MissingVacant!8507 i!1163))))))

(assert (=> b!803522 (= lt!359726 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!548211 () Bool)

(assert (=> start!68924 (=> (not res!548211) (not e!445250))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68924 (= res!548211 (validMask!0 mask!3266))))

(assert (=> start!68924 e!445250))

(assert (=> start!68924 true))

(declare-fun array_inv!16683 (array!43665) Bool)

(assert (=> start!68924 (array_inv!16683 a!3170)))

(declare-fun b!803523 () Bool)

(declare-fun res!548202 () Bool)

(assert (=> b!803523 (=> (not res!548202) (not e!445254))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43665 (_ BitVec 32)) Bool)

(assert (=> b!803523 (= res!548202 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!68924 res!548211) b!803515))

(assert (= (and b!803515 res!548210) b!803514))

(assert (= (and b!803514 res!548212) b!803516))

(assert (= (and b!803516 res!548201) b!803518))

(assert (= (and b!803518 res!548207) b!803522))

(assert (= (and b!803522 res!548208) b!803523))

(assert (= (and b!803523 res!548202) b!803520))

(assert (= (and b!803520 res!548205) b!803519))

(assert (= (and b!803519 res!548203) b!803512))

(assert (= (and b!803512 res!548209) b!803521))

(assert (= (and b!803521 res!548206) b!803517))

(assert (= (and b!803517 res!548204) b!803513))

(declare-fun m!745397 () Bool)

(assert (=> b!803519 m!745397))

(declare-fun m!745399 () Bool)

(assert (=> b!803519 m!745399))

(declare-fun m!745401 () Bool)

(assert (=> b!803521 m!745401))

(assert (=> b!803521 m!745401))

(declare-fun m!745403 () Bool)

(assert (=> b!803521 m!745403))

(assert (=> b!803521 m!745401))

(declare-fun m!745405 () Bool)

(assert (=> b!803521 m!745405))

(declare-fun m!745407 () Bool)

(assert (=> b!803512 m!745407))

(declare-fun m!745409 () Bool)

(assert (=> b!803512 m!745409))

(declare-fun m!745411 () Bool)

(assert (=> b!803512 m!745411))

(declare-fun m!745413 () Bool)

(assert (=> b!803512 m!745413))

(assert (=> b!803513 m!745401))

(declare-fun m!745415 () Bool)

(assert (=> b!803513 m!745415))

(declare-fun m!745417 () Bool)

(assert (=> b!803513 m!745417))

(declare-fun m!745419 () Bool)

(assert (=> b!803513 m!745419))

(assert (=> b!803513 m!745401))

(declare-fun m!745421 () Bool)

(assert (=> b!803513 m!745421))

(declare-fun m!745423 () Bool)

(assert (=> b!803518 m!745423))

(declare-fun m!745425 () Bool)

(assert (=> b!803522 m!745425))

(declare-fun m!745427 () Bool)

(assert (=> b!803517 m!745427))

(assert (=> b!803517 m!745401))

(declare-fun m!745429 () Bool)

(assert (=> start!68924 m!745429))

(declare-fun m!745431 () Bool)

(assert (=> start!68924 m!745431))

(declare-fun m!745433 () Bool)

(assert (=> b!803520 m!745433))

(declare-fun m!745435 () Bool)

(assert (=> b!803523 m!745435))

(assert (=> b!803514 m!745401))

(assert (=> b!803514 m!745401))

(declare-fun m!745437 () Bool)

(assert (=> b!803514 m!745437))

(declare-fun m!745439 () Bool)

(assert (=> b!803516 m!745439))

(push 1)

(assert (not start!68924))

(assert (not b!803516))

(assert (not b!803518))

(assert (not b!803521))

(assert (not b!803512))

(assert (not b!803522))

(assert (not b!803514))

(assert (not b!803523))

(assert (not b!803513))

(assert (not b!803520))

(check-sat)

(pop 1)

(push 1)

(check-sat)

