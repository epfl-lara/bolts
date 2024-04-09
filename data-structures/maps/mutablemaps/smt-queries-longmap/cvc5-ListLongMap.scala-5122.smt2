; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69574 () Bool)

(assert start!69574)

(declare-fun b!810431 () Bool)

(declare-fun e!448614 () Bool)

(declare-fun e!448616 () Bool)

(assert (=> b!810431 (= e!448614 e!448616)))

(declare-fun res!553885 () Bool)

(assert (=> b!810431 (=> (not res!553885) (not e!448616))))

(declare-datatypes ((SeekEntryResult!8676 0))(
  ( (MissingZero!8676 (index!37071 (_ BitVec 32))) (Found!8676 (index!37072 (_ BitVec 32))) (Intermediate!8676 (undefined!9488 Bool) (index!37073 (_ BitVec 32)) (x!67913 (_ BitVec 32))) (Undefined!8676) (MissingVacant!8676 (index!37074 (_ BitVec 32))) )
))
(declare-fun lt!363268 () SeekEntryResult!8676)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!810431 (= res!553885 (or (= lt!363268 (MissingZero!8676 i!1163)) (= lt!363268 (MissingVacant!8676 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!44021 0))(
  ( (array!44022 (arr!21078 (Array (_ BitVec 32) (_ BitVec 64))) (size!21499 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!44021)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44021 (_ BitVec 32)) SeekEntryResult!8676)

(assert (=> b!810431 (= lt!363268 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!810433 () Bool)

(declare-fun res!553888 () Bool)

(assert (=> b!810433 (=> (not res!553888) (not e!448616))))

(declare-datatypes ((List!15094 0))(
  ( (Nil!15091) (Cons!15090 (h!16219 (_ BitVec 64)) (t!21417 List!15094)) )
))
(declare-fun arrayNoDuplicates!0 (array!44021 (_ BitVec 32) List!15094) Bool)

(assert (=> b!810433 (= res!553888 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15091))))

(declare-fun b!810434 () Bool)

(declare-fun res!553883 () Bool)

(assert (=> b!810434 (=> (not res!553883) (not e!448614))))

(declare-fun arrayContainsKey!0 (array!44021 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!810434 (= res!553883 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!810435 () Bool)

(declare-fun res!553882 () Bool)

(assert (=> b!810435 (=> (not res!553882) (not e!448616))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44021 (_ BitVec 32)) Bool)

(assert (=> b!810435 (= res!553882 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!810436 () Bool)

(declare-fun e!448615 () Bool)

(declare-fun e!448618 () Bool)

(assert (=> b!810436 (= e!448615 e!448618)))

(declare-fun res!553879 () Bool)

(assert (=> b!810436 (=> (not res!553879) (not e!448618))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!363270 () SeekEntryResult!8676)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!363266 () SeekEntryResult!8676)

(assert (=> b!810436 (= res!553879 (and (= lt!363266 lt!363270) (= lt!363270 (Found!8676 j!153)) (not (= (select (arr!21078 a!3170) index!1236) (select (arr!21078 a!3170) j!153)))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!44021 (_ BitVec 32)) SeekEntryResult!8676)

(assert (=> b!810436 (= lt!363270 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21078 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!810436 (= lt!363266 (seekEntryOrOpen!0 (select (arr!21078 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!810437 () Bool)

(assert (=> b!810437 (= e!448618 (not true))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!363267 () (_ BitVec 64))

(declare-fun lt!363265 () (_ BitVec 32))

(declare-fun lt!363269 () array!44021)

(assert (=> b!810437 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363265 vacantAfter!23 lt!363267 lt!363269 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!363265 vacantBefore!23 (select (arr!21078 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27614 0))(
  ( (Unit!27615) )
))
(declare-fun lt!363271 () Unit!27614)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!44021 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27614)

(assert (=> b!810437 (= lt!363271 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!363265 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!810437 (= lt!363265 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!810438 () Bool)

(declare-fun res!553887 () Bool)

(assert (=> b!810438 (=> (not res!553887) (not e!448616))))

(assert (=> b!810438 (= res!553887 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21499 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21078 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21499 a!3170)) (= (select (arr!21078 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!810439 () Bool)

(declare-fun res!553880 () Bool)

(assert (=> b!810439 (=> (not res!553880) (not e!448614))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!810439 (= res!553880 (validKeyInArray!0 (select (arr!21078 a!3170) j!153)))))

(declare-fun b!810440 () Bool)

(declare-fun res!553881 () Bool)

(assert (=> b!810440 (=> (not res!553881) (not e!448614))))

(assert (=> b!810440 (= res!553881 (and (= (size!21499 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21499 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21499 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!810441 () Bool)

(declare-fun res!553878 () Bool)

(assert (=> b!810441 (=> (not res!553878) (not e!448614))))

(assert (=> b!810441 (= res!553878 (validKeyInArray!0 k!2044))))

(declare-fun b!810432 () Bool)

(assert (=> b!810432 (= e!448616 e!448615)))

(declare-fun res!553884 () Bool)

(assert (=> b!810432 (=> (not res!553884) (not e!448615))))

(assert (=> b!810432 (= res!553884 (= (seekEntryOrOpen!0 lt!363267 lt!363269 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!363267 lt!363269 mask!3266)))))

(assert (=> b!810432 (= lt!363267 (select (store (arr!21078 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!810432 (= lt!363269 (array!44022 (store (arr!21078 a!3170) i!1163 k!2044) (size!21499 a!3170)))))

(declare-fun res!553886 () Bool)

(assert (=> start!69574 (=> (not res!553886) (not e!448614))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69574 (= res!553886 (validMask!0 mask!3266))))

(assert (=> start!69574 e!448614))

(assert (=> start!69574 true))

(declare-fun array_inv!16852 (array!44021) Bool)

(assert (=> start!69574 (array_inv!16852 a!3170)))

(assert (= (and start!69574 res!553886) b!810440))

(assert (= (and b!810440 res!553881) b!810439))

(assert (= (and b!810439 res!553880) b!810441))

(assert (= (and b!810441 res!553878) b!810434))

(assert (= (and b!810434 res!553883) b!810431))

(assert (= (and b!810431 res!553885) b!810435))

(assert (= (and b!810435 res!553882) b!810433))

(assert (= (and b!810433 res!553888) b!810438))

(assert (= (and b!810438 res!553887) b!810432))

(assert (= (and b!810432 res!553884) b!810436))

(assert (= (and b!810436 res!553879) b!810437))

(declare-fun m!752719 () Bool)

(assert (=> b!810431 m!752719))

(declare-fun m!752721 () Bool)

(assert (=> b!810439 m!752721))

(assert (=> b!810439 m!752721))

(declare-fun m!752723 () Bool)

(assert (=> b!810439 m!752723))

(declare-fun m!752725 () Bool)

(assert (=> b!810432 m!752725))

(declare-fun m!752727 () Bool)

(assert (=> b!810432 m!752727))

(declare-fun m!752729 () Bool)

(assert (=> b!810432 m!752729))

(declare-fun m!752731 () Bool)

(assert (=> b!810432 m!752731))

(declare-fun m!752733 () Bool)

(assert (=> b!810435 m!752733))

(declare-fun m!752735 () Bool)

(assert (=> start!69574 m!752735))

(declare-fun m!752737 () Bool)

(assert (=> start!69574 m!752737))

(declare-fun m!752739 () Bool)

(assert (=> b!810441 m!752739))

(declare-fun m!752741 () Bool)

(assert (=> b!810437 m!752741))

(assert (=> b!810437 m!752721))

(declare-fun m!752743 () Bool)

(assert (=> b!810437 m!752743))

(declare-fun m!752745 () Bool)

(assert (=> b!810437 m!752745))

(assert (=> b!810437 m!752721))

(declare-fun m!752747 () Bool)

(assert (=> b!810437 m!752747))

(declare-fun m!752749 () Bool)

(assert (=> b!810434 m!752749))

(declare-fun m!752751 () Bool)

(assert (=> b!810433 m!752751))

(declare-fun m!752753 () Bool)

(assert (=> b!810438 m!752753))

(declare-fun m!752755 () Bool)

(assert (=> b!810438 m!752755))

(declare-fun m!752757 () Bool)

(assert (=> b!810436 m!752757))

(assert (=> b!810436 m!752721))

(assert (=> b!810436 m!752721))

(declare-fun m!752759 () Bool)

(assert (=> b!810436 m!752759))

(assert (=> b!810436 m!752721))

(declare-fun m!752761 () Bool)

(assert (=> b!810436 m!752761))

(push 1)

