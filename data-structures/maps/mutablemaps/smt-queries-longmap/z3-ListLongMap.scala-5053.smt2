; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68850 () Bool)

(assert start!68850)

(declare-fun b!802216 () Bool)

(declare-fun res!546906 () Bool)

(declare-fun e!444624 () Bool)

(assert (=> b!802216 (=> (not res!546906) (not e!444624))))

(declare-datatypes ((array!43591 0))(
  ( (array!43592 (arr!20872 (Array (_ BitVec 32) (_ BitVec 64))) (size!21293 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43591)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802216 (= res!546906 (validKeyInArray!0 (select (arr!20872 a!3170) j!153)))))

(declare-fun b!802217 () Bool)

(declare-fun e!444621 () Bool)

(declare-fun e!444620 () Bool)

(assert (=> b!802217 (= e!444621 e!444620)))

(declare-fun res!546915 () Bool)

(assert (=> b!802217 (=> (not res!546915) (not e!444620))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!358762 () array!43591)

(declare-fun lt!358765 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8470 0))(
  ( (MissingZero!8470 (index!36247 (_ BitVec 32))) (Found!8470 (index!36248 (_ BitVec 32))) (Intermediate!8470 (undefined!9282 Bool) (index!36249 (_ BitVec 32)) (x!67125 (_ BitVec 32))) (Undefined!8470) (MissingVacant!8470 (index!36250 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43591 (_ BitVec 32)) SeekEntryResult!8470)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43591 (_ BitVec 32)) SeekEntryResult!8470)

(assert (=> b!802217 (= res!546915 (= (seekEntryOrOpen!0 lt!358765 lt!358762 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358765 lt!358762 mask!3266)))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!802217 (= lt!358765 (select (store (arr!20872 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!802217 (= lt!358762 (array!43592 (store (arr!20872 a!3170) i!1163 k0!2044) (size!21293 a!3170)))))

(declare-fun b!802218 () Bool)

(declare-fun e!444623 () Bool)

(assert (=> b!802218 (= e!444620 e!444623)))

(declare-fun res!546912 () Bool)

(assert (=> b!802218 (=> (not res!546912) (not e!444623))))

(declare-fun lt!358764 () SeekEntryResult!8470)

(declare-fun lt!358761 () SeekEntryResult!8470)

(assert (=> b!802218 (= res!546912 (and (= lt!358761 lt!358764) (= lt!358764 (Found!8470 j!153)) (not (= (select (arr!20872 a!3170) index!1236) (select (arr!20872 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!802218 (= lt!358764 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20872 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!802218 (= lt!358761 (seekEntryOrOpen!0 (select (arr!20872 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!802219 () Bool)

(declare-fun res!546911 () Bool)

(assert (=> b!802219 (=> (not res!546911) (not e!444621))))

(declare-datatypes ((List!14888 0))(
  ( (Nil!14885) (Cons!14884 (h!16013 (_ BitVec 64)) (t!21211 List!14888)) )
))
(declare-fun arrayNoDuplicates!0 (array!43591 (_ BitVec 32) List!14888) Bool)

(assert (=> b!802219 (= res!546911 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14885))))

(declare-fun b!802220 () Bool)

(declare-fun res!546907 () Bool)

(assert (=> b!802220 (=> (not res!546907) (not e!444621))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43591 (_ BitVec 32)) Bool)

(assert (=> b!802220 (= res!546907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802221 () Bool)

(declare-fun e!444625 () Bool)

(assert (=> b!802221 (= e!444623 (not e!444625))))

(declare-fun res!546908 () Bool)

(assert (=> b!802221 (=> res!546908 e!444625)))

(assert (=> b!802221 (= res!546908 (or (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (not (= (select (store (arr!20872 a!3170) i!1163 k0!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!358759 () (_ BitVec 32))

(assert (=> b!802221 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358759 vacantAfter!23 lt!358765 lt!358762 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358759 vacantBefore!23 (select (arr!20872 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27482 0))(
  ( (Unit!27483) )
))
(declare-fun lt!358763 () Unit!27482)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43591 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27482)

(assert (=> b!802221 (= lt!358763 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!358759 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802221 (= lt!358759 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!802222 () Bool)

(declare-fun res!546916 () Bool)

(assert (=> b!802222 (=> (not res!546916) (not e!444621))))

(assert (=> b!802222 (= res!546916 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21293 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20872 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21293 a!3170)) (= (select (arr!20872 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!802223 () Bool)

(declare-fun res!546914 () Bool)

(assert (=> b!802223 (=> (not res!546914) (not e!444624))))

(declare-fun arrayContainsKey!0 (array!43591 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802223 (= res!546914 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun res!546905 () Bool)

(assert (=> start!68850 (=> (not res!546905) (not e!444624))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68850 (= res!546905 (validMask!0 mask!3266))))

(assert (=> start!68850 e!444624))

(assert (=> start!68850 true))

(declare-fun array_inv!16646 (array!43591) Bool)

(assert (=> start!68850 (array_inv!16646 a!3170)))

(declare-fun b!802224 () Bool)

(declare-fun res!546909 () Bool)

(assert (=> b!802224 (=> (not res!546909) (not e!444624))))

(assert (=> b!802224 (= res!546909 (and (= (size!21293 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21293 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21293 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802225 () Bool)

(assert (=> b!802225 (= e!444624 e!444621)))

(declare-fun res!546913 () Bool)

(assert (=> b!802225 (=> (not res!546913) (not e!444621))))

(declare-fun lt!358760 () SeekEntryResult!8470)

(assert (=> b!802225 (= res!546913 (or (= lt!358760 (MissingZero!8470 i!1163)) (= lt!358760 (MissingVacant!8470 i!1163))))))

(assert (=> b!802225 (= lt!358760 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!802226 () Bool)

(assert (=> b!802226 (= e!444625 (validKeyInArray!0 lt!358765))))

(declare-fun b!802227 () Bool)

(declare-fun res!546910 () Bool)

(assert (=> b!802227 (=> (not res!546910) (not e!444624))))

(assert (=> b!802227 (= res!546910 (validKeyInArray!0 k0!2044))))

(assert (= (and start!68850 res!546905) b!802224))

(assert (= (and b!802224 res!546909) b!802216))

(assert (= (and b!802216 res!546906) b!802227))

(assert (= (and b!802227 res!546910) b!802223))

(assert (= (and b!802223 res!546914) b!802225))

(assert (= (and b!802225 res!546913) b!802220))

(assert (= (and b!802220 res!546907) b!802219))

(assert (= (and b!802219 res!546911) b!802222))

(assert (= (and b!802222 res!546916) b!802217))

(assert (= (and b!802217 res!546915) b!802218))

(assert (= (and b!802218 res!546912) b!802221))

(assert (= (and b!802221 (not res!546908)) b!802226))

(declare-fun m!743743 () Bool)

(assert (=> b!802225 m!743743))

(declare-fun m!743745 () Bool)

(assert (=> b!802226 m!743745))

(declare-fun m!743747 () Bool)

(assert (=> b!802218 m!743747))

(declare-fun m!743749 () Bool)

(assert (=> b!802218 m!743749))

(assert (=> b!802218 m!743749))

(declare-fun m!743751 () Bool)

(assert (=> b!802218 m!743751))

(assert (=> b!802218 m!743749))

(declare-fun m!743753 () Bool)

(assert (=> b!802218 m!743753))

(declare-fun m!743755 () Bool)

(assert (=> b!802223 m!743755))

(assert (=> b!802216 m!743749))

(assert (=> b!802216 m!743749))

(declare-fun m!743757 () Bool)

(assert (=> b!802216 m!743757))

(assert (=> b!802221 m!743749))

(declare-fun m!743759 () Bool)

(assert (=> b!802221 m!743759))

(declare-fun m!743761 () Bool)

(assert (=> b!802221 m!743761))

(assert (=> b!802221 m!743749))

(declare-fun m!743763 () Bool)

(assert (=> b!802221 m!743763))

(declare-fun m!743765 () Bool)

(assert (=> b!802221 m!743765))

(declare-fun m!743767 () Bool)

(assert (=> b!802221 m!743767))

(declare-fun m!743769 () Bool)

(assert (=> b!802221 m!743769))

(declare-fun m!743771 () Bool)

(assert (=> b!802227 m!743771))

(declare-fun m!743773 () Bool)

(assert (=> b!802220 m!743773))

(declare-fun m!743775 () Bool)

(assert (=> b!802217 m!743775))

(declare-fun m!743777 () Bool)

(assert (=> b!802217 m!743777))

(assert (=> b!802217 m!743765))

(declare-fun m!743779 () Bool)

(assert (=> b!802217 m!743779))

(declare-fun m!743781 () Bool)

(assert (=> b!802219 m!743781))

(declare-fun m!743783 () Bool)

(assert (=> b!802222 m!743783))

(declare-fun m!743785 () Bool)

(assert (=> b!802222 m!743785))

(declare-fun m!743787 () Bool)

(assert (=> start!68850 m!743787))

(declare-fun m!743789 () Bool)

(assert (=> start!68850 m!743789))

(check-sat (not b!802220) (not b!802218) (not b!802216) (not b!802226) (not start!68850) (not b!802219) (not b!802227) (not b!802223) (not b!802225) (not b!802221) (not b!802217))
(check-sat)
