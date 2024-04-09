; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68272 () Bool)

(assert start!68272)

(declare-fun b!792724 () Bool)

(declare-fun res!537419 () Bool)

(declare-fun e!440484 () Bool)

(assert (=> b!792724 (=> (not res!537419) (not e!440484))))

(declare-datatypes ((array!43013 0))(
  ( (array!43014 (arr!20583 (Array (_ BitVec 32) (_ BitVec 64))) (size!21004 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43013)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792724 (= res!537419 (validKeyInArray!0 (select (arr!20583 a!3170) j!153)))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun b!792725 () Bool)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun e!440485 () Bool)

(assert (=> b!792725 (= e!440485 (not (validKeyInArray!0 (select (store (arr!20583 a!3170) i!1163 k!2044) j!153))))))

(declare-fun b!792726 () Bool)

(assert (=> b!792726 (= e!440484 e!440485)))

(declare-fun res!537417 () Bool)

(assert (=> b!792726 (=> (not res!537417) (not e!440485))))

(declare-datatypes ((SeekEntryResult!8181 0))(
  ( (MissingZero!8181 (index!35091 (_ BitVec 32))) (Found!8181 (index!35092 (_ BitVec 32))) (Intermediate!8181 (undefined!8993 Bool) (index!35093 (_ BitVec 32)) (x!66068 (_ BitVec 32))) (Undefined!8181) (MissingVacant!8181 (index!35094 (_ BitVec 32))) )
))
(declare-fun lt!353551 () SeekEntryResult!8181)

(assert (=> b!792726 (= res!537417 (or (= lt!353551 (MissingZero!8181 i!1163)) (= lt!353551 (MissingVacant!8181 i!1163))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43013 (_ BitVec 32)) SeekEntryResult!8181)

(assert (=> b!792726 (= lt!353551 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!792727 () Bool)

(declare-fun res!537415 () Bool)

(assert (=> b!792727 (=> (not res!537415) (not e!440485))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43013 (_ BitVec 32)) Bool)

(assert (=> b!792727 (= res!537415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!792728 () Bool)

(declare-fun res!537420 () Bool)

(assert (=> b!792728 (=> (not res!537420) (not e!440485))))

(declare-datatypes ((List!14599 0))(
  ( (Nil!14596) (Cons!14595 (h!15724 (_ BitVec 64)) (t!20922 List!14599)) )
))
(declare-fun arrayNoDuplicates!0 (array!43013 (_ BitVec 32) List!14599) Bool)

(assert (=> b!792728 (= res!537420 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14596))))

(declare-fun res!537418 () Bool)

(assert (=> start!68272 (=> (not res!537418) (not e!440484))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68272 (= res!537418 (validMask!0 mask!3266))))

(assert (=> start!68272 e!440484))

(assert (=> start!68272 true))

(declare-fun array_inv!16357 (array!43013) Bool)

(assert (=> start!68272 (array_inv!16357 a!3170)))

(declare-fun b!792729 () Bool)

(declare-fun res!537414 () Bool)

(assert (=> b!792729 (=> (not res!537414) (not e!440484))))

(declare-fun arrayContainsKey!0 (array!43013 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792729 (= res!537414 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!792730 () Bool)

(declare-fun res!537416 () Bool)

(assert (=> b!792730 (=> (not res!537416) (not e!440484))))

(assert (=> b!792730 (= res!537416 (validKeyInArray!0 k!2044))))

(declare-fun b!792731 () Bool)

(declare-fun res!537413 () Bool)

(assert (=> b!792731 (=> (not res!537413) (not e!440484))))

(assert (=> b!792731 (= res!537413 (and (= (size!21004 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21004 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21004 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!792732 () Bool)

(declare-fun res!537421 () Bool)

(assert (=> b!792732 (=> (not res!537421) (not e!440485))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!792732 (= res!537421 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21004 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20583 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21004 a!3170)) (= (select (arr!20583 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23)) (bvsge mask!3266 #b00000000000000000000000000000000)))))

(assert (= (and start!68272 res!537418) b!792731))

(assert (= (and b!792731 res!537413) b!792724))

(assert (= (and b!792724 res!537419) b!792730))

(assert (= (and b!792730 res!537416) b!792729))

(assert (= (and b!792729 res!537414) b!792726))

(assert (= (and b!792726 res!537417) b!792727))

(assert (= (and b!792727 res!537415) b!792728))

(assert (= (and b!792728 res!537420) b!792732))

(assert (= (and b!792732 res!537421) b!792725))

(declare-fun m!733321 () Bool)

(assert (=> b!792725 m!733321))

(declare-fun m!733323 () Bool)

(assert (=> b!792725 m!733323))

(assert (=> b!792725 m!733323))

(declare-fun m!733325 () Bool)

(assert (=> b!792725 m!733325))

(declare-fun m!733327 () Bool)

(assert (=> b!792726 m!733327))

(declare-fun m!733329 () Bool)

(assert (=> b!792724 m!733329))

(assert (=> b!792724 m!733329))

(declare-fun m!733331 () Bool)

(assert (=> b!792724 m!733331))

(declare-fun m!733333 () Bool)

(assert (=> b!792729 m!733333))

(declare-fun m!733335 () Bool)

(assert (=> b!792732 m!733335))

(declare-fun m!733337 () Bool)

(assert (=> b!792732 m!733337))

(declare-fun m!733339 () Bool)

(assert (=> b!792730 m!733339))

(declare-fun m!733341 () Bool)

(assert (=> start!68272 m!733341))

(declare-fun m!733343 () Bool)

(assert (=> start!68272 m!733343))

(declare-fun m!733345 () Bool)

(assert (=> b!792727 m!733345))

(declare-fun m!733347 () Bool)

(assert (=> b!792728 m!733347))

(push 1)

