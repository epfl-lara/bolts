; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56670 () Bool)

(assert start!56670)

(declare-fun b!627808 () Bool)

(declare-fun e!359288 () Bool)

(declare-fun e!359290 () Bool)

(assert (=> b!627808 (= e!359288 e!359290)))

(declare-fun res!405690 () Bool)

(assert (=> b!627808 (=> (not res!405690) (not e!359290))))

(declare-datatypes ((SeekEntryResult!6645 0))(
  ( (MissingZero!6645 (index!28863 (_ BitVec 32))) (Found!6645 (index!28864 (_ BitVec 32))) (Intermediate!6645 (undefined!7457 Bool) (index!28865 (_ BitVec 32)) (x!57626 (_ BitVec 32))) (Undefined!6645) (MissingVacant!6645 (index!28866 (_ BitVec 32))) )
))
(declare-fun lt!290328 () SeekEntryResult!6645)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!627808 (= res!405690 (or (= lt!290328 (MissingZero!6645 i!1108)) (= lt!290328 (MissingVacant!6645 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!37923 0))(
  ( (array!37924 (arr!18198 (Array (_ BitVec 32) (_ BitVec 64))) (size!18562 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37923)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37923 (_ BitVec 32)) SeekEntryResult!6645)

(assert (=> b!627808 (= lt!290328 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!627809 () Bool)

(declare-fun res!405696 () Bool)

(assert (=> b!627809 (=> (not res!405696) (not e!359288))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627809 (= res!405696 (validKeyInArray!0 k!1786))))

(declare-fun b!627810 () Bool)

(declare-fun res!405694 () Bool)

(assert (=> b!627810 (=> (not res!405694) (not e!359288))))

(declare-fun arrayContainsKey!0 (array!37923 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627810 (= res!405694 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627811 () Bool)

(declare-fun res!405698 () Bool)

(assert (=> b!627811 (=> (not res!405698) (not e!359288))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!627811 (= res!405698 (and (= (size!18562 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18562 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18562 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627812 () Bool)

(declare-fun res!405689 () Bool)

(assert (=> b!627812 (=> (not res!405689) (not e!359290))))

(declare-datatypes ((List!12292 0))(
  ( (Nil!12289) (Cons!12288 (h!13333 (_ BitVec 64)) (t!18528 List!12292)) )
))
(declare-fun arrayNoDuplicates!0 (array!37923 (_ BitVec 32) List!12292) Bool)

(assert (=> b!627812 (= res!405689 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12289))))

(declare-fun res!405697 () Bool)

(assert (=> start!56670 (=> (not res!405697) (not e!359288))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56670 (= res!405697 (validMask!0 mask!3053))))

(assert (=> start!56670 e!359288))

(assert (=> start!56670 true))

(declare-fun array_inv!13972 (array!37923) Bool)

(assert (=> start!56670 (array_inv!13972 a!2986)))

(declare-fun b!627813 () Bool)

(declare-fun res!405695 () Bool)

(assert (=> b!627813 (=> (not res!405695) (not e!359290))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!627813 (= res!405695 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18198 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18198 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!627814 () Bool)

(assert (=> b!627814 (= e!359290 false)))

(declare-fun lt!290327 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627814 (= lt!290327 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627815 () Bool)

(declare-fun res!405688 () Bool)

(assert (=> b!627815 (=> (not res!405688) (not e!359290))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37923 (_ BitVec 32)) SeekEntryResult!6645)

(assert (=> b!627815 (= res!405688 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18198 a!2986) j!136) a!2986 mask!3053) (Found!6645 j!136)))))

(declare-fun b!627816 () Bool)

(declare-fun res!405692 () Bool)

(assert (=> b!627816 (=> (not res!405692) (not e!359288))))

(assert (=> b!627816 (= res!405692 (validKeyInArray!0 (select (arr!18198 a!2986) j!136)))))

(declare-fun b!627817 () Bool)

(declare-fun res!405693 () Bool)

(assert (=> b!627817 (=> (not res!405693) (not e!359290))))

(assert (=> b!627817 (= res!405693 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18198 a!2986) index!984) (select (arr!18198 a!2986) j!136))) (not (= (select (arr!18198 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627818 () Bool)

(declare-fun res!405691 () Bool)

(assert (=> b!627818 (=> (not res!405691) (not e!359290))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37923 (_ BitVec 32)) Bool)

(assert (=> b!627818 (= res!405691 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!56670 res!405697) b!627811))

(assert (= (and b!627811 res!405698) b!627816))

(assert (= (and b!627816 res!405692) b!627809))

(assert (= (and b!627809 res!405696) b!627810))

(assert (= (and b!627810 res!405694) b!627808))

(assert (= (and b!627808 res!405690) b!627818))

(assert (= (and b!627818 res!405691) b!627812))

(assert (= (and b!627812 res!405689) b!627813))

(assert (= (and b!627813 res!405695) b!627815))

(assert (= (and b!627815 res!405688) b!627817))

(assert (= (and b!627817 res!405693) b!627814))

(declare-fun m!603123 () Bool)

(assert (=> b!627809 m!603123))

(declare-fun m!603125 () Bool)

(assert (=> b!627810 m!603125))

(declare-fun m!603127 () Bool)

(assert (=> b!627814 m!603127))

(declare-fun m!603129 () Bool)

(assert (=> b!627812 m!603129))

(declare-fun m!603131 () Bool)

(assert (=> b!627813 m!603131))

(declare-fun m!603133 () Bool)

(assert (=> b!627813 m!603133))

(declare-fun m!603135 () Bool)

(assert (=> b!627813 m!603135))

(declare-fun m!603137 () Bool)

(assert (=> b!627816 m!603137))

(assert (=> b!627816 m!603137))

(declare-fun m!603139 () Bool)

(assert (=> b!627816 m!603139))

(declare-fun m!603141 () Bool)

(assert (=> b!627818 m!603141))

(declare-fun m!603143 () Bool)

(assert (=> b!627808 m!603143))

(assert (=> b!627815 m!603137))

(assert (=> b!627815 m!603137))

(declare-fun m!603145 () Bool)

(assert (=> b!627815 m!603145))

(declare-fun m!603147 () Bool)

(assert (=> start!56670 m!603147))

(declare-fun m!603149 () Bool)

(assert (=> start!56670 m!603149))

(declare-fun m!603151 () Bool)

(assert (=> b!627817 m!603151))

(assert (=> b!627817 m!603137))

(push 1)

