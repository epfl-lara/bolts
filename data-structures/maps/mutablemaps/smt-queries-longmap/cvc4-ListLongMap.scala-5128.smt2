; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69674 () Bool)

(assert start!69674)

(declare-fun b!811406 () Bool)

(declare-fun res!554627 () Bool)

(declare-fun e!449112 () Bool)

(assert (=> b!811406 (=> (not res!554627) (not e!449112))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!44064 0))(
  ( (array!44065 (arr!21098 (Array (_ BitVec 32) (_ BitVec 64))) (size!21519 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44064)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!811406 (= res!554627 (and (= (size!21519 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21519 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21519 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!811407 () Bool)

(declare-fun res!554626 () Bool)

(declare-fun e!449113 () Bool)

(assert (=> b!811407 (=> (not res!554626) (not e!449113))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!811407 (= res!554626 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21519 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21098 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21519 a!3170)) (= (select (arr!21098 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!811408 () Bool)

(declare-fun e!449115 () Bool)

(assert (=> b!811408 (= e!449115 (not true))))

(declare-fun lt!363843 () array!44064)

(declare-fun lt!363840 () (_ BitVec 32))

(declare-fun lt!363838 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8696 0))(
  ( (MissingZero!8696 (index!37154 (_ BitVec 32))) (Found!8696 (index!37155 (_ BitVec 32))) (Intermediate!8696 (undefined!9508 Bool) (index!37156 (_ BitVec 32)) (x!67990 (_ BitVec 32))) (Undefined!8696) (MissingVacant!8696 (index!37157 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44064 (_ BitVec 32)) SeekEntryResult!8696)

(assert (=> b!811408 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363840 vacantAfter!23 lt!363838 lt!363843 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363840 vacantBefore!23 (select (arr!21098 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27654 0))(
  ( (Unit!27655) )
))
(declare-fun lt!363844 () Unit!27654)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44064 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27654)

(assert (=> b!811408 (= lt!363844 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!363840 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!811408 (= lt!363840 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!811409 () Bool)

(declare-fun e!449116 () Bool)

(assert (=> b!811409 (= e!449113 e!449116)))

(declare-fun res!554620 () Bool)

(assert (=> b!811409 (=> (not res!554620) (not e!449116))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44064 (_ BitVec 32)) SeekEntryResult!8696)

(assert (=> b!811409 (= res!554620 (= (seekEntryOrOpen!0 lt!363838 lt!363843 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363838 lt!363843 mask!3266)))))

(assert (=> b!811409 (= lt!363838 (select (store (arr!21098 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!811409 (= lt!363843 (array!44065 (store (arr!21098 a!3170) i!1163 k!2044) (size!21519 a!3170)))))

(declare-fun res!554621 () Bool)

(assert (=> start!69674 (=> (not res!554621) (not e!449112))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69674 (= res!554621 (validMask!0 mask!3266))))

(assert (=> start!69674 e!449112))

(assert (=> start!69674 true))

(declare-fun array_inv!16872 (array!44064) Bool)

(assert (=> start!69674 (array_inv!16872 a!3170)))

(declare-fun b!811410 () Bool)

(declare-fun res!554622 () Bool)

(assert (=> b!811410 (=> (not res!554622) (not e!449113))))

(declare-datatypes ((List!15114 0))(
  ( (Nil!15111) (Cons!15110 (h!16239 (_ BitVec 64)) (t!21437 List!15114)) )
))
(declare-fun arrayNoDuplicates!0 (array!44064 (_ BitVec 32) List!15114) Bool)

(assert (=> b!811410 (= res!554622 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15111))))

(declare-fun b!811411 () Bool)

(declare-fun res!554629 () Bool)

(assert (=> b!811411 (=> (not res!554629) (not e!449112))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!811411 (= res!554629 (validKeyInArray!0 k!2044))))

(declare-fun b!811412 () Bool)

(declare-fun res!554628 () Bool)

(assert (=> b!811412 (=> (not res!554628) (not e!449112))))

(declare-fun arrayContainsKey!0 (array!44064 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!811412 (= res!554628 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!811413 () Bool)

(declare-fun res!554624 () Bool)

(assert (=> b!811413 (=> (not res!554624) (not e!449113))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44064 (_ BitVec 32)) Bool)

(assert (=> b!811413 (= res!554624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!811414 () Bool)

(assert (=> b!811414 (= e!449112 e!449113)))

(declare-fun res!554623 () Bool)

(assert (=> b!811414 (=> (not res!554623) (not e!449113))))

(declare-fun lt!363842 () SeekEntryResult!8696)

(assert (=> b!811414 (= res!554623 (or (= lt!363842 (MissingZero!8696 i!1163)) (= lt!363842 (MissingVacant!8696 i!1163))))))

(assert (=> b!811414 (= lt!363842 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!811415 () Bool)

(assert (=> b!811415 (= e!449116 e!449115)))

(declare-fun res!554625 () Bool)

(assert (=> b!811415 (=> (not res!554625) (not e!449115))))

(declare-fun lt!363839 () SeekEntryResult!8696)

(declare-fun lt!363841 () SeekEntryResult!8696)

(assert (=> b!811415 (= res!554625 (and (= lt!363839 lt!363841) (= lt!363841 (Found!8696 j!153)) (not (= (select (arr!21098 a!3170) index!1236) (select (arr!21098 a!3170) j!153)))))))

(assert (=> b!811415 (= lt!363841 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21098 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!811415 (= lt!363839 (seekEntryOrOpen!0 (select (arr!21098 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!811416 () Bool)

(declare-fun res!554619 () Bool)

(assert (=> b!811416 (=> (not res!554619) (not e!449112))))

(assert (=> b!811416 (= res!554619 (validKeyInArray!0 (select (arr!21098 a!3170) j!153)))))

(assert (= (and start!69674 res!554621) b!811406))

(assert (= (and b!811406 res!554627) b!811416))

(assert (= (and b!811416 res!554619) b!811411))

(assert (= (and b!811411 res!554629) b!811412))

(assert (= (and b!811412 res!554628) b!811414))

(assert (= (and b!811414 res!554623) b!811413))

(assert (= (and b!811413 res!554624) b!811410))

(assert (= (and b!811410 res!554622) b!811407))

(assert (= (and b!811407 res!554626) b!811409))

(assert (= (and b!811409 res!554620) b!811415))

(assert (= (and b!811415 res!554625) b!811408))

(declare-fun m!753893 () Bool)

(assert (=> b!811413 m!753893))

(declare-fun m!753895 () Bool)

(assert (=> b!811415 m!753895))

(declare-fun m!753897 () Bool)

(assert (=> b!811415 m!753897))

(assert (=> b!811415 m!753897))

(declare-fun m!753899 () Bool)

(assert (=> b!811415 m!753899))

(assert (=> b!811415 m!753897))

(declare-fun m!753901 () Bool)

(assert (=> b!811415 m!753901))

(assert (=> b!811408 m!753897))

(declare-fun m!753903 () Bool)

(assert (=> b!811408 m!753903))

(declare-fun m!753905 () Bool)

(assert (=> b!811408 m!753905))

(declare-fun m!753907 () Bool)

(assert (=> b!811408 m!753907))

(assert (=> b!811408 m!753897))

(declare-fun m!753909 () Bool)

(assert (=> b!811408 m!753909))

(assert (=> b!811416 m!753897))

(assert (=> b!811416 m!753897))

(declare-fun m!753911 () Bool)

(assert (=> b!811416 m!753911))

(declare-fun m!753913 () Bool)

(assert (=> start!69674 m!753913))

(declare-fun m!753915 () Bool)

(assert (=> start!69674 m!753915))

(declare-fun m!753917 () Bool)

(assert (=> b!811412 m!753917))

(declare-fun m!753919 () Bool)

(assert (=> b!811411 m!753919))

(declare-fun m!753921 () Bool)

(assert (=> b!811410 m!753921))

(declare-fun m!753923 () Bool)

(assert (=> b!811407 m!753923))

(declare-fun m!753925 () Bool)

(assert (=> b!811407 m!753925))

(declare-fun m!753927 () Bool)

(assert (=> b!811414 m!753927))

(declare-fun m!753929 () Bool)

(assert (=> b!811409 m!753929))

(declare-fun m!753931 () Bool)

(assert (=> b!811409 m!753931))

(declare-fun m!753933 () Bool)

(assert (=> b!811409 m!753933))

(declare-fun m!753935 () Bool)

(assert (=> b!811409 m!753935))

(push 1)

