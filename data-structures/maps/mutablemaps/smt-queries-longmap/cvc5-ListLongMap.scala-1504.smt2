; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28516 () Bool)

(assert start!28516)

(declare-fun b!291629 () Bool)

(declare-fun res!152865 () Bool)

(declare-fun e!184538 () Bool)

(assert (=> b!291629 (=> (not res!152865) (not e!184538))))

(declare-datatypes ((array!14729 0))(
  ( (array!14730 (arr!6988 (Array (_ BitVec 32) (_ BitVec 64))) (size!7340 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14729)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14729 (_ BitVec 32)) Bool)

(assert (=> b!291629 (= res!152865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!291630 () Bool)

(declare-fun res!152866 () Bool)

(declare-fun e!184536 () Bool)

(assert (=> b!291630 (=> (not res!152866) (not e!184536))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14729 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!291630 (= res!152866 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!291632 () Bool)

(declare-fun res!152869 () Bool)

(assert (=> b!291632 (=> (not res!152869) (not e!184536))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!291632 (= res!152869 (validKeyInArray!0 k!2524))))

(declare-fun b!291633 () Bool)

(declare-fun e!184539 () Bool)

(declare-fun e!184540 () Bool)

(assert (=> b!291633 (= e!184539 e!184540)))

(declare-fun res!152864 () Bool)

(assert (=> b!291633 (=> (not res!152864) (not e!184540))))

(declare-datatypes ((SeekEntryResult!2148 0))(
  ( (MissingZero!2148 (index!10762 (_ BitVec 32))) (Found!2148 (index!10763 (_ BitVec 32))) (Intermediate!2148 (undefined!2960 Bool) (index!10764 (_ BitVec 32)) (x!28925 (_ BitVec 32))) (Undefined!2148) (MissingVacant!2148 (index!10765 (_ BitVec 32))) )
))
(declare-fun lt!144326 () SeekEntryResult!2148)

(declare-fun lt!144327 () Bool)

(assert (=> b!291633 (= res!152864 (and (or lt!144327 (not (undefined!2960 lt!144326))) (not lt!144327) (= (select (arr!6988 a!3312) (index!10764 lt!144326)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!291633 (= lt!144327 (not (is-Intermediate!2148 lt!144326)))))

(declare-fun res!152867 () Bool)

(assert (=> start!28516 (=> (not res!152867) (not e!184536))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28516 (= res!152867 (validMask!0 mask!3809))))

(assert (=> start!28516 e!184536))

(assert (=> start!28516 true))

(declare-fun array_inv!4942 (array!14729) Bool)

(assert (=> start!28516 (array_inv!4942 a!3312)))

(declare-fun b!291631 () Bool)

(assert (=> b!291631 (= e!184536 e!184538)))

(declare-fun res!152868 () Bool)

(assert (=> b!291631 (=> (not res!152868) (not e!184538))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!144325 () Bool)

(declare-fun lt!144329 () SeekEntryResult!2148)

(assert (=> b!291631 (= res!152868 (or lt!144325 (= lt!144329 (MissingVacant!2148 i!1256))))))

(assert (=> b!291631 (= lt!144325 (= lt!144329 (MissingZero!2148 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14729 (_ BitVec 32)) SeekEntryResult!2148)

(assert (=> b!291631 (= lt!144329 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!291634 () Bool)

(declare-fun res!152870 () Bool)

(assert (=> b!291634 (=> (not res!152870) (not e!184536))))

(assert (=> b!291634 (= res!152870 (and (= (size!7340 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7340 a!3312))))))

(declare-fun b!291635 () Bool)

(assert (=> b!291635 (= e!184540 (not true))))

(assert (=> b!291635 (= (index!10764 lt!144326) i!1256)))

(declare-fun b!291636 () Bool)

(assert (=> b!291636 (= e!184538 e!184539)))

(declare-fun res!152871 () Bool)

(assert (=> b!291636 (=> (not res!152871) (not e!184539))))

(assert (=> b!291636 (= res!152871 (and (not lt!144325) (= lt!144329 (MissingVacant!2148 i!1256))))))

(declare-fun lt!144328 () (_ BitVec 32))

(declare-fun lt!144324 () SeekEntryResult!2148)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14729 (_ BitVec 32)) SeekEntryResult!2148)

(assert (=> b!291636 (= lt!144324 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144328 k!2524 (array!14730 (store (arr!6988 a!3312) i!1256 k!2524) (size!7340 a!3312)) mask!3809))))

(assert (=> b!291636 (= lt!144326 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144328 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291636 (= lt!144328 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28516 res!152867) b!291634))

(assert (= (and b!291634 res!152870) b!291632))

(assert (= (and b!291632 res!152869) b!291630))

(assert (= (and b!291630 res!152866) b!291631))

(assert (= (and b!291631 res!152868) b!291629))

(assert (= (and b!291629 res!152865) b!291636))

(assert (= (and b!291636 res!152871) b!291633))

(assert (= (and b!291633 res!152864) b!291635))

(declare-fun m!305509 () Bool)

(assert (=> b!291631 m!305509))

(declare-fun m!305511 () Bool)

(assert (=> b!291632 m!305511))

(declare-fun m!305513 () Bool)

(assert (=> b!291630 m!305513))

(declare-fun m!305515 () Bool)

(assert (=> b!291633 m!305515))

(declare-fun m!305517 () Bool)

(assert (=> b!291629 m!305517))

(declare-fun m!305519 () Bool)

(assert (=> start!28516 m!305519))

(declare-fun m!305521 () Bool)

(assert (=> start!28516 m!305521))

(declare-fun m!305523 () Bool)

(assert (=> b!291636 m!305523))

(declare-fun m!305525 () Bool)

(assert (=> b!291636 m!305525))

(declare-fun m!305527 () Bool)

(assert (=> b!291636 m!305527))

(declare-fun m!305529 () Bool)

(assert (=> b!291636 m!305529))

(push 1)

