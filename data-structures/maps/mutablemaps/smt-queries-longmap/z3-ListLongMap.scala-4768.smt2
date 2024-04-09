; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65688 () Bool)

(assert start!65688)

(declare-fun b!752398 () Bool)

(declare-fun e!419712 () Bool)

(declare-fun e!419707 () Bool)

(assert (=> b!752398 (= e!419712 e!419707)))

(declare-fun res!508238 () Bool)

(assert (=> b!752398 (=> (not res!508238) (not e!419707))))

(declare-datatypes ((SeekEntryResult!7624 0))(
  ( (MissingZero!7624 (index!32863 (_ BitVec 32))) (Found!7624 (index!32864 (_ BitVec 32))) (Intermediate!7624 (undefined!8436 Bool) (index!32865 (_ BitVec 32)) (x!63807 (_ BitVec 32))) (Undefined!7624) (MissingVacant!7624 (index!32866 (_ BitVec 32))) )
))
(declare-fun lt!334716 () SeekEntryResult!7624)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!752398 (= res!508238 (or (= lt!334716 (MissingZero!7624 i!1173)) (= lt!334716 (MissingVacant!7624 i!1173))))))

(declare-datatypes ((array!41814 0))(
  ( (array!41815 (arr!20017 (Array (_ BitVec 32) (_ BitVec 64))) (size!20438 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41814)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41814 (_ BitVec 32)) SeekEntryResult!7624)

(assert (=> b!752398 (= lt!334716 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!752399 () Bool)

(declare-fun e!419708 () Bool)

(assert (=> b!752399 (= e!419707 e!419708)))

(declare-fun res!508224 () Bool)

(assert (=> b!752399 (=> (not res!508224) (not e!419708))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!334709 () SeekEntryResult!7624)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41814 (_ BitVec 32)) SeekEntryResult!7624)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!752399 (= res!508224 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20017 a!3186) j!159) mask!3328) (select (arr!20017 a!3186) j!159) a!3186 mask!3328) lt!334709))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!752399 (= lt!334709 (Intermediate!7624 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!752400 () Bool)

(declare-fun e!419714 () Bool)

(assert (=> b!752400 (= e!419708 e!419714)))

(declare-fun res!508237 () Bool)

(assert (=> b!752400 (=> (not res!508237) (not e!419714))))

(declare-fun lt!334711 () SeekEntryResult!7624)

(declare-fun lt!334717 () SeekEntryResult!7624)

(assert (=> b!752400 (= res!508237 (= lt!334711 lt!334717))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!334715 () array!41814)

(declare-fun lt!334712 () (_ BitVec 64))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!752400 (= lt!334717 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334712 lt!334715 mask!3328))))

(assert (=> b!752400 (= lt!334711 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334712 mask!3328) lt!334712 lt!334715 mask!3328))))

(assert (=> b!752400 (= lt!334712 (select (store (arr!20017 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!752400 (= lt!334715 (array!41815 (store (arr!20017 a!3186) i!1173 k0!2102) (size!20438 a!3186)))))

(declare-fun b!752401 () Bool)

(declare-fun e!419717 () Bool)

(assert (=> b!752401 (= e!419714 (not e!419717))))

(declare-fun res!508227 () Bool)

(assert (=> b!752401 (=> res!508227 e!419717)))

(get-info :version)

(assert (=> b!752401 (= res!508227 (or (not ((_ is Intermediate!7624) lt!334717)) (bvslt x!1131 (x!63807 lt!334717)) (not (= x!1131 (x!63807 lt!334717))) (not (= index!1321 (index!32865 lt!334717)))))))

(declare-fun e!419710 () Bool)

(assert (=> b!752401 e!419710))

(declare-fun res!508228 () Bool)

(assert (=> b!752401 (=> (not res!508228) (not e!419710))))

(declare-fun lt!334713 () SeekEntryResult!7624)

(declare-fun lt!334718 () SeekEntryResult!7624)

(assert (=> b!752401 (= res!508228 (= lt!334713 lt!334718))))

(assert (=> b!752401 (= lt!334718 (Found!7624 j!159))))

(assert (=> b!752401 (= lt!334713 (seekEntryOrOpen!0 (select (arr!20017 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41814 (_ BitVec 32)) Bool)

(assert (=> b!752401 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25898 0))(
  ( (Unit!25899) )
))
(declare-fun lt!334714 () Unit!25898)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41814 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25898)

(assert (=> b!752401 (= lt!334714 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!752402 () Bool)

(declare-fun res!508223 () Bool)

(assert (=> b!752402 (=> (not res!508223) (not e!419712))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!752402 (= res!508223 (validKeyInArray!0 k0!2102))))

(declare-fun b!752403 () Bool)

(declare-fun e!419716 () Unit!25898)

(declare-fun Unit!25900 () Unit!25898)

(assert (=> b!752403 (= e!419716 Unit!25900)))

(assert (=> b!752403 false))

(declare-fun b!752404 () Bool)

(declare-fun res!508229 () Bool)

(assert (=> b!752404 (=> (not res!508229) (not e!419708))))

(assert (=> b!752404 (= res!508229 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20017 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!752405 () Bool)

(declare-fun Unit!25901 () Unit!25898)

(assert (=> b!752405 (= e!419716 Unit!25901)))

(declare-fun b!752406 () Bool)

(declare-fun res!508233 () Bool)

(assert (=> b!752406 (=> (not res!508233) (not e!419707))))

(assert (=> b!752406 (= res!508233 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20438 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20438 a!3186))))))

(declare-fun e!419715 () Bool)

(declare-fun b!752407 () Bool)

(assert (=> b!752407 (= e!419715 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20017 a!3186) j!159) a!3186 mask!3328) lt!334709))))

(declare-fun b!752408 () Bool)

(declare-fun res!508235 () Bool)

(assert (=> b!752408 (=> (not res!508235) (not e!419712))))

(assert (=> b!752408 (= res!508235 (and (= (size!20438 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20438 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20438 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!752409 () Bool)

(declare-fun res!508232 () Bool)

(assert (=> b!752409 (=> (not res!508232) (not e!419712))))

(declare-fun arrayContainsKey!0 (array!41814 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!752409 (= res!508232 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!752410 () Bool)

(declare-fun res!508230 () Bool)

(assert (=> b!752410 (=> (not res!508230) (not e!419712))))

(assert (=> b!752410 (= res!508230 (validKeyInArray!0 (select (arr!20017 a!3186) j!159)))))

(declare-fun b!752411 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41814 (_ BitVec 32)) SeekEntryResult!7624)

(assert (=> b!752411 (= e!419715 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20017 a!3186) j!159) a!3186 mask!3328) (Found!7624 j!159)))))

(declare-fun b!752412 () Bool)

(declare-fun res!508236 () Bool)

(assert (=> b!752412 (=> (not res!508236) (not e!419708))))

(assert (=> b!752412 (= res!508236 e!419715)))

(declare-fun c!82470 () Bool)

(assert (=> b!752412 (= c!82470 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!508239 () Bool)

(assert (=> start!65688 (=> (not res!508239) (not e!419712))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65688 (= res!508239 (validMask!0 mask!3328))))

(assert (=> start!65688 e!419712))

(assert (=> start!65688 true))

(declare-fun array_inv!15791 (array!41814) Bool)

(assert (=> start!65688 (array_inv!15791 a!3186)))

(declare-fun b!752413 () Bool)

(declare-fun e!419709 () Bool)

(assert (=> b!752413 (= e!419709 true)))

(declare-fun e!419713 () Bool)

(assert (=> b!752413 e!419713))

(declare-fun res!508226 () Bool)

(assert (=> b!752413 (=> (not res!508226) (not e!419713))))

(declare-fun lt!334708 () (_ BitVec 64))

(assert (=> b!752413 (= res!508226 (= lt!334708 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!334710 () Unit!25898)

(assert (=> b!752413 (= lt!334710 e!419716)))

(declare-fun c!82469 () Bool)

(assert (=> b!752413 (= c!82469 (= lt!334708 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!752414 () Bool)

(assert (=> b!752414 (= e!419710 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20017 a!3186) j!159) a!3186 mask!3328) lt!334718))))

(declare-fun b!752415 () Bool)

(declare-fun e!419718 () Bool)

(assert (=> b!752415 (= e!419718 e!419709)))

(declare-fun res!508221 () Bool)

(assert (=> b!752415 (=> res!508221 e!419709)))

(assert (=> b!752415 (= res!508221 (= lt!334708 lt!334712))))

(assert (=> b!752415 (= lt!334708 (select (store (arr!20017 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!752416 () Bool)

(declare-fun res!508222 () Bool)

(assert (=> b!752416 (=> (not res!508222) (not e!419707))))

(declare-datatypes ((List!14072 0))(
  ( (Nil!14069) (Cons!14068 (h!15140 (_ BitVec 64)) (t!20395 List!14072)) )
))
(declare-fun arrayNoDuplicates!0 (array!41814 (_ BitVec 32) List!14072) Bool)

(assert (=> b!752416 (= res!508222 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14069))))

(declare-fun b!752417 () Bool)

(declare-fun res!508234 () Bool)

(assert (=> b!752417 (=> (not res!508234) (not e!419713))))

(assert (=> b!752417 (= res!508234 (= (seekEntryOrOpen!0 lt!334712 lt!334715 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334712 lt!334715 mask!3328)))))

(declare-fun b!752418 () Bool)

(assert (=> b!752418 (= e!419717 e!419718)))

(declare-fun res!508231 () Bool)

(assert (=> b!752418 (=> res!508231 e!419718)))

(declare-fun lt!334707 () SeekEntryResult!7624)

(assert (=> b!752418 (= res!508231 (not (= lt!334707 lt!334718)))))

(assert (=> b!752418 (= lt!334707 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20017 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!752419 () Bool)

(declare-fun res!508225 () Bool)

(assert (=> b!752419 (=> (not res!508225) (not e!419707))))

(assert (=> b!752419 (= res!508225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!752420 () Bool)

(assert (=> b!752420 (= e!419713 (= lt!334713 lt!334707))))

(assert (= (and start!65688 res!508239) b!752408))

(assert (= (and b!752408 res!508235) b!752410))

(assert (= (and b!752410 res!508230) b!752402))

(assert (= (and b!752402 res!508223) b!752409))

(assert (= (and b!752409 res!508232) b!752398))

(assert (= (and b!752398 res!508238) b!752419))

(assert (= (and b!752419 res!508225) b!752416))

(assert (= (and b!752416 res!508222) b!752406))

(assert (= (and b!752406 res!508233) b!752399))

(assert (= (and b!752399 res!508224) b!752404))

(assert (= (and b!752404 res!508229) b!752412))

(assert (= (and b!752412 c!82470) b!752407))

(assert (= (and b!752412 (not c!82470)) b!752411))

(assert (= (and b!752412 res!508236) b!752400))

(assert (= (and b!752400 res!508237) b!752401))

(assert (= (and b!752401 res!508228) b!752414))

(assert (= (and b!752401 (not res!508227)) b!752418))

(assert (= (and b!752418 (not res!508231)) b!752415))

(assert (= (and b!752415 (not res!508221)) b!752413))

(assert (= (and b!752413 c!82469) b!752403))

(assert (= (and b!752413 (not c!82469)) b!752405))

(assert (= (and b!752413 res!508226) b!752417))

(assert (= (and b!752417 res!508234) b!752420))

(declare-fun m!701417 () Bool)

(assert (=> b!752407 m!701417))

(assert (=> b!752407 m!701417))

(declare-fun m!701419 () Bool)

(assert (=> b!752407 m!701419))

(declare-fun m!701421 () Bool)

(assert (=> b!752409 m!701421))

(declare-fun m!701423 () Bool)

(assert (=> b!752400 m!701423))

(declare-fun m!701425 () Bool)

(assert (=> b!752400 m!701425))

(assert (=> b!752400 m!701425))

(declare-fun m!701427 () Bool)

(assert (=> b!752400 m!701427))

(declare-fun m!701429 () Bool)

(assert (=> b!752400 m!701429))

(declare-fun m!701431 () Bool)

(assert (=> b!752400 m!701431))

(assert (=> b!752399 m!701417))

(assert (=> b!752399 m!701417))

(declare-fun m!701433 () Bool)

(assert (=> b!752399 m!701433))

(assert (=> b!752399 m!701433))

(assert (=> b!752399 m!701417))

(declare-fun m!701435 () Bool)

(assert (=> b!752399 m!701435))

(declare-fun m!701437 () Bool)

(assert (=> b!752402 m!701437))

(declare-fun m!701439 () Bool)

(assert (=> b!752416 m!701439))

(declare-fun m!701441 () Bool)

(assert (=> b!752419 m!701441))

(declare-fun m!701443 () Bool)

(assert (=> start!65688 m!701443))

(declare-fun m!701445 () Bool)

(assert (=> start!65688 m!701445))

(assert (=> b!752410 m!701417))

(assert (=> b!752410 m!701417))

(declare-fun m!701447 () Bool)

(assert (=> b!752410 m!701447))

(declare-fun m!701449 () Bool)

(assert (=> b!752398 m!701449))

(declare-fun m!701451 () Bool)

(assert (=> b!752417 m!701451))

(declare-fun m!701453 () Bool)

(assert (=> b!752417 m!701453))

(assert (=> b!752401 m!701417))

(assert (=> b!752401 m!701417))

(declare-fun m!701455 () Bool)

(assert (=> b!752401 m!701455))

(declare-fun m!701457 () Bool)

(assert (=> b!752401 m!701457))

(declare-fun m!701459 () Bool)

(assert (=> b!752401 m!701459))

(declare-fun m!701461 () Bool)

(assert (=> b!752404 m!701461))

(assert (=> b!752414 m!701417))

(assert (=> b!752414 m!701417))

(declare-fun m!701463 () Bool)

(assert (=> b!752414 m!701463))

(assert (=> b!752418 m!701417))

(assert (=> b!752418 m!701417))

(declare-fun m!701465 () Bool)

(assert (=> b!752418 m!701465))

(assert (=> b!752411 m!701417))

(assert (=> b!752411 m!701417))

(assert (=> b!752411 m!701465))

(assert (=> b!752415 m!701429))

(declare-fun m!701467 () Bool)

(assert (=> b!752415 m!701467))

(check-sat (not b!752400) (not b!752417) (not b!752407) (not start!65688) (not b!752419) (not b!752418) (not b!752401) (not b!752399) (not b!752398) (not b!752409) (not b!752416) (not b!752414) (not b!752402) (not b!752411) (not b!752410))
(check-sat)
