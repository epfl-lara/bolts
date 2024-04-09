; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68988 () Bool)

(assert start!68988)

(declare-fun b!804352 () Bool)

(declare-fun res!549040 () Bool)

(declare-fun e!445623 () Bool)

(assert (=> b!804352 (=> (not res!549040) (not e!445623))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804352 (= res!549040 (validKeyInArray!0 k0!2044))))

(declare-fun b!804353 () Bool)

(declare-fun e!445622 () Bool)

(assert (=> b!804353 (= e!445623 e!445622)))

(declare-fun res!549046 () Bool)

(assert (=> b!804353 (=> (not res!549046) (not e!445622))))

(declare-datatypes ((SeekEntryResult!8539 0))(
  ( (MissingZero!8539 (index!36523 (_ BitVec 32))) (Found!8539 (index!36524 (_ BitVec 32))) (Intermediate!8539 (undefined!9351 Bool) (index!36525 (_ BitVec 32)) (x!67378 (_ BitVec 32))) (Undefined!8539) (MissingVacant!8539 (index!36526 (_ BitVec 32))) )
))
(declare-fun lt!360120 () SeekEntryResult!8539)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!804353 (= res!549046 (or (= lt!360120 (MissingZero!8539 i!1163)) (= lt!360120 (MissingVacant!8539 i!1163))))))

(declare-datatypes ((array!43729 0))(
  ( (array!43730 (arr!20941 (Array (_ BitVec 32) (_ BitVec 64))) (size!21362 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43729)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43729 (_ BitVec 32)) SeekEntryResult!8539)

(assert (=> b!804353 (= lt!360120 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!804354 () Bool)

(assert (=> b!804354 (= e!445622 false)))

(declare-fun lt!360121 () Bool)

(declare-datatypes ((List!14957 0))(
  ( (Nil!14954) (Cons!14953 (h!16082 (_ BitVec 64)) (t!21280 List!14957)) )
))
(declare-fun arrayNoDuplicates!0 (array!43729 (_ BitVec 32) List!14957) Bool)

(assert (=> b!804354 (= lt!360121 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14954))))

(declare-fun b!804355 () Bool)

(declare-fun res!549043 () Bool)

(assert (=> b!804355 (=> (not res!549043) (not e!445622))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43729 (_ BitVec 32)) Bool)

(assert (=> b!804355 (= res!549043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804356 () Bool)

(declare-fun res!549044 () Bool)

(assert (=> b!804356 (=> (not res!549044) (not e!445623))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!804356 (= res!549044 (and (= (size!21362 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21362 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21362 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804357 () Bool)

(declare-fun res!549045 () Bool)

(assert (=> b!804357 (=> (not res!549045) (not e!445623))))

(assert (=> b!804357 (= res!549045 (validKeyInArray!0 (select (arr!20941 a!3170) j!153)))))

(declare-fun res!549042 () Bool)

(assert (=> start!68988 (=> (not res!549042) (not e!445623))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68988 (= res!549042 (validMask!0 mask!3266))))

(assert (=> start!68988 e!445623))

(assert (=> start!68988 true))

(declare-fun array_inv!16715 (array!43729) Bool)

(assert (=> start!68988 (array_inv!16715 a!3170)))

(declare-fun b!804351 () Bool)

(declare-fun res!549041 () Bool)

(assert (=> b!804351 (=> (not res!549041) (not e!445623))))

(declare-fun arrayContainsKey!0 (array!43729 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804351 (= res!549041 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68988 res!549042) b!804356))

(assert (= (and b!804356 res!549044) b!804357))

(assert (= (and b!804357 res!549045) b!804352))

(assert (= (and b!804352 res!549040) b!804351))

(assert (= (and b!804351 res!549041) b!804353))

(assert (= (and b!804353 res!549046) b!804355))

(assert (= (and b!804355 res!549043) b!804354))

(declare-fun m!746311 () Bool)

(assert (=> b!804353 m!746311))

(declare-fun m!746313 () Bool)

(assert (=> start!68988 m!746313))

(declare-fun m!746315 () Bool)

(assert (=> start!68988 m!746315))

(declare-fun m!746317 () Bool)

(assert (=> b!804354 m!746317))

(declare-fun m!746319 () Bool)

(assert (=> b!804351 m!746319))

(declare-fun m!746321 () Bool)

(assert (=> b!804352 m!746321))

(declare-fun m!746323 () Bool)

(assert (=> b!804357 m!746323))

(assert (=> b!804357 m!746323))

(declare-fun m!746325 () Bool)

(assert (=> b!804357 m!746325))

(declare-fun m!746327 () Bool)

(assert (=> b!804355 m!746327))

(check-sat (not b!804357) (not b!804352) (not start!68988) (not b!804353) (not b!804355) (not b!804351) (not b!804354))
(check-sat)
