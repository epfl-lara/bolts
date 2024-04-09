; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69250 () Bool)

(assert start!69250)

(declare-fun b!807470 () Bool)

(declare-fun e!447076 () Bool)

(assert (=> b!807470 (= e!447076 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!361786 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!807470 (= lt!361786 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!807471 () Bool)

(declare-fun res!551772 () Bool)

(declare-fun e!447079 () Bool)

(assert (=> b!807471 (=> (not res!551772) (not e!447079))))

(declare-datatypes ((array!43901 0))(
  ( (array!43902 (arr!21024 (Array (_ BitVec 32) (_ BitVec 64))) (size!21445 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43901)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!807471 (= res!551772 (validKeyInArray!0 (select (arr!21024 a!3170) j!153)))))

(declare-fun b!807472 () Bool)

(declare-fun e!447078 () Bool)

(assert (=> b!807472 (= e!447079 e!447078)))

(declare-fun res!551767 () Bool)

(assert (=> b!807472 (=> (not res!551767) (not e!447078))))

(declare-datatypes ((SeekEntryResult!8622 0))(
  ( (MissingZero!8622 (index!36855 (_ BitVec 32))) (Found!8622 (index!36856 (_ BitVec 32))) (Intermediate!8622 (undefined!9434 Bool) (index!36857 (_ BitVec 32)) (x!67691 (_ BitVec 32))) (Undefined!8622) (MissingVacant!8622 (index!36858 (_ BitVec 32))) )
))
(declare-fun lt!361784 () SeekEntryResult!8622)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!807472 (= res!551767 (or (= lt!361784 (MissingZero!8622 i!1163)) (= lt!361784 (MissingVacant!8622 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43901 (_ BitVec 32)) SeekEntryResult!8622)

(assert (=> b!807472 (= lt!361784 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!807473 () Bool)

(declare-fun res!551763 () Bool)

(assert (=> b!807473 (=> (not res!551763) (not e!447079))))

(assert (=> b!807473 (= res!551763 (validKeyInArray!0 k!2044))))

(declare-fun b!807474 () Bool)

(declare-fun res!551773 () Bool)

(assert (=> b!807474 (=> (not res!551773) (not e!447078))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43901 (_ BitVec 32)) Bool)

(assert (=> b!807474 (= res!551773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!807475 () Bool)

(declare-fun e!447077 () Bool)

(assert (=> b!807475 (= e!447078 e!447077)))

(declare-fun res!551765 () Bool)

(assert (=> b!807475 (=> (not res!551765) (not e!447077))))

(declare-fun lt!361781 () array!43901)

(declare-fun lt!361782 () (_ BitVec 64))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43901 (_ BitVec 32)) SeekEntryResult!8622)

(assert (=> b!807475 (= res!551765 (= (seekEntryOrOpen!0 lt!361782 lt!361781 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361782 lt!361781 mask!3266)))))

(assert (=> b!807475 (= lt!361782 (select (store (arr!21024 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!807475 (= lt!361781 (array!43902 (store (arr!21024 a!3170) i!1163 k!2044) (size!21445 a!3170)))))

(declare-fun res!551764 () Bool)

(assert (=> start!69250 (=> (not res!551764) (not e!447079))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69250 (= res!551764 (validMask!0 mask!3266))))

(assert (=> start!69250 e!447079))

(assert (=> start!69250 true))

(declare-fun array_inv!16798 (array!43901) Bool)

(assert (=> start!69250 (array_inv!16798 a!3170)))

(declare-fun b!807476 () Bool)

(declare-fun res!551766 () Bool)

(assert (=> b!807476 (=> (not res!551766) (not e!447079))))

(assert (=> b!807476 (= res!551766 (and (= (size!21445 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21445 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21445 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!807477 () Bool)

(declare-fun res!551769 () Bool)

(assert (=> b!807477 (=> (not res!551769) (not e!447078))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!807477 (= res!551769 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21445 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21024 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21445 a!3170)) (= (select (arr!21024 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!807478 () Bool)

(declare-fun res!551770 () Bool)

(assert (=> b!807478 (=> (not res!551770) (not e!447078))))

(declare-datatypes ((List!15040 0))(
  ( (Nil!15037) (Cons!15036 (h!16165 (_ BitVec 64)) (t!21363 List!15040)) )
))
(declare-fun arrayNoDuplicates!0 (array!43901 (_ BitVec 32) List!15040) Bool)

(assert (=> b!807478 (= res!551770 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15037))))

(declare-fun b!807479 () Bool)

(declare-fun res!551771 () Bool)

(assert (=> b!807479 (=> (not res!551771) (not e!447079))))

(declare-fun arrayContainsKey!0 (array!43901 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!807479 (= res!551771 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!807480 () Bool)

(assert (=> b!807480 (= e!447077 e!447076)))

(declare-fun res!551768 () Bool)

(assert (=> b!807480 (=> (not res!551768) (not e!447076))))

(declare-fun lt!361783 () SeekEntryResult!8622)

(declare-fun lt!361785 () SeekEntryResult!8622)

(assert (=> b!807480 (= res!551768 (and (= lt!361785 lt!361783) (= lt!361783 (Found!8622 j!153)) (not (= (select (arr!21024 a!3170) index!1236) (select (arr!21024 a!3170) j!153)))))))

(assert (=> b!807480 (= lt!361783 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21024 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!807480 (= lt!361785 (seekEntryOrOpen!0 (select (arr!21024 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!69250 res!551764) b!807476))

(assert (= (and b!807476 res!551766) b!807471))

(assert (= (and b!807471 res!551772) b!807473))

(assert (= (and b!807473 res!551763) b!807479))

(assert (= (and b!807479 res!551771) b!807472))

(assert (= (and b!807472 res!551767) b!807474))

(assert (= (and b!807474 res!551773) b!807478))

(assert (= (and b!807478 res!551770) b!807477))

(assert (= (and b!807477 res!551769) b!807475))

(assert (= (and b!807475 res!551765) b!807480))

(assert (= (and b!807480 res!551768) b!807470))

(declare-fun m!749629 () Bool)

(assert (=> b!807472 m!749629))

(declare-fun m!749631 () Bool)

(assert (=> b!807473 m!749631))

(declare-fun m!749633 () Bool)

(assert (=> b!807477 m!749633))

(declare-fun m!749635 () Bool)

(assert (=> b!807477 m!749635))

(declare-fun m!749637 () Bool)

(assert (=> b!807478 m!749637))

(declare-fun m!749639 () Bool)

(assert (=> b!807475 m!749639))

(declare-fun m!749641 () Bool)

(assert (=> b!807475 m!749641))

(declare-fun m!749643 () Bool)

(assert (=> b!807475 m!749643))

(declare-fun m!749645 () Bool)

(assert (=> b!807475 m!749645))

(declare-fun m!749647 () Bool)

(assert (=> b!807474 m!749647))

(declare-fun m!749649 () Bool)

(assert (=> b!807471 m!749649))

(assert (=> b!807471 m!749649))

(declare-fun m!749651 () Bool)

(assert (=> b!807471 m!749651))

(declare-fun m!749653 () Bool)

(assert (=> b!807479 m!749653))

(declare-fun m!749655 () Bool)

(assert (=> b!807470 m!749655))

(declare-fun m!749657 () Bool)

(assert (=> b!807480 m!749657))

(assert (=> b!807480 m!749649))

(assert (=> b!807480 m!749649))

(declare-fun m!749659 () Bool)

(assert (=> b!807480 m!749659))

(assert (=> b!807480 m!749649))

(declare-fun m!749661 () Bool)

(assert (=> b!807480 m!749661))

(declare-fun m!749663 () Bool)

(assert (=> start!69250 m!749663))

(declare-fun m!749665 () Bool)

(assert (=> start!69250 m!749665))

(push 1)

