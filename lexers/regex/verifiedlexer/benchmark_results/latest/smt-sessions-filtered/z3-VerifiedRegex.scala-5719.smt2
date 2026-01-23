; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284308 () Bool)

(assert start!284308)

(declare-fun b!2919215 () Bool)

(declare-fun e!1841792 () Bool)

(declare-fun e!1841795 () Bool)

(assert (=> b!2919215 (= e!1841792 (not e!1841795))))

(declare-fun res!1205180 () Bool)

(assert (=> b!2919215 (=> res!1205180 e!1841795)))

(declare-fun lt!1025402 () Bool)

(declare-datatypes ((C!18164 0))(
  ( (C!18165 (val!11118 Int)) )
))
(declare-datatypes ((Regex!8989 0))(
  ( (ElementMatch!8989 (c!476245 C!18164)) (Concat!14310 (regOne!18490 Regex!8989) (regTwo!18490 Regex!8989)) (EmptyExpr!8989) (Star!8989 (reg!9318 Regex!8989)) (EmptyLang!8989) (Union!8989 (regOne!18491 Regex!8989) (regTwo!18491 Regex!8989)) )
))
(declare-fun r!17423 () Regex!8989)

(get-info :version)

(assert (=> b!2919215 (= res!1205180 (or (not lt!1025402) ((_ is Concat!14310) r!17423) (not ((_ is Union!8989) r!17423))))))

(declare-datatypes ((List!34854 0))(
  ( (Nil!34730) (Cons!34730 (h!40150 C!18164) (t!233919 List!34854)) )
))
(declare-fun s!11993 () List!34854)

(declare-fun matchRSpec!1126 (Regex!8989 List!34854) Bool)

(assert (=> b!2919215 (= lt!1025402 (matchRSpec!1126 r!17423 s!11993))))

(declare-fun matchR!3871 (Regex!8989 List!34854) Bool)

(assert (=> b!2919215 (= lt!1025402 (matchR!3871 r!17423 s!11993))))

(declare-datatypes ((Unit!48317 0))(
  ( (Unit!48318) )
))
(declare-fun lt!1025400 () Unit!48317)

(declare-fun mainMatchTheorem!1126 (Regex!8989 List!34854) Unit!48317)

(assert (=> b!2919215 (= lt!1025400 (mainMatchTheorem!1126 r!17423 s!11993))))

(declare-fun b!2919216 () Bool)

(declare-fun e!1841790 () Bool)

(assert (=> b!2919216 (= e!1841795 e!1841790)))

(declare-fun res!1205179 () Bool)

(assert (=> b!2919216 (=> res!1205179 e!1841790)))

(declare-fun lt!1025399 () Bool)

(assert (=> b!2919216 (= res!1205179 (not lt!1025399))))

(declare-fun e!1841793 () Bool)

(assert (=> b!2919216 e!1841793))

(declare-fun res!1205181 () Bool)

(assert (=> b!2919216 (=> res!1205181 e!1841793)))

(assert (=> b!2919216 (= res!1205181 lt!1025399)))

(assert (=> b!2919216 (= lt!1025399 (matchR!3871 (regOne!18491 r!17423) s!11993))))

(declare-fun lt!1025403 () Unit!48317)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!238 (Regex!8989 Regex!8989 List!34854) Unit!48317)

(assert (=> b!2919216 (= lt!1025403 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!238 (regOne!18491 r!17423) (regTwo!18491 r!17423) s!11993))))

(declare-fun b!2919217 () Bool)

(declare-fun e!1841794 () Bool)

(declare-fun tp_is_empty!15541 () Bool)

(declare-fun tp!936969 () Bool)

(assert (=> b!2919217 (= e!1841794 (and tp_is_empty!15541 tp!936969))))

(declare-fun b!2919218 () Bool)

(declare-fun e!1841791 () Bool)

(declare-fun tp!936970 () Bool)

(declare-fun tp!936971 () Bool)

(assert (=> b!2919218 (= e!1841791 (and tp!936970 tp!936971))))

(declare-fun b!2919219 () Bool)

(declare-fun tp!936968 () Bool)

(assert (=> b!2919219 (= e!1841791 tp!936968)))

(declare-fun res!1205182 () Bool)

(assert (=> start!284308 (=> (not res!1205182) (not e!1841792))))

(declare-fun validRegex!3722 (Regex!8989) Bool)

(assert (=> start!284308 (= res!1205182 (validRegex!3722 r!17423))))

(assert (=> start!284308 e!1841792))

(assert (=> start!284308 e!1841791))

(assert (=> start!284308 e!1841794))

(declare-fun b!2919220 () Bool)

(assert (=> b!2919220 (= e!1841790 (validRegex!3722 (regOne!18491 r!17423)))))

(declare-fun simplify!20 (Regex!8989) Regex!8989)

(assert (=> b!2919220 (matchR!3871 (simplify!20 (regOne!18491 r!17423)) s!11993)))

(declare-fun lt!1025401 () Unit!48317)

(declare-fun lemmaSimplifySound!18 (Regex!8989 List!34854) Unit!48317)

(assert (=> b!2919220 (= lt!1025401 (lemmaSimplifySound!18 (regOne!18491 r!17423) s!11993))))

(declare-fun b!2919221 () Bool)

(declare-fun tp!936972 () Bool)

(declare-fun tp!936973 () Bool)

(assert (=> b!2919221 (= e!1841791 (and tp!936972 tp!936973))))

(declare-fun b!2919222 () Bool)

(assert (=> b!2919222 (= e!1841791 tp_is_empty!15541)))

(declare-fun b!2919223 () Bool)

(assert (=> b!2919223 (= e!1841793 (matchR!3871 (regTwo!18491 r!17423) s!11993))))

(assert (= (and start!284308 res!1205182) b!2919215))

(assert (= (and b!2919215 (not res!1205180)) b!2919216))

(assert (= (and b!2919216 (not res!1205181)) b!2919223))

(assert (= (and b!2919216 (not res!1205179)) b!2919220))

(assert (= (and start!284308 ((_ is ElementMatch!8989) r!17423)) b!2919222))

(assert (= (and start!284308 ((_ is Concat!14310) r!17423)) b!2919221))

(assert (= (and start!284308 ((_ is Star!8989) r!17423)) b!2919219))

(assert (= (and start!284308 ((_ is Union!8989) r!17423)) b!2919218))

(assert (= (and start!284308 ((_ is Cons!34730) s!11993)) b!2919217))

(declare-fun m!3316435 () Bool)

(assert (=> b!2919215 m!3316435))

(declare-fun m!3316437 () Bool)

(assert (=> b!2919215 m!3316437))

(declare-fun m!3316439 () Bool)

(assert (=> b!2919215 m!3316439))

(declare-fun m!3316441 () Bool)

(assert (=> b!2919216 m!3316441))

(declare-fun m!3316443 () Bool)

(assert (=> b!2919216 m!3316443))

(declare-fun m!3316445 () Bool)

(assert (=> start!284308 m!3316445))

(declare-fun m!3316447 () Bool)

(assert (=> b!2919223 m!3316447))

(declare-fun m!3316449 () Bool)

(assert (=> b!2919220 m!3316449))

(declare-fun m!3316451 () Bool)

(assert (=> b!2919220 m!3316451))

(assert (=> b!2919220 m!3316451))

(declare-fun m!3316453 () Bool)

(assert (=> b!2919220 m!3316453))

(declare-fun m!3316455 () Bool)

(assert (=> b!2919220 m!3316455))

(check-sat (not b!2919216) (not b!2919219) (not b!2919220) (not b!2919221) (not b!2919223) (not b!2919218) tp_is_empty!15541 (not b!2919215) (not start!284308) (not b!2919217))
(check-sat)
(get-model)

(declare-fun bm!190905 () Bool)

(declare-fun call!190910 () Bool)

(declare-fun isEmpty!18985 (List!34854) Bool)

(assert (=> bm!190905 (= call!190910 (isEmpty!18985 s!11993))))

(declare-fun b!2919294 () Bool)

(declare-fun e!1841837 () Bool)

(declare-fun head!6488 (List!34854) C!18164)

(assert (=> b!2919294 (= e!1841837 (not (= (head!6488 s!11993) (c!476245 (regTwo!18491 r!17423)))))))

(declare-fun b!2919295 () Bool)

(declare-fun e!1841834 () Bool)

(declare-fun e!1841831 () Bool)

(assert (=> b!2919295 (= e!1841834 e!1841831)))

(declare-fun c!476261 () Bool)

(assert (=> b!2919295 (= c!476261 ((_ is EmptyLang!8989) (regTwo!18491 r!17423)))))

(declare-fun d!838426 () Bool)

(assert (=> d!838426 e!1841834))

(declare-fun c!476262 () Bool)

(assert (=> d!838426 (= c!476262 ((_ is EmptyExpr!8989) (regTwo!18491 r!17423)))))

(declare-fun lt!1025409 () Bool)

(declare-fun e!1841835 () Bool)

(assert (=> d!838426 (= lt!1025409 e!1841835)))

(declare-fun c!476263 () Bool)

(assert (=> d!838426 (= c!476263 (isEmpty!18985 s!11993))))

(assert (=> d!838426 (validRegex!3722 (regTwo!18491 r!17423))))

(assert (=> d!838426 (= (matchR!3871 (regTwo!18491 r!17423) s!11993) lt!1025409)))

(declare-fun b!2919296 () Bool)

(declare-fun e!1841836 () Bool)

(declare-fun e!1841832 () Bool)

(assert (=> b!2919296 (= e!1841836 e!1841832)))

(declare-fun res!1205227 () Bool)

(assert (=> b!2919296 (=> (not res!1205227) (not e!1841832))))

(assert (=> b!2919296 (= res!1205227 (not lt!1025409))))

(declare-fun b!2919297 () Bool)

(assert (=> b!2919297 (= e!1841831 (not lt!1025409))))

(declare-fun b!2919298 () Bool)

(declare-fun res!1205228 () Bool)

(assert (=> b!2919298 (=> res!1205228 e!1841836)))

(assert (=> b!2919298 (= res!1205228 (not ((_ is ElementMatch!8989) (regTwo!18491 r!17423))))))

(assert (=> b!2919298 (= e!1841831 e!1841836)))

(declare-fun b!2919299 () Bool)

(declare-fun e!1841833 () Bool)

(assert (=> b!2919299 (= e!1841833 (= (head!6488 s!11993) (c!476245 (regTwo!18491 r!17423))))))

(declare-fun b!2919300 () Bool)

(assert (=> b!2919300 (= e!1841832 e!1841837)))

(declare-fun res!1205229 () Bool)

(assert (=> b!2919300 (=> res!1205229 e!1841837)))

(assert (=> b!2919300 (= res!1205229 call!190910)))

(declare-fun b!2919301 () Bool)

(declare-fun res!1205224 () Bool)

(assert (=> b!2919301 (=> (not res!1205224) (not e!1841833))))

(declare-fun tail!4714 (List!34854) List!34854)

(assert (=> b!2919301 (= res!1205224 (isEmpty!18985 (tail!4714 s!11993)))))

(declare-fun b!2919302 () Bool)

(declare-fun res!1205223 () Bool)

(assert (=> b!2919302 (=> (not res!1205223) (not e!1841833))))

(assert (=> b!2919302 (= res!1205223 (not call!190910))))

(declare-fun b!2919303 () Bool)

(declare-fun nullable!2815 (Regex!8989) Bool)

(assert (=> b!2919303 (= e!1841835 (nullable!2815 (regTwo!18491 r!17423)))))

(declare-fun b!2919304 () Bool)

(assert (=> b!2919304 (= e!1841834 (= lt!1025409 call!190910))))

(declare-fun b!2919305 () Bool)

(declare-fun res!1205225 () Bool)

(assert (=> b!2919305 (=> res!1205225 e!1841836)))

(assert (=> b!2919305 (= res!1205225 e!1841833)))

(declare-fun res!1205230 () Bool)

(assert (=> b!2919305 (=> (not res!1205230) (not e!1841833))))

(assert (=> b!2919305 (= res!1205230 lt!1025409)))

(declare-fun b!2919306 () Bool)

(declare-fun res!1205226 () Bool)

(assert (=> b!2919306 (=> res!1205226 e!1841837)))

(assert (=> b!2919306 (= res!1205226 (not (isEmpty!18985 (tail!4714 s!11993))))))

(declare-fun b!2919307 () Bool)

(declare-fun derivativeStep!2429 (Regex!8989 C!18164) Regex!8989)

(assert (=> b!2919307 (= e!1841835 (matchR!3871 (derivativeStep!2429 (regTwo!18491 r!17423) (head!6488 s!11993)) (tail!4714 s!11993)))))

(assert (= (and d!838426 c!476263) b!2919303))

(assert (= (and d!838426 (not c!476263)) b!2919307))

(assert (= (and d!838426 c!476262) b!2919304))

(assert (= (and d!838426 (not c!476262)) b!2919295))

(assert (= (and b!2919295 c!476261) b!2919297))

(assert (= (and b!2919295 (not c!476261)) b!2919298))

(assert (= (and b!2919298 (not res!1205228)) b!2919305))

(assert (= (and b!2919305 res!1205230) b!2919302))

(assert (= (and b!2919302 res!1205223) b!2919301))

(assert (= (and b!2919301 res!1205224) b!2919299))

(assert (= (and b!2919305 (not res!1205225)) b!2919296))

(assert (= (and b!2919296 res!1205227) b!2919300))

(assert (= (and b!2919300 (not res!1205229)) b!2919306))

(assert (= (and b!2919306 (not res!1205226)) b!2919294))

(assert (= (or b!2919304 b!2919302 b!2919300) bm!190905))

(declare-fun m!3316469 () Bool)

(assert (=> b!2919307 m!3316469))

(assert (=> b!2919307 m!3316469))

(declare-fun m!3316473 () Bool)

(assert (=> b!2919307 m!3316473))

(declare-fun m!3316475 () Bool)

(assert (=> b!2919307 m!3316475))

(assert (=> b!2919307 m!3316473))

(assert (=> b!2919307 m!3316475))

(declare-fun m!3316477 () Bool)

(assert (=> b!2919307 m!3316477))

(assert (=> b!2919306 m!3316475))

(assert (=> b!2919306 m!3316475))

(declare-fun m!3316479 () Bool)

(assert (=> b!2919306 m!3316479))

(assert (=> b!2919294 m!3316469))

(assert (=> b!2919299 m!3316469))

(declare-fun m!3316481 () Bool)

(assert (=> bm!190905 m!3316481))

(assert (=> b!2919301 m!3316475))

(assert (=> b!2919301 m!3316475))

(assert (=> b!2919301 m!3316479))

(declare-fun m!3316483 () Bool)

(assert (=> b!2919303 m!3316483))

(assert (=> d!838426 m!3316481))

(declare-fun m!3316485 () Bool)

(assert (=> d!838426 m!3316485))

(assert (=> b!2919223 d!838426))

(declare-fun bm!190906 () Bool)

(declare-fun call!190911 () Bool)

(assert (=> bm!190906 (= call!190911 (isEmpty!18985 s!11993))))

(declare-fun b!2919308 () Bool)

(declare-fun e!1841844 () Bool)

(assert (=> b!2919308 (= e!1841844 (not (= (head!6488 s!11993) (c!476245 (regOne!18491 r!17423)))))))

(declare-fun b!2919309 () Bool)

(declare-fun e!1841841 () Bool)

(declare-fun e!1841838 () Bool)

(assert (=> b!2919309 (= e!1841841 e!1841838)))

(declare-fun c!476264 () Bool)

(assert (=> b!2919309 (= c!476264 ((_ is EmptyLang!8989) (regOne!18491 r!17423)))))

(declare-fun d!838430 () Bool)

(assert (=> d!838430 e!1841841))

(declare-fun c!476265 () Bool)

(assert (=> d!838430 (= c!476265 ((_ is EmptyExpr!8989) (regOne!18491 r!17423)))))

(declare-fun lt!1025410 () Bool)

(declare-fun e!1841842 () Bool)

(assert (=> d!838430 (= lt!1025410 e!1841842)))

(declare-fun c!476266 () Bool)

(assert (=> d!838430 (= c!476266 (isEmpty!18985 s!11993))))

(assert (=> d!838430 (validRegex!3722 (regOne!18491 r!17423))))

(assert (=> d!838430 (= (matchR!3871 (regOne!18491 r!17423) s!11993) lt!1025410)))

(declare-fun b!2919310 () Bool)

(declare-fun e!1841843 () Bool)

(declare-fun e!1841839 () Bool)

(assert (=> b!2919310 (= e!1841843 e!1841839)))

(declare-fun res!1205235 () Bool)

(assert (=> b!2919310 (=> (not res!1205235) (not e!1841839))))

(assert (=> b!2919310 (= res!1205235 (not lt!1025410))))

(declare-fun b!2919311 () Bool)

(assert (=> b!2919311 (= e!1841838 (not lt!1025410))))

(declare-fun b!2919312 () Bool)

(declare-fun res!1205236 () Bool)

(assert (=> b!2919312 (=> res!1205236 e!1841843)))

(assert (=> b!2919312 (= res!1205236 (not ((_ is ElementMatch!8989) (regOne!18491 r!17423))))))

(assert (=> b!2919312 (= e!1841838 e!1841843)))

(declare-fun b!2919313 () Bool)

(declare-fun e!1841840 () Bool)

(assert (=> b!2919313 (= e!1841840 (= (head!6488 s!11993) (c!476245 (regOne!18491 r!17423))))))

(declare-fun b!2919314 () Bool)

(assert (=> b!2919314 (= e!1841839 e!1841844)))

(declare-fun res!1205237 () Bool)

(assert (=> b!2919314 (=> res!1205237 e!1841844)))

(assert (=> b!2919314 (= res!1205237 call!190911)))

(declare-fun b!2919315 () Bool)

(declare-fun res!1205232 () Bool)

(assert (=> b!2919315 (=> (not res!1205232) (not e!1841840))))

(assert (=> b!2919315 (= res!1205232 (isEmpty!18985 (tail!4714 s!11993)))))

(declare-fun b!2919316 () Bool)

(declare-fun res!1205231 () Bool)

(assert (=> b!2919316 (=> (not res!1205231) (not e!1841840))))

(assert (=> b!2919316 (= res!1205231 (not call!190911))))

(declare-fun b!2919317 () Bool)

(assert (=> b!2919317 (= e!1841842 (nullable!2815 (regOne!18491 r!17423)))))

(declare-fun b!2919318 () Bool)

(assert (=> b!2919318 (= e!1841841 (= lt!1025410 call!190911))))

(declare-fun b!2919319 () Bool)

(declare-fun res!1205233 () Bool)

(assert (=> b!2919319 (=> res!1205233 e!1841843)))

(assert (=> b!2919319 (= res!1205233 e!1841840)))

(declare-fun res!1205238 () Bool)

(assert (=> b!2919319 (=> (not res!1205238) (not e!1841840))))

(assert (=> b!2919319 (= res!1205238 lt!1025410)))

(declare-fun b!2919320 () Bool)

(declare-fun res!1205234 () Bool)

(assert (=> b!2919320 (=> res!1205234 e!1841844)))

(assert (=> b!2919320 (= res!1205234 (not (isEmpty!18985 (tail!4714 s!11993))))))

(declare-fun b!2919321 () Bool)

(assert (=> b!2919321 (= e!1841842 (matchR!3871 (derivativeStep!2429 (regOne!18491 r!17423) (head!6488 s!11993)) (tail!4714 s!11993)))))

(assert (= (and d!838430 c!476266) b!2919317))

(assert (= (and d!838430 (not c!476266)) b!2919321))

(assert (= (and d!838430 c!476265) b!2919318))

(assert (= (and d!838430 (not c!476265)) b!2919309))

(assert (= (and b!2919309 c!476264) b!2919311))

(assert (= (and b!2919309 (not c!476264)) b!2919312))

(assert (= (and b!2919312 (not res!1205236)) b!2919319))

(assert (= (and b!2919319 res!1205238) b!2919316))

(assert (= (and b!2919316 res!1205231) b!2919315))

(assert (= (and b!2919315 res!1205232) b!2919313))

(assert (= (and b!2919319 (not res!1205233)) b!2919310))

(assert (= (and b!2919310 res!1205235) b!2919314))

(assert (= (and b!2919314 (not res!1205237)) b!2919320))

(assert (= (and b!2919320 (not res!1205234)) b!2919308))

(assert (= (or b!2919318 b!2919316 b!2919314) bm!190906))

(assert (=> b!2919321 m!3316469))

(assert (=> b!2919321 m!3316469))

(declare-fun m!3316487 () Bool)

(assert (=> b!2919321 m!3316487))

(assert (=> b!2919321 m!3316475))

(assert (=> b!2919321 m!3316487))

(assert (=> b!2919321 m!3316475))

(declare-fun m!3316489 () Bool)

(assert (=> b!2919321 m!3316489))

(assert (=> b!2919320 m!3316475))

(assert (=> b!2919320 m!3316475))

(assert (=> b!2919320 m!3316479))

(assert (=> b!2919308 m!3316469))

(assert (=> b!2919313 m!3316469))

(assert (=> bm!190906 m!3316481))

(assert (=> b!2919315 m!3316475))

(assert (=> b!2919315 m!3316475))

(assert (=> b!2919315 m!3316479))

(declare-fun m!3316491 () Bool)

(assert (=> b!2919317 m!3316491))

(assert (=> d!838430 m!3316481))

(assert (=> d!838430 m!3316449))

(assert (=> b!2919216 d!838430))

(declare-fun d!838432 () Bool)

(declare-fun e!1841856 () Bool)

(assert (=> d!838432 e!1841856))

(declare-fun res!1205250 () Bool)

(assert (=> d!838432 (=> res!1205250 e!1841856)))

(assert (=> d!838432 (= res!1205250 (matchR!3871 (regOne!18491 r!17423) s!11993))))

(declare-fun lt!1025416 () Unit!48317)

(declare-fun choose!17209 (Regex!8989 Regex!8989 List!34854) Unit!48317)

(assert (=> d!838432 (= lt!1025416 (choose!17209 (regOne!18491 r!17423) (regTwo!18491 r!17423) s!11993))))

(declare-fun e!1841855 () Bool)

(assert (=> d!838432 e!1841855))

(declare-fun res!1205249 () Bool)

(assert (=> d!838432 (=> (not res!1205249) (not e!1841855))))

(assert (=> d!838432 (= res!1205249 (validRegex!3722 (regOne!18491 r!17423)))))

(assert (=> d!838432 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!238 (regOne!18491 r!17423) (regTwo!18491 r!17423) s!11993) lt!1025416)))

(declare-fun b!2919332 () Bool)

(assert (=> b!2919332 (= e!1841855 (validRegex!3722 (regTwo!18491 r!17423)))))

(declare-fun b!2919333 () Bool)

(assert (=> b!2919333 (= e!1841856 (matchR!3871 (regTwo!18491 r!17423) s!11993))))

(assert (= (and d!838432 res!1205249) b!2919332))

(assert (= (and d!838432 (not res!1205250)) b!2919333))

(assert (=> d!838432 m!3316441))

(declare-fun m!3316497 () Bool)

(assert (=> d!838432 m!3316497))

(assert (=> d!838432 m!3316449))

(assert (=> b!2919332 m!3316485))

(assert (=> b!2919333 m!3316447))

(assert (=> b!2919216 d!838432))

(declare-fun b!2919393 () Bool)

(declare-fun e!1841902 () Bool)

(declare-fun e!1841899 () Bool)

(assert (=> b!2919393 (= e!1841902 e!1841899)))

(declare-fun c!476280 () Bool)

(assert (=> b!2919393 (= c!476280 ((_ is Union!8989) r!17423))))

(declare-fun b!2919394 () Bool)

(declare-fun e!1841903 () Bool)

(assert (=> b!2919394 (= e!1841903 e!1841902)))

(declare-fun c!476281 () Bool)

(assert (=> b!2919394 (= c!476281 ((_ is Star!8989) r!17423))))

(declare-fun b!2919395 () Bool)

(declare-fun e!1841901 () Bool)

(declare-fun e!1841900 () Bool)

(assert (=> b!2919395 (= e!1841901 e!1841900)))

(declare-fun res!1205287 () Bool)

(assert (=> b!2919395 (=> (not res!1205287) (not e!1841900))))

(declare-fun call!190930 () Bool)

(assert (=> b!2919395 (= res!1205287 call!190930)))

(declare-fun d!838436 () Bool)

(declare-fun res!1205286 () Bool)

(assert (=> d!838436 (=> res!1205286 e!1841903)))

(assert (=> d!838436 (= res!1205286 ((_ is ElementMatch!8989) r!17423))))

(assert (=> d!838436 (= (validRegex!3722 r!17423) e!1841903)))

(declare-fun bm!190923 () Bool)

(declare-fun call!190928 () Bool)

(assert (=> bm!190923 (= call!190930 call!190928)))

(declare-fun b!2919396 () Bool)

(declare-fun e!1841904 () Bool)

(assert (=> b!2919396 (= e!1841904 call!190928)))

(declare-fun b!2919397 () Bool)

(declare-fun res!1205285 () Bool)

(declare-fun e!1841905 () Bool)

(assert (=> b!2919397 (=> (not res!1205285) (not e!1841905))))

(declare-fun call!190929 () Bool)

(assert (=> b!2919397 (= res!1205285 call!190929)))

(assert (=> b!2919397 (= e!1841899 e!1841905)))

(declare-fun bm!190924 () Bool)

(assert (=> bm!190924 (= call!190928 (validRegex!3722 (ite c!476281 (reg!9318 r!17423) (ite c!476280 (regTwo!18491 r!17423) (regOne!18490 r!17423)))))))

(declare-fun b!2919398 () Bool)

(assert (=> b!2919398 (= e!1841902 e!1841904)))

(declare-fun res!1205284 () Bool)

(assert (=> b!2919398 (= res!1205284 (not (nullable!2815 (reg!9318 r!17423))))))

(assert (=> b!2919398 (=> (not res!1205284) (not e!1841904))))

(declare-fun b!2919399 () Bool)

(assert (=> b!2919399 (= e!1841900 call!190929)))

(declare-fun b!2919400 () Bool)

(assert (=> b!2919400 (= e!1841905 call!190930)))

(declare-fun b!2919401 () Bool)

(declare-fun res!1205288 () Bool)

(assert (=> b!2919401 (=> res!1205288 e!1841901)))

(assert (=> b!2919401 (= res!1205288 (not ((_ is Concat!14310) r!17423)))))

(assert (=> b!2919401 (= e!1841899 e!1841901)))

(declare-fun bm!190925 () Bool)

(assert (=> bm!190925 (= call!190929 (validRegex!3722 (ite c!476280 (regOne!18491 r!17423) (regTwo!18490 r!17423))))))

(assert (= (and d!838436 (not res!1205286)) b!2919394))

(assert (= (and b!2919394 c!476281) b!2919398))

(assert (= (and b!2919394 (not c!476281)) b!2919393))

(assert (= (and b!2919398 res!1205284) b!2919396))

(assert (= (and b!2919393 c!476280) b!2919397))

(assert (= (and b!2919393 (not c!476280)) b!2919401))

(assert (= (and b!2919397 res!1205285) b!2919400))

(assert (= (and b!2919401 (not res!1205288)) b!2919395))

(assert (= (and b!2919395 res!1205287) b!2919399))

(assert (= (or b!2919397 b!2919399) bm!190925))

(assert (= (or b!2919400 b!2919395) bm!190923))

(assert (= (or b!2919396 bm!190923) bm!190924))

(declare-fun m!3316513 () Bool)

(assert (=> bm!190924 m!3316513))

(declare-fun m!3316515 () Bool)

(assert (=> b!2919398 m!3316515))

(declare-fun m!3316517 () Bool)

(assert (=> bm!190925 m!3316517))

(assert (=> start!284308 d!838436))

(declare-fun b!2919402 () Bool)

(declare-fun e!1841909 () Bool)

(declare-fun e!1841906 () Bool)

(assert (=> b!2919402 (= e!1841909 e!1841906)))

(declare-fun c!476282 () Bool)

(assert (=> b!2919402 (= c!476282 ((_ is Union!8989) (regOne!18491 r!17423)))))

(declare-fun b!2919403 () Bool)

(declare-fun e!1841910 () Bool)

(assert (=> b!2919403 (= e!1841910 e!1841909)))

(declare-fun c!476283 () Bool)

(assert (=> b!2919403 (= c!476283 ((_ is Star!8989) (regOne!18491 r!17423)))))

(declare-fun b!2919404 () Bool)

(declare-fun e!1841908 () Bool)

(declare-fun e!1841907 () Bool)

(assert (=> b!2919404 (= e!1841908 e!1841907)))

(declare-fun res!1205292 () Bool)

(assert (=> b!2919404 (=> (not res!1205292) (not e!1841907))))

(declare-fun call!190933 () Bool)

(assert (=> b!2919404 (= res!1205292 call!190933)))

(declare-fun d!838442 () Bool)

(declare-fun res!1205291 () Bool)

(assert (=> d!838442 (=> res!1205291 e!1841910)))

(assert (=> d!838442 (= res!1205291 ((_ is ElementMatch!8989) (regOne!18491 r!17423)))))

(assert (=> d!838442 (= (validRegex!3722 (regOne!18491 r!17423)) e!1841910)))

(declare-fun bm!190926 () Bool)

(declare-fun call!190931 () Bool)

(assert (=> bm!190926 (= call!190933 call!190931)))

(declare-fun b!2919405 () Bool)

(declare-fun e!1841911 () Bool)

(assert (=> b!2919405 (= e!1841911 call!190931)))

(declare-fun b!2919406 () Bool)

(declare-fun res!1205290 () Bool)

(declare-fun e!1841912 () Bool)

(assert (=> b!2919406 (=> (not res!1205290) (not e!1841912))))

(declare-fun call!190932 () Bool)

(assert (=> b!2919406 (= res!1205290 call!190932)))

(assert (=> b!2919406 (= e!1841906 e!1841912)))

(declare-fun bm!190927 () Bool)

(assert (=> bm!190927 (= call!190931 (validRegex!3722 (ite c!476283 (reg!9318 (regOne!18491 r!17423)) (ite c!476282 (regTwo!18491 (regOne!18491 r!17423)) (regOne!18490 (regOne!18491 r!17423))))))))

(declare-fun b!2919407 () Bool)

(assert (=> b!2919407 (= e!1841909 e!1841911)))

(declare-fun res!1205289 () Bool)

(assert (=> b!2919407 (= res!1205289 (not (nullable!2815 (reg!9318 (regOne!18491 r!17423)))))))

(assert (=> b!2919407 (=> (not res!1205289) (not e!1841911))))

(declare-fun b!2919408 () Bool)

(assert (=> b!2919408 (= e!1841907 call!190932)))

(declare-fun b!2919409 () Bool)

(assert (=> b!2919409 (= e!1841912 call!190933)))

(declare-fun b!2919410 () Bool)

(declare-fun res!1205293 () Bool)

(assert (=> b!2919410 (=> res!1205293 e!1841908)))

(assert (=> b!2919410 (= res!1205293 (not ((_ is Concat!14310) (regOne!18491 r!17423))))))

(assert (=> b!2919410 (= e!1841906 e!1841908)))

(declare-fun bm!190928 () Bool)

(assert (=> bm!190928 (= call!190932 (validRegex!3722 (ite c!476282 (regOne!18491 (regOne!18491 r!17423)) (regTwo!18490 (regOne!18491 r!17423)))))))

(assert (= (and d!838442 (not res!1205291)) b!2919403))

(assert (= (and b!2919403 c!476283) b!2919407))

(assert (= (and b!2919403 (not c!476283)) b!2919402))

(assert (= (and b!2919407 res!1205289) b!2919405))

(assert (= (and b!2919402 c!476282) b!2919406))

(assert (= (and b!2919402 (not c!476282)) b!2919410))

(assert (= (and b!2919406 res!1205290) b!2919409))

(assert (= (and b!2919410 (not res!1205293)) b!2919404))

(assert (= (and b!2919404 res!1205292) b!2919408))

(assert (= (or b!2919406 b!2919408) bm!190928))

(assert (= (or b!2919409 b!2919404) bm!190926))

(assert (= (or b!2919405 bm!190926) bm!190927))

(declare-fun m!3316519 () Bool)

(assert (=> bm!190927 m!3316519))

(declare-fun m!3316521 () Bool)

(assert (=> b!2919407 m!3316521))

(declare-fun m!3316523 () Bool)

(assert (=> bm!190928 m!3316523))

(assert (=> b!2919220 d!838442))

(declare-fun bm!190929 () Bool)

(declare-fun call!190934 () Bool)

(assert (=> bm!190929 (= call!190934 (isEmpty!18985 s!11993))))

(declare-fun b!2919411 () Bool)

(declare-fun e!1841919 () Bool)

(assert (=> b!2919411 (= e!1841919 (not (= (head!6488 s!11993) (c!476245 (simplify!20 (regOne!18491 r!17423))))))))

(declare-fun b!2919412 () Bool)

(declare-fun e!1841916 () Bool)

(declare-fun e!1841913 () Bool)

(assert (=> b!2919412 (= e!1841916 e!1841913)))

(declare-fun c!476284 () Bool)

(assert (=> b!2919412 (= c!476284 ((_ is EmptyLang!8989) (simplify!20 (regOne!18491 r!17423))))))

(declare-fun d!838444 () Bool)

(assert (=> d!838444 e!1841916))

(declare-fun c!476285 () Bool)

(assert (=> d!838444 (= c!476285 ((_ is EmptyExpr!8989) (simplify!20 (regOne!18491 r!17423))))))

(declare-fun lt!1025418 () Bool)

(declare-fun e!1841917 () Bool)

(assert (=> d!838444 (= lt!1025418 e!1841917)))

(declare-fun c!476286 () Bool)

(assert (=> d!838444 (= c!476286 (isEmpty!18985 s!11993))))

(assert (=> d!838444 (validRegex!3722 (simplify!20 (regOne!18491 r!17423)))))

(assert (=> d!838444 (= (matchR!3871 (simplify!20 (regOne!18491 r!17423)) s!11993) lt!1025418)))

(declare-fun b!2919413 () Bool)

(declare-fun e!1841918 () Bool)

(declare-fun e!1841914 () Bool)

(assert (=> b!2919413 (= e!1841918 e!1841914)))

(declare-fun res!1205298 () Bool)

(assert (=> b!2919413 (=> (not res!1205298) (not e!1841914))))

(assert (=> b!2919413 (= res!1205298 (not lt!1025418))))

(declare-fun b!2919414 () Bool)

(assert (=> b!2919414 (= e!1841913 (not lt!1025418))))

(declare-fun b!2919415 () Bool)

(declare-fun res!1205299 () Bool)

(assert (=> b!2919415 (=> res!1205299 e!1841918)))

(assert (=> b!2919415 (= res!1205299 (not ((_ is ElementMatch!8989) (simplify!20 (regOne!18491 r!17423)))))))

(assert (=> b!2919415 (= e!1841913 e!1841918)))

(declare-fun b!2919416 () Bool)

(declare-fun e!1841915 () Bool)

(assert (=> b!2919416 (= e!1841915 (= (head!6488 s!11993) (c!476245 (simplify!20 (regOne!18491 r!17423)))))))

(declare-fun b!2919417 () Bool)

(assert (=> b!2919417 (= e!1841914 e!1841919)))

(declare-fun res!1205300 () Bool)

(assert (=> b!2919417 (=> res!1205300 e!1841919)))

(assert (=> b!2919417 (= res!1205300 call!190934)))

(declare-fun b!2919418 () Bool)

(declare-fun res!1205295 () Bool)

(assert (=> b!2919418 (=> (not res!1205295) (not e!1841915))))

(assert (=> b!2919418 (= res!1205295 (isEmpty!18985 (tail!4714 s!11993)))))

(declare-fun b!2919419 () Bool)

(declare-fun res!1205294 () Bool)

(assert (=> b!2919419 (=> (not res!1205294) (not e!1841915))))

(assert (=> b!2919419 (= res!1205294 (not call!190934))))

(declare-fun b!2919420 () Bool)

(assert (=> b!2919420 (= e!1841917 (nullable!2815 (simplify!20 (regOne!18491 r!17423))))))

(declare-fun b!2919421 () Bool)

(assert (=> b!2919421 (= e!1841916 (= lt!1025418 call!190934))))

(declare-fun b!2919422 () Bool)

(declare-fun res!1205296 () Bool)

(assert (=> b!2919422 (=> res!1205296 e!1841918)))

(assert (=> b!2919422 (= res!1205296 e!1841915)))

(declare-fun res!1205301 () Bool)

(assert (=> b!2919422 (=> (not res!1205301) (not e!1841915))))

(assert (=> b!2919422 (= res!1205301 lt!1025418)))

(declare-fun b!2919423 () Bool)

(declare-fun res!1205297 () Bool)

(assert (=> b!2919423 (=> res!1205297 e!1841919)))

(assert (=> b!2919423 (= res!1205297 (not (isEmpty!18985 (tail!4714 s!11993))))))

(declare-fun b!2919424 () Bool)

(assert (=> b!2919424 (= e!1841917 (matchR!3871 (derivativeStep!2429 (simplify!20 (regOne!18491 r!17423)) (head!6488 s!11993)) (tail!4714 s!11993)))))

(assert (= (and d!838444 c!476286) b!2919420))

(assert (= (and d!838444 (not c!476286)) b!2919424))

(assert (= (and d!838444 c!476285) b!2919421))

(assert (= (and d!838444 (not c!476285)) b!2919412))

(assert (= (and b!2919412 c!476284) b!2919414))

(assert (= (and b!2919412 (not c!476284)) b!2919415))

(assert (= (and b!2919415 (not res!1205299)) b!2919422))

(assert (= (and b!2919422 res!1205301) b!2919419))

(assert (= (and b!2919419 res!1205294) b!2919418))

(assert (= (and b!2919418 res!1205295) b!2919416))

(assert (= (and b!2919422 (not res!1205296)) b!2919413))

(assert (= (and b!2919413 res!1205298) b!2919417))

(assert (= (and b!2919417 (not res!1205300)) b!2919423))

(assert (= (and b!2919423 (not res!1205297)) b!2919411))

(assert (= (or b!2919421 b!2919419 b!2919417) bm!190929))

(assert (=> b!2919424 m!3316469))

(assert (=> b!2919424 m!3316451))

(assert (=> b!2919424 m!3316469))

(declare-fun m!3316525 () Bool)

(assert (=> b!2919424 m!3316525))

(assert (=> b!2919424 m!3316475))

(assert (=> b!2919424 m!3316525))

(assert (=> b!2919424 m!3316475))

(declare-fun m!3316527 () Bool)

(assert (=> b!2919424 m!3316527))

(assert (=> b!2919423 m!3316475))

(assert (=> b!2919423 m!3316475))

(assert (=> b!2919423 m!3316479))

(assert (=> b!2919411 m!3316469))

(assert (=> b!2919416 m!3316469))

(assert (=> bm!190929 m!3316481))

(assert (=> b!2919418 m!3316475))

(assert (=> b!2919418 m!3316475))

(assert (=> b!2919418 m!3316479))

(assert (=> b!2919420 m!3316451))

(declare-fun m!3316529 () Bool)

(assert (=> b!2919420 m!3316529))

(assert (=> d!838444 m!3316481))

(assert (=> d!838444 m!3316451))

(declare-fun m!3316531 () Bool)

(assert (=> d!838444 m!3316531))

(assert (=> b!2919220 d!838444))

(declare-fun b!2919550 () Bool)

(declare-fun c!476348 () Bool)

(assert (=> b!2919550 (= c!476348 ((_ is Union!8989) (regOne!18491 r!17423)))))

(declare-fun e!1841991 () Regex!8989)

(declare-fun e!1841995 () Regex!8989)

(assert (=> b!2919550 (= e!1841991 e!1841995)))

(declare-fun bm!190965 () Bool)

(declare-fun lt!1025457 () Regex!8989)

(declare-fun call!190971 () Bool)

(declare-fun lt!1025452 () Regex!8989)

(declare-fun isEmptyLang!168 (Regex!8989) Bool)

(assert (=> bm!190965 (= call!190971 (isEmptyLang!168 (ite c!476348 lt!1025452 lt!1025457)))))

(declare-fun b!2919551 () Bool)

(declare-fun e!1842001 () Regex!8989)

(assert (=> b!2919551 (= e!1841995 e!1842001)))

(declare-fun call!190975 () Regex!8989)

(assert (=> b!2919551 (= lt!1025457 call!190975)))

(declare-fun lt!1025453 () Regex!8989)

(declare-fun call!190973 () Regex!8989)

(assert (=> b!2919551 (= lt!1025453 call!190973)))

(declare-fun res!1205319 () Bool)

(assert (=> b!2919551 (= res!1205319 call!190971)))

(declare-fun e!1841999 () Bool)

(assert (=> b!2919551 (=> res!1205319 e!1841999)))

(declare-fun c!476352 () Bool)

(assert (=> b!2919551 (= c!476352 e!1841999)))

(declare-fun b!2919552 () Bool)

(declare-fun c!476351 () Bool)

(declare-fun call!190976 () Bool)

(assert (=> b!2919552 (= c!476351 call!190976)))

(declare-fun e!1841997 () Regex!8989)

(declare-fun e!1842000 () Regex!8989)

(assert (=> b!2919552 (= e!1841997 e!1842000)))

(declare-fun call!190972 () Bool)

(declare-fun lt!1025455 () Regex!8989)

(declare-fun bm!190966 () Bool)

(declare-fun c!476344 () Bool)

(declare-fun isEmptyExpr!253 (Regex!8989) Bool)

(assert (=> bm!190966 (= call!190972 (isEmptyExpr!253 (ite c!476344 lt!1025455 lt!1025453)))))

(declare-fun b!2919553 () Bool)

(declare-fun c!476349 () Bool)

(assert (=> b!2919553 (= c!476349 (isEmptyExpr!253 lt!1025457))))

(declare-fun e!1841993 () Regex!8989)

(assert (=> b!2919553 (= e!1842001 e!1841993)))

(declare-fun bm!190967 () Bool)

(declare-fun call!190974 () Regex!8989)

(assert (=> bm!190967 (= call!190975 call!190974)))

(declare-fun b!2919554 () Bool)

(declare-fun lt!1025454 () Regex!8989)

(assert (=> b!2919554 (= e!1841997 lt!1025454)))

(declare-fun b!2919555 () Bool)

(declare-fun e!1842002 () Bool)

(declare-fun lt!1025456 () Regex!8989)

(assert (=> b!2919555 (= e!1842002 (= (nullable!2815 lt!1025456) (nullable!2815 (regOne!18491 r!17423))))))

(declare-fun b!2919556 () Bool)

(assert (=> b!2919556 (= e!1841999 call!190976)))

(declare-fun b!2919557 () Bool)

(assert (=> b!2919557 (= e!1841995 e!1841997)))

(assert (=> b!2919557 (= lt!1025452 call!190973)))

(assert (=> b!2919557 (= lt!1025454 call!190975)))

(declare-fun c!476343 () Bool)

(assert (=> b!2919557 (= c!476343 call!190971)))

(declare-fun d!838446 () Bool)

(assert (=> d!838446 e!1842002))

(declare-fun res!1205317 () Bool)

(assert (=> d!838446 (=> (not res!1205317) (not e!1842002))))

(assert (=> d!838446 (= res!1205317 (validRegex!3722 lt!1025456))))

(declare-fun e!1841998 () Regex!8989)

(assert (=> d!838446 (= lt!1025456 e!1841998)))

(declare-fun c!476342 () Bool)

(assert (=> d!838446 (= c!476342 ((_ is EmptyLang!8989) (regOne!18491 r!17423)))))

(assert (=> d!838446 (validRegex!3722 (regOne!18491 r!17423))))

(assert (=> d!838446 (= (simplify!20 (regOne!18491 r!17423)) lt!1025456)))

(declare-fun b!2919558 () Bool)

(declare-fun e!1841996 () Regex!8989)

(assert (=> b!2919558 (= e!1841996 e!1841991)))

(assert (=> b!2919558 (= c!476344 ((_ is Star!8989) (regOne!18491 r!17423)))))

(declare-fun b!2919559 () Bool)

(declare-fun c!476350 () Bool)

(declare-fun e!1841992 () Bool)

(assert (=> b!2919559 (= c!476350 e!1841992)))

(declare-fun res!1205318 () Bool)

(assert (=> b!2919559 (=> res!1205318 e!1841992)))

(declare-fun call!190970 () Bool)

(assert (=> b!2919559 (= res!1205318 call!190970)))

(assert (=> b!2919559 (= lt!1025455 call!190974)))

(declare-fun e!1841990 () Regex!8989)

(assert (=> b!2919559 (= e!1841991 e!1841990)))

(declare-fun b!2919560 () Bool)

(assert (=> b!2919560 (= e!1841990 EmptyExpr!8989)))

(declare-fun b!2919561 () Bool)

(assert (=> b!2919561 (= e!1842000 lt!1025452)))

(declare-fun bm!190968 () Bool)

(assert (=> bm!190968 (= call!190970 (isEmptyLang!168 (ite c!476344 lt!1025455 (ite c!476348 lt!1025454 lt!1025453))))))

(declare-fun b!2919562 () Bool)

(assert (=> b!2919562 (= e!1841993 lt!1025453)))

(declare-fun b!2919563 () Bool)

(assert (=> b!2919563 (= e!1841992 call!190972)))

(declare-fun b!2919564 () Bool)

(assert (=> b!2919564 (= e!1842001 EmptyLang!8989)))

(declare-fun b!2919565 () Bool)

(declare-fun e!1841994 () Regex!8989)

(assert (=> b!2919565 (= e!1841998 e!1841994)))

(declare-fun c!476345 () Bool)

(assert (=> b!2919565 (= c!476345 ((_ is ElementMatch!8989) (regOne!18491 r!17423)))))

(declare-fun b!2919566 () Bool)

(declare-fun e!1842003 () Regex!8989)

(assert (=> b!2919566 (= e!1842003 (Concat!14310 lt!1025457 lt!1025453))))

(declare-fun b!2919567 () Bool)

(assert (=> b!2919567 (= e!1841996 EmptyExpr!8989)))

(declare-fun bm!190969 () Bool)

(assert (=> bm!190969 (= call!190976 call!190970)))

(declare-fun bm!190970 () Bool)

(assert (=> bm!190970 (= call!190973 (simplify!20 (ite c!476348 (regOne!18491 (regOne!18491 r!17423)) (regTwo!18490 (regOne!18491 r!17423)))))))

(declare-fun b!2919568 () Bool)

(assert (=> b!2919568 (= e!1842000 (Union!8989 lt!1025452 lt!1025454))))

(declare-fun b!2919569 () Bool)

(assert (=> b!2919569 (= e!1841998 EmptyLang!8989)))

(declare-fun b!2919570 () Bool)

(assert (=> b!2919570 (= e!1841993 e!1842003)))

(declare-fun c!476346 () Bool)

(assert (=> b!2919570 (= c!476346 call!190972)))

(declare-fun b!2919571 () Bool)

(assert (=> b!2919571 (= e!1841994 (regOne!18491 r!17423))))

(declare-fun b!2919572 () Bool)

(assert (=> b!2919572 (= e!1841990 (Star!8989 lt!1025455))))

(declare-fun bm!190971 () Bool)

(assert (=> bm!190971 (= call!190974 (simplify!20 (ite c!476344 (reg!9318 (regOne!18491 r!17423)) (ite c!476348 (regTwo!18491 (regOne!18491 r!17423)) (regOne!18490 (regOne!18491 r!17423))))))))

(declare-fun b!2919573 () Bool)

(declare-fun c!476347 () Bool)

(assert (=> b!2919573 (= c!476347 ((_ is EmptyExpr!8989) (regOne!18491 r!17423)))))

(assert (=> b!2919573 (= e!1841994 e!1841996)))

(declare-fun b!2919574 () Bool)

(assert (=> b!2919574 (= e!1842003 lt!1025457)))

(assert (= (and d!838446 c!476342) b!2919569))

(assert (= (and d!838446 (not c!476342)) b!2919565))

(assert (= (and b!2919565 c!476345) b!2919571))

(assert (= (and b!2919565 (not c!476345)) b!2919573))

(assert (= (and b!2919573 c!476347) b!2919567))

(assert (= (and b!2919573 (not c!476347)) b!2919558))

(assert (= (and b!2919558 c!476344) b!2919559))

(assert (= (and b!2919558 (not c!476344)) b!2919550))

(assert (= (and b!2919559 (not res!1205318)) b!2919563))

(assert (= (and b!2919559 c!476350) b!2919560))

(assert (= (and b!2919559 (not c!476350)) b!2919572))

(assert (= (and b!2919550 c!476348) b!2919557))

(assert (= (and b!2919550 (not c!476348)) b!2919551))

(assert (= (and b!2919557 c!476343) b!2919554))

(assert (= (and b!2919557 (not c!476343)) b!2919552))

(assert (= (and b!2919552 c!476351) b!2919561))

(assert (= (and b!2919552 (not c!476351)) b!2919568))

(assert (= (and b!2919551 (not res!1205319)) b!2919556))

(assert (= (and b!2919551 c!476352) b!2919564))

(assert (= (and b!2919551 (not c!476352)) b!2919553))

(assert (= (and b!2919553 c!476349) b!2919562))

(assert (= (and b!2919553 (not c!476349)) b!2919570))

(assert (= (and b!2919570 c!476346) b!2919574))

(assert (= (and b!2919570 (not c!476346)) b!2919566))

(assert (= (or b!2919557 b!2919551) bm!190970))

(assert (= (or b!2919557 b!2919551) bm!190967))

(assert (= (or b!2919557 b!2919551) bm!190965))

(assert (= (or b!2919552 b!2919556) bm!190969))

(assert (= (or b!2919563 b!2919570) bm!190966))

(assert (= (or b!2919559 bm!190967) bm!190971))

(assert (= (or b!2919559 bm!190969) bm!190968))

(assert (= (and d!838446 res!1205317) b!2919555))

(declare-fun m!3316551 () Bool)

(assert (=> d!838446 m!3316551))

(assert (=> d!838446 m!3316449))

(declare-fun m!3316553 () Bool)

(assert (=> bm!190971 m!3316553))

(declare-fun m!3316555 () Bool)

(assert (=> b!2919555 m!3316555))

(assert (=> b!2919555 m!3316491))

(declare-fun m!3316557 () Bool)

(assert (=> bm!190965 m!3316557))

(declare-fun m!3316559 () Bool)

(assert (=> bm!190966 m!3316559))

(declare-fun m!3316561 () Bool)

(assert (=> b!2919553 m!3316561))

(declare-fun m!3316563 () Bool)

(assert (=> bm!190968 m!3316563))

(declare-fun m!3316565 () Bool)

(assert (=> bm!190970 m!3316565))

(assert (=> b!2919220 d!838446))

(declare-fun d!838452 () Bool)

(assert (=> d!838452 (= (matchR!3871 (regOne!18491 r!17423) s!11993) (matchR!3871 (simplify!20 (regOne!18491 r!17423)) s!11993))))

(declare-fun lt!1025460 () Unit!48317)

(declare-fun choose!17211 (Regex!8989 List!34854) Unit!48317)

(assert (=> d!838452 (= lt!1025460 (choose!17211 (regOne!18491 r!17423) s!11993))))

(assert (=> d!838452 (validRegex!3722 (regOne!18491 r!17423))))

(assert (=> d!838452 (= (lemmaSimplifySound!18 (regOne!18491 r!17423) s!11993) lt!1025460)))

(declare-fun bs!524934 () Bool)

(assert (= bs!524934 d!838452))

(declare-fun m!3316567 () Bool)

(assert (=> bs!524934 m!3316567))

(assert (=> bs!524934 m!3316441))

(assert (=> bs!524934 m!3316449))

(assert (=> bs!524934 m!3316451))

(assert (=> bs!524934 m!3316453))

(assert (=> bs!524934 m!3316451))

(assert (=> b!2919220 d!838452))

(declare-fun b!2919729 () Bool)

(assert (=> b!2919729 true))

(assert (=> b!2919729 true))

(declare-fun bs!524937 () Bool)

(declare-fun b!2919732 () Bool)

(assert (= bs!524937 (and b!2919732 b!2919729)))

(declare-fun lambda!108630 () Int)

(declare-fun lambda!108629 () Int)

(assert (=> bs!524937 (not (= lambda!108630 lambda!108629))))

(assert (=> b!2919732 true))

(assert (=> b!2919732 true))

(declare-fun b!2919726 () Bool)

(declare-fun res!1205377 () Bool)

(declare-fun e!1842082 () Bool)

(assert (=> b!2919726 (=> res!1205377 e!1842082)))

(declare-fun call!190993 () Bool)

(assert (=> b!2919726 (= res!1205377 call!190993)))

(declare-fun e!1842084 () Bool)

(assert (=> b!2919726 (= e!1842084 e!1842082)))

(declare-fun b!2919727 () Bool)

(declare-fun e!1842079 () Bool)

(declare-fun e!1842080 () Bool)

(assert (=> b!2919727 (= e!1842079 e!1842080)))

(declare-fun res!1205376 () Bool)

(assert (=> b!2919727 (= res!1205376 (matchRSpec!1126 (regOne!18491 r!17423) s!11993))))

(assert (=> b!2919727 (=> res!1205376 e!1842080)))

(declare-fun b!2919728 () Bool)

(declare-fun c!476381 () Bool)

(assert (=> b!2919728 (= c!476381 ((_ is Union!8989) r!17423))))

(declare-fun e!1842081 () Bool)

(assert (=> b!2919728 (= e!1842081 e!1842079)))

(declare-fun call!190992 () Bool)

(assert (=> b!2919729 (= e!1842082 call!190992)))

(declare-fun b!2919730 () Bool)

(declare-fun c!476382 () Bool)

(assert (=> b!2919730 (= c!476382 ((_ is ElementMatch!8989) r!17423))))

(declare-fun e!1842078 () Bool)

(assert (=> b!2919730 (= e!1842078 e!1842081)))

(declare-fun b!2919731 () Bool)

(declare-fun e!1842083 () Bool)

(assert (=> b!2919731 (= e!1842083 e!1842078)))

(declare-fun res!1205378 () Bool)

(assert (=> b!2919731 (= res!1205378 (not ((_ is EmptyLang!8989) r!17423)))))

(assert (=> b!2919731 (=> (not res!1205378) (not e!1842078))))

(assert (=> b!2919732 (= e!1842084 call!190992)))

(declare-fun bm!190987 () Bool)

(assert (=> bm!190987 (= call!190993 (isEmpty!18985 s!11993))))

(declare-fun d!838454 () Bool)

(declare-fun c!476384 () Bool)

(assert (=> d!838454 (= c!476384 ((_ is EmptyExpr!8989) r!17423))))

(assert (=> d!838454 (= (matchRSpec!1126 r!17423 s!11993) e!1842083)))

(declare-fun b!2919733 () Bool)

(assert (=> b!2919733 (= e!1842080 (matchRSpec!1126 (regTwo!18491 r!17423) s!11993))))

(declare-fun b!2919734 () Bool)

(assert (=> b!2919734 (= e!1842083 call!190993)))

(declare-fun b!2919735 () Bool)

(assert (=> b!2919735 (= e!1842079 e!1842084)))

(declare-fun c!476383 () Bool)

(assert (=> b!2919735 (= c!476383 ((_ is Star!8989) r!17423))))

(declare-fun bm!190988 () Bool)

(declare-fun Exists!1365 (Int) Bool)

(assert (=> bm!190988 (= call!190992 (Exists!1365 (ite c!476383 lambda!108629 lambda!108630)))))

(declare-fun b!2919736 () Bool)

(assert (=> b!2919736 (= e!1842081 (= s!11993 (Cons!34730 (c!476245 r!17423) Nil!34730)))))

(assert (= (and d!838454 c!476384) b!2919734))

(assert (= (and d!838454 (not c!476384)) b!2919731))

(assert (= (and b!2919731 res!1205378) b!2919730))

(assert (= (and b!2919730 c!476382) b!2919736))

(assert (= (and b!2919730 (not c!476382)) b!2919728))

(assert (= (and b!2919728 c!476381) b!2919727))

(assert (= (and b!2919728 (not c!476381)) b!2919735))

(assert (= (and b!2919727 (not res!1205376)) b!2919733))

(assert (= (and b!2919735 c!476383) b!2919726))

(assert (= (and b!2919735 (not c!476383)) b!2919732))

(assert (= (and b!2919726 (not res!1205377)) b!2919729))

(assert (= (or b!2919729 b!2919732) bm!190988))

(assert (= (or b!2919734 b!2919726) bm!190987))

(declare-fun m!3316595 () Bool)

(assert (=> b!2919727 m!3316595))

(assert (=> bm!190987 m!3316481))

(declare-fun m!3316597 () Bool)

(assert (=> b!2919733 m!3316597))

(declare-fun m!3316599 () Bool)

(assert (=> bm!190988 m!3316599))

(assert (=> b!2919215 d!838454))

(declare-fun bm!190989 () Bool)

(declare-fun call!190994 () Bool)

(assert (=> bm!190989 (= call!190994 (isEmpty!18985 s!11993))))

(declare-fun b!2919741 () Bool)

(declare-fun e!1842091 () Bool)

(assert (=> b!2919741 (= e!1842091 (not (= (head!6488 s!11993) (c!476245 r!17423))))))

(declare-fun b!2919742 () Bool)

(declare-fun e!1842088 () Bool)

(declare-fun e!1842085 () Bool)

(assert (=> b!2919742 (= e!1842088 e!1842085)))

(declare-fun c!476385 () Bool)

(assert (=> b!2919742 (= c!476385 ((_ is EmptyLang!8989) r!17423))))

(declare-fun d!838464 () Bool)

(assert (=> d!838464 e!1842088))

(declare-fun c!476386 () Bool)

(assert (=> d!838464 (= c!476386 ((_ is EmptyExpr!8989) r!17423))))

(declare-fun lt!1025466 () Bool)

(declare-fun e!1842089 () Bool)

(assert (=> d!838464 (= lt!1025466 e!1842089)))

(declare-fun c!476387 () Bool)

(assert (=> d!838464 (= c!476387 (isEmpty!18985 s!11993))))

(assert (=> d!838464 (validRegex!3722 r!17423)))

(assert (=> d!838464 (= (matchR!3871 r!17423 s!11993) lt!1025466)))

(declare-fun b!2919743 () Bool)

(declare-fun e!1842090 () Bool)

(declare-fun e!1842086 () Bool)

(assert (=> b!2919743 (= e!1842090 e!1842086)))

(declare-fun res!1205383 () Bool)

(assert (=> b!2919743 (=> (not res!1205383) (not e!1842086))))

(assert (=> b!2919743 (= res!1205383 (not lt!1025466))))

(declare-fun b!2919744 () Bool)

(assert (=> b!2919744 (= e!1842085 (not lt!1025466))))

(declare-fun b!2919745 () Bool)

(declare-fun res!1205384 () Bool)

(assert (=> b!2919745 (=> res!1205384 e!1842090)))

(assert (=> b!2919745 (= res!1205384 (not ((_ is ElementMatch!8989) r!17423)))))

(assert (=> b!2919745 (= e!1842085 e!1842090)))

(declare-fun b!2919746 () Bool)

(declare-fun e!1842087 () Bool)

(assert (=> b!2919746 (= e!1842087 (= (head!6488 s!11993) (c!476245 r!17423)))))

(declare-fun b!2919747 () Bool)

(assert (=> b!2919747 (= e!1842086 e!1842091)))

(declare-fun res!1205385 () Bool)

(assert (=> b!2919747 (=> res!1205385 e!1842091)))

(assert (=> b!2919747 (= res!1205385 call!190994)))

(declare-fun b!2919748 () Bool)

(declare-fun res!1205380 () Bool)

(assert (=> b!2919748 (=> (not res!1205380) (not e!1842087))))

(assert (=> b!2919748 (= res!1205380 (isEmpty!18985 (tail!4714 s!11993)))))

(declare-fun b!2919749 () Bool)

(declare-fun res!1205379 () Bool)

(assert (=> b!2919749 (=> (not res!1205379) (not e!1842087))))

(assert (=> b!2919749 (= res!1205379 (not call!190994))))

(declare-fun b!2919750 () Bool)

(assert (=> b!2919750 (= e!1842089 (nullable!2815 r!17423))))

(declare-fun b!2919751 () Bool)

(assert (=> b!2919751 (= e!1842088 (= lt!1025466 call!190994))))

(declare-fun b!2919752 () Bool)

(declare-fun res!1205381 () Bool)

(assert (=> b!2919752 (=> res!1205381 e!1842090)))

(assert (=> b!2919752 (= res!1205381 e!1842087)))

(declare-fun res!1205386 () Bool)

(assert (=> b!2919752 (=> (not res!1205386) (not e!1842087))))

(assert (=> b!2919752 (= res!1205386 lt!1025466)))

(declare-fun b!2919753 () Bool)

(declare-fun res!1205382 () Bool)

(assert (=> b!2919753 (=> res!1205382 e!1842091)))

(assert (=> b!2919753 (= res!1205382 (not (isEmpty!18985 (tail!4714 s!11993))))))

(declare-fun b!2919754 () Bool)

(assert (=> b!2919754 (= e!1842089 (matchR!3871 (derivativeStep!2429 r!17423 (head!6488 s!11993)) (tail!4714 s!11993)))))

(assert (= (and d!838464 c!476387) b!2919750))

(assert (= (and d!838464 (not c!476387)) b!2919754))

(assert (= (and d!838464 c!476386) b!2919751))

(assert (= (and d!838464 (not c!476386)) b!2919742))

(assert (= (and b!2919742 c!476385) b!2919744))

(assert (= (and b!2919742 (not c!476385)) b!2919745))

(assert (= (and b!2919745 (not res!1205384)) b!2919752))

(assert (= (and b!2919752 res!1205386) b!2919749))

(assert (= (and b!2919749 res!1205379) b!2919748))

(assert (= (and b!2919748 res!1205380) b!2919746))

(assert (= (and b!2919752 (not res!1205381)) b!2919743))

(assert (= (and b!2919743 res!1205383) b!2919747))

(assert (= (and b!2919747 (not res!1205385)) b!2919753))

(assert (= (and b!2919753 (not res!1205382)) b!2919741))

(assert (= (or b!2919751 b!2919749 b!2919747) bm!190989))

(assert (=> b!2919754 m!3316469))

(assert (=> b!2919754 m!3316469))

(declare-fun m!3316601 () Bool)

(assert (=> b!2919754 m!3316601))

(assert (=> b!2919754 m!3316475))

(assert (=> b!2919754 m!3316601))

(assert (=> b!2919754 m!3316475))

(declare-fun m!3316603 () Bool)

(assert (=> b!2919754 m!3316603))

(assert (=> b!2919753 m!3316475))

(assert (=> b!2919753 m!3316475))

(assert (=> b!2919753 m!3316479))

(assert (=> b!2919741 m!3316469))

(assert (=> b!2919746 m!3316469))

(assert (=> bm!190989 m!3316481))

(assert (=> b!2919748 m!3316475))

(assert (=> b!2919748 m!3316475))

(assert (=> b!2919748 m!3316479))

(declare-fun m!3316605 () Bool)

(assert (=> b!2919750 m!3316605))

(assert (=> d!838464 m!3316481))

(assert (=> d!838464 m!3316445))

(assert (=> b!2919215 d!838464))

(declare-fun d!838466 () Bool)

(assert (=> d!838466 (= (matchR!3871 r!17423 s!11993) (matchRSpec!1126 r!17423 s!11993))))

(declare-fun lt!1025469 () Unit!48317)

(declare-fun choose!17212 (Regex!8989 List!34854) Unit!48317)

(assert (=> d!838466 (= lt!1025469 (choose!17212 r!17423 s!11993))))

(assert (=> d!838466 (validRegex!3722 r!17423)))

(assert (=> d!838466 (= (mainMatchTheorem!1126 r!17423 s!11993) lt!1025469)))

(declare-fun bs!524938 () Bool)

(assert (= bs!524938 d!838466))

(assert (=> bs!524938 m!3316437))

(assert (=> bs!524938 m!3316435))

(declare-fun m!3316607 () Bool)

(assert (=> bs!524938 m!3316607))

(assert (=> bs!524938 m!3316445))

(assert (=> b!2919215 d!838466))

(declare-fun b!2919765 () Bool)

(declare-fun e!1842094 () Bool)

(assert (=> b!2919765 (= e!1842094 tp_is_empty!15541)))

(declare-fun b!2919767 () Bool)

(declare-fun tp!937025 () Bool)

(assert (=> b!2919767 (= e!1842094 tp!937025)))

(declare-fun b!2919766 () Bool)

(declare-fun tp!937022 () Bool)

(declare-fun tp!937024 () Bool)

(assert (=> b!2919766 (= e!1842094 (and tp!937022 tp!937024))))

(declare-fun b!2919768 () Bool)

(declare-fun tp!937023 () Bool)

(declare-fun tp!937026 () Bool)

(assert (=> b!2919768 (= e!1842094 (and tp!937023 tp!937026))))

(assert (=> b!2919219 (= tp!936968 e!1842094)))

(assert (= (and b!2919219 ((_ is ElementMatch!8989) (reg!9318 r!17423))) b!2919765))

(assert (= (and b!2919219 ((_ is Concat!14310) (reg!9318 r!17423))) b!2919766))

(assert (= (and b!2919219 ((_ is Star!8989) (reg!9318 r!17423))) b!2919767))

(assert (= (and b!2919219 ((_ is Union!8989) (reg!9318 r!17423))) b!2919768))

(declare-fun b!2919773 () Bool)

(declare-fun e!1842097 () Bool)

(declare-fun tp!937029 () Bool)

(assert (=> b!2919773 (= e!1842097 (and tp_is_empty!15541 tp!937029))))

(assert (=> b!2919217 (= tp!936969 e!1842097)))

(assert (= (and b!2919217 ((_ is Cons!34730) (t!233919 s!11993))) b!2919773))

(declare-fun b!2919774 () Bool)

(declare-fun e!1842098 () Bool)

(assert (=> b!2919774 (= e!1842098 tp_is_empty!15541)))

(declare-fun b!2919776 () Bool)

(declare-fun tp!937033 () Bool)

(assert (=> b!2919776 (= e!1842098 tp!937033)))

(declare-fun b!2919775 () Bool)

(declare-fun tp!937030 () Bool)

(declare-fun tp!937032 () Bool)

(assert (=> b!2919775 (= e!1842098 (and tp!937030 tp!937032))))

(declare-fun b!2919777 () Bool)

(declare-fun tp!937031 () Bool)

(declare-fun tp!937034 () Bool)

(assert (=> b!2919777 (= e!1842098 (and tp!937031 tp!937034))))

(assert (=> b!2919218 (= tp!936970 e!1842098)))

(assert (= (and b!2919218 ((_ is ElementMatch!8989) (regOne!18491 r!17423))) b!2919774))

(assert (= (and b!2919218 ((_ is Concat!14310) (regOne!18491 r!17423))) b!2919775))

(assert (= (and b!2919218 ((_ is Star!8989) (regOne!18491 r!17423))) b!2919776))

(assert (= (and b!2919218 ((_ is Union!8989) (regOne!18491 r!17423))) b!2919777))

(declare-fun b!2919778 () Bool)

(declare-fun e!1842099 () Bool)

(assert (=> b!2919778 (= e!1842099 tp_is_empty!15541)))

(declare-fun b!2919780 () Bool)

(declare-fun tp!937038 () Bool)

(assert (=> b!2919780 (= e!1842099 tp!937038)))

(declare-fun b!2919779 () Bool)

(declare-fun tp!937035 () Bool)

(declare-fun tp!937037 () Bool)

(assert (=> b!2919779 (= e!1842099 (and tp!937035 tp!937037))))

(declare-fun b!2919781 () Bool)

(declare-fun tp!937036 () Bool)

(declare-fun tp!937039 () Bool)

(assert (=> b!2919781 (= e!1842099 (and tp!937036 tp!937039))))

(assert (=> b!2919218 (= tp!936971 e!1842099)))

(assert (= (and b!2919218 ((_ is ElementMatch!8989) (regTwo!18491 r!17423))) b!2919778))

(assert (= (and b!2919218 ((_ is Concat!14310) (regTwo!18491 r!17423))) b!2919779))

(assert (= (and b!2919218 ((_ is Star!8989) (regTwo!18491 r!17423))) b!2919780))

(assert (= (and b!2919218 ((_ is Union!8989) (regTwo!18491 r!17423))) b!2919781))

(declare-fun b!2919782 () Bool)

(declare-fun e!1842100 () Bool)

(assert (=> b!2919782 (= e!1842100 tp_is_empty!15541)))

(declare-fun b!2919784 () Bool)

(declare-fun tp!937043 () Bool)

(assert (=> b!2919784 (= e!1842100 tp!937043)))

(declare-fun b!2919783 () Bool)

(declare-fun tp!937040 () Bool)

(declare-fun tp!937042 () Bool)

(assert (=> b!2919783 (= e!1842100 (and tp!937040 tp!937042))))

(declare-fun b!2919785 () Bool)

(declare-fun tp!937041 () Bool)

(declare-fun tp!937044 () Bool)

(assert (=> b!2919785 (= e!1842100 (and tp!937041 tp!937044))))

(assert (=> b!2919221 (= tp!936972 e!1842100)))

(assert (= (and b!2919221 ((_ is ElementMatch!8989) (regOne!18490 r!17423))) b!2919782))

(assert (= (and b!2919221 ((_ is Concat!14310) (regOne!18490 r!17423))) b!2919783))

(assert (= (and b!2919221 ((_ is Star!8989) (regOne!18490 r!17423))) b!2919784))

(assert (= (and b!2919221 ((_ is Union!8989) (regOne!18490 r!17423))) b!2919785))

(declare-fun b!2919786 () Bool)

(declare-fun e!1842101 () Bool)

(assert (=> b!2919786 (= e!1842101 tp_is_empty!15541)))

(declare-fun b!2919788 () Bool)

(declare-fun tp!937048 () Bool)

(assert (=> b!2919788 (= e!1842101 tp!937048)))

(declare-fun b!2919787 () Bool)

(declare-fun tp!937045 () Bool)

(declare-fun tp!937047 () Bool)

(assert (=> b!2919787 (= e!1842101 (and tp!937045 tp!937047))))

(declare-fun b!2919789 () Bool)

(declare-fun tp!937046 () Bool)

(declare-fun tp!937049 () Bool)

(assert (=> b!2919789 (= e!1842101 (and tp!937046 tp!937049))))

(assert (=> b!2919221 (= tp!936973 e!1842101)))

(assert (= (and b!2919221 ((_ is ElementMatch!8989) (regTwo!18490 r!17423))) b!2919786))

(assert (= (and b!2919221 ((_ is Concat!14310) (regTwo!18490 r!17423))) b!2919787))

(assert (= (and b!2919221 ((_ is Star!8989) (regTwo!18490 r!17423))) b!2919788))

(assert (= (and b!2919221 ((_ is Union!8989) (regTwo!18490 r!17423))) b!2919789))

(check-sat (not bm!190906) (not b!2919555) (not bm!190925) (not b!2919308) (not bm!190929) (not b!2919333) (not b!2919741) (not b!2919294) (not b!2919746) (not b!2919727) (not b!2919303) (not b!2919768) (not b!2919787) (not b!2919766) (not bm!190988) (not d!838466) (not b!2919315) (not b!2919321) (not b!2919783) (not bm!190970) (not bm!190928) (not b!2919320) (not b!2919332) (not b!2919754) (not b!2919748) (not b!2919753) (not b!2919317) (not bm!190924) (not bm!190966) (not b!2919785) (not bm!190987) (not b!2919423) (not b!2919407) (not b!2919553) (not b!2919418) (not b!2919306) (not b!2919307) (not d!838430) (not d!838452) (not b!2919789) (not b!2919779) (not b!2919781) (not d!838444) (not b!2919313) tp_is_empty!15541 (not bm!190905) (not b!2919775) (not b!2919411) (not b!2919773) (not b!2919301) (not d!838446) (not d!838432) (not b!2919784) (not b!2919424) (not b!2919767) (not bm!190965) (not d!838426) (not b!2919750) (not bm!190989) (not bm!190971) (not b!2919420) (not bm!190927) (not d!838464) (not b!2919788) (not b!2919733) (not b!2919777) (not b!2919299) (not b!2919780) (not b!2919416) (not bm!190968) (not b!2919776) (not b!2919398))
(check-sat)
