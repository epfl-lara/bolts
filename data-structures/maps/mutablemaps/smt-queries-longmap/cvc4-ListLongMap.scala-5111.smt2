; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69350 () Bool)

(assert start!69350)

(declare-fun b!808490 () Bool)

(declare-fun res!552594 () Bool)

(declare-fun e!447585 () Bool)

(assert (=> b!808490 (=> (not res!552594) (not e!447585))))

(declare-datatypes ((array!43950 0))(
  ( (array!43951 (arr!21047 (Array (_ BitVec 32) (_ BitVec 64))) (size!21468 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43950)

(declare-datatypes ((List!15063 0))(
  ( (Nil!15060) (Cons!15059 (h!16188 (_ BitVec 64)) (t!21386 List!15063)) )
))
(declare-fun arrayNoDuplicates!0 (array!43950 (_ BitVec 32) List!15063) Bool)

(assert (=> b!808490 (= res!552594 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15060))))

(declare-fun b!808491 () Bool)

(declare-fun res!552586 () Bool)

(declare-fun e!447582 () Bool)

(assert (=> b!808491 (=> (not res!552586) (not e!447582))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!808491 (= res!552586 (and (= (size!21468 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21468 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21468 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!552590 () Bool)

(assert (=> start!69350 (=> (not res!552590) (not e!447582))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69350 (= res!552590 (validMask!0 mask!3266))))

(assert (=> start!69350 e!447582))

(assert (=> start!69350 true))

(declare-fun array_inv!16821 (array!43950) Bool)

(assert (=> start!69350 (array_inv!16821 a!3170)))

(declare-fun b!808492 () Bool)

(declare-fun res!552595 () Bool)

(assert (=> b!808492 (=> (not res!552595) (not e!447582))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!808492 (= res!552595 (validKeyInArray!0 k!2044))))

(declare-fun b!808493 () Bool)

(declare-fun res!552592 () Bool)

(assert (=> b!808493 (=> (not res!552592) (not e!447585))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!808493 (= res!552592 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21468 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!21047 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21468 a!3170)) (= (select (arr!21047 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!808494 () Bool)

(declare-fun e!447586 () Bool)

(assert (=> b!808494 (= e!447585 e!447586)))

(declare-fun res!552588 () Bool)

(assert (=> b!808494 (=> (not res!552588) (not e!447586))))

(declare-fun lt!362302 () (_ BitVec 64))

(declare-fun lt!362304 () array!43950)

(declare-datatypes ((SeekEntryResult!8645 0))(
  ( (MissingZero!8645 (index!36947 (_ BitVec 32))) (Found!8645 (index!36948 (_ BitVec 32))) (Intermediate!8645 (undefined!9457 Bool) (index!36949 (_ BitVec 32)) (x!67776 (_ BitVec 32))) (Undefined!8645) (MissingVacant!8645 (index!36950 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43950 (_ BitVec 32)) SeekEntryResult!8645)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43950 (_ BitVec 32)) SeekEntryResult!8645)

(assert (=> b!808494 (= res!552588 (= (seekEntryOrOpen!0 lt!362302 lt!362304 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!362302 lt!362304 mask!3266)))))

(assert (=> b!808494 (= lt!362302 (select (store (arr!21047 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!808494 (= lt!362304 (array!43951 (store (arr!21047 a!3170) i!1163 k!2044) (size!21468 a!3170)))))

(declare-fun b!808495 () Bool)

(declare-fun res!552589 () Bool)

(assert (=> b!808495 (=> (not res!552589) (not e!447585))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43950 (_ BitVec 32)) Bool)

(assert (=> b!808495 (= res!552589 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!808496 () Bool)

(declare-fun res!552591 () Bool)

(assert (=> b!808496 (=> (not res!552591) (not e!447582))))

(assert (=> b!808496 (= res!552591 (validKeyInArray!0 (select (arr!21047 a!3170) j!153)))))

(declare-fun b!808497 () Bool)

(assert (=> b!808497 (= e!447582 e!447585)))

(declare-fun res!552585 () Bool)

(assert (=> b!808497 (=> (not res!552585) (not e!447585))))

(declare-fun lt!362300 () SeekEntryResult!8645)

(assert (=> b!808497 (= res!552585 (or (= lt!362300 (MissingZero!8645 i!1163)) (= lt!362300 (MissingVacant!8645 i!1163))))))

(assert (=> b!808497 (= lt!362300 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!808498 () Bool)

(declare-fun e!447584 () Bool)

(assert (=> b!808498 (= e!447584 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000)))))

(declare-fun lt!362303 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!808498 (= lt!362303 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!808499 () Bool)

(assert (=> b!808499 (= e!447586 e!447584)))

(declare-fun res!552593 () Bool)

(assert (=> b!808499 (=> (not res!552593) (not e!447584))))

(declare-fun lt!362305 () SeekEntryResult!8645)

(declare-fun lt!362301 () SeekEntryResult!8645)

(assert (=> b!808499 (= res!552593 (and (= lt!362301 lt!362305) (= lt!362305 (Found!8645 j!153)) (not (= (select (arr!21047 a!3170) index!1236) (select (arr!21047 a!3170) j!153)))))))

(assert (=> b!808499 (= lt!362305 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!21047 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!808499 (= lt!362301 (seekEntryOrOpen!0 (select (arr!21047 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!808500 () Bool)

(declare-fun res!552587 () Bool)

(assert (=> b!808500 (=> (not res!552587) (not e!447582))))

(declare-fun arrayContainsKey!0 (array!43950 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!808500 (= res!552587 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!69350 res!552590) b!808491))

(assert (= (and b!808491 res!552586) b!808496))

(assert (= (and b!808496 res!552591) b!808492))

(assert (= (and b!808492 res!552595) b!808500))

(assert (= (and b!808500 res!552587) b!808497))

(assert (= (and b!808497 res!552585) b!808495))

(assert (= (and b!808495 res!552589) b!808490))

(assert (= (and b!808490 res!552594) b!808493))

(assert (= (and b!808493 res!552592) b!808494))

(assert (= (and b!808494 res!552588) b!808499))

(assert (= (and b!808499 res!552593) b!808498))

(declare-fun m!750731 () Bool)

(assert (=> b!808492 m!750731))

(declare-fun m!750733 () Bool)

(assert (=> start!69350 m!750733))

(declare-fun m!750735 () Bool)

(assert (=> start!69350 m!750735))

(declare-fun m!750737 () Bool)

(assert (=> b!808495 m!750737))

(declare-fun m!750739 () Bool)

(assert (=> b!808496 m!750739))

(assert (=> b!808496 m!750739))

(declare-fun m!750741 () Bool)

(assert (=> b!808496 m!750741))

(declare-fun m!750743 () Bool)

(assert (=> b!808497 m!750743))

(declare-fun m!750745 () Bool)

(assert (=> b!808493 m!750745))

(declare-fun m!750747 () Bool)

(assert (=> b!808493 m!750747))

(declare-fun m!750749 () Bool)

(assert (=> b!808490 m!750749))

(declare-fun m!750751 () Bool)

(assert (=> b!808494 m!750751))

(declare-fun m!750753 () Bool)

(assert (=> b!808494 m!750753))

(declare-fun m!750755 () Bool)

(assert (=> b!808494 m!750755))

(declare-fun m!750757 () Bool)

(assert (=> b!808494 m!750757))

(declare-fun m!750759 () Bool)

(assert (=> b!808499 m!750759))

(assert (=> b!808499 m!750739))

(assert (=> b!808499 m!750739))

(declare-fun m!750761 () Bool)

(assert (=> b!808499 m!750761))

(assert (=> b!808499 m!750739))

(declare-fun m!750763 () Bool)

(assert (=> b!808499 m!750763))

(declare-fun m!750765 () Bool)

(assert (=> b!808498 m!750765))

(declare-fun m!750767 () Bool)

(assert (=> b!808500 m!750767))

(push 1)

