; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53534 () Bool)

(assert start!53534)

(declare-fun b!582321 () Bool)

(declare-fun res!370295 () Bool)

(declare-fun e!333906 () Bool)

(assert (=> b!582321 (=> (not res!370295) (not e!333906))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36389 0))(
  ( (array!36390 (arr!17465 (Array (_ BitVec 32) (_ BitVec 64))) (size!17829 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36389)

(assert (=> b!582321 (= res!370295 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17465 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17465 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!370291 () Bool)

(declare-fun e!333905 () Bool)

(assert (=> start!53534 (=> (not res!370291) (not e!333905))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53534 (= res!370291 (validMask!0 mask!3053))))

(assert (=> start!53534 e!333905))

(assert (=> start!53534 true))

(declare-fun array_inv!13239 (array!36389) Bool)

(assert (=> start!53534 (array_inv!13239 a!2986)))

(declare-fun b!582322 () Bool)

(declare-fun res!370292 () Bool)

(assert (=> b!582322 (=> (not res!370292) (not e!333905))))

(declare-fun arrayContainsKey!0 (array!36389 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582322 (= res!370292 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582323 () Bool)

(declare-fun res!370290 () Bool)

(assert (=> b!582323 (=> (not res!370290) (not e!333905))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!582323 (= res!370290 (and (= (size!17829 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17829 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17829 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582324 () Bool)

(assert (=> b!582324 (= e!333906 false)))

(declare-datatypes ((SeekEntryResult!5912 0))(
  ( (MissingZero!5912 (index!25875 (_ BitVec 32))) (Found!5912 (index!25876 (_ BitVec 32))) (Intermediate!5912 (undefined!6724 Bool) (index!25877 (_ BitVec 32)) (x!54752 (_ BitVec 32))) (Undefined!5912) (MissingVacant!5912 (index!25878 (_ BitVec 32))) )
))
(declare-fun lt!265093 () SeekEntryResult!5912)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36389 (_ BitVec 32)) SeekEntryResult!5912)

(assert (=> b!582324 (= lt!265093 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17465 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582325 () Bool)

(declare-fun res!370293 () Bool)

(assert (=> b!582325 (=> (not res!370293) (not e!333905))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582325 (= res!370293 (validKeyInArray!0 k!1786))))

(declare-fun b!582326 () Bool)

(declare-fun res!370288 () Bool)

(assert (=> b!582326 (=> (not res!370288) (not e!333905))))

(assert (=> b!582326 (= res!370288 (validKeyInArray!0 (select (arr!17465 a!2986) j!136)))))

(declare-fun b!582327 () Bool)

(declare-fun res!370294 () Bool)

(assert (=> b!582327 (=> (not res!370294) (not e!333906))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36389 (_ BitVec 32)) Bool)

(assert (=> b!582327 (= res!370294 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582328 () Bool)

(assert (=> b!582328 (= e!333905 e!333906)))

(declare-fun res!370289 () Bool)

(assert (=> b!582328 (=> (not res!370289) (not e!333906))))

(declare-fun lt!265094 () SeekEntryResult!5912)

(assert (=> b!582328 (= res!370289 (or (= lt!265094 (MissingZero!5912 i!1108)) (= lt!265094 (MissingVacant!5912 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36389 (_ BitVec 32)) SeekEntryResult!5912)

(assert (=> b!582328 (= lt!265094 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!582329 () Bool)

(declare-fun res!370287 () Bool)

(assert (=> b!582329 (=> (not res!370287) (not e!333906))))

(declare-datatypes ((List!11559 0))(
  ( (Nil!11556) (Cons!11555 (h!12600 (_ BitVec 64)) (t!17795 List!11559)) )
))
(declare-fun arrayNoDuplicates!0 (array!36389 (_ BitVec 32) List!11559) Bool)

(assert (=> b!582329 (= res!370287 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11556))))

(assert (= (and start!53534 res!370291) b!582323))

(assert (= (and b!582323 res!370290) b!582326))

(assert (= (and b!582326 res!370288) b!582325))

(assert (= (and b!582325 res!370293) b!582322))

(assert (= (and b!582322 res!370292) b!582328))

(assert (= (and b!582328 res!370289) b!582327))

(assert (= (and b!582327 res!370294) b!582329))

(assert (= (and b!582329 res!370287) b!582321))

(assert (= (and b!582321 res!370295) b!582324))

(declare-fun m!560873 () Bool)

(assert (=> b!582322 m!560873))

(declare-fun m!560875 () Bool)

(assert (=> b!582324 m!560875))

(assert (=> b!582324 m!560875))

(declare-fun m!560877 () Bool)

(assert (=> b!582324 m!560877))

(declare-fun m!560879 () Bool)

(assert (=> b!582321 m!560879))

(declare-fun m!560881 () Bool)

(assert (=> b!582321 m!560881))

(declare-fun m!560883 () Bool)

(assert (=> b!582321 m!560883))

(assert (=> b!582326 m!560875))

(assert (=> b!582326 m!560875))

(declare-fun m!560885 () Bool)

(assert (=> b!582326 m!560885))

(declare-fun m!560887 () Bool)

(assert (=> b!582325 m!560887))

(declare-fun m!560889 () Bool)

(assert (=> start!53534 m!560889))

(declare-fun m!560891 () Bool)

(assert (=> start!53534 m!560891))

(declare-fun m!560893 () Bool)

(assert (=> b!582328 m!560893))

(declare-fun m!560895 () Bool)

(assert (=> b!582329 m!560895))

(declare-fun m!560897 () Bool)

(assert (=> b!582327 m!560897))

(push 1)

(assert (not b!582324))

(assert (not b!582322))

(assert (not b!582329))

(assert (not b!582326))

(assert (not b!582328))

(assert (not b!582325))

(assert (not start!53534))

(assert (not b!582327))

