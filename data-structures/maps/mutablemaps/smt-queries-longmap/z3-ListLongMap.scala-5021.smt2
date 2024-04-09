; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68658 () Bool)

(assert start!68658)

(declare-fun b!798615 () Bool)

(declare-fun e!442965 () Bool)

(assert (=> b!798615 (= e!442965 false)))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43399 0))(
  ( (array!43400 (arr!20776 (Array (_ BitVec 32) (_ BitVec 64))) (size!21197 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43399)

(declare-datatypes ((SeekEntryResult!8374 0))(
  ( (MissingZero!8374 (index!35863 (_ BitVec 32))) (Found!8374 (index!35864 (_ BitVec 32))) (Intermediate!8374 (undefined!9186 Bool) (index!35865 (_ BitVec 32)) (x!66773 (_ BitVec 32))) (Undefined!8374) (MissingVacant!8374 (index!35866 (_ BitVec 32))) )
))
(declare-fun lt!356537 () SeekEntryResult!8374)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43399 (_ BitVec 32)) SeekEntryResult!8374)

(assert (=> b!798615 (= lt!356537 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20776 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!356536 () SeekEntryResult!8374)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43399 (_ BitVec 32)) SeekEntryResult!8374)

(assert (=> b!798615 (= lt!356536 (seekEntryOrOpen!0 (select (arr!20776 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798616 () Bool)

(declare-fun res!543313 () Bool)

(declare-fun e!442964 () Bool)

(assert (=> b!798616 (=> (not res!543313) (not e!442964))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798616 (= res!543313 (validKeyInArray!0 k0!2044))))

(declare-fun b!798617 () Bool)

(declare-fun res!543308 () Bool)

(declare-fun e!442966 () Bool)

(assert (=> b!798617 (=> (not res!543308) (not e!442966))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!798617 (= res!543308 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21197 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20776 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21197 a!3170)) (= (select (arr!20776 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!798618 () Bool)

(assert (=> b!798618 (= e!442966 e!442965)))

(declare-fun res!543309 () Bool)

(assert (=> b!798618 (=> (not res!543309) (not e!442965))))

(declare-fun lt!356539 () (_ BitVec 64))

(declare-fun lt!356535 () array!43399)

(assert (=> b!798618 (= res!543309 (= (seekEntryOrOpen!0 lt!356539 lt!356535 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356539 lt!356535 mask!3266)))))

(assert (=> b!798618 (= lt!356539 (select (store (arr!20776 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!798618 (= lt!356535 (array!43400 (store (arr!20776 a!3170) i!1163 k0!2044) (size!21197 a!3170)))))

(declare-fun b!798619 () Bool)

(declare-fun res!543307 () Bool)

(assert (=> b!798619 (=> (not res!543307) (not e!442964))))

(assert (=> b!798619 (= res!543307 (and (= (size!21197 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21197 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21197 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!543310 () Bool)

(assert (=> start!68658 (=> (not res!543310) (not e!442964))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68658 (= res!543310 (validMask!0 mask!3266))))

(assert (=> start!68658 e!442964))

(assert (=> start!68658 true))

(declare-fun array_inv!16550 (array!43399) Bool)

(assert (=> start!68658 (array_inv!16550 a!3170)))

(declare-fun b!798620 () Bool)

(declare-fun res!543305 () Bool)

(assert (=> b!798620 (=> (not res!543305) (not e!442966))))

(declare-datatypes ((List!14792 0))(
  ( (Nil!14789) (Cons!14788 (h!15917 (_ BitVec 64)) (t!21115 List!14792)) )
))
(declare-fun arrayNoDuplicates!0 (array!43399 (_ BitVec 32) List!14792) Bool)

(assert (=> b!798620 (= res!543305 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14789))))

(declare-fun b!798621 () Bool)

(declare-fun res!543306 () Bool)

(assert (=> b!798621 (=> (not res!543306) (not e!442964))))

(declare-fun arrayContainsKey!0 (array!43399 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798621 (= res!543306 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798622 () Bool)

(declare-fun res!543304 () Bool)

(assert (=> b!798622 (=> (not res!543304) (not e!442966))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43399 (_ BitVec 32)) Bool)

(assert (=> b!798622 (= res!543304 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!798623 () Bool)

(declare-fun res!543311 () Bool)

(assert (=> b!798623 (=> (not res!543311) (not e!442964))))

(assert (=> b!798623 (= res!543311 (validKeyInArray!0 (select (arr!20776 a!3170) j!153)))))

(declare-fun b!798624 () Bool)

(assert (=> b!798624 (= e!442964 e!442966)))

(declare-fun res!543312 () Bool)

(assert (=> b!798624 (=> (not res!543312) (not e!442966))))

(declare-fun lt!356538 () SeekEntryResult!8374)

(assert (=> b!798624 (= res!543312 (or (= lt!356538 (MissingZero!8374 i!1163)) (= lt!356538 (MissingVacant!8374 i!1163))))))

(assert (=> b!798624 (= lt!356538 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(assert (= (and start!68658 res!543310) b!798619))

(assert (= (and b!798619 res!543307) b!798623))

(assert (= (and b!798623 res!543311) b!798616))

(assert (= (and b!798616 res!543313) b!798621))

(assert (= (and b!798621 res!543306) b!798624))

(assert (= (and b!798624 res!543312) b!798622))

(assert (= (and b!798622 res!543304) b!798620))

(assert (= (and b!798620 res!543305) b!798617))

(assert (= (and b!798617 res!543308) b!798618))

(assert (= (and b!798618 res!543309) b!798615))

(declare-fun m!739673 () Bool)

(assert (=> b!798617 m!739673))

(declare-fun m!739675 () Bool)

(assert (=> b!798617 m!739675))

(declare-fun m!739677 () Bool)

(assert (=> b!798624 m!739677))

(declare-fun m!739679 () Bool)

(assert (=> b!798620 m!739679))

(declare-fun m!739681 () Bool)

(assert (=> b!798615 m!739681))

(assert (=> b!798615 m!739681))

(declare-fun m!739683 () Bool)

(assert (=> b!798615 m!739683))

(assert (=> b!798615 m!739681))

(declare-fun m!739685 () Bool)

(assert (=> b!798615 m!739685))

(declare-fun m!739687 () Bool)

(assert (=> b!798622 m!739687))

(declare-fun m!739689 () Bool)

(assert (=> b!798618 m!739689))

(declare-fun m!739691 () Bool)

(assert (=> b!798618 m!739691))

(declare-fun m!739693 () Bool)

(assert (=> b!798618 m!739693))

(declare-fun m!739695 () Bool)

(assert (=> b!798618 m!739695))

(assert (=> b!798623 m!739681))

(assert (=> b!798623 m!739681))

(declare-fun m!739697 () Bool)

(assert (=> b!798623 m!739697))

(declare-fun m!739699 () Bool)

(assert (=> b!798616 m!739699))

(declare-fun m!739701 () Bool)

(assert (=> b!798621 m!739701))

(declare-fun m!739703 () Bool)

(assert (=> start!68658 m!739703))

(declare-fun m!739705 () Bool)

(assert (=> start!68658 m!739705))

(check-sat (not start!68658) (not b!798624) (not b!798615) (not b!798620) (not b!798616) (not b!798622) (not b!798621) (not b!798618) (not b!798623))
(check-sat)
