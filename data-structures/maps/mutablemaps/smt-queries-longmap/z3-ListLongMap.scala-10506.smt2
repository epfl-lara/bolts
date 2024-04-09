; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123774 () Bool)

(assert start!123774)

(declare-fun b!1434284 () Bool)

(declare-fun res!967857 () Bool)

(declare-fun e!809528 () Bool)

(assert (=> b!1434284 (=> (not res!967857) (not e!809528))))

(declare-datatypes ((SeekEntryResult!11376 0))(
  ( (MissingZero!11376 (index!47895 (_ BitVec 32))) (Found!11376 (index!47896 (_ BitVec 32))) (Intermediate!11376 (undefined!12188 Bool) (index!47897 (_ BitVec 32)) (x!129551 (_ BitVec 32))) (Undefined!11376) (MissingVacant!11376 (index!47898 (_ BitVec 32))) )
))
(declare-fun lt!631376 () SeekEntryResult!11376)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97550 0))(
  ( (array!97551 (arr!47075 (Array (_ BitVec 32) (_ BitVec 64))) (size!47626 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97550)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97550 (_ BitVec 32)) SeekEntryResult!11376)

(assert (=> b!1434284 (= res!967857 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47075 a!2831) j!81) a!2831 mask!2608) lt!631376))))

(declare-fun b!1434285 () Bool)

(declare-fun res!967864 () Bool)

(declare-fun e!809530 () Bool)

(assert (=> b!1434285 (=> (not res!967864) (not e!809530))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1434285 (= res!967864 (and (= (size!47626 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47626 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47626 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1434286 () Bool)

(declare-fun res!967862 () Bool)

(assert (=> b!1434286 (=> (not res!967862) (not e!809530))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1434286 (= res!967862 (validKeyInArray!0 (select (arr!47075 a!2831) i!982)))))

(declare-fun b!1434287 () Bool)

(declare-fun res!967866 () Bool)

(assert (=> b!1434287 (=> (not res!967866) (not e!809530))))

(declare-datatypes ((List!33765 0))(
  ( (Nil!33762) (Cons!33761 (h!35090 (_ BitVec 64)) (t!48466 List!33765)) )
))
(declare-fun arrayNoDuplicates!0 (array!97550 (_ BitVec 32) List!33765) Bool)

(assert (=> b!1434287 (= res!967866 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33762))))

(declare-fun b!1434288 () Bool)

(declare-fun e!809527 () Bool)

(declare-fun e!809531 () Bool)

(assert (=> b!1434288 (= e!809527 e!809531)))

(declare-fun res!967859 () Bool)

(assert (=> b!1434288 (=> res!967859 e!809531)))

(declare-fun lt!631374 () (_ BitVec 32))

(assert (=> b!1434288 (= res!967859 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!631374 #b00000000000000000000000000000000) (bvsge lt!631374 (size!47626 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1434288 (= lt!631374 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun res!967856 () Bool)

(assert (=> start!123774 (=> (not res!967856) (not e!809530))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123774 (= res!967856 (validMask!0 mask!2608))))

(assert (=> start!123774 e!809530))

(assert (=> start!123774 true))

(declare-fun array_inv!36020 (array!97550) Bool)

(assert (=> start!123774 (array_inv!36020 a!2831)))

(declare-fun b!1434289 () Bool)

(declare-fun res!967861 () Bool)

(assert (=> b!1434289 (=> (not res!967861) (not e!809530))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97550 (_ BitVec 32)) Bool)

(assert (=> b!1434289 (= res!967861 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1434290 () Bool)

(declare-fun e!809525 () Bool)

(assert (=> b!1434290 (= e!809525 e!809528)))

(declare-fun res!967860 () Bool)

(assert (=> b!1434290 (=> (not res!967860) (not e!809528))))

(declare-fun lt!631373 () (_ BitVec 64))

(declare-fun lt!631377 () array!97550)

(declare-fun lt!631378 () SeekEntryResult!11376)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1434290 (= res!967860 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631373 mask!2608) lt!631373 lt!631377 mask!2608) lt!631378))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1434290 (= lt!631378 (Intermediate!11376 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1434290 (= lt!631373 (select (store (arr!47075 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1434290 (= lt!631377 (array!97551 (store (arr!47075 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47626 a!2831)))))

(declare-fun b!1434291 () Bool)

(declare-fun res!967863 () Bool)

(assert (=> b!1434291 (=> (not res!967863) (not e!809528))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1434291 (= res!967863 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1434292 () Bool)

(declare-fun res!967868 () Bool)

(assert (=> b!1434292 (=> (not res!967868) (not e!809530))))

(assert (=> b!1434292 (= res!967868 (validKeyInArray!0 (select (arr!47075 a!2831) j!81)))))

(declare-fun b!1434293 () Bool)

(assert (=> b!1434293 (= e!809530 e!809525)))

(declare-fun res!967865 () Bool)

(assert (=> b!1434293 (=> (not res!967865) (not e!809525))))

(assert (=> b!1434293 (= res!967865 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47075 a!2831) j!81) mask!2608) (select (arr!47075 a!2831) j!81) a!2831 mask!2608) lt!631376))))

(assert (=> b!1434293 (= lt!631376 (Intermediate!11376 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1434294 () Bool)

(declare-fun res!967855 () Bool)

(assert (=> b!1434294 (=> (not res!967855) (not e!809530))))

(assert (=> b!1434294 (= res!967855 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47626 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47626 a!2831))))))

(declare-fun b!1434295 () Bool)

(declare-fun e!809526 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97550 (_ BitVec 32)) SeekEntryResult!11376)

(assert (=> b!1434295 (= e!809526 (= (seekEntryOrOpen!0 (select (arr!47075 a!2831) j!81) a!2831 mask!2608) (Found!11376 j!81)))))

(declare-fun b!1434296 () Bool)

(assert (=> b!1434296 (= e!809528 (not e!809527))))

(declare-fun res!967858 () Bool)

(assert (=> b!1434296 (=> res!967858 e!809527)))

(assert (=> b!1434296 (= res!967858 (or (= (select (arr!47075 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47075 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47075 a!2831) index!585) (select (arr!47075 a!2831) j!81)) (= (select (store (arr!47075 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1434296 e!809526))

(declare-fun res!967867 () Bool)

(assert (=> b!1434296 (=> (not res!967867) (not e!809526))))

(assert (=> b!1434296 (= res!967867 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48446 0))(
  ( (Unit!48447) )
))
(declare-fun lt!631375 () Unit!48446)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97550 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48446)

(assert (=> b!1434296 (= lt!631375 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1434297 () Bool)

(assert (=> b!1434297 (= e!809531 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631374 (select (arr!47075 a!2831) j!81) a!2831 mask!2608) lt!631376))))

(declare-fun b!1434298 () Bool)

(declare-fun res!967869 () Bool)

(assert (=> b!1434298 (=> (not res!967869) (not e!809528))))

(assert (=> b!1434298 (= res!967869 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631373 lt!631377 mask!2608) lt!631378))))

(assert (= (and start!123774 res!967856) b!1434285))

(assert (= (and b!1434285 res!967864) b!1434286))

(assert (= (and b!1434286 res!967862) b!1434292))

(assert (= (and b!1434292 res!967868) b!1434289))

(assert (= (and b!1434289 res!967861) b!1434287))

(assert (= (and b!1434287 res!967866) b!1434294))

(assert (= (and b!1434294 res!967855) b!1434293))

(assert (= (and b!1434293 res!967865) b!1434290))

(assert (= (and b!1434290 res!967860) b!1434284))

(assert (= (and b!1434284 res!967857) b!1434298))

(assert (= (and b!1434298 res!967869) b!1434291))

(assert (= (and b!1434291 res!967863) b!1434296))

(assert (= (and b!1434296 res!967867) b!1434295))

(assert (= (and b!1434296 (not res!967858)) b!1434288))

(assert (= (and b!1434288 (not res!967859)) b!1434297))

(declare-fun m!1323963 () Bool)

(assert (=> b!1434293 m!1323963))

(assert (=> b!1434293 m!1323963))

(declare-fun m!1323965 () Bool)

(assert (=> b!1434293 m!1323965))

(assert (=> b!1434293 m!1323965))

(assert (=> b!1434293 m!1323963))

(declare-fun m!1323967 () Bool)

(assert (=> b!1434293 m!1323967))

(declare-fun m!1323969 () Bool)

(assert (=> b!1434287 m!1323969))

(declare-fun m!1323971 () Bool)

(assert (=> b!1434289 m!1323971))

(declare-fun m!1323973 () Bool)

(assert (=> b!1434290 m!1323973))

(assert (=> b!1434290 m!1323973))

(declare-fun m!1323975 () Bool)

(assert (=> b!1434290 m!1323975))

(declare-fun m!1323977 () Bool)

(assert (=> b!1434290 m!1323977))

(declare-fun m!1323979 () Bool)

(assert (=> b!1434290 m!1323979))

(declare-fun m!1323981 () Bool)

(assert (=> start!123774 m!1323981))

(declare-fun m!1323983 () Bool)

(assert (=> start!123774 m!1323983))

(declare-fun m!1323985 () Bool)

(assert (=> b!1434286 m!1323985))

(assert (=> b!1434286 m!1323985))

(declare-fun m!1323987 () Bool)

(assert (=> b!1434286 m!1323987))

(declare-fun m!1323989 () Bool)

(assert (=> b!1434288 m!1323989))

(assert (=> b!1434295 m!1323963))

(assert (=> b!1434295 m!1323963))

(declare-fun m!1323991 () Bool)

(assert (=> b!1434295 m!1323991))

(assert (=> b!1434296 m!1323977))

(declare-fun m!1323993 () Bool)

(assert (=> b!1434296 m!1323993))

(declare-fun m!1323995 () Bool)

(assert (=> b!1434296 m!1323995))

(declare-fun m!1323997 () Bool)

(assert (=> b!1434296 m!1323997))

(assert (=> b!1434296 m!1323963))

(declare-fun m!1323999 () Bool)

(assert (=> b!1434296 m!1323999))

(assert (=> b!1434284 m!1323963))

(assert (=> b!1434284 m!1323963))

(declare-fun m!1324001 () Bool)

(assert (=> b!1434284 m!1324001))

(declare-fun m!1324003 () Bool)

(assert (=> b!1434298 m!1324003))

(assert (=> b!1434297 m!1323963))

(assert (=> b!1434297 m!1323963))

(declare-fun m!1324005 () Bool)

(assert (=> b!1434297 m!1324005))

(assert (=> b!1434292 m!1323963))

(assert (=> b!1434292 m!1323963))

(declare-fun m!1324007 () Bool)

(assert (=> b!1434292 m!1324007))

(check-sat (not b!1434290) (not b!1434297) (not b!1434298) (not b!1434289) (not b!1434284) (not b!1434287) (not b!1434286) (not b!1434295) (not b!1434296) (not b!1434292) (not b!1434293) (not start!123774) (not b!1434288))
(check-sat)
(get-model)

(declare-fun d!154119 () Bool)

(assert (=> d!154119 (= (validKeyInArray!0 (select (arr!47075 a!2831) j!81)) (and (not (= (select (arr!47075 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47075 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1434292 d!154119))

(declare-fun b!1434362 () Bool)

(declare-fun lt!631401 () SeekEntryResult!11376)

(assert (=> b!1434362 (and (bvsge (index!47897 lt!631401) #b00000000000000000000000000000000) (bvslt (index!47897 lt!631401) (size!47626 lt!631377)))))

(declare-fun res!967921 () Bool)

(assert (=> b!1434362 (= res!967921 (= (select (arr!47075 lt!631377) (index!47897 lt!631401)) lt!631373))))

(declare-fun e!809567 () Bool)

(assert (=> b!1434362 (=> res!967921 e!809567)))

(declare-fun e!809563 () Bool)

(assert (=> b!1434362 (= e!809563 e!809567)))

(declare-fun b!1434363 () Bool)

(declare-fun e!809564 () SeekEntryResult!11376)

(assert (=> b!1434363 (= e!809564 (Intermediate!11376 false (toIndex!0 lt!631373 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1434364 () Bool)

(assert (=> b!1434364 (and (bvsge (index!47897 lt!631401) #b00000000000000000000000000000000) (bvslt (index!47897 lt!631401) (size!47626 lt!631377)))))

(declare-fun res!967923 () Bool)

(assert (=> b!1434364 (= res!967923 (= (select (arr!47075 lt!631377) (index!47897 lt!631401)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1434364 (=> res!967923 e!809567)))

(declare-fun b!1434365 () Bool)

(declare-fun e!809565 () SeekEntryResult!11376)

(assert (=> b!1434365 (= e!809565 e!809564)))

(declare-fun c!132724 () Bool)

(declare-fun lt!631402 () (_ BitVec 64))

(assert (=> b!1434365 (= c!132724 (or (= lt!631402 lt!631373) (= (bvadd lt!631402 lt!631402) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1434366 () Bool)

(assert (=> b!1434366 (= e!809565 (Intermediate!11376 true (toIndex!0 lt!631373 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1434368 () Bool)

(assert (=> b!1434368 (= e!809564 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!631373 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!631373 lt!631377 mask!2608))))

(declare-fun b!1434369 () Bool)

(assert (=> b!1434369 (and (bvsge (index!47897 lt!631401) #b00000000000000000000000000000000) (bvslt (index!47897 lt!631401) (size!47626 lt!631377)))))

(assert (=> b!1434369 (= e!809567 (= (select (arr!47075 lt!631377) (index!47897 lt!631401)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1434370 () Bool)

(declare-fun e!809566 () Bool)

(assert (=> b!1434370 (= e!809566 (bvsge (x!129551 lt!631401) #b01111111111111111111111111111110))))

(declare-fun d!154121 () Bool)

(assert (=> d!154121 e!809566))

(declare-fun c!132725 () Bool)

(get-info :version)

(assert (=> d!154121 (= c!132725 (and ((_ is Intermediate!11376) lt!631401) (undefined!12188 lt!631401)))))

(assert (=> d!154121 (= lt!631401 e!809565)))

(declare-fun c!132723 () Bool)

(assert (=> d!154121 (= c!132723 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!154121 (= lt!631402 (select (arr!47075 lt!631377) (toIndex!0 lt!631373 mask!2608)))))

(assert (=> d!154121 (validMask!0 mask!2608)))

(assert (=> d!154121 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631373 mask!2608) lt!631373 lt!631377 mask!2608) lt!631401)))

(declare-fun b!1434367 () Bool)

(assert (=> b!1434367 (= e!809566 e!809563)))

(declare-fun res!967922 () Bool)

(assert (=> b!1434367 (= res!967922 (and ((_ is Intermediate!11376) lt!631401) (not (undefined!12188 lt!631401)) (bvslt (x!129551 lt!631401) #b01111111111111111111111111111110) (bvsge (x!129551 lt!631401) #b00000000000000000000000000000000) (bvsge (x!129551 lt!631401) #b00000000000000000000000000000000)))))

(assert (=> b!1434367 (=> (not res!967922) (not e!809563))))

(assert (= (and d!154121 c!132723) b!1434366))

(assert (= (and d!154121 (not c!132723)) b!1434365))

(assert (= (and b!1434365 c!132724) b!1434363))

(assert (= (and b!1434365 (not c!132724)) b!1434368))

(assert (= (and d!154121 c!132725) b!1434370))

(assert (= (and d!154121 (not c!132725)) b!1434367))

(assert (= (and b!1434367 res!967922) b!1434362))

(assert (= (and b!1434362 (not res!967921)) b!1434364))

(assert (= (and b!1434364 (not res!967923)) b!1434369))

(assert (=> d!154121 m!1323973))

(declare-fun m!1324055 () Bool)

(assert (=> d!154121 m!1324055))

(assert (=> d!154121 m!1323981))

(assert (=> b!1434368 m!1323973))

(declare-fun m!1324057 () Bool)

(assert (=> b!1434368 m!1324057))

(assert (=> b!1434368 m!1324057))

(declare-fun m!1324059 () Bool)

(assert (=> b!1434368 m!1324059))

(declare-fun m!1324061 () Bool)

(assert (=> b!1434362 m!1324061))

(assert (=> b!1434369 m!1324061))

(assert (=> b!1434364 m!1324061))

(assert (=> b!1434290 d!154121))

(declare-fun d!154123 () Bool)

(declare-fun lt!631408 () (_ BitVec 32))

(declare-fun lt!631407 () (_ BitVec 32))

(assert (=> d!154123 (= lt!631408 (bvmul (bvxor lt!631407 (bvlshr lt!631407 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154123 (= lt!631407 ((_ extract 31 0) (bvand (bvxor lt!631373 (bvlshr lt!631373 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154123 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!967924 (let ((h!35092 ((_ extract 31 0) (bvand (bvxor lt!631373 (bvlshr lt!631373 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129554 (bvmul (bvxor h!35092 (bvlshr h!35092 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129554 (bvlshr x!129554 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!967924 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!967924 #b00000000000000000000000000000000))))))

(assert (=> d!154123 (= (toIndex!0 lt!631373 mask!2608) (bvand (bvxor lt!631408 (bvlshr lt!631408 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1434290 d!154123))

(declare-fun b!1434379 () Bool)

(declare-fun e!809575 () Bool)

(declare-fun e!809574 () Bool)

(assert (=> b!1434379 (= e!809575 e!809574)))

(declare-fun c!132728 () Bool)

(assert (=> b!1434379 (= c!132728 (validKeyInArray!0 (select (arr!47075 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67518 () Bool)

(declare-fun call!67521 () Bool)

(assert (=> bm!67518 (= call!67521 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1434380 () Bool)

(assert (=> b!1434380 (= e!809574 call!67521)))

(declare-fun b!1434381 () Bool)

(declare-fun e!809576 () Bool)

(assert (=> b!1434381 (= e!809576 call!67521)))

(declare-fun d!154125 () Bool)

(declare-fun res!967930 () Bool)

(assert (=> d!154125 (=> res!967930 e!809575)))

(assert (=> d!154125 (= res!967930 (bvsge #b00000000000000000000000000000000 (size!47626 a!2831)))))

(assert (=> d!154125 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!809575)))

(declare-fun b!1434382 () Bool)

(assert (=> b!1434382 (= e!809574 e!809576)))

(declare-fun lt!631417 () (_ BitVec 64))

(assert (=> b!1434382 (= lt!631417 (select (arr!47075 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!631416 () Unit!48446)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97550 (_ BitVec 64) (_ BitVec 32)) Unit!48446)

(assert (=> b!1434382 (= lt!631416 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!631417 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97550 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1434382 (arrayContainsKey!0 a!2831 lt!631417 #b00000000000000000000000000000000)))

(declare-fun lt!631415 () Unit!48446)

(assert (=> b!1434382 (= lt!631415 lt!631416)))

(declare-fun res!967929 () Bool)

(assert (=> b!1434382 (= res!967929 (= (seekEntryOrOpen!0 (select (arr!47075 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11376 #b00000000000000000000000000000000)))))

(assert (=> b!1434382 (=> (not res!967929) (not e!809576))))

(assert (= (and d!154125 (not res!967930)) b!1434379))

(assert (= (and b!1434379 c!132728) b!1434382))

(assert (= (and b!1434379 (not c!132728)) b!1434380))

(assert (= (and b!1434382 res!967929) b!1434381))

(assert (= (or b!1434381 b!1434380) bm!67518))

(declare-fun m!1324063 () Bool)

(assert (=> b!1434379 m!1324063))

(assert (=> b!1434379 m!1324063))

(declare-fun m!1324065 () Bool)

(assert (=> b!1434379 m!1324065))

(declare-fun m!1324067 () Bool)

(assert (=> bm!67518 m!1324067))

(assert (=> b!1434382 m!1324063))

(declare-fun m!1324069 () Bool)

(assert (=> b!1434382 m!1324069))

(declare-fun m!1324071 () Bool)

(assert (=> b!1434382 m!1324071))

(assert (=> b!1434382 m!1324063))

(declare-fun m!1324073 () Bool)

(assert (=> b!1434382 m!1324073))

(assert (=> b!1434289 d!154125))

(declare-fun d!154127 () Bool)

(declare-fun lt!631420 () (_ BitVec 32))

(assert (=> d!154127 (and (bvsge lt!631420 #b00000000000000000000000000000000) (bvslt lt!631420 (bvadd mask!2608 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!154127 (= lt!631420 (choose!52 index!585 x!605 mask!2608))))

(assert (=> d!154127 (validMask!0 mask!2608)))

(assert (=> d!154127 (= (nextIndex!0 index!585 x!605 mask!2608) lt!631420)))

(declare-fun bs!41756 () Bool)

(assert (= bs!41756 d!154127))

(declare-fun m!1324075 () Bool)

(assert (=> bs!41756 m!1324075))

(assert (=> bs!41756 m!1323981))

(assert (=> b!1434288 d!154127))

(declare-fun b!1434383 () Bool)

(declare-fun lt!631421 () SeekEntryResult!11376)

(assert (=> b!1434383 (and (bvsge (index!47897 lt!631421) #b00000000000000000000000000000000) (bvslt (index!47897 lt!631421) (size!47626 lt!631377)))))

(declare-fun res!967931 () Bool)

(assert (=> b!1434383 (= res!967931 (= (select (arr!47075 lt!631377) (index!47897 lt!631421)) lt!631373))))

(declare-fun e!809581 () Bool)

(assert (=> b!1434383 (=> res!967931 e!809581)))

(declare-fun e!809577 () Bool)

(assert (=> b!1434383 (= e!809577 e!809581)))

(declare-fun b!1434384 () Bool)

(declare-fun e!809578 () SeekEntryResult!11376)

(assert (=> b!1434384 (= e!809578 (Intermediate!11376 false index!585 x!605))))

(declare-fun b!1434385 () Bool)

(assert (=> b!1434385 (and (bvsge (index!47897 lt!631421) #b00000000000000000000000000000000) (bvslt (index!47897 lt!631421) (size!47626 lt!631377)))))

(declare-fun res!967933 () Bool)

(assert (=> b!1434385 (= res!967933 (= (select (arr!47075 lt!631377) (index!47897 lt!631421)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1434385 (=> res!967933 e!809581)))

(declare-fun b!1434386 () Bool)

(declare-fun e!809579 () SeekEntryResult!11376)

(assert (=> b!1434386 (= e!809579 e!809578)))

(declare-fun c!132730 () Bool)

(declare-fun lt!631422 () (_ BitVec 64))

(assert (=> b!1434386 (= c!132730 (or (= lt!631422 lt!631373) (= (bvadd lt!631422 lt!631422) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1434387 () Bool)

(assert (=> b!1434387 (= e!809579 (Intermediate!11376 true index!585 x!605))))

(declare-fun b!1434389 () Bool)

(assert (=> b!1434389 (= e!809578 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!631373 lt!631377 mask!2608))))

(declare-fun b!1434390 () Bool)

(assert (=> b!1434390 (and (bvsge (index!47897 lt!631421) #b00000000000000000000000000000000) (bvslt (index!47897 lt!631421) (size!47626 lt!631377)))))

(assert (=> b!1434390 (= e!809581 (= (select (arr!47075 lt!631377) (index!47897 lt!631421)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1434391 () Bool)

(declare-fun e!809580 () Bool)

(assert (=> b!1434391 (= e!809580 (bvsge (x!129551 lt!631421) #b01111111111111111111111111111110))))

(declare-fun d!154129 () Bool)

(assert (=> d!154129 e!809580))

(declare-fun c!132731 () Bool)

(assert (=> d!154129 (= c!132731 (and ((_ is Intermediate!11376) lt!631421) (undefined!12188 lt!631421)))))

(assert (=> d!154129 (= lt!631421 e!809579)))

(declare-fun c!132729 () Bool)

(assert (=> d!154129 (= c!132729 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!154129 (= lt!631422 (select (arr!47075 lt!631377) index!585))))

(assert (=> d!154129 (validMask!0 mask!2608)))

(assert (=> d!154129 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631373 lt!631377 mask!2608) lt!631421)))

(declare-fun b!1434388 () Bool)

(assert (=> b!1434388 (= e!809580 e!809577)))

(declare-fun res!967932 () Bool)

(assert (=> b!1434388 (= res!967932 (and ((_ is Intermediate!11376) lt!631421) (not (undefined!12188 lt!631421)) (bvslt (x!129551 lt!631421) #b01111111111111111111111111111110) (bvsge (x!129551 lt!631421) #b00000000000000000000000000000000) (bvsge (x!129551 lt!631421) x!605)))))

(assert (=> b!1434388 (=> (not res!967932) (not e!809577))))

(assert (= (and d!154129 c!132729) b!1434387))

(assert (= (and d!154129 (not c!132729)) b!1434386))

(assert (= (and b!1434386 c!132730) b!1434384))

(assert (= (and b!1434386 (not c!132730)) b!1434389))

(assert (= (and d!154129 c!132731) b!1434391))

(assert (= (and d!154129 (not c!132731)) b!1434388))

(assert (= (and b!1434388 res!967932) b!1434383))

(assert (= (and b!1434383 (not res!967931)) b!1434385))

(assert (= (and b!1434385 (not res!967933)) b!1434390))

(declare-fun m!1324077 () Bool)

(assert (=> d!154129 m!1324077))

(assert (=> d!154129 m!1323981))

(assert (=> b!1434389 m!1323989))

(assert (=> b!1434389 m!1323989))

(declare-fun m!1324079 () Bool)

(assert (=> b!1434389 m!1324079))

(declare-fun m!1324081 () Bool)

(assert (=> b!1434383 m!1324081))

(assert (=> b!1434390 m!1324081))

(assert (=> b!1434385 m!1324081))

(assert (=> b!1434298 d!154129))

(declare-fun b!1434402 () Bool)

(declare-fun e!809593 () Bool)

(declare-fun e!809590 () Bool)

(assert (=> b!1434402 (= e!809593 e!809590)))

(declare-fun c!132734 () Bool)

(assert (=> b!1434402 (= c!132734 (validKeyInArray!0 (select (arr!47075 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1434403 () Bool)

(declare-fun e!809592 () Bool)

(declare-fun contains!9882 (List!33765 (_ BitVec 64)) Bool)

(assert (=> b!1434403 (= e!809592 (contains!9882 Nil!33762 (select (arr!47075 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1434404 () Bool)

(declare-fun call!67524 () Bool)

(assert (=> b!1434404 (= e!809590 call!67524)))

(declare-fun d!154131 () Bool)

(declare-fun res!967942 () Bool)

(declare-fun e!809591 () Bool)

(assert (=> d!154131 (=> res!967942 e!809591)))

(assert (=> d!154131 (= res!967942 (bvsge #b00000000000000000000000000000000 (size!47626 a!2831)))))

(assert (=> d!154131 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33762) e!809591)))

(declare-fun b!1434405 () Bool)

(assert (=> b!1434405 (= e!809591 e!809593)))

(declare-fun res!967941 () Bool)

(assert (=> b!1434405 (=> (not res!967941) (not e!809593))))

(assert (=> b!1434405 (= res!967941 (not e!809592))))

(declare-fun res!967940 () Bool)

(assert (=> b!1434405 (=> (not res!967940) (not e!809592))))

(assert (=> b!1434405 (= res!967940 (validKeyInArray!0 (select (arr!47075 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67521 () Bool)

(assert (=> bm!67521 (= call!67524 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132734 (Cons!33761 (select (arr!47075 a!2831) #b00000000000000000000000000000000) Nil!33762) Nil!33762)))))

(declare-fun b!1434406 () Bool)

(assert (=> b!1434406 (= e!809590 call!67524)))

(assert (= (and d!154131 (not res!967942)) b!1434405))

(assert (= (and b!1434405 res!967940) b!1434403))

(assert (= (and b!1434405 res!967941) b!1434402))

(assert (= (and b!1434402 c!132734) b!1434406))

(assert (= (and b!1434402 (not c!132734)) b!1434404))

(assert (= (or b!1434406 b!1434404) bm!67521))

(assert (=> b!1434402 m!1324063))

(assert (=> b!1434402 m!1324063))

(assert (=> b!1434402 m!1324065))

(assert (=> b!1434403 m!1324063))

(assert (=> b!1434403 m!1324063))

(declare-fun m!1324083 () Bool)

(assert (=> b!1434403 m!1324083))

(assert (=> b!1434405 m!1324063))

(assert (=> b!1434405 m!1324063))

(assert (=> b!1434405 m!1324065))

(assert (=> bm!67521 m!1324063))

(declare-fun m!1324085 () Bool)

(assert (=> bm!67521 m!1324085))

(assert (=> b!1434287 d!154131))

(declare-fun d!154135 () Bool)

(assert (=> d!154135 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123774 d!154135))

(declare-fun d!154141 () Bool)

(assert (=> d!154141 (= (array_inv!36020 a!2831) (bvsge (size!47626 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123774 d!154141))

(declare-fun b!1434407 () Bool)

(declare-fun lt!631423 () SeekEntryResult!11376)

(assert (=> b!1434407 (and (bvsge (index!47897 lt!631423) #b00000000000000000000000000000000) (bvslt (index!47897 lt!631423) (size!47626 a!2831)))))

(declare-fun res!967943 () Bool)

(assert (=> b!1434407 (= res!967943 (= (select (arr!47075 a!2831) (index!47897 lt!631423)) (select (arr!47075 a!2831) j!81)))))

(declare-fun e!809598 () Bool)

(assert (=> b!1434407 (=> res!967943 e!809598)))

(declare-fun e!809594 () Bool)

(assert (=> b!1434407 (= e!809594 e!809598)))

(declare-fun b!1434408 () Bool)

(declare-fun e!809595 () SeekEntryResult!11376)

(assert (=> b!1434408 (= e!809595 (Intermediate!11376 false lt!631374 (bvadd #b00000000000000000000000000000001 x!605)))))

(declare-fun b!1434409 () Bool)

(assert (=> b!1434409 (and (bvsge (index!47897 lt!631423) #b00000000000000000000000000000000) (bvslt (index!47897 lt!631423) (size!47626 a!2831)))))

(declare-fun res!967945 () Bool)

(assert (=> b!1434409 (= res!967945 (= (select (arr!47075 a!2831) (index!47897 lt!631423)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1434409 (=> res!967945 e!809598)))

(declare-fun b!1434410 () Bool)

(declare-fun e!809596 () SeekEntryResult!11376)

(assert (=> b!1434410 (= e!809596 e!809595)))

(declare-fun c!132736 () Bool)

(declare-fun lt!631424 () (_ BitVec 64))

(assert (=> b!1434410 (= c!132736 (or (= lt!631424 (select (arr!47075 a!2831) j!81)) (= (bvadd lt!631424 lt!631424) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1434411 () Bool)

(assert (=> b!1434411 (= e!809596 (Intermediate!11376 true lt!631374 (bvadd #b00000000000000000000000000000001 x!605)))))

(declare-fun b!1434413 () Bool)

(assert (=> b!1434413 (= e!809595 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605 #b00000000000000000000000000000001) (nextIndex!0 lt!631374 (bvadd #b00000000000000000000000000000001 x!605) mask!2608) (select (arr!47075 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1434414 () Bool)

(assert (=> b!1434414 (and (bvsge (index!47897 lt!631423) #b00000000000000000000000000000000) (bvslt (index!47897 lt!631423) (size!47626 a!2831)))))

(assert (=> b!1434414 (= e!809598 (= (select (arr!47075 a!2831) (index!47897 lt!631423)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1434415 () Bool)

(declare-fun e!809597 () Bool)

(assert (=> b!1434415 (= e!809597 (bvsge (x!129551 lt!631423) #b01111111111111111111111111111110))))

(declare-fun d!154143 () Bool)

(assert (=> d!154143 e!809597))

(declare-fun c!132737 () Bool)

(assert (=> d!154143 (= c!132737 (and ((_ is Intermediate!11376) lt!631423) (undefined!12188 lt!631423)))))

(assert (=> d!154143 (= lt!631423 e!809596)))

(declare-fun c!132735 () Bool)

(assert (=> d!154143 (= c!132735 (bvsge (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110))))

(assert (=> d!154143 (= lt!631424 (select (arr!47075 a!2831) lt!631374))))

(assert (=> d!154143 (validMask!0 mask!2608)))

(assert (=> d!154143 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631374 (select (arr!47075 a!2831) j!81) a!2831 mask!2608) lt!631423)))

(declare-fun b!1434412 () Bool)

(assert (=> b!1434412 (= e!809597 e!809594)))

(declare-fun res!967944 () Bool)

(assert (=> b!1434412 (= res!967944 (and ((_ is Intermediate!11376) lt!631423) (not (undefined!12188 lt!631423)) (bvslt (x!129551 lt!631423) #b01111111111111111111111111111110) (bvsge (x!129551 lt!631423) #b00000000000000000000000000000000) (bvsge (x!129551 lt!631423) (bvadd #b00000000000000000000000000000001 x!605))))))

(assert (=> b!1434412 (=> (not res!967944) (not e!809594))))

(assert (= (and d!154143 c!132735) b!1434411))

(assert (= (and d!154143 (not c!132735)) b!1434410))

(assert (= (and b!1434410 c!132736) b!1434408))

(assert (= (and b!1434410 (not c!132736)) b!1434413))

(assert (= (and d!154143 c!132737) b!1434415))

(assert (= (and d!154143 (not c!132737)) b!1434412))

(assert (= (and b!1434412 res!967944) b!1434407))

(assert (= (and b!1434407 (not res!967943)) b!1434409))

(assert (= (and b!1434409 (not res!967945)) b!1434414))

(declare-fun m!1324087 () Bool)

(assert (=> d!154143 m!1324087))

(assert (=> d!154143 m!1323981))

(declare-fun m!1324089 () Bool)

(assert (=> b!1434413 m!1324089))

(assert (=> b!1434413 m!1324089))

(assert (=> b!1434413 m!1323963))

(declare-fun m!1324091 () Bool)

(assert (=> b!1434413 m!1324091))

(declare-fun m!1324093 () Bool)

(assert (=> b!1434407 m!1324093))

(assert (=> b!1434414 m!1324093))

(assert (=> b!1434409 m!1324093))

(assert (=> b!1434297 d!154143))

(declare-fun d!154145 () Bool)

(assert (=> d!154145 (= (validKeyInArray!0 (select (arr!47075 a!2831) i!982)) (and (not (= (select (arr!47075 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47075 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1434286 d!154145))

(declare-fun b!1434416 () Bool)

(declare-fun e!809600 () Bool)

(declare-fun e!809599 () Bool)

(assert (=> b!1434416 (= e!809600 e!809599)))

(declare-fun c!132738 () Bool)

(assert (=> b!1434416 (= c!132738 (validKeyInArray!0 (select (arr!47075 a!2831) j!81)))))

(declare-fun bm!67522 () Bool)

(declare-fun call!67525 () Bool)

(assert (=> bm!67522 (= call!67525 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1434417 () Bool)

(assert (=> b!1434417 (= e!809599 call!67525)))

(declare-fun b!1434418 () Bool)

(declare-fun e!809601 () Bool)

(assert (=> b!1434418 (= e!809601 call!67525)))

(declare-fun d!154147 () Bool)

(declare-fun res!967947 () Bool)

(assert (=> d!154147 (=> res!967947 e!809600)))

(assert (=> d!154147 (= res!967947 (bvsge j!81 (size!47626 a!2831)))))

(assert (=> d!154147 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!809600)))

(declare-fun b!1434419 () Bool)

(assert (=> b!1434419 (= e!809599 e!809601)))

(declare-fun lt!631427 () (_ BitVec 64))

(assert (=> b!1434419 (= lt!631427 (select (arr!47075 a!2831) j!81))))

(declare-fun lt!631426 () Unit!48446)

(assert (=> b!1434419 (= lt!631426 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!631427 j!81))))

(assert (=> b!1434419 (arrayContainsKey!0 a!2831 lt!631427 #b00000000000000000000000000000000)))

(declare-fun lt!631425 () Unit!48446)

(assert (=> b!1434419 (= lt!631425 lt!631426)))

(declare-fun res!967946 () Bool)

(assert (=> b!1434419 (= res!967946 (= (seekEntryOrOpen!0 (select (arr!47075 a!2831) j!81) a!2831 mask!2608) (Found!11376 j!81)))))

(assert (=> b!1434419 (=> (not res!967946) (not e!809601))))

(assert (= (and d!154147 (not res!967947)) b!1434416))

(assert (= (and b!1434416 c!132738) b!1434419))

(assert (= (and b!1434416 (not c!132738)) b!1434417))

(assert (= (and b!1434419 res!967946) b!1434418))

(assert (= (or b!1434418 b!1434417) bm!67522))

(assert (=> b!1434416 m!1323963))

(assert (=> b!1434416 m!1323963))

(assert (=> b!1434416 m!1324007))

(declare-fun m!1324095 () Bool)

(assert (=> bm!67522 m!1324095))

(assert (=> b!1434419 m!1323963))

(declare-fun m!1324097 () Bool)

(assert (=> b!1434419 m!1324097))

(declare-fun m!1324099 () Bool)

(assert (=> b!1434419 m!1324099))

(assert (=> b!1434419 m!1323963))

(assert (=> b!1434419 m!1323991))

(assert (=> b!1434296 d!154147))

(declare-fun d!154149 () Bool)

(assert (=> d!154149 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!631434 () Unit!48446)

(declare-fun choose!38 (array!97550 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48446)

(assert (=> d!154149 (= lt!631434 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!154149 (validMask!0 mask!2608)))

(assert (=> d!154149 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!631434)))

(declare-fun bs!41757 () Bool)

(assert (= bs!41757 d!154149))

(assert (=> bs!41757 m!1323997))

(declare-fun m!1324101 () Bool)

(assert (=> bs!41757 m!1324101))

(assert (=> bs!41757 m!1323981))

(assert (=> b!1434296 d!154149))

(declare-fun b!1434501 () Bool)

(declare-fun e!809651 () SeekEntryResult!11376)

(declare-fun e!809649 () SeekEntryResult!11376)

(assert (=> b!1434501 (= e!809651 e!809649)))

(declare-fun lt!631458 () (_ BitVec 64))

(declare-fun lt!631457 () SeekEntryResult!11376)

(assert (=> b!1434501 (= lt!631458 (select (arr!47075 a!2831) (index!47897 lt!631457)))))

(declare-fun c!132770 () Bool)

(assert (=> b!1434501 (= c!132770 (= lt!631458 (select (arr!47075 a!2831) j!81)))))

(declare-fun b!1434502 () Bool)

(declare-fun c!132769 () Bool)

(assert (=> b!1434502 (= c!132769 (= lt!631458 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!809650 () SeekEntryResult!11376)

(assert (=> b!1434502 (= e!809649 e!809650)))

(declare-fun b!1434503 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97550 (_ BitVec 32)) SeekEntryResult!11376)

(assert (=> b!1434503 (= e!809650 (seekKeyOrZeroReturnVacant!0 (x!129551 lt!631457) (index!47897 lt!631457) (index!47897 lt!631457) (select (arr!47075 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1434504 () Bool)

(assert (=> b!1434504 (= e!809649 (Found!11376 (index!47897 lt!631457)))))

(declare-fun d!154151 () Bool)

(declare-fun lt!631459 () SeekEntryResult!11376)

(assert (=> d!154151 (and (or ((_ is Undefined!11376) lt!631459) (not ((_ is Found!11376) lt!631459)) (and (bvsge (index!47896 lt!631459) #b00000000000000000000000000000000) (bvslt (index!47896 lt!631459) (size!47626 a!2831)))) (or ((_ is Undefined!11376) lt!631459) ((_ is Found!11376) lt!631459) (not ((_ is MissingZero!11376) lt!631459)) (and (bvsge (index!47895 lt!631459) #b00000000000000000000000000000000) (bvslt (index!47895 lt!631459) (size!47626 a!2831)))) (or ((_ is Undefined!11376) lt!631459) ((_ is Found!11376) lt!631459) ((_ is MissingZero!11376) lt!631459) (not ((_ is MissingVacant!11376) lt!631459)) (and (bvsge (index!47898 lt!631459) #b00000000000000000000000000000000) (bvslt (index!47898 lt!631459) (size!47626 a!2831)))) (or ((_ is Undefined!11376) lt!631459) (ite ((_ is Found!11376) lt!631459) (= (select (arr!47075 a!2831) (index!47896 lt!631459)) (select (arr!47075 a!2831) j!81)) (ite ((_ is MissingZero!11376) lt!631459) (= (select (arr!47075 a!2831) (index!47895 lt!631459)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!11376) lt!631459) (= (select (arr!47075 a!2831) (index!47898 lt!631459)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!154151 (= lt!631459 e!809651)))

(declare-fun c!132771 () Bool)

(assert (=> d!154151 (= c!132771 (and ((_ is Intermediate!11376) lt!631457) (undefined!12188 lt!631457)))))

(assert (=> d!154151 (= lt!631457 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47075 a!2831) j!81) mask!2608) (select (arr!47075 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!154151 (validMask!0 mask!2608)))

(assert (=> d!154151 (= (seekEntryOrOpen!0 (select (arr!47075 a!2831) j!81) a!2831 mask!2608) lt!631459)))

(declare-fun b!1434505 () Bool)

(assert (=> b!1434505 (= e!809651 Undefined!11376)))

(declare-fun b!1434506 () Bool)

(assert (=> b!1434506 (= e!809650 (MissingZero!11376 (index!47897 lt!631457)))))

(assert (= (and d!154151 c!132771) b!1434505))

(assert (= (and d!154151 (not c!132771)) b!1434501))

(assert (= (and b!1434501 c!132770) b!1434504))

(assert (= (and b!1434501 (not c!132770)) b!1434502))

(assert (= (and b!1434502 c!132769) b!1434506))

(assert (= (and b!1434502 (not c!132769)) b!1434503))

(declare-fun m!1324139 () Bool)

(assert (=> b!1434501 m!1324139))

(assert (=> b!1434503 m!1323963))

(declare-fun m!1324141 () Bool)

(assert (=> b!1434503 m!1324141))

(assert (=> d!154151 m!1323963))

(assert (=> d!154151 m!1323965))

(declare-fun m!1324143 () Bool)

(assert (=> d!154151 m!1324143))

(assert (=> d!154151 m!1323965))

(assert (=> d!154151 m!1323963))

(assert (=> d!154151 m!1323967))

(declare-fun m!1324145 () Bool)

(assert (=> d!154151 m!1324145))

(assert (=> d!154151 m!1323981))

(declare-fun m!1324147 () Bool)

(assert (=> d!154151 m!1324147))

(assert (=> b!1434295 d!154151))

(declare-fun b!1434507 () Bool)

(declare-fun lt!631464 () SeekEntryResult!11376)

(assert (=> b!1434507 (and (bvsge (index!47897 lt!631464) #b00000000000000000000000000000000) (bvslt (index!47897 lt!631464) (size!47626 a!2831)))))

(declare-fun res!967970 () Bool)

(assert (=> b!1434507 (= res!967970 (= (select (arr!47075 a!2831) (index!47897 lt!631464)) (select (arr!47075 a!2831) j!81)))))

(declare-fun e!809656 () Bool)

(assert (=> b!1434507 (=> res!967970 e!809656)))

(declare-fun e!809652 () Bool)

(assert (=> b!1434507 (= e!809652 e!809656)))

(declare-fun b!1434508 () Bool)

(declare-fun e!809653 () SeekEntryResult!11376)

(assert (=> b!1434508 (= e!809653 (Intermediate!11376 false index!585 x!605))))

(declare-fun b!1434509 () Bool)

(assert (=> b!1434509 (and (bvsge (index!47897 lt!631464) #b00000000000000000000000000000000) (bvslt (index!47897 lt!631464) (size!47626 a!2831)))))

(declare-fun res!967972 () Bool)

(assert (=> b!1434509 (= res!967972 (= (select (arr!47075 a!2831) (index!47897 lt!631464)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1434509 (=> res!967972 e!809656)))

(declare-fun b!1434510 () Bool)

(declare-fun e!809654 () SeekEntryResult!11376)

(assert (=> b!1434510 (= e!809654 e!809653)))

(declare-fun lt!631465 () (_ BitVec 64))

(declare-fun c!132773 () Bool)

(assert (=> b!1434510 (= c!132773 (or (= lt!631465 (select (arr!47075 a!2831) j!81)) (= (bvadd lt!631465 lt!631465) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1434511 () Bool)

(assert (=> b!1434511 (= e!809654 (Intermediate!11376 true index!585 x!605))))

(declare-fun b!1434513 () Bool)

(assert (=> b!1434513 (= e!809653 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!47075 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1434514 () Bool)

(assert (=> b!1434514 (and (bvsge (index!47897 lt!631464) #b00000000000000000000000000000000) (bvslt (index!47897 lt!631464) (size!47626 a!2831)))))

(assert (=> b!1434514 (= e!809656 (= (select (arr!47075 a!2831) (index!47897 lt!631464)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1434515 () Bool)

(declare-fun e!809655 () Bool)

(assert (=> b!1434515 (= e!809655 (bvsge (x!129551 lt!631464) #b01111111111111111111111111111110))))

(declare-fun d!154163 () Bool)

(assert (=> d!154163 e!809655))

(declare-fun c!132774 () Bool)

(assert (=> d!154163 (= c!132774 (and ((_ is Intermediate!11376) lt!631464) (undefined!12188 lt!631464)))))

(assert (=> d!154163 (= lt!631464 e!809654)))

(declare-fun c!132772 () Bool)

(assert (=> d!154163 (= c!132772 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!154163 (= lt!631465 (select (arr!47075 a!2831) index!585))))

(assert (=> d!154163 (validMask!0 mask!2608)))

(assert (=> d!154163 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47075 a!2831) j!81) a!2831 mask!2608) lt!631464)))

(declare-fun b!1434512 () Bool)

(assert (=> b!1434512 (= e!809655 e!809652)))

(declare-fun res!967971 () Bool)

(assert (=> b!1434512 (= res!967971 (and ((_ is Intermediate!11376) lt!631464) (not (undefined!12188 lt!631464)) (bvslt (x!129551 lt!631464) #b01111111111111111111111111111110) (bvsge (x!129551 lt!631464) #b00000000000000000000000000000000) (bvsge (x!129551 lt!631464) x!605)))))

(assert (=> b!1434512 (=> (not res!967971) (not e!809652))))

(assert (= (and d!154163 c!132772) b!1434511))

(assert (= (and d!154163 (not c!132772)) b!1434510))

(assert (= (and b!1434510 c!132773) b!1434508))

(assert (= (and b!1434510 (not c!132773)) b!1434513))

(assert (= (and d!154163 c!132774) b!1434515))

(assert (= (and d!154163 (not c!132774)) b!1434512))

(assert (= (and b!1434512 res!967971) b!1434507))

(assert (= (and b!1434507 (not res!967970)) b!1434509))

(assert (= (and b!1434509 (not res!967972)) b!1434514))

(assert (=> d!154163 m!1323995))

(assert (=> d!154163 m!1323981))

(assert (=> b!1434513 m!1323989))

(assert (=> b!1434513 m!1323989))

(assert (=> b!1434513 m!1323963))

(declare-fun m!1324149 () Bool)

(assert (=> b!1434513 m!1324149))

(declare-fun m!1324151 () Bool)

(assert (=> b!1434507 m!1324151))

(assert (=> b!1434514 m!1324151))

(assert (=> b!1434509 m!1324151))

(assert (=> b!1434284 d!154163))

(declare-fun b!1434525 () Bool)

(declare-fun lt!631470 () SeekEntryResult!11376)

(assert (=> b!1434525 (and (bvsge (index!47897 lt!631470) #b00000000000000000000000000000000) (bvslt (index!47897 lt!631470) (size!47626 a!2831)))))

(declare-fun res!967976 () Bool)

(assert (=> b!1434525 (= res!967976 (= (select (arr!47075 a!2831) (index!47897 lt!631470)) (select (arr!47075 a!2831) j!81)))))

(declare-fun e!809666 () Bool)

(assert (=> b!1434525 (=> res!967976 e!809666)))

(declare-fun e!809662 () Bool)

(assert (=> b!1434525 (= e!809662 e!809666)))

(declare-fun e!809663 () SeekEntryResult!11376)

(declare-fun b!1434526 () Bool)

(assert (=> b!1434526 (= e!809663 (Intermediate!11376 false (toIndex!0 (select (arr!47075 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1434527 () Bool)

(assert (=> b!1434527 (and (bvsge (index!47897 lt!631470) #b00000000000000000000000000000000) (bvslt (index!47897 lt!631470) (size!47626 a!2831)))))

(declare-fun res!967978 () Bool)

(assert (=> b!1434527 (= res!967978 (= (select (arr!47075 a!2831) (index!47897 lt!631470)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1434527 (=> res!967978 e!809666)))

(declare-fun b!1434528 () Bool)

(declare-fun e!809664 () SeekEntryResult!11376)

(assert (=> b!1434528 (= e!809664 e!809663)))

(declare-fun lt!631471 () (_ BitVec 64))

(declare-fun c!132779 () Bool)

(assert (=> b!1434528 (= c!132779 (or (= lt!631471 (select (arr!47075 a!2831) j!81)) (= (bvadd lt!631471 lt!631471) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1434529 () Bool)

(assert (=> b!1434529 (= e!809664 (Intermediate!11376 true (toIndex!0 (select (arr!47075 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1434531 () Bool)

(assert (=> b!1434531 (= e!809663 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47075 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!47075 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1434532 () Bool)

(assert (=> b!1434532 (and (bvsge (index!47897 lt!631470) #b00000000000000000000000000000000) (bvslt (index!47897 lt!631470) (size!47626 a!2831)))))

(assert (=> b!1434532 (= e!809666 (= (select (arr!47075 a!2831) (index!47897 lt!631470)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1434533 () Bool)

(declare-fun e!809665 () Bool)

(assert (=> b!1434533 (= e!809665 (bvsge (x!129551 lt!631470) #b01111111111111111111111111111110))))

(declare-fun d!154167 () Bool)

(assert (=> d!154167 e!809665))

(declare-fun c!132780 () Bool)

(assert (=> d!154167 (= c!132780 (and ((_ is Intermediate!11376) lt!631470) (undefined!12188 lt!631470)))))

(assert (=> d!154167 (= lt!631470 e!809664)))

(declare-fun c!132778 () Bool)

(assert (=> d!154167 (= c!132778 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!154167 (= lt!631471 (select (arr!47075 a!2831) (toIndex!0 (select (arr!47075 a!2831) j!81) mask!2608)))))

(assert (=> d!154167 (validMask!0 mask!2608)))

(assert (=> d!154167 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47075 a!2831) j!81) mask!2608) (select (arr!47075 a!2831) j!81) a!2831 mask!2608) lt!631470)))

(declare-fun b!1434530 () Bool)

(assert (=> b!1434530 (= e!809665 e!809662)))

(declare-fun res!967977 () Bool)

(assert (=> b!1434530 (= res!967977 (and ((_ is Intermediate!11376) lt!631470) (not (undefined!12188 lt!631470)) (bvslt (x!129551 lt!631470) #b01111111111111111111111111111110) (bvsge (x!129551 lt!631470) #b00000000000000000000000000000000) (bvsge (x!129551 lt!631470) #b00000000000000000000000000000000)))))

(assert (=> b!1434530 (=> (not res!967977) (not e!809662))))

(assert (= (and d!154167 c!132778) b!1434529))

(assert (= (and d!154167 (not c!132778)) b!1434528))

(assert (= (and b!1434528 c!132779) b!1434526))

(assert (= (and b!1434528 (not c!132779)) b!1434531))

(assert (= (and d!154167 c!132780) b!1434533))

(assert (= (and d!154167 (not c!132780)) b!1434530))

(assert (= (and b!1434530 res!967977) b!1434525))

(assert (= (and b!1434525 (not res!967976)) b!1434527))

(assert (= (and b!1434527 (not res!967978)) b!1434532))

(assert (=> d!154167 m!1323965))

(declare-fun m!1324159 () Bool)

(assert (=> d!154167 m!1324159))

(assert (=> d!154167 m!1323981))

(assert (=> b!1434531 m!1323965))

(declare-fun m!1324161 () Bool)

(assert (=> b!1434531 m!1324161))

(assert (=> b!1434531 m!1324161))

(assert (=> b!1434531 m!1323963))

(declare-fun m!1324163 () Bool)

(assert (=> b!1434531 m!1324163))

(declare-fun m!1324165 () Bool)

(assert (=> b!1434525 m!1324165))

(assert (=> b!1434532 m!1324165))

(assert (=> b!1434527 m!1324165))

(assert (=> b!1434293 d!154167))

(declare-fun d!154171 () Bool)

(declare-fun lt!631473 () (_ BitVec 32))

(declare-fun lt!631472 () (_ BitVec 32))

(assert (=> d!154171 (= lt!631473 (bvmul (bvxor lt!631472 (bvlshr lt!631472 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154171 (= lt!631472 ((_ extract 31 0) (bvand (bvxor (select (arr!47075 a!2831) j!81) (bvlshr (select (arr!47075 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154171 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!967924 (let ((h!35092 ((_ extract 31 0) (bvand (bvxor (select (arr!47075 a!2831) j!81) (bvlshr (select (arr!47075 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129554 (bvmul (bvxor h!35092 (bvlshr h!35092 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129554 (bvlshr x!129554 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!967924 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!967924 #b00000000000000000000000000000000))))))

(assert (=> d!154171 (= (toIndex!0 (select (arr!47075 a!2831) j!81) mask!2608) (bvand (bvxor lt!631473 (bvlshr lt!631473 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1434293 d!154171))

(check-sat (not b!1434531) (not b!1434402) (not b!1434419) (not d!154167) (not d!154121) (not bm!67518) (not b!1434503) (not d!154127) (not d!154151) (not d!154129) (not bm!67522) (not b!1434413) (not b!1434379) (not d!154143) (not b!1434405) (not d!154149) (not b!1434389) (not b!1434403) (not b!1434416) (not b!1434368) (not b!1434382) (not bm!67521) (not d!154163) (not b!1434513))
(check-sat)
