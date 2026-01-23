; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!545378 () Bool)

(assert start!545378)

(declare-fun b!5153383 () Bool)

(declare-fun e!3212453 () Bool)

(declare-fun tp!1441527 () Bool)

(declare-fun tp!1441531 () Bool)

(assert (=> b!5153383 (= e!3212453 (and tp!1441527 tp!1441531))))

(declare-fun b!5153384 () Bool)

(declare-fun tp!1441530 () Bool)

(declare-fun tp!1441529 () Bool)

(assert (=> b!5153384 (= e!3212453 (and tp!1441530 tp!1441529))))

(declare-fun res!2192606 () Bool)

(declare-fun e!3212452 () Bool)

(assert (=> start!545378 (=> (not res!2192606) (not e!3212452))))

(declare-datatypes ((C!29292 0))(
  ( (C!29293 (val!24298 Int)) )
))
(declare-datatypes ((Regex!14513 0))(
  ( (ElementMatch!14513 (c!887162 C!29292)) (Concat!23358 (regOne!29538 Regex!14513) (regTwo!29538 Regex!14513)) (EmptyExpr!14513) (Star!14513 (reg!14842 Regex!14513)) (EmptyLang!14513) (Union!14513 (regOne!29539 Regex!14513) (regTwo!29539 Regex!14513)) )
))
(declare-fun expr!117 () Regex!14513)

(declare-fun validRegex!6368 (Regex!14513) Bool)

(assert (=> start!545378 (= res!2192606 (validRegex!6368 expr!117))))

(assert (=> start!545378 e!3212452))

(assert (=> start!545378 e!3212453))

(declare-datatypes ((List!59946 0))(
  ( (Nil!59822) (Cons!59822 (h!66270 Regex!14513) (t!373003 List!59946)) )
))
(declare-datatypes ((Context!7794 0))(
  ( (Context!7795 (exprs!4397 List!59946)) )
))
(declare-fun ctx!100 () Context!7794)

(declare-fun e!3212456 () Bool)

(declare-fun inv!79463 (Context!7794) Bool)

(assert (=> start!545378 (and (inv!79463 ctx!100) e!3212456)))

(declare-fun tp_is_empty!38175 () Bool)

(assert (=> start!545378 tp_is_empty!38175))

(declare-fun b!5153385 () Bool)

(declare-fun tp!1441526 () Bool)

(assert (=> b!5153385 (= e!3212453 tp!1441526)))

(declare-fun b!5153386 () Bool)

(declare-fun res!2192609 () Bool)

(assert (=> b!5153386 (=> (not res!2192609) (not e!3212452))))

(get-info :version)

(assert (=> b!5153386 (= res!2192609 ((_ is Concat!23358) expr!117))))

(declare-fun b!5153387 () Bool)

(declare-fun res!2192605 () Bool)

(assert (=> b!5153387 (=> (not res!2192605) (not e!3212452))))

(declare-fun e!3212454 () Bool)

(assert (=> b!5153387 (= res!2192605 e!3212454)))

(declare-fun res!2192608 () Bool)

(assert (=> b!5153387 (=> res!2192608 e!3212454)))

(assert (=> b!5153387 (= res!2192608 (not ((_ is Concat!23358) expr!117)))))

(declare-fun b!5153388 () Bool)

(declare-fun res!2192603 () Bool)

(assert (=> b!5153388 (=> (not res!2192603) (not e!3212452))))

(declare-fun e!3212455 () Bool)

(assert (=> b!5153388 (= res!2192603 e!3212455)))

(declare-fun res!2192610 () Bool)

(assert (=> b!5153388 (=> res!2192610 e!3212455)))

(declare-fun lostCause!1578 (Regex!14513) Bool)

(assert (=> b!5153388 (= res!2192610 (lostCause!1578 expr!117))))

(declare-fun b!5153389 () Bool)

(assert (=> b!5153389 (= e!3212452 (not (validRegex!6368 (regOne!29538 expr!117))))))

(declare-fun b!5153390 () Bool)

(declare-fun res!2192607 () Bool)

(assert (=> b!5153390 (=> (not res!2192607) (not e!3212452))))

(assert (=> b!5153390 (= res!2192607 (validRegex!6368 (regTwo!29538 expr!117)))))

(declare-fun b!5153391 () Bool)

(declare-fun nullable!4869 (Regex!14513) Bool)

(assert (=> b!5153391 (= e!3212454 (not (nullable!4869 (regOne!29538 expr!117))))))

(declare-fun b!5153392 () Bool)

(declare-fun tp!1441528 () Bool)

(assert (=> b!5153392 (= e!3212456 tp!1441528)))

(declare-fun b!5153393 () Bool)

(declare-fun lostCause!1579 (Context!7794) Bool)

(assert (=> b!5153393 (= e!3212455 (lostCause!1579 ctx!100))))

(declare-fun b!5153394 () Bool)

(assert (=> b!5153394 (= e!3212453 tp_is_empty!38175)))

(declare-fun b!5153395 () Bool)

(declare-fun res!2192604 () Bool)

(assert (=> b!5153395 (=> (not res!2192604) (not e!3212452))))

(declare-fun a!1296 () C!29292)

(assert (=> b!5153395 (= res!2192604 (and (or (not ((_ is ElementMatch!14513) expr!117)) (not (= (c!887162 expr!117) a!1296))) (not ((_ is Union!14513) expr!117))))))

(assert (= (and start!545378 res!2192606) b!5153388))

(assert (= (and b!5153388 (not res!2192610)) b!5153393))

(assert (= (and b!5153388 res!2192603) b!5153395))

(assert (= (and b!5153395 res!2192604) b!5153387))

(assert (= (and b!5153387 (not res!2192608)) b!5153391))

(assert (= (and b!5153387 res!2192605) b!5153386))

(assert (= (and b!5153386 res!2192609) b!5153390))

(assert (= (and b!5153390 res!2192607) b!5153389))

(assert (= (and start!545378 ((_ is ElementMatch!14513) expr!117)) b!5153394))

(assert (= (and start!545378 ((_ is Concat!23358) expr!117)) b!5153383))

(assert (= (and start!545378 ((_ is Star!14513) expr!117)) b!5153385))

(assert (= (and start!545378 ((_ is Union!14513) expr!117)) b!5153384))

(assert (= start!545378 b!5153392))

(declare-fun m!6209982 () Bool)

(assert (=> start!545378 m!6209982))

(declare-fun m!6209984 () Bool)

(assert (=> start!545378 m!6209984))

(declare-fun m!6209986 () Bool)

(assert (=> b!5153391 m!6209986))

(declare-fun m!6209988 () Bool)

(assert (=> b!5153388 m!6209988))

(declare-fun m!6209990 () Bool)

(assert (=> b!5153393 m!6209990))

(declare-fun m!6209992 () Bool)

(assert (=> b!5153390 m!6209992))

(declare-fun m!6209994 () Bool)

(assert (=> b!5153389 m!6209994))

(check-sat (not b!5153391) (not b!5153389) (not b!5153388) (not b!5153384) (not b!5153393) (not b!5153383) (not b!5153390) (not b!5153392) (not b!5153385) tp_is_empty!38175 (not start!545378))
(check-sat)
(get-model)

(declare-fun d!1664676 () Bool)

(declare-fun nullableFct!1346 (Regex!14513) Bool)

(assert (=> d!1664676 (= (nullable!4869 (regOne!29538 expr!117)) (nullableFct!1346 (regOne!29538 expr!117)))))

(declare-fun bs!1202077 () Bool)

(assert (= bs!1202077 d!1664676))

(declare-fun m!6209996 () Bool)

(assert (=> bs!1202077 m!6209996))

(assert (=> b!5153391 d!1664676))

(declare-fun d!1664678 () Bool)

(declare-fun lostCauseFct!388 (Regex!14513) Bool)

(assert (=> d!1664678 (= (lostCause!1578 expr!117) (lostCauseFct!388 expr!117))))

(declare-fun bs!1202078 () Bool)

(assert (= bs!1202078 d!1664678))

(declare-fun m!6209998 () Bool)

(assert (=> bs!1202078 m!6209998))

(assert (=> b!5153388 d!1664678))

(declare-fun d!1664680 () Bool)

(declare-fun lambda!257370 () Int)

(declare-fun exists!1853 (List!59946 Int) Bool)

(assert (=> d!1664680 (= (lostCause!1579 ctx!100) (exists!1853 (exprs!4397 ctx!100) lambda!257370))))

(declare-fun bs!1202084 () Bool)

(assert (= bs!1202084 d!1664680))

(declare-fun m!6210026 () Bool)

(assert (=> bs!1202084 m!6210026))

(assert (=> b!5153393 d!1664680))

(declare-fun bm!360998 () Bool)

(declare-fun call!361004 () Bool)

(declare-fun c!887177 () Bool)

(assert (=> bm!360998 (= call!361004 (validRegex!6368 (ite c!887177 (regTwo!29539 expr!117) (regTwo!29538 expr!117))))))

(declare-fun b!5153495 () Bool)

(declare-fun e!3212519 () Bool)

(declare-fun e!3212518 () Bool)

(assert (=> b!5153495 (= e!3212519 e!3212518)))

(assert (=> b!5153495 (= c!887177 ((_ is Union!14513) expr!117))))

(declare-fun b!5153496 () Bool)

(declare-fun e!3212516 () Bool)

(assert (=> b!5153496 (= e!3212519 e!3212516)))

(declare-fun res!2192647 () Bool)

(assert (=> b!5153496 (= res!2192647 (not (nullable!4869 (reg!14842 expr!117))))))

(assert (=> b!5153496 (=> (not res!2192647) (not e!3212516))))

(declare-fun bm!360999 () Bool)

(declare-fun call!361005 () Bool)

(declare-fun call!361003 () Bool)

(assert (=> bm!360999 (= call!361005 call!361003)))

(declare-fun b!5153497 () Bool)

(assert (=> b!5153497 (= e!3212516 call!361003)))

(declare-fun b!5153498 () Bool)

(declare-fun e!3212522 () Bool)

(assert (=> b!5153498 (= e!3212522 e!3212519)))

(declare-fun c!887178 () Bool)

(assert (=> b!5153498 (= c!887178 ((_ is Star!14513) expr!117))))

(declare-fun b!5153494 () Bool)

(declare-fun e!3212521 () Bool)

(declare-fun e!3212520 () Bool)

(assert (=> b!5153494 (= e!3212521 e!3212520)))

(declare-fun res!2192646 () Bool)

(assert (=> b!5153494 (=> (not res!2192646) (not e!3212520))))

(assert (=> b!5153494 (= res!2192646 call!361005)))

(declare-fun d!1664696 () Bool)

(declare-fun res!2192649 () Bool)

(assert (=> d!1664696 (=> res!2192649 e!3212522)))

(assert (=> d!1664696 (= res!2192649 ((_ is ElementMatch!14513) expr!117))))

(assert (=> d!1664696 (= (validRegex!6368 expr!117) e!3212522)))

(declare-fun b!5153499 () Bool)

(declare-fun e!3212517 () Bool)

(assert (=> b!5153499 (= e!3212517 call!361004)))

(declare-fun bm!361000 () Bool)

(assert (=> bm!361000 (= call!361003 (validRegex!6368 (ite c!887178 (reg!14842 expr!117) (ite c!887177 (regOne!29539 expr!117) (regOne!29538 expr!117)))))))

(declare-fun b!5153500 () Bool)

(declare-fun res!2192650 () Bool)

(assert (=> b!5153500 (=> (not res!2192650) (not e!3212517))))

(assert (=> b!5153500 (= res!2192650 call!361005)))

(assert (=> b!5153500 (= e!3212518 e!3212517)))

(declare-fun b!5153501 () Bool)

(declare-fun res!2192648 () Bool)

(assert (=> b!5153501 (=> res!2192648 e!3212521)))

(assert (=> b!5153501 (= res!2192648 (not ((_ is Concat!23358) expr!117)))))

(assert (=> b!5153501 (= e!3212518 e!3212521)))

(declare-fun b!5153502 () Bool)

(assert (=> b!5153502 (= e!3212520 call!361004)))

(assert (= (and d!1664696 (not res!2192649)) b!5153498))

(assert (= (and b!5153498 c!887178) b!5153496))

(assert (= (and b!5153498 (not c!887178)) b!5153495))

(assert (= (and b!5153496 res!2192647) b!5153497))

(assert (= (and b!5153495 c!887177) b!5153500))

(assert (= (and b!5153495 (not c!887177)) b!5153501))

(assert (= (and b!5153500 res!2192650) b!5153499))

(assert (= (and b!5153501 (not res!2192648)) b!5153494))

(assert (= (and b!5153494 res!2192646) b!5153502))

(assert (= (or b!5153499 b!5153502) bm!360998))

(assert (= (or b!5153500 b!5153494) bm!360999))

(assert (= (or b!5153497 bm!360999) bm!361000))

(declare-fun m!6210028 () Bool)

(assert (=> bm!360998 m!6210028))

(declare-fun m!6210030 () Bool)

(assert (=> b!5153496 m!6210030))

(declare-fun m!6210032 () Bool)

(assert (=> bm!361000 m!6210032))

(assert (=> start!545378 d!1664696))

(declare-fun bs!1202085 () Bool)

(declare-fun d!1664698 () Bool)

(assert (= bs!1202085 (and d!1664698 d!1664680)))

(declare-fun lambda!257373 () Int)

(assert (=> bs!1202085 (not (= lambda!257373 lambda!257370))))

(declare-fun forall!14004 (List!59946 Int) Bool)

(assert (=> d!1664698 (= (inv!79463 ctx!100) (forall!14004 (exprs!4397 ctx!100) lambda!257373))))

(declare-fun bs!1202086 () Bool)

(assert (= bs!1202086 d!1664698))

(declare-fun m!6210034 () Bool)

(assert (=> bs!1202086 m!6210034))

(assert (=> start!545378 d!1664698))

(declare-fun bm!361001 () Bool)

(declare-fun call!361007 () Bool)

(declare-fun c!887179 () Bool)

(assert (=> bm!361001 (= call!361007 (validRegex!6368 (ite c!887179 (regTwo!29539 (regTwo!29538 expr!117)) (regTwo!29538 (regTwo!29538 expr!117)))))))

(declare-fun b!5153504 () Bool)

(declare-fun e!3212526 () Bool)

(declare-fun e!3212525 () Bool)

(assert (=> b!5153504 (= e!3212526 e!3212525)))

(assert (=> b!5153504 (= c!887179 ((_ is Union!14513) (regTwo!29538 expr!117)))))

(declare-fun b!5153505 () Bool)

(declare-fun e!3212523 () Bool)

(assert (=> b!5153505 (= e!3212526 e!3212523)))

(declare-fun res!2192652 () Bool)

(assert (=> b!5153505 (= res!2192652 (not (nullable!4869 (reg!14842 (regTwo!29538 expr!117)))))))

(assert (=> b!5153505 (=> (not res!2192652) (not e!3212523))))

(declare-fun bm!361002 () Bool)

(declare-fun call!361008 () Bool)

(declare-fun call!361006 () Bool)

(assert (=> bm!361002 (= call!361008 call!361006)))

(declare-fun b!5153506 () Bool)

(assert (=> b!5153506 (= e!3212523 call!361006)))

(declare-fun b!5153507 () Bool)

(declare-fun e!3212529 () Bool)

(assert (=> b!5153507 (= e!3212529 e!3212526)))

(declare-fun c!887180 () Bool)

(assert (=> b!5153507 (= c!887180 ((_ is Star!14513) (regTwo!29538 expr!117)))))

(declare-fun b!5153503 () Bool)

(declare-fun e!3212528 () Bool)

(declare-fun e!3212527 () Bool)

(assert (=> b!5153503 (= e!3212528 e!3212527)))

(declare-fun res!2192651 () Bool)

(assert (=> b!5153503 (=> (not res!2192651) (not e!3212527))))

(assert (=> b!5153503 (= res!2192651 call!361008)))

(declare-fun d!1664700 () Bool)

(declare-fun res!2192654 () Bool)

(assert (=> d!1664700 (=> res!2192654 e!3212529)))

(assert (=> d!1664700 (= res!2192654 ((_ is ElementMatch!14513) (regTwo!29538 expr!117)))))

(assert (=> d!1664700 (= (validRegex!6368 (regTwo!29538 expr!117)) e!3212529)))

(declare-fun b!5153508 () Bool)

(declare-fun e!3212524 () Bool)

(assert (=> b!5153508 (= e!3212524 call!361007)))

(declare-fun bm!361003 () Bool)

(assert (=> bm!361003 (= call!361006 (validRegex!6368 (ite c!887180 (reg!14842 (regTwo!29538 expr!117)) (ite c!887179 (regOne!29539 (regTwo!29538 expr!117)) (regOne!29538 (regTwo!29538 expr!117))))))))

(declare-fun b!5153509 () Bool)

(declare-fun res!2192655 () Bool)

(assert (=> b!5153509 (=> (not res!2192655) (not e!3212524))))

(assert (=> b!5153509 (= res!2192655 call!361008)))

(assert (=> b!5153509 (= e!3212525 e!3212524)))

(declare-fun b!5153510 () Bool)

(declare-fun res!2192653 () Bool)

(assert (=> b!5153510 (=> res!2192653 e!3212528)))

(assert (=> b!5153510 (= res!2192653 (not ((_ is Concat!23358) (regTwo!29538 expr!117))))))

(assert (=> b!5153510 (= e!3212525 e!3212528)))

(declare-fun b!5153511 () Bool)

(assert (=> b!5153511 (= e!3212527 call!361007)))

(assert (= (and d!1664700 (not res!2192654)) b!5153507))

(assert (= (and b!5153507 c!887180) b!5153505))

(assert (= (and b!5153507 (not c!887180)) b!5153504))

(assert (= (and b!5153505 res!2192652) b!5153506))

(assert (= (and b!5153504 c!887179) b!5153509))

(assert (= (and b!5153504 (not c!887179)) b!5153510))

(assert (= (and b!5153509 res!2192655) b!5153508))

(assert (= (and b!5153510 (not res!2192653)) b!5153503))

(assert (= (and b!5153503 res!2192651) b!5153511))

(assert (= (or b!5153508 b!5153511) bm!361001))

(assert (= (or b!5153509 b!5153503) bm!361002))

(assert (= (or b!5153506 bm!361002) bm!361003))

(declare-fun m!6210036 () Bool)

(assert (=> bm!361001 m!6210036))

(declare-fun m!6210038 () Bool)

(assert (=> b!5153505 m!6210038))

(declare-fun m!6210040 () Bool)

(assert (=> bm!361003 m!6210040))

(assert (=> b!5153390 d!1664700))

(declare-fun bm!361004 () Bool)

(declare-fun call!361010 () Bool)

(declare-fun c!887181 () Bool)

(assert (=> bm!361004 (= call!361010 (validRegex!6368 (ite c!887181 (regTwo!29539 (regOne!29538 expr!117)) (regTwo!29538 (regOne!29538 expr!117)))))))

(declare-fun b!5153513 () Bool)

(declare-fun e!3212533 () Bool)

(declare-fun e!3212532 () Bool)

(assert (=> b!5153513 (= e!3212533 e!3212532)))

(assert (=> b!5153513 (= c!887181 ((_ is Union!14513) (regOne!29538 expr!117)))))

(declare-fun b!5153514 () Bool)

(declare-fun e!3212530 () Bool)

(assert (=> b!5153514 (= e!3212533 e!3212530)))

(declare-fun res!2192657 () Bool)

(assert (=> b!5153514 (= res!2192657 (not (nullable!4869 (reg!14842 (regOne!29538 expr!117)))))))

(assert (=> b!5153514 (=> (not res!2192657) (not e!3212530))))

(declare-fun bm!361005 () Bool)

(declare-fun call!361011 () Bool)

(declare-fun call!361009 () Bool)

(assert (=> bm!361005 (= call!361011 call!361009)))

(declare-fun b!5153515 () Bool)

(assert (=> b!5153515 (= e!3212530 call!361009)))

(declare-fun b!5153516 () Bool)

(declare-fun e!3212536 () Bool)

(assert (=> b!5153516 (= e!3212536 e!3212533)))

(declare-fun c!887182 () Bool)

(assert (=> b!5153516 (= c!887182 ((_ is Star!14513) (regOne!29538 expr!117)))))

(declare-fun b!5153512 () Bool)

(declare-fun e!3212535 () Bool)

(declare-fun e!3212534 () Bool)

(assert (=> b!5153512 (= e!3212535 e!3212534)))

(declare-fun res!2192656 () Bool)

(assert (=> b!5153512 (=> (not res!2192656) (not e!3212534))))

(assert (=> b!5153512 (= res!2192656 call!361011)))

(declare-fun d!1664702 () Bool)

(declare-fun res!2192659 () Bool)

(assert (=> d!1664702 (=> res!2192659 e!3212536)))

(assert (=> d!1664702 (= res!2192659 ((_ is ElementMatch!14513) (regOne!29538 expr!117)))))

(assert (=> d!1664702 (= (validRegex!6368 (regOne!29538 expr!117)) e!3212536)))

(declare-fun b!5153517 () Bool)

(declare-fun e!3212531 () Bool)

(assert (=> b!5153517 (= e!3212531 call!361010)))

(declare-fun bm!361006 () Bool)

(assert (=> bm!361006 (= call!361009 (validRegex!6368 (ite c!887182 (reg!14842 (regOne!29538 expr!117)) (ite c!887181 (regOne!29539 (regOne!29538 expr!117)) (regOne!29538 (regOne!29538 expr!117))))))))

(declare-fun b!5153518 () Bool)

(declare-fun res!2192660 () Bool)

(assert (=> b!5153518 (=> (not res!2192660) (not e!3212531))))

(assert (=> b!5153518 (= res!2192660 call!361011)))

(assert (=> b!5153518 (= e!3212532 e!3212531)))

(declare-fun b!5153519 () Bool)

(declare-fun res!2192658 () Bool)

(assert (=> b!5153519 (=> res!2192658 e!3212535)))

(assert (=> b!5153519 (= res!2192658 (not ((_ is Concat!23358) (regOne!29538 expr!117))))))

(assert (=> b!5153519 (= e!3212532 e!3212535)))

(declare-fun b!5153520 () Bool)

(assert (=> b!5153520 (= e!3212534 call!361010)))

(assert (= (and d!1664702 (not res!2192659)) b!5153516))

(assert (= (and b!5153516 c!887182) b!5153514))

(assert (= (and b!5153516 (not c!887182)) b!5153513))

(assert (= (and b!5153514 res!2192657) b!5153515))

(assert (= (and b!5153513 c!887181) b!5153518))

(assert (= (and b!5153513 (not c!887181)) b!5153519))

(assert (= (and b!5153518 res!2192660) b!5153517))

(assert (= (and b!5153519 (not res!2192658)) b!5153512))

(assert (= (and b!5153512 res!2192656) b!5153520))

(assert (= (or b!5153517 b!5153520) bm!361004))

(assert (= (or b!5153518 b!5153512) bm!361005))

(assert (= (or b!5153515 bm!361005) bm!361006))

(declare-fun m!6210042 () Bool)

(assert (=> bm!361004 m!6210042))

(declare-fun m!6210044 () Bool)

(assert (=> b!5153514 m!6210044))

(declare-fun m!6210046 () Bool)

(assert (=> bm!361006 m!6210046))

(assert (=> b!5153389 d!1664702))

(declare-fun b!5153531 () Bool)

(declare-fun e!3212539 () Bool)

(assert (=> b!5153531 (= e!3212539 tp_is_empty!38175)))

(declare-fun b!5153533 () Bool)

(declare-fun tp!1441585 () Bool)

(assert (=> b!5153533 (= e!3212539 tp!1441585)))

(declare-fun b!5153534 () Bool)

(declare-fun tp!1441586 () Bool)

(declare-fun tp!1441587 () Bool)

(assert (=> b!5153534 (= e!3212539 (and tp!1441586 tp!1441587))))

(declare-fun b!5153532 () Bool)

(declare-fun tp!1441583 () Bool)

(declare-fun tp!1441584 () Bool)

(assert (=> b!5153532 (= e!3212539 (and tp!1441583 tp!1441584))))

(assert (=> b!5153385 (= tp!1441526 e!3212539)))

(assert (= (and b!5153385 ((_ is ElementMatch!14513) (reg!14842 expr!117))) b!5153531))

(assert (= (and b!5153385 ((_ is Concat!23358) (reg!14842 expr!117))) b!5153532))

(assert (= (and b!5153385 ((_ is Star!14513) (reg!14842 expr!117))) b!5153533))

(assert (= (and b!5153385 ((_ is Union!14513) (reg!14842 expr!117))) b!5153534))

(declare-fun b!5153539 () Bool)

(declare-fun e!3212542 () Bool)

(declare-fun tp!1441592 () Bool)

(declare-fun tp!1441593 () Bool)

(assert (=> b!5153539 (= e!3212542 (and tp!1441592 tp!1441593))))

(assert (=> b!5153392 (= tp!1441528 e!3212542)))

(assert (= (and b!5153392 ((_ is Cons!59822) (exprs!4397 ctx!100))) b!5153539))

(declare-fun b!5153540 () Bool)

(declare-fun e!3212543 () Bool)

(assert (=> b!5153540 (= e!3212543 tp_is_empty!38175)))

(declare-fun b!5153542 () Bool)

(declare-fun tp!1441596 () Bool)

(assert (=> b!5153542 (= e!3212543 tp!1441596)))

(declare-fun b!5153543 () Bool)

(declare-fun tp!1441597 () Bool)

(declare-fun tp!1441598 () Bool)

(assert (=> b!5153543 (= e!3212543 (and tp!1441597 tp!1441598))))

(declare-fun b!5153541 () Bool)

(declare-fun tp!1441594 () Bool)

(declare-fun tp!1441595 () Bool)

(assert (=> b!5153541 (= e!3212543 (and tp!1441594 tp!1441595))))

(assert (=> b!5153383 (= tp!1441527 e!3212543)))

(assert (= (and b!5153383 ((_ is ElementMatch!14513) (regOne!29538 expr!117))) b!5153540))

(assert (= (and b!5153383 ((_ is Concat!23358) (regOne!29538 expr!117))) b!5153541))

(assert (= (and b!5153383 ((_ is Star!14513) (regOne!29538 expr!117))) b!5153542))

(assert (= (and b!5153383 ((_ is Union!14513) (regOne!29538 expr!117))) b!5153543))

(declare-fun b!5153544 () Bool)

(declare-fun e!3212544 () Bool)

(assert (=> b!5153544 (= e!3212544 tp_is_empty!38175)))

(declare-fun b!5153546 () Bool)

(declare-fun tp!1441601 () Bool)

(assert (=> b!5153546 (= e!3212544 tp!1441601)))

(declare-fun b!5153547 () Bool)

(declare-fun tp!1441602 () Bool)

(declare-fun tp!1441603 () Bool)

(assert (=> b!5153547 (= e!3212544 (and tp!1441602 tp!1441603))))

(declare-fun b!5153545 () Bool)

(declare-fun tp!1441599 () Bool)

(declare-fun tp!1441600 () Bool)

(assert (=> b!5153545 (= e!3212544 (and tp!1441599 tp!1441600))))

(assert (=> b!5153383 (= tp!1441531 e!3212544)))

(assert (= (and b!5153383 ((_ is ElementMatch!14513) (regTwo!29538 expr!117))) b!5153544))

(assert (= (and b!5153383 ((_ is Concat!23358) (regTwo!29538 expr!117))) b!5153545))

(assert (= (and b!5153383 ((_ is Star!14513) (regTwo!29538 expr!117))) b!5153546))

(assert (= (and b!5153383 ((_ is Union!14513) (regTwo!29538 expr!117))) b!5153547))

(declare-fun b!5153548 () Bool)

(declare-fun e!3212545 () Bool)

(assert (=> b!5153548 (= e!3212545 tp_is_empty!38175)))

(declare-fun b!5153550 () Bool)

(declare-fun tp!1441606 () Bool)

(assert (=> b!5153550 (= e!3212545 tp!1441606)))

(declare-fun b!5153551 () Bool)

(declare-fun tp!1441607 () Bool)

(declare-fun tp!1441608 () Bool)

(assert (=> b!5153551 (= e!3212545 (and tp!1441607 tp!1441608))))

(declare-fun b!5153549 () Bool)

(declare-fun tp!1441604 () Bool)

(declare-fun tp!1441605 () Bool)

(assert (=> b!5153549 (= e!3212545 (and tp!1441604 tp!1441605))))

(assert (=> b!5153384 (= tp!1441530 e!3212545)))

(assert (= (and b!5153384 ((_ is ElementMatch!14513) (regOne!29539 expr!117))) b!5153548))

(assert (= (and b!5153384 ((_ is Concat!23358) (regOne!29539 expr!117))) b!5153549))

(assert (= (and b!5153384 ((_ is Star!14513) (regOne!29539 expr!117))) b!5153550))

(assert (= (and b!5153384 ((_ is Union!14513) (regOne!29539 expr!117))) b!5153551))

(declare-fun b!5153552 () Bool)

(declare-fun e!3212546 () Bool)

(assert (=> b!5153552 (= e!3212546 tp_is_empty!38175)))

(declare-fun b!5153554 () Bool)

(declare-fun tp!1441611 () Bool)

(assert (=> b!5153554 (= e!3212546 tp!1441611)))

(declare-fun b!5153555 () Bool)

(declare-fun tp!1441612 () Bool)

(declare-fun tp!1441613 () Bool)

(assert (=> b!5153555 (= e!3212546 (and tp!1441612 tp!1441613))))

(declare-fun b!5153553 () Bool)

(declare-fun tp!1441609 () Bool)

(declare-fun tp!1441610 () Bool)

(assert (=> b!5153553 (= e!3212546 (and tp!1441609 tp!1441610))))

(assert (=> b!5153384 (= tp!1441529 e!3212546)))

(assert (= (and b!5153384 ((_ is ElementMatch!14513) (regTwo!29539 expr!117))) b!5153552))

(assert (= (and b!5153384 ((_ is Concat!23358) (regTwo!29539 expr!117))) b!5153553))

(assert (= (and b!5153384 ((_ is Star!14513) (regTwo!29539 expr!117))) b!5153554))

(assert (= (and b!5153384 ((_ is Union!14513) (regTwo!29539 expr!117))) b!5153555))

(check-sat (not b!5153496) (not b!5153554) (not bm!361003) (not b!5153546) (not d!1664698) (not b!5153534) (not b!5153550) (not b!5153545) (not d!1664680) (not b!5153542) (not bm!361001) (not d!1664676) (not d!1664678) (not b!5153539) (not bm!361004) tp_is_empty!38175 (not b!5153549) (not b!5153543) (not bm!361006) (not bm!361000) (not b!5153555) (not b!5153551) (not b!5153553) (not b!5153541) (not bm!360998) (not b!5153514) (not b!5153505) (not b!5153547) (not b!5153533) (not b!5153532))
(check-sat)
