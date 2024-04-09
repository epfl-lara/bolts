; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64748 () Bool)

(assert start!64748)

(declare-fun b!730338 () Bool)

(declare-fun res!490767 () Bool)

(declare-fun e!408734 () Bool)

(assert (=> b!730338 (=> (not res!490767) (not e!408734))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!730338 (= res!490767 (validKeyInArray!0 k!2102))))

(declare-fun e!408736 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41150 0))(
  ( (array!41151 (arr!19691 (Array (_ BitVec 32) (_ BitVec 64))) (size!20112 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41150)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7298 0))(
  ( (MissingZero!7298 (index!31559 (_ BitVec 32))) (Found!7298 (index!31560 (_ BitVec 32))) (Intermediate!7298 (undefined!8110 Bool) (index!31561 (_ BitVec 32)) (x!62561 (_ BitVec 32))) (Undefined!7298) (MissingVacant!7298 (index!31562 (_ BitVec 32))) )
))
(declare-fun lt!323642 () SeekEntryResult!7298)

(declare-fun b!730339 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41150 (_ BitVec 32)) SeekEntryResult!7298)

(assert (=> b!730339 (= e!408736 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19691 a!3186) j!159) a!3186 mask!3328) lt!323642))))

(declare-fun b!730340 () Bool)

(declare-fun res!490778 () Bool)

(assert (=> b!730340 (=> (not res!490778) (not e!408734))))

(assert (=> b!730340 (= res!490778 (validKeyInArray!0 (select (arr!19691 a!3186) j!159)))))

(declare-fun b!730341 () Bool)

(declare-fun res!490771 () Bool)

(declare-fun e!408731 () Bool)

(assert (=> b!730341 (=> (not res!490771) (not e!408731))))

(declare-datatypes ((List!13746 0))(
  ( (Nil!13743) (Cons!13742 (h!14802 (_ BitVec 64)) (t!20069 List!13746)) )
))
(declare-fun arrayNoDuplicates!0 (array!41150 (_ BitVec 32) List!13746) Bool)

(assert (=> b!730341 (= res!490771 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13743))))

(declare-fun res!490777 () Bool)

(assert (=> start!64748 (=> (not res!490777) (not e!408734))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64748 (= res!490777 (validMask!0 mask!3328))))

(assert (=> start!64748 e!408734))

(assert (=> start!64748 true))

(declare-fun array_inv!15465 (array!41150) Bool)

(assert (=> start!64748 (array_inv!15465 a!3186)))

(declare-fun b!730342 () Bool)

(declare-fun e!408737 () Bool)

(assert (=> b!730342 (= e!408731 e!408737)))

(declare-fun res!490768 () Bool)

(assert (=> b!730342 (=> (not res!490768) (not e!408737))))

(declare-fun lt!323643 () SeekEntryResult!7298)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41150 (_ BitVec 32)) SeekEntryResult!7298)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730342 (= res!490768 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19691 a!3186) j!159) mask!3328) (select (arr!19691 a!3186) j!159) a!3186 mask!3328) lt!323643))))

(assert (=> b!730342 (= lt!323643 (Intermediate!7298 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!730343 () Bool)

(declare-fun res!490782 () Bool)

(assert (=> b!730343 (=> (not res!490782) (not e!408737))))

(declare-fun e!408732 () Bool)

(assert (=> b!730343 (= res!490782 e!408732)))

(declare-fun c!80160 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!730343 (= c!80160 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!730344 () Bool)

(declare-fun e!408733 () Bool)

(assert (=> b!730344 (= e!408737 e!408733)))

(declare-fun res!490776 () Bool)

(assert (=> b!730344 (=> (not res!490776) (not e!408733))))

(declare-fun lt!323644 () SeekEntryResult!7298)

(declare-fun lt!323637 () SeekEntryResult!7298)

(assert (=> b!730344 (= res!490776 (= lt!323644 lt!323637))))

(declare-fun lt!323638 () array!41150)

(declare-fun lt!323645 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!730344 (= lt!323637 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323645 lt!323638 mask!3328))))

(assert (=> b!730344 (= lt!323644 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323645 mask!3328) lt!323645 lt!323638 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!730344 (= lt!323645 (select (store (arr!19691 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!730344 (= lt!323638 (array!41151 (store (arr!19691 a!3186) i!1173 k!2102) (size!20112 a!3186)))))

(declare-fun b!730345 () Bool)

(declare-fun e!408735 () Bool)

(assert (=> b!730345 (= e!408733 (not e!408735))))

(declare-fun res!490775 () Bool)

(assert (=> b!730345 (=> res!490775 e!408735)))

(assert (=> b!730345 (= res!490775 (or (not (is-Intermediate!7298 lt!323637)) (bvsge x!1131 (x!62561 lt!323637))))))

(declare-fun e!408738 () Bool)

(assert (=> b!730345 e!408738))

(declare-fun res!490774 () Bool)

(assert (=> b!730345 (=> (not res!490774) (not e!408738))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41150 (_ BitVec 32)) Bool)

(assert (=> b!730345 (= res!490774 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24914 0))(
  ( (Unit!24915) )
))
(declare-fun lt!323640 () Unit!24914)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41150 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24914)

(assert (=> b!730345 (= lt!323640 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!730346 () Bool)

(declare-fun res!490781 () Bool)

(assert (=> b!730346 (=> (not res!490781) (not e!408737))))

(assert (=> b!730346 (= res!490781 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19691 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!730347 () Bool)

(assert (=> b!730347 (= e!408732 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19691 a!3186) j!159) a!3186 mask!3328) (Found!7298 j!159)))))

(declare-fun b!730348 () Bool)

(assert (=> b!730348 (= e!408734 e!408731)))

(declare-fun res!490779 () Bool)

(assert (=> b!730348 (=> (not res!490779) (not e!408731))))

(declare-fun lt!323641 () SeekEntryResult!7298)

(assert (=> b!730348 (= res!490779 (or (= lt!323641 (MissingZero!7298 i!1173)) (= lt!323641 (MissingVacant!7298 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41150 (_ BitVec 32)) SeekEntryResult!7298)

(assert (=> b!730348 (= lt!323641 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!730349 () Bool)

(assert (=> b!730349 (= e!408732 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19691 a!3186) j!159) a!3186 mask!3328) lt!323643))))

(declare-fun b!730350 () Bool)

(declare-fun res!490770 () Bool)

(assert (=> b!730350 (=> (not res!490770) (not e!408731))))

(assert (=> b!730350 (= res!490770 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20112 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20112 a!3186))))))

(declare-fun b!730351 () Bool)

(assert (=> b!730351 (= e!408735 true)))

(declare-fun lt!323639 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730351 (= lt!323639 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!730352 () Bool)

(declare-fun res!490780 () Bool)

(assert (=> b!730352 (=> (not res!490780) (not e!408734))))

(assert (=> b!730352 (= res!490780 (and (= (size!20112 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20112 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20112 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!730353 () Bool)

(assert (=> b!730353 (= e!408738 e!408736)))

(declare-fun res!490773 () Bool)

(assert (=> b!730353 (=> (not res!490773) (not e!408736))))

(assert (=> b!730353 (= res!490773 (= (seekEntryOrOpen!0 (select (arr!19691 a!3186) j!159) a!3186 mask!3328) lt!323642))))

(assert (=> b!730353 (= lt!323642 (Found!7298 j!159))))

(declare-fun b!730354 () Bool)

(declare-fun res!490769 () Bool)

(assert (=> b!730354 (=> (not res!490769) (not e!408731))))

(assert (=> b!730354 (= res!490769 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!730355 () Bool)

(declare-fun res!490772 () Bool)

(assert (=> b!730355 (=> (not res!490772) (not e!408734))))

(declare-fun arrayContainsKey!0 (array!41150 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!730355 (= res!490772 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!64748 res!490777) b!730352))

(assert (= (and b!730352 res!490780) b!730340))

(assert (= (and b!730340 res!490778) b!730338))

(assert (= (and b!730338 res!490767) b!730355))

(assert (= (and b!730355 res!490772) b!730348))

(assert (= (and b!730348 res!490779) b!730354))

(assert (= (and b!730354 res!490769) b!730341))

(assert (= (and b!730341 res!490771) b!730350))

(assert (= (and b!730350 res!490770) b!730342))

(assert (= (and b!730342 res!490768) b!730346))

(assert (= (and b!730346 res!490781) b!730343))

(assert (= (and b!730343 c!80160) b!730349))

(assert (= (and b!730343 (not c!80160)) b!730347))

(assert (= (and b!730343 res!490782) b!730344))

(assert (= (and b!730344 res!490776) b!730345))

(assert (= (and b!730345 res!490774) b!730353))

(assert (= (and b!730353 res!490773) b!730339))

(assert (= (and b!730345 (not res!490775)) b!730351))

(declare-fun m!683965 () Bool)

(assert (=> b!730355 m!683965))

(declare-fun m!683967 () Bool)

(assert (=> b!730347 m!683967))

(assert (=> b!730347 m!683967))

(declare-fun m!683969 () Bool)

(assert (=> b!730347 m!683969))

(declare-fun m!683971 () Bool)

(assert (=> b!730341 m!683971))

(declare-fun m!683973 () Bool)

(assert (=> b!730351 m!683973))

(declare-fun m!683975 () Bool)

(assert (=> start!64748 m!683975))

(declare-fun m!683977 () Bool)

(assert (=> start!64748 m!683977))

(declare-fun m!683979 () Bool)

(assert (=> b!730346 m!683979))

(declare-fun m!683981 () Bool)

(assert (=> b!730345 m!683981))

(declare-fun m!683983 () Bool)

(assert (=> b!730345 m!683983))

(declare-fun m!683985 () Bool)

(assert (=> b!730344 m!683985))

(declare-fun m!683987 () Bool)

(assert (=> b!730344 m!683987))

(declare-fun m!683989 () Bool)

(assert (=> b!730344 m!683989))

(assert (=> b!730344 m!683985))

(declare-fun m!683991 () Bool)

(assert (=> b!730344 m!683991))

(declare-fun m!683993 () Bool)

(assert (=> b!730344 m!683993))

(assert (=> b!730340 m!683967))

(assert (=> b!730340 m!683967))

(declare-fun m!683995 () Bool)

(assert (=> b!730340 m!683995))

(declare-fun m!683997 () Bool)

(assert (=> b!730348 m!683997))

(assert (=> b!730339 m!683967))

(assert (=> b!730339 m!683967))

(declare-fun m!683999 () Bool)

(assert (=> b!730339 m!683999))

(assert (=> b!730353 m!683967))

(assert (=> b!730353 m!683967))

(declare-fun m!684001 () Bool)

(assert (=> b!730353 m!684001))

(assert (=> b!730342 m!683967))

(assert (=> b!730342 m!683967))

(declare-fun m!684003 () Bool)

(assert (=> b!730342 m!684003))

(assert (=> b!730342 m!684003))

(assert (=> b!730342 m!683967))

(declare-fun m!684005 () Bool)

(assert (=> b!730342 m!684005))

(declare-fun m!684007 () Bool)

(assert (=> b!730338 m!684007))

(declare-fun m!684009 () Bool)

(assert (=> b!730354 m!684009))

(assert (=> b!730349 m!683967))

(assert (=> b!730349 m!683967))

(declare-fun m!684011 () Bool)

(assert (=> b!730349 m!684011))

(push 1)

