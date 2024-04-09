; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53638 () Bool)

(assert start!53638)

(declare-fun b!583875 () Bool)

(declare-fun res!371848 () Bool)

(declare-fun e!334423 () Bool)

(assert (=> b!583875 (=> (not res!371848) (not e!334423))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36493 0))(
  ( (array!36494 (arr!17517 (Array (_ BitVec 32) (_ BitVec 64))) (size!17881 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36493)

(assert (=> b!583875 (= res!371848 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17517 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17517 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!371844 () Bool)

(declare-fun e!334421 () Bool)

(assert (=> start!53638 (=> (not res!371844) (not e!334421))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53638 (= res!371844 (validMask!0 mask!3053))))

(assert (=> start!53638 e!334421))

(assert (=> start!53638 true))

(declare-fun array_inv!13291 (array!36493) Bool)

(assert (=> start!53638 (array_inv!13291 a!2986)))

(declare-fun b!583876 () Bool)

(declare-fun res!371847 () Bool)

(assert (=> b!583876 (=> (not res!371847) (not e!334421))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!583876 (= res!371847 (and (= (size!17881 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17881 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17881 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!583877 () Bool)

(declare-fun res!371846 () Bool)

(assert (=> b!583877 (=> (not res!371846) (not e!334423))))

(assert (=> b!583877 (= res!371846 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17517 a!2986) index!984) (select (arr!17517 a!2986) j!136))) (not (= (select (arr!17517 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!583878 () Bool)

(declare-fun res!371850 () Bool)

(assert (=> b!583878 (=> (not res!371850) (not e!334421))))

(declare-fun arrayContainsKey!0 (array!36493 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!583878 (= res!371850 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!583879 () Bool)

(declare-fun res!371845 () Bool)

(assert (=> b!583879 (=> (not res!371845) (not e!334421))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!583879 (= res!371845 (validKeyInArray!0 (select (arr!17517 a!2986) j!136)))))

(declare-fun b!583880 () Bool)

(declare-fun e!334422 () Bool)

(assert (=> b!583880 (= e!334423 e!334422)))

(declare-fun res!371841 () Bool)

(assert (=> b!583880 (=> (not res!371841) (not e!334422))))

(declare-fun lt!265444 () (_ BitVec 32))

(assert (=> b!583880 (= res!371841 (and (bvsge lt!265444 #b00000000000000000000000000000000) (bvslt lt!265444 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!583880 (= lt!265444 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!583881 () Bool)

(declare-fun res!371849 () Bool)

(assert (=> b!583881 (=> (not res!371849) (not e!334423))))

(declare-datatypes ((List!11611 0))(
  ( (Nil!11608) (Cons!11607 (h!12652 (_ BitVec 64)) (t!17847 List!11611)) )
))
(declare-fun arrayNoDuplicates!0 (array!36493 (_ BitVec 32) List!11611) Bool)

(assert (=> b!583881 (= res!371849 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11608))))

(declare-fun b!583882 () Bool)

(assert (=> b!583882 (= e!334421 e!334423)))

(declare-fun res!371851 () Bool)

(assert (=> b!583882 (=> (not res!371851) (not e!334423))))

(declare-datatypes ((SeekEntryResult!5964 0))(
  ( (MissingZero!5964 (index!26083 (_ BitVec 32))) (Found!5964 (index!26084 (_ BitVec 32))) (Intermediate!5964 (undefined!6776 Bool) (index!26085 (_ BitVec 32)) (x!54948 (_ BitVec 32))) (Undefined!5964) (MissingVacant!5964 (index!26086 (_ BitVec 32))) )
))
(declare-fun lt!265443 () SeekEntryResult!5964)

(assert (=> b!583882 (= res!371851 (or (= lt!265443 (MissingZero!5964 i!1108)) (= lt!265443 (MissingVacant!5964 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36493 (_ BitVec 32)) SeekEntryResult!5964)

(assert (=> b!583882 (= lt!265443 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!583883 () Bool)

(assert (=> b!583883 (= e!334422 false)))

(declare-fun lt!265445 () SeekEntryResult!5964)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36493 (_ BitVec 32)) SeekEntryResult!5964)

(assert (=> b!583883 (= lt!265445 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265444 vacantSpotIndex!68 (select (arr!17517 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!583884 () Bool)

(declare-fun res!371843 () Bool)

(assert (=> b!583884 (=> (not res!371843) (not e!334423))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36493 (_ BitVec 32)) Bool)

(assert (=> b!583884 (= res!371843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!583885 () Bool)

(declare-fun res!371842 () Bool)

(assert (=> b!583885 (=> (not res!371842) (not e!334423))))

(assert (=> b!583885 (= res!371842 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17517 a!2986) j!136) a!2986 mask!3053) (Found!5964 j!136)))))

(declare-fun b!583886 () Bool)

(declare-fun res!371852 () Bool)

(assert (=> b!583886 (=> (not res!371852) (not e!334421))))

(assert (=> b!583886 (= res!371852 (validKeyInArray!0 k!1786))))

(assert (= (and start!53638 res!371844) b!583876))

(assert (= (and b!583876 res!371847) b!583879))

(assert (= (and b!583879 res!371845) b!583886))

(assert (= (and b!583886 res!371852) b!583878))

(assert (= (and b!583878 res!371850) b!583882))

(assert (= (and b!583882 res!371851) b!583884))

(assert (= (and b!583884 res!371843) b!583881))

(assert (= (and b!583881 res!371849) b!583875))

(assert (= (and b!583875 res!371848) b!583885))

(assert (= (and b!583885 res!371842) b!583877))

(assert (= (and b!583877 res!371846) b!583880))

(assert (= (and b!583880 res!371841) b!583883))

(declare-fun m!562321 () Bool)

(assert (=> b!583880 m!562321))

(declare-fun m!562323 () Bool)

(assert (=> b!583875 m!562323))

(declare-fun m!562325 () Bool)

(assert (=> b!583875 m!562325))

(declare-fun m!562327 () Bool)

(assert (=> b!583875 m!562327))

(declare-fun m!562329 () Bool)

(assert (=> b!583881 m!562329))

(declare-fun m!562331 () Bool)

(assert (=> b!583882 m!562331))

(declare-fun m!562333 () Bool)

(assert (=> b!583883 m!562333))

(assert (=> b!583883 m!562333))

(declare-fun m!562335 () Bool)

(assert (=> b!583883 m!562335))

(assert (=> b!583885 m!562333))

(assert (=> b!583885 m!562333))

(declare-fun m!562337 () Bool)

(assert (=> b!583885 m!562337))

(declare-fun m!562339 () Bool)

(assert (=> b!583884 m!562339))

(declare-fun m!562341 () Bool)

(assert (=> b!583878 m!562341))

(assert (=> b!583879 m!562333))

(assert (=> b!583879 m!562333))

(declare-fun m!562343 () Bool)

(assert (=> b!583879 m!562343))

(declare-fun m!562345 () Bool)

(assert (=> b!583886 m!562345))

(declare-fun m!562347 () Bool)

(assert (=> b!583877 m!562347))

(assert (=> b!583877 m!562333))

(declare-fun m!562349 () Bool)

(assert (=> start!53638 m!562349))

(declare-fun m!562351 () Bool)

(assert (=> start!53638 m!562351))

(push 1)

