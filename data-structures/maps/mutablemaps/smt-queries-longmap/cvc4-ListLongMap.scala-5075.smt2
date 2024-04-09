; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68984 () Bool)

(assert start!68984)

(declare-fun b!804309 () Bool)

(declare-fun res!549002 () Bool)

(declare-fun e!445606 () Bool)

(assert (=> b!804309 (=> (not res!549002) (not e!445606))))

(declare-datatypes ((array!43725 0))(
  ( (array!43726 (arr!20939 (Array (_ BitVec 32) (_ BitVec 64))) (size!21360 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43725)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804309 (= res!549002 (validKeyInArray!0 (select (arr!20939 a!3170) j!153)))))

(declare-fun b!804310 () Bool)

(declare-fun e!445604 () Bool)

(assert (=> b!804310 (= e!445604 false)))

(declare-fun lt!360108 () Bool)

(declare-datatypes ((List!14955 0))(
  ( (Nil!14952) (Cons!14951 (h!16080 (_ BitVec 64)) (t!21278 List!14955)) )
))
(declare-fun arrayNoDuplicates!0 (array!43725 (_ BitVec 32) List!14955) Bool)

(assert (=> b!804310 (= lt!360108 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14952))))

(declare-fun res!548999 () Bool)

(assert (=> start!68984 (=> (not res!548999) (not e!445606))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68984 (= res!548999 (validMask!0 mask!3266))))

(assert (=> start!68984 e!445606))

(assert (=> start!68984 true))

(declare-fun array_inv!16713 (array!43725) Bool)

(assert (=> start!68984 (array_inv!16713 a!3170)))

(declare-fun b!804311 () Bool)

(declare-fun res!549000 () Bool)

(assert (=> b!804311 (=> (not res!549000) (not e!445604))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43725 (_ BitVec 32)) Bool)

(assert (=> b!804311 (= res!549000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804312 () Bool)

(declare-fun res!548998 () Bool)

(assert (=> b!804312 (=> (not res!548998) (not e!445606))))

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!804312 (= res!548998 (and (= (size!21360 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21360 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21360 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!804313 () Bool)

(declare-fun res!549001 () Bool)

(assert (=> b!804313 (=> (not res!549001) (not e!445606))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43725 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804313 (= res!549001 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804314 () Bool)

(assert (=> b!804314 (= e!445606 e!445604)))

(declare-fun res!549003 () Bool)

(assert (=> b!804314 (=> (not res!549003) (not e!445604))))

(declare-datatypes ((SeekEntryResult!8537 0))(
  ( (MissingZero!8537 (index!36515 (_ BitVec 32))) (Found!8537 (index!36516 (_ BitVec 32))) (Intermediate!8537 (undefined!9349 Bool) (index!36517 (_ BitVec 32)) (x!67368 (_ BitVec 32))) (Undefined!8537) (MissingVacant!8537 (index!36518 (_ BitVec 32))) )
))
(declare-fun lt!360109 () SeekEntryResult!8537)

(assert (=> b!804314 (= res!549003 (or (= lt!360109 (MissingZero!8537 i!1163)) (= lt!360109 (MissingVacant!8537 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43725 (_ BitVec 32)) SeekEntryResult!8537)

(assert (=> b!804314 (= lt!360109 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!804315 () Bool)

(declare-fun res!549004 () Bool)

(assert (=> b!804315 (=> (not res!549004) (not e!445606))))

(assert (=> b!804315 (= res!549004 (validKeyInArray!0 k!2044))))

(assert (= (and start!68984 res!548999) b!804312))

(assert (= (and b!804312 res!548998) b!804309))

(assert (= (and b!804309 res!549002) b!804315))

(assert (= (and b!804315 res!549004) b!804313))

(assert (= (and b!804313 res!549001) b!804314))

(assert (= (and b!804314 res!549003) b!804311))

(assert (= (and b!804311 res!549000) b!804310))

(declare-fun m!746275 () Bool)

(assert (=> b!804309 m!746275))

(assert (=> b!804309 m!746275))

(declare-fun m!746277 () Bool)

(assert (=> b!804309 m!746277))

(declare-fun m!746279 () Bool)

(assert (=> b!804311 m!746279))

(declare-fun m!746281 () Bool)

(assert (=> b!804314 m!746281))

(declare-fun m!746283 () Bool)

(assert (=> b!804315 m!746283))

(declare-fun m!746285 () Bool)

(assert (=> start!68984 m!746285))

(declare-fun m!746287 () Bool)

(assert (=> start!68984 m!746287))

(declare-fun m!746289 () Bool)

(assert (=> b!804310 m!746289))

(declare-fun m!746291 () Bool)

(assert (=> b!804313 m!746291))

(push 1)

(assert (not b!804313))

(assert (not b!804314))

(assert (not b!804315))

(assert (not start!68984))

