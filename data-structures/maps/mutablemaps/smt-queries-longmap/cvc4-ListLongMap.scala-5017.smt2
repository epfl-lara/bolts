; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68636 () Bool)

(assert start!68636)

(declare-fun b!798284 () Bool)

(declare-fun e!442832 () Bool)

(assert (=> b!798284 (= e!442832 (not true))))

(declare-datatypes ((SeekEntryResult!8363 0))(
  ( (MissingZero!8363 (index!35819 (_ BitVec 32))) (Found!8363 (index!35820 (_ BitVec 32))) (Intermediate!8363 (undefined!9175 Bool) (index!35821 (_ BitVec 32)) (x!66730 (_ BitVec 32))) (Undefined!8363) (MissingVacant!8363 (index!35822 (_ BitVec 32))) )
))
(declare-fun lt!356369 () SeekEntryResult!8363)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!798284 (= lt!356369 (Found!8363 index!1236))))

(declare-fun b!798285 () Bool)

(declare-fun res!542973 () Bool)

(declare-fun e!442834 () Bool)

(assert (=> b!798285 (=> (not res!542973) (not e!442834))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((array!43377 0))(
  ( (array!43378 (arr!20765 (Array (_ BitVec 32) (_ BitVec 64))) (size!21186 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43377)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(assert (=> b!798285 (= res!542973 (and (= (size!21186 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21186 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21186 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!798286 () Bool)

(declare-fun res!542982 () Bool)

(declare-fun e!442831 () Bool)

(assert (=> b!798286 (=> (not res!542982) (not e!442831))))

(declare-datatypes ((List!14781 0))(
  ( (Nil!14778) (Cons!14777 (h!15906 (_ BitVec 64)) (t!21104 List!14781)) )
))
(declare-fun arrayNoDuplicates!0 (array!43377 (_ BitVec 32) List!14781) Bool)

(assert (=> b!798286 (= res!542982 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14778))))

(declare-fun b!798287 () Bool)

(declare-fun e!442833 () Bool)

(assert (=> b!798287 (= e!442831 e!442833)))

(declare-fun res!542978 () Bool)

(assert (=> b!798287 (=> (not res!542978) (not e!442833))))

(declare-fun lt!356368 () SeekEntryResult!8363)

(assert (=> b!798287 (= res!542978 (= lt!356368 lt!356369))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!356372 () (_ BitVec 64))

(declare-fun lt!356370 () array!43377)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43377 (_ BitVec 32)) SeekEntryResult!8363)

(assert (=> b!798287 (= lt!356369 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!356372 lt!356370 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43377 (_ BitVec 32)) SeekEntryResult!8363)

(assert (=> b!798287 (= lt!356368 (seekEntryOrOpen!0 lt!356372 lt!356370 mask!3266))))

(declare-fun k!2044 () (_ BitVec 64))

(assert (=> b!798287 (= lt!356372 (select (store (arr!20765 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!798287 (= lt!356370 (array!43378 (store (arr!20765 a!3170) i!1163 k!2044) (size!21186 a!3170)))))

(declare-fun b!798288 () Bool)

(declare-fun res!542977 () Bool)

(assert (=> b!798288 (=> (not res!542977) (not e!442834))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!798288 (= res!542977 (validKeyInArray!0 (select (arr!20765 a!3170) j!153)))))

(declare-fun b!798289 () Bool)

(declare-fun res!542980 () Bool)

(assert (=> b!798289 (=> (not res!542980) (not e!442834))))

(assert (=> b!798289 (= res!542980 (validKeyInArray!0 k!2044))))

(declare-fun b!798290 () Bool)

(assert (=> b!798290 (= e!442833 e!442832)))

(declare-fun res!542983 () Bool)

(assert (=> b!798290 (=> (not res!542983) (not e!442832))))

(declare-fun lt!356373 () SeekEntryResult!8363)

(declare-fun lt!356371 () SeekEntryResult!8363)

(assert (=> b!798290 (= res!542983 (and (= lt!356373 lt!356371) (= lt!356371 (Found!8363 j!153)) (= (select (arr!20765 a!3170) index!1236) (select (arr!20765 a!3170) j!153))))))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(assert (=> b!798290 (= lt!356371 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20765 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!798290 (= lt!356373 (seekEntryOrOpen!0 (select (arr!20765 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!798291 () Bool)

(declare-fun res!542976 () Bool)

(assert (=> b!798291 (=> (not res!542976) (not e!442831))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43377 (_ BitVec 32)) Bool)

(assert (=> b!798291 (= res!542976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun res!542975 () Bool)

(assert (=> start!68636 (=> (not res!542975) (not e!442834))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68636 (= res!542975 (validMask!0 mask!3266))))

(assert (=> start!68636 e!442834))

(assert (=> start!68636 true))

(declare-fun array_inv!16539 (array!43377) Bool)

(assert (=> start!68636 (array_inv!16539 a!3170)))

(declare-fun b!798292 () Bool)

(assert (=> b!798292 (= e!442834 e!442831)))

(declare-fun res!542979 () Bool)

(assert (=> b!798292 (=> (not res!542979) (not e!442831))))

(declare-fun lt!356374 () SeekEntryResult!8363)

(assert (=> b!798292 (= res!542979 (or (= lt!356374 (MissingZero!8363 i!1163)) (= lt!356374 (MissingVacant!8363 i!1163))))))

(assert (=> b!798292 (= lt!356374 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!798293 () Bool)

(declare-fun res!542981 () Bool)

(assert (=> b!798293 (=> (not res!542981) (not e!442834))))

(declare-fun arrayContainsKey!0 (array!43377 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!798293 (= res!542981 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!798294 () Bool)

(declare-fun res!542974 () Bool)

(assert (=> b!798294 (=> (not res!542974) (not e!442831))))

(assert (=> b!798294 (= res!542974 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21186 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20765 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21186 a!3170)) (= (select (arr!20765 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!68636 res!542975) b!798285))

(assert (= (and b!798285 res!542973) b!798288))

(assert (= (and b!798288 res!542977) b!798289))

(assert (= (and b!798289 res!542980) b!798293))

(assert (= (and b!798293 res!542981) b!798292))

(assert (= (and b!798292 res!542979) b!798291))

(assert (= (and b!798291 res!542976) b!798286))

(assert (= (and b!798286 res!542982) b!798294))

(assert (= (and b!798294 res!542974) b!798287))

(assert (= (and b!798287 res!542978) b!798290))

(assert (= (and b!798290 res!542983) b!798284))

(declare-fun m!739285 () Bool)

(assert (=> b!798287 m!739285))

(declare-fun m!739287 () Bool)

(assert (=> b!798287 m!739287))

(declare-fun m!739289 () Bool)

(assert (=> b!798287 m!739289))

(declare-fun m!739291 () Bool)

(assert (=> b!798287 m!739291))

(declare-fun m!739293 () Bool)

(assert (=> b!798292 m!739293))

(declare-fun m!739295 () Bool)

(assert (=> b!798289 m!739295))

(declare-fun m!739297 () Bool)

(assert (=> b!798286 m!739297))

(declare-fun m!739299 () Bool)

(assert (=> b!798291 m!739299))

(declare-fun m!739301 () Bool)

(assert (=> b!798294 m!739301))

(declare-fun m!739303 () Bool)

(assert (=> b!798294 m!739303))

(declare-fun m!739305 () Bool)

(assert (=> b!798288 m!739305))

(assert (=> b!798288 m!739305))

(declare-fun m!739307 () Bool)

(assert (=> b!798288 m!739307))

(declare-fun m!739309 () Bool)

(assert (=> b!798293 m!739309))

(declare-fun m!739311 () Bool)

(assert (=> b!798290 m!739311))

(assert (=> b!798290 m!739305))

(assert (=> b!798290 m!739305))

(declare-fun m!739313 () Bool)

(assert (=> b!798290 m!739313))

(assert (=> b!798290 m!739305))

(declare-fun m!739315 () Bool)

(assert (=> b!798290 m!739315))

(declare-fun m!739317 () Bool)

(assert (=> start!68636 m!739317))

(declare-fun m!739319 () Bool)

(assert (=> start!68636 m!739319))

(push 1)

