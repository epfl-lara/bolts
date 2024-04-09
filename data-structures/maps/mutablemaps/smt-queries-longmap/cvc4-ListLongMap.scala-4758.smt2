; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65630 () Bool)

(assert start!65630)

(declare-fun b!750443 () Bool)

(declare-fun res!506624 () Bool)

(declare-fun e!418709 () Bool)

(assert (=> b!750443 (=> (not res!506624) (not e!418709))))

(declare-datatypes ((array!41756 0))(
  ( (array!41757 (arr!19988 (Array (_ BitVec 32) (_ BitVec 64))) (size!20409 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41756)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41756 (_ BitVec 32)) Bool)

(assert (=> b!750443 (= res!506624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!418718 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!750444 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7595 0))(
  ( (MissingZero!7595 (index!32747 (_ BitVec 32))) (Found!7595 (index!32748 (_ BitVec 32))) (Intermediate!7595 (undefined!8407 Bool) (index!32749 (_ BitVec 32)) (x!63698 (_ BitVec 32))) (Undefined!7595) (MissingVacant!7595 (index!32750 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41756 (_ BitVec 32)) SeekEntryResult!7595)

(assert (=> b!750444 (= e!418718 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19988 a!3186) j!159) a!3186 mask!3328) (Found!7595 j!159)))))

(declare-fun b!750445 () Bool)

(declare-fun res!506616 () Bool)

(declare-fun e!418716 () Bool)

(assert (=> b!750445 (=> (not res!506616) (not e!418716))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!750445 (= res!506616 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19988 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!750446 () Bool)

(declare-fun res!506618 () Bool)

(assert (=> b!750446 (=> (not res!506618) (not e!418709))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!750446 (= res!506618 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20409 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20409 a!3186))))))

(declare-fun b!750447 () Bool)

(declare-fun res!506615 () Bool)

(declare-fun e!418717 () Bool)

(assert (=> b!750447 (=> (not res!506615) (not e!418717))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41756 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!750447 (= res!506615 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!750448 () Bool)

(declare-fun res!506621 () Bool)

(assert (=> b!750448 (=> (not res!506621) (not e!418717))))

(assert (=> b!750448 (= res!506621 (and (= (size!20409 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20409 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20409 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!750449 () Bool)

(declare-fun res!506626 () Bool)

(assert (=> b!750449 (=> (not res!506626) (not e!418716))))

(assert (=> b!750449 (= res!506626 e!418718)))

(declare-fun c!82296 () Bool)

(assert (=> b!750449 (= c!82296 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!750450 () Bool)

(declare-fun res!506617 () Bool)

(assert (=> b!750450 (=> (not res!506617) (not e!418717))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!750450 (= res!506617 (validKeyInArray!0 k!2102))))

(declare-fun b!750451 () Bool)

(declare-fun e!418710 () Bool)

(assert (=> b!750451 (= e!418716 e!418710)))

(declare-fun res!506625 () Bool)

(assert (=> b!750451 (=> (not res!506625) (not e!418710))))

(declare-fun lt!333709 () SeekEntryResult!7595)

(declare-fun lt!333715 () SeekEntryResult!7595)

(assert (=> b!750451 (= res!506625 (= lt!333709 lt!333715))))

(declare-fun lt!333719 () (_ BitVec 64))

(declare-fun lt!333711 () array!41756)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41756 (_ BitVec 32)) SeekEntryResult!7595)

(assert (=> b!750451 (= lt!333715 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333719 lt!333711 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!750451 (= lt!333709 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333719 mask!3328) lt!333719 lt!333711 mask!3328))))

(assert (=> b!750451 (= lt!333719 (select (store (arr!19988 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!750451 (= lt!333711 (array!41757 (store (arr!19988 a!3186) i!1173 k!2102) (size!20409 a!3186)))))

(declare-fun lt!333710 () SeekEntryResult!7595)

(declare-fun b!750452 () Bool)

(assert (=> b!750452 (= e!418718 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19988 a!3186) j!159) a!3186 mask!3328) lt!333710))))

(declare-fun res!506631 () Bool)

(assert (=> start!65630 (=> (not res!506631) (not e!418717))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65630 (= res!506631 (validMask!0 mask!3328))))

(assert (=> start!65630 e!418717))

(assert (=> start!65630 true))

(declare-fun array_inv!15762 (array!41756) Bool)

(assert (=> start!65630 (array_inv!15762 a!3186)))

(declare-fun b!750453 () Bool)

(declare-fun res!506627 () Bool)

(assert (=> b!750453 (=> (not res!506627) (not e!418709))))

(declare-datatypes ((List!14043 0))(
  ( (Nil!14040) (Cons!14039 (h!15111 (_ BitVec 64)) (t!20366 List!14043)) )
))
(declare-fun arrayNoDuplicates!0 (array!41756 (_ BitVec 32) List!14043) Bool)

(assert (=> b!750453 (= res!506627 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14040))))

(declare-fun b!750454 () Bool)

(declare-datatypes ((Unit!25782 0))(
  ( (Unit!25783) )
))
(declare-fun e!418715 () Unit!25782)

(declare-fun Unit!25784 () Unit!25782)

(assert (=> b!750454 (= e!418715 Unit!25784)))

(declare-fun lt!333713 () SeekEntryResult!7595)

(declare-fun b!750455 () Bool)

(declare-fun e!418714 () Bool)

(assert (=> b!750455 (= e!418714 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19988 a!3186) j!159) a!3186 mask!3328) lt!333713))))

(declare-fun b!750456 () Bool)

(declare-fun e!418712 () Bool)

(declare-fun e!418719 () Bool)

(assert (=> b!750456 (= e!418712 e!418719)))

(declare-fun res!506622 () Bool)

(assert (=> b!750456 (=> res!506622 e!418719)))

(declare-fun lt!333712 () (_ BitVec 64))

(assert (=> b!750456 (= res!506622 (= lt!333712 lt!333719))))

(assert (=> b!750456 (= lt!333712 (select (store (arr!19988 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!750457 () Bool)

(declare-fun res!506614 () Bool)

(assert (=> b!750457 (=> (not res!506614) (not e!418717))))

(assert (=> b!750457 (= res!506614 (validKeyInArray!0 (select (arr!19988 a!3186) j!159)))))

(declare-fun b!750458 () Bool)

(declare-fun Unit!25785 () Unit!25782)

(assert (=> b!750458 (= e!418715 Unit!25785)))

(assert (=> b!750458 false))

(declare-fun e!418711 () Bool)

(declare-fun b!750459 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41756 (_ BitVec 32)) SeekEntryResult!7595)

(assert (=> b!750459 (= e!418711 (= (seekEntryOrOpen!0 lt!333719 lt!333711 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333719 lt!333711 mask!3328)))))

(declare-fun b!750460 () Bool)

(assert (=> b!750460 (= e!418719 true)))

(assert (=> b!750460 e!418711))

(declare-fun res!506619 () Bool)

(assert (=> b!750460 (=> (not res!506619) (not e!418711))))

(assert (=> b!750460 (= res!506619 (= lt!333712 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!333716 () Unit!25782)

(assert (=> b!750460 (= lt!333716 e!418715)))

(declare-fun c!82295 () Bool)

(assert (=> b!750460 (= c!82295 (= lt!333712 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!750461 () Bool)

(assert (=> b!750461 (= e!418709 e!418716)))

(declare-fun res!506623 () Bool)

(assert (=> b!750461 (=> (not res!506623) (not e!418716))))

(assert (=> b!750461 (= res!506623 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19988 a!3186) j!159) mask!3328) (select (arr!19988 a!3186) j!159) a!3186 mask!3328) lt!333710))))

(assert (=> b!750461 (= lt!333710 (Intermediate!7595 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!750462 () Bool)

(declare-fun res!506630 () Bool)

(assert (=> b!750462 (=> res!506630 e!418712)))

(assert (=> b!750462 (= res!506630 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19988 a!3186) j!159) a!3186 mask!3328) lt!333713)))))

(declare-fun b!750463 () Bool)

(assert (=> b!750463 (= e!418710 (not e!418712))))

(declare-fun res!506628 () Bool)

(assert (=> b!750463 (=> res!506628 e!418712)))

(assert (=> b!750463 (= res!506628 (or (not (is-Intermediate!7595 lt!333715)) (bvslt x!1131 (x!63698 lt!333715)) (not (= x!1131 (x!63698 lt!333715))) (not (= index!1321 (index!32749 lt!333715)))))))

(assert (=> b!750463 e!418714))

(declare-fun res!506629 () Bool)

(assert (=> b!750463 (=> (not res!506629) (not e!418714))))

(declare-fun lt!333717 () SeekEntryResult!7595)

(assert (=> b!750463 (= res!506629 (= lt!333717 lt!333713))))

(assert (=> b!750463 (= lt!333713 (Found!7595 j!159))))

(assert (=> b!750463 (= lt!333717 (seekEntryOrOpen!0 (select (arr!19988 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!750463 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!333714 () Unit!25782)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41756 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25782)

(assert (=> b!750463 (= lt!333714 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!750464 () Bool)

(assert (=> b!750464 (= e!418717 e!418709)))

(declare-fun res!506620 () Bool)

(assert (=> b!750464 (=> (not res!506620) (not e!418709))))

(declare-fun lt!333718 () SeekEntryResult!7595)

(assert (=> b!750464 (= res!506620 (or (= lt!333718 (MissingZero!7595 i!1173)) (= lt!333718 (MissingVacant!7595 i!1173))))))

(assert (=> b!750464 (= lt!333718 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!65630 res!506631) b!750448))

(assert (= (and b!750448 res!506621) b!750457))

(assert (= (and b!750457 res!506614) b!750450))

(assert (= (and b!750450 res!506617) b!750447))

(assert (= (and b!750447 res!506615) b!750464))

(assert (= (and b!750464 res!506620) b!750443))

(assert (= (and b!750443 res!506624) b!750453))

(assert (= (and b!750453 res!506627) b!750446))

(assert (= (and b!750446 res!506618) b!750461))

(assert (= (and b!750461 res!506623) b!750445))

(assert (= (and b!750445 res!506616) b!750449))

(assert (= (and b!750449 c!82296) b!750452))

(assert (= (and b!750449 (not c!82296)) b!750444))

(assert (= (and b!750449 res!506626) b!750451))

(assert (= (and b!750451 res!506625) b!750463))

(assert (= (and b!750463 res!506629) b!750455))

(assert (= (and b!750463 (not res!506628)) b!750462))

(assert (= (and b!750462 (not res!506630)) b!750456))

(assert (= (and b!750456 (not res!506622)) b!750460))

(assert (= (and b!750460 c!82295) b!750458))

(assert (= (and b!750460 (not c!82295)) b!750454))

(assert (= (and b!750460 res!506619) b!750459))

(declare-fun m!699909 () Bool)

(assert (=> b!750464 m!699909))

(declare-fun m!699911 () Bool)

(assert (=> b!750445 m!699911))

(declare-fun m!699913 () Bool)

(assert (=> b!750459 m!699913))

(declare-fun m!699915 () Bool)

(assert (=> b!750459 m!699915))

(declare-fun m!699917 () Bool)

(assert (=> b!750443 m!699917))

(declare-fun m!699919 () Bool)

(assert (=> b!750453 m!699919))

(declare-fun m!699921 () Bool)

(assert (=> start!65630 m!699921))

(declare-fun m!699923 () Bool)

(assert (=> start!65630 m!699923))

(declare-fun m!699925 () Bool)

(assert (=> b!750461 m!699925))

(assert (=> b!750461 m!699925))

(declare-fun m!699927 () Bool)

(assert (=> b!750461 m!699927))

(assert (=> b!750461 m!699927))

(assert (=> b!750461 m!699925))

(declare-fun m!699929 () Bool)

(assert (=> b!750461 m!699929))

(declare-fun m!699931 () Bool)

(assert (=> b!750447 m!699931))

(assert (=> b!750452 m!699925))

(assert (=> b!750452 m!699925))

(declare-fun m!699933 () Bool)

(assert (=> b!750452 m!699933))

(assert (=> b!750457 m!699925))

(assert (=> b!750457 m!699925))

(declare-fun m!699935 () Bool)

(assert (=> b!750457 m!699935))

(assert (=> b!750462 m!699925))

(assert (=> b!750462 m!699925))

(declare-fun m!699937 () Bool)

(assert (=> b!750462 m!699937))

(declare-fun m!699939 () Bool)

(assert (=> b!750450 m!699939))

(assert (=> b!750463 m!699925))

(assert (=> b!750463 m!699925))

(declare-fun m!699941 () Bool)

(assert (=> b!750463 m!699941))

(declare-fun m!699943 () Bool)

(assert (=> b!750463 m!699943))

(declare-fun m!699945 () Bool)

(assert (=> b!750463 m!699945))

(declare-fun m!699947 () Bool)

(assert (=> b!750456 m!699947))

(declare-fun m!699949 () Bool)

(assert (=> b!750456 m!699949))

(assert (=> b!750455 m!699925))

(assert (=> b!750455 m!699925))

(declare-fun m!699951 () Bool)

(assert (=> b!750455 m!699951))

(assert (=> b!750444 m!699925))

(assert (=> b!750444 m!699925))

(assert (=> b!750444 m!699937))

(declare-fun m!699953 () Bool)

(assert (=> b!750451 m!699953))

(assert (=> b!750451 m!699947))

(declare-fun m!699955 () Bool)

(assert (=> b!750451 m!699955))

(declare-fun m!699957 () Bool)

(assert (=> b!750451 m!699957))

(assert (=> b!750451 m!699953))

(declare-fun m!699959 () Bool)

(assert (=> b!750451 m!699959))

(push 1)

