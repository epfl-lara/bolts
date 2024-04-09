; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68962 () Bool)

(assert start!68962)

(declare-fun b!804078 () Bool)

(declare-fun res!548771 () Bool)

(declare-fun e!445506 () Bool)

(assert (=> b!804078 (=> (not res!548771) (not e!445506))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43703 0))(
  ( (array!43704 (arr!20928 (Array (_ BitVec 32) (_ BitVec 64))) (size!21349 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43703)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!804078 (= res!548771 (and (= (size!21349 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21349 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21349 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804079 () Bool)

(declare-fun res!548773 () Bool)

(assert (=> b!804079 (=> (not res!548773) (not e!445506))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804079 (= res!548773 (validKeyInArray!0 k!2044))))

(declare-fun b!804080 () Bool)

(declare-fun e!445505 () Bool)

(assert (=> b!804080 (= e!445506 e!445505)))

(declare-fun res!548772 () Bool)

(assert (=> b!804080 (=> (not res!548772) (not e!445505))))

(declare-datatypes ((SeekEntryResult!8526 0))(
  ( (MissingZero!8526 (index!36471 (_ BitVec 32))) (Found!8526 (index!36472 (_ BitVec 32))) (Intermediate!8526 (undefined!9338 Bool) (index!36473 (_ BitVec 32)) (x!67333 (_ BitVec 32))) (Undefined!8526) (MissingVacant!8526 (index!36474 (_ BitVec 32))) )
))
(declare-fun lt!360043 () SeekEntryResult!8526)

(assert (=> b!804080 (= res!548772 (or (= lt!360043 (MissingZero!8526 i!1163)) (= lt!360043 (MissingVacant!8526 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43703 (_ BitVec 32)) SeekEntryResult!8526)

(assert (=> b!804080 (= lt!360043 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!804081 () Bool)

(declare-fun res!548769 () Bool)

(assert (=> b!804081 (=> (not res!548769) (not e!445505))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43703 (_ BitVec 32)) Bool)

(assert (=> b!804081 (= res!548769 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804082 () Bool)

(assert (=> b!804082 (= e!445505 false)))

(declare-fun lt!360042 () Bool)

(declare-datatypes ((List!14944 0))(
  ( (Nil!14941) (Cons!14940 (h!16069 (_ BitVec 64)) (t!21267 List!14944)) )
))
(declare-fun arrayNoDuplicates!0 (array!43703 (_ BitVec 32) List!14944) Bool)

(assert (=> b!804082 (= lt!360042 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14941))))

(declare-fun b!804083 () Bool)

(declare-fun res!548767 () Bool)

(assert (=> b!804083 (=> (not res!548767) (not e!445506))))

(declare-fun arrayContainsKey!0 (array!43703 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804083 (= res!548767 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804084 () Bool)

(declare-fun res!548770 () Bool)

(assert (=> b!804084 (=> (not res!548770) (not e!445506))))

(assert (=> b!804084 (= res!548770 (validKeyInArray!0 (select (arr!20928 a!3170) j!153)))))

(declare-fun res!548768 () Bool)

(assert (=> start!68962 (=> (not res!548768) (not e!445506))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68962 (= res!548768 (validMask!0 mask!3266))))

(assert (=> start!68962 e!445506))

(assert (=> start!68962 true))

(declare-fun array_inv!16702 (array!43703) Bool)

(assert (=> start!68962 (array_inv!16702 a!3170)))

(assert (= (and start!68962 res!548768) b!804078))

(assert (= (and b!804078 res!548771) b!804084))

(assert (= (and b!804084 res!548770) b!804079))

(assert (= (and b!804079 res!548773) b!804083))

(assert (= (and b!804083 res!548767) b!804080))

(assert (= (and b!804080 res!548772) b!804081))

(assert (= (and b!804081 res!548769) b!804082))

(declare-fun m!746077 () Bool)

(assert (=> b!804080 m!746077))

(declare-fun m!746079 () Bool)

(assert (=> b!804083 m!746079))

(declare-fun m!746081 () Bool)

(assert (=> b!804081 m!746081))

(declare-fun m!746083 () Bool)

(assert (=> start!68962 m!746083))

(declare-fun m!746085 () Bool)

(assert (=> start!68962 m!746085))

(declare-fun m!746087 () Bool)

(assert (=> b!804082 m!746087))

(declare-fun m!746089 () Bool)

(assert (=> b!804079 m!746089))

(declare-fun m!746091 () Bool)

(assert (=> b!804084 m!746091))

(assert (=> b!804084 m!746091))

(declare-fun m!746093 () Bool)

(assert (=> b!804084 m!746093))

(push 1)

