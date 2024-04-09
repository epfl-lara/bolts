; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65230 () Bool)

(assert start!65230)

(declare-datatypes ((array!41356 0))(
  ( (array!41357 (arr!19788 (Array (_ BitVec 32) (_ BitVec 64))) (size!20209 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41356)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!738282 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!412921 () Bool)

(declare-datatypes ((SeekEntryResult!7395 0))(
  ( (MissingZero!7395 (index!31947 (_ BitVec 32))) (Found!7395 (index!31948 (_ BitVec 32))) (Intermediate!7395 (undefined!8207 Bool) (index!31949 (_ BitVec 32)) (x!62970 (_ BitVec 32))) (Undefined!7395) (MissingVacant!7395 (index!31950 (_ BitVec 32))) )
))
(declare-fun lt!327713 () SeekEntryResult!7395)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41356 (_ BitVec 32)) SeekEntryResult!7395)

(assert (=> b!738282 (= e!412921 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19788 a!3186) j!159) a!3186 mask!3328) lt!327713))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!412922 () Bool)

(declare-fun b!738283 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!738283 (= e!412922 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19788 a!3186) j!159) a!3186 mask!3328) (Found!7395 j!159)))))

(declare-fun b!738284 () Bool)

(declare-fun res!496417 () Bool)

(declare-fun e!412918 () Bool)

(assert (=> b!738284 (=> (not res!496417) (not e!412918))))

(assert (=> b!738284 (= res!496417 e!412922)))

(declare-fun c!81313 () Bool)

(assert (=> b!738284 (= c!81313 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!738285 () Bool)

(declare-fun res!496425 () Bool)

(assert (=> b!738285 (=> (not res!496425) (not e!412918))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!738285 (= res!496425 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19788 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!738286 () Bool)

(declare-fun e!412917 () Bool)

(declare-fun e!412915 () Bool)

(assert (=> b!738286 (= e!412917 (not e!412915))))

(declare-fun res!496422 () Bool)

(assert (=> b!738286 (=> res!496422 e!412915)))

(declare-fun lt!327719 () SeekEntryResult!7395)

(assert (=> b!738286 (= res!496422 (or (not (is-Intermediate!7395 lt!327719)) (bvsge x!1131 (x!62970 lt!327719))))))

(declare-fun lt!327720 () SeekEntryResult!7395)

(assert (=> b!738286 (= lt!327720 (Found!7395 j!159))))

(declare-fun e!412919 () Bool)

(assert (=> b!738286 e!412919))

(declare-fun res!496433 () Bool)

(assert (=> b!738286 (=> (not res!496433) (not e!412919))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41356 (_ BitVec 32)) Bool)

(assert (=> b!738286 (= res!496433 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25198 0))(
  ( (Unit!25199) )
))
(declare-fun lt!327718 () Unit!25198)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41356 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25198)

(assert (=> b!738286 (= lt!327718 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!738287 () Bool)

(declare-fun res!496423 () Bool)

(declare-fun e!412920 () Bool)

(assert (=> b!738287 (=> (not res!496423) (not e!412920))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!738287 (= res!496423 (validKeyInArray!0 (select (arr!19788 a!3186) j!159)))))

(declare-fun b!738288 () Bool)

(declare-fun e!412912 () Bool)

(assert (=> b!738288 (= e!412915 e!412912)))

(declare-fun res!496430 () Bool)

(assert (=> b!738288 (=> res!496430 e!412912)))

(declare-fun lt!327710 () (_ BitVec 32))

(assert (=> b!738288 (= res!496430 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!327710 #b00000000000000000000000000000000) (bvsge lt!327710 (size!20209 a!3186))))))

(declare-fun lt!327716 () Unit!25198)

(declare-fun e!412914 () Unit!25198)

(assert (=> b!738288 (= lt!327716 e!412914)))

(declare-fun c!81315 () Bool)

(declare-fun lt!327712 () Bool)

(assert (=> b!738288 (= c!81315 lt!327712)))

(assert (=> b!738288 (= lt!327712 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738288 (= lt!327710 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!738289 () Bool)

(declare-fun Unit!25200 () Unit!25198)

(assert (=> b!738289 (= e!412914 Unit!25200)))

(declare-fun lt!327715 () SeekEntryResult!7395)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41356 (_ BitVec 32)) SeekEntryResult!7395)

(assert (=> b!738289 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327710 (select (arr!19788 a!3186) j!159) a!3186 mask!3328) lt!327715)))

(declare-fun res!496432 () Bool)

(assert (=> start!65230 (=> (not res!496432) (not e!412920))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65230 (= res!496432 (validMask!0 mask!3328))))

(assert (=> start!65230 e!412920))

(assert (=> start!65230 true))

(declare-fun array_inv!15562 (array!41356) Bool)

(assert (=> start!65230 (array_inv!15562 a!3186)))

(declare-fun b!738290 () Bool)

(declare-fun res!496418 () Bool)

(assert (=> b!738290 (=> (not res!496418) (not e!412920))))

(assert (=> b!738290 (= res!496418 (and (= (size!20209 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20209 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20209 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!738291 () Bool)

(declare-fun res!496428 () Bool)

(assert (=> b!738291 (=> res!496428 e!412912)))

(declare-fun e!412913 () Bool)

(assert (=> b!738291 (= res!496428 e!412913)))

(declare-fun c!81314 () Bool)

(assert (=> b!738291 (= c!81314 lt!327712)))

(declare-fun b!738292 () Bool)

(assert (=> b!738292 (= e!412913 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327710 resIntermediateIndex!5 (select (arr!19788 a!3186) j!159) a!3186 mask!3328) lt!327720)))))

(declare-fun b!738293 () Bool)

(declare-fun res!496429 () Bool)

(assert (=> b!738293 (=> (not res!496429) (not e!412920))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41356 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!738293 (= res!496429 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!738294 () Bool)

(assert (=> b!738294 (= e!412919 e!412921)))

(declare-fun res!496434 () Bool)

(assert (=> b!738294 (=> (not res!496434) (not e!412921))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41356 (_ BitVec 32)) SeekEntryResult!7395)

(assert (=> b!738294 (= res!496434 (= (seekEntryOrOpen!0 (select (arr!19788 a!3186) j!159) a!3186 mask!3328) lt!327713))))

(assert (=> b!738294 (= lt!327713 (Found!7395 j!159))))

(declare-fun b!738295 () Bool)

(declare-fun Unit!25201 () Unit!25198)

(assert (=> b!738295 (= e!412914 Unit!25201)))

(declare-fun lt!327722 () SeekEntryResult!7395)

(assert (=> b!738295 (= lt!327722 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19788 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!738295 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327710 resIntermediateIndex!5 (select (arr!19788 a!3186) j!159) a!3186 mask!3328) lt!327720)))

(declare-fun b!738296 () Bool)

(assert (=> b!738296 (= e!412922 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19788 a!3186) j!159) a!3186 mask!3328) lt!327715))))

(declare-fun b!738297 () Bool)

(declare-fun e!412916 () Bool)

(assert (=> b!738297 (= e!412916 e!412918)))

(declare-fun res!496427 () Bool)

(assert (=> b!738297 (=> (not res!496427) (not e!412918))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738297 (= res!496427 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19788 a!3186) j!159) mask!3328) (select (arr!19788 a!3186) j!159) a!3186 mask!3328) lt!327715))))

(assert (=> b!738297 (= lt!327715 (Intermediate!7395 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!738298 () Bool)

(declare-fun res!496424 () Bool)

(assert (=> b!738298 (=> (not res!496424) (not e!412916))))

(declare-datatypes ((List!13843 0))(
  ( (Nil!13840) (Cons!13839 (h!14911 (_ BitVec 64)) (t!20166 List!13843)) )
))
(declare-fun arrayNoDuplicates!0 (array!41356 (_ BitVec 32) List!13843) Bool)

(assert (=> b!738298 (= res!496424 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13840))))

(declare-fun b!738299 () Bool)

(assert (=> b!738299 (= e!412913 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327710 (select (arr!19788 a!3186) j!159) a!3186 mask!3328) lt!327715)))))

(declare-fun b!738300 () Bool)

(declare-fun res!496420 () Bool)

(assert (=> b!738300 (=> (not res!496420) (not e!412916))))

(assert (=> b!738300 (= res!496420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!738301 () Bool)

(assert (=> b!738301 (= e!412918 e!412917)))

(declare-fun res!496431 () Bool)

(assert (=> b!738301 (=> (not res!496431) (not e!412917))))

(declare-fun lt!327711 () SeekEntryResult!7395)

(assert (=> b!738301 (= res!496431 (= lt!327711 lt!327719))))

(declare-fun lt!327717 () array!41356)

(declare-fun lt!327721 () (_ BitVec 64))

(assert (=> b!738301 (= lt!327719 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!327721 lt!327717 mask!3328))))

(assert (=> b!738301 (= lt!327711 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!327721 mask!3328) lt!327721 lt!327717 mask!3328))))

(assert (=> b!738301 (= lt!327721 (select (store (arr!19788 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!738301 (= lt!327717 (array!41357 (store (arr!19788 a!3186) i!1173 k!2102) (size!20209 a!3186)))))

(declare-fun b!738302 () Bool)

(declare-fun res!496419 () Bool)

(assert (=> b!738302 (=> (not res!496419) (not e!412916))))

(assert (=> b!738302 (= res!496419 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20209 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20209 a!3186))))))

(declare-fun b!738303 () Bool)

(assert (=> b!738303 (= e!412920 e!412916)))

(declare-fun res!496426 () Bool)

(assert (=> b!738303 (=> (not res!496426) (not e!412916))))

(declare-fun lt!327714 () SeekEntryResult!7395)

(assert (=> b!738303 (= res!496426 (or (= lt!327714 (MissingZero!7395 i!1173)) (= lt!327714 (MissingVacant!7395 i!1173))))))

(assert (=> b!738303 (= lt!327714 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!738304 () Bool)

(assert (=> b!738304 (= e!412912 true)))

(declare-fun lt!327709 () SeekEntryResult!7395)

(assert (=> b!738304 (= lt!327709 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327710 lt!327721 lt!327717 mask!3328))))

(declare-fun b!738305 () Bool)

(declare-fun res!496421 () Bool)

(assert (=> b!738305 (=> (not res!496421) (not e!412920))))

(assert (=> b!738305 (= res!496421 (validKeyInArray!0 k!2102))))

(assert (= (and start!65230 res!496432) b!738290))

(assert (= (and b!738290 res!496418) b!738287))

(assert (= (and b!738287 res!496423) b!738305))

(assert (= (and b!738305 res!496421) b!738293))

(assert (= (and b!738293 res!496429) b!738303))

(assert (= (and b!738303 res!496426) b!738300))

(assert (= (and b!738300 res!496420) b!738298))

(assert (= (and b!738298 res!496424) b!738302))

(assert (= (and b!738302 res!496419) b!738297))

(assert (= (and b!738297 res!496427) b!738285))

(assert (= (and b!738285 res!496425) b!738284))

(assert (= (and b!738284 c!81313) b!738296))

(assert (= (and b!738284 (not c!81313)) b!738283))

(assert (= (and b!738284 res!496417) b!738301))

(assert (= (and b!738301 res!496431) b!738286))

(assert (= (and b!738286 res!496433) b!738294))

(assert (= (and b!738294 res!496434) b!738282))

(assert (= (and b!738286 (not res!496422)) b!738288))

(assert (= (and b!738288 c!81315) b!738289))

(assert (= (and b!738288 (not c!81315)) b!738295))

(assert (= (and b!738288 (not res!496430)) b!738291))

(assert (= (and b!738291 c!81314) b!738299))

(assert (= (and b!738291 (not c!81314)) b!738292))

(assert (= (and b!738291 (not res!496428)) b!738304))

(declare-fun m!690019 () Bool)

(assert (=> b!738303 m!690019))

(declare-fun m!690021 () Bool)

(assert (=> b!738305 m!690021))

(declare-fun m!690023 () Bool)

(assert (=> b!738296 m!690023))

(assert (=> b!738296 m!690023))

(declare-fun m!690025 () Bool)

(assert (=> b!738296 m!690025))

(assert (=> b!738295 m!690023))

(assert (=> b!738295 m!690023))

(declare-fun m!690027 () Bool)

(assert (=> b!738295 m!690027))

(assert (=> b!738295 m!690023))

(declare-fun m!690029 () Bool)

(assert (=> b!738295 m!690029))

(assert (=> b!738297 m!690023))

(assert (=> b!738297 m!690023))

(declare-fun m!690031 () Bool)

(assert (=> b!738297 m!690031))

(assert (=> b!738297 m!690031))

(assert (=> b!738297 m!690023))

(declare-fun m!690033 () Bool)

(assert (=> b!738297 m!690033))

(declare-fun m!690035 () Bool)

(assert (=> b!738288 m!690035))

(declare-fun m!690037 () Bool)

(assert (=> b!738286 m!690037))

(declare-fun m!690039 () Bool)

(assert (=> b!738286 m!690039))

(declare-fun m!690041 () Bool)

(assert (=> b!738301 m!690041))

(declare-fun m!690043 () Bool)

(assert (=> b!738301 m!690043))

(declare-fun m!690045 () Bool)

(assert (=> b!738301 m!690045))

(declare-fun m!690047 () Bool)

(assert (=> b!738301 m!690047))

(assert (=> b!738301 m!690045))

(declare-fun m!690049 () Bool)

(assert (=> b!738301 m!690049))

(assert (=> b!738289 m!690023))

(assert (=> b!738289 m!690023))

(declare-fun m!690051 () Bool)

(assert (=> b!738289 m!690051))

(declare-fun m!690053 () Bool)

(assert (=> b!738304 m!690053))

(assert (=> b!738287 m!690023))

(assert (=> b!738287 m!690023))

(declare-fun m!690055 () Bool)

(assert (=> b!738287 m!690055))

(declare-fun m!690057 () Bool)

(assert (=> b!738300 m!690057))

(assert (=> b!738282 m!690023))

(assert (=> b!738282 m!690023))

(declare-fun m!690059 () Bool)

(assert (=> b!738282 m!690059))

(declare-fun m!690061 () Bool)

(assert (=> b!738298 m!690061))

(declare-fun m!690063 () Bool)

(assert (=> b!738285 m!690063))

(assert (=> b!738292 m!690023))

(assert (=> b!738292 m!690023))

(assert (=> b!738292 m!690029))

(declare-fun m!690065 () Bool)

(assert (=> b!738293 m!690065))

(declare-fun m!690067 () Bool)

(assert (=> start!65230 m!690067))

(declare-fun m!690069 () Bool)

(assert (=> start!65230 m!690069))

(assert (=> b!738294 m!690023))

(assert (=> b!738294 m!690023))

(declare-fun m!690071 () Bool)

(assert (=> b!738294 m!690071))

(assert (=> b!738299 m!690023))

(assert (=> b!738299 m!690023))

(assert (=> b!738299 m!690051))

(assert (=> b!738283 m!690023))

(assert (=> b!738283 m!690023))

(assert (=> b!738283 m!690027))

(push 1)

