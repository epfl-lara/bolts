; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55598 () Bool)

(assert start!55598)

(declare-fun b!608844 () Bool)

(declare-fun e!348702 () Bool)

(declare-datatypes ((SeekEntryResult!6340 0))(
  ( (MissingZero!6340 (index!27634 (_ BitVec 32))) (Found!6340 (index!27635 (_ BitVec 32))) (Intermediate!6340 (undefined!7152 Bool) (index!27636 (_ BitVec 32)) (x!56466 (_ BitVec 32))) (Undefined!6340) (MissingVacant!6340 (index!27637 (_ BitVec 32))) )
))
(declare-fun lt!278296 () SeekEntryResult!6340)

(declare-fun lt!278299 () SeekEntryResult!6340)

(assert (=> b!608844 (= e!348702 (= lt!278296 lt!278299))))

(declare-fun b!608845 () Bool)

(declare-datatypes ((Unit!19468 0))(
  ( (Unit!19469) )
))
(declare-fun e!348696 () Unit!19468)

(declare-fun Unit!19470 () Unit!19468)

(assert (=> b!608845 (= e!348696 Unit!19470)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37292 0))(
  ( (array!37293 (arr!17893 (Array (_ BitVec 32) (_ BitVec 64))) (size!18257 (_ BitVec 32))) )
))
(declare-fun lt!278295 () array!37292)

(declare-fun lt!278306 () Unit!19468)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37292)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37292 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19468)

(assert (=> b!608845 (= lt!278306 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278295 (select (arr!17893 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!37292 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!608845 (arrayContainsKey!0 lt!278295 (select (arr!17893 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun lt!278310 () Unit!19468)

(declare-datatypes ((List!11987 0))(
  ( (Nil!11984) (Cons!11983 (h!13028 (_ BitVec 64)) (t!18223 List!11987)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37292 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11987) Unit!19468)

(assert (=> b!608845 (= lt!278310 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11984))))

(declare-fun arrayNoDuplicates!0 (array!37292 (_ BitVec 32) List!11987) Bool)

(assert (=> b!608845 (arrayNoDuplicates!0 lt!278295 #b00000000000000000000000000000000 Nil!11984)))

(declare-fun lt!278298 () Unit!19468)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37292 (_ BitVec 32) (_ BitVec 32)) Unit!19468)

(assert (=> b!608845 (= lt!278298 (lemmaNoDuplicateFromThenFromBigger!0 lt!278295 #b00000000000000000000000000000000 j!136))))

(assert (=> b!608845 (arrayNoDuplicates!0 lt!278295 j!136 Nil!11984)))

(declare-fun lt!278301 () Unit!19468)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37292 (_ BitVec 64) (_ BitVec 32) List!11987) Unit!19468)

(assert (=> b!608845 (= lt!278301 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!278295 (select (arr!17893 a!2986) j!136) j!136 Nil!11984))))

(assert (=> b!608845 false))

(declare-fun b!608846 () Bool)

(declare-fun e!348703 () Bool)

(assert (=> b!608846 (= e!348703 (arrayContainsKey!0 lt!278295 (select (arr!17893 a!2986) j!136) index!984))))

(declare-fun b!608847 () Bool)

(declare-fun e!348699 () Unit!19468)

(declare-fun Unit!19471 () Unit!19468)

(assert (=> b!608847 (= e!348699 Unit!19471)))

(declare-fun b!608848 () Bool)

(declare-fun res!391603 () Bool)

(declare-fun e!348694 () Bool)

(assert (=> b!608848 (=> (not res!391603) (not e!348694))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!608848 (= res!391603 (validKeyInArray!0 k0!1786))))

(declare-fun b!608849 () Bool)

(declare-fun res!391600 () Bool)

(assert (=> b!608849 (=> (not res!391600) (not e!348694))))

(assert (=> b!608849 (= res!391600 (validKeyInArray!0 (select (arr!17893 a!2986) j!136)))))

(declare-fun b!608850 () Bool)

(declare-fun res!391621 () Bool)

(declare-fun e!348697 () Bool)

(assert (=> b!608850 (=> res!391621 e!348697)))

(declare-fun noDuplicate!335 (List!11987) Bool)

(assert (=> b!608850 (= res!391621 (not (noDuplicate!335 Nil!11984)))))

(declare-fun b!608851 () Bool)

(declare-fun res!391608 () Bool)

(declare-fun e!348692 () Bool)

(assert (=> b!608851 (=> (not res!391608) (not e!348692))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37292 (_ BitVec 32)) Bool)

(assert (=> b!608851 (= res!391608 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!391614 () Bool)

(assert (=> start!55598 (=> (not res!391614) (not e!348694))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55598 (= res!391614 (validMask!0 mask!3053))))

(assert (=> start!55598 e!348694))

(assert (=> start!55598 true))

(declare-fun array_inv!13667 (array!37292) Bool)

(assert (=> start!55598 (array_inv!13667 a!2986)))

(declare-fun b!608852 () Bool)

(declare-fun e!348691 () Bool)

(assert (=> b!608852 (= e!348692 e!348691)))

(declare-fun res!391604 () Bool)

(assert (=> b!608852 (=> (not res!391604) (not e!348691))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!608852 (= res!391604 (= (select (store (arr!17893 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!608852 (= lt!278295 (array!37293 (store (arr!17893 a!2986) i!1108 k0!1786) (size!18257 a!2986)))))

(declare-fun b!608853 () Bool)

(declare-fun e!348695 () Bool)

(assert (=> b!608853 (= e!348695 e!348697)))

(declare-fun res!391618 () Bool)

(assert (=> b!608853 (=> res!391618 e!348697)))

(assert (=> b!608853 (= res!391618 (or (bvsge (size!18257 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18257 a!2986))))))

(assert (=> b!608853 (arrayContainsKey!0 lt!278295 (select (arr!17893 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!278309 () Unit!19468)

(assert (=> b!608853 (= lt!278309 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278295 (select (arr!17893 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!608853 e!348703))

(declare-fun res!391613 () Bool)

(assert (=> b!608853 (=> (not res!391613) (not e!348703))))

(assert (=> b!608853 (= res!391613 (arrayContainsKey!0 lt!278295 (select (arr!17893 a!2986) j!136) j!136))))

(declare-fun b!608854 () Bool)

(declare-fun res!391601 () Bool)

(assert (=> b!608854 (=> res!391601 e!348697)))

(declare-fun contains!3033 (List!11987 (_ BitVec 64)) Bool)

(assert (=> b!608854 (= res!391601 (contains!3033 Nil!11984 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!608855 () Bool)

(declare-fun e!348705 () Bool)

(assert (=> b!608855 (= e!348705 e!348695)))

(declare-fun res!391620 () Bool)

(assert (=> b!608855 (=> res!391620 e!348695)))

(assert (=> b!608855 (= res!391620 (bvsge index!984 j!136))))

(declare-fun lt!278304 () Unit!19468)

(assert (=> b!608855 (= lt!278304 e!348696)))

(declare-fun c!68989 () Bool)

(assert (=> b!608855 (= c!68989 (bvslt j!136 index!984))))

(declare-fun b!608856 () Bool)

(declare-fun e!348701 () Bool)

(declare-fun e!348706 () Bool)

(assert (=> b!608856 (= e!348701 (not e!348706))))

(declare-fun res!391607 () Bool)

(assert (=> b!608856 (=> res!391607 e!348706)))

(declare-fun lt!278297 () SeekEntryResult!6340)

(assert (=> b!608856 (= res!391607 (not (= lt!278297 (Found!6340 index!984))))))

(declare-fun lt!278300 () Unit!19468)

(assert (=> b!608856 (= lt!278300 e!348699)))

(declare-fun c!68990 () Bool)

(assert (=> b!608856 (= c!68990 (= lt!278297 Undefined!6340))))

(declare-fun lt!278307 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37292 (_ BitVec 32)) SeekEntryResult!6340)

(assert (=> b!608856 (= lt!278297 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!278307 lt!278295 mask!3053))))

(assert (=> b!608856 e!348702))

(declare-fun res!391610 () Bool)

(assert (=> b!608856 (=> (not res!391610) (not e!348702))))

(declare-fun lt!278303 () (_ BitVec 32))

(assert (=> b!608856 (= res!391610 (= lt!278299 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278303 vacantSpotIndex!68 lt!278307 lt!278295 mask!3053)))))

(assert (=> b!608856 (= lt!278299 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278303 vacantSpotIndex!68 (select (arr!17893 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!608856 (= lt!278307 (select (store (arr!17893 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!278302 () Unit!19468)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37292 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19468)

(assert (=> b!608856 (= lt!278302 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!278303 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!608856 (= lt!278303 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!608857 () Bool)

(assert (=> b!608857 (= e!348694 e!348692)))

(declare-fun res!391611 () Bool)

(assert (=> b!608857 (=> (not res!391611) (not e!348692))))

(declare-fun lt!278308 () SeekEntryResult!6340)

(assert (=> b!608857 (= res!391611 (or (= lt!278308 (MissingZero!6340 i!1108)) (= lt!278308 (MissingVacant!6340 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37292 (_ BitVec 32)) SeekEntryResult!6340)

(assert (=> b!608857 (= lt!278308 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!608858 () Bool)

(assert (=> b!608858 (= e!348697 true)))

(declare-fun lt!278294 () Bool)

(assert (=> b!608858 (= lt!278294 (contains!3033 Nil!11984 k0!1786))))

(declare-fun b!608859 () Bool)

(declare-fun e!348693 () Bool)

(declare-fun e!348700 () Bool)

(assert (=> b!608859 (= e!348693 e!348700)))

(declare-fun res!391617 () Bool)

(assert (=> b!608859 (=> (not res!391617) (not e!348700))))

(assert (=> b!608859 (= res!391617 (arrayContainsKey!0 lt!278295 (select (arr!17893 a!2986) j!136) j!136))))

(declare-fun b!608860 () Bool)

(declare-fun res!391619 () Bool)

(assert (=> b!608860 (=> (not res!391619) (not e!348694))))

(assert (=> b!608860 (= res!391619 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!608861 () Bool)

(declare-fun res!391615 () Bool)

(assert (=> b!608861 (=> (not res!391615) (not e!348692))))

(assert (=> b!608861 (= res!391615 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11984))))

(declare-fun b!608862 () Bool)

(declare-fun Unit!19472 () Unit!19468)

(assert (=> b!608862 (= e!348696 Unit!19472)))

(declare-fun b!608863 () Bool)

(declare-fun res!391609 () Bool)

(assert (=> b!608863 (=> res!391609 e!348697)))

(assert (=> b!608863 (= res!391609 (contains!3033 Nil!11984 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!608864 () Bool)

(declare-fun res!391612 () Bool)

(assert (=> b!608864 (=> (not res!391612) (not e!348692))))

(assert (=> b!608864 (= res!391612 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17893 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!608865 () Bool)

(assert (=> b!608865 (= e!348691 e!348701)))

(declare-fun res!391605 () Bool)

(assert (=> b!608865 (=> (not res!391605) (not e!348701))))

(assert (=> b!608865 (= res!391605 (and (= lt!278296 (Found!6340 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17893 a!2986) index!984) (select (arr!17893 a!2986) j!136))) (not (= (select (arr!17893 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!608865 (= lt!278296 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17893 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!608866 () Bool)

(declare-fun e!348704 () Bool)

(assert (=> b!608866 (= e!348704 e!348693)))

(declare-fun res!391606 () Bool)

(assert (=> b!608866 (=> res!391606 e!348693)))

(declare-fun lt!278305 () (_ BitVec 64))

(assert (=> b!608866 (= res!391606 (or (not (= (select (arr!17893 a!2986) j!136) lt!278307)) (not (= (select (arr!17893 a!2986) j!136) lt!278305)) (bvsge j!136 index!984)))))

(declare-fun b!608867 () Bool)

(assert (=> b!608867 (= e!348700 (arrayContainsKey!0 lt!278295 (select (arr!17893 a!2986) j!136) index!984))))

(declare-fun b!608868 () Bool)

(declare-fun res!391616 () Bool)

(assert (=> b!608868 (=> (not res!391616) (not e!348694))))

(assert (=> b!608868 (= res!391616 (and (= (size!18257 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18257 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18257 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!608869 () Bool)

(assert (=> b!608869 (= e!348706 e!348705)))

(declare-fun res!391622 () Bool)

(assert (=> b!608869 (=> res!391622 e!348705)))

(assert (=> b!608869 (= res!391622 (or (not (= (select (arr!17893 a!2986) j!136) lt!278307)) (not (= (select (arr!17893 a!2986) j!136) lt!278305))))))

(assert (=> b!608869 e!348704))

(declare-fun res!391602 () Bool)

(assert (=> b!608869 (=> (not res!391602) (not e!348704))))

(assert (=> b!608869 (= res!391602 (= lt!278305 (select (arr!17893 a!2986) j!136)))))

(assert (=> b!608869 (= lt!278305 (select (store (arr!17893 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!608870 () Bool)

(declare-fun Unit!19473 () Unit!19468)

(assert (=> b!608870 (= e!348699 Unit!19473)))

(assert (=> b!608870 false))

(assert (= (and start!55598 res!391614) b!608868))

(assert (= (and b!608868 res!391616) b!608849))

(assert (= (and b!608849 res!391600) b!608848))

(assert (= (and b!608848 res!391603) b!608860))

(assert (= (and b!608860 res!391619) b!608857))

(assert (= (and b!608857 res!391611) b!608851))

(assert (= (and b!608851 res!391608) b!608861))

(assert (= (and b!608861 res!391615) b!608864))

(assert (= (and b!608864 res!391612) b!608852))

(assert (= (and b!608852 res!391604) b!608865))

(assert (= (and b!608865 res!391605) b!608856))

(assert (= (and b!608856 res!391610) b!608844))

(assert (= (and b!608856 c!68990) b!608870))

(assert (= (and b!608856 (not c!68990)) b!608847))

(assert (= (and b!608856 (not res!391607)) b!608869))

(assert (= (and b!608869 res!391602) b!608866))

(assert (= (and b!608866 (not res!391606)) b!608859))

(assert (= (and b!608859 res!391617) b!608867))

(assert (= (and b!608869 (not res!391622)) b!608855))

(assert (= (and b!608855 c!68989) b!608845))

(assert (= (and b!608855 (not c!68989)) b!608862))

(assert (= (and b!608855 (not res!391620)) b!608853))

(assert (= (and b!608853 res!391613) b!608846))

(assert (= (and b!608853 (not res!391618)) b!608850))

(assert (= (and b!608850 (not res!391621)) b!608854))

(assert (= (and b!608854 (not res!391601)) b!608863))

(assert (= (and b!608863 (not res!391609)) b!608858))

(declare-fun m!585453 () Bool)

(assert (=> b!608854 m!585453))

(declare-fun m!585455 () Bool)

(assert (=> b!608858 m!585455))

(declare-fun m!585457 () Bool)

(assert (=> b!608869 m!585457))

(declare-fun m!585459 () Bool)

(assert (=> b!608869 m!585459))

(declare-fun m!585461 () Bool)

(assert (=> b!608869 m!585461))

(declare-fun m!585463 () Bool)

(assert (=> b!608856 m!585463))

(declare-fun m!585465 () Bool)

(assert (=> b!608856 m!585465))

(assert (=> b!608856 m!585457))

(assert (=> b!608856 m!585459))

(declare-fun m!585467 () Bool)

(assert (=> b!608856 m!585467))

(assert (=> b!608856 m!585457))

(declare-fun m!585469 () Bool)

(assert (=> b!608856 m!585469))

(declare-fun m!585471 () Bool)

(assert (=> b!608856 m!585471))

(declare-fun m!585473 () Bool)

(assert (=> b!608856 m!585473))

(declare-fun m!585475 () Bool)

(assert (=> b!608864 m!585475))

(declare-fun m!585477 () Bool)

(assert (=> b!608861 m!585477))

(assert (=> b!608859 m!585457))

(assert (=> b!608859 m!585457))

(declare-fun m!585479 () Bool)

(assert (=> b!608859 m!585479))

(declare-fun m!585481 () Bool)

(assert (=> b!608848 m!585481))

(declare-fun m!585483 () Bool)

(assert (=> start!55598 m!585483))

(declare-fun m!585485 () Bool)

(assert (=> start!55598 m!585485))

(declare-fun m!585487 () Bool)

(assert (=> b!608850 m!585487))

(assert (=> b!608845 m!585457))

(declare-fun m!585489 () Bool)

(assert (=> b!608845 m!585489))

(assert (=> b!608845 m!585457))

(declare-fun m!585491 () Bool)

(assert (=> b!608845 m!585491))

(declare-fun m!585493 () Bool)

(assert (=> b!608845 m!585493))

(declare-fun m!585495 () Bool)

(assert (=> b!608845 m!585495))

(declare-fun m!585497 () Bool)

(assert (=> b!608845 m!585497))

(assert (=> b!608845 m!585457))

(declare-fun m!585499 () Bool)

(assert (=> b!608845 m!585499))

(assert (=> b!608845 m!585457))

(declare-fun m!585501 () Bool)

(assert (=> b!608845 m!585501))

(assert (=> b!608849 m!585457))

(assert (=> b!608849 m!585457))

(declare-fun m!585503 () Bool)

(assert (=> b!608849 m!585503))

(assert (=> b!608846 m!585457))

(assert (=> b!608846 m!585457))

(declare-fun m!585505 () Bool)

(assert (=> b!608846 m!585505))

(assert (=> b!608867 m!585457))

(assert (=> b!608867 m!585457))

(assert (=> b!608867 m!585505))

(declare-fun m!585507 () Bool)

(assert (=> b!608860 m!585507))

(declare-fun m!585509 () Bool)

(assert (=> b!608863 m!585509))

(assert (=> b!608866 m!585457))

(declare-fun m!585511 () Bool)

(assert (=> b!608851 m!585511))

(declare-fun m!585513 () Bool)

(assert (=> b!608857 m!585513))

(assert (=> b!608853 m!585457))

(assert (=> b!608853 m!585457))

(declare-fun m!585515 () Bool)

(assert (=> b!608853 m!585515))

(assert (=> b!608853 m!585457))

(declare-fun m!585517 () Bool)

(assert (=> b!608853 m!585517))

(assert (=> b!608853 m!585457))

(assert (=> b!608853 m!585479))

(declare-fun m!585519 () Bool)

(assert (=> b!608865 m!585519))

(assert (=> b!608865 m!585457))

(assert (=> b!608865 m!585457))

(declare-fun m!585521 () Bool)

(assert (=> b!608865 m!585521))

(assert (=> b!608852 m!585459))

(declare-fun m!585523 () Bool)

(assert (=> b!608852 m!585523))

(check-sat (not b!608850) (not start!55598) (not b!608848) (not b!608851) (not b!608845) (not b!608867) (not b!608856) (not b!608860) (not b!608865) (not b!608846) (not b!608854) (not b!608861) (not b!608863) (not b!608858) (not b!608857) (not b!608853) (not b!608859) (not b!608849))
(check-sat)
