; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67890 () Bool)

(assert start!67890)

(declare-fun b!788870 () Bool)

(declare-fun e!438498 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!42822 0))(
  ( (array!42823 (arr!20494 (Array (_ BitVec 32) (_ BitVec 64))) (size!20915 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42822)

(declare-datatypes ((SeekEntryResult!8101 0))(
  ( (MissingZero!8101 (index!34771 (_ BitVec 32))) (Found!8101 (index!34772 (_ BitVec 32))) (Intermediate!8101 (undefined!8913 Bool) (index!34773 (_ BitVec 32)) (x!65739 (_ BitVec 32))) (Undefined!8101) (MissingVacant!8101 (index!34774 (_ BitVec 32))) )
))
(declare-fun lt!351976 () SeekEntryResult!8101)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42822 (_ BitVec 32)) SeekEntryResult!8101)

(assert (=> b!788870 (= e!438498 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20494 a!3186) j!159) a!3186 mask!3328) lt!351976))))

(declare-fun b!788871 () Bool)

(declare-fun e!438507 () Bool)

(declare-fun e!438508 () Bool)

(assert (=> b!788871 (= e!438507 e!438508)))

(declare-fun res!534397 () Bool)

(assert (=> b!788871 (=> (not res!534397) (not e!438508))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!788871 (= res!534397 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20494 a!3186) j!159) mask!3328) (select (arr!20494 a!3186) j!159) a!3186 mask!3328) lt!351976))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!788871 (= lt!351976 (Intermediate!8101 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!788872 () Bool)

(declare-datatypes ((Unit!27314 0))(
  ( (Unit!27315) )
))
(declare-fun e!438499 () Unit!27314)

(declare-fun Unit!27316 () Unit!27314)

(assert (=> b!788872 (= e!438499 Unit!27316)))

(declare-fun b!788873 () Bool)

(declare-fun res!534399 () Bool)

(assert (=> b!788873 (=> (not res!534399) (not e!438508))))

(assert (=> b!788873 (= res!534399 e!438498)))

(declare-fun c!87650 () Bool)

(assert (=> b!788873 (= c!87650 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!788874 () Bool)

(declare-fun e!438505 () Bool)

(declare-fun lt!351977 () SeekEntryResult!8101)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42822 (_ BitVec 32)) SeekEntryResult!8101)

(assert (=> b!788874 (= e!438505 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20494 a!3186) j!159) a!3186 mask!3328) lt!351977))))

(declare-fun b!788875 () Bool)

(declare-fun res!534401 () Bool)

(declare-fun e!438501 () Bool)

(assert (=> b!788875 (=> (not res!534401) (not e!438501))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42822 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!788875 (= res!534401 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!788876 () Bool)

(declare-fun res!534395 () Bool)

(assert (=> b!788876 (=> (not res!534395) (not e!438501))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!788876 (= res!534395 (validKeyInArray!0 k0!2102))))

(declare-fun b!788877 () Bool)

(declare-fun e!438497 () Bool)

(assert (=> b!788877 (= e!438497 true)))

(declare-fun e!438504 () Bool)

(assert (=> b!788877 e!438504))

(declare-fun res!534394 () Bool)

(assert (=> b!788877 (=> (not res!534394) (not e!438504))))

(declare-fun lt!351980 () (_ BitVec 64))

(assert (=> b!788877 (= res!534394 (= lt!351980 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!351985 () Unit!27314)

(assert (=> b!788877 (= lt!351985 e!438499)))

(declare-fun c!87651 () Bool)

(assert (=> b!788877 (= c!87651 (= lt!351980 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!788878 () Bool)

(declare-fun res!534402 () Bool)

(assert (=> b!788878 (=> (not res!534402) (not e!438508))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!788878 (= res!534402 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20494 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!788879 () Bool)

(declare-fun e!438502 () Bool)

(declare-fun e!438503 () Bool)

(assert (=> b!788879 (= e!438502 e!438503)))

(declare-fun res!534388 () Bool)

(assert (=> b!788879 (=> res!534388 e!438503)))

(declare-fun lt!351984 () SeekEntryResult!8101)

(assert (=> b!788879 (= res!534388 (not (= lt!351984 lt!351977)))))

(assert (=> b!788879 (= lt!351984 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20494 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!788880 () Bool)

(declare-fun res!534392 () Bool)

(assert (=> b!788880 (=> (not res!534392) (not e!438501))))

(assert (=> b!788880 (= res!534392 (and (= (size!20915 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20915 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20915 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!788881 () Bool)

(declare-fun e!438506 () Bool)

(assert (=> b!788881 (= e!438506 (not e!438502))))

(declare-fun res!534393 () Bool)

(assert (=> b!788881 (=> res!534393 e!438502)))

(declare-fun lt!351975 () SeekEntryResult!8101)

(get-info :version)

(assert (=> b!788881 (= res!534393 (or (not ((_ is Intermediate!8101) lt!351975)) (bvslt x!1131 (x!65739 lt!351975)) (not (= x!1131 (x!65739 lt!351975))) (not (= index!1321 (index!34773 lt!351975)))))))

(assert (=> b!788881 e!438505))

(declare-fun res!534396 () Bool)

(assert (=> b!788881 (=> (not res!534396) (not e!438505))))

(declare-fun lt!351978 () SeekEntryResult!8101)

(assert (=> b!788881 (= res!534396 (= lt!351978 lt!351977))))

(assert (=> b!788881 (= lt!351977 (Found!8101 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42822 (_ BitVec 32)) SeekEntryResult!8101)

(assert (=> b!788881 (= lt!351978 (seekEntryOrOpen!0 (select (arr!20494 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42822 (_ BitVec 32)) Bool)

(assert (=> b!788881 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!351979 () Unit!27314)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42822 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27314)

(assert (=> b!788881 (= lt!351979 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!788882 () Bool)

(declare-fun res!534389 () Bool)

(assert (=> b!788882 (=> (not res!534389) (not e!438504))))

(declare-fun lt!351983 () array!42822)

(declare-fun lt!351974 () (_ BitVec 64))

(assert (=> b!788882 (= res!534389 (= (seekEntryOrOpen!0 lt!351974 lt!351983 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!351974 lt!351983 mask!3328)))))

(declare-fun res!534404 () Bool)

(assert (=> start!67890 (=> (not res!534404) (not e!438501))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67890 (= res!534404 (validMask!0 mask!3328))))

(assert (=> start!67890 e!438501))

(assert (=> start!67890 true))

(declare-fun array_inv!16268 (array!42822) Bool)

(assert (=> start!67890 (array_inv!16268 a!3186)))

(declare-fun b!788883 () Bool)

(assert (=> b!788883 (= e!438501 e!438507)))

(declare-fun res!534403 () Bool)

(assert (=> b!788883 (=> (not res!534403) (not e!438507))))

(declare-fun lt!351982 () SeekEntryResult!8101)

(assert (=> b!788883 (= res!534403 (or (= lt!351982 (MissingZero!8101 i!1173)) (= lt!351982 (MissingVacant!8101 i!1173))))))

(assert (=> b!788883 (= lt!351982 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!788884 () Bool)

(declare-fun Unit!27317 () Unit!27314)

(assert (=> b!788884 (= e!438499 Unit!27317)))

(assert (=> b!788884 false))

(declare-fun b!788885 () Bool)

(declare-fun res!534391 () Bool)

(assert (=> b!788885 (=> (not res!534391) (not e!438507))))

(assert (=> b!788885 (= res!534391 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!788886 () Bool)

(assert (=> b!788886 (= e!438498 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20494 a!3186) j!159) a!3186 mask!3328) (Found!8101 j!159)))))

(declare-fun b!788887 () Bool)

(declare-fun res!534398 () Bool)

(assert (=> b!788887 (=> (not res!534398) (not e!438501))))

(assert (=> b!788887 (= res!534398 (validKeyInArray!0 (select (arr!20494 a!3186) j!159)))))

(declare-fun b!788888 () Bool)

(declare-fun res!534390 () Bool)

(assert (=> b!788888 (=> (not res!534390) (not e!438507))))

(declare-datatypes ((List!14549 0))(
  ( (Nil!14546) (Cons!14545 (h!15671 (_ BitVec 64)) (t!20872 List!14549)) )
))
(declare-fun arrayNoDuplicates!0 (array!42822 (_ BitVec 32) List!14549) Bool)

(assert (=> b!788888 (= res!534390 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14546))))

(declare-fun b!788889 () Bool)

(assert (=> b!788889 (= e!438503 e!438497)))

(declare-fun res!534406 () Bool)

(assert (=> b!788889 (=> res!534406 e!438497)))

(assert (=> b!788889 (= res!534406 (= lt!351980 lt!351974))))

(assert (=> b!788889 (= lt!351980 (select (store (arr!20494 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!788890 () Bool)

(declare-fun res!534405 () Bool)

(assert (=> b!788890 (=> (not res!534405) (not e!438507))))

(assert (=> b!788890 (= res!534405 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20915 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20915 a!3186))))))

(declare-fun b!788891 () Bool)

(assert (=> b!788891 (= e!438508 e!438506)))

(declare-fun res!534400 () Bool)

(assert (=> b!788891 (=> (not res!534400) (not e!438506))))

(declare-fun lt!351981 () SeekEntryResult!8101)

(assert (=> b!788891 (= res!534400 (= lt!351981 lt!351975))))

(assert (=> b!788891 (= lt!351975 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!351974 lt!351983 mask!3328))))

(assert (=> b!788891 (= lt!351981 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!351974 mask!3328) lt!351974 lt!351983 mask!3328))))

(assert (=> b!788891 (= lt!351974 (select (store (arr!20494 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!788891 (= lt!351983 (array!42823 (store (arr!20494 a!3186) i!1173 k0!2102) (size!20915 a!3186)))))

(declare-fun b!788892 () Bool)

(assert (=> b!788892 (= e!438504 (= lt!351978 lt!351984))))

(assert (= (and start!67890 res!534404) b!788880))

(assert (= (and b!788880 res!534392) b!788887))

(assert (= (and b!788887 res!534398) b!788876))

(assert (= (and b!788876 res!534395) b!788875))

(assert (= (and b!788875 res!534401) b!788883))

(assert (= (and b!788883 res!534403) b!788885))

(assert (= (and b!788885 res!534391) b!788888))

(assert (= (and b!788888 res!534390) b!788890))

(assert (= (and b!788890 res!534405) b!788871))

(assert (= (and b!788871 res!534397) b!788878))

(assert (= (and b!788878 res!534402) b!788873))

(assert (= (and b!788873 c!87650) b!788870))

(assert (= (and b!788873 (not c!87650)) b!788886))

(assert (= (and b!788873 res!534399) b!788891))

(assert (= (and b!788891 res!534400) b!788881))

(assert (= (and b!788881 res!534396) b!788874))

(assert (= (and b!788881 (not res!534393)) b!788879))

(assert (= (and b!788879 (not res!534388)) b!788889))

(assert (= (and b!788889 (not res!534406)) b!788877))

(assert (= (and b!788877 c!87651) b!788884))

(assert (= (and b!788877 (not c!87651)) b!788872))

(assert (= (and b!788877 res!534394) b!788882))

(assert (= (and b!788882 res!534389) b!788892))

(declare-fun m!730133 () Bool)

(assert (=> b!788891 m!730133))

(declare-fun m!730135 () Bool)

(assert (=> b!788891 m!730135))

(declare-fun m!730137 () Bool)

(assert (=> b!788891 m!730137))

(declare-fun m!730139 () Bool)

(assert (=> b!788891 m!730139))

(assert (=> b!788891 m!730139))

(declare-fun m!730141 () Bool)

(assert (=> b!788891 m!730141))

(declare-fun m!730143 () Bool)

(assert (=> b!788871 m!730143))

(assert (=> b!788871 m!730143))

(declare-fun m!730145 () Bool)

(assert (=> b!788871 m!730145))

(assert (=> b!788871 m!730145))

(assert (=> b!788871 m!730143))

(declare-fun m!730147 () Bool)

(assert (=> b!788871 m!730147))

(assert (=> b!788870 m!730143))

(assert (=> b!788870 m!730143))

(declare-fun m!730149 () Bool)

(assert (=> b!788870 m!730149))

(declare-fun m!730151 () Bool)

(assert (=> b!788883 m!730151))

(declare-fun m!730153 () Bool)

(assert (=> b!788878 m!730153))

(assert (=> b!788886 m!730143))

(assert (=> b!788886 m!730143))

(declare-fun m!730155 () Bool)

(assert (=> b!788886 m!730155))

(assert (=> b!788881 m!730143))

(assert (=> b!788881 m!730143))

(declare-fun m!730157 () Bool)

(assert (=> b!788881 m!730157))

(declare-fun m!730159 () Bool)

(assert (=> b!788881 m!730159))

(declare-fun m!730161 () Bool)

(assert (=> b!788881 m!730161))

(assert (=> b!788889 m!730135))

(declare-fun m!730163 () Bool)

(assert (=> b!788889 m!730163))

(assert (=> b!788874 m!730143))

(assert (=> b!788874 m!730143))

(declare-fun m!730165 () Bool)

(assert (=> b!788874 m!730165))

(declare-fun m!730167 () Bool)

(assert (=> b!788875 m!730167))

(declare-fun m!730169 () Bool)

(assert (=> b!788885 m!730169))

(assert (=> b!788887 m!730143))

(assert (=> b!788887 m!730143))

(declare-fun m!730171 () Bool)

(assert (=> b!788887 m!730171))

(assert (=> b!788879 m!730143))

(assert (=> b!788879 m!730143))

(assert (=> b!788879 m!730155))

(declare-fun m!730173 () Bool)

(assert (=> start!67890 m!730173))

(declare-fun m!730175 () Bool)

(assert (=> start!67890 m!730175))

(declare-fun m!730177 () Bool)

(assert (=> b!788882 m!730177))

(declare-fun m!730179 () Bool)

(assert (=> b!788882 m!730179))

(declare-fun m!730181 () Bool)

(assert (=> b!788876 m!730181))

(declare-fun m!730183 () Bool)

(assert (=> b!788888 m!730183))

(check-sat (not b!788887) (not b!788876) (not b!788871) (not b!788888) (not b!788883) (not b!788874) (not b!788891) (not b!788875) (not b!788886) (not b!788879) (not start!67890) (not b!788885) (not b!788882) (not b!788870) (not b!788881))
(check-sat)
