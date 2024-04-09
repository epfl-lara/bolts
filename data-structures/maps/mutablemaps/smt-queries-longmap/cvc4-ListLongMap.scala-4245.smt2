; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58876 () Bool)

(assert start!58876)

(declare-fun b!648591 () Bool)

(declare-fun e!372015 () Bool)

(declare-fun e!372016 () Bool)

(assert (=> b!648591 (= e!372015 e!372016)))

(declare-fun res!420377 () Bool)

(assert (=> b!648591 (=> (not res!420377) (not e!372016))))

(declare-datatypes ((SeekEntryResult!6896 0))(
  ( (MissingZero!6896 (index!29930 (_ BitVec 32))) (Found!6896 (index!29931 (_ BitVec 32))) (Intermediate!6896 (undefined!7708 Bool) (index!29932 (_ BitVec 32)) (x!58742 (_ BitVec 32))) (Undefined!6896) (MissingVacant!6896 (index!29933 (_ BitVec 32))) )
))
(declare-fun lt!301113 () SeekEntryResult!6896)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!648591 (= res!420377 (or (= lt!301113 (MissingZero!6896 i!1108)) (= lt!301113 (MissingVacant!6896 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!38494 0))(
  ( (array!38495 (arr!18449 (Array (_ BitVec 32) (_ BitVec 64))) (size!18813 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38494)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38494 (_ BitVec 32)) SeekEntryResult!6896)

(assert (=> b!648591 (= lt!301113 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!648592 () Bool)

(declare-fun res!420358 () Bool)

(declare-fun e!372009 () Bool)

(assert (=> b!648592 (=> res!420358 e!372009)))

(declare-datatypes ((List!12543 0))(
  ( (Nil!12540) (Cons!12539 (h!13584 (_ BitVec 64)) (t!18779 List!12543)) )
))
(declare-fun contains!3166 (List!12543 (_ BitVec 64)) Bool)

(assert (=> b!648592 (= res!420358 (contains!3166 Nil!12540 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!648593 () Bool)

(declare-fun e!372013 () Bool)

(declare-fun e!372010 () Bool)

(assert (=> b!648593 (= e!372013 e!372010)))

(declare-fun res!420370 () Bool)

(assert (=> b!648593 (=> res!420370 e!372010)))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!648593 (= res!420370 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!22048 0))(
  ( (Unit!22049) )
))
(declare-fun lt!301118 () Unit!22048)

(declare-fun e!372021 () Unit!22048)

(assert (=> b!648593 (= lt!301118 e!372021)))

(declare-fun c!74485 () Bool)

(assert (=> b!648593 (= c!74485 (bvslt j!136 index!984))))

(declare-fun b!648594 () Bool)

(declare-fun res!420374 () Bool)

(assert (=> b!648594 (=> res!420374 e!372009)))

(declare-fun noDuplicate!426 (List!12543) Bool)

(assert (=> b!648594 (= res!420374 (not (noDuplicate!426 Nil!12540)))))

(declare-fun b!648595 () Bool)

(declare-fun Unit!22050 () Unit!22048)

(assert (=> b!648595 (= e!372021 Unit!22050)))

(declare-fun b!648596 () Bool)

(declare-fun Unit!22051 () Unit!22048)

(assert (=> b!648596 (= e!372021 Unit!22051)))

(declare-fun lt!301116 () Unit!22048)

(declare-fun lt!301127 () array!38494)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38494 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22048)

(assert (=> b!648596 (= lt!301116 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301127 (select (arr!18449 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38494 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!648596 (arrayContainsKey!0 lt!301127 (select (arr!18449 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!301126 () Unit!22048)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38494 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12543) Unit!22048)

(assert (=> b!648596 (= lt!301126 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12540))))

(declare-fun arrayNoDuplicates!0 (array!38494 (_ BitVec 32) List!12543) Bool)

(assert (=> b!648596 (arrayNoDuplicates!0 lt!301127 #b00000000000000000000000000000000 Nil!12540)))

(declare-fun lt!301124 () Unit!22048)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38494 (_ BitVec 32) (_ BitVec 32)) Unit!22048)

(assert (=> b!648596 (= lt!301124 (lemmaNoDuplicateFromThenFromBigger!0 lt!301127 #b00000000000000000000000000000000 j!136))))

(assert (=> b!648596 (arrayNoDuplicates!0 lt!301127 j!136 Nil!12540)))

(declare-fun lt!301121 () Unit!22048)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38494 (_ BitVec 64) (_ BitVec 32) List!12543) Unit!22048)

(assert (=> b!648596 (= lt!301121 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!301127 (select (arr!18449 a!2986) j!136) j!136 Nil!12540))))

(assert (=> b!648596 false))

(declare-fun b!648597 () Bool)

(declare-fun res!420367 () Bool)

(assert (=> b!648597 (=> (not res!420367) (not e!372015))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!648597 (= res!420367 (validKeyInArray!0 k!1786))))

(declare-fun b!648598 () Bool)

(declare-fun e!372017 () Bool)

(assert (=> b!648598 (= e!372017 e!372013)))

(declare-fun res!420373 () Bool)

(assert (=> b!648598 (=> res!420373 e!372013)))

(declare-fun lt!301112 () (_ BitVec 64))

(declare-fun lt!301120 () (_ BitVec 64))

(assert (=> b!648598 (= res!420373 (or (not (= (select (arr!18449 a!2986) j!136) lt!301120)) (not (= (select (arr!18449 a!2986) j!136) lt!301112))))))

(declare-fun e!372014 () Bool)

(assert (=> b!648598 e!372014))

(declare-fun res!420365 () Bool)

(assert (=> b!648598 (=> (not res!420365) (not e!372014))))

(assert (=> b!648598 (= res!420365 (= lt!301112 (select (arr!18449 a!2986) j!136)))))

(assert (=> b!648598 (= lt!301112 (select (store (arr!18449 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!648599 () Bool)

(declare-fun res!420361 () Bool)

(assert (=> b!648599 (=> (not res!420361) (not e!372016))))

(assert (=> b!648599 (= res!420361 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12540))))

(declare-fun b!648600 () Bool)

(declare-fun res!420355 () Bool)

(assert (=> b!648600 (=> (not res!420355) (not e!372016))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38494 (_ BitVec 32)) Bool)

(assert (=> b!648600 (= res!420355 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun e!372011 () Bool)

(declare-fun b!648601 () Bool)

(assert (=> b!648601 (= e!372011 (arrayContainsKey!0 lt!301127 (select (arr!18449 a!2986) j!136) index!984))))

(declare-fun b!648603 () Bool)

(declare-fun e!372007 () Unit!22048)

(declare-fun Unit!22052 () Unit!22048)

(assert (=> b!648603 (= e!372007 Unit!22052)))

(declare-fun b!648604 () Bool)

(declare-fun Unit!22053 () Unit!22048)

(assert (=> b!648604 (= e!372007 Unit!22053)))

(assert (=> b!648604 false))

(declare-fun b!648605 () Bool)

(declare-fun e!372012 () Bool)

(assert (=> b!648605 (= e!372014 e!372012)))

(declare-fun res!420360 () Bool)

(assert (=> b!648605 (=> res!420360 e!372012)))

(assert (=> b!648605 (= res!420360 (or (not (= (select (arr!18449 a!2986) j!136) lt!301120)) (not (= (select (arr!18449 a!2986) j!136) lt!301112)) (bvsge j!136 index!984)))))

(declare-fun b!648606 () Bool)

(declare-fun e!372019 () Bool)

(assert (=> b!648606 (= e!372019 (not e!372017))))

(declare-fun res!420363 () Bool)

(assert (=> b!648606 (=> res!420363 e!372017)))

(declare-fun lt!301117 () SeekEntryResult!6896)

(assert (=> b!648606 (= res!420363 (not (= lt!301117 (Found!6896 index!984))))))

(declare-fun lt!301122 () Unit!22048)

(assert (=> b!648606 (= lt!301122 e!372007)))

(declare-fun c!74486 () Bool)

(assert (=> b!648606 (= c!74486 (= lt!301117 Undefined!6896))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38494 (_ BitVec 32)) SeekEntryResult!6896)

(assert (=> b!648606 (= lt!301117 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!301120 lt!301127 mask!3053))))

(declare-fun e!372022 () Bool)

(assert (=> b!648606 e!372022))

(declare-fun res!420372 () Bool)

(assert (=> b!648606 (=> (not res!420372) (not e!372022))))

(declare-fun lt!301125 () (_ BitVec 32))

(declare-fun lt!301128 () SeekEntryResult!6896)

(assert (=> b!648606 (= res!420372 (= lt!301128 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301125 vacantSpotIndex!68 lt!301120 lt!301127 mask!3053)))))

(assert (=> b!648606 (= lt!301128 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301125 vacantSpotIndex!68 (select (arr!18449 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!648606 (= lt!301120 (select (store (arr!18449 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!301115 () Unit!22048)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38494 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22048)

(assert (=> b!648606 (= lt!301115 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!301125 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!648606 (= lt!301125 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun e!372018 () Bool)

(declare-fun b!648607 () Bool)

(assert (=> b!648607 (= e!372018 (arrayContainsKey!0 lt!301127 (select (arr!18449 a!2986) j!136) index!984))))

(declare-fun b!648608 () Bool)

(declare-fun lt!301119 () SeekEntryResult!6896)

(assert (=> b!648608 (= e!372022 (= lt!301119 lt!301128))))

(declare-fun b!648609 () Bool)

(declare-fun res!420356 () Bool)

(assert (=> b!648609 (=> (not res!420356) (not e!372016))))

(assert (=> b!648609 (= res!420356 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18449 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!648610 () Bool)

(assert (=> b!648610 (= e!372012 e!372011)))

(declare-fun res!420368 () Bool)

(assert (=> b!648610 (=> (not res!420368) (not e!372011))))

(assert (=> b!648610 (= res!420368 (arrayContainsKey!0 lt!301127 (select (arr!18449 a!2986) j!136) j!136))))

(declare-fun b!648611 () Bool)

(declare-fun e!372008 () Bool)

(assert (=> b!648611 (= e!372016 e!372008)))

(declare-fun res!420364 () Bool)

(assert (=> b!648611 (=> (not res!420364) (not e!372008))))

(assert (=> b!648611 (= res!420364 (= (select (store (arr!18449 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!648611 (= lt!301127 (array!38495 (store (arr!18449 a!2986) i!1108 k!1786) (size!18813 a!2986)))))

(declare-fun b!648612 () Bool)

(declare-fun res!420362 () Bool)

(assert (=> b!648612 (=> (not res!420362) (not e!372015))))

(assert (=> b!648612 (= res!420362 (validKeyInArray!0 (select (arr!18449 a!2986) j!136)))))

(declare-fun b!648613 () Bool)

(declare-fun res!420369 () Bool)

(assert (=> b!648613 (=> res!420369 e!372009)))

(assert (=> b!648613 (= res!420369 (contains!3166 Nil!12540 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!648614 () Bool)

(assert (=> b!648614 (= e!372009 true)))

(declare-fun lt!301114 () Bool)

(assert (=> b!648614 (= lt!301114 (contains!3166 Nil!12540 k!1786))))

(declare-fun b!648615 () Bool)

(assert (=> b!648615 (= e!372008 e!372019)))

(declare-fun res!420371 () Bool)

(assert (=> b!648615 (=> (not res!420371) (not e!372019))))

(assert (=> b!648615 (= res!420371 (and (= lt!301119 (Found!6896 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18449 a!2986) index!984) (select (arr!18449 a!2986) j!136))) (not (= (select (arr!18449 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!648615 (= lt!301119 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18449 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!420376 () Bool)

(assert (=> start!58876 (=> (not res!420376) (not e!372015))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58876 (= res!420376 (validMask!0 mask!3053))))

(assert (=> start!58876 e!372015))

(assert (=> start!58876 true))

(declare-fun array_inv!14223 (array!38494) Bool)

(assert (=> start!58876 (array_inv!14223 a!2986)))

(declare-fun b!648602 () Bool)

(declare-fun res!420359 () Bool)

(assert (=> b!648602 (=> (not res!420359) (not e!372015))))

(assert (=> b!648602 (= res!420359 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!648616 () Bool)

(declare-fun res!420375 () Bool)

(assert (=> b!648616 (=> (not res!420375) (not e!372015))))

(assert (=> b!648616 (= res!420375 (and (= (size!18813 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18813 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18813 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!648617 () Bool)

(assert (=> b!648617 (= e!372010 e!372009)))

(declare-fun res!420357 () Bool)

(assert (=> b!648617 (=> res!420357 e!372009)))

(assert (=> b!648617 (= res!420357 (or (bvsge (size!18813 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18813 a!2986))))))

(assert (=> b!648617 (arrayContainsKey!0 lt!301127 (select (arr!18449 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!301123 () Unit!22048)

(assert (=> b!648617 (= lt!301123 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301127 (select (arr!18449 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!648617 e!372018))

(declare-fun res!420366 () Bool)

(assert (=> b!648617 (=> (not res!420366) (not e!372018))))

(assert (=> b!648617 (= res!420366 (arrayContainsKey!0 lt!301127 (select (arr!18449 a!2986) j!136) j!136))))

(assert (= (and start!58876 res!420376) b!648616))

(assert (= (and b!648616 res!420375) b!648612))

(assert (= (and b!648612 res!420362) b!648597))

(assert (= (and b!648597 res!420367) b!648602))

(assert (= (and b!648602 res!420359) b!648591))

(assert (= (and b!648591 res!420377) b!648600))

(assert (= (and b!648600 res!420355) b!648599))

(assert (= (and b!648599 res!420361) b!648609))

(assert (= (and b!648609 res!420356) b!648611))

(assert (= (and b!648611 res!420364) b!648615))

(assert (= (and b!648615 res!420371) b!648606))

(assert (= (and b!648606 res!420372) b!648608))

(assert (= (and b!648606 c!74486) b!648604))

(assert (= (and b!648606 (not c!74486)) b!648603))

(assert (= (and b!648606 (not res!420363)) b!648598))

(assert (= (and b!648598 res!420365) b!648605))

(assert (= (and b!648605 (not res!420360)) b!648610))

(assert (= (and b!648610 res!420368) b!648601))

(assert (= (and b!648598 (not res!420373)) b!648593))

(assert (= (and b!648593 c!74485) b!648596))

(assert (= (and b!648593 (not c!74485)) b!648595))

(assert (= (and b!648593 (not res!420370)) b!648617))

(assert (= (and b!648617 res!420366) b!648607))

(assert (= (and b!648617 (not res!420357)) b!648594))

(assert (= (and b!648594 (not res!420374)) b!648613))

(assert (= (and b!648613 (not res!420369)) b!648592))

(assert (= (and b!648592 (not res!420358)) b!648614))

(declare-fun m!621987 () Bool)

(assert (=> b!648614 m!621987))

(declare-fun m!621989 () Bool)

(assert (=> b!648610 m!621989))

(assert (=> b!648610 m!621989))

(declare-fun m!621991 () Bool)

(assert (=> b!648610 m!621991))

(declare-fun m!621993 () Bool)

(assert (=> b!648606 m!621993))

(assert (=> b!648606 m!621989))

(declare-fun m!621995 () Bool)

(assert (=> b!648606 m!621995))

(declare-fun m!621997 () Bool)

(assert (=> b!648606 m!621997))

(assert (=> b!648606 m!621989))

(declare-fun m!621999 () Bool)

(assert (=> b!648606 m!621999))

(declare-fun m!622001 () Bool)

(assert (=> b!648606 m!622001))

(declare-fun m!622003 () Bool)

(assert (=> b!648606 m!622003))

(declare-fun m!622005 () Bool)

(assert (=> b!648606 m!622005))

(declare-fun m!622007 () Bool)

(assert (=> b!648597 m!622007))

(assert (=> b!648605 m!621989))

(declare-fun m!622009 () Bool)

(assert (=> b!648609 m!622009))

(declare-fun m!622011 () Bool)

(assert (=> b!648594 m!622011))

(assert (=> b!648617 m!621989))

(assert (=> b!648617 m!621989))

(declare-fun m!622013 () Bool)

(assert (=> b!648617 m!622013))

(assert (=> b!648617 m!621989))

(declare-fun m!622015 () Bool)

(assert (=> b!648617 m!622015))

(assert (=> b!648617 m!621989))

(assert (=> b!648617 m!621991))

(assert (=> b!648598 m!621989))

(assert (=> b!648598 m!621995))

(declare-fun m!622017 () Bool)

(assert (=> b!648598 m!622017))

(assert (=> b!648607 m!621989))

(assert (=> b!648607 m!621989))

(declare-fun m!622019 () Bool)

(assert (=> b!648607 m!622019))

(declare-fun m!622021 () Bool)

(assert (=> b!648591 m!622021))

(declare-fun m!622023 () Bool)

(assert (=> b!648600 m!622023))

(assert (=> b!648612 m!621989))

(assert (=> b!648612 m!621989))

(declare-fun m!622025 () Bool)

(assert (=> b!648612 m!622025))

(declare-fun m!622027 () Bool)

(assert (=> start!58876 m!622027))

(declare-fun m!622029 () Bool)

(assert (=> start!58876 m!622029))

(assert (=> b!648601 m!621989))

(assert (=> b!648601 m!621989))

(assert (=> b!648601 m!622019))

(assert (=> b!648596 m!621989))

(declare-fun m!622031 () Bool)

(assert (=> b!648596 m!622031))

(assert (=> b!648596 m!621989))

(declare-fun m!622033 () Bool)

(assert (=> b!648596 m!622033))

(declare-fun m!622035 () Bool)

(assert (=> b!648596 m!622035))

(declare-fun m!622037 () Bool)

(assert (=> b!648596 m!622037))

(declare-fun m!622039 () Bool)

(assert (=> b!648596 m!622039))

(declare-fun m!622041 () Bool)

(assert (=> b!648596 m!622041))

(assert (=> b!648596 m!621989))

(declare-fun m!622043 () Bool)

(assert (=> b!648596 m!622043))

(assert (=> b!648596 m!621989))

(declare-fun m!622045 () Bool)

(assert (=> b!648602 m!622045))

(declare-fun m!622047 () Bool)

(assert (=> b!648615 m!622047))

(assert (=> b!648615 m!621989))

(assert (=> b!648615 m!621989))

(declare-fun m!622049 () Bool)

(assert (=> b!648615 m!622049))

(declare-fun m!622051 () Bool)

(assert (=> b!648592 m!622051))

(declare-fun m!622053 () Bool)

(assert (=> b!648613 m!622053))

(declare-fun m!622055 () Bool)

(assert (=> b!648599 m!622055))

(assert (=> b!648611 m!621995))

(declare-fun m!622057 () Bool)

(assert (=> b!648611 m!622057))

(push 1)

