; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68580 () Bool)

(assert start!68580)

(declare-fun b!797311 () Bool)

(declare-fun e!442362 () Bool)

(declare-fun e!442361 () Bool)

(assert (=> b!797311 (= e!442362 e!442361)))

(declare-fun res!542009 () Bool)

(assert (=> b!797311 (=> (not res!542009) (not e!442361))))

(declare-datatypes ((SeekEntryResult!8335 0))(
  ( (MissingZero!8335 (index!35707 (_ BitVec 32))) (Found!8335 (index!35708 (_ BitVec 32))) (Intermediate!8335 (undefined!9147 Bool) (index!35709 (_ BitVec 32)) (x!66630 (_ BitVec 32))) (Undefined!8335) (MissingVacant!8335 (index!35710 (_ BitVec 32))) )
))
(declare-fun lt!355745 () SeekEntryResult!8335)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!797311 (= res!542009 (or (= lt!355745 (MissingZero!8335 i!1163)) (= lt!355745 (MissingVacant!8335 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-datatypes ((array!43321 0))(
  ( (array!43322 (arr!20737 (Array (_ BitVec 32) (_ BitVec 64))) (size!21158 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43321)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43321 (_ BitVec 32)) SeekEntryResult!8335)

(assert (=> b!797311 (= lt!355745 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!797312 () Bool)

(declare-fun res!542007 () Bool)

(assert (=> b!797312 (=> (not res!542007) (not e!442362))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!797312 (= res!542007 (and (= (size!21158 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21158 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21158 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!797313 () Bool)

(declare-fun e!442365 () Bool)

(declare-fun e!442363 () Bool)

(assert (=> b!797313 (= e!442365 e!442363)))

(declare-fun res!542003 () Bool)

(assert (=> b!797313 (=> (not res!542003) (not e!442363))))

(declare-fun lt!355746 () SeekEntryResult!8335)

(declare-fun lt!355741 () SeekEntryResult!8335)

(assert (=> b!797313 (= res!542003 (= lt!355746 lt!355741))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43321 (_ BitVec 32)) SeekEntryResult!8335)

(assert (=> b!797313 (= lt!355741 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20737 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!797313 (= lt!355746 (seekEntryOrOpen!0 (select (arr!20737 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!797314 () Bool)

(declare-fun res!542002 () Bool)

(assert (=> b!797314 (=> (not res!542002) (not e!442361))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!797314 (= res!542002 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21158 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20737 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21158 a!3170)) (= (select (arr!20737 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!797315 () Bool)

(declare-fun e!442364 () Bool)

(assert (=> b!797315 (= e!442363 e!442364)))

(declare-fun res!542000 () Bool)

(assert (=> b!797315 (=> (not res!542000) (not e!442364))))

(declare-fun lt!355742 () SeekEntryResult!8335)

(assert (=> b!797315 (= res!542000 (and (= lt!355741 lt!355742) (= (select (arr!20737 a!3170) index!1236) (select (arr!20737 a!3170) j!153))))))

(assert (=> b!797315 (= lt!355742 (Found!8335 j!153))))

(declare-fun b!797316 () Bool)

(declare-fun res!542011 () Bool)

(assert (=> b!797316 (=> (not res!542011) (not e!442361))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43321 (_ BitVec 32)) Bool)

(assert (=> b!797316 (= res!542011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797318 () Bool)

(declare-fun res!542010 () Bool)

(assert (=> b!797318 (=> (not res!542010) (not e!442362))))

(declare-fun arrayContainsKey!0 (array!43321 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797318 (= res!542010 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797319 () Bool)

(declare-fun res!542001 () Bool)

(assert (=> b!797319 (=> (not res!542001) (not e!442362))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797319 (= res!542001 (validKeyInArray!0 (select (arr!20737 a!3170) j!153)))))

(declare-fun b!797320 () Bool)

(assert (=> b!797320 (= e!442361 e!442365)))

(declare-fun res!542008 () Bool)

(assert (=> b!797320 (=> (not res!542008) (not e!442365))))

(declare-fun lt!355744 () SeekEntryResult!8335)

(declare-fun lt!355743 () SeekEntryResult!8335)

(assert (=> b!797320 (= res!542008 (= lt!355744 lt!355743))))

(declare-fun lt!355740 () (_ BitVec 64))

(declare-fun lt!355747 () array!43321)

(assert (=> b!797320 (= lt!355743 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355740 lt!355747 mask!3266))))

(assert (=> b!797320 (= lt!355744 (seekEntryOrOpen!0 lt!355740 lt!355747 mask!3266))))

(assert (=> b!797320 (= lt!355740 (select (store (arr!20737 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!797320 (= lt!355747 (array!43322 (store (arr!20737 a!3170) i!1163 k0!2044) (size!21158 a!3170)))))

(declare-fun res!542005 () Bool)

(assert (=> start!68580 (=> (not res!542005) (not e!442362))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68580 (= res!542005 (validMask!0 mask!3266))))

(assert (=> start!68580 e!442362))

(assert (=> start!68580 true))

(declare-fun array_inv!16511 (array!43321) Bool)

(assert (=> start!68580 (array_inv!16511 a!3170)))

(declare-fun b!797317 () Bool)

(assert (=> b!797317 (= e!442364 (not (or (not (= lt!355743 lt!355742)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (= (select (store (arr!20737 a!3170) i!1163 k0!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!797317 (= lt!355743 (Found!8335 index!1236))))

(declare-fun b!797321 () Bool)

(declare-fun res!542004 () Bool)

(assert (=> b!797321 (=> (not res!542004) (not e!442362))))

(assert (=> b!797321 (= res!542004 (validKeyInArray!0 k0!2044))))

(declare-fun b!797322 () Bool)

(declare-fun res!542006 () Bool)

(assert (=> b!797322 (=> (not res!542006) (not e!442361))))

(declare-datatypes ((List!14753 0))(
  ( (Nil!14750) (Cons!14749 (h!15878 (_ BitVec 64)) (t!21076 List!14753)) )
))
(declare-fun arrayNoDuplicates!0 (array!43321 (_ BitVec 32) List!14753) Bool)

(assert (=> b!797322 (= res!542006 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14750))))

(assert (= (and start!68580 res!542005) b!797312))

(assert (= (and b!797312 res!542007) b!797319))

(assert (= (and b!797319 res!542001) b!797321))

(assert (= (and b!797321 res!542004) b!797318))

(assert (= (and b!797318 res!542010) b!797311))

(assert (= (and b!797311 res!542009) b!797316))

(assert (= (and b!797316 res!542011) b!797322))

(assert (= (and b!797322 res!542006) b!797314))

(assert (= (and b!797314 res!542002) b!797320))

(assert (= (and b!797320 res!542008) b!797313))

(assert (= (and b!797313 res!542003) b!797315))

(assert (= (and b!797315 res!542000) b!797317))

(declare-fun m!738261 () Bool)

(assert (=> b!797314 m!738261))

(declare-fun m!738263 () Bool)

(assert (=> b!797314 m!738263))

(declare-fun m!738265 () Bool)

(assert (=> b!797317 m!738265))

(declare-fun m!738267 () Bool)

(assert (=> b!797317 m!738267))

(declare-fun m!738269 () Bool)

(assert (=> b!797318 m!738269))

(declare-fun m!738271 () Bool)

(assert (=> b!797313 m!738271))

(assert (=> b!797313 m!738271))

(declare-fun m!738273 () Bool)

(assert (=> b!797313 m!738273))

(assert (=> b!797313 m!738271))

(declare-fun m!738275 () Bool)

(assert (=> b!797313 m!738275))

(declare-fun m!738277 () Bool)

(assert (=> b!797320 m!738277))

(declare-fun m!738279 () Bool)

(assert (=> b!797320 m!738279))

(assert (=> b!797320 m!738265))

(declare-fun m!738281 () Bool)

(assert (=> b!797320 m!738281))

(declare-fun m!738283 () Bool)

(assert (=> b!797321 m!738283))

(declare-fun m!738285 () Bool)

(assert (=> b!797316 m!738285))

(declare-fun m!738287 () Bool)

(assert (=> b!797322 m!738287))

(declare-fun m!738289 () Bool)

(assert (=> start!68580 m!738289))

(declare-fun m!738291 () Bool)

(assert (=> start!68580 m!738291))

(assert (=> b!797319 m!738271))

(assert (=> b!797319 m!738271))

(declare-fun m!738293 () Bool)

(assert (=> b!797319 m!738293))

(declare-fun m!738295 () Bool)

(assert (=> b!797311 m!738295))

(declare-fun m!738297 () Bool)

(assert (=> b!797315 m!738297))

(assert (=> b!797315 m!738271))

(check-sat (not b!797321) (not b!797319) (not b!797322) (not b!797318) (not b!797320) (not b!797316) (not start!68580) (not b!797311) (not b!797313))
(check-sat)
