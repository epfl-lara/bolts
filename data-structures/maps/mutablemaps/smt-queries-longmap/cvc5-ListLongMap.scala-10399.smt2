; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122554 () Bool)

(assert start!122554)

(declare-fun b!1419204 () Bool)

(declare-fun e!803008 () Bool)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun lt!625690 () (_ BitVec 32))

(assert (=> b!1419204 (= e!803008 (and (bvsge mask!2608 #b00000000000000000000000000000000) (or (bvslt lt!625690 #b00000000000000000000000000000000) (bvsge lt!625690 (bvadd #b00000000000000000000000000000001 mask!2608)))))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!96876 0))(
  ( (array!96877 (arr!46753 (Array (_ BitVec 32) (_ BitVec 64))) (size!47304 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96876)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419204 (= lt!625690 (toIndex!0 (select (store (arr!46753 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608))))

(declare-fun b!1419205 () Bool)

(declare-fun res!954839 () Bool)

(assert (=> b!1419205 (=> (not res!954839) (not e!803008))))

(assert (=> b!1419205 (= res!954839 (and (= (size!47304 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47304 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47304 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419206 () Bool)

(declare-fun res!954835 () Bool)

(assert (=> b!1419206 (=> (not res!954835) (not e!803008))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11060 0))(
  ( (MissingZero!11060 (index!46631 (_ BitVec 32))) (Found!11060 (index!46632 (_ BitVec 32))) (Intermediate!11060 (undefined!11872 Bool) (index!46633 (_ BitVec 32)) (x!128307 (_ BitVec 32))) (Undefined!11060) (MissingVacant!11060 (index!46634 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96876 (_ BitVec 32)) SeekEntryResult!11060)

(assert (=> b!1419206 (= res!954835 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46753 a!2831) j!81) mask!2608) (select (arr!46753 a!2831) j!81) a!2831 mask!2608) (Intermediate!11060 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1419207 () Bool)

(declare-fun res!954840 () Bool)

(assert (=> b!1419207 (=> (not res!954840) (not e!803008))))

(declare-datatypes ((List!33443 0))(
  ( (Nil!33440) (Cons!33439 (h!34738 (_ BitVec 64)) (t!48144 List!33443)) )
))
(declare-fun arrayNoDuplicates!0 (array!96876 (_ BitVec 32) List!33443) Bool)

(assert (=> b!1419207 (= res!954840 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33440))))

(declare-fun b!1419208 () Bool)

(declare-fun res!954837 () Bool)

(assert (=> b!1419208 (=> (not res!954837) (not e!803008))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419208 (= res!954837 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47304 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47304 a!2831))))))

(declare-fun res!954836 () Bool)

(assert (=> start!122554 (=> (not res!954836) (not e!803008))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122554 (= res!954836 (validMask!0 mask!2608))))

(assert (=> start!122554 e!803008))

(assert (=> start!122554 true))

(declare-fun array_inv!35698 (array!96876) Bool)

(assert (=> start!122554 (array_inv!35698 a!2831)))

(declare-fun b!1419209 () Bool)

(declare-fun res!954833 () Bool)

(assert (=> b!1419209 (=> (not res!954833) (not e!803008))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419209 (= res!954833 (validKeyInArray!0 (select (arr!46753 a!2831) i!982)))))

(declare-fun b!1419210 () Bool)

(declare-fun res!954838 () Bool)

(assert (=> b!1419210 (=> (not res!954838) (not e!803008))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96876 (_ BitVec 32)) Bool)

(assert (=> b!1419210 (= res!954838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419211 () Bool)

(declare-fun res!954834 () Bool)

(assert (=> b!1419211 (=> (not res!954834) (not e!803008))))

(assert (=> b!1419211 (= res!954834 (validKeyInArray!0 (select (arr!46753 a!2831) j!81)))))

(assert (= (and start!122554 res!954836) b!1419205))

(assert (= (and b!1419205 res!954839) b!1419209))

(assert (= (and b!1419209 res!954833) b!1419211))

(assert (= (and b!1419211 res!954834) b!1419210))

(assert (= (and b!1419210 res!954838) b!1419207))

(assert (= (and b!1419207 res!954840) b!1419208))

(assert (= (and b!1419208 res!954837) b!1419206))

(assert (= (and b!1419206 res!954835) b!1419204))

(declare-fun m!1309781 () Bool)

(assert (=> b!1419210 m!1309781))

(declare-fun m!1309783 () Bool)

(assert (=> start!122554 m!1309783))

(declare-fun m!1309785 () Bool)

(assert (=> start!122554 m!1309785))

(declare-fun m!1309787 () Bool)

(assert (=> b!1419207 m!1309787))

(declare-fun m!1309789 () Bool)

(assert (=> b!1419204 m!1309789))

(declare-fun m!1309791 () Bool)

(assert (=> b!1419204 m!1309791))

(assert (=> b!1419204 m!1309791))

(declare-fun m!1309793 () Bool)

(assert (=> b!1419204 m!1309793))

(declare-fun m!1309795 () Bool)

(assert (=> b!1419206 m!1309795))

(assert (=> b!1419206 m!1309795))

(declare-fun m!1309797 () Bool)

(assert (=> b!1419206 m!1309797))

(assert (=> b!1419206 m!1309797))

(assert (=> b!1419206 m!1309795))

(declare-fun m!1309799 () Bool)

(assert (=> b!1419206 m!1309799))

(assert (=> b!1419211 m!1309795))

(assert (=> b!1419211 m!1309795))

(declare-fun m!1309801 () Bool)

(assert (=> b!1419211 m!1309801))

(declare-fun m!1309803 () Bool)

(assert (=> b!1419209 m!1309803))

(assert (=> b!1419209 m!1309803))

(declare-fun m!1309805 () Bool)

(assert (=> b!1419209 m!1309805))

(push 1)

(assert (not start!122554))

(assert (not b!1419211))

(assert (not b!1419204))

(assert (not b!1419207))

(assert (not b!1419209))

(assert (not b!1419210))

(assert (not b!1419206))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1419313 () Bool)

(declare-fun e!803054 () Bool)

(declare-fun lt!625727 () SeekEntryResult!11060)

(assert (=> b!1419313 (= e!803054 (bvsge (x!128307 lt!625727) #b01111111111111111111111111111110))))

(declare-fun b!1419314 () Bool)

(declare-fun e!803053 () SeekEntryResult!11060)

(declare-fun e!803056 () SeekEntryResult!11060)

(assert (=> b!1419314 (= e!803053 e!803056)))

(declare-fun c!131691 () Bool)

(declare-fun lt!625728 () (_ BitVec 64))

(assert (=> b!1419314 (= c!131691 (or (= lt!625728 (select (arr!46753 a!2831) j!81)) (= (bvadd lt!625728 lt!625728) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1419315 () Bool)

(assert (=> b!1419315 (and (bvsge (index!46633 lt!625727) #b00000000000000000000000000000000) (bvslt (index!46633 lt!625727) (size!47304 a!2831)))))

(declare-fun e!803055 () Bool)

(assert (=> b!1419315 (= e!803055 (= (select (arr!46753 a!2831) (index!46633 lt!625727)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1419316 () Bool)

(assert (=> b!1419316 (= e!803053 (Intermediate!11060 true (toIndex!0 (select (arr!46753 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1419317 () Bool)

(assert (=> b!1419317 (= e!803056 (Intermediate!11060 false (toIndex!0 (select (arr!46753 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1419318 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419318 (= e!803056 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46753 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!46753 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1419319 () Bool)

(assert (=> b!1419319 (and (bvsge (index!46633 lt!625727) #b00000000000000000000000000000000) (bvslt (index!46633 lt!625727) (size!47304 a!2831)))))

(declare-fun res!954910 () Bool)

(assert (=> b!1419319 (= res!954910 (= (select (arr!46753 a!2831) (index!46633 lt!625727)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1419319 (=> res!954910 e!803055)))

(declare-fun b!1419320 () Bool)

(assert (=> b!1419320 (and (bvsge (index!46633 lt!625727) #b00000000000000000000000000000000) (bvslt (index!46633 lt!625727) (size!47304 a!2831)))))

(declare-fun res!954912 () Bool)

(assert (=> b!1419320 (= res!954912 (= (select (arr!46753 a!2831) (index!46633 lt!625727)) (select (arr!46753 a!2831) j!81)))))

(assert (=> b!1419320 (=> res!954912 e!803055)))

(declare-fun e!803057 () Bool)

(assert (=> b!1419320 (= e!803057 e!803055)))

(declare-fun d!152917 () Bool)

(assert (=> d!152917 e!803054))

(declare-fun c!131690 () Bool)

(assert (=> d!152917 (= c!131690 (and (is-Intermediate!11060 lt!625727) (undefined!11872 lt!625727)))))

(assert (=> d!152917 (= lt!625727 e!803053)))

(declare-fun c!131692 () Bool)

(assert (=> d!152917 (= c!131692 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!152917 (= lt!625728 (select (arr!46753 a!2831) (toIndex!0 (select (arr!46753 a!2831) j!81) mask!2608)))))

(assert (=> d!152917 (validMask!0 mask!2608)))

(assert (=> d!152917 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46753 a!2831) j!81) mask!2608) (select (arr!46753 a!2831) j!81) a!2831 mask!2608) lt!625727)))

(declare-fun b!1419321 () Bool)

(assert (=> b!1419321 (= e!803054 e!803057)))

(declare-fun res!954911 () Bool)

(assert (=> b!1419321 (= res!954911 (and (is-Intermediate!11060 lt!625727) (not (undefined!11872 lt!625727)) (bvslt (x!128307 lt!625727) #b01111111111111111111111111111110) (bvsge (x!128307 lt!625727) #b00000000000000000000000000000000) (bvsge (x!128307 lt!625727) #b00000000000000000000000000000000)))))

(assert (=> b!1419321 (=> (not res!954911) (not e!803057))))

(assert (= (and d!152917 c!131692) b!1419316))

(assert (= (and d!152917 (not c!131692)) b!1419314))

(assert (= (and b!1419314 c!131691) b!1419317))

(assert (= (and b!1419314 (not c!131691)) b!1419318))

(assert (= (and d!152917 c!131690) b!1419313))

(assert (= (and d!152917 (not c!131690)) b!1419321))

(assert (= (and b!1419321 res!954911) b!1419320))

(assert (= (and b!1419320 (not res!954912)) b!1419319))

(assert (= (and b!1419319 (not res!954910)) b!1419315))

(declare-fun m!1309867 () Bool)

(assert (=> b!1419320 m!1309867))

(assert (=> b!1419315 m!1309867))

(assert (=> b!1419319 m!1309867))

(assert (=> d!152917 m!1309797))

(declare-fun m!1309869 () Bool)

(assert (=> d!152917 m!1309869))

(assert (=> d!152917 m!1309783))

(assert (=> b!1419318 m!1309797))

(declare-fun m!1309871 () Bool)

(assert (=> b!1419318 m!1309871))

(assert (=> b!1419318 m!1309871))

(assert (=> b!1419318 m!1309795))

(declare-fun m!1309873 () Bool)

(assert (=> b!1419318 m!1309873))

(assert (=> b!1419206 d!152917))

(declare-fun d!152929 () Bool)

(declare-fun lt!625741 () (_ BitVec 32))

(declare-fun lt!625740 () (_ BitVec 32))

(assert (=> d!152929 (= lt!625741 (bvmul (bvxor lt!625740 (bvlshr lt!625740 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152929 (= lt!625740 ((_ extract 31 0) (bvand (bvxor (select (arr!46753 a!2831) j!81) (bvlshr (select (arr!46753 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152929 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!954915 (let ((h!34743 ((_ extract 31 0) (bvand (bvxor (select (arr!46753 a!2831) j!81) (bvlshr (select (arr!46753 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!128314 (bvmul (bvxor h!34743 (bvlshr h!34743 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!128314 (bvlshr x!128314 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!954915 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!954915 #b00000000000000000000000000000000))))))

(assert (=> d!152929 (= (toIndex!0 (select (arr!46753 a!2831) j!81) mask!2608) (bvand (bvxor lt!625741 (bvlshr lt!625741 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1419206 d!152929))

(declare-fun d!152935 () Bool)

(assert (=> d!152935 (= (validKeyInArray!0 (select (arr!46753 a!2831) j!81)) (and (not (= (select (arr!46753 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46753 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1419211 d!152935))

(declare-fun d!152937 () Bool)

(assert (=> d!152937 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!122554 d!152937))

(declare-fun d!152953 () Bool)

(assert (=> d!152953 (= (array_inv!35698 a!2831) (bvsge (size!47304 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!122554 d!152953))

(declare-fun b!1419378 () Bool)

(declare-fun e!803096 () Bool)

(declare-fun e!803099 () Bool)

(assert (=> b!1419378 (= e!803096 e!803099)))

(declare-fun res!954940 () Bool)

(assert (=> b!1419378 (=> (not res!954940) (not e!803099))))

(declare-fun e!803097 () Bool)

(assert (=> b!1419378 (= res!954940 (not e!803097))))

(declare-fun res!954942 () Bool)

(assert (=> b!1419378 (=> (not res!954942) (not e!803097))))

(assert (=> b!1419378 (= res!954942 (validKeyInArray!0 (select (arr!46753 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1419379 () Bool)

(declare-fun e!803098 () Bool)

(declare-fun call!67311 () Bool)

(assert (=> b!1419379 (= e!803098 call!67311)))

(declare-fun bm!67308 () Bool)

(declare-fun c!131708 () Bool)

(assert (=> bm!67308 (= call!67311 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131708 (Cons!33439 (select (arr!46753 a!2831) #b00000000000000000000000000000000) Nil!33440) Nil!33440)))))

(declare-fun b!1419380 () Bool)

(assert (=> b!1419380 (= e!803098 call!67311)))

(declare-fun b!1419381 () Bool)

(declare-fun contains!9855 (List!33443 (_ BitVec 64)) Bool)

(assert (=> b!1419381 (= e!803097 (contains!9855 Nil!33440 (select (arr!46753 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1419382 () Bool)

(assert (=> b!1419382 (= e!803099 e!803098)))

(assert (=> b!1419382 (= c!131708 (validKeyInArray!0 (select (arr!46753 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!152955 () Bool)

(declare-fun res!954941 () Bool)

(assert (=> d!152955 (=> res!954941 e!803096)))

(assert (=> d!152955 (= res!954941 (bvsge #b00000000000000000000000000000000 (size!47304 a!2831)))))

(assert (=> d!152955 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33440) e!803096)))

(assert (= (and d!152955 (not res!954941)) b!1419378))

(assert (= (and b!1419378 res!954942) b!1419381))

(assert (= (and b!1419378 res!954940) b!1419382))

(assert (= (and b!1419382 c!131708) b!1419380))

(assert (= (and b!1419382 (not c!131708)) b!1419379))

(assert (= (or b!1419380 b!1419379) bm!67308))

(declare-fun m!1309899 () Bool)

(assert (=> b!1419378 m!1309899))

(assert (=> b!1419378 m!1309899))

(declare-fun m!1309901 () Bool)

(assert (=> b!1419378 m!1309901))

(assert (=> bm!67308 m!1309899))

(declare-fun m!1309903 () Bool)

(assert (=> bm!67308 m!1309903))

(assert (=> b!1419381 m!1309899))

(assert (=> b!1419381 m!1309899))

(declare-fun m!1309905 () Bool)

(assert (=> b!1419381 m!1309905))

(assert (=> b!1419382 m!1309899))

(assert (=> b!1419382 m!1309899))

(assert (=> b!1419382 m!1309901))

(assert (=> b!1419207 d!152955))

(declare-fun bm!67314 () Bool)

(declare-fun call!67317 () Bool)

(assert (=> bm!67314 (= call!67317 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1419403 () Bool)

(declare-fun e!803117 () Bool)

(declare-fun e!803116 () Bool)

(assert (=> b!1419403 (= e!803117 e!803116)))

(declare-fun c!131714 () Bool)

(assert (=> b!1419403 (= c!131714 (validKeyInArray!0 (select (arr!46753 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!152961 () Bool)

(declare-fun res!954954 () Bool)

(assert (=> d!152961 (=> res!954954 e!803117)))

(assert (=> d!152961 (= res!954954 (bvsge #b00000000000000000000000000000000 (size!47304 a!2831)))))

(assert (=> d!152961 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!803117)))

(declare-fun b!1419404 () Bool)

(declare-fun e!803115 () Bool)

(assert (=> b!1419404 (= e!803115 call!67317)))

(declare-fun b!1419405 () Bool)

(assert (=> b!1419405 (= e!803116 e!803115)))

(declare-fun lt!625763 () (_ BitVec 64))

(assert (=> b!1419405 (= lt!625763 (select (arr!46753 a!2831) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48020 0))(
  ( (Unit!48021) )
))
(declare-fun lt!625762 () Unit!48020)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96876 (_ BitVec 64) (_ BitVec 32)) Unit!48020)

(assert (=> b!1419405 (= lt!625762 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!625763 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96876 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1419405 (arrayContainsKey!0 a!2831 lt!625763 #b00000000000000000000000000000000)))

(declare-fun lt!625761 () Unit!48020)

(assert (=> b!1419405 (= lt!625761 lt!625762)))

(declare-fun res!954953 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96876 (_ BitVec 32)) SeekEntryResult!11060)

(assert (=> b!1419405 (= res!954953 (= (seekEntryOrOpen!0 (select (arr!46753 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11060 #b00000000000000000000000000000000)))))

(assert (=> b!1419405 (=> (not res!954953) (not e!803115))))

(declare-fun b!1419406 () Bool)

(assert (=> b!1419406 (= e!803116 call!67317)))

(assert (= (and d!152961 (not res!954954)) b!1419403))

(assert (= (and b!1419403 c!131714) b!1419405))

(assert (= (and b!1419403 (not c!131714)) b!1419406))

(assert (= (and b!1419405 res!954953) b!1419404))

(assert (= (or b!1419404 b!1419406) bm!67314))

(declare-fun m!1309919 () Bool)

(assert (=> bm!67314 m!1309919))

(assert (=> b!1419403 m!1309899))

(assert (=> b!1419403 m!1309899))

(assert (=> b!1419403 m!1309901))

(assert (=> b!1419405 m!1309899))

(declare-fun m!1309921 () Bool)

(assert (=> b!1419405 m!1309921))

(declare-fun m!1309923 () Bool)

(assert (=> b!1419405 m!1309923))

(assert (=> b!1419405 m!1309899))

(declare-fun m!1309925 () Bool)

(assert (=> b!1419405 m!1309925))

(assert (=> b!1419210 d!152961))

(declare-fun d!152965 () Bool)

(declare-fun lt!625765 () (_ BitVec 32))

(declare-fun lt!625764 () (_ BitVec 32))

(assert (=> d!152965 (= lt!625765 (bvmul (bvxor lt!625764 (bvlshr lt!625764 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152965 (= lt!625764 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46753 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (bvlshr (select (store (arr!46753 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152965 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!954915 (let ((h!34743 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46753 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (bvlshr (select (store (arr!46753 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!128314 (bvmul (bvxor h!34743 (bvlshr h!34743 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!128314 (bvlshr x!128314 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!954915 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!954915 #b00000000000000000000000000000000))))))

(assert (=> d!152965 (= (toIndex!0 (select (store (arr!46753 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (bvand (bvxor lt!625765 (bvlshr lt!625765 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1419204 d!152965))

(declare-fun d!152967 () Bool)

(assert (=> d!152967 (= (validKeyInArray!0 (select (arr!46753 a!2831) i!982)) (and (not (= (select (arr!46753 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46753 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1419209 d!152967))

(push 1)

(assert (not d!152917))

(assert (not b!1419403))

(assert (not bm!67314))

(assert (not b!1419382))

(assert (not b!1419378))

(assert (not b!1419405))

(assert (not b!1419318))

(assert (not b!1419381))

(assert (not bm!67308))

(check-sat)

(pop 1)

(push 1)

(check-sat)

