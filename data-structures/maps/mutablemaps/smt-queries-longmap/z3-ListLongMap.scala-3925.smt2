; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53580 () Bool)

(assert start!53580)

(declare-fun b!582942 () Bool)

(declare-fun e!334113 () Bool)

(declare-fun e!334112 () Bool)

(assert (=> b!582942 (= e!334113 e!334112)))

(declare-fun res!370915 () Bool)

(assert (=> b!582942 (=> (not res!370915) (not e!334112))))

(declare-datatypes ((SeekEntryResult!5935 0))(
  ( (MissingZero!5935 (index!25967 (_ BitVec 32))) (Found!5935 (index!25968 (_ BitVec 32))) (Intermediate!5935 (undefined!6747 Bool) (index!25969 (_ BitVec 32)) (x!54839 (_ BitVec 32))) (Undefined!5935) (MissingVacant!5935 (index!25970 (_ BitVec 32))) )
))
(declare-fun lt!265231 () SeekEntryResult!5935)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!582942 (= res!370915 (or (= lt!265231 (MissingZero!5935 i!1108)) (= lt!265231 (MissingVacant!5935 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!36435 0))(
  ( (array!36436 (arr!17488 (Array (_ BitVec 32) (_ BitVec 64))) (size!17852 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36435)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36435 (_ BitVec 32)) SeekEntryResult!5935)

(assert (=> b!582942 (= lt!265231 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!582943 () Bool)

(declare-fun res!370909 () Bool)

(assert (=> b!582943 (=> (not res!370909) (not e!334113))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!582943 (= res!370909 (and (= (size!17852 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17852 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17852 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582944 () Bool)

(declare-fun res!370914 () Bool)

(assert (=> b!582944 (=> (not res!370914) (not e!334112))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!582944 (= res!370914 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17488 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17488 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!370913 () Bool)

(assert (=> start!53580 (=> (not res!370913) (not e!334113))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53580 (= res!370913 (validMask!0 mask!3053))))

(assert (=> start!53580 e!334113))

(assert (=> start!53580 true))

(declare-fun array_inv!13262 (array!36435) Bool)

(assert (=> start!53580 (array_inv!13262 a!2986)))

(declare-fun b!582945 () Bool)

(assert (=> b!582945 (= e!334112 false)))

(declare-fun lt!265232 () SeekEntryResult!5935)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36435 (_ BitVec 32)) SeekEntryResult!5935)

(assert (=> b!582945 (= lt!265232 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17488 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582946 () Bool)

(declare-fun res!370912 () Bool)

(assert (=> b!582946 (=> (not res!370912) (not e!334112))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36435 (_ BitVec 32)) Bool)

(assert (=> b!582946 (= res!370912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582947 () Bool)

(declare-fun res!370916 () Bool)

(assert (=> b!582947 (=> (not res!370916) (not e!334113))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582947 (= res!370916 (validKeyInArray!0 k0!1786))))

(declare-fun b!582948 () Bool)

(declare-fun res!370911 () Bool)

(assert (=> b!582948 (=> (not res!370911) (not e!334113))))

(declare-fun arrayContainsKey!0 (array!36435 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582948 (= res!370911 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582949 () Bool)

(declare-fun res!370908 () Bool)

(assert (=> b!582949 (=> (not res!370908) (not e!334112))))

(declare-datatypes ((List!11582 0))(
  ( (Nil!11579) (Cons!11578 (h!12623 (_ BitVec 64)) (t!17818 List!11582)) )
))
(declare-fun arrayNoDuplicates!0 (array!36435 (_ BitVec 32) List!11582) Bool)

(assert (=> b!582949 (= res!370908 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11579))))

(declare-fun b!582950 () Bool)

(declare-fun res!370910 () Bool)

(assert (=> b!582950 (=> (not res!370910) (not e!334113))))

(assert (=> b!582950 (= res!370910 (validKeyInArray!0 (select (arr!17488 a!2986) j!136)))))

(assert (= (and start!53580 res!370913) b!582943))

(assert (= (and b!582943 res!370909) b!582950))

(assert (= (and b!582950 res!370910) b!582947))

(assert (= (and b!582947 res!370916) b!582948))

(assert (= (and b!582948 res!370911) b!582942))

(assert (= (and b!582942 res!370915) b!582946))

(assert (= (and b!582946 res!370912) b!582949))

(assert (= (and b!582949 res!370908) b!582944))

(assert (= (and b!582944 res!370914) b!582945))

(declare-fun m!561471 () Bool)

(assert (=> b!582948 m!561471))

(declare-fun m!561473 () Bool)

(assert (=> b!582947 m!561473))

(declare-fun m!561475 () Bool)

(assert (=> b!582950 m!561475))

(assert (=> b!582950 m!561475))

(declare-fun m!561477 () Bool)

(assert (=> b!582950 m!561477))

(declare-fun m!561479 () Bool)

(assert (=> b!582942 m!561479))

(declare-fun m!561481 () Bool)

(assert (=> b!582949 m!561481))

(declare-fun m!561483 () Bool)

(assert (=> b!582946 m!561483))

(declare-fun m!561485 () Bool)

(assert (=> b!582944 m!561485))

(declare-fun m!561487 () Bool)

(assert (=> b!582944 m!561487))

(declare-fun m!561489 () Bool)

(assert (=> b!582944 m!561489))

(assert (=> b!582945 m!561475))

(assert (=> b!582945 m!561475))

(declare-fun m!561491 () Bool)

(assert (=> b!582945 m!561491))

(declare-fun m!561493 () Bool)

(assert (=> start!53580 m!561493))

(declare-fun m!561495 () Bool)

(assert (=> start!53580 m!561495))

(check-sat (not b!582948) (not b!582945) (not b!582942) (not b!582949) (not b!582947) (not b!582946) (not b!582950) (not start!53580))
(check-sat)
