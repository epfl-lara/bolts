; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!291996 () Bool)

(assert start!291996)

(declare-fun b!3058189 () Bool)

(declare-fun e!1915253 () Bool)

(declare-fun tp_is_empty!16521 () Bool)

(declare-fun tp!966876 () Bool)

(assert (=> b!3058189 (= e!1915253 (and tp_is_empty!16521 tp!966876))))

(declare-fun res!1255700 () Bool)

(declare-fun e!1915257 () Bool)

(assert (=> start!291996 (=> (not res!1255700) (not e!1915257))))

(declare-datatypes ((C!19144 0))(
  ( (C!19145 (val!11608 Int)) )
))
(declare-datatypes ((Regex!9479 0))(
  ( (ElementMatch!9479 (c!507437 C!19144)) (Concat!14800 (regOne!19470 Regex!9479) (regTwo!19470 Regex!9479)) (EmptyExpr!9479) (Star!9479 (reg!9808 Regex!9479)) (EmptyLang!9479) (Union!9479 (regOne!19471 Regex!9479) (regTwo!19471 Regex!9479)) )
))
(declare-fun r!17423 () Regex!9479)

(declare-fun validRegex!4212 (Regex!9479) Bool)

(assert (=> start!291996 (= res!1255700 (validRegex!4212 r!17423))))

(assert (=> start!291996 e!1915257))

(declare-fun e!1915254 () Bool)

(assert (=> start!291996 e!1915254))

(assert (=> start!291996 e!1915253))

(declare-fun b!3058190 () Bool)

(declare-fun tp!966880 () Bool)

(assert (=> b!3058190 (= e!1915254 tp!966880)))

(declare-fun b!3058191 () Bool)

(declare-fun res!1255701 () Bool)

(declare-fun e!1915256 () Bool)

(assert (=> b!3058191 (=> res!1255701 e!1915256)))

(declare-datatypes ((List!35344 0))(
  ( (Nil!35220) (Cons!35220 (h!40640 C!19144) (t!234409 List!35344)) )
))
(declare-fun s!11993 () List!35344)

(declare-fun isEmpty!19535 (List!35344) Bool)

(assert (=> b!3058191 (= res!1255701 (isEmpty!19535 s!11993))))

(declare-fun b!3058192 () Bool)

(assert (=> b!3058192 (= e!1915257 (not e!1915256))))

(declare-fun res!1255699 () Bool)

(assert (=> b!3058192 (=> res!1255699 e!1915256)))

(declare-fun lt!1049433 () Bool)

(get-info :version)

(assert (=> b!3058192 (= res!1255699 (or lt!1049433 (not ((_ is Concat!14800) r!17423))))))

(declare-fun matchRSpec!1616 (Regex!9479 List!35344) Bool)

(assert (=> b!3058192 (= lt!1049433 (matchRSpec!1616 r!17423 s!11993))))

(declare-fun matchR!4361 (Regex!9479 List!35344) Bool)

(assert (=> b!3058192 (= lt!1049433 (matchR!4361 r!17423 s!11993))))

(declare-datatypes ((Unit!49397 0))(
  ( (Unit!49398) )
))
(declare-fun lt!1049432 () Unit!49397)

(declare-fun mainMatchTheorem!1616 (Regex!9479 List!35344) Unit!49397)

(assert (=> b!3058192 (= lt!1049432 (mainMatchTheorem!1616 r!17423 s!11993))))

(declare-fun b!3058193 () Bool)

(assert (=> b!3058193 (= e!1915254 tp_is_empty!16521)))

(declare-fun b!3058194 () Bool)

(declare-fun res!1255702 () Bool)

(declare-fun e!1915255 () Bool)

(assert (=> b!3058194 (=> res!1255702 e!1915255)))

(declare-fun lt!1049434 () Regex!9479)

(declare-fun isEmptyExpr!536 (Regex!9479) Bool)

(assert (=> b!3058194 (= res!1255702 (not (isEmptyExpr!536 lt!1049434)))))

(declare-fun b!3058195 () Bool)

(assert (=> b!3058195 (= e!1915256 e!1915255)))

(declare-fun res!1255697 () Bool)

(assert (=> b!3058195 (=> res!1255697 e!1915255)))

(declare-fun isEmptyLang!530 (Regex!9479) Bool)

(assert (=> b!3058195 (= res!1255697 (isEmptyLang!530 lt!1049434))))

(declare-fun lt!1049431 () Regex!9479)

(declare-fun simplify!434 (Regex!9479) Regex!9479)

(assert (=> b!3058195 (= lt!1049431 (simplify!434 (regTwo!19470 r!17423)))))

(assert (=> b!3058195 (= lt!1049434 (simplify!434 (regOne!19470 r!17423)))))

(declare-fun b!3058196 () Bool)

(declare-fun res!1255698 () Bool)

(assert (=> b!3058196 (=> res!1255698 e!1915255)))

(assert (=> b!3058196 (= res!1255698 (isEmptyLang!530 lt!1049431))))

(declare-fun b!3058197 () Bool)

(assert (=> b!3058197 (= e!1915255 (validRegex!4212 (regTwo!19470 r!17423)))))

(declare-fun b!3058198 () Bool)

(declare-fun tp!966878 () Bool)

(declare-fun tp!966881 () Bool)

(assert (=> b!3058198 (= e!1915254 (and tp!966878 tp!966881))))

(declare-fun b!3058199 () Bool)

(declare-fun tp!966877 () Bool)

(declare-fun tp!966879 () Bool)

(assert (=> b!3058199 (= e!1915254 (and tp!966877 tp!966879))))

(assert (= (and start!291996 res!1255700) b!3058192))

(assert (= (and b!3058192 (not res!1255699)) b!3058191))

(assert (= (and b!3058191 (not res!1255701)) b!3058195))

(assert (= (and b!3058195 (not res!1255697)) b!3058196))

(assert (= (and b!3058196 (not res!1255698)) b!3058194))

(assert (= (and b!3058194 (not res!1255702)) b!3058197))

(assert (= (and start!291996 ((_ is ElementMatch!9479) r!17423)) b!3058193))

(assert (= (and start!291996 ((_ is Concat!14800) r!17423)) b!3058199))

(assert (= (and start!291996 ((_ is Star!9479) r!17423)) b!3058190))

(assert (= (and start!291996 ((_ is Union!9479) r!17423)) b!3058198))

(assert (= (and start!291996 ((_ is Cons!35220) s!11993)) b!3058189))

(declare-fun m!3380583 () Bool)

(assert (=> b!3058194 m!3380583))

(declare-fun m!3380585 () Bool)

(assert (=> b!3058196 m!3380585))

(declare-fun m!3380587 () Bool)

(assert (=> b!3058197 m!3380587))

(declare-fun m!3380589 () Bool)

(assert (=> b!3058192 m!3380589))

(declare-fun m!3380591 () Bool)

(assert (=> b!3058192 m!3380591))

(declare-fun m!3380593 () Bool)

(assert (=> b!3058192 m!3380593))

(declare-fun m!3380595 () Bool)

(assert (=> b!3058195 m!3380595))

(declare-fun m!3380597 () Bool)

(assert (=> b!3058195 m!3380597))

(declare-fun m!3380599 () Bool)

(assert (=> b!3058195 m!3380599))

(declare-fun m!3380601 () Bool)

(assert (=> b!3058191 m!3380601))

(declare-fun m!3380603 () Bool)

(assert (=> start!291996 m!3380603))

(check-sat (not b!3058194) (not b!3058197) tp_is_empty!16521 (not b!3058196) (not b!3058199) (not b!3058189) (not b!3058192) (not b!3058198) (not b!3058190) (not b!3058195) (not start!291996) (not b!3058191))
(check-sat)
(get-model)

(declare-fun b!3058257 () Bool)

(assert (=> b!3058257 true))

(assert (=> b!3058257 true))

(declare-fun bs!532422 () Bool)

(declare-fun b!3058259 () Bool)

(assert (= bs!532422 (and b!3058259 b!3058257)))

(declare-fun lambda!113832 () Int)

(declare-fun lambda!113831 () Int)

(assert (=> bs!532422 (not (= lambda!113832 lambda!113831))))

(assert (=> b!3058259 true))

(assert (=> b!3058259 true))

(declare-fun b!3058254 () Bool)

(declare-fun e!1915292 () Bool)

(declare-fun e!1915291 () Bool)

(assert (=> b!3058254 (= e!1915292 e!1915291)))

(declare-fun res!1255727 () Bool)

(assert (=> b!3058254 (= res!1255727 (matchRSpec!1616 (regOne!19471 r!17423) s!11993))))

(assert (=> b!3058254 (=> res!1255727 e!1915291)))

(declare-fun b!3058255 () Bool)

(assert (=> b!3058255 (= e!1915291 (matchRSpec!1616 (regTwo!19471 r!17423) s!11993))))

(declare-fun bm!211240 () Bool)

(declare-fun call!211246 () Bool)

(assert (=> bm!211240 (= call!211246 (isEmpty!19535 s!11993))))

(declare-fun b!3058256 () Bool)

(declare-fun e!1915295 () Bool)

(declare-fun e!1915294 () Bool)

(assert (=> b!3058256 (= e!1915295 e!1915294)))

(declare-fun res!1255725 () Bool)

(assert (=> b!3058256 (= res!1255725 (not ((_ is EmptyLang!9479) r!17423)))))

(assert (=> b!3058256 (=> (not res!1255725) (not e!1915294))))

(declare-fun e!1915296 () Bool)

(declare-fun call!211245 () Bool)

(assert (=> b!3058257 (= e!1915296 call!211245)))

(declare-fun b!3058258 () Bool)

(declare-fun c!507455 () Bool)

(assert (=> b!3058258 (= c!507455 ((_ is ElementMatch!9479) r!17423))))

(declare-fun e!1915293 () Bool)

(assert (=> b!3058258 (= e!1915294 e!1915293)))

(declare-fun e!1915290 () Bool)

(assert (=> b!3058259 (= e!1915290 call!211245)))

(declare-fun d!854995 () Bool)

(declare-fun c!507454 () Bool)

(assert (=> d!854995 (= c!507454 ((_ is EmptyExpr!9479) r!17423))))

(assert (=> d!854995 (= (matchRSpec!1616 r!17423 s!11993) e!1915295)))

(declare-fun c!507456 () Bool)

(declare-fun bm!211241 () Bool)

(declare-fun Exists!1741 (Int) Bool)

(assert (=> bm!211241 (= call!211245 (Exists!1741 (ite c!507456 lambda!113831 lambda!113832)))))

(declare-fun b!3058260 () Bool)

(declare-fun c!507457 () Bool)

(assert (=> b!3058260 (= c!507457 ((_ is Union!9479) r!17423))))

(assert (=> b!3058260 (= e!1915293 e!1915292)))

(declare-fun b!3058261 () Bool)

(declare-fun res!1255726 () Bool)

(assert (=> b!3058261 (=> res!1255726 e!1915296)))

(assert (=> b!3058261 (= res!1255726 call!211246)))

(assert (=> b!3058261 (= e!1915290 e!1915296)))

(declare-fun b!3058262 () Bool)

(assert (=> b!3058262 (= e!1915292 e!1915290)))

(assert (=> b!3058262 (= c!507456 ((_ is Star!9479) r!17423))))

(declare-fun b!3058263 () Bool)

(assert (=> b!3058263 (= e!1915295 call!211246)))

(declare-fun b!3058264 () Bool)

(assert (=> b!3058264 (= e!1915293 (= s!11993 (Cons!35220 (c!507437 r!17423) Nil!35220)))))

(assert (= (and d!854995 c!507454) b!3058263))

(assert (= (and d!854995 (not c!507454)) b!3058256))

(assert (= (and b!3058256 res!1255725) b!3058258))

(assert (= (and b!3058258 c!507455) b!3058264))

(assert (= (and b!3058258 (not c!507455)) b!3058260))

(assert (= (and b!3058260 c!507457) b!3058254))

(assert (= (and b!3058260 (not c!507457)) b!3058262))

(assert (= (and b!3058254 (not res!1255727)) b!3058255))

(assert (= (and b!3058262 c!507456) b!3058261))

(assert (= (and b!3058262 (not c!507456)) b!3058259))

(assert (= (and b!3058261 (not res!1255726)) b!3058257))

(assert (= (or b!3058257 b!3058259) bm!211241))

(assert (= (or b!3058263 b!3058261) bm!211240))

(declare-fun m!3380605 () Bool)

(assert (=> b!3058254 m!3380605))

(declare-fun m!3380607 () Bool)

(assert (=> b!3058255 m!3380607))

(assert (=> bm!211240 m!3380601))

(declare-fun m!3380609 () Bool)

(assert (=> bm!211241 m!3380609))

(assert (=> b!3058192 d!854995))

(declare-fun b!3058297 () Bool)

(declare-fun e!1915313 () Bool)

(declare-fun lt!1049437 () Bool)

(declare-fun call!211249 () Bool)

(assert (=> b!3058297 (= e!1915313 (= lt!1049437 call!211249))))

(declare-fun b!3058298 () Bool)

(declare-fun res!1255746 () Bool)

(declare-fun e!1915317 () Bool)

(assert (=> b!3058298 (=> (not res!1255746) (not e!1915317))))

(declare-fun tail!5005 (List!35344) List!35344)

(assert (=> b!3058298 (= res!1255746 (isEmpty!19535 (tail!5005 s!11993)))))

(declare-fun bm!211244 () Bool)

(assert (=> bm!211244 (= call!211249 (isEmpty!19535 s!11993))))

(declare-fun d!855001 () Bool)

(assert (=> d!855001 e!1915313))

(declare-fun c!507465 () Bool)

(assert (=> d!855001 (= c!507465 ((_ is EmptyExpr!9479) r!17423))))

(declare-fun e!1915316 () Bool)

(assert (=> d!855001 (= lt!1049437 e!1915316)))

(declare-fun c!507464 () Bool)

(assert (=> d!855001 (= c!507464 (isEmpty!19535 s!11993))))

(assert (=> d!855001 (validRegex!4212 r!17423)))

(assert (=> d!855001 (= (matchR!4361 r!17423 s!11993) lt!1049437)))

(declare-fun b!3058299 () Bool)

(declare-fun head!6779 (List!35344) C!19144)

(assert (=> b!3058299 (= e!1915317 (= (head!6779 s!11993) (c!507437 r!17423)))))

(declare-fun b!3058300 () Bool)

(declare-fun derivativeStep!2720 (Regex!9479 C!19144) Regex!9479)

(assert (=> b!3058300 (= e!1915316 (matchR!4361 (derivativeStep!2720 r!17423 (head!6779 s!11993)) (tail!5005 s!11993)))))

(declare-fun b!3058301 () Bool)

(declare-fun res!1255747 () Bool)

(assert (=> b!3058301 (=> (not res!1255747) (not e!1915317))))

(assert (=> b!3058301 (= res!1255747 (not call!211249))))

(declare-fun b!3058302 () Bool)

(declare-fun res!1255744 () Bool)

(declare-fun e!1915315 () Bool)

(assert (=> b!3058302 (=> res!1255744 e!1915315)))

(assert (=> b!3058302 (= res!1255744 (not ((_ is ElementMatch!9479) r!17423)))))

(declare-fun e!1915312 () Bool)

(assert (=> b!3058302 (= e!1915312 e!1915315)))

(declare-fun b!3058303 () Bool)

(declare-fun res!1255745 () Bool)

(assert (=> b!3058303 (=> res!1255745 e!1915315)))

(assert (=> b!3058303 (= res!1255745 e!1915317)))

(declare-fun res!1255751 () Bool)

(assert (=> b!3058303 (=> (not res!1255751) (not e!1915317))))

(assert (=> b!3058303 (= res!1255751 lt!1049437)))

(declare-fun b!3058304 () Bool)

(declare-fun e!1915314 () Bool)

(assert (=> b!3058304 (= e!1915315 e!1915314)))

(declare-fun res!1255749 () Bool)

(assert (=> b!3058304 (=> (not res!1255749) (not e!1915314))))

(assert (=> b!3058304 (= res!1255749 (not lt!1049437))))

(declare-fun b!3058305 () Bool)

(declare-fun res!1255750 () Bool)

(declare-fun e!1915311 () Bool)

(assert (=> b!3058305 (=> res!1255750 e!1915311)))

(assert (=> b!3058305 (= res!1255750 (not (isEmpty!19535 (tail!5005 s!11993))))))

(declare-fun b!3058306 () Bool)

(assert (=> b!3058306 (= e!1915313 e!1915312)))

(declare-fun c!507466 () Bool)

(assert (=> b!3058306 (= c!507466 ((_ is EmptyLang!9479) r!17423))))

(declare-fun b!3058307 () Bool)

(assert (=> b!3058307 (= e!1915314 e!1915311)))

(declare-fun res!1255748 () Bool)

(assert (=> b!3058307 (=> res!1255748 e!1915311)))

(assert (=> b!3058307 (= res!1255748 call!211249)))

(declare-fun b!3058308 () Bool)

(declare-fun nullable!3124 (Regex!9479) Bool)

(assert (=> b!3058308 (= e!1915316 (nullable!3124 r!17423))))

(declare-fun b!3058309 () Bool)

(assert (=> b!3058309 (= e!1915311 (not (= (head!6779 s!11993) (c!507437 r!17423))))))

(declare-fun b!3058310 () Bool)

(assert (=> b!3058310 (= e!1915312 (not lt!1049437))))

(assert (= (and d!855001 c!507464) b!3058308))

(assert (= (and d!855001 (not c!507464)) b!3058300))

(assert (= (and d!855001 c!507465) b!3058297))

(assert (= (and d!855001 (not c!507465)) b!3058306))

(assert (= (and b!3058306 c!507466) b!3058310))

(assert (= (and b!3058306 (not c!507466)) b!3058302))

(assert (= (and b!3058302 (not res!1255744)) b!3058303))

(assert (= (and b!3058303 res!1255751) b!3058301))

(assert (= (and b!3058301 res!1255747) b!3058298))

(assert (= (and b!3058298 res!1255746) b!3058299))

(assert (= (and b!3058303 (not res!1255745)) b!3058304))

(assert (= (and b!3058304 res!1255749) b!3058307))

(assert (= (and b!3058307 (not res!1255748)) b!3058305))

(assert (= (and b!3058305 (not res!1255750)) b!3058309))

(assert (= (or b!3058297 b!3058307 b!3058301) bm!211244))

(declare-fun m!3380611 () Bool)

(assert (=> b!3058308 m!3380611))

(declare-fun m!3380613 () Bool)

(assert (=> b!3058299 m!3380613))

(assert (=> bm!211244 m!3380601))

(assert (=> d!855001 m!3380601))

(assert (=> d!855001 m!3380603))

(assert (=> b!3058300 m!3380613))

(assert (=> b!3058300 m!3380613))

(declare-fun m!3380615 () Bool)

(assert (=> b!3058300 m!3380615))

(declare-fun m!3380617 () Bool)

(assert (=> b!3058300 m!3380617))

(assert (=> b!3058300 m!3380615))

(assert (=> b!3058300 m!3380617))

(declare-fun m!3380619 () Bool)

(assert (=> b!3058300 m!3380619))

(assert (=> b!3058305 m!3380617))

(assert (=> b!3058305 m!3380617))

(declare-fun m!3380621 () Bool)

(assert (=> b!3058305 m!3380621))

(assert (=> b!3058298 m!3380617))

(assert (=> b!3058298 m!3380617))

(assert (=> b!3058298 m!3380621))

(assert (=> b!3058309 m!3380613))

(assert (=> b!3058192 d!855001))

(declare-fun d!855003 () Bool)

(assert (=> d!855003 (= (matchR!4361 r!17423 s!11993) (matchRSpec!1616 r!17423 s!11993))))

(declare-fun lt!1049440 () Unit!49397)

(declare-fun choose!18112 (Regex!9479 List!35344) Unit!49397)

(assert (=> d!855003 (= lt!1049440 (choose!18112 r!17423 s!11993))))

(assert (=> d!855003 (validRegex!4212 r!17423)))

(assert (=> d!855003 (= (mainMatchTheorem!1616 r!17423 s!11993) lt!1049440)))

(declare-fun bs!532423 () Bool)

(assert (= bs!532423 d!855003))

(assert (=> bs!532423 m!3380591))

(assert (=> bs!532423 m!3380589))

(declare-fun m!3380623 () Bool)

(assert (=> bs!532423 m!3380623))

(assert (=> bs!532423 m!3380603))

(assert (=> b!3058192 d!855003))

(declare-fun b!3058329 () Bool)

(declare-fun e!1915338 () Bool)

(declare-fun call!211257 () Bool)

(assert (=> b!3058329 (= e!1915338 call!211257)))

(declare-fun d!855005 () Bool)

(declare-fun res!1255762 () Bool)

(declare-fun e!1915337 () Bool)

(assert (=> d!855005 (=> res!1255762 e!1915337)))

(assert (=> d!855005 (= res!1255762 ((_ is ElementMatch!9479) (regTwo!19470 r!17423)))))

(assert (=> d!855005 (= (validRegex!4212 (regTwo!19470 r!17423)) e!1915337)))

(declare-fun b!3058330 () Bool)

(declare-fun e!1915336 () Bool)

(assert (=> b!3058330 (= e!1915337 e!1915336)))

(declare-fun c!507471 () Bool)

(assert (=> b!3058330 (= c!507471 ((_ is Star!9479) (regTwo!19470 r!17423)))))

(declare-fun b!3058331 () Bool)

(declare-fun res!1255763 () Bool)

(declare-fun e!1915334 () Bool)

(assert (=> b!3058331 (=> res!1255763 e!1915334)))

(assert (=> b!3058331 (= res!1255763 (not ((_ is Concat!14800) (regTwo!19470 r!17423))))))

(declare-fun e!1915332 () Bool)

(assert (=> b!3058331 (= e!1915332 e!1915334)))

(declare-fun b!3058332 () Bool)

(declare-fun res!1255765 () Bool)

(declare-fun e!1915333 () Bool)

(assert (=> b!3058332 (=> (not res!1255765) (not e!1915333))))

(declare-fun call!211256 () Bool)

(assert (=> b!3058332 (= res!1255765 call!211256)))

(assert (=> b!3058332 (= e!1915332 e!1915333)))

(declare-fun bm!211251 () Bool)

(declare-fun call!211258 () Bool)

(declare-fun c!507472 () Bool)

(assert (=> bm!211251 (= call!211258 (validRegex!4212 (ite c!507472 (regTwo!19471 (regTwo!19470 r!17423)) (regOne!19470 (regTwo!19470 r!17423)))))))

(declare-fun b!3058333 () Bool)

(assert (=> b!3058333 (= e!1915333 call!211258)))

(declare-fun b!3058334 () Bool)

(declare-fun e!1915335 () Bool)

(assert (=> b!3058334 (= e!1915335 call!211256)))

(declare-fun bm!211252 () Bool)

(assert (=> bm!211252 (= call!211256 call!211257)))

(declare-fun bm!211253 () Bool)

(assert (=> bm!211253 (= call!211257 (validRegex!4212 (ite c!507471 (reg!9808 (regTwo!19470 r!17423)) (ite c!507472 (regOne!19471 (regTwo!19470 r!17423)) (regTwo!19470 (regTwo!19470 r!17423))))))))

(declare-fun b!3058335 () Bool)

(assert (=> b!3058335 (= e!1915336 e!1915332)))

(assert (=> b!3058335 (= c!507472 ((_ is Union!9479) (regTwo!19470 r!17423)))))

(declare-fun b!3058336 () Bool)

(assert (=> b!3058336 (= e!1915334 e!1915335)))

(declare-fun res!1255764 () Bool)

(assert (=> b!3058336 (=> (not res!1255764) (not e!1915335))))

(assert (=> b!3058336 (= res!1255764 call!211258)))

(declare-fun b!3058337 () Bool)

(assert (=> b!3058337 (= e!1915336 e!1915338)))

(declare-fun res!1255766 () Bool)

(assert (=> b!3058337 (= res!1255766 (not (nullable!3124 (reg!9808 (regTwo!19470 r!17423)))))))

(assert (=> b!3058337 (=> (not res!1255766) (not e!1915338))))

(assert (= (and d!855005 (not res!1255762)) b!3058330))

(assert (= (and b!3058330 c!507471) b!3058337))

(assert (= (and b!3058330 (not c!507471)) b!3058335))

(assert (= (and b!3058337 res!1255766) b!3058329))

(assert (= (and b!3058335 c!507472) b!3058332))

(assert (= (and b!3058335 (not c!507472)) b!3058331))

(assert (= (and b!3058332 res!1255765) b!3058333))

(assert (= (and b!3058331 (not res!1255763)) b!3058336))

(assert (= (and b!3058336 res!1255764) b!3058334))

(assert (= (or b!3058332 b!3058334) bm!211252))

(assert (= (or b!3058333 b!3058336) bm!211251))

(assert (= (or b!3058329 bm!211252) bm!211253))

(declare-fun m!3380625 () Bool)

(assert (=> bm!211251 m!3380625))

(declare-fun m!3380627 () Bool)

(assert (=> bm!211253 m!3380627))

(declare-fun m!3380629 () Bool)

(assert (=> b!3058337 m!3380629))

(assert (=> b!3058197 d!855005))

(declare-fun b!3058338 () Bool)

(declare-fun e!1915345 () Bool)

(declare-fun call!211260 () Bool)

(assert (=> b!3058338 (= e!1915345 call!211260)))

(declare-fun d!855007 () Bool)

(declare-fun res!1255767 () Bool)

(declare-fun e!1915344 () Bool)

(assert (=> d!855007 (=> res!1255767 e!1915344)))

(assert (=> d!855007 (= res!1255767 ((_ is ElementMatch!9479) r!17423))))

(assert (=> d!855007 (= (validRegex!4212 r!17423) e!1915344)))

(declare-fun b!3058339 () Bool)

(declare-fun e!1915343 () Bool)

(assert (=> b!3058339 (= e!1915344 e!1915343)))

(declare-fun c!507473 () Bool)

(assert (=> b!3058339 (= c!507473 ((_ is Star!9479) r!17423))))

(declare-fun b!3058340 () Bool)

(declare-fun res!1255768 () Bool)

(declare-fun e!1915341 () Bool)

(assert (=> b!3058340 (=> res!1255768 e!1915341)))

(assert (=> b!3058340 (= res!1255768 (not ((_ is Concat!14800) r!17423)))))

(declare-fun e!1915339 () Bool)

(assert (=> b!3058340 (= e!1915339 e!1915341)))

(declare-fun b!3058341 () Bool)

(declare-fun res!1255770 () Bool)

(declare-fun e!1915340 () Bool)

(assert (=> b!3058341 (=> (not res!1255770) (not e!1915340))))

(declare-fun call!211259 () Bool)

(assert (=> b!3058341 (= res!1255770 call!211259)))

(assert (=> b!3058341 (= e!1915339 e!1915340)))

(declare-fun bm!211254 () Bool)

(declare-fun call!211261 () Bool)

(declare-fun c!507474 () Bool)

(assert (=> bm!211254 (= call!211261 (validRegex!4212 (ite c!507474 (regTwo!19471 r!17423) (regOne!19470 r!17423))))))

(declare-fun b!3058342 () Bool)

(assert (=> b!3058342 (= e!1915340 call!211261)))

(declare-fun b!3058343 () Bool)

(declare-fun e!1915342 () Bool)

(assert (=> b!3058343 (= e!1915342 call!211259)))

(declare-fun bm!211255 () Bool)

(assert (=> bm!211255 (= call!211259 call!211260)))

(declare-fun bm!211256 () Bool)

(assert (=> bm!211256 (= call!211260 (validRegex!4212 (ite c!507473 (reg!9808 r!17423) (ite c!507474 (regOne!19471 r!17423) (regTwo!19470 r!17423)))))))

(declare-fun b!3058344 () Bool)

(assert (=> b!3058344 (= e!1915343 e!1915339)))

(assert (=> b!3058344 (= c!507474 ((_ is Union!9479) r!17423))))

(declare-fun b!3058345 () Bool)

(assert (=> b!3058345 (= e!1915341 e!1915342)))

(declare-fun res!1255769 () Bool)

(assert (=> b!3058345 (=> (not res!1255769) (not e!1915342))))

(assert (=> b!3058345 (= res!1255769 call!211261)))

(declare-fun b!3058346 () Bool)

(assert (=> b!3058346 (= e!1915343 e!1915345)))

(declare-fun res!1255771 () Bool)

(assert (=> b!3058346 (= res!1255771 (not (nullable!3124 (reg!9808 r!17423))))))

(assert (=> b!3058346 (=> (not res!1255771) (not e!1915345))))

(assert (= (and d!855007 (not res!1255767)) b!3058339))

(assert (= (and b!3058339 c!507473) b!3058346))

(assert (= (and b!3058339 (not c!507473)) b!3058344))

(assert (= (and b!3058346 res!1255771) b!3058338))

(assert (= (and b!3058344 c!507474) b!3058341))

(assert (= (and b!3058344 (not c!507474)) b!3058340))

(assert (= (and b!3058341 res!1255770) b!3058342))

(assert (= (and b!3058340 (not res!1255768)) b!3058345))

(assert (= (and b!3058345 res!1255769) b!3058343))

(assert (= (or b!3058341 b!3058343) bm!211255))

(assert (= (or b!3058342 b!3058345) bm!211254))

(assert (= (or b!3058338 bm!211255) bm!211256))

(declare-fun m!3380631 () Bool)

(assert (=> bm!211254 m!3380631))

(declare-fun m!3380633 () Bool)

(assert (=> bm!211256 m!3380633))

(declare-fun m!3380635 () Bool)

(assert (=> b!3058346 m!3380635))

(assert (=> start!291996 d!855007))

(declare-fun d!855009 () Bool)

(assert (=> d!855009 (= (isEmpty!19535 s!11993) ((_ is Nil!35220) s!11993))))

(assert (=> b!3058191 d!855009))

(declare-fun d!855011 () Bool)

(assert (=> d!855011 (= (isEmptyLang!530 lt!1049431) ((_ is EmptyLang!9479) lt!1049431))))

(assert (=> b!3058196 d!855011))

(declare-fun d!855013 () Bool)

(assert (=> d!855013 (= (isEmptyLang!530 lt!1049434) ((_ is EmptyLang!9479) lt!1049434))))

(assert (=> b!3058195 d!855013))

(declare-fun bm!211271 () Bool)

(declare-fun call!211280 () Regex!9479)

(declare-fun c!507498 () Bool)

(assert (=> bm!211271 (= call!211280 (simplify!434 (ite c!507498 (regTwo!19471 (regTwo!19470 r!17423)) (regOne!19470 (regTwo!19470 r!17423)))))))

(declare-fun b!3058397 () Bool)

(declare-fun e!1915380 () Bool)

(declare-fun lt!1049454 () Regex!9479)

(assert (=> b!3058397 (= e!1915380 (= (nullable!3124 lt!1049454) (nullable!3124 (regTwo!19470 r!17423))))))

(declare-fun b!3058398 () Bool)

(declare-fun e!1915374 () Regex!9479)

(declare-fun e!1915383 () Regex!9479)

(assert (=> b!3058398 (= e!1915374 e!1915383)))

(declare-fun c!507500 () Bool)

(declare-fun call!211276 () Bool)

(assert (=> b!3058398 (= c!507500 call!211276)))

(declare-fun b!3058399 () Bool)

(declare-fun c!507503 () Bool)

(declare-fun call!211278 () Bool)

(assert (=> b!3058399 (= c!507503 call!211278)))

(declare-fun e!1915378 () Regex!9479)

(declare-fun e!1915386 () Regex!9479)

(assert (=> b!3058399 (= e!1915378 e!1915386)))

(declare-fun b!3058400 () Bool)

(declare-fun e!1915381 () Regex!9479)

(assert (=> b!3058400 (= e!1915381 (regTwo!19470 r!17423))))

(declare-fun b!3058401 () Bool)

(declare-fun lt!1049453 () Regex!9479)

(declare-fun lt!1049457 () Regex!9479)

(assert (=> b!3058401 (= e!1915386 (Union!9479 lt!1049453 lt!1049457))))

(declare-fun call!211277 () Bool)

(declare-fun c!507507 () Bool)

(declare-fun bm!211272 () Bool)

(declare-fun lt!1049458 () Regex!9479)

(declare-fun lt!1049455 () Regex!9479)

(assert (=> bm!211272 (= call!211277 (isEmptyLang!530 (ite c!507507 lt!1049458 (ite c!507498 lt!1049453 lt!1049455))))))

(declare-fun b!3058402 () Bool)

(assert (=> b!3058402 (= e!1915386 lt!1049453)))

(declare-fun b!3058403 () Bool)

(declare-fun e!1915382 () Regex!9479)

(declare-fun e!1915375 () Regex!9479)

(assert (=> b!3058403 (= e!1915382 e!1915375)))

(assert (=> b!3058403 (= c!507507 ((_ is Star!9479) (regTwo!19470 r!17423)))))

(declare-fun bm!211273 () Bool)

(declare-fun call!211282 () Regex!9479)

(declare-fun call!211279 () Regex!9479)

(assert (=> bm!211273 (= call!211282 call!211279)))

(declare-fun b!3058404 () Bool)

(declare-fun e!1915384 () Regex!9479)

(assert (=> b!3058404 (= e!1915384 (Star!9479 lt!1049458))))

(declare-fun b!3058405 () Bool)

(assert (=> b!3058405 (= c!507498 ((_ is Union!9479) (regTwo!19470 r!17423)))))

(declare-fun e!1915377 () Regex!9479)

(assert (=> b!3058405 (= e!1915375 e!1915377)))

(declare-fun b!3058406 () Bool)

(declare-fun c!507504 () Bool)

(assert (=> b!3058406 (= c!507504 (isEmptyExpr!536 lt!1049455))))

(declare-fun e!1915387 () Regex!9479)

(assert (=> b!3058406 (= e!1915387 e!1915374)))

(declare-fun b!3058407 () Bool)

(declare-fun c!507506 () Bool)

(declare-fun e!1915385 () Bool)

(assert (=> b!3058407 (= c!507506 e!1915385)))

(declare-fun res!1255778 () Bool)

(assert (=> b!3058407 (=> res!1255778 e!1915385)))

(assert (=> b!3058407 (= res!1255778 call!211277)))

(assert (=> b!3058407 (= lt!1049458 call!211279)))

(assert (=> b!3058407 (= e!1915375 e!1915384)))

(declare-fun bm!211274 () Bool)

(declare-fun lt!1049456 () Regex!9479)

(assert (=> bm!211274 (= call!211276 (isEmptyExpr!536 (ite c!507507 lt!1049458 lt!1049456)))))

(declare-fun b!3058408 () Bool)

(assert (=> b!3058408 (= e!1915374 lt!1049456)))

(declare-fun b!3058409 () Bool)

(assert (=> b!3058409 (= e!1915383 lt!1049455)))

(declare-fun b!3058410 () Bool)

(assert (=> b!3058410 (= e!1915387 EmptyLang!9479)))

(declare-fun b!3058411 () Bool)

(assert (=> b!3058411 (= e!1915377 e!1915387)))

(assert (=> b!3058411 (= lt!1049455 call!211280)))

(assert (=> b!3058411 (= lt!1049456 call!211282)))

(declare-fun res!1255779 () Bool)

(declare-fun call!211281 () Bool)

(assert (=> b!3058411 (= res!1255779 call!211281)))

(declare-fun e!1915379 () Bool)

(assert (=> b!3058411 (=> res!1255779 e!1915379)))

(declare-fun c!507505 () Bool)

(assert (=> b!3058411 (= c!507505 e!1915379)))

(declare-fun b!3058412 () Bool)

(assert (=> b!3058412 (= e!1915379 call!211278)))

(declare-fun b!3058413 () Bool)

(declare-fun e!1915376 () Regex!9479)

(assert (=> b!3058413 (= e!1915376 EmptyLang!9479)))

(declare-fun bm!211275 () Bool)

(assert (=> bm!211275 (= call!211278 (isEmptyLang!530 (ite c!507498 lt!1049457 lt!1049456)))))

(declare-fun b!3058414 () Bool)

(assert (=> b!3058414 (= e!1915383 (Concat!14800 lt!1049455 lt!1049456))))

(declare-fun d!855015 () Bool)

(assert (=> d!855015 e!1915380))

(declare-fun res!1255780 () Bool)

(assert (=> d!855015 (=> (not res!1255780) (not e!1915380))))

(assert (=> d!855015 (= res!1255780 (validRegex!4212 lt!1049454))))

(assert (=> d!855015 (= lt!1049454 e!1915376)))

(declare-fun c!507499 () Bool)

(assert (=> d!855015 (= c!507499 ((_ is EmptyLang!9479) (regTwo!19470 r!17423)))))

(assert (=> d!855015 (validRegex!4212 (regTwo!19470 r!17423))))

(assert (=> d!855015 (= (simplify!434 (regTwo!19470 r!17423)) lt!1049454)))

(declare-fun b!3058415 () Bool)

(declare-fun c!507502 () Bool)

(assert (=> b!3058415 (= c!507502 ((_ is EmptyExpr!9479) (regTwo!19470 r!17423)))))

(assert (=> b!3058415 (= e!1915381 e!1915382)))

(declare-fun b!3058416 () Bool)

(assert (=> b!3058416 (= e!1915384 EmptyExpr!9479)))

(declare-fun b!3058417 () Bool)

(assert (=> b!3058417 (= e!1915377 e!1915378)))

(assert (=> b!3058417 (= lt!1049453 call!211282)))

(assert (=> b!3058417 (= lt!1049457 call!211280)))

(declare-fun c!507501 () Bool)

(assert (=> b!3058417 (= c!507501 call!211281)))

(declare-fun bm!211276 () Bool)

(assert (=> bm!211276 (= call!211281 call!211277)))

(declare-fun b!3058418 () Bool)

(assert (=> b!3058418 (= e!1915378 lt!1049457)))

(declare-fun b!3058419 () Bool)

(assert (=> b!3058419 (= e!1915382 EmptyExpr!9479)))

(declare-fun b!3058420 () Bool)

(assert (=> b!3058420 (= e!1915385 call!211276)))

(declare-fun bm!211277 () Bool)

(assert (=> bm!211277 (= call!211279 (simplify!434 (ite c!507507 (reg!9808 (regTwo!19470 r!17423)) (ite c!507498 (regOne!19471 (regTwo!19470 r!17423)) (regTwo!19470 (regTwo!19470 r!17423))))))))

(declare-fun b!3058421 () Bool)

(assert (=> b!3058421 (= e!1915376 e!1915381)))

(declare-fun c!507497 () Bool)

(assert (=> b!3058421 (= c!507497 ((_ is ElementMatch!9479) (regTwo!19470 r!17423)))))

(assert (= (and d!855015 c!507499) b!3058413))

(assert (= (and d!855015 (not c!507499)) b!3058421))

(assert (= (and b!3058421 c!507497) b!3058400))

(assert (= (and b!3058421 (not c!507497)) b!3058415))

(assert (= (and b!3058415 c!507502) b!3058419))

(assert (= (and b!3058415 (not c!507502)) b!3058403))

(assert (= (and b!3058403 c!507507) b!3058407))

(assert (= (and b!3058403 (not c!507507)) b!3058405))

(assert (= (and b!3058407 (not res!1255778)) b!3058420))

(assert (= (and b!3058407 c!507506) b!3058416))

(assert (= (and b!3058407 (not c!507506)) b!3058404))

(assert (= (and b!3058405 c!507498) b!3058417))

(assert (= (and b!3058405 (not c!507498)) b!3058411))

(assert (= (and b!3058417 c!507501) b!3058418))

(assert (= (and b!3058417 (not c!507501)) b!3058399))

(assert (= (and b!3058399 c!507503) b!3058402))

(assert (= (and b!3058399 (not c!507503)) b!3058401))

(assert (= (and b!3058411 (not res!1255779)) b!3058412))

(assert (= (and b!3058411 c!507505) b!3058410))

(assert (= (and b!3058411 (not c!507505)) b!3058406))

(assert (= (and b!3058406 c!507504) b!3058408))

(assert (= (and b!3058406 (not c!507504)) b!3058398))

(assert (= (and b!3058398 c!507500) b!3058409))

(assert (= (and b!3058398 (not c!507500)) b!3058414))

(assert (= (or b!3058417 b!3058411) bm!211273))

(assert (= (or b!3058417 b!3058411) bm!211271))

(assert (= (or b!3058417 b!3058411) bm!211276))

(assert (= (or b!3058399 b!3058412) bm!211275))

(assert (= (or b!3058420 b!3058398) bm!211274))

(assert (= (or b!3058407 bm!211273) bm!211277))

(assert (= (or b!3058407 bm!211276) bm!211272))

(assert (= (and d!855015 res!1255780) b!3058397))

(declare-fun m!3380637 () Bool)

(assert (=> b!3058397 m!3380637))

(declare-fun m!3380639 () Bool)

(assert (=> b!3058397 m!3380639))

(declare-fun m!3380641 () Bool)

(assert (=> bm!211277 m!3380641))

(declare-fun m!3380643 () Bool)

(assert (=> bm!211275 m!3380643))

(declare-fun m!3380645 () Bool)

(assert (=> bm!211271 m!3380645))

(declare-fun m!3380647 () Bool)

(assert (=> b!3058406 m!3380647))

(declare-fun m!3380649 () Bool)

(assert (=> bm!211272 m!3380649))

(declare-fun m!3380651 () Bool)

(assert (=> bm!211274 m!3380651))

(declare-fun m!3380653 () Bool)

(assert (=> d!855015 m!3380653))

(assert (=> d!855015 m!3380587))

(assert (=> b!3058195 d!855015))

(declare-fun bm!211278 () Bool)

(declare-fun call!211287 () Regex!9479)

(declare-fun c!507509 () Bool)

(assert (=> bm!211278 (= call!211287 (simplify!434 (ite c!507509 (regTwo!19471 (regOne!19470 r!17423)) (regOne!19470 (regOne!19470 r!17423)))))))

(declare-fun b!3058422 () Bool)

(declare-fun e!1915394 () Bool)

(declare-fun lt!1049460 () Regex!9479)

(assert (=> b!3058422 (= e!1915394 (= (nullable!3124 lt!1049460) (nullable!3124 (regOne!19470 r!17423))))))

(declare-fun b!3058423 () Bool)

(declare-fun e!1915388 () Regex!9479)

(declare-fun e!1915397 () Regex!9479)

(assert (=> b!3058423 (= e!1915388 e!1915397)))

(declare-fun c!507511 () Bool)

(declare-fun call!211283 () Bool)

(assert (=> b!3058423 (= c!507511 call!211283)))

(declare-fun b!3058424 () Bool)

(declare-fun c!507514 () Bool)

(declare-fun call!211285 () Bool)

(assert (=> b!3058424 (= c!507514 call!211285)))

(declare-fun e!1915392 () Regex!9479)

(declare-fun e!1915400 () Regex!9479)

(assert (=> b!3058424 (= e!1915392 e!1915400)))

(declare-fun b!3058425 () Bool)

(declare-fun e!1915395 () Regex!9479)

(assert (=> b!3058425 (= e!1915395 (regOne!19470 r!17423))))

(declare-fun b!3058426 () Bool)

(declare-fun lt!1049459 () Regex!9479)

(declare-fun lt!1049463 () Regex!9479)

(assert (=> b!3058426 (= e!1915400 (Union!9479 lt!1049459 lt!1049463))))

(declare-fun call!211284 () Bool)

(declare-fun bm!211279 () Bool)

(declare-fun lt!1049461 () Regex!9479)

(declare-fun lt!1049464 () Regex!9479)

(declare-fun c!507518 () Bool)

(assert (=> bm!211279 (= call!211284 (isEmptyLang!530 (ite c!507518 lt!1049464 (ite c!507509 lt!1049459 lt!1049461))))))

(declare-fun b!3058427 () Bool)

(assert (=> b!3058427 (= e!1915400 lt!1049459)))

(declare-fun b!3058428 () Bool)

(declare-fun e!1915396 () Regex!9479)

(declare-fun e!1915389 () Regex!9479)

(assert (=> b!3058428 (= e!1915396 e!1915389)))

(assert (=> b!3058428 (= c!507518 ((_ is Star!9479) (regOne!19470 r!17423)))))

(declare-fun bm!211280 () Bool)

(declare-fun call!211289 () Regex!9479)

(declare-fun call!211286 () Regex!9479)

(assert (=> bm!211280 (= call!211289 call!211286)))

(declare-fun b!3058429 () Bool)

(declare-fun e!1915398 () Regex!9479)

(assert (=> b!3058429 (= e!1915398 (Star!9479 lt!1049464))))

(declare-fun b!3058430 () Bool)

(assert (=> b!3058430 (= c!507509 ((_ is Union!9479) (regOne!19470 r!17423)))))

(declare-fun e!1915391 () Regex!9479)

(assert (=> b!3058430 (= e!1915389 e!1915391)))

(declare-fun b!3058431 () Bool)

(declare-fun c!507515 () Bool)

(assert (=> b!3058431 (= c!507515 (isEmptyExpr!536 lt!1049461))))

(declare-fun e!1915401 () Regex!9479)

(assert (=> b!3058431 (= e!1915401 e!1915388)))

(declare-fun b!3058432 () Bool)

(declare-fun c!507517 () Bool)

(declare-fun e!1915399 () Bool)

(assert (=> b!3058432 (= c!507517 e!1915399)))

(declare-fun res!1255781 () Bool)

(assert (=> b!3058432 (=> res!1255781 e!1915399)))

(assert (=> b!3058432 (= res!1255781 call!211284)))

(assert (=> b!3058432 (= lt!1049464 call!211286)))

(assert (=> b!3058432 (= e!1915389 e!1915398)))

(declare-fun lt!1049462 () Regex!9479)

(declare-fun bm!211281 () Bool)

(assert (=> bm!211281 (= call!211283 (isEmptyExpr!536 (ite c!507518 lt!1049464 lt!1049462)))))

(declare-fun b!3058433 () Bool)

(assert (=> b!3058433 (= e!1915388 lt!1049462)))

(declare-fun b!3058434 () Bool)

(assert (=> b!3058434 (= e!1915397 lt!1049461)))

(declare-fun b!3058435 () Bool)

(assert (=> b!3058435 (= e!1915401 EmptyLang!9479)))

(declare-fun b!3058436 () Bool)

(assert (=> b!3058436 (= e!1915391 e!1915401)))

(assert (=> b!3058436 (= lt!1049461 call!211287)))

(assert (=> b!3058436 (= lt!1049462 call!211289)))

(declare-fun res!1255782 () Bool)

(declare-fun call!211288 () Bool)

(assert (=> b!3058436 (= res!1255782 call!211288)))

(declare-fun e!1915393 () Bool)

(assert (=> b!3058436 (=> res!1255782 e!1915393)))

(declare-fun c!507516 () Bool)

(assert (=> b!3058436 (= c!507516 e!1915393)))

(declare-fun b!3058437 () Bool)

(assert (=> b!3058437 (= e!1915393 call!211285)))

(declare-fun b!3058438 () Bool)

(declare-fun e!1915390 () Regex!9479)

(assert (=> b!3058438 (= e!1915390 EmptyLang!9479)))

(declare-fun bm!211282 () Bool)

(assert (=> bm!211282 (= call!211285 (isEmptyLang!530 (ite c!507509 lt!1049463 lt!1049462)))))

(declare-fun b!3058439 () Bool)

(assert (=> b!3058439 (= e!1915397 (Concat!14800 lt!1049461 lt!1049462))))

(declare-fun d!855017 () Bool)

(assert (=> d!855017 e!1915394))

(declare-fun res!1255783 () Bool)

(assert (=> d!855017 (=> (not res!1255783) (not e!1915394))))

(assert (=> d!855017 (= res!1255783 (validRegex!4212 lt!1049460))))

(assert (=> d!855017 (= lt!1049460 e!1915390)))

(declare-fun c!507510 () Bool)

(assert (=> d!855017 (= c!507510 ((_ is EmptyLang!9479) (regOne!19470 r!17423)))))

(assert (=> d!855017 (validRegex!4212 (regOne!19470 r!17423))))

(assert (=> d!855017 (= (simplify!434 (regOne!19470 r!17423)) lt!1049460)))

(declare-fun b!3058440 () Bool)

(declare-fun c!507513 () Bool)

(assert (=> b!3058440 (= c!507513 ((_ is EmptyExpr!9479) (regOne!19470 r!17423)))))

(assert (=> b!3058440 (= e!1915395 e!1915396)))

(declare-fun b!3058441 () Bool)

(assert (=> b!3058441 (= e!1915398 EmptyExpr!9479)))

(declare-fun b!3058442 () Bool)

(assert (=> b!3058442 (= e!1915391 e!1915392)))

(assert (=> b!3058442 (= lt!1049459 call!211289)))

(assert (=> b!3058442 (= lt!1049463 call!211287)))

(declare-fun c!507512 () Bool)

(assert (=> b!3058442 (= c!507512 call!211288)))

(declare-fun bm!211283 () Bool)

(assert (=> bm!211283 (= call!211288 call!211284)))

(declare-fun b!3058443 () Bool)

(assert (=> b!3058443 (= e!1915392 lt!1049463)))

(declare-fun b!3058444 () Bool)

(assert (=> b!3058444 (= e!1915396 EmptyExpr!9479)))

(declare-fun b!3058445 () Bool)

(assert (=> b!3058445 (= e!1915399 call!211283)))

(declare-fun bm!211284 () Bool)

(assert (=> bm!211284 (= call!211286 (simplify!434 (ite c!507518 (reg!9808 (regOne!19470 r!17423)) (ite c!507509 (regOne!19471 (regOne!19470 r!17423)) (regTwo!19470 (regOne!19470 r!17423))))))))

(declare-fun b!3058446 () Bool)

(assert (=> b!3058446 (= e!1915390 e!1915395)))

(declare-fun c!507508 () Bool)

(assert (=> b!3058446 (= c!507508 ((_ is ElementMatch!9479) (regOne!19470 r!17423)))))

(assert (= (and d!855017 c!507510) b!3058438))

(assert (= (and d!855017 (not c!507510)) b!3058446))

(assert (= (and b!3058446 c!507508) b!3058425))

(assert (= (and b!3058446 (not c!507508)) b!3058440))

(assert (= (and b!3058440 c!507513) b!3058444))

(assert (= (and b!3058440 (not c!507513)) b!3058428))

(assert (= (and b!3058428 c!507518) b!3058432))

(assert (= (and b!3058428 (not c!507518)) b!3058430))

(assert (= (and b!3058432 (not res!1255781)) b!3058445))

(assert (= (and b!3058432 c!507517) b!3058441))

(assert (= (and b!3058432 (not c!507517)) b!3058429))

(assert (= (and b!3058430 c!507509) b!3058442))

(assert (= (and b!3058430 (not c!507509)) b!3058436))

(assert (= (and b!3058442 c!507512) b!3058443))

(assert (= (and b!3058442 (not c!507512)) b!3058424))

(assert (= (and b!3058424 c!507514) b!3058427))

(assert (= (and b!3058424 (not c!507514)) b!3058426))

(assert (= (and b!3058436 (not res!1255782)) b!3058437))

(assert (= (and b!3058436 c!507516) b!3058435))

(assert (= (and b!3058436 (not c!507516)) b!3058431))

(assert (= (and b!3058431 c!507515) b!3058433))

(assert (= (and b!3058431 (not c!507515)) b!3058423))

(assert (= (and b!3058423 c!507511) b!3058434))

(assert (= (and b!3058423 (not c!507511)) b!3058439))

(assert (= (or b!3058442 b!3058436) bm!211280))

(assert (= (or b!3058442 b!3058436) bm!211278))

(assert (= (or b!3058442 b!3058436) bm!211283))

(assert (= (or b!3058424 b!3058437) bm!211282))

(assert (= (or b!3058445 b!3058423) bm!211281))

(assert (= (or b!3058432 bm!211280) bm!211284))

(assert (= (or b!3058432 bm!211283) bm!211279))

(assert (= (and d!855017 res!1255783) b!3058422))

(declare-fun m!3380655 () Bool)

(assert (=> b!3058422 m!3380655))

(declare-fun m!3380657 () Bool)

(assert (=> b!3058422 m!3380657))

(declare-fun m!3380659 () Bool)

(assert (=> bm!211284 m!3380659))

(declare-fun m!3380661 () Bool)

(assert (=> bm!211282 m!3380661))

(declare-fun m!3380663 () Bool)

(assert (=> bm!211278 m!3380663))

(declare-fun m!3380665 () Bool)

(assert (=> b!3058431 m!3380665))

(declare-fun m!3380667 () Bool)

(assert (=> bm!211279 m!3380667))

(declare-fun m!3380669 () Bool)

(assert (=> bm!211281 m!3380669))

(declare-fun m!3380671 () Bool)

(assert (=> d!855017 m!3380671))

(declare-fun m!3380673 () Bool)

(assert (=> d!855017 m!3380673))

(assert (=> b!3058195 d!855017))

(declare-fun d!855019 () Bool)

(assert (=> d!855019 (= (isEmptyExpr!536 lt!1049434) ((_ is EmptyExpr!9479) lt!1049434))))

(assert (=> b!3058194 d!855019))

(declare-fun e!1915404 () Bool)

(assert (=> b!3058198 (= tp!966878 e!1915404)))

(declare-fun b!3058460 () Bool)

(declare-fun tp!966896 () Bool)

(declare-fun tp!966894 () Bool)

(assert (=> b!3058460 (= e!1915404 (and tp!966896 tp!966894))))

(declare-fun b!3058458 () Bool)

(declare-fun tp!966893 () Bool)

(declare-fun tp!966892 () Bool)

(assert (=> b!3058458 (= e!1915404 (and tp!966893 tp!966892))))

(declare-fun b!3058459 () Bool)

(declare-fun tp!966895 () Bool)

(assert (=> b!3058459 (= e!1915404 tp!966895)))

(declare-fun b!3058457 () Bool)

(assert (=> b!3058457 (= e!1915404 tp_is_empty!16521)))

(assert (= (and b!3058198 ((_ is ElementMatch!9479) (regOne!19471 r!17423))) b!3058457))

(assert (= (and b!3058198 ((_ is Concat!14800) (regOne!19471 r!17423))) b!3058458))

(assert (= (and b!3058198 ((_ is Star!9479) (regOne!19471 r!17423))) b!3058459))

(assert (= (and b!3058198 ((_ is Union!9479) (regOne!19471 r!17423))) b!3058460))

(declare-fun e!1915405 () Bool)

(assert (=> b!3058198 (= tp!966881 e!1915405)))

(declare-fun b!3058464 () Bool)

(declare-fun tp!966901 () Bool)

(declare-fun tp!966899 () Bool)

(assert (=> b!3058464 (= e!1915405 (and tp!966901 tp!966899))))

(declare-fun b!3058462 () Bool)

(declare-fun tp!966898 () Bool)

(declare-fun tp!966897 () Bool)

(assert (=> b!3058462 (= e!1915405 (and tp!966898 tp!966897))))

(declare-fun b!3058463 () Bool)

(declare-fun tp!966900 () Bool)

(assert (=> b!3058463 (= e!1915405 tp!966900)))

(declare-fun b!3058461 () Bool)

(assert (=> b!3058461 (= e!1915405 tp_is_empty!16521)))

(assert (= (and b!3058198 ((_ is ElementMatch!9479) (regTwo!19471 r!17423))) b!3058461))

(assert (= (and b!3058198 ((_ is Concat!14800) (regTwo!19471 r!17423))) b!3058462))

(assert (= (and b!3058198 ((_ is Star!9479) (regTwo!19471 r!17423))) b!3058463))

(assert (= (and b!3058198 ((_ is Union!9479) (regTwo!19471 r!17423))) b!3058464))

(declare-fun e!1915406 () Bool)

(assert (=> b!3058190 (= tp!966880 e!1915406)))

(declare-fun b!3058468 () Bool)

(declare-fun tp!966906 () Bool)

(declare-fun tp!966904 () Bool)

(assert (=> b!3058468 (= e!1915406 (and tp!966906 tp!966904))))

(declare-fun b!3058466 () Bool)

(declare-fun tp!966903 () Bool)

(declare-fun tp!966902 () Bool)

(assert (=> b!3058466 (= e!1915406 (and tp!966903 tp!966902))))

(declare-fun b!3058467 () Bool)

(declare-fun tp!966905 () Bool)

(assert (=> b!3058467 (= e!1915406 tp!966905)))

(declare-fun b!3058465 () Bool)

(assert (=> b!3058465 (= e!1915406 tp_is_empty!16521)))

(assert (= (and b!3058190 ((_ is ElementMatch!9479) (reg!9808 r!17423))) b!3058465))

(assert (= (and b!3058190 ((_ is Concat!14800) (reg!9808 r!17423))) b!3058466))

(assert (= (and b!3058190 ((_ is Star!9479) (reg!9808 r!17423))) b!3058467))

(assert (= (and b!3058190 ((_ is Union!9479) (reg!9808 r!17423))) b!3058468))

(declare-fun b!3058473 () Bool)

(declare-fun e!1915409 () Bool)

(declare-fun tp!966909 () Bool)

(assert (=> b!3058473 (= e!1915409 (and tp_is_empty!16521 tp!966909))))

(assert (=> b!3058189 (= tp!966876 e!1915409)))

(assert (= (and b!3058189 ((_ is Cons!35220) (t!234409 s!11993))) b!3058473))

(declare-fun e!1915410 () Bool)

(assert (=> b!3058199 (= tp!966877 e!1915410)))

(declare-fun b!3058477 () Bool)

(declare-fun tp!966914 () Bool)

(declare-fun tp!966912 () Bool)

(assert (=> b!3058477 (= e!1915410 (and tp!966914 tp!966912))))

(declare-fun b!3058475 () Bool)

(declare-fun tp!966911 () Bool)

(declare-fun tp!966910 () Bool)

(assert (=> b!3058475 (= e!1915410 (and tp!966911 tp!966910))))

(declare-fun b!3058476 () Bool)

(declare-fun tp!966913 () Bool)

(assert (=> b!3058476 (= e!1915410 tp!966913)))

(declare-fun b!3058474 () Bool)

(assert (=> b!3058474 (= e!1915410 tp_is_empty!16521)))

(assert (= (and b!3058199 ((_ is ElementMatch!9479) (regOne!19470 r!17423))) b!3058474))

(assert (= (and b!3058199 ((_ is Concat!14800) (regOne!19470 r!17423))) b!3058475))

(assert (= (and b!3058199 ((_ is Star!9479) (regOne!19470 r!17423))) b!3058476))

(assert (= (and b!3058199 ((_ is Union!9479) (regOne!19470 r!17423))) b!3058477))

(declare-fun e!1915411 () Bool)

(assert (=> b!3058199 (= tp!966879 e!1915411)))

(declare-fun b!3058481 () Bool)

(declare-fun tp!966919 () Bool)

(declare-fun tp!966917 () Bool)

(assert (=> b!3058481 (= e!1915411 (and tp!966919 tp!966917))))

(declare-fun b!3058479 () Bool)

(declare-fun tp!966916 () Bool)

(declare-fun tp!966915 () Bool)

(assert (=> b!3058479 (= e!1915411 (and tp!966916 tp!966915))))

(declare-fun b!3058480 () Bool)

(declare-fun tp!966918 () Bool)

(assert (=> b!3058480 (= e!1915411 tp!966918)))

(declare-fun b!3058478 () Bool)

(assert (=> b!3058478 (= e!1915411 tp_is_empty!16521)))

(assert (= (and b!3058199 ((_ is ElementMatch!9479) (regTwo!19470 r!17423))) b!3058478))

(assert (= (and b!3058199 ((_ is Concat!14800) (regTwo!19470 r!17423))) b!3058479))

(assert (= (and b!3058199 ((_ is Star!9479) (regTwo!19470 r!17423))) b!3058480))

(assert (= (and b!3058199 ((_ is Union!9479) (regTwo!19470 r!17423))) b!3058481))

(check-sat (not b!3058462) (not bm!211272) (not bm!211256) (not b!3058468) (not b!3058337) (not bm!211277) (not b!3058422) (not d!855015) (not b!3058255) (not bm!211282) (not bm!211254) (not b!3058406) (not b!3058466) (not b!3058254) (not b!3058460) (not bm!211240) (not b!3058467) (not b!3058481) (not b!3058309) tp_is_empty!16521 (not b!3058463) (not b!3058477) (not b!3058298) (not bm!211251) (not bm!211281) (not d!855001) (not bm!211271) (not bm!211275) (not b!3058458) (not b!3058305) (not b!3058480) (not d!855017) (not b!3058473) (not b!3058475) (not b!3058397) (not bm!211241) (not b!3058431) (not b!3058459) (not d!855003) (not b!3058300) (not b!3058308) (not b!3058479) (not bm!211279) (not b!3058346) (not b!3058299) (not b!3058464) (not bm!211284) (not b!3058476) (not bm!211274) (not bm!211244) (not bm!211253) (not bm!211278))
(check-sat)
