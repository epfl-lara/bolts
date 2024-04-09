; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28520 () Bool)

(assert start!28520)

(declare-fun b!291677 () Bool)

(declare-fun res!152915 () Bool)

(declare-fun e!184566 () Bool)

(assert (=> b!291677 (=> (not res!152915) (not e!184566))))

(declare-datatypes ((array!14733 0))(
  ( (array!14734 (arr!6990 (Array (_ BitVec 32) (_ BitVec 64))) (size!7342 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14733)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14733 (_ BitVec 32)) Bool)

(assert (=> b!291677 (= res!152915 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!291678 () Bool)

(declare-fun res!152913 () Bool)

(declare-fun e!184569 () Bool)

(assert (=> b!291678 (=> (not res!152913) (not e!184569))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!291678 (= res!152913 (validKeyInArray!0 k!2524))))

(declare-fun b!291679 () Bool)

(declare-fun e!184567 () Bool)

(assert (=> b!291679 (= e!184566 e!184567)))

(declare-fun res!152917 () Bool)

(assert (=> b!291679 (=> (not res!152917) (not e!184567))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2150 0))(
  ( (MissingZero!2150 (index!10770 (_ BitVec 32))) (Found!2150 (index!10771 (_ BitVec 32))) (Intermediate!2150 (undefined!2962 Bool) (index!10772 (_ BitVec 32)) (x!28927 (_ BitVec 32))) (Undefined!2150) (MissingVacant!2150 (index!10773 (_ BitVec 32))) )
))
(declare-fun lt!144365 () SeekEntryResult!2150)

(declare-fun lt!144363 () Bool)

(assert (=> b!291679 (= res!152917 (and (not lt!144363) (= lt!144365 (MissingVacant!2150 i!1256))))))

(declare-fun lt!144362 () SeekEntryResult!2150)

(declare-fun lt!144364 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14733 (_ BitVec 32)) SeekEntryResult!2150)

(assert (=> b!291679 (= lt!144362 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144364 k!2524 (array!14734 (store (arr!6990 a!3312) i!1256 k!2524) (size!7342 a!3312)) mask!3809))))

(declare-fun lt!144361 () SeekEntryResult!2150)

(assert (=> b!291679 (= lt!144361 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144364 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291679 (= lt!144364 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!291680 () Bool)

(declare-fun res!152916 () Bool)

(assert (=> b!291680 (=> (not res!152916) (not e!184569))))

(assert (=> b!291680 (= res!152916 (and (= (size!7342 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7342 a!3312))))))

(declare-fun res!152912 () Bool)

(assert (=> start!28520 (=> (not res!152912) (not e!184569))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28520 (= res!152912 (validMask!0 mask!3809))))

(assert (=> start!28520 e!184569))

(assert (=> start!28520 true))

(declare-fun array_inv!4944 (array!14733) Bool)

(assert (=> start!28520 (array_inv!4944 a!3312)))

(declare-fun b!291681 () Bool)

(declare-fun res!152919 () Bool)

(assert (=> b!291681 (=> (not res!152919) (not e!184569))))

(declare-fun arrayContainsKey!0 (array!14733 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!291681 (= res!152919 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!291682 () Bool)

(declare-fun e!184568 () Bool)

(assert (=> b!291682 (= e!184567 e!184568)))

(declare-fun res!152918 () Bool)

(assert (=> b!291682 (=> (not res!152918) (not e!184568))))

(declare-fun lt!144360 () Bool)

(assert (=> b!291682 (= res!152918 (and (or lt!144360 (not (undefined!2962 lt!144361))) (not lt!144360) (= (select (arr!6990 a!3312) (index!10772 lt!144361)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!291682 (= lt!144360 (not (is-Intermediate!2150 lt!144361)))))

(declare-fun b!291683 () Bool)

(assert (=> b!291683 (= e!184569 e!184566)))

(declare-fun res!152914 () Bool)

(assert (=> b!291683 (=> (not res!152914) (not e!184566))))

(assert (=> b!291683 (= res!152914 (or lt!144363 (= lt!144365 (MissingVacant!2150 i!1256))))))

(assert (=> b!291683 (= lt!144363 (= lt!144365 (MissingZero!2150 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14733 (_ BitVec 32)) SeekEntryResult!2150)

(assert (=> b!291683 (= lt!144365 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!291684 () Bool)

(assert (=> b!291684 (= e!184568 (not true))))

(assert (=> b!291684 (= (index!10772 lt!144361) i!1256)))

(assert (= (and start!28520 res!152912) b!291680))

(assert (= (and b!291680 res!152916) b!291678))

(assert (= (and b!291678 res!152913) b!291681))

(assert (= (and b!291681 res!152919) b!291683))

(assert (= (and b!291683 res!152914) b!291677))

(assert (= (and b!291677 res!152915) b!291679))

(assert (= (and b!291679 res!152917) b!291682))

(assert (= (and b!291682 res!152918) b!291684))

(declare-fun m!305553 () Bool)

(assert (=> b!291681 m!305553))

(declare-fun m!305555 () Bool)

(assert (=> b!291678 m!305555))

(declare-fun m!305557 () Bool)

(assert (=> b!291683 m!305557))

(declare-fun m!305559 () Bool)

(assert (=> b!291682 m!305559))

(declare-fun m!305561 () Bool)

(assert (=> start!28520 m!305561))

(declare-fun m!305563 () Bool)

(assert (=> start!28520 m!305563))

(declare-fun m!305565 () Bool)

(assert (=> b!291677 m!305565))

(declare-fun m!305567 () Bool)

(assert (=> b!291679 m!305567))

(declare-fun m!305569 () Bool)

(assert (=> b!291679 m!305569))

(declare-fun m!305571 () Bool)

(assert (=> b!291679 m!305571))

(declare-fun m!305573 () Bool)

(assert (=> b!291679 m!305573))

(push 1)

