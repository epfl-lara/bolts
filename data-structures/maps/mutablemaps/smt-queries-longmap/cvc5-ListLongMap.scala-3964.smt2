; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53812 () Bool)

(assert start!53812)

(declare-fun b!586870 () Bool)

(declare-fun res!374838 () Bool)

(declare-fun e!335327 () Bool)

(assert (=> b!586870 (=> (not res!374838) (not e!335327))))

(declare-datatypes ((array!36667 0))(
  ( (array!36668 (arr!17604 (Array (_ BitVec 32) (_ BitVec 64))) (size!17968 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36667)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586870 (= res!374838 (validKeyInArray!0 (select (arr!17604 a!2986) j!136)))))

(declare-fun b!586871 () Bool)

(declare-fun res!374841 () Bool)

(declare-fun e!335329 () Bool)

(assert (=> b!586871 (=> (not res!374841) (not e!335329))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36667 (_ BitVec 32)) Bool)

(assert (=> b!586871 (= res!374841 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!586872 () Bool)

(declare-fun res!374839 () Bool)

(assert (=> b!586872 (=> (not res!374839) (not e!335329))))

(declare-datatypes ((List!11698 0))(
  ( (Nil!11695) (Cons!11694 (h!12739 (_ BitVec 64)) (t!17934 List!11698)) )
))
(declare-fun arrayNoDuplicates!0 (array!36667 (_ BitVec 32) List!11698) Bool)

(assert (=> b!586872 (= res!374839 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11695))))

(declare-fun b!586873 () Bool)

(declare-fun res!374837 () Bool)

(assert (=> b!586873 (=> (not res!374837) (not e!335327))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36667 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586873 (= res!374837 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586874 () Bool)

(assert (=> b!586874 (= e!335327 e!335329)))

(declare-fun res!374845 () Bool)

(assert (=> b!586874 (=> (not res!374845) (not e!335329))))

(declare-datatypes ((SeekEntryResult!6051 0))(
  ( (MissingZero!6051 (index!26431 (_ BitVec 32))) (Found!6051 (index!26432 (_ BitVec 32))) (Intermediate!6051 (undefined!6863 Bool) (index!26433 (_ BitVec 32)) (x!55267 (_ BitVec 32))) (Undefined!6051) (MissingVacant!6051 (index!26434 (_ BitVec 32))) )
))
(declare-fun lt!266228 () SeekEntryResult!6051)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!586874 (= res!374845 (or (= lt!266228 (MissingZero!6051 i!1108)) (= lt!266228 (MissingVacant!6051 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36667 (_ BitVec 32)) SeekEntryResult!6051)

(assert (=> b!586874 (= lt!266228 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!586875 () Bool)

(declare-fun lt!266226 () (_ BitVec 32))

(assert (=> b!586875 (= e!335329 (not (or (bvslt mask!3053 #b00000000000000000000000000000000) (and (bvsge lt!266226 #b00000000000000000000000000000000) (bvslt lt!266226 (bvadd #b00000000000000000000000000000001 mask!3053))))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36667 (_ BitVec 32)) SeekEntryResult!6051)

(assert (=> b!586875 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266226 vacantSpotIndex!68 (select (arr!17604 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266226 vacantSpotIndex!68 (select (store (arr!17604 a!2986) i!1108 k!1786) j!136) (array!36668 (store (arr!17604 a!2986) i!1108 k!1786) (size!17968 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18226 0))(
  ( (Unit!18227) )
))
(declare-fun lt!266227 () Unit!18226)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36667 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18226)

(assert (=> b!586875 (= lt!266227 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266226 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586875 (= lt!266226 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586876 () Bool)

(declare-fun res!374843 () Bool)

(assert (=> b!586876 (=> (not res!374843) (not e!335329))))

(assert (=> b!586876 (= res!374843 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17604 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17604 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586877 () Bool)

(declare-fun res!374846 () Bool)

(assert (=> b!586877 (=> (not res!374846) (not e!335329))))

(assert (=> b!586877 (= res!374846 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17604 a!2986) index!984) (select (arr!17604 a!2986) j!136))) (not (= (select (arr!17604 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun res!374842 () Bool)

(assert (=> start!53812 (=> (not res!374842) (not e!335327))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53812 (= res!374842 (validMask!0 mask!3053))))

(assert (=> start!53812 e!335327))

(assert (=> start!53812 true))

(declare-fun array_inv!13378 (array!36667) Bool)

(assert (=> start!53812 (array_inv!13378 a!2986)))

(declare-fun b!586878 () Bool)

(declare-fun res!374836 () Bool)

(assert (=> b!586878 (=> (not res!374836) (not e!335327))))

(assert (=> b!586878 (= res!374836 (validKeyInArray!0 k!1786))))

(declare-fun b!586879 () Bool)

(declare-fun res!374844 () Bool)

(assert (=> b!586879 (=> (not res!374844) (not e!335329))))

(assert (=> b!586879 (= res!374844 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17604 a!2986) j!136) a!2986 mask!3053) (Found!6051 j!136)))))

(declare-fun b!586880 () Bool)

(declare-fun res!374840 () Bool)

(assert (=> b!586880 (=> (not res!374840) (not e!335327))))

(assert (=> b!586880 (= res!374840 (and (= (size!17968 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17968 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17968 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53812 res!374842) b!586880))

(assert (= (and b!586880 res!374840) b!586870))

(assert (= (and b!586870 res!374838) b!586878))

(assert (= (and b!586878 res!374836) b!586873))

(assert (= (and b!586873 res!374837) b!586874))

(assert (= (and b!586874 res!374845) b!586871))

(assert (= (and b!586871 res!374841) b!586872))

(assert (= (and b!586872 res!374839) b!586876))

(assert (= (and b!586876 res!374843) b!586879))

(assert (= (and b!586879 res!374844) b!586877))

(assert (= (and b!586877 res!374846) b!586875))

(declare-fun m!565375 () Bool)

(assert (=> b!586878 m!565375))

(declare-fun m!565377 () Bool)

(assert (=> b!586872 m!565377))

(declare-fun m!565379 () Bool)

(assert (=> b!586876 m!565379))

(declare-fun m!565381 () Bool)

(assert (=> b!586876 m!565381))

(declare-fun m!565383 () Bool)

(assert (=> b!586876 m!565383))

(declare-fun m!565385 () Bool)

(assert (=> b!586874 m!565385))

(declare-fun m!565387 () Bool)

(assert (=> b!586871 m!565387))

(declare-fun m!565389 () Bool)

(assert (=> b!586875 m!565389))

(declare-fun m!565391 () Bool)

(assert (=> b!586875 m!565391))

(declare-fun m!565393 () Bool)

(assert (=> b!586875 m!565393))

(assert (=> b!586875 m!565393))

(declare-fun m!565395 () Bool)

(assert (=> b!586875 m!565395))

(declare-fun m!565397 () Bool)

(assert (=> b!586875 m!565397))

(assert (=> b!586875 m!565391))

(declare-fun m!565399 () Bool)

(assert (=> b!586875 m!565399))

(assert (=> b!586875 m!565381))

(declare-fun m!565401 () Bool)

(assert (=> start!53812 m!565401))

(declare-fun m!565403 () Bool)

(assert (=> start!53812 m!565403))

(assert (=> b!586879 m!565393))

(assert (=> b!586879 m!565393))

(declare-fun m!565405 () Bool)

(assert (=> b!586879 m!565405))

(assert (=> b!586870 m!565393))

(assert (=> b!586870 m!565393))

(declare-fun m!565407 () Bool)

(assert (=> b!586870 m!565407))

(declare-fun m!565409 () Bool)

(assert (=> b!586873 m!565409))

(declare-fun m!565411 () Bool)

(assert (=> b!586877 m!565411))

(assert (=> b!586877 m!565393))

(push 1)

(assert (not b!586871))

(assert (not b!586879))

(assert (not b!586873))

(assert (not b!586874))

(assert (not b!586875))

(assert (not b!586878))

(assert (not b!586870))

(assert (not b!586872))

(assert (not start!53812))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!266262 () SeekEntryResult!6051)

(declare-fun d!85797 () Bool)

(assert (=> d!85797 (and (or (is-Undefined!6051 lt!266262) (not (is-Found!6051 lt!266262)) (and (bvsge (index!26432 lt!266262) #b00000000000000000000000000000000) (bvslt (index!26432 lt!266262) (size!17968 a!2986)))) (or (is-Undefined!6051 lt!266262) (is-Found!6051 lt!266262) (not (is-MissingVacant!6051 lt!266262)) (not (= (index!26434 lt!266262) vacantSpotIndex!68)) (and (bvsge (index!26434 lt!266262) #b00000000000000000000000000000000) (bvslt (index!26434 lt!266262) (size!17968 a!2986)))) (or (is-Undefined!6051 lt!266262) (ite (is-Found!6051 lt!266262) (= (select (arr!17604 a!2986) (index!26432 lt!266262)) (select (arr!17604 a!2986) j!136)) (and (is-MissingVacant!6051 lt!266262) (= (index!26434 lt!266262) vacantSpotIndex!68) (= (select (arr!17604 a!2986) (index!26434 lt!266262)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!335371 () SeekEntryResult!6051)

(assert (=> d!85797 (= lt!266262 e!335371)))

(declare-fun c!66406 () Bool)

(assert (=> d!85797 (= c!66406 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!266261 () (_ BitVec 64))

(assert (=> d!85797 (= lt!266261 (select (arr!17604 a!2986) lt!266226))))

(assert (=> d!85797 (validMask!0 mask!3053)))

(assert (=> d!85797 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266226 vacantSpotIndex!68 (select (arr!17604 a!2986) j!136) a!2986 mask!3053) lt!266262)))

(declare-fun b!586989 () Bool)

(declare-fun e!335369 () SeekEntryResult!6051)

(assert (=> b!586989 (= e!335371 e!335369)))

(declare-fun c!66407 () Bool)

(assert (=> b!586989 (= c!66407 (= lt!266261 (select (arr!17604 a!2986) j!136)))))

(declare-fun b!586990 () Bool)

(declare-fun e!335370 () SeekEntryResult!6051)

(assert (=> b!586990 (= e!335370 (MissingVacant!6051 vacantSpotIndex!68))))

(declare-fun b!586991 () Bool)

(assert (=> b!586991 (= e!335371 Undefined!6051)))

(declare-fun b!586992 () Bool)

(assert (=> b!586992 (= e!335370 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!266226 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17604 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!586993 () Bool)

(assert (=> b!586993 (= e!335369 (Found!6051 lt!266226))))

(declare-fun b!586994 () Bool)

(declare-fun c!66405 () Bool)

(assert (=> b!586994 (= c!66405 (= lt!266261 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!586994 (= e!335369 e!335370)))

(assert (= (and d!85797 c!66406) b!586991))

(assert (= (and d!85797 (not c!66406)) b!586989))

(assert (= (and b!586989 c!66407) b!586993))

(assert (= (and b!586989 (not c!66407)) b!586994))

(assert (= (and b!586994 c!66405) b!586990))

(assert (= (and b!586994 (not c!66405)) b!586992))

(declare-fun m!565513 () Bool)

(assert (=> d!85797 m!565513))

(declare-fun m!565515 () Bool)

(assert (=> d!85797 m!565515))

(declare-fun m!565517 () Bool)

(assert (=> d!85797 m!565517))

(assert (=> d!85797 m!565401))

(declare-fun m!565519 () Bool)

(assert (=> b!586992 m!565519))

(assert (=> b!586992 m!565519))

(assert (=> b!586992 m!565393))

(declare-fun m!565521 () Bool)

(assert (=> b!586992 m!565521))

(assert (=> b!586875 d!85797))

(declare-fun lt!266264 () SeekEntryResult!6051)

(declare-fun d!85807 () Bool)

(assert (=> d!85807 (and (or (is-Undefined!6051 lt!266264) (not (is-Found!6051 lt!266264)) (and (bvsge (index!26432 lt!266264) #b00000000000000000000000000000000) (bvslt (index!26432 lt!266264) (size!17968 (array!36668 (store (arr!17604 a!2986) i!1108 k!1786) (size!17968 a!2986)))))) (or (is-Undefined!6051 lt!266264) (is-Found!6051 lt!266264) (not (is-MissingVacant!6051 lt!266264)) (not (= (index!26434 lt!266264) vacantSpotIndex!68)) (and (bvsge (index!26434 lt!266264) #b00000000000000000000000000000000) (bvslt (index!26434 lt!266264) (size!17968 (array!36668 (store (arr!17604 a!2986) i!1108 k!1786) (size!17968 a!2986)))))) (or (is-Undefined!6051 lt!266264) (ite (is-Found!6051 lt!266264) (= (select (arr!17604 (array!36668 (store (arr!17604 a!2986) i!1108 k!1786) (size!17968 a!2986))) (index!26432 lt!266264)) (select (store (arr!17604 a!2986) i!1108 k!1786) j!136)) (and (is-MissingVacant!6051 lt!266264) (= (index!26434 lt!266264) vacantSpotIndex!68) (= (select (arr!17604 (array!36668 (store (arr!17604 a!2986) i!1108 k!1786) (size!17968 a!2986))) (index!26434 lt!266264)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!335374 () SeekEntryResult!6051)

(assert (=> d!85807 (= lt!266264 e!335374)))

(declare-fun c!66409 () Bool)

(assert (=> d!85807 (= c!66409 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!266263 () (_ BitVec 64))

(assert (=> d!85807 (= lt!266263 (select (arr!17604 (array!36668 (store (arr!17604 a!2986) i!1108 k!1786) (size!17968 a!2986))) lt!266226))))

(assert (=> d!85807 (validMask!0 mask!3053)))

(assert (=> d!85807 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266226 vacantSpotIndex!68 (select (store (arr!17604 a!2986) i!1108 k!1786) j!136) (array!36668 (store (arr!17604 a!2986) i!1108 k!1786) (size!17968 a!2986)) mask!3053) lt!266264)))

(declare-fun b!586995 () Bool)

(declare-fun e!335372 () SeekEntryResult!6051)

(assert (=> b!586995 (= e!335374 e!335372)))

(declare-fun c!66410 () Bool)

(assert (=> b!586995 (= c!66410 (= lt!266263 (select (store (arr!17604 a!2986) i!1108 k!1786) j!136)))))

(declare-fun b!586996 () Bool)

(declare-fun e!335373 () SeekEntryResult!6051)

(assert (=> b!586996 (= e!335373 (MissingVacant!6051 vacantSpotIndex!68))))

(declare-fun b!586997 () Bool)

(assert (=> b!586997 (= e!335374 Undefined!6051)))

(declare-fun b!586998 () Bool)

(assert (=> b!586998 (= e!335373 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!266226 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (store (arr!17604 a!2986) i!1108 k!1786) j!136) (array!36668 (store (arr!17604 a!2986) i!1108 k!1786) (size!17968 a!2986)) mask!3053))))

(declare-fun b!586999 () Bool)

(assert (=> b!586999 (= e!335372 (Found!6051 lt!266226))))

(declare-fun b!587000 () Bool)

(declare-fun c!66408 () Bool)

(assert (=> b!587000 (= c!66408 (= lt!266263 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!587000 (= e!335372 e!335373)))

(assert (= (and d!85807 c!66409) b!586997))

(assert (= (and d!85807 (not c!66409)) b!586995))

(assert (= (and b!586995 c!66410) b!586999))

(assert (= (and b!586995 (not c!66410)) b!587000))

(assert (= (and b!587000 c!66408) b!586996))

(assert (= (and b!587000 (not c!66408)) b!586998))

(declare-fun m!565523 () Bool)

(assert (=> d!85807 m!565523))

(declare-fun m!565525 () Bool)

(assert (=> d!85807 m!565525))

(declare-fun m!565527 () Bool)

(assert (=> d!85807 m!565527))

(assert (=> d!85807 m!565401))

(assert (=> b!586998 m!565519))

(assert (=> b!586998 m!565519))

(assert (=> b!586998 m!565391))

(declare-fun m!565529 () Bool)

(assert (=> b!586998 m!565529))

(assert (=> b!586875 d!85807))

(declare-fun d!85809 () Bool)

(declare-fun e!335401 () Bool)

(assert (=> d!85809 e!335401))

(declare-fun res!374934 () Bool)

(assert (=> d!85809 (=> (not res!374934) (not e!335401))))

(assert (=> d!85809 (= res!374934 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!17968 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17968 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!17968 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17968 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17968 a!2986))))))

(declare-fun lt!266288 () Unit!18226)

(declare-fun choose!9 (array!36667 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18226)

(assert (=> d!85809 (= lt!266288 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266226 vacantSpotIndex!68 mask!3053))))

(assert (=> d!85809 (validMask!0 mask!3053)))

(assert (=> d!85809 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266226 vacantSpotIndex!68 mask!3053) lt!266288)))

(declare-fun b!587032 () Bool)

(assert (=> b!587032 (= e!335401 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266226 vacantSpotIndex!68 (select (arr!17604 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266226 vacantSpotIndex!68 (select (store (arr!17604 a!2986) i!1108 k!1786) j!136) (array!36668 (store (arr!17604 a!2986) i!1108 k!1786) (size!17968 a!2986)) mask!3053)))))

(assert (= (and d!85809 res!374934) b!587032))

(declare-fun m!565549 () Bool)

(assert (=> d!85809 m!565549))

(assert (=> d!85809 m!565401))

(assert (=> b!587032 m!565381))

(assert (=> b!587032 m!565393))

(assert (=> b!587032 m!565395))

(assert (=> b!587032 m!565391))

(assert (=> b!587032 m!565399))

(assert (=> b!587032 m!565393))

(assert (=> b!587032 m!565391))

(assert (=> b!586875 d!85809))

(declare-fun d!85819 () Bool)

(declare-fun lt!266294 () (_ BitVec 32))

(assert (=> d!85819 (and (bvsge lt!266294 #b00000000000000000000000000000000) (bvslt lt!266294 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!85819 (= lt!266294 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!85819 (validMask!0 mask!3053)))

(assert (=> d!85819 (= (nextIndex!0 index!984 x!910 mask!3053) lt!266294)))

(declare-fun bs!18172 () Bool)

(assert (= bs!18172 d!85819))

(declare-fun m!565563 () Bool)

(assert (=> bs!18172 m!565563))

(assert (=> bs!18172 m!565401))

(assert (=> b!586875 d!85819))

(declare-fun d!85823 () Bool)

(assert (=> d!85823 (= (validKeyInArray!0 (select (arr!17604 a!2986) j!136)) (and (not (= (select (arr!17604 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17604 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!586870 d!85823))

(declare-fun d!85825 () Bool)

(declare-fun res!374948 () Bool)

(declare-fun e!335425 () Bool)

(assert (=> d!85825 (=> res!374948 e!335425)))

(assert (=> d!85825 (= res!374948 (bvsge #b00000000000000000000000000000000 (size!17968 a!2986)))))

(assert (=> d!85825 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!335425)))

(declare-fun b!587063 () Bool)

(declare-fun e!335423 () Bool)

(assert (=> b!587063 (= e!335425 e!335423)))

(declare-fun c!66425 () Bool)

(assert (=> b!587063 (= c!66425 (validKeyInArray!0 (select (arr!17604 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!587064 () Bool)

(declare-fun e!335424 () Bool)

(assert (=> b!587064 (= e!335423 e!335424)))

(declare-fun lt!266308 () (_ BitVec 64))

(assert (=> b!587064 (= lt!266308 (select (arr!17604 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!266309 () Unit!18226)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!36667 (_ BitVec 64) (_ BitVec 32)) Unit!18226)

(assert (=> b!587064 (= lt!266309 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!266308 #b00000000000000000000000000000000))))

(assert (=> b!587064 (arrayContainsKey!0 a!2986 lt!266308 #b00000000000000000000000000000000)))

(declare-fun lt!266307 () Unit!18226)

(assert (=> b!587064 (= lt!266307 lt!266309)))

(declare-fun res!374947 () Bool)

(assert (=> b!587064 (= res!374947 (= (seekEntryOrOpen!0 (select (arr!17604 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6051 #b00000000000000000000000000000000)))))

(assert (=> b!587064 (=> (not res!374947) (not e!335424))))

(declare-fun b!587065 () Bool)

(declare-fun call!32783 () Bool)

(assert (=> b!587065 (= e!335424 call!32783)))

(declare-fun bm!32780 () Bool)

(assert (=> bm!32780 (= call!32783 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!587066 () Bool)

(assert (=> b!587066 (= e!335423 call!32783)))

(assert (= (and d!85825 (not res!374948)) b!587063))

(assert (= (and b!587063 c!66425) b!587064))

(assert (= (and b!587063 (not c!66425)) b!587066))

(assert (= (and b!587064 res!374947) b!587065))

(assert (= (or b!587065 b!587066) bm!32780))

(declare-fun m!565567 () Bool)

(assert (=> b!587063 m!565567))

(assert (=> b!587063 m!565567))

(declare-fun m!565569 () Bool)

(assert (=> b!587063 m!565569))

(assert (=> b!587064 m!565567))

(declare-fun m!565571 () Bool)

(assert (=> b!587064 m!565571))

(declare-fun m!565573 () Bool)

(assert (=> b!587064 m!565573))

(assert (=> b!587064 m!565567))

(declare-fun m!565575 () Bool)

(assert (=> b!587064 m!565575))

(declare-fun m!565577 () Bool)

(assert (=> bm!32780 m!565577))

(assert (=> b!586871 d!85825))

(declare-fun d!85833 () Bool)

(assert (=> d!85833 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!53812 d!85833))

(declare-fun d!85841 () Bool)

(assert (=> d!85841 (= (array_inv!13378 a!2986) (bvsge (size!17968 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!53812 d!85841))

(declare-fun d!85845 () Bool)

(assert (=> d!85845 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!586878 d!85845))

(declare-fun b!587124 () Bool)

(declare-fun e!335465 () Bool)

(declare-fun call!32789 () Bool)

(assert (=> b!587124 (= e!335465 call!32789)))

(declare-fun b!587125 () Bool)

(declare-fun e!335464 () Bool)

(assert (=> b!587125 (= e!335464 e!335465)))

(declare-fun c!66443 () Bool)

(assert (=> b!587125 (= c!66443 (validKeyInArray!0 (select (arr!17604 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!85847 () Bool)

(declare-fun res!374971 () Bool)

(declare-fun e!335466 () Bool)

(assert (=> d!85847 (=> res!374971 e!335466)))

(assert (=> d!85847 (= res!374971 (bvsge #b00000000000000000000000000000000 (size!17968 a!2986)))))

(assert (=> d!85847 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11695) e!335466)))

(declare-fun b!587126 () Bool)

(declare-fun e!335467 () Bool)

(declare-fun contains!2909 (List!11698 (_ BitVec 64)) Bool)

(assert (=> b!587126 (= e!335467 (contains!2909 Nil!11695 (select (arr!17604 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!32786 () Bool)

(assert (=> bm!32786 (= call!32789 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!66443 (Cons!11694 (select (arr!17604 a!2986) #b00000000000000000000000000000000) Nil!11695) Nil!11695)))))

(declare-fun b!587127 () Bool)

(assert (=> b!587127 (= e!335466 e!335464)))

(declare-fun res!374970 () Bool)

(assert (=> b!587127 (=> (not res!374970) (not e!335464))))

(assert (=> b!587127 (= res!374970 (not e!335467))))

(declare-fun res!374972 () Bool)

(assert (=> b!587127 (=> (not res!374972) (not e!335467))))

(assert (=> b!587127 (= res!374972 (validKeyInArray!0 (select (arr!17604 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!587128 () Bool)

(assert (=> b!587128 (= e!335465 call!32789)))

(assert (= (and d!85847 (not res!374971)) b!587127))

(assert (= (and b!587127 res!374972) b!587126))

(assert (= (and b!587127 res!374970) b!587125))

(assert (= (and b!587125 c!66443) b!587124))

(assert (= (and b!587125 (not c!66443)) b!587128))

(assert (= (or b!587124 b!587128) bm!32786))

(assert (=> b!587125 m!565567))

(assert (=> b!587125 m!565567))

(assert (=> b!587125 m!565569))

(assert (=> b!587126 m!565567))

(assert (=> b!587126 m!565567))

(declare-fun m!565611 () Bool)

(assert (=> b!587126 m!565611))

(assert (=> bm!32786 m!565567))

(declare-fun m!565613 () Bool)

(assert (=> bm!32786 m!565613))

(assert (=> b!587127 m!565567))

(assert (=> b!587127 m!565567))

(assert (=> b!587127 m!565569))

(assert (=> b!586872 d!85847))

(declare-fun lt!266323 () SeekEntryResult!6051)

(declare-fun d!85851 () Bool)

(assert (=> d!85851 (and (or (is-Undefined!6051 lt!266323) (not (is-Found!6051 lt!266323)) (and (bvsge (index!26432 lt!266323) #b00000000000000000000000000000000) (bvslt (index!26432 lt!266323) (size!17968 a!2986)))) (or (is-Undefined!6051 lt!266323) (is-Found!6051 lt!266323) (not (is-MissingVacant!6051 lt!266323)) (not (= (index!26434 lt!266323) vacantSpotIndex!68)) (and (bvsge (index!26434 lt!266323) #b00000000000000000000000000000000) (bvslt (index!26434 lt!266323) (size!17968 a!2986)))) (or (is-Undefined!6051 lt!266323) (ite (is-Found!6051 lt!266323) (= (select (arr!17604 a!2986) (index!26432 lt!266323)) (select (arr!17604 a!2986) j!136)) (and (is-MissingVacant!6051 lt!266323) (= (index!26434 lt!266323) vacantSpotIndex!68) (= (select (arr!17604 a!2986) (index!26434 lt!266323)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!335472 () SeekEntryResult!6051)

(assert (=> d!85851 (= lt!266323 e!335472)))

(declare-fun c!66447 () Bool)

(assert (=> d!85851 (= c!66447 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!266322 () (_ BitVec 64))

(assert (=> d!85851 (= lt!266322 (select (arr!17604 a!2986) index!984))))

(assert (=> d!85851 (validMask!0 mask!3053)))

(assert (=> d!85851 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17604 a!2986) j!136) a!2986 mask!3053) lt!266323)))

(declare-fun b!587131 () Bool)

(declare-fun e!335470 () SeekEntryResult!6051)

(assert (=> b!587131 (= e!335472 e!335470)))

(declare-fun c!66448 () Bool)

(assert (=> b!587131 (= c!66448 (= lt!266322 (select (arr!17604 a!2986) j!136)))))

(declare-fun b!587132 () Bool)

(declare-fun e!335471 () SeekEntryResult!6051)

(assert (=> b!587132 (= e!335471 (MissingVacant!6051 vacantSpotIndex!68))))

(declare-fun b!587133 () Bool)

(assert (=> b!587133 (= e!335472 Undefined!6051)))

(declare-fun b!587134 () Bool)

(assert (=> b!587134 (= e!335471 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17604 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!587135 () Bool)

(assert (=> b!587135 (= e!335470 (Found!6051 index!984))))

(declare-fun b!587136 () Bool)

(declare-fun c!66446 () Bool)

(assert (=> b!587136 (= c!66446 (= lt!266322 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!587136 (= e!335470 e!335471)))

(assert (= (and d!85851 c!66447) b!587133))

(assert (= (and d!85851 (not c!66447)) b!587131))

(assert (= (and b!587131 c!66448) b!587135))

(assert (= (and b!587131 (not c!66448)) b!587136))

(assert (= (and b!587136 c!66446) b!587132))

(assert (= (and b!587136 (not c!66446)) b!587134))

(declare-fun m!565615 () Bool)

(assert (=> d!85851 m!565615))

(declare-fun m!565617 () Bool)

(assert (=> d!85851 m!565617))

(assert (=> d!85851 m!565411))

(assert (=> d!85851 m!565401))

(assert (=> b!587134 m!565389))

(assert (=> b!587134 m!565389))

(assert (=> b!587134 m!565393))

(declare-fun m!565619 () Bool)

(assert (=> b!587134 m!565619))

(assert (=> b!586879 d!85851))

(declare-fun b!587178 () Bool)

(declare-fun lt!266338 () SeekEntryResult!6051)

(declare-fun e!335497 () SeekEntryResult!6051)

(assert (=> b!587178 (= e!335497 (seekKeyOrZeroReturnVacant!0 (x!55267 lt!266338) (index!26433 lt!266338) (index!26433 lt!266338) k!1786 a!2986 mask!3053))))

(declare-fun b!587179 () Bool)

(declare-fun e!335496 () SeekEntryResult!6051)

(declare-fun e!335495 () SeekEntryResult!6051)

(assert (=> b!587179 (= e!335496 e!335495)))

(declare-fun lt!266339 () (_ BitVec 64))

(assert (=> b!587179 (= lt!266339 (select (arr!17604 a!2986) (index!26433 lt!266338)))))

(declare-fun c!66468 () Bool)

(assert (=> b!587179 (= c!66468 (= lt!266339 k!1786))))

(declare-fun d!85853 () Bool)

(declare-fun lt!266340 () SeekEntryResult!6051)

(assert (=> d!85853 (and (or (is-Undefined!6051 lt!266340) (not (is-Found!6051 lt!266340)) (and (bvsge (index!26432 lt!266340) #b00000000000000000000000000000000) (bvslt (index!26432 lt!266340) (size!17968 a!2986)))) (or (is-Undefined!6051 lt!266340) (is-Found!6051 lt!266340) (not (is-MissingZero!6051 lt!266340)) (and (bvsge (index!26431 lt!266340) #b00000000000000000000000000000000) (bvslt (index!26431 lt!266340) (size!17968 a!2986)))) (or (is-Undefined!6051 lt!266340) (is-Found!6051 lt!266340) (is-MissingZero!6051 lt!266340) (not (is-MissingVacant!6051 lt!266340)) (and (bvsge (index!26434 lt!266340) #b00000000000000000000000000000000) (bvslt (index!26434 lt!266340) (size!17968 a!2986)))) (or (is-Undefined!6051 lt!266340) (ite (is-Found!6051 lt!266340) (= (select (arr!17604 a!2986) (index!26432 lt!266340)) k!1786) (ite (is-MissingZero!6051 lt!266340) (= (select (arr!17604 a!2986) (index!26431 lt!266340)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6051 lt!266340) (= (select (arr!17604 a!2986) (index!26434 lt!266340)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!85853 (= lt!266340 e!335496)))

(declare-fun c!66469 () Bool)

(assert (=> d!85853 (= c!66469 (and (is-Intermediate!6051 lt!266338) (undefined!6863 lt!266338)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36667 (_ BitVec 32)) SeekEntryResult!6051)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!85853 (= lt!266338 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!85853 (validMask!0 mask!3053)))

(assert (=> d!85853 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!266340)))

(declare-fun b!587180 () Bool)

(assert (=> b!587180 (= e!335495 (Found!6051 (index!26433 lt!266338)))))

(declare-fun b!587181 () Bool)

(declare-fun c!66470 () Bool)

(assert (=> b!587181 (= c!66470 (= lt!266339 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!587181 (= e!335495 e!335497)))

(declare-fun b!587182 () Bool)

(assert (=> b!587182 (= e!335497 (MissingZero!6051 (index!26433 lt!266338)))))

(declare-fun b!587183 () Bool)

(assert (=> b!587183 (= e!335496 Undefined!6051)))

(assert (= (and d!85853 c!66469) b!587183))

(assert (= (and d!85853 (not c!66469)) b!587179))

(assert (= (and b!587179 c!66468) b!587180))

(assert (= (and b!587179 (not c!66468)) b!587181))

(assert (= (and b!587181 c!66470) b!587182))

(assert (= (and b!587181 (not c!66470)) b!587178))

(declare-fun m!565643 () Bool)

(assert (=> b!587178 m!565643))

(declare-fun m!565645 () Bool)

(assert (=> b!587179 m!565645))

(assert (=> d!85853 m!565401))

(declare-fun m!565647 () Bool)

(assert (=> d!85853 m!565647))

(declare-fun m!565649 () Bool)

(assert (=> d!85853 m!565649))

(declare-fun m!565651 () Bool)

(assert (=> d!85853 m!565651))

(declare-fun m!565653 () Bool)

(assert (=> d!85853 m!565653))

(assert (=> d!85853 m!565653))

(declare-fun m!565655 () Bool)

(assert (=> d!85853 m!565655))

(assert (=> b!586874 d!85853))

(declare-fun d!85859 () Bool)

(declare-fun res!374982 () Bool)

(declare-fun e!335504 () Bool)

(assert (=> d!85859 (=> res!374982 e!335504)))

(assert (=> d!85859 (= res!374982 (= (select (arr!17604 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!85859 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!335504)))

(declare-fun b!587190 () Bool)

(declare-fun e!335505 () Bool)

(assert (=> b!587190 (= e!335504 e!335505)))

(declare-fun res!374983 () Bool)

(assert (=> b!587190 (=> (not res!374983) (not e!335505))))

(assert (=> b!587190 (= res!374983 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17968 a!2986)))))

(declare-fun b!587191 () Bool)

(assert (=> b!587191 (= e!335505 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!85859 (not res!374982)) b!587190))

(assert (= (and b!587190 res!374983) b!587191))

(assert (=> d!85859 m!565567))

(declare-fun m!565657 () Bool)

(assert (=> b!587191 m!565657))

(assert (=> b!586873 d!85859))

(push 1)

