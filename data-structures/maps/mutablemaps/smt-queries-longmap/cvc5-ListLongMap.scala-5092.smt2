; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69178 () Bool)

(assert start!69178)

(declare-fun b!806273 () Bool)

(declare-fun e!446527 () Bool)

(assert (=> b!806273 (= e!446527 (not true))))

(declare-datatypes ((SeekEntryResult!8586 0))(
  ( (MissingZero!8586 (index!36711 (_ BitVec 32))) (Found!8586 (index!36712 (_ BitVec 32))) (Intermediate!8586 (undefined!9398 Bool) (index!36713 (_ BitVec 32)) (x!67559 (_ BitVec 32))) (Undefined!8586) (MissingVacant!8586 (index!36714 (_ BitVec 32))) )
))
(declare-fun lt!361084 () SeekEntryResult!8586)

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!806273 (= lt!361084 (Found!8586 index!1236))))

(declare-fun b!806274 () Bool)

(declare-fun res!550574 () Bool)

(declare-fun e!446529 () Bool)

(assert (=> b!806274 (=> (not res!550574) (not e!446529))))

(declare-datatypes ((array!43829 0))(
  ( (array!43830 (arr!20988 (Array (_ BitVec 32) (_ BitVec 64))) (size!21409 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43829)

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43829 (_ BitVec 32)) Bool)

(assert (=> b!806274 (= res!550574 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!806275 () Bool)

(declare-fun res!550572 () Bool)

(declare-fun e!446528 () Bool)

(assert (=> b!806275 (=> (not res!550572) (not e!446528))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43829 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!806275 (= res!550572 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!806276 () Bool)

(declare-fun res!550575 () Bool)

(assert (=> b!806276 (=> (not res!550575) (not e!446528))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!806276 (= res!550575 (validKeyInArray!0 k!2044))))

(declare-fun b!806277 () Bool)

(declare-fun res!550570 () Bool)

(assert (=> b!806277 (=> (not res!550570) (not e!446529))))

(declare-datatypes ((List!15004 0))(
  ( (Nil!15001) (Cons!15000 (h!16129 (_ BitVec 64)) (t!21327 List!15004)) )
))
(declare-fun arrayNoDuplicates!0 (array!43829 (_ BitVec 32) List!15004) Bool)

(assert (=> b!806277 (= res!550570 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!15001))))

(declare-fun res!550576 () Bool)

(assert (=> start!69178 (=> (not res!550576) (not e!446528))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69178 (= res!550576 (validMask!0 mask!3266))))

(assert (=> start!69178 e!446528))

(assert (=> start!69178 true))

(declare-fun array_inv!16762 (array!43829) Bool)

(assert (=> start!69178 (array_inv!16762 a!3170)))

(declare-fun b!806278 () Bool)

(declare-fun res!550567 () Bool)

(assert (=> b!806278 (=> (not res!550567) (not e!446528))))

(declare-fun j!153 () (_ BitVec 32))

(assert (=> b!806278 (= res!550567 (validKeyInArray!0 (select (arr!20988 a!3170) j!153)))))

(declare-fun b!806279 () Bool)

(declare-fun e!446530 () Bool)

(assert (=> b!806279 (= e!446530 e!446527)))

(declare-fun res!550571 () Bool)

(assert (=> b!806279 (=> (not res!550571) (not e!446527))))

(declare-fun lt!361086 () SeekEntryResult!8586)

(declare-fun lt!361081 () SeekEntryResult!8586)

(assert (=> b!806279 (= res!550571 (and (= lt!361081 lt!361086) (= lt!361086 (Found!8586 j!153)) (= (select (arr!20988 a!3170) index!1236) (select (arr!20988 a!3170) j!153))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43829 (_ BitVec 32)) SeekEntryResult!8586)

(assert (=> b!806279 (= lt!361086 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20988 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43829 (_ BitVec 32)) SeekEntryResult!8586)

(assert (=> b!806279 (= lt!361081 (seekEntryOrOpen!0 (select (arr!20988 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!806280 () Bool)

(assert (=> b!806280 (= e!446528 e!446529)))

(declare-fun res!550569 () Bool)

(assert (=> b!806280 (=> (not res!550569) (not e!446529))))

(declare-fun lt!361083 () SeekEntryResult!8586)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!806280 (= res!550569 (or (= lt!361083 (MissingZero!8586 i!1163)) (= lt!361083 (MissingVacant!8586 i!1163))))))

(assert (=> b!806280 (= lt!361083 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!806281 () Bool)

(declare-fun res!550568 () Bool)

(assert (=> b!806281 (=> (not res!550568) (not e!446528))))

(assert (=> b!806281 (= res!550568 (and (= (size!21409 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21409 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21409 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!806282 () Bool)

(declare-fun res!550573 () Bool)

(assert (=> b!806282 (=> (not res!550573) (not e!446529))))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(assert (=> b!806282 (= res!550573 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21409 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20988 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21409 a!3170)) (= (select (arr!20988 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!806283 () Bool)

(assert (=> b!806283 (= e!446529 e!446530)))

(declare-fun res!550566 () Bool)

(assert (=> b!806283 (=> (not res!550566) (not e!446530))))

(declare-fun lt!361082 () SeekEntryResult!8586)

(assert (=> b!806283 (= res!550566 (= lt!361082 lt!361084))))

(declare-fun lt!361085 () (_ BitVec 64))

(declare-fun lt!361087 () array!43829)

(assert (=> b!806283 (= lt!361084 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!361085 lt!361087 mask!3266))))

(assert (=> b!806283 (= lt!361082 (seekEntryOrOpen!0 lt!361085 lt!361087 mask!3266))))

(assert (=> b!806283 (= lt!361085 (select (store (arr!20988 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!806283 (= lt!361087 (array!43830 (store (arr!20988 a!3170) i!1163 k!2044) (size!21409 a!3170)))))

(assert (= (and start!69178 res!550576) b!806281))

(assert (= (and b!806281 res!550568) b!806278))

(assert (= (and b!806278 res!550567) b!806276))

(assert (= (and b!806276 res!550575) b!806275))

(assert (= (and b!806275 res!550572) b!806280))

(assert (= (and b!806280 res!550569) b!806274))

(assert (= (and b!806274 res!550574) b!806277))

(assert (= (and b!806277 res!550570) b!806282))

(assert (= (and b!806282 res!550573) b!806283))

(assert (= (and b!806283 res!550566) b!806279))

(assert (= (and b!806279 res!550571) b!806273))

(declare-fun m!748291 () Bool)

(assert (=> b!806276 m!748291))

(declare-fun m!748293 () Bool)

(assert (=> b!806279 m!748293))

(declare-fun m!748295 () Bool)

(assert (=> b!806279 m!748295))

(assert (=> b!806279 m!748295))

(declare-fun m!748297 () Bool)

(assert (=> b!806279 m!748297))

(assert (=> b!806279 m!748295))

(declare-fun m!748299 () Bool)

(assert (=> b!806279 m!748299))

(declare-fun m!748301 () Bool)

(assert (=> b!806277 m!748301))

(declare-fun m!748303 () Bool)

(assert (=> b!806274 m!748303))

(declare-fun m!748305 () Bool)

(assert (=> b!806282 m!748305))

(declare-fun m!748307 () Bool)

(assert (=> b!806282 m!748307))

(declare-fun m!748309 () Bool)

(assert (=> start!69178 m!748309))

(declare-fun m!748311 () Bool)

(assert (=> start!69178 m!748311))

(declare-fun m!748313 () Bool)

(assert (=> b!806275 m!748313))

(assert (=> b!806278 m!748295))

(assert (=> b!806278 m!748295))

(declare-fun m!748315 () Bool)

(assert (=> b!806278 m!748315))

(declare-fun m!748317 () Bool)

(assert (=> b!806280 m!748317))

(declare-fun m!748319 () Bool)

(assert (=> b!806283 m!748319))

(declare-fun m!748321 () Bool)

(assert (=> b!806283 m!748321))

(declare-fun m!748323 () Bool)

(assert (=> b!806283 m!748323))

(declare-fun m!748325 () Bool)

(assert (=> b!806283 m!748325))

(push 1)

