; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68024 () Bool)

(assert start!68024)

(declare-fun b!791333 () Bool)

(declare-fun res!536249 () Bool)

(declare-fun e!439802 () Bool)

(assert (=> b!791333 (=> (not res!536249) (not e!439802))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42893 0))(
  ( (array!42894 (arr!20528 (Array (_ BitVec 32) (_ BitVec 64))) (size!20949 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42893)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!791333 (= res!536249 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20949 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20949 a!3186))))))

(declare-fun e!439799 () Bool)

(declare-fun b!791334 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8135 0))(
  ( (MissingZero!8135 (index!34907 (_ BitVec 32))) (Found!8135 (index!34908 (_ BitVec 32))) (Intermediate!8135 (undefined!8947 Bool) (index!34909 (_ BitVec 32)) (x!65870 (_ BitVec 32))) (Undefined!8135) (MissingVacant!8135 (index!34910 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42893 (_ BitVec 32)) SeekEntryResult!8135)

(assert (=> b!791334 (= e!439799 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20528 a!3186) j!159) a!3186 mask!3328) (Found!8135 j!159)))))

(declare-fun b!791335 () Bool)

(declare-fun res!536251 () Bool)

(assert (=> b!791335 (=> (not res!536251) (not e!439802))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42893 (_ BitVec 32)) Bool)

(assert (=> b!791335 (= res!536251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!791336 () Bool)

(declare-fun res!536246 () Bool)

(declare-fun e!439801 () Bool)

(assert (=> b!791336 (=> (not res!536246) (not e!439801))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791336 (= res!536246 (validKeyInArray!0 (select (arr!20528 a!3186) j!159)))))

(declare-fun b!791337 () Bool)

(declare-fun e!439803 () Bool)

(declare-fun e!439800 () Bool)

(assert (=> b!791337 (= e!439803 e!439800)))

(declare-fun res!536253 () Bool)

(assert (=> b!791337 (=> (not res!536253) (not e!439800))))

(declare-fun lt!353226 () array!42893)

(declare-fun lt!353230 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42893 (_ BitVec 32)) SeekEntryResult!8135)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!791337 (= res!536253 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!353230 mask!3328) lt!353230 lt!353226 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!353230 lt!353226 mask!3328)))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!791337 (= lt!353230 (select (store (arr!20528 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!791337 (= lt!353226 (array!42894 (store (arr!20528 a!3186) i!1173 k!2102) (size!20949 a!3186)))))

(declare-fun b!791338 () Bool)

(declare-fun e!439798 () Bool)

(declare-fun e!439804 () Bool)

(assert (=> b!791338 (= e!439798 e!439804)))

(declare-fun res!536240 () Bool)

(assert (=> b!791338 (=> (not res!536240) (not e!439804))))

(declare-fun lt!353229 () SeekEntryResult!8135)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42893 (_ BitVec 32)) SeekEntryResult!8135)

(assert (=> b!791338 (= res!536240 (= (seekEntryOrOpen!0 (select (arr!20528 a!3186) j!159) a!3186 mask!3328) lt!353229))))

(assert (=> b!791338 (= lt!353229 (Found!8135 j!159))))

(declare-fun res!536242 () Bool)

(assert (=> start!68024 (=> (not res!536242) (not e!439801))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68024 (= res!536242 (validMask!0 mask!3328))))

(assert (=> start!68024 e!439801))

(assert (=> start!68024 true))

(declare-fun array_inv!16302 (array!42893) Bool)

(assert (=> start!68024 (array_inv!16302 a!3186)))

(declare-fun b!791339 () Bool)

(declare-fun res!536248 () Bool)

(assert (=> b!791339 (=> (not res!536248) (not e!439803))))

(assert (=> b!791339 (= res!536248 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20528 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!791340 () Bool)

(assert (=> b!791340 (= e!439802 e!439803)))

(declare-fun res!536244 () Bool)

(assert (=> b!791340 (=> (not res!536244) (not e!439803))))

(declare-fun lt!353225 () SeekEntryResult!8135)

(assert (=> b!791340 (= res!536244 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20528 a!3186) j!159) mask!3328) (select (arr!20528 a!3186) j!159) a!3186 mask!3328) lt!353225))))

(assert (=> b!791340 (= lt!353225 (Intermediate!8135 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!791341 () Bool)

(declare-fun res!536254 () Bool)

(assert (=> b!791341 (=> (not res!536254) (not e!439803))))

(assert (=> b!791341 (= res!536254 e!439799)))

(declare-fun c!87957 () Bool)

(assert (=> b!791341 (= c!87957 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!791342 () Bool)

(declare-fun res!536247 () Bool)

(assert (=> b!791342 (=> (not res!536247) (not e!439801))))

(assert (=> b!791342 (= res!536247 (validKeyInArray!0 k!2102))))

(declare-fun b!791343 () Bool)

(assert (=> b!791343 (= e!439804 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20528 a!3186) j!159) a!3186 mask!3328) lt!353229))))

(declare-fun b!791344 () Bool)

(assert (=> b!791344 (= e!439799 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20528 a!3186) j!159) a!3186 mask!3328) lt!353225))))

(declare-fun b!791345 () Bool)

(declare-fun res!536250 () Bool)

(assert (=> b!791345 (=> (not res!536250) (not e!439802))))

(declare-datatypes ((List!14583 0))(
  ( (Nil!14580) (Cons!14579 (h!15708 (_ BitVec 64)) (t!20906 List!14583)) )
))
(declare-fun arrayNoDuplicates!0 (array!42893 (_ BitVec 32) List!14583) Bool)

(assert (=> b!791345 (= res!536250 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14580))))

(declare-fun b!791346 () Bool)

(assert (=> b!791346 (= e!439801 e!439802)))

(declare-fun res!536245 () Bool)

(assert (=> b!791346 (=> (not res!536245) (not e!439802))))

(declare-fun lt!353228 () SeekEntryResult!8135)

(assert (=> b!791346 (= res!536245 (or (= lt!353228 (MissingZero!8135 i!1173)) (= lt!353228 (MissingVacant!8135 i!1173))))))

(assert (=> b!791346 (= lt!353228 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!791347 () Bool)

(declare-fun res!536252 () Bool)

(assert (=> b!791347 (=> (not res!536252) (not e!439801))))

(declare-fun arrayContainsKey!0 (array!42893 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791347 (= res!536252 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!791348 () Bool)

(declare-fun res!536243 () Bool)

(assert (=> b!791348 (=> (not res!536243) (not e!439801))))

(assert (=> b!791348 (= res!536243 (and (= (size!20949 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20949 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20949 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!791349 () Bool)

(assert (=> b!791349 (= e!439800 (not true))))

(assert (=> b!791349 e!439798))

(declare-fun res!536241 () Bool)

(assert (=> b!791349 (=> (not res!536241) (not e!439798))))

(assert (=> b!791349 (= res!536241 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!27422 0))(
  ( (Unit!27423) )
))
(declare-fun lt!353227 () Unit!27422)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42893 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27422)

(assert (=> b!791349 (= lt!353227 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!68024 res!536242) b!791348))

(assert (= (and b!791348 res!536243) b!791336))

(assert (= (and b!791336 res!536246) b!791342))

(assert (= (and b!791342 res!536247) b!791347))

(assert (= (and b!791347 res!536252) b!791346))

(assert (= (and b!791346 res!536245) b!791335))

(assert (= (and b!791335 res!536251) b!791345))

(assert (= (and b!791345 res!536250) b!791333))

(assert (= (and b!791333 res!536249) b!791340))

(assert (= (and b!791340 res!536244) b!791339))

(assert (= (and b!791339 res!536248) b!791341))

(assert (= (and b!791341 c!87957) b!791344))

(assert (= (and b!791341 (not c!87957)) b!791334))

(assert (= (and b!791341 res!536254) b!791337))

(assert (= (and b!791337 res!536253) b!791349))

(assert (= (and b!791349 res!536241) b!791338))

(assert (= (and b!791338 res!536240) b!791343))

(declare-fun m!732147 () Bool)

(assert (=> b!791335 m!732147))

(declare-fun m!732149 () Bool)

(assert (=> b!791342 m!732149))

(declare-fun m!732151 () Bool)

(assert (=> b!791334 m!732151))

(assert (=> b!791334 m!732151))

(declare-fun m!732153 () Bool)

(assert (=> b!791334 m!732153))

(declare-fun m!732155 () Bool)

(assert (=> b!791345 m!732155))

(declare-fun m!732157 () Bool)

(assert (=> b!791337 m!732157))

(declare-fun m!732159 () Bool)

(assert (=> b!791337 m!732159))

(declare-fun m!732161 () Bool)

(assert (=> b!791337 m!732161))

(declare-fun m!732163 () Bool)

(assert (=> b!791337 m!732163))

(assert (=> b!791337 m!732157))

(declare-fun m!732165 () Bool)

(assert (=> b!791337 m!732165))

(declare-fun m!732167 () Bool)

(assert (=> b!791347 m!732167))

(declare-fun m!732169 () Bool)

(assert (=> start!68024 m!732169))

(declare-fun m!732171 () Bool)

(assert (=> start!68024 m!732171))

(declare-fun m!732173 () Bool)

(assert (=> b!791346 m!732173))

(declare-fun m!732175 () Bool)

(assert (=> b!791339 m!732175))

(assert (=> b!791338 m!732151))

(assert (=> b!791338 m!732151))

(declare-fun m!732177 () Bool)

(assert (=> b!791338 m!732177))

(assert (=> b!791343 m!732151))

(assert (=> b!791343 m!732151))

(declare-fun m!732179 () Bool)

(assert (=> b!791343 m!732179))

(assert (=> b!791336 m!732151))

(assert (=> b!791336 m!732151))

(declare-fun m!732181 () Bool)

(assert (=> b!791336 m!732181))

(declare-fun m!732183 () Bool)

(assert (=> b!791349 m!732183))

(declare-fun m!732185 () Bool)

(assert (=> b!791349 m!732185))

(assert (=> b!791340 m!732151))

(assert (=> b!791340 m!732151))

(declare-fun m!732187 () Bool)

(assert (=> b!791340 m!732187))

(assert (=> b!791340 m!732187))

(assert (=> b!791340 m!732151))

(declare-fun m!732189 () Bool)

(assert (=> b!791340 m!732189))

(assert (=> b!791344 m!732151))

(assert (=> b!791344 m!732151))

(declare-fun m!732191 () Bool)

(assert (=> b!791344 m!732191))

(push 1)

