; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28578 () Bool)

(assert start!28578)

(declare-fun b!292013 () Bool)

(declare-fun e!184776 () Bool)

(assert (=> b!292013 (= e!184776 (not true))))

(declare-datatypes ((SeekEntryResult!2155 0))(
  ( (MissingZero!2155 (index!10790 (_ BitVec 32))) (Found!2155 (index!10791 (_ BitVec 32))) (Intermediate!2155 (undefined!2967 Bool) (index!10792 (_ BitVec 32)) (x!28954 (_ BitVec 32))) (Undefined!2155) (MissingVacant!2155 (index!10793 (_ BitVec 32))) )
))
(declare-fun lt!144550 () SeekEntryResult!2155)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!292013 (= (index!10792 lt!144550) i!1256)))

(declare-fun b!292014 () Bool)

(declare-fun res!153114 () Bool)

(declare-fun e!184774 () Bool)

(assert (=> b!292014 (=> (not res!153114) (not e!184774))))

(declare-datatypes ((array!14746 0))(
  ( (array!14747 (arr!6995 (Array (_ BitVec 32) (_ BitVec 64))) (size!7347 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14746)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!292014 (= res!153114 (and (= (size!7347 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7347 a!3312))))))

(declare-fun b!292015 () Bool)

(declare-fun res!153112 () Bool)

(assert (=> b!292015 (=> (not res!153112) (not e!184774))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14746 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292015 (= res!153112 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292016 () Bool)

(declare-fun e!184775 () Bool)

(assert (=> b!292016 (= e!184775 e!184776)))

(declare-fun res!153108 () Bool)

(assert (=> b!292016 (=> (not res!153108) (not e!184776))))

(declare-fun lt!144547 () Bool)

(assert (=> b!292016 (= res!153108 (and (or lt!144547 (not (undefined!2967 lt!144550))) (not lt!144547) (= (select (arr!6995 a!3312) (index!10792 lt!144550)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(get-info :version)

(assert (=> b!292016 (= lt!144547 (not ((_ is Intermediate!2155) lt!144550)))))

(declare-fun b!292017 () Bool)

(declare-fun res!153109 () Bool)

(assert (=> b!292017 (=> (not res!153109) (not e!184774))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292017 (= res!153109 (validKeyInArray!0 k0!2524))))

(declare-fun b!292018 () Bool)

(declare-fun e!184773 () Bool)

(assert (=> b!292018 (= e!184773 e!184775)))

(declare-fun res!153111 () Bool)

(assert (=> b!292018 (=> (not res!153111) (not e!184775))))

(declare-fun lt!144551 () SeekEntryResult!2155)

(declare-fun lt!144548 () Bool)

(assert (=> b!292018 (= res!153111 (and (not lt!144548) (= lt!144551 (MissingVacant!2155 i!1256))))))

(declare-fun lt!144546 () (_ BitVec 32))

(declare-fun lt!144549 () SeekEntryResult!2155)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14746 (_ BitVec 32)) SeekEntryResult!2155)

(assert (=> b!292018 (= lt!144549 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144546 k0!2524 (array!14747 (store (arr!6995 a!3312) i!1256 k0!2524) (size!7347 a!3312)) mask!3809))))

(assert (=> b!292018 (= lt!144550 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144546 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292018 (= lt!144546 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!292019 () Bool)

(declare-fun res!153113 () Bool)

(assert (=> b!292019 (=> (not res!153113) (not e!184773))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14746 (_ BitVec 32)) Bool)

(assert (=> b!292019 (= res!153113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun res!153110 () Bool)

(assert (=> start!28578 (=> (not res!153110) (not e!184774))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28578 (= res!153110 (validMask!0 mask!3809))))

(assert (=> start!28578 e!184774))

(assert (=> start!28578 true))

(declare-fun array_inv!4949 (array!14746) Bool)

(assert (=> start!28578 (array_inv!4949 a!3312)))

(declare-fun b!292020 () Bool)

(assert (=> b!292020 (= e!184774 e!184773)))

(declare-fun res!153107 () Bool)

(assert (=> b!292020 (=> (not res!153107) (not e!184773))))

(assert (=> b!292020 (= res!153107 (or lt!144548 (= lt!144551 (MissingVacant!2155 i!1256))))))

(assert (=> b!292020 (= lt!144548 (= lt!144551 (MissingZero!2155 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14746 (_ BitVec 32)) SeekEntryResult!2155)

(assert (=> b!292020 (= lt!144551 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(assert (= (and start!28578 res!153110) b!292014))

(assert (= (and b!292014 res!153114) b!292017))

(assert (= (and b!292017 res!153109) b!292015))

(assert (= (and b!292015 res!153112) b!292020))

(assert (= (and b!292020 res!153107) b!292019))

(assert (= (and b!292019 res!153113) b!292018))

(assert (= (and b!292018 res!153111) b!292016))

(assert (= (and b!292016 res!153108) b!292013))

(declare-fun m!305783 () Bool)

(assert (=> b!292015 m!305783))

(declare-fun m!305785 () Bool)

(assert (=> b!292017 m!305785))

(declare-fun m!305787 () Bool)

(assert (=> b!292020 m!305787))

(declare-fun m!305789 () Bool)

(assert (=> b!292019 m!305789))

(declare-fun m!305791 () Bool)

(assert (=> b!292016 m!305791))

(declare-fun m!305793 () Bool)

(assert (=> start!28578 m!305793))

(declare-fun m!305795 () Bool)

(assert (=> start!28578 m!305795))

(declare-fun m!305797 () Bool)

(assert (=> b!292018 m!305797))

(declare-fun m!305799 () Bool)

(assert (=> b!292018 m!305799))

(declare-fun m!305801 () Bool)

(assert (=> b!292018 m!305801))

(declare-fun m!305803 () Bool)

(assert (=> b!292018 m!305803))

(check-sat (not start!28578) (not b!292019) (not b!292015) (not b!292017) (not b!292020) (not b!292018))
(check-sat)
