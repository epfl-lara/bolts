; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68666 () Bool)

(assert start!68666)

(declare-fun b!798759 () Bool)

(declare-fun res!543453 () Bool)

(declare-fun e!443029 () Bool)

(assert (=> b!798759 (=> (not res!543453) (not e!443029))))

(declare-datatypes ((array!43407 0))(
  ( (array!43408 (arr!20780 (Array (_ BitVec 32) (_ BitVec 64))) (size!21201 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43407)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798759 (= res!543453 (validKeyInArray!0 (select (arr!20780 a!3170) j!153)))))

(declare-fun b!798760 () Bool)

(declare-fun e!443030 () Bool)

(declare-fun e!443031 () Bool)

(assert (=> b!798760 (= e!443030 e!443031)))

(declare-fun res!543451 () Bool)

(assert (=> b!798760 (=> (not res!543451) (not e!443031))))

(declare-fun lt!356625 () array!43407)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8378 0))(
  ( (MissingZero!8378 (index!35879 (_ BitVec 32))) (Found!8378 (index!35880 (_ BitVec 32))) (Intermediate!8378 (undefined!9190 Bool) (index!35881 (_ BitVec 32)) (x!66785 (_ BitVec 32))) (Undefined!8378) (MissingVacant!8378 (index!35882 (_ BitVec 32))) )
))
(declare-fun lt!356621 () SeekEntryResult!8378)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!356619 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43407 (_ BitVec 32)) SeekEntryResult!8378)

(assert (=> b!798760 (= res!543451 (= lt!356621 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356619 lt!356625 mask!3266)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43407 (_ BitVec 32)) SeekEntryResult!8378)

(assert (=> b!798760 (= lt!356621 (seekEntryOrOpen!0 lt!356619 lt!356625 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!798760 (= lt!356619 (select (store (arr!20780 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!798760 (= lt!356625 (array!43408 (store (arr!20780 a!3170) i!1163 k!2044) (size!21201 a!3170)))))

(declare-fun b!798761 () Bool)

(assert (=> b!798761 (= e!443029 e!443030)))

(declare-fun res!543456 () Bool)

(assert (=> b!798761 (=> (not res!543456) (not e!443030))))

(declare-fun lt!356623 () SeekEntryResult!8378)

(assert (=> b!798761 (= res!543456 (or (= lt!356623 (MissingZero!8378 i!1163)) (= lt!356623 (MissingVacant!8378 i!1163))))))

(assert (=> b!798761 (= lt!356623 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!798762 () Bool)

(declare-fun e!443028 () Bool)

(assert (=> b!798762 (= e!443031 e!443028)))

(declare-fun res!543460 () Bool)

(assert (=> b!798762 (=> (not res!543460) (not e!443028))))

(declare-fun lt!356624 () SeekEntryResult!8378)

(declare-fun lt!356620 () SeekEntryResult!8378)

(assert (=> b!798762 (= res!543460 (and (= lt!356620 lt!356624) (= lt!356624 (Found!8378 j!153)) (not (= (select (arr!20780 a!3170) index!1236) (select (arr!20780 a!3170) j!153)))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!798762 (= lt!356624 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20780 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!798762 (= lt!356620 (seekEntryOrOpen!0 (select (arr!20780 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798764 () Bool)

(declare-fun e!443032 () Bool)

(assert (=> b!798764 (= e!443032 false)))

(declare-fun lt!356622 () (_ BitVec 32))

(declare-fun lt!356626 () SeekEntryResult!8378)

(assert (=> b!798764 (= lt!356626 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356622 vacantBefore!23 (select (arr!20780 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798765 () Bool)

(declare-fun res!543454 () Bool)

(assert (=> b!798765 (=> (not res!543454) (not e!443029))))

(declare-fun arrayContainsKey!0 (array!43407 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798765 (= res!543454 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798766 () Bool)

(declare-fun res!543458 () Bool)

(assert (=> b!798766 (=> (not res!543458) (not e!443030))))

(declare-datatypes ((List!14796 0))(
  ( (Nil!14793) (Cons!14792 (h!15921 (_ BitVec 64)) (t!21119 List!14796)) )
))
(declare-fun arrayNoDuplicates!0 (array!43407 (_ BitVec 32) List!14796) Bool)

(assert (=> b!798766 (= res!543458 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14793))))

(declare-fun b!798767 () Bool)

(declare-fun res!543455 () Bool)

(assert (=> b!798767 (=> (not res!543455) (not e!443030))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43407 (_ BitVec 32)) Bool)

(assert (=> b!798767 (= res!543455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!798768 () Bool)

(assert (=> b!798768 (= e!443028 e!443032)))

(declare-fun res!543450 () Bool)

(assert (=> b!798768 (=> (not res!543450) (not e!443032))))

(assert (=> b!798768 (= res!543450 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1077) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1077) #b00000000000000000000000000000000) (bvsge lt!356622 #b00000000000000000000000000000000) (bvslt lt!356622 (size!21201 a!3170))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!798768 (= lt!356622 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!798769 () Bool)

(declare-fun res!543449 () Bool)

(assert (=> b!798769 (=> (not res!543449) (not e!443032))))

(assert (=> b!798769 (= res!543449 (= lt!356621 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!356622 vacantAfter!23 lt!356619 lt!356625 mask!3266)))))

(declare-fun res!543459 () Bool)

(assert (=> start!68666 (=> (not res!543459) (not e!443029))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68666 (= res!543459 (validMask!0 mask!3266))))

(assert (=> start!68666 e!443029))

(assert (=> start!68666 true))

(declare-fun array_inv!16554 (array!43407) Bool)

(assert (=> start!68666 (array_inv!16554 a!3170)))

(declare-fun b!798763 () Bool)

(declare-fun res!543457 () Bool)

(assert (=> b!798763 (=> (not res!543457) (not e!443029))))

(assert (=> b!798763 (= res!543457 (validKeyInArray!0 k!2044))))

(declare-fun b!798770 () Bool)

(declare-fun res!543452 () Bool)

(assert (=> b!798770 (=> (not res!543452) (not e!443030))))

(assert (=> b!798770 (= res!543452 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21201 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20780 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21201 a!3170)) (= (select (arr!20780 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!798771 () Bool)

(declare-fun res!543448 () Bool)

(assert (=> b!798771 (=> (not res!543448) (not e!443029))))

(assert (=> b!798771 (= res!543448 (and (= (size!21201 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21201 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21201 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68666 res!543459) b!798771))

(assert (= (and b!798771 res!543448) b!798759))

(assert (= (and b!798759 res!543453) b!798763))

(assert (= (and b!798763 res!543457) b!798765))

(assert (= (and b!798765 res!543454) b!798761))

(assert (= (and b!798761 res!543456) b!798767))

(assert (= (and b!798767 res!543455) b!798766))

(assert (= (and b!798766 res!543458) b!798770))

(assert (= (and b!798770 res!543452) b!798760))

(assert (= (and b!798760 res!543451) b!798762))

(assert (= (and b!798762 res!543460) b!798768))

(assert (= (and b!798768 res!543450) b!798769))

(assert (= (and b!798769 res!543449) b!798764))

(declare-fun m!739825 () Bool)

(assert (=> start!68666 m!739825))

(declare-fun m!739827 () Bool)

(assert (=> start!68666 m!739827))

(declare-fun m!739829 () Bool)

(assert (=> b!798760 m!739829))

(declare-fun m!739831 () Bool)

(assert (=> b!798760 m!739831))

(declare-fun m!739833 () Bool)

(assert (=> b!798760 m!739833))

(declare-fun m!739835 () Bool)

(assert (=> b!798760 m!739835))

(declare-fun m!739837 () Bool)

(assert (=> b!798764 m!739837))

(assert (=> b!798764 m!739837))

(declare-fun m!739839 () Bool)

(assert (=> b!798764 m!739839))

(declare-fun m!739841 () Bool)

(assert (=> b!798765 m!739841))

(declare-fun m!739843 () Bool)

(assert (=> b!798767 m!739843))

(declare-fun m!739845 () Bool)

(assert (=> b!798769 m!739845))

(declare-fun m!739847 () Bool)

(assert (=> b!798763 m!739847))

(declare-fun m!739849 () Bool)

(assert (=> b!798766 m!739849))

(declare-fun m!739851 () Bool)

(assert (=> b!798770 m!739851))

(declare-fun m!739853 () Bool)

(assert (=> b!798770 m!739853))

(declare-fun m!739855 () Bool)

(assert (=> b!798761 m!739855))

(declare-fun m!739857 () Bool)

(assert (=> b!798762 m!739857))

(assert (=> b!798762 m!739837))

(assert (=> b!798762 m!739837))

(declare-fun m!739859 () Bool)

(assert (=> b!798762 m!739859))

(assert (=> b!798762 m!739837))

(declare-fun m!739861 () Bool)

(assert (=> b!798762 m!739861))

(assert (=> b!798759 m!739837))

(assert (=> b!798759 m!739837))

(declare-fun m!739863 () Bool)

(assert (=> b!798759 m!739863))

(declare-fun m!739865 () Bool)

(assert (=> b!798768 m!739865))

(push 1)

