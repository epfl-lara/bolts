; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53234 () Bool)

(assert start!53234)

(declare-fun b!578264 () Bool)

(declare-fun e!332555 () Bool)

(declare-fun e!332556 () Bool)

(assert (=> b!578264 (= e!332555 e!332556)))

(declare-fun res!366236 () Bool)

(assert (=> b!578264 (=> (not res!366236) (not e!332556))))

(declare-datatypes ((SeekEntryResult!5762 0))(
  ( (MissingZero!5762 (index!25275 (_ BitVec 32))) (Found!5762 (index!25276 (_ BitVec 32))) (Intermediate!5762 (undefined!6574 Bool) (index!25277 (_ BitVec 32)) (x!54202 (_ BitVec 32))) (Undefined!5762) (MissingVacant!5762 (index!25278 (_ BitVec 32))) )
))
(declare-fun lt!264229 () SeekEntryResult!5762)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578264 (= res!366236 (or (= lt!264229 (MissingZero!5762 i!1108)) (= lt!264229 (MissingVacant!5762 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36089 0))(
  ( (array!36090 (arr!17315 (Array (_ BitVec 32) (_ BitVec 64))) (size!17679 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36089)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36089 (_ BitVec 32)) SeekEntryResult!5762)

(assert (=> b!578264 (= lt!264229 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!578265 () Bool)

(declare-fun res!366232 () Bool)

(assert (=> b!578265 (=> (not res!366232) (not e!332555))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578265 (= res!366232 (validKeyInArray!0 (select (arr!17315 a!2986) j!136)))))

(declare-fun b!578266 () Bool)

(declare-fun res!366233 () Bool)

(assert (=> b!578266 (=> (not res!366233) (not e!332555))))

(declare-fun arrayContainsKey!0 (array!36089 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578266 (= res!366233 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578267 () Bool)

(assert (=> b!578267 (= e!332556 false)))

(declare-fun lt!264230 () Bool)

(declare-datatypes ((List!11409 0))(
  ( (Nil!11406) (Cons!11405 (h!12450 (_ BitVec 64)) (t!17645 List!11409)) )
))
(declare-fun arrayNoDuplicates!0 (array!36089 (_ BitVec 32) List!11409) Bool)

(assert (=> b!578267 (= lt!264230 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11406))))

(declare-fun b!578268 () Bool)

(declare-fun res!366234 () Bool)

(assert (=> b!578268 (=> (not res!366234) (not e!332556))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36089 (_ BitVec 32)) Bool)

(assert (=> b!578268 (= res!366234 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578269 () Bool)

(declare-fun res!366231 () Bool)

(assert (=> b!578269 (=> (not res!366231) (not e!332555))))

(assert (=> b!578269 (= res!366231 (validKeyInArray!0 k!1786))))

(declare-fun b!578270 () Bool)

(declare-fun res!366230 () Bool)

(assert (=> b!578270 (=> (not res!366230) (not e!332555))))

(assert (=> b!578270 (= res!366230 (and (= (size!17679 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17679 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17679 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!366235 () Bool)

(assert (=> start!53234 (=> (not res!366235) (not e!332555))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53234 (= res!366235 (validMask!0 mask!3053))))

(assert (=> start!53234 e!332555))

(assert (=> start!53234 true))

(declare-fun array_inv!13089 (array!36089) Bool)

(assert (=> start!53234 (array_inv!13089 a!2986)))

(assert (= (and start!53234 res!366235) b!578270))

(assert (= (and b!578270 res!366230) b!578265))

(assert (= (and b!578265 res!366232) b!578269))

(assert (= (and b!578269 res!366231) b!578266))

(assert (= (and b!578266 res!366233) b!578264))

(assert (= (and b!578264 res!366236) b!578268))

(assert (= (and b!578268 res!366234) b!578267))

(declare-fun m!556999 () Bool)

(assert (=> start!53234 m!556999))

(declare-fun m!557001 () Bool)

(assert (=> start!53234 m!557001))

(declare-fun m!557003 () Bool)

(assert (=> b!578265 m!557003))

(assert (=> b!578265 m!557003))

(declare-fun m!557005 () Bool)

(assert (=> b!578265 m!557005))

(declare-fun m!557007 () Bool)

(assert (=> b!578264 m!557007))

(declare-fun m!557009 () Bool)

(assert (=> b!578266 m!557009))

(declare-fun m!557011 () Bool)

(assert (=> b!578267 m!557011))

(declare-fun m!557013 () Bool)

(assert (=> b!578269 m!557013))

(declare-fun m!557015 () Bool)

(assert (=> b!578268 m!557015))

(push 1)

