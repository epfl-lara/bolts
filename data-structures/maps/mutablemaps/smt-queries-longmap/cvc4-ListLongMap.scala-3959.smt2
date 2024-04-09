; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53786 () Bool)

(assert start!53786)

(declare-fun b!586441 () Bool)

(declare-fun res!374407 () Bool)

(declare-fun e!335211 () Bool)

(assert (=> b!586441 (=> (not res!374407) (not e!335211))))

(declare-datatypes ((array!36641 0))(
  ( (array!36642 (arr!17591 (Array (_ BitVec 32) (_ BitVec 64))) (size!17955 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36641)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36641 (_ BitVec 32)) Bool)

(assert (=> b!586441 (= res!374407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!374415 () Bool)

(declare-fun e!335212 () Bool)

(assert (=> start!53786 (=> (not res!374415) (not e!335212))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53786 (= res!374415 (validMask!0 mask!3053))))

(assert (=> start!53786 e!335212))

(assert (=> start!53786 true))

(declare-fun array_inv!13365 (array!36641) Bool)

(assert (=> start!53786 (array_inv!13365 a!2986)))

(declare-fun b!586442 () Bool)

(declare-fun res!374417 () Bool)

(assert (=> b!586442 (=> (not res!374417) (not e!335212))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!586442 (= res!374417 (and (= (size!17955 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17955 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17955 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586443 () Bool)

(assert (=> b!586443 (= e!335212 e!335211)))

(declare-fun res!374408 () Bool)

(assert (=> b!586443 (=> (not res!374408) (not e!335211))))

(declare-datatypes ((SeekEntryResult!6038 0))(
  ( (MissingZero!6038 (index!26379 (_ BitVec 32))) (Found!6038 (index!26380 (_ BitVec 32))) (Intermediate!6038 (undefined!6850 Bool) (index!26381 (_ BitVec 32)) (x!55214 (_ BitVec 32))) (Undefined!6038) (MissingVacant!6038 (index!26382 (_ BitVec 32))) )
))
(declare-fun lt!266110 () SeekEntryResult!6038)

(assert (=> b!586443 (= res!374408 (or (= lt!266110 (MissingZero!6038 i!1108)) (= lt!266110 (MissingVacant!6038 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36641 (_ BitVec 32)) SeekEntryResult!6038)

(assert (=> b!586443 (= lt!266110 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!586444 () Bool)

(declare-fun res!374413 () Bool)

(assert (=> b!586444 (=> (not res!374413) (not e!335212))))

(declare-fun arrayContainsKey!0 (array!36641 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586444 (= res!374413 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586445 () Bool)

(declare-fun res!374410 () Bool)

(assert (=> b!586445 (=> (not res!374410) (not e!335211))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!586445 (= res!374410 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17591 a!2986) index!984) (select (arr!17591 a!2986) j!136))) (not (= (select (arr!17591 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!586446 () Bool)

(declare-fun res!374416 () Bool)

(assert (=> b!586446 (=> (not res!374416) (not e!335211))))

(declare-datatypes ((List!11685 0))(
  ( (Nil!11682) (Cons!11681 (h!12726 (_ BitVec 64)) (t!17921 List!11685)) )
))
(declare-fun arrayNoDuplicates!0 (array!36641 (_ BitVec 32) List!11685) Bool)

(assert (=> b!586446 (= res!374416 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11682))))

(declare-fun b!586447 () Bool)

(declare-fun res!374409 () Bool)

(assert (=> b!586447 (=> (not res!374409) (not e!335211))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36641 (_ BitVec 32)) SeekEntryResult!6038)

(assert (=> b!586447 (= res!374409 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17591 a!2986) j!136) a!2986 mask!3053) (Found!6038 j!136)))))

(declare-fun b!586448 () Bool)

(declare-fun res!374412 () Bool)

(assert (=> b!586448 (=> (not res!374412) (not e!335211))))

(assert (=> b!586448 (= res!374412 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17591 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17591 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586449 () Bool)

(declare-fun res!374414 () Bool)

(assert (=> b!586449 (=> (not res!374414) (not e!335212))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586449 (= res!374414 (validKeyInArray!0 k!1786))))

(declare-fun b!586450 () Bool)

(declare-fun res!374411 () Bool)

(assert (=> b!586450 (=> (not res!374411) (not e!335212))))

(assert (=> b!586450 (= res!374411 (validKeyInArray!0 (select (arr!17591 a!2986) j!136)))))

(declare-fun b!586451 () Bool)

(assert (=> b!586451 (= e!335211 (not true))))

(declare-fun lt!266109 () (_ BitVec 32))

(assert (=> b!586451 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266109 vacantSpotIndex!68 (select (arr!17591 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266109 vacantSpotIndex!68 (select (store (arr!17591 a!2986) i!1108 k!1786) j!136) (array!36642 (store (arr!17591 a!2986) i!1108 k!1786) (size!17955 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18200 0))(
  ( (Unit!18201) )
))
(declare-fun lt!266111 () Unit!18200)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36641 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18200)

(assert (=> b!586451 (= lt!266111 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266109 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586451 (= lt!266109 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!53786 res!374415) b!586442))

(assert (= (and b!586442 res!374417) b!586450))

(assert (= (and b!586450 res!374411) b!586449))

(assert (= (and b!586449 res!374414) b!586444))

(assert (= (and b!586444 res!374413) b!586443))

(assert (= (and b!586443 res!374408) b!586441))

(assert (= (and b!586441 res!374407) b!586446))

(assert (= (and b!586446 res!374416) b!586448))

(assert (= (and b!586448 res!374412) b!586447))

(assert (= (and b!586447 res!374409) b!586445))

(assert (= (and b!586445 res!374410) b!586451))

(declare-fun m!564881 () Bool)

(assert (=> b!586447 m!564881))

(assert (=> b!586447 m!564881))

(declare-fun m!564883 () Bool)

(assert (=> b!586447 m!564883))

(declare-fun m!564885 () Bool)

(assert (=> b!586451 m!564885))

(declare-fun m!564887 () Bool)

(assert (=> b!586451 m!564887))

(declare-fun m!564889 () Bool)

(assert (=> b!586451 m!564889))

(assert (=> b!586451 m!564881))

(declare-fun m!564891 () Bool)

(assert (=> b!586451 m!564891))

(assert (=> b!586451 m!564881))

(declare-fun m!564893 () Bool)

(assert (=> b!586451 m!564893))

(assert (=> b!586451 m!564889))

(declare-fun m!564895 () Bool)

(assert (=> b!586451 m!564895))

(assert (=> b!586450 m!564881))

(assert (=> b!586450 m!564881))

(declare-fun m!564897 () Bool)

(assert (=> b!586450 m!564897))

(declare-fun m!564899 () Bool)

(assert (=> start!53786 m!564899))

(declare-fun m!564901 () Bool)

(assert (=> start!53786 m!564901))

(declare-fun m!564903 () Bool)

(assert (=> b!586444 m!564903))

(declare-fun m!564905 () Bool)

(assert (=> b!586441 m!564905))

(declare-fun m!564907 () Bool)

(assert (=> b!586448 m!564907))

(assert (=> b!586448 m!564893))

(declare-fun m!564909 () Bool)

(assert (=> b!586448 m!564909))

(declare-fun m!564911 () Bool)

(assert (=> b!586443 m!564911))

(declare-fun m!564913 () Bool)

(assert (=> b!586449 m!564913))

(declare-fun m!564915 () Bool)

(assert (=> b!586445 m!564915))

(assert (=> b!586445 m!564881))

(declare-fun m!564917 () Bool)

(assert (=> b!586446 m!564917))

(push 1)

