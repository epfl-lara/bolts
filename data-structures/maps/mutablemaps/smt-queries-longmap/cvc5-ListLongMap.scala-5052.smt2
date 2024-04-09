; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68842 () Bool)

(assert start!68842)

(declare-fun b!802079 () Bool)

(declare-fun e!444559 () Bool)

(declare-fun e!444557 () Bool)

(assert (=> b!802079 (= e!444559 e!444557)))

(declare-fun res!546773 () Bool)

(assert (=> b!802079 (=> (not res!546773) (not e!444557))))

(declare-datatypes ((SeekEntryResult!8466 0))(
  ( (MissingZero!8466 (index!36231 (_ BitVec 32))) (Found!8466 (index!36232 (_ BitVec 32))) (Intermediate!8466 (undefined!9278 Bool) (index!36233 (_ BitVec 32)) (x!67113 (_ BitVec 32))) (Undefined!8466) (MissingVacant!8466 (index!36234 (_ BitVec 32))) )
))
(declare-fun lt!358681 () SeekEntryResult!8466)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!802079 (= res!546773 (or (= lt!358681 (MissingZero!8466 i!1163)) (= lt!358681 (MissingVacant!8466 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-datatypes ((array!43583 0))(
  ( (array!43584 (arr!20868 (Array (_ BitVec 32) (_ BitVec 64))) (size!21289 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43583)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43583 (_ BitVec 32)) SeekEntryResult!8466)

(assert (=> b!802079 (= lt!358681 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!802080 () Bool)

(declare-fun res!546770 () Bool)

(assert (=> b!802080 (=> (not res!546770) (not e!444559))))

(declare-fun arrayContainsKey!0 (array!43583 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802080 (= res!546770 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802081 () Bool)

(declare-fun res!546778 () Bool)

(assert (=> b!802081 (=> (not res!546778) (not e!444559))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!802081 (= res!546778 (and (= (size!21289 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21289 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21289 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!802082 () Bool)

(declare-fun res!546774 () Bool)

(assert (=> b!802082 (=> (not res!546774) (not e!444557))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!802082 (= res!546774 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21289 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20868 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21289 a!3170)) (= (select (arr!20868 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!802083 () Bool)

(declare-fun res!546772 () Bool)

(assert (=> b!802083 (=> (not res!546772) (not e!444559))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802083 (= res!546772 (validKeyInArray!0 k!2044))))

(declare-fun b!802084 () Bool)

(declare-fun e!444558 () Bool)

(assert (=> b!802084 (= e!444557 e!444558)))

(declare-fun res!546768 () Bool)

(assert (=> b!802084 (=> (not res!546768) (not e!444558))))

(declare-fun lt!358675 () (_ BitVec 64))

(declare-fun lt!358676 () array!43583)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43583 (_ BitVec 32)) SeekEntryResult!8466)

(assert (=> b!802084 (= res!546768 (= (seekEntryOrOpen!0 lt!358675 lt!358676 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358675 lt!358676 mask!3266)))))

(assert (=> b!802084 (= lt!358675 (select (store (arr!20868 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!802084 (= lt!358676 (array!43584 (store (arr!20868 a!3170) i!1163 k!2044) (size!21289 a!3170)))))

(declare-fun b!802085 () Bool)

(declare-fun e!444555 () Bool)

(assert (=> b!802085 (= e!444555 (not (or (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (= (select (store (arr!20868 a!3170) i!1163 k!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!358680 () (_ BitVec 32))

(assert (=> b!802085 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358680 vacantAfter!23 lt!358675 lt!358676 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358680 vacantBefore!23 (select (arr!20868 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27474 0))(
  ( (Unit!27475) )
))
(declare-fun lt!358679 () Unit!27474)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43583 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27474)

(assert (=> b!802085 (= lt!358679 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!358680 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802085 (= lt!358680 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun res!546771 () Bool)

(assert (=> start!68842 (=> (not res!546771) (not e!444559))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68842 (= res!546771 (validMask!0 mask!3266))))

(assert (=> start!68842 e!444559))

(assert (=> start!68842 true))

(declare-fun array_inv!16642 (array!43583) Bool)

(assert (=> start!68842 (array_inv!16642 a!3170)))

(declare-fun b!802086 () Bool)

(assert (=> b!802086 (= e!444558 e!444555)))

(declare-fun res!546776 () Bool)

(assert (=> b!802086 (=> (not res!546776) (not e!444555))))

(declare-fun lt!358678 () SeekEntryResult!8466)

(declare-fun lt!358677 () SeekEntryResult!8466)

(assert (=> b!802086 (= res!546776 (and (= lt!358677 lt!358678) (= lt!358678 (Found!8466 j!153)) (not (= (select (arr!20868 a!3170) index!1236) (select (arr!20868 a!3170) j!153)))))))

(assert (=> b!802086 (= lt!358678 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20868 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!802086 (= lt!358677 (seekEntryOrOpen!0 (select (arr!20868 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!802087 () Bool)

(declare-fun res!546769 () Bool)

(assert (=> b!802087 (=> (not res!546769) (not e!444557))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43583 (_ BitVec 32)) Bool)

(assert (=> b!802087 (= res!546769 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802088 () Bool)

(declare-fun res!546775 () Bool)

(assert (=> b!802088 (=> (not res!546775) (not e!444559))))

(assert (=> b!802088 (= res!546775 (validKeyInArray!0 (select (arr!20868 a!3170) j!153)))))

(declare-fun b!802089 () Bool)

(declare-fun res!546777 () Bool)

(assert (=> b!802089 (=> (not res!546777) (not e!444557))))

(declare-datatypes ((List!14884 0))(
  ( (Nil!14881) (Cons!14880 (h!16009 (_ BitVec 64)) (t!21207 List!14884)) )
))
(declare-fun arrayNoDuplicates!0 (array!43583 (_ BitVec 32) List!14884) Bool)

(assert (=> b!802089 (= res!546777 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14881))))

(assert (= (and start!68842 res!546771) b!802081))

(assert (= (and b!802081 res!546778) b!802088))

(assert (= (and b!802088 res!546775) b!802083))

(assert (= (and b!802083 res!546772) b!802080))

(assert (= (and b!802080 res!546770) b!802079))

(assert (= (and b!802079 res!546773) b!802087))

(assert (= (and b!802087 res!546769) b!802089))

(assert (= (and b!802089 res!546777) b!802082))

(assert (= (and b!802082 res!546774) b!802084))

(assert (= (and b!802084 res!546768) b!802086))

(assert (= (and b!802086 res!546776) b!802085))

(declare-fun m!743557 () Bool)

(assert (=> b!802080 m!743557))

(declare-fun m!743559 () Bool)

(assert (=> b!802086 m!743559))

(declare-fun m!743561 () Bool)

(assert (=> b!802086 m!743561))

(assert (=> b!802086 m!743561))

(declare-fun m!743563 () Bool)

(assert (=> b!802086 m!743563))

(assert (=> b!802086 m!743561))

(declare-fun m!743565 () Bool)

(assert (=> b!802086 m!743565))

(declare-fun m!743567 () Bool)

(assert (=> b!802089 m!743567))

(declare-fun m!743569 () Bool)

(assert (=> b!802082 m!743569))

(declare-fun m!743571 () Bool)

(assert (=> b!802082 m!743571))

(declare-fun m!743573 () Bool)

(assert (=> b!802083 m!743573))

(declare-fun m!743575 () Bool)

(assert (=> b!802079 m!743575))

(declare-fun m!743577 () Bool)

(assert (=> b!802087 m!743577))

(declare-fun m!743579 () Bool)

(assert (=> start!68842 m!743579))

(declare-fun m!743581 () Bool)

(assert (=> start!68842 m!743581))

(assert (=> b!802088 m!743561))

(assert (=> b!802088 m!743561))

(declare-fun m!743583 () Bool)

(assert (=> b!802088 m!743583))

(assert (=> b!802085 m!743561))

(declare-fun m!743585 () Bool)

(assert (=> b!802085 m!743585))

(assert (=> b!802085 m!743561))

(declare-fun m!743587 () Bool)

(assert (=> b!802085 m!743587))

(declare-fun m!743589 () Bool)

(assert (=> b!802085 m!743589))

(declare-fun m!743591 () Bool)

(assert (=> b!802085 m!743591))

(declare-fun m!743593 () Bool)

(assert (=> b!802085 m!743593))

(declare-fun m!743595 () Bool)

(assert (=> b!802085 m!743595))

(declare-fun m!743597 () Bool)

(assert (=> b!802084 m!743597))

(declare-fun m!743599 () Bool)

(assert (=> b!802084 m!743599))

(assert (=> b!802084 m!743595))

(declare-fun m!743601 () Bool)

(assert (=> b!802084 m!743601))

(push 1)

