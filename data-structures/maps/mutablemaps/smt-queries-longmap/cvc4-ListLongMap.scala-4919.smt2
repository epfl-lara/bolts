; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67778 () Bool)

(assert start!67778)

(declare-fun b!786831 () Bool)

(declare-datatypes ((Unit!27222 0))(
  ( (Unit!27223) )
))
(declare-fun e!437402 () Unit!27222)

(declare-fun Unit!27224 () Unit!27222)

(assert (=> b!786831 (= e!437402 Unit!27224)))

(declare-fun b!786832 () Bool)

(declare-fun res!532958 () Bool)

(declare-fun e!437405 () Bool)

(assert (=> b!786832 (=> (not res!532958) (not e!437405))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((array!42773 0))(
  ( (array!42774 (arr!20471 (Array (_ BitVec 32) (_ BitVec 64))) (size!20892 (_ BitVec 32))) )
))
(declare-fun lt!350966 () array!42773)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!350967 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8078 0))(
  ( (MissingZero!8078 (index!34679 (_ BitVec 32))) (Found!8078 (index!34680 (_ BitVec 32))) (Intermediate!8078 (undefined!8890 Bool) (index!34681 (_ BitVec 32)) (x!65643 (_ BitVec 32))) (Undefined!8078) (MissingVacant!8078 (index!34682 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42773 (_ BitVec 32)) SeekEntryResult!8078)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42773 (_ BitVec 32)) SeekEntryResult!8078)

(assert (=> b!786832 (= res!532958 (= (seekEntryOrOpen!0 lt!350967 lt!350966 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350967 lt!350966 mask!3328)))))

(declare-fun b!786833 () Bool)

(declare-fun res!532963 () Bool)

(declare-fun e!437399 () Bool)

(assert (=> b!786833 (=> (not res!532963) (not e!437399))))

(declare-fun e!437400 () Bool)

(assert (=> b!786833 (= res!532963 e!437400)))

(declare-fun c!87347 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!786833 (= c!87347 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!786834 () Bool)

(declare-fun res!532951 () Bool)

(declare-fun e!437407 () Bool)

(assert (=> b!786834 (=> (not res!532951) (not e!437407))))

(declare-fun a!3186 () array!42773)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42773 (_ BitVec 32)) Bool)

(assert (=> b!786834 (= res!532951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!786835 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!786835 (= e!437400 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20471 a!3186) j!159) a!3186 mask!3328) (Found!8078 j!159)))))

(declare-fun b!786836 () Bool)

(declare-fun e!437404 () Bool)

(declare-fun e!437406 () Bool)

(assert (=> b!786836 (= e!437404 e!437406)))

(declare-fun res!532968 () Bool)

(assert (=> b!786836 (=> res!532968 e!437406)))

(declare-fun lt!350970 () (_ BitVec 64))

(assert (=> b!786836 (= res!532968 (= lt!350970 lt!350967))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!786836 (= lt!350970 (select (store (arr!20471 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!786837 () Bool)

(declare-fun e!437409 () Bool)

(assert (=> b!786837 (= e!437409 e!437407)))

(declare-fun res!532960 () Bool)

(assert (=> b!786837 (=> (not res!532960) (not e!437407))))

(declare-fun lt!350968 () SeekEntryResult!8078)

(assert (=> b!786837 (= res!532960 (or (= lt!350968 (MissingZero!8078 i!1173)) (= lt!350968 (MissingVacant!8078 i!1173))))))

(assert (=> b!786837 (= lt!350968 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!786838 () Bool)

(assert (=> b!786838 (= e!437406 true)))

(assert (=> b!786838 e!437405))

(declare-fun res!532956 () Bool)

(assert (=> b!786838 (=> (not res!532956) (not e!437405))))

(assert (=> b!786838 (= res!532956 (= lt!350970 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!350976 () Unit!27222)

(assert (=> b!786838 (= lt!350976 e!437402)))

(declare-fun c!87348 () Bool)

(assert (=> b!786838 (= c!87348 (= lt!350970 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!786839 () Bool)

(declare-fun e!437403 () Bool)

(assert (=> b!786839 (= e!437403 e!437404)))

(declare-fun res!532954 () Bool)

(assert (=> b!786839 (=> res!532954 e!437404)))

(declare-fun lt!350974 () SeekEntryResult!8078)

(declare-fun lt!350977 () SeekEntryResult!8078)

(assert (=> b!786839 (= res!532954 (not (= lt!350974 lt!350977)))))

(assert (=> b!786839 (= lt!350974 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20471 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!786840 () Bool)

(declare-fun res!532964 () Bool)

(assert (=> b!786840 (=> (not res!532964) (not e!437409))))

(declare-fun arrayContainsKey!0 (array!42773 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!786840 (= res!532964 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!786830 () Bool)

(declare-fun res!532955 () Bool)

(assert (=> b!786830 (=> (not res!532955) (not e!437409))))

(assert (=> b!786830 (= res!532955 (and (= (size!20892 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20892 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20892 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!532966 () Bool)

(assert (=> start!67778 (=> (not res!532966) (not e!437409))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67778 (= res!532966 (validMask!0 mask!3328))))

(assert (=> start!67778 e!437409))

(assert (=> start!67778 true))

(declare-fun array_inv!16245 (array!42773) Bool)

(assert (=> start!67778 (array_inv!16245 a!3186)))

(declare-fun b!786841 () Bool)

(assert (=> b!786841 (= e!437407 e!437399)))

(declare-fun res!532965 () Bool)

(assert (=> b!786841 (=> (not res!532965) (not e!437399))))

(declare-fun lt!350972 () SeekEntryResult!8078)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42773 (_ BitVec 32)) SeekEntryResult!8078)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!786841 (= res!532965 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20471 a!3186) j!159) mask!3328) (select (arr!20471 a!3186) j!159) a!3186 mask!3328) lt!350972))))

(assert (=> b!786841 (= lt!350972 (Intermediate!8078 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!786842 () Bool)

(declare-fun lt!350969 () SeekEntryResult!8078)

(assert (=> b!786842 (= e!437405 (= lt!350969 lt!350974))))

(declare-fun b!786843 () Bool)

(declare-fun res!532967 () Bool)

(assert (=> b!786843 (=> (not res!532967) (not e!437407))))

(assert (=> b!786843 (= res!532967 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20892 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20892 a!3186))))))

(declare-fun b!786844 () Bool)

(declare-fun e!437410 () Bool)

(assert (=> b!786844 (= e!437399 e!437410)))

(declare-fun res!532953 () Bool)

(assert (=> b!786844 (=> (not res!532953) (not e!437410))))

(declare-fun lt!350975 () SeekEntryResult!8078)

(declare-fun lt!350973 () SeekEntryResult!8078)

(assert (=> b!786844 (= res!532953 (= lt!350975 lt!350973))))

(assert (=> b!786844 (= lt!350973 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350967 lt!350966 mask!3328))))

(assert (=> b!786844 (= lt!350975 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350967 mask!3328) lt!350967 lt!350966 mask!3328))))

(assert (=> b!786844 (= lt!350967 (select (store (arr!20471 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!786844 (= lt!350966 (array!42774 (store (arr!20471 a!3186) i!1173 k!2102) (size!20892 a!3186)))))

(declare-fun b!786845 () Bool)

(declare-fun e!437408 () Bool)

(assert (=> b!786845 (= e!437408 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20471 a!3186) j!159) a!3186 mask!3328) lt!350977))))

(declare-fun b!786846 () Bool)

(declare-fun res!532962 () Bool)

(assert (=> b!786846 (=> (not res!532962) (not e!437407))))

(declare-datatypes ((List!14526 0))(
  ( (Nil!14523) (Cons!14522 (h!15645 (_ BitVec 64)) (t!20849 List!14526)) )
))
(declare-fun arrayNoDuplicates!0 (array!42773 (_ BitVec 32) List!14526) Bool)

(assert (=> b!786846 (= res!532962 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14523))))

(declare-fun b!786847 () Bool)

(declare-fun res!532952 () Bool)

(assert (=> b!786847 (=> (not res!532952) (not e!437409))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!786847 (= res!532952 (validKeyInArray!0 (select (arr!20471 a!3186) j!159)))))

(declare-fun b!786848 () Bool)

(assert (=> b!786848 (= e!437400 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20471 a!3186) j!159) a!3186 mask!3328) lt!350972))))

(declare-fun b!786849 () Bool)

(declare-fun Unit!27225 () Unit!27222)

(assert (=> b!786849 (= e!437402 Unit!27225)))

(assert (=> b!786849 false))

(declare-fun b!786850 () Bool)

(declare-fun res!532957 () Bool)

(assert (=> b!786850 (=> (not res!532957) (not e!437409))))

(assert (=> b!786850 (= res!532957 (validKeyInArray!0 k!2102))))

(declare-fun b!786851 () Bool)

(assert (=> b!786851 (= e!437410 (not e!437403))))

(declare-fun res!532959 () Bool)

(assert (=> b!786851 (=> res!532959 e!437403)))

(assert (=> b!786851 (= res!532959 (or (not (is-Intermediate!8078 lt!350973)) (bvslt x!1131 (x!65643 lt!350973)) (not (= x!1131 (x!65643 lt!350973))) (not (= index!1321 (index!34681 lt!350973)))))))

(assert (=> b!786851 e!437408))

(declare-fun res!532961 () Bool)

(assert (=> b!786851 (=> (not res!532961) (not e!437408))))

(assert (=> b!786851 (= res!532961 (= lt!350969 lt!350977))))

(assert (=> b!786851 (= lt!350977 (Found!8078 j!159))))

(assert (=> b!786851 (= lt!350969 (seekEntryOrOpen!0 (select (arr!20471 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!786851 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!350971 () Unit!27222)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42773 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27222)

(assert (=> b!786851 (= lt!350971 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!786852 () Bool)

(declare-fun res!532969 () Bool)

(assert (=> b!786852 (=> (not res!532969) (not e!437399))))

(assert (=> b!786852 (= res!532969 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20471 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!67778 res!532966) b!786830))

(assert (= (and b!786830 res!532955) b!786847))

(assert (= (and b!786847 res!532952) b!786850))

(assert (= (and b!786850 res!532957) b!786840))

(assert (= (and b!786840 res!532964) b!786837))

(assert (= (and b!786837 res!532960) b!786834))

(assert (= (and b!786834 res!532951) b!786846))

(assert (= (and b!786846 res!532962) b!786843))

(assert (= (and b!786843 res!532967) b!786841))

(assert (= (and b!786841 res!532965) b!786852))

(assert (= (and b!786852 res!532969) b!786833))

(assert (= (and b!786833 c!87347) b!786848))

(assert (= (and b!786833 (not c!87347)) b!786835))

(assert (= (and b!786833 res!532963) b!786844))

(assert (= (and b!786844 res!532953) b!786851))

(assert (= (and b!786851 res!532961) b!786845))

(assert (= (and b!786851 (not res!532959)) b!786839))

(assert (= (and b!786839 (not res!532954)) b!786836))

(assert (= (and b!786836 (not res!532968)) b!786838))

(assert (= (and b!786838 c!87348) b!786849))

(assert (= (and b!786838 (not c!87348)) b!786831))

(assert (= (and b!786838 res!532956) b!786832))

(assert (= (and b!786832 res!532958) b!786842))

(declare-fun m!728601 () Bool)

(assert (=> b!786846 m!728601))

(declare-fun m!728603 () Bool)

(assert (=> b!786840 m!728603))

(declare-fun m!728605 () Bool)

(assert (=> b!786836 m!728605))

(declare-fun m!728607 () Bool)

(assert (=> b!786836 m!728607))

(declare-fun m!728609 () Bool)

(assert (=> b!786850 m!728609))

(declare-fun m!728611 () Bool)

(assert (=> b!786847 m!728611))

(assert (=> b!786847 m!728611))

(declare-fun m!728613 () Bool)

(assert (=> b!786847 m!728613))

(declare-fun m!728615 () Bool)

(assert (=> b!786834 m!728615))

(assert (=> b!786835 m!728611))

(assert (=> b!786835 m!728611))

(declare-fun m!728617 () Bool)

(assert (=> b!786835 m!728617))

(assert (=> b!786839 m!728611))

(assert (=> b!786839 m!728611))

(assert (=> b!786839 m!728617))

(assert (=> b!786851 m!728611))

(assert (=> b!786851 m!728611))

(declare-fun m!728619 () Bool)

(assert (=> b!786851 m!728619))

(declare-fun m!728621 () Bool)

(assert (=> b!786851 m!728621))

(declare-fun m!728623 () Bool)

(assert (=> b!786851 m!728623))

(declare-fun m!728625 () Bool)

(assert (=> b!786852 m!728625))

(declare-fun m!728627 () Bool)

(assert (=> b!786837 m!728627))

(assert (=> b!786845 m!728611))

(assert (=> b!786845 m!728611))

(declare-fun m!728629 () Bool)

(assert (=> b!786845 m!728629))

(declare-fun m!728631 () Bool)

(assert (=> b!786844 m!728631))

(declare-fun m!728633 () Bool)

(assert (=> b!786844 m!728633))

(declare-fun m!728635 () Bool)

(assert (=> b!786844 m!728635))

(assert (=> b!786844 m!728605))

(declare-fun m!728637 () Bool)

(assert (=> b!786844 m!728637))

(assert (=> b!786844 m!728631))

(assert (=> b!786848 m!728611))

(assert (=> b!786848 m!728611))

(declare-fun m!728639 () Bool)

(assert (=> b!786848 m!728639))

(declare-fun m!728641 () Bool)

(assert (=> start!67778 m!728641))

(declare-fun m!728643 () Bool)

(assert (=> start!67778 m!728643))

(declare-fun m!728645 () Bool)

(assert (=> b!786832 m!728645))

(declare-fun m!728647 () Bool)

(assert (=> b!786832 m!728647))

(assert (=> b!786841 m!728611))

(assert (=> b!786841 m!728611))

(declare-fun m!728649 () Bool)

(assert (=> b!786841 m!728649))

(assert (=> b!786841 m!728649))

(assert (=> b!786841 m!728611))

(declare-fun m!728651 () Bool)

(assert (=> b!786841 m!728651))

(push 1)

