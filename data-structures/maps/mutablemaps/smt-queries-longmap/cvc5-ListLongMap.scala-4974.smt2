; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68374 () Bool)

(assert start!68374)

(declare-fun b!794038 () Bool)

(declare-fun res!538731 () Bool)

(declare-fun e!440970 () Bool)

(assert (=> b!794038 (=> (not res!538731) (not e!440970))))

(declare-datatypes ((array!43115 0))(
  ( (array!43116 (arr!20634 (Array (_ BitVec 32) (_ BitVec 64))) (size!21055 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43115)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43115 (_ BitVec 32)) Bool)

(assert (=> b!794038 (= res!538731 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!794039 () Bool)

(declare-fun res!538728 () Bool)

(declare-fun e!440971 () Bool)

(assert (=> b!794039 (=> (not res!538728) (not e!440971))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!794039 (= res!538728 (validKeyInArray!0 k!2044))))

(declare-fun b!794040 () Bool)

(declare-fun res!538729 () Bool)

(assert (=> b!794040 (=> (not res!538729) (not e!440971))))

(declare-fun arrayContainsKey!0 (array!43115 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!794040 (= res!538729 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!794041 () Bool)

(assert (=> b!794041 (= e!440970 false)))

(declare-fun lt!353973 () array!43115)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!353977 () (_ BitVec 64))

(declare-fun index!1236 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8232 0))(
  ( (MissingZero!8232 (index!35295 (_ BitVec 32))) (Found!8232 (index!35296 (_ BitVec 32))) (Intermediate!8232 (undefined!9044 Bool) (index!35297 (_ BitVec 32)) (x!66255 (_ BitVec 32))) (Undefined!8232) (MissingVacant!8232 (index!35298 (_ BitVec 32))) )
))
(declare-fun lt!353974 () SeekEntryResult!8232)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43115 (_ BitVec 32)) SeekEntryResult!8232)

(assert (=> b!794041 (= lt!353974 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!353977 lt!353973 mask!3266))))

(declare-fun lt!353975 () SeekEntryResult!8232)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43115 (_ BitVec 32)) SeekEntryResult!8232)

(assert (=> b!794041 (= lt!353975 (seekEntryOrOpen!0 lt!353977 lt!353973 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!794041 (= lt!353977 (select (store (arr!20634 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!794041 (= lt!353973 (array!43116 (store (arr!20634 a!3170) i!1163 k!2044) (size!21055 a!3170)))))

(declare-fun b!794042 () Bool)

(declare-fun res!538727 () Bool)

(assert (=> b!794042 (=> (not res!538727) (not e!440971))))

(assert (=> b!794042 (= res!538727 (validKeyInArray!0 (select (arr!20634 a!3170) j!153)))))

(declare-fun b!794043 () Bool)

(declare-fun res!538734 () Bool)

(assert (=> b!794043 (=> (not res!538734) (not e!440971))))

(assert (=> b!794043 (= res!538734 (and (= (size!21055 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21055 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21055 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!794044 () Bool)

(declare-fun res!538735 () Bool)

(assert (=> b!794044 (=> (not res!538735) (not e!440970))))

(declare-datatypes ((List!14650 0))(
  ( (Nil!14647) (Cons!14646 (h!15775 (_ BitVec 64)) (t!20973 List!14650)) )
))
(declare-fun arrayNoDuplicates!0 (array!43115 (_ BitVec 32) List!14650) Bool)

(assert (=> b!794044 (= res!538735 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14647))))

(declare-fun b!794045 () Bool)

(declare-fun res!538732 () Bool)

(assert (=> b!794045 (=> (not res!538732) (not e!440970))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!794045 (= res!538732 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21055 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20634 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21055 a!3170)) (= (select (arr!20634 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun res!538730 () Bool)

(assert (=> start!68374 (=> (not res!538730) (not e!440971))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68374 (= res!538730 (validMask!0 mask!3266))))

(assert (=> start!68374 e!440971))

(assert (=> start!68374 true))

(declare-fun array_inv!16408 (array!43115) Bool)

(assert (=> start!68374 (array_inv!16408 a!3170)))

(declare-fun b!794046 () Bool)

(assert (=> b!794046 (= e!440971 e!440970)))

(declare-fun res!538733 () Bool)

(assert (=> b!794046 (=> (not res!538733) (not e!440970))))

(declare-fun lt!353976 () SeekEntryResult!8232)

(assert (=> b!794046 (= res!538733 (or (= lt!353976 (MissingZero!8232 i!1163)) (= lt!353976 (MissingVacant!8232 i!1163))))))

(assert (=> b!794046 (= lt!353976 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(assert (= (and start!68374 res!538730) b!794043))

(assert (= (and b!794043 res!538734) b!794042))

(assert (= (and b!794042 res!538727) b!794039))

(assert (= (and b!794039 res!538728) b!794040))

(assert (= (and b!794040 res!538729) b!794046))

(assert (= (and b!794046 res!538733) b!794038))

(assert (= (and b!794038 res!538731) b!794044))

(assert (= (and b!794044 res!538735) b!794045))

(assert (= (and b!794045 res!538732) b!794041))

(declare-fun m!734653 () Bool)

(assert (=> b!794041 m!734653))

(declare-fun m!734655 () Bool)

(assert (=> b!794041 m!734655))

(declare-fun m!734657 () Bool)

(assert (=> b!794041 m!734657))

(declare-fun m!734659 () Bool)

(assert (=> b!794041 m!734659))

(declare-fun m!734661 () Bool)

(assert (=> b!794045 m!734661))

(declare-fun m!734663 () Bool)

(assert (=> b!794045 m!734663))

(declare-fun m!734665 () Bool)

(assert (=> start!68374 m!734665))

(declare-fun m!734667 () Bool)

(assert (=> start!68374 m!734667))

(declare-fun m!734669 () Bool)

(assert (=> b!794039 m!734669))

(declare-fun m!734671 () Bool)

(assert (=> b!794040 m!734671))

(declare-fun m!734673 () Bool)

(assert (=> b!794046 m!734673))

(declare-fun m!734675 () Bool)

(assert (=> b!794038 m!734675))

(declare-fun m!734677 () Bool)

(assert (=> b!794044 m!734677))

(declare-fun m!734679 () Bool)

(assert (=> b!794042 m!734679))

(assert (=> b!794042 m!734679))

(declare-fun m!734681 () Bool)

(assert (=> b!794042 m!734681))

(push 1)

