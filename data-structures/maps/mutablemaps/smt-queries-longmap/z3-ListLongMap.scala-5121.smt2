; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69570 () Bool)

(assert start!69570)

(declare-fun b!810353 () Bool)

(declare-fun res!553811 () Bool)

(declare-fun e!448579 () Bool)

(assert (=> b!810353 (=> (not res!553811) (not e!448579))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!44017 0))(
  ( (array!44018 (arr!21076 (Array (_ BitVec 32) (_ BitVec 64))) (size!21497 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44017)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!810353 (= res!553811 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21497 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21076 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21497 a!3170)) (= (select (arr!21076 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!553805 () Bool)

(declare-fun e!448580 () Bool)

(assert (=> start!69570 (=> (not res!553805) (not e!448580))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69570 (= res!553805 (validMask!0 mask!3266))))

(assert (=> start!69570 e!448580))

(assert (=> start!69570 true))

(declare-fun array_inv!16850 (array!44017) Bool)

(assert (=> start!69570 (array_inv!16850 a!3170)))

(declare-fun b!810354 () Bool)

(declare-fun res!553801 () Bool)

(assert (=> b!810354 (=> (not res!553801) (not e!448580))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!810354 (= res!553801 (and (= (size!21497 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21497 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21497 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!810355 () Bool)

(declare-fun e!448577 () Bool)

(assert (=> b!810355 (= e!448579 e!448577)))

(declare-fun res!553810 () Bool)

(assert (=> b!810355 (=> (not res!553810) (not e!448577))))

(declare-fun lt!363215 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8674 0))(
  ( (MissingZero!8674 (index!37063 (_ BitVec 32))) (Found!8674 (index!37064 (_ BitVec 32))) (Intermediate!8674 (undefined!9486 Bool) (index!37065 (_ BitVec 32)) (x!67903 (_ BitVec 32))) (Undefined!8674) (MissingVacant!8674 (index!37066 (_ BitVec 32))) )
))
(declare-fun lt!363218 () SeekEntryResult!8674)

(declare-fun lt!363223 () array!44017)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44017 (_ BitVec 32)) SeekEntryResult!8674)

(assert (=> b!810355 (= res!553810 (= lt!363218 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363215 lt!363223 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44017 (_ BitVec 32)) SeekEntryResult!8674)

(assert (=> b!810355 (= lt!363218 (seekEntryOrOpen!0 lt!363215 lt!363223 mask!3266))))

(declare-fun k0!2044 () (_ BitVec 64))

(assert (=> b!810355 (= lt!363215 (select (store (arr!21076 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!810355 (= lt!363223 (array!44018 (store (arr!21076 a!3170) i!1163 k0!2044) (size!21497 a!3170)))))

(declare-fun b!810356 () Bool)

(declare-fun e!448576 () Bool)

(declare-fun e!448582 () Bool)

(assert (=> b!810356 (= e!448576 e!448582)))

(declare-fun res!553803 () Bool)

(assert (=> b!810356 (=> (not res!553803) (not e!448582))))

(declare-fun lt!363222 () SeekEntryResult!8674)

(declare-fun lt!363220 () SeekEntryResult!8674)

(assert (=> b!810356 (= res!553803 (and (= lt!363222 lt!363220) (not (= (select (arr!21076 a!3170) index!1236) (select (arr!21076 a!3170) j!153)))))))

(assert (=> b!810356 (= lt!363220 (Found!8674 j!153))))

(declare-fun b!810357 () Bool)

(declare-fun res!553812 () Bool)

(declare-fun e!448581 () Bool)

(assert (=> b!810357 (=> (not res!553812) (not e!448581))))

(declare-fun lt!363216 () (_ BitVec 32))

(assert (=> b!810357 (= res!553812 (= lt!363218 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363216 vacantAfter!23 lt!363215 lt!363223 mask!3266)))))

(declare-fun b!810358 () Bool)

(declare-fun res!553808 () Bool)

(assert (=> b!810358 (=> (not res!553808) (not e!448580))))

(declare-fun arrayContainsKey!0 (array!44017 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!810358 (= res!553808 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!810359 () Bool)

(declare-fun res!553813 () Bool)

(assert (=> b!810359 (=> (not res!553813) (not e!448580))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!810359 (= res!553813 (validKeyInArray!0 (select (arr!21076 a!3170) j!153)))))

(declare-fun b!810360 () Bool)

(declare-fun res!553809 () Bool)

(assert (=> b!810360 (=> (not res!553809) (not e!448579))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44017 (_ BitVec 32)) Bool)

(assert (=> b!810360 (= res!553809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!810361 () Bool)

(declare-fun res!553806 () Bool)

(assert (=> b!810361 (=> (not res!553806) (not e!448579))))

(declare-datatypes ((List!15092 0))(
  ( (Nil!15089) (Cons!15088 (h!16217 (_ BitVec 64)) (t!21415 List!15092)) )
))
(declare-fun arrayNoDuplicates!0 (array!44017 (_ BitVec 32) List!15092) Bool)

(assert (=> b!810361 (= res!553806 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15089))))

(declare-fun b!810362 () Bool)

(declare-fun lt!363217 () SeekEntryResult!8674)

(declare-fun lt!363221 () SeekEntryResult!8674)

(assert (=> b!810362 (= e!448581 (and (= lt!363217 lt!363221) (= lt!363221 lt!363220) (bvsge (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!1077)) (bvsub #b01111111111111111111111111111110 x!1077))))))

(assert (=> b!810362 (= lt!363221 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363216 vacantBefore!23 (select (arr!21076 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810363 () Bool)

(assert (=> b!810363 (= e!448580 e!448579)))

(declare-fun res!553802 () Bool)

(assert (=> b!810363 (=> (not res!553802) (not e!448579))))

(declare-fun lt!363219 () SeekEntryResult!8674)

(assert (=> b!810363 (= res!553802 (or (= lt!363219 (MissingZero!8674 i!1163)) (= lt!363219 (MissingVacant!8674 i!1163))))))

(assert (=> b!810363 (= lt!363219 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!810364 () Bool)

(declare-fun res!553807 () Bool)

(assert (=> b!810364 (=> (not res!553807) (not e!448580))))

(assert (=> b!810364 (= res!553807 (validKeyInArray!0 k0!2044))))

(declare-fun b!810365 () Bool)

(assert (=> b!810365 (= e!448582 e!448581)))

(declare-fun res!553800 () Bool)

(assert (=> b!810365 (=> (not res!553800) (not e!448581))))

(assert (=> b!810365 (= res!553800 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!363216 #b00000000000000000000000000000000) (bvslt lt!363216 (size!21497 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!810365 (= lt!363216 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!810366 () Bool)

(assert (=> b!810366 (= e!448577 e!448576)))

(declare-fun res!553804 () Bool)

(assert (=> b!810366 (=> (not res!553804) (not e!448576))))

(assert (=> b!810366 (= res!553804 (= lt!363217 lt!363222))))

(assert (=> b!810366 (= lt!363222 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21076 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!810366 (= lt!363217 (seekEntryOrOpen!0 (select (arr!21076 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!69570 res!553805) b!810354))

(assert (= (and b!810354 res!553801) b!810359))

(assert (= (and b!810359 res!553813) b!810364))

(assert (= (and b!810364 res!553807) b!810358))

(assert (= (and b!810358 res!553808) b!810363))

(assert (= (and b!810363 res!553802) b!810360))

(assert (= (and b!810360 res!553809) b!810361))

(assert (= (and b!810361 res!553806) b!810353))

(assert (= (and b!810353 res!553811) b!810355))

(assert (= (and b!810355 res!553810) b!810366))

(assert (= (and b!810366 res!553804) b!810356))

(assert (= (and b!810356 res!553803) b!810365))

(assert (= (and b!810365 res!553800) b!810357))

(assert (= (and b!810357 res!553812) b!810362))

(declare-fun m!752635 () Bool)

(assert (=> b!810362 m!752635))

(assert (=> b!810362 m!752635))

(declare-fun m!752637 () Bool)

(assert (=> b!810362 m!752637))

(declare-fun m!752639 () Bool)

(assert (=> b!810357 m!752639))

(declare-fun m!752641 () Bool)

(assert (=> b!810361 m!752641))

(declare-fun m!752643 () Bool)

(assert (=> start!69570 m!752643))

(declare-fun m!752645 () Bool)

(assert (=> start!69570 m!752645))

(declare-fun m!752647 () Bool)

(assert (=> b!810355 m!752647))

(declare-fun m!752649 () Bool)

(assert (=> b!810355 m!752649))

(declare-fun m!752651 () Bool)

(assert (=> b!810355 m!752651))

(declare-fun m!752653 () Bool)

(assert (=> b!810355 m!752653))

(assert (=> b!810366 m!752635))

(assert (=> b!810366 m!752635))

(declare-fun m!752655 () Bool)

(assert (=> b!810366 m!752655))

(assert (=> b!810366 m!752635))

(declare-fun m!752657 () Bool)

(assert (=> b!810366 m!752657))

(declare-fun m!752659 () Bool)

(assert (=> b!810363 m!752659))

(assert (=> b!810359 m!752635))

(assert (=> b!810359 m!752635))

(declare-fun m!752661 () Bool)

(assert (=> b!810359 m!752661))

(declare-fun m!752663 () Bool)

(assert (=> b!810364 m!752663))

(declare-fun m!752665 () Bool)

(assert (=> b!810358 m!752665))

(declare-fun m!752667 () Bool)

(assert (=> b!810365 m!752667))

(declare-fun m!752669 () Bool)

(assert (=> b!810353 m!752669))

(declare-fun m!752671 () Bool)

(assert (=> b!810353 m!752671))

(declare-fun m!752673 () Bool)

(assert (=> b!810356 m!752673))

(assert (=> b!810356 m!752635))

(declare-fun m!752675 () Bool)

(assert (=> b!810360 m!752675))

(check-sat (not b!810358) (not b!810366) (not b!810363) (not b!810364) (not b!810365) (not b!810361) (not b!810359) (not b!810362) (not b!810357) (not b!810360) (not b!810355) (not start!69570))
(check-sat)
