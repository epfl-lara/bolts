; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87308 () Bool)

(assert start!87308)

(declare-fun b!1011570 () Bool)

(declare-fun res!679626 () Bool)

(declare-fun e!569123 () Bool)

(assert (=> b!1011570 (=> (not res!679626) (not e!569123))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1011570 (= res!679626 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1011571 () Bool)

(declare-fun res!679620 () Bool)

(declare-fun e!569119 () Bool)

(assert (=> b!1011571 (=> (not res!679620) (not e!569119))))

(declare-datatypes ((array!63656 0))(
  ( (array!63657 (arr!30639 (Array (_ BitVec 32) (_ BitVec 64))) (size!31142 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63656)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1011571 (= res!679620 (validKeyInArray!0 (select (arr!30639 a!3219) j!170)))))

(declare-fun b!1011572 () Bool)

(declare-fun e!569118 () Bool)

(declare-fun e!569121 () Bool)

(assert (=> b!1011572 (= e!569118 e!569121)))

(declare-fun res!679632 () Bool)

(assert (=> b!1011572 (=> (not res!679632) (not e!569121))))

(declare-datatypes ((SeekEntryResult!9571 0))(
  ( (MissingZero!9571 (index!40654 (_ BitVec 32))) (Found!9571 (index!40655 (_ BitVec 32))) (Intermediate!9571 (undefined!10383 Bool) (index!40656 (_ BitVec 32)) (x!88100 (_ BitVec 32))) (Undefined!9571) (MissingVacant!9571 (index!40657 (_ BitVec 32))) )
))
(declare-fun lt!447078 () SeekEntryResult!9571)

(declare-fun lt!447074 () SeekEntryResult!9571)

(assert (=> b!1011572 (= res!679632 (= lt!447078 lt!447074))))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1011572 (= lt!447074 (Intermediate!9571 false resIndex!38 resX!38))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63656 (_ BitVec 32)) SeekEntryResult!9571)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1011572 (= lt!447078 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30639 a!3219) j!170) mask!3464) (select (arr!30639 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011573 () Bool)

(declare-fun res!679624 () Bool)

(assert (=> b!1011573 (=> (not res!679624) (not e!569118))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63656 (_ BitVec 32)) Bool)

(assert (=> b!1011573 (= res!679624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1011574 () Bool)

(declare-fun e!569116 () Bool)

(assert (=> b!1011574 (= e!569121 e!569116)))

(declare-fun res!679633 () Bool)

(assert (=> b!1011574 (=> (not res!679633) (not e!569116))))

(declare-fun lt!447075 () SeekEntryResult!9571)

(assert (=> b!1011574 (= res!679633 (= lt!447075 lt!447074))))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1011574 (= lt!447075 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30639 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011575 () Bool)

(declare-fun res!679635 () Bool)

(declare-fun e!569117 () Bool)

(assert (=> b!1011575 (=> (not res!679635) (not e!569117))))

(declare-fun lt!447077 () array!63656)

(declare-fun lt!447081 () SeekEntryResult!9571)

(declare-fun lt!447079 () (_ BitVec 64))

(declare-fun lt!447080 () (_ BitVec 32))

(assert (=> b!1011575 (= res!679635 (not (= lt!447081 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!447080 lt!447079 lt!447077 mask!3464))))))

(declare-fun b!1011576 () Bool)

(declare-fun e!569120 () Bool)

(assert (=> b!1011576 (= e!569120 e!569117)))

(declare-fun res!679627 () Bool)

(assert (=> b!1011576 (=> (not res!679627) (not e!569117))))

(assert (=> b!1011576 (= res!679627 (= lt!447081 lt!447074))))

(assert (=> b!1011576 (= lt!447081 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!447080 (select (arr!30639 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011577 () Bool)

(assert (=> b!1011577 (= e!569116 e!569123)))

(declare-fun res!679634 () Bool)

(assert (=> b!1011577 (=> (not res!679634) (not e!569123))))

(assert (=> b!1011577 (= res!679634 (not (= lt!447078 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!447079 mask!3464) lt!447079 lt!447077 mask!3464))))))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1011577 (= lt!447079 (select (store (arr!30639 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1011577 (= lt!447077 (array!63657 (store (arr!30639 a!3219) i!1194 k!2224) (size!31142 a!3219)))))

(declare-fun b!1011578 () Bool)

(declare-fun res!679628 () Bool)

(assert (=> b!1011578 (=> (not res!679628) (not e!569119))))

(assert (=> b!1011578 (= res!679628 (and (= (size!31142 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31142 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31142 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1011579 () Bool)

(assert (=> b!1011579 (= e!569123 e!569120)))

(declare-fun res!679629 () Bool)

(assert (=> b!1011579 (=> (not res!679629) (not e!569120))))

(assert (=> b!1011579 (= res!679629 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!447080 #b00000000000000000000000000000000) (bvslt lt!447080 (size!31142 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1011579 (= lt!447080 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1011581 () Bool)

(declare-fun res!679621 () Bool)

(assert (=> b!1011581 (=> (not res!679621) (not e!569118))))

(declare-datatypes ((List!21441 0))(
  ( (Nil!21438) (Cons!21437 (h!22635 (_ BitVec 64)) (t!30450 List!21441)) )
))
(declare-fun arrayNoDuplicates!0 (array!63656 (_ BitVec 32) List!21441) Bool)

(assert (=> b!1011581 (= res!679621 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21438))))

(declare-fun b!1011582 () Bool)

(declare-fun res!679625 () Bool)

(assert (=> b!1011582 (=> (not res!679625) (not e!569119))))

(assert (=> b!1011582 (= res!679625 (validKeyInArray!0 k!2224))))

(declare-fun b!1011583 () Bool)

(assert (=> b!1011583 (= e!569117 (bvsge (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!1245)) (bvsub #b01111111111111111111111111111110 x!1245)))))

(declare-fun b!1011584 () Bool)

(assert (=> b!1011584 (= e!569119 e!569118)))

(declare-fun res!679630 () Bool)

(assert (=> b!1011584 (=> (not res!679630) (not e!569118))))

(declare-fun lt!447076 () SeekEntryResult!9571)

(assert (=> b!1011584 (= res!679630 (or (= lt!447076 (MissingVacant!9571 i!1194)) (= lt!447076 (MissingZero!9571 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63656 (_ BitVec 32)) SeekEntryResult!9571)

(assert (=> b!1011584 (= lt!447076 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1011585 () Bool)

(declare-fun res!679622 () Bool)

(assert (=> b!1011585 (=> (not res!679622) (not e!569118))))

(assert (=> b!1011585 (= res!679622 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31142 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31142 a!3219))))))

(declare-fun b!1011586 () Bool)

(declare-fun res!679623 () Bool)

(assert (=> b!1011586 (=> (not res!679623) (not e!569119))))

(declare-fun arrayContainsKey!0 (array!63656 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1011586 (= res!679623 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun res!679631 () Bool)

(assert (=> start!87308 (=> (not res!679631) (not e!569119))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87308 (= res!679631 (validMask!0 mask!3464))))

(assert (=> start!87308 e!569119))

(declare-fun array_inv!23629 (array!63656) Bool)

(assert (=> start!87308 (array_inv!23629 a!3219)))

(assert (=> start!87308 true))

(declare-fun b!1011580 () Bool)

(declare-fun res!679636 () Bool)

(assert (=> b!1011580 (=> (not res!679636) (not e!569123))))

(assert (=> b!1011580 (= res!679636 (not (= lt!447075 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!447079 lt!447077 mask!3464))))))

(assert (= (and start!87308 res!679631) b!1011578))

(assert (= (and b!1011578 res!679628) b!1011571))

(assert (= (and b!1011571 res!679620) b!1011582))

(assert (= (and b!1011582 res!679625) b!1011586))

(assert (= (and b!1011586 res!679623) b!1011584))

(assert (= (and b!1011584 res!679630) b!1011573))

(assert (= (and b!1011573 res!679624) b!1011581))

(assert (= (and b!1011581 res!679621) b!1011585))

(assert (= (and b!1011585 res!679622) b!1011572))

(assert (= (and b!1011572 res!679632) b!1011574))

(assert (= (and b!1011574 res!679633) b!1011577))

(assert (= (and b!1011577 res!679634) b!1011580))

(assert (= (and b!1011580 res!679636) b!1011570))

(assert (= (and b!1011570 res!679626) b!1011579))

(assert (= (and b!1011579 res!679629) b!1011576))

(assert (= (and b!1011576 res!679627) b!1011575))

(assert (= (and b!1011575 res!679635) b!1011583))

(declare-fun m!935657 () Bool)

(assert (=> b!1011574 m!935657))

(assert (=> b!1011574 m!935657))

(declare-fun m!935659 () Bool)

(assert (=> b!1011574 m!935659))

(declare-fun m!935661 () Bool)

(assert (=> b!1011584 m!935661))

(declare-fun m!935663 () Bool)

(assert (=> start!87308 m!935663))

(declare-fun m!935665 () Bool)

(assert (=> start!87308 m!935665))

(declare-fun m!935667 () Bool)

(assert (=> b!1011575 m!935667))

(declare-fun m!935669 () Bool)

(assert (=> b!1011579 m!935669))

(declare-fun m!935671 () Bool)

(assert (=> b!1011582 m!935671))

(assert (=> b!1011572 m!935657))

(assert (=> b!1011572 m!935657))

(declare-fun m!935673 () Bool)

(assert (=> b!1011572 m!935673))

(assert (=> b!1011572 m!935673))

(assert (=> b!1011572 m!935657))

(declare-fun m!935675 () Bool)

(assert (=> b!1011572 m!935675))

(assert (=> b!1011576 m!935657))

(assert (=> b!1011576 m!935657))

(declare-fun m!935677 () Bool)

(assert (=> b!1011576 m!935677))

(declare-fun m!935679 () Bool)

(assert (=> b!1011586 m!935679))

(declare-fun m!935681 () Bool)

(assert (=> b!1011573 m!935681))

(assert (=> b!1011571 m!935657))

(assert (=> b!1011571 m!935657))

(declare-fun m!935683 () Bool)

(assert (=> b!1011571 m!935683))

(declare-fun m!935685 () Bool)

(assert (=> b!1011580 m!935685))

(declare-fun m!935687 () Bool)

(assert (=> b!1011581 m!935687))

(declare-fun m!935689 () Bool)

(assert (=> b!1011577 m!935689))

(assert (=> b!1011577 m!935689))

(declare-fun m!935691 () Bool)

(assert (=> b!1011577 m!935691))

(declare-fun m!935693 () Bool)

(assert (=> b!1011577 m!935693))

(declare-fun m!935695 () Bool)

(assert (=> b!1011577 m!935695))

(push 1)

(assert (not b!1011571))

(assert (not b!1011582))

(assert (not b!1011577))

(assert (not b!1011586))

(assert (not b!1011581))

(assert (not b!1011572))

(assert (not b!1011580))

(assert (not b!1011573))

(assert (not b!1011575))

(assert (not b!1011584))

(assert (not b!1011576))

(assert (not b!1011579))

(assert (not start!87308))

(assert (not b!1011574))

(check-sat)

(pop 1)

(push 1)

(check-sat)

