; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122556 () Bool)

(assert start!122556)

(declare-fun b!1419228 () Bool)

(declare-fun res!954864 () Bool)

(declare-fun e!803015 () Bool)

(assert (=> b!1419228 (=> (not res!954864) (not e!803015))))

(declare-datatypes ((array!96878 0))(
  ( (array!96879 (arr!46754 (Array (_ BitVec 32) (_ BitVec 64))) (size!47305 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96878)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419228 (= res!954864 (validKeyInArray!0 (select (arr!46754 a!2831) i!982)))))

(declare-fun b!1419229 () Bool)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun lt!625693 () (_ BitVec 32))

(assert (=> b!1419229 (= e!803015 (and (bvsge mask!2608 #b00000000000000000000000000000000) (or (bvslt lt!625693 #b00000000000000000000000000000000) (bvsge lt!625693 (bvadd #b00000000000000000000000000000001 mask!2608)))))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419229 (= lt!625693 (toIndex!0 (select (store (arr!46754 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608))))

(declare-fun b!1419230 () Bool)

(declare-fun res!954862 () Bool)

(assert (=> b!1419230 (=> (not res!954862) (not e!803015))))

(assert (=> b!1419230 (= res!954862 (validKeyInArray!0 (select (arr!46754 a!2831) j!81)))))

(declare-fun res!954863 () Bool)

(assert (=> start!122556 (=> (not res!954863) (not e!803015))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122556 (= res!954863 (validMask!0 mask!2608))))

(assert (=> start!122556 e!803015))

(assert (=> start!122556 true))

(declare-fun array_inv!35699 (array!96878) Bool)

(assert (=> start!122556 (array_inv!35699 a!2831)))

(declare-fun b!1419231 () Bool)

(declare-fun res!954860 () Bool)

(assert (=> b!1419231 (=> (not res!954860) (not e!803015))))

(assert (=> b!1419231 (= res!954860 (and (= (size!47305 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47305 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47305 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419232 () Bool)

(declare-fun res!954861 () Bool)

(assert (=> b!1419232 (=> (not res!954861) (not e!803015))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419232 (= res!954861 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47305 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47305 a!2831))))))

(declare-fun b!1419233 () Bool)

(declare-fun res!954858 () Bool)

(assert (=> b!1419233 (=> (not res!954858) (not e!803015))))

(declare-datatypes ((List!33444 0))(
  ( (Nil!33441) (Cons!33440 (h!34739 (_ BitVec 64)) (t!48145 List!33444)) )
))
(declare-fun arrayNoDuplicates!0 (array!96878 (_ BitVec 32) List!33444) Bool)

(assert (=> b!1419233 (= res!954858 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33441))))

(declare-fun b!1419234 () Bool)

(declare-fun res!954857 () Bool)

(assert (=> b!1419234 (=> (not res!954857) (not e!803015))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96878 (_ BitVec 32)) Bool)

(assert (=> b!1419234 (= res!954857 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419235 () Bool)

(declare-fun res!954859 () Bool)

(assert (=> b!1419235 (=> (not res!954859) (not e!803015))))

(declare-datatypes ((SeekEntryResult!11061 0))(
  ( (MissingZero!11061 (index!46635 (_ BitVec 32))) (Found!11061 (index!46636 (_ BitVec 32))) (Intermediate!11061 (undefined!11873 Bool) (index!46637 (_ BitVec 32)) (x!128308 (_ BitVec 32))) (Undefined!11061) (MissingVacant!11061 (index!46638 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96878 (_ BitVec 32)) SeekEntryResult!11061)

(assert (=> b!1419235 (= res!954859 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46754 a!2831) j!81) mask!2608) (select (arr!46754 a!2831) j!81) a!2831 mask!2608) (Intermediate!11061 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(assert (= (and start!122556 res!954863) b!1419231))

(assert (= (and b!1419231 res!954860) b!1419228))

(assert (= (and b!1419228 res!954864) b!1419230))

(assert (= (and b!1419230 res!954862) b!1419234))

(assert (= (and b!1419234 res!954857) b!1419233))

(assert (= (and b!1419233 res!954858) b!1419232))

(assert (= (and b!1419232 res!954861) b!1419235))

(assert (= (and b!1419235 res!954859) b!1419229))

(declare-fun m!1309807 () Bool)

(assert (=> b!1419228 m!1309807))

(assert (=> b!1419228 m!1309807))

(declare-fun m!1309809 () Bool)

(assert (=> b!1419228 m!1309809))

(declare-fun m!1309811 () Bool)

(assert (=> start!122556 m!1309811))

(declare-fun m!1309813 () Bool)

(assert (=> start!122556 m!1309813))

(declare-fun m!1309815 () Bool)

(assert (=> b!1419230 m!1309815))

(assert (=> b!1419230 m!1309815))

(declare-fun m!1309817 () Bool)

(assert (=> b!1419230 m!1309817))

(assert (=> b!1419235 m!1309815))

(assert (=> b!1419235 m!1309815))

(declare-fun m!1309819 () Bool)

(assert (=> b!1419235 m!1309819))

(assert (=> b!1419235 m!1309819))

(assert (=> b!1419235 m!1309815))

(declare-fun m!1309821 () Bool)

(assert (=> b!1419235 m!1309821))

(declare-fun m!1309823 () Bool)

(assert (=> b!1419229 m!1309823))

(declare-fun m!1309825 () Bool)

(assert (=> b!1419229 m!1309825))

(assert (=> b!1419229 m!1309825))

(declare-fun m!1309827 () Bool)

(assert (=> b!1419229 m!1309827))

(declare-fun m!1309829 () Bool)

(assert (=> b!1419234 m!1309829))

(declare-fun m!1309831 () Bool)

(assert (=> b!1419233 m!1309831))

(check-sat (not b!1419233) (not b!1419229) (not b!1419234) (not b!1419228) (not b!1419235) (not b!1419230) (not start!122556))
(check-sat)
(get-model)

(declare-fun b!1419278 () Bool)

(declare-fun lt!625702 () SeekEntryResult!11061)

(assert (=> b!1419278 (and (bvsge (index!46637 lt!625702) #b00000000000000000000000000000000) (bvslt (index!46637 lt!625702) (size!47305 a!2831)))))

(declare-fun e!803033 () Bool)

(assert (=> b!1419278 (= e!803033 (= (select (arr!46754 a!2831) (index!46637 lt!625702)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1419279 () Bool)

(declare-fun e!803032 () Bool)

(declare-fun e!803034 () Bool)

(assert (=> b!1419279 (= e!803032 e!803034)))

(declare-fun res!954896 () Bool)

(get-info :version)

(assert (=> b!1419279 (= res!954896 (and ((_ is Intermediate!11061) lt!625702) (not (undefined!11873 lt!625702)) (bvslt (x!128308 lt!625702) #b01111111111111111111111111111110) (bvsge (x!128308 lt!625702) #b00000000000000000000000000000000) (bvsge (x!128308 lt!625702) #b00000000000000000000000000000000)))))

(assert (=> b!1419279 (=> (not res!954896) (not e!803034))))

(declare-fun d!152915 () Bool)

(assert (=> d!152915 e!803032))

(declare-fun c!131681 () Bool)

(assert (=> d!152915 (= c!131681 (and ((_ is Intermediate!11061) lt!625702) (undefined!11873 lt!625702)))))

(declare-fun e!803036 () SeekEntryResult!11061)

(assert (=> d!152915 (= lt!625702 e!803036)))

(declare-fun c!131680 () Bool)

(assert (=> d!152915 (= c!131680 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!625701 () (_ BitVec 64))

(assert (=> d!152915 (= lt!625701 (select (arr!46754 a!2831) (toIndex!0 (select (arr!46754 a!2831) j!81) mask!2608)))))

(assert (=> d!152915 (validMask!0 mask!2608)))

(assert (=> d!152915 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46754 a!2831) j!81) mask!2608) (select (arr!46754 a!2831) j!81) a!2831 mask!2608) lt!625702)))

(declare-fun b!1419280 () Bool)

(assert (=> b!1419280 (and (bvsge (index!46637 lt!625702) #b00000000000000000000000000000000) (bvslt (index!46637 lt!625702) (size!47305 a!2831)))))

(declare-fun res!954897 () Bool)

(assert (=> b!1419280 (= res!954897 (= (select (arr!46754 a!2831) (index!46637 lt!625702)) (select (arr!46754 a!2831) j!81)))))

(assert (=> b!1419280 (=> res!954897 e!803033)))

(assert (=> b!1419280 (= e!803034 e!803033)))

(declare-fun b!1419281 () Bool)

(declare-fun e!803035 () SeekEntryResult!11061)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419281 (= e!803035 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46754 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!46754 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1419282 () Bool)

(assert (=> b!1419282 (= e!803035 (Intermediate!11061 false (toIndex!0 (select (arr!46754 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1419283 () Bool)

(assert (=> b!1419283 (and (bvsge (index!46637 lt!625702) #b00000000000000000000000000000000) (bvslt (index!46637 lt!625702) (size!47305 a!2831)))))

(declare-fun res!954898 () Bool)

(assert (=> b!1419283 (= res!954898 (= (select (arr!46754 a!2831) (index!46637 lt!625702)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1419283 (=> res!954898 e!803033)))

(declare-fun b!1419284 () Bool)

(assert (=> b!1419284 (= e!803036 (Intermediate!11061 true (toIndex!0 (select (arr!46754 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1419285 () Bool)

(assert (=> b!1419285 (= e!803036 e!803035)))

(declare-fun c!131679 () Bool)

(assert (=> b!1419285 (= c!131679 (or (= lt!625701 (select (arr!46754 a!2831) j!81)) (= (bvadd lt!625701 lt!625701) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1419286 () Bool)

(assert (=> b!1419286 (= e!803032 (bvsge (x!128308 lt!625702) #b01111111111111111111111111111110))))

(assert (= (and d!152915 c!131680) b!1419284))

(assert (= (and d!152915 (not c!131680)) b!1419285))

(assert (= (and b!1419285 c!131679) b!1419282))

(assert (= (and b!1419285 (not c!131679)) b!1419281))

(assert (= (and d!152915 c!131681) b!1419286))

(assert (= (and d!152915 (not c!131681)) b!1419279))

(assert (= (and b!1419279 res!954896) b!1419280))

(assert (= (and b!1419280 (not res!954897)) b!1419283))

(assert (= (and b!1419283 (not res!954898)) b!1419278))

(declare-fun m!1309859 () Bool)

(assert (=> b!1419278 m!1309859))

(assert (=> b!1419280 m!1309859))

(assert (=> b!1419283 m!1309859))

(assert (=> b!1419281 m!1309819))

(declare-fun m!1309861 () Bool)

(assert (=> b!1419281 m!1309861))

(assert (=> b!1419281 m!1309861))

(assert (=> b!1419281 m!1309815))

(declare-fun m!1309863 () Bool)

(assert (=> b!1419281 m!1309863))

(assert (=> d!152915 m!1309819))

(declare-fun m!1309865 () Bool)

(assert (=> d!152915 m!1309865))

(assert (=> d!152915 m!1309811))

(assert (=> b!1419235 d!152915))

(declare-fun d!152921 () Bool)

(declare-fun lt!625714 () (_ BitVec 32))

(declare-fun lt!625713 () (_ BitVec 32))

(assert (=> d!152921 (= lt!625714 (bvmul (bvxor lt!625713 (bvlshr lt!625713 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152921 (= lt!625713 ((_ extract 31 0) (bvand (bvxor (select (arr!46754 a!2831) j!81) (bvlshr (select (arr!46754 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152921 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!954899 (let ((h!34742 ((_ extract 31 0) (bvand (bvxor (select (arr!46754 a!2831) j!81) (bvlshr (select (arr!46754 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!128312 (bvmul (bvxor h!34742 (bvlshr h!34742 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!128312 (bvlshr x!128312 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!954899 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!954899 #b00000000000000000000000000000000))))))

(assert (=> d!152921 (= (toIndex!0 (select (arr!46754 a!2831) j!81) mask!2608) (bvand (bvxor lt!625714 (bvlshr lt!625714 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1419235 d!152921))

(declare-fun d!152925 () Bool)

(declare-fun lt!625716 () (_ BitVec 32))

(declare-fun lt!625715 () (_ BitVec 32))

(assert (=> d!152925 (= lt!625716 (bvmul (bvxor lt!625715 (bvlshr lt!625715 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152925 (= lt!625715 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46754 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (bvlshr (select (store (arr!46754 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152925 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!954899 (let ((h!34742 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46754 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (bvlshr (select (store (arr!46754 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!128312 (bvmul (bvxor h!34742 (bvlshr h!34742 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!128312 (bvlshr x!128312 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!954899 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!954899 #b00000000000000000000000000000000))))))

(assert (=> d!152925 (= (toIndex!0 (select (store (arr!46754 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (bvand (bvxor lt!625716 (bvlshr lt!625716 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1419229 d!152925))

(declare-fun bm!67302 () Bool)

(declare-fun call!67305 () Bool)

(assert (=> bm!67302 (= call!67305 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1419322 () Bool)

(declare-fun e!803060 () Bool)

(declare-fun e!803058 () Bool)

(assert (=> b!1419322 (= e!803060 e!803058)))

(declare-fun lt!625731 () (_ BitVec 64))

(assert (=> b!1419322 (= lt!625731 (select (arr!46754 a!2831) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48018 0))(
  ( (Unit!48019) )
))
(declare-fun lt!625730 () Unit!48018)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96878 (_ BitVec 64) (_ BitVec 32)) Unit!48018)

(assert (=> b!1419322 (= lt!625730 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!625731 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96878 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1419322 (arrayContainsKey!0 a!2831 lt!625731 #b00000000000000000000000000000000)))

(declare-fun lt!625729 () Unit!48018)

(assert (=> b!1419322 (= lt!625729 lt!625730)))

(declare-fun res!954913 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96878 (_ BitVec 32)) SeekEntryResult!11061)

(assert (=> b!1419322 (= res!954913 (= (seekEntryOrOpen!0 (select (arr!46754 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11061 #b00000000000000000000000000000000)))))

(assert (=> b!1419322 (=> (not res!954913) (not e!803058))))

(declare-fun b!1419323 () Bool)

(assert (=> b!1419323 (= e!803060 call!67305)))

(declare-fun b!1419325 () Bool)

(assert (=> b!1419325 (= e!803058 call!67305)))

(declare-fun d!152927 () Bool)

(declare-fun res!954914 () Bool)

(declare-fun e!803059 () Bool)

(assert (=> d!152927 (=> res!954914 e!803059)))

(assert (=> d!152927 (= res!954914 (bvsge #b00000000000000000000000000000000 (size!47305 a!2831)))))

(assert (=> d!152927 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!803059)))

(declare-fun b!1419324 () Bool)

(assert (=> b!1419324 (= e!803059 e!803060)))

(declare-fun c!131693 () Bool)

(assert (=> b!1419324 (= c!131693 (validKeyInArray!0 (select (arr!46754 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!152927 (not res!954914)) b!1419324))

(assert (= (and b!1419324 c!131693) b!1419322))

(assert (= (and b!1419324 (not c!131693)) b!1419323))

(assert (= (and b!1419322 res!954913) b!1419325))

(assert (= (or b!1419325 b!1419323) bm!67302))

(declare-fun m!1309875 () Bool)

(assert (=> bm!67302 m!1309875))

(declare-fun m!1309877 () Bool)

(assert (=> b!1419322 m!1309877))

(declare-fun m!1309879 () Bool)

(assert (=> b!1419322 m!1309879))

(declare-fun m!1309881 () Bool)

(assert (=> b!1419322 m!1309881))

(assert (=> b!1419322 m!1309877))

(declare-fun m!1309883 () Bool)

(assert (=> b!1419322 m!1309883))

(assert (=> b!1419324 m!1309877))

(assert (=> b!1419324 m!1309877))

(declare-fun m!1309885 () Bool)

(assert (=> b!1419324 m!1309885))

(assert (=> b!1419234 d!152927))

(declare-fun d!152931 () Bool)

(assert (=> d!152931 (= (validKeyInArray!0 (select (arr!46754 a!2831) j!81)) (and (not (= (select (arr!46754 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46754 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1419230 d!152931))

(declare-fun d!152933 () Bool)

(assert (=> d!152933 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!122556 d!152933))

(declare-fun d!152947 () Bool)

(assert (=> d!152947 (= (array_inv!35699 a!2831) (bvsge (size!47305 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!122556 d!152947))

(declare-fun d!152949 () Bool)

(assert (=> d!152949 (= (validKeyInArray!0 (select (arr!46754 a!2831) i!982)) (and (not (= (select (arr!46754 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46754 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1419228 d!152949))

(declare-fun b!1419363 () Bool)

(declare-fun e!803086 () Bool)

(declare-fun contains!9854 (List!33444 (_ BitVec 64)) Bool)

(assert (=> b!1419363 (= e!803086 (contains!9854 Nil!33441 (select (arr!46754 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67305 () Bool)

(declare-fun call!67308 () Bool)

(declare-fun c!131705 () Bool)

(assert (=> bm!67305 (= call!67308 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131705 (Cons!33440 (select (arr!46754 a!2831) #b00000000000000000000000000000000) Nil!33441) Nil!33441)))))

(declare-fun d!152951 () Bool)

(declare-fun res!954931 () Bool)

(declare-fun e!803084 () Bool)

(assert (=> d!152951 (=> res!954931 e!803084)))

(assert (=> d!152951 (= res!954931 (bvsge #b00000000000000000000000000000000 (size!47305 a!2831)))))

(assert (=> d!152951 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33441) e!803084)))

(declare-fun b!1419364 () Bool)

(declare-fun e!803087 () Bool)

(assert (=> b!1419364 (= e!803087 call!67308)))

(declare-fun b!1419365 () Bool)

(declare-fun e!803085 () Bool)

(assert (=> b!1419365 (= e!803085 e!803087)))

(assert (=> b!1419365 (= c!131705 (validKeyInArray!0 (select (arr!46754 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1419366 () Bool)

(assert (=> b!1419366 (= e!803084 e!803085)))

(declare-fun res!954933 () Bool)

(assert (=> b!1419366 (=> (not res!954933) (not e!803085))))

(assert (=> b!1419366 (= res!954933 (not e!803086))))

(declare-fun res!954932 () Bool)

(assert (=> b!1419366 (=> (not res!954932) (not e!803086))))

(assert (=> b!1419366 (= res!954932 (validKeyInArray!0 (select (arr!46754 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1419367 () Bool)

(assert (=> b!1419367 (= e!803087 call!67308)))

(assert (= (and d!152951 (not res!954931)) b!1419366))

(assert (= (and b!1419366 res!954932) b!1419363))

(assert (= (and b!1419366 res!954933) b!1419365))

(assert (= (and b!1419365 c!131705) b!1419367))

(assert (= (and b!1419365 (not c!131705)) b!1419364))

(assert (= (or b!1419367 b!1419364) bm!67305))

(assert (=> b!1419363 m!1309877))

(assert (=> b!1419363 m!1309877))

(declare-fun m!1309895 () Bool)

(assert (=> b!1419363 m!1309895))

(assert (=> bm!67305 m!1309877))

(declare-fun m!1309897 () Bool)

(assert (=> bm!67305 m!1309897))

(assert (=> b!1419365 m!1309877))

(assert (=> b!1419365 m!1309877))

(assert (=> b!1419365 m!1309885))

(assert (=> b!1419366 m!1309877))

(assert (=> b!1419366 m!1309877))

(assert (=> b!1419366 m!1309885))

(assert (=> b!1419233 d!152951))

(check-sat (not b!1419324) (not bm!67302) (not b!1419363) (not b!1419366) (not b!1419322) (not d!152915) (not b!1419281) (not bm!67305) (not b!1419365))
(check-sat)
