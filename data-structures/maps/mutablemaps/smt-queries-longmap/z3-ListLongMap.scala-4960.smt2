; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68292 () Bool)

(assert start!68292)

(declare-fun b!792957 () Bool)

(declare-fun e!440574 () Bool)

(assert (=> b!792957 (= e!440574 false)))

(declare-fun lt!353596 () Bool)

(declare-datatypes ((array!43033 0))(
  ( (array!43034 (arr!20593 (Array (_ BitVec 32) (_ BitVec 64))) (size!21014 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43033)

(declare-datatypes ((List!14609 0))(
  ( (Nil!14606) (Cons!14605 (h!15734 (_ BitVec 64)) (t!20932 List!14609)) )
))
(declare-fun arrayNoDuplicates!0 (array!43033 (_ BitVec 32) List!14609) Bool)

(assert (=> b!792957 (= lt!353596 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14606))))

(declare-fun b!792958 () Bool)

(declare-fun e!440575 () Bool)

(assert (=> b!792958 (= e!440575 e!440574)))

(declare-fun res!537649 () Bool)

(assert (=> b!792958 (=> (not res!537649) (not e!440574))))

(declare-datatypes ((SeekEntryResult!8191 0))(
  ( (MissingZero!8191 (index!35131 (_ BitVec 32))) (Found!8191 (index!35132 (_ BitVec 32))) (Intermediate!8191 (undefined!9003 Bool) (index!35133 (_ BitVec 32)) (x!66102 (_ BitVec 32))) (Undefined!8191) (MissingVacant!8191 (index!35134 (_ BitVec 32))) )
))
(declare-fun lt!353595 () SeekEntryResult!8191)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!792958 (= res!537649 (or (= lt!353595 (MissingZero!8191 i!1163)) (= lt!353595 (MissingVacant!8191 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43033 (_ BitVec 32)) SeekEntryResult!8191)

(assert (=> b!792958 (= lt!353595 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!792959 () Bool)

(declare-fun res!537650 () Bool)

(assert (=> b!792959 (=> (not res!537650) (not e!440575))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792959 (= res!537650 (validKeyInArray!0 (select (arr!20593 a!3170) j!153)))))

(declare-fun b!792960 () Bool)

(declare-fun res!537646 () Bool)

(assert (=> b!792960 (=> (not res!537646) (not e!440575))))

(assert (=> b!792960 (= res!537646 (and (= (size!21014 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21014 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21014 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!792962 () Bool)

(declare-fun res!537648 () Bool)

(assert (=> b!792962 (=> (not res!537648) (not e!440574))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43033 (_ BitVec 32)) Bool)

(assert (=> b!792962 (= res!537648 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!792963 () Bool)

(declare-fun res!537651 () Bool)

(assert (=> b!792963 (=> (not res!537651) (not e!440575))))

(declare-fun arrayContainsKey!0 (array!43033 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792963 (= res!537651 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!792961 () Bool)

(declare-fun res!537652 () Bool)

(assert (=> b!792961 (=> (not res!537652) (not e!440575))))

(assert (=> b!792961 (= res!537652 (validKeyInArray!0 k0!2044))))

(declare-fun res!537647 () Bool)

(assert (=> start!68292 (=> (not res!537647) (not e!440575))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68292 (= res!537647 (validMask!0 mask!3266))))

(assert (=> start!68292 e!440575))

(assert (=> start!68292 true))

(declare-fun array_inv!16367 (array!43033) Bool)

(assert (=> start!68292 (array_inv!16367 a!3170)))

(assert (= (and start!68292 res!537647) b!792960))

(assert (= (and b!792960 res!537646) b!792959))

(assert (= (and b!792959 res!537650) b!792961))

(assert (= (and b!792961 res!537652) b!792963))

(assert (= (and b!792963 res!537651) b!792958))

(assert (= (and b!792958 res!537649) b!792962))

(assert (= (and b!792962 res!537648) b!792957))

(declare-fun m!733543 () Bool)

(assert (=> b!792963 m!733543))

(declare-fun m!733545 () Bool)

(assert (=> b!792957 m!733545))

(declare-fun m!733547 () Bool)

(assert (=> b!792959 m!733547))

(assert (=> b!792959 m!733547))

(declare-fun m!733549 () Bool)

(assert (=> b!792959 m!733549))

(declare-fun m!733551 () Bool)

(assert (=> b!792961 m!733551))

(declare-fun m!733553 () Bool)

(assert (=> b!792958 m!733553))

(declare-fun m!733555 () Bool)

(assert (=> start!68292 m!733555))

(declare-fun m!733557 () Bool)

(assert (=> start!68292 m!733557))

(declare-fun m!733559 () Bool)

(assert (=> b!792962 m!733559))

(check-sat (not b!792959) (not b!792963) (not b!792957) (not b!792958) (not b!792961) (not start!68292) (not b!792962))
(check-sat)
