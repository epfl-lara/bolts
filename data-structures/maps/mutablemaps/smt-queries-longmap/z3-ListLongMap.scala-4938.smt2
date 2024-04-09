; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68022 () Bool)

(assert start!68022)

(declare-fun b!791282 () Bool)

(declare-fun e!439773 () Bool)

(declare-fun e!439779 () Bool)

(assert (=> b!791282 (= e!439773 e!439779)))

(declare-fun res!536196 () Bool)

(assert (=> b!791282 (=> (not res!536196) (not e!439779))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!353209 () (_ BitVec 64))

(declare-datatypes ((array!42891 0))(
  ( (array!42892 (arr!20527 (Array (_ BitVec 32) (_ BitVec 64))) (size!20948 (_ BitVec 32))) )
))
(declare-fun lt!353208 () array!42891)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8134 0))(
  ( (MissingZero!8134 (index!34903 (_ BitVec 32))) (Found!8134 (index!34904 (_ BitVec 32))) (Intermediate!8134 (undefined!8946 Bool) (index!34905 (_ BitVec 32)) (x!65869 (_ BitVec 32))) (Undefined!8134) (MissingVacant!8134 (index!34906 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42891 (_ BitVec 32)) SeekEntryResult!8134)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!791282 (= res!536196 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!353209 mask!3328) lt!353209 lt!353208 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!353209 lt!353208 mask!3328)))))

(declare-fun a!3186 () array!42891)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!791282 (= lt!353209 (select (store (arr!20527 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!791282 (= lt!353208 (array!42892 (store (arr!20527 a!3186) i!1173 k0!2102) (size!20948 a!3186)))))

(declare-fun b!791283 () Bool)

(declare-fun res!536206 () Bool)

(declare-fun e!439775 () Bool)

(assert (=> b!791283 (=> (not res!536206) (not e!439775))))

(declare-datatypes ((List!14582 0))(
  ( (Nil!14579) (Cons!14578 (h!15707 (_ BitVec 64)) (t!20905 List!14582)) )
))
(declare-fun arrayNoDuplicates!0 (array!42891 (_ BitVec 32) List!14582) Bool)

(assert (=> b!791283 (= res!536206 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14579))))

(declare-fun b!791284 () Bool)

(declare-fun res!536209 () Bool)

(declare-fun e!439780 () Bool)

(assert (=> b!791284 (=> (not res!536209) (not e!439780))))

(assert (=> b!791284 (= res!536209 (and (= (size!20948 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20948 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20948 a!3186)) (not (= i!1173 j!159))))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!439774 () Bool)

(declare-fun b!791285 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42891 (_ BitVec 32)) SeekEntryResult!8134)

(assert (=> b!791285 (= e!439774 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20527 a!3186) j!159) a!3186 mask!3328) (Found!8134 j!159)))))

(declare-fun b!791286 () Bool)

(assert (=> b!791286 (= e!439779 (not true))))

(declare-fun e!439776 () Bool)

(assert (=> b!791286 e!439776))

(declare-fun res!536197 () Bool)

(assert (=> b!791286 (=> (not res!536197) (not e!439776))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42891 (_ BitVec 32)) Bool)

(assert (=> b!791286 (= res!536197 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!27420 0))(
  ( (Unit!27421) )
))
(declare-fun lt!353207 () Unit!27420)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42891 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27420)

(assert (=> b!791286 (= lt!353207 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!791287 () Bool)

(declare-fun res!536200 () Bool)

(assert (=> b!791287 (=> (not res!536200) (not e!439773))))

(assert (=> b!791287 (= res!536200 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20527 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!353211 () SeekEntryResult!8134)

(declare-fun b!791288 () Bool)

(assert (=> b!791288 (= e!439774 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20527 a!3186) j!159) a!3186 mask!3328) lt!353211))))

(declare-fun res!536207 () Bool)

(assert (=> start!68022 (=> (not res!536207) (not e!439780))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68022 (= res!536207 (validMask!0 mask!3328))))

(assert (=> start!68022 e!439780))

(assert (=> start!68022 true))

(declare-fun array_inv!16301 (array!42891) Bool)

(assert (=> start!68022 (array_inv!16301 a!3186)))

(declare-fun b!791289 () Bool)

(declare-fun res!536205 () Bool)

(assert (=> b!791289 (=> (not res!536205) (not e!439780))))

(declare-fun arrayContainsKey!0 (array!42891 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!791289 (= res!536205 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!791290 () Bool)

(assert (=> b!791290 (= e!439780 e!439775)))

(declare-fun res!536198 () Bool)

(assert (=> b!791290 (=> (not res!536198) (not e!439775))))

(declare-fun lt!353210 () SeekEntryResult!8134)

(assert (=> b!791290 (= res!536198 (or (= lt!353210 (MissingZero!8134 i!1173)) (= lt!353210 (MissingVacant!8134 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42891 (_ BitVec 32)) SeekEntryResult!8134)

(assert (=> b!791290 (= lt!353210 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!791291 () Bool)

(declare-fun res!536202 () Bool)

(assert (=> b!791291 (=> (not res!536202) (not e!439780))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!791291 (= res!536202 (validKeyInArray!0 (select (arr!20527 a!3186) j!159)))))

(declare-fun b!791292 () Bool)

(declare-fun res!536201 () Bool)

(assert (=> b!791292 (=> (not res!536201) (not e!439773))))

(assert (=> b!791292 (= res!536201 e!439774)))

(declare-fun c!87954 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!791292 (= c!87954 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!791293 () Bool)

(declare-fun res!536199 () Bool)

(assert (=> b!791293 (=> (not res!536199) (not e!439775))))

(assert (=> b!791293 (= res!536199 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20948 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20948 a!3186))))))

(declare-fun b!791294 () Bool)

(declare-fun res!536208 () Bool)

(assert (=> b!791294 (=> (not res!536208) (not e!439780))))

(assert (=> b!791294 (= res!536208 (validKeyInArray!0 k0!2102))))

(declare-fun b!791295 () Bool)

(declare-fun e!439777 () Bool)

(assert (=> b!791295 (= e!439776 e!439777)))

(declare-fun res!536204 () Bool)

(assert (=> b!791295 (=> (not res!536204) (not e!439777))))

(declare-fun lt!353212 () SeekEntryResult!8134)

(assert (=> b!791295 (= res!536204 (= (seekEntryOrOpen!0 (select (arr!20527 a!3186) j!159) a!3186 mask!3328) lt!353212))))

(assert (=> b!791295 (= lt!353212 (Found!8134 j!159))))

(declare-fun b!791296 () Bool)

(declare-fun res!536195 () Bool)

(assert (=> b!791296 (=> (not res!536195) (not e!439775))))

(assert (=> b!791296 (= res!536195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!791297 () Bool)

(assert (=> b!791297 (= e!439775 e!439773)))

(declare-fun res!536203 () Bool)

(assert (=> b!791297 (=> (not res!536203) (not e!439773))))

(assert (=> b!791297 (= res!536203 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20527 a!3186) j!159) mask!3328) (select (arr!20527 a!3186) j!159) a!3186 mask!3328) lt!353211))))

(assert (=> b!791297 (= lt!353211 (Intermediate!8134 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!791298 () Bool)

(assert (=> b!791298 (= e!439777 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20527 a!3186) j!159) a!3186 mask!3328) lt!353212))))

(assert (= (and start!68022 res!536207) b!791284))

(assert (= (and b!791284 res!536209) b!791291))

(assert (= (and b!791291 res!536202) b!791294))

(assert (= (and b!791294 res!536208) b!791289))

(assert (= (and b!791289 res!536205) b!791290))

(assert (= (and b!791290 res!536198) b!791296))

(assert (= (and b!791296 res!536195) b!791283))

(assert (= (and b!791283 res!536206) b!791293))

(assert (= (and b!791293 res!536199) b!791297))

(assert (= (and b!791297 res!536203) b!791287))

(assert (= (and b!791287 res!536200) b!791292))

(assert (= (and b!791292 c!87954) b!791288))

(assert (= (and b!791292 (not c!87954)) b!791285))

(assert (= (and b!791292 res!536201) b!791282))

(assert (= (and b!791282 res!536196) b!791286))

(assert (= (and b!791286 res!536197) b!791295))

(assert (= (and b!791295 res!536204) b!791298))

(declare-fun m!732101 () Bool)

(assert (=> start!68022 m!732101))

(declare-fun m!732103 () Bool)

(assert (=> start!68022 m!732103))

(declare-fun m!732105 () Bool)

(assert (=> b!791290 m!732105))

(declare-fun m!732107 () Bool)

(assert (=> b!791282 m!732107))

(declare-fun m!732109 () Bool)

(assert (=> b!791282 m!732109))

(declare-fun m!732111 () Bool)

(assert (=> b!791282 m!732111))

(declare-fun m!732113 () Bool)

(assert (=> b!791282 m!732113))

(assert (=> b!791282 m!732109))

(declare-fun m!732115 () Bool)

(assert (=> b!791282 m!732115))

(declare-fun m!732117 () Bool)

(assert (=> b!791288 m!732117))

(assert (=> b!791288 m!732117))

(declare-fun m!732119 () Bool)

(assert (=> b!791288 m!732119))

(declare-fun m!732121 () Bool)

(assert (=> b!791287 m!732121))

(assert (=> b!791295 m!732117))

(assert (=> b!791295 m!732117))

(declare-fun m!732123 () Bool)

(assert (=> b!791295 m!732123))

(assert (=> b!791297 m!732117))

(assert (=> b!791297 m!732117))

(declare-fun m!732125 () Bool)

(assert (=> b!791297 m!732125))

(assert (=> b!791297 m!732125))

(assert (=> b!791297 m!732117))

(declare-fun m!732127 () Bool)

(assert (=> b!791297 m!732127))

(declare-fun m!732129 () Bool)

(assert (=> b!791294 m!732129))

(declare-fun m!732131 () Bool)

(assert (=> b!791286 m!732131))

(declare-fun m!732133 () Bool)

(assert (=> b!791286 m!732133))

(declare-fun m!732135 () Bool)

(assert (=> b!791296 m!732135))

(declare-fun m!732137 () Bool)

(assert (=> b!791289 m!732137))

(assert (=> b!791291 m!732117))

(assert (=> b!791291 m!732117))

(declare-fun m!732139 () Bool)

(assert (=> b!791291 m!732139))

(assert (=> b!791298 m!732117))

(assert (=> b!791298 m!732117))

(declare-fun m!732141 () Bool)

(assert (=> b!791298 m!732141))

(declare-fun m!732143 () Bool)

(assert (=> b!791283 m!732143))

(assert (=> b!791285 m!732117))

(assert (=> b!791285 m!732117))

(declare-fun m!732145 () Bool)

(assert (=> b!791285 m!732145))

(check-sat (not b!791290) (not b!791298) (not b!791283) (not b!791285) (not b!791295) (not b!791294) (not start!68022) (not b!791286) (not b!791296) (not b!791291) (not b!791289) (not b!791288) (not b!791297) (not b!791282))
(check-sat)
