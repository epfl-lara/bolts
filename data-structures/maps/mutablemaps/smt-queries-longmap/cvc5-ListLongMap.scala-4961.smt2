; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68296 () Bool)

(assert start!68296)

(declare-fun b!793001 () Bool)

(declare-fun res!537693 () Bool)

(declare-fun e!440591 () Bool)

(assert (=> b!793001 (=> (not res!537693) (not e!440591))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!793001 (= res!537693 (validKeyInArray!0 k!2044))))

(declare-fun b!793002 () Bool)

(declare-fun res!537691 () Bool)

(declare-fun e!440593 () Bool)

(assert (=> b!793002 (=> (not res!537691) (not e!440593))))

(declare-datatypes ((array!43037 0))(
  ( (array!43038 (arr!20595 (Array (_ BitVec 32) (_ BitVec 64))) (size!21016 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43037)

(declare-datatypes ((List!14611 0))(
  ( (Nil!14608) (Cons!14607 (h!15736 (_ BitVec 64)) (t!20934 List!14611)) )
))
(declare-fun arrayNoDuplicates!0 (array!43037 (_ BitVec 32) List!14611) Bool)

(assert (=> b!793002 (= res!537691 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14608))))

(declare-fun res!537690 () Bool)

(assert (=> start!68296 (=> (not res!537690) (not e!440591))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68296 (= res!537690 (validMask!0 mask!3266))))

(assert (=> start!68296 e!440591))

(assert (=> start!68296 true))

(declare-fun array_inv!16369 (array!43037) Bool)

(assert (=> start!68296 (array_inv!16369 a!3170)))

(declare-fun b!793003 () Bool)

(declare-fun res!537694 () Bool)

(assert (=> b!793003 (=> (not res!537694) (not e!440591))))

(declare-fun arrayContainsKey!0 (array!43037 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!793003 (= res!537694 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun b!793004 () Bool)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!793004 (= e!440593 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21016 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20595 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21016 a!3170)) (= (select (arr!20595 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23)) (bvsge mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266))))))

(declare-fun b!793005 () Bool)

(declare-fun res!537696 () Bool)

(assert (=> b!793005 (=> (not res!537696) (not e!440591))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!793005 (= res!537696 (and (= (size!21016 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21016 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21016 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!793006 () Bool)

(assert (=> b!793006 (= e!440591 e!440593)))

(declare-fun res!537695 () Bool)

(assert (=> b!793006 (=> (not res!537695) (not e!440593))))

(declare-datatypes ((SeekEntryResult!8193 0))(
  ( (MissingZero!8193 (index!35139 (_ BitVec 32))) (Found!8193 (index!35140 (_ BitVec 32))) (Intermediate!8193 (undefined!9005 Bool) (index!35141 (_ BitVec 32)) (x!66112 (_ BitVec 32))) (Undefined!8193) (MissingVacant!8193 (index!35142 (_ BitVec 32))) )
))
(declare-fun lt!353605 () SeekEntryResult!8193)

(assert (=> b!793006 (= res!537695 (or (= lt!353605 (MissingZero!8193 i!1163)) (= lt!353605 (MissingVacant!8193 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43037 (_ BitVec 32)) SeekEntryResult!8193)

(assert (=> b!793006 (= lt!353605 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!793007 () Bool)

(declare-fun res!537692 () Bool)

(assert (=> b!793007 (=> (not res!537692) (not e!440593))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43037 (_ BitVec 32)) Bool)

(assert (=> b!793007 (= res!537692 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!793008 () Bool)

(declare-fun res!537697 () Bool)

(assert (=> b!793008 (=> (not res!537697) (not e!440591))))

(assert (=> b!793008 (= res!537697 (validKeyInArray!0 (select (arr!20595 a!3170) j!153)))))

(assert (= (and start!68296 res!537690) b!793005))

(assert (= (and b!793005 res!537696) b!793008))

(assert (= (and b!793008 res!537697) b!793001))

(assert (= (and b!793001 res!537693) b!793003))

(assert (= (and b!793003 res!537694) b!793006))

(assert (= (and b!793006 res!537695) b!793007))

(assert (= (and b!793007 res!537692) b!793002))

(assert (= (and b!793002 res!537691) b!793004))

(declare-fun m!733579 () Bool)

(assert (=> b!793003 m!733579))

(declare-fun m!733581 () Bool)

(assert (=> b!793004 m!733581))

(declare-fun m!733583 () Bool)

(assert (=> b!793004 m!733583))

(declare-fun m!733585 () Bool)

(assert (=> b!793008 m!733585))

(assert (=> b!793008 m!733585))

(declare-fun m!733587 () Bool)

(assert (=> b!793008 m!733587))

(declare-fun m!733589 () Bool)

(assert (=> start!68296 m!733589))

(declare-fun m!733591 () Bool)

(assert (=> start!68296 m!733591))

(declare-fun m!733593 () Bool)

(assert (=> b!793002 m!733593))

(declare-fun m!733595 () Bool)

(assert (=> b!793007 m!733595))

(declare-fun m!733597 () Bool)

(assert (=> b!793001 m!733597))

(declare-fun m!733599 () Bool)

(assert (=> b!793006 m!733599))

(push 1)

(assert (not b!793003))

(assert (not b!793007))

(assert (not b!793006))

(assert (not b!793001))

(assert (not b!793008))

(assert (not b!793002))

(assert (not start!68296))

(check-sat)

(pop 1)

(push 1)

(check-sat)

