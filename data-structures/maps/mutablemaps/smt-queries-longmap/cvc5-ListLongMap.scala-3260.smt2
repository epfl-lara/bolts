; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45442 () Bool)

(assert start!45442)

(declare-fun b!499488 () Bool)

(declare-fun res!301572 () Bool)

(declare-fun e!292692 () Bool)

(assert (=> b!499488 (=> (not res!301572) (not e!292692))))

(declare-datatypes ((array!32227 0))(
  ( (array!32228 (arr!15492 (Array (_ BitVec 32) (_ BitVec 64))) (size!15856 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32227)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32227 (_ BitVec 32)) Bool)

(assert (=> b!499488 (= res!301572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!499489 () Bool)

(declare-fun res!301574 () Bool)

(declare-fun e!292699 () Bool)

(assert (=> b!499489 (=> res!301574 e!292699)))

(declare-datatypes ((SeekEntryResult!3966 0))(
  ( (MissingZero!3966 (index!18046 (_ BitVec 32))) (Found!3966 (index!18047 (_ BitVec 32))) (Intermediate!3966 (undefined!4778 Bool) (index!18048 (_ BitVec 32)) (x!47118 (_ BitVec 32))) (Undefined!3966) (MissingVacant!3966 (index!18049 (_ BitVec 32))) )
))
(declare-fun lt!226579 () SeekEntryResult!3966)

(assert (=> b!499489 (= res!301574 (or (undefined!4778 lt!226579) (not (is-Intermediate!3966 lt!226579))))))

(declare-fun b!499490 () Bool)

(declare-fun res!301575 () Bool)

(declare-fun e!292695 () Bool)

(assert (=> b!499490 (=> (not res!301575) (not e!292695))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!499490 (= res!301575 (validKeyInArray!0 k!2280))))

(declare-fun b!499491 () Bool)

(declare-fun e!292698 () Bool)

(assert (=> b!499491 (= e!292698 false)))

(declare-fun b!499492 () Bool)

(declare-datatypes ((Unit!14954 0))(
  ( (Unit!14955) )
))
(declare-fun e!292697 () Unit!14954)

(declare-fun Unit!14956 () Unit!14954)

(assert (=> b!499492 (= e!292697 Unit!14956)))

(declare-fun b!499493 () Bool)

(assert (=> b!499493 (= e!292695 e!292692)))

(declare-fun res!301580 () Bool)

(assert (=> b!499493 (=> (not res!301580) (not e!292692))))

(declare-fun lt!226580 () SeekEntryResult!3966)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!499493 (= res!301580 (or (= lt!226580 (MissingZero!3966 i!1204)) (= lt!226580 (MissingVacant!3966 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32227 (_ BitVec 32)) SeekEntryResult!3966)

(assert (=> b!499493 (= lt!226580 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!499495 () Bool)

(declare-fun e!292693 () Bool)

(assert (=> b!499495 (= e!292699 e!292693)))

(declare-fun res!301571 () Bool)

(assert (=> b!499495 (=> res!301571 e!292693)))

(declare-fun lt!226571 () (_ BitVec 32))

(assert (=> b!499495 (= res!301571 (or (bvsgt #b00000000000000000000000000000000 (x!47118 lt!226579)) (bvsgt (x!47118 lt!226579) #b01111111111111111111111111111110) (bvslt lt!226571 #b00000000000000000000000000000000) (bvsge lt!226571 (size!15856 a!3235)) (bvslt (index!18048 lt!226579) #b00000000000000000000000000000000) (bvsge (index!18048 lt!226579) (size!15856 a!3235)) (not (= lt!226579 (Intermediate!3966 false (index!18048 lt!226579) (x!47118 lt!226579))))))))

(assert (=> b!499495 (and (or (= (select (arr!15492 a!3235) (index!18048 lt!226579)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15492 a!3235) (index!18048 lt!226579)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15492 a!3235) (index!18048 lt!226579)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15492 a!3235) (index!18048 lt!226579)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!226578 () Unit!14954)

(assert (=> b!499495 (= lt!226578 e!292697)))

(declare-fun c!59237 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!499495 (= c!59237 (= (select (arr!15492 a!3235) (index!18048 lt!226579)) (select (arr!15492 a!3235) j!176)))))

(assert (=> b!499495 (and (bvslt (x!47118 lt!226579) #b01111111111111111111111111111110) (or (= (select (arr!15492 a!3235) (index!18048 lt!226579)) (select (arr!15492 a!3235) j!176)) (= (select (arr!15492 a!3235) (index!18048 lt!226579)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15492 a!3235) (index!18048 lt!226579)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!499496 () Bool)

(declare-fun res!301568 () Bool)

(assert (=> b!499496 (=> (not res!301568) (not e!292695))))

(assert (=> b!499496 (= res!301568 (and (= (size!15856 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15856 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15856 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!499497 () Bool)

(declare-fun res!301569 () Bool)

(assert (=> b!499497 (=> (not res!301569) (not e!292695))))

(assert (=> b!499497 (= res!301569 (validKeyInArray!0 (select (arr!15492 a!3235) j!176)))))

(declare-fun b!499498 () Bool)

(declare-fun res!301576 () Bool)

(assert (=> b!499498 (=> (not res!301576) (not e!292695))))

(declare-fun arrayContainsKey!0 (array!32227 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!499498 (= res!301576 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!499499 () Bool)

(assert (=> b!499499 (= e!292693 true)))

(declare-fun lt!226575 () (_ BitVec 64))

(declare-fun lt!226573 () array!32227)

(declare-fun lt!226576 () SeekEntryResult!3966)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32227 (_ BitVec 32)) SeekEntryResult!3966)

(assert (=> b!499499 (= lt!226576 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226571 lt!226575 lt!226573 mask!3524))))

(declare-fun b!499500 () Bool)

(declare-fun Unit!14957 () Unit!14954)

(assert (=> b!499500 (= e!292697 Unit!14957)))

(declare-fun lt!226572 () Unit!14954)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32227 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14954)

(assert (=> b!499500 (= lt!226572 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!226571 #b00000000000000000000000000000000 (index!18048 lt!226579) (x!47118 lt!226579) mask!3524))))

(declare-fun res!301570 () Bool)

(assert (=> b!499500 (= res!301570 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226571 lt!226575 lt!226573 mask!3524) (Intermediate!3966 false (index!18048 lt!226579) (x!47118 lt!226579))))))

(assert (=> b!499500 (=> (not res!301570) (not e!292698))))

(assert (=> b!499500 e!292698))

(declare-fun b!499494 () Bool)

(declare-fun res!301579 () Bool)

(assert (=> b!499494 (=> (not res!301579) (not e!292692))))

(declare-datatypes ((List!9703 0))(
  ( (Nil!9700) (Cons!9699 (h!10573 (_ BitVec 64)) (t!15939 List!9703)) )
))
(declare-fun arrayNoDuplicates!0 (array!32227 (_ BitVec 32) List!9703) Bool)

(assert (=> b!499494 (= res!301579 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9700))))

(declare-fun res!301573 () Bool)

(assert (=> start!45442 (=> (not res!301573) (not e!292695))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45442 (= res!301573 (validMask!0 mask!3524))))

(assert (=> start!45442 e!292695))

(assert (=> start!45442 true))

(declare-fun array_inv!11266 (array!32227) Bool)

(assert (=> start!45442 (array_inv!11266 a!3235)))

(declare-fun b!499501 () Bool)

(assert (=> b!499501 (= e!292692 (not e!292699))))

(declare-fun res!301577 () Bool)

(assert (=> b!499501 (=> res!301577 e!292699)))

(declare-fun lt!226577 () (_ BitVec 32))

(assert (=> b!499501 (= res!301577 (= lt!226579 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226577 lt!226575 lt!226573 mask!3524)))))

(assert (=> b!499501 (= lt!226579 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226571 (select (arr!15492 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!499501 (= lt!226577 (toIndex!0 lt!226575 mask!3524))))

(assert (=> b!499501 (= lt!226575 (select (store (arr!15492 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!499501 (= lt!226571 (toIndex!0 (select (arr!15492 a!3235) j!176) mask!3524))))

(assert (=> b!499501 (= lt!226573 (array!32228 (store (arr!15492 a!3235) i!1204 k!2280) (size!15856 a!3235)))))

(declare-fun e!292694 () Bool)

(assert (=> b!499501 e!292694))

(declare-fun res!301578 () Bool)

(assert (=> b!499501 (=> (not res!301578) (not e!292694))))

(assert (=> b!499501 (= res!301578 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226574 () Unit!14954)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32227 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14954)

(assert (=> b!499501 (= lt!226574 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!499502 () Bool)

(assert (=> b!499502 (= e!292694 (= (seekEntryOrOpen!0 (select (arr!15492 a!3235) j!176) a!3235 mask!3524) (Found!3966 j!176)))))

(assert (= (and start!45442 res!301573) b!499496))

(assert (= (and b!499496 res!301568) b!499497))

(assert (= (and b!499497 res!301569) b!499490))

(assert (= (and b!499490 res!301575) b!499498))

(assert (= (and b!499498 res!301576) b!499493))

(assert (= (and b!499493 res!301580) b!499488))

(assert (= (and b!499488 res!301572) b!499494))

(assert (= (and b!499494 res!301579) b!499501))

(assert (= (and b!499501 res!301578) b!499502))

(assert (= (and b!499501 (not res!301577)) b!499489))

(assert (= (and b!499489 (not res!301574)) b!499495))

(assert (= (and b!499495 c!59237) b!499500))

(assert (= (and b!499495 (not c!59237)) b!499492))

(assert (= (and b!499500 res!301570) b!499491))

(assert (= (and b!499495 (not res!301571)) b!499499))

(declare-fun m!480709 () Bool)

(assert (=> b!499497 m!480709))

(assert (=> b!499497 m!480709))

(declare-fun m!480711 () Bool)

(assert (=> b!499497 m!480711))

(declare-fun m!480713 () Bool)

(assert (=> b!499499 m!480713))

(declare-fun m!480715 () Bool)

(assert (=> start!45442 m!480715))

(declare-fun m!480717 () Bool)

(assert (=> start!45442 m!480717))

(declare-fun m!480719 () Bool)

(assert (=> b!499495 m!480719))

(assert (=> b!499495 m!480709))

(declare-fun m!480721 () Bool)

(assert (=> b!499501 m!480721))

(declare-fun m!480723 () Bool)

(assert (=> b!499501 m!480723))

(declare-fun m!480725 () Bool)

(assert (=> b!499501 m!480725))

(declare-fun m!480727 () Bool)

(assert (=> b!499501 m!480727))

(assert (=> b!499501 m!480709))

(declare-fun m!480729 () Bool)

(assert (=> b!499501 m!480729))

(assert (=> b!499501 m!480709))

(declare-fun m!480731 () Bool)

(assert (=> b!499501 m!480731))

(declare-fun m!480733 () Bool)

(assert (=> b!499501 m!480733))

(assert (=> b!499501 m!480709))

(declare-fun m!480735 () Bool)

(assert (=> b!499501 m!480735))

(declare-fun m!480737 () Bool)

(assert (=> b!499488 m!480737))

(declare-fun m!480739 () Bool)

(assert (=> b!499494 m!480739))

(declare-fun m!480741 () Bool)

(assert (=> b!499498 m!480741))

(declare-fun m!480743 () Bool)

(assert (=> b!499490 m!480743))

(declare-fun m!480745 () Bool)

(assert (=> b!499493 m!480745))

(declare-fun m!480747 () Bool)

(assert (=> b!499500 m!480747))

(assert (=> b!499500 m!480713))

(assert (=> b!499502 m!480709))

(assert (=> b!499502 m!480709))

(declare-fun m!480749 () Bool)

(assert (=> b!499502 m!480749))

(push 1)

