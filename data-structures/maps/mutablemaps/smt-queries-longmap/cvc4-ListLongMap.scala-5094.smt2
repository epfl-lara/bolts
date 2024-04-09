; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69194 () Bool)

(assert start!69194)

(declare-fun b!806537 () Bool)

(declare-fun res!550833 () Bool)

(declare-fun e!446649 () Bool)

(assert (=> b!806537 (=> (not res!550833) (not e!446649))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43845 0))(
  ( (array!43846 (arr!20996 (Array (_ BitVec 32) (_ BitVec 64))) (size!21417 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43845)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!806537 (= res!550833 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21417 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20996 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21417 a!3170)) (= (select (arr!20996 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!806538 () Bool)

(declare-fun res!550832 () Bool)

(declare-fun e!446647 () Bool)

(assert (=> b!806538 (=> (not res!550832) (not e!446647))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!806538 (= res!550832 (validKeyInArray!0 (select (arr!20996 a!3170) j!153)))))

(declare-fun b!806539 () Bool)

(declare-fun e!446648 () Bool)

(assert (=> b!806539 (= e!446648 (not true))))

(declare-datatypes ((SeekEntryResult!8594 0))(
  ( (MissingZero!8594 (index!36743 (_ BitVec 32))) (Found!8594 (index!36744 (_ BitVec 32))) (Intermediate!8594 (undefined!9406 Bool) (index!36745 (_ BitVec 32)) (x!67583 (_ BitVec 32))) (Undefined!8594) (MissingVacant!8594 (index!36746 (_ BitVec 32))) )
))
(declare-fun lt!361253 () SeekEntryResult!8594)

(assert (=> b!806539 (= lt!361253 (Found!8594 index!1236))))

(declare-fun b!806540 () Bool)

(declare-fun res!550838 () Bool)

(assert (=> b!806540 (=> (not res!550838) (not e!446647))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43845 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!806540 (= res!550838 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!806541 () Bool)

(declare-fun res!550830 () Bool)

(assert (=> b!806541 (=> (not res!550830) (not e!446647))))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!806541 (= res!550830 (and (= (size!21417 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21417 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21417 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!806542 () Bool)

(declare-fun res!550839 () Bool)

(assert (=> b!806542 (=> (not res!550839) (not e!446649))))

(declare-datatypes ((List!15012 0))(
  ( (Nil!15009) (Cons!15008 (h!16137 (_ BitVec 64)) (t!21335 List!15012)) )
))
(declare-fun arrayNoDuplicates!0 (array!43845 (_ BitVec 32) List!15012) Bool)

(assert (=> b!806542 (= res!550839 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15009))))

(declare-fun b!806543 () Bool)

(declare-fun res!550835 () Bool)

(assert (=> b!806543 (=> (not res!550835) (not e!446647))))

(assert (=> b!806543 (= res!550835 (validKeyInArray!0 k!2044))))

(declare-fun res!550831 () Bool)

(assert (=> start!69194 (=> (not res!550831) (not e!446647))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69194 (= res!550831 (validMask!0 mask!3266))))

(assert (=> start!69194 e!446647))

(assert (=> start!69194 true))

(declare-fun array_inv!16770 (array!43845) Bool)

(assert (=> start!69194 (array_inv!16770 a!3170)))

(declare-fun b!806544 () Bool)

(declare-fun e!446650 () Bool)

(assert (=> b!806544 (= e!446649 e!446650)))

(declare-fun res!550834 () Bool)

(assert (=> b!806544 (=> (not res!550834) (not e!446650))))

(declare-fun lt!361254 () SeekEntryResult!8594)

(assert (=> b!806544 (= res!550834 (= lt!361254 lt!361253))))

(declare-fun lt!361252 () array!43845)

(declare-fun lt!361251 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43845 (_ BitVec 32)) SeekEntryResult!8594)

(assert (=> b!806544 (= lt!361253 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361251 lt!361252 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43845 (_ BitVec 32)) SeekEntryResult!8594)

(assert (=> b!806544 (= lt!361254 (seekEntryOrOpen!0 lt!361251 lt!361252 mask!3266))))

(assert (=> b!806544 (= lt!361251 (select (store (arr!20996 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!806544 (= lt!361252 (array!43846 (store (arr!20996 a!3170) i!1163 k!2044) (size!21417 a!3170)))))

(declare-fun b!806545 () Bool)

(declare-fun res!550840 () Bool)

(assert (=> b!806545 (=> (not res!550840) (not e!446649))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43845 (_ BitVec 32)) Bool)

(assert (=> b!806545 (= res!550840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!806546 () Bool)

(assert (=> b!806546 (= e!446647 e!446649)))

(declare-fun res!550836 () Bool)

(assert (=> b!806546 (=> (not res!550836) (not e!446649))))

(declare-fun lt!361255 () SeekEntryResult!8594)

(assert (=> b!806546 (= res!550836 (or (= lt!361255 (MissingZero!8594 i!1163)) (= lt!361255 (MissingVacant!8594 i!1163))))))

(assert (=> b!806546 (= lt!361255 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!806547 () Bool)

(assert (=> b!806547 (= e!446650 e!446648)))

(declare-fun res!550837 () Bool)

(assert (=> b!806547 (=> (not res!550837) (not e!446648))))

(declare-fun lt!361249 () SeekEntryResult!8594)

(declare-fun lt!361250 () SeekEntryResult!8594)

(assert (=> b!806547 (= res!550837 (and (= lt!361249 lt!361250) (= lt!361250 (Found!8594 j!153)) (= (select (arr!20996 a!3170) index!1236) (select (arr!20996 a!3170) j!153))))))

(assert (=> b!806547 (= lt!361250 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20996 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!806547 (= lt!361249 (seekEntryOrOpen!0 (select (arr!20996 a!3170) j!153) a!3170 mask!3266))))

(assert (= (and start!69194 res!550831) b!806541))

(assert (= (and b!806541 res!550830) b!806538))

(assert (= (and b!806538 res!550832) b!806543))

(assert (= (and b!806543 res!550835) b!806540))

(assert (= (and b!806540 res!550838) b!806546))

(assert (= (and b!806546 res!550836) b!806545))

(assert (= (and b!806545 res!550840) b!806542))

(assert (= (and b!806542 res!550839) b!806537))

(assert (= (and b!806537 res!550833) b!806544))

(assert (= (and b!806544 res!550834) b!806547))

(assert (= (and b!806547 res!550837) b!806539))

(declare-fun m!748579 () Bool)

(assert (=> b!806537 m!748579))

(declare-fun m!748581 () Bool)

(assert (=> b!806537 m!748581))

(declare-fun m!748583 () Bool)

(assert (=> b!806543 m!748583))

(declare-fun m!748585 () Bool)

(assert (=> b!806544 m!748585))

(declare-fun m!748587 () Bool)

(assert (=> b!806544 m!748587))

(declare-fun m!748589 () Bool)

(assert (=> b!806544 m!748589))

(declare-fun m!748591 () Bool)

(assert (=> b!806544 m!748591))

(declare-fun m!748593 () Bool)

(assert (=> b!806545 m!748593))

(declare-fun m!748595 () Bool)

(assert (=> b!806546 m!748595))

(declare-fun m!748597 () Bool)

(assert (=> b!806540 m!748597))

(declare-fun m!748599 () Bool)

(assert (=> b!806538 m!748599))

(assert (=> b!806538 m!748599))

(declare-fun m!748601 () Bool)

(assert (=> b!806538 m!748601))

(declare-fun m!748603 () Bool)

(assert (=> start!69194 m!748603))

(declare-fun m!748605 () Bool)

(assert (=> start!69194 m!748605))

(declare-fun m!748607 () Bool)

(assert (=> b!806542 m!748607))

(declare-fun m!748609 () Bool)

(assert (=> b!806547 m!748609))

(assert (=> b!806547 m!748599))

(assert (=> b!806547 m!748599))

(declare-fun m!748611 () Bool)

(assert (=> b!806547 m!748611))

(assert (=> b!806547 m!748599))

(declare-fun m!748613 () Bool)

(assert (=> b!806547 m!748613))

(push 1)

