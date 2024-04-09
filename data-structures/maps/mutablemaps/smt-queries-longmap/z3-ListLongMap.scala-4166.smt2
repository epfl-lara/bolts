; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56750 () Bool)

(assert start!56750)

(declare-fun b!628444 () Bool)

(declare-fun res!406182 () Bool)

(declare-fun e!359541 () Bool)

(assert (=> b!628444 (=> (not res!406182) (not e!359541))))

(declare-datatypes ((array!37952 0))(
  ( (array!37953 (arr!18211 (Array (_ BitVec 32) (_ BitVec 64))) (size!18575 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37952)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37952 (_ BitVec 32)) Bool)

(assert (=> b!628444 (= res!406182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!406187 () Bool)

(declare-fun e!359542 () Bool)

(assert (=> start!56750 (=> (not res!406187) (not e!359542))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56750 (= res!406187 (validMask!0 mask!3053))))

(assert (=> start!56750 e!359542))

(assert (=> start!56750 true))

(declare-fun array_inv!13985 (array!37952) Bool)

(assert (=> start!56750 (array_inv!13985 a!2986)))

(declare-fun b!628445 () Bool)

(declare-fun res!406185 () Bool)

(assert (=> b!628445 (=> (not res!406185) (not e!359541))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!628445 (= res!406185 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18211 a!2986) index!984) (select (arr!18211 a!2986) j!136))) (not (= (select (arr!18211 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!628446 () Bool)

(assert (=> b!628446 (= e!359541 false)))

(declare-fun lt!290486 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!628446 (= lt!290486 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!628447 () Bool)

(declare-fun res!406190 () Bool)

(assert (=> b!628447 (=> (not res!406190) (not e!359541))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!628447 (= res!406190 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18211 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18211 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!628448 () Bool)

(declare-fun res!406181 () Bool)

(assert (=> b!628448 (=> (not res!406181) (not e!359542))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!628448 (= res!406181 (validKeyInArray!0 k0!1786))))

(declare-fun b!628449 () Bool)

(declare-fun res!406180 () Bool)

(assert (=> b!628449 (=> (not res!406180) (not e!359541))))

(declare-datatypes ((SeekEntryResult!6658 0))(
  ( (MissingZero!6658 (index!28915 (_ BitVec 32))) (Found!6658 (index!28916 (_ BitVec 32))) (Intermediate!6658 (undefined!7470 Bool) (index!28917 (_ BitVec 32)) (x!57677 (_ BitVec 32))) (Undefined!6658) (MissingVacant!6658 (index!28918 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37952 (_ BitVec 32)) SeekEntryResult!6658)

(assert (=> b!628449 (= res!406180 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18211 a!2986) j!136) a!2986 mask!3053) (Found!6658 j!136)))))

(declare-fun b!628450 () Bool)

(declare-fun res!406189 () Bool)

(assert (=> b!628450 (=> (not res!406189) (not e!359542))))

(assert (=> b!628450 (= res!406189 (validKeyInArray!0 (select (arr!18211 a!2986) j!136)))))

(declare-fun b!628451 () Bool)

(assert (=> b!628451 (= e!359542 e!359541)))

(declare-fun res!406188 () Bool)

(assert (=> b!628451 (=> (not res!406188) (not e!359541))))

(declare-fun lt!290487 () SeekEntryResult!6658)

(assert (=> b!628451 (= res!406188 (or (= lt!290487 (MissingZero!6658 i!1108)) (= lt!290487 (MissingVacant!6658 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37952 (_ BitVec 32)) SeekEntryResult!6658)

(assert (=> b!628451 (= lt!290487 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!628452 () Bool)

(declare-fun res!406183 () Bool)

(assert (=> b!628452 (=> (not res!406183) (not e!359542))))

(assert (=> b!628452 (= res!406183 (and (= (size!18575 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18575 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18575 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!628453 () Bool)

(declare-fun res!406184 () Bool)

(assert (=> b!628453 (=> (not res!406184) (not e!359542))))

(declare-fun arrayContainsKey!0 (array!37952 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!628453 (= res!406184 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!628454 () Bool)

(declare-fun res!406186 () Bool)

(assert (=> b!628454 (=> (not res!406186) (not e!359541))))

(declare-datatypes ((List!12305 0))(
  ( (Nil!12302) (Cons!12301 (h!13346 (_ BitVec 64)) (t!18541 List!12305)) )
))
(declare-fun arrayNoDuplicates!0 (array!37952 (_ BitVec 32) List!12305) Bool)

(assert (=> b!628454 (= res!406186 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12302))))

(assert (= (and start!56750 res!406187) b!628452))

(assert (= (and b!628452 res!406183) b!628450))

(assert (= (and b!628450 res!406189) b!628448))

(assert (= (and b!628448 res!406181) b!628453))

(assert (= (and b!628453 res!406184) b!628451))

(assert (= (and b!628451 res!406188) b!628444))

(assert (= (and b!628444 res!406182) b!628454))

(assert (= (and b!628454 res!406186) b!628447))

(assert (= (and b!628447 res!406190) b!628449))

(assert (= (and b!628449 res!406180) b!628445))

(assert (= (and b!628445 res!406185) b!628446))

(declare-fun m!603633 () Bool)

(assert (=> b!628446 m!603633))

(declare-fun m!603635 () Bool)

(assert (=> b!628444 m!603635))

(declare-fun m!603637 () Bool)

(assert (=> b!628447 m!603637))

(declare-fun m!603639 () Bool)

(assert (=> b!628447 m!603639))

(declare-fun m!603641 () Bool)

(assert (=> b!628447 m!603641))

(declare-fun m!603643 () Bool)

(assert (=> b!628453 m!603643))

(declare-fun m!603645 () Bool)

(assert (=> b!628445 m!603645))

(declare-fun m!603647 () Bool)

(assert (=> b!628445 m!603647))

(declare-fun m!603649 () Bool)

(assert (=> b!628448 m!603649))

(assert (=> b!628450 m!603647))

(assert (=> b!628450 m!603647))

(declare-fun m!603651 () Bool)

(assert (=> b!628450 m!603651))

(declare-fun m!603653 () Bool)

(assert (=> start!56750 m!603653))

(declare-fun m!603655 () Bool)

(assert (=> start!56750 m!603655))

(declare-fun m!603657 () Bool)

(assert (=> b!628454 m!603657))

(declare-fun m!603659 () Bool)

(assert (=> b!628451 m!603659))

(assert (=> b!628449 m!603647))

(assert (=> b!628449 m!603647))

(declare-fun m!603661 () Bool)

(assert (=> b!628449 m!603661))

(check-sat (not b!628448) (not b!628444) (not b!628454) (not b!628446) (not b!628450) (not b!628453) (not b!628451) (not b!628449) (not start!56750))
(check-sat)
