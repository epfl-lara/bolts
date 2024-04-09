; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47730 () Bool)

(assert start!47730)

(declare-fun b!524725 () Bool)

(declare-fun e!305998 () Bool)

(assert (=> b!524725 (= e!305998 true)))

(declare-datatypes ((SeekEntryResult!4486 0))(
  ( (MissingZero!4486 (index!20156 (_ BitVec 32))) (Found!4486 (index!20157 (_ BitVec 32))) (Intermediate!4486 (undefined!5298 Bool) (index!20158 (_ BitVec 32)) (x!49166 (_ BitVec 32))) (Undefined!4486) (MissingVacant!4486 (index!20159 (_ BitVec 32))) )
))
(declare-fun lt!240991 () SeekEntryResult!4486)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!524725 (= (index!20158 lt!240991) i!1204)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33327 0))(
  ( (array!33328 (arr!16012 (Array (_ BitVec 32) (_ BitVec 64))) (size!16376 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33327)

(declare-fun lt!240988 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((Unit!16410 0))(
  ( (Unit!16411) )
))
(declare-fun lt!240989 () Unit!16410)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33327 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16410)

(assert (=> b!524725 (= lt!240989 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!240988 #b00000000000000000000000000000000 (index!20158 lt!240991) (x!49166 lt!240991) mask!3524))))

(assert (=> b!524725 (and (or (= (select (arr!16012 a!3235) (index!20158 lt!240991)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16012 a!3235) (index!20158 lt!240991)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16012 a!3235) (index!20158 lt!240991)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16012 a!3235) (index!20158 lt!240991)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!240993 () Unit!16410)

(declare-fun e!305993 () Unit!16410)

(assert (=> b!524725 (= lt!240993 e!305993)))

(declare-fun c!61811 () Bool)

(assert (=> b!524725 (= c!61811 (= (select (arr!16012 a!3235) (index!20158 lt!240991)) (select (arr!16012 a!3235) j!176)))))

(assert (=> b!524725 (and (bvslt (x!49166 lt!240991) #b01111111111111111111111111111110) (or (= (select (arr!16012 a!3235) (index!20158 lt!240991)) (select (arr!16012 a!3235) j!176)) (= (select (arr!16012 a!3235) (index!20158 lt!240991)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16012 a!3235) (index!20158 lt!240991)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!524726 () Bool)

(declare-fun res!321715 () Bool)

(declare-fun e!305995 () Bool)

(assert (=> b!524726 (=> (not res!321715) (not e!305995))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33327 (_ BitVec 32)) Bool)

(assert (=> b!524726 (= res!321715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!524727 () Bool)

(declare-fun e!305996 () Bool)

(assert (=> b!524727 (= e!305996 e!305995)))

(declare-fun res!321718 () Bool)

(assert (=> b!524727 (=> (not res!321718) (not e!305995))))

(declare-fun lt!240995 () SeekEntryResult!4486)

(assert (=> b!524727 (= res!321718 (or (= lt!240995 (MissingZero!4486 i!1204)) (= lt!240995 (MissingVacant!4486 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33327 (_ BitVec 32)) SeekEntryResult!4486)

(assert (=> b!524727 (= lt!240995 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!524728 () Bool)

(declare-fun e!305992 () Bool)

(assert (=> b!524728 (= e!305992 (= (seekEntryOrOpen!0 (select (arr!16012 a!3235) j!176) a!3235 mask!3524) (Found!4486 j!176)))))

(declare-fun b!524730 () Bool)

(declare-fun res!321722 () Bool)

(assert (=> b!524730 (=> (not res!321722) (not e!305996))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!524730 (= res!321722 (validKeyInArray!0 k0!2280))))

(declare-fun b!524731 () Bool)

(declare-fun res!321719 () Bool)

(assert (=> b!524731 (=> (not res!321719) (not e!305995))))

(declare-datatypes ((List!10223 0))(
  ( (Nil!10220) (Cons!10219 (h!11150 (_ BitVec 64)) (t!16459 List!10223)) )
))
(declare-fun arrayNoDuplicates!0 (array!33327 (_ BitVec 32) List!10223) Bool)

(assert (=> b!524731 (= res!321719 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10220))))

(declare-fun b!524732 () Bool)

(declare-fun e!305994 () Bool)

(assert (=> b!524732 (= e!305994 false)))

(declare-fun b!524733 () Bool)

(declare-fun res!321720 () Bool)

(assert (=> b!524733 (=> (not res!321720) (not e!305996))))

(declare-fun arrayContainsKey!0 (array!33327 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!524733 (= res!321720 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!524734 () Bool)

(declare-fun res!321714 () Bool)

(assert (=> b!524734 (=> res!321714 e!305998)))

(get-info :version)

(assert (=> b!524734 (= res!321714 (or (undefined!5298 lt!240991) (not ((_ is Intermediate!4486) lt!240991))))))

(declare-fun b!524735 () Bool)

(declare-fun Unit!16412 () Unit!16410)

(assert (=> b!524735 (= e!305993 Unit!16412)))

(declare-fun lt!240994 () Unit!16410)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33327 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16410)

(assert (=> b!524735 (= lt!240994 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!240988 #b00000000000000000000000000000000 (index!20158 lt!240991) (x!49166 lt!240991) mask!3524))))

(declare-fun lt!240990 () (_ BitVec 64))

(declare-fun res!321717 () Bool)

(declare-fun lt!240986 () array!33327)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33327 (_ BitVec 32)) SeekEntryResult!4486)

(assert (=> b!524735 (= res!321717 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240988 lt!240990 lt!240986 mask!3524) (Intermediate!4486 false (index!20158 lt!240991) (x!49166 lt!240991))))))

(assert (=> b!524735 (=> (not res!321717) (not e!305994))))

(assert (=> b!524735 e!305994))

(declare-fun b!524736 () Bool)

(declare-fun Unit!16413 () Unit!16410)

(assert (=> b!524736 (= e!305993 Unit!16413)))

(declare-fun b!524737 () Bool)

(assert (=> b!524737 (= e!305995 (not e!305998))))

(declare-fun res!321725 () Bool)

(assert (=> b!524737 (=> res!321725 e!305998)))

(declare-fun lt!240992 () (_ BitVec 32))

(assert (=> b!524737 (= res!321725 (= lt!240991 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240992 lt!240990 lt!240986 mask!3524)))))

(assert (=> b!524737 (= lt!240991 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!240988 (select (arr!16012 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!524737 (= lt!240992 (toIndex!0 lt!240990 mask!3524))))

(assert (=> b!524737 (= lt!240990 (select (store (arr!16012 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!524737 (= lt!240988 (toIndex!0 (select (arr!16012 a!3235) j!176) mask!3524))))

(assert (=> b!524737 (= lt!240986 (array!33328 (store (arr!16012 a!3235) i!1204 k0!2280) (size!16376 a!3235)))))

(assert (=> b!524737 e!305992))

(declare-fun res!321723 () Bool)

(assert (=> b!524737 (=> (not res!321723) (not e!305992))))

(assert (=> b!524737 (= res!321723 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!240987 () Unit!16410)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33327 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16410)

(assert (=> b!524737 (= lt!240987 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!524738 () Bool)

(declare-fun res!321724 () Bool)

(assert (=> b!524738 (=> (not res!321724) (not e!305996))))

(assert (=> b!524738 (= res!321724 (validKeyInArray!0 (select (arr!16012 a!3235) j!176)))))

(declare-fun res!321716 () Bool)

(assert (=> start!47730 (=> (not res!321716) (not e!305996))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47730 (= res!321716 (validMask!0 mask!3524))))

(assert (=> start!47730 e!305996))

(assert (=> start!47730 true))

(declare-fun array_inv!11786 (array!33327) Bool)

(assert (=> start!47730 (array_inv!11786 a!3235)))

(declare-fun b!524729 () Bool)

(declare-fun res!321721 () Bool)

(assert (=> b!524729 (=> (not res!321721) (not e!305996))))

(assert (=> b!524729 (= res!321721 (and (= (size!16376 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16376 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16376 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!47730 res!321716) b!524729))

(assert (= (and b!524729 res!321721) b!524738))

(assert (= (and b!524738 res!321724) b!524730))

(assert (= (and b!524730 res!321722) b!524733))

(assert (= (and b!524733 res!321720) b!524727))

(assert (= (and b!524727 res!321718) b!524726))

(assert (= (and b!524726 res!321715) b!524731))

(assert (= (and b!524731 res!321719) b!524737))

(assert (= (and b!524737 res!321723) b!524728))

(assert (= (and b!524737 (not res!321725)) b!524734))

(assert (= (and b!524734 (not res!321714)) b!524725))

(assert (= (and b!524725 c!61811) b!524735))

(assert (= (and b!524725 (not c!61811)) b!524736))

(assert (= (and b!524735 res!321717) b!524732))

(declare-fun m!505395 () Bool)

(assert (=> b!524728 m!505395))

(assert (=> b!524728 m!505395))

(declare-fun m!505397 () Bool)

(assert (=> b!524728 m!505397))

(declare-fun m!505399 () Bool)

(assert (=> b!524725 m!505399))

(declare-fun m!505401 () Bool)

(assert (=> b!524725 m!505401))

(assert (=> b!524725 m!505395))

(declare-fun m!505403 () Bool)

(assert (=> b!524735 m!505403))

(declare-fun m!505405 () Bool)

(assert (=> b!524735 m!505405))

(declare-fun m!505407 () Bool)

(assert (=> start!47730 m!505407))

(declare-fun m!505409 () Bool)

(assert (=> start!47730 m!505409))

(declare-fun m!505411 () Bool)

(assert (=> b!524726 m!505411))

(declare-fun m!505413 () Bool)

(assert (=> b!524727 m!505413))

(assert (=> b!524738 m!505395))

(assert (=> b!524738 m!505395))

(declare-fun m!505415 () Bool)

(assert (=> b!524738 m!505415))

(declare-fun m!505417 () Bool)

(assert (=> b!524733 m!505417))

(declare-fun m!505419 () Bool)

(assert (=> b!524731 m!505419))

(declare-fun m!505421 () Bool)

(assert (=> b!524737 m!505421))

(declare-fun m!505423 () Bool)

(assert (=> b!524737 m!505423))

(declare-fun m!505425 () Bool)

(assert (=> b!524737 m!505425))

(declare-fun m!505427 () Bool)

(assert (=> b!524737 m!505427))

(assert (=> b!524737 m!505395))

(declare-fun m!505429 () Bool)

(assert (=> b!524737 m!505429))

(declare-fun m!505431 () Bool)

(assert (=> b!524737 m!505431))

(assert (=> b!524737 m!505395))

(declare-fun m!505433 () Bool)

(assert (=> b!524737 m!505433))

(assert (=> b!524737 m!505395))

(declare-fun m!505435 () Bool)

(assert (=> b!524737 m!505435))

(declare-fun m!505437 () Bool)

(assert (=> b!524730 m!505437))

(check-sat (not b!524733) (not b!524731) (not b!524728) (not b!524725) (not b!524726) (not b!524727) (not b!524735) (not b!524738) (not b!524737) (not start!47730) (not b!524730))
(check-sat)
