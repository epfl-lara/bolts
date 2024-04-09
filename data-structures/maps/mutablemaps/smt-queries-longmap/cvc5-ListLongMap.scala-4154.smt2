; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56622 () Bool)

(assert start!56622)

(declare-fun res!404903 () Bool)

(declare-fun e!359072 () Bool)

(assert (=> start!56622 (=> (not res!404903) (not e!359072))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56622 (= res!404903 (validMask!0 mask!3053))))

(assert (=> start!56622 e!359072))

(assert (=> start!56622 true))

(declare-datatypes ((array!37875 0))(
  ( (array!37876 (arr!18174 (Array (_ BitVec 32) (_ BitVec 64))) (size!18538 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37875)

(declare-fun array_inv!13948 (array!37875) Bool)

(assert (=> start!56622 (array_inv!13948 a!2986)))

(declare-fun b!627016 () Bool)

(declare-fun res!404902 () Bool)

(assert (=> b!627016 (=> (not res!404902) (not e!359072))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!627016 (= res!404902 (validKeyInArray!0 k!1786))))

(declare-fun b!627017 () Bool)

(declare-fun res!404899 () Bool)

(declare-fun e!359073 () Bool)

(assert (=> b!627017 (=> (not res!404899) (not e!359073))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!627017 (= res!404899 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18174 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18174 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!627018 () Bool)

(declare-fun res!404897 () Bool)

(assert (=> b!627018 (=> (not res!404897) (not e!359073))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!627018 (= res!404897 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18174 a!2986) index!984) (select (arr!18174 a!2986) j!136))) (not (= (select (arr!18174 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!627019 () Bool)

(assert (=> b!627019 (= e!359073 false)))

(declare-fun lt!290183 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!627019 (= lt!290183 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!627020 () Bool)

(assert (=> b!627020 (= e!359072 e!359073)))

(declare-fun res!404905 () Bool)

(assert (=> b!627020 (=> (not res!404905) (not e!359073))))

(declare-datatypes ((SeekEntryResult!6621 0))(
  ( (MissingZero!6621 (index!28767 (_ BitVec 32))) (Found!6621 (index!28768 (_ BitVec 32))) (Intermediate!6621 (undefined!7433 Bool) (index!28769 (_ BitVec 32)) (x!57538 (_ BitVec 32))) (Undefined!6621) (MissingVacant!6621 (index!28770 (_ BitVec 32))) )
))
(declare-fun lt!290184 () SeekEntryResult!6621)

(assert (=> b!627020 (= res!404905 (or (= lt!290184 (MissingZero!6621 i!1108)) (= lt!290184 (MissingVacant!6621 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37875 (_ BitVec 32)) SeekEntryResult!6621)

(assert (=> b!627020 (= lt!290184 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!627021 () Bool)

(declare-fun res!404906 () Bool)

(assert (=> b!627021 (=> (not res!404906) (not e!359072))))

(assert (=> b!627021 (= res!404906 (validKeyInArray!0 (select (arr!18174 a!2986) j!136)))))

(declare-fun b!627022 () Bool)

(declare-fun res!404898 () Bool)

(assert (=> b!627022 (=> (not res!404898) (not e!359073))))

(declare-datatypes ((List!12268 0))(
  ( (Nil!12265) (Cons!12264 (h!13309 (_ BitVec 64)) (t!18504 List!12268)) )
))
(declare-fun arrayNoDuplicates!0 (array!37875 (_ BitVec 32) List!12268) Bool)

(assert (=> b!627022 (= res!404898 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12265))))

(declare-fun b!627023 () Bool)

(declare-fun res!404896 () Bool)

(assert (=> b!627023 (=> (not res!404896) (not e!359073))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37875 (_ BitVec 32)) SeekEntryResult!6621)

(assert (=> b!627023 (= res!404896 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18174 a!2986) j!136) a!2986 mask!3053) (Found!6621 j!136)))))

(declare-fun b!627024 () Bool)

(declare-fun res!404901 () Bool)

(assert (=> b!627024 (=> (not res!404901) (not e!359072))))

(declare-fun arrayContainsKey!0 (array!37875 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!627024 (= res!404901 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!627025 () Bool)

(declare-fun res!404900 () Bool)

(assert (=> b!627025 (=> (not res!404900) (not e!359072))))

(assert (=> b!627025 (= res!404900 (and (= (size!18538 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18538 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18538 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!627026 () Bool)

(declare-fun res!404904 () Bool)

(assert (=> b!627026 (=> (not res!404904) (not e!359073))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37875 (_ BitVec 32)) Bool)

(assert (=> b!627026 (= res!404904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!56622 res!404903) b!627025))

(assert (= (and b!627025 res!404900) b!627021))

(assert (= (and b!627021 res!404906) b!627016))

(assert (= (and b!627016 res!404902) b!627024))

(assert (= (and b!627024 res!404901) b!627020))

(assert (= (and b!627020 res!404905) b!627026))

(assert (= (and b!627026 res!404904) b!627022))

(assert (= (and b!627022 res!404898) b!627017))

(assert (= (and b!627017 res!404899) b!627023))

(assert (= (and b!627023 res!404896) b!627018))

(assert (= (and b!627018 res!404897) b!627019))

(declare-fun m!602403 () Bool)

(assert (=> b!627026 m!602403))

(declare-fun m!602405 () Bool)

(assert (=> b!627016 m!602405))

(declare-fun m!602407 () Bool)

(assert (=> b!627023 m!602407))

(assert (=> b!627023 m!602407))

(declare-fun m!602409 () Bool)

(assert (=> b!627023 m!602409))

(declare-fun m!602411 () Bool)

(assert (=> b!627024 m!602411))

(declare-fun m!602413 () Bool)

(assert (=> start!56622 m!602413))

(declare-fun m!602415 () Bool)

(assert (=> start!56622 m!602415))

(declare-fun m!602417 () Bool)

(assert (=> b!627017 m!602417))

(declare-fun m!602419 () Bool)

(assert (=> b!627017 m!602419))

(declare-fun m!602421 () Bool)

(assert (=> b!627017 m!602421))

(declare-fun m!602423 () Bool)

(assert (=> b!627022 m!602423))

(declare-fun m!602425 () Bool)

(assert (=> b!627020 m!602425))

(declare-fun m!602427 () Bool)

(assert (=> b!627019 m!602427))

(declare-fun m!602429 () Bool)

(assert (=> b!627018 m!602429))

(assert (=> b!627018 m!602407))

(assert (=> b!627021 m!602407))

(assert (=> b!627021 m!602407))

(declare-fun m!602431 () Bool)

(assert (=> b!627021 m!602431))

(push 1)

