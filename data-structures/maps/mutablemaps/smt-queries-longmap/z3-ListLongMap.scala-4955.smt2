; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68262 () Bool)

(assert start!68262)

(declare-fun b!792611 () Bool)

(declare-fun res!537303 () Bool)

(declare-fun e!440438 () Bool)

(assert (=> b!792611 (=> (not res!537303) (not e!440438))))

(declare-datatypes ((array!43003 0))(
  ( (array!43004 (arr!20578 (Array (_ BitVec 32) (_ BitVec 64))) (size!20999 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43003)

(declare-datatypes ((List!14594 0))(
  ( (Nil!14591) (Cons!14590 (h!15719 (_ BitVec 64)) (t!20917 List!14594)) )
))
(declare-fun arrayNoDuplicates!0 (array!43003 (_ BitVec 32) List!14594) Bool)

(assert (=> b!792611 (= res!537303 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14591))))

(declare-fun b!792612 () Bool)

(declare-fun res!537306 () Bool)

(assert (=> b!792612 (=> (not res!537306) (not e!440438))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43003 (_ BitVec 32)) Bool)

(assert (=> b!792612 (= res!537306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!792613 () Bool)

(declare-fun res!537301 () Bool)

(declare-fun e!440439 () Bool)

(assert (=> b!792613 (=> (not res!537301) (not e!440439))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792613 (= res!537301 (validKeyInArray!0 k0!2044))))

(declare-fun b!792614 () Bool)

(declare-fun res!537305 () Bool)

(assert (=> b!792614 (=> (not res!537305) (not e!440439))))

(declare-fun arrayContainsKey!0 (array!43003 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792614 (= res!537305 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!792615 () Bool)

(declare-fun res!537307 () Bool)

(assert (=> b!792615 (=> (not res!537307) (not e!440439))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!792615 (= res!537307 (validKeyInArray!0 (select (arr!20578 a!3170) j!153)))))

(declare-fun b!792616 () Bool)

(declare-fun res!537302 () Bool)

(assert (=> b!792616 (=> (not res!537302) (not e!440439))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!792616 (= res!537302 (and (= (size!20999 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!20999 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!20999 a!3170)) (not (= i!1163 j!153))))))

(declare-fun res!537304 () Bool)

(assert (=> start!68262 (=> (not res!537304) (not e!440439))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68262 (= res!537304 (validMask!0 mask!3266))))

(assert (=> start!68262 e!440439))

(assert (=> start!68262 true))

(declare-fun array_inv!16352 (array!43003) Bool)

(assert (=> start!68262 (array_inv!16352 a!3170)))

(declare-fun b!792617 () Bool)

(assert (=> b!792617 (= e!440439 e!440438)))

(declare-fun res!537300 () Bool)

(assert (=> b!792617 (=> (not res!537300) (not e!440438))))

(declare-datatypes ((SeekEntryResult!8176 0))(
  ( (MissingZero!8176 (index!35071 (_ BitVec 32))) (Found!8176 (index!35072 (_ BitVec 32))) (Intermediate!8176 (undefined!8988 Bool) (index!35073 (_ BitVec 32)) (x!66047 (_ BitVec 32))) (Undefined!8176) (MissingVacant!8176 (index!35074 (_ BitVec 32))) )
))
(declare-fun lt!353527 () SeekEntryResult!8176)

(assert (=> b!792617 (= res!537300 (or (= lt!353527 (MissingZero!8176 i!1163)) (= lt!353527 (MissingVacant!8176 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43003 (_ BitVec 32)) SeekEntryResult!8176)

(assert (=> b!792617 (= lt!353527 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun b!792618 () Bool)

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!792618 (= e!440438 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!20999 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20578 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!20999 a!3170)) (= (select (arr!20578 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23)) (bvslt mask!3266 #b00000000000000000000000000000000)))))

(assert (= (and start!68262 res!537304) b!792616))

(assert (= (and b!792616 res!537302) b!792615))

(assert (= (and b!792615 res!537307) b!792613))

(assert (= (and b!792613 res!537301) b!792614))

(assert (= (and b!792614 res!537305) b!792617))

(assert (= (and b!792617 res!537300) b!792612))

(assert (= (and b!792612 res!537306) b!792611))

(assert (= (and b!792611 res!537303) b!792618))

(declare-fun m!733223 () Bool)

(assert (=> start!68262 m!733223))

(declare-fun m!733225 () Bool)

(assert (=> start!68262 m!733225))

(declare-fun m!733227 () Bool)

(assert (=> b!792611 m!733227))

(declare-fun m!733229 () Bool)

(assert (=> b!792614 m!733229))

(declare-fun m!733231 () Bool)

(assert (=> b!792612 m!733231))

(declare-fun m!733233 () Bool)

(assert (=> b!792617 m!733233))

(declare-fun m!733235 () Bool)

(assert (=> b!792615 m!733235))

(assert (=> b!792615 m!733235))

(declare-fun m!733237 () Bool)

(assert (=> b!792615 m!733237))

(declare-fun m!733239 () Bool)

(assert (=> b!792613 m!733239))

(declare-fun m!733241 () Bool)

(assert (=> b!792618 m!733241))

(declare-fun m!733243 () Bool)

(assert (=> b!792618 m!733243))

(check-sat (not start!68262) (not b!792617) (not b!792612) (not b!792615) (not b!792613) (not b!792614) (not b!792611))
(check-sat)
