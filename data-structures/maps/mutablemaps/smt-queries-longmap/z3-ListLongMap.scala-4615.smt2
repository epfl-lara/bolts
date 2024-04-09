; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64344 () Bool)

(assert start!64344)

(declare-fun b!722725 () Bool)

(declare-fun e!405033 () Bool)

(assert (=> b!722725 (= e!405033 false)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!320422 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7165 0))(
  ( (MissingZero!7165 (index!31027 (_ BitVec 32))) (Found!7165 (index!31028 (_ BitVec 32))) (Intermediate!7165 (undefined!7977 Bool) (index!31029 (_ BitVec 32)) (x!62055 (_ BitVec 32))) (Undefined!7165) (MissingVacant!7165 (index!31030 (_ BitVec 32))) )
))
(declare-fun lt!320419 () SeekEntryResult!7165)

(declare-datatypes ((array!40878 0))(
  ( (array!40879 (arr!19558 (Array (_ BitVec 32) (_ BitVec 64))) (size!19979 (_ BitVec 32))) )
))
(declare-fun lt!320418 () array!40878)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40878 (_ BitVec 32)) SeekEntryResult!7165)

(assert (=> b!722725 (= lt!320419 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320422 lt!320418 mask!3328))))

(declare-fun lt!320421 () SeekEntryResult!7165)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!722725 (= lt!320421 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320422 mask!3328) lt!320422 lt!320418 mask!3328))))

(declare-fun a!3186 () array!40878)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!722725 (= lt!320422 (select (store (arr!19558 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!722725 (= lt!320418 (array!40879 (store (arr!19558 a!3186) i!1173 k0!2102) (size!19979 a!3186)))))

(declare-fun b!722726 () Bool)

(declare-fun res!484516 () Bool)

(declare-fun e!405030 () Bool)

(assert (=> b!722726 (=> (not res!484516) (not e!405030))))

(declare-datatypes ((List!13613 0))(
  ( (Nil!13610) (Cons!13609 (h!14663 (_ BitVec 64)) (t!19936 List!13613)) )
))
(declare-fun arrayNoDuplicates!0 (array!40878 (_ BitVec 32) List!13613) Bool)

(assert (=> b!722726 (= res!484516 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13610))))

(declare-fun b!722727 () Bool)

(declare-fun res!484518 () Bool)

(assert (=> b!722727 (=> (not res!484518) (not e!405033))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!722727 (= res!484518 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19558 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!722728 () Bool)

(declare-fun res!484523 () Bool)

(declare-fun e!405032 () Bool)

(assert (=> b!722728 (=> (not res!484523) (not e!405032))))

(assert (=> b!722728 (= res!484523 (and (= (size!19979 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19979 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19979 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!722729 () Bool)

(declare-fun res!484526 () Bool)

(assert (=> b!722729 (=> (not res!484526) (not e!405032))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!722729 (= res!484526 (validKeyInArray!0 k0!2102))))

(declare-fun b!722730 () Bool)

(assert (=> b!722730 (= e!405032 e!405030)))

(declare-fun res!484524 () Bool)

(assert (=> b!722730 (=> (not res!484524) (not e!405030))))

(declare-fun lt!320423 () SeekEntryResult!7165)

(assert (=> b!722730 (= res!484524 (or (= lt!320423 (MissingZero!7165 i!1173)) (= lt!320423 (MissingVacant!7165 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40878 (_ BitVec 32)) SeekEntryResult!7165)

(assert (=> b!722730 (= lt!320423 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!722731 () Bool)

(declare-fun e!405029 () Bool)

(declare-fun lt!320420 () SeekEntryResult!7165)

(assert (=> b!722731 (= e!405029 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19558 a!3186) j!159) a!3186 mask!3328) lt!320420))))

(declare-fun b!722732 () Bool)

(declare-fun res!484527 () Bool)

(assert (=> b!722732 (=> (not res!484527) (not e!405030))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!722732 (= res!484527 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19979 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19979 a!3186))))))

(declare-fun b!722733 () Bool)

(assert (=> b!722733 (= e!405030 e!405033)))

(declare-fun res!484517 () Bool)

(assert (=> b!722733 (=> (not res!484517) (not e!405033))))

(assert (=> b!722733 (= res!484517 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19558 a!3186) j!159) mask!3328) (select (arr!19558 a!3186) j!159) a!3186 mask!3328) lt!320420))))

(assert (=> b!722733 (= lt!320420 (Intermediate!7165 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!722734 () Bool)

(declare-fun res!484522 () Bool)

(assert (=> b!722734 (=> (not res!484522) (not e!405032))))

(assert (=> b!722734 (= res!484522 (validKeyInArray!0 (select (arr!19558 a!3186) j!159)))))

(declare-fun b!722735 () Bool)

(declare-fun res!484521 () Bool)

(assert (=> b!722735 (=> (not res!484521) (not e!405030))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40878 (_ BitVec 32)) Bool)

(assert (=> b!722735 (= res!484521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!484525 () Bool)

(assert (=> start!64344 (=> (not res!484525) (not e!405032))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64344 (= res!484525 (validMask!0 mask!3328))))

(assert (=> start!64344 e!405032))

(assert (=> start!64344 true))

(declare-fun array_inv!15332 (array!40878) Bool)

(assert (=> start!64344 (array_inv!15332 a!3186)))

(declare-fun b!722736 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40878 (_ BitVec 32)) SeekEntryResult!7165)

(assert (=> b!722736 (= e!405029 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19558 a!3186) j!159) a!3186 mask!3328) (Found!7165 j!159)))))

(declare-fun b!722737 () Bool)

(declare-fun res!484519 () Bool)

(assert (=> b!722737 (=> (not res!484519) (not e!405032))))

(declare-fun arrayContainsKey!0 (array!40878 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!722737 (= res!484519 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!722738 () Bool)

(declare-fun res!484520 () Bool)

(assert (=> b!722738 (=> (not res!484520) (not e!405033))))

(assert (=> b!722738 (= res!484520 e!405029)))

(declare-fun c!79476 () Bool)

(assert (=> b!722738 (= c!79476 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!64344 res!484525) b!722728))

(assert (= (and b!722728 res!484523) b!722734))

(assert (= (and b!722734 res!484522) b!722729))

(assert (= (and b!722729 res!484526) b!722737))

(assert (= (and b!722737 res!484519) b!722730))

(assert (= (and b!722730 res!484524) b!722735))

(assert (= (and b!722735 res!484521) b!722726))

(assert (= (and b!722726 res!484516) b!722732))

(assert (= (and b!722732 res!484527) b!722733))

(assert (= (and b!722733 res!484517) b!722727))

(assert (= (and b!722727 res!484518) b!722738))

(assert (= (and b!722738 c!79476) b!722731))

(assert (= (and b!722738 (not c!79476)) b!722736))

(assert (= (and b!722738 res!484520) b!722725))

(declare-fun m!677313 () Bool)

(assert (=> b!722736 m!677313))

(assert (=> b!722736 m!677313))

(declare-fun m!677315 () Bool)

(assert (=> b!722736 m!677315))

(assert (=> b!722734 m!677313))

(assert (=> b!722734 m!677313))

(declare-fun m!677317 () Bool)

(assert (=> b!722734 m!677317))

(declare-fun m!677319 () Bool)

(assert (=> b!722725 m!677319))

(declare-fun m!677321 () Bool)

(assert (=> b!722725 m!677321))

(assert (=> b!722725 m!677319))

(declare-fun m!677323 () Bool)

(assert (=> b!722725 m!677323))

(declare-fun m!677325 () Bool)

(assert (=> b!722725 m!677325))

(declare-fun m!677327 () Bool)

(assert (=> b!722725 m!677327))

(assert (=> b!722733 m!677313))

(assert (=> b!722733 m!677313))

(declare-fun m!677329 () Bool)

(assert (=> b!722733 m!677329))

(assert (=> b!722733 m!677329))

(assert (=> b!722733 m!677313))

(declare-fun m!677331 () Bool)

(assert (=> b!722733 m!677331))

(declare-fun m!677333 () Bool)

(assert (=> b!722726 m!677333))

(declare-fun m!677335 () Bool)

(assert (=> b!722729 m!677335))

(declare-fun m!677337 () Bool)

(assert (=> b!722737 m!677337))

(declare-fun m!677339 () Bool)

(assert (=> start!64344 m!677339))

(declare-fun m!677341 () Bool)

(assert (=> start!64344 m!677341))

(declare-fun m!677343 () Bool)

(assert (=> b!722730 m!677343))

(declare-fun m!677345 () Bool)

(assert (=> b!722727 m!677345))

(declare-fun m!677347 () Bool)

(assert (=> b!722735 m!677347))

(assert (=> b!722731 m!677313))

(assert (=> b!722731 m!677313))

(declare-fun m!677349 () Bool)

(assert (=> b!722731 m!677349))

(check-sat (not b!722726) (not b!722735) (not b!722729) (not start!64344) (not b!722734) (not b!722725) (not b!722737) (not b!722733) (not b!722731) (not b!722736) (not b!722730))
(check-sat)
