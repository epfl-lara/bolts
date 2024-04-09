; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53894 () Bool)

(assert start!53894)

(declare-fun b!587485 () Bool)

(declare-fun res!375277 () Bool)

(declare-fun e!335590 () Bool)

(assert (=> b!587485 (=> (not res!375277) (not e!335590))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36692 0))(
  ( (array!36693 (arr!17615 (Array (_ BitVec 32) (_ BitVec 64))) (size!17979 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36692)

(assert (=> b!587485 (= res!375277 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17615 a!2986) index!984) (select (arr!17615 a!2986) j!136))) (not (= (select (arr!17615 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!587486 () Bool)

(assert (=> b!587486 (= e!335590 (not true))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!266428 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!6062 0))(
  ( (MissingZero!6062 (index!26478 (_ BitVec 32))) (Found!6062 (index!26479 (_ BitVec 32))) (Intermediate!6062 (undefined!6874 Bool) (index!26480 (_ BitVec 32)) (x!55311 (_ BitVec 32))) (Undefined!6062) (MissingVacant!6062 (index!26481 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36692 (_ BitVec 32)) SeekEntryResult!6062)

(assert (=> b!587486 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266428 vacantSpotIndex!68 (select (arr!17615 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266428 vacantSpotIndex!68 (select (store (arr!17615 a!2986) i!1108 k!1786) j!136) (array!36693 (store (arr!17615 a!2986) i!1108 k!1786) (size!17979 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18248 0))(
  ( (Unit!18249) )
))
(declare-fun lt!266429 () Unit!18248)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36692 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18248)

(assert (=> b!587486 (= lt!266429 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266428 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!587486 (= lt!266428 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!587487 () Bool)

(declare-fun res!375273 () Bool)

(declare-fun e!335589 () Bool)

(assert (=> b!587487 (=> (not res!375273) (not e!335589))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!587487 (= res!375273 (validKeyInArray!0 (select (arr!17615 a!2986) j!136)))))

(declare-fun b!587488 () Bool)

(assert (=> b!587488 (= e!335589 e!335590)))

(declare-fun res!375274 () Bool)

(assert (=> b!587488 (=> (not res!375274) (not e!335590))))

(declare-fun lt!266427 () SeekEntryResult!6062)

(assert (=> b!587488 (= res!375274 (or (= lt!266427 (MissingZero!6062 i!1108)) (= lt!266427 (MissingVacant!6062 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36692 (_ BitVec 32)) SeekEntryResult!6062)

(assert (=> b!587488 (= lt!266427 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!587489 () Bool)

(declare-fun res!375276 () Bool)

(assert (=> b!587489 (=> (not res!375276) (not e!335590))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36692 (_ BitVec 32)) Bool)

(assert (=> b!587489 (= res!375276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!587490 () Bool)

(declare-fun res!375271 () Bool)

(assert (=> b!587490 (=> (not res!375271) (not e!335590))))

(assert (=> b!587490 (= res!375271 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17615 a!2986) j!136) a!2986 mask!3053) (Found!6062 j!136)))))

(declare-fun b!587491 () Bool)

(declare-fun res!375279 () Bool)

(assert (=> b!587491 (=> (not res!375279) (not e!335589))))

(declare-fun arrayContainsKey!0 (array!36692 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!587491 (= res!375279 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!375278 () Bool)

(assert (=> start!53894 (=> (not res!375278) (not e!335589))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53894 (= res!375278 (validMask!0 mask!3053))))

(assert (=> start!53894 e!335589))

(assert (=> start!53894 true))

(declare-fun array_inv!13389 (array!36692) Bool)

(assert (=> start!53894 (array_inv!13389 a!2986)))

(declare-fun b!587492 () Bool)

(declare-fun res!375275 () Bool)

(assert (=> b!587492 (=> (not res!375275) (not e!335589))))

(assert (=> b!587492 (= res!375275 (validKeyInArray!0 k!1786))))

(declare-fun b!587493 () Bool)

(declare-fun res!375280 () Bool)

(assert (=> b!587493 (=> (not res!375280) (not e!335590))))

(assert (=> b!587493 (= res!375280 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17615 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17615 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!587494 () Bool)

(declare-fun res!375272 () Bool)

(assert (=> b!587494 (=> (not res!375272) (not e!335589))))

(assert (=> b!587494 (= res!375272 (and (= (size!17979 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17979 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17979 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!587495 () Bool)

(declare-fun res!375281 () Bool)

(assert (=> b!587495 (=> (not res!375281) (not e!335590))))

(declare-datatypes ((List!11709 0))(
  ( (Nil!11706) (Cons!11705 (h!12750 (_ BitVec 64)) (t!17945 List!11709)) )
))
(declare-fun arrayNoDuplicates!0 (array!36692 (_ BitVec 32) List!11709) Bool)

(assert (=> b!587495 (= res!375281 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11706))))

(assert (= (and start!53894 res!375278) b!587494))

(assert (= (and b!587494 res!375272) b!587487))

(assert (= (and b!587487 res!375273) b!587492))

(assert (= (and b!587492 res!375275) b!587491))

(assert (= (and b!587491 res!375279) b!587488))

(assert (= (and b!587488 res!375274) b!587489))

(assert (= (and b!587489 res!375276) b!587495))

(assert (= (and b!587495 res!375281) b!587493))

(assert (= (and b!587493 res!375280) b!587490))

(assert (= (and b!587490 res!375271) b!587485))

(assert (= (and b!587485 res!375277) b!587486))

(declare-fun m!565973 () Bool)

(assert (=> b!587495 m!565973))

(declare-fun m!565975 () Bool)

(assert (=> b!587493 m!565975))

(declare-fun m!565977 () Bool)

(assert (=> b!587493 m!565977))

(declare-fun m!565979 () Bool)

(assert (=> b!587493 m!565979))

(declare-fun m!565981 () Bool)

(assert (=> start!53894 m!565981))

(declare-fun m!565983 () Bool)

(assert (=> start!53894 m!565983))

(declare-fun m!565985 () Bool)

(assert (=> b!587485 m!565985))

(declare-fun m!565987 () Bool)

(assert (=> b!587485 m!565987))

(assert (=> b!587487 m!565987))

(assert (=> b!587487 m!565987))

(declare-fun m!565989 () Bool)

(assert (=> b!587487 m!565989))

(declare-fun m!565991 () Bool)

(assert (=> b!587488 m!565991))

(declare-fun m!565993 () Bool)

(assert (=> b!587491 m!565993))

(declare-fun m!565995 () Bool)

(assert (=> b!587492 m!565995))

(declare-fun m!565997 () Bool)

(assert (=> b!587489 m!565997))

(assert (=> b!587490 m!565987))

(assert (=> b!587490 m!565987))

(declare-fun m!565999 () Bool)

(assert (=> b!587490 m!565999))

(declare-fun m!566001 () Bool)

(assert (=> b!587486 m!566001))

(declare-fun m!566003 () Bool)

(assert (=> b!587486 m!566003))

(declare-fun m!566005 () Bool)

(assert (=> b!587486 m!566005))

(assert (=> b!587486 m!565987))

(assert (=> b!587486 m!565977))

(assert (=> b!587486 m!566003))

(declare-fun m!566007 () Bool)

(assert (=> b!587486 m!566007))

(assert (=> b!587486 m!565987))

(declare-fun m!566009 () Bool)

(assert (=> b!587486 m!566009))

(push 1)

