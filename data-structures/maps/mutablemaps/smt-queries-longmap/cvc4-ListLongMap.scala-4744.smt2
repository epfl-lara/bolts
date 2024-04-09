; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65546 () Bool)

(assert start!65546)

(declare-fun b!747726 () Bool)

(declare-fun res!504411 () Bool)

(declare-fun e!417442 () Bool)

(assert (=> b!747726 (=> (not res!504411) (not e!417442))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41672 0))(
  ( (array!41673 (arr!19946 (Array (_ BitVec 32) (_ BitVec 64))) (size!20367 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41672)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!747726 (= res!504411 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19946 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!747727 () Bool)

(declare-fun res!504408 () Bool)

(declare-fun e!417444 () Bool)

(assert (=> b!747727 (=> (not res!504408) (not e!417444))))

(declare-datatypes ((List!14001 0))(
  ( (Nil!13998) (Cons!13997 (h!15069 (_ BitVec 64)) (t!20324 List!14001)) )
))
(declare-fun arrayNoDuplicates!0 (array!41672 (_ BitVec 32) List!14001) Bool)

(assert (=> b!747727 (= res!504408 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13998))))

(declare-fun b!747728 () Bool)

(declare-fun res!504403 () Bool)

(declare-fun e!417449 () Bool)

(assert (=> b!747728 (=> res!504403 e!417449)))

(declare-datatypes ((SeekEntryResult!7553 0))(
  ( (MissingZero!7553 (index!32579 (_ BitVec 32))) (Found!7553 (index!32580 (_ BitVec 32))) (Intermediate!7553 (undefined!8365 Bool) (index!32581 (_ BitVec 32)) (x!63544 (_ BitVec 32))) (Undefined!7553) (MissingVacant!7553 (index!32582 (_ BitVec 32))) )
))
(declare-fun lt!332395 () SeekEntryResult!7553)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41672 (_ BitVec 32)) SeekEntryResult!7553)

(assert (=> b!747728 (= res!504403 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19946 a!3186) j!159) a!3186 mask!3328) lt!332395)))))

(declare-fun res!504416 () Bool)

(declare-fun e!417446 () Bool)

(assert (=> start!65546 (=> (not res!504416) (not e!417446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65546 (= res!504416 (validMask!0 mask!3328))))

(assert (=> start!65546 e!417446))

(assert (=> start!65546 true))

(declare-fun array_inv!15720 (array!41672) Bool)

(assert (=> start!65546 (array_inv!15720 a!3186)))

(declare-fun b!747729 () Bool)

(declare-fun res!504404 () Bool)

(assert (=> b!747729 (=> (not res!504404) (not e!417446))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!747729 (= res!504404 (validKeyInArray!0 k!2102))))

(declare-fun e!417445 () Bool)

(declare-fun b!747730 () Bool)

(declare-fun lt!332391 () SeekEntryResult!7553)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41672 (_ BitVec 32)) SeekEntryResult!7553)

(assert (=> b!747730 (= e!417445 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19946 a!3186) j!159) a!3186 mask!3328) lt!332391))))

(declare-fun b!747731 () Bool)

(declare-datatypes ((Unit!25614 0))(
  ( (Unit!25615) )
))
(declare-fun e!417443 () Unit!25614)

(declare-fun Unit!25616 () Unit!25614)

(assert (=> b!747731 (= e!417443 Unit!25616)))

(assert (=> b!747731 false))

(declare-fun b!747732 () Bool)

(declare-fun e!417448 () Bool)

(assert (=> b!747732 (= e!417448 (not e!417449))))

(declare-fun res!504409 () Bool)

(assert (=> b!747732 (=> res!504409 e!417449)))

(declare-fun lt!332393 () SeekEntryResult!7553)

(assert (=> b!747732 (= res!504409 (or (not (is-Intermediate!7553 lt!332393)) (bvslt x!1131 (x!63544 lt!332393)) (not (= x!1131 (x!63544 lt!332393))) (not (= index!1321 (index!32581 lt!332393)))))))

(declare-fun e!417447 () Bool)

(assert (=> b!747732 e!417447))

(declare-fun res!504407 () Bool)

(assert (=> b!747732 (=> (not res!504407) (not e!417447))))

(declare-fun lt!332396 () SeekEntryResult!7553)

(assert (=> b!747732 (= res!504407 (= lt!332396 lt!332395))))

(assert (=> b!747732 (= lt!332395 (Found!7553 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41672 (_ BitVec 32)) SeekEntryResult!7553)

(assert (=> b!747732 (= lt!332396 (seekEntryOrOpen!0 (select (arr!19946 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41672 (_ BitVec 32)) Bool)

(assert (=> b!747732 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332390 () Unit!25614)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41672 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25614)

(assert (=> b!747732 (= lt!332390 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!747733 () Bool)

(assert (=> b!747733 (= e!417444 e!417442)))

(declare-fun res!504413 () Bool)

(assert (=> b!747733 (=> (not res!504413) (not e!417442))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!747733 (= res!504413 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19946 a!3186) j!159) mask!3328) (select (arr!19946 a!3186) j!159) a!3186 mask!3328) lt!332391))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!747733 (= lt!332391 (Intermediate!7553 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!747734 () Bool)

(declare-fun res!504412 () Bool)

(assert (=> b!747734 (=> (not res!504412) (not e!417444))))

(assert (=> b!747734 (= res!504412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!747735 () Bool)

(assert (=> b!747735 (= e!417442 e!417448)))

(declare-fun res!504406 () Bool)

(assert (=> b!747735 (=> (not res!504406) (not e!417448))))

(declare-fun lt!332389 () SeekEntryResult!7553)

(assert (=> b!747735 (= res!504406 (= lt!332389 lt!332393))))

(declare-fun lt!332387 () (_ BitVec 64))

(declare-fun lt!332394 () array!41672)

(assert (=> b!747735 (= lt!332393 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332387 lt!332394 mask!3328))))

(assert (=> b!747735 (= lt!332389 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332387 mask!3328) lt!332387 lt!332394 mask!3328))))

(assert (=> b!747735 (= lt!332387 (select (store (arr!19946 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!747735 (= lt!332394 (array!41673 (store (arr!19946 a!3186) i!1173 k!2102) (size!20367 a!3186)))))

(declare-fun b!747736 () Bool)

(assert (=> b!747736 (= e!417449 true)))

(assert (=> b!747736 (= (select (store (arr!19946 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!332388 () Unit!25614)

(assert (=> b!747736 (= lt!332388 e!417443)))

(declare-fun c!82044 () Bool)

(assert (=> b!747736 (= c!82044 (= (select (store (arr!19946 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!747737 () Bool)

(declare-fun Unit!25617 () Unit!25614)

(assert (=> b!747737 (= e!417443 Unit!25617)))

(declare-fun b!747738 () Bool)

(declare-fun res!504417 () Bool)

(assert (=> b!747738 (=> (not res!504417) (not e!417446))))

(declare-fun arrayContainsKey!0 (array!41672 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!747738 (= res!504417 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!747739 () Bool)

(declare-fun res!504402 () Bool)

(assert (=> b!747739 (=> (not res!504402) (not e!417442))))

(assert (=> b!747739 (= res!504402 e!417445)))

(declare-fun c!82043 () Bool)

(assert (=> b!747739 (= c!82043 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!747740 () Bool)

(declare-fun res!504401 () Bool)

(assert (=> b!747740 (=> (not res!504401) (not e!417446))))

(assert (=> b!747740 (= res!504401 (and (= (size!20367 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20367 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20367 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!747741 () Bool)

(assert (=> b!747741 (= e!417446 e!417444)))

(declare-fun res!504415 () Bool)

(assert (=> b!747741 (=> (not res!504415) (not e!417444))))

(declare-fun lt!332392 () SeekEntryResult!7553)

(assert (=> b!747741 (= res!504415 (or (= lt!332392 (MissingZero!7553 i!1173)) (= lt!332392 (MissingVacant!7553 i!1173))))))

(assert (=> b!747741 (= lt!332392 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!747742 () Bool)

(declare-fun res!504410 () Bool)

(assert (=> b!747742 (=> res!504410 e!417449)))

(assert (=> b!747742 (= res!504410 (= (select (store (arr!19946 a!3186) i!1173 k!2102) index!1321) lt!332387))))

(declare-fun b!747743 () Bool)

(declare-fun res!504405 () Bool)

(assert (=> b!747743 (=> (not res!504405) (not e!417446))))

(assert (=> b!747743 (= res!504405 (validKeyInArray!0 (select (arr!19946 a!3186) j!159)))))

(declare-fun b!747744 () Bool)

(declare-fun res!504414 () Bool)

(assert (=> b!747744 (=> (not res!504414) (not e!417444))))

(assert (=> b!747744 (= res!504414 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20367 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20367 a!3186))))))

(declare-fun b!747745 () Bool)

(assert (=> b!747745 (= e!417445 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19946 a!3186) j!159) a!3186 mask!3328) (Found!7553 j!159)))))

(declare-fun b!747746 () Bool)

(assert (=> b!747746 (= e!417447 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19946 a!3186) j!159) a!3186 mask!3328) lt!332395))))

(assert (= (and start!65546 res!504416) b!747740))

(assert (= (and b!747740 res!504401) b!747743))

(assert (= (and b!747743 res!504405) b!747729))

(assert (= (and b!747729 res!504404) b!747738))

(assert (= (and b!747738 res!504417) b!747741))

(assert (= (and b!747741 res!504415) b!747734))

(assert (= (and b!747734 res!504412) b!747727))

(assert (= (and b!747727 res!504408) b!747744))

(assert (= (and b!747744 res!504414) b!747733))

(assert (= (and b!747733 res!504413) b!747726))

(assert (= (and b!747726 res!504411) b!747739))

(assert (= (and b!747739 c!82043) b!747730))

(assert (= (and b!747739 (not c!82043)) b!747745))

(assert (= (and b!747739 res!504402) b!747735))

(assert (= (and b!747735 res!504406) b!747732))

(assert (= (and b!747732 res!504407) b!747746))

(assert (= (and b!747732 (not res!504409)) b!747728))

(assert (= (and b!747728 (not res!504403)) b!747742))

(assert (= (and b!747742 (not res!504410)) b!747736))

(assert (= (and b!747736 c!82044) b!747731))

(assert (= (and b!747736 (not c!82044)) b!747737))

(declare-fun m!697807 () Bool)

(assert (=> b!747729 m!697807))

(declare-fun m!697809 () Bool)

(assert (=> b!747726 m!697809))

(declare-fun m!697811 () Bool)

(assert (=> b!747743 m!697811))

(assert (=> b!747743 m!697811))

(declare-fun m!697813 () Bool)

(assert (=> b!747743 m!697813))

(declare-fun m!697815 () Bool)

(assert (=> b!747735 m!697815))

(declare-fun m!697817 () Bool)

(assert (=> b!747735 m!697817))

(declare-fun m!697819 () Bool)

(assert (=> b!747735 m!697819))

(declare-fun m!697821 () Bool)

(assert (=> b!747735 m!697821))

(assert (=> b!747735 m!697819))

(declare-fun m!697823 () Bool)

(assert (=> b!747735 m!697823))

(assert (=> b!747728 m!697811))

(assert (=> b!747728 m!697811))

(declare-fun m!697825 () Bool)

(assert (=> b!747728 m!697825))

(assert (=> b!747746 m!697811))

(assert (=> b!747746 m!697811))

(declare-fun m!697827 () Bool)

(assert (=> b!747746 m!697827))

(assert (=> b!747732 m!697811))

(assert (=> b!747732 m!697811))

(declare-fun m!697829 () Bool)

(assert (=> b!747732 m!697829))

(declare-fun m!697831 () Bool)

(assert (=> b!747732 m!697831))

(declare-fun m!697833 () Bool)

(assert (=> b!747732 m!697833))

(assert (=> b!747736 m!697815))

(declare-fun m!697835 () Bool)

(assert (=> b!747736 m!697835))

(assert (=> b!747730 m!697811))

(assert (=> b!747730 m!697811))

(declare-fun m!697837 () Bool)

(assert (=> b!747730 m!697837))

(declare-fun m!697839 () Bool)

(assert (=> start!65546 m!697839))

(declare-fun m!697841 () Bool)

(assert (=> start!65546 m!697841))

(assert (=> b!747742 m!697815))

(assert (=> b!747742 m!697835))

(declare-fun m!697843 () Bool)

(assert (=> b!747741 m!697843))

(assert (=> b!747733 m!697811))

(assert (=> b!747733 m!697811))

(declare-fun m!697845 () Bool)

(assert (=> b!747733 m!697845))

(assert (=> b!747733 m!697845))

(assert (=> b!747733 m!697811))

(declare-fun m!697847 () Bool)

(assert (=> b!747733 m!697847))

(declare-fun m!697849 () Bool)

(assert (=> b!747734 m!697849))

(assert (=> b!747745 m!697811))

(assert (=> b!747745 m!697811))

(assert (=> b!747745 m!697825))

(declare-fun m!697851 () Bool)

(assert (=> b!747727 m!697851))

(declare-fun m!697853 () Bool)

(assert (=> b!747738 m!697853))

(push 1)

