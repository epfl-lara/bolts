; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68846 () Bool)

(assert start!68846)

(declare-fun res!546839 () Bool)

(declare-fun e!444588 () Bool)

(assert (=> start!68846 (=> (not res!546839) (not e!444588))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68846 (= res!546839 (validMask!0 mask!3266))))

(assert (=> start!68846 e!444588))

(assert (=> start!68846 true))

(declare-datatypes ((array!43587 0))(
  ( (array!43588 (arr!20870 (Array (_ BitVec 32) (_ BitVec 64))) (size!21291 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43587)

(declare-fun array_inv!16644 (array!43587) Bool)

(assert (=> start!68846 (array_inv!16644 a!3170)))

(declare-fun b!802145 () Bool)

(declare-fun e!444587 () Bool)

(assert (=> b!802145 (= e!444588 e!444587)))

(declare-fun res!546836 () Bool)

(assert (=> b!802145 (=> (not res!546836) (not e!444587))))

(declare-datatypes ((SeekEntryResult!8468 0))(
  ( (MissingZero!8468 (index!36239 (_ BitVec 32))) (Found!8468 (index!36240 (_ BitVec 32))) (Intermediate!8468 (undefined!9280 Bool) (index!36241 (_ BitVec 32)) (x!67115 (_ BitVec 32))) (Undefined!8468) (MissingVacant!8468 (index!36242 (_ BitVec 32))) )
))
(declare-fun lt!358718 () SeekEntryResult!8468)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!802145 (= res!546836 (or (= lt!358718 (MissingZero!8468 i!1163)) (= lt!358718 (MissingVacant!8468 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43587 (_ BitVec 32)) SeekEntryResult!8468)

(assert (=> b!802145 (= lt!358718 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!802146 () Bool)

(declare-fun res!546841 () Bool)

(assert (=> b!802146 (=> (not res!546841) (not e!444588))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!802146 (= res!546841 (and (= (size!21291 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21291 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21291 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802147 () Bool)

(declare-fun res!546837 () Bool)

(assert (=> b!802147 (=> (not res!546837) (not e!444587))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!802147 (= res!546837 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21291 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20870 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21291 a!3170)) (= (select (arr!20870 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!802148 () Bool)

(declare-fun res!546843 () Bool)

(assert (=> b!802148 (=> (not res!546843) (not e!444588))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802148 (= res!546843 (validKeyInArray!0 (select (arr!20870 a!3170) j!153)))))

(declare-fun b!802149 () Bool)

(declare-fun e!444589 () Bool)

(declare-fun e!444586 () Bool)

(assert (=> b!802149 (= e!444589 e!444586)))

(declare-fun res!546835 () Bool)

(assert (=> b!802149 (=> (not res!546835) (not e!444586))))

(declare-fun lt!358723 () SeekEntryResult!8468)

(declare-fun lt!358719 () SeekEntryResult!8468)

(assert (=> b!802149 (= res!546835 (and (= lt!358723 lt!358719) (= lt!358719 (Found!8468 j!153)) (not (= (select (arr!20870 a!3170) index!1236) (select (arr!20870 a!3170) j!153)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43587 (_ BitVec 32)) SeekEntryResult!8468)

(assert (=> b!802149 (= lt!358719 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20870 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!802149 (= lt!358723 (seekEntryOrOpen!0 (select (arr!20870 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!802150 () Bool)

(declare-fun res!546834 () Bool)

(assert (=> b!802150 (=> (not res!546834) (not e!444587))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43587 (_ BitVec 32)) Bool)

(assert (=> b!802150 (= res!546834 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802151 () Bool)

(declare-fun res!546838 () Bool)

(assert (=> b!802151 (=> (not res!546838) (not e!444588))))

(declare-fun arrayContainsKey!0 (array!43587 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802151 (= res!546838 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802152 () Bool)

(declare-fun res!546842 () Bool)

(assert (=> b!802152 (=> (not res!546842) (not e!444587))))

(declare-datatypes ((List!14886 0))(
  ( (Nil!14883) (Cons!14882 (h!16011 (_ BitVec 64)) (t!21209 List!14886)) )
))
(declare-fun arrayNoDuplicates!0 (array!43587 (_ BitVec 32) List!14886) Bool)

(assert (=> b!802152 (= res!546842 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14883))))

(declare-fun b!802153 () Bool)

(assert (=> b!802153 (= e!444587 e!444589)))

(declare-fun res!546844 () Bool)

(assert (=> b!802153 (=> (not res!546844) (not e!444589))))

(declare-fun lt!358717 () array!43587)

(declare-fun lt!358720 () (_ BitVec 64))

(assert (=> b!802153 (= res!546844 (= (seekEntryOrOpen!0 lt!358720 lt!358717 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358720 lt!358717 mask!3266)))))

(assert (=> b!802153 (= lt!358720 (select (store (arr!20870 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!802153 (= lt!358717 (array!43588 (store (arr!20870 a!3170) i!1163 k!2044) (size!21291 a!3170)))))

(declare-fun b!802154 () Bool)

(assert (=> b!802154 (= e!444586 (not (or (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (= (select (store (arr!20870 a!3170) i!1163 k!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!358721 () (_ BitVec 32))

(assert (=> b!802154 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358721 vacantAfter!23 lt!358720 lt!358717 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358721 vacantBefore!23 (select (arr!20870 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27478 0))(
  ( (Unit!27479) )
))
(declare-fun lt!358722 () Unit!27478)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43587 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27478)

(assert (=> b!802154 (= lt!358722 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!358721 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802154 (= lt!358721 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!802155 () Bool)

(declare-fun res!546840 () Bool)

(assert (=> b!802155 (=> (not res!546840) (not e!444588))))

(assert (=> b!802155 (= res!546840 (validKeyInArray!0 k!2044))))

(assert (= (and start!68846 res!546839) b!802146))

(assert (= (and b!802146 res!546841) b!802148))

(assert (= (and b!802148 res!546843) b!802155))

(assert (= (and b!802155 res!546840) b!802151))

(assert (= (and b!802151 res!546838) b!802145))

(assert (= (and b!802145 res!546836) b!802150))

(assert (= (and b!802150 res!546834) b!802152))

(assert (= (and b!802152 res!546842) b!802147))

(assert (= (and b!802147 res!546837) b!802153))

(assert (= (and b!802153 res!546844) b!802149))

(assert (= (and b!802149 res!546835) b!802154))

(declare-fun m!743649 () Bool)

(assert (=> b!802147 m!743649))

(declare-fun m!743651 () Bool)

(assert (=> b!802147 m!743651))

(declare-fun m!743653 () Bool)

(assert (=> b!802148 m!743653))

(assert (=> b!802148 m!743653))

(declare-fun m!743655 () Bool)

(assert (=> b!802148 m!743655))

(declare-fun m!743657 () Bool)

(assert (=> b!802150 m!743657))

(declare-fun m!743659 () Bool)

(assert (=> b!802149 m!743659))

(assert (=> b!802149 m!743653))

(assert (=> b!802149 m!743653))

(declare-fun m!743661 () Bool)

(assert (=> b!802149 m!743661))

(assert (=> b!802149 m!743653))

(declare-fun m!743663 () Bool)

(assert (=> b!802149 m!743663))

(declare-fun m!743665 () Bool)

(assert (=> b!802153 m!743665))

(declare-fun m!743667 () Bool)

(assert (=> b!802153 m!743667))

(declare-fun m!743669 () Bool)

(assert (=> b!802153 m!743669))

(declare-fun m!743671 () Bool)

(assert (=> b!802153 m!743671))

(declare-fun m!743673 () Bool)

(assert (=> b!802155 m!743673))

(declare-fun m!743675 () Bool)

(assert (=> b!802151 m!743675))

(declare-fun m!743677 () Bool)

(assert (=> b!802152 m!743677))

(declare-fun m!743679 () Bool)

(assert (=> b!802145 m!743679))

(declare-fun m!743681 () Bool)

(assert (=> start!68846 m!743681))

(declare-fun m!743683 () Bool)

(assert (=> start!68846 m!743683))

(assert (=> b!802154 m!743653))

(declare-fun m!743685 () Bool)

(assert (=> b!802154 m!743685))

(declare-fun m!743687 () Bool)

(assert (=> b!802154 m!743687))

(assert (=> b!802154 m!743653))

(declare-fun m!743689 () Bool)

(assert (=> b!802154 m!743689))

(declare-fun m!743691 () Bool)

(assert (=> b!802154 m!743691))

(declare-fun m!743693 () Bool)

(assert (=> b!802154 m!743693))

(assert (=> b!802154 m!743669))

(push 1)

(assert (not b!802150))

(assert (not b!802153))

(assert (not b!802148))

(assert (not b!802151))

(assert (not b!802145))

(assert (not b!802152))

(assert (not start!68846))

(assert (not b!802155))

(assert (not b!802149))

