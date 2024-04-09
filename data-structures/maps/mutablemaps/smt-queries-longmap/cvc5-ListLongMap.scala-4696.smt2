; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65254 () Bool)

(assert start!65254)

(declare-fun b!739146 () Bool)

(declare-datatypes ((Unit!25246 0))(
  ( (Unit!25247) )
))
(declare-fun e!413355 () Unit!25246)

(declare-fun Unit!25248 () Unit!25246)

(assert (=> b!739146 (= e!413355 Unit!25248)))

(declare-datatypes ((array!41380 0))(
  ( (array!41381 (arr!19800 (Array (_ BitVec 32) (_ BitVec 64))) (size!20221 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41380)

(declare-fun lt!328222 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7407 0))(
  ( (MissingZero!7407 (index!31995 (_ BitVec 32))) (Found!7407 (index!31996 (_ BitVec 32))) (Intermediate!7407 (undefined!8219 Bool) (index!31997 (_ BitVec 32)) (x!63014 (_ BitVec 32))) (Undefined!7407) (MissingVacant!7407 (index!31998 (_ BitVec 32))) )
))
(declare-fun lt!328226 () SeekEntryResult!7407)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41380 (_ BitVec 32)) SeekEntryResult!7407)

(assert (=> b!739146 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328222 (select (arr!19800 a!3186) j!159) a!3186 mask!3328) lt!328226)))

(declare-fun b!739147 () Bool)

(declare-fun e!413344 () Bool)

(declare-fun e!413353 () Bool)

(assert (=> b!739147 (= e!413344 e!413353)))

(declare-fun res!497072 () Bool)

(assert (=> b!739147 (=> (not res!497072) (not e!413353))))

(declare-fun lt!328223 () SeekEntryResult!7407)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!739147 (= res!497072 (or (= lt!328223 (MissingZero!7407 i!1173)) (= lt!328223 (MissingVacant!7407 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41380 (_ BitVec 32)) SeekEntryResult!7407)

(assert (=> b!739147 (= lt!328223 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!739148 () Bool)

(declare-fun res!497077 () Bool)

(declare-fun e!413354 () Bool)

(assert (=> b!739148 (=> res!497077 e!413354)))

(declare-fun e!413345 () Bool)

(assert (=> b!739148 (= res!497077 e!413345)))

(declare-fun c!81423 () Bool)

(declare-fun lt!328216 () Bool)

(assert (=> b!739148 (= c!81423 lt!328216)))

(declare-fun b!739149 () Bool)

(declare-fun e!413347 () Bool)

(declare-fun e!413349 () Bool)

(assert (=> b!739149 (= e!413347 e!413349)))

(declare-fun res!497080 () Bool)

(assert (=> b!739149 (=> (not res!497080) (not e!413349))))

(declare-fun lt!328213 () SeekEntryResult!7407)

(declare-fun lt!328221 () SeekEntryResult!7407)

(assert (=> b!739149 (= res!497080 (= lt!328213 lt!328221))))

(declare-fun lt!328225 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!328219 () array!41380)

(assert (=> b!739149 (= lt!328221 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!328225 lt!328219 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739149 (= lt!328213 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!328225 mask!3328) lt!328225 lt!328219 mask!3328))))

(assert (=> b!739149 (= lt!328225 (select (store (arr!19800 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!739149 (= lt!328219 (array!41381 (store (arr!19800 a!3186) i!1173 k!2102) (size!20221 a!3186)))))

(declare-fun b!739150 () Bool)

(declare-fun res!497069 () Bool)

(assert (=> b!739150 (=> (not res!497069) (not e!413347))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!739150 (= res!497069 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19800 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!739151 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun lt!328220 () SeekEntryResult!7407)

(declare-fun e!413351 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41380 (_ BitVec 32)) SeekEntryResult!7407)

(assert (=> b!739151 (= e!413351 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19800 a!3186) j!159) a!3186 mask!3328) lt!328220))))

(declare-fun b!739152 () Bool)

(declare-fun e!413350 () Bool)

(assert (=> b!739152 (= e!413349 (not e!413350))))

(declare-fun res!497067 () Bool)

(assert (=> b!739152 (=> res!497067 e!413350)))

(assert (=> b!739152 (= res!497067 (or (not (is-Intermediate!7407 lt!328221)) (bvsge x!1131 (x!63014 lt!328221))))))

(declare-fun lt!328217 () SeekEntryResult!7407)

(assert (=> b!739152 (= lt!328217 (Found!7407 j!159))))

(declare-fun e!413346 () Bool)

(assert (=> b!739152 e!413346))

(declare-fun res!497082 () Bool)

(assert (=> b!739152 (=> (not res!497082) (not e!413346))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41380 (_ BitVec 32)) Bool)

(assert (=> b!739152 (= res!497082 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!328224 () Unit!25246)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41380 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25246)

(assert (=> b!739152 (= lt!328224 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!739153 () Bool)

(assert (=> b!739153 (= e!413350 e!413354)))

(declare-fun res!497073 () Bool)

(assert (=> b!739153 (=> res!497073 e!413354)))

(assert (=> b!739153 (= res!497073 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!328222 #b00000000000000000000000000000000) (bvsge lt!328222 (size!20221 a!3186))))))

(declare-fun lt!328214 () Unit!25246)

(assert (=> b!739153 (= lt!328214 e!413355)))

(declare-fun c!81421 () Bool)

(assert (=> b!739153 (= c!81421 lt!328216)))

(assert (=> b!739153 (= lt!328216 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739153 (= lt!328222 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!739154 () Bool)

(declare-fun res!497070 () Bool)

(assert (=> b!739154 (=> (not res!497070) (not e!413353))))

(assert (=> b!739154 (= res!497070 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20221 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20221 a!3186))))))

(declare-fun b!739155 () Bool)

(assert (=> b!739155 (= e!413354 true)))

(declare-fun lt!328215 () SeekEntryResult!7407)

(assert (=> b!739155 (= lt!328215 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328222 lt!328225 lt!328219 mask!3328))))

(declare-fun res!497079 () Bool)

(assert (=> start!65254 (=> (not res!497079) (not e!413344))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65254 (= res!497079 (validMask!0 mask!3328))))

(assert (=> start!65254 e!413344))

(assert (=> start!65254 true))

(declare-fun array_inv!15574 (array!41380) Bool)

(assert (=> start!65254 (array_inv!15574 a!3186)))

(declare-fun b!739156 () Bool)

(declare-fun res!497075 () Bool)

(assert (=> b!739156 (=> (not res!497075) (not e!413347))))

(declare-fun e!413348 () Bool)

(assert (=> b!739156 (= res!497075 e!413348)))

(declare-fun c!81422 () Bool)

(assert (=> b!739156 (= c!81422 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!739157 () Bool)

(assert (=> b!739157 (= e!413345 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328222 (select (arr!19800 a!3186) j!159) a!3186 mask!3328) lt!328226)))))

(declare-fun b!739158 () Bool)

(declare-fun res!497081 () Bool)

(assert (=> b!739158 (=> (not res!497081) (not e!413344))))

(declare-fun arrayContainsKey!0 (array!41380 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!739158 (= res!497081 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!739159 () Bool)

(declare-fun res!497076 () Bool)

(assert (=> b!739159 (=> (not res!497076) (not e!413353))))

(assert (=> b!739159 (= res!497076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!739160 () Bool)

(declare-fun Unit!25249 () Unit!25246)

(assert (=> b!739160 (= e!413355 Unit!25249)))

(declare-fun lt!328218 () SeekEntryResult!7407)

(assert (=> b!739160 (= lt!328218 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19800 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!739160 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328222 resIntermediateIndex!5 (select (arr!19800 a!3186) j!159) a!3186 mask!3328) lt!328217)))

(declare-fun b!739161 () Bool)

(assert (=> b!739161 (= e!413346 e!413351)))

(declare-fun res!497065 () Bool)

(assert (=> b!739161 (=> (not res!497065) (not e!413351))))

(assert (=> b!739161 (= res!497065 (= (seekEntryOrOpen!0 (select (arr!19800 a!3186) j!159) a!3186 mask!3328) lt!328220))))

(assert (=> b!739161 (= lt!328220 (Found!7407 j!159))))

(declare-fun b!739162 () Bool)

(assert (=> b!739162 (= e!413348 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19800 a!3186) j!159) a!3186 mask!3328) (Found!7407 j!159)))))

(declare-fun b!739163 () Bool)

(declare-fun res!497068 () Bool)

(assert (=> b!739163 (=> (not res!497068) (not e!413344))))

(assert (=> b!739163 (= res!497068 (and (= (size!20221 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20221 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20221 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!739164 () Bool)

(assert (=> b!739164 (= e!413348 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19800 a!3186) j!159) a!3186 mask!3328) lt!328226))))

(declare-fun b!739165 () Bool)

(assert (=> b!739165 (= e!413345 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328222 resIntermediateIndex!5 (select (arr!19800 a!3186) j!159) a!3186 mask!3328) lt!328217)))))

(declare-fun b!739166 () Bool)

(declare-fun res!497078 () Bool)

(assert (=> b!739166 (=> (not res!497078) (not e!413344))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!739166 (= res!497078 (validKeyInArray!0 (select (arr!19800 a!3186) j!159)))))

(declare-fun b!739167 () Bool)

(assert (=> b!739167 (= e!413353 e!413347)))

(declare-fun res!497066 () Bool)

(assert (=> b!739167 (=> (not res!497066) (not e!413347))))

(assert (=> b!739167 (= res!497066 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19800 a!3186) j!159) mask!3328) (select (arr!19800 a!3186) j!159) a!3186 mask!3328) lt!328226))))

(assert (=> b!739167 (= lt!328226 (Intermediate!7407 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!739168 () Bool)

(declare-fun res!497074 () Bool)

(assert (=> b!739168 (=> (not res!497074) (not e!413344))))

(assert (=> b!739168 (= res!497074 (validKeyInArray!0 k!2102))))

(declare-fun b!739169 () Bool)

(declare-fun res!497071 () Bool)

(assert (=> b!739169 (=> (not res!497071) (not e!413353))))

(declare-datatypes ((List!13855 0))(
  ( (Nil!13852) (Cons!13851 (h!14923 (_ BitVec 64)) (t!20178 List!13855)) )
))
(declare-fun arrayNoDuplicates!0 (array!41380 (_ BitVec 32) List!13855) Bool)

(assert (=> b!739169 (= res!497071 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13852))))

(assert (= (and start!65254 res!497079) b!739163))

(assert (= (and b!739163 res!497068) b!739166))

(assert (= (and b!739166 res!497078) b!739168))

(assert (= (and b!739168 res!497074) b!739158))

(assert (= (and b!739158 res!497081) b!739147))

(assert (= (and b!739147 res!497072) b!739159))

(assert (= (and b!739159 res!497076) b!739169))

(assert (= (and b!739169 res!497071) b!739154))

(assert (= (and b!739154 res!497070) b!739167))

(assert (= (and b!739167 res!497066) b!739150))

(assert (= (and b!739150 res!497069) b!739156))

(assert (= (and b!739156 c!81422) b!739164))

(assert (= (and b!739156 (not c!81422)) b!739162))

(assert (= (and b!739156 res!497075) b!739149))

(assert (= (and b!739149 res!497080) b!739152))

(assert (= (and b!739152 res!497082) b!739161))

(assert (= (and b!739161 res!497065) b!739151))

(assert (= (and b!739152 (not res!497067)) b!739153))

(assert (= (and b!739153 c!81421) b!739146))

(assert (= (and b!739153 (not c!81421)) b!739160))

(assert (= (and b!739153 (not res!497073)) b!739148))

(assert (= (and b!739148 c!81423) b!739157))

(assert (= (and b!739148 (not c!81423)) b!739165))

(assert (= (and b!739148 (not res!497077)) b!739155))

(declare-fun m!690667 () Bool)

(assert (=> b!739161 m!690667))

(assert (=> b!739161 m!690667))

(declare-fun m!690669 () Bool)

(assert (=> b!739161 m!690669))

(declare-fun m!690671 () Bool)

(assert (=> b!739159 m!690671))

(declare-fun m!690673 () Bool)

(assert (=> b!739149 m!690673))

(declare-fun m!690675 () Bool)

(assert (=> b!739149 m!690675))

(declare-fun m!690677 () Bool)

(assert (=> b!739149 m!690677))

(declare-fun m!690679 () Bool)

(assert (=> b!739149 m!690679))

(assert (=> b!739149 m!690673))

(declare-fun m!690681 () Bool)

(assert (=> b!739149 m!690681))

(assert (=> b!739146 m!690667))

(assert (=> b!739146 m!690667))

(declare-fun m!690683 () Bool)

(assert (=> b!739146 m!690683))

(assert (=> b!739162 m!690667))

(assert (=> b!739162 m!690667))

(declare-fun m!690685 () Bool)

(assert (=> b!739162 m!690685))

(declare-fun m!690687 () Bool)

(assert (=> b!739152 m!690687))

(declare-fun m!690689 () Bool)

(assert (=> b!739152 m!690689))

(assert (=> b!739151 m!690667))

(assert (=> b!739151 m!690667))

(declare-fun m!690691 () Bool)

(assert (=> b!739151 m!690691))

(declare-fun m!690693 () Bool)

(assert (=> b!739169 m!690693))

(declare-fun m!690695 () Bool)

(assert (=> b!739147 m!690695))

(assert (=> b!739167 m!690667))

(assert (=> b!739167 m!690667))

(declare-fun m!690697 () Bool)

(assert (=> b!739167 m!690697))

(assert (=> b!739167 m!690697))

(assert (=> b!739167 m!690667))

(declare-fun m!690699 () Bool)

(assert (=> b!739167 m!690699))

(declare-fun m!690701 () Bool)

(assert (=> b!739155 m!690701))

(declare-fun m!690703 () Bool)

(assert (=> b!739153 m!690703))

(assert (=> b!739157 m!690667))

(assert (=> b!739157 m!690667))

(assert (=> b!739157 m!690683))

(assert (=> b!739164 m!690667))

(assert (=> b!739164 m!690667))

(declare-fun m!690705 () Bool)

(assert (=> b!739164 m!690705))

(assert (=> b!739165 m!690667))

(assert (=> b!739165 m!690667))

(declare-fun m!690707 () Bool)

(assert (=> b!739165 m!690707))

(declare-fun m!690709 () Bool)

(assert (=> b!739168 m!690709))

(assert (=> b!739160 m!690667))

(assert (=> b!739160 m!690667))

(assert (=> b!739160 m!690685))

(assert (=> b!739160 m!690667))

(assert (=> b!739160 m!690707))

(declare-fun m!690711 () Bool)

(assert (=> b!739158 m!690711))

(assert (=> b!739166 m!690667))

(assert (=> b!739166 m!690667))

(declare-fun m!690713 () Bool)

(assert (=> b!739166 m!690713))

(declare-fun m!690715 () Bool)

(assert (=> start!65254 m!690715))

(declare-fun m!690717 () Bool)

(assert (=> start!65254 m!690717))

(declare-fun m!690719 () Bool)

(assert (=> b!739150 m!690719))

(push 1)

