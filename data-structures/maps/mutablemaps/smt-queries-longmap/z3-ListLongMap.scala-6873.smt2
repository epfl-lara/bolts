; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86526 () Bool)

(assert start!86526)

(declare-fun b!1001683 () Bool)

(declare-fun e!564431 () Bool)

(declare-fun e!564427 () Bool)

(assert (=> b!1001683 (= e!564431 e!564427)))

(declare-fun res!671319 () Bool)

(assert (=> b!1001683 (=> (not res!671319) (not e!564427))))

(declare-datatypes ((SeekEntryResult!9393 0))(
  ( (MissingZero!9393 (index!39942 (_ BitVec 32))) (Found!9393 (index!39943 (_ BitVec 32))) (Intermediate!9393 (undefined!10205 Bool) (index!39944 (_ BitVec 32)) (x!87390 (_ BitVec 32))) (Undefined!9393) (MissingVacant!9393 (index!39945 (_ BitVec 32))) )
))
(declare-fun lt!442815 () SeekEntryResult!9393)

(declare-fun lt!442809 () SeekEntryResult!9393)

(assert (=> b!1001683 (= res!671319 (= lt!442815 lt!442809))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1001683 (= lt!442809 (Intermediate!9393 false resIndex!38 resX!38))))

(declare-datatypes ((array!63279 0))(
  ( (array!63280 (arr!30461 (Array (_ BitVec 32) (_ BitVec 64))) (size!30964 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63279)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63279 (_ BitVec 32)) SeekEntryResult!9393)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001683 (= lt!442815 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30461 a!3219) j!170) mask!3464) (select (arr!30461 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001684 () Bool)

(declare-fun res!671329 () Bool)

(assert (=> b!1001684 (=> (not res!671329) (not e!564431))))

(declare-datatypes ((List!21263 0))(
  ( (Nil!21260) (Cons!21259 (h!22436 (_ BitVec 64)) (t!30272 List!21263)) )
))
(declare-fun arrayNoDuplicates!0 (array!63279 (_ BitVec 32) List!21263) Bool)

(assert (=> b!1001684 (= res!671329 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21260))))

(declare-fun b!1001685 () Bool)

(declare-fun res!671322 () Bool)

(declare-fun e!564426 () Bool)

(assert (=> b!1001685 (=> (not res!671322) (not e!564426))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1001685 (= res!671322 (validKeyInArray!0 (select (arr!30461 a!3219) j!170)))))

(declare-fun b!1001686 () Bool)

(declare-fun e!564428 () Bool)

(declare-fun e!564429 () Bool)

(assert (=> b!1001686 (= e!564428 e!564429)))

(declare-fun res!671328 () Bool)

(assert (=> b!1001686 (=> (not res!671328) (not e!564429))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun lt!442810 () (_ BitVec 32))

(assert (=> b!1001686 (= res!671328 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!442810 #b00000000000000000000000000000000) (bvslt lt!442810 (size!30964 a!3219))))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1001686 (= lt!442810 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1001687 () Bool)

(declare-fun res!671330 () Bool)

(assert (=> b!1001687 (=> (not res!671330) (not e!564428))))

(declare-fun lt!442811 () (_ BitVec 64))

(declare-fun lt!442808 () array!63279)

(declare-fun lt!442814 () SeekEntryResult!9393)

(assert (=> b!1001687 (= res!671330 (not (= lt!442814 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!442811 lt!442808 mask!3464))))))

(declare-fun b!1001688 () Bool)

(declare-fun e!564430 () Bool)

(assert (=> b!1001688 (= e!564427 e!564430)))

(declare-fun res!671320 () Bool)

(assert (=> b!1001688 (=> (not res!671320) (not e!564430))))

(assert (=> b!1001688 (= res!671320 (= lt!442814 lt!442809))))

(assert (=> b!1001688 (= lt!442814 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30461 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1001689 () Bool)

(declare-fun res!671323 () Bool)

(assert (=> b!1001689 (=> (not res!671323) (not e!564426))))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1001689 (= res!671323 (and (= (size!30964 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30964 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30964 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1001690 () Bool)

(assert (=> b!1001690 (= e!564430 e!564428)))

(declare-fun res!671326 () Bool)

(assert (=> b!1001690 (=> (not res!671326) (not e!564428))))

(assert (=> b!1001690 (= res!671326 (not (= lt!442815 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!442811 mask!3464) lt!442811 lt!442808 mask!3464))))))

(declare-fun k0!2224 () (_ BitVec 64))

(assert (=> b!1001690 (= lt!442811 (select (store (arr!30461 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1001690 (= lt!442808 (array!63280 (store (arr!30461 a!3219) i!1194 k0!2224) (size!30964 a!3219)))))

(declare-fun b!1001691 () Bool)

(assert (=> b!1001691 (= e!564426 e!564431)))

(declare-fun res!671318 () Bool)

(assert (=> b!1001691 (=> (not res!671318) (not e!564431))))

(declare-fun lt!442812 () SeekEntryResult!9393)

(assert (=> b!1001691 (= res!671318 (or (= lt!442812 (MissingVacant!9393 i!1194)) (= lt!442812 (MissingZero!9393 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63279 (_ BitVec 32)) SeekEntryResult!9393)

(assert (=> b!1001691 (= lt!442812 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1001692 () Bool)

(assert (=> b!1001692 (= e!564429 false)))

(declare-fun lt!442813 () SeekEntryResult!9393)

(assert (=> b!1001692 (= lt!442813 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442810 lt!442811 lt!442808 mask!3464))))

(declare-fun b!1001693 () Bool)

(declare-fun res!671327 () Bool)

(assert (=> b!1001693 (=> (not res!671327) (not e!564429))))

(assert (=> b!1001693 (= res!671327 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!442810 (select (arr!30461 a!3219) j!170) a!3219 mask!3464) lt!442809))))

(declare-fun res!671317 () Bool)

(assert (=> start!86526 (=> (not res!671317) (not e!564426))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86526 (= res!671317 (validMask!0 mask!3464))))

(assert (=> start!86526 e!564426))

(declare-fun array_inv!23451 (array!63279) Bool)

(assert (=> start!86526 (array_inv!23451 a!3219)))

(assert (=> start!86526 true))

(declare-fun b!1001694 () Bool)

(declare-fun res!671331 () Bool)

(assert (=> b!1001694 (=> (not res!671331) (not e!564426))))

(assert (=> b!1001694 (= res!671331 (validKeyInArray!0 k0!2224))))

(declare-fun b!1001695 () Bool)

(declare-fun res!671321 () Bool)

(assert (=> b!1001695 (=> (not res!671321) (not e!564426))))

(declare-fun arrayContainsKey!0 (array!63279 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1001695 (= res!671321 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1001696 () Bool)

(declare-fun res!671325 () Bool)

(assert (=> b!1001696 (=> (not res!671325) (not e!564428))))

(assert (=> b!1001696 (= res!671325 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1001697 () Bool)

(declare-fun res!671324 () Bool)

(assert (=> b!1001697 (=> (not res!671324) (not e!564431))))

(assert (=> b!1001697 (= res!671324 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30964 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30964 a!3219))))))

(declare-fun b!1001698 () Bool)

(declare-fun res!671332 () Bool)

(assert (=> b!1001698 (=> (not res!671332) (not e!564431))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63279 (_ BitVec 32)) Bool)

(assert (=> b!1001698 (= res!671332 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(assert (= (and start!86526 res!671317) b!1001689))

(assert (= (and b!1001689 res!671323) b!1001685))

(assert (= (and b!1001685 res!671322) b!1001694))

(assert (= (and b!1001694 res!671331) b!1001695))

(assert (= (and b!1001695 res!671321) b!1001691))

(assert (= (and b!1001691 res!671318) b!1001698))

(assert (= (and b!1001698 res!671332) b!1001684))

(assert (= (and b!1001684 res!671329) b!1001697))

(assert (= (and b!1001697 res!671324) b!1001683))

(assert (= (and b!1001683 res!671319) b!1001688))

(assert (= (and b!1001688 res!671320) b!1001690))

(assert (= (and b!1001690 res!671326) b!1001687))

(assert (= (and b!1001687 res!671330) b!1001696))

(assert (= (and b!1001696 res!671325) b!1001686))

(assert (= (and b!1001686 res!671328) b!1001693))

(assert (= (and b!1001693 res!671327) b!1001692))

(declare-fun m!927781 () Bool)

(assert (=> b!1001684 m!927781))

(declare-fun m!927783 () Bool)

(assert (=> b!1001694 m!927783))

(declare-fun m!927785 () Bool)

(assert (=> b!1001686 m!927785))

(declare-fun m!927787 () Bool)

(assert (=> b!1001683 m!927787))

(assert (=> b!1001683 m!927787))

(declare-fun m!927789 () Bool)

(assert (=> b!1001683 m!927789))

(assert (=> b!1001683 m!927789))

(assert (=> b!1001683 m!927787))

(declare-fun m!927791 () Bool)

(assert (=> b!1001683 m!927791))

(declare-fun m!927793 () Bool)

(assert (=> start!86526 m!927793))

(declare-fun m!927795 () Bool)

(assert (=> start!86526 m!927795))

(declare-fun m!927797 () Bool)

(assert (=> b!1001695 m!927797))

(assert (=> b!1001685 m!927787))

(assert (=> b!1001685 m!927787))

(declare-fun m!927799 () Bool)

(assert (=> b!1001685 m!927799))

(assert (=> b!1001693 m!927787))

(assert (=> b!1001693 m!927787))

(declare-fun m!927801 () Bool)

(assert (=> b!1001693 m!927801))

(declare-fun m!927803 () Bool)

(assert (=> b!1001691 m!927803))

(declare-fun m!927805 () Bool)

(assert (=> b!1001692 m!927805))

(declare-fun m!927807 () Bool)

(assert (=> b!1001698 m!927807))

(declare-fun m!927809 () Bool)

(assert (=> b!1001687 m!927809))

(declare-fun m!927811 () Bool)

(assert (=> b!1001690 m!927811))

(assert (=> b!1001690 m!927811))

(declare-fun m!927813 () Bool)

(assert (=> b!1001690 m!927813))

(declare-fun m!927815 () Bool)

(assert (=> b!1001690 m!927815))

(declare-fun m!927817 () Bool)

(assert (=> b!1001690 m!927817))

(assert (=> b!1001688 m!927787))

(assert (=> b!1001688 m!927787))

(declare-fun m!927819 () Bool)

(assert (=> b!1001688 m!927819))

(check-sat (not b!1001691) (not b!1001690) (not b!1001685) (not b!1001693) (not b!1001698) (not b!1001684) (not b!1001686) (not start!86526) (not b!1001692) (not b!1001695) (not b!1001694) (not b!1001688) (not b!1001687) (not b!1001683))
(check-sat)
