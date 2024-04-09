; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68998 () Bool)

(assert start!68998)

(declare-fun b!804460 () Bool)

(declare-fun res!549155 () Bool)

(declare-fun e!445667 () Bool)

(assert (=> b!804460 (=> (not res!549155) (not e!445667))))

(declare-datatypes ((array!43739 0))(
  ( (array!43740 (arr!20946 (Array (_ BitVec 32) (_ BitVec 64))) (size!21367 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43739)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43739 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804460 (= res!549155 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804461 () Bool)

(declare-fun e!445668 () Bool)

(assert (=> b!804461 (= e!445668 false)))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!360156 () array!43739)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!360160 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8544 0))(
  ( (MissingZero!8544 (index!36543 (_ BitVec 32))) (Found!8544 (index!36544 (_ BitVec 32))) (Intermediate!8544 (undefined!9356 Bool) (index!36545 (_ BitVec 32)) (x!67399 (_ BitVec 32))) (Undefined!8544) (MissingVacant!8544 (index!36546 (_ BitVec 32))) )
))
(declare-fun lt!360158 () SeekEntryResult!8544)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43739 (_ BitVec 32)) SeekEntryResult!8544)

(assert (=> b!804461 (= lt!360158 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!360160 lt!360156 mask!3266))))

(declare-fun lt!360159 () SeekEntryResult!8544)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43739 (_ BitVec 32)) SeekEntryResult!8544)

(assert (=> b!804461 (= lt!360159 (seekEntryOrOpen!0 lt!360160 lt!360156 mask!3266))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!804461 (= lt!360160 (select (store (arr!20946 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!804461 (= lt!360156 (array!43740 (store (arr!20946 a!3170) i!1163 k!2044) (size!21367 a!3170)))))

(declare-fun b!804462 () Bool)

(declare-fun res!549153 () Bool)

(assert (=> b!804462 (=> (not res!549153) (not e!445667))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804462 (= res!549153 (validKeyInArray!0 k!2044))))

(declare-fun b!804463 () Bool)

(declare-fun res!549154 () Bool)

(assert (=> b!804463 (=> (not res!549154) (not e!445668))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43739 (_ BitVec 32)) Bool)

(assert (=> b!804463 (= res!549154 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!549157 () Bool)

(assert (=> start!68998 (=> (not res!549157) (not e!445667))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68998 (= res!549157 (validMask!0 mask!3266))))

(assert (=> start!68998 e!445667))

(assert (=> start!68998 true))

(declare-fun array_inv!16720 (array!43739) Bool)

(assert (=> start!68998 (array_inv!16720 a!3170)))

(declare-fun b!804464 () Bool)

(declare-fun res!549156 () Bool)

(assert (=> b!804464 (=> (not res!549156) (not e!445668))))

(declare-datatypes ((List!14962 0))(
  ( (Nil!14959) (Cons!14958 (h!16087 (_ BitVec 64)) (t!21285 List!14962)) )
))
(declare-fun arrayNoDuplicates!0 (array!43739 (_ BitVec 32) List!14962) Bool)

(assert (=> b!804464 (= res!549156 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14959))))

(declare-fun b!804465 () Bool)

(declare-fun res!549151 () Bool)

(assert (=> b!804465 (=> (not res!549151) (not e!445667))))

(assert (=> b!804465 (= res!549151 (validKeyInArray!0 (select (arr!20946 a!3170) j!153)))))

(declare-fun b!804466 () Bool)

(assert (=> b!804466 (= e!445667 e!445668)))

(declare-fun res!549152 () Bool)

(assert (=> b!804466 (=> (not res!549152) (not e!445668))))

(declare-fun lt!360157 () SeekEntryResult!8544)

(assert (=> b!804466 (= res!549152 (or (= lt!360157 (MissingZero!8544 i!1163)) (= lt!360157 (MissingVacant!8544 i!1163))))))

(assert (=> b!804466 (= lt!360157 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!804467 () Bool)

(declare-fun res!549150 () Bool)

(assert (=> b!804467 (=> (not res!549150) (not e!445667))))

(assert (=> b!804467 (= res!549150 (and (= (size!21367 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21367 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21367 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804468 () Bool)

(declare-fun res!549149 () Bool)

(assert (=> b!804468 (=> (not res!549149) (not e!445668))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!804468 (= res!549149 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21367 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20946 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21367 a!3170)) (= (select (arr!20946 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!68998 res!549157) b!804467))

(assert (= (and b!804467 res!549150) b!804465))

(assert (= (and b!804465 res!549151) b!804462))

(assert (= (and b!804462 res!549153) b!804460))

(assert (= (and b!804460 res!549155) b!804466))

(assert (= (and b!804466 res!549152) b!804463))

(assert (= (and b!804463 res!549154) b!804464))

(assert (= (and b!804464 res!549156) b!804468))

(assert (= (and b!804468 res!549149) b!804461))

(declare-fun m!746401 () Bool)

(assert (=> start!68998 m!746401))

(declare-fun m!746403 () Bool)

(assert (=> start!68998 m!746403))

(declare-fun m!746405 () Bool)

(assert (=> b!804463 m!746405))

(declare-fun m!746407 () Bool)

(assert (=> b!804464 m!746407))

(declare-fun m!746409 () Bool)

(assert (=> b!804466 m!746409))

(declare-fun m!746411 () Bool)

(assert (=> b!804468 m!746411))

(declare-fun m!746413 () Bool)

(assert (=> b!804468 m!746413))

(declare-fun m!746415 () Bool)

(assert (=> b!804460 m!746415))

(declare-fun m!746417 () Bool)

(assert (=> b!804462 m!746417))

(declare-fun m!746419 () Bool)

(assert (=> b!804461 m!746419))

(declare-fun m!746421 () Bool)

(assert (=> b!804461 m!746421))

(declare-fun m!746423 () Bool)

(assert (=> b!804461 m!746423))

(declare-fun m!746425 () Bool)

(assert (=> b!804461 m!746425))

(declare-fun m!746427 () Bool)

(assert (=> b!804465 m!746427))

(assert (=> b!804465 m!746427))

(declare-fun m!746429 () Bool)

(assert (=> b!804465 m!746429))

(push 1)

