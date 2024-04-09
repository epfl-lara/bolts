; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68664 () Bool)

(assert start!68664)

(declare-fun b!798720 () Bool)

(declare-fun e!443011 () Bool)

(declare-fun e!443014 () Bool)

(assert (=> b!798720 (= e!443011 e!443014)))

(declare-fun res!543420 () Bool)

(assert (=> b!798720 (=> (not res!543420) (not e!443014))))

(declare-fun lt!356600 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43405 0))(
  ( (array!43406 (arr!20779 (Array (_ BitVec 32) (_ BitVec 64))) (size!21200 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43405)

(assert (=> b!798720 (= res!543420 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!356600 #b00000000000000000000000000000000) (bvslt lt!356600 (size!21200 a!3170))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!798720 (= lt!356600 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!798721 () Bool)

(declare-fun res!543414 () Bool)

(declare-fun e!443010 () Bool)

(assert (=> b!798721 (=> (not res!543414) (not e!443010))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43405 (_ BitVec 32)) Bool)

(assert (=> b!798721 (= res!543414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!798722 () Bool)

(declare-fun res!543418 () Bool)

(assert (=> b!798722 (=> (not res!543418) (not e!443010))))

(declare-datatypes ((List!14795 0))(
  ( (Nil!14792) (Cons!14791 (h!15920 (_ BitVec 64)) (t!21118 List!14795)) )
))
(declare-fun arrayNoDuplicates!0 (array!43405 (_ BitVec 32) List!14795) Bool)

(assert (=> b!798722 (= res!543418 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14792))))

(declare-fun b!798723 () Bool)

(declare-fun res!543416 () Bool)

(declare-fun e!443012 () Bool)

(assert (=> b!798723 (=> (not res!543416) (not e!443012))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!798723 (= res!543416 (and (= (size!21200 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21200 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21200 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!798724 () Bool)

(declare-fun res!543421 () Bool)

(assert (=> b!798724 (=> (not res!543421) (not e!443010))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!798724 (= res!543421 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21200 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20779 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21200 a!3170)) (= (select (arr!20779 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!798725 () Bool)

(declare-fun res!543413 () Bool)

(assert (=> b!798725 (=> (not res!543413) (not e!443012))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43405 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798725 (= res!543413 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798726 () Bool)

(declare-fun e!443009 () Bool)

(assert (=> b!798726 (= e!443009 e!443011)))

(declare-fun res!543417 () Bool)

(assert (=> b!798726 (=> (not res!543417) (not e!443011))))

(declare-datatypes ((SeekEntryResult!8377 0))(
  ( (MissingZero!8377 (index!35875 (_ BitVec 32))) (Found!8377 (index!35876 (_ BitVec 32))) (Intermediate!8377 (undefined!9189 Bool) (index!35877 (_ BitVec 32)) (x!66784 (_ BitVec 32))) (Undefined!8377) (MissingVacant!8377 (index!35878 (_ BitVec 32))) )
))
(declare-fun lt!356595 () SeekEntryResult!8377)

(declare-fun lt!356601 () SeekEntryResult!8377)

(assert (=> b!798726 (= res!543417 (and (= lt!356595 lt!356601) (= lt!356601 (Found!8377 j!153)) (not (= (select (arr!20779 a!3170) index!1236) (select (arr!20779 a!3170) j!153)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43405 (_ BitVec 32)) SeekEntryResult!8377)

(assert (=> b!798726 (= lt!356601 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20779 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43405 (_ BitVec 32)) SeekEntryResult!8377)

(assert (=> b!798726 (= lt!356595 (seekEntryOrOpen!0 (select (arr!20779 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798727 () Bool)

(assert (=> b!798727 (= e!443012 e!443010)))

(declare-fun res!543411 () Bool)

(assert (=> b!798727 (=> (not res!543411) (not e!443010))))

(declare-fun lt!356596 () SeekEntryResult!8377)

(assert (=> b!798727 (= res!543411 (or (= lt!356596 (MissingZero!8377 i!1163)) (= lt!356596 (MissingVacant!8377 i!1163))))))

(assert (=> b!798727 (= lt!356596 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun res!543412 () Bool)

(assert (=> start!68664 (=> (not res!543412) (not e!443012))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68664 (= res!543412 (validMask!0 mask!3266))))

(assert (=> start!68664 e!443012))

(assert (=> start!68664 true))

(declare-fun array_inv!16553 (array!43405) Bool)

(assert (=> start!68664 (array_inv!16553 a!3170)))

(declare-fun b!798728 () Bool)

(assert (=> b!798728 (= e!443010 e!443009)))

(declare-fun res!543409 () Bool)

(assert (=> b!798728 (=> (not res!543409) (not e!443009))))

(declare-fun lt!356598 () array!43405)

(declare-fun lt!356602 () (_ BitVec 64))

(declare-fun lt!356597 () SeekEntryResult!8377)

(assert (=> b!798728 (= res!543409 (= lt!356597 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356602 lt!356598 mask!3266)))))

(assert (=> b!798728 (= lt!356597 (seekEntryOrOpen!0 lt!356602 lt!356598 mask!3266))))

(assert (=> b!798728 (= lt!356602 (select (store (arr!20779 a!3170) i!1163 k0!2044) j!153))))

(assert (=> b!798728 (= lt!356598 (array!43406 (store (arr!20779 a!3170) i!1163 k0!2044) (size!21200 a!3170)))))

(declare-fun b!798729 () Bool)

(declare-fun res!543419 () Bool)

(assert (=> b!798729 (=> (not res!543419) (not e!443012))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798729 (= res!543419 (validKeyInArray!0 k0!2044))))

(declare-fun b!798730 () Bool)

(declare-fun res!543410 () Bool)

(assert (=> b!798730 (=> (not res!543410) (not e!443012))))

(assert (=> b!798730 (= res!543410 (validKeyInArray!0 (select (arr!20779 a!3170) j!153)))))

(declare-fun b!798731 () Bool)

(assert (=> b!798731 (= e!443014 false)))

(declare-fun lt!356599 () SeekEntryResult!8377)

(assert (=> b!798731 (= lt!356599 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356600 vacantBefore!23 (select (arr!20779 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798732 () Bool)

(declare-fun res!543415 () Bool)

(assert (=> b!798732 (=> (not res!543415) (not e!443014))))

(assert (=> b!798732 (= res!543415 (= lt!356597 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356600 vacantAfter!23 lt!356602 lt!356598 mask!3266)))))

(assert (= (and start!68664 res!543412) b!798723))

(assert (= (and b!798723 res!543416) b!798730))

(assert (= (and b!798730 res!543410) b!798729))

(assert (= (and b!798729 res!543419) b!798725))

(assert (= (and b!798725 res!543413) b!798727))

(assert (= (and b!798727 res!543411) b!798721))

(assert (= (and b!798721 res!543414) b!798722))

(assert (= (and b!798722 res!543418) b!798724))

(assert (= (and b!798724 res!543421) b!798728))

(assert (= (and b!798728 res!543409) b!798726))

(assert (= (and b!798726 res!543417) b!798720))

(assert (= (and b!798720 res!543420) b!798732))

(assert (= (and b!798732 res!543415) b!798731))

(declare-fun m!739783 () Bool)

(assert (=> start!68664 m!739783))

(declare-fun m!739785 () Bool)

(assert (=> start!68664 m!739785))

(declare-fun m!739787 () Bool)

(assert (=> b!798729 m!739787))

(declare-fun m!739789 () Bool)

(assert (=> b!798721 m!739789))

(declare-fun m!739791 () Bool)

(assert (=> b!798720 m!739791))

(declare-fun m!739793 () Bool)

(assert (=> b!798727 m!739793))

(declare-fun m!739795 () Bool)

(assert (=> b!798724 m!739795))

(declare-fun m!739797 () Bool)

(assert (=> b!798724 m!739797))

(declare-fun m!739799 () Bool)

(assert (=> b!798732 m!739799))

(declare-fun m!739801 () Bool)

(assert (=> b!798725 m!739801))

(declare-fun m!739803 () Bool)

(assert (=> b!798726 m!739803))

(declare-fun m!739805 () Bool)

(assert (=> b!798726 m!739805))

(assert (=> b!798726 m!739805))

(declare-fun m!739807 () Bool)

(assert (=> b!798726 m!739807))

(assert (=> b!798726 m!739805))

(declare-fun m!739809 () Bool)

(assert (=> b!798726 m!739809))

(assert (=> b!798731 m!739805))

(assert (=> b!798731 m!739805))

(declare-fun m!739811 () Bool)

(assert (=> b!798731 m!739811))

(declare-fun m!739813 () Bool)

(assert (=> b!798722 m!739813))

(assert (=> b!798730 m!739805))

(assert (=> b!798730 m!739805))

(declare-fun m!739815 () Bool)

(assert (=> b!798730 m!739815))

(declare-fun m!739817 () Bool)

(assert (=> b!798728 m!739817))

(declare-fun m!739819 () Bool)

(assert (=> b!798728 m!739819))

(declare-fun m!739821 () Bool)

(assert (=> b!798728 m!739821))

(declare-fun m!739823 () Bool)

(assert (=> b!798728 m!739823))

(check-sat (not b!798730) (not b!798721) (not b!798729) (not b!798726) (not b!798725) (not start!68664) (not b!798728) (not b!798720) (not b!798731) (not b!798722) (not b!798727) (not b!798732))
(check-sat)
