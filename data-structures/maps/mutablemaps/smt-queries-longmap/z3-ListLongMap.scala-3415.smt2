; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47424 () Bool)

(assert start!47424)

(declare-fun b!521467 () Bool)

(declare-datatypes ((Unit!16194 0))(
  ( (Unit!16195) )
))
(declare-fun e!304221 () Unit!16194)

(declare-fun Unit!16196 () Unit!16194)

(assert (=> b!521467 (= e!304221 Unit!16196)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!239069 () (_ BitVec 32))

(declare-datatypes ((array!33210 0))(
  ( (array!33211 (arr!15958 (Array (_ BitVec 32) (_ BitVec 64))) (size!16322 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33210)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4432 0))(
  ( (MissingZero!4432 (index!19931 (_ BitVec 32))) (Found!4432 (index!19932 (_ BitVec 32))) (Intermediate!4432 (undefined!5244 Bool) (index!19933 (_ BitVec 32)) (x!48941 (_ BitVec 32))) (Undefined!4432) (MissingVacant!4432 (index!19934 (_ BitVec 32))) )
))
(declare-fun lt!239071 () SeekEntryResult!4432)

(declare-fun lt!239066 () Unit!16194)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33210 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16194)

(assert (=> b!521467 (= lt!239066 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!239069 #b00000000000000000000000000000000 (index!19933 lt!239071) (x!48941 lt!239071) mask!3524))))

(declare-fun lt!239067 () (_ BitVec 64))

(declare-fun res!319391 () Bool)

(declare-fun lt!239070 () array!33210)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33210 (_ BitVec 32)) SeekEntryResult!4432)

(assert (=> b!521467 (= res!319391 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239069 lt!239067 lt!239070 mask!3524) (Intermediate!4432 false (index!19933 lt!239071) (x!48941 lt!239071))))))

(declare-fun e!304224 () Bool)

(assert (=> b!521467 (=> (not res!319391) (not e!304224))))

(assert (=> b!521467 e!304224))

(declare-fun b!521468 () Bool)

(assert (=> b!521468 (= e!304224 false)))

(declare-fun b!521469 () Bool)

(declare-fun res!319389 () Bool)

(declare-fun e!304220 () Bool)

(assert (=> b!521469 (=> res!319389 e!304220)))

(get-info :version)

(assert (=> b!521469 (= res!319389 (or (undefined!5244 lt!239071) (not ((_ is Intermediate!4432) lt!239071))))))

(declare-fun b!521470 () Bool)

(declare-fun e!304225 () Bool)

(assert (=> b!521470 (= e!304225 (not e!304220))))

(declare-fun res!319384 () Bool)

(assert (=> b!521470 (=> res!319384 e!304220)))

(declare-fun lt!239072 () (_ BitVec 32))

(assert (=> b!521470 (= res!319384 (= lt!239071 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239072 lt!239067 lt!239070 mask!3524)))))

(assert (=> b!521470 (= lt!239071 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239069 (select (arr!15958 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!521470 (= lt!239072 (toIndex!0 lt!239067 mask!3524))))

(assert (=> b!521470 (= lt!239067 (select (store (arr!15958 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!521470 (= lt!239069 (toIndex!0 (select (arr!15958 a!3235) j!176) mask!3524))))

(assert (=> b!521470 (= lt!239070 (array!33211 (store (arr!15958 a!3235) i!1204 k0!2280) (size!16322 a!3235)))))

(declare-fun e!304222 () Bool)

(assert (=> b!521470 e!304222))

(declare-fun res!319388 () Bool)

(assert (=> b!521470 (=> (not res!319388) (not e!304222))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33210 (_ BitVec 32)) Bool)

(assert (=> b!521470 (= res!319388 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239064 () Unit!16194)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33210 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16194)

(assert (=> b!521470 (= lt!239064 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!521471 () Bool)

(declare-fun res!319390 () Bool)

(declare-fun e!304223 () Bool)

(assert (=> b!521471 (=> (not res!319390) (not e!304223))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!521471 (= res!319390 (validKeyInArray!0 k0!2280))))

(declare-fun b!521472 () Bool)

(assert (=> b!521472 (= e!304220 true)))

(assert (=> b!521472 (and (or (= (select (arr!15958 a!3235) (index!19933 lt!239071)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15958 a!3235) (index!19933 lt!239071)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15958 a!3235) (index!19933 lt!239071)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15958 a!3235) (index!19933 lt!239071)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239065 () Unit!16194)

(assert (=> b!521472 (= lt!239065 e!304221)))

(declare-fun c!61343 () Bool)

(assert (=> b!521472 (= c!61343 (= (select (arr!15958 a!3235) (index!19933 lt!239071)) (select (arr!15958 a!3235) j!176)))))

(assert (=> b!521472 (and (bvslt (x!48941 lt!239071) #b01111111111111111111111111111110) (or (= (select (arr!15958 a!3235) (index!19933 lt!239071)) (select (arr!15958 a!3235) j!176)) (= (select (arr!15958 a!3235) (index!19933 lt!239071)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15958 a!3235) (index!19933 lt!239071)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!521473 () Bool)

(assert (=> b!521473 (= e!304223 e!304225)))

(declare-fun res!319387 () Bool)

(assert (=> b!521473 (=> (not res!319387) (not e!304225))))

(declare-fun lt!239068 () SeekEntryResult!4432)

(assert (=> b!521473 (= res!319387 (or (= lt!239068 (MissingZero!4432 i!1204)) (= lt!239068 (MissingVacant!4432 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33210 (_ BitVec 32)) SeekEntryResult!4432)

(assert (=> b!521473 (= lt!239068 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!521474 () Bool)

(declare-fun res!319392 () Bool)

(assert (=> b!521474 (=> (not res!319392) (not e!304223))))

(assert (=> b!521474 (= res!319392 (and (= (size!16322 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16322 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16322 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!521475 () Bool)

(declare-fun res!319386 () Bool)

(assert (=> b!521475 (=> (not res!319386) (not e!304223))))

(declare-fun arrayContainsKey!0 (array!33210 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!521475 (= res!319386 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!521476 () Bool)

(declare-fun res!319393 () Bool)

(assert (=> b!521476 (=> (not res!319393) (not e!304225))))

(assert (=> b!521476 (= res!319393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!521478 () Bool)

(assert (=> b!521478 (= e!304222 (= (seekEntryOrOpen!0 (select (arr!15958 a!3235) j!176) a!3235 mask!3524) (Found!4432 j!176)))))

(declare-fun res!319383 () Bool)

(assert (=> start!47424 (=> (not res!319383) (not e!304223))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47424 (= res!319383 (validMask!0 mask!3524))))

(assert (=> start!47424 e!304223))

(assert (=> start!47424 true))

(declare-fun array_inv!11732 (array!33210) Bool)

(assert (=> start!47424 (array_inv!11732 a!3235)))

(declare-fun b!521477 () Bool)

(declare-fun res!319394 () Bool)

(assert (=> b!521477 (=> (not res!319394) (not e!304225))))

(declare-datatypes ((List!10169 0))(
  ( (Nil!10166) (Cons!10165 (h!11087 (_ BitVec 64)) (t!16405 List!10169)) )
))
(declare-fun arrayNoDuplicates!0 (array!33210 (_ BitVec 32) List!10169) Bool)

(assert (=> b!521477 (= res!319394 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10166))))

(declare-fun b!521479 () Bool)

(declare-fun Unit!16197 () Unit!16194)

(assert (=> b!521479 (= e!304221 Unit!16197)))

(declare-fun b!521480 () Bool)

(declare-fun res!319385 () Bool)

(assert (=> b!521480 (=> (not res!319385) (not e!304223))))

(assert (=> b!521480 (= res!319385 (validKeyInArray!0 (select (arr!15958 a!3235) j!176)))))

(assert (= (and start!47424 res!319383) b!521474))

(assert (= (and b!521474 res!319392) b!521480))

(assert (= (and b!521480 res!319385) b!521471))

(assert (= (and b!521471 res!319390) b!521475))

(assert (= (and b!521475 res!319386) b!521473))

(assert (= (and b!521473 res!319387) b!521476))

(assert (= (and b!521476 res!319393) b!521477))

(assert (= (and b!521477 res!319394) b!521470))

(assert (= (and b!521470 res!319388) b!521478))

(assert (= (and b!521470 (not res!319384)) b!521469))

(assert (= (and b!521469 (not res!319389)) b!521472))

(assert (= (and b!521472 c!61343) b!521467))

(assert (= (and b!521472 (not c!61343)) b!521479))

(assert (= (and b!521467 res!319391) b!521468))

(declare-fun m!502417 () Bool)

(assert (=> b!521476 m!502417))

(declare-fun m!502419 () Bool)

(assert (=> start!47424 m!502419))

(declare-fun m!502421 () Bool)

(assert (=> start!47424 m!502421))

(declare-fun m!502423 () Bool)

(assert (=> b!521478 m!502423))

(assert (=> b!521478 m!502423))

(declare-fun m!502425 () Bool)

(assert (=> b!521478 m!502425))

(assert (=> b!521480 m!502423))

(assert (=> b!521480 m!502423))

(declare-fun m!502427 () Bool)

(assert (=> b!521480 m!502427))

(declare-fun m!502429 () Bool)

(assert (=> b!521471 m!502429))

(declare-fun m!502431 () Bool)

(assert (=> b!521475 m!502431))

(declare-fun m!502433 () Bool)

(assert (=> b!521470 m!502433))

(declare-fun m!502435 () Bool)

(assert (=> b!521470 m!502435))

(declare-fun m!502437 () Bool)

(assert (=> b!521470 m!502437))

(declare-fun m!502439 () Bool)

(assert (=> b!521470 m!502439))

(assert (=> b!521470 m!502423))

(declare-fun m!502441 () Bool)

(assert (=> b!521470 m!502441))

(assert (=> b!521470 m!502423))

(declare-fun m!502443 () Bool)

(assert (=> b!521470 m!502443))

(assert (=> b!521470 m!502423))

(declare-fun m!502445 () Bool)

(assert (=> b!521470 m!502445))

(declare-fun m!502447 () Bool)

(assert (=> b!521470 m!502447))

(declare-fun m!502449 () Bool)

(assert (=> b!521473 m!502449))

(declare-fun m!502451 () Bool)

(assert (=> b!521477 m!502451))

(declare-fun m!502453 () Bool)

(assert (=> b!521472 m!502453))

(assert (=> b!521472 m!502423))

(declare-fun m!502455 () Bool)

(assert (=> b!521467 m!502455))

(declare-fun m!502457 () Bool)

(assert (=> b!521467 m!502457))

(check-sat (not b!521470) (not b!521473) (not b!521471) (not b!521467) (not b!521478) (not b!521475) (not b!521477) (not start!47424) (not b!521476) (not b!521480))
(check-sat)
