; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67744 () Bool)

(assert start!67744)

(declare-fun b!785657 () Bool)

(declare-fun res!531998 () Bool)

(declare-fun e!436798 () Bool)

(assert (=> b!785657 (=> (not res!531998) (not e!436798))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!350360 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!42739 0))(
  ( (array!42740 (arr!20454 (Array (_ BitVec 32) (_ BitVec 64))) (size!20875 (_ BitVec 32))) )
))
(declare-fun lt!350354 () array!42739)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8061 0))(
  ( (MissingZero!8061 (index!34611 (_ BitVec 32))) (Found!8061 (index!34612 (_ BitVec 32))) (Intermediate!8061 (undefined!8873 Bool) (index!34613 (_ BitVec 32)) (x!65586 (_ BitVec 32))) (Undefined!8061) (MissingVacant!8061 (index!34614 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42739 (_ BitVec 32)) SeekEntryResult!8061)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42739 (_ BitVec 32)) SeekEntryResult!8061)

(assert (=> b!785657 (= res!531998 (= (seekEntryOrOpen!0 lt!350360 lt!350354 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350360 lt!350354 mask!3328)))))

(declare-fun b!785658 () Bool)

(declare-fun e!436787 () Bool)

(declare-fun e!436790 () Bool)

(assert (=> b!785658 (= e!436787 e!436790)))

(declare-fun res!531984 () Bool)

(assert (=> b!785658 (=> (not res!531984) (not e!436790))))

(declare-fun a!3186 () array!42739)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!350356 () SeekEntryResult!8061)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42739 (_ BitVec 32)) SeekEntryResult!8061)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!785658 (= res!531984 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20454 a!3186) j!159) mask!3328) (select (arr!20454 a!3186) j!159) a!3186 mask!3328) lt!350356))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!785658 (= lt!350356 (Intermediate!8061 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!785659 () Bool)

(declare-fun e!436796 () Bool)

(assert (=> b!785659 (= e!436790 e!436796)))

(declare-fun res!531993 () Bool)

(assert (=> b!785659 (=> (not res!531993) (not e!436796))))

(declare-fun lt!350364 () SeekEntryResult!8061)

(declare-fun lt!350358 () SeekEntryResult!8061)

(assert (=> b!785659 (= res!531993 (= lt!350364 lt!350358))))

(assert (=> b!785659 (= lt!350358 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350360 lt!350354 mask!3328))))

(assert (=> b!785659 (= lt!350364 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350360 mask!3328) lt!350360 lt!350354 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!785659 (= lt!350360 (select (store (arr!20454 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!785659 (= lt!350354 (array!42740 (store (arr!20454 a!3186) i!1173 k!2102) (size!20875 a!3186)))))

(declare-fun b!785660 () Bool)

(declare-fun res!531989 () Bool)

(declare-fun e!436791 () Bool)

(assert (=> b!785660 (=> (not res!531989) (not e!436791))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!785660 (= res!531989 (validKeyInArray!0 k!2102))))

(declare-fun b!785661 () Bool)

(declare-fun res!531999 () Bool)

(assert (=> b!785661 (=> (not res!531999) (not e!436791))))

(assert (=> b!785661 (= res!531999 (validKeyInArray!0 (select (arr!20454 a!3186) j!159)))))

(declare-fun res!531994 () Bool)

(assert (=> start!67744 (=> (not res!531994) (not e!436791))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67744 (= res!531994 (validMask!0 mask!3328))))

(assert (=> start!67744 e!436791))

(assert (=> start!67744 true))

(declare-fun array_inv!16228 (array!42739) Bool)

(assert (=> start!67744 (array_inv!16228 a!3186)))

(declare-fun b!785662 () Bool)

(declare-fun res!531997 () Bool)

(assert (=> b!785662 (=> (not res!531997) (not e!436790))))

(declare-fun e!436795 () Bool)

(assert (=> b!785662 (= res!531997 e!436795)))

(declare-fun c!87246 () Bool)

(assert (=> b!785662 (= c!87246 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!785663 () Bool)

(declare-datatypes ((Unit!27154 0))(
  ( (Unit!27155) )
))
(declare-fun e!436797 () Unit!27154)

(declare-fun Unit!27156 () Unit!27154)

(assert (=> b!785663 (= e!436797 Unit!27156)))

(assert (=> b!785663 false))

(declare-fun lt!350361 () SeekEntryResult!8061)

(declare-fun e!436792 () Bool)

(declare-fun b!785664 () Bool)

(assert (=> b!785664 (= e!436792 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20454 a!3186) j!159) a!3186 mask!3328) lt!350361))))

(declare-fun b!785665 () Bool)

(declare-fun lt!350357 () SeekEntryResult!8061)

(declare-fun lt!350365 () SeekEntryResult!8061)

(assert (=> b!785665 (= e!436798 (= lt!350357 lt!350365))))

(declare-fun b!785666 () Bool)

(declare-fun e!436793 () Bool)

(assert (=> b!785666 (= e!436796 (not e!436793))))

(declare-fun res!531985 () Bool)

(assert (=> b!785666 (=> res!531985 e!436793)))

(assert (=> b!785666 (= res!531985 (or (not (is-Intermediate!8061 lt!350358)) (bvslt x!1131 (x!65586 lt!350358)) (not (= x!1131 (x!65586 lt!350358))) (not (= index!1321 (index!34613 lt!350358)))))))

(assert (=> b!785666 e!436792))

(declare-fun res!531988 () Bool)

(assert (=> b!785666 (=> (not res!531988) (not e!436792))))

(assert (=> b!785666 (= res!531988 (= lt!350357 lt!350361))))

(assert (=> b!785666 (= lt!350361 (Found!8061 j!159))))

(assert (=> b!785666 (= lt!350357 (seekEntryOrOpen!0 (select (arr!20454 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42739 (_ BitVec 32)) Bool)

(assert (=> b!785666 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!350359 () Unit!27154)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42739 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27154)

(assert (=> b!785666 (= lt!350359 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!785667 () Bool)

(declare-fun e!436789 () Bool)

(declare-fun e!436788 () Bool)

(assert (=> b!785667 (= e!436789 e!436788)))

(declare-fun res!531995 () Bool)

(assert (=> b!785667 (=> res!531995 e!436788)))

(declare-fun lt!350362 () (_ BitVec 64))

(assert (=> b!785667 (= res!531995 (= lt!350362 lt!350360))))

(assert (=> b!785667 (= lt!350362 (select (store (arr!20454 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!785668 () Bool)

(declare-fun res!531982 () Bool)

(assert (=> b!785668 (=> (not res!531982) (not e!436787))))

(declare-datatypes ((List!14509 0))(
  ( (Nil!14506) (Cons!14505 (h!15628 (_ BitVec 64)) (t!20832 List!14509)) )
))
(declare-fun arrayNoDuplicates!0 (array!42739 (_ BitVec 32) List!14509) Bool)

(assert (=> b!785668 (= res!531982 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14506))))

(declare-fun b!785669 () Bool)

(declare-fun res!531991 () Bool)

(assert (=> b!785669 (=> (not res!531991) (not e!436787))))

(assert (=> b!785669 (= res!531991 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!785670 () Bool)

(assert (=> b!785670 (= e!436793 e!436789)))

(declare-fun res!531987 () Bool)

(assert (=> b!785670 (=> res!531987 e!436789)))

(assert (=> b!785670 (= res!531987 (not (= lt!350365 lt!350361)))))

(assert (=> b!785670 (= lt!350365 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20454 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!785671 () Bool)

(declare-fun res!531996 () Bool)

(assert (=> b!785671 (=> (not res!531996) (not e!436791))))

(assert (=> b!785671 (= res!531996 (and (= (size!20875 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20875 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20875 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!785672 () Bool)

(assert (=> b!785672 (= e!436795 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20454 a!3186) j!159) a!3186 mask!3328) lt!350356))))

(declare-fun b!785673 () Bool)

(assert (=> b!785673 (= e!436795 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20454 a!3186) j!159) a!3186 mask!3328) (Found!8061 j!159)))))

(declare-fun b!785674 () Bool)

(declare-fun res!532000 () Bool)

(assert (=> b!785674 (=> (not res!532000) (not e!436790))))

(assert (=> b!785674 (= res!532000 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20454 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!785675 () Bool)

(declare-fun Unit!27157 () Unit!27154)

(assert (=> b!785675 (= e!436797 Unit!27157)))

(declare-fun b!785676 () Bool)

(declare-fun res!531992 () Bool)

(assert (=> b!785676 (=> (not res!531992) (not e!436791))))

(declare-fun arrayContainsKey!0 (array!42739 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!785676 (= res!531992 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!785677 () Bool)

(declare-fun res!531983 () Bool)

(assert (=> b!785677 (=> (not res!531983) (not e!436787))))

(assert (=> b!785677 (= res!531983 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20875 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20875 a!3186))))))

(declare-fun b!785678 () Bool)

(assert (=> b!785678 (= e!436791 e!436787)))

(declare-fun res!531986 () Bool)

(assert (=> b!785678 (=> (not res!531986) (not e!436787))))

(declare-fun lt!350363 () SeekEntryResult!8061)

(assert (=> b!785678 (= res!531986 (or (= lt!350363 (MissingZero!8061 i!1173)) (= lt!350363 (MissingVacant!8061 i!1173))))))

(assert (=> b!785678 (= lt!350363 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!785679 () Bool)

(assert (=> b!785679 (= e!436788 true)))

(assert (=> b!785679 e!436798))

(declare-fun res!531990 () Bool)

(assert (=> b!785679 (=> (not res!531990) (not e!436798))))

(assert (=> b!785679 (= res!531990 (= lt!350362 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!350355 () Unit!27154)

(assert (=> b!785679 (= lt!350355 e!436797)))

(declare-fun c!87245 () Bool)

(assert (=> b!785679 (= c!87245 (= lt!350362 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!67744 res!531994) b!785671))

(assert (= (and b!785671 res!531996) b!785661))

(assert (= (and b!785661 res!531999) b!785660))

(assert (= (and b!785660 res!531989) b!785676))

(assert (= (and b!785676 res!531992) b!785678))

(assert (= (and b!785678 res!531986) b!785669))

(assert (= (and b!785669 res!531991) b!785668))

(assert (= (and b!785668 res!531982) b!785677))

(assert (= (and b!785677 res!531983) b!785658))

(assert (= (and b!785658 res!531984) b!785674))

(assert (= (and b!785674 res!532000) b!785662))

(assert (= (and b!785662 c!87246) b!785672))

(assert (= (and b!785662 (not c!87246)) b!785673))

(assert (= (and b!785662 res!531997) b!785659))

(assert (= (and b!785659 res!531993) b!785666))

(assert (= (and b!785666 res!531988) b!785664))

(assert (= (and b!785666 (not res!531985)) b!785670))

(assert (= (and b!785670 (not res!531987)) b!785667))

(assert (= (and b!785667 (not res!531995)) b!785679))

(assert (= (and b!785679 c!87245) b!785663))

(assert (= (and b!785679 (not c!87245)) b!785675))

(assert (= (and b!785679 res!531990) b!785657))

(assert (= (and b!785657 res!531998) b!785665))

(declare-fun m!727717 () Bool)

(assert (=> b!785658 m!727717))

(assert (=> b!785658 m!727717))

(declare-fun m!727719 () Bool)

(assert (=> b!785658 m!727719))

(assert (=> b!785658 m!727719))

(assert (=> b!785658 m!727717))

(declare-fun m!727721 () Bool)

(assert (=> b!785658 m!727721))

(declare-fun m!727723 () Bool)

(assert (=> b!785668 m!727723))

(declare-fun m!727725 () Bool)

(assert (=> b!785667 m!727725))

(declare-fun m!727727 () Bool)

(assert (=> b!785667 m!727727))

(declare-fun m!727729 () Bool)

(assert (=> b!785674 m!727729))

(assert (=> b!785670 m!727717))

(assert (=> b!785670 m!727717))

(declare-fun m!727731 () Bool)

(assert (=> b!785670 m!727731))

(declare-fun m!727733 () Bool)

(assert (=> b!785657 m!727733))

(declare-fun m!727735 () Bool)

(assert (=> b!785657 m!727735))

(declare-fun m!727737 () Bool)

(assert (=> start!67744 m!727737))

(declare-fun m!727739 () Bool)

(assert (=> start!67744 m!727739))

(assert (=> b!785664 m!727717))

(assert (=> b!785664 m!727717))

(declare-fun m!727741 () Bool)

(assert (=> b!785664 m!727741))

(assert (=> b!785672 m!727717))

(assert (=> b!785672 m!727717))

(declare-fun m!727743 () Bool)

(assert (=> b!785672 m!727743))

(declare-fun m!727745 () Bool)

(assert (=> b!785659 m!727745))

(assert (=> b!785659 m!727725))

(declare-fun m!727747 () Bool)

(assert (=> b!785659 m!727747))

(assert (=> b!785659 m!727745))

(declare-fun m!727749 () Bool)

(assert (=> b!785659 m!727749))

(declare-fun m!727751 () Bool)

(assert (=> b!785659 m!727751))

(assert (=> b!785666 m!727717))

(assert (=> b!785666 m!727717))

(declare-fun m!727753 () Bool)

(assert (=> b!785666 m!727753))

(declare-fun m!727755 () Bool)

(assert (=> b!785666 m!727755))

(declare-fun m!727757 () Bool)

(assert (=> b!785666 m!727757))

(assert (=> b!785661 m!727717))

(assert (=> b!785661 m!727717))

(declare-fun m!727759 () Bool)

(assert (=> b!785661 m!727759))

(declare-fun m!727761 () Bool)

(assert (=> b!785678 m!727761))

(declare-fun m!727763 () Bool)

(assert (=> b!785660 m!727763))

(declare-fun m!727765 () Bool)

(assert (=> b!785676 m!727765))

(assert (=> b!785673 m!727717))

(assert (=> b!785673 m!727717))

(assert (=> b!785673 m!727731))

(declare-fun m!727767 () Bool)

(assert (=> b!785669 m!727767))

(push 1)

