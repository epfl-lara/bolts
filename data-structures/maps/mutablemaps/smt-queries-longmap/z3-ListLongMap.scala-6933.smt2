; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87312 () Bool)

(assert start!87312)

(declare-fun b!1011672 () Bool)

(declare-fun res!679735 () Bool)

(declare-fun e!569170 () Bool)

(assert (=> b!1011672 (=> (not res!679735) (not e!569170))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1011672 (= res!679735 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun b!1011673 () Bool)

(declare-fun e!569166 () Bool)

(assert (=> b!1011673 (= e!569166 (not true))))

(assert (=> b!1011673 (= resIndex!38 i!1194)))

(declare-datatypes ((array!63660 0))(
  ( (array!63661 (arr!30641 (Array (_ BitVec 32) (_ BitVec 64))) (size!31144 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63660)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-datatypes ((Unit!32986 0))(
  ( (Unit!32987) )
))
(declare-fun lt!447133 () Unit!32986)

(declare-fun lt!447127 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!63660 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32986)

(assert (=> b!1011673 (= lt!447133 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3219 i!1194 k0!2224 j!170 lt!447127 (bvadd #b00000000000000000000000000000001 x!1245) resIndex!38 resX!38 mask!3464))))

(declare-fun b!1011674 () Bool)

(declare-fun e!569164 () Bool)

(declare-fun e!569171 () Bool)

(assert (=> b!1011674 (= e!569164 e!569171)))

(declare-fun res!679734 () Bool)

(assert (=> b!1011674 (=> (not res!679734) (not e!569171))))

(declare-datatypes ((SeekEntryResult!9573 0))(
  ( (MissingZero!9573 (index!40662 (_ BitVec 32))) (Found!9573 (index!40663 (_ BitVec 32))) (Intermediate!9573 (undefined!10385 Bool) (index!40664 (_ BitVec 32)) (x!88110 (_ BitVec 32))) (Undefined!9573) (MissingVacant!9573 (index!40665 (_ BitVec 32))) )
))
(declare-fun lt!447129 () SeekEntryResult!9573)

(declare-fun lt!447135 () SeekEntryResult!9573)

(assert (=> b!1011674 (= res!679734 (= lt!447129 lt!447135))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63660 (_ BitVec 32)) SeekEntryResult!9573)

(assert (=> b!1011674 (= lt!447129 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30641 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011675 () Bool)

(declare-fun res!679733 () Bool)

(declare-fun e!569165 () Bool)

(assert (=> b!1011675 (=> (not res!679733) (not e!569165))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1011675 (= res!679733 (validKeyInArray!0 k0!2224))))

(declare-fun b!1011676 () Bool)

(declare-fun res!679737 () Bool)

(assert (=> b!1011676 (=> (not res!679737) (not e!569165))))

(declare-fun arrayContainsKey!0 (array!63660 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1011676 (= res!679737 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1011677 () Bool)

(declare-fun res!679732 () Bool)

(declare-fun e!569168 () Bool)

(assert (=> b!1011677 (=> (not res!679732) (not e!569168))))

(assert (=> b!1011677 (= res!679732 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31144 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31144 a!3219))))))

(declare-fun b!1011678 () Bool)

(assert (=> b!1011678 (= e!569171 e!569170)))

(declare-fun res!679728 () Bool)

(assert (=> b!1011678 (=> (not res!679728) (not e!569170))))

(declare-fun lt!447134 () (_ BitVec 64))

(declare-fun lt!447130 () array!63660)

(declare-fun lt!447128 () SeekEntryResult!9573)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1011678 (= res!679728 (not (= lt!447128 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!447134 mask!3464) lt!447134 lt!447130 mask!3464))))))

(assert (=> b!1011678 (= lt!447134 (select (store (arr!30641 a!3219) i!1194 k0!2224) j!170))))

(assert (=> b!1011678 (= lt!447130 (array!63661 (store (arr!30641 a!3219) i!1194 k0!2224) (size!31144 a!3219)))))

(declare-fun b!1011679 () Bool)

(declare-fun res!679723 () Bool)

(assert (=> b!1011679 (=> (not res!679723) (not e!569165))))

(assert (=> b!1011679 (= res!679723 (and (= (size!31144 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31144 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31144 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1011681 () Bool)

(declare-fun e!569169 () Bool)

(assert (=> b!1011681 (= e!569170 e!569169)))

(declare-fun res!679729 () Bool)

(assert (=> b!1011681 (=> (not res!679729) (not e!569169))))

(assert (=> b!1011681 (= res!679729 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!447127 #b00000000000000000000000000000000) (bvslt lt!447127 (size!31144 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1011681 (= lt!447127 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1011682 () Bool)

(declare-fun res!679736 () Bool)

(assert (=> b!1011682 (=> (not res!679736) (not e!569166))))

(declare-fun lt!447132 () SeekEntryResult!9573)

(assert (=> b!1011682 (= res!679736 (not (= lt!447132 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!447127 lt!447134 lt!447130 mask!3464))))))

(declare-fun b!1011683 () Bool)

(declare-fun res!679738 () Bool)

(assert (=> b!1011683 (=> (not res!679738) (not e!569170))))

(assert (=> b!1011683 (= res!679738 (not (= lt!447129 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!447134 lt!447130 mask!3464))))))

(declare-fun b!1011684 () Bool)

(assert (=> b!1011684 (= e!569168 e!569164)))

(declare-fun res!679725 () Bool)

(assert (=> b!1011684 (=> (not res!679725) (not e!569164))))

(assert (=> b!1011684 (= res!679725 (= lt!447128 lt!447135))))

(assert (=> b!1011684 (= lt!447135 (Intermediate!9573 false resIndex!38 resX!38))))

(assert (=> b!1011684 (= lt!447128 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30641 a!3219) j!170) mask!3464) (select (arr!30641 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011685 () Bool)

(declare-fun res!679727 () Bool)

(assert (=> b!1011685 (=> (not res!679727) (not e!569165))))

(assert (=> b!1011685 (= res!679727 (validKeyInArray!0 (select (arr!30641 a!3219) j!170)))))

(declare-fun b!1011686 () Bool)

(declare-fun res!679724 () Bool)

(assert (=> b!1011686 (=> (not res!679724) (not e!569168))))

(declare-datatypes ((List!21443 0))(
  ( (Nil!21440) (Cons!21439 (h!22637 (_ BitVec 64)) (t!30452 List!21443)) )
))
(declare-fun arrayNoDuplicates!0 (array!63660 (_ BitVec 32) List!21443) Bool)

(assert (=> b!1011686 (= res!679724 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21440))))

(declare-fun res!679731 () Bool)

(assert (=> start!87312 (=> (not res!679731) (not e!569165))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87312 (= res!679731 (validMask!0 mask!3464))))

(assert (=> start!87312 e!569165))

(declare-fun array_inv!23631 (array!63660) Bool)

(assert (=> start!87312 (array_inv!23631 a!3219)))

(assert (=> start!87312 true))

(declare-fun b!1011680 () Bool)

(assert (=> b!1011680 (= e!569169 e!569166)))

(declare-fun res!679722 () Bool)

(assert (=> b!1011680 (=> (not res!679722) (not e!569166))))

(assert (=> b!1011680 (= res!679722 (= lt!447132 lt!447135))))

(assert (=> b!1011680 (= lt!447132 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!447127 (select (arr!30641 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011687 () Bool)

(assert (=> b!1011687 (= e!569165 e!569168)))

(declare-fun res!679726 () Bool)

(assert (=> b!1011687 (=> (not res!679726) (not e!569168))))

(declare-fun lt!447131 () SeekEntryResult!9573)

(assert (=> b!1011687 (= res!679726 (or (= lt!447131 (MissingVacant!9573 i!1194)) (= lt!447131 (MissingZero!9573 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63660 (_ BitVec 32)) SeekEntryResult!9573)

(assert (=> b!1011687 (= lt!447131 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!1011688 () Bool)

(declare-fun res!679730 () Bool)

(assert (=> b!1011688 (=> (not res!679730) (not e!569168))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63660 (_ BitVec 32)) Bool)

(assert (=> b!1011688 (= res!679730 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(assert (= (and start!87312 res!679731) b!1011679))

(assert (= (and b!1011679 res!679723) b!1011685))

(assert (= (and b!1011685 res!679727) b!1011675))

(assert (= (and b!1011675 res!679733) b!1011676))

(assert (= (and b!1011676 res!679737) b!1011687))

(assert (= (and b!1011687 res!679726) b!1011688))

(assert (= (and b!1011688 res!679730) b!1011686))

(assert (= (and b!1011686 res!679724) b!1011677))

(assert (= (and b!1011677 res!679732) b!1011684))

(assert (= (and b!1011684 res!679725) b!1011674))

(assert (= (and b!1011674 res!679734) b!1011678))

(assert (= (and b!1011678 res!679728) b!1011683))

(assert (= (and b!1011683 res!679738) b!1011672))

(assert (= (and b!1011672 res!679735) b!1011681))

(assert (= (and b!1011681 res!679729) b!1011680))

(assert (= (and b!1011680 res!679722) b!1011682))

(assert (= (and b!1011682 res!679736) b!1011673))

(declare-fun m!935739 () Bool)

(assert (=> b!1011683 m!935739))

(declare-fun m!935741 () Bool)

(assert (=> b!1011673 m!935741))

(declare-fun m!935743 () Bool)

(assert (=> b!1011675 m!935743))

(declare-fun m!935745 () Bool)

(assert (=> b!1011684 m!935745))

(assert (=> b!1011684 m!935745))

(declare-fun m!935747 () Bool)

(assert (=> b!1011684 m!935747))

(assert (=> b!1011684 m!935747))

(assert (=> b!1011684 m!935745))

(declare-fun m!935749 () Bool)

(assert (=> b!1011684 m!935749))

(assert (=> b!1011685 m!935745))

(assert (=> b!1011685 m!935745))

(declare-fun m!935751 () Bool)

(assert (=> b!1011685 m!935751))

(assert (=> b!1011680 m!935745))

(assert (=> b!1011680 m!935745))

(declare-fun m!935753 () Bool)

(assert (=> b!1011680 m!935753))

(declare-fun m!935755 () Bool)

(assert (=> b!1011688 m!935755))

(declare-fun m!935757 () Bool)

(assert (=> start!87312 m!935757))

(declare-fun m!935759 () Bool)

(assert (=> start!87312 m!935759))

(declare-fun m!935761 () Bool)

(assert (=> b!1011687 m!935761))

(declare-fun m!935763 () Bool)

(assert (=> b!1011681 m!935763))

(assert (=> b!1011674 m!935745))

(assert (=> b!1011674 m!935745))

(declare-fun m!935765 () Bool)

(assert (=> b!1011674 m!935765))

(declare-fun m!935767 () Bool)

(assert (=> b!1011678 m!935767))

(assert (=> b!1011678 m!935767))

(declare-fun m!935769 () Bool)

(assert (=> b!1011678 m!935769))

(declare-fun m!935771 () Bool)

(assert (=> b!1011678 m!935771))

(declare-fun m!935773 () Bool)

(assert (=> b!1011678 m!935773))

(declare-fun m!935775 () Bool)

(assert (=> b!1011682 m!935775))

(declare-fun m!935777 () Bool)

(assert (=> b!1011686 m!935777))

(declare-fun m!935779 () Bool)

(assert (=> b!1011676 m!935779))

(check-sat (not b!1011678) (not b!1011682) (not b!1011685) (not b!1011680) (not b!1011676) (not b!1011687) (not b!1011688) (not b!1011673) (not b!1011681) (not b!1011684) (not b!1011674) (not b!1011675) (not b!1011683) (not start!87312) (not b!1011686))
(check-sat)
