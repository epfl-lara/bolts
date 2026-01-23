; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!737606 () Bool)

(assert start!737606)

(declare-fun b!7720622 () Bool)

(assert (=> b!7720622 true))

(assert (=> b!7720622 true))

(declare-fun b!7720619 () Bool)

(declare-fun e!4579564 () Bool)

(declare-fun e!4579566 () Bool)

(assert (=> b!7720619 (= e!4579564 e!4579566)))

(declare-fun res!3080795 () Bool)

(assert (=> b!7720619 (=> res!3080795 e!4579566)))

(declare-fun lambda!471112 () Int)

(declare-fun Exists!4675 (Int) Bool)

(assert (=> b!7720619 (= res!3080795 (not (Exists!4675 lambda!471112)))))

(declare-fun lt!2666288 () Bool)

(assert (=> b!7720619 lt!2666288))

(declare-datatypes ((Unit!168180 0))(
  ( (Unit!168181) )
))
(declare-fun lt!2666289 () Unit!168180)

(declare-datatypes ((C!41434 0))(
  ( (C!41435 (val!31157 Int)) )
))
(declare-datatypes ((Regex!20554 0))(
  ( (ElementMatch!20554 (c!1423037 C!41434)) (Concat!29399 (regOne!41620 Regex!20554) (regTwo!41620 Regex!20554)) (EmptyExpr!20554) (Star!20554 (reg!20883 Regex!20554)) (EmptyLang!20554) (Union!20554 (regOne!41621 Regex!20554) (regTwo!41621 Regex!20554)) )
))
(declare-fun r!14126 () Regex!20554)

(declare-datatypes ((List!73401 0))(
  ( (Nil!73277) (Cons!73277 (h!79725 C!41434) (t!388136 List!73401)) )
))
(declare-fun s!9605 () List!73401)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!317 (Regex!20554 Regex!20554 List!73401) Unit!168180)

(assert (=> b!7720619 (= lt!2666289 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!317 (regOne!41620 r!14126) (regTwo!41620 r!14126) s!9605))))

(declare-fun b!7720620 () Bool)

(declare-fun res!3080797 () Bool)

(declare-fun e!4579567 () Bool)

(assert (=> b!7720620 (=> (not res!3080797) (not e!4579567))))

(assert (=> b!7720620 (= res!3080797 (and (not (is-EmptyExpr!20554 r!14126)) (not (is-EmptyLang!20554 r!14126)) (not (is-ElementMatch!20554 r!14126)) (not (is-Union!20554 r!14126)) (not (is-Star!20554 r!14126))))))

(declare-fun b!7720621 () Bool)

(declare-fun e!4579568 () Bool)

(declare-fun tp_is_empty!51463 () Bool)

(assert (=> b!7720621 (= e!4579568 tp_is_empty!51463)))

(assert (=> b!7720622 (= e!4579567 (not e!4579564))))

(declare-fun res!3080798 () Bool)

(assert (=> b!7720622 (=> res!3080798 e!4579564)))

(declare-fun matchR!10046 (Regex!20554 List!73401) Bool)

(assert (=> b!7720622 (= res!3080798 (not (matchR!10046 r!14126 s!9605)))))

(assert (=> b!7720622 (= lt!2666288 (Exists!4675 lambda!471112))))

(declare-datatypes ((tuple2!69562 0))(
  ( (tuple2!69563 (_1!38084 List!73401) (_2!38084 List!73401)) )
))
(declare-datatypes ((Option!17575 0))(
  ( (None!17574) (Some!17574 (v!54709 tuple2!69562)) )
))
(declare-fun isDefined!14191 (Option!17575) Bool)

(declare-fun findConcatSeparation!3605 (Regex!20554 Regex!20554 List!73401 List!73401 List!73401) Option!17575)

(assert (=> b!7720622 (= lt!2666288 (isDefined!14191 (findConcatSeparation!3605 (regOne!41620 r!14126) (regTwo!41620 r!14126) Nil!73277 s!9605 s!9605)))))

(declare-fun lt!2666287 () Unit!168180)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3363 (Regex!20554 Regex!20554 List!73401) Unit!168180)

(assert (=> b!7720622 (= lt!2666287 (lemmaFindConcatSeparationEquivalentToExists!3363 (regOne!41620 r!14126) (regTwo!41620 r!14126) s!9605))))

(declare-fun b!7720623 () Bool)

(declare-fun tp!2265075 () Bool)

(declare-fun tp!2265074 () Bool)

(assert (=> b!7720623 (= e!4579568 (and tp!2265075 tp!2265074))))

(declare-fun b!7720624 () Bool)

(declare-fun tp!2265070 () Bool)

(assert (=> b!7720624 (= e!4579568 tp!2265070)))

(declare-fun b!7720618 () Bool)

(declare-fun e!4579565 () Bool)

(declare-fun tp!2265073 () Bool)

(assert (=> b!7720618 (= e!4579565 (and tp_is_empty!51463 tp!2265073))))

(declare-fun res!3080796 () Bool)

(assert (=> start!737606 (=> (not res!3080796) (not e!4579567))))

(declare-fun validRegex!10972 (Regex!20554) Bool)

(assert (=> start!737606 (= res!3080796 (validRegex!10972 r!14126))))

(assert (=> start!737606 e!4579567))

(assert (=> start!737606 e!4579568))

(assert (=> start!737606 e!4579565))

(declare-fun b!7720625 () Bool)

(assert (=> b!7720625 (= e!4579566 (validRegex!10972 (regOne!41620 r!14126)))))

(declare-fun lt!2666290 () tuple2!69562)

(declare-fun pickWitness!521 (Int) tuple2!69562)

(assert (=> b!7720625 (= lt!2666290 (pickWitness!521 lambda!471112))))

(declare-fun b!7720626 () Bool)

(declare-fun tp!2265072 () Bool)

(declare-fun tp!2265071 () Bool)

(assert (=> b!7720626 (= e!4579568 (and tp!2265072 tp!2265071))))

(assert (= (and start!737606 res!3080796) b!7720620))

(assert (= (and b!7720620 res!3080797) b!7720622))

(assert (= (and b!7720622 (not res!3080798)) b!7720619))

(assert (= (and b!7720619 (not res!3080795)) b!7720625))

(assert (= (and start!737606 (is-ElementMatch!20554 r!14126)) b!7720621))

(assert (= (and start!737606 (is-Concat!29399 r!14126)) b!7720626))

(assert (= (and start!737606 (is-Star!20554 r!14126)) b!7720624))

(assert (= (and start!737606 (is-Union!20554 r!14126)) b!7720623))

(assert (= (and start!737606 (is-Cons!73277 s!9605)) b!7720618))

(declare-fun m!8199898 () Bool)

(assert (=> b!7720619 m!8199898))

(declare-fun m!8199900 () Bool)

(assert (=> b!7720619 m!8199900))

(declare-fun m!8199902 () Bool)

(assert (=> b!7720622 m!8199902))

(declare-fun m!8199904 () Bool)

(assert (=> b!7720622 m!8199904))

(declare-fun m!8199906 () Bool)

(assert (=> b!7720622 m!8199906))

(assert (=> b!7720622 m!8199904))

(declare-fun m!8199908 () Bool)

(assert (=> b!7720622 m!8199908))

(assert (=> b!7720622 m!8199898))

(declare-fun m!8199910 () Bool)

(assert (=> start!737606 m!8199910))

(declare-fun m!8199912 () Bool)

(assert (=> b!7720625 m!8199912))

(declare-fun m!8199914 () Bool)

(assert (=> b!7720625 m!8199914))

(push 1)

(assert tp_is_empty!51463)

(assert (not b!7720625))

(assert (not b!7720623))

(assert (not b!7720619))

(assert (not b!7720618))

(assert (not b!7720626))

(assert (not b!7720622))

(assert (not b!7720624))

(assert (not start!737606))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!713560 () Bool)

(declare-fun call!713565 () Bool)

(declare-fun c!1423043 () Bool)

(declare-fun c!1423044 () Bool)

(assert (=> bm!713560 (= call!713565 (validRegex!10972 (ite c!1423043 (reg!20883 (regOne!41620 r!14126)) (ite c!1423044 (regOne!41621 (regOne!41620 r!14126)) (regOne!41620 (regOne!41620 r!14126))))))))

(declare-fun bm!713561 () Bool)

(declare-fun call!713566 () Bool)

(assert (=> bm!713561 (= call!713566 call!713565)))

(declare-fun b!7720692 () Bool)

(declare-fun e!4579608 () Bool)

(declare-fun call!713567 () Bool)

(assert (=> b!7720692 (= e!4579608 call!713567)))

(declare-fun bm!713562 () Bool)

(assert (=> bm!713562 (= call!713567 (validRegex!10972 (ite c!1423044 (regTwo!41621 (regOne!41620 r!14126)) (regTwo!41620 (regOne!41620 r!14126)))))))

(declare-fun b!7720693 () Bool)

(declare-fun e!4579610 () Bool)

(assert (=> b!7720693 (= e!4579610 call!713565)))

(declare-fun b!7720694 () Bool)

(declare-fun e!4579606 () Bool)

(declare-fun e!4579604 () Bool)

(assert (=> b!7720694 (= e!4579606 e!4579604)))

(assert (=> b!7720694 (= c!1423044 (is-Union!20554 (regOne!41620 r!14126)))))

(declare-fun b!7720695 () Bool)

(declare-fun res!3080833 () Bool)

(declare-fun e!4579607 () Bool)

(assert (=> b!7720695 (=> res!3080833 e!4579607)))

(assert (=> b!7720695 (= res!3080833 (not (is-Concat!29399 (regOne!41620 r!14126))))))

(assert (=> b!7720695 (= e!4579604 e!4579607)))

(declare-fun b!7720696 () Bool)

(declare-fun e!4579605 () Bool)

(assert (=> b!7720696 (= e!4579605 call!713567)))

(declare-fun b!7720697 () Bool)

(declare-fun e!4579609 () Bool)

(assert (=> b!7720697 (= e!4579609 e!4579606)))

(assert (=> b!7720697 (= c!1423043 (is-Star!20554 (regOne!41620 r!14126)))))

(declare-fun d!2337573 () Bool)

(declare-fun res!3080835 () Bool)

(assert (=> d!2337573 (=> res!3080835 e!4579609)))

(assert (=> d!2337573 (= res!3080835 (is-ElementMatch!20554 (regOne!41620 r!14126)))))

(assert (=> d!2337573 (= (validRegex!10972 (regOne!41620 r!14126)) e!4579609)))

(declare-fun b!7720698 () Bool)

(assert (=> b!7720698 (= e!4579607 e!4579608)))

(declare-fun res!3080836 () Bool)

(assert (=> b!7720698 (=> (not res!3080836) (not e!4579608))))

(assert (=> b!7720698 (= res!3080836 call!713566)))

(declare-fun b!7720699 () Bool)

(declare-fun res!3080837 () Bool)

(assert (=> b!7720699 (=> (not res!3080837) (not e!4579605))))

(assert (=> b!7720699 (= res!3080837 call!713566)))

(assert (=> b!7720699 (= e!4579604 e!4579605)))

(declare-fun b!7720700 () Bool)

(assert (=> b!7720700 (= e!4579606 e!4579610)))

(declare-fun res!3080834 () Bool)

(declare-fun nullable!9029 (Regex!20554) Bool)

(assert (=> b!7720700 (= res!3080834 (not (nullable!9029 (reg!20883 (regOne!41620 r!14126)))))))

(assert (=> b!7720700 (=> (not res!3080834) (not e!4579610))))

(assert (= (and d!2337573 (not res!3080835)) b!7720697))

(assert (= (and b!7720697 c!1423043) b!7720700))

(assert (= (and b!7720697 (not c!1423043)) b!7720694))

(assert (= (and b!7720700 res!3080834) b!7720693))

(assert (= (and b!7720694 c!1423044) b!7720699))

(assert (= (and b!7720694 (not c!1423044)) b!7720695))

(assert (= (and b!7720699 res!3080837) b!7720696))

(assert (= (and b!7720695 (not res!3080833)) b!7720698))

(assert (= (and b!7720698 res!3080836) b!7720692))

(assert (= (or b!7720699 b!7720698) bm!713561))

(assert (= (or b!7720696 b!7720692) bm!713562))

(assert (= (or b!7720693 bm!713561) bm!713560))

(declare-fun m!8199934 () Bool)

(assert (=> bm!713560 m!8199934))

(declare-fun m!8199936 () Bool)

(assert (=> bm!713562 m!8199936))

(declare-fun m!8199938 () Bool)

(assert (=> b!7720700 m!8199938))

(assert (=> b!7720625 d!2337573))

(declare-fun d!2337577 () Bool)

(declare-fun lt!2666305 () tuple2!69562)

(declare-fun dynLambda!29959 (Int tuple2!69562) Bool)

(assert (=> d!2337577 (dynLambda!29959 lambda!471112 lt!2666305)))

(declare-fun choose!59264 (Int) tuple2!69562)

(assert (=> d!2337577 (= lt!2666305 (choose!59264 lambda!471112))))

(assert (=> d!2337577 (Exists!4675 lambda!471112)))

(assert (=> d!2337577 (= (pickWitness!521 lambda!471112) lt!2666305)))

(declare-fun b_lambda!289267 () Bool)

(assert (=> (not b_lambda!289267) (not d!2337577)))

(declare-fun bs!1963035 () Bool)

(assert (= bs!1963035 d!2337577))

(declare-fun m!8199940 () Bool)

(assert (=> bs!1963035 m!8199940))

(declare-fun m!8199942 () Bool)

(assert (=> bs!1963035 m!8199942))

(assert (=> bs!1963035 m!8199898))

(assert (=> b!7720625 d!2337577))

(declare-fun d!2337579 () Bool)

(declare-fun choose!59265 (Int) Bool)

(assert (=> d!2337579 (= (Exists!4675 lambda!471112) (choose!59265 lambda!471112))))

(declare-fun bs!1963036 () Bool)

(assert (= bs!1963036 d!2337579))

(declare-fun m!8199944 () Bool)

(assert (=> bs!1963036 m!8199944))

(assert (=> b!7720619 d!2337579))

(declare-fun d!2337581 () Bool)

(assert (=> d!2337581 (isDefined!14191 (findConcatSeparation!3605 (regOne!41620 r!14126) (regTwo!41620 r!14126) Nil!73277 s!9605 s!9605))))

(declare-fun lt!2666308 () Unit!168180)

(declare-fun choose!59266 (Regex!20554 Regex!20554 List!73401) Unit!168180)

(assert (=> d!2337581 (= lt!2666308 (choose!59266 (regOne!41620 r!14126) (regTwo!41620 r!14126) s!9605))))

(assert (=> d!2337581 (validRegex!10972 (regOne!41620 r!14126))))

(assert (=> d!2337581 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!317 (regOne!41620 r!14126) (regTwo!41620 r!14126) s!9605) lt!2666308)))

(declare-fun bs!1963037 () Bool)

(assert (= bs!1963037 d!2337581))

(assert (=> bs!1963037 m!8199904))

(assert (=> bs!1963037 m!8199904))

(assert (=> bs!1963037 m!8199908))

(declare-fun m!8199946 () Bool)

(assert (=> bs!1963037 m!8199946))

(assert (=> bs!1963037 m!8199912))

(assert (=> b!7720619 d!2337581))

(declare-fun c!1423046 () Bool)

(declare-fun bm!713563 () Bool)

(declare-fun c!1423045 () Bool)

(declare-fun call!713568 () Bool)

(assert (=> bm!713563 (= call!713568 (validRegex!10972 (ite c!1423045 (reg!20883 r!14126) (ite c!1423046 (regOne!41621 r!14126) (regOne!41620 r!14126)))))))

(declare-fun bm!713564 () Bool)

(declare-fun call!713569 () Bool)

(assert (=> bm!713564 (= call!713569 call!713568)))

(declare-fun b!7720701 () Bool)

(declare-fun e!4579615 () Bool)

(declare-fun call!713570 () Bool)

(assert (=> b!7720701 (= e!4579615 call!713570)))

(declare-fun bm!713565 () Bool)

(assert (=> bm!713565 (= call!713570 (validRegex!10972 (ite c!1423046 (regTwo!41621 r!14126) (regTwo!41620 r!14126))))))

(declare-fun b!7720702 () Bool)

(declare-fun e!4579617 () Bool)

(assert (=> b!7720702 (= e!4579617 call!713568)))

(declare-fun b!7720703 () Bool)

(declare-fun e!4579613 () Bool)

(declare-fun e!4579611 () Bool)

(assert (=> b!7720703 (= e!4579613 e!4579611)))

(assert (=> b!7720703 (= c!1423046 (is-Union!20554 r!14126))))

(declare-fun b!7720704 () Bool)

(declare-fun res!3080838 () Bool)

(declare-fun e!4579614 () Bool)

(assert (=> b!7720704 (=> res!3080838 e!4579614)))

(assert (=> b!7720704 (= res!3080838 (not (is-Concat!29399 r!14126)))))

(assert (=> b!7720704 (= e!4579611 e!4579614)))

(declare-fun b!7720705 () Bool)

(declare-fun e!4579612 () Bool)

(assert (=> b!7720705 (= e!4579612 call!713570)))

(declare-fun b!7720706 () Bool)

(declare-fun e!4579616 () Bool)

(assert (=> b!7720706 (= e!4579616 e!4579613)))

(assert (=> b!7720706 (= c!1423045 (is-Star!20554 r!14126))))

(declare-fun d!2337583 () Bool)

(declare-fun res!3080840 () Bool)

(assert (=> d!2337583 (=> res!3080840 e!4579616)))

(assert (=> d!2337583 (= res!3080840 (is-ElementMatch!20554 r!14126))))

(assert (=> d!2337583 (= (validRegex!10972 r!14126) e!4579616)))

(declare-fun b!7720707 () Bool)

(assert (=> b!7720707 (= e!4579614 e!4579615)))

(declare-fun res!3080841 () Bool)

(assert (=> b!7720707 (=> (not res!3080841) (not e!4579615))))

(assert (=> b!7720707 (= res!3080841 call!713569)))

(declare-fun b!7720708 () Bool)

(declare-fun res!3080842 () Bool)

(assert (=> b!7720708 (=> (not res!3080842) (not e!4579612))))

(assert (=> b!7720708 (= res!3080842 call!713569)))

(assert (=> b!7720708 (= e!4579611 e!4579612)))

(declare-fun b!7720709 () Bool)

(assert (=> b!7720709 (= e!4579613 e!4579617)))

(declare-fun res!3080839 () Bool)

(assert (=> b!7720709 (= res!3080839 (not (nullable!9029 (reg!20883 r!14126))))))

(assert (=> b!7720709 (=> (not res!3080839) (not e!4579617))))

(assert (= (and d!2337583 (not res!3080840)) b!7720706))

(assert (= (and b!7720706 c!1423045) b!7720709))

(assert (= (and b!7720706 (not c!1423045)) b!7720703))

(assert (= (and b!7720709 res!3080839) b!7720702))

(assert (= (and b!7720703 c!1423046) b!7720708))

(assert (= (and b!7720703 (not c!1423046)) b!7720704))

(assert (= (and b!7720708 res!3080842) b!7720705))

(assert (= (and b!7720704 (not res!3080838)) b!7720707))

(assert (= (and b!7720707 res!3080841) b!7720701))

(assert (= (or b!7720708 b!7720707) bm!713564))

(assert (= (or b!7720705 b!7720701) bm!713565))

(assert (= (or b!7720702 bm!713564) bm!713563))

(declare-fun m!8199948 () Bool)

(assert (=> bm!713563 m!8199948))

(declare-fun m!8199950 () Bool)

(assert (=> bm!713565 m!8199950))

(declare-fun m!8199952 () Bool)

(assert (=> b!7720709 m!8199952))

(assert (=> start!737606 d!2337583))

(declare-fun b!7720766 () Bool)

(declare-fun e!4579651 () Bool)

(declare-fun head!15789 (List!73401) C!41434)

(assert (=> b!7720766 (= e!4579651 (= (head!15789 s!9605) (c!1423037 r!14126)))))

(declare-fun b!7720767 () Bool)

(declare-fun e!4579647 () Bool)

(declare-fun e!4579648 () Bool)

(assert (=> b!7720767 (= e!4579647 e!4579648)))

(declare-fun c!1423060 () Bool)

(assert (=> b!7720767 (= c!1423060 (is-EmptyLang!20554 r!14126))))

(declare-fun b!7720768 () Bool)

(declare-fun lt!2666313 () Bool)

(declare-fun call!713575 () Bool)

(assert (=> b!7720768 (= e!4579647 (= lt!2666313 call!713575))))

(declare-fun b!7720769 () Bool)

(declare-fun e!4579646 () Bool)

(declare-fun e!4579652 () Bool)

(assert (=> b!7720769 (= e!4579646 e!4579652)))

(declare-fun res!3080876 () Bool)

(assert (=> b!7720769 (=> (not res!3080876) (not e!4579652))))

(assert (=> b!7720769 (= res!3080876 (not lt!2666313))))

(declare-fun b!7720770 () Bool)

(declare-fun e!4579650 () Bool)

(declare-fun derivativeStep!5989 (Regex!20554 C!41434) Regex!20554)

(declare-fun tail!15329 (List!73401) List!73401)

(assert (=> b!7720770 (= e!4579650 (matchR!10046 (derivativeStep!5989 r!14126 (head!15789 s!9605)) (tail!15329 s!9605)))))

(declare-fun b!7720771 () Bool)

(declare-fun res!3080881 () Bool)

(assert (=> b!7720771 (=> res!3080881 e!4579646)))

(assert (=> b!7720771 (= res!3080881 e!4579651)))

(declare-fun res!3080875 () Bool)

(assert (=> b!7720771 (=> (not res!3080875) (not e!4579651))))

(assert (=> b!7720771 (= res!3080875 lt!2666313)))

(declare-fun b!7720772 () Bool)

(declare-fun e!4579649 () Bool)

(assert (=> b!7720772 (= e!4579652 e!4579649)))

(declare-fun res!3080878 () Bool)

(assert (=> b!7720772 (=> res!3080878 e!4579649)))

(assert (=> b!7720772 (= res!3080878 call!713575)))

(declare-fun b!7720773 () Bool)

(assert (=> b!7720773 (= e!4579650 (nullable!9029 r!14126))))

(declare-fun b!7720774 () Bool)

(declare-fun res!3080877 () Bool)

(assert (=> b!7720774 (=> res!3080877 e!4579646)))

(assert (=> b!7720774 (= res!3080877 (not (is-ElementMatch!20554 r!14126)))))

(assert (=> b!7720774 (= e!4579648 e!4579646)))

(declare-fun b!7720775 () Bool)

(declare-fun res!3080879 () Bool)

(assert (=> b!7720775 (=> (not res!3080879) (not e!4579651))))

(declare-fun isEmpty!41942 (List!73401) Bool)

(assert (=> b!7720775 (= res!3080879 (isEmpty!41942 (tail!15329 s!9605)))))

(declare-fun b!7720776 () Bool)

(declare-fun res!3080882 () Bool)

(assert (=> b!7720776 (=> (not res!3080882) (not e!4579651))))

(assert (=> b!7720776 (= res!3080882 (not call!713575))))

(declare-fun b!7720777 () Bool)

(assert (=> b!7720777 (= e!4579649 (not (= (head!15789 s!9605) (c!1423037 r!14126))))))

(declare-fun b!7720778 () Bool)

(assert (=> b!7720778 (= e!4579648 (not lt!2666313))))

(declare-fun d!2337585 () Bool)

(assert (=> d!2337585 e!4579647))

(declare-fun c!1423061 () Bool)

(assert (=> d!2337585 (= c!1423061 (is-EmptyExpr!20554 r!14126))))

(assert (=> d!2337585 (= lt!2666313 e!4579650)))

(declare-fun c!1423059 () Bool)

(assert (=> d!2337585 (= c!1423059 (isEmpty!41942 s!9605))))

(assert (=> d!2337585 (validRegex!10972 r!14126)))

(assert (=> d!2337585 (= (matchR!10046 r!14126 s!9605) lt!2666313)))

(declare-fun b!7720779 () Bool)

(declare-fun res!3080880 () Bool)

(assert (=> b!7720779 (=> res!3080880 e!4579649)))

(assert (=> b!7720779 (= res!3080880 (not (isEmpty!41942 (tail!15329 s!9605))))))

(declare-fun bm!713570 () Bool)

(assert (=> bm!713570 (= call!713575 (isEmpty!41942 s!9605))))

(assert (= (and d!2337585 c!1423059) b!7720773))

(assert (= (and d!2337585 (not c!1423059)) b!7720770))

(assert (= (and d!2337585 c!1423061) b!7720768))

(assert (= (and d!2337585 (not c!1423061)) b!7720767))

(assert (= (and b!7720767 c!1423060) b!7720778))

(assert (= (and b!7720767 (not c!1423060)) b!7720774))

(assert (= (and b!7720774 (not res!3080877)) b!7720771))

(assert (= (and b!7720771 res!3080875) b!7720776))

(assert (= (and b!7720776 res!3080882) b!7720775))

(assert (= (and b!7720775 res!3080879) b!7720766))

(assert (= (and b!7720771 (not res!3080881)) b!7720769))

(assert (= (and b!7720769 res!3080876) b!7720772))

(assert (= (and b!7720772 (not res!3080878)) b!7720779))

(assert (= (and b!7720779 (not res!3080880)) b!7720777))

(assert (= (or b!7720768 b!7720772 b!7720776) bm!713570))

(declare-fun m!8199954 () Bool)

(assert (=> bm!713570 m!8199954))

(declare-fun m!8199956 () Bool)

(assert (=> b!7720773 m!8199956))

(assert (=> d!2337585 m!8199954))

(assert (=> d!2337585 m!8199910))

(declare-fun m!8199958 () Bool)

(assert (=> b!7720766 m!8199958))

(assert (=> b!7720770 m!8199958))

(assert (=> b!7720770 m!8199958))

(declare-fun m!8199960 () Bool)

(assert (=> b!7720770 m!8199960))

(declare-fun m!8199962 () Bool)

(assert (=> b!7720770 m!8199962))

(assert (=> b!7720770 m!8199960))

(assert (=> b!7720770 m!8199962))

(declare-fun m!8199964 () Bool)

(assert (=> b!7720770 m!8199964))

(assert (=> b!7720777 m!8199958))

(assert (=> b!7720779 m!8199962))

(assert (=> b!7720779 m!8199962))

(declare-fun m!8199966 () Bool)

(assert (=> b!7720779 m!8199966))

(assert (=> b!7720775 m!8199962))

(assert (=> b!7720775 m!8199962))

(assert (=> b!7720775 m!8199966))

(assert (=> b!7720622 d!2337585))

(assert (=> b!7720622 d!2337579))

(declare-fun bs!1963038 () Bool)

(declare-fun d!2337587 () Bool)

(assert (= bs!1963038 (and d!2337587 b!7720622)))

(declare-fun lambda!471122 () Int)

(assert (=> bs!1963038 (= lambda!471122 lambda!471112)))

(assert (=> d!2337587 true))

(assert (=> d!2337587 true))

(assert (=> d!2337587 true))

(assert (=> d!2337587 (= (isDefined!14191 (findConcatSeparation!3605 (regOne!41620 r!14126) (regTwo!41620 r!14126) Nil!73277 s!9605 s!9605)) (Exists!4675 lambda!471122))))

(declare-fun lt!2666317 () Unit!168180)

(declare-fun choose!59267 (Regex!20554 Regex!20554 List!73401) Unit!168180)

(assert (=> d!2337587 (= lt!2666317 (choose!59267 (regOne!41620 r!14126) (regTwo!41620 r!14126) s!9605))))

(assert (=> d!2337587 (validRegex!10972 (regOne!41620 r!14126))))

(assert (=> d!2337587 (= (lemmaFindConcatSeparationEquivalentToExists!3363 (regOne!41620 r!14126) (regTwo!41620 r!14126) s!9605) lt!2666317)))

(declare-fun bs!1963039 () Bool)

(assert (= bs!1963039 d!2337587))

(declare-fun m!8199982 () Bool)

(assert (=> bs!1963039 m!8199982))

(assert (=> bs!1963039 m!8199912))

(assert (=> bs!1963039 m!8199904))

(declare-fun m!8199984 () Bool)

(assert (=> bs!1963039 m!8199984))

(assert (=> bs!1963039 m!8199904))

(assert (=> bs!1963039 m!8199908))

(assert (=> b!7720622 d!2337587))

(declare-fun d!2337591 () Bool)

(declare-fun isEmpty!41943 (Option!17575) Bool)

(assert (=> d!2337591 (= (isDefined!14191 (findConcatSeparation!3605 (regOne!41620 r!14126) (regTwo!41620 r!14126) Nil!73277 s!9605 s!9605)) (not (isEmpty!41943 (findConcatSeparation!3605 (regOne!41620 r!14126) (regTwo!41620 r!14126) Nil!73277 s!9605 s!9605))))))

(declare-fun bs!1963040 () Bool)

(assert (= bs!1963040 d!2337591))

(assert (=> bs!1963040 m!8199904))

(declare-fun m!8199986 () Bool)

(assert (=> bs!1963040 m!8199986))

(assert (=> b!7720622 d!2337591))

(declare-fun b!7720820 () Bool)

(declare-fun lt!2666327 () Unit!168180)

(declare-fun lt!2666328 () Unit!168180)

(assert (=> b!7720820 (= lt!2666327 lt!2666328)))

(declare-fun ++!17755 (List!73401 List!73401) List!73401)

(assert (=> b!7720820 (= (++!17755 (++!17755 Nil!73277 (Cons!73277 (h!79725 s!9605) Nil!73277)) (t!388136 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3306 (List!73401 C!41434 List!73401 List!73401) Unit!168180)

(assert (=> b!7720820 (= lt!2666328 (lemmaMoveElementToOtherListKeepsConcatEq!3306 Nil!73277 (h!79725 s!9605) (t!388136 s!9605) s!9605))))

(declare-fun e!4579676 () Option!17575)

(assert (=> b!7720820 (= e!4579676 (findConcatSeparation!3605 (regOne!41620 r!14126) (regTwo!41620 r!14126) (++!17755 Nil!73277 (Cons!73277 (h!79725 s!9605) Nil!73277)) (t!388136 s!9605) s!9605))))

(declare-fun b!7720822 () Bool)

(declare-fun e!4579677 () Option!17575)

(assert (=> b!7720822 (= e!4579677 e!4579676)))

(declare-fun c!1423069 () Bool)

(assert (=> b!7720822 (= c!1423069 (is-Nil!73277 s!9605))))

(declare-fun b!7720823 () Bool)

(declare-fun e!4579678 () Bool)

(assert (=> b!7720823 (= e!4579678 (matchR!10046 (regTwo!41620 r!14126) s!9605))))

(declare-fun b!7720824 () Bool)

(declare-fun e!4579675 () Bool)

(declare-fun lt!2666326 () Option!17575)

(assert (=> b!7720824 (= e!4579675 (not (isDefined!14191 lt!2666326)))))

(declare-fun b!7720825 () Bool)

(declare-fun e!4579674 () Bool)

(declare-fun get!26022 (Option!17575) tuple2!69562)

(assert (=> b!7720825 (= e!4579674 (= (++!17755 (_1!38084 (get!26022 lt!2666326)) (_2!38084 (get!26022 lt!2666326))) s!9605))))

(declare-fun b!7720826 () Bool)

(declare-fun res!3080909 () Bool)

(assert (=> b!7720826 (=> (not res!3080909) (not e!4579674))))

(assert (=> b!7720826 (= res!3080909 (matchR!10046 (regTwo!41620 r!14126) (_2!38084 (get!26022 lt!2666326))))))

(declare-fun b!7720827 () Bool)

(assert (=> b!7720827 (= e!4579677 (Some!17574 (tuple2!69563 Nil!73277 s!9605)))))

(declare-fun b!7720828 () Bool)

(declare-fun res!3080911 () Bool)

(assert (=> b!7720828 (=> (not res!3080911) (not e!4579674))))

(assert (=> b!7720828 (= res!3080911 (matchR!10046 (regOne!41620 r!14126) (_1!38084 (get!26022 lt!2666326))))))

(declare-fun b!7720821 () Bool)

(assert (=> b!7720821 (= e!4579676 None!17574)))

(declare-fun d!2337593 () Bool)

(assert (=> d!2337593 e!4579675))

(declare-fun res!3080910 () Bool)

(assert (=> d!2337593 (=> res!3080910 e!4579675)))

(assert (=> d!2337593 (= res!3080910 e!4579674)))

(declare-fun res!3080912 () Bool)

(assert (=> d!2337593 (=> (not res!3080912) (not e!4579674))))

(assert (=> d!2337593 (= res!3080912 (isDefined!14191 lt!2666326))))

(assert (=> d!2337593 (= lt!2666326 e!4579677)))

(declare-fun c!1423070 () Bool)

(assert (=> d!2337593 (= c!1423070 e!4579678)))

(declare-fun res!3080913 () Bool)

(assert (=> d!2337593 (=> (not res!3080913) (not e!4579678))))

(assert (=> d!2337593 (= res!3080913 (matchR!10046 (regOne!41620 r!14126) Nil!73277))))

(assert (=> d!2337593 (validRegex!10972 (regOne!41620 r!14126))))

(assert (=> d!2337593 (= (findConcatSeparation!3605 (regOne!41620 r!14126) (regTwo!41620 r!14126) Nil!73277 s!9605 s!9605) lt!2666326)))

(assert (= (and d!2337593 res!3080913) b!7720823))

(assert (= (and d!2337593 c!1423070) b!7720827))

(assert (= (and d!2337593 (not c!1423070)) b!7720822))

(assert (= (and b!7720822 c!1423069) b!7720821))

(assert (= (and b!7720822 (not c!1423069)) b!7720820))

(assert (= (and d!2337593 res!3080912) b!7720828))

(assert (= (and b!7720828 res!3080911) b!7720826))

(assert (= (and b!7720826 res!3080909) b!7720825))

(assert (= (and d!2337593 (not res!3080910)) b!7720824))

(declare-fun m!8199988 () Bool)

(assert (=> b!7720820 m!8199988))

(assert (=> b!7720820 m!8199988))

(declare-fun m!8199990 () Bool)

(assert (=> b!7720820 m!8199990))

(declare-fun m!8199992 () Bool)

(assert (=> b!7720820 m!8199992))

(assert (=> b!7720820 m!8199988))

(declare-fun m!8199994 () Bool)

(assert (=> b!7720820 m!8199994))

(declare-fun m!8199996 () Bool)

(assert (=> b!7720826 m!8199996))

(declare-fun m!8199998 () Bool)

(assert (=> b!7720826 m!8199998))

(declare-fun m!8200000 () Bool)

(assert (=> d!2337593 m!8200000))

(declare-fun m!8200002 () Bool)

(assert (=> d!2337593 m!8200002))

(assert (=> d!2337593 m!8199912))

(assert (=> b!7720828 m!8199996))

(declare-fun m!8200004 () Bool)

(assert (=> b!7720828 m!8200004))

(assert (=> b!7720825 m!8199996))

(declare-fun m!8200006 () Bool)

(assert (=> b!7720825 m!8200006))

(declare-fun m!8200008 () Bool)

(assert (=> b!7720823 m!8200008))

(assert (=> b!7720824 m!8200000))

(assert (=> b!7720622 d!2337593))

(declare-fun e!4579681 () Bool)

(assert (=> b!7720624 (= tp!2265070 e!4579681)))

(declare-fun b!7720840 () Bool)

(declare-fun tp!2265105 () Bool)

(declare-fun tp!2265104 () Bool)

(assert (=> b!7720840 (= e!4579681 (and tp!2265105 tp!2265104))))

(declare-fun b!7720842 () Bool)

(declare-fun tp!2265108 () Bool)

(declare-fun tp!2265107 () Bool)

(assert (=> b!7720842 (= e!4579681 (and tp!2265108 tp!2265107))))

(declare-fun b!7720841 () Bool)

(declare-fun tp!2265106 () Bool)

(assert (=> b!7720841 (= e!4579681 tp!2265106)))

(declare-fun b!7720839 () Bool)

(assert (=> b!7720839 (= e!4579681 tp_is_empty!51463)))

(assert (= (and b!7720624 (is-ElementMatch!20554 (reg!20883 r!14126))) b!7720839))

(assert (= (and b!7720624 (is-Concat!29399 (reg!20883 r!14126))) b!7720840))

(assert (= (and b!7720624 (is-Star!20554 (reg!20883 r!14126))) b!7720841))

(assert (= (and b!7720624 (is-Union!20554 (reg!20883 r!14126))) b!7720842))

(declare-fun b!7720847 () Bool)

(declare-fun e!4579684 () Bool)

(declare-fun tp!2265111 () Bool)

(assert (=> b!7720847 (= e!4579684 (and tp_is_empty!51463 tp!2265111))))

(assert (=> b!7720618 (= tp!2265073 e!4579684)))

(assert (= (and b!7720618 (is-Cons!73277 (t!388136 s!9605))) b!7720847))

(declare-fun e!4579685 () Bool)

(assert (=> b!7720623 (= tp!2265075 e!4579685)))

(declare-fun b!7720849 () Bool)

(declare-fun tp!2265113 () Bool)

(declare-fun tp!2265112 () Bool)

(assert (=> b!7720849 (= e!4579685 (and tp!2265113 tp!2265112))))

(declare-fun b!7720851 () Bool)

(declare-fun tp!2265116 () Bool)

(declare-fun tp!2265115 () Bool)

(assert (=> b!7720851 (= e!4579685 (and tp!2265116 tp!2265115))))

(declare-fun b!7720850 () Bool)

(declare-fun tp!2265114 () Bool)

(assert (=> b!7720850 (= e!4579685 tp!2265114)))

(declare-fun b!7720848 () Bool)

(assert (=> b!7720848 (= e!4579685 tp_is_empty!51463)))

(assert (= (and b!7720623 (is-ElementMatch!20554 (regOne!41621 r!14126))) b!7720848))

(assert (= (and b!7720623 (is-Concat!29399 (regOne!41621 r!14126))) b!7720849))

(assert (= (and b!7720623 (is-Star!20554 (regOne!41621 r!14126))) b!7720850))

(assert (= (and b!7720623 (is-Union!20554 (regOne!41621 r!14126))) b!7720851))

(declare-fun e!4579686 () Bool)

(assert (=> b!7720623 (= tp!2265074 e!4579686)))

(declare-fun b!7720853 () Bool)

(declare-fun tp!2265118 () Bool)

(declare-fun tp!2265117 () Bool)

(assert (=> b!7720853 (= e!4579686 (and tp!2265118 tp!2265117))))

(declare-fun b!7720855 () Bool)

(declare-fun tp!2265121 () Bool)

(declare-fun tp!2265120 () Bool)

(assert (=> b!7720855 (= e!4579686 (and tp!2265121 tp!2265120))))

(declare-fun b!7720854 () Bool)

(declare-fun tp!2265119 () Bool)

(assert (=> b!7720854 (= e!4579686 tp!2265119)))

(declare-fun b!7720852 () Bool)

(assert (=> b!7720852 (= e!4579686 tp_is_empty!51463)))

(assert (= (and b!7720623 (is-ElementMatch!20554 (regTwo!41621 r!14126))) b!7720852))

(assert (= (and b!7720623 (is-Concat!29399 (regTwo!41621 r!14126))) b!7720853))

(assert (= (and b!7720623 (is-Star!20554 (regTwo!41621 r!14126))) b!7720854))

(assert (= (and b!7720623 (is-Union!20554 (regTwo!41621 r!14126))) b!7720855))

(declare-fun e!4579687 () Bool)

(assert (=> b!7720626 (= tp!2265072 e!4579687)))

(declare-fun b!7720857 () Bool)

(declare-fun tp!2265123 () Bool)

(declare-fun tp!2265122 () Bool)

(assert (=> b!7720857 (= e!4579687 (and tp!2265123 tp!2265122))))

(declare-fun b!7720859 () Bool)

(declare-fun tp!2265126 () Bool)

(declare-fun tp!2265125 () Bool)

(assert (=> b!7720859 (= e!4579687 (and tp!2265126 tp!2265125))))

(declare-fun b!7720858 () Bool)

(declare-fun tp!2265124 () Bool)

(assert (=> b!7720858 (= e!4579687 tp!2265124)))

(declare-fun b!7720856 () Bool)

(assert (=> b!7720856 (= e!4579687 tp_is_empty!51463)))

(assert (= (and b!7720626 (is-ElementMatch!20554 (regOne!41620 r!14126))) b!7720856))

(assert (= (and b!7720626 (is-Concat!29399 (regOne!41620 r!14126))) b!7720857))

(assert (= (and b!7720626 (is-Star!20554 (regOne!41620 r!14126))) b!7720858))

(assert (= (and b!7720626 (is-Union!20554 (regOne!41620 r!14126))) b!7720859))

(declare-fun e!4579688 () Bool)

(assert (=> b!7720626 (= tp!2265071 e!4579688)))

(declare-fun b!7720861 () Bool)

(declare-fun tp!2265128 () Bool)

(declare-fun tp!2265127 () Bool)

(assert (=> b!7720861 (= e!4579688 (and tp!2265128 tp!2265127))))

(declare-fun b!7720863 () Bool)

(declare-fun tp!2265131 () Bool)

(declare-fun tp!2265130 () Bool)

(assert (=> b!7720863 (= e!4579688 (and tp!2265131 tp!2265130))))

(declare-fun b!7720862 () Bool)

(declare-fun tp!2265129 () Bool)

(assert (=> b!7720862 (= e!4579688 tp!2265129)))

(declare-fun b!7720860 () Bool)

(assert (=> b!7720860 (= e!4579688 tp_is_empty!51463)))

(assert (= (and b!7720626 (is-ElementMatch!20554 (regTwo!41620 r!14126))) b!7720860))

(assert (= (and b!7720626 (is-Concat!29399 (regTwo!41620 r!14126))) b!7720861))

(assert (= (and b!7720626 (is-Star!20554 (regTwo!41620 r!14126))) b!7720862))

(assert (= (and b!7720626 (is-Union!20554 (regTwo!41620 r!14126))) b!7720863))

(declare-fun b_lambda!289269 () Bool)

(assert (= b_lambda!289267 (or b!7720622 b_lambda!289269)))

(declare-fun bs!1963043 () Bool)

(declare-fun d!2337597 () Bool)

(assert (= bs!1963043 (and d!2337597 b!7720622)))

(declare-fun res!3080914 () Bool)

(declare-fun e!4579689 () Bool)

(assert (=> bs!1963043 (=> (not res!3080914) (not e!4579689))))

(assert (=> bs!1963043 (= res!3080914 (= (++!17755 (_1!38084 lt!2666305) (_2!38084 lt!2666305)) s!9605))))

(assert (=> bs!1963043 (= (dynLambda!29959 lambda!471112 lt!2666305) e!4579689)))

(declare-fun b!7720864 () Bool)

(declare-fun res!3080915 () Bool)

(assert (=> b!7720864 (=> (not res!3080915) (not e!4579689))))

(assert (=> b!7720864 (= res!3080915 (matchR!10046 (regOne!41620 r!14126) (_1!38084 lt!2666305)))))

(declare-fun b!7720865 () Bool)

(assert (=> b!7720865 (= e!4579689 (matchR!10046 (regTwo!41620 r!14126) (_2!38084 lt!2666305)))))

(assert (= (and bs!1963043 res!3080914) b!7720864))

(assert (= (and b!7720864 res!3080915) b!7720865))

(declare-fun m!8200014 () Bool)

(assert (=> bs!1963043 m!8200014))

(declare-fun m!8200018 () Bool)

(assert (=> b!7720864 m!8200018))

(declare-fun m!8200020 () Bool)

(assert (=> b!7720865 m!8200020))

(assert (=> d!2337577 d!2337597))

(push 1)

(assert (not d!2337581))

(assert (not d!2337587))

(assert tp_is_empty!51463)

(assert (not b!7720862))

(assert (not b!7720850))

(assert (not b!7720825))

(assert (not bs!1963043))

(assert (not b!7720859))

(assert (not b!7720775))

(assert (not b!7720766))

(assert (not b!7720841))

(assert (not b!7720709))

(assert (not d!2337577))

(assert (not d!2337579))

(assert (not d!2337593))

(assert (not b!7720826))

(assert (not b!7720840))

(assert (not b!7720857))

(assert (not bm!713562))

(assert (not b!7720820))

(assert (not b!7720858))

(assert (not b!7720828))

(assert (not b!7720773))

(assert (not b!7720842))

(assert (not b!7720863))

(assert (not bm!713565))

(assert (not b!7720861))

(assert (not bm!713570))

(assert (not b!7720855))

(assert (not b!7720700))

(assert (not b!7720770))

(assert (not d!2337585))

(assert (not b!7720847))

(assert (not b!7720777))

(assert (not b!7720779))

(assert (not bm!713563))

(assert (not b!7720851))

(assert (not b!7720854))

(assert (not b!7720824))

(assert (not b_lambda!289269))

(assert (not b!7720823))

(assert (not b!7720853))

(assert (not b!7720865))

(assert (not b!7720849))

(assert (not b!7720864))

(assert (not bm!713560))

(assert (not d!2337591))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

