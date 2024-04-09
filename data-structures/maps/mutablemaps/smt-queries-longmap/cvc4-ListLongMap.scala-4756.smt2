; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65618 () Bool)

(assert start!65618)

(declare-fun b!750047 () Bool)

(declare-fun e!418516 () Bool)

(declare-fun e!418519 () Bool)

(assert (=> b!750047 (= e!418516 e!418519)))

(declare-fun res!506301 () Bool)

(assert (=> b!750047 (=> (not res!506301) (not e!418519))))

(declare-datatypes ((array!41744 0))(
  ( (array!41745 (arr!19982 (Array (_ BitVec 32) (_ BitVec 64))) (size!20403 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41744)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7589 0))(
  ( (MissingZero!7589 (index!32723 (_ BitVec 32))) (Found!7589 (index!32724 (_ BitVec 32))) (Intermediate!7589 (undefined!8401 Bool) (index!32725 (_ BitVec 32)) (x!63676 (_ BitVec 32))) (Undefined!7589) (MissingVacant!7589 (index!32726 (_ BitVec 32))) )
))
(declare-fun lt!333520 () SeekEntryResult!7589)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41744 (_ BitVec 32)) SeekEntryResult!7589)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!750047 (= res!506301 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19982 a!3186) j!159) mask!3328) (select (arr!19982 a!3186) j!159) a!3186 mask!3328) lt!333520))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!750047 (= lt!333520 (Intermediate!7589 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!750048 () Bool)

(declare-fun e!418514 () Bool)

(declare-fun e!418517 () Bool)

(assert (=> b!750048 (= e!418514 (not e!418517))))

(declare-fun res!506294 () Bool)

(assert (=> b!750048 (=> res!506294 e!418517)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!333519 () SeekEntryResult!7589)

(assert (=> b!750048 (= res!506294 (or (not (is-Intermediate!7589 lt!333519)) (bvslt x!1131 (x!63676 lt!333519)) (not (= x!1131 (x!63676 lt!333519))) (not (= index!1321 (index!32725 lt!333519)))))))

(declare-fun e!418521 () Bool)

(assert (=> b!750048 e!418521))

(declare-fun res!506290 () Bool)

(assert (=> b!750048 (=> (not res!506290) (not e!418521))))

(declare-fun lt!333517 () SeekEntryResult!7589)

(declare-fun lt!333521 () SeekEntryResult!7589)

(assert (=> b!750048 (= res!506290 (= lt!333517 lt!333521))))

(assert (=> b!750048 (= lt!333521 (Found!7589 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41744 (_ BitVec 32)) SeekEntryResult!7589)

(assert (=> b!750048 (= lt!333517 (seekEntryOrOpen!0 (select (arr!19982 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41744 (_ BitVec 32)) Bool)

(assert (=> b!750048 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25758 0))(
  ( (Unit!25759) )
))
(declare-fun lt!333514 () Unit!25758)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41744 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25758)

(assert (=> b!750048 (= lt!333514 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!750049 () Bool)

(declare-fun res!506296 () Bool)

(assert (=> b!750049 (=> res!506296 e!418517)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41744 (_ BitVec 32)) SeekEntryResult!7589)

(assert (=> b!750049 (= res!506296 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19982 a!3186) j!159) a!3186 mask!3328) lt!333521)))))

(declare-fun b!750050 () Bool)

(declare-fun res!506300 () Bool)

(declare-fun e!418518 () Bool)

(assert (=> b!750050 (=> (not res!506300) (not e!418518))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41744 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!750050 (= res!506300 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!750051 () Bool)

(declare-fun e!418513 () Unit!25758)

(declare-fun Unit!25760 () Unit!25758)

(assert (=> b!750051 (= e!418513 Unit!25760)))

(declare-fun b!750052 () Bool)

(declare-fun res!506305 () Bool)

(assert (=> b!750052 (=> (not res!506305) (not e!418518))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!750052 (= res!506305 (validKeyInArray!0 (select (arr!19982 a!3186) j!159)))))

(declare-fun b!750053 () Bool)

(declare-fun res!506293 () Bool)

(assert (=> b!750053 (=> (not res!506293) (not e!418516))))

(assert (=> b!750053 (= res!506293 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20403 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20403 a!3186))))))

(declare-fun lt!333518 () (_ BitVec 64))

(declare-fun b!750054 () Bool)

(declare-fun e!418512 () Bool)

(declare-fun lt!333516 () array!41744)

(assert (=> b!750054 (= e!418512 (= (seekEntryOrOpen!0 lt!333518 lt!333516 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333518 lt!333516 mask!3328)))))

(declare-fun b!750055 () Bool)

(declare-fun res!506303 () Bool)

(assert (=> b!750055 (=> (not res!506303) (not e!418518))))

(assert (=> b!750055 (= res!506303 (validKeyInArray!0 k!2102))))

(declare-fun b!750056 () Bool)

(declare-fun res!506306 () Bool)

(assert (=> b!750056 (=> (not res!506306) (not e!418516))))

(assert (=> b!750056 (= res!506306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun e!418520 () Bool)

(declare-fun b!750057 () Bool)

(assert (=> b!750057 (= e!418520 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19982 a!3186) j!159) a!3186 mask!3328) lt!333520))))

(declare-fun b!750058 () Bool)

(assert (=> b!750058 (= e!418521 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19982 a!3186) j!159) a!3186 mask!3328) lt!333521))))

(declare-fun b!750059 () Bool)

(declare-fun res!506295 () Bool)

(assert (=> b!750059 (=> (not res!506295) (not e!418519))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!750059 (= res!506295 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19982 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!750060 () Bool)

(declare-fun e!418515 () Bool)

(assert (=> b!750060 (= e!418517 e!418515)))

(declare-fun res!506291 () Bool)

(assert (=> b!750060 (=> res!506291 e!418515)))

(declare-fun lt!333513 () (_ BitVec 64))

(assert (=> b!750060 (= res!506291 (= lt!333513 lt!333518))))

(assert (=> b!750060 (= lt!333513 (select (store (arr!19982 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!750061 () Bool)

(declare-fun res!506304 () Bool)

(assert (=> b!750061 (=> (not res!506304) (not e!418516))))

(declare-datatypes ((List!14037 0))(
  ( (Nil!14034) (Cons!14033 (h!15105 (_ BitVec 64)) (t!20360 List!14037)) )
))
(declare-fun arrayNoDuplicates!0 (array!41744 (_ BitVec 32) List!14037) Bool)

(assert (=> b!750061 (= res!506304 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14034))))

(declare-fun b!750062 () Bool)

(assert (=> b!750062 (= e!418515 true)))

(assert (=> b!750062 e!418512))

(declare-fun res!506299 () Bool)

(assert (=> b!750062 (=> (not res!506299) (not e!418512))))

(assert (=> b!750062 (= res!506299 (= lt!333513 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!333515 () Unit!25758)

(assert (=> b!750062 (= lt!333515 e!418513)))

(declare-fun c!82260 () Bool)

(assert (=> b!750062 (= c!82260 (= lt!333513 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!750063 () Bool)

(declare-fun res!506302 () Bool)

(assert (=> b!750063 (=> (not res!506302) (not e!418518))))

(assert (=> b!750063 (= res!506302 (and (= (size!20403 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20403 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20403 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!750064 () Bool)

(assert (=> b!750064 (= e!418519 e!418514)))

(declare-fun res!506292 () Bool)

(assert (=> b!750064 (=> (not res!506292) (not e!418514))))

(declare-fun lt!333512 () SeekEntryResult!7589)

(assert (=> b!750064 (= res!506292 (= lt!333512 lt!333519))))

(assert (=> b!750064 (= lt!333519 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333518 lt!333516 mask!3328))))

(assert (=> b!750064 (= lt!333512 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333518 mask!3328) lt!333518 lt!333516 mask!3328))))

(assert (=> b!750064 (= lt!333518 (select (store (arr!19982 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!750064 (= lt!333516 (array!41745 (store (arr!19982 a!3186) i!1173 k!2102) (size!20403 a!3186)))))

(declare-fun res!506298 () Bool)

(assert (=> start!65618 (=> (not res!506298) (not e!418518))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65618 (= res!506298 (validMask!0 mask!3328))))

(assert (=> start!65618 e!418518))

(assert (=> start!65618 true))

(declare-fun array_inv!15756 (array!41744) Bool)

(assert (=> start!65618 (array_inv!15756 a!3186)))

(declare-fun b!750065 () Bool)

(assert (=> b!750065 (= e!418518 e!418516)))

(declare-fun res!506297 () Bool)

(assert (=> b!750065 (=> (not res!506297) (not e!418516))))

(declare-fun lt!333511 () SeekEntryResult!7589)

(assert (=> b!750065 (= res!506297 (or (= lt!333511 (MissingZero!7589 i!1173)) (= lt!333511 (MissingVacant!7589 i!1173))))))

(assert (=> b!750065 (= lt!333511 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!750066 () Bool)

(assert (=> b!750066 (= e!418520 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19982 a!3186) j!159) a!3186 mask!3328) (Found!7589 j!159)))))

(declare-fun b!750067 () Bool)

(declare-fun res!506307 () Bool)

(assert (=> b!750067 (=> (not res!506307) (not e!418519))))

(assert (=> b!750067 (= res!506307 e!418520)))

(declare-fun c!82259 () Bool)

(assert (=> b!750067 (= c!82259 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!750068 () Bool)

(declare-fun Unit!25761 () Unit!25758)

(assert (=> b!750068 (= e!418513 Unit!25761)))

(assert (=> b!750068 false))

(assert (= (and start!65618 res!506298) b!750063))

(assert (= (and b!750063 res!506302) b!750052))

(assert (= (and b!750052 res!506305) b!750055))

(assert (= (and b!750055 res!506303) b!750050))

(assert (= (and b!750050 res!506300) b!750065))

(assert (= (and b!750065 res!506297) b!750056))

(assert (= (and b!750056 res!506306) b!750061))

(assert (= (and b!750061 res!506304) b!750053))

(assert (= (and b!750053 res!506293) b!750047))

(assert (= (and b!750047 res!506301) b!750059))

(assert (= (and b!750059 res!506295) b!750067))

(assert (= (and b!750067 c!82259) b!750057))

(assert (= (and b!750067 (not c!82259)) b!750066))

(assert (= (and b!750067 res!506307) b!750064))

(assert (= (and b!750064 res!506292) b!750048))

(assert (= (and b!750048 res!506290) b!750058))

(assert (= (and b!750048 (not res!506294)) b!750049))

(assert (= (and b!750049 (not res!506296)) b!750060))

(assert (= (and b!750060 (not res!506291)) b!750062))

(assert (= (and b!750062 c!82260) b!750068))

(assert (= (and b!750062 (not c!82260)) b!750051))

(assert (= (and b!750062 res!506299) b!750054))

(declare-fun m!699597 () Bool)

(assert (=> b!750048 m!699597))

(assert (=> b!750048 m!699597))

(declare-fun m!699599 () Bool)

(assert (=> b!750048 m!699599))

(declare-fun m!699601 () Bool)

(assert (=> b!750048 m!699601))

(declare-fun m!699603 () Bool)

(assert (=> b!750048 m!699603))

(declare-fun m!699605 () Bool)

(assert (=> b!750059 m!699605))

(declare-fun m!699607 () Bool)

(assert (=> b!750050 m!699607))

(declare-fun m!699609 () Bool)

(assert (=> b!750061 m!699609))

(assert (=> b!750052 m!699597))

(assert (=> b!750052 m!699597))

(declare-fun m!699611 () Bool)

(assert (=> b!750052 m!699611))

(declare-fun m!699613 () Bool)

(assert (=> b!750055 m!699613))

(assert (=> b!750057 m!699597))

(assert (=> b!750057 m!699597))

(declare-fun m!699615 () Bool)

(assert (=> b!750057 m!699615))

(declare-fun m!699617 () Bool)

(assert (=> start!65618 m!699617))

(declare-fun m!699619 () Bool)

(assert (=> start!65618 m!699619))

(assert (=> b!750049 m!699597))

(assert (=> b!750049 m!699597))

(declare-fun m!699621 () Bool)

(assert (=> b!750049 m!699621))

(declare-fun m!699623 () Bool)

(assert (=> b!750054 m!699623))

(declare-fun m!699625 () Bool)

(assert (=> b!750054 m!699625))

(declare-fun m!699627 () Bool)

(assert (=> b!750056 m!699627))

(assert (=> b!750058 m!699597))

(assert (=> b!750058 m!699597))

(declare-fun m!699629 () Bool)

(assert (=> b!750058 m!699629))

(declare-fun m!699631 () Bool)

(assert (=> b!750065 m!699631))

(assert (=> b!750047 m!699597))

(assert (=> b!750047 m!699597))

(declare-fun m!699633 () Bool)

(assert (=> b!750047 m!699633))

(assert (=> b!750047 m!699633))

(assert (=> b!750047 m!699597))

(declare-fun m!699635 () Bool)

(assert (=> b!750047 m!699635))

(declare-fun m!699637 () Bool)

(assert (=> b!750060 m!699637))

(declare-fun m!699639 () Bool)

(assert (=> b!750060 m!699639))

(declare-fun m!699641 () Bool)

(assert (=> b!750064 m!699641))

(declare-fun m!699643 () Bool)

(assert (=> b!750064 m!699643))

(declare-fun m!699645 () Bool)

(assert (=> b!750064 m!699645))

(assert (=> b!750064 m!699643))

(assert (=> b!750064 m!699637))

(declare-fun m!699647 () Bool)

(assert (=> b!750064 m!699647))

(assert (=> b!750066 m!699597))

(assert (=> b!750066 m!699597))

(assert (=> b!750066 m!699621))

(push 1)

