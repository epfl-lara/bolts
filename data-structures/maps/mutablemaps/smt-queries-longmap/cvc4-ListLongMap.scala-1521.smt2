; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28670 () Bool)

(assert start!28670)

(declare-fun b!292921 () Bool)

(declare-fun e!185269 () Bool)

(declare-fun e!185268 () Bool)

(assert (=> b!292921 (= e!185269 e!185268)))

(declare-fun res!154015 () Bool)

(assert (=> b!292921 (=> (not res!154015) (not e!185268))))

(declare-datatypes ((SeekEntryResult!2201 0))(
  ( (MissingZero!2201 (index!10974 (_ BitVec 32))) (Found!2201 (index!10975 (_ BitVec 32))) (Intermediate!2201 (undefined!3013 Bool) (index!10976 (_ BitVec 32)) (x!29120 (_ BitVec 32))) (Undefined!2201) (MissingVacant!2201 (index!10977 (_ BitVec 32))) )
))
(declare-fun lt!145217 () SeekEntryResult!2201)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!292921 (= res!154015 (or (= lt!145217 (MissingZero!2201 i!1256)) (= lt!145217 (MissingVacant!2201 i!1256))))))

(declare-datatypes ((array!14838 0))(
  ( (array!14839 (arr!7041 (Array (_ BitVec 32) (_ BitVec 64))) (size!7393 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14838)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14838 (_ BitVec 32)) SeekEntryResult!2201)

(assert (=> b!292921 (= lt!145217 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!292922 () Bool)

(declare-fun res!154019 () Bool)

(assert (=> b!292922 (=> (not res!154019) (not e!185269))))

(declare-fun arrayContainsKey!0 (array!14838 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292922 (= res!154019 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292923 () Bool)

(assert (=> b!292923 (= e!185268 false)))

(declare-fun lt!145215 () (_ BitVec 32))

(declare-fun lt!145214 () SeekEntryResult!2201)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14838 (_ BitVec 32)) SeekEntryResult!2201)

(assert (=> b!292923 (= lt!145214 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145215 k!2524 (array!14839 (store (arr!7041 a!3312) i!1256 k!2524) (size!7393 a!3312)) mask!3809))))

(declare-fun lt!145216 () SeekEntryResult!2201)

(assert (=> b!292923 (= lt!145216 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145215 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292923 (= lt!145215 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!154016 () Bool)

(assert (=> start!28670 (=> (not res!154016) (not e!185269))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28670 (= res!154016 (validMask!0 mask!3809))))

(assert (=> start!28670 e!185269))

(assert (=> start!28670 true))

(declare-fun array_inv!4995 (array!14838) Bool)

(assert (=> start!28670 (array_inv!4995 a!3312)))

(declare-fun b!292924 () Bool)

(declare-fun res!154020 () Bool)

(assert (=> b!292924 (=> (not res!154020) (not e!185269))))

(assert (=> b!292924 (= res!154020 (and (= (size!7393 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7393 a!3312))))))

(declare-fun b!292925 () Bool)

(declare-fun res!154018 () Bool)

(assert (=> b!292925 (=> (not res!154018) (not e!185268))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14838 (_ BitVec 32)) Bool)

(assert (=> b!292925 (= res!154018 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292926 () Bool)

(declare-fun res!154017 () Bool)

(assert (=> b!292926 (=> (not res!154017) (not e!185269))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292926 (= res!154017 (validKeyInArray!0 k!2524))))

(assert (= (and start!28670 res!154016) b!292924))

(assert (= (and b!292924 res!154020) b!292926))

(assert (= (and b!292926 res!154017) b!292922))

(assert (= (and b!292922 res!154019) b!292921))

(assert (= (and b!292921 res!154015) b!292925))

(assert (= (and b!292925 res!154018) b!292923))

(declare-fun m!306755 () Bool)

(assert (=> b!292926 m!306755))

(declare-fun m!306757 () Bool)

(assert (=> b!292923 m!306757))

(declare-fun m!306759 () Bool)

(assert (=> b!292923 m!306759))

(declare-fun m!306761 () Bool)

(assert (=> b!292923 m!306761))

(declare-fun m!306763 () Bool)

(assert (=> b!292923 m!306763))

(declare-fun m!306765 () Bool)

(assert (=> b!292925 m!306765))

(declare-fun m!306767 () Bool)

(assert (=> start!28670 m!306767))

(declare-fun m!306769 () Bool)

(assert (=> start!28670 m!306769))

(declare-fun m!306771 () Bool)

(assert (=> b!292921 m!306771))

(declare-fun m!306773 () Bool)

(assert (=> b!292922 m!306773))

(push 1)

(assert (not b!292923))

(assert (not b!292922))

(assert (not start!28670))

