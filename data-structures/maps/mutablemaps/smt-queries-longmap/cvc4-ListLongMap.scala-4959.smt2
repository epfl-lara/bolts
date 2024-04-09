; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68288 () Bool)

(assert start!68288)

(declare-fun b!792914 () Bool)

(declare-fun res!537610 () Bool)

(declare-fun e!440555 () Bool)

(assert (=> b!792914 (=> (not res!537610) (not e!440555))))

(declare-datatypes ((array!43029 0))(
  ( (array!43030 (arr!20591 (Array (_ BitVec 32) (_ BitVec 64))) (size!21012 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43029)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43029 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792914 (= res!537610 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!792915 () Bool)

(declare-fun res!537606 () Bool)

(assert (=> b!792915 (=> (not res!537606) (not e!440555))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792915 (= res!537606 (validKeyInArray!0 k!2044))))

(declare-fun b!792916 () Bool)

(declare-fun res!537609 () Bool)

(declare-fun e!440557 () Bool)

(assert (=> b!792916 (=> (not res!537609) (not e!440557))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43029 (_ BitVec 32)) Bool)

(assert (=> b!792916 (= res!537609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!537605 () Bool)

(assert (=> start!68288 (=> (not res!537605) (not e!440555))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68288 (= res!537605 (validMask!0 mask!3266))))

(assert (=> start!68288 e!440555))

(assert (=> start!68288 true))

(declare-fun array_inv!16365 (array!43029) Bool)

(assert (=> start!68288 (array_inv!16365 a!3170)))

(declare-fun b!792917 () Bool)

(declare-fun res!537608 () Bool)

(assert (=> b!792917 (=> (not res!537608) (not e!440555))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!792917 (= res!537608 (and (= (size!21012 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21012 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21012 a!3170)) (not (= i!1163 j!153))))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun b!792918 () Bool)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!792918 (= e!440557 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21012 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20591 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21012 a!3170)) (= (select (arr!20591 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23)) (bvslt mask!3266 #b00000000000000000000000000000000)))))

(declare-fun b!792919 () Bool)

(assert (=> b!792919 (= e!440555 e!440557)))

(declare-fun res!537603 () Bool)

(assert (=> b!792919 (=> (not res!537603) (not e!440557))))

(declare-datatypes ((SeekEntryResult!8189 0))(
  ( (MissingZero!8189 (index!35123 (_ BitVec 32))) (Found!8189 (index!35124 (_ BitVec 32))) (Intermediate!8189 (undefined!9001 Bool) (index!35125 (_ BitVec 32)) (x!66092 (_ BitVec 32))) (Undefined!8189) (MissingVacant!8189 (index!35126 (_ BitVec 32))) )
))
(declare-fun lt!353584 () SeekEntryResult!8189)

(assert (=> b!792919 (= res!537603 (or (= lt!353584 (MissingZero!8189 i!1163)) (= lt!353584 (MissingVacant!8189 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43029 (_ BitVec 32)) SeekEntryResult!8189)

(assert (=> b!792919 (= lt!353584 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!792920 () Bool)

(declare-fun res!537604 () Bool)

(assert (=> b!792920 (=> (not res!537604) (not e!440555))))

(assert (=> b!792920 (= res!537604 (validKeyInArray!0 (select (arr!20591 a!3170) j!153)))))

(declare-fun b!792921 () Bool)

(declare-fun res!537607 () Bool)

(assert (=> b!792921 (=> (not res!537607) (not e!440557))))

(declare-datatypes ((List!14607 0))(
  ( (Nil!14604) (Cons!14603 (h!15732 (_ BitVec 64)) (t!20930 List!14607)) )
))
(declare-fun arrayNoDuplicates!0 (array!43029 (_ BitVec 32) List!14607) Bool)

(assert (=> b!792921 (= res!537607 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14604))))

(assert (= (and start!68288 res!537605) b!792917))

(assert (= (and b!792917 res!537608) b!792920))

(assert (= (and b!792920 res!537604) b!792915))

(assert (= (and b!792915 res!537606) b!792914))

(assert (= (and b!792914 res!537610) b!792919))

(assert (= (and b!792919 res!537603) b!792916))

(assert (= (and b!792916 res!537609) b!792921))

(assert (= (and b!792921 res!537607) b!792918))

(declare-fun m!733503 () Bool)

(assert (=> b!792920 m!733503))

(assert (=> b!792920 m!733503))

(declare-fun m!733505 () Bool)

(assert (=> b!792920 m!733505))

(declare-fun m!733507 () Bool)

(assert (=> b!792916 m!733507))

(declare-fun m!733509 () Bool)

(assert (=> b!792918 m!733509))

(declare-fun m!733511 () Bool)

(assert (=> b!792918 m!733511))

(declare-fun m!733513 () Bool)

(assert (=> b!792919 m!733513))

(declare-fun m!733515 () Bool)

(assert (=> b!792915 m!733515))

(declare-fun m!733517 () Bool)

(assert (=> b!792914 m!733517))

(declare-fun m!733519 () Bool)

(assert (=> b!792921 m!733519))

(declare-fun m!733521 () Bool)

(assert (=> start!68288 m!733521))

(declare-fun m!733523 () Bool)

(assert (=> start!68288 m!733523))

(push 1)

(assert (not b!792914))

(assert (not b!792920))

(assert (not start!68288))

(assert (not b!792915))

(assert (not b!792916))

(assert (not b!792921))

(assert (not b!792919))

(check-sat)

(pop 1)

(push 1)

(check-sat)

