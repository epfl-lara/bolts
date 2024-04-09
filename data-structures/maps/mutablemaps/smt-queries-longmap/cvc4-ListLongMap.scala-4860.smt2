; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67022 () Bool)

(assert start!67022)

(declare-fun b!773009 () Bool)

(declare-fun res!522882 () Bool)

(declare-fun e!430349 () Bool)

(assert (=> b!773009 (=> (not res!522882) (not e!430349))))

(declare-datatypes ((array!42401 0))(
  ( (array!42402 (arr!20294 (Array (_ BitVec 32) (_ BitVec 64))) (size!20715 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42401)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!773009 (= res!522882 (validKeyInArray!0 (select (arr!20294 a!3186) j!159)))))

(declare-fun b!773010 () Bool)

(declare-fun res!522884 () Bool)

(declare-fun e!430351 () Bool)

(assert (=> b!773010 (=> (not res!522884) (not e!430351))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!773010 (= res!522884 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20294 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!773011 () Bool)

(declare-fun e!430347 () Bool)

(assert (=> b!773011 (= e!430347 true)))

(declare-datatypes ((Unit!26640 0))(
  ( (Unit!26641) )
))
(declare-fun lt!344220 () Unit!26640)

(declare-fun e!430345 () Unit!26640)

(assert (=> b!773011 (= lt!344220 e!430345)))

(declare-fun c!85467 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!773011 (= c!85467 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!344215 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773011 (= lt!344215 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!773012 () Bool)

(declare-fun e!430343 () Bool)

(assert (=> b!773012 (= e!430349 e!430343)))

(declare-fun res!522874 () Bool)

(assert (=> b!773012 (=> (not res!522874) (not e!430343))))

(declare-datatypes ((SeekEntryResult!7901 0))(
  ( (MissingZero!7901 (index!33971 (_ BitVec 32))) (Found!7901 (index!33972 (_ BitVec 32))) (Intermediate!7901 (undefined!8713 Bool) (index!33973 (_ BitVec 32)) (x!64937 (_ BitVec 32))) (Undefined!7901) (MissingVacant!7901 (index!33974 (_ BitVec 32))) )
))
(declare-fun lt!344216 () SeekEntryResult!7901)

(assert (=> b!773012 (= res!522874 (or (= lt!344216 (MissingZero!7901 i!1173)) (= lt!344216 (MissingVacant!7901 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42401 (_ BitVec 32)) SeekEntryResult!7901)

(assert (=> b!773012 (= lt!344216 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!773014 () Bool)

(declare-fun e!430350 () Bool)

(assert (=> b!773014 (= e!430351 e!430350)))

(declare-fun res!522885 () Bool)

(assert (=> b!773014 (=> (not res!522885) (not e!430350))))

(declare-fun lt!344212 () SeekEntryResult!7901)

(declare-fun lt!344217 () SeekEntryResult!7901)

(assert (=> b!773014 (= res!522885 (= lt!344212 lt!344217))))

(declare-fun lt!344214 () array!42401)

(declare-fun lt!344221 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42401 (_ BitVec 32)) SeekEntryResult!7901)

(assert (=> b!773014 (= lt!344217 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!344221 lt!344214 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773014 (= lt!344212 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!344221 mask!3328) lt!344221 lt!344214 mask!3328))))

(assert (=> b!773014 (= lt!344221 (select (store (arr!20294 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!773014 (= lt!344214 (array!42402 (store (arr!20294 a!3186) i!1173 k!2102) (size!20715 a!3186)))))

(declare-fun b!773015 () Bool)

(declare-fun res!522880 () Bool)

(assert (=> b!773015 (=> (not res!522880) (not e!430343))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42401 (_ BitVec 32)) Bool)

(assert (=> b!773015 (= res!522880 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!773016 () Bool)

(declare-fun e!430346 () Bool)

(declare-fun e!430348 () Bool)

(assert (=> b!773016 (= e!430346 e!430348)))

(declare-fun res!522888 () Bool)

(assert (=> b!773016 (=> (not res!522888) (not e!430348))))

(declare-fun lt!344219 () SeekEntryResult!7901)

(assert (=> b!773016 (= res!522888 (= (seekEntryOrOpen!0 (select (arr!20294 a!3186) j!159) a!3186 mask!3328) lt!344219))))

(assert (=> b!773016 (= lt!344219 (Found!7901 j!159))))

(declare-fun b!773017 () Bool)

(assert (=> b!773017 (= e!430343 e!430351)))

(declare-fun res!522879 () Bool)

(assert (=> b!773017 (=> (not res!522879) (not e!430351))))

(declare-fun lt!344211 () SeekEntryResult!7901)

(assert (=> b!773017 (= res!522879 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20294 a!3186) j!159) mask!3328) (select (arr!20294 a!3186) j!159) a!3186 mask!3328) lt!344211))))

(assert (=> b!773017 (= lt!344211 (Intermediate!7901 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!773018 () Bool)

(declare-fun res!522883 () Bool)

(assert (=> b!773018 (=> (not res!522883) (not e!430349))))

(assert (=> b!773018 (= res!522883 (validKeyInArray!0 k!2102))))

(declare-fun b!773019 () Bool)

(declare-fun res!522887 () Bool)

(assert (=> b!773019 (=> (not res!522887) (not e!430343))))

(assert (=> b!773019 (= res!522887 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20715 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20715 a!3186))))))

(declare-fun b!773020 () Bool)

(declare-fun res!522889 () Bool)

(assert (=> b!773020 (=> (not res!522889) (not e!430349))))

(declare-fun arrayContainsKey!0 (array!42401 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!773020 (= res!522889 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun e!430342 () Bool)

(declare-fun b!773021 () Bool)

(assert (=> b!773021 (= e!430342 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20294 a!3186) j!159) a!3186 mask!3328) lt!344211))))

(declare-fun b!773022 () Bool)

(declare-fun res!522875 () Bool)

(assert (=> b!773022 (=> (not res!522875) (not e!430349))))

(assert (=> b!773022 (= res!522875 (and (= (size!20715 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20715 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20715 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!773023 () Bool)

(assert (=> b!773023 (= e!430350 (not e!430347))))

(declare-fun res!522876 () Bool)

(assert (=> b!773023 (=> res!522876 e!430347)))

(assert (=> b!773023 (= res!522876 (or (not (is-Intermediate!7901 lt!344217)) (bvsge x!1131 (x!64937 lt!344217))))))

(assert (=> b!773023 e!430346))

(declare-fun res!522878 () Bool)

(assert (=> b!773023 (=> (not res!522878) (not e!430346))))

(assert (=> b!773023 (= res!522878 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!344213 () Unit!26640)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42401 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26640)

(assert (=> b!773023 (= lt!344213 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!773024 () Bool)

(declare-fun res!522886 () Bool)

(assert (=> b!773024 (=> (not res!522886) (not e!430343))))

(declare-datatypes ((List!14349 0))(
  ( (Nil!14346) (Cons!14345 (h!15450 (_ BitVec 64)) (t!20672 List!14349)) )
))
(declare-fun arrayNoDuplicates!0 (array!42401 (_ BitVec 32) List!14349) Bool)

(assert (=> b!773024 (= res!522886 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14346))))

(declare-fun res!522877 () Bool)

(assert (=> start!67022 (=> (not res!522877) (not e!430349))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67022 (= res!522877 (validMask!0 mask!3328))))

(assert (=> start!67022 e!430349))

(assert (=> start!67022 true))

(declare-fun array_inv!16068 (array!42401) Bool)

(assert (=> start!67022 (array_inv!16068 a!3186)))

(declare-fun b!773013 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42401 (_ BitVec 32)) SeekEntryResult!7901)

(assert (=> b!773013 (= e!430348 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20294 a!3186) j!159) a!3186 mask!3328) lt!344219))))

(declare-fun b!773025 () Bool)

(assert (=> b!773025 (= e!430342 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20294 a!3186) j!159) a!3186 mask!3328) (Found!7901 j!159)))))

(declare-fun b!773026 () Bool)

(declare-fun Unit!26642 () Unit!26640)

(assert (=> b!773026 (= e!430345 Unit!26642)))

(assert (=> b!773026 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344215 (select (arr!20294 a!3186) j!159) a!3186 mask!3328) lt!344211)))

(declare-fun b!773027 () Bool)

(declare-fun Unit!26643 () Unit!26640)

(assert (=> b!773027 (= e!430345 Unit!26643)))

(declare-fun lt!344218 () SeekEntryResult!7901)

(assert (=> b!773027 (= lt!344218 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20294 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!773027 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344215 resIntermediateIndex!5 (select (arr!20294 a!3186) j!159) a!3186 mask!3328) (Found!7901 j!159))))

(declare-fun b!773028 () Bool)

(declare-fun res!522881 () Bool)

(assert (=> b!773028 (=> (not res!522881) (not e!430351))))

(assert (=> b!773028 (= res!522881 e!430342)))

(declare-fun c!85466 () Bool)

(assert (=> b!773028 (= c!85466 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!67022 res!522877) b!773022))

(assert (= (and b!773022 res!522875) b!773009))

(assert (= (and b!773009 res!522882) b!773018))

(assert (= (and b!773018 res!522883) b!773020))

(assert (= (and b!773020 res!522889) b!773012))

(assert (= (and b!773012 res!522874) b!773015))

(assert (= (and b!773015 res!522880) b!773024))

(assert (= (and b!773024 res!522886) b!773019))

(assert (= (and b!773019 res!522887) b!773017))

(assert (= (and b!773017 res!522879) b!773010))

(assert (= (and b!773010 res!522884) b!773028))

(assert (= (and b!773028 c!85466) b!773021))

(assert (= (and b!773028 (not c!85466)) b!773025))

(assert (= (and b!773028 res!522881) b!773014))

(assert (= (and b!773014 res!522885) b!773023))

(assert (= (and b!773023 res!522878) b!773016))

(assert (= (and b!773016 res!522888) b!773013))

(assert (= (and b!773023 (not res!522876)) b!773011))

(assert (= (and b!773011 c!85467) b!773026))

(assert (= (and b!773011 (not c!85467)) b!773027))

(declare-fun m!717855 () Bool)

(assert (=> b!773015 m!717855))

(declare-fun m!717857 () Bool)

(assert (=> b!773021 m!717857))

(assert (=> b!773021 m!717857))

(declare-fun m!717859 () Bool)

(assert (=> b!773021 m!717859))

(declare-fun m!717861 () Bool)

(assert (=> b!773012 m!717861))

(declare-fun m!717863 () Bool)

(assert (=> b!773023 m!717863))

(declare-fun m!717865 () Bool)

(assert (=> b!773023 m!717865))

(assert (=> b!773027 m!717857))

(assert (=> b!773027 m!717857))

(declare-fun m!717867 () Bool)

(assert (=> b!773027 m!717867))

(assert (=> b!773027 m!717857))

(declare-fun m!717869 () Bool)

(assert (=> b!773027 m!717869))

(assert (=> b!773026 m!717857))

(assert (=> b!773026 m!717857))

(declare-fun m!717871 () Bool)

(assert (=> b!773026 m!717871))

(declare-fun m!717873 () Bool)

(assert (=> b!773014 m!717873))

(declare-fun m!717875 () Bool)

(assert (=> b!773014 m!717875))

(declare-fun m!717877 () Bool)

(assert (=> b!773014 m!717877))

(declare-fun m!717879 () Bool)

(assert (=> b!773014 m!717879))

(declare-fun m!717881 () Bool)

(assert (=> b!773014 m!717881))

(assert (=> b!773014 m!717877))

(assert (=> b!773016 m!717857))

(assert (=> b!773016 m!717857))

(declare-fun m!717883 () Bool)

(assert (=> b!773016 m!717883))

(declare-fun m!717885 () Bool)

(assert (=> b!773011 m!717885))

(declare-fun m!717887 () Bool)

(assert (=> b!773018 m!717887))

(assert (=> b!773025 m!717857))

(assert (=> b!773025 m!717857))

(assert (=> b!773025 m!717867))

(assert (=> b!773017 m!717857))

(assert (=> b!773017 m!717857))

(declare-fun m!717889 () Bool)

(assert (=> b!773017 m!717889))

(assert (=> b!773017 m!717889))

(assert (=> b!773017 m!717857))

(declare-fun m!717891 () Bool)

(assert (=> b!773017 m!717891))

(declare-fun m!717893 () Bool)

(assert (=> b!773024 m!717893))

(declare-fun m!717895 () Bool)

(assert (=> start!67022 m!717895))

(declare-fun m!717897 () Bool)

(assert (=> start!67022 m!717897))

(declare-fun m!717899 () Bool)

(assert (=> b!773020 m!717899))

(declare-fun m!717901 () Bool)

(assert (=> b!773010 m!717901))

(assert (=> b!773013 m!717857))

(assert (=> b!773013 m!717857))

(declare-fun m!717903 () Bool)

(assert (=> b!773013 m!717903))

(assert (=> b!773009 m!717857))

(assert (=> b!773009 m!717857))

(declare-fun m!717905 () Bool)

(assert (=> b!773009 m!717905))

(push 1)

