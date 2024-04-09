; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67712 () Bool)

(assert start!67712)

(declare-fun b!784553 () Bool)

(declare-fun res!531087 () Bool)

(declare-fun e!436220 () Bool)

(assert (=> b!784553 (=> (not res!531087) (not e!436220))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42707 0))(
  ( (array!42708 (arr!20438 (Array (_ BitVec 32) (_ BitVec 64))) (size!20859 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42707)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!784553 (= res!531087 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20859 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20859 a!3186))))))

(declare-fun b!784554 () Bool)

(declare-fun e!436213 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8045 0))(
  ( (MissingZero!8045 (index!34547 (_ BitVec 32))) (Found!8045 (index!34548 (_ BitVec 32))) (Intermediate!8045 (undefined!8857 Bool) (index!34549 (_ BitVec 32)) (x!65522 (_ BitVec 32))) (Undefined!8045) (MissingVacant!8045 (index!34550 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42707 (_ BitVec 32)) SeekEntryResult!8045)

(assert (=> b!784554 (= e!436213 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20438 a!3186) j!159) a!3186 mask!3328) (Found!8045 j!159)))))

(declare-fun res!531080 () Bool)

(declare-fun e!436217 () Bool)

(assert (=> start!67712 (=> (not res!531080) (not e!436217))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67712 (= res!531080 (validMask!0 mask!3328))))

(assert (=> start!67712 e!436217))

(assert (=> start!67712 true))

(declare-fun array_inv!16212 (array!42707) Bool)

(assert (=> start!67712 (array_inv!16212 a!3186)))

(declare-fun b!784555 () Bool)

(declare-fun res!531079 () Bool)

(assert (=> b!784555 (=> (not res!531079) (not e!436220))))

(declare-datatypes ((List!14493 0))(
  ( (Nil!14490) (Cons!14489 (h!15612 (_ BitVec 64)) (t!20816 List!14493)) )
))
(declare-fun arrayNoDuplicates!0 (array!42707 (_ BitVec 32) List!14493) Bool)

(assert (=> b!784555 (= res!531079 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14490))))

(declare-fun b!784556 () Bool)

(declare-fun e!436218 () Bool)

(declare-fun e!436211 () Bool)

(assert (=> b!784556 (= e!436218 e!436211)))

(declare-fun res!531082 () Bool)

(assert (=> b!784556 (=> res!531082 e!436211)))

(declare-fun lt!349782 () SeekEntryResult!8045)

(declare-fun lt!349780 () SeekEntryResult!8045)

(assert (=> b!784556 (= res!531082 (not (= lt!349782 lt!349780)))))

(assert (=> b!784556 (= lt!349782 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20438 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!784557 () Bool)

(declare-fun e!436219 () Bool)

(declare-fun lt!349779 () SeekEntryResult!8045)

(assert (=> b!784557 (= e!436219 (= lt!349779 lt!349782))))

(declare-fun b!784558 () Bool)

(declare-fun res!531073 () Bool)

(assert (=> b!784558 (=> (not res!531073) (not e!436219))))

(declare-fun lt!349787 () array!42707)

(declare-fun lt!349788 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42707 (_ BitVec 32)) SeekEntryResult!8045)

(assert (=> b!784558 (= res!531073 (= (seekEntryOrOpen!0 lt!349788 lt!349787 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!349788 lt!349787 mask!3328)))))

(declare-fun b!784559 () Bool)

(declare-fun res!531086 () Bool)

(declare-fun e!436212 () Bool)

(assert (=> b!784559 (=> (not res!531086) (not e!436212))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!784559 (= res!531086 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20438 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!784560 () Bool)

(declare-fun res!531083 () Bool)

(assert (=> b!784560 (=> (not res!531083) (not e!436217))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42707 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!784560 (= res!531083 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun lt!349781 () SeekEntryResult!8045)

(declare-fun b!784561 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42707 (_ BitVec 32)) SeekEntryResult!8045)

(assert (=> b!784561 (= e!436213 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20438 a!3186) j!159) a!3186 mask!3328) lt!349781))))

(declare-fun b!784562 () Bool)

(declare-fun e!436214 () Bool)

(assert (=> b!784562 (= e!436214 true)))

(assert (=> b!784562 e!436219))

(declare-fun res!531078 () Bool)

(assert (=> b!784562 (=> (not res!531078) (not e!436219))))

(declare-fun lt!349789 () (_ BitVec 64))

(assert (=> b!784562 (= res!531078 (= lt!349789 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!27090 0))(
  ( (Unit!27091) )
))
(declare-fun lt!349785 () Unit!27090)

(declare-fun e!436222 () Unit!27090)

(assert (=> b!784562 (= lt!349785 e!436222)))

(declare-fun c!87150 () Bool)

(assert (=> b!784562 (= c!87150 (= lt!349789 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!784563 () Bool)

(declare-fun Unit!27092 () Unit!27090)

(assert (=> b!784563 (= e!436222 Unit!27092)))

(assert (=> b!784563 false))

(declare-fun b!784564 () Bool)

(declare-fun res!531072 () Bool)

(assert (=> b!784564 (=> (not res!531072) (not e!436217))))

(assert (=> b!784564 (= res!531072 (and (= (size!20859 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20859 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20859 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!784565 () Bool)

(declare-fun res!531085 () Bool)

(assert (=> b!784565 (=> (not res!531085) (not e!436217))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!784565 (= res!531085 (validKeyInArray!0 (select (arr!20438 a!3186) j!159)))))

(declare-fun b!784566 () Bool)

(declare-fun res!531081 () Bool)

(assert (=> b!784566 (=> (not res!531081) (not e!436217))))

(assert (=> b!784566 (= res!531081 (validKeyInArray!0 k!2102))))

(declare-fun b!784567 () Bool)

(declare-fun res!531084 () Bool)

(assert (=> b!784567 (=> (not res!531084) (not e!436212))))

(assert (=> b!784567 (= res!531084 e!436213)))

(declare-fun c!87149 () Bool)

(assert (=> b!784567 (= c!87149 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!784568 () Bool)

(declare-fun Unit!27093 () Unit!27090)

(assert (=> b!784568 (= e!436222 Unit!27093)))

(declare-fun b!784569 () Bool)

(declare-fun e!436216 () Bool)

(assert (=> b!784569 (= e!436216 (not e!436218))))

(declare-fun res!531075 () Bool)

(assert (=> b!784569 (=> res!531075 e!436218)))

(declare-fun lt!349778 () SeekEntryResult!8045)

(assert (=> b!784569 (= res!531075 (or (not (is-Intermediate!8045 lt!349778)) (bvslt x!1131 (x!65522 lt!349778)) (not (= x!1131 (x!65522 lt!349778))) (not (= index!1321 (index!34549 lt!349778)))))))

(declare-fun e!436215 () Bool)

(assert (=> b!784569 e!436215))

(declare-fun res!531074 () Bool)

(assert (=> b!784569 (=> (not res!531074) (not e!436215))))

(assert (=> b!784569 (= res!531074 (= lt!349779 lt!349780))))

(assert (=> b!784569 (= lt!349780 (Found!8045 j!159))))

(assert (=> b!784569 (= lt!349779 (seekEntryOrOpen!0 (select (arr!20438 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42707 (_ BitVec 32)) Bool)

(assert (=> b!784569 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!349784 () Unit!27090)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42707 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27090)

(assert (=> b!784569 (= lt!349784 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!784570 () Bool)

(assert (=> b!784570 (= e!436217 e!436220)))

(declare-fun res!531070 () Bool)

(assert (=> b!784570 (=> (not res!531070) (not e!436220))))

(declare-fun lt!349783 () SeekEntryResult!8045)

(assert (=> b!784570 (= res!531070 (or (= lt!349783 (MissingZero!8045 i!1173)) (= lt!349783 (MissingVacant!8045 i!1173))))))

(assert (=> b!784570 (= lt!349783 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!784571 () Bool)

(assert (=> b!784571 (= e!436211 e!436214)))

(declare-fun res!531077 () Bool)

(assert (=> b!784571 (=> res!531077 e!436214)))

(assert (=> b!784571 (= res!531077 (= lt!349789 lt!349788))))

(assert (=> b!784571 (= lt!349789 (select (store (arr!20438 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!784572 () Bool)

(assert (=> b!784572 (= e!436215 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20438 a!3186) j!159) a!3186 mask!3328) lt!349780))))

(declare-fun b!784573 () Bool)

(assert (=> b!784573 (= e!436212 e!436216)))

(declare-fun res!531076 () Bool)

(assert (=> b!784573 (=> (not res!531076) (not e!436216))))

(declare-fun lt!349786 () SeekEntryResult!8045)

(assert (=> b!784573 (= res!531076 (= lt!349786 lt!349778))))

(assert (=> b!784573 (= lt!349778 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!349788 lt!349787 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!784573 (= lt!349786 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!349788 mask!3328) lt!349788 lt!349787 mask!3328))))

(assert (=> b!784573 (= lt!349788 (select (store (arr!20438 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!784573 (= lt!349787 (array!42708 (store (arr!20438 a!3186) i!1173 k!2102) (size!20859 a!3186)))))

(declare-fun b!784574 () Bool)

(declare-fun res!531088 () Bool)

(assert (=> b!784574 (=> (not res!531088) (not e!436220))))

(assert (=> b!784574 (= res!531088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!784575 () Bool)

(assert (=> b!784575 (= e!436220 e!436212)))

(declare-fun res!531071 () Bool)

(assert (=> b!784575 (=> (not res!531071) (not e!436212))))

(assert (=> b!784575 (= res!531071 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20438 a!3186) j!159) mask!3328) (select (arr!20438 a!3186) j!159) a!3186 mask!3328) lt!349781))))

(assert (=> b!784575 (= lt!349781 (Intermediate!8045 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!67712 res!531080) b!784564))

(assert (= (and b!784564 res!531072) b!784565))

(assert (= (and b!784565 res!531085) b!784566))

(assert (= (and b!784566 res!531081) b!784560))

(assert (= (and b!784560 res!531083) b!784570))

(assert (= (and b!784570 res!531070) b!784574))

(assert (= (and b!784574 res!531088) b!784555))

(assert (= (and b!784555 res!531079) b!784553))

(assert (= (and b!784553 res!531087) b!784575))

(assert (= (and b!784575 res!531071) b!784559))

(assert (= (and b!784559 res!531086) b!784567))

(assert (= (and b!784567 c!87149) b!784561))

(assert (= (and b!784567 (not c!87149)) b!784554))

(assert (= (and b!784567 res!531084) b!784573))

(assert (= (and b!784573 res!531076) b!784569))

(assert (= (and b!784569 res!531074) b!784572))

(assert (= (and b!784569 (not res!531075)) b!784556))

(assert (= (and b!784556 (not res!531082)) b!784571))

(assert (= (and b!784571 (not res!531077)) b!784562))

(assert (= (and b!784562 c!87150) b!784563))

(assert (= (and b!784562 (not c!87150)) b!784568))

(assert (= (and b!784562 res!531078) b!784558))

(assert (= (and b!784558 res!531073) b!784557))

(declare-fun m!726885 () Bool)

(assert (=> b!784556 m!726885))

(assert (=> b!784556 m!726885))

(declare-fun m!726887 () Bool)

(assert (=> b!784556 m!726887))

(assert (=> b!784569 m!726885))

(assert (=> b!784569 m!726885))

(declare-fun m!726889 () Bool)

(assert (=> b!784569 m!726889))

(declare-fun m!726891 () Bool)

(assert (=> b!784569 m!726891))

(declare-fun m!726893 () Bool)

(assert (=> b!784569 m!726893))

(declare-fun m!726895 () Bool)

(assert (=> b!784566 m!726895))

(declare-fun m!726897 () Bool)

(assert (=> b!784559 m!726897))

(declare-fun m!726899 () Bool)

(assert (=> b!784571 m!726899))

(declare-fun m!726901 () Bool)

(assert (=> b!784571 m!726901))

(declare-fun m!726903 () Bool)

(assert (=> b!784558 m!726903))

(declare-fun m!726905 () Bool)

(assert (=> b!784558 m!726905))

(declare-fun m!726907 () Bool)

(assert (=> b!784573 m!726907))

(assert (=> b!784573 m!726899))

(declare-fun m!726909 () Bool)

(assert (=> b!784573 m!726909))

(declare-fun m!726911 () Bool)

(assert (=> b!784573 m!726911))

(assert (=> b!784573 m!726907))

(declare-fun m!726913 () Bool)

(assert (=> b!784573 m!726913))

(assert (=> b!784561 m!726885))

(assert (=> b!784561 m!726885))

(declare-fun m!726915 () Bool)

(assert (=> b!784561 m!726915))

(declare-fun m!726917 () Bool)

(assert (=> b!784570 m!726917))

(assert (=> b!784565 m!726885))

(assert (=> b!784565 m!726885))

(declare-fun m!726919 () Bool)

(assert (=> b!784565 m!726919))

(assert (=> b!784554 m!726885))

(assert (=> b!784554 m!726885))

(assert (=> b!784554 m!726887))

(declare-fun m!726921 () Bool)

(assert (=> b!784560 m!726921))

(declare-fun m!726923 () Bool)

(assert (=> b!784555 m!726923))

(declare-fun m!726925 () Bool)

(assert (=> start!67712 m!726925))

(declare-fun m!726927 () Bool)

(assert (=> start!67712 m!726927))

(assert (=> b!784575 m!726885))

(assert (=> b!784575 m!726885))

(declare-fun m!726929 () Bool)

(assert (=> b!784575 m!726929))

(assert (=> b!784575 m!726929))

(assert (=> b!784575 m!726885))

(declare-fun m!726931 () Bool)

(assert (=> b!784575 m!726931))

(assert (=> b!784572 m!726885))

(assert (=> b!784572 m!726885))

(declare-fun m!726933 () Bool)

(assert (=> b!784572 m!726933))

(declare-fun m!726935 () Bool)

(assert (=> b!784574 m!726935))

(push 1)

