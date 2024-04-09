; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68530 () Bool)

(assert start!68530)

(declare-fun b!796445 () Bool)

(declare-fun res!541141 () Bool)

(declare-fun e!441948 () Bool)

(assert (=> b!796445 (=> (not res!541141) (not e!441948))))

(declare-datatypes ((array!43271 0))(
  ( (array!43272 (arr!20712 (Array (_ BitVec 32) (_ BitVec 64))) (size!21133 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43271)

(declare-datatypes ((List!14728 0))(
  ( (Nil!14725) (Cons!14724 (h!15853 (_ BitVec 64)) (t!21051 List!14728)) )
))
(declare-fun arrayNoDuplicates!0 (array!43271 (_ BitVec 32) List!14728) Bool)

(assert (=> b!796445 (= res!541141 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14725))))

(declare-fun b!796446 () Bool)

(declare-fun res!541134 () Bool)

(declare-fun e!441947 () Bool)

(assert (=> b!796446 (=> (not res!541134) (not e!441947))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796446 (= res!541134 (validKeyInArray!0 k!2044))))

(declare-fun b!796447 () Bool)

(declare-fun res!541142 () Bool)

(assert (=> b!796447 (=> (not res!541142) (not e!441948))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!796447 (= res!541142 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21133 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20712 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21133 a!3170)) (= (select (arr!20712 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796448 () Bool)

(declare-fun res!541138 () Bool)

(assert (=> b!796448 (=> (not res!541138) (not e!441947))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!796448 (= res!541138 (validKeyInArray!0 (select (arr!20712 a!3170) j!153)))))

(declare-fun b!796450 () Bool)

(declare-fun e!441945 () Bool)

(declare-fun e!441949 () Bool)

(assert (=> b!796450 (= e!441945 e!441949)))

(declare-fun res!541135 () Bool)

(assert (=> b!796450 (=> (not res!541135) (not e!441949))))

(declare-datatypes ((SeekEntryResult!8310 0))(
  ( (MissingZero!8310 (index!35607 (_ BitVec 32))) (Found!8310 (index!35608 (_ BitVec 32))) (Intermediate!8310 (undefined!9122 Bool) (index!35609 (_ BitVec 32)) (x!66541 (_ BitVec 32))) (Undefined!8310) (MissingVacant!8310 (index!35610 (_ BitVec 32))) )
))
(declare-fun lt!355188 () SeekEntryResult!8310)

(declare-fun lt!355189 () SeekEntryResult!8310)

(assert (=> b!796450 (= res!541135 (and (= lt!355189 lt!355188) (= lt!355188 (Found!8310 j!153)) (= (select (arr!20712 a!3170) index!1236) (select (arr!20712 a!3170) j!153))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43271 (_ BitVec 32)) SeekEntryResult!8310)

(assert (=> b!796450 (= lt!355188 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20712 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43271 (_ BitVec 32)) SeekEntryResult!8310)

(assert (=> b!796450 (= lt!355189 (seekEntryOrOpen!0 (select (arr!20712 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796451 () Bool)

(declare-fun res!541144 () Bool)

(assert (=> b!796451 (=> (not res!541144) (not e!441947))))

(assert (=> b!796451 (= res!541144 (and (= (size!21133 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21133 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21133 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!796452 () Bool)

(declare-fun res!541140 () Bool)

(assert (=> b!796452 (=> (not res!541140) (not e!441948))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43271 (_ BitVec 32)) Bool)

(assert (=> b!796452 (= res!541140 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796453 () Bool)

(assert (=> b!796453 (= e!441949 (not (or (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (= (select (store (arr!20712 a!3170) i!1163 k!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!355186 () SeekEntryResult!8310)

(assert (=> b!796453 (= lt!355186 (Found!8310 index!1236))))

(declare-fun b!796449 () Bool)

(assert (=> b!796449 (= e!441947 e!441948)))

(declare-fun res!541143 () Bool)

(assert (=> b!796449 (=> (not res!541143) (not e!441948))))

(declare-fun lt!355185 () SeekEntryResult!8310)

(assert (=> b!796449 (= res!541143 (or (= lt!355185 (MissingZero!8310 i!1163)) (= lt!355185 (MissingVacant!8310 i!1163))))))

(assert (=> b!796449 (= lt!355185 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun res!541137 () Bool)

(assert (=> start!68530 (=> (not res!541137) (not e!441947))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68530 (= res!541137 (validMask!0 mask!3266))))

(assert (=> start!68530 e!441947))

(assert (=> start!68530 true))

(declare-fun array_inv!16486 (array!43271) Bool)

(assert (=> start!68530 (array_inv!16486 a!3170)))

(declare-fun b!796454 () Bool)

(declare-fun res!541136 () Bool)

(assert (=> b!796454 (=> (not res!541136) (not e!441947))))

(declare-fun arrayContainsKey!0 (array!43271 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796454 (= res!541136 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!796455 () Bool)

(assert (=> b!796455 (= e!441948 e!441945)))

(declare-fun res!541139 () Bool)

(assert (=> b!796455 (=> (not res!541139) (not e!441945))))

(declare-fun lt!355183 () SeekEntryResult!8310)

(assert (=> b!796455 (= res!541139 (= lt!355183 lt!355186))))

(declare-fun lt!355187 () array!43271)

(declare-fun lt!355184 () (_ BitVec 64))

(assert (=> b!796455 (= lt!355186 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355184 lt!355187 mask!3266))))

(assert (=> b!796455 (= lt!355183 (seekEntryOrOpen!0 lt!355184 lt!355187 mask!3266))))

(assert (=> b!796455 (= lt!355184 (select (store (arr!20712 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!796455 (= lt!355187 (array!43272 (store (arr!20712 a!3170) i!1163 k!2044) (size!21133 a!3170)))))

(assert (= (and start!68530 res!541137) b!796451))

(assert (= (and b!796451 res!541144) b!796448))

(assert (= (and b!796448 res!541138) b!796446))

(assert (= (and b!796446 res!541134) b!796454))

(assert (= (and b!796454 res!541136) b!796449))

(assert (= (and b!796449 res!541143) b!796452))

(assert (= (and b!796452 res!541140) b!796445))

(assert (= (and b!796445 res!541141) b!796447))

(assert (= (and b!796447 res!541142) b!796455))

(assert (= (and b!796455 res!541139) b!796450))

(assert (= (and b!796450 res!541135) b!796453))

(declare-fun m!737341 () Bool)

(assert (=> b!796448 m!737341))

(assert (=> b!796448 m!737341))

(declare-fun m!737343 () Bool)

(assert (=> b!796448 m!737343))

(declare-fun m!737345 () Bool)

(assert (=> b!796454 m!737345))

(declare-fun m!737347 () Bool)

(assert (=> b!796445 m!737347))

(declare-fun m!737349 () Bool)

(assert (=> b!796450 m!737349))

(assert (=> b!796450 m!737341))

(assert (=> b!796450 m!737341))

(declare-fun m!737351 () Bool)

(assert (=> b!796450 m!737351))

(assert (=> b!796450 m!737341))

(declare-fun m!737353 () Bool)

(assert (=> b!796450 m!737353))

(declare-fun m!737355 () Bool)

(assert (=> b!796452 m!737355))

(declare-fun m!737357 () Bool)

(assert (=> start!68530 m!737357))

(declare-fun m!737359 () Bool)

(assert (=> start!68530 m!737359))

(declare-fun m!737361 () Bool)

(assert (=> b!796446 m!737361))

(declare-fun m!737363 () Bool)

(assert (=> b!796447 m!737363))

(declare-fun m!737365 () Bool)

(assert (=> b!796447 m!737365))

(declare-fun m!737367 () Bool)

(assert (=> b!796449 m!737367))

(declare-fun m!737369 () Bool)

(assert (=> b!796455 m!737369))

(declare-fun m!737371 () Bool)

(assert (=> b!796455 m!737371))

(declare-fun m!737373 () Bool)

(assert (=> b!796455 m!737373))

(declare-fun m!737375 () Bool)

(assert (=> b!796455 m!737375))

(assert (=> b!796453 m!737373))

(declare-fun m!737377 () Bool)

(assert (=> b!796453 m!737377))

(push 1)

