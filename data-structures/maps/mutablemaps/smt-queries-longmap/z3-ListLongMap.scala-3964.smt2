; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53814 () Bool)

(assert start!53814)

(declare-fun b!586903 () Bool)

(declare-fun res!374871 () Bool)

(declare-fun e!335337 () Bool)

(assert (=> b!586903 (=> (not res!374871) (not e!335337))))

(declare-datatypes ((array!36669 0))(
  ( (array!36670 (arr!17605 (Array (_ BitVec 32) (_ BitVec 64))) (size!17969 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36669)

(declare-datatypes ((List!11699 0))(
  ( (Nil!11696) (Cons!11695 (h!12740 (_ BitVec 64)) (t!17935 List!11699)) )
))
(declare-fun arrayNoDuplicates!0 (array!36669 (_ BitVec 32) List!11699) Bool)

(assert (=> b!586903 (= res!374871 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11696))))

(declare-fun res!374869 () Bool)

(declare-fun e!335336 () Bool)

(assert (=> start!53814 (=> (not res!374869) (not e!335336))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53814 (= res!374869 (validMask!0 mask!3053))))

(assert (=> start!53814 e!335336))

(assert (=> start!53814 true))

(declare-fun array_inv!13379 (array!36669) Bool)

(assert (=> start!53814 (array_inv!13379 a!2986)))

(declare-fun b!586904 () Bool)

(declare-fun res!374870 () Bool)

(assert (=> b!586904 (=> (not res!374870) (not e!335337))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6052 0))(
  ( (MissingZero!6052 (index!26435 (_ BitVec 32))) (Found!6052 (index!26436 (_ BitVec 32))) (Intermediate!6052 (undefined!6864 Bool) (index!26437 (_ BitVec 32)) (x!55268 (_ BitVec 32))) (Undefined!6052) (MissingVacant!6052 (index!26438 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36669 (_ BitVec 32)) SeekEntryResult!6052)

(assert (=> b!586904 (= res!374870 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17605 a!2986) j!136) a!2986 mask!3053) (Found!6052 j!136)))))

(declare-fun b!586905 () Bool)

(declare-fun lt!266236 () (_ BitVec 32))

(assert (=> b!586905 (= e!335337 (not (or (bvslt mask!3053 #b00000000000000000000000000000000) (and (bvsge lt!266236 #b00000000000000000000000000000000) (bvslt lt!266236 (bvadd #b00000000000000000000000000000001 mask!3053))))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!586905 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266236 vacantSpotIndex!68 (select (arr!17605 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266236 vacantSpotIndex!68 (select (store (arr!17605 a!2986) i!1108 k0!1786) j!136) (array!36670 (store (arr!17605 a!2986) i!1108 k0!1786) (size!17969 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18228 0))(
  ( (Unit!18229) )
))
(declare-fun lt!266237 () Unit!18228)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36669 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18228)

(assert (=> b!586905 (= lt!266237 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266236 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586905 (= lt!266236 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586906 () Bool)

(declare-fun res!374873 () Bool)

(assert (=> b!586906 (=> (not res!374873) (not e!335337))))

(assert (=> b!586906 (= res!374873 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17605 a!2986) index!984) (select (arr!17605 a!2986) j!136))) (not (= (select (arr!17605 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!586907 () Bool)

(declare-fun res!374874 () Bool)

(assert (=> b!586907 (=> (not res!374874) (not e!335336))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586907 (= res!374874 (validKeyInArray!0 k0!1786))))

(declare-fun b!586908 () Bool)

(declare-fun res!374879 () Bool)

(assert (=> b!586908 (=> (not res!374879) (not e!335337))))

(assert (=> b!586908 (= res!374879 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17605 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17605 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586909 () Bool)

(declare-fun res!374877 () Bool)

(assert (=> b!586909 (=> (not res!374877) (not e!335336))))

(assert (=> b!586909 (= res!374877 (and (= (size!17969 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17969 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17969 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586910 () Bool)

(declare-fun res!374875 () Bool)

(assert (=> b!586910 (=> (not res!374875) (not e!335337))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36669 (_ BitVec 32)) Bool)

(assert (=> b!586910 (= res!374875 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!586911 () Bool)

(declare-fun res!374872 () Bool)

(assert (=> b!586911 (=> (not res!374872) (not e!335336))))

(declare-fun arrayContainsKey!0 (array!36669 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586911 (= res!374872 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586912 () Bool)

(declare-fun res!374878 () Bool)

(assert (=> b!586912 (=> (not res!374878) (not e!335336))))

(assert (=> b!586912 (= res!374878 (validKeyInArray!0 (select (arr!17605 a!2986) j!136)))))

(declare-fun b!586913 () Bool)

(assert (=> b!586913 (= e!335336 e!335337)))

(declare-fun res!374876 () Bool)

(assert (=> b!586913 (=> (not res!374876) (not e!335337))))

(declare-fun lt!266235 () SeekEntryResult!6052)

(assert (=> b!586913 (= res!374876 (or (= lt!266235 (MissingZero!6052 i!1108)) (= lt!266235 (MissingVacant!6052 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36669 (_ BitVec 32)) SeekEntryResult!6052)

(assert (=> b!586913 (= lt!266235 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!53814 res!374869) b!586909))

(assert (= (and b!586909 res!374877) b!586912))

(assert (= (and b!586912 res!374878) b!586907))

(assert (= (and b!586907 res!374874) b!586911))

(assert (= (and b!586911 res!374872) b!586913))

(assert (= (and b!586913 res!374876) b!586910))

(assert (= (and b!586910 res!374875) b!586903))

(assert (= (and b!586903 res!374871) b!586908))

(assert (= (and b!586908 res!374879) b!586904))

(assert (= (and b!586904 res!374870) b!586906))

(assert (= (and b!586906 res!374873) b!586905))

(declare-fun m!565413 () Bool)

(assert (=> b!586904 m!565413))

(assert (=> b!586904 m!565413))

(declare-fun m!565415 () Bool)

(assert (=> b!586904 m!565415))

(declare-fun m!565417 () Bool)

(assert (=> b!586911 m!565417))

(declare-fun m!565419 () Bool)

(assert (=> b!586903 m!565419))

(declare-fun m!565421 () Bool)

(assert (=> b!586913 m!565421))

(declare-fun m!565423 () Bool)

(assert (=> b!586905 m!565423))

(assert (=> b!586905 m!565413))

(declare-fun m!565425 () Bool)

(assert (=> b!586905 m!565425))

(assert (=> b!586905 m!565423))

(declare-fun m!565427 () Bool)

(assert (=> b!586905 m!565427))

(assert (=> b!586905 m!565413))

(declare-fun m!565429 () Bool)

(assert (=> b!586905 m!565429))

(declare-fun m!565431 () Bool)

(assert (=> b!586905 m!565431))

(declare-fun m!565433 () Bool)

(assert (=> b!586905 m!565433))

(assert (=> b!586912 m!565413))

(assert (=> b!586912 m!565413))

(declare-fun m!565435 () Bool)

(assert (=> b!586912 m!565435))

(declare-fun m!565437 () Bool)

(assert (=> b!586906 m!565437))

(assert (=> b!586906 m!565413))

(declare-fun m!565439 () Bool)

(assert (=> start!53814 m!565439))

(declare-fun m!565441 () Bool)

(assert (=> start!53814 m!565441))

(declare-fun m!565443 () Bool)

(assert (=> b!586908 m!565443))

(assert (=> b!586908 m!565425))

(declare-fun m!565445 () Bool)

(assert (=> b!586908 m!565445))

(declare-fun m!565447 () Bool)

(assert (=> b!586910 m!565447))

(declare-fun m!565449 () Bool)

(assert (=> b!586907 m!565449))

(check-sat (not b!586907) (not b!586910) (not start!53814) (not b!586904) (not b!586912) (not b!586911) (not b!586905) (not b!586903) (not b!586913))
(check-sat)
(get-model)

(declare-fun d!85791 () Bool)

(assert (=> d!85791 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!53814 d!85791))

(declare-fun d!85793 () Bool)

(assert (=> d!85793 (= (array_inv!13379 a!2986) (bvsge (size!17969 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!53814 d!85793))

(declare-fun e!335356 () SeekEntryResult!6052)

(declare-fun b!586959 () Bool)

(assert (=> b!586959 (= e!335356 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17605 a!2986) j!136) a!2986 mask!3053))))

(declare-fun lt!266252 () SeekEntryResult!6052)

(declare-fun d!85795 () Bool)

(get-info :version)

(assert (=> d!85795 (and (or ((_ is Undefined!6052) lt!266252) (not ((_ is Found!6052) lt!266252)) (and (bvsge (index!26436 lt!266252) #b00000000000000000000000000000000) (bvslt (index!26436 lt!266252) (size!17969 a!2986)))) (or ((_ is Undefined!6052) lt!266252) ((_ is Found!6052) lt!266252) (not ((_ is MissingVacant!6052) lt!266252)) (not (= (index!26438 lt!266252) vacantSpotIndex!68)) (and (bvsge (index!26438 lt!266252) #b00000000000000000000000000000000) (bvslt (index!26438 lt!266252) (size!17969 a!2986)))) (or ((_ is Undefined!6052) lt!266252) (ite ((_ is Found!6052) lt!266252) (= (select (arr!17605 a!2986) (index!26436 lt!266252)) (select (arr!17605 a!2986) j!136)) (and ((_ is MissingVacant!6052) lt!266252) (= (index!26438 lt!266252) vacantSpotIndex!68) (= (select (arr!17605 a!2986) (index!26438 lt!266252)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!335354 () SeekEntryResult!6052)

(assert (=> d!85795 (= lt!266252 e!335354)))

(declare-fun c!66392 () Bool)

(assert (=> d!85795 (= c!66392 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!266251 () (_ BitVec 64))

(assert (=> d!85795 (= lt!266251 (select (arr!17605 a!2986) index!984))))

(assert (=> d!85795 (validMask!0 mask!3053)))

(assert (=> d!85795 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17605 a!2986) j!136) a!2986 mask!3053) lt!266252)))

(declare-fun b!586960 () Bool)

(assert (=> b!586960 (= e!335354 Undefined!6052)))

(declare-fun b!586961 () Bool)

(assert (=> b!586961 (= e!335356 (MissingVacant!6052 vacantSpotIndex!68))))

(declare-fun b!586962 () Bool)

(declare-fun c!66391 () Bool)

(assert (=> b!586962 (= c!66391 (= lt!266251 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!335355 () SeekEntryResult!6052)

(assert (=> b!586962 (= e!335355 e!335356)))

(declare-fun b!586963 () Bool)

(assert (=> b!586963 (= e!335354 e!335355)))

(declare-fun c!66390 () Bool)

(assert (=> b!586963 (= c!66390 (= lt!266251 (select (arr!17605 a!2986) j!136)))))

(declare-fun b!586964 () Bool)

(assert (=> b!586964 (= e!335355 (Found!6052 index!984))))

(assert (= (and d!85795 c!66392) b!586960))

(assert (= (and d!85795 (not c!66392)) b!586963))

(assert (= (and b!586963 c!66390) b!586964))

(assert (= (and b!586963 (not c!66390)) b!586962))

(assert (= (and b!586962 c!66391) b!586961))

(assert (= (and b!586962 (not c!66391)) b!586959))

(assert (=> b!586959 m!565431))

(assert (=> b!586959 m!565431))

(assert (=> b!586959 m!565413))

(declare-fun m!565489 () Bool)

(assert (=> b!586959 m!565489))

(declare-fun m!565491 () Bool)

(assert (=> d!85795 m!565491))

(declare-fun m!565493 () Bool)

(assert (=> d!85795 m!565493))

(assert (=> d!85795 m!565437))

(assert (=> d!85795 m!565439))

(assert (=> b!586904 d!85795))

(declare-fun e!335359 () SeekEntryResult!6052)

(declare-fun b!586965 () Bool)

(assert (=> b!586965 (= e!335359 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!266236 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17605 a!2986) j!136) a!2986 mask!3053))))

(declare-fun d!85799 () Bool)

(declare-fun lt!266254 () SeekEntryResult!6052)

(assert (=> d!85799 (and (or ((_ is Undefined!6052) lt!266254) (not ((_ is Found!6052) lt!266254)) (and (bvsge (index!26436 lt!266254) #b00000000000000000000000000000000) (bvslt (index!26436 lt!266254) (size!17969 a!2986)))) (or ((_ is Undefined!6052) lt!266254) ((_ is Found!6052) lt!266254) (not ((_ is MissingVacant!6052) lt!266254)) (not (= (index!26438 lt!266254) vacantSpotIndex!68)) (and (bvsge (index!26438 lt!266254) #b00000000000000000000000000000000) (bvslt (index!26438 lt!266254) (size!17969 a!2986)))) (or ((_ is Undefined!6052) lt!266254) (ite ((_ is Found!6052) lt!266254) (= (select (arr!17605 a!2986) (index!26436 lt!266254)) (select (arr!17605 a!2986) j!136)) (and ((_ is MissingVacant!6052) lt!266254) (= (index!26438 lt!266254) vacantSpotIndex!68) (= (select (arr!17605 a!2986) (index!26438 lt!266254)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!335357 () SeekEntryResult!6052)

(assert (=> d!85799 (= lt!266254 e!335357)))

(declare-fun c!66395 () Bool)

(assert (=> d!85799 (= c!66395 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!266253 () (_ BitVec 64))

(assert (=> d!85799 (= lt!266253 (select (arr!17605 a!2986) lt!266236))))

(assert (=> d!85799 (validMask!0 mask!3053)))

(assert (=> d!85799 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266236 vacantSpotIndex!68 (select (arr!17605 a!2986) j!136) a!2986 mask!3053) lt!266254)))

(declare-fun b!586966 () Bool)

(assert (=> b!586966 (= e!335357 Undefined!6052)))

(declare-fun b!586967 () Bool)

(assert (=> b!586967 (= e!335359 (MissingVacant!6052 vacantSpotIndex!68))))

(declare-fun b!586968 () Bool)

(declare-fun c!66394 () Bool)

(assert (=> b!586968 (= c!66394 (= lt!266253 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!335358 () SeekEntryResult!6052)

(assert (=> b!586968 (= e!335358 e!335359)))

(declare-fun b!586969 () Bool)

(assert (=> b!586969 (= e!335357 e!335358)))

(declare-fun c!66393 () Bool)

(assert (=> b!586969 (= c!66393 (= lt!266253 (select (arr!17605 a!2986) j!136)))))

(declare-fun b!586970 () Bool)

(assert (=> b!586970 (= e!335358 (Found!6052 lt!266236))))

(assert (= (and d!85799 c!66395) b!586966))

(assert (= (and d!85799 (not c!66395)) b!586969))

(assert (= (and b!586969 c!66393) b!586970))

(assert (= (and b!586969 (not c!66393)) b!586968))

(assert (= (and b!586968 c!66394) b!586967))

(assert (= (and b!586968 (not c!66394)) b!586965))

(declare-fun m!565495 () Bool)

(assert (=> b!586965 m!565495))

(assert (=> b!586965 m!565495))

(assert (=> b!586965 m!565413))

(declare-fun m!565497 () Bool)

(assert (=> b!586965 m!565497))

(declare-fun m!565499 () Bool)

(assert (=> d!85799 m!565499))

(declare-fun m!565501 () Bool)

(assert (=> d!85799 m!565501))

(declare-fun m!565503 () Bool)

(assert (=> d!85799 m!565503))

(assert (=> d!85799 m!565439))

(assert (=> b!586905 d!85799))

(declare-fun b!586971 () Bool)

(declare-fun e!335362 () SeekEntryResult!6052)

(assert (=> b!586971 (= e!335362 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!266236 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (store (arr!17605 a!2986) i!1108 k0!1786) j!136) (array!36670 (store (arr!17605 a!2986) i!1108 k0!1786) (size!17969 a!2986)) mask!3053))))

(declare-fun d!85801 () Bool)

(declare-fun lt!266256 () SeekEntryResult!6052)

(assert (=> d!85801 (and (or ((_ is Undefined!6052) lt!266256) (not ((_ is Found!6052) lt!266256)) (and (bvsge (index!26436 lt!266256) #b00000000000000000000000000000000) (bvslt (index!26436 lt!266256) (size!17969 (array!36670 (store (arr!17605 a!2986) i!1108 k0!1786) (size!17969 a!2986)))))) (or ((_ is Undefined!6052) lt!266256) ((_ is Found!6052) lt!266256) (not ((_ is MissingVacant!6052) lt!266256)) (not (= (index!26438 lt!266256) vacantSpotIndex!68)) (and (bvsge (index!26438 lt!266256) #b00000000000000000000000000000000) (bvslt (index!26438 lt!266256) (size!17969 (array!36670 (store (arr!17605 a!2986) i!1108 k0!1786) (size!17969 a!2986)))))) (or ((_ is Undefined!6052) lt!266256) (ite ((_ is Found!6052) lt!266256) (= (select (arr!17605 (array!36670 (store (arr!17605 a!2986) i!1108 k0!1786) (size!17969 a!2986))) (index!26436 lt!266256)) (select (store (arr!17605 a!2986) i!1108 k0!1786) j!136)) (and ((_ is MissingVacant!6052) lt!266256) (= (index!26438 lt!266256) vacantSpotIndex!68) (= (select (arr!17605 (array!36670 (store (arr!17605 a!2986) i!1108 k0!1786) (size!17969 a!2986))) (index!26438 lt!266256)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!335360 () SeekEntryResult!6052)

(assert (=> d!85801 (= lt!266256 e!335360)))

(declare-fun c!66398 () Bool)

(assert (=> d!85801 (= c!66398 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!266255 () (_ BitVec 64))

(assert (=> d!85801 (= lt!266255 (select (arr!17605 (array!36670 (store (arr!17605 a!2986) i!1108 k0!1786) (size!17969 a!2986))) lt!266236))))

(assert (=> d!85801 (validMask!0 mask!3053)))

(assert (=> d!85801 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266236 vacantSpotIndex!68 (select (store (arr!17605 a!2986) i!1108 k0!1786) j!136) (array!36670 (store (arr!17605 a!2986) i!1108 k0!1786) (size!17969 a!2986)) mask!3053) lt!266256)))

(declare-fun b!586972 () Bool)

(assert (=> b!586972 (= e!335360 Undefined!6052)))

(declare-fun b!586973 () Bool)

(assert (=> b!586973 (= e!335362 (MissingVacant!6052 vacantSpotIndex!68))))

(declare-fun b!586974 () Bool)

(declare-fun c!66397 () Bool)

(assert (=> b!586974 (= c!66397 (= lt!266255 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!335361 () SeekEntryResult!6052)

(assert (=> b!586974 (= e!335361 e!335362)))

(declare-fun b!586975 () Bool)

(assert (=> b!586975 (= e!335360 e!335361)))

(declare-fun c!66396 () Bool)

(assert (=> b!586975 (= c!66396 (= lt!266255 (select (store (arr!17605 a!2986) i!1108 k0!1786) j!136)))))

(declare-fun b!586976 () Bool)

(assert (=> b!586976 (= e!335361 (Found!6052 lt!266236))))

(assert (= (and d!85801 c!66398) b!586972))

(assert (= (and d!85801 (not c!66398)) b!586975))

(assert (= (and b!586975 c!66396) b!586976))

(assert (= (and b!586975 (not c!66396)) b!586974))

(assert (= (and b!586974 c!66397) b!586973))

(assert (= (and b!586974 (not c!66397)) b!586971))

(assert (=> b!586971 m!565495))

(assert (=> b!586971 m!565495))

(assert (=> b!586971 m!565423))

(declare-fun m!565505 () Bool)

(assert (=> b!586971 m!565505))

(declare-fun m!565507 () Bool)

(assert (=> d!85801 m!565507))

(declare-fun m!565509 () Bool)

(assert (=> d!85801 m!565509))

(declare-fun m!565511 () Bool)

(assert (=> d!85801 m!565511))

(assert (=> d!85801 m!565439))

(assert (=> b!586905 d!85801))

(declare-fun d!85803 () Bool)

(declare-fun e!335383 () Bool)

(assert (=> d!85803 e!335383))

(declare-fun res!374919 () Bool)

(assert (=> d!85803 (=> (not res!374919) (not e!335383))))

(assert (=> d!85803 (= res!374919 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!17969 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17969 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!17969 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17969 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17969 a!2986))))))

(declare-fun lt!266273 () Unit!18228)

(declare-fun choose!9 (array!36669 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18228)

(assert (=> d!85803 (= lt!266273 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266236 vacantSpotIndex!68 mask!3053))))

(assert (=> d!85803 (validMask!0 mask!3053)))

(assert (=> d!85803 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266236 vacantSpotIndex!68 mask!3053) lt!266273)))

(declare-fun b!587011 () Bool)

(assert (=> b!587011 (= e!335383 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266236 vacantSpotIndex!68 (select (arr!17605 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266236 vacantSpotIndex!68 (select (store (arr!17605 a!2986) i!1108 k0!1786) j!136) (array!36670 (store (arr!17605 a!2986) i!1108 k0!1786) (size!17969 a!2986)) mask!3053)))))

(assert (= (and d!85803 res!374919) b!587011))

(declare-fun m!565531 () Bool)

(assert (=> d!85803 m!565531))

(assert (=> d!85803 m!565439))

(assert (=> b!587011 m!565423))

(assert (=> b!587011 m!565427))

(assert (=> b!587011 m!565413))

(assert (=> b!587011 m!565429))

(assert (=> b!587011 m!565425))

(assert (=> b!587011 m!565423))

(assert (=> b!587011 m!565413))

(assert (=> b!586905 d!85803))

(declare-fun d!85811 () Bool)

(declare-fun lt!266279 () (_ BitVec 32))

(assert (=> d!85811 (and (bvsge lt!266279 #b00000000000000000000000000000000) (bvslt lt!266279 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!85811 (= lt!266279 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!85811 (validMask!0 mask!3053)))

(assert (=> d!85811 (= (nextIndex!0 index!984 x!910 mask!3053) lt!266279)))

(declare-fun bs!18171 () Bool)

(assert (= bs!18171 d!85811))

(declare-fun m!565545 () Bool)

(assert (=> bs!18171 m!565545))

(assert (=> bs!18171 m!565439))

(assert (=> b!586905 d!85811))

(declare-fun b!587033 () Bool)

(declare-fun e!335404 () Bool)

(declare-fun e!335402 () Bool)

(assert (=> b!587033 (= e!335404 e!335402)))

(declare-fun c!66416 () Bool)

(assert (=> b!587033 (= c!66416 (validKeyInArray!0 (select (arr!17605 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!85815 () Bool)

(declare-fun res!374936 () Bool)

(assert (=> d!85815 (=> res!374936 e!335404)))

(assert (=> d!85815 (= res!374936 (bvsge #b00000000000000000000000000000000 (size!17969 a!2986)))))

(assert (=> d!85815 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!335404)))

(declare-fun bm!32777 () Bool)

(declare-fun call!32780 () Bool)

(assert (=> bm!32777 (= call!32780 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!587034 () Bool)

(declare-fun e!335403 () Bool)

(assert (=> b!587034 (= e!335403 call!32780)))

(declare-fun b!587035 () Bool)

(assert (=> b!587035 (= e!335402 e!335403)))

(declare-fun lt!266290 () (_ BitVec 64))

(assert (=> b!587035 (= lt!266290 (select (arr!17605 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!266289 () Unit!18228)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!36669 (_ BitVec 64) (_ BitVec 32)) Unit!18228)

(assert (=> b!587035 (= lt!266289 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!266290 #b00000000000000000000000000000000))))

(assert (=> b!587035 (arrayContainsKey!0 a!2986 lt!266290 #b00000000000000000000000000000000)))

(declare-fun lt!266291 () Unit!18228)

(assert (=> b!587035 (= lt!266291 lt!266289)))

(declare-fun res!374935 () Bool)

(assert (=> b!587035 (= res!374935 (= (seekEntryOrOpen!0 (select (arr!17605 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6052 #b00000000000000000000000000000000)))))

(assert (=> b!587035 (=> (not res!374935) (not e!335403))))

(declare-fun b!587036 () Bool)

(assert (=> b!587036 (= e!335402 call!32780)))

(assert (= (and d!85815 (not res!374936)) b!587033))

(assert (= (and b!587033 c!66416) b!587035))

(assert (= (and b!587033 (not c!66416)) b!587036))

(assert (= (and b!587035 res!374935) b!587034))

(assert (= (or b!587034 b!587036) bm!32777))

(declare-fun m!565551 () Bool)

(assert (=> b!587033 m!565551))

(assert (=> b!587033 m!565551))

(declare-fun m!565553 () Bool)

(assert (=> b!587033 m!565553))

(declare-fun m!565555 () Bool)

(assert (=> bm!32777 m!565555))

(assert (=> b!587035 m!565551))

(declare-fun m!565557 () Bool)

(assert (=> b!587035 m!565557))

(declare-fun m!565559 () Bool)

(assert (=> b!587035 m!565559))

(assert (=> b!587035 m!565551))

(declare-fun m!565561 () Bool)

(assert (=> b!587035 m!565561))

(assert (=> b!586910 d!85815))

(declare-fun d!85821 () Bool)

(declare-fun res!374941 () Bool)

(declare-fun e!335409 () Bool)

(assert (=> d!85821 (=> res!374941 e!335409)))

(assert (=> d!85821 (= res!374941 (= (select (arr!17605 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!85821 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!335409)))

(declare-fun b!587041 () Bool)

(declare-fun e!335410 () Bool)

(assert (=> b!587041 (= e!335409 e!335410)))

(declare-fun res!374942 () Bool)

(assert (=> b!587041 (=> (not res!374942) (not e!335410))))

(assert (=> b!587041 (= res!374942 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17969 a!2986)))))

(declare-fun b!587042 () Bool)

(assert (=> b!587042 (= e!335410 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!85821 (not res!374941)) b!587041))

(assert (= (and b!587041 res!374942) b!587042))

(assert (=> d!85821 m!565551))

(declare-fun m!565565 () Bool)

(assert (=> b!587042 m!565565))

(assert (=> b!586911 d!85821))

(declare-fun d!85827 () Bool)

(assert (=> d!85827 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!586907 d!85827))

(declare-fun d!85829 () Bool)

(assert (=> d!85829 (= (validKeyInArray!0 (select (arr!17605 a!2986) j!136)) (and (not (= (select (arr!17605 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17605 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!586912 d!85829))

(declare-fun b!587100 () Bool)

(declare-fun e!335449 () SeekEntryResult!6052)

(assert (=> b!587100 (= e!335449 Undefined!6052)))

(declare-fun b!587101 () Bool)

(declare-fun lt!266319 () SeekEntryResult!6052)

(declare-fun e!335448 () SeekEntryResult!6052)

(assert (=> b!587101 (= e!335448 (seekKeyOrZeroReturnVacant!0 (x!55268 lt!266319) (index!26437 lt!266319) (index!26437 lt!266319) k0!1786 a!2986 mask!3053))))

(declare-fun b!587102 () Bool)

(declare-fun e!335447 () SeekEntryResult!6052)

(assert (=> b!587102 (= e!335447 (Found!6052 (index!26437 lt!266319)))))

(declare-fun b!587103 () Bool)

(assert (=> b!587103 (= e!335448 (MissingZero!6052 (index!26437 lt!266319)))))

(declare-fun b!587104 () Bool)

(assert (=> b!587104 (= e!335449 e!335447)))

(declare-fun lt!266320 () (_ BitVec 64))

(assert (=> b!587104 (= lt!266320 (select (arr!17605 a!2986) (index!26437 lt!266319)))))

(declare-fun c!66438 () Bool)

(assert (=> b!587104 (= c!66438 (= lt!266320 k0!1786))))

(declare-fun b!587105 () Bool)

(declare-fun c!66439 () Bool)

(assert (=> b!587105 (= c!66439 (= lt!266320 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!587105 (= e!335447 e!335448)))

(declare-fun d!85831 () Bool)

(declare-fun lt!266321 () SeekEntryResult!6052)

(assert (=> d!85831 (and (or ((_ is Undefined!6052) lt!266321) (not ((_ is Found!6052) lt!266321)) (and (bvsge (index!26436 lt!266321) #b00000000000000000000000000000000) (bvslt (index!26436 lt!266321) (size!17969 a!2986)))) (or ((_ is Undefined!6052) lt!266321) ((_ is Found!6052) lt!266321) (not ((_ is MissingZero!6052) lt!266321)) (and (bvsge (index!26435 lt!266321) #b00000000000000000000000000000000) (bvslt (index!26435 lt!266321) (size!17969 a!2986)))) (or ((_ is Undefined!6052) lt!266321) ((_ is Found!6052) lt!266321) ((_ is MissingZero!6052) lt!266321) (not ((_ is MissingVacant!6052) lt!266321)) (and (bvsge (index!26438 lt!266321) #b00000000000000000000000000000000) (bvslt (index!26438 lt!266321) (size!17969 a!2986)))) (or ((_ is Undefined!6052) lt!266321) (ite ((_ is Found!6052) lt!266321) (= (select (arr!17605 a!2986) (index!26436 lt!266321)) k0!1786) (ite ((_ is MissingZero!6052) lt!266321) (= (select (arr!17605 a!2986) (index!26435 lt!266321)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6052) lt!266321) (= (select (arr!17605 a!2986) (index!26438 lt!266321)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!85831 (= lt!266321 e!335449)))

(declare-fun c!66440 () Bool)

(assert (=> d!85831 (= c!66440 (and ((_ is Intermediate!6052) lt!266319) (undefined!6864 lt!266319)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36669 (_ BitVec 32)) SeekEntryResult!6052)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!85831 (= lt!266319 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!85831 (validMask!0 mask!3053)))

(assert (=> d!85831 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!266321)))

(assert (= (and d!85831 c!66440) b!587100))

(assert (= (and d!85831 (not c!66440)) b!587104))

(assert (= (and b!587104 c!66438) b!587102))

(assert (= (and b!587104 (not c!66438)) b!587105))

(assert (= (and b!587105 c!66439) b!587103))

(assert (= (and b!587105 (not c!66439)) b!587101))

(declare-fun m!565597 () Bool)

(assert (=> b!587101 m!565597))

(declare-fun m!565599 () Bool)

(assert (=> b!587104 m!565599))

(declare-fun m!565601 () Bool)

(assert (=> d!85831 m!565601))

(declare-fun m!565603 () Bool)

(assert (=> d!85831 m!565603))

(assert (=> d!85831 m!565439))

(declare-fun m!565605 () Bool)

(assert (=> d!85831 m!565605))

(declare-fun m!565607 () Bool)

(assert (=> d!85831 m!565607))

(assert (=> d!85831 m!565601))

(declare-fun m!565609 () Bool)

(assert (=> d!85831 m!565609))

(assert (=> b!586913 d!85831))

(declare-fun d!85849 () Bool)

(declare-fun res!374974 () Bool)

(declare-fun e!335476 () Bool)

(assert (=> d!85849 (=> res!374974 e!335476)))

(assert (=> d!85849 (= res!374974 (bvsge #b00000000000000000000000000000000 (size!17969 a!2986)))))

(assert (=> d!85849 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11696) e!335476)))

(declare-fun b!587137 () Bool)

(declare-fun e!335473 () Bool)

(assert (=> b!587137 (= e!335476 e!335473)))

(declare-fun res!374975 () Bool)

(assert (=> b!587137 (=> (not res!374975) (not e!335473))))

(declare-fun e!335475 () Bool)

(assert (=> b!587137 (= res!374975 (not e!335475))))

(declare-fun res!374973 () Bool)

(assert (=> b!587137 (=> (not res!374973) (not e!335475))))

(assert (=> b!587137 (= res!374973 (validKeyInArray!0 (select (arr!17605 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!32789 () Bool)

(declare-fun call!32792 () Bool)

(declare-fun c!66449 () Bool)

(assert (=> bm!32789 (= call!32792 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!66449 (Cons!11695 (select (arr!17605 a!2986) #b00000000000000000000000000000000) Nil!11696) Nil!11696)))))

(declare-fun b!587138 () Bool)

(declare-fun e!335474 () Bool)

(assert (=> b!587138 (= e!335474 call!32792)))

(declare-fun b!587139 () Bool)

(assert (=> b!587139 (= e!335473 e!335474)))

(assert (=> b!587139 (= c!66449 (validKeyInArray!0 (select (arr!17605 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!587140 () Bool)

(assert (=> b!587140 (= e!335474 call!32792)))

(declare-fun b!587141 () Bool)

(declare-fun contains!2908 (List!11699 (_ BitVec 64)) Bool)

(assert (=> b!587141 (= e!335475 (contains!2908 Nil!11696 (select (arr!17605 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!85849 (not res!374974)) b!587137))

(assert (= (and b!587137 res!374973) b!587141))

(assert (= (and b!587137 res!374975) b!587139))

(assert (= (and b!587139 c!66449) b!587140))

(assert (= (and b!587139 (not c!66449)) b!587138))

(assert (= (or b!587140 b!587138) bm!32789))

(assert (=> b!587137 m!565551))

(assert (=> b!587137 m!565551))

(assert (=> b!587137 m!565553))

(assert (=> bm!32789 m!565551))

(declare-fun m!565621 () Bool)

(assert (=> bm!32789 m!565621))

(assert (=> b!587139 m!565551))

(assert (=> b!587139 m!565551))

(assert (=> b!587139 m!565553))

(assert (=> b!587141 m!565551))

(assert (=> b!587141 m!565551))

(declare-fun m!565623 () Bool)

(assert (=> b!587141 m!565623))

(assert (=> b!586903 d!85849))

(check-sat (not d!85795) (not d!85799) (not b!587141) (not b!587137) (not d!85811) (not b!587035) (not d!85803) (not b!586965) (not b!587011) (not b!587101) (not bm!32789) (not bm!32777) (not b!586971) (not d!85831) (not b!586959) (not d!85801) (not b!587033) (not b!587042) (not b!587139))
(check-sat)
