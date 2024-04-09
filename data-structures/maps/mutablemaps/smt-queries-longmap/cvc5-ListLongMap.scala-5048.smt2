; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68818 () Bool)

(assert start!68818)

(declare-fun b!801684 () Bool)

(declare-fun res!546378 () Bool)

(declare-fun e!444379 () Bool)

(assert (=> b!801684 (=> (not res!546378) (not e!444379))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43559 0))(
  ( (array!43560 (arr!20856 (Array (_ BitVec 32) (_ BitVec 64))) (size!21277 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43559)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!801684 (= res!546378 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21277 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20856 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21277 a!3170)) (= (select (arr!20856 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!801685 () Bool)

(declare-fun res!546380 () Bool)

(assert (=> b!801685 (=> (not res!546380) (not e!444379))))

(declare-datatypes ((List!14872 0))(
  ( (Nil!14869) (Cons!14868 (h!15997 (_ BitVec 64)) (t!21195 List!14872)) )
))
(declare-fun arrayNoDuplicates!0 (array!43559 (_ BitVec 32) List!14872) Bool)

(assert (=> b!801685 (= res!546380 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14869))))

(declare-fun b!801686 () Bool)

(declare-fun res!546373 () Bool)

(declare-fun e!444378 () Bool)

(assert (=> b!801686 (=> (not res!546373) (not e!444378))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801686 (= res!546373 (validKeyInArray!0 k!2044))))

(declare-fun b!801687 () Bool)

(declare-fun res!546375 () Bool)

(assert (=> b!801687 (=> (not res!546375) (not e!444378))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!801687 (= res!546375 (validKeyInArray!0 (select (arr!20856 a!3170) j!153)))))

(declare-fun b!801683 () Bool)

(declare-fun e!444375 () Bool)

(assert (=> b!801683 (= e!444379 e!444375)))

(declare-fun res!546372 () Bool)

(assert (=> b!801683 (=> (not res!546372) (not e!444375))))

(declare-fun lt!358428 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun lt!358425 () array!43559)

(declare-datatypes ((SeekEntryResult!8454 0))(
  ( (MissingZero!8454 (index!36183 (_ BitVec 32))) (Found!8454 (index!36184 (_ BitVec 32))) (Intermediate!8454 (undefined!9266 Bool) (index!36185 (_ BitVec 32)) (x!67069 (_ BitVec 32))) (Undefined!8454) (MissingVacant!8454 (index!36186 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43559 (_ BitVec 32)) SeekEntryResult!8454)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43559 (_ BitVec 32)) SeekEntryResult!8454)

(assert (=> b!801683 (= res!546372 (= (seekEntryOrOpen!0 lt!358428 lt!358425 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358428 lt!358425 mask!3266)))))

(assert (=> b!801683 (= lt!358428 (select (store (arr!20856 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!801683 (= lt!358425 (array!43560 (store (arr!20856 a!3170) i!1163 k!2044) (size!21277 a!3170)))))

(declare-fun res!546381 () Bool)

(assert (=> start!68818 (=> (not res!546381) (not e!444378))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68818 (= res!546381 (validMask!0 mask!3266))))

(assert (=> start!68818 e!444378))

(assert (=> start!68818 true))

(declare-fun array_inv!16630 (array!43559) Bool)

(assert (=> start!68818 (array_inv!16630 a!3170)))

(declare-fun b!801688 () Bool)

(declare-fun res!546376 () Bool)

(assert (=> b!801688 (=> (not res!546376) (not e!444379))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43559 (_ BitVec 32)) Bool)

(assert (=> b!801688 (= res!546376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!801689 () Bool)

(declare-fun e!444377 () Bool)

(assert (=> b!801689 (= e!444377 (not true))))

(declare-fun lt!358424 () (_ BitVec 32))

(assert (=> b!801689 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358424 vacantAfter!23 lt!358428 lt!358425 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358424 vacantBefore!23 (select (arr!20856 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27450 0))(
  ( (Unit!27451) )
))
(declare-fun lt!358427 () Unit!27450)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43559 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27450)

(assert (=> b!801689 (= lt!358427 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!358424 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801689 (= lt!358424 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801690 () Bool)

(declare-fun res!546382 () Bool)

(assert (=> b!801690 (=> (not res!546382) (not e!444378))))

(assert (=> b!801690 (= res!546382 (and (= (size!21277 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21277 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21277 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!801691 () Bool)

(assert (=> b!801691 (= e!444378 e!444379)))

(declare-fun res!546374 () Bool)

(assert (=> b!801691 (=> (not res!546374) (not e!444379))))

(declare-fun lt!358423 () SeekEntryResult!8454)

(assert (=> b!801691 (= res!546374 (or (= lt!358423 (MissingZero!8454 i!1163)) (= lt!358423 (MissingVacant!8454 i!1163))))))

(assert (=> b!801691 (= lt!358423 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!801692 () Bool)

(declare-fun res!546379 () Bool)

(assert (=> b!801692 (=> (not res!546379) (not e!444378))))

(declare-fun arrayContainsKey!0 (array!43559 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801692 (= res!546379 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!801693 () Bool)

(assert (=> b!801693 (= e!444375 e!444377)))

(declare-fun res!546377 () Bool)

(assert (=> b!801693 (=> (not res!546377) (not e!444377))))

(declare-fun lt!358426 () SeekEntryResult!8454)

(declare-fun lt!358429 () SeekEntryResult!8454)

(assert (=> b!801693 (= res!546377 (and (= lt!358429 lt!358426) (= lt!358426 (Found!8454 j!153)) (not (= (select (arr!20856 a!3170) index!1236) (select (arr!20856 a!3170) j!153)))))))

(assert (=> b!801693 (= lt!358426 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20856 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!801693 (= lt!358429 (seekEntryOrOpen!0 (select (arr!20856 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!68818 res!546381) b!801690))

(assert (= (and b!801690 res!546382) b!801687))

(assert (= (and b!801687 res!546375) b!801686))

(assert (= (and b!801686 res!546373) b!801692))

(assert (= (and b!801692 res!546379) b!801691))

(assert (= (and b!801691 res!546374) b!801688))

(assert (= (and b!801688 res!546376) b!801685))

(assert (= (and b!801685 res!546380) b!801684))

(assert (= (and b!801684 res!546378) b!801683))

(assert (= (and b!801683 res!546372) b!801693))

(assert (= (and b!801693 res!546377) b!801689))

(declare-fun m!743029 () Bool)

(assert (=> b!801691 m!743029))

(declare-fun m!743031 () Bool)

(assert (=> b!801689 m!743031))

(declare-fun m!743033 () Bool)

(assert (=> b!801689 m!743033))

(assert (=> b!801689 m!743033))

(declare-fun m!743035 () Bool)

(assert (=> b!801689 m!743035))

(declare-fun m!743037 () Bool)

(assert (=> b!801689 m!743037))

(declare-fun m!743039 () Bool)

(assert (=> b!801689 m!743039))

(declare-fun m!743041 () Bool)

(assert (=> b!801693 m!743041))

(assert (=> b!801693 m!743033))

(assert (=> b!801693 m!743033))

(declare-fun m!743043 () Bool)

(assert (=> b!801693 m!743043))

(assert (=> b!801693 m!743033))

(declare-fun m!743045 () Bool)

(assert (=> b!801693 m!743045))

(declare-fun m!743047 () Bool)

(assert (=> b!801686 m!743047))

(declare-fun m!743049 () Bool)

(assert (=> b!801688 m!743049))

(declare-fun m!743051 () Bool)

(assert (=> start!68818 m!743051))

(declare-fun m!743053 () Bool)

(assert (=> start!68818 m!743053))

(declare-fun m!743055 () Bool)

(assert (=> b!801683 m!743055))

(declare-fun m!743057 () Bool)

(assert (=> b!801683 m!743057))

(declare-fun m!743059 () Bool)

(assert (=> b!801683 m!743059))

(declare-fun m!743061 () Bool)

(assert (=> b!801683 m!743061))

(declare-fun m!743063 () Bool)

(assert (=> b!801685 m!743063))

(declare-fun m!743065 () Bool)

(assert (=> b!801692 m!743065))

(declare-fun m!743067 () Bool)

(assert (=> b!801684 m!743067))

(declare-fun m!743069 () Bool)

(assert (=> b!801684 m!743069))

(assert (=> b!801687 m!743033))

(assert (=> b!801687 m!743033))

(declare-fun m!743071 () Bool)

(assert (=> b!801687 m!743071))

(push 1)

