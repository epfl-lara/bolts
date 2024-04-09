; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53780 () Bool)

(assert start!53780)

(declare-fun b!586342 () Bool)

(declare-fun res!374316 () Bool)

(declare-fun e!335183 () Bool)

(assert (=> b!586342 (=> (not res!374316) (not e!335183))))

(declare-datatypes ((array!36635 0))(
  ( (array!36636 (arr!17588 (Array (_ BitVec 32) (_ BitVec 64))) (size!17952 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36635)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586342 (= res!374316 (validKeyInArray!0 (select (arr!17588 a!2986) j!136)))))

(declare-fun b!586343 () Bool)

(declare-fun res!374314 () Bool)

(declare-fun e!335184 () Bool)

(assert (=> b!586343 (=> (not res!374314) (not e!335184))))

(declare-datatypes ((List!11682 0))(
  ( (Nil!11679) (Cons!11678 (h!12723 (_ BitVec 64)) (t!17918 List!11682)) )
))
(declare-fun arrayNoDuplicates!0 (array!36635 (_ BitVec 32) List!11682) Bool)

(assert (=> b!586343 (= res!374314 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11679))))

(declare-fun b!586344 () Bool)

(declare-fun res!374312 () Bool)

(assert (=> b!586344 (=> (not res!374312) (not e!335183))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36635 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586344 (= res!374312 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586345 () Bool)

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!586345 (= e!335184 (not (bvsge mask!3053 #b00000000000000000000000000000000)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!266084 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6035 0))(
  ( (MissingZero!6035 (index!26367 (_ BitVec 32))) (Found!6035 (index!26368 (_ BitVec 32))) (Intermediate!6035 (undefined!6847 Bool) (index!26369 (_ BitVec 32)) (x!55203 (_ BitVec 32))) (Undefined!6035) (MissingVacant!6035 (index!26370 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36635 (_ BitVec 32)) SeekEntryResult!6035)

(assert (=> b!586345 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266084 vacantSpotIndex!68 (select (arr!17588 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266084 vacantSpotIndex!68 (select (store (arr!17588 a!2986) i!1108 k!1786) j!136) (array!36636 (store (arr!17588 a!2986) i!1108 k!1786) (size!17952 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18194 0))(
  ( (Unit!18195) )
))
(declare-fun lt!266082 () Unit!18194)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36635 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18194)

(assert (=> b!586345 (= lt!266082 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266084 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586345 (= lt!266084 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586346 () Bool)

(declare-fun res!374313 () Bool)

(assert (=> b!586346 (=> (not res!374313) (not e!335183))))

(assert (=> b!586346 (= res!374313 (and (= (size!17952 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17952 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17952 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586348 () Bool)

(declare-fun res!374309 () Bool)

(assert (=> b!586348 (=> (not res!374309) (not e!335184))))

(assert (=> b!586348 (= res!374309 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17588 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17588 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586349 () Bool)

(declare-fun res!374317 () Bool)

(assert (=> b!586349 (=> (not res!374317) (not e!335183))))

(assert (=> b!586349 (= res!374317 (validKeyInArray!0 k!1786))))

(declare-fun b!586350 () Bool)

(declare-fun res!374310 () Bool)

(assert (=> b!586350 (=> (not res!374310) (not e!335184))))

(assert (=> b!586350 (= res!374310 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17588 a!2986) j!136) a!2986 mask!3053) (Found!6035 j!136)))))

(declare-fun b!586351 () Bool)

(declare-fun res!374311 () Bool)

(assert (=> b!586351 (=> (not res!374311) (not e!335184))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36635 (_ BitVec 32)) Bool)

(assert (=> b!586351 (= res!374311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!586352 () Bool)

(assert (=> b!586352 (= e!335183 e!335184)))

(declare-fun res!374308 () Bool)

(assert (=> b!586352 (=> (not res!374308) (not e!335184))))

(declare-fun lt!266083 () SeekEntryResult!6035)

(assert (=> b!586352 (= res!374308 (or (= lt!266083 (MissingZero!6035 i!1108)) (= lt!266083 (MissingVacant!6035 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36635 (_ BitVec 32)) SeekEntryResult!6035)

(assert (=> b!586352 (= lt!266083 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!374318 () Bool)

(assert (=> start!53780 (=> (not res!374318) (not e!335183))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53780 (= res!374318 (validMask!0 mask!3053))))

(assert (=> start!53780 e!335183))

(assert (=> start!53780 true))

(declare-fun array_inv!13362 (array!36635) Bool)

(assert (=> start!53780 (array_inv!13362 a!2986)))

(declare-fun b!586347 () Bool)

(declare-fun res!374315 () Bool)

(assert (=> b!586347 (=> (not res!374315) (not e!335184))))

(assert (=> b!586347 (= res!374315 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17588 a!2986) index!984) (select (arr!17588 a!2986) j!136))) (not (= (select (arr!17588 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (= (and start!53780 res!374318) b!586346))

(assert (= (and b!586346 res!374313) b!586342))

(assert (= (and b!586342 res!374316) b!586349))

(assert (= (and b!586349 res!374317) b!586344))

(assert (= (and b!586344 res!374312) b!586352))

(assert (= (and b!586352 res!374308) b!586351))

(assert (= (and b!586351 res!374311) b!586343))

(assert (= (and b!586343 res!374314) b!586348))

(assert (= (and b!586348 res!374309) b!586350))

(assert (= (and b!586350 res!374310) b!586347))

(assert (= (and b!586347 res!374315) b!586345))

(declare-fun m!564767 () Bool)

(assert (=> b!586349 m!564767))

(declare-fun m!564769 () Bool)

(assert (=> b!586352 m!564769))

(declare-fun m!564771 () Bool)

(assert (=> b!586348 m!564771))

(declare-fun m!564773 () Bool)

(assert (=> b!586348 m!564773))

(declare-fun m!564775 () Bool)

(assert (=> b!586348 m!564775))

(declare-fun m!564777 () Bool)

(assert (=> start!53780 m!564777))

(declare-fun m!564779 () Bool)

(assert (=> start!53780 m!564779))

(declare-fun m!564781 () Bool)

(assert (=> b!586344 m!564781))

(declare-fun m!564783 () Bool)

(assert (=> b!586345 m!564783))

(declare-fun m!564785 () Bool)

(assert (=> b!586345 m!564785))

(assert (=> b!586345 m!564785))

(declare-fun m!564787 () Bool)

(assert (=> b!586345 m!564787))

(assert (=> b!586345 m!564773))

(declare-fun m!564789 () Bool)

(assert (=> b!586345 m!564789))

(declare-fun m!564791 () Bool)

(assert (=> b!586345 m!564791))

(assert (=> b!586345 m!564783))

(declare-fun m!564793 () Bool)

(assert (=> b!586345 m!564793))

(assert (=> b!586350 m!564785))

(assert (=> b!586350 m!564785))

(declare-fun m!564795 () Bool)

(assert (=> b!586350 m!564795))

(declare-fun m!564797 () Bool)

(assert (=> b!586347 m!564797))

(assert (=> b!586347 m!564785))

(declare-fun m!564799 () Bool)

(assert (=> b!586343 m!564799))

(declare-fun m!564801 () Bool)

(assert (=> b!586351 m!564801))

(assert (=> b!586342 m!564785))

(assert (=> b!586342 m!564785))

(declare-fun m!564803 () Bool)

(assert (=> b!586342 m!564803))

(push 1)

