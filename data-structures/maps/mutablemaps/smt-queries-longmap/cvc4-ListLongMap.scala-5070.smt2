; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68954 () Bool)

(assert start!68954)

(declare-fun b!803993 () Bool)

(declare-fun res!548687 () Bool)

(declare-fun e!445470 () Bool)

(assert (=> b!803993 (=> (not res!548687) (not e!445470))))

(declare-datatypes ((array!43695 0))(
  ( (array!43696 (arr!20924 (Array (_ BitVec 32) (_ BitVec 64))) (size!21345 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43695)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803993 (= res!548687 (validKeyInArray!0 (select (arr!20924 a!3170) j!153)))))

(declare-fun res!548684 () Bool)

(assert (=> start!68954 (=> (not res!548684) (not e!445470))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68954 (= res!548684 (validMask!0 mask!3266))))

(assert (=> start!68954 e!445470))

(assert (=> start!68954 true))

(declare-fun array_inv!16698 (array!43695) Bool)

(assert (=> start!68954 (array_inv!16698 a!3170)))

(declare-fun b!803994 () Bool)

(declare-fun res!548685 () Bool)

(assert (=> b!803994 (=> (not res!548685) (not e!445470))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!803994 (= res!548685 (and (= (size!21345 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21345 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21345 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!803995 () Bool)

(declare-fun res!548686 () Bool)

(assert (=> b!803995 (=> (not res!548686) (not e!445470))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!803995 (= res!548686 (validKeyInArray!0 k!2044))))

(declare-fun b!803996 () Bool)

(declare-fun res!548682 () Bool)

(declare-fun e!445469 () Bool)

(assert (=> b!803996 (=> (not res!548682) (not e!445469))))

(declare-datatypes ((List!14940 0))(
  ( (Nil!14937) (Cons!14936 (h!16065 (_ BitVec 64)) (t!21263 List!14940)) )
))
(declare-fun arrayNoDuplicates!0 (array!43695 (_ BitVec 32) List!14940) Bool)

(assert (=> b!803996 (= res!548682 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14937))))

(declare-fun b!803997 () Bool)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!803997 (= e!445469 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21345 a!3170)) (= vacantBefore!23 i!1163) (or (bvslt vacantBefore!23 #b00000000000000000000000000000000) (bvsge vacantBefore!23 (size!21345 a!3170)))))))

(declare-fun b!803998 () Bool)

(assert (=> b!803998 (= e!445470 e!445469)))

(declare-fun res!548683 () Bool)

(assert (=> b!803998 (=> (not res!548683) (not e!445469))))

(declare-datatypes ((SeekEntryResult!8522 0))(
  ( (MissingZero!8522 (index!36455 (_ BitVec 32))) (Found!8522 (index!36456 (_ BitVec 32))) (Intermediate!8522 (undefined!9334 Bool) (index!36457 (_ BitVec 32)) (x!67313 (_ BitVec 32))) (Undefined!8522) (MissingVacant!8522 (index!36458 (_ BitVec 32))) )
))
(declare-fun lt!360019 () SeekEntryResult!8522)

(assert (=> b!803998 (= res!548683 (or (= lt!360019 (MissingZero!8522 i!1163)) (= lt!360019 (MissingVacant!8522 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43695 (_ BitVec 32)) SeekEntryResult!8522)

(assert (=> b!803998 (= lt!360019 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!803999 () Bool)

(declare-fun res!548689 () Bool)

(assert (=> b!803999 (=> (not res!548689) (not e!445469))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43695 (_ BitVec 32)) Bool)

(assert (=> b!803999 (= res!548689 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804000 () Bool)

(declare-fun res!548688 () Bool)

(assert (=> b!804000 (=> (not res!548688) (not e!445470))))

(declare-fun arrayContainsKey!0 (array!43695 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804000 (= res!548688 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68954 res!548684) b!803994))

(assert (= (and b!803994 res!548685) b!803993))

(assert (= (and b!803993 res!548687) b!803995))

(assert (= (and b!803995 res!548686) b!804000))

(assert (= (and b!804000 res!548688) b!803998))

(assert (= (and b!803998 res!548683) b!803999))

(assert (= (and b!803999 res!548689) b!803996))

(assert (= (and b!803996 res!548682) b!803997))

(declare-fun m!746005 () Bool)

(assert (=> start!68954 m!746005))

(declare-fun m!746007 () Bool)

(assert (=> start!68954 m!746007))

(declare-fun m!746009 () Bool)

(assert (=> b!803996 m!746009))

(declare-fun m!746011 () Bool)

(assert (=> b!803999 m!746011))

(declare-fun m!746013 () Bool)

(assert (=> b!803995 m!746013))

(declare-fun m!746015 () Bool)

(assert (=> b!804000 m!746015))

(declare-fun m!746017 () Bool)

(assert (=> b!803993 m!746017))

(assert (=> b!803993 m!746017))

(declare-fun m!746019 () Bool)

(assert (=> b!803993 m!746019))

(declare-fun m!746021 () Bool)

(assert (=> b!803998 m!746021))

(push 1)

(assert (not b!803993))

(assert (not b!803996))

(assert (not b!804000))

(assert (not b!803995))

(assert (not b!803999))

(assert (not start!68954))

(assert (not b!803998))

(check-sat)

(pop 1)

(push 1)

(check-sat)

