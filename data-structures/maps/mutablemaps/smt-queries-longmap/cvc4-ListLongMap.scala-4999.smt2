; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68528 () Bool)

(assert start!68528)

(declare-fun b!796412 () Bool)

(declare-fun res!541101 () Bool)

(declare-fun e!441931 () Bool)

(assert (=> b!796412 (=> (not res!541101) (not e!441931))))

(declare-datatypes ((array!43269 0))(
  ( (array!43270 (arr!20711 (Array (_ BitVec 32) (_ BitVec 64))) (size!21132 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43269)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43269 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796412 (= res!541101 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!796413 () Bool)

(declare-fun res!541111 () Bool)

(assert (=> b!796413 (=> (not res!541111) (not e!441931))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796413 (= res!541111 (validKeyInArray!0 (select (arr!20711 a!3170) j!153)))))

(declare-fun e!441930 () Bool)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun b!796414 () Bool)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!796414 (= e!441930 (not (or (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvslt vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-datatypes ((SeekEntryResult!8309 0))(
  ( (MissingZero!8309 (index!35603 (_ BitVec 32))) (Found!8309 (index!35604 (_ BitVec 32))) (Intermediate!8309 (undefined!9121 Bool) (index!35605 (_ BitVec 32)) (x!66532 (_ BitVec 32))) (Undefined!8309) (MissingVacant!8309 (index!35606 (_ BitVec 32))) )
))
(declare-fun lt!355166 () SeekEntryResult!8309)

(assert (=> b!796414 (= lt!355166 (Found!8309 index!1236))))

(declare-fun b!796415 () Bool)

(declare-fun e!441934 () Bool)

(assert (=> b!796415 (= e!441934 e!441930)))

(declare-fun res!541110 () Bool)

(assert (=> b!796415 (=> (not res!541110) (not e!441930))))

(declare-fun lt!355164 () SeekEntryResult!8309)

(declare-fun lt!355165 () SeekEntryResult!8309)

(assert (=> b!796415 (= res!541110 (and (= lt!355164 lt!355165) (= lt!355165 (Found!8309 j!153)) (= (select (arr!20711 a!3170) index!1236) (select (arr!20711 a!3170) j!153))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43269 (_ BitVec 32)) SeekEntryResult!8309)

(assert (=> b!796415 (= lt!355165 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20711 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43269 (_ BitVec 32)) SeekEntryResult!8309)

(assert (=> b!796415 (= lt!355164 (seekEntryOrOpen!0 (select (arr!20711 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796416 () Bool)

(declare-fun res!541105 () Bool)

(assert (=> b!796416 (=> (not res!541105) (not e!441931))))

(assert (=> b!796416 (= res!541105 (validKeyInArray!0 k!2044))))

(declare-fun b!796417 () Bool)

(declare-fun res!541107 () Bool)

(declare-fun e!441933 () Bool)

(assert (=> b!796417 (=> (not res!541107) (not e!441933))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43269 (_ BitVec 32)) Bool)

(assert (=> b!796417 (= res!541107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796418 () Bool)

(declare-fun res!541102 () Bool)

(assert (=> b!796418 (=> (not res!541102) (not e!441931))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!796418 (= res!541102 (and (= (size!21132 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21132 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21132 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!796419 () Bool)

(assert (=> b!796419 (= e!441933 e!441934)))

(declare-fun res!541103 () Bool)

(assert (=> b!796419 (=> (not res!541103) (not e!441934))))

(declare-fun lt!355167 () SeekEntryResult!8309)

(assert (=> b!796419 (= res!541103 (= lt!355167 lt!355166))))

(declare-fun lt!355162 () (_ BitVec 64))

(declare-fun lt!355163 () array!43269)

(assert (=> b!796419 (= lt!355166 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355162 lt!355163 mask!3266))))

(assert (=> b!796419 (= lt!355167 (seekEntryOrOpen!0 lt!355162 lt!355163 mask!3266))))

(assert (=> b!796419 (= lt!355162 (select (store (arr!20711 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!796419 (= lt!355163 (array!43270 (store (arr!20711 a!3170) i!1163 k!2044) (size!21132 a!3170)))))

(declare-fun res!541108 () Bool)

(assert (=> start!68528 (=> (not res!541108) (not e!441931))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68528 (= res!541108 (validMask!0 mask!3266))))

(assert (=> start!68528 e!441931))

(assert (=> start!68528 true))

(declare-fun array_inv!16485 (array!43269) Bool)

(assert (=> start!68528 (array_inv!16485 a!3170)))

(declare-fun b!796420 () Bool)

(assert (=> b!796420 (= e!441931 e!441933)))

(declare-fun res!541109 () Bool)

(assert (=> b!796420 (=> (not res!541109) (not e!441933))))

(declare-fun lt!355168 () SeekEntryResult!8309)

(assert (=> b!796420 (= res!541109 (or (= lt!355168 (MissingZero!8309 i!1163)) (= lt!355168 (MissingVacant!8309 i!1163))))))

(assert (=> b!796420 (= lt!355168 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!796421 () Bool)

(declare-fun res!541104 () Bool)

(assert (=> b!796421 (=> (not res!541104) (not e!441933))))

(assert (=> b!796421 (= res!541104 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21132 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20711 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21132 a!3170)) (= (select (arr!20711 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796422 () Bool)

(declare-fun res!541106 () Bool)

(assert (=> b!796422 (=> (not res!541106) (not e!441933))))

(declare-datatypes ((List!14727 0))(
  ( (Nil!14724) (Cons!14723 (h!15852 (_ BitVec 64)) (t!21050 List!14727)) )
))
(declare-fun arrayNoDuplicates!0 (array!43269 (_ BitVec 32) List!14727) Bool)

(assert (=> b!796422 (= res!541106 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14724))))

(assert (= (and start!68528 res!541108) b!796418))

(assert (= (and b!796418 res!541102) b!796413))

(assert (= (and b!796413 res!541111) b!796416))

(assert (= (and b!796416 res!541105) b!796412))

(assert (= (and b!796412 res!541101) b!796420))

(assert (= (and b!796420 res!541109) b!796417))

(assert (= (and b!796417 res!541107) b!796422))

(assert (= (and b!796422 res!541106) b!796421))

(assert (= (and b!796421 res!541104) b!796419))

(assert (= (and b!796419 res!541103) b!796415))

(assert (= (and b!796415 res!541110) b!796414))

(declare-fun m!737305 () Bool)

(assert (=> b!796422 m!737305))

(declare-fun m!737307 () Bool)

(assert (=> start!68528 m!737307))

(declare-fun m!737309 () Bool)

(assert (=> start!68528 m!737309))

(declare-fun m!737311 () Bool)

(assert (=> b!796413 m!737311))

(assert (=> b!796413 m!737311))

(declare-fun m!737313 () Bool)

(assert (=> b!796413 m!737313))

(declare-fun m!737315 () Bool)

(assert (=> b!796421 m!737315))

(declare-fun m!737317 () Bool)

(assert (=> b!796421 m!737317))

(declare-fun m!737319 () Bool)

(assert (=> b!796419 m!737319))

(declare-fun m!737321 () Bool)

(assert (=> b!796419 m!737321))

(declare-fun m!737323 () Bool)

(assert (=> b!796419 m!737323))

(declare-fun m!737325 () Bool)

(assert (=> b!796419 m!737325))

(declare-fun m!737327 () Bool)

(assert (=> b!796420 m!737327))

(declare-fun m!737329 () Bool)

(assert (=> b!796412 m!737329))

(declare-fun m!737331 () Bool)

(assert (=> b!796417 m!737331))

(declare-fun m!737333 () Bool)

(assert (=> b!796415 m!737333))

(assert (=> b!796415 m!737311))

(assert (=> b!796415 m!737311))

(declare-fun m!737335 () Bool)

(assert (=> b!796415 m!737335))

(assert (=> b!796415 m!737311))

(declare-fun m!737337 () Bool)

(assert (=> b!796415 m!737337))

(declare-fun m!737339 () Bool)

(assert (=> b!796416 m!737339))

(push 1)

(assert (not b!796422))

(assert (not b!796415))

(assert (not start!68528))

(assert (not b!796419))

(assert (not b!796417))

(assert (not b!796412))

(assert (not b!796420))

(assert (not b!796413))

(assert (not b!796416))

(check-sat)

(pop 1)

(push 1)

(check-sat)

