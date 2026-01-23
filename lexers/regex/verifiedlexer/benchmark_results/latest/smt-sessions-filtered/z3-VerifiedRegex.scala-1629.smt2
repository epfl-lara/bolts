; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83230 () Bool)

(assert start!83230)

(declare-fun b!929052 () Bool)

(declare-fun e!604019 () Bool)

(declare-fun tp_is_empty!4677 () Bool)

(assert (=> b!929052 (= e!604019 tp_is_empty!4677)))

(declare-fun b!929053 () Bool)

(declare-fun tp!288608 () Bool)

(assert (=> b!929053 (= e!604019 tp!288608)))

(declare-fun b!929054 () Bool)

(declare-fun e!604016 () Bool)

(declare-fun e!604017 () Bool)

(assert (=> b!929054 (= e!604016 e!604017)))

(declare-fun res!422197 () Bool)

(assert (=> b!929054 (=> res!422197 e!604017)))

(declare-datatypes ((C!5604 0))(
  ( (C!5605 (val!3050 Int)) )
))
(declare-datatypes ((Regex!2517 0))(
  ( (ElementMatch!2517 (c!150914 C!5604)) (Concat!4350 (regOne!5546 Regex!2517) (regTwo!5546 Regex!2517)) (EmptyExpr!2517) (Star!2517 (reg!2846 Regex!2517)) (EmptyLang!2517) (Union!2517 (regOne!5547 Regex!2517) (regTwo!5547 Regex!2517)) )
))
(declare-fun lt!339974 () Regex!2517)

(declare-datatypes ((List!9747 0))(
  ( (Nil!9731) (Cons!9731 (h!15132 C!5604) (t!100793 List!9747)) )
))
(declare-fun s!10566 () List!9747)

(declare-fun matchR!1055 (Regex!2517 List!9747) Bool)

(assert (=> b!929054 (= res!422197 (not (matchR!1055 lt!339974 s!10566)))))

(declare-fun r!15766 () Regex!2517)

(declare-fun removeUselessConcat!192 (Regex!2517) Regex!2517)

(assert (=> b!929054 (= lt!339974 (Union!2517 (removeUselessConcat!192 (regOne!5547 r!15766)) (removeUselessConcat!192 (regTwo!5547 r!15766))))))

(declare-fun b!929055 () Bool)

(declare-fun e!604015 () Bool)

(assert (=> b!929055 (= e!604015 (not e!604016))))

(declare-fun res!422198 () Bool)

(assert (=> b!929055 (=> res!422198 e!604016)))

(declare-fun lt!339973 () Bool)

(get-info :version)

(assert (=> b!929055 (= res!422198 (or lt!339973 (and ((_ is Concat!4350) r!15766) ((_ is EmptyExpr!2517) (regOne!5546 r!15766))) (and ((_ is Concat!4350) r!15766) ((_ is EmptyExpr!2517) (regTwo!5546 r!15766))) ((_ is Concat!4350) r!15766) (not ((_ is Union!2517) r!15766))))))

(declare-fun matchRSpec!318 (Regex!2517 List!9747) Bool)

(assert (=> b!929055 (= lt!339973 (matchRSpec!318 r!15766 s!10566))))

(assert (=> b!929055 (= lt!339973 (matchR!1055 r!15766 s!10566))))

(declare-datatypes ((Unit!14653 0))(
  ( (Unit!14654) )
))
(declare-fun lt!339975 () Unit!14653)

(declare-fun mainMatchTheorem!318 (Regex!2517 List!9747) Unit!14653)

(assert (=> b!929055 (= lt!339975 (mainMatchTheorem!318 r!15766 s!10566))))

(declare-fun res!422196 () Bool)

(assert (=> start!83230 (=> (not res!422196) (not e!604015))))

(declare-fun validRegex!986 (Regex!2517) Bool)

(assert (=> start!83230 (= res!422196 (validRegex!986 r!15766))))

(assert (=> start!83230 e!604015))

(assert (=> start!83230 e!604019))

(declare-fun e!604018 () Bool)

(assert (=> start!83230 e!604018))

(declare-fun b!929056 () Bool)

(assert (=> b!929056 (= e!604017 (validRegex!986 (regOne!5547 r!15766)))))

(assert (=> b!929056 (matchRSpec!318 lt!339974 s!10566)))

(declare-fun lt!339972 () Unit!14653)

(assert (=> b!929056 (= lt!339972 (mainMatchTheorem!318 lt!339974 s!10566))))

(declare-fun b!929057 () Bool)

(declare-fun tp!288606 () Bool)

(assert (=> b!929057 (= e!604018 (and tp_is_empty!4677 tp!288606))))

(declare-fun b!929058 () Bool)

(declare-fun tp!288607 () Bool)

(declare-fun tp!288605 () Bool)

(assert (=> b!929058 (= e!604019 (and tp!288607 tp!288605))))

(declare-fun b!929059 () Bool)

(declare-fun tp!288603 () Bool)

(declare-fun tp!288604 () Bool)

(assert (=> b!929059 (= e!604019 (and tp!288603 tp!288604))))

(assert (= (and start!83230 res!422196) b!929055))

(assert (= (and b!929055 (not res!422198)) b!929054))

(assert (= (and b!929054 (not res!422197)) b!929056))

(assert (= (and start!83230 ((_ is ElementMatch!2517) r!15766)) b!929052))

(assert (= (and start!83230 ((_ is Concat!4350) r!15766)) b!929058))

(assert (= (and start!83230 ((_ is Star!2517) r!15766)) b!929053))

(assert (= (and start!83230 ((_ is Union!2517) r!15766)) b!929059))

(assert (= (and start!83230 ((_ is Cons!9731) s!10566)) b!929057))

(declare-fun m!1152421 () Bool)

(assert (=> b!929054 m!1152421))

(declare-fun m!1152423 () Bool)

(assert (=> b!929054 m!1152423))

(declare-fun m!1152425 () Bool)

(assert (=> b!929054 m!1152425))

(declare-fun m!1152427 () Bool)

(assert (=> b!929055 m!1152427))

(declare-fun m!1152429 () Bool)

(assert (=> b!929055 m!1152429))

(declare-fun m!1152431 () Bool)

(assert (=> b!929055 m!1152431))

(declare-fun m!1152433 () Bool)

(assert (=> start!83230 m!1152433))

(declare-fun m!1152435 () Bool)

(assert (=> b!929056 m!1152435))

(declare-fun m!1152437 () Bool)

(assert (=> b!929056 m!1152437))

(declare-fun m!1152439 () Bool)

(assert (=> b!929056 m!1152439))

(check-sat (not start!83230) tp_is_empty!4677 (not b!929058) (not b!929055) (not b!929054) (not b!929053) (not b!929057) (not b!929059) (not b!929056))
(check-sat)
(get-model)

(declare-fun b!929306 () Bool)

(assert (=> b!929306 true))

(assert (=> b!929306 true))

(declare-fun bs!237628 () Bool)

(declare-fun b!929299 () Bool)

(assert (= bs!237628 (and b!929299 b!929306)))

(declare-fun lambda!30754 () Int)

(declare-fun lambda!30753 () Int)

(assert (=> bs!237628 (not (= lambda!30754 lambda!30753))))

(assert (=> b!929299 true))

(assert (=> b!929299 true))

(declare-fun bm!57119 () Bool)

(declare-fun call!57125 () Bool)

(declare-fun isEmpty!5988 (List!9747) Bool)

(assert (=> bm!57119 (= call!57125 (isEmpty!5988 s!10566))))

(declare-fun b!929296 () Bool)

(declare-fun e!604152 () Bool)

(assert (=> b!929296 (= e!604152 (= s!10566 (Cons!9731 (c!150914 r!15766) Nil!9731)))))

(declare-fun b!929297 () Bool)

(declare-fun e!604156 () Bool)

(assert (=> b!929297 (= e!604156 call!57125)))

(declare-fun b!929298 () Bool)

(declare-fun e!604155 () Bool)

(declare-fun e!604153 () Bool)

(assert (=> b!929298 (= e!604155 e!604153)))

(declare-fun res!422295 () Bool)

(assert (=> b!929298 (= res!422295 (matchRSpec!318 (regOne!5547 r!15766) s!10566))))

(assert (=> b!929298 (=> res!422295 e!604153)))

(declare-fun e!604158 () Bool)

(declare-fun call!57124 () Bool)

(assert (=> b!929299 (= e!604158 call!57124)))

(declare-fun b!929300 () Bool)

(declare-fun e!604154 () Bool)

(assert (=> b!929300 (= e!604156 e!604154)))

(declare-fun res!422294 () Bool)

(assert (=> b!929300 (= res!422294 (not ((_ is EmptyLang!2517) r!15766)))))

(assert (=> b!929300 (=> (not res!422294) (not e!604154))))

(declare-fun b!929301 () Bool)

(declare-fun c!150981 () Bool)

(assert (=> b!929301 (= c!150981 ((_ is ElementMatch!2517) r!15766))))

(assert (=> b!929301 (= e!604154 e!604152)))

(declare-fun b!929303 () Bool)

(assert (=> b!929303 (= e!604153 (matchRSpec!318 (regTwo!5547 r!15766) s!10566))))

(declare-fun bm!57120 () Bool)

(declare-fun c!150979 () Bool)

(declare-fun Exists!286 (Int) Bool)

(assert (=> bm!57120 (= call!57124 (Exists!286 (ite c!150979 lambda!30753 lambda!30754)))))

(declare-fun d!281280 () Bool)

(declare-fun c!150980 () Bool)

(assert (=> d!281280 (= c!150980 ((_ is EmptyExpr!2517) r!15766))))

(assert (=> d!281280 (= (matchRSpec!318 r!15766 s!10566) e!604156)))

(declare-fun e!604157 () Bool)

(assert (=> b!929306 (= e!604157 call!57124)))

(declare-fun b!929308 () Bool)

(declare-fun c!150982 () Bool)

(assert (=> b!929308 (= c!150982 ((_ is Union!2517) r!15766))))

(assert (=> b!929308 (= e!604152 e!604155)))

(declare-fun b!929309 () Bool)

(declare-fun res!422293 () Bool)

(assert (=> b!929309 (=> res!422293 e!604157)))

(assert (=> b!929309 (= res!422293 call!57125)))

(assert (=> b!929309 (= e!604158 e!604157)))

(declare-fun b!929310 () Bool)

(assert (=> b!929310 (= e!604155 e!604158)))

(assert (=> b!929310 (= c!150979 ((_ is Star!2517) r!15766))))

(assert (= (and d!281280 c!150980) b!929297))

(assert (= (and d!281280 (not c!150980)) b!929300))

(assert (= (and b!929300 res!422294) b!929301))

(assert (= (and b!929301 c!150981) b!929296))

(assert (= (and b!929301 (not c!150981)) b!929308))

(assert (= (and b!929308 c!150982) b!929298))

(assert (= (and b!929308 (not c!150982)) b!929310))

(assert (= (and b!929298 (not res!422295)) b!929303))

(assert (= (and b!929310 c!150979) b!929309))

(assert (= (and b!929310 (not c!150979)) b!929299))

(assert (= (and b!929309 (not res!422293)) b!929306))

(assert (= (or b!929306 b!929299) bm!57120))

(assert (= (or b!929297 b!929309) bm!57119))

(declare-fun m!1152513 () Bool)

(assert (=> bm!57119 m!1152513))

(declare-fun m!1152515 () Bool)

(assert (=> b!929298 m!1152515))

(declare-fun m!1152517 () Bool)

(assert (=> b!929303 m!1152517))

(declare-fun m!1152519 () Bool)

(assert (=> bm!57120 m!1152519))

(assert (=> b!929055 d!281280))

(declare-fun b!929364 () Bool)

(declare-fun res!422315 () Bool)

(declare-fun e!604183 () Bool)

(assert (=> b!929364 (=> res!422315 e!604183)))

(assert (=> b!929364 (= res!422315 (not ((_ is ElementMatch!2517) r!15766)))))

(declare-fun e!604186 () Bool)

(assert (=> b!929364 (= e!604186 e!604183)))

(declare-fun b!929365 () Bool)

(declare-fun res!422316 () Bool)

(declare-fun e!604182 () Bool)

(assert (=> b!929365 (=> res!422316 e!604182)))

(declare-fun tail!1240 (List!9747) List!9747)

(assert (=> b!929365 (= res!422316 (not (isEmpty!5988 (tail!1240 s!10566))))))

(declare-fun b!929366 () Bool)

(declare-fun lt!339990 () Bool)

(assert (=> b!929366 (= e!604186 (not lt!339990))))

(declare-fun d!281300 () Bool)

(declare-fun e!604184 () Bool)

(assert (=> d!281300 e!604184))

(declare-fun c!150989 () Bool)

(assert (=> d!281300 (= c!150989 ((_ is EmptyExpr!2517) r!15766))))

(declare-fun e!604181 () Bool)

(assert (=> d!281300 (= lt!339990 e!604181)))

(declare-fun c!150990 () Bool)

(assert (=> d!281300 (= c!150990 (isEmpty!5988 s!10566))))

(assert (=> d!281300 (validRegex!986 r!15766)))

(assert (=> d!281300 (= (matchR!1055 r!15766 s!10566) lt!339990)))

(declare-fun b!929367 () Bool)

(declare-fun derivativeStep!525 (Regex!2517 C!5604) Regex!2517)

(declare-fun head!1678 (List!9747) C!5604)

(assert (=> b!929367 (= e!604181 (matchR!1055 (derivativeStep!525 r!15766 (head!1678 s!10566)) (tail!1240 s!10566)))))

(declare-fun b!929368 () Bool)

(declare-fun res!422312 () Bool)

(declare-fun e!604185 () Bool)

(assert (=> b!929368 (=> (not res!422312) (not e!604185))))

(assert (=> b!929368 (= res!422312 (isEmpty!5988 (tail!1240 s!10566)))))

(declare-fun b!929369 () Bool)

(declare-fun nullable!715 (Regex!2517) Bool)

(assert (=> b!929369 (= e!604181 (nullable!715 r!15766))))

(declare-fun b!929370 () Bool)

(declare-fun e!604187 () Bool)

(assert (=> b!929370 (= e!604187 e!604182)))

(declare-fun res!422318 () Bool)

(assert (=> b!929370 (=> res!422318 e!604182)))

(declare-fun call!57128 () Bool)

(assert (=> b!929370 (= res!422318 call!57128)))

(declare-fun bm!57123 () Bool)

(assert (=> bm!57123 (= call!57128 (isEmpty!5988 s!10566))))

(declare-fun b!929371 () Bool)

(declare-fun res!422314 () Bool)

(assert (=> b!929371 (=> res!422314 e!604183)))

(assert (=> b!929371 (= res!422314 e!604185)))

(declare-fun res!422313 () Bool)

(assert (=> b!929371 (=> (not res!422313) (not e!604185))))

(assert (=> b!929371 (= res!422313 lt!339990)))

(declare-fun b!929372 () Bool)

(assert (=> b!929372 (= e!604183 e!604187)))

(declare-fun res!422317 () Bool)

(assert (=> b!929372 (=> (not res!422317) (not e!604187))))

(assert (=> b!929372 (= res!422317 (not lt!339990))))

(declare-fun b!929373 () Bool)

(assert (=> b!929373 (= e!604184 e!604186)))

(declare-fun c!150991 () Bool)

(assert (=> b!929373 (= c!150991 ((_ is EmptyLang!2517) r!15766))))

(declare-fun b!929374 () Bool)

(assert (=> b!929374 (= e!604184 (= lt!339990 call!57128))))

(declare-fun b!929375 () Bool)

(declare-fun res!422319 () Bool)

(assert (=> b!929375 (=> (not res!422319) (not e!604185))))

(assert (=> b!929375 (= res!422319 (not call!57128))))

(declare-fun b!929376 () Bool)

(assert (=> b!929376 (= e!604185 (= (head!1678 s!10566) (c!150914 r!15766)))))

(declare-fun b!929377 () Bool)

(assert (=> b!929377 (= e!604182 (not (= (head!1678 s!10566) (c!150914 r!15766))))))

(assert (= (and d!281300 c!150990) b!929369))

(assert (= (and d!281300 (not c!150990)) b!929367))

(assert (= (and d!281300 c!150989) b!929374))

(assert (= (and d!281300 (not c!150989)) b!929373))

(assert (= (and b!929373 c!150991) b!929366))

(assert (= (and b!929373 (not c!150991)) b!929364))

(assert (= (and b!929364 (not res!422315)) b!929371))

(assert (= (and b!929371 res!422313) b!929375))

(assert (= (and b!929375 res!422319) b!929368))

(assert (= (and b!929368 res!422312) b!929376))

(assert (= (and b!929371 (not res!422314)) b!929372))

(assert (= (and b!929372 res!422317) b!929370))

(assert (= (and b!929370 (not res!422318)) b!929365))

(assert (= (and b!929365 (not res!422316)) b!929377))

(assert (= (or b!929374 b!929370 b!929375) bm!57123))

(declare-fun m!1152521 () Bool)

(assert (=> b!929368 m!1152521))

(assert (=> b!929368 m!1152521))

(declare-fun m!1152523 () Bool)

(assert (=> b!929368 m!1152523))

(assert (=> bm!57123 m!1152513))

(assert (=> d!281300 m!1152513))

(assert (=> d!281300 m!1152433))

(declare-fun m!1152525 () Bool)

(assert (=> b!929377 m!1152525))

(assert (=> b!929367 m!1152525))

(assert (=> b!929367 m!1152525))

(declare-fun m!1152527 () Bool)

(assert (=> b!929367 m!1152527))

(assert (=> b!929367 m!1152521))

(assert (=> b!929367 m!1152527))

(assert (=> b!929367 m!1152521))

(declare-fun m!1152529 () Bool)

(assert (=> b!929367 m!1152529))

(declare-fun m!1152531 () Bool)

(assert (=> b!929369 m!1152531))

(assert (=> b!929376 m!1152525))

(assert (=> b!929365 m!1152521))

(assert (=> b!929365 m!1152521))

(assert (=> b!929365 m!1152523))

(assert (=> b!929055 d!281300))

(declare-fun d!281302 () Bool)

(assert (=> d!281302 (= (matchR!1055 r!15766 s!10566) (matchRSpec!318 r!15766 s!10566))))

(declare-fun lt!339993 () Unit!14653)

(declare-fun choose!5715 (Regex!2517 List!9747) Unit!14653)

(assert (=> d!281302 (= lt!339993 (choose!5715 r!15766 s!10566))))

(assert (=> d!281302 (validRegex!986 r!15766)))

(assert (=> d!281302 (= (mainMatchTheorem!318 r!15766 s!10566) lt!339993)))

(declare-fun bs!237629 () Bool)

(assert (= bs!237629 d!281302))

(assert (=> bs!237629 m!1152429))

(assert (=> bs!237629 m!1152427))

(declare-fun m!1152533 () Bool)

(assert (=> bs!237629 m!1152533))

(assert (=> bs!237629 m!1152433))

(assert (=> b!929055 d!281302))

(declare-fun b!929396 () Bool)

(declare-fun e!604204 () Bool)

(declare-fun e!604208 () Bool)

(assert (=> b!929396 (= e!604204 e!604208)))

(declare-fun res!422330 () Bool)

(assert (=> b!929396 (=> (not res!422330) (not e!604208))))

(declare-fun call!57136 () Bool)

(assert (=> b!929396 (= res!422330 call!57136)))

(declare-fun b!929397 () Bool)

(declare-fun e!604207 () Bool)

(declare-fun call!57137 () Bool)

(assert (=> b!929397 (= e!604207 call!57137)))

(declare-fun b!929398 () Bool)

(declare-fun e!604205 () Bool)

(declare-fun e!604203 () Bool)

(assert (=> b!929398 (= e!604205 e!604203)))

(declare-fun c!150997 () Bool)

(assert (=> b!929398 (= c!150997 ((_ is Union!2517) (regOne!5547 r!15766)))))

(declare-fun bm!57130 () Bool)

(declare-fun c!150996 () Bool)

(assert (=> bm!57130 (= call!57137 (validRegex!986 (ite c!150996 (reg!2846 (regOne!5547 r!15766)) (ite c!150997 (regTwo!5547 (regOne!5547 r!15766)) (regTwo!5546 (regOne!5547 r!15766))))))))

(declare-fun b!929399 () Bool)

(declare-fun e!604202 () Bool)

(declare-fun call!57135 () Bool)

(assert (=> b!929399 (= e!604202 call!57135)))

(declare-fun b!929400 () Bool)

(declare-fun res!422331 () Bool)

(assert (=> b!929400 (=> (not res!422331) (not e!604202))))

(assert (=> b!929400 (= res!422331 call!57136)))

(assert (=> b!929400 (= e!604203 e!604202)))

(declare-fun d!281304 () Bool)

(declare-fun res!422333 () Bool)

(declare-fun e!604206 () Bool)

(assert (=> d!281304 (=> res!422333 e!604206)))

(assert (=> d!281304 (= res!422333 ((_ is ElementMatch!2517) (regOne!5547 r!15766)))))

(assert (=> d!281304 (= (validRegex!986 (regOne!5547 r!15766)) e!604206)))

(declare-fun b!929401 () Bool)

(assert (=> b!929401 (= e!604205 e!604207)))

(declare-fun res!422334 () Bool)

(assert (=> b!929401 (= res!422334 (not (nullable!715 (reg!2846 (regOne!5547 r!15766)))))))

(assert (=> b!929401 (=> (not res!422334) (not e!604207))))

(declare-fun b!929402 () Bool)

(assert (=> b!929402 (= e!604208 call!57135)))

(declare-fun bm!57131 () Bool)

(assert (=> bm!57131 (= call!57136 (validRegex!986 (ite c!150997 (regOne!5547 (regOne!5547 r!15766)) (regOne!5546 (regOne!5547 r!15766)))))))

(declare-fun b!929403 () Bool)

(declare-fun res!422332 () Bool)

(assert (=> b!929403 (=> res!422332 e!604204)))

(assert (=> b!929403 (= res!422332 (not ((_ is Concat!4350) (regOne!5547 r!15766))))))

(assert (=> b!929403 (= e!604203 e!604204)))

(declare-fun bm!57132 () Bool)

(assert (=> bm!57132 (= call!57135 call!57137)))

(declare-fun b!929404 () Bool)

(assert (=> b!929404 (= e!604206 e!604205)))

(assert (=> b!929404 (= c!150996 ((_ is Star!2517) (regOne!5547 r!15766)))))

(assert (= (and d!281304 (not res!422333)) b!929404))

(assert (= (and b!929404 c!150996) b!929401))

(assert (= (and b!929404 (not c!150996)) b!929398))

(assert (= (and b!929401 res!422334) b!929397))

(assert (= (and b!929398 c!150997) b!929400))

(assert (= (and b!929398 (not c!150997)) b!929403))

(assert (= (and b!929400 res!422331) b!929399))

(assert (= (and b!929403 (not res!422332)) b!929396))

(assert (= (and b!929396 res!422330) b!929402))

(assert (= (or b!929399 b!929402) bm!57132))

(assert (= (or b!929400 b!929396) bm!57131))

(assert (= (or b!929397 bm!57132) bm!57130))

(declare-fun m!1152535 () Bool)

(assert (=> bm!57130 m!1152535))

(declare-fun m!1152537 () Bool)

(assert (=> b!929401 m!1152537))

(declare-fun m!1152539 () Bool)

(assert (=> bm!57131 m!1152539))

(assert (=> b!929056 d!281304))

(declare-fun bs!237630 () Bool)

(declare-fun b!929412 () Bool)

(assert (= bs!237630 (and b!929412 b!929306)))

(declare-fun lambda!30755 () Int)

(assert (=> bs!237630 (= (and (= (reg!2846 lt!339974) (reg!2846 r!15766)) (= lt!339974 r!15766)) (= lambda!30755 lambda!30753))))

(declare-fun bs!237631 () Bool)

(assert (= bs!237631 (and b!929412 b!929299)))

(assert (=> bs!237631 (not (= lambda!30755 lambda!30754))))

(assert (=> b!929412 true))

(assert (=> b!929412 true))

(declare-fun bs!237632 () Bool)

(declare-fun b!929408 () Bool)

(assert (= bs!237632 (and b!929408 b!929306)))

(declare-fun lambda!30756 () Int)

(assert (=> bs!237632 (not (= lambda!30756 lambda!30753))))

(declare-fun bs!237633 () Bool)

(assert (= bs!237633 (and b!929408 b!929299)))

(assert (=> bs!237633 (= (and (= (regOne!5546 lt!339974) (regOne!5546 r!15766)) (= (regTwo!5546 lt!339974) (regTwo!5546 r!15766))) (= lambda!30756 lambda!30754))))

(declare-fun bs!237634 () Bool)

(assert (= bs!237634 (and b!929408 b!929412)))

(assert (=> bs!237634 (not (= lambda!30756 lambda!30755))))

(assert (=> b!929408 true))

(assert (=> b!929408 true))

(declare-fun bm!57133 () Bool)

(declare-fun call!57139 () Bool)

(assert (=> bm!57133 (= call!57139 (isEmpty!5988 s!10566))))

(declare-fun b!929405 () Bool)

(declare-fun e!604209 () Bool)

(assert (=> b!929405 (= e!604209 (= s!10566 (Cons!9731 (c!150914 lt!339974) Nil!9731)))))

(declare-fun b!929406 () Bool)

(declare-fun e!604213 () Bool)

(assert (=> b!929406 (= e!604213 call!57139)))

(declare-fun b!929407 () Bool)

(declare-fun e!604212 () Bool)

(declare-fun e!604210 () Bool)

(assert (=> b!929407 (= e!604212 e!604210)))

(declare-fun res!422337 () Bool)

(assert (=> b!929407 (= res!422337 (matchRSpec!318 (regOne!5547 lt!339974) s!10566))))

(assert (=> b!929407 (=> res!422337 e!604210)))

(declare-fun e!604215 () Bool)

(declare-fun call!57138 () Bool)

(assert (=> b!929408 (= e!604215 call!57138)))

(declare-fun b!929409 () Bool)

(declare-fun e!604211 () Bool)

(assert (=> b!929409 (= e!604213 e!604211)))

(declare-fun res!422336 () Bool)

(assert (=> b!929409 (= res!422336 (not ((_ is EmptyLang!2517) lt!339974)))))

(assert (=> b!929409 (=> (not res!422336) (not e!604211))))

(declare-fun b!929410 () Bool)

(declare-fun c!151000 () Bool)

(assert (=> b!929410 (= c!151000 ((_ is ElementMatch!2517) lt!339974))))

(assert (=> b!929410 (= e!604211 e!604209)))

(declare-fun b!929411 () Bool)

(assert (=> b!929411 (= e!604210 (matchRSpec!318 (regTwo!5547 lt!339974) s!10566))))

(declare-fun c!150998 () Bool)

(declare-fun bm!57134 () Bool)

(assert (=> bm!57134 (= call!57138 (Exists!286 (ite c!150998 lambda!30755 lambda!30756)))))

(declare-fun d!281306 () Bool)

(declare-fun c!150999 () Bool)

(assert (=> d!281306 (= c!150999 ((_ is EmptyExpr!2517) lt!339974))))

(assert (=> d!281306 (= (matchRSpec!318 lt!339974 s!10566) e!604213)))

(declare-fun e!604214 () Bool)

(assert (=> b!929412 (= e!604214 call!57138)))

(declare-fun b!929413 () Bool)

(declare-fun c!151001 () Bool)

(assert (=> b!929413 (= c!151001 ((_ is Union!2517) lt!339974))))

(assert (=> b!929413 (= e!604209 e!604212)))

(declare-fun b!929414 () Bool)

(declare-fun res!422335 () Bool)

(assert (=> b!929414 (=> res!422335 e!604214)))

(assert (=> b!929414 (= res!422335 call!57139)))

(assert (=> b!929414 (= e!604215 e!604214)))

(declare-fun b!929415 () Bool)

(assert (=> b!929415 (= e!604212 e!604215)))

(assert (=> b!929415 (= c!150998 ((_ is Star!2517) lt!339974))))

(assert (= (and d!281306 c!150999) b!929406))

(assert (= (and d!281306 (not c!150999)) b!929409))

(assert (= (and b!929409 res!422336) b!929410))

(assert (= (and b!929410 c!151000) b!929405))

(assert (= (and b!929410 (not c!151000)) b!929413))

(assert (= (and b!929413 c!151001) b!929407))

(assert (= (and b!929413 (not c!151001)) b!929415))

(assert (= (and b!929407 (not res!422337)) b!929411))

(assert (= (and b!929415 c!150998) b!929414))

(assert (= (and b!929415 (not c!150998)) b!929408))

(assert (= (and b!929414 (not res!422335)) b!929412))

(assert (= (or b!929412 b!929408) bm!57134))

(assert (= (or b!929406 b!929414) bm!57133))

(assert (=> bm!57133 m!1152513))

(declare-fun m!1152541 () Bool)

(assert (=> b!929407 m!1152541))

(declare-fun m!1152543 () Bool)

(assert (=> b!929411 m!1152543))

(declare-fun m!1152545 () Bool)

(assert (=> bm!57134 m!1152545))

(assert (=> b!929056 d!281306))

(declare-fun d!281308 () Bool)

(assert (=> d!281308 (= (matchR!1055 lt!339974 s!10566) (matchRSpec!318 lt!339974 s!10566))))

(declare-fun lt!339994 () Unit!14653)

(assert (=> d!281308 (= lt!339994 (choose!5715 lt!339974 s!10566))))

(assert (=> d!281308 (validRegex!986 lt!339974)))

(assert (=> d!281308 (= (mainMatchTheorem!318 lt!339974 s!10566) lt!339994)))

(declare-fun bs!237635 () Bool)

(assert (= bs!237635 d!281308))

(assert (=> bs!237635 m!1152421))

(assert (=> bs!237635 m!1152437))

(declare-fun m!1152547 () Bool)

(assert (=> bs!237635 m!1152547))

(declare-fun m!1152549 () Bool)

(assert (=> bs!237635 m!1152549))

(assert (=> b!929056 d!281308))

(declare-fun b!929416 () Bool)

(declare-fun res!422341 () Bool)

(declare-fun e!604218 () Bool)

(assert (=> b!929416 (=> res!422341 e!604218)))

(assert (=> b!929416 (= res!422341 (not ((_ is ElementMatch!2517) lt!339974)))))

(declare-fun e!604221 () Bool)

(assert (=> b!929416 (= e!604221 e!604218)))

(declare-fun b!929417 () Bool)

(declare-fun res!422342 () Bool)

(declare-fun e!604217 () Bool)

(assert (=> b!929417 (=> res!422342 e!604217)))

(assert (=> b!929417 (= res!422342 (not (isEmpty!5988 (tail!1240 s!10566))))))

(declare-fun b!929418 () Bool)

(declare-fun lt!339995 () Bool)

(assert (=> b!929418 (= e!604221 (not lt!339995))))

(declare-fun d!281310 () Bool)

(declare-fun e!604219 () Bool)

(assert (=> d!281310 e!604219))

(declare-fun c!151002 () Bool)

(assert (=> d!281310 (= c!151002 ((_ is EmptyExpr!2517) lt!339974))))

(declare-fun e!604216 () Bool)

(assert (=> d!281310 (= lt!339995 e!604216)))

(declare-fun c!151003 () Bool)

(assert (=> d!281310 (= c!151003 (isEmpty!5988 s!10566))))

(assert (=> d!281310 (validRegex!986 lt!339974)))

(assert (=> d!281310 (= (matchR!1055 lt!339974 s!10566) lt!339995)))

(declare-fun b!929419 () Bool)

(assert (=> b!929419 (= e!604216 (matchR!1055 (derivativeStep!525 lt!339974 (head!1678 s!10566)) (tail!1240 s!10566)))))

(declare-fun b!929420 () Bool)

(declare-fun res!422338 () Bool)

(declare-fun e!604220 () Bool)

(assert (=> b!929420 (=> (not res!422338) (not e!604220))))

(assert (=> b!929420 (= res!422338 (isEmpty!5988 (tail!1240 s!10566)))))

(declare-fun b!929421 () Bool)

(assert (=> b!929421 (= e!604216 (nullable!715 lt!339974))))

(declare-fun b!929422 () Bool)

(declare-fun e!604222 () Bool)

(assert (=> b!929422 (= e!604222 e!604217)))

(declare-fun res!422344 () Bool)

(assert (=> b!929422 (=> res!422344 e!604217)))

(declare-fun call!57140 () Bool)

(assert (=> b!929422 (= res!422344 call!57140)))

(declare-fun bm!57135 () Bool)

(assert (=> bm!57135 (= call!57140 (isEmpty!5988 s!10566))))

(declare-fun b!929423 () Bool)

(declare-fun res!422340 () Bool)

(assert (=> b!929423 (=> res!422340 e!604218)))

(assert (=> b!929423 (= res!422340 e!604220)))

(declare-fun res!422339 () Bool)

(assert (=> b!929423 (=> (not res!422339) (not e!604220))))

(assert (=> b!929423 (= res!422339 lt!339995)))

(declare-fun b!929424 () Bool)

(assert (=> b!929424 (= e!604218 e!604222)))

(declare-fun res!422343 () Bool)

(assert (=> b!929424 (=> (not res!422343) (not e!604222))))

(assert (=> b!929424 (= res!422343 (not lt!339995))))

(declare-fun b!929425 () Bool)

(assert (=> b!929425 (= e!604219 e!604221)))

(declare-fun c!151004 () Bool)

(assert (=> b!929425 (= c!151004 ((_ is EmptyLang!2517) lt!339974))))

(declare-fun b!929426 () Bool)

(assert (=> b!929426 (= e!604219 (= lt!339995 call!57140))))

(declare-fun b!929427 () Bool)

(declare-fun res!422345 () Bool)

(assert (=> b!929427 (=> (not res!422345) (not e!604220))))

(assert (=> b!929427 (= res!422345 (not call!57140))))

(declare-fun b!929428 () Bool)

(assert (=> b!929428 (= e!604220 (= (head!1678 s!10566) (c!150914 lt!339974)))))

(declare-fun b!929429 () Bool)

(assert (=> b!929429 (= e!604217 (not (= (head!1678 s!10566) (c!150914 lt!339974))))))

(assert (= (and d!281310 c!151003) b!929421))

(assert (= (and d!281310 (not c!151003)) b!929419))

(assert (= (and d!281310 c!151002) b!929426))

(assert (= (and d!281310 (not c!151002)) b!929425))

(assert (= (and b!929425 c!151004) b!929418))

(assert (= (and b!929425 (not c!151004)) b!929416))

(assert (= (and b!929416 (not res!422341)) b!929423))

(assert (= (and b!929423 res!422339) b!929427))

(assert (= (and b!929427 res!422345) b!929420))

(assert (= (and b!929420 res!422338) b!929428))

(assert (= (and b!929423 (not res!422340)) b!929424))

(assert (= (and b!929424 res!422343) b!929422))

(assert (= (and b!929422 (not res!422344)) b!929417))

(assert (= (and b!929417 (not res!422342)) b!929429))

(assert (= (or b!929426 b!929422 b!929427) bm!57135))

(assert (=> b!929420 m!1152521))

(assert (=> b!929420 m!1152521))

(assert (=> b!929420 m!1152523))

(assert (=> bm!57135 m!1152513))

(assert (=> d!281310 m!1152513))

(assert (=> d!281310 m!1152549))

(assert (=> b!929429 m!1152525))

(assert (=> b!929419 m!1152525))

(assert (=> b!929419 m!1152525))

(declare-fun m!1152551 () Bool)

(assert (=> b!929419 m!1152551))

(assert (=> b!929419 m!1152521))

(assert (=> b!929419 m!1152551))

(assert (=> b!929419 m!1152521))

(declare-fun m!1152553 () Bool)

(assert (=> b!929419 m!1152553))

(declare-fun m!1152555 () Bool)

(assert (=> b!929421 m!1152555))

(assert (=> b!929428 m!1152525))

(assert (=> b!929417 m!1152521))

(assert (=> b!929417 m!1152521))

(assert (=> b!929417 m!1152523))

(assert (=> b!929054 d!281310))

(declare-fun b!929452 () Bool)

(declare-fun e!604235 () Regex!2517)

(declare-fun call!57153 () Regex!2517)

(declare-fun call!57151 () Regex!2517)

(assert (=> b!929452 (= e!604235 (Concat!4350 call!57153 call!57151))))

(declare-fun b!929453 () Bool)

(declare-fun c!151019 () Bool)

(assert (=> b!929453 (= c!151019 ((_ is Star!2517) (regOne!5547 r!15766)))))

(declare-fun e!604240 () Regex!2517)

(declare-fun e!604236 () Regex!2517)

(assert (=> b!929453 (= e!604240 e!604236)))

(declare-fun b!929454 () Bool)

(assert (=> b!929454 (= e!604236 (regOne!5547 r!15766))))

(declare-fun b!929455 () Bool)

(declare-fun e!604237 () Bool)

(declare-fun lt!339998 () Regex!2517)

(assert (=> b!929455 (= e!604237 (= (nullable!715 lt!339998) (nullable!715 (regOne!5547 r!15766))))))

(declare-fun b!929456 () Bool)

(assert (=> b!929456 (= e!604235 e!604240)))

(declare-fun c!151018 () Bool)

(assert (=> b!929456 (= c!151018 ((_ is Union!2517) (regOne!5547 r!15766)))))

(declare-fun bm!57146 () Bool)

(declare-fun call!57155 () Regex!2517)

(assert (=> bm!57146 (= call!57155 call!57151)))

(declare-fun b!929457 () Bool)

(declare-fun c!151017 () Bool)

(assert (=> b!929457 (= c!151017 ((_ is Concat!4350) (regOne!5547 r!15766)))))

(declare-fun e!604238 () Regex!2517)

(assert (=> b!929457 (= e!604238 e!604235)))

(declare-fun bm!57147 () Bool)

(assert (=> bm!57147 (= call!57153 (removeUselessConcat!192 (ite c!151017 (regOne!5546 (regOne!5547 r!15766)) (regOne!5547 (regOne!5547 r!15766)))))))

(declare-fun b!929459 () Bool)

(assert (=> b!929459 (= e!604240 (Union!2517 call!57153 call!57155))))

(declare-fun bm!57148 () Bool)

(declare-fun call!57152 () Regex!2517)

(assert (=> bm!57148 (= call!57151 call!57152)))

(declare-fun bm!57149 () Bool)

(declare-fun c!151015 () Bool)

(declare-fun call!57154 () Regex!2517)

(declare-fun c!151016 () Bool)

(assert (=> bm!57149 (= call!57154 (removeUselessConcat!192 (ite c!151016 (regTwo!5546 (regOne!5547 r!15766)) (ite c!151015 (regOne!5546 (regOne!5547 r!15766)) (ite c!151017 (regTwo!5546 (regOne!5547 r!15766)) (ite c!151018 (regTwo!5547 (regOne!5547 r!15766)) (reg!2846 (regOne!5547 r!15766))))))))))

(declare-fun b!929460 () Bool)

(declare-fun e!604239 () Regex!2517)

(assert (=> b!929460 (= e!604239 call!57154)))

(declare-fun b!929461 () Bool)

(assert (=> b!929461 (= e!604239 e!604238)))

(assert (=> b!929461 (= c!151015 (and ((_ is Concat!4350) (regOne!5547 r!15766)) ((_ is EmptyExpr!2517) (regTwo!5546 (regOne!5547 r!15766)))))))

(declare-fun d!281312 () Bool)

(assert (=> d!281312 e!604237))

(declare-fun res!422348 () Bool)

(assert (=> d!281312 (=> (not res!422348) (not e!604237))))

(assert (=> d!281312 (= res!422348 (validRegex!986 lt!339998))))

(assert (=> d!281312 (= lt!339998 e!604239)))

(assert (=> d!281312 (= c!151016 (and ((_ is Concat!4350) (regOne!5547 r!15766)) ((_ is EmptyExpr!2517) (regOne!5546 (regOne!5547 r!15766)))))))

(assert (=> d!281312 (validRegex!986 (regOne!5547 r!15766))))

(assert (=> d!281312 (= (removeUselessConcat!192 (regOne!5547 r!15766)) lt!339998)))

(declare-fun b!929458 () Bool)

(assert (=> b!929458 (= e!604236 (Star!2517 call!57155))))

(declare-fun b!929462 () Bool)

(assert (=> b!929462 (= e!604238 call!57152)))

(declare-fun bm!57150 () Bool)

(assert (=> bm!57150 (= call!57152 call!57154)))

(assert (= (and d!281312 c!151016) b!929460))

(assert (= (and d!281312 (not c!151016)) b!929461))

(assert (= (and b!929461 c!151015) b!929462))

(assert (= (and b!929461 (not c!151015)) b!929457))

(assert (= (and b!929457 c!151017) b!929452))

(assert (= (and b!929457 (not c!151017)) b!929456))

(assert (= (and b!929456 c!151018) b!929459))

(assert (= (and b!929456 (not c!151018)) b!929453))

(assert (= (and b!929453 c!151019) b!929458))

(assert (= (and b!929453 (not c!151019)) b!929454))

(assert (= (or b!929459 b!929458) bm!57146))

(assert (= (or b!929452 bm!57146) bm!57148))

(assert (= (or b!929452 b!929459) bm!57147))

(assert (= (or b!929462 bm!57148) bm!57150))

(assert (= (or b!929460 bm!57150) bm!57149))

(assert (= (and d!281312 res!422348) b!929455))

(declare-fun m!1152557 () Bool)

(assert (=> b!929455 m!1152557))

(declare-fun m!1152559 () Bool)

(assert (=> b!929455 m!1152559))

(declare-fun m!1152561 () Bool)

(assert (=> bm!57147 m!1152561))

(declare-fun m!1152563 () Bool)

(assert (=> bm!57149 m!1152563))

(declare-fun m!1152565 () Bool)

(assert (=> d!281312 m!1152565))

(assert (=> d!281312 m!1152435))

(assert (=> b!929054 d!281312))

(declare-fun b!929463 () Bool)

(declare-fun e!604241 () Regex!2517)

(declare-fun call!57158 () Regex!2517)

(declare-fun call!57156 () Regex!2517)

(assert (=> b!929463 (= e!604241 (Concat!4350 call!57158 call!57156))))

(declare-fun b!929464 () Bool)

(declare-fun c!151024 () Bool)

(assert (=> b!929464 (= c!151024 ((_ is Star!2517) (regTwo!5547 r!15766)))))

(declare-fun e!604246 () Regex!2517)

(declare-fun e!604242 () Regex!2517)

(assert (=> b!929464 (= e!604246 e!604242)))

(declare-fun b!929465 () Bool)

(assert (=> b!929465 (= e!604242 (regTwo!5547 r!15766))))

(declare-fun b!929466 () Bool)

(declare-fun e!604243 () Bool)

(declare-fun lt!339999 () Regex!2517)

(assert (=> b!929466 (= e!604243 (= (nullable!715 lt!339999) (nullable!715 (regTwo!5547 r!15766))))))

(declare-fun b!929467 () Bool)

(assert (=> b!929467 (= e!604241 e!604246)))

(declare-fun c!151023 () Bool)

(assert (=> b!929467 (= c!151023 ((_ is Union!2517) (regTwo!5547 r!15766)))))

(declare-fun bm!57151 () Bool)

(declare-fun call!57160 () Regex!2517)

(assert (=> bm!57151 (= call!57160 call!57156)))

(declare-fun b!929468 () Bool)

(declare-fun c!151022 () Bool)

(assert (=> b!929468 (= c!151022 ((_ is Concat!4350) (regTwo!5547 r!15766)))))

(declare-fun e!604244 () Regex!2517)

(assert (=> b!929468 (= e!604244 e!604241)))

(declare-fun bm!57152 () Bool)

(assert (=> bm!57152 (= call!57158 (removeUselessConcat!192 (ite c!151022 (regOne!5546 (regTwo!5547 r!15766)) (regOne!5547 (regTwo!5547 r!15766)))))))

(declare-fun b!929470 () Bool)

(assert (=> b!929470 (= e!604246 (Union!2517 call!57158 call!57160))))

(declare-fun bm!57153 () Bool)

(declare-fun call!57157 () Regex!2517)

(assert (=> bm!57153 (= call!57156 call!57157)))

(declare-fun bm!57154 () Bool)

(declare-fun call!57159 () Regex!2517)

(declare-fun c!151020 () Bool)

(declare-fun c!151021 () Bool)

(assert (=> bm!57154 (= call!57159 (removeUselessConcat!192 (ite c!151021 (regTwo!5546 (regTwo!5547 r!15766)) (ite c!151020 (regOne!5546 (regTwo!5547 r!15766)) (ite c!151022 (regTwo!5546 (regTwo!5547 r!15766)) (ite c!151023 (regTwo!5547 (regTwo!5547 r!15766)) (reg!2846 (regTwo!5547 r!15766))))))))))

(declare-fun b!929471 () Bool)

(declare-fun e!604245 () Regex!2517)

(assert (=> b!929471 (= e!604245 call!57159)))

(declare-fun b!929472 () Bool)

(assert (=> b!929472 (= e!604245 e!604244)))

(assert (=> b!929472 (= c!151020 (and ((_ is Concat!4350) (regTwo!5547 r!15766)) ((_ is EmptyExpr!2517) (regTwo!5546 (regTwo!5547 r!15766)))))))

(declare-fun d!281314 () Bool)

(assert (=> d!281314 e!604243))

(declare-fun res!422349 () Bool)

(assert (=> d!281314 (=> (not res!422349) (not e!604243))))

(assert (=> d!281314 (= res!422349 (validRegex!986 lt!339999))))

(assert (=> d!281314 (= lt!339999 e!604245)))

(assert (=> d!281314 (= c!151021 (and ((_ is Concat!4350) (regTwo!5547 r!15766)) ((_ is EmptyExpr!2517) (regOne!5546 (regTwo!5547 r!15766)))))))

(assert (=> d!281314 (validRegex!986 (regTwo!5547 r!15766))))

(assert (=> d!281314 (= (removeUselessConcat!192 (regTwo!5547 r!15766)) lt!339999)))

(declare-fun b!929469 () Bool)

(assert (=> b!929469 (= e!604242 (Star!2517 call!57160))))

(declare-fun b!929473 () Bool)

(assert (=> b!929473 (= e!604244 call!57157)))

(declare-fun bm!57155 () Bool)

(assert (=> bm!57155 (= call!57157 call!57159)))

(assert (= (and d!281314 c!151021) b!929471))

(assert (= (and d!281314 (not c!151021)) b!929472))

(assert (= (and b!929472 c!151020) b!929473))

(assert (= (and b!929472 (not c!151020)) b!929468))

(assert (= (and b!929468 c!151022) b!929463))

(assert (= (and b!929468 (not c!151022)) b!929467))

(assert (= (and b!929467 c!151023) b!929470))

(assert (= (and b!929467 (not c!151023)) b!929464))

(assert (= (and b!929464 c!151024) b!929469))

(assert (= (and b!929464 (not c!151024)) b!929465))

(assert (= (or b!929470 b!929469) bm!57151))

(assert (= (or b!929463 bm!57151) bm!57153))

(assert (= (or b!929463 b!929470) bm!57152))

(assert (= (or b!929473 bm!57153) bm!57155))

(assert (= (or b!929471 bm!57155) bm!57154))

(assert (= (and d!281314 res!422349) b!929466))

(declare-fun m!1152567 () Bool)

(assert (=> b!929466 m!1152567))

(declare-fun m!1152569 () Bool)

(assert (=> b!929466 m!1152569))

(declare-fun m!1152571 () Bool)

(assert (=> bm!57152 m!1152571))

(declare-fun m!1152573 () Bool)

(assert (=> bm!57154 m!1152573))

(declare-fun m!1152575 () Bool)

(assert (=> d!281314 m!1152575))

(declare-fun m!1152577 () Bool)

(assert (=> d!281314 m!1152577))

(assert (=> b!929054 d!281314))

(declare-fun b!929474 () Bool)

(declare-fun e!604249 () Bool)

(declare-fun e!604253 () Bool)

(assert (=> b!929474 (= e!604249 e!604253)))

(declare-fun res!422350 () Bool)

(assert (=> b!929474 (=> (not res!422350) (not e!604253))))

(declare-fun call!57162 () Bool)

(assert (=> b!929474 (= res!422350 call!57162)))

(declare-fun b!929475 () Bool)

(declare-fun e!604252 () Bool)

(declare-fun call!57163 () Bool)

(assert (=> b!929475 (= e!604252 call!57163)))

(declare-fun b!929476 () Bool)

(declare-fun e!604250 () Bool)

(declare-fun e!604248 () Bool)

(assert (=> b!929476 (= e!604250 e!604248)))

(declare-fun c!151026 () Bool)

(assert (=> b!929476 (= c!151026 ((_ is Union!2517) r!15766))))

(declare-fun bm!57156 () Bool)

(declare-fun c!151025 () Bool)

(assert (=> bm!57156 (= call!57163 (validRegex!986 (ite c!151025 (reg!2846 r!15766) (ite c!151026 (regTwo!5547 r!15766) (regTwo!5546 r!15766)))))))

(declare-fun b!929477 () Bool)

(declare-fun e!604247 () Bool)

(declare-fun call!57161 () Bool)

(assert (=> b!929477 (= e!604247 call!57161)))

(declare-fun b!929478 () Bool)

(declare-fun res!422351 () Bool)

(assert (=> b!929478 (=> (not res!422351) (not e!604247))))

(assert (=> b!929478 (= res!422351 call!57162)))

(assert (=> b!929478 (= e!604248 e!604247)))

(declare-fun d!281316 () Bool)

(declare-fun res!422353 () Bool)

(declare-fun e!604251 () Bool)

(assert (=> d!281316 (=> res!422353 e!604251)))

(assert (=> d!281316 (= res!422353 ((_ is ElementMatch!2517) r!15766))))

(assert (=> d!281316 (= (validRegex!986 r!15766) e!604251)))

(declare-fun b!929479 () Bool)

(assert (=> b!929479 (= e!604250 e!604252)))

(declare-fun res!422354 () Bool)

(assert (=> b!929479 (= res!422354 (not (nullable!715 (reg!2846 r!15766))))))

(assert (=> b!929479 (=> (not res!422354) (not e!604252))))

(declare-fun b!929480 () Bool)

(assert (=> b!929480 (= e!604253 call!57161)))

(declare-fun bm!57157 () Bool)

(assert (=> bm!57157 (= call!57162 (validRegex!986 (ite c!151026 (regOne!5547 r!15766) (regOne!5546 r!15766))))))

(declare-fun b!929481 () Bool)

(declare-fun res!422352 () Bool)

(assert (=> b!929481 (=> res!422352 e!604249)))

(assert (=> b!929481 (= res!422352 (not ((_ is Concat!4350) r!15766)))))

(assert (=> b!929481 (= e!604248 e!604249)))

(declare-fun bm!57158 () Bool)

(assert (=> bm!57158 (= call!57161 call!57163)))

(declare-fun b!929482 () Bool)

(assert (=> b!929482 (= e!604251 e!604250)))

(assert (=> b!929482 (= c!151025 ((_ is Star!2517) r!15766))))

(assert (= (and d!281316 (not res!422353)) b!929482))

(assert (= (and b!929482 c!151025) b!929479))

(assert (= (and b!929482 (not c!151025)) b!929476))

(assert (= (and b!929479 res!422354) b!929475))

(assert (= (and b!929476 c!151026) b!929478))

(assert (= (and b!929476 (not c!151026)) b!929481))

(assert (= (and b!929478 res!422351) b!929477))

(assert (= (and b!929481 (not res!422352)) b!929474))

(assert (= (and b!929474 res!422350) b!929480))

(assert (= (or b!929477 b!929480) bm!57158))

(assert (= (or b!929478 b!929474) bm!57157))

(assert (= (or b!929475 bm!57158) bm!57156))

(declare-fun m!1152579 () Bool)

(assert (=> bm!57156 m!1152579))

(declare-fun m!1152581 () Bool)

(assert (=> b!929479 m!1152581))

(declare-fun m!1152583 () Bool)

(assert (=> bm!57157 m!1152583))

(assert (=> start!83230 d!281316))

(declare-fun b!929493 () Bool)

(declare-fun e!604256 () Bool)

(assert (=> b!929493 (= e!604256 tp_is_empty!4677)))

(declare-fun b!929494 () Bool)

(declare-fun tp!288660 () Bool)

(declare-fun tp!288658 () Bool)

(assert (=> b!929494 (= e!604256 (and tp!288660 tp!288658))))

(assert (=> b!929059 (= tp!288603 e!604256)))

(declare-fun b!929495 () Bool)

(declare-fun tp!288659 () Bool)

(assert (=> b!929495 (= e!604256 tp!288659)))

(declare-fun b!929496 () Bool)

(declare-fun tp!288661 () Bool)

(declare-fun tp!288657 () Bool)

(assert (=> b!929496 (= e!604256 (and tp!288661 tp!288657))))

(assert (= (and b!929059 ((_ is ElementMatch!2517) (regOne!5547 r!15766))) b!929493))

(assert (= (and b!929059 ((_ is Concat!4350) (regOne!5547 r!15766))) b!929494))

(assert (= (and b!929059 ((_ is Star!2517) (regOne!5547 r!15766))) b!929495))

(assert (= (and b!929059 ((_ is Union!2517) (regOne!5547 r!15766))) b!929496))

(declare-fun b!929497 () Bool)

(declare-fun e!604257 () Bool)

(assert (=> b!929497 (= e!604257 tp_is_empty!4677)))

(declare-fun b!929498 () Bool)

(declare-fun tp!288665 () Bool)

(declare-fun tp!288663 () Bool)

(assert (=> b!929498 (= e!604257 (and tp!288665 tp!288663))))

(assert (=> b!929059 (= tp!288604 e!604257)))

(declare-fun b!929499 () Bool)

(declare-fun tp!288664 () Bool)

(assert (=> b!929499 (= e!604257 tp!288664)))

(declare-fun b!929500 () Bool)

(declare-fun tp!288666 () Bool)

(declare-fun tp!288662 () Bool)

(assert (=> b!929500 (= e!604257 (and tp!288666 tp!288662))))

(assert (= (and b!929059 ((_ is ElementMatch!2517) (regTwo!5547 r!15766))) b!929497))

(assert (= (and b!929059 ((_ is Concat!4350) (regTwo!5547 r!15766))) b!929498))

(assert (= (and b!929059 ((_ is Star!2517) (regTwo!5547 r!15766))) b!929499))

(assert (= (and b!929059 ((_ is Union!2517) (regTwo!5547 r!15766))) b!929500))

(declare-fun b!929501 () Bool)

(declare-fun e!604258 () Bool)

(assert (=> b!929501 (= e!604258 tp_is_empty!4677)))

(declare-fun b!929502 () Bool)

(declare-fun tp!288670 () Bool)

(declare-fun tp!288668 () Bool)

(assert (=> b!929502 (= e!604258 (and tp!288670 tp!288668))))

(assert (=> b!929058 (= tp!288607 e!604258)))

(declare-fun b!929503 () Bool)

(declare-fun tp!288669 () Bool)

(assert (=> b!929503 (= e!604258 tp!288669)))

(declare-fun b!929504 () Bool)

(declare-fun tp!288671 () Bool)

(declare-fun tp!288667 () Bool)

(assert (=> b!929504 (= e!604258 (and tp!288671 tp!288667))))

(assert (= (and b!929058 ((_ is ElementMatch!2517) (regOne!5546 r!15766))) b!929501))

(assert (= (and b!929058 ((_ is Concat!4350) (regOne!5546 r!15766))) b!929502))

(assert (= (and b!929058 ((_ is Star!2517) (regOne!5546 r!15766))) b!929503))

(assert (= (and b!929058 ((_ is Union!2517) (regOne!5546 r!15766))) b!929504))

(declare-fun b!929505 () Bool)

(declare-fun e!604259 () Bool)

(assert (=> b!929505 (= e!604259 tp_is_empty!4677)))

(declare-fun b!929506 () Bool)

(declare-fun tp!288675 () Bool)

(declare-fun tp!288673 () Bool)

(assert (=> b!929506 (= e!604259 (and tp!288675 tp!288673))))

(assert (=> b!929058 (= tp!288605 e!604259)))

(declare-fun b!929507 () Bool)

(declare-fun tp!288674 () Bool)

(assert (=> b!929507 (= e!604259 tp!288674)))

(declare-fun b!929508 () Bool)

(declare-fun tp!288676 () Bool)

(declare-fun tp!288672 () Bool)

(assert (=> b!929508 (= e!604259 (and tp!288676 tp!288672))))

(assert (= (and b!929058 ((_ is ElementMatch!2517) (regTwo!5546 r!15766))) b!929505))

(assert (= (and b!929058 ((_ is Concat!4350) (regTwo!5546 r!15766))) b!929506))

(assert (= (and b!929058 ((_ is Star!2517) (regTwo!5546 r!15766))) b!929507))

(assert (= (and b!929058 ((_ is Union!2517) (regTwo!5546 r!15766))) b!929508))

(declare-fun b!929509 () Bool)

(declare-fun e!604260 () Bool)

(assert (=> b!929509 (= e!604260 tp_is_empty!4677)))

(declare-fun b!929510 () Bool)

(declare-fun tp!288680 () Bool)

(declare-fun tp!288678 () Bool)

(assert (=> b!929510 (= e!604260 (and tp!288680 tp!288678))))

(assert (=> b!929053 (= tp!288608 e!604260)))

(declare-fun b!929511 () Bool)

(declare-fun tp!288679 () Bool)

(assert (=> b!929511 (= e!604260 tp!288679)))

(declare-fun b!929512 () Bool)

(declare-fun tp!288681 () Bool)

(declare-fun tp!288677 () Bool)

(assert (=> b!929512 (= e!604260 (and tp!288681 tp!288677))))

(assert (= (and b!929053 ((_ is ElementMatch!2517) (reg!2846 r!15766))) b!929509))

(assert (= (and b!929053 ((_ is Concat!4350) (reg!2846 r!15766))) b!929510))

(assert (= (and b!929053 ((_ is Star!2517) (reg!2846 r!15766))) b!929511))

(assert (= (and b!929053 ((_ is Union!2517) (reg!2846 r!15766))) b!929512))

(declare-fun b!929517 () Bool)

(declare-fun e!604263 () Bool)

(declare-fun tp!288684 () Bool)

(assert (=> b!929517 (= e!604263 (and tp_is_empty!4677 tp!288684))))

(assert (=> b!929057 (= tp!288606 e!604263)))

(assert (= (and b!929057 ((_ is Cons!9731) (t!100793 s!10566))) b!929517))

(check-sat (not b!929507) (not bm!57123) (not b!929367) (not bm!57131) (not b!929368) (not b!929512) (not b!929494) (not b!929517) (not b!929376) (not b!929511) (not b!929421) (not b!929479) (not b!929508) (not b!929455) (not b!929411) (not b!929504) (not bm!57130) (not bm!57133) (not b!929420) (not b!929298) (not b!929506) (not b!929502) (not b!929365) (not b!929510) (not bm!57157) (not b!929499) (not b!929495) (not bm!57119) tp_is_empty!4677 (not b!929500) (not b!929369) (not bm!57152) (not b!929419) (not b!929429) (not bm!57156) (not d!281300) (not bm!57134) (not d!281302) (not bm!57120) (not b!929466) (not d!281308) (not b!929377) (not b!929503) (not b!929407) (not b!929303) (not b!929428) (not b!929417) (not b!929496) (not d!281314) (not bm!57149) (not b!929498) (not d!281312) (not bm!57135) (not bm!57147) (not b!929401) (not bm!57154) (not d!281310))
(check-sat)
