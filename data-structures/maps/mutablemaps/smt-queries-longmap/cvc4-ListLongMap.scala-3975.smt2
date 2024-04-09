; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53942 () Bool)

(assert start!53942)

(declare-fun b!588277 () Bool)

(declare-fun e!335931 () Bool)

(declare-datatypes ((SeekEntryResult!6086 0))(
  ( (MissingZero!6086 (index!26574 (_ BitVec 32))) (Found!6086 (index!26575 (_ BitVec 32))) (Intermediate!6086 (undefined!6898 Bool) (index!26576 (_ BitVec 32)) (x!55399 (_ BitVec 32))) (Undefined!6086) (MissingVacant!6086 (index!26577 (_ BitVec 32))) )
))
(declare-fun lt!266767 () SeekEntryResult!6086)

(declare-fun lt!266771 () SeekEntryResult!6086)

(assert (=> b!588277 (= e!335931 (= lt!266767 lt!266771))))

(declare-fun b!588278 () Bool)

(declare-fun res!376064 () Bool)

(declare-fun e!335928 () Bool)

(assert (=> b!588278 (=> (not res!376064) (not e!335928))))

(declare-datatypes ((array!36740 0))(
  ( (array!36741 (arr!17639 (Array (_ BitVec 32) (_ BitVec 64))) (size!18003 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36740)

(declare-datatypes ((List!11733 0))(
  ( (Nil!11730) (Cons!11729 (h!12774 (_ BitVec 64)) (t!17969 List!11733)) )
))
(declare-fun arrayNoDuplicates!0 (array!36740 (_ BitVec 32) List!11733) Bool)

(assert (=> b!588278 (= res!376064 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11730))))

(declare-fun b!588279 () Bool)

(declare-fun e!335929 () Bool)

(assert (=> b!588279 (= e!335929 (not true))))

(assert (=> b!588279 e!335931))

(declare-fun res!376065 () Bool)

(assert (=> b!588279 (=> (not res!376065) (not e!335931))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!266770 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36740 (_ BitVec 32)) SeekEntryResult!6086)

(assert (=> b!588279 (= res!376065 (= lt!266771 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266770 vacantSpotIndex!68 (select (store (arr!17639 a!2986) i!1108 k!1786) j!136) (array!36741 (store (arr!17639 a!2986) i!1108 k!1786) (size!18003 a!2986)) mask!3053)))))

(assert (=> b!588279 (= lt!266771 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266770 vacantSpotIndex!68 (select (arr!17639 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!18296 0))(
  ( (Unit!18297) )
))
(declare-fun lt!266769 () Unit!18296)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36740 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18296)

(assert (=> b!588279 (= lt!266769 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266770 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588279 (= lt!266770 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!588280 () Bool)

(declare-fun res!376070 () Bool)

(declare-fun e!335930 () Bool)

(assert (=> b!588280 (=> (not res!376070) (not e!335930))))

(declare-fun arrayContainsKey!0 (array!36740 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588280 (= res!376070 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!588281 () Bool)

(declare-fun res!376068 () Bool)

(assert (=> b!588281 (=> (not res!376068) (not e!335930))))

(assert (=> b!588281 (= res!376068 (and (= (size!18003 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18003 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18003 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!588282 () Bool)

(declare-fun res!376063 () Bool)

(assert (=> b!588282 (=> (not res!376063) (not e!335930))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588282 (= res!376063 (validKeyInArray!0 k!1786))))

(declare-fun b!588283 () Bool)

(declare-fun res!376071 () Bool)

(assert (=> b!588283 (=> (not res!376071) (not e!335930))))

(assert (=> b!588283 (= res!376071 (validKeyInArray!0 (select (arr!17639 a!2986) j!136)))))

(declare-fun b!588284 () Bool)

(declare-fun res!376067 () Bool)

(assert (=> b!588284 (=> (not res!376067) (not e!335928))))

(assert (=> b!588284 (= res!376067 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17639 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17639 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!376069 () Bool)

(assert (=> start!53942 (=> (not res!376069) (not e!335930))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53942 (= res!376069 (validMask!0 mask!3053))))

(assert (=> start!53942 e!335930))

(assert (=> start!53942 true))

(declare-fun array_inv!13413 (array!36740) Bool)

(assert (=> start!53942 (array_inv!13413 a!2986)))

(declare-fun b!588285 () Bool)

(assert (=> b!588285 (= e!335928 e!335929)))

(declare-fun res!376072 () Bool)

(assert (=> b!588285 (=> (not res!376072) (not e!335929))))

(assert (=> b!588285 (= res!376072 (and (= lt!266767 (Found!6086 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17639 a!2986) index!984) (select (arr!17639 a!2986) j!136))) (not (= (select (arr!17639 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!588285 (= lt!266767 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17639 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!588286 () Bool)

(assert (=> b!588286 (= e!335930 e!335928)))

(declare-fun res!376066 () Bool)

(assert (=> b!588286 (=> (not res!376066) (not e!335928))))

(declare-fun lt!266768 () SeekEntryResult!6086)

(assert (=> b!588286 (= res!376066 (or (= lt!266768 (MissingZero!6086 i!1108)) (= lt!266768 (MissingVacant!6086 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36740 (_ BitVec 32)) SeekEntryResult!6086)

(assert (=> b!588286 (= lt!266768 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!588287 () Bool)

(declare-fun res!376073 () Bool)

(assert (=> b!588287 (=> (not res!376073) (not e!335928))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36740 (_ BitVec 32)) Bool)

(assert (=> b!588287 (= res!376073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53942 res!376069) b!588281))

(assert (= (and b!588281 res!376068) b!588283))

(assert (= (and b!588283 res!376071) b!588282))

(assert (= (and b!588282 res!376063) b!588280))

(assert (= (and b!588280 res!376070) b!588286))

(assert (= (and b!588286 res!376066) b!588287))

(assert (= (and b!588287 res!376073) b!588278))

(assert (= (and b!588278 res!376064) b!588284))

(assert (= (and b!588284 res!376067) b!588285))

(assert (= (and b!588285 res!376072) b!588279))

(assert (= (and b!588279 res!376065) b!588277))

(declare-fun m!566885 () Bool)

(assert (=> b!588286 m!566885))

(declare-fun m!566887 () Bool)

(assert (=> b!588284 m!566887))

(declare-fun m!566889 () Bool)

(assert (=> b!588284 m!566889))

(declare-fun m!566891 () Bool)

(assert (=> b!588284 m!566891))

(declare-fun m!566893 () Bool)

(assert (=> b!588283 m!566893))

(assert (=> b!588283 m!566893))

(declare-fun m!566895 () Bool)

(assert (=> b!588283 m!566895))

(declare-fun m!566897 () Bool)

(assert (=> b!588285 m!566897))

(assert (=> b!588285 m!566893))

(assert (=> b!588285 m!566893))

(declare-fun m!566899 () Bool)

(assert (=> b!588285 m!566899))

(declare-fun m!566901 () Bool)

(assert (=> start!53942 m!566901))

(declare-fun m!566903 () Bool)

(assert (=> start!53942 m!566903))

(declare-fun m!566905 () Bool)

(assert (=> b!588287 m!566905))

(declare-fun m!566907 () Bool)

(assert (=> b!588280 m!566907))

(declare-fun m!566909 () Bool)

(assert (=> b!588282 m!566909))

(declare-fun m!566911 () Bool)

(assert (=> b!588279 m!566911))

(declare-fun m!566913 () Bool)

(assert (=> b!588279 m!566913))

(assert (=> b!588279 m!566893))

(assert (=> b!588279 m!566893))

(declare-fun m!566915 () Bool)

(assert (=> b!588279 m!566915))

(assert (=> b!588279 m!566889))

(declare-fun m!566917 () Bool)

(assert (=> b!588279 m!566917))

(assert (=> b!588279 m!566913))

(declare-fun m!566919 () Bool)

(assert (=> b!588279 m!566919))

(declare-fun m!566921 () Bool)

(assert (=> b!588278 m!566921))

(push 1)

(assert (not b!588279))

(assert (not b!588285))

