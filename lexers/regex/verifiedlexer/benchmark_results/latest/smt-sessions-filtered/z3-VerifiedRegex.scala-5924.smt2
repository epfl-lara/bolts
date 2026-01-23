; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!290032 () Bool)

(assert start!290032)

(declare-fun b!3012017 () Bool)

(declare-fun e!1891048 () Bool)

(declare-fun tp_is_empty!16361 () Bool)

(assert (=> b!3012017 (= e!1891048 tp_is_empty!16361)))

(declare-fun b!3012018 () Bool)

(declare-fun e!1891049 () Bool)

(declare-datatypes ((C!18984 0))(
  ( (C!18985 (val!11528 Int)) )
))
(declare-datatypes ((Regex!9399 0))(
  ( (ElementMatch!9399 (c!496265 C!18984)) (Concat!14720 (regOne!19310 Regex!9399) (regTwo!19310 Regex!9399)) (EmptyExpr!9399) (Star!9399 (reg!9728 Regex!9399)) (EmptyLang!9399) (Union!9399 (regOne!19311 Regex!9399) (regTwo!19311 Regex!9399)) )
))
(declare-fun r!17423 () Regex!9399)

(declare-fun validRegex!4132 (Regex!9399) Bool)

(assert (=> b!3012018 (= e!1891049 (validRegex!4132 (regTwo!19310 r!17423)))))

(declare-fun res!1241161 () Bool)

(declare-fun e!1891051 () Bool)

(assert (=> start!290032 (=> (not res!1241161) (not e!1891051))))

(assert (=> start!290032 (= res!1241161 (validRegex!4132 r!17423))))

(assert (=> start!290032 e!1891051))

(assert (=> start!290032 e!1891048))

(declare-fun e!1891050 () Bool)

(assert (=> start!290032 e!1891050))

(declare-fun b!3012019 () Bool)

(declare-fun tp!955852 () Bool)

(assert (=> b!3012019 (= e!1891050 (and tp_is_empty!16361 tp!955852))))

(declare-fun b!3012020 () Bool)

(assert (=> b!3012020 (= e!1891051 (not e!1891049))))

(declare-fun res!1241164 () Bool)

(assert (=> b!3012020 (=> res!1241164 e!1891049)))

(declare-fun lt!1044031 () Bool)

(get-info :version)

(assert (=> b!3012020 (= res!1241164 (or (not lt!1044031) (not ((_ is Concat!14720) r!17423))))))

(declare-datatypes ((List!35264 0))(
  ( (Nil!35140) (Cons!35140 (h!40560 C!18984) (t!234329 List!35264)) )
))
(declare-fun s!11993 () List!35264)

(declare-fun matchRSpec!1536 (Regex!9399 List!35264) Bool)

(assert (=> b!3012020 (= lt!1044031 (matchRSpec!1536 r!17423 s!11993))))

(declare-fun matchR!4281 (Regex!9399 List!35264) Bool)

(assert (=> b!3012020 (= lt!1044031 (matchR!4281 r!17423 s!11993))))

(declare-datatypes ((Unit!49221 0))(
  ( (Unit!49222) )
))
(declare-fun lt!1044032 () Unit!49221)

(declare-fun mainMatchTheorem!1536 (Regex!9399 List!35264) Unit!49221)

(assert (=> b!3012020 (= lt!1044032 (mainMatchTheorem!1536 r!17423 s!11993))))

(declare-fun b!3012021 () Bool)

(declare-fun tp!955855 () Bool)

(declare-fun tp!955853 () Bool)

(assert (=> b!3012021 (= e!1891048 (and tp!955855 tp!955853))))

(declare-fun b!3012022 () Bool)

(declare-fun tp!955856 () Bool)

(declare-fun tp!955854 () Bool)

(assert (=> b!3012022 (= e!1891048 (and tp!955856 tp!955854))))

(declare-fun b!3012023 () Bool)

(declare-fun res!1241162 () Bool)

(assert (=> b!3012023 (=> res!1241162 e!1891049)))

(declare-fun isEmpty!19427 (List!35264) Bool)

(assert (=> b!3012023 (= res!1241162 (isEmpty!19427 s!11993))))

(declare-fun b!3012024 () Bool)

(declare-fun tp!955857 () Bool)

(assert (=> b!3012024 (= e!1891048 tp!955857)))

(declare-fun b!3012025 () Bool)

(declare-fun res!1241163 () Bool)

(assert (=> b!3012025 (=> res!1241163 e!1891049)))

(assert (=> b!3012025 (= res!1241163 (not (validRegex!4132 (regOne!19310 r!17423))))))

(assert (= (and start!290032 res!1241161) b!3012020))

(assert (= (and b!3012020 (not res!1241164)) b!3012023))

(assert (= (and b!3012023 (not res!1241162)) b!3012025))

(assert (= (and b!3012025 (not res!1241163)) b!3012018))

(assert (= (and start!290032 ((_ is ElementMatch!9399) r!17423)) b!3012017))

(assert (= (and start!290032 ((_ is Concat!14720) r!17423)) b!3012022))

(assert (= (and start!290032 ((_ is Star!9399) r!17423)) b!3012024))

(assert (= (and start!290032 ((_ is Union!9399) r!17423)) b!3012021))

(assert (= (and start!290032 ((_ is Cons!35140) s!11993)) b!3012019))

(declare-fun m!3357895 () Bool)

(assert (=> start!290032 m!3357895))

(declare-fun m!3357897 () Bool)

(assert (=> b!3012023 m!3357897))

(declare-fun m!3357899 () Bool)

(assert (=> b!3012018 m!3357899))

(declare-fun m!3357901 () Bool)

(assert (=> b!3012020 m!3357901))

(declare-fun m!3357903 () Bool)

(assert (=> b!3012020 m!3357903))

(declare-fun m!3357905 () Bool)

(assert (=> b!3012020 m!3357905))

(declare-fun m!3357907 () Bool)

(assert (=> b!3012025 m!3357907))

(check-sat (not b!3012020) (not b!3012018) (not b!3012021) (not start!290032) tp_is_empty!16361 (not b!3012024) (not b!3012022) (not b!3012025) (not b!3012019) (not b!3012023))
(check-sat)
(get-model)

(declare-fun d!847851 () Bool)

(assert (=> d!847851 (= (isEmpty!19427 s!11993) ((_ is Nil!35140) s!11993))))

(assert (=> b!3012023 d!847851))

(declare-fun b!3012067 () Bool)

(declare-fun e!1891084 () Bool)

(declare-fun e!1891082 () Bool)

(assert (=> b!3012067 (= e!1891084 e!1891082)))

(declare-fun c!496278 () Bool)

(assert (=> b!3012067 (= c!496278 ((_ is Star!9399) (regTwo!19310 r!17423)))))

(declare-fun call!203024 () Bool)

(declare-fun c!496279 () Bool)

(declare-fun bm!203018 () Bool)

(assert (=> bm!203018 (= call!203024 (validRegex!4132 (ite c!496278 (reg!9728 (regTwo!19310 r!17423)) (ite c!496279 (regOne!19311 (regTwo!19310 r!17423)) (regTwo!19310 (regTwo!19310 r!17423))))))))

(declare-fun b!3012068 () Bool)

(declare-fun e!1891080 () Bool)

(assert (=> b!3012068 (= e!1891082 e!1891080)))

(assert (=> b!3012068 (= c!496279 ((_ is Union!9399) (regTwo!19310 r!17423)))))

(declare-fun b!3012069 () Bool)

(declare-fun res!1241181 () Bool)

(declare-fun e!1891085 () Bool)

(assert (=> b!3012069 (=> (not res!1241181) (not e!1891085))))

(declare-fun call!203025 () Bool)

(assert (=> b!3012069 (= res!1241181 call!203025)))

(assert (=> b!3012069 (= e!1891080 e!1891085)))

(declare-fun b!3012070 () Bool)

(declare-fun e!1891083 () Bool)

(assert (=> b!3012070 (= e!1891083 call!203025)))

(declare-fun bm!203019 () Bool)

(declare-fun call!203023 () Bool)

(assert (=> bm!203019 (= call!203023 (validRegex!4132 (ite c!496279 (regTwo!19311 (regTwo!19310 r!17423)) (regOne!19310 (regTwo!19310 r!17423)))))))

(declare-fun b!3012066 () Bool)

(declare-fun res!1241185 () Bool)

(declare-fun e!1891086 () Bool)

(assert (=> b!3012066 (=> res!1241185 e!1891086)))

(assert (=> b!3012066 (= res!1241185 (not ((_ is Concat!14720) (regTwo!19310 r!17423))))))

(assert (=> b!3012066 (= e!1891080 e!1891086)))

(declare-fun d!847855 () Bool)

(declare-fun res!1241183 () Bool)

(assert (=> d!847855 (=> res!1241183 e!1891084)))

(assert (=> d!847855 (= res!1241183 ((_ is ElementMatch!9399) (regTwo!19310 r!17423)))))

(assert (=> d!847855 (= (validRegex!4132 (regTwo!19310 r!17423)) e!1891084)))

(declare-fun bm!203020 () Bool)

(assert (=> bm!203020 (= call!203025 call!203024)))

(declare-fun b!3012071 () Bool)

(declare-fun e!1891081 () Bool)

(assert (=> b!3012071 (= e!1891082 e!1891081)))

(declare-fun res!1241182 () Bool)

(declare-fun nullable!3051 (Regex!9399) Bool)

(assert (=> b!3012071 (= res!1241182 (not (nullable!3051 (reg!9728 (regTwo!19310 r!17423)))))))

(assert (=> b!3012071 (=> (not res!1241182) (not e!1891081))))

(declare-fun b!3012072 () Bool)

(assert (=> b!3012072 (= e!1891086 e!1891083)))

(declare-fun res!1241184 () Bool)

(assert (=> b!3012072 (=> (not res!1241184) (not e!1891083))))

(assert (=> b!3012072 (= res!1241184 call!203023)))

(declare-fun b!3012073 () Bool)

(assert (=> b!3012073 (= e!1891085 call!203023)))

(declare-fun b!3012074 () Bool)

(assert (=> b!3012074 (= e!1891081 call!203024)))

(assert (= (and d!847855 (not res!1241183)) b!3012067))

(assert (= (and b!3012067 c!496278) b!3012071))

(assert (= (and b!3012067 (not c!496278)) b!3012068))

(assert (= (and b!3012071 res!1241182) b!3012074))

(assert (= (and b!3012068 c!496279) b!3012069))

(assert (= (and b!3012068 (not c!496279)) b!3012066))

(assert (= (and b!3012069 res!1241181) b!3012073))

(assert (= (and b!3012066 (not res!1241185)) b!3012072))

(assert (= (and b!3012072 res!1241184) b!3012070))

(assert (= (or b!3012069 b!3012070) bm!203020))

(assert (= (or b!3012073 b!3012072) bm!203019))

(assert (= (or b!3012074 bm!203020) bm!203018))

(declare-fun m!3357909 () Bool)

(assert (=> bm!203018 m!3357909))

(declare-fun m!3357911 () Bool)

(assert (=> bm!203019 m!3357911))

(declare-fun m!3357913 () Bool)

(assert (=> b!3012071 m!3357913))

(assert (=> b!3012018 d!847855))

(declare-fun b!3012076 () Bool)

(declare-fun e!1891091 () Bool)

(declare-fun e!1891089 () Bool)

(assert (=> b!3012076 (= e!1891091 e!1891089)))

(declare-fun c!496280 () Bool)

(assert (=> b!3012076 (= c!496280 ((_ is Star!9399) r!17423))))

(declare-fun c!496281 () Bool)

(declare-fun call!203027 () Bool)

(declare-fun bm!203021 () Bool)

(assert (=> bm!203021 (= call!203027 (validRegex!4132 (ite c!496280 (reg!9728 r!17423) (ite c!496281 (regOne!19311 r!17423) (regTwo!19310 r!17423)))))))

(declare-fun b!3012077 () Bool)

(declare-fun e!1891087 () Bool)

(assert (=> b!3012077 (= e!1891089 e!1891087)))

(assert (=> b!3012077 (= c!496281 ((_ is Union!9399) r!17423))))

(declare-fun b!3012078 () Bool)

(declare-fun res!1241186 () Bool)

(declare-fun e!1891092 () Bool)

(assert (=> b!3012078 (=> (not res!1241186) (not e!1891092))))

(declare-fun call!203028 () Bool)

(assert (=> b!3012078 (= res!1241186 call!203028)))

(assert (=> b!3012078 (= e!1891087 e!1891092)))

(declare-fun b!3012079 () Bool)

(declare-fun e!1891090 () Bool)

(assert (=> b!3012079 (= e!1891090 call!203028)))

(declare-fun bm!203022 () Bool)

(declare-fun call!203026 () Bool)

(assert (=> bm!203022 (= call!203026 (validRegex!4132 (ite c!496281 (regTwo!19311 r!17423) (regOne!19310 r!17423))))))

(declare-fun b!3012075 () Bool)

(declare-fun res!1241190 () Bool)

(declare-fun e!1891093 () Bool)

(assert (=> b!3012075 (=> res!1241190 e!1891093)))

(assert (=> b!3012075 (= res!1241190 (not ((_ is Concat!14720) r!17423)))))

(assert (=> b!3012075 (= e!1891087 e!1891093)))

(declare-fun d!847857 () Bool)

(declare-fun res!1241188 () Bool)

(assert (=> d!847857 (=> res!1241188 e!1891091)))

(assert (=> d!847857 (= res!1241188 ((_ is ElementMatch!9399) r!17423))))

(assert (=> d!847857 (= (validRegex!4132 r!17423) e!1891091)))

(declare-fun bm!203023 () Bool)

(assert (=> bm!203023 (= call!203028 call!203027)))

(declare-fun b!3012080 () Bool)

(declare-fun e!1891088 () Bool)

(assert (=> b!3012080 (= e!1891089 e!1891088)))

(declare-fun res!1241187 () Bool)

(assert (=> b!3012080 (= res!1241187 (not (nullable!3051 (reg!9728 r!17423))))))

(assert (=> b!3012080 (=> (not res!1241187) (not e!1891088))))

(declare-fun b!3012081 () Bool)

(assert (=> b!3012081 (= e!1891093 e!1891090)))

(declare-fun res!1241189 () Bool)

(assert (=> b!3012081 (=> (not res!1241189) (not e!1891090))))

(assert (=> b!3012081 (= res!1241189 call!203026)))

(declare-fun b!3012082 () Bool)

(assert (=> b!3012082 (= e!1891092 call!203026)))

(declare-fun b!3012083 () Bool)

(assert (=> b!3012083 (= e!1891088 call!203027)))

(assert (= (and d!847857 (not res!1241188)) b!3012076))

(assert (= (and b!3012076 c!496280) b!3012080))

(assert (= (and b!3012076 (not c!496280)) b!3012077))

(assert (= (and b!3012080 res!1241187) b!3012083))

(assert (= (and b!3012077 c!496281) b!3012078))

(assert (= (and b!3012077 (not c!496281)) b!3012075))

(assert (= (and b!3012078 res!1241186) b!3012082))

(assert (= (and b!3012075 (not res!1241190)) b!3012081))

(assert (= (and b!3012081 res!1241189) b!3012079))

(assert (= (or b!3012078 b!3012079) bm!203023))

(assert (= (or b!3012082 b!3012081) bm!203022))

(assert (= (or b!3012083 bm!203023) bm!203021))

(declare-fun m!3357915 () Bool)

(assert (=> bm!203021 m!3357915))

(declare-fun m!3357917 () Bool)

(assert (=> bm!203022 m!3357917))

(declare-fun m!3357919 () Bool)

(assert (=> b!3012080 m!3357919))

(assert (=> start!290032 d!847857))

(declare-fun b!3012085 () Bool)

(declare-fun e!1891098 () Bool)

(declare-fun e!1891096 () Bool)

(assert (=> b!3012085 (= e!1891098 e!1891096)))

(declare-fun c!496282 () Bool)

(assert (=> b!3012085 (= c!496282 ((_ is Star!9399) (regOne!19310 r!17423)))))

(declare-fun call!203030 () Bool)

(declare-fun bm!203024 () Bool)

(declare-fun c!496283 () Bool)

(assert (=> bm!203024 (= call!203030 (validRegex!4132 (ite c!496282 (reg!9728 (regOne!19310 r!17423)) (ite c!496283 (regOne!19311 (regOne!19310 r!17423)) (regTwo!19310 (regOne!19310 r!17423))))))))

(declare-fun b!3012086 () Bool)

(declare-fun e!1891094 () Bool)

(assert (=> b!3012086 (= e!1891096 e!1891094)))

(assert (=> b!3012086 (= c!496283 ((_ is Union!9399) (regOne!19310 r!17423)))))

(declare-fun b!3012087 () Bool)

(declare-fun res!1241191 () Bool)

(declare-fun e!1891099 () Bool)

(assert (=> b!3012087 (=> (not res!1241191) (not e!1891099))))

(declare-fun call!203031 () Bool)

(assert (=> b!3012087 (= res!1241191 call!203031)))

(assert (=> b!3012087 (= e!1891094 e!1891099)))

(declare-fun b!3012088 () Bool)

(declare-fun e!1891097 () Bool)

(assert (=> b!3012088 (= e!1891097 call!203031)))

(declare-fun bm!203025 () Bool)

(declare-fun call!203029 () Bool)

(assert (=> bm!203025 (= call!203029 (validRegex!4132 (ite c!496283 (regTwo!19311 (regOne!19310 r!17423)) (regOne!19310 (regOne!19310 r!17423)))))))

(declare-fun b!3012084 () Bool)

(declare-fun res!1241195 () Bool)

(declare-fun e!1891100 () Bool)

(assert (=> b!3012084 (=> res!1241195 e!1891100)))

(assert (=> b!3012084 (= res!1241195 (not ((_ is Concat!14720) (regOne!19310 r!17423))))))

(assert (=> b!3012084 (= e!1891094 e!1891100)))

(declare-fun d!847859 () Bool)

(declare-fun res!1241193 () Bool)

(assert (=> d!847859 (=> res!1241193 e!1891098)))

(assert (=> d!847859 (= res!1241193 ((_ is ElementMatch!9399) (regOne!19310 r!17423)))))

(assert (=> d!847859 (= (validRegex!4132 (regOne!19310 r!17423)) e!1891098)))

(declare-fun bm!203026 () Bool)

(assert (=> bm!203026 (= call!203031 call!203030)))

(declare-fun b!3012089 () Bool)

(declare-fun e!1891095 () Bool)

(assert (=> b!3012089 (= e!1891096 e!1891095)))

(declare-fun res!1241192 () Bool)

(assert (=> b!3012089 (= res!1241192 (not (nullable!3051 (reg!9728 (regOne!19310 r!17423)))))))

(assert (=> b!3012089 (=> (not res!1241192) (not e!1891095))))

(declare-fun b!3012090 () Bool)

(assert (=> b!3012090 (= e!1891100 e!1891097)))

(declare-fun res!1241194 () Bool)

(assert (=> b!3012090 (=> (not res!1241194) (not e!1891097))))

(assert (=> b!3012090 (= res!1241194 call!203029)))

(declare-fun b!3012091 () Bool)

(assert (=> b!3012091 (= e!1891099 call!203029)))

(declare-fun b!3012092 () Bool)

(assert (=> b!3012092 (= e!1891095 call!203030)))

(assert (= (and d!847859 (not res!1241193)) b!3012085))

(assert (= (and b!3012085 c!496282) b!3012089))

(assert (= (and b!3012085 (not c!496282)) b!3012086))

(assert (= (and b!3012089 res!1241192) b!3012092))

(assert (= (and b!3012086 c!496283) b!3012087))

(assert (= (and b!3012086 (not c!496283)) b!3012084))

(assert (= (and b!3012087 res!1241191) b!3012091))

(assert (= (and b!3012084 (not res!1241195)) b!3012090))

(assert (= (and b!3012090 res!1241194) b!3012088))

(assert (= (or b!3012087 b!3012088) bm!203026))

(assert (= (or b!3012091 b!3012090) bm!203025))

(assert (= (or b!3012092 bm!203026) bm!203024))

(declare-fun m!3357921 () Bool)

(assert (=> bm!203024 m!3357921))

(declare-fun m!3357923 () Bool)

(assert (=> bm!203025 m!3357923))

(declare-fun m!3357925 () Bool)

(assert (=> b!3012089 m!3357925))

(assert (=> b!3012025 d!847859))

(declare-fun b!3012279 () Bool)

(assert (=> b!3012279 true))

(assert (=> b!3012279 true))

(declare-fun bs!529598 () Bool)

(declare-fun b!3012274 () Bool)

(assert (= bs!529598 (and b!3012274 b!3012279)))

(declare-fun lambda!112696 () Int)

(declare-fun lambda!112695 () Int)

(assert (=> bs!529598 (not (= lambda!112696 lambda!112695))))

(assert (=> b!3012274 true))

(assert (=> b!3012274 true))

(declare-fun b!3012272 () Bool)

(declare-fun e!1891200 () Bool)

(declare-fun call!203060 () Bool)

(assert (=> b!3012272 (= e!1891200 call!203060)))

(declare-fun b!3012273 () Bool)

(declare-fun e!1891197 () Bool)

(assert (=> b!3012273 (= e!1891197 (matchRSpec!1536 (regTwo!19311 r!17423) s!11993))))

(declare-fun e!1891196 () Bool)

(declare-fun call!203061 () Bool)

(assert (=> b!3012274 (= e!1891196 call!203061)))

(declare-fun bm!203055 () Bool)

(declare-fun c!496316 () Bool)

(declare-fun Exists!1667 (Int) Bool)

(assert (=> bm!203055 (= call!203061 (Exists!1667 (ite c!496316 lambda!112695 lambda!112696)))))

(declare-fun b!3012275 () Bool)

(declare-fun e!1891198 () Bool)

(assert (=> b!3012275 (= e!1891198 (= s!11993 (Cons!35140 (c!496265 r!17423) Nil!35140)))))

(declare-fun bm!203056 () Bool)

(assert (=> bm!203056 (= call!203060 (isEmpty!19427 s!11993))))

(declare-fun d!847861 () Bool)

(declare-fun c!496315 () Bool)

(assert (=> d!847861 (= c!496315 ((_ is EmptyExpr!9399) r!17423))))

(assert (=> d!847861 (= (matchRSpec!1536 r!17423 s!11993) e!1891200)))

(declare-fun b!3012276 () Bool)

(declare-fun e!1891199 () Bool)

(assert (=> b!3012276 (= e!1891199 e!1891197)))

(declare-fun res!1241275 () Bool)

(assert (=> b!3012276 (= res!1241275 (matchRSpec!1536 (regOne!19311 r!17423) s!11993))))

(assert (=> b!3012276 (=> res!1241275 e!1891197)))

(declare-fun b!3012277 () Bool)

(declare-fun c!496317 () Bool)

(assert (=> b!3012277 (= c!496317 ((_ is ElementMatch!9399) r!17423))))

(declare-fun e!1891201 () Bool)

(assert (=> b!3012277 (= e!1891201 e!1891198)))

(declare-fun b!3012278 () Bool)

(assert (=> b!3012278 (= e!1891200 e!1891201)))

(declare-fun res!1241276 () Bool)

(assert (=> b!3012278 (= res!1241276 (not ((_ is EmptyLang!9399) r!17423)))))

(assert (=> b!3012278 (=> (not res!1241276) (not e!1891201))))

(declare-fun e!1891202 () Bool)

(assert (=> b!3012279 (= e!1891202 call!203061)))

(declare-fun b!3012280 () Bool)

(declare-fun c!496318 () Bool)

(assert (=> b!3012280 (= c!496318 ((_ is Union!9399) r!17423))))

(assert (=> b!3012280 (= e!1891198 e!1891199)))

(declare-fun b!3012281 () Bool)

(declare-fun res!1241274 () Bool)

(assert (=> b!3012281 (=> res!1241274 e!1891202)))

(assert (=> b!3012281 (= res!1241274 call!203060)))

(assert (=> b!3012281 (= e!1891196 e!1891202)))

(declare-fun b!3012282 () Bool)

(assert (=> b!3012282 (= e!1891199 e!1891196)))

(assert (=> b!3012282 (= c!496316 ((_ is Star!9399) r!17423))))

(assert (= (and d!847861 c!496315) b!3012272))

(assert (= (and d!847861 (not c!496315)) b!3012278))

(assert (= (and b!3012278 res!1241276) b!3012277))

(assert (= (and b!3012277 c!496317) b!3012275))

(assert (= (and b!3012277 (not c!496317)) b!3012280))

(assert (= (and b!3012280 c!496318) b!3012276))

(assert (= (and b!3012280 (not c!496318)) b!3012282))

(assert (= (and b!3012276 (not res!1241275)) b!3012273))

(assert (= (and b!3012282 c!496316) b!3012281))

(assert (= (and b!3012282 (not c!496316)) b!3012274))

(assert (= (and b!3012281 (not res!1241274)) b!3012279))

(assert (= (or b!3012279 b!3012274) bm!203055))

(assert (= (or b!3012272 b!3012281) bm!203056))

(declare-fun m!3357965 () Bool)

(assert (=> b!3012273 m!3357965))

(declare-fun m!3357967 () Bool)

(assert (=> bm!203055 m!3357967))

(assert (=> bm!203056 m!3357897))

(declare-fun m!3357969 () Bool)

(assert (=> b!3012276 m!3357969))

(assert (=> b!3012020 d!847861))

(declare-fun b!3012315 () Bool)

(declare-fun e!1891221 () Bool)

(declare-fun head!6708 (List!35264) C!18984)

(assert (=> b!3012315 (= e!1891221 (= (head!6708 s!11993) (c!496265 r!17423)))))

(declare-fun b!3012316 () Bool)

(declare-fun e!1891218 () Bool)

(declare-fun e!1891217 () Bool)

(assert (=> b!3012316 (= e!1891218 e!1891217)))

(declare-fun res!1241296 () Bool)

(assert (=> b!3012316 (=> (not res!1241296) (not e!1891217))))

(declare-fun lt!1044041 () Bool)

(assert (=> b!3012316 (= res!1241296 (not lt!1044041))))

(declare-fun b!3012317 () Bool)

(declare-fun e!1891219 () Bool)

(assert (=> b!3012317 (= e!1891219 (not (= (head!6708 s!11993) (c!496265 r!17423))))))

(declare-fun b!3012318 () Bool)

(declare-fun e!1891223 () Bool)

(declare-fun call!203064 () Bool)

(assert (=> b!3012318 (= e!1891223 (= lt!1044041 call!203064))))

(declare-fun b!3012319 () Bool)

(declare-fun res!1241298 () Bool)

(assert (=> b!3012319 (=> (not res!1241298) (not e!1891221))))

(declare-fun tail!4934 (List!35264) List!35264)

(assert (=> b!3012319 (= res!1241298 (isEmpty!19427 (tail!4934 s!11993)))))

(declare-fun b!3012320 () Bool)

(declare-fun res!1241294 () Bool)

(assert (=> b!3012320 (=> res!1241294 e!1891218)))

(assert (=> b!3012320 (= res!1241294 e!1891221)))

(declare-fun res!1241297 () Bool)

(assert (=> b!3012320 (=> (not res!1241297) (not e!1891221))))

(assert (=> b!3012320 (= res!1241297 lt!1044041)))

(declare-fun b!3012321 () Bool)

(declare-fun res!1241293 () Bool)

(assert (=> b!3012321 (=> res!1241293 e!1891219)))

(assert (=> b!3012321 (= res!1241293 (not (isEmpty!19427 (tail!4934 s!11993))))))

(declare-fun b!3012322 () Bool)

(declare-fun res!1241300 () Bool)

(assert (=> b!3012322 (=> (not res!1241300) (not e!1891221))))

(assert (=> b!3012322 (= res!1241300 (not call!203064))))

(declare-fun b!3012323 () Bool)

(declare-fun res!1241295 () Bool)

(assert (=> b!3012323 (=> res!1241295 e!1891218)))

(assert (=> b!3012323 (= res!1241295 (not ((_ is ElementMatch!9399) r!17423)))))

(declare-fun e!1891220 () Bool)

(assert (=> b!3012323 (= e!1891220 e!1891218)))

(declare-fun b!3012324 () Bool)

(assert (=> b!3012324 (= e!1891223 e!1891220)))

(declare-fun c!496327 () Bool)

(assert (=> b!3012324 (= c!496327 ((_ is EmptyLang!9399) r!17423))))

(declare-fun b!3012325 () Bool)

(assert (=> b!3012325 (= e!1891220 (not lt!1044041))))

(declare-fun bm!203059 () Bool)

(assert (=> bm!203059 (= call!203064 (isEmpty!19427 s!11993))))

(declare-fun b!3012326 () Bool)

(declare-fun e!1891222 () Bool)

(declare-fun derivativeStep!2649 (Regex!9399 C!18984) Regex!9399)

(assert (=> b!3012326 (= e!1891222 (matchR!4281 (derivativeStep!2649 r!17423 (head!6708 s!11993)) (tail!4934 s!11993)))))

(declare-fun b!3012327 () Bool)

(assert (=> b!3012327 (= e!1891222 (nullable!3051 r!17423))))

(declare-fun b!3012328 () Bool)

(assert (=> b!3012328 (= e!1891217 e!1891219)))

(declare-fun res!1241299 () Bool)

(assert (=> b!3012328 (=> res!1241299 e!1891219)))

(assert (=> b!3012328 (= res!1241299 call!203064)))

(declare-fun d!847875 () Bool)

(assert (=> d!847875 e!1891223))

(declare-fun c!496325 () Bool)

(assert (=> d!847875 (= c!496325 ((_ is EmptyExpr!9399) r!17423))))

(assert (=> d!847875 (= lt!1044041 e!1891222)))

(declare-fun c!496326 () Bool)

(assert (=> d!847875 (= c!496326 (isEmpty!19427 s!11993))))

(assert (=> d!847875 (validRegex!4132 r!17423)))

(assert (=> d!847875 (= (matchR!4281 r!17423 s!11993) lt!1044041)))

(assert (= (and d!847875 c!496326) b!3012327))

(assert (= (and d!847875 (not c!496326)) b!3012326))

(assert (= (and d!847875 c!496325) b!3012318))

(assert (= (and d!847875 (not c!496325)) b!3012324))

(assert (= (and b!3012324 c!496327) b!3012325))

(assert (= (and b!3012324 (not c!496327)) b!3012323))

(assert (= (and b!3012323 (not res!1241295)) b!3012320))

(assert (= (and b!3012320 res!1241297) b!3012322))

(assert (= (and b!3012322 res!1241300) b!3012319))

(assert (= (and b!3012319 res!1241298) b!3012315))

(assert (= (and b!3012320 (not res!1241294)) b!3012316))

(assert (= (and b!3012316 res!1241296) b!3012328))

(assert (= (and b!3012328 (not res!1241299)) b!3012321))

(assert (= (and b!3012321 (not res!1241293)) b!3012317))

(assert (= (or b!3012318 b!3012322 b!3012328) bm!203059))

(declare-fun m!3357971 () Bool)

(assert (=> b!3012326 m!3357971))

(assert (=> b!3012326 m!3357971))

(declare-fun m!3357973 () Bool)

(assert (=> b!3012326 m!3357973))

(declare-fun m!3357975 () Bool)

(assert (=> b!3012326 m!3357975))

(assert (=> b!3012326 m!3357973))

(assert (=> b!3012326 m!3357975))

(declare-fun m!3357977 () Bool)

(assert (=> b!3012326 m!3357977))

(assert (=> bm!203059 m!3357897))

(assert (=> b!3012315 m!3357971))

(declare-fun m!3357979 () Bool)

(assert (=> b!3012327 m!3357979))

(assert (=> b!3012321 m!3357975))

(assert (=> b!3012321 m!3357975))

(declare-fun m!3357981 () Bool)

(assert (=> b!3012321 m!3357981))

(assert (=> b!3012319 m!3357975))

(assert (=> b!3012319 m!3357975))

(assert (=> b!3012319 m!3357981))

(assert (=> b!3012317 m!3357971))

(assert (=> d!847875 m!3357897))

(assert (=> d!847875 m!3357895))

(assert (=> b!3012020 d!847875))

(declare-fun d!847877 () Bool)

(assert (=> d!847877 (= (matchR!4281 r!17423 s!11993) (matchRSpec!1536 r!17423 s!11993))))

(declare-fun lt!1044044 () Unit!49221)

(declare-fun choose!17882 (Regex!9399 List!35264) Unit!49221)

(assert (=> d!847877 (= lt!1044044 (choose!17882 r!17423 s!11993))))

(assert (=> d!847877 (validRegex!4132 r!17423)))

(assert (=> d!847877 (= (mainMatchTheorem!1536 r!17423 s!11993) lt!1044044)))

(declare-fun bs!529599 () Bool)

(assert (= bs!529599 d!847877))

(assert (=> bs!529599 m!3357903))

(assert (=> bs!529599 m!3357901))

(declare-fun m!3357983 () Bool)

(assert (=> bs!529599 m!3357983))

(assert (=> bs!529599 m!3357895))

(assert (=> b!3012020 d!847877))

(declare-fun b!3012342 () Bool)

(declare-fun e!1891226 () Bool)

(declare-fun tp!955910 () Bool)

(declare-fun tp!955908 () Bool)

(assert (=> b!3012342 (= e!1891226 (and tp!955910 tp!955908))))

(declare-fun b!3012341 () Bool)

(declare-fun tp!955906 () Bool)

(assert (=> b!3012341 (= e!1891226 tp!955906)))

(declare-fun b!3012340 () Bool)

(declare-fun tp!955907 () Bool)

(declare-fun tp!955909 () Bool)

(assert (=> b!3012340 (= e!1891226 (and tp!955907 tp!955909))))

(assert (=> b!3012024 (= tp!955857 e!1891226)))

(declare-fun b!3012339 () Bool)

(assert (=> b!3012339 (= e!1891226 tp_is_empty!16361)))

(assert (= (and b!3012024 ((_ is ElementMatch!9399) (reg!9728 r!17423))) b!3012339))

(assert (= (and b!3012024 ((_ is Concat!14720) (reg!9728 r!17423))) b!3012340))

(assert (= (and b!3012024 ((_ is Star!9399) (reg!9728 r!17423))) b!3012341))

(assert (= (and b!3012024 ((_ is Union!9399) (reg!9728 r!17423))) b!3012342))

(declare-fun b!3012346 () Bool)

(declare-fun e!1891227 () Bool)

(declare-fun tp!955915 () Bool)

(declare-fun tp!955913 () Bool)

(assert (=> b!3012346 (= e!1891227 (and tp!955915 tp!955913))))

(declare-fun b!3012345 () Bool)

(declare-fun tp!955911 () Bool)

(assert (=> b!3012345 (= e!1891227 tp!955911)))

(declare-fun b!3012344 () Bool)

(declare-fun tp!955912 () Bool)

(declare-fun tp!955914 () Bool)

(assert (=> b!3012344 (= e!1891227 (and tp!955912 tp!955914))))

(assert (=> b!3012022 (= tp!955856 e!1891227)))

(declare-fun b!3012343 () Bool)

(assert (=> b!3012343 (= e!1891227 tp_is_empty!16361)))

(assert (= (and b!3012022 ((_ is ElementMatch!9399) (regOne!19310 r!17423))) b!3012343))

(assert (= (and b!3012022 ((_ is Concat!14720) (regOne!19310 r!17423))) b!3012344))

(assert (= (and b!3012022 ((_ is Star!9399) (regOne!19310 r!17423))) b!3012345))

(assert (= (and b!3012022 ((_ is Union!9399) (regOne!19310 r!17423))) b!3012346))

(declare-fun b!3012350 () Bool)

(declare-fun e!1891228 () Bool)

(declare-fun tp!955920 () Bool)

(declare-fun tp!955918 () Bool)

(assert (=> b!3012350 (= e!1891228 (and tp!955920 tp!955918))))

(declare-fun b!3012349 () Bool)

(declare-fun tp!955916 () Bool)

(assert (=> b!3012349 (= e!1891228 tp!955916)))

(declare-fun b!3012348 () Bool)

(declare-fun tp!955917 () Bool)

(declare-fun tp!955919 () Bool)

(assert (=> b!3012348 (= e!1891228 (and tp!955917 tp!955919))))

(assert (=> b!3012022 (= tp!955854 e!1891228)))

(declare-fun b!3012347 () Bool)

(assert (=> b!3012347 (= e!1891228 tp_is_empty!16361)))

(assert (= (and b!3012022 ((_ is ElementMatch!9399) (regTwo!19310 r!17423))) b!3012347))

(assert (= (and b!3012022 ((_ is Concat!14720) (regTwo!19310 r!17423))) b!3012348))

(assert (= (and b!3012022 ((_ is Star!9399) (regTwo!19310 r!17423))) b!3012349))

(assert (= (and b!3012022 ((_ is Union!9399) (regTwo!19310 r!17423))) b!3012350))

(declare-fun b!3012354 () Bool)

(declare-fun e!1891229 () Bool)

(declare-fun tp!955925 () Bool)

(declare-fun tp!955923 () Bool)

(assert (=> b!3012354 (= e!1891229 (and tp!955925 tp!955923))))

(declare-fun b!3012353 () Bool)

(declare-fun tp!955921 () Bool)

(assert (=> b!3012353 (= e!1891229 tp!955921)))

(declare-fun b!3012352 () Bool)

(declare-fun tp!955922 () Bool)

(declare-fun tp!955924 () Bool)

(assert (=> b!3012352 (= e!1891229 (and tp!955922 tp!955924))))

(assert (=> b!3012021 (= tp!955855 e!1891229)))

(declare-fun b!3012351 () Bool)

(assert (=> b!3012351 (= e!1891229 tp_is_empty!16361)))

(assert (= (and b!3012021 ((_ is ElementMatch!9399) (regOne!19311 r!17423))) b!3012351))

(assert (= (and b!3012021 ((_ is Concat!14720) (regOne!19311 r!17423))) b!3012352))

(assert (= (and b!3012021 ((_ is Star!9399) (regOne!19311 r!17423))) b!3012353))

(assert (= (and b!3012021 ((_ is Union!9399) (regOne!19311 r!17423))) b!3012354))

(declare-fun b!3012358 () Bool)

(declare-fun e!1891230 () Bool)

(declare-fun tp!955930 () Bool)

(declare-fun tp!955928 () Bool)

(assert (=> b!3012358 (= e!1891230 (and tp!955930 tp!955928))))

(declare-fun b!3012357 () Bool)

(declare-fun tp!955926 () Bool)

(assert (=> b!3012357 (= e!1891230 tp!955926)))

(declare-fun b!3012356 () Bool)

(declare-fun tp!955927 () Bool)

(declare-fun tp!955929 () Bool)

(assert (=> b!3012356 (= e!1891230 (and tp!955927 tp!955929))))

(assert (=> b!3012021 (= tp!955853 e!1891230)))

(declare-fun b!3012355 () Bool)

(assert (=> b!3012355 (= e!1891230 tp_is_empty!16361)))

(assert (= (and b!3012021 ((_ is ElementMatch!9399) (regTwo!19311 r!17423))) b!3012355))

(assert (= (and b!3012021 ((_ is Concat!14720) (regTwo!19311 r!17423))) b!3012356))

(assert (= (and b!3012021 ((_ is Star!9399) (regTwo!19311 r!17423))) b!3012357))

(assert (= (and b!3012021 ((_ is Union!9399) (regTwo!19311 r!17423))) b!3012358))

(declare-fun b!3012363 () Bool)

(declare-fun e!1891233 () Bool)

(declare-fun tp!955933 () Bool)

(assert (=> b!3012363 (= e!1891233 (and tp_is_empty!16361 tp!955933))))

(assert (=> b!3012019 (= tp!955852 e!1891233)))

(assert (= (and b!3012019 ((_ is Cons!35140) (t!234329 s!11993))) b!3012363))

(check-sat (not b!3012346) (not b!3012327) (not b!3012321) (not b!3012350) (not bm!203019) (not b!3012273) (not b!3012276) (not b!3012358) (not b!3012353) (not b!3012080) (not b!3012089) (not bm!203055) (not b!3012341) (not b!3012326) (not b!3012357) (not b!3012348) (not bm!203022) (not d!847875) (not b!3012352) (not bm!203021) (not b!3012344) (not b!3012342) (not b!3012315) (not bm!203025) (not b!3012354) (not b!3012345) (not b!3012349) (not b!3012319) (not b!3012363) (not bm!203018) (not b!3012340) (not bm!203059) (not b!3012317) (not bm!203024) (not b!3012071) (not d!847877) tp_is_empty!16361 (not b!3012356) (not bm!203056))
(check-sat)
