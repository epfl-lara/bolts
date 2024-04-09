; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53462 () Bool)

(assert start!53462)

(declare-fun b!581331 () Bool)

(declare-fun res!369303 () Bool)

(declare-fun e!333581 () Bool)

(assert (=> b!581331 (=> (not res!369303) (not e!333581))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36317 0))(
  ( (array!36318 (arr!17429 (Array (_ BitVec 32) (_ BitVec 64))) (size!17793 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36317)

(assert (=> b!581331 (= res!369303 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17429 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17429 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581332 () Bool)

(declare-fun res!369297 () Bool)

(declare-fun e!333583 () Bool)

(assert (=> b!581332 (=> (not res!369297) (not e!333583))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!581332 (= res!369297 (and (= (size!17793 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17793 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17793 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581333 () Bool)

(declare-fun res!369301 () Bool)

(assert (=> b!581333 (=> (not res!369301) (not e!333581))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36317 (_ BitVec 32)) Bool)

(assert (=> b!581333 (= res!369301 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581334 () Bool)

(assert (=> b!581334 (= e!333583 e!333581)))

(declare-fun res!369299 () Bool)

(assert (=> b!581334 (=> (not res!369299) (not e!333581))))

(declare-datatypes ((SeekEntryResult!5876 0))(
  ( (MissingZero!5876 (index!25731 (_ BitVec 32))) (Found!5876 (index!25732 (_ BitVec 32))) (Intermediate!5876 (undefined!6688 Bool) (index!25733 (_ BitVec 32)) (x!54620 (_ BitVec 32))) (Undefined!5876) (MissingVacant!5876 (index!25734 (_ BitVec 32))) )
))
(declare-fun lt!264887 () SeekEntryResult!5876)

(assert (=> b!581334 (= res!369299 (or (= lt!264887 (MissingZero!5876 i!1108)) (= lt!264887 (MissingVacant!5876 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36317 (_ BitVec 32)) SeekEntryResult!5876)

(assert (=> b!581334 (= lt!264887 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun res!369304 () Bool)

(assert (=> start!53462 (=> (not res!369304) (not e!333583))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53462 (= res!369304 (validMask!0 mask!3053))))

(assert (=> start!53462 e!333583))

(assert (=> start!53462 true))

(declare-fun array_inv!13203 (array!36317) Bool)

(assert (=> start!53462 (array_inv!13203 a!2986)))

(declare-fun b!581335 () Bool)

(declare-fun res!369298 () Bool)

(assert (=> b!581335 (=> (not res!369298) (not e!333583))))

(declare-fun arrayContainsKey!0 (array!36317 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581335 (= res!369298 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581336 () Bool)

(declare-fun res!369305 () Bool)

(assert (=> b!581336 (=> (not res!369305) (not e!333581))))

(declare-datatypes ((List!11523 0))(
  ( (Nil!11520) (Cons!11519 (h!12564 (_ BitVec 64)) (t!17759 List!11523)) )
))
(declare-fun arrayNoDuplicates!0 (array!36317 (_ BitVec 32) List!11523) Bool)

(assert (=> b!581336 (= res!369305 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11520))))

(declare-fun b!581337 () Bool)

(assert (=> b!581337 (= e!333581 false)))

(declare-fun lt!264886 () SeekEntryResult!5876)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36317 (_ BitVec 32)) SeekEntryResult!5876)

(assert (=> b!581337 (= lt!264886 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17429 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581338 () Bool)

(declare-fun res!369300 () Bool)

(assert (=> b!581338 (=> (not res!369300) (not e!333583))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581338 (= res!369300 (validKeyInArray!0 k!1786))))

(declare-fun b!581339 () Bool)

(declare-fun res!369302 () Bool)

(assert (=> b!581339 (=> (not res!369302) (not e!333583))))

(assert (=> b!581339 (= res!369302 (validKeyInArray!0 (select (arr!17429 a!2986) j!136)))))

(assert (= (and start!53462 res!369304) b!581332))

(assert (= (and b!581332 res!369297) b!581339))

(assert (= (and b!581339 res!369302) b!581338))

(assert (= (and b!581338 res!369300) b!581335))

(assert (= (and b!581335 res!369298) b!581334))

(assert (= (and b!581334 res!369299) b!581333))

(assert (= (and b!581333 res!369301) b!581336))

(assert (= (and b!581336 res!369305) b!581331))

(assert (= (and b!581331 res!369303) b!581337))

(declare-fun m!559919 () Bool)

(assert (=> b!581333 m!559919))

(declare-fun m!559921 () Bool)

(assert (=> b!581331 m!559921))

(declare-fun m!559923 () Bool)

(assert (=> b!581331 m!559923))

(declare-fun m!559925 () Bool)

(assert (=> b!581331 m!559925))

(declare-fun m!559927 () Bool)

(assert (=> b!581334 m!559927))

(declare-fun m!559929 () Bool)

(assert (=> start!53462 m!559929))

(declare-fun m!559931 () Bool)

(assert (=> start!53462 m!559931))

(declare-fun m!559933 () Bool)

(assert (=> b!581338 m!559933))

(declare-fun m!559935 () Bool)

(assert (=> b!581337 m!559935))

(assert (=> b!581337 m!559935))

(declare-fun m!559937 () Bool)

(assert (=> b!581337 m!559937))

(declare-fun m!559939 () Bool)

(assert (=> b!581335 m!559939))

(assert (=> b!581339 m!559935))

(assert (=> b!581339 m!559935))

(declare-fun m!559941 () Bool)

(assert (=> b!581339 m!559941))

(declare-fun m!559943 () Bool)

(assert (=> b!581336 m!559943))

(push 1)

(assert (not start!53462))

(assert (not b!581338))

(assert (not b!581339))

(assert (not b!581333))

(assert (not b!581335))

