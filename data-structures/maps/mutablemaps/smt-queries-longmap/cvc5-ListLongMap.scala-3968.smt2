; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53896 () Bool)

(assert start!53896)

(declare-fun b!587518 () Bool)

(declare-fun res!375310 () Bool)

(declare-fun e!335599 () Bool)

(assert (=> b!587518 (=> (not res!375310) (not e!335599))))

(declare-datatypes ((array!36694 0))(
  ( (array!36695 (arr!17616 (Array (_ BitVec 32) (_ BitVec 64))) (size!17980 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36694)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!587518 (= res!375310 (validKeyInArray!0 (select (arr!17616 a!2986) j!136)))))

(declare-fun res!375311 () Bool)

(assert (=> start!53896 (=> (not res!375311) (not e!335599))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53896 (= res!375311 (validMask!0 mask!3053))))

(assert (=> start!53896 e!335599))

(assert (=> start!53896 true))

(declare-fun array_inv!13390 (array!36694) Bool)

(assert (=> start!53896 (array_inv!13390 a!2986)))

(declare-fun b!587519 () Bool)

(declare-fun res!375304 () Bool)

(declare-fun e!335597 () Bool)

(assert (=> b!587519 (=> (not res!375304) (not e!335597))))

(declare-datatypes ((List!11710 0))(
  ( (Nil!11707) (Cons!11706 (h!12751 (_ BitVec 64)) (t!17946 List!11710)) )
))
(declare-fun arrayNoDuplicates!0 (array!36694 (_ BitVec 32) List!11710) Bool)

(assert (=> b!587519 (= res!375304 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11707))))

(declare-fun b!587520 () Bool)

(declare-fun res!375309 () Bool)

(assert (=> b!587520 (=> (not res!375309) (not e!335599))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!587520 (= res!375309 (validKeyInArray!0 k!1786))))

(declare-fun b!587521 () Bool)

(assert (=> b!587521 (= e!335597 (not true))))

(declare-fun lt!266438 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6063 0))(
  ( (MissingZero!6063 (index!26482 (_ BitVec 32))) (Found!6063 (index!26483 (_ BitVec 32))) (Intermediate!6063 (undefined!6875 Bool) (index!26484 (_ BitVec 32)) (x!55320 (_ BitVec 32))) (Undefined!6063) (MissingVacant!6063 (index!26485 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36694 (_ BitVec 32)) SeekEntryResult!6063)

(assert (=> b!587521 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266438 vacantSpotIndex!68 (select (arr!17616 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266438 vacantSpotIndex!68 (select (store (arr!17616 a!2986) i!1108 k!1786) j!136) (array!36695 (store (arr!17616 a!2986) i!1108 k!1786) (size!17980 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18250 0))(
  ( (Unit!18251) )
))
(declare-fun lt!266436 () Unit!18250)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36694 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18250)

(assert (=> b!587521 (= lt!266436 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266438 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!587521 (= lt!266438 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!587522 () Bool)

(declare-fun res!375314 () Bool)

(assert (=> b!587522 (=> (not res!375314) (not e!335597))))

(assert (=> b!587522 (= res!375314 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17616 a!2986) index!984) (select (arr!17616 a!2986) j!136))) (not (= (select (arr!17616 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!587523 () Bool)

(declare-fun res!375306 () Bool)

(assert (=> b!587523 (=> (not res!375306) (not e!335597))))

(assert (=> b!587523 (= res!375306 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17616 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17616 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!587524 () Bool)

(assert (=> b!587524 (= e!335599 e!335597)))

(declare-fun res!375305 () Bool)

(assert (=> b!587524 (=> (not res!375305) (not e!335597))))

(declare-fun lt!266437 () SeekEntryResult!6063)

(assert (=> b!587524 (= res!375305 (or (= lt!266437 (MissingZero!6063 i!1108)) (= lt!266437 (MissingVacant!6063 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36694 (_ BitVec 32)) SeekEntryResult!6063)

(assert (=> b!587524 (= lt!266437 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!587525 () Bool)

(declare-fun res!375308 () Bool)

(assert (=> b!587525 (=> (not res!375308) (not e!335599))))

(declare-fun arrayContainsKey!0 (array!36694 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!587525 (= res!375308 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!587526 () Bool)

(declare-fun res!375307 () Bool)

(assert (=> b!587526 (=> (not res!375307) (not e!335599))))

(assert (=> b!587526 (= res!375307 (and (= (size!17980 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17980 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17980 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!587527 () Bool)

(declare-fun res!375313 () Bool)

(assert (=> b!587527 (=> (not res!375313) (not e!335597))))

(assert (=> b!587527 (= res!375313 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17616 a!2986) j!136) a!2986 mask!3053) (Found!6063 j!136)))))

(declare-fun b!587528 () Bool)

(declare-fun res!375312 () Bool)

(assert (=> b!587528 (=> (not res!375312) (not e!335597))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36694 (_ BitVec 32)) Bool)

(assert (=> b!587528 (= res!375312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53896 res!375311) b!587526))

(assert (= (and b!587526 res!375307) b!587518))

(assert (= (and b!587518 res!375310) b!587520))

(assert (= (and b!587520 res!375309) b!587525))

(assert (= (and b!587525 res!375308) b!587524))

(assert (= (and b!587524 res!375305) b!587528))

(assert (= (and b!587528 res!375312) b!587519))

(assert (= (and b!587519 res!375304) b!587523))

(assert (= (and b!587523 res!375306) b!587527))

(assert (= (and b!587527 res!375313) b!587522))

(assert (= (and b!587522 res!375314) b!587521))

(declare-fun m!566011 () Bool)

(assert (=> b!587518 m!566011))

(assert (=> b!587518 m!566011))

(declare-fun m!566013 () Bool)

(assert (=> b!587518 m!566013))

(declare-fun m!566015 () Bool)

(assert (=> b!587523 m!566015))

(declare-fun m!566017 () Bool)

(assert (=> b!587523 m!566017))

(declare-fun m!566019 () Bool)

(assert (=> b!587523 m!566019))

(declare-fun m!566021 () Bool)

(assert (=> b!587524 m!566021))

(declare-fun m!566023 () Bool)

(assert (=> b!587521 m!566023))

(declare-fun m!566025 () Bool)

(assert (=> b!587521 m!566025))

(assert (=> b!587521 m!566011))

(assert (=> b!587521 m!566017))

(declare-fun m!566027 () Bool)

(assert (=> b!587521 m!566027))

(assert (=> b!587521 m!566011))

(declare-fun m!566029 () Bool)

(assert (=> b!587521 m!566029))

(assert (=> b!587521 m!566025))

(declare-fun m!566031 () Bool)

(assert (=> b!587521 m!566031))

(declare-fun m!566033 () Bool)

(assert (=> b!587522 m!566033))

(assert (=> b!587522 m!566011))

(declare-fun m!566035 () Bool)

(assert (=> b!587520 m!566035))

(declare-fun m!566037 () Bool)

(assert (=> b!587528 m!566037))

(declare-fun m!566039 () Bool)

(assert (=> start!53896 m!566039))

(declare-fun m!566041 () Bool)

(assert (=> start!53896 m!566041))

(declare-fun m!566043 () Bool)

(assert (=> b!587525 m!566043))

(assert (=> b!587527 m!566011))

(assert (=> b!587527 m!566011))

(declare-fun m!566045 () Bool)

(assert (=> b!587527 m!566045))

(declare-fun m!566047 () Bool)

(assert (=> b!587519 m!566047))

(push 1)

