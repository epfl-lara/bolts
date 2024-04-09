; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28606 () Bool)

(assert start!28606)

(declare-fun b!292345 () Bool)

(declare-fun res!153439 () Bool)

(declare-fun e!184981 () Bool)

(assert (=> b!292345 (=> (not res!153439) (not e!184981))))

(declare-datatypes ((array!14774 0))(
  ( (array!14775 (arr!7009 (Array (_ BitVec 32) (_ BitVec 64))) (size!7361 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14774)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14774 (_ BitVec 32)) Bool)

(assert (=> b!292345 (= res!153439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292346 () Bool)

(declare-fun res!153440 () Bool)

(declare-fun e!184980 () Bool)

(assert (=> b!292346 (=> (not res!153440) (not e!184980))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292346 (= res!153440 (validKeyInArray!0 k!2524))))

(declare-fun b!292347 () Bool)

(assert (=> b!292347 (= e!184981 false)))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2169 0))(
  ( (MissingZero!2169 (index!10846 (_ BitVec 32))) (Found!2169 (index!10847 (_ BitVec 32))) (Intermediate!2169 (undefined!2981 Bool) (index!10848 (_ BitVec 32)) (x!29008 (_ BitVec 32))) (Undefined!2169) (MissingVacant!2169 (index!10849 (_ BitVec 32))) )
))
(declare-fun lt!144833 () SeekEntryResult!2169)

(declare-fun lt!144831 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14774 (_ BitVec 32)) SeekEntryResult!2169)

(assert (=> b!292347 (= lt!144833 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144831 k!2524 (array!14775 (store (arr!7009 a!3312) i!1256 k!2524) (size!7361 a!3312)) mask!3809))))

(declare-fun lt!144830 () SeekEntryResult!2169)

(assert (=> b!292347 (= lt!144830 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144831 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292347 (= lt!144831 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!292348 () Bool)

(declare-fun res!153442 () Bool)

(assert (=> b!292348 (=> (not res!153442) (not e!184980))))

(assert (=> b!292348 (= res!153442 (and (= (size!7361 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7361 a!3312))))))

(declare-fun b!292350 () Bool)

(declare-fun res!153444 () Bool)

(assert (=> b!292350 (=> (not res!153444) (not e!184980))))

(declare-fun arrayContainsKey!0 (array!14774 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292350 (= res!153444 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!153443 () Bool)

(assert (=> start!28606 (=> (not res!153443) (not e!184980))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28606 (= res!153443 (validMask!0 mask!3809))))

(assert (=> start!28606 e!184980))

(assert (=> start!28606 true))

(declare-fun array_inv!4963 (array!14774) Bool)

(assert (=> start!28606 (array_inv!4963 a!3312)))

(declare-fun b!292349 () Bool)

(assert (=> b!292349 (= e!184980 e!184981)))

(declare-fun res!153441 () Bool)

(assert (=> b!292349 (=> (not res!153441) (not e!184981))))

(declare-fun lt!144832 () SeekEntryResult!2169)

(assert (=> b!292349 (= res!153441 (or (= lt!144832 (MissingZero!2169 i!1256)) (= lt!144832 (MissingVacant!2169 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14774 (_ BitVec 32)) SeekEntryResult!2169)

(assert (=> b!292349 (= lt!144832 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(assert (= (and start!28606 res!153443) b!292348))

(assert (= (and b!292348 res!153442) b!292346))

(assert (= (and b!292346 res!153440) b!292350))

(assert (= (and b!292350 res!153444) b!292349))

(assert (= (and b!292349 res!153441) b!292345))

(assert (= (and b!292345 res!153439) b!292347))

(declare-fun m!306115 () Bool)

(assert (=> start!28606 m!306115))

(declare-fun m!306117 () Bool)

(assert (=> start!28606 m!306117))

(declare-fun m!306119 () Bool)

(assert (=> b!292346 m!306119))

(declare-fun m!306121 () Bool)

(assert (=> b!292350 m!306121))

(declare-fun m!306123 () Bool)

(assert (=> b!292345 m!306123))

(declare-fun m!306125 () Bool)

(assert (=> b!292349 m!306125))

(declare-fun m!306127 () Bool)

(assert (=> b!292347 m!306127))

(declare-fun m!306129 () Bool)

(assert (=> b!292347 m!306129))

(declare-fun m!306131 () Bool)

(assert (=> b!292347 m!306131))

(declare-fun m!306133 () Bool)

(assert (=> b!292347 m!306133))

(push 1)

