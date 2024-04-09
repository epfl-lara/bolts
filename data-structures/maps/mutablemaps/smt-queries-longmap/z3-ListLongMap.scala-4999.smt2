; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68526 () Bool)

(assert start!68526)

(declare-fun b!796379 () Bool)

(declare-fun e!441915 () Bool)

(declare-fun e!441919 () Bool)

(assert (=> b!796379 (= e!441915 e!441919)))

(declare-fun res!541078 () Bool)

(assert (=> b!796379 (=> (not res!541078) (not e!441919))))

(declare-datatypes ((SeekEntryResult!8308 0))(
  ( (MissingZero!8308 (index!35599 (_ BitVec 32))) (Found!8308 (index!35600 (_ BitVec 32))) (Intermediate!8308 (undefined!9120 Bool) (index!35601 (_ BitVec 32)) (x!66531 (_ BitVec 32))) (Undefined!8308) (MissingVacant!8308 (index!35602 (_ BitVec 32))) )
))
(declare-fun lt!355144 () SeekEntryResult!8308)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((array!43267 0))(
  ( (array!43268 (arr!20710 (Array (_ BitVec 32) (_ BitVec 64))) (size!21131 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43267)

(declare-fun lt!355145 () SeekEntryResult!8308)

(assert (=> b!796379 (= res!541078 (and (= lt!355144 lt!355145) (= lt!355145 (Found!8308 j!153)) (= (select (arr!20710 a!3170) index!1236) (select (arr!20710 a!3170) j!153))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43267 (_ BitVec 32)) SeekEntryResult!8308)

(assert (=> b!796379 (= lt!355145 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20710 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43267 (_ BitVec 32)) SeekEntryResult!8308)

(assert (=> b!796379 (= lt!355144 (seekEntryOrOpen!0 (select (arr!20710 a!3170) j!153) a!3170 mask!3266))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun b!796380 () Bool)

(assert (=> b!796380 (= e!441919 (not (or (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvslt vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-fun lt!355146 () SeekEntryResult!8308)

(assert (=> b!796380 (= lt!355146 (Found!8308 index!1236))))

(declare-fun b!796381 () Bool)

(declare-fun res!541072 () Bool)

(declare-fun e!441918 () Bool)

(assert (=> b!796381 (=> (not res!541072) (not e!441918))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796381 (= res!541072 (validKeyInArray!0 (select (arr!20710 a!3170) j!153)))))

(declare-fun b!796383 () Bool)

(declare-fun res!541071 () Bool)

(assert (=> b!796383 (=> (not res!541071) (not e!441918))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43267 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796383 (= res!541071 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!796384 () Bool)

(declare-fun res!541075 () Bool)

(assert (=> b!796384 (=> (not res!541075) (not e!441918))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!796384 (= res!541075 (and (= (size!21131 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21131 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21131 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!796385 () Bool)

(declare-fun e!441917 () Bool)

(assert (=> b!796385 (= e!441917 e!441915)))

(declare-fun res!541077 () Bool)

(assert (=> b!796385 (=> (not res!541077) (not e!441915))))

(declare-fun lt!355141 () SeekEntryResult!8308)

(assert (=> b!796385 (= res!541077 (= lt!355141 lt!355146))))

(declare-fun lt!355143 () (_ BitVec 64))

(declare-fun lt!355142 () array!43267)

(assert (=> b!796385 (= lt!355146 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355143 lt!355142 mask!3266))))

(assert (=> b!796385 (= lt!355141 (seekEntryOrOpen!0 lt!355143 lt!355142 mask!3266))))

(assert (=> b!796385 (= lt!355143 (select (store (arr!20710 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!796385 (= lt!355142 (array!43268 (store (arr!20710 a!3170) i!1163 k0!2044) (size!21131 a!3170)))))

(declare-fun b!796386 () Bool)

(declare-fun res!541074 () Bool)

(assert (=> b!796386 (=> (not res!541074) (not e!441917))))

(declare-datatypes ((List!14726 0))(
  ( (Nil!14723) (Cons!14722 (h!15851 (_ BitVec 64)) (t!21049 List!14726)) )
))
(declare-fun arrayNoDuplicates!0 (array!43267 (_ BitVec 32) List!14726) Bool)

(assert (=> b!796386 (= res!541074 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14723))))

(declare-fun b!796387 () Bool)

(declare-fun res!541073 () Bool)

(assert (=> b!796387 (=> (not res!541073) (not e!441917))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43267 (_ BitVec 32)) Bool)

(assert (=> b!796387 (= res!541073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796382 () Bool)

(declare-fun res!541070 () Bool)

(assert (=> b!796382 (=> (not res!541070) (not e!441918))))

(assert (=> b!796382 (= res!541070 (validKeyInArray!0 k0!2044))))

(declare-fun res!541069 () Bool)

(assert (=> start!68526 (=> (not res!541069) (not e!441918))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68526 (= res!541069 (validMask!0 mask!3266))))

(assert (=> start!68526 e!441918))

(assert (=> start!68526 true))

(declare-fun array_inv!16484 (array!43267) Bool)

(assert (=> start!68526 (array_inv!16484 a!3170)))

(declare-fun b!796388 () Bool)

(declare-fun res!541076 () Bool)

(assert (=> b!796388 (=> (not res!541076) (not e!441917))))

(assert (=> b!796388 (= res!541076 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21131 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20710 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21131 a!3170)) (= (select (arr!20710 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796389 () Bool)

(assert (=> b!796389 (= e!441918 e!441917)))

(declare-fun res!541068 () Bool)

(assert (=> b!796389 (=> (not res!541068) (not e!441917))))

(declare-fun lt!355147 () SeekEntryResult!8308)

(assert (=> b!796389 (= res!541068 (or (= lt!355147 (MissingZero!8308 i!1163)) (= lt!355147 (MissingVacant!8308 i!1163))))))

(assert (=> b!796389 (= lt!355147 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(assert (= (and start!68526 res!541069) b!796384))

(assert (= (and b!796384 res!541075) b!796381))

(assert (= (and b!796381 res!541072) b!796382))

(assert (= (and b!796382 res!541070) b!796383))

(assert (= (and b!796383 res!541071) b!796389))

(assert (= (and b!796389 res!541068) b!796387))

(assert (= (and b!796387 res!541073) b!796386))

(assert (= (and b!796386 res!541074) b!796388))

(assert (= (and b!796388 res!541076) b!796385))

(assert (= (and b!796385 res!541077) b!796379))

(assert (= (and b!796379 res!541078) b!796380))

(declare-fun m!737269 () Bool)

(assert (=> start!68526 m!737269))

(declare-fun m!737271 () Bool)

(assert (=> start!68526 m!737271))

(declare-fun m!737273 () Bool)

(assert (=> b!796381 m!737273))

(assert (=> b!796381 m!737273))

(declare-fun m!737275 () Bool)

(assert (=> b!796381 m!737275))

(declare-fun m!737277 () Bool)

(assert (=> b!796385 m!737277))

(declare-fun m!737279 () Bool)

(assert (=> b!796385 m!737279))

(declare-fun m!737281 () Bool)

(assert (=> b!796385 m!737281))

(declare-fun m!737283 () Bool)

(assert (=> b!796385 m!737283))

(declare-fun m!737285 () Bool)

(assert (=> b!796386 m!737285))

(declare-fun m!737287 () Bool)

(assert (=> b!796389 m!737287))

(declare-fun m!737289 () Bool)

(assert (=> b!796379 m!737289))

(assert (=> b!796379 m!737273))

(assert (=> b!796379 m!737273))

(declare-fun m!737291 () Bool)

(assert (=> b!796379 m!737291))

(assert (=> b!796379 m!737273))

(declare-fun m!737293 () Bool)

(assert (=> b!796379 m!737293))

(declare-fun m!737295 () Bool)

(assert (=> b!796383 m!737295))

(declare-fun m!737297 () Bool)

(assert (=> b!796382 m!737297))

(declare-fun m!737299 () Bool)

(assert (=> b!796387 m!737299))

(declare-fun m!737301 () Bool)

(assert (=> b!796388 m!737301))

(declare-fun m!737303 () Bool)

(assert (=> b!796388 m!737303))

(check-sat (not b!796386) (not b!796383) (not b!796381) (not b!796387) (not b!796385) (not b!796382) (not b!796389) (not start!68526) (not b!796379))
(check-sat)
