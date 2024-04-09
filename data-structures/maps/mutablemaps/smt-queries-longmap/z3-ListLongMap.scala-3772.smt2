; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51646 () Bool)

(assert start!51646)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun b!564831 () Bool)

(declare-fun e!325221 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35465 0))(
  ( (array!35466 (arr!17029 (Array (_ BitVec 32) (_ BitVec 64))) (size!17393 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35465)

(declare-datatypes ((SeekEntryResult!5485 0))(
  ( (MissingZero!5485 (index!24167 (_ BitVec 32))) (Found!5485 (index!24168 (_ BitVec 32))) (Intermediate!5485 (undefined!6297 Bool) (index!24169 (_ BitVec 32)) (x!53063 (_ BitVec 32))) (Undefined!5485) (MissingVacant!5485 (index!24170 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35465 (_ BitVec 32)) SeekEntryResult!5485)

(assert (=> b!564831 (= e!325221 (not (= (seekEntryOrOpen!0 (select (arr!17029 a!3118) j!142) a!3118 mask!3119) (Found!5485 j!142))))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35465 (_ BitVec 32)) Bool)

(assert (=> b!564831 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17672 0))(
  ( (Unit!17673) )
))
(declare-fun lt!257696 () Unit!17672)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35465 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17672)

(assert (=> b!564831 (= lt!257696 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!356136 () Bool)

(declare-fun e!325220 () Bool)

(assert (=> start!51646 (=> (not res!356136) (not e!325220))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51646 (= res!356136 (validMask!0 mask!3119))))

(assert (=> start!51646 e!325220))

(assert (=> start!51646 true))

(declare-fun array_inv!12803 (array!35465) Bool)

(assert (=> start!51646 (array_inv!12803 a!3118)))

(declare-fun b!564832 () Bool)

(declare-fun res!356139 () Bool)

(assert (=> b!564832 (=> (not res!356139) (not e!325220))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564832 (= res!356139 (validKeyInArray!0 (select (arr!17029 a!3118) j!142)))))

(declare-fun b!564833 () Bool)

(assert (=> b!564833 (= e!325220 e!325221)))

(declare-fun res!356133 () Bool)

(assert (=> b!564833 (=> (not res!356133) (not e!325221))))

(declare-fun lt!257695 () SeekEntryResult!5485)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!564833 (= res!356133 (or (= lt!257695 (MissingZero!5485 i!1132)) (= lt!257695 (MissingVacant!5485 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!564833 (= lt!257695 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!564834 () Bool)

(declare-fun res!356137 () Bool)

(assert (=> b!564834 (=> (not res!356137) (not e!325220))))

(assert (=> b!564834 (= res!356137 (and (= (size!17393 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17393 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17393 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564835 () Bool)

(declare-fun res!356138 () Bool)

(assert (=> b!564835 (=> (not res!356138) (not e!325221))))

(declare-datatypes ((List!11162 0))(
  ( (Nil!11159) (Cons!11158 (h!12161 (_ BitVec 64)) (t!17398 List!11162)) )
))
(declare-fun arrayNoDuplicates!0 (array!35465 (_ BitVec 32) List!11162) Bool)

(assert (=> b!564835 (= res!356138 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11159))))

(declare-fun b!564836 () Bool)

(declare-fun res!356140 () Bool)

(assert (=> b!564836 (=> (not res!356140) (not e!325221))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35465 (_ BitVec 32)) SeekEntryResult!5485)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564836 (= res!356140 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17029 a!3118) j!142) mask!3119) (select (arr!17029 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17029 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17029 a!3118) i!1132 k0!1914) j!142) (array!35466 (store (arr!17029 a!3118) i!1132 k0!1914) (size!17393 a!3118)) mask!3119)))))

(declare-fun b!564837 () Bool)

(declare-fun res!356134 () Bool)

(assert (=> b!564837 (=> (not res!356134) (not e!325221))))

(assert (=> b!564837 (= res!356134 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564838 () Bool)

(declare-fun res!356135 () Bool)

(assert (=> b!564838 (=> (not res!356135) (not e!325220))))

(declare-fun arrayContainsKey!0 (array!35465 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564838 (= res!356135 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564839 () Bool)

(declare-fun res!356141 () Bool)

(assert (=> b!564839 (=> (not res!356141) (not e!325220))))

(assert (=> b!564839 (= res!356141 (validKeyInArray!0 k0!1914))))

(assert (= (and start!51646 res!356136) b!564834))

(assert (= (and b!564834 res!356137) b!564832))

(assert (= (and b!564832 res!356139) b!564839))

(assert (= (and b!564839 res!356141) b!564838))

(assert (= (and b!564838 res!356135) b!564833))

(assert (= (and b!564833 res!356133) b!564837))

(assert (= (and b!564837 res!356134) b!564835))

(assert (= (and b!564835 res!356138) b!564836))

(assert (= (and b!564836 res!356140) b!564831))

(declare-fun m!543391 () Bool)

(assert (=> b!564832 m!543391))

(assert (=> b!564832 m!543391))

(declare-fun m!543393 () Bool)

(assert (=> b!564832 m!543393))

(declare-fun m!543395 () Bool)

(assert (=> b!564837 m!543395))

(declare-fun m!543397 () Bool)

(assert (=> b!564839 m!543397))

(declare-fun m!543399 () Bool)

(assert (=> start!51646 m!543399))

(declare-fun m!543401 () Bool)

(assert (=> start!51646 m!543401))

(declare-fun m!543403 () Bool)

(assert (=> b!564838 m!543403))

(assert (=> b!564836 m!543391))

(declare-fun m!543405 () Bool)

(assert (=> b!564836 m!543405))

(assert (=> b!564836 m!543391))

(declare-fun m!543407 () Bool)

(assert (=> b!564836 m!543407))

(declare-fun m!543409 () Bool)

(assert (=> b!564836 m!543409))

(assert (=> b!564836 m!543407))

(declare-fun m!543411 () Bool)

(assert (=> b!564836 m!543411))

(assert (=> b!564836 m!543405))

(assert (=> b!564836 m!543391))

(declare-fun m!543413 () Bool)

(assert (=> b!564836 m!543413))

(declare-fun m!543415 () Bool)

(assert (=> b!564836 m!543415))

(assert (=> b!564836 m!543407))

(assert (=> b!564836 m!543409))

(declare-fun m!543417 () Bool)

(assert (=> b!564835 m!543417))

(assert (=> b!564831 m!543391))

(assert (=> b!564831 m!543391))

(declare-fun m!543419 () Bool)

(assert (=> b!564831 m!543419))

(declare-fun m!543421 () Bool)

(assert (=> b!564831 m!543421))

(declare-fun m!543423 () Bool)

(assert (=> b!564831 m!543423))

(declare-fun m!543425 () Bool)

(assert (=> b!564833 m!543425))

(check-sat (not b!564838) (not b!564832) (not b!564839) (not start!51646) (not b!564831) (not b!564836) (not b!564837) (not b!564833) (not b!564835))
(check-sat)
(get-model)

(declare-fun d!83865 () Bool)

(assert (=> d!83865 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!564839 d!83865))

(declare-fun d!83867 () Bool)

(assert (=> d!83867 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!51646 d!83867))

(declare-fun d!83871 () Bool)

(assert (=> d!83871 (= (array_inv!12803 a!3118) (bvsge (size!17393 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!51646 d!83871))

(declare-fun b!564915 () Bool)

(declare-fun e!325260 () SeekEntryResult!5485)

(declare-fun lt!257731 () SeekEntryResult!5485)

(assert (=> b!564915 (= e!325260 (Found!5485 (index!24169 lt!257731)))))

(declare-fun d!83873 () Bool)

(declare-fun lt!257730 () SeekEntryResult!5485)

(get-info :version)

(assert (=> d!83873 (and (or ((_ is Undefined!5485) lt!257730) (not ((_ is Found!5485) lt!257730)) (and (bvsge (index!24168 lt!257730) #b00000000000000000000000000000000) (bvslt (index!24168 lt!257730) (size!17393 a!3118)))) (or ((_ is Undefined!5485) lt!257730) ((_ is Found!5485) lt!257730) (not ((_ is MissingZero!5485) lt!257730)) (and (bvsge (index!24167 lt!257730) #b00000000000000000000000000000000) (bvslt (index!24167 lt!257730) (size!17393 a!3118)))) (or ((_ is Undefined!5485) lt!257730) ((_ is Found!5485) lt!257730) ((_ is MissingZero!5485) lt!257730) (not ((_ is MissingVacant!5485) lt!257730)) (and (bvsge (index!24170 lt!257730) #b00000000000000000000000000000000) (bvslt (index!24170 lt!257730) (size!17393 a!3118)))) (or ((_ is Undefined!5485) lt!257730) (ite ((_ is Found!5485) lt!257730) (= (select (arr!17029 a!3118) (index!24168 lt!257730)) k0!1914) (ite ((_ is MissingZero!5485) lt!257730) (= (select (arr!17029 a!3118) (index!24167 lt!257730)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5485) lt!257730) (= (select (arr!17029 a!3118) (index!24170 lt!257730)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!325261 () SeekEntryResult!5485)

(assert (=> d!83873 (= lt!257730 e!325261)))

(declare-fun c!64716 () Bool)

(assert (=> d!83873 (= c!64716 (and ((_ is Intermediate!5485) lt!257731) (undefined!6297 lt!257731)))))

(assert (=> d!83873 (= lt!257731 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!83873 (validMask!0 mask!3119)))

(assert (=> d!83873 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!257730)))

(declare-fun e!325259 () SeekEntryResult!5485)

(declare-fun b!564916 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35465 (_ BitVec 32)) SeekEntryResult!5485)

(assert (=> b!564916 (= e!325259 (seekKeyOrZeroReturnVacant!0 (x!53063 lt!257731) (index!24169 lt!257731) (index!24169 lt!257731) k0!1914 a!3118 mask!3119))))

(declare-fun b!564917 () Bool)

(declare-fun c!64718 () Bool)

(declare-fun lt!257732 () (_ BitVec 64))

(assert (=> b!564917 (= c!64718 (= lt!257732 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!564917 (= e!325260 e!325259)))

(declare-fun b!564918 () Bool)

(assert (=> b!564918 (= e!325259 (MissingZero!5485 (index!24169 lt!257731)))))

(declare-fun b!564919 () Bool)

(assert (=> b!564919 (= e!325261 e!325260)))

(assert (=> b!564919 (= lt!257732 (select (arr!17029 a!3118) (index!24169 lt!257731)))))

(declare-fun c!64717 () Bool)

(assert (=> b!564919 (= c!64717 (= lt!257732 k0!1914))))

(declare-fun b!564920 () Bool)

(assert (=> b!564920 (= e!325261 Undefined!5485)))

(assert (= (and d!83873 c!64716) b!564920))

(assert (= (and d!83873 (not c!64716)) b!564919))

(assert (= (and b!564919 c!64717) b!564915))

(assert (= (and b!564919 (not c!64717)) b!564917))

(assert (= (and b!564917 c!64718) b!564918))

(assert (= (and b!564917 (not c!64718)) b!564916))

(declare-fun m!543493 () Bool)

(assert (=> d!83873 m!543493))

(declare-fun m!543495 () Bool)

(assert (=> d!83873 m!543495))

(assert (=> d!83873 m!543399))

(declare-fun m!543497 () Bool)

(assert (=> d!83873 m!543497))

(declare-fun m!543499 () Bool)

(assert (=> d!83873 m!543499))

(assert (=> d!83873 m!543495))

(declare-fun m!543501 () Bool)

(assert (=> d!83873 m!543501))

(declare-fun m!543503 () Bool)

(assert (=> b!564916 m!543503))

(declare-fun m!543505 () Bool)

(assert (=> b!564919 m!543505))

(assert (=> b!564833 d!83873))

(declare-fun b!564931 () Bool)

(declare-fun e!325273 () Bool)

(declare-fun contains!2866 (List!11162 (_ BitVec 64)) Bool)

(assert (=> b!564931 (= e!325273 (contains!2866 Nil!11159 (select (arr!17029 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!564932 () Bool)

(declare-fun e!325270 () Bool)

(declare-fun call!32459 () Bool)

(assert (=> b!564932 (= e!325270 call!32459)))

(declare-fun b!564933 () Bool)

(declare-fun e!325271 () Bool)

(declare-fun e!325272 () Bool)

(assert (=> b!564933 (= e!325271 e!325272)))

(declare-fun res!356182 () Bool)

(assert (=> b!564933 (=> (not res!356182) (not e!325272))))

(assert (=> b!564933 (= res!356182 (not e!325273))))

(declare-fun res!356183 () Bool)

(assert (=> b!564933 (=> (not res!356183) (not e!325273))))

(assert (=> b!564933 (= res!356183 (validKeyInArray!0 (select (arr!17029 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32456 () Bool)

(declare-fun c!64721 () Bool)

(assert (=> bm!32456 (= call!32459 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64721 (Cons!11158 (select (arr!17029 a!3118) #b00000000000000000000000000000000) Nil!11159) Nil!11159)))))

(declare-fun d!83887 () Bool)

(declare-fun res!356181 () Bool)

(assert (=> d!83887 (=> res!356181 e!325271)))

(assert (=> d!83887 (= res!356181 (bvsge #b00000000000000000000000000000000 (size!17393 a!3118)))))

(assert (=> d!83887 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11159) e!325271)))

(declare-fun b!564934 () Bool)

(assert (=> b!564934 (= e!325270 call!32459)))

(declare-fun b!564935 () Bool)

(assert (=> b!564935 (= e!325272 e!325270)))

(assert (=> b!564935 (= c!64721 (validKeyInArray!0 (select (arr!17029 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!83887 (not res!356181)) b!564933))

(assert (= (and b!564933 res!356183) b!564931))

(assert (= (and b!564933 res!356182) b!564935))

(assert (= (and b!564935 c!64721) b!564934))

(assert (= (and b!564935 (not c!64721)) b!564932))

(assert (= (or b!564934 b!564932) bm!32456))

(declare-fun m!543509 () Bool)

(assert (=> b!564931 m!543509))

(assert (=> b!564931 m!543509))

(declare-fun m!543511 () Bool)

(assert (=> b!564931 m!543511))

(assert (=> b!564933 m!543509))

(assert (=> b!564933 m!543509))

(declare-fun m!543513 () Bool)

(assert (=> b!564933 m!543513))

(assert (=> bm!32456 m!543509))

(declare-fun m!543515 () Bool)

(assert (=> bm!32456 m!543515))

(assert (=> b!564935 m!543509))

(assert (=> b!564935 m!543509))

(assert (=> b!564935 m!543513))

(assert (=> b!564835 d!83887))

(declare-fun b!564936 () Bool)

(declare-fun e!325275 () SeekEntryResult!5485)

(declare-fun lt!257737 () SeekEntryResult!5485)

(assert (=> b!564936 (= e!325275 (Found!5485 (index!24169 lt!257737)))))

(declare-fun d!83891 () Bool)

(declare-fun lt!257736 () SeekEntryResult!5485)

(assert (=> d!83891 (and (or ((_ is Undefined!5485) lt!257736) (not ((_ is Found!5485) lt!257736)) (and (bvsge (index!24168 lt!257736) #b00000000000000000000000000000000) (bvslt (index!24168 lt!257736) (size!17393 a!3118)))) (or ((_ is Undefined!5485) lt!257736) ((_ is Found!5485) lt!257736) (not ((_ is MissingZero!5485) lt!257736)) (and (bvsge (index!24167 lt!257736) #b00000000000000000000000000000000) (bvslt (index!24167 lt!257736) (size!17393 a!3118)))) (or ((_ is Undefined!5485) lt!257736) ((_ is Found!5485) lt!257736) ((_ is MissingZero!5485) lt!257736) (not ((_ is MissingVacant!5485) lt!257736)) (and (bvsge (index!24170 lt!257736) #b00000000000000000000000000000000) (bvslt (index!24170 lt!257736) (size!17393 a!3118)))) (or ((_ is Undefined!5485) lt!257736) (ite ((_ is Found!5485) lt!257736) (= (select (arr!17029 a!3118) (index!24168 lt!257736)) (select (arr!17029 a!3118) j!142)) (ite ((_ is MissingZero!5485) lt!257736) (= (select (arr!17029 a!3118) (index!24167 lt!257736)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5485) lt!257736) (= (select (arr!17029 a!3118) (index!24170 lt!257736)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!325276 () SeekEntryResult!5485)

(assert (=> d!83891 (= lt!257736 e!325276)))

(declare-fun c!64722 () Bool)

(assert (=> d!83891 (= c!64722 (and ((_ is Intermediate!5485) lt!257737) (undefined!6297 lt!257737)))))

(assert (=> d!83891 (= lt!257737 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17029 a!3118) j!142) mask!3119) (select (arr!17029 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!83891 (validMask!0 mask!3119)))

(assert (=> d!83891 (= (seekEntryOrOpen!0 (select (arr!17029 a!3118) j!142) a!3118 mask!3119) lt!257736)))

(declare-fun b!564937 () Bool)

(declare-fun e!325274 () SeekEntryResult!5485)

(assert (=> b!564937 (= e!325274 (seekKeyOrZeroReturnVacant!0 (x!53063 lt!257737) (index!24169 lt!257737) (index!24169 lt!257737) (select (arr!17029 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!564938 () Bool)

(declare-fun c!64724 () Bool)

(declare-fun lt!257738 () (_ BitVec 64))

(assert (=> b!564938 (= c!64724 (= lt!257738 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!564938 (= e!325275 e!325274)))

(declare-fun b!564939 () Bool)

(assert (=> b!564939 (= e!325274 (MissingZero!5485 (index!24169 lt!257737)))))

(declare-fun b!564940 () Bool)

(assert (=> b!564940 (= e!325276 e!325275)))

(assert (=> b!564940 (= lt!257738 (select (arr!17029 a!3118) (index!24169 lt!257737)))))

(declare-fun c!64723 () Bool)

(assert (=> b!564940 (= c!64723 (= lt!257738 (select (arr!17029 a!3118) j!142)))))

(declare-fun b!564941 () Bool)

(assert (=> b!564941 (= e!325276 Undefined!5485)))

(assert (= (and d!83891 c!64722) b!564941))

(assert (= (and d!83891 (not c!64722)) b!564940))

(assert (= (and b!564940 c!64723) b!564936))

(assert (= (and b!564940 (not c!64723)) b!564938))

(assert (= (and b!564938 c!64724) b!564939))

(assert (= (and b!564938 (not c!64724)) b!564937))

(declare-fun m!543517 () Bool)

(assert (=> d!83891 m!543517))

(assert (=> d!83891 m!543391))

(assert (=> d!83891 m!543405))

(assert (=> d!83891 m!543399))

(declare-fun m!543519 () Bool)

(assert (=> d!83891 m!543519))

(declare-fun m!543521 () Bool)

(assert (=> d!83891 m!543521))

(assert (=> d!83891 m!543405))

(assert (=> d!83891 m!543391))

(assert (=> d!83891 m!543413))

(assert (=> b!564937 m!543391))

(declare-fun m!543523 () Bool)

(assert (=> b!564937 m!543523))

(declare-fun m!543525 () Bool)

(assert (=> b!564940 m!543525))

(assert (=> b!564831 d!83891))

(declare-fun b!564977 () Bool)

(declare-fun e!325300 () Bool)

(declare-fun call!32462 () Bool)

(assert (=> b!564977 (= e!325300 call!32462)))

(declare-fun b!564978 () Bool)

(declare-fun e!325298 () Bool)

(assert (=> b!564978 (= e!325298 e!325300)))

(declare-fun c!64736 () Bool)

(assert (=> b!564978 (= c!64736 (validKeyInArray!0 (select (arr!17029 a!3118) j!142)))))

(declare-fun b!564979 () Bool)

(declare-fun e!325299 () Bool)

(assert (=> b!564979 (= e!325300 e!325299)))

(declare-fun lt!257751 () (_ BitVec 64))

(assert (=> b!564979 (= lt!257751 (select (arr!17029 a!3118) j!142))))

(declare-fun lt!257753 () Unit!17672)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35465 (_ BitVec 64) (_ BitVec 32)) Unit!17672)

(assert (=> b!564979 (= lt!257753 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!257751 j!142))))

(assert (=> b!564979 (arrayContainsKey!0 a!3118 lt!257751 #b00000000000000000000000000000000)))

(declare-fun lt!257752 () Unit!17672)

(assert (=> b!564979 (= lt!257752 lt!257753)))

(declare-fun res!356199 () Bool)

(assert (=> b!564979 (= res!356199 (= (seekEntryOrOpen!0 (select (arr!17029 a!3118) j!142) a!3118 mask!3119) (Found!5485 j!142)))))

(assert (=> b!564979 (=> (not res!356199) (not e!325299))))

(declare-fun bm!32459 () Bool)

(assert (=> bm!32459 (= call!32462 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!83893 () Bool)

(declare-fun res!356198 () Bool)

(assert (=> d!83893 (=> res!356198 e!325298)))

(assert (=> d!83893 (= res!356198 (bvsge j!142 (size!17393 a!3118)))))

(assert (=> d!83893 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!325298)))

(declare-fun b!564980 () Bool)

(assert (=> b!564980 (= e!325299 call!32462)))

(assert (= (and d!83893 (not res!356198)) b!564978))

(assert (= (and b!564978 c!64736) b!564979))

(assert (= (and b!564978 (not c!64736)) b!564977))

(assert (= (and b!564979 res!356199) b!564980))

(assert (= (or b!564980 b!564977) bm!32459))

(assert (=> b!564978 m!543391))

(assert (=> b!564978 m!543391))

(assert (=> b!564978 m!543393))

(assert (=> b!564979 m!543391))

(declare-fun m!543535 () Bool)

(assert (=> b!564979 m!543535))

(declare-fun m!543537 () Bool)

(assert (=> b!564979 m!543537))

(assert (=> b!564979 m!543391))

(assert (=> b!564979 m!543419))

(declare-fun m!543539 () Bool)

(assert (=> bm!32459 m!543539))

(assert (=> b!564831 d!83893))

(declare-fun d!83897 () Bool)

(assert (=> d!83897 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!257768 () Unit!17672)

(declare-fun choose!38 (array!35465 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17672)

(assert (=> d!83897 (= lt!257768 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!83897 (validMask!0 mask!3119)))

(assert (=> d!83897 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!257768)))

(declare-fun bs!17554 () Bool)

(assert (= bs!17554 d!83897))

(assert (=> bs!17554 m!543421))

(declare-fun m!543541 () Bool)

(assert (=> bs!17554 m!543541))

(assert (=> bs!17554 m!543399))

(assert (=> b!564831 d!83897))

(declare-fun b!565077 () Bool)

(declare-fun e!325360 () SeekEntryResult!5485)

(assert (=> b!565077 (= e!325360 (Intermediate!5485 true (toIndex!0 (select (arr!17029 a!3118) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!565079 () Bool)

(declare-fun lt!257793 () SeekEntryResult!5485)

(assert (=> b!565079 (and (bvsge (index!24169 lt!257793) #b00000000000000000000000000000000) (bvslt (index!24169 lt!257793) (size!17393 a!3118)))))

(declare-fun e!325361 () Bool)

(assert (=> b!565079 (= e!325361 (= (select (arr!17029 a!3118) (index!24169 lt!257793)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!565080 () Bool)

(declare-fun e!325363 () SeekEntryResult!5485)

(assert (=> b!565080 (= e!325360 e!325363)))

(declare-fun c!64769 () Bool)

(declare-fun lt!257794 () (_ BitVec 64))

(assert (=> b!565080 (= c!64769 (or (= lt!257794 (select (arr!17029 a!3118) j!142)) (= (bvadd lt!257794 lt!257794) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!565081 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565081 (= e!325363 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!17029 a!3118) j!142) mask!3119) #b00000000000000000000000000000000 mask!3119) (select (arr!17029 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!565082 () Bool)

(assert (=> b!565082 (and (bvsge (index!24169 lt!257793) #b00000000000000000000000000000000) (bvslt (index!24169 lt!257793) (size!17393 a!3118)))))

(declare-fun res!356239 () Bool)

(assert (=> b!565082 (= res!356239 (= (select (arr!17029 a!3118) (index!24169 lt!257793)) (select (arr!17029 a!3118) j!142)))))

(assert (=> b!565082 (=> res!356239 e!325361)))

(declare-fun e!325362 () Bool)

(assert (=> b!565082 (= e!325362 e!325361)))

(declare-fun b!565083 () Bool)

(assert (=> b!565083 (= e!325363 (Intermediate!5485 false (toIndex!0 (select (arr!17029 a!3118) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!565078 () Bool)

(declare-fun e!325364 () Bool)

(assert (=> b!565078 (= e!325364 e!325362)))

(declare-fun res!356237 () Bool)

(assert (=> b!565078 (= res!356237 (and ((_ is Intermediate!5485) lt!257793) (not (undefined!6297 lt!257793)) (bvslt (x!53063 lt!257793) #b01111111111111111111111111111110) (bvsge (x!53063 lt!257793) #b00000000000000000000000000000000) (bvsge (x!53063 lt!257793) #b00000000000000000000000000000000)))))

(assert (=> b!565078 (=> (not res!356237) (not e!325362))))

(declare-fun d!83901 () Bool)

(assert (=> d!83901 e!325364))

(declare-fun c!64768 () Bool)

(assert (=> d!83901 (= c!64768 (and ((_ is Intermediate!5485) lt!257793) (undefined!6297 lt!257793)))))

(assert (=> d!83901 (= lt!257793 e!325360)))

(declare-fun c!64767 () Bool)

(assert (=> d!83901 (= c!64767 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!83901 (= lt!257794 (select (arr!17029 a!3118) (toIndex!0 (select (arr!17029 a!3118) j!142) mask!3119)))))

(assert (=> d!83901 (validMask!0 mask!3119)))

(assert (=> d!83901 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17029 a!3118) j!142) mask!3119) (select (arr!17029 a!3118) j!142) a!3118 mask!3119) lt!257793)))

(declare-fun b!565084 () Bool)

(assert (=> b!565084 (= e!325364 (bvsge (x!53063 lt!257793) #b01111111111111111111111111111110))))

(declare-fun b!565085 () Bool)

(assert (=> b!565085 (and (bvsge (index!24169 lt!257793) #b00000000000000000000000000000000) (bvslt (index!24169 lt!257793) (size!17393 a!3118)))))

(declare-fun res!356238 () Bool)

(assert (=> b!565085 (= res!356238 (= (select (arr!17029 a!3118) (index!24169 lt!257793)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!565085 (=> res!356238 e!325361)))

(assert (= (and d!83901 c!64767) b!565077))

(assert (= (and d!83901 (not c!64767)) b!565080))

(assert (= (and b!565080 c!64769) b!565083))

(assert (= (and b!565080 (not c!64769)) b!565081))

(assert (= (and d!83901 c!64768) b!565084))

(assert (= (and d!83901 (not c!64768)) b!565078))

(assert (= (and b!565078 res!356237) b!565082))

(assert (= (and b!565082 (not res!356239)) b!565085))

(assert (= (and b!565085 (not res!356238)) b!565079))

(assert (=> d!83901 m!543405))

(declare-fun m!543577 () Bool)

(assert (=> d!83901 m!543577))

(assert (=> d!83901 m!543399))

(declare-fun m!543579 () Bool)

(assert (=> b!565085 m!543579))

(assert (=> b!565081 m!543405))

(declare-fun m!543581 () Bool)

(assert (=> b!565081 m!543581))

(assert (=> b!565081 m!543581))

(assert (=> b!565081 m!543391))

(declare-fun m!543587 () Bool)

(assert (=> b!565081 m!543587))

(assert (=> b!565079 m!543579))

(assert (=> b!565082 m!543579))

(assert (=> b!564836 d!83901))

(declare-fun d!83919 () Bool)

(declare-fun lt!257803 () (_ BitVec 32))

(declare-fun lt!257802 () (_ BitVec 32))

(assert (=> d!83919 (= lt!257803 (bvmul (bvxor lt!257802 (bvlshr lt!257802 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83919 (= lt!257802 ((_ extract 31 0) (bvand (bvxor (select (arr!17029 a!3118) j!142) (bvlshr (select (arr!17029 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83919 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!356240 (let ((h!12165 ((_ extract 31 0) (bvand (bvxor (select (arr!17029 a!3118) j!142) (bvlshr (select (arr!17029 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53070 (bvmul (bvxor h!12165 (bvlshr h!12165 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53070 (bvlshr x!53070 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!356240 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!356240 #b00000000000000000000000000000000))))))

(assert (=> d!83919 (= (toIndex!0 (select (arr!17029 a!3118) j!142) mask!3119) (bvand (bvxor lt!257803 (bvlshr lt!257803 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!564836 d!83919))

(declare-fun e!325368 () SeekEntryResult!5485)

(declare-fun b!565092 () Bool)

(assert (=> b!565092 (= e!325368 (Intermediate!5485 true (toIndex!0 (select (store (arr!17029 a!3118) i!1132 k0!1914) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun lt!257804 () SeekEntryResult!5485)

(declare-fun b!565094 () Bool)

(assert (=> b!565094 (and (bvsge (index!24169 lt!257804) #b00000000000000000000000000000000) (bvslt (index!24169 lt!257804) (size!17393 (array!35466 (store (arr!17029 a!3118) i!1132 k0!1914) (size!17393 a!3118)))))))

(declare-fun e!325369 () Bool)

(assert (=> b!565094 (= e!325369 (= (select (arr!17029 (array!35466 (store (arr!17029 a!3118) i!1132 k0!1914) (size!17393 a!3118))) (index!24169 lt!257804)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!565095 () Bool)

(declare-fun e!325371 () SeekEntryResult!5485)

(assert (=> b!565095 (= e!325368 e!325371)))

(declare-fun lt!257805 () (_ BitVec 64))

(declare-fun c!64775 () Bool)

(assert (=> b!565095 (= c!64775 (or (= lt!257805 (select (store (arr!17029 a!3118) i!1132 k0!1914) j!142)) (= (bvadd lt!257805 lt!257805) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!565096 () Bool)

(assert (=> b!565096 (= e!325371 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!17029 a!3118) i!1132 k0!1914) j!142) mask!3119) #b00000000000000000000000000000000 mask!3119) (select (store (arr!17029 a!3118) i!1132 k0!1914) j!142) (array!35466 (store (arr!17029 a!3118) i!1132 k0!1914) (size!17393 a!3118)) mask!3119))))

(declare-fun b!565097 () Bool)

(assert (=> b!565097 (and (bvsge (index!24169 lt!257804) #b00000000000000000000000000000000) (bvslt (index!24169 lt!257804) (size!17393 (array!35466 (store (arr!17029 a!3118) i!1132 k0!1914) (size!17393 a!3118)))))))

(declare-fun res!356243 () Bool)

(assert (=> b!565097 (= res!356243 (= (select (arr!17029 (array!35466 (store (arr!17029 a!3118) i!1132 k0!1914) (size!17393 a!3118))) (index!24169 lt!257804)) (select (store (arr!17029 a!3118) i!1132 k0!1914) j!142)))))

(assert (=> b!565097 (=> res!356243 e!325369)))

(declare-fun e!325370 () Bool)

(assert (=> b!565097 (= e!325370 e!325369)))

(declare-fun b!565098 () Bool)

(assert (=> b!565098 (= e!325371 (Intermediate!5485 false (toIndex!0 (select (store (arr!17029 a!3118) i!1132 k0!1914) j!142) mask!3119) #b00000000000000000000000000000000))))

(declare-fun b!565093 () Bool)

(declare-fun e!325372 () Bool)

(assert (=> b!565093 (= e!325372 e!325370)))

(declare-fun res!356241 () Bool)

(assert (=> b!565093 (= res!356241 (and ((_ is Intermediate!5485) lt!257804) (not (undefined!6297 lt!257804)) (bvslt (x!53063 lt!257804) #b01111111111111111111111111111110) (bvsge (x!53063 lt!257804) #b00000000000000000000000000000000) (bvsge (x!53063 lt!257804) #b00000000000000000000000000000000)))))

(assert (=> b!565093 (=> (not res!356241) (not e!325370))))

(declare-fun d!83923 () Bool)

(assert (=> d!83923 e!325372))

(declare-fun c!64774 () Bool)

(assert (=> d!83923 (= c!64774 (and ((_ is Intermediate!5485) lt!257804) (undefined!6297 lt!257804)))))

(assert (=> d!83923 (= lt!257804 e!325368)))

(declare-fun c!64773 () Bool)

(assert (=> d!83923 (= c!64773 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!83923 (= lt!257805 (select (arr!17029 (array!35466 (store (arr!17029 a!3118) i!1132 k0!1914) (size!17393 a!3118))) (toIndex!0 (select (store (arr!17029 a!3118) i!1132 k0!1914) j!142) mask!3119)))))

(assert (=> d!83923 (validMask!0 mask!3119)))

(assert (=> d!83923 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17029 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17029 a!3118) i!1132 k0!1914) j!142) (array!35466 (store (arr!17029 a!3118) i!1132 k0!1914) (size!17393 a!3118)) mask!3119) lt!257804)))

(declare-fun b!565099 () Bool)

(assert (=> b!565099 (= e!325372 (bvsge (x!53063 lt!257804) #b01111111111111111111111111111110))))

(declare-fun b!565100 () Bool)

(assert (=> b!565100 (and (bvsge (index!24169 lt!257804) #b00000000000000000000000000000000) (bvslt (index!24169 lt!257804) (size!17393 (array!35466 (store (arr!17029 a!3118) i!1132 k0!1914) (size!17393 a!3118)))))))

(declare-fun res!356242 () Bool)

(assert (=> b!565100 (= res!356242 (= (select (arr!17029 (array!35466 (store (arr!17029 a!3118) i!1132 k0!1914) (size!17393 a!3118))) (index!24169 lt!257804)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!565100 (=> res!356242 e!325369)))

(assert (= (and d!83923 c!64773) b!565092))

(assert (= (and d!83923 (not c!64773)) b!565095))

(assert (= (and b!565095 c!64775) b!565098))

(assert (= (and b!565095 (not c!64775)) b!565096))

(assert (= (and d!83923 c!64774) b!565099))

(assert (= (and d!83923 (not c!64774)) b!565093))

(assert (= (and b!565093 res!356241) b!565097))

(assert (= (and b!565097 (not res!356243)) b!565100))

(assert (= (and b!565100 (not res!356242)) b!565094))

(assert (=> d!83923 m!543409))

(declare-fun m!543599 () Bool)

(assert (=> d!83923 m!543599))

(assert (=> d!83923 m!543399))

(declare-fun m!543601 () Bool)

(assert (=> b!565100 m!543601))

(assert (=> b!565096 m!543409))

(declare-fun m!543603 () Bool)

(assert (=> b!565096 m!543603))

(assert (=> b!565096 m!543603))

(assert (=> b!565096 m!543407))

(declare-fun m!543605 () Bool)

(assert (=> b!565096 m!543605))

(assert (=> b!565094 m!543601))

(assert (=> b!565097 m!543601))

(assert (=> b!564836 d!83923))

(declare-fun d!83925 () Bool)

(declare-fun lt!257813 () (_ BitVec 32))

(declare-fun lt!257812 () (_ BitVec 32))

(assert (=> d!83925 (= lt!257813 (bvmul (bvxor lt!257812 (bvlshr lt!257812 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83925 (= lt!257812 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17029 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!17029 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83925 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!356240 (let ((h!12165 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17029 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!17029 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53070 (bvmul (bvxor h!12165 (bvlshr h!12165 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53070 (bvlshr x!53070 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!356240 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!356240 #b00000000000000000000000000000000))))))

(assert (=> d!83925 (= (toIndex!0 (select (store (arr!17029 a!3118) i!1132 k0!1914) j!142) mask!3119) (bvand (bvxor lt!257813 (bvlshr lt!257813 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!564836 d!83925))

(declare-fun d!83927 () Bool)

(declare-fun res!356256 () Bool)

(declare-fun e!325389 () Bool)

(assert (=> d!83927 (=> res!356256 e!325389)))

(assert (=> d!83927 (= res!356256 (= (select (arr!17029 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!83927 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!325389)))

(declare-fun b!565121 () Bool)

(declare-fun e!325390 () Bool)

(assert (=> b!565121 (= e!325389 e!325390)))

(declare-fun res!356257 () Bool)

(assert (=> b!565121 (=> (not res!356257) (not e!325390))))

(assert (=> b!565121 (= res!356257 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17393 a!3118)))))

(declare-fun b!565122 () Bool)

(assert (=> b!565122 (= e!325390 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!83927 (not res!356256)) b!565121))

(assert (= (and b!565121 res!356257) b!565122))

(assert (=> d!83927 m!543509))

(declare-fun m!543627 () Bool)

(assert (=> b!565122 m!543627))

(assert (=> b!564838 d!83927))

(declare-fun b!565123 () Bool)

(declare-fun e!325393 () Bool)

(declare-fun call!32470 () Bool)

(assert (=> b!565123 (= e!325393 call!32470)))

(declare-fun b!565124 () Bool)

(declare-fun e!325391 () Bool)

(assert (=> b!565124 (= e!325391 e!325393)))

(declare-fun c!64780 () Bool)

(assert (=> b!565124 (= c!64780 (validKeyInArray!0 (select (arr!17029 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!565125 () Bool)

(declare-fun e!325392 () Bool)

(assert (=> b!565125 (= e!325393 e!325392)))

(declare-fun lt!257820 () (_ BitVec 64))

(assert (=> b!565125 (= lt!257820 (select (arr!17029 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!257822 () Unit!17672)

(assert (=> b!565125 (= lt!257822 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!257820 #b00000000000000000000000000000000))))

(assert (=> b!565125 (arrayContainsKey!0 a!3118 lt!257820 #b00000000000000000000000000000000)))

(declare-fun lt!257821 () Unit!17672)

(assert (=> b!565125 (= lt!257821 lt!257822)))

(declare-fun res!356259 () Bool)

(assert (=> b!565125 (= res!356259 (= (seekEntryOrOpen!0 (select (arr!17029 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5485 #b00000000000000000000000000000000)))))

(assert (=> b!565125 (=> (not res!356259) (not e!325392))))

(declare-fun bm!32467 () Bool)

(assert (=> bm!32467 (= call!32470 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!83937 () Bool)

(declare-fun res!356258 () Bool)

(assert (=> d!83937 (=> res!356258 e!325391)))

(assert (=> d!83937 (= res!356258 (bvsge #b00000000000000000000000000000000 (size!17393 a!3118)))))

(assert (=> d!83937 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!325391)))

(declare-fun b!565126 () Bool)

(assert (=> b!565126 (= e!325392 call!32470)))

(assert (= (and d!83937 (not res!356258)) b!565124))

(assert (= (and b!565124 c!64780) b!565125))

(assert (= (and b!565124 (not c!64780)) b!565123))

(assert (= (and b!565125 res!356259) b!565126))

(assert (= (or b!565126 b!565123) bm!32467))

(assert (=> b!565124 m!543509))

(assert (=> b!565124 m!543509))

(assert (=> b!565124 m!543513))

(assert (=> b!565125 m!543509))

(declare-fun m!543629 () Bool)

(assert (=> b!565125 m!543629))

(declare-fun m!543631 () Bool)

(assert (=> b!565125 m!543631))

(assert (=> b!565125 m!543509))

(declare-fun m!543633 () Bool)

(assert (=> b!565125 m!543633))

(declare-fun m!543635 () Bool)

(assert (=> bm!32467 m!543635))

(assert (=> b!564837 d!83937))

(declare-fun d!83939 () Bool)

(assert (=> d!83939 (= (validKeyInArray!0 (select (arr!17029 a!3118) j!142)) (and (not (= (select (arr!17029 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17029 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!564832 d!83939))

(check-sat (not b!565096) (not d!83891) (not d!83897) (not b!565122) (not b!564979) (not bm!32456) (not b!564978) (not b!565081) (not b!565124) (not b!564931) (not d!83873) (not b!564935) (not d!83901) (not b!564937) (not b!564916) (not bm!32459) (not b!565125) (not b!564933) (not d!83923) (not bm!32467))
(check-sat)
