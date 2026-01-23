; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!85060 () Bool)

(assert start!85060)

(declare-fun b!954593 () Bool)

(assert (=> b!954593 true))

(assert (=> b!954593 true))

(assert (=> b!954593 true))

(declare-fun lambda!32976 () Int)

(declare-fun lambda!32975 () Int)

(assert (=> b!954593 (not (= lambda!32976 lambda!32975))))

(assert (=> b!954593 true))

(assert (=> b!954593 true))

(assert (=> b!954593 true))

(declare-fun b!954586 () Bool)

(declare-fun res!433822 () Bool)

(declare-fun e!617461 () Bool)

(assert (=> b!954586 (=> res!433822 e!617461)))

(declare-fun lt!345227 () Bool)

(assert (=> b!954586 (= res!433822 (not lt!345227))))

(declare-fun b!954587 () Bool)

(declare-fun e!617458 () Bool)

(declare-datatypes ((C!5846 0))(
  ( (C!5847 (val!3171 Int)) )
))
(declare-datatypes ((Regex!2638 0))(
  ( (ElementMatch!2638 (c!155393 C!5846)) (Concat!4471 (regOne!5788 Regex!2638) (regTwo!5788 Regex!2638)) (EmptyExpr!2638) (Star!2638 (reg!2967 Regex!2638)) (EmptyLang!2638) (Union!2638 (regOne!5789 Regex!2638) (regTwo!5789 Regex!2638)) )
))
(declare-fun lt!345228 () Regex!2638)

(declare-datatypes ((List!9868 0))(
  ( (Nil!9852) (Cons!9852 (h!15253 C!5846) (t!100914 List!9868)) )
))
(declare-datatypes ((tuple2!11162 0))(
  ( (tuple2!11163 (_1!6407 List!9868) (_2!6407 List!9868)) )
))
(declare-fun lt!345225 () tuple2!11162)

(declare-fun matchR!1176 (Regex!2638 List!9868) Bool)

(assert (=> b!954587 (= e!617458 (matchR!1176 lt!345228 (_2!6407 lt!345225)))))

(declare-fun b!954588 () Bool)

(declare-fun e!617460 () Bool)

(declare-fun tp_is_empty!4919 () Bool)

(assert (=> b!954588 (= e!617460 tp_is_empty!4919)))

(declare-fun res!433821 () Bool)

(declare-fun e!617459 () Bool)

(assert (=> start!85060 (=> (not res!433821) (not e!617459))))

(declare-fun r!15766 () Regex!2638)

(declare-fun validRegex!1107 (Regex!2638) Bool)

(assert (=> start!85060 (= res!433821 (validRegex!1107 r!15766))))

(assert (=> start!85060 e!617459))

(assert (=> start!85060 e!617460))

(declare-fun e!617463 () Bool)

(assert (=> start!85060 e!617463))

(declare-fun b!954589 () Bool)

(declare-fun tp!294099 () Bool)

(declare-fun tp!294098 () Bool)

(assert (=> b!954589 (= e!617460 (and tp!294099 tp!294098))))

(declare-fun b!954590 () Bool)

(declare-fun tp!294101 () Bool)

(assert (=> b!954590 (= e!617460 tp!294101)))

(declare-fun b!954591 () Bool)

(declare-fun e!617462 () Bool)

(assert (=> b!954591 (= e!617459 (not e!617462))))

(declare-fun res!433824 () Bool)

(assert (=> b!954591 (=> res!433824 e!617462)))

(declare-fun lt!345231 () Bool)

(assert (=> b!954591 (= res!433824 (or (not lt!345231) (and (is-Concat!4471 r!15766) (is-EmptyExpr!2638 (regOne!5788 r!15766))) (and (is-Concat!4471 r!15766) (is-EmptyExpr!2638 (regTwo!5788 r!15766))) (is-Concat!4471 r!15766) (is-Union!2638 r!15766) (not (is-Star!2638 r!15766))))))

(declare-fun s!10566 () List!9868)

(declare-fun matchRSpec!439 (Regex!2638 List!9868) Bool)

(assert (=> b!954591 (= lt!345231 (matchRSpec!439 r!15766 s!10566))))

(assert (=> b!954591 (= lt!345231 (matchR!1176 r!15766 s!10566))))

(declare-datatypes ((Unit!14919 0))(
  ( (Unit!14920) )
))
(declare-fun lt!345230 () Unit!14919)

(declare-fun mainMatchTheorem!439 (Regex!2638 List!9868) Unit!14919)

(assert (=> b!954591 (= lt!345230 (mainMatchTheorem!439 r!15766 s!10566))))

(declare-fun b!954592 () Bool)

(declare-fun tp!294097 () Bool)

(declare-fun tp!294100 () Bool)

(assert (=> b!954592 (= e!617460 (and tp!294097 tp!294100))))

(assert (=> b!954593 (= e!617462 e!617461)))

(declare-fun res!433823 () Bool)

(assert (=> b!954593 (=> res!433823 e!617461)))

(declare-fun isEmpty!6129 (List!9868) Bool)

(assert (=> b!954593 (= res!433823 (isEmpty!6129 s!10566))))

(declare-fun Exists!385 (Int) Bool)

(assert (=> b!954593 (= (Exists!385 lambda!32975) (Exists!385 lambda!32976))))

(declare-fun lt!345229 () Unit!14919)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!113 (Regex!2638 List!9868) Unit!14919)

(assert (=> b!954593 (= lt!345229 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!113 (reg!2967 r!15766) s!10566))))

(assert (=> b!954593 (= lt!345227 (Exists!385 lambda!32975))))

(declare-datatypes ((Option!2223 0))(
  ( (None!2222) (Some!2222 (v!19639 tuple2!11162)) )
))
(declare-fun lt!345226 () Option!2223)

(declare-fun isDefined!1865 (Option!2223) Bool)

(assert (=> b!954593 (= lt!345227 (isDefined!1865 lt!345226))))

(declare-fun findConcatSeparation!329 (Regex!2638 Regex!2638 List!9868 List!9868 List!9868) Option!2223)

(assert (=> b!954593 (= lt!345226 (findConcatSeparation!329 (reg!2967 r!15766) lt!345228 Nil!9852 s!10566 s!10566))))

(declare-fun lt!345224 () Unit!14919)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!329 (Regex!2638 Regex!2638 List!9868) Unit!14919)

(assert (=> b!954593 (= lt!345224 (lemmaFindConcatSeparationEquivalentToExists!329 (reg!2967 r!15766) lt!345228 s!10566))))

(assert (=> b!954593 (= lt!345228 (Star!2638 (reg!2967 r!15766)))))

(declare-fun b!954594 () Bool)

(assert (=> b!954594 (= e!617461 e!617458)))

(declare-fun res!433825 () Bool)

(assert (=> b!954594 (=> res!433825 e!617458)))

(assert (=> b!954594 (= res!433825 (not (matchR!1176 (reg!2967 r!15766) (_1!6407 lt!345225))))))

(declare-fun get!3331 (Option!2223) tuple2!11162)

(assert (=> b!954594 (= lt!345225 (get!3331 lt!345226))))

(declare-fun b!954595 () Bool)

(declare-fun tp!294102 () Bool)

(assert (=> b!954595 (= e!617463 (and tp_is_empty!4919 tp!294102))))

(assert (= (and start!85060 res!433821) b!954591))

(assert (= (and b!954591 (not res!433824)) b!954593))

(assert (= (and b!954593 (not res!433823)) b!954586))

(assert (= (and b!954586 (not res!433822)) b!954594))

(assert (= (and b!954594 (not res!433825)) b!954587))

(assert (= (and start!85060 (is-ElementMatch!2638 r!15766)) b!954588))

(assert (= (and start!85060 (is-Concat!4471 r!15766)) b!954589))

(assert (= (and start!85060 (is-Star!2638 r!15766)) b!954590))

(assert (= (and start!85060 (is-Union!2638 r!15766)) b!954592))

(assert (= (and start!85060 (is-Cons!9852 s!10566)) b!954595))

(declare-fun m!1165605 () Bool)

(assert (=> b!954587 m!1165605))

(declare-fun m!1165607 () Bool)

(assert (=> start!85060 m!1165607))

(declare-fun m!1165609 () Bool)

(assert (=> b!954591 m!1165609))

(declare-fun m!1165611 () Bool)

(assert (=> b!954591 m!1165611))

(declare-fun m!1165613 () Bool)

(assert (=> b!954591 m!1165613))

(declare-fun m!1165615 () Bool)

(assert (=> b!954593 m!1165615))

(declare-fun m!1165617 () Bool)

(assert (=> b!954593 m!1165617))

(declare-fun m!1165619 () Bool)

(assert (=> b!954593 m!1165619))

(declare-fun m!1165621 () Bool)

(assert (=> b!954593 m!1165621))

(declare-fun m!1165623 () Bool)

(assert (=> b!954593 m!1165623))

(declare-fun m!1165625 () Bool)

(assert (=> b!954593 m!1165625))

(declare-fun m!1165627 () Bool)

(assert (=> b!954593 m!1165627))

(assert (=> b!954593 m!1165615))

(declare-fun m!1165629 () Bool)

(assert (=> b!954594 m!1165629))

(declare-fun m!1165631 () Bool)

(assert (=> b!954594 m!1165631))

(push 1)

(assert (not b!954593))

(assert (not b!954591))

(assert (not b!954592))

(assert tp_is_empty!4919)

(assert (not b!954587))

(assert (not b!954594))

(assert (not b!954589))

(assert (not b!954595))

(assert (not b!954590))

(assert (not start!85060))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!954676 () Bool)

(declare-fun e!617504 () Bool)

(declare-fun head!1749 (List!9868) C!5846)

(assert (=> b!954676 (= e!617504 (= (head!1749 (_2!6407 lt!345225)) (c!155393 lt!345228)))))

(declare-fun b!954677 () Bool)

(declare-fun res!433871 () Bool)

(declare-fun e!617503 () Bool)

(assert (=> b!954677 (=> res!433871 e!617503)))

(assert (=> b!954677 (= res!433871 (not (is-ElementMatch!2638 lt!345228)))))

(declare-fun e!617505 () Bool)

(assert (=> b!954677 (= e!617505 e!617503)))

(declare-fun b!954679 () Bool)

(declare-fun e!617506 () Bool)

(assert (=> b!954679 (= e!617503 e!617506)))

(declare-fun res!433877 () Bool)

(assert (=> b!954679 (=> (not res!433877) (not e!617506))))

(declare-fun lt!345258 () Bool)

(assert (=> b!954679 (= res!433877 (not lt!345258))))

(declare-fun bm!59931 () Bool)

(declare-fun call!59936 () Bool)

(assert (=> bm!59931 (= call!59936 (isEmpty!6129 (_2!6407 lt!345225)))))

(declare-fun b!954680 () Bool)

(declare-fun e!617502 () Bool)

(declare-fun derivativeStep!596 (Regex!2638 C!5846) Regex!2638)

(declare-fun tail!1311 (List!9868) List!9868)

(assert (=> b!954680 (= e!617502 (matchR!1176 (derivativeStep!596 lt!345228 (head!1749 (_2!6407 lt!345225))) (tail!1311 (_2!6407 lt!345225))))))

(declare-fun b!954681 () Bool)

(declare-fun e!617508 () Bool)

(assert (=> b!954681 (= e!617508 (not (= (head!1749 (_2!6407 lt!345225)) (c!155393 lt!345228))))))

(declare-fun b!954682 () Bool)

(declare-fun res!433876 () Bool)

(assert (=> b!954682 (=> res!433876 e!617508)))

(assert (=> b!954682 (= res!433876 (not (isEmpty!6129 (tail!1311 (_2!6407 lt!345225)))))))

(declare-fun b!954683 () Bool)

(assert (=> b!954683 (= e!617506 e!617508)))

(declare-fun res!433875 () Bool)

(assert (=> b!954683 (=> res!433875 e!617508)))

(assert (=> b!954683 (= res!433875 call!59936)))

(declare-fun b!954684 () Bool)

(assert (=> b!954684 (= e!617505 (not lt!345258))))

(declare-fun b!954685 () Bool)

(declare-fun e!617507 () Bool)

(assert (=> b!954685 (= e!617507 e!617505)))

(declare-fun c!155401 () Bool)

(assert (=> b!954685 (= c!155401 (is-EmptyLang!2638 lt!345228))))

(declare-fun b!954686 () Bool)

(assert (=> b!954686 (= e!617507 (= lt!345258 call!59936))))

(declare-fun b!954687 () Bool)

(declare-fun res!433872 () Bool)

(assert (=> b!954687 (=> (not res!433872) (not e!617504))))

(assert (=> b!954687 (= res!433872 (isEmpty!6129 (tail!1311 (_2!6407 lt!345225))))))

(declare-fun b!954688 () Bool)

(declare-fun res!433874 () Bool)

(assert (=> b!954688 (=> res!433874 e!617503)))

(assert (=> b!954688 (= res!433874 e!617504)))

(declare-fun res!433878 () Bool)

(assert (=> b!954688 (=> (not res!433878) (not e!617504))))

(assert (=> b!954688 (= res!433878 lt!345258)))

(declare-fun b!954689 () Bool)

(declare-fun nullable!787 (Regex!2638) Bool)

(assert (=> b!954689 (= e!617502 (nullable!787 lt!345228))))

(declare-fun d!284271 () Bool)

(assert (=> d!284271 e!617507))

(declare-fun c!155402 () Bool)

(assert (=> d!284271 (= c!155402 (is-EmptyExpr!2638 lt!345228))))

(assert (=> d!284271 (= lt!345258 e!617502)))

(declare-fun c!155403 () Bool)

(assert (=> d!284271 (= c!155403 (isEmpty!6129 (_2!6407 lt!345225)))))

(assert (=> d!284271 (validRegex!1107 lt!345228)))

(assert (=> d!284271 (= (matchR!1176 lt!345228 (_2!6407 lt!345225)) lt!345258)))

(declare-fun b!954678 () Bool)

(declare-fun res!433873 () Bool)

(assert (=> b!954678 (=> (not res!433873) (not e!617504))))

(assert (=> b!954678 (= res!433873 (not call!59936))))

(assert (= (and d!284271 c!155403) b!954689))

(assert (= (and d!284271 (not c!155403)) b!954680))

(assert (= (and d!284271 c!155402) b!954686))

(assert (= (and d!284271 (not c!155402)) b!954685))

(assert (= (and b!954685 c!155401) b!954684))

(assert (= (and b!954685 (not c!155401)) b!954677))

(assert (= (and b!954677 (not res!433871)) b!954688))

(assert (= (and b!954688 res!433878) b!954678))

(assert (= (and b!954678 res!433873) b!954687))

(assert (= (and b!954687 res!433872) b!954676))

(assert (= (and b!954688 (not res!433874)) b!954679))

(assert (= (and b!954679 res!433877) b!954683))

(assert (= (and b!954683 (not res!433875)) b!954682))

(assert (= (and b!954682 (not res!433876)) b!954681))

(assert (= (or b!954686 b!954678 b!954683) bm!59931))

(declare-fun m!1165663 () Bool)

(assert (=> b!954676 m!1165663))

(declare-fun m!1165665 () Bool)

(assert (=> d!284271 m!1165665))

(declare-fun m!1165667 () Bool)

(assert (=> d!284271 m!1165667))

(assert (=> b!954681 m!1165663))

(declare-fun m!1165669 () Bool)

(assert (=> b!954682 m!1165669))

(assert (=> b!954682 m!1165669))

(declare-fun m!1165671 () Bool)

(assert (=> b!954682 m!1165671))

(assert (=> bm!59931 m!1165665))

(assert (=> b!954680 m!1165663))

(assert (=> b!954680 m!1165663))

(declare-fun m!1165673 () Bool)

(assert (=> b!954680 m!1165673))

(assert (=> b!954680 m!1165669))

(assert (=> b!954680 m!1165673))

(assert (=> b!954680 m!1165669))

(declare-fun m!1165675 () Bool)

(assert (=> b!954680 m!1165675))

(declare-fun m!1165677 () Bool)

(assert (=> b!954689 m!1165677))

(assert (=> b!954687 m!1165669))

(assert (=> b!954687 m!1165669))

(assert (=> b!954687 m!1165671))

(assert (=> b!954587 d!284271))

(declare-fun d!284279 () Bool)

(declare-fun isEmpty!6131 (Option!2223) Bool)

(assert (=> d!284279 (= (isDefined!1865 lt!345226) (not (isEmpty!6131 lt!345226)))))

(declare-fun bs!240355 () Bool)

(assert (= bs!240355 d!284279))

(declare-fun m!1165679 () Bool)

(assert (=> bs!240355 m!1165679))

(assert (=> b!954593 d!284279))

(declare-fun bs!240356 () Bool)

(declare-fun d!284281 () Bool)

(assert (= bs!240356 (and d!284281 b!954593)))

(declare-fun lambda!32989 () Int)

(assert (=> bs!240356 (= (= (Star!2638 (reg!2967 r!15766)) lt!345228) (= lambda!32989 lambda!32975))))

(assert (=> bs!240356 (not (= lambda!32989 lambda!32976))))

(assert (=> d!284281 true))

(assert (=> d!284281 true))

(declare-fun lambda!32990 () Int)

(assert (=> bs!240356 (not (= lambda!32990 lambda!32975))))

(assert (=> bs!240356 (= (= (Star!2638 (reg!2967 r!15766)) lt!345228) (= lambda!32990 lambda!32976))))

(declare-fun bs!240357 () Bool)

(assert (= bs!240357 d!284281))

(assert (=> bs!240357 (not (= lambda!32990 lambda!32989))))

(assert (=> d!284281 true))

(assert (=> d!284281 true))

(assert (=> d!284281 (= (Exists!385 lambda!32989) (Exists!385 lambda!32990))))

(declare-fun lt!345261 () Unit!14919)

(declare-fun choose!5976 (Regex!2638 List!9868) Unit!14919)

(assert (=> d!284281 (= lt!345261 (choose!5976 (reg!2967 r!15766) s!10566))))

(assert (=> d!284281 (validRegex!1107 (reg!2967 r!15766))))

(assert (=> d!284281 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!113 (reg!2967 r!15766) s!10566) lt!345261)))

(declare-fun m!1165681 () Bool)

(assert (=> bs!240357 m!1165681))

(declare-fun m!1165683 () Bool)

(assert (=> bs!240357 m!1165683))

(declare-fun m!1165685 () Bool)

(assert (=> bs!240357 m!1165685))

(declare-fun m!1165687 () Bool)

(assert (=> bs!240357 m!1165687))

(assert (=> b!954593 d!284281))

(declare-fun b!954745 () Bool)

(declare-fun e!617540 () Option!2223)

(declare-fun e!617541 () Option!2223)

(assert (=> b!954745 (= e!617540 e!617541)))

(declare-fun c!155415 () Bool)

(assert (=> b!954745 (= c!155415 (is-Nil!9852 s!10566))))

(declare-fun b!954746 () Bool)

(declare-fun res!433914 () Bool)

(declare-fun e!617542 () Bool)

(assert (=> b!954746 (=> (not res!433914) (not e!617542))))

(declare-fun lt!345279 () Option!2223)

(assert (=> b!954746 (= res!433914 (matchR!1176 lt!345228 (_2!6407 (get!3331 lt!345279))))))

(declare-fun b!954747 () Bool)

(declare-fun e!617539 () Bool)

(assert (=> b!954747 (= e!617539 (matchR!1176 lt!345228 s!10566))))

(declare-fun b!954748 () Bool)

(declare-fun lt!345278 () Unit!14919)

(declare-fun lt!345277 () Unit!14919)

(assert (=> b!954748 (= lt!345278 lt!345277)))

(declare-fun ++!2641 (List!9868 List!9868) List!9868)

(assert (=> b!954748 (= (++!2641 (++!2641 Nil!9852 (Cons!9852 (h!15253 s!10566) Nil!9852)) (t!100914 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!250 (List!9868 C!5846 List!9868 List!9868) Unit!14919)

(assert (=> b!954748 (= lt!345277 (lemmaMoveElementToOtherListKeepsConcatEq!250 Nil!9852 (h!15253 s!10566) (t!100914 s!10566) s!10566))))

(assert (=> b!954748 (= e!617541 (findConcatSeparation!329 (reg!2967 r!15766) lt!345228 (++!2641 Nil!9852 (Cons!9852 (h!15253 s!10566) Nil!9852)) (t!100914 s!10566) s!10566))))

(declare-fun b!954750 () Bool)

(assert (=> b!954750 (= e!617542 (= (++!2641 (_1!6407 (get!3331 lt!345279)) (_2!6407 (get!3331 lt!345279))) s!10566))))

(declare-fun b!954751 () Bool)

(assert (=> b!954751 (= e!617540 (Some!2222 (tuple2!11163 Nil!9852 s!10566)))))

(declare-fun b!954752 () Bool)

(declare-fun res!433916 () Bool)

(assert (=> b!954752 (=> (not res!433916) (not e!617542))))

(assert (=> b!954752 (= res!433916 (matchR!1176 (reg!2967 r!15766) (_1!6407 (get!3331 lt!345279))))))

(declare-fun b!954753 () Bool)

(declare-fun e!617538 () Bool)

(assert (=> b!954753 (= e!617538 (not (isDefined!1865 lt!345279)))))

(declare-fun b!954749 () Bool)

(assert (=> b!954749 (= e!617541 None!2222)))

(declare-fun d!284283 () Bool)

(assert (=> d!284283 e!617538))

(declare-fun res!433915 () Bool)

(assert (=> d!284283 (=> res!433915 e!617538)))

(assert (=> d!284283 (= res!433915 e!617542)))

(declare-fun res!433917 () Bool)

(assert (=> d!284283 (=> (not res!433917) (not e!617542))))

(assert (=> d!284283 (= res!433917 (isDefined!1865 lt!345279))))

(assert (=> d!284283 (= lt!345279 e!617540)))

(declare-fun c!155414 () Bool)

(assert (=> d!284283 (= c!155414 e!617539)))

(declare-fun res!433918 () Bool)

(assert (=> d!284283 (=> (not res!433918) (not e!617539))))

(assert (=> d!284283 (= res!433918 (matchR!1176 (reg!2967 r!15766) Nil!9852))))

(assert (=> d!284283 (validRegex!1107 (reg!2967 r!15766))))

(assert (=> d!284283 (= (findConcatSeparation!329 (reg!2967 r!15766) lt!345228 Nil!9852 s!10566 s!10566) lt!345279)))

(assert (= (and d!284283 res!433918) b!954747))

(assert (= (and d!284283 c!155414) b!954751))

(assert (= (and d!284283 (not c!155414)) b!954745))

(assert (= (and b!954745 c!155415) b!954749))

(assert (= (and b!954745 (not c!155415)) b!954748))

(assert (= (and d!284283 res!433917) b!954752))

(assert (= (and b!954752 res!433916) b!954746))

(assert (= (and b!954746 res!433914) b!954750))

(assert (= (and d!284283 (not res!433915)) b!954753))

(declare-fun m!1165695 () Bool)

(assert (=> b!954746 m!1165695))

(declare-fun m!1165699 () Bool)

(assert (=> b!954746 m!1165699))

(declare-fun m!1165701 () Bool)

(assert (=> b!954747 m!1165701))

(declare-fun m!1165705 () Bool)

(assert (=> b!954748 m!1165705))

(assert (=> b!954748 m!1165705))

(declare-fun m!1165711 () Bool)

(assert (=> b!954748 m!1165711))

(declare-fun m!1165713 () Bool)

(assert (=> b!954748 m!1165713))

(assert (=> b!954748 m!1165705))

(declare-fun m!1165717 () Bool)

(assert (=> b!954748 m!1165717))

(assert (=> b!954750 m!1165695))

(declare-fun m!1165723 () Bool)

(assert (=> b!954750 m!1165723))

(declare-fun m!1165725 () Bool)

(assert (=> d!284283 m!1165725))

(declare-fun m!1165727 () Bool)

(assert (=> d!284283 m!1165727))

(assert (=> d!284283 m!1165687))

(assert (=> b!954752 m!1165695))

(declare-fun m!1165731 () Bool)

(assert (=> b!954752 m!1165731))

(assert (=> b!954753 m!1165725))

(assert (=> b!954593 d!284283))

(declare-fun d!284285 () Bool)

(assert (=> d!284285 (= (isEmpty!6129 s!10566) (is-Nil!9852 s!10566))))

(assert (=> b!954593 d!284285))

(declare-fun bs!240360 () Bool)

(declare-fun d!284289 () Bool)

(assert (= bs!240360 (and d!284289 b!954593)))

(declare-fun lambda!32993 () Int)

(assert (=> bs!240360 (= lambda!32993 lambda!32975)))

(assert (=> bs!240360 (not (= lambda!32993 lambda!32976))))

(declare-fun bs!240361 () Bool)

(assert (= bs!240361 (and d!284289 d!284281)))

(assert (=> bs!240361 (= (= lt!345228 (Star!2638 (reg!2967 r!15766))) (= lambda!32993 lambda!32989))))

(assert (=> bs!240361 (not (= lambda!32993 lambda!32990))))

(assert (=> d!284289 true))

(assert (=> d!284289 true))

(assert (=> d!284289 true))

(assert (=> d!284289 (= (isDefined!1865 (findConcatSeparation!329 (reg!2967 r!15766) lt!345228 Nil!9852 s!10566 s!10566)) (Exists!385 lambda!32993))))

(declare-fun lt!345282 () Unit!14919)

(declare-fun choose!5977 (Regex!2638 Regex!2638 List!9868) Unit!14919)

(assert (=> d!284289 (= lt!345282 (choose!5977 (reg!2967 r!15766) lt!345228 s!10566))))

(assert (=> d!284289 (validRegex!1107 (reg!2967 r!15766))))

(assert (=> d!284289 (= (lemmaFindConcatSeparationEquivalentToExists!329 (reg!2967 r!15766) lt!345228 s!10566) lt!345282)))

(declare-fun bs!240362 () Bool)

(assert (= bs!240362 d!284289))

(assert (=> bs!240362 m!1165621))

(declare-fun m!1165739 () Bool)

(assert (=> bs!240362 m!1165739))

(declare-fun m!1165741 () Bool)

(assert (=> bs!240362 m!1165741))

(assert (=> bs!240362 m!1165687))

(assert (=> bs!240362 m!1165621))

(declare-fun m!1165743 () Bool)

(assert (=> bs!240362 m!1165743))

(assert (=> b!954593 d!284289))

(declare-fun d!284295 () Bool)

(declare-fun choose!5978 (Int) Bool)

(assert (=> d!284295 (= (Exists!385 lambda!32976) (choose!5978 lambda!32976))))

(declare-fun bs!240363 () Bool)

(assert (= bs!240363 d!284295))

(declare-fun m!1165745 () Bool)

(assert (=> bs!240363 m!1165745))

(assert (=> b!954593 d!284295))

(declare-fun d!284297 () Bool)

(assert (=> d!284297 (= (Exists!385 lambda!32975) (choose!5978 lambda!32975))))

(declare-fun bs!240364 () Bool)

(assert (= bs!240364 d!284297))

(declare-fun m!1165747 () Bool)

(assert (=> bs!240364 m!1165747))

(assert (=> b!954593 d!284297))

(declare-fun b!954758 () Bool)

(declare-fun e!617547 () Bool)

(assert (=> b!954758 (= e!617547 (= (head!1749 (_1!6407 lt!345225)) (c!155393 (reg!2967 r!15766))))))

(declare-fun b!954759 () Bool)

(declare-fun res!433923 () Bool)

(declare-fun e!617546 () Bool)

(assert (=> b!954759 (=> res!433923 e!617546)))

(assert (=> b!954759 (= res!433923 (not (is-ElementMatch!2638 (reg!2967 r!15766))))))

(declare-fun e!617548 () Bool)

(assert (=> b!954759 (= e!617548 e!617546)))

(declare-fun b!954761 () Bool)

(declare-fun e!617549 () Bool)

(assert (=> b!954761 (= e!617546 e!617549)))

(declare-fun res!433929 () Bool)

(assert (=> b!954761 (=> (not res!433929) (not e!617549))))

(declare-fun lt!345283 () Bool)

(assert (=> b!954761 (= res!433929 (not lt!345283))))

(declare-fun bm!59932 () Bool)

(declare-fun call!59937 () Bool)

(assert (=> bm!59932 (= call!59937 (isEmpty!6129 (_1!6407 lt!345225)))))

(declare-fun b!954762 () Bool)

(declare-fun e!617545 () Bool)

(assert (=> b!954762 (= e!617545 (matchR!1176 (derivativeStep!596 (reg!2967 r!15766) (head!1749 (_1!6407 lt!345225))) (tail!1311 (_1!6407 lt!345225))))))

(declare-fun b!954763 () Bool)

(declare-fun e!617551 () Bool)

(assert (=> b!954763 (= e!617551 (not (= (head!1749 (_1!6407 lt!345225)) (c!155393 (reg!2967 r!15766)))))))

(declare-fun b!954764 () Bool)

(declare-fun res!433928 () Bool)

(assert (=> b!954764 (=> res!433928 e!617551)))

(assert (=> b!954764 (= res!433928 (not (isEmpty!6129 (tail!1311 (_1!6407 lt!345225)))))))

(declare-fun b!954765 () Bool)

(assert (=> b!954765 (= e!617549 e!617551)))

(declare-fun res!433927 () Bool)

(assert (=> b!954765 (=> res!433927 e!617551)))

(assert (=> b!954765 (= res!433927 call!59937)))

(declare-fun b!954766 () Bool)

(assert (=> b!954766 (= e!617548 (not lt!345283))))

(declare-fun b!954767 () Bool)

(declare-fun e!617550 () Bool)

(assert (=> b!954767 (= e!617550 e!617548)))

(declare-fun c!155416 () Bool)

(assert (=> b!954767 (= c!155416 (is-EmptyLang!2638 (reg!2967 r!15766)))))

(declare-fun b!954768 () Bool)

(assert (=> b!954768 (= e!617550 (= lt!345283 call!59937))))

(declare-fun b!954769 () Bool)

(declare-fun res!433924 () Bool)

(assert (=> b!954769 (=> (not res!433924) (not e!617547))))

(assert (=> b!954769 (= res!433924 (isEmpty!6129 (tail!1311 (_1!6407 lt!345225))))))

(declare-fun b!954770 () Bool)

(declare-fun res!433926 () Bool)

(assert (=> b!954770 (=> res!433926 e!617546)))

(assert (=> b!954770 (= res!433926 e!617547)))

(declare-fun res!433930 () Bool)

(assert (=> b!954770 (=> (not res!433930) (not e!617547))))

(assert (=> b!954770 (= res!433930 lt!345283)))

(declare-fun b!954771 () Bool)

(assert (=> b!954771 (= e!617545 (nullable!787 (reg!2967 r!15766)))))

(declare-fun d!284299 () Bool)

(assert (=> d!284299 e!617550))

(declare-fun c!155417 () Bool)

(assert (=> d!284299 (= c!155417 (is-EmptyExpr!2638 (reg!2967 r!15766)))))

(assert (=> d!284299 (= lt!345283 e!617545)))

(declare-fun c!155418 () Bool)

(assert (=> d!284299 (= c!155418 (isEmpty!6129 (_1!6407 lt!345225)))))

(assert (=> d!284299 (validRegex!1107 (reg!2967 r!15766))))

(assert (=> d!284299 (= (matchR!1176 (reg!2967 r!15766) (_1!6407 lt!345225)) lt!345283)))

(declare-fun b!954760 () Bool)

(declare-fun res!433925 () Bool)

(assert (=> b!954760 (=> (not res!433925) (not e!617547))))

(assert (=> b!954760 (= res!433925 (not call!59937))))

(assert (= (and d!284299 c!155418) b!954771))

(assert (= (and d!284299 (not c!155418)) b!954762))

(assert (= (and d!284299 c!155417) b!954768))

(assert (= (and d!284299 (not c!155417)) b!954767))

(assert (= (and b!954767 c!155416) b!954766))

(assert (= (and b!954767 (not c!155416)) b!954759))

(assert (= (and b!954759 (not res!433923)) b!954770))

(assert (= (and b!954770 res!433930) b!954760))

(assert (= (and b!954760 res!433925) b!954769))

(assert (= (and b!954769 res!433924) b!954758))

(assert (= (and b!954770 (not res!433926)) b!954761))

(assert (= (and b!954761 res!433929) b!954765))

(assert (= (and b!954765 (not res!433927)) b!954764))

(assert (= (and b!954764 (not res!433928)) b!954763))

(assert (= (or b!954768 b!954760 b!954765) bm!59932))

(declare-fun m!1165749 () Bool)

(assert (=> b!954758 m!1165749))

(declare-fun m!1165751 () Bool)

(assert (=> d!284299 m!1165751))

(assert (=> d!284299 m!1165687))

(assert (=> b!954763 m!1165749))

(declare-fun m!1165753 () Bool)

(assert (=> b!954764 m!1165753))

(assert (=> b!954764 m!1165753))

(declare-fun m!1165755 () Bool)

(assert (=> b!954764 m!1165755))

(assert (=> bm!59932 m!1165751))

(assert (=> b!954762 m!1165749))

(assert (=> b!954762 m!1165749))

(declare-fun m!1165757 () Bool)

(assert (=> b!954762 m!1165757))

(assert (=> b!954762 m!1165753))

(assert (=> b!954762 m!1165757))

(assert (=> b!954762 m!1165753))

(declare-fun m!1165759 () Bool)

(assert (=> b!954762 m!1165759))

(declare-fun m!1165761 () Bool)

(assert (=> b!954771 m!1165761))

(assert (=> b!954769 m!1165753))

(assert (=> b!954769 m!1165753))

(assert (=> b!954769 m!1165755))

(assert (=> b!954594 d!284299))

(declare-fun d!284301 () Bool)

(assert (=> d!284301 (= (get!3331 lt!345226) (v!19639 lt!345226))))

(assert (=> b!954594 d!284301))

(declare-fun bs!240367 () Bool)

(declare-fun b!954812 () Bool)

(assert (= bs!240367 (and b!954812 d!284281)))

(declare-fun lambda!33001 () Int)

(assert (=> bs!240367 (= (= r!15766 (Star!2638 (reg!2967 r!15766))) (= lambda!33001 lambda!32990))))

(declare-fun bs!240368 () Bool)

(assert (= bs!240368 (and b!954812 d!284289)))

(assert (=> bs!240368 (not (= lambda!33001 lambda!32993))))

(declare-fun bs!240369 () Bool)

(assert (= bs!240369 (and b!954812 b!954593)))

(assert (=> bs!240369 (= (= r!15766 lt!345228) (= lambda!33001 lambda!32976))))

(assert (=> bs!240367 (not (= lambda!33001 lambda!32989))))

(assert (=> bs!240369 (not (= lambda!33001 lambda!32975))))

(assert (=> b!954812 true))

(assert (=> b!954812 true))

(declare-fun bs!240370 () Bool)

(declare-fun b!954813 () Bool)

(assert (= bs!240370 (and b!954813 b!954812)))

(declare-fun lambda!33002 () Int)

(assert (=> bs!240370 (not (= lambda!33002 lambda!33001))))

(declare-fun bs!240371 () Bool)

(assert (= bs!240371 (and b!954813 d!284281)))

(assert (=> bs!240371 (not (= lambda!33002 lambda!32990))))

(declare-fun bs!240372 () Bool)

(assert (= bs!240372 (and b!954813 d!284289)))

(assert (=> bs!240372 (not (= lambda!33002 lambda!32993))))

(declare-fun bs!240373 () Bool)

(assert (= bs!240373 (and b!954813 b!954593)))

(assert (=> bs!240373 (not (= lambda!33002 lambda!32976))))

(assert (=> bs!240371 (not (= lambda!33002 lambda!32989))))

(assert (=> bs!240373 (not (= lambda!33002 lambda!32975))))

(assert (=> b!954813 true))

(assert (=> b!954813 true))

(declare-fun b!954808 () Bool)

(declare-fun res!433951 () Bool)

(declare-fun e!617574 () Bool)

(assert (=> b!954808 (=> res!433951 e!617574)))

(declare-fun call!59942 () Bool)

(assert (=> b!954808 (= res!433951 call!59942)))

(declare-fun e!617578 () Bool)

(assert (=> b!954808 (= e!617578 e!617574)))

(declare-fun b!954809 () Bool)

(declare-fun e!617572 () Bool)

(declare-fun e!617573 () Bool)

(assert (=> b!954809 (= e!617572 e!617573)))

(declare-fun res!433952 () Bool)

(assert (=> b!954809 (= res!433952 (matchRSpec!439 (regOne!5789 r!15766) s!10566))))

(assert (=> b!954809 (=> res!433952 e!617573)))

(declare-fun b!954810 () Bool)

(declare-fun c!155427 () Bool)

(assert (=> b!954810 (= c!155427 (is-ElementMatch!2638 r!15766))))

(declare-fun e!617575 () Bool)

(declare-fun e!617576 () Bool)

(assert (=> b!954810 (= e!617575 e!617576)))

(declare-fun b!954811 () Bool)

(assert (=> b!954811 (= e!617573 (matchRSpec!439 (regTwo!5789 r!15766) s!10566))))

(declare-fun call!59943 () Bool)

(assert (=> b!954812 (= e!617574 call!59943)))

(assert (=> b!954813 (= e!617578 call!59943)))

(declare-fun bm!59937 () Bool)

(declare-fun c!155429 () Bool)

(assert (=> bm!59937 (= call!59943 (Exists!385 (ite c!155429 lambda!33001 lambda!33002)))))

(declare-fun b!954814 () Bool)

(assert (=> b!954814 (= e!617572 e!617578)))

(assert (=> b!954814 (= c!155429 (is-Star!2638 r!15766))))

(declare-fun bm!59938 () Bool)

(assert (=> bm!59938 (= call!59942 (isEmpty!6129 s!10566))))

(declare-fun b!954815 () Bool)

(declare-fun e!617577 () Bool)

(assert (=> b!954815 (= e!617577 e!617575)))

(declare-fun res!433953 () Bool)

(assert (=> b!954815 (= res!433953 (not (is-EmptyLang!2638 r!15766)))))

(assert (=> b!954815 (=> (not res!433953) (not e!617575))))

(declare-fun d!284303 () Bool)

(declare-fun c!155430 () Bool)

(assert (=> d!284303 (= c!155430 (is-EmptyExpr!2638 r!15766))))

(assert (=> d!284303 (= (matchRSpec!439 r!15766 s!10566) e!617577)))

(declare-fun b!954816 () Bool)

(assert (=> b!954816 (= e!617577 call!59942)))

(declare-fun b!954817 () Bool)

(declare-fun c!155428 () Bool)

(assert (=> b!954817 (= c!155428 (is-Union!2638 r!15766))))

(assert (=> b!954817 (= e!617576 e!617572)))

(declare-fun b!954818 () Bool)

(assert (=> b!954818 (= e!617576 (= s!10566 (Cons!9852 (c!155393 r!15766) Nil!9852)))))

(assert (= (and d!284303 c!155430) b!954816))

(assert (= (and d!284303 (not c!155430)) b!954815))

(assert (= (and b!954815 res!433953) b!954810))

(assert (= (and b!954810 c!155427) b!954818))

(assert (= (and b!954810 (not c!155427)) b!954817))

(assert (= (and b!954817 c!155428) b!954809))

(assert (= (and b!954817 (not c!155428)) b!954814))

(assert (= (and b!954809 (not res!433952)) b!954811))

(assert (= (and b!954814 c!155429) b!954808))

(assert (= (and b!954814 (not c!155429)) b!954813))

(assert (= (and b!954808 (not res!433951)) b!954812))

(assert (= (or b!954812 b!954813) bm!59937))

(assert (= (or b!954816 b!954808) bm!59938))

(declare-fun m!1165769 () Bool)

(assert (=> b!954809 m!1165769))

(declare-fun m!1165771 () Bool)

(assert (=> b!954811 m!1165771))

(declare-fun m!1165773 () Bool)

(assert (=> bm!59937 m!1165773))

(assert (=> bm!59938 m!1165617))

(assert (=> b!954591 d!284303))

(declare-fun b!954819 () Bool)

(declare-fun e!617581 () Bool)

(assert (=> b!954819 (= e!617581 (= (head!1749 s!10566) (c!155393 r!15766)))))

(declare-fun b!954820 () Bool)

(declare-fun res!433954 () Bool)

(declare-fun e!617580 () Bool)

(assert (=> b!954820 (=> res!433954 e!617580)))

(assert (=> b!954820 (= res!433954 (not (is-ElementMatch!2638 r!15766)))))

(declare-fun e!617582 () Bool)

(assert (=> b!954820 (= e!617582 e!617580)))

(declare-fun b!954822 () Bool)

(declare-fun e!617583 () Bool)

(assert (=> b!954822 (= e!617580 e!617583)))

(declare-fun res!433960 () Bool)

(assert (=> b!954822 (=> (not res!433960) (not e!617583))))

(declare-fun lt!345287 () Bool)

(assert (=> b!954822 (= res!433960 (not lt!345287))))

(declare-fun bm!59939 () Bool)

(declare-fun call!59944 () Bool)

(assert (=> bm!59939 (= call!59944 (isEmpty!6129 s!10566))))

(declare-fun b!954823 () Bool)

(declare-fun e!617579 () Bool)

(assert (=> b!954823 (= e!617579 (matchR!1176 (derivativeStep!596 r!15766 (head!1749 s!10566)) (tail!1311 s!10566)))))

(declare-fun b!954824 () Bool)

(declare-fun e!617585 () Bool)

(assert (=> b!954824 (= e!617585 (not (= (head!1749 s!10566) (c!155393 r!15766))))))

(declare-fun b!954825 () Bool)

(declare-fun res!433959 () Bool)

(assert (=> b!954825 (=> res!433959 e!617585)))

(assert (=> b!954825 (= res!433959 (not (isEmpty!6129 (tail!1311 s!10566))))))

(declare-fun b!954826 () Bool)

(assert (=> b!954826 (= e!617583 e!617585)))

(declare-fun res!433958 () Bool)

(assert (=> b!954826 (=> res!433958 e!617585)))

(assert (=> b!954826 (= res!433958 call!59944)))

(declare-fun b!954827 () Bool)

(assert (=> b!954827 (= e!617582 (not lt!345287))))

(declare-fun b!954828 () Bool)

(declare-fun e!617584 () Bool)

(assert (=> b!954828 (= e!617584 e!617582)))

(declare-fun c!155431 () Bool)

(assert (=> b!954828 (= c!155431 (is-EmptyLang!2638 r!15766))))

(declare-fun b!954829 () Bool)

(assert (=> b!954829 (= e!617584 (= lt!345287 call!59944))))

(declare-fun b!954830 () Bool)

(declare-fun res!433955 () Bool)

(assert (=> b!954830 (=> (not res!433955) (not e!617581))))

(assert (=> b!954830 (= res!433955 (isEmpty!6129 (tail!1311 s!10566)))))

(declare-fun b!954831 () Bool)

(declare-fun res!433957 () Bool)

(assert (=> b!954831 (=> res!433957 e!617580)))

(assert (=> b!954831 (= res!433957 e!617581)))

(declare-fun res!433961 () Bool)

(assert (=> b!954831 (=> (not res!433961) (not e!617581))))

(assert (=> b!954831 (= res!433961 lt!345287)))

(declare-fun b!954832 () Bool)

(assert (=> b!954832 (= e!617579 (nullable!787 r!15766))))

(declare-fun d!284307 () Bool)

(assert (=> d!284307 e!617584))

(declare-fun c!155432 () Bool)

(assert (=> d!284307 (= c!155432 (is-EmptyExpr!2638 r!15766))))

(assert (=> d!284307 (= lt!345287 e!617579)))

(declare-fun c!155433 () Bool)

(assert (=> d!284307 (= c!155433 (isEmpty!6129 s!10566))))

(assert (=> d!284307 (validRegex!1107 r!15766)))

(assert (=> d!284307 (= (matchR!1176 r!15766 s!10566) lt!345287)))

(declare-fun b!954821 () Bool)

(declare-fun res!433956 () Bool)

(assert (=> b!954821 (=> (not res!433956) (not e!617581))))

(assert (=> b!954821 (= res!433956 (not call!59944))))

(assert (= (and d!284307 c!155433) b!954832))

(assert (= (and d!284307 (not c!155433)) b!954823))

(assert (= (and d!284307 c!155432) b!954829))

(assert (= (and d!284307 (not c!155432)) b!954828))

(assert (= (and b!954828 c!155431) b!954827))

(assert (= (and b!954828 (not c!155431)) b!954820))

(assert (= (and b!954820 (not res!433954)) b!954831))

(assert (= (and b!954831 res!433961) b!954821))

(assert (= (and b!954821 res!433956) b!954830))

(assert (= (and b!954830 res!433955) b!954819))

(assert (= (and b!954831 (not res!433957)) b!954822))

(assert (= (and b!954822 res!433960) b!954826))

(assert (= (and b!954826 (not res!433958)) b!954825))

(assert (= (and b!954825 (not res!433959)) b!954824))

(assert (= (or b!954829 b!954821 b!954826) bm!59939))

(declare-fun m!1165775 () Bool)

(assert (=> b!954819 m!1165775))

(assert (=> d!284307 m!1165617))

(assert (=> d!284307 m!1165607))

(assert (=> b!954824 m!1165775))

(declare-fun m!1165777 () Bool)

(assert (=> b!954825 m!1165777))

(assert (=> b!954825 m!1165777))

(declare-fun m!1165779 () Bool)

(assert (=> b!954825 m!1165779))

(assert (=> bm!59939 m!1165617))

(assert (=> b!954823 m!1165775))

(assert (=> b!954823 m!1165775))

(declare-fun m!1165781 () Bool)

(assert (=> b!954823 m!1165781))

(assert (=> b!954823 m!1165777))

(assert (=> b!954823 m!1165781))

(assert (=> b!954823 m!1165777))

(declare-fun m!1165783 () Bool)

(assert (=> b!954823 m!1165783))

(declare-fun m!1165785 () Bool)

(assert (=> b!954832 m!1165785))

(assert (=> b!954830 m!1165777))

(assert (=> b!954830 m!1165777))

(assert (=> b!954830 m!1165779))

(assert (=> b!954591 d!284307))

(declare-fun d!284309 () Bool)

(assert (=> d!284309 (= (matchR!1176 r!15766 s!10566) (matchRSpec!439 r!15766 s!10566))))

(declare-fun lt!345290 () Unit!14919)

(declare-fun choose!5979 (Regex!2638 List!9868) Unit!14919)

(assert (=> d!284309 (= lt!345290 (choose!5979 r!15766 s!10566))))

(assert (=> d!284309 (validRegex!1107 r!15766)))

(assert (=> d!284309 (= (mainMatchTheorem!439 r!15766 s!10566) lt!345290)))

(declare-fun bs!240374 () Bool)

(assert (= bs!240374 d!284309))

(assert (=> bs!240374 m!1165611))

(assert (=> bs!240374 m!1165609))

(declare-fun m!1165787 () Bool)

(assert (=> bs!240374 m!1165787))

(assert (=> bs!240374 m!1165607))

(assert (=> b!954591 d!284309))

(declare-fun bm!59946 () Bool)

(declare-fun call!59952 () Bool)

(declare-fun c!155439 () Bool)

(declare-fun c!155438 () Bool)

(assert (=> bm!59946 (= call!59952 (validRegex!1107 (ite c!155439 (reg!2967 r!15766) (ite c!155438 (regTwo!5789 r!15766) (regTwo!5788 r!15766)))))))

(declare-fun d!284311 () Bool)

(declare-fun res!433978 () Bool)

(declare-fun e!617604 () Bool)

(assert (=> d!284311 (=> res!433978 e!617604)))

(assert (=> d!284311 (= res!433978 (is-ElementMatch!2638 r!15766))))

(assert (=> d!284311 (= (validRegex!1107 r!15766) e!617604)))

(declare-fun bm!59947 () Bool)

(declare-fun call!59951 () Bool)

(assert (=> bm!59947 (= call!59951 (validRegex!1107 (ite c!155438 (regOne!5789 r!15766) (regOne!5788 r!15766))))))

(declare-fun b!954855 () Bool)

(declare-fun e!617603 () Bool)

(declare-fun e!617605 () Bool)

(assert (=> b!954855 (= e!617603 e!617605)))

(assert (=> b!954855 (= c!155438 (is-Union!2638 r!15766))))

(declare-fun b!954856 () Bool)

(declare-fun e!617602 () Bool)

(declare-fun e!617608 () Bool)

(assert (=> b!954856 (= e!617602 e!617608)))

(declare-fun res!433979 () Bool)

(assert (=> b!954856 (=> (not res!433979) (not e!617608))))

(assert (=> b!954856 (= res!433979 call!59951)))

(declare-fun b!954857 () Bool)

(declare-fun e!617607 () Bool)

(assert (=> b!954857 (= e!617603 e!617607)))

(declare-fun res!433980 () Bool)

(assert (=> b!954857 (= res!433980 (not (nullable!787 (reg!2967 r!15766))))))

(assert (=> b!954857 (=> (not res!433980) (not e!617607))))

(declare-fun b!954858 () Bool)

(declare-fun e!617606 () Bool)

(declare-fun call!59953 () Bool)

(assert (=> b!954858 (= e!617606 call!59953)))

(declare-fun bm!59948 () Bool)

(assert (=> bm!59948 (= call!59953 call!59952)))

(declare-fun b!954859 () Bool)

(assert (=> b!954859 (= e!617608 call!59953)))

(declare-fun b!954860 () Bool)

(declare-fun res!433976 () Bool)

(assert (=> b!954860 (=> res!433976 e!617602)))

(assert (=> b!954860 (= res!433976 (not (is-Concat!4471 r!15766)))))

(assert (=> b!954860 (= e!617605 e!617602)))

(declare-fun b!954861 () Bool)

(declare-fun res!433977 () Bool)

(assert (=> b!954861 (=> (not res!433977) (not e!617606))))

(assert (=> b!954861 (= res!433977 call!59951)))

(assert (=> b!954861 (= e!617605 e!617606)))

(declare-fun b!954862 () Bool)

(assert (=> b!954862 (= e!617607 call!59952)))

(declare-fun b!954863 () Bool)

(assert (=> b!954863 (= e!617604 e!617603)))

(assert (=> b!954863 (= c!155439 (is-Star!2638 r!15766))))

(assert (= (and d!284311 (not res!433978)) b!954863))

(assert (= (and b!954863 c!155439) b!954857))

(assert (= (and b!954863 (not c!155439)) b!954855))

(assert (= (and b!954857 res!433980) b!954862))

(assert (= (and b!954855 c!155438) b!954861))

(assert (= (and b!954855 (not c!155438)) b!954860))

(assert (= (and b!954861 res!433977) b!954858))

(assert (= (and b!954860 (not res!433976)) b!954856))

(assert (= (and b!954856 res!433979) b!954859))

(assert (= (or b!954858 b!954859) bm!59948))

(assert (= (or b!954861 b!954856) bm!59947))

(assert (= (or b!954862 bm!59948) bm!59946))

(declare-fun m!1165789 () Bool)

(assert (=> bm!59946 m!1165789))

(declare-fun m!1165791 () Bool)

(assert (=> bm!59947 m!1165791))

(assert (=> b!954857 m!1165761))

(assert (=> start!85060 d!284311))

(declare-fun b!954877 () Bool)

(declare-fun e!617611 () Bool)

(declare-fun tp!294133 () Bool)

(declare-fun tp!294134 () Bool)

(assert (=> b!954877 (= e!617611 (and tp!294133 tp!294134))))

(declare-fun b!954876 () Bool)

(declare-fun tp!294135 () Bool)

(assert (=> b!954876 (= e!617611 tp!294135)))

(declare-fun b!954874 () Bool)

(assert (=> b!954874 (= e!617611 tp_is_empty!4919)))

(assert (=> b!954592 (= tp!294097 e!617611)))

(declare-fun b!954875 () Bool)

(declare-fun tp!294132 () Bool)

(declare-fun tp!294131 () Bool)

(assert (=> b!954875 (= e!617611 (and tp!294132 tp!294131))))

(assert (= (and b!954592 (is-ElementMatch!2638 (regOne!5789 r!15766))) b!954874))

(assert (= (and b!954592 (is-Concat!4471 (regOne!5789 r!15766))) b!954875))

(assert (= (and b!954592 (is-Star!2638 (regOne!5789 r!15766))) b!954876))

(assert (= (and b!954592 (is-Union!2638 (regOne!5789 r!15766))) b!954877))

(declare-fun b!954881 () Bool)

(declare-fun e!617612 () Bool)

(declare-fun tp!294138 () Bool)

(declare-fun tp!294139 () Bool)

(assert (=> b!954881 (= e!617612 (and tp!294138 tp!294139))))

(declare-fun b!954880 () Bool)

(declare-fun tp!294140 () Bool)

(assert (=> b!954880 (= e!617612 tp!294140)))

(declare-fun b!954878 () Bool)

(assert (=> b!954878 (= e!617612 tp_is_empty!4919)))

(assert (=> b!954592 (= tp!294100 e!617612)))

(declare-fun b!954879 () Bool)

(declare-fun tp!294137 () Bool)

(declare-fun tp!294136 () Bool)

(assert (=> b!954879 (= e!617612 (and tp!294137 tp!294136))))

(assert (= (and b!954592 (is-ElementMatch!2638 (regTwo!5789 r!15766))) b!954878))

(assert (= (and b!954592 (is-Concat!4471 (regTwo!5789 r!15766))) b!954879))

(assert (= (and b!954592 (is-Star!2638 (regTwo!5789 r!15766))) b!954880))

(assert (= (and b!954592 (is-Union!2638 (regTwo!5789 r!15766))) b!954881))

(declare-fun b!954886 () Bool)

(declare-fun e!617615 () Bool)

(declare-fun tp!294143 () Bool)

(assert (=> b!954886 (= e!617615 (and tp_is_empty!4919 tp!294143))))

(assert (=> b!954595 (= tp!294102 e!617615)))

(assert (= (and b!954595 (is-Cons!9852 (t!100914 s!10566))) b!954886))

(declare-fun b!954890 () Bool)

(declare-fun e!617616 () Bool)

(declare-fun tp!294146 () Bool)

(declare-fun tp!294147 () Bool)

(assert (=> b!954890 (= e!617616 (and tp!294146 tp!294147))))

(declare-fun b!954889 () Bool)

(declare-fun tp!294148 () Bool)

(assert (=> b!954889 (= e!617616 tp!294148)))

(declare-fun b!954887 () Bool)

(assert (=> b!954887 (= e!617616 tp_is_empty!4919)))

(assert (=> b!954589 (= tp!294099 e!617616)))

(declare-fun b!954888 () Bool)

(declare-fun tp!294145 () Bool)

(declare-fun tp!294144 () Bool)

(assert (=> b!954888 (= e!617616 (and tp!294145 tp!294144))))

(assert (= (and b!954589 (is-ElementMatch!2638 (regOne!5788 r!15766))) b!954887))

(assert (= (and b!954589 (is-Concat!4471 (regOne!5788 r!15766))) b!954888))

(assert (= (and b!954589 (is-Star!2638 (regOne!5788 r!15766))) b!954889))

(assert (= (and b!954589 (is-Union!2638 (regOne!5788 r!15766))) b!954890))

(declare-fun b!954894 () Bool)

(declare-fun e!617617 () Bool)

(declare-fun tp!294151 () Bool)

(declare-fun tp!294152 () Bool)

(assert (=> b!954894 (= e!617617 (and tp!294151 tp!294152))))

(declare-fun b!954893 () Bool)

(declare-fun tp!294153 () Bool)

(assert (=> b!954893 (= e!617617 tp!294153)))

(declare-fun b!954891 () Bool)

(assert (=> b!954891 (= e!617617 tp_is_empty!4919)))

(assert (=> b!954589 (= tp!294098 e!617617)))

(declare-fun b!954892 () Bool)

(declare-fun tp!294150 () Bool)

(declare-fun tp!294149 () Bool)

(assert (=> b!954892 (= e!617617 (and tp!294150 tp!294149))))

(assert (= (and b!954589 (is-ElementMatch!2638 (regTwo!5788 r!15766))) b!954891))

(assert (= (and b!954589 (is-Concat!4471 (regTwo!5788 r!15766))) b!954892))

(assert (= (and b!954589 (is-Star!2638 (regTwo!5788 r!15766))) b!954893))

(assert (= (and b!954589 (is-Union!2638 (regTwo!5788 r!15766))) b!954894))

(declare-fun b!954898 () Bool)

(declare-fun e!617618 () Bool)

(declare-fun tp!294156 () Bool)

(declare-fun tp!294157 () Bool)

(assert (=> b!954898 (= e!617618 (and tp!294156 tp!294157))))

(declare-fun b!954897 () Bool)

(declare-fun tp!294158 () Bool)

(assert (=> b!954897 (= e!617618 tp!294158)))

(declare-fun b!954895 () Bool)

(assert (=> b!954895 (= e!617618 tp_is_empty!4919)))

(assert (=> b!954590 (= tp!294101 e!617618)))

(declare-fun b!954896 () Bool)

(declare-fun tp!294155 () Bool)

(declare-fun tp!294154 () Bool)

(assert (=> b!954896 (= e!617618 (and tp!294155 tp!294154))))

(assert (= (and b!954590 (is-ElementMatch!2638 (reg!2967 r!15766))) b!954895))

(assert (= (and b!954590 (is-Concat!4471 (reg!2967 r!15766))) b!954896))

(assert (= (and b!954590 (is-Star!2638 (reg!2967 r!15766))) b!954897))

(assert (= (and b!954590 (is-Union!2638 (reg!2967 r!15766))) b!954898))

(push 1)

(assert (not b!954811))

(assert (not d!284299))

(assert (not d!284289))

(assert (not bm!59937))

(assert (not b!954680))

(assert (not b!954762))

(assert (not b!954876))

(assert (not b!954897))

(assert (not b!954881))

(assert (not b!954879))

(assert (not b!954823))

(assert (not b!954888))

(assert (not b!954771))

(assert (not b!954682))

(assert (not bm!59932))

(assert (not b!954763))

(assert (not b!954877))

(assert (not b!954681))

(assert (not b!954758))

(assert (not d!284309))

(assert (not b!954809))

(assert (not b!954880))

(assert (not b!954750))

(assert (not b!954832))

(assert (not b!954889))

(assert (not b!954830))

(assert (not b!954894))

(assert (not b!954890))

(assert (not bm!59947))

(assert (not d!284281))

(assert (not d!284295))

(assert (not bm!59939))

(assert (not b!954752))

(assert tp_is_empty!4919)

(assert (not b!954748))

(assert (not b!954825))

(assert (not b!954857))

(assert (not b!954689))

(assert (not b!954875))

(assert (not d!284297))

(assert (not b!954753))

(assert (not b!954896))

(assert (not b!954819))

(assert (not b!954898))

(assert (not bm!59931))

(assert (not b!954764))

(assert (not b!954676))

(assert (not b!954824))

(assert (not b!954886))

(assert (not bm!59938))

(assert (not d!284271))

(assert (not bm!59946))

(assert (not b!954892))

(assert (not b!954687))

(assert (not d!284283))

(assert (not b!954769))

(assert (not d!284279))

(assert (not b!954747))

(assert (not b!954746))

(assert (not d!284307))

(assert (not b!954893))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

