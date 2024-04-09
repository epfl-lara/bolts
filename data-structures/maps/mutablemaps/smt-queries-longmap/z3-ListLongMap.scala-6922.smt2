; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86982 () Bool)

(assert start!86982)

(declare-fun b!1008603 () Bool)

(declare-fun res!677654 () Bool)

(declare-fun e!567510 () Bool)

(assert (=> b!1008603 (=> (not res!677654) (not e!567510))))

(declare-datatypes ((array!63582 0))(
  ( (array!63583 (arr!30608 (Array (_ BitVec 32) (_ BitVec 64))) (size!31111 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63582)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1008603 (= res!677654 (and (= (size!31111 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31111 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31111 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1008604 () Bool)

(declare-fun res!677664 () Bool)

(declare-fun e!567511 () Bool)

(assert (=> b!1008604 (=> (not res!677664) (not e!567511))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1008604 (= res!677664 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31111 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31111 a!3219))))))

(declare-fun b!1008605 () Bool)

(declare-fun res!677656 () Bool)

(assert (=> b!1008605 (=> (not res!677656) (not e!567511))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63582 (_ BitVec 32)) Bool)

(assert (=> b!1008605 (= res!677656 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1008606 () Bool)

(declare-fun res!677660 () Bool)

(declare-fun e!567512 () Bool)

(assert (=> b!1008606 (=> (not res!677660) (not e!567512))))

(declare-fun lt!445792 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9540 0))(
  ( (MissingZero!9540 (index!40530 (_ BitVec 32))) (Found!9540 (index!40531 (_ BitVec 32))) (Intermediate!9540 (undefined!10352 Bool) (index!40532 (_ BitVec 32)) (x!87947 (_ BitVec 32))) (Undefined!9540) (MissingVacant!9540 (index!40533 (_ BitVec 32))) )
))
(declare-fun lt!445795 () SeekEntryResult!9540)

(declare-fun lt!445793 () array!63582)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63582 (_ BitVec 32)) SeekEntryResult!9540)

(assert (=> b!1008606 (= res!677660 (not (= lt!445795 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!445792 lt!445793 mask!3464))))))

(declare-fun b!1008607 () Bool)

(declare-fun e!567509 () Bool)

(declare-fun e!567508 () Bool)

(assert (=> b!1008607 (= e!567509 e!567508)))

(declare-fun res!677662 () Bool)

(assert (=> b!1008607 (=> (not res!677662) (not e!567508))))

(declare-fun lt!445796 () SeekEntryResult!9540)

(assert (=> b!1008607 (= res!677662 (= lt!445795 lt!445796))))

(assert (=> b!1008607 (= lt!445795 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30608 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008608 () Bool)

(assert (=> b!1008608 (= e!567510 e!567511)))

(declare-fun res!677665 () Bool)

(assert (=> b!1008608 (=> (not res!677665) (not e!567511))))

(declare-fun lt!445797 () SeekEntryResult!9540)

(assert (=> b!1008608 (= res!677665 (or (= lt!445797 (MissingVacant!9540 i!1194)) (= lt!445797 (MissingZero!9540 i!1194))))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63582 (_ BitVec 32)) SeekEntryResult!9540)

(assert (=> b!1008608 (= lt!445797 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1008609 () Bool)

(assert (=> b!1008609 (= e!567508 e!567512)))

(declare-fun res!677657 () Bool)

(assert (=> b!1008609 (=> (not res!677657) (not e!567512))))

(declare-fun lt!445794 () SeekEntryResult!9540)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008609 (= res!677657 (not (= lt!445794 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!445792 mask!3464) lt!445792 lt!445793 mask!3464))))))

(assert (=> b!1008609 (= lt!445792 (select (store (arr!30608 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1008609 (= lt!445793 (array!63583 (store (arr!30608 a!3219) i!1194 k0!2224) (size!31111 a!3219)))))

(declare-fun b!1008610 () Bool)

(declare-fun res!677659 () Bool)

(assert (=> b!1008610 (=> (not res!677659) (not e!567510))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1008610 (= res!677659 (validKeyInArray!0 k0!2224))))

(declare-fun b!1008611 () Bool)

(declare-fun res!677655 () Bool)

(assert (=> b!1008611 (=> (not res!677655) (not e!567512))))

(assert (=> b!1008611 (= res!677655 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1008612 () Bool)

(assert (=> b!1008612 (= e!567511 e!567509)))

(declare-fun res!677652 () Bool)

(assert (=> b!1008612 (=> (not res!677652) (not e!567509))))

(assert (=> b!1008612 (= res!677652 (= lt!445794 lt!445796))))

(assert (=> b!1008612 (= lt!445796 (Intermediate!9540 false resIndex!38 resX!38))))

(assert (=> b!1008612 (= lt!445794 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30608 a!3219) j!170) mask!3464) (select (arr!30608 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1008613 () Bool)

(declare-fun res!677653 () Bool)

(assert (=> b!1008613 (=> (not res!677653) (not e!567510))))

(assert (=> b!1008613 (= res!677653 (validKeyInArray!0 (select (arr!30608 a!3219) j!170)))))

(declare-fun b!1008614 () Bool)

(declare-fun res!677663 () Bool)

(assert (=> b!1008614 (=> (not res!677663) (not e!567510))))

(declare-fun arrayContainsKey!0 (array!63582 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1008614 (= res!677663 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun res!677661 () Bool)

(assert (=> start!86982 (=> (not res!677661) (not e!567510))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86982 (= res!677661 (validMask!0 mask!3464))))

(assert (=> start!86982 e!567510))

(declare-fun array_inv!23598 (array!63582) Bool)

(assert (=> start!86982 (array_inv!23598 a!3219)))

(assert (=> start!86982 true))

(declare-fun b!1008615 () Bool)

(assert (=> b!1008615 (= e!567512 false)))

(declare-fun lt!445791 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1008615 (= lt!445791 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1008616 () Bool)

(declare-fun res!677658 () Bool)

(assert (=> b!1008616 (=> (not res!677658) (not e!567511))))

(declare-datatypes ((List!21410 0))(
  ( (Nil!21407) (Cons!21406 (h!22592 (_ BitVec 64)) (t!30419 List!21410)) )
))
(declare-fun arrayNoDuplicates!0 (array!63582 (_ BitVec 32) List!21410) Bool)

(assert (=> b!1008616 (= res!677658 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21407))))

(assert (= (and start!86982 res!677661) b!1008603))

(assert (= (and b!1008603 res!677654) b!1008613))

(assert (= (and b!1008613 res!677653) b!1008610))

(assert (= (and b!1008610 res!677659) b!1008614))

(assert (= (and b!1008614 res!677663) b!1008608))

(assert (= (and b!1008608 res!677665) b!1008605))

(assert (= (and b!1008605 res!677656) b!1008616))

(assert (= (and b!1008616 res!677658) b!1008604))

(assert (= (and b!1008604 res!677664) b!1008612))

(assert (= (and b!1008612 res!677652) b!1008607))

(assert (= (and b!1008607 res!677662) b!1008609))

(assert (= (and b!1008609 res!677657) b!1008606))

(assert (= (and b!1008606 res!677660) b!1008611))

(assert (= (and b!1008611 res!677655) b!1008615))

(declare-fun m!933423 () Bool)

(assert (=> b!1008613 m!933423))

(assert (=> b!1008613 m!933423))

(declare-fun m!933425 () Bool)

(assert (=> b!1008613 m!933425))

(declare-fun m!933427 () Bool)

(assert (=> b!1008610 m!933427))

(declare-fun m!933429 () Bool)

(assert (=> start!86982 m!933429))

(declare-fun m!933431 () Bool)

(assert (=> start!86982 m!933431))

(declare-fun m!933433 () Bool)

(assert (=> b!1008606 m!933433))

(assert (=> b!1008607 m!933423))

(assert (=> b!1008607 m!933423))

(declare-fun m!933435 () Bool)

(assert (=> b!1008607 m!933435))

(declare-fun m!933437 () Bool)

(assert (=> b!1008605 m!933437))

(declare-fun m!933439 () Bool)

(assert (=> b!1008615 m!933439))

(declare-fun m!933441 () Bool)

(assert (=> b!1008616 m!933441))

(declare-fun m!933443 () Bool)

(assert (=> b!1008614 m!933443))

(assert (=> b!1008612 m!933423))

(assert (=> b!1008612 m!933423))

(declare-fun m!933445 () Bool)

(assert (=> b!1008612 m!933445))

(assert (=> b!1008612 m!933445))

(assert (=> b!1008612 m!933423))

(declare-fun m!933447 () Bool)

(assert (=> b!1008612 m!933447))

(declare-fun m!933449 () Bool)

(assert (=> b!1008608 m!933449))

(declare-fun m!933451 () Bool)

(assert (=> b!1008609 m!933451))

(assert (=> b!1008609 m!933451))

(declare-fun m!933453 () Bool)

(assert (=> b!1008609 m!933453))

(declare-fun m!933455 () Bool)

(assert (=> b!1008609 m!933455))

(declare-fun m!933457 () Bool)

(assert (=> b!1008609 m!933457))

(check-sat (not b!1008608) (not start!86982) (not b!1008606) (not b!1008616) (not b!1008613) (not b!1008610) (not b!1008612) (not b!1008614) (not b!1008609) (not b!1008607) (not b!1008615) (not b!1008605))
(check-sat)
