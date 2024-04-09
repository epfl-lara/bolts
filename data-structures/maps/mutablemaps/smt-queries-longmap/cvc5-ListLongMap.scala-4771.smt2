; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65704 () Bool)

(assert start!65704)

(declare-fun b!752950 () Bool)

(declare-fun e!420003 () Bool)

(declare-fun e!420006 () Bool)

(assert (=> b!752950 (= e!420003 (not e!420006))))

(declare-fun res!508688 () Bool)

(assert (=> b!752950 (=> res!508688 e!420006)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7632 0))(
  ( (MissingZero!7632 (index!32895 (_ BitVec 32))) (Found!7632 (index!32896 (_ BitVec 32))) (Intermediate!7632 (undefined!8444 Bool) (index!32897 (_ BitVec 32)) (x!63839 (_ BitVec 32))) (Undefined!7632) (MissingVacant!7632 (index!32898 (_ BitVec 32))) )
))
(declare-fun lt!335003 () SeekEntryResult!7632)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!752950 (= res!508688 (or (not (is-Intermediate!7632 lt!335003)) (bvslt x!1131 (x!63839 lt!335003)) (not (= x!1131 (x!63839 lt!335003))) (not (= index!1321 (index!32897 lt!335003)))))))

(declare-fun e!420001 () Bool)

(assert (=> b!752950 e!420001))

(declare-fun res!508693 () Bool)

(assert (=> b!752950 (=> (not res!508693) (not e!420001))))

(declare-fun lt!334999 () SeekEntryResult!7632)

(declare-fun lt!335000 () SeekEntryResult!7632)

(assert (=> b!752950 (= res!508693 (= lt!334999 lt!335000))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!752950 (= lt!335000 (Found!7632 j!159))))

(declare-datatypes ((array!41830 0))(
  ( (array!41831 (arr!20025 (Array (_ BitVec 32) (_ BitVec 64))) (size!20446 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41830)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41830 (_ BitVec 32)) SeekEntryResult!7632)

(assert (=> b!752950 (= lt!334999 (seekEntryOrOpen!0 (select (arr!20025 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41830 (_ BitVec 32)) Bool)

(assert (=> b!752950 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25930 0))(
  ( (Unit!25931) )
))
(declare-fun lt!335001 () Unit!25930)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41830 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25930)

(assert (=> b!752950 (= lt!335001 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!752951 () Bool)

(declare-fun res!508677 () Bool)

(declare-fun e!419996 () Bool)

(assert (=> b!752951 (=> (not res!508677) (not e!419996))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!752951 (= res!508677 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20446 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20446 a!3186))))))

(declare-fun b!752952 () Bool)

(declare-fun res!508681 () Bool)

(declare-fun e!420000 () Bool)

(assert (=> b!752952 (=> (not res!508681) (not e!420000))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!752952 (= res!508681 (validKeyInArray!0 (select (arr!20025 a!3186) j!159)))))

(declare-fun e!419998 () Bool)

(declare-fun b!752953 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41830 (_ BitVec 32)) SeekEntryResult!7632)

(assert (=> b!752953 (= e!419998 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20025 a!3186) j!159) a!3186 mask!3328) (Found!7632 j!159)))))

(declare-fun b!752954 () Bool)

(assert (=> b!752954 (= e!420000 e!419996)))

(declare-fun res!508685 () Bool)

(assert (=> b!752954 (=> (not res!508685) (not e!419996))))

(declare-fun lt!335006 () SeekEntryResult!7632)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!752954 (= res!508685 (or (= lt!335006 (MissingZero!7632 i!1173)) (= lt!335006 (MissingVacant!7632 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!752954 (= lt!335006 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!752955 () Bool)

(declare-fun e!420004 () Bool)

(declare-fun e!420005 () Bool)

(assert (=> b!752955 (= e!420004 e!420005)))

(declare-fun res!508682 () Bool)

(assert (=> b!752955 (=> res!508682 e!420005)))

(declare-fun lt!334996 () (_ BitVec 64))

(declare-fun lt!335002 () (_ BitVec 64))

(assert (=> b!752955 (= res!508682 (= lt!334996 lt!335002))))

(assert (=> b!752955 (= lt!334996 (select (store (arr!20025 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!752956 () Bool)

(declare-fun e!419999 () Unit!25930)

(declare-fun Unit!25932 () Unit!25930)

(assert (=> b!752956 (= e!419999 Unit!25932)))

(assert (=> b!752956 false))

(declare-fun b!752957 () Bool)

(declare-fun res!508679 () Bool)

(declare-fun e!419997 () Bool)

(assert (=> b!752957 (=> (not res!508679) (not e!419997))))

(assert (=> b!752957 (= res!508679 e!419998)))

(declare-fun c!82517 () Bool)

(assert (=> b!752957 (= c!82517 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!752958 () Bool)

(assert (=> b!752958 (= e!419996 e!419997)))

(declare-fun res!508683 () Bool)

(assert (=> b!752958 (=> (not res!508683) (not e!419997))))

(declare-fun lt!334995 () SeekEntryResult!7632)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41830 (_ BitVec 32)) SeekEntryResult!7632)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!752958 (= res!508683 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20025 a!3186) j!159) mask!3328) (select (arr!20025 a!3186) j!159) a!3186 mask!3328) lt!334995))))

(assert (=> b!752958 (= lt!334995 (Intermediate!7632 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!752959 () Bool)

(assert (=> b!752959 (= e!420001 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20025 a!3186) j!159) a!3186 mask!3328) lt!335000))))

(declare-fun res!508691 () Bool)

(assert (=> start!65704 (=> (not res!508691) (not e!420000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65704 (= res!508691 (validMask!0 mask!3328))))

(assert (=> start!65704 e!420000))

(assert (=> start!65704 true))

(declare-fun array_inv!15799 (array!41830) Bool)

(assert (=> start!65704 (array_inv!15799 a!3186)))

(declare-fun b!752960 () Bool)

(declare-fun e!420002 () Bool)

(declare-fun lt!334997 () SeekEntryResult!7632)

(assert (=> b!752960 (= e!420002 (= lt!334999 lt!334997))))

(declare-fun b!752961 () Bool)

(assert (=> b!752961 (= e!420006 e!420004)))

(declare-fun res!508684 () Bool)

(assert (=> b!752961 (=> res!508684 e!420004)))

(assert (=> b!752961 (= res!508684 (not (= lt!334997 lt!335000)))))

(assert (=> b!752961 (= lt!334997 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20025 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!752962 () Bool)

(assert (=> b!752962 (= e!420005 true)))

(assert (=> b!752962 e!420002))

(declare-fun res!508689 () Bool)

(assert (=> b!752962 (=> (not res!508689) (not e!420002))))

(assert (=> b!752962 (= res!508689 (= lt!334996 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!334998 () Unit!25930)

(assert (=> b!752962 (= lt!334998 e!419999)))

(declare-fun c!82518 () Bool)

(assert (=> b!752962 (= c!82518 (= lt!334996 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!752963 () Bool)

(declare-fun res!508678 () Bool)

(assert (=> b!752963 (=> (not res!508678) (not e!420000))))

(assert (=> b!752963 (= res!508678 (validKeyInArray!0 k!2102))))

(declare-fun b!752964 () Bool)

(declare-fun res!508690 () Bool)

(assert (=> b!752964 (=> (not res!508690) (not e!419997))))

(assert (=> b!752964 (= res!508690 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20025 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!752965 () Bool)

(declare-fun res!508680 () Bool)

(assert (=> b!752965 (=> (not res!508680) (not e!420000))))

(assert (=> b!752965 (= res!508680 (and (= (size!20446 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20446 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20446 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!752966 () Bool)

(declare-fun res!508694 () Bool)

(assert (=> b!752966 (=> (not res!508694) (not e!419996))))

(declare-datatypes ((List!14080 0))(
  ( (Nil!14077) (Cons!14076 (h!15148 (_ BitVec 64)) (t!20403 List!14080)) )
))
(declare-fun arrayNoDuplicates!0 (array!41830 (_ BitVec 32) List!14080) Bool)

(assert (=> b!752966 (= res!508694 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14077))))

(declare-fun b!752967 () Bool)

(declare-fun res!508692 () Bool)

(assert (=> b!752967 (=> (not res!508692) (not e!420002))))

(declare-fun lt!335005 () array!41830)

(assert (=> b!752967 (= res!508692 (= (seekEntryOrOpen!0 lt!335002 lt!335005 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335002 lt!335005 mask!3328)))))

(declare-fun b!752968 () Bool)

(assert (=> b!752968 (= e!419997 e!420003)))

(declare-fun res!508686 () Bool)

(assert (=> b!752968 (=> (not res!508686) (not e!420003))))

(declare-fun lt!335004 () SeekEntryResult!7632)

(assert (=> b!752968 (= res!508686 (= lt!335004 lt!335003))))

(assert (=> b!752968 (= lt!335003 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335002 lt!335005 mask!3328))))

(assert (=> b!752968 (= lt!335004 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335002 mask!3328) lt!335002 lt!335005 mask!3328))))

(assert (=> b!752968 (= lt!335002 (select (store (arr!20025 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!752968 (= lt!335005 (array!41831 (store (arr!20025 a!3186) i!1173 k!2102) (size!20446 a!3186)))))

(declare-fun b!752969 () Bool)

(declare-fun res!508695 () Bool)

(assert (=> b!752969 (=> (not res!508695) (not e!419996))))

(assert (=> b!752969 (= res!508695 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!752970 () Bool)

(declare-fun res!508687 () Bool)

(assert (=> b!752970 (=> (not res!508687) (not e!420000))))

(declare-fun arrayContainsKey!0 (array!41830 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!752970 (= res!508687 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!752971 () Bool)

(declare-fun Unit!25933 () Unit!25930)

(assert (=> b!752971 (= e!419999 Unit!25933)))

(declare-fun b!752972 () Bool)

(assert (=> b!752972 (= e!419998 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20025 a!3186) j!159) a!3186 mask!3328) lt!334995))))

(assert (= (and start!65704 res!508691) b!752965))

(assert (= (and b!752965 res!508680) b!752952))

(assert (= (and b!752952 res!508681) b!752963))

(assert (= (and b!752963 res!508678) b!752970))

(assert (= (and b!752970 res!508687) b!752954))

(assert (= (and b!752954 res!508685) b!752969))

(assert (= (and b!752969 res!508695) b!752966))

(assert (= (and b!752966 res!508694) b!752951))

(assert (= (and b!752951 res!508677) b!752958))

(assert (= (and b!752958 res!508683) b!752964))

(assert (= (and b!752964 res!508690) b!752957))

(assert (= (and b!752957 c!82517) b!752972))

(assert (= (and b!752957 (not c!82517)) b!752953))

(assert (= (and b!752957 res!508679) b!752968))

(assert (= (and b!752968 res!508686) b!752950))

(assert (= (and b!752950 res!508693) b!752959))

(assert (= (and b!752950 (not res!508688)) b!752961))

(assert (= (and b!752961 (not res!508684)) b!752955))

(assert (= (and b!752955 (not res!508682)) b!752962))

(assert (= (and b!752962 c!82518) b!752956))

(assert (= (and b!752962 (not c!82518)) b!752971))

(assert (= (and b!752962 res!508689) b!752967))

(assert (= (and b!752967 res!508692) b!752960))

(declare-fun m!701833 () Bool)

(assert (=> b!752967 m!701833))

(declare-fun m!701835 () Bool)

(assert (=> b!752967 m!701835))

(declare-fun m!701837 () Bool)

(assert (=> b!752969 m!701837))

(declare-fun m!701839 () Bool)

(assert (=> b!752958 m!701839))

(assert (=> b!752958 m!701839))

(declare-fun m!701841 () Bool)

(assert (=> b!752958 m!701841))

(assert (=> b!752958 m!701841))

(assert (=> b!752958 m!701839))

(declare-fun m!701843 () Bool)

(assert (=> b!752958 m!701843))

(declare-fun m!701845 () Bool)

(assert (=> b!752970 m!701845))

(assert (=> b!752953 m!701839))

(assert (=> b!752953 m!701839))

(declare-fun m!701847 () Bool)

(assert (=> b!752953 m!701847))

(declare-fun m!701849 () Bool)

(assert (=> b!752966 m!701849))

(declare-fun m!701851 () Bool)

(assert (=> b!752964 m!701851))

(assert (=> b!752959 m!701839))

(assert (=> b!752959 m!701839))

(declare-fun m!701853 () Bool)

(assert (=> b!752959 m!701853))

(declare-fun m!701855 () Bool)

(assert (=> start!65704 m!701855))

(declare-fun m!701857 () Bool)

(assert (=> start!65704 m!701857))

(assert (=> b!752972 m!701839))

(assert (=> b!752972 m!701839))

(declare-fun m!701859 () Bool)

(assert (=> b!752972 m!701859))

(assert (=> b!752952 m!701839))

(assert (=> b!752952 m!701839))

(declare-fun m!701861 () Bool)

(assert (=> b!752952 m!701861))

(declare-fun m!701863 () Bool)

(assert (=> b!752954 m!701863))

(declare-fun m!701865 () Bool)

(assert (=> b!752955 m!701865))

(declare-fun m!701867 () Bool)

(assert (=> b!752955 m!701867))

(declare-fun m!701869 () Bool)

(assert (=> b!752968 m!701869))

(assert (=> b!752968 m!701865))

(declare-fun m!701871 () Bool)

(assert (=> b!752968 m!701871))

(declare-fun m!701873 () Bool)

(assert (=> b!752968 m!701873))

(declare-fun m!701875 () Bool)

(assert (=> b!752968 m!701875))

(assert (=> b!752968 m!701873))

(assert (=> b!752950 m!701839))

(assert (=> b!752950 m!701839))

(declare-fun m!701877 () Bool)

(assert (=> b!752950 m!701877))

(declare-fun m!701879 () Bool)

(assert (=> b!752950 m!701879))

(declare-fun m!701881 () Bool)

(assert (=> b!752950 m!701881))

(declare-fun m!701883 () Bool)

(assert (=> b!752963 m!701883))

(assert (=> b!752961 m!701839))

(assert (=> b!752961 m!701839))

(assert (=> b!752961 m!701847))

(push 1)

