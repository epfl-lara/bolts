; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53394 () Bool)

(assert start!53394)

(declare-fun b!580395 () Bool)

(declare-fun res!368366 () Bool)

(declare-fun e!333277 () Bool)

(assert (=> b!580395 (=> (not res!368366) (not e!333277))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36249 0))(
  ( (array!36250 (arr!17395 (Array (_ BitVec 32) (_ BitVec 64))) (size!17759 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36249)

(assert (=> b!580395 (= res!368366 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17395 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17395 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580396 () Bool)

(declare-fun res!368361 () Bool)

(declare-fun e!333276 () Bool)

(assert (=> b!580396 (=> (not res!368361) (not e!333276))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580396 (= res!368361 (validKeyInArray!0 k0!1786))))

(declare-fun b!580397 () Bool)

(assert (=> b!580397 (= e!333276 e!333277)))

(declare-fun res!368367 () Bool)

(assert (=> b!580397 (=> (not res!368367) (not e!333277))))

(declare-datatypes ((SeekEntryResult!5842 0))(
  ( (MissingZero!5842 (index!25595 (_ BitVec 32))) (Found!5842 (index!25596 (_ BitVec 32))) (Intermediate!5842 (undefined!6654 Bool) (index!25597 (_ BitVec 32)) (x!54498 (_ BitVec 32))) (Undefined!5842) (MissingVacant!5842 (index!25598 (_ BitVec 32))) )
))
(declare-fun lt!264700 () SeekEntryResult!5842)

(assert (=> b!580397 (= res!368367 (or (= lt!264700 (MissingZero!5842 i!1108)) (= lt!264700 (MissingVacant!5842 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36249 (_ BitVec 32)) SeekEntryResult!5842)

(assert (=> b!580397 (= lt!264700 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!580398 () Bool)

(declare-fun res!368369 () Bool)

(assert (=> b!580398 (=> (not res!368369) (not e!333277))))

(declare-datatypes ((List!11489 0))(
  ( (Nil!11486) (Cons!11485 (h!12530 (_ BitVec 64)) (t!17725 List!11489)) )
))
(declare-fun arrayNoDuplicates!0 (array!36249 (_ BitVec 32) List!11489) Bool)

(assert (=> b!580398 (= res!368369 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11486))))

(declare-fun b!580399 () Bool)

(declare-fun res!368362 () Bool)

(assert (=> b!580399 (=> (not res!368362) (not e!333277))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36249 (_ BitVec 32)) Bool)

(assert (=> b!580399 (= res!368362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580400 () Bool)

(declare-fun res!368368 () Bool)

(assert (=> b!580400 (=> (not res!368368) (not e!333276))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!580400 (= res!368368 (validKeyInArray!0 (select (arr!17395 a!2986) j!136)))))

(declare-fun res!368365 () Bool)

(assert (=> start!53394 (=> (not res!368365) (not e!333276))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53394 (= res!368365 (validMask!0 mask!3053))))

(assert (=> start!53394 e!333276))

(assert (=> start!53394 true))

(declare-fun array_inv!13169 (array!36249) Bool)

(assert (=> start!53394 (array_inv!13169 a!2986)))

(declare-fun b!580401 () Bool)

(assert (=> b!580401 (= e!333277 false)))

(declare-fun lt!264701 () SeekEntryResult!5842)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36249 (_ BitVec 32)) SeekEntryResult!5842)

(assert (=> b!580401 (= lt!264701 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17395 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580402 () Bool)

(declare-fun res!368364 () Bool)

(assert (=> b!580402 (=> (not res!368364) (not e!333276))))

(assert (=> b!580402 (= res!368364 (and (= (size!17759 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17759 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17759 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580403 () Bool)

(declare-fun res!368363 () Bool)

(assert (=> b!580403 (=> (not res!368363) (not e!333276))))

(declare-fun arrayContainsKey!0 (array!36249 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580403 (= res!368363 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53394 res!368365) b!580402))

(assert (= (and b!580402 res!368364) b!580400))

(assert (= (and b!580400 res!368368) b!580396))

(assert (= (and b!580396 res!368361) b!580403))

(assert (= (and b!580403 res!368363) b!580397))

(assert (= (and b!580397 res!368367) b!580399))

(assert (= (and b!580399 res!368362) b!580398))

(assert (= (and b!580398 res!368369) b!580395))

(assert (= (and b!580395 res!368366) b!580401))

(declare-fun m!559023 () Bool)

(assert (=> b!580399 m!559023))

(declare-fun m!559025 () Bool)

(assert (=> b!580403 m!559025))

(declare-fun m!559027 () Bool)

(assert (=> b!580400 m!559027))

(assert (=> b!580400 m!559027))

(declare-fun m!559029 () Bool)

(assert (=> b!580400 m!559029))

(declare-fun m!559031 () Bool)

(assert (=> b!580395 m!559031))

(declare-fun m!559033 () Bool)

(assert (=> b!580395 m!559033))

(declare-fun m!559035 () Bool)

(assert (=> b!580395 m!559035))

(declare-fun m!559037 () Bool)

(assert (=> b!580396 m!559037))

(declare-fun m!559039 () Bool)

(assert (=> b!580398 m!559039))

(declare-fun m!559041 () Bool)

(assert (=> b!580397 m!559041))

(declare-fun m!559043 () Bool)

(assert (=> start!53394 m!559043))

(declare-fun m!559045 () Bool)

(assert (=> start!53394 m!559045))

(assert (=> b!580401 m!559027))

(assert (=> b!580401 m!559027))

(declare-fun m!559047 () Bool)

(assert (=> b!580401 m!559047))

(check-sat (not b!580400) (not b!580396) (not b!580397) (not start!53394) (not b!580401) (not b!580403) (not b!580398) (not b!580399))
(check-sat)
