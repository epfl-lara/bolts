; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67120 () Bool)

(assert start!67120)

(declare-fun b!774351 () Bool)

(declare-fun res!523691 () Bool)

(declare-fun e!431065 () Bool)

(assert (=> b!774351 (=> (not res!523691) (not e!431065))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!774351 (= res!523691 (validKeyInArray!0 k!2102))))

(declare-fun b!774352 () Bool)

(declare-fun res!523693 () Bool)

(assert (=> b!774352 (=> (not res!523693) (not e!431065))))

(declare-datatypes ((array!42430 0))(
  ( (array!42431 (arr!20307 (Array (_ BitVec 32) (_ BitVec 64))) (size!20728 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42430)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!774352 (= res!523693 (validKeyInArray!0 (select (arr!20307 a!3186) j!159)))))

(declare-fun b!774353 () Bool)

(declare-fun e!431071 () Bool)

(declare-fun e!431070 () Bool)

(assert (=> b!774353 (= e!431071 e!431070)))

(declare-fun res!523690 () Bool)

(assert (=> b!774353 (=> res!523690 e!431070)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!344877 () (_ BitVec 32))

(assert (=> b!774353 (= res!523690 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!344877 #b00000000000000000000000000000000) (bvsge lt!344877 (size!20728 a!3186))))))

(declare-datatypes ((Unit!26692 0))(
  ( (Unit!26693) )
))
(declare-fun lt!344883 () Unit!26692)

(declare-fun e!431066 () Unit!26692)

(assert (=> b!774353 (= lt!344883 e!431066)))

(declare-fun c!85738 () Bool)

(declare-fun lt!344881 () Bool)

(assert (=> b!774353 (= c!85738 lt!344881)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!774353 (= lt!344881 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!774353 (= lt!344877 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!774354 () Bool)

(declare-fun res!523675 () Bool)

(declare-fun e!431063 () Bool)

(assert (=> b!774354 (=> (not res!523675) (not e!431063))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42430 (_ BitVec 32)) Bool)

(assert (=> b!774354 (= res!523675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!774355 () Bool)

(declare-fun e!431068 () Bool)

(declare-fun e!431074 () Bool)

(assert (=> b!774355 (= e!431068 e!431074)))

(declare-fun res!523680 () Bool)

(assert (=> b!774355 (=> (not res!523680) (not e!431074))))

(declare-datatypes ((SeekEntryResult!7914 0))(
  ( (MissingZero!7914 (index!34023 (_ BitVec 32))) (Found!7914 (index!34024 (_ BitVec 32))) (Intermediate!7914 (undefined!8726 Bool) (index!34025 (_ BitVec 32)) (x!65002 (_ BitVec 32))) (Undefined!7914) (MissingVacant!7914 (index!34026 (_ BitVec 32))) )
))
(declare-fun lt!344873 () SeekEntryResult!7914)

(declare-fun lt!344879 () SeekEntryResult!7914)

(assert (=> b!774355 (= res!523680 (= lt!344873 lt!344879))))

(declare-fun lt!344872 () (_ BitVec 64))

(declare-fun lt!344884 () array!42430)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42430 (_ BitVec 32)) SeekEntryResult!7914)

(assert (=> b!774355 (= lt!344879 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!344872 lt!344884 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!774355 (= lt!344873 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!344872 mask!3328) lt!344872 lt!344884 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!774355 (= lt!344872 (select (store (arr!20307 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!774355 (= lt!344884 (array!42431 (store (arr!20307 a!3186) i!1173 k!2102) (size!20728 a!3186)))))

(declare-fun lt!344876 () SeekEntryResult!7914)

(declare-fun e!431067 () Bool)

(declare-fun b!774356 () Bool)

(assert (=> b!774356 (= e!431067 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344877 (select (arr!20307 a!3186) j!159) a!3186 mask!3328) lt!344876)))))

(declare-fun e!431064 () Bool)

(declare-fun b!774357 () Bool)

(assert (=> b!774357 (= e!431064 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20307 a!3186) j!159) a!3186 mask!3328) lt!344876))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!431072 () Bool)

(declare-fun b!774358 () Bool)

(declare-fun lt!344878 () SeekEntryResult!7914)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42430 (_ BitVec 32)) SeekEntryResult!7914)

(assert (=> b!774358 (= e!431072 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20307 a!3186) j!159) a!3186 mask!3328) lt!344878))))

(declare-fun b!774359 () Bool)

(declare-fun res!523692 () Bool)

(assert (=> b!774359 (=> res!523692 e!431070)))

(assert (=> b!774359 (= res!523692 e!431067)))

(declare-fun c!85739 () Bool)

(assert (=> b!774359 (= c!85739 lt!344881)))

(declare-fun res!523689 () Bool)

(assert (=> start!67120 (=> (not res!523689) (not e!431065))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67120 (= res!523689 (validMask!0 mask!3328))))

(assert (=> start!67120 e!431065))

(assert (=> start!67120 true))

(declare-fun array_inv!16081 (array!42430) Bool)

(assert (=> start!67120 (array_inv!16081 a!3186)))

(declare-fun b!774360 () Bool)

(assert (=> b!774360 (= e!431065 e!431063)))

(declare-fun res!523679 () Bool)

(assert (=> b!774360 (=> (not res!523679) (not e!431063))))

(declare-fun lt!344882 () SeekEntryResult!7914)

(assert (=> b!774360 (= res!523679 (or (= lt!344882 (MissingZero!7914 i!1173)) (= lt!344882 (MissingVacant!7914 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42430 (_ BitVec 32)) SeekEntryResult!7914)

(assert (=> b!774360 (= lt!344882 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!774361 () Bool)

(declare-fun res!523684 () Bool)

(assert (=> b!774361 (=> (not res!523684) (not e!431068))))

(assert (=> b!774361 (= res!523684 e!431064)))

(declare-fun c!85740 () Bool)

(assert (=> b!774361 (= c!85740 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!774362 () Bool)

(declare-fun Unit!26694 () Unit!26692)

(assert (=> b!774362 (= e!431066 Unit!26694)))

(declare-fun lt!344875 () SeekEntryResult!7914)

(assert (=> b!774362 (= lt!344875 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20307 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!344880 () SeekEntryResult!7914)

(assert (=> b!774362 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344877 resIntermediateIndex!5 (select (arr!20307 a!3186) j!159) a!3186 mask!3328) lt!344880)))

(declare-fun b!774363 () Bool)

(assert (=> b!774363 (= e!431074 (not e!431071))))

(declare-fun res!523687 () Bool)

(assert (=> b!774363 (=> res!523687 e!431071)))

(assert (=> b!774363 (= res!523687 (or (not (is-Intermediate!7914 lt!344879)) (bvsge x!1131 (x!65002 lt!344879))))))

(assert (=> b!774363 (= lt!344880 (Found!7914 j!159))))

(declare-fun e!431073 () Bool)

(assert (=> b!774363 e!431073))

(declare-fun res!523683 () Bool)

(assert (=> b!774363 (=> (not res!523683) (not e!431073))))

(assert (=> b!774363 (= res!523683 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!344874 () Unit!26692)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42430 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26692)

(assert (=> b!774363 (= lt!344874 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!774364 () Bool)

(declare-fun res!523681 () Bool)

(assert (=> b!774364 (=> res!523681 e!431070)))

(assert (=> b!774364 (= res!523681 (not (= lt!344873 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344877 lt!344872 lt!344884 mask!3328))))))

(declare-fun b!774365 () Bool)

(assert (=> b!774365 (= e!431063 e!431068)))

(declare-fun res!523677 () Bool)

(assert (=> b!774365 (=> (not res!523677) (not e!431068))))

(assert (=> b!774365 (= res!523677 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20307 a!3186) j!159) mask!3328) (select (arr!20307 a!3186) j!159) a!3186 mask!3328) lt!344876))))

(assert (=> b!774365 (= lt!344876 (Intermediate!7914 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!774366 () Bool)

(declare-fun res!523688 () Bool)

(assert (=> b!774366 (=> (not res!523688) (not e!431063))))

(assert (=> b!774366 (= res!523688 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20728 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20728 a!3186))))))

(declare-fun b!774367 () Bool)

(assert (=> b!774367 (= e!431073 e!431072)))

(declare-fun res!523685 () Bool)

(assert (=> b!774367 (=> (not res!523685) (not e!431072))))

(assert (=> b!774367 (= res!523685 (= (seekEntryOrOpen!0 (select (arr!20307 a!3186) j!159) a!3186 mask!3328) lt!344878))))

(assert (=> b!774367 (= lt!344878 (Found!7914 j!159))))

(declare-fun b!774368 () Bool)

(assert (=> b!774368 (= e!431064 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20307 a!3186) j!159) a!3186 mask!3328) (Found!7914 j!159)))))

(declare-fun b!774369 () Bool)

(declare-fun res!523686 () Bool)

(assert (=> b!774369 (=> (not res!523686) (not e!431065))))

(declare-fun arrayContainsKey!0 (array!42430 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!774369 (= res!523686 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!774370 () Bool)

(declare-fun res!523676 () Bool)

(assert (=> b!774370 (=> (not res!523676) (not e!431065))))

(assert (=> b!774370 (= res!523676 (and (= (size!20728 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20728 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20728 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!774371 () Bool)

(declare-fun res!523678 () Bool)

(assert (=> b!774371 (=> (not res!523678) (not e!431063))))

(declare-datatypes ((List!14362 0))(
  ( (Nil!14359) (Cons!14358 (h!15466 (_ BitVec 64)) (t!20685 List!14362)) )
))
(declare-fun arrayNoDuplicates!0 (array!42430 (_ BitVec 32) List!14362) Bool)

(assert (=> b!774371 (= res!523678 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14359))))

(declare-fun b!774372 () Bool)

(assert (=> b!774372 (= e!431070 (bvslt (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!1131)) (bvsub #b01111111111111111111111111111110 x!1131)))))

(declare-fun b!774373 () Bool)

(declare-fun Unit!26695 () Unit!26692)

(assert (=> b!774373 (= e!431066 Unit!26695)))

(assert (=> b!774373 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344877 (select (arr!20307 a!3186) j!159) a!3186 mask!3328) lt!344876)))

(declare-fun b!774374 () Bool)

(assert (=> b!774374 (= e!431067 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344877 resIntermediateIndex!5 (select (arr!20307 a!3186) j!159) a!3186 mask!3328) lt!344880)))))

(declare-fun b!774375 () Bool)

(declare-fun res!523682 () Bool)

(assert (=> b!774375 (=> (not res!523682) (not e!431068))))

(assert (=> b!774375 (= res!523682 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20307 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!67120 res!523689) b!774370))

(assert (= (and b!774370 res!523676) b!774352))

(assert (= (and b!774352 res!523693) b!774351))

(assert (= (and b!774351 res!523691) b!774369))

(assert (= (and b!774369 res!523686) b!774360))

(assert (= (and b!774360 res!523679) b!774354))

(assert (= (and b!774354 res!523675) b!774371))

(assert (= (and b!774371 res!523678) b!774366))

(assert (= (and b!774366 res!523688) b!774365))

(assert (= (and b!774365 res!523677) b!774375))

(assert (= (and b!774375 res!523682) b!774361))

(assert (= (and b!774361 c!85740) b!774357))

(assert (= (and b!774361 (not c!85740)) b!774368))

(assert (= (and b!774361 res!523684) b!774355))

(assert (= (and b!774355 res!523680) b!774363))

(assert (= (and b!774363 res!523683) b!774367))

(assert (= (and b!774367 res!523685) b!774358))

(assert (= (and b!774363 (not res!523687)) b!774353))

(assert (= (and b!774353 c!85738) b!774373))

(assert (= (and b!774353 (not c!85738)) b!774362))

(assert (= (and b!774353 (not res!523690)) b!774359))

(assert (= (and b!774359 c!85739) b!774356))

(assert (= (and b!774359 (not c!85739)) b!774374))

(assert (= (and b!774359 (not res!523692)) b!774364))

(assert (= (and b!774364 (not res!523681)) b!774372))

(declare-fun m!718879 () Bool)

(assert (=> b!774367 m!718879))

(assert (=> b!774367 m!718879))

(declare-fun m!718881 () Bool)

(assert (=> b!774367 m!718881))

(declare-fun m!718883 () Bool)

(assert (=> b!774360 m!718883))

(assert (=> b!774373 m!718879))

(assert (=> b!774373 m!718879))

(declare-fun m!718885 () Bool)

(assert (=> b!774373 m!718885))

(assert (=> b!774357 m!718879))

(assert (=> b!774357 m!718879))

(declare-fun m!718887 () Bool)

(assert (=> b!774357 m!718887))

(declare-fun m!718889 () Bool)

(assert (=> b!774354 m!718889))

(declare-fun m!718891 () Bool)

(assert (=> b!774351 m!718891))

(declare-fun m!718893 () Bool)

(assert (=> b!774375 m!718893))

(assert (=> b!774352 m!718879))

(assert (=> b!774352 m!718879))

(declare-fun m!718895 () Bool)

(assert (=> b!774352 m!718895))

(declare-fun m!718897 () Bool)

(assert (=> b!774369 m!718897))

(assert (=> b!774374 m!718879))

(assert (=> b!774374 m!718879))

(declare-fun m!718899 () Bool)

(assert (=> b!774374 m!718899))

(assert (=> b!774362 m!718879))

(assert (=> b!774362 m!718879))

(declare-fun m!718901 () Bool)

(assert (=> b!774362 m!718901))

(assert (=> b!774362 m!718879))

(assert (=> b!774362 m!718899))

(declare-fun m!718903 () Bool)

(assert (=> b!774364 m!718903))

(assert (=> b!774368 m!718879))

(assert (=> b!774368 m!718879))

(assert (=> b!774368 m!718901))

(assert (=> b!774365 m!718879))

(assert (=> b!774365 m!718879))

(declare-fun m!718905 () Bool)

(assert (=> b!774365 m!718905))

(assert (=> b!774365 m!718905))

(assert (=> b!774365 m!718879))

(declare-fun m!718907 () Bool)

(assert (=> b!774365 m!718907))

(declare-fun m!718909 () Bool)

(assert (=> start!67120 m!718909))

(declare-fun m!718911 () Bool)

(assert (=> start!67120 m!718911))

(declare-fun m!718913 () Bool)

(assert (=> b!774371 m!718913))

(declare-fun m!718915 () Bool)

(assert (=> b!774355 m!718915))

(declare-fun m!718917 () Bool)

(assert (=> b!774355 m!718917))

(assert (=> b!774355 m!718915))

(declare-fun m!718919 () Bool)

(assert (=> b!774355 m!718919))

(declare-fun m!718921 () Bool)

(assert (=> b!774355 m!718921))

(declare-fun m!718923 () Bool)

(assert (=> b!774355 m!718923))

(assert (=> b!774358 m!718879))

(assert (=> b!774358 m!718879))

(declare-fun m!718925 () Bool)

(assert (=> b!774358 m!718925))

(declare-fun m!718927 () Bool)

(assert (=> b!774363 m!718927))

(declare-fun m!718929 () Bool)

(assert (=> b!774363 m!718929))

(declare-fun m!718931 () Bool)

(assert (=> b!774353 m!718931))

(assert (=> b!774356 m!718879))

(assert (=> b!774356 m!718879))

(assert (=> b!774356 m!718885))

(push 1)

(assert (not b!774364))

(assert (not b!774362))

(assert (not b!774357))

(assert (not b!774352))

(assert (not b!774354))

(assert (not b!774356))

(assert (not b!774369))

(assert (not b!774363))

(assert (not b!774365))

(assert (not b!774351))

(assert (not b!774360))

(assert (not b!774374))

(assert (not b!774353))

(assert (not b!774373))

(assert (not b!774355))

(assert (not b!774371))

(assert (not b!774367))

(assert (not b!774358))

(assert (not b!774368))

(assert (not start!67120))

(check-sat)

(pop 1)

(push 1)

(check-sat)

