; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53698 () Bool)

(assert start!53698)

(declare-fun b!584955 () Bool)

(declare-fun e!334783 () Bool)

(assert (=> b!584955 (= e!334783 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!265713 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!36553 0))(
  ( (array!36554 (arr!17547 (Array (_ BitVec 32) (_ BitVec 64))) (size!17911 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36553)

(declare-datatypes ((SeekEntryResult!5994 0))(
  ( (MissingZero!5994 (index!26203 (_ BitVec 32))) (Found!5994 (index!26204 (_ BitVec 32))) (Intermediate!5994 (undefined!6806 Bool) (index!26205 (_ BitVec 32)) (x!55058 (_ BitVec 32))) (Undefined!5994) (MissingVacant!5994 (index!26206 (_ BitVec 32))) )
))
(declare-fun lt!265714 () SeekEntryResult!5994)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36553 (_ BitVec 32)) SeekEntryResult!5994)

(assert (=> b!584955 (= lt!265714 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265713 vacantSpotIndex!68 (select (arr!17547 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!372929 () Bool)

(declare-fun e!334782 () Bool)

(assert (=> start!53698 (=> (not res!372929) (not e!334782))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53698 (= res!372929 (validMask!0 mask!3053))))

(assert (=> start!53698 e!334782))

(assert (=> start!53698 true))

(declare-fun array_inv!13321 (array!36553) Bool)

(assert (=> start!53698 (array_inv!13321 a!2986)))

(declare-fun b!584956 () Bool)

(declare-fun res!372921 () Bool)

(assert (=> b!584956 (=> (not res!372921) (not e!334782))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!584956 (= res!372921 (and (= (size!17911 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17911 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17911 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!584957 () Bool)

(declare-fun res!372931 () Bool)

(declare-fun e!334781 () Bool)

(assert (=> b!584957 (=> (not res!372931) (not e!334781))))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!584957 (= res!372931 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17547 a!2986) j!136) a!2986 mask!3053) (Found!5994 j!136)))))

(declare-fun b!584958 () Bool)

(declare-fun res!372932 () Bool)

(assert (=> b!584958 (=> (not res!372932) (not e!334781))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36553 (_ BitVec 32)) Bool)

(assert (=> b!584958 (= res!372932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!584959 () Bool)

(assert (=> b!584959 (= e!334781 e!334783)))

(declare-fun res!372924 () Bool)

(assert (=> b!584959 (=> (not res!372924) (not e!334783))))

(assert (=> b!584959 (= res!372924 (and (bvsge lt!265713 #b00000000000000000000000000000000) (bvslt lt!265713 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584959 (= lt!265713 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!584960 () Bool)

(declare-fun res!372926 () Bool)

(assert (=> b!584960 (=> (not res!372926) (not e!334782))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36553 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584960 (= res!372926 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584961 () Bool)

(declare-fun res!372927 () Bool)

(assert (=> b!584961 (=> (not res!372927) (not e!334782))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584961 (= res!372927 (validKeyInArray!0 (select (arr!17547 a!2986) j!136)))))

(declare-fun b!584962 () Bool)

(declare-fun res!372922 () Bool)

(assert (=> b!584962 (=> (not res!372922) (not e!334781))))

(declare-datatypes ((List!11641 0))(
  ( (Nil!11638) (Cons!11637 (h!12682 (_ BitVec 64)) (t!17877 List!11641)) )
))
(declare-fun arrayNoDuplicates!0 (array!36553 (_ BitVec 32) List!11641) Bool)

(assert (=> b!584962 (= res!372922 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11638))))

(declare-fun b!584963 () Bool)

(assert (=> b!584963 (= e!334782 e!334781)))

(declare-fun res!372923 () Bool)

(assert (=> b!584963 (=> (not res!372923) (not e!334781))))

(declare-fun lt!265715 () SeekEntryResult!5994)

(assert (=> b!584963 (= res!372923 (or (= lt!265715 (MissingZero!5994 i!1108)) (= lt!265715 (MissingVacant!5994 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36553 (_ BitVec 32)) SeekEntryResult!5994)

(assert (=> b!584963 (= lt!265715 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!584964 () Bool)

(declare-fun res!372930 () Bool)

(assert (=> b!584964 (=> (not res!372930) (not e!334782))))

(assert (=> b!584964 (= res!372930 (validKeyInArray!0 k!1786))))

(declare-fun b!584965 () Bool)

(declare-fun res!372925 () Bool)

(assert (=> b!584965 (=> (not res!372925) (not e!334781))))

(assert (=> b!584965 (= res!372925 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17547 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17547 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!584966 () Bool)

(declare-fun res!372928 () Bool)

(assert (=> b!584966 (=> (not res!372928) (not e!334781))))

(assert (=> b!584966 (= res!372928 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17547 a!2986) index!984) (select (arr!17547 a!2986) j!136))) (not (= (select (arr!17547 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (= (and start!53698 res!372929) b!584956))

(assert (= (and b!584956 res!372921) b!584961))

(assert (= (and b!584961 res!372927) b!584964))

(assert (= (and b!584964 res!372930) b!584960))

(assert (= (and b!584960 res!372926) b!584963))

(assert (= (and b!584963 res!372923) b!584958))

(assert (= (and b!584958 res!372932) b!584962))

(assert (= (and b!584962 res!372922) b!584965))

(assert (= (and b!584965 res!372925) b!584957))

(assert (= (and b!584957 res!372931) b!584966))

(assert (= (and b!584966 res!372928) b!584959))

(assert (= (and b!584959 res!372924) b!584955))

(declare-fun m!563281 () Bool)

(assert (=> b!584955 m!563281))

(assert (=> b!584955 m!563281))

(declare-fun m!563283 () Bool)

(assert (=> b!584955 m!563283))

(assert (=> b!584957 m!563281))

(assert (=> b!584957 m!563281))

(declare-fun m!563285 () Bool)

(assert (=> b!584957 m!563285))

(declare-fun m!563287 () Bool)

(assert (=> b!584965 m!563287))

(declare-fun m!563289 () Bool)

(assert (=> b!584965 m!563289))

(declare-fun m!563291 () Bool)

(assert (=> b!584965 m!563291))

(declare-fun m!563293 () Bool)

(assert (=> start!53698 m!563293))

(declare-fun m!563295 () Bool)

(assert (=> start!53698 m!563295))

(declare-fun m!563297 () Bool)

(assert (=> b!584963 m!563297))

(declare-fun m!563299 () Bool)

(assert (=> b!584959 m!563299))

(declare-fun m!563301 () Bool)

(assert (=> b!584964 m!563301))

(declare-fun m!563303 () Bool)

(assert (=> b!584958 m!563303))

(declare-fun m!563305 () Bool)

(assert (=> b!584966 m!563305))

(assert (=> b!584966 m!563281))

(declare-fun m!563307 () Bool)

(assert (=> b!584962 m!563307))

(assert (=> b!584961 m!563281))

(assert (=> b!584961 m!563281))

(declare-fun m!563309 () Bool)

(assert (=> b!584961 m!563309))

(declare-fun m!563311 () Bool)

(assert (=> b!584960 m!563311))

(push 1)

