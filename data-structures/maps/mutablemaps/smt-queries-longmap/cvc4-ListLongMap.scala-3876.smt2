; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53288 () Bool)

(assert start!53288)

(declare-fun b!578964 () Bool)

(declare-fun res!366938 () Bool)

(declare-fun e!332799 () Bool)

(assert (=> b!578964 (=> (not res!366938) (not e!332799))))

(declare-datatypes ((array!36143 0))(
  ( (array!36144 (arr!17342 (Array (_ BitVec 32) (_ BitVec 64))) (size!17706 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36143)

(declare-datatypes ((List!11436 0))(
  ( (Nil!11433) (Cons!11432 (h!12477 (_ BitVec 64)) (t!17672 List!11436)) )
))
(declare-fun arrayNoDuplicates!0 (array!36143 (_ BitVec 32) List!11436) Bool)

(assert (=> b!578964 (= res!366938 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11433))))

(declare-fun b!578965 () Bool)

(declare-fun e!332800 () Bool)

(assert (=> b!578965 (= e!332800 e!332799)))

(declare-fun res!366937 () Bool)

(assert (=> b!578965 (=> (not res!366937) (not e!332799))))

(declare-datatypes ((SeekEntryResult!5789 0))(
  ( (MissingZero!5789 (index!25383 (_ BitVec 32))) (Found!5789 (index!25384 (_ BitVec 32))) (Intermediate!5789 (undefined!6601 Bool) (index!25385 (_ BitVec 32)) (x!54301 (_ BitVec 32))) (Undefined!5789) (MissingVacant!5789 (index!25386 (_ BitVec 32))) )
))
(declare-fun lt!264383 () SeekEntryResult!5789)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578965 (= res!366937 (or (= lt!264383 (MissingZero!5789 i!1108)) (= lt!264383 (MissingVacant!5789 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36143 (_ BitVec 32)) SeekEntryResult!5789)

(assert (=> b!578965 (= lt!264383 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!578966 () Bool)

(declare-fun res!366932 () Bool)

(assert (=> b!578966 (=> (not res!366932) (not e!332800))))

(declare-fun arrayContainsKey!0 (array!36143 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578966 (= res!366932 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!366935 () Bool)

(assert (=> start!53288 (=> (not res!366935) (not e!332800))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53288 (= res!366935 (validMask!0 mask!3053))))

(assert (=> start!53288 e!332800))

(assert (=> start!53288 true))

(declare-fun array_inv!13116 (array!36143) Bool)

(assert (=> start!53288 (array_inv!13116 a!2986)))

(declare-fun b!578967 () Bool)

(declare-fun res!366934 () Bool)

(assert (=> b!578967 (=> (not res!366934) (not e!332799))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36143 (_ BitVec 32)) Bool)

(assert (=> b!578967 (= res!366934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578968 () Bool)

(declare-fun res!366930 () Bool)

(assert (=> b!578968 (=> (not res!366930) (not e!332799))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!578968 (= res!366930 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17342 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17342 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!578969 () Bool)

(declare-fun res!366931 () Bool)

(assert (=> b!578969 (=> (not res!366931) (not e!332800))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!578969 (= res!366931 (and (= (size!17706 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17706 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17706 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578970 () Bool)

(assert (=> b!578970 (= e!332799 false)))

(declare-fun lt!264382 () SeekEntryResult!5789)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36143 (_ BitVec 32)) SeekEntryResult!5789)

(assert (=> b!578970 (= lt!264382 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17342 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!578971 () Bool)

(declare-fun res!366933 () Bool)

(assert (=> b!578971 (=> (not res!366933) (not e!332800))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578971 (= res!366933 (validKeyInArray!0 k!1786))))

(declare-fun b!578972 () Bool)

(declare-fun res!366936 () Bool)

(assert (=> b!578972 (=> (not res!366936) (not e!332800))))

(assert (=> b!578972 (= res!366936 (validKeyInArray!0 (select (arr!17342 a!2986) j!136)))))

(assert (= (and start!53288 res!366935) b!578969))

(assert (= (and b!578969 res!366931) b!578972))

(assert (= (and b!578972 res!366936) b!578971))

(assert (= (and b!578971 res!366933) b!578966))

(assert (= (and b!578966 res!366932) b!578965))

(assert (= (and b!578965 res!366937) b!578967))

(assert (= (and b!578967 res!366934) b!578964))

(assert (= (and b!578964 res!366938) b!578968))

(assert (= (and b!578968 res!366930) b!578970))

(declare-fun m!557645 () Bool)

(assert (=> b!578971 m!557645))

(declare-fun m!557647 () Bool)

(assert (=> b!578968 m!557647))

(declare-fun m!557649 () Bool)

(assert (=> b!578968 m!557649))

(declare-fun m!557651 () Bool)

(assert (=> b!578968 m!557651))

(declare-fun m!557653 () Bool)

(assert (=> b!578964 m!557653))

(declare-fun m!557655 () Bool)

(assert (=> b!578966 m!557655))

(declare-fun m!557657 () Bool)

(assert (=> b!578967 m!557657))

(declare-fun m!557659 () Bool)

(assert (=> b!578972 m!557659))

(assert (=> b!578972 m!557659))

(declare-fun m!557661 () Bool)

(assert (=> b!578972 m!557661))

(declare-fun m!557663 () Bool)

(assert (=> b!578965 m!557663))

(declare-fun m!557665 () Bool)

(assert (=> start!53288 m!557665))

(declare-fun m!557667 () Bool)

(assert (=> start!53288 m!557667))

(assert (=> b!578970 m!557659))

(assert (=> b!578970 m!557659))

(declare-fun m!557669 () Bool)

(assert (=> b!578970 m!557669))

(push 1)

(assert (not b!578964))

