; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53468 () Bool)

(assert start!53468)

(declare-fun b!581412 () Bool)

(declare-fun res!369380 () Bool)

(declare-fun e!333610 () Bool)

(assert (=> b!581412 (=> (not res!369380) (not e!333610))))

(declare-datatypes ((array!36323 0))(
  ( (array!36324 (arr!17432 (Array (_ BitVec 32) (_ BitVec 64))) (size!17796 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36323)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36323 (_ BitVec 32)) Bool)

(assert (=> b!581412 (= res!369380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581413 () Bool)

(declare-fun res!369381 () Bool)

(assert (=> b!581413 (=> (not res!369381) (not e!333610))))

(declare-datatypes ((List!11526 0))(
  ( (Nil!11523) (Cons!11522 (h!12567 (_ BitVec 64)) (t!17762 List!11526)) )
))
(declare-fun arrayNoDuplicates!0 (array!36323 (_ BitVec 32) List!11526) Bool)

(assert (=> b!581413 (= res!369381 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11523))))

(declare-fun b!581414 () Bool)

(declare-fun res!369383 () Bool)

(declare-fun e!333608 () Bool)

(assert (=> b!581414 (=> (not res!369383) (not e!333608))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581414 (= res!369383 (validKeyInArray!0 k!1786))))

(declare-fun b!581415 () Bool)

(declare-fun res!369384 () Bool)

(assert (=> b!581415 (=> (not res!369384) (not e!333608))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!581415 (= res!369384 (and (= (size!17796 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17796 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17796 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581416 () Bool)

(declare-fun res!369385 () Bool)

(assert (=> b!581416 (=> (not res!369385) (not e!333608))))

(declare-fun arrayContainsKey!0 (array!36323 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581416 (= res!369385 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581417 () Bool)

(assert (=> b!581417 (= e!333610 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5879 0))(
  ( (MissingZero!5879 (index!25743 (_ BitVec 32))) (Found!5879 (index!25744 (_ BitVec 32))) (Intermediate!5879 (undefined!6691 Bool) (index!25745 (_ BitVec 32)) (x!54631 (_ BitVec 32))) (Undefined!5879) (MissingVacant!5879 (index!25746 (_ BitVec 32))) )
))
(declare-fun lt!264905 () SeekEntryResult!5879)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36323 (_ BitVec 32)) SeekEntryResult!5879)

(assert (=> b!581417 (= lt!264905 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17432 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!369379 () Bool)

(assert (=> start!53468 (=> (not res!369379) (not e!333608))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53468 (= res!369379 (validMask!0 mask!3053))))

(assert (=> start!53468 e!333608))

(assert (=> start!53468 true))

(declare-fun array_inv!13206 (array!36323) Bool)

(assert (=> start!53468 (array_inv!13206 a!2986)))

(declare-fun b!581418 () Bool)

(declare-fun res!369378 () Bool)

(assert (=> b!581418 (=> (not res!369378) (not e!333608))))

(assert (=> b!581418 (= res!369378 (validKeyInArray!0 (select (arr!17432 a!2986) j!136)))))

(declare-fun b!581419 () Bool)

(declare-fun res!369382 () Bool)

(assert (=> b!581419 (=> (not res!369382) (not e!333610))))

(assert (=> b!581419 (= res!369382 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17432 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17432 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581420 () Bool)

(assert (=> b!581420 (= e!333608 e!333610)))

(declare-fun res!369386 () Bool)

(assert (=> b!581420 (=> (not res!369386) (not e!333610))))

(declare-fun lt!264904 () SeekEntryResult!5879)

(assert (=> b!581420 (= res!369386 (or (= lt!264904 (MissingZero!5879 i!1108)) (= lt!264904 (MissingVacant!5879 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36323 (_ BitVec 32)) SeekEntryResult!5879)

(assert (=> b!581420 (= lt!264904 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53468 res!369379) b!581415))

(assert (= (and b!581415 res!369384) b!581418))

(assert (= (and b!581418 res!369378) b!581414))

(assert (= (and b!581414 res!369383) b!581416))

(assert (= (and b!581416 res!369385) b!581420))

(assert (= (and b!581420 res!369386) b!581412))

(assert (= (and b!581412 res!369380) b!581413))

(assert (= (and b!581413 res!369381) b!581419))

(assert (= (and b!581419 res!369382) b!581417))

(declare-fun m!559997 () Bool)

(assert (=> start!53468 m!559997))

(declare-fun m!559999 () Bool)

(assert (=> start!53468 m!559999))

(declare-fun m!560001 () Bool)

(assert (=> b!581419 m!560001))

(declare-fun m!560003 () Bool)

(assert (=> b!581419 m!560003))

(declare-fun m!560005 () Bool)

(assert (=> b!581419 m!560005))

(declare-fun m!560007 () Bool)

(assert (=> b!581414 m!560007))

(declare-fun m!560009 () Bool)

(assert (=> b!581420 m!560009))

(declare-fun m!560011 () Bool)

(assert (=> b!581418 m!560011))

(assert (=> b!581418 m!560011))

(declare-fun m!560013 () Bool)

(assert (=> b!581418 m!560013))

(declare-fun m!560015 () Bool)

(assert (=> b!581416 m!560015))

(declare-fun m!560017 () Bool)

(assert (=> b!581413 m!560017))

(declare-fun m!560019 () Bool)

(assert (=> b!581412 m!560019))

(assert (=> b!581417 m!560011))

(assert (=> b!581417 m!560011))

(declare-fun m!560021 () Bool)

(assert (=> b!581417 m!560021))

(push 1)

(assert (not b!581418))

(assert (not start!53468))

(assert (not b!581414))

(assert (not b!581413))

(assert (not b!581420))

(assert (not b!581417))

(assert (not b!581416))

(assert (not 