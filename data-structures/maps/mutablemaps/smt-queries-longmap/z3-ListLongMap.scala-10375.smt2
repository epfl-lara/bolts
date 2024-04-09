; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122160 () Bool)

(assert start!122160)

(declare-fun b!1417027 () Bool)

(declare-fun res!953014 () Bool)

(declare-fun e!802006 () Bool)

(assert (=> b!1417027 (=> (not res!953014) (not e!802006))))

(declare-datatypes ((array!96713 0))(
  ( (array!96714 (arr!46682 (Array (_ BitVec 32) (_ BitVec 64))) (size!47233 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96713)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96713 (_ BitVec 32)) Bool)

(assert (=> b!1417027 (= res!953014 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!953015 () Bool)

(assert (=> start!122160 (=> (not res!953015) (not e!802006))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122160 (= res!953015 (validMask!0 mask!2840))))

(assert (=> start!122160 e!802006))

(assert (=> start!122160 true))

(declare-fun array_inv!35627 (array!96713) Bool)

(assert (=> start!122160 (array_inv!35627 a!2901)))

(declare-fun b!1417028 () Bool)

(declare-fun res!953018 () Bool)

(assert (=> b!1417028 (=> (not res!953018) (not e!802006))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1417028 (= res!953018 (and (= (size!47233 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47233 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47233 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1417029 () Bool)

(declare-fun res!953017 () Bool)

(assert (=> b!1417029 (=> (not res!953017) (not e!802006))))

(declare-datatypes ((List!33381 0))(
  ( (Nil!33378) (Cons!33377 (h!34667 (_ BitVec 64)) (t!48082 List!33381)) )
))
(declare-fun arrayNoDuplicates!0 (array!96713 (_ BitVec 32) List!33381) Bool)

(assert (=> b!1417029 (= res!953017 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33378))))

(declare-fun b!1417030 () Bool)

(declare-fun res!953013 () Bool)

(assert (=> b!1417030 (=> (not res!953013) (not e!802006))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417030 (= res!953013 (validKeyInArray!0 (select (arr!46682 a!2901) i!1037)))))

(declare-fun b!1417031 () Bool)

(declare-fun res!953016 () Bool)

(assert (=> b!1417031 (=> (not res!953016) (not e!802006))))

(assert (=> b!1417031 (= res!953016 (validKeyInArray!0 (select (arr!46682 a!2901) j!112)))))

(declare-fun b!1417032 () Bool)

(declare-fun e!802005 () Bool)

(declare-datatypes ((SeekEntryResult!11015 0))(
  ( (MissingZero!11015 (index!46451 (_ BitVec 32))) (Found!11015 (index!46452 (_ BitVec 32))) (Intermediate!11015 (undefined!11827 Bool) (index!46453 (_ BitVec 32)) (x!128055 (_ BitVec 32))) (Undefined!11015) (MissingVacant!11015 (index!46454 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96713 (_ BitVec 32)) SeekEntryResult!11015)

(assert (=> b!1417032 (= e!802005 (= (seekEntryOrOpen!0 (select (arr!46682 a!2901) j!112) a!2901 mask!2840) (Found!11015 j!112)))))

(declare-fun b!1417033 () Bool)

(declare-fun lt!625173 () SeekEntryResult!11015)

(get-info :version)

(assert (=> b!1417033 (= e!802006 (not ((_ is Intermediate!11015) lt!625173)))))

(assert (=> b!1417033 e!802005))

(declare-fun res!953019 () Bool)

(assert (=> b!1417033 (=> (not res!953019) (not e!802005))))

(assert (=> b!1417033 (= res!953019 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47954 0))(
  ( (Unit!47955) )
))
(declare-fun lt!625174 () Unit!47954)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96713 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47954)

(assert (=> b!1417033 (= lt!625174 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96713 (_ BitVec 32)) SeekEntryResult!11015)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1417033 (= lt!625173 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46682 a!2901) j!112) mask!2840) (select (arr!46682 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!122160 res!953015) b!1417028))

(assert (= (and b!1417028 res!953018) b!1417030))

(assert (= (and b!1417030 res!953013) b!1417031))

(assert (= (and b!1417031 res!953016) b!1417027))

(assert (= (and b!1417027 res!953014) b!1417029))

(assert (= (and b!1417029 res!953017) b!1417033))

(assert (= (and b!1417033 res!953019) b!1417032))

(declare-fun m!1307881 () Bool)

(assert (=> b!1417032 m!1307881))

(assert (=> b!1417032 m!1307881))

(declare-fun m!1307883 () Bool)

(assert (=> b!1417032 m!1307883))

(declare-fun m!1307885 () Bool)

(assert (=> start!122160 m!1307885))

(declare-fun m!1307887 () Bool)

(assert (=> start!122160 m!1307887))

(declare-fun m!1307889 () Bool)

(assert (=> b!1417027 m!1307889))

(declare-fun m!1307891 () Bool)

(assert (=> b!1417030 m!1307891))

(assert (=> b!1417030 m!1307891))

(declare-fun m!1307893 () Bool)

(assert (=> b!1417030 m!1307893))

(declare-fun m!1307895 () Bool)

(assert (=> b!1417029 m!1307895))

(assert (=> b!1417033 m!1307881))

(declare-fun m!1307897 () Bool)

(assert (=> b!1417033 m!1307897))

(assert (=> b!1417033 m!1307881))

(declare-fun m!1307899 () Bool)

(assert (=> b!1417033 m!1307899))

(assert (=> b!1417033 m!1307897))

(assert (=> b!1417033 m!1307881))

(declare-fun m!1307901 () Bool)

(assert (=> b!1417033 m!1307901))

(declare-fun m!1307903 () Bool)

(assert (=> b!1417033 m!1307903))

(assert (=> b!1417031 m!1307881))

(assert (=> b!1417031 m!1307881))

(declare-fun m!1307905 () Bool)

(assert (=> b!1417031 m!1307905))

(check-sat (not b!1417030) (not b!1417033) (not start!122160) (not b!1417027) (not b!1417031) (not b!1417029) (not b!1417032))
(check-sat)
(get-model)

(declare-fun b!1417063 () Bool)

(declare-fun e!802025 () Bool)

(declare-fun call!67203 () Bool)

(assert (=> b!1417063 (= e!802025 call!67203)))

(declare-fun b!1417064 () Bool)

(declare-fun e!802023 () Bool)

(assert (=> b!1417064 (= e!802023 e!802025)))

(declare-fun lt!625188 () (_ BitVec 64))

(assert (=> b!1417064 (= lt!625188 (select (arr!46682 a!2901) j!112))))

(declare-fun lt!625187 () Unit!47954)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96713 (_ BitVec 64) (_ BitVec 32)) Unit!47954)

(assert (=> b!1417064 (= lt!625187 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!625188 j!112))))

(declare-fun arrayContainsKey!0 (array!96713 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1417064 (arrayContainsKey!0 a!2901 lt!625188 #b00000000000000000000000000000000)))

(declare-fun lt!625189 () Unit!47954)

(assert (=> b!1417064 (= lt!625189 lt!625187)))

(declare-fun res!953046 () Bool)

(assert (=> b!1417064 (= res!953046 (= (seekEntryOrOpen!0 (select (arr!46682 a!2901) j!112) a!2901 mask!2840) (Found!11015 j!112)))))

(assert (=> b!1417064 (=> (not res!953046) (not e!802025))))

(declare-fun bm!67200 () Bool)

(assert (=> bm!67200 (= call!67203 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1417065 () Bool)

(declare-fun e!802024 () Bool)

(assert (=> b!1417065 (= e!802024 e!802023)))

(declare-fun c!131492 () Bool)

(assert (=> b!1417065 (= c!131492 (validKeyInArray!0 (select (arr!46682 a!2901) j!112)))))

(declare-fun b!1417066 () Bool)

(assert (=> b!1417066 (= e!802023 call!67203)))

(declare-fun d!152561 () Bool)

(declare-fun res!953045 () Bool)

(assert (=> d!152561 (=> res!953045 e!802024)))

(assert (=> d!152561 (= res!953045 (bvsge j!112 (size!47233 a!2901)))))

(assert (=> d!152561 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!802024)))

(assert (= (and d!152561 (not res!953045)) b!1417065))

(assert (= (and b!1417065 c!131492) b!1417064))

(assert (= (and b!1417065 (not c!131492)) b!1417066))

(assert (= (and b!1417064 res!953046) b!1417063))

(assert (= (or b!1417063 b!1417066) bm!67200))

(assert (=> b!1417064 m!1307881))

(declare-fun m!1307933 () Bool)

(assert (=> b!1417064 m!1307933))

(declare-fun m!1307935 () Bool)

(assert (=> b!1417064 m!1307935))

(assert (=> b!1417064 m!1307881))

(assert (=> b!1417064 m!1307883))

(declare-fun m!1307937 () Bool)

(assert (=> bm!67200 m!1307937))

(assert (=> b!1417065 m!1307881))

(assert (=> b!1417065 m!1307881))

(assert (=> b!1417065 m!1307905))

(assert (=> b!1417033 d!152561))

(declare-fun d!152567 () Bool)

(assert (=> d!152567 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!625201 () Unit!47954)

(declare-fun choose!38 (array!96713 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47954)

(assert (=> d!152567 (= lt!625201 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!152567 (validMask!0 mask!2840)))

(assert (=> d!152567 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!625201)))

(declare-fun bs!41309 () Bool)

(assert (= bs!41309 d!152567))

(assert (=> bs!41309 m!1307903))

(declare-fun m!1307943 () Bool)

(assert (=> bs!41309 m!1307943))

(assert (=> bs!41309 m!1307885))

(assert (=> b!1417033 d!152567))

(declare-fun b!1417125 () Bool)

(declare-fun e!802064 () SeekEntryResult!11015)

(assert (=> b!1417125 (= e!802064 (Intermediate!11015 true (toIndex!0 (select (arr!46682 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1417126 () Bool)

(declare-fun e!802065 () SeekEntryResult!11015)

(assert (=> b!1417126 (= e!802064 e!802065)))

(declare-fun c!131511 () Bool)

(declare-fun lt!625229 () (_ BitVec 64))

(assert (=> b!1417126 (= c!131511 (or (= lt!625229 (select (arr!46682 a!2901) j!112)) (= (bvadd lt!625229 lt!625229) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1417127 () Bool)

(declare-fun lt!625228 () SeekEntryResult!11015)

(assert (=> b!1417127 (and (bvsge (index!46453 lt!625228) #b00000000000000000000000000000000) (bvslt (index!46453 lt!625228) (size!47233 a!2901)))))

(declare-fun e!802061 () Bool)

(assert (=> b!1417127 (= e!802061 (= (select (arr!46682 a!2901) (index!46453 lt!625228)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1417128 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1417128 (= e!802065 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46682 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46682 a!2901) j!112) a!2901 mask!2840))))

(declare-fun d!152571 () Bool)

(declare-fun e!802063 () Bool)

(assert (=> d!152571 e!802063))

(declare-fun c!131513 () Bool)

(assert (=> d!152571 (= c!131513 (and ((_ is Intermediate!11015) lt!625228) (undefined!11827 lt!625228)))))

(assert (=> d!152571 (= lt!625228 e!802064)))

(declare-fun c!131510 () Bool)

(assert (=> d!152571 (= c!131510 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!152571 (= lt!625229 (select (arr!46682 a!2901) (toIndex!0 (select (arr!46682 a!2901) j!112) mask!2840)))))

(assert (=> d!152571 (validMask!0 mask!2840)))

(assert (=> d!152571 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46682 a!2901) j!112) mask!2840) (select (arr!46682 a!2901) j!112) a!2901 mask!2840) lt!625228)))

(declare-fun b!1417129 () Bool)

(assert (=> b!1417129 (= e!802063 (bvsge (x!128055 lt!625228) #b01111111111111111111111111111110))))

(declare-fun b!1417130 () Bool)

(assert (=> b!1417130 (and (bvsge (index!46453 lt!625228) #b00000000000000000000000000000000) (bvslt (index!46453 lt!625228) (size!47233 a!2901)))))

(declare-fun res!953068 () Bool)

(assert (=> b!1417130 (= res!953068 (= (select (arr!46682 a!2901) (index!46453 lt!625228)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1417130 (=> res!953068 e!802061)))

(declare-fun b!1417131 () Bool)

(declare-fun e!802066 () Bool)

(assert (=> b!1417131 (= e!802063 e!802066)))

(declare-fun res!953069 () Bool)

(assert (=> b!1417131 (= res!953069 (and ((_ is Intermediate!11015) lt!625228) (not (undefined!11827 lt!625228)) (bvslt (x!128055 lt!625228) #b01111111111111111111111111111110) (bvsge (x!128055 lt!625228) #b00000000000000000000000000000000) (bvsge (x!128055 lt!625228) #b00000000000000000000000000000000)))))

(assert (=> b!1417131 (=> (not res!953069) (not e!802066))))

(declare-fun b!1417132 () Bool)

(assert (=> b!1417132 (and (bvsge (index!46453 lt!625228) #b00000000000000000000000000000000) (bvslt (index!46453 lt!625228) (size!47233 a!2901)))))

(declare-fun res!953067 () Bool)

(assert (=> b!1417132 (= res!953067 (= (select (arr!46682 a!2901) (index!46453 lt!625228)) (select (arr!46682 a!2901) j!112)))))

(assert (=> b!1417132 (=> res!953067 e!802061)))

(assert (=> b!1417132 (= e!802066 e!802061)))

(declare-fun b!1417133 () Bool)

(assert (=> b!1417133 (= e!802065 (Intermediate!11015 false (toIndex!0 (select (arr!46682 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(assert (= (and d!152571 c!131510) b!1417125))

(assert (= (and d!152571 (not c!131510)) b!1417126))

(assert (= (and b!1417126 c!131511) b!1417133))

(assert (= (and b!1417126 (not c!131511)) b!1417128))

(assert (= (and d!152571 c!131513) b!1417129))

(assert (= (and d!152571 (not c!131513)) b!1417131))

(assert (= (and b!1417131 res!953069) b!1417132))

(assert (= (and b!1417132 (not res!953067)) b!1417130))

(assert (= (and b!1417130 (not res!953068)) b!1417127))

(declare-fun m!1307969 () Bool)

(assert (=> b!1417130 m!1307969))

(assert (=> b!1417132 m!1307969))

(assert (=> b!1417127 m!1307969))

(assert (=> d!152571 m!1307897))

(declare-fun m!1307971 () Bool)

(assert (=> d!152571 m!1307971))

(assert (=> d!152571 m!1307885))

(assert (=> b!1417128 m!1307897))

(declare-fun m!1307973 () Bool)

(assert (=> b!1417128 m!1307973))

(assert (=> b!1417128 m!1307973))

(assert (=> b!1417128 m!1307881))

(declare-fun m!1307975 () Bool)

(assert (=> b!1417128 m!1307975))

(assert (=> b!1417033 d!152571))

(declare-fun d!152581 () Bool)

(declare-fun lt!625241 () (_ BitVec 32))

(declare-fun lt!625240 () (_ BitVec 32))

(assert (=> d!152581 (= lt!625241 (bvmul (bvxor lt!625240 (bvlshr lt!625240 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152581 (= lt!625240 ((_ extract 31 0) (bvand (bvxor (select (arr!46682 a!2901) j!112) (bvlshr (select (arr!46682 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152581 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!953076 (let ((h!34669 ((_ extract 31 0) (bvand (bvxor (select (arr!46682 a!2901) j!112) (bvlshr (select (arr!46682 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!128059 (bvmul (bvxor h!34669 (bvlshr h!34669 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!128059 (bvlshr x!128059 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!953076 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!953076 #b00000000000000000000000000000000))))))

(assert (=> d!152581 (= (toIndex!0 (select (arr!46682 a!2901) j!112) mask!2840) (bvand (bvxor lt!625241 (bvlshr lt!625241 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1417033 d!152581))

(declare-fun b!1417163 () Bool)

(declare-fun e!802087 () Bool)

(declare-fun call!67211 () Bool)

(assert (=> b!1417163 (= e!802087 call!67211)))

(declare-fun b!1417164 () Bool)

(declare-fun e!802085 () Bool)

(assert (=> b!1417164 (= e!802085 e!802087)))

(declare-fun lt!625243 () (_ BitVec 64))

(assert (=> b!1417164 (= lt!625243 (select (arr!46682 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!625242 () Unit!47954)

(assert (=> b!1417164 (= lt!625242 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!625243 #b00000000000000000000000000000000))))

(assert (=> b!1417164 (arrayContainsKey!0 a!2901 lt!625243 #b00000000000000000000000000000000)))

(declare-fun lt!625244 () Unit!47954)

(assert (=> b!1417164 (= lt!625244 lt!625242)))

(declare-fun res!953084 () Bool)

(assert (=> b!1417164 (= res!953084 (= (seekEntryOrOpen!0 (select (arr!46682 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!11015 #b00000000000000000000000000000000)))))

(assert (=> b!1417164 (=> (not res!953084) (not e!802087))))

(declare-fun bm!67208 () Bool)

(assert (=> bm!67208 (= call!67211 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1417165 () Bool)

(declare-fun e!802086 () Bool)

(assert (=> b!1417165 (= e!802086 e!802085)))

(declare-fun c!131524 () Bool)

(assert (=> b!1417165 (= c!131524 (validKeyInArray!0 (select (arr!46682 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1417166 () Bool)

(assert (=> b!1417166 (= e!802085 call!67211)))

(declare-fun d!152585 () Bool)

(declare-fun res!953083 () Bool)

(assert (=> d!152585 (=> res!953083 e!802086)))

(assert (=> d!152585 (= res!953083 (bvsge #b00000000000000000000000000000000 (size!47233 a!2901)))))

(assert (=> d!152585 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!802086)))

(assert (= (and d!152585 (not res!953083)) b!1417165))

(assert (= (and b!1417165 c!131524) b!1417164))

(assert (= (and b!1417165 (not c!131524)) b!1417166))

(assert (= (and b!1417164 res!953084) b!1417163))

(assert (= (or b!1417163 b!1417166) bm!67208))

(declare-fun m!1307985 () Bool)

(assert (=> b!1417164 m!1307985))

(declare-fun m!1307987 () Bool)

(assert (=> b!1417164 m!1307987))

(declare-fun m!1307989 () Bool)

(assert (=> b!1417164 m!1307989))

(assert (=> b!1417164 m!1307985))

(declare-fun m!1307991 () Bool)

(assert (=> b!1417164 m!1307991))

(declare-fun m!1307993 () Bool)

(assert (=> bm!67208 m!1307993))

(assert (=> b!1417165 m!1307985))

(assert (=> b!1417165 m!1307985))

(declare-fun m!1307995 () Bool)

(assert (=> b!1417165 m!1307995))

(assert (=> b!1417027 d!152585))

(declare-fun d!152587 () Bool)

(declare-fun lt!625268 () SeekEntryResult!11015)

(assert (=> d!152587 (and (or ((_ is Undefined!11015) lt!625268) (not ((_ is Found!11015) lt!625268)) (and (bvsge (index!46452 lt!625268) #b00000000000000000000000000000000) (bvslt (index!46452 lt!625268) (size!47233 a!2901)))) (or ((_ is Undefined!11015) lt!625268) ((_ is Found!11015) lt!625268) (not ((_ is MissingZero!11015) lt!625268)) (and (bvsge (index!46451 lt!625268) #b00000000000000000000000000000000) (bvslt (index!46451 lt!625268) (size!47233 a!2901)))) (or ((_ is Undefined!11015) lt!625268) ((_ is Found!11015) lt!625268) ((_ is MissingZero!11015) lt!625268) (not ((_ is MissingVacant!11015) lt!625268)) (and (bvsge (index!46454 lt!625268) #b00000000000000000000000000000000) (bvslt (index!46454 lt!625268) (size!47233 a!2901)))) (or ((_ is Undefined!11015) lt!625268) (ite ((_ is Found!11015) lt!625268) (= (select (arr!46682 a!2901) (index!46452 lt!625268)) (select (arr!46682 a!2901) j!112)) (ite ((_ is MissingZero!11015) lt!625268) (= (select (arr!46682 a!2901) (index!46451 lt!625268)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!11015) lt!625268) (= (select (arr!46682 a!2901) (index!46454 lt!625268)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!802114 () SeekEntryResult!11015)

(assert (=> d!152587 (= lt!625268 e!802114)))

(declare-fun c!131538 () Bool)

(declare-fun lt!625270 () SeekEntryResult!11015)

(assert (=> d!152587 (= c!131538 (and ((_ is Intermediate!11015) lt!625270) (undefined!11827 lt!625270)))))

(assert (=> d!152587 (= lt!625270 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46682 a!2901) j!112) mask!2840) (select (arr!46682 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!152587 (validMask!0 mask!2840)))

(assert (=> d!152587 (= (seekEntryOrOpen!0 (select (arr!46682 a!2901) j!112) a!2901 mask!2840) lt!625268)))

(declare-fun b!1417206 () Bool)

(declare-fun e!802113 () SeekEntryResult!11015)

(assert (=> b!1417206 (= e!802113 (MissingZero!11015 (index!46453 lt!625270)))))

(declare-fun b!1417207 () Bool)

(assert (=> b!1417207 (= e!802114 Undefined!11015)))

(declare-fun b!1417208 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96713 (_ BitVec 32)) SeekEntryResult!11015)

(assert (=> b!1417208 (= e!802113 (seekKeyOrZeroReturnVacant!0 (x!128055 lt!625270) (index!46453 lt!625270) (index!46453 lt!625270) (select (arr!46682 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1417209 () Bool)

(declare-fun c!131537 () Bool)

(declare-fun lt!625269 () (_ BitVec 64))

(assert (=> b!1417209 (= c!131537 (= lt!625269 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!802112 () SeekEntryResult!11015)

(assert (=> b!1417209 (= e!802112 e!802113)))

(declare-fun b!1417210 () Bool)

(assert (=> b!1417210 (= e!802114 e!802112)))

(assert (=> b!1417210 (= lt!625269 (select (arr!46682 a!2901) (index!46453 lt!625270)))))

(declare-fun c!131539 () Bool)

(assert (=> b!1417210 (= c!131539 (= lt!625269 (select (arr!46682 a!2901) j!112)))))

(declare-fun b!1417211 () Bool)

(assert (=> b!1417211 (= e!802112 (Found!11015 (index!46453 lt!625270)))))

(assert (= (and d!152587 c!131538) b!1417207))

(assert (= (and d!152587 (not c!131538)) b!1417210))

(assert (= (and b!1417210 c!131539) b!1417211))

(assert (= (and b!1417210 (not c!131539)) b!1417209))

(assert (= (and b!1417209 c!131537) b!1417206))

(assert (= (and b!1417209 (not c!131537)) b!1417208))

(declare-fun m!1308017 () Bool)

(assert (=> d!152587 m!1308017))

(declare-fun m!1308019 () Bool)

(assert (=> d!152587 m!1308019))

(declare-fun m!1308021 () Bool)

(assert (=> d!152587 m!1308021))

(assert (=> d!152587 m!1307897))

(assert (=> d!152587 m!1307881))

(assert (=> d!152587 m!1307901))

(assert (=> d!152587 m!1307881))

(assert (=> d!152587 m!1307897))

(assert (=> d!152587 m!1307885))

(assert (=> b!1417208 m!1307881))

(declare-fun m!1308023 () Bool)

(assert (=> b!1417208 m!1308023))

(declare-fun m!1308025 () Bool)

(assert (=> b!1417210 m!1308025))

(assert (=> b!1417032 d!152587))

(declare-fun d!152611 () Bool)

(assert (=> d!152611 (= (validKeyInArray!0 (select (arr!46682 a!2901) j!112)) (and (not (= (select (arr!46682 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46682 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1417031 d!152611))

(declare-fun d!152613 () Bool)

(assert (=> d!152613 (= (validKeyInArray!0 (select (arr!46682 a!2901) i!1037)) (and (not (= (select (arr!46682 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46682 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1417030 d!152613))

(declare-fun d!152615 () Bool)

(assert (=> d!152615 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!122160 d!152615))

(declare-fun d!152621 () Bool)

(assert (=> d!152621 (= (array_inv!35627 a!2901) (bvsge (size!47233 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!122160 d!152621))

(declare-fun b!1417251 () Bool)

(declare-fun e!802142 () Bool)

(declare-fun call!67218 () Bool)

(assert (=> b!1417251 (= e!802142 call!67218)))

(declare-fun b!1417252 () Bool)

(declare-fun e!802140 () Bool)

(declare-fun e!802139 () Bool)

(assert (=> b!1417252 (= e!802140 e!802139)))

(declare-fun res!953112 () Bool)

(assert (=> b!1417252 (=> (not res!953112) (not e!802139))))

(declare-fun e!802141 () Bool)

(assert (=> b!1417252 (= res!953112 (not e!802141))))

(declare-fun res!953110 () Bool)

(assert (=> b!1417252 (=> (not res!953110) (not e!802141))))

(assert (=> b!1417252 (= res!953110 (validKeyInArray!0 (select (arr!46682 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!152623 () Bool)

(declare-fun res!953111 () Bool)

(assert (=> d!152623 (=> res!953111 e!802140)))

(assert (=> d!152623 (= res!953111 (bvsge #b00000000000000000000000000000000 (size!47233 a!2901)))))

(assert (=> d!152623 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33378) e!802140)))

(declare-fun bm!67215 () Bool)

(declare-fun c!131555 () Bool)

(assert (=> bm!67215 (= call!67218 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131555 (Cons!33377 (select (arr!46682 a!2901) #b00000000000000000000000000000000) Nil!33378) Nil!33378)))))

(declare-fun b!1417253 () Bool)

(declare-fun contains!9841 (List!33381 (_ BitVec 64)) Bool)

(assert (=> b!1417253 (= e!802141 (contains!9841 Nil!33378 (select (arr!46682 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1417254 () Bool)

(assert (=> b!1417254 (= e!802139 e!802142)))

(assert (=> b!1417254 (= c!131555 (validKeyInArray!0 (select (arr!46682 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1417255 () Bool)

(assert (=> b!1417255 (= e!802142 call!67218)))

(assert (= (and d!152623 (not res!953111)) b!1417252))

(assert (= (and b!1417252 res!953110) b!1417253))

(assert (= (and b!1417252 res!953112) b!1417254))

(assert (= (and b!1417254 c!131555) b!1417255))

(assert (= (and b!1417254 (not c!131555)) b!1417251))

(assert (= (or b!1417255 b!1417251) bm!67215))

(assert (=> b!1417252 m!1307985))

(assert (=> b!1417252 m!1307985))

(assert (=> b!1417252 m!1307995))

(assert (=> bm!67215 m!1307985))

(declare-fun m!1308031 () Bool)

(assert (=> bm!67215 m!1308031))

(assert (=> b!1417253 m!1307985))

(assert (=> b!1417253 m!1307985))

(declare-fun m!1308033 () Bool)

(assert (=> b!1417253 m!1308033))

(assert (=> b!1417254 m!1307985))

(assert (=> b!1417254 m!1307985))

(assert (=> b!1417254 m!1307995))

(assert (=> b!1417029 d!152623))

(check-sat (not d!152567) (not b!1417253) (not bm!67215) (not b!1417254) (not bm!67208) (not d!152571) (not b!1417064) (not bm!67200) (not b!1417164) (not b!1417208) (not d!152587) (not b!1417128) (not b!1417252) (not b!1417065) (not b!1417165))
(check-sat)
