; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87314 () Bool)

(assert start!87314)

(declare-fun b!1011723 () Bool)

(declare-fun res!679780 () Bool)

(declare-fun e!569193 () Bool)

(assert (=> b!1011723 (=> (not res!679780) (not e!569193))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-datatypes ((array!63662 0))(
  ( (array!63663 (arr!30642 (Array (_ BitVec 32) (_ BitVec 64))) (size!31145 (_ BitVec 32))) )
))
(declare-fun lt!447158 () array!63662)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun lt!447157 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9574 0))(
  ( (MissingZero!9574 (index!40666 (_ BitVec 32))) (Found!9574 (index!40667 (_ BitVec 32))) (Intermediate!9574 (undefined!10386 Bool) (index!40668 (_ BitVec 32)) (x!88111 (_ BitVec 32))) (Undefined!9574) (MissingVacant!9574 (index!40669 (_ BitVec 32))) )
))
(declare-fun lt!447162 () SeekEntryResult!9574)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63662 (_ BitVec 32)) SeekEntryResult!9574)

(assert (=> b!1011723 (= res!679780 (not (= lt!447162 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!447157 lt!447158 mask!3464))))))

(declare-fun b!1011724 () Bool)

(declare-fun e!569188 () Bool)

(declare-fun e!569195 () Bool)

(assert (=> b!1011724 (= e!569188 e!569195)))

(declare-fun res!679781 () Bool)

(assert (=> b!1011724 (=> (not res!679781) (not e!569195))))

(declare-fun lt!447161 () SeekEntryResult!9574)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1011724 (= res!679781 (or (= lt!447161 (MissingVacant!9574 i!1194)) (= lt!447161 (MissingZero!9574 i!1194))))))

(declare-fun a!3219 () array!63662)

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63662 (_ BitVec 32)) SeekEntryResult!9574)

(assert (=> b!1011724 (= lt!447161 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1011725 () Bool)

(declare-fun res!679779 () Bool)

(declare-fun e!569192 () Bool)

(assert (=> b!1011725 (=> (not res!679779) (not e!569192))))

(declare-fun lt!447159 () (_ BitVec 32))

(declare-fun lt!447156 () SeekEntryResult!9574)

(assert (=> b!1011725 (= res!679779 (not (= lt!447156 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!447159 lt!447157 lt!447158 mask!3464))))))

(declare-fun b!1011726 () Bool)

(declare-fun res!679787 () Bool)

(assert (=> b!1011726 (=> (not res!679787) (not e!569188))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1011726 (= res!679787 (validKeyInArray!0 k!2224))))

(declare-fun b!1011727 () Bool)

(assert (=> b!1011727 (= e!569192 (not true))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1011727 (= resIndex!38 i!1194)))

(declare-datatypes ((Unit!32988 0))(
  ( (Unit!32989) )
))
(declare-fun lt!447154 () Unit!32988)

(declare-fun resX!38 () (_ BitVec 32))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!63662 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32988)

(assert (=> b!1011727 (= lt!447154 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3219 i!1194 k!2224 j!170 lt!447159 (bvadd #b00000000000000000000000000000001 x!1245) resIndex!38 resX!38 mask!3464))))

(declare-fun b!1011728 () Bool)

(declare-fun res!679783 () Bool)

(assert (=> b!1011728 (=> (not res!679783) (not e!569195))))

(assert (=> b!1011728 (= res!679783 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31145 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31145 a!3219))))))

(declare-fun b!1011729 () Bool)

(declare-fun e!569191 () Bool)

(declare-fun e!569190 () Bool)

(assert (=> b!1011729 (= e!569191 e!569190)))

(declare-fun res!679778 () Bool)

(assert (=> b!1011729 (=> (not res!679778) (not e!569190))))

(declare-fun lt!447155 () SeekEntryResult!9574)

(assert (=> b!1011729 (= res!679778 (= lt!447162 lt!447155))))

(assert (=> b!1011729 (= lt!447162 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30642 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011730 () Bool)

(declare-fun res!679785 () Bool)

(assert (=> b!1011730 (=> (not res!679785) (not e!569195))))

(declare-datatypes ((List!21444 0))(
  ( (Nil!21441) (Cons!21440 (h!22638 (_ BitVec 64)) (t!30453 List!21444)) )
))
(declare-fun arrayNoDuplicates!0 (array!63662 (_ BitVec 32) List!21444) Bool)

(assert (=> b!1011730 (= res!679785 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21441))))

(declare-fun b!1011731 () Bool)

(declare-fun e!569194 () Bool)

(assert (=> b!1011731 (= e!569193 e!569194)))

(declare-fun res!679775 () Bool)

(assert (=> b!1011731 (=> (not res!679775) (not e!569194))))

(assert (=> b!1011731 (= res!679775 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!447159 #b00000000000000000000000000000000) (bvslt lt!447159 (size!31145 a!3219))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1011731 (= lt!447159 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1011732 () Bool)

(declare-fun res!679786 () Bool)

(assert (=> b!1011732 (=> (not res!679786) (not e!569188))))

(assert (=> b!1011732 (= res!679786 (validKeyInArray!0 (select (arr!30642 a!3219) j!170)))))

(declare-fun b!1011733 () Bool)

(declare-fun res!679773 () Bool)

(assert (=> b!1011733 (=> (not res!679773) (not e!569188))))

(declare-fun arrayContainsKey!0 (array!63662 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1011733 (= res!679773 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1011734 () Bool)

(declare-fun res!679782 () Bool)

(assert (=> b!1011734 (=> (not res!679782) (not e!569188))))

(assert (=> b!1011734 (= res!679782 (and (= (size!31145 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31145 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31145 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1011735 () Bool)

(assert (=> b!1011735 (= e!569190 e!569193)))

(declare-fun res!679777 () Bool)

(assert (=> b!1011735 (=> (not res!679777) (not e!569193))))

(declare-fun lt!447160 () SeekEntryResult!9574)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1011735 (= res!679777 (not (= lt!447160 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!447157 mask!3464) lt!447157 lt!447158 mask!3464))))))

(assert (=> b!1011735 (= lt!447157 (select (store (arr!30642 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1011735 (= lt!447158 (array!63663 (store (arr!30642 a!3219) i!1194 k!2224) (size!31145 a!3219)))))

(declare-fun b!1011736 () Bool)

(assert (=> b!1011736 (= e!569195 e!569191)))

(declare-fun res!679776 () Bool)

(assert (=> b!1011736 (=> (not res!679776) (not e!569191))))

(assert (=> b!1011736 (= res!679776 (= lt!447160 lt!447155))))

(assert (=> b!1011736 (= lt!447155 (Intermediate!9574 false resIndex!38 resX!38))))

(assert (=> b!1011736 (= lt!447160 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30642 a!3219) j!170) mask!3464) (select (arr!30642 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011737 () Bool)

(declare-fun res!679784 () Bool)

(assert (=> b!1011737 (=> (not res!679784) (not e!569193))))

(assert (=> b!1011737 (= res!679784 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(declare-fun res!679788 () Bool)

(assert (=> start!87314 (=> (not res!679788) (not e!569188))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87314 (= res!679788 (validMask!0 mask!3464))))

(assert (=> start!87314 e!569188))

(declare-fun array_inv!23632 (array!63662) Bool)

(assert (=> start!87314 (array_inv!23632 a!3219)))

(assert (=> start!87314 true))

(declare-fun b!1011738 () Bool)

(assert (=> b!1011738 (= e!569194 e!569192)))

(declare-fun res!679774 () Bool)

(assert (=> b!1011738 (=> (not res!679774) (not e!569192))))

(assert (=> b!1011738 (= res!679774 (= lt!447156 lt!447155))))

(assert (=> b!1011738 (= lt!447156 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!447159 (select (arr!30642 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1011739 () Bool)

(declare-fun res!679789 () Bool)

(assert (=> b!1011739 (=> (not res!679789) (not e!569195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63662 (_ BitVec 32)) Bool)

(assert (=> b!1011739 (= res!679789 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(assert (= (and start!87314 res!679788) b!1011734))

(assert (= (and b!1011734 res!679782) b!1011732))

(assert (= (and b!1011732 res!679786) b!1011726))

(assert (= (and b!1011726 res!679787) b!1011733))

(assert (= (and b!1011733 res!679773) b!1011724))

(assert (= (and b!1011724 res!679781) b!1011739))

(assert (= (and b!1011739 res!679789) b!1011730))

(assert (= (and b!1011730 res!679785) b!1011728))

(assert (= (and b!1011728 res!679783) b!1011736))

(assert (= (and b!1011736 res!679776) b!1011729))

(assert (= (and b!1011729 res!679778) b!1011735))

(assert (= (and b!1011735 res!679777) b!1011723))

(assert (= (and b!1011723 res!679780) b!1011737))

(assert (= (and b!1011737 res!679784) b!1011731))

(assert (= (and b!1011731 res!679775) b!1011738))

(assert (= (and b!1011738 res!679774) b!1011725))

(assert (= (and b!1011725 res!679779) b!1011727))

(declare-fun m!935781 () Bool)

(assert (=> b!1011727 m!935781))

(declare-fun m!935783 () Bool)

(assert (=> b!1011730 m!935783))

(declare-fun m!935785 () Bool)

(assert (=> start!87314 m!935785))

(declare-fun m!935787 () Bool)

(assert (=> start!87314 m!935787))

(declare-fun m!935789 () Bool)

(assert (=> b!1011732 m!935789))

(assert (=> b!1011732 m!935789))

(declare-fun m!935791 () Bool)

(assert (=> b!1011732 m!935791))

(assert (=> b!1011729 m!935789))

(assert (=> b!1011729 m!935789))

(declare-fun m!935793 () Bool)

(assert (=> b!1011729 m!935793))

(declare-fun m!935795 () Bool)

(assert (=> b!1011735 m!935795))

(assert (=> b!1011735 m!935795))

(declare-fun m!935797 () Bool)

(assert (=> b!1011735 m!935797))

(declare-fun m!935799 () Bool)

(assert (=> b!1011735 m!935799))

(declare-fun m!935801 () Bool)

(assert (=> b!1011735 m!935801))

(assert (=> b!1011738 m!935789))

(assert (=> b!1011738 m!935789))

(declare-fun m!935803 () Bool)

(assert (=> b!1011738 m!935803))

(declare-fun m!935805 () Bool)

(assert (=> b!1011723 m!935805))

(declare-fun m!935807 () Bool)

(assert (=> b!1011725 m!935807))

(assert (=> b!1011736 m!935789))

(assert (=> b!1011736 m!935789))

(declare-fun m!935809 () Bool)

(assert (=> b!1011736 m!935809))

(assert (=> b!1011736 m!935809))

(assert (=> b!1011736 m!935789))

(declare-fun m!935811 () Bool)

(assert (=> b!1011736 m!935811))

(declare-fun m!935813 () Bool)

(assert (=> b!1011733 m!935813))

(declare-fun m!935815 () Bool)

(assert (=> b!1011739 m!935815))

(declare-fun m!935817 () Bool)

(assert (=> b!1011731 m!935817))

(declare-fun m!935819 () Bool)

(assert (=> b!1011724 m!935819))

(declare-fun m!935821 () Bool)

(assert (=> b!1011726 m!935821))

(push 1)

