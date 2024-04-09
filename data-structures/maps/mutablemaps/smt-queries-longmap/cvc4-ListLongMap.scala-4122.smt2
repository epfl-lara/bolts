; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56290 () Bool)

(assert start!56290)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!357714 () Bool)

(declare-fun b!623681 () Bool)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37678 0))(
  ( (array!37679 (arr!18080 (Array (_ BitVec 32) (_ BitVec 64))) (size!18444 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37678)

(assert (=> b!623681 (= e!357714 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18080 a!2986) index!984) (select (arr!18080 a!2986) j!136))) (not (= (select (arr!18080 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (= index!984 j!136)))))

(declare-fun res!402052 () Bool)

(declare-fun e!357715 () Bool)

(assert (=> start!56290 (=> (not res!402052) (not e!357715))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56290 (= res!402052 (validMask!0 mask!3053))))

(assert (=> start!56290 e!357715))

(assert (=> start!56290 true))

(declare-fun array_inv!13854 (array!37678) Bool)

(assert (=> start!56290 (array_inv!13854 a!2986)))

(declare-fun b!623682 () Bool)

(declare-fun res!402056 () Bool)

(assert (=> b!623682 (=> (not res!402056) (not e!357714))))

(declare-datatypes ((List!12174 0))(
  ( (Nil!12171) (Cons!12170 (h!13215 (_ BitVec 64)) (t!18410 List!12174)) )
))
(declare-fun arrayNoDuplicates!0 (array!37678 (_ BitVec 32) List!12174) Bool)

(assert (=> b!623682 (= res!402056 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12171))))

(declare-fun b!623683 () Bool)

(declare-fun res!402049 () Bool)

(assert (=> b!623683 (=> (not res!402049) (not e!357715))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!623683 (= res!402049 (validKeyInArray!0 k!1786))))

(declare-fun b!623684 () Bool)

(declare-fun res!402048 () Bool)

(assert (=> b!623684 (=> (not res!402048) (not e!357714))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6527 0))(
  ( (MissingZero!6527 (index!28391 (_ BitVec 32))) (Found!6527 (index!28392 (_ BitVec 32))) (Intermediate!6527 (undefined!7339 Bool) (index!28393 (_ BitVec 32)) (x!57179 (_ BitVec 32))) (Undefined!6527) (MissingVacant!6527 (index!28394 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37678 (_ BitVec 32)) SeekEntryResult!6527)

(assert (=> b!623684 (= res!402048 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18080 a!2986) j!136) a!2986 mask!3053) (Found!6527 j!136)))))

(declare-fun b!623685 () Bool)

(declare-fun res!402050 () Bool)

(assert (=> b!623685 (=> (not res!402050) (not e!357714))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37678 (_ BitVec 32)) Bool)

(assert (=> b!623685 (= res!402050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!623686 () Bool)

(declare-fun res!402054 () Bool)

(assert (=> b!623686 (=> (not res!402054) (not e!357715))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!623686 (= res!402054 (and (= (size!18444 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18444 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18444 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!623687 () Bool)

(declare-fun res!402047 () Bool)

(assert (=> b!623687 (=> (not res!402047) (not e!357715))))

(assert (=> b!623687 (= res!402047 (validKeyInArray!0 (select (arr!18080 a!2986) j!136)))))

(declare-fun b!623688 () Bool)

(assert (=> b!623688 (= e!357715 e!357714)))

(declare-fun res!402051 () Bool)

(assert (=> b!623688 (=> (not res!402051) (not e!357714))))

(declare-fun lt!289326 () SeekEntryResult!6527)

(assert (=> b!623688 (= res!402051 (or (= lt!289326 (MissingZero!6527 i!1108)) (= lt!289326 (MissingVacant!6527 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37678 (_ BitVec 32)) SeekEntryResult!6527)

(assert (=> b!623688 (= lt!289326 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!623689 () Bool)

(declare-fun res!402053 () Bool)

(assert (=> b!623689 (=> (not res!402053) (not e!357714))))

(assert (=> b!623689 (= res!402053 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18080 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18080 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!623690 () Bool)

(declare-fun res!402055 () Bool)

(assert (=> b!623690 (=> (not res!402055) (not e!357715))))

(declare-fun arrayContainsKey!0 (array!37678 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!623690 (= res!402055 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!56290 res!402052) b!623686))

(assert (= (and b!623686 res!402054) b!623687))

(assert (= (and b!623687 res!402047) b!623683))

(assert (= (and b!623683 res!402049) b!623690))

(assert (= (and b!623690 res!402055) b!623688))

(assert (= (and b!623688 res!402051) b!623685))

(assert (= (and b!623685 res!402050) b!623682))

(assert (= (and b!623682 res!402056) b!623689))

(assert (= (and b!623689 res!402053) b!623684))

(assert (= (and b!623684 res!402048) b!623681))

(declare-fun m!599495 () Bool)

(assert (=> b!623688 m!599495))

(declare-fun m!599497 () Bool)

(assert (=> b!623683 m!599497))

(declare-fun m!599499 () Bool)

(assert (=> b!623687 m!599499))

(assert (=> b!623687 m!599499))

(declare-fun m!599501 () Bool)

(assert (=> b!623687 m!599501))

(declare-fun m!599503 () Bool)

(assert (=> b!623682 m!599503))

(declare-fun m!599505 () Bool)

(assert (=> b!623681 m!599505))

(assert (=> b!623681 m!599499))

(declare-fun m!599507 () Bool)

(assert (=> b!623689 m!599507))

(declare-fun m!599509 () Bool)

(assert (=> b!623689 m!599509))

(declare-fun m!599511 () Bool)

(assert (=> b!623689 m!599511))

(assert (=> b!623684 m!599499))

(assert (=> b!623684 m!599499))

(declare-fun m!599513 () Bool)

(assert (=> b!623684 m!599513))

(declare-fun m!599515 () Bool)

(assert (=> b!623685 m!599515))

(declare-fun m!599517 () Bool)

(assert (=> b!623690 m!599517))

(declare-fun m!599519 () Bool)

(assert (=> start!56290 m!599519))

(declare-fun m!599521 () Bool)

(assert (=> start!56290 m!599521))

(push 1)

(assert (not b!623684))

(assert (