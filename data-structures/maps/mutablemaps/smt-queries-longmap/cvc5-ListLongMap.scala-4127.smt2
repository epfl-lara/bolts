; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56316 () Bool)

(assert start!56316)

(declare-fun b!624112 () Bool)

(declare-fun res!402444 () Bool)

(declare-fun e!357922 () Bool)

(assert (=> b!624112 (=> (not res!402444) (not e!357922))))

(declare-datatypes ((array!37704 0))(
  ( (array!37705 (arr!18093 (Array (_ BitVec 32) (_ BitVec 64))) (size!18457 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37704)

(declare-datatypes ((List!12187 0))(
  ( (Nil!12184) (Cons!12183 (h!13228 (_ BitVec 64)) (t!18423 List!12187)) )
))
(declare-fun arrayNoDuplicates!0 (array!37704 (_ BitVec 32) List!12187) Bool)

(assert (=> b!624112 (= res!402444 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12184))))

(declare-fun b!624113 () Bool)

(declare-fun res!402442 () Bool)

(declare-fun e!357920 () Bool)

(assert (=> b!624113 (=> (not res!402442) (not e!357920))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37704 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624113 (= res!402442 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!624114 () Bool)

(declare-fun res!402448 () Bool)

(assert (=> b!624114 (=> (not res!402448) (not e!357922))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37704 (_ BitVec 32)) Bool)

(assert (=> b!624114 (= res!402448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!624115 () Bool)

(declare-fun res!402445 () Bool)

(assert (=> b!624115 (=> (not res!402445) (not e!357920))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!624115 (= res!402445 (and (= (size!18457 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18457 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18457 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!402443 () Bool)

(assert (=> start!56316 (=> (not res!402443) (not e!357920))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56316 (= res!402443 (validMask!0 mask!3053))))

(assert (=> start!56316 e!357920))

(assert (=> start!56316 true))

(declare-fun array_inv!13867 (array!37704) Bool)

(assert (=> start!56316 (array_inv!13867 a!2986)))

(declare-fun b!624116 () Bool)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!624116 (= e!357922 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18093 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge vacantSpotIndex!68 (size!18457 a!2986))))))

(declare-fun b!624117 () Bool)

(assert (=> b!624117 (= e!357920 e!357922)))

(declare-fun res!402446 () Bool)

(assert (=> b!624117 (=> (not res!402446) (not e!357922))))

(declare-datatypes ((SeekEntryResult!6540 0))(
  ( (MissingZero!6540 (index!28443 (_ BitVec 32))) (Found!6540 (index!28444 (_ BitVec 32))) (Intermediate!6540 (undefined!7352 Bool) (index!28445 (_ BitVec 32)) (x!57232 (_ BitVec 32))) (Undefined!6540) (MissingVacant!6540 (index!28446 (_ BitVec 32))) )
))
(declare-fun lt!289518 () SeekEntryResult!6540)

(assert (=> b!624117 (= res!402446 (or (= lt!289518 (MissingZero!6540 i!1108)) (= lt!289518 (MissingVacant!6540 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37704 (_ BitVec 32)) SeekEntryResult!6540)

(assert (=> b!624117 (= lt!289518 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!624118 () Bool)

(declare-fun res!402449 () Bool)

(assert (=> b!624118 (=> (not res!402449) (not e!357920))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624118 (= res!402449 (validKeyInArray!0 (select (arr!18093 a!2986) j!136)))))

(declare-fun b!624119 () Bool)

(declare-fun res!402447 () Bool)

(assert (=> b!624119 (=> (not res!402447) (not e!357920))))

(assert (=> b!624119 (= res!402447 (validKeyInArray!0 k!1786))))

(assert (= (and start!56316 res!402443) b!624115))

(assert (= (and b!624115 res!402445) b!624118))

(assert (= (and b!624118 res!402449) b!624119))

(assert (= (and b!624119 res!402447) b!624113))

(assert (= (and b!624113 res!402442) b!624117))

(assert (= (and b!624117 res!402446) b!624114))

(assert (= (and b!624114 res!402448) b!624112))

(assert (= (and b!624112 res!402444) b!624116))

(declare-fun m!599883 () Bool)

(assert (=> b!624112 m!599883))

(declare-fun m!599885 () Bool)

(assert (=> b!624113 m!599885))

(declare-fun m!599887 () Bool)

(assert (=> b!624118 m!599887))

(assert (=> b!624118 m!599887))

(declare-fun m!599889 () Bool)

(assert (=> b!624118 m!599889))

(declare-fun m!599891 () Bool)

(assert (=> start!56316 m!599891))

(declare-fun m!599893 () Bool)

(assert (=> start!56316 m!599893))

(declare-fun m!599895 () Bool)

(assert (=> b!624114 m!599895))

(declare-fun m!599897 () Bool)

(assert (=> b!624116 m!599897))

(declare-fun m!599899 () Bool)

(assert (=> b!624119 m!599899))

(declare-fun m!599901 () Bool)

(assert (=> b!624117 m!599901))

(push 1)

(assert (not b!624113))

(assert (not b!624118))

(assert (not b!624117))

(assert (not b!624112))

(assert (not b!624119))

(assert (not start!56316))

(assert (not b!624114))

(check-sat)

(pop 1)

(push 1)

(check-sat)

