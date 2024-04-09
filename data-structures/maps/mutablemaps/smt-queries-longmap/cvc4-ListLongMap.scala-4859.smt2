; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67016 () Bool)

(assert start!67016)

(declare-fun b!772829 () Bool)

(declare-fun res!522742 () Bool)

(declare-fun e!430258 () Bool)

(assert (=> b!772829 (=> (not res!522742) (not e!430258))))

(declare-datatypes ((array!42395 0))(
  ( (array!42396 (arr!20291 (Array (_ BitVec 32) (_ BitVec 64))) (size!20712 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42395)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42395 (_ BitVec 32)) Bool)

(assert (=> b!772829 (= res!522742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!772830 () Bool)

(declare-fun res!522745 () Bool)

(declare-fun e!430255 () Bool)

(assert (=> b!772830 (=> (not res!522745) (not e!430255))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!772830 (= res!522745 (validKeyInArray!0 k!2102))))

(declare-fun b!772831 () Bool)

(declare-fun res!522731 () Bool)

(assert (=> b!772831 (=> (not res!522731) (not e!430255))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!772831 (= res!522731 (validKeyInArray!0 (select (arr!20291 a!3186) j!159)))))

(declare-fun b!772832 () Bool)

(declare-fun res!522739 () Bool)

(declare-fun e!430254 () Bool)

(assert (=> b!772832 (=> (not res!522739) (not e!430254))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!772832 (= res!522739 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20291 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!772833 () Bool)

(assert (=> b!772833 (= e!430258 e!430254)))

(declare-fun res!522744 () Bool)

(assert (=> b!772833 (=> (not res!522744) (not e!430254))))

(declare-datatypes ((SeekEntryResult!7898 0))(
  ( (MissingZero!7898 (index!33959 (_ BitVec 32))) (Found!7898 (index!33960 (_ BitVec 32))) (Intermediate!7898 (undefined!8710 Bool) (index!33961 (_ BitVec 32)) (x!64926 (_ BitVec 32))) (Undefined!7898) (MissingVacant!7898 (index!33962 (_ BitVec 32))) )
))
(declare-fun lt!344117 () SeekEntryResult!7898)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42395 (_ BitVec 32)) SeekEntryResult!7898)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!772833 (= res!522744 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20291 a!3186) j!159) mask!3328) (select (arr!20291 a!3186) j!159) a!3186 mask!3328) lt!344117))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!772833 (= lt!344117 (Intermediate!7898 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!772834 () Bool)

(declare-fun res!522743 () Bool)

(assert (=> b!772834 (=> (not res!522743) (not e!430255))))

(declare-fun arrayContainsKey!0 (array!42395 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!772834 (= res!522743 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!772835 () Bool)

(declare-datatypes ((Unit!26628 0))(
  ( (Unit!26629) )
))
(declare-fun e!430256 () Unit!26628)

(declare-fun Unit!26630 () Unit!26628)

(assert (=> b!772835 (= e!430256 Unit!26630)))

(declare-fun lt!344119 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!772835 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344119 (select (arr!20291 a!3186) j!159) a!3186 mask!3328) lt!344117)))

(declare-fun b!772836 () Bool)

(declare-fun e!430257 () Bool)

(assert (=> b!772836 (= e!430254 e!430257)))

(declare-fun res!522733 () Bool)

(assert (=> b!772836 (=> (not res!522733) (not e!430257))))

(declare-fun lt!344118 () SeekEntryResult!7898)

(declare-fun lt!344122 () SeekEntryResult!7898)

(assert (=> b!772836 (= res!522733 (= lt!344118 lt!344122))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!344115 () (_ BitVec 64))

(declare-fun lt!344114 () array!42395)

(assert (=> b!772836 (= lt!344122 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!344115 lt!344114 mask!3328))))

(assert (=> b!772836 (= lt!344118 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!344115 mask!3328) lt!344115 lt!344114 mask!3328))))

(assert (=> b!772836 (= lt!344115 (select (store (arr!20291 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!772836 (= lt!344114 (array!42396 (store (arr!20291 a!3186) i!1173 k!2102) (size!20712 a!3186)))))

(declare-fun lt!344116 () SeekEntryResult!7898)

(declare-fun e!430259 () Bool)

(declare-fun b!772837 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42395 (_ BitVec 32)) SeekEntryResult!7898)

(assert (=> b!772837 (= e!430259 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20291 a!3186) j!159) a!3186 mask!3328) lt!344116))))

(declare-fun res!522737 () Bool)

(assert (=> start!67016 (=> (not res!522737) (not e!430255))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67016 (= res!522737 (validMask!0 mask!3328))))

(assert (=> start!67016 e!430255))

(assert (=> start!67016 true))

(declare-fun array_inv!16065 (array!42395) Bool)

(assert (=> start!67016 (array_inv!16065 a!3186)))

(declare-fun b!772838 () Bool)

(declare-fun e!430260 () Bool)

(assert (=> b!772838 (= e!430260 true)))

(declare-fun lt!344112 () Unit!26628)

(assert (=> b!772838 (= lt!344112 e!430256)))

(declare-fun c!85448 () Bool)

(assert (=> b!772838 (= c!85448 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!772838 (= lt!344119 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!772839 () Bool)

(assert (=> b!772839 (= e!430257 (not e!430260))))

(declare-fun res!522730 () Bool)

(assert (=> b!772839 (=> res!522730 e!430260)))

(assert (=> b!772839 (= res!522730 (or (not (is-Intermediate!7898 lt!344122)) (bvsge x!1131 (x!64926 lt!344122))))))

(declare-fun e!430261 () Bool)

(assert (=> b!772839 e!430261))

(declare-fun res!522734 () Bool)

(assert (=> b!772839 (=> (not res!522734) (not e!430261))))

(assert (=> b!772839 (= res!522734 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!344120 () Unit!26628)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42395 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26628)

(assert (=> b!772839 (= lt!344120 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!772840 () Bool)

(declare-fun res!522738 () Bool)

(assert (=> b!772840 (=> (not res!522738) (not e!430254))))

(declare-fun e!430252 () Bool)

(assert (=> b!772840 (= res!522738 e!430252)))

(declare-fun c!85449 () Bool)

(assert (=> b!772840 (= c!85449 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!772841 () Bool)

(declare-fun Unit!26631 () Unit!26628)

(assert (=> b!772841 (= e!430256 Unit!26631)))

(declare-fun lt!344113 () SeekEntryResult!7898)

(assert (=> b!772841 (= lt!344113 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20291 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!772841 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344119 resIntermediateIndex!5 (select (arr!20291 a!3186) j!159) a!3186 mask!3328) (Found!7898 j!159))))

(declare-fun b!772842 () Bool)

(assert (=> b!772842 (= e!430255 e!430258)))

(declare-fun res!522736 () Bool)

(assert (=> b!772842 (=> (not res!522736) (not e!430258))))

(declare-fun lt!344121 () SeekEntryResult!7898)

(assert (=> b!772842 (= res!522736 (or (= lt!344121 (MissingZero!7898 i!1173)) (= lt!344121 (MissingVacant!7898 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42395 (_ BitVec 32)) SeekEntryResult!7898)

(assert (=> b!772842 (= lt!344121 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!772843 () Bool)

(assert (=> b!772843 (= e!430252 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20291 a!3186) j!159) a!3186 mask!3328) lt!344117))))

(declare-fun b!772844 () Bool)

(declare-fun res!522732 () Bool)

(assert (=> b!772844 (=> (not res!522732) (not e!430258))))

(declare-datatypes ((List!14346 0))(
  ( (Nil!14343) (Cons!14342 (h!15447 (_ BitVec 64)) (t!20669 List!14346)) )
))
(declare-fun arrayNoDuplicates!0 (array!42395 (_ BitVec 32) List!14346) Bool)

(assert (=> b!772844 (= res!522732 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14343))))

(declare-fun b!772845 () Bool)

(assert (=> b!772845 (= e!430252 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20291 a!3186) j!159) a!3186 mask!3328) (Found!7898 j!159)))))

(declare-fun b!772846 () Bool)

(assert (=> b!772846 (= e!430261 e!430259)))

(declare-fun res!522740 () Bool)

(assert (=> b!772846 (=> (not res!522740) (not e!430259))))

(assert (=> b!772846 (= res!522740 (= (seekEntryOrOpen!0 (select (arr!20291 a!3186) j!159) a!3186 mask!3328) lt!344116))))

(assert (=> b!772846 (= lt!344116 (Found!7898 j!159))))

(declare-fun b!772847 () Bool)

(declare-fun res!522735 () Bool)

(assert (=> b!772847 (=> (not res!522735) (not e!430258))))

(assert (=> b!772847 (= res!522735 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20712 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20712 a!3186))))))

(declare-fun b!772848 () Bool)

(declare-fun res!522741 () Bool)

(assert (=> b!772848 (=> (not res!522741) (not e!430255))))

(assert (=> b!772848 (= res!522741 (and (= (size!20712 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20712 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20712 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!67016 res!522737) b!772848))

(assert (= (and b!772848 res!522741) b!772831))

(assert (= (and b!772831 res!522731) b!772830))

(assert (= (and b!772830 res!522745) b!772834))

(assert (= (and b!772834 res!522743) b!772842))

(assert (= (and b!772842 res!522736) b!772829))

(assert (= (and b!772829 res!522742) b!772844))

(assert (= (and b!772844 res!522732) b!772847))

(assert (= (and b!772847 res!522735) b!772833))

(assert (= (and b!772833 res!522744) b!772832))

(assert (= (and b!772832 res!522739) b!772840))

(assert (= (and b!772840 c!85449) b!772843))

(assert (= (and b!772840 (not c!85449)) b!772845))

(assert (= (and b!772840 res!522738) b!772836))

(assert (= (and b!772836 res!522733) b!772839))

(assert (= (and b!772839 res!522734) b!772846))

(assert (= (and b!772846 res!522740) b!772837))

(assert (= (and b!772839 (not res!522730)) b!772838))

(assert (= (and b!772838 c!85448) b!772835))

(assert (= (and b!772838 (not c!85448)) b!772841))

(declare-fun m!717699 () Bool)

(assert (=> b!772833 m!717699))

(assert (=> b!772833 m!717699))

(declare-fun m!717701 () Bool)

(assert (=> b!772833 m!717701))

(assert (=> b!772833 m!717701))

(assert (=> b!772833 m!717699))

(declare-fun m!717703 () Bool)

(assert (=> b!772833 m!717703))

(declare-fun m!717705 () Bool)

(assert (=> b!772839 m!717705))

(declare-fun m!717707 () Bool)

(assert (=> b!772839 m!717707))

(assert (=> b!772841 m!717699))

(assert (=> b!772841 m!717699))

(declare-fun m!717709 () Bool)

(assert (=> b!772841 m!717709))

(assert (=> b!772841 m!717699))

(declare-fun m!717711 () Bool)

(assert (=> b!772841 m!717711))

(declare-fun m!717713 () Bool)

(assert (=> b!772838 m!717713))

(declare-fun m!717715 () Bool)

(assert (=> b!772842 m!717715))

(assert (=> b!772843 m!717699))

(assert (=> b!772843 m!717699))

(declare-fun m!717717 () Bool)

(assert (=> b!772843 m!717717))

(declare-fun m!717719 () Bool)

(assert (=> b!772830 m!717719))

(assert (=> b!772837 m!717699))

(assert (=> b!772837 m!717699))

(declare-fun m!717721 () Bool)

(assert (=> b!772837 m!717721))

(assert (=> b!772845 m!717699))

(assert (=> b!772845 m!717699))

(assert (=> b!772845 m!717709))

(declare-fun m!717723 () Bool)

(assert (=> b!772832 m!717723))

(assert (=> b!772846 m!717699))

(assert (=> b!772846 m!717699))

(declare-fun m!717725 () Bool)

(assert (=> b!772846 m!717725))

(declare-fun m!717727 () Bool)

(assert (=> b!772829 m!717727))

(assert (=> b!772831 m!717699))

(assert (=> b!772831 m!717699))

(declare-fun m!717729 () Bool)

(assert (=> b!772831 m!717729))

(declare-fun m!717731 () Bool)

(assert (=> b!772844 m!717731))

(assert (=> b!772835 m!717699))

(assert (=> b!772835 m!717699))

(declare-fun m!717733 () Bool)

(assert (=> b!772835 m!717733))

(declare-fun m!717735 () Bool)

(assert (=> b!772834 m!717735))

(declare-fun m!717737 () Bool)

(assert (=> start!67016 m!717737))

(declare-fun m!717739 () Bool)

(assert (=> start!67016 m!717739))

(declare-fun m!717741 () Bool)

(assert (=> b!772836 m!717741))

(declare-fun m!717743 () Bool)

(assert (=> b!772836 m!717743))

(declare-fun m!717745 () Bool)

(assert (=> b!772836 m!717745))

(declare-fun m!717747 () Bool)

(assert (=> b!772836 m!717747))

(declare-fun m!717749 () Bool)

(assert (=> b!772836 m!717749))

(assert (=> b!772836 m!717741))

(push 1)

