; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28458 () Bool)

(assert start!28458)

(declare-fun b!291293 () Bool)

(declare-fun res!152674 () Bool)

(declare-fun e!184330 () Bool)

(assert (=> b!291293 (=> (not res!152674) (not e!184330))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!291293 (= res!152674 (validKeyInArray!0 k0!2524))))

(declare-fun b!291294 () Bool)

(declare-fun res!152672 () Bool)

(assert (=> b!291294 (=> (not res!152672) (not e!184330))))

(declare-datatypes ((array!14716 0))(
  ( (array!14717 (arr!6983 (Array (_ BitVec 32) (_ BitVec 64))) (size!7335 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14716)

(declare-fun arrayContainsKey!0 (array!14716 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!291294 (= res!152672 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!291295 () Bool)

(declare-fun e!184329 () Bool)

(assert (=> b!291295 (= e!184330 e!184329)))

(declare-fun res!152673 () Bool)

(assert (=> b!291295 (=> (not res!152673) (not e!184329))))

(declare-datatypes ((SeekEntryResult!2143 0))(
  ( (MissingZero!2143 (index!10742 (_ BitVec 32))) (Found!2143 (index!10743 (_ BitVec 32))) (Intermediate!2143 (undefined!2955 Bool) (index!10744 (_ BitVec 32)) (x!28898 (_ BitVec 32))) (Undefined!2143) (MissingVacant!2143 (index!10745 (_ BitVec 32))) )
))
(declare-fun lt!144140 () SeekEntryResult!2143)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!144141 () Bool)

(assert (=> b!291295 (= res!152673 (or lt!144141 (= lt!144140 (MissingVacant!2143 i!1256))))))

(assert (=> b!291295 (= lt!144141 (= lt!144140 (MissingZero!2143 i!1256)))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14716 (_ BitVec 32)) SeekEntryResult!2143)

(assert (=> b!291295 (= lt!144140 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!291296 () Bool)

(declare-fun e!184333 () Bool)

(assert (=> b!291296 (= e!184333 (not true))))

(declare-fun lt!144139 () SeekEntryResult!2143)

(assert (=> b!291296 (= (index!10744 lt!144139) i!1256)))

(declare-fun b!291297 () Bool)

(declare-fun e!184332 () Bool)

(assert (=> b!291297 (= e!184329 e!184332)))

(declare-fun res!152669 () Bool)

(assert (=> b!291297 (=> (not res!152669) (not e!184332))))

(assert (=> b!291297 (= res!152669 (and (not lt!144141) (= lt!144140 (MissingVacant!2143 i!1256))))))

(declare-fun lt!144142 () SeekEntryResult!2143)

(declare-fun lt!144138 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14716 (_ BitVec 32)) SeekEntryResult!2143)

(assert (=> b!291297 (= lt!144142 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144138 k0!2524 (array!14717 (store (arr!6983 a!3312) i!1256 k0!2524) (size!7335 a!3312)) mask!3809))))

(assert (=> b!291297 (= lt!144139 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144138 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291297 (= lt!144138 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!291299 () Bool)

(declare-fun res!152675 () Bool)

(assert (=> b!291299 (=> (not res!152675) (not e!184330))))

(assert (=> b!291299 (= res!152675 (and (= (size!7335 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7335 a!3312))))))

(declare-fun b!291300 () Bool)

(assert (=> b!291300 (= e!184332 e!184333)))

(declare-fun res!152671 () Bool)

(assert (=> b!291300 (=> (not res!152671) (not e!184333))))

(declare-fun lt!144143 () Bool)

(assert (=> b!291300 (= res!152671 (and (or lt!144143 (not (undefined!2955 lt!144139))) (not lt!144143) (= (select (arr!6983 a!3312) (index!10744 lt!144139)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(get-info :version)

(assert (=> b!291300 (= lt!144143 (not ((_ is Intermediate!2143) lt!144139)))))

(declare-fun res!152676 () Bool)

(assert (=> start!28458 (=> (not res!152676) (not e!184330))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28458 (= res!152676 (validMask!0 mask!3809))))

(assert (=> start!28458 e!184330))

(assert (=> start!28458 true))

(declare-fun array_inv!4937 (array!14716) Bool)

(assert (=> start!28458 (array_inv!4937 a!3312)))

(declare-fun b!291298 () Bool)

(declare-fun res!152670 () Bool)

(assert (=> b!291298 (=> (not res!152670) (not e!184329))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14716 (_ BitVec 32)) Bool)

(assert (=> b!291298 (= res!152670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!28458 res!152676) b!291299))

(assert (= (and b!291299 res!152675) b!291293))

(assert (= (and b!291293 res!152674) b!291294))

(assert (= (and b!291294 res!152672) b!291295))

(assert (= (and b!291295 res!152673) b!291298))

(assert (= (and b!291298 res!152670) b!291297))

(assert (= (and b!291297 res!152669) b!291300))

(assert (= (and b!291300 res!152671) b!291296))

(declare-fun m!305279 () Bool)

(assert (=> b!291297 m!305279))

(declare-fun m!305281 () Bool)

(assert (=> b!291297 m!305281))

(declare-fun m!305283 () Bool)

(assert (=> b!291297 m!305283))

(declare-fun m!305285 () Bool)

(assert (=> b!291297 m!305285))

(declare-fun m!305287 () Bool)

(assert (=> b!291295 m!305287))

(declare-fun m!305289 () Bool)

(assert (=> b!291300 m!305289))

(declare-fun m!305291 () Bool)

(assert (=> start!28458 m!305291))

(declare-fun m!305293 () Bool)

(assert (=> start!28458 m!305293))

(declare-fun m!305295 () Bool)

(assert (=> b!291298 m!305295))

(declare-fun m!305297 () Bool)

(assert (=> b!291294 m!305297))

(declare-fun m!305299 () Bool)

(assert (=> b!291293 m!305299))

(check-sat (not b!291294) (not b!291298) (not b!291293) (not start!28458) (not b!291297) (not b!291295))
(check-sat)
