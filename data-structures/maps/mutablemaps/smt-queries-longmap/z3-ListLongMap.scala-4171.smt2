; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56834 () Bool)

(assert start!56834)

(declare-fun b!629191 () Bool)

(declare-fun res!406775 () Bool)

(declare-fun e!359856 () Bool)

(assert (=> b!629191 (=> (not res!406775) (not e!359856))))

(declare-datatypes ((array!37985 0))(
  ( (array!37986 (arr!18226 (Array (_ BitVec 32) (_ BitVec 64))) (size!18590 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37985)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37985 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!629191 (= res!406775 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!629192 () Bool)

(declare-fun res!406768 () Bool)

(assert (=> b!629192 (=> (not res!406768) (not e!359856))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!629192 (= res!406768 (validKeyInArray!0 (select (arr!18226 a!2986) j!136)))))

(declare-fun res!406767 () Bool)

(assert (=> start!56834 (=> (not res!406767) (not e!359856))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56834 (= res!406767 (validMask!0 mask!3053))))

(assert (=> start!56834 e!359856))

(assert (=> start!56834 true))

(declare-fun array_inv!14000 (array!37985) Bool)

(assert (=> start!56834 (array_inv!14000 a!2986)))

(declare-fun b!629193 () Bool)

(declare-fun e!359855 () Bool)

(assert (=> b!629193 (= e!359856 e!359855)))

(declare-fun res!406772 () Bool)

(assert (=> b!629193 (=> (not res!406772) (not e!359855))))

(declare-datatypes ((SeekEntryResult!6673 0))(
  ( (MissingZero!6673 (index!28975 (_ BitVec 32))) (Found!6673 (index!28976 (_ BitVec 32))) (Intermediate!6673 (undefined!7485 Bool) (index!28977 (_ BitVec 32)) (x!57738 (_ BitVec 32))) (Undefined!6673) (MissingVacant!6673 (index!28978 (_ BitVec 32))) )
))
(declare-fun lt!290686 () SeekEntryResult!6673)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!629193 (= res!406772 (or (= lt!290686 (MissingZero!6673 i!1108)) (= lt!290686 (MissingVacant!6673 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37985 (_ BitVec 32)) SeekEntryResult!6673)

(assert (=> b!629193 (= lt!290686 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!629194 () Bool)

(declare-fun res!406765 () Bool)

(assert (=> b!629194 (=> (not res!406765) (not e!359855))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37985 (_ BitVec 32)) SeekEntryResult!6673)

(assert (=> b!629194 (= res!406765 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18226 a!2986) j!136) a!2986 mask!3053) (Found!6673 j!136)))))

(declare-fun b!629195 () Bool)

(assert (=> b!629195 (= e!359855 (not true))))

(declare-fun lt!290687 () (_ BitVec 32))

(assert (=> b!629195 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290687 vacantSpotIndex!68 (select (arr!18226 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290687 vacantSpotIndex!68 (select (store (arr!18226 a!2986) i!1108 k0!1786) j!136) (array!37986 (store (arr!18226 a!2986) i!1108 k0!1786) (size!18590 a!2986)) mask!3053))))

(declare-datatypes ((Unit!21090 0))(
  ( (Unit!21091) )
))
(declare-fun lt!290688 () Unit!21090)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37985 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21090)

(assert (=> b!629195 (= lt!290688 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!290687 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!629195 (= lt!290687 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!629196 () Bool)

(declare-fun res!406774 () Bool)

(assert (=> b!629196 (=> (not res!406774) (not e!359856))))

(assert (=> b!629196 (= res!406774 (validKeyInArray!0 k0!1786))))

(declare-fun b!629197 () Bool)

(declare-fun res!406771 () Bool)

(assert (=> b!629197 (=> (not res!406771) (not e!359856))))

(assert (=> b!629197 (= res!406771 (and (= (size!18590 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18590 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18590 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!629198 () Bool)

(declare-fun res!406766 () Bool)

(assert (=> b!629198 (=> (not res!406766) (not e!359855))))

(declare-datatypes ((List!12320 0))(
  ( (Nil!12317) (Cons!12316 (h!13361 (_ BitVec 64)) (t!18556 List!12320)) )
))
(declare-fun arrayNoDuplicates!0 (array!37985 (_ BitVec 32) List!12320) Bool)

(assert (=> b!629198 (= res!406766 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12317))))

(declare-fun b!629199 () Bool)

(declare-fun res!406770 () Bool)

(assert (=> b!629199 (=> (not res!406770) (not e!359855))))

(assert (=> b!629199 (= res!406770 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18226 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18226 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!629200 () Bool)

(declare-fun res!406769 () Bool)

(assert (=> b!629200 (=> (not res!406769) (not e!359855))))

(assert (=> b!629200 (= res!406769 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18226 a!2986) index!984) (select (arr!18226 a!2986) j!136))) (not (= (select (arr!18226 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!629201 () Bool)

(declare-fun res!406773 () Bool)

(assert (=> b!629201 (=> (not res!406773) (not e!359855))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37985 (_ BitVec 32)) Bool)

(assert (=> b!629201 (= res!406773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!56834 res!406767) b!629197))

(assert (= (and b!629197 res!406771) b!629192))

(assert (= (and b!629192 res!406768) b!629196))

(assert (= (and b!629196 res!406774) b!629191))

(assert (= (and b!629191 res!406775) b!629193))

(assert (= (and b!629193 res!406772) b!629201))

(assert (= (and b!629201 res!406773) b!629198))

(assert (= (and b!629198 res!406766) b!629199))

(assert (= (and b!629199 res!406770) b!629194))

(assert (= (and b!629194 res!406765) b!629200))

(assert (= (and b!629200 res!406769) b!629195))

(declare-fun m!604253 () Bool)

(assert (=> start!56834 m!604253))

(declare-fun m!604255 () Bool)

(assert (=> start!56834 m!604255))

(declare-fun m!604257 () Bool)

(assert (=> b!629196 m!604257))

(declare-fun m!604259 () Bool)

(assert (=> b!629192 m!604259))

(assert (=> b!629192 m!604259))

(declare-fun m!604261 () Bool)

(assert (=> b!629192 m!604261))

(declare-fun m!604263 () Bool)

(assert (=> b!629201 m!604263))

(declare-fun m!604265 () Bool)

(assert (=> b!629200 m!604265))

(assert (=> b!629200 m!604259))

(declare-fun m!604267 () Bool)

(assert (=> b!629198 m!604267))

(assert (=> b!629194 m!604259))

(assert (=> b!629194 m!604259))

(declare-fun m!604269 () Bool)

(assert (=> b!629194 m!604269))

(declare-fun m!604271 () Bool)

(assert (=> b!629199 m!604271))

(declare-fun m!604273 () Bool)

(assert (=> b!629199 m!604273))

(declare-fun m!604275 () Bool)

(assert (=> b!629199 m!604275))

(declare-fun m!604277 () Bool)

(assert (=> b!629195 m!604277))

(assert (=> b!629195 m!604259))

(declare-fun m!604279 () Bool)

(assert (=> b!629195 m!604279))

(assert (=> b!629195 m!604273))

(declare-fun m!604281 () Bool)

(assert (=> b!629195 m!604281))

(declare-fun m!604283 () Bool)

(assert (=> b!629195 m!604283))

(assert (=> b!629195 m!604281))

(assert (=> b!629195 m!604259))

(declare-fun m!604285 () Bool)

(assert (=> b!629195 m!604285))

(declare-fun m!604287 () Bool)

(assert (=> b!629193 m!604287))

(declare-fun m!604289 () Bool)

(assert (=> b!629191 m!604289))

(check-sat (not b!629191) (not b!629193) (not b!629194) (not b!629198) (not b!629196) (not b!629201) (not b!629195) (not b!629192) (not start!56834))
(check-sat)
