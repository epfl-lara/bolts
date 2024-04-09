; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56312 () Bool)

(assert start!56312)

(declare-fun res!402401 () Bool)

(declare-fun e!357903 () Bool)

(assert (=> start!56312 (=> (not res!402401) (not e!357903))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56312 (= res!402401 (validMask!0 mask!3053))))

(assert (=> start!56312 e!357903))

(assert (=> start!56312 true))

(declare-datatypes ((array!37700 0))(
  ( (array!37701 (arr!18091 (Array (_ BitVec 32) (_ BitVec 64))) (size!18455 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37700)

(declare-fun array_inv!13865 (array!37700) Bool)

(assert (=> start!56312 (array_inv!13865 a!2986)))

(declare-fun b!624068 () Bool)

(declare-fun e!357904 () Bool)

(assert (=> b!624068 (= e!357903 e!357904)))

(declare-fun res!402399 () Bool)

(assert (=> b!624068 (=> (not res!402399) (not e!357904))))

(declare-datatypes ((SeekEntryResult!6538 0))(
  ( (MissingZero!6538 (index!28435 (_ BitVec 32))) (Found!6538 (index!28436 (_ BitVec 32))) (Intermediate!6538 (undefined!7350 Bool) (index!28437 (_ BitVec 32)) (x!57222 (_ BitVec 32))) (Undefined!6538) (MissingVacant!6538 (index!28438 (_ BitVec 32))) )
))
(declare-fun lt!289509 () SeekEntryResult!6538)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!624068 (= res!402399 (or (= lt!289509 (MissingZero!6538 i!1108)) (= lt!289509 (MissingVacant!6538 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37700 (_ BitVec 32)) SeekEntryResult!6538)

(assert (=> b!624068 (= lt!289509 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!624069 () Bool)

(declare-fun res!402402 () Bool)

(assert (=> b!624069 (=> (not res!402402) (not e!357903))))

(declare-fun arrayContainsKey!0 (array!37700 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624069 (= res!402402 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!624070 () Bool)

(declare-fun res!402398 () Bool)

(assert (=> b!624070 (=> (not res!402398) (not e!357903))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!624070 (= res!402398 (and (= (size!18455 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18455 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18455 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624071 () Bool)

(declare-fun res!402403 () Bool)

(assert (=> b!624071 (=> (not res!402403) (not e!357903))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624071 (= res!402403 (validKeyInArray!0 k0!1786))))

(declare-fun b!624072 () Bool)

(declare-fun res!402404 () Bool)

(assert (=> b!624072 (=> (not res!402404) (not e!357903))))

(assert (=> b!624072 (= res!402404 (validKeyInArray!0 (select (arr!18091 a!2986) j!136)))))

(declare-fun b!624073 () Bool)

(assert (=> b!624073 (= e!357904 false)))

(declare-fun lt!289508 () Bool)

(declare-datatypes ((List!12185 0))(
  ( (Nil!12182) (Cons!12181 (h!13226 (_ BitVec 64)) (t!18421 List!12185)) )
))
(declare-fun arrayNoDuplicates!0 (array!37700 (_ BitVec 32) List!12185) Bool)

(assert (=> b!624073 (= lt!289508 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12182))))

(declare-fun b!624074 () Bool)

(declare-fun res!402400 () Bool)

(assert (=> b!624074 (=> (not res!402400) (not e!357904))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37700 (_ BitVec 32)) Bool)

(assert (=> b!624074 (= res!402400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!56312 res!402401) b!624070))

(assert (= (and b!624070 res!402398) b!624072))

(assert (= (and b!624072 res!402404) b!624071))

(assert (= (and b!624071 res!402403) b!624069))

(assert (= (and b!624069 res!402402) b!624068))

(assert (= (and b!624068 res!402399) b!624074))

(assert (= (and b!624074 res!402400) b!624073))

(declare-fun m!599847 () Bool)

(assert (=> b!624069 m!599847))

(declare-fun m!599849 () Bool)

(assert (=> b!624072 m!599849))

(assert (=> b!624072 m!599849))

(declare-fun m!599851 () Bool)

(assert (=> b!624072 m!599851))

(declare-fun m!599853 () Bool)

(assert (=> b!624068 m!599853))

(declare-fun m!599855 () Bool)

(assert (=> b!624073 m!599855))

(declare-fun m!599857 () Bool)

(assert (=> b!624074 m!599857))

(declare-fun m!599859 () Bool)

(assert (=> start!56312 m!599859))

(declare-fun m!599861 () Bool)

(assert (=> start!56312 m!599861))

(declare-fun m!599863 () Bool)

(assert (=> b!624071 m!599863))

(check-sat (not b!624074) (not b!624071) (not b!624069) (not b!624073) (not b!624068) (not start!56312) (not b!624072))
(check-sat)
