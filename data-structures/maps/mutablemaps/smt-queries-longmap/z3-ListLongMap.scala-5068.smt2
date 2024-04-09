; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68940 () Bool)

(assert start!68940)

(declare-fun b!803786 () Bool)

(declare-fun res!548478 () Bool)

(declare-fun e!445381 () Bool)

(assert (=> b!803786 (=> (not res!548478) (not e!445381))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803786 (= res!548478 (validKeyInArray!0 k0!2044))))

(declare-fun b!803787 () Bool)

(declare-fun e!445380 () Bool)

(declare-fun e!445383 () Bool)

(assert (=> b!803787 (= e!445380 e!445383)))

(declare-fun res!548476 () Bool)

(assert (=> b!803787 (=> (not res!548476) (not e!445383))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!359921 () (_ BitVec 64))

(declare-datatypes ((array!43681 0))(
  ( (array!43682 (arr!20917 (Array (_ BitVec 32) (_ BitVec 64))) (size!21338 (_ BitVec 32))) )
))
(declare-fun lt!359924 () array!43681)

(declare-datatypes ((SeekEntryResult!8515 0))(
  ( (MissingZero!8515 (index!36427 (_ BitVec 32))) (Found!8515 (index!36428 (_ BitVec 32))) (Intermediate!8515 (undefined!9327 Bool) (index!36429 (_ BitVec 32)) (x!67290 (_ BitVec 32))) (Undefined!8515) (MissingVacant!8515 (index!36430 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43681 (_ BitVec 32)) SeekEntryResult!8515)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43681 (_ BitVec 32)) SeekEntryResult!8515)

(assert (=> b!803787 (= res!548476 (= (seekEntryOrOpen!0 lt!359921 lt!359924 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359921 lt!359924 mask!3266)))))

(declare-fun a!3170 () array!43681)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!803787 (= lt!359921 (select (store (arr!20917 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!803787 (= lt!359924 (array!43682 (store (arr!20917 a!3170) i!1163 k0!2044) (size!21338 a!3170)))))

(declare-fun b!803788 () Bool)

(declare-fun res!548477 () Bool)

(assert (=> b!803788 (=> (not res!548477) (not e!445380))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!803788 (= res!548477 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21338 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20917 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21338 a!3170)) (= (select (arr!20917 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803789 () Bool)

(assert (=> b!803789 (= e!445381 e!445380)))

(declare-fun res!548482 () Bool)

(assert (=> b!803789 (=> (not res!548482) (not e!445380))))

(declare-fun lt!359925 () SeekEntryResult!8515)

(assert (=> b!803789 (= res!548482 (or (= lt!359925 (MissingZero!8515 i!1163)) (= lt!359925 (MissingVacant!8515 i!1163))))))

(assert (=> b!803789 (= lt!359925 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!803790 () Bool)

(declare-fun res!548481 () Bool)

(assert (=> b!803790 (=> (not res!548481) (not e!445381))))

(assert (=> b!803790 (= res!548481 (and (= (size!21338 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21338 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21338 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!548475 () Bool)

(assert (=> start!68940 (=> (not res!548475) (not e!445381))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68940 (= res!548475 (validMask!0 mask!3266))))

(assert (=> start!68940 e!445381))

(assert (=> start!68940 true))

(declare-fun array_inv!16691 (array!43681) Bool)

(assert (=> start!68940 (array_inv!16691 a!3170)))

(declare-fun b!803791 () Bool)

(declare-fun res!548484 () Bool)

(assert (=> b!803791 (=> (not res!548484) (not e!445381))))

(assert (=> b!803791 (= res!548484 (validKeyInArray!0 (select (arr!20917 a!3170) j!153)))))

(declare-fun b!803792 () Bool)

(declare-fun res!548485 () Bool)

(assert (=> b!803792 (=> (not res!548485) (not e!445380))))

(declare-datatypes ((List!14933 0))(
  ( (Nil!14930) (Cons!14929 (h!16058 (_ BitVec 64)) (t!21256 List!14933)) )
))
(declare-fun arrayNoDuplicates!0 (array!43681 (_ BitVec 32) List!14933) Bool)

(assert (=> b!803792 (= res!548485 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14930))))

(declare-fun b!803793 () Bool)

(declare-fun res!548480 () Bool)

(assert (=> b!803793 (=> (not res!548480) (not e!445381))))

(declare-fun arrayContainsKey!0 (array!43681 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803793 (= res!548480 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803794 () Bool)

(declare-fun e!445382 () Bool)

(assert (=> b!803794 (= e!445383 e!445382)))

(declare-fun res!548479 () Bool)

(assert (=> b!803794 (=> (not res!548479) (not e!445382))))

(declare-fun lt!359922 () SeekEntryResult!8515)

(declare-fun lt!359926 () SeekEntryResult!8515)

(assert (=> b!803794 (= res!548479 (and (= lt!359926 lt!359922) (= lt!359922 (Found!8515 j!153)) (not (= (select (arr!20917 a!3170) index!1236) (select (arr!20917 a!3170) j!153)))))))

(assert (=> b!803794 (= lt!359922 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20917 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!803794 (= lt!359926 (seekEntryOrOpen!0 (select (arr!20917 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!803795 () Bool)

(assert (=> b!803795 (= e!445382 (not true))))

(declare-fun lt!359923 () (_ BitVec 32))

(assert (=> b!803795 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359923 vacantAfter!23 lt!359921 lt!359924 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359923 vacantBefore!23 (select (arr!20917 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27572 0))(
  ( (Unit!27573) )
))
(declare-fun lt!359920 () Unit!27572)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43681 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27572)

(assert (=> b!803795 (= lt!359920 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k0!2044 j!153 lt!359923 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803795 (= lt!359923 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!803796 () Bool)

(declare-fun res!548483 () Bool)

(assert (=> b!803796 (=> (not res!548483) (not e!445380))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43681 (_ BitVec 32)) Bool)

(assert (=> b!803796 (= res!548483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(assert (= (and start!68940 res!548475) b!803790))

(assert (= (and b!803790 res!548481) b!803791))

(assert (= (and b!803791 res!548484) b!803786))

(assert (= (and b!803786 res!548478) b!803793))

(assert (= (and b!803793 res!548480) b!803789))

(assert (= (and b!803789 res!548482) b!803796))

(assert (= (and b!803796 res!548483) b!803792))

(assert (= (and b!803792 res!548485) b!803788))

(assert (= (and b!803788 res!548477) b!803787))

(assert (= (and b!803787 res!548476) b!803794))

(assert (= (and b!803794 res!548479) b!803795))

(declare-fun m!745749 () Bool)

(assert (=> b!803792 m!745749))

(declare-fun m!745751 () Bool)

(assert (=> b!803789 m!745751))

(declare-fun m!745753 () Bool)

(assert (=> b!803787 m!745753))

(declare-fun m!745755 () Bool)

(assert (=> b!803787 m!745755))

(declare-fun m!745757 () Bool)

(assert (=> b!803787 m!745757))

(declare-fun m!745759 () Bool)

(assert (=> b!803787 m!745759))

(declare-fun m!745761 () Bool)

(assert (=> b!803794 m!745761))

(declare-fun m!745763 () Bool)

(assert (=> b!803794 m!745763))

(assert (=> b!803794 m!745763))

(declare-fun m!745765 () Bool)

(assert (=> b!803794 m!745765))

(assert (=> b!803794 m!745763))

(declare-fun m!745767 () Bool)

(assert (=> b!803794 m!745767))

(assert (=> b!803795 m!745763))

(assert (=> b!803795 m!745763))

(declare-fun m!745769 () Bool)

(assert (=> b!803795 m!745769))

(declare-fun m!745771 () Bool)

(assert (=> b!803795 m!745771))

(declare-fun m!745773 () Bool)

(assert (=> b!803795 m!745773))

(declare-fun m!745775 () Bool)

(assert (=> b!803795 m!745775))

(declare-fun m!745777 () Bool)

(assert (=> b!803788 m!745777))

(declare-fun m!745779 () Bool)

(assert (=> b!803788 m!745779))

(declare-fun m!745781 () Bool)

(assert (=> b!803796 m!745781))

(declare-fun m!745783 () Bool)

(assert (=> b!803786 m!745783))

(declare-fun m!745785 () Bool)

(assert (=> start!68940 m!745785))

(declare-fun m!745787 () Bool)

(assert (=> start!68940 m!745787))

(declare-fun m!745789 () Bool)

(assert (=> b!803793 m!745789))

(assert (=> b!803791 m!745763))

(assert (=> b!803791 m!745763))

(declare-fun m!745791 () Bool)

(assert (=> b!803791 m!745791))

(check-sat (not b!803793) (not b!803787) (not b!803789) (not b!803791) (not b!803795) (not start!68940) (not b!803792) (not b!803796) (not b!803786) (not b!803794))
(check-sat)
