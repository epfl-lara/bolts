; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734618 () Bool)

(assert start!734618)

(declare-fun b!7628538 () Bool)

(assert (=> b!7628538 true))

(assert (=> b!7628538 true))

(declare-fun res!3054867 () Bool)

(declare-fun e!4535418 () Bool)

(assert (=> start!734618 (=> (not res!3054867) (not e!4535418))))

(declare-datatypes ((C!41066 0))(
  ( (C!41067 (val!30973 Int)) )
))
(declare-datatypes ((Regex!20370 0))(
  ( (ElementMatch!20370 (c!1405511 C!41066)) (Concat!29215 (regOne!41252 Regex!20370) (regTwo!41252 Regex!20370)) (EmptyExpr!20370) (Star!20370 (reg!20699 Regex!20370)) (EmptyLang!20370) (Union!20370 (regOne!41253 Regex!20370) (regTwo!41253 Regex!20370)) )
))
(declare-fun r!14126 () Regex!20370)

(declare-fun validRegex!10788 (Regex!20370) Bool)

(assert (=> start!734618 (= res!3054867 (validRegex!10788 r!14126))))

(assert (=> start!734618 e!4535418))

(declare-fun e!4535421 () Bool)

(assert (=> start!734618 e!4535421))

(declare-fun e!4535422 () Bool)

(assert (=> start!734618 e!4535422))

(declare-fun b!7628536 () Bool)

(declare-fun tp_is_empty!51095 () Bool)

(declare-fun tp!2227262 () Bool)

(assert (=> b!7628536 (= e!4535422 (and tp_is_empty!51095 tp!2227262))))

(declare-fun b!7628537 () Bool)

(declare-fun e!4535419 () Bool)

(declare-fun e!4535420 () Bool)

(assert (=> b!7628537 (= e!4535419 e!4535420)))

(declare-fun res!3054869 () Bool)

(assert (=> b!7628537 (=> (not res!3054869) (not e!4535420))))

(declare-datatypes ((List!73221 0))(
  ( (Nil!73097) (Cons!73097 (h!79545 C!41066) (t!387956 List!73221)) )
))
(declare-datatypes ((tuple2!69298 0))(
  ( (tuple2!69299 (_1!37952 List!73221) (_2!37952 List!73221)) )
))
(declare-fun lt!2658344 () tuple2!69298)

(declare-fun s!9605 () List!73221)

(declare-fun ++!17654 (List!73221 List!73221) List!73221)

(assert (=> b!7628537 (= res!3054869 (= (++!17654 (_1!37952 lt!2658344) (_2!37952 lt!2658344)) s!9605))))

(declare-fun lt!2658338 () Bool)

(declare-fun lt!2658339 () Bool)

(assert (=> b!7628537 (= lt!2658338 lt!2658339)))

(declare-fun matchRSpec!4533 (Regex!20370 List!73221) Bool)

(assert (=> b!7628537 (= lt!2658339 (matchRSpec!4533 (regTwo!41252 r!14126) (_2!37952 lt!2658344)))))

(declare-fun matchR!9873 (Regex!20370 List!73221) Bool)

(assert (=> b!7628537 (= lt!2658338 (matchR!9873 (regTwo!41252 r!14126) (_2!37952 lt!2658344)))))

(declare-datatypes ((Unit!167668 0))(
  ( (Unit!167669) )
))
(declare-fun lt!2658342 () Unit!167668)

(declare-fun mainMatchTheorem!4523 (Regex!20370 List!73221) Unit!167668)

(assert (=> b!7628537 (= lt!2658342 (mainMatchTheorem!4523 (regTwo!41252 r!14126) (_2!37952 lt!2658344)))))

(declare-fun lt!2658337 () Bool)

(declare-fun lt!2658335 () Bool)

(assert (=> b!7628537 (= lt!2658337 lt!2658335)))

(assert (=> b!7628537 (= lt!2658335 (matchRSpec!4533 (regOne!41252 r!14126) (_1!37952 lt!2658344)))))

(assert (=> b!7628537 (= lt!2658337 (matchR!9873 (regOne!41252 r!14126) (_1!37952 lt!2658344)))))

(declare-fun lt!2658336 () Unit!167668)

(assert (=> b!7628537 (= lt!2658336 (mainMatchTheorem!4523 (regOne!41252 r!14126) (_1!37952 lt!2658344)))))

(declare-fun lambda!468932 () Int)

(declare-fun pickWitness!465 (Int) tuple2!69298)

(assert (=> b!7628537 (= lt!2658344 (pickWitness!465 lambda!468932))))

(declare-fun e!4535423 () Bool)

(assert (=> b!7628538 (= e!4535418 (not e!4535423))))

(declare-fun res!3054866 () Bool)

(assert (=> b!7628538 (=> res!3054866 e!4535423)))

(assert (=> b!7628538 (= res!3054866 (not (matchR!9873 r!14126 s!9605)))))

(declare-fun lt!2658341 () Bool)

(declare-fun Exists!4524 (Int) Bool)

(assert (=> b!7628538 (= lt!2658341 (Exists!4524 lambda!468932))))

(declare-datatypes ((Option!17443 0))(
  ( (None!17442) (Some!17442 (v!54577 tuple2!69298)) )
))
(declare-fun isDefined!14059 (Option!17443) Bool)

(declare-fun findConcatSeparation!3473 (Regex!20370 Regex!20370 List!73221 List!73221 List!73221) Option!17443)

(assert (=> b!7628538 (= lt!2658341 (isDefined!14059 (findConcatSeparation!3473 (regOne!41252 r!14126) (regTwo!41252 r!14126) Nil!73097 s!9605 s!9605)))))

(declare-fun lt!2658340 () Unit!167668)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3231 (Regex!20370 Regex!20370 List!73221) Unit!167668)

(assert (=> b!7628538 (= lt!2658340 (lemmaFindConcatSeparationEquivalentToExists!3231 (regOne!41252 r!14126) (regTwo!41252 r!14126) s!9605))))

(declare-fun b!7628539 () Bool)

(assert (=> b!7628539 (= e!4535420 (and lt!2658335 lt!2658339))))

(declare-fun b!7628540 () Bool)

(assert (=> b!7628540 (= e!4535421 tp_is_empty!51095)))

(declare-fun b!7628541 () Bool)

(declare-fun tp!2227258 () Bool)

(declare-fun tp!2227260 () Bool)

(assert (=> b!7628541 (= e!4535421 (and tp!2227258 tp!2227260))))

(declare-fun b!7628542 () Bool)

(declare-fun tp!2227259 () Bool)

(assert (=> b!7628542 (= e!4535421 tp!2227259)))

(declare-fun b!7628543 () Bool)

(declare-fun tp!2227261 () Bool)

(declare-fun tp!2227263 () Bool)

(assert (=> b!7628543 (= e!4535421 (and tp!2227261 tp!2227263))))

(declare-fun b!7628544 () Bool)

(assert (=> b!7628544 (= e!4535423 e!4535419)))

(declare-fun res!3054865 () Bool)

(assert (=> b!7628544 (=> res!3054865 e!4535419)))

(assert (=> b!7628544 (= res!3054865 (not (Exists!4524 lambda!468932)))))

(assert (=> b!7628544 lt!2658341))

(declare-fun lt!2658343 () Unit!167668)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!277 (Regex!20370 Regex!20370 List!73221) Unit!167668)

(assert (=> b!7628544 (= lt!2658343 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!277 (regOne!41252 r!14126) (regTwo!41252 r!14126) s!9605))))

(declare-fun b!7628545 () Bool)

(declare-fun res!3054868 () Bool)

(assert (=> b!7628545 (=> (not res!3054868) (not e!4535418))))

(assert (=> b!7628545 (= res!3054868 (and (not (is-EmptyExpr!20370 r!14126)) (not (is-EmptyLang!20370 r!14126)) (not (is-ElementMatch!20370 r!14126)) (not (is-Union!20370 r!14126)) (not (is-Star!20370 r!14126))))))

(assert (= (and start!734618 res!3054867) b!7628545))

(assert (= (and b!7628545 res!3054868) b!7628538))

(assert (= (and b!7628538 (not res!3054866)) b!7628544))

(assert (= (and b!7628544 (not res!3054865)) b!7628537))

(assert (= (and b!7628537 res!3054869) b!7628539))

(assert (= (and start!734618 (is-ElementMatch!20370 r!14126)) b!7628540))

(assert (= (and start!734618 (is-Concat!29215 r!14126)) b!7628543))

(assert (= (and start!734618 (is-Star!20370 r!14126)) b!7628542))

(assert (= (and start!734618 (is-Union!20370 r!14126)) b!7628541))

(assert (= (and start!734618 (is-Cons!73097 s!9605)) b!7628536))

(declare-fun m!8156678 () Bool)

(assert (=> start!734618 m!8156678))

(declare-fun m!8156680 () Bool)

(assert (=> b!7628537 m!8156680))

(declare-fun m!8156682 () Bool)

(assert (=> b!7628537 m!8156682))

(declare-fun m!8156684 () Bool)

(assert (=> b!7628537 m!8156684))

(declare-fun m!8156686 () Bool)

(assert (=> b!7628537 m!8156686))

(declare-fun m!8156688 () Bool)

(assert (=> b!7628537 m!8156688))

(declare-fun m!8156690 () Bool)

(assert (=> b!7628537 m!8156690))

(declare-fun m!8156692 () Bool)

(assert (=> b!7628537 m!8156692))

(declare-fun m!8156694 () Bool)

(assert (=> b!7628537 m!8156694))

(declare-fun m!8156696 () Bool)

(assert (=> b!7628538 m!8156696))

(declare-fun m!8156698 () Bool)

(assert (=> b!7628538 m!8156698))

(declare-fun m!8156700 () Bool)

(assert (=> b!7628538 m!8156700))

(assert (=> b!7628538 m!8156698))

(declare-fun m!8156702 () Bool)

(assert (=> b!7628538 m!8156702))

(declare-fun m!8156704 () Bool)

(assert (=> b!7628538 m!8156704))

(assert (=> b!7628544 m!8156704))

(declare-fun m!8156706 () Bool)

(assert (=> b!7628544 m!8156706))

(push 1)

(assert (not b!7628537))

(assert (not b!7628542))

(assert (not b!7628543))

(assert (not b!7628538))

(assert (not b!7628541))

(assert (not b!7628536))

(assert tp_is_empty!51095)

(assert (not start!734618))

(assert (not b!7628544))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7628624 () Bool)

(declare-fun e!4535462 () Bool)

(declare-fun head!15677 (List!73221) C!41066)

(assert (=> b!7628624 (= e!4535462 (= (head!15677 (_1!37952 lt!2658344)) (c!1405511 (regOne!41252 r!14126))))))

(declare-fun b!7628625 () Bool)

(declare-fun e!4535464 () Bool)

(declare-fun e!4535468 () Bool)

(assert (=> b!7628625 (= e!4535464 e!4535468)))

(declare-fun res!3054915 () Bool)

(assert (=> b!7628625 (=> (not res!3054915) (not e!4535468))))

(declare-fun lt!2658377 () Bool)

(assert (=> b!7628625 (= res!3054915 (not lt!2658377))))

(declare-fun b!7628626 () Bool)

(declare-fun e!4535466 () Bool)

(declare-fun derivativeStep!5877 (Regex!20370 C!41066) Regex!20370)

(declare-fun tail!15217 (List!73221) List!73221)

(assert (=> b!7628626 (= e!4535466 (matchR!9873 (derivativeStep!5877 (regOne!41252 r!14126) (head!15677 (_1!37952 lt!2658344))) (tail!15217 (_1!37952 lt!2658344))))))

(declare-fun b!7628627 () Bool)

(declare-fun res!3054919 () Bool)

(assert (=> b!7628627 (=> (not res!3054919) (not e!4535462))))

(declare-fun isEmpty!41724 (List!73221) Bool)

(assert (=> b!7628627 (= res!3054919 (isEmpty!41724 (tail!15217 (_1!37952 lt!2658344))))))

(declare-fun d!2323897 () Bool)

(declare-fun e!4535467 () Bool)

(assert (=> d!2323897 e!4535467))

(declare-fun c!1405519 () Bool)

(assert (=> d!2323897 (= c!1405519 (is-EmptyExpr!20370 (regOne!41252 r!14126)))))

(assert (=> d!2323897 (= lt!2658377 e!4535466)))

(declare-fun c!1405520 () Bool)

(assert (=> d!2323897 (= c!1405520 (isEmpty!41724 (_1!37952 lt!2658344)))))

(assert (=> d!2323897 (validRegex!10788 (regOne!41252 r!14126))))

(assert (=> d!2323897 (= (matchR!9873 (regOne!41252 r!14126) (_1!37952 lt!2658344)) lt!2658377)))

(declare-fun b!7628628 () Bool)

(declare-fun res!3054920 () Bool)

(assert (=> b!7628628 (=> res!3054920 e!4535464)))

(assert (=> b!7628628 (= res!3054920 e!4535462)))

(declare-fun res!3054917 () Bool)

(assert (=> b!7628628 (=> (not res!3054917) (not e!4535462))))

(assert (=> b!7628628 (= res!3054917 lt!2658377)))

(declare-fun b!7628629 () Bool)

(declare-fun call!700353 () Bool)

(assert (=> b!7628629 (= e!4535467 (= lt!2658377 call!700353))))

(declare-fun bm!700348 () Bool)

(assert (=> bm!700348 (= call!700353 (isEmpty!41724 (_1!37952 lt!2658344)))))

(declare-fun b!7628630 () Bool)

(declare-fun e!4535465 () Bool)

(assert (=> b!7628630 (= e!4535468 e!4535465)))

(declare-fun res!3054913 () Bool)

(assert (=> b!7628630 (=> res!3054913 e!4535465)))

(assert (=> b!7628630 (= res!3054913 call!700353)))

(declare-fun b!7628631 () Bool)

(declare-fun e!4535463 () Bool)

(assert (=> b!7628631 (= e!4535463 (not lt!2658377))))

(declare-fun b!7628632 () Bool)

(declare-fun res!3054918 () Bool)

(assert (=> b!7628632 (=> res!3054918 e!4535464)))

(assert (=> b!7628632 (= res!3054918 (not (is-ElementMatch!20370 (regOne!41252 r!14126))))))

(assert (=> b!7628632 (= e!4535463 e!4535464)))

(declare-fun b!7628633 () Bool)

(assert (=> b!7628633 (= e!4535465 (not (= (head!15677 (_1!37952 lt!2658344)) (c!1405511 (regOne!41252 r!14126)))))))

(declare-fun b!7628634 () Bool)

(assert (=> b!7628634 (= e!4535467 e!4535463)))

(declare-fun c!1405521 () Bool)

(assert (=> b!7628634 (= c!1405521 (is-EmptyLang!20370 (regOne!41252 r!14126)))))

(declare-fun b!7628635 () Bool)

(declare-fun res!3054916 () Bool)

(assert (=> b!7628635 (=> (not res!3054916) (not e!4535462))))

(assert (=> b!7628635 (= res!3054916 (not call!700353))))

(declare-fun b!7628636 () Bool)

(declare-fun nullable!8903 (Regex!20370) Bool)

(assert (=> b!7628636 (= e!4535466 (nullable!8903 (regOne!41252 r!14126)))))

(declare-fun b!7628637 () Bool)

(declare-fun res!3054914 () Bool)

(assert (=> b!7628637 (=> res!3054914 e!4535465)))

(assert (=> b!7628637 (= res!3054914 (not (isEmpty!41724 (tail!15217 (_1!37952 lt!2658344)))))))

(assert (= (and d!2323897 c!1405520) b!7628636))

(assert (= (and d!2323897 (not c!1405520)) b!7628626))

(assert (= (and d!2323897 c!1405519) b!7628629))

(assert (= (and d!2323897 (not c!1405519)) b!7628634))

(assert (= (and b!7628634 c!1405521) b!7628631))

(assert (= (and b!7628634 (not c!1405521)) b!7628632))

(assert (= (and b!7628632 (not res!3054918)) b!7628628))

(assert (= (and b!7628628 res!3054917) b!7628635))

(assert (= (and b!7628635 res!3054916) b!7628627))

(assert (= (and b!7628627 res!3054919) b!7628624))

(assert (= (and b!7628628 (not res!3054920)) b!7628625))

(assert (= (and b!7628625 res!3054915) b!7628630))

(assert (= (and b!7628630 (not res!3054913)) b!7628637))

(assert (= (and b!7628637 (not res!3054914)) b!7628633))

(assert (= (or b!7628629 b!7628630 b!7628635) bm!700348))

(declare-fun m!8156738 () Bool)

(assert (=> b!7628636 m!8156738))

(declare-fun m!8156740 () Bool)

(assert (=> b!7628633 m!8156740))

(declare-fun m!8156742 () Bool)

(assert (=> b!7628627 m!8156742))

(assert (=> b!7628627 m!8156742))

(declare-fun m!8156744 () Bool)

(assert (=> b!7628627 m!8156744))

(assert (=> b!7628626 m!8156740))

(assert (=> b!7628626 m!8156740))

(declare-fun m!8156746 () Bool)

(assert (=> b!7628626 m!8156746))

(assert (=> b!7628626 m!8156742))

(assert (=> b!7628626 m!8156746))

(assert (=> b!7628626 m!8156742))

(declare-fun m!8156748 () Bool)

(assert (=> b!7628626 m!8156748))

(assert (=> b!7628624 m!8156740))

(declare-fun m!8156750 () Bool)

(assert (=> d!2323897 m!8156750))

(declare-fun m!8156752 () Bool)

(assert (=> d!2323897 m!8156752))

(assert (=> b!7628637 m!8156742))

(assert (=> b!7628637 m!8156742))

(assert (=> b!7628637 m!8156744))

(assert (=> bm!700348 m!8156750))

(assert (=> b!7628537 d!2323897))

(declare-fun d!2323901 () Bool)

(assert (=> d!2323901 (= (matchR!9873 (regTwo!41252 r!14126) (_2!37952 lt!2658344)) (matchRSpec!4533 (regTwo!41252 r!14126) (_2!37952 lt!2658344)))))

(declare-fun lt!2658380 () Unit!167668)

(declare-fun choose!58879 (Regex!20370 List!73221) Unit!167668)

(assert (=> d!2323901 (= lt!2658380 (choose!58879 (regTwo!41252 r!14126) (_2!37952 lt!2658344)))))

(assert (=> d!2323901 (validRegex!10788 (regTwo!41252 r!14126))))

(assert (=> d!2323901 (= (mainMatchTheorem!4523 (regTwo!41252 r!14126) (_2!37952 lt!2658344)) lt!2658380)))

(declare-fun bs!1943811 () Bool)

(assert (= bs!1943811 d!2323901))

(assert (=> bs!1943811 m!8156684))

(assert (=> bs!1943811 m!8156680))

(declare-fun m!8156754 () Bool)

(assert (=> bs!1943811 m!8156754))

(declare-fun m!8156756 () Bool)

(assert (=> bs!1943811 m!8156756))

(assert (=> b!7628537 d!2323901))

(declare-fun bs!1943812 () Bool)

(declare-fun b!7628700 () Bool)

(assert (= bs!1943812 (and b!7628700 b!7628538)))

(declare-fun lambda!468944 () Int)

(assert (=> bs!1943812 (not (= lambda!468944 lambda!468932))))

(assert (=> b!7628700 true))

(assert (=> b!7628700 true))

(declare-fun bs!1943813 () Bool)

(declare-fun b!7628708 () Bool)

(assert (= bs!1943813 (and b!7628708 b!7628538)))

(declare-fun lambda!468945 () Int)

(assert (=> bs!1943813 (not (= lambda!468945 lambda!468932))))

(declare-fun bs!1943814 () Bool)

(assert (= bs!1943814 (and b!7628708 b!7628700)))

(assert (=> bs!1943814 (not (= lambda!468945 lambda!468944))))

(assert (=> b!7628708 true))

(assert (=> b!7628708 true))

(declare-fun b!7628698 () Bool)

(declare-fun e!4535507 () Bool)

(assert (=> b!7628698 (= e!4535507 (= (_2!37952 lt!2658344) (Cons!73097 (c!1405511 (regTwo!41252 r!14126)) Nil!73097)))))

(declare-fun b!7628699 () Bool)

(declare-fun e!4535505 () Bool)

(declare-fun e!4535504 () Bool)

(assert (=> b!7628699 (= e!4535505 e!4535504)))

(declare-fun res!3054953 () Bool)

(assert (=> b!7628699 (= res!3054953 (not (is-EmptyLang!20370 (regTwo!41252 r!14126))))))

(assert (=> b!7628699 (=> (not res!3054953) (not e!4535504))))

(declare-fun e!4535501 () Bool)

(declare-fun call!700361 () Bool)

(assert (=> b!7628700 (= e!4535501 call!700361)))

(declare-fun bm!700355 () Bool)

(declare-fun call!700360 () Bool)

(assert (=> bm!700355 (= call!700360 (isEmpty!41724 (_2!37952 lt!2658344)))))

(declare-fun bm!700356 () Bool)

(declare-fun c!1405536 () Bool)

(assert (=> bm!700356 (= call!700361 (Exists!4524 (ite c!1405536 lambda!468944 lambda!468945)))))

(declare-fun b!7628701 () Bool)

(declare-fun e!4535506 () Bool)

(declare-fun e!4535502 () Bool)

(assert (=> b!7628701 (= e!4535506 e!4535502)))

(declare-fun res!3054955 () Bool)

(assert (=> b!7628701 (= res!3054955 (matchRSpec!4533 (regOne!41253 (regTwo!41252 r!14126)) (_2!37952 lt!2658344)))))

(assert (=> b!7628701 (=> res!3054955 e!4535502)))

(declare-fun d!2323903 () Bool)

(declare-fun c!1405537 () Bool)

(assert (=> d!2323903 (= c!1405537 (is-EmptyExpr!20370 (regTwo!41252 r!14126)))))

(assert (=> d!2323903 (= (matchRSpec!4533 (regTwo!41252 r!14126) (_2!37952 lt!2658344)) e!4535505)))

(declare-fun b!7628702 () Bool)

(declare-fun res!3054954 () Bool)

(assert (=> b!7628702 (=> res!3054954 e!4535501)))

(assert (=> b!7628702 (= res!3054954 call!700360)))

(declare-fun e!4535503 () Bool)

(assert (=> b!7628702 (= e!4535503 e!4535501)))

(declare-fun b!7628703 () Bool)

(declare-fun c!1405539 () Bool)

(assert (=> b!7628703 (= c!1405539 (is-Union!20370 (regTwo!41252 r!14126)))))

(assert (=> b!7628703 (= e!4535507 e!4535506)))

(declare-fun b!7628704 () Bool)

(assert (=> b!7628704 (= e!4535506 e!4535503)))

(assert (=> b!7628704 (= c!1405536 (is-Star!20370 (regTwo!41252 r!14126)))))

(declare-fun b!7628705 () Bool)

(declare-fun c!1405538 () Bool)

(assert (=> b!7628705 (= c!1405538 (is-ElementMatch!20370 (regTwo!41252 r!14126)))))

(assert (=> b!7628705 (= e!4535504 e!4535507)))

(declare-fun b!7628706 () Bool)

(assert (=> b!7628706 (= e!4535502 (matchRSpec!4533 (regTwo!41253 (regTwo!41252 r!14126)) (_2!37952 lt!2658344)))))

(declare-fun b!7628707 () Bool)

(assert (=> b!7628707 (= e!4535505 call!700360)))

(assert (=> b!7628708 (= e!4535503 call!700361)))

(assert (= (and d!2323903 c!1405537) b!7628707))

(assert (= (and d!2323903 (not c!1405537)) b!7628699))

(assert (= (and b!7628699 res!3054953) b!7628705))

(assert (= (and b!7628705 c!1405538) b!7628698))

(assert (= (and b!7628705 (not c!1405538)) b!7628703))

(assert (= (and b!7628703 c!1405539) b!7628701))

(assert (= (and b!7628703 (not c!1405539)) b!7628704))

(assert (= (and b!7628701 (not res!3054955)) b!7628706))

(assert (= (and b!7628704 c!1405536) b!7628702))

(assert (= (and b!7628704 (not c!1405536)) b!7628708))

(assert (= (and b!7628702 (not res!3054954)) b!7628700))

(assert (= (or b!7628700 b!7628708) bm!700356))

(assert (= (or b!7628707 b!7628702) bm!700355))

(declare-fun m!8156758 () Bool)

(assert (=> bm!700355 m!8156758))

(declare-fun m!8156760 () Bool)

(assert (=> bm!700356 m!8156760))

(declare-fun m!8156762 () Bool)

(assert (=> b!7628701 m!8156762))

(declare-fun m!8156764 () Bool)

(assert (=> b!7628706 m!8156764))

(assert (=> b!7628537 d!2323903))

(declare-fun d!2323905 () Bool)

(assert (=> d!2323905 (= (matchR!9873 (regOne!41252 r!14126) (_1!37952 lt!2658344)) (matchRSpec!4533 (regOne!41252 r!14126) (_1!37952 lt!2658344)))))

(declare-fun lt!2658383 () Unit!167668)

(assert (=> d!2323905 (= lt!2658383 (choose!58879 (regOne!41252 r!14126) (_1!37952 lt!2658344)))))

(assert (=> d!2323905 (validRegex!10788 (regOne!41252 r!14126))))

(assert (=> d!2323905 (= (mainMatchTheorem!4523 (regOne!41252 r!14126) (_1!37952 lt!2658344)) lt!2658383)))

(declare-fun bs!1943815 () Bool)

(assert (= bs!1943815 d!2323905))

(assert (=> bs!1943815 m!8156682))

(assert (=> bs!1943815 m!8156694))

(declare-fun m!8156766 () Bool)

(assert (=> bs!1943815 m!8156766))

(assert (=> bs!1943815 m!8156752))

(assert (=> b!7628537 d!2323905))

(declare-fun bs!1943816 () Bool)

(declare-fun b!7628725 () Bool)

(assert (= bs!1943816 (and b!7628725 b!7628538)))

(declare-fun lambda!468946 () Int)

(assert (=> bs!1943816 (not (= lambda!468946 lambda!468932))))

(declare-fun bs!1943817 () Bool)

(assert (= bs!1943817 (and b!7628725 b!7628700)))

(assert (=> bs!1943817 (= (and (= (_1!37952 lt!2658344) (_2!37952 lt!2658344)) (= (reg!20699 (regOne!41252 r!14126)) (reg!20699 (regTwo!41252 r!14126))) (= (regOne!41252 r!14126) (regTwo!41252 r!14126))) (= lambda!468946 lambda!468944))))

(declare-fun bs!1943818 () Bool)

(assert (= bs!1943818 (and b!7628725 b!7628708)))

(assert (=> bs!1943818 (not (= lambda!468946 lambda!468945))))

(assert (=> b!7628725 true))

(assert (=> b!7628725 true))

(declare-fun bs!1943819 () Bool)

(declare-fun b!7628733 () Bool)

(assert (= bs!1943819 (and b!7628733 b!7628538)))

(declare-fun lambda!468947 () Int)

(assert (=> bs!1943819 (not (= lambda!468947 lambda!468932))))

(declare-fun bs!1943820 () Bool)

(assert (= bs!1943820 (and b!7628733 b!7628700)))

(assert (=> bs!1943820 (not (= lambda!468947 lambda!468944))))

(declare-fun bs!1943821 () Bool)

(assert (= bs!1943821 (and b!7628733 b!7628708)))

(assert (=> bs!1943821 (= (and (= (_1!37952 lt!2658344) (_2!37952 lt!2658344)) (= (regOne!41252 (regOne!41252 r!14126)) (regOne!41252 (regTwo!41252 r!14126))) (= (regTwo!41252 (regOne!41252 r!14126)) (regTwo!41252 (regTwo!41252 r!14126)))) (= lambda!468947 lambda!468945))))

(declare-fun bs!1943822 () Bool)

(assert (= bs!1943822 (and b!7628733 b!7628725)))

(assert (=> bs!1943822 (not (= lambda!468947 lambda!468946))))

(assert (=> b!7628733 true))

(assert (=> b!7628733 true))

(declare-fun b!7628723 () Bool)

(declare-fun e!4535521 () Bool)

(assert (=> b!7628723 (= e!4535521 (= (_1!37952 lt!2658344) (Cons!73097 (c!1405511 (regOne!41252 r!14126)) Nil!73097)))))

(declare-fun b!7628724 () Bool)

(declare-fun e!4535519 () Bool)

(declare-fun e!4535518 () Bool)

(assert (=> b!7628724 (= e!4535519 e!4535518)))

(declare-fun res!3054964 () Bool)

(assert (=> b!7628724 (= res!3054964 (not (is-EmptyLang!20370 (regOne!41252 r!14126))))))

(assert (=> b!7628724 (=> (not res!3054964) (not e!4535518))))

(declare-fun e!4535515 () Bool)

(declare-fun call!700364 () Bool)

(assert (=> b!7628725 (= e!4535515 call!700364)))

(declare-fun bm!700358 () Bool)

(declare-fun call!700363 () Bool)

(assert (=> bm!700358 (= call!700363 (isEmpty!41724 (_1!37952 lt!2658344)))))

(declare-fun bm!700359 () Bool)

(declare-fun c!1405543 () Bool)

(assert (=> bm!700359 (= call!700364 (Exists!4524 (ite c!1405543 lambda!468946 lambda!468947)))))

(declare-fun b!7628726 () Bool)

(declare-fun e!4535520 () Bool)

(declare-fun e!4535516 () Bool)

(assert (=> b!7628726 (= e!4535520 e!4535516)))

(declare-fun res!3054966 () Bool)

(assert (=> b!7628726 (= res!3054966 (matchRSpec!4533 (regOne!41253 (regOne!41252 r!14126)) (_1!37952 lt!2658344)))))

(assert (=> b!7628726 (=> res!3054966 e!4535516)))

(declare-fun d!2323907 () Bool)

(declare-fun c!1405544 () Bool)

(assert (=> d!2323907 (= c!1405544 (is-EmptyExpr!20370 (regOne!41252 r!14126)))))

(assert (=> d!2323907 (= (matchRSpec!4533 (regOne!41252 r!14126) (_1!37952 lt!2658344)) e!4535519)))

(declare-fun b!7628727 () Bool)

(declare-fun res!3054965 () Bool)

(assert (=> b!7628727 (=> res!3054965 e!4535515)))

(assert (=> b!7628727 (= res!3054965 call!700363)))

(declare-fun e!4535517 () Bool)

(assert (=> b!7628727 (= e!4535517 e!4535515)))

(declare-fun b!7628728 () Bool)

(declare-fun c!1405546 () Bool)

(assert (=> b!7628728 (= c!1405546 (is-Union!20370 (regOne!41252 r!14126)))))

(assert (=> b!7628728 (= e!4535521 e!4535520)))

(declare-fun b!7628729 () Bool)

(assert (=> b!7628729 (= e!4535520 e!4535517)))

(assert (=> b!7628729 (= c!1405543 (is-Star!20370 (regOne!41252 r!14126)))))

(declare-fun b!7628730 () Bool)

(declare-fun c!1405545 () Bool)

(assert (=> b!7628730 (= c!1405545 (is-ElementMatch!20370 (regOne!41252 r!14126)))))

(assert (=> b!7628730 (= e!4535518 e!4535521)))

(declare-fun b!7628731 () Bool)

(assert (=> b!7628731 (= e!4535516 (matchRSpec!4533 (regTwo!41253 (regOne!41252 r!14126)) (_1!37952 lt!2658344)))))

(declare-fun b!7628732 () Bool)

(assert (=> b!7628732 (= e!4535519 call!700363)))

(assert (=> b!7628733 (= e!4535517 call!700364)))

(assert (= (and d!2323907 c!1405544) b!7628732))

(assert (= (and d!2323907 (not c!1405544)) b!7628724))

(assert (= (and b!7628724 res!3054964) b!7628730))

(assert (= (and b!7628730 c!1405545) b!7628723))

(assert (= (and b!7628730 (not c!1405545)) b!7628728))

(assert (= (and b!7628728 c!1405546) b!7628726))

(assert (= (and b!7628728 (not c!1405546)) b!7628729))

(assert (= (and b!7628726 (not res!3054966)) b!7628731))

(assert (= (and b!7628729 c!1405543) b!7628727))

(assert (= (and b!7628729 (not c!1405543)) b!7628733))

(assert (= (and b!7628727 (not res!3054965)) b!7628725))

(assert (= (or b!7628725 b!7628733) bm!700359))

(assert (= (or b!7628732 b!7628727) bm!700358))

(assert (=> bm!700358 m!8156750))

(declare-fun m!8156780 () Bool)

(assert (=> bm!700359 m!8156780))

(declare-fun m!8156782 () Bool)

(assert (=> b!7628726 m!8156782))

(declare-fun m!8156784 () Bool)

(assert (=> b!7628731 m!8156784))

(assert (=> b!7628537 d!2323907))

(declare-fun d!2323909 () Bool)

(declare-fun lt!2658387 () tuple2!69298)

(declare-fun dynLambda!29922 (Int tuple2!69298) Bool)

(assert (=> d!2323909 (dynLambda!29922 lambda!468932 lt!2658387)))

(declare-fun choose!58880 (Int) tuple2!69298)

(assert (=> d!2323909 (= lt!2658387 (choose!58880 lambda!468932))))

(assert (=> d!2323909 (Exists!4524 lambda!468932)))

(assert (=> d!2323909 (= (pickWitness!465 lambda!468932) lt!2658387)))

(declare-fun b_lambda!289035 () Bool)

(assert (=> (not b_lambda!289035) (not d!2323909)))

(declare-fun bs!1943823 () Bool)

(assert (= bs!1943823 d!2323909))

(declare-fun m!8156790 () Bool)

(assert (=> bs!1943823 m!8156790))

(declare-fun m!8156792 () Bool)

(assert (=> bs!1943823 m!8156792))

(assert (=> bs!1943823 m!8156704))

(assert (=> b!7628537 d!2323909))

(declare-fun d!2323913 () Bool)

(declare-fun e!4535526 () Bool)

(assert (=> d!2323913 e!4535526))

(declare-fun res!3054972 () Bool)

(assert (=> d!2323913 (=> (not res!3054972) (not e!4535526))))

(declare-fun lt!2658390 () List!73221)

(declare-fun content!15464 (List!73221) (Set C!41066))

(assert (=> d!2323913 (= res!3054972 (= (content!15464 lt!2658390) (set.union (content!15464 (_1!37952 lt!2658344)) (content!15464 (_2!37952 lt!2658344)))))))

(declare-fun e!4535527 () List!73221)

(assert (=> d!2323913 (= lt!2658390 e!4535527)))

(declare-fun c!1405549 () Bool)

(assert (=> d!2323913 (= c!1405549 (is-Nil!73097 (_1!37952 lt!2658344)))))

(assert (=> d!2323913 (= (++!17654 (_1!37952 lt!2658344) (_2!37952 lt!2658344)) lt!2658390)))

(declare-fun b!7628745 () Bool)

(assert (=> b!7628745 (= e!4535526 (or (not (= (_2!37952 lt!2658344) Nil!73097)) (= lt!2658390 (_1!37952 lt!2658344))))))

(declare-fun b!7628744 () Bool)

(declare-fun res!3054971 () Bool)

(assert (=> b!7628744 (=> (not res!3054971) (not e!4535526))))

(declare-fun size!42557 (List!73221) Int)

(assert (=> b!7628744 (= res!3054971 (= (size!42557 lt!2658390) (+ (size!42557 (_1!37952 lt!2658344)) (size!42557 (_2!37952 lt!2658344)))))))

(declare-fun b!7628742 () Bool)

(assert (=> b!7628742 (= e!4535527 (_2!37952 lt!2658344))))

(declare-fun b!7628743 () Bool)

(assert (=> b!7628743 (= e!4535527 (Cons!73097 (h!79545 (_1!37952 lt!2658344)) (++!17654 (t!387956 (_1!37952 lt!2658344)) (_2!37952 lt!2658344))))))

(assert (= (and d!2323913 c!1405549) b!7628742))

(assert (= (and d!2323913 (not c!1405549)) b!7628743))

(assert (= (and d!2323913 res!3054972) b!7628744))

(assert (= (and b!7628744 res!3054971) b!7628745))

(declare-fun m!8156794 () Bool)

(assert (=> d!2323913 m!8156794))

(declare-fun m!8156796 () Bool)

(assert (=> d!2323913 m!8156796))

(declare-fun m!8156798 () Bool)

(assert (=> d!2323913 m!8156798))

(declare-fun m!8156800 () Bool)

(assert (=> b!7628744 m!8156800))

(declare-fun m!8156802 () Bool)

(assert (=> b!7628744 m!8156802))

(declare-fun m!8156804 () Bool)

(assert (=> b!7628744 m!8156804))

(declare-fun m!8156806 () Bool)

(assert (=> b!7628743 m!8156806))

(assert (=> b!7628537 d!2323913))

(declare-fun b!7628746 () Bool)

(declare-fun e!4535528 () Bool)

(assert (=> b!7628746 (= e!4535528 (= (head!15677 (_2!37952 lt!2658344)) (c!1405511 (regTwo!41252 r!14126))))))

(declare-fun b!7628747 () Bool)

(declare-fun e!4535530 () Bool)

(declare-fun e!4535534 () Bool)

(assert (=> b!7628747 (= e!4535530 e!4535534)))

(declare-fun res!3054975 () Bool)

(assert (=> b!7628747 (=> (not res!3054975) (not e!4535534))))

(declare-fun lt!2658391 () Bool)

(assert (=> b!7628747 (= res!3054975 (not lt!2658391))))

(declare-fun b!7628748 () Bool)

(declare-fun e!4535532 () Bool)

(assert (=> b!7628748 (= e!4535532 (matchR!9873 (derivativeStep!5877 (regTwo!41252 r!14126) (head!15677 (_2!37952 lt!2658344))) (tail!15217 (_2!37952 lt!2658344))))))

(declare-fun b!7628749 () Bool)

(declare-fun res!3054979 () Bool)

(assert (=> b!7628749 (=> (not res!3054979) (not e!4535528))))

(assert (=> b!7628749 (= res!3054979 (isEmpty!41724 (tail!15217 (_2!37952 lt!2658344))))))

(declare-fun d!2323915 () Bool)

(declare-fun e!4535533 () Bool)

(assert (=> d!2323915 e!4535533))

(declare-fun c!1405550 () Bool)

(assert (=> d!2323915 (= c!1405550 (is-EmptyExpr!20370 (regTwo!41252 r!14126)))))

(assert (=> d!2323915 (= lt!2658391 e!4535532)))

(declare-fun c!1405551 () Bool)

(assert (=> d!2323915 (= c!1405551 (isEmpty!41724 (_2!37952 lt!2658344)))))

(assert (=> d!2323915 (validRegex!10788 (regTwo!41252 r!14126))))

(assert (=> d!2323915 (= (matchR!9873 (regTwo!41252 r!14126) (_2!37952 lt!2658344)) lt!2658391)))

(declare-fun b!7628750 () Bool)

(declare-fun res!3054980 () Bool)

(assert (=> b!7628750 (=> res!3054980 e!4535530)))

(assert (=> b!7628750 (= res!3054980 e!4535528)))

(declare-fun res!3054977 () Bool)

(assert (=> b!7628750 (=> (not res!3054977) (not e!4535528))))

(assert (=> b!7628750 (= res!3054977 lt!2658391)))

(declare-fun b!7628751 () Bool)

(declare-fun call!700365 () Bool)

(assert (=> b!7628751 (= e!4535533 (= lt!2658391 call!700365))))

(declare-fun bm!700360 () Bool)

(assert (=> bm!700360 (= call!700365 (isEmpty!41724 (_2!37952 lt!2658344)))))

(declare-fun b!7628752 () Bool)

(declare-fun e!4535531 () Bool)

(assert (=> b!7628752 (= e!4535534 e!4535531)))

(declare-fun res!3054973 () Bool)

(assert (=> b!7628752 (=> res!3054973 e!4535531)))

(assert (=> b!7628752 (= res!3054973 call!700365)))

(declare-fun b!7628753 () Bool)

(declare-fun e!4535529 () Bool)

(assert (=> b!7628753 (= e!4535529 (not lt!2658391))))

(declare-fun b!7628754 () Bool)

(declare-fun res!3054978 () Bool)

(assert (=> b!7628754 (=> res!3054978 e!4535530)))

(assert (=> b!7628754 (= res!3054978 (not (is-ElementMatch!20370 (regTwo!41252 r!14126))))))

(assert (=> b!7628754 (= e!4535529 e!4535530)))

(declare-fun b!7628755 () Bool)

(assert (=> b!7628755 (= e!4535531 (not (= (head!15677 (_2!37952 lt!2658344)) (c!1405511 (regTwo!41252 r!14126)))))))

(declare-fun b!7628756 () Bool)

(assert (=> b!7628756 (= e!4535533 e!4535529)))

(declare-fun c!1405552 () Bool)

(assert (=> b!7628756 (= c!1405552 (is-EmptyLang!20370 (regTwo!41252 r!14126)))))

(declare-fun b!7628757 () Bool)

(declare-fun res!3054976 () Bool)

(assert (=> b!7628757 (=> (not res!3054976) (not e!4535528))))

(assert (=> b!7628757 (= res!3054976 (not call!700365))))

(declare-fun b!7628758 () Bool)

(assert (=> b!7628758 (= e!4535532 (nullable!8903 (regTwo!41252 r!14126)))))

(declare-fun b!7628759 () Bool)

(declare-fun res!3054974 () Bool)

(assert (=> b!7628759 (=> res!3054974 e!4535531)))

(assert (=> b!7628759 (= res!3054974 (not (isEmpty!41724 (tail!15217 (_2!37952 lt!2658344)))))))

(assert (= (and d!2323915 c!1405551) b!7628758))

(assert (= (and d!2323915 (not c!1405551)) b!7628748))

(assert (= (and d!2323915 c!1405550) b!7628751))

(assert (= (and d!2323915 (not c!1405550)) b!7628756))

(assert (= (and b!7628756 c!1405552) b!7628753))

(assert (= (and b!7628756 (not c!1405552)) b!7628754))

(assert (= (and b!7628754 (not res!3054978)) b!7628750))

(assert (= (and b!7628750 res!3054977) b!7628757))

(assert (= (and b!7628757 res!3054976) b!7628749))

(assert (= (and b!7628749 res!3054979) b!7628746))

(assert (= (and b!7628750 (not res!3054980)) b!7628747))

(assert (= (and b!7628747 res!3054975) b!7628752))

(assert (= (and b!7628752 (not res!3054973)) b!7628759))

(assert (= (and b!7628759 (not res!3054974)) b!7628755))

(assert (= (or b!7628751 b!7628752 b!7628757) bm!700360))

(declare-fun m!8156808 () Bool)

(assert (=> b!7628758 m!8156808))

(declare-fun m!8156810 () Bool)

(assert (=> b!7628755 m!8156810))

(declare-fun m!8156812 () Bool)

(assert (=> b!7628749 m!8156812))

(assert (=> b!7628749 m!8156812))

(declare-fun m!8156814 () Bool)

(assert (=> b!7628749 m!8156814))

(assert (=> b!7628748 m!8156810))

(assert (=> b!7628748 m!8156810))

(declare-fun m!8156816 () Bool)

(assert (=> b!7628748 m!8156816))

(assert (=> b!7628748 m!8156812))

(assert (=> b!7628748 m!8156816))

(assert (=> b!7628748 m!8156812))

(declare-fun m!8156818 () Bool)

(assert (=> b!7628748 m!8156818))

(assert (=> b!7628746 m!8156810))

(assert (=> d!2323915 m!8156758))

(assert (=> d!2323915 m!8156756))

(assert (=> b!7628759 m!8156812))

(assert (=> b!7628759 m!8156812))

(assert (=> b!7628759 m!8156814))

(assert (=> bm!700360 m!8156758))

(assert (=> b!7628537 d!2323915))

(declare-fun b!7628792 () Bool)

(declare-fun e!4535560 () Bool)

(declare-fun e!4535557 () Bool)

(assert (=> b!7628792 (= e!4535560 e!4535557)))

(declare-fun res!3055003 () Bool)

(assert (=> b!7628792 (= res!3055003 (not (nullable!8903 (reg!20699 r!14126))))))

(assert (=> b!7628792 (=> (not res!3055003) (not e!4535557))))

(declare-fun bm!700368 () Bool)

(declare-fun call!700375 () Bool)

(declare-fun c!1405561 () Bool)

(assert (=> bm!700368 (= call!700375 (validRegex!10788 (ite c!1405561 (regTwo!41253 r!14126) (regTwo!41252 r!14126))))))

(declare-fun bm!700369 () Bool)

(declare-fun call!700373 () Bool)

(declare-fun c!1405560 () Bool)

(assert (=> bm!700369 (= call!700373 (validRegex!10788 (ite c!1405560 (reg!20699 r!14126) (ite c!1405561 (regOne!41253 r!14126) (regOne!41252 r!14126)))))))

(declare-fun b!7628793 () Bool)

(declare-fun e!4535561 () Bool)

(declare-fun e!4535562 () Bool)

(assert (=> b!7628793 (= e!4535561 e!4535562)))

(declare-fun res!3055002 () Bool)

(assert (=> b!7628793 (=> (not res!3055002) (not e!4535562))))

(declare-fun call!700374 () Bool)

(assert (=> b!7628793 (= res!3055002 call!700374)))

(declare-fun d!2323917 () Bool)

(declare-fun res!3055000 () Bool)

(declare-fun e!4535559 () Bool)

(assert (=> d!2323917 (=> res!3055000 e!4535559)))

(assert (=> d!2323917 (= res!3055000 (is-ElementMatch!20370 r!14126))))

(assert (=> d!2323917 (= (validRegex!10788 r!14126) e!4535559)))

(declare-fun bm!700370 () Bool)

(assert (=> bm!700370 (= call!700374 call!700373)))

(declare-fun b!7628794 () Bool)

(assert (=> b!7628794 (= e!4535559 e!4535560)))

(assert (=> b!7628794 (= c!1405560 (is-Star!20370 r!14126))))

(declare-fun b!7628795 () Bool)

(assert (=> b!7628795 (= e!4535562 call!700375)))

(declare-fun b!7628796 () Bool)

(declare-fun e!4535556 () Bool)

(assert (=> b!7628796 (= e!4535560 e!4535556)))

(assert (=> b!7628796 (= c!1405561 (is-Union!20370 r!14126))))

(declare-fun b!7628797 () Bool)

(declare-fun e!4535558 () Bool)

(assert (=> b!7628797 (= e!4535558 call!700375)))

(declare-fun b!7628798 () Bool)

(assert (=> b!7628798 (= e!4535557 call!700373)))

(declare-fun b!7628799 () Bool)

(declare-fun res!3054999 () Bool)

(assert (=> b!7628799 (=> (not res!3054999) (not e!4535558))))

(assert (=> b!7628799 (= res!3054999 call!700374)))

(assert (=> b!7628799 (= e!4535556 e!4535558)))

(declare-fun b!7628800 () Bool)

(declare-fun res!3055001 () Bool)

(assert (=> b!7628800 (=> res!3055001 e!4535561)))

(assert (=> b!7628800 (= res!3055001 (not (is-Concat!29215 r!14126)))))

(assert (=> b!7628800 (= e!4535556 e!4535561)))

(assert (= (and d!2323917 (not res!3055000)) b!7628794))

(assert (= (and b!7628794 c!1405560) b!7628792))

(assert (= (and b!7628794 (not c!1405560)) b!7628796))

(assert (= (and b!7628792 res!3055003) b!7628798))

(assert (= (and b!7628796 c!1405561) b!7628799))

(assert (= (and b!7628796 (not c!1405561)) b!7628800))

(assert (= (and b!7628799 res!3054999) b!7628797))

(assert (= (and b!7628800 (not res!3055001)) b!7628793))

(assert (= (and b!7628793 res!3055002) b!7628795))

(assert (= (or b!7628799 b!7628793) bm!700370))

(assert (= (or b!7628797 b!7628795) bm!700368))

(assert (= (or b!7628798 bm!700370) bm!700369))

(declare-fun m!8156840 () Bool)

(assert (=> b!7628792 m!8156840))

(declare-fun m!8156842 () Bool)

(assert (=> bm!700368 m!8156842))

(declare-fun m!8156844 () Bool)

(assert (=> bm!700369 m!8156844))

(assert (=> start!734618 d!2323917))

(declare-fun d!2323925 () Bool)

(declare-fun choose!58881 (Int) Bool)

(assert (=> d!2323925 (= (Exists!4524 lambda!468932) (choose!58881 lambda!468932))))

(declare-fun bs!1943826 () Bool)

(assert (= bs!1943826 d!2323925))

(declare-fun m!8156846 () Bool)

(assert (=> bs!1943826 m!8156846))

(assert (=> b!7628544 d!2323925))

(declare-fun d!2323927 () Bool)

(assert (=> d!2323927 (isDefined!14059 (findConcatSeparation!3473 (regOne!41252 r!14126) (regTwo!41252 r!14126) Nil!73097 s!9605 s!9605))))

(declare-fun lt!2658399 () Unit!167668)

(declare-fun choose!58882 (Regex!20370 Regex!20370 List!73221) Unit!167668)

(assert (=> d!2323927 (= lt!2658399 (choose!58882 (regOne!41252 r!14126) (regTwo!41252 r!14126) s!9605))))

(assert (=> d!2323927 (validRegex!10788 (regOne!41252 r!14126))))

(assert (=> d!2323927 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!277 (regOne!41252 r!14126) (regTwo!41252 r!14126) s!9605) lt!2658399)))

(declare-fun bs!1943827 () Bool)

(assert (= bs!1943827 d!2323927))

(assert (=> bs!1943827 m!8156698))

(assert (=> bs!1943827 m!8156698))

(assert (=> bs!1943827 m!8156702))

(declare-fun m!8156848 () Bool)

(assert (=> bs!1943827 m!8156848))

(assert (=> bs!1943827 m!8156752))

(assert (=> b!7628544 d!2323927))

(declare-fun b!7628801 () Bool)

(declare-fun e!4535563 () Bool)

(assert (=> b!7628801 (= e!4535563 (= (head!15677 s!9605) (c!1405511 r!14126)))))

(declare-fun b!7628802 () Bool)

(declare-fun e!4535565 () Bool)

(declare-fun e!4535569 () Bool)

(assert (=> b!7628802 (= e!4535565 e!4535569)))

(declare-fun res!3055006 () Bool)

(assert (=> b!7628802 (=> (not res!3055006) (not e!4535569))))

(declare-fun lt!2658400 () Bool)

(assert (=> b!7628802 (= res!3055006 (not lt!2658400))))

(declare-fun b!7628803 () Bool)

(declare-fun e!4535567 () Bool)

(assert (=> b!7628803 (= e!4535567 (matchR!9873 (derivativeStep!5877 r!14126 (head!15677 s!9605)) (tail!15217 s!9605)))))

(declare-fun b!7628804 () Bool)

(declare-fun res!3055010 () Bool)

(assert (=> b!7628804 (=> (not res!3055010) (not e!4535563))))

(assert (=> b!7628804 (= res!3055010 (isEmpty!41724 (tail!15217 s!9605)))))

(declare-fun d!2323929 () Bool)

(declare-fun e!4535568 () Bool)

(assert (=> d!2323929 e!4535568))

(declare-fun c!1405562 () Bool)

(assert (=> d!2323929 (= c!1405562 (is-EmptyExpr!20370 r!14126))))

(assert (=> d!2323929 (= lt!2658400 e!4535567)))

(declare-fun c!1405563 () Bool)

(assert (=> d!2323929 (= c!1405563 (isEmpty!41724 s!9605))))

(assert (=> d!2323929 (validRegex!10788 r!14126)))

(assert (=> d!2323929 (= (matchR!9873 r!14126 s!9605) lt!2658400)))

(declare-fun b!7628805 () Bool)

(declare-fun res!3055011 () Bool)

(assert (=> b!7628805 (=> res!3055011 e!4535565)))

(assert (=> b!7628805 (= res!3055011 e!4535563)))

(declare-fun res!3055008 () Bool)

(assert (=> b!7628805 (=> (not res!3055008) (not e!4535563))))

(assert (=> b!7628805 (= res!3055008 lt!2658400)))

(declare-fun b!7628806 () Bool)

(declare-fun call!700376 () Bool)

(assert (=> b!7628806 (= e!4535568 (= lt!2658400 call!700376))))

(declare-fun bm!700371 () Bool)

(assert (=> bm!700371 (= call!700376 (isEmpty!41724 s!9605))))

(declare-fun b!7628807 () Bool)

(declare-fun e!4535566 () Bool)

(assert (=> b!7628807 (= e!4535569 e!4535566)))

(declare-fun res!3055004 () Bool)

(assert (=> b!7628807 (=> res!3055004 e!4535566)))

(assert (=> b!7628807 (= res!3055004 call!700376)))

(declare-fun b!7628808 () Bool)

(declare-fun e!4535564 () Bool)

(assert (=> b!7628808 (= e!4535564 (not lt!2658400))))

(declare-fun b!7628809 () Bool)

(declare-fun res!3055009 () Bool)

(assert (=> b!7628809 (=> res!3055009 e!4535565)))

(assert (=> b!7628809 (= res!3055009 (not (is-ElementMatch!20370 r!14126)))))

(assert (=> b!7628809 (= e!4535564 e!4535565)))

(declare-fun b!7628810 () Bool)

(assert (=> b!7628810 (= e!4535566 (not (= (head!15677 s!9605) (c!1405511 r!14126))))))

(declare-fun b!7628811 () Bool)

(assert (=> b!7628811 (= e!4535568 e!4535564)))

(declare-fun c!1405564 () Bool)

(assert (=> b!7628811 (= c!1405564 (is-EmptyLang!20370 r!14126))))

(declare-fun b!7628812 () Bool)

(declare-fun res!3055007 () Bool)

(assert (=> b!7628812 (=> (not res!3055007) (not e!4535563))))

(assert (=> b!7628812 (= res!3055007 (not call!700376))))

(declare-fun b!7628813 () Bool)

(assert (=> b!7628813 (= e!4535567 (nullable!8903 r!14126))))

(declare-fun b!7628814 () Bool)

(declare-fun res!3055005 () Bool)

(assert (=> b!7628814 (=> res!3055005 e!4535566)))

(assert (=> b!7628814 (= res!3055005 (not (isEmpty!41724 (tail!15217 s!9605))))))

(assert (= (and d!2323929 c!1405563) b!7628813))

(assert (= (and d!2323929 (not c!1405563)) b!7628803))

(assert (= (and d!2323929 c!1405562) b!7628806))

(assert (= (and d!2323929 (not c!1405562)) b!7628811))

(assert (= (and b!7628811 c!1405564) b!7628808))

(assert (= (and b!7628811 (not c!1405564)) b!7628809))

(assert (= (and b!7628809 (not res!3055009)) b!7628805))

(assert (= (and b!7628805 res!3055008) b!7628812))

(assert (= (and b!7628812 res!3055007) b!7628804))

(assert (= (and b!7628804 res!3055010) b!7628801))

(assert (= (and b!7628805 (not res!3055011)) b!7628802))

(assert (= (and b!7628802 res!3055006) b!7628807))

(assert (= (and b!7628807 (not res!3055004)) b!7628814))

(assert (= (and b!7628814 (not res!3055005)) b!7628810))

(assert (= (or b!7628806 b!7628807 b!7628812) bm!700371))

(declare-fun m!8156850 () Bool)

(assert (=> b!7628813 m!8156850))

(declare-fun m!8156852 () Bool)

(assert (=> b!7628810 m!8156852))

(declare-fun m!8156854 () Bool)

(assert (=> b!7628804 m!8156854))

(assert (=> b!7628804 m!8156854))

(declare-fun m!8156856 () Bool)

(assert (=> b!7628804 m!8156856))

(assert (=> b!7628803 m!8156852))

(assert (=> b!7628803 m!8156852))

(declare-fun m!8156858 () Bool)

(assert (=> b!7628803 m!8156858))

(assert (=> b!7628803 m!8156854))

(assert (=> b!7628803 m!8156858))

(assert (=> b!7628803 m!8156854))

(declare-fun m!8156860 () Bool)

(assert (=> b!7628803 m!8156860))

(assert (=> b!7628801 m!8156852))

(declare-fun m!8156862 () Bool)

(assert (=> d!2323929 m!8156862))

(assert (=> d!2323929 m!8156678))

(assert (=> b!7628814 m!8156854))

(assert (=> b!7628814 m!8156854))

(assert (=> b!7628814 m!8156856))

(assert (=> bm!700371 m!8156862))

(assert (=> b!7628538 d!2323929))

(declare-fun bs!1943828 () Bool)

(declare-fun d!2323931 () Bool)

(assert (= bs!1943828 (and d!2323931 b!7628725)))

(declare-fun lambda!468950 () Int)

(assert (=> bs!1943828 (not (= lambda!468950 lambda!468946))))

(declare-fun bs!1943829 () Bool)

(assert (= bs!1943829 (and d!2323931 b!7628538)))

(assert (=> bs!1943829 (= lambda!468950 lambda!468932)))

(declare-fun bs!1943830 () Bool)

(assert (= bs!1943830 (and d!2323931 b!7628733)))

(assert (=> bs!1943830 (not (= lambda!468950 lambda!468947))))

(declare-fun bs!1943831 () Bool)

(assert (= bs!1943831 (and d!2323931 b!7628700)))

(assert (=> bs!1943831 (not (= lambda!468950 lambda!468944))))

(declare-fun bs!1943832 () Bool)

(assert (= bs!1943832 (and d!2323931 b!7628708)))

(assert (=> bs!1943832 (not (= lambda!468950 lambda!468945))))

(assert (=> d!2323931 true))

(assert (=> d!2323931 true))

(assert (=> d!2323931 true))

(assert (=> d!2323931 (= (isDefined!14059 (findConcatSeparation!3473 (regOne!41252 r!14126) (regTwo!41252 r!14126) Nil!73097 s!9605 s!9605)) (Exists!4524 lambda!468950))))

(declare-fun lt!2658406 () Unit!167668)

(declare-fun choose!58883 (Regex!20370 Regex!20370 List!73221) Unit!167668)

(assert (=> d!2323931 (= lt!2658406 (choose!58883 (regOne!41252 r!14126) (regTwo!41252 r!14126) s!9605))))

(assert (=> d!2323931 (validRegex!10788 (regOne!41252 r!14126))))

(assert (=> d!2323931 (= (lemmaFindConcatSeparationEquivalentToExists!3231 (regOne!41252 r!14126) (regTwo!41252 r!14126) s!9605) lt!2658406)))

(declare-fun bs!1943833 () Bool)

(assert (= bs!1943833 d!2323931))

(declare-fun m!8156878 () Bool)

(assert (=> bs!1943833 m!8156878))

(assert (=> bs!1943833 m!8156698))

(assert (=> bs!1943833 m!8156752))

(assert (=> bs!1943833 m!8156698))

(assert (=> bs!1943833 m!8156702))

(declare-fun m!8156880 () Bool)

(assert (=> bs!1943833 m!8156880))

(assert (=> b!7628538 d!2323931))

(assert (=> b!7628538 d!2323925))

(declare-fun d!2323935 () Bool)

(declare-fun isEmpty!41725 (Option!17443) Bool)

(assert (=> d!2323935 (= (isDefined!14059 (findConcatSeparation!3473 (regOne!41252 r!14126) (regTwo!41252 r!14126) Nil!73097 s!9605 s!9605)) (not (isEmpty!41725 (findConcatSeparation!3473 (regOne!41252 r!14126) (regTwo!41252 r!14126) Nil!73097 s!9605 s!9605))))))

(declare-fun bs!1943834 () Bool)

(assert (= bs!1943834 d!2323935))

(assert (=> bs!1943834 m!8156698))

(declare-fun m!8156882 () Bool)

(assert (=> bs!1943834 m!8156882))

(assert (=> b!7628538 d!2323935))

(declare-fun b!7628877 () Bool)

(declare-fun res!3055045 () Bool)

(declare-fun e!4535606 () Bool)

(assert (=> b!7628877 (=> (not res!3055045) (not e!4535606))))

(declare-fun lt!2658413 () Option!17443)

(declare-fun get!25828 (Option!17443) tuple2!69298)

(assert (=> b!7628877 (= res!3055045 (matchR!9873 (regTwo!41252 r!14126) (_2!37952 (get!25828 lt!2658413))))))

(declare-fun b!7628878 () Bool)

(declare-fun e!4535608 () Option!17443)

(declare-fun e!4535607 () Option!17443)

(assert (=> b!7628878 (= e!4535608 e!4535607)))

(declare-fun c!1405581 () Bool)

(assert (=> b!7628878 (= c!1405581 (is-Nil!73097 s!9605))))

(declare-fun d!2323937 () Bool)

(declare-fun e!4535605 () Bool)

(assert (=> d!2323937 e!4535605))

(declare-fun res!3055044 () Bool)

(assert (=> d!2323937 (=> res!3055044 e!4535605)))

(assert (=> d!2323937 (= res!3055044 e!4535606)))

(declare-fun res!3055048 () Bool)

(assert (=> d!2323937 (=> (not res!3055048) (not e!4535606))))

(assert (=> d!2323937 (= res!3055048 (isDefined!14059 lt!2658413))))

(assert (=> d!2323937 (= lt!2658413 e!4535608)))

(declare-fun c!1405580 () Bool)

(declare-fun e!4535604 () Bool)

(assert (=> d!2323937 (= c!1405580 e!4535604)))

(declare-fun res!3055047 () Bool)

(assert (=> d!2323937 (=> (not res!3055047) (not e!4535604))))

(assert (=> d!2323937 (= res!3055047 (matchR!9873 (regOne!41252 r!14126) Nil!73097))))

(assert (=> d!2323937 (validRegex!10788 (regOne!41252 r!14126))))

(assert (=> d!2323937 (= (findConcatSeparation!3473 (regOne!41252 r!14126) (regTwo!41252 r!14126) Nil!73097 s!9605 s!9605) lt!2658413)))

(declare-fun b!7628879 () Bool)

(assert (=> b!7628879 (= e!4535604 (matchR!9873 (regTwo!41252 r!14126) s!9605))))

(declare-fun b!7628880 () Bool)

(declare-fun lt!2658414 () Unit!167668)

(declare-fun lt!2658415 () Unit!167668)

(assert (=> b!7628880 (= lt!2658414 lt!2658415)))

(assert (=> b!7628880 (= (++!17654 (++!17654 Nil!73097 (Cons!73097 (h!79545 s!9605) Nil!73097)) (t!387956 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3235 (List!73221 C!41066 List!73221 List!73221) Unit!167668)

(assert (=> b!7628880 (= lt!2658415 (lemmaMoveElementToOtherListKeepsConcatEq!3235 Nil!73097 (h!79545 s!9605) (t!387956 s!9605) s!9605))))

(assert (=> b!7628880 (= e!4535607 (findConcatSeparation!3473 (regOne!41252 r!14126) (regTwo!41252 r!14126) (++!17654 Nil!73097 (Cons!73097 (h!79545 s!9605) Nil!73097)) (t!387956 s!9605) s!9605))))

(declare-fun b!7628881 () Bool)

(assert (=> b!7628881 (= e!4535606 (= (++!17654 (_1!37952 (get!25828 lt!2658413)) (_2!37952 (get!25828 lt!2658413))) s!9605))))

(declare-fun b!7628882 () Bool)

(declare-fun res!3055046 () Bool)

(assert (=> b!7628882 (=> (not res!3055046) (not e!4535606))))

(assert (=> b!7628882 (= res!3055046 (matchR!9873 (regOne!41252 r!14126) (_1!37952 (get!25828 lt!2658413))))))

(declare-fun b!7628883 () Bool)

(assert (=> b!7628883 (= e!4535608 (Some!17442 (tuple2!69299 Nil!73097 s!9605)))))

(declare-fun b!7628884 () Bool)

(assert (=> b!7628884 (= e!4535607 None!17442)))

(declare-fun b!7628885 () Bool)

(assert (=> b!7628885 (= e!4535605 (not (isDefined!14059 lt!2658413)))))

(assert (= (and d!2323937 res!3055047) b!7628879))

(assert (= (and d!2323937 c!1405580) b!7628883))

(assert (= (and d!2323937 (not c!1405580)) b!7628878))

(assert (= (and b!7628878 c!1405581) b!7628884))

(assert (= (and b!7628878 (not c!1405581)) b!7628880))

(assert (= (and d!2323937 res!3055048) b!7628882))

(assert (= (and b!7628882 res!3055046) b!7628877))

(assert (= (and b!7628877 res!3055045) b!7628881))

(assert (= (and d!2323937 (not res!3055044)) b!7628885))

(declare-fun m!8156884 () Bool)

(assert (=> b!7628882 m!8156884))

(declare-fun m!8156886 () Bool)

(assert (=> b!7628882 m!8156886))

(declare-fun m!8156888 () Bool)

(assert (=> d!2323937 m!8156888))

(declare-fun m!8156890 () Bool)

(assert (=> d!2323937 m!8156890))

(assert (=> d!2323937 m!8156752))

(assert (=> b!7628877 m!8156884))

(declare-fun m!8156892 () Bool)

(assert (=> b!7628877 m!8156892))

(declare-fun m!8156894 () Bool)

(assert (=> b!7628880 m!8156894))

(assert (=> b!7628880 m!8156894))

(declare-fun m!8156896 () Bool)

(assert (=> b!7628880 m!8156896))

(declare-fun m!8156898 () Bool)

(assert (=> b!7628880 m!8156898))

(assert (=> b!7628880 m!8156894))

(declare-fun m!8156900 () Bool)

(assert (=> b!7628880 m!8156900))

(assert (=> b!7628885 m!8156888))

(declare-fun m!8156902 () Bool)

(assert (=> b!7628879 m!8156902))

(assert (=> b!7628881 m!8156884))

(declare-fun m!8156904 () Bool)

(assert (=> b!7628881 m!8156904))

(assert (=> b!7628538 d!2323937))

(declare-fun b!7628896 () Bool)

(declare-fun e!4535611 () Bool)

(assert (=> b!7628896 (= e!4535611 tp_is_empty!51095)))

(declare-fun b!7628897 () Bool)

(declare-fun tp!2227293 () Bool)

(declare-fun tp!2227292 () Bool)

(assert (=> b!7628897 (= e!4535611 (and tp!2227293 tp!2227292))))

(assert (=> b!7628542 (= tp!2227259 e!4535611)))

(declare-fun b!7628899 () Bool)

(declare-fun tp!2227296 () Bool)

(declare-fun tp!2227294 () Bool)

(assert (=> b!7628899 (= e!4535611 (and tp!2227296 tp!2227294))))

(declare-fun b!7628898 () Bool)

(declare-fun tp!2227295 () Bool)

(assert (=> b!7628898 (= e!4535611 tp!2227295)))

(assert (= (and b!7628542 (is-ElementMatch!20370 (reg!20699 r!14126))) b!7628896))

(assert (= (and b!7628542 (is-Concat!29215 (reg!20699 r!14126))) b!7628897))

(assert (= (and b!7628542 (is-Star!20370 (reg!20699 r!14126))) b!7628898))

(assert (= (and b!7628542 (is-Union!20370 (reg!20699 r!14126))) b!7628899))

(declare-fun b!7628900 () Bool)

(declare-fun e!4535612 () Bool)

(assert (=> b!7628900 (= e!4535612 tp_is_empty!51095)))

(declare-fun b!7628901 () Bool)

(declare-fun tp!2227298 () Bool)

(declare-fun tp!2227297 () Bool)

(assert (=> b!7628901 (= e!4535612 (and tp!2227298 tp!2227297))))

(assert (=> b!7628541 (= tp!2227258 e!4535612)))

(declare-fun b!7628903 () Bool)

(declare-fun tp!2227301 () Bool)

(declare-fun tp!2227299 () Bool)

(assert (=> b!7628903 (= e!4535612 (and tp!2227301 tp!2227299))))

(declare-fun b!7628902 () Bool)

(declare-fun tp!2227300 () Bool)

(assert (=> b!7628902 (= e!4535612 tp!2227300)))

(assert (= (and b!7628541 (is-ElementMatch!20370 (regOne!41253 r!14126))) b!7628900))

(assert (= (and b!7628541 (is-Concat!29215 (regOne!41253 r!14126))) b!7628901))

(assert (= (and b!7628541 (is-Star!20370 (regOne!41253 r!14126))) b!7628902))

(assert (= (and b!7628541 (is-Union!20370 (regOne!41253 r!14126))) b!7628903))

(declare-fun b!7628904 () Bool)

(declare-fun e!4535613 () Bool)

(assert (=> b!7628904 (= e!4535613 tp_is_empty!51095)))

(declare-fun b!7628905 () Bool)

(declare-fun tp!2227303 () Bool)

(declare-fun tp!2227302 () Bool)

(assert (=> b!7628905 (= e!4535613 (and tp!2227303 tp!2227302))))

(assert (=> b!7628541 (= tp!2227260 e!4535613)))

(declare-fun b!7628907 () Bool)

(declare-fun tp!2227306 () Bool)

(declare-fun tp!2227304 () Bool)

(assert (=> b!7628907 (= e!4535613 (and tp!2227306 tp!2227304))))

(declare-fun b!7628906 () Bool)

(declare-fun tp!2227305 () Bool)

(assert (=> b!7628906 (= e!4535613 tp!2227305)))

(assert (= (and b!7628541 (is-ElementMatch!20370 (regTwo!41253 r!14126))) b!7628904))

(assert (= (and b!7628541 (is-Concat!29215 (regTwo!41253 r!14126))) b!7628905))

(assert (= (and b!7628541 (is-Star!20370 (regTwo!41253 r!14126))) b!7628906))

(assert (= (and b!7628541 (is-Union!20370 (regTwo!41253 r!14126))) b!7628907))

(declare-fun b!7628912 () Bool)

(declare-fun e!4535616 () Bool)

(declare-fun tp!2227309 () Bool)

(assert (=> b!7628912 (= e!4535616 (and tp_is_empty!51095 tp!2227309))))

(assert (=> b!7628536 (= tp!2227262 e!4535616)))

(assert (= (and b!7628536 (is-Cons!73097 (t!387956 s!9605))) b!7628912))

(declare-fun b!7628913 () Bool)

(declare-fun e!4535617 () Bool)

(assert (=> b!7628913 (= e!4535617 tp_is_empty!51095)))

(declare-fun b!7628914 () Bool)

(declare-fun tp!2227311 () Bool)

(declare-fun tp!2227310 () Bool)

(assert (=> b!7628914 (= e!4535617 (and tp!2227311 tp!2227310))))

(assert (=> b!7628543 (= tp!2227261 e!4535617)))

(declare-fun b!7628916 () Bool)

(declare-fun tp!2227314 () Bool)

(declare-fun tp!2227312 () Bool)

(assert (=> b!7628916 (= e!4535617 (and tp!2227314 tp!2227312))))

(declare-fun b!7628915 () Bool)

(declare-fun tp!2227313 () Bool)

(assert (=> b!7628915 (= e!4535617 tp!2227313)))

(assert (= (and b!7628543 (is-ElementMatch!20370 (regOne!41252 r!14126))) b!7628913))

(assert (= (and b!7628543 (is-Concat!29215 (regOne!41252 r!14126))) b!7628914))

(assert (= (and b!7628543 (is-Star!20370 (regOne!41252 r!14126))) b!7628915))

(assert (= (and b!7628543 (is-Union!20370 (regOne!41252 r!14126))) b!7628916))

(declare-fun b!7628917 () Bool)

(declare-fun e!4535618 () Bool)

(assert (=> b!7628917 (= e!4535618 tp_is_empty!51095)))

(declare-fun b!7628918 () Bool)

(declare-fun tp!2227316 () Bool)

(declare-fun tp!2227315 () Bool)

(assert (=> b!7628918 (= e!4535618 (and tp!2227316 tp!2227315))))

(assert (=> b!7628543 (= tp!2227263 e!4535618)))

(declare-fun b!7628920 () Bool)

(declare-fun tp!2227319 () Bool)

(declare-fun tp!2227317 () Bool)

(assert (=> b!7628920 (= e!4535618 (and tp!2227319 tp!2227317))))

(declare-fun b!7628919 () Bool)

(declare-fun tp!2227318 () Bool)

(assert (=> b!7628919 (= e!4535618 tp!2227318)))

(assert (= (and b!7628543 (is-ElementMatch!20370 (regTwo!41252 r!14126))) b!7628917))

(assert (= (and b!7628543 (is-Concat!29215 (regTwo!41252 r!14126))) b!7628918))

(assert (= (and b!7628543 (is-Star!20370 (regTwo!41252 r!14126))) b!7628919))

(assert (= (and b!7628543 (is-Union!20370 (regTwo!41252 r!14126))) b!7628920))

(declare-fun b_lambda!289037 () Bool)

(assert (= b_lambda!289035 (or b!7628538 b_lambda!289037)))

(declare-fun bs!1943835 () Bool)

(declare-fun d!2323939 () Bool)

(assert (= bs!1943835 (and d!2323939 b!7628538)))

(declare-fun res!3055049 () Bool)

(declare-fun e!4535619 () Bool)

(assert (=> bs!1943835 (=> (not res!3055049) (not e!4535619))))

(assert (=> bs!1943835 (= res!3055049 (= (++!17654 (_1!37952 lt!2658387) (_2!37952 lt!2658387)) s!9605))))

(assert (=> bs!1943835 (= (dynLambda!29922 lambda!468932 lt!2658387) e!4535619)))

(declare-fun b!7628921 () Bool)

(declare-fun res!3055050 () Bool)

(assert (=> b!7628921 (=> (not res!3055050) (not e!4535619))))

(assert (=> b!7628921 (= res!3055050 (matchR!9873 (regOne!41252 r!14126) (_1!37952 lt!2658387)))))

(declare-fun b!7628922 () Bool)

(assert (=> b!7628922 (= e!4535619 (matchR!9873 (regTwo!41252 r!14126) (_2!37952 lt!2658387)))))

(assert (= (and bs!1943835 res!3055049) b!7628921))

(assert (= (and b!7628921 res!3055050) b!7628922))

(declare-fun m!8156906 () Bool)

(assert (=> bs!1943835 m!8156906))

(declare-fun m!8156908 () Bool)

(assert (=> b!7628921 m!8156908))

(declare-fun m!8156910 () Bool)

(assert (=> b!7628922 m!8156910))

(assert (=> d!2323909 d!2323939))

(push 1)

(assert (not b!7628914))

(assert (not b!7628813))

(assert (not b!7628803))

(assert (not d!2323901))

(assert (not b!7628905))

(assert (not bm!700355))

(assert (not b!7628810))

(assert (not b!7628919))

(assert (not d!2323915))

(assert (not d!2323925))

(assert (not b!7628906))

(assert (not d!2323937))

(assert (not d!2323927))

(assert (not bs!1943835))

(assert (not b!7628636))

(assert (not b!7628882))

(assert (not b!7628637))

(assert (not b!7628804))

(assert (not b!7628899))

(assert (not bm!700371))

(assert (not b!7628877))

(assert (not b!7628880))

(assert (not b!7628749))

(assert (not b!7628744))

(assert (not b!7628701))

(assert (not d!2323929))

(assert (not b!7628624))

(assert (not b!7628885))

(assert (not b!7628746))

(assert (not b!7628627))

(assert (not bm!700358))

(assert (not bm!700359))

(assert (not b!7628748))

(assert (not b!7628759))

(assert (not b!7628898))

(assert (not b!7628920))

(assert (not b!7628755))

(assert (not b!7628922))

(assert (not b!7628814))

(assert (not b!7628801))

(assert (not b!7628897))

(assert (not b!7628918))

(assert (not d!2323931))

(assert (not b!7628743))

(assert (not b!7628626))

(assert (not d!2323897))

(assert (not b!7628726))

(assert (not b!7628907))

(assert (not b!7628903))

(assert (not b!7628633))

(assert (not b!7628758))

(assert (not b!7628731))

(assert (not bm!700368))

(assert (not bm!700356))

(assert (not b_lambda!289037))

(assert (not bm!700348))

(assert (not b!7628881))

(assert (not d!2323905))

(assert (not b!7628879))

(assert (not b!7628902))

(assert (not b!7628792))

(assert (not b!7628916))

(assert (not bm!700369))

(assert (not b!7628915))

(assert (not b!7628921))

(assert (not b!7628901))

(assert (not b!7628706))

(assert (not bm!700360))

(assert (not d!2323935))

(assert (not d!2323909))

(assert (not d!2323913))

(assert tp_is_empty!51095)

(assert (not b!7628912))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

