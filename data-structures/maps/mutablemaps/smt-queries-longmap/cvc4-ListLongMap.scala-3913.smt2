; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53510 () Bool)

(assert start!53510)

(declare-fun res!369969 () Bool)

(declare-fun e!333798 () Bool)

(assert (=> start!53510 (=> (not res!369969) (not e!333798))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53510 (= res!369969 (validMask!0 mask!3053))))

(assert (=> start!53510 e!333798))

(assert (=> start!53510 true))

(declare-datatypes ((array!36365 0))(
  ( (array!36366 (arr!17453 (Array (_ BitVec 32) (_ BitVec 64))) (size!17817 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36365)

(declare-fun array_inv!13227 (array!36365) Bool)

(assert (=> start!53510 (array_inv!13227 a!2986)))

(declare-fun b!581997 () Bool)

(declare-fun e!333799 () Bool)

(assert (=> b!581997 (= e!333798 e!333799)))

(declare-fun res!369968 () Bool)

(assert (=> b!581997 (=> (not res!369968) (not e!333799))))

(declare-datatypes ((SeekEntryResult!5900 0))(
  ( (MissingZero!5900 (index!25827 (_ BitVec 32))) (Found!5900 (index!25828 (_ BitVec 32))) (Intermediate!5900 (undefined!6712 Bool) (index!25829 (_ BitVec 32)) (x!54708 (_ BitVec 32))) (Undefined!5900) (MissingVacant!5900 (index!25830 (_ BitVec 32))) )
))
(declare-fun lt!265021 () SeekEntryResult!5900)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!581997 (= res!369968 (or (= lt!265021 (MissingZero!5900 i!1108)) (= lt!265021 (MissingVacant!5900 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36365 (_ BitVec 32)) SeekEntryResult!5900)

(assert (=> b!581997 (= lt!265021 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!581998 () Bool)

(declare-fun res!369965 () Bool)

(assert (=> b!581998 (=> (not res!369965) (not e!333799))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!581998 (= res!369965 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17453 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17453 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581999 () Bool)

(declare-fun res!369971 () Bool)

(assert (=> b!581999 (=> (not res!369971) (not e!333799))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36365 (_ BitVec 32)) Bool)

(assert (=> b!581999 (= res!369971 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582000 () Bool)

(declare-fun res!369964 () Bool)

(assert (=> b!582000 (=> (not res!369964) (not e!333798))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582000 (= res!369964 (validKeyInArray!0 k!1786))))

(declare-fun b!582001 () Bool)

(declare-fun res!369967 () Bool)

(assert (=> b!582001 (=> (not res!369967) (not e!333798))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!582001 (= res!369967 (and (= (size!17817 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17817 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17817 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582002 () Bool)

(declare-fun res!369963 () Bool)

(assert (=> b!582002 (=> (not res!369963) (not e!333798))))

(assert (=> b!582002 (= res!369963 (validKeyInArray!0 (select (arr!17453 a!2986) j!136)))))

(declare-fun b!582003 () Bool)

(assert (=> b!582003 (= e!333799 false)))

(declare-fun lt!265022 () SeekEntryResult!5900)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36365 (_ BitVec 32)) SeekEntryResult!5900)

(assert (=> b!582003 (= lt!265022 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17453 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582004 () Bool)

(declare-fun res!369970 () Bool)

(assert (=> b!582004 (=> (not res!369970) (not e!333799))))

(declare-datatypes ((List!11547 0))(
  ( (Nil!11544) (Cons!11543 (h!12588 (_ BitVec 64)) (t!17783 List!11547)) )
))
(declare-fun arrayNoDuplicates!0 (array!36365 (_ BitVec 32) List!11547) Bool)

(assert (=> b!582004 (= res!369970 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11544))))

(declare-fun b!582005 () Bool)

(declare-fun res!369966 () Bool)

(assert (=> b!582005 (=> (not res!369966) (not e!333798))))

(declare-fun arrayContainsKey!0 (array!36365 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582005 (= res!369966 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53510 res!369969) b!582001))

(assert (= (and b!582001 res!369967) b!582002))

(assert (= (and b!582002 res!369963) b!582000))

(assert (= (and b!582000 res!369964) b!582005))

(assert (= (and b!582005 res!369966) b!581997))

(assert (= (and b!581997 res!369968) b!581999))

(assert (= (and b!581999 res!369971) b!582004))

(assert (= (and b!582004 res!369970) b!581998))

(assert (= (and b!581998 res!369965) b!582003))

(declare-fun m!560561 () Bool)

(assert (=> b!582004 m!560561))

(declare-fun m!560563 () Bool)

(assert (=> b!581998 m!560563))

(declare-fun m!560565 () Bool)

(assert (=> b!581998 m!560565))

(declare-fun m!560567 () Bool)

(assert (=> b!581998 m!560567))

(declare-fun m!560569 () Bool)

(assert (=> b!581997 m!560569))

(declare-fun m!560571 () Bool)

(assert (=> b!582000 m!560571))

(declare-fun m!560573 () Bool)

(assert (=> b!582002 m!560573))

(assert (=> b!582002 m!560573))

(declare-fun m!560575 () Bool)

(assert (=> b!582002 m!560575))

(assert (=> b!582003 m!560573))

(assert (=> b!582003 m!560573))

(declare-fun m!560577 () Bool)

(assert (=> b!582003 m!560577))

(declare-fun m!560579 () Bool)

(assert (=> start!53510 m!560579))

(declare-fun m!560581 () Bool)

(assert (=> start!53510 m!560581))

(declare-fun m!560583 () Bool)

(assert (=> b!582005 m!560583))

(declare-fun m!560585 () Bool)

(assert (=> b!581999 m!560585))

(push 1)

(assert (not b!581999))

(assert (not b!581997))

(assert (not b!582000))

(assert (not b!582003))

(assert (not b!582004))

