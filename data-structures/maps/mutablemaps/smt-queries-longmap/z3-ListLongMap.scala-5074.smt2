; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68976 () Bool)

(assert start!68976)

(declare-fun res!548914 () Bool)

(declare-fun e!445569 () Bool)

(assert (=> start!68976 (=> (not res!548914) (not e!445569))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68976 (= res!548914 (validMask!0 mask!3266))))

(assert (=> start!68976 e!445569))

(assert (=> start!68976 true))

(declare-datatypes ((array!43717 0))(
  ( (array!43718 (arr!20935 (Array (_ BitVec 32) (_ BitVec 64))) (size!21356 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43717)

(declare-fun array_inv!16709 (array!43717) Bool)

(assert (=> start!68976 (array_inv!16709 a!3170)))

(declare-fun b!804225 () Bool)

(declare-fun e!445570 () Bool)

(assert (=> b!804225 (= e!445569 e!445570)))

(declare-fun res!548916 () Bool)

(assert (=> b!804225 (=> (not res!548916) (not e!445570))))

(declare-datatypes ((SeekEntryResult!8533 0))(
  ( (MissingZero!8533 (index!36499 (_ BitVec 32))) (Found!8533 (index!36500 (_ BitVec 32))) (Intermediate!8533 (undefined!9345 Bool) (index!36501 (_ BitVec 32)) (x!67356 (_ BitVec 32))) (Undefined!8533) (MissingVacant!8533 (index!36502 (_ BitVec 32))) )
))
(declare-fun lt!360085 () SeekEntryResult!8533)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!804225 (= res!548916 (or (= lt!360085 (MissingZero!8533 i!1163)) (= lt!360085 (MissingVacant!8533 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43717 (_ BitVec 32)) SeekEntryResult!8533)

(assert (=> b!804225 (= lt!360085 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!804226 () Bool)

(declare-fun res!548915 () Bool)

(assert (=> b!804226 (=> (not res!548915) (not e!445570))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43717 (_ BitVec 32)) Bool)

(assert (=> b!804226 (= res!548915 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804227 () Bool)

(declare-fun res!548917 () Bool)

(assert (=> b!804227 (=> (not res!548917) (not e!445569))))

(declare-fun arrayContainsKey!0 (array!43717 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804227 (= res!548917 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804228 () Bool)

(declare-fun res!548918 () Bool)

(assert (=> b!804228 (=> (not res!548918) (not e!445569))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!804228 (= res!548918 (and (= (size!21356 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21356 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21356 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804229 () Bool)

(declare-fun res!548920 () Bool)

(assert (=> b!804229 (=> (not res!548920) (not e!445569))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804229 (= res!548920 (validKeyInArray!0 k0!2044))))

(declare-fun b!804230 () Bool)

(assert (=> b!804230 (= e!445570 false)))

(declare-fun lt!360084 () Bool)

(declare-datatypes ((List!14951 0))(
  ( (Nil!14948) (Cons!14947 (h!16076 (_ BitVec 64)) (t!21274 List!14951)) )
))
(declare-fun arrayNoDuplicates!0 (array!43717 (_ BitVec 32) List!14951) Bool)

(assert (=> b!804230 (= lt!360084 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14948))))

(declare-fun b!804231 () Bool)

(declare-fun res!548919 () Bool)

(assert (=> b!804231 (=> (not res!548919) (not e!445569))))

(assert (=> b!804231 (= res!548919 (validKeyInArray!0 (select (arr!20935 a!3170) j!153)))))

(assert (= (and start!68976 res!548914) b!804228))

(assert (= (and b!804228 res!548918) b!804231))

(assert (= (and b!804231 res!548919) b!804229))

(assert (= (and b!804229 res!548920) b!804227))

(assert (= (and b!804227 res!548917) b!804225))

(assert (= (and b!804225 res!548916) b!804226))

(assert (= (and b!804226 res!548915) b!804230))

(declare-fun m!746203 () Bool)

(assert (=> b!804225 m!746203))

(declare-fun m!746205 () Bool)

(assert (=> b!804229 m!746205))

(declare-fun m!746207 () Bool)

(assert (=> b!804226 m!746207))

(declare-fun m!746209 () Bool)

(assert (=> start!68976 m!746209))

(declare-fun m!746211 () Bool)

(assert (=> start!68976 m!746211))

(declare-fun m!746213 () Bool)

(assert (=> b!804230 m!746213))

(declare-fun m!746215 () Bool)

(assert (=> b!804227 m!746215))

(declare-fun m!746217 () Bool)

(assert (=> b!804231 m!746217))

(assert (=> b!804231 m!746217))

(declare-fun m!746219 () Bool)

(assert (=> b!804231 m!746219))

(check-sat (not b!804231) (not b!804227) (not start!68976) (not b!804230) (not b!804225) (not b!804226) (not b!804229))
(check-sat)
