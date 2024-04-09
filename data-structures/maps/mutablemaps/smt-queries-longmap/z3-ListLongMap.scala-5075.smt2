; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!68982 () Bool)

(assert start!68982)

(declare-fun res!548982 () Bool)

(declare-fun e!445595 () Bool)

(assert (=> start!68982 (=> (not res!548982) (not e!445595))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68982 (= res!548982 (validMask!0 mask!3266))))

(assert (=> start!68982 e!445595))

(assert (=> start!68982 true))

(declare-datatypes ((array!43723 0))(
  ( (array!43724 (arr!20938 (Array (_ BitVec 32) (_ BitVec 64))) (size!21359 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43723)

(declare-fun array_inv!16712 (array!43723) Bool)

(assert (=> start!68982 (array_inv!16712 a!3170)))

(declare-fun b!804288 () Bool)

(declare-fun e!445596 () Bool)

(assert (=> b!804288 (= e!445596 false)))

(declare-fun lt!360102 () Bool)

(declare-datatypes ((List!14954 0))(
  ( (Nil!14951) (Cons!14950 (h!16079 (_ BitVec 64)) (t!21277 List!14954)) )
))
(declare-fun arrayNoDuplicates!0 (array!43723 (_ BitVec 32) List!14954) Bool)

(assert (=> b!804288 (= lt!360102 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14951))))

(declare-fun b!804289 () Bool)

(assert (=> b!804289 (= e!445595 e!445596)))

(declare-fun res!548983 () Bool)

(assert (=> b!804289 (=> (not res!548983) (not e!445596))))

(declare-datatypes ((SeekEntryResult!8536 0))(
  ( (MissingZero!8536 (index!36511 (_ BitVec 32))) (Found!8536 (index!36512 (_ BitVec 32))) (Intermediate!8536 (undefined!9348 Bool) (index!36513 (_ BitVec 32)) (x!67367 (_ BitVec 32))) (Undefined!8536) (MissingVacant!8536 (index!36514 (_ BitVec 32))) )
))
(declare-fun lt!360103 () SeekEntryResult!8536)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!804289 (= res!548983 (or (= lt!360103 (MissingZero!8536 i!1163)) (= lt!360103 (MissingVacant!8536 i!1163))))))

(declare-fun k0!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43723 (_ BitVec 32)) SeekEntryResult!8536)

(assert (=> b!804289 (= lt!360103 (seekEntryOrOpen!0 k0!2044 a!3170 mask!3266))))

(declare-fun b!804290 () Bool)

(declare-fun res!548981 () Bool)

(assert (=> b!804290 (=> (not res!548981) (not e!445595))))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!804290 (= res!548981 (validKeyInArray!0 (select (arr!20938 a!3170) j!153)))))

(declare-fun b!804291 () Bool)

(declare-fun res!548978 () Bool)

(assert (=> b!804291 (=> (not res!548978) (not e!445595))))

(assert (=> b!804291 (= res!548978 (validKeyInArray!0 k0!2044))))

(declare-fun b!804292 () Bool)

(declare-fun res!548980 () Bool)

(assert (=> b!804292 (=> (not res!548980) (not e!445596))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43723 (_ BitVec 32)) Bool)

(assert (=> b!804292 (= res!548980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!804293 () Bool)

(declare-fun res!548979 () Bool)

(assert (=> b!804293 (=> (not res!548979) (not e!445595))))

(declare-fun arrayContainsKey!0 (array!43723 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!804293 (= res!548979 (not (arrayContainsKey!0 a!3170 k0!2044 #b00000000000000000000000000000000)))))

(declare-fun b!804294 () Bool)

(declare-fun res!548977 () Bool)

(assert (=> b!804294 (=> (not res!548977) (not e!445595))))

(assert (=> b!804294 (= res!548977 (and (= (size!21359 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21359 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21359 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68982 res!548982) b!804294))

(assert (= (and b!804294 res!548977) b!804290))

(assert (= (and b!804290 res!548981) b!804291))

(assert (= (and b!804291 res!548978) b!804293))

(assert (= (and b!804293 res!548979) b!804289))

(assert (= (and b!804289 res!548983) b!804292))

(assert (= (and b!804292 res!548980) b!804288))

(declare-fun m!746257 () Bool)

(assert (=> b!804288 m!746257))

(declare-fun m!746259 () Bool)

(assert (=> b!804289 m!746259))

(declare-fun m!746261 () Bool)

(assert (=> b!804292 m!746261))

(declare-fun m!746263 () Bool)

(assert (=> b!804293 m!746263))

(declare-fun m!746265 () Bool)

(assert (=> start!68982 m!746265))

(declare-fun m!746267 () Bool)

(assert (=> start!68982 m!746267))

(declare-fun m!746269 () Bool)

(assert (=> b!804290 m!746269))

(assert (=> b!804290 m!746269))

(declare-fun m!746271 () Bool)

(assert (=> b!804290 m!746271))

(declare-fun m!746273 () Bool)

(assert (=> b!804291 m!746273))

(check-sat (not start!68982) (not b!804292) (not b!804288) (not b!804291) (not b!804289) (not b!804290) (not b!804293))
(check-sat)
