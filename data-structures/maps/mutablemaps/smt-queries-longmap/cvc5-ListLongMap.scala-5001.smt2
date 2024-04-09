; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68536 () Bool)

(assert start!68536)

(declare-fun b!796546 () Bool)

(declare-fun res!541240 () Bool)

(declare-fun e!441992 () Bool)

(assert (=> b!796546 (=> (not res!541240) (not e!441992))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-datatypes ((array!43277 0))(
  ( (array!43278 (arr!20715 (Array (_ BitVec 32) (_ BitVec 64))) (size!21136 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43277)

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun i!1163 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun index!1236 () (_ BitVec 32))

(assert (=> b!796546 (= res!541240 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21136 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20715 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21136 a!3170)) (= (select (arr!20715 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!796547 () Bool)

(declare-fun e!441993 () Bool)

(declare-fun e!441994 () Bool)

(assert (=> b!796547 (= e!441993 e!441994)))

(declare-fun res!541246 () Bool)

(assert (=> b!796547 (=> (not res!541246) (not e!441994))))

(declare-datatypes ((SeekEntryResult!8313 0))(
  ( (MissingZero!8313 (index!35619 (_ BitVec 32))) (Found!8313 (index!35620 (_ BitVec 32))) (Intermediate!8313 (undefined!9125 Bool) (index!35621 (_ BitVec 32)) (x!66552 (_ BitVec 32))) (Undefined!8313) (MissingVacant!8313 (index!35622 (_ BitVec 32))) )
))
(declare-fun lt!355252 () SeekEntryResult!8313)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!355249 () SeekEntryResult!8313)

(assert (=> b!796547 (= res!541246 (and (= lt!355252 lt!355249) (= lt!355249 (Found!8313 j!153)) (= (select (arr!20715 a!3170) index!1236) (select (arr!20715 a!3170) j!153))))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43277 (_ BitVec 32)) SeekEntryResult!8313)

(assert (=> b!796547 (= lt!355249 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20715 a!3170) j!153) a!3170 mask!3266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43277 (_ BitVec 32)) SeekEntryResult!8313)

(assert (=> b!796547 (= lt!355252 (seekEntryOrOpen!0 (select (arr!20715 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!796548 () Bool)

(declare-fun res!541242 () Bool)

(assert (=> b!796548 (=> (not res!541242) (not e!441992))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43277 (_ BitVec 32)) Bool)

(assert (=> b!796548 (= res!541242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!796549 () Bool)

(declare-fun res!541236 () Bool)

(declare-fun e!441996 () Bool)

(assert (=> b!796549 (=> (not res!541236) (not e!441996))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43277 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!796549 (= res!541236 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!796550 () Bool)

(declare-fun e!441995 () Bool)

(assert (=> b!796550 (= e!441994 (not e!441995))))

(declare-fun res!541235 () Bool)

(assert (=> b!796550 (=> res!541235 e!441995)))

(assert (=> b!796550 (= res!541235 (or (bvslt mask!3266 #b00000000000000000000000000000000) (bvsge index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (not (= (select (store (arr!20715 a!3170) i!1163 k!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!355246 () SeekEntryResult!8313)

(assert (=> b!796550 (= lt!355246 (Found!8313 index!1236))))

(declare-fun b!796551 () Bool)

(declare-fun lt!355250 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!796551 (= e!441995 (validKeyInArray!0 lt!355250))))

(declare-fun b!796552 () Bool)

(assert (=> b!796552 (= e!441992 e!441993)))

(declare-fun res!541237 () Bool)

(assert (=> b!796552 (=> (not res!541237) (not e!441993))))

(declare-fun lt!355247 () SeekEntryResult!8313)

(assert (=> b!796552 (= res!541237 (= lt!355247 lt!355246))))

(declare-fun lt!355251 () array!43277)

(assert (=> b!796552 (= lt!355246 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!355250 lt!355251 mask!3266))))

(assert (=> b!796552 (= lt!355247 (seekEntryOrOpen!0 lt!355250 lt!355251 mask!3266))))

(assert (=> b!796552 (= lt!355250 (select (store (arr!20715 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!796552 (= lt!355251 (array!43278 (store (arr!20715 a!3170) i!1163 k!2044) (size!21136 a!3170)))))

(declare-fun b!796554 () Bool)

(declare-fun res!541239 () Bool)

(assert (=> b!796554 (=> (not res!541239) (not e!441996))))

(assert (=> b!796554 (= res!541239 (and (= (size!21136 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21136 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21136 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!796555 () Bool)

(declare-fun res!541244 () Bool)

(assert (=> b!796555 (=> (not res!541244) (not e!441996))))

(assert (=> b!796555 (= res!541244 (validKeyInArray!0 (select (arr!20715 a!3170) j!153)))))

(declare-fun b!796556 () Bool)

(assert (=> b!796556 (= e!441996 e!441992)))

(declare-fun res!541241 () Bool)

(assert (=> b!796556 (=> (not res!541241) (not e!441992))))

(declare-fun lt!355248 () SeekEntryResult!8313)

(assert (=> b!796556 (= res!541241 (or (= lt!355248 (MissingZero!8313 i!1163)) (= lt!355248 (MissingVacant!8313 i!1163))))))

(assert (=> b!796556 (= lt!355248 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!796557 () Bool)

(declare-fun res!541245 () Bool)

(assert (=> b!796557 (=> (not res!541245) (not e!441992))))

(declare-datatypes ((List!14731 0))(
  ( (Nil!14728) (Cons!14727 (h!15856 (_ BitVec 64)) (t!21054 List!14731)) )
))
(declare-fun arrayNoDuplicates!0 (array!43277 (_ BitVec 32) List!14731) Bool)

(assert (=> b!796557 (= res!541245 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14728))))

(declare-fun res!541243 () Bool)

(assert (=> start!68536 (=> (not res!541243) (not e!441996))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68536 (= res!541243 (validMask!0 mask!3266))))

(assert (=> start!68536 e!441996))

(assert (=> start!68536 true))

(declare-fun array_inv!16489 (array!43277) Bool)

(assert (=> start!68536 (array_inv!16489 a!3170)))

(declare-fun b!796553 () Bool)

(declare-fun res!541238 () Bool)

(assert (=> b!796553 (=> (not res!541238) (not e!441996))))

(assert (=> b!796553 (= res!541238 (validKeyInArray!0 k!2044))))

(assert (= (and start!68536 res!541243) b!796554))

(assert (= (and b!796554 res!541239) b!796555))

(assert (= (and b!796555 res!541244) b!796553))

(assert (= (and b!796553 res!541238) b!796549))

(assert (= (and b!796549 res!541236) b!796556))

(assert (= (and b!796556 res!541241) b!796548))

(assert (= (and b!796548 res!541242) b!796557))

(assert (= (and b!796557 res!541245) b!796546))

(assert (= (and b!796546 res!541240) b!796552))

(assert (= (and b!796552 res!541237) b!796547))

(assert (= (and b!796547 res!541246) b!796550))

(assert (= (and b!796550 (not res!541235)) b!796551))

(declare-fun m!737455 () Bool)

(assert (=> b!796555 m!737455))

(assert (=> b!796555 m!737455))

(declare-fun m!737457 () Bool)

(assert (=> b!796555 m!737457))

(declare-fun m!737459 () Bool)

(assert (=> b!796551 m!737459))

(declare-fun m!737461 () Bool)

(assert (=> b!796557 m!737461))

(declare-fun m!737463 () Bool)

(assert (=> b!796547 m!737463))

(assert (=> b!796547 m!737455))

(assert (=> b!796547 m!737455))

(declare-fun m!737465 () Bool)

(assert (=> b!796547 m!737465))

(assert (=> b!796547 m!737455))

(declare-fun m!737467 () Bool)

(assert (=> b!796547 m!737467))

(declare-fun m!737469 () Bool)

(assert (=> start!68536 m!737469))

(declare-fun m!737471 () Bool)

(assert (=> start!68536 m!737471))

(declare-fun m!737473 () Bool)

(assert (=> b!796549 m!737473))

(declare-fun m!737475 () Bool)

(assert (=> b!796550 m!737475))

(declare-fun m!737477 () Bool)

(assert (=> b!796550 m!737477))

(declare-fun m!737479 () Bool)

(assert (=> b!796556 m!737479))

(declare-fun m!737481 () Bool)

(assert (=> b!796548 m!737481))

(declare-fun m!737483 () Bool)

(assert (=> b!796546 m!737483))

(declare-fun m!737485 () Bool)

(assert (=> b!796546 m!737485))

(declare-fun m!737487 () Bool)

(assert (=> b!796552 m!737487))

(declare-fun m!737489 () Bool)

(assert (=> b!796552 m!737489))

(assert (=> b!796552 m!737475))

(declare-fun m!737491 () Bool)

(assert (=> b!796552 m!737491))

(declare-fun m!737493 () Bool)

(assert (=> b!796553 m!737493))

(push 1)

