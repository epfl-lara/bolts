; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28584 () Bool)

(assert start!28584)

(declare-fun b!292085 () Bool)

(declare-fun res!153179 () Bool)

(declare-fun e!184821 () Bool)

(assert (=> b!292085 (=> (not res!153179) (not e!184821))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14752 0))(
  ( (array!14753 (arr!6998 (Array (_ BitVec 32) (_ BitVec 64))) (size!7350 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14752)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!292085 (= res!153179 (and (= (size!7350 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7350 a!3312))))))

(declare-fun res!153183 () Bool)

(assert (=> start!28584 (=> (not res!153183) (not e!184821))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28584 (= res!153183 (validMask!0 mask!3809))))

(assert (=> start!28584 e!184821))

(assert (=> start!28584 true))

(declare-fun array_inv!4952 (array!14752) Bool)

(assert (=> start!28584 (array_inv!4952 a!3312)))

(declare-fun b!292086 () Bool)

(declare-fun e!184819 () Bool)

(declare-fun e!184822 () Bool)

(assert (=> b!292086 (= e!184819 e!184822)))

(declare-fun res!153186 () Bool)

(assert (=> b!292086 (=> (not res!153186) (not e!184822))))

(declare-fun lt!144606 () Bool)

(declare-datatypes ((SeekEntryResult!2158 0))(
  ( (MissingZero!2158 (index!10802 (_ BitVec 32))) (Found!2158 (index!10803 (_ BitVec 32))) (Intermediate!2158 (undefined!2970 Bool) (index!10804 (_ BitVec 32)) (x!28965 (_ BitVec 32))) (Undefined!2158) (MissingVacant!2158 (index!10805 (_ BitVec 32))) )
))
(declare-fun lt!144605 () SeekEntryResult!2158)

(assert (=> b!292086 (= res!153186 (and (not lt!144606) (= lt!144605 (MissingVacant!2158 i!1256))))))

(declare-fun lt!144608 () (_ BitVec 32))

(declare-fun lt!144611 () SeekEntryResult!2158)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14752 (_ BitVec 32)) SeekEntryResult!2158)

(assert (=> b!292086 (= lt!144611 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144608 k0!2524 (array!14753 (store (arr!6998 a!3312) i!1256 k0!2524) (size!7350 a!3312)) mask!3809))))

(declare-fun lt!144607 () SeekEntryResult!2158)

(assert (=> b!292086 (= lt!144607 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144608 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292086 (= lt!144608 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!292087 () Bool)

(assert (=> b!292087 (= e!184821 e!184819)))

(declare-fun res!153181 () Bool)

(assert (=> b!292087 (=> (not res!153181) (not e!184819))))

(assert (=> b!292087 (= res!153181 (or lt!144606 (= lt!144605 (MissingVacant!2158 i!1256))))))

(assert (=> b!292087 (= lt!144606 (= lt!144605 (MissingZero!2158 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14752 (_ BitVec 32)) SeekEntryResult!2158)

(assert (=> b!292087 (= lt!144605 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!292088 () Bool)

(declare-fun e!184818 () Bool)

(assert (=> b!292088 (= e!184822 e!184818)))

(declare-fun res!153180 () Bool)

(assert (=> b!292088 (=> (not res!153180) (not e!184818))))

(declare-fun lt!144609 () Bool)

(assert (=> b!292088 (= res!153180 (and (or lt!144609 (not (undefined!2970 lt!144607))) (not lt!144609) (= (select (arr!6998 a!3312) (index!10804 lt!144607)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(get-info :version)

(assert (=> b!292088 (= lt!144609 (not ((_ is Intermediate!2158) lt!144607)))))

(declare-fun b!292089 () Bool)

(declare-fun res!153185 () Bool)

(assert (=> b!292089 (=> (not res!153185) (not e!184819))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14752 (_ BitVec 32)) Bool)

(assert (=> b!292089 (= res!153185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292090 () Bool)

(declare-fun res!153182 () Bool)

(assert (=> b!292090 (=> (not res!153182) (not e!184821))))

(declare-fun arrayContainsKey!0 (array!14752 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292090 (= res!153182 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292091 () Bool)

(declare-fun res!153184 () Bool)

(assert (=> b!292091 (=> (not res!153184) (not e!184821))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292091 (= res!153184 (validKeyInArray!0 k0!2524))))

(declare-fun b!292092 () Bool)

(assert (=> b!292092 (= e!184818 (not true))))

(declare-datatypes ((Unit!9147 0))(
  ( (Unit!9148) )
))
(declare-fun lt!144610 () Unit!9147)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!14752 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9147)

(assert (=> b!292092 (= lt!144610 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3312 i!1256 k0!2524 #b00000000000000000000000000000000 lt!144608 (index!10804 lt!144607) (x!28965 lt!144607) mask!3809))))

(assert (=> b!292092 (= (index!10804 lt!144607) i!1256)))

(assert (= (and start!28584 res!153183) b!292085))

(assert (= (and b!292085 res!153179) b!292091))

(assert (= (and b!292091 res!153184) b!292090))

(assert (= (and b!292090 res!153182) b!292087))

(assert (= (and b!292087 res!153181) b!292089))

(assert (= (and b!292089 res!153185) b!292086))

(assert (= (and b!292086 res!153186) b!292088))

(assert (= (and b!292088 res!153180) b!292092))

(declare-fun m!305851 () Bool)

(assert (=> start!28584 m!305851))

(declare-fun m!305853 () Bool)

(assert (=> start!28584 m!305853))

(declare-fun m!305855 () Bool)

(assert (=> b!292089 m!305855))

(declare-fun m!305857 () Bool)

(assert (=> b!292088 m!305857))

(declare-fun m!305859 () Bool)

(assert (=> b!292092 m!305859))

(declare-fun m!305861 () Bool)

(assert (=> b!292090 m!305861))

(declare-fun m!305863 () Bool)

(assert (=> b!292086 m!305863))

(declare-fun m!305865 () Bool)

(assert (=> b!292086 m!305865))

(declare-fun m!305867 () Bool)

(assert (=> b!292086 m!305867))

(declare-fun m!305869 () Bool)

(assert (=> b!292086 m!305869))

(declare-fun m!305871 () Bool)

(assert (=> b!292087 m!305871))

(declare-fun m!305873 () Bool)

(assert (=> b!292091 m!305873))

(check-sat (not b!292087) (not b!292091) (not b!292090) (not b!292089) (not b!292092) (not b!292086) (not start!28584))
(check-sat)
