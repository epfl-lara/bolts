; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65444 () Bool)

(assert start!65444)

(declare-datatypes ((SeekEntryResult!7502 0))(
  ( (MissingZero!7502 (index!32375 (_ BitVec 32))) (Found!7502 (index!32376 (_ BitVec 32))) (Intermediate!7502 (undefined!8314 Bool) (index!32377 (_ BitVec 32)) (x!63357 (_ BitVec 32))) (Undefined!7502) (MissingVacant!7502 (index!32378 (_ BitVec 32))) )
))
(declare-fun lt!330905 () SeekEntryResult!7502)

(declare-fun b!744821 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41570 0))(
  ( (array!41571 (arr!19895 (Array (_ BitVec 32) (_ BitVec 64))) (size!20316 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41570)

(declare-fun e!416064 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41570 (_ BitVec 32)) SeekEntryResult!7502)

(assert (=> b!744821 (= e!416064 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19895 a!3186) j!159) a!3186 mask!3328) lt!330905))))

(declare-fun b!744823 () Bool)

(declare-fun res!501906 () Bool)

(declare-fun e!416060 () Bool)

(assert (=> b!744823 (=> (not res!501906) (not e!416060))))

(declare-datatypes ((List!13950 0))(
  ( (Nil!13947) (Cons!13946 (h!15018 (_ BitVec 64)) (t!20273 List!13950)) )
))
(declare-fun arrayNoDuplicates!0 (array!41570 (_ BitVec 32) List!13950) Bool)

(assert (=> b!744823 (= res!501906 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13947))))

(declare-fun b!744824 () Bool)

(declare-fun res!501897 () Bool)

(assert (=> b!744824 (=> (not res!501897) (not e!416060))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!744824 (= res!501897 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20316 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20316 a!3186))))))

(declare-fun b!744825 () Bool)

(declare-fun e!416059 () Bool)

(assert (=> b!744825 (= e!416060 e!416059)))

(declare-fun res!501895 () Bool)

(assert (=> b!744825 (=> (not res!501895) (not e!416059))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!744825 (= res!501895 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19895 a!3186) j!159) mask!3328) (select (arr!19895 a!3186) j!159) a!3186 mask!3328) lt!330905))))

(assert (=> b!744825 (= lt!330905 (Intermediate!7502 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!744826 () Bool)

(declare-fun res!501891 () Bool)

(assert (=> b!744826 (=> (not res!501891) (not e!416059))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!744826 (= res!501891 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19895 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!744827 () Bool)

(declare-fun res!501898 () Bool)

(assert (=> b!744827 (=> (not res!501898) (not e!416059))))

(assert (=> b!744827 (= res!501898 e!416064)))

(declare-fun c!81846 () Bool)

(assert (=> b!744827 (= c!81846 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!744828 () Bool)

(declare-fun res!501900 () Bool)

(declare-fun e!416058 () Bool)

(assert (=> b!744828 (=> (not res!501900) (not e!416058))))

(assert (=> b!744828 (= res!501900 (and (= (size!20316 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20316 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20316 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!744829 () Bool)

(declare-fun res!501892 () Bool)

(declare-fun e!416062 () Bool)

(assert (=> b!744829 (=> res!501892 e!416062)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41570 (_ BitVec 32)) SeekEntryResult!7502)

(assert (=> b!744829 (= res!501892 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19895 a!3186) j!159) a!3186 mask!3328) (Found!7502 j!159))))))

(declare-fun b!744830 () Bool)

(declare-fun e!416056 () Bool)

(assert (=> b!744830 (= e!416056 (not e!416062))))

(declare-fun res!501901 () Bool)

(assert (=> b!744830 (=> res!501901 e!416062)))

(declare-fun lt!330907 () SeekEntryResult!7502)

(assert (=> b!744830 (= res!501901 (or (not (is-Intermediate!7502 lt!330907)) (bvslt x!1131 (x!63357 lt!330907)) (not (= x!1131 (x!63357 lt!330907))) (not (= index!1321 (index!32377 lt!330907)))))))

(declare-fun e!416057 () Bool)

(assert (=> b!744830 e!416057))

(declare-fun res!501893 () Bool)

(assert (=> b!744830 (=> (not res!501893) (not e!416057))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41570 (_ BitVec 32)) Bool)

(assert (=> b!744830 (= res!501893 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25484 0))(
  ( (Unit!25485) )
))
(declare-fun lt!330906 () Unit!25484)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41570 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25484)

(assert (=> b!744830 (= lt!330906 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!744831 () Bool)

(declare-fun res!501905 () Bool)

(assert (=> b!744831 (=> (not res!501905) (not e!416058))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!744831 (= res!501905 (validKeyInArray!0 k!2102))))

(declare-fun b!744832 () Bool)

(declare-fun res!501894 () Bool)

(assert (=> b!744832 (=> (not res!501894) (not e!416060))))

(assert (=> b!744832 (= res!501894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!744833 () Bool)

(declare-fun e!416063 () Bool)

(assert (=> b!744833 (= e!416057 e!416063)))

(declare-fun res!501896 () Bool)

(assert (=> b!744833 (=> (not res!501896) (not e!416063))))

(declare-fun lt!330910 () SeekEntryResult!7502)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41570 (_ BitVec 32)) SeekEntryResult!7502)

(assert (=> b!744833 (= res!501896 (= (seekEntryOrOpen!0 (select (arr!19895 a!3186) j!159) a!3186 mask!3328) lt!330910))))

(assert (=> b!744833 (= lt!330910 (Found!7502 j!159))))

(declare-fun b!744834 () Bool)

(declare-fun res!501903 () Bool)

(assert (=> b!744834 (=> (not res!501903) (not e!416058))))

(declare-fun arrayContainsKey!0 (array!41570 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!744834 (= res!501903 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!744835 () Bool)

(assert (=> b!744835 (= e!416059 e!416056)))

(declare-fun res!501890 () Bool)

(assert (=> b!744835 (=> (not res!501890) (not e!416056))))

(declare-fun lt!330908 () SeekEntryResult!7502)

(assert (=> b!744835 (= res!501890 (= lt!330908 lt!330907))))

(declare-fun lt!330911 () (_ BitVec 64))

(declare-fun lt!330904 () array!41570)

(assert (=> b!744835 (= lt!330907 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!330911 lt!330904 mask!3328))))

(assert (=> b!744835 (= lt!330908 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!330911 mask!3328) lt!330911 lt!330904 mask!3328))))

(assert (=> b!744835 (= lt!330911 (select (store (arr!19895 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!744835 (= lt!330904 (array!41571 (store (arr!19895 a!3186) i!1173 k!2102) (size!20316 a!3186)))))

(declare-fun b!744822 () Bool)

(declare-fun res!501904 () Bool)

(assert (=> b!744822 (=> (not res!501904) (not e!416058))))

(assert (=> b!744822 (= res!501904 (validKeyInArray!0 (select (arr!19895 a!3186) j!159)))))

(declare-fun res!501902 () Bool)

(assert (=> start!65444 (=> (not res!501902) (not e!416058))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65444 (= res!501902 (validMask!0 mask!3328))))

(assert (=> start!65444 e!416058))

(assert (=> start!65444 true))

(declare-fun array_inv!15669 (array!41570) Bool)

(assert (=> start!65444 (array_inv!15669 a!3186)))

(declare-fun b!744836 () Bool)

(assert (=> b!744836 (= e!416063 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19895 a!3186) j!159) a!3186 mask!3328) lt!330910))))

(declare-fun b!744837 () Bool)

(assert (=> b!744837 (= e!416058 e!416060)))

(declare-fun res!501899 () Bool)

(assert (=> b!744837 (=> (not res!501899) (not e!416060))))

(declare-fun lt!330909 () SeekEntryResult!7502)

(assert (=> b!744837 (= res!501899 (or (= lt!330909 (MissingZero!7502 i!1173)) (= lt!330909 (MissingVacant!7502 i!1173))))))

(assert (=> b!744837 (= lt!330909 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!744838 () Bool)

(assert (=> b!744838 (= e!416064 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19895 a!3186) j!159) a!3186 mask!3328) (Found!7502 j!159)))))

(declare-fun b!744839 () Bool)

(assert (=> b!744839 (= e!416062 (or (= (select (store (arr!19895 a!3186) i!1173 k!2102) index!1321) lt!330911) (not (= (select (store (arr!19895 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(assert (= (and start!65444 res!501902) b!744828))

(assert (= (and b!744828 res!501900) b!744822))

(assert (= (and b!744822 res!501904) b!744831))

(assert (= (and b!744831 res!501905) b!744834))

(assert (= (and b!744834 res!501903) b!744837))

(assert (= (and b!744837 res!501899) b!744832))

(assert (= (and b!744832 res!501894) b!744823))

(assert (= (and b!744823 res!501906) b!744824))

(assert (= (and b!744824 res!501897) b!744825))

(assert (= (and b!744825 res!501895) b!744826))

(assert (= (and b!744826 res!501891) b!744827))

(assert (= (and b!744827 c!81846) b!744821))

(assert (= (and b!744827 (not c!81846)) b!744838))

(assert (= (and b!744827 res!501898) b!744835))

(assert (= (and b!744835 res!501890) b!744830))

(assert (= (and b!744830 res!501893) b!744833))

(assert (= (and b!744833 res!501896) b!744836))

(assert (= (and b!744830 (not res!501901)) b!744829))

(assert (= (and b!744829 (not res!501892)) b!744839))

(declare-fun m!695371 () Bool)

(assert (=> b!744832 m!695371))

(declare-fun m!695373 () Bool)

(assert (=> start!65444 m!695373))

(declare-fun m!695375 () Bool)

(assert (=> start!65444 m!695375))

(declare-fun m!695377 () Bool)

(assert (=> b!744836 m!695377))

(assert (=> b!744836 m!695377))

(declare-fun m!695379 () Bool)

(assert (=> b!744836 m!695379))

(declare-fun m!695381 () Bool)

(assert (=> b!744823 m!695381))

(declare-fun m!695383 () Bool)

(assert (=> b!744837 m!695383))

(assert (=> b!744825 m!695377))

(assert (=> b!744825 m!695377))

(declare-fun m!695385 () Bool)

(assert (=> b!744825 m!695385))

(assert (=> b!744825 m!695385))

(assert (=> b!744825 m!695377))

(declare-fun m!695387 () Bool)

(assert (=> b!744825 m!695387))

(declare-fun m!695389 () Bool)

(assert (=> b!744834 m!695389))

(declare-fun m!695391 () Bool)

(assert (=> b!744839 m!695391))

(declare-fun m!695393 () Bool)

(assert (=> b!744839 m!695393))

(assert (=> b!744822 m!695377))

(assert (=> b!744822 m!695377))

(declare-fun m!695395 () Bool)

(assert (=> b!744822 m!695395))

(declare-fun m!695397 () Bool)

(assert (=> b!744835 m!695397))

(assert (=> b!744835 m!695397))

(declare-fun m!695399 () Bool)

(assert (=> b!744835 m!695399))

(assert (=> b!744835 m!695391))

(declare-fun m!695401 () Bool)

(assert (=> b!744835 m!695401))

(declare-fun m!695403 () Bool)

(assert (=> b!744835 m!695403))

(declare-fun m!695405 () Bool)

(assert (=> b!744830 m!695405))

(declare-fun m!695407 () Bool)

(assert (=> b!744830 m!695407))

(assert (=> b!744821 m!695377))

(assert (=> b!744821 m!695377))

(declare-fun m!695409 () Bool)

(assert (=> b!744821 m!695409))

(declare-fun m!695411 () Bool)

(assert (=> b!744831 m!695411))

(assert (=> b!744838 m!695377))

(assert (=> b!744838 m!695377))

(declare-fun m!695413 () Bool)

(assert (=> b!744838 m!695413))

(declare-fun m!695415 () Bool)

(assert (=> b!744826 m!695415))

(assert (=> b!744829 m!695377))

(assert (=> b!744829 m!695377))

(assert (=> b!744829 m!695413))

(assert (=> b!744833 m!695377))

(assert (=> b!744833 m!695377))

(declare-fun m!695417 () Bool)

(assert (=> b!744833 m!695417))

(push 1)

(assert (not b!744831))

(assert (not b!744835))

(assert (not start!65444))

(assert (not b!744823))

(assert (not b!744834))

(assert (not b!744825))

(assert (not b!744837))

(assert (not b!744838))

(assert (not b!744829))

(assert (not b!744822))

(assert (not b!744836))

(assert (not b!744833))

(assert (not b!744830))

(assert (not b!744832))

(assert (not b!744821))

(check-sat)

(pop 1)

(push 1)

(check-sat)

