; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53606 () Bool)

(assert start!53606)

(declare-fun b!583302 () Bool)

(declare-fun res!371276 () Bool)

(declare-fun e!334231 () Bool)

(assert (=> b!583302 (=> (not res!371276) (not e!334231))))

(declare-datatypes ((array!36461 0))(
  ( (array!36462 (arr!17501 (Array (_ BitVec 32) (_ BitVec 64))) (size!17865 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36461)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583302 (= res!371276 (validKeyInArray!0 (select (arr!17501 a!2986) j!136)))))

(declare-fun b!583303 () Bool)

(declare-fun res!371268 () Bool)

(assert (=> b!583303 (=> (not res!371268) (not e!334231))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!583303 (= res!371268 (validKeyInArray!0 k!1786))))

(declare-fun b!583304 () Bool)

(declare-fun e!334229 () Bool)

(assert (=> b!583304 (= e!334229 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5948 0))(
  ( (MissingZero!5948 (index!26019 (_ BitVec 32))) (Found!5948 (index!26020 (_ BitVec 32))) (Intermediate!5948 (undefined!6760 Bool) (index!26021 (_ BitVec 32)) (x!54884 (_ BitVec 32))) (Undefined!5948) (MissingVacant!5948 (index!26022 (_ BitVec 32))) )
))
(declare-fun lt!265301 () SeekEntryResult!5948)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36461 (_ BitVec 32)) SeekEntryResult!5948)

(assert (=> b!583304 (= lt!265301 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17501 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583305 () Bool)

(declare-fun res!371274 () Bool)

(assert (=> b!583305 (=> (not res!371274) (not e!334229))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!583305 (= res!371274 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17501 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17501 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!583306 () Bool)

(declare-fun res!371275 () Bool)

(assert (=> b!583306 (=> (not res!371275) (not e!334229))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36461 (_ BitVec 32)) Bool)

(assert (=> b!583306 (= res!371275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!371270 () Bool)

(assert (=> start!53606 (=> (not res!371270) (not e!334231))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53606 (= res!371270 (validMask!0 mask!3053))))

(assert (=> start!53606 e!334231))

(assert (=> start!53606 true))

(declare-fun array_inv!13275 (array!36461) Bool)

(assert (=> start!53606 (array_inv!13275 a!2986)))

(declare-fun b!583307 () Bool)

(declare-fun res!371271 () Bool)

(assert (=> b!583307 (=> (not res!371271) (not e!334231))))

(assert (=> b!583307 (= res!371271 (and (= (size!17865 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17865 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17865 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583308 () Bool)

(assert (=> b!583308 (= e!334231 e!334229)))

(declare-fun res!371269 () Bool)

(assert (=> b!583308 (=> (not res!371269) (not e!334229))))

(declare-fun lt!265300 () SeekEntryResult!5948)

(assert (=> b!583308 (= res!371269 (or (= lt!265300 (MissingZero!5948 i!1108)) (= lt!265300 (MissingVacant!5948 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36461 (_ BitVec 32)) SeekEntryResult!5948)

(assert (=> b!583308 (= lt!265300 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!583309 () Bool)

(declare-fun res!371272 () Bool)

(assert (=> b!583309 (=> (not res!371272) (not e!334229))))

(declare-datatypes ((List!11595 0))(
  ( (Nil!11592) (Cons!11591 (h!12636 (_ BitVec 64)) (t!17831 List!11595)) )
))
(declare-fun arrayNoDuplicates!0 (array!36461 (_ BitVec 32) List!11595) Bool)

(assert (=> b!583309 (= res!371272 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11592))))

(declare-fun b!583310 () Bool)

(declare-fun res!371273 () Bool)

(assert (=> b!583310 (=> (not res!371273) (not e!334231))))

(declare-fun arrayContainsKey!0 (array!36461 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583310 (= res!371273 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53606 res!371270) b!583307))

(assert (= (and b!583307 res!371271) b!583302))

(assert (= (and b!583302 res!371276) b!583303))

(assert (= (and b!583303 res!371268) b!583310))

(assert (= (and b!583310 res!371273) b!583308))

(assert (= (and b!583308 res!371269) b!583306))

(assert (= (and b!583306 res!371275) b!583309))

(assert (= (and b!583309 res!371272) b!583305))

(assert (= (and b!583305 res!371274) b!583304))

(declare-fun m!561815 () Bool)

(assert (=> b!583306 m!561815))

(declare-fun m!561817 () Bool)

(assert (=> b!583305 m!561817))

(declare-fun m!561819 () Bool)

(assert (=> b!583305 m!561819))

(declare-fun m!561821 () Bool)

(assert (=> b!583305 m!561821))

(declare-fun m!561823 () Bool)

(assert (=> b!583303 m!561823))

(declare-fun m!561825 () Bool)

(assert (=> b!583309 m!561825))

(declare-fun m!561827 () Bool)

(assert (=> b!583310 m!561827))

(declare-fun m!561829 () Bool)

(assert (=> b!583304 m!561829))

(assert (=> b!583304 m!561829))

(declare-fun m!561831 () Bool)

(assert (=> b!583304 m!561831))

(declare-fun m!561833 () Bool)

(assert (=> start!53606 m!561833))

(declare-fun m!561835 () Bool)

(assert (=> start!53606 m!561835))

(declare-fun m!561837 () Bool)

(assert (=> b!583308 m!561837))

(assert (=> b!583302 m!561829))

(assert (=> b!583302 m!561829))

(declare-fun m!561839 () Bool)

(assert (=> b!583302 m!561839))

(push 1)

(assert (not b!583306))

(assert (not b!583303))

(assert (not start!53606))

(assert (not b!583302))

(assert (not b!583304))

(assert (not b!583308))

