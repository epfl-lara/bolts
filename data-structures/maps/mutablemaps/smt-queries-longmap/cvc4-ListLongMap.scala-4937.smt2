; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68018 () Bool)

(assert start!68018)

(declare-fun b!791180 () Bool)

(declare-fun res!536107 () Bool)

(declare-fun e!439731 () Bool)

(assert (=> b!791180 (=> (not res!536107) (not e!439731))))

(declare-fun e!439729 () Bool)

(assert (=> b!791180 (= res!536107 e!439729)))

(declare-fun c!87948 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!791180 (= c!87948 (bvsle x!1131 resIntermediateX!5))))

(declare-datatypes ((array!42887 0))(
  ( (array!42888 (arr!20525 (Array (_ BitVec 32) (_ BitVec 64))) (size!20946 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42887)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8132 0))(
  ( (MissingZero!8132 (index!34895 (_ BitVec 32))) (Found!8132 (index!34896 (_ BitVec 32))) (Intermediate!8132 (undefined!8944 Bool) (index!34897 (_ BitVec 32)) (x!65859 (_ BitVec 32))) (Undefined!8132) (MissingVacant!8132 (index!34898 (_ BitVec 32))) )
))
(declare-fun lt!353171 () SeekEntryResult!8132)

(declare-fun b!791181 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42887 (_ BitVec 32)) SeekEntryResult!8132)

(assert (=> b!791181 (= e!439729 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20525 a!3186) j!159) a!3186 mask!3328) lt!353171))))

(declare-fun b!791182 () Bool)

(declare-fun e!439732 () Bool)

(assert (=> b!791182 (= e!439732 (not true))))

(declare-fun e!439725 () Bool)

(assert (=> b!791182 e!439725))

(declare-fun res!536116 () Bool)

(assert (=> b!791182 (=> (not res!536116) (not e!439725))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42887 (_ BitVec 32)) Bool)

(assert (=> b!791182 (= res!536116 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!27416 0))(
  ( (Unit!27417) )
))
(declare-fun lt!353172 () Unit!27416)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42887 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27416)

(assert (=> b!791182 (= lt!353172 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!791183 () Bool)

(declare-fun res!536119 () Bool)

(declare-fun e!439728 () Bool)

(assert (=> b!791183 (=> (not res!536119) (not e!439728))))

(assert (=> b!791183 (= res!536119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!439730 () Bool)

(declare-fun b!791184 () Bool)

(declare-fun lt!353175 () SeekEntryResult!8132)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42887 (_ BitVec 32)) SeekEntryResult!8132)

(assert (=> b!791184 (= e!439730 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20525 a!3186) j!159) a!3186 mask!3328) lt!353175))))

(declare-fun b!791185 () Bool)

(assert (=> b!791185 (= e!439731 e!439732)))

(declare-fun res!536109 () Bool)

(assert (=> b!791185 (=> (not res!536109) (not e!439732))))

(declare-fun lt!353173 () (_ BitVec 64))

(declare-fun lt!353176 () array!42887)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!791185 (= res!536109 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!353173 mask!3328) lt!353173 lt!353176 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!353173 lt!353176 mask!3328)))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!791185 (= lt!353173 (select (store (arr!20525 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!791185 (= lt!353176 (array!42888 (store (arr!20525 a!3186) i!1173 k!2102) (size!20946 a!3186)))))

(declare-fun b!791186 () Bool)

(assert (=> b!791186 (= e!439725 e!439730)))

(declare-fun res!536110 () Bool)

(assert (=> b!791186 (=> (not res!536110) (not e!439730))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42887 (_ BitVec 32)) SeekEntryResult!8132)

(assert (=> b!791186 (= res!536110 (= (seekEntryOrOpen!0 (select (arr!20525 a!3186) j!159) a!3186 mask!3328) lt!353175))))

(assert (=> b!791186 (= lt!353175 (Found!8132 j!159))))

(declare-fun res!536113 () Bool)

(declare-fun e!439726 () Bool)

(assert (=> start!68018 (=> (not res!536113) (not e!439726))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68018 (= res!536113 (validMask!0 mask!3328))))

(assert (=> start!68018 e!439726))

(assert (=> start!68018 true))

(declare-fun array_inv!16299 (array!42887) Bool)

(assert (=> start!68018 (array_inv!16299 a!3186)))

(declare-fun b!791187 () Bool)

(assert (=> b!791187 (= e!439729 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20525 a!3186) j!159) a!3186 mask!3328) (Found!8132 j!159)))))

(declare-fun b!791188 () Bool)

(declare-fun res!536106 () Bool)

(assert (=> b!791188 (=> (not res!536106) (not e!439728))))

(assert (=> b!791188 (= res!536106 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20946 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20946 a!3186))))))

(declare-fun b!791189 () Bool)

(declare-fun res!536117 () Bool)

(assert (=> b!791189 (=> (not res!536117) (not e!439726))))

(assert (=> b!791189 (= res!536117 (and (= (size!20946 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20946 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20946 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!791190 () Bool)

(assert (=> b!791190 (= e!439726 e!439728)))

(declare-fun res!536105 () Bool)

(assert (=> b!791190 (=> (not res!536105) (not e!439728))))

(declare-fun lt!353174 () SeekEntryResult!8132)

(assert (=> b!791190 (= res!536105 (or (= lt!353174 (MissingZero!8132 i!1173)) (= lt!353174 (MissingVacant!8132 i!1173))))))

(assert (=> b!791190 (= lt!353174 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!791191 () Bool)

(assert (=> b!791191 (= e!439728 e!439731)))

(declare-fun res!536114 () Bool)

(assert (=> b!791191 (=> (not res!536114) (not e!439731))))

(assert (=> b!791191 (= res!536114 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20525 a!3186) j!159) mask!3328) (select (arr!20525 a!3186) j!159) a!3186 mask!3328) lt!353171))))

(assert (=> b!791191 (= lt!353171 (Intermediate!8132 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!791192 () Bool)

(declare-fun res!536112 () Bool)

(assert (=> b!791192 (=> (not res!536112) (not e!439731))))

(assert (=> b!791192 (= res!536112 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20525 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!791193 () Bool)

(declare-fun res!536108 () Bool)

(assert (=> b!791193 (=> (not res!536108) (not e!439726))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791193 (= res!536108 (validKeyInArray!0 k!2102))))

(declare-fun b!791194 () Bool)

(declare-fun res!536111 () Bool)

(assert (=> b!791194 (=> (not res!536111) (not e!439728))))

(declare-datatypes ((List!14580 0))(
  ( (Nil!14577) (Cons!14576 (h!15705 (_ BitVec 64)) (t!20903 List!14580)) )
))
(declare-fun arrayNoDuplicates!0 (array!42887 (_ BitVec 32) List!14580) Bool)

(assert (=> b!791194 (= res!536111 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14577))))

(declare-fun b!791195 () Bool)

(declare-fun res!536115 () Bool)

(assert (=> b!791195 (=> (not res!536115) (not e!439726))))

(declare-fun arrayContainsKey!0 (array!42887 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791195 (= res!536115 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!791196 () Bool)

(declare-fun res!536118 () Bool)

(assert (=> b!791196 (=> (not res!536118) (not e!439726))))

(assert (=> b!791196 (= res!536118 (validKeyInArray!0 (select (arr!20525 a!3186) j!159)))))

(assert (= (and start!68018 res!536113) b!791189))

(assert (= (and b!791189 res!536117) b!791196))

(assert (= (and b!791196 res!536118) b!791193))

(assert (= (and b!791193 res!536108) b!791195))

(assert (= (and b!791195 res!536115) b!791190))

(assert (= (and b!791190 res!536105) b!791183))

(assert (= (and b!791183 res!536119) b!791194))

(assert (= (and b!791194 res!536111) b!791188))

(assert (= (and b!791188 res!536106) b!791191))

(assert (= (and b!791191 res!536114) b!791192))

(assert (= (and b!791192 res!536112) b!791180))

(assert (= (and b!791180 c!87948) b!791181))

(assert (= (and b!791180 (not c!87948)) b!791187))

(assert (= (and b!791180 res!536107) b!791185))

(assert (= (and b!791185 res!536109) b!791182))

(assert (= (and b!791182 res!536116) b!791186))

(assert (= (and b!791186 res!536110) b!791184))

(declare-fun m!732009 () Bool)

(assert (=> b!791193 m!732009))

(declare-fun m!732011 () Bool)

(assert (=> b!791190 m!732011))

(declare-fun m!732013 () Bool)

(assert (=> b!791184 m!732013))

(assert (=> b!791184 m!732013))

(declare-fun m!732015 () Bool)

(assert (=> b!791184 m!732015))

(assert (=> b!791186 m!732013))

(assert (=> b!791186 m!732013))

(declare-fun m!732017 () Bool)

(assert (=> b!791186 m!732017))

(assert (=> b!791181 m!732013))

(assert (=> b!791181 m!732013))

(declare-fun m!732019 () Bool)

(assert (=> b!791181 m!732019))

(declare-fun m!732021 () Bool)

(assert (=> b!791183 m!732021))

(assert (=> b!791196 m!732013))

(assert (=> b!791196 m!732013))

(declare-fun m!732023 () Bool)

(assert (=> b!791196 m!732023))

(declare-fun m!732025 () Bool)

(assert (=> b!791182 m!732025))

(declare-fun m!732027 () Bool)

(assert (=> b!791182 m!732027))

(assert (=> b!791187 m!732013))

(assert (=> b!791187 m!732013))

(declare-fun m!732029 () Bool)

(assert (=> b!791187 m!732029))

(declare-fun m!732031 () Bool)

(assert (=> b!791194 m!732031))

(declare-fun m!732033 () Bool)

(assert (=> start!68018 m!732033))

(declare-fun m!732035 () Bool)

(assert (=> start!68018 m!732035))

(declare-fun m!732037 () Bool)

(assert (=> b!791195 m!732037))

(assert (=> b!791191 m!732013))

(assert (=> b!791191 m!732013))

(declare-fun m!732039 () Bool)

(assert (=> b!791191 m!732039))

(assert (=> b!791191 m!732039))

(assert (=> b!791191 m!732013))

(declare-fun m!732041 () Bool)

(assert (=> b!791191 m!732041))

(declare-fun m!732043 () Bool)

(assert (=> b!791185 m!732043))

(declare-fun m!732045 () Bool)

(assert (=> b!791185 m!732045))

(declare-fun m!732047 () Bool)

(assert (=> b!791185 m!732047))

(declare-fun m!732049 () Bool)

(assert (=> b!791185 m!732049))

(declare-fun m!732051 () Bool)

(assert (=> b!791185 m!732051))

(assert (=> b!791185 m!732045))

(declare-fun m!732053 () Bool)

(assert (=> b!791192 m!732053))

(push 1)

