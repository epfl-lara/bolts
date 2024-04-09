; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56308 () Bool)

(assert start!56308)

(declare-fun b!624025 () Bool)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun e!357884 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37696 0))(
  ( (array!37697 (arr!18089 (Array (_ BitVec 32) (_ BitVec 64))) (size!18453 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37696)

(assert (=> b!624025 (= e!357884 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge vacantSpotIndex!68 (size!18453 a!2986))))))

(declare-fun res!402356 () Bool)

(declare-fun e!357886 () Bool)

(assert (=> start!56308 (=> (not res!402356) (not e!357886))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56308 (= res!402356 (validMask!0 mask!3053))))

(assert (=> start!56308 e!357886))

(assert (=> start!56308 true))

(declare-fun array_inv!13863 (array!37696) Bool)

(assert (=> start!56308 (array_inv!13863 a!2986)))

(declare-fun b!624026 () Bool)

(declare-fun res!402362 () Bool)

(assert (=> b!624026 (=> (not res!402362) (not e!357886))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624026 (= res!402362 (validKeyInArray!0 (select (arr!18089 a!2986) j!136)))))

(declare-fun b!624027 () Bool)

(declare-fun res!402359 () Bool)

(assert (=> b!624027 (=> (not res!402359) (not e!357886))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!624027 (= res!402359 (validKeyInArray!0 k!1786))))

(declare-fun b!624028 () Bool)

(declare-fun res!402355 () Bool)

(assert (=> b!624028 (=> (not res!402355) (not e!357884))))

(declare-datatypes ((List!12183 0))(
  ( (Nil!12180) (Cons!12179 (h!13224 (_ BitVec 64)) (t!18419 List!12183)) )
))
(declare-fun arrayNoDuplicates!0 (array!37696 (_ BitVec 32) List!12183) Bool)

(assert (=> b!624028 (= res!402355 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12180))))

(declare-fun b!624029 () Bool)

(assert (=> b!624029 (= e!357886 e!357884)))

(declare-fun res!402360 () Bool)

(assert (=> b!624029 (=> (not res!402360) (not e!357884))))

(declare-datatypes ((SeekEntryResult!6536 0))(
  ( (MissingZero!6536 (index!28427 (_ BitVec 32))) (Found!6536 (index!28428 (_ BitVec 32))) (Intermediate!6536 (undefined!7348 Bool) (index!28429 (_ BitVec 32)) (x!57212 (_ BitVec 32))) (Undefined!6536) (MissingVacant!6536 (index!28430 (_ BitVec 32))) )
))
(declare-fun lt!289497 () SeekEntryResult!6536)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!624029 (= res!402360 (or (= lt!289497 (MissingZero!6536 i!1108)) (= lt!289497 (MissingVacant!6536 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37696 (_ BitVec 32)) SeekEntryResult!6536)

(assert (=> b!624029 (= lt!289497 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!624030 () Bool)

(declare-fun res!402358 () Bool)

(assert (=> b!624030 (=> (not res!402358) (not e!357886))))

(assert (=> b!624030 (= res!402358 (and (= (size!18453 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18453 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18453 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624031 () Bool)

(declare-fun res!402361 () Bool)

(assert (=> b!624031 (=> (not res!402361) (not e!357886))))

(declare-fun arrayContainsKey!0 (array!37696 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624031 (= res!402361 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!624032 () Bool)

(declare-fun res!402357 () Bool)

(assert (=> b!624032 (=> (not res!402357) (not e!357884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37696 (_ BitVec 32)) Bool)

(assert (=> b!624032 (= res!402357 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!56308 res!402356) b!624030))

(assert (= (and b!624030 res!402358) b!624026))

(assert (= (and b!624026 res!402362) b!624027))

(assert (= (and b!624027 res!402359) b!624031))

(assert (= (and b!624031 res!402361) b!624029))

(assert (= (and b!624029 res!402360) b!624032))

(assert (= (and b!624032 res!402357) b!624028))

(assert (= (and b!624028 res!402355) b!624025))

(declare-fun m!599811 () Bool)

(assert (=> b!624028 m!599811))

(declare-fun m!599813 () Bool)

(assert (=> b!624029 m!599813))

(declare-fun m!599815 () Bool)

(assert (=> b!624027 m!599815))

(declare-fun m!599817 () Bool)

(assert (=> b!624031 m!599817))

(declare-fun m!599819 () Bool)

(assert (=> b!624032 m!599819))

(declare-fun m!599821 () Bool)

(assert (=> start!56308 m!599821))

(declare-fun m!599823 () Bool)

(assert (=> start!56308 m!599823))

(declare-fun m!599825 () Bool)

(assert (=> b!624026 m!599825))

(assert (=> b!624026 m!599825))

(declare-fun m!599827 () Bool)

(assert (=> b!624026 m!599827))

(push 1)

(assert (not b!624029))

(assert (not start!56308))

(assert (not b!624027))

(assert (not b!624026))

(assert (not b!624031))

(assert (not b!624032))

(assert (not b!624028))

(check-sat)

(pop 1)

(push 1)

(check-sat)

