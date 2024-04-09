; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28456 () Bool)

(assert start!28456)

(declare-fun b!291269 () Bool)

(declare-fun e!184317 () Bool)

(declare-fun e!184318 () Bool)

(assert (=> b!291269 (= e!184317 e!184318)))

(declare-fun res!152650 () Bool)

(assert (=> b!291269 (=> (not res!152650) (not e!184318))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!144123 () Bool)

(declare-datatypes ((SeekEntryResult!2142 0))(
  ( (MissingZero!2142 (index!10738 (_ BitVec 32))) (Found!2142 (index!10739 (_ BitVec 32))) (Intermediate!2142 (undefined!2954 Bool) (index!10740 (_ BitVec 32)) (x!28897 (_ BitVec 32))) (Undefined!2142) (MissingVacant!2142 (index!10741 (_ BitVec 32))) )
))
(declare-fun lt!144122 () SeekEntryResult!2142)

(assert (=> b!291269 (= res!152650 (or lt!144123 (= lt!144122 (MissingVacant!2142 i!1256))))))

(assert (=> b!291269 (= lt!144123 (= lt!144122 (MissingZero!2142 i!1256)))))

(declare-datatypes ((array!14714 0))(
  ( (array!14715 (arr!6982 (Array (_ BitVec 32) (_ BitVec 64))) (size!7334 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14714)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14714 (_ BitVec 32)) SeekEntryResult!2142)

(assert (=> b!291269 (= lt!144122 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!291270 () Bool)

(declare-fun res!152646 () Bool)

(assert (=> b!291270 (=> (not res!152646) (not e!184317))))

(assert (=> b!291270 (= res!152646 (and (= (size!7334 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7334 a!3312))))))

(declare-fun res!152645 () Bool)

(assert (=> start!28456 (=> (not res!152645) (not e!184317))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28456 (= res!152645 (validMask!0 mask!3809))))

(assert (=> start!28456 e!184317))

(assert (=> start!28456 true))

(declare-fun array_inv!4936 (array!14714) Bool)

(assert (=> start!28456 (array_inv!4936 a!3312)))

(declare-fun b!291271 () Bool)

(declare-fun res!152649 () Bool)

(assert (=> b!291271 (=> (not res!152649) (not e!184317))))

(declare-fun arrayContainsKey!0 (array!14714 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!291271 (= res!152649 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!291272 () Bool)

(declare-fun e!184315 () Bool)

(assert (=> b!291272 (= e!184315 (not true))))

(declare-fun lt!144121 () SeekEntryResult!2142)

(assert (=> b!291272 (= (index!10740 lt!144121) i!1256)))

(declare-fun b!291273 () Bool)

(declare-fun e!184316 () Bool)

(assert (=> b!291273 (= e!184316 e!184315)))

(declare-fun res!152652 () Bool)

(assert (=> b!291273 (=> (not res!152652) (not e!184315))))

(declare-fun lt!144120 () Bool)

(assert (=> b!291273 (= res!152652 (and (or lt!144120 (not (undefined!2954 lt!144121))) (not lt!144120) (= (select (arr!6982 a!3312) (index!10740 lt!144121)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!291273 (= lt!144120 (not (is-Intermediate!2142 lt!144121)))))

(declare-fun b!291274 () Bool)

(declare-fun res!152651 () Bool)

(assert (=> b!291274 (=> (not res!152651) (not e!184318))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14714 (_ BitVec 32)) Bool)

(assert (=> b!291274 (= res!152651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!291275 () Bool)

(assert (=> b!291275 (= e!184318 e!184316)))

(declare-fun res!152648 () Bool)

(assert (=> b!291275 (=> (not res!152648) (not e!184316))))

(assert (=> b!291275 (= res!152648 (and (not lt!144123) (= lt!144122 (MissingVacant!2142 i!1256))))))

(declare-fun lt!144124 () (_ BitVec 32))

(declare-fun lt!144125 () SeekEntryResult!2142)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14714 (_ BitVec 32)) SeekEntryResult!2142)

(assert (=> b!291275 (= lt!144125 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144124 k!2524 (array!14715 (store (arr!6982 a!3312) i!1256 k!2524) (size!7334 a!3312)) mask!3809))))

(assert (=> b!291275 (= lt!144121 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144124 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291275 (= lt!144124 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!291276 () Bool)

(declare-fun res!152647 () Bool)

(assert (=> b!291276 (=> (not res!152647) (not e!184317))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!291276 (= res!152647 (validKeyInArray!0 k!2524))))

(assert (= (and start!28456 res!152645) b!291270))

(assert (= (and b!291270 res!152646) b!291276))

(assert (= (and b!291276 res!152647) b!291271))

(assert (= (and b!291271 res!152649) b!291269))

(assert (= (and b!291269 res!152650) b!291274))

(assert (= (and b!291274 res!152651) b!291275))

(assert (= (and b!291275 res!152648) b!291273))

(assert (= (and b!291273 res!152652) b!291272))

(declare-fun m!305257 () Bool)

(assert (=> start!28456 m!305257))

(declare-fun m!305259 () Bool)

(assert (=> start!28456 m!305259))

(declare-fun m!305261 () Bool)

(assert (=> b!291275 m!305261))

(declare-fun m!305263 () Bool)

(assert (=> b!291275 m!305263))

(declare-fun m!305265 () Bool)

(assert (=> b!291275 m!305265))

(declare-fun m!305267 () Bool)

(assert (=> b!291275 m!305267))

(declare-fun m!305269 () Bool)

(assert (=> b!291274 m!305269))

(declare-fun m!305271 () Bool)

(assert (=> b!291269 m!305271))

(declare-fun m!305273 () Bool)

(assert (=> b!291276 m!305273))

(declare-fun m!305275 () Bool)

(assert (=> b!291273 m!305275))

(declare-fun m!305277 () Bool)

(assert (=> b!291271 m!305277))

(push 1)

