; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68926 () Bool)

(assert start!68926)

(declare-fun b!803546 () Bool)

(declare-fun res!548238 () Bool)

(declare-fun e!445268 () Bool)

(assert (=> b!803546 (=> (not res!548238) (not e!445268))))

(declare-datatypes ((array!43667 0))(
  ( (array!43668 (arr!20910 (Array (_ BitVec 32) (_ BitVec 64))) (size!21331 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43667)

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!43667 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!803546 (= res!548238 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!803547 () Bool)

(declare-fun e!445270 () Bool)

(assert (=> b!803547 (= e!445270 (not true))))

(declare-fun lt!359751 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun lt!359750 () array!43667)

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun lt!359746 () (_ BitVec 64))

(declare-fun j!153 () (_ BitVec 32))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8508 0))(
  ( (MissingZero!8508 (index!36399 (_ BitVec 32))) (Found!8508 (index!36400 (_ BitVec 32))) (Intermediate!8508 (undefined!9320 Bool) (index!36401 (_ BitVec 32)) (x!67267 (_ BitVec 32))) (Undefined!8508) (MissingVacant!8508 (index!36402 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43667 (_ BitVec 32)) SeekEntryResult!8508)

(assert (=> b!803547 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359751 vacantAfter!23 lt!359746 lt!359750 mask!3266) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1077) lt!359751 vacantBefore!23 (select (arr!20910 a!3170) j!153) a!3170 mask!3266))))

(declare-fun i!1163 () (_ BitVec 32))

(declare-datatypes ((Unit!27558 0))(
  ( (Unit!27559) )
))
(declare-fun lt!359748 () Unit!27558)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!43667 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27558)

(assert (=> b!803547 (= lt!359748 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3170 i!1163 k!2044 j!153 lt!359751 (bvadd #b00000000000000000000000000000001 x!1077) vacantBefore!23 vacantAfter!23 mask!3266))))

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!803547 (= lt!359751 (nextIndex!0 index!1236 x!1077 mask!3266))))

(declare-fun b!803548 () Bool)

(declare-fun e!445269 () Bool)

(assert (=> b!803548 (= e!445268 e!445269)))

(declare-fun res!548244 () Bool)

(assert (=> b!803548 (=> (not res!548244) (not e!445269))))

(declare-fun lt!359752 () SeekEntryResult!8508)

(assert (=> b!803548 (= res!548244 (or (= lt!359752 (MissingZero!8508 i!1163)) (= lt!359752 (MissingVacant!8508 i!1163))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43667 (_ BitVec 32)) SeekEntryResult!8508)

(assert (=> b!803548 (= lt!359752 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!803549 () Bool)

(declare-fun res!548237 () Bool)

(assert (=> b!803549 (=> (not res!548237) (not e!445269))))

(declare-datatypes ((List!14926 0))(
  ( (Nil!14923) (Cons!14922 (h!16051 (_ BitVec 64)) (t!21249 List!14926)) )
))
(declare-fun arrayNoDuplicates!0 (array!43667 (_ BitVec 32) List!14926) Bool)

(assert (=> b!803549 (= res!548237 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14923))))

(declare-fun res!548236 () Bool)

(assert (=> start!68926 (=> (not res!548236) (not e!445268))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68926 (= res!548236 (validMask!0 mask!3266))))

(assert (=> start!68926 e!445268))

(assert (=> start!68926 true))

(declare-fun array_inv!16684 (array!43667) Bool)

(assert (=> start!68926 (array_inv!16684 a!3170)))

(declare-fun b!803550 () Bool)

(declare-fun res!548243 () Bool)

(assert (=> b!803550 (=> (not res!548243) (not e!445269))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43667 (_ BitVec 32)) Bool)

(assert (=> b!803550 (= res!548243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!803551 () Bool)

(declare-fun res!548245 () Bool)

(assert (=> b!803551 (=> (not res!548245) (not e!445268))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!803551 (= res!548245 (validKeyInArray!0 (select (arr!20910 a!3170) j!153)))))

(declare-fun b!803552 () Bool)

(declare-fun e!445266 () Bool)

(assert (=> b!803552 (= e!445269 e!445266)))

(declare-fun res!548240 () Bool)

(assert (=> b!803552 (=> (not res!548240) (not e!445266))))

(assert (=> b!803552 (= res!548240 (= (seekEntryOrOpen!0 lt!359746 lt!359750 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!359746 lt!359750 mask!3266)))))

(assert (=> b!803552 (= lt!359746 (select (store (arr!20910 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!803552 (= lt!359750 (array!43668 (store (arr!20910 a!3170) i!1163 k!2044) (size!21331 a!3170)))))

(declare-fun b!803553 () Bool)

(assert (=> b!803553 (= e!445266 e!445270)))

(declare-fun res!548242 () Bool)

(assert (=> b!803553 (=> (not res!548242) (not e!445270))))

(declare-fun lt!359747 () SeekEntryResult!8508)

(declare-fun lt!359749 () SeekEntryResult!8508)

(assert (=> b!803553 (= res!548242 (and (= lt!359749 lt!359747) (= lt!359747 (Found!8508 j!153)) (not (= (select (arr!20910 a!3170) index!1236) (select (arr!20910 a!3170) j!153)))))))

(assert (=> b!803553 (= lt!359747 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20910 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!803553 (= lt!359749 (seekEntryOrOpen!0 (select (arr!20910 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!803554 () Bool)

(declare-fun res!548241 () Bool)

(assert (=> b!803554 (=> (not res!548241) (not e!445268))))

(assert (=> b!803554 (= res!548241 (validKeyInArray!0 k!2044))))

(declare-fun b!803555 () Bool)

(declare-fun res!548235 () Bool)

(assert (=> b!803555 (=> (not res!548235) (not e!445268))))

(assert (=> b!803555 (= res!548235 (and (= (size!21331 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21331 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21331 a!3170)) (not (= i!1163 j!153))))))

(declare-fun b!803556 () Bool)

(declare-fun res!548239 () Bool)

(assert (=> b!803556 (=> (not res!548239) (not e!445269))))

(assert (=> b!803556 (= res!548239 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21331 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20910 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21331 a!3170)) (= (select (arr!20910 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(assert (= (and start!68926 res!548236) b!803555))

(assert (= (and b!803555 res!548235) b!803551))

(assert (= (and b!803551 res!548245) b!803554))

(assert (= (and b!803554 res!548241) b!803546))

(assert (= (and b!803546 res!548238) b!803548))

(assert (= (and b!803548 res!548244) b!803550))

(assert (= (and b!803550 res!548243) b!803549))

(assert (= (and b!803549 res!548237) b!803556))

(assert (= (and b!803556 res!548239) b!803552))

(assert (= (and b!803552 res!548240) b!803553))

(assert (= (and b!803553 res!548242) b!803547))

(declare-fun m!745441 () Bool)

(assert (=> b!803547 m!745441))

(declare-fun m!745443 () Bool)

(assert (=> b!803547 m!745443))

(assert (=> b!803547 m!745441))

(declare-fun m!745445 () Bool)

(assert (=> b!803547 m!745445))

(declare-fun m!745447 () Bool)

(assert (=> b!803547 m!745447))

(declare-fun m!745449 () Bool)

(assert (=> b!803547 m!745449))

(declare-fun m!745451 () Bool)

(assert (=> b!803548 m!745451))

(declare-fun m!745453 () Bool)

(assert (=> start!68926 m!745453))

(declare-fun m!745455 () Bool)

(assert (=> start!68926 m!745455))

(declare-fun m!745457 () Bool)

(assert (=> b!803549 m!745457))

(declare-fun m!745459 () Bool)

(assert (=> b!803550 m!745459))

(declare-fun m!745461 () Bool)

(assert (=> b!803556 m!745461))

(declare-fun m!745463 () Bool)

(assert (=> b!803556 m!745463))

(declare-fun m!745465 () Bool)

(assert (=> b!803554 m!745465))

(declare-fun m!745467 () Bool)

(assert (=> b!803546 m!745467))

(assert (=> b!803551 m!745441))

(assert (=> b!803551 m!745441))

(declare-fun m!745469 () Bool)

(assert (=> b!803551 m!745469))

(declare-fun m!745471 () Bool)

(assert (=> b!803552 m!745471))

(declare-fun m!745473 () Bool)

(assert (=> b!803552 m!745473))

(declare-fun m!745475 () Bool)

(assert (=> b!803552 m!745475))

(declare-fun m!745477 () Bool)

(assert (=> b!803552 m!745477))

(declare-fun m!745479 () Bool)

(assert (=> b!803553 m!745479))

(assert (=> b!803553 m!745441))

(assert (=> b!803553 m!745441))

(declare-fun m!745481 () Bool)

(assert (=> b!803553 m!745481))

(assert (=> b!803553 m!745441))

(declare-fun m!745483 () Bool)

(assert (=> b!803553 m!745483))

(push 1)

