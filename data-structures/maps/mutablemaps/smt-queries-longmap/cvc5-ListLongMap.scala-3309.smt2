; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45808 () Bool)

(assert start!45808)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32524 0))(
  ( (array!32525 (arr!15639 (Array (_ BitVec 32) (_ BitVec 64))) (size!16003 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32524)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!296592 () Bool)

(declare-fun b!506755 () Bool)

(declare-datatypes ((SeekEntryResult!4113 0))(
  ( (MissingZero!4113 (index!18640 (_ BitVec 32))) (Found!4113 (index!18641 (_ BitVec 32))) (Intermediate!4113 (undefined!4925 Bool) (index!18642 (_ BitVec 32)) (x!47669 (_ BitVec 32))) (Undefined!4113) (MissingVacant!4113 (index!18643 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32524 (_ BitVec 32)) SeekEntryResult!4113)

(assert (=> b!506755 (= e!296592 (= (seekEntryOrOpen!0 (select (arr!15639 a!3235) j!176) a!3235 mask!3524) (Found!4113 j!176)))))

(declare-fun b!506756 () Bool)

(declare-fun res!307865 () Bool)

(declare-fun e!296593 () Bool)

(assert (=> b!506756 (=> (not res!307865) (not e!296593))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!506756 (= res!307865 (and (= (size!16003 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16003 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16003 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506757 () Bool)

(declare-fun res!307871 () Bool)

(assert (=> b!506757 (=> (not res!307871) (not e!296593))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506757 (= res!307871 (validKeyInArray!0 k!2280))))

(declare-fun b!506758 () Bool)

(declare-fun e!296589 () Bool)

(declare-fun e!296591 () Bool)

(assert (=> b!506758 (= e!296589 e!296591)))

(declare-fun res!307870 () Bool)

(assert (=> b!506758 (=> res!307870 e!296591)))

(declare-fun lt!231338 () Bool)

(declare-fun lt!231333 () SeekEntryResult!4113)

(assert (=> b!506758 (= res!307870 (or (and (not lt!231338) (undefined!4925 lt!231333)) (and (not lt!231338) (not (undefined!4925 lt!231333)))))))

(assert (=> b!506758 (= lt!231338 (not (is-Intermediate!4113 lt!231333)))))

(declare-fun b!506759 () Bool)

(declare-fun res!307873 () Bool)

(assert (=> b!506759 (=> (not res!307873) (not e!296593))))

(declare-fun arrayContainsKey!0 (array!32524 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506759 (= res!307873 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506760 () Bool)

(declare-fun e!296588 () Bool)

(assert (=> b!506760 (= e!296588 (not e!296589))))

(declare-fun res!307867 () Bool)

(assert (=> b!506760 (=> res!307867 e!296589)))

(declare-fun lt!231334 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32524 (_ BitVec 32)) SeekEntryResult!4113)

(assert (=> b!506760 (= res!307867 (= lt!231333 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231334 (select (store (arr!15639 a!3235) i!1204 k!2280) j!176) (array!32525 (store (arr!15639 a!3235) i!1204 k!2280) (size!16003 a!3235)) mask!3524)))))

(declare-fun lt!231337 () (_ BitVec 32))

(assert (=> b!506760 (= lt!231333 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231337 (select (arr!15639 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506760 (= lt!231334 (toIndex!0 (select (store (arr!15639 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!506760 (= lt!231337 (toIndex!0 (select (arr!15639 a!3235) j!176) mask!3524))))

(assert (=> b!506760 e!296592))

(declare-fun res!307868 () Bool)

(assert (=> b!506760 (=> (not res!307868) (not e!296592))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32524 (_ BitVec 32)) Bool)

(assert (=> b!506760 (= res!307868 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15506 0))(
  ( (Unit!15507) )
))
(declare-fun lt!231336 () Unit!15506)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32524 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15506)

(assert (=> b!506760 (= lt!231336 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506761 () Bool)

(declare-fun res!307864 () Bool)

(assert (=> b!506761 (=> (not res!307864) (not e!296588))))

(declare-datatypes ((List!9850 0))(
  ( (Nil!9847) (Cons!9846 (h!10723 (_ BitVec 64)) (t!16086 List!9850)) )
))
(declare-fun arrayNoDuplicates!0 (array!32524 (_ BitVec 32) List!9850) Bool)

(assert (=> b!506761 (= res!307864 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9847))))

(declare-fun b!506762 () Bool)

(declare-fun res!307869 () Bool)

(assert (=> b!506762 (=> (not res!307869) (not e!296593))))

(assert (=> b!506762 (= res!307869 (validKeyInArray!0 (select (arr!15639 a!3235) j!176)))))

(declare-fun res!307872 () Bool)

(assert (=> start!45808 (=> (not res!307872) (not e!296593))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45808 (= res!307872 (validMask!0 mask!3524))))

(assert (=> start!45808 e!296593))

(assert (=> start!45808 true))

(declare-fun array_inv!11413 (array!32524) Bool)

(assert (=> start!45808 (array_inv!11413 a!3235)))

(declare-fun b!506763 () Bool)

(declare-fun res!307866 () Bool)

(assert (=> b!506763 (=> (not res!307866) (not e!296588))))

(assert (=> b!506763 (= res!307866 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!506764 () Bool)

(assert (=> b!506764 (= e!296593 e!296588)))

(declare-fun res!307874 () Bool)

(assert (=> b!506764 (=> (not res!307874) (not e!296588))))

(declare-fun lt!231335 () SeekEntryResult!4113)

(assert (=> b!506764 (= res!307874 (or (= lt!231335 (MissingZero!4113 i!1204)) (= lt!231335 (MissingVacant!4113 i!1204))))))

(assert (=> b!506764 (= lt!231335 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!506765 () Bool)

(assert (=> b!506765 (= e!296591 true)))

(assert (=> b!506765 false))

(assert (= (and start!45808 res!307872) b!506756))

(assert (= (and b!506756 res!307865) b!506762))

(assert (= (and b!506762 res!307869) b!506757))

(assert (= (and b!506757 res!307871) b!506759))

(assert (= (and b!506759 res!307873) b!506764))

(assert (= (and b!506764 res!307874) b!506763))

(assert (= (and b!506763 res!307866) b!506761))

(assert (= (and b!506761 res!307864) b!506760))

(assert (= (and b!506760 res!307868) b!506755))

(assert (= (and b!506760 (not res!307867)) b!506758))

(assert (= (and b!506758 (not res!307870)) b!506765))

(declare-fun m!487501 () Bool)

(assert (=> b!506759 m!487501))

(declare-fun m!487503 () Bool)

(assert (=> b!506763 m!487503))

(declare-fun m!487505 () Bool)

(assert (=> b!506760 m!487505))

(declare-fun m!487507 () Bool)

(assert (=> b!506760 m!487507))

(declare-fun m!487509 () Bool)

(assert (=> b!506760 m!487509))

(declare-fun m!487511 () Bool)

(assert (=> b!506760 m!487511))

(assert (=> b!506760 m!487509))

(declare-fun m!487513 () Bool)

(assert (=> b!506760 m!487513))

(assert (=> b!506760 m!487509))

(declare-fun m!487515 () Bool)

(assert (=> b!506760 m!487515))

(assert (=> b!506760 m!487507))

(declare-fun m!487517 () Bool)

(assert (=> b!506760 m!487517))

(declare-fun m!487519 () Bool)

(assert (=> b!506760 m!487519))

(assert (=> b!506760 m!487507))

(declare-fun m!487521 () Bool)

(assert (=> b!506760 m!487521))

(assert (=> b!506762 m!487509))

(assert (=> b!506762 m!487509))

(declare-fun m!487523 () Bool)

(assert (=> b!506762 m!487523))

(declare-fun m!487525 () Bool)

(assert (=> b!506764 m!487525))

(declare-fun m!487527 () Bool)

(assert (=> b!506761 m!487527))

(assert (=> b!506755 m!487509))

(assert (=> b!506755 m!487509))

(declare-fun m!487529 () Bool)

(assert (=> b!506755 m!487529))

(declare-fun m!487531 () Bool)

(assert (=> start!45808 m!487531))

(declare-fun m!487533 () Bool)

(assert (=> start!45808 m!487533))

(declare-fun m!487535 () Bool)

(assert (=> b!506757 m!487535))

(push 1)

