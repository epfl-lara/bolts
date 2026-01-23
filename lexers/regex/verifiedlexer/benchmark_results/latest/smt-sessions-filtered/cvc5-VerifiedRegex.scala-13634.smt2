; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!731590 () Bool)

(assert start!731590)

(declare-fun b!7576614 () Bool)

(assert (=> b!7576614 true))

(assert (=> b!7576614 true))

(declare-fun lambda!466781 () Int)

(declare-fun lambda!466780 () Int)

(assert (=> b!7576614 (not (= lambda!466781 lambda!466780))))

(assert (=> b!7576614 true))

(assert (=> b!7576614 true))

(declare-fun b!7576607 () Bool)

(declare-fun e!4510004 () Bool)

(declare-fun tp!2207761 () Bool)

(assert (=> b!7576607 (= e!4510004 tp!2207761)))

(declare-fun b!7576608 () Bool)

(declare-fun e!4510005 () Bool)

(declare-fun e!4510006 () Bool)

(assert (=> b!7576608 (= e!4510005 (not e!4510006))))

(declare-fun res!3035421 () Bool)

(assert (=> b!7576608 (=> res!3035421 e!4510006)))

(declare-datatypes ((C!40450 0))(
  ( (C!40451 (val!30665 Int)) )
))
(declare-datatypes ((Regex!20062 0))(
  ( (ElementMatch!20062 (c!1397595 C!40450)) (Concat!28907 (regOne!40636 Regex!20062) (regTwo!40636 Regex!20062)) (EmptyExpr!20062) (Star!20062 (reg!20391 Regex!20062)) (EmptyLang!20062) (Union!20062 (regOne!40637 Regex!20062) (regTwo!40637 Regex!20062)) )
))
(declare-fun r!22341 () Regex!20062)

(declare-fun lt!2652248 () Bool)

(assert (=> b!7576608 (= res!3035421 (or (is-EmptyLang!20062 r!22341) (is-EmptyExpr!20062 r!22341) (is-ElementMatch!20062 r!22341) (is-Union!20062 r!22341) (is-Star!20062 r!22341) (not lt!2652248)))))

(declare-datatypes ((List!72945 0))(
  ( (Nil!72821) (Cons!72821 (h!79269 C!40450) (t!387680 List!72945)) )
))
(declare-fun s!13436 () List!72945)

(declare-fun matchRSpec!4379 (Regex!20062 List!72945) Bool)

(assert (=> b!7576608 (= lt!2652248 (matchRSpec!4379 r!22341 s!13436))))

(declare-fun matchR!9656 (Regex!20062 List!72945) Bool)

(assert (=> b!7576608 (= lt!2652248 (matchR!9656 r!22341 s!13436))))

(declare-datatypes ((Unit!167082 0))(
  ( (Unit!167083) )
))
(declare-fun lt!2652249 () Unit!167082)

(declare-fun mainMatchTheorem!4373 (Regex!20062 List!72945) Unit!167082)

(assert (=> b!7576608 (= lt!2652249 (mainMatchTheorem!4373 r!22341 s!13436))))

(declare-fun b!7576609 () Bool)

(declare-fun tp!2207762 () Bool)

(declare-fun tp!2207763 () Bool)

(assert (=> b!7576609 (= e!4510004 (and tp!2207762 tp!2207763))))

(declare-fun b!7576610 () Bool)

(declare-fun tp_is_empty!50479 () Bool)

(assert (=> b!7576610 (= e!4510004 tp_is_empty!50479)))

(declare-fun b!7576606 () Bool)

(declare-fun tp!2207759 () Bool)

(declare-fun tp!2207758 () Bool)

(assert (=> b!7576606 (= e!4510004 (and tp!2207759 tp!2207758))))

(declare-fun res!3035423 () Bool)

(assert (=> start!731590 (=> (not res!3035423) (not e!4510005))))

(declare-fun validRegex!10490 (Regex!20062) Bool)

(assert (=> start!731590 (= res!3035423 (validRegex!10490 r!22341))))

(assert (=> start!731590 e!4510005))

(assert (=> start!731590 e!4510004))

(declare-fun e!4510007 () Bool)

(assert (=> start!731590 e!4510007))

(declare-fun b!7576611 () Bool)

(declare-fun res!3035422 () Bool)

(assert (=> b!7576611 (=> (not res!3035422) (not e!4510005))))

(declare-fun isEmpty!41488 (List!72945) Bool)

(assert (=> b!7576611 (= res!3035422 (not (isEmpty!41488 s!13436)))))

(declare-fun b!7576612 () Bool)

(declare-fun tp!2207760 () Bool)

(assert (=> b!7576612 (= e!4510007 (and tp_is_empty!50479 tp!2207760))))

(declare-fun b!7576613 () Bool)

(declare-fun res!3035424 () Bool)

(assert (=> b!7576613 (=> (not res!3035424) (not e!4510005))))

(declare-fun lostCause!1838 (Regex!20062) Bool)

(assert (=> b!7576613 (= res!3035424 (lostCause!1838 r!22341))))

(declare-datatypes ((tuple2!68910 0))(
  ( (tuple2!68911 (_1!37758 List!72945) (_2!37758 List!72945)) )
))
(declare-datatypes ((Option!17291 0))(
  ( (None!17290) (Some!17290 (v!54425 tuple2!68910)) )
))
(declare-fun lt!2652251 () Option!17291)

(declare-fun get!25595 (Option!17291) tuple2!68910)

(assert (=> b!7576614 (= e!4510006 (matchR!9656 (regOne!40636 r!22341) (_1!37758 (get!25595 lt!2652251))))))

(declare-fun Exists!4301 (Int) Bool)

(assert (=> b!7576614 (= (Exists!4301 lambda!466780) (Exists!4301 lambda!466781))))

(declare-fun lt!2652250 () Unit!167082)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2619 (Regex!20062 Regex!20062 List!72945) Unit!167082)

(assert (=> b!7576614 (= lt!2652250 (lemmaExistCutMatchRandMatchRSpecEquivalent!2619 (regOne!40636 r!22341) (regTwo!40636 r!22341) s!13436))))

(declare-fun isDefined!13937 (Option!17291) Bool)

(assert (=> b!7576614 (= (isDefined!13937 lt!2652251) (Exists!4301 lambda!466780))))

(declare-fun findConcatSeparation!3351 (Regex!20062 Regex!20062 List!72945 List!72945 List!72945) Option!17291)

(assert (=> b!7576614 (= lt!2652251 (findConcatSeparation!3351 (regOne!40636 r!22341) (regTwo!40636 r!22341) Nil!72821 s!13436 s!13436))))

(declare-fun lt!2652247 () Unit!167082)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3109 (Regex!20062 Regex!20062 List!72945) Unit!167082)

(assert (=> b!7576614 (= lt!2652247 (lemmaFindConcatSeparationEquivalentToExists!3109 (regOne!40636 r!22341) (regTwo!40636 r!22341) s!13436))))

(assert (= (and start!731590 res!3035423) b!7576613))

(assert (= (and b!7576613 res!3035424) b!7576611))

(assert (= (and b!7576611 res!3035422) b!7576608))

(assert (= (and b!7576608 (not res!3035421)) b!7576614))

(assert (= (and start!731590 (is-ElementMatch!20062 r!22341)) b!7576610))

(assert (= (and start!731590 (is-Concat!28907 r!22341)) b!7576606))

(assert (= (and start!731590 (is-Star!20062 r!22341)) b!7576607))

(assert (= (and start!731590 (is-Union!20062 r!22341)) b!7576609))

(assert (= (and start!731590 (is-Cons!72821 s!13436)) b!7576612))

(declare-fun m!8134426 () Bool)

(assert (=> b!7576613 m!8134426))

(declare-fun m!8134428 () Bool)

(assert (=> b!7576614 m!8134428))

(assert (=> b!7576614 m!8134428))

(declare-fun m!8134430 () Bool)

(assert (=> b!7576614 m!8134430))

(declare-fun m!8134432 () Bool)

(assert (=> b!7576614 m!8134432))

(declare-fun m!8134434 () Bool)

(assert (=> b!7576614 m!8134434))

(declare-fun m!8134436 () Bool)

(assert (=> b!7576614 m!8134436))

(declare-fun m!8134438 () Bool)

(assert (=> b!7576614 m!8134438))

(declare-fun m!8134440 () Bool)

(assert (=> b!7576614 m!8134440))

(declare-fun m!8134442 () Bool)

(assert (=> b!7576614 m!8134442))

(declare-fun m!8134444 () Bool)

(assert (=> b!7576611 m!8134444))

(declare-fun m!8134446 () Bool)

(assert (=> start!731590 m!8134446))

(declare-fun m!8134448 () Bool)

(assert (=> b!7576608 m!8134448))

(declare-fun m!8134450 () Bool)

(assert (=> b!7576608 m!8134450))

(declare-fun m!8134452 () Bool)

(assert (=> b!7576608 m!8134452))

(push 1)

(assert (not b!7576607))

(assert (not b!7576612))

(assert (not b!7576608))

(assert (not b!7576611))

(assert (not b!7576614))

(assert (not b!7576613))

(assert (not start!731590))

(assert tp_is_empty!50479)

(assert (not b!7576606))

(assert (not b!7576609))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7576690 () Bool)

(declare-fun res!3035470 () Bool)

(declare-fun e!4510045 () Bool)

(assert (=> b!7576690 (=> (not res!3035470) (not e!4510045))))

(declare-fun tail!15124 (List!72945) List!72945)

(assert (=> b!7576690 (= res!3035470 (isEmpty!41488 (tail!15124 (_1!37758 (get!25595 lt!2652251)))))))

(declare-fun b!7576691 () Bool)

(declare-fun res!3035472 () Bool)

(assert (=> b!7576691 (=> (not res!3035472) (not e!4510045))))

(declare-fun call!694515 () Bool)

(assert (=> b!7576691 (= res!3035472 (not call!694515))))

(declare-fun d!2317995 () Bool)

(declare-fun e!4510041 () Bool)

(assert (=> d!2317995 e!4510041))

(declare-fun c!1397604 () Bool)

(assert (=> d!2317995 (= c!1397604 (is-EmptyExpr!20062 (regOne!40636 r!22341)))))

(declare-fun lt!2652269 () Bool)

(declare-fun e!4510044 () Bool)

(assert (=> d!2317995 (= lt!2652269 e!4510044)))

(declare-fun c!1397603 () Bool)

(assert (=> d!2317995 (= c!1397603 (isEmpty!41488 (_1!37758 (get!25595 lt!2652251))))))

(assert (=> d!2317995 (validRegex!10490 (regOne!40636 r!22341))))

(assert (=> d!2317995 (= (matchR!9656 (regOne!40636 r!22341) (_1!37758 (get!25595 lt!2652251))) lt!2652269)))

(declare-fun b!7576692 () Bool)

(declare-fun e!4510046 () Bool)

(assert (=> b!7576692 (= e!4510041 e!4510046)))

(declare-fun c!1397605 () Bool)

(assert (=> b!7576692 (= c!1397605 (is-EmptyLang!20062 (regOne!40636 r!22341)))))

(declare-fun b!7576693 () Bool)

(declare-fun head!15584 (List!72945) C!40450)

(assert (=> b!7576693 (= e!4510045 (= (head!15584 (_1!37758 (get!25595 lt!2652251))) (c!1397595 (regOne!40636 r!22341))))))

(declare-fun bm!694510 () Bool)

(assert (=> bm!694510 (= call!694515 (isEmpty!41488 (_1!37758 (get!25595 lt!2652251))))))

(declare-fun b!7576694 () Bool)

(declare-fun e!4510040 () Bool)

(declare-fun e!4510043 () Bool)

(assert (=> b!7576694 (= e!4510040 e!4510043)))

(declare-fun res!3035471 () Bool)

(assert (=> b!7576694 (=> res!3035471 e!4510043)))

(assert (=> b!7576694 (= res!3035471 call!694515)))

(declare-fun b!7576695 () Bool)

(assert (=> b!7576695 (= e!4510046 (not lt!2652269))))

(declare-fun b!7576696 () Bool)

(declare-fun e!4510042 () Bool)

(assert (=> b!7576696 (= e!4510042 e!4510040)))

(declare-fun res!3035468 () Bool)

(assert (=> b!7576696 (=> (not res!3035468) (not e!4510040))))

(assert (=> b!7576696 (= res!3035468 (not lt!2652269))))

(declare-fun b!7576697 () Bool)

(declare-fun res!3035467 () Bool)

(assert (=> b!7576697 (=> res!3035467 e!4510043)))

(assert (=> b!7576697 (= res!3035467 (not (isEmpty!41488 (tail!15124 (_1!37758 (get!25595 lt!2652251))))))))

(declare-fun b!7576698 () Bool)

(assert (=> b!7576698 (= e!4510041 (= lt!2652269 call!694515))))

(declare-fun b!7576699 () Bool)

(declare-fun res!3035466 () Bool)

(assert (=> b!7576699 (=> res!3035466 e!4510042)))

(assert (=> b!7576699 (= res!3035466 e!4510045)))

(declare-fun res!3035469 () Bool)

(assert (=> b!7576699 (=> (not res!3035469) (not e!4510045))))

(assert (=> b!7576699 (= res!3035469 lt!2652269)))

(declare-fun b!7576700 () Bool)

(declare-fun res!3035465 () Bool)

(assert (=> b!7576700 (=> res!3035465 e!4510042)))

(assert (=> b!7576700 (= res!3035465 (not (is-ElementMatch!20062 (regOne!40636 r!22341))))))

(assert (=> b!7576700 (= e!4510046 e!4510042)))

(declare-fun b!7576701 () Bool)

(declare-fun nullable!8755 (Regex!20062) Bool)

(assert (=> b!7576701 (= e!4510044 (nullable!8755 (regOne!40636 r!22341)))))

(declare-fun b!7576702 () Bool)

(declare-fun derivativeStep!5784 (Regex!20062 C!40450) Regex!20062)

(assert (=> b!7576702 (= e!4510044 (matchR!9656 (derivativeStep!5784 (regOne!40636 r!22341) (head!15584 (_1!37758 (get!25595 lt!2652251)))) (tail!15124 (_1!37758 (get!25595 lt!2652251)))))))

(declare-fun b!7576703 () Bool)

(assert (=> b!7576703 (= e!4510043 (not (= (head!15584 (_1!37758 (get!25595 lt!2652251))) (c!1397595 (regOne!40636 r!22341)))))))

(assert (= (and d!2317995 c!1397603) b!7576701))

(assert (= (and d!2317995 (not c!1397603)) b!7576702))

(assert (= (and d!2317995 c!1397604) b!7576698))

(assert (= (and d!2317995 (not c!1397604)) b!7576692))

(assert (= (and b!7576692 c!1397605) b!7576695))

(assert (= (and b!7576692 (not c!1397605)) b!7576700))

(assert (= (and b!7576700 (not res!3035465)) b!7576699))

(assert (= (and b!7576699 res!3035469) b!7576691))

(assert (= (and b!7576691 res!3035472) b!7576690))

(assert (= (and b!7576690 res!3035470) b!7576693))

(assert (= (and b!7576699 (not res!3035466)) b!7576696))

(assert (= (and b!7576696 res!3035468) b!7576694))

(assert (= (and b!7576694 (not res!3035471)) b!7576697))

(assert (= (and b!7576697 (not res!3035467)) b!7576703))

(assert (= (or b!7576698 b!7576691 b!7576694) bm!694510))

(declare-fun m!8134482 () Bool)

(assert (=> b!7576701 m!8134482))

(declare-fun m!8134484 () Bool)

(assert (=> b!7576690 m!8134484))

(assert (=> b!7576690 m!8134484))

(declare-fun m!8134486 () Bool)

(assert (=> b!7576690 m!8134486))

(declare-fun m!8134488 () Bool)

(assert (=> bm!694510 m!8134488))

(assert (=> d!2317995 m!8134488))

(declare-fun m!8134490 () Bool)

(assert (=> d!2317995 m!8134490))

(assert (=> b!7576697 m!8134484))

(assert (=> b!7576697 m!8134484))

(assert (=> b!7576697 m!8134486))

(declare-fun m!8134492 () Bool)

(assert (=> b!7576703 m!8134492))

(assert (=> b!7576693 m!8134492))

(assert (=> b!7576702 m!8134492))

(assert (=> b!7576702 m!8134492))

(declare-fun m!8134494 () Bool)

(assert (=> b!7576702 m!8134494))

(assert (=> b!7576702 m!8134484))

(assert (=> b!7576702 m!8134494))

(assert (=> b!7576702 m!8134484))

(declare-fun m!8134496 () Bool)

(assert (=> b!7576702 m!8134496))

(assert (=> b!7576614 d!2317995))

(declare-fun d!2317997 () Bool)

(declare-fun isEmpty!41490 (Option!17291) Bool)

(assert (=> d!2317997 (= (isDefined!13937 lt!2652251) (not (isEmpty!41490 lt!2652251)))))

(declare-fun bs!1940845 () Bool)

(assert (= bs!1940845 d!2317997))

(declare-fun m!8134498 () Bool)

(assert (=> bs!1940845 m!8134498))

(assert (=> b!7576614 d!2317997))

(declare-fun bs!1940847 () Bool)

(declare-fun d!2317999 () Bool)

(assert (= bs!1940847 (and d!2317999 b!7576614)))

(declare-fun lambda!466794 () Int)

(assert (=> bs!1940847 (= lambda!466794 lambda!466780)))

(assert (=> bs!1940847 (not (= lambda!466794 lambda!466781))))

(assert (=> d!2317999 true))

(assert (=> d!2317999 true))

(assert (=> d!2317999 true))

(declare-fun lambda!466795 () Int)

(assert (=> bs!1940847 (not (= lambda!466795 lambda!466780))))

(assert (=> bs!1940847 (= lambda!466795 lambda!466781)))

(declare-fun bs!1940848 () Bool)

(assert (= bs!1940848 d!2317999))

(assert (=> bs!1940848 (not (= lambda!466795 lambda!466794))))

(assert (=> d!2317999 true))

(assert (=> d!2317999 true))

(assert (=> d!2317999 true))

(assert (=> d!2317999 (= (Exists!4301 lambda!466794) (Exists!4301 lambda!466795))))

(declare-fun lt!2652272 () Unit!167082)

(declare-fun choose!58582 (Regex!20062 Regex!20062 List!72945) Unit!167082)

(assert (=> d!2317999 (= lt!2652272 (choose!58582 (regOne!40636 r!22341) (regTwo!40636 r!22341) s!13436))))

(assert (=> d!2317999 (validRegex!10490 (regOne!40636 r!22341))))

(assert (=> d!2317999 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2619 (regOne!40636 r!22341) (regTwo!40636 r!22341) s!13436) lt!2652272)))

(declare-fun m!8134502 () Bool)

(assert (=> bs!1940848 m!8134502))

(declare-fun m!8134504 () Bool)

(assert (=> bs!1940848 m!8134504))

(declare-fun m!8134506 () Bool)

(assert (=> bs!1940848 m!8134506))

(assert (=> bs!1940848 m!8134490))

(assert (=> b!7576614 d!2317999))

(declare-fun bs!1940849 () Bool)

(declare-fun d!2318005 () Bool)

(assert (= bs!1940849 (and d!2318005 b!7576614)))

(declare-fun lambda!466798 () Int)

(assert (=> bs!1940849 (= lambda!466798 lambda!466780)))

(assert (=> bs!1940849 (not (= lambda!466798 lambda!466781))))

(declare-fun bs!1940850 () Bool)

(assert (= bs!1940850 (and d!2318005 d!2317999)))

(assert (=> bs!1940850 (= lambda!466798 lambda!466794)))

(assert (=> bs!1940850 (not (= lambda!466798 lambda!466795))))

(assert (=> d!2318005 true))

(assert (=> d!2318005 true))

(assert (=> d!2318005 true))

(assert (=> d!2318005 (= (isDefined!13937 (findConcatSeparation!3351 (regOne!40636 r!22341) (regTwo!40636 r!22341) Nil!72821 s!13436 s!13436)) (Exists!4301 lambda!466798))))

(declare-fun lt!2652275 () Unit!167082)

(declare-fun choose!58583 (Regex!20062 Regex!20062 List!72945) Unit!167082)

(assert (=> d!2318005 (= lt!2652275 (choose!58583 (regOne!40636 r!22341) (regTwo!40636 r!22341) s!13436))))

(assert (=> d!2318005 (validRegex!10490 (regOne!40636 r!22341))))

(assert (=> d!2318005 (= (lemmaFindConcatSeparationEquivalentToExists!3109 (regOne!40636 r!22341) (regTwo!40636 r!22341) s!13436) lt!2652275)))

(declare-fun bs!1940851 () Bool)

(assert (= bs!1940851 d!2318005))

(assert (=> bs!1940851 m!8134438))

(assert (=> bs!1940851 m!8134490))

(declare-fun m!8134508 () Bool)

(assert (=> bs!1940851 m!8134508))

(declare-fun m!8134510 () Bool)

(assert (=> bs!1940851 m!8134510))

(assert (=> bs!1940851 m!8134438))

(declare-fun m!8134512 () Bool)

(assert (=> bs!1940851 m!8134512))

(assert (=> b!7576614 d!2318005))

(declare-fun d!2318007 () Bool)

(assert (=> d!2318007 (= (get!25595 lt!2652251) (v!54425 lt!2652251))))

(assert (=> b!7576614 d!2318007))

(declare-fun d!2318009 () Bool)

(declare-fun choose!58584 (Int) Bool)

(assert (=> d!2318009 (= (Exists!4301 lambda!466781) (choose!58584 lambda!466781))))

(declare-fun bs!1940852 () Bool)

(assert (= bs!1940852 d!2318009))

(declare-fun m!8134514 () Bool)

(assert (=> bs!1940852 m!8134514))

(assert (=> b!7576614 d!2318009))

(declare-fun d!2318011 () Bool)

(assert (=> d!2318011 (= (Exists!4301 lambda!466780) (choose!58584 lambda!466780))))

(declare-fun bs!1940853 () Bool)

(assert (= bs!1940853 d!2318011))

(declare-fun m!8134516 () Bool)

(assert (=> bs!1940853 m!8134516))

(assert (=> b!7576614 d!2318011))

(declare-fun b!7576766 () Bool)

(declare-fun e!4510084 () Option!17291)

(assert (=> b!7576766 (= e!4510084 (Some!17290 (tuple2!68911 Nil!72821 s!13436)))))

(declare-fun b!7576767 () Bool)

(declare-fun e!4510085 () Bool)

(assert (=> b!7576767 (= e!4510085 (matchR!9656 (regTwo!40636 r!22341) s!13436))))

(declare-fun b!7576768 () Bool)

(declare-fun e!4510083 () Option!17291)

(assert (=> b!7576768 (= e!4510083 None!17290)))

(declare-fun d!2318013 () Bool)

(declare-fun e!4510081 () Bool)

(assert (=> d!2318013 e!4510081))

(declare-fun res!3035512 () Bool)

(assert (=> d!2318013 (=> res!3035512 e!4510081)))

(declare-fun e!4510082 () Bool)

(assert (=> d!2318013 (= res!3035512 e!4510082)))

(declare-fun res!3035511 () Bool)

(assert (=> d!2318013 (=> (not res!3035511) (not e!4510082))))

(declare-fun lt!2652282 () Option!17291)

(assert (=> d!2318013 (= res!3035511 (isDefined!13937 lt!2652282))))

(assert (=> d!2318013 (= lt!2652282 e!4510084)))

(declare-fun c!1397618 () Bool)

(assert (=> d!2318013 (= c!1397618 e!4510085)))

(declare-fun res!3035514 () Bool)

(assert (=> d!2318013 (=> (not res!3035514) (not e!4510085))))

(assert (=> d!2318013 (= res!3035514 (matchR!9656 (regOne!40636 r!22341) Nil!72821))))

(assert (=> d!2318013 (validRegex!10490 (regOne!40636 r!22341))))

(assert (=> d!2318013 (= (findConcatSeparation!3351 (regOne!40636 r!22341) (regTwo!40636 r!22341) Nil!72821 s!13436 s!13436) lt!2652282)))

(declare-fun b!7576769 () Bool)

(declare-fun lt!2652284 () Unit!167082)

(declare-fun lt!2652283 () Unit!167082)

(assert (=> b!7576769 (= lt!2652284 lt!2652283)))

(declare-fun ++!17504 (List!72945 List!72945) List!72945)

(assert (=> b!7576769 (= (++!17504 (++!17504 Nil!72821 (Cons!72821 (h!79269 s!13436) Nil!72821)) (t!387680 s!13436)) s!13436)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3192 (List!72945 C!40450 List!72945 List!72945) Unit!167082)

(assert (=> b!7576769 (= lt!2652283 (lemmaMoveElementToOtherListKeepsConcatEq!3192 Nil!72821 (h!79269 s!13436) (t!387680 s!13436) s!13436))))

(assert (=> b!7576769 (= e!4510083 (findConcatSeparation!3351 (regOne!40636 r!22341) (regTwo!40636 r!22341) (++!17504 Nil!72821 (Cons!72821 (h!79269 s!13436) Nil!72821)) (t!387680 s!13436) s!13436))))

(declare-fun b!7576770 () Bool)

(assert (=> b!7576770 (= e!4510082 (= (++!17504 (_1!37758 (get!25595 lt!2652282)) (_2!37758 (get!25595 lt!2652282))) s!13436))))

(declare-fun b!7576771 () Bool)

(declare-fun res!3035513 () Bool)

(assert (=> b!7576771 (=> (not res!3035513) (not e!4510082))))

(assert (=> b!7576771 (= res!3035513 (matchR!9656 (regTwo!40636 r!22341) (_2!37758 (get!25595 lt!2652282))))))

(declare-fun b!7576772 () Bool)

(assert (=> b!7576772 (= e!4510084 e!4510083)))

(declare-fun c!1397619 () Bool)

(assert (=> b!7576772 (= c!1397619 (is-Nil!72821 s!13436))))

(declare-fun b!7576773 () Bool)

(declare-fun res!3035515 () Bool)

(assert (=> b!7576773 (=> (not res!3035515) (not e!4510082))))

(assert (=> b!7576773 (= res!3035515 (matchR!9656 (regOne!40636 r!22341) (_1!37758 (get!25595 lt!2652282))))))

(declare-fun b!7576774 () Bool)

(assert (=> b!7576774 (= e!4510081 (not (isDefined!13937 lt!2652282)))))

(assert (= (and d!2318013 res!3035514) b!7576767))

(assert (= (and d!2318013 c!1397618) b!7576766))

(assert (= (and d!2318013 (not c!1397618)) b!7576772))

(assert (= (and b!7576772 c!1397619) b!7576768))

(assert (= (and b!7576772 (not c!1397619)) b!7576769))

(assert (= (and d!2318013 res!3035511) b!7576773))

(assert (= (and b!7576773 res!3035515) b!7576771))

(assert (= (and b!7576771 res!3035513) b!7576770))

(assert (= (and d!2318013 (not res!3035512)) b!7576774))

(declare-fun m!8134518 () Bool)

(assert (=> b!7576770 m!8134518))

(declare-fun m!8134520 () Bool)

(assert (=> b!7576770 m!8134520))

(assert (=> b!7576773 m!8134518))

(declare-fun m!8134522 () Bool)

(assert (=> b!7576773 m!8134522))

(declare-fun m!8134524 () Bool)

(assert (=> b!7576769 m!8134524))

(assert (=> b!7576769 m!8134524))

(declare-fun m!8134526 () Bool)

(assert (=> b!7576769 m!8134526))

(declare-fun m!8134528 () Bool)

(assert (=> b!7576769 m!8134528))

(assert (=> b!7576769 m!8134524))

(declare-fun m!8134530 () Bool)

(assert (=> b!7576769 m!8134530))

(declare-fun m!8134532 () Bool)

(assert (=> d!2318013 m!8134532))

(declare-fun m!8134534 () Bool)

(assert (=> d!2318013 m!8134534))

(assert (=> d!2318013 m!8134490))

(assert (=> b!7576771 m!8134518))

(declare-fun m!8134536 () Bool)

(assert (=> b!7576771 m!8134536))

(assert (=> b!7576774 m!8134532))

(declare-fun m!8134538 () Bool)

(assert (=> b!7576767 m!8134538))

(assert (=> b!7576614 d!2318013))

(declare-fun bs!1940857 () Bool)

(declare-fun b!7576825 () Bool)

(assert (= bs!1940857 (and b!7576825 d!2318005)))

(declare-fun lambda!466809 () Int)

(assert (=> bs!1940857 (not (= lambda!466809 lambda!466798))))

(declare-fun bs!1940858 () Bool)

(assert (= bs!1940858 (and b!7576825 b!7576614)))

(assert (=> bs!1940858 (not (= lambda!466809 lambda!466781))))

(assert (=> bs!1940858 (not (= lambda!466809 lambda!466780))))

(declare-fun bs!1940859 () Bool)

(assert (= bs!1940859 (and b!7576825 d!2317999)))

(assert (=> bs!1940859 (not (= lambda!466809 lambda!466795))))

(assert (=> bs!1940859 (not (= lambda!466809 lambda!466794))))

(assert (=> b!7576825 true))

(assert (=> b!7576825 true))

(declare-fun bs!1940860 () Bool)

(declare-fun b!7576821 () Bool)

(assert (= bs!1940860 (and b!7576821 d!2318005)))

(declare-fun lambda!466810 () Int)

(assert (=> bs!1940860 (not (= lambda!466810 lambda!466798))))

(declare-fun bs!1940861 () Bool)

(assert (= bs!1940861 (and b!7576821 b!7576614)))

(assert (=> bs!1940861 (= lambda!466810 lambda!466781)))

(declare-fun bs!1940862 () Bool)

(assert (= bs!1940862 (and b!7576821 b!7576825)))

(assert (=> bs!1940862 (not (= lambda!466810 lambda!466809))))

(assert (=> bs!1940861 (not (= lambda!466810 lambda!466780))))

(declare-fun bs!1940863 () Bool)

(assert (= bs!1940863 (and b!7576821 d!2317999)))

(assert (=> bs!1940863 (= lambda!466810 lambda!466795)))

(assert (=> bs!1940863 (not (= lambda!466810 lambda!466794))))

(assert (=> b!7576821 true))

(assert (=> b!7576821 true))

(declare-fun bm!694521 () Bool)

(declare-fun call!694526 () Bool)

(declare-fun c!1397634 () Bool)

(assert (=> bm!694521 (= call!694526 (Exists!4301 (ite c!1397634 lambda!466809 lambda!466810)))))

(declare-fun b!7576818 () Bool)

(declare-fun e!4510115 () Bool)

(declare-fun call!694527 () Bool)

(assert (=> b!7576818 (= e!4510115 call!694527)))

(declare-fun b!7576819 () Bool)

(declare-fun c!1397635 () Bool)

(assert (=> b!7576819 (= c!1397635 (is-ElementMatch!20062 r!22341))))

(declare-fun e!4510117 () Bool)

(declare-fun e!4510116 () Bool)

(assert (=> b!7576819 (= e!4510117 e!4510116)))

(declare-fun b!7576820 () Bool)

(declare-fun e!4510113 () Bool)

(assert (=> b!7576820 (= e!4510113 (matchRSpec!4379 (regTwo!40637 r!22341) s!13436))))

(declare-fun d!2318015 () Bool)

(declare-fun c!1397632 () Bool)

(assert (=> d!2318015 (= c!1397632 (is-EmptyExpr!20062 r!22341))))

(assert (=> d!2318015 (= (matchRSpec!4379 r!22341 s!13436) e!4510115)))

(declare-fun bm!694522 () Bool)

(assert (=> bm!694522 (= call!694527 (isEmpty!41488 s!13436))))

(declare-fun e!4510114 () Bool)

(assert (=> b!7576821 (= e!4510114 call!694526)))

(declare-fun b!7576822 () Bool)

(declare-fun e!4510111 () Bool)

(assert (=> b!7576822 (= e!4510111 e!4510114)))

(assert (=> b!7576822 (= c!1397634 (is-Star!20062 r!22341))))

(declare-fun b!7576823 () Bool)

(declare-fun c!1397633 () Bool)

(assert (=> b!7576823 (= c!1397633 (is-Union!20062 r!22341))))

(assert (=> b!7576823 (= e!4510116 e!4510111)))

(declare-fun b!7576824 () Bool)

(assert (=> b!7576824 (= e!4510115 e!4510117)))

(declare-fun res!3035535 () Bool)

(assert (=> b!7576824 (= res!3035535 (not (is-EmptyLang!20062 r!22341)))))

(assert (=> b!7576824 (=> (not res!3035535) (not e!4510117))))

(declare-fun e!4510112 () Bool)

(assert (=> b!7576825 (= e!4510112 call!694526)))

(declare-fun b!7576826 () Bool)

(assert (=> b!7576826 (= e!4510116 (= s!13436 (Cons!72821 (c!1397595 r!22341) Nil!72821)))))

(declare-fun b!7576827 () Bool)

(declare-fun res!3035537 () Bool)

(assert (=> b!7576827 (=> res!3035537 e!4510112)))

(assert (=> b!7576827 (= res!3035537 call!694527)))

(assert (=> b!7576827 (= e!4510114 e!4510112)))

(declare-fun b!7576828 () Bool)

(assert (=> b!7576828 (= e!4510111 e!4510113)))

(declare-fun res!3035536 () Bool)

(assert (=> b!7576828 (= res!3035536 (matchRSpec!4379 (regOne!40637 r!22341) s!13436))))

(assert (=> b!7576828 (=> res!3035536 e!4510113)))

(assert (= (and d!2318015 c!1397632) b!7576818))

(assert (= (and d!2318015 (not c!1397632)) b!7576824))

(assert (= (and b!7576824 res!3035535) b!7576819))

(assert (= (and b!7576819 c!1397635) b!7576826))

(assert (= (and b!7576819 (not c!1397635)) b!7576823))

(assert (= (and b!7576823 c!1397633) b!7576828))

(assert (= (and b!7576823 (not c!1397633)) b!7576822))

(assert (= (and b!7576828 (not res!3035536)) b!7576820))

(assert (= (and b!7576822 c!1397634) b!7576827))

(assert (= (and b!7576822 (not c!1397634)) b!7576821))

(assert (= (and b!7576827 (not res!3035537)) b!7576825))

(assert (= (or b!7576825 b!7576821) bm!694521))

(assert (= (or b!7576818 b!7576827) bm!694522))

(declare-fun m!8134546 () Bool)

(assert (=> bm!694521 m!8134546))

(declare-fun m!8134548 () Bool)

(assert (=> b!7576820 m!8134548))

(assert (=> bm!694522 m!8134444))

(declare-fun m!8134550 () Bool)

(assert (=> b!7576828 m!8134550))

(assert (=> b!7576608 d!2318015))

(declare-fun b!7576829 () Bool)

(declare-fun res!3035543 () Bool)

(declare-fun e!4510123 () Bool)

(assert (=> b!7576829 (=> (not res!3035543) (not e!4510123))))

(assert (=> b!7576829 (= res!3035543 (isEmpty!41488 (tail!15124 s!13436)))))

(declare-fun b!7576830 () Bool)

(declare-fun res!3035545 () Bool)

(assert (=> b!7576830 (=> (not res!3035545) (not e!4510123))))

(declare-fun call!694528 () Bool)

(assert (=> b!7576830 (= res!3035545 (not call!694528))))

(declare-fun d!2318019 () Bool)

(declare-fun e!4510119 () Bool)

(assert (=> d!2318019 e!4510119))

(declare-fun c!1397637 () Bool)

(assert (=> d!2318019 (= c!1397637 (is-EmptyExpr!20062 r!22341))))

(declare-fun lt!2652285 () Bool)

(declare-fun e!4510122 () Bool)

(assert (=> d!2318019 (= lt!2652285 e!4510122)))

(declare-fun c!1397636 () Bool)

(assert (=> d!2318019 (= c!1397636 (isEmpty!41488 s!13436))))

(assert (=> d!2318019 (validRegex!10490 r!22341)))

(assert (=> d!2318019 (= (matchR!9656 r!22341 s!13436) lt!2652285)))

(declare-fun b!7576831 () Bool)

(declare-fun e!4510124 () Bool)

(assert (=> b!7576831 (= e!4510119 e!4510124)))

(declare-fun c!1397638 () Bool)

(assert (=> b!7576831 (= c!1397638 (is-EmptyLang!20062 r!22341))))

(declare-fun b!7576832 () Bool)

(assert (=> b!7576832 (= e!4510123 (= (head!15584 s!13436) (c!1397595 r!22341)))))

(declare-fun bm!694523 () Bool)

(assert (=> bm!694523 (= call!694528 (isEmpty!41488 s!13436))))

(declare-fun b!7576833 () Bool)

(declare-fun e!4510118 () Bool)

(declare-fun e!4510121 () Bool)

(assert (=> b!7576833 (= e!4510118 e!4510121)))

(declare-fun res!3035544 () Bool)

(assert (=> b!7576833 (=> res!3035544 e!4510121)))

(assert (=> b!7576833 (= res!3035544 call!694528)))

(declare-fun b!7576834 () Bool)

(assert (=> b!7576834 (= e!4510124 (not lt!2652285))))

(declare-fun b!7576835 () Bool)

(declare-fun e!4510120 () Bool)

(assert (=> b!7576835 (= e!4510120 e!4510118)))

(declare-fun res!3035541 () Bool)

(assert (=> b!7576835 (=> (not res!3035541) (not e!4510118))))

(assert (=> b!7576835 (= res!3035541 (not lt!2652285))))

(declare-fun b!7576836 () Bool)

(declare-fun res!3035540 () Bool)

(assert (=> b!7576836 (=> res!3035540 e!4510121)))

(assert (=> b!7576836 (= res!3035540 (not (isEmpty!41488 (tail!15124 s!13436))))))

(declare-fun b!7576837 () Bool)

(assert (=> b!7576837 (= e!4510119 (= lt!2652285 call!694528))))

(declare-fun b!7576838 () Bool)

(declare-fun res!3035539 () Bool)

(assert (=> b!7576838 (=> res!3035539 e!4510120)))

(assert (=> b!7576838 (= res!3035539 e!4510123)))

(declare-fun res!3035542 () Bool)

(assert (=> b!7576838 (=> (not res!3035542) (not e!4510123))))

(assert (=> b!7576838 (= res!3035542 lt!2652285)))

(declare-fun b!7576839 () Bool)

(declare-fun res!3035538 () Bool)

(assert (=> b!7576839 (=> res!3035538 e!4510120)))

(assert (=> b!7576839 (= res!3035538 (not (is-ElementMatch!20062 r!22341)))))

(assert (=> b!7576839 (= e!4510124 e!4510120)))

(declare-fun b!7576840 () Bool)

(assert (=> b!7576840 (= e!4510122 (nullable!8755 r!22341))))

(declare-fun b!7576841 () Bool)

(assert (=> b!7576841 (= e!4510122 (matchR!9656 (derivativeStep!5784 r!22341 (head!15584 s!13436)) (tail!15124 s!13436)))))

(declare-fun b!7576842 () Bool)

(assert (=> b!7576842 (= e!4510121 (not (= (head!15584 s!13436) (c!1397595 r!22341))))))

(assert (= (and d!2318019 c!1397636) b!7576840))

(assert (= (and d!2318019 (not c!1397636)) b!7576841))

(assert (= (and d!2318019 c!1397637) b!7576837))

(assert (= (and d!2318019 (not c!1397637)) b!7576831))

(assert (= (and b!7576831 c!1397638) b!7576834))

(assert (= (and b!7576831 (not c!1397638)) b!7576839))

(assert (= (and b!7576839 (not res!3035538)) b!7576838))

(assert (= (and b!7576838 res!3035542) b!7576830))

(assert (= (and b!7576830 res!3035545) b!7576829))

(assert (= (and b!7576829 res!3035543) b!7576832))

(assert (= (and b!7576838 (not res!3035539)) b!7576835))

(assert (= (and b!7576835 res!3035541) b!7576833))

(assert (= (and b!7576833 (not res!3035544)) b!7576836))

(assert (= (and b!7576836 (not res!3035540)) b!7576842))

(assert (= (or b!7576837 b!7576830 b!7576833) bm!694523))

(declare-fun m!8134552 () Bool)

(assert (=> b!7576840 m!8134552))

(declare-fun m!8134554 () Bool)

(assert (=> b!7576829 m!8134554))

(assert (=> b!7576829 m!8134554))

(declare-fun m!8134556 () Bool)

(assert (=> b!7576829 m!8134556))

(assert (=> bm!694523 m!8134444))

(assert (=> d!2318019 m!8134444))

(assert (=> d!2318019 m!8134446))

(assert (=> b!7576836 m!8134554))

(assert (=> b!7576836 m!8134554))

(assert (=> b!7576836 m!8134556))

(declare-fun m!8134558 () Bool)

(assert (=> b!7576842 m!8134558))

(assert (=> b!7576832 m!8134558))

(assert (=> b!7576841 m!8134558))

(assert (=> b!7576841 m!8134558))

(declare-fun m!8134560 () Bool)

(assert (=> b!7576841 m!8134560))

(assert (=> b!7576841 m!8134554))

(assert (=> b!7576841 m!8134560))

(assert (=> b!7576841 m!8134554))

(declare-fun m!8134562 () Bool)

(assert (=> b!7576841 m!8134562))

(assert (=> b!7576608 d!2318019))

(declare-fun d!2318021 () Bool)

(assert (=> d!2318021 (= (matchR!9656 r!22341 s!13436) (matchRSpec!4379 r!22341 s!13436))))

(declare-fun lt!2652288 () Unit!167082)

(declare-fun choose!58585 (Regex!20062 List!72945) Unit!167082)

(assert (=> d!2318021 (= lt!2652288 (choose!58585 r!22341 s!13436))))

(assert (=> d!2318021 (validRegex!10490 r!22341)))

(assert (=> d!2318021 (= (mainMatchTheorem!4373 r!22341 s!13436) lt!2652288)))

(declare-fun bs!1940864 () Bool)

(assert (= bs!1940864 d!2318021))

(assert (=> bs!1940864 m!8134450))

(assert (=> bs!1940864 m!8134448))

(declare-fun m!8134564 () Bool)

(assert (=> bs!1940864 m!8134564))

(assert (=> bs!1940864 m!8134446))

(assert (=> b!7576608 d!2318021))

(declare-fun d!2318023 () Bool)

(declare-fun lostCauseFct!492 (Regex!20062) Bool)

(assert (=> d!2318023 (= (lostCause!1838 r!22341) (lostCauseFct!492 r!22341))))

(declare-fun bs!1940865 () Bool)

(assert (= bs!1940865 d!2318023))

(declare-fun m!8134566 () Bool)

(assert (=> bs!1940865 m!8134566))

(assert (=> b!7576613 d!2318023))

(declare-fun d!2318025 () Bool)

(assert (=> d!2318025 (= (isEmpty!41488 s!13436) (is-Nil!72821 s!13436))))

(assert (=> b!7576611 d!2318025))

(declare-fun c!1397645 () Bool)

(declare-fun call!694536 () Bool)

(declare-fun bm!694530 () Bool)

(declare-fun c!1397646 () Bool)

(assert (=> bm!694530 (= call!694536 (validRegex!10490 (ite c!1397645 (reg!20391 r!22341) (ite c!1397646 (regOne!40637 r!22341) (regTwo!40636 r!22341)))))))

(declare-fun b!7576865 () Bool)

(declare-fun res!3035558 () Bool)

(declare-fun e!4510143 () Bool)

(assert (=> b!7576865 (=> res!3035558 e!4510143)))

(assert (=> b!7576865 (= res!3035558 (not (is-Concat!28907 r!22341)))))

(declare-fun e!4510146 () Bool)

(assert (=> b!7576865 (= e!4510146 e!4510143)))

(declare-fun b!7576866 () Bool)

(declare-fun e!4510142 () Bool)

(declare-fun call!694535 () Bool)

(assert (=> b!7576866 (= e!4510142 call!694535)))

(declare-fun b!7576867 () Bool)

(declare-fun e!4510147 () Bool)

(declare-fun call!694537 () Bool)

(assert (=> b!7576867 (= e!4510147 call!694537)))

(declare-fun b!7576868 () Bool)

(declare-fun e!4510145 () Bool)

(assert (=> b!7576868 (= e!4510145 call!694536)))

(declare-fun b!7576869 () Bool)

(declare-fun e!4510144 () Bool)

(declare-fun e!4510141 () Bool)

(assert (=> b!7576869 (= e!4510144 e!4510141)))

(assert (=> b!7576869 (= c!1397645 (is-Star!20062 r!22341))))

(declare-fun d!2318027 () Bool)

(declare-fun res!3035557 () Bool)

(assert (=> d!2318027 (=> res!3035557 e!4510144)))

(assert (=> d!2318027 (= res!3035557 (is-ElementMatch!20062 r!22341))))

(assert (=> d!2318027 (= (validRegex!10490 r!22341) e!4510144)))

(declare-fun b!7576870 () Bool)

(assert (=> b!7576870 (= e!4510143 e!4510147)))

(declare-fun res!3035560 () Bool)

(assert (=> b!7576870 (=> (not res!3035560) (not e!4510147))))

(assert (=> b!7576870 (= res!3035560 call!694535)))

(declare-fun b!7576871 () Bool)

(assert (=> b!7576871 (= e!4510141 e!4510145)))

(declare-fun res!3035556 () Bool)

(assert (=> b!7576871 (= res!3035556 (not (nullable!8755 (reg!20391 r!22341))))))

(assert (=> b!7576871 (=> (not res!3035556) (not e!4510145))))

(declare-fun bm!694531 () Bool)

(assert (=> bm!694531 (= call!694537 call!694536)))

(declare-fun b!7576872 () Bool)

(assert (=> b!7576872 (= e!4510141 e!4510146)))

(assert (=> b!7576872 (= c!1397646 (is-Union!20062 r!22341))))

(declare-fun bm!694532 () Bool)

(assert (=> bm!694532 (= call!694535 (validRegex!10490 (ite c!1397646 (regTwo!40637 r!22341) (regOne!40636 r!22341))))))

(declare-fun b!7576873 () Bool)

(declare-fun res!3035559 () Bool)

(assert (=> b!7576873 (=> (not res!3035559) (not e!4510142))))

(assert (=> b!7576873 (= res!3035559 call!694537)))

(assert (=> b!7576873 (= e!4510146 e!4510142)))

(assert (= (and d!2318027 (not res!3035557)) b!7576869))

(assert (= (and b!7576869 c!1397645) b!7576871))

(assert (= (and b!7576869 (not c!1397645)) b!7576872))

(assert (= (and b!7576871 res!3035556) b!7576868))

(assert (= (and b!7576872 c!1397646) b!7576873))

(assert (= (and b!7576872 (not c!1397646)) b!7576865))

(assert (= (and b!7576873 res!3035559) b!7576866))

(assert (= (and b!7576865 (not res!3035558)) b!7576870))

(assert (= (and b!7576870 res!3035560) b!7576867))

(assert (= (or b!7576866 b!7576870) bm!694532))

(assert (= (or b!7576873 b!7576867) bm!694531))

(assert (= (or b!7576868 bm!694531) bm!694530))

(declare-fun m!8134568 () Bool)

(assert (=> bm!694530 m!8134568))

(declare-fun m!8134570 () Bool)

(assert (=> b!7576871 m!8134570))

(declare-fun m!8134572 () Bool)

(assert (=> bm!694532 m!8134572))

(assert (=> start!731590 d!2318027))

(declare-fun b!7576901 () Bool)

(declare-fun e!4510158 () Bool)

(declare-fun tp!2207794 () Bool)

(declare-fun tp!2207796 () Bool)

(assert (=> b!7576901 (= e!4510158 (and tp!2207794 tp!2207796))))

(assert (=> b!7576609 (= tp!2207762 e!4510158)))

(declare-fun b!7576900 () Bool)

(declare-fun tp!2207793 () Bool)

(assert (=> b!7576900 (= e!4510158 tp!2207793)))

(declare-fun b!7576899 () Bool)

(declare-fun tp!2207795 () Bool)

(declare-fun tp!2207792 () Bool)

(assert (=> b!7576899 (= e!4510158 (and tp!2207795 tp!2207792))))

(declare-fun b!7576898 () Bool)

(assert (=> b!7576898 (= e!4510158 tp_is_empty!50479)))

(assert (= (and b!7576609 (is-ElementMatch!20062 (regOne!40637 r!22341))) b!7576898))

(assert (= (and b!7576609 (is-Concat!28907 (regOne!40637 r!22341))) b!7576899))

(assert (= (and b!7576609 (is-Star!20062 (regOne!40637 r!22341))) b!7576900))

(assert (= (and b!7576609 (is-Union!20062 (regOne!40637 r!22341))) b!7576901))

(declare-fun b!7576911 () Bool)

(declare-fun e!4510161 () Bool)

(declare-fun tp!2207799 () Bool)

(declare-fun tp!2207801 () Bool)

(assert (=> b!7576911 (= e!4510161 (and tp!2207799 tp!2207801))))

(assert (=> b!7576609 (= tp!2207763 e!4510161)))

(declare-fun b!7576910 () Bool)

(declare-fun tp!2207798 () Bool)

(assert (=> b!7576910 (= e!4510161 tp!2207798)))

(declare-fun b!7576909 () Bool)

(declare-fun tp!2207800 () Bool)

(declare-fun tp!2207797 () Bool)

(assert (=> b!7576909 (= e!4510161 (and tp!2207800 tp!2207797))))

(declare-fun b!7576907 () Bool)

(assert (=> b!7576907 (= e!4510161 tp_is_empty!50479)))

(assert (= (and b!7576609 (is-ElementMatch!20062 (regTwo!40637 r!22341))) b!7576907))

(assert (= (and b!7576609 (is-Concat!28907 (regTwo!40637 r!22341))) b!7576909))

(assert (= (and b!7576609 (is-Star!20062 (regTwo!40637 r!22341))) b!7576910))

(assert (= (and b!7576609 (is-Union!20062 (regTwo!40637 r!22341))) b!7576911))

(declare-fun b!7576917 () Bool)

(declare-fun e!4510164 () Bool)

(declare-fun tp!2207804 () Bool)

(declare-fun tp!2207806 () Bool)

(assert (=> b!7576917 (= e!4510164 (and tp!2207804 tp!2207806))))

(assert (=> b!7576607 (= tp!2207761 e!4510164)))

(declare-fun b!7576916 () Bool)

(declare-fun tp!2207803 () Bool)

(assert (=> b!7576916 (= e!4510164 tp!2207803)))

(declare-fun b!7576915 () Bool)

(declare-fun tp!2207805 () Bool)

(declare-fun tp!2207802 () Bool)

(assert (=> b!7576915 (= e!4510164 (and tp!2207805 tp!2207802))))

(declare-fun b!7576914 () Bool)

(assert (=> b!7576914 (= e!4510164 tp_is_empty!50479)))

(assert (= (and b!7576607 (is-ElementMatch!20062 (reg!20391 r!22341))) b!7576914))

(assert (= (and b!7576607 (is-Concat!28907 (reg!20391 r!22341))) b!7576915))

(assert (= (and b!7576607 (is-Star!20062 (reg!20391 r!22341))) b!7576916))

(assert (= (and b!7576607 (is-Union!20062 (reg!20391 r!22341))) b!7576917))

(declare-fun b!7576923 () Bool)

(declare-fun e!4510165 () Bool)

(declare-fun tp!2207809 () Bool)

(declare-fun tp!2207811 () Bool)

(assert (=> b!7576923 (= e!4510165 (and tp!2207809 tp!2207811))))

(assert (=> b!7576606 (= tp!2207759 e!4510165)))

(declare-fun b!7576922 () Bool)

(declare-fun tp!2207808 () Bool)

(assert (=> b!7576922 (= e!4510165 tp!2207808)))

(declare-fun b!7576921 () Bool)

(declare-fun tp!2207810 () Bool)

(declare-fun tp!2207807 () Bool)

(assert (=> b!7576921 (= e!4510165 (and tp!2207810 tp!2207807))))

(declare-fun b!7576920 () Bool)

(assert (=> b!7576920 (= e!4510165 tp_is_empty!50479)))

(assert (= (and b!7576606 (is-ElementMatch!20062 (regOne!40636 r!22341))) b!7576920))

(assert (= (and b!7576606 (is-Concat!28907 (regOne!40636 r!22341))) b!7576921))

(assert (= (and b!7576606 (is-Star!20062 (regOne!40636 r!22341))) b!7576922))

(assert (= (and b!7576606 (is-Union!20062 (regOne!40636 r!22341))) b!7576923))

(declare-fun b!7576927 () Bool)

(declare-fun e!4510166 () Bool)

(declare-fun tp!2207814 () Bool)

(declare-fun tp!2207816 () Bool)

(assert (=> b!7576927 (= e!4510166 (and tp!2207814 tp!2207816))))

(assert (=> b!7576606 (= tp!2207758 e!4510166)))

(declare-fun b!7576926 () Bool)

(declare-fun tp!2207813 () Bool)

(assert (=> b!7576926 (= e!4510166 tp!2207813)))

(declare-fun b!7576925 () Bool)

(declare-fun tp!2207815 () Bool)

(declare-fun tp!2207812 () Bool)

(assert (=> b!7576925 (= e!4510166 (and tp!2207815 tp!2207812))))

(declare-fun b!7576924 () Bool)

(assert (=> b!7576924 (= e!4510166 tp_is_empty!50479)))

(assert (= (and b!7576606 (is-ElementMatch!20062 (regTwo!40636 r!22341))) b!7576924))

(assert (= (and b!7576606 (is-Concat!28907 (regTwo!40636 r!22341))) b!7576925))

(assert (= (and b!7576606 (is-Star!20062 (regTwo!40636 r!22341))) b!7576926))

(assert (= (and b!7576606 (is-Union!20062 (regTwo!40636 r!22341))) b!7576927))

(declare-fun b!7576932 () Bool)

(declare-fun e!4510169 () Bool)

(declare-fun tp!2207819 () Bool)

(assert (=> b!7576932 (= e!4510169 (and tp_is_empty!50479 tp!2207819))))

(assert (=> b!7576612 (= tp!2207760 e!4510169)))

(assert (= (and b!7576612 (is-Cons!72821 (t!387680 s!13436))) b!7576932))

(push 1)

(assert (not b!7576916))

(assert (not b!7576836))

(assert (not d!2318013))

(assert (not b!7576697))

(assert (not b!7576773))

(assert (not b!7576840))

(assert (not d!2317999))

(assert (not b!7576767))

(assert (not b!7576922))

(assert (not d!2318019))

(assert (not b!7576832))

(assert (not d!2318005))

(assert (not b!7576771))

(assert (not b!7576915))

(assert (not b!7576842))

(assert (not b!7576926))

(assert (not b!7576828))

(assert (not d!2318011))

(assert (not d!2317995))

(assert (not b!7576900))

(assert (not b!7576770))

(assert (not b!7576703))

(assert (not d!2317997))

(assert (not b!7576932))

(assert (not b!7576921))

(assert (not bm!694523))

(assert tp_is_empty!50479)

(assert (not b!7576690))

(assert (not d!2318021))

(assert (not bm!694532))

(assert (not b!7576774))

(assert (not b!7576820))

(assert (not bm!694522))

(assert (not b!7576701))

(assert (not b!7576911))

(assert (not d!2318009))

(assert (not d!2318023))

(assert (not b!7576909))

(assert (not b!7576871))

(assert (not b!7576925))

(assert (not bm!694521))

(assert (not bm!694530))

(assert (not b!7576702))

(assert (not bm!694510))

(assert (not b!7576693))

(assert (not b!7576923))

(assert (not b!7576927))

(assert (not b!7576901))

(assert (not b!7576917))

(assert (not b!7576899))

(assert (not b!7576841))

(assert (not b!7576910))

(assert (not b!7576829))

(assert (not b!7576769))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

