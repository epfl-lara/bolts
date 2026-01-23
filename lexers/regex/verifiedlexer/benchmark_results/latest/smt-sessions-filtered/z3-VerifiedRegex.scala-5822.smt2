; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!286892 () Bool)

(assert start!286892)

(declare-fun b!2961078 () Bool)

(declare-fun e!1863899 () Bool)

(declare-fun e!1863900 () Bool)

(assert (=> b!2961078 (= e!1863899 e!1863900)))

(declare-fun res!1221700 () Bool)

(assert (=> b!2961078 (=> res!1221700 e!1863900)))

(declare-datatypes ((C!18576 0))(
  ( (C!18577 (val!11324 Int)) )
))
(declare-datatypes ((Regex!9195 0))(
  ( (ElementMatch!9195 (c!485267 C!18576)) (Concat!14516 (regOne!18902 Regex!9195) (regTwo!18902 Regex!9195)) (EmptyExpr!9195) (Star!9195 (reg!9524 Regex!9195)) (EmptyLang!9195) (Union!9195 (regOne!18903 Regex!9195) (regTwo!18903 Regex!9195)) )
))
(declare-fun lt!1034134 () Regex!9195)

(declare-fun isEmptyLang!313 (Regex!9195) Bool)

(assert (=> b!2961078 (= res!1221700 (not (isEmptyLang!313 lt!1034134)))))

(declare-fun lt!1034133 () Regex!9195)

(declare-fun r!17423 () Regex!9195)

(declare-fun simplify!198 (Regex!9195) Regex!9195)

(assert (=> b!2961078 (= lt!1034133 (simplify!198 (regTwo!18903 r!17423)))))

(assert (=> b!2961078 (= lt!1034134 (simplify!198 (regOne!18903 r!17423)))))

(declare-fun b!2961079 () Bool)

(declare-fun e!1863902 () Bool)

(declare-fun tp_is_empty!15953 () Bool)

(assert (=> b!2961079 (= e!1863902 tp_is_empty!15953)))

(declare-fun b!2961080 () Bool)

(declare-fun e!1863903 () Bool)

(declare-fun tp!945011 () Bool)

(assert (=> b!2961080 (= e!1863903 (and tp_is_empty!15953 tp!945011))))

(declare-fun b!2961081 () Bool)

(declare-fun e!1863901 () Bool)

(assert (=> b!2961081 (= e!1863901 (not e!1863899))))

(declare-fun res!1221698 () Bool)

(assert (=> b!2961081 (=> res!1221698 e!1863899)))

(declare-fun lt!1034130 () Bool)

(get-info :version)

(assert (=> b!2961081 (= res!1221698 (or lt!1034130 ((_ is Concat!14516) r!17423) (not ((_ is Union!9195) r!17423))))))

(declare-datatypes ((List!35060 0))(
  ( (Nil!34936) (Cons!34936 (h!40356 C!18576) (t!234125 List!35060)) )
))
(declare-fun s!11993 () List!35060)

(declare-fun matchRSpec!1332 (Regex!9195 List!35060) Bool)

(assert (=> b!2961081 (= lt!1034130 (matchRSpec!1332 r!17423 s!11993))))

(declare-fun matchR!4077 (Regex!9195 List!35060) Bool)

(assert (=> b!2961081 (= lt!1034130 (matchR!4077 r!17423 s!11993))))

(declare-datatypes ((Unit!48769 0))(
  ( (Unit!48770) )
))
(declare-fun lt!1034131 () Unit!48769)

(declare-fun mainMatchTheorem!1332 (Regex!9195 List!35060) Unit!48769)

(assert (=> b!2961081 (= lt!1034131 (mainMatchTheorem!1332 r!17423 s!11993))))

(declare-fun b!2961082 () Bool)

(declare-fun validRegex!3928 (Regex!9195) Bool)

(assert (=> b!2961082 (= e!1863900 (validRegex!3928 (regTwo!18903 r!17423)))))

(assert (=> b!2961082 (= (matchR!4077 (regTwo!18903 r!17423) s!11993) (matchR!4077 lt!1034133 s!11993))))

(declare-fun lt!1034132 () Unit!48769)

(declare-fun lemmaSimplifySound!124 (Regex!9195 List!35060) Unit!48769)

(assert (=> b!2961082 (= lt!1034132 (lemmaSimplifySound!124 (regTwo!18903 r!17423) s!11993))))

(declare-fun b!2961083 () Bool)

(declare-fun tp!945009 () Bool)

(assert (=> b!2961083 (= e!1863902 tp!945009)))

(declare-fun b!2961084 () Bool)

(declare-fun tp!945013 () Bool)

(declare-fun tp!945008 () Bool)

(assert (=> b!2961084 (= e!1863902 (and tp!945013 tp!945008))))

(declare-fun b!2961085 () Bool)

(declare-fun tp!945010 () Bool)

(declare-fun tp!945012 () Bool)

(assert (=> b!2961085 (= e!1863902 (and tp!945010 tp!945012))))

(declare-fun res!1221699 () Bool)

(assert (=> start!286892 (=> (not res!1221699) (not e!1863901))))

(assert (=> start!286892 (= res!1221699 (validRegex!3928 r!17423))))

(assert (=> start!286892 e!1863901))

(assert (=> start!286892 e!1863902))

(assert (=> start!286892 e!1863903))

(assert (= (and start!286892 res!1221699) b!2961081))

(assert (= (and b!2961081 (not res!1221698)) b!2961078))

(assert (= (and b!2961078 (not res!1221700)) b!2961082))

(assert (= (and start!286892 ((_ is ElementMatch!9195) r!17423)) b!2961079))

(assert (= (and start!286892 ((_ is Concat!14516) r!17423)) b!2961085))

(assert (= (and start!286892 ((_ is Star!9195) r!17423)) b!2961083))

(assert (= (and start!286892 ((_ is Union!9195) r!17423)) b!2961084))

(assert (= (and start!286892 ((_ is Cons!34936) s!11993)) b!2961080))

(declare-fun m!3334305 () Bool)

(assert (=> b!2961078 m!3334305))

(declare-fun m!3334307 () Bool)

(assert (=> b!2961078 m!3334307))

(declare-fun m!3334309 () Bool)

(assert (=> b!2961078 m!3334309))

(declare-fun m!3334311 () Bool)

(assert (=> b!2961081 m!3334311))

(declare-fun m!3334313 () Bool)

(assert (=> b!2961081 m!3334313))

(declare-fun m!3334315 () Bool)

(assert (=> b!2961081 m!3334315))

(declare-fun m!3334317 () Bool)

(assert (=> b!2961082 m!3334317))

(declare-fun m!3334319 () Bool)

(assert (=> b!2961082 m!3334319))

(declare-fun m!3334321 () Bool)

(assert (=> b!2961082 m!3334321))

(declare-fun m!3334323 () Bool)

(assert (=> b!2961082 m!3334323))

(declare-fun m!3334325 () Bool)

(assert (=> start!286892 m!3334325))

(check-sat (not b!2961078) (not b!2961084) (not b!2961080) tp_is_empty!15953 (not start!286892) (not b!2961081) (not b!2961082) (not b!2961083) (not b!2961085))
(check-sat)
(get-model)

(declare-fun d!842017 () Bool)

(assert (=> d!842017 (= (isEmptyLang!313 lt!1034134) ((_ is EmptyLang!9195) lt!1034134))))

(assert (=> b!2961078 d!842017))

(declare-fun b!2961186 () Bool)

(declare-fun e!1863969 () Regex!9195)

(assert (=> b!2961186 (= e!1863969 EmptyLang!9195)))

(declare-fun b!2961187 () Bool)

(declare-fun e!1863966 () Regex!9195)

(declare-fun lt!1034160 () Regex!9195)

(assert (=> b!2961187 (= e!1863966 lt!1034160)))

(declare-fun b!2961188 () Bool)

(declare-fun c!485314 () Bool)

(declare-fun lt!1034159 () Regex!9195)

(declare-fun isEmptyExpr!394 (Regex!9195) Bool)

(assert (=> b!2961188 (= c!485314 (isEmptyExpr!394 lt!1034159))))

(declare-fun e!1863962 () Regex!9195)

(assert (=> b!2961188 (= e!1863969 e!1863962)))

(declare-fun b!2961189 () Bool)

(declare-fun lt!1034164 () Regex!9195)

(assert (=> b!2961189 (= e!1863962 lt!1034164)))

(declare-fun b!2961190 () Bool)

(declare-fun c!485321 () Bool)

(declare-fun call!196407 () Bool)

(assert (=> b!2961190 (= c!485321 call!196407)))

(declare-fun e!1863967 () Regex!9195)

(assert (=> b!2961190 (= e!1863967 e!1863966)))

(declare-fun b!2961191 () Bool)

(declare-fun lt!1034161 () Regex!9195)

(assert (=> b!2961191 (= e!1863967 lt!1034161)))

(declare-fun b!2961192 () Bool)

(declare-fun e!1863973 () Regex!9195)

(assert (=> b!2961192 (= e!1863973 EmptyExpr!9195)))

(declare-fun b!2961193 () Bool)

(declare-fun e!1863972 () Bool)

(declare-fun call!196406 () Bool)

(assert (=> b!2961193 (= e!1863972 call!196406)))

(declare-fun bm!196400 () Bool)

(declare-fun call!196405 () Bool)

(assert (=> bm!196400 (= call!196407 call!196405)))

(declare-fun lt!1034162 () Regex!9195)

(declare-fun bm!196401 () Bool)

(declare-fun c!485315 () Bool)

(assert (=> bm!196401 (= call!196406 (isEmptyExpr!394 (ite c!485315 lt!1034162 lt!1034164)))))

(declare-fun b!2961194 () Bool)

(declare-fun e!1863968 () Regex!9195)

(assert (=> b!2961194 (= e!1863968 e!1863967)))

(declare-fun call!196410 () Regex!9195)

(assert (=> b!2961194 (= lt!1034160 call!196410)))

(declare-fun call!196409 () Regex!9195)

(assert (=> b!2961194 (= lt!1034161 call!196409)))

(declare-fun c!485312 () Bool)

(declare-fun call!196411 () Bool)

(assert (=> b!2961194 (= c!485312 call!196411)))

(declare-fun b!2961196 () Bool)

(declare-fun e!1863970 () Bool)

(declare-fun lt!1034163 () Regex!9195)

(declare-fun nullable!2936 (Regex!9195) Bool)

(assert (=> b!2961196 (= e!1863970 (= (nullable!2936 lt!1034163) (nullable!2936 (regTwo!18903 r!17423))))))

(declare-fun b!2961197 () Bool)

(declare-fun e!1863964 () Regex!9195)

(assert (=> b!2961197 (= e!1863964 lt!1034159)))

(declare-fun bm!196402 () Bool)

(declare-fun call!196408 () Regex!9195)

(assert (=> bm!196402 (= call!196409 call!196408)))

(declare-fun b!2961198 () Bool)

(assert (=> b!2961198 (= e!1863964 (Concat!14516 lt!1034159 lt!1034164))))

(declare-fun bm!196403 () Bool)

(declare-fun c!485318 () Bool)

(assert (=> bm!196403 (= call!196411 (isEmptyLang!313 (ite c!485318 lt!1034160 lt!1034159)))))

(declare-fun b!2961199 () Bool)

(declare-fun e!1863971 () Regex!9195)

(assert (=> b!2961199 (= e!1863971 EmptyExpr!9195)))

(declare-fun b!2961200 () Bool)

(assert (=> b!2961200 (= e!1863968 e!1863969)))

(assert (=> b!2961200 (= lt!1034159 call!196409)))

(assert (=> b!2961200 (= lt!1034164 call!196410)))

(declare-fun res!1221714 () Bool)

(assert (=> b!2961200 (= res!1221714 call!196411)))

(declare-fun e!1863960 () Bool)

(assert (=> b!2961200 (=> res!1221714 e!1863960)))

(declare-fun c!485322 () Bool)

(assert (=> b!2961200 (= c!485322 e!1863960)))

(declare-fun bm!196404 () Bool)

(assert (=> bm!196404 (= call!196405 (isEmptyLang!313 (ite c!485315 lt!1034162 (ite c!485318 lt!1034161 lt!1034164))))))

(declare-fun b!2961201 () Bool)

(assert (=> b!2961201 (= c!485318 ((_ is Union!9195) (regTwo!18903 r!17423)))))

(declare-fun e!1863965 () Regex!9195)

(assert (=> b!2961201 (= e!1863965 e!1863968)))

(declare-fun b!2961202 () Bool)

(declare-fun e!1863963 () Regex!9195)

(assert (=> b!2961202 (= e!1863963 (regTwo!18903 r!17423))))

(declare-fun b!2961203 () Bool)

(declare-fun e!1863961 () Regex!9195)

(assert (=> b!2961203 (= e!1863961 e!1863963)))

(declare-fun c!485320 () Bool)

(assert (=> b!2961203 (= c!485320 ((_ is ElementMatch!9195) (regTwo!18903 r!17423)))))

(declare-fun b!2961204 () Bool)

(assert (=> b!2961204 (= e!1863962 e!1863964)))

(declare-fun c!485319 () Bool)

(assert (=> b!2961204 (= c!485319 call!196406)))

(declare-fun bm!196405 () Bool)

(assert (=> bm!196405 (= call!196410 (simplify!198 (ite c!485318 (regOne!18903 (regTwo!18903 r!17423)) (regTwo!18902 (regTwo!18903 r!17423)))))))

(declare-fun b!2961205 () Bool)

(assert (=> b!2961205 (= e!1863960 call!196407)))

(declare-fun b!2961206 () Bool)

(declare-fun c!485317 () Bool)

(assert (=> b!2961206 (= c!485317 ((_ is EmptyExpr!9195) (regTwo!18903 r!17423)))))

(assert (=> b!2961206 (= e!1863963 e!1863973)))

(declare-fun b!2961207 () Bool)

(assert (=> b!2961207 (= e!1863961 EmptyLang!9195)))

(declare-fun b!2961208 () Bool)

(declare-fun c!485316 () Bool)

(assert (=> b!2961208 (= c!485316 e!1863972)))

(declare-fun res!1221715 () Bool)

(assert (=> b!2961208 (=> res!1221715 e!1863972)))

(assert (=> b!2961208 (= res!1221715 call!196405)))

(assert (=> b!2961208 (= lt!1034162 call!196408)))

(assert (=> b!2961208 (= e!1863965 e!1863971)))

(declare-fun b!2961209 () Bool)

(assert (=> b!2961209 (= e!1863966 (Union!9195 lt!1034160 lt!1034161))))

(declare-fun bm!196406 () Bool)

(assert (=> bm!196406 (= call!196408 (simplify!198 (ite c!485315 (reg!9524 (regTwo!18903 r!17423)) (ite c!485318 (regTwo!18903 (regTwo!18903 r!17423)) (regOne!18902 (regTwo!18903 r!17423))))))))

(declare-fun b!2961210 () Bool)

(assert (=> b!2961210 (= e!1863973 e!1863965)))

(assert (=> b!2961210 (= c!485315 ((_ is Star!9195) (regTwo!18903 r!17423)))))

(declare-fun b!2961195 () Bool)

(assert (=> b!2961195 (= e!1863971 (Star!9195 lt!1034162))))

(declare-fun d!842019 () Bool)

(assert (=> d!842019 e!1863970))

(declare-fun res!1221713 () Bool)

(assert (=> d!842019 (=> (not res!1221713) (not e!1863970))))

(assert (=> d!842019 (= res!1221713 (validRegex!3928 lt!1034163))))

(assert (=> d!842019 (= lt!1034163 e!1863961)))

(declare-fun c!485313 () Bool)

(assert (=> d!842019 (= c!485313 ((_ is EmptyLang!9195) (regTwo!18903 r!17423)))))

(assert (=> d!842019 (validRegex!3928 (regTwo!18903 r!17423))))

(assert (=> d!842019 (= (simplify!198 (regTwo!18903 r!17423)) lt!1034163)))

(assert (= (and d!842019 c!485313) b!2961207))

(assert (= (and d!842019 (not c!485313)) b!2961203))

(assert (= (and b!2961203 c!485320) b!2961202))

(assert (= (and b!2961203 (not c!485320)) b!2961206))

(assert (= (and b!2961206 c!485317) b!2961192))

(assert (= (and b!2961206 (not c!485317)) b!2961210))

(assert (= (and b!2961210 c!485315) b!2961208))

(assert (= (and b!2961210 (not c!485315)) b!2961201))

(assert (= (and b!2961208 (not res!1221715)) b!2961193))

(assert (= (and b!2961208 c!485316) b!2961199))

(assert (= (and b!2961208 (not c!485316)) b!2961195))

(assert (= (and b!2961201 c!485318) b!2961194))

(assert (= (and b!2961201 (not c!485318)) b!2961200))

(assert (= (and b!2961194 c!485312) b!2961191))

(assert (= (and b!2961194 (not c!485312)) b!2961190))

(assert (= (and b!2961190 c!485321) b!2961187))

(assert (= (and b!2961190 (not c!485321)) b!2961209))

(assert (= (and b!2961200 (not res!1221714)) b!2961205))

(assert (= (and b!2961200 c!485322) b!2961186))

(assert (= (and b!2961200 (not c!485322)) b!2961188))

(assert (= (and b!2961188 c!485314) b!2961189))

(assert (= (and b!2961188 (not c!485314)) b!2961204))

(assert (= (and b!2961204 c!485319) b!2961197))

(assert (= (and b!2961204 (not c!485319)) b!2961198))

(assert (= (or b!2961194 b!2961200) bm!196405))

(assert (= (or b!2961194 b!2961200) bm!196402))

(assert (= (or b!2961194 b!2961200) bm!196403))

(assert (= (or b!2961190 b!2961205) bm!196400))

(assert (= (or b!2961193 b!2961204) bm!196401))

(assert (= (or b!2961208 bm!196402) bm!196406))

(assert (= (or b!2961208 bm!196400) bm!196404))

(assert (= (and d!842019 res!1221713) b!2961196))

(declare-fun m!3334327 () Bool)

(assert (=> bm!196406 m!3334327))

(declare-fun m!3334329 () Bool)

(assert (=> b!2961196 m!3334329))

(declare-fun m!3334331 () Bool)

(assert (=> b!2961196 m!3334331))

(declare-fun m!3334333 () Bool)

(assert (=> bm!196403 m!3334333))

(declare-fun m!3334335 () Bool)

(assert (=> bm!196404 m!3334335))

(declare-fun m!3334337 () Bool)

(assert (=> d!842019 m!3334337))

(assert (=> d!842019 m!3334317))

(declare-fun m!3334339 () Bool)

(assert (=> bm!196405 m!3334339))

(declare-fun m!3334341 () Bool)

(assert (=> bm!196401 m!3334341))

(declare-fun m!3334343 () Bool)

(assert (=> b!2961188 m!3334343))

(assert (=> b!2961078 d!842019))

(declare-fun b!2961236 () Bool)

(declare-fun e!1863997 () Regex!9195)

(assert (=> b!2961236 (= e!1863997 EmptyLang!9195)))

(declare-fun b!2961237 () Bool)

(declare-fun e!1863994 () Regex!9195)

(declare-fun lt!1034172 () Regex!9195)

(assert (=> b!2961237 (= e!1863994 lt!1034172)))

(declare-fun b!2961238 () Bool)

(declare-fun c!485336 () Bool)

(declare-fun lt!1034171 () Regex!9195)

(assert (=> b!2961238 (= c!485336 (isEmptyExpr!394 lt!1034171))))

(declare-fun e!1863990 () Regex!9195)

(assert (=> b!2961238 (= e!1863997 e!1863990)))

(declare-fun b!2961239 () Bool)

(declare-fun lt!1034176 () Regex!9195)

(assert (=> b!2961239 (= e!1863990 lt!1034176)))

(declare-fun b!2961240 () Bool)

(declare-fun c!485343 () Bool)

(declare-fun call!196421 () Bool)

(assert (=> b!2961240 (= c!485343 call!196421)))

(declare-fun e!1863995 () Regex!9195)

(assert (=> b!2961240 (= e!1863995 e!1863994)))

(declare-fun b!2961241 () Bool)

(declare-fun lt!1034173 () Regex!9195)

(assert (=> b!2961241 (= e!1863995 lt!1034173)))

(declare-fun b!2961242 () Bool)

(declare-fun e!1864001 () Regex!9195)

(assert (=> b!2961242 (= e!1864001 EmptyExpr!9195)))

(declare-fun b!2961243 () Bool)

(declare-fun e!1864000 () Bool)

(declare-fun call!196420 () Bool)

(assert (=> b!2961243 (= e!1864000 call!196420)))

(declare-fun bm!196414 () Bool)

(declare-fun call!196419 () Bool)

(assert (=> bm!196414 (= call!196421 call!196419)))

(declare-fun lt!1034174 () Regex!9195)

(declare-fun c!485337 () Bool)

(declare-fun bm!196415 () Bool)

(assert (=> bm!196415 (= call!196420 (isEmptyExpr!394 (ite c!485337 lt!1034174 lt!1034176)))))

(declare-fun b!2961244 () Bool)

(declare-fun e!1863996 () Regex!9195)

(assert (=> b!2961244 (= e!1863996 e!1863995)))

(declare-fun call!196424 () Regex!9195)

(assert (=> b!2961244 (= lt!1034172 call!196424)))

(declare-fun call!196423 () Regex!9195)

(assert (=> b!2961244 (= lt!1034173 call!196423)))

(declare-fun c!485334 () Bool)

(declare-fun call!196425 () Bool)

(assert (=> b!2961244 (= c!485334 call!196425)))

(declare-fun b!2961246 () Bool)

(declare-fun e!1863998 () Bool)

(declare-fun lt!1034175 () Regex!9195)

(assert (=> b!2961246 (= e!1863998 (= (nullable!2936 lt!1034175) (nullable!2936 (regOne!18903 r!17423))))))

(declare-fun b!2961247 () Bool)

(declare-fun e!1863992 () Regex!9195)

(assert (=> b!2961247 (= e!1863992 lt!1034171)))

(declare-fun bm!196416 () Bool)

(declare-fun call!196422 () Regex!9195)

(assert (=> bm!196416 (= call!196423 call!196422)))

(declare-fun b!2961248 () Bool)

(assert (=> b!2961248 (= e!1863992 (Concat!14516 lt!1034171 lt!1034176))))

(declare-fun c!485340 () Bool)

(declare-fun bm!196417 () Bool)

(assert (=> bm!196417 (= call!196425 (isEmptyLang!313 (ite c!485340 lt!1034172 lt!1034171)))))

(declare-fun b!2961249 () Bool)

(declare-fun e!1863999 () Regex!9195)

(assert (=> b!2961249 (= e!1863999 EmptyExpr!9195)))

(declare-fun b!2961250 () Bool)

(assert (=> b!2961250 (= e!1863996 e!1863997)))

(assert (=> b!2961250 (= lt!1034171 call!196423)))

(assert (=> b!2961250 (= lt!1034176 call!196424)))

(declare-fun res!1221720 () Bool)

(assert (=> b!2961250 (= res!1221720 call!196425)))

(declare-fun e!1863988 () Bool)

(assert (=> b!2961250 (=> res!1221720 e!1863988)))

(declare-fun c!485344 () Bool)

(assert (=> b!2961250 (= c!485344 e!1863988)))

(declare-fun bm!196418 () Bool)

(assert (=> bm!196418 (= call!196419 (isEmptyLang!313 (ite c!485337 lt!1034174 (ite c!485340 lt!1034173 lt!1034176))))))

(declare-fun b!2961251 () Bool)

(assert (=> b!2961251 (= c!485340 ((_ is Union!9195) (regOne!18903 r!17423)))))

(declare-fun e!1863993 () Regex!9195)

(assert (=> b!2961251 (= e!1863993 e!1863996)))

(declare-fun b!2961252 () Bool)

(declare-fun e!1863991 () Regex!9195)

(assert (=> b!2961252 (= e!1863991 (regOne!18903 r!17423))))

(declare-fun b!2961253 () Bool)

(declare-fun e!1863989 () Regex!9195)

(assert (=> b!2961253 (= e!1863989 e!1863991)))

(declare-fun c!485342 () Bool)

(assert (=> b!2961253 (= c!485342 ((_ is ElementMatch!9195) (regOne!18903 r!17423)))))

(declare-fun b!2961254 () Bool)

(assert (=> b!2961254 (= e!1863990 e!1863992)))

(declare-fun c!485341 () Bool)

(assert (=> b!2961254 (= c!485341 call!196420)))

(declare-fun bm!196419 () Bool)

(assert (=> bm!196419 (= call!196424 (simplify!198 (ite c!485340 (regOne!18903 (regOne!18903 r!17423)) (regTwo!18902 (regOne!18903 r!17423)))))))

(declare-fun b!2961255 () Bool)

(assert (=> b!2961255 (= e!1863988 call!196421)))

(declare-fun b!2961256 () Bool)

(declare-fun c!485339 () Bool)

(assert (=> b!2961256 (= c!485339 ((_ is EmptyExpr!9195) (regOne!18903 r!17423)))))

(assert (=> b!2961256 (= e!1863991 e!1864001)))

(declare-fun b!2961257 () Bool)

(assert (=> b!2961257 (= e!1863989 EmptyLang!9195)))

(declare-fun b!2961258 () Bool)

(declare-fun c!485338 () Bool)

(assert (=> b!2961258 (= c!485338 e!1864000)))

(declare-fun res!1221721 () Bool)

(assert (=> b!2961258 (=> res!1221721 e!1864000)))

(assert (=> b!2961258 (= res!1221721 call!196419)))

(assert (=> b!2961258 (= lt!1034174 call!196422)))

(assert (=> b!2961258 (= e!1863993 e!1863999)))

(declare-fun b!2961259 () Bool)

(assert (=> b!2961259 (= e!1863994 (Union!9195 lt!1034172 lt!1034173))))

(declare-fun bm!196420 () Bool)

(assert (=> bm!196420 (= call!196422 (simplify!198 (ite c!485337 (reg!9524 (regOne!18903 r!17423)) (ite c!485340 (regTwo!18903 (regOne!18903 r!17423)) (regOne!18902 (regOne!18903 r!17423))))))))

(declare-fun b!2961260 () Bool)

(assert (=> b!2961260 (= e!1864001 e!1863993)))

(assert (=> b!2961260 (= c!485337 ((_ is Star!9195) (regOne!18903 r!17423)))))

(declare-fun b!2961245 () Bool)

(assert (=> b!2961245 (= e!1863999 (Star!9195 lt!1034174))))

(declare-fun d!842025 () Bool)

(assert (=> d!842025 e!1863998))

(declare-fun res!1221719 () Bool)

(assert (=> d!842025 (=> (not res!1221719) (not e!1863998))))

(assert (=> d!842025 (= res!1221719 (validRegex!3928 lt!1034175))))

(assert (=> d!842025 (= lt!1034175 e!1863989)))

(declare-fun c!485335 () Bool)

(assert (=> d!842025 (= c!485335 ((_ is EmptyLang!9195) (regOne!18903 r!17423)))))

(assert (=> d!842025 (validRegex!3928 (regOne!18903 r!17423))))

(assert (=> d!842025 (= (simplify!198 (regOne!18903 r!17423)) lt!1034175)))

(assert (= (and d!842025 c!485335) b!2961257))

(assert (= (and d!842025 (not c!485335)) b!2961253))

(assert (= (and b!2961253 c!485342) b!2961252))

(assert (= (and b!2961253 (not c!485342)) b!2961256))

(assert (= (and b!2961256 c!485339) b!2961242))

(assert (= (and b!2961256 (not c!485339)) b!2961260))

(assert (= (and b!2961260 c!485337) b!2961258))

(assert (= (and b!2961260 (not c!485337)) b!2961251))

(assert (= (and b!2961258 (not res!1221721)) b!2961243))

(assert (= (and b!2961258 c!485338) b!2961249))

(assert (= (and b!2961258 (not c!485338)) b!2961245))

(assert (= (and b!2961251 c!485340) b!2961244))

(assert (= (and b!2961251 (not c!485340)) b!2961250))

(assert (= (and b!2961244 c!485334) b!2961241))

(assert (= (and b!2961244 (not c!485334)) b!2961240))

(assert (= (and b!2961240 c!485343) b!2961237))

(assert (= (and b!2961240 (not c!485343)) b!2961259))

(assert (= (and b!2961250 (not res!1221720)) b!2961255))

(assert (= (and b!2961250 c!485344) b!2961236))

(assert (= (and b!2961250 (not c!485344)) b!2961238))

(assert (= (and b!2961238 c!485336) b!2961239))

(assert (= (and b!2961238 (not c!485336)) b!2961254))

(assert (= (and b!2961254 c!485341) b!2961247))

(assert (= (and b!2961254 (not c!485341)) b!2961248))

(assert (= (or b!2961244 b!2961250) bm!196419))

(assert (= (or b!2961244 b!2961250) bm!196416))

(assert (= (or b!2961244 b!2961250) bm!196417))

(assert (= (or b!2961240 b!2961255) bm!196414))

(assert (= (or b!2961243 b!2961254) bm!196415))

(assert (= (or b!2961258 bm!196416) bm!196420))

(assert (= (or b!2961258 bm!196414) bm!196418))

(assert (= (and d!842025 res!1221719) b!2961246))

(declare-fun m!3334363 () Bool)

(assert (=> bm!196420 m!3334363))

(declare-fun m!3334365 () Bool)

(assert (=> b!2961246 m!3334365))

(declare-fun m!3334367 () Bool)

(assert (=> b!2961246 m!3334367))

(declare-fun m!3334369 () Bool)

(assert (=> bm!196417 m!3334369))

(declare-fun m!3334371 () Bool)

(assert (=> bm!196418 m!3334371))

(declare-fun m!3334373 () Bool)

(assert (=> d!842025 m!3334373))

(declare-fun m!3334375 () Bool)

(assert (=> d!842025 m!3334375))

(declare-fun m!3334377 () Bool)

(assert (=> bm!196419 m!3334377))

(declare-fun m!3334379 () Bool)

(assert (=> bm!196415 m!3334379))

(declare-fun m!3334381 () Bool)

(assert (=> b!2961238 m!3334381))

(assert (=> b!2961078 d!842025))

(declare-fun b!2961322 () Bool)

(declare-fun res!1221745 () Bool)

(declare-fun e!1864046 () Bool)

(assert (=> b!2961322 (=> (not res!1221745) (not e!1864046))))

(declare-fun call!196445 () Bool)

(assert (=> b!2961322 (= res!1221745 call!196445)))

(declare-fun e!1864045 () Bool)

(assert (=> b!2961322 (= e!1864045 e!1864046)))

(declare-fun b!2961323 () Bool)

(declare-fun e!1864047 () Bool)

(assert (=> b!2961323 (= e!1864047 call!196445)))

(declare-fun bm!196440 () Bool)

(declare-fun call!196446 () Bool)

(assert (=> bm!196440 (= call!196445 call!196446)))

(declare-fun d!842029 () Bool)

(declare-fun res!1221748 () Bool)

(declare-fun e!1864049 () Bool)

(assert (=> d!842029 (=> res!1221748 e!1864049)))

(assert (=> d!842029 (= res!1221748 ((_ is ElementMatch!9195) r!17423))))

(assert (=> d!842029 (= (validRegex!3928 r!17423) e!1864049)))

(declare-fun bm!196441 () Bool)

(declare-fun call!196447 () Bool)

(declare-fun c!485364 () Bool)

(assert (=> bm!196441 (= call!196447 (validRegex!3928 (ite c!485364 (regTwo!18903 r!17423) (regOne!18902 r!17423))))))

(declare-fun b!2961324 () Bool)

(declare-fun e!1864050 () Bool)

(assert (=> b!2961324 (= e!1864050 e!1864045)))

(assert (=> b!2961324 (= c!485364 ((_ is Union!9195) r!17423))))

(declare-fun b!2961325 () Bool)

(declare-fun res!1221746 () Bool)

(declare-fun e!1864048 () Bool)

(assert (=> b!2961325 (=> res!1221746 e!1864048)))

(assert (=> b!2961325 (= res!1221746 (not ((_ is Concat!14516) r!17423)))))

(assert (=> b!2961325 (= e!1864045 e!1864048)))

(declare-fun b!2961326 () Bool)

(declare-fun e!1864044 () Bool)

(assert (=> b!2961326 (= e!1864044 call!196446)))

(declare-fun b!2961327 () Bool)

(assert (=> b!2961327 (= e!1864046 call!196447)))

(declare-fun c!485365 () Bool)

(declare-fun bm!196442 () Bool)

(assert (=> bm!196442 (= call!196446 (validRegex!3928 (ite c!485365 (reg!9524 r!17423) (ite c!485364 (regOne!18903 r!17423) (regTwo!18902 r!17423)))))))

(declare-fun b!2961328 () Bool)

(assert (=> b!2961328 (= e!1864049 e!1864050)))

(assert (=> b!2961328 (= c!485365 ((_ is Star!9195) r!17423))))

(declare-fun b!2961329 () Bool)

(assert (=> b!2961329 (= e!1864048 e!1864047)))

(declare-fun res!1221747 () Bool)

(assert (=> b!2961329 (=> (not res!1221747) (not e!1864047))))

(assert (=> b!2961329 (= res!1221747 call!196447)))

(declare-fun b!2961330 () Bool)

(assert (=> b!2961330 (= e!1864050 e!1864044)))

(declare-fun res!1221749 () Bool)

(assert (=> b!2961330 (= res!1221749 (not (nullable!2936 (reg!9524 r!17423))))))

(assert (=> b!2961330 (=> (not res!1221749) (not e!1864044))))

(assert (= (and d!842029 (not res!1221748)) b!2961328))

(assert (= (and b!2961328 c!485365) b!2961330))

(assert (= (and b!2961328 (not c!485365)) b!2961324))

(assert (= (and b!2961330 res!1221749) b!2961326))

(assert (= (and b!2961324 c!485364) b!2961322))

(assert (= (and b!2961324 (not c!485364)) b!2961325))

(assert (= (and b!2961322 res!1221745) b!2961327))

(assert (= (and b!2961325 (not res!1221746)) b!2961329))

(assert (= (and b!2961329 res!1221747) b!2961323))

(assert (= (or b!2961322 b!2961323) bm!196440))

(assert (= (or b!2961327 b!2961329) bm!196441))

(assert (= (or b!2961326 bm!196440) bm!196442))

(declare-fun m!3334403 () Bool)

(assert (=> bm!196441 m!3334403))

(declare-fun m!3334405 () Bool)

(assert (=> bm!196442 m!3334405))

(declare-fun m!3334407 () Bool)

(assert (=> b!2961330 m!3334407))

(assert (=> start!286892 d!842029))

(declare-fun b!2961340 () Bool)

(declare-fun res!1221755 () Bool)

(declare-fun e!1864060 () Bool)

(assert (=> b!2961340 (=> (not res!1221755) (not e!1864060))))

(declare-fun call!196451 () Bool)

(assert (=> b!2961340 (= res!1221755 call!196451)))

(declare-fun e!1864059 () Bool)

(assert (=> b!2961340 (= e!1864059 e!1864060)))

(declare-fun b!2961341 () Bool)

(declare-fun e!1864061 () Bool)

(assert (=> b!2961341 (= e!1864061 call!196451)))

(declare-fun bm!196446 () Bool)

(declare-fun call!196452 () Bool)

(assert (=> bm!196446 (= call!196451 call!196452)))

(declare-fun d!842033 () Bool)

(declare-fun res!1221758 () Bool)

(declare-fun e!1864063 () Bool)

(assert (=> d!842033 (=> res!1221758 e!1864063)))

(assert (=> d!842033 (= res!1221758 ((_ is ElementMatch!9195) (regTwo!18903 r!17423)))))

(assert (=> d!842033 (= (validRegex!3928 (regTwo!18903 r!17423)) e!1864063)))

(declare-fun bm!196447 () Bool)

(declare-fun call!196453 () Bool)

(declare-fun c!485368 () Bool)

(assert (=> bm!196447 (= call!196453 (validRegex!3928 (ite c!485368 (regTwo!18903 (regTwo!18903 r!17423)) (regOne!18902 (regTwo!18903 r!17423)))))))

(declare-fun b!2961342 () Bool)

(declare-fun e!1864064 () Bool)

(assert (=> b!2961342 (= e!1864064 e!1864059)))

(assert (=> b!2961342 (= c!485368 ((_ is Union!9195) (regTwo!18903 r!17423)))))

(declare-fun b!2961343 () Bool)

(declare-fun res!1221756 () Bool)

(declare-fun e!1864062 () Bool)

(assert (=> b!2961343 (=> res!1221756 e!1864062)))

(assert (=> b!2961343 (= res!1221756 (not ((_ is Concat!14516) (regTwo!18903 r!17423))))))

(assert (=> b!2961343 (= e!1864059 e!1864062)))

(declare-fun b!2961344 () Bool)

(declare-fun e!1864058 () Bool)

(assert (=> b!2961344 (= e!1864058 call!196452)))

(declare-fun b!2961345 () Bool)

(assert (=> b!2961345 (= e!1864060 call!196453)))

(declare-fun bm!196448 () Bool)

(declare-fun c!485369 () Bool)

(assert (=> bm!196448 (= call!196452 (validRegex!3928 (ite c!485369 (reg!9524 (regTwo!18903 r!17423)) (ite c!485368 (regOne!18903 (regTwo!18903 r!17423)) (regTwo!18902 (regTwo!18903 r!17423))))))))

(declare-fun b!2961346 () Bool)

(assert (=> b!2961346 (= e!1864063 e!1864064)))

(assert (=> b!2961346 (= c!485369 ((_ is Star!9195) (regTwo!18903 r!17423)))))

(declare-fun b!2961347 () Bool)

(assert (=> b!2961347 (= e!1864062 e!1864061)))

(declare-fun res!1221757 () Bool)

(assert (=> b!2961347 (=> (not res!1221757) (not e!1864061))))

(assert (=> b!2961347 (= res!1221757 call!196453)))

(declare-fun b!2961348 () Bool)

(assert (=> b!2961348 (= e!1864064 e!1864058)))

(declare-fun res!1221759 () Bool)

(assert (=> b!2961348 (= res!1221759 (not (nullable!2936 (reg!9524 (regTwo!18903 r!17423)))))))

(assert (=> b!2961348 (=> (not res!1221759) (not e!1864058))))

(assert (= (and d!842033 (not res!1221758)) b!2961346))

(assert (= (and b!2961346 c!485369) b!2961348))

(assert (= (and b!2961346 (not c!485369)) b!2961342))

(assert (= (and b!2961348 res!1221759) b!2961344))

(assert (= (and b!2961342 c!485368) b!2961340))

(assert (= (and b!2961342 (not c!485368)) b!2961343))

(assert (= (and b!2961340 res!1221755) b!2961345))

(assert (= (and b!2961343 (not res!1221756)) b!2961347))

(assert (= (and b!2961347 res!1221757) b!2961341))

(assert (= (or b!2961340 b!2961341) bm!196446))

(assert (= (or b!2961345 b!2961347) bm!196447))

(assert (= (or b!2961344 bm!196446) bm!196448))

(declare-fun m!3334415 () Bool)

(assert (=> bm!196447 m!3334415))

(declare-fun m!3334417 () Bool)

(assert (=> bm!196448 m!3334417))

(declare-fun m!3334419 () Bool)

(assert (=> b!2961348 m!3334419))

(assert (=> b!2961082 d!842033))

(declare-fun b!2961433 () Bool)

(declare-fun e!1864107 () Bool)

(declare-fun e!1864113 () Bool)

(assert (=> b!2961433 (= e!1864107 e!1864113)))

(declare-fun c!485389 () Bool)

(assert (=> b!2961433 (= c!485389 ((_ is EmptyLang!9195) (regTwo!18903 r!17423)))))

(declare-fun b!2961434 () Bool)

(declare-fun e!1864110 () Bool)

(declare-fun e!1864111 () Bool)

(assert (=> b!2961434 (= e!1864110 e!1864111)))

(declare-fun res!1221814 () Bool)

(assert (=> b!2961434 (=> (not res!1221814) (not e!1864111))))

(declare-fun lt!1034189 () Bool)

(assert (=> b!2961434 (= res!1221814 (not lt!1034189))))

(declare-fun b!2961435 () Bool)

(declare-fun res!1221808 () Bool)

(assert (=> b!2961435 (=> res!1221808 e!1864110)))

(declare-fun e!1864112 () Bool)

(assert (=> b!2961435 (= res!1221808 e!1864112)))

(declare-fun res!1221812 () Bool)

(assert (=> b!2961435 (=> (not res!1221812) (not e!1864112))))

(assert (=> b!2961435 (= res!1221812 lt!1034189)))

(declare-fun b!2961436 () Bool)

(declare-fun e!1864108 () Bool)

(assert (=> b!2961436 (= e!1864108 (nullable!2936 (regTwo!18903 r!17423)))))

(declare-fun d!842037 () Bool)

(assert (=> d!842037 e!1864107))

(declare-fun c!485388 () Bool)

(assert (=> d!842037 (= c!485388 ((_ is EmptyExpr!9195) (regTwo!18903 r!17423)))))

(assert (=> d!842037 (= lt!1034189 e!1864108)))

(declare-fun c!485390 () Bool)

(declare-fun isEmpty!19217 (List!35060) Bool)

(assert (=> d!842037 (= c!485390 (isEmpty!19217 s!11993))))

(assert (=> d!842037 (validRegex!3928 (regTwo!18903 r!17423))))

(assert (=> d!842037 (= (matchR!4077 (regTwo!18903 r!17423) s!11993) lt!1034189)))

(declare-fun b!2961437 () Bool)

(declare-fun res!1221815 () Bool)

(assert (=> b!2961437 (=> res!1221815 e!1864110)))

(assert (=> b!2961437 (= res!1221815 (not ((_ is ElementMatch!9195) (regTwo!18903 r!17423))))))

(assert (=> b!2961437 (= e!1864113 e!1864110)))

(declare-fun b!2961438 () Bool)

(assert (=> b!2961438 (= e!1864113 (not lt!1034189))))

(declare-fun b!2961439 () Bool)

(declare-fun res!1221813 () Bool)

(assert (=> b!2961439 (=> (not res!1221813) (not e!1864112))))

(declare-fun call!196460 () Bool)

(assert (=> b!2961439 (= res!1221813 (not call!196460))))

(declare-fun b!2961440 () Bool)

(declare-fun head!6597 (List!35060) C!18576)

(assert (=> b!2961440 (= e!1864112 (= (head!6597 s!11993) (c!485267 (regTwo!18903 r!17423))))))

(declare-fun b!2961441 () Bool)

(assert (=> b!2961441 (= e!1864107 (= lt!1034189 call!196460))))

(declare-fun b!2961442 () Bool)

(declare-fun res!1221811 () Bool)

(assert (=> b!2961442 (=> (not res!1221811) (not e!1864112))))

(declare-fun tail!4823 (List!35060) List!35060)

(assert (=> b!2961442 (= res!1221811 (isEmpty!19217 (tail!4823 s!11993)))))

(declare-fun bm!196455 () Bool)

(assert (=> bm!196455 (= call!196460 (isEmpty!19217 s!11993))))

(declare-fun b!2961443 () Bool)

(declare-fun e!1864109 () Bool)

(assert (=> b!2961443 (= e!1864111 e!1864109)))

(declare-fun res!1221810 () Bool)

(assert (=> b!2961443 (=> res!1221810 e!1864109)))

(assert (=> b!2961443 (= res!1221810 call!196460)))

(declare-fun b!2961444 () Bool)

(declare-fun res!1221809 () Bool)

(assert (=> b!2961444 (=> res!1221809 e!1864109)))

(assert (=> b!2961444 (= res!1221809 (not (isEmpty!19217 (tail!4823 s!11993))))))

(declare-fun b!2961445 () Bool)

(assert (=> b!2961445 (= e!1864109 (not (= (head!6597 s!11993) (c!485267 (regTwo!18903 r!17423)))))))

(declare-fun b!2961446 () Bool)

(declare-fun derivativeStep!2538 (Regex!9195 C!18576) Regex!9195)

(assert (=> b!2961446 (= e!1864108 (matchR!4077 (derivativeStep!2538 (regTwo!18903 r!17423) (head!6597 s!11993)) (tail!4823 s!11993)))))

(assert (= (and d!842037 c!485390) b!2961436))

(assert (= (and d!842037 (not c!485390)) b!2961446))

(assert (= (and d!842037 c!485388) b!2961441))

(assert (= (and d!842037 (not c!485388)) b!2961433))

(assert (= (and b!2961433 c!485389) b!2961438))

(assert (= (and b!2961433 (not c!485389)) b!2961437))

(assert (= (and b!2961437 (not res!1221815)) b!2961435))

(assert (= (and b!2961435 res!1221812) b!2961439))

(assert (= (and b!2961439 res!1221813) b!2961442))

(assert (= (and b!2961442 res!1221811) b!2961440))

(assert (= (and b!2961435 (not res!1221808)) b!2961434))

(assert (= (and b!2961434 res!1221814) b!2961443))

(assert (= (and b!2961443 (not res!1221810)) b!2961444))

(assert (= (and b!2961444 (not res!1221809)) b!2961445))

(assert (= (or b!2961441 b!2961439 b!2961443) bm!196455))

(declare-fun m!3334441 () Bool)

(assert (=> bm!196455 m!3334441))

(declare-fun m!3334443 () Bool)

(assert (=> b!2961446 m!3334443))

(assert (=> b!2961446 m!3334443))

(declare-fun m!3334445 () Bool)

(assert (=> b!2961446 m!3334445))

(declare-fun m!3334447 () Bool)

(assert (=> b!2961446 m!3334447))

(assert (=> b!2961446 m!3334445))

(assert (=> b!2961446 m!3334447))

(declare-fun m!3334449 () Bool)

(assert (=> b!2961446 m!3334449))

(assert (=> b!2961442 m!3334447))

(assert (=> b!2961442 m!3334447))

(declare-fun m!3334451 () Bool)

(assert (=> b!2961442 m!3334451))

(assert (=> b!2961436 m!3334331))

(assert (=> b!2961440 m!3334443))

(assert (=> b!2961444 m!3334447))

(assert (=> b!2961444 m!3334447))

(assert (=> b!2961444 m!3334451))

(assert (=> b!2961445 m!3334443))

(assert (=> d!842037 m!3334441))

(assert (=> d!842037 m!3334317))

(assert (=> b!2961082 d!842037))

(declare-fun b!2961447 () Bool)

(declare-fun e!1864114 () Bool)

(declare-fun e!1864120 () Bool)

(assert (=> b!2961447 (= e!1864114 e!1864120)))

(declare-fun c!485392 () Bool)

(assert (=> b!2961447 (= c!485392 ((_ is EmptyLang!9195) lt!1034133))))

(declare-fun b!2961448 () Bool)

(declare-fun e!1864117 () Bool)

(declare-fun e!1864118 () Bool)

(assert (=> b!2961448 (= e!1864117 e!1864118)))

(declare-fun res!1221822 () Bool)

(assert (=> b!2961448 (=> (not res!1221822) (not e!1864118))))

(declare-fun lt!1034190 () Bool)

(assert (=> b!2961448 (= res!1221822 (not lt!1034190))))

(declare-fun b!2961449 () Bool)

(declare-fun res!1221816 () Bool)

(assert (=> b!2961449 (=> res!1221816 e!1864117)))

(declare-fun e!1864119 () Bool)

(assert (=> b!2961449 (= res!1221816 e!1864119)))

(declare-fun res!1221820 () Bool)

(assert (=> b!2961449 (=> (not res!1221820) (not e!1864119))))

(assert (=> b!2961449 (= res!1221820 lt!1034190)))

(declare-fun b!2961450 () Bool)

(declare-fun e!1864115 () Bool)

(assert (=> b!2961450 (= e!1864115 (nullable!2936 lt!1034133))))

(declare-fun d!842043 () Bool)

(assert (=> d!842043 e!1864114))

(declare-fun c!485391 () Bool)

(assert (=> d!842043 (= c!485391 ((_ is EmptyExpr!9195) lt!1034133))))

(assert (=> d!842043 (= lt!1034190 e!1864115)))

(declare-fun c!485393 () Bool)

(assert (=> d!842043 (= c!485393 (isEmpty!19217 s!11993))))

(assert (=> d!842043 (validRegex!3928 lt!1034133)))

(assert (=> d!842043 (= (matchR!4077 lt!1034133 s!11993) lt!1034190)))

(declare-fun b!2961451 () Bool)

(declare-fun res!1221823 () Bool)

(assert (=> b!2961451 (=> res!1221823 e!1864117)))

(assert (=> b!2961451 (= res!1221823 (not ((_ is ElementMatch!9195) lt!1034133)))))

(assert (=> b!2961451 (= e!1864120 e!1864117)))

(declare-fun b!2961452 () Bool)

(assert (=> b!2961452 (= e!1864120 (not lt!1034190))))

(declare-fun b!2961453 () Bool)

(declare-fun res!1221821 () Bool)

(assert (=> b!2961453 (=> (not res!1221821) (not e!1864119))))

(declare-fun call!196461 () Bool)

(assert (=> b!2961453 (= res!1221821 (not call!196461))))

(declare-fun b!2961454 () Bool)

(assert (=> b!2961454 (= e!1864119 (= (head!6597 s!11993) (c!485267 lt!1034133)))))

(declare-fun b!2961455 () Bool)

(assert (=> b!2961455 (= e!1864114 (= lt!1034190 call!196461))))

(declare-fun b!2961456 () Bool)

(declare-fun res!1221819 () Bool)

(assert (=> b!2961456 (=> (not res!1221819) (not e!1864119))))

(assert (=> b!2961456 (= res!1221819 (isEmpty!19217 (tail!4823 s!11993)))))

(declare-fun bm!196456 () Bool)

(assert (=> bm!196456 (= call!196461 (isEmpty!19217 s!11993))))

(declare-fun b!2961457 () Bool)

(declare-fun e!1864116 () Bool)

(assert (=> b!2961457 (= e!1864118 e!1864116)))

(declare-fun res!1221818 () Bool)

(assert (=> b!2961457 (=> res!1221818 e!1864116)))

(assert (=> b!2961457 (= res!1221818 call!196461)))

(declare-fun b!2961458 () Bool)

(declare-fun res!1221817 () Bool)

(assert (=> b!2961458 (=> res!1221817 e!1864116)))

(assert (=> b!2961458 (= res!1221817 (not (isEmpty!19217 (tail!4823 s!11993))))))

(declare-fun b!2961459 () Bool)

(assert (=> b!2961459 (= e!1864116 (not (= (head!6597 s!11993) (c!485267 lt!1034133))))))

(declare-fun b!2961460 () Bool)

(assert (=> b!2961460 (= e!1864115 (matchR!4077 (derivativeStep!2538 lt!1034133 (head!6597 s!11993)) (tail!4823 s!11993)))))

(assert (= (and d!842043 c!485393) b!2961450))

(assert (= (and d!842043 (not c!485393)) b!2961460))

(assert (= (and d!842043 c!485391) b!2961455))

(assert (= (and d!842043 (not c!485391)) b!2961447))

(assert (= (and b!2961447 c!485392) b!2961452))

(assert (= (and b!2961447 (not c!485392)) b!2961451))

(assert (= (and b!2961451 (not res!1221823)) b!2961449))

(assert (= (and b!2961449 res!1221820) b!2961453))

(assert (= (and b!2961453 res!1221821) b!2961456))

(assert (= (and b!2961456 res!1221819) b!2961454))

(assert (= (and b!2961449 (not res!1221816)) b!2961448))

(assert (= (and b!2961448 res!1221822) b!2961457))

(assert (= (and b!2961457 (not res!1221818)) b!2961458))

(assert (= (and b!2961458 (not res!1221817)) b!2961459))

(assert (= (or b!2961455 b!2961453 b!2961457) bm!196456))

(assert (=> bm!196456 m!3334441))

(assert (=> b!2961460 m!3334443))

(assert (=> b!2961460 m!3334443))

(declare-fun m!3334453 () Bool)

(assert (=> b!2961460 m!3334453))

(assert (=> b!2961460 m!3334447))

(assert (=> b!2961460 m!3334453))

(assert (=> b!2961460 m!3334447))

(declare-fun m!3334459 () Bool)

(assert (=> b!2961460 m!3334459))

(assert (=> b!2961456 m!3334447))

(assert (=> b!2961456 m!3334447))

(assert (=> b!2961456 m!3334451))

(declare-fun m!3334461 () Bool)

(assert (=> b!2961450 m!3334461))

(assert (=> b!2961454 m!3334443))

(assert (=> b!2961458 m!3334447))

(assert (=> b!2961458 m!3334447))

(assert (=> b!2961458 m!3334451))

(assert (=> b!2961459 m!3334443))

(assert (=> d!842043 m!3334441))

(declare-fun m!3334463 () Bool)

(assert (=> d!842043 m!3334463))

(assert (=> b!2961082 d!842043))

(declare-fun d!842047 () Bool)

(assert (=> d!842047 (= (matchR!4077 (regTwo!18903 r!17423) s!11993) (matchR!4077 (simplify!198 (regTwo!18903 r!17423)) s!11993))))

(declare-fun lt!1034196 () Unit!48769)

(declare-fun choose!17520 (Regex!9195 List!35060) Unit!48769)

(assert (=> d!842047 (= lt!1034196 (choose!17520 (regTwo!18903 r!17423) s!11993))))

(assert (=> d!842047 (validRegex!3928 (regTwo!18903 r!17423))))

(assert (=> d!842047 (= (lemmaSimplifySound!124 (regTwo!18903 r!17423) s!11993) lt!1034196)))

(declare-fun bs!526341 () Bool)

(assert (= bs!526341 d!842047))

(assert (=> bs!526341 m!3334307))

(declare-fun m!3334465 () Bool)

(assert (=> bs!526341 m!3334465))

(assert (=> bs!526341 m!3334307))

(declare-fun m!3334467 () Bool)

(assert (=> bs!526341 m!3334467))

(assert (=> bs!526341 m!3334319))

(assert (=> bs!526341 m!3334317))

(assert (=> b!2961082 d!842047))

(declare-fun b!2961607 () Bool)

(assert (=> b!2961607 true))

(assert (=> b!2961607 true))

(declare-fun bs!526344 () Bool)

(declare-fun b!2961605 () Bool)

(assert (= bs!526344 (and b!2961605 b!2961607)))

(declare-fun lambda!110386 () Int)

(declare-fun lambda!110385 () Int)

(assert (=> bs!526344 (not (= lambda!110386 lambda!110385))))

(assert (=> b!2961605 true))

(assert (=> b!2961605 true))

(declare-fun b!2961598 () Bool)

(declare-fun e!1864191 () Bool)

(assert (=> b!2961598 (= e!1864191 (= s!11993 (Cons!34936 (c!485267 r!17423) Nil!34936)))))

(declare-fun b!2961599 () Bool)

(declare-fun e!1864193 () Bool)

(declare-fun call!196476 () Bool)

(assert (=> b!2961599 (= e!1864193 call!196476)))

(declare-fun b!2961600 () Bool)

(declare-fun c!485420 () Bool)

(assert (=> b!2961600 (= c!485420 ((_ is ElementMatch!9195) r!17423))))

(declare-fun e!1864192 () Bool)

(assert (=> b!2961600 (= e!1864192 e!1864191)))

(declare-fun b!2961601 () Bool)

(declare-fun res!1221874 () Bool)

(declare-fun e!1864190 () Bool)

(assert (=> b!2961601 (=> res!1221874 e!1864190)))

(assert (=> b!2961601 (= res!1221874 call!196476)))

(declare-fun e!1864189 () Bool)

(assert (=> b!2961601 (= e!1864189 e!1864190)))

(declare-fun d!842049 () Bool)

(declare-fun c!485419 () Bool)

(assert (=> d!842049 (= c!485419 ((_ is EmptyExpr!9195) r!17423))))

(assert (=> d!842049 (= (matchRSpec!1332 r!17423 s!11993) e!1864193)))

(declare-fun b!2961602 () Bool)

(declare-fun e!1864188 () Bool)

(declare-fun e!1864194 () Bool)

(assert (=> b!2961602 (= e!1864188 e!1864194)))

(declare-fun res!1221872 () Bool)

(assert (=> b!2961602 (= res!1221872 (matchRSpec!1332 (regOne!18903 r!17423) s!11993))))

(assert (=> b!2961602 (=> res!1221872 e!1864194)))

(declare-fun bm!196471 () Bool)

(assert (=> bm!196471 (= call!196476 (isEmpty!19217 s!11993))))

(declare-fun b!2961603 () Bool)

(assert (=> b!2961603 (= e!1864188 e!1864189)))

(declare-fun c!485422 () Bool)

(assert (=> b!2961603 (= c!485422 ((_ is Star!9195) r!17423))))

(declare-fun b!2961604 () Bool)

(assert (=> b!2961604 (= e!1864193 e!1864192)))

(declare-fun res!1221873 () Bool)

(assert (=> b!2961604 (= res!1221873 (not ((_ is EmptyLang!9195) r!17423)))))

(assert (=> b!2961604 (=> (not res!1221873) (not e!1864192))))

(declare-fun call!196477 () Bool)

(declare-fun bm!196472 () Bool)

(declare-fun Exists!1522 (Int) Bool)

(assert (=> bm!196472 (= call!196477 (Exists!1522 (ite c!485422 lambda!110385 lambda!110386)))))

(assert (=> b!2961605 (= e!1864189 call!196477)))

(declare-fun b!2961606 () Bool)

(assert (=> b!2961606 (= e!1864194 (matchRSpec!1332 (regTwo!18903 r!17423) s!11993))))

(assert (=> b!2961607 (= e!1864190 call!196477)))

(declare-fun b!2961608 () Bool)

(declare-fun c!485421 () Bool)

(assert (=> b!2961608 (= c!485421 ((_ is Union!9195) r!17423))))

(assert (=> b!2961608 (= e!1864191 e!1864188)))

(assert (= (and d!842049 c!485419) b!2961599))

(assert (= (and d!842049 (not c!485419)) b!2961604))

(assert (= (and b!2961604 res!1221873) b!2961600))

(assert (= (and b!2961600 c!485420) b!2961598))

(assert (= (and b!2961600 (not c!485420)) b!2961608))

(assert (= (and b!2961608 c!485421) b!2961602))

(assert (= (and b!2961608 (not c!485421)) b!2961603))

(assert (= (and b!2961602 (not res!1221872)) b!2961606))

(assert (= (and b!2961603 c!485422) b!2961601))

(assert (= (and b!2961603 (not c!485422)) b!2961605))

(assert (= (and b!2961601 (not res!1221874)) b!2961607))

(assert (= (or b!2961607 b!2961605) bm!196472))

(assert (= (or b!2961599 b!2961601) bm!196471))

(declare-fun m!3334489 () Bool)

(assert (=> b!2961602 m!3334489))

(assert (=> bm!196471 m!3334441))

(declare-fun m!3334491 () Bool)

(assert (=> bm!196472 m!3334491))

(declare-fun m!3334493 () Bool)

(assert (=> b!2961606 m!3334493))

(assert (=> b!2961081 d!842049))

(declare-fun b!2961613 () Bool)

(declare-fun e!1864195 () Bool)

(declare-fun e!1864201 () Bool)

(assert (=> b!2961613 (= e!1864195 e!1864201)))

(declare-fun c!485424 () Bool)

(assert (=> b!2961613 (= c!485424 ((_ is EmptyLang!9195) r!17423))))

(declare-fun b!2961614 () Bool)

(declare-fun e!1864198 () Bool)

(declare-fun e!1864199 () Bool)

(assert (=> b!2961614 (= e!1864198 e!1864199)))

(declare-fun res!1221881 () Bool)

(assert (=> b!2961614 (=> (not res!1221881) (not e!1864199))))

(declare-fun lt!1034201 () Bool)

(assert (=> b!2961614 (= res!1221881 (not lt!1034201))))

(declare-fun b!2961615 () Bool)

(declare-fun res!1221875 () Bool)

(assert (=> b!2961615 (=> res!1221875 e!1864198)))

(declare-fun e!1864200 () Bool)

(assert (=> b!2961615 (= res!1221875 e!1864200)))

(declare-fun res!1221879 () Bool)

(assert (=> b!2961615 (=> (not res!1221879) (not e!1864200))))

(assert (=> b!2961615 (= res!1221879 lt!1034201)))

(declare-fun b!2961616 () Bool)

(declare-fun e!1864196 () Bool)

(assert (=> b!2961616 (= e!1864196 (nullable!2936 r!17423))))

(declare-fun d!842057 () Bool)

(assert (=> d!842057 e!1864195))

(declare-fun c!485423 () Bool)

(assert (=> d!842057 (= c!485423 ((_ is EmptyExpr!9195) r!17423))))

(assert (=> d!842057 (= lt!1034201 e!1864196)))

(declare-fun c!485425 () Bool)

(assert (=> d!842057 (= c!485425 (isEmpty!19217 s!11993))))

(assert (=> d!842057 (validRegex!3928 r!17423)))

(assert (=> d!842057 (= (matchR!4077 r!17423 s!11993) lt!1034201)))

(declare-fun b!2961617 () Bool)

(declare-fun res!1221882 () Bool)

(assert (=> b!2961617 (=> res!1221882 e!1864198)))

(assert (=> b!2961617 (= res!1221882 (not ((_ is ElementMatch!9195) r!17423)))))

(assert (=> b!2961617 (= e!1864201 e!1864198)))

(declare-fun b!2961618 () Bool)

(assert (=> b!2961618 (= e!1864201 (not lt!1034201))))

(declare-fun b!2961619 () Bool)

(declare-fun res!1221880 () Bool)

(assert (=> b!2961619 (=> (not res!1221880) (not e!1864200))))

(declare-fun call!196478 () Bool)

(assert (=> b!2961619 (= res!1221880 (not call!196478))))

(declare-fun b!2961620 () Bool)

(assert (=> b!2961620 (= e!1864200 (= (head!6597 s!11993) (c!485267 r!17423)))))

(declare-fun b!2961621 () Bool)

(assert (=> b!2961621 (= e!1864195 (= lt!1034201 call!196478))))

(declare-fun b!2961622 () Bool)

(declare-fun res!1221878 () Bool)

(assert (=> b!2961622 (=> (not res!1221878) (not e!1864200))))

(assert (=> b!2961622 (= res!1221878 (isEmpty!19217 (tail!4823 s!11993)))))

(declare-fun bm!196473 () Bool)

(assert (=> bm!196473 (= call!196478 (isEmpty!19217 s!11993))))

(declare-fun b!2961623 () Bool)

(declare-fun e!1864197 () Bool)

(assert (=> b!2961623 (= e!1864199 e!1864197)))

(declare-fun res!1221877 () Bool)

(assert (=> b!2961623 (=> res!1221877 e!1864197)))

(assert (=> b!2961623 (= res!1221877 call!196478)))

(declare-fun b!2961624 () Bool)

(declare-fun res!1221876 () Bool)

(assert (=> b!2961624 (=> res!1221876 e!1864197)))

(assert (=> b!2961624 (= res!1221876 (not (isEmpty!19217 (tail!4823 s!11993))))))

(declare-fun b!2961625 () Bool)

(assert (=> b!2961625 (= e!1864197 (not (= (head!6597 s!11993) (c!485267 r!17423))))))

(declare-fun b!2961626 () Bool)

(assert (=> b!2961626 (= e!1864196 (matchR!4077 (derivativeStep!2538 r!17423 (head!6597 s!11993)) (tail!4823 s!11993)))))

(assert (= (and d!842057 c!485425) b!2961616))

(assert (= (and d!842057 (not c!485425)) b!2961626))

(assert (= (and d!842057 c!485423) b!2961621))

(assert (= (and d!842057 (not c!485423)) b!2961613))

(assert (= (and b!2961613 c!485424) b!2961618))

(assert (= (and b!2961613 (not c!485424)) b!2961617))

(assert (= (and b!2961617 (not res!1221882)) b!2961615))

(assert (= (and b!2961615 res!1221879) b!2961619))

(assert (= (and b!2961619 res!1221880) b!2961622))

(assert (= (and b!2961622 res!1221878) b!2961620))

(assert (= (and b!2961615 (not res!1221875)) b!2961614))

(assert (= (and b!2961614 res!1221881) b!2961623))

(assert (= (and b!2961623 (not res!1221877)) b!2961624))

(assert (= (and b!2961624 (not res!1221876)) b!2961625))

(assert (= (or b!2961621 b!2961619 b!2961623) bm!196473))

(assert (=> bm!196473 m!3334441))

(assert (=> b!2961626 m!3334443))

(assert (=> b!2961626 m!3334443))

(declare-fun m!3334495 () Bool)

(assert (=> b!2961626 m!3334495))

(assert (=> b!2961626 m!3334447))

(assert (=> b!2961626 m!3334495))

(assert (=> b!2961626 m!3334447))

(declare-fun m!3334497 () Bool)

(assert (=> b!2961626 m!3334497))

(assert (=> b!2961622 m!3334447))

(assert (=> b!2961622 m!3334447))

(assert (=> b!2961622 m!3334451))

(declare-fun m!3334499 () Bool)

(assert (=> b!2961616 m!3334499))

(assert (=> b!2961620 m!3334443))

(assert (=> b!2961624 m!3334447))

(assert (=> b!2961624 m!3334447))

(assert (=> b!2961624 m!3334451))

(assert (=> b!2961625 m!3334443))

(assert (=> d!842057 m!3334441))

(assert (=> d!842057 m!3334325))

(assert (=> b!2961081 d!842057))

(declare-fun d!842059 () Bool)

(assert (=> d!842059 (= (matchR!4077 r!17423 s!11993) (matchRSpec!1332 r!17423 s!11993))))

(declare-fun lt!1034204 () Unit!48769)

(declare-fun choose!17521 (Regex!9195 List!35060) Unit!48769)

(assert (=> d!842059 (= lt!1034204 (choose!17521 r!17423 s!11993))))

(assert (=> d!842059 (validRegex!3928 r!17423)))

(assert (=> d!842059 (= (mainMatchTheorem!1332 r!17423 s!11993) lt!1034204)))

(declare-fun bs!526345 () Bool)

(assert (= bs!526345 d!842059))

(assert (=> bs!526345 m!3334313))

(assert (=> bs!526345 m!3334311))

(declare-fun m!3334501 () Bool)

(assert (=> bs!526345 m!3334501))

(assert (=> bs!526345 m!3334325))

(assert (=> b!2961081 d!842059))

(declare-fun b!2961639 () Bool)

(declare-fun e!1864204 () Bool)

(declare-fun tp!945065 () Bool)

(assert (=> b!2961639 (= e!1864204 tp!945065)))

(assert (=> b!2961083 (= tp!945009 e!1864204)))

(declare-fun b!2961640 () Bool)

(declare-fun tp!945062 () Bool)

(declare-fun tp!945063 () Bool)

(assert (=> b!2961640 (= e!1864204 (and tp!945062 tp!945063))))

(declare-fun b!2961637 () Bool)

(assert (=> b!2961637 (= e!1864204 tp_is_empty!15953)))

(declare-fun b!2961638 () Bool)

(declare-fun tp!945064 () Bool)

(declare-fun tp!945066 () Bool)

(assert (=> b!2961638 (= e!1864204 (and tp!945064 tp!945066))))

(assert (= (and b!2961083 ((_ is ElementMatch!9195) (reg!9524 r!17423))) b!2961637))

(assert (= (and b!2961083 ((_ is Concat!14516) (reg!9524 r!17423))) b!2961638))

(assert (= (and b!2961083 ((_ is Star!9195) (reg!9524 r!17423))) b!2961639))

(assert (= (and b!2961083 ((_ is Union!9195) (reg!9524 r!17423))) b!2961640))

(declare-fun b!2961643 () Bool)

(declare-fun e!1864205 () Bool)

(declare-fun tp!945070 () Bool)

(assert (=> b!2961643 (= e!1864205 tp!945070)))

(assert (=> b!2961085 (= tp!945010 e!1864205)))

(declare-fun b!2961644 () Bool)

(declare-fun tp!945067 () Bool)

(declare-fun tp!945068 () Bool)

(assert (=> b!2961644 (= e!1864205 (and tp!945067 tp!945068))))

(declare-fun b!2961641 () Bool)

(assert (=> b!2961641 (= e!1864205 tp_is_empty!15953)))

(declare-fun b!2961642 () Bool)

(declare-fun tp!945069 () Bool)

(declare-fun tp!945071 () Bool)

(assert (=> b!2961642 (= e!1864205 (and tp!945069 tp!945071))))

(assert (= (and b!2961085 ((_ is ElementMatch!9195) (regOne!18902 r!17423))) b!2961641))

(assert (= (and b!2961085 ((_ is Concat!14516) (regOne!18902 r!17423))) b!2961642))

(assert (= (and b!2961085 ((_ is Star!9195) (regOne!18902 r!17423))) b!2961643))

(assert (= (and b!2961085 ((_ is Union!9195) (regOne!18902 r!17423))) b!2961644))

(declare-fun b!2961647 () Bool)

(declare-fun e!1864206 () Bool)

(declare-fun tp!945075 () Bool)

(assert (=> b!2961647 (= e!1864206 tp!945075)))

(assert (=> b!2961085 (= tp!945012 e!1864206)))

(declare-fun b!2961648 () Bool)

(declare-fun tp!945072 () Bool)

(declare-fun tp!945073 () Bool)

(assert (=> b!2961648 (= e!1864206 (and tp!945072 tp!945073))))

(declare-fun b!2961645 () Bool)

(assert (=> b!2961645 (= e!1864206 tp_is_empty!15953)))

(declare-fun b!2961646 () Bool)

(declare-fun tp!945074 () Bool)

(declare-fun tp!945076 () Bool)

(assert (=> b!2961646 (= e!1864206 (and tp!945074 tp!945076))))

(assert (= (and b!2961085 ((_ is ElementMatch!9195) (regTwo!18902 r!17423))) b!2961645))

(assert (= (and b!2961085 ((_ is Concat!14516) (regTwo!18902 r!17423))) b!2961646))

(assert (= (and b!2961085 ((_ is Star!9195) (regTwo!18902 r!17423))) b!2961647))

(assert (= (and b!2961085 ((_ is Union!9195) (regTwo!18902 r!17423))) b!2961648))

(declare-fun b!2961653 () Bool)

(declare-fun e!1864209 () Bool)

(declare-fun tp!945079 () Bool)

(assert (=> b!2961653 (= e!1864209 (and tp_is_empty!15953 tp!945079))))

(assert (=> b!2961080 (= tp!945011 e!1864209)))

(assert (= (and b!2961080 ((_ is Cons!34936) (t!234125 s!11993))) b!2961653))

(declare-fun b!2961656 () Bool)

(declare-fun e!1864210 () Bool)

(declare-fun tp!945083 () Bool)

(assert (=> b!2961656 (= e!1864210 tp!945083)))

(assert (=> b!2961084 (= tp!945013 e!1864210)))

(declare-fun b!2961657 () Bool)

(declare-fun tp!945080 () Bool)

(declare-fun tp!945081 () Bool)

(assert (=> b!2961657 (= e!1864210 (and tp!945080 tp!945081))))

(declare-fun b!2961654 () Bool)

(assert (=> b!2961654 (= e!1864210 tp_is_empty!15953)))

(declare-fun b!2961655 () Bool)

(declare-fun tp!945082 () Bool)

(declare-fun tp!945084 () Bool)

(assert (=> b!2961655 (= e!1864210 (and tp!945082 tp!945084))))

(assert (= (and b!2961084 ((_ is ElementMatch!9195) (regOne!18903 r!17423))) b!2961654))

(assert (= (and b!2961084 ((_ is Concat!14516) (regOne!18903 r!17423))) b!2961655))

(assert (= (and b!2961084 ((_ is Star!9195) (regOne!18903 r!17423))) b!2961656))

(assert (= (and b!2961084 ((_ is Union!9195) (regOne!18903 r!17423))) b!2961657))

(declare-fun b!2961660 () Bool)

(declare-fun e!1864211 () Bool)

(declare-fun tp!945088 () Bool)

(assert (=> b!2961660 (= e!1864211 tp!945088)))

(assert (=> b!2961084 (= tp!945008 e!1864211)))

(declare-fun b!2961661 () Bool)

(declare-fun tp!945085 () Bool)

(declare-fun tp!945086 () Bool)

(assert (=> b!2961661 (= e!1864211 (and tp!945085 tp!945086))))

(declare-fun b!2961658 () Bool)

(assert (=> b!2961658 (= e!1864211 tp_is_empty!15953)))

(declare-fun b!2961659 () Bool)

(declare-fun tp!945087 () Bool)

(declare-fun tp!945089 () Bool)

(assert (=> b!2961659 (= e!1864211 (and tp!945087 tp!945089))))

(assert (= (and b!2961084 ((_ is ElementMatch!9195) (regTwo!18903 r!17423))) b!2961658))

(assert (= (and b!2961084 ((_ is Concat!14516) (regTwo!18903 r!17423))) b!2961659))

(assert (= (and b!2961084 ((_ is Star!9195) (regTwo!18903 r!17423))) b!2961660))

(assert (= (and b!2961084 ((_ is Union!9195) (regTwo!18903 r!17423))) b!2961661))

(check-sat (not b!2961638) (not bm!196442) (not b!2961446) (not b!2961642) (not b!2961606) (not bm!196419) (not b!2961330) (not bm!196404) (not bm!196417) (not b!2961348) (not b!2961622) (not bm!196406) (not b!2961656) (not b!2961616) (not b!2961625) (not d!842025) (not b!2961661) (not b!2961188) (not b!2961460) (not b!2961450) (not bm!196456) (not d!842019) (not b!2961626) (not d!842057) (not b!2961644) (not bm!196418) (not d!842047) (not bm!196420) (not b!2961459) (not b!2961458) (not b!2961454) (not b!2961639) (not b!2961660) tp_is_empty!15953 (not bm!196455) (not b!2961657) (not b!2961602) (not b!2961643) (not bm!196448) (not b!2961647) (not b!2961445) (not d!842037) (not b!2961655) (not b!2961653) (not d!842059) (not bm!196473) (not bm!196471) (not b!2961238) (not bm!196415) (not d!842043) (not b!2961440) (not b!2961640) (not b!2961444) (not bm!196472) (not b!2961456) (not b!2961648) (not b!2961646) (not bm!196403) (not b!2961246) (not bm!196441) (not b!2961436) (not b!2961196) (not bm!196447) (not bm!196401) (not b!2961624) (not b!2961659) (not b!2961442) (not b!2961620) (not bm!196405))
(check-sat)
