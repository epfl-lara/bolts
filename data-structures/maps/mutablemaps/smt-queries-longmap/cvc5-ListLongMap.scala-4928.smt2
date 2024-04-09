; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67894 () Bool)

(assert start!67894)

(declare-fun b!789008 () Bool)

(declare-fun res!534504 () Bool)

(declare-fun e!438569 () Bool)

(assert (=> b!789008 (=> (not res!534504) (not e!438569))))

(declare-datatypes ((array!42826 0))(
  ( (array!42827 (arr!20496 (Array (_ BitVec 32) (_ BitVec 64))) (size!20917 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42826)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!789008 (= res!534504 (and (= (size!20917 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20917 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20917 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!789009 () Bool)

(declare-fun e!438573 () Bool)

(declare-fun e!438580 () Bool)

(assert (=> b!789009 (= e!438573 (not e!438580))))

(declare-fun res!534503 () Bool)

(assert (=> b!789009 (=> res!534503 e!438580)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8103 0))(
  ( (MissingZero!8103 (index!34779 (_ BitVec 32))) (Found!8103 (index!34780 (_ BitVec 32))) (Intermediate!8103 (undefined!8915 Bool) (index!34781 (_ BitVec 32)) (x!65749 (_ BitVec 32))) (Undefined!8103) (MissingVacant!8103 (index!34782 (_ BitVec 32))) )
))
(declare-fun lt!352054 () SeekEntryResult!8103)

(assert (=> b!789009 (= res!534503 (or (not (is-Intermediate!8103 lt!352054)) (bvslt x!1131 (x!65749 lt!352054)) (not (= x!1131 (x!65749 lt!352054))) (not (= index!1321 (index!34781 lt!352054)))))))

(declare-fun e!438570 () Bool)

(assert (=> b!789009 e!438570))

(declare-fun res!534514 () Bool)

(assert (=> b!789009 (=> (not res!534514) (not e!438570))))

(declare-fun lt!352048 () SeekEntryResult!8103)

(declare-fun lt!352056 () SeekEntryResult!8103)

(assert (=> b!789009 (= res!534514 (= lt!352048 lt!352056))))

(assert (=> b!789009 (= lt!352056 (Found!8103 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42826 (_ BitVec 32)) SeekEntryResult!8103)

(assert (=> b!789009 (= lt!352048 (seekEntryOrOpen!0 (select (arr!20496 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42826 (_ BitVec 32)) Bool)

(assert (=> b!789009 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!27322 0))(
  ( (Unit!27323) )
))
(declare-fun lt!352049 () Unit!27322)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42826 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27322)

(assert (=> b!789009 (= lt!352049 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!789010 () Bool)

(declare-fun res!534508 () Bool)

(declare-fun e!438572 () Bool)

(assert (=> b!789010 (=> (not res!534508) (not e!438572))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!789010 (= res!534508 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20496 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!789011 () Bool)

(declare-fun res!534507 () Bool)

(declare-fun e!438578 () Bool)

(assert (=> b!789011 (=> (not res!534507) (not e!438578))))

(declare-datatypes ((List!14551 0))(
  ( (Nil!14548) (Cons!14547 (h!15673 (_ BitVec 64)) (t!20874 List!14551)) )
))
(declare-fun arrayNoDuplicates!0 (array!42826 (_ BitVec 32) List!14551) Bool)

(assert (=> b!789011 (= res!534507 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14548))))

(declare-fun b!789012 () Bool)

(declare-fun e!438579 () Bool)

(declare-fun lt!352050 () SeekEntryResult!8103)

(assert (=> b!789012 (= e!438579 (= lt!352048 lt!352050))))

(declare-fun b!789013 () Bool)

(declare-fun res!534520 () Bool)

(assert (=> b!789013 (=> (not res!534520) (not e!438572))))

(declare-fun e!438574 () Bool)

(assert (=> b!789013 (= res!534520 e!438574)))

(declare-fun c!87662 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!789013 (= c!87662 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!789014 () Bool)

(assert (=> b!789014 (= e!438569 e!438578)))

(declare-fun res!534509 () Bool)

(assert (=> b!789014 (=> (not res!534509) (not e!438578))))

(declare-fun lt!352053 () SeekEntryResult!8103)

(assert (=> b!789014 (= res!534509 (or (= lt!352053 (MissingZero!8103 i!1173)) (= lt!352053 (MissingVacant!8103 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!789014 (= lt!352053 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!789015 () Bool)

(declare-fun res!534517 () Bool)

(assert (=> b!789015 (=> (not res!534517) (not e!438578))))

(assert (=> b!789015 (= res!534517 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20917 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20917 a!3186))))))

(declare-fun b!789016 () Bool)

(declare-fun res!534516 () Bool)

(assert (=> b!789016 (=> (not res!534516) (not e!438569))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!789016 (= res!534516 (validKeyInArray!0 k!2102))))

(declare-fun b!789017 () Bool)

(declare-fun res!534518 () Bool)

(assert (=> b!789017 (=> (not res!534518) (not e!438569))))

(assert (=> b!789017 (= res!534518 (validKeyInArray!0 (select (arr!20496 a!3186) j!159)))))

(declare-fun b!789018 () Bool)

(declare-fun e!438577 () Bool)

(declare-fun e!438571 () Bool)

(assert (=> b!789018 (= e!438577 e!438571)))

(declare-fun res!534519 () Bool)

(assert (=> b!789018 (=> res!534519 e!438571)))

(declare-fun lt!352057 () (_ BitVec 64))

(declare-fun lt!352047 () (_ BitVec 64))

(assert (=> b!789018 (= res!534519 (= lt!352057 lt!352047))))

(assert (=> b!789018 (= lt!352057 (select (store (arr!20496 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!789019 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42826 (_ BitVec 32)) SeekEntryResult!8103)

(assert (=> b!789019 (= e!438570 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20496 a!3186) j!159) a!3186 mask!3328) lt!352056))))

(declare-fun b!789020 () Bool)

(assert (=> b!789020 (= e!438572 e!438573)))

(declare-fun res!534510 () Bool)

(assert (=> b!789020 (=> (not res!534510) (not e!438573))))

(declare-fun lt!352051 () SeekEntryResult!8103)

(assert (=> b!789020 (= res!534510 (= lt!352051 lt!352054))))

(declare-fun lt!352046 () array!42826)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42826 (_ BitVec 32)) SeekEntryResult!8103)

(assert (=> b!789020 (= lt!352054 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!352047 lt!352046 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!789020 (= lt!352051 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!352047 mask!3328) lt!352047 lt!352046 mask!3328))))

(assert (=> b!789020 (= lt!352047 (select (store (arr!20496 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!789020 (= lt!352046 (array!42827 (store (arr!20496 a!3186) i!1173 k!2102) (size!20917 a!3186)))))

(declare-fun b!789021 () Bool)

(declare-fun res!534506 () Bool)

(assert (=> b!789021 (=> (not res!534506) (not e!438569))))

(declare-fun arrayContainsKey!0 (array!42826 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!789021 (= res!534506 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!789022 () Bool)

(assert (=> b!789022 (= e!438578 e!438572)))

(declare-fun res!534515 () Bool)

(assert (=> b!789022 (=> (not res!534515) (not e!438572))))

(declare-fun lt!352055 () SeekEntryResult!8103)

(assert (=> b!789022 (= res!534515 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20496 a!3186) j!159) mask!3328) (select (arr!20496 a!3186) j!159) a!3186 mask!3328) lt!352055))))

(assert (=> b!789022 (= lt!352055 (Intermediate!8103 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!789023 () Bool)

(declare-fun res!534505 () Bool)

(assert (=> b!789023 (=> (not res!534505) (not e!438578))))

(assert (=> b!789023 (= res!534505 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!789024 () Bool)

(declare-fun e!438576 () Unit!27322)

(declare-fun Unit!27324 () Unit!27322)

(assert (=> b!789024 (= e!438576 Unit!27324)))

(assert (=> b!789024 false))

(declare-fun b!789025 () Bool)

(declare-fun Unit!27325 () Unit!27322)

(assert (=> b!789025 (= e!438576 Unit!27325)))

(declare-fun b!789026 () Bool)

(assert (=> b!789026 (= e!438571 true)))

(assert (=> b!789026 e!438579))

(declare-fun res!534511 () Bool)

(assert (=> b!789026 (=> (not res!534511) (not e!438579))))

(assert (=> b!789026 (= res!534511 (= lt!352057 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!352052 () Unit!27322)

(assert (=> b!789026 (= lt!352052 e!438576)))

(declare-fun c!87663 () Bool)

(assert (=> b!789026 (= c!87663 (= lt!352057 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!789027 () Bool)

(assert (=> b!789027 (= e!438574 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20496 a!3186) j!159) a!3186 mask!3328) lt!352055))))

(declare-fun b!789028 () Bool)

(assert (=> b!789028 (= e!438574 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20496 a!3186) j!159) a!3186 mask!3328) (Found!8103 j!159)))))

(declare-fun b!789029 () Bool)

(assert (=> b!789029 (= e!438580 e!438577)))

(declare-fun res!534502 () Bool)

(assert (=> b!789029 (=> res!534502 e!438577)))

(assert (=> b!789029 (= res!534502 (not (= lt!352050 lt!352056)))))

(assert (=> b!789029 (= lt!352050 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20496 a!3186) j!159) a!3186 mask!3328))))

(declare-fun res!534512 () Bool)

(assert (=> start!67894 (=> (not res!534512) (not e!438569))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67894 (= res!534512 (validMask!0 mask!3328))))

(assert (=> start!67894 e!438569))

(assert (=> start!67894 true))

(declare-fun array_inv!16270 (array!42826) Bool)

(assert (=> start!67894 (array_inv!16270 a!3186)))

(declare-fun b!789030 () Bool)

(declare-fun res!534513 () Bool)

(assert (=> b!789030 (=> (not res!534513) (not e!438579))))

(assert (=> b!789030 (= res!534513 (= (seekEntryOrOpen!0 lt!352047 lt!352046 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!352047 lt!352046 mask!3328)))))

(assert (= (and start!67894 res!534512) b!789008))

(assert (= (and b!789008 res!534504) b!789017))

(assert (= (and b!789017 res!534518) b!789016))

(assert (= (and b!789016 res!534516) b!789021))

(assert (= (and b!789021 res!534506) b!789014))

(assert (= (and b!789014 res!534509) b!789023))

(assert (= (and b!789023 res!534505) b!789011))

(assert (= (and b!789011 res!534507) b!789015))

(assert (= (and b!789015 res!534517) b!789022))

(assert (= (and b!789022 res!534515) b!789010))

(assert (= (and b!789010 res!534508) b!789013))

(assert (= (and b!789013 c!87662) b!789027))

(assert (= (and b!789013 (not c!87662)) b!789028))

(assert (= (and b!789013 res!534520) b!789020))

(assert (= (and b!789020 res!534510) b!789009))

(assert (= (and b!789009 res!534514) b!789019))

(assert (= (and b!789009 (not res!534503)) b!789029))

(assert (= (and b!789029 (not res!534502)) b!789018))

(assert (= (and b!789018 (not res!534519)) b!789026))

(assert (= (and b!789026 c!87663) b!789024))

(assert (= (and b!789026 (not c!87663)) b!789025))

(assert (= (and b!789026 res!534511) b!789030))

(assert (= (and b!789030 res!534513) b!789012))

(declare-fun m!730237 () Bool)

(assert (=> b!789011 m!730237))

(declare-fun m!730239 () Bool)

(assert (=> b!789020 m!730239))

(declare-fun m!730241 () Bool)

(assert (=> b!789020 m!730241))

(declare-fun m!730243 () Bool)

(assert (=> b!789020 m!730243))

(declare-fun m!730245 () Bool)

(assert (=> b!789020 m!730245))

(declare-fun m!730247 () Bool)

(assert (=> b!789020 m!730247))

(assert (=> b!789020 m!730243))

(declare-fun m!730249 () Bool)

(assert (=> b!789019 m!730249))

(assert (=> b!789019 m!730249))

(declare-fun m!730251 () Bool)

(assert (=> b!789019 m!730251))

(assert (=> b!789029 m!730249))

(assert (=> b!789029 m!730249))

(declare-fun m!730253 () Bool)

(assert (=> b!789029 m!730253))

(declare-fun m!730255 () Bool)

(assert (=> b!789014 m!730255))

(assert (=> b!789018 m!730241))

(declare-fun m!730257 () Bool)

(assert (=> b!789018 m!730257))

(declare-fun m!730259 () Bool)

(assert (=> b!789016 m!730259))

(declare-fun m!730261 () Bool)

(assert (=> b!789021 m!730261))

(assert (=> b!789009 m!730249))

(assert (=> b!789009 m!730249))

(declare-fun m!730263 () Bool)

(assert (=> b!789009 m!730263))

(declare-fun m!730265 () Bool)

(assert (=> b!789009 m!730265))

(declare-fun m!730267 () Bool)

(assert (=> b!789009 m!730267))

(declare-fun m!730269 () Bool)

(assert (=> b!789023 m!730269))

(assert (=> b!789022 m!730249))

(assert (=> b!789022 m!730249))

(declare-fun m!730271 () Bool)

(assert (=> b!789022 m!730271))

(assert (=> b!789022 m!730271))

(assert (=> b!789022 m!730249))

(declare-fun m!730273 () Bool)

(assert (=> b!789022 m!730273))

(assert (=> b!789017 m!730249))

(assert (=> b!789017 m!730249))

(declare-fun m!730275 () Bool)

(assert (=> b!789017 m!730275))

(declare-fun m!730277 () Bool)

(assert (=> b!789010 m!730277))

(declare-fun m!730279 () Bool)

(assert (=> start!67894 m!730279))

(declare-fun m!730281 () Bool)

(assert (=> start!67894 m!730281))

(declare-fun m!730283 () Bool)

(assert (=> b!789030 m!730283))

(declare-fun m!730285 () Bool)

(assert (=> b!789030 m!730285))

(assert (=> b!789028 m!730249))

(assert (=> b!789028 m!730249))

(assert (=> b!789028 m!730253))

(assert (=> b!789027 m!730249))

(assert (=> b!789027 m!730249))

(declare-fun m!730287 () Bool)

(assert (=> b!789027 m!730287))

(push 1)

