; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65780 () Bool)

(assert start!65780)

(declare-fun b!755572 () Bool)

(declare-fun res!510859 () Bool)

(declare-fun e!421364 () Bool)

(assert (=> b!755572 (=> (not res!510859) (not e!421364))))

(declare-datatypes ((array!41906 0))(
  ( (array!41907 (arr!20063 (Array (_ BitVec 32) (_ BitVec 64))) (size!20484 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41906)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41906 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!755572 (= res!510859 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!755573 () Bool)

(declare-fun res!510856 () Bool)

(assert (=> b!755573 (=> (not res!510856) (not e!421364))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!755573 (= res!510856 (validKeyInArray!0 (select (arr!20063 a!3186) j!159)))))

(declare-fun b!755574 () Bool)

(declare-fun e!421366 () Bool)

(declare-fun e!421368 () Bool)

(assert (=> b!755574 (= e!421366 e!421368)))

(declare-fun res!510845 () Bool)

(assert (=> b!755574 (=> res!510845 e!421368)))

(declare-datatypes ((SeekEntryResult!7670 0))(
  ( (MissingZero!7670 (index!33047 (_ BitVec 32))) (Found!7670 (index!33048 (_ BitVec 32))) (Intermediate!7670 (undefined!8482 Bool) (index!33049 (_ BitVec 32)) (x!63973 (_ BitVec 32))) (Undefined!7670) (MissingVacant!7670 (index!33050 (_ BitVec 32))) )
))
(declare-fun lt!336367 () SeekEntryResult!7670)

(declare-fun lt!336366 () SeekEntryResult!7670)

(assert (=> b!755574 (= res!510845 (not (= lt!336367 lt!336366)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41906 (_ BitVec 32)) SeekEntryResult!7670)

(assert (=> b!755574 (= lt!336367 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20063 a!3186) j!159) a!3186 mask!3328))))

(declare-fun res!510852 () Bool)

(assert (=> start!65780 (=> (not res!510852) (not e!421364))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65780 (= res!510852 (validMask!0 mask!3328))))

(assert (=> start!65780 e!421364))

(assert (=> start!65780 true))

(declare-fun array_inv!15837 (array!41906) Bool)

(assert (=> start!65780 (array_inv!15837 a!3186)))

(declare-fun b!755575 () Bool)

(declare-fun res!510860 () Bool)

(declare-fun e!421369 () Bool)

(assert (=> b!755575 (=> (not res!510860) (not e!421369))))

(declare-fun e!421371 () Bool)

(assert (=> b!755575 (= res!510860 e!421371)))

(declare-fun c!82746 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!755575 (= c!82746 (bvsle x!1131 resIntermediateX!5))))

(declare-fun e!421373 () Bool)

(declare-fun b!755576 () Bool)

(assert (=> b!755576 (= e!421373 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20063 a!3186) j!159) a!3186 mask!3328) lt!336366))))

(declare-fun b!755577 () Bool)

(declare-fun lt!336363 () SeekEntryResult!7670)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41906 (_ BitVec 32)) SeekEntryResult!7670)

(assert (=> b!755577 (= e!421371 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20063 a!3186) j!159) a!3186 mask!3328) lt!336363))))

(declare-fun b!755578 () Bool)

(declare-fun e!421363 () Bool)

(assert (=> b!755578 (= e!421369 e!421363)))

(declare-fun res!510847 () Bool)

(assert (=> b!755578 (=> (not res!510847) (not e!421363))))

(declare-fun lt!336364 () SeekEntryResult!7670)

(declare-fun lt!336371 () SeekEntryResult!7670)

(assert (=> b!755578 (= res!510847 (= lt!336364 lt!336371))))

(declare-fun lt!336369 () (_ BitVec 64))

(declare-fun lt!336365 () array!41906)

(assert (=> b!755578 (= lt!336371 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336369 lt!336365 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!755578 (= lt!336364 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336369 mask!3328) lt!336369 lt!336365 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!755578 (= lt!336369 (select (store (arr!20063 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!755578 (= lt!336365 (array!41907 (store (arr!20063 a!3186) i!1173 k!2102) (size!20484 a!3186)))))

(declare-fun b!755579 () Bool)

(declare-fun e!421367 () Bool)

(assert (=> b!755579 (= e!421368 e!421367)))

(declare-fun res!510858 () Bool)

(assert (=> b!755579 (=> res!510858 e!421367)))

(declare-fun lt!336370 () (_ BitVec 64))

(assert (=> b!755579 (= res!510858 (= lt!336370 lt!336369))))

(assert (=> b!755579 (= lt!336370 (select (store (arr!20063 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!755580 () Bool)

(declare-fun e!421374 () Bool)

(declare-fun lt!336373 () SeekEntryResult!7670)

(assert (=> b!755580 (= e!421374 (= lt!336373 lt!336367))))

(declare-fun b!755581 () Bool)

(declare-datatypes ((Unit!26082 0))(
  ( (Unit!26083) )
))
(declare-fun e!421370 () Unit!26082)

(declare-fun Unit!26084 () Unit!26082)

(assert (=> b!755581 (= e!421370 Unit!26084)))

(assert (=> b!755581 false))

(declare-fun b!755582 () Bool)

(declare-fun res!510846 () Bool)

(assert (=> b!755582 (=> (not res!510846) (not e!421364))))

(assert (=> b!755582 (= res!510846 (and (= (size!20484 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20484 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20484 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!755583 () Bool)

(assert (=> b!755583 (= e!421367 true)))

(assert (=> b!755583 e!421374))

(declare-fun res!510850 () Bool)

(assert (=> b!755583 (=> (not res!510850) (not e!421374))))

(assert (=> b!755583 (= res!510850 (= lt!336370 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!336374 () Unit!26082)

(assert (=> b!755583 (= lt!336374 e!421370)))

(declare-fun c!82745 () Bool)

(assert (=> b!755583 (= c!82745 (= lt!336370 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!755584 () Bool)

(declare-fun e!421365 () Bool)

(assert (=> b!755584 (= e!421364 e!421365)))

(declare-fun res!510849 () Bool)

(assert (=> b!755584 (=> (not res!510849) (not e!421365))))

(declare-fun lt!336372 () SeekEntryResult!7670)

(assert (=> b!755584 (= res!510849 (or (= lt!336372 (MissingZero!7670 i!1173)) (= lt!336372 (MissingVacant!7670 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41906 (_ BitVec 32)) SeekEntryResult!7670)

(assert (=> b!755584 (= lt!336372 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!755585 () Bool)

(assert (=> b!755585 (= e!421363 (not e!421366))))

(declare-fun res!510861 () Bool)

(assert (=> b!755585 (=> res!510861 e!421366)))

(assert (=> b!755585 (= res!510861 (or (not (is-Intermediate!7670 lt!336371)) (bvslt x!1131 (x!63973 lt!336371)) (not (= x!1131 (x!63973 lt!336371))) (not (= index!1321 (index!33049 lt!336371)))))))

(assert (=> b!755585 e!421373))

(declare-fun res!510853 () Bool)

(assert (=> b!755585 (=> (not res!510853) (not e!421373))))

(assert (=> b!755585 (= res!510853 (= lt!336373 lt!336366))))

(assert (=> b!755585 (= lt!336366 (Found!7670 j!159))))

(assert (=> b!755585 (= lt!336373 (seekEntryOrOpen!0 (select (arr!20063 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41906 (_ BitVec 32)) Bool)

(assert (=> b!755585 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!336368 () Unit!26082)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41906 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26082)

(assert (=> b!755585 (= lt!336368 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!755586 () Bool)

(declare-fun res!510851 () Bool)

(assert (=> b!755586 (=> (not res!510851) (not e!421365))))

(assert (=> b!755586 (= res!510851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!755587 () Bool)

(declare-fun Unit!26085 () Unit!26082)

(assert (=> b!755587 (= e!421370 Unit!26085)))

(declare-fun b!755588 () Bool)

(assert (=> b!755588 (= e!421365 e!421369)))

(declare-fun res!510843 () Bool)

(assert (=> b!755588 (=> (not res!510843) (not e!421369))))

(assert (=> b!755588 (= res!510843 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20063 a!3186) j!159) mask!3328) (select (arr!20063 a!3186) j!159) a!3186 mask!3328) lt!336363))))

(assert (=> b!755588 (= lt!336363 (Intermediate!7670 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!755589 () Bool)

(assert (=> b!755589 (= e!421371 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20063 a!3186) j!159) a!3186 mask!3328) (Found!7670 j!159)))))

(declare-fun b!755590 () Bool)

(declare-fun res!510857 () Bool)

(assert (=> b!755590 (=> (not res!510857) (not e!421369))))

(assert (=> b!755590 (= res!510857 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20063 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!755591 () Bool)

(declare-fun res!510854 () Bool)

(assert (=> b!755591 (=> (not res!510854) (not e!421365))))

(declare-datatypes ((List!14118 0))(
  ( (Nil!14115) (Cons!14114 (h!15186 (_ BitVec 64)) (t!20441 List!14118)) )
))
(declare-fun arrayNoDuplicates!0 (array!41906 (_ BitVec 32) List!14118) Bool)

(assert (=> b!755591 (= res!510854 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14115))))

(declare-fun b!755592 () Bool)

(declare-fun res!510855 () Bool)

(assert (=> b!755592 (=> (not res!510855) (not e!421365))))

(assert (=> b!755592 (= res!510855 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20484 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20484 a!3186))))))

(declare-fun b!755593 () Bool)

(declare-fun res!510848 () Bool)

(assert (=> b!755593 (=> (not res!510848) (not e!421374))))

(assert (=> b!755593 (= res!510848 (= (seekEntryOrOpen!0 lt!336369 lt!336365 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336369 lt!336365 mask!3328)))))

(declare-fun b!755594 () Bool)

(declare-fun res!510844 () Bool)

(assert (=> b!755594 (=> (not res!510844) (not e!421364))))

(assert (=> b!755594 (= res!510844 (validKeyInArray!0 k!2102))))

(assert (= (and start!65780 res!510852) b!755582))

(assert (= (and b!755582 res!510846) b!755573))

(assert (= (and b!755573 res!510856) b!755594))

(assert (= (and b!755594 res!510844) b!755572))

(assert (= (and b!755572 res!510859) b!755584))

(assert (= (and b!755584 res!510849) b!755586))

(assert (= (and b!755586 res!510851) b!755591))

(assert (= (and b!755591 res!510854) b!755592))

(assert (= (and b!755592 res!510855) b!755588))

(assert (= (and b!755588 res!510843) b!755590))

(assert (= (and b!755590 res!510857) b!755575))

(assert (= (and b!755575 c!82746) b!755577))

(assert (= (and b!755575 (not c!82746)) b!755589))

(assert (= (and b!755575 res!510860) b!755578))

(assert (= (and b!755578 res!510847) b!755585))

(assert (= (and b!755585 res!510853) b!755576))

(assert (= (and b!755585 (not res!510861)) b!755574))

(assert (= (and b!755574 (not res!510845)) b!755579))

(assert (= (and b!755579 (not res!510858)) b!755583))

(assert (= (and b!755583 c!82745) b!755581))

(assert (= (and b!755583 (not c!82745)) b!755587))

(assert (= (and b!755583 res!510850) b!755593))

(assert (= (and b!755593 res!510848) b!755580))

(declare-fun m!703809 () Bool)

(assert (=> b!755574 m!703809))

(assert (=> b!755574 m!703809))

(declare-fun m!703811 () Bool)

(assert (=> b!755574 m!703811))

(assert (=> b!755573 m!703809))

(assert (=> b!755573 m!703809))

(declare-fun m!703813 () Bool)

(assert (=> b!755573 m!703813))

(assert (=> b!755588 m!703809))

(assert (=> b!755588 m!703809))

(declare-fun m!703815 () Bool)

(assert (=> b!755588 m!703815))

(assert (=> b!755588 m!703815))

(assert (=> b!755588 m!703809))

(declare-fun m!703817 () Bool)

(assert (=> b!755588 m!703817))

(assert (=> b!755589 m!703809))

(assert (=> b!755589 m!703809))

(assert (=> b!755589 m!703811))

(declare-fun m!703819 () Bool)

(assert (=> b!755591 m!703819))

(declare-fun m!703821 () Bool)

(assert (=> start!65780 m!703821))

(declare-fun m!703823 () Bool)

(assert (=> start!65780 m!703823))

(declare-fun m!703825 () Bool)

(assert (=> b!755594 m!703825))

(assert (=> b!755577 m!703809))

(assert (=> b!755577 m!703809))

(declare-fun m!703827 () Bool)

(assert (=> b!755577 m!703827))

(assert (=> b!755585 m!703809))

(assert (=> b!755585 m!703809))

(declare-fun m!703829 () Bool)

(assert (=> b!755585 m!703829))

(declare-fun m!703831 () Bool)

(assert (=> b!755585 m!703831))

(declare-fun m!703833 () Bool)

(assert (=> b!755585 m!703833))

(declare-fun m!703835 () Bool)

(assert (=> b!755579 m!703835))

(declare-fun m!703837 () Bool)

(assert (=> b!755579 m!703837))

(assert (=> b!755576 m!703809))

(assert (=> b!755576 m!703809))

(declare-fun m!703839 () Bool)

(assert (=> b!755576 m!703839))

(declare-fun m!703841 () Bool)

(assert (=> b!755593 m!703841))

(declare-fun m!703843 () Bool)

(assert (=> b!755593 m!703843))

(declare-fun m!703845 () Bool)

(assert (=> b!755586 m!703845))

(declare-fun m!703847 () Bool)

(assert (=> b!755578 m!703847))

(declare-fun m!703849 () Bool)

(assert (=> b!755578 m!703849))

(assert (=> b!755578 m!703847))

(assert (=> b!755578 m!703835))

(declare-fun m!703851 () Bool)

(assert (=> b!755578 m!703851))

(declare-fun m!703853 () Bool)

(assert (=> b!755578 m!703853))

(declare-fun m!703855 () Bool)

(assert (=> b!755590 m!703855))

(declare-fun m!703857 () Bool)

(assert (=> b!755572 m!703857))

(declare-fun m!703859 () Bool)

(assert (=> b!755584 m!703859))

(push 1)

