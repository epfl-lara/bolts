; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28236 () Bool)

(assert start!28236)

(declare-fun b!289025 () Bool)

(declare-fun res!150687 () Bool)

(declare-fun e!183004 () Bool)

(assert (=> b!289025 (=> (not res!150687) (not e!183004))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!289025 (= res!150687 (validKeyInArray!0 k0!2524))))

(declare-fun res!150686 () Bool)

(assert (=> start!28236 (=> (not res!150686) (not e!183004))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28236 (= res!150686 (validMask!0 mask!3809))))

(assert (=> start!28236 e!183004))

(assert (=> start!28236 true))

(declare-datatypes ((array!14539 0))(
  ( (array!14540 (arr!6896 (Array (_ BitVec 32) (_ BitVec 64))) (size!7248 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14539)

(declare-fun array_inv!4850 (array!14539) Bool)

(assert (=> start!28236 (array_inv!4850 a!3312)))

(declare-fun b!289026 () Bool)

(declare-fun e!183000 () Bool)

(declare-fun e!183001 () Bool)

(assert (=> b!289026 (= e!183000 e!183001)))

(declare-fun res!150693 () Bool)

(assert (=> b!289026 (=> (not res!150693) (not e!183001))))

(declare-fun lt!142578 () Bool)

(assert (=> b!289026 (= res!150693 lt!142578)))

(declare-datatypes ((SeekEntryResult!2056 0))(
  ( (MissingZero!2056 (index!10394 (_ BitVec 32))) (Found!2056 (index!10395 (_ BitVec 32))) (Intermediate!2056 (undefined!2868 Bool) (index!10396 (_ BitVec 32)) (x!28573 (_ BitVec 32))) (Undefined!2056) (MissingVacant!2056 (index!10397 (_ BitVec 32))) )
))
(declare-fun lt!142577 () SeekEntryResult!2056)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!142576 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14539 (_ BitVec 32)) SeekEntryResult!2056)

(assert (=> b!289026 (= lt!142577 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142576 k0!2524 (array!14540 (store (arr!6896 a!3312) i!1256 k0!2524) (size!7248 a!3312)) mask!3809))))

(declare-fun lt!142575 () SeekEntryResult!2056)

(assert (=> b!289026 (= lt!142575 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!142576 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!289026 (= lt!142576 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!289027 () Bool)

(assert (=> b!289027 (= e!183004 e!183000)))

(declare-fun res!150690 () Bool)

(assert (=> b!289027 (=> (not res!150690) (not e!183000))))

(declare-fun lt!142579 () SeekEntryResult!2056)

(assert (=> b!289027 (= res!150690 (or lt!142578 (= lt!142579 (MissingVacant!2056 i!1256))))))

(assert (=> b!289027 (= lt!142578 (= lt!142579 (MissingZero!2056 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14539 (_ BitVec 32)) SeekEntryResult!2056)

(assert (=> b!289027 (= lt!142579 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!289028 () Bool)

(declare-fun res!150691 () Bool)

(assert (=> b!289028 (=> (not res!150691) (not e!183000))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14539 (_ BitVec 32)) Bool)

(assert (=> b!289028 (= res!150691 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!289029 () Bool)

(declare-fun res!150689 () Bool)

(assert (=> b!289029 (=> (not res!150689) (not e!183004))))

(declare-fun arrayContainsKey!0 (array!14539 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!289029 (= res!150689 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!289030 () Bool)

(declare-fun e!183003 () Bool)

(assert (=> b!289030 (= e!183001 e!183003)))

(declare-fun res!150692 () Bool)

(assert (=> b!289030 (=> (not res!150692) (not e!183003))))

(declare-fun lt!142580 () Bool)

(assert (=> b!289030 (= res!150692 (and (or lt!142580 (not (undefined!2868 lt!142575))) (or lt!142580 (not (= (select (arr!6896 a!3312) (index!10396 lt!142575)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!142580 (not (= (select (arr!6896 a!3312) (index!10396 lt!142575)) k0!2524))) (not lt!142580)))))

(get-info :version)

(assert (=> b!289030 (= lt!142580 (not ((_ is Intermediate!2056) lt!142575)))))

(declare-fun b!289031 () Bool)

(declare-fun res!150688 () Bool)

(assert (=> b!289031 (=> (not res!150688) (not e!183004))))

(assert (=> b!289031 (= res!150688 (and (= (size!7248 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7248 a!3312))))))

(declare-fun b!289032 () Bool)

(assert (=> b!289032 (= e!183003 (not true))))

(assert (=> b!289032 (and (= (select (arr!6896 a!3312) (index!10396 lt!142575)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!10396 lt!142575) i!1256))))

(assert (= (and start!28236 res!150686) b!289031))

(assert (= (and b!289031 res!150688) b!289025))

(assert (= (and b!289025 res!150687) b!289029))

(assert (= (and b!289029 res!150689) b!289027))

(assert (= (and b!289027 res!150690) b!289028))

(assert (= (and b!289028 res!150691) b!289026))

(assert (= (and b!289026 res!150693) b!289030))

(assert (= (and b!289030 res!150692) b!289032))

(declare-fun m!303245 () Bool)

(assert (=> start!28236 m!303245))

(declare-fun m!303247 () Bool)

(assert (=> start!28236 m!303247))

(declare-fun m!303249 () Bool)

(assert (=> b!289027 m!303249))

(declare-fun m!303251 () Bool)

(assert (=> b!289029 m!303251))

(declare-fun m!303253 () Bool)

(assert (=> b!289032 m!303253))

(declare-fun m!303255 () Bool)

(assert (=> b!289025 m!303255))

(assert (=> b!289030 m!303253))

(declare-fun m!303257 () Bool)

(assert (=> b!289028 m!303257))

(declare-fun m!303259 () Bool)

(assert (=> b!289026 m!303259))

(declare-fun m!303261 () Bool)

(assert (=> b!289026 m!303261))

(declare-fun m!303263 () Bool)

(assert (=> b!289026 m!303263))

(declare-fun m!303265 () Bool)

(assert (=> b!289026 m!303265))

(check-sat (not start!28236) (not b!289027) (not b!289026) (not b!289025) (not b!289028) (not b!289029))
(check-sat)
