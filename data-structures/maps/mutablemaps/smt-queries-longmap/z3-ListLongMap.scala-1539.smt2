; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29168 () Bool)

(assert start!29168)

(declare-fun b!295798 () Bool)

(declare-fun e!186972 () Bool)

(declare-fun e!186974 () Bool)

(assert (=> b!295798 (= e!186972 e!186974)))

(declare-fun res!155724 () Bool)

(assert (=> b!295798 (=> (not res!155724) (not e!186974))))

(declare-fun lt!146831 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2254 0))(
  ( (MissingZero!2254 (index!11186 (_ BitVec 32))) (Found!2254 (index!11187 (_ BitVec 32))) (Intermediate!2254 (undefined!3066 Bool) (index!11188 (_ BitVec 32)) (x!29367 (_ BitVec 32))) (Undefined!2254) (MissingVacant!2254 (index!11189 (_ BitVec 32))) )
))
(declare-fun lt!146829 () SeekEntryResult!2254)

(assert (=> b!295798 (= res!155724 (or lt!146831 (= lt!146829 (MissingVacant!2254 i!1256))))))

(assert (=> b!295798 (= lt!146831 (= lt!146829 (MissingZero!2254 i!1256)))))

(declare-datatypes ((array!14968 0))(
  ( (array!14969 (arr!7094 (Array (_ BitVec 32) (_ BitVec 64))) (size!7446 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14968)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14968 (_ BitVec 32)) SeekEntryResult!2254)

(assert (=> b!295798 (= lt!146829 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!295799 () Bool)

(declare-fun e!186973 () Bool)

(assert (=> b!295799 (= e!186973 (not true))))

(declare-fun lt!146828 () SeekEntryResult!2254)

(assert (=> b!295799 (and (= (select (arr!7094 a!3312) (index!11188 lt!146828)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11188 lt!146828) i!1256))))

(declare-fun b!295800 () Bool)

(declare-fun res!155723 () Bool)

(assert (=> b!295800 (=> (not res!155723) (not e!186972))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!295800 (= res!155723 (validKeyInArray!0 k0!2524))))

(declare-fun b!295801 () Bool)

(declare-fun res!155720 () Bool)

(assert (=> b!295801 (=> (not res!155720) (not e!186972))))

(assert (=> b!295801 (= res!155720 (and (= (size!7446 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7446 a!3312))))))

(declare-fun res!155726 () Bool)

(assert (=> start!29168 (=> (not res!155726) (not e!186972))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29168 (= res!155726 (validMask!0 mask!3809))))

(assert (=> start!29168 e!186972))

(assert (=> start!29168 true))

(declare-fun array_inv!5048 (array!14968) Bool)

(assert (=> start!29168 (array_inv!5048 a!3312)))

(declare-fun b!295802 () Bool)

(declare-fun res!155727 () Bool)

(assert (=> b!295802 (=> (not res!155727) (not e!186972))))

(declare-fun arrayContainsKey!0 (array!14968 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!295802 (= res!155727 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!295803 () Bool)

(declare-fun e!186971 () Bool)

(assert (=> b!295803 (= e!186971 e!186973)))

(declare-fun res!155725 () Bool)

(assert (=> b!295803 (=> (not res!155725) (not e!186973))))

(declare-fun lt!146827 () Bool)

(assert (=> b!295803 (= res!155725 (and (or lt!146827 (not (undefined!3066 lt!146828))) (or lt!146827 (not (= (select (arr!7094 a!3312) (index!11188 lt!146828)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!146827 (not (= (select (arr!7094 a!3312) (index!11188 lt!146828)) k0!2524))) (not lt!146827)))))

(get-info :version)

(assert (=> b!295803 (= lt!146827 (not ((_ is Intermediate!2254) lt!146828)))))

(declare-fun b!295804 () Bool)

(assert (=> b!295804 (= e!186974 e!186971)))

(declare-fun res!155721 () Bool)

(assert (=> b!295804 (=> (not res!155721) (not e!186971))))

(assert (=> b!295804 (= res!155721 lt!146831)))

(declare-fun lt!146826 () (_ BitVec 32))

(declare-fun lt!146830 () SeekEntryResult!2254)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14968 (_ BitVec 32)) SeekEntryResult!2254)

(assert (=> b!295804 (= lt!146830 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146826 k0!2524 (array!14969 (store (arr!7094 a!3312) i!1256 k0!2524) (size!7446 a!3312)) mask!3809))))

(assert (=> b!295804 (= lt!146828 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146826 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!295804 (= lt!146826 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!295805 () Bool)

(declare-fun res!155722 () Bool)

(assert (=> b!295805 (=> (not res!155722) (not e!186974))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14968 (_ BitVec 32)) Bool)

(assert (=> b!295805 (= res!155722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!29168 res!155726) b!295801))

(assert (= (and b!295801 res!155720) b!295800))

(assert (= (and b!295800 res!155723) b!295802))

(assert (= (and b!295802 res!155727) b!295798))

(assert (= (and b!295798 res!155724) b!295805))

(assert (= (and b!295805 res!155722) b!295804))

(assert (= (and b!295804 res!155721) b!295803))

(assert (= (and b!295803 res!155725) b!295799))

(declare-fun m!308901 () Bool)

(assert (=> b!295802 m!308901))

(declare-fun m!308903 () Bool)

(assert (=> b!295798 m!308903))

(declare-fun m!308905 () Bool)

(assert (=> b!295804 m!308905))

(declare-fun m!308907 () Bool)

(assert (=> b!295804 m!308907))

(declare-fun m!308909 () Bool)

(assert (=> b!295804 m!308909))

(declare-fun m!308911 () Bool)

(assert (=> b!295804 m!308911))

(declare-fun m!308913 () Bool)

(assert (=> b!295805 m!308913))

(declare-fun m!308915 () Bool)

(assert (=> b!295800 m!308915))

(declare-fun m!308917 () Bool)

(assert (=> b!295803 m!308917))

(assert (=> b!295799 m!308917))

(declare-fun m!308919 () Bool)

(assert (=> start!29168 m!308919))

(declare-fun m!308921 () Bool)

(assert (=> start!29168 m!308921))

(check-sat (not b!295805) (not b!295800) (not b!295804) (not b!295798) (not b!295802) (not start!29168))
(check-sat)
