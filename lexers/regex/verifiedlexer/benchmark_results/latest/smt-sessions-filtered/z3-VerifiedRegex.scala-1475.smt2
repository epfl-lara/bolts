; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78970 () Bool)

(assert start!78970)

(declare-fun b!873553 () Bool)

(assert (=> b!873553 true))

(assert (=> b!873553 true))

(declare-fun lambda!26242 () Int)

(declare-fun lambda!26241 () Int)

(assert (=> b!873553 (not (= lambda!26242 lambda!26241))))

(assert (=> b!873553 true))

(assert (=> b!873553 true))

(declare-fun b!873546 () Bool)

(declare-fun e!574437 () Bool)

(declare-fun tp_is_empty!4061 () Bool)

(declare-fun tp!276449 () Bool)

(assert (=> b!873546 (= e!574437 (and tp_is_empty!4061 tp!276449))))

(declare-fun b!873547 () Bool)

(declare-fun e!574441 () Bool)

(assert (=> b!873547 (= e!574441 tp_is_empty!4061)))

(declare-fun b!873548 () Bool)

(declare-fun e!574439 () Bool)

(declare-datatypes ((C!4988 0))(
  ( (C!4989 (val!2742 Int)) )
))
(declare-datatypes ((Regex!2209 0))(
  ( (ElementMatch!2209 (c!141270 C!4988)) (Concat!4042 (regOne!4930 Regex!2209) (regTwo!4930 Regex!2209)) (EmptyExpr!2209) (Star!2209 (reg!2538 Regex!2209)) (EmptyLang!2209) (Union!2209 (regOne!4931 Regex!2209) (regTwo!4931 Regex!2209)) )
))
(declare-fun r!15766 () Regex!2209)

(declare-fun validRegex!678 (Regex!2209) Bool)

(declare-fun removeUselessConcat!2 (Regex!2209) Regex!2209)

(assert (=> b!873548 (= e!574439 (validRegex!678 (removeUselessConcat!2 r!15766)))))

(declare-fun b!873549 () Bool)

(declare-fun tp!276451 () Bool)

(assert (=> b!873549 (= e!574441 tp!276451)))

(declare-fun b!873550 () Bool)

(declare-fun e!574438 () Bool)

(declare-fun e!574440 () Bool)

(assert (=> b!873550 (= e!574438 (not e!574440))))

(declare-fun res!397182 () Bool)

(assert (=> b!873550 (=> res!397182 e!574440)))

(declare-fun lt!329382 () Bool)

(get-info :version)

(assert (=> b!873550 (= res!397182 (or (not lt!329382) (not ((_ is Concat!4042) r!15766)) (not ((_ is EmptyExpr!2209) (regOne!4930 r!15766)))))))

(declare-datatypes ((List!9439 0))(
  ( (Nil!9423) (Cons!9423 (h!14824 C!4988) (t!100485 List!9439)) )
))
(declare-fun s!10566 () List!9439)

(declare-fun matchRSpec!10 (Regex!2209 List!9439) Bool)

(assert (=> b!873550 (= lt!329382 (matchRSpec!10 r!15766 s!10566))))

(declare-fun matchR!747 (Regex!2209 List!9439) Bool)

(assert (=> b!873550 (= lt!329382 (matchR!747 r!15766 s!10566))))

(declare-datatypes ((Unit!13997 0))(
  ( (Unit!13998) )
))
(declare-fun lt!329384 () Unit!13997)

(declare-fun mainMatchTheorem!10 (Regex!2209 List!9439) Unit!13997)

(assert (=> b!873550 (= lt!329384 (mainMatchTheorem!10 r!15766 s!10566))))

(declare-fun res!397181 () Bool)

(assert (=> start!78970 (=> (not res!397181) (not e!574438))))

(assert (=> start!78970 (= res!397181 (validRegex!678 r!15766))))

(assert (=> start!78970 e!574438))

(assert (=> start!78970 e!574441))

(assert (=> start!78970 e!574437))

(declare-fun b!873551 () Bool)

(declare-fun tp!276450 () Bool)

(declare-fun tp!276448 () Bool)

(assert (=> b!873551 (= e!574441 (and tp!276450 tp!276448))))

(declare-fun b!873552 () Bool)

(declare-fun tp!276452 () Bool)

(declare-fun tp!276447 () Bool)

(assert (=> b!873552 (= e!574441 (and tp!276452 tp!276447))))

(assert (=> b!873553 (= e!574440 e!574439)))

(declare-fun res!397180 () Bool)

(assert (=> b!873553 (=> res!397180 e!574439)))

(declare-fun isEmpty!5605 (List!9439) Bool)

(assert (=> b!873553 (= res!397180 (not (isEmpty!5605 s!10566)))))

(declare-fun Exists!8 (Int) Bool)

(assert (=> b!873553 (= (Exists!8 lambda!26241) (Exists!8 lambda!26242))))

(declare-fun lt!329383 () Unit!13997)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!4 (Regex!2209 Regex!2209 List!9439) Unit!13997)

(assert (=> b!873553 (= lt!329383 (lemmaExistCutMatchRandMatchRSpecEquivalent!4 EmptyExpr!2209 (regTwo!4930 r!15766) s!10566))))

(declare-datatypes ((tuple2!10516 0))(
  ( (tuple2!10517 (_1!6084 List!9439) (_2!6084 List!9439)) )
))
(declare-datatypes ((Option!1900 0))(
  ( (None!1899) (Some!1899 (v!19316 tuple2!10516)) )
))
(declare-fun isDefined!1542 (Option!1900) Bool)

(declare-fun findConcatSeparation!6 (Regex!2209 Regex!2209 List!9439 List!9439 List!9439) Option!1900)

(assert (=> b!873553 (= (isDefined!1542 (findConcatSeparation!6 EmptyExpr!2209 (regTwo!4930 r!15766) Nil!9423 s!10566 s!10566)) (Exists!8 lambda!26241))))

(declare-fun lt!329385 () Unit!13997)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!6 (Regex!2209 Regex!2209 List!9439) Unit!13997)

(assert (=> b!873553 (= lt!329385 (lemmaFindConcatSeparationEquivalentToExists!6 EmptyExpr!2209 (regTwo!4930 r!15766) s!10566))))

(assert (= (and start!78970 res!397181) b!873550))

(assert (= (and b!873550 (not res!397182)) b!873553))

(assert (= (and b!873553 (not res!397180)) b!873548))

(assert (= (and start!78970 ((_ is ElementMatch!2209) r!15766)) b!873547))

(assert (= (and start!78970 ((_ is Concat!4042) r!15766)) b!873551))

(assert (= (and start!78970 ((_ is Star!2209) r!15766)) b!873549))

(assert (= (and start!78970 ((_ is Union!2209) r!15766)) b!873552))

(assert (= (and start!78970 ((_ is Cons!9423) s!10566)) b!873546))

(declare-fun m!1125991 () Bool)

(assert (=> b!873548 m!1125991))

(assert (=> b!873548 m!1125991))

(declare-fun m!1125993 () Bool)

(assert (=> b!873548 m!1125993))

(declare-fun m!1125995 () Bool)

(assert (=> b!873550 m!1125995))

(declare-fun m!1125997 () Bool)

(assert (=> b!873550 m!1125997))

(declare-fun m!1125999 () Bool)

(assert (=> b!873550 m!1125999))

(declare-fun m!1126001 () Bool)

(assert (=> start!78970 m!1126001))

(declare-fun m!1126003 () Bool)

(assert (=> b!873553 m!1126003))

(declare-fun m!1126005 () Bool)

(assert (=> b!873553 m!1126005))

(declare-fun m!1126007 () Bool)

(assert (=> b!873553 m!1126007))

(declare-fun m!1126009 () Bool)

(assert (=> b!873553 m!1126009))

(declare-fun m!1126011 () Bool)

(assert (=> b!873553 m!1126011))

(assert (=> b!873553 m!1126003))

(declare-fun m!1126013 () Bool)

(assert (=> b!873553 m!1126013))

(declare-fun m!1126015 () Bool)

(assert (=> b!873553 m!1126015))

(assert (=> b!873553 m!1126013))

(check-sat (not start!78970) (not b!873551) tp_is_empty!4061 (not b!873546) (not b!873549) (not b!873552) (not b!873553) (not b!873548) (not b!873550))
(check-sat)
(get-model)

(declare-fun bs!233920 () Bool)

(declare-fun b!873627 () Bool)

(assert (= bs!233920 (and b!873627 b!873553)))

(declare-fun lambda!26251 () Int)

(assert (=> bs!233920 (not (= lambda!26251 lambda!26241))))

(assert (=> bs!233920 (not (= lambda!26251 lambda!26242))))

(assert (=> b!873627 true))

(assert (=> b!873627 true))

(declare-fun bs!233921 () Bool)

(declare-fun b!873624 () Bool)

(assert (= bs!233921 (and b!873624 b!873553)))

(declare-fun lambda!26252 () Int)

(assert (=> bs!233921 (not (= lambda!26252 lambda!26241))))

(assert (=> bs!233921 (= (= (regOne!4930 r!15766) EmptyExpr!2209) (= lambda!26252 lambda!26242))))

(declare-fun bs!233922 () Bool)

(assert (= bs!233922 (and b!873624 b!873627)))

(assert (=> bs!233922 (not (= lambda!26252 lambda!26251))))

(assert (=> b!873624 true))

(assert (=> b!873624 true))

(declare-fun b!873622 () Bool)

(declare-fun e!574478 () Bool)

(declare-fun e!574483 () Bool)

(assert (=> b!873622 (= e!574478 e!574483)))

(declare-fun res!397216 () Bool)

(assert (=> b!873622 (= res!397216 (not ((_ is EmptyLang!2209) r!15766)))))

(assert (=> b!873622 (=> (not res!397216) (not e!574483))))

(declare-fun d!275628 () Bool)

(declare-fun c!141289 () Bool)

(assert (=> d!275628 (= c!141289 ((_ is EmptyExpr!2209) r!15766))))

(assert (=> d!275628 (= (matchRSpec!10 r!15766 s!10566) e!574478)))

(declare-fun b!873623 () Bool)

(declare-fun res!397217 () Bool)

(declare-fun e!574479 () Bool)

(assert (=> b!873623 (=> res!397217 e!574479)))

(declare-fun call!50716 () Bool)

(assert (=> b!873623 (= res!397217 call!50716)))

(declare-fun e!574481 () Bool)

(assert (=> b!873623 (= e!574481 e!574479)))

(declare-fun call!50717 () Bool)

(assert (=> b!873624 (= e!574481 call!50717)))

(declare-fun b!873625 () Bool)

(declare-fun e!574484 () Bool)

(assert (=> b!873625 (= e!574484 (matchRSpec!10 (regTwo!4931 r!15766) s!10566))))

(declare-fun b!873626 () Bool)

(declare-fun e!574482 () Bool)

(assert (=> b!873626 (= e!574482 e!574481)))

(declare-fun c!141288 () Bool)

(assert (=> b!873626 (= c!141288 ((_ is Star!2209) r!15766))))

(declare-fun bm!50711 () Bool)

(assert (=> bm!50711 (= call!50717 (Exists!8 (ite c!141288 lambda!26251 lambda!26252)))))

(assert (=> b!873627 (= e!574479 call!50717)))

(declare-fun b!873628 () Bool)

(assert (=> b!873628 (= e!574482 e!574484)))

(declare-fun res!397215 () Bool)

(assert (=> b!873628 (= res!397215 (matchRSpec!10 (regOne!4931 r!15766) s!10566))))

(assert (=> b!873628 (=> res!397215 e!574484)))

(declare-fun b!873629 () Bool)

(assert (=> b!873629 (= e!574478 call!50716)))

(declare-fun b!873630 () Bool)

(declare-fun c!141287 () Bool)

(assert (=> b!873630 (= c!141287 ((_ is Union!2209) r!15766))))

(declare-fun e!574480 () Bool)

(assert (=> b!873630 (= e!574480 e!574482)))

(declare-fun b!873631 () Bool)

(assert (=> b!873631 (= e!574480 (= s!10566 (Cons!9423 (c!141270 r!15766) Nil!9423)))))

(declare-fun bm!50712 () Bool)

(assert (=> bm!50712 (= call!50716 (isEmpty!5605 s!10566))))

(declare-fun b!873632 () Bool)

(declare-fun c!141290 () Bool)

(assert (=> b!873632 (= c!141290 ((_ is ElementMatch!2209) r!15766))))

(assert (=> b!873632 (= e!574483 e!574480)))

(assert (= (and d!275628 c!141289) b!873629))

(assert (= (and d!275628 (not c!141289)) b!873622))

(assert (= (and b!873622 res!397216) b!873632))

(assert (= (and b!873632 c!141290) b!873631))

(assert (= (and b!873632 (not c!141290)) b!873630))

(assert (= (and b!873630 c!141287) b!873628))

(assert (= (and b!873630 (not c!141287)) b!873626))

(assert (= (and b!873628 (not res!397215)) b!873625))

(assert (= (and b!873626 c!141288) b!873623))

(assert (= (and b!873626 (not c!141288)) b!873624))

(assert (= (and b!873623 (not res!397217)) b!873627))

(assert (= (or b!873627 b!873624) bm!50711))

(assert (= (or b!873629 b!873623) bm!50712))

(declare-fun m!1126017 () Bool)

(assert (=> b!873625 m!1126017))

(declare-fun m!1126019 () Bool)

(assert (=> bm!50711 m!1126019))

(declare-fun m!1126021 () Bool)

(assert (=> b!873628 m!1126021))

(assert (=> bm!50712 m!1126011))

(assert (=> b!873550 d!275628))

(declare-fun b!873700 () Bool)

(declare-fun res!397258 () Bool)

(declare-fun e!574524 () Bool)

(assert (=> b!873700 (=> res!397258 e!574524)))

(declare-fun e!574526 () Bool)

(assert (=> b!873700 (= res!397258 e!574526)))

(declare-fun res!397260 () Bool)

(assert (=> b!873700 (=> (not res!397260) (not e!574526))))

(declare-fun lt!329390 () Bool)

(assert (=> b!873700 (= res!397260 lt!329390)))

(declare-fun b!873701 () Bool)

(declare-fun e!574523 () Bool)

(declare-fun nullable!549 (Regex!2209) Bool)

(assert (=> b!873701 (= e!574523 (nullable!549 r!15766))))

(declare-fun bm!50721 () Bool)

(declare-fun call!50726 () Bool)

(assert (=> bm!50721 (= call!50726 (isEmpty!5605 s!10566))))

(declare-fun b!873702 () Bool)

(declare-fun e!574520 () Bool)

(assert (=> b!873702 (= e!574524 e!574520)))

(declare-fun res!397259 () Bool)

(assert (=> b!873702 (=> (not res!397259) (not e!574520))))

(assert (=> b!873702 (= res!397259 (not lt!329390))))

(declare-fun b!873703 () Bool)

(declare-fun res!397257 () Bool)

(assert (=> b!873703 (=> (not res!397257) (not e!574526))))

(declare-fun tail!1080 (List!9439) List!9439)

(assert (=> b!873703 (= res!397257 (isEmpty!5605 (tail!1080 s!10566)))))

(declare-fun b!873704 () Bool)

(declare-fun e!574521 () Bool)

(assert (=> b!873704 (= e!574520 e!574521)))

(declare-fun res!397256 () Bool)

(assert (=> b!873704 (=> res!397256 e!574521)))

(assert (=> b!873704 (= res!397256 call!50726)))

(declare-fun d!275632 () Bool)

(declare-fun e!574522 () Bool)

(assert (=> d!275632 e!574522))

(declare-fun c!141309 () Bool)

(assert (=> d!275632 (= c!141309 ((_ is EmptyExpr!2209) r!15766))))

(assert (=> d!275632 (= lt!329390 e!574523)))

(declare-fun c!141308 () Bool)

(assert (=> d!275632 (= c!141308 (isEmpty!5605 s!10566))))

(assert (=> d!275632 (validRegex!678 r!15766)))

(assert (=> d!275632 (= (matchR!747 r!15766 s!10566) lt!329390)))

(declare-fun b!873705 () Bool)

(declare-fun derivativeStep!365 (Regex!2209 C!4988) Regex!2209)

(declare-fun head!1518 (List!9439) C!4988)

(assert (=> b!873705 (= e!574523 (matchR!747 (derivativeStep!365 r!15766 (head!1518 s!10566)) (tail!1080 s!10566)))))

(declare-fun b!873706 () Bool)

(declare-fun res!397254 () Bool)

(assert (=> b!873706 (=> (not res!397254) (not e!574526))))

(assert (=> b!873706 (= res!397254 (not call!50726))))

(declare-fun b!873707 () Bool)

(declare-fun e!574525 () Bool)

(assert (=> b!873707 (= e!574522 e!574525)))

(declare-fun c!141307 () Bool)

(assert (=> b!873707 (= c!141307 ((_ is EmptyLang!2209) r!15766))))

(declare-fun b!873708 () Bool)

(assert (=> b!873708 (= e!574522 (= lt!329390 call!50726))))

(declare-fun b!873709 () Bool)

(declare-fun res!397253 () Bool)

(assert (=> b!873709 (=> res!397253 e!574521)))

(assert (=> b!873709 (= res!397253 (not (isEmpty!5605 (tail!1080 s!10566))))))

(declare-fun b!873710 () Bool)

(assert (=> b!873710 (= e!574525 (not lt!329390))))

(declare-fun b!873711 () Bool)

(assert (=> b!873711 (= e!574526 (= (head!1518 s!10566) (c!141270 r!15766)))))

(declare-fun b!873712 () Bool)

(declare-fun res!397255 () Bool)

(assert (=> b!873712 (=> res!397255 e!574524)))

(assert (=> b!873712 (= res!397255 (not ((_ is ElementMatch!2209) r!15766)))))

(assert (=> b!873712 (= e!574525 e!574524)))

(declare-fun b!873713 () Bool)

(assert (=> b!873713 (= e!574521 (not (= (head!1518 s!10566) (c!141270 r!15766))))))

(assert (= (and d!275632 c!141308) b!873701))

(assert (= (and d!275632 (not c!141308)) b!873705))

(assert (= (and d!275632 c!141309) b!873708))

(assert (= (and d!275632 (not c!141309)) b!873707))

(assert (= (and b!873707 c!141307) b!873710))

(assert (= (and b!873707 (not c!141307)) b!873712))

(assert (= (and b!873712 (not res!397255)) b!873700))

(assert (= (and b!873700 res!397260) b!873706))

(assert (= (and b!873706 res!397254) b!873703))

(assert (= (and b!873703 res!397257) b!873711))

(assert (= (and b!873700 (not res!397258)) b!873702))

(assert (= (and b!873702 res!397259) b!873704))

(assert (= (and b!873704 (not res!397256)) b!873709))

(assert (= (and b!873709 (not res!397253)) b!873713))

(assert (= (or b!873708 b!873704 b!873706) bm!50721))

(declare-fun m!1126029 () Bool)

(assert (=> b!873705 m!1126029))

(assert (=> b!873705 m!1126029))

(declare-fun m!1126031 () Bool)

(assert (=> b!873705 m!1126031))

(declare-fun m!1126033 () Bool)

(assert (=> b!873705 m!1126033))

(assert (=> b!873705 m!1126031))

(assert (=> b!873705 m!1126033))

(declare-fun m!1126035 () Bool)

(assert (=> b!873705 m!1126035))

(assert (=> d!275632 m!1126011))

(assert (=> d!275632 m!1126001))

(assert (=> b!873709 m!1126033))

(assert (=> b!873709 m!1126033))

(declare-fun m!1126037 () Bool)

(assert (=> b!873709 m!1126037))

(declare-fun m!1126039 () Bool)

(assert (=> b!873701 m!1126039))

(assert (=> b!873711 m!1126029))

(assert (=> b!873703 m!1126033))

(assert (=> b!873703 m!1126033))

(assert (=> b!873703 m!1126037))

(assert (=> b!873713 m!1126029))

(assert (=> bm!50721 m!1126011))

(assert (=> b!873550 d!275632))

(declare-fun d!275636 () Bool)

(assert (=> d!275636 (= (matchR!747 r!15766 s!10566) (matchRSpec!10 r!15766 s!10566))))

(declare-fun lt!329394 () Unit!13997)

(declare-fun choose!5137 (Regex!2209 List!9439) Unit!13997)

(assert (=> d!275636 (= lt!329394 (choose!5137 r!15766 s!10566))))

(assert (=> d!275636 (validRegex!678 r!15766)))

(assert (=> d!275636 (= (mainMatchTheorem!10 r!15766 s!10566) lt!329394)))

(declare-fun bs!233926 () Bool)

(assert (= bs!233926 d!275636))

(assert (=> bs!233926 m!1125997))

(assert (=> bs!233926 m!1125995))

(declare-fun m!1126053 () Bool)

(assert (=> bs!233926 m!1126053))

(assert (=> bs!233926 m!1126001))

(assert (=> b!873550 d!275636))

(declare-fun b!873746 () Bool)

(declare-fun e!574554 () Bool)

(declare-fun e!574552 () Bool)

(assert (=> b!873746 (= e!574554 e!574552)))

(declare-fun res!397281 () Bool)

(assert (=> b!873746 (= res!397281 (not (nullable!549 (reg!2538 r!15766))))))

(assert (=> b!873746 (=> (not res!397281) (not e!574552))))

(declare-fun b!873747 () Bool)

(declare-fun e!574553 () Bool)

(assert (=> b!873747 (= e!574554 e!574553)))

(declare-fun c!141318 () Bool)

(assert (=> b!873747 (= c!141318 ((_ is Union!2209) r!15766))))

(declare-fun b!873748 () Bool)

(declare-fun res!397283 () Bool)

(declare-fun e!574550 () Bool)

(assert (=> b!873748 (=> (not res!397283) (not e!574550))))

(declare-fun call!50734 () Bool)

(assert (=> b!873748 (= res!397283 call!50734)))

(assert (=> b!873748 (= e!574553 e!574550)))

(declare-fun b!873749 () Bool)

(declare-fun call!50736 () Bool)

(assert (=> b!873749 (= e!574552 call!50736)))

(declare-fun b!873750 () Bool)

(declare-fun e!574551 () Bool)

(declare-fun e!574549 () Bool)

(assert (=> b!873750 (= e!574551 e!574549)))

(declare-fun res!397279 () Bool)

(assert (=> b!873750 (=> (not res!397279) (not e!574549))))

(assert (=> b!873750 (= res!397279 call!50734)))

(declare-fun bm!50729 () Bool)

(declare-fun c!141317 () Bool)

(assert (=> bm!50729 (= call!50736 (validRegex!678 (ite c!141317 (reg!2538 r!15766) (ite c!141318 (regTwo!4931 r!15766) (regTwo!4930 r!15766)))))))

(declare-fun b!873751 () Bool)

(declare-fun call!50735 () Bool)

(assert (=> b!873751 (= e!574550 call!50735)))

(declare-fun bm!50730 () Bool)

(assert (=> bm!50730 (= call!50735 call!50736)))

(declare-fun bm!50731 () Bool)

(assert (=> bm!50731 (= call!50734 (validRegex!678 (ite c!141318 (regOne!4931 r!15766) (regOne!4930 r!15766))))))

(declare-fun b!873752 () Bool)

(declare-fun e!574548 () Bool)

(assert (=> b!873752 (= e!574548 e!574554)))

(assert (=> b!873752 (= c!141317 ((_ is Star!2209) r!15766))))

(declare-fun d!275640 () Bool)

(declare-fun res!397282 () Bool)

(assert (=> d!275640 (=> res!397282 e!574548)))

(assert (=> d!275640 (= res!397282 ((_ is ElementMatch!2209) r!15766))))

(assert (=> d!275640 (= (validRegex!678 r!15766) e!574548)))

(declare-fun b!873753 () Bool)

(assert (=> b!873753 (= e!574549 call!50735)))

(declare-fun b!873754 () Bool)

(declare-fun res!397280 () Bool)

(assert (=> b!873754 (=> res!397280 e!574551)))

(assert (=> b!873754 (= res!397280 (not ((_ is Concat!4042) r!15766)))))

(assert (=> b!873754 (= e!574553 e!574551)))

(assert (= (and d!275640 (not res!397282)) b!873752))

(assert (= (and b!873752 c!141317) b!873746))

(assert (= (and b!873752 (not c!141317)) b!873747))

(assert (= (and b!873746 res!397281) b!873749))

(assert (= (and b!873747 c!141318) b!873748))

(assert (= (and b!873747 (not c!141318)) b!873754))

(assert (= (and b!873748 res!397283) b!873751))

(assert (= (and b!873754 (not res!397280)) b!873750))

(assert (= (and b!873750 res!397279) b!873753))

(assert (= (or b!873751 b!873753) bm!50730))

(assert (= (or b!873748 b!873750) bm!50731))

(assert (= (or b!873749 bm!50730) bm!50729))

(declare-fun m!1126059 () Bool)

(assert (=> b!873746 m!1126059))

(declare-fun m!1126061 () Bool)

(assert (=> bm!50729 m!1126061))

(declare-fun m!1126063 () Bool)

(assert (=> bm!50731 m!1126063))

(assert (=> start!78970 d!275640))

(declare-fun d!275648 () Bool)

(declare-fun choose!5139 (Int) Bool)

(assert (=> d!275648 (= (Exists!8 lambda!26241) (choose!5139 lambda!26241))))

(declare-fun bs!233929 () Bool)

(assert (= bs!233929 d!275648))

(declare-fun m!1126065 () Bool)

(assert (=> bs!233929 m!1126065))

(assert (=> b!873553 d!275648))

(declare-fun d!275650 () Bool)

(assert (=> d!275650 (= (isEmpty!5605 s!10566) ((_ is Nil!9423) s!10566))))

(assert (=> b!873553 d!275650))

(declare-fun d!275652 () Bool)

(assert (=> d!275652 (= (Exists!8 lambda!26242) (choose!5139 lambda!26242))))

(declare-fun bs!233930 () Bool)

(assert (= bs!233930 d!275652))

(declare-fun m!1126067 () Bool)

(assert (=> bs!233930 m!1126067))

(assert (=> b!873553 d!275652))

(declare-fun b!873800 () Bool)

(declare-fun res!397312 () Bool)

(declare-fun e!574582 () Bool)

(assert (=> b!873800 (=> (not res!397312) (not e!574582))))

(declare-fun lt!329414 () Option!1900)

(declare-fun get!2884 (Option!1900) tuple2!10516)

(assert (=> b!873800 (= res!397312 (matchR!747 EmptyExpr!2209 (_1!6084 (get!2884 lt!329414))))))

(declare-fun b!873801 () Bool)

(declare-fun e!574580 () Option!1900)

(assert (=> b!873801 (= e!574580 (Some!1899 (tuple2!10517 Nil!9423 s!10566)))))

(declare-fun b!873802 () Bool)

(declare-fun e!574583 () Bool)

(assert (=> b!873802 (= e!574583 (not (isDefined!1542 lt!329414)))))

(declare-fun b!873803 () Bool)

(declare-fun ++!2446 (List!9439 List!9439) List!9439)

(assert (=> b!873803 (= e!574582 (= (++!2446 (_1!6084 (get!2884 lt!329414)) (_2!6084 (get!2884 lt!329414))) s!10566))))

(declare-fun b!873804 () Bool)

(declare-fun e!574584 () Option!1900)

(assert (=> b!873804 (= e!574580 e!574584)))

(declare-fun c!141330 () Bool)

(assert (=> b!873804 (= c!141330 ((_ is Nil!9423) s!10566))))

(declare-fun b!873805 () Bool)

(declare-fun res!397309 () Bool)

(assert (=> b!873805 (=> (not res!397309) (not e!574582))))

(assert (=> b!873805 (= res!397309 (matchR!747 (regTwo!4930 r!15766) (_2!6084 (get!2884 lt!329414))))))

(declare-fun b!873806 () Bool)

(assert (=> b!873806 (= e!574584 None!1899)))

(declare-fun d!275654 () Bool)

(assert (=> d!275654 e!574583))

(declare-fun res!397310 () Bool)

(assert (=> d!275654 (=> res!397310 e!574583)))

(assert (=> d!275654 (= res!397310 e!574582)))

(declare-fun res!397311 () Bool)

(assert (=> d!275654 (=> (not res!397311) (not e!574582))))

(assert (=> d!275654 (= res!397311 (isDefined!1542 lt!329414))))

(assert (=> d!275654 (= lt!329414 e!574580)))

(declare-fun c!141329 () Bool)

(declare-fun e!574581 () Bool)

(assert (=> d!275654 (= c!141329 e!574581)))

(declare-fun res!397313 () Bool)

(assert (=> d!275654 (=> (not res!397313) (not e!574581))))

(assert (=> d!275654 (= res!397313 (matchR!747 EmptyExpr!2209 Nil!9423))))

(assert (=> d!275654 (validRegex!678 EmptyExpr!2209)))

(assert (=> d!275654 (= (findConcatSeparation!6 EmptyExpr!2209 (regTwo!4930 r!15766) Nil!9423 s!10566 s!10566) lt!329414)))

(declare-fun b!873807 () Bool)

(assert (=> b!873807 (= e!574581 (matchR!747 (regTwo!4930 r!15766) s!10566))))

(declare-fun b!873808 () Bool)

(declare-fun lt!329413 () Unit!13997)

(declare-fun lt!329415 () Unit!13997)

(assert (=> b!873808 (= lt!329413 lt!329415)))

(assert (=> b!873808 (= (++!2446 (++!2446 Nil!9423 (Cons!9423 (h!14824 s!10566) Nil!9423)) (t!100485 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!78 (List!9439 C!4988 List!9439 List!9439) Unit!13997)

(assert (=> b!873808 (= lt!329415 (lemmaMoveElementToOtherListKeepsConcatEq!78 Nil!9423 (h!14824 s!10566) (t!100485 s!10566) s!10566))))

(assert (=> b!873808 (= e!574584 (findConcatSeparation!6 EmptyExpr!2209 (regTwo!4930 r!15766) (++!2446 Nil!9423 (Cons!9423 (h!14824 s!10566) Nil!9423)) (t!100485 s!10566) s!10566))))

(assert (= (and d!275654 res!397313) b!873807))

(assert (= (and d!275654 c!141329) b!873801))

(assert (= (and d!275654 (not c!141329)) b!873804))

(assert (= (and b!873804 c!141330) b!873806))

(assert (= (and b!873804 (not c!141330)) b!873808))

(assert (= (and d!275654 res!397311) b!873800))

(assert (= (and b!873800 res!397312) b!873805))

(assert (= (and b!873805 res!397309) b!873803))

(assert (= (and d!275654 (not res!397310)) b!873802))

(declare-fun m!1126093 () Bool)

(assert (=> d!275654 m!1126093))

(declare-fun m!1126095 () Bool)

(assert (=> d!275654 m!1126095))

(declare-fun m!1126097 () Bool)

(assert (=> d!275654 m!1126097))

(declare-fun m!1126099 () Bool)

(assert (=> b!873807 m!1126099))

(assert (=> b!873802 m!1126093))

(declare-fun m!1126101 () Bool)

(assert (=> b!873805 m!1126101))

(declare-fun m!1126103 () Bool)

(assert (=> b!873805 m!1126103))

(assert (=> b!873803 m!1126101))

(declare-fun m!1126105 () Bool)

(assert (=> b!873803 m!1126105))

(assert (=> b!873800 m!1126101))

(declare-fun m!1126107 () Bool)

(assert (=> b!873800 m!1126107))

(declare-fun m!1126109 () Bool)

(assert (=> b!873808 m!1126109))

(assert (=> b!873808 m!1126109))

(declare-fun m!1126111 () Bool)

(assert (=> b!873808 m!1126111))

(declare-fun m!1126113 () Bool)

(assert (=> b!873808 m!1126113))

(assert (=> b!873808 m!1126109))

(declare-fun m!1126115 () Bool)

(assert (=> b!873808 m!1126115))

(assert (=> b!873553 d!275654))

(declare-fun bs!233935 () Bool)

(declare-fun d!275658 () Bool)

(assert (= bs!233935 (and d!275658 b!873553)))

(declare-fun lambda!26260 () Int)

(assert (=> bs!233935 (= lambda!26260 lambda!26241)))

(assert (=> bs!233935 (not (= lambda!26260 lambda!26242))))

(declare-fun bs!233936 () Bool)

(assert (= bs!233936 (and d!275658 b!873627)))

(assert (=> bs!233936 (not (= lambda!26260 lambda!26251))))

(declare-fun bs!233937 () Bool)

(assert (= bs!233937 (and d!275658 b!873624)))

(assert (=> bs!233937 (not (= lambda!26260 lambda!26252))))

(assert (=> d!275658 true))

(assert (=> d!275658 true))

(assert (=> d!275658 true))

(assert (=> d!275658 (= (isDefined!1542 (findConcatSeparation!6 EmptyExpr!2209 (regTwo!4930 r!15766) Nil!9423 s!10566 s!10566)) (Exists!8 lambda!26260))))

(declare-fun lt!329421 () Unit!13997)

(declare-fun choose!5141 (Regex!2209 Regex!2209 List!9439) Unit!13997)

(assert (=> d!275658 (= lt!329421 (choose!5141 EmptyExpr!2209 (regTwo!4930 r!15766) s!10566))))

(assert (=> d!275658 (validRegex!678 EmptyExpr!2209)))

(assert (=> d!275658 (= (lemmaFindConcatSeparationEquivalentToExists!6 EmptyExpr!2209 (regTwo!4930 r!15766) s!10566) lt!329421)))

(declare-fun bs!233938 () Bool)

(assert (= bs!233938 d!275658))

(assert (=> bs!233938 m!1126003))

(declare-fun m!1126121 () Bool)

(assert (=> bs!233938 m!1126121))

(assert (=> bs!233938 m!1126003))

(assert (=> bs!233938 m!1126005))

(assert (=> bs!233938 m!1126097))

(declare-fun m!1126123 () Bool)

(assert (=> bs!233938 m!1126123))

(assert (=> b!873553 d!275658))

(declare-fun bs!233946 () Bool)

(declare-fun d!275662 () Bool)

(assert (= bs!233946 (and d!275662 d!275658)))

(declare-fun lambda!26271 () Int)

(assert (=> bs!233946 (= lambda!26271 lambda!26260)))

(declare-fun bs!233947 () Bool)

(assert (= bs!233947 (and d!275662 b!873553)))

(assert (=> bs!233947 (not (= lambda!26271 lambda!26242))))

(assert (=> bs!233947 (= lambda!26271 lambda!26241)))

(declare-fun bs!233948 () Bool)

(assert (= bs!233948 (and d!275662 b!873624)))

(assert (=> bs!233948 (not (= lambda!26271 lambda!26252))))

(declare-fun bs!233949 () Bool)

(assert (= bs!233949 (and d!275662 b!873627)))

(assert (=> bs!233949 (not (= lambda!26271 lambda!26251))))

(assert (=> d!275662 true))

(assert (=> d!275662 true))

(assert (=> d!275662 true))

(declare-fun bs!233950 () Bool)

(assert (= bs!233950 d!275662))

(declare-fun lambda!26272 () Int)

(assert (=> bs!233950 (not (= lambda!26272 lambda!26271))))

(assert (=> bs!233946 (not (= lambda!26272 lambda!26260))))

(assert (=> bs!233947 (= lambda!26272 lambda!26242)))

(assert (=> bs!233947 (not (= lambda!26272 lambda!26241))))

(assert (=> bs!233948 (= (= EmptyExpr!2209 (regOne!4930 r!15766)) (= lambda!26272 lambda!26252))))

(assert (=> bs!233949 (not (= lambda!26272 lambda!26251))))

(assert (=> d!275662 true))

(assert (=> d!275662 true))

(assert (=> d!275662 true))

(assert (=> d!275662 (= (Exists!8 lambda!26271) (Exists!8 lambda!26272))))

(declare-fun lt!329427 () Unit!13997)

(declare-fun choose!5142 (Regex!2209 Regex!2209 List!9439) Unit!13997)

(assert (=> d!275662 (= lt!329427 (choose!5142 EmptyExpr!2209 (regTwo!4930 r!15766) s!10566))))

(assert (=> d!275662 (validRegex!678 EmptyExpr!2209)))

(assert (=> d!275662 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!4 EmptyExpr!2209 (regTwo!4930 r!15766) s!10566) lt!329427)))

(declare-fun m!1126135 () Bool)

(assert (=> bs!233950 m!1126135))

(declare-fun m!1126137 () Bool)

(assert (=> bs!233950 m!1126137))

(declare-fun m!1126139 () Bool)

(assert (=> bs!233950 m!1126139))

(assert (=> bs!233950 m!1126097))

(assert (=> b!873553 d!275662))

(declare-fun d!275670 () Bool)

(declare-fun isEmpty!5607 (Option!1900) Bool)

(assert (=> d!275670 (= (isDefined!1542 (findConcatSeparation!6 EmptyExpr!2209 (regTwo!4930 r!15766) Nil!9423 s!10566 s!10566)) (not (isEmpty!5607 (findConcatSeparation!6 EmptyExpr!2209 (regTwo!4930 r!15766) Nil!9423 s!10566 s!10566))))))

(declare-fun bs!233951 () Bool)

(assert (= bs!233951 d!275670))

(assert (=> bs!233951 m!1126003))

(declare-fun m!1126141 () Bool)

(assert (=> bs!233951 m!1126141))

(assert (=> b!873553 d!275670))

(declare-fun b!873851 () Bool)

(declare-fun e!574617 () Bool)

(declare-fun e!574615 () Bool)

(assert (=> b!873851 (= e!574617 e!574615)))

(declare-fun res!397350 () Bool)

(assert (=> b!873851 (= res!397350 (not (nullable!549 (reg!2538 (removeUselessConcat!2 r!15766)))))))

(assert (=> b!873851 (=> (not res!397350) (not e!574615))))

(declare-fun b!873852 () Bool)

(declare-fun e!574616 () Bool)

(assert (=> b!873852 (= e!574617 e!574616)))

(declare-fun c!141336 () Bool)

(assert (=> b!873852 (= c!141336 ((_ is Union!2209) (removeUselessConcat!2 r!15766)))))

(declare-fun b!873853 () Bool)

(declare-fun res!397352 () Bool)

(declare-fun e!574613 () Bool)

(assert (=> b!873853 (=> (not res!397352) (not e!574613))))

(declare-fun call!50743 () Bool)

(assert (=> b!873853 (= res!397352 call!50743)))

(assert (=> b!873853 (= e!574616 e!574613)))

(declare-fun b!873854 () Bool)

(declare-fun call!50745 () Bool)

(assert (=> b!873854 (= e!574615 call!50745)))

(declare-fun b!873855 () Bool)

(declare-fun e!574614 () Bool)

(declare-fun e!574612 () Bool)

(assert (=> b!873855 (= e!574614 e!574612)))

(declare-fun res!397348 () Bool)

(assert (=> b!873855 (=> (not res!397348) (not e!574612))))

(assert (=> b!873855 (= res!397348 call!50743)))

(declare-fun bm!50738 () Bool)

(declare-fun c!141335 () Bool)

(assert (=> bm!50738 (= call!50745 (validRegex!678 (ite c!141335 (reg!2538 (removeUselessConcat!2 r!15766)) (ite c!141336 (regTwo!4931 (removeUselessConcat!2 r!15766)) (regTwo!4930 (removeUselessConcat!2 r!15766))))))))

(declare-fun b!873856 () Bool)

(declare-fun call!50744 () Bool)

(assert (=> b!873856 (= e!574613 call!50744)))

(declare-fun bm!50739 () Bool)

(assert (=> bm!50739 (= call!50744 call!50745)))

(declare-fun bm!50740 () Bool)

(assert (=> bm!50740 (= call!50743 (validRegex!678 (ite c!141336 (regOne!4931 (removeUselessConcat!2 r!15766)) (regOne!4930 (removeUselessConcat!2 r!15766)))))))

(declare-fun b!873857 () Bool)

(declare-fun e!574611 () Bool)

(assert (=> b!873857 (= e!574611 e!574617)))

(assert (=> b!873857 (= c!141335 ((_ is Star!2209) (removeUselessConcat!2 r!15766)))))

(declare-fun d!275672 () Bool)

(declare-fun res!397351 () Bool)

(assert (=> d!275672 (=> res!397351 e!574611)))

(assert (=> d!275672 (= res!397351 ((_ is ElementMatch!2209) (removeUselessConcat!2 r!15766)))))

(assert (=> d!275672 (= (validRegex!678 (removeUselessConcat!2 r!15766)) e!574611)))

(declare-fun b!873858 () Bool)

(assert (=> b!873858 (= e!574612 call!50744)))

(declare-fun b!873859 () Bool)

(declare-fun res!397349 () Bool)

(assert (=> b!873859 (=> res!397349 e!574614)))

(assert (=> b!873859 (= res!397349 (not ((_ is Concat!4042) (removeUselessConcat!2 r!15766))))))

(assert (=> b!873859 (= e!574616 e!574614)))

(assert (= (and d!275672 (not res!397351)) b!873857))

(assert (= (and b!873857 c!141335) b!873851))

(assert (= (and b!873857 (not c!141335)) b!873852))

(assert (= (and b!873851 res!397350) b!873854))

(assert (= (and b!873852 c!141336) b!873853))

(assert (= (and b!873852 (not c!141336)) b!873859))

(assert (= (and b!873853 res!397352) b!873856))

(assert (= (and b!873859 (not res!397349)) b!873855))

(assert (= (and b!873855 res!397348) b!873858))

(assert (= (or b!873856 b!873858) bm!50739))

(assert (= (or b!873853 b!873855) bm!50740))

(assert (= (or b!873854 bm!50739) bm!50738))

(declare-fun m!1126143 () Bool)

(assert (=> b!873851 m!1126143))

(declare-fun m!1126145 () Bool)

(assert (=> bm!50738 m!1126145))

(declare-fun m!1126147 () Bool)

(assert (=> bm!50740 m!1126147))

(assert (=> b!873548 d!275672))

(declare-fun b!873922 () Bool)

(declare-fun e!574658 () Bool)

(declare-fun lt!329432 () Regex!2209)

(assert (=> b!873922 (= e!574658 (= (nullable!549 lt!329432) (nullable!549 r!15766)))))

(declare-fun bm!50767 () Bool)

(declare-fun call!50772 () Regex!2209)

(declare-fun c!141363 () Bool)

(declare-fun c!141365 () Bool)

(declare-fun c!141362 () Bool)

(assert (=> bm!50767 (= call!50772 (removeUselessConcat!2 (ite c!141362 (regTwo!4930 r!15766) (ite (or c!141365 c!141363) (regOne!4930 r!15766) (regOne!4931 r!15766)))))))

(declare-fun bm!50768 () Bool)

(declare-fun call!50774 () Regex!2209)

(assert (=> bm!50768 (= call!50774 call!50772)))

(declare-fun bm!50769 () Bool)

(declare-fun call!50776 () Regex!2209)

(assert (=> bm!50769 (= call!50776 call!50774)))

(declare-fun b!873923 () Bool)

(declare-fun e!574660 () Regex!2209)

(declare-fun e!574661 () Regex!2209)

(assert (=> b!873923 (= e!574660 e!574661)))

(assert (=> b!873923 (= c!141365 (and ((_ is Concat!4042) r!15766) ((_ is EmptyExpr!2209) (regTwo!4930 r!15766))))))

(declare-fun b!873924 () Bool)

(declare-fun e!574656 () Regex!2209)

(declare-fun call!50775 () Regex!2209)

(assert (=> b!873924 (= e!574656 (Concat!4042 call!50776 call!50775))))

(declare-fun bm!50770 () Bool)

(declare-fun c!141364 () Bool)

(assert (=> bm!50770 (= call!50775 (removeUselessConcat!2 (ite c!141363 (regTwo!4930 r!15766) (ite c!141364 (regTwo!4931 r!15766) (reg!2538 r!15766)))))))

(declare-fun b!873925 () Bool)

(declare-fun e!574657 () Regex!2209)

(assert (=> b!873925 (= e!574657 r!15766)))

(declare-fun b!873926 () Bool)

(declare-fun c!141361 () Bool)

(assert (=> b!873926 (= c!141361 ((_ is Star!2209) r!15766))))

(declare-fun e!574659 () Regex!2209)

(assert (=> b!873926 (= e!574659 e!574657)))

(declare-fun b!873927 () Bool)

(declare-fun call!50773 () Regex!2209)

(assert (=> b!873927 (= e!574657 (Star!2209 call!50773))))

(declare-fun b!873928 () Bool)

(assert (=> b!873928 (= c!141363 ((_ is Concat!4042) r!15766))))

(assert (=> b!873928 (= e!574661 e!574656)))

(declare-fun b!873929 () Bool)

(assert (=> b!873929 (= e!574660 call!50772)))

(declare-fun bm!50771 () Bool)

(assert (=> bm!50771 (= call!50773 call!50775)))

(declare-fun b!873930 () Bool)

(assert (=> b!873930 (= e!574661 call!50774)))

(declare-fun d!275674 () Bool)

(assert (=> d!275674 e!574658))

(declare-fun res!397367 () Bool)

(assert (=> d!275674 (=> (not res!397367) (not e!574658))))

(assert (=> d!275674 (= res!397367 (validRegex!678 lt!329432))))

(assert (=> d!275674 (= lt!329432 e!574660)))

(assert (=> d!275674 (= c!141362 (and ((_ is Concat!4042) r!15766) ((_ is EmptyExpr!2209) (regOne!4930 r!15766))))))

(assert (=> d!275674 (validRegex!678 r!15766)))

(assert (=> d!275674 (= (removeUselessConcat!2 r!15766) lt!329432)))

(declare-fun b!873931 () Bool)

(assert (=> b!873931 (= e!574659 (Union!2209 call!50776 call!50773))))

(declare-fun b!873932 () Bool)

(assert (=> b!873932 (= e!574656 e!574659)))

(assert (=> b!873932 (= c!141364 ((_ is Union!2209) r!15766))))

(assert (= (and d!275674 c!141362) b!873929))

(assert (= (and d!275674 (not c!141362)) b!873923))

(assert (= (and b!873923 c!141365) b!873930))

(assert (= (and b!873923 (not c!141365)) b!873928))

(assert (= (and b!873928 c!141363) b!873924))

(assert (= (and b!873928 (not c!141363)) b!873932))

(assert (= (and b!873932 c!141364) b!873931))

(assert (= (and b!873932 (not c!141364)) b!873926))

(assert (= (and b!873926 c!141361) b!873927))

(assert (= (and b!873926 (not c!141361)) b!873925))

(assert (= (or b!873931 b!873927) bm!50771))

(assert (= (or b!873924 bm!50771) bm!50770))

(assert (= (or b!873924 b!873931) bm!50769))

(assert (= (or b!873930 bm!50769) bm!50768))

(assert (= (or b!873929 bm!50768) bm!50767))

(assert (= (and d!275674 res!397367) b!873922))

(declare-fun m!1126161 () Bool)

(assert (=> b!873922 m!1126161))

(assert (=> b!873922 m!1126039))

(declare-fun m!1126163 () Bool)

(assert (=> bm!50767 m!1126163))

(declare-fun m!1126165 () Bool)

(assert (=> bm!50770 m!1126165))

(declare-fun m!1126167 () Bool)

(assert (=> d!275674 m!1126167))

(assert (=> d!275674 m!1126001))

(assert (=> b!873548 d!275674))

(declare-fun b!873937 () Bool)

(declare-fun e!574664 () Bool)

(declare-fun tp!276455 () Bool)

(assert (=> b!873937 (= e!574664 (and tp_is_empty!4061 tp!276455))))

(assert (=> b!873546 (= tp!276449 e!574664)))

(assert (= (and b!873546 ((_ is Cons!9423) (t!100485 s!10566))) b!873937))

(declare-fun e!574673 () Bool)

(assert (=> b!873551 (= tp!276450 e!574673)))

(declare-fun b!873960 () Bool)

(declare-fun tp!276468 () Bool)

(declare-fun tp!276466 () Bool)

(assert (=> b!873960 (= e!574673 (and tp!276468 tp!276466))))

(declare-fun b!873959 () Bool)

(assert (=> b!873959 (= e!574673 tp_is_empty!4061)))

(declare-fun b!873961 () Bool)

(declare-fun tp!276470 () Bool)

(assert (=> b!873961 (= e!574673 tp!276470)))

(declare-fun b!873962 () Bool)

(declare-fun tp!276469 () Bool)

(declare-fun tp!276467 () Bool)

(assert (=> b!873962 (= e!574673 (and tp!276469 tp!276467))))

(assert (= (and b!873551 ((_ is ElementMatch!2209) (regOne!4930 r!15766))) b!873959))

(assert (= (and b!873551 ((_ is Concat!4042) (regOne!4930 r!15766))) b!873960))

(assert (= (and b!873551 ((_ is Star!2209) (regOne!4930 r!15766))) b!873961))

(assert (= (and b!873551 ((_ is Union!2209) (regOne!4930 r!15766))) b!873962))

(declare-fun e!574674 () Bool)

(assert (=> b!873551 (= tp!276448 e!574674)))

(declare-fun b!873964 () Bool)

(declare-fun tp!276473 () Bool)

(declare-fun tp!276471 () Bool)

(assert (=> b!873964 (= e!574674 (and tp!276473 tp!276471))))

(declare-fun b!873963 () Bool)

(assert (=> b!873963 (= e!574674 tp_is_empty!4061)))

(declare-fun b!873965 () Bool)

(declare-fun tp!276475 () Bool)

(assert (=> b!873965 (= e!574674 tp!276475)))

(declare-fun b!873966 () Bool)

(declare-fun tp!276474 () Bool)

(declare-fun tp!276472 () Bool)

(assert (=> b!873966 (= e!574674 (and tp!276474 tp!276472))))

(assert (= (and b!873551 ((_ is ElementMatch!2209) (regTwo!4930 r!15766))) b!873963))

(assert (= (and b!873551 ((_ is Concat!4042) (regTwo!4930 r!15766))) b!873964))

(assert (= (and b!873551 ((_ is Star!2209) (regTwo!4930 r!15766))) b!873965))

(assert (= (and b!873551 ((_ is Union!2209) (regTwo!4930 r!15766))) b!873966))

(declare-fun e!574677 () Bool)

(assert (=> b!873552 (= tp!276452 e!574677)))

(declare-fun b!873972 () Bool)

(declare-fun tp!276478 () Bool)

(declare-fun tp!276476 () Bool)

(assert (=> b!873972 (= e!574677 (and tp!276478 tp!276476))))

(declare-fun b!873971 () Bool)

(assert (=> b!873971 (= e!574677 tp_is_empty!4061)))

(declare-fun b!873973 () Bool)

(declare-fun tp!276480 () Bool)

(assert (=> b!873973 (= e!574677 tp!276480)))

(declare-fun b!873974 () Bool)

(declare-fun tp!276479 () Bool)

(declare-fun tp!276477 () Bool)

(assert (=> b!873974 (= e!574677 (and tp!276479 tp!276477))))

(assert (= (and b!873552 ((_ is ElementMatch!2209) (regOne!4931 r!15766))) b!873971))

(assert (= (and b!873552 ((_ is Concat!4042) (regOne!4931 r!15766))) b!873972))

(assert (= (and b!873552 ((_ is Star!2209) (regOne!4931 r!15766))) b!873973))

(assert (= (and b!873552 ((_ is Union!2209) (regOne!4931 r!15766))) b!873974))

(declare-fun e!574678 () Bool)

(assert (=> b!873552 (= tp!276447 e!574678)))

(declare-fun b!873980 () Bool)

(declare-fun tp!276487 () Bool)

(declare-fun tp!276485 () Bool)

(assert (=> b!873980 (= e!574678 (and tp!276487 tp!276485))))

(declare-fun b!873979 () Bool)

(assert (=> b!873979 (= e!574678 tp_is_empty!4061)))

(declare-fun b!873981 () Bool)

(declare-fun tp!276489 () Bool)

(assert (=> b!873981 (= e!574678 tp!276489)))

(declare-fun b!873982 () Bool)

(declare-fun tp!276488 () Bool)

(declare-fun tp!276486 () Bool)

(assert (=> b!873982 (= e!574678 (and tp!276488 tp!276486))))

(assert (= (and b!873552 ((_ is ElementMatch!2209) (regTwo!4931 r!15766))) b!873979))

(assert (= (and b!873552 ((_ is Concat!4042) (regTwo!4931 r!15766))) b!873980))

(assert (= (and b!873552 ((_ is Star!2209) (regTwo!4931 r!15766))) b!873981))

(assert (= (and b!873552 ((_ is Union!2209) (regTwo!4931 r!15766))) b!873982))

(declare-fun e!574679 () Bool)

(assert (=> b!873549 (= tp!276451 e!574679)))

(declare-fun b!873986 () Bool)

(declare-fun tp!276498 () Bool)

(declare-fun tp!276496 () Bool)

(assert (=> b!873986 (= e!574679 (and tp!276498 tp!276496))))

(declare-fun b!873985 () Bool)

(assert (=> b!873985 (= e!574679 tp_is_empty!4061)))

(declare-fun b!873987 () Bool)

(declare-fun tp!276500 () Bool)

(assert (=> b!873987 (= e!574679 tp!276500)))

(declare-fun b!873988 () Bool)

(declare-fun tp!276499 () Bool)

(declare-fun tp!276497 () Bool)

(assert (=> b!873988 (= e!574679 (and tp!276499 tp!276497))))

(assert (= (and b!873549 ((_ is ElementMatch!2209) (reg!2538 r!15766))) b!873985))

(assert (= (and b!873549 ((_ is Concat!4042) (reg!2538 r!15766))) b!873986))

(assert (= (and b!873549 ((_ is Star!2209) (reg!2538 r!15766))) b!873987))

(assert (= (and b!873549 ((_ is Union!2209) (reg!2538 r!15766))) b!873988))

(check-sat (not bm!50731) (not bm!50712) (not b!873851) (not bm!50729) (not b!873709) tp_is_empty!4061 (not b!873922) (not bm!50721) (not b!873937) (not b!873973) (not d!275636) (not b!873987) (not b!873711) (not d!275674) (not b!873703) (not b!873746) (not b!873802) (not b!873980) (not bm!50740) (not b!873808) (not d!275658) (not b!873800) (not d!275632) (not b!873988) (not b!873805) (not b!873986) (not b!873966) (not bm!50738) (not b!873705) (not b!873981) (not b!873972) (not b!873807) (not b!873713) (not d!275654) (not b!873625) (not d!275652) (not b!873965) (not b!873964) (not b!873974) (not b!873803) (not b!873982) (not b!873628) (not bm!50770) (not d!275662) (not b!873960) (not bm!50767) (not d!275648) (not b!873962) (not d!275670) (not bm!50711) (not b!873961) (not b!873701))
(check-sat)
