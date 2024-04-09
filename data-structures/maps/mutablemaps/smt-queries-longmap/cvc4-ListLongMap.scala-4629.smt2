; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64496 () Bool)

(assert start!64496)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40967 0))(
  ( (array!40968 (arr!19601 (Array (_ BitVec 32) (_ BitVec 64))) (size!20022 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40967)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!725134 () Bool)

(declare-fun e!406124 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7208 0))(
  ( (MissingZero!7208 (index!31199 (_ BitVec 32))) (Found!7208 (index!31200 (_ BitVec 32))) (Intermediate!7208 (undefined!8020 Bool) (index!31201 (_ BitVec 32)) (x!62219 (_ BitVec 32))) (Undefined!7208) (MissingVacant!7208 (index!31202 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40967 (_ BitVec 32)) SeekEntryResult!7208)

(assert (=> b!725134 (= e!406124 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19601 a!3186) j!159) a!3186 mask!3328) (Found!7208 j!159)))))

(declare-fun b!725135 () Bool)

(declare-fun res!486400 () Bool)

(declare-fun e!406127 () Bool)

(assert (=> b!725135 (=> (not res!486400) (not e!406127))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!725135 (= res!486400 (and (= (size!20022 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20022 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20022 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!725136 () Bool)

(declare-fun e!406121 () Bool)

(declare-fun e!406123 () Bool)

(assert (=> b!725136 (= e!406121 e!406123)))

(declare-fun res!486408 () Bool)

(assert (=> b!725136 (=> (not res!486408) (not e!406123))))

(declare-fun lt!321245 () SeekEntryResult!7208)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40967 (_ BitVec 32)) SeekEntryResult!7208)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!725136 (= res!486408 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19601 a!3186) j!159) mask!3328) (select (arr!19601 a!3186) j!159) a!3186 mask!3328) lt!321245))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!725136 (= lt!321245 (Intermediate!7208 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!725137 () Bool)

(declare-fun res!486405 () Bool)

(assert (=> b!725137 (=> (not res!486405) (not e!406123))))

(assert (=> b!725137 (= res!486405 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19601 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!725138 () Bool)

(declare-fun res!486399 () Bool)

(assert (=> b!725138 (=> (not res!486399) (not e!406121))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40967 (_ BitVec 32)) Bool)

(assert (=> b!725138 (= res!486399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!725139 () Bool)

(declare-fun res!486401 () Bool)

(assert (=> b!725139 (=> (not res!486401) (not e!406127))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40967 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!725139 (= res!486401 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!725140 () Bool)

(declare-fun res!486395 () Bool)

(assert (=> b!725140 (=> (not res!486395) (not e!406121))))

(declare-datatypes ((List!13656 0))(
  ( (Nil!13653) (Cons!13652 (h!14709 (_ BitVec 64)) (t!19979 List!13656)) )
))
(declare-fun arrayNoDuplicates!0 (array!40967 (_ BitVec 32) List!13656) Bool)

(assert (=> b!725140 (= res!486395 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13653))))

(declare-fun b!725141 () Bool)

(declare-fun e!406126 () Bool)

(assert (=> b!725141 (= e!406123 e!406126)))

(declare-fun res!486402 () Bool)

(assert (=> b!725141 (=> (not res!486402) (not e!406126))))

(declare-fun lt!321247 () array!40967)

(declare-fun lt!321243 () (_ BitVec 64))

(assert (=> b!725141 (= res!486402 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321243 mask!3328) lt!321243 lt!321247 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321243 lt!321247 mask!3328)))))

(assert (=> b!725141 (= lt!321243 (select (store (arr!19601 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!725141 (= lt!321247 (array!40968 (store (arr!19601 a!3186) i!1173 k!2102) (size!20022 a!3186)))))

(declare-fun res!486394 () Bool)

(assert (=> start!64496 (=> (not res!486394) (not e!406127))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64496 (= res!486394 (validMask!0 mask!3328))))

(assert (=> start!64496 e!406127))

(assert (=> start!64496 true))

(declare-fun array_inv!15375 (array!40967) Bool)

(assert (=> start!64496 (array_inv!15375 a!3186)))

(declare-fun b!725142 () Bool)

(assert (=> b!725142 (= e!406127 e!406121)))

(declare-fun res!486403 () Bool)

(assert (=> b!725142 (=> (not res!486403) (not e!406121))))

(declare-fun lt!321246 () SeekEntryResult!7208)

(assert (=> b!725142 (= res!486403 (or (= lt!321246 (MissingZero!7208 i!1173)) (= lt!321246 (MissingVacant!7208 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40967 (_ BitVec 32)) SeekEntryResult!7208)

(assert (=> b!725142 (= lt!321246 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!725143 () Bool)

(declare-fun res!486406 () Bool)

(assert (=> b!725143 (=> (not res!486406) (not e!406123))))

(assert (=> b!725143 (= res!486406 e!406124)))

(declare-fun c!79743 () Bool)

(assert (=> b!725143 (= c!79743 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!725144 () Bool)

(declare-fun lt!321248 () SeekEntryResult!7208)

(declare-fun e!406125 () Bool)

(assert (=> b!725144 (= e!406125 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19601 a!3186) j!159) a!3186 mask!3328) lt!321248))))

(declare-fun b!725145 () Bool)

(declare-fun res!486407 () Bool)

(assert (=> b!725145 (=> (not res!486407) (not e!406121))))

(assert (=> b!725145 (= res!486407 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20022 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20022 a!3186))))))

(declare-fun b!725146 () Bool)

(assert (=> b!725146 (= e!406124 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19601 a!3186) j!159) a!3186 mask!3328) lt!321245))))

(declare-fun b!725147 () Bool)

(declare-fun res!486397 () Bool)

(assert (=> b!725147 (=> (not res!486397) (not e!406127))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!725147 (= res!486397 (validKeyInArray!0 k!2102))))

(declare-fun b!725148 () Bool)

(declare-fun e!406122 () Bool)

(assert (=> b!725148 (= e!406122 e!406125)))

(declare-fun res!486396 () Bool)

(assert (=> b!725148 (=> (not res!486396) (not e!406125))))

(assert (=> b!725148 (= res!486396 (= (seekEntryOrOpen!0 (select (arr!19601 a!3186) j!159) a!3186 mask!3328) lt!321248))))

(assert (=> b!725148 (= lt!321248 (Found!7208 j!159))))

(declare-fun b!725149 () Bool)

(assert (=> b!725149 (= e!406126 (not true))))

(assert (=> b!725149 e!406122))

(declare-fun res!486404 () Bool)

(assert (=> b!725149 (=> (not res!486404) (not e!406122))))

(assert (=> b!725149 (= res!486404 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24734 0))(
  ( (Unit!24735) )
))
(declare-fun lt!321244 () Unit!24734)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40967 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24734)

(assert (=> b!725149 (= lt!321244 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!725150 () Bool)

(declare-fun res!486398 () Bool)

(assert (=> b!725150 (=> (not res!486398) (not e!406127))))

(assert (=> b!725150 (= res!486398 (validKeyInArray!0 (select (arr!19601 a!3186) j!159)))))

(assert (= (and start!64496 res!486394) b!725135))

(assert (= (and b!725135 res!486400) b!725150))

(assert (= (and b!725150 res!486398) b!725147))

(assert (= (and b!725147 res!486397) b!725139))

(assert (= (and b!725139 res!486401) b!725142))

(assert (= (and b!725142 res!486403) b!725138))

(assert (= (and b!725138 res!486399) b!725140))

(assert (= (and b!725140 res!486395) b!725145))

(assert (= (and b!725145 res!486407) b!725136))

(assert (= (and b!725136 res!486408) b!725137))

(assert (= (and b!725137 res!486405) b!725143))

(assert (= (and b!725143 c!79743) b!725146))

(assert (= (and b!725143 (not c!79743)) b!725134))

(assert (= (and b!725143 res!486406) b!725141))

(assert (= (and b!725141 res!486402) b!725149))

(assert (= (and b!725149 res!486404) b!725148))

(assert (= (and b!725148 res!486396) b!725144))

(declare-fun m!679413 () Bool)

(assert (=> b!725136 m!679413))

(assert (=> b!725136 m!679413))

(declare-fun m!679415 () Bool)

(assert (=> b!725136 m!679415))

(assert (=> b!725136 m!679415))

(assert (=> b!725136 m!679413))

(declare-fun m!679417 () Bool)

(assert (=> b!725136 m!679417))

(assert (=> b!725150 m!679413))

(assert (=> b!725150 m!679413))

(declare-fun m!679419 () Bool)

(assert (=> b!725150 m!679419))

(declare-fun m!679421 () Bool)

(assert (=> b!725138 m!679421))

(declare-fun m!679423 () Bool)

(assert (=> b!725147 m!679423))

(declare-fun m!679425 () Bool)

(assert (=> b!725149 m!679425))

(declare-fun m!679427 () Bool)

(assert (=> b!725149 m!679427))

(assert (=> b!725144 m!679413))

(assert (=> b!725144 m!679413))

(declare-fun m!679429 () Bool)

(assert (=> b!725144 m!679429))

(assert (=> b!725134 m!679413))

(assert (=> b!725134 m!679413))

(declare-fun m!679431 () Bool)

(assert (=> b!725134 m!679431))

(declare-fun m!679433 () Bool)

(assert (=> start!64496 m!679433))

(declare-fun m!679435 () Bool)

(assert (=> start!64496 m!679435))

(assert (=> b!725146 m!679413))

(assert (=> b!725146 m!679413))

(declare-fun m!679437 () Bool)

(assert (=> b!725146 m!679437))

(assert (=> b!725148 m!679413))

(assert (=> b!725148 m!679413))

(declare-fun m!679439 () Bool)

(assert (=> b!725148 m!679439))

(declare-fun m!679441 () Bool)

(assert (=> b!725137 m!679441))

(declare-fun m!679443 () Bool)

(assert (=> b!725139 m!679443))

(declare-fun m!679445 () Bool)

(assert (=> b!725142 m!679445))

(declare-fun m!679447 () Bool)

(assert (=> b!725140 m!679447))

(declare-fun m!679449 () Bool)

(assert (=> b!725141 m!679449))

(declare-fun m!679451 () Bool)

(assert (=> b!725141 m!679451))

(declare-fun m!679453 () Bool)

(assert (=> b!725141 m!679453))

(declare-fun m!679455 () Bool)

(assert (=> b!725141 m!679455))

(assert (=> b!725141 m!679451))

(declare-fun m!679457 () Bool)

(assert (=> b!725141 m!679457))

(push 1)

