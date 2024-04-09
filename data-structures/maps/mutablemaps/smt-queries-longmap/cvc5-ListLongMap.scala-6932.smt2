; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87304 () Bool)

(assert start!87304)

(declare-fun b!1011468 () Bool)

(declare-fun res!679519 () Bool)

(declare-fun e!569069 () Bool)

(assert (=> b!1011468 (=> (not res!679519) (not e!569069))))

(declare-datatypes ((array!63652 0))(
  ( (array!63653 (arr!30637 (Array (_ BitVec 32) (_ BitVec 64))) (size!31140 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63652)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63652 (_ BitVec 32)) Bool)

(assert (=> b!1011468 (= res!679519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1011469 () Bool)

(declare-fun e!569073 () Bool)

(assert (=> b!1011469 (= e!569073 e!569069)))

(declare-fun res!679530 () Bool)

(assert (=> b!1011469 (=> (not res!679530) (not e!569069))))

(declare-datatypes ((SeekEntryResult!9569 0))(
  ( (MissingZero!9569 (index!40646 (_ BitVec 32))) (Found!9569 (index!40647 (_ BitVec 32))) (Intermediate!9569 (undefined!10381 Bool) (index!40648 (_ BitVec 32)) (x!88098 (_ BitVec 32))) (Undefined!9569) (MissingVacant!9569 (index!40649 (_ BitVec 32))) )
))
(declare-fun lt!447030 () SeekEntryResult!9569)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1011469 (= res!679530 (or (= lt!447030 (MissingVacant!9569 i!1194)) (= lt!447030 (MissingZero!9569 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63652 (_ BitVec 32)) SeekEntryResult!9569)

(assert (=> b!1011469 (= lt!447030 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1011470 () Bool)

(declare-fun res!679525 () Bool)

(assert (=> b!1011470 (=> (not res!679525) (not e!569073))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1011470 (= res!679525 (validKeyInArray!0 k!2224))))

(declare-fun res!679524 () Bool)

(assert (=> start!87304 (=> (not res!679524) (not e!569073))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87304 (= res!679524 (validMask!0 mask!3464))))

(assert (=> start!87304 e!569073))

(declare-fun array_inv!23627 (array!63652) Bool)

(assert (=> start!87304 (array_inv!23627 a!3219)))

(assert (=> start!87304 true))

(declare-fun b!1011471 () Bool)

(declare-fun res!679532 () Bool)

(declare-fun e!569072 () Bool)

(assert (=> b!1011471 (=> (not res!679532) (not e!569072))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1011471 (= res!679532 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1011472 () Bool)

(declare-fun e!569071 () Bool)

(declare-fun e!569068 () Bool)

(assert (=> b!1011472 (= e!569071 e!569068)))

(declare-fun res!679529 () Bool)

(assert (=> b!1011472 (=> (not res!679529) (not e!569068))))

(declare-fun lt!447029 () SeekEntryResult!9569)

(declare-fun lt!447031 () SeekEntryResult!9569)

(assert (=> b!1011472 (= res!679529 (= lt!447029 lt!447031))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun lt!447028 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63652 (_ BitVec 32)) SeekEntryResult!9569)

(assert (=> b!1011472 (= lt!447029 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!447028 (select (arr!30637 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011473 () Bool)

(declare-fun e!569070 () Bool)

(assert (=> b!1011473 (= e!569070 e!569072)))

(declare-fun res!679522 () Bool)

(assert (=> b!1011473 (=> (not res!679522) (not e!569072))))

(declare-fun lt!447026 () SeekEntryResult!9569)

(declare-fun lt!447032 () (_ BitVec 64))

(declare-fun lt!447027 () array!63652)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1011473 (= res!679522 (not (= lt!447026 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!447032 mask!3464) lt!447032 lt!447027 mask!3464))))))

(assert (=> b!1011473 (= lt!447032 (select (store (arr!30637 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1011473 (= lt!447027 (array!63653 (store (arr!30637 a!3219) i!1194 k!2224) (size!31140 a!3219)))))

(declare-fun b!1011474 () Bool)

(declare-fun res!679527 () Bool)

(assert (=> b!1011474 (=> (not res!679527) (not e!569073))))

(assert (=> b!1011474 (= res!679527 (and (= (size!31140 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31140 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31140 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1011475 () Bool)

(declare-fun res!679534 () Bool)

(assert (=> b!1011475 (=> (not res!679534) (not e!569073))))

(declare-fun arrayContainsKey!0 (array!63652 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1011475 (= res!679534 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1011476 () Bool)

(assert (=> b!1011476 (= e!569072 e!569071)))

(declare-fun res!679528 () Bool)

(assert (=> b!1011476 (=> (not res!679528) (not e!569071))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1011476 (= res!679528 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!447028 #b00000000000000000000000000000000) (bvslt lt!447028 (size!31140 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1011476 (= lt!447028 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1011477 () Bool)

(declare-fun res!679523 () Bool)

(assert (=> b!1011477 (=> (not res!679523) (not e!569068))))

(assert (=> b!1011477 (= res!679523 (not (= lt!447029 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!447028 lt!447032 lt!447027 mask!3464))))))

(declare-fun b!1011478 () Bool)

(declare-fun e!569075 () Bool)

(assert (=> b!1011478 (= e!569069 e!569075)))

(declare-fun res!679531 () Bool)

(assert (=> b!1011478 (=> (not res!679531) (not e!569075))))

(assert (=> b!1011478 (= res!679531 (= lt!447026 lt!447031))))

(assert (=> b!1011478 (= lt!447031 (Intermediate!9569 false resIndex!38 resX!38))))

(assert (=> b!1011478 (= lt!447026 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30637 a!3219) j!170) mask!3464) (select (arr!30637 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011479 () Bool)

(declare-fun res!679521 () Bool)

(assert (=> b!1011479 (=> (not res!679521) (not e!569072))))

(declare-fun lt!447033 () SeekEntryResult!9569)

(assert (=> b!1011479 (= res!679521 (not (= lt!447033 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!447032 lt!447027 mask!3464))))))

(declare-fun b!1011480 () Bool)

(assert (=> b!1011480 (= e!569068 (bvsge (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!1245)) (bvsub #b01111111111111111111111111111110 x!1245)))))

(declare-fun b!1011481 () Bool)

(declare-fun res!679533 () Bool)

(assert (=> b!1011481 (=> (not res!679533) (not e!569073))))

(assert (=> b!1011481 (= res!679533 (validKeyInArray!0 (select (arr!30637 a!3219) j!170)))))

(declare-fun b!1011482 () Bool)

(declare-fun res!679526 () Bool)

(assert (=> b!1011482 (=> (not res!679526) (not e!569069))))

(assert (=> b!1011482 (= res!679526 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31140 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31140 a!3219))))))

(declare-fun b!1011483 () Bool)

(declare-fun res!679520 () Bool)

(assert (=> b!1011483 (=> (not res!679520) (not e!569069))))

(declare-datatypes ((List!21439 0))(
  ( (Nil!21436) (Cons!21435 (h!22633 (_ BitVec 64)) (t!30448 List!21439)) )
))
(declare-fun arrayNoDuplicates!0 (array!63652 (_ BitVec 32) List!21439) Bool)

(assert (=> b!1011483 (= res!679520 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21436))))

(declare-fun b!1011484 () Bool)

(assert (=> b!1011484 (= e!569075 e!569070)))

(declare-fun res!679518 () Bool)

(assert (=> b!1011484 (=> (not res!679518) (not e!569070))))

(assert (=> b!1011484 (= res!679518 (= lt!447033 lt!447031))))

(assert (=> b!1011484 (= lt!447033 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30637 a!3219) j!170) a!3219 mask!3464))))

(assert (= (and start!87304 res!679524) b!1011474))

(assert (= (and b!1011474 res!679527) b!1011481))

(assert (= (and b!1011481 res!679533) b!1011470))

(assert (= (and b!1011470 res!679525) b!1011475))

(assert (= (and b!1011475 res!679534) b!1011469))

(assert (= (and b!1011469 res!679530) b!1011468))

(assert (= (and b!1011468 res!679519) b!1011483))

(assert (= (and b!1011483 res!679520) b!1011482))

(assert (= (and b!1011482 res!679526) b!1011478))

(assert (= (and b!1011478 res!679531) b!1011484))

(assert (= (and b!1011484 res!679518) b!1011473))

(assert (= (and b!1011473 res!679522) b!1011479))

(assert (= (and b!1011479 res!679521) b!1011471))

(assert (= (and b!1011471 res!679532) b!1011476))

(assert (= (and b!1011476 res!679528) b!1011472))

(assert (= (and b!1011472 res!679529) b!1011477))

(assert (= (and b!1011477 res!679523) b!1011480))

(declare-fun m!935577 () Bool)

(assert (=> b!1011476 m!935577))

(declare-fun m!935579 () Bool)

(assert (=> b!1011472 m!935579))

(assert (=> b!1011472 m!935579))

(declare-fun m!935581 () Bool)

(assert (=> b!1011472 m!935581))

(declare-fun m!935583 () Bool)

(assert (=> b!1011470 m!935583))

(declare-fun m!935585 () Bool)

(assert (=> b!1011473 m!935585))

(assert (=> b!1011473 m!935585))

(declare-fun m!935587 () Bool)

(assert (=> b!1011473 m!935587))

(declare-fun m!935589 () Bool)

(assert (=> b!1011473 m!935589))

(declare-fun m!935591 () Bool)

(assert (=> b!1011473 m!935591))

(assert (=> b!1011478 m!935579))

(assert (=> b!1011478 m!935579))

(declare-fun m!935593 () Bool)

(assert (=> b!1011478 m!935593))

(assert (=> b!1011478 m!935593))

(assert (=> b!1011478 m!935579))

(declare-fun m!935595 () Bool)

(assert (=> b!1011478 m!935595))

(assert (=> b!1011484 m!935579))

(assert (=> b!1011484 m!935579))

(declare-fun m!935597 () Bool)

(assert (=> b!1011484 m!935597))

(declare-fun m!935599 () Bool)

(assert (=> b!1011468 m!935599))

(assert (=> b!1011481 m!935579))

(assert (=> b!1011481 m!935579))

(declare-fun m!935601 () Bool)

(assert (=> b!1011481 m!935601))

(declare-fun m!935603 () Bool)

(assert (=> b!1011479 m!935603))

(declare-fun m!935605 () Bool)

(assert (=> b!1011483 m!935605))

(declare-fun m!935607 () Bool)

(assert (=> b!1011469 m!935607))

(declare-fun m!935609 () Bool)

(assert (=> b!1011475 m!935609))

(declare-fun m!935611 () Bool)

(assert (=> start!87304 m!935611))

(declare-fun m!935613 () Bool)

(assert (=> start!87304 m!935613))

(declare-fun m!935615 () Bool)

(assert (=> b!1011477 m!935615))

(push 1)

(assert (not b!1011483))

(assert (not b!1011472))

(assert (not b!1011470))

(assert (not b!1011477))

(assert (not b!1011476))

(assert (not b!1011481))

(assert (not b!1011469))

(assert (not b!1011468))

(assert (not b!1011484))

(assert (not b!1011479))

(assert (not b!1011478))

(assert (not b!1011475))

(assert (not b!1011473))

(assert (not start!87304))

(check-sat)

(pop 1)

(push 1)

(check-sat)

