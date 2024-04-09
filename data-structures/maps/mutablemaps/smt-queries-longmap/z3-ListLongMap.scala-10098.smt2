; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119088 () Bool)

(assert start!119088)

(declare-fun b!1389195 () Bool)

(declare-fun e!786935 () Bool)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!610447 () (_ BitVec 32))

(assert (=> b!1389195 (= e!786935 (and (bvsge mask!2840 #b00000000000000000000000000000000) (or (bvslt lt!610447 #b00000000000000000000000000000000) (bvsge lt!610447 (bvadd #b00000000000000000000000000000001 mask!2840)))))))

(declare-datatypes ((array!94976 0))(
  ( (array!94977 (arr!45851 (Array (_ BitVec 32) (_ BitVec 64))) (size!46402 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!94976)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1389195 (= lt!610447 (toIndex!0 (select (arr!45851 a!2901) j!112) mask!2840))))

(declare-fun b!1389196 () Bool)

(declare-fun res!929499 () Bool)

(assert (=> b!1389196 (=> (not res!929499) (not e!786935))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1389196 (= res!929499 (validKeyInArray!0 (select (arr!45851 a!2901) j!112)))))

(declare-fun b!1389197 () Bool)

(declare-fun res!929501 () Bool)

(assert (=> b!1389197 (=> (not res!929501) (not e!786935))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1389197 (= res!929501 (and (= (size!46402 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46402 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46402 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1389198 () Bool)

(declare-fun res!929497 () Bool)

(assert (=> b!1389198 (=> (not res!929497) (not e!786935))))

(assert (=> b!1389198 (= res!929497 (validKeyInArray!0 (select (arr!45851 a!2901) i!1037)))))

(declare-fun b!1389199 () Bool)

(declare-fun res!929500 () Bool)

(assert (=> b!1389199 (=> (not res!929500) (not e!786935))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94976 (_ BitVec 32)) Bool)

(assert (=> b!1389199 (= res!929500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!929498 () Bool)

(assert (=> start!119088 (=> (not res!929498) (not e!786935))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119088 (= res!929498 (validMask!0 mask!2840))))

(assert (=> start!119088 e!786935))

(assert (=> start!119088 true))

(declare-fun array_inv!34796 (array!94976) Bool)

(assert (=> start!119088 (array_inv!34796 a!2901)))

(declare-fun b!1389194 () Bool)

(declare-fun res!929502 () Bool)

(assert (=> b!1389194 (=> (not res!929502) (not e!786935))))

(declare-datatypes ((List!32550 0))(
  ( (Nil!32547) (Cons!32546 (h!33761 (_ BitVec 64)) (t!47251 List!32550)) )
))
(declare-fun arrayNoDuplicates!0 (array!94976 (_ BitVec 32) List!32550) Bool)

(assert (=> b!1389194 (= res!929502 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32547))))

(assert (= (and start!119088 res!929498) b!1389197))

(assert (= (and b!1389197 res!929501) b!1389198))

(assert (= (and b!1389198 res!929497) b!1389196))

(assert (= (and b!1389196 res!929499) b!1389199))

(assert (= (and b!1389199 res!929500) b!1389194))

(assert (= (and b!1389194 res!929502) b!1389195))

(declare-fun m!1274927 () Bool)

(assert (=> b!1389195 m!1274927))

(assert (=> b!1389195 m!1274927))

(declare-fun m!1274929 () Bool)

(assert (=> b!1389195 m!1274929))

(declare-fun m!1274931 () Bool)

(assert (=> start!119088 m!1274931))

(declare-fun m!1274933 () Bool)

(assert (=> start!119088 m!1274933))

(declare-fun m!1274935 () Bool)

(assert (=> b!1389199 m!1274935))

(declare-fun m!1274937 () Bool)

(assert (=> b!1389198 m!1274937))

(assert (=> b!1389198 m!1274937))

(declare-fun m!1274939 () Bool)

(assert (=> b!1389198 m!1274939))

(declare-fun m!1274941 () Bool)

(assert (=> b!1389194 m!1274941))

(assert (=> b!1389196 m!1274927))

(assert (=> b!1389196 m!1274927))

(declare-fun m!1274943 () Bool)

(assert (=> b!1389196 m!1274943))

(check-sat (not b!1389196) (not b!1389198) (not b!1389195) (not b!1389194) (not start!119088) (not b!1389199))
(check-sat)
(get-model)

(declare-fun d!150045 () Bool)

(assert (=> d!150045 (= (validKeyInArray!0 (select (arr!45851 a!2901) j!112)) (and (not (= (select (arr!45851 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45851 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1389196 d!150045))

(declare-fun d!150047 () Bool)

(declare-fun lt!610456 () (_ BitVec 32))

(declare-fun lt!610455 () (_ BitVec 32))

(assert (=> d!150047 (= lt!610456 (bvmul (bvxor lt!610455 (bvlshr lt!610455 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150047 (= lt!610455 ((_ extract 31 0) (bvand (bvxor (select (arr!45851 a!2901) j!112) (bvlshr (select (arr!45851 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150047 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!929521 (let ((h!33763 ((_ extract 31 0) (bvand (bvxor (select (arr!45851 a!2901) j!112) (bvlshr (select (arr!45851 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!124833 (bvmul (bvxor h!33763 (bvlshr h!33763 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!124833 (bvlshr x!124833 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!929521 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!929521 #b00000000000000000000000000000000))))))

(assert (=> d!150047 (= (toIndex!0 (select (arr!45851 a!2901) j!112) mask!2840) (bvand (bvxor lt!610456 (bvlshr lt!610456 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1389195 d!150047))

(declare-fun d!150049 () Bool)

(assert (=> d!150049 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119088 d!150049))

(declare-fun d!150057 () Bool)

(assert (=> d!150057 (= (array_inv!34796 a!2901) (bvsge (size!46402 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119088 d!150057))

(declare-fun d!150059 () Bool)

(assert (=> d!150059 (= (validKeyInArray!0 (select (arr!45851 a!2901) i!1037)) (and (not (= (select (arr!45851 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45851 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1389198 d!150059))

(declare-fun b!1389240 () Bool)

(declare-fun e!786960 () Bool)

(declare-fun call!66684 () Bool)

(assert (=> b!1389240 (= e!786960 call!66684)))

(declare-fun b!1389241 () Bool)

(declare-fun e!786961 () Bool)

(assert (=> b!1389241 (= e!786961 e!786960)))

(declare-fun c!129299 () Bool)

(assert (=> b!1389241 (= c!129299 (validKeyInArray!0 (select (arr!45851 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!150061 () Bool)

(declare-fun res!929537 () Bool)

(declare-fun e!786962 () Bool)

(assert (=> d!150061 (=> res!929537 e!786962)))

(assert (=> d!150061 (= res!929537 (bvsge #b00000000000000000000000000000000 (size!46402 a!2901)))))

(assert (=> d!150061 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32547) e!786962)))

(declare-fun b!1389242 () Bool)

(declare-fun e!786959 () Bool)

(declare-fun contains!9770 (List!32550 (_ BitVec 64)) Bool)

(assert (=> b!1389242 (= e!786959 (contains!9770 Nil!32547 (select (arr!45851 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66681 () Bool)

(assert (=> bm!66681 (= call!66684 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129299 (Cons!32546 (select (arr!45851 a!2901) #b00000000000000000000000000000000) Nil!32547) Nil!32547)))))

(declare-fun b!1389243 () Bool)

(assert (=> b!1389243 (= e!786962 e!786961)))

(declare-fun res!929536 () Bool)

(assert (=> b!1389243 (=> (not res!929536) (not e!786961))))

(assert (=> b!1389243 (= res!929536 (not e!786959))))

(declare-fun res!929535 () Bool)

(assert (=> b!1389243 (=> (not res!929535) (not e!786959))))

(assert (=> b!1389243 (= res!929535 (validKeyInArray!0 (select (arr!45851 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1389244 () Bool)

(assert (=> b!1389244 (= e!786960 call!66684)))

(assert (= (and d!150061 (not res!929537)) b!1389243))

(assert (= (and b!1389243 res!929535) b!1389242))

(assert (= (and b!1389243 res!929536) b!1389241))

(assert (= (and b!1389241 c!129299) b!1389244))

(assert (= (and b!1389241 (not c!129299)) b!1389240))

(assert (= (or b!1389244 b!1389240) bm!66681))

(declare-fun m!1274975 () Bool)

(assert (=> b!1389241 m!1274975))

(assert (=> b!1389241 m!1274975))

(declare-fun m!1274977 () Bool)

(assert (=> b!1389241 m!1274977))

(assert (=> b!1389242 m!1274975))

(assert (=> b!1389242 m!1274975))

(declare-fun m!1274979 () Bool)

(assert (=> b!1389242 m!1274979))

(assert (=> bm!66681 m!1274975))

(declare-fun m!1274981 () Bool)

(assert (=> bm!66681 m!1274981))

(assert (=> b!1389243 m!1274975))

(assert (=> b!1389243 m!1274975))

(assert (=> b!1389243 m!1274977))

(assert (=> b!1389194 d!150061))

(declare-fun bm!66687 () Bool)

(declare-fun call!66690 () Bool)

(assert (=> bm!66687 (= call!66690 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun d!150073 () Bool)

(declare-fun res!929553 () Bool)

(declare-fun e!786983 () Bool)

(assert (=> d!150073 (=> res!929553 e!786983)))

(assert (=> d!150073 (= res!929553 (bvsge #b00000000000000000000000000000000 (size!46402 a!2901)))))

(assert (=> d!150073 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!786983)))

(declare-fun b!1389268 () Bool)

(declare-fun e!786981 () Bool)

(assert (=> b!1389268 (= e!786981 call!66690)))

(declare-fun b!1389269 () Bool)

(assert (=> b!1389269 (= e!786983 e!786981)))

(declare-fun c!129305 () Bool)

(assert (=> b!1389269 (= c!129305 (validKeyInArray!0 (select (arr!45851 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1389270 () Bool)

(declare-fun e!786982 () Bool)

(assert (=> b!1389270 (= e!786982 call!66690)))

(declare-fun b!1389271 () Bool)

(assert (=> b!1389271 (= e!786981 e!786982)))

(declare-fun lt!610479 () (_ BitVec 64))

(assert (=> b!1389271 (= lt!610479 (select (arr!45851 a!2901) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!46376 0))(
  ( (Unit!46377) )
))
(declare-fun lt!610478 () Unit!46376)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!94976 (_ BitVec 64) (_ BitVec 32)) Unit!46376)

(assert (=> b!1389271 (= lt!610478 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!610479 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!94976 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1389271 (arrayContainsKey!0 a!2901 lt!610479 #b00000000000000000000000000000000)))

(declare-fun lt!610480 () Unit!46376)

(assert (=> b!1389271 (= lt!610480 lt!610478)))

(declare-fun res!929552 () Bool)

(declare-datatypes ((SeekEntryResult!10196 0))(
  ( (MissingZero!10196 (index!43154 (_ BitVec 32))) (Found!10196 (index!43155 (_ BitVec 32))) (Intermediate!10196 (undefined!11008 Bool) (index!43156 (_ BitVec 32)) (x!124837 (_ BitVec 32))) (Undefined!10196) (MissingVacant!10196 (index!43157 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!94976 (_ BitVec 32)) SeekEntryResult!10196)

(assert (=> b!1389271 (= res!929552 (= (seekEntryOrOpen!0 (select (arr!45851 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10196 #b00000000000000000000000000000000)))))

(assert (=> b!1389271 (=> (not res!929552) (not e!786982))))

(assert (= (and d!150073 (not res!929553)) b!1389269))

(assert (= (and b!1389269 c!129305) b!1389271))

(assert (= (and b!1389269 (not c!129305)) b!1389268))

(assert (= (and b!1389271 res!929552) b!1389270))

(assert (= (or b!1389270 b!1389268) bm!66687))

(declare-fun m!1274991 () Bool)

(assert (=> bm!66687 m!1274991))

(assert (=> b!1389269 m!1274975))

(assert (=> b!1389269 m!1274975))

(assert (=> b!1389269 m!1274977))

(assert (=> b!1389271 m!1274975))

(declare-fun m!1274993 () Bool)

(assert (=> b!1389271 m!1274993))

(declare-fun m!1274995 () Bool)

(assert (=> b!1389271 m!1274995))

(assert (=> b!1389271 m!1274975))

(declare-fun m!1274997 () Bool)

(assert (=> b!1389271 m!1274997))

(assert (=> b!1389199 d!150073))

(check-sat (not b!1389242) (not bm!66687) (not b!1389241) (not bm!66681) (not b!1389243) (not b!1389271) (not b!1389269))
(check-sat)
