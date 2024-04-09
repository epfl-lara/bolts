; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53308 () Bool)

(assert start!53308)

(declare-fun b!579234 () Bool)

(declare-fun res!367200 () Bool)

(declare-fun e!332889 () Bool)

(assert (=> b!579234 (=> (not res!367200) (not e!332889))))

(declare-datatypes ((array!36163 0))(
  ( (array!36164 (arr!17352 (Array (_ BitVec 32) (_ BitVec 64))) (size!17716 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36163)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36163 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579234 (= res!367200 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579235 () Bool)

(declare-fun e!332890 () Bool)

(assert (=> b!579235 (= e!332890 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5799 0))(
  ( (MissingZero!5799 (index!25423 (_ BitVec 32))) (Found!5799 (index!25424 (_ BitVec 32))) (Intermediate!5799 (undefined!6611 Bool) (index!25425 (_ BitVec 32)) (x!54343 (_ BitVec 32))) (Undefined!5799) (MissingVacant!5799 (index!25426 (_ BitVec 32))) )
))
(declare-fun lt!264442 () SeekEntryResult!5799)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36163 (_ BitVec 32)) SeekEntryResult!5799)

(assert (=> b!579235 (= lt!264442 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17352 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579236 () Bool)

(declare-fun res!367207 () Bool)

(assert (=> b!579236 (=> (not res!367207) (not e!332890))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!579236 (= res!367207 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17352 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17352 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579237 () Bool)

(declare-fun res!367202 () Bool)

(assert (=> b!579237 (=> (not res!367202) (not e!332889))))

(assert (=> b!579237 (= res!367202 (and (= (size!17716 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17716 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17716 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579238 () Bool)

(declare-fun res!367203 () Bool)

(assert (=> b!579238 (=> (not res!367203) (not e!332889))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579238 (= res!367203 (validKeyInArray!0 (select (arr!17352 a!2986) j!136)))))

(declare-fun b!579239 () Bool)

(declare-fun res!367205 () Bool)

(assert (=> b!579239 (=> (not res!367205) (not e!332890))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36163 (_ BitVec 32)) Bool)

(assert (=> b!579239 (= res!367205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579240 () Bool)

(declare-fun res!367206 () Bool)

(assert (=> b!579240 (=> (not res!367206) (not e!332890))))

(declare-datatypes ((List!11446 0))(
  ( (Nil!11443) (Cons!11442 (h!12487 (_ BitVec 64)) (t!17682 List!11446)) )
))
(declare-fun arrayNoDuplicates!0 (array!36163 (_ BitVec 32) List!11446) Bool)

(assert (=> b!579240 (= res!367206 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11443))))

(declare-fun b!579241 () Bool)

(assert (=> b!579241 (= e!332889 e!332890)))

(declare-fun res!367201 () Bool)

(assert (=> b!579241 (=> (not res!367201) (not e!332890))))

(declare-fun lt!264443 () SeekEntryResult!5799)

(assert (=> b!579241 (= res!367201 (or (= lt!264443 (MissingZero!5799 i!1108)) (= lt!264443 (MissingVacant!5799 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36163 (_ BitVec 32)) SeekEntryResult!5799)

(assert (=> b!579241 (= lt!264443 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!579242 () Bool)

(declare-fun res!367208 () Bool)

(assert (=> b!579242 (=> (not res!367208) (not e!332889))))

(assert (=> b!579242 (= res!367208 (validKeyInArray!0 k!1786))))

(declare-fun res!367204 () Bool)

(assert (=> start!53308 (=> (not res!367204) (not e!332889))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53308 (= res!367204 (validMask!0 mask!3053))))

(assert (=> start!53308 e!332889))

(assert (=> start!53308 true))

(declare-fun array_inv!13126 (array!36163) Bool)

(assert (=> start!53308 (array_inv!13126 a!2986)))

(assert (= (and start!53308 res!367204) b!579237))

(assert (= (and b!579237 res!367202) b!579238))

(assert (= (and b!579238 res!367203) b!579242))

(assert (= (and b!579242 res!367208) b!579234))

(assert (= (and b!579234 res!367200) b!579241))

(assert (= (and b!579241 res!367201) b!579239))

(assert (= (and b!579239 res!367205) b!579240))

(assert (= (and b!579240 res!367206) b!579236))

(assert (= (and b!579236 res!367207) b!579235))

(declare-fun m!557905 () Bool)

(assert (=> start!53308 m!557905))

(declare-fun m!557907 () Bool)

(assert (=> start!53308 m!557907))

(declare-fun m!557909 () Bool)

(assert (=> b!579234 m!557909))

(declare-fun m!557911 () Bool)

(assert (=> b!579240 m!557911))

(declare-fun m!557913 () Bool)

(assert (=> b!579238 m!557913))

(assert (=> b!579238 m!557913))

(declare-fun m!557915 () Bool)

(assert (=> b!579238 m!557915))

(declare-fun m!557917 () Bool)

(assert (=> b!579242 m!557917))

(declare-fun m!557919 () Bool)

(assert (=> b!579241 m!557919))

(declare-fun m!557921 () Bool)

(assert (=> b!579236 m!557921))

(declare-fun m!557923 () Bool)

(assert (=> b!579236 m!557923))

(declare-fun m!557925 () Bool)

(assert (=> b!579236 m!557925))

(declare-fun m!557927 () Bool)

(assert (=> b!579239 m!557927))

(assert (=> b!579235 m!557913))

(assert (=> b!579235 m!557913))

(declare-fun m!557929 () Bool)

(assert (=> b!579235 m!557929))

(push 1)

