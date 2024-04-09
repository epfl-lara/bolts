; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65612 () Bool)

(assert start!65612)

(declare-datatypes ((array!41738 0))(
  ( (array!41739 (arr!19979 (Array (_ BitVec 32) (_ BitVec 64))) (size!20400 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41738)

(declare-fun b!749849 () Bool)

(declare-fun e!418412 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7586 0))(
  ( (MissingZero!7586 (index!32711 (_ BitVec 32))) (Found!7586 (index!32712 (_ BitVec 32))) (Intermediate!7586 (undefined!8398 Bool) (index!32713 (_ BitVec 32)) (x!63665 (_ BitVec 32))) (Undefined!7586) (MissingVacant!7586 (index!32714 (_ BitVec 32))) )
))
(declare-fun lt!333420 () SeekEntryResult!7586)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41738 (_ BitVec 32)) SeekEntryResult!7586)

(assert (=> b!749849 (= e!418412 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19979 a!3186) j!159) a!3186 mask!3328) lt!333420))))

(declare-fun b!749850 () Bool)

(declare-fun e!418417 () Bool)

(declare-fun e!418419 () Bool)

(assert (=> b!749850 (= e!418417 e!418419)))

(declare-fun res!506132 () Bool)

(assert (=> b!749850 (=> res!506132 e!418419)))

(declare-fun lt!333412 () (_ BitVec 64))

(declare-fun lt!333413 () (_ BitVec 64))

(assert (=> b!749850 (= res!506132 (= lt!333412 lt!333413))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!749850 (= lt!333412 (select (store (arr!19979 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!749851 () Bool)

(declare-fun res!506141 () Bool)

(declare-fun e!418413 () Bool)

(assert (=> b!749851 (=> (not res!506141) (not e!418413))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!749851 (= res!506141 (validKeyInArray!0 k!2102))))

(declare-fun b!749852 () Bool)

(declare-fun e!418422 () Bool)

(assert (=> b!749852 (= e!418422 (not e!418417))))

(declare-fun res!506133 () Bool)

(assert (=> b!749852 (=> res!506133 e!418417)))

(declare-fun lt!333421 () SeekEntryResult!7586)

(assert (=> b!749852 (= res!506133 (or (not (is-Intermediate!7586 lt!333421)) (bvslt x!1131 (x!63665 lt!333421)) (not (= x!1131 (x!63665 lt!333421))) (not (= index!1321 (index!32713 lt!333421)))))))

(declare-fun e!418415 () Bool)

(assert (=> b!749852 e!418415))

(declare-fun res!506140 () Bool)

(assert (=> b!749852 (=> (not res!506140) (not e!418415))))

(declare-fun lt!333416 () SeekEntryResult!7586)

(declare-fun lt!333415 () SeekEntryResult!7586)

(assert (=> b!749852 (= res!506140 (= lt!333416 lt!333415))))

(assert (=> b!749852 (= lt!333415 (Found!7586 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41738 (_ BitVec 32)) SeekEntryResult!7586)

(assert (=> b!749852 (= lt!333416 (seekEntryOrOpen!0 (select (arr!19979 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41738 (_ BitVec 32)) Bool)

(assert (=> b!749852 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25746 0))(
  ( (Unit!25747) )
))
(declare-fun lt!333414 () Unit!25746)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41738 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25746)

(assert (=> b!749852 (= lt!333414 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!749853 () Bool)

(declare-fun res!506138 () Bool)

(declare-fun e!418416 () Bool)

(assert (=> b!749853 (=> (not res!506138) (not e!418416))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!749853 (= res!506138 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19979 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!749854 () Bool)

(assert (=> b!749854 (= e!418419 true)))

(declare-fun e!418420 () Bool)

(assert (=> b!749854 e!418420))

(declare-fun res!506135 () Bool)

(assert (=> b!749854 (=> (not res!506135) (not e!418420))))

(assert (=> b!749854 (= res!506135 (= lt!333412 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!333422 () Unit!25746)

(declare-fun e!418418 () Unit!25746)

(assert (=> b!749854 (= lt!333422 e!418418)))

(declare-fun c!82241 () Bool)

(assert (=> b!749854 (= c!82241 (= lt!333412 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!749855 () Bool)

(assert (=> b!749855 (= e!418416 e!418422)))

(declare-fun res!506134 () Bool)

(assert (=> b!749855 (=> (not res!506134) (not e!418422))))

(declare-fun lt!333417 () SeekEntryResult!7586)

(assert (=> b!749855 (= res!506134 (= lt!333417 lt!333421))))

(declare-fun lt!333418 () array!41738)

(assert (=> b!749855 (= lt!333421 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333413 lt!333418 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!749855 (= lt!333417 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333413 mask!3328) lt!333413 lt!333418 mask!3328))))

(assert (=> b!749855 (= lt!333413 (select (store (arr!19979 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!749855 (= lt!333418 (array!41739 (store (arr!19979 a!3186) i!1173 k!2102) (size!20400 a!3186)))))

(declare-fun b!749856 () Bool)

(declare-fun res!506129 () Bool)

(assert (=> b!749856 (=> res!506129 e!418417)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41738 (_ BitVec 32)) SeekEntryResult!7586)

(assert (=> b!749856 (= res!506129 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19979 a!3186) j!159) a!3186 mask!3328) lt!333415)))))

(declare-fun b!749858 () Bool)

(declare-fun Unit!25748 () Unit!25746)

(assert (=> b!749858 (= e!418418 Unit!25748)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!749859 () Bool)

(assert (=> b!749859 (= e!418415 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19979 a!3186) j!159) a!3186 mask!3328) lt!333415))))

(declare-fun b!749860 () Bool)

(declare-fun e!418421 () Bool)

(assert (=> b!749860 (= e!418421 e!418416)))

(declare-fun res!506145 () Bool)

(assert (=> b!749860 (=> (not res!506145) (not e!418416))))

(assert (=> b!749860 (= res!506145 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19979 a!3186) j!159) mask!3328) (select (arr!19979 a!3186) j!159) a!3186 mask!3328) lt!333420))))

(assert (=> b!749860 (= lt!333420 (Intermediate!7586 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!749861 () Bool)

(declare-fun res!506136 () Bool)

(assert (=> b!749861 (=> (not res!506136) (not e!418416))))

(assert (=> b!749861 (= res!506136 e!418412)))

(declare-fun c!82242 () Bool)

(assert (=> b!749861 (= c!82242 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!749862 () Bool)

(assert (=> b!749862 (= e!418413 e!418421)))

(declare-fun res!506137 () Bool)

(assert (=> b!749862 (=> (not res!506137) (not e!418421))))

(declare-fun lt!333419 () SeekEntryResult!7586)

(assert (=> b!749862 (= res!506137 (or (= lt!333419 (MissingZero!7586 i!1173)) (= lt!333419 (MissingVacant!7586 i!1173))))))

(assert (=> b!749862 (= lt!333419 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!749863 () Bool)

(declare-fun res!506143 () Bool)

(assert (=> b!749863 (=> (not res!506143) (not e!418421))))

(assert (=> b!749863 (= res!506143 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!749864 () Bool)

(declare-fun res!506131 () Bool)

(assert (=> b!749864 (=> (not res!506131) (not e!418413))))

(assert (=> b!749864 (= res!506131 (and (= (size!20400 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20400 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20400 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!749865 () Bool)

(declare-fun res!506142 () Bool)

(assert (=> b!749865 (=> (not res!506142) (not e!418421))))

(declare-datatypes ((List!14034 0))(
  ( (Nil!14031) (Cons!14030 (h!15102 (_ BitVec 64)) (t!20357 List!14034)) )
))
(declare-fun arrayNoDuplicates!0 (array!41738 (_ BitVec 32) List!14034) Bool)

(assert (=> b!749865 (= res!506142 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14031))))

(declare-fun b!749866 () Bool)

(assert (=> b!749866 (= e!418412 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19979 a!3186) j!159) a!3186 mask!3328) (Found!7586 j!159)))))

(declare-fun b!749867 () Bool)

(declare-fun res!506128 () Bool)

(assert (=> b!749867 (=> (not res!506128) (not e!418413))))

(declare-fun arrayContainsKey!0 (array!41738 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!749867 (= res!506128 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!749868 () Bool)

(declare-fun Unit!25749 () Unit!25746)

(assert (=> b!749868 (= e!418418 Unit!25749)))

(assert (=> b!749868 false))

(declare-fun b!749869 () Bool)

(assert (=> b!749869 (= e!418420 (= (seekEntryOrOpen!0 lt!333413 lt!333418 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333413 lt!333418 mask!3328)))))

(declare-fun b!749870 () Bool)

(declare-fun res!506144 () Bool)

(assert (=> b!749870 (=> (not res!506144) (not e!418421))))

(assert (=> b!749870 (= res!506144 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20400 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20400 a!3186))))))

(declare-fun res!506130 () Bool)

(assert (=> start!65612 (=> (not res!506130) (not e!418413))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65612 (= res!506130 (validMask!0 mask!3328))))

(assert (=> start!65612 e!418413))

(assert (=> start!65612 true))

(declare-fun array_inv!15753 (array!41738) Bool)

(assert (=> start!65612 (array_inv!15753 a!3186)))

(declare-fun b!749857 () Bool)

(declare-fun res!506139 () Bool)

(assert (=> b!749857 (=> (not res!506139) (not e!418413))))

(assert (=> b!749857 (= res!506139 (validKeyInArray!0 (select (arr!19979 a!3186) j!159)))))

(assert (= (and start!65612 res!506130) b!749864))

(assert (= (and b!749864 res!506131) b!749857))

(assert (= (and b!749857 res!506139) b!749851))

(assert (= (and b!749851 res!506141) b!749867))

(assert (= (and b!749867 res!506128) b!749862))

(assert (= (and b!749862 res!506137) b!749863))

(assert (= (and b!749863 res!506143) b!749865))

(assert (= (and b!749865 res!506142) b!749870))

(assert (= (and b!749870 res!506144) b!749860))

(assert (= (and b!749860 res!506145) b!749853))

(assert (= (and b!749853 res!506138) b!749861))

(assert (= (and b!749861 c!82242) b!749849))

(assert (= (and b!749861 (not c!82242)) b!749866))

(assert (= (and b!749861 res!506136) b!749855))

(assert (= (and b!749855 res!506134) b!749852))

(assert (= (and b!749852 res!506140) b!749859))

(assert (= (and b!749852 (not res!506133)) b!749856))

(assert (= (and b!749856 (not res!506129)) b!749850))

(assert (= (and b!749850 (not res!506132)) b!749854))

(assert (= (and b!749854 c!82241) b!749868))

(assert (= (and b!749854 (not c!82241)) b!749858))

(assert (= (and b!749854 res!506135) b!749869))

(declare-fun m!699441 () Bool)

(assert (=> b!749867 m!699441))

(declare-fun m!699443 () Bool)

(assert (=> b!749856 m!699443))

(assert (=> b!749856 m!699443))

(declare-fun m!699445 () Bool)

(assert (=> b!749856 m!699445))

(declare-fun m!699447 () Bool)

(assert (=> b!749862 m!699447))

(declare-fun m!699449 () Bool)

(assert (=> b!749851 m!699449))

(declare-fun m!699451 () Bool)

(assert (=> b!749855 m!699451))

(declare-fun m!699453 () Bool)

(assert (=> b!749855 m!699453))

(declare-fun m!699455 () Bool)

(assert (=> b!749855 m!699455))

(declare-fun m!699457 () Bool)

(assert (=> b!749855 m!699457))

(assert (=> b!749855 m!699453))

(declare-fun m!699459 () Bool)

(assert (=> b!749855 m!699459))

(declare-fun m!699461 () Bool)

(assert (=> start!65612 m!699461))

(declare-fun m!699463 () Bool)

(assert (=> start!65612 m!699463))

(assert (=> b!749849 m!699443))

(assert (=> b!749849 m!699443))

(declare-fun m!699465 () Bool)

(assert (=> b!749849 m!699465))

(assert (=> b!749859 m!699443))

(assert (=> b!749859 m!699443))

(declare-fun m!699467 () Bool)

(assert (=> b!749859 m!699467))

(assert (=> b!749852 m!699443))

(assert (=> b!749852 m!699443))

(declare-fun m!699469 () Bool)

(assert (=> b!749852 m!699469))

(declare-fun m!699471 () Bool)

(assert (=> b!749852 m!699471))

(declare-fun m!699473 () Bool)

(assert (=> b!749852 m!699473))

(declare-fun m!699475 () Bool)

(assert (=> b!749853 m!699475))

(assert (=> b!749850 m!699457))

(declare-fun m!699477 () Bool)

(assert (=> b!749850 m!699477))

(assert (=> b!749866 m!699443))

(assert (=> b!749866 m!699443))

(assert (=> b!749866 m!699445))

(assert (=> b!749857 m!699443))

(assert (=> b!749857 m!699443))

(declare-fun m!699479 () Bool)

(assert (=> b!749857 m!699479))

(declare-fun m!699481 () Bool)

(assert (=> b!749863 m!699481))

(declare-fun m!699483 () Bool)

(assert (=> b!749865 m!699483))

(declare-fun m!699485 () Bool)

(assert (=> b!749869 m!699485))

(declare-fun m!699487 () Bool)

(assert (=> b!749869 m!699487))

(assert (=> b!749860 m!699443))

(assert (=> b!749860 m!699443))

(declare-fun m!699489 () Bool)

(assert (=> b!749860 m!699489))

(assert (=> b!749860 m!699489))

(assert (=> b!749860 m!699443))

(declare-fun m!699491 () Bool)

(assert (=> b!749860 m!699491))

(push 1)

