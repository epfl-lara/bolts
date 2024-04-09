; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64662 () Bool)

(assert start!64662)

(declare-fun res!488710 () Bool)

(declare-fun e!407576 () Bool)

(assert (=> start!64662 (=> (not res!488710) (not e!407576))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64662 (= res!488710 (validMask!0 mask!3328))))

(assert (=> start!64662 e!407576))

(assert (=> start!64662 true))

(declare-datatypes ((array!41064 0))(
  ( (array!41065 (arr!19648 (Array (_ BitVec 32) (_ BitVec 64))) (size!20069 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41064)

(declare-fun array_inv!15422 (array!41064) Bool)

(assert (=> start!64662 (array_inv!15422 a!3186)))

(declare-fun b!728016 () Bool)

(declare-fun res!488713 () Bool)

(declare-fun e!407575 () Bool)

(assert (=> b!728016 (=> (not res!488713) (not e!407575))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41064 (_ BitVec 32)) Bool)

(assert (=> b!728016 (= res!488713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!728017 () Bool)

(declare-fun e!407572 () Bool)

(assert (=> b!728017 (= e!407575 e!407572)))

(declare-fun res!488712 () Bool)

(assert (=> b!728017 (=> (not res!488712) (not e!407572))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7255 0))(
  ( (MissingZero!7255 (index!31387 (_ BitVec 32))) (Found!7255 (index!31388 (_ BitVec 32))) (Intermediate!7255 (undefined!8067 Bool) (index!31389 (_ BitVec 32)) (x!62406 (_ BitVec 32))) (Undefined!7255) (MissingVacant!7255 (index!31390 (_ BitVec 32))) )
))
(declare-fun lt!322481 () SeekEntryResult!7255)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41064 (_ BitVec 32)) SeekEntryResult!7255)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728017 (= res!488712 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19648 a!3186) j!159) mask!3328) (select (arr!19648 a!3186) j!159) a!3186 mask!3328) lt!322481))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!728017 (= lt!322481 (Intermediate!7255 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!728018 () Bool)

(declare-fun res!488709 () Bool)

(assert (=> b!728018 (=> (not res!488709) (not e!407576))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41064 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!728018 (= res!488709 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!728019 () Bool)

(declare-fun e!407571 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41064 (_ BitVec 32)) SeekEntryResult!7255)

(assert (=> b!728019 (= e!407571 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19648 a!3186) j!159) a!3186 mask!3328) (Found!7255 j!159)))))

(declare-fun b!728020 () Bool)

(assert (=> b!728020 (= e!407571 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19648 a!3186) j!159) a!3186 mask!3328) lt!322481))))

(declare-fun b!728021 () Bool)

(declare-fun e!407577 () Bool)

(assert (=> b!728021 (= e!407572 e!407577)))

(declare-fun res!488716 () Bool)

(assert (=> b!728021 (=> (not res!488716) (not e!407577))))

(declare-fun lt!322484 () SeekEntryResult!7255)

(declare-fun lt!322480 () SeekEntryResult!7255)

(assert (=> b!728021 (= res!488716 (= lt!322484 lt!322480))))

(declare-fun lt!322482 () array!41064)

(declare-fun lt!322478 () (_ BitVec 64))

(assert (=> b!728021 (= lt!322480 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322478 lt!322482 mask!3328))))

(assert (=> b!728021 (= lt!322484 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322478 mask!3328) lt!322478 lt!322482 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!728021 (= lt!322478 (select (store (arr!19648 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!728021 (= lt!322482 (array!41065 (store (arr!19648 a!3186) i!1173 k0!2102) (size!20069 a!3186)))))

(declare-fun b!728022 () Bool)

(declare-fun res!488714 () Bool)

(assert (=> b!728022 (=> (not res!488714) (not e!407572))))

(assert (=> b!728022 (= res!488714 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19648 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!728023 () Bool)

(declare-fun res!488718 () Bool)

(assert (=> b!728023 (=> (not res!488718) (not e!407576))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!728023 (= res!488718 (validKeyInArray!0 (select (arr!19648 a!3186) j!159)))))

(declare-fun b!728024 () Bool)

(declare-fun res!488711 () Bool)

(assert (=> b!728024 (=> (not res!488711) (not e!407575))))

(declare-datatypes ((List!13703 0))(
  ( (Nil!13700) (Cons!13699 (h!14759 (_ BitVec 64)) (t!20026 List!13703)) )
))
(declare-fun arrayNoDuplicates!0 (array!41064 (_ BitVec 32) List!13703) Bool)

(assert (=> b!728024 (= res!488711 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13700))))

(declare-fun b!728025 () Bool)

(declare-fun res!488715 () Bool)

(assert (=> b!728025 (=> (not res!488715) (not e!407576))))

(assert (=> b!728025 (= res!488715 (and (= (size!20069 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20069 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20069 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!728026 () Bool)

(declare-fun res!488706 () Bool)

(assert (=> b!728026 (=> (not res!488706) (not e!407575))))

(assert (=> b!728026 (= res!488706 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20069 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20069 a!3186))))))

(declare-fun b!728027 () Bool)

(declare-fun lt!322483 () SeekEntryResult!7255)

(declare-fun e!407574 () Bool)

(assert (=> b!728027 (= e!407574 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19648 a!3186) j!159) a!3186 mask!3328) lt!322483))))

(declare-fun b!728028 () Bool)

(declare-fun res!488707 () Bool)

(assert (=> b!728028 (=> (not res!488707) (not e!407576))))

(assert (=> b!728028 (= res!488707 (validKeyInArray!0 k0!2102))))

(declare-fun b!728029 () Bool)

(declare-fun e!407569 () Bool)

(assert (=> b!728029 (= e!407577 (not e!407569))))

(declare-fun res!488717 () Bool)

(assert (=> b!728029 (=> res!488717 e!407569)))

(get-info :version)

(assert (=> b!728029 (= res!488717 (or (not ((_ is Intermediate!7255) lt!322480)) (bvsge x!1131 (x!62406 lt!322480))))))

(declare-fun e!407573 () Bool)

(assert (=> b!728029 e!407573))

(declare-fun res!488704 () Bool)

(assert (=> b!728029 (=> (not res!488704) (not e!407573))))

(assert (=> b!728029 (= res!488704 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24828 0))(
  ( (Unit!24829) )
))
(declare-fun lt!322479 () Unit!24828)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41064 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24828)

(assert (=> b!728029 (= lt!322479 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!728030 () Bool)

(declare-fun res!488705 () Bool)

(assert (=> b!728030 (=> (not res!488705) (not e!407572))))

(assert (=> b!728030 (= res!488705 e!407571)))

(declare-fun c!80031 () Bool)

(assert (=> b!728030 (= c!80031 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!728031 () Bool)

(assert (=> b!728031 (= e!407569 true)))

(declare-fun lt!322477 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728031 (= lt!322477 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!728032 () Bool)

(assert (=> b!728032 (= e!407576 e!407575)))

(declare-fun res!488703 () Bool)

(assert (=> b!728032 (=> (not res!488703) (not e!407575))))

(declare-fun lt!322476 () SeekEntryResult!7255)

(assert (=> b!728032 (= res!488703 (or (= lt!322476 (MissingZero!7255 i!1173)) (= lt!322476 (MissingVacant!7255 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41064 (_ BitVec 32)) SeekEntryResult!7255)

(assert (=> b!728032 (= lt!322476 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!728033 () Bool)

(assert (=> b!728033 (= e!407573 e!407574)))

(declare-fun res!488708 () Bool)

(assert (=> b!728033 (=> (not res!488708) (not e!407574))))

(assert (=> b!728033 (= res!488708 (= (seekEntryOrOpen!0 (select (arr!19648 a!3186) j!159) a!3186 mask!3328) lt!322483))))

(assert (=> b!728033 (= lt!322483 (Found!7255 j!159))))

(assert (= (and start!64662 res!488710) b!728025))

(assert (= (and b!728025 res!488715) b!728023))

(assert (= (and b!728023 res!488718) b!728028))

(assert (= (and b!728028 res!488707) b!728018))

(assert (= (and b!728018 res!488709) b!728032))

(assert (= (and b!728032 res!488703) b!728016))

(assert (= (and b!728016 res!488713) b!728024))

(assert (= (and b!728024 res!488711) b!728026))

(assert (= (and b!728026 res!488706) b!728017))

(assert (= (and b!728017 res!488712) b!728022))

(assert (= (and b!728022 res!488714) b!728030))

(assert (= (and b!728030 c!80031) b!728020))

(assert (= (and b!728030 (not c!80031)) b!728019))

(assert (= (and b!728030 res!488705) b!728021))

(assert (= (and b!728021 res!488716) b!728029))

(assert (= (and b!728029 res!488704) b!728033))

(assert (= (and b!728033 res!488708) b!728027))

(assert (= (and b!728029 (not res!488717)) b!728031))

(declare-fun m!681901 () Bool)

(assert (=> b!728033 m!681901))

(assert (=> b!728033 m!681901))

(declare-fun m!681903 () Bool)

(assert (=> b!728033 m!681903))

(declare-fun m!681905 () Bool)

(assert (=> b!728016 m!681905))

(declare-fun m!681907 () Bool)

(assert (=> b!728028 m!681907))

(assert (=> b!728020 m!681901))

(assert (=> b!728020 m!681901))

(declare-fun m!681909 () Bool)

(assert (=> b!728020 m!681909))

(assert (=> b!728019 m!681901))

(assert (=> b!728019 m!681901))

(declare-fun m!681911 () Bool)

(assert (=> b!728019 m!681911))

(declare-fun m!681913 () Bool)

(assert (=> b!728018 m!681913))

(assert (=> b!728023 m!681901))

(assert (=> b!728023 m!681901))

(declare-fun m!681915 () Bool)

(assert (=> b!728023 m!681915))

(declare-fun m!681917 () Bool)

(assert (=> start!64662 m!681917))

(declare-fun m!681919 () Bool)

(assert (=> start!64662 m!681919))

(declare-fun m!681921 () Bool)

(assert (=> b!728032 m!681921))

(declare-fun m!681923 () Bool)

(assert (=> b!728021 m!681923))

(assert (=> b!728021 m!681923))

(declare-fun m!681925 () Bool)

(assert (=> b!728021 m!681925))

(declare-fun m!681927 () Bool)

(assert (=> b!728021 m!681927))

(declare-fun m!681929 () Bool)

(assert (=> b!728021 m!681929))

(declare-fun m!681931 () Bool)

(assert (=> b!728021 m!681931))

(declare-fun m!681933 () Bool)

(assert (=> b!728024 m!681933))

(declare-fun m!681935 () Bool)

(assert (=> b!728031 m!681935))

(declare-fun m!681937 () Bool)

(assert (=> b!728022 m!681937))

(declare-fun m!681939 () Bool)

(assert (=> b!728029 m!681939))

(declare-fun m!681941 () Bool)

(assert (=> b!728029 m!681941))

(assert (=> b!728027 m!681901))

(assert (=> b!728027 m!681901))

(declare-fun m!681943 () Bool)

(assert (=> b!728027 m!681943))

(assert (=> b!728017 m!681901))

(assert (=> b!728017 m!681901))

(declare-fun m!681945 () Bool)

(assert (=> b!728017 m!681945))

(assert (=> b!728017 m!681945))

(assert (=> b!728017 m!681901))

(declare-fun m!681947 () Bool)

(assert (=> b!728017 m!681947))

(check-sat (not b!728019) (not b!728031) (not b!728018) (not b!728021) (not b!728032) (not b!728016) (not b!728028) (not b!728020) (not b!728023) (not b!728027) (not b!728033) (not b!728029) (not start!64662) (not b!728024) (not b!728017))
(check-sat)
