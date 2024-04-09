; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68268 () Bool)

(assert start!68268)

(declare-fun b!792678 () Bool)

(declare-fun res!537368 () Bool)

(declare-fun e!440465 () Bool)

(assert (=> b!792678 (=> (not res!537368) (not e!440465))))

(declare-datatypes ((array!43009 0))(
  ( (array!43010 (arr!20581 (Array (_ BitVec 32) (_ BitVec 64))) (size!21002 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43009)

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43009 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!792678 (= res!537368 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!792679 () Bool)

(declare-fun res!537367 () Bool)

(declare-fun e!440466 () Bool)

(assert (=> b!792679 (=> (not res!537367) (not e!440466))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43009 (_ BitVec 32)) Bool)

(assert (=> b!792679 (= res!537367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!792680 () Bool)

(declare-fun res!537369 () Bool)

(assert (=> b!792680 (=> (not res!537369) (not e!440465))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!792680 (= res!537369 (validKeyInArray!0 (select (arr!20581 a!3170) j!153)))))

(declare-fun b!792682 () Bool)

(assert (=> b!792682 (= e!440465 e!440466)))

(declare-fun res!537373 () Bool)

(assert (=> b!792682 (=> (not res!537373) (not e!440466))))

(declare-datatypes ((SeekEntryResult!8179 0))(
  ( (MissingZero!8179 (index!35083 (_ BitVec 32))) (Found!8179 (index!35084 (_ BitVec 32))) (Intermediate!8179 (undefined!8991 Bool) (index!35085 (_ BitVec 32)) (x!66058 (_ BitVec 32))) (Undefined!8179) (MissingVacant!8179 (index!35086 (_ BitVec 32))) )
))
(declare-fun lt!353542 () SeekEntryResult!8179)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!792682 (= res!537373 (or (= lt!353542 (MissingZero!8179 i!1163)) (= lt!353542 (MissingVacant!8179 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43009 (_ BitVec 32)) SeekEntryResult!8179)

(assert (=> b!792682 (= lt!353542 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!792683 () Bool)

(assert (=> b!792683 (= e!440466 false)))

(declare-fun lt!353541 () Bool)

(declare-datatypes ((List!14597 0))(
  ( (Nil!14594) (Cons!14593 (h!15722 (_ BitVec 64)) (t!20920 List!14597)) )
))
(declare-fun arrayNoDuplicates!0 (array!43009 (_ BitVec 32) List!14597) Bool)

(assert (=> b!792683 (= lt!353541 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14594))))

(declare-fun b!792684 () Bool)

(declare-fun res!537370 () Bool)

(assert (=> b!792684 (=> (not res!537370) (not e!440465))))

(assert (=> b!792684 (= res!537370 (and (= (size!21002 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21002 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21002 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!792681 () Bool)

(declare-fun res!537372 () Bool)

(assert (=> b!792681 (=> (not res!537372) (not e!440465))))

(assert (=> b!792681 (= res!537372 (validKeyInArray!0 k0!2044))))

(declare-fun res!537371 () Bool)

(assert (=> start!68268 (=> (not res!537371) (not e!440465))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68268 (= res!537371 (validMask!0 mask!3266))))

(assert (=> start!68268 e!440465))

(assert (=> start!68268 true))

(declare-fun array_inv!16355 (array!43009) Bool)

(assert (=> start!68268 (array_inv!16355 a!3170)))

(assert (= (and start!68268 res!537371) b!792684))

(assert (= (and b!792684 res!537370) b!792680))

(assert (= (and b!792680 res!537369) b!792681))

(assert (= (and b!792681 res!537372) b!792678))

(assert (= (and b!792678 res!537368) b!792682))

(assert (= (and b!792682 res!537373) b!792679))

(assert (= (and b!792679 res!537367) b!792683))

(declare-fun m!733285 () Bool)

(assert (=> start!68268 m!733285))

(declare-fun m!733287 () Bool)

(assert (=> start!68268 m!733287))

(declare-fun m!733289 () Bool)

(assert (=> b!792681 m!733289))

(declare-fun m!733291 () Bool)

(assert (=> b!792683 m!733291))

(declare-fun m!733293 () Bool)

(assert (=> b!792680 m!733293))

(assert (=> b!792680 m!733293))

(declare-fun m!733295 () Bool)

(assert (=> b!792680 m!733295))

(declare-fun m!733297 () Bool)

(assert (=> b!792678 m!733297))

(declare-fun m!733299 () Bool)

(assert (=> b!792679 m!733299))

(declare-fun m!733301 () Bool)

(assert (=> b!792682 m!733301))

(check-sat (not b!792678) (not b!792679) (not b!792683) (not b!792681) (not start!68268) (not b!792680) (not b!792682))
(check-sat)
