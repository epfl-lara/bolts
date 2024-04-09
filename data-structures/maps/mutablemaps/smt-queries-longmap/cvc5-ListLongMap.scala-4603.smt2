; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64210 () Bool)

(assert start!64210)

(declare-fun b!720865 () Bool)

(declare-fun res!483098 () Bool)

(declare-fun e!404272 () Bool)

(assert (=> b!720865 (=> (not res!483098) (not e!404272))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40801 0))(
  ( (array!40802 (arr!19521 (Array (_ BitVec 32) (_ BitVec 64))) (size!19942 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40801)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!720865 (= res!483098 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19521 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!720866 () Bool)

(declare-fun res!483097 () Bool)

(declare-fun e!404270 () Bool)

(assert (=> b!720866 (=> (not res!483097) (not e!404270))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!720866 (= res!483097 (validKeyInArray!0 (select (arr!19521 a!3186) j!159)))))

(declare-fun b!720867 () Bool)

(declare-fun e!404271 () Bool)

(assert (=> b!720867 (= e!404271 e!404272)))

(declare-fun res!483100 () Bool)

(assert (=> b!720867 (=> (not res!483100) (not e!404272))))

(declare-datatypes ((SeekEntryResult!7128 0))(
  ( (MissingZero!7128 (index!30879 (_ BitVec 32))) (Found!7128 (index!30880 (_ BitVec 32))) (Intermediate!7128 (undefined!7940 Bool) (index!30881 (_ BitVec 32)) (x!61913 (_ BitVec 32))) (Undefined!7128) (MissingVacant!7128 (index!30882 (_ BitVec 32))) )
))
(declare-fun lt!319897 () SeekEntryResult!7128)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40801 (_ BitVec 32)) SeekEntryResult!7128)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!720867 (= res!483100 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19521 a!3186) j!159) mask!3328) (select (arr!19521 a!3186) j!159) a!3186 mask!3328) lt!319897))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!720867 (= lt!319897 (Intermediate!7128 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!483092 () Bool)

(assert (=> start!64210 (=> (not res!483092) (not e!404270))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64210 (= res!483092 (validMask!0 mask!3328))))

(assert (=> start!64210 e!404270))

(assert (=> start!64210 true))

(declare-fun array_inv!15295 (array!40801) Bool)

(assert (=> start!64210 (array_inv!15295 a!3186)))

(declare-fun b!720868 () Bool)

(declare-fun res!483101 () Bool)

(assert (=> b!720868 (=> (not res!483101) (not e!404270))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!720868 (= res!483101 (validKeyInArray!0 k!2102))))

(declare-fun b!720869 () Bool)

(declare-fun res!483094 () Bool)

(assert (=> b!720869 (=> (not res!483094) (not e!404272))))

(declare-fun e!404274 () Bool)

(assert (=> b!720869 (= res!483094 e!404274)))

(declare-fun c!79257 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!720869 (= c!79257 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!720870 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40801 (_ BitVec 32)) SeekEntryResult!7128)

(assert (=> b!720870 (= e!404274 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19521 a!3186) j!159) a!3186 mask!3328) (Found!7128 j!159)))))

(declare-fun b!720871 () Bool)

(declare-fun res!483096 () Bool)

(assert (=> b!720871 (=> (not res!483096) (not e!404271))))

(assert (=> b!720871 (= res!483096 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19942 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19942 a!3186))))))

(declare-fun b!720872 () Bool)

(declare-fun res!483102 () Bool)

(assert (=> b!720872 (=> (not res!483102) (not e!404270))))

(assert (=> b!720872 (= res!483102 (and (= (size!19942 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19942 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19942 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!720873 () Bool)

(declare-fun lt!319896 () (_ BitVec 32))

(assert (=> b!720873 (= e!404272 (and (bvsge mask!3328 #b00000000000000000000000000000000) (or (bvslt lt!319896 #b00000000000000000000000000000000) (bvsge lt!319896 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(assert (=> b!720873 (= lt!319896 (toIndex!0 (select (store (arr!19521 a!3186) i!1173 k!2102) j!159) mask!3328))))

(declare-fun b!720874 () Bool)

(declare-fun res!483095 () Bool)

(assert (=> b!720874 (=> (not res!483095) (not e!404271))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40801 (_ BitVec 32)) Bool)

(assert (=> b!720874 (= res!483095 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!720875 () Bool)

(assert (=> b!720875 (= e!404274 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19521 a!3186) j!159) a!3186 mask!3328) lt!319897))))

(declare-fun b!720876 () Bool)

(assert (=> b!720876 (= e!404270 e!404271)))

(declare-fun res!483099 () Bool)

(assert (=> b!720876 (=> (not res!483099) (not e!404271))))

(declare-fun lt!319898 () SeekEntryResult!7128)

(assert (=> b!720876 (= res!483099 (or (= lt!319898 (MissingZero!7128 i!1173)) (= lt!319898 (MissingVacant!7128 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40801 (_ BitVec 32)) SeekEntryResult!7128)

(assert (=> b!720876 (= lt!319898 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!720877 () Bool)

(declare-fun res!483093 () Bool)

(assert (=> b!720877 (=> (not res!483093) (not e!404271))))

(declare-datatypes ((List!13576 0))(
  ( (Nil!13573) (Cons!13572 (h!14623 (_ BitVec 64)) (t!19899 List!13576)) )
))
(declare-fun arrayNoDuplicates!0 (array!40801 (_ BitVec 32) List!13576) Bool)

(assert (=> b!720877 (= res!483093 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13573))))

(declare-fun b!720878 () Bool)

(declare-fun res!483091 () Bool)

(assert (=> b!720878 (=> (not res!483091) (not e!404270))))

(declare-fun arrayContainsKey!0 (array!40801 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!720878 (= res!483091 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!64210 res!483092) b!720872))

(assert (= (and b!720872 res!483102) b!720866))

(assert (= (and b!720866 res!483097) b!720868))

(assert (= (and b!720868 res!483101) b!720878))

(assert (= (and b!720878 res!483091) b!720876))

(assert (= (and b!720876 res!483099) b!720874))

(assert (= (and b!720874 res!483095) b!720877))

(assert (= (and b!720877 res!483093) b!720871))

(assert (= (and b!720871 res!483096) b!720867))

(assert (= (and b!720867 res!483100) b!720865))

(assert (= (and b!720865 res!483098) b!720869))

(assert (= (and b!720869 c!79257) b!720875))

(assert (= (and b!720869 (not c!79257)) b!720870))

(assert (= (and b!720869 res!483094) b!720873))

(declare-fun m!675937 () Bool)

(assert (=> b!720875 m!675937))

(assert (=> b!720875 m!675937))

(declare-fun m!675939 () Bool)

(assert (=> b!720875 m!675939))

(assert (=> b!720866 m!675937))

(assert (=> b!720866 m!675937))

(declare-fun m!675941 () Bool)

(assert (=> b!720866 m!675941))

(declare-fun m!675943 () Bool)

(assert (=> b!720868 m!675943))

(assert (=> b!720867 m!675937))

(assert (=> b!720867 m!675937))

(declare-fun m!675945 () Bool)

(assert (=> b!720867 m!675945))

(assert (=> b!720867 m!675945))

(assert (=> b!720867 m!675937))

(declare-fun m!675947 () Bool)

(assert (=> b!720867 m!675947))

(declare-fun m!675949 () Bool)

(assert (=> b!720865 m!675949))

(assert (=> b!720870 m!675937))

(assert (=> b!720870 m!675937))

(declare-fun m!675951 () Bool)

(assert (=> b!720870 m!675951))

(declare-fun m!675953 () Bool)

(assert (=> b!720876 m!675953))

(declare-fun m!675955 () Bool)

(assert (=> b!720873 m!675955))

(declare-fun m!675957 () Bool)

(assert (=> b!720873 m!675957))

(assert (=> b!720873 m!675957))

(declare-fun m!675959 () Bool)

(assert (=> b!720873 m!675959))

(declare-fun m!675961 () Bool)

(assert (=> b!720874 m!675961))

(declare-fun m!675963 () Bool)

(assert (=> b!720877 m!675963))

(declare-fun m!675965 () Bool)

(assert (=> b!720878 m!675965))

(declare-fun m!675967 () Bool)

(assert (=> start!64210 m!675967))

(declare-fun m!675969 () Bool)

(assert (=> start!64210 m!675969))

(push 1)

(assert (not b!720878))

(assert (not b!720873))

(assert (not b!720868))

(assert (not b!720870))

(assert (not b!720876))

(assert (not start!64210))

(assert (not b!720874))

(assert (not b!720866))

(assert (not b!720877))

(assert (not b!720875))

(assert (not b!720867))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!99121 () Bool)

(declare-fun res!483193 () Bool)

(declare-fun e!404332 () Bool)

(assert (=> d!99121 (=> res!483193 e!404332)))

(assert (=> d!99121 (= res!483193 (bvsge #b00000000000000000000000000000000 (size!19942 a!3186)))))

(assert (=> d!99121 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!404332)))

(declare-fun bm!34767 () Bool)

(declare-fun call!34770 () Bool)

(assert (=> bm!34767 (= call!34770 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!721002 () Bool)

(declare-fun e!404330 () Bool)

(declare-fun e!404331 () Bool)

(assert (=> b!721002 (= e!404330 e!404331)))

(declare-fun lt!319930 () (_ BitVec 64))

(assert (=> b!721002 (= lt!319930 (select (arr!19521 a!3186) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!24652 0))(
  ( (Unit!24653) )
))
(declare-fun lt!319929 () Unit!24652)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!40801 (_ BitVec 64) (_ BitVec 32)) Unit!24652)

(assert (=> b!721002 (= lt!319929 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!319930 #b00000000000000000000000000000000))))

(assert (=> b!721002 (arrayContainsKey!0 a!3186 lt!319930 #b00000000000000000000000000000000)))

(declare-fun lt!319931 () Unit!24652)

(assert (=> b!721002 (= lt!319931 lt!319929)))

(declare-fun res!483192 () Bool)

(assert (=> b!721002 (= res!483192 (= (seekEntryOrOpen!0 (select (arr!19521 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7128 #b00000000000000000000000000000000)))))

(assert (=> b!721002 (=> (not res!483192) (not e!404331))))

(declare-fun b!721003 () Bool)

(assert (=> b!721003 (= e!404330 call!34770)))

(declare-fun b!721004 () Bool)

(assert (=> b!721004 (= e!404332 e!404330)))

(declare-fun c!79275 () Bool)

(assert (=> b!721004 (= c!79275 (validKeyInArray!0 (select (arr!19521 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!721005 () Bool)

(assert (=> b!721005 (= e!404331 call!34770)))

(assert (= (and d!99121 (not res!483193)) b!721004))

(assert (= (and b!721004 c!79275) b!721002))

(assert (= (and b!721004 (not c!79275)) b!721003))

(assert (= (and b!721002 res!483192) b!721005))

(assert (= (or b!721005 b!721003) bm!34767))

(declare-fun m!676047 () Bool)

(assert (=> bm!34767 m!676047))

(declare-fun m!676049 () Bool)

(assert (=> b!721002 m!676049))

(declare-fun m!676051 () Bool)

(assert (=> b!721002 m!676051))

(declare-fun m!676053 () Bool)

(assert (=> b!721002 m!676053))

(assert (=> b!721002 m!676049))

(declare-fun m!676055 () Bool)

(assert (=> b!721002 m!676055))

(assert (=> b!721004 m!676049))

(assert (=> b!721004 m!676049))

(declare-fun m!676057 () Bool)

(assert (=> b!721004 m!676057))

(assert (=> b!720874 d!99121))

(declare-fun d!99127 () Bool)

(assert (=> d!99127 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!720868 d!99127))

(declare-fun d!99131 () Bool)

(declare-fun lt!319937 () (_ BitVec 32))

(declare-fun lt!319936 () (_ BitVec 32))

(assert (=> d!99131 (= lt!319937 (bvmul (bvxor lt!319936 (bvlshr lt!319936 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99131 (= lt!319936 ((_ extract 31 0) (bvand (bvxor (select (store (arr!19521 a!3186) i!1173 k!2102) j!159) (bvlshr (select (store (arr!19521 a!3186) i!1173 k!2102) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99131 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!483196 (let ((h!14626 ((_ extract 31 0) (bvand (bvxor (select (store (arr!19521 a!3186) i!1173 k!2102) j!159) (bvlshr (select (store (arr!19521 a!3186) i!1173 k!2102) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!61917 (bvmul (bvxor h!14626 (bvlshr h!14626 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!61917 (bvlshr x!61917 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!483196 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!483196 #b00000000000000000000000000000000))))))

(assert (=> d!99131 (= (toIndex!0 (select (store (arr!19521 a!3186) i!1173 k!2102) j!159) mask!3328) (bvand (bvxor lt!319937 (bvlshr lt!319937 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!720873 d!99131))

(declare-fun d!99135 () Bool)

(declare-fun lt!319954 () SeekEntryResult!7128)

(assert (=> d!99135 (and (or (is-Undefined!7128 lt!319954) (not (is-Found!7128 lt!319954)) (and (bvsge (index!30880 lt!319954) #b00000000000000000000000000000000) (bvslt (index!30880 lt!319954) (size!19942 a!3186)))) (or (is-Undefined!7128 lt!319954) (is-Found!7128 lt!319954) (not (is-MissingVacant!7128 lt!319954)) (not (= (index!30882 lt!319954) resIntermediateIndex!5)) (and (bvsge (index!30882 lt!319954) #b00000000000000000000000000000000) (bvslt (index!30882 lt!319954) (size!19942 a!3186)))) (or (is-Undefined!7128 lt!319954) (ite (is-Found!7128 lt!319954) (= (select (arr!19521 a!3186) (index!30880 lt!319954)) (select (arr!19521 a!3186) j!159)) (and (is-MissingVacant!7128 lt!319954) (= (index!30882 lt!319954) resIntermediateIndex!5) (= (select (arr!19521 a!3186) (index!30882 lt!319954)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!404360 () SeekEntryResult!7128)

(assert (=> d!99135 (= lt!319954 e!404360)))

(declare-fun c!79302 () Bool)

(assert (=> d!99135 (= c!79302 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!319955 () (_ BitVec 64))

(assert (=> d!99135 (= lt!319955 (select (arr!19521 a!3186) index!1321))))

(assert (=> d!99135 (validMask!0 mask!3328)))

(assert (=> d!99135 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19521 a!3186) j!159) a!3186 mask!3328) lt!319954)))

(declare-fun b!721056 () Bool)

(declare-fun c!79301 () Bool)

(assert (=> b!721056 (= c!79301 (= lt!319955 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!404359 () SeekEntryResult!7128)

(declare-fun e!404361 () SeekEntryResult!7128)

(assert (=> b!721056 (= e!404359 e!404361)))

(declare-fun b!721057 () Bool)

(assert (=> b!721057 (= e!404359 (Found!7128 index!1321))))

(declare-fun b!721058 () Bool)

(assert (=> b!721058 (= e!404360 Undefined!7128)))

(declare-fun b!721059 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!721059 (= e!404361 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!19521 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!721060 () Bool)

(assert (=> b!721060 (= e!404360 e!404359)))

(declare-fun c!79300 () Bool)

(assert (=> b!721060 (= c!79300 (= lt!319955 (select (arr!19521 a!3186) j!159)))))

(declare-fun b!721061 () Bool)

(assert (=> b!721061 (= e!404361 (MissingVacant!7128 resIntermediateIndex!5))))

(assert (= (and d!99135 c!79302) b!721058))

(assert (= (and d!99135 (not c!79302)) b!721060))

(assert (= (and b!721060 c!79300) b!721057))

(assert (= (and b!721060 (not c!79300)) b!721056))

(assert (= (and b!721056 c!79301) b!721061))

(assert (= (and b!721056 (not c!79301)) b!721059))

(declare-fun m!676079 () Bool)

(assert (=> d!99135 m!676079))

(declare-fun m!676081 () Bool)

(assert (=> d!99135 m!676081))

(declare-fun m!676083 () Bool)

(assert (=> d!99135 m!676083))

(assert (=> d!99135 m!675967))

(declare-fun m!676085 () Bool)

(assert (=> b!721059 m!676085))

(assert (=> b!721059 m!676085))

(assert (=> b!721059 m!675937))

(declare-fun m!676087 () Bool)

(assert (=> b!721059 m!676087))

(assert (=> b!720870 d!99135))

(declare-fun b!721119 () Bool)

(declare-fun e!404392 () Bool)

(declare-fun lt!319977 () SeekEntryResult!7128)

(assert (=> b!721119 (= e!404392 (bvsge (x!61913 lt!319977) #b01111111111111111111111111111110))))

(declare-fun b!721120 () Bool)

(declare-fun e!404394 () SeekEntryResult!7128)

(assert (=> b!721120 (= e!404394 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!19521 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!99143 () Bool)

(assert (=> d!99143 e!404392))

(declare-fun c!79329 () Bool)

(assert (=> d!99143 (= c!79329 (and (is-Intermediate!7128 lt!319977) (undefined!7940 lt!319977)))))

(declare-fun e!404393 () SeekEntryResult!7128)

(assert (=> d!99143 (= lt!319977 e!404393)))

(declare-fun c!79327 () Bool)

(assert (=> d!99143 (= c!79327 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!319978 () (_ BitVec 64))

(assert (=> d!99143 (= lt!319978 (select (arr!19521 a!3186) index!1321))))

(assert (=> d!99143 (validMask!0 mask!3328)))

(assert (=> d!99143 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19521 a!3186) j!159) a!3186 mask!3328) lt!319977)))

(declare-fun b!721121 () Bool)

(assert (=> b!721121 (= e!404393 e!404394)))

(declare-fun c!79328 () Bool)

(assert (=> b!721121 (= c!79328 (or (= lt!319978 (select (arr!19521 a!3186) j!159)) (= (bvadd lt!319978 lt!319978) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!721122 () Bool)

(declare-fun e!404396 () Bool)

(assert (=> b!721122 (= e!404392 e!404396)))

(declare-fun res!483209 () Bool)

(assert (=> b!721122 (= res!483209 (and (is-Intermediate!7128 lt!319977) (not (undefined!7940 lt!319977)) (bvslt (x!61913 lt!319977) #b01111111111111111111111111111110) (bvsge (x!61913 lt!319977) #b00000000000000000000000000000000) (bvsge (x!61913 lt!319977) x!1131)))))

(assert (=> b!721122 (=> (not res!483209) (not e!404396))))

(declare-fun b!721123 () Bool)

(assert (=> b!721123 (and (bvsge (index!30881 lt!319977) #b00000000000000000000000000000000) (bvslt (index!30881 lt!319977) (size!19942 a!3186)))))

(declare-fun res!483207 () Bool)

(assert (=> b!721123 (= res!483207 (= (select (arr!19521 a!3186) (index!30881 lt!319977)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!404395 () Bool)

(assert (=> b!721123 (=> res!483207 e!404395)))

(declare-fun b!721124 () Bool)

(assert (=> b!721124 (= e!404394 (Intermediate!7128 false index!1321 x!1131))))

(declare-fun b!721125 () Bool)

(assert (=> b!721125 (= e!404393 (Intermediate!7128 true index!1321 x!1131))))

(declare-fun b!721126 () Bool)

(assert (=> b!721126 (and (bvsge (index!30881 lt!319977) #b00000000000000000000000000000000) (bvslt (index!30881 lt!319977) (size!19942 a!3186)))))

(assert (=> b!721126 (= e!404395 (= (select (arr!19521 a!3186) (index!30881 lt!319977)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!721127 () Bool)

(assert (=> b!721127 (and (bvsge (index!30881 lt!319977) #b00000000000000000000000000000000) (bvslt (index!30881 lt!319977) (size!19942 a!3186)))))

(declare-fun res!483208 () Bool)

(assert (=> b!721127 (= res!483208 (= (select (arr!19521 a!3186) (index!30881 lt!319977)) (select (arr!19521 a!3186) j!159)))))

(assert (=> b!721127 (=> res!483208 e!404395)))

(assert (=> b!721127 (= e!404396 e!404395)))

(assert (= (and d!99143 c!79327) b!721125))

(assert (= (and d!99143 (not c!79327)) b!721121))

(assert (= (and b!721121 c!79328) b!721124))

(assert (= (and b!721121 (not c!79328)) b!721120))

(assert (= (and d!99143 c!79329) b!721119))

(assert (= (and d!99143 (not c!79329)) b!721122))

(assert (= (and b!721122 res!483209) b!721127))

(assert (= (and b!721127 (not res!483208)) b!721123))

(assert (= (and b!721123 (not res!483207)) b!721126))

(declare-fun m!676111 () Bool)

(assert (=> b!721123 m!676111))

(assert (=> b!721126 m!676111))

(assert (=> b!721120 m!676085))

(assert (=> b!721120 m!676085))

(assert (=> b!721120 m!675937))

(declare-fun m!676113 () Bool)

(assert (=> b!721120 m!676113))

(assert (=> d!99143 m!676083))

(assert (=> d!99143 m!675967))

(assert (=> b!721127 m!676111))

(assert (=> b!720875 d!99143))

(declare-fun d!99153 () Bool)

(assert (=> d!99153 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!64210 d!99153))

(declare-fun d!99161 () Bool)

(assert (=> d!99161 (= (array_inv!15295 a!3186) (bvsge (size!19942 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!64210 d!99161))

(declare-fun d!99163 () Bool)

(assert (=> d!99163 (= (validKeyInArray!0 (select (arr!19521 a!3186) j!159)) (and (not (= (select (arr!19521 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19521 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!720866 d!99163))

(declare-fun b!721200 () Bool)

(declare-fun c!79354 () Bool)

(declare-fun lt!320019 () (_ BitVec 64))

(assert (=> b!721200 (= c!79354 (= lt!320019 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!404443 () SeekEntryResult!7128)

(declare-fun e!404444 () SeekEntryResult!7128)

(assert (=> b!721200 (= e!404443 e!404444)))

(declare-fun b!721201 () Bool)

(declare-fun lt!320017 () SeekEntryResult!7128)

(assert (=> b!721201 (= e!404444 (MissingZero!7128 (index!30881 lt!320017)))))

(declare-fun d!99165 () Bool)

(declare-fun lt!320018 () SeekEntryResult!7128)

(assert (=> d!99165 (and (or (is-Undefined!7128 lt!320018) (not (is-Found!7128 lt!320018)) (and (bvsge (index!30880 lt!320018) #b00000000000000000000000000000000) (bvslt (index!30880 lt!320018) (size!19942 a!3186)))) (or (is-Undefined!7128 lt!320018) (is-Found!7128 lt!320018) (not (is-MissingZero!7128 lt!320018)) (and (bvsge (index!30879 lt!320018) #b00000000000000000000000000000000) (bvslt (index!30879 lt!320018) (size!19942 a!3186)))) (or (is-Undefined!7128 lt!320018) (is-Found!7128 lt!320018) (is-MissingZero!7128 lt!320018) (not (is-MissingVacant!7128 lt!320018)) (and (bvsge (index!30882 lt!320018) #b00000000000000000000000000000000) (bvslt (index!30882 lt!320018) (size!19942 a!3186)))) (or (is-Undefined!7128 lt!320018) (ite (is-Found!7128 lt!320018) (= (select (arr!19521 a!3186) (index!30880 lt!320018)) k!2102) (ite (is-MissingZero!7128 lt!320018) (= (select (arr!19521 a!3186) (index!30879 lt!320018)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7128 lt!320018) (= (select (arr!19521 a!3186) (index!30882 lt!320018)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!404442 () SeekEntryResult!7128)

(assert (=> d!99165 (= lt!320018 e!404442)))

(declare-fun c!79356 () Bool)

(assert (=> d!99165 (= c!79356 (and (is-Intermediate!7128 lt!320017) (undefined!7940 lt!320017)))))

(assert (=> d!99165 (= lt!320017 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!99165 (validMask!0 mask!3328)))

(assert (=> d!99165 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!320018)))

(declare-fun b!721202 () Bool)

(assert (=> b!721202 (= e!404442 e!404443)))

(assert (=> b!721202 (= lt!320019 (select (arr!19521 a!3186) (index!30881 lt!320017)))))

(declare-fun c!79355 () Bool)

(assert (=> b!721202 (= c!79355 (= lt!320019 k!2102))))

(declare-fun b!721203 () Bool)

(assert (=> b!721203 (= e!404442 Undefined!7128)))

(declare-fun b!721204 () Bool)

(assert (=> b!721204 (= e!404443 (Found!7128 (index!30881 lt!320017)))))

(declare-fun b!721205 () Bool)

(assert (=> b!721205 (= e!404444 (seekKeyOrZeroReturnVacant!0 (x!61913 lt!320017) (index!30881 lt!320017) (index!30881 lt!320017) k!2102 a!3186 mask!3328))))

(assert (= (and d!99165 c!79356) b!721203))

(assert (= (and d!99165 (not c!79356)) b!721202))

(assert (= (and b!721202 c!79355) b!721204))

(assert (= (and b!721202 (not c!79355)) b!721200))

(assert (= (and b!721200 c!79354) b!721201))

(assert (= (and b!721200 (not c!79354)) b!721205))

(assert (=> d!99165 m!675967))

(declare-fun m!676147 () Bool)

(assert (=> d!99165 m!676147))

(declare-fun m!676149 () Bool)

(assert (=> d!99165 m!676149))

(declare-fun m!676151 () Bool)

(assert (=> d!99165 m!676151))

(assert (=> d!99165 m!676149))

(declare-fun m!676153 () Bool)

(assert (=> d!99165 m!676153))

(declare-fun m!676155 () Bool)

(assert (=> d!99165 m!676155))

(declare-fun m!676157 () Bool)

(assert (=> b!721202 m!676157))

(declare-fun m!676159 () Bool)

(assert (=> b!721205 m!676159))

(assert (=> b!720876 d!99165))

(declare-fun d!99179 () Bool)

(declare-fun res!483243 () Bool)

(declare-fun e!404455 () Bool)

(assert (=> d!99179 (=> res!483243 e!404455)))

(assert (=> d!99179 (= res!483243 (= (select (arr!19521 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!99179 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!404455)))

(declare-fun b!721218 () Bool)

(declare-fun e!404456 () Bool)

(assert (=> b!721218 (= e!404455 e!404456)))

(declare-fun res!483244 () Bool)

(assert (=> b!721218 (=> (not res!483244) (not e!404456))))

(assert (=> b!721218 (= res!483244 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19942 a!3186)))))

(declare-fun b!721219 () Bool)

(assert (=> b!721219 (= e!404456 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!99179 (not res!483243)) b!721218))

(assert (= (and b!721218 res!483244) b!721219))

(assert (=> d!99179 m!676049))

(declare-fun m!676161 () Bool)

(assert (=> b!721219 m!676161))

(assert (=> b!720878 d!99179))

(declare-fun b!721220 () Bool)

(declare-fun e!404457 () Bool)

(declare-fun lt!320026 () SeekEntryResult!7128)

(assert (=> b!721220 (= e!404457 (bvsge (x!61913 lt!320026) #b01111111111111111111111111111110))))

(declare-fun b!721221 () Bool)

(declare-fun e!404459 () SeekEntryResult!7128)

(assert (=> b!721221 (= e!404459 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!19521 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!19521 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!99181 () Bool)

(assert (=> d!99181 e!404457))

(declare-fun c!79361 () Bool)

(assert (=> d!99181 (= c!79361 (and (is-Intermediate!7128 lt!320026) (undefined!7940 lt!320026)))))

(declare-fun e!404458 () SeekEntryResult!7128)

(assert (=> d!99181 (= lt!320026 e!404458)))

(declare-fun c!79359 () Bool)

(assert (=> d!99181 (= c!79359 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!320027 () (_ BitVec 64))

(assert (=> d!99181 (= lt!320027 (select (arr!19521 a!3186) (toIndex!0 (select (arr!19521 a!3186) j!159) mask!3328)))))

(assert (=> d!99181 (validMask!0 mask!3328)))

(assert (=> d!99181 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19521 a!3186) j!159) mask!3328) (select (arr!19521 a!3186) j!159) a!3186 mask!3328) lt!320026)))

(declare-fun b!721222 () Bool)

(assert (=> b!721222 (= e!404458 e!404459)))

(declare-fun c!79360 () Bool)

(assert (=> b!721222 (= c!79360 (or (= lt!320027 (select (arr!19521 a!3186) j!159)) (= (bvadd lt!320027 lt!320027) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!721223 () Bool)

(declare-fun e!404461 () Bool)

(assert (=> b!721223 (= e!404457 e!404461)))

(declare-fun res!483247 () Bool)

(assert (=> b!721223 (= res!483247 (and (is-Intermediate!7128 lt!320026) (not (undefined!7940 lt!320026)) (bvslt (x!61913 lt!320026) #b01111111111111111111111111111110) (bvsge (x!61913 lt!320026) #b00000000000000000000000000000000) (bvsge (x!61913 lt!320026) #b00000000000000000000000000000000)))))

(assert (=> b!721223 (=> (not res!483247) (not e!404461))))

(declare-fun b!721224 () Bool)

(assert (=> b!721224 (and (bvsge (index!30881 lt!320026) #b00000000000000000000000000000000) (bvslt (index!30881 lt!320026) (size!19942 a!3186)))))

(declare-fun res!483245 () Bool)

(assert (=> b!721224 (= res!483245 (= (select (arr!19521 a!3186) (index!30881 lt!320026)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!404460 () Bool)

(assert (=> b!721224 (=> res!483245 e!404460)))

(declare-fun b!721225 () Bool)

(assert (=> b!721225 (= e!404459 (Intermediate!7128 false (toIndex!0 (select (arr!19521 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!721226 () Bool)

(assert (=> b!721226 (= e!404458 (Intermediate!7128 true (toIndex!0 (select (arr!19521 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!721227 () Bool)

(assert (=> b!721227 (and (bvsge (index!30881 lt!320026) #b00000000000000000000000000000000) (bvslt (index!30881 lt!320026) (size!19942 a!3186)))))

(assert (=> b!721227 (= e!404460 (= (select (arr!19521 a!3186) (index!30881 lt!320026)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!721228 () Bool)

(assert (=> b!721228 (and (bvsge (index!30881 lt!320026) #b00000000000000000000000000000000) (bvslt (index!30881 lt!320026) (size!19942 a!3186)))))

(declare-fun res!483246 () Bool)

(assert (=> b!721228 (= res!483246 (= (select (arr!19521 a!3186) (index!30881 lt!320026)) (select (arr!19521 a!3186) j!159)))))

(assert (=> b!721228 (=> res!483246 e!404460)))

(assert (=> b!721228 (= e!404461 e!404460)))

(assert (= (and d!99181 c!79359) b!721226))

(assert (= (and d!99181 (not c!79359)) b!721222))

(assert (= (and b!721222 c!79360) b!721225))

(assert (= (and b!721222 (not c!79360)) b!721221))

(assert (= (and d!99181 c!79361) b!721220))

(assert (= (and d!99181 (not c!79361)) b!721223))

(assert (= (and b!721223 res!483247) b!721228))

(assert (= (and b!721228 (not res!483246)) b!721224))

(assert (= (and b!721224 (not res!483245)) b!721227))

(declare-fun m!676163 () Bool)

(assert (=> b!721224 m!676163))

(assert (=> b!721227 m!676163))

(assert (=> b!721221 m!675945))

(declare-fun m!676165 () Bool)

(assert (=> b!721221 m!676165))

(assert (=> b!721221 m!676165))

(assert (=> b!721221 m!675937))

(declare-fun m!676167 () Bool)

(assert (=> b!721221 m!676167))

(assert (=> d!99181 m!675945))

(declare-fun m!676169 () Bool)

(assert (=> d!99181 m!676169))

(assert (=> d!99181 m!675967))

(assert (=> b!721228 m!676163))

(assert (=> b!720867 d!99181))

(declare-fun d!99183 () Bool)

(declare-fun lt!320029 () (_ BitVec 32))

(declare-fun lt!320028 () (_ BitVec 32))

(assert (=> d!99183 (= lt!320029 (bvmul (bvxor lt!320028 (bvlshr lt!320028 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99183 (= lt!320028 ((_ extract 31 0) (bvand (bvxor (select (arr!19521 a!3186) j!159) (bvlshr (select (arr!19521 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99183 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!483196 (let ((h!14626 ((_ extract 31 0) (bvand (bvxor (select (arr!19521 a!3186) j!159) (bvlshr (select (arr!19521 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!61917 (bvmul (bvxor h!14626 (bvlshr h!14626 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!61917 (bvlshr x!61917 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!483196 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!483196 #b00000000000000000000000000000000))))))

(assert (=> d!99183 (= (toIndex!0 (select (arr!19521 a!3186) j!159) mask!3328) (bvand (bvxor lt!320029 (bvlshr lt!320029 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!720867 d!99183))

(declare-fun b!721253 () Bool)

(declare-fun e!404481 () Bool)

(declare-fun call!34784 () Bool)

(assert (=> b!721253 (= e!404481 call!34784)))

(declare-fun d!99185 () Bool)

(declare-fun res!483263 () Bool)

(declare-fun e!404484 () Bool)

(assert (=> d!99185 (=> res!483263 e!404484)))

(assert (=> d!99185 (= res!483263 (bvsge #b00000000000000000000000000000000 (size!19942 a!3186)))))

(assert (=> d!99185 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13573) e!404484)))

(declare-fun b!721254 () Bool)

(assert (=> b!721254 (= e!404481 call!34784)))

(declare-fun b!721255 () Bool)

(declare-fun e!404482 () Bool)

(assert (=> b!721255 (= e!404484 e!404482)))

(declare-fun res!483264 () Bool)

(assert (=> b!721255 (=> (not res!483264) (not e!404482))))

(declare-fun e!404483 () Bool)

(assert (=> b!721255 (= res!483264 (not e!404483))))

(declare-fun res!483262 () Bool)

(assert (=> b!721255 (=> (not res!483262) (not e!404483))))

(assert (=> b!721255 (= res!483262 (validKeyInArray!0 (select (arr!19521 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!721256 () Bool)

(declare-fun contains!4047 (List!13576 (_ BitVec 64)) Bool)

(assert (=> b!721256 (= e!404483 (contains!4047 Nil!13573 (select (arr!19521 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!34781 () Bool)

(declare-fun c!79367 () Bool)

(assert (=> bm!34781 (= call!34784 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!79367 (Cons!13572 (select (arr!19521 a!3186) #b00000000000000000000000000000000) Nil!13573) Nil!13573)))))

(declare-fun b!721257 () Bool)

(assert (=> b!721257 (= e!404482 e!404481)))

(assert (=> b!721257 (= c!79367 (validKeyInArray!0 (select (arr!19521 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!99185 (not res!483263)) b!721255))

(assert (= (and b!721255 res!483262) b!721256))

(assert (= (and b!721255 res!483264) b!721257))

(assert (= (and b!721257 c!79367) b!721253))

(assert (= (and b!721257 (not c!79367)) b!721254))

(assert (= (or b!721253 b!721254) bm!34781))

(assert (=> b!721255 m!676049))

(assert (=> b!721255 m!676049))

(assert (=> b!721255 m!676057))

(assert (=> b!721256 m!676049))

(assert (=> b!721256 m!676049))

(declare-fun m!676185 () Bool)

(assert (=> b!721256 m!676185))

(assert (=> bm!34781 m!676049))

(declare-fun m!676189 () Bool)

(assert (=> bm!34781 m!676189))

(assert (=> b!721257 m!676049))

(assert (=> b!721257 m!676049))

(assert (=> b!721257 m!676057))

(assert (=> b!720877 d!99185))

(push 1)

