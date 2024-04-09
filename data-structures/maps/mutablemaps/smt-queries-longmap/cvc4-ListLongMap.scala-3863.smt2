; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53210 () Bool)

(assert start!53210)

(declare-fun b!578011 () Bool)

(declare-fun res!365977 () Bool)

(declare-fun e!332448 () Bool)

(assert (=> b!578011 (=> (not res!365977) (not e!332448))))

(declare-datatypes ((array!36065 0))(
  ( (array!36066 (arr!17303 (Array (_ BitVec 32) (_ BitVec 64))) (size!17667 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36065)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36065 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578011 (= res!365977 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!365984 () Bool)

(assert (=> start!53210 (=> (not res!365984) (not e!332448))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53210 (= res!365984 (validMask!0 mask!3053))))

(assert (=> start!53210 e!332448))

(assert (=> start!53210 true))

(declare-fun array_inv!13077 (array!36065) Bool)

(assert (=> start!53210 (array_inv!13077 a!2986)))

(declare-fun b!578012 () Bool)

(declare-fun res!365979 () Bool)

(declare-fun e!332449 () Bool)

(assert (=> b!578012 (=> (not res!365979) (not e!332449))))

(declare-datatypes ((List!11397 0))(
  ( (Nil!11394) (Cons!11393 (h!12438 (_ BitVec 64)) (t!17633 List!11397)) )
))
(declare-fun arrayNoDuplicates!0 (array!36065 (_ BitVec 32) List!11397) Bool)

(assert (=> b!578012 (= res!365979 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11394))))

(declare-fun b!578013 () Bool)

(declare-fun res!365983 () Bool)

(assert (=> b!578013 (=> (not res!365983) (not e!332449))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36065 (_ BitVec 32)) Bool)

(assert (=> b!578013 (= res!365983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578014 () Bool)

(declare-fun res!365982 () Bool)

(assert (=> b!578014 (=> (not res!365982) (not e!332448))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578014 (= res!365982 (validKeyInArray!0 (select (arr!17303 a!2986) j!136)))))

(declare-fun b!578015 () Bool)

(declare-fun res!365981 () Bool)

(assert (=> b!578015 (=> (not res!365981) (not e!332448))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578015 (= res!365981 (and (= (size!17667 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17667 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17667 a!2986)) (not (= i!1108 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun b!578016 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!578016 (= e!332449 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17303 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17303 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3053 #b00000000000000000000000000000000)))))

(declare-fun b!578017 () Bool)

(declare-fun res!365980 () Bool)

(assert (=> b!578017 (=> (not res!365980) (not e!332448))))

(assert (=> b!578017 (= res!365980 (validKeyInArray!0 k!1786))))

(declare-fun b!578018 () Bool)

(assert (=> b!578018 (= e!332448 e!332449)))

(declare-fun res!365978 () Bool)

(assert (=> b!578018 (=> (not res!365978) (not e!332449))))

(declare-datatypes ((SeekEntryResult!5750 0))(
  ( (MissingZero!5750 (index!25227 (_ BitVec 32))) (Found!5750 (index!25228 (_ BitVec 32))) (Intermediate!5750 (undefined!6562 Bool) (index!25229 (_ BitVec 32)) (x!54158 (_ BitVec 32))) (Undefined!5750) (MissingVacant!5750 (index!25230 (_ BitVec 32))) )
))
(declare-fun lt!264158 () SeekEntryResult!5750)

(assert (=> b!578018 (= res!365978 (or (= lt!264158 (MissingZero!5750 i!1108)) (= lt!264158 (MissingVacant!5750 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36065 (_ BitVec 32)) SeekEntryResult!5750)

(assert (=> b!578018 (= lt!264158 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53210 res!365984) b!578015))

(assert (= (and b!578015 res!365981) b!578014))

(assert (= (and b!578014 res!365982) b!578017))

(assert (= (and b!578017 res!365980) b!578011))

(assert (= (and b!578011 res!365977) b!578018))

(assert (= (and b!578018 res!365978) b!578013))

(assert (= (and b!578013 res!365983) b!578012))

(assert (= (and b!578012 res!365979) b!578016))

(declare-fun m!556777 () Bool)

(assert (=> b!578013 m!556777))

(declare-fun m!556779 () Bool)

(assert (=> b!578012 m!556779))

(declare-fun m!556781 () Bool)

(assert (=> b!578017 m!556781))

(declare-fun m!556783 () Bool)

(assert (=> start!53210 m!556783))

(declare-fun m!556785 () Bool)

(assert (=> start!53210 m!556785))

(declare-fun m!556787 () Bool)

(assert (=> b!578011 m!556787))

(declare-fun m!556789 () Bool)

(assert (=> b!578014 m!556789))

(assert (=> b!578014 m!556789))

(declare-fun m!556791 () Bool)

(assert (=> b!578014 m!556791))

(declare-fun m!556793 () Bool)

(assert (=> b!578018 m!556793))

(declare-fun m!556795 () Bool)

(assert (=> b!578016 m!556795))

(declare-fun m!556797 () Bool)

(assert (=> b!578016 m!556797))

(declare-fun m!556799 () Bool)

(assert (=> b!578016 m!556799))

(push 1)

(assert (not b!578012))

(assert (not b!578014))

