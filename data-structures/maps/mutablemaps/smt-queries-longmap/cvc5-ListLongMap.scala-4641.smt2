; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64564 () Bool)

(assert start!64564)

(declare-fun b!726897 () Bool)

(declare-fun e!406967 () Bool)

(assert (=> b!726897 (= e!406967 true)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!321952 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726897 (= lt!321952 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!726898 () Bool)

(declare-fun res!487957 () Bool)

(declare-fun e!406972 () Bool)

(assert (=> b!726898 (=> (not res!487957) (not e!406972))))

(declare-fun e!406974 () Bool)

(assert (=> b!726898 (= res!487957 e!406974)))

(declare-fun c!79845 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!726898 (= c!79845 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!726899 () Bool)

(declare-fun res!487960 () Bool)

(declare-fun e!406971 () Bool)

(assert (=> b!726899 (=> (not res!487960) (not e!406971))))

(declare-datatypes ((array!41035 0))(
  ( (array!41036 (arr!19635 (Array (_ BitVec 32) (_ BitVec 64))) (size!20056 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41035)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41035 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!726899 (= res!487960 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!726900 () Bool)

(declare-datatypes ((SeekEntryResult!7242 0))(
  ( (MissingZero!7242 (index!31335 (_ BitVec 32))) (Found!7242 (index!31336 (_ BitVec 32))) (Intermediate!7242 (undefined!8054 Bool) (index!31337 (_ BitVec 32)) (x!62349 (_ BitVec 32))) (Undefined!7242) (MissingVacant!7242 (index!31338 (_ BitVec 32))) )
))
(declare-fun lt!321951 () SeekEntryResult!7242)

(declare-fun e!406966 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41035 (_ BitVec 32)) SeekEntryResult!7242)

(assert (=> b!726900 (= e!406966 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19635 a!3186) j!159) a!3186 mask!3328) lt!321951))))

(declare-fun b!726901 () Bool)

(declare-fun res!487961 () Bool)

(assert (=> b!726901 (=> (not res!487961) (not e!406971))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!726901 (= res!487961 (validKeyInArray!0 (select (arr!19635 a!3186) j!159)))))

(declare-fun b!726902 () Bool)

(declare-fun res!487962 () Bool)

(declare-fun e!406968 () Bool)

(assert (=> b!726902 (=> (not res!487962) (not e!406968))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41035 (_ BitVec 32)) Bool)

(assert (=> b!726902 (= res!487962 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!726903 () Bool)

(declare-fun e!406970 () Bool)

(assert (=> b!726903 (= e!406972 e!406970)))

(declare-fun res!487964 () Bool)

(assert (=> b!726903 (=> (not res!487964) (not e!406970))))

(declare-fun lt!321954 () SeekEntryResult!7242)

(declare-fun lt!321957 () SeekEntryResult!7242)

(assert (=> b!726903 (= res!487964 (= lt!321954 lt!321957))))

(declare-fun lt!321953 () array!41035)

(declare-fun lt!321955 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41035 (_ BitVec 32)) SeekEntryResult!7242)

(assert (=> b!726903 (= lt!321957 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321955 lt!321953 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726903 (= lt!321954 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321955 mask!3328) lt!321955 lt!321953 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!726903 (= lt!321955 (select (store (arr!19635 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!726903 (= lt!321953 (array!41036 (store (arr!19635 a!3186) i!1173 k!2102) (size!20056 a!3186)))))

(declare-fun b!726904 () Bool)

(declare-fun lt!321958 () SeekEntryResult!7242)

(assert (=> b!726904 (= e!406974 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19635 a!3186) j!159) a!3186 mask!3328) lt!321958))))

(declare-fun b!726905 () Bool)

(assert (=> b!726905 (= e!406968 e!406972)))

(declare-fun res!487963 () Bool)

(assert (=> b!726905 (=> (not res!487963) (not e!406972))))

(assert (=> b!726905 (= res!487963 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19635 a!3186) j!159) mask!3328) (select (arr!19635 a!3186) j!159) a!3186 mask!3328) lt!321958))))

(assert (=> b!726905 (= lt!321958 (Intermediate!7242 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!726906 () Bool)

(declare-fun res!487956 () Bool)

(assert (=> b!726906 (=> (not res!487956) (not e!406968))))

(declare-datatypes ((List!13690 0))(
  ( (Nil!13687) (Cons!13686 (h!14743 (_ BitVec 64)) (t!20013 List!13690)) )
))
(declare-fun arrayNoDuplicates!0 (array!41035 (_ BitVec 32) List!13690) Bool)

(assert (=> b!726906 (= res!487956 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13687))))

(declare-fun b!726907 () Bool)

(declare-fun res!487954 () Bool)

(assert (=> b!726907 (=> (not res!487954) (not e!406971))))

(assert (=> b!726907 (= res!487954 (validKeyInArray!0 k!2102))))

(declare-fun b!726908 () Bool)

(declare-fun res!487966 () Bool)

(assert (=> b!726908 (=> (not res!487966) (not e!406972))))

(assert (=> b!726908 (= res!487966 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19635 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!726909 () Bool)

(declare-fun res!487953 () Bool)

(assert (=> b!726909 (=> (not res!487953) (not e!406971))))

(assert (=> b!726909 (= res!487953 (and (= (size!20056 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20056 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20056 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!487968 () Bool)

(assert (=> start!64564 (=> (not res!487968) (not e!406971))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64564 (= res!487968 (validMask!0 mask!3328))))

(assert (=> start!64564 e!406971))

(assert (=> start!64564 true))

(declare-fun array_inv!15409 (array!41035) Bool)

(assert (=> start!64564 (array_inv!15409 a!3186)))

(declare-fun b!726910 () Bool)

(assert (=> b!726910 (= e!406974 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19635 a!3186) j!159) a!3186 mask!3328) (Found!7242 j!159)))))

(declare-fun b!726911 () Bool)

(declare-fun res!487959 () Bool)

(assert (=> b!726911 (=> (not res!487959) (not e!406968))))

(assert (=> b!726911 (= res!487959 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20056 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20056 a!3186))))))

(declare-fun b!726912 () Bool)

(assert (=> b!726912 (= e!406970 (not e!406967))))

(declare-fun res!487958 () Bool)

(assert (=> b!726912 (=> res!487958 e!406967)))

(assert (=> b!726912 (= res!487958 (or (not (is-Intermediate!7242 lt!321957)) (bvsge x!1131 (x!62349 lt!321957))))))

(declare-fun e!406969 () Bool)

(assert (=> b!726912 e!406969))

(declare-fun res!487955 () Bool)

(assert (=> b!726912 (=> (not res!487955) (not e!406969))))

(assert (=> b!726912 (= res!487955 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24802 0))(
  ( (Unit!24803) )
))
(declare-fun lt!321956 () Unit!24802)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41035 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24802)

(assert (=> b!726912 (= lt!321956 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!726913 () Bool)

(assert (=> b!726913 (= e!406969 e!406966)))

(declare-fun res!487965 () Bool)

(assert (=> b!726913 (=> (not res!487965) (not e!406966))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41035 (_ BitVec 32)) SeekEntryResult!7242)

(assert (=> b!726913 (= res!487965 (= (seekEntryOrOpen!0 (select (arr!19635 a!3186) j!159) a!3186 mask!3328) lt!321951))))

(assert (=> b!726913 (= lt!321951 (Found!7242 j!159))))

(declare-fun b!726914 () Bool)

(assert (=> b!726914 (= e!406971 e!406968)))

(declare-fun res!487967 () Bool)

(assert (=> b!726914 (=> (not res!487967) (not e!406968))))

(declare-fun lt!321959 () SeekEntryResult!7242)

(assert (=> b!726914 (= res!487967 (or (= lt!321959 (MissingZero!7242 i!1173)) (= lt!321959 (MissingVacant!7242 i!1173))))))

(assert (=> b!726914 (= lt!321959 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!64564 res!487968) b!726909))

(assert (= (and b!726909 res!487953) b!726901))

(assert (= (and b!726901 res!487961) b!726907))

(assert (= (and b!726907 res!487954) b!726899))

(assert (= (and b!726899 res!487960) b!726914))

(assert (= (and b!726914 res!487967) b!726902))

(assert (= (and b!726902 res!487962) b!726906))

(assert (= (and b!726906 res!487956) b!726911))

(assert (= (and b!726911 res!487959) b!726905))

(assert (= (and b!726905 res!487963) b!726908))

(assert (= (and b!726908 res!487966) b!726898))

(assert (= (and b!726898 c!79845) b!726904))

(assert (= (and b!726898 (not c!79845)) b!726910))

(assert (= (and b!726898 res!487957) b!726903))

(assert (= (and b!726903 res!487964) b!726912))

(assert (= (and b!726912 res!487955) b!726913))

(assert (= (and b!726913 res!487965) b!726900))

(assert (= (and b!726912 (not res!487958)) b!726897))

(declare-fun m!680995 () Bool)

(assert (=> b!726903 m!680995))

(declare-fun m!680997 () Bool)

(assert (=> b!726903 m!680997))

(declare-fun m!680999 () Bool)

(assert (=> b!726903 m!680999))

(declare-fun m!681001 () Bool)

(assert (=> b!726903 m!681001))

(assert (=> b!726903 m!680995))

(declare-fun m!681003 () Bool)

(assert (=> b!726903 m!681003))

(declare-fun m!681005 () Bool)

(assert (=> b!726905 m!681005))

(assert (=> b!726905 m!681005))

(declare-fun m!681007 () Bool)

(assert (=> b!726905 m!681007))

(assert (=> b!726905 m!681007))

(assert (=> b!726905 m!681005))

(declare-fun m!681009 () Bool)

(assert (=> b!726905 m!681009))

(assert (=> b!726904 m!681005))

(assert (=> b!726904 m!681005))

(declare-fun m!681011 () Bool)

(assert (=> b!726904 m!681011))

(declare-fun m!681013 () Bool)

(assert (=> b!726902 m!681013))

(declare-fun m!681015 () Bool)

(assert (=> b!726899 m!681015))

(assert (=> b!726913 m!681005))

(assert (=> b!726913 m!681005))

(declare-fun m!681017 () Bool)

(assert (=> b!726913 m!681017))

(declare-fun m!681019 () Bool)

(assert (=> b!726906 m!681019))

(declare-fun m!681021 () Bool)

(assert (=> b!726908 m!681021))

(assert (=> b!726910 m!681005))

(assert (=> b!726910 m!681005))

(declare-fun m!681023 () Bool)

(assert (=> b!726910 m!681023))

(assert (=> b!726901 m!681005))

(assert (=> b!726901 m!681005))

(declare-fun m!681025 () Bool)

(assert (=> b!726901 m!681025))

(declare-fun m!681027 () Bool)

(assert (=> b!726912 m!681027))

(declare-fun m!681029 () Bool)

(assert (=> b!726912 m!681029))

(declare-fun m!681031 () Bool)

(assert (=> start!64564 m!681031))

(declare-fun m!681033 () Bool)

(assert (=> start!64564 m!681033))

(declare-fun m!681035 () Bool)

(assert (=> b!726914 m!681035))

(declare-fun m!681037 () Bool)

(assert (=> b!726897 m!681037))

(assert (=> b!726900 m!681005))

(assert (=> b!726900 m!681005))

(declare-fun m!681039 () Bool)

(assert (=> b!726900 m!681039))

(declare-fun m!681041 () Bool)

(assert (=> b!726907 m!681041))

(push 1)

