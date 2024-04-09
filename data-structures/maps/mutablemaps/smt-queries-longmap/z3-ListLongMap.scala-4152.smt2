; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56612 () Bool)

(assert start!56612)

(declare-fun b!626851 () Bool)

(declare-fun res!404734 () Bool)

(declare-fun e!359029 () Bool)

(assert (=> b!626851 (=> (not res!404734) (not e!359029))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!37865 0))(
  ( (array!37866 (arr!18169 (Array (_ BitVec 32) (_ BitVec 64))) (size!18533 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37865)

(assert (=> b!626851 (= res!404734 (and (= (size!18533 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18533 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18533 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!626852 () Bool)

(declare-fun e!359028 () Bool)

(assert (=> b!626852 (= e!359028 false)))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!290153 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!626852 (= lt!290153 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!626853 () Bool)

(declare-fun res!404733 () Bool)

(assert (=> b!626853 (=> (not res!404733) (not e!359029))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626853 (= res!404733 (validKeyInArray!0 (select (arr!18169 a!2986) j!136)))))

(declare-fun b!626854 () Bool)

(declare-fun res!404737 () Bool)

(assert (=> b!626854 (=> (not res!404737) (not e!359028))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!626854 (= res!404737 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18169 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18169 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!404736 () Bool)

(assert (=> start!56612 (=> (not res!404736) (not e!359029))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56612 (= res!404736 (validMask!0 mask!3053))))

(assert (=> start!56612 e!359029))

(assert (=> start!56612 true))

(declare-fun array_inv!13943 (array!37865) Bool)

(assert (=> start!56612 (array_inv!13943 a!2986)))

(declare-fun b!626855 () Bool)

(declare-fun res!404731 () Bool)

(assert (=> b!626855 (=> (not res!404731) (not e!359028))))

(declare-datatypes ((List!12263 0))(
  ( (Nil!12260) (Cons!12259 (h!13304 (_ BitVec 64)) (t!18499 List!12263)) )
))
(declare-fun arrayNoDuplicates!0 (array!37865 (_ BitVec 32) List!12263) Bool)

(assert (=> b!626855 (= res!404731 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12260))))

(declare-fun b!626856 () Bool)

(declare-fun res!404738 () Bool)

(assert (=> b!626856 (=> (not res!404738) (not e!359029))))

(declare-fun arrayContainsKey!0 (array!37865 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626856 (= res!404738 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!626857 () Bool)

(assert (=> b!626857 (= e!359029 e!359028)))

(declare-fun res!404735 () Bool)

(assert (=> b!626857 (=> (not res!404735) (not e!359028))))

(declare-datatypes ((SeekEntryResult!6616 0))(
  ( (MissingZero!6616 (index!28747 (_ BitVec 32))) (Found!6616 (index!28748 (_ BitVec 32))) (Intermediate!6616 (undefined!7428 Bool) (index!28749 (_ BitVec 32)) (x!57517 (_ BitVec 32))) (Undefined!6616) (MissingVacant!6616 (index!28750 (_ BitVec 32))) )
))
(declare-fun lt!290154 () SeekEntryResult!6616)

(assert (=> b!626857 (= res!404735 (or (= lt!290154 (MissingZero!6616 i!1108)) (= lt!290154 (MissingVacant!6616 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37865 (_ BitVec 32)) SeekEntryResult!6616)

(assert (=> b!626857 (= lt!290154 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!626858 () Bool)

(declare-fun res!404740 () Bool)

(assert (=> b!626858 (=> (not res!404740) (not e!359028))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37865 (_ BitVec 32)) Bool)

(assert (=> b!626858 (= res!404740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626859 () Bool)

(declare-fun res!404739 () Bool)

(assert (=> b!626859 (=> (not res!404739) (not e!359028))))

(assert (=> b!626859 (= res!404739 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18169 a!2986) index!984) (select (arr!18169 a!2986) j!136))) (not (= (select (arr!18169 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!626860 () Bool)

(declare-fun res!404741 () Bool)

(assert (=> b!626860 (=> (not res!404741) (not e!359029))))

(assert (=> b!626860 (= res!404741 (validKeyInArray!0 k0!1786))))

(declare-fun b!626861 () Bool)

(declare-fun res!404732 () Bool)

(assert (=> b!626861 (=> (not res!404732) (not e!359028))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37865 (_ BitVec 32)) SeekEntryResult!6616)

(assert (=> b!626861 (= res!404732 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18169 a!2986) j!136) a!2986 mask!3053) (Found!6616 j!136)))))

(assert (= (and start!56612 res!404736) b!626851))

(assert (= (and b!626851 res!404734) b!626853))

(assert (= (and b!626853 res!404733) b!626860))

(assert (= (and b!626860 res!404741) b!626856))

(assert (= (and b!626856 res!404738) b!626857))

(assert (= (and b!626857 res!404735) b!626858))

(assert (= (and b!626858 res!404740) b!626855))

(assert (= (and b!626855 res!404731) b!626854))

(assert (= (and b!626854 res!404737) b!626861))

(assert (= (and b!626861 res!404732) b!626859))

(assert (= (and b!626859 res!404739) b!626852))

(declare-fun m!602253 () Bool)

(assert (=> b!626861 m!602253))

(assert (=> b!626861 m!602253))

(declare-fun m!602255 () Bool)

(assert (=> b!626861 m!602255))

(assert (=> b!626853 m!602253))

(assert (=> b!626853 m!602253))

(declare-fun m!602257 () Bool)

(assert (=> b!626853 m!602257))

(declare-fun m!602259 () Bool)

(assert (=> b!626858 m!602259))

(declare-fun m!602261 () Bool)

(assert (=> b!626860 m!602261))

(declare-fun m!602263 () Bool)

(assert (=> b!626854 m!602263))

(declare-fun m!602265 () Bool)

(assert (=> b!626854 m!602265))

(declare-fun m!602267 () Bool)

(assert (=> b!626854 m!602267))

(declare-fun m!602269 () Bool)

(assert (=> start!56612 m!602269))

(declare-fun m!602271 () Bool)

(assert (=> start!56612 m!602271))

(declare-fun m!602273 () Bool)

(assert (=> b!626859 m!602273))

(assert (=> b!626859 m!602253))

(declare-fun m!602275 () Bool)

(assert (=> b!626856 m!602275))

(declare-fun m!602277 () Bool)

(assert (=> b!626857 m!602277))

(declare-fun m!602279 () Bool)

(assert (=> b!626852 m!602279))

(declare-fun m!602281 () Bool)

(assert (=> b!626855 m!602281))

(check-sat (not b!626858) (not b!626857) (not b!626860) (not start!56612) (not b!626861) (not b!626852) (not b!626855) (not b!626856) (not b!626853))
(check-sat)
