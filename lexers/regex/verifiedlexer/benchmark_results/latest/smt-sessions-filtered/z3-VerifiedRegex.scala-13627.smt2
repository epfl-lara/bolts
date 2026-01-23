; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731516 () Bool)

(assert start!731516)

(declare-fun b!7575594 () Bool)

(assert (=> b!7575594 true))

(assert (=> b!7575594 true))

(declare-fun lambda!466679 () Int)

(declare-fun lambda!466678 () Int)

(assert (=> b!7575594 (not (= lambda!466679 lambda!466678))))

(assert (=> b!7575594 true))

(assert (=> b!7575594 true))

(declare-fun b!7575590 () Bool)

(declare-fun e!4509548 () Bool)

(declare-fun tp_is_empty!50453 () Bool)

(assert (=> b!7575590 (= e!4509548 tp_is_empty!50453)))

(declare-fun b!7575591 () Bool)

(declare-fun tp!2207451 () Bool)

(declare-fun tp!2207453 () Bool)

(assert (=> b!7575591 (= e!4509548 (and tp!2207451 tp!2207453))))

(declare-fun b!7575592 () Bool)

(declare-fun e!4509546 () Bool)

(declare-fun e!4509545 () Bool)

(assert (=> b!7575592 (= e!4509546 (not e!4509545))))

(declare-fun res!3034870 () Bool)

(assert (=> b!7575592 (=> res!3034870 e!4509545)))

(declare-datatypes ((C!40424 0))(
  ( (C!40425 (val!30652 Int)) )
))
(declare-datatypes ((Regex!20049 0))(
  ( (ElementMatch!20049 (c!1397500 C!40424)) (Concat!28894 (regOne!40610 Regex!20049) (regTwo!40610 Regex!20049)) (EmptyExpr!20049) (Star!20049 (reg!20378 Regex!20049)) (EmptyLang!20049) (Union!20049 (regOne!40611 Regex!20049) (regTwo!40611 Regex!20049)) )
))
(declare-fun r!22341 () Regex!20049)

(declare-fun lt!2651992 () Bool)

(get-info :version)

(assert (=> b!7575592 (= res!3034870 (or ((_ is EmptyLang!20049) r!22341) ((_ is EmptyExpr!20049) r!22341) ((_ is ElementMatch!20049) r!22341) ((_ is Union!20049) r!22341) ((_ is Star!20049) r!22341) (not lt!2651992)))))

(declare-datatypes ((List!72932 0))(
  ( (Nil!72808) (Cons!72808 (h!79256 C!40424) (t!387667 List!72932)) )
))
(declare-fun s!13436 () List!72932)

(declare-fun matchRSpec!4368 (Regex!20049 List!72932) Bool)

(assert (=> b!7575592 (= lt!2651992 (matchRSpec!4368 r!22341 s!13436))))

(declare-fun matchR!9645 (Regex!20049 List!72932) Bool)

(assert (=> b!7575592 (= lt!2651992 (matchR!9645 r!22341 s!13436))))

(declare-datatypes ((Unit!167054 0))(
  ( (Unit!167055) )
))
(declare-fun lt!2651991 () Unit!167054)

(declare-fun mainMatchTheorem!4362 (Regex!20049 List!72932) Unit!167054)

(assert (=> b!7575592 (= lt!2651991 (mainMatchTheorem!4362 r!22341 s!13436))))

(declare-fun b!7575593 () Bool)

(declare-fun e!4509549 () Bool)

(declare-fun validRegex!10477 (Regex!20049) Bool)

(assert (=> b!7575593 (= e!4509549 (validRegex!10477 (regTwo!40610 r!22341)))))

(assert (=> b!7575594 (= e!4509545 e!4509549)))

(declare-fun res!3034871 () Bool)

(assert (=> b!7575594 (=> res!3034871 e!4509549)))

(declare-datatypes ((tuple2!68892 0))(
  ( (tuple2!68893 (_1!37749 List!72932) (_2!37749 List!72932)) )
))
(declare-datatypes ((Option!17282 0))(
  ( (None!17281) (Some!17281 (v!54416 tuple2!68892)) )
))
(declare-fun lt!2651990 () Option!17282)

(declare-fun get!25579 (Option!17282) tuple2!68892)

(assert (=> b!7575594 (= res!3034871 (not (matchR!9645 (regOne!40610 r!22341) (_1!37749 (get!25579 lt!2651990)))))))

(declare-fun Exists!4292 (Int) Bool)

(assert (=> b!7575594 (= (Exists!4292 lambda!466678) (Exists!4292 lambda!466679))))

(declare-fun lt!2651993 () Unit!167054)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2610 (Regex!20049 Regex!20049 List!72932) Unit!167054)

(assert (=> b!7575594 (= lt!2651993 (lemmaExistCutMatchRandMatchRSpecEquivalent!2610 (regOne!40610 r!22341) (regTwo!40610 r!22341) s!13436))))

(declare-fun isDefined!13928 (Option!17282) Bool)

(assert (=> b!7575594 (= (isDefined!13928 lt!2651990) (Exists!4292 lambda!466678))))

(declare-fun findConcatSeparation!3342 (Regex!20049 Regex!20049 List!72932 List!72932 List!72932) Option!17282)

(assert (=> b!7575594 (= lt!2651990 (findConcatSeparation!3342 (regOne!40610 r!22341) (regTwo!40610 r!22341) Nil!72808 s!13436 s!13436))))

(declare-fun lt!2651994 () Unit!167054)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3100 (Regex!20049 Regex!20049 List!72932) Unit!167054)

(assert (=> b!7575594 (= lt!2651994 (lemmaFindConcatSeparationEquivalentToExists!3100 (regOne!40610 r!22341) (regTwo!40610 r!22341) s!13436))))

(declare-fun b!7575595 () Bool)

(declare-fun res!3034874 () Bool)

(assert (=> b!7575595 (=> (not res!3034874) (not e!4509546))))

(declare-fun isEmpty!41473 (List!72932) Bool)

(assert (=> b!7575595 (= res!3034874 (not (isEmpty!41473 s!13436)))))

(declare-fun b!7575596 () Bool)

(declare-fun tp!2207449 () Bool)

(declare-fun tp!2207450 () Bool)

(assert (=> b!7575596 (= e!4509548 (and tp!2207449 tp!2207450))))

(declare-fun res!3034873 () Bool)

(assert (=> start!731516 (=> (not res!3034873) (not e!4509546))))

(assert (=> start!731516 (= res!3034873 (validRegex!10477 r!22341))))

(assert (=> start!731516 e!4509546))

(assert (=> start!731516 e!4509548))

(declare-fun e!4509547 () Bool)

(assert (=> start!731516 e!4509547))

(declare-fun b!7575597 () Bool)

(declare-fun tp!2207452 () Bool)

(assert (=> b!7575597 (= e!4509547 (and tp_is_empty!50453 tp!2207452))))

(declare-fun b!7575598 () Bool)

(declare-fun tp!2207448 () Bool)

(assert (=> b!7575598 (= e!4509548 tp!2207448)))

(declare-fun b!7575599 () Bool)

(declare-fun res!3034872 () Bool)

(assert (=> b!7575599 (=> (not res!3034872) (not e!4509546))))

(declare-fun lostCause!1825 (Regex!20049) Bool)

(assert (=> b!7575599 (= res!3034872 (lostCause!1825 r!22341))))

(assert (= (and start!731516 res!3034873) b!7575599))

(assert (= (and b!7575599 res!3034872) b!7575595))

(assert (= (and b!7575595 res!3034874) b!7575592))

(assert (= (and b!7575592 (not res!3034870)) b!7575594))

(assert (= (and b!7575594 (not res!3034871)) b!7575593))

(assert (= (and start!731516 ((_ is ElementMatch!20049) r!22341)) b!7575590))

(assert (= (and start!731516 ((_ is Concat!28894) r!22341)) b!7575596))

(assert (= (and start!731516 ((_ is Star!20049) r!22341)) b!7575598))

(assert (= (and start!731516 ((_ is Union!20049) r!22341)) b!7575591))

(assert (= (and start!731516 ((_ is Cons!72808) s!13436)) b!7575597))

(declare-fun m!8133872 () Bool)

(assert (=> b!7575592 m!8133872))

(declare-fun m!8133874 () Bool)

(assert (=> b!7575592 m!8133874))

(declare-fun m!8133876 () Bool)

(assert (=> b!7575592 m!8133876))

(declare-fun m!8133878 () Bool)

(assert (=> b!7575594 m!8133878))

(declare-fun m!8133880 () Bool)

(assert (=> b!7575594 m!8133880))

(declare-fun m!8133882 () Bool)

(assert (=> b!7575594 m!8133882))

(declare-fun m!8133884 () Bool)

(assert (=> b!7575594 m!8133884))

(declare-fun m!8133886 () Bool)

(assert (=> b!7575594 m!8133886))

(declare-fun m!8133888 () Bool)

(assert (=> b!7575594 m!8133888))

(assert (=> b!7575594 m!8133888))

(declare-fun m!8133890 () Bool)

(assert (=> b!7575594 m!8133890))

(declare-fun m!8133892 () Bool)

(assert (=> b!7575594 m!8133892))

(declare-fun m!8133894 () Bool)

(assert (=> b!7575593 m!8133894))

(declare-fun m!8133896 () Bool)

(assert (=> b!7575595 m!8133896))

(declare-fun m!8133898 () Bool)

(assert (=> b!7575599 m!8133898))

(declare-fun m!8133900 () Bool)

(assert (=> start!731516 m!8133900))

(check-sat (not b!7575595) (not start!731516) (not b!7575597) (not b!7575593) tp_is_empty!50453 (not b!7575599) (not b!7575596) (not b!7575598) (not b!7575594) (not b!7575591) (not b!7575592))
(check-sat)
(get-model)

(declare-fun bs!1940797 () Bool)

(declare-fun b!7575699 () Bool)

(assert (= bs!1940797 (and b!7575699 b!7575594)))

(declare-fun lambda!466688 () Int)

(assert (=> bs!1940797 (not (= lambda!466688 lambda!466678))))

(assert (=> bs!1940797 (not (= lambda!466688 lambda!466679))))

(assert (=> b!7575699 true))

(assert (=> b!7575699 true))

(declare-fun bs!1940798 () Bool)

(declare-fun b!7575698 () Bool)

(assert (= bs!1940798 (and b!7575698 b!7575594)))

(declare-fun lambda!466689 () Int)

(assert (=> bs!1940798 (not (= lambda!466689 lambda!466678))))

(assert (=> bs!1940798 (= lambda!466689 lambda!466679)))

(declare-fun bs!1940799 () Bool)

(assert (= bs!1940799 (and b!7575698 b!7575699)))

(assert (=> bs!1940799 (not (= lambda!466689 lambda!466688))))

(assert (=> b!7575698 true))

(assert (=> b!7575698 true))

(declare-fun b!7575695 () Bool)

(declare-fun e!4509610 () Bool)

(declare-fun e!4509613 () Bool)

(assert (=> b!7575695 (= e!4509610 e!4509613)))

(declare-fun c!1397526 () Bool)

(assert (=> b!7575695 (= c!1397526 ((_ is Star!20049) r!22341))))

(declare-fun b!7575696 () Bool)

(declare-fun e!4509607 () Bool)

(assert (=> b!7575696 (= e!4509610 e!4509607)))

(declare-fun res!3034923 () Bool)

(assert (=> b!7575696 (= res!3034923 (matchRSpec!4368 (regOne!40611 r!22341) s!13436))))

(assert (=> b!7575696 (=> res!3034923 e!4509607)))

(declare-fun b!7575697 () Bool)

(declare-fun e!4509608 () Bool)

(assert (=> b!7575697 (= e!4509608 (= s!13436 (Cons!72808 (c!1397500 r!22341) Nil!72808)))))

(declare-fun call!694482 () Bool)

(assert (=> b!7575698 (= e!4509613 call!694482)))

(declare-fun e!4509609 () Bool)

(assert (=> b!7575699 (= e!4509609 call!694482)))

(declare-fun b!7575700 () Bool)

(declare-fun c!1397524 () Bool)

(assert (=> b!7575700 (= c!1397524 ((_ is ElementMatch!20049) r!22341))))

(declare-fun e!4509611 () Bool)

(assert (=> b!7575700 (= e!4509611 e!4509608)))

(declare-fun b!7575701 () Bool)

(declare-fun c!1397525 () Bool)

(assert (=> b!7575701 (= c!1397525 ((_ is Union!20049) r!22341))))

(assert (=> b!7575701 (= e!4509608 e!4509610)))

(declare-fun b!7575702 () Bool)

(declare-fun res!3034922 () Bool)

(assert (=> b!7575702 (=> res!3034922 e!4509609)))

(declare-fun call!694483 () Bool)

(assert (=> b!7575702 (= res!3034922 call!694483)))

(assert (=> b!7575702 (= e!4509613 e!4509609)))

(declare-fun b!7575703 () Bool)

(declare-fun e!4509612 () Bool)

(assert (=> b!7575703 (= e!4509612 e!4509611)))

(declare-fun res!3034924 () Bool)

(assert (=> b!7575703 (= res!3034924 (not ((_ is EmptyLang!20049) r!22341)))))

(assert (=> b!7575703 (=> (not res!3034924) (not e!4509611))))

(declare-fun bm!694478 () Bool)

(assert (=> bm!694478 (= call!694482 (Exists!4292 (ite c!1397526 lambda!466688 lambda!466689)))))

(declare-fun d!2317930 () Bool)

(declare-fun c!1397523 () Bool)

(assert (=> d!2317930 (= c!1397523 ((_ is EmptyExpr!20049) r!22341))))

(assert (=> d!2317930 (= (matchRSpec!4368 r!22341 s!13436) e!4509612)))

(declare-fun bm!694477 () Bool)

(assert (=> bm!694477 (= call!694483 (isEmpty!41473 s!13436))))

(declare-fun b!7575704 () Bool)

(assert (=> b!7575704 (= e!4509607 (matchRSpec!4368 (regTwo!40611 r!22341) s!13436))))

(declare-fun b!7575705 () Bool)

(assert (=> b!7575705 (= e!4509612 call!694483)))

(assert (= (and d!2317930 c!1397523) b!7575705))

(assert (= (and d!2317930 (not c!1397523)) b!7575703))

(assert (= (and b!7575703 res!3034924) b!7575700))

(assert (= (and b!7575700 c!1397524) b!7575697))

(assert (= (and b!7575700 (not c!1397524)) b!7575701))

(assert (= (and b!7575701 c!1397525) b!7575696))

(assert (= (and b!7575701 (not c!1397525)) b!7575695))

(assert (= (and b!7575696 (not res!3034923)) b!7575704))

(assert (= (and b!7575695 c!1397526) b!7575702))

(assert (= (and b!7575695 (not c!1397526)) b!7575698))

(assert (= (and b!7575702 (not res!3034922)) b!7575699))

(assert (= (or b!7575699 b!7575698) bm!694478))

(assert (= (or b!7575705 b!7575702) bm!694477))

(declare-fun m!8133908 () Bool)

(assert (=> b!7575696 m!8133908))

(declare-fun m!8133910 () Bool)

(assert (=> bm!694478 m!8133910))

(assert (=> bm!694477 m!8133896))

(declare-fun m!8133912 () Bool)

(assert (=> b!7575704 m!8133912))

(assert (=> b!7575592 d!2317930))

(declare-fun b!7575773 () Bool)

(declare-fun res!3034966 () Bool)

(declare-fun e!4509649 () Bool)

(assert (=> b!7575773 (=> res!3034966 e!4509649)))

(assert (=> b!7575773 (= res!3034966 (not ((_ is ElementMatch!20049) r!22341)))))

(declare-fun e!4509654 () Bool)

(assert (=> b!7575773 (= e!4509654 e!4509649)))

(declare-fun b!7575774 () Bool)

(declare-fun res!3034964 () Bool)

(assert (=> b!7575774 (=> res!3034964 e!4509649)))

(declare-fun e!4509655 () Bool)

(assert (=> b!7575774 (= res!3034964 e!4509655)))

(declare-fun res!3034965 () Bool)

(assert (=> b!7575774 (=> (not res!3034965) (not e!4509655))))

(declare-fun lt!2651999 () Bool)

(assert (=> b!7575774 (= res!3034965 lt!2651999)))

(declare-fun bm!694489 () Bool)

(declare-fun call!694494 () Bool)

(assert (=> bm!694489 (= call!694494 (isEmpty!41473 s!13436))))

(declare-fun b!7575775 () Bool)

(assert (=> b!7575775 (= e!4509654 (not lt!2651999))))

(declare-fun b!7575776 () Bool)

(declare-fun e!4509651 () Bool)

(declare-fun derivativeStep!5782 (Regex!20049 C!40424) Regex!20049)

(declare-fun head!15582 (List!72932) C!40424)

(declare-fun tail!15122 (List!72932) List!72932)

(assert (=> b!7575776 (= e!4509651 (matchR!9645 (derivativeStep!5782 r!22341 (head!15582 s!13436)) (tail!15122 s!13436)))))

(declare-fun b!7575777 () Bool)

(declare-fun res!3034961 () Bool)

(assert (=> b!7575777 (=> (not res!3034961) (not e!4509655))))

(assert (=> b!7575777 (= res!3034961 (isEmpty!41473 (tail!15122 s!13436)))))

(declare-fun b!7575778 () Bool)

(declare-fun res!3034962 () Bool)

(declare-fun e!4509653 () Bool)

(assert (=> b!7575778 (=> res!3034962 e!4509653)))

(assert (=> b!7575778 (= res!3034962 (not (isEmpty!41473 (tail!15122 s!13436))))))

(declare-fun b!7575779 () Bool)

(declare-fun res!3034960 () Bool)

(assert (=> b!7575779 (=> (not res!3034960) (not e!4509655))))

(assert (=> b!7575779 (= res!3034960 (not call!694494))))

(declare-fun b!7575780 () Bool)

(declare-fun e!4509650 () Bool)

(assert (=> b!7575780 (= e!4509649 e!4509650)))

(declare-fun res!3034967 () Bool)

(assert (=> b!7575780 (=> (not res!3034967) (not e!4509650))))

(assert (=> b!7575780 (= res!3034967 (not lt!2651999))))

(declare-fun b!7575781 () Bool)

(assert (=> b!7575781 (= e!4509653 (not (= (head!15582 s!13436) (c!1397500 r!22341))))))

(declare-fun b!7575782 () Bool)

(declare-fun e!4509652 () Bool)

(assert (=> b!7575782 (= e!4509652 e!4509654)))

(declare-fun c!1397543 () Bool)

(assert (=> b!7575782 (= c!1397543 ((_ is EmptyLang!20049) r!22341))))

(declare-fun b!7575783 () Bool)

(declare-fun nullable!8752 (Regex!20049) Bool)

(assert (=> b!7575783 (= e!4509651 (nullable!8752 r!22341))))

(declare-fun d!2317936 () Bool)

(assert (=> d!2317936 e!4509652))

(declare-fun c!1397545 () Bool)

(assert (=> d!2317936 (= c!1397545 ((_ is EmptyExpr!20049) r!22341))))

(assert (=> d!2317936 (= lt!2651999 e!4509651)))

(declare-fun c!1397544 () Bool)

(assert (=> d!2317936 (= c!1397544 (isEmpty!41473 s!13436))))

(assert (=> d!2317936 (validRegex!10477 r!22341)))

(assert (=> d!2317936 (= (matchR!9645 r!22341 s!13436) lt!2651999)))

(declare-fun b!7575784 () Bool)

(assert (=> b!7575784 (= e!4509655 (= (head!15582 s!13436) (c!1397500 r!22341)))))

(declare-fun b!7575785 () Bool)

(assert (=> b!7575785 (= e!4509650 e!4509653)))

(declare-fun res!3034963 () Bool)

(assert (=> b!7575785 (=> res!3034963 e!4509653)))

(assert (=> b!7575785 (= res!3034963 call!694494)))

(declare-fun b!7575786 () Bool)

(assert (=> b!7575786 (= e!4509652 (= lt!2651999 call!694494))))

(assert (= (and d!2317936 c!1397544) b!7575783))

(assert (= (and d!2317936 (not c!1397544)) b!7575776))

(assert (= (and d!2317936 c!1397545) b!7575786))

(assert (= (and d!2317936 (not c!1397545)) b!7575782))

(assert (= (and b!7575782 c!1397543) b!7575775))

(assert (= (and b!7575782 (not c!1397543)) b!7575773))

(assert (= (and b!7575773 (not res!3034966)) b!7575774))

(assert (= (and b!7575774 res!3034965) b!7575779))

(assert (= (and b!7575779 res!3034960) b!7575777))

(assert (= (and b!7575777 res!3034961) b!7575784))

(assert (= (and b!7575774 (not res!3034964)) b!7575780))

(assert (= (and b!7575780 res!3034967) b!7575785))

(assert (= (and b!7575785 (not res!3034963)) b!7575778))

(assert (= (and b!7575778 (not res!3034962)) b!7575781))

(assert (= (or b!7575786 b!7575785 b!7575779) bm!694489))

(assert (=> bm!694489 m!8133896))

(declare-fun m!8133920 () Bool)

(assert (=> b!7575776 m!8133920))

(assert (=> b!7575776 m!8133920))

(declare-fun m!8133922 () Bool)

(assert (=> b!7575776 m!8133922))

(declare-fun m!8133924 () Bool)

(assert (=> b!7575776 m!8133924))

(assert (=> b!7575776 m!8133922))

(assert (=> b!7575776 m!8133924))

(declare-fun m!8133926 () Bool)

(assert (=> b!7575776 m!8133926))

(assert (=> b!7575778 m!8133924))

(assert (=> b!7575778 m!8133924))

(declare-fun m!8133928 () Bool)

(assert (=> b!7575778 m!8133928))

(assert (=> b!7575781 m!8133920))

(assert (=> b!7575784 m!8133920))

(assert (=> d!2317936 m!8133896))

(assert (=> d!2317936 m!8133900))

(assert (=> b!7575777 m!8133924))

(assert (=> b!7575777 m!8133924))

(assert (=> b!7575777 m!8133928))

(declare-fun m!8133930 () Bool)

(assert (=> b!7575783 m!8133930))

(assert (=> b!7575592 d!2317936))

(declare-fun d!2317940 () Bool)

(assert (=> d!2317940 (= (matchR!9645 r!22341 s!13436) (matchRSpec!4368 r!22341 s!13436))))

(declare-fun lt!2652003 () Unit!167054)

(declare-fun choose!58574 (Regex!20049 List!72932) Unit!167054)

(assert (=> d!2317940 (= lt!2652003 (choose!58574 r!22341 s!13436))))

(assert (=> d!2317940 (validRegex!10477 r!22341)))

(assert (=> d!2317940 (= (mainMatchTheorem!4362 r!22341 s!13436) lt!2652003)))

(declare-fun bs!1940803 () Bool)

(assert (= bs!1940803 d!2317940))

(assert (=> bs!1940803 m!8133874))

(assert (=> bs!1940803 m!8133872))

(declare-fun m!8133944 () Bool)

(assert (=> bs!1940803 m!8133944))

(assert (=> bs!1940803 m!8133900))

(assert (=> b!7575592 d!2317940))

(declare-fun bm!694497 () Bool)

(declare-fun call!694503 () Bool)

(declare-fun c!1397554 () Bool)

(assert (=> bm!694497 (= call!694503 (validRegex!10477 (ite c!1397554 (regTwo!40611 r!22341) (regOne!40610 r!22341))))))

(declare-fun d!2317944 () Bool)

(declare-fun res!3034989 () Bool)

(declare-fun e!4509677 () Bool)

(assert (=> d!2317944 (=> res!3034989 e!4509677)))

(assert (=> d!2317944 (= res!3034989 ((_ is ElementMatch!20049) r!22341))))

(assert (=> d!2317944 (= (validRegex!10477 r!22341) e!4509677)))

(declare-fun b!7575819 () Bool)

(declare-fun e!4509678 () Bool)

(assert (=> b!7575819 (= e!4509677 e!4509678)))

(declare-fun c!1397553 () Bool)

(assert (=> b!7575819 (= c!1397553 ((_ is Star!20049) r!22341))))

(declare-fun b!7575820 () Bool)

(declare-fun e!4509683 () Bool)

(declare-fun call!694502 () Bool)

(assert (=> b!7575820 (= e!4509683 call!694502)))

(declare-fun b!7575821 () Bool)

(declare-fun e!4509679 () Bool)

(assert (=> b!7575821 (= e!4509679 e!4509683)))

(declare-fun res!3034990 () Bool)

(assert (=> b!7575821 (=> (not res!3034990) (not e!4509683))))

(assert (=> b!7575821 (= res!3034990 call!694503)))

(declare-fun b!7575822 () Bool)

(declare-fun res!3034986 () Bool)

(assert (=> b!7575822 (=> res!3034986 e!4509679)))

(assert (=> b!7575822 (= res!3034986 (not ((_ is Concat!28894) r!22341)))))

(declare-fun e!4509682 () Bool)

(assert (=> b!7575822 (= e!4509682 e!4509679)))

(declare-fun b!7575823 () Bool)

(declare-fun e!4509681 () Bool)

(assert (=> b!7575823 (= e!4509681 call!694503)))

(declare-fun b!7575824 () Bool)

(assert (=> b!7575824 (= e!4509678 e!4509682)))

(assert (=> b!7575824 (= c!1397554 ((_ is Union!20049) r!22341))))

(declare-fun bm!694498 () Bool)

(declare-fun call!694504 () Bool)

(assert (=> bm!694498 (= call!694504 (validRegex!10477 (ite c!1397553 (reg!20378 r!22341) (ite c!1397554 (regOne!40611 r!22341) (regTwo!40610 r!22341)))))))

(declare-fun b!7575825 () Bool)

(declare-fun e!4509680 () Bool)

(assert (=> b!7575825 (= e!4509680 call!694504)))

(declare-fun b!7575826 () Bool)

(assert (=> b!7575826 (= e!4509678 e!4509680)))

(declare-fun res!3034988 () Bool)

(assert (=> b!7575826 (= res!3034988 (not (nullable!8752 (reg!20378 r!22341))))))

(assert (=> b!7575826 (=> (not res!3034988) (not e!4509680))))

(declare-fun bm!694499 () Bool)

(assert (=> bm!694499 (= call!694502 call!694504)))

(declare-fun b!7575827 () Bool)

(declare-fun res!3034987 () Bool)

(assert (=> b!7575827 (=> (not res!3034987) (not e!4509681))))

(assert (=> b!7575827 (= res!3034987 call!694502)))

(assert (=> b!7575827 (= e!4509682 e!4509681)))

(assert (= (and d!2317944 (not res!3034989)) b!7575819))

(assert (= (and b!7575819 c!1397553) b!7575826))

(assert (= (and b!7575819 (not c!1397553)) b!7575824))

(assert (= (and b!7575826 res!3034988) b!7575825))

(assert (= (and b!7575824 c!1397554) b!7575827))

(assert (= (and b!7575824 (not c!1397554)) b!7575822))

(assert (= (and b!7575827 res!3034987) b!7575823))

(assert (= (and b!7575822 (not res!3034986)) b!7575821))

(assert (= (and b!7575821 res!3034990) b!7575820))

(assert (= (or b!7575823 b!7575821) bm!694497))

(assert (= (or b!7575827 b!7575820) bm!694499))

(assert (= (or b!7575825 bm!694499) bm!694498))

(declare-fun m!8133952 () Bool)

(assert (=> bm!694497 m!8133952))

(declare-fun m!8133954 () Bool)

(assert (=> bm!694498 m!8133954))

(declare-fun m!8133956 () Bool)

(assert (=> b!7575826 m!8133956))

(assert (=> start!731516 d!2317944))

(declare-fun bm!694500 () Bool)

(declare-fun call!694506 () Bool)

(declare-fun c!1397556 () Bool)

(assert (=> bm!694500 (= call!694506 (validRegex!10477 (ite c!1397556 (regTwo!40611 (regTwo!40610 r!22341)) (regOne!40610 (regTwo!40610 r!22341)))))))

(declare-fun d!2317954 () Bool)

(declare-fun res!3034994 () Bool)

(declare-fun e!4509684 () Bool)

(assert (=> d!2317954 (=> res!3034994 e!4509684)))

(assert (=> d!2317954 (= res!3034994 ((_ is ElementMatch!20049) (regTwo!40610 r!22341)))))

(assert (=> d!2317954 (= (validRegex!10477 (regTwo!40610 r!22341)) e!4509684)))

(declare-fun b!7575828 () Bool)

(declare-fun e!4509685 () Bool)

(assert (=> b!7575828 (= e!4509684 e!4509685)))

(declare-fun c!1397555 () Bool)

(assert (=> b!7575828 (= c!1397555 ((_ is Star!20049) (regTwo!40610 r!22341)))))

(declare-fun b!7575829 () Bool)

(declare-fun e!4509690 () Bool)

(declare-fun call!694505 () Bool)

(assert (=> b!7575829 (= e!4509690 call!694505)))

(declare-fun b!7575830 () Bool)

(declare-fun e!4509686 () Bool)

(assert (=> b!7575830 (= e!4509686 e!4509690)))

(declare-fun res!3034995 () Bool)

(assert (=> b!7575830 (=> (not res!3034995) (not e!4509690))))

(assert (=> b!7575830 (= res!3034995 call!694506)))

(declare-fun b!7575831 () Bool)

(declare-fun res!3034991 () Bool)

(assert (=> b!7575831 (=> res!3034991 e!4509686)))

(assert (=> b!7575831 (= res!3034991 (not ((_ is Concat!28894) (regTwo!40610 r!22341))))))

(declare-fun e!4509689 () Bool)

(assert (=> b!7575831 (= e!4509689 e!4509686)))

(declare-fun b!7575832 () Bool)

(declare-fun e!4509688 () Bool)

(assert (=> b!7575832 (= e!4509688 call!694506)))

(declare-fun b!7575833 () Bool)

(assert (=> b!7575833 (= e!4509685 e!4509689)))

(assert (=> b!7575833 (= c!1397556 ((_ is Union!20049) (regTwo!40610 r!22341)))))

(declare-fun bm!694501 () Bool)

(declare-fun call!694507 () Bool)

(assert (=> bm!694501 (= call!694507 (validRegex!10477 (ite c!1397555 (reg!20378 (regTwo!40610 r!22341)) (ite c!1397556 (regOne!40611 (regTwo!40610 r!22341)) (regTwo!40610 (regTwo!40610 r!22341))))))))

(declare-fun b!7575834 () Bool)

(declare-fun e!4509687 () Bool)

(assert (=> b!7575834 (= e!4509687 call!694507)))

(declare-fun b!7575835 () Bool)

(assert (=> b!7575835 (= e!4509685 e!4509687)))

(declare-fun res!3034993 () Bool)

(assert (=> b!7575835 (= res!3034993 (not (nullable!8752 (reg!20378 (regTwo!40610 r!22341)))))))

(assert (=> b!7575835 (=> (not res!3034993) (not e!4509687))))

(declare-fun bm!694502 () Bool)

(assert (=> bm!694502 (= call!694505 call!694507)))

(declare-fun b!7575836 () Bool)

(declare-fun res!3034992 () Bool)

(assert (=> b!7575836 (=> (not res!3034992) (not e!4509688))))

(assert (=> b!7575836 (= res!3034992 call!694505)))

(assert (=> b!7575836 (= e!4509689 e!4509688)))

(assert (= (and d!2317954 (not res!3034994)) b!7575828))

(assert (= (and b!7575828 c!1397555) b!7575835))

(assert (= (and b!7575828 (not c!1397555)) b!7575833))

(assert (= (and b!7575835 res!3034993) b!7575834))

(assert (= (and b!7575833 c!1397556) b!7575836))

(assert (= (and b!7575833 (not c!1397556)) b!7575831))

(assert (= (and b!7575836 res!3034992) b!7575832))

(assert (= (and b!7575831 (not res!3034991)) b!7575830))

(assert (= (and b!7575830 res!3034995) b!7575829))

(assert (= (or b!7575832 b!7575830) bm!694500))

(assert (= (or b!7575836 b!7575829) bm!694502))

(assert (= (or b!7575834 bm!694502) bm!694501))

(declare-fun m!8133958 () Bool)

(assert (=> bm!694500 m!8133958))

(declare-fun m!8133960 () Bool)

(assert (=> bm!694501 m!8133960))

(declare-fun m!8133962 () Bool)

(assert (=> b!7575835 m!8133962))

(assert (=> b!7575593 d!2317954))

(declare-fun d!2317956 () Bool)

(declare-fun lostCauseFct!491 (Regex!20049) Bool)

(assert (=> d!2317956 (= (lostCause!1825 r!22341) (lostCauseFct!491 r!22341))))

(declare-fun bs!1940807 () Bool)

(assert (= bs!1940807 d!2317956))

(declare-fun m!8133964 () Bool)

(assert (=> bs!1940807 m!8133964))

(assert (=> b!7575599 d!2317956))

(declare-fun d!2317958 () Bool)

(declare-fun choose!58578 (Int) Bool)

(assert (=> d!2317958 (= (Exists!4292 lambda!466678) (choose!58578 lambda!466678))))

(declare-fun bs!1940808 () Bool)

(assert (= bs!1940808 d!2317958))

(declare-fun m!8133966 () Bool)

(assert (=> bs!1940808 m!8133966))

(assert (=> b!7575594 d!2317958))

(declare-fun bs!1940813 () Bool)

(declare-fun d!2317960 () Bool)

(assert (= bs!1940813 (and d!2317960 b!7575594)))

(declare-fun lambda!466702 () Int)

(assert (=> bs!1940813 (= lambda!466702 lambda!466678)))

(assert (=> bs!1940813 (not (= lambda!466702 lambda!466679))))

(declare-fun bs!1940814 () Bool)

(assert (= bs!1940814 (and d!2317960 b!7575699)))

(assert (=> bs!1940814 (not (= lambda!466702 lambda!466688))))

(declare-fun bs!1940815 () Bool)

(assert (= bs!1940815 (and d!2317960 b!7575698)))

(assert (=> bs!1940815 (not (= lambda!466702 lambda!466689))))

(assert (=> d!2317960 true))

(assert (=> d!2317960 true))

(assert (=> d!2317960 true))

(declare-fun lambda!466703 () Int)

(assert (=> bs!1940813 (= lambda!466703 lambda!466679)))

(assert (=> bs!1940814 (not (= lambda!466703 lambda!466688))))

(declare-fun bs!1940816 () Bool)

(assert (= bs!1940816 d!2317960))

(assert (=> bs!1940816 (not (= lambda!466703 lambda!466702))))

(assert (=> bs!1940815 (= lambda!466703 lambda!466689)))

(assert (=> bs!1940813 (not (= lambda!466703 lambda!466678))))

(assert (=> d!2317960 true))

(assert (=> d!2317960 true))

(assert (=> d!2317960 true))

(assert (=> d!2317960 (= (Exists!4292 lambda!466702) (Exists!4292 lambda!466703))))

(declare-fun lt!2652012 () Unit!167054)

(declare-fun choose!58579 (Regex!20049 Regex!20049 List!72932) Unit!167054)

(assert (=> d!2317960 (= lt!2652012 (choose!58579 (regOne!40610 r!22341) (regTwo!40610 r!22341) s!13436))))

(assert (=> d!2317960 (validRegex!10477 (regOne!40610 r!22341))))

(assert (=> d!2317960 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2610 (regOne!40610 r!22341) (regTwo!40610 r!22341) s!13436) lt!2652012)))

(declare-fun m!8133976 () Bool)

(assert (=> bs!1940816 m!8133976))

(declare-fun m!8133978 () Bool)

(assert (=> bs!1940816 m!8133978))

(declare-fun m!8133980 () Bool)

(assert (=> bs!1940816 m!8133980))

(declare-fun m!8133982 () Bool)

(assert (=> bs!1940816 m!8133982))

(assert (=> b!7575594 d!2317960))

(declare-fun bs!1940822 () Bool)

(declare-fun d!2317964 () Bool)

(assert (= bs!1940822 (and d!2317964 b!7575594)))

(declare-fun lambda!466709 () Int)

(assert (=> bs!1940822 (not (= lambda!466709 lambda!466679))))

(declare-fun bs!1940823 () Bool)

(assert (= bs!1940823 (and d!2317964 b!7575699)))

(assert (=> bs!1940823 (not (= lambda!466709 lambda!466688))))

(declare-fun bs!1940824 () Bool)

(assert (= bs!1940824 (and d!2317964 d!2317960)))

(assert (=> bs!1940824 (= lambda!466709 lambda!466702)))

(declare-fun bs!1940825 () Bool)

(assert (= bs!1940825 (and d!2317964 b!7575698)))

(assert (=> bs!1940825 (not (= lambda!466709 lambda!466689))))

(assert (=> bs!1940824 (not (= lambda!466709 lambda!466703))))

(assert (=> bs!1940822 (= lambda!466709 lambda!466678)))

(assert (=> d!2317964 true))

(assert (=> d!2317964 true))

(assert (=> d!2317964 true))

(assert (=> d!2317964 (= (isDefined!13928 (findConcatSeparation!3342 (regOne!40610 r!22341) (regTwo!40610 r!22341) Nil!72808 s!13436 s!13436)) (Exists!4292 lambda!466709))))

(declare-fun lt!2652019 () Unit!167054)

(declare-fun choose!58580 (Regex!20049 Regex!20049 List!72932) Unit!167054)

(assert (=> d!2317964 (= lt!2652019 (choose!58580 (regOne!40610 r!22341) (regTwo!40610 r!22341) s!13436))))

(assert (=> d!2317964 (validRegex!10477 (regOne!40610 r!22341))))

(assert (=> d!2317964 (= (lemmaFindConcatSeparationEquivalentToExists!3100 (regOne!40610 r!22341) (regTwo!40610 r!22341) s!13436) lt!2652019)))

(declare-fun bs!1940826 () Bool)

(assert (= bs!1940826 d!2317964))

(assert (=> bs!1940826 m!8133886))

(declare-fun m!8134004 () Bool)

(assert (=> bs!1940826 m!8134004))

(declare-fun m!8134006 () Bool)

(assert (=> bs!1940826 m!8134006))

(assert (=> bs!1940826 m!8133982))

(declare-fun m!8134008 () Bool)

(assert (=> bs!1940826 m!8134008))

(assert (=> bs!1940826 m!8133886))

(assert (=> b!7575594 d!2317964))

(declare-fun d!2317970 () Bool)

(assert (=> d!2317970 (= (Exists!4292 lambda!466679) (choose!58578 lambda!466679))))

(declare-fun bs!1940827 () Bool)

(assert (= bs!1940827 d!2317970))

(declare-fun m!8134010 () Bool)

(assert (=> bs!1940827 m!8134010))

(assert (=> b!7575594 d!2317970))

(declare-fun b!7575929 () Bool)

(declare-fun e!4509745 () Bool)

(declare-fun lt!2652035 () Option!17282)

(assert (=> b!7575929 (= e!4509745 (not (isDefined!13928 lt!2652035)))))

(declare-fun b!7575930 () Bool)

(declare-fun e!4509744 () Option!17282)

(assert (=> b!7575930 (= e!4509744 (Some!17281 (tuple2!68893 Nil!72808 s!13436)))))

(declare-fun b!7575931 () Bool)

(declare-fun res!3035062 () Bool)

(declare-fun e!4509746 () Bool)

(assert (=> b!7575931 (=> (not res!3035062) (not e!4509746))))

(assert (=> b!7575931 (= res!3035062 (matchR!9645 (regTwo!40610 r!22341) (_2!37749 (get!25579 lt!2652035))))))

(declare-fun b!7575932 () Bool)

(declare-fun e!4509742 () Option!17282)

(assert (=> b!7575932 (= e!4509744 e!4509742)))

(declare-fun c!1397572 () Bool)

(assert (=> b!7575932 (= c!1397572 ((_ is Nil!72808) s!13436))))

(declare-fun b!7575933 () Bool)

(declare-fun res!3035058 () Bool)

(assert (=> b!7575933 (=> (not res!3035058) (not e!4509746))))

(assert (=> b!7575933 (= res!3035058 (matchR!9645 (regOne!40610 r!22341) (_1!37749 (get!25579 lt!2652035))))))

(declare-fun b!7575934 () Bool)

(assert (=> b!7575934 (= e!4509742 None!17281)))

(declare-fun b!7575935 () Bool)

(declare-fun ++!17502 (List!72932 List!72932) List!72932)

(assert (=> b!7575935 (= e!4509746 (= (++!17502 (_1!37749 (get!25579 lt!2652035)) (_2!37749 (get!25579 lt!2652035))) s!13436))))

(declare-fun b!7575936 () Bool)

(declare-fun e!4509743 () Bool)

(assert (=> b!7575936 (= e!4509743 (matchR!9645 (regTwo!40610 r!22341) s!13436))))

(declare-fun d!2317972 () Bool)

(assert (=> d!2317972 e!4509745))

(declare-fun res!3035059 () Bool)

(assert (=> d!2317972 (=> res!3035059 e!4509745)))

(assert (=> d!2317972 (= res!3035059 e!4509746)))

(declare-fun res!3035061 () Bool)

(assert (=> d!2317972 (=> (not res!3035061) (not e!4509746))))

(assert (=> d!2317972 (= res!3035061 (isDefined!13928 lt!2652035))))

(assert (=> d!2317972 (= lt!2652035 e!4509744)))

(declare-fun c!1397573 () Bool)

(assert (=> d!2317972 (= c!1397573 e!4509743)))

(declare-fun res!3035060 () Bool)

(assert (=> d!2317972 (=> (not res!3035060) (not e!4509743))))

(assert (=> d!2317972 (= res!3035060 (matchR!9645 (regOne!40610 r!22341) Nil!72808))))

(assert (=> d!2317972 (validRegex!10477 (regOne!40610 r!22341))))

(assert (=> d!2317972 (= (findConcatSeparation!3342 (regOne!40610 r!22341) (regTwo!40610 r!22341) Nil!72808 s!13436 s!13436) lt!2652035)))

(declare-fun b!7575937 () Bool)

(declare-fun lt!2652036 () Unit!167054)

(declare-fun lt!2652037 () Unit!167054)

(assert (=> b!7575937 (= lt!2652036 lt!2652037)))

(assert (=> b!7575937 (= (++!17502 (++!17502 Nil!72808 (Cons!72808 (h!79256 s!13436) Nil!72808)) (t!387667 s!13436)) s!13436)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3190 (List!72932 C!40424 List!72932 List!72932) Unit!167054)

(assert (=> b!7575937 (= lt!2652037 (lemmaMoveElementToOtherListKeepsConcatEq!3190 Nil!72808 (h!79256 s!13436) (t!387667 s!13436) s!13436))))

(assert (=> b!7575937 (= e!4509742 (findConcatSeparation!3342 (regOne!40610 r!22341) (regTwo!40610 r!22341) (++!17502 Nil!72808 (Cons!72808 (h!79256 s!13436) Nil!72808)) (t!387667 s!13436) s!13436))))

(assert (= (and d!2317972 res!3035060) b!7575936))

(assert (= (and d!2317972 c!1397573) b!7575930))

(assert (= (and d!2317972 (not c!1397573)) b!7575932))

(assert (= (and b!7575932 c!1397572) b!7575934))

(assert (= (and b!7575932 (not c!1397572)) b!7575937))

(assert (= (and d!2317972 res!3035061) b!7575933))

(assert (= (and b!7575933 res!3035058) b!7575931))

(assert (= (and b!7575931 res!3035062) b!7575935))

(assert (= (and d!2317972 (not res!3035059)) b!7575929))

(declare-fun m!8134044 () Bool)

(assert (=> b!7575929 m!8134044))

(declare-fun m!8134046 () Bool)

(assert (=> b!7575937 m!8134046))

(assert (=> b!7575937 m!8134046))

(declare-fun m!8134048 () Bool)

(assert (=> b!7575937 m!8134048))

(declare-fun m!8134050 () Bool)

(assert (=> b!7575937 m!8134050))

(assert (=> b!7575937 m!8134046))

(declare-fun m!8134052 () Bool)

(assert (=> b!7575937 m!8134052))

(declare-fun m!8134054 () Bool)

(assert (=> b!7575931 m!8134054))

(declare-fun m!8134056 () Bool)

(assert (=> b!7575931 m!8134056))

(declare-fun m!8134058 () Bool)

(assert (=> b!7575936 m!8134058))

(assert (=> b!7575933 m!8134054))

(declare-fun m!8134060 () Bool)

(assert (=> b!7575933 m!8134060))

(assert (=> d!2317972 m!8134044))

(declare-fun m!8134062 () Bool)

(assert (=> d!2317972 m!8134062))

(assert (=> d!2317972 m!8133982))

(assert (=> b!7575935 m!8134054))

(declare-fun m!8134064 () Bool)

(assert (=> b!7575935 m!8134064))

(assert (=> b!7575594 d!2317972))

(declare-fun d!2317980 () Bool)

(declare-fun isEmpty!41475 (Option!17282) Bool)

(assert (=> d!2317980 (= (isDefined!13928 lt!2651990) (not (isEmpty!41475 lt!2651990)))))

(declare-fun bs!1940830 () Bool)

(assert (= bs!1940830 d!2317980))

(declare-fun m!8134066 () Bool)

(assert (=> bs!1940830 m!8134066))

(assert (=> b!7575594 d!2317980))

(declare-fun d!2317982 () Bool)

(assert (=> d!2317982 (= (get!25579 lt!2651990) (v!54416 lt!2651990))))

(assert (=> b!7575594 d!2317982))

(declare-fun b!7575973 () Bool)

(declare-fun res!3035069 () Bool)

(declare-fun e!4509757 () Bool)

(assert (=> b!7575973 (=> res!3035069 e!4509757)))

(assert (=> b!7575973 (= res!3035069 (not ((_ is ElementMatch!20049) (regOne!40610 r!22341))))))

(declare-fun e!4509762 () Bool)

(assert (=> b!7575973 (= e!4509762 e!4509757)))

(declare-fun b!7575974 () Bool)

(declare-fun res!3035067 () Bool)

(assert (=> b!7575974 (=> res!3035067 e!4509757)))

(declare-fun e!4509763 () Bool)

(assert (=> b!7575974 (= res!3035067 e!4509763)))

(declare-fun res!3035068 () Bool)

(assert (=> b!7575974 (=> (not res!3035068) (not e!4509763))))

(declare-fun lt!2652038 () Bool)

(assert (=> b!7575974 (= res!3035068 lt!2652038)))

(declare-fun bm!694507 () Bool)

(declare-fun call!694512 () Bool)

(assert (=> bm!694507 (= call!694512 (isEmpty!41473 (_1!37749 (get!25579 lt!2651990))))))

(declare-fun b!7575975 () Bool)

(assert (=> b!7575975 (= e!4509762 (not lt!2652038))))

(declare-fun b!7575976 () Bool)

(declare-fun e!4509759 () Bool)

(assert (=> b!7575976 (= e!4509759 (matchR!9645 (derivativeStep!5782 (regOne!40610 r!22341) (head!15582 (_1!37749 (get!25579 lt!2651990)))) (tail!15122 (_1!37749 (get!25579 lt!2651990)))))))

(declare-fun b!7575977 () Bool)

(declare-fun res!3035064 () Bool)

(assert (=> b!7575977 (=> (not res!3035064) (not e!4509763))))

(assert (=> b!7575977 (= res!3035064 (isEmpty!41473 (tail!15122 (_1!37749 (get!25579 lt!2651990)))))))

(declare-fun b!7575978 () Bool)

(declare-fun res!3035065 () Bool)

(declare-fun e!4509761 () Bool)

(assert (=> b!7575978 (=> res!3035065 e!4509761)))

(assert (=> b!7575978 (= res!3035065 (not (isEmpty!41473 (tail!15122 (_1!37749 (get!25579 lt!2651990))))))))

(declare-fun b!7575979 () Bool)

(declare-fun res!3035063 () Bool)

(assert (=> b!7575979 (=> (not res!3035063) (not e!4509763))))

(assert (=> b!7575979 (= res!3035063 (not call!694512))))

(declare-fun b!7575980 () Bool)

(declare-fun e!4509758 () Bool)

(assert (=> b!7575980 (= e!4509757 e!4509758)))

(declare-fun res!3035070 () Bool)

(assert (=> b!7575980 (=> (not res!3035070) (not e!4509758))))

(assert (=> b!7575980 (= res!3035070 (not lt!2652038))))

(declare-fun b!7575981 () Bool)

(assert (=> b!7575981 (= e!4509761 (not (= (head!15582 (_1!37749 (get!25579 lt!2651990))) (c!1397500 (regOne!40610 r!22341)))))))

(declare-fun b!7575982 () Bool)

(declare-fun e!4509760 () Bool)

(assert (=> b!7575982 (= e!4509760 e!4509762)))

(declare-fun c!1397574 () Bool)

(assert (=> b!7575982 (= c!1397574 ((_ is EmptyLang!20049) (regOne!40610 r!22341)))))

(declare-fun b!7575983 () Bool)

(assert (=> b!7575983 (= e!4509759 (nullable!8752 (regOne!40610 r!22341)))))

(declare-fun d!2317984 () Bool)

(assert (=> d!2317984 e!4509760))

(declare-fun c!1397576 () Bool)

(assert (=> d!2317984 (= c!1397576 ((_ is EmptyExpr!20049) (regOne!40610 r!22341)))))

(assert (=> d!2317984 (= lt!2652038 e!4509759)))

(declare-fun c!1397575 () Bool)

(assert (=> d!2317984 (= c!1397575 (isEmpty!41473 (_1!37749 (get!25579 lt!2651990))))))

(assert (=> d!2317984 (validRegex!10477 (regOne!40610 r!22341))))

(assert (=> d!2317984 (= (matchR!9645 (regOne!40610 r!22341) (_1!37749 (get!25579 lt!2651990))) lt!2652038)))

(declare-fun b!7575984 () Bool)

(assert (=> b!7575984 (= e!4509763 (= (head!15582 (_1!37749 (get!25579 lt!2651990))) (c!1397500 (regOne!40610 r!22341))))))

(declare-fun b!7575985 () Bool)

(assert (=> b!7575985 (= e!4509758 e!4509761)))

(declare-fun res!3035066 () Bool)

(assert (=> b!7575985 (=> res!3035066 e!4509761)))

(assert (=> b!7575985 (= res!3035066 call!694512)))

(declare-fun b!7575986 () Bool)

(assert (=> b!7575986 (= e!4509760 (= lt!2652038 call!694512))))

(assert (= (and d!2317984 c!1397575) b!7575983))

(assert (= (and d!2317984 (not c!1397575)) b!7575976))

(assert (= (and d!2317984 c!1397576) b!7575986))

(assert (= (and d!2317984 (not c!1397576)) b!7575982))

(assert (= (and b!7575982 c!1397574) b!7575975))

(assert (= (and b!7575982 (not c!1397574)) b!7575973))

(assert (= (and b!7575973 (not res!3035069)) b!7575974))

(assert (= (and b!7575974 res!3035068) b!7575979))

(assert (= (and b!7575979 res!3035063) b!7575977))

(assert (= (and b!7575977 res!3035064) b!7575984))

(assert (= (and b!7575974 (not res!3035067)) b!7575980))

(assert (= (and b!7575980 res!3035070) b!7575985))

(assert (= (and b!7575985 (not res!3035066)) b!7575978))

(assert (= (and b!7575978 (not res!3035065)) b!7575981))

(assert (= (or b!7575986 b!7575985 b!7575979) bm!694507))

(declare-fun m!8134068 () Bool)

(assert (=> bm!694507 m!8134068))

(declare-fun m!8134070 () Bool)

(assert (=> b!7575976 m!8134070))

(assert (=> b!7575976 m!8134070))

(declare-fun m!8134072 () Bool)

(assert (=> b!7575976 m!8134072))

(declare-fun m!8134074 () Bool)

(assert (=> b!7575976 m!8134074))

(assert (=> b!7575976 m!8134072))

(assert (=> b!7575976 m!8134074))

(declare-fun m!8134076 () Bool)

(assert (=> b!7575976 m!8134076))

(assert (=> b!7575978 m!8134074))

(assert (=> b!7575978 m!8134074))

(declare-fun m!8134078 () Bool)

(assert (=> b!7575978 m!8134078))

(assert (=> b!7575981 m!8134070))

(assert (=> b!7575984 m!8134070))

(assert (=> d!2317984 m!8134068))

(assert (=> d!2317984 m!8133982))

(assert (=> b!7575977 m!8134074))

(assert (=> b!7575977 m!8134074))

(assert (=> b!7575977 m!8134078))

(declare-fun m!8134080 () Bool)

(assert (=> b!7575983 m!8134080))

(assert (=> b!7575594 d!2317984))

(declare-fun d!2317986 () Bool)

(assert (=> d!2317986 (= (isEmpty!41473 s!13436) ((_ is Nil!72808) s!13436))))

(assert (=> b!7575595 d!2317986))

(declare-fun b!7575998 () Bool)

(declare-fun e!4509766 () Bool)

(declare-fun tp!2207506 () Bool)

(declare-fun tp!2207504 () Bool)

(assert (=> b!7575998 (= e!4509766 (and tp!2207506 tp!2207504))))

(declare-fun b!7575999 () Bool)

(declare-fun tp!2207502 () Bool)

(assert (=> b!7575999 (= e!4509766 tp!2207502)))

(declare-fun b!7576000 () Bool)

(declare-fun tp!2207503 () Bool)

(declare-fun tp!2207505 () Bool)

(assert (=> b!7576000 (= e!4509766 (and tp!2207503 tp!2207505))))

(assert (=> b!7575591 (= tp!2207451 e!4509766)))

(declare-fun b!7575997 () Bool)

(assert (=> b!7575997 (= e!4509766 tp_is_empty!50453)))

(assert (= (and b!7575591 ((_ is ElementMatch!20049) (regOne!40611 r!22341))) b!7575997))

(assert (= (and b!7575591 ((_ is Concat!28894) (regOne!40611 r!22341))) b!7575998))

(assert (= (and b!7575591 ((_ is Star!20049) (regOne!40611 r!22341))) b!7575999))

(assert (= (and b!7575591 ((_ is Union!20049) (regOne!40611 r!22341))) b!7576000))

(declare-fun b!7576002 () Bool)

(declare-fun e!4509767 () Bool)

(declare-fun tp!2207511 () Bool)

(declare-fun tp!2207509 () Bool)

(assert (=> b!7576002 (= e!4509767 (and tp!2207511 tp!2207509))))

(declare-fun b!7576003 () Bool)

(declare-fun tp!2207507 () Bool)

(assert (=> b!7576003 (= e!4509767 tp!2207507)))

(declare-fun b!7576004 () Bool)

(declare-fun tp!2207508 () Bool)

(declare-fun tp!2207510 () Bool)

(assert (=> b!7576004 (= e!4509767 (and tp!2207508 tp!2207510))))

(assert (=> b!7575591 (= tp!2207453 e!4509767)))

(declare-fun b!7576001 () Bool)

(assert (=> b!7576001 (= e!4509767 tp_is_empty!50453)))

(assert (= (and b!7575591 ((_ is ElementMatch!20049) (regTwo!40611 r!22341))) b!7576001))

(assert (= (and b!7575591 ((_ is Concat!28894) (regTwo!40611 r!22341))) b!7576002))

(assert (= (and b!7575591 ((_ is Star!20049) (regTwo!40611 r!22341))) b!7576003))

(assert (= (and b!7575591 ((_ is Union!20049) (regTwo!40611 r!22341))) b!7576004))

(declare-fun b!7576006 () Bool)

(declare-fun e!4509768 () Bool)

(declare-fun tp!2207516 () Bool)

(declare-fun tp!2207514 () Bool)

(assert (=> b!7576006 (= e!4509768 (and tp!2207516 tp!2207514))))

(declare-fun b!7576007 () Bool)

(declare-fun tp!2207512 () Bool)

(assert (=> b!7576007 (= e!4509768 tp!2207512)))

(declare-fun b!7576008 () Bool)

(declare-fun tp!2207513 () Bool)

(declare-fun tp!2207515 () Bool)

(assert (=> b!7576008 (= e!4509768 (and tp!2207513 tp!2207515))))

(assert (=> b!7575596 (= tp!2207449 e!4509768)))

(declare-fun b!7576005 () Bool)

(assert (=> b!7576005 (= e!4509768 tp_is_empty!50453)))

(assert (= (and b!7575596 ((_ is ElementMatch!20049) (regOne!40610 r!22341))) b!7576005))

(assert (= (and b!7575596 ((_ is Concat!28894) (regOne!40610 r!22341))) b!7576006))

(assert (= (and b!7575596 ((_ is Star!20049) (regOne!40610 r!22341))) b!7576007))

(assert (= (and b!7575596 ((_ is Union!20049) (regOne!40610 r!22341))) b!7576008))

(declare-fun b!7576010 () Bool)

(declare-fun e!4509769 () Bool)

(declare-fun tp!2207521 () Bool)

(declare-fun tp!2207519 () Bool)

(assert (=> b!7576010 (= e!4509769 (and tp!2207521 tp!2207519))))

(declare-fun b!7576011 () Bool)

(declare-fun tp!2207517 () Bool)

(assert (=> b!7576011 (= e!4509769 tp!2207517)))

(declare-fun b!7576012 () Bool)

(declare-fun tp!2207518 () Bool)

(declare-fun tp!2207520 () Bool)

(assert (=> b!7576012 (= e!4509769 (and tp!2207518 tp!2207520))))

(assert (=> b!7575596 (= tp!2207450 e!4509769)))

(declare-fun b!7576009 () Bool)

(assert (=> b!7576009 (= e!4509769 tp_is_empty!50453)))

(assert (= (and b!7575596 ((_ is ElementMatch!20049) (regTwo!40610 r!22341))) b!7576009))

(assert (= (and b!7575596 ((_ is Concat!28894) (regTwo!40610 r!22341))) b!7576010))

(assert (= (and b!7575596 ((_ is Star!20049) (regTwo!40610 r!22341))) b!7576011))

(assert (= (and b!7575596 ((_ is Union!20049) (regTwo!40610 r!22341))) b!7576012))

(declare-fun b!7576017 () Bool)

(declare-fun e!4509772 () Bool)

(declare-fun tp!2207524 () Bool)

(assert (=> b!7576017 (= e!4509772 (and tp_is_empty!50453 tp!2207524))))

(assert (=> b!7575597 (= tp!2207452 e!4509772)))

(assert (= (and b!7575597 ((_ is Cons!72808) (t!387667 s!13436))) b!7576017))

(declare-fun b!7576019 () Bool)

(declare-fun e!4509773 () Bool)

(declare-fun tp!2207529 () Bool)

(declare-fun tp!2207527 () Bool)

(assert (=> b!7576019 (= e!4509773 (and tp!2207529 tp!2207527))))

(declare-fun b!7576020 () Bool)

(declare-fun tp!2207525 () Bool)

(assert (=> b!7576020 (= e!4509773 tp!2207525)))

(declare-fun b!7576021 () Bool)

(declare-fun tp!2207526 () Bool)

(declare-fun tp!2207528 () Bool)

(assert (=> b!7576021 (= e!4509773 (and tp!2207526 tp!2207528))))

(assert (=> b!7575598 (= tp!2207448 e!4509773)))

(declare-fun b!7576018 () Bool)

(assert (=> b!7576018 (= e!4509773 tp_is_empty!50453)))

(assert (= (and b!7575598 ((_ is ElementMatch!20049) (reg!20378 r!22341))) b!7576018))

(assert (= (and b!7575598 ((_ is Concat!28894) (reg!20378 r!22341))) b!7576019))

(assert (= (and b!7575598 ((_ is Star!20049) (reg!20378 r!22341))) b!7576020))

(assert (= (and b!7575598 ((_ is Union!20049) (reg!20378 r!22341))) b!7576021))

(check-sat (not b!7575777) (not bm!694500) (not b!7576020) (not bm!694489) (not b!7575998) (not d!2317960) (not d!2317970) (not d!2317936) (not b!7575977) (not bm!694477) (not d!2317958) (not b!7575783) (not bm!694507) (not d!2317940) (not d!2317956) (not b!7575835) (not b!7576007) (not b!7575976) (not b!7576021) (not b!7575696) (not bm!694497) (not b!7575784) (not b!7575978) (not b!7575984) (not b!7576004) (not b!7576006) (not b!7576000) (not b!7576012) (not b!7575933) (not b!7575936) (not b!7576017) (not bm!694478) (not b!7575781) tp_is_empty!50453 (not d!2317984) (not b!7576011) (not b!7575826) (not b!7575776) (not b!7576003) (not b!7575778) (not b!7575704) (not b!7575999) (not b!7576019) (not b!7575981) (not d!2317964) (not b!7576008) (not b!7575983) (not d!2317980) (not bm!694501) (not b!7576010) (not d!2317972) (not b!7576002) (not b!7575931) (not b!7575929) (not bm!694498) (not b!7575937) (not b!7575935))
(check-sat)
