; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68760 () Bool)

(assert start!68760)

(declare-fun b!800592 () Bool)

(declare-fun res!545287 () Bool)

(declare-fun e!443878 () Bool)

(assert (=> b!800592 (=> (not res!545287) (not e!443878))))

(declare-datatypes ((array!43501 0))(
  ( (array!43502 (arr!20827 (Array (_ BitVec 32) (_ BitVec 64))) (size!21248 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43501)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43501 (_ BitVec 32)) Bool)

(assert (=> b!800592 (= res!545287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!800593 () Bool)

(declare-fun res!545281 () Bool)

(declare-fun e!443874 () Bool)

(assert (=> b!800593 (=> (not res!545281) (not e!443874))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43501 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!800593 (= res!545281 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!800594 () Bool)

(declare-fun res!545293 () Bool)

(declare-fun e!443876 () Bool)

(assert (=> b!800594 (=> (not res!545293) (not e!443876))))

(declare-fun lt!357753 () array!43501)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!357752 () (_ BitVec 32))

(declare-fun lt!357749 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!8425 0))(
  ( (MissingZero!8425 (index!36067 (_ BitVec 32))) (Found!8425 (index!36068 (_ BitVec 32))) (Intermediate!8425 (undefined!9237 Bool) (index!36069 (_ BitVec 32)) (x!66960 (_ BitVec 32))) (Undefined!8425) (MissingVacant!8425 (index!36070 (_ BitVec 32))) )
))
(declare-fun lt!357754 () SeekEntryResult!8425)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43501 (_ BitVec 32)) SeekEntryResult!8425)

(assert (=> b!800594 (= res!545293 (= lt!357754 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357752 vacantAfter!23 lt!357749 lt!357753 mask!3266)))))

(declare-fun b!800595 () Bool)

(assert (=> b!800595 (= e!443874 e!443878)))

(declare-fun res!545283 () Bool)

(assert (=> b!800595 (=> (not res!545283) (not e!443878))))

(declare-fun lt!357750 () SeekEntryResult!8425)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!800595 (= res!545283 (or (= lt!357750 (MissingZero!8425 i!1163)) (= lt!357750 (MissingVacant!8425 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43501 (_ BitVec 32)) SeekEntryResult!8425)

(assert (=> b!800595 (= lt!357750 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!800596 () Bool)

(declare-fun res!545289 () Bool)

(assert (=> b!800596 (=> (not res!545289) (not e!443878))))

(declare-datatypes ((List!14843 0))(
  ( (Nil!14840) (Cons!14839 (h!15968 (_ BitVec 64)) (t!21166 List!14843)) )
))
(declare-fun arrayNoDuplicates!0 (array!43501 (_ BitVec 32) List!14843) Bool)

(assert (=> b!800596 (= res!545289 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14840))))

(declare-fun res!545290 () Bool)

(assert (=> start!68760 (=> (not res!545290) (not e!443874))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68760 (= res!545290 (validMask!0 mask!3266))))

(assert (=> start!68760 e!443874))

(assert (=> start!68760 true))

(declare-fun array_inv!16601 (array!43501) Bool)

(assert (=> start!68760 (array_inv!16601 a!3170)))

(declare-fun b!800597 () Bool)

(declare-fun e!443873 () Bool)

(assert (=> b!800597 (= e!443878 e!443873)))

(declare-fun res!545288 () Bool)

(assert (=> b!800597 (=> (not res!545288) (not e!443873))))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!800597 (= res!545288 (= lt!357754 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!357749 lt!357753 mask!3266)))))

(assert (=> b!800597 (= lt!357754 (seekEntryOrOpen!0 lt!357749 lt!357753 mask!3266))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!800597 (= lt!357749 (select (store (arr!20827 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!800597 (= lt!357753 (array!43502 (store (arr!20827 a!3170) i!1163 k0!2044) (size!21248 a!3170)))))

(declare-fun b!800598 () Bool)

(declare-fun e!443875 () Bool)

(assert (=> b!800598 (= e!443873 e!443875)))

(declare-fun res!545284 () Bool)

(assert (=> b!800598 (=> (not res!545284) (not e!443875))))

(declare-fun lt!357751 () SeekEntryResult!8425)

(declare-fun lt!357747 () SeekEntryResult!8425)

(assert (=> b!800598 (= res!545284 (and (= lt!357751 lt!357747) (= lt!357747 (Found!8425 j!153)) (not (= (select (arr!20827 a!3170) index!1236) (select (arr!20827 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!800598 (= lt!357747 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20827 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!800598 (= lt!357751 (seekEntryOrOpen!0 (select (arr!20827 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800599 () Bool)

(declare-fun res!545282 () Bool)

(assert (=> b!800599 (=> (not res!545282) (not e!443878))))

(assert (=> b!800599 (= res!545282 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21248 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20827 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21248 a!3170)) (= (select (arr!20827 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!800600 () Bool)

(declare-fun res!545286 () Bool)

(assert (=> b!800600 (=> (not res!545286) (not e!443874))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!800600 (= res!545286 (validKeyInArray!0 k0!2044))))

(declare-fun b!800601 () Bool)

(declare-fun res!545291 () Bool)

(assert (=> b!800601 (=> (not res!545291) (not e!443874))))

(assert (=> b!800601 (= res!545291 (and (= (size!21248 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21248 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21248 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!800602 () Bool)

(declare-fun res!545285 () Bool)

(assert (=> b!800602 (=> (not res!545285) (not e!443874))))

(assert (=> b!800602 (= res!545285 (validKeyInArray!0 (select (arr!20827 a!3170) j!153)))))

(declare-fun b!800603 () Bool)

(assert (=> b!800603 (= e!443876 false)))

(declare-fun lt!357748 () SeekEntryResult!8425)

(assert (=> b!800603 (= lt!357748 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!357752 vacantBefore!23 (select (arr!20827 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!800604 () Bool)

(assert (=> b!800604 (= e!443875 e!443876)))

(declare-fun res!545292 () Bool)

(assert (=> b!800604 (=> (not res!545292) (not e!443876))))

(assert (=> b!800604 (= res!545292 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!357752 #b00000000000000000000000000000000) (bvslt lt!357752 (size!21248 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!800604 (= lt!357752 (nextIndex!0 index!1236 x!1077 mask!3266))))

(assert (= (and start!68760 res!545290) b!800601))

(assert (= (and b!800601 res!545291) b!800602))

(assert (= (and b!800602 res!545285) b!800600))

(assert (= (and b!800600 res!545286) b!800593))

(assert (= (and b!800593 res!545281) b!800595))

(assert (= (and b!800595 res!545283) b!800592))

(assert (= (and b!800592 res!545287) b!800596))

(assert (= (and b!800596 res!545289) b!800599))

(assert (= (and b!800599 res!545282) b!800597))

(assert (= (and b!800597 res!545288) b!800598))

(assert (= (and b!800598 res!545284) b!800604))

(assert (= (and b!800604 res!545292) b!800594))

(assert (= (and b!800594 res!545293) b!800603))

(declare-fun m!741799 () Bool)

(assert (=> b!800599 m!741799))

(declare-fun m!741801 () Bool)

(assert (=> b!800599 m!741801))

(declare-fun m!741803 () Bool)

(assert (=> b!800600 m!741803))

(declare-fun m!741805 () Bool)

(assert (=> b!800592 m!741805))

(declare-fun m!741807 () Bool)

(assert (=> b!800598 m!741807))

(declare-fun m!741809 () Bool)

(assert (=> b!800598 m!741809))

(assert (=> b!800598 m!741809))

(declare-fun m!741811 () Bool)

(assert (=> b!800598 m!741811))

(assert (=> b!800598 m!741809))

(declare-fun m!741813 () Bool)

(assert (=> b!800598 m!741813))

(declare-fun m!741815 () Bool)

(assert (=> b!800594 m!741815))

(declare-fun m!741817 () Bool)

(assert (=> b!800596 m!741817))

(declare-fun m!741819 () Bool)

(assert (=> b!800604 m!741819))

(declare-fun m!741821 () Bool)

(assert (=> b!800593 m!741821))

(assert (=> b!800602 m!741809))

(assert (=> b!800602 m!741809))

(declare-fun m!741823 () Bool)

(assert (=> b!800602 m!741823))

(declare-fun m!741825 () Bool)

(assert (=> start!68760 m!741825))

(declare-fun m!741827 () Bool)

(assert (=> start!68760 m!741827))

(assert (=> b!800603 m!741809))

(assert (=> b!800603 m!741809))

(declare-fun m!741829 () Bool)

(assert (=> b!800603 m!741829))

(declare-fun m!741831 () Bool)

(assert (=> b!800597 m!741831))

(declare-fun m!741833 () Bool)

(assert (=> b!800597 m!741833))

(declare-fun m!741835 () Bool)

(assert (=> b!800597 m!741835))

(declare-fun m!741837 () Bool)

(assert (=> b!800597 m!741837))

(declare-fun m!741839 () Bool)

(assert (=> b!800595 m!741839))

(check-sat (not b!800603) (not b!800600) (not b!800595) (not b!800597) (not b!800598) (not b!800592) (not b!800596) (not start!68760) (not b!800593) (not b!800604) (not b!800602) (not b!800594))
(check-sat)
