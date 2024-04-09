; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54066 () Bool)

(assert start!54066)

(declare-fun b!590083 () Bool)

(declare-fun e!336891 () Bool)

(declare-fun e!336892 () Bool)

(assert (=> b!590083 (= e!336891 e!336892)))

(declare-fun res!377507 () Bool)

(assert (=> b!590083 (=> (not res!377507) (not e!336892))))

(declare-datatypes ((SeekEntryResult!6123 0))(
  ( (MissingZero!6123 (index!26724 (_ BitVec 32))) (Found!6123 (index!26725 (_ BitVec 32))) (Intermediate!6123 (undefined!6935 Bool) (index!26726 (_ BitVec 32)) (x!55547 (_ BitVec 32))) (Undefined!6123) (MissingVacant!6123 (index!26727 (_ BitVec 32))) )
))
(declare-fun lt!267742 () SeekEntryResult!6123)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!590083 (= res!377507 (or (= lt!267742 (MissingZero!6123 i!1108)) (= lt!267742 (MissingVacant!6123 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!36816 0))(
  ( (array!36817 (arr!17676 (Array (_ BitVec 32) (_ BitVec 64))) (size!18040 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36816)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36816 (_ BitVec 32)) SeekEntryResult!6123)

(assert (=> b!590083 (= lt!267742 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!590084 () Bool)

(declare-fun e!336886 () Bool)

(assert (=> b!590084 (= e!336886 true)))

(declare-fun e!336884 () Bool)

(assert (=> b!590084 e!336884))

(declare-fun res!377512 () Bool)

(assert (=> b!590084 (=> (not res!377512) (not e!336884))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!590084 (= res!377512 (= (select (store (arr!17676 a!2986) i!1108 k!1786) index!984) (select (arr!17676 a!2986) j!136)))))

(declare-fun b!590085 () Bool)

(declare-fun e!336890 () Bool)

(declare-fun lt!267744 () SeekEntryResult!6123)

(declare-fun lt!267740 () SeekEntryResult!6123)

(assert (=> b!590085 (= e!336890 (= lt!267744 lt!267740))))

(declare-fun b!590086 () Bool)

(declare-fun e!336888 () Bool)

(assert (=> b!590086 (= e!336892 e!336888)))

(declare-fun res!377501 () Bool)

(assert (=> b!590086 (=> (not res!377501) (not e!336888))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!590086 (= res!377501 (= (select (store (arr!17676 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!267739 () array!36816)

(assert (=> b!590086 (= lt!267739 (array!36817 (store (arr!17676 a!2986) i!1108 k!1786) (size!18040 a!2986)))))

(declare-fun b!590087 () Bool)

(declare-datatypes ((Unit!18436 0))(
  ( (Unit!18437) )
))
(declare-fun e!336889 () Unit!18436)

(declare-fun Unit!18438 () Unit!18436)

(assert (=> b!590087 (= e!336889 Unit!18438)))

(assert (=> b!590087 false))

(declare-fun b!590088 () Bool)

(declare-fun res!377499 () Bool)

(assert (=> b!590088 (=> (not res!377499) (not e!336891))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!590088 (= res!377499 (validKeyInArray!0 (select (arr!17676 a!2986) j!136)))))

(declare-fun b!590089 () Bool)

(declare-fun res!377500 () Bool)

(assert (=> b!590089 (=> (not res!377500) (not e!336892))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36816 (_ BitVec 32)) Bool)

(assert (=> b!590089 (= res!377500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!377505 () Bool)

(assert (=> start!54066 (=> (not res!377505) (not e!336891))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54066 (= res!377505 (validMask!0 mask!3053))))

(assert (=> start!54066 e!336891))

(assert (=> start!54066 true))

(declare-fun array_inv!13450 (array!36816) Bool)

(assert (=> start!54066 (array_inv!13450 a!2986)))

(declare-fun b!590090 () Bool)

(declare-fun e!336885 () Bool)

(assert (=> b!590090 (= e!336888 e!336885)))

(declare-fun res!377510 () Bool)

(assert (=> b!590090 (=> (not res!377510) (not e!336885))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!590090 (= res!377510 (and (= lt!267744 (Found!6123 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17676 a!2986) index!984) (select (arr!17676 a!2986) j!136))) (not (= (select (arr!17676 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36816 (_ BitVec 32)) SeekEntryResult!6123)

(assert (=> b!590090 (= lt!267744 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17676 a!2986) j!136) a!2986 mask!3053))))

(declare-fun e!336883 () Bool)

(declare-fun b!590091 () Bool)

(declare-fun arrayContainsKey!0 (array!36816 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!590091 (= e!336883 (arrayContainsKey!0 lt!267739 (select (arr!17676 a!2986) j!136) j!136))))

(declare-fun b!590092 () Bool)

(declare-fun res!377509 () Bool)

(assert (=> b!590092 (=> (not res!377509) (not e!336891))))

(assert (=> b!590092 (= res!377509 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!590093 () Bool)

(declare-fun res!377511 () Bool)

(assert (=> b!590093 (=> (not res!377511) (not e!336892))))

(assert (=> b!590093 (= res!377511 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17676 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!590094 () Bool)

(declare-fun res!377508 () Bool)

(assert (=> b!590094 (=> (not res!377508) (not e!336891))))

(assert (=> b!590094 (= res!377508 (and (= (size!18040 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18040 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18040 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!590095 () Bool)

(declare-fun res!377503 () Bool)

(assert (=> b!590095 (=> (not res!377503) (not e!336891))))

(assert (=> b!590095 (= res!377503 (validKeyInArray!0 k!1786))))

(declare-fun b!590096 () Bool)

(declare-fun Unit!18439 () Unit!18436)

(assert (=> b!590096 (= e!336889 Unit!18439)))

(declare-fun b!590097 () Bool)

(declare-fun res!377506 () Bool)

(assert (=> b!590097 (=> (not res!377506) (not e!336892))))

(declare-datatypes ((List!11770 0))(
  ( (Nil!11767) (Cons!11766 (h!12811 (_ BitVec 64)) (t!18006 List!11770)) )
))
(declare-fun arrayNoDuplicates!0 (array!36816 (_ BitVec 32) List!11770) Bool)

(assert (=> b!590097 (= res!377506 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11767))))

(declare-fun b!590098 () Bool)

(assert (=> b!590098 (= e!336885 (not e!336886))))

(declare-fun res!377513 () Bool)

(assert (=> b!590098 (=> res!377513 e!336886)))

(declare-fun lt!267747 () SeekEntryResult!6123)

(assert (=> b!590098 (= res!377513 (not (= lt!267747 (Found!6123 index!984))))))

(declare-fun lt!267743 () Unit!18436)

(assert (=> b!590098 (= lt!267743 e!336889)))

(declare-fun c!66659 () Bool)

(assert (=> b!590098 (= c!66659 (= lt!267747 Undefined!6123))))

(declare-fun lt!267745 () (_ BitVec 64))

(assert (=> b!590098 (= lt!267747 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267745 lt!267739 mask!3053))))

(assert (=> b!590098 e!336890))

(declare-fun res!377502 () Bool)

(assert (=> b!590098 (=> (not res!377502) (not e!336890))))

(declare-fun lt!267746 () (_ BitVec 32))

(assert (=> b!590098 (= res!377502 (= lt!267740 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267746 vacantSpotIndex!68 lt!267745 lt!267739 mask!3053)))))

(assert (=> b!590098 (= lt!267740 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267746 vacantSpotIndex!68 (select (arr!17676 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!590098 (= lt!267745 (select (store (arr!17676 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!267741 () Unit!18436)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36816 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18436)

(assert (=> b!590098 (= lt!267741 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267746 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!590098 (= lt!267746 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!590099 () Bool)

(assert (=> b!590099 (= e!336884 e!336883)))

(declare-fun res!377504 () Bool)

(assert (=> b!590099 (=> res!377504 e!336883)))

(assert (=> b!590099 (= res!377504 (or (not (= (select (arr!17676 a!2986) j!136) lt!267745)) (not (= (select (arr!17676 a!2986) j!136) (select (store (arr!17676 a!2986) i!1108 k!1786) index!984))) (bvsge j!136 index!984)))))

(assert (= (and start!54066 res!377505) b!590094))

(assert (= (and b!590094 res!377508) b!590088))

(assert (= (and b!590088 res!377499) b!590095))

(assert (= (and b!590095 res!377503) b!590092))

(assert (= (and b!590092 res!377509) b!590083))

(assert (= (and b!590083 res!377507) b!590089))

(assert (= (and b!590089 res!377500) b!590097))

(assert (= (and b!590097 res!377506) b!590093))

(assert (= (and b!590093 res!377511) b!590086))

(assert (= (and b!590086 res!377501) b!590090))

(assert (= (and b!590090 res!377510) b!590098))

(assert (= (and b!590098 res!377502) b!590085))

(assert (= (and b!590098 c!66659) b!590087))

(assert (= (and b!590098 (not c!66659)) b!590096))

(assert (= (and b!590098 (not res!377513)) b!590084))

(assert (= (and b!590084 res!377512) b!590099))

(assert (= (and b!590099 (not res!377504)) b!590091))

(declare-fun m!568545 () Bool)

(assert (=> b!590088 m!568545))

(assert (=> b!590088 m!568545))

(declare-fun m!568547 () Bool)

(assert (=> b!590088 m!568547))

(declare-fun m!568549 () Bool)

(assert (=> b!590098 m!568549))

(declare-fun m!568551 () Bool)

(assert (=> b!590098 m!568551))

(assert (=> b!590098 m!568545))

(declare-fun m!568553 () Bool)

(assert (=> b!590098 m!568553))

(declare-fun m!568555 () Bool)

(assert (=> b!590098 m!568555))

(assert (=> b!590098 m!568545))

(declare-fun m!568557 () Bool)

(assert (=> b!590098 m!568557))

(declare-fun m!568559 () Bool)

(assert (=> b!590098 m!568559))

(declare-fun m!568561 () Bool)

(assert (=> b!590098 m!568561))

(assert (=> b!590086 m!568553))

(declare-fun m!568563 () Bool)

(assert (=> b!590086 m!568563))

(assert (=> b!590084 m!568553))

(declare-fun m!568565 () Bool)

(assert (=> b!590084 m!568565))

(assert (=> b!590084 m!568545))

(assert (=> b!590091 m!568545))

(assert (=> b!590091 m!568545))

(declare-fun m!568567 () Bool)

(assert (=> b!590091 m!568567))

(declare-fun m!568569 () Bool)

(assert (=> start!54066 m!568569))

(declare-fun m!568571 () Bool)

(assert (=> start!54066 m!568571))

(assert (=> b!590099 m!568545))

(assert (=> b!590099 m!568553))

(assert (=> b!590099 m!568565))

(declare-fun m!568573 () Bool)

(assert (=> b!590097 m!568573))

(declare-fun m!568575 () Bool)

(assert (=> b!590089 m!568575))

(declare-fun m!568577 () Bool)

(assert (=> b!590083 m!568577))

(declare-fun m!568579 () Bool)

(assert (=> b!590090 m!568579))

(assert (=> b!590090 m!568545))

(assert (=> b!590090 m!568545))

(declare-fun m!568581 () Bool)

(assert (=> b!590090 m!568581))

(declare-fun m!568583 () Bool)

(assert (=> b!590093 m!568583))

(declare-fun m!568585 () Bool)

(assert (=> b!590092 m!568585))

(declare-fun m!568587 () Bool)

(assert (=> b!590095 m!568587))

(push 1)

