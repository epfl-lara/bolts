; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28592 () Bool)

(assert start!28592)

(declare-fun b!292181 () Bool)

(declare-fun res!153279 () Bool)

(declare-fun e!184879 () Bool)

(assert (=> b!292181 (=> (not res!153279) (not e!184879))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14760 0))(
  ( (array!14761 (arr!7002 (Array (_ BitVec 32) (_ BitVec 64))) (size!7354 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14760)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!292181 (= res!153279 (and (= (size!7354 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7354 a!3312))))))

(declare-fun b!292182 () Bool)

(declare-fun e!184882 () Bool)

(assert (=> b!292182 (= e!184879 e!184882)))

(declare-fun res!153277 () Bool)

(assert (=> b!292182 (=> (not res!153277) (not e!184882))))

(declare-datatypes ((SeekEntryResult!2162 0))(
  ( (MissingZero!2162 (index!10818 (_ BitVec 32))) (Found!2162 (index!10819 (_ BitVec 32))) (Intermediate!2162 (undefined!2974 Bool) (index!10820 (_ BitVec 32)) (x!28977 (_ BitVec 32))) (Undefined!2162) (MissingVacant!2162 (index!10821 (_ BitVec 32))) )
))
(declare-fun lt!144690 () SeekEntryResult!2162)

(declare-fun lt!144692 () Bool)

(assert (=> b!292182 (= res!153277 (or lt!144692 (= lt!144690 (MissingVacant!2162 i!1256))))))

(assert (=> b!292182 (= lt!144692 (= lt!144690 (MissingZero!2162 i!1256)))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14760 (_ BitVec 32)) SeekEntryResult!2162)

(assert (=> b!292182 (= lt!144690 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!153280 () Bool)

(assert (=> start!28592 (=> (not res!153280) (not e!184879))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28592 (= res!153280 (validMask!0 mask!3809))))

(assert (=> start!28592 e!184879))

(assert (=> start!28592 true))

(declare-fun array_inv!4956 (array!14760) Bool)

(assert (=> start!28592 (array_inv!4956 a!3312)))

(declare-fun b!292183 () Bool)

(declare-fun e!184878 () Bool)

(declare-fun e!184880 () Bool)

(assert (=> b!292183 (= e!184878 e!184880)))

(declare-fun res!153281 () Bool)

(assert (=> b!292183 (=> (not res!153281) (not e!184880))))

(declare-fun lt!144694 () SeekEntryResult!2162)

(declare-fun lt!144691 () Bool)

(assert (=> b!292183 (= res!153281 (and (or lt!144691 (not (undefined!2974 lt!144694))) (not lt!144691) (= (select (arr!7002 a!3312) (index!10820 lt!144694)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!292183 (= lt!144691 (not (is-Intermediate!2162 lt!144694)))))

(declare-fun b!292184 () Bool)

(declare-fun res!153275 () Bool)

(assert (=> b!292184 (=> (not res!153275) (not e!184882))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14760 (_ BitVec 32)) Bool)

(assert (=> b!292184 (= res!153275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!292185 () Bool)

(declare-fun res!153276 () Bool)

(assert (=> b!292185 (=> (not res!153276) (not e!184879))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!292185 (= res!153276 (validKeyInArray!0 k!2524))))

(declare-fun b!292186 () Bool)

(assert (=> b!292186 (= e!184880 (not (bvsge mask!3809 #b00000000000000000000000000000000)))))

(declare-fun lt!144689 () (_ BitVec 32))

(declare-datatypes ((Unit!9155 0))(
  ( (Unit!9156) )
))
(declare-fun lt!144693 () Unit!9155)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!14760 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9155)

(assert (=> b!292186 (= lt!144693 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!144689 (index!10820 lt!144694) (x!28977 lt!144694) mask!3809))))

(assert (=> b!292186 (= (index!10820 lt!144694) i!1256)))

(declare-fun b!292187 () Bool)

(declare-fun res!153278 () Bool)

(assert (=> b!292187 (=> (not res!153278) (not e!184879))))

(declare-fun arrayContainsKey!0 (array!14760 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!292187 (= res!153278 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!292188 () Bool)

(assert (=> b!292188 (= e!184882 e!184878)))

(declare-fun res!153282 () Bool)

(assert (=> b!292188 (=> (not res!153282) (not e!184878))))

(assert (=> b!292188 (= res!153282 (and (not lt!144692) (= lt!144690 (MissingVacant!2162 i!1256))))))

(declare-fun lt!144695 () SeekEntryResult!2162)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14760 (_ BitVec 32)) SeekEntryResult!2162)

(assert (=> b!292188 (= lt!144695 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144689 k!2524 (array!14761 (store (arr!7002 a!3312) i!1256 k!2524) (size!7354 a!3312)) mask!3809))))

(assert (=> b!292188 (= lt!144694 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144689 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!292188 (= lt!144689 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28592 res!153280) b!292181))

(assert (= (and b!292181 res!153279) b!292185))

(assert (= (and b!292185 res!153276) b!292187))

(assert (= (and b!292187 res!153278) b!292182))

(assert (= (and b!292182 res!153277) b!292184))

(assert (= (and b!292184 res!153275) b!292188))

(assert (= (and b!292188 res!153282) b!292183))

(assert (= (and b!292183 res!153281) b!292186))

(declare-fun m!305947 () Bool)

(assert (=> b!292185 m!305947))

(declare-fun m!305949 () Bool)

(assert (=> b!292188 m!305949))

(declare-fun m!305951 () Bool)

(assert (=> b!292188 m!305951))

(declare-fun m!305953 () Bool)

(assert (=> b!292188 m!305953))

(declare-fun m!305955 () Bool)

(assert (=> b!292188 m!305955))

(declare-fun m!305957 () Bool)

(assert (=> b!292187 m!305957))

(declare-fun m!305959 () Bool)

(assert (=> start!28592 m!305959))

(declare-fun m!305961 () Bool)

(assert (=> start!28592 m!305961))

(declare-fun m!305963 () Bool)

(assert (=> b!292186 m!305963))

(declare-fun m!305965 () Bool)

(assert (=> b!292183 m!305965))

(declare-fun m!305967 () Bool)

(assert (=> b!292182 m!305967))

(declare-fun m!305969 () Bool)

(assert (=> b!292184 m!305969))

(push 1)

(assert (not b!292187))

(assert (not b!292188))

(assert (not b!292182))

