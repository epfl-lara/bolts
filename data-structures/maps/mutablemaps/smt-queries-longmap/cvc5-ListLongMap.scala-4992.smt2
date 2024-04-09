; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68482 () Bool)

(assert start!68482)

(declare-fun b!795660 () Bool)

(declare-fun res!540355 () Bool)

(declare-fun e!441595 () Bool)

(assert (=> b!795660 (=> (not res!540355) (not e!441595))))

(declare-datatypes ((array!43223 0))(
  ( (array!43224 (arr!20688 (Array (_ BitVec 32) (_ BitVec 64))) (size!21109 (_ BitVec 32))) )
))
(declare-fun a!3170 () array!43223)

(declare-datatypes ((List!14704 0))(
  ( (Nil!14701) (Cons!14700 (h!15829 (_ BitVec 64)) (t!21027 List!14704)) )
))
(declare-fun arrayNoDuplicates!0 (array!43223 (_ BitVec 32) List!14704) Bool)

(assert (=> b!795660 (= res!540355 (arrayNoDuplicates!0 a!3170 #b00000000000000000000000000000000 Nil!14701))))

(declare-fun b!795661 () Bool)

(declare-fun res!540351 () Bool)

(assert (=> b!795661 (=> (not res!540351) (not e!441595))))

(declare-fun mask!3266 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!43223 (_ BitVec 32)) Bool)

(assert (=> b!795661 (= res!540351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3170 mask!3266))))

(declare-fun b!795662 () Bool)

(declare-fun e!441593 () Bool)

(assert (=> b!795662 (= e!441593 e!441595)))

(declare-fun res!540353 () Bool)

(assert (=> b!795662 (=> (not res!540353) (not e!441595))))

(declare-datatypes ((SeekEntryResult!8286 0))(
  ( (MissingZero!8286 (index!35511 (_ BitVec 32))) (Found!8286 (index!35512 (_ BitVec 32))) (Intermediate!8286 (undefined!9098 Bool) (index!35513 (_ BitVec 32)) (x!66453 (_ BitVec 32))) (Undefined!8286) (MissingVacant!8286 (index!35514 (_ BitVec 32))) )
))
(declare-fun lt!354714 () SeekEntryResult!8286)

(declare-fun i!1163 () (_ BitVec 32))

(assert (=> b!795662 (= res!540353 (or (= lt!354714 (MissingZero!8286 i!1163)) (= lt!354714 (MissingVacant!8286 i!1163))))))

(declare-fun k!2044 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!43223 (_ BitVec 32)) SeekEntryResult!8286)

(assert (=> b!795662 (= lt!354714 (seekEntryOrOpen!0 k!2044 a!3170 mask!3266))))

(declare-fun b!795663 () Bool)

(declare-fun lt!354712 () SeekEntryResult!8286)

(declare-fun j!153 () (_ BitVec 32))

(declare-fun lt!354711 () SeekEntryResult!8286)

(declare-fun index!1236 () (_ BitVec 32))

(declare-fun vacantAfter!23 () (_ BitVec 32))

(declare-fun e!441592 () Bool)

(assert (=> b!795663 (= e!441592 (and (= lt!354712 lt!354711) (= lt!354711 (Found!8286 j!153)) (= (select (arr!20688 a!3170) index!1236) (select (arr!20688 a!3170) j!153)) (bvsge mask!3266 #b00000000000000000000000000000000) (bvslt index!1236 (bvadd #b00000000000000000000000000000001 mask!3266)) (bvslt vacantAfter!23 (bvadd #b00000000000000000000000000000001 mask!3266)) (not (= (select (store (arr!20688 a!3170) i!1163 k!2044) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun x!1077 () (_ BitVec 32))

(declare-fun vacantBefore!23 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!43223 (_ BitVec 32)) SeekEntryResult!8286)

(assert (=> b!795663 (= lt!354711 (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantBefore!23 (select (arr!20688 a!3170) j!153) a!3170 mask!3266))))

(assert (=> b!795663 (= lt!354712 (seekEntryOrOpen!0 (select (arr!20688 a!3170) j!153) a!3170 mask!3266))))

(declare-fun b!795664 () Bool)

(declare-fun res!540358 () Bool)

(assert (=> b!795664 (=> (not res!540358) (not e!441595))))

(assert (=> b!795664 (= res!540358 (and (bvsle x!1077 #b01111111111111111111111111111110) (bvsge x!1077 #b00000000000000000000000000000000) (bvsge index!1236 #b00000000000000000000000000000000) (bvslt index!1236 (size!21109 a!3170)) (= vacantBefore!23 i!1163) (= (select (arr!20688 a!3170) vacantBefore!23) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantAfter!23 #b00000000000000000000000000000000) (bvslt vacantAfter!23 (size!21109 a!3170)) (= (select (arr!20688 a!3170) vacantAfter!23) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= vacantAfter!23 vacantBefore!23))))))

(declare-fun b!795665 () Bool)

(declare-fun res!540357 () Bool)

(assert (=> b!795665 (=> (not res!540357) (not e!441593))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!795665 (= res!540357 (validKeyInArray!0 k!2044))))

(declare-fun b!795666 () Bool)

(assert (=> b!795666 (= e!441595 e!441592)))

(declare-fun res!540352 () Bool)

(assert (=> b!795666 (=> (not res!540352) (not e!441592))))

(declare-fun lt!354715 () array!43223)

(declare-fun lt!354713 () (_ BitVec 64))

(assert (=> b!795666 (= res!540352 (= (seekEntryOrOpen!0 lt!354713 lt!354715 mask!3266) (seekKeyOrZeroReturnVacant!0 x!1077 index!1236 vacantAfter!23 lt!354713 lt!354715 mask!3266)))))

(assert (=> b!795666 (= lt!354713 (select (store (arr!20688 a!3170) i!1163 k!2044) j!153))))

(assert (=> b!795666 (= lt!354715 (array!43224 (store (arr!20688 a!3170) i!1163 k!2044) (size!21109 a!3170)))))

(declare-fun res!540350 () Bool)

(assert (=> start!68482 (=> (not res!540350) (not e!441593))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68482 (= res!540350 (validMask!0 mask!3266))))

(assert (=> start!68482 e!441593))

(assert (=> start!68482 true))

(declare-fun array_inv!16462 (array!43223) Bool)

(assert (=> start!68482 (array_inv!16462 a!3170)))

(declare-fun b!795667 () Bool)

(declare-fun res!540354 () Bool)

(assert (=> b!795667 (=> (not res!540354) (not e!441593))))

(assert (=> b!795667 (= res!540354 (validKeyInArray!0 (select (arr!20688 a!3170) j!153)))))

(declare-fun b!795668 () Bool)

(declare-fun res!540356 () Bool)

(assert (=> b!795668 (=> (not res!540356) (not e!441593))))

(declare-fun arrayContainsKey!0 (array!43223 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!795668 (= res!540356 (not (arrayContainsKey!0 a!3170 k!2044 #b00000000000000000000000000000000)))))

(declare-fun b!795669 () Bool)

(declare-fun res!540349 () Bool)

(assert (=> b!795669 (=> (not res!540349) (not e!441593))))

(assert (=> b!795669 (= res!540349 (and (= (size!21109 a!3170) (bvadd #b00000000000000000000000000000001 mask!3266)) (bvsge i!1163 #b00000000000000000000000000000000) (bvslt i!1163 (size!21109 a!3170)) (bvsge j!153 #b00000000000000000000000000000000) (bvslt j!153 (size!21109 a!3170)) (not (= i!1163 j!153))))))

(assert (= (and start!68482 res!540350) b!795669))

(assert (= (and b!795669 res!540349) b!795667))

(assert (= (and b!795667 res!540354) b!795665))

(assert (= (and b!795665 res!540357) b!795668))

(assert (= (and b!795668 res!540356) b!795662))

(assert (= (and b!795662 res!540353) b!795661))

(assert (= (and b!795661 res!540351) b!795660))

(assert (= (and b!795660 res!540355) b!795664))

(assert (= (and b!795664 res!540358) b!795666))

(assert (= (and b!795666 res!540352) b!795663))

(declare-fun m!736459 () Bool)

(assert (=> start!68482 m!736459))

(declare-fun m!736461 () Bool)

(assert (=> start!68482 m!736461))

(declare-fun m!736463 () Bool)

(assert (=> b!795667 m!736463))

(assert (=> b!795667 m!736463))

(declare-fun m!736465 () Bool)

(assert (=> b!795667 m!736465))

(declare-fun m!736467 () Bool)

(assert (=> b!795661 m!736467))

(declare-fun m!736469 () Bool)

(assert (=> b!795664 m!736469))

(declare-fun m!736471 () Bool)

(assert (=> b!795664 m!736471))

(declare-fun m!736473 () Bool)

(assert (=> b!795666 m!736473))

(declare-fun m!736475 () Bool)

(assert (=> b!795666 m!736475))

(declare-fun m!736477 () Bool)

(assert (=> b!795666 m!736477))

(declare-fun m!736479 () Bool)

(assert (=> b!795666 m!736479))

(declare-fun m!736481 () Bool)

(assert (=> b!795660 m!736481))

(declare-fun m!736483 () Bool)

(assert (=> b!795662 m!736483))

(declare-fun m!736485 () Bool)

(assert (=> b!795665 m!736485))

(assert (=> b!795663 m!736463))

(declare-fun m!736487 () Bool)

(assert (=> b!795663 m!736487))

(declare-fun m!736489 () Bool)

(assert (=> b!795663 m!736489))

(assert (=> b!795663 m!736463))

(declare-fun m!736491 () Bool)

(assert (=> b!795663 m!736491))

(assert (=> b!795663 m!736463))

(declare-fun m!736493 () Bool)

(assert (=> b!795663 m!736493))

(assert (=> b!795663 m!736477))

(declare-fun m!736495 () Bool)

(assert (=> b!795668 m!736495))

(push 1)

