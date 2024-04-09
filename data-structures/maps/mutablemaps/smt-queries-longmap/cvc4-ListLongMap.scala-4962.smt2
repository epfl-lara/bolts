; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68306 () Bool)

(assert start!68306)

(declare-fun b!793113 () Bool)

(declare-fun res!537802 () Bool)

(declare-fun e!440638 () Bool)

(assert (=> b!793113 (=> (not res!537802) (not e!440638))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43047 0))(
  ( (array!43048 (arr!20600 (Array (_ BitVec 32) (_ BitVec 64))) (size!21021 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43047)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!793113 (= res!537802 (and (= (size!21021 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21021 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21021 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793114 () Bool)

(declare-fun res!537805 () Bool)

(assert (=> b!793114 (=> (not res!537805) (not e!440638))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43047 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793114 (= res!537805 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!793115 () Bool)

(declare-fun e!440636 () Bool)

(assert (=> b!793115 (= e!440638 e!440636)))

(declare-fun res!537803 () Bool)

(assert (=> b!793115 (=> (not res!537803) (not e!440636))))

(declare-datatypes ((SeekEntryResult!8198 0))(
  ( (MissingZero!8198 (index!35159 (_ BitVec 32))) (Found!8198 (index!35160 (_ BitVec 32))) (Intermediate!8198 (undefined!9010 Bool) (index!35161 (_ BitVec 32)) (x!66125 (_ BitVec 32))) (Undefined!8198) (MissingVacant!8198 (index!35162 (_ BitVec 32))) )
))
(declare-fun lt!353628 () SeekEntryResult!8198)

(assert (=> b!793115 (= res!537803 (or (= lt!353628 (MissingZero!8198 i!1163)) (= lt!353628 (MissingVacant!8198 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43047 (_ BitVec 32)) SeekEntryResult!8198)

(assert (=> b!793115 (= lt!353628 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!793116 () Bool)

(declare-fun res!537804 () Bool)

(assert (=> b!793116 (=> (not res!537804) (not e!440636))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43047 (_ BitVec 32)) Bool)

(assert (=> b!793116 (= res!537804 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!537807 () Bool)

(assert (=> start!68306 (=> (not res!537807) (not e!440638))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68306 (= res!537807 (validMask!0 mask!3266))))

(assert (=> start!68306 e!440638))

(assert (=> start!68306 true))

(declare-fun array_inv!16374 (array!43047) Bool)

(assert (=> start!68306 (array_inv!16374 a!3170)))

(declare-fun b!793117 () Bool)

(declare-fun res!537808 () Bool)

(assert (=> b!793117 (=> (not res!537808) (not e!440638))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793117 (= res!537808 (validKeyInArray!0 k!2044))))

(declare-fun b!793118 () Bool)

(assert (=> b!793118 (= e!440636 false)))

(declare-fun lt!353629 () Bool)

(declare-datatypes ((List!14616 0))(
  ( (Nil!14613) (Cons!14612 (h!15741 (_ BitVec 64)) (t!20939 List!14616)) )
))
(declare-fun arrayNoDuplicates!0 (array!43047 (_ BitVec 32) List!14616) Bool)

(assert (=> b!793118 (= lt!353629 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14613))))

(declare-fun b!793119 () Bool)

(declare-fun res!537806 () Bool)

(assert (=> b!793119 (=> (not res!537806) (not e!440638))))

(assert (=> b!793119 (= res!537806 (validKeyInArray!0 (select (arr!20600 a!3170) j!153)))))

(assert (= (and start!68306 res!537807) b!793113))

(assert (= (and b!793113 res!537802) b!793119))

(assert (= (and b!793119 res!537806) b!793117))

(assert (= (and b!793117 res!537808) b!793114))

(assert (= (and b!793114 res!537805) b!793115))

(assert (= (and b!793115 res!537803) b!793116))

(assert (= (and b!793116 res!537804) b!793118))

(declare-fun m!733681 () Bool)

(assert (=> b!793119 m!733681))

(assert (=> b!793119 m!733681))

(declare-fun m!733683 () Bool)

(assert (=> b!793119 m!733683))

(declare-fun m!733685 () Bool)

(assert (=> b!793114 m!733685))

(declare-fun m!733687 () Bool)

(assert (=> b!793116 m!733687))

(declare-fun m!733689 () Bool)

(assert (=> start!68306 m!733689))

(declare-fun m!733691 () Bool)

(assert (=> start!68306 m!733691))

(declare-fun m!733693 () Bool)

(assert (=> b!793117 m!733693))

(declare-fun m!733695 () Bool)

(assert (=> b!793118 m!733695))

(declare-fun m!733697 () Bool)

(assert (=> b!793115 m!733697))

(push 1)

(assert (not start!68306))

(assert (not b!793119))

(assert (not b!793118))

(assert (not b!793115))

