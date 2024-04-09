; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29332 () Bool)

(assert start!29332)

(declare-fun b!297046 () Bool)

(declare-fun res!156693 () Bool)

(declare-fun e!187748 () Bool)

(assert (=> b!297046 (=> (not res!156693) (not e!187748))))

(declare-datatypes ((array!15042 0))(
  ( (array!15043 (arr!7128 (Array (_ BitVec 32) (_ BitVec 64))) (size!7480 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15042)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15042 (_ BitVec 32)) Bool)

(assert (=> b!297046 (= res!156693 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!297047 () Bool)

(declare-fun res!156689 () Bool)

(declare-fun e!187745 () Bool)

(assert (=> b!297047 (=> (not res!156689) (not e!187745))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!297047 (= res!156689 (and (= (size!7480 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7480 a!3312))))))

(declare-fun b!297048 () Bool)

(declare-datatypes ((SeekEntryResult!2288 0))(
  ( (MissingZero!2288 (index!11322 (_ BitVec 32))) (Found!2288 (index!11323 (_ BitVec 32))) (Intermediate!2288 (undefined!3100 Bool) (index!11324 (_ BitVec 32)) (x!29501 (_ BitVec 32))) (Undefined!2288) (MissingVacant!2288 (index!11325 (_ BitVec 32))) )
))
(declare-fun lt!147658 () SeekEntryResult!2288)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun e!187746 () Bool)

(assert (=> b!297048 (= e!187746 (not (= (select (store (arr!7128 a!3312) i!1256 k!2524) (index!11324 lt!147658)) k!2524)))))

(declare-fun lt!147656 () SeekEntryResult!2288)

(assert (=> b!297048 (= lt!147656 lt!147658)))

(declare-fun lt!147661 () (_ BitVec 32))

(declare-datatypes ((Unit!9243 0))(
  ( (Unit!9244) )
))
(declare-fun lt!147662 () Unit!9243)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15042 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9243)

(assert (=> b!297048 (= lt!147662 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!147661 (index!11324 lt!147658) (x!29501 lt!147658) mask!3809))))

(assert (=> b!297048 (and (= (select (arr!7128 a!3312) (index!11324 lt!147658)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11324 lt!147658) i!1256))))

(declare-fun res!156688 () Bool)

(assert (=> start!29332 (=> (not res!156688) (not e!187745))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29332 (= res!156688 (validMask!0 mask!3809))))

(assert (=> start!29332 e!187745))

(assert (=> start!29332 true))

(declare-fun array_inv!5082 (array!15042) Bool)

(assert (=> start!29332 (array_inv!5082 a!3312)))

(declare-fun b!297049 () Bool)

(assert (=> b!297049 (= e!187745 e!187748)))

(declare-fun res!156692 () Bool)

(assert (=> b!297049 (=> (not res!156692) (not e!187748))))

(declare-fun lt!147659 () Bool)

(declare-fun lt!147660 () SeekEntryResult!2288)

(assert (=> b!297049 (= res!156692 (or lt!147659 (= lt!147660 (MissingVacant!2288 i!1256))))))

(assert (=> b!297049 (= lt!147659 (= lt!147660 (MissingZero!2288 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15042 (_ BitVec 32)) SeekEntryResult!2288)

(assert (=> b!297049 (= lt!147660 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!297050 () Bool)

(declare-fun res!156690 () Bool)

(assert (=> b!297050 (=> (not res!156690) (not e!187745))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!297050 (= res!156690 (validKeyInArray!0 k!2524))))

(declare-fun b!297051 () Bool)

(declare-fun e!187744 () Bool)

(assert (=> b!297051 (= e!187748 e!187744)))

(declare-fun res!156686 () Bool)

(assert (=> b!297051 (=> (not res!156686) (not e!187744))))

(assert (=> b!297051 (= res!156686 lt!147659)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15042 (_ BitVec 32)) SeekEntryResult!2288)

(assert (=> b!297051 (= lt!147656 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147661 k!2524 (array!15043 (store (arr!7128 a!3312) i!1256 k!2524) (size!7480 a!3312)) mask!3809))))

(assert (=> b!297051 (= lt!147658 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147661 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!297051 (= lt!147661 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!297052 () Bool)

(assert (=> b!297052 (= e!187744 e!187746)))

(declare-fun res!156691 () Bool)

(assert (=> b!297052 (=> (not res!156691) (not e!187746))))

(declare-fun lt!147657 () Bool)

(assert (=> b!297052 (= res!156691 (and (or lt!147657 (not (undefined!3100 lt!147658))) (or lt!147657 (not (= (select (arr!7128 a!3312) (index!11324 lt!147658)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147657 (not (= (select (arr!7128 a!3312) (index!11324 lt!147658)) k!2524))) (not lt!147657)))))

(assert (=> b!297052 (= lt!147657 (not (is-Intermediate!2288 lt!147658)))))

(declare-fun b!297053 () Bool)

(declare-fun res!156687 () Bool)

(assert (=> b!297053 (=> (not res!156687) (not e!187745))))

(declare-fun arrayContainsKey!0 (array!15042 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!297053 (= res!156687 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!29332 res!156688) b!297047))

(assert (= (and b!297047 res!156689) b!297050))

(assert (= (and b!297050 res!156690) b!297053))

(assert (= (and b!297053 res!156687) b!297049))

(assert (= (and b!297049 res!156692) b!297046))

(assert (= (and b!297046 res!156693) b!297051))

(assert (= (and b!297051 res!156686) b!297052))

(assert (= (and b!297052 res!156691) b!297048))

(declare-fun m!309909 () Bool)

(assert (=> b!297053 m!309909))

(declare-fun m!309911 () Bool)

(assert (=> b!297052 m!309911))

(declare-fun m!309913 () Bool)

(assert (=> b!297049 m!309913))

(declare-fun m!309915 () Bool)

(assert (=> start!29332 m!309915))

(declare-fun m!309917 () Bool)

(assert (=> start!29332 m!309917))

(declare-fun m!309919 () Bool)

(assert (=> b!297048 m!309919))

(declare-fun m!309921 () Bool)

(assert (=> b!297048 m!309921))

(declare-fun m!309923 () Bool)

(assert (=> b!297048 m!309923))

(assert (=> b!297048 m!309911))

(assert (=> b!297051 m!309919))

(declare-fun m!309925 () Bool)

(assert (=> b!297051 m!309925))

(declare-fun m!309927 () Bool)

(assert (=> b!297051 m!309927))

(declare-fun m!309929 () Bool)

(assert (=> b!297051 m!309929))

(declare-fun m!309931 () Bool)

(assert (=> b!297046 m!309931))

(declare-fun m!309933 () Bool)

(assert (=> b!297050 m!309933))

(push 1)

