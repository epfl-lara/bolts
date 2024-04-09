; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53792 () Bool)

(assert start!53792)

(declare-fun b!586540 () Bool)

(declare-fun res!374515 () Bool)

(declare-fun e!335238 () Bool)

(assert (=> b!586540 (=> (not res!374515) (not e!335238))))

(declare-datatypes ((array!36647 0))(
  ( (array!36648 (arr!17594 (Array (_ BitVec 32) (_ BitVec 64))) (size!17958 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36647)

(declare-datatypes ((List!11688 0))(
  ( (Nil!11685) (Cons!11684 (h!12729 (_ BitVec 64)) (t!17924 List!11688)) )
))
(declare-fun arrayNoDuplicates!0 (array!36647 (_ BitVec 32) List!11688) Bool)

(assert (=> b!586540 (= res!374515 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11685))))

(declare-fun b!586541 () Bool)

(assert (=> b!586541 (= e!335238 (not true))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!266137 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6041 0))(
  ( (MissingZero!6041 (index!26391 (_ BitVec 32))) (Found!6041 (index!26392 (_ BitVec 32))) (Intermediate!6041 (undefined!6853 Bool) (index!26393 (_ BitVec 32)) (x!55225 (_ BitVec 32))) (Undefined!6041) (MissingVacant!6041 (index!26394 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36647 (_ BitVec 32)) SeekEntryResult!6041)

(assert (=> b!586541 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266137 vacantSpotIndex!68 (select (arr!17594 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266137 vacantSpotIndex!68 (select (store (arr!17594 a!2986) i!1108 k!1786) j!136) (array!36648 (store (arr!17594 a!2986) i!1108 k!1786) (size!17958 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18206 0))(
  ( (Unit!18207) )
))
(declare-fun lt!266138 () Unit!18206)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36647 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18206)

(assert (=> b!586541 (= lt!266138 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266137 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586541 (= lt!266137 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586542 () Bool)

(declare-fun res!374510 () Bool)

(declare-fun e!335237 () Bool)

(assert (=> b!586542 (=> (not res!374510) (not e!335237))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586542 (= res!374510 (validKeyInArray!0 k!1786))))

(declare-fun b!586543 () Bool)

(declare-fun res!374508 () Bool)

(assert (=> b!586543 (=> (not res!374508) (not e!335238))))

(assert (=> b!586543 (= res!374508 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17594 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17594 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586544 () Bool)

(declare-fun res!374514 () Bool)

(assert (=> b!586544 (=> (not res!374514) (not e!335237))))

(declare-fun arrayContainsKey!0 (array!36647 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586544 (= res!374514 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586545 () Bool)

(declare-fun res!374513 () Bool)

(assert (=> b!586545 (=> (not res!374513) (not e!335237))))

(assert (=> b!586545 (= res!374513 (and (= (size!17958 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17958 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17958 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586547 () Bool)

(assert (=> b!586547 (= e!335237 e!335238)))

(declare-fun res!374506 () Bool)

(assert (=> b!586547 (=> (not res!374506) (not e!335238))))

(declare-fun lt!266136 () SeekEntryResult!6041)

(assert (=> b!586547 (= res!374506 (or (= lt!266136 (MissingZero!6041 i!1108)) (= lt!266136 (MissingVacant!6041 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36647 (_ BitVec 32)) SeekEntryResult!6041)

(assert (=> b!586547 (= lt!266136 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!586548 () Bool)

(declare-fun res!374516 () Bool)

(assert (=> b!586548 (=> (not res!374516) (not e!335238))))

(assert (=> b!586548 (= res!374516 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17594 a!2986) index!984) (select (arr!17594 a!2986) j!136))) (not (= (select (arr!17594 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun res!374509 () Bool)

(assert (=> start!53792 (=> (not res!374509) (not e!335237))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53792 (= res!374509 (validMask!0 mask!3053))))

(assert (=> start!53792 e!335237))

(assert (=> start!53792 true))

(declare-fun array_inv!13368 (array!36647) Bool)

(assert (=> start!53792 (array_inv!13368 a!2986)))

(declare-fun b!586546 () Bool)

(declare-fun res!374507 () Bool)

(assert (=> b!586546 (=> (not res!374507) (not e!335238))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36647 (_ BitVec 32)) Bool)

(assert (=> b!586546 (= res!374507 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!586549 () Bool)

(declare-fun res!374512 () Bool)

(assert (=> b!586549 (=> (not res!374512) (not e!335237))))

(assert (=> b!586549 (= res!374512 (validKeyInArray!0 (select (arr!17594 a!2986) j!136)))))

(declare-fun b!586550 () Bool)

(declare-fun res!374511 () Bool)

(assert (=> b!586550 (=> (not res!374511) (not e!335238))))

(assert (=> b!586550 (= res!374511 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17594 a!2986) j!136) a!2986 mask!3053) (Found!6041 j!136)))))

(assert (= (and start!53792 res!374509) b!586545))

(assert (= (and b!586545 res!374513) b!586549))

(assert (= (and b!586549 res!374512) b!586542))

(assert (= (and b!586542 res!374510) b!586544))

(assert (= (and b!586544 res!374514) b!586547))

(assert (= (and b!586547 res!374506) b!586546))

(assert (= (and b!586546 res!374507) b!586540))

(assert (= (and b!586540 res!374515) b!586543))

(assert (= (and b!586543 res!374508) b!586550))

(assert (= (and b!586550 res!374511) b!586548))

(assert (= (and b!586548 res!374516) b!586541))

(declare-fun m!564995 () Bool)

(assert (=> b!586550 m!564995))

(assert (=> b!586550 m!564995))

(declare-fun m!564997 () Bool)

(assert (=> b!586550 m!564997))

(declare-fun m!564999 () Bool)

(assert (=> b!586542 m!564999))

(declare-fun m!565001 () Bool)

(assert (=> b!586544 m!565001))

(declare-fun m!565003 () Bool)

(assert (=> b!586548 m!565003))

(assert (=> b!586548 m!564995))

(declare-fun m!565005 () Bool)

(assert (=> b!586547 m!565005))

(declare-fun m!565007 () Bool)

(assert (=> b!586543 m!565007))

(declare-fun m!565009 () Bool)

(assert (=> b!586543 m!565009))

(declare-fun m!565011 () Bool)

(assert (=> b!586543 m!565011))

(declare-fun m!565013 () Bool)

(assert (=> b!586541 m!565013))

(declare-fun m!565015 () Bool)

(assert (=> b!586541 m!565015))

(declare-fun m!565017 () Bool)

(assert (=> b!586541 m!565017))

(assert (=> b!586541 m!564995))

(assert (=> b!586541 m!565009))

(assert (=> b!586541 m!564995))

(declare-fun m!565019 () Bool)

(assert (=> b!586541 m!565019))

(assert (=> b!586541 m!565015))

(declare-fun m!565021 () Bool)

(assert (=> b!586541 m!565021))

(declare-fun m!565023 () Bool)

(assert (=> b!586546 m!565023))

(assert (=> b!586549 m!564995))

(assert (=> b!586549 m!564995))

(declare-fun m!565025 () Bool)

(assert (=> b!586549 m!565025))

(declare-fun m!565027 () Bool)

(assert (=> start!53792 m!565027))

(declare-fun m!565029 () Bool)

(assert (=> start!53792 m!565029))

(declare-fun m!565031 () Bool)

(assert (=> b!586540 m!565031))

(push 1)

