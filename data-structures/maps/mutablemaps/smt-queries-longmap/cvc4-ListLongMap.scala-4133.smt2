; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56404 () Bool)

(assert start!56404)

(declare-fun b!624843 () Bool)

(declare-fun res!403036 () Bool)

(declare-fun e!358235 () Bool)

(assert (=> b!624843 (=> (not res!403036) (not e!358235))))

(declare-datatypes ((array!37747 0))(
  ( (array!37748 (arr!18113 (Array (_ BitVec 32) (_ BitVec 64))) (size!18477 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37747)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37747 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624843 (= res!403036 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!624844 () Bool)

(declare-fun res!403035 () Bool)

(declare-fun e!358236 () Bool)

(assert (=> b!624844 (=> (not res!403035) (not e!358236))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!624844 (= res!403035 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18113 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18113 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!624845 () Bool)

(declare-fun res!403031 () Bool)

(assert (=> b!624845 (=> (not res!403031) (not e!358235))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624845 (= res!403031 (validKeyInArray!0 (select (arr!18113 a!2986) j!136)))))

(declare-fun b!624846 () Bool)

(assert (=> b!624846 (= e!358235 e!358236)))

(declare-fun res!403030 () Bool)

(assert (=> b!624846 (=> (not res!403030) (not e!358236))))

(declare-datatypes ((SeekEntryResult!6560 0))(
  ( (MissingZero!6560 (index!28523 (_ BitVec 32))) (Found!6560 (index!28524 (_ BitVec 32))) (Intermediate!6560 (undefined!7372 Bool) (index!28525 (_ BitVec 32)) (x!57303 (_ BitVec 32))) (Undefined!6560) (MissingVacant!6560 (index!28526 (_ BitVec 32))) )
))
(declare-fun lt!289694 () SeekEntryResult!6560)

(assert (=> b!624846 (= res!403030 (or (= lt!289694 (MissingZero!6560 i!1108)) (= lt!289694 (MissingVacant!6560 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37747 (_ BitVec 32)) SeekEntryResult!6560)

(assert (=> b!624846 (= lt!289694 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!624847 () Bool)

(declare-fun res!403037 () Bool)

(assert (=> b!624847 (=> (not res!403037) (not e!358235))))

(assert (=> b!624847 (= res!403037 (and (= (size!18477 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18477 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18477 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624848 () Bool)

(assert (=> b!624848 (= e!358236 false)))

(declare-fun lt!289695 () SeekEntryResult!6560)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37747 (_ BitVec 32)) SeekEntryResult!6560)

(assert (=> b!624848 (= lt!289695 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18113 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!624849 () Bool)

(declare-fun res!403032 () Bool)

(assert (=> b!624849 (=> (not res!403032) (not e!358235))))

(assert (=> b!624849 (= res!403032 (validKeyInArray!0 k!1786))))

(declare-fun res!403029 () Bool)

(assert (=> start!56404 (=> (not res!403029) (not e!358235))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56404 (= res!403029 (validMask!0 mask!3053))))

(assert (=> start!56404 e!358235))

(assert (=> start!56404 true))

(declare-fun array_inv!13887 (array!37747) Bool)

(assert (=> start!56404 (array_inv!13887 a!2986)))

(declare-fun b!624850 () Bool)

(declare-fun res!403033 () Bool)

(assert (=> b!624850 (=> (not res!403033) (not e!358236))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37747 (_ BitVec 32)) Bool)

(assert (=> b!624850 (= res!403033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!624851 () Bool)

(declare-fun res!403034 () Bool)

(assert (=> b!624851 (=> (not res!403034) (not e!358236))))

(declare-datatypes ((List!12207 0))(
  ( (Nil!12204) (Cons!12203 (h!13248 (_ BitVec 64)) (t!18443 List!12207)) )
))
(declare-fun arrayNoDuplicates!0 (array!37747 (_ BitVec 32) List!12207) Bool)

(assert (=> b!624851 (= res!403034 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12204))))

(assert (= (and start!56404 res!403029) b!624847))

(assert (= (and b!624847 res!403037) b!624845))

(assert (= (and b!624845 res!403031) b!624849))

(assert (= (and b!624849 res!403032) b!624843))

(assert (= (and b!624843 res!403036) b!624846))

(assert (= (and b!624846 res!403030) b!624850))

(assert (= (and b!624850 res!403033) b!624851))

(assert (= (and b!624851 res!403034) b!624844))

(assert (= (and b!624844 res!403035) b!624848))

(declare-fun m!600487 () Bool)

(assert (=> b!624849 m!600487))

(declare-fun m!600489 () Bool)

(assert (=> start!56404 m!600489))

(declare-fun m!600491 () Bool)

(assert (=> start!56404 m!600491))

(declare-fun m!600493 () Bool)

(assert (=> b!624845 m!600493))

(assert (=> b!624845 m!600493))

(declare-fun m!600495 () Bool)

(assert (=> b!624845 m!600495))

(assert (=> b!624848 m!600493))

(assert (=> b!624848 m!600493))

(declare-fun m!600497 () Bool)

(assert (=> b!624848 m!600497))

(declare-fun m!600499 () Bool)

(assert (=> b!624843 m!600499))

(declare-fun m!600501 () Bool)

(assert (=> b!624851 m!600501))

(declare-fun m!600503 () Bool)

(assert (=> b!624846 m!600503))

(declare-fun m!600505 () Bool)

(assert (=> b!624844 m!600505))

(declare-fun m!600507 () Bool)

(assert (=> b!624844 m!600507))

(declare-fun m!600509 () Bool)

(assert (=> b!624844 m!600509))

(declare-fun m!600511 () Bool)

(assert (=> b!624850 m!600511))

(push 1)

(assert (not b!624850))

(assert (not start!56404))

