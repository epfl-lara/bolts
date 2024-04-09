; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68896 () Bool)

(assert start!68896)

(declare-fun b!803019 () Bool)

(declare-fun e!445014 () Bool)

(declare-fun e!445011 () Bool)

(assert (=> b!803019 (= e!445014 (not e!445011))))

(declare-fun res!547719 () Bool)

(assert (=> b!803019 (=> res!547719 e!445011)))

(declare-datatypes ((SeekEntryResult!8493 0))(
  ( (MissingZero!8493 (index!36339 (_ BitVec 32))) (Found!8493 (index!36340 (_ BitVec 32))) (Intermediate!8493 (undefined!9305 Bool) (index!36341 (_ BitVec 32)) (x!67212 (_ BitVec 32))) (Undefined!8493) (MissingVacant!8493 (index!36342 (_ BitVec 32))) )
))
(declare-fun lt!359360 () SeekEntryResult!8493)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43637 0))(
  ( (array!43638 (arr!20895 (Array (_ BitVec 32) (_ BitVec 64))) (size!21316 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43637)

(declare-fun lt!359361 () SeekEntryResult!8493)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!803019 (= res!547719 (or (not (= lt!359360 lt!359361)) (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (not (= (select (store (arr!20895 a!3170) i!1163 k!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!359364 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!359365 () (_ BitVec 64))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun lt!359362 () array!43637)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43637 (_ BitVec 32)) SeekEntryResult!8493)

(assert (=> b!803019 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359364 vacantAfter!23 lt!359365 lt!359362 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359364 vacantBefore!23 (select (arr!20895 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27528 0))(
  ( (Unit!27529) )
))
(declare-fun lt!359358 () Unit!27528)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43637 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27528)

(assert (=> b!803019 (= lt!359358 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359364 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803019 (= lt!359364 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!803020 () Bool)

(declare-fun e!445012 () Bool)

(assert (=> b!803020 (= e!445012 e!445014)))

(declare-fun res!547716 () Bool)

(assert (=> b!803020 (=> (not res!547716) (not e!445014))))

(declare-fun lt!359363 () SeekEntryResult!8493)

(assert (=> b!803020 (= res!547716 (and (= lt!359363 lt!359361) (not (= (select (arr!20895 a!3170) index!1236) (select (arr!20895 a!3170) j!153)))))))

(assert (=> b!803020 (= lt!359361 (Found!8493 j!153))))

(declare-fun res!547720 () Bool)

(declare-fun e!445013 () Bool)

(assert (=> start!68896 (=> (not res!547720) (not e!445013))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68896 (= res!547720 (validMask!0 mask!3266))))

(assert (=> start!68896 e!445013))

(assert (=> start!68896 true))

(declare-fun array_inv!16669 (array!43637) Bool)

(assert (=> start!68896 (array_inv!16669 a!3170)))

(declare-fun b!803021 () Bool)

(declare-fun res!547718 () Bool)

(declare-fun e!445009 () Bool)

(assert (=> b!803021 (=> (not res!547718) (not e!445009))))

(declare-datatypes ((List!14911 0))(
  ( (Nil!14908) (Cons!14907 (h!16036 (_ BitVec 64)) (t!21234 List!14911)) )
))
(declare-fun arrayNoDuplicates!0 (array!43637 (_ BitVec 32) List!14911) Bool)

(assert (=> b!803021 (= res!547718 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14908))))

(declare-fun b!803022 () Bool)

(declare-fun e!445015 () Bool)

(assert (=> b!803022 (= e!445015 e!445012)))

(declare-fun res!547717 () Bool)

(assert (=> b!803022 (=> (not res!547717) (not e!445012))))

(declare-fun lt!359356 () SeekEntryResult!8493)

(assert (=> b!803022 (= res!547717 (= lt!359356 lt!359363))))

(assert (=> b!803022 (= lt!359363 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20895 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43637 (_ BitVec 32)) SeekEntryResult!8493)

(assert (=> b!803022 (= lt!359356 (seekEntryOrOpen!0 (select (arr!20895 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!803023 () Bool)

(declare-fun res!547709 () Bool)

(assert (=> b!803023 (=> (not res!547709) (not e!445013))))

(declare-fun arrayContainsKey!0 (array!43637 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803023 (= res!547709 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803024 () Bool)

(declare-fun res!547708 () Bool)

(assert (=> b!803024 (=> (not res!547708) (not e!445009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43637 (_ BitVec 32)) Bool)

(assert (=> b!803024 (= res!547708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803025 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803025 (= e!445011 (validKeyInArray!0 lt!359365))))

(declare-fun b!803026 () Bool)

(assert (=> b!803026 (= e!445013 e!445009)))

(declare-fun res!547710 () Bool)

(assert (=> b!803026 (=> (not res!547710) (not e!445009))))

(declare-fun lt!359357 () SeekEntryResult!8493)

(assert (=> b!803026 (= res!547710 (or (= lt!359357 (MissingZero!8493 i!1163)) (= lt!359357 (MissingVacant!8493 i!1163))))))

(assert (=> b!803026 (= lt!359357 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!803027 () Bool)

(declare-fun res!547712 () Bool)

(assert (=> b!803027 (=> (not res!547712) (not e!445013))))

(assert (=> b!803027 (= res!547712 (validKeyInArray!0 (select (arr!20895 a!3170) j!153)))))

(declare-fun b!803028 () Bool)

(assert (=> b!803028 (= e!445009 e!445015)))

(declare-fun res!547713 () Bool)

(assert (=> b!803028 (=> (not res!547713) (not e!445015))))

(declare-fun lt!359359 () SeekEntryResult!8493)

(assert (=> b!803028 (= res!547713 (= lt!359359 lt!359360))))

(assert (=> b!803028 (= lt!359360 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359365 lt!359362 mask!3266))))

(assert (=> b!803028 (= lt!359359 (seekEntryOrOpen!0 lt!359365 lt!359362 mask!3266))))

(assert (=> b!803028 (= lt!359365 (select (store (arr!20895 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!803028 (= lt!359362 (array!43638 (store (arr!20895 a!3170) i!1163 k!2044) (size!21316 a!3170)))))

(declare-fun b!803029 () Bool)

(declare-fun res!547711 () Bool)

(assert (=> b!803029 (=> (not res!547711) (not e!445013))))

(assert (=> b!803029 (= res!547711 (validKeyInArray!0 k!2044))))

(declare-fun b!803030 () Bool)

(declare-fun res!547715 () Bool)

(assert (=> b!803030 (=> (not res!547715) (not e!445009))))

(assert (=> b!803030 (= res!547715 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21316 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20895 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21316 a!3170)) (= (select (arr!20895 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!803031 () Bool)

(declare-fun res!547714 () Bool)

(assert (=> b!803031 (=> (not res!547714) (not e!445013))))

(assert (=> b!803031 (= res!547714 (and (= (size!21316 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21316 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21316 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68896 res!547720) b!803031))

(assert (= (and b!803031 res!547714) b!803027))

(assert (= (and b!803027 res!547712) b!803029))

(assert (= (and b!803029 res!547711) b!803023))

(assert (= (and b!803023 res!547709) b!803026))

(assert (= (and b!803026 res!547710) b!803024))

(assert (= (and b!803024 res!547708) b!803021))

(assert (= (and b!803021 res!547718) b!803030))

(assert (= (and b!803030 res!547715) b!803028))

(assert (= (and b!803028 res!547713) b!803022))

(assert (= (and b!803022 res!547717) b!803020))

(assert (= (and b!803020 res!547716) b!803019))

(assert (= (and b!803019 (not res!547719)) b!803025))

(declare-fun m!744769 () Bool)

(assert (=> b!803026 m!744769))

(declare-fun m!744771 () Bool)

(assert (=> b!803019 m!744771))

(declare-fun m!744773 () Bool)

(assert (=> b!803019 m!744773))

(declare-fun m!744775 () Bool)

(assert (=> b!803019 m!744775))

(declare-fun m!744777 () Bool)

(assert (=> b!803019 m!744777))

(assert (=> b!803019 m!744771))

(declare-fun m!744779 () Bool)

(assert (=> b!803019 m!744779))

(declare-fun m!744781 () Bool)

(assert (=> b!803019 m!744781))

(declare-fun m!744783 () Bool)

(assert (=> b!803019 m!744783))

(declare-fun m!744785 () Bool)

(assert (=> b!803025 m!744785))

(declare-fun m!744787 () Bool)

(assert (=> b!803021 m!744787))

(declare-fun m!744789 () Bool)

(assert (=> b!803030 m!744789))

(declare-fun m!744791 () Bool)

(assert (=> b!803030 m!744791))

(assert (=> b!803022 m!744771))

(assert (=> b!803022 m!744771))

(declare-fun m!744793 () Bool)

(assert (=> b!803022 m!744793))

(assert (=> b!803022 m!744771))

(declare-fun m!744795 () Bool)

(assert (=> b!803022 m!744795))

(declare-fun m!744797 () Bool)

(assert (=> b!803028 m!744797))

(declare-fun m!744799 () Bool)

(assert (=> b!803028 m!744799))

(assert (=> b!803028 m!744783))

(declare-fun m!744801 () Bool)

(assert (=> b!803028 m!744801))

(assert (=> b!803027 m!744771))

(assert (=> b!803027 m!744771))

(declare-fun m!744803 () Bool)

(assert (=> b!803027 m!744803))

(declare-fun m!744805 () Bool)

(assert (=> start!68896 m!744805))

(declare-fun m!744807 () Bool)

(assert (=> start!68896 m!744807))

(declare-fun m!744809 () Bool)

(assert (=> b!803029 m!744809))

(declare-fun m!744811 () Bool)

(assert (=> b!803024 m!744811))

(declare-fun m!744813 () Bool)

(assert (=> b!803020 m!744813))

(assert (=> b!803020 m!744771))

(declare-fun m!744815 () Bool)

(assert (=> b!803023 m!744815))

(push 1)

