; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65626 () Bool)

(assert start!65626)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41752 0))(
  ( (array!41753 (arr!19986 (Array (_ BitVec 32) (_ BitVec 64))) (size!20407 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41752)

(declare-fun b!750311 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!418653 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7593 0))(
  ( (MissingZero!7593 (index!32739 (_ BitVec 32))) (Found!7593 (index!32740 (_ BitVec 32))) (Intermediate!7593 (undefined!8405 Bool) (index!32741 (_ BitVec 32)) (x!63696 (_ BitVec 32))) (Undefined!7593) (MissingVacant!7593 (index!32742 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41752 (_ BitVec 32)) SeekEntryResult!7593)

(assert (=> b!750311 (= e!418653 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19986 a!3186) j!159) a!3186 mask!3328) (Found!7593 j!159)))))

(declare-fun b!750312 () Bool)

(declare-fun res!506508 () Bool)

(declare-fun e!418643 () Bool)

(assert (=> b!750312 (=> (not res!506508) (not e!418643))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!750312 (= res!506508 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19986 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!750313 () Bool)

(declare-fun res!506518 () Bool)

(declare-fun e!418650 () Bool)

(assert (=> b!750313 (=> (not res!506518) (not e!418650))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!750313 (= res!506518 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20407 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20407 a!3186))))))

(declare-fun b!750314 () Bool)

(declare-datatypes ((Unit!25774 0))(
  ( (Unit!25775) )
))
(declare-fun e!418646 () Unit!25774)

(declare-fun Unit!25776 () Unit!25774)

(assert (=> b!750314 (= e!418646 Unit!25776)))

(assert (=> b!750314 false))

(declare-fun b!750315 () Bool)

(declare-fun res!506519 () Bool)

(assert (=> b!750315 (=> (not res!506519) (not e!418650))))

(declare-datatypes ((List!14041 0))(
  ( (Nil!14038) (Cons!14037 (h!15109 (_ BitVec 64)) (t!20364 List!14041)) )
))
(declare-fun arrayNoDuplicates!0 (array!41752 (_ BitVec 32) List!14041) Bool)

(assert (=> b!750315 (= res!506519 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14038))))

(declare-fun b!750316 () Bool)

(declare-fun res!506515 () Bool)

(declare-fun e!418649 () Bool)

(assert (=> b!750316 (=> (not res!506515) (not e!418649))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41752 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!750316 (= res!506515 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun lt!333649 () (_ BitVec 64))

(declare-fun lt!333648 () array!41752)

(declare-fun e!418647 () Bool)

(declare-fun b!750317 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41752 (_ BitVec 32)) SeekEntryResult!7593)

(assert (=> b!750317 (= e!418647 (= (seekEntryOrOpen!0 lt!333649 lt!333648 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333649 lt!333648 mask!3328)))))

(declare-fun lt!333647 () SeekEntryResult!7593)

(declare-fun e!418651 () Bool)

(declare-fun b!750318 () Bool)

(assert (=> b!750318 (= e!418651 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19986 a!3186) j!159) a!3186 mask!3328) lt!333647))))

(declare-fun lt!333653 () SeekEntryResult!7593)

(declare-fun b!750319 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41752 (_ BitVec 32)) SeekEntryResult!7593)

(assert (=> b!750319 (= e!418653 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19986 a!3186) j!159) a!3186 mask!3328) lt!333653))))

(declare-fun b!750320 () Bool)

(declare-fun res!506514 () Bool)

(assert (=> b!750320 (=> (not res!506514) (not e!418649))))

(assert (=> b!750320 (= res!506514 (and (= (size!20407 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20407 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20407 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!750321 () Bool)

(declare-fun e!418652 () Bool)

(assert (=> b!750321 (= e!418643 e!418652)))

(declare-fun res!506506 () Bool)

(assert (=> b!750321 (=> (not res!506506) (not e!418652))))

(declare-fun lt!333652 () SeekEntryResult!7593)

(declare-fun lt!333644 () SeekEntryResult!7593)

(assert (=> b!750321 (= res!506506 (= lt!333652 lt!333644))))

(assert (=> b!750321 (= lt!333644 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333649 lt!333648 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!750321 (= lt!333652 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333649 mask!3328) lt!333649 lt!333648 mask!3328))))

(assert (=> b!750321 (= lt!333649 (select (store (arr!19986 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!750321 (= lt!333648 (array!41753 (store (arr!19986 a!3186) i!1173 k!2102) (size!20407 a!3186)))))

(declare-fun b!750322 () Bool)

(declare-fun res!506511 () Bool)

(assert (=> b!750322 (=> (not res!506511) (not e!418649))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!750322 (= res!506511 (validKeyInArray!0 (select (arr!19986 a!3186) j!159)))))

(declare-fun b!750323 () Bool)

(declare-fun Unit!25777 () Unit!25774)

(assert (=> b!750323 (= e!418646 Unit!25777)))

(declare-fun b!750324 () Bool)

(declare-fun res!506507 () Bool)

(assert (=> b!750324 (=> (not res!506507) (not e!418643))))

(assert (=> b!750324 (= res!506507 e!418653)))

(declare-fun c!82284 () Bool)

(assert (=> b!750324 (= c!82284 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!750326 () Bool)

(declare-fun res!506520 () Bool)

(declare-fun e!418645 () Bool)

(assert (=> b!750326 (=> res!506520 e!418645)))

(assert (=> b!750326 (= res!506520 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19986 a!3186) j!159) a!3186 mask!3328) lt!333647)))))

(declare-fun b!750327 () Bool)

(declare-fun e!418644 () Bool)

(assert (=> b!750327 (= e!418644 true)))

(assert (=> b!750327 e!418647))

(declare-fun res!506516 () Bool)

(assert (=> b!750327 (=> (not res!506516) (not e!418647))))

(declare-fun lt!333650 () (_ BitVec 64))

(assert (=> b!750327 (= res!506516 (= lt!333650 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!333643 () Unit!25774)

(assert (=> b!750327 (= lt!333643 e!418646)))

(declare-fun c!82283 () Bool)

(assert (=> b!750327 (= c!82283 (= lt!333650 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!750328 () Bool)

(assert (=> b!750328 (= e!418645 e!418644)))

(declare-fun res!506509 () Bool)

(assert (=> b!750328 (=> res!506509 e!418644)))

(assert (=> b!750328 (= res!506509 (= lt!333650 lt!333649))))

(assert (=> b!750328 (= lt!333650 (select (store (arr!19986 a!3186) i!1173 k!2102) index!1321))))

(declare-fun res!506522 () Bool)

(assert (=> start!65626 (=> (not res!506522) (not e!418649))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65626 (= res!506522 (validMask!0 mask!3328))))

(assert (=> start!65626 e!418649))

(assert (=> start!65626 true))

(declare-fun array_inv!15760 (array!41752) Bool)

(assert (=> start!65626 (array_inv!15760 a!3186)))

(declare-fun b!750325 () Bool)

(declare-fun res!506510 () Bool)

(assert (=> b!750325 (=> (not res!506510) (not e!418649))))

(assert (=> b!750325 (= res!506510 (validKeyInArray!0 k!2102))))

(declare-fun b!750329 () Bool)

(declare-fun res!506523 () Bool)

(assert (=> b!750329 (=> (not res!506523) (not e!418650))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41752 (_ BitVec 32)) Bool)

(assert (=> b!750329 (= res!506523 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!750330 () Bool)

(assert (=> b!750330 (= e!418649 e!418650)))

(declare-fun res!506513 () Bool)

(assert (=> b!750330 (=> (not res!506513) (not e!418650))))

(declare-fun lt!333651 () SeekEntryResult!7593)

(assert (=> b!750330 (= res!506513 (or (= lt!333651 (MissingZero!7593 i!1173)) (= lt!333651 (MissingVacant!7593 i!1173))))))

(assert (=> b!750330 (= lt!333651 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!750331 () Bool)

(assert (=> b!750331 (= e!418652 (not e!418645))))

(declare-fun res!506517 () Bool)

(assert (=> b!750331 (=> res!506517 e!418645)))

(assert (=> b!750331 (= res!506517 (or (not (is-Intermediate!7593 lt!333644)) (bvslt x!1131 (x!63696 lt!333644)) (not (= x!1131 (x!63696 lt!333644))) (not (= index!1321 (index!32741 lt!333644)))))))

(assert (=> b!750331 e!418651))

(declare-fun res!506512 () Bool)

(assert (=> b!750331 (=> (not res!506512) (not e!418651))))

(declare-fun lt!333646 () SeekEntryResult!7593)

(assert (=> b!750331 (= res!506512 (= lt!333646 lt!333647))))

(assert (=> b!750331 (= lt!333647 (Found!7593 j!159))))

(assert (=> b!750331 (= lt!333646 (seekEntryOrOpen!0 (select (arr!19986 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!750331 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!333645 () Unit!25774)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41752 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25774)

(assert (=> b!750331 (= lt!333645 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!750332 () Bool)

(assert (=> b!750332 (= e!418650 e!418643)))

(declare-fun res!506521 () Bool)

(assert (=> b!750332 (=> (not res!506521) (not e!418643))))

(assert (=> b!750332 (= res!506521 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19986 a!3186) j!159) mask!3328) (select (arr!19986 a!3186) j!159) a!3186 mask!3328) lt!333653))))

(assert (=> b!750332 (= lt!333653 (Intermediate!7593 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!65626 res!506522) b!750320))

(assert (= (and b!750320 res!506514) b!750322))

(assert (= (and b!750322 res!506511) b!750325))

(assert (= (and b!750325 res!506510) b!750316))

(assert (= (and b!750316 res!506515) b!750330))

(assert (= (and b!750330 res!506513) b!750329))

(assert (= (and b!750329 res!506523) b!750315))

(assert (= (and b!750315 res!506519) b!750313))

(assert (= (and b!750313 res!506518) b!750332))

(assert (= (and b!750332 res!506521) b!750312))

(assert (= (and b!750312 res!506508) b!750324))

(assert (= (and b!750324 c!82284) b!750319))

(assert (= (and b!750324 (not c!82284)) b!750311))

(assert (= (and b!750324 res!506507) b!750321))

(assert (= (and b!750321 res!506506) b!750331))

(assert (= (and b!750331 res!506512) b!750318))

(assert (= (and b!750331 (not res!506517)) b!750326))

(assert (= (and b!750326 (not res!506520)) b!750328))

(assert (= (and b!750328 (not res!506509)) b!750327))

(assert (= (and b!750327 c!82283) b!750314))

(assert (= (and b!750327 (not c!82283)) b!750323))

(assert (= (and b!750327 res!506516) b!750317))

(declare-fun m!699805 () Bool)

(assert (=> b!750329 m!699805))

(declare-fun m!699807 () Bool)

(assert (=> b!750312 m!699807))

(declare-fun m!699809 () Bool)

(assert (=> b!750318 m!699809))

(assert (=> b!750318 m!699809))

(declare-fun m!699811 () Bool)

(assert (=> b!750318 m!699811))

(assert (=> b!750331 m!699809))

(assert (=> b!750331 m!699809))

(declare-fun m!699813 () Bool)

(assert (=> b!750331 m!699813))

(declare-fun m!699815 () Bool)

(assert (=> b!750331 m!699815))

(declare-fun m!699817 () Bool)

(assert (=> b!750331 m!699817))

(declare-fun m!699819 () Bool)

(assert (=> start!65626 m!699819))

(declare-fun m!699821 () Bool)

(assert (=> start!65626 m!699821))

(assert (=> b!750322 m!699809))

(assert (=> b!750322 m!699809))

(declare-fun m!699823 () Bool)

(assert (=> b!750322 m!699823))

(declare-fun m!699825 () Bool)

(assert (=> b!750317 m!699825))

(declare-fun m!699827 () Bool)

(assert (=> b!750317 m!699827))

(assert (=> b!750332 m!699809))

(assert (=> b!750332 m!699809))

(declare-fun m!699829 () Bool)

(assert (=> b!750332 m!699829))

(assert (=> b!750332 m!699829))

(assert (=> b!750332 m!699809))

(declare-fun m!699831 () Bool)

(assert (=> b!750332 m!699831))

(declare-fun m!699833 () Bool)

(assert (=> b!750325 m!699833))

(assert (=> b!750319 m!699809))

(assert (=> b!750319 m!699809))

(declare-fun m!699835 () Bool)

(assert (=> b!750319 m!699835))

(declare-fun m!699837 () Bool)

(assert (=> b!750330 m!699837))

(declare-fun m!699839 () Bool)

(assert (=> b!750315 m!699839))

(declare-fun m!699841 () Bool)

(assert (=> b!750321 m!699841))

(declare-fun m!699843 () Bool)

(assert (=> b!750321 m!699843))

(declare-fun m!699845 () Bool)

(assert (=> b!750321 m!699845))

(declare-fun m!699847 () Bool)

(assert (=> b!750321 m!699847))

(assert (=> b!750321 m!699843))

(declare-fun m!699849 () Bool)

(assert (=> b!750321 m!699849))

(assert (=> b!750328 m!699841))

(declare-fun m!699851 () Bool)

(assert (=> b!750328 m!699851))

(declare-fun m!699853 () Bool)

(assert (=> b!750316 m!699853))

(assert (=> b!750326 m!699809))

(assert (=> b!750326 m!699809))

(declare-fun m!699855 () Bool)

(assert (=> b!750326 m!699855))

(assert (=> b!750311 m!699809))

(assert (=> b!750311 m!699809))

(assert (=> b!750311 m!699855))

(push 1)

