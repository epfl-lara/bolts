; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56286 () Bool)

(assert start!56286)

(declare-fun res!401990 () Bool)

(declare-fun e!357697 () Bool)

(assert (=> start!56286 (=> (not res!401990) (not e!357697))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56286 (= res!401990 (validMask!0 mask!3053))))

(assert (=> start!56286 e!357697))

(assert (=> start!56286 true))

(declare-datatypes ((array!37674 0))(
  ( (array!37675 (arr!18078 (Array (_ BitVec 32) (_ BitVec 64))) (size!18442 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37674)

(declare-fun array_inv!13852 (array!37674) Bool)

(assert (=> start!56286 (array_inv!13852 a!2986)))

(declare-fun b!623621 () Bool)

(declare-fun res!401988 () Bool)

(assert (=> b!623621 (=> (not res!401988) (not e!357697))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37674 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!623621 (= res!401988 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!623622 () Bool)

(declare-fun res!401994 () Bool)

(declare-fun e!357696 () Bool)

(assert (=> b!623622 (=> (not res!401994) (not e!357696))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!623622 (= res!401994 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18078 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18078 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!623623 () Bool)

(declare-fun res!401996 () Bool)

(assert (=> b!623623 (=> (not res!401996) (not e!357696))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6525 0))(
  ( (MissingZero!6525 (index!28383 (_ BitVec 32))) (Found!6525 (index!28384 (_ BitVec 32))) (Intermediate!6525 (undefined!7337 Bool) (index!28385 (_ BitVec 32)) (x!57177 (_ BitVec 32))) (Undefined!6525) (MissingVacant!6525 (index!28386 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37674 (_ BitVec 32)) SeekEntryResult!6525)

(assert (=> b!623623 (= res!401996 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18078 a!2986) j!136) a!2986 mask!3053) (Found!6525 j!136)))))

(declare-fun b!623624 () Bool)

(declare-fun res!401987 () Bool)

(assert (=> b!623624 (=> (not res!401987) (not e!357697))))

(assert (=> b!623624 (= res!401987 (and (= (size!18442 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18442 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18442 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!623625 () Bool)

(assert (=> b!623625 (= e!357697 e!357696)))

(declare-fun res!401995 () Bool)

(assert (=> b!623625 (=> (not res!401995) (not e!357696))))

(declare-fun lt!289320 () SeekEntryResult!6525)

(assert (=> b!623625 (= res!401995 (or (= lt!289320 (MissingZero!6525 i!1108)) (= lt!289320 (MissingVacant!6525 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37674 (_ BitVec 32)) SeekEntryResult!6525)

(assert (=> b!623625 (= lt!289320 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!623626 () Bool)

(declare-fun res!401993 () Bool)

(assert (=> b!623626 (=> (not res!401993) (not e!357697))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!623626 (= res!401993 (validKeyInArray!0 k!1786))))

(declare-fun b!623627 () Bool)

(declare-fun res!401992 () Bool)

(assert (=> b!623627 (=> (not res!401992) (not e!357696))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37674 (_ BitVec 32)) Bool)

(assert (=> b!623627 (= res!401992 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!623628 () Bool)

(declare-fun res!401991 () Bool)

(assert (=> b!623628 (=> (not res!401991) (not e!357697))))

(assert (=> b!623628 (= res!401991 (validKeyInArray!0 (select (arr!18078 a!2986) j!136)))))

(declare-fun b!623629 () Bool)

(assert (=> b!623629 (= e!357696 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18078 a!2986) index!984) (select (arr!18078 a!2986) j!136))) (not (= (select (arr!18078 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (= index!984 j!136)))))

(declare-fun b!623630 () Bool)

(declare-fun res!401989 () Bool)

(assert (=> b!623630 (=> (not res!401989) (not e!357696))))

(declare-datatypes ((List!12172 0))(
  ( (Nil!12169) (Cons!12168 (h!13213 (_ BitVec 64)) (t!18408 List!12172)) )
))
(declare-fun arrayNoDuplicates!0 (array!37674 (_ BitVec 32) List!12172) Bool)

(assert (=> b!623630 (= res!401989 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12169))))

(assert (= (and start!56286 res!401990) b!623624))

(assert (= (and b!623624 res!401987) b!623628))

(assert (= (and b!623628 res!401991) b!623626))

(assert (= (and b!623626 res!401993) b!623621))

(assert (= (and b!623621 res!401988) b!623625))

(assert (= (and b!623625 res!401995) b!623627))

(assert (= (and b!623627 res!401992) b!623630))

(assert (= (and b!623630 res!401989) b!623622))

(assert (= (and b!623622 res!401994) b!623623))

(assert (= (and b!623623 res!401996) b!623629))

(declare-fun m!599439 () Bool)

(assert (=> b!623630 m!599439))

(declare-fun m!599441 () Bool)

(assert (=> b!623629 m!599441))

(declare-fun m!599443 () Bool)

(assert (=> b!623629 m!599443))

(declare-fun m!599445 () Bool)

(assert (=> b!623625 m!599445))

(declare-fun m!599447 () Bool)

(assert (=> b!623627 m!599447))

(declare-fun m!599449 () Bool)

(assert (=> b!623622 m!599449))

(declare-fun m!599451 () Bool)

(assert (=> b!623622 m!599451))

(declare-fun m!599453 () Bool)

(assert (=> b!623622 m!599453))

(declare-fun m!599455 () Bool)

(assert (=> b!623626 m!599455))

(assert (=> b!623623 m!599443))

(assert (=> b!623623 m!599443))

(declare-fun m!599457 () Bool)

(assert (=> b!623623 m!599457))

(declare-fun m!599459 () Bool)

(assert (=> b!623621 m!599459))

(declare-fun m!599461 () Bool)

(assert (=> start!56286 m!599461))

(declare-fun m!599463 () Bool)

(assert (=> start!56286 m!599463))

(assert (=> b!623628 m!599443))

(assert (=> b!623628 m!599443))

(declare-fun m!599465 () Bool)

(assert (=> b!623628 m!599465))

(push 1)

