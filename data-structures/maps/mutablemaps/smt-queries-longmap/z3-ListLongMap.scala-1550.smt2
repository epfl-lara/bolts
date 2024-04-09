; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29330 () Bool)

(assert start!29330)

(declare-fun b!297022 () Bool)

(declare-fun res!156669 () Bool)

(declare-fun e!187730 () Bool)

(assert (=> b!297022 (=> (not res!156669) (not e!187730))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!297022 (= res!156669 (validKeyInArray!0 k0!2524))))

(declare-fun b!297023 () Bool)

(declare-fun res!156666 () Bool)

(assert (=> b!297023 (=> (not res!156666) (not e!187730))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15040 0))(
  ( (array!15041 (arr!7127 (Array (_ BitVec 32) (_ BitVec 64))) (size!7479 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15040)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!297023 (= res!156666 (and (= (size!7479 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7479 a!3312))))))

(declare-fun b!297024 () Bool)

(declare-fun res!156665 () Bool)

(assert (=> b!297024 (=> (not res!156665) (not e!187730))))

(declare-fun arrayContainsKey!0 (array!15040 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!297024 (= res!156665 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!297025 () Bool)

(declare-fun e!187732 () Bool)

(declare-fun e!187731 () Bool)

(assert (=> b!297025 (= e!187732 e!187731)))

(declare-fun res!156663 () Bool)

(assert (=> b!297025 (=> (not res!156663) (not e!187731))))

(declare-fun lt!147637 () Bool)

(declare-datatypes ((SeekEntryResult!2287 0))(
  ( (MissingZero!2287 (index!11318 (_ BitVec 32))) (Found!2287 (index!11319 (_ BitVec 32))) (Intermediate!2287 (undefined!3099 Bool) (index!11320 (_ BitVec 32)) (x!29500 (_ BitVec 32))) (Undefined!2287) (MissingVacant!2287 (index!11321 (_ BitVec 32))) )
))
(declare-fun lt!147639 () SeekEntryResult!2287)

(assert (=> b!297025 (= res!156663 (and (or lt!147637 (not (undefined!3099 lt!147639))) (or lt!147637 (not (= (select (arr!7127 a!3312) (index!11320 lt!147639)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147637 (not (= (select (arr!7127 a!3312) (index!11320 lt!147639)) k0!2524))) (not lt!147637)))))

(get-info :version)

(assert (=> b!297025 (= lt!147637 (not ((_ is Intermediate!2287) lt!147639)))))

(declare-fun b!297026 () Bool)

(assert (=> b!297026 (= e!187731 (not (= (select (store (arr!7127 a!3312) i!1256 k0!2524) (index!11320 lt!147639)) k0!2524)))))

(declare-fun lt!147635 () SeekEntryResult!2287)

(assert (=> b!297026 (= lt!147635 lt!147639)))

(declare-fun lt!147638 () (_ BitVec 32))

(declare-datatypes ((Unit!9241 0))(
  ( (Unit!9242) )
))
(declare-fun lt!147640 () Unit!9241)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15040 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9241)

(assert (=> b!297026 (= lt!147640 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k0!2524 #b00000000000000000000000000000000 lt!147638 (index!11320 lt!147639) (x!29500 lt!147639) mask!3809))))

(assert (=> b!297026 (and (= (select (arr!7127 a!3312) (index!11320 lt!147639)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11320 lt!147639) i!1256))))

(declare-fun res!156668 () Bool)

(assert (=> start!29330 (=> (not res!156668) (not e!187730))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29330 (= res!156668 (validMask!0 mask!3809))))

(assert (=> start!29330 e!187730))

(assert (=> start!29330 true))

(declare-fun array_inv!5081 (array!15040) Bool)

(assert (=> start!29330 (array_inv!5081 a!3312)))

(declare-fun b!297027 () Bool)

(declare-fun e!187729 () Bool)

(assert (=> b!297027 (= e!187730 e!187729)))

(declare-fun res!156664 () Bool)

(assert (=> b!297027 (=> (not res!156664) (not e!187729))))

(declare-fun lt!147641 () SeekEntryResult!2287)

(declare-fun lt!147636 () Bool)

(assert (=> b!297027 (= res!156664 (or lt!147636 (= lt!147641 (MissingVacant!2287 i!1256))))))

(assert (=> b!297027 (= lt!147636 (= lt!147641 (MissingZero!2287 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15040 (_ BitVec 32)) SeekEntryResult!2287)

(assert (=> b!297027 (= lt!147641 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!297028 () Bool)

(assert (=> b!297028 (= e!187729 e!187732)))

(declare-fun res!156667 () Bool)

(assert (=> b!297028 (=> (not res!156667) (not e!187732))))

(assert (=> b!297028 (= res!156667 lt!147636)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15040 (_ BitVec 32)) SeekEntryResult!2287)

(assert (=> b!297028 (= lt!147635 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147638 k0!2524 (array!15041 (store (arr!7127 a!3312) i!1256 k0!2524) (size!7479 a!3312)) mask!3809))))

(assert (=> b!297028 (= lt!147639 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147638 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!297028 (= lt!147638 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!297029 () Bool)

(declare-fun res!156662 () Bool)

(assert (=> b!297029 (=> (not res!156662) (not e!187729))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15040 (_ BitVec 32)) Bool)

(assert (=> b!297029 (= res!156662 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!29330 res!156668) b!297023))

(assert (= (and b!297023 res!156666) b!297022))

(assert (= (and b!297022 res!156669) b!297024))

(assert (= (and b!297024 res!156665) b!297027))

(assert (= (and b!297027 res!156664) b!297029))

(assert (= (and b!297029 res!156662) b!297028))

(assert (= (and b!297028 res!156667) b!297025))

(assert (= (and b!297025 res!156663) b!297026))

(declare-fun m!309883 () Bool)

(assert (=> b!297026 m!309883))

(declare-fun m!309885 () Bool)

(assert (=> b!297026 m!309885))

(declare-fun m!309887 () Bool)

(assert (=> b!297026 m!309887))

(declare-fun m!309889 () Bool)

(assert (=> b!297026 m!309889))

(declare-fun m!309891 () Bool)

(assert (=> b!297029 m!309891))

(assert (=> b!297025 m!309889))

(declare-fun m!309893 () Bool)

(assert (=> start!29330 m!309893))

(declare-fun m!309895 () Bool)

(assert (=> start!29330 m!309895))

(declare-fun m!309897 () Bool)

(assert (=> b!297024 m!309897))

(declare-fun m!309899 () Bool)

(assert (=> b!297022 m!309899))

(declare-fun m!309901 () Bool)

(assert (=> b!297027 m!309901))

(assert (=> b!297028 m!309883))

(declare-fun m!309903 () Bool)

(assert (=> b!297028 m!309903))

(declare-fun m!309905 () Bool)

(assert (=> b!297028 m!309905))

(declare-fun m!309907 () Bool)

(assert (=> b!297028 m!309907))

(check-sat (not b!297029) (not start!29330) (not b!297027) (not b!297024) (not b!297026) (not b!297028) (not b!297022))
(check-sat)
