; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68840 () Bool)

(assert start!68840)

(declare-fun b!802046 () Bool)

(declare-fun res!546736 () Bool)

(declare-fun e!444542 () Bool)

(assert (=> b!802046 (=> (not res!546736) (not e!444542))))

(declare-datatypes ((array!43581 0))(
  ( (array!43582 (arr!20867 (Array (_ BitVec 32) (_ BitVec 64))) (size!21288 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43581)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!802046 (= res!546736 (validKeyInArray!0 (select (arr!20867 a!3170) j!153)))))

(declare-fun b!802047 () Bool)

(declare-fun res!546740 () Bool)

(declare-fun e!444543 () Bool)

(assert (=> b!802047 (=> (not res!546740) (not e!444543))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!802047 (= res!546740 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21288 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20867 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21288 a!3170)) (= (select (arr!20867 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!802048 () Bool)

(declare-fun res!546745 () Bool)

(assert (=> b!802048 (=> (not res!546745) (not e!444543))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43581 (_ BitVec 32)) Bool)

(assert (=> b!802048 (= res!546745 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!802049 () Bool)

(declare-fun res!546741 () Bool)

(assert (=> b!802049 (=> (not res!546741) (not e!444542))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!802049 (= res!546741 (validKeyInArray!0 k!2044))))

(declare-fun b!802050 () Bool)

(declare-fun res!546742 () Bool)

(assert (=> b!802050 (=> (not res!546742) (not e!444543))))

(declare-datatypes ((List!14883 0))(
  ( (Nil!14880) (Cons!14879 (h!16008 (_ BitVec 64)) (t!21206 List!14883)) )
))
(declare-fun arrayNoDuplicates!0 (array!43581 (_ BitVec 32) List!14883) Bool)

(assert (=> b!802050 (= res!546742 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14880))))

(declare-fun b!802051 () Bool)

(declare-fun res!546735 () Bool)

(assert (=> b!802051 (=> (not res!546735) (not e!444542))))

(declare-fun arrayContainsKey!0 (array!43581 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!802051 (= res!546735 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!802052 () Bool)

(declare-fun e!444544 () Bool)

(assert (=> b!802052 (= e!444543 e!444544)))

(declare-fun res!546739 () Bool)

(assert (=> b!802052 (=> (not res!546739) (not e!444544))))

(declare-fun lt!358657 () (_ BitVec 64))

(declare-fun lt!358660 () array!43581)

(declare-datatypes ((SeekEntryResult!8465 0))(
  ( (MissingZero!8465 (index!36227 (_ BitVec 32))) (Found!8465 (index!36228 (_ BitVec 32))) (Intermediate!8465 (undefined!9277 Bool) (index!36229 (_ BitVec 32)) (x!67104 (_ BitVec 32))) (Undefined!8465) (MissingVacant!8465 (index!36230 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43581 (_ BitVec 32)) SeekEntryResult!8465)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43581 (_ BitVec 32)) SeekEntryResult!8465)

(assert (=> b!802052 (= res!546739 (= (seekEntryOrOpen!0 lt!358657 lt!358660 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!358657 lt!358660 mask!3266)))))

(assert (=> b!802052 (= lt!358657 (select (store (arr!20867 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!802052 (= lt!358660 (array!43582 (store (arr!20867 a!3170) i!1163 k!2044) (size!21288 a!3170)))))

(declare-fun res!546737 () Bool)

(assert (=> start!68840 (=> (not res!546737) (not e!444542))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68840 (= res!546737 (validMask!0 mask!3266))))

(assert (=> start!68840 e!444542))

(assert (=> start!68840 true))

(declare-fun array_inv!16641 (array!43581) Bool)

(assert (=> start!68840 (array_inv!16641 a!3170)))

(declare-fun b!802053 () Bool)

(declare-fun e!444540 () Bool)

(assert (=> b!802053 (= e!444540 (not (or (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvslt vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)))))))

(declare-fun lt!358658 () (_ BitVec 32))

(assert (=> b!802053 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358658 vacantAfter!23 lt!358657 lt!358660 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!358658 vacantBefore!23 (select (arr!20867 a!3170) j!153) a!3170 mask!3266))))

(declare-datatypes ((Unit!27472 0))(
  ( (Unit!27473) )
))
(declare-fun lt!358655 () Unit!27472)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43581 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27472)

(assert (=> b!802053 (= lt!358655 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!358658 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!802053 (= lt!358658 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!802054 () Bool)

(assert (=> b!802054 (= e!444544 e!444540)))

(declare-fun res!546738 () Bool)

(assert (=> b!802054 (=> (not res!546738) (not e!444540))))

(declare-fun lt!358654 () SeekEntryResult!8465)

(declare-fun lt!358656 () SeekEntryResult!8465)

(assert (=> b!802054 (= res!546738 (and (= lt!358654 lt!358656) (= lt!358656 (Found!8465 j!153)) (not (= (select (arr!20867 a!3170) index!1236) (select (arr!20867 a!3170) j!153)))))))

(assert (=> b!802054 (= lt!358656 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20867 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!802054 (= lt!358654 (seekEntryOrOpen!0 (select (arr!20867 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!802055 () Bool)

(assert (=> b!802055 (= e!444542 e!444543)))

(declare-fun res!546744 () Bool)

(assert (=> b!802055 (=> (not res!546744) (not e!444543))))

(declare-fun lt!358659 () SeekEntryResult!8465)

(assert (=> b!802055 (= res!546744 (or (= lt!358659 (MissingZero!8465 i!1163)) (= lt!358659 (MissingVacant!8465 i!1163))))))

(assert (=> b!802055 (= lt!358659 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!802056 () Bool)

(declare-fun res!546743 () Bool)

(assert (=> b!802056 (=> (not res!546743) (not e!444542))))

(assert (=> b!802056 (= res!546743 (and (= (size!21288 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21288 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21288 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68840 res!546737) b!802056))

(assert (= (and b!802056 res!546743) b!802046))

(assert (= (and b!802046 res!546736) b!802049))

(assert (= (and b!802049 res!546741) b!802051))

(assert (= (and b!802051 res!546735) b!802055))

(assert (= (and b!802055 res!546744) b!802048))

(assert (= (and b!802048 res!546745) b!802050))

(assert (= (and b!802050 res!546742) b!802047))

(assert (= (and b!802047 res!546740) b!802052))

(assert (= (and b!802052 res!546739) b!802054))

(assert (= (and b!802054 res!546738) b!802053))

(declare-fun m!743513 () Bool)

(assert (=> b!802051 m!743513))

(declare-fun m!743515 () Bool)

(assert (=> b!802050 m!743515))

(declare-fun m!743517 () Bool)

(assert (=> start!68840 m!743517))

(declare-fun m!743519 () Bool)

(assert (=> start!68840 m!743519))

(declare-fun m!743521 () Bool)

(assert (=> b!802053 m!743521))

(declare-fun m!743523 () Bool)

(assert (=> b!802053 m!743523))

(declare-fun m!743525 () Bool)

(assert (=> b!802053 m!743525))

(assert (=> b!802053 m!743521))

(declare-fun m!743527 () Bool)

(assert (=> b!802053 m!743527))

(declare-fun m!743529 () Bool)

(assert (=> b!802053 m!743529))

(assert (=> b!802046 m!743521))

(assert (=> b!802046 m!743521))

(declare-fun m!743531 () Bool)

(assert (=> b!802046 m!743531))

(declare-fun m!743533 () Bool)

(assert (=> b!802054 m!743533))

(assert (=> b!802054 m!743521))

(assert (=> b!802054 m!743521))

(declare-fun m!743535 () Bool)

(assert (=> b!802054 m!743535))

(assert (=> b!802054 m!743521))

(declare-fun m!743537 () Bool)

(assert (=> b!802054 m!743537))

(declare-fun m!743539 () Bool)

(assert (=> b!802048 m!743539))

(declare-fun m!743541 () Bool)

(assert (=> b!802055 m!743541))

(declare-fun m!743543 () Bool)

(assert (=> b!802049 m!743543))

(declare-fun m!743545 () Bool)

(assert (=> b!802052 m!743545))

(declare-fun m!743547 () Bool)

(assert (=> b!802052 m!743547))

(declare-fun m!743549 () Bool)

(assert (=> b!802052 m!743549))

(declare-fun m!743551 () Bool)

(assert (=> b!802052 m!743551))

(declare-fun m!743553 () Bool)

(assert (=> b!802047 m!743553))

(declare-fun m!743555 () Bool)

(assert (=> b!802047 m!743555))

(push 1)

(assert (not b!802055))

(assert (not b!802053))

(assert (not start!68840))

(assert (not b!802051))

(assert (not b!802054))

(assert (not b!802049))

(assert (not b!802052))

(assert (not b!802046))

(assert (not b!802050))

(assert (not b!802048))

(check-sat)

(pop 1)

(push 1)

(check-sat)

