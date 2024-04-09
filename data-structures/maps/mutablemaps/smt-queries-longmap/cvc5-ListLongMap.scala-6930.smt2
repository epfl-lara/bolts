; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87232 () Bool)

(assert start!87232)

(declare-fun b!1010816 () Bool)

(declare-fun e!568707 () Bool)

(declare-fun e!568704 () Bool)

(assert (=> b!1010816 (= e!568707 e!568704)))

(declare-fun res!679110 () Bool)

(assert (=> b!1010816 (=> (not res!679110) (not e!568704))))

(declare-datatypes ((array!63637 0))(
  ( (array!63638 (arr!30631 (Array (_ BitVec 32) (_ BitVec 64))) (size!31134 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63637)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun lt!446753 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!1010816 (= res!679110 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1245) resX!38) (bvsge (bvadd #b00000000000000000000000000000001 x!1245) #b00000000000000000000000000000000) (bvsge lt!446753 #b00000000000000000000000000000000) (bvslt lt!446753 (size!31134 a!3219))))))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010816 (= lt!446753 (nextIndex!0 index!1507 x!1245 mask!3464))))

(declare-fun b!1010817 () Bool)

(declare-fun res!679104 () Bool)

(declare-fun e!568706 () Bool)

(assert (=> b!1010817 (=> (not res!679104) (not e!568706))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!1010817 (= res!679104 (and (= (size!31134 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!31134 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!31134 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!1010818 () Bool)

(declare-fun res!679100 () Bool)

(declare-fun e!568703 () Bool)

(assert (=> b!1010818 (=> (not res!679100) (not e!568703))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63637 (_ BitVec 32)) Bool)

(assert (=> b!1010818 (= res!679100 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!1010819 () Bool)

(declare-fun e!568708 () Bool)

(declare-fun e!568705 () Bool)

(assert (=> b!1010819 (= e!568708 e!568705)))

(declare-fun res!679101 () Bool)

(assert (=> b!1010819 (=> (not res!679101) (not e!568705))))

(declare-datatypes ((SeekEntryResult!9563 0))(
  ( (MissingZero!9563 (index!40622 (_ BitVec 32))) (Found!9563 (index!40623 (_ BitVec 32))) (Intermediate!9563 (undefined!10375 Bool) (index!40624 (_ BitVec 32)) (x!88067 (_ BitVec 32))) (Undefined!9563) (MissingVacant!9563 (index!40625 (_ BitVec 32))) )
))
(declare-fun lt!446750 () SeekEntryResult!9563)

(declare-fun lt!446754 () SeekEntryResult!9563)

(assert (=> b!1010819 (= res!679101 (= lt!446750 lt!446754))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63637 (_ BitVec 32)) SeekEntryResult!9563)

(assert (=> b!1010819 (= lt!446750 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30631 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010820 () Bool)

(declare-fun res!679098 () Bool)

(assert (=> b!1010820 (=> (not res!679098) (not e!568706))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1010820 (= res!679098 (validKeyInArray!0 (select (arr!30631 a!3219) j!170)))))

(declare-fun b!1010821 () Bool)

(assert (=> b!1010821 (= e!568704 false)))

(declare-fun lt!446752 () SeekEntryResult!9563)

(assert (=> b!1010821 (= lt!446752 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1245) lt!446753 (select (arr!30631 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!1010822 () Bool)

(assert (=> b!1010822 (= e!568703 e!568708)))

(declare-fun res!679109 () Bool)

(assert (=> b!1010822 (=> (not res!679109) (not e!568708))))

(declare-fun lt!446749 () SeekEntryResult!9563)

(assert (=> b!1010822 (= res!679109 (= lt!446749 lt!446754))))

(declare-fun resIndex!38 () (_ BitVec 32))

(assert (=> b!1010822 (= lt!446754 (Intermediate!9563 false resIndex!38 resX!38))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1010822 (= lt!446749 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30631 a!3219) j!170) mask!3464) (select (arr!30631 a!3219) j!170) a!3219 mask!3464))))

(declare-fun res!679111 () Bool)

(assert (=> start!87232 (=> (not res!679111) (not e!568706))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!87232 (= res!679111 (validMask!0 mask!3464))))

(assert (=> start!87232 e!568706))

(declare-fun array_inv!23621 (array!63637) Bool)

(assert (=> start!87232 (array_inv!23621 a!3219)))

(assert (=> start!87232 true))

(declare-fun b!1010823 () Bool)

(assert (=> b!1010823 (= e!568705 e!568707)))

(declare-fun res!679107 () Bool)

(assert (=> b!1010823 (=> (not res!679107) (not e!568707))))

(declare-fun lt!446747 () array!63637)

(declare-fun lt!446751 () (_ BitVec 64))

(assert (=> b!1010823 (= res!679107 (not (= lt!446749 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!446751 mask!3464) lt!446751 lt!446747 mask!3464))))))

(declare-fun k!2224 () (_ BitVec 64))

(assert (=> b!1010823 (= lt!446751 (select (store (arr!30631 a!3219) i!1194 k!2224) j!170))))

(assert (=> b!1010823 (= lt!446747 (array!63638 (store (arr!30631 a!3219) i!1194 k!2224) (size!31134 a!3219)))))

(declare-fun b!1010824 () Bool)

(assert (=> b!1010824 (= e!568706 e!568703)))

(declare-fun res!679099 () Bool)

(assert (=> b!1010824 (=> (not res!679099) (not e!568703))))

(declare-fun lt!446748 () SeekEntryResult!9563)

(assert (=> b!1010824 (= res!679099 (or (= lt!446748 (MissingVacant!9563 i!1194)) (= lt!446748 (MissingZero!9563 i!1194))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63637 (_ BitVec 32)) SeekEntryResult!9563)

(assert (=> b!1010824 (= lt!446748 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!1010825 () Bool)

(declare-fun res!679105 () Bool)

(assert (=> b!1010825 (=> (not res!679105) (not e!568706))))

(declare-fun arrayContainsKey!0 (array!63637 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1010825 (= res!679105 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!1010826 () Bool)

(declare-fun res!679108 () Bool)

(assert (=> b!1010826 (=> (not res!679108) (not e!568707))))

(assert (=> b!1010826 (= res!679108 (not (= lt!446750 (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 lt!446751 lt!446747 mask!3464))))))

(declare-fun b!1010827 () Bool)

(declare-fun res!679106 () Bool)

(assert (=> b!1010827 (=> (not res!679106) (not e!568703))))

(declare-datatypes ((List!21433 0))(
  ( (Nil!21430) (Cons!21429 (h!22624 (_ BitVec 64)) (t!30442 List!21433)) )
))
(declare-fun arrayNoDuplicates!0 (array!63637 (_ BitVec 32) List!21433) Bool)

(assert (=> b!1010827 (= res!679106 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21430))))

(declare-fun b!1010828 () Bool)

(declare-fun res!679103 () Bool)

(assert (=> b!1010828 (=> (not res!679103) (not e!568706))))

(assert (=> b!1010828 (= res!679103 (validKeyInArray!0 k!2224))))

(declare-fun b!1010829 () Bool)

(declare-fun res!679097 () Bool)

(assert (=> b!1010829 (=> (not res!679097) (not e!568703))))

(assert (=> b!1010829 (= res!679097 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!31134 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!31134 a!3219))))))

(declare-fun b!1010830 () Bool)

(declare-fun res!679102 () Bool)

(assert (=> b!1010830 (=> (not res!679102) (not e!568707))))

(assert (=> b!1010830 (= res!679102 (and (not (= index!1507 resIndex!38)) (not (= index!1507 i!1194))))))

(assert (= (and start!87232 res!679111) b!1010817))

(assert (= (and b!1010817 res!679104) b!1010820))

(assert (= (and b!1010820 res!679098) b!1010828))

(assert (= (and b!1010828 res!679103) b!1010825))

(assert (= (and b!1010825 res!679105) b!1010824))

(assert (= (and b!1010824 res!679099) b!1010818))

(assert (= (and b!1010818 res!679100) b!1010827))

(assert (= (and b!1010827 res!679106) b!1010829))

(assert (= (and b!1010829 res!679097) b!1010822))

(assert (= (and b!1010822 res!679109) b!1010819))

(assert (= (and b!1010819 res!679101) b!1010823))

(assert (= (and b!1010823 res!679107) b!1010826))

(assert (= (and b!1010826 res!679108) b!1010830))

(assert (= (and b!1010830 res!679102) b!1010816))

(assert (= (and b!1010816 res!679110) b!1010821))

(declare-fun m!935115 () Bool)

(assert (=> b!1010824 m!935115))

(declare-fun m!935117 () Bool)

(assert (=> b!1010822 m!935117))

(assert (=> b!1010822 m!935117))

(declare-fun m!935119 () Bool)

(assert (=> b!1010822 m!935119))

(assert (=> b!1010822 m!935119))

(assert (=> b!1010822 m!935117))

(declare-fun m!935121 () Bool)

(assert (=> b!1010822 m!935121))

(declare-fun m!935123 () Bool)

(assert (=> start!87232 m!935123))

(declare-fun m!935125 () Bool)

(assert (=> start!87232 m!935125))

(assert (=> b!1010819 m!935117))

(assert (=> b!1010819 m!935117))

(declare-fun m!935127 () Bool)

(assert (=> b!1010819 m!935127))

(declare-fun m!935129 () Bool)

(assert (=> b!1010827 m!935129))

(declare-fun m!935131 () Bool)

(assert (=> b!1010828 m!935131))

(declare-fun m!935133 () Bool)

(assert (=> b!1010818 m!935133))

(assert (=> b!1010821 m!935117))

(assert (=> b!1010821 m!935117))

(declare-fun m!935135 () Bool)

(assert (=> b!1010821 m!935135))

(assert (=> b!1010820 m!935117))

(assert (=> b!1010820 m!935117))

(declare-fun m!935137 () Bool)

(assert (=> b!1010820 m!935137))

(declare-fun m!935139 () Bool)

(assert (=> b!1010816 m!935139))

(declare-fun m!935141 () Bool)

(assert (=> b!1010823 m!935141))

(assert (=> b!1010823 m!935141))

(declare-fun m!935143 () Bool)

(assert (=> b!1010823 m!935143))

(declare-fun m!935145 () Bool)

(assert (=> b!1010823 m!935145))

(declare-fun m!935147 () Bool)

(assert (=> b!1010823 m!935147))

(declare-fun m!935149 () Bool)

(assert (=> b!1010825 m!935149))

(declare-fun m!935151 () Bool)

(assert (=> b!1010826 m!935151))

(push 1)

