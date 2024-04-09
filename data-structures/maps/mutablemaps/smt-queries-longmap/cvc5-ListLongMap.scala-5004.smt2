; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68554 () Bool)

(assert start!68554)

(declare-fun b!796859 () Bool)

(declare-fun e!442144 () Bool)

(declare-fun e!442143 () Bool)

(assert (=> b!796859 (= e!442144 e!442143)))

(declare-fun res!541557 () Bool)

(assert (=> b!796859 (=> (not res!541557) (not e!442143))))

(declare-datatypes ((SeekEntryResult!8322 0))(
  ( (MissingZero!8322 (index!35655 (_ BitVec 32))) (Found!8322 (index!35656 (_ BitVec 32))) (Intermediate!8322 (undefined!9134 Bool) (index!35657 (_ BitVec 32)) (x!66585 (_ BitVec 32))) (Undefined!8322) (MissingVacant!8322 (index!35658 (_ BitVec 32))) )
))
(declare-fun lt!355449 () SeekEntryResult!8322)

(declare-datatypes ((array!43295 0))(
  ( (array!43296 (arr!20724 (Array (_ BitVec 32) (_ BitVec 64))) (size!21145 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43295)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun lt!355445 () SeekEntryResult!8322)

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!796859 (= res!541557 (and (= lt!355449 lt!355445) (= lt!355445 (Found!8322 j!153)) (= (select (arr!20724 a!3170) index!1236) (select (arr!20724 a!3170) j!153))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43295 (_ BitVec 32)) SeekEntryResult!8322)

(assert (=> b!796859 (= lt!355445 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20724 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43295 (_ BitVec 32)) SeekEntryResult!8322)

(assert (=> b!796859 (= lt!355449 (seekEntryOrOpen!0 (select (arr!20724 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796860 () Bool)

(declare-fun res!541555 () Bool)

(declare-fun e!442145 () Bool)

(assert (=> b!796860 (=> (not res!541555) (not e!442145))))

(declare-datatypes ((List!14740 0))(
  ( (Nil!14737) (Cons!14736 (h!15865 (_ BitVec 64)) (t!21063 List!14740)) )
))
(declare-fun arrayNoDuplicates!0 (array!43295 (_ BitVec 32) List!14740) Bool)

(assert (=> b!796860 (= res!541555 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14737))))

(declare-fun b!796861 () Bool)

(assert (=> b!796861 (= e!442145 e!442144)))

(declare-fun res!541553 () Bool)

(assert (=> b!796861 (=> (not res!541553) (not e!442144))))

(declare-fun lt!355450 () SeekEntryResult!8322)

(declare-fun lt!355446 () SeekEntryResult!8322)

(assert (=> b!796861 (= res!541553 (= lt!355450 lt!355446))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!355444 () array!43295)

(declare-fun lt!355447 () (_ BitVec 64))

(assert (=> b!796861 (= lt!355446 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355447 lt!355444 mask!3266))))

(assert (=> b!796861 (= lt!355450 (seekEntryOrOpen!0 lt!355447 lt!355444 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!796861 (= lt!355447 (select (store (arr!20724 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!796861 (= lt!355444 (array!43296 (store (arr!20724 a!3170) i!1163 k!2044) (size!21145 a!3170)))))

(declare-fun b!796862 () Bool)

(declare-fun res!541558 () Bool)

(assert (=> b!796862 (=> (not res!541558) (not e!442145))))

(assert (=> b!796862 (= res!541558 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21145 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20724 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21145 a!3170)) (= (select (arr!20724 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796863 () Bool)

(declare-fun res!541550 () Bool)

(declare-fun e!442146 () Bool)

(assert (=> b!796863 (=> (not res!541550) (not e!442146))))

(assert (=> b!796863 (= res!541550 (and (= (size!21145 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21145 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21145 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!796864 () Bool)

(assert (=> b!796864 (= e!442146 e!442145)))

(declare-fun res!541554 () Bool)

(assert (=> b!796864 (=> (not res!541554) (not e!442145))))

(declare-fun lt!355448 () SeekEntryResult!8322)

(assert (=> b!796864 (= res!541554 (or (= lt!355448 (MissingZero!8322 i!1163)) (= lt!355448 (MissingVacant!8322 i!1163))))))

(assert (=> b!796864 (= lt!355448 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!796865 () Bool)

(declare-fun res!541552 () Bool)

(assert (=> b!796865 (=> (not res!541552) (not e!442145))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43295 (_ BitVec 32)) Bool)

(assert (=> b!796865 (= res!541552 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796866 () Bool)

(declare-fun res!541556 () Bool)

(assert (=> b!796866 (=> (not res!541556) (not e!442146))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796866 (= res!541556 (validKeyInArray!0 k!2044))))

(declare-fun b!796867 () Bool)

(assert (=> b!796867 (= e!442143 (not true))))

(assert (=> b!796867 (= lt!355446 (Found!8322 index!1236))))

(declare-fun res!541549 () Bool)

(assert (=> start!68554 (=> (not res!541549) (not e!442146))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68554 (= res!541549 (validMask!0 mask!3266))))

(assert (=> start!68554 e!442146))

(assert (=> start!68554 true))

(declare-fun array_inv!16498 (array!43295) Bool)

(assert (=> start!68554 (array_inv!16498 a!3170)))

(declare-fun b!796868 () Bool)

(declare-fun res!541551 () Bool)

(assert (=> b!796868 (=> (not res!541551) (not e!442146))))

(declare-fun arrayContainsKey!0 (array!43295 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796868 (= res!541551 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!796869 () Bool)

(declare-fun res!541548 () Bool)

(assert (=> b!796869 (=> (not res!541548) (not e!442146))))

(assert (=> b!796869 (= res!541548 (validKeyInArray!0 (select (arr!20724 a!3170) j!153)))))

(assert (= (and start!68554 res!541549) b!796863))

(assert (= (and b!796863 res!541550) b!796869))

(assert (= (and b!796869 res!541548) b!796866))

(assert (= (and b!796866 res!541556) b!796868))

(assert (= (and b!796868 res!541551) b!796864))

(assert (= (and b!796864 res!541554) b!796865))

(assert (= (and b!796865 res!541552) b!796860))

(assert (= (and b!796860 res!541555) b!796862))

(assert (= (and b!796862 res!541558) b!796861))

(assert (= (and b!796861 res!541553) b!796859))

(assert (= (and b!796859 res!541557) b!796867))

(declare-fun m!737791 () Bool)

(assert (=> b!796861 m!737791))

(declare-fun m!737793 () Bool)

(assert (=> b!796861 m!737793))

(declare-fun m!737795 () Bool)

(assert (=> b!796861 m!737795))

(declare-fun m!737797 () Bool)

(assert (=> b!796861 m!737797))

(declare-fun m!737799 () Bool)

(assert (=> start!68554 m!737799))

(declare-fun m!737801 () Bool)

(assert (=> start!68554 m!737801))

(declare-fun m!737803 () Bool)

(assert (=> b!796862 m!737803))

(declare-fun m!737805 () Bool)

(assert (=> b!796862 m!737805))

(declare-fun m!737807 () Bool)

(assert (=> b!796860 m!737807))

(declare-fun m!737809 () Bool)

(assert (=> b!796869 m!737809))

(assert (=> b!796869 m!737809))

(declare-fun m!737811 () Bool)

(assert (=> b!796869 m!737811))

(declare-fun m!737813 () Bool)

(assert (=> b!796868 m!737813))

(declare-fun m!737815 () Bool)

(assert (=> b!796865 m!737815))

(declare-fun m!737817 () Bool)

(assert (=> b!796864 m!737817))

(declare-fun m!737819 () Bool)

(assert (=> b!796866 m!737819))

(declare-fun m!737821 () Bool)

(assert (=> b!796859 m!737821))

(assert (=> b!796859 m!737809))

(assert (=> b!796859 m!737809))

(declare-fun m!737823 () Bool)

(assert (=> b!796859 m!737823))

(assert (=> b!796859 m!737809))

(declare-fun m!737825 () Bool)

(assert (=> b!796859 m!737825))

(push 1)

