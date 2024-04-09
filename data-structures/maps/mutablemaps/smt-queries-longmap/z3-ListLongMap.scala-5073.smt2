; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68970 () Bool)

(assert start!68970)

(declare-fun b!804162 () Bool)

(declare-fun e!445541 () Bool)

(assert (=> b!804162 (= e!445541 false)))

(declare-fun lt!360066 () Bool)

(declare-datatypes ((array!43711 0))(
  ( (array!43712 (arr!20932 (Array (_ BitVec 32) (_ BitVec 64))) (size!21353 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43711)

(declare-datatypes ((List!14948 0))(
  ( (Nil!14945) (Cons!14944 (h!16073 (_ BitVec 64)) (t!21271 List!14948)) )
))
(declare-fun arrayNoDuplicates!0 (array!43711 (_ BitVec 32) List!14948) Bool)

(assert (=> b!804162 (= lt!360066 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14945))))

(declare-fun b!804163 () Bool)

(declare-fun res!548857 () Bool)

(declare-fun e!445542 () Bool)

(assert (=> b!804163 (=> (not res!548857) (not e!445542))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804163 (= res!548857 (validKeyInArray!0 k0!2044))))

(declare-fun b!804164 () Bool)

(assert (=> b!804164 (= e!445542 e!445541)))

(declare-fun res!548853 () Bool)

(assert (=> b!804164 (=> (not res!548853) (not e!445541))))

(declare-datatypes ((SeekEntryResult!8530 0))(
  ( (MissingZero!8530 (index!36487 (_ BitVec 32))) (Found!8530 (index!36488 (_ BitVec 32))) (Intermediate!8530 (undefined!9342 Bool) (index!36489 (_ BitVec 32)) (x!67345 (_ BitVec 32))) (Undefined!8530) (MissingVacant!8530 (index!36490 (_ BitVec 32))) )
))
(declare-fun lt!360067 () SeekEntryResult!8530)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!804164 (= res!548853 (or (= lt!360067 (MissingZero!8530 i!1163)) (= lt!360067 (MissingVacant!8530 i!1163))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43711 (_ BitVec 32)) SeekEntryResult!8530)

(assert (=> b!804164 (= lt!360067 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun res!548851 () Bool)

(assert (=> start!68970 (=> (not res!548851) (not e!445542))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68970 (= res!548851 (validMask!0 mask!3266))))

(assert (=> start!68970 e!445542))

(assert (=> start!68970 true))

(declare-fun array_inv!16706 (array!43711) Bool)

(assert (=> start!68970 (array_inv!16706 a!3170)))

(declare-fun b!804165 () Bool)

(declare-fun res!548856 () Bool)

(assert (=> b!804165 (=> (not res!548856) (not e!445542))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!804165 (= res!548856 (and (= (size!21353 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21353 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21353 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804166 () Bool)

(declare-fun res!548855 () Bool)

(assert (=> b!804166 (=> (not res!548855) (not e!445542))))

(assert (=> b!804166 (= res!548855 (validKeyInArray!0 (select (arr!20932 a!3170) j!153)))))

(declare-fun b!804167 () Bool)

(declare-fun res!548852 () Bool)

(assert (=> b!804167 (=> (not res!548852) (not e!445541))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43711 (_ BitVec 32)) Bool)

(assert (=> b!804167 (= res!548852 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804168 () Bool)

(declare-fun res!548854 () Bool)

(assert (=> b!804168 (=> (not res!548854) (not e!445542))))

(declare-fun arrayContainsKey!0 (array!43711 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804168 (= res!548854 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(assert (= (and start!68970 res!548851) b!804165))

(assert (= (and b!804165 res!548856) b!804166))

(assert (= (and b!804166 res!548855) b!804163))

(assert (= (and b!804163 res!548857) b!804168))

(assert (= (and b!804168 res!548854) b!804164))

(assert (= (and b!804164 res!548853) b!804167))

(assert (= (and b!804167 res!548852) b!804162))

(declare-fun m!746149 () Bool)

(assert (=> start!68970 m!746149))

(declare-fun m!746151 () Bool)

(assert (=> start!68970 m!746151))

(declare-fun m!746153 () Bool)

(assert (=> b!804164 m!746153))

(declare-fun m!746155 () Bool)

(assert (=> b!804162 m!746155))

(declare-fun m!746157 () Bool)

(assert (=> b!804168 m!746157))

(declare-fun m!746159 () Bool)

(assert (=> b!804166 m!746159))

(assert (=> b!804166 m!746159))

(declare-fun m!746161 () Bool)

(assert (=> b!804166 m!746161))

(declare-fun m!746163 () Bool)

(assert (=> b!804167 m!746163))

(declare-fun m!746165 () Bool)

(assert (=> b!804163 m!746165))

(check-sat (not b!804167) (not b!804162) (not b!804168) (not start!68970) (not b!804166) (not b!804164) (not b!804163))
(check-sat)
