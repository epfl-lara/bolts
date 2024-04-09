; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45672 () Bool)

(assert start!45672)

(declare-fun b!503614 () Bool)

(declare-fun res!305025 () Bool)

(declare-fun e!294914 () Bool)

(assert (=> b!503614 (=> res!305025 e!294914)))

(declare-datatypes ((SeekEntryResult!4045 0))(
  ( (MissingZero!4045 (index!18368 (_ BitVec 32))) (Found!4045 (index!18369 (_ BitVec 32))) (Intermediate!4045 (undefined!4857 Bool) (index!18370 (_ BitVec 32)) (x!47417 (_ BitVec 32))) (Undefined!4045) (MissingVacant!4045 (index!18371 (_ BitVec 32))) )
))
(declare-fun lt!229233 () SeekEntryResult!4045)

(get-info :version)

(assert (=> b!503614 (= res!305025 (or (undefined!4857 lt!229233) (not ((_ is Intermediate!4045) lt!229233))))))

(declare-fun b!503615 () Bool)

(declare-fun res!305032 () Bool)

(declare-fun e!294913 () Bool)

(assert (=> b!503615 (=> (not res!305032) (not e!294913))))

(declare-datatypes ((array!32388 0))(
  ( (array!32389 (arr!15571 (Array (_ BitVec 32) (_ BitVec 64))) (size!15935 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32388)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32388 (_ BitVec 32)) Bool)

(assert (=> b!503615 (= res!305032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun lt!229234 () (_ BitVec 32))

(declare-fun b!503616 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!294918 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32388 (_ BitVec 32)) SeekEntryResult!4045)

(assert (=> b!503616 (= e!294918 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229234 (index!18370 lt!229233) (select (arr!15571 a!3235) j!176) a!3235 mask!3524) (Found!4045 j!176))))))

(declare-fun b!503617 () Bool)

(declare-fun e!294919 () Bool)

(assert (=> b!503617 (= e!294919 true)))

(declare-fun lt!229230 () array!32388)

(declare-fun lt!229232 () SeekEntryResult!4045)

(declare-fun lt!229235 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32388 (_ BitVec 32)) SeekEntryResult!4045)

(assert (=> b!503617 (= lt!229232 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229234 lt!229235 lt!229230 mask!3524))))

(declare-fun b!503618 () Bool)

(assert (=> b!503618 (= e!294913 (not e!294914))))

(declare-fun res!305024 () Bool)

(assert (=> b!503618 (=> res!305024 e!294914)))

(declare-fun lt!229227 () (_ BitVec 32))

(assert (=> b!503618 (= res!305024 (= lt!229233 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229227 lt!229235 lt!229230 mask!3524)))))

(assert (=> b!503618 (= lt!229233 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229234 (select (arr!15571 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!503618 (= lt!229227 (toIndex!0 lt!229235 mask!3524))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!503618 (= lt!229235 (select (store (arr!15571 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!503618 (= lt!229234 (toIndex!0 (select (arr!15571 a!3235) j!176) mask!3524))))

(assert (=> b!503618 (= lt!229230 (array!32389 (store (arr!15571 a!3235) i!1204 k0!2280) (size!15935 a!3235)))))

(declare-fun e!294916 () Bool)

(assert (=> b!503618 e!294916))

(declare-fun res!305026 () Bool)

(assert (=> b!503618 (=> (not res!305026) (not e!294916))))

(assert (=> b!503618 (= res!305026 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15270 0))(
  ( (Unit!15271) )
))
(declare-fun lt!229225 () Unit!15270)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32388 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15270)

(assert (=> b!503618 (= lt!229225 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!503619 () Bool)

(declare-fun res!305020 () Bool)

(declare-fun e!294915 () Bool)

(assert (=> b!503619 (=> (not res!305020) (not e!294915))))

(assert (=> b!503619 (= res!305020 (and (= (size!15935 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15935 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15935 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!503620 () Bool)

(declare-fun e!294912 () Unit!15270)

(declare-fun Unit!15272 () Unit!15270)

(assert (=> b!503620 (= e!294912 Unit!15272)))

(declare-fun lt!229228 () Unit!15270)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32388 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15270)

(assert (=> b!503620 (= lt!229228 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!229234 #b00000000000000000000000000000000 (index!18370 lt!229233) (x!47417 lt!229233) mask!3524))))

(declare-fun res!305021 () Bool)

(assert (=> b!503620 (= res!305021 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229234 lt!229235 lt!229230 mask!3524) (Intermediate!4045 false (index!18370 lt!229233) (x!47417 lt!229233))))))

(declare-fun e!294917 () Bool)

(assert (=> b!503620 (=> (not res!305021) (not e!294917))))

(assert (=> b!503620 e!294917))

(declare-fun b!503621 () Bool)

(declare-fun res!305030 () Bool)

(assert (=> b!503621 (=> (not res!305030) (not e!294915))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!503621 (= res!305030 (validKeyInArray!0 k0!2280))))

(declare-fun b!503622 () Bool)

(assert (=> b!503622 (= e!294915 e!294913)))

(declare-fun res!305031 () Bool)

(assert (=> b!503622 (=> (not res!305031) (not e!294913))))

(declare-fun lt!229226 () SeekEntryResult!4045)

(assert (=> b!503622 (= res!305031 (or (= lt!229226 (MissingZero!4045 i!1204)) (= lt!229226 (MissingVacant!4045 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32388 (_ BitVec 32)) SeekEntryResult!4045)

(assert (=> b!503622 (= lt!229226 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!503623 () Bool)

(assert (=> b!503623 (= e!294916 (= (seekEntryOrOpen!0 (select (arr!15571 a!3235) j!176) a!3235 mask!3524) (Found!4045 j!176)))))

(declare-fun res!305019 () Bool)

(assert (=> start!45672 (=> (not res!305019) (not e!294915))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45672 (= res!305019 (validMask!0 mask!3524))))

(assert (=> start!45672 e!294915))

(assert (=> start!45672 true))

(declare-fun array_inv!11345 (array!32388) Bool)

(assert (=> start!45672 (array_inv!11345 a!3235)))

(declare-fun b!503624 () Bool)

(declare-fun res!305023 () Bool)

(assert (=> b!503624 (=> res!305023 e!294919)))

(assert (=> b!503624 (= res!305023 e!294918)))

(declare-fun res!305028 () Bool)

(assert (=> b!503624 (=> (not res!305028) (not e!294918))))

(assert (=> b!503624 (= res!305028 (bvsgt #b00000000000000000000000000000000 (x!47417 lt!229233)))))

(declare-fun b!503625 () Bool)

(declare-fun res!305033 () Bool)

(assert (=> b!503625 (=> (not res!305033) (not e!294915))))

(assert (=> b!503625 (= res!305033 (validKeyInArray!0 (select (arr!15571 a!3235) j!176)))))

(declare-fun b!503626 () Bool)

(declare-fun res!305022 () Bool)

(assert (=> b!503626 (=> (not res!305022) (not e!294913))))

(declare-datatypes ((List!9782 0))(
  ( (Nil!9779) (Cons!9778 (h!10655 (_ BitVec 64)) (t!16018 List!9782)) )
))
(declare-fun arrayNoDuplicates!0 (array!32388 (_ BitVec 32) List!9782) Bool)

(assert (=> b!503626 (= res!305022 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9779))))

(declare-fun b!503627 () Bool)

(declare-fun Unit!15273 () Unit!15270)

(assert (=> b!503627 (= e!294912 Unit!15273)))

(declare-fun b!503628 () Bool)

(declare-fun res!305029 () Bool)

(assert (=> b!503628 (=> (not res!305029) (not e!294915))))

(declare-fun arrayContainsKey!0 (array!32388 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!503628 (= res!305029 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!503629 () Bool)

(assert (=> b!503629 (= e!294917 false)))

(declare-fun b!503630 () Bool)

(assert (=> b!503630 (= e!294914 e!294919)))

(declare-fun res!305027 () Bool)

(assert (=> b!503630 (=> res!305027 e!294919)))

(assert (=> b!503630 (= res!305027 (or (bvsgt (x!47417 lt!229233) #b01111111111111111111111111111110) (bvslt lt!229234 #b00000000000000000000000000000000) (bvsge lt!229234 (size!15935 a!3235)) (bvslt (index!18370 lt!229233) #b00000000000000000000000000000000) (bvsge (index!18370 lt!229233) (size!15935 a!3235)) (not (= lt!229233 (Intermediate!4045 false (index!18370 lt!229233) (x!47417 lt!229233))))))))

(assert (=> b!503630 (= (index!18370 lt!229233) i!1204)))

(declare-fun lt!229231 () Unit!15270)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32388 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15270)

(assert (=> b!503630 (= lt!229231 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!229234 #b00000000000000000000000000000000 (index!18370 lt!229233) (x!47417 lt!229233) mask!3524))))

(assert (=> b!503630 (and (or (= (select (arr!15571 a!3235) (index!18370 lt!229233)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15571 a!3235) (index!18370 lt!229233)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15571 a!3235) (index!18370 lt!229233)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15571 a!3235) (index!18370 lt!229233)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229229 () Unit!15270)

(assert (=> b!503630 (= lt!229229 e!294912)))

(declare-fun c!59576 () Bool)

(assert (=> b!503630 (= c!59576 (= (select (arr!15571 a!3235) (index!18370 lt!229233)) (select (arr!15571 a!3235) j!176)))))

(assert (=> b!503630 (and (bvslt (x!47417 lt!229233) #b01111111111111111111111111111110) (or (= (select (arr!15571 a!3235) (index!18370 lt!229233)) (select (arr!15571 a!3235) j!176)) (= (select (arr!15571 a!3235) (index!18370 lt!229233)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15571 a!3235) (index!18370 lt!229233)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!45672 res!305019) b!503619))

(assert (= (and b!503619 res!305020) b!503625))

(assert (= (and b!503625 res!305033) b!503621))

(assert (= (and b!503621 res!305030) b!503628))

(assert (= (and b!503628 res!305029) b!503622))

(assert (= (and b!503622 res!305031) b!503615))

(assert (= (and b!503615 res!305032) b!503626))

(assert (= (and b!503626 res!305022) b!503618))

(assert (= (and b!503618 res!305026) b!503623))

(assert (= (and b!503618 (not res!305024)) b!503614))

(assert (= (and b!503614 (not res!305025)) b!503630))

(assert (= (and b!503630 c!59576) b!503620))

(assert (= (and b!503630 (not c!59576)) b!503627))

(assert (= (and b!503620 res!305021) b!503629))

(assert (= (and b!503630 (not res!305027)) b!503624))

(assert (= (and b!503624 res!305028) b!503616))

(assert (= (and b!503624 (not res!305023)) b!503617))

(declare-fun m!484451 () Bool)

(assert (=> b!503621 m!484451))

(declare-fun m!484453 () Bool)

(assert (=> b!503623 m!484453))

(assert (=> b!503623 m!484453))

(declare-fun m!484455 () Bool)

(assert (=> b!503623 m!484455))

(declare-fun m!484457 () Bool)

(assert (=> b!503615 m!484457))

(assert (=> b!503625 m!484453))

(assert (=> b!503625 m!484453))

(declare-fun m!484459 () Bool)

(assert (=> b!503625 m!484459))

(declare-fun m!484461 () Bool)

(assert (=> b!503630 m!484461))

(declare-fun m!484463 () Bool)

(assert (=> b!503630 m!484463))

(assert (=> b!503630 m!484453))

(declare-fun m!484465 () Bool)

(assert (=> b!503620 m!484465))

(declare-fun m!484467 () Bool)

(assert (=> b!503620 m!484467))

(declare-fun m!484469 () Bool)

(assert (=> b!503626 m!484469))

(assert (=> b!503616 m!484453))

(assert (=> b!503616 m!484453))

(declare-fun m!484471 () Bool)

(assert (=> b!503616 m!484471))

(declare-fun m!484473 () Bool)

(assert (=> b!503628 m!484473))

(declare-fun m!484475 () Bool)

(assert (=> start!45672 m!484475))

(declare-fun m!484477 () Bool)

(assert (=> start!45672 m!484477))

(declare-fun m!484479 () Bool)

(assert (=> b!503622 m!484479))

(declare-fun m!484481 () Bool)

(assert (=> b!503618 m!484481))

(declare-fun m!484483 () Bool)

(assert (=> b!503618 m!484483))

(declare-fun m!484485 () Bool)

(assert (=> b!503618 m!484485))

(declare-fun m!484487 () Bool)

(assert (=> b!503618 m!484487))

(declare-fun m!484489 () Bool)

(assert (=> b!503618 m!484489))

(assert (=> b!503618 m!484453))

(declare-fun m!484491 () Bool)

(assert (=> b!503618 m!484491))

(assert (=> b!503618 m!484453))

(declare-fun m!484493 () Bool)

(assert (=> b!503618 m!484493))

(assert (=> b!503618 m!484453))

(declare-fun m!484495 () Bool)

(assert (=> b!503618 m!484495))

(assert (=> b!503617 m!484467))

(check-sat (not b!503622) (not b!503628) (not b!503621) (not b!503616) (not b!503630) (not b!503615) (not b!503626) (not b!503620) (not b!503625) (not b!503618) (not start!45672) (not b!503617) (not b!503623))
(check-sat)
