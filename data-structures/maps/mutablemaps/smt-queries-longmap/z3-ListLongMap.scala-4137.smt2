; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56426 () Bool)

(assert start!56426)

(declare-fun b!625145 () Bool)

(declare-fun res!403333 () Bool)

(declare-fun e!358336 () Bool)

(assert (=> b!625145 (=> (not res!403333) (not e!358336))))

(declare-datatypes ((array!37769 0))(
  ( (array!37770 (arr!18124 (Array (_ BitVec 32) (_ BitVec 64))) (size!18488 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37769)

(declare-datatypes ((List!12218 0))(
  ( (Nil!12215) (Cons!12214 (h!13259 (_ BitVec 64)) (t!18454 List!12218)) )
))
(declare-fun arrayNoDuplicates!0 (array!37769 (_ BitVec 32) List!12218) Bool)

(assert (=> b!625145 (= res!403333 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12215))))

(declare-fun b!625146 () Bool)

(declare-fun res!403339 () Bool)

(assert (=> b!625146 (=> (not res!403339) (not e!358336))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6571 0))(
  ( (MissingZero!6571 (index!28567 (_ BitVec 32))) (Found!6571 (index!28568 (_ BitVec 32))) (Intermediate!6571 (undefined!7383 Bool) (index!28569 (_ BitVec 32)) (x!57346 (_ BitVec 32))) (Undefined!6571) (MissingVacant!6571 (index!28570 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37769 (_ BitVec 32)) SeekEntryResult!6571)

(assert (=> b!625146 (= res!403339 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18124 a!2986) j!136) a!2986 mask!3053) (Found!6571 j!136)))))

(declare-fun b!625147 () Bool)

(declare-fun res!403337 () Bool)

(assert (=> b!625147 (=> (not res!403337) (not e!358336))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!625147 (= res!403337 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18124 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18124 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!625148 () Bool)

(declare-fun res!403336 () Bool)

(declare-fun e!358335 () Bool)

(assert (=> b!625148 (=> (not res!403336) (not e!358335))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625148 (= res!403336 (validKeyInArray!0 (select (arr!18124 a!2986) j!136)))))

(declare-fun b!625149 () Bool)

(declare-fun res!403334 () Bool)

(assert (=> b!625149 (=> (not res!403334) (not e!358335))))

(assert (=> b!625149 (= res!403334 (validKeyInArray!0 k0!1786))))

(declare-fun b!625150 () Bool)

(declare-fun res!403340 () Bool)

(assert (=> b!625150 (=> (not res!403340) (not e!358335))))

(declare-fun arrayContainsKey!0 (array!37769 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625150 (= res!403340 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!625151 () Bool)

(declare-fun res!403331 () Bool)

(assert (=> b!625151 (=> (not res!403331) (not e!358336))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37769 (_ BitVec 32)) Bool)

(assert (=> b!625151 (= res!403331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!625153 () Bool)

(assert (=> b!625153 (= e!358336 (and (bvslt x!910 #b01111111111111111111111111111110) (bvsge index!984 (size!18488 a!2986))))))

(declare-fun b!625154 () Bool)

(declare-fun res!403332 () Bool)

(assert (=> b!625154 (=> (not res!403332) (not e!358335))))

(assert (=> b!625154 (= res!403332 (and (= (size!18488 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18488 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18488 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!625152 () Bool)

(assert (=> b!625152 (= e!358335 e!358336)))

(declare-fun res!403335 () Bool)

(assert (=> b!625152 (=> (not res!403335) (not e!358336))))

(declare-fun lt!289755 () SeekEntryResult!6571)

(assert (=> b!625152 (= res!403335 (or (= lt!289755 (MissingZero!6571 i!1108)) (= lt!289755 (MissingVacant!6571 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37769 (_ BitVec 32)) SeekEntryResult!6571)

(assert (=> b!625152 (= lt!289755 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!403338 () Bool)

(assert (=> start!56426 (=> (not res!403338) (not e!358335))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56426 (= res!403338 (validMask!0 mask!3053))))

(assert (=> start!56426 e!358335))

(assert (=> start!56426 true))

(declare-fun array_inv!13898 (array!37769) Bool)

(assert (=> start!56426 (array_inv!13898 a!2986)))

(assert (= (and start!56426 res!403338) b!625154))

(assert (= (and b!625154 res!403332) b!625148))

(assert (= (and b!625148 res!403336) b!625149))

(assert (= (and b!625149 res!403334) b!625150))

(assert (= (and b!625150 res!403340) b!625152))

(assert (= (and b!625152 res!403335) b!625151))

(assert (= (and b!625151 res!403331) b!625145))

(assert (= (and b!625145 res!403333) b!625147))

(assert (= (and b!625147 res!403337) b!625146))

(assert (= (and b!625146 res!403339) b!625153))

(declare-fun m!600773 () Bool)

(assert (=> b!625151 m!600773))

(declare-fun m!600775 () Bool)

(assert (=> b!625152 m!600775))

(declare-fun m!600777 () Bool)

(assert (=> b!625150 m!600777))

(declare-fun m!600779 () Bool)

(assert (=> b!625149 m!600779))

(declare-fun m!600781 () Bool)

(assert (=> start!56426 m!600781))

(declare-fun m!600783 () Bool)

(assert (=> start!56426 m!600783))

(declare-fun m!600785 () Bool)

(assert (=> b!625148 m!600785))

(assert (=> b!625148 m!600785))

(declare-fun m!600787 () Bool)

(assert (=> b!625148 m!600787))

(declare-fun m!600789 () Bool)

(assert (=> b!625145 m!600789))

(declare-fun m!600791 () Bool)

(assert (=> b!625147 m!600791))

(declare-fun m!600793 () Bool)

(assert (=> b!625147 m!600793))

(declare-fun m!600795 () Bool)

(assert (=> b!625147 m!600795))

(assert (=> b!625146 m!600785))

(assert (=> b!625146 m!600785))

(declare-fun m!600797 () Bool)

(assert (=> b!625146 m!600797))

(check-sat (not b!625151) (not b!625150) (not b!625146) (not b!625149) (not start!56426) (not b!625148) (not b!625152) (not b!625145))
(check-sat)
