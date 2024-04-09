; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68660 () Bool)

(assert start!68660)

(declare-fun b!798645 () Bool)

(declare-fun res!543342 () Bool)

(declare-fun e!442977 () Bool)

(assert (=> b!798645 (=> (not res!543342) (not e!442977))))

(declare-datatypes ((array!43401 0))(
  ( (array!43402 (arr!20777 (Array (_ BitVec 32) (_ BitVec 64))) (size!21198 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43401)

(declare-datatypes ((List!14793 0))(
  ( (Nil!14790) (Cons!14789 (h!15918 (_ BitVec 64)) (t!21116 List!14793)) )
))
(declare-fun arrayNoDuplicates!0 (array!43401 (_ BitVec 32) List!14793) Bool)

(assert (=> b!798645 (= res!543342 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14790))))

(declare-fun b!798646 () Bool)

(declare-fun res!543335 () Bool)

(assert (=> b!798646 (=> (not res!543335) (not e!442977))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43401 (_ BitVec 32)) Bool)

(assert (=> b!798646 (= res!543335 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!798647 () Bool)

(declare-fun e!442976 () Bool)

(assert (=> b!798647 (= e!442977 e!442976)))

(declare-fun res!543340 () Bool)

(assert (=> b!798647 (=> (not res!543340) (not e!442976))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!356554 () array!43401)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!356550 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8375 0))(
  ( (MissingZero!8375 (index!35867 (_ BitVec 32))) (Found!8375 (index!35868 (_ BitVec 32))) (Intermediate!8375 (undefined!9187 Bool) (index!35869 (_ BitVec 32)) (x!66774 (_ BitVec 32))) (Undefined!8375) (MissingVacant!8375 (index!35870 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43401 (_ BitVec 32)) SeekEntryResult!8375)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43401 (_ BitVec 32)) SeekEntryResult!8375)

(assert (=> b!798647 (= res!543340 (= (seekEntryOrOpen!0 lt!356550 lt!356554 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356550 lt!356554 mask!3266)))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!798647 (= lt!356550 (select (store (arr!20777 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!798647 (= lt!356554 (array!43402 (store (arr!20777 a!3170) i!1163 k!2044) (size!21198 a!3170)))))

(declare-fun b!798648 () Bool)

(declare-fun res!543336 () Bool)

(declare-fun e!442975 () Bool)

(assert (=> b!798648 (=> (not res!543336) (not e!442975))))

(assert (=> b!798648 (= res!543336 (and (= (size!21198 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21198 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21198 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!798649 () Bool)

(declare-fun res!543339 () Bool)

(assert (=> b!798649 (=> (not res!543339) (not e!442975))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798649 (= res!543339 (validKeyInArray!0 (select (arr!20777 a!3170) j!153)))))

(declare-fun b!798650 () Bool)

(declare-fun res!543334 () Bool)

(assert (=> b!798650 (=> (not res!543334) (not e!442977))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!798650 (= res!543334 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21198 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20777 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21198 a!3170)) (= (select (arr!20777 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!798651 () Bool)

(assert (=> b!798651 (= e!442976 false)))

(declare-fun lt!356553 () SeekEntryResult!8375)

(assert (=> b!798651 (= lt!356553 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20777 a!3170) j!153) a!3170 mask!3266))))

(declare-fun lt!356551 () SeekEntryResult!8375)

(assert (=> b!798651 (= lt!356551 (seekEntryOrOpen!0 (select (arr!20777 a!3170) j!153) a!3170 mask!3266))))

(declare-fun res!543341 () Bool)

(assert (=> start!68660 (=> (not res!543341) (not e!442975))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68660 (= res!543341 (validMask!0 mask!3266))))

(assert (=> start!68660 e!442975))

(assert (=> start!68660 true))

(declare-fun array_inv!16551 (array!43401) Bool)

(assert (=> start!68660 (array_inv!16551 a!3170)))

(declare-fun b!798652 () Bool)

(assert (=> b!798652 (= e!442975 e!442977)))

(declare-fun res!543338 () Bool)

(assert (=> b!798652 (=> (not res!543338) (not e!442977))))

(declare-fun lt!356552 () SeekEntryResult!8375)

(assert (=> b!798652 (= res!543338 (or (= lt!356552 (MissingZero!8375 i!1163)) (= lt!356552 (MissingVacant!8375 i!1163))))))

(assert (=> b!798652 (= lt!356552 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!798653 () Bool)

(declare-fun res!543337 () Bool)

(assert (=> b!798653 (=> (not res!543337) (not e!442975))))

(declare-fun arrayContainsKey!0 (array!43401 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798653 (= res!543337 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798654 () Bool)

(declare-fun res!543343 () Bool)

(assert (=> b!798654 (=> (not res!543343) (not e!442975))))

(assert (=> b!798654 (= res!543343 (validKeyInArray!0 k!2044))))

(assert (= (and start!68660 res!543341) b!798648))

(assert (= (and b!798648 res!543336) b!798649))

(assert (= (and b!798649 res!543339) b!798654))

(assert (= (and b!798654 res!543343) b!798653))

(assert (= (and b!798653 res!543337) b!798652))

(assert (= (and b!798652 res!543338) b!798646))

(assert (= (and b!798646 res!543335) b!798645))

(assert (= (and b!798645 res!543342) b!798650))

(assert (= (and b!798650 res!543334) b!798647))

(assert (= (and b!798647 res!543340) b!798651))

(declare-fun m!739707 () Bool)

(assert (=> b!798652 m!739707))

(declare-fun m!739709 () Bool)

(assert (=> b!798646 m!739709))

(declare-fun m!739711 () Bool)

(assert (=> b!798650 m!739711))

(declare-fun m!739713 () Bool)

(assert (=> b!798650 m!739713))

(declare-fun m!739715 () Bool)

(assert (=> start!68660 m!739715))

(declare-fun m!739717 () Bool)

(assert (=> start!68660 m!739717))

(declare-fun m!739719 () Bool)

(assert (=> b!798654 m!739719))

(declare-fun m!739721 () Bool)

(assert (=> b!798649 m!739721))

(assert (=> b!798649 m!739721))

(declare-fun m!739723 () Bool)

(assert (=> b!798649 m!739723))

(assert (=> b!798651 m!739721))

(assert (=> b!798651 m!739721))

(declare-fun m!739725 () Bool)

(assert (=> b!798651 m!739725))

(assert (=> b!798651 m!739721))

(declare-fun m!739727 () Bool)

(assert (=> b!798651 m!739727))

(declare-fun m!739729 () Bool)

(assert (=> b!798647 m!739729))

(declare-fun m!739731 () Bool)

(assert (=> b!798647 m!739731))

(declare-fun m!739733 () Bool)

(assert (=> b!798647 m!739733))

(declare-fun m!739735 () Bool)

(assert (=> b!798647 m!739735))

(declare-fun m!739737 () Bool)

(assert (=> b!798653 m!739737))

(declare-fun m!739739 () Bool)

(assert (=> b!798645 m!739739))

(push 1)

(assert (not b!798652))

(assert (not b!798647))

(assert (not b!798646))

