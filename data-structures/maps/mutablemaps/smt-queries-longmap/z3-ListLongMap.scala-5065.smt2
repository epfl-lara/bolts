; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68922 () Bool)

(assert start!68922)

(declare-fun b!803476 () Bool)

(declare-fun e!445234 () Bool)

(declare-fun e!445235 () Bool)

(assert (=> b!803476 (= e!445234 e!445235)))

(declare-fun res!548174 () Bool)

(assert (=> b!803476 (=> (not res!548174) (not e!445235))))

(declare-datatypes ((SeekEntryResult!8506 0))(
  ( (MissingZero!8506 (index!36391 (_ BitVec 32))) (Found!8506 (index!36392 (_ BitVec 32))) (Intermediate!8506 (undefined!9318 Bool) (index!36393 (_ BitVec 32)) (x!67257 (_ BitVec 32))) (Undefined!8506) (MissingVacant!8506 (index!36394 (_ BitVec 32))) )
))
(declare-fun lt!359697 () SeekEntryResult!8506)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!803476 (= res!548174 (or (= lt!359697 (MissingZero!8506 i!1163)) (= lt!359697 (MissingVacant!8506 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-datatypes ((array!43663 0))(
  ( (array!43664 (arr!20908 (Array (_ BitVec 32) (_ BitVec 64))) (size!21329 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43663)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43663 (_ BitVec 32)) SeekEntryResult!8506)

(assert (=> b!803476 (= lt!359697 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!803477 () Bool)

(declare-fun res!548175 () Bool)

(assert (=> b!803477 (=> (not res!548175) (not e!445235))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!803477 (= res!548175 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21329 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20908 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21329 a!3170)) (= (select (arr!20908 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803478 () Bool)

(declare-fun res!548168 () Bool)

(assert (=> b!803478 (=> (not res!548168) (not e!445234))))

(declare-fun arrayContainsKey!0 (array!43663 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803478 (= res!548168 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803480 () Bool)

(declare-fun e!445232 () Bool)

(declare-fun e!445233 () Bool)

(assert (=> b!803480 (= e!445232 e!445233)))

(declare-fun res!548172 () Bool)

(assert (=> b!803480 (=> (not res!548172) (not e!445233))))

(declare-fun lt!359701 () SeekEntryResult!8506)

(declare-fun lt!359696 () SeekEntryResult!8506)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!803480 (= res!548172 (and (= lt!359696 lt!359701) (not (= (select (arr!20908 a!3170) index!1236) (select (arr!20908 a!3170) j!153)))))))

(assert (=> b!803480 (= lt!359701 (Found!8506 j!153))))

(declare-fun b!803481 () Bool)

(declare-fun res!548165 () Bool)

(assert (=> b!803481 (=> (not res!548165) (not e!445235))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43663 (_ BitVec 32)) Bool)

(assert (=> b!803481 (= res!548165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803482 () Bool)

(declare-fun res!548171 () Bool)

(assert (=> b!803482 (=> (not res!548171) (not e!445234))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803482 (= res!548171 (validKeyInArray!0 (select (arr!20908 a!3170) j!153)))))

(declare-fun b!803483 () Bool)

(declare-fun res!548176 () Bool)

(assert (=> b!803483 (=> (not res!548176) (not e!445234))))

(assert (=> b!803483 (= res!548176 (and (= (size!21329 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21329 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21329 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!803484 () Bool)

(declare-fun e!445236 () Bool)

(assert (=> b!803484 (= e!445235 e!445236)))

(declare-fun res!548170 () Bool)

(assert (=> b!803484 (=> (not res!548170) (not e!445236))))

(declare-fun lt!359698 () SeekEntryResult!8506)

(declare-fun lt!359695 () SeekEntryResult!8506)

(assert (=> b!803484 (= res!548170 (= lt!359698 lt!359695))))

(declare-fun lt!359700 () (_ BitVec 64))

(declare-fun lt!359694 () array!43663)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43663 (_ BitVec 32)) SeekEntryResult!8506)

(assert (=> b!803484 (= lt!359695 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359700 lt!359694 mask!3266))))

(assert (=> b!803484 (= lt!359698 (seekEntryOrOpen!0 lt!359700 lt!359694 mask!3266))))

(assert (=> b!803484 (= lt!359700 (select (store (arr!20908 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!803484 (= lt!359694 (array!43664 (store (arr!20908 a!3170) i!1163 k0!2044) (size!21329 a!3170)))))

(declare-fun b!803485 () Bool)

(assert (=> b!803485 (= e!445233 (not (or (not (= lt!359695 lt!359701)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-fun lt!359692 () (_ BitVec 32))

(assert (=> b!803485 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359692 vacantAfter!23 lt!359700 lt!359694 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359692 vacantBefore!23 (select (arr!20908 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27554 0))(
  ( (Unit!27555) )
))
(declare-fun lt!359699 () Unit!27554)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43663 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27554)

(assert (=> b!803485 (= lt!359699 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!359692 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803485 (= lt!359692 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!803486 () Bool)

(declare-fun res!548173 () Bool)

(assert (=> b!803486 (=> (not res!548173) (not e!445234))))

(assert (=> b!803486 (= res!548173 (validKeyInArray!0 k0!2044))))

(declare-fun b!803487 () Bool)

(assert (=> b!803487 (= e!445236 e!445232)))

(declare-fun res!548166 () Bool)

(assert (=> b!803487 (=> (not res!548166) (not e!445232))))

(declare-fun lt!359693 () SeekEntryResult!8506)

(assert (=> b!803487 (= res!548166 (= lt!359693 lt!359696))))

(assert (=> b!803487 (= lt!359696 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20908 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!803487 (= lt!359693 (seekEntryOrOpen!0 (select (arr!20908 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!548169 () Bool)

(assert (=> start!68922 (=> (not res!548169) (not e!445234))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68922 (= res!548169 (validMask!0 mask!3266))))

(assert (=> start!68922 e!445234))

(assert (=> start!68922 true))

(declare-fun array_inv!16682 (array!43663) Bool)

(assert (=> start!68922 (array_inv!16682 a!3170)))

(declare-fun b!803479 () Bool)

(declare-fun res!548167 () Bool)

(assert (=> b!803479 (=> (not res!548167) (not e!445235))))

(declare-datatypes ((List!14924 0))(
  ( (Nil!14921) (Cons!14920 (h!16049 (_ BitVec 64)) (t!21247 List!14924)) )
))
(declare-fun arrayNoDuplicates!0 (array!43663 (_ BitVec 32) List!14924) Bool)

(assert (=> b!803479 (= res!548167 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14921))))

(assert (= (and start!68922 res!548169) b!803483))

(assert (= (and b!803483 res!548176) b!803482))

(assert (= (and b!803482 res!548171) b!803486))

(assert (= (and b!803486 res!548173) b!803478))

(assert (= (and b!803478 res!548168) b!803476))

(assert (= (and b!803476 res!548174) b!803481))

(assert (= (and b!803481 res!548165) b!803479))

(assert (= (and b!803479 res!548167) b!803477))

(assert (= (and b!803477 res!548175) b!803484))

(assert (= (and b!803484 res!548170) b!803487))

(assert (= (and b!803487 res!548166) b!803480))

(assert (= (and b!803480 res!548172) b!803485))

(declare-fun m!745353 () Bool)

(assert (=> b!803487 m!745353))

(assert (=> b!803487 m!745353))

(declare-fun m!745355 () Bool)

(assert (=> b!803487 m!745355))

(assert (=> b!803487 m!745353))

(declare-fun m!745357 () Bool)

(assert (=> b!803487 m!745357))

(declare-fun m!745359 () Bool)

(assert (=> b!803480 m!745359))

(assert (=> b!803480 m!745353))

(declare-fun m!745361 () Bool)

(assert (=> b!803476 m!745361))

(declare-fun m!745363 () Bool)

(assert (=> b!803481 m!745363))

(assert (=> b!803482 m!745353))

(assert (=> b!803482 m!745353))

(declare-fun m!745365 () Bool)

(assert (=> b!803482 m!745365))

(assert (=> b!803485 m!745353))

(declare-fun m!745367 () Bool)

(assert (=> b!803485 m!745367))

(assert (=> b!803485 m!745353))

(declare-fun m!745369 () Bool)

(assert (=> b!803485 m!745369))

(declare-fun m!745371 () Bool)

(assert (=> b!803485 m!745371))

(declare-fun m!745373 () Bool)

(assert (=> b!803485 m!745373))

(declare-fun m!745375 () Bool)

(assert (=> b!803484 m!745375))

(declare-fun m!745377 () Bool)

(assert (=> b!803484 m!745377))

(declare-fun m!745379 () Bool)

(assert (=> b!803484 m!745379))

(declare-fun m!745381 () Bool)

(assert (=> b!803484 m!745381))

(declare-fun m!745383 () Bool)

(assert (=> b!803478 m!745383))

(declare-fun m!745385 () Bool)

(assert (=> start!68922 m!745385))

(declare-fun m!745387 () Bool)

(assert (=> start!68922 m!745387))

(declare-fun m!745389 () Bool)

(assert (=> b!803479 m!745389))

(declare-fun m!745391 () Bool)

(assert (=> b!803477 m!745391))

(declare-fun m!745393 () Bool)

(assert (=> b!803477 m!745393))

(declare-fun m!745395 () Bool)

(assert (=> b!803486 m!745395))

(check-sat (not b!803482) (not b!803476) (not b!803481) (not b!803479) (not b!803484) (not b!803487) (not b!803486) (not b!803485) (not start!68922) (not b!803478))
(check-sat)
