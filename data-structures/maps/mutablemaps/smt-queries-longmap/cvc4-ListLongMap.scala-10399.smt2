; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122558 () Bool)

(assert start!122558)

(declare-fun b!1419252 () Bool)

(declare-fun res!954887 () Bool)

(declare-fun e!803021 () Bool)

(assert (=> b!1419252 (=> (not res!954887) (not e!803021))))

(declare-datatypes ((array!96880 0))(
  ( (array!96881 (arr!46755 (Array (_ BitVec 32) (_ BitVec 64))) (size!47306 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96880)

(declare-datatypes ((List!33445 0))(
  ( (Nil!33442) (Cons!33441 (h!34740 (_ BitVec 64)) (t!48146 List!33445)) )
))
(declare-fun arrayNoDuplicates!0 (array!96880 (_ BitVec 32) List!33445) Bool)

(assert (=> b!1419252 (= res!954887 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33442))))

(declare-fun b!1419253 () Bool)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun lt!625696 () (_ BitVec 32))

(assert (=> b!1419253 (= e!803021 (and (bvsge mask!2608 #b00000000000000000000000000000000) (or (bvslt lt!625696 #b00000000000000000000000000000000) (bvsge lt!625696 (bvadd #b00000000000000000000000000000001 mask!2608)))))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419253 (= lt!625696 (toIndex!0 (select (store (arr!46755 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608))))

(declare-fun res!954884 () Bool)

(assert (=> start!122558 (=> (not res!954884) (not e!803021))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122558 (= res!954884 (validMask!0 mask!2608))))

(assert (=> start!122558 e!803021))

(assert (=> start!122558 true))

(declare-fun array_inv!35700 (array!96880) Bool)

(assert (=> start!122558 (array_inv!35700 a!2831)))

(declare-fun b!1419254 () Bool)

(declare-fun res!954885 () Bool)

(assert (=> b!1419254 (=> (not res!954885) (not e!803021))))

(assert (=> b!1419254 (= res!954885 (and (= (size!47306 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47306 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47306 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419255 () Bool)

(declare-fun res!954882 () Bool)

(assert (=> b!1419255 (=> (not res!954882) (not e!803021))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96880 (_ BitVec 32)) Bool)

(assert (=> b!1419255 (= res!954882 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419256 () Bool)

(declare-fun res!954888 () Bool)

(assert (=> b!1419256 (=> (not res!954888) (not e!803021))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419256 (= res!954888 (validKeyInArray!0 (select (arr!46755 a!2831) i!982)))))

(declare-fun b!1419257 () Bool)

(declare-fun res!954886 () Bool)

(assert (=> b!1419257 (=> (not res!954886) (not e!803021))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419257 (= res!954886 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47306 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47306 a!2831))))))

(declare-fun b!1419258 () Bool)

(declare-fun res!954883 () Bool)

(assert (=> b!1419258 (=> (not res!954883) (not e!803021))))

(declare-datatypes ((SeekEntryResult!11062 0))(
  ( (MissingZero!11062 (index!46639 (_ BitVec 32))) (Found!11062 (index!46640 (_ BitVec 32))) (Intermediate!11062 (undefined!11874 Bool) (index!46641 (_ BitVec 32)) (x!128309 (_ BitVec 32))) (Undefined!11062) (MissingVacant!11062 (index!46642 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96880 (_ BitVec 32)) SeekEntryResult!11062)

(assert (=> b!1419258 (= res!954883 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46755 a!2831) j!81) mask!2608) (select (arr!46755 a!2831) j!81) a!2831 mask!2608) (Intermediate!11062 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1419259 () Bool)

(declare-fun res!954881 () Bool)

(assert (=> b!1419259 (=> (not res!954881) (not e!803021))))

(assert (=> b!1419259 (= res!954881 (validKeyInArray!0 (select (arr!46755 a!2831) j!81)))))

(assert (= (and start!122558 res!954884) b!1419254))

(assert (= (and b!1419254 res!954885) b!1419256))

(assert (= (and b!1419256 res!954888) b!1419259))

(assert (= (and b!1419259 res!954881) b!1419255))

(assert (= (and b!1419255 res!954882) b!1419252))

(assert (= (and b!1419252 res!954887) b!1419257))

(assert (= (and b!1419257 res!954886) b!1419258))

(assert (= (and b!1419258 res!954883) b!1419253))

(declare-fun m!1309833 () Bool)

(assert (=> b!1419253 m!1309833))

(declare-fun m!1309835 () Bool)

(assert (=> b!1419253 m!1309835))

(assert (=> b!1419253 m!1309835))

(declare-fun m!1309837 () Bool)

(assert (=> b!1419253 m!1309837))

(declare-fun m!1309839 () Bool)

(assert (=> b!1419258 m!1309839))

(assert (=> b!1419258 m!1309839))

(declare-fun m!1309841 () Bool)

(assert (=> b!1419258 m!1309841))

(assert (=> b!1419258 m!1309841))

(assert (=> b!1419258 m!1309839))

(declare-fun m!1309843 () Bool)

(assert (=> b!1419258 m!1309843))

(assert (=> b!1419259 m!1309839))

(assert (=> b!1419259 m!1309839))

(declare-fun m!1309845 () Bool)

(assert (=> b!1419259 m!1309845))

(declare-fun m!1309847 () Bool)

(assert (=> start!122558 m!1309847))

(declare-fun m!1309849 () Bool)

(assert (=> start!122558 m!1309849))

(declare-fun m!1309851 () Bool)

(assert (=> b!1419256 m!1309851))

(assert (=> b!1419256 m!1309851))

(declare-fun m!1309853 () Bool)

(assert (=> b!1419256 m!1309853))

(declare-fun m!1309855 () Bool)

(assert (=> b!1419252 m!1309855))

(declare-fun m!1309857 () Bool)

(assert (=> b!1419255 m!1309857))

(push 1)

(assert (not b!1419255))

(assert (not b!1419256))

(assert (not b!1419252))

(assert (not b!1419259))

(assert (not b!1419258))

(assert (not start!122558))

(assert (not b!1419253))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!152919 () Bool)

(declare-fun lt!625708 () (_ BitVec 32))

(declare-fun lt!625707 () (_ BitVec 32))

(assert (=> d!152919 (= lt!625708 (bvmul (bvxor lt!625707 (bvlshr lt!625707 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152919 (= lt!625707 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46755 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (bvlshr (select (store (arr!46755 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152919 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!954895 (let ((h!34741 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46755 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (bvlshr (select (store (arr!46755 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!128311 (bvmul (bvxor h!34741 (bvlshr h!34741 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!128311 (bvlshr x!128311 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!954895 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!954895 #b00000000000000000000000000000000))))))

(assert (=> d!152919 (= (toIndex!0 (select (store (arr!46755 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (bvand (bvxor lt!625708 (bvlshr lt!625708 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1419253 d!152919))

(declare-fun b!1419344 () Bool)

(declare-fun e!803073 () SeekEntryResult!11062)

(assert (=> b!1419344 (= e!803073 (Intermediate!11062 true (toIndex!0 (select (arr!46755 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1419345 () Bool)

(declare-fun lt!625742 () SeekEntryResult!11062)

(assert (=> b!1419345 (and (bvsge (index!46641 lt!625742) #b00000000000000000000000000000000) (bvslt (index!46641 lt!625742) (size!47306 a!2831)))))

(declare-fun e!803072 () Bool)

(assert (=> b!1419345 (= e!803072 (= (select (arr!46755 a!2831) (index!46641 lt!625742)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1419346 () Bool)

(assert (=> b!1419346 (and (bvsge (index!46641 lt!625742) #b00000000000000000000000000000000) (bvslt (index!46641 lt!625742) (size!47306 a!2831)))))

(declare-fun res!954923 () Bool)

(assert (=> b!1419346 (= res!954923 (= (select (arr!46755 a!2831) (index!46641 lt!625742)) (select (arr!46755 a!2831) j!81)))))

(assert (=> b!1419346 (=> res!954923 e!803072)))

(declare-fun e!803074 () Bool)

(assert (=> b!1419346 (= e!803074 e!803072)))

(declare-fun b!1419347 () Bool)

(declare-fun e!803075 () SeekEntryResult!11062)

(assert (=> b!1419347 (= e!803073 e!803075)))

(declare-fun lt!625743 () (_ BitVec 64))

(declare-fun c!131702 () Bool)

(assert (=> b!1419347 (= c!131702 (or (= lt!625743 (select (arr!46755 a!2831) j!81)) (= (bvadd lt!625743 lt!625743) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!152923 () Bool)

(declare-fun e!803071 () Bool)

(assert (=> d!152923 e!803071))

(declare-fun c!131700 () Bool)

(assert (=> d!152923 (= c!131700 (and (is-Intermediate!11062 lt!625742) (undefined!11874 lt!625742)))))

(assert (=> d!152923 (= lt!625742 e!803073)))

(declare-fun c!131701 () Bool)

(assert (=> d!152923 (= c!131701 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!152923 (= lt!625743 (select (arr!46755 a!2831) (toIndex!0 (select (arr!46755 a!2831) j!81) mask!2608)))))

(assert (=> d!152923 (validMask!0 mask!2608)))

(assert (=> d!152923 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46755 a!2831) j!81) mask!2608) (select (arr!46755 a!2831) j!81) a!2831 mask!2608) lt!625742)))

(declare-fun b!1419348 () Bool)

(assert (=> b!1419348 (and (bvsge (index!46641 lt!625742) #b00000000000000000000000000000000) (bvslt (index!46641 lt!625742) (size!47306 a!2831)))))

(declare-fun res!954924 () Bool)

(assert (=> b!1419348 (= res!954924 (= (select (arr!46755 a!2831) (index!46641 lt!625742)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1419348 (=> res!954924 e!803072)))

(declare-fun b!1419349 () Bool)

(assert (=> b!1419349 (= e!803071 e!803074)))

(declare-fun res!954922 () Bool)

(assert (=> b!1419349 (= res!954922 (and (is-Intermediate!11062 lt!625742) (not (undefined!11874 lt!625742)) (bvslt (x!128309 lt!625742) #b01111111111111111111111111111110) (bvsge (x!128309 lt!625742) #b00000000000000000000000000000000) (bvsge (x!128309 lt!625742) #b00000000000000000000000000000000)))))

(assert (=> b!1419349 (=> (not res!954922) (not e!803074))))

(declare-fun b!1419350 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419350 (= e!803075 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46755 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!46755 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1419351 () Bool)

(assert (=> b!1419351 (= e!803071 (bvsge (x!128309 lt!625742) #b01111111111111111111111111111110))))

(declare-fun b!1419352 () Bool)

(assert (=> b!1419352 (= e!803075 (Intermediate!11062 false (toIndex!0 (select (arr!46755 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(assert (= (and d!152923 c!131701) b!1419344))

(assert (= (and d!152923 (not c!131701)) b!1419347))

(assert (= (and b!1419347 c!131702) b!1419352))

(assert (= (and b!1419347 (not c!131702)) b!1419350))

(assert (= (and d!152923 c!131700) b!1419351))

(assert (= (and d!152923 (not c!131700)) b!1419349))

(assert (= (and b!1419349 res!954922) b!1419346))

(assert (= (and b!1419346 (not res!954923)) b!1419348))

(assert (= (and b!1419348 (not res!954924)) b!1419345))

(declare-fun m!1309887 () Bool)

(assert (=> b!1419345 m!1309887))

(assert (=> b!1419346 m!1309887))

(assert (=> d!152923 m!1309841))

(declare-fun m!1309889 () Bool)

(assert (=> d!152923 m!1309889))

(assert (=> d!152923 m!1309847))

(assert (=> b!1419348 m!1309887))

(assert (=> b!1419350 m!1309841))

(declare-fun m!1309891 () Bool)

(assert (=> b!1419350 m!1309891))

(assert (=> b!1419350 m!1309891))

(assert (=> b!1419350 m!1309839))

(declare-fun m!1309893 () Bool)

(assert (=> b!1419350 m!1309893))

(assert (=> b!1419258 d!152923))

(declare-fun d!152939 () Bool)

(declare-fun lt!625745 () (_ BitVec 32))

(declare-fun lt!625744 () (_ BitVec 32))

(assert (=> d!152939 (= lt!625745 (bvmul (bvxor lt!625744 (bvlshr lt!625744 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152939 (= lt!625744 ((_ extract 31 0) (bvand (bvxor (select (arr!46755 a!2831) j!81) (bvlshr (select (arr!46755 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152939 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!954895 (let ((h!34741 ((_ extract 31 0) (bvand (bvxor (select (arr!46755 a!2831) j!81) (bvlshr (select (arr!46755 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!128311 (bvmul (bvxor h!34741 (bvlshr h!34741 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!128311 (bvlshr x!128311 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!954895 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!954895 #b00000000000000000000000000000000))))))

(assert (=> d!152939 (= (toIndex!0 (select (arr!46755 a!2831) j!81) mask!2608) (bvand (bvxor lt!625745 (bvlshr lt!625745 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1419258 d!152939))

(declare-fun d!152941 () Bool)

(assert (=> d!152941 (= (validKeyInArray!0 (select (arr!46755 a!2831) j!81)) (and (not (= (select (arr!46755 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46755 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1419259 d!152941))

(declare-fun d!152943 () Bool)

(assert (=> d!152943 (= (validKeyInArray!0 (select (arr!46755 a!2831) i!982)) (and (not (= (select (arr!46755 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46755 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1419256 d!152943))

(declare-fun d!152945 () Bool)

(assert (=> d!152945 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!122558 d!152945))

(declare-fun d!152957 () Bool)

(assert (=> d!152957 (= (array_inv!35700 a!2831) (bvsge (size!47306 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!122558 d!152957))

(declare-fun b!1419399 () Bool)

(declare-fun e!803114 () Bool)

(declare-fun call!67316 () Bool)

(assert (=> b!1419399 (= e!803114 call!67316)))

(declare-fun b!1419400 () Bool)

(declare-fun e!803113 () Bool)

(assert (=> b!1419400 (= e!803113 e!803114)))

(declare-fun lt!625759 () (_ BitVec 64))

(assert (=> b!1419400 (= lt!625759 (select (arr!46755 a!2831) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48022 0))(
  ( (Unit!48023) )
))
(declare-fun lt!625760 () Unit!48022)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96880 (_ BitVec 64) (_ BitVec 32)) Unit!48022)

(assert (=> b!1419400 (= lt!625760 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!625759 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96880 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1419400 (arrayContainsKey!0 a!2831 lt!625759 #b00000000000000000000000000000000)))

(declare-fun lt!625758 () Unit!48022)

(assert (=> b!1419400 (= lt!625758 lt!625760)))

(declare-fun res!954952 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96880 (_ BitVec 32)) SeekEntryResult!11062)

(assert (=> b!1419400 (= res!954952 (= (seekEntryOrOpen!0 (select (arr!46755 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11062 #b00000000000000000000000000000000)))))

(assert (=> b!1419400 (=> (not res!954952) (not e!803114))))

(declare-fun d!152959 () Bool)

(declare-fun res!954951 () Bool)

(declare-fun e!803112 () Bool)

(assert (=> d!152959 (=> res!954951 e!803112)))

(assert (=> d!152959 (= res!954951 (bvsge #b00000000000000000000000000000000 (size!47306 a!2831)))))

(assert (=> d!152959 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!803112)))

(declare-fun b!1419401 () Bool)

(assert (=> b!1419401 (= e!803112 e!803113)))

(declare-fun c!131713 () Bool)

(assert (=> b!1419401 (= c!131713 (validKeyInArray!0 (select (arr!46755 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67313 () Bool)

(assert (=> bm!67313 (= call!67316 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1419402 () Bool)

(assert (=> b!1419402 (= e!803113 call!67316)))

(assert (= (and d!152959 (not res!954951)) b!1419401))

(assert (= (and b!1419401 c!131713) b!1419400))

(assert (= (and b!1419401 (not c!131713)) b!1419402))

(assert (= (and b!1419400 res!954952) b!1419399))

(assert (= (or b!1419399 b!1419402) bm!67313))

(declare-fun m!1309907 () Bool)

(assert (=> b!1419400 m!1309907))

(declare-fun m!1309909 () Bool)

(assert (=> b!1419400 m!1309909))

(declare-fun m!1309911 () Bool)

(assert (=> b!1419400 m!1309911))

(assert (=> b!1419400 m!1309907))

(declare-fun m!1309913 () Bool)

(assert (=> b!1419400 m!1309913))

(assert (=> b!1419401 m!1309907))

(assert (=> b!1419401 m!1309907))

(declare-fun m!1309915 () Bool)

(assert (=> b!1419401 m!1309915))

(declare-fun m!1309917 () Bool)

(assert (=> bm!67313 m!1309917))

(assert (=> b!1419255 d!152959))

(declare-fun bm!67317 () Bool)

(declare-fun call!67320 () Bool)

(declare-fun c!131717 () Bool)

(assert (=> bm!67317 (= call!67320 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131717 (Cons!33441 (select (arr!46755 a!2831) #b00000000000000000000000000000000) Nil!33442) Nil!33442)))))

(declare-fun b!1419417 () Bool)

(declare-fun e!803128 () Bool)

(assert (=> b!1419417 (= e!803128 call!67320)))

(declare-fun b!1419418 () Bool)

(assert (=> b!1419418 (= e!803128 call!67320)))

(declare-fun b!1419419 () Bool)

(declare-fun e!803126 () Bool)

(assert (=> b!1419419 (= e!803126 e!803128)))

(assert (=> b!1419419 (= c!131717 (validKeyInArray!0 (select (arr!46755 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1419420 () Bool)

(declare-fun e!803129 () Bool)

(declare-fun contains!9856 (List!33445 (_ BitVec 64)) Bool)

(assert (=> b!1419420 (= e!803129 (contains!9856 Nil!33442 (select (arr!46755 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!152963 () Bool)

(declare-fun res!954961 () Bool)

(declare-fun e!803127 () Bool)

(assert (=> d!152963 (=> res!954961 e!803127)))

(assert (=> d!152963 (= res!954961 (bvsge #b00000000000000000000000000000000 (size!47306 a!2831)))))

(assert (=> d!152963 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33442) e!803127)))

(declare-fun b!1419421 () Bool)

(assert (=> b!1419421 (= e!803127 e!803126)))

(declare-fun res!954963 () Bool)

(assert (=> b!1419421 (=> (not res!954963) (not e!803126))))

(assert (=> b!1419421 (= res!954963 (not e!803129))))

(declare-fun res!954962 () Bool)

(assert (=> b!1419421 (=> (not res!954962) (not e!803129))))

(assert (=> b!1419421 (= res!954962 (validKeyInArray!0 (select (arr!46755 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!152963 (not res!954961)) b!1419421))

(assert (= (and b!1419421 res!954962) b!1419420))

(assert (= (and b!1419421 res!954963) b!1419419))

(assert (= (and b!1419419 c!131717) b!1419417))

(assert (= (and b!1419419 (not c!131717)) b!1419418))

(assert (= (or b!1419417 b!1419418) bm!67317))

(assert (=> bm!67317 m!1309907))

(declare-fun m!1309927 () Bool)

(assert (=> bm!67317 m!1309927))

(assert (=> b!1419419 m!1309907))

(assert (=> b!1419419 m!1309907))

(assert (=> b!1419419 m!1309915))

(assert (=> b!1419420 m!1309907))

(assert (=> b!1419420 m!1309907))

(declare-fun m!1309929 () Bool)

(assert (=> b!1419420 m!1309929))

(assert (=> b!1419421 m!1309907))

(assert (=> b!1419421 m!1309907))

(assert (=> b!1419421 m!1309915))

(assert (=> b!1419252 d!152963))

(push 1)

