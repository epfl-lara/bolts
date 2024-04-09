; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66926 () Bool)

(assert start!66926)

(declare-fun b!771827 () Bool)

(declare-fun e!429715 () Bool)

(declare-fun e!429707 () Bool)

(assert (=> b!771827 (= e!429715 (not e!429707))))

(declare-fun res!522167 () Bool)

(assert (=> b!771827 (=> res!522167 e!429707)))

(declare-datatypes ((SeekEntryResult!7889 0))(
  ( (MissingZero!7889 (index!33923 (_ BitVec 32))) (Found!7889 (index!33924 (_ BitVec 32))) (Intermediate!7889 (undefined!8701 Bool) (index!33925 (_ BitVec 32)) (x!64881 (_ BitVec 32))) (Undefined!7889) (MissingVacant!7889 (index!33926 (_ BitVec 32))) )
))
(declare-fun lt!343633 () SeekEntryResult!7889)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!771827 (= res!522167 (or (not (is-Intermediate!7889 lt!343633)) (bvsge x!1131 (x!64881 lt!343633))))))

(declare-fun e!429714 () Bool)

(assert (=> b!771827 e!429714))

(declare-fun res!522172 () Bool)

(assert (=> b!771827 (=> (not res!522172) (not e!429714))))

(declare-datatypes ((array!42374 0))(
  ( (array!42375 (arr!20282 (Array (_ BitVec 32) (_ BitVec 64))) (size!20703 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42374)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42374 (_ BitVec 32)) Bool)

(assert (=> b!771827 (= res!522172 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26592 0))(
  ( (Unit!26593) )
))
(declare-fun lt!343639 () Unit!26592)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42374 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26592)

(assert (=> b!771827 (= lt!343639 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!771828 () Bool)

(declare-fun e!429709 () Bool)

(declare-fun e!429713 () Bool)

(assert (=> b!771828 (= e!429709 e!429713)))

(declare-fun res!522168 () Bool)

(assert (=> b!771828 (=> (not res!522168) (not e!429713))))

(declare-fun lt!343634 () SeekEntryResult!7889)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!771828 (= res!522168 (or (= lt!343634 (MissingZero!7889 i!1173)) (= lt!343634 (MissingVacant!7889 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42374 (_ BitVec 32)) SeekEntryResult!7889)

(assert (=> b!771828 (= lt!343634 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!771829 () Bool)

(declare-fun e!429712 () Unit!26592)

(declare-fun Unit!26594 () Unit!26592)

(assert (=> b!771829 (= e!429712 Unit!26594)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!343629 () SeekEntryResult!7889)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42374 (_ BitVec 32)) SeekEntryResult!7889)

(assert (=> b!771829 (= lt!343629 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20282 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!343632 () (_ BitVec 32))

(assert (=> b!771829 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343632 resIntermediateIndex!5 (select (arr!20282 a!3186) j!159) a!3186 mask!3328) (Found!7889 j!159))))

(declare-fun b!771830 () Bool)

(declare-fun e!429710 () Bool)

(assert (=> b!771830 (= e!429713 e!429710)))

(declare-fun res!522178 () Bool)

(assert (=> b!771830 (=> (not res!522178) (not e!429710))))

(declare-fun lt!343637 () SeekEntryResult!7889)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42374 (_ BitVec 32)) SeekEntryResult!7889)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!771830 (= res!522178 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20282 a!3186) j!159) mask!3328) (select (arr!20282 a!3186) j!159) a!3186 mask!3328) lt!343637))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!771830 (= lt!343637 (Intermediate!7889 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!771831 () Bool)

(declare-fun res!522171 () Bool)

(assert (=> b!771831 (=> (not res!522171) (not e!429709))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!771831 (= res!522171 (validKeyInArray!0 k!2102))))

(declare-fun b!771832 () Bool)

(declare-fun res!522176 () Bool)

(assert (=> b!771832 (=> (not res!522176) (not e!429710))))

(assert (=> b!771832 (= res!522176 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20282 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!771833 () Bool)

(declare-fun Unit!26595 () Unit!26592)

(assert (=> b!771833 (= e!429712 Unit!26595)))

(assert (=> b!771833 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343632 (select (arr!20282 a!3186) j!159) a!3186 mask!3328) lt!343637)))

(declare-fun b!771834 () Bool)

(assert (=> b!771834 (= e!429710 e!429715)))

(declare-fun res!522175 () Bool)

(assert (=> b!771834 (=> (not res!522175) (not e!429715))))

(declare-fun lt!343631 () SeekEntryResult!7889)

(assert (=> b!771834 (= res!522175 (= lt!343631 lt!343633))))

(declare-fun lt!343636 () array!42374)

(declare-fun lt!343630 () (_ BitVec 64))

(assert (=> b!771834 (= lt!343633 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343630 lt!343636 mask!3328))))

(assert (=> b!771834 (= lt!343631 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343630 mask!3328) lt!343630 lt!343636 mask!3328))))

(assert (=> b!771834 (= lt!343630 (select (store (arr!20282 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!771834 (= lt!343636 (array!42375 (store (arr!20282 a!3186) i!1173 k!2102) (size!20703 a!3186)))))

(declare-fun b!771835 () Bool)

(declare-fun res!522169 () Bool)

(assert (=> b!771835 (=> (not res!522169) (not e!429713))))

(assert (=> b!771835 (= res!522169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!771836 () Bool)

(declare-fun e!429711 () Bool)

(assert (=> b!771836 (= e!429714 e!429711)))

(declare-fun res!522177 () Bool)

(assert (=> b!771836 (=> (not res!522177) (not e!429711))))

(declare-fun lt!343635 () SeekEntryResult!7889)

(assert (=> b!771836 (= res!522177 (= (seekEntryOrOpen!0 (select (arr!20282 a!3186) j!159) a!3186 mask!3328) lt!343635))))

(assert (=> b!771836 (= lt!343635 (Found!7889 j!159))))

(declare-fun b!771837 () Bool)

(declare-fun res!522165 () Bool)

(assert (=> b!771837 (=> (not res!522165) (not e!429713))))

(assert (=> b!771837 (= res!522165 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20703 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20703 a!3186))))))

(declare-fun b!771838 () Bool)

(declare-fun res!522174 () Bool)

(assert (=> b!771838 (=> (not res!522174) (not e!429709))))

(declare-fun arrayContainsKey!0 (array!42374 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!771838 (= res!522174 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!771839 () Bool)

(assert (=> b!771839 (= e!429707 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000)))))

(declare-fun lt!343638 () Unit!26592)

(assert (=> b!771839 (= lt!343638 e!429712)))

(declare-fun c!85229 () Bool)

(assert (=> b!771839 (= c!85229 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!771839 (= lt!343632 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!771841 () Bool)

(declare-fun res!522166 () Bool)

(assert (=> b!771841 (=> (not res!522166) (not e!429713))))

(declare-datatypes ((List!14337 0))(
  ( (Nil!14334) (Cons!14333 (h!15435 (_ BitVec 64)) (t!20660 List!14337)) )
))
(declare-fun arrayNoDuplicates!0 (array!42374 (_ BitVec 32) List!14337) Bool)

(assert (=> b!771841 (= res!522166 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14334))))

(declare-fun b!771842 () Bool)

(declare-fun e!429708 () Bool)

(assert (=> b!771842 (= e!429708 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20282 a!3186) j!159) a!3186 mask!3328) lt!343637))))

(declare-fun b!771843 () Bool)

(declare-fun res!522164 () Bool)

(assert (=> b!771843 (=> (not res!522164) (not e!429710))))

(assert (=> b!771843 (= res!522164 e!429708)))

(declare-fun c!85230 () Bool)

(assert (=> b!771843 (= c!85230 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!771844 () Bool)

(assert (=> b!771844 (= e!429708 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20282 a!3186) j!159) a!3186 mask!3328) (Found!7889 j!159)))))

(declare-fun b!771845 () Bool)

(assert (=> b!771845 (= e!429711 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20282 a!3186) j!159) a!3186 mask!3328) lt!343635))))

(declare-fun b!771846 () Bool)

(declare-fun res!522163 () Bool)

(assert (=> b!771846 (=> (not res!522163) (not e!429709))))

(assert (=> b!771846 (= res!522163 (validKeyInArray!0 (select (arr!20282 a!3186) j!159)))))

(declare-fun res!522173 () Bool)

(assert (=> start!66926 (=> (not res!522173) (not e!429709))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66926 (= res!522173 (validMask!0 mask!3328))))

(assert (=> start!66926 e!429709))

(assert (=> start!66926 true))

(declare-fun array_inv!16056 (array!42374) Bool)

(assert (=> start!66926 (array_inv!16056 a!3186)))

(declare-fun b!771840 () Bool)

(declare-fun res!522170 () Bool)

(assert (=> b!771840 (=> (not res!522170) (not e!429709))))

(assert (=> b!771840 (= res!522170 (and (= (size!20703 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20703 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20703 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!66926 res!522173) b!771840))

(assert (= (and b!771840 res!522170) b!771846))

(assert (= (and b!771846 res!522163) b!771831))

(assert (= (and b!771831 res!522171) b!771838))

(assert (= (and b!771838 res!522174) b!771828))

(assert (= (and b!771828 res!522168) b!771835))

(assert (= (and b!771835 res!522169) b!771841))

(assert (= (and b!771841 res!522166) b!771837))

(assert (= (and b!771837 res!522165) b!771830))

(assert (= (and b!771830 res!522178) b!771832))

(assert (= (and b!771832 res!522176) b!771843))

(assert (= (and b!771843 c!85230) b!771842))

(assert (= (and b!771843 (not c!85230)) b!771844))

(assert (= (and b!771843 res!522164) b!771834))

(assert (= (and b!771834 res!522175) b!771827))

(assert (= (and b!771827 res!522172) b!771836))

(assert (= (and b!771836 res!522177) b!771845))

(assert (= (and b!771827 (not res!522167)) b!771839))

(assert (= (and b!771839 c!85229) b!771833))

(assert (= (and b!771839 (not c!85229)) b!771829))

(declare-fun m!716907 () Bool)

(assert (=> b!771846 m!716907))

(assert (=> b!771846 m!716907))

(declare-fun m!716909 () Bool)

(assert (=> b!771846 m!716909))

(assert (=> b!771836 m!716907))

(assert (=> b!771836 m!716907))

(declare-fun m!716911 () Bool)

(assert (=> b!771836 m!716911))

(declare-fun m!716913 () Bool)

(assert (=> b!771832 m!716913))

(assert (=> b!771844 m!716907))

(assert (=> b!771844 m!716907))

(declare-fun m!716915 () Bool)

(assert (=> b!771844 m!716915))

(declare-fun m!716917 () Bool)

(assert (=> b!771839 m!716917))

(assert (=> b!771833 m!716907))

(assert (=> b!771833 m!716907))

(declare-fun m!716919 () Bool)

(assert (=> b!771833 m!716919))

(assert (=> b!771845 m!716907))

(assert (=> b!771845 m!716907))

(declare-fun m!716921 () Bool)

(assert (=> b!771845 m!716921))

(declare-fun m!716923 () Bool)

(assert (=> b!771831 m!716923))

(assert (=> b!771830 m!716907))

(assert (=> b!771830 m!716907))

(declare-fun m!716925 () Bool)

(assert (=> b!771830 m!716925))

(assert (=> b!771830 m!716925))

(assert (=> b!771830 m!716907))

(declare-fun m!716927 () Bool)

(assert (=> b!771830 m!716927))

(assert (=> b!771842 m!716907))

(assert (=> b!771842 m!716907))

(declare-fun m!716929 () Bool)

(assert (=> b!771842 m!716929))

(declare-fun m!716931 () Bool)

(assert (=> b!771838 m!716931))

(declare-fun m!716933 () Bool)

(assert (=> b!771835 m!716933))

(assert (=> b!771829 m!716907))

(assert (=> b!771829 m!716907))

(assert (=> b!771829 m!716915))

(assert (=> b!771829 m!716907))

(declare-fun m!716935 () Bool)

(assert (=> b!771829 m!716935))

(declare-fun m!716937 () Bool)

(assert (=> b!771827 m!716937))

(declare-fun m!716939 () Bool)

(assert (=> b!771827 m!716939))

(declare-fun m!716941 () Bool)

(assert (=> start!66926 m!716941))

(declare-fun m!716943 () Bool)

(assert (=> start!66926 m!716943))

(declare-fun m!716945 () Bool)

(assert (=> b!771834 m!716945))

(assert (=> b!771834 m!716945))

(declare-fun m!716947 () Bool)

(assert (=> b!771834 m!716947))

(declare-fun m!716949 () Bool)

(assert (=> b!771834 m!716949))

(declare-fun m!716951 () Bool)

(assert (=> b!771834 m!716951))

(declare-fun m!716953 () Bool)

(assert (=> b!771834 m!716953))

(declare-fun m!716955 () Bool)

(assert (=> b!771828 m!716955))

(declare-fun m!716957 () Bool)

(assert (=> b!771841 m!716957))

(push 1)

