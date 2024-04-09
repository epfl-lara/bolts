; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87306 () Bool)

(assert start!87306)

(declare-fun b!1011519 () Bool)

(declare-fun res!679571 () Bool)

(declare-fun e!569092 () Bool)

(assert (=> b!1011519 (=> (not res!679571) (not e!569092))))

(declare-datatypes ((array!63654 0))(
  ( (array!63655 (arr!30638 (Array (_ BitVec 32) (_ BitVec 64))) (size!31141 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63654)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1011519 (= res!679571 (and (= (size!31141 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31141 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31141 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1011520 () Bool)

(declare-fun res!679581 () Bool)

(assert (=> b!1011520 (=> (not res!679581) (not e!569092))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63654 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1011520 (= res!679581 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1011521 () Bool)

(declare-fun res!679582 () Bool)

(assert (=> b!1011521 (=> (not res!679582) (not e!569092))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1011521 (= res!679582 (validKeyInArray!0 k0!2224))))

(declare-fun b!1011522 () Bool)

(declare-fun res!679580 () Bool)

(assert (=> b!1011522 (=> (not res!679580) (not e!569092))))

(assert (=> b!1011522 (= res!679580 (validKeyInArray!0 (select (arr!30638 a!3219) j!170)))))

(declare-fun b!1011523 () Bool)

(declare-fun res!679572 () Bool)

(declare-fun e!569094 () Bool)

(assert (=> b!1011523 (=> (not res!679572) (not e!569094))))

(declare-datatypes ((List!21440 0))(
  ( (Nil!21437) (Cons!21436 (h!22634 (_ BitVec 64)) (t!30449 List!21440)) )
))
(declare-fun arrayNoDuplicates!0 (array!63654 (_ BitVec 32) List!21440) Bool)

(assert (=> b!1011523 (= res!679572 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21437))))

(declare-fun b!1011524 () Bool)

(declare-fun res!679570 () Bool)

(declare-fun e!569093 () Bool)

(assert (=> b!1011524 (=> (not res!679570) (not e!569093))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!447052 () (_ BitVec 64))

(declare-fun lt!447053 () array!63654)

(declare-datatypes ((SeekEntryResult!9570 0))(
  ( (MissingZero!9570 (index!40650 (_ BitVec 32))) (Found!9570 (index!40651 (_ BitVec 32))) (Intermediate!9570 (undefined!10382 Bool) (index!40652 (_ BitVec 32)) (x!88099 (_ BitVec 32))) (Undefined!9570) (MissingVacant!9570 (index!40653 (_ BitVec 32))) )
))
(declare-fun lt!447055 () SeekEntryResult!9570)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63654 (_ BitVec 32)) SeekEntryResult!9570)

(assert (=> b!1011524 (= res!679570 (not (= lt!447055 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!447052 lt!447053 mask!3464))))))

(declare-fun b!1011525 () Bool)

(declare-fun e!569096 () Bool)

(assert (=> b!1011525 (= e!569094 e!569096)))

(declare-fun res!679575 () Bool)

(assert (=> b!1011525 (=> (not res!679575) (not e!569096))))

(declare-fun lt!447051 () SeekEntryResult!9570)

(declare-fun lt!447057 () SeekEntryResult!9570)

(assert (=> b!1011525 (= res!679575 (= lt!447051 lt!447057))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1011525 (= lt!447057 (Intermediate!9570 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1011525 (= lt!447051 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30638 a!3219) j!170) mask!3464) (select (arr!30638 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011526 () Bool)

(declare-fun res!679585 () Bool)

(declare-fun e!569095 () Bool)

(assert (=> b!1011526 (=> (not res!679585) (not e!569095))))

(declare-fun lt!447054 () SeekEntryResult!9570)

(declare-fun lt!447050 () (_ BitVec 32))

(assert (=> b!1011526 (= res!679585 (not (= lt!447054 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!447050 lt!447052 lt!447053 mask!3464))))))

(declare-fun b!1011527 () Bool)

(declare-fun res!679583 () Bool)

(assert (=> b!1011527 (=> (not res!679583) (not e!569094))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63654 (_ BitVec 32)) Bool)

(assert (=> b!1011527 (= res!679583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1011528 () Bool)

(declare-fun e!569099 () Bool)

(assert (=> b!1011528 (= e!569096 e!569099)))

(declare-fun res!679584 () Bool)

(assert (=> b!1011528 (=> (not res!679584) (not e!569099))))

(assert (=> b!1011528 (= res!679584 (= lt!447055 lt!447057))))

(assert (=> b!1011528 (= lt!447055 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30638 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011529 () Bool)

(declare-fun res!679579 () Bool)

(assert (=> b!1011529 (=> (not res!679579) (not e!569094))))

(assert (=> b!1011529 (= res!679579 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31141 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31141 a!3219))))))

(declare-fun b!1011530 () Bool)

(assert (=> b!1011530 (= e!569099 e!569093)))

(declare-fun res!679574 () Bool)

(assert (=> b!1011530 (=> (not res!679574) (not e!569093))))

(assert (=> b!1011530 (= res!679574 (not (= lt!447051 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!447052 mask!3464) lt!447052 lt!447053 mask!3464))))))

(assert (=> b!1011530 (= lt!447052 (select (store (arr!30638 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1011530 (= lt!447053 (array!63655 (store (arr!30638 a!3219) i!1194 k0!2224) (size!31141 a!3219)))))

(declare-fun b!1011531 () Bool)

(declare-fun res!679577 () Bool)

(assert (=> b!1011531 (=> (not res!679577) (not e!569093))))

(assert (=> b!1011531 (= res!679577 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun res!679578 () Bool)

(assert (=> start!87306 (=> (not res!679578) (not e!569092))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87306 (= res!679578 (validMask!0 mask!3464))))

(assert (=> start!87306 e!569092))

(declare-fun array_inv!23628 (array!63654) Bool)

(assert (=> start!87306 (array_inv!23628 a!3219)))

(assert (=> start!87306 true))

(declare-fun b!1011532 () Bool)

(declare-fun e!569098 () Bool)

(assert (=> b!1011532 (= e!569098 e!569095)))

(declare-fun res!679569 () Bool)

(assert (=> b!1011532 (=> (not res!679569) (not e!569095))))

(assert (=> b!1011532 (= res!679569 (= lt!447054 lt!447057))))

(assert (=> b!1011532 (= lt!447054 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!447050 (select (arr!30638 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011533 () Bool)

(assert (=> b!1011533 (= e!569093 e!569098)))

(declare-fun res!679576 () Bool)

(assert (=> b!1011533 (=> (not res!679576) (not e!569098))))

(assert (=> b!1011533 (= res!679576 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!447050 #b00000000000000000000000000000000) (bvslt lt!447050 (size!31141 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1011533 (= lt!447050 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1011534 () Bool)

(assert (=> b!1011534 (= e!569092 e!569094)))

(declare-fun res!679573 () Bool)

(assert (=> b!1011534 (=> (not res!679573) (not e!569094))))

(declare-fun lt!447056 () SeekEntryResult!9570)

(assert (=> b!1011534 (= res!679573 (or (= lt!447056 (MissingVacant!9570 i!1194)) (= lt!447056 (MissingZero!9570 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63654 (_ BitVec 32)) SeekEntryResult!9570)

(assert (=> b!1011534 (= lt!447056 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1011535 () Bool)

(assert (=> b!1011535 (= e!569095 (bvsge (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!1245)) (bvsub #b01111111111111111111111111111110 x!1245)))))

(assert (= (and start!87306 res!679578) b!1011519))

(assert (= (and b!1011519 res!679571) b!1011522))

(assert (= (and b!1011522 res!679580) b!1011521))

(assert (= (and b!1011521 res!679582) b!1011520))

(assert (= (and b!1011520 res!679581) b!1011534))

(assert (= (and b!1011534 res!679573) b!1011527))

(assert (= (and b!1011527 res!679583) b!1011523))

(assert (= (and b!1011523 res!679572) b!1011529))

(assert (= (and b!1011529 res!679579) b!1011525))

(assert (= (and b!1011525 res!679575) b!1011528))

(assert (= (and b!1011528 res!679584) b!1011530))

(assert (= (and b!1011530 res!679574) b!1011524))

(assert (= (and b!1011524 res!679570) b!1011531))

(assert (= (and b!1011531 res!679577) b!1011533))

(assert (= (and b!1011533 res!679576) b!1011532))

(assert (= (and b!1011532 res!679569) b!1011526))

(assert (= (and b!1011526 res!679585) b!1011535))

(declare-fun m!935617 () Bool)

(assert (=> b!1011530 m!935617))

(assert (=> b!1011530 m!935617))

(declare-fun m!935619 () Bool)

(assert (=> b!1011530 m!935619))

(declare-fun m!935621 () Bool)

(assert (=> b!1011530 m!935621))

(declare-fun m!935623 () Bool)

(assert (=> b!1011530 m!935623))

(declare-fun m!935625 () Bool)

(assert (=> b!1011528 m!935625))

(assert (=> b!1011528 m!935625))

(declare-fun m!935627 () Bool)

(assert (=> b!1011528 m!935627))

(declare-fun m!935629 () Bool)

(assert (=> start!87306 m!935629))

(declare-fun m!935631 () Bool)

(assert (=> start!87306 m!935631))

(declare-fun m!935633 () Bool)

(assert (=> b!1011534 m!935633))

(declare-fun m!935635 () Bool)

(assert (=> b!1011520 m!935635))

(declare-fun m!935637 () Bool)

(assert (=> b!1011521 m!935637))

(declare-fun m!935639 () Bool)

(assert (=> b!1011533 m!935639))

(declare-fun m!935641 () Bool)

(assert (=> b!1011526 m!935641))

(declare-fun m!935643 () Bool)

(assert (=> b!1011524 m!935643))

(assert (=> b!1011532 m!935625))

(assert (=> b!1011532 m!935625))

(declare-fun m!935645 () Bool)

(assert (=> b!1011532 m!935645))

(assert (=> b!1011525 m!935625))

(assert (=> b!1011525 m!935625))

(declare-fun m!935647 () Bool)

(assert (=> b!1011525 m!935647))

(assert (=> b!1011525 m!935647))

(assert (=> b!1011525 m!935625))

(declare-fun m!935649 () Bool)

(assert (=> b!1011525 m!935649))

(assert (=> b!1011522 m!935625))

(assert (=> b!1011522 m!935625))

(declare-fun m!935651 () Bool)

(assert (=> b!1011522 m!935651))

(declare-fun m!935653 () Bool)

(assert (=> b!1011523 m!935653))

(declare-fun m!935655 () Bool)

(assert (=> b!1011527 m!935655))

(check-sat (not b!1011526) (not b!1011524) (not start!87306) (not b!1011533) (not b!1011532) (not b!1011523) (not b!1011520) (not b!1011522) (not b!1011530) (not b!1011525) (not b!1011521) (not b!1011534) (not b!1011527) (not b!1011528))
(check-sat)
