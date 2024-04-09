; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65746 () Bool)

(assert start!65746)

(declare-fun b!754399 () Bool)

(declare-datatypes ((Unit!26014 0))(
  ( (Unit!26015) )
))
(declare-fun e!420762 () Unit!26014)

(declare-fun Unit!26016 () Unit!26014)

(assert (=> b!754399 (= e!420762 Unit!26016)))

(assert (=> b!754399 false))

(declare-fun b!754400 () Bool)

(declare-fun e!420751 () Bool)

(declare-fun e!420753 () Bool)

(assert (=> b!754400 (= e!420751 e!420753)))

(declare-fun res!509880 () Bool)

(assert (=> b!754400 (=> (not res!509880) (not e!420753))))

(declare-datatypes ((array!41872 0))(
  ( (array!41873 (arr!20046 (Array (_ BitVec 32) (_ BitVec 64))) (size!20467 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41872)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7653 0))(
  ( (MissingZero!7653 (index!32979 (_ BitVec 32))) (Found!7653 (index!32980 (_ BitVec 32))) (Intermediate!7653 (undefined!8465 Bool) (index!32981 (_ BitVec 32)) (x!63916 (_ BitVec 32))) (Undefined!7653) (MissingVacant!7653 (index!32982 (_ BitVec 32))) )
))
(declare-fun lt!335756 () SeekEntryResult!7653)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41872 (_ BitVec 32)) SeekEntryResult!7653)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!754400 (= res!509880 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20046 a!3186) j!159) mask!3328) (select (arr!20046 a!3186) j!159) a!3186 mask!3328) lt!335756))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!754400 (= lt!335756 (Intermediate!7653 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!754401 () Bool)

(declare-fun res!509877 () Bool)

(declare-fun e!420759 () Bool)

(assert (=> b!754401 (=> (not res!509877) (not e!420759))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!335761 () array!41872)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!335757 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41872 (_ BitVec 32)) SeekEntryResult!7653)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41872 (_ BitVec 32)) SeekEntryResult!7653)

(assert (=> b!754401 (= res!509877 (= (seekEntryOrOpen!0 lt!335757 lt!335761 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335757 lt!335761 mask!3328)))))

(declare-fun b!754402 () Bool)

(declare-fun res!509876 () Bool)

(assert (=> b!754402 (=> (not res!509876) (not e!420751))))

(assert (=> b!754402 (= res!509876 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20467 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20467 a!3186))))))

(declare-fun b!754403 () Bool)

(declare-fun e!420758 () Bool)

(declare-fun e!420754 () Bool)

(assert (=> b!754403 (= e!420758 e!420754)))

(declare-fun res!509875 () Bool)

(assert (=> b!754403 (=> res!509875 e!420754)))

(declare-fun lt!335751 () SeekEntryResult!7653)

(declare-fun lt!335754 () SeekEntryResult!7653)

(assert (=> b!754403 (= res!509875 (not (= lt!335751 lt!335754)))))

(assert (=> b!754403 (= lt!335751 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20046 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!754404 () Bool)

(declare-fun e!420752 () Bool)

(assert (=> b!754404 (= e!420752 true)))

(assert (=> b!754404 e!420759))

(declare-fun res!509882 () Bool)

(assert (=> b!754404 (=> (not res!509882) (not e!420759))))

(declare-fun lt!335759 () (_ BitVec 64))

(assert (=> b!754404 (= res!509882 (= lt!335759 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!335755 () Unit!26014)

(assert (=> b!754404 (= lt!335755 e!420762)))

(declare-fun c!82643 () Bool)

(assert (=> b!754404 (= c!82643 (= lt!335759 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!754405 () Bool)

(declare-fun res!509892 () Bool)

(assert (=> b!754405 (=> (not res!509892) (not e!420751))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41872 (_ BitVec 32)) Bool)

(assert (=> b!754405 (= res!509892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!754406 () Bool)

(declare-fun res!509889 () Bool)

(assert (=> b!754406 (=> (not res!509889) (not e!420753))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!754406 (= res!509889 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20046 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!754407 () Bool)

(declare-fun e!420757 () Bool)

(assert (=> b!754407 (= e!420757 e!420751)))

(declare-fun res!509887 () Bool)

(assert (=> b!754407 (=> (not res!509887) (not e!420751))))

(declare-fun lt!335762 () SeekEntryResult!7653)

(assert (=> b!754407 (= res!509887 (or (= lt!335762 (MissingZero!7653 i!1173)) (= lt!335762 (MissingVacant!7653 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!754407 (= lt!335762 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!754408 () Bool)

(declare-fun e!420756 () Bool)

(assert (=> b!754408 (= e!420756 (not e!420758))))

(declare-fun res!509890 () Bool)

(assert (=> b!754408 (=> res!509890 e!420758)))

(declare-fun lt!335760 () SeekEntryResult!7653)

(assert (=> b!754408 (= res!509890 (or (not (is-Intermediate!7653 lt!335760)) (bvslt x!1131 (x!63916 lt!335760)) (not (= x!1131 (x!63916 lt!335760))) (not (= index!1321 (index!32981 lt!335760)))))))

(declare-fun e!420755 () Bool)

(assert (=> b!754408 e!420755))

(declare-fun res!509874 () Bool)

(assert (=> b!754408 (=> (not res!509874) (not e!420755))))

(declare-fun lt!335758 () SeekEntryResult!7653)

(assert (=> b!754408 (= res!509874 (= lt!335758 lt!335754))))

(assert (=> b!754408 (= lt!335754 (Found!7653 j!159))))

(assert (=> b!754408 (= lt!335758 (seekEntryOrOpen!0 (select (arr!20046 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!754408 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!335752 () Unit!26014)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41872 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26014)

(assert (=> b!754408 (= lt!335752 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!754409 () Bool)

(declare-fun Unit!26017 () Unit!26014)

(assert (=> b!754409 (= e!420762 Unit!26017)))

(declare-fun res!509885 () Bool)

(assert (=> start!65746 (=> (not res!509885) (not e!420757))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65746 (= res!509885 (validMask!0 mask!3328))))

(assert (=> start!65746 e!420757))

(assert (=> start!65746 true))

(declare-fun array_inv!15820 (array!41872) Bool)

(assert (=> start!65746 (array_inv!15820 a!3186)))

(declare-fun b!754410 () Bool)

(assert (=> b!754410 (= e!420759 (= lt!335758 lt!335751))))

(declare-fun b!754411 () Bool)

(declare-fun res!509888 () Bool)

(assert (=> b!754411 (=> (not res!509888) (not e!420753))))

(declare-fun e!420760 () Bool)

(assert (=> b!754411 (= res!509888 e!420760)))

(declare-fun c!82644 () Bool)

(assert (=> b!754411 (= c!82644 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!754412 () Bool)

(assert (=> b!754412 (= e!420760 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20046 a!3186) j!159) a!3186 mask!3328) lt!335756))))

(declare-fun b!754413 () Bool)

(assert (=> b!754413 (= e!420755 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20046 a!3186) j!159) a!3186 mask!3328) lt!335754))))

(declare-fun b!754414 () Bool)

(declare-fun res!509883 () Bool)

(assert (=> b!754414 (=> (not res!509883) (not e!420757))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!754414 (= res!509883 (validKeyInArray!0 (select (arr!20046 a!3186) j!159)))))

(declare-fun b!754415 () Bool)

(assert (=> b!754415 (= e!420753 e!420756)))

(declare-fun res!509879 () Bool)

(assert (=> b!754415 (=> (not res!509879) (not e!420756))))

(declare-fun lt!335753 () SeekEntryResult!7653)

(assert (=> b!754415 (= res!509879 (= lt!335753 lt!335760))))

(assert (=> b!754415 (= lt!335760 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335757 lt!335761 mask!3328))))

(assert (=> b!754415 (= lt!335753 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335757 mask!3328) lt!335757 lt!335761 mask!3328))))

(assert (=> b!754415 (= lt!335757 (select (store (arr!20046 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!754415 (= lt!335761 (array!41873 (store (arr!20046 a!3186) i!1173 k!2102) (size!20467 a!3186)))))

(declare-fun b!754416 () Bool)

(declare-fun res!509878 () Bool)

(assert (=> b!754416 (=> (not res!509878) (not e!420757))))

(declare-fun arrayContainsKey!0 (array!41872 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!754416 (= res!509878 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!754417 () Bool)

(assert (=> b!754417 (= e!420754 e!420752)))

(declare-fun res!509886 () Bool)

(assert (=> b!754417 (=> res!509886 e!420752)))

(assert (=> b!754417 (= res!509886 (= lt!335759 lt!335757))))

(assert (=> b!754417 (= lt!335759 (select (store (arr!20046 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!754418 () Bool)

(assert (=> b!754418 (= e!420760 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20046 a!3186) j!159) a!3186 mask!3328) (Found!7653 j!159)))))

(declare-fun b!754419 () Bool)

(declare-fun res!509881 () Bool)

(assert (=> b!754419 (=> (not res!509881) (not e!420751))))

(declare-datatypes ((List!14101 0))(
  ( (Nil!14098) (Cons!14097 (h!15169 (_ BitVec 64)) (t!20424 List!14101)) )
))
(declare-fun arrayNoDuplicates!0 (array!41872 (_ BitVec 32) List!14101) Bool)

(assert (=> b!754419 (= res!509881 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14098))))

(declare-fun b!754420 () Bool)

(declare-fun res!509884 () Bool)

(assert (=> b!754420 (=> (not res!509884) (not e!420757))))

(assert (=> b!754420 (= res!509884 (and (= (size!20467 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20467 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20467 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!754421 () Bool)

(declare-fun res!509891 () Bool)

(assert (=> b!754421 (=> (not res!509891) (not e!420757))))

(assert (=> b!754421 (= res!509891 (validKeyInArray!0 k!2102))))

(assert (= (and start!65746 res!509885) b!754420))

(assert (= (and b!754420 res!509884) b!754414))

(assert (= (and b!754414 res!509883) b!754421))

(assert (= (and b!754421 res!509891) b!754416))

(assert (= (and b!754416 res!509878) b!754407))

(assert (= (and b!754407 res!509887) b!754405))

(assert (= (and b!754405 res!509892) b!754419))

(assert (= (and b!754419 res!509881) b!754402))

(assert (= (and b!754402 res!509876) b!754400))

(assert (= (and b!754400 res!509880) b!754406))

(assert (= (and b!754406 res!509889) b!754411))

(assert (= (and b!754411 c!82644) b!754412))

(assert (= (and b!754411 (not c!82644)) b!754418))

(assert (= (and b!754411 res!509888) b!754415))

(assert (= (and b!754415 res!509879) b!754408))

(assert (= (and b!754408 res!509874) b!754413))

(assert (= (and b!754408 (not res!509890)) b!754403))

(assert (= (and b!754403 (not res!509875)) b!754417))

(assert (= (and b!754417 (not res!509886)) b!754404))

(assert (= (and b!754404 c!82643) b!754399))

(assert (= (and b!754404 (not c!82643)) b!754409))

(assert (= (and b!754404 res!509882) b!754401))

(assert (= (and b!754401 res!509877) b!754410))

(declare-fun m!702925 () Bool)

(assert (=> b!754400 m!702925))

(assert (=> b!754400 m!702925))

(declare-fun m!702927 () Bool)

(assert (=> b!754400 m!702927))

(assert (=> b!754400 m!702927))

(assert (=> b!754400 m!702925))

(declare-fun m!702929 () Bool)

(assert (=> b!754400 m!702929))

(assert (=> b!754413 m!702925))

(assert (=> b!754413 m!702925))

(declare-fun m!702931 () Bool)

(assert (=> b!754413 m!702931))

(declare-fun m!702933 () Bool)

(assert (=> b!754416 m!702933))

(declare-fun m!702935 () Bool)

(assert (=> b!754407 m!702935))

(assert (=> b!754418 m!702925))

(assert (=> b!754418 m!702925))

(declare-fun m!702937 () Bool)

(assert (=> b!754418 m!702937))

(declare-fun m!702939 () Bool)

(assert (=> b!754405 m!702939))

(assert (=> b!754412 m!702925))

(assert (=> b!754412 m!702925))

(declare-fun m!702941 () Bool)

(assert (=> b!754412 m!702941))

(declare-fun m!702943 () Bool)

(assert (=> b!754406 m!702943))

(assert (=> b!754403 m!702925))

(assert (=> b!754403 m!702925))

(assert (=> b!754403 m!702937))

(declare-fun m!702945 () Bool)

(assert (=> b!754417 m!702945))

(declare-fun m!702947 () Bool)

(assert (=> b!754417 m!702947))

(assert (=> b!754408 m!702925))

(assert (=> b!754408 m!702925))

(declare-fun m!702949 () Bool)

(assert (=> b!754408 m!702949))

(declare-fun m!702951 () Bool)

(assert (=> b!754408 m!702951))

(declare-fun m!702953 () Bool)

(assert (=> b!754408 m!702953))

(declare-fun m!702955 () Bool)

(assert (=> b!754401 m!702955))

(declare-fun m!702957 () Bool)

(assert (=> b!754401 m!702957))

(declare-fun m!702959 () Bool)

(assert (=> start!65746 m!702959))

(declare-fun m!702961 () Bool)

(assert (=> start!65746 m!702961))

(declare-fun m!702963 () Bool)

(assert (=> b!754415 m!702963))

(declare-fun m!702965 () Bool)

(assert (=> b!754415 m!702965))

(assert (=> b!754415 m!702963))

(declare-fun m!702967 () Bool)

(assert (=> b!754415 m!702967))

(assert (=> b!754415 m!702945))

(declare-fun m!702969 () Bool)

(assert (=> b!754415 m!702969))

(assert (=> b!754414 m!702925))

(assert (=> b!754414 m!702925))

(declare-fun m!702971 () Bool)

(assert (=> b!754414 m!702971))

(declare-fun m!702973 () Bool)

(assert (=> b!754421 m!702973))

(declare-fun m!702975 () Bool)

(assert (=> b!754419 m!702975))

(push 1)

