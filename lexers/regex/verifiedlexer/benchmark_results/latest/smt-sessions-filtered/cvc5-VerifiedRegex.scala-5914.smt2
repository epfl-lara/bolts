; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!289522 () Bool)

(assert start!289522)

(declare-fun b!3004206 () Bool)

(assert (=> b!3004206 true))

(assert (=> b!3004206 true))

(assert (=> b!3004206 true))

(declare-fun lambda!112294 () Int)

(declare-fun lambda!112293 () Int)

(assert (=> b!3004206 (not (= lambda!112294 lambda!112293))))

(assert (=> b!3004206 true))

(assert (=> b!3004206 true))

(assert (=> b!3004206 true))

(declare-fun b!3004194 () Bool)

(declare-fun res!1238070 () Bool)

(declare-fun e!1886925 () Bool)

(assert (=> b!3004194 (=> res!1238070 e!1886925)))

(declare-datatypes ((C!18942 0))(
  ( (C!18943 (val!11507 Int)) )
))
(declare-datatypes ((Regex!9378 0))(
  ( (ElementMatch!9378 (c!494518 C!18942)) (Concat!14699 (regOne!19268 Regex!9378) (regTwo!19268 Regex!9378)) (EmptyExpr!9378) (Star!9378 (reg!9707 Regex!9378)) (EmptyLang!9378) (Union!9378 (regOne!19269 Regex!9378) (regTwo!19269 Regex!9378)) )
))
(declare-fun lt!1042537 () Regex!9378)

(declare-datatypes ((List!35243 0))(
  ( (Nil!35119) (Cons!35119 (h!40539 C!18942) (t!234308 List!35243)) )
))
(declare-datatypes ((tuple2!34050 0))(
  ( (tuple2!34051 (_1!20157 List!35243) (_2!20157 List!35243)) )
))
(declare-fun lt!1042532 () tuple2!34050)

(declare-fun matchR!4260 (Regex!9378 List!35243) Bool)

(assert (=> b!3004194 (= res!1238070 (not (matchR!4260 lt!1042537 (_2!20157 lt!1042532))))))

(declare-fun b!3004195 () Bool)

(declare-fun e!1886921 () Bool)

(declare-fun tp_is_empty!16319 () Bool)

(declare-fun tp!954442 () Bool)

(assert (=> b!3004195 (= e!1886921 (and tp_is_empty!16319 tp!954442))))

(declare-fun b!3004196 () Bool)

(declare-fun e!1886923 () Bool)

(declare-fun tp!954441 () Bool)

(assert (=> b!3004196 (= e!1886923 tp!954441)))

(declare-fun b!3004197 () Bool)

(declare-fun e!1886929 () Bool)

(assert (=> b!3004197 (= e!1886929 e!1886925)))

(declare-fun res!1238067 () Bool)

(assert (=> b!3004197 (=> res!1238067 e!1886925)))

(declare-fun lt!1042530 () Regex!9378)

(assert (=> b!3004197 (= res!1238067 (not (matchR!4260 lt!1042530 (_1!20157 lt!1042532))))))

(declare-datatypes ((Option!6757 0))(
  ( (None!6756) (Some!6756 (v!34890 tuple2!34050)) )
))
(declare-fun lt!1042539 () Option!6757)

(declare-fun get!10914 (Option!6757) tuple2!34050)

(assert (=> b!3004197 (= lt!1042532 (get!10914 lt!1042539))))

(declare-fun b!3004198 () Bool)

(declare-fun e!1886927 () Bool)

(declare-fun s!11993 () List!35243)

(declare-fun ++!8406 (List!35243 List!35243) List!35243)

(assert (=> b!3004198 (= e!1886927 (= (++!8406 (_1!20157 lt!1042532) (_2!20157 lt!1042532)) s!11993))))

(declare-fun b!3004199 () Bool)

(declare-fun e!1886928 () Bool)

(declare-fun e!1886926 () Bool)

(assert (=> b!3004199 (= e!1886928 e!1886926)))

(declare-fun res!1238068 () Bool)

(assert (=> b!3004199 (=> res!1238068 e!1886926)))

(declare-fun isEmptyLang!468 (Regex!9378) Bool)

(assert (=> b!3004199 (= res!1238068 (isEmptyLang!468 lt!1042530))))

(declare-fun r!17423 () Regex!9378)

(declare-fun simplify!369 (Regex!9378) Regex!9378)

(assert (=> b!3004199 (= lt!1042530 (simplify!369 (reg!9707 r!17423)))))

(declare-fun b!3004200 () Bool)

(assert (=> b!3004200 (= e!1886925 e!1886927)))

(declare-fun res!1238066 () Bool)

(assert (=> b!3004200 (=> res!1238066 e!1886927)))

(declare-fun size!26508 (List!35243) Int)

(assert (=> b!3004200 (= res!1238066 (not (= (size!26508 (_2!20157 lt!1042532)) (size!26508 s!11993))))))

(assert (=> b!3004200 (matchR!4260 (reg!9707 r!17423) (_1!20157 lt!1042532))))

(declare-datatypes ((Unit!49171 0))(
  ( (Unit!49172) )
))
(declare-fun lt!1042538 () Unit!49171)

(declare-fun lemmaSimplifySound!219 (Regex!9378 List!35243) Unit!49171)

(assert (=> b!3004200 (= lt!1042538 (lemmaSimplifySound!219 (reg!9707 r!17423) (_1!20157 lt!1042532)))))

(declare-fun b!3004202 () Bool)

(declare-fun e!1886920 () Bool)

(declare-fun e!1886922 () Bool)

(assert (=> b!3004202 (= e!1886920 e!1886922)))

(declare-fun res!1238069 () Bool)

(assert (=> b!3004202 (=> res!1238069 e!1886922)))

(declare-fun isEmpty!19396 (List!35243) Bool)

(assert (=> b!3004202 (= res!1238069 (isEmpty!19396 s!11993))))

(declare-fun matchRSpec!1515 (Regex!9378 List!35243) Bool)

(assert (=> b!3004202 (matchRSpec!1515 lt!1042537 s!11993)))

(declare-fun lt!1042534 () Unit!49171)

(declare-fun mainMatchTheorem!1515 (Regex!9378 List!35243) Unit!49171)

(assert (=> b!3004202 (= lt!1042534 (mainMatchTheorem!1515 lt!1042537 s!11993))))

(declare-fun b!3004203 () Bool)

(declare-fun tp!954438 () Bool)

(declare-fun tp!954440 () Bool)

(assert (=> b!3004203 (= e!1886923 (and tp!954438 tp!954440))))

(declare-fun b!3004204 () Bool)

(assert (=> b!3004204 (= e!1886926 e!1886920)))

(declare-fun res!1238071 () Bool)

(assert (=> b!3004204 (=> res!1238071 e!1886920)))

(assert (=> b!3004204 (= res!1238071 (not (matchR!4260 lt!1042537 s!11993)))))

(assert (=> b!3004204 (= lt!1042537 (Star!9378 lt!1042530))))

(declare-fun b!3004205 () Bool)

(assert (=> b!3004205 (= e!1886923 tp_is_empty!16319)))

(assert (=> b!3004206 (= e!1886922 e!1886929)))

(declare-fun res!1238063 () Bool)

(assert (=> b!3004206 (=> res!1238063 e!1886929)))

(declare-fun lt!1042536 () Bool)

(assert (=> b!3004206 (= res!1238063 (not lt!1042536))))

(declare-fun Exists!1647 (Int) Bool)

(assert (=> b!3004206 (= (Exists!1647 lambda!112293) (Exists!1647 lambda!112294))))

(declare-fun lt!1042529 () Unit!49171)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!313 (Regex!9378 List!35243) Unit!49171)

(assert (=> b!3004206 (= lt!1042529 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!313 lt!1042530 s!11993))))

(assert (=> b!3004206 (= lt!1042536 (Exists!1647 lambda!112293))))

(declare-fun isDefined!5308 (Option!6757) Bool)

(assert (=> b!3004206 (= lt!1042536 (isDefined!5308 lt!1042539))))

(declare-fun findConcatSeparation!1151 (Regex!9378 Regex!9378 List!35243 List!35243 List!35243) Option!6757)

(assert (=> b!3004206 (= lt!1042539 (findConcatSeparation!1151 lt!1042530 lt!1042537 Nil!35119 s!11993 s!11993))))

(declare-fun lt!1042535 () Unit!49171)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!929 (Regex!9378 Regex!9378 List!35243) Unit!49171)

(assert (=> b!3004206 (= lt!1042535 (lemmaFindConcatSeparationEquivalentToExists!929 lt!1042530 lt!1042537 s!11993))))

(declare-fun b!3004207 () Bool)

(declare-fun tp!954439 () Bool)

(declare-fun tp!954443 () Bool)

(assert (=> b!3004207 (= e!1886923 (and tp!954439 tp!954443))))

(declare-fun b!3004201 () Bool)

(declare-fun e!1886924 () Bool)

(assert (=> b!3004201 (= e!1886924 (not e!1886928))))

(declare-fun res!1238064 () Bool)

(assert (=> b!3004201 (=> res!1238064 e!1886928)))

(declare-fun lt!1042533 () Bool)

(assert (=> b!3004201 (= res!1238064 (or lt!1042533 (is-Concat!14699 r!17423) (is-Union!9378 r!17423) (not (is-Star!9378 r!17423))))))

(assert (=> b!3004201 (= lt!1042533 (matchRSpec!1515 r!17423 s!11993))))

(assert (=> b!3004201 (= lt!1042533 (matchR!4260 r!17423 s!11993))))

(declare-fun lt!1042531 () Unit!49171)

(assert (=> b!3004201 (= lt!1042531 (mainMatchTheorem!1515 r!17423 s!11993))))

(declare-fun res!1238065 () Bool)

(assert (=> start!289522 (=> (not res!1238065) (not e!1886924))))

(declare-fun validRegex!4111 (Regex!9378) Bool)

(assert (=> start!289522 (= res!1238065 (validRegex!4111 r!17423))))

(assert (=> start!289522 e!1886924))

(assert (=> start!289522 e!1886923))

(assert (=> start!289522 e!1886921))

(assert (= (and start!289522 res!1238065) b!3004201))

(assert (= (and b!3004201 (not res!1238064)) b!3004199))

(assert (= (and b!3004199 (not res!1238068)) b!3004204))

(assert (= (and b!3004204 (not res!1238071)) b!3004202))

(assert (= (and b!3004202 (not res!1238069)) b!3004206))

(assert (= (and b!3004206 (not res!1238063)) b!3004197))

(assert (= (and b!3004197 (not res!1238067)) b!3004194))

(assert (= (and b!3004194 (not res!1238070)) b!3004200))

(assert (= (and b!3004200 (not res!1238066)) b!3004198))

(assert (= (and start!289522 (is-ElementMatch!9378 r!17423)) b!3004205))

(assert (= (and start!289522 (is-Concat!14699 r!17423)) b!3004207))

(assert (= (and start!289522 (is-Star!9378 r!17423)) b!3004196))

(assert (= (and start!289522 (is-Union!9378 r!17423)) b!3004203))

(assert (= (and start!289522 (is-Cons!35119 s!11993)) b!3004195))

(declare-fun m!3353637 () Bool)

(assert (=> b!3004197 m!3353637))

(declare-fun m!3353639 () Bool)

(assert (=> b!3004197 m!3353639))

(declare-fun m!3353641 () Bool)

(assert (=> b!3004206 m!3353641))

(declare-fun m!3353643 () Bool)

(assert (=> b!3004206 m!3353643))

(declare-fun m!3353645 () Bool)

(assert (=> b!3004206 m!3353645))

(declare-fun m!3353647 () Bool)

(assert (=> b!3004206 m!3353647))

(assert (=> b!3004206 m!3353643))

(declare-fun m!3353649 () Bool)

(assert (=> b!3004206 m!3353649))

(declare-fun m!3353651 () Bool)

(assert (=> b!3004206 m!3353651))

(declare-fun m!3353653 () Bool)

(assert (=> b!3004194 m!3353653))

(declare-fun m!3353655 () Bool)

(assert (=> b!3004201 m!3353655))

(declare-fun m!3353657 () Bool)

(assert (=> b!3004201 m!3353657))

(declare-fun m!3353659 () Bool)

(assert (=> b!3004201 m!3353659))

(declare-fun m!3353661 () Bool)

(assert (=> start!289522 m!3353661))

(declare-fun m!3353663 () Bool)

(assert (=> b!3004199 m!3353663))

(declare-fun m!3353665 () Bool)

(assert (=> b!3004199 m!3353665))

(declare-fun m!3353667 () Bool)

(assert (=> b!3004198 m!3353667))

(declare-fun m!3353669 () Bool)

(assert (=> b!3004204 m!3353669))

(declare-fun m!3353671 () Bool)

(assert (=> b!3004202 m!3353671))

(declare-fun m!3353673 () Bool)

(assert (=> b!3004202 m!3353673))

(declare-fun m!3353675 () Bool)

(assert (=> b!3004202 m!3353675))

(declare-fun m!3353677 () Bool)

(assert (=> b!3004200 m!3353677))

(declare-fun m!3353679 () Bool)

(assert (=> b!3004200 m!3353679))

(declare-fun m!3353681 () Bool)

(assert (=> b!3004200 m!3353681))

(declare-fun m!3353683 () Bool)

(assert (=> b!3004200 m!3353683))

(push 1)

(assert (not b!3004200))

(assert (not b!3004207))

(assert (not b!3004199))

(assert (not b!3004201))

(assert (not b!3004197))

(assert (not start!289522))

(assert (not b!3004198))

(assert (not b!3004194))

(assert (not b!3004204))

(assert tp_is_empty!16319)

(assert (not b!3004202))

(assert (not b!3004203))

(assert (not b!3004206))

(assert (not b!3004196))

(assert (not b!3004195))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!528628 () Bool)

(declare-fun b!3004312 () Bool)

(assert (= bs!528628 (and b!3004312 b!3004206)))

(declare-fun lambda!112307 () Int)

(assert (=> bs!528628 (not (= lambda!112307 lambda!112293))))

(assert (=> bs!528628 (= (and (= (reg!9707 r!17423) lt!1042530) (= r!17423 lt!1042537)) (= lambda!112307 lambda!112294))))

(assert (=> b!3004312 true))

(assert (=> b!3004312 true))

(declare-fun bs!528629 () Bool)

(declare-fun b!3004309 () Bool)

(assert (= bs!528629 (and b!3004309 b!3004206)))

(declare-fun lambda!112308 () Int)

(assert (=> bs!528629 (not (= lambda!112308 lambda!112293))))

(assert (=> bs!528629 (not (= lambda!112308 lambda!112294))))

(declare-fun bs!528630 () Bool)

(assert (= bs!528630 (and b!3004309 b!3004312)))

(assert (=> bs!528630 (not (= lambda!112308 lambda!112307))))

(assert (=> b!3004309 true))

(assert (=> b!3004309 true))

(declare-fun b!3004304 () Bool)

(declare-fun e!1886990 () Bool)

(declare-fun e!1886986 () Bool)

(assert (=> b!3004304 (= e!1886990 e!1886986)))

(declare-fun c!494531 () Bool)

(assert (=> b!3004304 (= c!494531 (is-Star!9378 r!17423))))

(declare-fun d!846609 () Bool)

(declare-fun c!494530 () Bool)

(assert (=> d!846609 (= c!494530 (is-EmptyExpr!9378 r!17423))))

(declare-fun e!1886984 () Bool)

(assert (=> d!846609 (= (matchRSpec!1515 r!17423 s!11993) e!1886984)))

(declare-fun b!3004305 () Bool)

(declare-fun res!1238130 () Bool)

(declare-fun e!1886985 () Bool)

(assert (=> b!3004305 (=> res!1238130 e!1886985)))

(declare-fun call!202048 () Bool)

(assert (=> b!3004305 (= res!1238130 call!202048)))

(assert (=> b!3004305 (= e!1886986 e!1886985)))

(declare-fun b!3004306 () Bool)

(declare-fun c!494529 () Bool)

(assert (=> b!3004306 (= c!494529 (is-ElementMatch!9378 r!17423))))

(declare-fun e!1886988 () Bool)

(declare-fun e!1886989 () Bool)

(assert (=> b!3004306 (= e!1886988 e!1886989)))

(declare-fun b!3004307 () Bool)

(declare-fun c!494528 () Bool)

(assert (=> b!3004307 (= c!494528 (is-Union!9378 r!17423))))

(assert (=> b!3004307 (= e!1886989 e!1886990)))

(declare-fun b!3004308 () Bool)

(assert (=> b!3004308 (= e!1886984 e!1886988)))

(declare-fun res!1238129 () Bool)

(assert (=> b!3004308 (= res!1238129 (not (is-EmptyLang!9378 r!17423)))))

(assert (=> b!3004308 (=> (not res!1238129) (not e!1886988))))

(declare-fun call!202047 () Bool)

(assert (=> b!3004309 (= e!1886986 call!202047)))

(declare-fun b!3004310 () Bool)

(declare-fun e!1886987 () Bool)

(assert (=> b!3004310 (= e!1886987 (matchRSpec!1515 (regTwo!19269 r!17423) s!11993))))

(declare-fun b!3004311 () Bool)

(assert (=> b!3004311 (= e!1886990 e!1886987)))

(declare-fun res!1238131 () Bool)

(assert (=> b!3004311 (= res!1238131 (matchRSpec!1515 (regOne!19269 r!17423) s!11993))))

(assert (=> b!3004311 (=> res!1238131 e!1886987)))

(assert (=> b!3004312 (= e!1886985 call!202047)))

(declare-fun bm!202042 () Bool)

(assert (=> bm!202042 (= call!202048 (isEmpty!19396 s!11993))))

(declare-fun b!3004313 () Bool)

(assert (=> b!3004313 (= e!1886989 (= s!11993 (Cons!35119 (c!494518 r!17423) Nil!35119)))))

(declare-fun b!3004314 () Bool)

(assert (=> b!3004314 (= e!1886984 call!202048)))

(declare-fun bm!202043 () Bool)

(assert (=> bm!202043 (= call!202047 (Exists!1647 (ite c!494531 lambda!112307 lambda!112308)))))

(assert (= (and d!846609 c!494530) b!3004314))

(assert (= (and d!846609 (not c!494530)) b!3004308))

(assert (= (and b!3004308 res!1238129) b!3004306))

(assert (= (and b!3004306 c!494529) b!3004313))

(assert (= (and b!3004306 (not c!494529)) b!3004307))

(assert (= (and b!3004307 c!494528) b!3004311))

(assert (= (and b!3004307 (not c!494528)) b!3004304))

(assert (= (and b!3004311 (not res!1238131)) b!3004310))

(assert (= (and b!3004304 c!494531) b!3004305))

(assert (= (and b!3004304 (not c!494531)) b!3004309))

(assert (= (and b!3004305 (not res!1238130)) b!3004312))

(assert (= (or b!3004312 b!3004309) bm!202043))

(assert (= (or b!3004314 b!3004305) bm!202042))

(declare-fun m!3353733 () Bool)

(assert (=> b!3004310 m!3353733))

(declare-fun m!3353735 () Bool)

(assert (=> b!3004311 m!3353735))

(assert (=> bm!202042 m!3353671))

(declare-fun m!3353737 () Bool)

(assert (=> bm!202043 m!3353737))

(assert (=> b!3004201 d!846609))

(declare-fun b!3004347 () Bool)

(declare-fun e!1887007 () Bool)

(declare-fun head!6694 (List!35243) C!18942)

(assert (=> b!3004347 (= e!1887007 (= (head!6694 s!11993) (c!494518 r!17423)))))

(declare-fun b!3004348 () Bool)

(declare-fun e!1887009 () Bool)

(declare-fun lt!1042577 () Bool)

(assert (=> b!3004348 (= e!1887009 (not lt!1042577))))

(declare-fun b!3004349 () Bool)

(declare-fun e!1887013 () Bool)

(assert (=> b!3004349 (= e!1887013 (not (= (head!6694 s!11993) (c!494518 r!17423))))))

(declare-fun b!3004350 () Bool)

(declare-fun e!1887010 () Bool)

(declare-fun nullable!3037 (Regex!9378) Bool)

(assert (=> b!3004350 (= e!1887010 (nullable!3037 r!17423))))

(declare-fun d!846613 () Bool)

(declare-fun e!1887012 () Bool)

(assert (=> d!846613 e!1887012))

(declare-fun c!494538 () Bool)

(assert (=> d!846613 (= c!494538 (is-EmptyExpr!9378 r!17423))))

(assert (=> d!846613 (= lt!1042577 e!1887010)))

(declare-fun c!494540 () Bool)

(assert (=> d!846613 (= c!494540 (isEmpty!19396 s!11993))))

(assert (=> d!846613 (validRegex!4111 r!17423)))

(assert (=> d!846613 (= (matchR!4260 r!17423 s!11993) lt!1042577)))

(declare-fun b!3004351 () Bool)

(assert (=> b!3004351 (= e!1887012 e!1887009)))

(declare-fun c!494539 () Bool)

(assert (=> b!3004351 (= c!494539 (is-EmptyLang!9378 r!17423))))

(declare-fun b!3004352 () Bool)

(declare-fun res!1238155 () Bool)

(assert (=> b!3004352 (=> res!1238155 e!1887013)))

(declare-fun tail!4920 (List!35243) List!35243)

(assert (=> b!3004352 (= res!1238155 (not (isEmpty!19396 (tail!4920 s!11993))))))

(declare-fun b!3004353 () Bool)

(declare-fun res!1238153 () Bool)

(assert (=> b!3004353 (=> (not res!1238153) (not e!1887007))))

(assert (=> b!3004353 (= res!1238153 (isEmpty!19396 (tail!4920 s!11993)))))

(declare-fun b!3004354 () Bool)

(declare-fun res!1238157 () Bool)

(declare-fun e!1887011 () Bool)

(assert (=> b!3004354 (=> res!1238157 e!1887011)))

(assert (=> b!3004354 (= res!1238157 (not (is-ElementMatch!9378 r!17423)))))

(assert (=> b!3004354 (= e!1887009 e!1887011)))

(declare-fun b!3004355 () Bool)

(declare-fun call!202051 () Bool)

(assert (=> b!3004355 (= e!1887012 (= lt!1042577 call!202051))))

(declare-fun b!3004356 () Bool)

(declare-fun e!1887008 () Bool)

(assert (=> b!3004356 (= e!1887011 e!1887008)))

(declare-fun res!1238158 () Bool)

(assert (=> b!3004356 (=> (not res!1238158) (not e!1887008))))

(assert (=> b!3004356 (= res!1238158 (not lt!1042577))))

(declare-fun b!3004357 () Bool)

(assert (=> b!3004357 (= e!1887008 e!1887013)))

(declare-fun res!1238152 () Bool)

(assert (=> b!3004357 (=> res!1238152 e!1887013)))

(assert (=> b!3004357 (= res!1238152 call!202051)))

(declare-fun b!3004358 () Bool)

(declare-fun res!1238156 () Bool)

(assert (=> b!3004358 (=> (not res!1238156) (not e!1887007))))

(assert (=> b!3004358 (= res!1238156 (not call!202051))))

(declare-fun b!3004359 () Bool)

(declare-fun derivativeStep!2635 (Regex!9378 C!18942) Regex!9378)

(assert (=> b!3004359 (= e!1887010 (matchR!4260 (derivativeStep!2635 r!17423 (head!6694 s!11993)) (tail!4920 s!11993)))))

(declare-fun bm!202046 () Bool)

(assert (=> bm!202046 (= call!202051 (isEmpty!19396 s!11993))))

(declare-fun b!3004360 () Bool)

(declare-fun res!1238154 () Bool)

(assert (=> b!3004360 (=> res!1238154 e!1887011)))

(assert (=> b!3004360 (= res!1238154 e!1887007)))

(declare-fun res!1238159 () Bool)

(assert (=> b!3004360 (=> (not res!1238159) (not e!1887007))))

(assert (=> b!3004360 (= res!1238159 lt!1042577)))

(assert (= (and d!846613 c!494540) b!3004350))

(assert (= (and d!846613 (not c!494540)) b!3004359))

(assert (= (and d!846613 c!494538) b!3004355))

(assert (= (and d!846613 (not c!494538)) b!3004351))

(assert (= (and b!3004351 c!494539) b!3004348))

(assert (= (and b!3004351 (not c!494539)) b!3004354))

(assert (= (and b!3004354 (not res!1238157)) b!3004360))

(assert (= (and b!3004360 res!1238159) b!3004358))

(assert (= (and b!3004358 res!1238156) b!3004353))

(assert (= (and b!3004353 res!1238153) b!3004347))

(assert (= (and b!3004360 (not res!1238154)) b!3004356))

(assert (= (and b!3004356 res!1238158) b!3004357))

(assert (= (and b!3004357 (not res!1238152)) b!3004352))

(assert (= (and b!3004352 (not res!1238155)) b!3004349))

(assert (= (or b!3004355 b!3004358 b!3004357) bm!202046))

(declare-fun m!3353739 () Bool)

(assert (=> b!3004347 m!3353739))

(declare-fun m!3353741 () Bool)

(assert (=> b!3004350 m!3353741))

(declare-fun m!3353743 () Bool)

(assert (=> b!3004353 m!3353743))

(assert (=> b!3004353 m!3353743))

(declare-fun m!3353745 () Bool)

(assert (=> b!3004353 m!3353745))

(assert (=> b!3004352 m!3353743))

(assert (=> b!3004352 m!3353743))

(assert (=> b!3004352 m!3353745))

(assert (=> d!846613 m!3353671))

(assert (=> d!846613 m!3353661))

(assert (=> b!3004349 m!3353739))

(assert (=> b!3004359 m!3353739))

(assert (=> b!3004359 m!3353739))

(declare-fun m!3353747 () Bool)

(assert (=> b!3004359 m!3353747))

(assert (=> b!3004359 m!3353743))

(assert (=> b!3004359 m!3353747))

(assert (=> b!3004359 m!3353743))

(declare-fun m!3353749 () Bool)

(assert (=> b!3004359 m!3353749))

(assert (=> bm!202046 m!3353671))

(assert (=> b!3004201 d!846613))

(declare-fun d!846615 () Bool)

(assert (=> d!846615 (= (matchR!4260 r!17423 s!11993) (matchRSpec!1515 r!17423 s!11993))))

(declare-fun lt!1042581 () Unit!49171)

(declare-fun choose!17824 (Regex!9378 List!35243) Unit!49171)

(assert (=> d!846615 (= lt!1042581 (choose!17824 r!17423 s!11993))))

(assert (=> d!846615 (validRegex!4111 r!17423)))

(assert (=> d!846615 (= (mainMatchTheorem!1515 r!17423 s!11993) lt!1042581)))

(declare-fun bs!528633 () Bool)

(assert (= bs!528633 d!846615))

(assert (=> bs!528633 m!3353657))

(assert (=> bs!528633 m!3353655))

(declare-fun m!3353759 () Bool)

(assert (=> bs!528633 m!3353759))

(assert (=> bs!528633 m!3353661))

(assert (=> b!3004201 d!846615))

(declare-fun bs!528635 () Bool)

(declare-fun d!846617 () Bool)

(assert (= bs!528635 (and d!846617 b!3004206)))

(declare-fun lambda!112314 () Int)

(assert (=> bs!528635 (= lambda!112314 lambda!112293)))

(assert (=> bs!528635 (not (= lambda!112314 lambda!112294))))

(declare-fun bs!528636 () Bool)

(assert (= bs!528636 (and d!846617 b!3004312)))

(assert (=> bs!528636 (not (= lambda!112314 lambda!112307))))

(declare-fun bs!528637 () Bool)

(assert (= bs!528637 (and d!846617 b!3004309)))

(assert (=> bs!528637 (not (= lambda!112314 lambda!112308))))

(assert (=> d!846617 true))

(assert (=> d!846617 true))

(assert (=> d!846617 true))

(assert (=> d!846617 (= (isDefined!5308 (findConcatSeparation!1151 lt!1042530 lt!1042537 Nil!35119 s!11993 s!11993)) (Exists!1647 lambda!112314))))

(declare-fun lt!1042584 () Unit!49171)

(declare-fun choose!17825 (Regex!9378 Regex!9378 List!35243) Unit!49171)

(assert (=> d!846617 (= lt!1042584 (choose!17825 lt!1042530 lt!1042537 s!11993))))

(assert (=> d!846617 (validRegex!4111 lt!1042530)))

(assert (=> d!846617 (= (lemmaFindConcatSeparationEquivalentToExists!929 lt!1042530 lt!1042537 s!11993) lt!1042584)))

(declare-fun bs!528638 () Bool)

(assert (= bs!528638 d!846617))

(declare-fun m!3353763 () Bool)

(assert (=> bs!528638 m!3353763))

(declare-fun m!3353765 () Bool)

(assert (=> bs!528638 m!3353765))

(assert (=> bs!528638 m!3353645))

(declare-fun m!3353767 () Bool)

(assert (=> bs!528638 m!3353767))

(assert (=> bs!528638 m!3353645))

(declare-fun m!3353769 () Bool)

(assert (=> bs!528638 m!3353769))

(assert (=> b!3004206 d!846617))

(declare-fun bs!528639 () Bool)

(declare-fun d!846623 () Bool)

(assert (= bs!528639 (and d!846623 b!3004206)))

(declare-fun lambda!112321 () Int)

(assert (=> bs!528639 (= (= (Star!9378 lt!1042530) lt!1042537) (= lambda!112321 lambda!112293))))

(assert (=> bs!528639 (not (= lambda!112321 lambda!112294))))

(declare-fun bs!528640 () Bool)

(assert (= bs!528640 (and d!846623 d!846617)))

(assert (=> bs!528640 (= (= (Star!9378 lt!1042530) lt!1042537) (= lambda!112321 lambda!112314))))

(declare-fun bs!528641 () Bool)

(assert (= bs!528641 (and d!846623 b!3004309)))

(assert (=> bs!528641 (not (= lambda!112321 lambda!112308))))

(declare-fun bs!528642 () Bool)

(assert (= bs!528642 (and d!846623 b!3004312)))

(assert (=> bs!528642 (not (= lambda!112321 lambda!112307))))

(assert (=> d!846623 true))

(assert (=> d!846623 true))

(declare-fun lambda!112322 () Int)

(assert (=> bs!528639 (not (= lambda!112322 lambda!112293))))

(declare-fun bs!528643 () Bool)

(assert (= bs!528643 d!846623))

(assert (=> bs!528643 (not (= lambda!112322 lambda!112321))))

(assert (=> bs!528639 (= (= (Star!9378 lt!1042530) lt!1042537) (= lambda!112322 lambda!112294))))

(assert (=> bs!528640 (not (= lambda!112322 lambda!112314))))

(assert (=> bs!528641 (not (= lambda!112322 lambda!112308))))

(assert (=> bs!528642 (= (and (= lt!1042530 (reg!9707 r!17423)) (= (Star!9378 lt!1042530) r!17423)) (= lambda!112322 lambda!112307))))

(assert (=> d!846623 true))

(assert (=> d!846623 true))

(assert (=> d!846623 (= (Exists!1647 lambda!112321) (Exists!1647 lambda!112322))))

(declare-fun lt!1042589 () Unit!49171)

(declare-fun choose!17826 (Regex!9378 List!35243) Unit!49171)

(assert (=> d!846623 (= lt!1042589 (choose!17826 lt!1042530 s!11993))))

(assert (=> d!846623 (validRegex!4111 lt!1042530)))

(assert (=> d!846623 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!313 lt!1042530 s!11993) lt!1042589)))

(declare-fun m!3353771 () Bool)

(assert (=> bs!528643 m!3353771))

(declare-fun m!3353773 () Bool)

(assert (=> bs!528643 m!3353773))

(declare-fun m!3353775 () Bool)

(assert (=> bs!528643 m!3353775))

(assert (=> bs!528643 m!3353769))

(assert (=> b!3004206 d!846623))

(declare-fun d!846625 () Bool)

(declare-fun choose!17827 (Int) Bool)

(assert (=> d!846625 (= (Exists!1647 lambda!112294) (choose!17827 lambda!112294))))

(declare-fun bs!528644 () Bool)

(assert (= bs!528644 d!846625))

(declare-fun m!3353777 () Bool)

(assert (=> bs!528644 m!3353777))

(assert (=> b!3004206 d!846625))

(declare-fun b!3004403 () Bool)

(declare-fun res!1238195 () Bool)

(declare-fun e!1887037 () Bool)

(assert (=> b!3004403 (=> (not res!1238195) (not e!1887037))))

(declare-fun lt!1042597 () Option!6757)

(assert (=> b!3004403 (= res!1238195 (matchR!4260 lt!1042530 (_1!20157 (get!10914 lt!1042597))))))

(declare-fun b!3004404 () Bool)

(declare-fun e!1887035 () Bool)

(assert (=> b!3004404 (= e!1887035 (matchR!4260 lt!1042537 s!11993))))

(declare-fun b!3004406 () Bool)

(declare-fun e!1887036 () Bool)

(assert (=> b!3004406 (= e!1887036 (not (isDefined!5308 lt!1042597)))))

(declare-fun b!3004407 () Bool)

(declare-fun lt!1042598 () Unit!49171)

(declare-fun lt!1042599 () Unit!49171)

(assert (=> b!3004407 (= lt!1042598 lt!1042599)))

(assert (=> b!3004407 (= (++!8406 (++!8406 Nil!35119 (Cons!35119 (h!40539 s!11993) Nil!35119)) (t!234308 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1017 (List!35243 C!18942 List!35243 List!35243) Unit!49171)

(assert (=> b!3004407 (= lt!1042599 (lemmaMoveElementToOtherListKeepsConcatEq!1017 Nil!35119 (h!40539 s!11993) (t!234308 s!11993) s!11993))))

(declare-fun e!1887038 () Option!6757)

(assert (=> b!3004407 (= e!1887038 (findConcatSeparation!1151 lt!1042530 lt!1042537 (++!8406 Nil!35119 (Cons!35119 (h!40539 s!11993) Nil!35119)) (t!234308 s!11993) s!11993))))

(declare-fun b!3004408 () Bool)

(assert (=> b!3004408 (= e!1887037 (= (++!8406 (_1!20157 (get!10914 lt!1042597)) (_2!20157 (get!10914 lt!1042597))) s!11993))))

(declare-fun b!3004409 () Bool)

(declare-fun res!1238198 () Bool)

(assert (=> b!3004409 (=> (not res!1238198) (not e!1887037))))

(assert (=> b!3004409 (= res!1238198 (matchR!4260 lt!1042537 (_2!20157 (get!10914 lt!1042597))))))

(declare-fun d!846627 () Bool)

(assert (=> d!846627 e!1887036))

(declare-fun res!1238194 () Bool)

(assert (=> d!846627 (=> res!1238194 e!1887036)))

(assert (=> d!846627 (= res!1238194 e!1887037)))

(declare-fun res!1238197 () Bool)

(assert (=> d!846627 (=> (not res!1238197) (not e!1887037))))

(assert (=> d!846627 (= res!1238197 (isDefined!5308 lt!1042597))))

(declare-fun e!1887034 () Option!6757)

(assert (=> d!846627 (= lt!1042597 e!1887034)))

(declare-fun c!494546 () Bool)

(assert (=> d!846627 (= c!494546 e!1887035)))

(declare-fun res!1238196 () Bool)

(assert (=> d!846627 (=> (not res!1238196) (not e!1887035))))

(assert (=> d!846627 (= res!1238196 (matchR!4260 lt!1042530 Nil!35119))))

(assert (=> d!846627 (validRegex!4111 lt!1042530)))

(assert (=> d!846627 (= (findConcatSeparation!1151 lt!1042530 lt!1042537 Nil!35119 s!11993 s!11993) lt!1042597)))

(declare-fun b!3004405 () Bool)

(assert (=> b!3004405 (= e!1887034 (Some!6756 (tuple2!34051 Nil!35119 s!11993)))))

(declare-fun b!3004410 () Bool)

(assert (=> b!3004410 (= e!1887038 None!6756)))

(declare-fun b!3004411 () Bool)

(assert (=> b!3004411 (= e!1887034 e!1887038)))

(declare-fun c!494545 () Bool)

(assert (=> b!3004411 (= c!494545 (is-Nil!35119 s!11993))))

(assert (= (and d!846627 res!1238196) b!3004404))

(assert (= (and d!846627 c!494546) b!3004405))

(assert (= (and d!846627 (not c!494546)) b!3004411))

(assert (= (and b!3004411 c!494545) b!3004410))

(assert (= (and b!3004411 (not c!494545)) b!3004407))

(assert (= (and d!846627 res!1238197) b!3004403))

(assert (= (and b!3004403 res!1238195) b!3004409))

(assert (= (and b!3004409 res!1238198) b!3004408))

(assert (= (and d!846627 (not res!1238194)) b!3004406))

(assert (=> b!3004404 m!3353669))

(declare-fun m!3353789 () Bool)

(assert (=> b!3004408 m!3353789))

(declare-fun m!3353791 () Bool)

(assert (=> b!3004408 m!3353791))

(assert (=> b!3004409 m!3353789))

(declare-fun m!3353793 () Bool)

(assert (=> b!3004409 m!3353793))

(assert (=> b!3004403 m!3353789))

(declare-fun m!3353795 () Bool)

(assert (=> b!3004403 m!3353795))

(declare-fun m!3353797 () Bool)

(assert (=> d!846627 m!3353797))

(declare-fun m!3353799 () Bool)

(assert (=> d!846627 m!3353799))

(assert (=> d!846627 m!3353769))

(declare-fun m!3353801 () Bool)

(assert (=> b!3004407 m!3353801))

(assert (=> b!3004407 m!3353801))

(declare-fun m!3353803 () Bool)

(assert (=> b!3004407 m!3353803))

(declare-fun m!3353805 () Bool)

(assert (=> b!3004407 m!3353805))

(assert (=> b!3004407 m!3353801))

(declare-fun m!3353807 () Bool)

(assert (=> b!3004407 m!3353807))

(assert (=> b!3004406 m!3353797))

(assert (=> b!3004206 d!846627))

(declare-fun d!846635 () Bool)

(declare-fun isEmpty!19398 (Option!6757) Bool)

(assert (=> d!846635 (= (isDefined!5308 lt!1042539) (not (isEmpty!19398 lt!1042539)))))

(declare-fun bs!528650 () Bool)

(assert (= bs!528650 d!846635))

(declare-fun m!3353809 () Bool)

(assert (=> bs!528650 m!3353809))

(assert (=> b!3004206 d!846635))

(declare-fun d!846637 () Bool)

(assert (=> d!846637 (= (Exists!1647 lambda!112293) (choose!17827 lambda!112293))))

(declare-fun bs!528651 () Bool)

(assert (= bs!528651 d!846637))

(declare-fun m!3353811 () Bool)

(assert (=> bs!528651 m!3353811))

(assert (=> b!3004206 d!846637))

(declare-fun d!846639 () Bool)

(declare-fun lt!1042602 () Int)

(assert (=> d!846639 (>= lt!1042602 0)))

(declare-fun e!1887041 () Int)

(assert (=> d!846639 (= lt!1042602 e!1887041)))

(declare-fun c!494549 () Bool)

(assert (=> d!846639 (= c!494549 (is-Nil!35119 (_2!20157 lt!1042532)))))

(assert (=> d!846639 (= (size!26508 (_2!20157 lt!1042532)) lt!1042602)))

(declare-fun b!3004416 () Bool)

(assert (=> b!3004416 (= e!1887041 0)))

(declare-fun b!3004417 () Bool)

(assert (=> b!3004417 (= e!1887041 (+ 1 (size!26508 (t!234308 (_2!20157 lt!1042532)))))))

(assert (= (and d!846639 c!494549) b!3004416))

(assert (= (and d!846639 (not c!494549)) b!3004417))

(declare-fun m!3353813 () Bool)

(assert (=> b!3004417 m!3353813))

(assert (=> b!3004200 d!846639))

(declare-fun d!846641 () Bool)

(declare-fun lt!1042603 () Int)

(assert (=> d!846641 (>= lt!1042603 0)))

(declare-fun e!1887042 () Int)

(assert (=> d!846641 (= lt!1042603 e!1887042)))

(declare-fun c!494550 () Bool)

(assert (=> d!846641 (= c!494550 (is-Nil!35119 s!11993))))

(assert (=> d!846641 (= (size!26508 s!11993) lt!1042603)))

(declare-fun b!3004418 () Bool)

(assert (=> b!3004418 (= e!1887042 0)))

(declare-fun b!3004419 () Bool)

(assert (=> b!3004419 (= e!1887042 (+ 1 (size!26508 (t!234308 s!11993))))))

(assert (= (and d!846641 c!494550) b!3004418))

(assert (= (and d!846641 (not c!494550)) b!3004419))

(declare-fun m!3353815 () Bool)

(assert (=> b!3004419 m!3353815))

(assert (=> b!3004200 d!846641))

(declare-fun b!3004420 () Bool)

(declare-fun e!1887043 () Bool)

(assert (=> b!3004420 (= e!1887043 (= (head!6694 (_1!20157 lt!1042532)) (c!494518 (reg!9707 r!17423))))))

(declare-fun b!3004421 () Bool)

(declare-fun e!1887045 () Bool)

(declare-fun lt!1042604 () Bool)

(assert (=> b!3004421 (= e!1887045 (not lt!1042604))))

(declare-fun b!3004422 () Bool)

(declare-fun e!1887049 () Bool)

(assert (=> b!3004422 (= e!1887049 (not (= (head!6694 (_1!20157 lt!1042532)) (c!494518 (reg!9707 r!17423)))))))

(declare-fun b!3004423 () Bool)

(declare-fun e!1887046 () Bool)

(assert (=> b!3004423 (= e!1887046 (nullable!3037 (reg!9707 r!17423)))))

(declare-fun d!846643 () Bool)

(declare-fun e!1887048 () Bool)

(assert (=> d!846643 e!1887048))

(declare-fun c!494551 () Bool)

(assert (=> d!846643 (= c!494551 (is-EmptyExpr!9378 (reg!9707 r!17423)))))

(assert (=> d!846643 (= lt!1042604 e!1887046)))

(declare-fun c!494553 () Bool)

(assert (=> d!846643 (= c!494553 (isEmpty!19396 (_1!20157 lt!1042532)))))

(assert (=> d!846643 (validRegex!4111 (reg!9707 r!17423))))

(assert (=> d!846643 (= (matchR!4260 (reg!9707 r!17423) (_1!20157 lt!1042532)) lt!1042604)))

(declare-fun b!3004424 () Bool)

(assert (=> b!3004424 (= e!1887048 e!1887045)))

(declare-fun c!494552 () Bool)

(assert (=> b!3004424 (= c!494552 (is-EmptyLang!9378 (reg!9707 r!17423)))))

(declare-fun b!3004425 () Bool)

(declare-fun res!1238202 () Bool)

(assert (=> b!3004425 (=> res!1238202 e!1887049)))

(assert (=> b!3004425 (= res!1238202 (not (isEmpty!19396 (tail!4920 (_1!20157 lt!1042532)))))))

(declare-fun b!3004426 () Bool)

(declare-fun res!1238200 () Bool)

(assert (=> b!3004426 (=> (not res!1238200) (not e!1887043))))

(assert (=> b!3004426 (= res!1238200 (isEmpty!19396 (tail!4920 (_1!20157 lt!1042532))))))

(declare-fun b!3004427 () Bool)

(declare-fun res!1238204 () Bool)

(declare-fun e!1887047 () Bool)

(assert (=> b!3004427 (=> res!1238204 e!1887047)))

(assert (=> b!3004427 (= res!1238204 (not (is-ElementMatch!9378 (reg!9707 r!17423))))))

(assert (=> b!3004427 (= e!1887045 e!1887047)))

(declare-fun b!3004428 () Bool)

(declare-fun call!202052 () Bool)

(assert (=> b!3004428 (= e!1887048 (= lt!1042604 call!202052))))

(declare-fun b!3004429 () Bool)

(declare-fun e!1887044 () Bool)

(assert (=> b!3004429 (= e!1887047 e!1887044)))

(declare-fun res!1238205 () Bool)

(assert (=> b!3004429 (=> (not res!1238205) (not e!1887044))))

(assert (=> b!3004429 (= res!1238205 (not lt!1042604))))

(declare-fun b!3004430 () Bool)

(assert (=> b!3004430 (= e!1887044 e!1887049)))

(declare-fun res!1238199 () Bool)

(assert (=> b!3004430 (=> res!1238199 e!1887049)))

(assert (=> b!3004430 (= res!1238199 call!202052)))

(declare-fun b!3004431 () Bool)

(declare-fun res!1238203 () Bool)

(assert (=> b!3004431 (=> (not res!1238203) (not e!1887043))))

(assert (=> b!3004431 (= res!1238203 (not call!202052))))

(declare-fun b!3004432 () Bool)

(assert (=> b!3004432 (= e!1887046 (matchR!4260 (derivativeStep!2635 (reg!9707 r!17423) (head!6694 (_1!20157 lt!1042532))) (tail!4920 (_1!20157 lt!1042532))))))

(declare-fun bm!202047 () Bool)

(assert (=> bm!202047 (= call!202052 (isEmpty!19396 (_1!20157 lt!1042532)))))

(declare-fun b!3004433 () Bool)

(declare-fun res!1238201 () Bool)

(assert (=> b!3004433 (=> res!1238201 e!1887047)))

(assert (=> b!3004433 (= res!1238201 e!1887043)))

(declare-fun res!1238206 () Bool)

(assert (=> b!3004433 (=> (not res!1238206) (not e!1887043))))

(assert (=> b!3004433 (= res!1238206 lt!1042604)))

(assert (= (and d!846643 c!494553) b!3004423))

(assert (= (and d!846643 (not c!494553)) b!3004432))

(assert (= (and d!846643 c!494551) b!3004428))

(assert (= (and d!846643 (not c!494551)) b!3004424))

(assert (= (and b!3004424 c!494552) b!3004421))

(assert (= (and b!3004424 (not c!494552)) b!3004427))

(assert (= (and b!3004427 (not res!1238204)) b!3004433))

(assert (= (and b!3004433 res!1238206) b!3004431))

(assert (= (and b!3004431 res!1238203) b!3004426))

(assert (= (and b!3004426 res!1238200) b!3004420))

(assert (= (and b!3004433 (not res!1238201)) b!3004429))

(assert (= (and b!3004429 res!1238205) b!3004430))

(assert (= (and b!3004430 (not res!1238199)) b!3004425))

(assert (= (and b!3004425 (not res!1238202)) b!3004422))

(assert (= (or b!3004428 b!3004431 b!3004430) bm!202047))

(declare-fun m!3353817 () Bool)

(assert (=> b!3004420 m!3353817))

(declare-fun m!3353819 () Bool)

(assert (=> b!3004423 m!3353819))

(declare-fun m!3353821 () Bool)

(assert (=> b!3004426 m!3353821))

(assert (=> b!3004426 m!3353821))

(declare-fun m!3353823 () Bool)

(assert (=> b!3004426 m!3353823))

(assert (=> b!3004425 m!3353821))

(assert (=> b!3004425 m!3353821))

(assert (=> b!3004425 m!3353823))

(declare-fun m!3353825 () Bool)

(assert (=> d!846643 m!3353825))

(declare-fun m!3353827 () Bool)

(assert (=> d!846643 m!3353827))

(assert (=> b!3004422 m!3353817))

(assert (=> b!3004432 m!3353817))

(assert (=> b!3004432 m!3353817))

(declare-fun m!3353829 () Bool)

(assert (=> b!3004432 m!3353829))

(assert (=> b!3004432 m!3353821))

(assert (=> b!3004432 m!3353829))

(assert (=> b!3004432 m!3353821))

(declare-fun m!3353831 () Bool)

(assert (=> b!3004432 m!3353831))

(assert (=> bm!202047 m!3353825))

(assert (=> b!3004200 d!846643))

(declare-fun d!846645 () Bool)

(assert (=> d!846645 (= (matchR!4260 (reg!9707 r!17423) (_1!20157 lt!1042532)) (matchR!4260 (simplify!369 (reg!9707 r!17423)) (_1!20157 lt!1042532)))))

(declare-fun lt!1042607 () Unit!49171)

(declare-fun choose!17828 (Regex!9378 List!35243) Unit!49171)

(assert (=> d!846645 (= lt!1042607 (choose!17828 (reg!9707 r!17423) (_1!20157 lt!1042532)))))

(assert (=> d!846645 (validRegex!4111 (reg!9707 r!17423))))

(assert (=> d!846645 (= (lemmaSimplifySound!219 (reg!9707 r!17423) (_1!20157 lt!1042532)) lt!1042607)))

(declare-fun bs!528652 () Bool)

(assert (= bs!528652 d!846645))

(assert (=> bs!528652 m!3353665))

(declare-fun m!3353833 () Bool)

(assert (=> bs!528652 m!3353833))

(assert (=> bs!528652 m!3353665))

(assert (=> bs!528652 m!3353827))

(declare-fun m!3353835 () Bool)

(assert (=> bs!528652 m!3353835))

(assert (=> bs!528652 m!3353681))

(assert (=> b!3004200 d!846645))

(declare-fun b!3004434 () Bool)

(declare-fun e!1887050 () Bool)

(assert (=> b!3004434 (= e!1887050 (= (head!6694 (_1!20157 lt!1042532)) (c!494518 lt!1042530)))))

(declare-fun b!3004435 () Bool)

(declare-fun e!1887052 () Bool)

(declare-fun lt!1042608 () Bool)

(assert (=> b!3004435 (= e!1887052 (not lt!1042608))))

(declare-fun b!3004436 () Bool)

(declare-fun e!1887056 () Bool)

(assert (=> b!3004436 (= e!1887056 (not (= (head!6694 (_1!20157 lt!1042532)) (c!494518 lt!1042530))))))

(declare-fun b!3004437 () Bool)

(declare-fun e!1887053 () Bool)

(assert (=> b!3004437 (= e!1887053 (nullable!3037 lt!1042530))))

(declare-fun d!846647 () Bool)

(declare-fun e!1887055 () Bool)

(assert (=> d!846647 e!1887055))

(declare-fun c!494554 () Bool)

(assert (=> d!846647 (= c!494554 (is-EmptyExpr!9378 lt!1042530))))

(assert (=> d!846647 (= lt!1042608 e!1887053)))

(declare-fun c!494556 () Bool)

(assert (=> d!846647 (= c!494556 (isEmpty!19396 (_1!20157 lt!1042532)))))

(assert (=> d!846647 (validRegex!4111 lt!1042530)))

(assert (=> d!846647 (= (matchR!4260 lt!1042530 (_1!20157 lt!1042532)) lt!1042608)))

(declare-fun b!3004438 () Bool)

(assert (=> b!3004438 (= e!1887055 e!1887052)))

(declare-fun c!494555 () Bool)

(assert (=> b!3004438 (= c!494555 (is-EmptyLang!9378 lt!1042530))))

(declare-fun b!3004439 () Bool)

(declare-fun res!1238210 () Bool)

(assert (=> b!3004439 (=> res!1238210 e!1887056)))

(assert (=> b!3004439 (= res!1238210 (not (isEmpty!19396 (tail!4920 (_1!20157 lt!1042532)))))))

(declare-fun b!3004440 () Bool)

(declare-fun res!1238208 () Bool)

(assert (=> b!3004440 (=> (not res!1238208) (not e!1887050))))

(assert (=> b!3004440 (= res!1238208 (isEmpty!19396 (tail!4920 (_1!20157 lt!1042532))))))

(declare-fun b!3004441 () Bool)

(declare-fun res!1238212 () Bool)

(declare-fun e!1887054 () Bool)

(assert (=> b!3004441 (=> res!1238212 e!1887054)))

(assert (=> b!3004441 (= res!1238212 (not (is-ElementMatch!9378 lt!1042530)))))

(assert (=> b!3004441 (= e!1887052 e!1887054)))

(declare-fun b!3004442 () Bool)

(declare-fun call!202053 () Bool)

(assert (=> b!3004442 (= e!1887055 (= lt!1042608 call!202053))))

(declare-fun b!3004443 () Bool)

(declare-fun e!1887051 () Bool)

(assert (=> b!3004443 (= e!1887054 e!1887051)))

(declare-fun res!1238213 () Bool)

(assert (=> b!3004443 (=> (not res!1238213) (not e!1887051))))

(assert (=> b!3004443 (= res!1238213 (not lt!1042608))))

(declare-fun b!3004444 () Bool)

(assert (=> b!3004444 (= e!1887051 e!1887056)))

(declare-fun res!1238207 () Bool)

(assert (=> b!3004444 (=> res!1238207 e!1887056)))

(assert (=> b!3004444 (= res!1238207 call!202053)))

(declare-fun b!3004445 () Bool)

(declare-fun res!1238211 () Bool)

(assert (=> b!3004445 (=> (not res!1238211) (not e!1887050))))

(assert (=> b!3004445 (= res!1238211 (not call!202053))))

(declare-fun b!3004446 () Bool)

(assert (=> b!3004446 (= e!1887053 (matchR!4260 (derivativeStep!2635 lt!1042530 (head!6694 (_1!20157 lt!1042532))) (tail!4920 (_1!20157 lt!1042532))))))

(declare-fun bm!202048 () Bool)

(assert (=> bm!202048 (= call!202053 (isEmpty!19396 (_1!20157 lt!1042532)))))

(declare-fun b!3004447 () Bool)

(declare-fun res!1238209 () Bool)

(assert (=> b!3004447 (=> res!1238209 e!1887054)))

(assert (=> b!3004447 (= res!1238209 e!1887050)))

(declare-fun res!1238214 () Bool)

(assert (=> b!3004447 (=> (not res!1238214) (not e!1887050))))

(assert (=> b!3004447 (= res!1238214 lt!1042608)))

(assert (= (and d!846647 c!494556) b!3004437))

(assert (= (and d!846647 (not c!494556)) b!3004446))

(assert (= (and d!846647 c!494554) b!3004442))

(assert (= (and d!846647 (not c!494554)) b!3004438))

(assert (= (and b!3004438 c!494555) b!3004435))

(assert (= (and b!3004438 (not c!494555)) b!3004441))

(assert (= (and b!3004441 (not res!1238212)) b!3004447))

(assert (= (and b!3004447 res!1238214) b!3004445))

(assert (= (and b!3004445 res!1238211) b!3004440))

(assert (= (and b!3004440 res!1238208) b!3004434))

(assert (= (and b!3004447 (not res!1238209)) b!3004443))

(assert (= (and b!3004443 res!1238213) b!3004444))

(assert (= (and b!3004444 (not res!1238207)) b!3004439))

(assert (= (and b!3004439 (not res!1238210)) b!3004436))

(assert (= (or b!3004442 b!3004445 b!3004444) bm!202048))

(assert (=> b!3004434 m!3353817))

(declare-fun m!3353837 () Bool)

(assert (=> b!3004437 m!3353837))

(assert (=> b!3004440 m!3353821))

(assert (=> b!3004440 m!3353821))

(assert (=> b!3004440 m!3353823))

(assert (=> b!3004439 m!3353821))

(assert (=> b!3004439 m!3353821))

(assert (=> b!3004439 m!3353823))

(assert (=> d!846647 m!3353825))

(assert (=> d!846647 m!3353769))

(assert (=> b!3004436 m!3353817))

(assert (=> b!3004446 m!3353817))

(assert (=> b!3004446 m!3353817))

(declare-fun m!3353839 () Bool)

(assert (=> b!3004446 m!3353839))

(assert (=> b!3004446 m!3353821))

(assert (=> b!3004446 m!3353839))

(assert (=> b!3004446 m!3353821))

(declare-fun m!3353841 () Bool)

(assert (=> b!3004446 m!3353841))

(assert (=> bm!202048 m!3353825))

(assert (=> b!3004197 d!846647))

(declare-fun d!846649 () Bool)

(assert (=> d!846649 (= (get!10914 lt!1042539) (v!34890 lt!1042539))))

(assert (=> b!3004197 d!846649))

(declare-fun d!846651 () Bool)

(assert (=> d!846651 (= (isEmpty!19396 s!11993) (is-Nil!35119 s!11993))))

(assert (=> b!3004202 d!846651))

(declare-fun bs!528653 () Bool)

(declare-fun b!3004456 () Bool)

(assert (= bs!528653 (and b!3004456 b!3004206)))

(declare-fun lambda!112327 () Int)

(assert (=> bs!528653 (not (= lambda!112327 lambda!112293))))

(declare-fun bs!528654 () Bool)

(assert (= bs!528654 (and b!3004456 d!846623)))

(assert (=> bs!528654 (not (= lambda!112327 lambda!112321))))

(assert (=> bs!528653 (= (= (reg!9707 lt!1042537) lt!1042530) (= lambda!112327 lambda!112294))))

(declare-fun bs!528655 () Bool)

(assert (= bs!528655 (and b!3004456 d!846617)))

(assert (=> bs!528655 (not (= lambda!112327 lambda!112314))))

(declare-fun bs!528656 () Bool)

(assert (= bs!528656 (and b!3004456 b!3004309)))

(assert (=> bs!528656 (not (= lambda!112327 lambda!112308))))

(assert (=> bs!528654 (= (and (= (reg!9707 lt!1042537) lt!1042530) (= lt!1042537 (Star!9378 lt!1042530))) (= lambda!112327 lambda!112322))))

(declare-fun bs!528657 () Bool)

(assert (= bs!528657 (and b!3004456 b!3004312)))

(assert (=> bs!528657 (= (and (= (reg!9707 lt!1042537) (reg!9707 r!17423)) (= lt!1042537 r!17423)) (= lambda!112327 lambda!112307))))

(assert (=> b!3004456 true))

(assert (=> b!3004456 true))

(declare-fun bs!528658 () Bool)

(declare-fun b!3004453 () Bool)

(assert (= bs!528658 (and b!3004453 b!3004206)))

(declare-fun lambda!112328 () Int)

(assert (=> bs!528658 (not (= lambda!112328 lambda!112293))))

(declare-fun bs!528659 () Bool)

(assert (= bs!528659 (and b!3004453 d!846623)))

(assert (=> bs!528659 (not (= lambda!112328 lambda!112321))))

(assert (=> bs!528658 (not (= lambda!112328 lambda!112294))))

(declare-fun bs!528660 () Bool)

(assert (= bs!528660 (and b!3004453 d!846617)))

(assert (=> bs!528660 (not (= lambda!112328 lambda!112314))))

(declare-fun bs!528661 () Bool)

(assert (= bs!528661 (and b!3004453 b!3004309)))

(assert (=> bs!528661 (= (and (= (regOne!19268 lt!1042537) (regOne!19268 r!17423)) (= (regTwo!19268 lt!1042537) (regTwo!19268 r!17423))) (= lambda!112328 lambda!112308))))

(assert (=> bs!528659 (not (= lambda!112328 lambda!112322))))

(declare-fun bs!528662 () Bool)

(assert (= bs!528662 (and b!3004453 b!3004456)))

(assert (=> bs!528662 (not (= lambda!112328 lambda!112327))))

(declare-fun bs!528663 () Bool)

(assert (= bs!528663 (and b!3004453 b!3004312)))

(assert (=> bs!528663 (not (= lambda!112328 lambda!112307))))

(assert (=> b!3004453 true))

(assert (=> b!3004453 true))

(declare-fun b!3004448 () Bool)

(declare-fun e!1887063 () Bool)

(declare-fun e!1887059 () Bool)

(assert (=> b!3004448 (= e!1887063 e!1887059)))

(declare-fun c!494560 () Bool)

(assert (=> b!3004448 (= c!494560 (is-Star!9378 lt!1042537))))

(declare-fun d!846653 () Bool)

(declare-fun c!494559 () Bool)

(assert (=> d!846653 (= c!494559 (is-EmptyExpr!9378 lt!1042537))))

(declare-fun e!1887057 () Bool)

(assert (=> d!846653 (= (matchRSpec!1515 lt!1042537 s!11993) e!1887057)))

(declare-fun b!3004449 () Bool)

(declare-fun res!1238216 () Bool)

(declare-fun e!1887058 () Bool)

(assert (=> b!3004449 (=> res!1238216 e!1887058)))

(declare-fun call!202055 () Bool)

(assert (=> b!3004449 (= res!1238216 call!202055)))

(assert (=> b!3004449 (= e!1887059 e!1887058)))

(declare-fun b!3004450 () Bool)

(declare-fun c!494558 () Bool)

(assert (=> b!3004450 (= c!494558 (is-ElementMatch!9378 lt!1042537))))

(declare-fun e!1887061 () Bool)

(declare-fun e!1887062 () Bool)

(assert (=> b!3004450 (= e!1887061 e!1887062)))

(declare-fun b!3004451 () Bool)

(declare-fun c!494557 () Bool)

(assert (=> b!3004451 (= c!494557 (is-Union!9378 lt!1042537))))

(assert (=> b!3004451 (= e!1887062 e!1887063)))

(declare-fun b!3004452 () Bool)

(assert (=> b!3004452 (= e!1887057 e!1887061)))

(declare-fun res!1238215 () Bool)

(assert (=> b!3004452 (= res!1238215 (not (is-EmptyLang!9378 lt!1042537)))))

(assert (=> b!3004452 (=> (not res!1238215) (not e!1887061))))

(declare-fun call!202054 () Bool)

(assert (=> b!3004453 (= e!1887059 call!202054)))

(declare-fun b!3004454 () Bool)

(declare-fun e!1887060 () Bool)

(assert (=> b!3004454 (= e!1887060 (matchRSpec!1515 (regTwo!19269 lt!1042537) s!11993))))

(declare-fun b!3004455 () Bool)

(assert (=> b!3004455 (= e!1887063 e!1887060)))

(declare-fun res!1238217 () Bool)

(assert (=> b!3004455 (= res!1238217 (matchRSpec!1515 (regOne!19269 lt!1042537) s!11993))))

(assert (=> b!3004455 (=> res!1238217 e!1887060)))

(assert (=> b!3004456 (= e!1887058 call!202054)))

(declare-fun bm!202049 () Bool)

(assert (=> bm!202049 (= call!202055 (isEmpty!19396 s!11993))))

(declare-fun b!3004457 () Bool)

(assert (=> b!3004457 (= e!1887062 (= s!11993 (Cons!35119 (c!494518 lt!1042537) Nil!35119)))))

(declare-fun b!3004458 () Bool)

(assert (=> b!3004458 (= e!1887057 call!202055)))

(declare-fun bm!202050 () Bool)

(assert (=> bm!202050 (= call!202054 (Exists!1647 (ite c!494560 lambda!112327 lambda!112328)))))

(assert (= (and d!846653 c!494559) b!3004458))

(assert (= (and d!846653 (not c!494559)) b!3004452))

(assert (= (and b!3004452 res!1238215) b!3004450))

(assert (= (and b!3004450 c!494558) b!3004457))

(assert (= (and b!3004450 (not c!494558)) b!3004451))

(assert (= (and b!3004451 c!494557) b!3004455))

(assert (= (and b!3004451 (not c!494557)) b!3004448))

(assert (= (and b!3004455 (not res!1238217)) b!3004454))

(assert (= (and b!3004448 c!494560) b!3004449))

(assert (= (and b!3004448 (not c!494560)) b!3004453))

(assert (= (and b!3004449 (not res!1238216)) b!3004456))

(assert (= (or b!3004456 b!3004453) bm!202050))

(assert (= (or b!3004458 b!3004449) bm!202049))

(declare-fun m!3353843 () Bool)

(assert (=> b!3004454 m!3353843))

(declare-fun m!3353845 () Bool)

(assert (=> b!3004455 m!3353845))

(assert (=> bm!202049 m!3353671))

(declare-fun m!3353847 () Bool)

(assert (=> bm!202050 m!3353847))

(assert (=> b!3004202 d!846653))

(declare-fun d!846655 () Bool)

(assert (=> d!846655 (= (matchR!4260 lt!1042537 s!11993) (matchRSpec!1515 lt!1042537 s!11993))))

(declare-fun lt!1042609 () Unit!49171)

(assert (=> d!846655 (= lt!1042609 (choose!17824 lt!1042537 s!11993))))

(assert (=> d!846655 (validRegex!4111 lt!1042537)))

(assert (=> d!846655 (= (mainMatchTheorem!1515 lt!1042537 s!11993) lt!1042609)))

(declare-fun bs!528664 () Bool)

(assert (= bs!528664 d!846655))

(assert (=> bs!528664 m!3353669))

(assert (=> bs!528664 m!3353673))

(declare-fun m!3353849 () Bool)

(assert (=> bs!528664 m!3353849))

(declare-fun m!3353851 () Bool)

(assert (=> bs!528664 m!3353851))

(assert (=> b!3004202 d!846655))

(declare-fun b!3004479 () Bool)

(declare-fun res!1238224 () Bool)

(declare-fun e!1887075 () Bool)

(assert (=> b!3004479 (=> (not res!1238224) (not e!1887075))))

(declare-fun lt!1042618 () List!35243)

(assert (=> b!3004479 (= res!1238224 (= (size!26508 lt!1042618) (+ (size!26508 (_1!20157 lt!1042532)) (size!26508 (_2!20157 lt!1042532)))))))

(declare-fun d!846657 () Bool)

(assert (=> d!846657 e!1887075))

(declare-fun res!1238225 () Bool)

(assert (=> d!846657 (=> (not res!1238225) (not e!1887075))))

(declare-fun content!4777 (List!35243) (Set C!18942))

(assert (=> d!846657 (= res!1238225 (= (content!4777 lt!1042618) (set.union (content!4777 (_1!20157 lt!1042532)) (content!4777 (_2!20157 lt!1042532)))))))

(declare-fun e!1887074 () List!35243)

(assert (=> d!846657 (= lt!1042618 e!1887074)))

(declare-fun c!494567 () Bool)

(assert (=> d!846657 (= c!494567 (is-Nil!35119 (_1!20157 lt!1042532)))))

(assert (=> d!846657 (= (++!8406 (_1!20157 lt!1042532) (_2!20157 lt!1042532)) lt!1042618)))

(declare-fun b!3004480 () Bool)

(assert (=> b!3004480 (= e!1887075 (or (not (= (_2!20157 lt!1042532) Nil!35119)) (= lt!1042618 (_1!20157 lt!1042532))))))

(declare-fun b!3004477 () Bool)

(assert (=> b!3004477 (= e!1887074 (_2!20157 lt!1042532))))

(declare-fun b!3004478 () Bool)

(assert (=> b!3004478 (= e!1887074 (Cons!35119 (h!40539 (_1!20157 lt!1042532)) (++!8406 (t!234308 (_1!20157 lt!1042532)) (_2!20157 lt!1042532))))))

(assert (= (and d!846657 c!494567) b!3004477))

(assert (= (and d!846657 (not c!494567)) b!3004478))

(assert (= (and d!846657 res!1238225) b!3004479))

(assert (= (and b!3004479 res!1238224) b!3004480))

(declare-fun m!3353853 () Bool)

(assert (=> b!3004479 m!3353853))

(declare-fun m!3353855 () Bool)

(assert (=> b!3004479 m!3353855))

(assert (=> b!3004479 m!3353677))

(declare-fun m!3353857 () Bool)

(assert (=> d!846657 m!3353857))

(declare-fun m!3353859 () Bool)

(assert (=> d!846657 m!3353859))

(declare-fun m!3353861 () Bool)

(assert (=> d!846657 m!3353861))

(declare-fun m!3353863 () Bool)

(assert (=> b!3004478 m!3353863))

(assert (=> b!3004198 d!846657))

(declare-fun b!3004485 () Bool)

(declare-fun e!1887080 () Bool)

(assert (=> b!3004485 (= e!1887080 (= (head!6694 (_2!20157 lt!1042532)) (c!494518 lt!1042537)))))

(declare-fun b!3004486 () Bool)

(declare-fun e!1887082 () Bool)

(declare-fun lt!1042619 () Bool)

(assert (=> b!3004486 (= e!1887082 (not lt!1042619))))

(declare-fun b!3004487 () Bool)

(declare-fun e!1887086 () Bool)

(assert (=> b!3004487 (= e!1887086 (not (= (head!6694 (_2!20157 lt!1042532)) (c!494518 lt!1042537))))))

(declare-fun b!3004488 () Bool)

(declare-fun e!1887083 () Bool)

(assert (=> b!3004488 (= e!1887083 (nullable!3037 lt!1042537))))

(declare-fun d!846659 () Bool)

(declare-fun e!1887085 () Bool)

(assert (=> d!846659 e!1887085))

(declare-fun c!494568 () Bool)

(assert (=> d!846659 (= c!494568 (is-EmptyExpr!9378 lt!1042537))))

(assert (=> d!846659 (= lt!1042619 e!1887083)))

(declare-fun c!494570 () Bool)

(assert (=> d!846659 (= c!494570 (isEmpty!19396 (_2!20157 lt!1042532)))))

(assert (=> d!846659 (validRegex!4111 lt!1042537)))

(assert (=> d!846659 (= (matchR!4260 lt!1042537 (_2!20157 lt!1042532)) lt!1042619)))

(declare-fun b!3004489 () Bool)

(assert (=> b!3004489 (= e!1887085 e!1887082)))

(declare-fun c!494569 () Bool)

(assert (=> b!3004489 (= c!494569 (is-EmptyLang!9378 lt!1042537))))

(declare-fun b!3004490 () Bool)

(declare-fun res!1238235 () Bool)

(assert (=> b!3004490 (=> res!1238235 e!1887086)))

(assert (=> b!3004490 (= res!1238235 (not (isEmpty!19396 (tail!4920 (_2!20157 lt!1042532)))))))

(declare-fun b!3004491 () Bool)

(declare-fun res!1238233 () Bool)

(assert (=> b!3004491 (=> (not res!1238233) (not e!1887080))))

(assert (=> b!3004491 (= res!1238233 (isEmpty!19396 (tail!4920 (_2!20157 lt!1042532))))))

(declare-fun b!3004492 () Bool)

(declare-fun res!1238237 () Bool)

(declare-fun e!1887084 () Bool)

(assert (=> b!3004492 (=> res!1238237 e!1887084)))

(assert (=> b!3004492 (= res!1238237 (not (is-ElementMatch!9378 lt!1042537)))))

(assert (=> b!3004492 (= e!1887082 e!1887084)))

(declare-fun b!3004493 () Bool)

(declare-fun call!202056 () Bool)

(assert (=> b!3004493 (= e!1887085 (= lt!1042619 call!202056))))

(declare-fun b!3004494 () Bool)

(declare-fun e!1887081 () Bool)

(assert (=> b!3004494 (= e!1887084 e!1887081)))

(declare-fun res!1238238 () Bool)

(assert (=> b!3004494 (=> (not res!1238238) (not e!1887081))))

(assert (=> b!3004494 (= res!1238238 (not lt!1042619))))

(declare-fun b!3004495 () Bool)

(assert (=> b!3004495 (= e!1887081 e!1887086)))

(declare-fun res!1238232 () Bool)

(assert (=> b!3004495 (=> res!1238232 e!1887086)))

(assert (=> b!3004495 (= res!1238232 call!202056)))

(declare-fun b!3004496 () Bool)

(declare-fun res!1238236 () Bool)

(assert (=> b!3004496 (=> (not res!1238236) (not e!1887080))))

(assert (=> b!3004496 (= res!1238236 (not call!202056))))

(declare-fun b!3004497 () Bool)

(assert (=> b!3004497 (= e!1887083 (matchR!4260 (derivativeStep!2635 lt!1042537 (head!6694 (_2!20157 lt!1042532))) (tail!4920 (_2!20157 lt!1042532))))))

(declare-fun bm!202051 () Bool)

(assert (=> bm!202051 (= call!202056 (isEmpty!19396 (_2!20157 lt!1042532)))))

(declare-fun b!3004498 () Bool)

(declare-fun res!1238234 () Bool)

(assert (=> b!3004498 (=> res!1238234 e!1887084)))

(assert (=> b!3004498 (= res!1238234 e!1887080)))

(declare-fun res!1238239 () Bool)

(assert (=> b!3004498 (=> (not res!1238239) (not e!1887080))))

(assert (=> b!3004498 (= res!1238239 lt!1042619)))

(assert (= (and d!846659 c!494570) b!3004488))

(assert (= (and d!846659 (not c!494570)) b!3004497))

(assert (= (and d!846659 c!494568) b!3004493))

(assert (= (and d!846659 (not c!494568)) b!3004489))

(assert (= (and b!3004489 c!494569) b!3004486))

(assert (= (and b!3004489 (not c!494569)) b!3004492))

(assert (= (and b!3004492 (not res!1238237)) b!3004498))

(assert (= (and b!3004498 res!1238239) b!3004496))

(assert (= (and b!3004496 res!1238236) b!3004491))

(assert (= (and b!3004491 res!1238233) b!3004485))

(assert (= (and b!3004498 (not res!1238234)) b!3004494))

(assert (= (and b!3004494 res!1238238) b!3004495))

(assert (= (and b!3004495 (not res!1238232)) b!3004490))

(assert (= (and b!3004490 (not res!1238235)) b!3004487))

(assert (= (or b!3004493 b!3004496 b!3004495) bm!202051))

(declare-fun m!3353865 () Bool)

(assert (=> b!3004485 m!3353865))

(declare-fun m!3353867 () Bool)

(assert (=> b!3004488 m!3353867))

(declare-fun m!3353869 () Bool)

(assert (=> b!3004491 m!3353869))

(assert (=> b!3004491 m!3353869))

(declare-fun m!3353871 () Bool)

(assert (=> b!3004491 m!3353871))

(assert (=> b!3004490 m!3353869))

(assert (=> b!3004490 m!3353869))

(assert (=> b!3004490 m!3353871))

(declare-fun m!3353873 () Bool)

(assert (=> d!846659 m!3353873))

(assert (=> d!846659 m!3353851))

(assert (=> b!3004487 m!3353865))

(assert (=> b!3004497 m!3353865))

(assert (=> b!3004497 m!3353865))

(declare-fun m!3353875 () Bool)

(assert (=> b!3004497 m!3353875))

(assert (=> b!3004497 m!3353869))

(assert (=> b!3004497 m!3353875))

(assert (=> b!3004497 m!3353869))

(declare-fun m!3353877 () Bool)

(assert (=> b!3004497 m!3353877))

(assert (=> bm!202051 m!3353873))

(assert (=> b!3004194 d!846659))

(declare-fun d!846661 () Bool)

(assert (=> d!846661 (= (isEmptyLang!468 lt!1042530) (is-EmptyLang!9378 lt!1042530))))

(assert (=> b!3004199 d!846661))

(declare-fun b!3004570 () Bool)

(declare-fun e!1887130 () Regex!9378)

(assert (=> b!3004570 (= e!1887130 (reg!9707 r!17423))))

(declare-fun b!3004571 () Bool)

(declare-fun e!1887136 () Bool)

(declare-fun call!202072 () Bool)

(assert (=> b!3004571 (= e!1887136 call!202072)))

(declare-fun b!3004572 () Bool)

(declare-fun e!1887132 () Regex!9378)

(assert (=> b!3004572 (= e!1887132 e!1887130)))

(declare-fun c!494603 () Bool)

(assert (=> b!3004572 (= c!494603 (is-ElementMatch!9378 (reg!9707 r!17423)))))

(declare-fun b!3004573 () Bool)

(declare-fun c!494605 () Bool)

(declare-fun call!202071 () Bool)

(assert (=> b!3004573 (= c!494605 call!202071)))

(declare-fun e!1887137 () Regex!9378)

(declare-fun e!1887134 () Regex!9378)

(assert (=> b!3004573 (= e!1887137 e!1887134)))

(declare-fun b!3004574 () Bool)

(declare-fun e!1887125 () Regex!9378)

(assert (=> b!3004574 (= e!1887125 e!1887137)))

(declare-fun lt!1042644 () Regex!9378)

(declare-fun call!202077 () Regex!9378)

(assert (=> b!3004574 (= lt!1042644 call!202077)))

(declare-fun lt!1042639 () Regex!9378)

(declare-fun call!202074 () Regex!9378)

(assert (=> b!3004574 (= lt!1042639 call!202074)))

(declare-fun c!494606 () Bool)

(declare-fun call!202073 () Bool)

(assert (=> b!3004574 (= c!494606 call!202073)))

(declare-fun b!3004575 () Bool)

(declare-fun e!1887133 () Regex!9378)

(declare-fun lt!1042642 () Regex!9378)

(assert (=> b!3004575 (= e!1887133 lt!1042642)))

(declare-fun bm!202066 () Bool)

(declare-fun c!494609 () Bool)

(assert (=> bm!202066 (= call!202077 (simplify!369 (ite c!494609 (regOne!19269 (reg!9707 r!17423)) (regTwo!19268 (reg!9707 r!17423)))))))

(declare-fun b!3004577 () Bool)

(declare-fun e!1887131 () Regex!9378)

(assert (=> b!3004577 (= e!1887131 EmptyExpr!9378)))

(declare-fun b!3004578 () Bool)

(declare-fun e!1887126 () Regex!9378)

(assert (=> b!3004578 (= e!1887126 EmptyExpr!9378)))

(declare-fun b!3004579 () Bool)

(declare-fun e!1887124 () Regex!9378)

(declare-fun lt!1042640 () Regex!9378)

(assert (=> b!3004579 (= e!1887124 lt!1042640)))

(declare-fun b!3004580 () Bool)

(declare-fun c!494601 () Bool)

(declare-fun isEmptyExpr!480 (Regex!9378) Bool)

(assert (=> b!3004580 (= c!494601 (isEmptyExpr!480 lt!1042642))))

(declare-fun e!1887129 () Regex!9378)

(assert (=> b!3004580 (= e!1887129 e!1887124)))

(declare-fun bm!202067 () Bool)

(declare-fun c!494604 () Bool)

(declare-fun lt!1042641 () Regex!9378)

(assert (=> bm!202067 (= call!202072 (isEmptyExpr!480 (ite c!494604 lt!1042641 lt!1042640)))))

(declare-fun call!202076 () Regex!9378)

(declare-fun bm!202068 () Bool)

(assert (=> bm!202068 (= call!202076 (simplify!369 (ite c!494604 (reg!9707 (reg!9707 r!17423)) (ite c!494609 (regTwo!19269 (reg!9707 r!17423)) (regOne!19268 (reg!9707 r!17423))))))))

(declare-fun b!3004581 () Bool)

(declare-fun e!1887128 () Bool)

(assert (=> b!3004581 (= e!1887128 call!202073)))

(declare-fun b!3004582 () Bool)

(assert (=> b!3004582 (= c!494609 (is-Union!9378 (reg!9707 r!17423)))))

(declare-fun e!1887127 () Regex!9378)

(assert (=> b!3004582 (= e!1887127 e!1887125)))

(declare-fun b!3004583 () Bool)

(assert (=> b!3004583 (= e!1887132 EmptyLang!9378)))

(declare-fun bm!202069 () Bool)

(declare-fun call!202075 () Bool)

(assert (=> bm!202069 (= call!202075 (isEmptyLang!468 (ite c!494604 lt!1042641 (ite c!494609 lt!1042644 lt!1042640))))))

(declare-fun b!3004584 () Bool)

(assert (=> b!3004584 (= e!1887137 lt!1042639)))

(declare-fun b!3004585 () Bool)

(declare-fun c!494599 () Bool)

(assert (=> b!3004585 (= c!494599 e!1887136)))

(declare-fun res!1238253 () Bool)

(assert (=> b!3004585 (=> res!1238253 e!1887136)))

(assert (=> b!3004585 (= res!1238253 call!202075)))

(assert (=> b!3004585 (= lt!1042641 call!202076)))

(assert (=> b!3004585 (= e!1887127 e!1887131)))

(declare-fun b!3004586 () Bool)

(declare-fun e!1887135 () Bool)

(declare-fun lt!1042643 () Regex!9378)

(assert (=> b!3004586 (= e!1887135 (= (nullable!3037 lt!1042643) (nullable!3037 (reg!9707 r!17423))))))

(declare-fun b!3004587 () Bool)

(assert (=> b!3004587 (= e!1887134 (Union!9378 lt!1042644 lt!1042639))))

(declare-fun b!3004588 () Bool)

(assert (=> b!3004588 (= e!1887124 e!1887133)))

(declare-fun c!494608 () Bool)

(assert (=> b!3004588 (= c!494608 call!202072)))

(declare-fun b!3004589 () Bool)

(assert (=> b!3004589 (= e!1887126 e!1887127)))

(assert (=> b!3004589 (= c!494604 (is-Star!9378 (reg!9707 r!17423)))))

(declare-fun b!3004590 () Bool)

(assert (=> b!3004590 (= e!1887129 EmptyLang!9378)))

(declare-fun b!3004576 () Bool)

(assert (=> b!3004576 (= e!1887133 (Concat!14699 lt!1042642 lt!1042640))))

(declare-fun d!846663 () Bool)

(assert (=> d!846663 e!1887135))

(declare-fun res!1238254 () Bool)

(assert (=> d!846663 (=> (not res!1238254) (not e!1887135))))

(assert (=> d!846663 (= res!1238254 (validRegex!4111 lt!1042643))))

(assert (=> d!846663 (= lt!1042643 e!1887132)))

(declare-fun c!494600 () Bool)

(assert (=> d!846663 (= c!494600 (is-EmptyLang!9378 (reg!9707 r!17423)))))

(assert (=> d!846663 (validRegex!4111 (reg!9707 r!17423))))

(assert (=> d!846663 (= (simplify!369 (reg!9707 r!17423)) lt!1042643)))

(declare-fun b!3004591 () Bool)

(declare-fun c!494602 () Bool)

(assert (=> b!3004591 (= c!494602 (is-EmptyExpr!9378 (reg!9707 r!17423)))))

(assert (=> b!3004591 (= e!1887130 e!1887126)))

(declare-fun b!3004592 () Bool)

(assert (=> b!3004592 (= e!1887134 lt!1042644)))

(declare-fun bm!202070 () Bool)

(assert (=> bm!202070 (= call!202071 (isEmptyLang!468 (ite c!494609 lt!1042639 lt!1042642)))))

(declare-fun bm!202071 () Bool)

(assert (=> bm!202071 (= call!202073 call!202075)))

(declare-fun b!3004593 () Bool)

(assert (=> b!3004593 (= e!1887131 (Star!9378 lt!1042641))))

(declare-fun b!3004594 () Bool)

(assert (=> b!3004594 (= e!1887125 e!1887129)))

(assert (=> b!3004594 (= lt!1042642 call!202074)))

(assert (=> b!3004594 (= lt!1042640 call!202077)))

(declare-fun res!1238255 () Bool)

(assert (=> b!3004594 (= res!1238255 call!202071)))

(assert (=> b!3004594 (=> res!1238255 e!1887128)))

(declare-fun c!494607 () Bool)

(assert (=> b!3004594 (= c!494607 e!1887128)))

(declare-fun bm!202072 () Bool)

(assert (=> bm!202072 (= call!202074 call!202076)))

(assert (= (and d!846663 c!494600) b!3004583))

(assert (= (and d!846663 (not c!494600)) b!3004572))

(assert (= (and b!3004572 c!494603) b!3004570))

(assert (= (and b!3004572 (not c!494603)) b!3004591))

(assert (= (and b!3004591 c!494602) b!3004578))

(assert (= (and b!3004591 (not c!494602)) b!3004589))

(assert (= (and b!3004589 c!494604) b!3004585))

(assert (= (and b!3004589 (not c!494604)) b!3004582))

(assert (= (and b!3004585 (not res!1238253)) b!3004571))

(assert (= (and b!3004585 c!494599) b!3004577))

(assert (= (and b!3004585 (not c!494599)) b!3004593))

(assert (= (and b!3004582 c!494609) b!3004574))

(assert (= (and b!3004582 (not c!494609)) b!3004594))

(assert (= (and b!3004574 c!494606) b!3004584))

(assert (= (and b!3004574 (not c!494606)) b!3004573))

(assert (= (and b!3004573 c!494605) b!3004592))

(assert (= (and b!3004573 (not c!494605)) b!3004587))

(assert (= (and b!3004594 (not res!1238255)) b!3004581))

(assert (= (and b!3004594 c!494607) b!3004590))

(assert (= (and b!3004594 (not c!494607)) b!3004580))

(assert (= (and b!3004580 c!494601) b!3004579))

(assert (= (and b!3004580 (not c!494601)) b!3004588))

(assert (= (and b!3004588 c!494608) b!3004575))

(assert (= (and b!3004588 (not c!494608)) b!3004576))

(assert (= (or b!3004574 b!3004594) bm!202066))

(assert (= (or b!3004574 b!3004594) bm!202072))

(assert (= (or b!3004573 b!3004594) bm!202070))

(assert (= (or b!3004574 b!3004581) bm!202071))

(assert (= (or b!3004571 b!3004588) bm!202067))

(assert (= (or b!3004585 bm!202072) bm!202068))

(assert (= (or b!3004585 bm!202071) bm!202069))

(assert (= (and d!846663 res!1238254) b!3004586))

(declare-fun m!3353903 () Bool)

(assert (=> b!3004580 m!3353903))

(declare-fun m!3353905 () Bool)

(assert (=> bm!202068 m!3353905))

(declare-fun m!3353907 () Bool)

(assert (=> bm!202066 m!3353907))

(declare-fun m!3353909 () Bool)

(assert (=> bm!202069 m!3353909))

(declare-fun m!3353911 () Bool)

(assert (=> bm!202070 m!3353911))

(declare-fun m!3353913 () Bool)

(assert (=> bm!202067 m!3353913))

(declare-fun m!3353915 () Bool)

(assert (=> b!3004586 m!3353915))

(assert (=> b!3004586 m!3353819))

(declare-fun m!3353917 () Bool)

(assert (=> d!846663 m!3353917))

(assert (=> d!846663 m!3353827))

(assert (=> b!3004199 d!846663))

(declare-fun b!3004617 () Bool)

(declare-fun res!1238268 () Bool)

(declare-fun e!1887154 () Bool)

(assert (=> b!3004617 (=> res!1238268 e!1887154)))

(assert (=> b!3004617 (= res!1238268 (not (is-Concat!14699 r!17423)))))

(declare-fun e!1887158 () Bool)

(assert (=> b!3004617 (= e!1887158 e!1887154)))

(declare-fun b!3004618 () Bool)

(declare-fun e!1887155 () Bool)

(declare-fun call!202086 () Bool)

(assert (=> b!3004618 (= e!1887155 call!202086)))

(declare-fun b!3004619 () Bool)

(declare-fun e!1887160 () Bool)

(declare-fun e!1887157 () Bool)

(assert (=> b!3004619 (= e!1887160 e!1887157)))

(declare-fun c!494617 () Bool)

(assert (=> b!3004619 (= c!494617 (is-Star!9378 r!17423))))

(declare-fun b!3004620 () Bool)

(declare-fun e!1887156 () Bool)

(assert (=> b!3004620 (= e!1887154 e!1887156)))

(declare-fun res!1238266 () Bool)

(assert (=> b!3004620 (=> (not res!1238266) (not e!1887156))))

(assert (=> b!3004620 (= res!1238266 call!202086)))

(declare-fun bm!202079 () Bool)

(declare-fun call!202085 () Bool)

(declare-fun c!494616 () Bool)

(assert (=> bm!202079 (= call!202085 (validRegex!4111 (ite c!494616 (regOne!19269 r!17423) (regTwo!19268 r!17423))))))

(declare-fun d!846671 () Bool)

(declare-fun res!1238267 () Bool)

(assert (=> d!846671 (=> res!1238267 e!1887160)))

(assert (=> d!846671 (= res!1238267 (is-ElementMatch!9378 r!17423))))

(assert (=> d!846671 (= (validRegex!4111 r!17423) e!1887160)))

(declare-fun b!3004621 () Bool)

(assert (=> b!3004621 (= e!1887157 e!1887158)))

(assert (=> b!3004621 (= c!494616 (is-Union!9378 r!17423))))

(declare-fun b!3004622 () Bool)

(declare-fun e!1887159 () Bool)

(assert (=> b!3004622 (= e!1887157 e!1887159)))

(declare-fun res!1238269 () Bool)

(assert (=> b!3004622 (= res!1238269 (not (nullable!3037 (reg!9707 r!17423))))))

(assert (=> b!3004622 (=> (not res!1238269) (not e!1887159))))

(declare-fun b!3004623 () Bool)

(declare-fun call!202084 () Bool)

(assert (=> b!3004623 (= e!1887159 call!202084)))

(declare-fun bm!202080 () Bool)

(assert (=> bm!202080 (= call!202084 (validRegex!4111 (ite c!494617 (reg!9707 r!17423) (ite c!494616 (regTwo!19269 r!17423) (regOne!19268 r!17423)))))))

(declare-fun bm!202081 () Bool)

(assert (=> bm!202081 (= call!202086 call!202084)))

(declare-fun b!3004624 () Bool)

(declare-fun res!1238270 () Bool)

(assert (=> b!3004624 (=> (not res!1238270) (not e!1887155))))

(assert (=> b!3004624 (= res!1238270 call!202085)))

(assert (=> b!3004624 (= e!1887158 e!1887155)))

(declare-fun b!3004625 () Bool)

(assert (=> b!3004625 (= e!1887156 call!202085)))

(assert (= (and d!846671 (not res!1238267)) b!3004619))

(assert (= (and b!3004619 c!494617) b!3004622))

(assert (= (and b!3004619 (not c!494617)) b!3004621))

(assert (= (and b!3004622 res!1238269) b!3004623))

(assert (= (and b!3004621 c!494616) b!3004624))

(assert (= (and b!3004621 (not c!494616)) b!3004617))

(assert (= (and b!3004624 res!1238270) b!3004618))

(assert (= (and b!3004617 (not res!1238268)) b!3004620))

(assert (= (and b!3004620 res!1238266) b!3004625))

(assert (= (or b!3004624 b!3004625) bm!202079))

(assert (= (or b!3004618 b!3004620) bm!202081))

(assert (= (or b!3004623 bm!202081) bm!202080))

(declare-fun m!3353919 () Bool)

(assert (=> bm!202079 m!3353919))

(assert (=> b!3004622 m!3353819))

(declare-fun m!3353921 () Bool)

(assert (=> bm!202080 m!3353921))

(assert (=> start!289522 d!846671))

(declare-fun b!3004640 () Bool)

(declare-fun e!1887169 () Bool)

(assert (=> b!3004640 (= e!1887169 (= (head!6694 s!11993) (c!494518 lt!1042537)))))

(declare-fun b!3004641 () Bool)

(declare-fun e!1887171 () Bool)

(declare-fun lt!1042647 () Bool)

(assert (=> b!3004641 (= e!1887171 (not lt!1042647))))

(declare-fun b!3004642 () Bool)

(declare-fun e!1887175 () Bool)

(assert (=> b!3004642 (= e!1887175 (not (= (head!6694 s!11993) (c!494518 lt!1042537))))))

(declare-fun b!3004643 () Bool)

(declare-fun e!1887172 () Bool)

(assert (=> b!3004643 (= e!1887172 (nullable!3037 lt!1042537))))

(declare-fun d!846673 () Bool)

(declare-fun e!1887174 () Bool)

(assert (=> d!846673 e!1887174))

(declare-fun c!494622 () Bool)

(assert (=> d!846673 (= c!494622 (is-EmptyExpr!9378 lt!1042537))))

(assert (=> d!846673 (= lt!1042647 e!1887172)))

(declare-fun c!494624 () Bool)

(assert (=> d!846673 (= c!494624 (isEmpty!19396 s!11993))))

(assert (=> d!846673 (validRegex!4111 lt!1042537)))

(assert (=> d!846673 (= (matchR!4260 lt!1042537 s!11993) lt!1042647)))

(declare-fun b!3004644 () Bool)

(assert (=> b!3004644 (= e!1887174 e!1887171)))

(declare-fun c!494623 () Bool)

(assert (=> b!3004644 (= c!494623 (is-EmptyLang!9378 lt!1042537))))

(declare-fun b!3004645 () Bool)

(declare-fun res!1238282 () Bool)

(assert (=> b!3004645 (=> res!1238282 e!1887175)))

(assert (=> b!3004645 (= res!1238282 (not (isEmpty!19396 (tail!4920 s!11993))))))

(declare-fun b!3004646 () Bool)

(declare-fun res!1238280 () Bool)

(assert (=> b!3004646 (=> (not res!1238280) (not e!1887169))))

(assert (=> b!3004646 (= res!1238280 (isEmpty!19396 (tail!4920 s!11993)))))

(declare-fun b!3004647 () Bool)

(declare-fun res!1238284 () Bool)

(declare-fun e!1887173 () Bool)

(assert (=> b!3004647 (=> res!1238284 e!1887173)))

(assert (=> b!3004647 (= res!1238284 (not (is-ElementMatch!9378 lt!1042537)))))

(assert (=> b!3004647 (= e!1887171 e!1887173)))

(declare-fun b!3004648 () Bool)

(declare-fun call!202087 () Bool)

(assert (=> b!3004648 (= e!1887174 (= lt!1042647 call!202087))))

(declare-fun b!3004649 () Bool)

(declare-fun e!1887170 () Bool)

(assert (=> b!3004649 (= e!1887173 e!1887170)))

(declare-fun res!1238285 () Bool)

(assert (=> b!3004649 (=> (not res!1238285) (not e!1887170))))

(assert (=> b!3004649 (= res!1238285 (not lt!1042647))))

(declare-fun b!3004650 () Bool)

(assert (=> b!3004650 (= e!1887170 e!1887175)))

(declare-fun res!1238278 () Bool)

(assert (=> b!3004650 (=> res!1238278 e!1887175)))

(assert (=> b!3004650 (= res!1238278 call!202087)))

(declare-fun b!3004651 () Bool)

(declare-fun res!1238283 () Bool)

(assert (=> b!3004651 (=> (not res!1238283) (not e!1887169))))

(assert (=> b!3004651 (= res!1238283 (not call!202087))))

(declare-fun b!3004652 () Bool)

(assert (=> b!3004652 (= e!1887172 (matchR!4260 (derivativeStep!2635 lt!1042537 (head!6694 s!11993)) (tail!4920 s!11993)))))

(declare-fun bm!202082 () Bool)

(assert (=> bm!202082 (= call!202087 (isEmpty!19396 s!11993))))

(declare-fun b!3004653 () Bool)

(declare-fun res!1238281 () Bool)

(assert (=> b!3004653 (=> res!1238281 e!1887173)))

(assert (=> b!3004653 (= res!1238281 e!1887169)))

(declare-fun res!1238286 () Bool)

(assert (=> b!3004653 (=> (not res!1238286) (not e!1887169))))

(assert (=> b!3004653 (= res!1238286 lt!1042647)))

(assert (= (and d!846673 c!494624) b!3004643))

(assert (= (and d!846673 (not c!494624)) b!3004652))

(assert (= (and d!846673 c!494622) b!3004648))

(assert (= (and d!846673 (not c!494622)) b!3004644))

(assert (= (and b!3004644 c!494623) b!3004641))

(assert (= (and b!3004644 (not c!494623)) b!3004647))

(assert (= (and b!3004647 (not res!1238284)) b!3004653))

(assert (= (and b!3004653 res!1238286) b!3004651))

(assert (= (and b!3004651 res!1238283) b!3004646))

(assert (= (and b!3004646 res!1238280) b!3004640))

(assert (= (and b!3004653 (not res!1238281)) b!3004649))

(assert (= (and b!3004649 res!1238285) b!3004650))

(assert (= (and b!3004650 (not res!1238278)) b!3004645))

(assert (= (and b!3004645 (not res!1238282)) b!3004642))

(assert (= (or b!3004648 b!3004651 b!3004650) bm!202082))

(assert (=> b!3004640 m!3353739))

(assert (=> b!3004643 m!3353867))

(assert (=> b!3004646 m!3353743))

(assert (=> b!3004646 m!3353743))

(assert (=> b!3004646 m!3353745))

(assert (=> b!3004645 m!3353743))

(assert (=> b!3004645 m!3353743))

(assert (=> b!3004645 m!3353745))

(assert (=> d!846673 m!3353671))

(assert (=> d!846673 m!3353851))

(assert (=> b!3004642 m!3353739))

(assert (=> b!3004652 m!3353739))

(assert (=> b!3004652 m!3353739))

(declare-fun m!3353923 () Bool)

(assert (=> b!3004652 m!3353923))

(assert (=> b!3004652 m!3353743))

(assert (=> b!3004652 m!3353923))

(assert (=> b!3004652 m!3353743))

(declare-fun m!3353925 () Bool)

(assert (=> b!3004652 m!3353925))

(assert (=> bm!202082 m!3353671))

(assert (=> b!3004204 d!846673))

(declare-fun b!3004668 () Bool)

(declare-fun e!1887182 () Bool)

(declare-fun tp!954464 () Bool)

(assert (=> b!3004668 (= e!1887182 (and tp_is_empty!16319 tp!954464))))

(assert (=> b!3004195 (= tp!954442 e!1887182)))

(assert (= (and b!3004195 (is-Cons!35119 (t!234308 s!11993))) b!3004668))

(declare-fun b!3004681 () Bool)

(declare-fun e!1887185 () Bool)

(declare-fun tp!954479 () Bool)

(assert (=> b!3004681 (= e!1887185 tp!954479)))

(declare-fun b!3004682 () Bool)

(declare-fun tp!954477 () Bool)

(declare-fun tp!954475 () Bool)

(assert (=> b!3004682 (= e!1887185 (and tp!954477 tp!954475))))

(declare-fun b!3004680 () Bool)

(declare-fun tp!954476 () Bool)

(declare-fun tp!954478 () Bool)

(assert (=> b!3004680 (= e!1887185 (and tp!954476 tp!954478))))

(assert (=> b!3004207 (= tp!954439 e!1887185)))

(declare-fun b!3004679 () Bool)

(assert (=> b!3004679 (= e!1887185 tp_is_empty!16319)))

(assert (= (and b!3004207 (is-ElementMatch!9378 (regOne!19268 r!17423))) b!3004679))

(assert (= (and b!3004207 (is-Concat!14699 (regOne!19268 r!17423))) b!3004680))

(assert (= (and b!3004207 (is-Star!9378 (regOne!19268 r!17423))) b!3004681))

(assert (= (and b!3004207 (is-Union!9378 (regOne!19268 r!17423))) b!3004682))

(declare-fun b!3004685 () Bool)

(declare-fun e!1887186 () Bool)

(declare-fun tp!954484 () Bool)

(assert (=> b!3004685 (= e!1887186 tp!954484)))

(declare-fun b!3004686 () Bool)

(declare-fun tp!954482 () Bool)

(declare-fun tp!954480 () Bool)

(assert (=> b!3004686 (= e!1887186 (and tp!954482 tp!954480))))

(declare-fun b!3004684 () Bool)

(declare-fun tp!954481 () Bool)

(declare-fun tp!954483 () Bool)

(assert (=> b!3004684 (= e!1887186 (and tp!954481 tp!954483))))

(assert (=> b!3004207 (= tp!954443 e!1887186)))

(declare-fun b!3004683 () Bool)

(assert (=> b!3004683 (= e!1887186 tp_is_empty!16319)))

(assert (= (and b!3004207 (is-ElementMatch!9378 (regTwo!19268 r!17423))) b!3004683))

(assert (= (and b!3004207 (is-Concat!14699 (regTwo!19268 r!17423))) b!3004684))

(assert (= (and b!3004207 (is-Star!9378 (regTwo!19268 r!17423))) b!3004685))

(assert (= (and b!3004207 (is-Union!9378 (regTwo!19268 r!17423))) b!3004686))

(declare-fun b!3004689 () Bool)

(declare-fun e!1887187 () Bool)

(declare-fun tp!954489 () Bool)

(assert (=> b!3004689 (= e!1887187 tp!954489)))

(declare-fun b!3004690 () Bool)

(declare-fun tp!954487 () Bool)

(declare-fun tp!954485 () Bool)

(assert (=> b!3004690 (= e!1887187 (and tp!954487 tp!954485))))

(declare-fun b!3004688 () Bool)

(declare-fun tp!954486 () Bool)

(declare-fun tp!954488 () Bool)

(assert (=> b!3004688 (= e!1887187 (and tp!954486 tp!954488))))

(assert (=> b!3004196 (= tp!954441 e!1887187)))

(declare-fun b!3004687 () Bool)

(assert (=> b!3004687 (= e!1887187 tp_is_empty!16319)))

(assert (= (and b!3004196 (is-ElementMatch!9378 (reg!9707 r!17423))) b!3004687))

(assert (= (and b!3004196 (is-Concat!14699 (reg!9707 r!17423))) b!3004688))

(assert (= (and b!3004196 (is-Star!9378 (reg!9707 r!17423))) b!3004689))

(assert (= (and b!3004196 (is-Union!9378 (reg!9707 r!17423))) b!3004690))

(declare-fun b!3004693 () Bool)

(declare-fun e!1887188 () Bool)

(declare-fun tp!954494 () Bool)

(assert (=> b!3004693 (= e!1887188 tp!954494)))

(declare-fun b!3004694 () Bool)

(declare-fun tp!954492 () Bool)

(declare-fun tp!954490 () Bool)

(assert (=> b!3004694 (= e!1887188 (and tp!954492 tp!954490))))

(declare-fun b!3004692 () Bool)

(declare-fun tp!954491 () Bool)

(declare-fun tp!954493 () Bool)

(assert (=> b!3004692 (= e!1887188 (and tp!954491 tp!954493))))

(assert (=> b!3004203 (= tp!954438 e!1887188)))

(declare-fun b!3004691 () Bool)

(assert (=> b!3004691 (= e!1887188 tp_is_empty!16319)))

(assert (= (and b!3004203 (is-ElementMatch!9378 (regOne!19269 r!17423))) b!3004691))

(assert (= (and b!3004203 (is-Concat!14699 (regOne!19269 r!17423))) b!3004692))

(assert (= (and b!3004203 (is-Star!9378 (regOne!19269 r!17423))) b!3004693))

(assert (= (and b!3004203 (is-Union!9378 (regOne!19269 r!17423))) b!3004694))

(declare-fun b!3004697 () Bool)

(declare-fun e!1887189 () Bool)

(declare-fun tp!954499 () Bool)

(assert (=> b!3004697 (= e!1887189 tp!954499)))

(declare-fun b!3004698 () Bool)

(declare-fun tp!954497 () Bool)

(declare-fun tp!954495 () Bool)

(assert (=> b!3004698 (= e!1887189 (and tp!954497 tp!954495))))

(declare-fun b!3004696 () Bool)

(declare-fun tp!954496 () Bool)

(declare-fun tp!954498 () Bool)

(assert (=> b!3004696 (= e!1887189 (and tp!954496 tp!954498))))

(assert (=> b!3004203 (= tp!954440 e!1887189)))

(declare-fun b!3004695 () Bool)

(assert (=> b!3004695 (= e!1887189 tp_is_empty!16319)))

(assert (= (and b!3004203 (is-ElementMatch!9378 (regTwo!19269 r!17423))) b!3004695))

(assert (= (and b!3004203 (is-Concat!14699 (regTwo!19269 r!17423))) b!3004696))

(assert (= (and b!3004203 (is-Star!9378 (regTwo!19269 r!17423))) b!3004697))

(assert (= (and b!3004203 (is-Union!9378 (regTwo!19269 r!17423))) b!3004698))

(push 1)

(assert (not b!3004349))

(assert (not b!3004417))

(assert (not b!3004479))

(assert (not b!3004682))

(assert (not b!3004455))

(assert (not d!846623))

(assert (not b!3004640))

(assert (not bm!202043))

(assert (not bm!202066))

(assert (not b!3004645))

(assert (not b!3004681))

(assert (not b!3004689))

(assert (not b!3004487))

(assert (not b!3004422))

(assert (not b!3004454))

(assert (not b!3004404))

(assert (not b!3004436))

(assert (not b!3004694))

(assert (not bm!202079))

(assert (not bm!202069))

(assert (not b!3004685))

(assert (not b!3004350))

(assert (not d!846613))

(assert (not b!3004406))

(assert (not b!3004403))

(assert (not b!3004643))

(assert (not b!3004423))

(assert (not d!846657))

(assert (not b!3004426))

(assert (not b!3004440))

(assert (not bm!202070))

(assert tp_is_empty!16319)

(assert (not b!3004692))

(assert (not bm!202080))

(assert (not b!3004419))

(assert (not bm!202051))

(assert (not bm!202068))

(assert (not b!3004359))

(assert (not bm!202082))

(assert (not bm!202046))

(assert (not bm!202050))

(assert (not b!3004668))

(assert (not b!3004646))

(assert (not d!846659))

(assert (not b!3004688))

(assert (not d!846637))

(assert (not b!3004684))

(assert (not bm!202042))

(assert (not b!3004697))

(assert (not b!3004690))

(assert (not b!3004432))

(assert (not b!3004693))

(assert (not d!846625))

(assert (not b!3004652))

(assert (not b!3004409))

(assert (not bm!202048))

(assert (not bm!202047))

(assert (not d!846617))

(assert (not b!3004434))

(assert (not bm!202067))

(assert (not b!3004420))

(assert (not b!3004310))

(assert (not b!3004311))

(assert (not b!3004696))

(assert (not b!3004680))

(assert (not bm!202049))

(assert (not b!3004485))

(assert (not d!846663))

(assert (not b!3004491))

(assert (not d!846655))

(assert (not b!3004488))

(assert (not d!846627))

(assert (not b!3004478))

(assert (not b!3004622))

(assert (not b!3004407))

(assert (not b!3004580))

(assert (not d!846643))

(assert (not b!3004642))

(assert (not b!3004408))

(assert (not d!846645))

(assert (not b!3004347))

(assert (not b!3004698))

(assert (not b!3004425))

(assert (not d!846635))

(assert (not b!3004353))

(assert (not d!846647))

(assert (not b!3004437))

(assert (not b!3004586))

(assert (not d!846673))

(assert (not b!3004439))

(assert (not d!846615))

(assert (not b!3004497))

(assert (not b!3004446))

(assert (not b!3004352))

(assert (not b!3004686))

(assert (not b!3004490))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

