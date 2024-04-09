; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68594 () Bool)

(assert start!68594)

(declare-fun res!542258 () Bool)

(declare-fun e!442492 () Bool)

(assert (=> start!68594 (=> (not res!542258) (not e!442492))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68594 (= res!542258 (validMask!0 mask!3266))))

(assert (=> start!68594 e!442492))

(assert (=> start!68594 true))

(declare-datatypes ((array!43335 0))(
  ( (array!43336 (arr!20744 (Array (_ BitVec 32) (_ BitVec 64))) (size!21165 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43335)

(declare-fun array_inv!16518 (array!43335) Bool)

(assert (=> start!68594 (array_inv!16518 a!3170)))

(declare-fun b!797564 () Bool)

(declare-fun res!542253 () Bool)

(declare-fun e!442490 () Bool)

(assert (=> b!797564 (=> (not res!542253) (not e!442490))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43335 (_ BitVec 32)) Bool)

(assert (=> b!797564 (= res!542253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!797565 () Bool)

(assert (=> b!797565 (= e!442492 e!442490)))

(declare-fun res!542255 () Bool)

(assert (=> b!797565 (=> (not res!542255) (not e!442490))))

(declare-datatypes ((SeekEntryResult!8342 0))(
  ( (MissingZero!8342 (index!35735 (_ BitVec 32))) (Found!8342 (index!35736 (_ BitVec 32))) (Intermediate!8342 (undefined!9154 Bool) (index!35737 (_ BitVec 32)) (x!66653 (_ BitVec 32))) (Undefined!8342) (MissingVacant!8342 (index!35738 (_ BitVec 32))) )
))
(declare-fun lt!355904 () SeekEntryResult!8342)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!797565 (= res!542255 (or (= lt!355904 (MissingZero!8342 i!1163)) (= lt!355904 (MissingVacant!8342 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43335 (_ BitVec 32)) SeekEntryResult!8342)

(assert (=> b!797565 (= lt!355904 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!797566 () Bool)

(declare-fun e!442488 () Bool)

(declare-fun e!442489 () Bool)

(assert (=> b!797566 (= e!442488 e!442489)))

(declare-fun res!542262 () Bool)

(assert (=> b!797566 (=> (not res!542262) (not e!442489))))

(declare-fun lt!355900 () SeekEntryResult!8342)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!355905 () SeekEntryResult!8342)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!797566 (= res!542262 (and (= lt!355900 lt!355905) (= lt!355905 (Found!8342 j!153)) (= (select (arr!20744 a!3170) index!1236) (select (arr!20744 a!3170) j!153))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43335 (_ BitVec 32)) SeekEntryResult!8342)

(assert (=> b!797566 (= lt!355905 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20744 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!797566 (= lt!355900 (seekEntryOrOpen!0 (select (arr!20744 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!797567 () Bool)

(declare-fun res!542256 () Bool)

(assert (=> b!797567 (=> (not res!542256) (not e!442492))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!797567 (= res!542256 (validKeyInArray!0 k!2044))))

(declare-fun b!797568 () Bool)

(assert (=> b!797568 (= e!442490 e!442488)))

(declare-fun res!542261 () Bool)

(assert (=> b!797568 (=> (not res!542261) (not e!442488))))

(declare-fun lt!355903 () SeekEntryResult!8342)

(declare-fun lt!355902 () SeekEntryResult!8342)

(assert (=> b!797568 (= res!542261 (= lt!355903 lt!355902))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!355906 () array!43335)

(declare-fun lt!355901 () (_ BitVec 64))

(assert (=> b!797568 (= lt!355902 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355901 lt!355906 mask!3266))))

(assert (=> b!797568 (= lt!355903 (seekEntryOrOpen!0 lt!355901 lt!355906 mask!3266))))

(assert (=> b!797568 (= lt!355901 (select (store (arr!20744 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!797568 (= lt!355906 (array!43336 (store (arr!20744 a!3170) i!1163 k!2044) (size!21165 a!3170)))))

(declare-fun b!797569 () Bool)

(declare-fun res!542263 () Bool)

(assert (=> b!797569 (=> (not res!542263) (not e!442490))))

(assert (=> b!797569 (= res!542263 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21165 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20744 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21165 a!3170)) (= (select (arr!20744 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!797570 () Bool)

(declare-fun res!542260 () Bool)

(assert (=> b!797570 (=> (not res!542260) (not e!442492))))

(assert (=> b!797570 (= res!542260 (and (= (size!21165 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21165 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21165 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!797571 () Bool)

(declare-fun res!542259 () Bool)

(assert (=> b!797571 (=> (not res!542259) (not e!442492))))

(declare-fun arrayContainsKey!0 (array!43335 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!797571 (= res!542259 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!797572 () Bool)

(assert (=> b!797572 (= e!442489 (not true))))

(assert (=> b!797572 (= lt!355902 (Found!8342 index!1236))))

(declare-fun b!797573 () Bool)

(declare-fun res!542257 () Bool)

(assert (=> b!797573 (=> (not res!542257) (not e!442490))))

(declare-datatypes ((List!14760 0))(
  ( (Nil!14757) (Cons!14756 (h!15885 (_ BitVec 64)) (t!21083 List!14760)) )
))
(declare-fun arrayNoDuplicates!0 (array!43335 (_ BitVec 32) List!14760) Bool)

(assert (=> b!797573 (= res!542257 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14757))))

(declare-fun b!797574 () Bool)

(declare-fun res!542254 () Bool)

(assert (=> b!797574 (=> (not res!542254) (not e!442492))))

(assert (=> b!797574 (= res!542254 (validKeyInArray!0 (select (arr!20744 a!3170) j!153)))))

(assert (= (and start!68594 res!542258) b!797570))

(assert (= (and b!797570 res!542260) b!797574))

(assert (= (and b!797574 res!542254) b!797567))

(assert (= (and b!797567 res!542256) b!797571))

(assert (= (and b!797571 res!542259) b!797565))

(assert (= (and b!797565 res!542255) b!797564))

(assert (= (and b!797564 res!542253) b!797573))

(assert (= (and b!797573 res!542257) b!797569))

(assert (= (and b!797569 res!542263) b!797568))

(assert (= (and b!797568 res!542261) b!797566))

(assert (= (and b!797566 res!542262) b!797572))

(declare-fun m!738529 () Bool)

(assert (=> b!797569 m!738529))

(declare-fun m!738531 () Bool)

(assert (=> b!797569 m!738531))

(declare-fun m!738533 () Bool)

(assert (=> b!797573 m!738533))

(declare-fun m!738535 () Bool)

(assert (=> b!797564 m!738535))

(declare-fun m!738537 () Bool)

(assert (=> b!797567 m!738537))

(declare-fun m!738539 () Bool)

(assert (=> b!797574 m!738539))

(assert (=> b!797574 m!738539))

(declare-fun m!738541 () Bool)

(assert (=> b!797574 m!738541))

(declare-fun m!738543 () Bool)

(assert (=> b!797566 m!738543))

(assert (=> b!797566 m!738539))

(assert (=> b!797566 m!738539))

(declare-fun m!738545 () Bool)

(assert (=> b!797566 m!738545))

(assert (=> b!797566 m!738539))

(declare-fun m!738547 () Bool)

(assert (=> b!797566 m!738547))

(declare-fun m!738549 () Bool)

(assert (=> start!68594 m!738549))

(declare-fun m!738551 () Bool)

(assert (=> start!68594 m!738551))

(declare-fun m!738553 () Bool)

(assert (=> b!797565 m!738553))

(declare-fun m!738555 () Bool)

(assert (=> b!797571 m!738555))

(declare-fun m!738557 () Bool)

(assert (=> b!797568 m!738557))

(declare-fun m!738559 () Bool)

(assert (=> b!797568 m!738559))

(declare-fun m!738561 () Bool)

(assert (=> b!797568 m!738561))

(declare-fun m!738563 () Bool)

(assert (=> b!797568 m!738563))

(push 1)

