; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68798 () Bool)

(assert start!68798)

(declare-fun res!546033 () Bool)

(declare-fun e!444217 () Bool)

(assert (=> start!68798 (=> (not res!546033) (not e!444217))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68798 (= res!546033 (validMask!0 mask!3266))))

(assert (=> start!68798 e!444217))

(assert (=> start!68798 true))

(declare-datatypes ((array!43539 0))(
  ( (array!43540 (arr!20846 (Array (_ BitVec 32) (_ BitVec 64))) (size!21267 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43539)

(declare-fun array_inv!16620 (array!43539) Bool)

(assert (=> start!68798 (array_inv!16620 a!3170)))

(declare-fun b!801333 () Bool)

(declare-fun res!546032 () Bool)

(declare-fun e!444219 () Bool)

(assert (=> b!801333 (=> (not res!546032) (not e!444219))))

(declare-datatypes ((List!14862 0))(
  ( (Nil!14859) (Cons!14858 (h!15987 (_ BitVec 64)) (t!21185 List!14862)) )
))
(declare-fun arrayNoDuplicates!0 (array!43539 (_ BitVec 32) List!14862) Bool)

(assert (=> b!801333 (= res!546032 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14859))))

(declare-fun b!801334 () Bool)

(declare-fun e!444216 () Bool)

(declare-fun e!444220 () Bool)

(assert (=> b!801334 (= e!444216 e!444220)))

(declare-fun res!546024 () Bool)

(assert (=> b!801334 (=> (not res!546024) (not e!444220))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!358209 () (_ BitVec 32))

(assert (=> b!801334 (= res!546024 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!358209 #b00000000000000000000000000000000) (bvslt lt!358209 (size!21267 a!3170))))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!801334 (= lt!358209 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!801335 () Bool)

(declare-fun res!546026 () Bool)

(assert (=> b!801335 (=> (not res!546026) (not e!444217))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!801335 (= res!546026 (and (= (size!21267 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21267 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21267 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!801336 () Bool)

(declare-fun res!546025 () Bool)

(assert (=> b!801336 (=> (not res!546025) (not e!444219))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!801336 (= res!546025 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21267 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20846 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21267 a!3170)) (= (select (arr!20846 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!801337 () Bool)

(assert (=> b!801337 (= e!444220 false)))

(declare-datatypes ((SeekEntryResult!8444 0))(
  ( (MissingZero!8444 (index!36143 (_ BitVec 32))) (Found!8444 (index!36144 (_ BitVec 32))) (Intermediate!8444 (undefined!9256 Bool) (index!36145 (_ BitVec 32)) (x!67027 (_ BitVec 32))) (Undefined!8444) (MissingVacant!8444 (index!36146 (_ BitVec 32))) )
))
(declare-fun lt!358206 () SeekEntryResult!8444)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43539 (_ BitVec 32)) SeekEntryResult!8444)

(assert (=> b!801337 (= lt!358206 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358209 vacantBefore!23 (select (arr!20846 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801338 () Bool)

(assert (=> b!801338 (= e!444217 e!444219)))

(declare-fun res!546030 () Bool)

(assert (=> b!801338 (=> (not res!546030) (not e!444219))))

(declare-fun lt!358208 () SeekEntryResult!8444)

(assert (=> b!801338 (= res!546030 (or (= lt!358208 (MissingZero!8444 i!1163)) (= lt!358208 (MissingVacant!8444 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43539 (_ BitVec 32)) SeekEntryResult!8444)

(assert (=> b!801338 (= lt!358208 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!801339 () Bool)

(declare-fun res!546031 () Bool)

(assert (=> b!801339 (=> (not res!546031) (not e!444220))))

(declare-fun lt!358207 () SeekEntryResult!8444)

(declare-fun lt!358204 () (_ BitVec 64))

(declare-fun lt!358203 () array!43539)

(assert (=> b!801339 (= res!546031 (= lt!358207 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358209 vacantAfter!23 lt!358204 lt!358203 mask!3266)))))

(declare-fun b!801340 () Bool)

(declare-fun res!546023 () Bool)

(assert (=> b!801340 (=> (not res!546023) (not e!444219))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43539 (_ BitVec 32)) Bool)

(assert (=> b!801340 (= res!546023 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!801341 () Bool)

(declare-fun res!546027 () Bool)

(assert (=> b!801341 (=> (not res!546027) (not e!444217))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!801341 (= res!546027 (validKeyInArray!0 (select (arr!20846 a!3170) j!153)))))

(declare-fun b!801342 () Bool)

(declare-fun res!546034 () Bool)

(assert (=> b!801342 (=> (not res!546034) (not e!444217))))

(assert (=> b!801342 (= res!546034 (validKeyInArray!0 k!2044))))

(declare-fun b!801343 () Bool)

(declare-fun e!444218 () Bool)

(assert (=> b!801343 (= e!444218 e!444216)))

(declare-fun res!546029 () Bool)

(assert (=> b!801343 (=> (not res!546029) (not e!444216))))

(declare-fun lt!358205 () SeekEntryResult!8444)

(declare-fun lt!358210 () SeekEntryResult!8444)

(assert (=> b!801343 (= res!546029 (and (= lt!358210 lt!358205) (= lt!358205 (Found!8444 j!153)) (not (= (select (arr!20846 a!3170) index!1236) (select (arr!20846 a!3170) j!153)))))))

(assert (=> b!801343 (= lt!358205 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20846 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!801343 (= lt!358210 (seekEntryOrOpen!0 (select (arr!20846 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!801344 () Bool)

(declare-fun res!546028 () Bool)

(assert (=> b!801344 (=> (not res!546028) (not e!444217))))

(declare-fun arrayContainsKey!0 (array!43539 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!801344 (= res!546028 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!801345 () Bool)

(assert (=> b!801345 (= e!444219 e!444218)))

(declare-fun res!546022 () Bool)

(assert (=> b!801345 (=> (not res!546022) (not e!444218))))

(assert (=> b!801345 (= res!546022 (= lt!358207 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358204 lt!358203 mask!3266)))))

(assert (=> b!801345 (= lt!358207 (seekEntryOrOpen!0 lt!358204 lt!358203 mask!3266))))

(assert (=> b!801345 (= lt!358204 (select (store (arr!20846 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!801345 (= lt!358203 (array!43540 (store (arr!20846 a!3170) i!1163 k!2044) (size!21267 a!3170)))))

(assert (= (and start!68798 res!546033) b!801335))

(assert (= (and b!801335 res!546026) b!801341))

(assert (= (and b!801341 res!546027) b!801342))

(assert (= (and b!801342 res!546034) b!801344))

(assert (= (and b!801344 res!546028) b!801338))

(assert (= (and b!801338 res!546030) b!801340))

(assert (= (and b!801340 res!546023) b!801333))

(assert (= (and b!801333 res!546032) b!801336))

(assert (= (and b!801336 res!546025) b!801345))

(assert (= (and b!801345 res!546022) b!801343))

(assert (= (and b!801343 res!546029) b!801334))

(assert (= (and b!801334 res!546024) b!801339))

(assert (= (and b!801339 res!546031) b!801337))

(declare-fun m!742597 () Bool)

(assert (=> b!801338 m!742597))

(declare-fun m!742599 () Bool)

(assert (=> b!801333 m!742599))

(declare-fun m!742601 () Bool)

(assert (=> b!801337 m!742601))

(assert (=> b!801337 m!742601))

(declare-fun m!742603 () Bool)

(assert (=> b!801337 m!742603))

(declare-fun m!742605 () Bool)

(assert (=> b!801339 m!742605))

(declare-fun m!742607 () Bool)

(assert (=> start!68798 m!742607))

(declare-fun m!742609 () Bool)

(assert (=> start!68798 m!742609))

(declare-fun m!742611 () Bool)

(assert (=> b!801336 m!742611))

(declare-fun m!742613 () Bool)

(assert (=> b!801336 m!742613))

(declare-fun m!742615 () Bool)

(assert (=> b!801342 m!742615))

(assert (=> b!801341 m!742601))

(assert (=> b!801341 m!742601))

(declare-fun m!742617 () Bool)

(assert (=> b!801341 m!742617))

(declare-fun m!742619 () Bool)

(assert (=> b!801344 m!742619))

(declare-fun m!742621 () Bool)

(assert (=> b!801340 m!742621))

(declare-fun m!742623 () Bool)

(assert (=> b!801345 m!742623))

(declare-fun m!742625 () Bool)

(assert (=> b!801345 m!742625))

(declare-fun m!742627 () Bool)

(assert (=> b!801345 m!742627))

(declare-fun m!742629 () Bool)

(assert (=> b!801345 m!742629))

(declare-fun m!742631 () Bool)

(assert (=> b!801334 m!742631))

(declare-fun m!742633 () Bool)

(assert (=> b!801343 m!742633))

(assert (=> b!801343 m!742601))

(assert (=> b!801343 m!742601))

(declare-fun m!742635 () Bool)

(assert (=> b!801343 m!742635))

(assert (=> b!801343 m!742601))

(declare-fun m!742637 () Bool)

(assert (=> b!801343 m!742637))

(push 1)

