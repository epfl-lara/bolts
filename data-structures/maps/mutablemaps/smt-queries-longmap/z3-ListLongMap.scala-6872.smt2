; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86520 () Bool)

(assert start!86520)

(declare-fun b!1001539 () Bool)

(declare-fun res!671179 () Bool)

(declare-fun e!564363 () Bool)

(assert (=> b!1001539 (=> (not res!671179) (not e!564363))))

(declare-datatypes ((array!63273 0))(
  ( (array!63274 (arr!30458 (Array (_ BitVec 32) (_ BitVec 64))) (size!30961 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63273)

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!63273 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1001539 (= res!671179 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1001540 () Bool)

(declare-fun e!564368 () Bool)

(assert (=> b!1001540 (= e!564363 e!564368)))

(declare-fun res!671173 () Bool)

(assert (=> b!1001540 (=> (not res!671173) (not e!564368))))

(declare-datatypes ((SeekEntryResult!9390 0))(
  ( (MissingZero!9390 (index!39930 (_ BitVec 32))) (Found!9390 (index!39931 (_ BitVec 32))) (Intermediate!9390 (undefined!10202 Bool) (index!39932 (_ BitVec 32)) (x!87379 (_ BitVec 32))) (Undefined!9390) (MissingVacant!9390 (index!39933 (_ BitVec 32))) )
))
(declare-fun lt!442740 () SeekEntryResult!9390)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1001540 (= res!671173 (or (= lt!442740 (MissingVacant!9390 i!1194)) (= lt!442740 (MissingZero!9390 i!1194))))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63273 (_ BitVec 32)) SeekEntryResult!9390)

(assert (=> b!1001540 (= lt!442740 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1001541 () Bool)

(declare-fun res!671174 () Bool)

(assert (=> b!1001541 (=> (not res!671174) (not e!564368))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun x!1245 () (_ BitVec 32))

(assert (=> b!1001541 (= res!671174 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30961 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30961 a!3219))))))

(declare-fun res!671183 () Bool)

(assert (=> start!86520 (=> (not res!671183) (not e!564363))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86520 (= res!671183 (validMask!0 mask!3464))))

(assert (=> start!86520 e!564363))

(declare-fun array_inv!23448 (array!63273) Bool)

(assert (=> start!86520 (array_inv!23448 a!3219)))

(assert (=> start!86520 true))

(declare-fun b!1001542 () Bool)

(declare-fun res!671175 () Bool)

(declare-fun e!564366 () Bool)

(assert (=> b!1001542 (=> (not res!671175) (not e!564366))))

(assert (=> b!1001542 (= res!671175 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1001543 () Bool)

(declare-fun res!671187 () Bool)

(assert (=> b!1001543 (=> (not res!671187) (not e!564366))))

(declare-fun lt!442743 () (_ BitVec 64))

(declare-fun lt!442737 () array!63273)

(declare-fun lt!442741 () SeekEntryResult!9390)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63273 (_ BitVec 32)) SeekEntryResult!9390)

(assert (=> b!1001543 (= res!671187 (not (= lt!442741 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442743 lt!442737 mask!3464))))))

(declare-fun b!1001544 () Bool)

(declare-fun e!564367 () Bool)

(assert (=> b!1001544 (= e!564368 e!564367)))

(declare-fun res!671180 () Bool)

(assert (=> b!1001544 (=> (not res!671180) (not e!564367))))

(declare-fun lt!442739 () SeekEntryResult!9390)

(declare-fun lt!442736 () SeekEntryResult!9390)

(assert (=> b!1001544 (= res!671180 (= lt!442739 lt!442736))))

(assert (=> b!1001544 (= lt!442736 (Intermediate!9390 false resIndex!38 resX!38))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001544 (= lt!442739 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30458 a!3219) j!170) mask!3464) (select (arr!30458 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001545 () Bool)

(declare-fun res!671185 () Bool)

(assert (=> b!1001545 (=> (not res!671185) (not e!564368))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63273 (_ BitVec 32)) Bool)

(assert (=> b!1001545 (= res!671185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1001546 () Bool)

(declare-fun e!564365 () Bool)

(assert (=> b!1001546 (= e!564366 e!564365)))

(declare-fun res!671188 () Bool)

(assert (=> b!1001546 (=> (not res!671188) (not e!564365))))

(declare-fun lt!442738 () (_ BitVec 32))

(assert (=> b!1001546 (= res!671188 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!442738 #b00000000000000000000000000000000) (bvslt lt!442738 (size!30961 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001546 (= lt!442738 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1001547 () Bool)

(declare-fun e!564362 () Bool)

(assert (=> b!1001547 (= e!564362 e!564366)))

(declare-fun res!671176 () Bool)

(assert (=> b!1001547 (=> (not res!671176) (not e!564366))))

(assert (=> b!1001547 (= res!671176 (not (= lt!442739 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442743 mask!3464) lt!442743 lt!442737 mask!3464))))))

(assert (=> b!1001547 (= lt!442743 (select (store (arr!30458 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1001547 (= lt!442737 (array!63274 (store (arr!30458 a!3219) i!1194 k0!2224) (size!30961 a!3219)))))

(declare-fun b!1001548 () Bool)

(declare-fun res!671181 () Bool)

(assert (=> b!1001548 (=> (not res!671181) (not e!564363))))

(assert (=> b!1001548 (= res!671181 (and (= (size!30961 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30961 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30961 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1001549 () Bool)

(assert (=> b!1001549 (= e!564367 e!564362)))

(declare-fun res!671186 () Bool)

(assert (=> b!1001549 (=> (not res!671186) (not e!564362))))

(assert (=> b!1001549 (= res!671186 (= lt!442741 lt!442736))))

(assert (=> b!1001549 (= lt!442741 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30458 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001550 () Bool)

(declare-fun res!671178 () Bool)

(assert (=> b!1001550 (=> (not res!671178) (not e!564365))))

(assert (=> b!1001550 (= res!671178 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442738 (select (arr!30458 a!3219) j!170) a!3219 mask!3464) lt!442736))))

(declare-fun b!1001551 () Bool)

(declare-fun res!671182 () Bool)

(assert (=> b!1001551 (=> (not res!671182) (not e!564368))))

(declare-datatypes ((List!21260 0))(
  ( (Nil!21257) (Cons!21256 (h!22433 (_ BitVec 64)) (t!30269 List!21260)) )
))
(declare-fun arrayNoDuplicates!0 (array!63273 (_ BitVec 32) List!21260) Bool)

(assert (=> b!1001551 (= res!671182 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21257))))

(declare-fun b!1001552 () Bool)

(declare-fun res!671177 () Bool)

(assert (=> b!1001552 (=> (not res!671177) (not e!564363))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1001552 (= res!671177 (validKeyInArray!0 (select (arr!30458 a!3219) j!170)))))

(declare-fun b!1001553 () Bool)

(assert (=> b!1001553 (= e!564365 false)))

(declare-fun lt!442742 () SeekEntryResult!9390)

(assert (=> b!1001553 (= lt!442742 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442738 lt!442743 lt!442737 mask!3464))))

(declare-fun b!1001554 () Bool)

(declare-fun res!671184 () Bool)

(assert (=> b!1001554 (=> (not res!671184) (not e!564363))))

(assert (=> b!1001554 (= res!671184 (validKeyInArray!0 k0!2224))))

(assert (= (and start!86520 res!671183) b!1001548))

(assert (= (and b!1001548 res!671181) b!1001552))

(assert (= (and b!1001552 res!671177) b!1001554))

(assert (= (and b!1001554 res!671184) b!1001539))

(assert (= (and b!1001539 res!671179) b!1001540))

(assert (= (and b!1001540 res!671173) b!1001545))

(assert (= (and b!1001545 res!671185) b!1001551))

(assert (= (and b!1001551 res!671182) b!1001541))

(assert (= (and b!1001541 res!671174) b!1001544))

(assert (= (and b!1001544 res!671180) b!1001549))

(assert (= (and b!1001549 res!671186) b!1001547))

(assert (= (and b!1001547 res!671176) b!1001543))

(assert (= (and b!1001543 res!671187) b!1001542))

(assert (= (and b!1001542 res!671175) b!1001546))

(assert (= (and b!1001546 res!671188) b!1001550))

(assert (= (and b!1001550 res!671178) b!1001553))

(declare-fun m!927661 () Bool)

(assert (=> b!1001549 m!927661))

(assert (=> b!1001549 m!927661))

(declare-fun m!927663 () Bool)

(assert (=> b!1001549 m!927663))

(declare-fun m!927665 () Bool)

(assert (=> b!1001553 m!927665))

(assert (=> b!1001550 m!927661))

(assert (=> b!1001550 m!927661))

(declare-fun m!927667 () Bool)

(assert (=> b!1001550 m!927667))

(declare-fun m!927669 () Bool)

(assert (=> b!1001543 m!927669))

(declare-fun m!927671 () Bool)

(assert (=> b!1001554 m!927671))

(declare-fun m!927673 () Bool)

(assert (=> b!1001546 m!927673))

(declare-fun m!927675 () Bool)

(assert (=> b!1001539 m!927675))

(declare-fun m!927677 () Bool)

(assert (=> b!1001551 m!927677))

(assert (=> b!1001544 m!927661))

(assert (=> b!1001544 m!927661))

(declare-fun m!927679 () Bool)

(assert (=> b!1001544 m!927679))

(assert (=> b!1001544 m!927679))

(assert (=> b!1001544 m!927661))

(declare-fun m!927681 () Bool)

(assert (=> b!1001544 m!927681))

(assert (=> b!1001552 m!927661))

(assert (=> b!1001552 m!927661))

(declare-fun m!927683 () Bool)

(assert (=> b!1001552 m!927683))

(declare-fun m!927685 () Bool)

(assert (=> b!1001547 m!927685))

(assert (=> b!1001547 m!927685))

(declare-fun m!927687 () Bool)

(assert (=> b!1001547 m!927687))

(declare-fun m!927689 () Bool)

(assert (=> b!1001547 m!927689))

(declare-fun m!927691 () Bool)

(assert (=> b!1001547 m!927691))

(declare-fun m!927693 () Bool)

(assert (=> b!1001545 m!927693))

(declare-fun m!927695 () Bool)

(assert (=> b!1001540 m!927695))

(declare-fun m!927697 () Bool)

(assert (=> start!86520 m!927697))

(declare-fun m!927699 () Bool)

(assert (=> start!86520 m!927699))

(check-sat (not b!1001539) (not start!86520) (not b!1001549) (not b!1001551) (not b!1001546) (not b!1001540) (not b!1001550) (not b!1001543) (not b!1001553) (not b!1001552) (not b!1001547) (not b!1001544) (not b!1001554) (not b!1001545))
(check-sat)
