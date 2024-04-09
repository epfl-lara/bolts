; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68278 () Bool)

(assert start!68278)

(declare-fun b!792801 () Bool)

(declare-fun res!537493 () Bool)

(declare-fun e!440510 () Bool)

(assert (=> b!792801 (=> (not res!537493) (not e!440510))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43019 0))(
  ( (array!43020 (arr!20586 (Array (_ BitVec 32) (_ BitVec 64))) (size!21007 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43019)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!792801 (= res!537493 (and (= (size!21007 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21007 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21007 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!537495 () Bool)

(assert (=> start!68278 (=> (not res!537495) (not e!440510))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68278 (= res!537495 (validMask!0 mask!3266))))

(assert (=> start!68278 e!440510))

(assert (=> start!68278 true))

(declare-fun array_inv!16360 (array!43019) Bool)

(assert (=> start!68278 (array_inv!16360 a!3170)))

(declare-fun b!792802 () Bool)

(declare-fun res!537492 () Bool)

(assert (=> b!792802 (=> (not res!537492) (not e!440510))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43019 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792802 (= res!537492 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!792803 () Bool)

(declare-fun res!537494 () Bool)

(assert (=> b!792803 (=> (not res!537494) (not e!440510))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792803 (= res!537494 (validKeyInArray!0 k!2044))))

(declare-fun b!792804 () Bool)

(declare-fun e!440512 () Bool)

(assert (=> b!792804 (= e!440510 e!440512)))

(declare-fun res!537490 () Bool)

(assert (=> b!792804 (=> (not res!537490) (not e!440512))))

(declare-datatypes ((SeekEntryResult!8184 0))(
  ( (MissingZero!8184 (index!35103 (_ BitVec 32))) (Found!8184 (index!35104 (_ BitVec 32))) (Intermediate!8184 (undefined!8996 Bool) (index!35105 (_ BitVec 32)) (x!66079 (_ BitVec 32))) (Undefined!8184) (MissingVacant!8184 (index!35106 (_ BitVec 32))) )
))
(declare-fun lt!353562 () SeekEntryResult!8184)

(assert (=> b!792804 (= res!537490 (or (= lt!353562 (MissingZero!8184 i!1163)) (= lt!353562 (MissingVacant!8184 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43019 (_ BitVec 32)) SeekEntryResult!8184)

(assert (=> b!792804 (= lt!353562 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!792805 () Bool)

(declare-fun res!537491 () Bool)

(assert (=> b!792805 (=> (not res!537491) (not e!440510))))

(assert (=> b!792805 (= res!537491 (validKeyInArray!0 (select (arr!20586 a!3170) j!153)))))

(declare-fun b!792806 () Bool)

(declare-fun res!537496 () Bool)

(assert (=> b!792806 (=> (not res!537496) (not e!440512))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43019 (_ BitVec 32)) Bool)

(assert (=> b!792806 (= res!537496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!792807 () Bool)

(assert (=> b!792807 (= e!440512 false)))

(declare-fun lt!353563 () Bool)

(declare-datatypes ((List!14602 0))(
  ( (Nil!14599) (Cons!14598 (h!15727 (_ BitVec 64)) (t!20925 List!14602)) )
))
(declare-fun arrayNoDuplicates!0 (array!43019 (_ BitVec 32) List!14602) Bool)

(assert (=> b!792807 (= lt!353563 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14599))))

(assert (= (and start!68278 res!537495) b!792801))

(assert (= (and b!792801 res!537493) b!792805))

(assert (= (and b!792805 res!537491) b!792803))

(assert (= (and b!792803 res!537494) b!792802))

(assert (= (and b!792802 res!537492) b!792804))

(assert (= (and b!792804 res!537490) b!792806))

(assert (= (and b!792806 res!537496) b!792807))

(declare-fun m!733405 () Bool)

(assert (=> b!792802 m!733405))

(declare-fun m!733407 () Bool)

(assert (=> start!68278 m!733407))

(declare-fun m!733409 () Bool)

(assert (=> start!68278 m!733409))

(declare-fun m!733411 () Bool)

(assert (=> b!792806 m!733411))

(declare-fun m!733413 () Bool)

(assert (=> b!792805 m!733413))

(assert (=> b!792805 m!733413))

(declare-fun m!733415 () Bool)

(assert (=> b!792805 m!733415))

(declare-fun m!733417 () Bool)

(assert (=> b!792807 m!733417))

(declare-fun m!733419 () Bool)

(assert (=> b!792803 m!733419))

(declare-fun m!733421 () Bool)

(assert (=> b!792804 m!733421))

(push 1)

