; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!723306 () Bool)

(assert start!723306)

(declare-fun b!7449337 () Bool)

(assert (=> b!7449337 true))

(assert (=> b!7449337 true))

(assert (=> b!7449337 true))

(declare-fun lambda!460739 () Int)

(declare-fun lambda!460738 () Int)

(assert (=> b!7449337 (not (= lambda!460739 lambda!460738))))

(assert (=> b!7449337 true))

(assert (=> b!7449337 true))

(assert (=> b!7449337 true))

(declare-fun b!7449327 () Bool)

(declare-fun e!4446980 () Bool)

(declare-fun tp_is_empty!49255 () Bool)

(assert (=> b!7449327 (= e!4446980 tp_is_empty!49255)))

(declare-fun b!7449328 () Bool)

(declare-fun e!4446981 () Bool)

(declare-fun tp!2158149 () Bool)

(assert (=> b!7449328 (= e!4446981 (and tp_is_empty!49255 tp!2158149))))

(declare-fun b!7449329 () Bool)

(declare-fun e!4446982 () Bool)

(declare-fun tp!2158152 () Bool)

(assert (=> b!7449329 (= e!4446982 tp!2158152)))

(declare-fun b!7449330 () Bool)

(declare-fun res!2988010 () Bool)

(declare-fun e!4446979 () Bool)

(assert (=> b!7449330 (=> (not res!2988010) (not e!4446979))))

(declare-datatypes ((C!39240 0))(
  ( (C!39241 (val!30018 Int)) )
))
(declare-datatypes ((Regex!19483 0))(
  ( (ElementMatch!19483 (c!1377640 C!39240)) (Concat!28328 (regOne!39478 Regex!19483) (regTwo!39478 Regex!19483)) (EmptyExpr!19483) (Star!19483 (reg!19812 Regex!19483)) (EmptyLang!19483) (Union!19483 (regOne!39479 Regex!19483) (regTwo!39479 Regex!19483)) )
))
(declare-fun r2!5783 () Regex!19483)

(declare-fun validRegex!9997 (Regex!19483) Bool)

(assert (=> b!7449330 (= res!2988010 (validRegex!9997 r2!5783))))

(declare-fun b!7449331 () Bool)

(declare-fun e!4446977 () Bool)

(assert (=> b!7449331 (= e!4446979 (not e!4446977))))

(declare-fun res!2988007 () Bool)

(assert (=> b!7449331 (=> res!2988007 e!4446977)))

(declare-fun lt!2619867 () Bool)

(assert (=> b!7449331 (= res!2988007 (not lt!2619867))))

(declare-fun lt!2619868 () Regex!19483)

(declare-datatypes ((List!72199 0))(
  ( (Nil!72075) (Cons!72075 (h!78523 C!39240) (t!386768 List!72199)) )
))
(declare-fun s!13591 () List!72199)

(declare-fun matchR!9247 (Regex!19483 List!72199) Bool)

(declare-fun matchRSpec!4162 (Regex!19483 List!72199) Bool)

(assert (=> b!7449331 (= (matchR!9247 lt!2619868 s!13591) (matchRSpec!4162 lt!2619868 s!13591))))

(declare-datatypes ((Unit!165801 0))(
  ( (Unit!165802) )
))
(declare-fun lt!2619869 () Unit!165801)

(declare-fun mainMatchTheorem!4156 (Regex!19483 List!72199) Unit!165801)

(assert (=> b!7449331 (= lt!2619869 (mainMatchTheorem!4156 lt!2619868 s!13591))))

(declare-fun lt!2619866 () Regex!19483)

(assert (=> b!7449331 (= lt!2619867 (matchRSpec!4162 lt!2619866 s!13591))))

(assert (=> b!7449331 (= lt!2619867 (matchR!9247 lt!2619866 s!13591))))

(declare-fun lt!2619872 () Unit!165801)

(assert (=> b!7449331 (= lt!2619872 (mainMatchTheorem!4156 lt!2619866 s!13591))))

(declare-fun r1!5845 () Regex!19483)

(declare-fun rTail!78 () Regex!19483)

(assert (=> b!7449331 (= lt!2619868 (Union!19483 (Concat!28328 r1!5845 rTail!78) (Concat!28328 r2!5783 rTail!78)))))

(declare-fun lt!2619870 () Regex!19483)

(assert (=> b!7449331 (= lt!2619866 (Concat!28328 lt!2619870 rTail!78))))

(assert (=> b!7449331 (= lt!2619870 (Union!19483 r1!5845 r2!5783))))

(declare-fun b!7449332 () Bool)

(declare-fun tp!2158141 () Bool)

(declare-fun tp!2158148 () Bool)

(assert (=> b!7449332 (= e!4446980 (and tp!2158141 tp!2158148))))

(declare-fun b!7449333 () Bool)

(declare-fun e!4446978 () Bool)

(declare-fun tp!2158150 () Bool)

(assert (=> b!7449333 (= e!4446978 tp!2158150)))

(declare-fun res!2988009 () Bool)

(assert (=> start!723306 (=> (not res!2988009) (not e!4446979))))

(assert (=> start!723306 (= res!2988009 (validRegex!9997 r1!5845))))

(assert (=> start!723306 e!4446979))

(assert (=> start!723306 e!4446978))

(assert (=> start!723306 e!4446982))

(assert (=> start!723306 e!4446980))

(assert (=> start!723306 e!4446981))

(declare-fun b!7449334 () Bool)

(declare-fun tp!2158155 () Bool)

(declare-fun tp!2158142 () Bool)

(assert (=> b!7449334 (= e!4446982 (and tp!2158155 tp!2158142))))

(declare-fun b!7449335 () Bool)

(declare-fun tp!2158146 () Bool)

(declare-fun tp!2158151 () Bool)

(assert (=> b!7449335 (= e!4446978 (and tp!2158146 tp!2158151))))

(declare-fun b!7449336 () Bool)

(assert (=> b!7449336 (= e!4446982 tp_is_empty!49255)))

(assert (=> b!7449337 (= e!4446977 (validRegex!9997 lt!2619870))))

(declare-fun Exists!4104 (Int) Bool)

(assert (=> b!7449337 (= (Exists!4104 lambda!460738) (Exists!4104 lambda!460739))))

(declare-fun lt!2619873 () Unit!165801)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2440 (Regex!19483 Regex!19483 List!72199) Unit!165801)

(assert (=> b!7449337 (= lt!2619873 (lemmaExistCutMatchRandMatchRSpecEquivalent!2440 lt!2619870 rTail!78 s!13591))))

(declare-datatypes ((tuple2!68420 0))(
  ( (tuple2!68421 (_1!37513 List!72199) (_2!37513 List!72199)) )
))
(declare-datatypes ((Option!17042 0))(
  ( (None!17041) (Some!17041 (v!54170 tuple2!68420)) )
))
(declare-fun isDefined!13731 (Option!17042) Bool)

(declare-fun findConcatSeparation!3164 (Regex!19483 Regex!19483 List!72199 List!72199 List!72199) Option!17042)

(assert (=> b!7449337 (= (isDefined!13731 (findConcatSeparation!3164 lt!2619870 rTail!78 Nil!72075 s!13591 s!13591)) (Exists!4104 lambda!460738))))

(declare-fun lt!2619871 () Unit!165801)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2922 (Regex!19483 Regex!19483 List!72199) Unit!165801)

(assert (=> b!7449337 (= lt!2619871 (lemmaFindConcatSeparationEquivalentToExists!2922 lt!2619870 rTail!78 s!13591))))

(declare-fun b!7449338 () Bool)

(declare-fun tp!2158145 () Bool)

(declare-fun tp!2158140 () Bool)

(assert (=> b!7449338 (= e!4446978 (and tp!2158145 tp!2158140))))

(declare-fun b!7449339 () Bool)

(declare-fun res!2988008 () Bool)

(assert (=> b!7449339 (=> (not res!2988008) (not e!4446979))))

(assert (=> b!7449339 (= res!2988008 (validRegex!9997 rTail!78))))

(declare-fun b!7449340 () Bool)

(assert (=> b!7449340 (= e!4446978 tp_is_empty!49255)))

(declare-fun b!7449341 () Bool)

(declare-fun tp!2158144 () Bool)

(declare-fun tp!2158153 () Bool)

(assert (=> b!7449341 (= e!4446982 (and tp!2158144 tp!2158153))))

(declare-fun b!7449342 () Bool)

(declare-fun tp!2158147 () Bool)

(assert (=> b!7449342 (= e!4446980 tp!2158147)))

(declare-fun b!7449343 () Bool)

(declare-fun tp!2158143 () Bool)

(declare-fun tp!2158154 () Bool)

(assert (=> b!7449343 (= e!4446980 (and tp!2158143 tp!2158154))))

(assert (= (and start!723306 res!2988009) b!7449330))

(assert (= (and b!7449330 res!2988010) b!7449339))

(assert (= (and b!7449339 res!2988008) b!7449331))

(assert (= (and b!7449331 (not res!2988007)) b!7449337))

(get-info :version)

(assert (= (and start!723306 ((_ is ElementMatch!19483) r1!5845)) b!7449340))

(assert (= (and start!723306 ((_ is Concat!28328) r1!5845)) b!7449335))

(assert (= (and start!723306 ((_ is Star!19483) r1!5845)) b!7449333))

(assert (= (and start!723306 ((_ is Union!19483) r1!5845)) b!7449338))

(assert (= (and start!723306 ((_ is ElementMatch!19483) r2!5783)) b!7449336))

(assert (= (and start!723306 ((_ is Concat!28328) r2!5783)) b!7449341))

(assert (= (and start!723306 ((_ is Star!19483) r2!5783)) b!7449329))

(assert (= (and start!723306 ((_ is Union!19483) r2!5783)) b!7449334))

(assert (= (and start!723306 ((_ is ElementMatch!19483) rTail!78)) b!7449327))

(assert (= (and start!723306 ((_ is Concat!28328) rTail!78)) b!7449343))

(assert (= (and start!723306 ((_ is Star!19483) rTail!78)) b!7449342))

(assert (= (and start!723306 ((_ is Union!19483) rTail!78)) b!7449332))

(assert (= (and start!723306 ((_ is Cons!72075) s!13591)) b!7449328))

(declare-fun m!8056296 () Bool)

(assert (=> b!7449330 m!8056296))

(declare-fun m!8056298 () Bool)

(assert (=> b!7449331 m!8056298))

(declare-fun m!8056300 () Bool)

(assert (=> b!7449331 m!8056300))

(declare-fun m!8056302 () Bool)

(assert (=> b!7449331 m!8056302))

(declare-fun m!8056304 () Bool)

(assert (=> b!7449331 m!8056304))

(declare-fun m!8056306 () Bool)

(assert (=> b!7449331 m!8056306))

(declare-fun m!8056308 () Bool)

(assert (=> b!7449331 m!8056308))

(declare-fun m!8056310 () Bool)

(assert (=> start!723306 m!8056310))

(declare-fun m!8056312 () Bool)

(assert (=> b!7449337 m!8056312))

(declare-fun m!8056314 () Bool)

(assert (=> b!7449337 m!8056314))

(declare-fun m!8056316 () Bool)

(assert (=> b!7449337 m!8056316))

(declare-fun m!8056318 () Bool)

(assert (=> b!7449337 m!8056318))

(declare-fun m!8056320 () Bool)

(assert (=> b!7449337 m!8056320))

(declare-fun m!8056322 () Bool)

(assert (=> b!7449337 m!8056322))

(declare-fun m!8056324 () Bool)

(assert (=> b!7449337 m!8056324))

(assert (=> b!7449337 m!8056312))

(assert (=> b!7449337 m!8056320))

(declare-fun m!8056326 () Bool)

(assert (=> b!7449339 m!8056326))

(check-sat (not b!7449343) (not b!7449332) (not b!7449331) (not start!723306) (not b!7449341) (not b!7449337) (not b!7449338) (not b!7449328) (not b!7449339) (not b!7449329) tp_is_empty!49255 (not b!7449330) (not b!7449333) (not b!7449334) (not b!7449342) (not b!7449335))
(check-sat)
(get-model)

(declare-fun bm!684471 () Bool)

(declare-fun call!684476 () Bool)

(declare-fun c!1377655 () Bool)

(assert (=> bm!684471 (= call!684476 (validRegex!9997 (ite c!1377655 (regTwo!39479 rTail!78) (regTwo!39478 rTail!78))))))

(declare-fun b!7449415 () Bool)

(declare-fun e!4447036 () Bool)

(assert (=> b!7449415 (= e!4447036 call!684476)))

(declare-fun bm!684472 () Bool)

(declare-fun call!684478 () Bool)

(declare-fun call!684477 () Bool)

(assert (=> bm!684472 (= call!684478 call!684477)))

(declare-fun b!7449416 () Bool)

(declare-fun e!4447040 () Bool)

(assert (=> b!7449416 (= e!4447040 call!684476)))

(declare-fun b!7449417 () Bool)

(declare-fun res!2988053 () Bool)

(assert (=> b!7449417 (=> (not res!2988053) (not e!4447036))))

(assert (=> b!7449417 (= res!2988053 call!684478)))

(declare-fun e!4447035 () Bool)

(assert (=> b!7449417 (= e!4447035 e!4447036)))

(declare-fun b!7449418 () Bool)

(declare-fun e!4447034 () Bool)

(assert (=> b!7449418 (= e!4447034 e!4447040)))

(declare-fun res!2988050 () Bool)

(assert (=> b!7449418 (=> (not res!2988050) (not e!4447040))))

(assert (=> b!7449418 (= res!2988050 call!684478)))

(declare-fun b!7449419 () Bool)

(declare-fun e!4447039 () Bool)

(declare-fun e!4447037 () Bool)

(assert (=> b!7449419 (= e!4447039 e!4447037)))

(declare-fun c!1377656 () Bool)

(assert (=> b!7449419 (= c!1377656 ((_ is Star!19483) rTail!78))))

(declare-fun b!7449420 () Bool)

(declare-fun e!4447038 () Bool)

(assert (=> b!7449420 (= e!4447037 e!4447038)))

(declare-fun res!2988054 () Bool)

(declare-fun nullable!8489 (Regex!19483) Bool)

(assert (=> b!7449420 (= res!2988054 (not (nullable!8489 (reg!19812 rTail!78))))))

(assert (=> b!7449420 (=> (not res!2988054) (not e!4447038))))

(declare-fun bm!684473 () Bool)

(assert (=> bm!684473 (= call!684477 (validRegex!9997 (ite c!1377656 (reg!19812 rTail!78) (ite c!1377655 (regOne!39479 rTail!78) (regOne!39478 rTail!78)))))))

(declare-fun b!7449421 () Bool)

(assert (=> b!7449421 (= e!4447037 e!4447035)))

(assert (=> b!7449421 (= c!1377655 ((_ is Union!19483) rTail!78))))

(declare-fun d!2296873 () Bool)

(declare-fun res!2988052 () Bool)

(assert (=> d!2296873 (=> res!2988052 e!4447039)))

(assert (=> d!2296873 (= res!2988052 ((_ is ElementMatch!19483) rTail!78))))

(assert (=> d!2296873 (= (validRegex!9997 rTail!78) e!4447039)))

(declare-fun b!7449422 () Bool)

(declare-fun res!2988051 () Bool)

(assert (=> b!7449422 (=> res!2988051 e!4447034)))

(assert (=> b!7449422 (= res!2988051 (not ((_ is Concat!28328) rTail!78)))))

(assert (=> b!7449422 (= e!4447035 e!4447034)))

(declare-fun b!7449423 () Bool)

(assert (=> b!7449423 (= e!4447038 call!684477)))

(assert (= (and d!2296873 (not res!2988052)) b!7449419))

(assert (= (and b!7449419 c!1377656) b!7449420))

(assert (= (and b!7449419 (not c!1377656)) b!7449421))

(assert (= (and b!7449420 res!2988054) b!7449423))

(assert (= (and b!7449421 c!1377655) b!7449417))

(assert (= (and b!7449421 (not c!1377655)) b!7449422))

(assert (= (and b!7449417 res!2988053) b!7449415))

(assert (= (and b!7449422 (not res!2988051)) b!7449418))

(assert (= (and b!7449418 res!2988050) b!7449416))

(assert (= (or b!7449415 b!7449416) bm!684471))

(assert (= (or b!7449417 b!7449418) bm!684472))

(assert (= (or b!7449423 bm!684472) bm!684473))

(declare-fun m!8056356 () Bool)

(assert (=> bm!684471 m!8056356))

(declare-fun m!8056358 () Bool)

(assert (=> b!7449420 m!8056358))

(declare-fun m!8056360 () Bool)

(assert (=> bm!684473 m!8056360))

(assert (=> b!7449339 d!2296873))

(declare-fun bs!1926876 () Bool)

(declare-fun b!7449497 () Bool)

(assert (= bs!1926876 (and b!7449497 b!7449337)))

(declare-fun lambda!460753 () Int)

(assert (=> bs!1926876 (not (= lambda!460753 lambda!460738))))

(assert (=> bs!1926876 (not (= lambda!460753 lambda!460739))))

(assert (=> b!7449497 true))

(assert (=> b!7449497 true))

(declare-fun bs!1926877 () Bool)

(declare-fun b!7449499 () Bool)

(assert (= bs!1926877 (and b!7449499 b!7449337)))

(declare-fun lambda!460754 () Int)

(assert (=> bs!1926877 (not (= lambda!460754 lambda!460738))))

(assert (=> bs!1926877 (= (and (= (regOne!39478 lt!2619868) lt!2619870) (= (regTwo!39478 lt!2619868) rTail!78)) (= lambda!460754 lambda!460739))))

(declare-fun bs!1926878 () Bool)

(assert (= bs!1926878 (and b!7449499 b!7449497)))

(assert (=> bs!1926878 (not (= lambda!460754 lambda!460753))))

(assert (=> b!7449499 true))

(assert (=> b!7449499 true))

(declare-fun b!7449491 () Bool)

(declare-fun e!4447080 () Bool)

(declare-fun e!4447081 () Bool)

(assert (=> b!7449491 (= e!4447080 e!4447081)))

(declare-fun c!1377672 () Bool)

(assert (=> b!7449491 (= c!1377672 ((_ is Star!19483) lt!2619868))))

(declare-fun b!7449492 () Bool)

(declare-fun res!2988094 () Bool)

(declare-fun e!4447083 () Bool)

(assert (=> b!7449492 (=> res!2988094 e!4447083)))

(declare-fun call!684484 () Bool)

(assert (=> b!7449492 (= res!2988094 call!684484)))

(assert (=> b!7449492 (= e!4447081 e!4447083)))

(declare-fun b!7449493 () Bool)

(declare-fun e!4447079 () Bool)

(assert (=> b!7449493 (= e!4447079 (matchRSpec!4162 (regTwo!39479 lt!2619868) s!13591))))

(declare-fun b!7449494 () Bool)

(declare-fun e!4447078 () Bool)

(assert (=> b!7449494 (= e!4447078 (= s!13591 (Cons!72075 (c!1377640 lt!2619868) Nil!72075)))))

(declare-fun b!7449495 () Bool)

(declare-fun e!4447082 () Bool)

(assert (=> b!7449495 (= e!4447082 call!684484)))

(declare-fun b!7449496 () Bool)

(assert (=> b!7449496 (= e!4447080 e!4447079)))

(declare-fun res!2988095 () Bool)

(assert (=> b!7449496 (= res!2988095 (matchRSpec!4162 (regOne!39479 lt!2619868) s!13591))))

(assert (=> b!7449496 (=> res!2988095 e!4447079)))

(declare-fun call!684483 () Bool)

(assert (=> b!7449497 (= e!4447083 call!684483)))

(declare-fun d!2296877 () Bool)

(declare-fun c!1377674 () Bool)

(assert (=> d!2296877 (= c!1377674 ((_ is EmptyExpr!19483) lt!2619868))))

(assert (=> d!2296877 (= (matchRSpec!4162 lt!2619868 s!13591) e!4447082)))

(declare-fun b!7449498 () Bool)

(declare-fun c!1377673 () Bool)

(assert (=> b!7449498 (= c!1377673 ((_ is Union!19483) lt!2619868))))

(assert (=> b!7449498 (= e!4447078 e!4447080)))

(declare-fun bm!684478 () Bool)

(declare-fun isEmpty!41094 (List!72199) Bool)

(assert (=> bm!684478 (= call!684484 (isEmpty!41094 s!13591))))

(assert (=> b!7449499 (= e!4447081 call!684483)))

(declare-fun b!7449500 () Bool)

(declare-fun e!4447084 () Bool)

(assert (=> b!7449500 (= e!4447082 e!4447084)))

(declare-fun res!2988096 () Bool)

(assert (=> b!7449500 (= res!2988096 (not ((_ is EmptyLang!19483) lt!2619868)))))

(assert (=> b!7449500 (=> (not res!2988096) (not e!4447084))))

(declare-fun bm!684479 () Bool)

(assert (=> bm!684479 (= call!684483 (Exists!4104 (ite c!1377672 lambda!460753 lambda!460754)))))

(declare-fun b!7449501 () Bool)

(declare-fun c!1377671 () Bool)

(assert (=> b!7449501 (= c!1377671 ((_ is ElementMatch!19483) lt!2619868))))

(assert (=> b!7449501 (= e!4447084 e!4447078)))

(assert (= (and d!2296877 c!1377674) b!7449495))

(assert (= (and d!2296877 (not c!1377674)) b!7449500))

(assert (= (and b!7449500 res!2988096) b!7449501))

(assert (= (and b!7449501 c!1377671) b!7449494))

(assert (= (and b!7449501 (not c!1377671)) b!7449498))

(assert (= (and b!7449498 c!1377673) b!7449496))

(assert (= (and b!7449498 (not c!1377673)) b!7449491))

(assert (= (and b!7449496 (not res!2988095)) b!7449493))

(assert (= (and b!7449491 c!1377672) b!7449492))

(assert (= (and b!7449491 (not c!1377672)) b!7449499))

(assert (= (and b!7449492 (not res!2988094)) b!7449497))

(assert (= (or b!7449497 b!7449499) bm!684479))

(assert (= (or b!7449495 b!7449492) bm!684478))

(declare-fun m!8056398 () Bool)

(assert (=> b!7449493 m!8056398))

(declare-fun m!8056400 () Bool)

(assert (=> b!7449496 m!8056400))

(declare-fun m!8056402 () Bool)

(assert (=> bm!684478 m!8056402))

(declare-fun m!8056404 () Bool)

(assert (=> bm!684479 m!8056404))

(assert (=> b!7449331 d!2296877))

(declare-fun b!7449626 () Bool)

(declare-fun res!2988162 () Bool)

(declare-fun e!4447158 () Bool)

(assert (=> b!7449626 (=> res!2988162 e!4447158)))

(declare-fun e!4447157 () Bool)

(assert (=> b!7449626 (= res!2988162 e!4447157)))

(declare-fun res!2988161 () Bool)

(assert (=> b!7449626 (=> (not res!2988161) (not e!4447157))))

(declare-fun lt!2619898 () Bool)

(assert (=> b!7449626 (= res!2988161 lt!2619898)))

(declare-fun b!7449627 () Bool)

(declare-fun e!4447155 () Bool)

(assert (=> b!7449627 (= e!4447155 (nullable!8489 lt!2619866))))

(declare-fun b!7449628 () Bool)

(declare-fun e!4447156 () Bool)

(declare-fun head!15289 (List!72199) C!39240)

(assert (=> b!7449628 (= e!4447156 (not (= (head!15289 s!13591) (c!1377640 lt!2619866))))))

(declare-fun b!7449629 () Bool)

(declare-fun e!4447153 () Bool)

(declare-fun call!684498 () Bool)

(assert (=> b!7449629 (= e!4447153 (= lt!2619898 call!684498))))

(declare-fun b!7449630 () Bool)

(declare-fun e!4447154 () Bool)

(assert (=> b!7449630 (= e!4447153 e!4447154)))

(declare-fun c!1377707 () Bool)

(assert (=> b!7449630 (= c!1377707 ((_ is EmptyLang!19483) lt!2619866))))

(declare-fun b!7449631 () Bool)

(declare-fun res!2988164 () Bool)

(assert (=> b!7449631 (=> res!2988164 e!4447156)))

(declare-fun tail!14858 (List!72199) List!72199)

(assert (=> b!7449631 (= res!2988164 (not (isEmpty!41094 (tail!14858 s!13591))))))

(declare-fun b!7449632 () Bool)

(assert (=> b!7449632 (= e!4447157 (= (head!15289 s!13591) (c!1377640 lt!2619866)))))

(declare-fun b!7449633 () Bool)

(declare-fun res!2988163 () Bool)

(assert (=> b!7449633 (=> res!2988163 e!4447158)))

(assert (=> b!7449633 (= res!2988163 (not ((_ is ElementMatch!19483) lt!2619866)))))

(assert (=> b!7449633 (= e!4447154 e!4447158)))

(declare-fun d!2296887 () Bool)

(assert (=> d!2296887 e!4447153))

(declare-fun c!1377706 () Bool)

(assert (=> d!2296887 (= c!1377706 ((_ is EmptyExpr!19483) lt!2619866))))

(assert (=> d!2296887 (= lt!2619898 e!4447155)))

(declare-fun c!1377708 () Bool)

(assert (=> d!2296887 (= c!1377708 (isEmpty!41094 s!13591))))

(assert (=> d!2296887 (validRegex!9997 lt!2619866)))

(assert (=> d!2296887 (= (matchR!9247 lt!2619866 s!13591) lt!2619898)))

(declare-fun b!7449634 () Bool)

(declare-fun e!4447152 () Bool)

(assert (=> b!7449634 (= e!4447152 e!4447156)))

(declare-fun res!2988165 () Bool)

(assert (=> b!7449634 (=> res!2988165 e!4447156)))

(assert (=> b!7449634 (= res!2988165 call!684498)))

(declare-fun b!7449635 () Bool)

(assert (=> b!7449635 (= e!4447158 e!4447152)))

(declare-fun res!2988159 () Bool)

(assert (=> b!7449635 (=> (not res!2988159) (not e!4447152))))

(assert (=> b!7449635 (= res!2988159 (not lt!2619898))))

(declare-fun b!7449636 () Bool)

(declare-fun derivativeStep!5549 (Regex!19483 C!39240) Regex!19483)

(assert (=> b!7449636 (= e!4447155 (matchR!9247 (derivativeStep!5549 lt!2619866 (head!15289 s!13591)) (tail!14858 s!13591)))))

(declare-fun b!7449637 () Bool)

(assert (=> b!7449637 (= e!4447154 (not lt!2619898))))

(declare-fun b!7449638 () Bool)

(declare-fun res!2988166 () Bool)

(assert (=> b!7449638 (=> (not res!2988166) (not e!4447157))))

(assert (=> b!7449638 (= res!2988166 (isEmpty!41094 (tail!14858 s!13591)))))

(declare-fun b!7449639 () Bool)

(declare-fun res!2988160 () Bool)

(assert (=> b!7449639 (=> (not res!2988160) (not e!4447157))))

(assert (=> b!7449639 (= res!2988160 (not call!684498))))

(declare-fun bm!684493 () Bool)

(assert (=> bm!684493 (= call!684498 (isEmpty!41094 s!13591))))

(assert (= (and d!2296887 c!1377708) b!7449627))

(assert (= (and d!2296887 (not c!1377708)) b!7449636))

(assert (= (and d!2296887 c!1377706) b!7449629))

(assert (= (and d!2296887 (not c!1377706)) b!7449630))

(assert (= (and b!7449630 c!1377707) b!7449637))

(assert (= (and b!7449630 (not c!1377707)) b!7449633))

(assert (= (and b!7449633 (not res!2988163)) b!7449626))

(assert (= (and b!7449626 res!2988161) b!7449639))

(assert (= (and b!7449639 res!2988160) b!7449638))

(assert (= (and b!7449638 res!2988166) b!7449632))

(assert (= (and b!7449626 (not res!2988162)) b!7449635))

(assert (= (and b!7449635 res!2988159) b!7449634))

(assert (= (and b!7449634 (not res!2988165)) b!7449631))

(assert (= (and b!7449631 (not res!2988164)) b!7449628))

(assert (= (or b!7449629 b!7449634 b!7449639) bm!684493))

(declare-fun m!8056426 () Bool)

(assert (=> b!7449627 m!8056426))

(declare-fun m!8056428 () Bool)

(assert (=> b!7449631 m!8056428))

(assert (=> b!7449631 m!8056428))

(declare-fun m!8056430 () Bool)

(assert (=> b!7449631 m!8056430))

(declare-fun m!8056432 () Bool)

(assert (=> b!7449632 m!8056432))

(assert (=> b!7449636 m!8056432))

(assert (=> b!7449636 m!8056432))

(declare-fun m!8056434 () Bool)

(assert (=> b!7449636 m!8056434))

(assert (=> b!7449636 m!8056428))

(assert (=> b!7449636 m!8056434))

(assert (=> b!7449636 m!8056428))

(declare-fun m!8056436 () Bool)

(assert (=> b!7449636 m!8056436))

(assert (=> b!7449628 m!8056432))

(assert (=> d!2296887 m!8056402))

(declare-fun m!8056444 () Bool)

(assert (=> d!2296887 m!8056444))

(assert (=> bm!684493 m!8056402))

(assert (=> b!7449638 m!8056428))

(assert (=> b!7449638 m!8056428))

(assert (=> b!7449638 m!8056430))

(assert (=> b!7449331 d!2296887))

(declare-fun bs!1926897 () Bool)

(declare-fun b!7449660 () Bool)

(assert (= bs!1926897 (and b!7449660 b!7449337)))

(declare-fun lambda!460763 () Int)

(assert (=> bs!1926897 (not (= lambda!460763 lambda!460738))))

(assert (=> bs!1926897 (not (= lambda!460763 lambda!460739))))

(declare-fun bs!1926898 () Bool)

(assert (= bs!1926898 (and b!7449660 b!7449497)))

(assert (=> bs!1926898 (= (and (= (reg!19812 lt!2619866) (reg!19812 lt!2619868)) (= lt!2619866 lt!2619868)) (= lambda!460763 lambda!460753))))

(declare-fun bs!1926899 () Bool)

(assert (= bs!1926899 (and b!7449660 b!7449499)))

(assert (=> bs!1926899 (not (= lambda!460763 lambda!460754))))

(assert (=> b!7449660 true))

(assert (=> b!7449660 true))

(declare-fun bs!1926900 () Bool)

(declare-fun b!7449662 () Bool)

(assert (= bs!1926900 (and b!7449662 b!7449337)))

(declare-fun lambda!460764 () Int)

(assert (=> bs!1926900 (= (and (= (regOne!39478 lt!2619866) lt!2619870) (= (regTwo!39478 lt!2619866) rTail!78)) (= lambda!460764 lambda!460739))))

(declare-fun bs!1926901 () Bool)

(assert (= bs!1926901 (and b!7449662 b!7449660)))

(assert (=> bs!1926901 (not (= lambda!460764 lambda!460763))))

(assert (=> bs!1926900 (not (= lambda!460764 lambda!460738))))

(declare-fun bs!1926902 () Bool)

(assert (= bs!1926902 (and b!7449662 b!7449499)))

(assert (=> bs!1926902 (= (and (= (regOne!39478 lt!2619866) (regOne!39478 lt!2619868)) (= (regTwo!39478 lt!2619866) (regTwo!39478 lt!2619868))) (= lambda!460764 lambda!460754))))

(declare-fun bs!1926903 () Bool)

(assert (= bs!1926903 (and b!7449662 b!7449497)))

(assert (=> bs!1926903 (not (= lambda!460764 lambda!460753))))

(assert (=> b!7449662 true))

(assert (=> b!7449662 true))

(declare-fun b!7449654 () Bool)

(declare-fun e!4447168 () Bool)

(declare-fun e!4447169 () Bool)

(assert (=> b!7449654 (= e!4447168 e!4447169)))

(declare-fun c!1377713 () Bool)

(assert (=> b!7449654 (= c!1377713 ((_ is Star!19483) lt!2619866))))

(declare-fun b!7449655 () Bool)

(declare-fun res!2988175 () Bool)

(declare-fun e!4447171 () Bool)

(assert (=> b!7449655 (=> res!2988175 e!4447171)))

(declare-fun call!684501 () Bool)

(assert (=> b!7449655 (= res!2988175 call!684501)))

(assert (=> b!7449655 (= e!4447169 e!4447171)))

(declare-fun b!7449656 () Bool)

(declare-fun e!4447167 () Bool)

(assert (=> b!7449656 (= e!4447167 (matchRSpec!4162 (regTwo!39479 lt!2619866) s!13591))))

(declare-fun b!7449657 () Bool)

(declare-fun e!4447166 () Bool)

(assert (=> b!7449657 (= e!4447166 (= s!13591 (Cons!72075 (c!1377640 lt!2619866) Nil!72075)))))

(declare-fun b!7449658 () Bool)

(declare-fun e!4447170 () Bool)

(assert (=> b!7449658 (= e!4447170 call!684501)))

(declare-fun b!7449659 () Bool)

(assert (=> b!7449659 (= e!4447168 e!4447167)))

(declare-fun res!2988176 () Bool)

(assert (=> b!7449659 (= res!2988176 (matchRSpec!4162 (regOne!39479 lt!2619866) s!13591))))

(assert (=> b!7449659 (=> res!2988176 e!4447167)))

(declare-fun call!684500 () Bool)

(assert (=> b!7449660 (= e!4447171 call!684500)))

(declare-fun d!2296895 () Bool)

(declare-fun c!1377715 () Bool)

(assert (=> d!2296895 (= c!1377715 ((_ is EmptyExpr!19483) lt!2619866))))

(assert (=> d!2296895 (= (matchRSpec!4162 lt!2619866 s!13591) e!4447170)))

(declare-fun b!7449661 () Bool)

(declare-fun c!1377714 () Bool)

(assert (=> b!7449661 (= c!1377714 ((_ is Union!19483) lt!2619866))))

(assert (=> b!7449661 (= e!4447166 e!4447168)))

(declare-fun bm!684495 () Bool)

(assert (=> bm!684495 (= call!684501 (isEmpty!41094 s!13591))))

(assert (=> b!7449662 (= e!4447169 call!684500)))

(declare-fun b!7449663 () Bool)

(declare-fun e!4447172 () Bool)

(assert (=> b!7449663 (= e!4447170 e!4447172)))

(declare-fun res!2988177 () Bool)

(assert (=> b!7449663 (= res!2988177 (not ((_ is EmptyLang!19483) lt!2619866)))))

(assert (=> b!7449663 (=> (not res!2988177) (not e!4447172))))

(declare-fun bm!684496 () Bool)

(assert (=> bm!684496 (= call!684500 (Exists!4104 (ite c!1377713 lambda!460763 lambda!460764)))))

(declare-fun b!7449664 () Bool)

(declare-fun c!1377712 () Bool)

(assert (=> b!7449664 (= c!1377712 ((_ is ElementMatch!19483) lt!2619866))))

(assert (=> b!7449664 (= e!4447172 e!4447166)))

(assert (= (and d!2296895 c!1377715) b!7449658))

(assert (= (and d!2296895 (not c!1377715)) b!7449663))

(assert (= (and b!7449663 res!2988177) b!7449664))

(assert (= (and b!7449664 c!1377712) b!7449657))

(assert (= (and b!7449664 (not c!1377712)) b!7449661))

(assert (= (and b!7449661 c!1377714) b!7449659))

(assert (= (and b!7449661 (not c!1377714)) b!7449654))

(assert (= (and b!7449659 (not res!2988176)) b!7449656))

(assert (= (and b!7449654 c!1377713) b!7449655))

(assert (= (and b!7449654 (not c!1377713)) b!7449662))

(assert (= (and b!7449655 (not res!2988175)) b!7449660))

(assert (= (or b!7449660 b!7449662) bm!684496))

(assert (= (or b!7449658 b!7449655) bm!684495))

(declare-fun m!8056458 () Bool)

(assert (=> b!7449656 m!8056458))

(declare-fun m!8056460 () Bool)

(assert (=> b!7449659 m!8056460))

(assert (=> bm!684495 m!8056402))

(declare-fun m!8056462 () Bool)

(assert (=> bm!684496 m!8056462))

(assert (=> b!7449331 d!2296895))

(declare-fun d!2296899 () Bool)

(assert (=> d!2296899 (= (matchR!9247 lt!2619866 s!13591) (matchRSpec!4162 lt!2619866 s!13591))))

(declare-fun lt!2619902 () Unit!165801)

(declare-fun choose!57585 (Regex!19483 List!72199) Unit!165801)

(assert (=> d!2296899 (= lt!2619902 (choose!57585 lt!2619866 s!13591))))

(assert (=> d!2296899 (validRegex!9997 lt!2619866)))

(assert (=> d!2296899 (= (mainMatchTheorem!4156 lt!2619866 s!13591) lt!2619902)))

(declare-fun bs!1926904 () Bool)

(assert (= bs!1926904 d!2296899))

(assert (=> bs!1926904 m!8056306))

(assert (=> bs!1926904 m!8056308))

(declare-fun m!8056464 () Bool)

(assert (=> bs!1926904 m!8056464))

(assert (=> bs!1926904 m!8056444))

(assert (=> b!7449331 d!2296899))

(declare-fun b!7449749 () Bool)

(declare-fun res!2988186 () Bool)

(declare-fun e!4447206 () Bool)

(assert (=> b!7449749 (=> res!2988186 e!4447206)))

(declare-fun e!4447205 () Bool)

(assert (=> b!7449749 (= res!2988186 e!4447205)))

(declare-fun res!2988185 () Bool)

(assert (=> b!7449749 (=> (not res!2988185) (not e!4447205))))

(declare-fun lt!2619903 () Bool)

(assert (=> b!7449749 (= res!2988185 lt!2619903)))

(declare-fun b!7449750 () Bool)

(declare-fun e!4447203 () Bool)

(assert (=> b!7449750 (= e!4447203 (nullable!8489 lt!2619868))))

(declare-fun b!7449751 () Bool)

(declare-fun e!4447204 () Bool)

(assert (=> b!7449751 (= e!4447204 (not (= (head!15289 s!13591) (c!1377640 lt!2619868))))))

(declare-fun b!7449752 () Bool)

(declare-fun e!4447201 () Bool)

(declare-fun call!684505 () Bool)

(assert (=> b!7449752 (= e!4447201 (= lt!2619903 call!684505))))

(declare-fun b!7449753 () Bool)

(declare-fun e!4447202 () Bool)

(assert (=> b!7449753 (= e!4447201 e!4447202)))

(declare-fun c!1377719 () Bool)

(assert (=> b!7449753 (= c!1377719 ((_ is EmptyLang!19483) lt!2619868))))

(declare-fun b!7449754 () Bool)

(declare-fun res!2988188 () Bool)

(assert (=> b!7449754 (=> res!2988188 e!4447204)))

(assert (=> b!7449754 (= res!2988188 (not (isEmpty!41094 (tail!14858 s!13591))))))

(declare-fun b!7449755 () Bool)

(assert (=> b!7449755 (= e!4447205 (= (head!15289 s!13591) (c!1377640 lt!2619868)))))

(declare-fun b!7449756 () Bool)

(declare-fun res!2988187 () Bool)

(assert (=> b!7449756 (=> res!2988187 e!4447206)))

(assert (=> b!7449756 (= res!2988187 (not ((_ is ElementMatch!19483) lt!2619868)))))

(assert (=> b!7449756 (= e!4447202 e!4447206)))

(declare-fun d!2296901 () Bool)

(assert (=> d!2296901 e!4447201))

(declare-fun c!1377718 () Bool)

(assert (=> d!2296901 (= c!1377718 ((_ is EmptyExpr!19483) lt!2619868))))

(assert (=> d!2296901 (= lt!2619903 e!4447203)))

(declare-fun c!1377720 () Bool)

(assert (=> d!2296901 (= c!1377720 (isEmpty!41094 s!13591))))

(assert (=> d!2296901 (validRegex!9997 lt!2619868)))

(assert (=> d!2296901 (= (matchR!9247 lt!2619868 s!13591) lt!2619903)))

(declare-fun b!7449757 () Bool)

(declare-fun e!4447200 () Bool)

(assert (=> b!7449757 (= e!4447200 e!4447204)))

(declare-fun res!2988189 () Bool)

(assert (=> b!7449757 (=> res!2988189 e!4447204)))

(assert (=> b!7449757 (= res!2988189 call!684505)))

(declare-fun b!7449758 () Bool)

(assert (=> b!7449758 (= e!4447206 e!4447200)))

(declare-fun res!2988183 () Bool)

(assert (=> b!7449758 (=> (not res!2988183) (not e!4447200))))

(assert (=> b!7449758 (= res!2988183 (not lt!2619903))))

(declare-fun b!7449759 () Bool)

(assert (=> b!7449759 (= e!4447203 (matchR!9247 (derivativeStep!5549 lt!2619868 (head!15289 s!13591)) (tail!14858 s!13591)))))

(declare-fun b!7449760 () Bool)

(assert (=> b!7449760 (= e!4447202 (not lt!2619903))))

(declare-fun b!7449761 () Bool)

(declare-fun res!2988190 () Bool)

(assert (=> b!7449761 (=> (not res!2988190) (not e!4447205))))

(assert (=> b!7449761 (= res!2988190 (isEmpty!41094 (tail!14858 s!13591)))))

(declare-fun b!7449762 () Bool)

(declare-fun res!2988184 () Bool)

(assert (=> b!7449762 (=> (not res!2988184) (not e!4447205))))

(assert (=> b!7449762 (= res!2988184 (not call!684505))))

(declare-fun bm!684500 () Bool)

(assert (=> bm!684500 (= call!684505 (isEmpty!41094 s!13591))))

(assert (= (and d!2296901 c!1377720) b!7449750))

(assert (= (and d!2296901 (not c!1377720)) b!7449759))

(assert (= (and d!2296901 c!1377718) b!7449752))

(assert (= (and d!2296901 (not c!1377718)) b!7449753))

(assert (= (and b!7449753 c!1377719) b!7449760))

(assert (= (and b!7449753 (not c!1377719)) b!7449756))

(assert (= (and b!7449756 (not res!2988187)) b!7449749))

(assert (= (and b!7449749 res!2988185) b!7449762))

(assert (= (and b!7449762 res!2988184) b!7449761))

(assert (= (and b!7449761 res!2988190) b!7449755))

(assert (= (and b!7449749 (not res!2988186)) b!7449758))

(assert (= (and b!7449758 res!2988183) b!7449757))

(assert (= (and b!7449757 (not res!2988189)) b!7449754))

(assert (= (and b!7449754 (not res!2988188)) b!7449751))

(assert (= (or b!7449752 b!7449757 b!7449762) bm!684500))

(declare-fun m!8056466 () Bool)

(assert (=> b!7449750 m!8056466))

(assert (=> b!7449754 m!8056428))

(assert (=> b!7449754 m!8056428))

(assert (=> b!7449754 m!8056430))

(assert (=> b!7449755 m!8056432))

(assert (=> b!7449759 m!8056432))

(assert (=> b!7449759 m!8056432))

(declare-fun m!8056468 () Bool)

(assert (=> b!7449759 m!8056468))

(assert (=> b!7449759 m!8056428))

(assert (=> b!7449759 m!8056468))

(assert (=> b!7449759 m!8056428))

(declare-fun m!8056470 () Bool)

(assert (=> b!7449759 m!8056470))

(assert (=> b!7449751 m!8056432))

(assert (=> d!2296901 m!8056402))

(declare-fun m!8056472 () Bool)

(assert (=> d!2296901 m!8056472))

(assert (=> bm!684500 m!8056402))

(assert (=> b!7449761 m!8056428))

(assert (=> b!7449761 m!8056428))

(assert (=> b!7449761 m!8056430))

(assert (=> b!7449331 d!2296901))

(declare-fun d!2296903 () Bool)

(assert (=> d!2296903 (= (matchR!9247 lt!2619868 s!13591) (matchRSpec!4162 lt!2619868 s!13591))))

(declare-fun lt!2619904 () Unit!165801)

(assert (=> d!2296903 (= lt!2619904 (choose!57585 lt!2619868 s!13591))))

(assert (=> d!2296903 (validRegex!9997 lt!2619868)))

(assert (=> d!2296903 (= (mainMatchTheorem!4156 lt!2619868 s!13591) lt!2619904)))

(declare-fun bs!1926905 () Bool)

(assert (= bs!1926905 d!2296903))

(assert (=> bs!1926905 m!8056300))

(assert (=> bs!1926905 m!8056302))

(declare-fun m!8056474 () Bool)

(assert (=> bs!1926905 m!8056474))

(assert (=> bs!1926905 m!8056472))

(assert (=> b!7449331 d!2296903))

(declare-fun bm!684501 () Bool)

(declare-fun call!684506 () Bool)

(declare-fun c!1377721 () Bool)

(assert (=> bm!684501 (= call!684506 (validRegex!9997 (ite c!1377721 (regTwo!39479 r2!5783) (regTwo!39478 r2!5783))))))

(declare-fun b!7449763 () Bool)

(declare-fun e!4447209 () Bool)

(assert (=> b!7449763 (= e!4447209 call!684506)))

(declare-fun bm!684502 () Bool)

(declare-fun call!684508 () Bool)

(declare-fun call!684507 () Bool)

(assert (=> bm!684502 (= call!684508 call!684507)))

(declare-fun b!7449764 () Bool)

(declare-fun e!4447213 () Bool)

(assert (=> b!7449764 (= e!4447213 call!684506)))

(declare-fun b!7449765 () Bool)

(declare-fun res!2988194 () Bool)

(assert (=> b!7449765 (=> (not res!2988194) (not e!4447209))))

(assert (=> b!7449765 (= res!2988194 call!684508)))

(declare-fun e!4447208 () Bool)

(assert (=> b!7449765 (= e!4447208 e!4447209)))

(declare-fun b!7449766 () Bool)

(declare-fun e!4447207 () Bool)

(assert (=> b!7449766 (= e!4447207 e!4447213)))

(declare-fun res!2988191 () Bool)

(assert (=> b!7449766 (=> (not res!2988191) (not e!4447213))))

(assert (=> b!7449766 (= res!2988191 call!684508)))

(declare-fun b!7449767 () Bool)

(declare-fun e!4447212 () Bool)

(declare-fun e!4447210 () Bool)

(assert (=> b!7449767 (= e!4447212 e!4447210)))

(declare-fun c!1377722 () Bool)

(assert (=> b!7449767 (= c!1377722 ((_ is Star!19483) r2!5783))))

(declare-fun b!7449768 () Bool)

(declare-fun e!4447211 () Bool)

(assert (=> b!7449768 (= e!4447210 e!4447211)))

(declare-fun res!2988195 () Bool)

(assert (=> b!7449768 (= res!2988195 (not (nullable!8489 (reg!19812 r2!5783))))))

(assert (=> b!7449768 (=> (not res!2988195) (not e!4447211))))

(declare-fun bm!684503 () Bool)

(assert (=> bm!684503 (= call!684507 (validRegex!9997 (ite c!1377722 (reg!19812 r2!5783) (ite c!1377721 (regOne!39479 r2!5783) (regOne!39478 r2!5783)))))))

(declare-fun b!7449769 () Bool)

(assert (=> b!7449769 (= e!4447210 e!4447208)))

(assert (=> b!7449769 (= c!1377721 ((_ is Union!19483) r2!5783))))

(declare-fun d!2296905 () Bool)

(declare-fun res!2988193 () Bool)

(assert (=> d!2296905 (=> res!2988193 e!4447212)))

(assert (=> d!2296905 (= res!2988193 ((_ is ElementMatch!19483) r2!5783))))

(assert (=> d!2296905 (= (validRegex!9997 r2!5783) e!4447212)))

(declare-fun b!7449770 () Bool)

(declare-fun res!2988192 () Bool)

(assert (=> b!7449770 (=> res!2988192 e!4447207)))

(assert (=> b!7449770 (= res!2988192 (not ((_ is Concat!28328) r2!5783)))))

(assert (=> b!7449770 (= e!4447208 e!4447207)))

(declare-fun b!7449771 () Bool)

(assert (=> b!7449771 (= e!4447211 call!684507)))

(assert (= (and d!2296905 (not res!2988193)) b!7449767))

(assert (= (and b!7449767 c!1377722) b!7449768))

(assert (= (and b!7449767 (not c!1377722)) b!7449769))

(assert (= (and b!7449768 res!2988195) b!7449771))

(assert (= (and b!7449769 c!1377721) b!7449765))

(assert (= (and b!7449769 (not c!1377721)) b!7449770))

(assert (= (and b!7449765 res!2988194) b!7449763))

(assert (= (and b!7449770 (not res!2988192)) b!7449766))

(assert (= (and b!7449766 res!2988191) b!7449764))

(assert (= (or b!7449763 b!7449764) bm!684501))

(assert (= (or b!7449765 b!7449766) bm!684502))

(assert (= (or b!7449771 bm!684502) bm!684503))

(declare-fun m!8056476 () Bool)

(assert (=> bm!684501 m!8056476))

(declare-fun m!8056478 () Bool)

(assert (=> b!7449768 m!8056478))

(declare-fun m!8056480 () Bool)

(assert (=> bm!684503 m!8056480))

(assert (=> b!7449330 d!2296905))

(declare-fun bm!684504 () Bool)

(declare-fun call!684509 () Bool)

(declare-fun c!1377723 () Bool)

(assert (=> bm!684504 (= call!684509 (validRegex!9997 (ite c!1377723 (regTwo!39479 r1!5845) (regTwo!39478 r1!5845))))))

(declare-fun b!7449772 () Bool)

(declare-fun e!4447216 () Bool)

(assert (=> b!7449772 (= e!4447216 call!684509)))

(declare-fun bm!684505 () Bool)

(declare-fun call!684511 () Bool)

(declare-fun call!684510 () Bool)

(assert (=> bm!684505 (= call!684511 call!684510)))

(declare-fun b!7449773 () Bool)

(declare-fun e!4447220 () Bool)

(assert (=> b!7449773 (= e!4447220 call!684509)))

(declare-fun b!7449774 () Bool)

(declare-fun res!2988199 () Bool)

(assert (=> b!7449774 (=> (not res!2988199) (not e!4447216))))

(assert (=> b!7449774 (= res!2988199 call!684511)))

(declare-fun e!4447215 () Bool)

(assert (=> b!7449774 (= e!4447215 e!4447216)))

(declare-fun b!7449775 () Bool)

(declare-fun e!4447214 () Bool)

(assert (=> b!7449775 (= e!4447214 e!4447220)))

(declare-fun res!2988196 () Bool)

(assert (=> b!7449775 (=> (not res!2988196) (not e!4447220))))

(assert (=> b!7449775 (= res!2988196 call!684511)))

(declare-fun b!7449776 () Bool)

(declare-fun e!4447219 () Bool)

(declare-fun e!4447217 () Bool)

(assert (=> b!7449776 (= e!4447219 e!4447217)))

(declare-fun c!1377724 () Bool)

(assert (=> b!7449776 (= c!1377724 ((_ is Star!19483) r1!5845))))

(declare-fun b!7449777 () Bool)

(declare-fun e!4447218 () Bool)

(assert (=> b!7449777 (= e!4447217 e!4447218)))

(declare-fun res!2988200 () Bool)

(assert (=> b!7449777 (= res!2988200 (not (nullable!8489 (reg!19812 r1!5845))))))

(assert (=> b!7449777 (=> (not res!2988200) (not e!4447218))))

(declare-fun bm!684506 () Bool)

(assert (=> bm!684506 (= call!684510 (validRegex!9997 (ite c!1377724 (reg!19812 r1!5845) (ite c!1377723 (regOne!39479 r1!5845) (regOne!39478 r1!5845)))))))

(declare-fun b!7449778 () Bool)

(assert (=> b!7449778 (= e!4447217 e!4447215)))

(assert (=> b!7449778 (= c!1377723 ((_ is Union!19483) r1!5845))))

(declare-fun d!2296907 () Bool)

(declare-fun res!2988198 () Bool)

(assert (=> d!2296907 (=> res!2988198 e!4447219)))

(assert (=> d!2296907 (= res!2988198 ((_ is ElementMatch!19483) r1!5845))))

(assert (=> d!2296907 (= (validRegex!9997 r1!5845) e!4447219)))

(declare-fun b!7449779 () Bool)

(declare-fun res!2988197 () Bool)

(assert (=> b!7449779 (=> res!2988197 e!4447214)))

(assert (=> b!7449779 (= res!2988197 (not ((_ is Concat!28328) r1!5845)))))

(assert (=> b!7449779 (= e!4447215 e!4447214)))

(declare-fun b!7449780 () Bool)

(assert (=> b!7449780 (= e!4447218 call!684510)))

(assert (= (and d!2296907 (not res!2988198)) b!7449776))

(assert (= (and b!7449776 c!1377724) b!7449777))

(assert (= (and b!7449776 (not c!1377724)) b!7449778))

(assert (= (and b!7449777 res!2988200) b!7449780))

(assert (= (and b!7449778 c!1377723) b!7449774))

(assert (= (and b!7449778 (not c!1377723)) b!7449779))

(assert (= (and b!7449774 res!2988199) b!7449772))

(assert (= (and b!7449779 (not res!2988197)) b!7449775))

(assert (= (and b!7449775 res!2988196) b!7449773))

(assert (= (or b!7449772 b!7449773) bm!684504))

(assert (= (or b!7449774 b!7449775) bm!684505))

(assert (= (or b!7449780 bm!684505) bm!684506))

(declare-fun m!8056482 () Bool)

(assert (=> bm!684504 m!8056482))

(declare-fun m!8056484 () Bool)

(assert (=> b!7449777 m!8056484))

(declare-fun m!8056486 () Bool)

(assert (=> bm!684506 m!8056486))

(assert (=> start!723306 d!2296907))

(declare-fun bs!1926906 () Bool)

(declare-fun d!2296909 () Bool)

(assert (= bs!1926906 (and d!2296909 b!7449337)))

(declare-fun lambda!460767 () Int)

(assert (=> bs!1926906 (not (= lambda!460767 lambda!460739))))

(declare-fun bs!1926907 () Bool)

(assert (= bs!1926907 (and d!2296909 b!7449660)))

(assert (=> bs!1926907 (not (= lambda!460767 lambda!460763))))

(assert (=> bs!1926906 (= lambda!460767 lambda!460738)))

(declare-fun bs!1926908 () Bool)

(assert (= bs!1926908 (and d!2296909 b!7449499)))

(assert (=> bs!1926908 (not (= lambda!460767 lambda!460754))))

(declare-fun bs!1926909 () Bool)

(assert (= bs!1926909 (and d!2296909 b!7449497)))

(assert (=> bs!1926909 (not (= lambda!460767 lambda!460753))))

(declare-fun bs!1926910 () Bool)

(assert (= bs!1926910 (and d!2296909 b!7449662)))

(assert (=> bs!1926910 (not (= lambda!460767 lambda!460764))))

(assert (=> d!2296909 true))

(assert (=> d!2296909 true))

(assert (=> d!2296909 true))

(assert (=> d!2296909 (= (isDefined!13731 (findConcatSeparation!3164 lt!2619870 rTail!78 Nil!72075 s!13591 s!13591)) (Exists!4104 lambda!460767))))

(declare-fun lt!2619907 () Unit!165801)

(declare-fun choose!57586 (Regex!19483 Regex!19483 List!72199) Unit!165801)

(assert (=> d!2296909 (= lt!2619907 (choose!57586 lt!2619870 rTail!78 s!13591))))

(assert (=> d!2296909 (validRegex!9997 lt!2619870)))

(assert (=> d!2296909 (= (lemmaFindConcatSeparationEquivalentToExists!2922 lt!2619870 rTail!78 s!13591) lt!2619907)))

(declare-fun bs!1926911 () Bool)

(assert (= bs!1926911 d!2296909))

(assert (=> bs!1926911 m!8056320))

(declare-fun m!8056488 () Bool)

(assert (=> bs!1926911 m!8056488))

(declare-fun m!8056490 () Bool)

(assert (=> bs!1926911 m!8056490))

(assert (=> bs!1926911 m!8056316))

(assert (=> bs!1926911 m!8056320))

(assert (=> bs!1926911 m!8056322))

(assert (=> b!7449337 d!2296909))

(declare-fun d!2296911 () Bool)

(declare-fun isEmpty!41095 (Option!17042) Bool)

(assert (=> d!2296911 (= (isDefined!13731 (findConcatSeparation!3164 lt!2619870 rTail!78 Nil!72075 s!13591 s!13591)) (not (isEmpty!41095 (findConcatSeparation!3164 lt!2619870 rTail!78 Nil!72075 s!13591 s!13591))))))

(declare-fun bs!1926912 () Bool)

(assert (= bs!1926912 d!2296911))

(assert (=> bs!1926912 m!8056320))

(declare-fun m!8056492 () Bool)

(assert (=> bs!1926912 m!8056492))

(assert (=> b!7449337 d!2296911))

(declare-fun bm!684507 () Bool)

(declare-fun call!684512 () Bool)

(declare-fun c!1377725 () Bool)

(assert (=> bm!684507 (= call!684512 (validRegex!9997 (ite c!1377725 (regTwo!39479 lt!2619870) (regTwo!39478 lt!2619870))))))

(declare-fun b!7449785 () Bool)

(declare-fun e!4447225 () Bool)

(assert (=> b!7449785 (= e!4447225 call!684512)))

(declare-fun bm!684508 () Bool)

(declare-fun call!684514 () Bool)

(declare-fun call!684513 () Bool)

(assert (=> bm!684508 (= call!684514 call!684513)))

(declare-fun b!7449786 () Bool)

(declare-fun e!4447229 () Bool)

(assert (=> b!7449786 (= e!4447229 call!684512)))

(declare-fun b!7449787 () Bool)

(declare-fun res!2988208 () Bool)

(assert (=> b!7449787 (=> (not res!2988208) (not e!4447225))))

(assert (=> b!7449787 (= res!2988208 call!684514)))

(declare-fun e!4447224 () Bool)

(assert (=> b!7449787 (= e!4447224 e!4447225)))

(declare-fun b!7449788 () Bool)

(declare-fun e!4447223 () Bool)

(assert (=> b!7449788 (= e!4447223 e!4447229)))

(declare-fun res!2988205 () Bool)

(assert (=> b!7449788 (=> (not res!2988205) (not e!4447229))))

(assert (=> b!7449788 (= res!2988205 call!684514)))

(declare-fun b!7449789 () Bool)

(declare-fun e!4447228 () Bool)

(declare-fun e!4447226 () Bool)

(assert (=> b!7449789 (= e!4447228 e!4447226)))

(declare-fun c!1377726 () Bool)

(assert (=> b!7449789 (= c!1377726 ((_ is Star!19483) lt!2619870))))

(declare-fun b!7449790 () Bool)

(declare-fun e!4447227 () Bool)

(assert (=> b!7449790 (= e!4447226 e!4447227)))

(declare-fun res!2988209 () Bool)

(assert (=> b!7449790 (= res!2988209 (not (nullable!8489 (reg!19812 lt!2619870))))))

(assert (=> b!7449790 (=> (not res!2988209) (not e!4447227))))

(declare-fun bm!684509 () Bool)

(assert (=> bm!684509 (= call!684513 (validRegex!9997 (ite c!1377726 (reg!19812 lt!2619870) (ite c!1377725 (regOne!39479 lt!2619870) (regOne!39478 lt!2619870)))))))

(declare-fun b!7449791 () Bool)

(assert (=> b!7449791 (= e!4447226 e!4447224)))

(assert (=> b!7449791 (= c!1377725 ((_ is Union!19483) lt!2619870))))

(declare-fun d!2296913 () Bool)

(declare-fun res!2988207 () Bool)

(assert (=> d!2296913 (=> res!2988207 e!4447228)))

(assert (=> d!2296913 (= res!2988207 ((_ is ElementMatch!19483) lt!2619870))))

(assert (=> d!2296913 (= (validRegex!9997 lt!2619870) e!4447228)))

(declare-fun b!7449792 () Bool)

(declare-fun res!2988206 () Bool)

(assert (=> b!7449792 (=> res!2988206 e!4447223)))

(assert (=> b!7449792 (= res!2988206 (not ((_ is Concat!28328) lt!2619870)))))

(assert (=> b!7449792 (= e!4447224 e!4447223)))

(declare-fun b!7449793 () Bool)

(assert (=> b!7449793 (= e!4447227 call!684513)))

(assert (= (and d!2296913 (not res!2988207)) b!7449789))

(assert (= (and b!7449789 c!1377726) b!7449790))

(assert (= (and b!7449789 (not c!1377726)) b!7449791))

(assert (= (and b!7449790 res!2988209) b!7449793))

(assert (= (and b!7449791 c!1377725) b!7449787))

(assert (= (and b!7449791 (not c!1377725)) b!7449792))

(assert (= (and b!7449787 res!2988208) b!7449785))

(assert (= (and b!7449792 (not res!2988206)) b!7449788))

(assert (= (and b!7449788 res!2988205) b!7449786))

(assert (= (or b!7449785 b!7449786) bm!684507))

(assert (= (or b!7449787 b!7449788) bm!684508))

(assert (= (or b!7449793 bm!684508) bm!684509))

(declare-fun m!8056494 () Bool)

(assert (=> bm!684507 m!8056494))

(declare-fun m!8056496 () Bool)

(assert (=> b!7449790 m!8056496))

(declare-fun m!8056498 () Bool)

(assert (=> bm!684509 m!8056498))

(assert (=> b!7449337 d!2296913))

(declare-fun bs!1926913 () Bool)

(declare-fun d!2296915 () Bool)

(assert (= bs!1926913 (and d!2296915 b!7449337)))

(declare-fun lambda!460772 () Int)

(assert (=> bs!1926913 (not (= lambda!460772 lambda!460739))))

(declare-fun bs!1926914 () Bool)

(assert (= bs!1926914 (and d!2296915 b!7449660)))

(assert (=> bs!1926914 (not (= lambda!460772 lambda!460763))))

(assert (=> bs!1926913 (= lambda!460772 lambda!460738)))

(declare-fun bs!1926915 () Bool)

(assert (= bs!1926915 (and d!2296915 b!7449499)))

(assert (=> bs!1926915 (not (= lambda!460772 lambda!460754))))

(declare-fun bs!1926916 () Bool)

(assert (= bs!1926916 (and d!2296915 d!2296909)))

(assert (=> bs!1926916 (= lambda!460772 lambda!460767)))

(declare-fun bs!1926917 () Bool)

(assert (= bs!1926917 (and d!2296915 b!7449497)))

(assert (=> bs!1926917 (not (= lambda!460772 lambda!460753))))

(declare-fun bs!1926918 () Bool)

(assert (= bs!1926918 (and d!2296915 b!7449662)))

(assert (=> bs!1926918 (not (= lambda!460772 lambda!460764))))

(assert (=> d!2296915 true))

(assert (=> d!2296915 true))

(assert (=> d!2296915 true))

(declare-fun lambda!460773 () Int)

(assert (=> bs!1926913 (= lambda!460773 lambda!460739)))

(declare-fun bs!1926919 () Bool)

(assert (= bs!1926919 d!2296915))

(assert (=> bs!1926919 (not (= lambda!460773 lambda!460772))))

(assert (=> bs!1926914 (not (= lambda!460773 lambda!460763))))

(assert (=> bs!1926913 (not (= lambda!460773 lambda!460738))))

(assert (=> bs!1926915 (= (and (= lt!2619870 (regOne!39478 lt!2619868)) (= rTail!78 (regTwo!39478 lt!2619868))) (= lambda!460773 lambda!460754))))

(assert (=> bs!1926916 (not (= lambda!460773 lambda!460767))))

(assert (=> bs!1926917 (not (= lambda!460773 lambda!460753))))

(assert (=> bs!1926918 (= (and (= lt!2619870 (regOne!39478 lt!2619866)) (= rTail!78 (regTwo!39478 lt!2619866))) (= lambda!460773 lambda!460764))))

(assert (=> d!2296915 true))

(assert (=> d!2296915 true))

(assert (=> d!2296915 true))

(assert (=> d!2296915 (= (Exists!4104 lambda!460772) (Exists!4104 lambda!460773))))

(declare-fun lt!2619910 () Unit!165801)

(declare-fun choose!57587 (Regex!19483 Regex!19483 List!72199) Unit!165801)

(assert (=> d!2296915 (= lt!2619910 (choose!57587 lt!2619870 rTail!78 s!13591))))

(assert (=> d!2296915 (validRegex!9997 lt!2619870)))

(assert (=> d!2296915 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2440 lt!2619870 rTail!78 s!13591) lt!2619910)))

(declare-fun m!8056500 () Bool)

(assert (=> bs!1926919 m!8056500))

(declare-fun m!8056502 () Bool)

(assert (=> bs!1926919 m!8056502))

(declare-fun m!8056504 () Bool)

(assert (=> bs!1926919 m!8056504))

(assert (=> bs!1926919 m!8056316))

(assert (=> b!7449337 d!2296915))

(declare-fun b!7449820 () Bool)

(declare-fun lt!2619919 () Unit!165801)

(declare-fun lt!2619918 () Unit!165801)

(assert (=> b!7449820 (= lt!2619919 lt!2619918)))

(declare-fun ++!17161 (List!72199 List!72199) List!72199)

(assert (=> b!7449820 (= (++!17161 (++!17161 Nil!72075 (Cons!72075 (h!78523 s!13591) Nil!72075)) (t!386768 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3041 (List!72199 C!39240 List!72199 List!72199) Unit!165801)

(assert (=> b!7449820 (= lt!2619918 (lemmaMoveElementToOtherListKeepsConcatEq!3041 Nil!72075 (h!78523 s!13591) (t!386768 s!13591) s!13591))))

(declare-fun e!4447247 () Option!17042)

(assert (=> b!7449820 (= e!4447247 (findConcatSeparation!3164 lt!2619870 rTail!78 (++!17161 Nil!72075 (Cons!72075 (h!78523 s!13591) Nil!72075)) (t!386768 s!13591) s!13591))))

(declare-fun b!7449821 () Bool)

(declare-fun e!4447248 () Bool)

(assert (=> b!7449821 (= e!4447248 (matchR!9247 rTail!78 s!13591))))

(declare-fun b!7449822 () Bool)

(declare-fun e!4447246 () Option!17042)

(assert (=> b!7449822 (= e!4447246 e!4447247)))

(declare-fun c!1377731 () Bool)

(assert (=> b!7449822 (= c!1377731 ((_ is Nil!72075) s!13591))))

(declare-fun b!7449823 () Bool)

(declare-fun e!4447245 () Bool)

(declare-fun lt!2619917 () Option!17042)

(declare-fun get!25110 (Option!17042) tuple2!68420)

(assert (=> b!7449823 (= e!4447245 (= (++!17161 (_1!37513 (get!25110 lt!2619917)) (_2!37513 (get!25110 lt!2619917))) s!13591))))

(declare-fun b!7449824 () Bool)

(assert (=> b!7449824 (= e!4447246 (Some!17041 (tuple2!68421 Nil!72075 s!13591)))))

(declare-fun d!2296917 () Bool)

(declare-fun e!4447244 () Bool)

(assert (=> d!2296917 e!4447244))

(declare-fun res!2988231 () Bool)

(assert (=> d!2296917 (=> res!2988231 e!4447244)))

(assert (=> d!2296917 (= res!2988231 e!4447245)))

(declare-fun res!2988229 () Bool)

(assert (=> d!2296917 (=> (not res!2988229) (not e!4447245))))

(assert (=> d!2296917 (= res!2988229 (isDefined!13731 lt!2619917))))

(assert (=> d!2296917 (= lt!2619917 e!4447246)))

(declare-fun c!1377732 () Bool)

(assert (=> d!2296917 (= c!1377732 e!4447248)))

(declare-fun res!2988230 () Bool)

(assert (=> d!2296917 (=> (not res!2988230) (not e!4447248))))

(assert (=> d!2296917 (= res!2988230 (matchR!9247 lt!2619870 Nil!72075))))

(assert (=> d!2296917 (validRegex!9997 lt!2619870)))

(assert (=> d!2296917 (= (findConcatSeparation!3164 lt!2619870 rTail!78 Nil!72075 s!13591 s!13591) lt!2619917)))

(declare-fun b!7449825 () Bool)

(assert (=> b!7449825 (= e!4447244 (not (isDefined!13731 lt!2619917)))))

(declare-fun b!7449826 () Bool)

(declare-fun res!2988232 () Bool)

(assert (=> b!7449826 (=> (not res!2988232) (not e!4447245))))

(assert (=> b!7449826 (= res!2988232 (matchR!9247 rTail!78 (_2!37513 (get!25110 lt!2619917))))))

(declare-fun b!7449827 () Bool)

(assert (=> b!7449827 (= e!4447247 None!17041)))

(declare-fun b!7449828 () Bool)

(declare-fun res!2988228 () Bool)

(assert (=> b!7449828 (=> (not res!2988228) (not e!4447245))))

(assert (=> b!7449828 (= res!2988228 (matchR!9247 lt!2619870 (_1!37513 (get!25110 lt!2619917))))))

(assert (= (and d!2296917 res!2988230) b!7449821))

(assert (= (and d!2296917 c!1377732) b!7449824))

(assert (= (and d!2296917 (not c!1377732)) b!7449822))

(assert (= (and b!7449822 c!1377731) b!7449827))

(assert (= (and b!7449822 (not c!1377731)) b!7449820))

(assert (= (and d!2296917 res!2988229) b!7449828))

(assert (= (and b!7449828 res!2988228) b!7449826))

(assert (= (and b!7449826 res!2988232) b!7449823))

(assert (= (and d!2296917 (not res!2988231)) b!7449825))

(declare-fun m!8056506 () Bool)

(assert (=> b!7449821 m!8056506))

(declare-fun m!8056508 () Bool)

(assert (=> b!7449825 m!8056508))

(declare-fun m!8056510 () Bool)

(assert (=> b!7449826 m!8056510))

(declare-fun m!8056512 () Bool)

(assert (=> b!7449826 m!8056512))

(declare-fun m!8056514 () Bool)

(assert (=> b!7449820 m!8056514))

(assert (=> b!7449820 m!8056514))

(declare-fun m!8056516 () Bool)

(assert (=> b!7449820 m!8056516))

(declare-fun m!8056518 () Bool)

(assert (=> b!7449820 m!8056518))

(assert (=> b!7449820 m!8056514))

(declare-fun m!8056520 () Bool)

(assert (=> b!7449820 m!8056520))

(assert (=> b!7449828 m!8056510))

(declare-fun m!8056522 () Bool)

(assert (=> b!7449828 m!8056522))

(assert (=> b!7449823 m!8056510))

(declare-fun m!8056524 () Bool)

(assert (=> b!7449823 m!8056524))

(assert (=> d!2296917 m!8056508))

(declare-fun m!8056526 () Bool)

(assert (=> d!2296917 m!8056526))

(assert (=> d!2296917 m!8056316))

(assert (=> b!7449337 d!2296917))

(declare-fun d!2296919 () Bool)

(declare-fun choose!57588 (Int) Bool)

(assert (=> d!2296919 (= (Exists!4104 lambda!460738) (choose!57588 lambda!460738))))

(declare-fun bs!1926920 () Bool)

(assert (= bs!1926920 d!2296919))

(declare-fun m!8056528 () Bool)

(assert (=> bs!1926920 m!8056528))

(assert (=> b!7449337 d!2296919))

(declare-fun d!2296921 () Bool)

(assert (=> d!2296921 (= (Exists!4104 lambda!460739) (choose!57588 lambda!460739))))

(declare-fun bs!1926921 () Bool)

(assert (= bs!1926921 d!2296921))

(declare-fun m!8056530 () Bool)

(assert (=> bs!1926921 m!8056530))

(assert (=> b!7449337 d!2296921))

(declare-fun b!7449833 () Bool)

(declare-fun e!4447251 () Bool)

(declare-fun tp!2158246 () Bool)

(assert (=> b!7449833 (= e!4447251 (and tp_is_empty!49255 tp!2158246))))

(assert (=> b!7449328 (= tp!2158149 e!4447251)))

(assert (= (and b!7449328 ((_ is Cons!72075) (t!386768 s!13591))) b!7449833))

(declare-fun b!7449847 () Bool)

(declare-fun e!4447254 () Bool)

(declare-fun tp!2158260 () Bool)

(declare-fun tp!2158257 () Bool)

(assert (=> b!7449847 (= e!4447254 (and tp!2158260 tp!2158257))))

(declare-fun b!7449845 () Bool)

(declare-fun tp!2158258 () Bool)

(declare-fun tp!2158261 () Bool)

(assert (=> b!7449845 (= e!4447254 (and tp!2158258 tp!2158261))))

(assert (=> b!7449338 (= tp!2158145 e!4447254)))

(declare-fun b!7449846 () Bool)

(declare-fun tp!2158259 () Bool)

(assert (=> b!7449846 (= e!4447254 tp!2158259)))

(declare-fun b!7449844 () Bool)

(assert (=> b!7449844 (= e!4447254 tp_is_empty!49255)))

(assert (= (and b!7449338 ((_ is ElementMatch!19483) (regOne!39479 r1!5845))) b!7449844))

(assert (= (and b!7449338 ((_ is Concat!28328) (regOne!39479 r1!5845))) b!7449845))

(assert (= (and b!7449338 ((_ is Star!19483) (regOne!39479 r1!5845))) b!7449846))

(assert (= (and b!7449338 ((_ is Union!19483) (regOne!39479 r1!5845))) b!7449847))

(declare-fun b!7449851 () Bool)

(declare-fun e!4447255 () Bool)

(declare-fun tp!2158265 () Bool)

(declare-fun tp!2158262 () Bool)

(assert (=> b!7449851 (= e!4447255 (and tp!2158265 tp!2158262))))

(declare-fun b!7449849 () Bool)

(declare-fun tp!2158263 () Bool)

(declare-fun tp!2158266 () Bool)

(assert (=> b!7449849 (= e!4447255 (and tp!2158263 tp!2158266))))

(assert (=> b!7449338 (= tp!2158140 e!4447255)))

(declare-fun b!7449850 () Bool)

(declare-fun tp!2158264 () Bool)

(assert (=> b!7449850 (= e!4447255 tp!2158264)))

(declare-fun b!7449848 () Bool)

(assert (=> b!7449848 (= e!4447255 tp_is_empty!49255)))

(assert (= (and b!7449338 ((_ is ElementMatch!19483) (regTwo!39479 r1!5845))) b!7449848))

(assert (= (and b!7449338 ((_ is Concat!28328) (regTwo!39479 r1!5845))) b!7449849))

(assert (= (and b!7449338 ((_ is Star!19483) (regTwo!39479 r1!5845))) b!7449850))

(assert (= (and b!7449338 ((_ is Union!19483) (regTwo!39479 r1!5845))) b!7449851))

(declare-fun b!7449855 () Bool)

(declare-fun e!4447256 () Bool)

(declare-fun tp!2158270 () Bool)

(declare-fun tp!2158267 () Bool)

(assert (=> b!7449855 (= e!4447256 (and tp!2158270 tp!2158267))))

(declare-fun b!7449853 () Bool)

(declare-fun tp!2158268 () Bool)

(declare-fun tp!2158271 () Bool)

(assert (=> b!7449853 (= e!4447256 (and tp!2158268 tp!2158271))))

(assert (=> b!7449333 (= tp!2158150 e!4447256)))

(declare-fun b!7449854 () Bool)

(declare-fun tp!2158269 () Bool)

(assert (=> b!7449854 (= e!4447256 tp!2158269)))

(declare-fun b!7449852 () Bool)

(assert (=> b!7449852 (= e!4447256 tp_is_empty!49255)))

(assert (= (and b!7449333 ((_ is ElementMatch!19483) (reg!19812 r1!5845))) b!7449852))

(assert (= (and b!7449333 ((_ is Concat!28328) (reg!19812 r1!5845))) b!7449853))

(assert (= (and b!7449333 ((_ is Star!19483) (reg!19812 r1!5845))) b!7449854))

(assert (= (and b!7449333 ((_ is Union!19483) (reg!19812 r1!5845))) b!7449855))

(declare-fun b!7449859 () Bool)

(declare-fun e!4447257 () Bool)

(declare-fun tp!2158275 () Bool)

(declare-fun tp!2158272 () Bool)

(assert (=> b!7449859 (= e!4447257 (and tp!2158275 tp!2158272))))

(declare-fun b!7449857 () Bool)

(declare-fun tp!2158273 () Bool)

(declare-fun tp!2158276 () Bool)

(assert (=> b!7449857 (= e!4447257 (and tp!2158273 tp!2158276))))

(assert (=> b!7449335 (= tp!2158146 e!4447257)))

(declare-fun b!7449858 () Bool)

(declare-fun tp!2158274 () Bool)

(assert (=> b!7449858 (= e!4447257 tp!2158274)))

(declare-fun b!7449856 () Bool)

(assert (=> b!7449856 (= e!4447257 tp_is_empty!49255)))

(assert (= (and b!7449335 ((_ is ElementMatch!19483) (regOne!39478 r1!5845))) b!7449856))

(assert (= (and b!7449335 ((_ is Concat!28328) (regOne!39478 r1!5845))) b!7449857))

(assert (= (and b!7449335 ((_ is Star!19483) (regOne!39478 r1!5845))) b!7449858))

(assert (= (and b!7449335 ((_ is Union!19483) (regOne!39478 r1!5845))) b!7449859))

(declare-fun b!7449863 () Bool)

(declare-fun e!4447258 () Bool)

(declare-fun tp!2158280 () Bool)

(declare-fun tp!2158277 () Bool)

(assert (=> b!7449863 (= e!4447258 (and tp!2158280 tp!2158277))))

(declare-fun b!7449861 () Bool)

(declare-fun tp!2158278 () Bool)

(declare-fun tp!2158281 () Bool)

(assert (=> b!7449861 (= e!4447258 (and tp!2158278 tp!2158281))))

(assert (=> b!7449335 (= tp!2158151 e!4447258)))

(declare-fun b!7449862 () Bool)

(declare-fun tp!2158279 () Bool)

(assert (=> b!7449862 (= e!4447258 tp!2158279)))

(declare-fun b!7449860 () Bool)

(assert (=> b!7449860 (= e!4447258 tp_is_empty!49255)))

(assert (= (and b!7449335 ((_ is ElementMatch!19483) (regTwo!39478 r1!5845))) b!7449860))

(assert (= (and b!7449335 ((_ is Concat!28328) (regTwo!39478 r1!5845))) b!7449861))

(assert (= (and b!7449335 ((_ is Star!19483) (regTwo!39478 r1!5845))) b!7449862))

(assert (= (and b!7449335 ((_ is Union!19483) (regTwo!39478 r1!5845))) b!7449863))

(declare-fun b!7449867 () Bool)

(declare-fun e!4447259 () Bool)

(declare-fun tp!2158285 () Bool)

(declare-fun tp!2158282 () Bool)

(assert (=> b!7449867 (= e!4447259 (and tp!2158285 tp!2158282))))

(declare-fun b!7449865 () Bool)

(declare-fun tp!2158283 () Bool)

(declare-fun tp!2158286 () Bool)

(assert (=> b!7449865 (= e!4447259 (and tp!2158283 tp!2158286))))

(assert (=> b!7449334 (= tp!2158155 e!4447259)))

(declare-fun b!7449866 () Bool)

(declare-fun tp!2158284 () Bool)

(assert (=> b!7449866 (= e!4447259 tp!2158284)))

(declare-fun b!7449864 () Bool)

(assert (=> b!7449864 (= e!4447259 tp_is_empty!49255)))

(assert (= (and b!7449334 ((_ is ElementMatch!19483) (regOne!39479 r2!5783))) b!7449864))

(assert (= (and b!7449334 ((_ is Concat!28328) (regOne!39479 r2!5783))) b!7449865))

(assert (= (and b!7449334 ((_ is Star!19483) (regOne!39479 r2!5783))) b!7449866))

(assert (= (and b!7449334 ((_ is Union!19483) (regOne!39479 r2!5783))) b!7449867))

(declare-fun b!7449871 () Bool)

(declare-fun e!4447260 () Bool)

(declare-fun tp!2158290 () Bool)

(declare-fun tp!2158287 () Bool)

(assert (=> b!7449871 (= e!4447260 (and tp!2158290 tp!2158287))))

(declare-fun b!7449869 () Bool)

(declare-fun tp!2158288 () Bool)

(declare-fun tp!2158291 () Bool)

(assert (=> b!7449869 (= e!4447260 (and tp!2158288 tp!2158291))))

(assert (=> b!7449334 (= tp!2158142 e!4447260)))

(declare-fun b!7449870 () Bool)

(declare-fun tp!2158289 () Bool)

(assert (=> b!7449870 (= e!4447260 tp!2158289)))

(declare-fun b!7449868 () Bool)

(assert (=> b!7449868 (= e!4447260 tp_is_empty!49255)))

(assert (= (and b!7449334 ((_ is ElementMatch!19483) (regTwo!39479 r2!5783))) b!7449868))

(assert (= (and b!7449334 ((_ is Concat!28328) (regTwo!39479 r2!5783))) b!7449869))

(assert (= (and b!7449334 ((_ is Star!19483) (regTwo!39479 r2!5783))) b!7449870))

(assert (= (and b!7449334 ((_ is Union!19483) (regTwo!39479 r2!5783))) b!7449871))

(declare-fun b!7449875 () Bool)

(declare-fun e!4447261 () Bool)

(declare-fun tp!2158295 () Bool)

(declare-fun tp!2158292 () Bool)

(assert (=> b!7449875 (= e!4447261 (and tp!2158295 tp!2158292))))

(declare-fun b!7449873 () Bool)

(declare-fun tp!2158293 () Bool)

(declare-fun tp!2158296 () Bool)

(assert (=> b!7449873 (= e!4447261 (and tp!2158293 tp!2158296))))

(assert (=> b!7449329 (= tp!2158152 e!4447261)))

(declare-fun b!7449874 () Bool)

(declare-fun tp!2158294 () Bool)

(assert (=> b!7449874 (= e!4447261 tp!2158294)))

(declare-fun b!7449872 () Bool)

(assert (=> b!7449872 (= e!4447261 tp_is_empty!49255)))

(assert (= (and b!7449329 ((_ is ElementMatch!19483) (reg!19812 r2!5783))) b!7449872))

(assert (= (and b!7449329 ((_ is Concat!28328) (reg!19812 r2!5783))) b!7449873))

(assert (= (and b!7449329 ((_ is Star!19483) (reg!19812 r2!5783))) b!7449874))

(assert (= (and b!7449329 ((_ is Union!19483) (reg!19812 r2!5783))) b!7449875))

(declare-fun b!7449879 () Bool)

(declare-fun e!4447262 () Bool)

(declare-fun tp!2158300 () Bool)

(declare-fun tp!2158297 () Bool)

(assert (=> b!7449879 (= e!4447262 (and tp!2158300 tp!2158297))))

(declare-fun b!7449877 () Bool)

(declare-fun tp!2158298 () Bool)

(declare-fun tp!2158301 () Bool)

(assert (=> b!7449877 (= e!4447262 (and tp!2158298 tp!2158301))))

(assert (=> b!7449341 (= tp!2158144 e!4447262)))

(declare-fun b!7449878 () Bool)

(declare-fun tp!2158299 () Bool)

(assert (=> b!7449878 (= e!4447262 tp!2158299)))

(declare-fun b!7449876 () Bool)

(assert (=> b!7449876 (= e!4447262 tp_is_empty!49255)))

(assert (= (and b!7449341 ((_ is ElementMatch!19483) (regOne!39478 r2!5783))) b!7449876))

(assert (= (and b!7449341 ((_ is Concat!28328) (regOne!39478 r2!5783))) b!7449877))

(assert (= (and b!7449341 ((_ is Star!19483) (regOne!39478 r2!5783))) b!7449878))

(assert (= (and b!7449341 ((_ is Union!19483) (regOne!39478 r2!5783))) b!7449879))

(declare-fun b!7449883 () Bool)

(declare-fun e!4447263 () Bool)

(declare-fun tp!2158305 () Bool)

(declare-fun tp!2158302 () Bool)

(assert (=> b!7449883 (= e!4447263 (and tp!2158305 tp!2158302))))

(declare-fun b!7449881 () Bool)

(declare-fun tp!2158303 () Bool)

(declare-fun tp!2158306 () Bool)

(assert (=> b!7449881 (= e!4447263 (and tp!2158303 tp!2158306))))

(assert (=> b!7449341 (= tp!2158153 e!4447263)))

(declare-fun b!7449882 () Bool)

(declare-fun tp!2158304 () Bool)

(assert (=> b!7449882 (= e!4447263 tp!2158304)))

(declare-fun b!7449880 () Bool)

(assert (=> b!7449880 (= e!4447263 tp_is_empty!49255)))

(assert (= (and b!7449341 ((_ is ElementMatch!19483) (regTwo!39478 r2!5783))) b!7449880))

(assert (= (and b!7449341 ((_ is Concat!28328) (regTwo!39478 r2!5783))) b!7449881))

(assert (= (and b!7449341 ((_ is Star!19483) (regTwo!39478 r2!5783))) b!7449882))

(assert (= (and b!7449341 ((_ is Union!19483) (regTwo!39478 r2!5783))) b!7449883))

(declare-fun b!7449887 () Bool)

(declare-fun e!4447264 () Bool)

(declare-fun tp!2158310 () Bool)

(declare-fun tp!2158307 () Bool)

(assert (=> b!7449887 (= e!4447264 (and tp!2158310 tp!2158307))))

(declare-fun b!7449885 () Bool)

(declare-fun tp!2158308 () Bool)

(declare-fun tp!2158311 () Bool)

(assert (=> b!7449885 (= e!4447264 (and tp!2158308 tp!2158311))))

(assert (=> b!7449332 (= tp!2158141 e!4447264)))

(declare-fun b!7449886 () Bool)

(declare-fun tp!2158309 () Bool)

(assert (=> b!7449886 (= e!4447264 tp!2158309)))

(declare-fun b!7449884 () Bool)

(assert (=> b!7449884 (= e!4447264 tp_is_empty!49255)))

(assert (= (and b!7449332 ((_ is ElementMatch!19483) (regOne!39479 rTail!78))) b!7449884))

(assert (= (and b!7449332 ((_ is Concat!28328) (regOne!39479 rTail!78))) b!7449885))

(assert (= (and b!7449332 ((_ is Star!19483) (regOne!39479 rTail!78))) b!7449886))

(assert (= (and b!7449332 ((_ is Union!19483) (regOne!39479 rTail!78))) b!7449887))

(declare-fun b!7449891 () Bool)

(declare-fun e!4447265 () Bool)

(declare-fun tp!2158315 () Bool)

(declare-fun tp!2158312 () Bool)

(assert (=> b!7449891 (= e!4447265 (and tp!2158315 tp!2158312))))

(declare-fun b!7449889 () Bool)

(declare-fun tp!2158313 () Bool)

(declare-fun tp!2158316 () Bool)

(assert (=> b!7449889 (= e!4447265 (and tp!2158313 tp!2158316))))

(assert (=> b!7449332 (= tp!2158148 e!4447265)))

(declare-fun b!7449890 () Bool)

(declare-fun tp!2158314 () Bool)

(assert (=> b!7449890 (= e!4447265 tp!2158314)))

(declare-fun b!7449888 () Bool)

(assert (=> b!7449888 (= e!4447265 tp_is_empty!49255)))

(assert (= (and b!7449332 ((_ is ElementMatch!19483) (regTwo!39479 rTail!78))) b!7449888))

(assert (= (and b!7449332 ((_ is Concat!28328) (regTwo!39479 rTail!78))) b!7449889))

(assert (= (and b!7449332 ((_ is Star!19483) (regTwo!39479 rTail!78))) b!7449890))

(assert (= (and b!7449332 ((_ is Union!19483) (regTwo!39479 rTail!78))) b!7449891))

(declare-fun b!7449895 () Bool)

(declare-fun e!4447266 () Bool)

(declare-fun tp!2158320 () Bool)

(declare-fun tp!2158317 () Bool)

(assert (=> b!7449895 (= e!4447266 (and tp!2158320 tp!2158317))))

(declare-fun b!7449893 () Bool)

(declare-fun tp!2158318 () Bool)

(declare-fun tp!2158321 () Bool)

(assert (=> b!7449893 (= e!4447266 (and tp!2158318 tp!2158321))))

(assert (=> b!7449343 (= tp!2158143 e!4447266)))

(declare-fun b!7449894 () Bool)

(declare-fun tp!2158319 () Bool)

(assert (=> b!7449894 (= e!4447266 tp!2158319)))

(declare-fun b!7449892 () Bool)

(assert (=> b!7449892 (= e!4447266 tp_is_empty!49255)))

(assert (= (and b!7449343 ((_ is ElementMatch!19483) (regOne!39478 rTail!78))) b!7449892))

(assert (= (and b!7449343 ((_ is Concat!28328) (regOne!39478 rTail!78))) b!7449893))

(assert (= (and b!7449343 ((_ is Star!19483) (regOne!39478 rTail!78))) b!7449894))

(assert (= (and b!7449343 ((_ is Union!19483) (regOne!39478 rTail!78))) b!7449895))

(declare-fun b!7449899 () Bool)

(declare-fun e!4447267 () Bool)

(declare-fun tp!2158325 () Bool)

(declare-fun tp!2158322 () Bool)

(assert (=> b!7449899 (= e!4447267 (and tp!2158325 tp!2158322))))

(declare-fun b!7449897 () Bool)

(declare-fun tp!2158323 () Bool)

(declare-fun tp!2158326 () Bool)

(assert (=> b!7449897 (= e!4447267 (and tp!2158323 tp!2158326))))

(assert (=> b!7449343 (= tp!2158154 e!4447267)))

(declare-fun b!7449898 () Bool)

(declare-fun tp!2158324 () Bool)

(assert (=> b!7449898 (= e!4447267 tp!2158324)))

(declare-fun b!7449896 () Bool)

(assert (=> b!7449896 (= e!4447267 tp_is_empty!49255)))

(assert (= (and b!7449343 ((_ is ElementMatch!19483) (regTwo!39478 rTail!78))) b!7449896))

(assert (= (and b!7449343 ((_ is Concat!28328) (regTwo!39478 rTail!78))) b!7449897))

(assert (= (and b!7449343 ((_ is Star!19483) (regTwo!39478 rTail!78))) b!7449898))

(assert (= (and b!7449343 ((_ is Union!19483) (regTwo!39478 rTail!78))) b!7449899))

(declare-fun b!7449903 () Bool)

(declare-fun e!4447268 () Bool)

(declare-fun tp!2158330 () Bool)

(declare-fun tp!2158327 () Bool)

(assert (=> b!7449903 (= e!4447268 (and tp!2158330 tp!2158327))))

(declare-fun b!7449901 () Bool)

(declare-fun tp!2158328 () Bool)

(declare-fun tp!2158331 () Bool)

(assert (=> b!7449901 (= e!4447268 (and tp!2158328 tp!2158331))))

(assert (=> b!7449342 (= tp!2158147 e!4447268)))

(declare-fun b!7449902 () Bool)

(declare-fun tp!2158329 () Bool)

(assert (=> b!7449902 (= e!4447268 tp!2158329)))

(declare-fun b!7449900 () Bool)

(assert (=> b!7449900 (= e!4447268 tp_is_empty!49255)))

(assert (= (and b!7449342 ((_ is ElementMatch!19483) (reg!19812 rTail!78))) b!7449900))

(assert (= (and b!7449342 ((_ is Concat!28328) (reg!19812 rTail!78))) b!7449901))

(assert (= (and b!7449342 ((_ is Star!19483) (reg!19812 rTail!78))) b!7449902))

(assert (= (and b!7449342 ((_ is Union!19483) (reg!19812 rTail!78))) b!7449903))

(check-sat (not b!7449895) (not d!2296911) (not d!2296901) (not d!2296903) (not b!7449496) (not bm!684479) (not b!7449875) (not b!7449870) (not b!7449853) (not b!7449628) (not bm!684504) (not d!2296909) (not bm!684471) (not b!7449828) (not b!7449873) (not bm!684478) (not d!2296921) (not b!7449898) (not bm!684495) (not b!7449897) (not b!7449885) (not b!7449882) (not b!7449821) (not b!7449893) (not b!7449790) (not d!2296887) (not b!7449901) (not b!7449759) (not d!2296917) (not b!7449858) (not b!7449826) (not b!7449847) (not bm!684501) (not b!7449833) (not b!7449891) (not b!7449825) (not b!7449420) (not b!7449750) (not b!7449889) (not bm!684500) (not b!7449849) (not b!7449850) (not b!7449874) (not bm!684506) (not bm!684473) (not b!7449659) (not b!7449903) (not b!7449768) (not bm!684493) (not b!7449851) (not b!7449902) (not b!7449894) (not b!7449881) (not b!7449867) (not b!7449859) (not d!2296899) (not b!7449493) (not b!7449854) (not b!7449865) (not d!2296915) (not b!7449845) (not bm!684509) (not b!7449871) (not b!7449777) (not b!7449862) (not b!7449886) (not b!7449627) (not bm!684496) (not b!7449890) (not d!2296919) (not b!7449823) (not b!7449631) (not b!7449636) (not b!7449863) (not b!7449754) (not b!7449632) (not b!7449899) (not bm!684503) (not b!7449751) (not b!7449861) (not b!7449857) (not b!7449887) (not b!7449855) (not b!7449755) (not bm!684507) (not b!7449878) (not b!7449820) (not b!7449877) (not b!7449846) (not b!7449869) (not b!7449866) tp_is_empty!49255 (not b!7449638) (not b!7449656) (not b!7449883) (not b!7449879) (not b!7449761))
(check-sat)
