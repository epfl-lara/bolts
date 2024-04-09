; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53290 () Bool)

(assert start!53290)

(declare-fun b!578991 () Bool)

(declare-fun e!332809 () Bool)

(declare-fun e!332807 () Bool)

(assert (=> b!578991 (= e!332809 e!332807)))

(declare-fun res!366962 () Bool)

(assert (=> b!578991 (=> (not res!366962) (not e!332807))))

(declare-datatypes ((SeekEntryResult!5790 0))(
  ( (MissingZero!5790 (index!25387 (_ BitVec 32))) (Found!5790 (index!25388 (_ BitVec 32))) (Intermediate!5790 (undefined!6602 Bool) (index!25389 (_ BitVec 32)) (x!54310 (_ BitVec 32))) (Undefined!5790) (MissingVacant!5790 (index!25390 (_ BitVec 32))) )
))
(declare-fun lt!264389 () SeekEntryResult!5790)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578991 (= res!366962 (or (= lt!264389 (MissingZero!5790 i!1108)) (= lt!264389 (MissingVacant!5790 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36145 0))(
  ( (array!36146 (arr!17343 (Array (_ BitVec 32) (_ BitVec 64))) (size!17707 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36145)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36145 (_ BitVec 32)) SeekEntryResult!5790)

(assert (=> b!578991 (= lt!264389 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!578992 () Bool)

(declare-fun res!366957 () Bool)

(assert (=> b!578992 (=> (not res!366957) (not e!332809))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578992 (= res!366957 (validKeyInArray!0 k!1786))))

(declare-fun b!578993 () Bool)

(assert (=> b!578993 (= e!332807 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!264388 () SeekEntryResult!5790)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36145 (_ BitVec 32)) SeekEntryResult!5790)

(assert (=> b!578993 (= lt!264388 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17343 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!578994 () Bool)

(declare-fun res!366958 () Bool)

(assert (=> b!578994 (=> (not res!366958) (not e!332807))))

(declare-datatypes ((List!11437 0))(
  ( (Nil!11434) (Cons!11433 (h!12478 (_ BitVec 64)) (t!17673 List!11437)) )
))
(declare-fun arrayNoDuplicates!0 (array!36145 (_ BitVec 32) List!11437) Bool)

(assert (=> b!578994 (= res!366958 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11434))))

(declare-fun b!578995 () Bool)

(declare-fun res!366963 () Bool)

(assert (=> b!578995 (=> (not res!366963) (not e!332807))))

(assert (=> b!578995 (= res!366963 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17343 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17343 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!578996 () Bool)

(declare-fun res!366961 () Bool)

(assert (=> b!578996 (=> (not res!366961) (not e!332809))))

(declare-fun arrayContainsKey!0 (array!36145 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578996 (= res!366961 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578997 () Bool)

(declare-fun res!366965 () Bool)

(assert (=> b!578997 (=> (not res!366965) (not e!332809))))

(assert (=> b!578997 (= res!366965 (and (= (size!17707 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17707 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17707 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!366964 () Bool)

(assert (=> start!53290 (=> (not res!366964) (not e!332809))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53290 (= res!366964 (validMask!0 mask!3053))))

(assert (=> start!53290 e!332809))

(assert (=> start!53290 true))

(declare-fun array_inv!13117 (array!36145) Bool)

(assert (=> start!53290 (array_inv!13117 a!2986)))

(declare-fun b!578998 () Bool)

(declare-fun res!366960 () Bool)

(assert (=> b!578998 (=> (not res!366960) (not e!332807))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36145 (_ BitVec 32)) Bool)

(assert (=> b!578998 (= res!366960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578999 () Bool)

(declare-fun res!366959 () Bool)

(assert (=> b!578999 (=> (not res!366959) (not e!332809))))

(assert (=> b!578999 (= res!366959 (validKeyInArray!0 (select (arr!17343 a!2986) j!136)))))

(assert (= (and start!53290 res!366964) b!578997))

(assert (= (and b!578997 res!366965) b!578999))

(assert (= (and b!578999 res!366959) b!578992))

(assert (= (and b!578992 res!366957) b!578996))

(assert (= (and b!578996 res!366961) b!578991))

(assert (= (and b!578991 res!366962) b!578998))

(assert (= (and b!578998 res!366960) b!578994))

(assert (= (and b!578994 res!366958) b!578995))

(assert (= (and b!578995 res!366963) b!578993))

(declare-fun m!557671 () Bool)

(assert (=> b!578999 m!557671))

(assert (=> b!578999 m!557671))

(declare-fun m!557673 () Bool)

(assert (=> b!578999 m!557673))

(declare-fun m!557675 () Bool)

(assert (=> b!578996 m!557675))

(declare-fun m!557677 () Bool)

(assert (=> b!578995 m!557677))

(declare-fun m!557679 () Bool)

(assert (=> b!578995 m!557679))

(declare-fun m!557681 () Bool)

(assert (=> b!578995 m!557681))

(assert (=> b!578993 m!557671))

(assert (=> b!578993 m!557671))

(declare-fun m!557683 () Bool)

(assert (=> b!578993 m!557683))

(declare-fun m!557685 () Bool)

(assert (=> start!53290 m!557685))

(declare-fun m!557687 () Bool)

(assert (=> start!53290 m!557687))

(declare-fun m!557689 () Bool)

(assert (=> b!578998 m!557689))

(declare-fun m!557691 () Bool)

(assert (=> b!578994 m!557691))

(declare-fun m!557693 () Bool)

(assert (=> b!578992 m!557693))

(declare-fun m!557695 () Bool)

(assert (=> b!578991 m!557695))

(push 1)

(assert (not b!578999))

