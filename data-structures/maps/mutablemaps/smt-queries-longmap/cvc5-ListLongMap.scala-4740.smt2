; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65518 () Bool)

(assert start!65518)

(declare-fun res!503694 () Bool)

(declare-fun e!417060 () Bool)

(assert (=> start!65518 (=> (not res!503694) (not e!417060))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65518 (= res!503694 (validMask!0 mask!3328))))

(assert (=> start!65518 e!417060))

(assert (=> start!65518 true))

(declare-datatypes ((array!41644 0))(
  ( (array!41645 (arr!19932 (Array (_ BitVec 32) (_ BitVec 64))) (size!20353 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41644)

(declare-fun array_inv!15706 (array!41644) Bool)

(assert (=> start!65518 (array_inv!15706 a!3186)))

(declare-fun b!746835 () Bool)

(declare-fun e!417059 () Bool)

(assert (=> b!746835 (= e!417060 e!417059)))

(declare-fun res!503685 () Bool)

(assert (=> b!746835 (=> (not res!503685) (not e!417059))))

(declare-datatypes ((SeekEntryResult!7539 0))(
  ( (MissingZero!7539 (index!32523 (_ BitVec 32))) (Found!7539 (index!32524 (_ BitVec 32))) (Intermediate!7539 (undefined!8351 Bool) (index!32525 (_ BitVec 32)) (x!63498 (_ BitVec 32))) (Undefined!7539) (MissingVacant!7539 (index!32526 (_ BitVec 32))) )
))
(declare-fun lt!331969 () SeekEntryResult!7539)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!746835 (= res!503685 (or (= lt!331969 (MissingZero!7539 i!1173)) (= lt!331969 (MissingVacant!7539 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41644 (_ BitVec 32)) SeekEntryResult!7539)

(assert (=> b!746835 (= lt!331969 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!746836 () Bool)

(declare-fun e!417055 () Bool)

(assert (=> b!746836 (= e!417055 true)))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!746836 (= (select (store (arr!19932 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-datatypes ((Unit!25558 0))(
  ( (Unit!25559) )
))
(declare-fun lt!331971 () Unit!25558)

(declare-fun e!417058 () Unit!25558)

(assert (=> b!746836 (= lt!331971 e!417058)))

(declare-fun c!81959 () Bool)

(assert (=> b!746836 (= c!81959 (= (select (store (arr!19932 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!746837 () Bool)

(declare-fun e!417062 () Bool)

(assert (=> b!746837 (= e!417062 (not e!417055))))

(declare-fun res!503686 () Bool)

(assert (=> b!746837 (=> res!503686 e!417055)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!331973 () SeekEntryResult!7539)

(assert (=> b!746837 (= res!503686 (or (not (is-Intermediate!7539 lt!331973)) (bvslt x!1131 (x!63498 lt!331973)) (not (= x!1131 (x!63498 lt!331973))) (not (= index!1321 (index!32525 lt!331973)))))))

(declare-fun e!417057 () Bool)

(assert (=> b!746837 e!417057))

(declare-fun res!503690 () Bool)

(assert (=> b!746837 (=> (not res!503690) (not e!417057))))

(declare-fun lt!331972 () SeekEntryResult!7539)

(declare-fun lt!331975 () SeekEntryResult!7539)

(assert (=> b!746837 (= res!503690 (= lt!331972 lt!331975))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!746837 (= lt!331975 (Found!7539 j!159))))

(assert (=> b!746837 (= lt!331972 (seekEntryOrOpen!0 (select (arr!19932 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41644 (_ BitVec 32)) Bool)

(assert (=> b!746837 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!331976 () Unit!25558)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41644 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25558)

(assert (=> b!746837 (= lt!331976 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!746838 () Bool)

(declare-fun res!503687 () Bool)

(assert (=> b!746838 (=> (not res!503687) (not e!417059))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!746838 (= res!503687 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20353 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20353 a!3186))))))

(declare-fun b!746839 () Bool)

(declare-fun res!503679 () Bool)

(assert (=> b!746839 (=> (not res!503679) (not e!417060))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!746839 (= res!503679 (validKeyInArray!0 (select (arr!19932 a!3186) j!159)))))

(declare-fun b!746840 () Bool)

(declare-fun res!503689 () Bool)

(assert (=> b!746840 (=> (not res!503689) (not e!417059))))

(declare-datatypes ((List!13987 0))(
  ( (Nil!13984) (Cons!13983 (h!15055 (_ BitVec 64)) (t!20310 List!13987)) )
))
(declare-fun arrayNoDuplicates!0 (array!41644 (_ BitVec 32) List!13987) Bool)

(assert (=> b!746840 (= res!503689 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13984))))

(declare-fun b!746841 () Bool)

(declare-fun res!503681 () Bool)

(assert (=> b!746841 (=> (not res!503681) (not e!417060))))

(assert (=> b!746841 (= res!503681 (validKeyInArray!0 k!2102))))

(declare-fun b!746842 () Bool)

(declare-fun res!503692 () Bool)

(declare-fun e!417056 () Bool)

(assert (=> b!746842 (=> (not res!503692) (not e!417056))))

(declare-fun e!417063 () Bool)

(assert (=> b!746842 (= res!503692 e!417063)))

(declare-fun c!81960 () Bool)

(assert (=> b!746842 (= c!81960 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!746843 () Bool)

(declare-fun res!503678 () Bool)

(assert (=> b!746843 (=> res!503678 e!417055)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41644 (_ BitVec 32)) SeekEntryResult!7539)

(assert (=> b!746843 (= res!503678 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19932 a!3186) j!159) a!3186 mask!3328) lt!331975)))))

(declare-fun b!746844 () Bool)

(declare-fun Unit!25560 () Unit!25558)

(assert (=> b!746844 (= e!417058 Unit!25560)))

(declare-fun b!746845 () Bool)

(declare-fun res!503688 () Bool)

(assert (=> b!746845 (=> res!503688 e!417055)))

(declare-fun lt!331970 () (_ BitVec 64))

(assert (=> b!746845 (= res!503688 (= (select (store (arr!19932 a!3186) i!1173 k!2102) index!1321) lt!331970))))

(declare-fun b!746846 () Bool)

(declare-fun res!503682 () Bool)

(assert (=> b!746846 (=> (not res!503682) (not e!417060))))

(assert (=> b!746846 (= res!503682 (and (= (size!20353 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20353 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20353 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!746847 () Bool)

(declare-fun Unit!25561 () Unit!25558)

(assert (=> b!746847 (= e!417058 Unit!25561)))

(assert (=> b!746847 false))

(declare-fun b!746848 () Bool)

(assert (=> b!746848 (= e!417056 e!417062)))

(declare-fun res!503691 () Bool)

(assert (=> b!746848 (=> (not res!503691) (not e!417062))))

(declare-fun lt!331974 () SeekEntryResult!7539)

(assert (=> b!746848 (= res!503691 (= lt!331974 lt!331973))))

(declare-fun lt!331967 () array!41644)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41644 (_ BitVec 32)) SeekEntryResult!7539)

(assert (=> b!746848 (= lt!331973 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331970 lt!331967 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!746848 (= lt!331974 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331970 mask!3328) lt!331970 lt!331967 mask!3328))))

(assert (=> b!746848 (= lt!331970 (select (store (arr!19932 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!746848 (= lt!331967 (array!41645 (store (arr!19932 a!3186) i!1173 k!2102) (size!20353 a!3186)))))

(declare-fun b!746849 () Bool)

(declare-fun res!503684 () Bool)

(assert (=> b!746849 (=> (not res!503684) (not e!417060))))

(declare-fun arrayContainsKey!0 (array!41644 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!746849 (= res!503684 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun lt!331968 () SeekEntryResult!7539)

(declare-fun b!746850 () Bool)

(assert (=> b!746850 (= e!417063 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19932 a!3186) j!159) a!3186 mask!3328) lt!331968))))

(declare-fun b!746851 () Bool)

(assert (=> b!746851 (= e!417063 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19932 a!3186) j!159) a!3186 mask!3328) (Found!7539 j!159)))))

(declare-fun b!746852 () Bool)

(assert (=> b!746852 (= e!417059 e!417056)))

(declare-fun res!503680 () Bool)

(assert (=> b!746852 (=> (not res!503680) (not e!417056))))

(assert (=> b!746852 (= res!503680 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19932 a!3186) j!159) mask!3328) (select (arr!19932 a!3186) j!159) a!3186 mask!3328) lt!331968))))

(assert (=> b!746852 (= lt!331968 (Intermediate!7539 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!746853 () Bool)

(declare-fun res!503693 () Bool)

(assert (=> b!746853 (=> (not res!503693) (not e!417056))))

(assert (=> b!746853 (= res!503693 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19932 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!746854 () Bool)

(declare-fun res!503683 () Bool)

(assert (=> b!746854 (=> (not res!503683) (not e!417059))))

(assert (=> b!746854 (= res!503683 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!746855 () Bool)

(assert (=> b!746855 (= e!417057 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19932 a!3186) j!159) a!3186 mask!3328) lt!331975))))

(assert (= (and start!65518 res!503694) b!746846))

(assert (= (and b!746846 res!503682) b!746839))

(assert (= (and b!746839 res!503679) b!746841))

(assert (= (and b!746841 res!503681) b!746849))

(assert (= (and b!746849 res!503684) b!746835))

(assert (= (and b!746835 res!503685) b!746854))

(assert (= (and b!746854 res!503683) b!746840))

(assert (= (and b!746840 res!503689) b!746838))

(assert (= (and b!746838 res!503687) b!746852))

(assert (= (and b!746852 res!503680) b!746853))

(assert (= (and b!746853 res!503693) b!746842))

(assert (= (and b!746842 c!81960) b!746850))

(assert (= (and b!746842 (not c!81960)) b!746851))

(assert (= (and b!746842 res!503692) b!746848))

(assert (= (and b!746848 res!503691) b!746837))

(assert (= (and b!746837 res!503690) b!746855))

(assert (= (and b!746837 (not res!503686)) b!746843))

(assert (= (and b!746843 (not res!503678)) b!746845))

(assert (= (and b!746845 (not res!503688)) b!746836))

(assert (= (and b!746836 c!81959) b!746847))

(assert (= (and b!746836 (not c!81959)) b!746844))

(declare-fun m!697129 () Bool)

(assert (=> b!746835 m!697129))

(declare-fun m!697131 () Bool)

(assert (=> b!746840 m!697131))

(declare-fun m!697133 () Bool)

(assert (=> b!746841 m!697133))

(declare-fun m!697135 () Bool)

(assert (=> b!746837 m!697135))

(assert (=> b!746837 m!697135))

(declare-fun m!697137 () Bool)

(assert (=> b!746837 m!697137))

(declare-fun m!697139 () Bool)

(assert (=> b!746837 m!697139))

(declare-fun m!697141 () Bool)

(assert (=> b!746837 m!697141))

(assert (=> b!746839 m!697135))

(assert (=> b!746839 m!697135))

(declare-fun m!697143 () Bool)

(assert (=> b!746839 m!697143))

(assert (=> b!746843 m!697135))

(assert (=> b!746843 m!697135))

(declare-fun m!697145 () Bool)

(assert (=> b!746843 m!697145))

(declare-fun m!697147 () Bool)

(assert (=> b!746845 m!697147))

(declare-fun m!697149 () Bool)

(assert (=> b!746845 m!697149))

(declare-fun m!697151 () Bool)

(assert (=> b!746854 m!697151))

(assert (=> b!746851 m!697135))

(assert (=> b!746851 m!697135))

(assert (=> b!746851 m!697145))

(declare-fun m!697153 () Bool)

(assert (=> start!65518 m!697153))

(declare-fun m!697155 () Bool)

(assert (=> start!65518 m!697155))

(declare-fun m!697157 () Bool)

(assert (=> b!746853 m!697157))

(declare-fun m!697159 () Bool)

(assert (=> b!746848 m!697159))

(declare-fun m!697161 () Bool)

(assert (=> b!746848 m!697161))

(assert (=> b!746848 m!697147))

(declare-fun m!697163 () Bool)

(assert (=> b!746848 m!697163))

(assert (=> b!746848 m!697159))

(declare-fun m!697165 () Bool)

(assert (=> b!746848 m!697165))

(assert (=> b!746852 m!697135))

(assert (=> b!746852 m!697135))

(declare-fun m!697167 () Bool)

(assert (=> b!746852 m!697167))

(assert (=> b!746852 m!697167))

(assert (=> b!746852 m!697135))

(declare-fun m!697169 () Bool)

(assert (=> b!746852 m!697169))

(assert (=> b!746850 m!697135))

(assert (=> b!746850 m!697135))

(declare-fun m!697171 () Bool)

(assert (=> b!746850 m!697171))

(declare-fun m!697173 () Bool)

(assert (=> b!746849 m!697173))

(assert (=> b!746855 m!697135))

(assert (=> b!746855 m!697135))

(declare-fun m!697175 () Bool)

(assert (=> b!746855 m!697175))

(assert (=> b!746836 m!697147))

(assert (=> b!746836 m!697149))

(push 1)

