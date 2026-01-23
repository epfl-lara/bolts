; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!90900 () Bool)

(assert start!90900)

(declare-fun b!1055542 () Bool)

(assert (=> b!1055542 true))

(assert (=> b!1055542 true))

(declare-fun lambda!38170 () Int)

(declare-fun lambda!38169 () Int)

(assert (=> b!1055542 (not (= lambda!38170 lambda!38169))))

(assert (=> b!1055542 true))

(assert (=> b!1055542 true))

(declare-fun b!1055540 () Bool)

(declare-fun e!670294 () Bool)

(declare-fun tp!317761 () Bool)

(declare-fun tp!317758 () Bool)

(assert (=> b!1055540 (= e!670294 (and tp!317761 tp!317758))))

(declare-fun b!1055541 () Bool)

(declare-fun res!472055 () Bool)

(declare-fun e!670290 () Bool)

(assert (=> b!1055541 (=> res!472055 e!670290)))

(declare-datatypes ((C!6370 0))(
  ( (C!6371 (val!3433 Int)) )
))
(declare-datatypes ((Regex!2900 0))(
  ( (ElementMatch!2900 (c!176589 C!6370)) (Concat!4733 (regOne!6312 Regex!2900) (regTwo!6312 Regex!2900)) (EmptyExpr!2900) (Star!2900 (reg!3229 Regex!2900)) (EmptyLang!2900) (Union!2900 (regOne!6313 Regex!2900) (regTwo!6313 Regex!2900)) )
))
(declare-fun r!15766 () Regex!2900)

(declare-datatypes ((List!10130 0))(
  ( (Nil!10114) (Cons!10114 (h!15515 C!6370) (t!101176 List!10130)) )
))
(declare-fun s!10566 () List!10130)

(declare-fun matchR!1436 (Regex!2900 List!10130) Bool)

(declare-fun removeUselessConcat!449 (Regex!2900) Regex!2900)

(assert (=> b!1055541 (= res!472055 (matchR!1436 (Concat!4733 (removeUselessConcat!449 (regOne!6312 r!15766)) (removeUselessConcat!449 (regTwo!6312 r!15766))) s!10566))))

(declare-fun e!670291 () Bool)

(assert (=> b!1055542 (= e!670291 e!670290)))

(declare-fun res!472056 () Bool)

(assert (=> b!1055542 (=> res!472056 e!670290)))

(declare-fun isEmpty!6530 (List!10130) Bool)

(assert (=> b!1055542 (= res!472056 (isEmpty!6530 s!10566))))

(declare-fun Exists!627 (Int) Bool)

(assert (=> b!1055542 (= (Exists!627 lambda!38169) (Exists!627 lambda!38170))))

(declare-datatypes ((Unit!15475 0))(
  ( (Unit!15476) )
))
(declare-fun lt!359010 () Unit!15475)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!315 (Regex!2900 Regex!2900 List!10130) Unit!15475)

(assert (=> b!1055542 (= lt!359010 (lemmaExistCutMatchRandMatchRSpecEquivalent!315 (regOne!6312 r!15766) (regTwo!6312 r!15766) s!10566))))

(declare-datatypes ((tuple2!11566 0))(
  ( (tuple2!11567 (_1!6609 List!10130) (_2!6609 List!10130)) )
))
(declare-datatypes ((Option!2425 0))(
  ( (None!2424) (Some!2424 (v!19841 tuple2!11566)) )
))
(declare-fun isDefined!2067 (Option!2425) Bool)

(declare-fun findConcatSeparation!531 (Regex!2900 Regex!2900 List!10130 List!10130 List!10130) Option!2425)

(assert (=> b!1055542 (= (isDefined!2067 (findConcatSeparation!531 (regOne!6312 r!15766) (regTwo!6312 r!15766) Nil!10114 s!10566 s!10566)) (Exists!627 lambda!38169))))

(declare-fun lt!359009 () Unit!15475)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!531 (Regex!2900 Regex!2900 List!10130) Unit!15475)

(assert (=> b!1055542 (= lt!359009 (lemmaFindConcatSeparationEquivalentToExists!531 (regOne!6312 r!15766) (regTwo!6312 r!15766) s!10566))))

(declare-fun b!1055543 () Bool)

(declare-fun tp!317759 () Bool)

(declare-fun tp!317760 () Bool)

(assert (=> b!1055543 (= e!670294 (and tp!317759 tp!317760))))

(declare-fun b!1055544 () Bool)

(declare-fun e!670293 () Bool)

(declare-fun tp_is_empty!5443 () Bool)

(declare-fun tp!317762 () Bool)

(assert (=> b!1055544 (= e!670293 (and tp_is_empty!5443 tp!317762))))

(declare-fun b!1055545 () Bool)

(assert (=> b!1055545 (= e!670290 (not (matchR!1436 (removeUselessConcat!449 r!15766) s!10566)))))

(declare-fun res!472054 () Bool)

(declare-fun e!670292 () Bool)

(assert (=> start!90900 (=> (not res!472054) (not e!670292))))

(declare-fun validRegex!1369 (Regex!2900) Bool)

(assert (=> start!90900 (= res!472054 (validRegex!1369 r!15766))))

(assert (=> start!90900 e!670292))

(assert (=> start!90900 e!670294))

(assert (=> start!90900 e!670293))

(declare-fun b!1055546 () Bool)

(assert (=> b!1055546 (= e!670294 tp_is_empty!5443)))

(declare-fun b!1055547 () Bool)

(assert (=> b!1055547 (= e!670292 (not e!670291))))

(declare-fun res!472053 () Bool)

(assert (=> b!1055547 (=> res!472053 e!670291)))

(declare-fun lt!359008 () Bool)

(assert (=> b!1055547 (= res!472053 (or lt!359008 (and (is-Concat!4733 r!15766) (is-EmptyExpr!2900 (regOne!6312 r!15766))) (and (is-Concat!4733 r!15766) (is-EmptyExpr!2900 (regTwo!6312 r!15766))) (not (is-Concat!4733 r!15766))))))

(declare-fun matchRSpec!699 (Regex!2900 List!10130) Bool)

(assert (=> b!1055547 (= lt!359008 (matchRSpec!699 r!15766 s!10566))))

(assert (=> b!1055547 (= lt!359008 (matchR!1436 r!15766 s!10566))))

(declare-fun lt!359011 () Unit!15475)

(declare-fun mainMatchTheorem!699 (Regex!2900 List!10130) Unit!15475)

(assert (=> b!1055547 (= lt!359011 (mainMatchTheorem!699 r!15766 s!10566))))

(declare-fun b!1055548 () Bool)

(declare-fun tp!317757 () Bool)

(assert (=> b!1055548 (= e!670294 tp!317757)))

(assert (= (and start!90900 res!472054) b!1055547))

(assert (= (and b!1055547 (not res!472053)) b!1055542))

(assert (= (and b!1055542 (not res!472056)) b!1055541))

(assert (= (and b!1055541 (not res!472055)) b!1055545))

(assert (= (and start!90900 (is-ElementMatch!2900 r!15766)) b!1055546))

(assert (= (and start!90900 (is-Concat!4733 r!15766)) b!1055543))

(assert (= (and start!90900 (is-Star!2900 r!15766)) b!1055548))

(assert (= (and start!90900 (is-Union!2900 r!15766)) b!1055540))

(assert (= (and start!90900 (is-Cons!10114 s!10566)) b!1055544))

(declare-fun m!1218821 () Bool)

(assert (=> start!90900 m!1218821))

(declare-fun m!1218823 () Bool)

(assert (=> b!1055541 m!1218823))

(declare-fun m!1218825 () Bool)

(assert (=> b!1055541 m!1218825))

(declare-fun m!1218827 () Bool)

(assert (=> b!1055541 m!1218827))

(declare-fun m!1218829 () Bool)

(assert (=> b!1055547 m!1218829))

(declare-fun m!1218831 () Bool)

(assert (=> b!1055547 m!1218831))

(declare-fun m!1218833 () Bool)

(assert (=> b!1055547 m!1218833))

(declare-fun m!1218835 () Bool)

(assert (=> b!1055542 m!1218835))

(declare-fun m!1218837 () Bool)

(assert (=> b!1055542 m!1218837))

(declare-fun m!1218839 () Bool)

(assert (=> b!1055542 m!1218839))

(declare-fun m!1218841 () Bool)

(assert (=> b!1055542 m!1218841))

(assert (=> b!1055542 m!1218835))

(declare-fun m!1218843 () Bool)

(assert (=> b!1055542 m!1218843))

(declare-fun m!1218845 () Bool)

(assert (=> b!1055542 m!1218845))

(declare-fun m!1218847 () Bool)

(assert (=> b!1055542 m!1218847))

(assert (=> b!1055542 m!1218839))

(declare-fun m!1218849 () Bool)

(assert (=> b!1055545 m!1218849))

(assert (=> b!1055545 m!1218849))

(declare-fun m!1218851 () Bool)

(assert (=> b!1055545 m!1218851))

(push 1)

(assert (not b!1055543))

(assert (not b!1055540))

(assert (not start!90900))

(assert (not b!1055541))

(assert (not b!1055545))

(assert (not b!1055548))

(assert (not b!1055547))

(assert (not b!1055542))

(assert (not b!1055544))

(assert tp_is_empty!5443)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!251668 () Bool)

(declare-fun b!1055635 () Bool)

(assert (= bs!251668 (and b!1055635 b!1055542)))

(declare-fun lambda!38183 () Int)

(assert (=> bs!251668 (not (= lambda!38183 lambda!38169))))

(assert (=> bs!251668 (not (= lambda!38183 lambda!38170))))

(assert (=> b!1055635 true))

(assert (=> b!1055635 true))

(declare-fun bs!251669 () Bool)

(declare-fun b!1055628 () Bool)

(assert (= bs!251669 (and b!1055628 b!1055542)))

(declare-fun lambda!38184 () Int)

(assert (=> bs!251669 (not (= lambda!38184 lambda!38169))))

(assert (=> bs!251669 (= lambda!38184 lambda!38170)))

(declare-fun bs!251670 () Bool)

(assert (= bs!251670 (and b!1055628 b!1055635)))

(assert (=> bs!251670 (not (= lambda!38184 lambda!38183))))

(assert (=> b!1055628 true))

(assert (=> b!1055628 true))

(declare-fun d!300162 () Bool)

(declare-fun c!176599 () Bool)

(assert (=> d!300162 (= c!176599 (is-EmptyExpr!2900 r!15766))))

(declare-fun e!670336 () Bool)

(assert (=> d!300162 (= (matchRSpec!699 r!15766 s!10566) e!670336)))

(declare-fun e!670338 () Bool)

(declare-fun call!75339 () Bool)

(assert (=> b!1055628 (= e!670338 call!75339)))

(declare-fun b!1055629 () Bool)

(declare-fun e!670335 () Bool)

(declare-fun e!670337 () Bool)

(assert (=> b!1055629 (= e!670335 e!670337)))

(declare-fun res!472097 () Bool)

(assert (=> b!1055629 (= res!472097 (matchRSpec!699 (regOne!6313 r!15766) s!10566))))

(assert (=> b!1055629 (=> res!472097 e!670337)))

(declare-fun b!1055630 () Bool)

(declare-fun c!176602 () Bool)

(assert (=> b!1055630 (= c!176602 (is-Union!2900 r!15766))))

(declare-fun e!670339 () Bool)

(assert (=> b!1055630 (= e!670339 e!670335)))

(declare-fun bm!75333 () Bool)

(declare-fun call!75338 () Bool)

(assert (=> bm!75333 (= call!75338 (isEmpty!6530 s!10566))))

(declare-fun b!1055631 () Bool)

(declare-fun c!176601 () Bool)

(assert (=> b!1055631 (= c!176601 (is-ElementMatch!2900 r!15766))))

(declare-fun e!670340 () Bool)

(assert (=> b!1055631 (= e!670340 e!670339)))

(declare-fun b!1055632 () Bool)

(declare-fun res!472098 () Bool)

(declare-fun e!670334 () Bool)

(assert (=> b!1055632 (=> res!472098 e!670334)))

(assert (=> b!1055632 (= res!472098 call!75338)))

(assert (=> b!1055632 (= e!670338 e!670334)))

(declare-fun c!176600 () Bool)

(declare-fun bm!75334 () Bool)

(assert (=> bm!75334 (= call!75339 (Exists!627 (ite c!176600 lambda!38183 lambda!38184)))))

(declare-fun b!1055633 () Bool)

(assert (=> b!1055633 (= e!670337 (matchRSpec!699 (regTwo!6313 r!15766) s!10566))))

(declare-fun b!1055634 () Bool)

(assert (=> b!1055634 (= e!670335 e!670338)))

(assert (=> b!1055634 (= c!176600 (is-Star!2900 r!15766))))

(assert (=> b!1055635 (= e!670334 call!75339)))

(declare-fun b!1055636 () Bool)

(assert (=> b!1055636 (= e!670336 e!670340)))

(declare-fun res!472099 () Bool)

(assert (=> b!1055636 (= res!472099 (not (is-EmptyLang!2900 r!15766)))))

(assert (=> b!1055636 (=> (not res!472099) (not e!670340))))

(declare-fun b!1055637 () Bool)

(assert (=> b!1055637 (= e!670339 (= s!10566 (Cons!10114 (c!176589 r!15766) Nil!10114)))))

(declare-fun b!1055638 () Bool)

(assert (=> b!1055638 (= e!670336 call!75338)))

(assert (= (and d!300162 c!176599) b!1055638))

(assert (= (and d!300162 (not c!176599)) b!1055636))

(assert (= (and b!1055636 res!472099) b!1055631))

(assert (= (and b!1055631 c!176601) b!1055637))

(assert (= (and b!1055631 (not c!176601)) b!1055630))

(assert (= (and b!1055630 c!176602) b!1055629))

(assert (= (and b!1055630 (not c!176602)) b!1055634))

(assert (= (and b!1055629 (not res!472097)) b!1055633))

(assert (= (and b!1055634 c!176600) b!1055632))

(assert (= (and b!1055634 (not c!176600)) b!1055628))

(assert (= (and b!1055632 (not res!472098)) b!1055635))

(assert (= (or b!1055635 b!1055628) bm!75334))

(assert (= (or b!1055638 b!1055632) bm!75333))

(declare-fun m!1218885 () Bool)

(assert (=> b!1055629 m!1218885))

(assert (=> bm!75333 m!1218845))

(declare-fun m!1218887 () Bool)

(assert (=> bm!75334 m!1218887))

(declare-fun m!1218889 () Bool)

(assert (=> b!1055633 m!1218889))

(assert (=> b!1055547 d!300162))

(declare-fun b!1055695 () Bool)

(declare-fun res!472133 () Bool)

(declare-fun e!670374 () Bool)

(assert (=> b!1055695 (=> res!472133 e!670374)))

(assert (=> b!1055695 (= res!472133 (not (is-ElementMatch!2900 r!15766)))))

(declare-fun e!670372 () Bool)

(assert (=> b!1055695 (= e!670372 e!670374)))

(declare-fun b!1055696 () Bool)

(declare-fun e!670370 () Bool)

(declare-fun head!1947 (List!10130) C!6370)

(assert (=> b!1055696 (= e!670370 (= (head!1947 s!10566) (c!176589 r!15766)))))

(declare-fun b!1055697 () Bool)

(declare-fun e!670371 () Bool)

(declare-fun lt!359028 () Bool)

(declare-fun call!75344 () Bool)

(assert (=> b!1055697 (= e!670371 (= lt!359028 call!75344))))

(declare-fun b!1055698 () Bool)

(assert (=> b!1055698 (= e!670371 e!670372)))

(declare-fun c!176617 () Bool)

(assert (=> b!1055698 (= c!176617 (is-EmptyLang!2900 r!15766))))

(declare-fun d!300166 () Bool)

(assert (=> d!300166 e!670371))

(declare-fun c!176616 () Bool)

(assert (=> d!300166 (= c!176616 (is-EmptyExpr!2900 r!15766))))

(declare-fun e!670375 () Bool)

(assert (=> d!300166 (= lt!359028 e!670375)))

(declare-fun c!176615 () Bool)

(assert (=> d!300166 (= c!176615 (isEmpty!6530 s!10566))))

(assert (=> d!300166 (validRegex!1369 r!15766)))

(assert (=> d!300166 (= (matchR!1436 r!15766 s!10566) lt!359028)))

(declare-fun b!1055699 () Bool)

(assert (=> b!1055699 (= e!670372 (not lt!359028))))

(declare-fun b!1055700 () Bool)

(declare-fun res!472136 () Bool)

(declare-fun e!670369 () Bool)

(assert (=> b!1055700 (=> res!472136 e!670369)))

(declare-fun tail!1509 (List!10130) List!10130)

(assert (=> b!1055700 (= res!472136 (not (isEmpty!6530 (tail!1509 s!10566))))))

(declare-fun b!1055701 () Bool)

(declare-fun e!670373 () Bool)

(assert (=> b!1055701 (= e!670373 e!670369)))

(declare-fun res!472138 () Bool)

(assert (=> b!1055701 (=> res!472138 e!670369)))

(assert (=> b!1055701 (= res!472138 call!75344)))

(declare-fun b!1055702 () Bool)

(assert (=> b!1055702 (= e!670369 (not (= (head!1947 s!10566) (c!176589 r!15766))))))

(declare-fun b!1055703 () Bool)

(declare-fun res!472139 () Bool)

(assert (=> b!1055703 (=> (not res!472139) (not e!670370))))

(assert (=> b!1055703 (= res!472139 (isEmpty!6530 (tail!1509 s!10566)))))

(declare-fun b!1055704 () Bool)

(assert (=> b!1055704 (= e!670374 e!670373)))

(declare-fun res!472137 () Bool)

(assert (=> b!1055704 (=> (not res!472137) (not e!670373))))

(assert (=> b!1055704 (= res!472137 (not lt!359028))))

(declare-fun bm!75339 () Bool)

(assert (=> bm!75339 (= call!75344 (isEmpty!6530 s!10566))))

(declare-fun b!1055705 () Bool)

(declare-fun res!472135 () Bool)

(assert (=> b!1055705 (=> res!472135 e!670374)))

(assert (=> b!1055705 (= res!472135 e!670370)))

(declare-fun res!472134 () Bool)

(assert (=> b!1055705 (=> (not res!472134) (not e!670370))))

(assert (=> b!1055705 (= res!472134 lt!359028)))

(declare-fun b!1055706 () Bool)

(declare-fun derivativeStep!792 (Regex!2900 C!6370) Regex!2900)

(assert (=> b!1055706 (= e!670375 (matchR!1436 (derivativeStep!792 r!15766 (head!1947 s!10566)) (tail!1509 s!10566)))))

(declare-fun b!1055707 () Bool)

(declare-fun nullable!992 (Regex!2900) Bool)

(assert (=> b!1055707 (= e!670375 (nullable!992 r!15766))))

(declare-fun b!1055708 () Bool)

(declare-fun res!472132 () Bool)

(assert (=> b!1055708 (=> (not res!472132) (not e!670370))))

(assert (=> b!1055708 (= res!472132 (not call!75344))))

(assert (= (and d!300166 c!176615) b!1055707))

(assert (= (and d!300166 (not c!176615)) b!1055706))

(assert (= (and d!300166 c!176616) b!1055697))

(assert (= (and d!300166 (not c!176616)) b!1055698))

(assert (= (and b!1055698 c!176617) b!1055699))

(assert (= (and b!1055698 (not c!176617)) b!1055695))

(assert (= (and b!1055695 (not res!472133)) b!1055705))

(assert (= (and b!1055705 res!472134) b!1055708))

(assert (= (and b!1055708 res!472132) b!1055703))

(assert (= (and b!1055703 res!472139) b!1055696))

(assert (= (and b!1055705 (not res!472135)) b!1055704))

(assert (= (and b!1055704 res!472137) b!1055701))

(assert (= (and b!1055701 (not res!472138)) b!1055700))

(assert (= (and b!1055700 (not res!472136)) b!1055702))

(assert (= (or b!1055697 b!1055708 b!1055701) bm!75339))

(declare-fun m!1218891 () Bool)

(assert (=> b!1055702 m!1218891))

(assert (=> bm!75339 m!1218845))

(declare-fun m!1218893 () Bool)

(assert (=> b!1055703 m!1218893))

(assert (=> b!1055703 m!1218893))

(declare-fun m!1218895 () Bool)

(assert (=> b!1055703 m!1218895))

(assert (=> b!1055700 m!1218893))

(assert (=> b!1055700 m!1218893))

(assert (=> b!1055700 m!1218895))

(assert (=> b!1055706 m!1218891))

(assert (=> b!1055706 m!1218891))

(declare-fun m!1218897 () Bool)

(assert (=> b!1055706 m!1218897))

(assert (=> b!1055706 m!1218893))

(assert (=> b!1055706 m!1218897))

(assert (=> b!1055706 m!1218893))

(declare-fun m!1218899 () Bool)

(assert (=> b!1055706 m!1218899))

(declare-fun m!1218901 () Bool)

(assert (=> b!1055707 m!1218901))

(assert (=> b!1055696 m!1218891))

(assert (=> d!300166 m!1218845))

(assert (=> d!300166 m!1218821))

(assert (=> b!1055547 d!300166))

(declare-fun d!300168 () Bool)

(assert (=> d!300168 (= (matchR!1436 r!15766 s!10566) (matchRSpec!699 r!15766 s!10566))))

(declare-fun lt!359032 () Unit!15475)

(declare-fun choose!6719 (Regex!2900 List!10130) Unit!15475)

(assert (=> d!300168 (= lt!359032 (choose!6719 r!15766 s!10566))))

(assert (=> d!300168 (validRegex!1369 r!15766)))

(assert (=> d!300168 (= (mainMatchTheorem!699 r!15766 s!10566) lt!359032)))

(declare-fun bs!251671 () Bool)

(assert (= bs!251671 d!300168))

(assert (=> bs!251671 m!1218831))

(assert (=> bs!251671 m!1218829))

(declare-fun m!1218903 () Bool)

(assert (=> bs!251671 m!1218903))

(assert (=> bs!251671 m!1218821))

(assert (=> b!1055547 d!300168))

(declare-fun d!300170 () Bool)

(declare-fun choose!6720 (Int) Bool)

(assert (=> d!300170 (= (Exists!627 lambda!38170) (choose!6720 lambda!38170))))

(declare-fun bs!251672 () Bool)

(assert (= bs!251672 d!300170))

(declare-fun m!1218905 () Bool)

(assert (=> bs!251672 m!1218905))

(assert (=> b!1055542 d!300170))

(declare-fun d!300172 () Bool)

(assert (=> d!300172 (= (isEmpty!6530 s!10566) (is-Nil!10114 s!10566))))

(assert (=> b!1055542 d!300172))

(declare-fun d!300174 () Bool)

(declare-fun isEmpty!6532 (Option!2425) Bool)

(assert (=> d!300174 (= (isDefined!2067 (findConcatSeparation!531 (regOne!6312 r!15766) (regTwo!6312 r!15766) Nil!10114 s!10566 s!10566)) (not (isEmpty!6532 (findConcatSeparation!531 (regOne!6312 r!15766) (regTwo!6312 r!15766) Nil!10114 s!10566 s!10566))))))

(declare-fun bs!251673 () Bool)

(assert (= bs!251673 d!300174))

(assert (=> bs!251673 m!1218839))

(declare-fun m!1218921 () Bool)

(assert (=> bs!251673 m!1218921))

(assert (=> b!1055542 d!300174))

(declare-fun bs!251674 () Bool)

(declare-fun d!300176 () Bool)

(assert (= bs!251674 (and d!300176 b!1055542)))

(declare-fun lambda!38187 () Int)

(assert (=> bs!251674 (= lambda!38187 lambda!38169)))

(assert (=> bs!251674 (not (= lambda!38187 lambda!38170))))

(declare-fun bs!251675 () Bool)

(assert (= bs!251675 (and d!300176 b!1055635)))

(assert (=> bs!251675 (not (= lambda!38187 lambda!38183))))

(declare-fun bs!251676 () Bool)

(assert (= bs!251676 (and d!300176 b!1055628)))

(assert (=> bs!251676 (not (= lambda!38187 lambda!38184))))

(assert (=> d!300176 true))

(assert (=> d!300176 true))

(assert (=> d!300176 true))

(assert (=> d!300176 (= (isDefined!2067 (findConcatSeparation!531 (regOne!6312 r!15766) (regTwo!6312 r!15766) Nil!10114 s!10566 s!10566)) (Exists!627 lambda!38187))))

(declare-fun lt!359035 () Unit!15475)

(declare-fun choose!6721 (Regex!2900 Regex!2900 List!10130) Unit!15475)

(assert (=> d!300176 (= lt!359035 (choose!6721 (regOne!6312 r!15766) (regTwo!6312 r!15766) s!10566))))

(assert (=> d!300176 (validRegex!1369 (regOne!6312 r!15766))))

(assert (=> d!300176 (= (lemmaFindConcatSeparationEquivalentToExists!531 (regOne!6312 r!15766) (regTwo!6312 r!15766) s!10566) lt!359035)))

(declare-fun bs!251677 () Bool)

(assert (= bs!251677 d!300176))

(declare-fun m!1218923 () Bool)

(assert (=> bs!251677 m!1218923))

(declare-fun m!1218925 () Bool)

(assert (=> bs!251677 m!1218925))

(assert (=> bs!251677 m!1218839))

(assert (=> bs!251677 m!1218841))

(declare-fun m!1218927 () Bool)

(assert (=> bs!251677 m!1218927))

(assert (=> bs!251677 m!1218839))

(assert (=> b!1055542 d!300176))

(declare-fun d!300180 () Bool)

(declare-fun e!670410 () Bool)

(assert (=> d!300180 e!670410))

(declare-fun res!472168 () Bool)

(assert (=> d!300180 (=> res!472168 e!670410)))

(declare-fun e!670408 () Bool)

(assert (=> d!300180 (= res!472168 e!670408)))

(declare-fun res!472166 () Bool)

(assert (=> d!300180 (=> (not res!472166) (not e!670408))))

(declare-fun lt!359046 () Option!2425)

(assert (=> d!300180 (= res!472166 (isDefined!2067 lt!359046))))

(declare-fun e!670409 () Option!2425)

(assert (=> d!300180 (= lt!359046 e!670409)))

(declare-fun c!176636 () Bool)

(declare-fun e!670407 () Bool)

(assert (=> d!300180 (= c!176636 e!670407)))

(declare-fun res!472165 () Bool)

(assert (=> d!300180 (=> (not res!472165) (not e!670407))))

(assert (=> d!300180 (= res!472165 (matchR!1436 (regOne!6312 r!15766) Nil!10114))))

(assert (=> d!300180 (validRegex!1369 (regOne!6312 r!15766))))

(assert (=> d!300180 (= (findConcatSeparation!531 (regOne!6312 r!15766) (regTwo!6312 r!15766) Nil!10114 s!10566 s!10566) lt!359046)))

(declare-fun b!1055767 () Bool)

(assert (=> b!1055767 (= e!670407 (matchR!1436 (regTwo!6312 r!15766) s!10566))))

(declare-fun b!1055768 () Bool)

(assert (=> b!1055768 (= e!670410 (not (isDefined!2067 lt!359046)))))

(declare-fun b!1055769 () Bool)

(declare-fun lt!359044 () Unit!15475)

(declare-fun lt!359045 () Unit!15475)

(assert (=> b!1055769 (= lt!359044 lt!359045)))

(declare-fun ++!2800 (List!10130 List!10130) List!10130)

(assert (=> b!1055769 (= (++!2800 (++!2800 Nil!10114 (Cons!10114 (h!15515 s!10566) Nil!10114)) (t!101176 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!393 (List!10130 C!6370 List!10130 List!10130) Unit!15475)

(assert (=> b!1055769 (= lt!359045 (lemmaMoveElementToOtherListKeepsConcatEq!393 Nil!10114 (h!15515 s!10566) (t!101176 s!10566) s!10566))))

(declare-fun e!670411 () Option!2425)

(assert (=> b!1055769 (= e!670411 (findConcatSeparation!531 (regOne!6312 r!15766) (regTwo!6312 r!15766) (++!2800 Nil!10114 (Cons!10114 (h!15515 s!10566) Nil!10114)) (t!101176 s!10566) s!10566))))

(declare-fun b!1055770 () Bool)

(assert (=> b!1055770 (= e!670411 None!2424)))

(declare-fun b!1055771 () Bool)

(assert (=> b!1055771 (= e!670409 e!670411)))

(declare-fun c!176635 () Bool)

(assert (=> b!1055771 (= c!176635 (is-Nil!10114 s!10566))))

(declare-fun b!1055772 () Bool)

(declare-fun get!3628 (Option!2425) tuple2!11566)

(assert (=> b!1055772 (= e!670408 (= (++!2800 (_1!6609 (get!3628 lt!359046)) (_2!6609 (get!3628 lt!359046))) s!10566))))

(declare-fun b!1055773 () Bool)

(declare-fun res!472164 () Bool)

(assert (=> b!1055773 (=> (not res!472164) (not e!670408))))

(assert (=> b!1055773 (= res!472164 (matchR!1436 (regOne!6312 r!15766) (_1!6609 (get!3628 lt!359046))))))

(declare-fun b!1055774 () Bool)

(declare-fun res!472167 () Bool)

(assert (=> b!1055774 (=> (not res!472167) (not e!670408))))

(assert (=> b!1055774 (= res!472167 (matchR!1436 (regTwo!6312 r!15766) (_2!6609 (get!3628 lt!359046))))))

(declare-fun b!1055775 () Bool)

(assert (=> b!1055775 (= e!670409 (Some!2424 (tuple2!11567 Nil!10114 s!10566)))))

(assert (= (and d!300180 res!472165) b!1055767))

(assert (= (and d!300180 c!176636) b!1055775))

(assert (= (and d!300180 (not c!176636)) b!1055771))

(assert (= (and b!1055771 c!176635) b!1055770))

(assert (= (and b!1055771 (not c!176635)) b!1055769))

(assert (= (and d!300180 res!472166) b!1055773))

(assert (= (and b!1055773 res!472164) b!1055774))

(assert (= (and b!1055774 res!472167) b!1055772))

(assert (= (and d!300180 (not res!472168)) b!1055768))

(declare-fun m!1218929 () Bool)

(assert (=> b!1055772 m!1218929))

(declare-fun m!1218931 () Bool)

(assert (=> b!1055772 m!1218931))

(assert (=> b!1055774 m!1218929))

(declare-fun m!1218933 () Bool)

(assert (=> b!1055774 m!1218933))

(declare-fun m!1218935 () Bool)

(assert (=> b!1055768 m!1218935))

(declare-fun m!1218937 () Bool)

(assert (=> b!1055769 m!1218937))

(assert (=> b!1055769 m!1218937))

(declare-fun m!1218939 () Bool)

(assert (=> b!1055769 m!1218939))

(declare-fun m!1218941 () Bool)

(assert (=> b!1055769 m!1218941))

(assert (=> b!1055769 m!1218937))

(declare-fun m!1218943 () Bool)

(assert (=> b!1055769 m!1218943))

(declare-fun m!1218945 () Bool)

(assert (=> b!1055767 m!1218945))

(assert (=> b!1055773 m!1218929))

(declare-fun m!1218947 () Bool)

(assert (=> b!1055773 m!1218947))

(assert (=> d!300180 m!1218935))

(declare-fun m!1218949 () Bool)

(assert (=> d!300180 m!1218949))

(assert (=> d!300180 m!1218927))

(assert (=> b!1055542 d!300180))

(declare-fun bs!251678 () Bool)

(declare-fun d!300182 () Bool)

(assert (= bs!251678 (and d!300182 b!1055635)))

(declare-fun lambda!38192 () Int)

(assert (=> bs!251678 (not (= lambda!38192 lambda!38183))))

(declare-fun bs!251679 () Bool)

(assert (= bs!251679 (and d!300182 d!300176)))

(assert (=> bs!251679 (= lambda!38192 lambda!38187)))

(declare-fun bs!251680 () Bool)

(assert (= bs!251680 (and d!300182 b!1055542)))

(assert (=> bs!251680 (not (= lambda!38192 lambda!38170))))

(assert (=> bs!251680 (= lambda!38192 lambda!38169)))

(declare-fun bs!251681 () Bool)

(assert (= bs!251681 (and d!300182 b!1055628)))

(assert (=> bs!251681 (not (= lambda!38192 lambda!38184))))

(assert (=> d!300182 true))

(assert (=> d!300182 true))

(assert (=> d!300182 true))

(declare-fun lambda!38193 () Int)

(assert (=> bs!251678 (not (= lambda!38193 lambda!38183))))

(assert (=> bs!251679 (not (= lambda!38193 lambda!38187))))

(assert (=> bs!251680 (= lambda!38193 lambda!38170)))

(assert (=> bs!251680 (not (= lambda!38193 lambda!38169))))

(declare-fun bs!251682 () Bool)

(assert (= bs!251682 d!300182))

(assert (=> bs!251682 (not (= lambda!38193 lambda!38192))))

(assert (=> bs!251681 (= lambda!38193 lambda!38184)))

(assert (=> d!300182 true))

(assert (=> d!300182 true))

(assert (=> d!300182 true))

(assert (=> d!300182 (= (Exists!627 lambda!38192) (Exists!627 lambda!38193))))

(declare-fun lt!359051 () Unit!15475)

(declare-fun choose!6722 (Regex!2900 Regex!2900 List!10130) Unit!15475)

(assert (=> d!300182 (= lt!359051 (choose!6722 (regOne!6312 r!15766) (regTwo!6312 r!15766) s!10566))))

(assert (=> d!300182 (validRegex!1369 (regOne!6312 r!15766))))

(assert (=> d!300182 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!315 (regOne!6312 r!15766) (regTwo!6312 r!15766) s!10566) lt!359051)))

(declare-fun m!1218975 () Bool)

(assert (=> bs!251682 m!1218975))

(declare-fun m!1218977 () Bool)

(assert (=> bs!251682 m!1218977))

(declare-fun m!1218979 () Bool)

(assert (=> bs!251682 m!1218979))

(assert (=> bs!251682 m!1218927))

(assert (=> b!1055542 d!300182))

(declare-fun d!300188 () Bool)

(assert (=> d!300188 (= (Exists!627 lambda!38169) (choose!6720 lambda!38169))))

(declare-fun bs!251683 () Bool)

(assert (= bs!251683 d!300188))

(declare-fun m!1218981 () Bool)

(assert (=> bs!251683 m!1218981))

(assert (=> b!1055542 d!300188))

(declare-fun b!1055806 () Bool)

(declare-fun res!472180 () Bool)

(declare-fun e!670433 () Bool)

(assert (=> b!1055806 (=> res!472180 e!670433)))

(assert (=> b!1055806 (= res!472180 (not (is-ElementMatch!2900 (Concat!4733 (removeUselessConcat!449 (regOne!6312 r!15766)) (removeUselessConcat!449 (regTwo!6312 r!15766))))))))

(declare-fun e!670431 () Bool)

(assert (=> b!1055806 (= e!670431 e!670433)))

(declare-fun b!1055807 () Bool)

(declare-fun e!670429 () Bool)

(assert (=> b!1055807 (= e!670429 (= (head!1947 s!10566) (c!176589 (Concat!4733 (removeUselessConcat!449 (regOne!6312 r!15766)) (removeUselessConcat!449 (regTwo!6312 r!15766))))))))

(declare-fun b!1055808 () Bool)

(declare-fun e!670430 () Bool)

(declare-fun lt!359052 () Bool)

(declare-fun call!75366 () Bool)

(assert (=> b!1055808 (= e!670430 (= lt!359052 call!75366))))

(declare-fun b!1055809 () Bool)

(assert (=> b!1055809 (= e!670430 e!670431)))

(declare-fun c!176649 () Bool)

(assert (=> b!1055809 (= c!176649 (is-EmptyLang!2900 (Concat!4733 (removeUselessConcat!449 (regOne!6312 r!15766)) (removeUselessConcat!449 (regTwo!6312 r!15766)))))))

(declare-fun d!300190 () Bool)

(assert (=> d!300190 e!670430))

(declare-fun c!176648 () Bool)

(assert (=> d!300190 (= c!176648 (is-EmptyExpr!2900 (Concat!4733 (removeUselessConcat!449 (regOne!6312 r!15766)) (removeUselessConcat!449 (regTwo!6312 r!15766)))))))

(declare-fun e!670434 () Bool)

(assert (=> d!300190 (= lt!359052 e!670434)))

(declare-fun c!176647 () Bool)

(assert (=> d!300190 (= c!176647 (isEmpty!6530 s!10566))))

(assert (=> d!300190 (validRegex!1369 (Concat!4733 (removeUselessConcat!449 (regOne!6312 r!15766)) (removeUselessConcat!449 (regTwo!6312 r!15766))))))

(assert (=> d!300190 (= (matchR!1436 (Concat!4733 (removeUselessConcat!449 (regOne!6312 r!15766)) (removeUselessConcat!449 (regTwo!6312 r!15766))) s!10566) lt!359052)))

(declare-fun b!1055810 () Bool)

(assert (=> b!1055810 (= e!670431 (not lt!359052))))

(declare-fun b!1055811 () Bool)

(declare-fun res!472183 () Bool)

(declare-fun e!670428 () Bool)

(assert (=> b!1055811 (=> res!472183 e!670428)))

(assert (=> b!1055811 (= res!472183 (not (isEmpty!6530 (tail!1509 s!10566))))))

(declare-fun b!1055812 () Bool)

(declare-fun e!670432 () Bool)

(assert (=> b!1055812 (= e!670432 e!670428)))

(declare-fun res!472185 () Bool)

(assert (=> b!1055812 (=> res!472185 e!670428)))

(assert (=> b!1055812 (= res!472185 call!75366)))

(declare-fun b!1055813 () Bool)

(assert (=> b!1055813 (= e!670428 (not (= (head!1947 s!10566) (c!176589 (Concat!4733 (removeUselessConcat!449 (regOne!6312 r!15766)) (removeUselessConcat!449 (regTwo!6312 r!15766)))))))))

(declare-fun b!1055814 () Bool)

(declare-fun res!472186 () Bool)

(assert (=> b!1055814 (=> (not res!472186) (not e!670429))))

(assert (=> b!1055814 (= res!472186 (isEmpty!6530 (tail!1509 s!10566)))))

(declare-fun b!1055815 () Bool)

(assert (=> b!1055815 (= e!670433 e!670432)))

(declare-fun res!472184 () Bool)

(assert (=> b!1055815 (=> (not res!472184) (not e!670432))))

(assert (=> b!1055815 (= res!472184 (not lt!359052))))

(declare-fun bm!75361 () Bool)

(assert (=> bm!75361 (= call!75366 (isEmpty!6530 s!10566))))

(declare-fun b!1055816 () Bool)

(declare-fun res!472182 () Bool)

(assert (=> b!1055816 (=> res!472182 e!670433)))

(assert (=> b!1055816 (= res!472182 e!670429)))

(declare-fun res!472181 () Bool)

(assert (=> b!1055816 (=> (not res!472181) (not e!670429))))

(assert (=> b!1055816 (= res!472181 lt!359052)))

(declare-fun b!1055817 () Bool)

(assert (=> b!1055817 (= e!670434 (matchR!1436 (derivativeStep!792 (Concat!4733 (removeUselessConcat!449 (regOne!6312 r!15766)) (removeUselessConcat!449 (regTwo!6312 r!15766))) (head!1947 s!10566)) (tail!1509 s!10566)))))

(declare-fun b!1055818 () Bool)

(assert (=> b!1055818 (= e!670434 (nullable!992 (Concat!4733 (removeUselessConcat!449 (regOne!6312 r!15766)) (removeUselessConcat!449 (regTwo!6312 r!15766)))))))

(declare-fun b!1055819 () Bool)

(declare-fun res!472179 () Bool)

(assert (=> b!1055819 (=> (not res!472179) (not e!670429))))

(assert (=> b!1055819 (= res!472179 (not call!75366))))

(assert (= (and d!300190 c!176647) b!1055818))

(assert (= (and d!300190 (not c!176647)) b!1055817))

(assert (= (and d!300190 c!176648) b!1055808))

(assert (= (and d!300190 (not c!176648)) b!1055809))

(assert (= (and b!1055809 c!176649) b!1055810))

(assert (= (and b!1055809 (not c!176649)) b!1055806))

(assert (= (and b!1055806 (not res!472180)) b!1055816))

(assert (= (and b!1055816 res!472181) b!1055819))

(assert (= (and b!1055819 res!472179) b!1055814))

(assert (= (and b!1055814 res!472186) b!1055807))

(assert (= (and b!1055816 (not res!472182)) b!1055815))

(assert (= (and b!1055815 res!472184) b!1055812))

(assert (= (and b!1055812 (not res!472185)) b!1055811))

(assert (= (and b!1055811 (not res!472183)) b!1055813))

(assert (= (or b!1055808 b!1055819 b!1055812) bm!75361))

(assert (=> b!1055813 m!1218891))

(assert (=> bm!75361 m!1218845))

(assert (=> b!1055814 m!1218893))

(assert (=> b!1055814 m!1218893))

(assert (=> b!1055814 m!1218895))

(assert (=> b!1055811 m!1218893))

(assert (=> b!1055811 m!1218893))

(assert (=> b!1055811 m!1218895))

(assert (=> b!1055817 m!1218891))

(assert (=> b!1055817 m!1218891))

(declare-fun m!1218983 () Bool)

(assert (=> b!1055817 m!1218983))

(assert (=> b!1055817 m!1218893))

(assert (=> b!1055817 m!1218983))

(assert (=> b!1055817 m!1218893))

(declare-fun m!1218985 () Bool)

(assert (=> b!1055817 m!1218985))

(declare-fun m!1218987 () Bool)

(assert (=> b!1055818 m!1218987))

(assert (=> b!1055807 m!1218891))

(assert (=> d!300190 m!1218845))

(declare-fun m!1218989 () Bool)

(assert (=> d!300190 m!1218989))

(assert (=> b!1055541 d!300190))

(declare-fun b!1055870 () Bool)

(declare-fun e!670464 () Regex!2900)

(assert (=> b!1055870 (= e!670464 (regOne!6312 r!15766))))

(declare-fun b!1055871 () Bool)

(declare-fun e!670468 () Regex!2900)

(declare-fun call!75378 () Regex!2900)

(assert (=> b!1055871 (= e!670468 call!75378)))

(declare-fun b!1055872 () Bool)

(declare-fun e!670467 () Regex!2900)

(declare-fun call!75379 () Regex!2900)

(declare-fun call!75380 () Regex!2900)

(assert (=> b!1055872 (= e!670467 (Union!2900 call!75379 call!75380))))

(declare-fun c!176672 () Bool)

(declare-fun c!176670 () Bool)

(declare-fun bm!75372 () Bool)

(declare-fun c!176668 () Bool)

(assert (=> bm!75372 (= call!75378 (removeUselessConcat!449 (ite c!176668 (regTwo!6312 (regOne!6312 r!15766)) (ite (or c!176670 c!176672) (regOne!6312 (regOne!6312 r!15766)) (regOne!6313 (regOne!6312 r!15766))))))))

(declare-fun bm!75373 () Bool)

(declare-fun call!75381 () Regex!2900)

(assert (=> bm!75373 (= call!75381 call!75378)))

(declare-fun b!1055873 () Bool)

(declare-fun e!670463 () Regex!2900)

(declare-fun call!75377 () Regex!2900)

(assert (=> b!1055873 (= e!670463 (Concat!4733 call!75379 call!75377))))

(declare-fun c!176671 () Bool)

(declare-fun bm!75374 () Bool)

(assert (=> bm!75374 (= call!75377 (removeUselessConcat!449 (ite c!176672 (regTwo!6312 (regOne!6312 r!15766)) (ite c!176671 (regTwo!6313 (regOne!6312 r!15766)) (reg!3229 (regOne!6312 r!15766))))))))

(declare-fun b!1055874 () Bool)

(assert (=> b!1055874 (= c!176672 (is-Concat!4733 (regOne!6312 r!15766)))))

(declare-fun e!670466 () Regex!2900)

(assert (=> b!1055874 (= e!670466 e!670463)))

(declare-fun b!1055875 () Bool)

(declare-fun c!176669 () Bool)

(assert (=> b!1055875 (= c!176669 (is-Star!2900 (regOne!6312 r!15766)))))

(assert (=> b!1055875 (= e!670467 e!670464)))

(declare-fun b!1055876 () Bool)

(declare-fun e!670465 () Bool)

(declare-fun lt!359055 () Regex!2900)

(assert (=> b!1055876 (= e!670465 (= (nullable!992 lt!359055) (nullable!992 (regOne!6312 r!15766))))))

(declare-fun b!1055877 () Bool)

(assert (=> b!1055877 (= e!670466 call!75381)))

(declare-fun b!1055878 () Bool)

(assert (=> b!1055878 (= e!670464 (Star!2900 call!75380))))

(declare-fun b!1055879 () Bool)

(assert (=> b!1055879 (= e!670463 e!670467)))

(assert (=> b!1055879 (= c!176671 (is-Union!2900 (regOne!6312 r!15766)))))

(declare-fun bm!75375 () Bool)

(assert (=> bm!75375 (= call!75379 call!75381)))

(declare-fun d!300192 () Bool)

(assert (=> d!300192 e!670465))

(declare-fun res!472201 () Bool)

(assert (=> d!300192 (=> (not res!472201) (not e!670465))))

(assert (=> d!300192 (= res!472201 (validRegex!1369 lt!359055))))

(assert (=> d!300192 (= lt!359055 e!670468)))

(assert (=> d!300192 (= c!176668 (and (is-Concat!4733 (regOne!6312 r!15766)) (is-EmptyExpr!2900 (regOne!6312 (regOne!6312 r!15766)))))))

(assert (=> d!300192 (validRegex!1369 (regOne!6312 r!15766))))

(assert (=> d!300192 (= (removeUselessConcat!449 (regOne!6312 r!15766)) lt!359055)))

(declare-fun b!1055880 () Bool)

(assert (=> b!1055880 (= e!670468 e!670466)))

(assert (=> b!1055880 (= c!176670 (and (is-Concat!4733 (regOne!6312 r!15766)) (is-EmptyExpr!2900 (regTwo!6312 (regOne!6312 r!15766)))))))

(declare-fun bm!75376 () Bool)

(assert (=> bm!75376 (= call!75380 call!75377)))

(assert (= (and d!300192 c!176668) b!1055871))

(assert (= (and d!300192 (not c!176668)) b!1055880))

(assert (= (and b!1055880 c!176670) b!1055877))

(assert (= (and b!1055880 (not c!176670)) b!1055874))

(assert (= (and b!1055874 c!176672) b!1055873))

(assert (= (and b!1055874 (not c!176672)) b!1055879))

(assert (= (and b!1055879 c!176671) b!1055872))

(assert (= (and b!1055879 (not c!176671)) b!1055875))

(assert (= (and b!1055875 c!176669) b!1055878))

(assert (= (and b!1055875 (not c!176669)) b!1055870))

(assert (= (or b!1055872 b!1055878) bm!75376))

(assert (= (or b!1055873 bm!75376) bm!75374))

(assert (= (or b!1055873 b!1055872) bm!75375))

(assert (= (or b!1055877 bm!75375) bm!75373))

(assert (= (or b!1055871 bm!75373) bm!75372))

(assert (= (and d!300192 res!472201) b!1055876))

(declare-fun m!1218991 () Bool)

(assert (=> bm!75372 m!1218991))

(declare-fun m!1218993 () Bool)

(assert (=> bm!75374 m!1218993))

(declare-fun m!1218995 () Bool)

(assert (=> b!1055876 m!1218995))

(declare-fun m!1218997 () Bool)

(assert (=> b!1055876 m!1218997))

(declare-fun m!1218999 () Bool)

(assert (=> d!300192 m!1218999))

(assert (=> d!300192 m!1218927))

(assert (=> b!1055541 d!300192))

(declare-fun b!1055881 () Bool)

(declare-fun e!670470 () Regex!2900)

(assert (=> b!1055881 (= e!670470 (regTwo!6312 r!15766))))

(declare-fun b!1055882 () Bool)

(declare-fun e!670474 () Regex!2900)

(declare-fun call!75383 () Regex!2900)

(assert (=> b!1055882 (= e!670474 call!75383)))

(declare-fun b!1055883 () Bool)

(declare-fun e!670473 () Regex!2900)

(declare-fun call!75384 () Regex!2900)

(declare-fun call!75385 () Regex!2900)

(assert (=> b!1055883 (= e!670473 (Union!2900 call!75384 call!75385))))

(declare-fun bm!75377 () Bool)

(declare-fun c!176675 () Bool)

(declare-fun c!176673 () Bool)

(declare-fun c!176677 () Bool)

(assert (=> bm!75377 (= call!75383 (removeUselessConcat!449 (ite c!176673 (regTwo!6312 (regTwo!6312 r!15766)) (ite (or c!176675 c!176677) (regOne!6312 (regTwo!6312 r!15766)) (regOne!6313 (regTwo!6312 r!15766))))))))

(declare-fun bm!75378 () Bool)

(declare-fun call!75386 () Regex!2900)

(assert (=> bm!75378 (= call!75386 call!75383)))

(declare-fun b!1055884 () Bool)

(declare-fun e!670469 () Regex!2900)

(declare-fun call!75382 () Regex!2900)

(assert (=> b!1055884 (= e!670469 (Concat!4733 call!75384 call!75382))))

(declare-fun bm!75379 () Bool)

(declare-fun c!176676 () Bool)

(assert (=> bm!75379 (= call!75382 (removeUselessConcat!449 (ite c!176677 (regTwo!6312 (regTwo!6312 r!15766)) (ite c!176676 (regTwo!6313 (regTwo!6312 r!15766)) (reg!3229 (regTwo!6312 r!15766))))))))

(declare-fun b!1055885 () Bool)

(assert (=> b!1055885 (= c!176677 (is-Concat!4733 (regTwo!6312 r!15766)))))

(declare-fun e!670472 () Regex!2900)

(assert (=> b!1055885 (= e!670472 e!670469)))

(declare-fun b!1055886 () Bool)

(declare-fun c!176674 () Bool)

(assert (=> b!1055886 (= c!176674 (is-Star!2900 (regTwo!6312 r!15766)))))

(assert (=> b!1055886 (= e!670473 e!670470)))

(declare-fun b!1055887 () Bool)

(declare-fun e!670471 () Bool)

(declare-fun lt!359056 () Regex!2900)

(assert (=> b!1055887 (= e!670471 (= (nullable!992 lt!359056) (nullable!992 (regTwo!6312 r!15766))))))

(declare-fun b!1055888 () Bool)

(assert (=> b!1055888 (= e!670472 call!75386)))

(declare-fun b!1055889 () Bool)

(assert (=> b!1055889 (= e!670470 (Star!2900 call!75385))))

(declare-fun b!1055890 () Bool)

(assert (=> b!1055890 (= e!670469 e!670473)))

(assert (=> b!1055890 (= c!176676 (is-Union!2900 (regTwo!6312 r!15766)))))

(declare-fun bm!75380 () Bool)

(assert (=> bm!75380 (= call!75384 call!75386)))

(declare-fun d!300194 () Bool)

(assert (=> d!300194 e!670471))

(declare-fun res!472202 () Bool)

(assert (=> d!300194 (=> (not res!472202) (not e!670471))))

(assert (=> d!300194 (= res!472202 (validRegex!1369 lt!359056))))

(assert (=> d!300194 (= lt!359056 e!670474)))

(assert (=> d!300194 (= c!176673 (and (is-Concat!4733 (regTwo!6312 r!15766)) (is-EmptyExpr!2900 (regOne!6312 (regTwo!6312 r!15766)))))))

(assert (=> d!300194 (validRegex!1369 (regTwo!6312 r!15766))))

(assert (=> d!300194 (= (removeUselessConcat!449 (regTwo!6312 r!15766)) lt!359056)))

(declare-fun b!1055891 () Bool)

(assert (=> b!1055891 (= e!670474 e!670472)))

(assert (=> b!1055891 (= c!176675 (and (is-Concat!4733 (regTwo!6312 r!15766)) (is-EmptyExpr!2900 (regTwo!6312 (regTwo!6312 r!15766)))))))

(declare-fun bm!75381 () Bool)

(assert (=> bm!75381 (= call!75385 call!75382)))

(assert (= (and d!300194 c!176673) b!1055882))

(assert (= (and d!300194 (not c!176673)) b!1055891))

(assert (= (and b!1055891 c!176675) b!1055888))

(assert (= (and b!1055891 (not c!176675)) b!1055885))

(assert (= (and b!1055885 c!176677) b!1055884))

(assert (= (and b!1055885 (not c!176677)) b!1055890))

(assert (= (and b!1055890 c!176676) b!1055883))

(assert (= (and b!1055890 (not c!176676)) b!1055886))

(assert (= (and b!1055886 c!176674) b!1055889))

(assert (= (and b!1055886 (not c!176674)) b!1055881))

(assert (= (or b!1055883 b!1055889) bm!75381))

(assert (= (or b!1055884 bm!75381) bm!75379))

(assert (= (or b!1055884 b!1055883) bm!75380))

(assert (= (or b!1055888 bm!75380) bm!75378))

(assert (= (or b!1055882 bm!75378) bm!75377))

(assert (= (and d!300194 res!472202) b!1055887))

(declare-fun m!1219001 () Bool)

(assert (=> bm!75377 m!1219001))

(declare-fun m!1219003 () Bool)

(assert (=> bm!75379 m!1219003))

(declare-fun m!1219005 () Bool)

(assert (=> b!1055887 m!1219005))

(declare-fun m!1219007 () Bool)

(assert (=> b!1055887 m!1219007))

(declare-fun m!1219009 () Bool)

(assert (=> d!300194 m!1219009))

(declare-fun m!1219011 () Bool)

(assert (=> d!300194 m!1219011))

(assert (=> b!1055541 d!300194))

(declare-fun b!1055914 () Bool)

(declare-fun res!472220 () Bool)

(declare-fun e!670492 () Bool)

(assert (=> b!1055914 (=> (not res!472220) (not e!670492))))

(declare-fun call!75396 () Bool)

(assert (=> b!1055914 (= res!472220 call!75396)))

(declare-fun e!670496 () Bool)

(assert (=> b!1055914 (= e!670496 e!670492)))

(declare-fun bm!75390 () Bool)

(declare-fun c!176682 () Bool)

(declare-fun call!75397 () Bool)

(declare-fun c!176683 () Bool)

(assert (=> bm!75390 (= call!75397 (validRegex!1369 (ite c!176683 (reg!3229 r!15766) (ite c!176682 (regTwo!6313 r!15766) (regTwo!6312 r!15766)))))))

(declare-fun b!1055915 () Bool)

(declare-fun e!670493 () Bool)

(declare-fun call!75395 () Bool)

(assert (=> b!1055915 (= e!670493 call!75395)))

(declare-fun b!1055916 () Bool)

(assert (=> b!1055916 (= e!670492 call!75395)))

(declare-fun b!1055917 () Bool)

(declare-fun e!670491 () Bool)

(declare-fun e!670494 () Bool)

(assert (=> b!1055917 (= e!670491 e!670494)))

(assert (=> b!1055917 (= c!176683 (is-Star!2900 r!15766))))

(declare-fun bm!75391 () Bool)

(assert (=> bm!75391 (= call!75396 (validRegex!1369 (ite c!176682 (regOne!6313 r!15766) (regOne!6312 r!15766))))))

(declare-fun d!300196 () Bool)

(declare-fun res!472221 () Bool)

(assert (=> d!300196 (=> res!472221 e!670491)))

(assert (=> d!300196 (= res!472221 (is-ElementMatch!2900 r!15766))))

(assert (=> d!300196 (= (validRegex!1369 r!15766) e!670491)))

(declare-fun b!1055918 () Bool)

(declare-fun res!472218 () Bool)

(declare-fun e!670495 () Bool)

(assert (=> b!1055918 (=> res!472218 e!670495)))

(assert (=> b!1055918 (= res!472218 (not (is-Concat!4733 r!15766)))))

(assert (=> b!1055918 (= e!670496 e!670495)))

(declare-fun bm!75392 () Bool)

(assert (=> bm!75392 (= call!75395 call!75397)))

(declare-fun b!1055919 () Bool)

(declare-fun e!670497 () Bool)

(assert (=> b!1055919 (= e!670497 call!75397)))

(declare-fun b!1055920 () Bool)

(assert (=> b!1055920 (= e!670494 e!670496)))

(assert (=> b!1055920 (= c!176682 (is-Union!2900 r!15766))))

(declare-fun b!1055921 () Bool)

(assert (=> b!1055921 (= e!670494 e!670497)))

(declare-fun res!472217 () Bool)

(assert (=> b!1055921 (= res!472217 (not (nullable!992 (reg!3229 r!15766))))))

(assert (=> b!1055921 (=> (not res!472217) (not e!670497))))

(declare-fun b!1055922 () Bool)

(assert (=> b!1055922 (= e!670495 e!670493)))

(declare-fun res!472219 () Bool)

(assert (=> b!1055922 (=> (not res!472219) (not e!670493))))

(assert (=> b!1055922 (= res!472219 call!75396)))

(assert (= (and d!300196 (not res!472221)) b!1055917))

(assert (= (and b!1055917 c!176683) b!1055921))

(assert (= (and b!1055917 (not c!176683)) b!1055920))

(assert (= (and b!1055921 res!472217) b!1055919))

(assert (= (and b!1055920 c!176682) b!1055914))

(assert (= (and b!1055920 (not c!176682)) b!1055918))

(assert (= (and b!1055914 res!472220) b!1055916))

(assert (= (and b!1055918 (not res!472218)) b!1055922))

(assert (= (and b!1055922 res!472219) b!1055915))

(assert (= (or b!1055916 b!1055915) bm!75392))

(assert (= (or b!1055914 b!1055922) bm!75391))

(assert (= (or b!1055919 bm!75392) bm!75390))

(declare-fun m!1219013 () Bool)

(assert (=> bm!75390 m!1219013))

(declare-fun m!1219015 () Bool)

(assert (=> bm!75391 m!1219015))

(declare-fun m!1219017 () Bool)

(assert (=> b!1055921 m!1219017))

(assert (=> start!90900 d!300196))

(declare-fun b!1055923 () Bool)

(declare-fun res!472223 () Bool)

(declare-fun e!670503 () Bool)

(assert (=> b!1055923 (=> res!472223 e!670503)))

(assert (=> b!1055923 (= res!472223 (not (is-ElementMatch!2900 (removeUselessConcat!449 r!15766))))))

(declare-fun e!670501 () Bool)

(assert (=> b!1055923 (= e!670501 e!670503)))

(declare-fun b!1055924 () Bool)

(declare-fun e!670499 () Bool)

(assert (=> b!1055924 (= e!670499 (= (head!1947 s!10566) (c!176589 (removeUselessConcat!449 r!15766))))))

(declare-fun b!1055925 () Bool)

(declare-fun e!670500 () Bool)

(declare-fun lt!359057 () Bool)

(declare-fun call!75398 () Bool)

(assert (=> b!1055925 (= e!670500 (= lt!359057 call!75398))))

(declare-fun b!1055926 () Bool)

(assert (=> b!1055926 (= e!670500 e!670501)))

(declare-fun c!176686 () Bool)

(assert (=> b!1055926 (= c!176686 (is-EmptyLang!2900 (removeUselessConcat!449 r!15766)))))

(declare-fun d!300198 () Bool)

(assert (=> d!300198 e!670500))

(declare-fun c!176685 () Bool)

(assert (=> d!300198 (= c!176685 (is-EmptyExpr!2900 (removeUselessConcat!449 r!15766)))))

(declare-fun e!670504 () Bool)

(assert (=> d!300198 (= lt!359057 e!670504)))

(declare-fun c!176684 () Bool)

(assert (=> d!300198 (= c!176684 (isEmpty!6530 s!10566))))

(assert (=> d!300198 (validRegex!1369 (removeUselessConcat!449 r!15766))))

(assert (=> d!300198 (= (matchR!1436 (removeUselessConcat!449 r!15766) s!10566) lt!359057)))

(declare-fun b!1055927 () Bool)

(assert (=> b!1055927 (= e!670501 (not lt!359057))))

(declare-fun b!1055928 () Bool)

(declare-fun res!472226 () Bool)

(declare-fun e!670498 () Bool)

(assert (=> b!1055928 (=> res!472226 e!670498)))

(assert (=> b!1055928 (= res!472226 (not (isEmpty!6530 (tail!1509 s!10566))))))

(declare-fun b!1055929 () Bool)

(declare-fun e!670502 () Bool)

(assert (=> b!1055929 (= e!670502 e!670498)))

(declare-fun res!472228 () Bool)

(assert (=> b!1055929 (=> res!472228 e!670498)))

(assert (=> b!1055929 (= res!472228 call!75398)))

(declare-fun b!1055930 () Bool)

(assert (=> b!1055930 (= e!670498 (not (= (head!1947 s!10566) (c!176589 (removeUselessConcat!449 r!15766)))))))

(declare-fun b!1055931 () Bool)

(declare-fun res!472229 () Bool)

(assert (=> b!1055931 (=> (not res!472229) (not e!670499))))

(assert (=> b!1055931 (= res!472229 (isEmpty!6530 (tail!1509 s!10566)))))

(declare-fun b!1055932 () Bool)

(assert (=> b!1055932 (= e!670503 e!670502)))

(declare-fun res!472227 () Bool)

(assert (=> b!1055932 (=> (not res!472227) (not e!670502))))

(assert (=> b!1055932 (= res!472227 (not lt!359057))))

(declare-fun bm!75393 () Bool)

(assert (=> bm!75393 (= call!75398 (isEmpty!6530 s!10566))))

(declare-fun b!1055933 () Bool)

(declare-fun res!472225 () Bool)

(assert (=> b!1055933 (=> res!472225 e!670503)))

(assert (=> b!1055933 (= res!472225 e!670499)))

(declare-fun res!472224 () Bool)

(assert (=> b!1055933 (=> (not res!472224) (not e!670499))))

(assert (=> b!1055933 (= res!472224 lt!359057)))

(declare-fun b!1055934 () Bool)

(assert (=> b!1055934 (= e!670504 (matchR!1436 (derivativeStep!792 (removeUselessConcat!449 r!15766) (head!1947 s!10566)) (tail!1509 s!10566)))))

(declare-fun b!1055935 () Bool)

(assert (=> b!1055935 (= e!670504 (nullable!992 (removeUselessConcat!449 r!15766)))))

(declare-fun b!1055936 () Bool)

(declare-fun res!472222 () Bool)

(assert (=> b!1055936 (=> (not res!472222) (not e!670499))))

(assert (=> b!1055936 (= res!472222 (not call!75398))))

(assert (= (and d!300198 c!176684) b!1055935))

(assert (= (and d!300198 (not c!176684)) b!1055934))

(assert (= (and d!300198 c!176685) b!1055925))

(assert (= (and d!300198 (not c!176685)) b!1055926))

(assert (= (and b!1055926 c!176686) b!1055927))

(assert (= (and b!1055926 (not c!176686)) b!1055923))

(assert (= (and b!1055923 (not res!472223)) b!1055933))

(assert (= (and b!1055933 res!472224) b!1055936))

(assert (= (and b!1055936 res!472222) b!1055931))

(assert (= (and b!1055931 res!472229) b!1055924))

(assert (= (and b!1055933 (not res!472225)) b!1055932))

(assert (= (and b!1055932 res!472227) b!1055929))

(assert (= (and b!1055929 (not res!472228)) b!1055928))

(assert (= (and b!1055928 (not res!472226)) b!1055930))

(assert (= (or b!1055925 b!1055936 b!1055929) bm!75393))

(assert (=> b!1055930 m!1218891))

(assert (=> bm!75393 m!1218845))

(assert (=> b!1055931 m!1218893))

(assert (=> b!1055931 m!1218893))

(assert (=> b!1055931 m!1218895))

(assert (=> b!1055928 m!1218893))

(assert (=> b!1055928 m!1218893))

(assert (=> b!1055928 m!1218895))

(assert (=> b!1055934 m!1218891))

(assert (=> b!1055934 m!1218849))

(assert (=> b!1055934 m!1218891))

(declare-fun m!1219019 () Bool)

(assert (=> b!1055934 m!1219019))

(assert (=> b!1055934 m!1218893))

(assert (=> b!1055934 m!1219019))

(assert (=> b!1055934 m!1218893))

(declare-fun m!1219021 () Bool)

(assert (=> b!1055934 m!1219021))

(assert (=> b!1055935 m!1218849))

(declare-fun m!1219023 () Bool)

(assert (=> b!1055935 m!1219023))

(assert (=> b!1055924 m!1218891))

(assert (=> d!300198 m!1218845))

(assert (=> d!300198 m!1218849))

(declare-fun m!1219025 () Bool)

(assert (=> d!300198 m!1219025))

(assert (=> b!1055545 d!300198))

(declare-fun b!1055937 () Bool)

(declare-fun e!670506 () Regex!2900)

(assert (=> b!1055937 (= e!670506 r!15766)))

(declare-fun b!1055938 () Bool)

(declare-fun e!670510 () Regex!2900)

(declare-fun call!75400 () Regex!2900)

(assert (=> b!1055938 (= e!670510 call!75400)))

(declare-fun b!1055939 () Bool)

(declare-fun e!670509 () Regex!2900)

(declare-fun call!75401 () Regex!2900)

(declare-fun call!75402 () Regex!2900)

(assert (=> b!1055939 (= e!670509 (Union!2900 call!75401 call!75402))))

(declare-fun c!176689 () Bool)

(declare-fun c!176687 () Bool)

(declare-fun c!176691 () Bool)

(declare-fun bm!75394 () Bool)

(assert (=> bm!75394 (= call!75400 (removeUselessConcat!449 (ite c!176687 (regTwo!6312 r!15766) (ite (or c!176689 c!176691) (regOne!6312 r!15766) (regOne!6313 r!15766)))))))

(declare-fun bm!75395 () Bool)

(declare-fun call!75403 () Regex!2900)

(assert (=> bm!75395 (= call!75403 call!75400)))

(declare-fun b!1055940 () Bool)

(declare-fun e!670505 () Regex!2900)

(declare-fun call!75399 () Regex!2900)

(assert (=> b!1055940 (= e!670505 (Concat!4733 call!75401 call!75399))))

(declare-fun c!176690 () Bool)

(declare-fun bm!75396 () Bool)

(assert (=> bm!75396 (= call!75399 (removeUselessConcat!449 (ite c!176691 (regTwo!6312 r!15766) (ite c!176690 (regTwo!6313 r!15766) (reg!3229 r!15766)))))))

(declare-fun b!1055941 () Bool)

(assert (=> b!1055941 (= c!176691 (is-Concat!4733 r!15766))))

(declare-fun e!670508 () Regex!2900)

(assert (=> b!1055941 (= e!670508 e!670505)))

(declare-fun b!1055942 () Bool)

(declare-fun c!176688 () Bool)

(assert (=> b!1055942 (= c!176688 (is-Star!2900 r!15766))))

(assert (=> b!1055942 (= e!670509 e!670506)))

(declare-fun b!1055943 () Bool)

(declare-fun e!670507 () Bool)

(declare-fun lt!359058 () Regex!2900)

(assert (=> b!1055943 (= e!670507 (= (nullable!992 lt!359058) (nullable!992 r!15766)))))

(declare-fun b!1055944 () Bool)

(assert (=> b!1055944 (= e!670508 call!75403)))

(declare-fun b!1055945 () Bool)

(assert (=> b!1055945 (= e!670506 (Star!2900 call!75402))))

(declare-fun b!1055946 () Bool)

(assert (=> b!1055946 (= e!670505 e!670509)))

(assert (=> b!1055946 (= c!176690 (is-Union!2900 r!15766))))

(declare-fun bm!75397 () Bool)

(assert (=> bm!75397 (= call!75401 call!75403)))

(declare-fun d!300200 () Bool)

(assert (=> d!300200 e!670507))

(declare-fun res!472230 () Bool)

(assert (=> d!300200 (=> (not res!472230) (not e!670507))))

(assert (=> d!300200 (= res!472230 (validRegex!1369 lt!359058))))

(assert (=> d!300200 (= lt!359058 e!670510)))

(assert (=> d!300200 (= c!176687 (and (is-Concat!4733 r!15766) (is-EmptyExpr!2900 (regOne!6312 r!15766))))))

(assert (=> d!300200 (validRegex!1369 r!15766)))

(assert (=> d!300200 (= (removeUselessConcat!449 r!15766) lt!359058)))

(declare-fun b!1055947 () Bool)

(assert (=> b!1055947 (= e!670510 e!670508)))

(assert (=> b!1055947 (= c!176689 (and (is-Concat!4733 r!15766) (is-EmptyExpr!2900 (regTwo!6312 r!15766))))))

(declare-fun bm!75398 () Bool)

(assert (=> bm!75398 (= call!75402 call!75399)))

(assert (= (and d!300200 c!176687) b!1055938))

(assert (= (and d!300200 (not c!176687)) b!1055947))

(assert (= (and b!1055947 c!176689) b!1055944))

(assert (= (and b!1055947 (not c!176689)) b!1055941))

(assert (= (and b!1055941 c!176691) b!1055940))

(assert (= (and b!1055941 (not c!176691)) b!1055946))

(assert (= (and b!1055946 c!176690) b!1055939))

(assert (= (and b!1055946 (not c!176690)) b!1055942))

(assert (= (and b!1055942 c!176688) b!1055945))

(assert (= (and b!1055942 (not c!176688)) b!1055937))

(assert (= (or b!1055939 b!1055945) bm!75398))

(assert (= (or b!1055940 bm!75398) bm!75396))

(assert (= (or b!1055940 b!1055939) bm!75397))

(assert (= (or b!1055944 bm!75397) bm!75395))

(assert (= (or b!1055938 bm!75395) bm!75394))

(assert (= (and d!300200 res!472230) b!1055943))

(declare-fun m!1219027 () Bool)

(assert (=> bm!75394 m!1219027))

(declare-fun m!1219029 () Bool)

(assert (=> bm!75396 m!1219029))

(declare-fun m!1219031 () Bool)

(assert (=> b!1055943 m!1219031))

(assert (=> b!1055943 m!1218901))

(declare-fun m!1219033 () Bool)

(assert (=> d!300200 m!1219033))

(assert (=> d!300200 m!1218821))

(assert (=> b!1055545 d!300200))

(declare-fun b!1055958 () Bool)

(declare-fun e!670513 () Bool)

(assert (=> b!1055958 (= e!670513 tp_is_empty!5443)))

(assert (=> b!1055540 (= tp!317761 e!670513)))

(declare-fun b!1055960 () Bool)

(declare-fun tp!317791 () Bool)

(assert (=> b!1055960 (= e!670513 tp!317791)))

(declare-fun b!1055959 () Bool)

(declare-fun tp!317792 () Bool)

(declare-fun tp!317793 () Bool)

(assert (=> b!1055959 (= e!670513 (and tp!317792 tp!317793))))

(declare-fun b!1055961 () Bool)

(declare-fun tp!317795 () Bool)

(declare-fun tp!317794 () Bool)

(assert (=> b!1055961 (= e!670513 (and tp!317795 tp!317794))))

(assert (= (and b!1055540 (is-ElementMatch!2900 (regOne!6313 r!15766))) b!1055958))

(assert (= (and b!1055540 (is-Concat!4733 (regOne!6313 r!15766))) b!1055959))

(assert (= (and b!1055540 (is-Star!2900 (regOne!6313 r!15766))) b!1055960))

(assert (= (and b!1055540 (is-Union!2900 (regOne!6313 r!15766))) b!1055961))

(declare-fun b!1055962 () Bool)

(declare-fun e!670514 () Bool)

(assert (=> b!1055962 (= e!670514 tp_is_empty!5443)))

(assert (=> b!1055540 (= tp!317758 e!670514)))

(declare-fun b!1055964 () Bool)

(declare-fun tp!317796 () Bool)

(assert (=> b!1055964 (= e!670514 tp!317796)))

(declare-fun b!1055963 () Bool)

(declare-fun tp!317797 () Bool)

(declare-fun tp!317798 () Bool)

(assert (=> b!1055963 (= e!670514 (and tp!317797 tp!317798))))

(declare-fun b!1055965 () Bool)

(declare-fun tp!317800 () Bool)

(declare-fun tp!317799 () Bool)

(assert (=> b!1055965 (= e!670514 (and tp!317800 tp!317799))))

(assert (= (and b!1055540 (is-ElementMatch!2900 (regTwo!6313 r!15766))) b!1055962))

(assert (= (and b!1055540 (is-Concat!4733 (regTwo!6313 r!15766))) b!1055963))

(assert (= (and b!1055540 (is-Star!2900 (regTwo!6313 r!15766))) b!1055964))

(assert (= (and b!1055540 (is-Union!2900 (regTwo!6313 r!15766))) b!1055965))

(declare-fun b!1055970 () Bool)

(declare-fun e!670517 () Bool)

(declare-fun tp!317803 () Bool)

(assert (=> b!1055970 (= e!670517 (and tp_is_empty!5443 tp!317803))))

(assert (=> b!1055544 (= tp!317762 e!670517)))

(assert (= (and b!1055544 (is-Cons!10114 (t!101176 s!10566))) b!1055970))

(declare-fun b!1055971 () Bool)

(declare-fun e!670518 () Bool)

(assert (=> b!1055971 (= e!670518 tp_is_empty!5443)))

(assert (=> b!1055543 (= tp!317759 e!670518)))

(declare-fun b!1055973 () Bool)

(declare-fun tp!317804 () Bool)

(assert (=> b!1055973 (= e!670518 tp!317804)))

(declare-fun b!1055972 () Bool)

(declare-fun tp!317805 () Bool)

(declare-fun tp!317806 () Bool)

(assert (=> b!1055972 (= e!670518 (and tp!317805 tp!317806))))

(declare-fun b!1055974 () Bool)

(declare-fun tp!317808 () Bool)

(declare-fun tp!317807 () Bool)

(assert (=> b!1055974 (= e!670518 (and tp!317808 tp!317807))))

(assert (= (and b!1055543 (is-ElementMatch!2900 (regOne!6312 r!15766))) b!1055971))

(assert (= (and b!1055543 (is-Concat!4733 (regOne!6312 r!15766))) b!1055972))

(assert (= (and b!1055543 (is-Star!2900 (regOne!6312 r!15766))) b!1055973))

(assert (= (and b!1055543 (is-Union!2900 (regOne!6312 r!15766))) b!1055974))

(declare-fun b!1055975 () Bool)

(declare-fun e!670519 () Bool)

(assert (=> b!1055975 (= e!670519 tp_is_empty!5443)))

(assert (=> b!1055543 (= tp!317760 e!670519)))

(declare-fun b!1055977 () Bool)

(declare-fun tp!317809 () Bool)

(assert (=> b!1055977 (= e!670519 tp!317809)))

(declare-fun b!1055976 () Bool)

(declare-fun tp!317810 () Bool)

(declare-fun tp!317811 () Bool)

(assert (=> b!1055976 (= e!670519 (and tp!317810 tp!317811))))

(declare-fun b!1055978 () Bool)

(declare-fun tp!317813 () Bool)

(declare-fun tp!317812 () Bool)

(assert (=> b!1055978 (= e!670519 (and tp!317813 tp!317812))))

(assert (= (and b!1055543 (is-ElementMatch!2900 (regTwo!6312 r!15766))) b!1055975))

(assert (= (and b!1055543 (is-Concat!4733 (regTwo!6312 r!15766))) b!1055976))

(assert (= (and b!1055543 (is-Star!2900 (regTwo!6312 r!15766))) b!1055977))

(assert (= (and b!1055543 (is-Union!2900 (regTwo!6312 r!15766))) b!1055978))

(declare-fun b!1055979 () Bool)

(declare-fun e!670520 () Bool)

(assert (=> b!1055979 (= e!670520 tp_is_empty!5443)))

(assert (=> b!1055548 (= tp!317757 e!670520)))

(declare-fun b!1055981 () Bool)

(declare-fun tp!317814 () Bool)

(assert (=> b!1055981 (= e!670520 tp!317814)))

(declare-fun b!1055980 () Bool)

(declare-fun tp!317815 () Bool)

(declare-fun tp!317816 () Bool)

(assert (=> b!1055980 (= e!670520 (and tp!317815 tp!317816))))

(declare-fun b!1055982 () Bool)

(declare-fun tp!317818 () Bool)

(declare-fun tp!317817 () Bool)

(assert (=> b!1055982 (= e!670520 (and tp!317818 tp!317817))))

(assert (= (and b!1055548 (is-ElementMatch!2900 (reg!3229 r!15766))) b!1055979))

(assert (= (and b!1055548 (is-Concat!4733 (reg!3229 r!15766))) b!1055980))

(assert (= (and b!1055548 (is-Star!2900 (reg!3229 r!15766))) b!1055981))

(assert (= (and b!1055548 (is-Union!2900 (reg!3229 r!15766))) b!1055982))

(push 1)

(assert (not b!1055814))

(assert (not bm!75339))

(assert (not b!1055974))

(assert (not bm!75374))

(assert (not b!1055707))

(assert (not bm!75391))

(assert (not b!1055706))

(assert (not b!1055972))

(assert (not bm!75390))

(assert (not d!300192))

(assert (not d!300194))

(assert (not d!300200))

(assert (not b!1055960))

(assert (not b!1055981))

(assert (not b!1055965))

(assert (not b!1055959))

(assert (not d!300198))

(assert (not b!1055921))

(assert (not b!1055963))

(assert (not bm!75333))

(assert (not b!1055811))

(assert (not b!1055876))

(assert (not d!300176))

(assert (not b!1055772))

(assert (not b!1055977))

(assert (not d!300168))

(assert (not bm!75394))

(assert (not bm!75396))

(assert (not b!1055976))

(assert (not b!1055928))

(assert (not b!1055818))

(assert (not bm!75377))

(assert (not b!1055934))

(assert (not b!1055813))

(assert (not b!1055973))

(assert (not b!1055924))

(assert (not d!300166))

(assert (not b!1055807))

(assert (not b!1055702))

(assert (not b!1055769))

(assert (not bm!75393))

(assert (not b!1055703))

(assert (not b!1055774))

(assert (not b!1055931))

(assert (not d!300170))

(assert tp_is_empty!5443)

(assert (not b!1055970))

(assert (not b!1055982))

(assert (not b!1055768))

(assert (not b!1055767))

(assert (not b!1055773))

(assert (not b!1055629))

(assert (not b!1055943))

(assert (not d!300180))

(assert (not bm!75361))

(assert (not b!1055633))

(assert (not d!300188))

(assert (not b!1055961))

(assert (not d!300190))

(assert (not b!1055700))

(assert (not b!1055980))

(assert (not b!1055887))

(assert (not b!1055930))

(assert (not b!1055935))

(assert (not bm!75379))

(assert (not bm!75334))

(assert (not b!1055964))

(assert (not d!300174))

(assert (not bm!75372))

(assert (not b!1055696))

(assert (not d!300182))

(assert (not b!1055978))

(assert (not b!1055817))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

