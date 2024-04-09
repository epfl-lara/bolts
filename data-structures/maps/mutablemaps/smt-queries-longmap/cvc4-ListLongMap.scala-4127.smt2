; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56320 () Bool)

(assert start!56320)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun e!357938 () Bool)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun b!624160 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37708 0))(
  ( (array!37709 (arr!18095 (Array (_ BitVec 32) (_ BitVec 64))) (size!18459 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37708)

(assert (=> b!624160 (= e!357938 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18095 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantSpotIndex!68 (size!18459 a!2986))))))

(declare-fun b!624161 () Bool)

(declare-fun res!402496 () Bool)

(declare-fun e!357940 () Bool)

(assert (=> b!624161 (=> (not res!402496) (not e!357940))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624161 (= res!402496 (validKeyInArray!0 k!1786))))

(declare-fun res!402492 () Bool)

(assert (=> start!56320 (=> (not res!402492) (not e!357940))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56320 (= res!402492 (validMask!0 mask!3053))))

(assert (=> start!56320 e!357940))

(assert (=> start!56320 true))

(declare-fun array_inv!13869 (array!37708) Bool)

(assert (=> start!56320 (array_inv!13869 a!2986)))

(declare-fun b!624162 () Bool)

(declare-fun res!402497 () Bool)

(assert (=> b!624162 (=> (not res!402497) (not e!357940))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!624162 (= res!402497 (validKeyInArray!0 (select (arr!18095 a!2986) j!136)))))

(declare-fun b!624163 () Bool)

(declare-fun res!402490 () Bool)

(assert (=> b!624163 (=> (not res!402490) (not e!357940))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!624163 (= res!402490 (and (= (size!18459 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18459 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18459 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624164 () Bool)

(declare-fun res!402494 () Bool)

(assert (=> b!624164 (=> (not res!402494) (not e!357940))))

(declare-fun arrayContainsKey!0 (array!37708 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624164 (= res!402494 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!624165 () Bool)

(declare-fun res!402495 () Bool)

(assert (=> b!624165 (=> (not res!402495) (not e!357938))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37708 (_ BitVec 32)) Bool)

(assert (=> b!624165 (= res!402495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!624166 () Bool)

(assert (=> b!624166 (= e!357940 e!357938)))

(declare-fun res!402491 () Bool)

(assert (=> b!624166 (=> (not res!402491) (not e!357938))))

(declare-datatypes ((SeekEntryResult!6542 0))(
  ( (MissingZero!6542 (index!28451 (_ BitVec 32))) (Found!6542 (index!28452 (_ BitVec 32))) (Intermediate!6542 (undefined!7354 Bool) (index!28453 (_ BitVec 32)) (x!57234 (_ BitVec 32))) (Undefined!6542) (MissingVacant!6542 (index!28454 (_ BitVec 32))) )
))
(declare-fun lt!289524 () SeekEntryResult!6542)

(assert (=> b!624166 (= res!402491 (or (= lt!289524 (MissingZero!6542 i!1108)) (= lt!289524 (MissingVacant!6542 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37708 (_ BitVec 32)) SeekEntryResult!6542)

(assert (=> b!624166 (= lt!289524 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!624167 () Bool)

(declare-fun res!402493 () Bool)

(assert (=> b!624167 (=> (not res!402493) (not e!357938))))

(declare-datatypes ((List!12189 0))(
  ( (Nil!12186) (Cons!12185 (h!13230 (_ BitVec 64)) (t!18425 List!12189)) )
))
(declare-fun arrayNoDuplicates!0 (array!37708 (_ BitVec 32) List!12189) Bool)

(assert (=> b!624167 (= res!402493 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12186))))

(assert (= (and start!56320 res!402492) b!624163))

(assert (= (and b!624163 res!402490) b!624162))

(assert (= (and b!624162 res!402497) b!624161))

(assert (= (and b!624161 res!402496) b!624164))

(assert (= (and b!624164 res!402494) b!624166))

(assert (= (and b!624166 res!402491) b!624165))

(assert (= (and b!624165 res!402495) b!624167))

(assert (= (and b!624167 res!402493) b!624160))

(declare-fun m!599923 () Bool)

(assert (=> b!624160 m!599923))

(declare-fun m!599925 () Bool)

(assert (=> b!624166 m!599925))

(declare-fun m!599927 () Bool)

(assert (=> b!624167 m!599927))

(declare-fun m!599929 () Bool)

(assert (=> start!56320 m!599929))

(declare-fun m!599931 () Bool)

(assert (=> start!56320 m!599931))

(declare-fun m!599933 () Bool)

(assert (=> b!624161 m!599933))

(declare-fun m!599935 () Bool)

(assert (=> b!624162 m!599935))

(assert (=> b!624162 m!599935))

(declare-fun m!599937 () Bool)

(assert (=> b!624162 m!599937))

(declare-fun m!599939 () Bool)

(assert (=> b!624165 m!599939))

(declare-fun m!599941 () Bool)

(assert (=> b!624164 m!599941))

(push 1)

(assert (not b!624161))

(assert (not b!624167))

(assert (not b!624162))

(assert (not b!624165))

(assert (not b!624166))

(assert (not b!624164))

(assert (not start!56320))

(check-sat)

(pop 1)

(push 1)

(check-sat)

