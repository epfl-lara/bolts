; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45632 () Bool)

(assert start!45632)

(declare-fun b!502594 () Bool)

(declare-fun res!304129 () Bool)

(declare-fun e!294371 () Bool)

(assert (=> b!502594 (=> (not res!304129) (not e!294371))))

(declare-datatypes ((array!32348 0))(
  ( (array!32349 (arr!15551 (Array (_ BitVec 32) (_ BitVec 64))) (size!15915 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32348)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!502594 (= res!304129 (validKeyInArray!0 (select (arr!15551 a!3235) j!176)))))

(declare-fun b!502595 () Bool)

(declare-fun e!294377 () Bool)

(declare-fun e!294376 () Bool)

(assert (=> b!502595 (= e!294377 e!294376)))

(declare-fun res!304131 () Bool)

(assert (=> b!502595 (=> res!304131 e!294376)))

(declare-fun lt!228570 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4025 0))(
  ( (MissingZero!4025 (index!18288 (_ BitVec 32))) (Found!4025 (index!18289 (_ BitVec 32))) (Intermediate!4025 (undefined!4837 Bool) (index!18290 (_ BitVec 32)) (x!47341 (_ BitVec 32))) (Undefined!4025) (MissingVacant!4025 (index!18291 (_ BitVec 32))) )
))
(declare-fun lt!228572 () SeekEntryResult!4025)

(assert (=> b!502595 (= res!304131 (or (bvsgt (x!47341 lt!228572) #b01111111111111111111111111111110) (bvslt lt!228570 #b00000000000000000000000000000000) (bvsge lt!228570 (size!15915 a!3235)) (bvslt (index!18290 lt!228572) #b00000000000000000000000000000000) (bvsge (index!18290 lt!228572) (size!15915 a!3235)) (not (= lt!228572 (Intermediate!4025 false (index!18290 lt!228572) (x!47341 lt!228572))))))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!502595 (= (index!18290 lt!228572) i!1204)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((Unit!15190 0))(
  ( (Unit!15191) )
))
(declare-fun lt!228571 () Unit!15190)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32348 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15190)

(assert (=> b!502595 (= lt!228571 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!228570 #b00000000000000000000000000000000 (index!18290 lt!228572) (x!47341 lt!228572) mask!3524))))

(assert (=> b!502595 (and (or (= (select (arr!15551 a!3235) (index!18290 lt!228572)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15551 a!3235) (index!18290 lt!228572)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15551 a!3235) (index!18290 lt!228572)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15551 a!3235) (index!18290 lt!228572)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228567 () Unit!15190)

(declare-fun e!294372 () Unit!15190)

(assert (=> b!502595 (= lt!228567 e!294372)))

(declare-fun c!59516 () Bool)

(assert (=> b!502595 (= c!59516 (= (select (arr!15551 a!3235) (index!18290 lt!228572)) (select (arr!15551 a!3235) j!176)))))

(assert (=> b!502595 (and (bvslt (x!47341 lt!228572) #b01111111111111111111111111111110) (or (= (select (arr!15551 a!3235) (index!18290 lt!228572)) (select (arr!15551 a!3235) j!176)) (= (select (arr!15551 a!3235) (index!18290 lt!228572)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15551 a!3235) (index!18290 lt!228572)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!502597 () Bool)

(declare-fun res!304132 () Bool)

(declare-fun e!294374 () Bool)

(assert (=> b!502597 (=> (not res!304132) (not e!294374))))

(declare-datatypes ((List!9762 0))(
  ( (Nil!9759) (Cons!9758 (h!10635 (_ BitVec 64)) (t!15998 List!9762)) )
))
(declare-fun arrayNoDuplicates!0 (array!32348 (_ BitVec 32) List!9762) Bool)

(assert (=> b!502597 (= res!304132 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9759))))

(declare-fun b!502598 () Bool)

(declare-fun res!304133 () Bool)

(assert (=> b!502598 (=> (not res!304133) (not e!294371))))

(declare-fun arrayContainsKey!0 (array!32348 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!502598 (= res!304133 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!502599 () Bool)

(declare-fun Unit!15192 () Unit!15190)

(assert (=> b!502599 (= e!294372 Unit!15192)))

(declare-fun b!502600 () Bool)

(declare-fun Unit!15193 () Unit!15190)

(assert (=> b!502600 (= e!294372 Unit!15193)))

(declare-fun lt!228569 () Unit!15190)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32348 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15190)

(assert (=> b!502600 (= lt!228569 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!228570 #b00000000000000000000000000000000 (index!18290 lt!228572) (x!47341 lt!228572) mask!3524))))

(declare-fun lt!228573 () array!32348)

(declare-fun lt!228566 () (_ BitVec 64))

(declare-fun res!304122 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32348 (_ BitVec 32)) SeekEntryResult!4025)

(assert (=> b!502600 (= res!304122 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228570 lt!228566 lt!228573 mask!3524) (Intermediate!4025 false (index!18290 lt!228572) (x!47341 lt!228572))))))

(declare-fun e!294375 () Bool)

(assert (=> b!502600 (=> (not res!304122) (not e!294375))))

(assert (=> b!502600 e!294375))

(declare-fun e!294379 () Bool)

(declare-fun b!502601 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32348 (_ BitVec 32)) SeekEntryResult!4025)

(assert (=> b!502601 (= e!294379 (= (seekEntryOrOpen!0 (select (arr!15551 a!3235) j!176) a!3235 mask!3524) (Found!4025 j!176)))))

(declare-fun b!502602 () Bool)

(declare-fun res!304124 () Bool)

(assert (=> b!502602 (=> res!304124 e!294376)))

(declare-fun e!294378 () Bool)

(assert (=> b!502602 (= res!304124 e!294378)))

(declare-fun res!304120 () Bool)

(assert (=> b!502602 (=> (not res!304120) (not e!294378))))

(assert (=> b!502602 (= res!304120 (bvsgt #b00000000000000000000000000000000 (x!47341 lt!228572)))))

(declare-fun b!502603 () Bool)

(declare-fun res!304125 () Bool)

(assert (=> b!502603 (=> (not res!304125) (not e!294371))))

(assert (=> b!502603 (= res!304125 (validKeyInArray!0 k!2280))))

(declare-fun b!502604 () Bool)

(assert (=> b!502604 (= e!294371 e!294374)))

(declare-fun res!304130 () Bool)

(assert (=> b!502604 (=> (not res!304130) (not e!294374))))

(declare-fun lt!228565 () SeekEntryResult!4025)

(assert (=> b!502604 (= res!304130 (or (= lt!228565 (MissingZero!4025 i!1204)) (= lt!228565 (MissingVacant!4025 i!1204))))))

(assert (=> b!502604 (= lt!228565 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!502605 () Bool)

(declare-fun res!304123 () Bool)

(assert (=> b!502605 (=> res!304123 e!294377)))

(assert (=> b!502605 (= res!304123 (or (undefined!4837 lt!228572) (not (is-Intermediate!4025 lt!228572))))))

(declare-fun b!502606 () Bool)

(assert (=> b!502606 (= e!294374 (not e!294377))))

(declare-fun res!304128 () Bool)

(assert (=> b!502606 (=> res!304128 e!294377)))

(declare-fun lt!228575 () (_ BitVec 32))

(assert (=> b!502606 (= res!304128 (= lt!228572 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228575 lt!228566 lt!228573 mask!3524)))))

(assert (=> b!502606 (= lt!228572 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228570 (select (arr!15551 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!502606 (= lt!228575 (toIndex!0 lt!228566 mask!3524))))

(assert (=> b!502606 (= lt!228566 (select (store (arr!15551 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!502606 (= lt!228570 (toIndex!0 (select (arr!15551 a!3235) j!176) mask!3524))))

(assert (=> b!502606 (= lt!228573 (array!32349 (store (arr!15551 a!3235) i!1204 k!2280) (size!15915 a!3235)))))

(assert (=> b!502606 e!294379))

(declare-fun res!304119 () Bool)

(assert (=> b!502606 (=> (not res!304119) (not e!294379))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32348 (_ BitVec 32)) Bool)

(assert (=> b!502606 (= res!304119 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!228574 () Unit!15190)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32348 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15190)

(assert (=> b!502606 (= lt!228574 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!502596 () Bool)

(assert (=> b!502596 (= e!294376 true)))

(declare-fun lt!228568 () SeekEntryResult!4025)

(assert (=> b!502596 (= lt!228568 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228570 lt!228566 lt!228573 mask!3524))))

(declare-fun res!304126 () Bool)

(assert (=> start!45632 (=> (not res!304126) (not e!294371))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45632 (= res!304126 (validMask!0 mask!3524))))

(assert (=> start!45632 e!294371))

(assert (=> start!45632 true))

(declare-fun array_inv!11325 (array!32348) Bool)

(assert (=> start!45632 (array_inv!11325 a!3235)))

(declare-fun b!502607 () Bool)

(assert (=> b!502607 (= e!294375 false)))

(declare-fun b!502608 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32348 (_ BitVec 32)) SeekEntryResult!4025)

(assert (=> b!502608 (= e!294378 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228570 (index!18290 lt!228572) (select (arr!15551 a!3235) j!176) a!3235 mask!3524) (Found!4025 j!176))))))

(declare-fun b!502609 () Bool)

(declare-fun res!304121 () Bool)

(assert (=> b!502609 (=> (not res!304121) (not e!294371))))

(assert (=> b!502609 (= res!304121 (and (= (size!15915 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15915 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15915 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!502610 () Bool)

(declare-fun res!304127 () Bool)

(assert (=> b!502610 (=> (not res!304127) (not e!294374))))

(assert (=> b!502610 (= res!304127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45632 res!304126) b!502609))

(assert (= (and b!502609 res!304121) b!502594))

(assert (= (and b!502594 res!304129) b!502603))

(assert (= (and b!502603 res!304125) b!502598))

(assert (= (and b!502598 res!304133) b!502604))

(assert (= (and b!502604 res!304130) b!502610))

(assert (= (and b!502610 res!304127) b!502597))

(assert (= (and b!502597 res!304132) b!502606))

(assert (= (and b!502606 res!304119) b!502601))

(assert (= (and b!502606 (not res!304128)) b!502605))

(assert (= (and b!502605 (not res!304123)) b!502595))

(assert (= (and b!502595 c!59516) b!502600))

(assert (= (and b!502595 (not c!59516)) b!502599))

(assert (= (and b!502600 res!304122) b!502607))

(assert (= (and b!502595 (not res!304131)) b!502602))

(assert (= (and b!502602 res!304120) b!502608))

(assert (= (and b!502602 (not res!304124)) b!502596))

(declare-fun m!483531 () Bool)

(assert (=> b!502595 m!483531))

(declare-fun m!483533 () Bool)

(assert (=> b!502595 m!483533))

(declare-fun m!483535 () Bool)

(assert (=> b!502595 m!483535))

(assert (=> b!502594 m!483535))

(assert (=> b!502594 m!483535))

(declare-fun m!483537 () Bool)

(assert (=> b!502594 m!483537))

(declare-fun m!483539 () Bool)

(assert (=> b!502598 m!483539))

(declare-fun m!483541 () Bool)

(assert (=> b!502610 m!483541))

(declare-fun m!483543 () Bool)

(assert (=> b!502603 m!483543))

(declare-fun m!483545 () Bool)

(assert (=> b!502597 m!483545))

(declare-fun m!483547 () Bool)

(assert (=> b!502596 m!483547))

(declare-fun m!483549 () Bool)

(assert (=> b!502606 m!483549))

(declare-fun m!483551 () Bool)

(assert (=> b!502606 m!483551))

(declare-fun m!483553 () Bool)

(assert (=> b!502606 m!483553))

(assert (=> b!502606 m!483535))

(declare-fun m!483555 () Bool)

(assert (=> b!502606 m!483555))

(declare-fun m!483557 () Bool)

(assert (=> b!502606 m!483557))

(assert (=> b!502606 m!483535))

(declare-fun m!483559 () Bool)

(assert (=> b!502606 m!483559))

(assert (=> b!502606 m!483535))

(declare-fun m!483561 () Bool)

(assert (=> b!502606 m!483561))

(declare-fun m!483563 () Bool)

(assert (=> b!502606 m!483563))

(assert (=> b!502608 m!483535))

(assert (=> b!502608 m!483535))

(declare-fun m!483565 () Bool)

(assert (=> b!502608 m!483565))

(declare-fun m!483567 () Bool)

(assert (=> b!502604 m!483567))

(declare-fun m!483569 () Bool)

(assert (=> start!45632 m!483569))

(declare-fun m!483571 () Bool)

(assert (=> start!45632 m!483571))

(declare-fun m!483573 () Bool)

(assert (=> b!502600 m!483573))

(assert (=> b!502600 m!483547))

(assert (=> b!502601 m!483535))

(assert (=> b!502601 m!483535))

(declare-fun m!483575 () Bool)

(assert (=> b!502601 m!483575))

(push 1)

(assert (not b!502598))

(assert (not b!502594))

(assert (not b!502606))

(assert (not b!502608))

(assert (not b!502596))

(assert (not b!502601))

