; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53816 () Bool)

(assert start!53816)

(declare-fun res!374912 () Bool)

(declare-fun e!335347 () Bool)

(assert (=> start!53816 (=> (not res!374912) (not e!335347))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53816 (= res!374912 (validMask!0 mask!3053))))

(assert (=> start!53816 e!335347))

(assert (=> start!53816 true))

(declare-datatypes ((array!36671 0))(
  ( (array!36672 (arr!17606 (Array (_ BitVec 32) (_ BitVec 64))) (size!17970 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36671)

(declare-fun array_inv!13380 (array!36671) Bool)

(assert (=> start!53816 (array_inv!13380 a!2986)))

(declare-fun b!586936 () Bool)

(declare-fun res!374907 () Bool)

(declare-fun e!335346 () Bool)

(assert (=> b!586936 (=> (not res!374907) (not e!335346))))

(declare-datatypes ((List!11700 0))(
  ( (Nil!11697) (Cons!11696 (h!12741 (_ BitVec 64)) (t!17936 List!11700)) )
))
(declare-fun arrayNoDuplicates!0 (array!36671 (_ BitVec 32) List!11700) Bool)

(assert (=> b!586936 (= res!374907 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11697))))

(declare-fun b!586937 () Bool)

(declare-fun res!374908 () Bool)

(assert (=> b!586937 (=> (not res!374908) (not e!335346))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6053 0))(
  ( (MissingZero!6053 (index!26439 (_ BitVec 32))) (Found!6053 (index!26440 (_ BitVec 32))) (Intermediate!6053 (undefined!6865 Bool) (index!26441 (_ BitVec 32)) (x!55269 (_ BitVec 32))) (Undefined!6053) (MissingVacant!6053 (index!26442 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36671 (_ BitVec 32)) SeekEntryResult!6053)

(assert (=> b!586937 (= res!374908 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17606 a!2986) j!136) a!2986 mask!3053) (Found!6053 j!136)))))

(declare-fun b!586938 () Bool)

(declare-fun res!374903 () Bool)

(assert (=> b!586938 (=> (not res!374903) (not e!335346))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36671 (_ BitVec 32)) Bool)

(assert (=> b!586938 (= res!374903 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!586939 () Bool)

(declare-fun res!374902 () Bool)

(assert (=> b!586939 (=> (not res!374902) (not e!335347))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586939 (= res!374902 (validKeyInArray!0 (select (arr!17606 a!2986) j!136)))))

(declare-fun b!586940 () Bool)

(declare-fun res!374910 () Bool)

(assert (=> b!586940 (=> (not res!374910) (not e!335346))))

(assert (=> b!586940 (= res!374910 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17606 a!2986) index!984) (select (arr!17606 a!2986) j!136))) (not (= (select (arr!17606 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!586941 () Bool)

(declare-fun res!374906 () Bool)

(assert (=> b!586941 (=> (not res!374906) (not e!335347))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!586941 (= res!374906 (and (= (size!17970 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17970 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17970 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586942 () Bool)

(declare-fun lt!266244 () (_ BitVec 32))

(assert (=> b!586942 (= e!335346 (not (or (bvslt mask!3053 #b00000000000000000000000000000000) (and (bvsge lt!266244 #b00000000000000000000000000000000) (bvslt lt!266244 (bvadd #b00000000000000000000000000000001 mask!3053))))))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!586942 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266244 vacantSpotIndex!68 (select (arr!17606 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266244 vacantSpotIndex!68 (select (store (arr!17606 a!2986) i!1108 k!1786) j!136) (array!36672 (store (arr!17606 a!2986) i!1108 k!1786) (size!17970 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18230 0))(
  ( (Unit!18231) )
))
(declare-fun lt!266245 () Unit!18230)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36671 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18230)

(assert (=> b!586942 (= lt!266245 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266244 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586942 (= lt!266244 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586943 () Bool)

(declare-fun res!374904 () Bool)

(assert (=> b!586943 (=> (not res!374904) (not e!335347))))

(declare-fun arrayContainsKey!0 (array!36671 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586943 (= res!374904 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586944 () Bool)

(assert (=> b!586944 (= e!335347 e!335346)))

(declare-fun res!374911 () Bool)

(assert (=> b!586944 (=> (not res!374911) (not e!335346))))

(declare-fun lt!266246 () SeekEntryResult!6053)

(assert (=> b!586944 (= res!374911 (or (= lt!266246 (MissingZero!6053 i!1108)) (= lt!266246 (MissingVacant!6053 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36671 (_ BitVec 32)) SeekEntryResult!6053)

(assert (=> b!586944 (= lt!266246 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!586945 () Bool)

(declare-fun res!374909 () Bool)

(assert (=> b!586945 (=> (not res!374909) (not e!335346))))

(assert (=> b!586945 (= res!374909 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17606 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17606 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586946 () Bool)

(declare-fun res!374905 () Bool)

(assert (=> b!586946 (=> (not res!374905) (not e!335347))))

(assert (=> b!586946 (= res!374905 (validKeyInArray!0 k!1786))))

(assert (= (and start!53816 res!374912) b!586941))

(assert (= (and b!586941 res!374906) b!586939))

(assert (= (and b!586939 res!374902) b!586946))

(assert (= (and b!586946 res!374905) b!586943))

(assert (= (and b!586943 res!374904) b!586944))

(assert (= (and b!586944 res!374911) b!586938))

(assert (= (and b!586938 res!374903) b!586936))

(assert (= (and b!586936 res!374907) b!586945))

(assert (= (and b!586945 res!374909) b!586937))

(assert (= (and b!586937 res!374908) b!586940))

(assert (= (and b!586940 res!374910) b!586942))

(declare-fun m!565451 () Bool)

(assert (=> b!586939 m!565451))

(assert (=> b!586939 m!565451))

(declare-fun m!565453 () Bool)

(assert (=> b!586939 m!565453))

(declare-fun m!565455 () Bool)

(assert (=> b!586943 m!565455))

(declare-fun m!565457 () Bool)

(assert (=> b!586940 m!565457))

(assert (=> b!586940 m!565451))

(declare-fun m!565459 () Bool)

(assert (=> b!586938 m!565459))

(declare-fun m!565461 () Bool)

(assert (=> b!586946 m!565461))

(declare-fun m!565463 () Bool)

(assert (=> b!586944 m!565463))

(declare-fun m!565465 () Bool)

(assert (=> b!586942 m!565465))

(declare-fun m!565467 () Bool)

(assert (=> b!586942 m!565467))

(declare-fun m!565469 () Bool)

(assert (=> b!586942 m!565469))

(declare-fun m!565471 () Bool)

(assert (=> b!586942 m!565471))

(assert (=> b!586942 m!565451))

(declare-fun m!565473 () Bool)

(assert (=> b!586942 m!565473))

(assert (=> b!586942 m!565451))

(assert (=> b!586942 m!565471))

(declare-fun m!565475 () Bool)

(assert (=> b!586942 m!565475))

(declare-fun m!565477 () Bool)

(assert (=> start!53816 m!565477))

(declare-fun m!565479 () Bool)

(assert (=> start!53816 m!565479))

(declare-fun m!565481 () Bool)

(assert (=> b!586945 m!565481))

(assert (=> b!586945 m!565465))

(declare-fun m!565483 () Bool)

(assert (=> b!586945 m!565483))

(assert (=> b!586937 m!565451))

(assert (=> b!586937 m!565451))

(declare-fun m!565485 () Bool)

(assert (=> b!586937 m!565485))

(declare-fun m!565487 () Bool)

(assert (=> b!586936 m!565487))

(push 1)

(assert (not b!586946))

(assert (not start!53816))

(assert (not b!586937))

(assert (not b!586936))

(assert (not b!586942))

(assert (not b!586938))

(assert (not b!586943))

(assert (not b!586944))

(assert (not b!586939))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!85805 () Bool)

(declare-fun res!374921 () Bool)

(declare-fun e!335385 () Bool)

(assert (=> d!85805 (=> res!374921 e!335385)))

(assert (=> d!85805 (= res!374921 (bvsge #b00000000000000000000000000000000 (size!17970 a!2986)))))

(assert (=> d!85805 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!335385)))

(declare-fun b!587012 () Bool)

(declare-fun e!335384 () Bool)

(declare-fun call!32777 () Bool)

(assert (=> b!587012 (= e!335384 call!32777)))

(declare-fun b!587013 () Bool)

(assert (=> b!587013 (= e!335385 e!335384)))

(declare-fun c!66413 () Bool)

(assert (=> b!587013 (= c!66413 (validKeyInArray!0 (select (arr!17606 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!32774 () Bool)

(assert (=> bm!32774 (= call!32777 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!587014 () Bool)

(declare-fun e!335386 () Bool)

(assert (=> b!587014 (= e!335384 e!335386)))

(declare-fun lt!266275 () (_ BitVec 64))

(assert (=> b!587014 (= lt!266275 (select (arr!17606 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!266276 () Unit!18230)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!36671 (_ BitVec 64) (_ BitVec 32)) Unit!18230)

(assert (=> b!587014 (= lt!266276 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!266275 #b00000000000000000000000000000000))))

(assert (=> b!587014 (arrayContainsKey!0 a!2986 lt!266275 #b00000000000000000000000000000000)))

(declare-fun lt!266274 () Unit!18230)

(assert (=> b!587014 (= lt!266274 lt!266276)))

(declare-fun res!374920 () Bool)

(assert (=> b!587014 (= res!374920 (= (seekEntryOrOpen!0 (select (arr!17606 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6053 #b00000000000000000000000000000000)))))

(assert (=> b!587014 (=> (not res!374920) (not e!335386))))

(declare-fun b!587015 () Bool)

(assert (=> b!587015 (= e!335386 call!32777)))

(assert (= (and d!85805 (not res!374921)) b!587013))

(assert (= (and b!587013 c!66413) b!587014))

(assert (= (and b!587013 (not c!66413)) b!587012))

(assert (= (and b!587014 res!374920) b!587015))

(assert (= (or b!587015 b!587012) bm!32774))

(declare-fun m!565533 () Bool)

(assert (=> b!587013 m!565533))

(assert (=> b!587013 m!565533))

(declare-fun m!565535 () Bool)

(assert (=> b!587013 m!565535))

(declare-fun m!565537 () Bool)

(assert (=> bm!32774 m!565537))

(assert (=> b!587014 m!565533))

(declare-fun m!565539 () Bool)

(assert (=> b!587014 m!565539))

(declare-fun m!565541 () Bool)

(assert (=> b!587014 m!565541))

(assert (=> b!587014 m!565533))

(declare-fun m!565543 () Bool)

(assert (=> b!587014 m!565543))

(assert (=> b!586938 d!85805))

(declare-fun d!85813 () Bool)

(declare-fun res!374926 () Bool)

(declare-fun e!335391 () Bool)

(assert (=> d!85813 (=> res!374926 e!335391)))

(assert (=> d!85813 (= res!374926 (= (select (arr!17606 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!85813 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!335391)))

(declare-fun b!587020 () Bool)

(declare-fun e!335392 () Bool)

(assert (=> b!587020 (= e!335391 e!335392)))

(declare-fun res!374927 () Bool)

(assert (=> b!587020 (=> (not res!374927) (not e!335392))))

(assert (=> b!587020 (= res!374927 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17970 a!2986)))))

(declare-fun b!587021 () Bool)

(assert (=> b!587021 (= e!335392 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!85813 (not res!374926)) b!587020))

(assert (= (and b!587020 res!374927) b!587021))

(assert (=> d!85813 m!565533))

(declare-fun m!565547 () Bool)

(assert (=> b!587021 m!565547))

(assert (=> b!586943 d!85813))

(declare-fun b!587067 () Bool)

(declare-fun c!66428 () Bool)

(declare-fun lt!266311 () (_ BitVec 64))

(assert (=> b!587067 (= c!66428 (= lt!266311 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!335427 () SeekEntryResult!6053)

(declare-fun e!335426 () SeekEntryResult!6053)

(assert (=> b!587067 (= e!335427 e!335426)))

(declare-fun d!85817 () Bool)

(declare-fun lt!266310 () SeekEntryResult!6053)

(assert (=> d!85817 (and (or (is-Undefined!6053 lt!266310) (not (is-Found!6053 lt!266310)) (and (bvsge (index!26440 lt!266310) #b00000000000000000000000000000000) (bvslt (index!26440 lt!266310) (size!17970 a!2986)))) (or (is-Undefined!6053 lt!266310) (is-Found!6053 lt!266310) (not (is-MissingZero!6053 lt!266310)) (and (bvsge (index!26439 lt!266310) #b00000000000000000000000000000000) (bvslt (index!26439 lt!266310) (size!17970 a!2986)))) (or (is-Undefined!6053 lt!266310) (is-Found!6053 lt!266310) (is-MissingZero!6053 lt!266310) (not (is-MissingVacant!6053 lt!266310)) (and (bvsge (index!26442 lt!266310) #b00000000000000000000000000000000) (bvslt (index!26442 lt!266310) (size!17970 a!2986)))) (or (is-Undefined!6053 lt!266310) (ite (is-Found!6053 lt!266310) (= (select (arr!17606 a!2986) (index!26440 lt!266310)) k!1786) (ite (is-MissingZero!6053 lt!266310) (= (select (arr!17606 a!2986) (index!26439 lt!266310)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6053 lt!266310) (= (select (arr!17606 a!2986) (index!26442 lt!266310)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!335428 () SeekEntryResult!6053)

(assert (=> d!85817 (= lt!266310 e!335428)))

(declare-fun c!66427 () Bool)

(declare-fun lt!266312 () SeekEntryResult!6053)

(assert (=> d!85817 (= c!66427 (and (is-Intermediate!6053 lt!266312) (undefined!6865 lt!266312)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36671 (_ BitVec 32)) SeekEntryResult!6053)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!85817 (= lt!266312 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!85817 (validMask!0 mask!3053)))

(assert (=> d!85817 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!266310)))

(declare-fun b!587068 () Bool)

(assert (=> b!587068 (= e!335426 (seekKeyOrZeroReturnVacant!0 (x!55269 lt!266312) (index!26441 lt!266312) (index!26441 lt!266312) k!1786 a!2986 mask!3053))))

(declare-fun b!587069 () Bool)

(assert (=> b!587069 (= e!335428 e!335427)))

(assert (=> b!587069 (= lt!266311 (select (arr!17606 a!2986) (index!26441 lt!266312)))))

(declare-fun c!66426 () Bool)

(assert (=> b!587069 (= c!66426 (= lt!266311 k!1786))))

(declare-fun b!587070 () Bool)

(assert (=> b!587070 (= e!335427 (Found!6053 (index!26441 lt!266312)))))

(declare-fun b!587071 () Bool)

(assert (=> b!587071 (= e!335428 Undefined!6053)))

(declare-fun b!587072 () Bool)

(assert (=> b!587072 (= e!335426 (MissingZero!6053 (index!26441 lt!266312)))))

(assert (= (and d!85817 c!66427) b!587071))

(assert (= (and d!85817 (not c!66427)) b!587069))

(assert (= (and b!587069 c!66426) b!587070))

(assert (= (and b!587069 (not c!66426)) b!587067))

(assert (= (and b!587067 c!66428) b!587072))

(assert (= (and b!587067 (not c!66428)) b!587068))

(declare-fun m!565579 () Bool)

(assert (=> d!85817 m!565579))

(assert (=> d!85817 m!565477))

(declare-fun m!565581 () Bool)

(assert (=> d!85817 m!565581))

(declare-fun m!565583 () Bool)

(assert (=> d!85817 m!565583))

(declare-fun m!565585 () Bool)

(assert (=> d!85817 m!565585))

(assert (=> d!85817 m!565579))

(declare-fun m!565587 () Bool)

(assert (=> d!85817 m!565587))

(declare-fun m!565589 () Bool)

(assert (=> b!587068 m!565589))

(declare-fun m!565591 () Bool)

(assert (=> b!587069 m!565591))

(assert (=> b!586944 d!85817))

(declare-fun d!85835 () Bool)

(assert (=> d!85835 (= (validKeyInArray!0 (select (arr!17606 a!2986) j!136)) (and (not (= (select (arr!17606 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17606 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!586939 d!85835))

(declare-fun d!85837 () Bool)

(assert (=> d!85837 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!586946 d!85837))

(declare-fun b!587095 () Bool)

(declare-fun e!335445 () Bool)

(declare-fun call!32786 () Bool)

(assert (=> b!587095 (= e!335445 call!32786)))

(declare-fun b!587096 () Bool)

(assert (=> b!587096 (= e!335445 call!32786)))

(declare-fun b!587097 () Bool)

(declare-fun e!335443 () Bool)

(declare-fun contains!2910 (List!11700 (_ BitVec 64)) Bool)

(assert (=> b!587097 (= e!335443 (contains!2910 Nil!11697 (select (arr!17606 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!587098 () Bool)

(declare-fun e!335446 () Bool)

(assert (=> b!587098 (= e!335446 e!335445)))

(declare-fun c!66437 () Bool)

(assert (=> b!587098 (= c!66437 (validKeyInArray!0 (select (arr!17606 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!587099 () Bool)

(declare-fun e!335444 () Bool)

(assert (=> b!587099 (= e!335444 e!335446)))

(declare-fun res!374955 () Bool)

(assert (=> b!587099 (=> (not res!374955) (not e!335446))))

(assert (=> b!587099 (= res!374955 (not e!335443))))

(declare-fun res!374956 () Bool)

(assert (=> b!587099 (=> (not res!374956) (not e!335443))))

(assert (=> b!587099 (= res!374956 (validKeyInArray!0 (select (arr!17606 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!85839 () Bool)

(declare-fun res!374957 () Bool)

(assert (=> d!85839 (=> res!374957 e!335444)))

(assert (=> d!85839 (= res!374957 (bvsge #b00000000000000000000000000000000 (size!17970 a!2986)))))

(assert (=> d!85839 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11697) e!335444)))

(declare-fun bm!32783 () Bool)

(assert (=> bm!32783 (= call!32786 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!66437 (Cons!11696 (select (arr!17606 a!2986) #b00000000000000000000000000000000) Nil!11697) Nil!11697)))))

(assert (= (and d!85839 (not res!374957)) b!587099))

(assert (= (and b!587099 res!374956) b!587097))

(assert (= (and b!587099 res!374955) b!587098))

(assert (= (and b!587098 c!66437) b!587096))

(assert (= (and b!587098 (not c!66437)) b!587095))

(assert (= (or b!587096 b!587095) bm!32783))

(assert (=> b!587097 m!565533))

(assert (=> b!587097 m!565533))

(declare-fun m!565593 () Bool)

(assert (=> b!587097 m!565593))

(assert (=> b!587098 m!565533))

(assert (=> b!587098 m!565533))

(assert (=> b!587098 m!565535))

(assert (=> b!587099 m!565533))

(assert (=> b!587099 m!565533))

(assert (=> b!587099 m!565535))

(assert (=> bm!32783 m!565533))

(declare-fun m!565595 () Bool)

(assert (=> bm!32783 m!565595))

(assert (=> b!586936 d!85839))

(declare-fun b!587154 () Bool)

(declare-fun e!335484 () SeekEntryResult!6053)

(assert (=> b!587154 (= e!335484 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!266244 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17606 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!587155 () Bool)

(assert (=> b!587155 (= e!335484 (MissingVacant!6053 vacantSpotIndex!68))))

(declare-fun b!587156 () Bool)

(declare-fun e!335485 () SeekEntryResult!6053)

(assert (=> b!587156 (= e!335485 (Found!6053 lt!266244))))

(declare-fun b!587157 () Bool)

(declare-fun e!335483 () SeekEntryResult!6053)

(assert (=> b!587157 (= e!335483 e!335485)))

(declare-fun lt!266328 () (_ BitVec 64))

(declare-fun c!66456 () Bool)

(assert (=> b!587157 (= c!66456 (= lt!266328 (select (arr!17606 a!2986) j!136)))))

(declare-fun b!587158 () Bool)

(declare-fun c!66458 () Bool)

(assert (=> b!587158 (= c!66458 (= lt!266328 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!587158 (= e!335485 e!335484)))

(declare-fun b!587159 () Bool)

(assert (=> b!587159 (= e!335483 Undefined!6053)))

(declare-fun d!85843 () Bool)

(declare-fun lt!266329 () SeekEntryResult!6053)

(assert (=> d!85843 (and (or (is-Undefined!6053 lt!266329) (not (is-Found!6053 lt!266329)) (and (bvsge (index!26440 lt!266329) #b00000000000000000000000000000000) (bvslt (index!26440 lt!266329) (size!17970 a!2986)))) (or (is-Undefined!6053 lt!266329) (is-Found!6053 lt!266329) (not (is-MissingVacant!6053 lt!266329)) (not (= (index!26442 lt!266329) vacantSpotIndex!68)) (and (bvsge (index!26442 lt!266329) #b00000000000000000000000000000000) (bvslt (index!26442 lt!266329) (size!17970 a!2986)))) (or (is-Undefined!6053 lt!266329) (ite (is-Found!6053 lt!266329) (= (select (arr!17606 a!2986) (index!26440 lt!266329)) (select (arr!17606 a!2986) j!136)) (and (is-MissingVacant!6053 lt!266329) (= (index!26442 lt!266329) vacantSpotIndex!68) (= (select (arr!17606 a!2986) (index!26442 lt!266329)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!85843 (= lt!266329 e!335483)))

(declare-fun c!66457 () Bool)

(assert (=> d!85843 (= c!66457 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!85843 (= lt!266328 (select (arr!17606 a!2986) lt!266244))))

(assert (=> d!85843 (validMask!0 mask!3053)))

(assert (=> d!85843 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266244 vacantSpotIndex!68 (select (arr!17606 a!2986) j!136) a!2986 mask!3053) lt!266329)))

(assert (= (and d!85843 c!66457) b!587159))

(assert (= (and d!85843 (not c!66457)) b!587157))

(assert (= (and b!587157 c!66456) b!587156))

(assert (= (and b!587157 (not c!66456)) b!587158))

(assert (= (and b!587158 c!66458) b!587155))

(assert (= (and b!587158 (not c!66458)) b!587154))

(declare-fun m!565625 () Bool)

(assert (=> b!587154 m!565625))

(assert (=> b!587154 m!565625))

(assert (=> b!587154 m!565451))

(declare-fun m!565627 () Bool)

(assert (=> b!587154 m!565627))

(declare-fun m!565629 () Bool)

(assert (=> d!85843 m!565629))

(declare-fun m!565631 () Bool)

(assert (=> d!85843 m!565631))

(declare-fun m!565633 () Bool)

(assert (=> d!85843 m!565633))

(assert (=> d!85843 m!565477))

(assert (=> b!586942 d!85843))

(declare-fun b!587160 () Bool)

(declare-fun e!335487 () SeekEntryResult!6053)

(assert (=> b!587160 (= e!335487 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!266244 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (store (arr!17606 a!2986) i!1108 k!1786) j!136) (array!36672 (store (arr!17606 a!2986) i!1108 k!1786) (size!17970 a!2986)) mask!3053))))

