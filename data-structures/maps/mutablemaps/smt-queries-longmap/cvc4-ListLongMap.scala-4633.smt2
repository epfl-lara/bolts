; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64520 () Bool)

(assert start!64520)

(declare-fun b!725746 () Bool)

(declare-fun res!486945 () Bool)

(declare-fun e!406411 () Bool)

(assert (=> b!725746 (=> (not res!486945) (not e!406411))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40991 0))(
  ( (array!40992 (arr!19613 (Array (_ BitVec 32) (_ BitVec 64))) (size!20034 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40991)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!725746 (= res!486945 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20034 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20034 a!3186))))))

(declare-fun b!725747 () Bool)

(declare-fun res!486940 () Bool)

(assert (=> b!725747 (=> (not res!486940) (not e!406411))))

(declare-datatypes ((List!13668 0))(
  ( (Nil!13665) (Cons!13664 (h!14721 (_ BitVec 64)) (t!19991 List!13668)) )
))
(declare-fun arrayNoDuplicates!0 (array!40991 (_ BitVec 32) List!13668) Bool)

(assert (=> b!725747 (= res!486940 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13665))))

(declare-fun b!725748 () Bool)

(declare-fun res!486937 () Bool)

(declare-fun e!406412 () Bool)

(assert (=> b!725748 (=> (not res!486937) (not e!406412))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!725748 (= res!486937 (and (= (size!20034 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20034 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20034 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!725749 () Bool)

(declare-fun e!406410 () Bool)

(declare-fun e!406416 () Bool)

(assert (=> b!725749 (= e!406410 e!406416)))

(declare-fun res!486938 () Bool)

(assert (=> b!725749 (=> (not res!486938) (not e!406416))))

(declare-datatypes ((SeekEntryResult!7220 0))(
  ( (MissingZero!7220 (index!31247 (_ BitVec 32))) (Found!7220 (index!31248 (_ BitVec 32))) (Intermediate!7220 (undefined!8032 Bool) (index!31249 (_ BitVec 32)) (x!62263 (_ BitVec 32))) (Undefined!7220) (MissingVacant!7220 (index!31250 (_ BitVec 32))) )
))
(declare-fun lt!321464 () SeekEntryResult!7220)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40991 (_ BitVec 32)) SeekEntryResult!7220)

(assert (=> b!725749 (= res!486938 (= (seekEntryOrOpen!0 (select (arr!19613 a!3186) j!159) a!3186 mask!3328) lt!321464))))

(assert (=> b!725749 (= lt!321464 (Found!7220 j!159))))

(declare-fun b!725750 () Bool)

(declare-fun res!486944 () Bool)

(declare-fun e!406409 () Bool)

(assert (=> b!725750 (=> (not res!486944) (not e!406409))))

(declare-fun e!406413 () Bool)

(assert (=> b!725750 (= res!486944 e!406413)))

(declare-fun c!79779 () Bool)

(assert (=> b!725750 (= c!79779 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!725751 () Bool)

(declare-fun res!486934 () Bool)

(assert (=> b!725751 (=> (not res!486934) (not e!406412))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40991 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!725751 (= res!486934 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!725752 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40991 (_ BitVec 32)) SeekEntryResult!7220)

(assert (=> b!725752 (= e!406413 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19613 a!3186) j!159) a!3186 mask!3328) (Found!7220 j!159)))))

(declare-fun b!725753 () Bool)

(assert (=> b!725753 (= e!406416 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19613 a!3186) j!159) a!3186 mask!3328) lt!321464))))

(declare-fun b!725754 () Bool)

(declare-fun e!406414 () Bool)

(assert (=> b!725754 (= e!406409 e!406414)))

(declare-fun res!486947 () Bool)

(assert (=> b!725754 (=> (not res!486947) (not e!406414))))

(declare-fun lt!321462 () (_ BitVec 64))

(declare-fun lt!321463 () array!40991)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40991 (_ BitVec 32)) SeekEntryResult!7220)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!725754 (= res!486947 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321462 mask!3328) lt!321462 lt!321463 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321462 lt!321463 mask!3328)))))

(assert (=> b!725754 (= lt!321462 (select (store (arr!19613 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!725754 (= lt!321463 (array!40992 (store (arr!19613 a!3186) i!1173 k!2102) (size!20034 a!3186)))))

(declare-fun b!725755 () Bool)

(assert (=> b!725755 (= e!406414 (not true))))

(assert (=> b!725755 e!406410))

(declare-fun res!486943 () Bool)

(assert (=> b!725755 (=> (not res!486943) (not e!406410))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40991 (_ BitVec 32)) Bool)

(assert (=> b!725755 (= res!486943 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24758 0))(
  ( (Unit!24759) )
))
(declare-fun lt!321461 () Unit!24758)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40991 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24758)

(assert (=> b!725755 (= lt!321461 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun lt!321460 () SeekEntryResult!7220)

(declare-fun b!725756 () Bool)

(assert (=> b!725756 (= e!406413 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19613 a!3186) j!159) a!3186 mask!3328) lt!321460))))

(declare-fun b!725757 () Bool)

(assert (=> b!725757 (= e!406412 e!406411)))

(declare-fun res!486939 () Bool)

(assert (=> b!725757 (=> (not res!486939) (not e!406411))))

(declare-fun lt!321459 () SeekEntryResult!7220)

(assert (=> b!725757 (= res!486939 (or (= lt!321459 (MissingZero!7220 i!1173)) (= lt!321459 (MissingVacant!7220 i!1173))))))

(assert (=> b!725757 (= lt!321459 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!725758 () Bool)

(declare-fun res!486936 () Bool)

(assert (=> b!725758 (=> (not res!486936) (not e!406409))))

(assert (=> b!725758 (= res!486936 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19613 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!725759 () Bool)

(assert (=> b!725759 (= e!406411 e!406409)))

(declare-fun res!486948 () Bool)

(assert (=> b!725759 (=> (not res!486948) (not e!406409))))

(assert (=> b!725759 (= res!486948 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19613 a!3186) j!159) mask!3328) (select (arr!19613 a!3186) j!159) a!3186 mask!3328) lt!321460))))

(assert (=> b!725759 (= lt!321460 (Intermediate!7220 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!725760 () Bool)

(declare-fun res!486946 () Bool)

(assert (=> b!725760 (=> (not res!486946) (not e!406412))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!725760 (= res!486946 (validKeyInArray!0 k!2102))))

(declare-fun b!725761 () Bool)

(declare-fun res!486935 () Bool)

(assert (=> b!725761 (=> (not res!486935) (not e!406411))))

(assert (=> b!725761 (= res!486935 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!725762 () Bool)

(declare-fun res!486941 () Bool)

(assert (=> b!725762 (=> (not res!486941) (not e!406412))))

(assert (=> b!725762 (= res!486941 (validKeyInArray!0 (select (arr!19613 a!3186) j!159)))))

(declare-fun res!486942 () Bool)

(assert (=> start!64520 (=> (not res!486942) (not e!406412))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64520 (= res!486942 (validMask!0 mask!3328))))

(assert (=> start!64520 e!406412))

(assert (=> start!64520 true))

(declare-fun array_inv!15387 (array!40991) Bool)

(assert (=> start!64520 (array_inv!15387 a!3186)))

(assert (= (and start!64520 res!486942) b!725748))

(assert (= (and b!725748 res!486937) b!725762))

(assert (= (and b!725762 res!486941) b!725760))

(assert (= (and b!725760 res!486946) b!725751))

(assert (= (and b!725751 res!486934) b!725757))

(assert (= (and b!725757 res!486939) b!725761))

(assert (= (and b!725761 res!486935) b!725747))

(assert (= (and b!725747 res!486940) b!725746))

(assert (= (and b!725746 res!486945) b!725759))

(assert (= (and b!725759 res!486948) b!725758))

(assert (= (and b!725758 res!486936) b!725750))

(assert (= (and b!725750 c!79779) b!725756))

(assert (= (and b!725750 (not c!79779)) b!725752))

(assert (= (and b!725750 res!486944) b!725754))

(assert (= (and b!725754 res!486947) b!725755))

(assert (= (and b!725755 res!486943) b!725749))

(assert (= (and b!725749 res!486938) b!725753))

(declare-fun m!679965 () Bool)

(assert (=> b!725758 m!679965))

(declare-fun m!679967 () Bool)

(assert (=> b!725752 m!679967))

(assert (=> b!725752 m!679967))

(declare-fun m!679969 () Bool)

(assert (=> b!725752 m!679969))

(declare-fun m!679971 () Bool)

(assert (=> b!725747 m!679971))

(declare-fun m!679973 () Bool)

(assert (=> start!64520 m!679973))

(declare-fun m!679975 () Bool)

(assert (=> start!64520 m!679975))

(declare-fun m!679977 () Bool)

(assert (=> b!725755 m!679977))

(declare-fun m!679979 () Bool)

(assert (=> b!725755 m!679979))

(assert (=> b!725756 m!679967))

(assert (=> b!725756 m!679967))

(declare-fun m!679981 () Bool)

(assert (=> b!725756 m!679981))

(declare-fun m!679983 () Bool)

(assert (=> b!725761 m!679983))

(assert (=> b!725759 m!679967))

(assert (=> b!725759 m!679967))

(declare-fun m!679985 () Bool)

(assert (=> b!725759 m!679985))

(assert (=> b!725759 m!679985))

(assert (=> b!725759 m!679967))

(declare-fun m!679987 () Bool)

(assert (=> b!725759 m!679987))

(declare-fun m!679989 () Bool)

(assert (=> b!725751 m!679989))

(declare-fun m!679991 () Bool)

(assert (=> b!725754 m!679991))

(declare-fun m!679993 () Bool)

(assert (=> b!725754 m!679993))

(declare-fun m!679995 () Bool)

(assert (=> b!725754 m!679995))

(declare-fun m!679997 () Bool)

(assert (=> b!725754 m!679997))

(assert (=> b!725754 m!679993))

(declare-fun m!679999 () Bool)

(assert (=> b!725754 m!679999))

(assert (=> b!725762 m!679967))

(assert (=> b!725762 m!679967))

(declare-fun m!680001 () Bool)

(assert (=> b!725762 m!680001))

(declare-fun m!680003 () Bool)

(assert (=> b!725757 m!680003))

(assert (=> b!725749 m!679967))

(assert (=> b!725749 m!679967))

(declare-fun m!680005 () Bool)

(assert (=> b!725749 m!680005))

(assert (=> b!725753 m!679967))

(assert (=> b!725753 m!679967))

(declare-fun m!680007 () Bool)

(assert (=> b!725753 m!680007))

(declare-fun m!680009 () Bool)

(assert (=> b!725760 m!680009))

(push 1)

