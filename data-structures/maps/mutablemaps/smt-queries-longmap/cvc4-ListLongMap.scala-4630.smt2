; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64502 () Bool)

(assert start!64502)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40973 0))(
  ( (array!40974 (arr!19604 (Array (_ BitVec 32) (_ BitVec 64))) (size!20025 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40973)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!725287 () Bool)

(declare-fun e!406193 () Bool)

(declare-datatypes ((SeekEntryResult!7211 0))(
  ( (MissingZero!7211 (index!31211 (_ BitVec 32))) (Found!7211 (index!31212 (_ BitVec 32))) (Intermediate!7211 (undefined!8023 Bool) (index!31213 (_ BitVec 32)) (x!62230 (_ BitVec 32))) (Undefined!7211) (MissingVacant!7211 (index!31214 (_ BitVec 32))) )
))
(declare-fun lt!321298 () SeekEntryResult!7211)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40973 (_ BitVec 32)) SeekEntryResult!7211)

(assert (=> b!725287 (= e!406193 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19604 a!3186) j!159) a!3186 mask!3328) lt!321298))))

(declare-fun b!725288 () Bool)

(declare-fun res!486542 () Bool)

(declare-fun e!406195 () Bool)

(assert (=> b!725288 (=> (not res!486542) (not e!406195))))

(declare-fun e!406199 () Bool)

(assert (=> b!725288 (= res!486542 e!406199)))

(declare-fun c!79752 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!725288 (= c!79752 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!725289 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!321299 () SeekEntryResult!7211)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40973 (_ BitVec 32)) SeekEntryResult!7211)

(assert (=> b!725289 (= e!406199 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19604 a!3186) j!159) a!3186 mask!3328) lt!321299))))

(declare-fun b!725290 () Bool)

(declare-fun res!486540 () Bool)

(assert (=> b!725290 (=> (not res!486540) (not e!406195))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!725290 (= res!486540 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19604 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!725291 () Bool)

(declare-fun res!486530 () Bool)

(declare-fun e!406194 () Bool)

(assert (=> b!725291 (=> (not res!486530) (not e!406194))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40973 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!725291 (= res!486530 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!725292 () Bool)

(declare-fun e!406198 () Bool)

(assert (=> b!725292 (= e!406198 e!406195)))

(declare-fun res!486533 () Bool)

(assert (=> b!725292 (=> (not res!486533) (not e!406195))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!725292 (= res!486533 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19604 a!3186) j!159) mask!3328) (select (arr!19604 a!3186) j!159) a!3186 mask!3328) lt!321299))))

(assert (=> b!725292 (= lt!321299 (Intermediate!7211 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!725293 () Bool)

(declare-fun res!486537 () Bool)

(assert (=> b!725293 (=> (not res!486537) (not e!406198))))

(assert (=> b!725293 (= res!486537 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20025 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20025 a!3186))))))

(declare-fun b!725294 () Bool)

(declare-fun res!486536 () Bool)

(assert (=> b!725294 (=> (not res!486536) (not e!406198))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40973 (_ BitVec 32)) Bool)

(assert (=> b!725294 (= res!486536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!725295 () Bool)

(declare-fun res!486538 () Bool)

(assert (=> b!725295 (=> (not res!486538) (not e!406194))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!725295 (= res!486538 (validKeyInArray!0 k!2102))))

(declare-fun b!725296 () Bool)

(declare-fun e!406196 () Bool)

(assert (=> b!725296 (= e!406196 e!406193)))

(declare-fun res!486541 () Bool)

(assert (=> b!725296 (=> (not res!486541) (not e!406193))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40973 (_ BitVec 32)) SeekEntryResult!7211)

(assert (=> b!725296 (= res!486541 (= (seekEntryOrOpen!0 (select (arr!19604 a!3186) j!159) a!3186 mask!3328) lt!321298))))

(assert (=> b!725296 (= lt!321298 (Found!7211 j!159))))

(declare-fun b!725297 () Bool)

(declare-fun res!486531 () Bool)

(assert (=> b!725297 (=> (not res!486531) (not e!406194))))

(assert (=> b!725297 (= res!486531 (validKeyInArray!0 (select (arr!19604 a!3186) j!159)))))

(declare-fun res!486529 () Bool)

(assert (=> start!64502 (=> (not res!486529) (not e!406194))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64502 (= res!486529 (validMask!0 mask!3328))))

(assert (=> start!64502 e!406194))

(assert (=> start!64502 true))

(declare-fun array_inv!15378 (array!40973) Bool)

(assert (=> start!64502 (array_inv!15378 a!3186)))

(declare-fun b!725298 () Bool)

(declare-fun res!486543 () Bool)

(assert (=> b!725298 (=> (not res!486543) (not e!406194))))

(assert (=> b!725298 (= res!486543 (and (= (size!20025 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20025 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20025 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!725299 () Bool)

(declare-fun e!406197 () Bool)

(assert (=> b!725299 (= e!406195 e!406197)))

(declare-fun res!486539 () Bool)

(assert (=> b!725299 (=> (not res!486539) (not e!406197))))

(declare-fun lt!321302 () (_ BitVec 64))

(declare-fun lt!321301 () array!40973)

(assert (=> b!725299 (= res!486539 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321302 mask!3328) lt!321302 lt!321301 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321302 lt!321301 mask!3328)))))

(assert (=> b!725299 (= lt!321302 (select (store (arr!19604 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!725299 (= lt!321301 (array!40974 (store (arr!19604 a!3186) i!1173 k!2102) (size!20025 a!3186)))))

(declare-fun b!725300 () Bool)

(assert (=> b!725300 (= e!406194 e!406198)))

(declare-fun res!486535 () Bool)

(assert (=> b!725300 (=> (not res!486535) (not e!406198))))

(declare-fun lt!321297 () SeekEntryResult!7211)

(assert (=> b!725300 (= res!486535 (or (= lt!321297 (MissingZero!7211 i!1173)) (= lt!321297 (MissingVacant!7211 i!1173))))))

(assert (=> b!725300 (= lt!321297 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!725301 () Bool)

(assert (=> b!725301 (= e!406197 (not (bvsge mask!3328 #b00000000000000000000000000000000)))))

(assert (=> b!725301 e!406196))

(declare-fun res!486532 () Bool)

(assert (=> b!725301 (=> (not res!486532) (not e!406196))))

(assert (=> b!725301 (= res!486532 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24740 0))(
  ( (Unit!24741) )
))
(declare-fun lt!321300 () Unit!24740)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40973 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24740)

(assert (=> b!725301 (= lt!321300 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!725302 () Bool)

(declare-fun res!486534 () Bool)

(assert (=> b!725302 (=> (not res!486534) (not e!406198))))

(declare-datatypes ((List!13659 0))(
  ( (Nil!13656) (Cons!13655 (h!14712 (_ BitVec 64)) (t!19982 List!13659)) )
))
(declare-fun arrayNoDuplicates!0 (array!40973 (_ BitVec 32) List!13659) Bool)

(assert (=> b!725302 (= res!486534 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13656))))

(declare-fun b!725303 () Bool)

(assert (=> b!725303 (= e!406199 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19604 a!3186) j!159) a!3186 mask!3328) (Found!7211 j!159)))))

(assert (= (and start!64502 res!486529) b!725298))

(assert (= (and b!725298 res!486543) b!725297))

(assert (= (and b!725297 res!486531) b!725295))

(assert (= (and b!725295 res!486538) b!725291))

(assert (= (and b!725291 res!486530) b!725300))

(assert (= (and b!725300 res!486535) b!725294))

(assert (= (and b!725294 res!486536) b!725302))

(assert (= (and b!725302 res!486534) b!725293))

(assert (= (and b!725293 res!486537) b!725292))

(assert (= (and b!725292 res!486533) b!725290))

(assert (= (and b!725290 res!486540) b!725288))

(assert (= (and b!725288 c!79752) b!725289))

(assert (= (and b!725288 (not c!79752)) b!725303))

(assert (= (and b!725288 res!486542) b!725299))

(assert (= (and b!725299 res!486539) b!725301))

(assert (= (and b!725301 res!486532) b!725296))

(assert (= (and b!725296 res!486541) b!725287))

(declare-fun m!679551 () Bool)

(assert (=> b!725302 m!679551))

(declare-fun m!679553 () Bool)

(assert (=> b!725289 m!679553))

(assert (=> b!725289 m!679553))

(declare-fun m!679555 () Bool)

(assert (=> b!725289 m!679555))

(assert (=> b!725297 m!679553))

(assert (=> b!725297 m!679553))

(declare-fun m!679557 () Bool)

(assert (=> b!725297 m!679557))

(declare-fun m!679559 () Bool)

(assert (=> b!725295 m!679559))

(declare-fun m!679561 () Bool)

(assert (=> start!64502 m!679561))

(declare-fun m!679563 () Bool)

(assert (=> start!64502 m!679563))

(assert (=> b!725292 m!679553))

(assert (=> b!725292 m!679553))

(declare-fun m!679565 () Bool)

(assert (=> b!725292 m!679565))

(assert (=> b!725292 m!679565))

(assert (=> b!725292 m!679553))

(declare-fun m!679567 () Bool)

(assert (=> b!725292 m!679567))

(assert (=> b!725303 m!679553))

(assert (=> b!725303 m!679553))

(declare-fun m!679569 () Bool)

(assert (=> b!725303 m!679569))

(assert (=> b!725287 m!679553))

(assert (=> b!725287 m!679553))

(declare-fun m!679571 () Bool)

(assert (=> b!725287 m!679571))

(declare-fun m!679573 () Bool)

(assert (=> b!725299 m!679573))

(declare-fun m!679575 () Bool)

(assert (=> b!725299 m!679575))

(assert (=> b!725299 m!679573))

(declare-fun m!679577 () Bool)

(assert (=> b!725299 m!679577))

(declare-fun m!679579 () Bool)

(assert (=> b!725299 m!679579))

(declare-fun m!679581 () Bool)

(assert (=> b!725299 m!679581))

(declare-fun m!679583 () Bool)

(assert (=> b!725300 m!679583))

(declare-fun m!679585 () Bool)

(assert (=> b!725290 m!679585))

(assert (=> b!725296 m!679553))

(assert (=> b!725296 m!679553))

(declare-fun m!679587 () Bool)

(assert (=> b!725296 m!679587))

(declare-fun m!679589 () Bool)

(assert (=> b!725294 m!679589))

(declare-fun m!679591 () Bool)

(assert (=> b!725301 m!679591))

(declare-fun m!679593 () Bool)

(assert (=> b!725301 m!679593))

(declare-fun m!679595 () Bool)

(assert (=> b!725291 m!679595))

(push 1)

(assert (not b!725299))

(assert (not b!725289))

(assert (not b!725287))

(assert (not start!64502))

(assert (not b!725302))

(assert (not b!725297))

(assert (not b!725300))

(assert (not b!725292))

(assert (not b!725294))

(assert (not b!725291))

(assert (not b!725296))

(assert (not b!725301))

(assert (not b!725295))

(assert (not b!725303))

(check-sat)

(pop 1)

(push 1)

(check-sat)

