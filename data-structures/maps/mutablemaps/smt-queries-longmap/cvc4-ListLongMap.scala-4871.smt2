; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67160 () Bool)

(assert start!67160)

(declare-fun b!775723 () Bool)

(declare-fun res!524764 () Bool)

(declare-fun e!431723 () Bool)

(assert (=> b!775723 (=> (not res!524764) (not e!431723))))

(declare-datatypes ((array!42470 0))(
  ( (array!42471 (arr!20327 (Array (_ BitVec 32) (_ BitVec 64))) (size!20748 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42470)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42470 (_ BitVec 32)) Bool)

(assert (=> b!775723 (= res!524764 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!775724 () Bool)

(declare-fun e!431728 () Bool)

(declare-fun e!431730 () Bool)

(assert (=> b!775724 (= e!431728 (not e!431730))))

(declare-fun res!524767 () Bool)

(assert (=> b!775724 (=> res!524767 e!431730)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7934 0))(
  ( (MissingZero!7934 (index!34103 (_ BitVec 32))) (Found!7934 (index!34104 (_ BitVec 32))) (Intermediate!7934 (undefined!8746 Bool) (index!34105 (_ BitVec 32)) (x!65070 (_ BitVec 32))) (Undefined!7934) (MissingVacant!7934 (index!34106 (_ BitVec 32))) )
))
(declare-fun lt!345594 () SeekEntryResult!7934)

(assert (=> b!775724 (= res!524767 (or (not (is-Intermediate!7934 lt!345594)) (bvslt x!1131 (x!65070 lt!345594)) (not (= x!1131 (x!65070 lt!345594))) (not (= index!1321 (index!34105 lt!345594)))))))

(declare-fun e!431727 () Bool)

(assert (=> b!775724 e!431727))

(declare-fun res!524765 () Bool)

(assert (=> b!775724 (=> (not res!524765) (not e!431727))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!775724 (= res!524765 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26762 0))(
  ( (Unit!26763) )
))
(declare-fun lt!345596 () Unit!26762)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42470 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26762)

(assert (=> b!775724 (= lt!345596 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!775725 () Bool)

(declare-fun res!524760 () Bool)

(assert (=> b!775725 (=> (not res!524760) (not e!431723))))

(declare-datatypes ((List!14382 0))(
  ( (Nil!14379) (Cons!14378 (h!15486 (_ BitVec 64)) (t!20705 List!14382)) )
))
(declare-fun arrayNoDuplicates!0 (array!42470 (_ BitVec 32) List!14382) Bool)

(assert (=> b!775725 (= res!524760 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14379))))

(declare-fun b!775726 () Bool)

(declare-fun res!524756 () Bool)

(declare-fun e!431724 () Bool)

(assert (=> b!775726 (=> (not res!524756) (not e!431724))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!775726 (= res!524756 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20327 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!775727 () Bool)

(declare-fun res!524763 () Bool)

(declare-fun e!431731 () Bool)

(assert (=> b!775727 (=> (not res!524763) (not e!431731))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42470 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!775727 (= res!524763 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!524761 () Bool)

(assert (=> start!67160 (=> (not res!524761) (not e!431731))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67160 (= res!524761 (validMask!0 mask!3328))))

(assert (=> start!67160 e!431731))

(assert (=> start!67160 true))

(declare-fun array_inv!16101 (array!42470) Bool)

(assert (=> start!67160 (array_inv!16101 a!3186)))

(declare-fun b!775728 () Bool)

(assert (=> b!775728 (= e!431731 e!431723)))

(declare-fun res!524758 () Bool)

(assert (=> b!775728 (=> (not res!524758) (not e!431723))))

(declare-fun lt!345593 () SeekEntryResult!7934)

(assert (=> b!775728 (= res!524758 (or (= lt!345593 (MissingZero!7934 i!1173)) (= lt!345593 (MissingVacant!7934 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42470 (_ BitVec 32)) SeekEntryResult!7934)

(assert (=> b!775728 (= lt!345593 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun lt!345599 () SeekEntryResult!7934)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!431729 () Bool)

(declare-fun b!775729 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42470 (_ BitVec 32)) SeekEntryResult!7934)

(assert (=> b!775729 (= e!431729 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20327 a!3186) j!159) a!3186 mask!3328) lt!345599))))

(declare-fun b!775730 () Bool)

(assert (=> b!775730 (= e!431724 e!431728)))

(declare-fun res!524755 () Bool)

(assert (=> b!775730 (=> (not res!524755) (not e!431728))))

(declare-fun lt!345597 () SeekEntryResult!7934)

(assert (=> b!775730 (= res!524755 (= lt!345597 lt!345594))))

(declare-fun lt!345598 () array!42470)

(declare-fun lt!345600 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42470 (_ BitVec 32)) SeekEntryResult!7934)

(assert (=> b!775730 (= lt!345594 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!345600 lt!345598 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!775730 (= lt!345597 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!345600 mask!3328) lt!345600 lt!345598 mask!3328))))

(assert (=> b!775730 (= lt!345600 (select (store (arr!20327 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!775730 (= lt!345598 (array!42471 (store (arr!20327 a!3186) i!1173 k!2102) (size!20748 a!3186)))))

(declare-fun b!775731 () Bool)

(declare-fun res!524766 () Bool)

(assert (=> b!775731 (=> (not res!524766) (not e!431723))))

(assert (=> b!775731 (= res!524766 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20748 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20748 a!3186))))))

(declare-fun b!775732 () Bool)

(assert (=> b!775732 (= e!431727 e!431729)))

(declare-fun res!524770 () Bool)

(assert (=> b!775732 (=> (not res!524770) (not e!431729))))

(assert (=> b!775732 (= res!524770 (= (seekEntryOrOpen!0 (select (arr!20327 a!3186) j!159) a!3186 mask!3328) lt!345599))))

(assert (=> b!775732 (= lt!345599 (Found!7934 j!159))))

(declare-fun b!775733 () Bool)

(declare-fun res!524759 () Bool)

(assert (=> b!775733 (=> (not res!524759) (not e!431724))))

(declare-fun e!431726 () Bool)

(assert (=> b!775733 (= res!524759 e!431726)))

(declare-fun c!85884 () Bool)

(assert (=> b!775733 (= c!85884 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!775734 () Bool)

(assert (=> b!775734 (= e!431730 true)))

(declare-fun lt!345595 () SeekEntryResult!7934)

(assert (=> b!775734 (= lt!345595 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20327 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!775735 () Bool)

(declare-fun lt!345601 () SeekEntryResult!7934)

(assert (=> b!775735 (= e!431726 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20327 a!3186) j!159) a!3186 mask!3328) lt!345601))))

(declare-fun b!775736 () Bool)

(declare-fun res!524769 () Bool)

(assert (=> b!775736 (=> (not res!524769) (not e!431731))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!775736 (= res!524769 (validKeyInArray!0 (select (arr!20327 a!3186) j!159)))))

(declare-fun b!775737 () Bool)

(declare-fun res!524768 () Bool)

(assert (=> b!775737 (=> (not res!524768) (not e!431731))))

(assert (=> b!775737 (= res!524768 (validKeyInArray!0 k!2102))))

(declare-fun b!775738 () Bool)

(assert (=> b!775738 (= e!431726 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20327 a!3186) j!159) a!3186 mask!3328) (Found!7934 j!159)))))

(declare-fun b!775739 () Bool)

(assert (=> b!775739 (= e!431723 e!431724)))

(declare-fun res!524762 () Bool)

(assert (=> b!775739 (=> (not res!524762) (not e!431724))))

(assert (=> b!775739 (= res!524762 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20327 a!3186) j!159) mask!3328) (select (arr!20327 a!3186) j!159) a!3186 mask!3328) lt!345601))))

(assert (=> b!775739 (= lt!345601 (Intermediate!7934 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!775740 () Bool)

(declare-fun res!524757 () Bool)

(assert (=> b!775740 (=> (not res!524757) (not e!431731))))

(assert (=> b!775740 (= res!524757 (and (= (size!20748 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20748 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20748 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!67160 res!524761) b!775740))

(assert (= (and b!775740 res!524757) b!775736))

(assert (= (and b!775736 res!524769) b!775737))

(assert (= (and b!775737 res!524768) b!775727))

(assert (= (and b!775727 res!524763) b!775728))

(assert (= (and b!775728 res!524758) b!775723))

(assert (= (and b!775723 res!524764) b!775725))

(assert (= (and b!775725 res!524760) b!775731))

(assert (= (and b!775731 res!524766) b!775739))

(assert (= (and b!775739 res!524762) b!775726))

(assert (= (and b!775726 res!524756) b!775733))

(assert (= (and b!775733 c!85884) b!775735))

(assert (= (and b!775733 (not c!85884)) b!775738))

(assert (= (and b!775733 res!524759) b!775730))

(assert (= (and b!775730 res!524755) b!775724))

(assert (= (and b!775724 res!524765) b!775732))

(assert (= (and b!775732 res!524770) b!775729))

(assert (= (and b!775724 (not res!524767)) b!775734))

(declare-fun m!719967 () Bool)

(assert (=> b!775724 m!719967))

(declare-fun m!719969 () Bool)

(assert (=> b!775724 m!719969))

(declare-fun m!719971 () Bool)

(assert (=> b!775736 m!719971))

(assert (=> b!775736 m!719971))

(declare-fun m!719973 () Bool)

(assert (=> b!775736 m!719973))

(assert (=> b!775738 m!719971))

(assert (=> b!775738 m!719971))

(declare-fun m!719975 () Bool)

(assert (=> b!775738 m!719975))

(declare-fun m!719977 () Bool)

(assert (=> start!67160 m!719977))

(declare-fun m!719979 () Bool)

(assert (=> start!67160 m!719979))

(assert (=> b!775732 m!719971))

(assert (=> b!775732 m!719971))

(declare-fun m!719981 () Bool)

(assert (=> b!775732 m!719981))

(declare-fun m!719983 () Bool)

(assert (=> b!775723 m!719983))

(declare-fun m!719985 () Bool)

(assert (=> b!775737 m!719985))

(declare-fun m!719987 () Bool)

(assert (=> b!775725 m!719987))

(declare-fun m!719989 () Bool)

(assert (=> b!775726 m!719989))

(declare-fun m!719991 () Bool)

(assert (=> b!775728 m!719991))

(assert (=> b!775739 m!719971))

(assert (=> b!775739 m!719971))

(declare-fun m!719993 () Bool)

(assert (=> b!775739 m!719993))

(assert (=> b!775739 m!719993))

(assert (=> b!775739 m!719971))

(declare-fun m!719995 () Bool)

(assert (=> b!775739 m!719995))

(assert (=> b!775734 m!719971))

(assert (=> b!775734 m!719971))

(assert (=> b!775734 m!719975))

(assert (=> b!775735 m!719971))

(assert (=> b!775735 m!719971))

(declare-fun m!719997 () Bool)

(assert (=> b!775735 m!719997))

(assert (=> b!775729 m!719971))

(assert (=> b!775729 m!719971))

(declare-fun m!719999 () Bool)

(assert (=> b!775729 m!719999))

(declare-fun m!720001 () Bool)

(assert (=> b!775730 m!720001))

(declare-fun m!720003 () Bool)

(assert (=> b!775730 m!720003))

(assert (=> b!775730 m!720001))

(declare-fun m!720005 () Bool)

(assert (=> b!775730 m!720005))

(declare-fun m!720007 () Bool)

(assert (=> b!775730 m!720007))

(declare-fun m!720009 () Bool)

(assert (=> b!775730 m!720009))

(declare-fun m!720011 () Bool)

(assert (=> b!775727 m!720011))

(push 1)

