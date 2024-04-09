; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67750 () Bool)

(assert start!67750)

(declare-fun b!785864 () Bool)

(declare-fun res!532157 () Bool)

(declare-fun e!436901 () Bool)

(assert (=> b!785864 (=> (not res!532157) (not e!436901))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42745 0))(
  ( (array!42746 (arr!20457 (Array (_ BitVec 32) (_ BitVec 64))) (size!20878 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42745)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!785864 (= res!532157 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20878 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20878 a!3186))))))

(declare-fun b!785865 () Bool)

(declare-fun e!436898 () Bool)

(assert (=> b!785865 (= e!436898 true)))

(declare-fun e!436905 () Bool)

(assert (=> b!785865 e!436905))

(declare-fun res!532169 () Bool)

(assert (=> b!785865 (=> (not res!532169) (not e!436905))))

(declare-fun lt!350466 () (_ BitVec 64))

(assert (=> b!785865 (= res!532169 (= lt!350466 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!27166 0))(
  ( (Unit!27167) )
))
(declare-fun lt!350464 () Unit!27166)

(declare-fun e!436895 () Unit!27166)

(assert (=> b!785865 (= lt!350464 e!436895)))

(declare-fun c!87263 () Bool)

(assert (=> b!785865 (= c!87263 (= lt!350466 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!785866 () Bool)

(declare-fun e!436899 () Bool)

(declare-datatypes ((SeekEntryResult!8064 0))(
  ( (MissingZero!8064 (index!34623 (_ BitVec 32))) (Found!8064 (index!34624 (_ BitVec 32))) (Intermediate!8064 (undefined!8876 Bool) (index!34625 (_ BitVec 32)) (x!65597 (_ BitVec 32))) (Undefined!8064) (MissingVacant!8064 (index!34626 (_ BitVec 32))) )
))
(declare-fun lt!350468 () SeekEntryResult!8064)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42745 (_ BitVec 32)) SeekEntryResult!8064)

(assert (=> b!785866 (= e!436899 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20457 a!3186) j!159) a!3186 mask!3328) lt!350468))))

(declare-fun b!785867 () Bool)

(declare-fun res!532165 () Bool)

(declare-fun e!436896 () Bool)

(assert (=> b!785867 (=> (not res!532165) (not e!436896))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!785867 (= res!532165 (validKeyInArray!0 (select (arr!20457 a!3186) j!159)))))

(declare-fun b!785868 () Bool)

(declare-fun e!436903 () Bool)

(declare-fun e!436904 () Bool)

(assert (=> b!785868 (= e!436903 e!436904)))

(declare-fun res!532170 () Bool)

(assert (=> b!785868 (=> (not res!532170) (not e!436904))))

(declare-fun lt!350462 () SeekEntryResult!8064)

(declare-fun lt!350467 () SeekEntryResult!8064)

(assert (=> b!785868 (= res!532170 (= lt!350462 lt!350467))))

(declare-fun lt!350465 () array!42745)

(declare-fun lt!350470 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42745 (_ BitVec 32)) SeekEntryResult!8064)

(assert (=> b!785868 (= lt!350467 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350470 lt!350465 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!785868 (= lt!350462 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350470 mask!3328) lt!350470 lt!350465 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!785868 (= lt!350470 (select (store (arr!20457 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!785868 (= lt!350465 (array!42746 (store (arr!20457 a!3186) i!1173 k!2102) (size!20878 a!3186)))))

(declare-fun b!785869 () Bool)

(declare-fun e!436906 () Bool)

(declare-fun e!436900 () Bool)

(assert (=> b!785869 (= e!436906 e!436900)))

(declare-fun res!532164 () Bool)

(assert (=> b!785869 (=> res!532164 e!436900)))

(declare-fun lt!350463 () SeekEntryResult!8064)

(assert (=> b!785869 (= res!532164 (not (= lt!350463 lt!350468)))))

(assert (=> b!785869 (= lt!350463 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20457 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!785870 () Bool)

(declare-fun res!532167 () Bool)

(assert (=> b!785870 (=> (not res!532167) (not e!436896))))

(assert (=> b!785870 (= res!532167 (and (= (size!20878 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20878 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20878 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!785871 () Bool)

(declare-fun res!532168 () Bool)

(assert (=> b!785871 (=> (not res!532168) (not e!436896))))

(declare-fun arrayContainsKey!0 (array!42745 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!785871 (= res!532168 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!785872 () Bool)

(declare-fun Unit!27168 () Unit!27166)

(assert (=> b!785872 (= e!436895 Unit!27168)))

(assert (=> b!785872 false))

(declare-fun b!785873 () Bool)

(assert (=> b!785873 (= e!436900 e!436898)))

(declare-fun res!532162 () Bool)

(assert (=> b!785873 (=> res!532162 e!436898)))

(assert (=> b!785873 (= res!532162 (= lt!350466 lt!350470))))

(assert (=> b!785873 (= lt!350466 (select (store (arr!20457 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!785874 () Bool)

(declare-fun lt!350472 () SeekEntryResult!8064)

(declare-fun e!436897 () Bool)

(assert (=> b!785874 (= e!436897 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20457 a!3186) j!159) a!3186 mask!3328) lt!350472))))

(declare-fun b!785875 () Bool)

(assert (=> b!785875 (= e!436901 e!436903)))

(declare-fun res!532159 () Bool)

(assert (=> b!785875 (=> (not res!532159) (not e!436903))))

(assert (=> b!785875 (= res!532159 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20457 a!3186) j!159) mask!3328) (select (arr!20457 a!3186) j!159) a!3186 mask!3328) lt!350472))))

(assert (=> b!785875 (= lt!350472 (Intermediate!8064 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!785876 () Bool)

(declare-fun res!532153 () Bool)

(assert (=> b!785876 (=> (not res!532153) (not e!436896))))

(assert (=> b!785876 (= res!532153 (validKeyInArray!0 k!2102))))

(declare-fun b!785877 () Bool)

(assert (=> b!785877 (= e!436904 (not e!436906))))

(declare-fun res!532166 () Bool)

(assert (=> b!785877 (=> res!532166 e!436906)))

(assert (=> b!785877 (= res!532166 (or (not (is-Intermediate!8064 lt!350467)) (bvslt x!1131 (x!65597 lt!350467)) (not (= x!1131 (x!65597 lt!350467))) (not (= index!1321 (index!34625 lt!350467)))))))

(assert (=> b!785877 e!436899))

(declare-fun res!532161 () Bool)

(assert (=> b!785877 (=> (not res!532161) (not e!436899))))

(declare-fun lt!350471 () SeekEntryResult!8064)

(assert (=> b!785877 (= res!532161 (= lt!350471 lt!350468))))

(assert (=> b!785877 (= lt!350468 (Found!8064 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42745 (_ BitVec 32)) SeekEntryResult!8064)

(assert (=> b!785877 (= lt!350471 (seekEntryOrOpen!0 (select (arr!20457 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42745 (_ BitVec 32)) Bool)

(assert (=> b!785877 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!350469 () Unit!27166)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42745 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27166)

(assert (=> b!785877 (= lt!350469 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!785878 () Bool)

(declare-fun res!532156 () Bool)

(assert (=> b!785878 (=> (not res!532156) (not e!436903))))

(assert (=> b!785878 (= res!532156 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20457 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!785879 () Bool)

(declare-fun res!532160 () Bool)

(assert (=> b!785879 (=> (not res!532160) (not e!436901))))

(assert (=> b!785879 (= res!532160 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!785880 () Bool)

(declare-fun res!532155 () Bool)

(assert (=> b!785880 (=> (not res!532155) (not e!436901))))

(declare-datatypes ((List!14512 0))(
  ( (Nil!14509) (Cons!14508 (h!15631 (_ BitVec 64)) (t!20835 List!14512)) )
))
(declare-fun arrayNoDuplicates!0 (array!42745 (_ BitVec 32) List!14512) Bool)

(assert (=> b!785880 (= res!532155 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14509))))

(declare-fun b!785881 () Bool)

(assert (=> b!785881 (= e!436896 e!436901)))

(declare-fun res!532171 () Bool)

(assert (=> b!785881 (=> (not res!532171) (not e!436901))))

(declare-fun lt!350473 () SeekEntryResult!8064)

(assert (=> b!785881 (= res!532171 (or (= lt!350473 (MissingZero!8064 i!1173)) (= lt!350473 (MissingVacant!8064 i!1173))))))

(assert (=> b!785881 (= lt!350473 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!785882 () Bool)

(assert (=> b!785882 (= e!436905 (= lt!350471 lt!350463))))

(declare-fun res!532158 () Bool)

(assert (=> start!67750 (=> (not res!532158) (not e!436896))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67750 (= res!532158 (validMask!0 mask!3328))))

(assert (=> start!67750 e!436896))

(assert (=> start!67750 true))

(declare-fun array_inv!16231 (array!42745) Bool)

(assert (=> start!67750 (array_inv!16231 a!3186)))

(declare-fun b!785883 () Bool)

(declare-fun res!532163 () Bool)

(assert (=> b!785883 (=> (not res!532163) (not e!436905))))

(assert (=> b!785883 (= res!532163 (= (seekEntryOrOpen!0 lt!350470 lt!350465 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350470 lt!350465 mask!3328)))))

(declare-fun b!785884 () Bool)

(declare-fun Unit!27169 () Unit!27166)

(assert (=> b!785884 (= e!436895 Unit!27169)))

(declare-fun b!785885 () Bool)

(assert (=> b!785885 (= e!436897 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20457 a!3186) j!159) a!3186 mask!3328) (Found!8064 j!159)))))

(declare-fun b!785886 () Bool)

(declare-fun res!532154 () Bool)

(assert (=> b!785886 (=> (not res!532154) (not e!436903))))

(assert (=> b!785886 (= res!532154 e!436897)))

(declare-fun c!87264 () Bool)

(assert (=> b!785886 (= c!87264 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!67750 res!532158) b!785870))

(assert (= (and b!785870 res!532167) b!785867))

(assert (= (and b!785867 res!532165) b!785876))

(assert (= (and b!785876 res!532153) b!785871))

(assert (= (and b!785871 res!532168) b!785881))

(assert (= (and b!785881 res!532171) b!785879))

(assert (= (and b!785879 res!532160) b!785880))

(assert (= (and b!785880 res!532155) b!785864))

(assert (= (and b!785864 res!532157) b!785875))

(assert (= (and b!785875 res!532159) b!785878))

(assert (= (and b!785878 res!532156) b!785886))

(assert (= (and b!785886 c!87264) b!785874))

(assert (= (and b!785886 (not c!87264)) b!785885))

(assert (= (and b!785886 res!532154) b!785868))

(assert (= (and b!785868 res!532170) b!785877))

(assert (= (and b!785877 res!532161) b!785866))

(assert (= (and b!785877 (not res!532166)) b!785869))

(assert (= (and b!785869 (not res!532164)) b!785873))

(assert (= (and b!785873 (not res!532162)) b!785865))

(assert (= (and b!785865 c!87263) b!785872))

(assert (= (and b!785865 (not c!87263)) b!785884))

(assert (= (and b!785865 res!532169) b!785883))

(assert (= (and b!785883 res!532163) b!785882))

(declare-fun m!727873 () Bool)

(assert (=> b!785871 m!727873))

(declare-fun m!727875 () Bool)

(assert (=> b!785880 m!727875))

(declare-fun m!727877 () Bool)

(assert (=> b!785866 m!727877))

(assert (=> b!785866 m!727877))

(declare-fun m!727879 () Bool)

(assert (=> b!785866 m!727879))

(assert (=> b!785869 m!727877))

(assert (=> b!785869 m!727877))

(declare-fun m!727881 () Bool)

(assert (=> b!785869 m!727881))

(assert (=> b!785877 m!727877))

(assert (=> b!785877 m!727877))

(declare-fun m!727883 () Bool)

(assert (=> b!785877 m!727883))

(declare-fun m!727885 () Bool)

(assert (=> b!785877 m!727885))

(declare-fun m!727887 () Bool)

(assert (=> b!785877 m!727887))

(declare-fun m!727889 () Bool)

(assert (=> b!785879 m!727889))

(declare-fun m!727891 () Bool)

(assert (=> b!785868 m!727891))

(assert (=> b!785868 m!727891))

(declare-fun m!727893 () Bool)

(assert (=> b!785868 m!727893))

(declare-fun m!727895 () Bool)

(assert (=> b!785868 m!727895))

(declare-fun m!727897 () Bool)

(assert (=> b!785868 m!727897))

(declare-fun m!727899 () Bool)

(assert (=> b!785868 m!727899))

(assert (=> b!785885 m!727877))

(assert (=> b!785885 m!727877))

(assert (=> b!785885 m!727881))

(declare-fun m!727901 () Bool)

(assert (=> b!785881 m!727901))

(declare-fun m!727903 () Bool)

(assert (=> start!67750 m!727903))

(declare-fun m!727905 () Bool)

(assert (=> start!67750 m!727905))

(declare-fun m!727907 () Bool)

(assert (=> b!785883 m!727907))

(declare-fun m!727909 () Bool)

(assert (=> b!785883 m!727909))

(declare-fun m!727911 () Bool)

(assert (=> b!785876 m!727911))

(assert (=> b!785873 m!727895))

(declare-fun m!727913 () Bool)

(assert (=> b!785873 m!727913))

(assert (=> b!785867 m!727877))

(assert (=> b!785867 m!727877))

(declare-fun m!727915 () Bool)

(assert (=> b!785867 m!727915))

(assert (=> b!785874 m!727877))

(assert (=> b!785874 m!727877))

(declare-fun m!727917 () Bool)

(assert (=> b!785874 m!727917))

(assert (=> b!785875 m!727877))

(assert (=> b!785875 m!727877))

(declare-fun m!727919 () Bool)

(assert (=> b!785875 m!727919))

(assert (=> b!785875 m!727919))

(assert (=> b!785875 m!727877))

(declare-fun m!727921 () Bool)

(assert (=> b!785875 m!727921))

(declare-fun m!727923 () Bool)

(assert (=> b!785878 m!727923))

(push 1)

