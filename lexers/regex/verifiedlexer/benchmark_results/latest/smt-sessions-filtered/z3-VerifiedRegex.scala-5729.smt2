; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284548 () Bool)

(assert start!284548)

(declare-fun b!2923916 () Bool)

(declare-fun e!1844415 () Bool)

(declare-fun tp_is_empty!15581 () Bool)

(declare-fun tp!937864 () Bool)

(assert (=> b!2923916 (= e!1844415 (and tp_is_empty!15581 tp!937864))))

(declare-fun b!2923917 () Bool)

(declare-fun e!1844416 () Bool)

(declare-fun e!1844417 () Bool)

(assert (=> b!2923917 (= e!1844416 (not e!1844417))))

(declare-fun res!1206933 () Bool)

(assert (=> b!2923917 (=> res!1206933 e!1844417)))

(declare-fun lt!1026275 () Bool)

(declare-datatypes ((C!18204 0))(
  ( (C!18205 (val!11138 Int)) )
))
(declare-datatypes ((Regex!9009 0))(
  ( (ElementMatch!9009 (c!477317 C!18204)) (Concat!14330 (regOne!18530 Regex!9009) (regTwo!18530 Regex!9009)) (EmptyExpr!9009) (Star!9009 (reg!9338 Regex!9009)) (EmptyLang!9009) (Union!9009 (regOne!18531 Regex!9009) (regTwo!18531 Regex!9009)) )
))
(declare-fun r!17423 () Regex!9009)

(get-info :version)

(assert (=> b!2923917 (= res!1206933 (or (not lt!1026275) ((_ is Concat!14330) r!17423) (not ((_ is Union!9009) r!17423))))))

(declare-datatypes ((List!34874 0))(
  ( (Nil!34750) (Cons!34750 (h!40170 C!18204) (t!233939 List!34874)) )
))
(declare-fun s!11993 () List!34874)

(declare-fun matchRSpec!1146 (Regex!9009 List!34874) Bool)

(assert (=> b!2923917 (= lt!1026275 (matchRSpec!1146 r!17423 s!11993))))

(declare-fun matchR!3891 (Regex!9009 List!34874) Bool)

(assert (=> b!2923917 (= lt!1026275 (matchR!3891 r!17423 s!11993))))

(declare-datatypes ((Unit!48357 0))(
  ( (Unit!48358) )
))
(declare-fun lt!1026268 () Unit!48357)

(declare-fun mainMatchTheorem!1146 (Regex!9009 List!34874) Unit!48357)

(assert (=> b!2923917 (= lt!1026268 (mainMatchTheorem!1146 r!17423 s!11993))))

(declare-fun b!2923918 () Bool)

(declare-fun e!1844413 () Bool)

(assert (=> b!2923918 (= e!1844417 e!1844413)))

(declare-fun res!1206934 () Bool)

(assert (=> b!2923918 (=> res!1206934 e!1844413)))

(declare-fun lt!1026272 () Bool)

(assert (=> b!2923918 (= res!1206934 lt!1026272)))

(declare-fun e!1844418 () Bool)

(assert (=> b!2923918 e!1844418))

(declare-fun res!1206930 () Bool)

(assert (=> b!2923918 (=> res!1206930 e!1844418)))

(assert (=> b!2923918 (= res!1206930 lt!1026272)))

(assert (=> b!2923918 (= lt!1026272 (matchR!3891 (regOne!18531 r!17423) s!11993))))

(declare-fun lt!1026273 () Unit!48357)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!258 (Regex!9009 Regex!9009 List!34874) Unit!48357)

(assert (=> b!2923918 (= lt!1026273 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!258 (regOne!18531 r!17423) (regTwo!18531 r!17423) s!11993))))

(declare-fun b!2923919 () Bool)

(assert (=> b!2923919 (= e!1844418 (matchR!3891 (regTwo!18531 r!17423) s!11993))))

(declare-fun b!2923920 () Bool)

(declare-fun e!1844419 () Bool)

(declare-fun tp!937862 () Bool)

(assert (=> b!2923920 (= e!1844419 tp!937862)))

(declare-fun b!2923921 () Bool)

(declare-fun tp!937865 () Bool)

(declare-fun tp!937863 () Bool)

(assert (=> b!2923921 (= e!1844419 (and tp!937865 tp!937863))))

(declare-fun b!2923922 () Bool)

(declare-fun e!1844414 () Bool)

(declare-fun validRegex!3742 (Regex!9009) Bool)

(assert (=> b!2923922 (= e!1844414 (validRegex!3742 (regOne!18531 r!17423)))))

(declare-fun b!2923923 () Bool)

(assert (=> b!2923923 (= e!1844413 e!1844414)))

(declare-fun res!1206932 () Bool)

(assert (=> b!2923923 (=> res!1206932 e!1844414)))

(declare-fun lt!1026271 () Bool)

(assert (=> b!2923923 (= res!1206932 (not lt!1026271))))

(declare-fun lt!1026274 () Bool)

(assert (=> b!2923923 (= lt!1026274 lt!1026271)))

(declare-fun lt!1026269 () Regex!9009)

(assert (=> b!2923923 (= lt!1026271 (matchR!3891 lt!1026269 s!11993))))

(assert (=> b!2923923 (= lt!1026274 (matchR!3891 (regTwo!18531 r!17423) s!11993))))

(declare-fun simplify!38 (Regex!9009) Regex!9009)

(assert (=> b!2923923 (= lt!1026269 (simplify!38 (regTwo!18531 r!17423)))))

(declare-fun lt!1026270 () Unit!48357)

(declare-fun lemmaSimplifySound!36 (Regex!9009 List!34874) Unit!48357)

(assert (=> b!2923923 (= lt!1026270 (lemmaSimplifySound!36 (regTwo!18531 r!17423) s!11993))))

(declare-fun res!1206931 () Bool)

(assert (=> start!284548 (=> (not res!1206931) (not e!1844416))))

(assert (=> start!284548 (= res!1206931 (validRegex!3742 r!17423))))

(assert (=> start!284548 e!1844416))

(assert (=> start!284548 e!1844419))

(assert (=> start!284548 e!1844415))

(declare-fun b!2923924 () Bool)

(declare-fun tp!937860 () Bool)

(declare-fun tp!937861 () Bool)

(assert (=> b!2923924 (= e!1844419 (and tp!937860 tp!937861))))

(declare-fun b!2923925 () Bool)

(assert (=> b!2923925 (= e!1844419 tp_is_empty!15581)))

(assert (= (and start!284548 res!1206931) b!2923917))

(assert (= (and b!2923917 (not res!1206933)) b!2923918))

(assert (= (and b!2923918 (not res!1206930)) b!2923919))

(assert (= (and b!2923918 (not res!1206934)) b!2923923))

(assert (= (and b!2923923 (not res!1206932)) b!2923922))

(assert (= (and start!284548 ((_ is ElementMatch!9009) r!17423)) b!2923925))

(assert (= (and start!284548 ((_ is Concat!14330) r!17423)) b!2923921))

(assert (= (and start!284548 ((_ is Star!9009) r!17423)) b!2923920))

(assert (= (and start!284548 ((_ is Union!9009) r!17423)) b!2923924))

(assert (= (and start!284548 ((_ is Cons!34750) s!11993)) b!2923916))

(declare-fun m!3318087 () Bool)

(assert (=> b!2923919 m!3318087))

(declare-fun m!3318089 () Bool)

(assert (=> b!2923918 m!3318089))

(declare-fun m!3318091 () Bool)

(assert (=> b!2923918 m!3318091))

(declare-fun m!3318093 () Bool)

(assert (=> b!2923923 m!3318093))

(assert (=> b!2923923 m!3318087))

(declare-fun m!3318095 () Bool)

(assert (=> b!2923923 m!3318095))

(declare-fun m!3318097 () Bool)

(assert (=> b!2923923 m!3318097))

(declare-fun m!3318099 () Bool)

(assert (=> start!284548 m!3318099))

(declare-fun m!3318101 () Bool)

(assert (=> b!2923917 m!3318101))

(declare-fun m!3318103 () Bool)

(assert (=> b!2923917 m!3318103))

(declare-fun m!3318105 () Bool)

(assert (=> b!2923917 m!3318105))

(declare-fun m!3318107 () Bool)

(assert (=> b!2923922 m!3318107))

(check-sat (not start!284548) (not b!2923923) (not b!2923919) (not b!2923922) (not b!2923916) tp_is_empty!15581 (not b!2923918) (not b!2923924) (not b!2923917) (not b!2923920) (not b!2923921))
(check-sat)
(get-model)

(declare-fun b!2924187 () Bool)

(assert (=> b!2924187 true))

(assert (=> b!2924187 true))

(declare-fun bs!524997 () Bool)

(declare-fun b!2924184 () Bool)

(assert (= bs!524997 (and b!2924184 b!2924187)))

(declare-fun lambda!108714 () Int)

(declare-fun lambda!108713 () Int)

(assert (=> bs!524997 (not (= lambda!108714 lambda!108713))))

(assert (=> b!2924184 true))

(assert (=> b!2924184 true))

(declare-fun b!2924181 () Bool)

(declare-fun e!1844572 () Bool)

(declare-fun e!1844570 () Bool)

(assert (=> b!2924181 (= e!1844572 e!1844570)))

(declare-fun c!477387 () Bool)

(assert (=> b!2924181 (= c!477387 ((_ is Star!9009) r!17423))))

(declare-fun b!2924182 () Bool)

(declare-fun e!1844573 () Bool)

(assert (=> b!2924182 (= e!1844573 (= s!11993 (Cons!34750 (c!477317 r!17423) Nil!34750)))))

(declare-fun b!2924183 () Bool)

(declare-fun e!1844571 () Bool)

(assert (=> b!2924183 (= e!1844571 (matchRSpec!1146 (regTwo!18531 r!17423) s!11993))))

(declare-fun call!191620 () Bool)

(assert (=> b!2924184 (= e!1844570 call!191620)))

(declare-fun b!2924185 () Bool)

(declare-fun c!477388 () Bool)

(assert (=> b!2924185 (= c!477388 ((_ is ElementMatch!9009) r!17423))))

(declare-fun e!1844569 () Bool)

(assert (=> b!2924185 (= e!1844569 e!1844573)))

(declare-fun b!2924186 () Bool)

(declare-fun e!1844567 () Bool)

(declare-fun call!191619 () Bool)

(assert (=> b!2924186 (= e!1844567 call!191619)))

(declare-fun e!1844568 () Bool)

(assert (=> b!2924187 (= e!1844568 call!191620)))

(declare-fun d!838768 () Bool)

(declare-fun c!477389 () Bool)

(assert (=> d!838768 (= c!477389 ((_ is EmptyExpr!9009) r!17423))))

(assert (=> d!838768 (= (matchRSpec!1146 r!17423 s!11993) e!1844567)))

(declare-fun bm!191614 () Bool)

(declare-fun isEmpty!18999 (List!34874) Bool)

(assert (=> bm!191614 (= call!191619 (isEmpty!18999 s!11993))))

(declare-fun b!2924188 () Bool)

(declare-fun res!1207050 () Bool)

(assert (=> b!2924188 (=> res!1207050 e!1844568)))

(assert (=> b!2924188 (= res!1207050 call!191619)))

(assert (=> b!2924188 (= e!1844570 e!1844568)))

(declare-fun bm!191615 () Bool)

(declare-fun Exists!1379 (Int) Bool)

(assert (=> bm!191615 (= call!191620 (Exists!1379 (ite c!477387 lambda!108713 lambda!108714)))))

(declare-fun b!2924189 () Bool)

(assert (=> b!2924189 (= e!1844567 e!1844569)))

(declare-fun res!1207051 () Bool)

(assert (=> b!2924189 (= res!1207051 (not ((_ is EmptyLang!9009) r!17423)))))

(assert (=> b!2924189 (=> (not res!1207051) (not e!1844569))))

(declare-fun b!2924190 () Bool)

(declare-fun c!477386 () Bool)

(assert (=> b!2924190 (= c!477386 ((_ is Union!9009) r!17423))))

(assert (=> b!2924190 (= e!1844573 e!1844572)))

(declare-fun b!2924191 () Bool)

(assert (=> b!2924191 (= e!1844572 e!1844571)))

(declare-fun res!1207052 () Bool)

(assert (=> b!2924191 (= res!1207052 (matchRSpec!1146 (regOne!18531 r!17423) s!11993))))

(assert (=> b!2924191 (=> res!1207052 e!1844571)))

(assert (= (and d!838768 c!477389) b!2924186))

(assert (= (and d!838768 (not c!477389)) b!2924189))

(assert (= (and b!2924189 res!1207051) b!2924185))

(assert (= (and b!2924185 c!477388) b!2924182))

(assert (= (and b!2924185 (not c!477388)) b!2924190))

(assert (= (and b!2924190 c!477386) b!2924191))

(assert (= (and b!2924190 (not c!477386)) b!2924181))

(assert (= (and b!2924191 (not res!1207052)) b!2924183))

(assert (= (and b!2924181 c!477387) b!2924188))

(assert (= (and b!2924181 (not c!477387)) b!2924184))

(assert (= (and b!2924188 (not res!1207050)) b!2924187))

(assert (= (or b!2924187 b!2924184) bm!191615))

(assert (= (or b!2924186 b!2924188) bm!191614))

(declare-fun m!3318167 () Bool)

(assert (=> b!2924183 m!3318167))

(declare-fun m!3318169 () Bool)

(assert (=> bm!191614 m!3318169))

(declare-fun m!3318171 () Bool)

(assert (=> bm!191615 m!3318171))

(declare-fun m!3318173 () Bool)

(assert (=> b!2924191 m!3318173))

(assert (=> b!2923917 d!838768))

(declare-fun b!2924284 () Bool)

(declare-fun res!1207077 () Bool)

(declare-fun e!1844615 () Bool)

(assert (=> b!2924284 (=> (not res!1207077) (not e!1844615))))

(declare-fun tail!4728 (List!34874) List!34874)

(assert (=> b!2924284 (= res!1207077 (isEmpty!18999 (tail!4728 s!11993)))))

(declare-fun b!2924285 () Bool)

(declare-fun res!1207078 () Bool)

(declare-fun e!1844614 () Bool)

(assert (=> b!2924285 (=> res!1207078 e!1844614)))

(assert (=> b!2924285 (= res!1207078 (not (isEmpty!18999 (tail!4728 s!11993))))))

(declare-fun b!2924286 () Bool)

(declare-fun head!6502 (List!34874) C!18204)

(assert (=> b!2924286 (= e!1844615 (= (head!6502 s!11993) (c!477317 r!17423)))))

(declare-fun b!2924287 () Bool)

(declare-fun e!1844618 () Bool)

(declare-fun e!1844612 () Bool)

(assert (=> b!2924287 (= e!1844618 e!1844612)))

(declare-fun c!477409 () Bool)

(assert (=> b!2924287 (= c!477409 ((_ is EmptyLang!9009) r!17423))))

(declare-fun b!2924288 () Bool)

(declare-fun e!1844616 () Bool)

(assert (=> b!2924288 (= e!1844616 e!1844614)))

(declare-fun res!1207073 () Bool)

(assert (=> b!2924288 (=> res!1207073 e!1844614)))

(declare-fun call!191630 () Bool)

(assert (=> b!2924288 (= res!1207073 call!191630)))

(declare-fun b!2924289 () Bool)

(declare-fun e!1844617 () Bool)

(declare-fun nullable!2829 (Regex!9009) Bool)

(assert (=> b!2924289 (= e!1844617 (nullable!2829 r!17423))))

(declare-fun b!2924290 () Bool)

(assert (=> b!2924290 (= e!1844614 (not (= (head!6502 s!11993) (c!477317 r!17423))))))

(declare-fun b!2924292 () Bool)

(declare-fun derivativeStep!2443 (Regex!9009 C!18204) Regex!9009)

(assert (=> b!2924292 (= e!1844617 (matchR!3891 (derivativeStep!2443 r!17423 (head!6502 s!11993)) (tail!4728 s!11993)))))

(declare-fun bm!191625 () Bool)

(assert (=> bm!191625 (= call!191630 (isEmpty!18999 s!11993))))

(declare-fun b!2924293 () Bool)

(declare-fun lt!1026311 () Bool)

(assert (=> b!2924293 (= e!1844612 (not lt!1026311))))

(declare-fun d!838788 () Bool)

(assert (=> d!838788 e!1844618))

(declare-fun c!477408 () Bool)

(assert (=> d!838788 (= c!477408 ((_ is EmptyExpr!9009) r!17423))))

(assert (=> d!838788 (= lt!1026311 e!1844617)))

(declare-fun c!477407 () Bool)

(assert (=> d!838788 (= c!477407 (isEmpty!18999 s!11993))))

(assert (=> d!838788 (validRegex!3742 r!17423)))

(assert (=> d!838788 (= (matchR!3891 r!17423 s!11993) lt!1026311)))

(declare-fun b!2924291 () Bool)

(declare-fun res!1207075 () Bool)

(declare-fun e!1844613 () Bool)

(assert (=> b!2924291 (=> res!1207075 e!1844613)))

(assert (=> b!2924291 (= res!1207075 (not ((_ is ElementMatch!9009) r!17423)))))

(assert (=> b!2924291 (= e!1844612 e!1844613)))

(declare-fun b!2924294 () Bool)

(assert (=> b!2924294 (= e!1844618 (= lt!1026311 call!191630))))

(declare-fun b!2924295 () Bool)

(declare-fun res!1207079 () Bool)

(assert (=> b!2924295 (=> res!1207079 e!1844613)))

(assert (=> b!2924295 (= res!1207079 e!1844615)))

(declare-fun res!1207072 () Bool)

(assert (=> b!2924295 (=> (not res!1207072) (not e!1844615))))

(assert (=> b!2924295 (= res!1207072 lt!1026311)))

(declare-fun b!2924296 () Bool)

(assert (=> b!2924296 (= e!1844613 e!1844616)))

(declare-fun res!1207076 () Bool)

(assert (=> b!2924296 (=> (not res!1207076) (not e!1844616))))

(assert (=> b!2924296 (= res!1207076 (not lt!1026311))))

(declare-fun b!2924297 () Bool)

(declare-fun res!1207074 () Bool)

(assert (=> b!2924297 (=> (not res!1207074) (not e!1844615))))

(assert (=> b!2924297 (= res!1207074 (not call!191630))))

(assert (= (and d!838788 c!477407) b!2924289))

(assert (= (and d!838788 (not c!477407)) b!2924292))

(assert (= (and d!838788 c!477408) b!2924294))

(assert (= (and d!838788 (not c!477408)) b!2924287))

(assert (= (and b!2924287 c!477409) b!2924293))

(assert (= (and b!2924287 (not c!477409)) b!2924291))

(assert (= (and b!2924291 (not res!1207075)) b!2924295))

(assert (= (and b!2924295 res!1207072) b!2924297))

(assert (= (and b!2924297 res!1207074) b!2924284))

(assert (= (and b!2924284 res!1207077) b!2924286))

(assert (= (and b!2924295 (not res!1207079)) b!2924296))

(assert (= (and b!2924296 res!1207076) b!2924288))

(assert (= (and b!2924288 (not res!1207073)) b!2924285))

(assert (= (and b!2924285 (not res!1207078)) b!2924290))

(assert (= (or b!2924294 b!2924288 b!2924297) bm!191625))

(declare-fun m!3318195 () Bool)

(assert (=> b!2924290 m!3318195))

(assert (=> b!2924292 m!3318195))

(assert (=> b!2924292 m!3318195))

(declare-fun m!3318197 () Bool)

(assert (=> b!2924292 m!3318197))

(declare-fun m!3318199 () Bool)

(assert (=> b!2924292 m!3318199))

(assert (=> b!2924292 m!3318197))

(assert (=> b!2924292 m!3318199))

(declare-fun m!3318201 () Bool)

(assert (=> b!2924292 m!3318201))

(assert (=> bm!191625 m!3318169))

(assert (=> d!838788 m!3318169))

(assert (=> d!838788 m!3318099))

(declare-fun m!3318203 () Bool)

(assert (=> b!2924289 m!3318203))

(assert (=> b!2924286 m!3318195))

(assert (=> b!2924285 m!3318199))

(assert (=> b!2924285 m!3318199))

(declare-fun m!3318205 () Bool)

(assert (=> b!2924285 m!3318205))

(assert (=> b!2924284 m!3318199))

(assert (=> b!2924284 m!3318199))

(assert (=> b!2924284 m!3318205))

(assert (=> b!2923917 d!838788))

(declare-fun d!838792 () Bool)

(assert (=> d!838792 (= (matchR!3891 r!17423 s!11993) (matchRSpec!1146 r!17423 s!11993))))

(declare-fun lt!1026314 () Unit!48357)

(declare-fun choose!17251 (Regex!9009 List!34874) Unit!48357)

(assert (=> d!838792 (= lt!1026314 (choose!17251 r!17423 s!11993))))

(assert (=> d!838792 (validRegex!3742 r!17423)))

(assert (=> d!838792 (= (mainMatchTheorem!1146 r!17423 s!11993) lt!1026314)))

(declare-fun bs!524999 () Bool)

(assert (= bs!524999 d!838792))

(assert (=> bs!524999 m!3318103))

(assert (=> bs!524999 m!3318101))

(declare-fun m!3318207 () Bool)

(assert (=> bs!524999 m!3318207))

(assert (=> bs!524999 m!3318099))

(assert (=> b!2923917 d!838792))

(declare-fun b!2924298 () Bool)

(declare-fun res!1207085 () Bool)

(declare-fun e!1844622 () Bool)

(assert (=> b!2924298 (=> (not res!1207085) (not e!1844622))))

(assert (=> b!2924298 (= res!1207085 (isEmpty!18999 (tail!4728 s!11993)))))

(declare-fun b!2924299 () Bool)

(declare-fun res!1207086 () Bool)

(declare-fun e!1844621 () Bool)

(assert (=> b!2924299 (=> res!1207086 e!1844621)))

(assert (=> b!2924299 (= res!1207086 (not (isEmpty!18999 (tail!4728 s!11993))))))

(declare-fun b!2924300 () Bool)

(assert (=> b!2924300 (= e!1844622 (= (head!6502 s!11993) (c!477317 lt!1026269)))))

(declare-fun b!2924301 () Bool)

(declare-fun e!1844625 () Bool)

(declare-fun e!1844619 () Bool)

(assert (=> b!2924301 (= e!1844625 e!1844619)))

(declare-fun c!477412 () Bool)

(assert (=> b!2924301 (= c!477412 ((_ is EmptyLang!9009) lt!1026269))))

(declare-fun b!2924302 () Bool)

(declare-fun e!1844623 () Bool)

(assert (=> b!2924302 (= e!1844623 e!1844621)))

(declare-fun res!1207081 () Bool)

(assert (=> b!2924302 (=> res!1207081 e!1844621)))

(declare-fun call!191631 () Bool)

(assert (=> b!2924302 (= res!1207081 call!191631)))

(declare-fun b!2924303 () Bool)

(declare-fun e!1844624 () Bool)

(assert (=> b!2924303 (= e!1844624 (nullable!2829 lt!1026269))))

(declare-fun b!2924304 () Bool)

(assert (=> b!2924304 (= e!1844621 (not (= (head!6502 s!11993) (c!477317 lt!1026269))))))

(declare-fun b!2924306 () Bool)

(assert (=> b!2924306 (= e!1844624 (matchR!3891 (derivativeStep!2443 lt!1026269 (head!6502 s!11993)) (tail!4728 s!11993)))))

(declare-fun bm!191626 () Bool)

(assert (=> bm!191626 (= call!191631 (isEmpty!18999 s!11993))))

(declare-fun b!2924307 () Bool)

(declare-fun lt!1026315 () Bool)

(assert (=> b!2924307 (= e!1844619 (not lt!1026315))))

(declare-fun d!838794 () Bool)

(assert (=> d!838794 e!1844625))

(declare-fun c!477411 () Bool)

(assert (=> d!838794 (= c!477411 ((_ is EmptyExpr!9009) lt!1026269))))

(assert (=> d!838794 (= lt!1026315 e!1844624)))

(declare-fun c!477410 () Bool)

(assert (=> d!838794 (= c!477410 (isEmpty!18999 s!11993))))

(assert (=> d!838794 (validRegex!3742 lt!1026269)))

(assert (=> d!838794 (= (matchR!3891 lt!1026269 s!11993) lt!1026315)))

(declare-fun b!2924305 () Bool)

(declare-fun res!1207083 () Bool)

(declare-fun e!1844620 () Bool)

(assert (=> b!2924305 (=> res!1207083 e!1844620)))

(assert (=> b!2924305 (= res!1207083 (not ((_ is ElementMatch!9009) lt!1026269)))))

(assert (=> b!2924305 (= e!1844619 e!1844620)))

(declare-fun b!2924308 () Bool)

(assert (=> b!2924308 (= e!1844625 (= lt!1026315 call!191631))))

(declare-fun b!2924309 () Bool)

(declare-fun res!1207087 () Bool)

(assert (=> b!2924309 (=> res!1207087 e!1844620)))

(assert (=> b!2924309 (= res!1207087 e!1844622)))

(declare-fun res!1207080 () Bool)

(assert (=> b!2924309 (=> (not res!1207080) (not e!1844622))))

(assert (=> b!2924309 (= res!1207080 lt!1026315)))

(declare-fun b!2924310 () Bool)

(assert (=> b!2924310 (= e!1844620 e!1844623)))

(declare-fun res!1207084 () Bool)

(assert (=> b!2924310 (=> (not res!1207084) (not e!1844623))))

(assert (=> b!2924310 (= res!1207084 (not lt!1026315))))

(declare-fun b!2924311 () Bool)

(declare-fun res!1207082 () Bool)

(assert (=> b!2924311 (=> (not res!1207082) (not e!1844622))))

(assert (=> b!2924311 (= res!1207082 (not call!191631))))

(assert (= (and d!838794 c!477410) b!2924303))

(assert (= (and d!838794 (not c!477410)) b!2924306))

(assert (= (and d!838794 c!477411) b!2924308))

(assert (= (and d!838794 (not c!477411)) b!2924301))

(assert (= (and b!2924301 c!477412) b!2924307))

(assert (= (and b!2924301 (not c!477412)) b!2924305))

(assert (= (and b!2924305 (not res!1207083)) b!2924309))

(assert (= (and b!2924309 res!1207080) b!2924311))

(assert (= (and b!2924311 res!1207082) b!2924298))

(assert (= (and b!2924298 res!1207085) b!2924300))

(assert (= (and b!2924309 (not res!1207087)) b!2924310))

(assert (= (and b!2924310 res!1207084) b!2924302))

(assert (= (and b!2924302 (not res!1207081)) b!2924299))

(assert (= (and b!2924299 (not res!1207086)) b!2924304))

(assert (= (or b!2924308 b!2924302 b!2924311) bm!191626))

(assert (=> b!2924304 m!3318195))

(assert (=> b!2924306 m!3318195))

(assert (=> b!2924306 m!3318195))

(declare-fun m!3318209 () Bool)

(assert (=> b!2924306 m!3318209))

(assert (=> b!2924306 m!3318199))

(assert (=> b!2924306 m!3318209))

(assert (=> b!2924306 m!3318199))

(declare-fun m!3318211 () Bool)

(assert (=> b!2924306 m!3318211))

(assert (=> bm!191626 m!3318169))

(assert (=> d!838794 m!3318169))

(declare-fun m!3318213 () Bool)

(assert (=> d!838794 m!3318213))

(declare-fun m!3318215 () Bool)

(assert (=> b!2924303 m!3318215))

(assert (=> b!2924300 m!3318195))

(assert (=> b!2924299 m!3318199))

(assert (=> b!2924299 m!3318199))

(assert (=> b!2924299 m!3318205))

(assert (=> b!2924298 m!3318199))

(assert (=> b!2924298 m!3318199))

(assert (=> b!2924298 m!3318205))

(assert (=> b!2923923 d!838794))

(declare-fun b!2924312 () Bool)

(declare-fun res!1207093 () Bool)

(declare-fun e!1844629 () Bool)

(assert (=> b!2924312 (=> (not res!1207093) (not e!1844629))))

(assert (=> b!2924312 (= res!1207093 (isEmpty!18999 (tail!4728 s!11993)))))

(declare-fun b!2924313 () Bool)

(declare-fun res!1207094 () Bool)

(declare-fun e!1844628 () Bool)

(assert (=> b!2924313 (=> res!1207094 e!1844628)))

(assert (=> b!2924313 (= res!1207094 (not (isEmpty!18999 (tail!4728 s!11993))))))

(declare-fun b!2924314 () Bool)

(assert (=> b!2924314 (= e!1844629 (= (head!6502 s!11993) (c!477317 (regTwo!18531 r!17423))))))

(declare-fun b!2924315 () Bool)

(declare-fun e!1844632 () Bool)

(declare-fun e!1844626 () Bool)

(assert (=> b!2924315 (= e!1844632 e!1844626)))

(declare-fun c!477415 () Bool)

(assert (=> b!2924315 (= c!477415 ((_ is EmptyLang!9009) (regTwo!18531 r!17423)))))

(declare-fun b!2924316 () Bool)

(declare-fun e!1844630 () Bool)

(assert (=> b!2924316 (= e!1844630 e!1844628)))

(declare-fun res!1207089 () Bool)

(assert (=> b!2924316 (=> res!1207089 e!1844628)))

(declare-fun call!191632 () Bool)

(assert (=> b!2924316 (= res!1207089 call!191632)))

(declare-fun b!2924317 () Bool)

(declare-fun e!1844631 () Bool)

(assert (=> b!2924317 (= e!1844631 (nullable!2829 (regTwo!18531 r!17423)))))

(declare-fun b!2924318 () Bool)

(assert (=> b!2924318 (= e!1844628 (not (= (head!6502 s!11993) (c!477317 (regTwo!18531 r!17423)))))))

(declare-fun b!2924320 () Bool)

(assert (=> b!2924320 (= e!1844631 (matchR!3891 (derivativeStep!2443 (regTwo!18531 r!17423) (head!6502 s!11993)) (tail!4728 s!11993)))))

(declare-fun bm!191627 () Bool)

(assert (=> bm!191627 (= call!191632 (isEmpty!18999 s!11993))))

(declare-fun b!2924321 () Bool)

(declare-fun lt!1026316 () Bool)

(assert (=> b!2924321 (= e!1844626 (not lt!1026316))))

(declare-fun d!838796 () Bool)

(assert (=> d!838796 e!1844632))

(declare-fun c!477414 () Bool)

(assert (=> d!838796 (= c!477414 ((_ is EmptyExpr!9009) (regTwo!18531 r!17423)))))

(assert (=> d!838796 (= lt!1026316 e!1844631)))

(declare-fun c!477413 () Bool)

(assert (=> d!838796 (= c!477413 (isEmpty!18999 s!11993))))

(assert (=> d!838796 (validRegex!3742 (regTwo!18531 r!17423))))

(assert (=> d!838796 (= (matchR!3891 (regTwo!18531 r!17423) s!11993) lt!1026316)))

(declare-fun b!2924319 () Bool)

(declare-fun res!1207091 () Bool)

(declare-fun e!1844627 () Bool)

(assert (=> b!2924319 (=> res!1207091 e!1844627)))

(assert (=> b!2924319 (= res!1207091 (not ((_ is ElementMatch!9009) (regTwo!18531 r!17423))))))

(assert (=> b!2924319 (= e!1844626 e!1844627)))

(declare-fun b!2924322 () Bool)

(assert (=> b!2924322 (= e!1844632 (= lt!1026316 call!191632))))

(declare-fun b!2924323 () Bool)

(declare-fun res!1207095 () Bool)

(assert (=> b!2924323 (=> res!1207095 e!1844627)))

(assert (=> b!2924323 (= res!1207095 e!1844629)))

(declare-fun res!1207088 () Bool)

(assert (=> b!2924323 (=> (not res!1207088) (not e!1844629))))

(assert (=> b!2924323 (= res!1207088 lt!1026316)))

(declare-fun b!2924324 () Bool)

(assert (=> b!2924324 (= e!1844627 e!1844630)))

(declare-fun res!1207092 () Bool)

(assert (=> b!2924324 (=> (not res!1207092) (not e!1844630))))

(assert (=> b!2924324 (= res!1207092 (not lt!1026316))))

(declare-fun b!2924325 () Bool)

(declare-fun res!1207090 () Bool)

(assert (=> b!2924325 (=> (not res!1207090) (not e!1844629))))

(assert (=> b!2924325 (= res!1207090 (not call!191632))))

(assert (= (and d!838796 c!477413) b!2924317))

(assert (= (and d!838796 (not c!477413)) b!2924320))

(assert (= (and d!838796 c!477414) b!2924322))

(assert (= (and d!838796 (not c!477414)) b!2924315))

(assert (= (and b!2924315 c!477415) b!2924321))

(assert (= (and b!2924315 (not c!477415)) b!2924319))

(assert (= (and b!2924319 (not res!1207091)) b!2924323))

(assert (= (and b!2924323 res!1207088) b!2924325))

(assert (= (and b!2924325 res!1207090) b!2924312))

(assert (= (and b!2924312 res!1207093) b!2924314))

(assert (= (and b!2924323 (not res!1207095)) b!2924324))

(assert (= (and b!2924324 res!1207092) b!2924316))

(assert (= (and b!2924316 (not res!1207089)) b!2924313))

(assert (= (and b!2924313 (not res!1207094)) b!2924318))

(assert (= (or b!2924322 b!2924316 b!2924325) bm!191627))

(assert (=> b!2924318 m!3318195))

(assert (=> b!2924320 m!3318195))

(assert (=> b!2924320 m!3318195))

(declare-fun m!3318217 () Bool)

(assert (=> b!2924320 m!3318217))

(assert (=> b!2924320 m!3318199))

(assert (=> b!2924320 m!3318217))

(assert (=> b!2924320 m!3318199))

(declare-fun m!3318219 () Bool)

(assert (=> b!2924320 m!3318219))

(assert (=> bm!191627 m!3318169))

(assert (=> d!838796 m!3318169))

(declare-fun m!3318221 () Bool)

(assert (=> d!838796 m!3318221))

(declare-fun m!3318223 () Bool)

(assert (=> b!2924317 m!3318223))

(assert (=> b!2924314 m!3318195))

(assert (=> b!2924313 m!3318199))

(assert (=> b!2924313 m!3318199))

(assert (=> b!2924313 m!3318205))

(assert (=> b!2924312 m!3318199))

(assert (=> b!2924312 m!3318199))

(assert (=> b!2924312 m!3318205))

(assert (=> b!2923923 d!838796))

(declare-fun bm!191642 () Bool)

(declare-fun call!191649 () Regex!9009)

(declare-fun c!477447 () Bool)

(assert (=> bm!191642 (= call!191649 (simplify!38 (ite c!477447 (regTwo!18531 (regTwo!18531 r!17423)) (regOne!18530 (regTwo!18531 r!17423)))))))

(declare-fun b!2924376 () Bool)

(declare-fun e!1844666 () Regex!9009)

(declare-fun e!1844661 () Regex!9009)

(assert (=> b!2924376 (= e!1844666 e!1844661)))

(declare-fun c!477439 () Bool)

(assert (=> b!2924376 (= c!477439 ((_ is ElementMatch!9009) (regTwo!18531 r!17423)))))

(declare-fun b!2924377 () Bool)

(declare-fun e!1844670 () Regex!9009)

(assert (=> b!2924377 (= e!1844670 EmptyExpr!9009)))

(declare-fun lt!1026329 () Regex!9009)

(declare-fun lt!1026334 () Regex!9009)

(declare-fun bm!191643 () Bool)

(declare-fun call!191647 () Bool)

(declare-fun isEmptyLang!182 (Regex!9009) Bool)

(assert (=> bm!191643 (= call!191647 (isEmptyLang!182 (ite c!477447 lt!1026334 lt!1026329)))))

(declare-fun b!2924378 () Bool)

(declare-fun e!1844668 () Regex!9009)

(assert (=> b!2924378 (= e!1844668 lt!1026329)))

(declare-fun b!2924379 () Bool)

(declare-fun e!1844663 () Regex!9009)

(declare-fun lt!1026333 () Regex!9009)

(assert (=> b!2924379 (= e!1844663 lt!1026333)))

(declare-fun b!2924380 () Bool)

(declare-fun e!1844672 () Regex!9009)

(assert (=> b!2924380 (= e!1844672 lt!1026334)))

(declare-fun b!2924381 () Bool)

(assert (=> b!2924381 (= c!477447 ((_ is Union!9009) (regTwo!18531 r!17423)))))

(declare-fun e!1844671 () Regex!9009)

(declare-fun e!1844669 () Regex!9009)

(assert (=> b!2924381 (= e!1844671 e!1844669)))

(declare-fun d!838798 () Bool)

(declare-fun e!1844674 () Bool)

(assert (=> d!838798 e!1844674))

(declare-fun res!1207104 () Bool)

(assert (=> d!838798 (=> (not res!1207104) (not e!1844674))))

(declare-fun lt!1026332 () Regex!9009)

(assert (=> d!838798 (= res!1207104 (validRegex!3742 lt!1026332))))

(assert (=> d!838798 (= lt!1026332 e!1844666)))

(declare-fun c!477443 () Bool)

(assert (=> d!838798 (= c!477443 ((_ is EmptyLang!9009) (regTwo!18531 r!17423)))))

(assert (=> d!838798 (validRegex!3742 (regTwo!18531 r!17423))))

(assert (=> d!838798 (= (simplify!38 (regTwo!18531 r!17423)) lt!1026332)))

(declare-fun b!2924382 () Bool)

(assert (=> b!2924382 (= e!1844666 EmptyLang!9009)))

(declare-fun b!2924383 () Bool)

(declare-fun e!1844673 () Regex!9009)

(declare-fun lt!1026331 () Regex!9009)

(assert (=> b!2924383 (= e!1844673 (Concat!14330 lt!1026331 lt!1026329))))

(declare-fun b!2924384 () Bool)

(assert (=> b!2924384 (= e!1844661 (regTwo!18531 r!17423))))

(declare-fun b!2924385 () Bool)

(declare-fun e!1844662 () Regex!9009)

(assert (=> b!2924385 (= e!1844662 EmptyLang!9009)))

(declare-fun b!2924386 () Bool)

(declare-fun c!477442 () Bool)

(declare-fun e!1844667 () Bool)

(assert (=> b!2924386 (= c!477442 e!1844667)))

(declare-fun res!1207102 () Bool)

(assert (=> b!2924386 (=> res!1207102 e!1844667)))

(declare-fun call!191652 () Bool)

(assert (=> b!2924386 (= res!1207102 call!191652)))

(declare-fun lt!1026330 () Regex!9009)

(declare-fun call!191651 () Regex!9009)

(assert (=> b!2924386 (= lt!1026330 call!191651)))

(assert (=> b!2924386 (= e!1844671 e!1844670)))

(declare-fun bm!191644 () Bool)

(declare-fun c!477440 () Bool)

(assert (=> bm!191644 (= call!191651 (simplify!38 (ite c!477440 (reg!9338 (regTwo!18531 r!17423)) (ite c!477447 (regOne!18531 (regTwo!18531 r!17423)) (regTwo!18530 (regTwo!18531 r!17423))))))))

(declare-fun b!2924387 () Bool)

(assert (=> b!2924387 (= e!1844673 lt!1026331)))

(declare-fun b!2924388 () Bool)

(declare-fun e!1844664 () Bool)

(assert (=> b!2924388 (= e!1844664 call!191647)))

(declare-fun b!2924389 () Bool)

(assert (=> b!2924389 (= e!1844668 e!1844673)))

(declare-fun c!477444 () Bool)

(declare-fun call!191650 () Bool)

(assert (=> b!2924389 (= c!477444 call!191650)))

(declare-fun b!2924390 () Bool)

(declare-fun c!477438 () Bool)

(declare-fun isEmptyExpr!267 (Regex!9009) Bool)

(assert (=> b!2924390 (= c!477438 (isEmptyExpr!267 lt!1026331))))

(assert (=> b!2924390 (= e!1844662 e!1844668)))

(declare-fun b!2924391 () Bool)

(assert (=> b!2924391 (= e!1844669 e!1844672)))

(declare-fun call!191653 () Regex!9009)

(assert (=> b!2924391 (= lt!1026333 call!191653)))

(assert (=> b!2924391 (= lt!1026334 call!191649)))

(declare-fun c!477445 () Bool)

(declare-fun call!191648 () Bool)

(assert (=> b!2924391 (= c!477445 call!191648)))

(declare-fun b!2924392 () Bool)

(assert (=> b!2924392 (= e!1844667 call!191650)))

(declare-fun b!2924393 () Bool)

(assert (=> b!2924393 (= e!1844669 e!1844662)))

(assert (=> b!2924393 (= lt!1026331 call!191649)))

(assert (=> b!2924393 (= lt!1026329 call!191653)))

(declare-fun res!1207103 () Bool)

(assert (=> b!2924393 (= res!1207103 call!191648)))

(assert (=> b!2924393 (=> res!1207103 e!1844664)))

(declare-fun c!477446 () Bool)

(assert (=> b!2924393 (= c!477446 e!1844664)))

(declare-fun b!2924394 () Bool)

(assert (=> b!2924394 (= e!1844663 (Union!9009 lt!1026333 lt!1026334))))

(declare-fun b!2924395 () Bool)

(declare-fun e!1844665 () Regex!9009)

(assert (=> b!2924395 (= e!1844665 EmptyExpr!9009)))

(declare-fun b!2924396 () Bool)

(assert (=> b!2924396 (= e!1844674 (= (nullable!2829 lt!1026332) (nullable!2829 (regTwo!18531 r!17423))))))

(declare-fun b!2924397 () Bool)

(declare-fun c!477441 () Bool)

(assert (=> b!2924397 (= c!477441 call!191647)))

(assert (=> b!2924397 (= e!1844672 e!1844663)))

(declare-fun bm!191645 () Bool)

(assert (=> bm!191645 (= call!191650 (isEmptyExpr!267 (ite c!477440 lt!1026330 lt!1026329)))))

(declare-fun b!2924398 () Bool)

(assert (=> b!2924398 (= e!1844670 (Star!9009 lt!1026330))))

(declare-fun bm!191646 () Bool)

(assert (=> bm!191646 (= call!191652 (isEmptyLang!182 (ite c!477440 lt!1026330 (ite c!477447 lt!1026333 lt!1026331))))))

(declare-fun bm!191647 () Bool)

(assert (=> bm!191647 (= call!191653 call!191651)))

(declare-fun b!2924399 () Bool)

(assert (=> b!2924399 (= e!1844665 e!1844671)))

(assert (=> b!2924399 (= c!477440 ((_ is Star!9009) (regTwo!18531 r!17423)))))

(declare-fun b!2924400 () Bool)

(declare-fun c!477448 () Bool)

(assert (=> b!2924400 (= c!477448 ((_ is EmptyExpr!9009) (regTwo!18531 r!17423)))))

(assert (=> b!2924400 (= e!1844661 e!1844665)))

(declare-fun bm!191648 () Bool)

(assert (=> bm!191648 (= call!191648 call!191652)))

(assert (= (and d!838798 c!477443) b!2924382))

(assert (= (and d!838798 (not c!477443)) b!2924376))

(assert (= (and b!2924376 c!477439) b!2924384))

(assert (= (and b!2924376 (not c!477439)) b!2924400))

(assert (= (and b!2924400 c!477448) b!2924395))

(assert (= (and b!2924400 (not c!477448)) b!2924399))

(assert (= (and b!2924399 c!477440) b!2924386))

(assert (= (and b!2924399 (not c!477440)) b!2924381))

(assert (= (and b!2924386 (not res!1207102)) b!2924392))

(assert (= (and b!2924386 c!477442) b!2924377))

(assert (= (and b!2924386 (not c!477442)) b!2924398))

(assert (= (and b!2924381 c!477447) b!2924391))

(assert (= (and b!2924381 (not c!477447)) b!2924393))

(assert (= (and b!2924391 c!477445) b!2924380))

(assert (= (and b!2924391 (not c!477445)) b!2924397))

(assert (= (and b!2924397 c!477441) b!2924379))

(assert (= (and b!2924397 (not c!477441)) b!2924394))

(assert (= (and b!2924393 (not res!1207103)) b!2924388))

(assert (= (and b!2924393 c!477446) b!2924385))

(assert (= (and b!2924393 (not c!477446)) b!2924390))

(assert (= (and b!2924390 c!477438) b!2924378))

(assert (= (and b!2924390 (not c!477438)) b!2924389))

(assert (= (and b!2924389 c!477444) b!2924387))

(assert (= (and b!2924389 (not c!477444)) b!2924383))

(assert (= (or b!2924391 b!2924393) bm!191647))

(assert (= (or b!2924391 b!2924393) bm!191642))

(assert (= (or b!2924397 b!2924388) bm!191643))

(assert (= (or b!2924391 b!2924393) bm!191648))

(assert (= (or b!2924392 b!2924389) bm!191645))

(assert (= (or b!2924386 bm!191647) bm!191644))

(assert (= (or b!2924386 bm!191648) bm!191646))

(assert (= (and d!838798 res!1207104) b!2924396))

(declare-fun m!3318225 () Bool)

(assert (=> b!2924390 m!3318225))

(declare-fun m!3318227 () Bool)

(assert (=> bm!191645 m!3318227))

(declare-fun m!3318229 () Bool)

(assert (=> bm!191642 m!3318229))

(declare-fun m!3318231 () Bool)

(assert (=> b!2924396 m!3318231))

(assert (=> b!2924396 m!3318223))

(declare-fun m!3318233 () Bool)

(assert (=> bm!191644 m!3318233))

(declare-fun m!3318235 () Bool)

(assert (=> bm!191643 m!3318235))

(declare-fun m!3318237 () Bool)

(assert (=> d!838798 m!3318237))

(assert (=> d!838798 m!3318221))

(declare-fun m!3318239 () Bool)

(assert (=> bm!191646 m!3318239))

(assert (=> b!2923923 d!838798))

(declare-fun d!838800 () Bool)

(assert (=> d!838800 (= (matchR!3891 (regTwo!18531 r!17423) s!11993) (matchR!3891 (simplify!38 (regTwo!18531 r!17423)) s!11993))))

(declare-fun lt!1026337 () Unit!48357)

(declare-fun choose!17253 (Regex!9009 List!34874) Unit!48357)

(assert (=> d!838800 (= lt!1026337 (choose!17253 (regTwo!18531 r!17423) s!11993))))

(assert (=> d!838800 (validRegex!3742 (regTwo!18531 r!17423))))

(assert (=> d!838800 (= (lemmaSimplifySound!36 (regTwo!18531 r!17423) s!11993) lt!1026337)))

(declare-fun bs!525000 () Bool)

(assert (= bs!525000 d!838800))

(assert (=> bs!525000 m!3318221))

(assert (=> bs!525000 m!3318095))

(assert (=> bs!525000 m!3318087))

(declare-fun m!3318241 () Bool)

(assert (=> bs!525000 m!3318241))

(assert (=> bs!525000 m!3318095))

(declare-fun m!3318243 () Bool)

(assert (=> bs!525000 m!3318243))

(assert (=> b!2923923 d!838800))

(declare-fun b!2924401 () Bool)

(declare-fun res!1207110 () Bool)

(declare-fun e!1844678 () Bool)

(assert (=> b!2924401 (=> (not res!1207110) (not e!1844678))))

(assert (=> b!2924401 (= res!1207110 (isEmpty!18999 (tail!4728 s!11993)))))

(declare-fun b!2924402 () Bool)

(declare-fun res!1207111 () Bool)

(declare-fun e!1844677 () Bool)

(assert (=> b!2924402 (=> res!1207111 e!1844677)))

(assert (=> b!2924402 (= res!1207111 (not (isEmpty!18999 (tail!4728 s!11993))))))

(declare-fun b!2924403 () Bool)

(assert (=> b!2924403 (= e!1844678 (= (head!6502 s!11993) (c!477317 (regOne!18531 r!17423))))))

(declare-fun b!2924404 () Bool)

(declare-fun e!1844681 () Bool)

(declare-fun e!1844675 () Bool)

(assert (=> b!2924404 (= e!1844681 e!1844675)))

(declare-fun c!477451 () Bool)

(assert (=> b!2924404 (= c!477451 ((_ is EmptyLang!9009) (regOne!18531 r!17423)))))

(declare-fun b!2924405 () Bool)

(declare-fun e!1844679 () Bool)

(assert (=> b!2924405 (= e!1844679 e!1844677)))

(declare-fun res!1207106 () Bool)

(assert (=> b!2924405 (=> res!1207106 e!1844677)))

(declare-fun call!191654 () Bool)

(assert (=> b!2924405 (= res!1207106 call!191654)))

(declare-fun b!2924406 () Bool)

(declare-fun e!1844680 () Bool)

(assert (=> b!2924406 (= e!1844680 (nullable!2829 (regOne!18531 r!17423)))))

(declare-fun b!2924407 () Bool)

(assert (=> b!2924407 (= e!1844677 (not (= (head!6502 s!11993) (c!477317 (regOne!18531 r!17423)))))))

(declare-fun b!2924409 () Bool)

(assert (=> b!2924409 (= e!1844680 (matchR!3891 (derivativeStep!2443 (regOne!18531 r!17423) (head!6502 s!11993)) (tail!4728 s!11993)))))

(declare-fun bm!191649 () Bool)

(assert (=> bm!191649 (= call!191654 (isEmpty!18999 s!11993))))

(declare-fun b!2924410 () Bool)

(declare-fun lt!1026338 () Bool)

(assert (=> b!2924410 (= e!1844675 (not lt!1026338))))

(declare-fun d!838802 () Bool)

(assert (=> d!838802 e!1844681))

(declare-fun c!477450 () Bool)

(assert (=> d!838802 (= c!477450 ((_ is EmptyExpr!9009) (regOne!18531 r!17423)))))

(assert (=> d!838802 (= lt!1026338 e!1844680)))

(declare-fun c!477449 () Bool)

(assert (=> d!838802 (= c!477449 (isEmpty!18999 s!11993))))

(assert (=> d!838802 (validRegex!3742 (regOne!18531 r!17423))))

(assert (=> d!838802 (= (matchR!3891 (regOne!18531 r!17423) s!11993) lt!1026338)))

(declare-fun b!2924408 () Bool)

(declare-fun res!1207108 () Bool)

(declare-fun e!1844676 () Bool)

(assert (=> b!2924408 (=> res!1207108 e!1844676)))

(assert (=> b!2924408 (= res!1207108 (not ((_ is ElementMatch!9009) (regOne!18531 r!17423))))))

(assert (=> b!2924408 (= e!1844675 e!1844676)))

(declare-fun b!2924411 () Bool)

(assert (=> b!2924411 (= e!1844681 (= lt!1026338 call!191654))))

(declare-fun b!2924412 () Bool)

(declare-fun res!1207112 () Bool)

(assert (=> b!2924412 (=> res!1207112 e!1844676)))

(assert (=> b!2924412 (= res!1207112 e!1844678)))

(declare-fun res!1207105 () Bool)

(assert (=> b!2924412 (=> (not res!1207105) (not e!1844678))))

(assert (=> b!2924412 (= res!1207105 lt!1026338)))

(declare-fun b!2924413 () Bool)

(assert (=> b!2924413 (= e!1844676 e!1844679)))

(declare-fun res!1207109 () Bool)

(assert (=> b!2924413 (=> (not res!1207109) (not e!1844679))))

(assert (=> b!2924413 (= res!1207109 (not lt!1026338))))

(declare-fun b!2924414 () Bool)

(declare-fun res!1207107 () Bool)

(assert (=> b!2924414 (=> (not res!1207107) (not e!1844678))))

(assert (=> b!2924414 (= res!1207107 (not call!191654))))

(assert (= (and d!838802 c!477449) b!2924406))

(assert (= (and d!838802 (not c!477449)) b!2924409))

(assert (= (and d!838802 c!477450) b!2924411))

(assert (= (and d!838802 (not c!477450)) b!2924404))

(assert (= (and b!2924404 c!477451) b!2924410))

(assert (= (and b!2924404 (not c!477451)) b!2924408))

(assert (= (and b!2924408 (not res!1207108)) b!2924412))

(assert (= (and b!2924412 res!1207105) b!2924414))

(assert (= (and b!2924414 res!1207107) b!2924401))

(assert (= (and b!2924401 res!1207110) b!2924403))

(assert (= (and b!2924412 (not res!1207112)) b!2924413))

(assert (= (and b!2924413 res!1207109) b!2924405))

(assert (= (and b!2924405 (not res!1207106)) b!2924402))

(assert (= (and b!2924402 (not res!1207111)) b!2924407))

(assert (= (or b!2924411 b!2924405 b!2924414) bm!191649))

(assert (=> b!2924407 m!3318195))

(assert (=> b!2924409 m!3318195))

(assert (=> b!2924409 m!3318195))

(declare-fun m!3318245 () Bool)

(assert (=> b!2924409 m!3318245))

(assert (=> b!2924409 m!3318199))

(assert (=> b!2924409 m!3318245))

(assert (=> b!2924409 m!3318199))

(declare-fun m!3318247 () Bool)

(assert (=> b!2924409 m!3318247))

(assert (=> bm!191649 m!3318169))

(assert (=> d!838802 m!3318169))

(assert (=> d!838802 m!3318107))

(declare-fun m!3318249 () Bool)

(assert (=> b!2924406 m!3318249))

(assert (=> b!2924403 m!3318195))

(assert (=> b!2924402 m!3318199))

(assert (=> b!2924402 m!3318199))

(assert (=> b!2924402 m!3318205))

(assert (=> b!2924401 m!3318199))

(assert (=> b!2924401 m!3318199))

(assert (=> b!2924401 m!3318205))

(assert (=> b!2923918 d!838802))

(declare-fun d!838804 () Bool)

(declare-fun e!1844687 () Bool)

(assert (=> d!838804 e!1844687))

(declare-fun res!1207117 () Bool)

(assert (=> d!838804 (=> res!1207117 e!1844687)))

(assert (=> d!838804 (= res!1207117 (matchR!3891 (regOne!18531 r!17423) s!11993))))

(declare-fun lt!1026341 () Unit!48357)

(declare-fun choose!17254 (Regex!9009 Regex!9009 List!34874) Unit!48357)

(assert (=> d!838804 (= lt!1026341 (choose!17254 (regOne!18531 r!17423) (regTwo!18531 r!17423) s!11993))))

(declare-fun e!1844686 () Bool)

(assert (=> d!838804 e!1844686))

(declare-fun res!1207118 () Bool)

(assert (=> d!838804 (=> (not res!1207118) (not e!1844686))))

(assert (=> d!838804 (= res!1207118 (validRegex!3742 (regOne!18531 r!17423)))))

(assert (=> d!838804 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!258 (regOne!18531 r!17423) (regTwo!18531 r!17423) s!11993) lt!1026341)))

(declare-fun b!2924419 () Bool)

(assert (=> b!2924419 (= e!1844686 (validRegex!3742 (regTwo!18531 r!17423)))))

(declare-fun b!2924420 () Bool)

(assert (=> b!2924420 (= e!1844687 (matchR!3891 (regTwo!18531 r!17423) s!11993))))

(assert (= (and d!838804 res!1207118) b!2924419))

(assert (= (and d!838804 (not res!1207117)) b!2924420))

(assert (=> d!838804 m!3318089))

(declare-fun m!3318251 () Bool)

(assert (=> d!838804 m!3318251))

(assert (=> d!838804 m!3318107))

(assert (=> b!2924419 m!3318221))

(assert (=> b!2924420 m!3318087))

(assert (=> b!2923918 d!838804))

(declare-fun d!838806 () Bool)

(declare-fun res!1207129 () Bool)

(declare-fun e!1844707 () Bool)

(assert (=> d!838806 (=> res!1207129 e!1844707)))

(assert (=> d!838806 (= res!1207129 ((_ is ElementMatch!9009) r!17423))))

(assert (=> d!838806 (= (validRegex!3742 r!17423) e!1844707)))

(declare-fun b!2924439 () Bool)

(declare-fun e!1844708 () Bool)

(assert (=> b!2924439 (= e!1844707 e!1844708)))

(declare-fun c!477456 () Bool)

(assert (=> b!2924439 (= c!477456 ((_ is Star!9009) r!17423))))

(declare-fun b!2924440 () Bool)

(declare-fun res!1207132 () Bool)

(declare-fun e!1844704 () Bool)

(assert (=> b!2924440 (=> (not res!1207132) (not e!1844704))))

(declare-fun call!191661 () Bool)

(assert (=> b!2924440 (= res!1207132 call!191661)))

(declare-fun e!1844705 () Bool)

(assert (=> b!2924440 (= e!1844705 e!1844704)))

(declare-fun bm!191656 () Bool)

(declare-fun call!191663 () Bool)

(declare-fun call!191662 () Bool)

(assert (=> bm!191656 (= call!191663 call!191662)))

(declare-fun b!2924441 () Bool)

(assert (=> b!2924441 (= e!1844704 call!191663)))

(declare-fun bm!191657 () Bool)

(declare-fun c!477457 () Bool)

(assert (=> bm!191657 (= call!191662 (validRegex!3742 (ite c!477456 (reg!9338 r!17423) (ite c!477457 (regTwo!18531 r!17423) (regOne!18530 r!17423)))))))

(declare-fun b!2924442 () Bool)

(declare-fun e!1844706 () Bool)

(assert (=> b!2924442 (= e!1844706 call!191662)))

(declare-fun b!2924443 () Bool)

(assert (=> b!2924443 (= e!1844708 e!1844705)))

(assert (=> b!2924443 (= c!477457 ((_ is Union!9009) r!17423))))

(declare-fun b!2924444 () Bool)

(assert (=> b!2924444 (= e!1844708 e!1844706)))

(declare-fun res!1207131 () Bool)

(assert (=> b!2924444 (= res!1207131 (not (nullable!2829 (reg!9338 r!17423))))))

(assert (=> b!2924444 (=> (not res!1207131) (not e!1844706))))

(declare-fun bm!191658 () Bool)

(assert (=> bm!191658 (= call!191661 (validRegex!3742 (ite c!477457 (regOne!18531 r!17423) (regTwo!18530 r!17423))))))

(declare-fun b!2924445 () Bool)

(declare-fun res!1207130 () Bool)

(declare-fun e!1844703 () Bool)

(assert (=> b!2924445 (=> res!1207130 e!1844703)))

(assert (=> b!2924445 (= res!1207130 (not ((_ is Concat!14330) r!17423)))))

(assert (=> b!2924445 (= e!1844705 e!1844703)))

(declare-fun b!2924446 () Bool)

(declare-fun e!1844702 () Bool)

(assert (=> b!2924446 (= e!1844702 call!191661)))

(declare-fun b!2924447 () Bool)

(assert (=> b!2924447 (= e!1844703 e!1844702)))

(declare-fun res!1207133 () Bool)

(assert (=> b!2924447 (=> (not res!1207133) (not e!1844702))))

(assert (=> b!2924447 (= res!1207133 call!191663)))

(assert (= (and d!838806 (not res!1207129)) b!2924439))

(assert (= (and b!2924439 c!477456) b!2924444))

(assert (= (and b!2924439 (not c!477456)) b!2924443))

(assert (= (and b!2924444 res!1207131) b!2924442))

(assert (= (and b!2924443 c!477457) b!2924440))

(assert (= (and b!2924443 (not c!477457)) b!2924445))

(assert (= (and b!2924440 res!1207132) b!2924441))

(assert (= (and b!2924445 (not res!1207130)) b!2924447))

(assert (= (and b!2924447 res!1207133) b!2924446))

(assert (= (or b!2924440 b!2924446) bm!191658))

(assert (= (or b!2924441 b!2924447) bm!191656))

(assert (= (or b!2924442 bm!191656) bm!191657))

(declare-fun m!3318253 () Bool)

(assert (=> bm!191657 m!3318253))

(declare-fun m!3318255 () Bool)

(assert (=> b!2924444 m!3318255))

(declare-fun m!3318257 () Bool)

(assert (=> bm!191658 m!3318257))

(assert (=> start!284548 d!838806))

(declare-fun d!838808 () Bool)

(declare-fun res!1207134 () Bool)

(declare-fun e!1844714 () Bool)

(assert (=> d!838808 (=> res!1207134 e!1844714)))

(assert (=> d!838808 (= res!1207134 ((_ is ElementMatch!9009) (regOne!18531 r!17423)))))

(assert (=> d!838808 (= (validRegex!3742 (regOne!18531 r!17423)) e!1844714)))

(declare-fun b!2924448 () Bool)

(declare-fun e!1844715 () Bool)

(assert (=> b!2924448 (= e!1844714 e!1844715)))

(declare-fun c!477458 () Bool)

(assert (=> b!2924448 (= c!477458 ((_ is Star!9009) (regOne!18531 r!17423)))))

(declare-fun b!2924449 () Bool)

(declare-fun res!1207137 () Bool)

(declare-fun e!1844711 () Bool)

(assert (=> b!2924449 (=> (not res!1207137) (not e!1844711))))

(declare-fun call!191664 () Bool)

(assert (=> b!2924449 (= res!1207137 call!191664)))

(declare-fun e!1844712 () Bool)

(assert (=> b!2924449 (= e!1844712 e!1844711)))

(declare-fun bm!191659 () Bool)

(declare-fun call!191666 () Bool)

(declare-fun call!191665 () Bool)

(assert (=> bm!191659 (= call!191666 call!191665)))

(declare-fun b!2924450 () Bool)

(assert (=> b!2924450 (= e!1844711 call!191666)))

(declare-fun bm!191660 () Bool)

(declare-fun c!477459 () Bool)

(assert (=> bm!191660 (= call!191665 (validRegex!3742 (ite c!477458 (reg!9338 (regOne!18531 r!17423)) (ite c!477459 (regTwo!18531 (regOne!18531 r!17423)) (regOne!18530 (regOne!18531 r!17423))))))))

(declare-fun b!2924451 () Bool)

(declare-fun e!1844713 () Bool)

(assert (=> b!2924451 (= e!1844713 call!191665)))

(declare-fun b!2924452 () Bool)

(assert (=> b!2924452 (= e!1844715 e!1844712)))

(assert (=> b!2924452 (= c!477459 ((_ is Union!9009) (regOne!18531 r!17423)))))

(declare-fun b!2924453 () Bool)

(assert (=> b!2924453 (= e!1844715 e!1844713)))

(declare-fun res!1207136 () Bool)

(assert (=> b!2924453 (= res!1207136 (not (nullable!2829 (reg!9338 (regOne!18531 r!17423)))))))

(assert (=> b!2924453 (=> (not res!1207136) (not e!1844713))))

(declare-fun bm!191661 () Bool)

(assert (=> bm!191661 (= call!191664 (validRegex!3742 (ite c!477459 (regOne!18531 (regOne!18531 r!17423)) (regTwo!18530 (regOne!18531 r!17423)))))))

(declare-fun b!2924454 () Bool)

(declare-fun res!1207135 () Bool)

(declare-fun e!1844710 () Bool)

(assert (=> b!2924454 (=> res!1207135 e!1844710)))

(assert (=> b!2924454 (= res!1207135 (not ((_ is Concat!14330) (regOne!18531 r!17423))))))

(assert (=> b!2924454 (= e!1844712 e!1844710)))

(declare-fun b!2924455 () Bool)

(declare-fun e!1844709 () Bool)

(assert (=> b!2924455 (= e!1844709 call!191664)))

(declare-fun b!2924456 () Bool)

(assert (=> b!2924456 (= e!1844710 e!1844709)))

(declare-fun res!1207138 () Bool)

(assert (=> b!2924456 (=> (not res!1207138) (not e!1844709))))

(assert (=> b!2924456 (= res!1207138 call!191666)))

(assert (= (and d!838808 (not res!1207134)) b!2924448))

(assert (= (and b!2924448 c!477458) b!2924453))

(assert (= (and b!2924448 (not c!477458)) b!2924452))

(assert (= (and b!2924453 res!1207136) b!2924451))

(assert (= (and b!2924452 c!477459) b!2924449))

(assert (= (and b!2924452 (not c!477459)) b!2924454))

(assert (= (and b!2924449 res!1207137) b!2924450))

(assert (= (and b!2924454 (not res!1207135)) b!2924456))

(assert (= (and b!2924456 res!1207138) b!2924455))

(assert (= (or b!2924449 b!2924455) bm!191661))

(assert (= (or b!2924450 b!2924456) bm!191659))

(assert (= (or b!2924451 bm!191659) bm!191660))

(declare-fun m!3318259 () Bool)

(assert (=> bm!191660 m!3318259))

(declare-fun m!3318261 () Bool)

(assert (=> b!2924453 m!3318261))

(declare-fun m!3318263 () Bool)

(assert (=> bm!191661 m!3318263))

(assert (=> b!2923922 d!838808))

(assert (=> b!2923919 d!838796))

(declare-fun b!2924467 () Bool)

(declare-fun e!1844718 () Bool)

(assert (=> b!2924467 (= e!1844718 tp_is_empty!15581)))

(declare-fun b!2924469 () Bool)

(declare-fun tp!937918 () Bool)

(assert (=> b!2924469 (= e!1844718 tp!937918)))

(declare-fun b!2924468 () Bool)

(declare-fun tp!937915 () Bool)

(declare-fun tp!937914 () Bool)

(assert (=> b!2924468 (= e!1844718 (and tp!937915 tp!937914))))

(declare-fun b!2924470 () Bool)

(declare-fun tp!937916 () Bool)

(declare-fun tp!937917 () Bool)

(assert (=> b!2924470 (= e!1844718 (and tp!937916 tp!937917))))

(assert (=> b!2923921 (= tp!937865 e!1844718)))

(assert (= (and b!2923921 ((_ is ElementMatch!9009) (regOne!18530 r!17423))) b!2924467))

(assert (= (and b!2923921 ((_ is Concat!14330) (regOne!18530 r!17423))) b!2924468))

(assert (= (and b!2923921 ((_ is Star!9009) (regOne!18530 r!17423))) b!2924469))

(assert (= (and b!2923921 ((_ is Union!9009) (regOne!18530 r!17423))) b!2924470))

(declare-fun b!2924471 () Bool)

(declare-fun e!1844719 () Bool)

(assert (=> b!2924471 (= e!1844719 tp_is_empty!15581)))

(declare-fun b!2924473 () Bool)

(declare-fun tp!937923 () Bool)

(assert (=> b!2924473 (= e!1844719 tp!937923)))

(declare-fun b!2924472 () Bool)

(declare-fun tp!937920 () Bool)

(declare-fun tp!937919 () Bool)

(assert (=> b!2924472 (= e!1844719 (and tp!937920 tp!937919))))

(declare-fun b!2924474 () Bool)

(declare-fun tp!937921 () Bool)

(declare-fun tp!937922 () Bool)

(assert (=> b!2924474 (= e!1844719 (and tp!937921 tp!937922))))

(assert (=> b!2923921 (= tp!937863 e!1844719)))

(assert (= (and b!2923921 ((_ is ElementMatch!9009) (regTwo!18530 r!17423))) b!2924471))

(assert (= (and b!2923921 ((_ is Concat!14330) (regTwo!18530 r!17423))) b!2924472))

(assert (= (and b!2923921 ((_ is Star!9009) (regTwo!18530 r!17423))) b!2924473))

(assert (= (and b!2923921 ((_ is Union!9009) (regTwo!18530 r!17423))) b!2924474))

(declare-fun b!2924479 () Bool)

(declare-fun e!1844722 () Bool)

(declare-fun tp!937926 () Bool)

(assert (=> b!2924479 (= e!1844722 (and tp_is_empty!15581 tp!937926))))

(assert (=> b!2923916 (= tp!937864 e!1844722)))

(assert (= (and b!2923916 ((_ is Cons!34750) (t!233939 s!11993))) b!2924479))

(declare-fun b!2924480 () Bool)

(declare-fun e!1844723 () Bool)

(assert (=> b!2924480 (= e!1844723 tp_is_empty!15581)))

(declare-fun b!2924482 () Bool)

(declare-fun tp!937931 () Bool)

(assert (=> b!2924482 (= e!1844723 tp!937931)))

(declare-fun b!2924481 () Bool)

(declare-fun tp!937928 () Bool)

(declare-fun tp!937927 () Bool)

(assert (=> b!2924481 (= e!1844723 (and tp!937928 tp!937927))))

(declare-fun b!2924483 () Bool)

(declare-fun tp!937929 () Bool)

(declare-fun tp!937930 () Bool)

(assert (=> b!2924483 (= e!1844723 (and tp!937929 tp!937930))))

(assert (=> b!2923920 (= tp!937862 e!1844723)))

(assert (= (and b!2923920 ((_ is ElementMatch!9009) (reg!9338 r!17423))) b!2924480))

(assert (= (and b!2923920 ((_ is Concat!14330) (reg!9338 r!17423))) b!2924481))

(assert (= (and b!2923920 ((_ is Star!9009) (reg!9338 r!17423))) b!2924482))

(assert (= (and b!2923920 ((_ is Union!9009) (reg!9338 r!17423))) b!2924483))

(declare-fun b!2924484 () Bool)

(declare-fun e!1844724 () Bool)

(assert (=> b!2924484 (= e!1844724 tp_is_empty!15581)))

(declare-fun b!2924486 () Bool)

(declare-fun tp!937936 () Bool)

(assert (=> b!2924486 (= e!1844724 tp!937936)))

(declare-fun b!2924485 () Bool)

(declare-fun tp!937933 () Bool)

(declare-fun tp!937932 () Bool)

(assert (=> b!2924485 (= e!1844724 (and tp!937933 tp!937932))))

(declare-fun b!2924487 () Bool)

(declare-fun tp!937934 () Bool)

(declare-fun tp!937935 () Bool)

(assert (=> b!2924487 (= e!1844724 (and tp!937934 tp!937935))))

(assert (=> b!2923924 (= tp!937860 e!1844724)))

(assert (= (and b!2923924 ((_ is ElementMatch!9009) (regOne!18531 r!17423))) b!2924484))

(assert (= (and b!2923924 ((_ is Concat!14330) (regOne!18531 r!17423))) b!2924485))

(assert (= (and b!2923924 ((_ is Star!9009) (regOne!18531 r!17423))) b!2924486))

(assert (= (and b!2923924 ((_ is Union!9009) (regOne!18531 r!17423))) b!2924487))

(declare-fun b!2924488 () Bool)

(declare-fun e!1844725 () Bool)

(assert (=> b!2924488 (= e!1844725 tp_is_empty!15581)))

(declare-fun b!2924490 () Bool)

(declare-fun tp!937941 () Bool)

(assert (=> b!2924490 (= e!1844725 tp!937941)))

(declare-fun b!2924489 () Bool)

(declare-fun tp!937938 () Bool)

(declare-fun tp!937937 () Bool)

(assert (=> b!2924489 (= e!1844725 (and tp!937938 tp!937937))))

(declare-fun b!2924491 () Bool)

(declare-fun tp!937939 () Bool)

(declare-fun tp!937940 () Bool)

(assert (=> b!2924491 (= e!1844725 (and tp!937939 tp!937940))))

(assert (=> b!2923924 (= tp!937861 e!1844725)))

(assert (= (and b!2923924 ((_ is ElementMatch!9009) (regTwo!18531 r!17423))) b!2924488))

(assert (= (and b!2923924 ((_ is Concat!14330) (regTwo!18531 r!17423))) b!2924489))

(assert (= (and b!2923924 ((_ is Star!9009) (regTwo!18531 r!17423))) b!2924490))

(assert (= (and b!2923924 ((_ is Union!9009) (regTwo!18531 r!17423))) b!2924491))

(check-sat (not b!2924409) (not b!2924314) (not b!2924490) (not d!838792) (not b!2924390) (not bm!191657) (not d!838804) (not b!2924300) (not d!838788) (not b!2924474) (not b!2924304) (not b!2924420) (not b!2924489) (not b!2924191) (not b!2924313) (not bm!191646) (not b!2924491) (not b!2924183) (not bm!191642) (not d!838800) (not bm!191661) (not bm!191625) (not b!2924402) (not b!2924292) (not b!2924286) (not b!2924312) (not b!2924444) (not d!838802) (not d!838796) (not b!2924481) (not bm!191644) (not b!2924453) (not b!2924285) (not bm!191627) (not bm!191658) (not b!2924473) (not b!2924299) (not b!2924419) (not b!2924479) (not b!2924482) (not d!838794) (not b!2924317) (not b!2924396) (not bm!191614) (not b!2924318) (not b!2924284) (not bm!191626) (not b!2924486) (not b!2924469) (not d!838798) tp_is_empty!15581 (not b!2924298) (not b!2924407) (not b!2924306) (not bm!191660) (not b!2924470) (not b!2924487) (not b!2924320) (not bm!191643) (not bm!191615) (not b!2924403) (not b!2924485) (not b!2924303) (not b!2924401) (not bm!191649) (not b!2924483) (not b!2924468) (not b!2924290) (not b!2924289) (not b!2924472) (not b!2924406) (not bm!191645))
(check-sat)
