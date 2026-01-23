; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!666410 () Bool)

(assert start!666410)

(declare-fun b!6937621 () Bool)

(assert (=> b!6937621 true))

(assert (=> b!6937621 true))

(assert (=> b!6937621 true))

(declare-fun lambda!395110 () Int)

(declare-fun lambda!395109 () Int)

(assert (=> b!6937621 (not (= lambda!395110 lambda!395109))))

(assert (=> b!6937621 true))

(assert (=> b!6937621 true))

(assert (=> b!6937621 true))

(declare-fun bs!1853053 () Bool)

(declare-fun b!6937619 () Bool)

(assert (= bs!1853053 (and b!6937619 b!6937621)))

(declare-datatypes ((C!34192 0))(
  ( (C!34193 (val!26798 Int)) )
))
(declare-datatypes ((Regex!16961 0))(
  ( (ElementMatch!16961 (c!1287333 C!34192)) (Concat!25806 (regOne!34434 Regex!16961) (regTwo!34434 Regex!16961)) (EmptyExpr!16961) (Star!16961 (reg!17290 Regex!16961)) (EmptyLang!16961) (Union!16961 (regOne!34435 Regex!16961) (regTwo!34435 Regex!16961)) )
))
(declare-fun r1!6342 () Regex!16961)

(declare-fun r3!135 () Regex!16961)

(declare-datatypes ((List!66714 0))(
  ( (Nil!66590) (Cons!66590 (h!73038 C!34192) (t!380457 List!66714)) )
))
(declare-fun s!14361 () List!66714)

(declare-fun lt!2474950 () Regex!16961)

(declare-fun lambda!395111 () Int)

(declare-fun r2!6280 () Regex!16961)

(declare-datatypes ((tuple2!67636 0))(
  ( (tuple2!67637 (_1!37121 List!66714) (_2!37121 List!66714)) )
))
(declare-fun lt!2474938 () tuple2!67636)

(assert (=> bs!1853053 (= (and (= (_2!37121 lt!2474938) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2474950)) (= lambda!395111 lambda!395109))))

(assert (=> bs!1853053 (not (= lambda!395111 lambda!395110))))

(assert (=> b!6937619 true))

(assert (=> b!6937619 true))

(assert (=> b!6937619 true))

(declare-fun lambda!395112 () Int)

(assert (=> bs!1853053 (not (= lambda!395112 lambda!395109))))

(assert (=> bs!1853053 (= (and (= (_2!37121 lt!2474938) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2474950)) (= lambda!395112 lambda!395110))))

(assert (=> b!6937619 (not (= lambda!395112 lambda!395111))))

(assert (=> b!6937619 true))

(assert (=> b!6937619 true))

(assert (=> b!6937619 true))

(declare-fun bs!1853054 () Bool)

(declare-fun b!6937624 () Bool)

(assert (= bs!1853054 (and b!6937624 b!6937621)))

(declare-fun lt!2474940 () List!66714)

(declare-fun lambda!395113 () Int)

(assert (=> bs!1853054 (= (and (= lt!2474940 s!14361) (= r2!6280 lt!2474950)) (= lambda!395113 lambda!395109))))

(assert (=> bs!1853054 (not (= lambda!395113 lambda!395110))))

(declare-fun bs!1853055 () Bool)

(assert (= bs!1853055 (and b!6937624 b!6937619)))

(assert (=> bs!1853055 (= (and (= lt!2474940 (_2!37121 lt!2474938)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395113 lambda!395111))))

(assert (=> bs!1853055 (not (= lambda!395113 lambda!395112))))

(assert (=> b!6937624 true))

(assert (=> b!6937624 true))

(assert (=> b!6937624 true))

(declare-fun lambda!395114 () Int)

(assert (=> bs!1853055 (not (= lambda!395114 lambda!395111))))

(assert (=> bs!1853054 (not (= lambda!395114 lambda!395109))))

(assert (=> b!6937624 (not (= lambda!395114 lambda!395113))))

(assert (=> bs!1853054 (= (and (= lt!2474940 s!14361) (= r2!6280 lt!2474950)) (= lambda!395114 lambda!395110))))

(assert (=> bs!1853055 (= (and (= lt!2474940 (_2!37121 lt!2474938)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395114 lambda!395112))))

(assert (=> b!6937624 true))

(assert (=> b!6937624 true))

(assert (=> b!6937624 true))

(declare-fun b!6937604 () Bool)

(declare-fun e!4173795 () Bool)

(declare-fun e!4173792 () Bool)

(assert (=> b!6937604 (= e!4173795 (not e!4173792))))

(declare-fun res!2829803 () Bool)

(assert (=> b!6937604 (=> res!2829803 e!4173792)))

(declare-fun lt!2474964 () Bool)

(assert (=> b!6937604 (= res!2829803 lt!2474964)))

(declare-fun lt!2474946 () Regex!16961)

(declare-fun matchR!9100 (Regex!16961 List!66714) Bool)

(declare-fun matchRSpec!4018 (Regex!16961 List!66714) Bool)

(assert (=> b!6937604 (= (matchR!9100 lt!2474946 s!14361) (matchRSpec!4018 lt!2474946 s!14361))))

(declare-datatypes ((Unit!160646 0))(
  ( (Unit!160647) )
))
(declare-fun lt!2474953 () Unit!160646)

(declare-fun mainMatchTheorem!4018 (Regex!16961 List!66714) Unit!160646)

(assert (=> b!6937604 (= lt!2474953 (mainMatchTheorem!4018 lt!2474946 s!14361))))

(declare-fun lt!2474941 () Regex!16961)

(assert (=> b!6937604 (= lt!2474964 (matchRSpec!4018 lt!2474941 s!14361))))

(assert (=> b!6937604 (= lt!2474964 (matchR!9100 lt!2474941 s!14361))))

(declare-fun lt!2474949 () Unit!160646)

(assert (=> b!6937604 (= lt!2474949 (mainMatchTheorem!4018 lt!2474941 s!14361))))

(assert (=> b!6937604 (= lt!2474946 (Concat!25806 r1!6342 lt!2474950))))

(assert (=> b!6937604 (= lt!2474950 (Concat!25806 r2!6280 r3!135))))

(declare-fun lt!2474959 () Regex!16961)

(assert (=> b!6937604 (= lt!2474941 (Concat!25806 lt!2474959 r3!135))))

(assert (=> b!6937604 (= lt!2474959 (Concat!25806 r1!6342 r2!6280))))

(declare-fun b!6937605 () Bool)

(declare-fun res!2829799 () Bool)

(declare-fun e!4173790 () Bool)

(assert (=> b!6937605 (=> res!2829799 e!4173790)))

(declare-fun validRegex!8667 (Regex!16961) Bool)

(assert (=> b!6937605 (= res!2829799 (not (validRegex!8667 lt!2474959)))))

(declare-fun b!6937607 () Bool)

(declare-fun e!4173791 () Bool)

(declare-fun tp!1912454 () Bool)

(assert (=> b!6937607 (= e!4173791 tp!1912454)))

(declare-fun b!6937608 () Bool)

(declare-fun e!4173800 () Bool)

(declare-fun tp_is_empty!43147 () Bool)

(assert (=> b!6937608 (= e!4173800 tp_is_empty!43147)))

(declare-fun b!6937609 () Bool)

(declare-fun tp!1912457 () Bool)

(declare-fun tp!1912452 () Bool)

(assert (=> b!6937609 (= e!4173800 (and tp!1912457 tp!1912452))))

(declare-fun b!6937610 () Bool)

(declare-fun tp!1912462 () Bool)

(declare-fun tp!1912467 () Bool)

(assert (=> b!6937610 (= e!4173791 (and tp!1912462 tp!1912467))))

(declare-fun b!6937611 () Bool)

(declare-fun res!2829801 () Bool)

(assert (=> b!6937611 (=> res!2829801 e!4173790)))

(declare-fun isPrefix!5818 (List!66714 List!66714) Bool)

(assert (=> b!6937611 (= res!2829801 (not (isPrefix!5818 Nil!66590 lt!2474940)))))

(declare-fun b!6937612 () Bool)

(declare-fun e!4173796 () Bool)

(declare-fun tp!1912456 () Bool)

(declare-fun tp!1912459 () Bool)

(assert (=> b!6937612 (= e!4173796 (and tp!1912456 tp!1912459))))

(declare-fun b!6937613 () Bool)

(assert (=> b!6937613 (= e!4173796 tp_is_empty!43147)))

(declare-fun b!6937614 () Bool)

(declare-fun res!2829810 () Bool)

(declare-fun e!4173797 () Bool)

(assert (=> b!6937614 (=> res!2829810 e!4173797)))

(assert (=> b!6937614 (= res!2829810 (not (matchR!9100 lt!2474950 (_2!37121 lt!2474938))))))

(declare-fun b!6937615 () Bool)

(declare-fun ++!15000 (List!66714 List!66714) List!66714)

(assert (=> b!6937615 (= e!4173790 (= (++!15000 Nil!66590 s!14361) s!14361))))

(declare-fun b!6937616 () Bool)

(declare-fun tp!1912458 () Bool)

(declare-fun tp!1912453 () Bool)

(assert (=> b!6937616 (= e!4173796 (and tp!1912458 tp!1912453))))

(declare-fun b!6937617 () Bool)

(declare-fun tp!1912455 () Bool)

(declare-fun tp!1912463 () Bool)

(assert (=> b!6937617 (= e!4173800 (and tp!1912455 tp!1912463))))

(declare-fun res!2829802 () Bool)

(assert (=> start!666410 (=> (not res!2829802) (not e!4173795))))

(assert (=> start!666410 (= res!2829802 (validRegex!8667 r1!6342))))

(assert (=> start!666410 e!4173795))

(assert (=> start!666410 e!4173791))

(assert (=> start!666410 e!4173796))

(assert (=> start!666410 e!4173800))

(declare-fun e!4173798 () Bool)

(assert (=> start!666410 e!4173798))

(declare-fun b!6937606 () Bool)

(declare-fun tp!1912461 () Bool)

(assert (=> b!6937606 (= e!4173796 tp!1912461)))

(declare-fun b!6937618 () Bool)

(declare-fun tp!1912465 () Bool)

(declare-fun tp!1912464 () Bool)

(assert (=> b!6937618 (= e!4173791 (and tp!1912465 tp!1912464))))

(declare-fun e!4173794 () Bool)

(assert (=> b!6937619 (= e!4173797 e!4173794)))

(declare-fun res!2829809 () Bool)

(assert (=> b!6937619 (=> res!2829809 e!4173794)))

(declare-fun lt!2474942 () tuple2!67636)

(assert (=> b!6937619 (= res!2829809 (not (matchR!9100 r2!6280 (_1!37121 lt!2474942))))))

(declare-datatypes ((Option!16730 0))(
  ( (None!16729) (Some!16729 (v!53001 tuple2!67636)) )
))
(declare-fun lt!2474954 () Option!16730)

(declare-fun get!23378 (Option!16730) tuple2!67636)

(assert (=> b!6937619 (= lt!2474942 (get!23378 lt!2474954))))

(declare-fun Exists!3961 (Int) Bool)

(assert (=> b!6937619 (= (Exists!3961 lambda!395111) (Exists!3961 lambda!395112))))

(declare-fun lt!2474960 () Unit!160646)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2422 (Regex!16961 Regex!16961 List!66714) Unit!160646)

(assert (=> b!6937619 (= lt!2474960 (lemmaExistCutMatchRandMatchRSpecEquivalent!2422 r2!6280 r3!135 (_2!37121 lt!2474938)))))

(declare-fun isDefined!13431 (Option!16730) Bool)

(assert (=> b!6937619 (= (isDefined!13431 lt!2474954) (Exists!3961 lambda!395111))))

(declare-fun findConcatSeparation!3144 (Regex!16961 Regex!16961 List!66714 List!66714 List!66714) Option!16730)

(assert (=> b!6937619 (= lt!2474954 (findConcatSeparation!3144 r2!6280 r3!135 Nil!66590 (_2!37121 lt!2474938) (_2!37121 lt!2474938)))))

(declare-fun lt!2474958 () Unit!160646)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2902 (Regex!16961 Regex!16961 List!66714) Unit!160646)

(assert (=> b!6937619 (= lt!2474958 (lemmaFindConcatSeparationEquivalentToExists!2902 r2!6280 r3!135 (_2!37121 lt!2474938)))))

(assert (=> b!6937619 (matchRSpec!4018 lt!2474950 (_2!37121 lt!2474938))))

(declare-fun lt!2474963 () Unit!160646)

(assert (=> b!6937619 (= lt!2474963 (mainMatchTheorem!4018 lt!2474950 (_2!37121 lt!2474938)))))

(declare-fun b!6937620 () Bool)

(declare-fun res!2829806 () Bool)

(assert (=> b!6937620 (=> (not res!2829806) (not e!4173795))))

(assert (=> b!6937620 (= res!2829806 (validRegex!8667 r3!135))))

(declare-fun e!4173793 () Bool)

(assert (=> b!6937621 (= e!4173793 e!4173797)))

(declare-fun res!2829808 () Bool)

(assert (=> b!6937621 (=> res!2829808 e!4173797)))

(declare-fun lt!2474944 () Bool)

(assert (=> b!6937621 (= res!2829808 (not lt!2474944))))

(assert (=> b!6937621 (= lt!2474944 (matchRSpec!4018 r1!6342 (_1!37121 lt!2474938)))))

(assert (=> b!6937621 (= lt!2474944 (matchR!9100 r1!6342 (_1!37121 lt!2474938)))))

(declare-fun lt!2474966 () Unit!160646)

(assert (=> b!6937621 (= lt!2474966 (mainMatchTheorem!4018 r1!6342 (_1!37121 lt!2474938)))))

(declare-fun lt!2474948 () Option!16730)

(assert (=> b!6937621 (= lt!2474938 (get!23378 lt!2474948))))

(assert (=> b!6937621 (= (Exists!3961 lambda!395109) (Exists!3961 lambda!395110))))

(declare-fun lt!2474955 () Unit!160646)

(assert (=> b!6937621 (= lt!2474955 (lemmaExistCutMatchRandMatchRSpecEquivalent!2422 r1!6342 lt!2474950 s!14361))))

(assert (=> b!6937621 (Exists!3961 lambda!395109)))

(declare-fun lt!2474943 () Unit!160646)

(assert (=> b!6937621 (= lt!2474943 (lemmaFindConcatSeparationEquivalentToExists!2902 r1!6342 lt!2474950 s!14361))))

(declare-fun b!6937622 () Bool)

(declare-fun res!2829807 () Bool)

(assert (=> b!6937622 (=> (not res!2829807) (not e!4173795))))

(assert (=> b!6937622 (= res!2829807 (validRegex!8667 r2!6280))))

(declare-fun b!6937623 () Bool)

(assert (=> b!6937623 (= e!4173791 tp_is_empty!43147)))

(declare-fun e!4173799 () Bool)

(assert (=> b!6937624 (= e!4173799 e!4173790)))

(declare-fun res!2829798 () Bool)

(assert (=> b!6937624 (=> res!2829798 e!4173790)))

(declare-fun lt!2474947 () List!66714)

(declare-fun lt!2474939 () Bool)

(assert (=> b!6937624 (= res!2829798 (or (not lt!2474939) (not (= lt!2474947 s!14361))))))

(declare-fun lt!2474967 () Bool)

(assert (=> b!6937624 lt!2474967))

(declare-fun lt!2474952 () Unit!160646)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!104 (Regex!16961 Regex!16961 List!66714 List!66714 List!66714 List!66714 List!66714) Unit!160646)

(assert (=> b!6937624 (= lt!2474952 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!104 r1!6342 r2!6280 (_1!37121 lt!2474938) (_1!37121 lt!2474942) lt!2474940 Nil!66590 lt!2474940))))

(assert (=> b!6937624 (= (Exists!3961 lambda!395113) (Exists!3961 lambda!395114))))

(declare-fun lt!2474945 () Unit!160646)

(assert (=> b!6937624 (= lt!2474945 (lemmaExistCutMatchRandMatchRSpecEquivalent!2422 r1!6342 r2!6280 lt!2474940))))

(assert (=> b!6937624 (= lt!2474967 (Exists!3961 lambda!395113))))

(assert (=> b!6937624 (= lt!2474967 (isDefined!13431 (findConcatSeparation!3144 r1!6342 r2!6280 Nil!66590 lt!2474940 lt!2474940)))))

(declare-fun lt!2474962 () Unit!160646)

(assert (=> b!6937624 (= lt!2474962 (lemmaFindConcatSeparationEquivalentToExists!2902 r1!6342 r2!6280 lt!2474940))))

(assert (=> b!6937624 (= lt!2474939 (matchRSpec!4018 lt!2474959 lt!2474940))))

(assert (=> b!6937624 (= lt!2474939 (matchR!9100 lt!2474959 lt!2474940))))

(declare-fun lt!2474961 () Unit!160646)

(assert (=> b!6937624 (= lt!2474961 (mainMatchTheorem!4018 lt!2474959 lt!2474940))))

(declare-fun lt!2474957 () List!66714)

(assert (=> b!6937624 (= lt!2474947 lt!2474957)))

(assert (=> b!6937624 (= lt!2474947 (++!15000 lt!2474940 (_2!37121 lt!2474942)))))

(assert (=> b!6937624 (= lt!2474940 (++!15000 (_1!37121 lt!2474938) (_1!37121 lt!2474942)))))

(declare-fun lt!2474965 () Unit!160646)

(declare-fun lemmaConcatAssociativity!3042 (List!66714 List!66714 List!66714) Unit!160646)

(assert (=> b!6937624 (= lt!2474965 (lemmaConcatAssociativity!3042 (_1!37121 lt!2474938) (_1!37121 lt!2474942) (_2!37121 lt!2474942)))))

(declare-fun b!6937625 () Bool)

(assert (=> b!6937625 (= e!4173794 e!4173799)))

(declare-fun res!2829805 () Bool)

(assert (=> b!6937625 (=> res!2829805 e!4173799)))

(assert (=> b!6937625 (= res!2829805 (not (= lt!2474957 s!14361)))))

(assert (=> b!6937625 (= lt!2474957 (++!15000 (_1!37121 lt!2474938) (++!15000 (_1!37121 lt!2474942) (_2!37121 lt!2474942))))))

(assert (=> b!6937625 (matchRSpec!4018 r3!135 (_2!37121 lt!2474942))))

(declare-fun lt!2474956 () Unit!160646)

(assert (=> b!6937625 (= lt!2474956 (mainMatchTheorem!4018 r3!135 (_2!37121 lt!2474942)))))

(assert (=> b!6937625 (matchRSpec!4018 r2!6280 (_1!37121 lt!2474942))))

(declare-fun lt!2474951 () Unit!160646)

(assert (=> b!6937625 (= lt!2474951 (mainMatchTheorem!4018 r2!6280 (_1!37121 lt!2474942)))))

(declare-fun b!6937626 () Bool)

(declare-fun tp!1912460 () Bool)

(assert (=> b!6937626 (= e!4173800 tp!1912460)))

(declare-fun b!6937627 () Bool)

(declare-fun tp!1912466 () Bool)

(assert (=> b!6937627 (= e!4173798 (and tp_is_empty!43147 tp!1912466))))

(declare-fun b!6937628 () Bool)

(assert (=> b!6937628 (= e!4173792 e!4173793)))

(declare-fun res!2829804 () Bool)

(assert (=> b!6937628 (=> res!2829804 e!4173793)))

(assert (=> b!6937628 (= res!2829804 (not (isDefined!13431 lt!2474948)))))

(assert (=> b!6937628 (= lt!2474948 (findConcatSeparation!3144 r1!6342 lt!2474950 Nil!66590 s!14361 s!14361))))

(declare-fun b!6937629 () Bool)

(declare-fun res!2829800 () Bool)

(assert (=> b!6937629 (=> res!2829800 e!4173794)))

(assert (=> b!6937629 (= res!2829800 (not (matchR!9100 r3!135 (_2!37121 lt!2474942))))))

(assert (= (and start!666410 res!2829802) b!6937622))

(assert (= (and b!6937622 res!2829807) b!6937620))

(assert (= (and b!6937620 res!2829806) b!6937604))

(assert (= (and b!6937604 (not res!2829803)) b!6937628))

(assert (= (and b!6937628 (not res!2829804)) b!6937621))

(assert (= (and b!6937621 (not res!2829808)) b!6937614))

(assert (= (and b!6937614 (not res!2829810)) b!6937619))

(assert (= (and b!6937619 (not res!2829809)) b!6937629))

(assert (= (and b!6937629 (not res!2829800)) b!6937625))

(assert (= (and b!6937625 (not res!2829805)) b!6937624))

(assert (= (and b!6937624 (not res!2829798)) b!6937605))

(assert (= (and b!6937605 (not res!2829799)) b!6937611))

(assert (= (and b!6937611 (not res!2829801)) b!6937615))

(get-info :version)

(assert (= (and start!666410 ((_ is ElementMatch!16961) r1!6342)) b!6937623))

(assert (= (and start!666410 ((_ is Concat!25806) r1!6342)) b!6937618))

(assert (= (and start!666410 ((_ is Star!16961) r1!6342)) b!6937607))

(assert (= (and start!666410 ((_ is Union!16961) r1!6342)) b!6937610))

(assert (= (and start!666410 ((_ is ElementMatch!16961) r2!6280)) b!6937613))

(assert (= (and start!666410 ((_ is Concat!25806) r2!6280)) b!6937612))

(assert (= (and start!666410 ((_ is Star!16961) r2!6280)) b!6937606))

(assert (= (and start!666410 ((_ is Union!16961) r2!6280)) b!6937616))

(assert (= (and start!666410 ((_ is ElementMatch!16961) r3!135)) b!6937608))

(assert (= (and start!666410 ((_ is Concat!25806) r3!135)) b!6937617))

(assert (= (and start!666410 ((_ is Star!16961) r3!135)) b!6937626))

(assert (= (and start!666410 ((_ is Union!16961) r3!135)) b!6937609))

(assert (= (and start!666410 ((_ is Cons!66590) s!14361)) b!6937627))

(declare-fun m!7643182 () Bool)

(assert (=> b!6937622 m!7643182))

(declare-fun m!7643184 () Bool)

(assert (=> b!6937611 m!7643184))

(declare-fun m!7643186 () Bool)

(assert (=> b!6937620 m!7643186))

(declare-fun m!7643188 () Bool)

(assert (=> b!6937619 m!7643188))

(declare-fun m!7643190 () Bool)

(assert (=> b!6937619 m!7643190))

(declare-fun m!7643192 () Bool)

(assert (=> b!6937619 m!7643192))

(declare-fun m!7643194 () Bool)

(assert (=> b!6937619 m!7643194))

(declare-fun m!7643196 () Bool)

(assert (=> b!6937619 m!7643196))

(declare-fun m!7643198 () Bool)

(assert (=> b!6937619 m!7643198))

(declare-fun m!7643200 () Bool)

(assert (=> b!6937619 m!7643200))

(declare-fun m!7643202 () Bool)

(assert (=> b!6937619 m!7643202))

(assert (=> b!6937619 m!7643194))

(declare-fun m!7643204 () Bool)

(assert (=> b!6937619 m!7643204))

(declare-fun m!7643206 () Bool)

(assert (=> b!6937619 m!7643206))

(declare-fun m!7643208 () Bool)

(assert (=> b!6937629 m!7643208))

(declare-fun m!7643210 () Bool)

(assert (=> b!6937628 m!7643210))

(declare-fun m!7643212 () Bool)

(assert (=> b!6937628 m!7643212))

(declare-fun m!7643214 () Bool)

(assert (=> start!666410 m!7643214))

(declare-fun m!7643216 () Bool)

(assert (=> b!6937605 m!7643216))

(declare-fun m!7643218 () Bool)

(assert (=> b!6937615 m!7643218))

(declare-fun m!7643220 () Bool)

(assert (=> b!6937604 m!7643220))

(declare-fun m!7643222 () Bool)

(assert (=> b!6937604 m!7643222))

(declare-fun m!7643224 () Bool)

(assert (=> b!6937604 m!7643224))

(declare-fun m!7643226 () Bool)

(assert (=> b!6937604 m!7643226))

(declare-fun m!7643228 () Bool)

(assert (=> b!6937604 m!7643228))

(declare-fun m!7643230 () Bool)

(assert (=> b!6937604 m!7643230))

(declare-fun m!7643232 () Bool)

(assert (=> b!6937624 m!7643232))

(declare-fun m!7643234 () Bool)

(assert (=> b!6937624 m!7643234))

(declare-fun m!7643236 () Bool)

(assert (=> b!6937624 m!7643236))

(declare-fun m!7643238 () Bool)

(assert (=> b!6937624 m!7643238))

(assert (=> b!6937624 m!7643236))

(declare-fun m!7643240 () Bool)

(assert (=> b!6937624 m!7643240))

(declare-fun m!7643242 () Bool)

(assert (=> b!6937624 m!7643242))

(declare-fun m!7643244 () Bool)

(assert (=> b!6937624 m!7643244))

(declare-fun m!7643246 () Bool)

(assert (=> b!6937624 m!7643246))

(declare-fun m!7643248 () Bool)

(assert (=> b!6937624 m!7643248))

(declare-fun m!7643250 () Bool)

(assert (=> b!6937624 m!7643250))

(declare-fun m!7643252 () Bool)

(assert (=> b!6937624 m!7643252))

(declare-fun m!7643254 () Bool)

(assert (=> b!6937624 m!7643254))

(declare-fun m!7643256 () Bool)

(assert (=> b!6937624 m!7643256))

(assert (=> b!6937624 m!7643250))

(declare-fun m!7643258 () Bool)

(assert (=> b!6937625 m!7643258))

(declare-fun m!7643260 () Bool)

(assert (=> b!6937625 m!7643260))

(declare-fun m!7643262 () Bool)

(assert (=> b!6937625 m!7643262))

(declare-fun m!7643264 () Bool)

(assert (=> b!6937625 m!7643264))

(declare-fun m!7643266 () Bool)

(assert (=> b!6937625 m!7643266))

(assert (=> b!6937625 m!7643264))

(declare-fun m!7643268 () Bool)

(assert (=> b!6937625 m!7643268))

(declare-fun m!7643270 () Bool)

(assert (=> b!6937614 m!7643270))

(declare-fun m!7643272 () Bool)

(assert (=> b!6937621 m!7643272))

(declare-fun m!7643274 () Bool)

(assert (=> b!6937621 m!7643274))

(declare-fun m!7643276 () Bool)

(assert (=> b!6937621 m!7643276))

(declare-fun m!7643278 () Bool)

(assert (=> b!6937621 m!7643278))

(declare-fun m!7643280 () Bool)

(assert (=> b!6937621 m!7643280))

(assert (=> b!6937621 m!7643272))

(declare-fun m!7643282 () Bool)

(assert (=> b!6937621 m!7643282))

(declare-fun m!7643284 () Bool)

(assert (=> b!6937621 m!7643284))

(declare-fun m!7643286 () Bool)

(assert (=> b!6937621 m!7643286))

(check-sat (not b!6937607) (not b!6937612) (not b!6937620) (not b!6937617) (not start!666410) (not b!6937615) (not b!6937622) tp_is_empty!43147 (not b!6937619) (not b!6937628) (not b!6937621) (not b!6937618) (not b!6937625) (not b!6937629) (not b!6937616) (not b!6937627) (not b!6937624) (not b!6937604) (not b!6937605) (not b!6937610) (not b!6937609) (not b!6937611) (not b!6937614) (not b!6937626) (not b!6937606))
(check-sat)
(get-model)

(declare-fun b!6937664 () Bool)

(declare-fun res!2829833 () Bool)

(declare-fun e!4173819 () Bool)

(assert (=> b!6937664 (=> (not res!2829833) (not e!4173819))))

(declare-fun call!630304 () Bool)

(assert (=> b!6937664 (= res!2829833 (not call!630304))))

(declare-fun b!6937665 () Bool)

(declare-fun res!2829834 () Bool)

(declare-fun e!4173820 () Bool)

(assert (=> b!6937665 (=> res!2829834 e!4173820)))

(assert (=> b!6937665 (= res!2829834 (not ((_ is ElementMatch!16961) r3!135)))))

(declare-fun e!4173817 () Bool)

(assert (=> b!6937665 (= e!4173817 e!4173820)))

(declare-fun d!2167080 () Bool)

(declare-fun e!4173816 () Bool)

(assert (=> d!2167080 e!4173816))

(declare-fun c!1287342 () Bool)

(assert (=> d!2167080 (= c!1287342 ((_ is EmptyExpr!16961) r3!135))))

(declare-fun lt!2474970 () Bool)

(declare-fun e!4173821 () Bool)

(assert (=> d!2167080 (= lt!2474970 e!4173821)))

(declare-fun c!1287341 () Bool)

(declare-fun isEmpty!38857 (List!66714) Bool)

(assert (=> d!2167080 (= c!1287341 (isEmpty!38857 (_2!37121 lt!2474942)))))

(assert (=> d!2167080 (validRegex!8667 r3!135)))

(assert (=> d!2167080 (= (matchR!9100 r3!135 (_2!37121 lt!2474942)) lt!2474970)))

(declare-fun b!6937666 () Bool)

(declare-fun e!4173818 () Bool)

(declare-fun e!4173815 () Bool)

(assert (=> b!6937666 (= e!4173818 e!4173815)))

(declare-fun res!2829831 () Bool)

(assert (=> b!6937666 (=> res!2829831 e!4173815)))

(assert (=> b!6937666 (= res!2829831 call!630304)))

(declare-fun b!6937667 () Bool)

(declare-fun res!2829830 () Bool)

(assert (=> b!6937667 (=> res!2829830 e!4173815)))

(declare-fun tail!12958 (List!66714) List!66714)

(assert (=> b!6937667 (= res!2829830 (not (isEmpty!38857 (tail!12958 (_2!37121 lt!2474942)))))))

(declare-fun b!6937668 () Bool)

(assert (=> b!6937668 (= e!4173817 (not lt!2474970))))

(declare-fun b!6937669 () Bool)

(declare-fun res!2829829 () Bool)

(assert (=> b!6937669 (=> res!2829829 e!4173820)))

(assert (=> b!6937669 (= res!2829829 e!4173819)))

(declare-fun res!2829832 () Bool)

(assert (=> b!6937669 (=> (not res!2829832) (not e!4173819))))

(assert (=> b!6937669 (= res!2829832 lt!2474970)))

(declare-fun b!6937670 () Bool)

(assert (=> b!6937670 (= e!4173816 (= lt!2474970 call!630304))))

(declare-fun b!6937671 () Bool)

(declare-fun res!2829827 () Bool)

(assert (=> b!6937671 (=> (not res!2829827) (not e!4173819))))

(assert (=> b!6937671 (= res!2829827 (isEmpty!38857 (tail!12958 (_2!37121 lt!2474942))))))

(declare-fun b!6937672 () Bool)

(assert (=> b!6937672 (= e!4173820 e!4173818)))

(declare-fun res!2829828 () Bool)

(assert (=> b!6937672 (=> (not res!2829828) (not e!4173818))))

(assert (=> b!6937672 (= res!2829828 (not lt!2474970))))

(declare-fun b!6937673 () Bool)

(declare-fun head!13906 (List!66714) C!34192)

(assert (=> b!6937673 (= e!4173815 (not (= (head!13906 (_2!37121 lt!2474942)) (c!1287333 r3!135))))))

(declare-fun b!6937674 () Bool)

(assert (=> b!6937674 (= e!4173816 e!4173817)))

(declare-fun c!1287340 () Bool)

(assert (=> b!6937674 (= c!1287340 ((_ is EmptyLang!16961) r3!135))))

(declare-fun bm!630299 () Bool)

(assert (=> bm!630299 (= call!630304 (isEmpty!38857 (_2!37121 lt!2474942)))))

(declare-fun b!6937675 () Bool)

(declare-fun derivativeStep!5452 (Regex!16961 C!34192) Regex!16961)

(assert (=> b!6937675 (= e!4173821 (matchR!9100 (derivativeStep!5452 r3!135 (head!13906 (_2!37121 lt!2474942))) (tail!12958 (_2!37121 lt!2474942))))))

(declare-fun b!6937676 () Bool)

(declare-fun nullable!6778 (Regex!16961) Bool)

(assert (=> b!6937676 (= e!4173821 (nullable!6778 r3!135))))

(declare-fun b!6937677 () Bool)

(assert (=> b!6937677 (= e!4173819 (= (head!13906 (_2!37121 lt!2474942)) (c!1287333 r3!135)))))

(assert (= (and d!2167080 c!1287341) b!6937676))

(assert (= (and d!2167080 (not c!1287341)) b!6937675))

(assert (= (and d!2167080 c!1287342) b!6937670))

(assert (= (and d!2167080 (not c!1287342)) b!6937674))

(assert (= (and b!6937674 c!1287340) b!6937668))

(assert (= (and b!6937674 (not c!1287340)) b!6937665))

(assert (= (and b!6937665 (not res!2829834)) b!6937669))

(assert (= (and b!6937669 res!2829832) b!6937664))

(assert (= (and b!6937664 res!2829833) b!6937671))

(assert (= (and b!6937671 res!2829827) b!6937677))

(assert (= (and b!6937669 (not res!2829829)) b!6937672))

(assert (= (and b!6937672 res!2829828) b!6937666))

(assert (= (and b!6937666 (not res!2829831)) b!6937667))

(assert (= (and b!6937667 (not res!2829830)) b!6937673))

(assert (= (or b!6937670 b!6937664 b!6937666) bm!630299))

(declare-fun m!7643288 () Bool)

(assert (=> b!6937676 m!7643288))

(declare-fun m!7643290 () Bool)

(assert (=> bm!630299 m!7643290))

(declare-fun m!7643292 () Bool)

(assert (=> b!6937677 m!7643292))

(assert (=> b!6937675 m!7643292))

(assert (=> b!6937675 m!7643292))

(declare-fun m!7643294 () Bool)

(assert (=> b!6937675 m!7643294))

(declare-fun m!7643296 () Bool)

(assert (=> b!6937675 m!7643296))

(assert (=> b!6937675 m!7643294))

(assert (=> b!6937675 m!7643296))

(declare-fun m!7643298 () Bool)

(assert (=> b!6937675 m!7643298))

(assert (=> d!2167080 m!7643290))

(assert (=> d!2167080 m!7643186))

(assert (=> b!6937673 m!7643292))

(assert (=> b!6937667 m!7643296))

(assert (=> b!6937667 m!7643296))

(declare-fun m!7643300 () Bool)

(assert (=> b!6937667 m!7643300))

(assert (=> b!6937671 m!7643296))

(assert (=> b!6937671 m!7643296))

(assert (=> b!6937671 m!7643300))

(assert (=> b!6937629 d!2167080))

(declare-fun b!6937734 () Bool)

(declare-fun e!4173863 () Bool)

(declare-fun e!4173864 () Bool)

(assert (=> b!6937734 (= e!4173863 e!4173864)))

(declare-fun c!1287360 () Bool)

(assert (=> b!6937734 (= c!1287360 ((_ is Union!16961) r3!135))))

(declare-fun call!630311 () Bool)

(declare-fun bm!630306 () Bool)

(declare-fun c!1287359 () Bool)

(assert (=> bm!630306 (= call!630311 (validRegex!8667 (ite c!1287359 (reg!17290 r3!135) (ite c!1287360 (regOne!34435 r3!135) (regTwo!34434 r3!135)))))))

(declare-fun b!6937735 () Bool)

(declare-fun res!2829859 () Bool)

(declare-fun e!4173858 () Bool)

(assert (=> b!6937735 (=> (not res!2829859) (not e!4173858))))

(declare-fun call!630312 () Bool)

(assert (=> b!6937735 (= res!2829859 call!630312)))

(assert (=> b!6937735 (= e!4173864 e!4173858)))

(declare-fun b!6937736 () Bool)

(declare-fun e!4173862 () Bool)

(declare-fun e!4173859 () Bool)

(assert (=> b!6937736 (= e!4173862 e!4173859)))

(declare-fun res!2829860 () Bool)

(assert (=> b!6937736 (=> (not res!2829860) (not e!4173859))))

(declare-fun call!630313 () Bool)

(assert (=> b!6937736 (= res!2829860 call!630313)))

(declare-fun b!6937737 () Bool)

(declare-fun e!4173860 () Bool)

(assert (=> b!6937737 (= e!4173863 e!4173860)))

(declare-fun res!2829861 () Bool)

(assert (=> b!6937737 (= res!2829861 (not (nullable!6778 (reg!17290 r3!135))))))

(assert (=> b!6937737 (=> (not res!2829861) (not e!4173860))))

(declare-fun b!6937738 () Bool)

(assert (=> b!6937738 (= e!4173858 call!630313)))

(declare-fun b!6937739 () Bool)

(assert (=> b!6937739 (= e!4173859 call!630312)))

(declare-fun bm!630308 () Bool)

(assert (=> bm!630308 (= call!630313 (validRegex!8667 (ite c!1287360 (regTwo!34435 r3!135) (regOne!34434 r3!135))))))

(declare-fun b!6937740 () Bool)

(declare-fun res!2829863 () Bool)

(assert (=> b!6937740 (=> res!2829863 e!4173862)))

(assert (=> b!6937740 (= res!2829863 (not ((_ is Concat!25806) r3!135)))))

(assert (=> b!6937740 (= e!4173864 e!4173862)))

(declare-fun d!2167084 () Bool)

(declare-fun res!2829862 () Bool)

(declare-fun e!4173861 () Bool)

(assert (=> d!2167084 (=> res!2829862 e!4173861)))

(assert (=> d!2167084 (= res!2829862 ((_ is ElementMatch!16961) r3!135))))

(assert (=> d!2167084 (= (validRegex!8667 r3!135) e!4173861)))

(declare-fun bm!630307 () Bool)

(assert (=> bm!630307 (= call!630312 call!630311)))

(declare-fun b!6937741 () Bool)

(assert (=> b!6937741 (= e!4173861 e!4173863)))

(assert (=> b!6937741 (= c!1287359 ((_ is Star!16961) r3!135))))

(declare-fun b!6937742 () Bool)

(assert (=> b!6937742 (= e!4173860 call!630311)))

(assert (= (and d!2167084 (not res!2829862)) b!6937741))

(assert (= (and b!6937741 c!1287359) b!6937737))

(assert (= (and b!6937741 (not c!1287359)) b!6937734))

(assert (= (and b!6937737 res!2829861) b!6937742))

(assert (= (and b!6937734 c!1287360) b!6937735))

(assert (= (and b!6937734 (not c!1287360)) b!6937740))

(assert (= (and b!6937735 res!2829859) b!6937738))

(assert (= (and b!6937740 (not res!2829863)) b!6937736))

(assert (= (and b!6937736 res!2829860) b!6937739))

(assert (= (or b!6937735 b!6937739) bm!630307))

(assert (= (or b!6937738 b!6937736) bm!630308))

(assert (= (or b!6937742 bm!630307) bm!630306))

(declare-fun m!7643334 () Bool)

(assert (=> bm!630306 m!7643334))

(declare-fun m!7643336 () Bool)

(assert (=> b!6937737 m!7643336))

(declare-fun m!7643338 () Bool)

(assert (=> bm!630308 m!7643338))

(assert (=> b!6937620 d!2167084))

(declare-fun b!6937749 () Bool)

(declare-fun e!4173872 () Bool)

(declare-fun e!4173873 () Bool)

(assert (=> b!6937749 (= e!4173872 e!4173873)))

(declare-fun c!1287362 () Bool)

(assert (=> b!6937749 (= c!1287362 ((_ is Union!16961) r1!6342))))

(declare-fun bm!630309 () Bool)

(declare-fun c!1287361 () Bool)

(declare-fun call!630314 () Bool)

(assert (=> bm!630309 (= call!630314 (validRegex!8667 (ite c!1287361 (reg!17290 r1!6342) (ite c!1287362 (regOne!34435 r1!6342) (regTwo!34434 r1!6342)))))))

(declare-fun b!6937750 () Bool)

(declare-fun res!2829870 () Bool)

(declare-fun e!4173867 () Bool)

(assert (=> b!6937750 (=> (not res!2829870) (not e!4173867))))

(declare-fun call!630315 () Bool)

(assert (=> b!6937750 (= res!2829870 call!630315)))

(assert (=> b!6937750 (= e!4173873 e!4173867)))

(declare-fun b!6937751 () Bool)

(declare-fun e!4173871 () Bool)

(declare-fun e!4173868 () Bool)

(assert (=> b!6937751 (= e!4173871 e!4173868)))

(declare-fun res!2829871 () Bool)

(assert (=> b!6937751 (=> (not res!2829871) (not e!4173868))))

(declare-fun call!630316 () Bool)

(assert (=> b!6937751 (= res!2829871 call!630316)))

(declare-fun b!6937752 () Bool)

(declare-fun e!4173869 () Bool)

(assert (=> b!6937752 (= e!4173872 e!4173869)))

(declare-fun res!2829872 () Bool)

(assert (=> b!6937752 (= res!2829872 (not (nullable!6778 (reg!17290 r1!6342))))))

(assert (=> b!6937752 (=> (not res!2829872) (not e!4173869))))

(declare-fun b!6937753 () Bool)

(assert (=> b!6937753 (= e!4173867 call!630316)))

(declare-fun b!6937754 () Bool)

(assert (=> b!6937754 (= e!4173868 call!630315)))

(declare-fun bm!630311 () Bool)

(assert (=> bm!630311 (= call!630316 (validRegex!8667 (ite c!1287362 (regTwo!34435 r1!6342) (regOne!34434 r1!6342))))))

(declare-fun b!6937755 () Bool)

(declare-fun res!2829874 () Bool)

(assert (=> b!6937755 (=> res!2829874 e!4173871)))

(assert (=> b!6937755 (= res!2829874 (not ((_ is Concat!25806) r1!6342)))))

(assert (=> b!6937755 (= e!4173873 e!4173871)))

(declare-fun d!2167094 () Bool)

(declare-fun res!2829873 () Bool)

(declare-fun e!4173870 () Bool)

(assert (=> d!2167094 (=> res!2829873 e!4173870)))

(assert (=> d!2167094 (= res!2829873 ((_ is ElementMatch!16961) r1!6342))))

(assert (=> d!2167094 (= (validRegex!8667 r1!6342) e!4173870)))

(declare-fun bm!630310 () Bool)

(assert (=> bm!630310 (= call!630315 call!630314)))

(declare-fun b!6937756 () Bool)

(assert (=> b!6937756 (= e!4173870 e!4173872)))

(assert (=> b!6937756 (= c!1287361 ((_ is Star!16961) r1!6342))))

(declare-fun b!6937757 () Bool)

(assert (=> b!6937757 (= e!4173869 call!630314)))

(assert (= (and d!2167094 (not res!2829873)) b!6937756))

(assert (= (and b!6937756 c!1287361) b!6937752))

(assert (= (and b!6937756 (not c!1287361)) b!6937749))

(assert (= (and b!6937752 res!2829872) b!6937757))

(assert (= (and b!6937749 c!1287362) b!6937750))

(assert (= (and b!6937749 (not c!1287362)) b!6937755))

(assert (= (and b!6937750 res!2829870) b!6937753))

(assert (= (and b!6937755 (not res!2829874)) b!6937751))

(assert (= (and b!6937751 res!2829871) b!6937754))

(assert (= (or b!6937750 b!6937754) bm!630310))

(assert (= (or b!6937753 b!6937751) bm!630311))

(assert (= (or b!6937757 bm!630310) bm!630309))

(declare-fun m!7643340 () Bool)

(assert (=> bm!630309 m!7643340))

(declare-fun m!7643342 () Bool)

(assert (=> b!6937752 m!7643342))

(declare-fun m!7643344 () Bool)

(assert (=> bm!630311 m!7643344))

(assert (=> start!666410 d!2167094))

(declare-fun d!2167096 () Bool)

(assert (=> d!2167096 (= (get!23378 lt!2474954) (v!53001 lt!2474954))))

(assert (=> b!6937619 d!2167096))

(declare-fun b!6937873 () Bool)

(declare-fun e!4173947 () Bool)

(declare-fun lt!2474994 () Option!16730)

(assert (=> b!6937873 (= e!4173947 (not (isDefined!13431 lt!2474994)))))

(declare-fun b!6937874 () Bool)

(declare-fun e!4173948 () Bool)

(assert (=> b!6937874 (= e!4173948 (= (++!15000 (_1!37121 (get!23378 lt!2474994)) (_2!37121 (get!23378 lt!2474994))) (_2!37121 lt!2474938)))))

(declare-fun b!6937875 () Bool)

(declare-fun res!2829940 () Bool)

(assert (=> b!6937875 (=> (not res!2829940) (not e!4173948))))

(assert (=> b!6937875 (= res!2829940 (matchR!9100 r2!6280 (_1!37121 (get!23378 lt!2474994))))))

(declare-fun d!2167098 () Bool)

(assert (=> d!2167098 e!4173947))

(declare-fun res!2829943 () Bool)

(assert (=> d!2167098 (=> res!2829943 e!4173947)))

(assert (=> d!2167098 (= res!2829943 e!4173948)))

(declare-fun res!2829944 () Bool)

(assert (=> d!2167098 (=> (not res!2829944) (not e!4173948))))

(assert (=> d!2167098 (= res!2829944 (isDefined!13431 lt!2474994))))

(declare-fun e!4173946 () Option!16730)

(assert (=> d!2167098 (= lt!2474994 e!4173946)))

(declare-fun c!1287389 () Bool)

(declare-fun e!4173950 () Bool)

(assert (=> d!2167098 (= c!1287389 e!4173950)))

(declare-fun res!2829942 () Bool)

(assert (=> d!2167098 (=> (not res!2829942) (not e!4173950))))

(assert (=> d!2167098 (= res!2829942 (matchR!9100 r2!6280 Nil!66590))))

(assert (=> d!2167098 (validRegex!8667 r2!6280)))

(assert (=> d!2167098 (= (findConcatSeparation!3144 r2!6280 r3!135 Nil!66590 (_2!37121 lt!2474938) (_2!37121 lt!2474938)) lt!2474994)))

(declare-fun b!6937876 () Bool)

(declare-fun lt!2474995 () Unit!160646)

(declare-fun lt!2474996 () Unit!160646)

(assert (=> b!6937876 (= lt!2474995 lt!2474996)))

(assert (=> b!6937876 (= (++!15000 (++!15000 Nil!66590 (Cons!66590 (h!73038 (_2!37121 lt!2474938)) Nil!66590)) (t!380457 (_2!37121 lt!2474938))) (_2!37121 lt!2474938))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2856 (List!66714 C!34192 List!66714 List!66714) Unit!160646)

(assert (=> b!6937876 (= lt!2474996 (lemmaMoveElementToOtherListKeepsConcatEq!2856 Nil!66590 (h!73038 (_2!37121 lt!2474938)) (t!380457 (_2!37121 lt!2474938)) (_2!37121 lt!2474938)))))

(declare-fun e!4173949 () Option!16730)

(assert (=> b!6937876 (= e!4173949 (findConcatSeparation!3144 r2!6280 r3!135 (++!15000 Nil!66590 (Cons!66590 (h!73038 (_2!37121 lt!2474938)) Nil!66590)) (t!380457 (_2!37121 lt!2474938)) (_2!37121 lt!2474938)))))

(declare-fun b!6937877 () Bool)

(declare-fun res!2829941 () Bool)

(assert (=> b!6937877 (=> (not res!2829941) (not e!4173948))))

(assert (=> b!6937877 (= res!2829941 (matchR!9100 r3!135 (_2!37121 (get!23378 lt!2474994))))))

(declare-fun b!6937878 () Bool)

(assert (=> b!6937878 (= e!4173950 (matchR!9100 r3!135 (_2!37121 lt!2474938)))))

(declare-fun b!6937879 () Bool)

(assert (=> b!6937879 (= e!4173949 None!16729)))

(declare-fun b!6937880 () Bool)

(assert (=> b!6937880 (= e!4173946 e!4173949)))

(declare-fun c!1287388 () Bool)

(assert (=> b!6937880 (= c!1287388 ((_ is Nil!66590) (_2!37121 lt!2474938)))))

(declare-fun b!6937881 () Bool)

(assert (=> b!6937881 (= e!4173946 (Some!16729 (tuple2!67637 Nil!66590 (_2!37121 lt!2474938))))))

(assert (= (and d!2167098 res!2829942) b!6937878))

(assert (= (and d!2167098 c!1287389) b!6937881))

(assert (= (and d!2167098 (not c!1287389)) b!6937880))

(assert (= (and b!6937880 c!1287388) b!6937879))

(assert (= (and b!6937880 (not c!1287388)) b!6937876))

(assert (= (and d!2167098 res!2829944) b!6937875))

(assert (= (and b!6937875 res!2829940) b!6937877))

(assert (= (and b!6937877 res!2829941) b!6937874))

(assert (= (and d!2167098 (not res!2829943)) b!6937873))

(declare-fun m!7643392 () Bool)

(assert (=> b!6937876 m!7643392))

(assert (=> b!6937876 m!7643392))

(declare-fun m!7643394 () Bool)

(assert (=> b!6937876 m!7643394))

(declare-fun m!7643396 () Bool)

(assert (=> b!6937876 m!7643396))

(assert (=> b!6937876 m!7643392))

(declare-fun m!7643398 () Bool)

(assert (=> b!6937876 m!7643398))

(declare-fun m!7643400 () Bool)

(assert (=> b!6937874 m!7643400))

(declare-fun m!7643402 () Bool)

(assert (=> b!6937874 m!7643402))

(assert (=> b!6937877 m!7643400))

(declare-fun m!7643404 () Bool)

(assert (=> b!6937877 m!7643404))

(declare-fun m!7643406 () Bool)

(assert (=> b!6937873 m!7643406))

(declare-fun m!7643408 () Bool)

(assert (=> b!6937878 m!7643408))

(assert (=> d!2167098 m!7643406))

(declare-fun m!7643410 () Bool)

(assert (=> d!2167098 m!7643410))

(assert (=> d!2167098 m!7643182))

(assert (=> b!6937875 m!7643400))

(declare-fun m!7643412 () Bool)

(assert (=> b!6937875 m!7643412))

(assert (=> b!6937619 d!2167098))

(declare-fun d!2167112 () Bool)

(assert (=> d!2167112 (= (matchR!9100 lt!2474950 (_2!37121 lt!2474938)) (matchRSpec!4018 lt!2474950 (_2!37121 lt!2474938)))))

(declare-fun lt!2475004 () Unit!160646)

(declare-fun choose!51680 (Regex!16961 List!66714) Unit!160646)

(assert (=> d!2167112 (= lt!2475004 (choose!51680 lt!2474950 (_2!37121 lt!2474938)))))

(assert (=> d!2167112 (validRegex!8667 lt!2474950)))

(assert (=> d!2167112 (= (mainMatchTheorem!4018 lt!2474950 (_2!37121 lt!2474938)) lt!2475004)))

(declare-fun bs!1853081 () Bool)

(assert (= bs!1853081 d!2167112))

(assert (=> bs!1853081 m!7643270))

(assert (=> bs!1853081 m!7643192))

(declare-fun m!7643432 () Bool)

(assert (=> bs!1853081 m!7643432))

(declare-fun m!7643434 () Bool)

(assert (=> bs!1853081 m!7643434))

(assert (=> b!6937619 d!2167112))

(declare-fun bs!1853091 () Bool)

(declare-fun d!2167124 () Bool)

(assert (= bs!1853091 (and d!2167124 b!6937619)))

(declare-fun lambda!395128 () Int)

(assert (=> bs!1853091 (= lambda!395128 lambda!395111)))

(declare-fun bs!1853092 () Bool)

(assert (= bs!1853092 (and d!2167124 b!6937624)))

(assert (=> bs!1853092 (not (= lambda!395128 lambda!395114))))

(declare-fun bs!1853093 () Bool)

(assert (= bs!1853093 (and d!2167124 b!6937621)))

(assert (=> bs!1853093 (= (and (= (_2!37121 lt!2474938) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2474950)) (= lambda!395128 lambda!395109))))

(assert (=> bs!1853092 (= (and (= (_2!37121 lt!2474938) lt!2474940) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395128 lambda!395113))))

(assert (=> bs!1853093 (not (= lambda!395128 lambda!395110))))

(assert (=> bs!1853091 (not (= lambda!395128 lambda!395112))))

(assert (=> d!2167124 true))

(assert (=> d!2167124 true))

(assert (=> d!2167124 true))

(assert (=> d!2167124 (= (isDefined!13431 (findConcatSeparation!3144 r2!6280 r3!135 Nil!66590 (_2!37121 lt!2474938) (_2!37121 lt!2474938))) (Exists!3961 lambda!395128))))

(declare-fun lt!2475011 () Unit!160646)

(declare-fun choose!51682 (Regex!16961 Regex!16961 List!66714) Unit!160646)

(assert (=> d!2167124 (= lt!2475011 (choose!51682 r2!6280 r3!135 (_2!37121 lt!2474938)))))

(assert (=> d!2167124 (validRegex!8667 r2!6280)))

(assert (=> d!2167124 (= (lemmaFindConcatSeparationEquivalentToExists!2902 r2!6280 r3!135 (_2!37121 lt!2474938)) lt!2475011)))

(declare-fun bs!1853094 () Bool)

(assert (= bs!1853094 d!2167124))

(assert (=> bs!1853094 m!7643182))

(declare-fun m!7643450 () Bool)

(assert (=> bs!1853094 m!7643450))

(declare-fun m!7643452 () Bool)

(assert (=> bs!1853094 m!7643452))

(assert (=> bs!1853094 m!7643190))

(assert (=> bs!1853094 m!7643190))

(declare-fun m!7643454 () Bool)

(assert (=> bs!1853094 m!7643454))

(assert (=> b!6937619 d!2167124))

(declare-fun d!2167132 () Bool)

(declare-fun choose!51683 (Int) Bool)

(assert (=> d!2167132 (= (Exists!3961 lambda!395111) (choose!51683 lambda!395111))))

(declare-fun bs!1853095 () Bool)

(assert (= bs!1853095 d!2167132))

(declare-fun m!7643456 () Bool)

(assert (=> bs!1853095 m!7643456))

(assert (=> b!6937619 d!2167132))

(declare-fun bs!1853105 () Bool)

(declare-fun d!2167134 () Bool)

(assert (= bs!1853105 (and d!2167134 b!6937619)))

(declare-fun lambda!395139 () Int)

(assert (=> bs!1853105 (= lambda!395139 lambda!395111)))

(declare-fun bs!1853107 () Bool)

(assert (= bs!1853107 (and d!2167134 d!2167124)))

(assert (=> bs!1853107 (= lambda!395139 lambda!395128)))

(declare-fun bs!1853109 () Bool)

(assert (= bs!1853109 (and d!2167134 b!6937624)))

(assert (=> bs!1853109 (not (= lambda!395139 lambda!395114))))

(declare-fun bs!1853112 () Bool)

(assert (= bs!1853112 (and d!2167134 b!6937621)))

(assert (=> bs!1853112 (= (and (= (_2!37121 lt!2474938) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2474950)) (= lambda!395139 lambda!395109))))

(assert (=> bs!1853109 (= (and (= (_2!37121 lt!2474938) lt!2474940) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395139 lambda!395113))))

(assert (=> bs!1853112 (not (= lambda!395139 lambda!395110))))

(assert (=> bs!1853105 (not (= lambda!395139 lambda!395112))))

(assert (=> d!2167134 true))

(assert (=> d!2167134 true))

(assert (=> d!2167134 true))

(declare-fun lambda!395141 () Int)

(assert (=> bs!1853105 (not (= lambda!395141 lambda!395111))))

(declare-fun bs!1853122 () Bool)

(assert (= bs!1853122 d!2167134))

(assert (=> bs!1853122 (not (= lambda!395141 lambda!395139))))

(assert (=> bs!1853107 (not (= lambda!395141 lambda!395128))))

(assert (=> bs!1853109 (= (and (= (_2!37121 lt!2474938) lt!2474940) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395141 lambda!395114))))

(assert (=> bs!1853112 (not (= lambda!395141 lambda!395109))))

(assert (=> bs!1853109 (not (= lambda!395141 lambda!395113))))

(assert (=> bs!1853112 (= (and (= (_2!37121 lt!2474938) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2474950)) (= lambda!395141 lambda!395110))))

(assert (=> bs!1853105 (= lambda!395141 lambda!395112)))

(assert (=> d!2167134 true))

(assert (=> d!2167134 true))

(assert (=> d!2167134 true))

(assert (=> d!2167134 (= (Exists!3961 lambda!395139) (Exists!3961 lambda!395141))))

(declare-fun lt!2475026 () Unit!160646)

(declare-fun choose!51684 (Regex!16961 Regex!16961 List!66714) Unit!160646)

(assert (=> d!2167134 (= lt!2475026 (choose!51684 r2!6280 r3!135 (_2!37121 lt!2474938)))))

(assert (=> d!2167134 (validRegex!8667 r2!6280)))

(assert (=> d!2167134 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2422 r2!6280 r3!135 (_2!37121 lt!2474938)) lt!2475026)))

(declare-fun m!7643488 () Bool)

(assert (=> bs!1853122 m!7643488))

(declare-fun m!7643492 () Bool)

(assert (=> bs!1853122 m!7643492))

(declare-fun m!7643496 () Bool)

(assert (=> bs!1853122 m!7643496))

(assert (=> bs!1853122 m!7643182))

(assert (=> b!6937619 d!2167134))

(declare-fun bs!1853200 () Bool)

(declare-fun b!6938097 () Bool)

(assert (= bs!1853200 (and b!6938097 b!6937619)))

(declare-fun lambda!395153 () Int)

(assert (=> bs!1853200 (not (= lambda!395153 lambda!395111))))

(declare-fun bs!1853201 () Bool)

(assert (= bs!1853201 (and b!6938097 d!2167134)))

(assert (=> bs!1853201 (not (= lambda!395153 lambda!395139))))

(declare-fun bs!1853203 () Bool)

(assert (= bs!1853203 (and b!6938097 d!2167124)))

(assert (=> bs!1853203 (not (= lambda!395153 lambda!395128))))

(declare-fun bs!1853205 () Bool)

(assert (= bs!1853205 (and b!6938097 b!6937624)))

(assert (=> bs!1853205 (not (= lambda!395153 lambda!395114))))

(declare-fun bs!1853206 () Bool)

(assert (= bs!1853206 (and b!6938097 b!6937621)))

(assert (=> bs!1853206 (not (= lambda!395153 lambda!395109))))

(assert (=> bs!1853205 (not (= lambda!395153 lambda!395113))))

(assert (=> bs!1853201 (not (= lambda!395153 lambda!395141))))

(assert (=> bs!1853206 (not (= lambda!395153 lambda!395110))))

(assert (=> bs!1853200 (not (= lambda!395153 lambda!395112))))

(assert (=> b!6938097 true))

(assert (=> b!6938097 true))

(declare-fun bs!1853209 () Bool)

(declare-fun b!6938089 () Bool)

(assert (= bs!1853209 (and b!6938089 b!6938097)))

(declare-fun lambda!395154 () Int)

(assert (=> bs!1853209 (not (= lambda!395154 lambda!395153))))

(declare-fun bs!1853210 () Bool)

(assert (= bs!1853210 (and b!6938089 b!6937619)))

(assert (=> bs!1853210 (not (= lambda!395154 lambda!395111))))

(declare-fun bs!1853212 () Bool)

(assert (= bs!1853212 (and b!6938089 d!2167134)))

(assert (=> bs!1853212 (not (= lambda!395154 lambda!395139))))

(declare-fun bs!1853213 () Bool)

(assert (= bs!1853213 (and b!6938089 d!2167124)))

(assert (=> bs!1853213 (not (= lambda!395154 lambda!395128))))

(declare-fun bs!1853215 () Bool)

(assert (= bs!1853215 (and b!6938089 b!6937624)))

(assert (=> bs!1853215 (= (and (= (_2!37121 lt!2474938) lt!2474940) (= (regOne!34434 lt!2474950) r1!6342) (= (regTwo!34434 lt!2474950) r2!6280)) (= lambda!395154 lambda!395114))))

(declare-fun bs!1853217 () Bool)

(assert (= bs!1853217 (and b!6938089 b!6937621)))

(assert (=> bs!1853217 (not (= lambda!395154 lambda!395109))))

(assert (=> bs!1853215 (not (= lambda!395154 lambda!395113))))

(assert (=> bs!1853212 (= (and (= (regOne!34434 lt!2474950) r2!6280) (= (regTwo!34434 lt!2474950) r3!135)) (= lambda!395154 lambda!395141))))

(assert (=> bs!1853217 (= (and (= (_2!37121 lt!2474938) s!14361) (= (regOne!34434 lt!2474950) r1!6342) (= (regTwo!34434 lt!2474950) lt!2474950)) (= lambda!395154 lambda!395110))))

(assert (=> bs!1853210 (= (and (= (regOne!34434 lt!2474950) r2!6280) (= (regTwo!34434 lt!2474950) r3!135)) (= lambda!395154 lambda!395112))))

(assert (=> b!6938089 true))

(assert (=> b!6938089 true))

(declare-fun b!6938087 () Bool)

(declare-fun c!1287436 () Bool)

(assert (=> b!6938087 (= c!1287436 ((_ is Union!16961) lt!2474950))))

(declare-fun e!4174074 () Bool)

(declare-fun e!4174073 () Bool)

(assert (=> b!6938087 (= e!4174074 e!4174073)))

(declare-fun b!6938088 () Bool)

(declare-fun e!4174071 () Bool)

(assert (=> b!6938088 (= e!4174073 e!4174071)))

(declare-fun c!1287434 () Bool)

(assert (=> b!6938088 (= c!1287434 ((_ is Star!16961) lt!2474950))))

(declare-fun call!630358 () Bool)

(assert (=> b!6938089 (= e!4174071 call!630358)))

(declare-fun b!6938090 () Bool)

(declare-fun e!4174072 () Bool)

(assert (=> b!6938090 (= e!4174072 (matchRSpec!4018 (regTwo!34435 lt!2474950) (_2!37121 lt!2474938)))))

(declare-fun b!6938091 () Bool)

(assert (=> b!6938091 (= e!4174073 e!4174072)))

(declare-fun res!2830064 () Bool)

(assert (=> b!6938091 (= res!2830064 (matchRSpec!4018 (regOne!34435 lt!2474950) (_2!37121 lt!2474938)))))

(assert (=> b!6938091 (=> res!2830064 e!4174072)))

(declare-fun b!6938092 () Bool)

(assert (=> b!6938092 (= e!4174074 (= (_2!37121 lt!2474938) (Cons!66590 (c!1287333 lt!2474950) Nil!66590)))))

(declare-fun b!6938093 () Bool)

(declare-fun res!2830063 () Bool)

(declare-fun e!4174069 () Bool)

(assert (=> b!6938093 (=> res!2830063 e!4174069)))

(declare-fun call!630357 () Bool)

(assert (=> b!6938093 (= res!2830063 call!630357)))

(assert (=> b!6938093 (= e!4174071 e!4174069)))

(declare-fun b!6938094 () Bool)

(declare-fun e!4174068 () Bool)

(declare-fun e!4174070 () Bool)

(assert (=> b!6938094 (= e!4174068 e!4174070)))

(declare-fun res!2830062 () Bool)

(assert (=> b!6938094 (= res!2830062 (not ((_ is EmptyLang!16961) lt!2474950)))))

(assert (=> b!6938094 (=> (not res!2830062) (not e!4174070))))

(declare-fun b!6938095 () Bool)

(assert (=> b!6938095 (= e!4174068 call!630357)))

(declare-fun d!2167142 () Bool)

(declare-fun c!1287435 () Bool)

(assert (=> d!2167142 (= c!1287435 ((_ is EmptyExpr!16961) lt!2474950))))

(assert (=> d!2167142 (= (matchRSpec!4018 lt!2474950 (_2!37121 lt!2474938)) e!4174068)))

(declare-fun b!6938096 () Bool)

(declare-fun c!1287437 () Bool)

(assert (=> b!6938096 (= c!1287437 ((_ is ElementMatch!16961) lt!2474950))))

(assert (=> b!6938096 (= e!4174070 e!4174074)))

(declare-fun bm!630352 () Bool)

(assert (=> bm!630352 (= call!630357 (isEmpty!38857 (_2!37121 lt!2474938)))))

(assert (=> b!6938097 (= e!4174069 call!630358)))

(declare-fun bm!630353 () Bool)

(assert (=> bm!630353 (= call!630358 (Exists!3961 (ite c!1287434 lambda!395153 lambda!395154)))))

(assert (= (and d!2167142 c!1287435) b!6938095))

(assert (= (and d!2167142 (not c!1287435)) b!6938094))

(assert (= (and b!6938094 res!2830062) b!6938096))

(assert (= (and b!6938096 c!1287437) b!6938092))

(assert (= (and b!6938096 (not c!1287437)) b!6938087))

(assert (= (and b!6938087 c!1287436) b!6938091))

(assert (= (and b!6938087 (not c!1287436)) b!6938088))

(assert (= (and b!6938091 (not res!2830064)) b!6938090))

(assert (= (and b!6938088 c!1287434) b!6938093))

(assert (= (and b!6938088 (not c!1287434)) b!6938089))

(assert (= (and b!6938093 (not res!2830063)) b!6938097))

(assert (= (or b!6938097 b!6938089) bm!630353))

(assert (= (or b!6938095 b!6938093) bm!630352))

(declare-fun m!7643628 () Bool)

(assert (=> b!6938090 m!7643628))

(declare-fun m!7643630 () Bool)

(assert (=> b!6938091 m!7643630))

(declare-fun m!7643632 () Bool)

(assert (=> bm!630352 m!7643632))

(declare-fun m!7643634 () Bool)

(assert (=> bm!630353 m!7643634))

(assert (=> b!6937619 d!2167142))

(declare-fun b!6938109 () Bool)

(declare-fun res!2830074 () Bool)

(declare-fun e!4174086 () Bool)

(assert (=> b!6938109 (=> (not res!2830074) (not e!4174086))))

(declare-fun call!630361 () Bool)

(assert (=> b!6938109 (= res!2830074 (not call!630361))))

(declare-fun b!6938110 () Bool)

(declare-fun res!2830075 () Bool)

(declare-fun e!4174087 () Bool)

(assert (=> b!6938110 (=> res!2830075 e!4174087)))

(assert (=> b!6938110 (= res!2830075 (not ((_ is ElementMatch!16961) r2!6280)))))

(declare-fun e!4174084 () Bool)

(assert (=> b!6938110 (= e!4174084 e!4174087)))

(declare-fun d!2167186 () Bool)

(declare-fun e!4174083 () Bool)

(assert (=> d!2167186 e!4174083))

(declare-fun c!1287444 () Bool)

(assert (=> d!2167186 (= c!1287444 ((_ is EmptyExpr!16961) r2!6280))))

(declare-fun lt!2475039 () Bool)

(declare-fun e!4174088 () Bool)

(assert (=> d!2167186 (= lt!2475039 e!4174088)))

(declare-fun c!1287443 () Bool)

(assert (=> d!2167186 (= c!1287443 (isEmpty!38857 (_1!37121 lt!2474942)))))

(assert (=> d!2167186 (validRegex!8667 r2!6280)))

(assert (=> d!2167186 (= (matchR!9100 r2!6280 (_1!37121 lt!2474942)) lt!2475039)))

(declare-fun b!6938111 () Bool)

(declare-fun e!4174085 () Bool)

(declare-fun e!4174082 () Bool)

(assert (=> b!6938111 (= e!4174085 e!4174082)))

(declare-fun res!2830072 () Bool)

(assert (=> b!6938111 (=> res!2830072 e!4174082)))

(assert (=> b!6938111 (= res!2830072 call!630361)))

(declare-fun b!6938112 () Bool)

(declare-fun res!2830071 () Bool)

(assert (=> b!6938112 (=> res!2830071 e!4174082)))

(assert (=> b!6938112 (= res!2830071 (not (isEmpty!38857 (tail!12958 (_1!37121 lt!2474942)))))))

(declare-fun b!6938113 () Bool)

(assert (=> b!6938113 (= e!4174084 (not lt!2475039))))

(declare-fun b!6938114 () Bool)

(declare-fun res!2830070 () Bool)

(assert (=> b!6938114 (=> res!2830070 e!4174087)))

(assert (=> b!6938114 (= res!2830070 e!4174086)))

(declare-fun res!2830073 () Bool)

(assert (=> b!6938114 (=> (not res!2830073) (not e!4174086))))

(assert (=> b!6938114 (= res!2830073 lt!2475039)))

(declare-fun b!6938115 () Bool)

(assert (=> b!6938115 (= e!4174083 (= lt!2475039 call!630361))))

(declare-fun b!6938116 () Bool)

(declare-fun res!2830068 () Bool)

(assert (=> b!6938116 (=> (not res!2830068) (not e!4174086))))

(assert (=> b!6938116 (= res!2830068 (isEmpty!38857 (tail!12958 (_1!37121 lt!2474942))))))

(declare-fun b!6938117 () Bool)

(assert (=> b!6938117 (= e!4174087 e!4174085)))

(declare-fun res!2830069 () Bool)

(assert (=> b!6938117 (=> (not res!2830069) (not e!4174085))))

(assert (=> b!6938117 (= res!2830069 (not lt!2475039))))

(declare-fun b!6938118 () Bool)

(assert (=> b!6938118 (= e!4174082 (not (= (head!13906 (_1!37121 lt!2474942)) (c!1287333 r2!6280))))))

(declare-fun b!6938119 () Bool)

(assert (=> b!6938119 (= e!4174083 e!4174084)))

(declare-fun c!1287442 () Bool)

(assert (=> b!6938119 (= c!1287442 ((_ is EmptyLang!16961) r2!6280))))

(declare-fun bm!630356 () Bool)

(assert (=> bm!630356 (= call!630361 (isEmpty!38857 (_1!37121 lt!2474942)))))

(declare-fun b!6938120 () Bool)

(assert (=> b!6938120 (= e!4174088 (matchR!9100 (derivativeStep!5452 r2!6280 (head!13906 (_1!37121 lt!2474942))) (tail!12958 (_1!37121 lt!2474942))))))

(declare-fun b!6938121 () Bool)

(assert (=> b!6938121 (= e!4174088 (nullable!6778 r2!6280))))

(declare-fun b!6938122 () Bool)

(assert (=> b!6938122 (= e!4174086 (= (head!13906 (_1!37121 lt!2474942)) (c!1287333 r2!6280)))))

(assert (= (and d!2167186 c!1287443) b!6938121))

(assert (= (and d!2167186 (not c!1287443)) b!6938120))

(assert (= (and d!2167186 c!1287444) b!6938115))

(assert (= (and d!2167186 (not c!1287444)) b!6938119))

(assert (= (and b!6938119 c!1287442) b!6938113))

(assert (= (and b!6938119 (not c!1287442)) b!6938110))

(assert (= (and b!6938110 (not res!2830075)) b!6938114))

(assert (= (and b!6938114 res!2830073) b!6938109))

(assert (= (and b!6938109 res!2830074) b!6938116))

(assert (= (and b!6938116 res!2830068) b!6938122))

(assert (= (and b!6938114 (not res!2830070)) b!6938117))

(assert (= (and b!6938117 res!2830069) b!6938111))

(assert (= (and b!6938111 (not res!2830072)) b!6938112))

(assert (= (and b!6938112 (not res!2830071)) b!6938118))

(assert (= (or b!6938115 b!6938109 b!6938111) bm!630356))

(declare-fun m!7643636 () Bool)

(assert (=> b!6938121 m!7643636))

(declare-fun m!7643638 () Bool)

(assert (=> bm!630356 m!7643638))

(declare-fun m!7643640 () Bool)

(assert (=> b!6938122 m!7643640))

(assert (=> b!6938120 m!7643640))

(assert (=> b!6938120 m!7643640))

(declare-fun m!7643642 () Bool)

(assert (=> b!6938120 m!7643642))

(declare-fun m!7643644 () Bool)

(assert (=> b!6938120 m!7643644))

(assert (=> b!6938120 m!7643642))

(assert (=> b!6938120 m!7643644))

(declare-fun m!7643646 () Bool)

(assert (=> b!6938120 m!7643646))

(assert (=> d!2167186 m!7643638))

(assert (=> d!2167186 m!7643182))

(assert (=> b!6938118 m!7643640))

(assert (=> b!6938112 m!7643644))

(assert (=> b!6938112 m!7643644))

(declare-fun m!7643648 () Bool)

(assert (=> b!6938112 m!7643648))

(assert (=> b!6938116 m!7643644))

(assert (=> b!6938116 m!7643644))

(assert (=> b!6938116 m!7643648))

(assert (=> b!6937619 d!2167186))

(declare-fun d!2167188 () Bool)

(assert (=> d!2167188 (= (Exists!3961 lambda!395112) (choose!51683 lambda!395112))))

(declare-fun bs!1853232 () Bool)

(assert (= bs!1853232 d!2167188))

(declare-fun m!7643650 () Bool)

(assert (=> bs!1853232 m!7643650))

(assert (=> b!6937619 d!2167188))

(declare-fun d!2167190 () Bool)

(declare-fun isEmpty!38859 (Option!16730) Bool)

(assert (=> d!2167190 (= (isDefined!13431 lt!2474954) (not (isEmpty!38859 lt!2474954)))))

(declare-fun bs!1853239 () Bool)

(assert (= bs!1853239 d!2167190))

(declare-fun m!7643652 () Bool)

(assert (=> bs!1853239 m!7643652))

(assert (=> b!6937619 d!2167190))

(declare-fun b!6938123 () Bool)

(declare-fun e!4174094 () Bool)

(declare-fun e!4174095 () Bool)

(assert (=> b!6938123 (= e!4174094 e!4174095)))

(declare-fun c!1287446 () Bool)

(assert (=> b!6938123 (= c!1287446 ((_ is Union!16961) lt!2474959))))

(declare-fun bm!630357 () Bool)

(declare-fun call!630362 () Bool)

(declare-fun c!1287445 () Bool)

(assert (=> bm!630357 (= call!630362 (validRegex!8667 (ite c!1287445 (reg!17290 lt!2474959) (ite c!1287446 (regOne!34435 lt!2474959) (regTwo!34434 lt!2474959)))))))

(declare-fun b!6938124 () Bool)

(declare-fun res!2830076 () Bool)

(declare-fun e!4174089 () Bool)

(assert (=> b!6938124 (=> (not res!2830076) (not e!4174089))))

(declare-fun call!630363 () Bool)

(assert (=> b!6938124 (= res!2830076 call!630363)))

(assert (=> b!6938124 (= e!4174095 e!4174089)))

(declare-fun b!6938125 () Bool)

(declare-fun e!4174093 () Bool)

(declare-fun e!4174090 () Bool)

(assert (=> b!6938125 (= e!4174093 e!4174090)))

(declare-fun res!2830077 () Bool)

(assert (=> b!6938125 (=> (not res!2830077) (not e!4174090))))

(declare-fun call!630364 () Bool)

(assert (=> b!6938125 (= res!2830077 call!630364)))

(declare-fun b!6938126 () Bool)

(declare-fun e!4174091 () Bool)

(assert (=> b!6938126 (= e!4174094 e!4174091)))

(declare-fun res!2830078 () Bool)

(assert (=> b!6938126 (= res!2830078 (not (nullable!6778 (reg!17290 lt!2474959))))))

(assert (=> b!6938126 (=> (not res!2830078) (not e!4174091))))

(declare-fun b!6938127 () Bool)

(assert (=> b!6938127 (= e!4174089 call!630364)))

(declare-fun b!6938128 () Bool)

(assert (=> b!6938128 (= e!4174090 call!630363)))

(declare-fun bm!630359 () Bool)

(assert (=> bm!630359 (= call!630364 (validRegex!8667 (ite c!1287446 (regTwo!34435 lt!2474959) (regOne!34434 lt!2474959))))))

(declare-fun b!6938129 () Bool)

(declare-fun res!2830080 () Bool)

(assert (=> b!6938129 (=> res!2830080 e!4174093)))

(assert (=> b!6938129 (= res!2830080 (not ((_ is Concat!25806) lt!2474959)))))

(assert (=> b!6938129 (= e!4174095 e!4174093)))

(declare-fun d!2167192 () Bool)

(declare-fun res!2830079 () Bool)

(declare-fun e!4174092 () Bool)

(assert (=> d!2167192 (=> res!2830079 e!4174092)))

(assert (=> d!2167192 (= res!2830079 ((_ is ElementMatch!16961) lt!2474959))))

(assert (=> d!2167192 (= (validRegex!8667 lt!2474959) e!4174092)))

(declare-fun bm!630358 () Bool)

(assert (=> bm!630358 (= call!630363 call!630362)))

(declare-fun b!6938130 () Bool)

(assert (=> b!6938130 (= e!4174092 e!4174094)))

(assert (=> b!6938130 (= c!1287445 ((_ is Star!16961) lt!2474959))))

(declare-fun b!6938131 () Bool)

(assert (=> b!6938131 (= e!4174091 call!630362)))

(assert (= (and d!2167192 (not res!2830079)) b!6938130))

(assert (= (and b!6938130 c!1287445) b!6938126))

(assert (= (and b!6938130 (not c!1287445)) b!6938123))

(assert (= (and b!6938126 res!2830078) b!6938131))

(assert (= (and b!6938123 c!1287446) b!6938124))

(assert (= (and b!6938123 (not c!1287446)) b!6938129))

(assert (= (and b!6938124 res!2830076) b!6938127))

(assert (= (and b!6938129 (not res!2830080)) b!6938125))

(assert (= (and b!6938125 res!2830077) b!6938128))

(assert (= (or b!6938124 b!6938128) bm!630358))

(assert (= (or b!6938127 b!6938125) bm!630359))

(assert (= (or b!6938131 bm!630358) bm!630357))

(declare-fun m!7643654 () Bool)

(assert (=> bm!630357 m!7643654))

(declare-fun m!7643656 () Bool)

(assert (=> b!6938126 m!7643656))

(declare-fun m!7643658 () Bool)

(assert (=> bm!630359 m!7643658))

(assert (=> b!6937605 d!2167192))

(declare-fun b!6938165 () Bool)

(declare-fun res!2830098 () Bool)

(declare-fun e!4174112 () Bool)

(assert (=> b!6938165 (=> (not res!2830098) (not e!4174112))))

(declare-fun lt!2475046 () List!66714)

(declare-fun size!40797 (List!66714) Int)

(assert (=> b!6938165 (= res!2830098 (= (size!40797 lt!2475046) (+ (size!40797 Nil!66590) (size!40797 s!14361))))))

(declare-fun d!2167194 () Bool)

(assert (=> d!2167194 e!4174112))

(declare-fun res!2830099 () Bool)

(assert (=> d!2167194 (=> (not res!2830099) (not e!4174112))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13100 (List!66714) (InoxSet C!34192))

(assert (=> d!2167194 (= res!2830099 (= (content!13100 lt!2475046) ((_ map or) (content!13100 Nil!66590) (content!13100 s!14361))))))

(declare-fun e!4174113 () List!66714)

(assert (=> d!2167194 (= lt!2475046 e!4174113)))

(declare-fun c!1287454 () Bool)

(assert (=> d!2167194 (= c!1287454 ((_ is Nil!66590) Nil!66590))))

(assert (=> d!2167194 (= (++!15000 Nil!66590 s!14361) lt!2475046)))

(declare-fun b!6938164 () Bool)

(assert (=> b!6938164 (= e!4174113 (Cons!66590 (h!73038 Nil!66590) (++!15000 (t!380457 Nil!66590) s!14361)))))

(declare-fun b!6938163 () Bool)

(assert (=> b!6938163 (= e!4174113 s!14361)))

(declare-fun b!6938166 () Bool)

(assert (=> b!6938166 (= e!4174112 (or (not (= s!14361 Nil!66590)) (= lt!2475046 Nil!66590)))))

(assert (= (and d!2167194 c!1287454) b!6938163))

(assert (= (and d!2167194 (not c!1287454)) b!6938164))

(assert (= (and d!2167194 res!2830099) b!6938165))

(assert (= (and b!6938165 res!2830098) b!6938166))

(declare-fun m!7643700 () Bool)

(assert (=> b!6938165 m!7643700))

(declare-fun m!7643702 () Bool)

(assert (=> b!6938165 m!7643702))

(declare-fun m!7643704 () Bool)

(assert (=> b!6938165 m!7643704))

(declare-fun m!7643706 () Bool)

(assert (=> d!2167194 m!7643706))

(declare-fun m!7643708 () Bool)

(assert (=> d!2167194 m!7643708))

(declare-fun m!7643710 () Bool)

(assert (=> d!2167194 m!7643710))

(declare-fun m!7643712 () Bool)

(assert (=> b!6938164 m!7643712))

(assert (=> b!6937615 d!2167194))

(declare-fun d!2167202 () Bool)

(assert (=> d!2167202 (= (isDefined!13431 lt!2474948) (not (isEmpty!38859 lt!2474948)))))

(declare-fun bs!1853250 () Bool)

(assert (= bs!1853250 d!2167202))

(declare-fun m!7643714 () Bool)

(assert (=> bs!1853250 m!7643714))

(assert (=> b!6937628 d!2167202))

(declare-fun b!6938167 () Bool)

(declare-fun e!4174115 () Bool)

(declare-fun lt!2475048 () Option!16730)

(assert (=> b!6938167 (= e!4174115 (not (isDefined!13431 lt!2475048)))))

(declare-fun b!6938168 () Bool)

(declare-fun e!4174116 () Bool)

(assert (=> b!6938168 (= e!4174116 (= (++!15000 (_1!37121 (get!23378 lt!2475048)) (_2!37121 (get!23378 lt!2475048))) s!14361))))

(declare-fun b!6938169 () Bool)

(declare-fun res!2830100 () Bool)

(assert (=> b!6938169 (=> (not res!2830100) (not e!4174116))))

(assert (=> b!6938169 (= res!2830100 (matchR!9100 r1!6342 (_1!37121 (get!23378 lt!2475048))))))

(declare-fun d!2167204 () Bool)

(assert (=> d!2167204 e!4174115))

(declare-fun res!2830103 () Bool)

(assert (=> d!2167204 (=> res!2830103 e!4174115)))

(assert (=> d!2167204 (= res!2830103 e!4174116)))

(declare-fun res!2830104 () Bool)

(assert (=> d!2167204 (=> (not res!2830104) (not e!4174116))))

(assert (=> d!2167204 (= res!2830104 (isDefined!13431 lt!2475048))))

(declare-fun e!4174114 () Option!16730)

(assert (=> d!2167204 (= lt!2475048 e!4174114)))

(declare-fun c!1287456 () Bool)

(declare-fun e!4174118 () Bool)

(assert (=> d!2167204 (= c!1287456 e!4174118)))

(declare-fun res!2830102 () Bool)

(assert (=> d!2167204 (=> (not res!2830102) (not e!4174118))))

(assert (=> d!2167204 (= res!2830102 (matchR!9100 r1!6342 Nil!66590))))

(assert (=> d!2167204 (validRegex!8667 r1!6342)))

(assert (=> d!2167204 (= (findConcatSeparation!3144 r1!6342 lt!2474950 Nil!66590 s!14361 s!14361) lt!2475048)))

(declare-fun b!6938170 () Bool)

(declare-fun lt!2475049 () Unit!160646)

(declare-fun lt!2475050 () Unit!160646)

(assert (=> b!6938170 (= lt!2475049 lt!2475050)))

(assert (=> b!6938170 (= (++!15000 (++!15000 Nil!66590 (Cons!66590 (h!73038 s!14361) Nil!66590)) (t!380457 s!14361)) s!14361)))

(assert (=> b!6938170 (= lt!2475050 (lemmaMoveElementToOtherListKeepsConcatEq!2856 Nil!66590 (h!73038 s!14361) (t!380457 s!14361) s!14361))))

(declare-fun e!4174117 () Option!16730)

(assert (=> b!6938170 (= e!4174117 (findConcatSeparation!3144 r1!6342 lt!2474950 (++!15000 Nil!66590 (Cons!66590 (h!73038 s!14361) Nil!66590)) (t!380457 s!14361) s!14361))))

(declare-fun b!6938171 () Bool)

(declare-fun res!2830101 () Bool)

(assert (=> b!6938171 (=> (not res!2830101) (not e!4174116))))

(assert (=> b!6938171 (= res!2830101 (matchR!9100 lt!2474950 (_2!37121 (get!23378 lt!2475048))))))

(declare-fun b!6938172 () Bool)

(assert (=> b!6938172 (= e!4174118 (matchR!9100 lt!2474950 s!14361))))

(declare-fun b!6938173 () Bool)

(assert (=> b!6938173 (= e!4174117 None!16729)))

(declare-fun b!6938174 () Bool)

(assert (=> b!6938174 (= e!4174114 e!4174117)))

(declare-fun c!1287455 () Bool)

(assert (=> b!6938174 (= c!1287455 ((_ is Nil!66590) s!14361))))

(declare-fun b!6938175 () Bool)

(assert (=> b!6938175 (= e!4174114 (Some!16729 (tuple2!67637 Nil!66590 s!14361)))))

(assert (= (and d!2167204 res!2830102) b!6938172))

(assert (= (and d!2167204 c!1287456) b!6938175))

(assert (= (and d!2167204 (not c!1287456)) b!6938174))

(assert (= (and b!6938174 c!1287455) b!6938173))

(assert (= (and b!6938174 (not c!1287455)) b!6938170))

(assert (= (and d!2167204 res!2830104) b!6938169))

(assert (= (and b!6938169 res!2830100) b!6938171))

(assert (= (and b!6938171 res!2830101) b!6938168))

(assert (= (and d!2167204 (not res!2830103)) b!6938167))

(declare-fun m!7643716 () Bool)

(assert (=> b!6938170 m!7643716))

(assert (=> b!6938170 m!7643716))

(declare-fun m!7643718 () Bool)

(assert (=> b!6938170 m!7643718))

(declare-fun m!7643720 () Bool)

(assert (=> b!6938170 m!7643720))

(assert (=> b!6938170 m!7643716))

(declare-fun m!7643722 () Bool)

(assert (=> b!6938170 m!7643722))

(declare-fun m!7643724 () Bool)

(assert (=> b!6938168 m!7643724))

(declare-fun m!7643726 () Bool)

(assert (=> b!6938168 m!7643726))

(assert (=> b!6938171 m!7643724))

(declare-fun m!7643728 () Bool)

(assert (=> b!6938171 m!7643728))

(declare-fun m!7643730 () Bool)

(assert (=> b!6938167 m!7643730))

(declare-fun m!7643732 () Bool)

(assert (=> b!6938172 m!7643732))

(assert (=> d!2167204 m!7643730))

(declare-fun m!7643734 () Bool)

(assert (=> d!2167204 m!7643734))

(assert (=> d!2167204 m!7643214))

(assert (=> b!6938169 m!7643724))

(declare-fun m!7643736 () Bool)

(assert (=> b!6938169 m!7643736))

(assert (=> b!6937628 d!2167204))

(declare-fun b!6938178 () Bool)

(declare-fun res!2830105 () Bool)

(declare-fun e!4174119 () Bool)

(assert (=> b!6938178 (=> (not res!2830105) (not e!4174119))))

(declare-fun lt!2475051 () List!66714)

(assert (=> b!6938178 (= res!2830105 (= (size!40797 lt!2475051) (+ (size!40797 lt!2474940) (size!40797 (_2!37121 lt!2474942)))))))

(declare-fun d!2167206 () Bool)

(assert (=> d!2167206 e!4174119))

(declare-fun res!2830106 () Bool)

(assert (=> d!2167206 (=> (not res!2830106) (not e!4174119))))

(assert (=> d!2167206 (= res!2830106 (= (content!13100 lt!2475051) ((_ map or) (content!13100 lt!2474940) (content!13100 (_2!37121 lt!2474942)))))))

(declare-fun e!4174120 () List!66714)

(assert (=> d!2167206 (= lt!2475051 e!4174120)))

(declare-fun c!1287457 () Bool)

(assert (=> d!2167206 (= c!1287457 ((_ is Nil!66590) lt!2474940))))

(assert (=> d!2167206 (= (++!15000 lt!2474940 (_2!37121 lt!2474942)) lt!2475051)))

(declare-fun b!6938177 () Bool)

(assert (=> b!6938177 (= e!4174120 (Cons!66590 (h!73038 lt!2474940) (++!15000 (t!380457 lt!2474940) (_2!37121 lt!2474942))))))

(declare-fun b!6938176 () Bool)

(assert (=> b!6938176 (= e!4174120 (_2!37121 lt!2474942))))

(declare-fun b!6938179 () Bool)

(assert (=> b!6938179 (= e!4174119 (or (not (= (_2!37121 lt!2474942) Nil!66590)) (= lt!2475051 lt!2474940)))))

(assert (= (and d!2167206 c!1287457) b!6938176))

(assert (= (and d!2167206 (not c!1287457)) b!6938177))

(assert (= (and d!2167206 res!2830106) b!6938178))

(assert (= (and b!6938178 res!2830105) b!6938179))

(declare-fun m!7643738 () Bool)

(assert (=> b!6938178 m!7643738))

(declare-fun m!7643740 () Bool)

(assert (=> b!6938178 m!7643740))

(declare-fun m!7643742 () Bool)

(assert (=> b!6938178 m!7643742))

(declare-fun m!7643744 () Bool)

(assert (=> d!2167206 m!7643744))

(declare-fun m!7643746 () Bool)

(assert (=> d!2167206 m!7643746))

(declare-fun m!7643748 () Bool)

(assert (=> d!2167206 m!7643748))

(declare-fun m!7643750 () Bool)

(assert (=> b!6938177 m!7643750))

(assert (=> b!6937624 d!2167206))

(declare-fun d!2167208 () Bool)

(assert (=> d!2167208 (= (Exists!3961 lambda!395113) (choose!51683 lambda!395113))))

(declare-fun bs!1853268 () Bool)

(assert (= bs!1853268 d!2167208))

(declare-fun m!7643752 () Bool)

(assert (=> bs!1853268 m!7643752))

(assert (=> b!6937624 d!2167208))

(declare-fun b!6938182 () Bool)

(declare-fun res!2830107 () Bool)

(declare-fun e!4174121 () Bool)

(assert (=> b!6938182 (=> (not res!2830107) (not e!4174121))))

(declare-fun lt!2475052 () List!66714)

(assert (=> b!6938182 (= res!2830107 (= (size!40797 lt!2475052) (+ (size!40797 (_1!37121 lt!2474938)) (size!40797 (_1!37121 lt!2474942)))))))

(declare-fun d!2167210 () Bool)

(assert (=> d!2167210 e!4174121))

(declare-fun res!2830108 () Bool)

(assert (=> d!2167210 (=> (not res!2830108) (not e!4174121))))

(assert (=> d!2167210 (= res!2830108 (= (content!13100 lt!2475052) ((_ map or) (content!13100 (_1!37121 lt!2474938)) (content!13100 (_1!37121 lt!2474942)))))))

(declare-fun e!4174122 () List!66714)

(assert (=> d!2167210 (= lt!2475052 e!4174122)))

(declare-fun c!1287458 () Bool)

(assert (=> d!2167210 (= c!1287458 ((_ is Nil!66590) (_1!37121 lt!2474938)))))

(assert (=> d!2167210 (= (++!15000 (_1!37121 lt!2474938) (_1!37121 lt!2474942)) lt!2475052)))

(declare-fun b!6938181 () Bool)

(assert (=> b!6938181 (= e!4174122 (Cons!66590 (h!73038 (_1!37121 lt!2474938)) (++!15000 (t!380457 (_1!37121 lt!2474938)) (_1!37121 lt!2474942))))))

(declare-fun b!6938180 () Bool)

(assert (=> b!6938180 (= e!4174122 (_1!37121 lt!2474942))))

(declare-fun b!6938183 () Bool)

(assert (=> b!6938183 (= e!4174121 (or (not (= (_1!37121 lt!2474942) Nil!66590)) (= lt!2475052 (_1!37121 lt!2474938))))))

(assert (= (and d!2167210 c!1287458) b!6938180))

(assert (= (and d!2167210 (not c!1287458)) b!6938181))

(assert (= (and d!2167210 res!2830108) b!6938182))

(assert (= (and b!6938182 res!2830107) b!6938183))

(declare-fun m!7643754 () Bool)

(assert (=> b!6938182 m!7643754))

(declare-fun m!7643756 () Bool)

(assert (=> b!6938182 m!7643756))

(declare-fun m!7643758 () Bool)

(assert (=> b!6938182 m!7643758))

(declare-fun m!7643760 () Bool)

(assert (=> d!2167210 m!7643760))

(declare-fun m!7643762 () Bool)

(assert (=> d!2167210 m!7643762))

(declare-fun m!7643764 () Bool)

(assert (=> d!2167210 m!7643764))

(declare-fun m!7643766 () Bool)

(assert (=> b!6938181 m!7643766))

(assert (=> b!6937624 d!2167210))

(declare-fun d!2167212 () Bool)

(assert (=> d!2167212 (= (++!15000 (++!15000 (_1!37121 lt!2474938) (_1!37121 lt!2474942)) (_2!37121 lt!2474942)) (++!15000 (_1!37121 lt!2474938) (++!15000 (_1!37121 lt!2474942) (_2!37121 lt!2474942))))))

(declare-fun lt!2475055 () Unit!160646)

(declare-fun choose!51686 (List!66714 List!66714 List!66714) Unit!160646)

(assert (=> d!2167212 (= lt!2475055 (choose!51686 (_1!37121 lt!2474938) (_1!37121 lt!2474942) (_2!37121 lt!2474942)))))

(assert (=> d!2167212 (= (lemmaConcatAssociativity!3042 (_1!37121 lt!2474938) (_1!37121 lt!2474942) (_2!37121 lt!2474942)) lt!2475055)))

(declare-fun bs!1853270 () Bool)

(assert (= bs!1853270 d!2167212))

(declare-fun m!7643768 () Bool)

(assert (=> bs!1853270 m!7643768))

(assert (=> bs!1853270 m!7643242))

(declare-fun m!7643770 () Bool)

(assert (=> bs!1853270 m!7643770))

(assert (=> bs!1853270 m!7643242))

(assert (=> bs!1853270 m!7643264))

(assert (=> bs!1853270 m!7643264))

(assert (=> bs!1853270 m!7643268))

(assert (=> b!6937624 d!2167212))

(declare-fun bs!1853272 () Bool)

(declare-fun d!2167214 () Bool)

(assert (= bs!1853272 (and d!2167214 b!6938097)))

(declare-fun lambda!395159 () Int)

(assert (=> bs!1853272 (not (= lambda!395159 lambda!395153))))

(declare-fun bs!1853273 () Bool)

(assert (= bs!1853273 (and d!2167214 b!6937619)))

(assert (=> bs!1853273 (= (and (= lt!2474940 (_2!37121 lt!2474938)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395159 lambda!395111))))

(declare-fun bs!1853274 () Bool)

(assert (= bs!1853274 (and d!2167214 d!2167134)))

(assert (=> bs!1853274 (= (and (= lt!2474940 (_2!37121 lt!2474938)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395159 lambda!395139))))

(declare-fun bs!1853275 () Bool)

(assert (= bs!1853275 (and d!2167214 d!2167124)))

(assert (=> bs!1853275 (= (and (= lt!2474940 (_2!37121 lt!2474938)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395159 lambda!395128))))

(declare-fun bs!1853276 () Bool)

(assert (= bs!1853276 (and d!2167214 b!6938089)))

(assert (=> bs!1853276 (not (= lambda!395159 lambda!395154))))

(declare-fun bs!1853278 () Bool)

(assert (= bs!1853278 (and d!2167214 b!6937624)))

(assert (=> bs!1853278 (not (= lambda!395159 lambda!395114))))

(declare-fun bs!1853279 () Bool)

(assert (= bs!1853279 (and d!2167214 b!6937621)))

(assert (=> bs!1853279 (= (and (= lt!2474940 s!14361) (= r2!6280 lt!2474950)) (= lambda!395159 lambda!395109))))

(assert (=> bs!1853278 (= lambda!395159 lambda!395113)))

(assert (=> bs!1853274 (not (= lambda!395159 lambda!395141))))

(assert (=> bs!1853279 (not (= lambda!395159 lambda!395110))))

(assert (=> bs!1853273 (not (= lambda!395159 lambda!395112))))

(assert (=> d!2167214 true))

(assert (=> d!2167214 true))

(assert (=> d!2167214 true))

(assert (=> d!2167214 (= (isDefined!13431 (findConcatSeparation!3144 r1!6342 r2!6280 Nil!66590 lt!2474940 lt!2474940)) (Exists!3961 lambda!395159))))

(declare-fun lt!2475056 () Unit!160646)

(assert (=> d!2167214 (= lt!2475056 (choose!51682 r1!6342 r2!6280 lt!2474940))))

(assert (=> d!2167214 (validRegex!8667 r1!6342)))

(assert (=> d!2167214 (= (lemmaFindConcatSeparationEquivalentToExists!2902 r1!6342 r2!6280 lt!2474940) lt!2475056)))

(declare-fun bs!1853280 () Bool)

(assert (= bs!1853280 d!2167214))

(assert (=> bs!1853280 m!7643214))

(declare-fun m!7643792 () Bool)

(assert (=> bs!1853280 m!7643792))

(declare-fun m!7643794 () Bool)

(assert (=> bs!1853280 m!7643794))

(assert (=> bs!1853280 m!7643236))

(assert (=> bs!1853280 m!7643236))

(assert (=> bs!1853280 m!7643238))

(assert (=> b!6937624 d!2167214))

(declare-fun d!2167222 () Bool)

(assert (=> d!2167222 (= (matchR!9100 lt!2474959 lt!2474940) (matchRSpec!4018 lt!2474959 lt!2474940))))

(declare-fun lt!2475059 () Unit!160646)

(assert (=> d!2167222 (= lt!2475059 (choose!51680 lt!2474959 lt!2474940))))

(assert (=> d!2167222 (validRegex!8667 lt!2474959)))

(assert (=> d!2167222 (= (mainMatchTheorem!4018 lt!2474959 lt!2474940) lt!2475059)))

(declare-fun bs!1853281 () Bool)

(assert (= bs!1853281 d!2167222))

(assert (=> bs!1853281 m!7643246))

(assert (=> bs!1853281 m!7643248))

(declare-fun m!7643800 () Bool)

(assert (=> bs!1853281 m!7643800))

(assert (=> bs!1853281 m!7643216))

(assert (=> b!6937624 d!2167222))

(declare-fun bs!1853282 () Bool)

(declare-fun b!6938222 () Bool)

(assert (= bs!1853282 (and b!6938222 b!6938097)))

(declare-fun lambda!395160 () Int)

(assert (=> bs!1853282 (= (and (= lt!2474940 (_2!37121 lt!2474938)) (= (reg!17290 lt!2474959) (reg!17290 lt!2474950)) (= lt!2474959 lt!2474950)) (= lambda!395160 lambda!395153))))

(declare-fun bs!1853284 () Bool)

(assert (= bs!1853284 (and b!6938222 b!6937619)))

(assert (=> bs!1853284 (not (= lambda!395160 lambda!395111))))

(declare-fun bs!1853285 () Bool)

(assert (= bs!1853285 (and b!6938222 d!2167134)))

(assert (=> bs!1853285 (not (= lambda!395160 lambda!395139))))

(declare-fun bs!1853286 () Bool)

(assert (= bs!1853286 (and b!6938222 d!2167124)))

(assert (=> bs!1853286 (not (= lambda!395160 lambda!395128))))

(declare-fun bs!1853287 () Bool)

(assert (= bs!1853287 (and b!6938222 b!6938089)))

(assert (=> bs!1853287 (not (= lambda!395160 lambda!395154))))

(declare-fun bs!1853288 () Bool)

(assert (= bs!1853288 (and b!6938222 b!6937624)))

(assert (=> bs!1853288 (not (= lambda!395160 lambda!395114))))

(declare-fun bs!1853289 () Bool)

(assert (= bs!1853289 (and b!6938222 b!6937621)))

(assert (=> bs!1853289 (not (= lambda!395160 lambda!395109))))

(assert (=> bs!1853288 (not (= lambda!395160 lambda!395113))))

(assert (=> bs!1853285 (not (= lambda!395160 lambda!395141))))

(declare-fun bs!1853291 () Bool)

(assert (= bs!1853291 (and b!6938222 d!2167214)))

(assert (=> bs!1853291 (not (= lambda!395160 lambda!395159))))

(assert (=> bs!1853289 (not (= lambda!395160 lambda!395110))))

(assert (=> bs!1853284 (not (= lambda!395160 lambda!395112))))

(assert (=> b!6938222 true))

(assert (=> b!6938222 true))

(declare-fun bs!1853299 () Bool)

(declare-fun b!6938214 () Bool)

(assert (= bs!1853299 (and b!6938214 b!6938097)))

(declare-fun lambda!395162 () Int)

(assert (=> bs!1853299 (not (= lambda!395162 lambda!395153))))

(declare-fun bs!1853301 () Bool)

(assert (= bs!1853301 (and b!6938214 b!6937619)))

(assert (=> bs!1853301 (not (= lambda!395162 lambda!395111))))

(declare-fun bs!1853303 () Bool)

(assert (= bs!1853303 (and b!6938214 d!2167134)))

(assert (=> bs!1853303 (not (= lambda!395162 lambda!395139))))

(declare-fun bs!1853304 () Bool)

(assert (= bs!1853304 (and b!6938214 d!2167124)))

(assert (=> bs!1853304 (not (= lambda!395162 lambda!395128))))

(declare-fun bs!1853306 () Bool)

(assert (= bs!1853306 (and b!6938214 b!6938089)))

(assert (=> bs!1853306 (= (and (= lt!2474940 (_2!37121 lt!2474938)) (= (regOne!34434 lt!2474959) (regOne!34434 lt!2474950)) (= (regTwo!34434 lt!2474959) (regTwo!34434 lt!2474950))) (= lambda!395162 lambda!395154))))

(declare-fun bs!1853308 () Bool)

(assert (= bs!1853308 (and b!6938214 b!6937624)))

(assert (=> bs!1853308 (= (and (= (regOne!34434 lt!2474959) r1!6342) (= (regTwo!34434 lt!2474959) r2!6280)) (= lambda!395162 lambda!395114))))

(declare-fun bs!1853310 () Bool)

(assert (= bs!1853310 (and b!6938214 b!6937621)))

(assert (=> bs!1853310 (not (= lambda!395162 lambda!395109))))

(assert (=> bs!1853303 (= (and (= lt!2474940 (_2!37121 lt!2474938)) (= (regOne!34434 lt!2474959) r2!6280) (= (regTwo!34434 lt!2474959) r3!135)) (= lambda!395162 lambda!395141))))

(declare-fun bs!1853313 () Bool)

(assert (= bs!1853313 (and b!6938214 d!2167214)))

(assert (=> bs!1853313 (not (= lambda!395162 lambda!395159))))

(assert (=> bs!1853310 (= (and (= lt!2474940 s!14361) (= (regOne!34434 lt!2474959) r1!6342) (= (regTwo!34434 lt!2474959) lt!2474950)) (= lambda!395162 lambda!395110))))

(assert (=> bs!1853301 (= (and (= lt!2474940 (_2!37121 lt!2474938)) (= (regOne!34434 lt!2474959) r2!6280) (= (regTwo!34434 lt!2474959) r3!135)) (= lambda!395162 lambda!395112))))

(assert (=> bs!1853308 (not (= lambda!395162 lambda!395113))))

(declare-fun bs!1853316 () Bool)

(assert (= bs!1853316 (and b!6938214 b!6938222)))

(assert (=> bs!1853316 (not (= lambda!395162 lambda!395160))))

(assert (=> b!6938214 true))

(assert (=> b!6938214 true))

(declare-fun b!6938212 () Bool)

(declare-fun c!1287467 () Bool)

(assert (=> b!6938212 (= c!1287467 ((_ is Union!16961) lt!2474959))))

(declare-fun e!4174143 () Bool)

(declare-fun e!4174142 () Bool)

(assert (=> b!6938212 (= e!4174143 e!4174142)))

(declare-fun b!6938213 () Bool)

(declare-fun e!4174140 () Bool)

(assert (=> b!6938213 (= e!4174142 e!4174140)))

(declare-fun c!1287465 () Bool)

(assert (=> b!6938213 (= c!1287465 ((_ is Star!16961) lt!2474959))))

(declare-fun call!630369 () Bool)

(assert (=> b!6938214 (= e!4174140 call!630369)))

(declare-fun b!6938215 () Bool)

(declare-fun e!4174141 () Bool)

(assert (=> b!6938215 (= e!4174141 (matchRSpec!4018 (regTwo!34435 lt!2474959) lt!2474940))))

(declare-fun b!6938216 () Bool)

(assert (=> b!6938216 (= e!4174142 e!4174141)))

(declare-fun res!2830127 () Bool)

(assert (=> b!6938216 (= res!2830127 (matchRSpec!4018 (regOne!34435 lt!2474959) lt!2474940))))

(assert (=> b!6938216 (=> res!2830127 e!4174141)))

(declare-fun b!6938217 () Bool)

(assert (=> b!6938217 (= e!4174143 (= lt!2474940 (Cons!66590 (c!1287333 lt!2474959) Nil!66590)))))

(declare-fun b!6938218 () Bool)

(declare-fun res!2830126 () Bool)

(declare-fun e!4174138 () Bool)

(assert (=> b!6938218 (=> res!2830126 e!4174138)))

(declare-fun call!630368 () Bool)

(assert (=> b!6938218 (= res!2830126 call!630368)))

(assert (=> b!6938218 (= e!4174140 e!4174138)))

(declare-fun b!6938219 () Bool)

(declare-fun e!4174137 () Bool)

(declare-fun e!4174139 () Bool)

(assert (=> b!6938219 (= e!4174137 e!4174139)))

(declare-fun res!2830125 () Bool)

(assert (=> b!6938219 (= res!2830125 (not ((_ is EmptyLang!16961) lt!2474959)))))

(assert (=> b!6938219 (=> (not res!2830125) (not e!4174139))))

(declare-fun b!6938220 () Bool)

(assert (=> b!6938220 (= e!4174137 call!630368)))

(declare-fun d!2167224 () Bool)

(declare-fun c!1287466 () Bool)

(assert (=> d!2167224 (= c!1287466 ((_ is EmptyExpr!16961) lt!2474959))))

(assert (=> d!2167224 (= (matchRSpec!4018 lt!2474959 lt!2474940) e!4174137)))

(declare-fun b!6938221 () Bool)

(declare-fun c!1287468 () Bool)

(assert (=> b!6938221 (= c!1287468 ((_ is ElementMatch!16961) lt!2474959))))

(assert (=> b!6938221 (= e!4174139 e!4174143)))

(declare-fun bm!630363 () Bool)

(assert (=> bm!630363 (= call!630368 (isEmpty!38857 lt!2474940))))

(assert (=> b!6938222 (= e!4174138 call!630369)))

(declare-fun bm!630364 () Bool)

(assert (=> bm!630364 (= call!630369 (Exists!3961 (ite c!1287465 lambda!395160 lambda!395162)))))

(assert (= (and d!2167224 c!1287466) b!6938220))

(assert (= (and d!2167224 (not c!1287466)) b!6938219))

(assert (= (and b!6938219 res!2830125) b!6938221))

(assert (= (and b!6938221 c!1287468) b!6938217))

(assert (= (and b!6938221 (not c!1287468)) b!6938212))

(assert (= (and b!6938212 c!1287467) b!6938216))

(assert (= (and b!6938212 (not c!1287467)) b!6938213))

(assert (= (and b!6938216 (not res!2830127)) b!6938215))

(assert (= (and b!6938213 c!1287465) b!6938218))

(assert (= (and b!6938213 (not c!1287465)) b!6938214))

(assert (= (and b!6938218 (not res!2830126)) b!6938222))

(assert (= (or b!6938222 b!6938214) bm!630364))

(assert (= (or b!6938220 b!6938218) bm!630363))

(declare-fun m!7643812 () Bool)

(assert (=> b!6938215 m!7643812))

(declare-fun m!7643814 () Bool)

(assert (=> b!6938216 m!7643814))

(declare-fun m!7643816 () Bool)

(assert (=> bm!630363 m!7643816))

(declare-fun m!7643818 () Bool)

(assert (=> bm!630364 m!7643818))

(assert (=> b!6937624 d!2167224))

(declare-fun bs!1853321 () Bool)

(declare-fun d!2167230 () Bool)

(assert (= bs!1853321 (and d!2167230 b!6938097)))

(declare-fun lambda!395164 () Int)

(assert (=> bs!1853321 (not (= lambda!395164 lambda!395153))))

(declare-fun bs!1853323 () Bool)

(assert (= bs!1853323 (and d!2167230 b!6937619)))

(assert (=> bs!1853323 (= (and (= lt!2474940 (_2!37121 lt!2474938)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395164 lambda!395111))))

(declare-fun bs!1853325 () Bool)

(assert (= bs!1853325 (and d!2167230 d!2167134)))

(assert (=> bs!1853325 (= (and (= lt!2474940 (_2!37121 lt!2474938)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395164 lambda!395139))))

(declare-fun bs!1853327 () Bool)

(assert (= bs!1853327 (and d!2167230 b!6938214)))

(assert (=> bs!1853327 (not (= lambda!395164 lambda!395162))))

(declare-fun bs!1853329 () Bool)

(assert (= bs!1853329 (and d!2167230 d!2167124)))

(assert (=> bs!1853329 (= (and (= lt!2474940 (_2!37121 lt!2474938)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395164 lambda!395128))))

(declare-fun bs!1853331 () Bool)

(assert (= bs!1853331 (and d!2167230 b!6938089)))

(assert (=> bs!1853331 (not (= lambda!395164 lambda!395154))))

(declare-fun bs!1853333 () Bool)

(assert (= bs!1853333 (and d!2167230 b!6937624)))

(assert (=> bs!1853333 (not (= lambda!395164 lambda!395114))))

(declare-fun bs!1853334 () Bool)

(assert (= bs!1853334 (and d!2167230 b!6937621)))

(assert (=> bs!1853334 (= (and (= lt!2474940 s!14361) (= r2!6280 lt!2474950)) (= lambda!395164 lambda!395109))))

(assert (=> bs!1853325 (not (= lambda!395164 lambda!395141))))

(declare-fun bs!1853337 () Bool)

(assert (= bs!1853337 (and d!2167230 d!2167214)))

(assert (=> bs!1853337 (= lambda!395164 lambda!395159)))

(assert (=> bs!1853334 (not (= lambda!395164 lambda!395110))))

(assert (=> bs!1853323 (not (= lambda!395164 lambda!395112))))

(assert (=> bs!1853333 (= lambda!395164 lambda!395113)))

(declare-fun bs!1853341 () Bool)

(assert (= bs!1853341 (and d!2167230 b!6938222)))

(assert (=> bs!1853341 (not (= lambda!395164 lambda!395160))))

(assert (=> d!2167230 true))

(assert (=> d!2167230 true))

(assert (=> d!2167230 true))

(declare-fun lambda!395165 () Int)

(assert (=> bs!1853321 (not (= lambda!395165 lambda!395153))))

(assert (=> bs!1853323 (not (= lambda!395165 lambda!395111))))

(assert (=> bs!1853325 (not (= lambda!395165 lambda!395139))))

(assert (=> bs!1853329 (not (= lambda!395165 lambda!395128))))

(assert (=> bs!1853331 (= (and (= lt!2474940 (_2!37121 lt!2474938)) (= r1!6342 (regOne!34434 lt!2474950)) (= r2!6280 (regTwo!34434 lt!2474950))) (= lambda!395165 lambda!395154))))

(assert (=> bs!1853333 (= lambda!395165 lambda!395114)))

(assert (=> bs!1853334 (not (= lambda!395165 lambda!395109))))

(assert (=> bs!1853325 (= (and (= lt!2474940 (_2!37121 lt!2474938)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395165 lambda!395141))))

(assert (=> bs!1853337 (not (= lambda!395165 lambda!395159))))

(declare-fun bs!1853349 () Bool)

(assert (= bs!1853349 d!2167230))

(assert (=> bs!1853349 (not (= lambda!395165 lambda!395164))))

(assert (=> bs!1853327 (= (and (= r1!6342 (regOne!34434 lt!2474959)) (= r2!6280 (regTwo!34434 lt!2474959))) (= lambda!395165 lambda!395162))))

(assert (=> bs!1853334 (= (and (= lt!2474940 s!14361) (= r2!6280 lt!2474950)) (= lambda!395165 lambda!395110))))

(assert (=> bs!1853323 (= (and (= lt!2474940 (_2!37121 lt!2474938)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395165 lambda!395112))))

(assert (=> bs!1853333 (not (= lambda!395165 lambda!395113))))

(assert (=> bs!1853341 (not (= lambda!395165 lambda!395160))))

(assert (=> d!2167230 true))

(assert (=> d!2167230 true))

(assert (=> d!2167230 true))

(assert (=> d!2167230 (= (Exists!3961 lambda!395164) (Exists!3961 lambda!395165))))

(declare-fun lt!2475061 () Unit!160646)

(assert (=> d!2167230 (= lt!2475061 (choose!51684 r1!6342 r2!6280 lt!2474940))))

(assert (=> d!2167230 (validRegex!8667 r1!6342)))

(assert (=> d!2167230 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2422 r1!6342 r2!6280 lt!2474940) lt!2475061)))

(declare-fun m!7643826 () Bool)

(assert (=> bs!1853349 m!7643826))

(declare-fun m!7643828 () Bool)

(assert (=> bs!1853349 m!7643828))

(declare-fun m!7643830 () Bool)

(assert (=> bs!1853349 m!7643830))

(assert (=> bs!1853349 m!7643214))

(assert (=> b!6937624 d!2167230))

(declare-fun b!6938245 () Bool)

(declare-fun res!2830140 () Bool)

(declare-fun e!4174162 () Bool)

(assert (=> b!6938245 (=> (not res!2830140) (not e!4174162))))

(declare-fun call!630374 () Bool)

(assert (=> b!6938245 (= res!2830140 (not call!630374))))

(declare-fun b!6938246 () Bool)

(declare-fun res!2830141 () Bool)

(declare-fun e!4174163 () Bool)

(assert (=> b!6938246 (=> res!2830141 e!4174163)))

(assert (=> b!6938246 (= res!2830141 (not ((_ is ElementMatch!16961) lt!2474959)))))

(declare-fun e!4174160 () Bool)

(assert (=> b!6938246 (= e!4174160 e!4174163)))

(declare-fun d!2167234 () Bool)

(declare-fun e!4174159 () Bool)

(assert (=> d!2167234 e!4174159))

(declare-fun c!1287479 () Bool)

(assert (=> d!2167234 (= c!1287479 ((_ is EmptyExpr!16961) lt!2474959))))

(declare-fun lt!2475062 () Bool)

(declare-fun e!4174164 () Bool)

(assert (=> d!2167234 (= lt!2475062 e!4174164)))

(declare-fun c!1287478 () Bool)

(assert (=> d!2167234 (= c!1287478 (isEmpty!38857 lt!2474940))))

(assert (=> d!2167234 (validRegex!8667 lt!2474959)))

(assert (=> d!2167234 (= (matchR!9100 lt!2474959 lt!2474940) lt!2475062)))

(declare-fun b!6938247 () Bool)

(declare-fun e!4174161 () Bool)

(declare-fun e!4174158 () Bool)

(assert (=> b!6938247 (= e!4174161 e!4174158)))

(declare-fun res!2830138 () Bool)

(assert (=> b!6938247 (=> res!2830138 e!4174158)))

(assert (=> b!6938247 (= res!2830138 call!630374)))

(declare-fun b!6938248 () Bool)

(declare-fun res!2830137 () Bool)

(assert (=> b!6938248 (=> res!2830137 e!4174158)))

(assert (=> b!6938248 (= res!2830137 (not (isEmpty!38857 (tail!12958 lt!2474940))))))

(declare-fun b!6938249 () Bool)

(assert (=> b!6938249 (= e!4174160 (not lt!2475062))))

(declare-fun b!6938250 () Bool)

(declare-fun res!2830136 () Bool)

(assert (=> b!6938250 (=> res!2830136 e!4174163)))

(assert (=> b!6938250 (= res!2830136 e!4174162)))

(declare-fun res!2830139 () Bool)

(assert (=> b!6938250 (=> (not res!2830139) (not e!4174162))))

(assert (=> b!6938250 (= res!2830139 lt!2475062)))

(declare-fun b!6938251 () Bool)

(assert (=> b!6938251 (= e!4174159 (= lt!2475062 call!630374))))

(declare-fun b!6938252 () Bool)

(declare-fun res!2830134 () Bool)

(assert (=> b!6938252 (=> (not res!2830134) (not e!4174162))))

(assert (=> b!6938252 (= res!2830134 (isEmpty!38857 (tail!12958 lt!2474940)))))

(declare-fun b!6938253 () Bool)

(assert (=> b!6938253 (= e!4174163 e!4174161)))

(declare-fun res!2830135 () Bool)

(assert (=> b!6938253 (=> (not res!2830135) (not e!4174161))))

(assert (=> b!6938253 (= res!2830135 (not lt!2475062))))

(declare-fun b!6938254 () Bool)

(assert (=> b!6938254 (= e!4174158 (not (= (head!13906 lt!2474940) (c!1287333 lt!2474959))))))

(declare-fun b!6938255 () Bool)

(assert (=> b!6938255 (= e!4174159 e!4174160)))

(declare-fun c!1287477 () Bool)

(assert (=> b!6938255 (= c!1287477 ((_ is EmptyLang!16961) lt!2474959))))

(declare-fun bm!630369 () Bool)

(assert (=> bm!630369 (= call!630374 (isEmpty!38857 lt!2474940))))

(declare-fun b!6938256 () Bool)

(assert (=> b!6938256 (= e!4174164 (matchR!9100 (derivativeStep!5452 lt!2474959 (head!13906 lt!2474940)) (tail!12958 lt!2474940)))))

(declare-fun b!6938257 () Bool)

(assert (=> b!6938257 (= e!4174164 (nullable!6778 lt!2474959))))

(declare-fun b!6938258 () Bool)

(assert (=> b!6938258 (= e!4174162 (= (head!13906 lt!2474940) (c!1287333 lt!2474959)))))

(assert (= (and d!2167234 c!1287478) b!6938257))

(assert (= (and d!2167234 (not c!1287478)) b!6938256))

(assert (= (and d!2167234 c!1287479) b!6938251))

(assert (= (and d!2167234 (not c!1287479)) b!6938255))

(assert (= (and b!6938255 c!1287477) b!6938249))

(assert (= (and b!6938255 (not c!1287477)) b!6938246))

(assert (= (and b!6938246 (not res!2830141)) b!6938250))

(assert (= (and b!6938250 res!2830139) b!6938245))

(assert (= (and b!6938245 res!2830140) b!6938252))

(assert (= (and b!6938252 res!2830134) b!6938258))

(assert (= (and b!6938250 (not res!2830136)) b!6938253))

(assert (= (and b!6938253 res!2830135) b!6938247))

(assert (= (and b!6938247 (not res!2830138)) b!6938248))

(assert (= (and b!6938248 (not res!2830137)) b!6938254))

(assert (= (or b!6938251 b!6938245 b!6938247) bm!630369))

(declare-fun m!7643832 () Bool)

(assert (=> b!6938257 m!7643832))

(assert (=> bm!630369 m!7643816))

(declare-fun m!7643834 () Bool)

(assert (=> b!6938258 m!7643834))

(assert (=> b!6938256 m!7643834))

(assert (=> b!6938256 m!7643834))

(declare-fun m!7643836 () Bool)

(assert (=> b!6938256 m!7643836))

(declare-fun m!7643838 () Bool)

(assert (=> b!6938256 m!7643838))

(assert (=> b!6938256 m!7643836))

(assert (=> b!6938256 m!7643838))

(declare-fun m!7643840 () Bool)

(assert (=> b!6938256 m!7643840))

(assert (=> d!2167234 m!7643816))

(assert (=> d!2167234 m!7643216))

(assert (=> b!6938254 m!7643834))

(assert (=> b!6938248 m!7643838))

(assert (=> b!6938248 m!7643838))

(declare-fun m!7643842 () Bool)

(assert (=> b!6938248 m!7643842))

(assert (=> b!6938252 m!7643838))

(assert (=> b!6938252 m!7643838))

(assert (=> b!6938252 m!7643842))

(assert (=> b!6937624 d!2167234))

(declare-fun b!6938259 () Bool)

(declare-fun e!4174166 () Bool)

(declare-fun lt!2475063 () Option!16730)

(assert (=> b!6938259 (= e!4174166 (not (isDefined!13431 lt!2475063)))))

(declare-fun b!6938260 () Bool)

(declare-fun e!4174167 () Bool)

(assert (=> b!6938260 (= e!4174167 (= (++!15000 (_1!37121 (get!23378 lt!2475063)) (_2!37121 (get!23378 lt!2475063))) lt!2474940))))

(declare-fun b!6938261 () Bool)

(declare-fun res!2830142 () Bool)

(assert (=> b!6938261 (=> (not res!2830142) (not e!4174167))))

(assert (=> b!6938261 (= res!2830142 (matchR!9100 r1!6342 (_1!37121 (get!23378 lt!2475063))))))

(declare-fun d!2167236 () Bool)

(assert (=> d!2167236 e!4174166))

(declare-fun res!2830145 () Bool)

(assert (=> d!2167236 (=> res!2830145 e!4174166)))

(assert (=> d!2167236 (= res!2830145 e!4174167)))

(declare-fun res!2830146 () Bool)

(assert (=> d!2167236 (=> (not res!2830146) (not e!4174167))))

(assert (=> d!2167236 (= res!2830146 (isDefined!13431 lt!2475063))))

(declare-fun e!4174165 () Option!16730)

(assert (=> d!2167236 (= lt!2475063 e!4174165)))

(declare-fun c!1287481 () Bool)

(declare-fun e!4174169 () Bool)

(assert (=> d!2167236 (= c!1287481 e!4174169)))

(declare-fun res!2830144 () Bool)

(assert (=> d!2167236 (=> (not res!2830144) (not e!4174169))))

(assert (=> d!2167236 (= res!2830144 (matchR!9100 r1!6342 Nil!66590))))

(assert (=> d!2167236 (validRegex!8667 r1!6342)))

(assert (=> d!2167236 (= (findConcatSeparation!3144 r1!6342 r2!6280 Nil!66590 lt!2474940 lt!2474940) lt!2475063)))

(declare-fun b!6938262 () Bool)

(declare-fun lt!2475064 () Unit!160646)

(declare-fun lt!2475065 () Unit!160646)

(assert (=> b!6938262 (= lt!2475064 lt!2475065)))

(assert (=> b!6938262 (= (++!15000 (++!15000 Nil!66590 (Cons!66590 (h!73038 lt!2474940) Nil!66590)) (t!380457 lt!2474940)) lt!2474940)))

(assert (=> b!6938262 (= lt!2475065 (lemmaMoveElementToOtherListKeepsConcatEq!2856 Nil!66590 (h!73038 lt!2474940) (t!380457 lt!2474940) lt!2474940))))

(declare-fun e!4174168 () Option!16730)

(assert (=> b!6938262 (= e!4174168 (findConcatSeparation!3144 r1!6342 r2!6280 (++!15000 Nil!66590 (Cons!66590 (h!73038 lt!2474940) Nil!66590)) (t!380457 lt!2474940) lt!2474940))))

(declare-fun b!6938263 () Bool)

(declare-fun res!2830143 () Bool)

(assert (=> b!6938263 (=> (not res!2830143) (not e!4174167))))

(assert (=> b!6938263 (= res!2830143 (matchR!9100 r2!6280 (_2!37121 (get!23378 lt!2475063))))))

(declare-fun b!6938264 () Bool)

(assert (=> b!6938264 (= e!4174169 (matchR!9100 r2!6280 lt!2474940))))

(declare-fun b!6938265 () Bool)

(assert (=> b!6938265 (= e!4174168 None!16729)))

(declare-fun b!6938266 () Bool)

(assert (=> b!6938266 (= e!4174165 e!4174168)))

(declare-fun c!1287480 () Bool)

(assert (=> b!6938266 (= c!1287480 ((_ is Nil!66590) lt!2474940))))

(declare-fun b!6938267 () Bool)

(assert (=> b!6938267 (= e!4174165 (Some!16729 (tuple2!67637 Nil!66590 lt!2474940)))))

(assert (= (and d!2167236 res!2830144) b!6938264))

(assert (= (and d!2167236 c!1287481) b!6938267))

(assert (= (and d!2167236 (not c!1287481)) b!6938266))

(assert (= (and b!6938266 c!1287480) b!6938265))

(assert (= (and b!6938266 (not c!1287480)) b!6938262))

(assert (= (and d!2167236 res!2830146) b!6938261))

(assert (= (and b!6938261 res!2830142) b!6938263))

(assert (= (and b!6938263 res!2830143) b!6938260))

(assert (= (and d!2167236 (not res!2830145)) b!6938259))

(declare-fun m!7643844 () Bool)

(assert (=> b!6938262 m!7643844))

(assert (=> b!6938262 m!7643844))

(declare-fun m!7643846 () Bool)

(assert (=> b!6938262 m!7643846))

(declare-fun m!7643848 () Bool)

(assert (=> b!6938262 m!7643848))

(assert (=> b!6938262 m!7643844))

(declare-fun m!7643850 () Bool)

(assert (=> b!6938262 m!7643850))

(declare-fun m!7643852 () Bool)

(assert (=> b!6938260 m!7643852))

(declare-fun m!7643854 () Bool)

(assert (=> b!6938260 m!7643854))

(assert (=> b!6938263 m!7643852))

(declare-fun m!7643856 () Bool)

(assert (=> b!6938263 m!7643856))

(declare-fun m!7643858 () Bool)

(assert (=> b!6938259 m!7643858))

(declare-fun m!7643860 () Bool)

(assert (=> b!6938264 m!7643860))

(assert (=> d!2167236 m!7643858))

(assert (=> d!2167236 m!7643734))

(assert (=> d!2167236 m!7643214))

(assert (=> b!6938261 m!7643852))

(declare-fun m!7643862 () Bool)

(assert (=> b!6938261 m!7643862))

(assert (=> b!6937624 d!2167236))

(declare-fun d!2167238 () Bool)

(assert (=> d!2167238 (= (Exists!3961 lambda!395114) (choose!51683 lambda!395114))))

(declare-fun bs!1853367 () Bool)

(assert (= bs!1853367 d!2167238))

(declare-fun m!7643864 () Bool)

(assert (=> bs!1853367 m!7643864))

(assert (=> b!6937624 d!2167238))

(declare-fun d!2167240 () Bool)

(assert (=> d!2167240 (isDefined!13431 (findConcatSeparation!3144 r1!6342 r2!6280 Nil!66590 lt!2474940 lt!2474940))))

(declare-fun lt!2475068 () Unit!160646)

(declare-fun choose!51687 (Regex!16961 Regex!16961 List!66714 List!66714 List!66714 List!66714 List!66714) Unit!160646)

(assert (=> d!2167240 (= lt!2475068 (choose!51687 r1!6342 r2!6280 (_1!37121 lt!2474938) (_1!37121 lt!2474942) lt!2474940 Nil!66590 lt!2474940))))

(assert (=> d!2167240 (validRegex!8667 r1!6342)))

(assert (=> d!2167240 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!104 r1!6342 r2!6280 (_1!37121 lt!2474938) (_1!37121 lt!2474942) lt!2474940 Nil!66590 lt!2474940) lt!2475068)))

(declare-fun bs!1853393 () Bool)

(assert (= bs!1853393 d!2167240))

(assert (=> bs!1853393 m!7643236))

(assert (=> bs!1853393 m!7643236))

(assert (=> bs!1853393 m!7643238))

(declare-fun m!7643866 () Bool)

(assert (=> bs!1853393 m!7643866))

(assert (=> bs!1853393 m!7643214))

(assert (=> b!6937624 d!2167240))

(declare-fun d!2167242 () Bool)

(assert (=> d!2167242 (= (isDefined!13431 (findConcatSeparation!3144 r1!6342 r2!6280 Nil!66590 lt!2474940 lt!2474940)) (not (isEmpty!38859 (findConcatSeparation!3144 r1!6342 r2!6280 Nil!66590 lt!2474940 lt!2474940))))))

(declare-fun bs!1853395 () Bool)

(assert (= bs!1853395 d!2167242))

(assert (=> bs!1853395 m!7643236))

(declare-fun m!7643868 () Bool)

(assert (=> bs!1853395 m!7643868))

(assert (=> b!6937624 d!2167242))

(declare-fun bs!1853397 () Bool)

(declare-fun b!6938278 () Bool)

(assert (= bs!1853397 (and b!6938278 b!6938097)))

(declare-fun lambda!395168 () Int)

(assert (=> bs!1853397 (= (and (= s!14361 (_2!37121 lt!2474938)) (= (reg!17290 lt!2474946) (reg!17290 lt!2474950)) (= lt!2474946 lt!2474950)) (= lambda!395168 lambda!395153))))

(declare-fun bs!1853398 () Bool)

(assert (= bs!1853398 (and b!6938278 b!6937619)))

(assert (=> bs!1853398 (not (= lambda!395168 lambda!395111))))

(declare-fun bs!1853399 () Bool)

(assert (= bs!1853399 (and b!6938278 d!2167134)))

(assert (=> bs!1853399 (not (= lambda!395168 lambda!395139))))

(declare-fun bs!1853400 () Bool)

(assert (= bs!1853400 (and b!6938278 d!2167124)))

(assert (=> bs!1853400 (not (= lambda!395168 lambda!395128))))

(declare-fun bs!1853401 () Bool)

(assert (= bs!1853401 (and b!6938278 b!6938089)))

(assert (=> bs!1853401 (not (= lambda!395168 lambda!395154))))

(declare-fun bs!1853402 () Bool)

(assert (= bs!1853402 (and b!6938278 b!6937624)))

(assert (=> bs!1853402 (not (= lambda!395168 lambda!395114))))

(declare-fun bs!1853403 () Bool)

(assert (= bs!1853403 (and b!6938278 b!6937621)))

(assert (=> bs!1853403 (not (= lambda!395168 lambda!395109))))

(declare-fun bs!1853404 () Bool)

(assert (= bs!1853404 (and b!6938278 d!2167230)))

(assert (=> bs!1853404 (not (= lambda!395168 lambda!395165))))

(assert (=> bs!1853399 (not (= lambda!395168 lambda!395141))))

(declare-fun bs!1853405 () Bool)

(assert (= bs!1853405 (and b!6938278 d!2167214)))

(assert (=> bs!1853405 (not (= lambda!395168 lambda!395159))))

(assert (=> bs!1853404 (not (= lambda!395168 lambda!395164))))

(declare-fun bs!1853406 () Bool)

(assert (= bs!1853406 (and b!6938278 b!6938214)))

(assert (=> bs!1853406 (not (= lambda!395168 lambda!395162))))

(assert (=> bs!1853403 (not (= lambda!395168 lambda!395110))))

(assert (=> bs!1853398 (not (= lambda!395168 lambda!395112))))

(assert (=> bs!1853402 (not (= lambda!395168 lambda!395113))))

(declare-fun bs!1853407 () Bool)

(assert (= bs!1853407 (and b!6938278 b!6938222)))

(assert (=> bs!1853407 (= (and (= s!14361 lt!2474940) (= (reg!17290 lt!2474946) (reg!17290 lt!2474959)) (= lt!2474946 lt!2474959)) (= lambda!395168 lambda!395160))))

(assert (=> b!6938278 true))

(assert (=> b!6938278 true))

(declare-fun bs!1853408 () Bool)

(declare-fun b!6938270 () Bool)

(assert (= bs!1853408 (and b!6938270 b!6938097)))

(declare-fun lambda!395169 () Int)

(assert (=> bs!1853408 (not (= lambda!395169 lambda!395153))))

(declare-fun bs!1853409 () Bool)

(assert (= bs!1853409 (and b!6938270 b!6937619)))

(assert (=> bs!1853409 (not (= lambda!395169 lambda!395111))))

(declare-fun bs!1853410 () Bool)

(assert (= bs!1853410 (and b!6938270 d!2167134)))

(assert (=> bs!1853410 (not (= lambda!395169 lambda!395139))))

(declare-fun bs!1853411 () Bool)

(assert (= bs!1853411 (and b!6938270 d!2167124)))

(assert (=> bs!1853411 (not (= lambda!395169 lambda!395128))))

(declare-fun bs!1853412 () Bool)

(assert (= bs!1853412 (and b!6938270 b!6938089)))

(assert (=> bs!1853412 (= (and (= s!14361 (_2!37121 lt!2474938)) (= (regOne!34434 lt!2474946) (regOne!34434 lt!2474950)) (= (regTwo!34434 lt!2474946) (regTwo!34434 lt!2474950))) (= lambda!395169 lambda!395154))))

(declare-fun bs!1853413 () Bool)

(assert (= bs!1853413 (and b!6938270 b!6937624)))

(assert (=> bs!1853413 (= (and (= s!14361 lt!2474940) (= (regOne!34434 lt!2474946) r1!6342) (= (regTwo!34434 lt!2474946) r2!6280)) (= lambda!395169 lambda!395114))))

(declare-fun bs!1853414 () Bool)

(assert (= bs!1853414 (and b!6938270 d!2167230)))

(assert (=> bs!1853414 (= (and (= s!14361 lt!2474940) (= (regOne!34434 lt!2474946) r1!6342) (= (regTwo!34434 lt!2474946) r2!6280)) (= lambda!395169 lambda!395165))))

(assert (=> bs!1853410 (= (and (= s!14361 (_2!37121 lt!2474938)) (= (regOne!34434 lt!2474946) r2!6280) (= (regTwo!34434 lt!2474946) r3!135)) (= lambda!395169 lambda!395141))))

(declare-fun bs!1853415 () Bool)

(assert (= bs!1853415 (and b!6938270 d!2167214)))

(assert (=> bs!1853415 (not (= lambda!395169 lambda!395159))))

(assert (=> bs!1853414 (not (= lambda!395169 lambda!395164))))

(declare-fun bs!1853416 () Bool)

(assert (= bs!1853416 (and b!6938270 b!6938214)))

(assert (=> bs!1853416 (= (and (= s!14361 lt!2474940) (= (regOne!34434 lt!2474946) (regOne!34434 lt!2474959)) (= (regTwo!34434 lt!2474946) (regTwo!34434 lt!2474959))) (= lambda!395169 lambda!395162))))

(declare-fun bs!1853417 () Bool)

(assert (= bs!1853417 (and b!6938270 b!6937621)))

(assert (=> bs!1853417 (= (and (= (regOne!34434 lt!2474946) r1!6342) (= (regTwo!34434 lt!2474946) lt!2474950)) (= lambda!395169 lambda!395110))))

(assert (=> bs!1853409 (= (and (= s!14361 (_2!37121 lt!2474938)) (= (regOne!34434 lt!2474946) r2!6280) (= (regTwo!34434 lt!2474946) r3!135)) (= lambda!395169 lambda!395112))))

(assert (=> bs!1853417 (not (= lambda!395169 lambda!395109))))

(declare-fun bs!1853418 () Bool)

(assert (= bs!1853418 (and b!6938270 b!6938278)))

(assert (=> bs!1853418 (not (= lambda!395169 lambda!395168))))

(assert (=> bs!1853413 (not (= lambda!395169 lambda!395113))))

(declare-fun bs!1853419 () Bool)

(assert (= bs!1853419 (and b!6938270 b!6938222)))

(assert (=> bs!1853419 (not (= lambda!395169 lambda!395160))))

(assert (=> b!6938270 true))

(assert (=> b!6938270 true))

(declare-fun b!6938268 () Bool)

(declare-fun c!1287484 () Bool)

(assert (=> b!6938268 (= c!1287484 ((_ is Union!16961) lt!2474946))))

(declare-fun e!4174176 () Bool)

(declare-fun e!4174175 () Bool)

(assert (=> b!6938268 (= e!4174176 e!4174175)))

(declare-fun b!6938269 () Bool)

(declare-fun e!4174173 () Bool)

(assert (=> b!6938269 (= e!4174175 e!4174173)))

(declare-fun c!1287482 () Bool)

(assert (=> b!6938269 (= c!1287482 ((_ is Star!16961) lt!2474946))))

(declare-fun call!630376 () Bool)

(assert (=> b!6938270 (= e!4174173 call!630376)))

(declare-fun b!6938271 () Bool)

(declare-fun e!4174174 () Bool)

(assert (=> b!6938271 (= e!4174174 (matchRSpec!4018 (regTwo!34435 lt!2474946) s!14361))))

(declare-fun b!6938272 () Bool)

(assert (=> b!6938272 (= e!4174175 e!4174174)))

(declare-fun res!2830149 () Bool)

(assert (=> b!6938272 (= res!2830149 (matchRSpec!4018 (regOne!34435 lt!2474946) s!14361))))

(assert (=> b!6938272 (=> res!2830149 e!4174174)))

(declare-fun b!6938273 () Bool)

(assert (=> b!6938273 (= e!4174176 (= s!14361 (Cons!66590 (c!1287333 lt!2474946) Nil!66590)))))

(declare-fun b!6938274 () Bool)

(declare-fun res!2830148 () Bool)

(declare-fun e!4174171 () Bool)

(assert (=> b!6938274 (=> res!2830148 e!4174171)))

(declare-fun call!630375 () Bool)

(assert (=> b!6938274 (= res!2830148 call!630375)))

(assert (=> b!6938274 (= e!4174173 e!4174171)))

(declare-fun b!6938275 () Bool)

(declare-fun e!4174170 () Bool)

(declare-fun e!4174172 () Bool)

(assert (=> b!6938275 (= e!4174170 e!4174172)))

(declare-fun res!2830147 () Bool)

(assert (=> b!6938275 (= res!2830147 (not ((_ is EmptyLang!16961) lt!2474946)))))

(assert (=> b!6938275 (=> (not res!2830147) (not e!4174172))))

(declare-fun b!6938276 () Bool)

(assert (=> b!6938276 (= e!4174170 call!630375)))

(declare-fun d!2167244 () Bool)

(declare-fun c!1287483 () Bool)

(assert (=> d!2167244 (= c!1287483 ((_ is EmptyExpr!16961) lt!2474946))))

(assert (=> d!2167244 (= (matchRSpec!4018 lt!2474946 s!14361) e!4174170)))

(declare-fun b!6938277 () Bool)

(declare-fun c!1287485 () Bool)

(assert (=> b!6938277 (= c!1287485 ((_ is ElementMatch!16961) lt!2474946))))

(assert (=> b!6938277 (= e!4174172 e!4174176)))

(declare-fun bm!630370 () Bool)

(assert (=> bm!630370 (= call!630375 (isEmpty!38857 s!14361))))

(assert (=> b!6938278 (= e!4174171 call!630376)))

(declare-fun bm!630371 () Bool)

(assert (=> bm!630371 (= call!630376 (Exists!3961 (ite c!1287482 lambda!395168 lambda!395169)))))

(assert (= (and d!2167244 c!1287483) b!6938276))

(assert (= (and d!2167244 (not c!1287483)) b!6938275))

(assert (= (and b!6938275 res!2830147) b!6938277))

(assert (= (and b!6938277 c!1287485) b!6938273))

(assert (= (and b!6938277 (not c!1287485)) b!6938268))

(assert (= (and b!6938268 c!1287484) b!6938272))

(assert (= (and b!6938268 (not c!1287484)) b!6938269))

(assert (= (and b!6938272 (not res!2830149)) b!6938271))

(assert (= (and b!6938269 c!1287482) b!6938274))

(assert (= (and b!6938269 (not c!1287482)) b!6938270))

(assert (= (and b!6938274 (not res!2830148)) b!6938278))

(assert (= (or b!6938278 b!6938270) bm!630371))

(assert (= (or b!6938276 b!6938274) bm!630370))

(declare-fun m!7643878 () Bool)

(assert (=> b!6938271 m!7643878))

(declare-fun m!7643880 () Bool)

(assert (=> b!6938272 m!7643880))

(declare-fun m!7643882 () Bool)

(assert (=> bm!630370 m!7643882))

(declare-fun m!7643884 () Bool)

(assert (=> bm!630371 m!7643884))

(assert (=> b!6937604 d!2167244))

(declare-fun b!6938354 () Bool)

(declare-fun res!2830156 () Bool)

(declare-fun e!4174201 () Bool)

(assert (=> b!6938354 (=> (not res!2830156) (not e!4174201))))

(declare-fun call!630377 () Bool)

(assert (=> b!6938354 (= res!2830156 (not call!630377))))

(declare-fun b!6938355 () Bool)

(declare-fun res!2830157 () Bool)

(declare-fun e!4174202 () Bool)

(assert (=> b!6938355 (=> res!2830157 e!4174202)))

(assert (=> b!6938355 (= res!2830157 (not ((_ is ElementMatch!16961) lt!2474941)))))

(declare-fun e!4174199 () Bool)

(assert (=> b!6938355 (= e!4174199 e!4174202)))

(declare-fun d!2167248 () Bool)

(declare-fun e!4174198 () Bool)

(assert (=> d!2167248 e!4174198))

(declare-fun c!1287488 () Bool)

(assert (=> d!2167248 (= c!1287488 ((_ is EmptyExpr!16961) lt!2474941))))

(declare-fun lt!2475070 () Bool)

(declare-fun e!4174203 () Bool)

(assert (=> d!2167248 (= lt!2475070 e!4174203)))

(declare-fun c!1287487 () Bool)

(assert (=> d!2167248 (= c!1287487 (isEmpty!38857 s!14361))))

(assert (=> d!2167248 (validRegex!8667 lt!2474941)))

(assert (=> d!2167248 (= (matchR!9100 lt!2474941 s!14361) lt!2475070)))

(declare-fun b!6938356 () Bool)

(declare-fun e!4174200 () Bool)

(declare-fun e!4174197 () Bool)

(assert (=> b!6938356 (= e!4174200 e!4174197)))

(declare-fun res!2830154 () Bool)

(assert (=> b!6938356 (=> res!2830154 e!4174197)))

(assert (=> b!6938356 (= res!2830154 call!630377)))

(declare-fun b!6938357 () Bool)

(declare-fun res!2830153 () Bool)

(assert (=> b!6938357 (=> res!2830153 e!4174197)))

(assert (=> b!6938357 (= res!2830153 (not (isEmpty!38857 (tail!12958 s!14361))))))

(declare-fun b!6938358 () Bool)

(assert (=> b!6938358 (= e!4174199 (not lt!2475070))))

(declare-fun b!6938359 () Bool)

(declare-fun res!2830152 () Bool)

(assert (=> b!6938359 (=> res!2830152 e!4174202)))

(assert (=> b!6938359 (= res!2830152 e!4174201)))

(declare-fun res!2830155 () Bool)

(assert (=> b!6938359 (=> (not res!2830155) (not e!4174201))))

(assert (=> b!6938359 (= res!2830155 lt!2475070)))

(declare-fun b!6938360 () Bool)

(assert (=> b!6938360 (= e!4174198 (= lt!2475070 call!630377))))

(declare-fun b!6938361 () Bool)

(declare-fun res!2830150 () Bool)

(assert (=> b!6938361 (=> (not res!2830150) (not e!4174201))))

(assert (=> b!6938361 (= res!2830150 (isEmpty!38857 (tail!12958 s!14361)))))

(declare-fun b!6938362 () Bool)

(assert (=> b!6938362 (= e!4174202 e!4174200)))

(declare-fun res!2830151 () Bool)

(assert (=> b!6938362 (=> (not res!2830151) (not e!4174200))))

(assert (=> b!6938362 (= res!2830151 (not lt!2475070))))

(declare-fun b!6938363 () Bool)

(assert (=> b!6938363 (= e!4174197 (not (= (head!13906 s!14361) (c!1287333 lt!2474941))))))

(declare-fun b!6938364 () Bool)

(assert (=> b!6938364 (= e!4174198 e!4174199)))

(declare-fun c!1287486 () Bool)

(assert (=> b!6938364 (= c!1287486 ((_ is EmptyLang!16961) lt!2474941))))

(declare-fun bm!630372 () Bool)

(assert (=> bm!630372 (= call!630377 (isEmpty!38857 s!14361))))

(declare-fun b!6938365 () Bool)

(assert (=> b!6938365 (= e!4174203 (matchR!9100 (derivativeStep!5452 lt!2474941 (head!13906 s!14361)) (tail!12958 s!14361)))))

(declare-fun b!6938366 () Bool)

(assert (=> b!6938366 (= e!4174203 (nullable!6778 lt!2474941))))

(declare-fun b!6938367 () Bool)

(assert (=> b!6938367 (= e!4174201 (= (head!13906 s!14361) (c!1287333 lt!2474941)))))

(assert (= (and d!2167248 c!1287487) b!6938366))

(assert (= (and d!2167248 (not c!1287487)) b!6938365))

(assert (= (and d!2167248 c!1287488) b!6938360))

(assert (= (and d!2167248 (not c!1287488)) b!6938364))

(assert (= (and b!6938364 c!1287486) b!6938358))

(assert (= (and b!6938364 (not c!1287486)) b!6938355))

(assert (= (and b!6938355 (not res!2830157)) b!6938359))

(assert (= (and b!6938359 res!2830155) b!6938354))

(assert (= (and b!6938354 res!2830156) b!6938361))

(assert (= (and b!6938361 res!2830150) b!6938367))

(assert (= (and b!6938359 (not res!2830152)) b!6938362))

(assert (= (and b!6938362 res!2830151) b!6938356))

(assert (= (and b!6938356 (not res!2830154)) b!6938357))

(assert (= (and b!6938357 (not res!2830153)) b!6938363))

(assert (= (or b!6938360 b!6938354 b!6938356) bm!630372))

(declare-fun m!7643886 () Bool)

(assert (=> b!6938366 m!7643886))

(assert (=> bm!630372 m!7643882))

(declare-fun m!7643888 () Bool)

(assert (=> b!6938367 m!7643888))

(assert (=> b!6938365 m!7643888))

(assert (=> b!6938365 m!7643888))

(declare-fun m!7643890 () Bool)

(assert (=> b!6938365 m!7643890))

(declare-fun m!7643892 () Bool)

(assert (=> b!6938365 m!7643892))

(assert (=> b!6938365 m!7643890))

(assert (=> b!6938365 m!7643892))

(declare-fun m!7643894 () Bool)

(assert (=> b!6938365 m!7643894))

(assert (=> d!2167248 m!7643882))

(declare-fun m!7643896 () Bool)

(assert (=> d!2167248 m!7643896))

(assert (=> b!6938363 m!7643888))

(assert (=> b!6938357 m!7643892))

(assert (=> b!6938357 m!7643892))

(declare-fun m!7643898 () Bool)

(assert (=> b!6938357 m!7643898))

(assert (=> b!6938361 m!7643892))

(assert (=> b!6938361 m!7643892))

(assert (=> b!6938361 m!7643898))

(assert (=> b!6937604 d!2167248))

(declare-fun d!2167250 () Bool)

(assert (=> d!2167250 (= (matchR!9100 lt!2474941 s!14361) (matchRSpec!4018 lt!2474941 s!14361))))

(declare-fun lt!2475071 () Unit!160646)

(assert (=> d!2167250 (= lt!2475071 (choose!51680 lt!2474941 s!14361))))

(assert (=> d!2167250 (validRegex!8667 lt!2474941)))

(assert (=> d!2167250 (= (mainMatchTheorem!4018 lt!2474941 s!14361) lt!2475071)))

(declare-fun bs!1853420 () Bool)

(assert (= bs!1853420 d!2167250))

(assert (=> bs!1853420 m!7643220))

(assert (=> bs!1853420 m!7643224))

(declare-fun m!7643900 () Bool)

(assert (=> bs!1853420 m!7643900))

(assert (=> bs!1853420 m!7643896))

(assert (=> b!6937604 d!2167250))

(declare-fun b!6938368 () Bool)

(declare-fun res!2830164 () Bool)

(declare-fun e!4174208 () Bool)

(assert (=> b!6938368 (=> (not res!2830164) (not e!4174208))))

(declare-fun call!630378 () Bool)

(assert (=> b!6938368 (= res!2830164 (not call!630378))))

(declare-fun b!6938369 () Bool)

(declare-fun res!2830165 () Bool)

(declare-fun e!4174209 () Bool)

(assert (=> b!6938369 (=> res!2830165 e!4174209)))

(assert (=> b!6938369 (= res!2830165 (not ((_ is ElementMatch!16961) lt!2474946)))))

(declare-fun e!4174206 () Bool)

(assert (=> b!6938369 (= e!4174206 e!4174209)))

(declare-fun d!2167252 () Bool)

(declare-fun e!4174205 () Bool)

(assert (=> d!2167252 e!4174205))

(declare-fun c!1287491 () Bool)

(assert (=> d!2167252 (= c!1287491 ((_ is EmptyExpr!16961) lt!2474946))))

(declare-fun lt!2475072 () Bool)

(declare-fun e!4174210 () Bool)

(assert (=> d!2167252 (= lt!2475072 e!4174210)))

(declare-fun c!1287490 () Bool)

(assert (=> d!2167252 (= c!1287490 (isEmpty!38857 s!14361))))

(assert (=> d!2167252 (validRegex!8667 lt!2474946)))

(assert (=> d!2167252 (= (matchR!9100 lt!2474946 s!14361) lt!2475072)))

(declare-fun b!6938370 () Bool)

(declare-fun e!4174207 () Bool)

(declare-fun e!4174204 () Bool)

(assert (=> b!6938370 (= e!4174207 e!4174204)))

(declare-fun res!2830162 () Bool)

(assert (=> b!6938370 (=> res!2830162 e!4174204)))

(assert (=> b!6938370 (= res!2830162 call!630378)))

(declare-fun b!6938371 () Bool)

(declare-fun res!2830161 () Bool)

(assert (=> b!6938371 (=> res!2830161 e!4174204)))

(assert (=> b!6938371 (= res!2830161 (not (isEmpty!38857 (tail!12958 s!14361))))))

(declare-fun b!6938372 () Bool)

(assert (=> b!6938372 (= e!4174206 (not lt!2475072))))

(declare-fun b!6938373 () Bool)

(declare-fun res!2830160 () Bool)

(assert (=> b!6938373 (=> res!2830160 e!4174209)))

(assert (=> b!6938373 (= res!2830160 e!4174208)))

(declare-fun res!2830163 () Bool)

(assert (=> b!6938373 (=> (not res!2830163) (not e!4174208))))

(assert (=> b!6938373 (= res!2830163 lt!2475072)))

(declare-fun b!6938374 () Bool)

(assert (=> b!6938374 (= e!4174205 (= lt!2475072 call!630378))))

(declare-fun b!6938375 () Bool)

(declare-fun res!2830158 () Bool)

(assert (=> b!6938375 (=> (not res!2830158) (not e!4174208))))

(assert (=> b!6938375 (= res!2830158 (isEmpty!38857 (tail!12958 s!14361)))))

(declare-fun b!6938376 () Bool)

(assert (=> b!6938376 (= e!4174209 e!4174207)))

(declare-fun res!2830159 () Bool)

(assert (=> b!6938376 (=> (not res!2830159) (not e!4174207))))

(assert (=> b!6938376 (= res!2830159 (not lt!2475072))))

(declare-fun b!6938377 () Bool)

(assert (=> b!6938377 (= e!4174204 (not (= (head!13906 s!14361) (c!1287333 lt!2474946))))))

(declare-fun b!6938378 () Bool)

(assert (=> b!6938378 (= e!4174205 e!4174206)))

(declare-fun c!1287489 () Bool)

(assert (=> b!6938378 (= c!1287489 ((_ is EmptyLang!16961) lt!2474946))))

(declare-fun bm!630373 () Bool)

(assert (=> bm!630373 (= call!630378 (isEmpty!38857 s!14361))))

(declare-fun b!6938379 () Bool)

(assert (=> b!6938379 (= e!4174210 (matchR!9100 (derivativeStep!5452 lt!2474946 (head!13906 s!14361)) (tail!12958 s!14361)))))

(declare-fun b!6938380 () Bool)

(assert (=> b!6938380 (= e!4174210 (nullable!6778 lt!2474946))))

(declare-fun b!6938381 () Bool)

(assert (=> b!6938381 (= e!4174208 (= (head!13906 s!14361) (c!1287333 lt!2474946)))))

(assert (= (and d!2167252 c!1287490) b!6938380))

(assert (= (and d!2167252 (not c!1287490)) b!6938379))

(assert (= (and d!2167252 c!1287491) b!6938374))

(assert (= (and d!2167252 (not c!1287491)) b!6938378))

(assert (= (and b!6938378 c!1287489) b!6938372))

(assert (= (and b!6938378 (not c!1287489)) b!6938369))

(assert (= (and b!6938369 (not res!2830165)) b!6938373))

(assert (= (and b!6938373 res!2830163) b!6938368))

(assert (= (and b!6938368 res!2830164) b!6938375))

(assert (= (and b!6938375 res!2830158) b!6938381))

(assert (= (and b!6938373 (not res!2830160)) b!6938376))

(assert (= (and b!6938376 res!2830159) b!6938370))

(assert (= (and b!6938370 (not res!2830162)) b!6938371))

(assert (= (and b!6938371 (not res!2830161)) b!6938377))

(assert (= (or b!6938374 b!6938368 b!6938370) bm!630373))

(declare-fun m!7643902 () Bool)

(assert (=> b!6938380 m!7643902))

(assert (=> bm!630373 m!7643882))

(assert (=> b!6938381 m!7643888))

(assert (=> b!6938379 m!7643888))

(assert (=> b!6938379 m!7643888))

(declare-fun m!7643904 () Bool)

(assert (=> b!6938379 m!7643904))

(assert (=> b!6938379 m!7643892))

(assert (=> b!6938379 m!7643904))

(assert (=> b!6938379 m!7643892))

(declare-fun m!7643906 () Bool)

(assert (=> b!6938379 m!7643906))

(assert (=> d!2167252 m!7643882))

(declare-fun m!7643908 () Bool)

(assert (=> d!2167252 m!7643908))

(assert (=> b!6938377 m!7643888))

(assert (=> b!6938371 m!7643892))

(assert (=> b!6938371 m!7643892))

(assert (=> b!6938371 m!7643898))

(assert (=> b!6938375 m!7643892))

(assert (=> b!6938375 m!7643892))

(assert (=> b!6938375 m!7643898))

(assert (=> b!6937604 d!2167252))

(declare-fun bs!1853421 () Bool)

(declare-fun b!6938392 () Bool)

(assert (= bs!1853421 (and b!6938392 b!6938097)))

(declare-fun lambda!395170 () Int)

(assert (=> bs!1853421 (= (and (= s!14361 (_2!37121 lt!2474938)) (= (reg!17290 lt!2474941) (reg!17290 lt!2474950)) (= lt!2474941 lt!2474950)) (= lambda!395170 lambda!395153))))

(declare-fun bs!1853422 () Bool)

(assert (= bs!1853422 (and b!6938392 b!6937619)))

(assert (=> bs!1853422 (not (= lambda!395170 lambda!395111))))

(declare-fun bs!1853423 () Bool)

(assert (= bs!1853423 (and b!6938392 d!2167134)))

(assert (=> bs!1853423 (not (= lambda!395170 lambda!395139))))

(declare-fun bs!1853424 () Bool)

(assert (= bs!1853424 (and b!6938392 d!2167124)))

(assert (=> bs!1853424 (not (= lambda!395170 lambda!395128))))

(declare-fun bs!1853425 () Bool)

(assert (= bs!1853425 (and b!6938392 b!6938089)))

(assert (=> bs!1853425 (not (= lambda!395170 lambda!395154))))

(declare-fun bs!1853426 () Bool)

(assert (= bs!1853426 (and b!6938392 b!6938270)))

(assert (=> bs!1853426 (not (= lambda!395170 lambda!395169))))

(declare-fun bs!1853427 () Bool)

(assert (= bs!1853427 (and b!6938392 b!6937624)))

(assert (=> bs!1853427 (not (= lambda!395170 lambda!395114))))

(declare-fun bs!1853428 () Bool)

(assert (= bs!1853428 (and b!6938392 d!2167230)))

(assert (=> bs!1853428 (not (= lambda!395170 lambda!395165))))

(assert (=> bs!1853423 (not (= lambda!395170 lambda!395141))))

(declare-fun bs!1853429 () Bool)

(assert (= bs!1853429 (and b!6938392 d!2167214)))

(assert (=> bs!1853429 (not (= lambda!395170 lambda!395159))))

(assert (=> bs!1853428 (not (= lambda!395170 lambda!395164))))

(declare-fun bs!1853430 () Bool)

(assert (= bs!1853430 (and b!6938392 b!6938214)))

(assert (=> bs!1853430 (not (= lambda!395170 lambda!395162))))

(declare-fun bs!1853431 () Bool)

(assert (= bs!1853431 (and b!6938392 b!6937621)))

(assert (=> bs!1853431 (not (= lambda!395170 lambda!395110))))

(assert (=> bs!1853422 (not (= lambda!395170 lambda!395112))))

(assert (=> bs!1853431 (not (= lambda!395170 lambda!395109))))

(declare-fun bs!1853432 () Bool)

(assert (= bs!1853432 (and b!6938392 b!6938278)))

(assert (=> bs!1853432 (= (and (= (reg!17290 lt!2474941) (reg!17290 lt!2474946)) (= lt!2474941 lt!2474946)) (= lambda!395170 lambda!395168))))

(assert (=> bs!1853427 (not (= lambda!395170 lambda!395113))))

(declare-fun bs!1853433 () Bool)

(assert (= bs!1853433 (and b!6938392 b!6938222)))

(assert (=> bs!1853433 (= (and (= s!14361 lt!2474940) (= (reg!17290 lt!2474941) (reg!17290 lt!2474959)) (= lt!2474941 lt!2474959)) (= lambda!395170 lambda!395160))))

(assert (=> b!6938392 true))

(assert (=> b!6938392 true))

(declare-fun bs!1853434 () Bool)

(declare-fun b!6938384 () Bool)

(assert (= bs!1853434 (and b!6938384 b!6938097)))

(declare-fun lambda!395171 () Int)

(assert (=> bs!1853434 (not (= lambda!395171 lambda!395153))))

(declare-fun bs!1853435 () Bool)

(assert (= bs!1853435 (and b!6938384 b!6937619)))

(assert (=> bs!1853435 (not (= lambda!395171 lambda!395111))))

(declare-fun bs!1853436 () Bool)

(assert (= bs!1853436 (and b!6938384 d!2167134)))

(assert (=> bs!1853436 (not (= lambda!395171 lambda!395139))))

(declare-fun bs!1853437 () Bool)

(assert (= bs!1853437 (and b!6938384 d!2167124)))

(assert (=> bs!1853437 (not (= lambda!395171 lambda!395128))))

(declare-fun bs!1853438 () Bool)

(assert (= bs!1853438 (and b!6938384 b!6938089)))

(assert (=> bs!1853438 (= (and (= s!14361 (_2!37121 lt!2474938)) (= (regOne!34434 lt!2474941) (regOne!34434 lt!2474950)) (= (regTwo!34434 lt!2474941) (regTwo!34434 lt!2474950))) (= lambda!395171 lambda!395154))))

(declare-fun bs!1853439 () Bool)

(assert (= bs!1853439 (and b!6938384 b!6938270)))

(assert (=> bs!1853439 (= (and (= (regOne!34434 lt!2474941) (regOne!34434 lt!2474946)) (= (regTwo!34434 lt!2474941) (regTwo!34434 lt!2474946))) (= lambda!395171 lambda!395169))))

(declare-fun bs!1853440 () Bool)

(assert (= bs!1853440 (and b!6938384 b!6937624)))

(assert (=> bs!1853440 (= (and (= s!14361 lt!2474940) (= (regOne!34434 lt!2474941) r1!6342) (= (regTwo!34434 lt!2474941) r2!6280)) (= lambda!395171 lambda!395114))))

(declare-fun bs!1853441 () Bool)

(assert (= bs!1853441 (and b!6938384 d!2167230)))

(assert (=> bs!1853441 (= (and (= s!14361 lt!2474940) (= (regOne!34434 lt!2474941) r1!6342) (= (regTwo!34434 lt!2474941) r2!6280)) (= lambda!395171 lambda!395165))))

(declare-fun bs!1853442 () Bool)

(assert (= bs!1853442 (and b!6938384 b!6938392)))

(assert (=> bs!1853442 (not (= lambda!395171 lambda!395170))))

(assert (=> bs!1853436 (= (and (= s!14361 (_2!37121 lt!2474938)) (= (regOne!34434 lt!2474941) r2!6280) (= (regTwo!34434 lt!2474941) r3!135)) (= lambda!395171 lambda!395141))))

(declare-fun bs!1853443 () Bool)

(assert (= bs!1853443 (and b!6938384 d!2167214)))

(assert (=> bs!1853443 (not (= lambda!395171 lambda!395159))))

(assert (=> bs!1853441 (not (= lambda!395171 lambda!395164))))

(declare-fun bs!1853444 () Bool)

(assert (= bs!1853444 (and b!6938384 b!6938214)))

(assert (=> bs!1853444 (= (and (= s!14361 lt!2474940) (= (regOne!34434 lt!2474941) (regOne!34434 lt!2474959)) (= (regTwo!34434 lt!2474941) (regTwo!34434 lt!2474959))) (= lambda!395171 lambda!395162))))

(declare-fun bs!1853445 () Bool)

(assert (= bs!1853445 (and b!6938384 b!6937621)))

(assert (=> bs!1853445 (= (and (= (regOne!34434 lt!2474941) r1!6342) (= (regTwo!34434 lt!2474941) lt!2474950)) (= lambda!395171 lambda!395110))))

(assert (=> bs!1853435 (= (and (= s!14361 (_2!37121 lt!2474938)) (= (regOne!34434 lt!2474941) r2!6280) (= (regTwo!34434 lt!2474941) r3!135)) (= lambda!395171 lambda!395112))))

(assert (=> bs!1853445 (not (= lambda!395171 lambda!395109))))

(declare-fun bs!1853446 () Bool)

(assert (= bs!1853446 (and b!6938384 b!6938278)))

(assert (=> bs!1853446 (not (= lambda!395171 lambda!395168))))

(assert (=> bs!1853440 (not (= lambda!395171 lambda!395113))))

(declare-fun bs!1853447 () Bool)

(assert (= bs!1853447 (and b!6938384 b!6938222)))

(assert (=> bs!1853447 (not (= lambda!395171 lambda!395160))))

(assert (=> b!6938384 true))

(assert (=> b!6938384 true))

(declare-fun b!6938382 () Bool)

(declare-fun c!1287494 () Bool)

(assert (=> b!6938382 (= c!1287494 ((_ is Union!16961) lt!2474941))))

(declare-fun e!4174217 () Bool)

(declare-fun e!4174216 () Bool)

(assert (=> b!6938382 (= e!4174217 e!4174216)))

(declare-fun b!6938383 () Bool)

(declare-fun e!4174214 () Bool)

(assert (=> b!6938383 (= e!4174216 e!4174214)))

(declare-fun c!1287492 () Bool)

(assert (=> b!6938383 (= c!1287492 ((_ is Star!16961) lt!2474941))))

(declare-fun call!630380 () Bool)

(assert (=> b!6938384 (= e!4174214 call!630380)))

(declare-fun b!6938385 () Bool)

(declare-fun e!4174215 () Bool)

(assert (=> b!6938385 (= e!4174215 (matchRSpec!4018 (regTwo!34435 lt!2474941) s!14361))))

(declare-fun b!6938386 () Bool)

(assert (=> b!6938386 (= e!4174216 e!4174215)))

(declare-fun res!2830168 () Bool)

(assert (=> b!6938386 (= res!2830168 (matchRSpec!4018 (regOne!34435 lt!2474941) s!14361))))

(assert (=> b!6938386 (=> res!2830168 e!4174215)))

(declare-fun b!6938387 () Bool)

(assert (=> b!6938387 (= e!4174217 (= s!14361 (Cons!66590 (c!1287333 lt!2474941) Nil!66590)))))

(declare-fun b!6938388 () Bool)

(declare-fun res!2830167 () Bool)

(declare-fun e!4174212 () Bool)

(assert (=> b!6938388 (=> res!2830167 e!4174212)))

(declare-fun call!630379 () Bool)

(assert (=> b!6938388 (= res!2830167 call!630379)))

(assert (=> b!6938388 (= e!4174214 e!4174212)))

(declare-fun b!6938389 () Bool)

(declare-fun e!4174211 () Bool)

(declare-fun e!4174213 () Bool)

(assert (=> b!6938389 (= e!4174211 e!4174213)))

(declare-fun res!2830166 () Bool)

(assert (=> b!6938389 (= res!2830166 (not ((_ is EmptyLang!16961) lt!2474941)))))

(assert (=> b!6938389 (=> (not res!2830166) (not e!4174213))))

(declare-fun b!6938390 () Bool)

(assert (=> b!6938390 (= e!4174211 call!630379)))

(declare-fun d!2167254 () Bool)

(declare-fun c!1287493 () Bool)

(assert (=> d!2167254 (= c!1287493 ((_ is EmptyExpr!16961) lt!2474941))))

(assert (=> d!2167254 (= (matchRSpec!4018 lt!2474941 s!14361) e!4174211)))

(declare-fun b!6938391 () Bool)

(declare-fun c!1287495 () Bool)

(assert (=> b!6938391 (= c!1287495 ((_ is ElementMatch!16961) lt!2474941))))

(assert (=> b!6938391 (= e!4174213 e!4174217)))

(declare-fun bm!630374 () Bool)

(assert (=> bm!630374 (= call!630379 (isEmpty!38857 s!14361))))

(assert (=> b!6938392 (= e!4174212 call!630380)))

(declare-fun bm!630375 () Bool)

(assert (=> bm!630375 (= call!630380 (Exists!3961 (ite c!1287492 lambda!395170 lambda!395171)))))

(assert (= (and d!2167254 c!1287493) b!6938390))

(assert (= (and d!2167254 (not c!1287493)) b!6938389))

(assert (= (and b!6938389 res!2830166) b!6938391))

(assert (= (and b!6938391 c!1287495) b!6938387))

(assert (= (and b!6938391 (not c!1287495)) b!6938382))

(assert (= (and b!6938382 c!1287494) b!6938386))

(assert (= (and b!6938382 (not c!1287494)) b!6938383))

(assert (= (and b!6938386 (not res!2830168)) b!6938385))

(assert (= (and b!6938383 c!1287492) b!6938388))

(assert (= (and b!6938383 (not c!1287492)) b!6938384))

(assert (= (and b!6938388 (not res!2830167)) b!6938392))

(assert (= (or b!6938392 b!6938384) bm!630375))

(assert (= (or b!6938390 b!6938388) bm!630374))

(declare-fun m!7643910 () Bool)

(assert (=> b!6938385 m!7643910))

(declare-fun m!7643912 () Bool)

(assert (=> b!6938386 m!7643912))

(assert (=> bm!630374 m!7643882))

(declare-fun m!7643914 () Bool)

(assert (=> bm!630375 m!7643914))

(assert (=> b!6937604 d!2167254))

(declare-fun d!2167256 () Bool)

(assert (=> d!2167256 (= (matchR!9100 lt!2474946 s!14361) (matchRSpec!4018 lt!2474946 s!14361))))

(declare-fun lt!2475073 () Unit!160646)

(assert (=> d!2167256 (= lt!2475073 (choose!51680 lt!2474946 s!14361))))

(assert (=> d!2167256 (validRegex!8667 lt!2474946)))

(assert (=> d!2167256 (= (mainMatchTheorem!4018 lt!2474946 s!14361) lt!2475073)))

(declare-fun bs!1853448 () Bool)

(assert (= bs!1853448 d!2167256))

(assert (=> bs!1853448 m!7643230))

(assert (=> bs!1853448 m!7643226))

(declare-fun m!7643916 () Bool)

(assert (=> bs!1853448 m!7643916))

(assert (=> bs!1853448 m!7643908))

(assert (=> b!6937604 d!2167256))

(declare-fun d!2167258 () Bool)

(assert (=> d!2167258 (= (matchR!9100 r3!135 (_2!37121 lt!2474942)) (matchRSpec!4018 r3!135 (_2!37121 lt!2474942)))))

(declare-fun lt!2475074 () Unit!160646)

(assert (=> d!2167258 (= lt!2475074 (choose!51680 r3!135 (_2!37121 lt!2474942)))))

(assert (=> d!2167258 (validRegex!8667 r3!135)))

(assert (=> d!2167258 (= (mainMatchTheorem!4018 r3!135 (_2!37121 lt!2474942)) lt!2475074)))

(declare-fun bs!1853449 () Bool)

(assert (= bs!1853449 d!2167258))

(assert (=> bs!1853449 m!7643208))

(assert (=> bs!1853449 m!7643260))

(declare-fun m!7643918 () Bool)

(assert (=> bs!1853449 m!7643918))

(assert (=> bs!1853449 m!7643186))

(assert (=> b!6937625 d!2167258))

(declare-fun d!2167260 () Bool)

(assert (=> d!2167260 (= (matchR!9100 r2!6280 (_1!37121 lt!2474942)) (matchRSpec!4018 r2!6280 (_1!37121 lt!2474942)))))

(declare-fun lt!2475075 () Unit!160646)

(assert (=> d!2167260 (= lt!2475075 (choose!51680 r2!6280 (_1!37121 lt!2474942)))))

(assert (=> d!2167260 (validRegex!8667 r2!6280)))

(assert (=> d!2167260 (= (mainMatchTheorem!4018 r2!6280 (_1!37121 lt!2474942)) lt!2475075)))

(declare-fun bs!1853450 () Bool)

(assert (= bs!1853450 d!2167260))

(assert (=> bs!1853450 m!7643200))

(assert (=> bs!1853450 m!7643266))

(declare-fun m!7643920 () Bool)

(assert (=> bs!1853450 m!7643920))

(assert (=> bs!1853450 m!7643182))

(assert (=> b!6937625 d!2167260))

(declare-fun bs!1853451 () Bool)

(declare-fun b!6938403 () Bool)

(assert (= bs!1853451 (and b!6938403 b!6938097)))

(declare-fun lambda!395172 () Int)

(assert (=> bs!1853451 (= (and (= (_1!37121 lt!2474942) (_2!37121 lt!2474938)) (= (reg!17290 r2!6280) (reg!17290 lt!2474950)) (= r2!6280 lt!2474950)) (= lambda!395172 lambda!395153))))

(declare-fun bs!1853452 () Bool)

(assert (= bs!1853452 (and b!6938403 b!6937619)))

(assert (=> bs!1853452 (not (= lambda!395172 lambda!395111))))

(declare-fun bs!1853453 () Bool)

(assert (= bs!1853453 (and b!6938403 d!2167134)))

(assert (=> bs!1853453 (not (= lambda!395172 lambda!395139))))

(declare-fun bs!1853454 () Bool)

(assert (= bs!1853454 (and b!6938403 d!2167124)))

(assert (=> bs!1853454 (not (= lambda!395172 lambda!395128))))

(declare-fun bs!1853455 () Bool)

(assert (= bs!1853455 (and b!6938403 b!6938089)))

(assert (=> bs!1853455 (not (= lambda!395172 lambda!395154))))

(declare-fun bs!1853456 () Bool)

(assert (= bs!1853456 (and b!6938403 b!6938270)))

(assert (=> bs!1853456 (not (= lambda!395172 lambda!395169))))

(declare-fun bs!1853457 () Bool)

(assert (= bs!1853457 (and b!6938403 b!6937624)))

(assert (=> bs!1853457 (not (= lambda!395172 lambda!395114))))

(declare-fun bs!1853458 () Bool)

(assert (= bs!1853458 (and b!6938403 d!2167230)))

(assert (=> bs!1853458 (not (= lambda!395172 lambda!395165))))

(declare-fun bs!1853459 () Bool)

(assert (= bs!1853459 (and b!6938403 b!6938392)))

(assert (=> bs!1853459 (= (and (= (_1!37121 lt!2474942) s!14361) (= (reg!17290 r2!6280) (reg!17290 lt!2474941)) (= r2!6280 lt!2474941)) (= lambda!395172 lambda!395170))))

(assert (=> bs!1853453 (not (= lambda!395172 lambda!395141))))

(assert (=> bs!1853458 (not (= lambda!395172 lambda!395164))))

(declare-fun bs!1853460 () Bool)

(assert (= bs!1853460 (and b!6938403 b!6938214)))

(assert (=> bs!1853460 (not (= lambda!395172 lambda!395162))))

(declare-fun bs!1853461 () Bool)

(assert (= bs!1853461 (and b!6938403 b!6937621)))

(assert (=> bs!1853461 (not (= lambda!395172 lambda!395110))))

(assert (=> bs!1853452 (not (= lambda!395172 lambda!395112))))

(assert (=> bs!1853461 (not (= lambda!395172 lambda!395109))))

(declare-fun bs!1853462 () Bool)

(assert (= bs!1853462 (and b!6938403 b!6938278)))

(assert (=> bs!1853462 (= (and (= (_1!37121 lt!2474942) s!14361) (= (reg!17290 r2!6280) (reg!17290 lt!2474946)) (= r2!6280 lt!2474946)) (= lambda!395172 lambda!395168))))

(assert (=> bs!1853457 (not (= lambda!395172 lambda!395113))))

(declare-fun bs!1853463 () Bool)

(assert (= bs!1853463 (and b!6938403 b!6938222)))

(assert (=> bs!1853463 (= (and (= (_1!37121 lt!2474942) lt!2474940) (= (reg!17290 r2!6280) (reg!17290 lt!2474959)) (= r2!6280 lt!2474959)) (= lambda!395172 lambda!395160))))

(declare-fun bs!1853464 () Bool)

(assert (= bs!1853464 (and b!6938403 b!6938384)))

(assert (=> bs!1853464 (not (= lambda!395172 lambda!395171))))

(declare-fun bs!1853465 () Bool)

(assert (= bs!1853465 (and b!6938403 d!2167214)))

(assert (=> bs!1853465 (not (= lambda!395172 lambda!395159))))

(assert (=> b!6938403 true))

(assert (=> b!6938403 true))

(declare-fun bs!1853466 () Bool)

(declare-fun b!6938395 () Bool)

(assert (= bs!1853466 (and b!6938395 b!6938097)))

(declare-fun lambda!395173 () Int)

(assert (=> bs!1853466 (not (= lambda!395173 lambda!395153))))

(declare-fun bs!1853467 () Bool)

(assert (= bs!1853467 (and b!6938395 b!6937619)))

(assert (=> bs!1853467 (not (= lambda!395173 lambda!395111))))

(declare-fun bs!1853468 () Bool)

(assert (= bs!1853468 (and b!6938395 d!2167134)))

(assert (=> bs!1853468 (not (= lambda!395173 lambda!395139))))

(declare-fun bs!1853469 () Bool)

(assert (= bs!1853469 (and b!6938395 d!2167124)))

(assert (=> bs!1853469 (not (= lambda!395173 lambda!395128))))

(declare-fun bs!1853470 () Bool)

(assert (= bs!1853470 (and b!6938395 b!6938403)))

(assert (=> bs!1853470 (not (= lambda!395173 lambda!395172))))

(declare-fun bs!1853471 () Bool)

(assert (= bs!1853471 (and b!6938395 b!6938089)))

(assert (=> bs!1853471 (= (and (= (_1!37121 lt!2474942) (_2!37121 lt!2474938)) (= (regOne!34434 r2!6280) (regOne!34434 lt!2474950)) (= (regTwo!34434 r2!6280) (regTwo!34434 lt!2474950))) (= lambda!395173 lambda!395154))))

(declare-fun bs!1853472 () Bool)

(assert (= bs!1853472 (and b!6938395 b!6938270)))

(assert (=> bs!1853472 (= (and (= (_1!37121 lt!2474942) s!14361) (= (regOne!34434 r2!6280) (regOne!34434 lt!2474946)) (= (regTwo!34434 r2!6280) (regTwo!34434 lt!2474946))) (= lambda!395173 lambda!395169))))

(declare-fun bs!1853473 () Bool)

(assert (= bs!1853473 (and b!6938395 b!6937624)))

(assert (=> bs!1853473 (= (and (= (_1!37121 lt!2474942) lt!2474940) (= (regOne!34434 r2!6280) r1!6342) (= (regTwo!34434 r2!6280) r2!6280)) (= lambda!395173 lambda!395114))))

(declare-fun bs!1853474 () Bool)

(assert (= bs!1853474 (and b!6938395 d!2167230)))

(assert (=> bs!1853474 (= (and (= (_1!37121 lt!2474942) lt!2474940) (= (regOne!34434 r2!6280) r1!6342) (= (regTwo!34434 r2!6280) r2!6280)) (= lambda!395173 lambda!395165))))

(declare-fun bs!1853475 () Bool)

(assert (= bs!1853475 (and b!6938395 b!6938392)))

(assert (=> bs!1853475 (not (= lambda!395173 lambda!395170))))

(assert (=> bs!1853468 (= (and (= (_1!37121 lt!2474942) (_2!37121 lt!2474938)) (= (regOne!34434 r2!6280) r2!6280) (= (regTwo!34434 r2!6280) r3!135)) (= lambda!395173 lambda!395141))))

(assert (=> bs!1853474 (not (= lambda!395173 lambda!395164))))

(declare-fun bs!1853476 () Bool)

(assert (= bs!1853476 (and b!6938395 b!6938214)))

(assert (=> bs!1853476 (= (and (= (_1!37121 lt!2474942) lt!2474940) (= (regOne!34434 r2!6280) (regOne!34434 lt!2474959)) (= (regTwo!34434 r2!6280) (regTwo!34434 lt!2474959))) (= lambda!395173 lambda!395162))))

(declare-fun bs!1853477 () Bool)

(assert (= bs!1853477 (and b!6938395 b!6937621)))

(assert (=> bs!1853477 (= (and (= (_1!37121 lt!2474942) s!14361) (= (regOne!34434 r2!6280) r1!6342) (= (regTwo!34434 r2!6280) lt!2474950)) (= lambda!395173 lambda!395110))))

(assert (=> bs!1853467 (= (and (= (_1!37121 lt!2474942) (_2!37121 lt!2474938)) (= (regOne!34434 r2!6280) r2!6280) (= (regTwo!34434 r2!6280) r3!135)) (= lambda!395173 lambda!395112))))

(assert (=> bs!1853477 (not (= lambda!395173 lambda!395109))))

(declare-fun bs!1853478 () Bool)

(assert (= bs!1853478 (and b!6938395 b!6938278)))

(assert (=> bs!1853478 (not (= lambda!395173 lambda!395168))))

(assert (=> bs!1853473 (not (= lambda!395173 lambda!395113))))

(declare-fun bs!1853479 () Bool)

(assert (= bs!1853479 (and b!6938395 b!6938222)))

(assert (=> bs!1853479 (not (= lambda!395173 lambda!395160))))

(declare-fun bs!1853480 () Bool)

(assert (= bs!1853480 (and b!6938395 b!6938384)))

(assert (=> bs!1853480 (= (and (= (_1!37121 lt!2474942) s!14361) (= (regOne!34434 r2!6280) (regOne!34434 lt!2474941)) (= (regTwo!34434 r2!6280) (regTwo!34434 lt!2474941))) (= lambda!395173 lambda!395171))))

(declare-fun bs!1853481 () Bool)

(assert (= bs!1853481 (and b!6938395 d!2167214)))

(assert (=> bs!1853481 (not (= lambda!395173 lambda!395159))))

(assert (=> b!6938395 true))

(assert (=> b!6938395 true))

(declare-fun b!6938393 () Bool)

(declare-fun c!1287498 () Bool)

(assert (=> b!6938393 (= c!1287498 ((_ is Union!16961) r2!6280))))

(declare-fun e!4174224 () Bool)

(declare-fun e!4174223 () Bool)

(assert (=> b!6938393 (= e!4174224 e!4174223)))

(declare-fun b!6938394 () Bool)

(declare-fun e!4174221 () Bool)

(assert (=> b!6938394 (= e!4174223 e!4174221)))

(declare-fun c!1287496 () Bool)

(assert (=> b!6938394 (= c!1287496 ((_ is Star!16961) r2!6280))))

(declare-fun call!630382 () Bool)

(assert (=> b!6938395 (= e!4174221 call!630382)))

(declare-fun b!6938396 () Bool)

(declare-fun e!4174222 () Bool)

(assert (=> b!6938396 (= e!4174222 (matchRSpec!4018 (regTwo!34435 r2!6280) (_1!37121 lt!2474942)))))

(declare-fun b!6938397 () Bool)

(assert (=> b!6938397 (= e!4174223 e!4174222)))

(declare-fun res!2830171 () Bool)

(assert (=> b!6938397 (= res!2830171 (matchRSpec!4018 (regOne!34435 r2!6280) (_1!37121 lt!2474942)))))

(assert (=> b!6938397 (=> res!2830171 e!4174222)))

(declare-fun b!6938398 () Bool)

(assert (=> b!6938398 (= e!4174224 (= (_1!37121 lt!2474942) (Cons!66590 (c!1287333 r2!6280) Nil!66590)))))

(declare-fun b!6938399 () Bool)

(declare-fun res!2830170 () Bool)

(declare-fun e!4174219 () Bool)

(assert (=> b!6938399 (=> res!2830170 e!4174219)))

(declare-fun call!630381 () Bool)

(assert (=> b!6938399 (= res!2830170 call!630381)))

(assert (=> b!6938399 (= e!4174221 e!4174219)))

(declare-fun b!6938400 () Bool)

(declare-fun e!4174218 () Bool)

(declare-fun e!4174220 () Bool)

(assert (=> b!6938400 (= e!4174218 e!4174220)))

(declare-fun res!2830169 () Bool)

(assert (=> b!6938400 (= res!2830169 (not ((_ is EmptyLang!16961) r2!6280)))))

(assert (=> b!6938400 (=> (not res!2830169) (not e!4174220))))

(declare-fun b!6938401 () Bool)

(assert (=> b!6938401 (= e!4174218 call!630381)))

(declare-fun d!2167262 () Bool)

(declare-fun c!1287497 () Bool)

(assert (=> d!2167262 (= c!1287497 ((_ is EmptyExpr!16961) r2!6280))))

(assert (=> d!2167262 (= (matchRSpec!4018 r2!6280 (_1!37121 lt!2474942)) e!4174218)))

(declare-fun b!6938402 () Bool)

(declare-fun c!1287499 () Bool)

(assert (=> b!6938402 (= c!1287499 ((_ is ElementMatch!16961) r2!6280))))

(assert (=> b!6938402 (= e!4174220 e!4174224)))

(declare-fun bm!630376 () Bool)

(assert (=> bm!630376 (= call!630381 (isEmpty!38857 (_1!37121 lt!2474942)))))

(assert (=> b!6938403 (= e!4174219 call!630382)))

(declare-fun bm!630377 () Bool)

(assert (=> bm!630377 (= call!630382 (Exists!3961 (ite c!1287496 lambda!395172 lambda!395173)))))

(assert (= (and d!2167262 c!1287497) b!6938401))

(assert (= (and d!2167262 (not c!1287497)) b!6938400))

(assert (= (and b!6938400 res!2830169) b!6938402))

(assert (= (and b!6938402 c!1287499) b!6938398))

(assert (= (and b!6938402 (not c!1287499)) b!6938393))

(assert (= (and b!6938393 c!1287498) b!6938397))

(assert (= (and b!6938393 (not c!1287498)) b!6938394))

(assert (= (and b!6938397 (not res!2830171)) b!6938396))

(assert (= (and b!6938394 c!1287496) b!6938399))

(assert (= (and b!6938394 (not c!1287496)) b!6938395))

(assert (= (and b!6938399 (not res!2830170)) b!6938403))

(assert (= (or b!6938403 b!6938395) bm!630377))

(assert (= (or b!6938401 b!6938399) bm!630376))

(declare-fun m!7643922 () Bool)

(assert (=> b!6938396 m!7643922))

(declare-fun m!7643924 () Bool)

(assert (=> b!6938397 m!7643924))

(assert (=> bm!630376 m!7643638))

(declare-fun m!7643926 () Bool)

(assert (=> bm!630377 m!7643926))

(assert (=> b!6937625 d!2167262))

(declare-fun b!6938406 () Bool)

(declare-fun res!2830172 () Bool)

(declare-fun e!4174225 () Bool)

(assert (=> b!6938406 (=> (not res!2830172) (not e!4174225))))

(declare-fun lt!2475076 () List!66714)

(assert (=> b!6938406 (= res!2830172 (= (size!40797 lt!2475076) (+ (size!40797 (_1!37121 lt!2474938)) (size!40797 (++!15000 (_1!37121 lt!2474942) (_2!37121 lt!2474942))))))))

(declare-fun d!2167264 () Bool)

(assert (=> d!2167264 e!4174225))

(declare-fun res!2830173 () Bool)

(assert (=> d!2167264 (=> (not res!2830173) (not e!4174225))))

(assert (=> d!2167264 (= res!2830173 (= (content!13100 lt!2475076) ((_ map or) (content!13100 (_1!37121 lt!2474938)) (content!13100 (++!15000 (_1!37121 lt!2474942) (_2!37121 lt!2474942))))))))

(declare-fun e!4174226 () List!66714)

(assert (=> d!2167264 (= lt!2475076 e!4174226)))

(declare-fun c!1287500 () Bool)

(assert (=> d!2167264 (= c!1287500 ((_ is Nil!66590) (_1!37121 lt!2474938)))))

(assert (=> d!2167264 (= (++!15000 (_1!37121 lt!2474938) (++!15000 (_1!37121 lt!2474942) (_2!37121 lt!2474942))) lt!2475076)))

(declare-fun b!6938405 () Bool)

(assert (=> b!6938405 (= e!4174226 (Cons!66590 (h!73038 (_1!37121 lt!2474938)) (++!15000 (t!380457 (_1!37121 lt!2474938)) (++!15000 (_1!37121 lt!2474942) (_2!37121 lt!2474942)))))))

(declare-fun b!6938404 () Bool)

(assert (=> b!6938404 (= e!4174226 (++!15000 (_1!37121 lt!2474942) (_2!37121 lt!2474942)))))

(declare-fun b!6938407 () Bool)

(assert (=> b!6938407 (= e!4174225 (or (not (= (++!15000 (_1!37121 lt!2474942) (_2!37121 lt!2474942)) Nil!66590)) (= lt!2475076 (_1!37121 lt!2474938))))))

(assert (= (and d!2167264 c!1287500) b!6938404))

(assert (= (and d!2167264 (not c!1287500)) b!6938405))

(assert (= (and d!2167264 res!2830173) b!6938406))

(assert (= (and b!6938406 res!2830172) b!6938407))

(declare-fun m!7643928 () Bool)

(assert (=> b!6938406 m!7643928))

(assert (=> b!6938406 m!7643756))

(assert (=> b!6938406 m!7643264))

(declare-fun m!7643930 () Bool)

(assert (=> b!6938406 m!7643930))

(declare-fun m!7643932 () Bool)

(assert (=> d!2167264 m!7643932))

(assert (=> d!2167264 m!7643762))

(assert (=> d!2167264 m!7643264))

(declare-fun m!7643934 () Bool)

(assert (=> d!2167264 m!7643934))

(assert (=> b!6938405 m!7643264))

(declare-fun m!7643936 () Bool)

(assert (=> b!6938405 m!7643936))

(assert (=> b!6937625 d!2167264))

(declare-fun bs!1853482 () Bool)

(declare-fun b!6938418 () Bool)

(assert (= bs!1853482 (and b!6938418 b!6938097)))

(declare-fun lambda!395174 () Int)

(assert (=> bs!1853482 (= (and (= (_2!37121 lt!2474942) (_2!37121 lt!2474938)) (= (reg!17290 r3!135) (reg!17290 lt!2474950)) (= r3!135 lt!2474950)) (= lambda!395174 lambda!395153))))

(declare-fun bs!1853483 () Bool)

(assert (= bs!1853483 (and b!6938418 b!6937619)))

(assert (=> bs!1853483 (not (= lambda!395174 lambda!395111))))

(declare-fun bs!1853484 () Bool)

(assert (= bs!1853484 (and b!6938418 d!2167134)))

(assert (=> bs!1853484 (not (= lambda!395174 lambda!395139))))

(declare-fun bs!1853485 () Bool)

(assert (= bs!1853485 (and b!6938418 d!2167124)))

(assert (=> bs!1853485 (not (= lambda!395174 lambda!395128))))

(declare-fun bs!1853486 () Bool)

(assert (= bs!1853486 (and b!6938418 b!6938403)))

(assert (=> bs!1853486 (= (and (= (_2!37121 lt!2474942) (_1!37121 lt!2474942)) (= (reg!17290 r3!135) (reg!17290 r2!6280)) (= r3!135 r2!6280)) (= lambda!395174 lambda!395172))))

(declare-fun bs!1853487 () Bool)

(assert (= bs!1853487 (and b!6938418 b!6938089)))

(assert (=> bs!1853487 (not (= lambda!395174 lambda!395154))))

(declare-fun bs!1853488 () Bool)

(assert (= bs!1853488 (and b!6938418 b!6938270)))

(assert (=> bs!1853488 (not (= lambda!395174 lambda!395169))))

(declare-fun bs!1853489 () Bool)

(assert (= bs!1853489 (and b!6938418 b!6937624)))

(assert (=> bs!1853489 (not (= lambda!395174 lambda!395114))))

(declare-fun bs!1853490 () Bool)

(assert (= bs!1853490 (and b!6938418 d!2167230)))

(assert (=> bs!1853490 (not (= lambda!395174 lambda!395165))))

(declare-fun bs!1853491 () Bool)

(assert (= bs!1853491 (and b!6938418 b!6938395)))

(assert (=> bs!1853491 (not (= lambda!395174 lambda!395173))))

(declare-fun bs!1853492 () Bool)

(assert (= bs!1853492 (and b!6938418 b!6938392)))

(assert (=> bs!1853492 (= (and (= (_2!37121 lt!2474942) s!14361) (= (reg!17290 r3!135) (reg!17290 lt!2474941)) (= r3!135 lt!2474941)) (= lambda!395174 lambda!395170))))

(assert (=> bs!1853484 (not (= lambda!395174 lambda!395141))))

(assert (=> bs!1853490 (not (= lambda!395174 lambda!395164))))

(declare-fun bs!1853493 () Bool)

(assert (= bs!1853493 (and b!6938418 b!6938214)))

(assert (=> bs!1853493 (not (= lambda!395174 lambda!395162))))

(declare-fun bs!1853494 () Bool)

(assert (= bs!1853494 (and b!6938418 b!6937621)))

(assert (=> bs!1853494 (not (= lambda!395174 lambda!395110))))

(assert (=> bs!1853483 (not (= lambda!395174 lambda!395112))))

(assert (=> bs!1853494 (not (= lambda!395174 lambda!395109))))

(declare-fun bs!1853495 () Bool)

(assert (= bs!1853495 (and b!6938418 b!6938278)))

(assert (=> bs!1853495 (= (and (= (_2!37121 lt!2474942) s!14361) (= (reg!17290 r3!135) (reg!17290 lt!2474946)) (= r3!135 lt!2474946)) (= lambda!395174 lambda!395168))))

(assert (=> bs!1853489 (not (= lambda!395174 lambda!395113))))

(declare-fun bs!1853496 () Bool)

(assert (= bs!1853496 (and b!6938418 b!6938222)))

(assert (=> bs!1853496 (= (and (= (_2!37121 lt!2474942) lt!2474940) (= (reg!17290 r3!135) (reg!17290 lt!2474959)) (= r3!135 lt!2474959)) (= lambda!395174 lambda!395160))))

(declare-fun bs!1853497 () Bool)

(assert (= bs!1853497 (and b!6938418 b!6938384)))

(assert (=> bs!1853497 (not (= lambda!395174 lambda!395171))))

(declare-fun bs!1853498 () Bool)

(assert (= bs!1853498 (and b!6938418 d!2167214)))

(assert (=> bs!1853498 (not (= lambda!395174 lambda!395159))))

(assert (=> b!6938418 true))

(assert (=> b!6938418 true))

(declare-fun bs!1853499 () Bool)

(declare-fun b!6938410 () Bool)

(assert (= bs!1853499 (and b!6938410 b!6938097)))

(declare-fun lambda!395175 () Int)

(assert (=> bs!1853499 (not (= lambda!395175 lambda!395153))))

(declare-fun bs!1853500 () Bool)

(assert (= bs!1853500 (and b!6938410 b!6937619)))

(assert (=> bs!1853500 (not (= lambda!395175 lambda!395111))))

(declare-fun bs!1853501 () Bool)

(assert (= bs!1853501 (and b!6938410 d!2167134)))

(assert (=> bs!1853501 (not (= lambda!395175 lambda!395139))))

(declare-fun bs!1853502 () Bool)

(assert (= bs!1853502 (and b!6938410 d!2167124)))

(assert (=> bs!1853502 (not (= lambda!395175 lambda!395128))))

(declare-fun bs!1853503 () Bool)

(assert (= bs!1853503 (and b!6938410 b!6938403)))

(assert (=> bs!1853503 (not (= lambda!395175 lambda!395172))))

(declare-fun bs!1853504 () Bool)

(assert (= bs!1853504 (and b!6938410 b!6938089)))

(assert (=> bs!1853504 (= (and (= (_2!37121 lt!2474942) (_2!37121 lt!2474938)) (= (regOne!34434 r3!135) (regOne!34434 lt!2474950)) (= (regTwo!34434 r3!135) (regTwo!34434 lt!2474950))) (= lambda!395175 lambda!395154))))

(declare-fun bs!1853505 () Bool)

(assert (= bs!1853505 (and b!6938410 b!6938418)))

(assert (=> bs!1853505 (not (= lambda!395175 lambda!395174))))

(declare-fun bs!1853506 () Bool)

(assert (= bs!1853506 (and b!6938410 b!6938270)))

(assert (=> bs!1853506 (= (and (= (_2!37121 lt!2474942) s!14361) (= (regOne!34434 r3!135) (regOne!34434 lt!2474946)) (= (regTwo!34434 r3!135) (regTwo!34434 lt!2474946))) (= lambda!395175 lambda!395169))))

(declare-fun bs!1853507 () Bool)

(assert (= bs!1853507 (and b!6938410 b!6937624)))

(assert (=> bs!1853507 (= (and (= (_2!37121 lt!2474942) lt!2474940) (= (regOne!34434 r3!135) r1!6342) (= (regTwo!34434 r3!135) r2!6280)) (= lambda!395175 lambda!395114))))

(declare-fun bs!1853508 () Bool)

(assert (= bs!1853508 (and b!6938410 d!2167230)))

(assert (=> bs!1853508 (= (and (= (_2!37121 lt!2474942) lt!2474940) (= (regOne!34434 r3!135) r1!6342) (= (regTwo!34434 r3!135) r2!6280)) (= lambda!395175 lambda!395165))))

(declare-fun bs!1853509 () Bool)

(assert (= bs!1853509 (and b!6938410 b!6938395)))

(assert (=> bs!1853509 (= (and (= (_2!37121 lt!2474942) (_1!37121 lt!2474942)) (= (regOne!34434 r3!135) (regOne!34434 r2!6280)) (= (regTwo!34434 r3!135) (regTwo!34434 r2!6280))) (= lambda!395175 lambda!395173))))

(declare-fun bs!1853510 () Bool)

(assert (= bs!1853510 (and b!6938410 b!6938392)))

(assert (=> bs!1853510 (not (= lambda!395175 lambda!395170))))

(assert (=> bs!1853501 (= (and (= (_2!37121 lt!2474942) (_2!37121 lt!2474938)) (= (regOne!34434 r3!135) r2!6280) (= (regTwo!34434 r3!135) r3!135)) (= lambda!395175 lambda!395141))))

(assert (=> bs!1853508 (not (= lambda!395175 lambda!395164))))

(declare-fun bs!1853511 () Bool)

(assert (= bs!1853511 (and b!6938410 b!6938214)))

(assert (=> bs!1853511 (= (and (= (_2!37121 lt!2474942) lt!2474940) (= (regOne!34434 r3!135) (regOne!34434 lt!2474959)) (= (regTwo!34434 r3!135) (regTwo!34434 lt!2474959))) (= lambda!395175 lambda!395162))))

(declare-fun bs!1853512 () Bool)

(assert (= bs!1853512 (and b!6938410 b!6937621)))

(assert (=> bs!1853512 (= (and (= (_2!37121 lt!2474942) s!14361) (= (regOne!34434 r3!135) r1!6342) (= (regTwo!34434 r3!135) lt!2474950)) (= lambda!395175 lambda!395110))))

(assert (=> bs!1853500 (= (and (= (_2!37121 lt!2474942) (_2!37121 lt!2474938)) (= (regOne!34434 r3!135) r2!6280) (= (regTwo!34434 r3!135) r3!135)) (= lambda!395175 lambda!395112))))

(assert (=> bs!1853512 (not (= lambda!395175 lambda!395109))))

(declare-fun bs!1853513 () Bool)

(assert (= bs!1853513 (and b!6938410 b!6938278)))

(assert (=> bs!1853513 (not (= lambda!395175 lambda!395168))))

(assert (=> bs!1853507 (not (= lambda!395175 lambda!395113))))

(declare-fun bs!1853514 () Bool)

(assert (= bs!1853514 (and b!6938410 b!6938222)))

(assert (=> bs!1853514 (not (= lambda!395175 lambda!395160))))

(declare-fun bs!1853515 () Bool)

(assert (= bs!1853515 (and b!6938410 b!6938384)))

(assert (=> bs!1853515 (= (and (= (_2!37121 lt!2474942) s!14361) (= (regOne!34434 r3!135) (regOne!34434 lt!2474941)) (= (regTwo!34434 r3!135) (regTwo!34434 lt!2474941))) (= lambda!395175 lambda!395171))))

(declare-fun bs!1853516 () Bool)

(assert (= bs!1853516 (and b!6938410 d!2167214)))

(assert (=> bs!1853516 (not (= lambda!395175 lambda!395159))))

(assert (=> b!6938410 true))

(assert (=> b!6938410 true))

(declare-fun b!6938408 () Bool)

(declare-fun c!1287503 () Bool)

(assert (=> b!6938408 (= c!1287503 ((_ is Union!16961) r3!135))))

(declare-fun e!4174233 () Bool)

(declare-fun e!4174232 () Bool)

(assert (=> b!6938408 (= e!4174233 e!4174232)))

(declare-fun b!6938409 () Bool)

(declare-fun e!4174230 () Bool)

(assert (=> b!6938409 (= e!4174232 e!4174230)))

(declare-fun c!1287501 () Bool)

(assert (=> b!6938409 (= c!1287501 ((_ is Star!16961) r3!135))))

(declare-fun call!630384 () Bool)

(assert (=> b!6938410 (= e!4174230 call!630384)))

(declare-fun b!6938411 () Bool)

(declare-fun e!4174231 () Bool)

(assert (=> b!6938411 (= e!4174231 (matchRSpec!4018 (regTwo!34435 r3!135) (_2!37121 lt!2474942)))))

(declare-fun b!6938412 () Bool)

(assert (=> b!6938412 (= e!4174232 e!4174231)))

(declare-fun res!2830176 () Bool)

(assert (=> b!6938412 (= res!2830176 (matchRSpec!4018 (regOne!34435 r3!135) (_2!37121 lt!2474942)))))

(assert (=> b!6938412 (=> res!2830176 e!4174231)))

(declare-fun b!6938413 () Bool)

(assert (=> b!6938413 (= e!4174233 (= (_2!37121 lt!2474942) (Cons!66590 (c!1287333 r3!135) Nil!66590)))))

(declare-fun b!6938414 () Bool)

(declare-fun res!2830175 () Bool)

(declare-fun e!4174228 () Bool)

(assert (=> b!6938414 (=> res!2830175 e!4174228)))

(declare-fun call!630383 () Bool)

(assert (=> b!6938414 (= res!2830175 call!630383)))

(assert (=> b!6938414 (= e!4174230 e!4174228)))

(declare-fun b!6938415 () Bool)

(declare-fun e!4174227 () Bool)

(declare-fun e!4174229 () Bool)

(assert (=> b!6938415 (= e!4174227 e!4174229)))

(declare-fun res!2830174 () Bool)

(assert (=> b!6938415 (= res!2830174 (not ((_ is EmptyLang!16961) r3!135)))))

(assert (=> b!6938415 (=> (not res!2830174) (not e!4174229))))

(declare-fun b!6938416 () Bool)

(assert (=> b!6938416 (= e!4174227 call!630383)))

(declare-fun d!2167266 () Bool)

(declare-fun c!1287502 () Bool)

(assert (=> d!2167266 (= c!1287502 ((_ is EmptyExpr!16961) r3!135))))

(assert (=> d!2167266 (= (matchRSpec!4018 r3!135 (_2!37121 lt!2474942)) e!4174227)))

(declare-fun b!6938417 () Bool)

(declare-fun c!1287504 () Bool)

(assert (=> b!6938417 (= c!1287504 ((_ is ElementMatch!16961) r3!135))))

(assert (=> b!6938417 (= e!4174229 e!4174233)))

(declare-fun bm!630378 () Bool)

(assert (=> bm!630378 (= call!630383 (isEmpty!38857 (_2!37121 lt!2474942)))))

(assert (=> b!6938418 (= e!4174228 call!630384)))

(declare-fun bm!630379 () Bool)

(assert (=> bm!630379 (= call!630384 (Exists!3961 (ite c!1287501 lambda!395174 lambda!395175)))))

(assert (= (and d!2167266 c!1287502) b!6938416))

(assert (= (and d!2167266 (not c!1287502)) b!6938415))

(assert (= (and b!6938415 res!2830174) b!6938417))

(assert (= (and b!6938417 c!1287504) b!6938413))

(assert (= (and b!6938417 (not c!1287504)) b!6938408))

(assert (= (and b!6938408 c!1287503) b!6938412))

(assert (= (and b!6938408 (not c!1287503)) b!6938409))

(assert (= (and b!6938412 (not res!2830176)) b!6938411))

(assert (= (and b!6938409 c!1287501) b!6938414))

(assert (= (and b!6938409 (not c!1287501)) b!6938410))

(assert (= (and b!6938414 (not res!2830175)) b!6938418))

(assert (= (or b!6938418 b!6938410) bm!630379))

(assert (= (or b!6938416 b!6938414) bm!630378))

(declare-fun m!7643938 () Bool)

(assert (=> b!6938411 m!7643938))

(declare-fun m!7643940 () Bool)

(assert (=> b!6938412 m!7643940))

(assert (=> bm!630378 m!7643290))

(declare-fun m!7643942 () Bool)

(assert (=> bm!630379 m!7643942))

(assert (=> b!6937625 d!2167266))

(declare-fun b!6938421 () Bool)

(declare-fun res!2830177 () Bool)

(declare-fun e!4174234 () Bool)

(assert (=> b!6938421 (=> (not res!2830177) (not e!4174234))))

(declare-fun lt!2475077 () List!66714)

(assert (=> b!6938421 (= res!2830177 (= (size!40797 lt!2475077) (+ (size!40797 (_1!37121 lt!2474942)) (size!40797 (_2!37121 lt!2474942)))))))

(declare-fun d!2167268 () Bool)

(assert (=> d!2167268 e!4174234))

(declare-fun res!2830178 () Bool)

(assert (=> d!2167268 (=> (not res!2830178) (not e!4174234))))

(assert (=> d!2167268 (= res!2830178 (= (content!13100 lt!2475077) ((_ map or) (content!13100 (_1!37121 lt!2474942)) (content!13100 (_2!37121 lt!2474942)))))))

(declare-fun e!4174235 () List!66714)

(assert (=> d!2167268 (= lt!2475077 e!4174235)))

(declare-fun c!1287505 () Bool)

(assert (=> d!2167268 (= c!1287505 ((_ is Nil!66590) (_1!37121 lt!2474942)))))

(assert (=> d!2167268 (= (++!15000 (_1!37121 lt!2474942) (_2!37121 lt!2474942)) lt!2475077)))

(declare-fun b!6938420 () Bool)

(assert (=> b!6938420 (= e!4174235 (Cons!66590 (h!73038 (_1!37121 lt!2474942)) (++!15000 (t!380457 (_1!37121 lt!2474942)) (_2!37121 lt!2474942))))))

(declare-fun b!6938419 () Bool)

(assert (=> b!6938419 (= e!4174235 (_2!37121 lt!2474942))))

(declare-fun b!6938422 () Bool)

(assert (=> b!6938422 (= e!4174234 (or (not (= (_2!37121 lt!2474942) Nil!66590)) (= lt!2475077 (_1!37121 lt!2474942))))))

(assert (= (and d!2167268 c!1287505) b!6938419))

(assert (= (and d!2167268 (not c!1287505)) b!6938420))

(assert (= (and d!2167268 res!2830178) b!6938421))

(assert (= (and b!6938421 res!2830177) b!6938422))

(declare-fun m!7643944 () Bool)

(assert (=> b!6938421 m!7643944))

(assert (=> b!6938421 m!7643758))

(assert (=> b!6938421 m!7643742))

(declare-fun m!7643946 () Bool)

(assert (=> d!2167268 m!7643946))

(assert (=> d!2167268 m!7643764))

(assert (=> d!2167268 m!7643748))

(declare-fun m!7643948 () Bool)

(assert (=> b!6938420 m!7643948))

(assert (=> b!6937625 d!2167268))

(declare-fun b!6938423 () Bool)

(declare-fun res!2830185 () Bool)

(declare-fun e!4174240 () Bool)

(assert (=> b!6938423 (=> (not res!2830185) (not e!4174240))))

(declare-fun call!630385 () Bool)

(assert (=> b!6938423 (= res!2830185 (not call!630385))))

(declare-fun b!6938424 () Bool)

(declare-fun res!2830186 () Bool)

(declare-fun e!4174241 () Bool)

(assert (=> b!6938424 (=> res!2830186 e!4174241)))

(assert (=> b!6938424 (= res!2830186 (not ((_ is ElementMatch!16961) lt!2474950)))))

(declare-fun e!4174238 () Bool)

(assert (=> b!6938424 (= e!4174238 e!4174241)))

(declare-fun d!2167270 () Bool)

(declare-fun e!4174237 () Bool)

(assert (=> d!2167270 e!4174237))

(declare-fun c!1287508 () Bool)

(assert (=> d!2167270 (= c!1287508 ((_ is EmptyExpr!16961) lt!2474950))))

(declare-fun lt!2475078 () Bool)

(declare-fun e!4174242 () Bool)

(assert (=> d!2167270 (= lt!2475078 e!4174242)))

(declare-fun c!1287507 () Bool)

(assert (=> d!2167270 (= c!1287507 (isEmpty!38857 (_2!37121 lt!2474938)))))

(assert (=> d!2167270 (validRegex!8667 lt!2474950)))

(assert (=> d!2167270 (= (matchR!9100 lt!2474950 (_2!37121 lt!2474938)) lt!2475078)))

(declare-fun b!6938425 () Bool)

(declare-fun e!4174239 () Bool)

(declare-fun e!4174236 () Bool)

(assert (=> b!6938425 (= e!4174239 e!4174236)))

(declare-fun res!2830183 () Bool)

(assert (=> b!6938425 (=> res!2830183 e!4174236)))

(assert (=> b!6938425 (= res!2830183 call!630385)))

(declare-fun b!6938426 () Bool)

(declare-fun res!2830182 () Bool)

(assert (=> b!6938426 (=> res!2830182 e!4174236)))

(assert (=> b!6938426 (= res!2830182 (not (isEmpty!38857 (tail!12958 (_2!37121 lt!2474938)))))))

(declare-fun b!6938427 () Bool)

(assert (=> b!6938427 (= e!4174238 (not lt!2475078))))

(declare-fun b!6938428 () Bool)

(declare-fun res!2830181 () Bool)

(assert (=> b!6938428 (=> res!2830181 e!4174241)))

(assert (=> b!6938428 (= res!2830181 e!4174240)))

(declare-fun res!2830184 () Bool)

(assert (=> b!6938428 (=> (not res!2830184) (not e!4174240))))

(assert (=> b!6938428 (= res!2830184 lt!2475078)))

(declare-fun b!6938429 () Bool)

(assert (=> b!6938429 (= e!4174237 (= lt!2475078 call!630385))))

(declare-fun b!6938430 () Bool)

(declare-fun res!2830179 () Bool)

(assert (=> b!6938430 (=> (not res!2830179) (not e!4174240))))

(assert (=> b!6938430 (= res!2830179 (isEmpty!38857 (tail!12958 (_2!37121 lt!2474938))))))

(declare-fun b!6938431 () Bool)

(assert (=> b!6938431 (= e!4174241 e!4174239)))

(declare-fun res!2830180 () Bool)

(assert (=> b!6938431 (=> (not res!2830180) (not e!4174239))))

(assert (=> b!6938431 (= res!2830180 (not lt!2475078))))

(declare-fun b!6938432 () Bool)

(assert (=> b!6938432 (= e!4174236 (not (= (head!13906 (_2!37121 lt!2474938)) (c!1287333 lt!2474950))))))

(declare-fun b!6938433 () Bool)

(assert (=> b!6938433 (= e!4174237 e!4174238)))

(declare-fun c!1287506 () Bool)

(assert (=> b!6938433 (= c!1287506 ((_ is EmptyLang!16961) lt!2474950))))

(declare-fun bm!630380 () Bool)

(assert (=> bm!630380 (= call!630385 (isEmpty!38857 (_2!37121 lt!2474938)))))

(declare-fun b!6938434 () Bool)

(assert (=> b!6938434 (= e!4174242 (matchR!9100 (derivativeStep!5452 lt!2474950 (head!13906 (_2!37121 lt!2474938))) (tail!12958 (_2!37121 lt!2474938))))))

(declare-fun b!6938435 () Bool)

(assert (=> b!6938435 (= e!4174242 (nullable!6778 lt!2474950))))

(declare-fun b!6938436 () Bool)

(assert (=> b!6938436 (= e!4174240 (= (head!13906 (_2!37121 lt!2474938)) (c!1287333 lt!2474950)))))

(assert (= (and d!2167270 c!1287507) b!6938435))

(assert (= (and d!2167270 (not c!1287507)) b!6938434))

(assert (= (and d!2167270 c!1287508) b!6938429))

(assert (= (and d!2167270 (not c!1287508)) b!6938433))

(assert (= (and b!6938433 c!1287506) b!6938427))

(assert (= (and b!6938433 (not c!1287506)) b!6938424))

(assert (= (and b!6938424 (not res!2830186)) b!6938428))

(assert (= (and b!6938428 res!2830184) b!6938423))

(assert (= (and b!6938423 res!2830185) b!6938430))

(assert (= (and b!6938430 res!2830179) b!6938436))

(assert (= (and b!6938428 (not res!2830181)) b!6938431))

(assert (= (and b!6938431 res!2830180) b!6938425))

(assert (= (and b!6938425 (not res!2830183)) b!6938426))

(assert (= (and b!6938426 (not res!2830182)) b!6938432))

(assert (= (or b!6938429 b!6938423 b!6938425) bm!630380))

(declare-fun m!7643950 () Bool)

(assert (=> b!6938435 m!7643950))

(assert (=> bm!630380 m!7643632))

(declare-fun m!7643952 () Bool)

(assert (=> b!6938436 m!7643952))

(assert (=> b!6938434 m!7643952))

(assert (=> b!6938434 m!7643952))

(declare-fun m!7643954 () Bool)

(assert (=> b!6938434 m!7643954))

(declare-fun m!7643956 () Bool)

(assert (=> b!6938434 m!7643956))

(assert (=> b!6938434 m!7643954))

(assert (=> b!6938434 m!7643956))

(declare-fun m!7643958 () Bool)

(assert (=> b!6938434 m!7643958))

(assert (=> d!2167270 m!7643632))

(assert (=> d!2167270 m!7643434))

(assert (=> b!6938432 m!7643952))

(assert (=> b!6938426 m!7643956))

(assert (=> b!6938426 m!7643956))

(declare-fun m!7643960 () Bool)

(assert (=> b!6938426 m!7643960))

(assert (=> b!6938430 m!7643956))

(assert (=> b!6938430 m!7643956))

(assert (=> b!6938430 m!7643960))

(assert (=> b!6937614 d!2167270))

(declare-fun b!6938437 () Bool)

(declare-fun res!2830193 () Bool)

(declare-fun e!4174247 () Bool)

(assert (=> b!6938437 (=> (not res!2830193) (not e!4174247))))

(declare-fun call!630386 () Bool)

(assert (=> b!6938437 (= res!2830193 (not call!630386))))

(declare-fun b!6938438 () Bool)

(declare-fun res!2830194 () Bool)

(declare-fun e!4174248 () Bool)

(assert (=> b!6938438 (=> res!2830194 e!4174248)))

(assert (=> b!6938438 (= res!2830194 (not ((_ is ElementMatch!16961) r1!6342)))))

(declare-fun e!4174245 () Bool)

(assert (=> b!6938438 (= e!4174245 e!4174248)))

(declare-fun d!2167272 () Bool)

(declare-fun e!4174244 () Bool)

(assert (=> d!2167272 e!4174244))

(declare-fun c!1287511 () Bool)

(assert (=> d!2167272 (= c!1287511 ((_ is EmptyExpr!16961) r1!6342))))

(declare-fun lt!2475079 () Bool)

(declare-fun e!4174249 () Bool)

(assert (=> d!2167272 (= lt!2475079 e!4174249)))

(declare-fun c!1287510 () Bool)

(assert (=> d!2167272 (= c!1287510 (isEmpty!38857 (_1!37121 lt!2474938)))))

(assert (=> d!2167272 (validRegex!8667 r1!6342)))

(assert (=> d!2167272 (= (matchR!9100 r1!6342 (_1!37121 lt!2474938)) lt!2475079)))

(declare-fun b!6938439 () Bool)

(declare-fun e!4174246 () Bool)

(declare-fun e!4174243 () Bool)

(assert (=> b!6938439 (= e!4174246 e!4174243)))

(declare-fun res!2830191 () Bool)

(assert (=> b!6938439 (=> res!2830191 e!4174243)))

(assert (=> b!6938439 (= res!2830191 call!630386)))

(declare-fun b!6938440 () Bool)

(declare-fun res!2830190 () Bool)

(assert (=> b!6938440 (=> res!2830190 e!4174243)))

(assert (=> b!6938440 (= res!2830190 (not (isEmpty!38857 (tail!12958 (_1!37121 lt!2474938)))))))

(declare-fun b!6938441 () Bool)

(assert (=> b!6938441 (= e!4174245 (not lt!2475079))))

(declare-fun b!6938442 () Bool)

(declare-fun res!2830189 () Bool)

(assert (=> b!6938442 (=> res!2830189 e!4174248)))

(assert (=> b!6938442 (= res!2830189 e!4174247)))

(declare-fun res!2830192 () Bool)

(assert (=> b!6938442 (=> (not res!2830192) (not e!4174247))))

(assert (=> b!6938442 (= res!2830192 lt!2475079)))

(declare-fun b!6938443 () Bool)

(assert (=> b!6938443 (= e!4174244 (= lt!2475079 call!630386))))

(declare-fun b!6938444 () Bool)

(declare-fun res!2830187 () Bool)

(assert (=> b!6938444 (=> (not res!2830187) (not e!4174247))))

(assert (=> b!6938444 (= res!2830187 (isEmpty!38857 (tail!12958 (_1!37121 lt!2474938))))))

(declare-fun b!6938445 () Bool)

(assert (=> b!6938445 (= e!4174248 e!4174246)))

(declare-fun res!2830188 () Bool)

(assert (=> b!6938445 (=> (not res!2830188) (not e!4174246))))

(assert (=> b!6938445 (= res!2830188 (not lt!2475079))))

(declare-fun b!6938446 () Bool)

(assert (=> b!6938446 (= e!4174243 (not (= (head!13906 (_1!37121 lt!2474938)) (c!1287333 r1!6342))))))

(declare-fun b!6938447 () Bool)

(assert (=> b!6938447 (= e!4174244 e!4174245)))

(declare-fun c!1287509 () Bool)

(assert (=> b!6938447 (= c!1287509 ((_ is EmptyLang!16961) r1!6342))))

(declare-fun bm!630381 () Bool)

(assert (=> bm!630381 (= call!630386 (isEmpty!38857 (_1!37121 lt!2474938)))))

(declare-fun b!6938448 () Bool)

(assert (=> b!6938448 (= e!4174249 (matchR!9100 (derivativeStep!5452 r1!6342 (head!13906 (_1!37121 lt!2474938))) (tail!12958 (_1!37121 lt!2474938))))))

(declare-fun b!6938449 () Bool)

(assert (=> b!6938449 (= e!4174249 (nullable!6778 r1!6342))))

(declare-fun b!6938450 () Bool)

(assert (=> b!6938450 (= e!4174247 (= (head!13906 (_1!37121 lt!2474938)) (c!1287333 r1!6342)))))

(assert (= (and d!2167272 c!1287510) b!6938449))

(assert (= (and d!2167272 (not c!1287510)) b!6938448))

(assert (= (and d!2167272 c!1287511) b!6938443))

(assert (= (and d!2167272 (not c!1287511)) b!6938447))

(assert (= (and b!6938447 c!1287509) b!6938441))

(assert (= (and b!6938447 (not c!1287509)) b!6938438))

(assert (= (and b!6938438 (not res!2830194)) b!6938442))

(assert (= (and b!6938442 res!2830192) b!6938437))

(assert (= (and b!6938437 res!2830193) b!6938444))

(assert (= (and b!6938444 res!2830187) b!6938450))

(assert (= (and b!6938442 (not res!2830189)) b!6938445))

(assert (= (and b!6938445 res!2830188) b!6938439))

(assert (= (and b!6938439 (not res!2830191)) b!6938440))

(assert (= (and b!6938440 (not res!2830190)) b!6938446))

(assert (= (or b!6938443 b!6938437 b!6938439) bm!630381))

(declare-fun m!7643962 () Bool)

(assert (=> b!6938449 m!7643962))

(declare-fun m!7643964 () Bool)

(assert (=> bm!630381 m!7643964))

(declare-fun m!7643966 () Bool)

(assert (=> b!6938450 m!7643966))

(assert (=> b!6938448 m!7643966))

(assert (=> b!6938448 m!7643966))

(declare-fun m!7643968 () Bool)

(assert (=> b!6938448 m!7643968))

(declare-fun m!7643970 () Bool)

(assert (=> b!6938448 m!7643970))

(assert (=> b!6938448 m!7643968))

(assert (=> b!6938448 m!7643970))

(declare-fun m!7643972 () Bool)

(assert (=> b!6938448 m!7643972))

(assert (=> d!2167272 m!7643964))

(assert (=> d!2167272 m!7643214))

(assert (=> b!6938446 m!7643966))

(assert (=> b!6938440 m!7643970))

(assert (=> b!6938440 m!7643970))

(declare-fun m!7643974 () Bool)

(assert (=> b!6938440 m!7643974))

(assert (=> b!6938444 m!7643970))

(assert (=> b!6938444 m!7643970))

(assert (=> b!6938444 m!7643974))

(assert (=> b!6937621 d!2167272))

(declare-fun bs!1853517 () Bool)

(declare-fun b!6938461 () Bool)

(assert (= bs!1853517 (and b!6938461 b!6938097)))

(declare-fun lambda!395176 () Int)

(assert (=> bs!1853517 (= (and (= (_1!37121 lt!2474938) (_2!37121 lt!2474938)) (= (reg!17290 r1!6342) (reg!17290 lt!2474950)) (= r1!6342 lt!2474950)) (= lambda!395176 lambda!395153))))

(declare-fun bs!1853518 () Bool)

(assert (= bs!1853518 (and b!6938461 b!6937619)))

(assert (=> bs!1853518 (not (= lambda!395176 lambda!395111))))

(declare-fun bs!1853519 () Bool)

(assert (= bs!1853519 (and b!6938461 d!2167134)))

(assert (=> bs!1853519 (not (= lambda!395176 lambda!395139))))

(declare-fun bs!1853520 () Bool)

(assert (= bs!1853520 (and b!6938461 d!2167124)))

(assert (=> bs!1853520 (not (= lambda!395176 lambda!395128))))

(declare-fun bs!1853521 () Bool)

(assert (= bs!1853521 (and b!6938461 b!6938403)))

(assert (=> bs!1853521 (= (and (= (_1!37121 lt!2474938) (_1!37121 lt!2474942)) (= (reg!17290 r1!6342) (reg!17290 r2!6280)) (= r1!6342 r2!6280)) (= lambda!395176 lambda!395172))))

(declare-fun bs!1853522 () Bool)

(assert (= bs!1853522 (and b!6938461 b!6938089)))

(assert (=> bs!1853522 (not (= lambda!395176 lambda!395154))))

(declare-fun bs!1853523 () Bool)

(assert (= bs!1853523 (and b!6938461 b!6938418)))

(assert (=> bs!1853523 (= (and (= (_1!37121 lt!2474938) (_2!37121 lt!2474942)) (= (reg!17290 r1!6342) (reg!17290 r3!135)) (= r1!6342 r3!135)) (= lambda!395176 lambda!395174))))

(declare-fun bs!1853524 () Bool)

(assert (= bs!1853524 (and b!6938461 b!6938270)))

(assert (=> bs!1853524 (not (= lambda!395176 lambda!395169))))

(declare-fun bs!1853525 () Bool)

(assert (= bs!1853525 (and b!6938461 b!6937624)))

(assert (=> bs!1853525 (not (= lambda!395176 lambda!395114))))

(declare-fun bs!1853526 () Bool)

(assert (= bs!1853526 (and b!6938461 d!2167230)))

(assert (=> bs!1853526 (not (= lambda!395176 lambda!395165))))

(declare-fun bs!1853527 () Bool)

(assert (= bs!1853527 (and b!6938461 b!6938395)))

(assert (=> bs!1853527 (not (= lambda!395176 lambda!395173))))

(declare-fun bs!1853528 () Bool)

(assert (= bs!1853528 (and b!6938461 b!6938392)))

(assert (=> bs!1853528 (= (and (= (_1!37121 lt!2474938) s!14361) (= (reg!17290 r1!6342) (reg!17290 lt!2474941)) (= r1!6342 lt!2474941)) (= lambda!395176 lambda!395170))))

(assert (=> bs!1853519 (not (= lambda!395176 lambda!395141))))

(assert (=> bs!1853526 (not (= lambda!395176 lambda!395164))))

(declare-fun bs!1853529 () Bool)

(assert (= bs!1853529 (and b!6938461 b!6938214)))

(assert (=> bs!1853529 (not (= lambda!395176 lambda!395162))))

(declare-fun bs!1853530 () Bool)

(assert (= bs!1853530 (and b!6938461 b!6937621)))

(assert (=> bs!1853530 (not (= lambda!395176 lambda!395110))))

(assert (=> bs!1853518 (not (= lambda!395176 lambda!395112))))

(assert (=> bs!1853530 (not (= lambda!395176 lambda!395109))))

(declare-fun bs!1853531 () Bool)

(assert (= bs!1853531 (and b!6938461 b!6938278)))

(assert (=> bs!1853531 (= (and (= (_1!37121 lt!2474938) s!14361) (= (reg!17290 r1!6342) (reg!17290 lt!2474946)) (= r1!6342 lt!2474946)) (= lambda!395176 lambda!395168))))

(assert (=> bs!1853525 (not (= lambda!395176 lambda!395113))))

(declare-fun bs!1853532 () Bool)

(assert (= bs!1853532 (and b!6938461 b!6938222)))

(assert (=> bs!1853532 (= (and (= (_1!37121 lt!2474938) lt!2474940) (= (reg!17290 r1!6342) (reg!17290 lt!2474959)) (= r1!6342 lt!2474959)) (= lambda!395176 lambda!395160))))

(declare-fun bs!1853533 () Bool)

(assert (= bs!1853533 (and b!6938461 b!6938384)))

(assert (=> bs!1853533 (not (= lambda!395176 lambda!395171))))

(declare-fun bs!1853534 () Bool)

(assert (= bs!1853534 (and b!6938461 b!6938410)))

(assert (=> bs!1853534 (not (= lambda!395176 lambda!395175))))

(declare-fun bs!1853535 () Bool)

(assert (= bs!1853535 (and b!6938461 d!2167214)))

(assert (=> bs!1853535 (not (= lambda!395176 lambda!395159))))

(assert (=> b!6938461 true))

(assert (=> b!6938461 true))

(declare-fun bs!1853536 () Bool)

(declare-fun b!6938453 () Bool)

(assert (= bs!1853536 (and b!6938453 b!6938097)))

(declare-fun lambda!395177 () Int)

(assert (=> bs!1853536 (not (= lambda!395177 lambda!395153))))

(declare-fun bs!1853537 () Bool)

(assert (= bs!1853537 (and b!6938453 b!6937619)))

(assert (=> bs!1853537 (not (= lambda!395177 lambda!395111))))

(declare-fun bs!1853538 () Bool)

(assert (= bs!1853538 (and b!6938453 d!2167134)))

(assert (=> bs!1853538 (not (= lambda!395177 lambda!395139))))

(declare-fun bs!1853539 () Bool)

(assert (= bs!1853539 (and b!6938453 d!2167124)))

(assert (=> bs!1853539 (not (= lambda!395177 lambda!395128))))

(declare-fun bs!1853540 () Bool)

(assert (= bs!1853540 (and b!6938453 b!6938403)))

(assert (=> bs!1853540 (not (= lambda!395177 lambda!395172))))

(declare-fun bs!1853541 () Bool)

(assert (= bs!1853541 (and b!6938453 b!6938089)))

(assert (=> bs!1853541 (= (and (= (_1!37121 lt!2474938) (_2!37121 lt!2474938)) (= (regOne!34434 r1!6342) (regOne!34434 lt!2474950)) (= (regTwo!34434 r1!6342) (regTwo!34434 lt!2474950))) (= lambda!395177 lambda!395154))))

(declare-fun bs!1853542 () Bool)

(assert (= bs!1853542 (and b!6938453 b!6938418)))

(assert (=> bs!1853542 (not (= lambda!395177 lambda!395174))))

(declare-fun bs!1853543 () Bool)

(assert (= bs!1853543 (and b!6938453 b!6938270)))

(assert (=> bs!1853543 (= (and (= (_1!37121 lt!2474938) s!14361) (= (regOne!34434 r1!6342) (regOne!34434 lt!2474946)) (= (regTwo!34434 r1!6342) (regTwo!34434 lt!2474946))) (= lambda!395177 lambda!395169))))

(declare-fun bs!1853544 () Bool)

(assert (= bs!1853544 (and b!6938453 b!6937624)))

(assert (=> bs!1853544 (= (and (= (_1!37121 lt!2474938) lt!2474940) (= (regOne!34434 r1!6342) r1!6342) (= (regTwo!34434 r1!6342) r2!6280)) (= lambda!395177 lambda!395114))))

(declare-fun bs!1853545 () Bool)

(assert (= bs!1853545 (and b!6938453 b!6938395)))

(assert (=> bs!1853545 (= (and (= (_1!37121 lt!2474938) (_1!37121 lt!2474942)) (= (regOne!34434 r1!6342) (regOne!34434 r2!6280)) (= (regTwo!34434 r1!6342) (regTwo!34434 r2!6280))) (= lambda!395177 lambda!395173))))

(declare-fun bs!1853546 () Bool)

(assert (= bs!1853546 (and b!6938453 b!6938392)))

(assert (=> bs!1853546 (not (= lambda!395177 lambda!395170))))

(assert (=> bs!1853538 (= (and (= (_1!37121 lt!2474938) (_2!37121 lt!2474938)) (= (regOne!34434 r1!6342) r2!6280) (= (regTwo!34434 r1!6342) r3!135)) (= lambda!395177 lambda!395141))))

(declare-fun bs!1853547 () Bool)

(assert (= bs!1853547 (and b!6938453 d!2167230)))

(assert (=> bs!1853547 (not (= lambda!395177 lambda!395164))))

(declare-fun bs!1853548 () Bool)

(assert (= bs!1853548 (and b!6938453 b!6938214)))

(assert (=> bs!1853548 (= (and (= (_1!37121 lt!2474938) lt!2474940) (= (regOne!34434 r1!6342) (regOne!34434 lt!2474959)) (= (regTwo!34434 r1!6342) (regTwo!34434 lt!2474959))) (= lambda!395177 lambda!395162))))

(declare-fun bs!1853549 () Bool)

(assert (= bs!1853549 (and b!6938453 b!6937621)))

(assert (=> bs!1853549 (= (and (= (_1!37121 lt!2474938) s!14361) (= (regOne!34434 r1!6342) r1!6342) (= (regTwo!34434 r1!6342) lt!2474950)) (= lambda!395177 lambda!395110))))

(assert (=> bs!1853537 (= (and (= (_1!37121 lt!2474938) (_2!37121 lt!2474938)) (= (regOne!34434 r1!6342) r2!6280) (= (regTwo!34434 r1!6342) r3!135)) (= lambda!395177 lambda!395112))))

(assert (=> bs!1853549 (not (= lambda!395177 lambda!395109))))

(declare-fun bs!1853550 () Bool)

(assert (= bs!1853550 (and b!6938453 b!6938278)))

(assert (=> bs!1853550 (not (= lambda!395177 lambda!395168))))

(assert (=> bs!1853547 (= (and (= (_1!37121 lt!2474938) lt!2474940) (= (regOne!34434 r1!6342) r1!6342) (= (regTwo!34434 r1!6342) r2!6280)) (= lambda!395177 lambda!395165))))

(declare-fun bs!1853551 () Bool)

(assert (= bs!1853551 (and b!6938453 b!6938461)))

(assert (=> bs!1853551 (not (= lambda!395177 lambda!395176))))

(assert (=> bs!1853544 (not (= lambda!395177 lambda!395113))))

(declare-fun bs!1853552 () Bool)

(assert (= bs!1853552 (and b!6938453 b!6938222)))

(assert (=> bs!1853552 (not (= lambda!395177 lambda!395160))))

(declare-fun bs!1853553 () Bool)

(assert (= bs!1853553 (and b!6938453 b!6938384)))

(assert (=> bs!1853553 (= (and (= (_1!37121 lt!2474938) s!14361) (= (regOne!34434 r1!6342) (regOne!34434 lt!2474941)) (= (regTwo!34434 r1!6342) (regTwo!34434 lt!2474941))) (= lambda!395177 lambda!395171))))

(declare-fun bs!1853554 () Bool)

(assert (= bs!1853554 (and b!6938453 b!6938410)))

(assert (=> bs!1853554 (= (and (= (_1!37121 lt!2474938) (_2!37121 lt!2474942)) (= (regOne!34434 r1!6342) (regOne!34434 r3!135)) (= (regTwo!34434 r1!6342) (regTwo!34434 r3!135))) (= lambda!395177 lambda!395175))))

(declare-fun bs!1853555 () Bool)

(assert (= bs!1853555 (and b!6938453 d!2167214)))

(assert (=> bs!1853555 (not (= lambda!395177 lambda!395159))))

(assert (=> b!6938453 true))

(assert (=> b!6938453 true))

(declare-fun b!6938451 () Bool)

(declare-fun c!1287514 () Bool)

(assert (=> b!6938451 (= c!1287514 ((_ is Union!16961) r1!6342))))

(declare-fun e!4174256 () Bool)

(declare-fun e!4174255 () Bool)

(assert (=> b!6938451 (= e!4174256 e!4174255)))

(declare-fun b!6938452 () Bool)

(declare-fun e!4174253 () Bool)

(assert (=> b!6938452 (= e!4174255 e!4174253)))

(declare-fun c!1287512 () Bool)

(assert (=> b!6938452 (= c!1287512 ((_ is Star!16961) r1!6342))))

(declare-fun call!630388 () Bool)

(assert (=> b!6938453 (= e!4174253 call!630388)))

(declare-fun b!6938454 () Bool)

(declare-fun e!4174254 () Bool)

(assert (=> b!6938454 (= e!4174254 (matchRSpec!4018 (regTwo!34435 r1!6342) (_1!37121 lt!2474938)))))

(declare-fun b!6938455 () Bool)

(assert (=> b!6938455 (= e!4174255 e!4174254)))

(declare-fun res!2830197 () Bool)

(assert (=> b!6938455 (= res!2830197 (matchRSpec!4018 (regOne!34435 r1!6342) (_1!37121 lt!2474938)))))

(assert (=> b!6938455 (=> res!2830197 e!4174254)))

(declare-fun b!6938456 () Bool)

(assert (=> b!6938456 (= e!4174256 (= (_1!37121 lt!2474938) (Cons!66590 (c!1287333 r1!6342) Nil!66590)))))

(declare-fun b!6938457 () Bool)

(declare-fun res!2830196 () Bool)

(declare-fun e!4174251 () Bool)

(assert (=> b!6938457 (=> res!2830196 e!4174251)))

(declare-fun call!630387 () Bool)

(assert (=> b!6938457 (= res!2830196 call!630387)))

(assert (=> b!6938457 (= e!4174253 e!4174251)))

(declare-fun b!6938458 () Bool)

(declare-fun e!4174250 () Bool)

(declare-fun e!4174252 () Bool)

(assert (=> b!6938458 (= e!4174250 e!4174252)))

(declare-fun res!2830195 () Bool)

(assert (=> b!6938458 (= res!2830195 (not ((_ is EmptyLang!16961) r1!6342)))))

(assert (=> b!6938458 (=> (not res!2830195) (not e!4174252))))

(declare-fun b!6938459 () Bool)

(assert (=> b!6938459 (= e!4174250 call!630387)))

(declare-fun d!2167274 () Bool)

(declare-fun c!1287513 () Bool)

(assert (=> d!2167274 (= c!1287513 ((_ is EmptyExpr!16961) r1!6342))))

(assert (=> d!2167274 (= (matchRSpec!4018 r1!6342 (_1!37121 lt!2474938)) e!4174250)))

(declare-fun b!6938460 () Bool)

(declare-fun c!1287515 () Bool)

(assert (=> b!6938460 (= c!1287515 ((_ is ElementMatch!16961) r1!6342))))

(assert (=> b!6938460 (= e!4174252 e!4174256)))

(declare-fun bm!630382 () Bool)

(assert (=> bm!630382 (= call!630387 (isEmpty!38857 (_1!37121 lt!2474938)))))

(assert (=> b!6938461 (= e!4174251 call!630388)))

(declare-fun bm!630383 () Bool)

(assert (=> bm!630383 (= call!630388 (Exists!3961 (ite c!1287512 lambda!395176 lambda!395177)))))

(assert (= (and d!2167274 c!1287513) b!6938459))

(assert (= (and d!2167274 (not c!1287513)) b!6938458))

(assert (= (and b!6938458 res!2830195) b!6938460))

(assert (= (and b!6938460 c!1287515) b!6938456))

(assert (= (and b!6938460 (not c!1287515)) b!6938451))

(assert (= (and b!6938451 c!1287514) b!6938455))

(assert (= (and b!6938451 (not c!1287514)) b!6938452))

(assert (= (and b!6938455 (not res!2830197)) b!6938454))

(assert (= (and b!6938452 c!1287512) b!6938457))

(assert (= (and b!6938452 (not c!1287512)) b!6938453))

(assert (= (and b!6938457 (not res!2830196)) b!6938461))

(assert (= (or b!6938461 b!6938453) bm!630383))

(assert (= (or b!6938459 b!6938457) bm!630382))

(declare-fun m!7643976 () Bool)

(assert (=> b!6938454 m!7643976))

(declare-fun m!7643978 () Bool)

(assert (=> b!6938455 m!7643978))

(assert (=> bm!630382 m!7643964))

(declare-fun m!7643980 () Bool)

(assert (=> bm!630383 m!7643980))

(assert (=> b!6937621 d!2167274))

(declare-fun d!2167276 () Bool)

(assert (=> d!2167276 (= (get!23378 lt!2474948) (v!53001 lt!2474948))))

(assert (=> b!6937621 d!2167276))

(declare-fun d!2167278 () Bool)

(assert (=> d!2167278 (= (Exists!3961 lambda!395110) (choose!51683 lambda!395110))))

(declare-fun bs!1853556 () Bool)

(assert (= bs!1853556 d!2167278))

(declare-fun m!7643982 () Bool)

(assert (=> bs!1853556 m!7643982))

(assert (=> b!6937621 d!2167278))

(declare-fun d!2167280 () Bool)

(assert (=> d!2167280 (= (matchR!9100 r1!6342 (_1!37121 lt!2474938)) (matchRSpec!4018 r1!6342 (_1!37121 lt!2474938)))))

(declare-fun lt!2475080 () Unit!160646)

(assert (=> d!2167280 (= lt!2475080 (choose!51680 r1!6342 (_1!37121 lt!2474938)))))

(assert (=> d!2167280 (validRegex!8667 r1!6342)))

(assert (=> d!2167280 (= (mainMatchTheorem!4018 r1!6342 (_1!37121 lt!2474938)) lt!2475080)))

(declare-fun bs!1853557 () Bool)

(assert (= bs!1853557 d!2167280))

(assert (=> bs!1853557 m!7643274))

(assert (=> bs!1853557 m!7643280))

(declare-fun m!7643984 () Bool)

(assert (=> bs!1853557 m!7643984))

(assert (=> bs!1853557 m!7643214))

(assert (=> b!6937621 d!2167280))

(declare-fun bs!1853558 () Bool)

(declare-fun d!2167282 () Bool)

(assert (= bs!1853558 (and d!2167282 b!6938097)))

(declare-fun lambda!395178 () Int)

(assert (=> bs!1853558 (not (= lambda!395178 lambda!395153))))

(declare-fun bs!1853559 () Bool)

(assert (= bs!1853559 (and d!2167282 b!6937619)))

(assert (=> bs!1853559 (= (and (= s!14361 (_2!37121 lt!2474938)) (= r1!6342 r2!6280) (= lt!2474950 r3!135)) (= lambda!395178 lambda!395111))))

(declare-fun bs!1853560 () Bool)

(assert (= bs!1853560 (and d!2167282 d!2167134)))

(assert (=> bs!1853560 (= (and (= s!14361 (_2!37121 lt!2474938)) (= r1!6342 r2!6280) (= lt!2474950 r3!135)) (= lambda!395178 lambda!395139))))

(declare-fun bs!1853561 () Bool)

(assert (= bs!1853561 (and d!2167282 d!2167124)))

(assert (=> bs!1853561 (= (and (= s!14361 (_2!37121 lt!2474938)) (= r1!6342 r2!6280) (= lt!2474950 r3!135)) (= lambda!395178 lambda!395128))))

(declare-fun bs!1853562 () Bool)

(assert (= bs!1853562 (and d!2167282 b!6938403)))

(assert (=> bs!1853562 (not (= lambda!395178 lambda!395172))))

(declare-fun bs!1853563 () Bool)

(assert (= bs!1853563 (and d!2167282 b!6938089)))

(assert (=> bs!1853563 (not (= lambda!395178 lambda!395154))))

(declare-fun bs!1853564 () Bool)

(assert (= bs!1853564 (and d!2167282 b!6938418)))

(assert (=> bs!1853564 (not (= lambda!395178 lambda!395174))))

(declare-fun bs!1853565 () Bool)

(assert (= bs!1853565 (and d!2167282 b!6938270)))

(assert (=> bs!1853565 (not (= lambda!395178 lambda!395169))))

(declare-fun bs!1853566 () Bool)

(assert (= bs!1853566 (and d!2167282 b!6937624)))

(assert (=> bs!1853566 (not (= lambda!395178 lambda!395114))))

(declare-fun bs!1853567 () Bool)

(assert (= bs!1853567 (and d!2167282 b!6938395)))

(assert (=> bs!1853567 (not (= lambda!395178 lambda!395173))))

(declare-fun bs!1853568 () Bool)

(assert (= bs!1853568 (and d!2167282 b!6938392)))

(assert (=> bs!1853568 (not (= lambda!395178 lambda!395170))))

(declare-fun bs!1853569 () Bool)

(assert (= bs!1853569 (and d!2167282 b!6938453)))

(assert (=> bs!1853569 (not (= lambda!395178 lambda!395177))))

(assert (=> bs!1853560 (not (= lambda!395178 lambda!395141))))

(declare-fun bs!1853570 () Bool)

(assert (= bs!1853570 (and d!2167282 d!2167230)))

(assert (=> bs!1853570 (= (and (= s!14361 lt!2474940) (= lt!2474950 r2!6280)) (= lambda!395178 lambda!395164))))

(declare-fun bs!1853571 () Bool)

(assert (= bs!1853571 (and d!2167282 b!6938214)))

(assert (=> bs!1853571 (not (= lambda!395178 lambda!395162))))

(declare-fun bs!1853572 () Bool)

(assert (= bs!1853572 (and d!2167282 b!6937621)))

(assert (=> bs!1853572 (not (= lambda!395178 lambda!395110))))

(assert (=> bs!1853559 (not (= lambda!395178 lambda!395112))))

(assert (=> bs!1853572 (= lambda!395178 lambda!395109)))

(declare-fun bs!1853573 () Bool)

(assert (= bs!1853573 (and d!2167282 b!6938278)))

(assert (=> bs!1853573 (not (= lambda!395178 lambda!395168))))

(assert (=> bs!1853570 (not (= lambda!395178 lambda!395165))))

(declare-fun bs!1853574 () Bool)

(assert (= bs!1853574 (and d!2167282 b!6938461)))

(assert (=> bs!1853574 (not (= lambda!395178 lambda!395176))))

(assert (=> bs!1853566 (= (and (= s!14361 lt!2474940) (= lt!2474950 r2!6280)) (= lambda!395178 lambda!395113))))

(declare-fun bs!1853575 () Bool)

(assert (= bs!1853575 (and d!2167282 b!6938222)))

(assert (=> bs!1853575 (not (= lambda!395178 lambda!395160))))

(declare-fun bs!1853576 () Bool)

(assert (= bs!1853576 (and d!2167282 b!6938384)))

(assert (=> bs!1853576 (not (= lambda!395178 lambda!395171))))

(declare-fun bs!1853577 () Bool)

(assert (= bs!1853577 (and d!2167282 b!6938410)))

(assert (=> bs!1853577 (not (= lambda!395178 lambda!395175))))

(declare-fun bs!1853578 () Bool)

(assert (= bs!1853578 (and d!2167282 d!2167214)))

(assert (=> bs!1853578 (= (and (= s!14361 lt!2474940) (= lt!2474950 r2!6280)) (= lambda!395178 lambda!395159))))

(assert (=> d!2167282 true))

(assert (=> d!2167282 true))

(assert (=> d!2167282 true))

(assert (=> d!2167282 (= (isDefined!13431 (findConcatSeparation!3144 r1!6342 lt!2474950 Nil!66590 s!14361 s!14361)) (Exists!3961 lambda!395178))))

(declare-fun lt!2475081 () Unit!160646)

(assert (=> d!2167282 (= lt!2475081 (choose!51682 r1!6342 lt!2474950 s!14361))))

(assert (=> d!2167282 (validRegex!8667 r1!6342)))

(assert (=> d!2167282 (= (lemmaFindConcatSeparationEquivalentToExists!2902 r1!6342 lt!2474950 s!14361) lt!2475081)))

(declare-fun bs!1853579 () Bool)

(assert (= bs!1853579 d!2167282))

(assert (=> bs!1853579 m!7643214))

(declare-fun m!7643986 () Bool)

(assert (=> bs!1853579 m!7643986))

(declare-fun m!7643988 () Bool)

(assert (=> bs!1853579 m!7643988))

(assert (=> bs!1853579 m!7643212))

(assert (=> bs!1853579 m!7643212))

(declare-fun m!7643990 () Bool)

(assert (=> bs!1853579 m!7643990))

(assert (=> b!6937621 d!2167282))

(declare-fun bs!1853580 () Bool)

(declare-fun d!2167284 () Bool)

(assert (= bs!1853580 (and d!2167284 b!6938097)))

(declare-fun lambda!395179 () Int)

(assert (=> bs!1853580 (not (= lambda!395179 lambda!395153))))

(declare-fun bs!1853581 () Bool)

(assert (= bs!1853581 (and d!2167284 b!6937619)))

(assert (=> bs!1853581 (= (and (= s!14361 (_2!37121 lt!2474938)) (= r1!6342 r2!6280) (= lt!2474950 r3!135)) (= lambda!395179 lambda!395111))))

(declare-fun bs!1853582 () Bool)

(assert (= bs!1853582 (and d!2167284 d!2167134)))

(assert (=> bs!1853582 (= (and (= s!14361 (_2!37121 lt!2474938)) (= r1!6342 r2!6280) (= lt!2474950 r3!135)) (= lambda!395179 lambda!395139))))

(declare-fun bs!1853583 () Bool)

(assert (= bs!1853583 (and d!2167284 d!2167124)))

(assert (=> bs!1853583 (= (and (= s!14361 (_2!37121 lt!2474938)) (= r1!6342 r2!6280) (= lt!2474950 r3!135)) (= lambda!395179 lambda!395128))))

(declare-fun bs!1853584 () Bool)

(assert (= bs!1853584 (and d!2167284 b!6938403)))

(assert (=> bs!1853584 (not (= lambda!395179 lambda!395172))))

(declare-fun bs!1853585 () Bool)

(assert (= bs!1853585 (and d!2167284 b!6938418)))

(assert (=> bs!1853585 (not (= lambda!395179 lambda!395174))))

(declare-fun bs!1853586 () Bool)

(assert (= bs!1853586 (and d!2167284 b!6938270)))

(assert (=> bs!1853586 (not (= lambda!395179 lambda!395169))))

(declare-fun bs!1853587 () Bool)

(assert (= bs!1853587 (and d!2167284 b!6937624)))

(assert (=> bs!1853587 (not (= lambda!395179 lambda!395114))))

(declare-fun bs!1853588 () Bool)

(assert (= bs!1853588 (and d!2167284 b!6938395)))

(assert (=> bs!1853588 (not (= lambda!395179 lambda!395173))))

(declare-fun bs!1853589 () Bool)

(assert (= bs!1853589 (and d!2167284 b!6938392)))

(assert (=> bs!1853589 (not (= lambda!395179 lambda!395170))))

(declare-fun bs!1853590 () Bool)

(assert (= bs!1853590 (and d!2167284 b!6938453)))

(assert (=> bs!1853590 (not (= lambda!395179 lambda!395177))))

(assert (=> bs!1853582 (not (= lambda!395179 lambda!395141))))

(declare-fun bs!1853591 () Bool)

(assert (= bs!1853591 (and d!2167284 d!2167230)))

(assert (=> bs!1853591 (= (and (= s!14361 lt!2474940) (= lt!2474950 r2!6280)) (= lambda!395179 lambda!395164))))

(declare-fun bs!1853592 () Bool)

(assert (= bs!1853592 (and d!2167284 b!6938214)))

(assert (=> bs!1853592 (not (= lambda!395179 lambda!395162))))

(declare-fun bs!1853593 () Bool)

(assert (= bs!1853593 (and d!2167284 d!2167282)))

(assert (=> bs!1853593 (= lambda!395179 lambda!395178)))

(declare-fun bs!1853594 () Bool)

(assert (= bs!1853594 (and d!2167284 b!6938089)))

(assert (=> bs!1853594 (not (= lambda!395179 lambda!395154))))

(declare-fun bs!1853595 () Bool)

(assert (= bs!1853595 (and d!2167284 b!6937621)))

(assert (=> bs!1853595 (not (= lambda!395179 lambda!395110))))

(assert (=> bs!1853581 (not (= lambda!395179 lambda!395112))))

(assert (=> bs!1853595 (= lambda!395179 lambda!395109)))

(declare-fun bs!1853596 () Bool)

(assert (= bs!1853596 (and d!2167284 b!6938278)))

(assert (=> bs!1853596 (not (= lambda!395179 lambda!395168))))

(assert (=> bs!1853591 (not (= lambda!395179 lambda!395165))))

(declare-fun bs!1853597 () Bool)

(assert (= bs!1853597 (and d!2167284 b!6938461)))

(assert (=> bs!1853597 (not (= lambda!395179 lambda!395176))))

(assert (=> bs!1853587 (= (and (= s!14361 lt!2474940) (= lt!2474950 r2!6280)) (= lambda!395179 lambda!395113))))

(declare-fun bs!1853598 () Bool)

(assert (= bs!1853598 (and d!2167284 b!6938222)))

(assert (=> bs!1853598 (not (= lambda!395179 lambda!395160))))

(declare-fun bs!1853599 () Bool)

(assert (= bs!1853599 (and d!2167284 b!6938384)))

(assert (=> bs!1853599 (not (= lambda!395179 lambda!395171))))

(declare-fun bs!1853600 () Bool)

(assert (= bs!1853600 (and d!2167284 b!6938410)))

(assert (=> bs!1853600 (not (= lambda!395179 lambda!395175))))

(declare-fun bs!1853601 () Bool)

(assert (= bs!1853601 (and d!2167284 d!2167214)))

(assert (=> bs!1853601 (= (and (= s!14361 lt!2474940) (= lt!2474950 r2!6280)) (= lambda!395179 lambda!395159))))

(assert (=> d!2167284 true))

(assert (=> d!2167284 true))

(assert (=> d!2167284 true))

(declare-fun lambda!395180 () Int)

(assert (=> bs!1853580 (not (= lambda!395180 lambda!395153))))

(assert (=> bs!1853581 (not (= lambda!395180 lambda!395111))))

(assert (=> bs!1853582 (not (= lambda!395180 lambda!395139))))

(assert (=> bs!1853583 (not (= lambda!395180 lambda!395128))))

(assert (=> bs!1853584 (not (= lambda!395180 lambda!395172))))

(assert (=> bs!1853585 (not (= lambda!395180 lambda!395174))))

(assert (=> bs!1853586 (= (and (= r1!6342 (regOne!34434 lt!2474946)) (= lt!2474950 (regTwo!34434 lt!2474946))) (= lambda!395180 lambda!395169))))

(assert (=> bs!1853587 (= (and (= s!14361 lt!2474940) (= lt!2474950 r2!6280)) (= lambda!395180 lambda!395114))))

(assert (=> bs!1853588 (= (and (= s!14361 (_1!37121 lt!2474942)) (= r1!6342 (regOne!34434 r2!6280)) (= lt!2474950 (regTwo!34434 r2!6280))) (= lambda!395180 lambda!395173))))

(assert (=> bs!1853590 (= (and (= s!14361 (_1!37121 lt!2474938)) (= r1!6342 (regOne!34434 r1!6342)) (= lt!2474950 (regTwo!34434 r1!6342))) (= lambda!395180 lambda!395177))))

(assert (=> bs!1853582 (= (and (= s!14361 (_2!37121 lt!2474938)) (= r1!6342 r2!6280) (= lt!2474950 r3!135)) (= lambda!395180 lambda!395141))))

(assert (=> bs!1853591 (not (= lambda!395180 lambda!395164))))

(assert (=> bs!1853592 (= (and (= s!14361 lt!2474940) (= r1!6342 (regOne!34434 lt!2474959)) (= lt!2474950 (regTwo!34434 lt!2474959))) (= lambda!395180 lambda!395162))))

(assert (=> bs!1853593 (not (= lambda!395180 lambda!395178))))

(assert (=> bs!1853594 (= (and (= s!14361 (_2!37121 lt!2474938)) (= r1!6342 (regOne!34434 lt!2474950)) (= lt!2474950 (regTwo!34434 lt!2474950))) (= lambda!395180 lambda!395154))))

(assert (=> bs!1853595 (= lambda!395180 lambda!395110)))

(assert (=> bs!1853581 (= (and (= s!14361 (_2!37121 lt!2474938)) (= r1!6342 r2!6280) (= lt!2474950 r3!135)) (= lambda!395180 lambda!395112))))

(assert (=> bs!1853595 (not (= lambda!395180 lambda!395109))))

(assert (=> bs!1853596 (not (= lambda!395180 lambda!395168))))

(assert (=> bs!1853591 (= (and (= s!14361 lt!2474940) (= lt!2474950 r2!6280)) (= lambda!395180 lambda!395165))))

(assert (=> bs!1853597 (not (= lambda!395180 lambda!395176))))

(declare-fun bs!1853602 () Bool)

(assert (= bs!1853602 d!2167284))

(assert (=> bs!1853602 (not (= lambda!395180 lambda!395179))))

(assert (=> bs!1853589 (not (= lambda!395180 lambda!395170))))

(assert (=> bs!1853587 (not (= lambda!395180 lambda!395113))))

(assert (=> bs!1853598 (not (= lambda!395180 lambda!395160))))

(assert (=> bs!1853599 (= (and (= r1!6342 (regOne!34434 lt!2474941)) (= lt!2474950 (regTwo!34434 lt!2474941))) (= lambda!395180 lambda!395171))))

(assert (=> bs!1853600 (= (and (= s!14361 (_2!37121 lt!2474942)) (= r1!6342 (regOne!34434 r3!135)) (= lt!2474950 (regTwo!34434 r3!135))) (= lambda!395180 lambda!395175))))

(assert (=> bs!1853601 (not (= lambda!395180 lambda!395159))))

(assert (=> d!2167284 true))

(assert (=> d!2167284 true))

(assert (=> d!2167284 true))

(assert (=> d!2167284 (= (Exists!3961 lambda!395179) (Exists!3961 lambda!395180))))

(declare-fun lt!2475082 () Unit!160646)

(assert (=> d!2167284 (= lt!2475082 (choose!51684 r1!6342 lt!2474950 s!14361))))

(assert (=> d!2167284 (validRegex!8667 r1!6342)))

(assert (=> d!2167284 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2422 r1!6342 lt!2474950 s!14361) lt!2475082)))

(declare-fun m!7643992 () Bool)

(assert (=> bs!1853602 m!7643992))

(declare-fun m!7643994 () Bool)

(assert (=> bs!1853602 m!7643994))

(declare-fun m!7643996 () Bool)

(assert (=> bs!1853602 m!7643996))

(assert (=> bs!1853602 m!7643214))

(assert (=> b!6937621 d!2167284))

(declare-fun d!2167286 () Bool)

(assert (=> d!2167286 (= (Exists!3961 lambda!395109) (choose!51683 lambda!395109))))

(declare-fun bs!1853603 () Bool)

(assert (= bs!1853603 d!2167286))

(declare-fun m!7643998 () Bool)

(assert (=> bs!1853603 m!7643998))

(assert (=> b!6937621 d!2167286))

(declare-fun b!6938462 () Bool)

(declare-fun e!4174262 () Bool)

(declare-fun e!4174263 () Bool)

(assert (=> b!6938462 (= e!4174262 e!4174263)))

(declare-fun c!1287517 () Bool)

(assert (=> b!6938462 (= c!1287517 ((_ is Union!16961) r2!6280))))

(declare-fun c!1287516 () Bool)

(declare-fun call!630389 () Bool)

(declare-fun bm!630384 () Bool)

(assert (=> bm!630384 (= call!630389 (validRegex!8667 (ite c!1287516 (reg!17290 r2!6280) (ite c!1287517 (regOne!34435 r2!6280) (regTwo!34434 r2!6280)))))))

(declare-fun b!6938463 () Bool)

(declare-fun res!2830198 () Bool)

(declare-fun e!4174257 () Bool)

(assert (=> b!6938463 (=> (not res!2830198) (not e!4174257))))

(declare-fun call!630390 () Bool)

(assert (=> b!6938463 (= res!2830198 call!630390)))

(assert (=> b!6938463 (= e!4174263 e!4174257)))

(declare-fun b!6938464 () Bool)

(declare-fun e!4174261 () Bool)

(declare-fun e!4174258 () Bool)

(assert (=> b!6938464 (= e!4174261 e!4174258)))

(declare-fun res!2830199 () Bool)

(assert (=> b!6938464 (=> (not res!2830199) (not e!4174258))))

(declare-fun call!630391 () Bool)

(assert (=> b!6938464 (= res!2830199 call!630391)))

(declare-fun b!6938465 () Bool)

(declare-fun e!4174259 () Bool)

(assert (=> b!6938465 (= e!4174262 e!4174259)))

(declare-fun res!2830200 () Bool)

(assert (=> b!6938465 (= res!2830200 (not (nullable!6778 (reg!17290 r2!6280))))))

(assert (=> b!6938465 (=> (not res!2830200) (not e!4174259))))

(declare-fun b!6938466 () Bool)

(assert (=> b!6938466 (= e!4174257 call!630391)))

(declare-fun b!6938467 () Bool)

(assert (=> b!6938467 (= e!4174258 call!630390)))

(declare-fun bm!630386 () Bool)

(assert (=> bm!630386 (= call!630391 (validRegex!8667 (ite c!1287517 (regTwo!34435 r2!6280) (regOne!34434 r2!6280))))))

(declare-fun b!6938468 () Bool)

(declare-fun res!2830202 () Bool)

(assert (=> b!6938468 (=> res!2830202 e!4174261)))

(assert (=> b!6938468 (= res!2830202 (not ((_ is Concat!25806) r2!6280)))))

(assert (=> b!6938468 (= e!4174263 e!4174261)))

(declare-fun d!2167288 () Bool)

(declare-fun res!2830201 () Bool)

(declare-fun e!4174260 () Bool)

(assert (=> d!2167288 (=> res!2830201 e!4174260)))

(assert (=> d!2167288 (= res!2830201 ((_ is ElementMatch!16961) r2!6280))))

(assert (=> d!2167288 (= (validRegex!8667 r2!6280) e!4174260)))

(declare-fun bm!630385 () Bool)

(assert (=> bm!630385 (= call!630390 call!630389)))

(declare-fun b!6938469 () Bool)

(assert (=> b!6938469 (= e!4174260 e!4174262)))

(assert (=> b!6938469 (= c!1287516 ((_ is Star!16961) r2!6280))))

(declare-fun b!6938470 () Bool)

(assert (=> b!6938470 (= e!4174259 call!630389)))

(assert (= (and d!2167288 (not res!2830201)) b!6938469))

(assert (= (and b!6938469 c!1287516) b!6938465))

(assert (= (and b!6938469 (not c!1287516)) b!6938462))

(assert (= (and b!6938465 res!2830200) b!6938470))

(assert (= (and b!6938462 c!1287517) b!6938463))

(assert (= (and b!6938462 (not c!1287517)) b!6938468))

(assert (= (and b!6938463 res!2830198) b!6938466))

(assert (= (and b!6938468 (not res!2830202)) b!6938464))

(assert (= (and b!6938464 res!2830199) b!6938467))

(assert (= (or b!6938463 b!6938467) bm!630385))

(assert (= (or b!6938466 b!6938464) bm!630386))

(assert (= (or b!6938470 bm!630385) bm!630384))

(declare-fun m!7644000 () Bool)

(assert (=> bm!630384 m!7644000))

(declare-fun m!7644002 () Bool)

(assert (=> b!6938465 m!7644002))

(declare-fun m!7644004 () Bool)

(assert (=> bm!630386 m!7644004))

(assert (=> b!6937622 d!2167288))

(declare-fun b!6938480 () Bool)

(declare-fun res!2830211 () Bool)

(declare-fun e!4174270 () Bool)

(assert (=> b!6938480 (=> (not res!2830211) (not e!4174270))))

(assert (=> b!6938480 (= res!2830211 (= (head!13906 Nil!66590) (head!13906 lt!2474940)))))

(declare-fun d!2167290 () Bool)

(declare-fun e!4174272 () Bool)

(assert (=> d!2167290 e!4174272))

(declare-fun res!2830214 () Bool)

(assert (=> d!2167290 (=> res!2830214 e!4174272)))

(declare-fun lt!2475085 () Bool)

(assert (=> d!2167290 (= res!2830214 (not lt!2475085))))

(declare-fun e!4174271 () Bool)

(assert (=> d!2167290 (= lt!2475085 e!4174271)))

(declare-fun res!2830213 () Bool)

(assert (=> d!2167290 (=> res!2830213 e!4174271)))

(assert (=> d!2167290 (= res!2830213 ((_ is Nil!66590) Nil!66590))))

(assert (=> d!2167290 (= (isPrefix!5818 Nil!66590 lt!2474940) lt!2475085)))

(declare-fun b!6938479 () Bool)

(assert (=> b!6938479 (= e!4174271 e!4174270)))

(declare-fun res!2830212 () Bool)

(assert (=> b!6938479 (=> (not res!2830212) (not e!4174270))))

(assert (=> b!6938479 (= res!2830212 (not ((_ is Nil!66590) lt!2474940)))))

(declare-fun b!6938482 () Bool)

(assert (=> b!6938482 (= e!4174272 (>= (size!40797 lt!2474940) (size!40797 Nil!66590)))))

(declare-fun b!6938481 () Bool)

(assert (=> b!6938481 (= e!4174270 (isPrefix!5818 (tail!12958 Nil!66590) (tail!12958 lt!2474940)))))

(assert (= (and d!2167290 (not res!2830213)) b!6938479))

(assert (= (and b!6938479 res!2830212) b!6938480))

(assert (= (and b!6938480 res!2830211) b!6938481))

(assert (= (and d!2167290 (not res!2830214)) b!6938482))

(declare-fun m!7644006 () Bool)

(assert (=> b!6938480 m!7644006))

(assert (=> b!6938480 m!7643834))

(assert (=> b!6938482 m!7643740))

(assert (=> b!6938482 m!7643702))

(declare-fun m!7644008 () Bool)

(assert (=> b!6938481 m!7644008))

(assert (=> b!6938481 m!7643838))

(assert (=> b!6938481 m!7644008))

(assert (=> b!6938481 m!7643838))

(declare-fun m!7644010 () Bool)

(assert (=> b!6938481 m!7644010))

(assert (=> b!6937611 d!2167290))

(declare-fun b!6938496 () Bool)

(declare-fun e!4174275 () Bool)

(declare-fun tp!1912568 () Bool)

(declare-fun tp!1912569 () Bool)

(assert (=> b!6938496 (= e!4174275 (and tp!1912568 tp!1912569))))

(assert (=> b!6937618 (= tp!1912465 e!4174275)))

(declare-fun b!6938493 () Bool)

(assert (=> b!6938493 (= e!4174275 tp_is_empty!43147)))

(declare-fun b!6938495 () Bool)

(declare-fun tp!1912566 () Bool)

(assert (=> b!6938495 (= e!4174275 tp!1912566)))

(declare-fun b!6938494 () Bool)

(declare-fun tp!1912570 () Bool)

(declare-fun tp!1912567 () Bool)

(assert (=> b!6938494 (= e!4174275 (and tp!1912570 tp!1912567))))

(assert (= (and b!6937618 ((_ is ElementMatch!16961) (regOne!34434 r1!6342))) b!6938493))

(assert (= (and b!6937618 ((_ is Concat!25806) (regOne!34434 r1!6342))) b!6938494))

(assert (= (and b!6937618 ((_ is Star!16961) (regOne!34434 r1!6342))) b!6938495))

(assert (= (and b!6937618 ((_ is Union!16961) (regOne!34434 r1!6342))) b!6938496))

(declare-fun b!6938500 () Bool)

(declare-fun e!4174276 () Bool)

(declare-fun tp!1912573 () Bool)

(declare-fun tp!1912574 () Bool)

(assert (=> b!6938500 (= e!4174276 (and tp!1912573 tp!1912574))))

(assert (=> b!6937618 (= tp!1912464 e!4174276)))

(declare-fun b!6938497 () Bool)

(assert (=> b!6938497 (= e!4174276 tp_is_empty!43147)))

(declare-fun b!6938499 () Bool)

(declare-fun tp!1912571 () Bool)

(assert (=> b!6938499 (= e!4174276 tp!1912571)))

(declare-fun b!6938498 () Bool)

(declare-fun tp!1912575 () Bool)

(declare-fun tp!1912572 () Bool)

(assert (=> b!6938498 (= e!4174276 (and tp!1912575 tp!1912572))))

(assert (= (and b!6937618 ((_ is ElementMatch!16961) (regTwo!34434 r1!6342))) b!6938497))

(assert (= (and b!6937618 ((_ is Concat!25806) (regTwo!34434 r1!6342))) b!6938498))

(assert (= (and b!6937618 ((_ is Star!16961) (regTwo!34434 r1!6342))) b!6938499))

(assert (= (and b!6937618 ((_ is Union!16961) (regTwo!34434 r1!6342))) b!6938500))

(declare-fun b!6938504 () Bool)

(declare-fun e!4174277 () Bool)

(declare-fun tp!1912578 () Bool)

(declare-fun tp!1912579 () Bool)

(assert (=> b!6938504 (= e!4174277 (and tp!1912578 tp!1912579))))

(assert (=> b!6937607 (= tp!1912454 e!4174277)))

(declare-fun b!6938501 () Bool)

(assert (=> b!6938501 (= e!4174277 tp_is_empty!43147)))

(declare-fun b!6938503 () Bool)

(declare-fun tp!1912576 () Bool)

(assert (=> b!6938503 (= e!4174277 tp!1912576)))

(declare-fun b!6938502 () Bool)

(declare-fun tp!1912580 () Bool)

(declare-fun tp!1912577 () Bool)

(assert (=> b!6938502 (= e!4174277 (and tp!1912580 tp!1912577))))

(assert (= (and b!6937607 ((_ is ElementMatch!16961) (reg!17290 r1!6342))) b!6938501))

(assert (= (and b!6937607 ((_ is Concat!25806) (reg!17290 r1!6342))) b!6938502))

(assert (= (and b!6937607 ((_ is Star!16961) (reg!17290 r1!6342))) b!6938503))

(assert (= (and b!6937607 ((_ is Union!16961) (reg!17290 r1!6342))) b!6938504))

(declare-fun b!6938508 () Bool)

(declare-fun e!4174278 () Bool)

(declare-fun tp!1912583 () Bool)

(declare-fun tp!1912584 () Bool)

(assert (=> b!6938508 (= e!4174278 (and tp!1912583 tp!1912584))))

(assert (=> b!6937609 (= tp!1912457 e!4174278)))

(declare-fun b!6938505 () Bool)

(assert (=> b!6938505 (= e!4174278 tp_is_empty!43147)))

(declare-fun b!6938507 () Bool)

(declare-fun tp!1912581 () Bool)

(assert (=> b!6938507 (= e!4174278 tp!1912581)))

(declare-fun b!6938506 () Bool)

(declare-fun tp!1912585 () Bool)

(declare-fun tp!1912582 () Bool)

(assert (=> b!6938506 (= e!4174278 (and tp!1912585 tp!1912582))))

(assert (= (and b!6937609 ((_ is ElementMatch!16961) (regOne!34435 r3!135))) b!6938505))

(assert (= (and b!6937609 ((_ is Concat!25806) (regOne!34435 r3!135))) b!6938506))

(assert (= (and b!6937609 ((_ is Star!16961) (regOne!34435 r3!135))) b!6938507))

(assert (= (and b!6937609 ((_ is Union!16961) (regOne!34435 r3!135))) b!6938508))

(declare-fun b!6938512 () Bool)

(declare-fun e!4174279 () Bool)

(declare-fun tp!1912588 () Bool)

(declare-fun tp!1912589 () Bool)

(assert (=> b!6938512 (= e!4174279 (and tp!1912588 tp!1912589))))

(assert (=> b!6937609 (= tp!1912452 e!4174279)))

(declare-fun b!6938509 () Bool)

(assert (=> b!6938509 (= e!4174279 tp_is_empty!43147)))

(declare-fun b!6938511 () Bool)

(declare-fun tp!1912586 () Bool)

(assert (=> b!6938511 (= e!4174279 tp!1912586)))

(declare-fun b!6938510 () Bool)

(declare-fun tp!1912590 () Bool)

(declare-fun tp!1912587 () Bool)

(assert (=> b!6938510 (= e!4174279 (and tp!1912590 tp!1912587))))

(assert (= (and b!6937609 ((_ is ElementMatch!16961) (regTwo!34435 r3!135))) b!6938509))

(assert (= (and b!6937609 ((_ is Concat!25806) (regTwo!34435 r3!135))) b!6938510))

(assert (= (and b!6937609 ((_ is Star!16961) (regTwo!34435 r3!135))) b!6938511))

(assert (= (and b!6937609 ((_ is Union!16961) (regTwo!34435 r3!135))) b!6938512))

(declare-fun b!6938516 () Bool)

(declare-fun e!4174280 () Bool)

(declare-fun tp!1912593 () Bool)

(declare-fun tp!1912594 () Bool)

(assert (=> b!6938516 (= e!4174280 (and tp!1912593 tp!1912594))))

(assert (=> b!6937616 (= tp!1912458 e!4174280)))

(declare-fun b!6938513 () Bool)

(assert (=> b!6938513 (= e!4174280 tp_is_empty!43147)))

(declare-fun b!6938515 () Bool)

(declare-fun tp!1912591 () Bool)

(assert (=> b!6938515 (= e!4174280 tp!1912591)))

(declare-fun b!6938514 () Bool)

(declare-fun tp!1912595 () Bool)

(declare-fun tp!1912592 () Bool)

(assert (=> b!6938514 (= e!4174280 (and tp!1912595 tp!1912592))))

(assert (= (and b!6937616 ((_ is ElementMatch!16961) (regOne!34435 r2!6280))) b!6938513))

(assert (= (and b!6937616 ((_ is Concat!25806) (regOne!34435 r2!6280))) b!6938514))

(assert (= (and b!6937616 ((_ is Star!16961) (regOne!34435 r2!6280))) b!6938515))

(assert (= (and b!6937616 ((_ is Union!16961) (regOne!34435 r2!6280))) b!6938516))

(declare-fun b!6938520 () Bool)

(declare-fun e!4174281 () Bool)

(declare-fun tp!1912598 () Bool)

(declare-fun tp!1912599 () Bool)

(assert (=> b!6938520 (= e!4174281 (and tp!1912598 tp!1912599))))

(assert (=> b!6937616 (= tp!1912453 e!4174281)))

(declare-fun b!6938517 () Bool)

(assert (=> b!6938517 (= e!4174281 tp_is_empty!43147)))

(declare-fun b!6938519 () Bool)

(declare-fun tp!1912596 () Bool)

(assert (=> b!6938519 (= e!4174281 tp!1912596)))

(declare-fun b!6938518 () Bool)

(declare-fun tp!1912600 () Bool)

(declare-fun tp!1912597 () Bool)

(assert (=> b!6938518 (= e!4174281 (and tp!1912600 tp!1912597))))

(assert (= (and b!6937616 ((_ is ElementMatch!16961) (regTwo!34435 r2!6280))) b!6938517))

(assert (= (and b!6937616 ((_ is Concat!25806) (regTwo!34435 r2!6280))) b!6938518))

(assert (= (and b!6937616 ((_ is Star!16961) (regTwo!34435 r2!6280))) b!6938519))

(assert (= (and b!6937616 ((_ is Union!16961) (regTwo!34435 r2!6280))) b!6938520))

(declare-fun b!6938524 () Bool)

(declare-fun e!4174282 () Bool)

(declare-fun tp!1912603 () Bool)

(declare-fun tp!1912604 () Bool)

(assert (=> b!6938524 (= e!4174282 (and tp!1912603 tp!1912604))))

(assert (=> b!6937626 (= tp!1912460 e!4174282)))

(declare-fun b!6938521 () Bool)

(assert (=> b!6938521 (= e!4174282 tp_is_empty!43147)))

(declare-fun b!6938523 () Bool)

(declare-fun tp!1912601 () Bool)

(assert (=> b!6938523 (= e!4174282 tp!1912601)))

(declare-fun b!6938522 () Bool)

(declare-fun tp!1912605 () Bool)

(declare-fun tp!1912602 () Bool)

(assert (=> b!6938522 (= e!4174282 (and tp!1912605 tp!1912602))))

(assert (= (and b!6937626 ((_ is ElementMatch!16961) (reg!17290 r3!135))) b!6938521))

(assert (= (and b!6937626 ((_ is Concat!25806) (reg!17290 r3!135))) b!6938522))

(assert (= (and b!6937626 ((_ is Star!16961) (reg!17290 r3!135))) b!6938523))

(assert (= (and b!6937626 ((_ is Union!16961) (reg!17290 r3!135))) b!6938524))

(declare-fun b!6938528 () Bool)

(declare-fun e!4174283 () Bool)

(declare-fun tp!1912608 () Bool)

(declare-fun tp!1912609 () Bool)

(assert (=> b!6938528 (= e!4174283 (and tp!1912608 tp!1912609))))

(assert (=> b!6937610 (= tp!1912462 e!4174283)))

(declare-fun b!6938525 () Bool)

(assert (=> b!6938525 (= e!4174283 tp_is_empty!43147)))

(declare-fun b!6938527 () Bool)

(declare-fun tp!1912606 () Bool)

(assert (=> b!6938527 (= e!4174283 tp!1912606)))

(declare-fun b!6938526 () Bool)

(declare-fun tp!1912610 () Bool)

(declare-fun tp!1912607 () Bool)

(assert (=> b!6938526 (= e!4174283 (and tp!1912610 tp!1912607))))

(assert (= (and b!6937610 ((_ is ElementMatch!16961) (regOne!34435 r1!6342))) b!6938525))

(assert (= (and b!6937610 ((_ is Concat!25806) (regOne!34435 r1!6342))) b!6938526))

(assert (= (and b!6937610 ((_ is Star!16961) (regOne!34435 r1!6342))) b!6938527))

(assert (= (and b!6937610 ((_ is Union!16961) (regOne!34435 r1!6342))) b!6938528))

(declare-fun b!6938532 () Bool)

(declare-fun e!4174284 () Bool)

(declare-fun tp!1912613 () Bool)

(declare-fun tp!1912614 () Bool)

(assert (=> b!6938532 (= e!4174284 (and tp!1912613 tp!1912614))))

(assert (=> b!6937610 (= tp!1912467 e!4174284)))

(declare-fun b!6938529 () Bool)

(assert (=> b!6938529 (= e!4174284 tp_is_empty!43147)))

(declare-fun b!6938531 () Bool)

(declare-fun tp!1912611 () Bool)

(assert (=> b!6938531 (= e!4174284 tp!1912611)))

(declare-fun b!6938530 () Bool)

(declare-fun tp!1912615 () Bool)

(declare-fun tp!1912612 () Bool)

(assert (=> b!6938530 (= e!4174284 (and tp!1912615 tp!1912612))))

(assert (= (and b!6937610 ((_ is ElementMatch!16961) (regTwo!34435 r1!6342))) b!6938529))

(assert (= (and b!6937610 ((_ is Concat!25806) (regTwo!34435 r1!6342))) b!6938530))

(assert (= (and b!6937610 ((_ is Star!16961) (regTwo!34435 r1!6342))) b!6938531))

(assert (= (and b!6937610 ((_ is Union!16961) (regTwo!34435 r1!6342))) b!6938532))

(declare-fun b!6938536 () Bool)

(declare-fun e!4174285 () Bool)

(declare-fun tp!1912618 () Bool)

(declare-fun tp!1912619 () Bool)

(assert (=> b!6938536 (= e!4174285 (and tp!1912618 tp!1912619))))

(assert (=> b!6937612 (= tp!1912456 e!4174285)))

(declare-fun b!6938533 () Bool)

(assert (=> b!6938533 (= e!4174285 tp_is_empty!43147)))

(declare-fun b!6938535 () Bool)

(declare-fun tp!1912616 () Bool)

(assert (=> b!6938535 (= e!4174285 tp!1912616)))

(declare-fun b!6938534 () Bool)

(declare-fun tp!1912620 () Bool)

(declare-fun tp!1912617 () Bool)

(assert (=> b!6938534 (= e!4174285 (and tp!1912620 tp!1912617))))

(assert (= (and b!6937612 ((_ is ElementMatch!16961) (regOne!34434 r2!6280))) b!6938533))

(assert (= (and b!6937612 ((_ is Concat!25806) (regOne!34434 r2!6280))) b!6938534))

(assert (= (and b!6937612 ((_ is Star!16961) (regOne!34434 r2!6280))) b!6938535))

(assert (= (and b!6937612 ((_ is Union!16961) (regOne!34434 r2!6280))) b!6938536))

(declare-fun b!6938540 () Bool)

(declare-fun e!4174286 () Bool)

(declare-fun tp!1912623 () Bool)

(declare-fun tp!1912624 () Bool)

(assert (=> b!6938540 (= e!4174286 (and tp!1912623 tp!1912624))))

(assert (=> b!6937612 (= tp!1912459 e!4174286)))

(declare-fun b!6938537 () Bool)

(assert (=> b!6938537 (= e!4174286 tp_is_empty!43147)))

(declare-fun b!6938539 () Bool)

(declare-fun tp!1912621 () Bool)

(assert (=> b!6938539 (= e!4174286 tp!1912621)))

(declare-fun b!6938538 () Bool)

(declare-fun tp!1912625 () Bool)

(declare-fun tp!1912622 () Bool)

(assert (=> b!6938538 (= e!4174286 (and tp!1912625 tp!1912622))))

(assert (= (and b!6937612 ((_ is ElementMatch!16961) (regTwo!34434 r2!6280))) b!6938537))

(assert (= (and b!6937612 ((_ is Concat!25806) (regTwo!34434 r2!6280))) b!6938538))

(assert (= (and b!6937612 ((_ is Star!16961) (regTwo!34434 r2!6280))) b!6938539))

(assert (= (and b!6937612 ((_ is Union!16961) (regTwo!34434 r2!6280))) b!6938540))

(declare-fun b!6938544 () Bool)

(declare-fun e!4174287 () Bool)

(declare-fun tp!1912628 () Bool)

(declare-fun tp!1912629 () Bool)

(assert (=> b!6938544 (= e!4174287 (and tp!1912628 tp!1912629))))

(assert (=> b!6937617 (= tp!1912455 e!4174287)))

(declare-fun b!6938541 () Bool)

(assert (=> b!6938541 (= e!4174287 tp_is_empty!43147)))

(declare-fun b!6938543 () Bool)

(declare-fun tp!1912626 () Bool)

(assert (=> b!6938543 (= e!4174287 tp!1912626)))

(declare-fun b!6938542 () Bool)

(declare-fun tp!1912630 () Bool)

(declare-fun tp!1912627 () Bool)

(assert (=> b!6938542 (= e!4174287 (and tp!1912630 tp!1912627))))

(assert (= (and b!6937617 ((_ is ElementMatch!16961) (regOne!34434 r3!135))) b!6938541))

(assert (= (and b!6937617 ((_ is Concat!25806) (regOne!34434 r3!135))) b!6938542))

(assert (= (and b!6937617 ((_ is Star!16961) (regOne!34434 r3!135))) b!6938543))

(assert (= (and b!6937617 ((_ is Union!16961) (regOne!34434 r3!135))) b!6938544))

(declare-fun b!6938548 () Bool)

(declare-fun e!4174288 () Bool)

(declare-fun tp!1912633 () Bool)

(declare-fun tp!1912634 () Bool)

(assert (=> b!6938548 (= e!4174288 (and tp!1912633 tp!1912634))))

(assert (=> b!6937617 (= tp!1912463 e!4174288)))

(declare-fun b!6938545 () Bool)

(assert (=> b!6938545 (= e!4174288 tp_is_empty!43147)))

(declare-fun b!6938547 () Bool)

(declare-fun tp!1912631 () Bool)

(assert (=> b!6938547 (= e!4174288 tp!1912631)))

(declare-fun b!6938546 () Bool)

(declare-fun tp!1912635 () Bool)

(declare-fun tp!1912632 () Bool)

(assert (=> b!6938546 (= e!4174288 (and tp!1912635 tp!1912632))))

(assert (= (and b!6937617 ((_ is ElementMatch!16961) (regTwo!34434 r3!135))) b!6938545))

(assert (= (and b!6937617 ((_ is Concat!25806) (regTwo!34434 r3!135))) b!6938546))

(assert (= (and b!6937617 ((_ is Star!16961) (regTwo!34434 r3!135))) b!6938547))

(assert (= (and b!6937617 ((_ is Union!16961) (regTwo!34434 r3!135))) b!6938548))

(declare-fun b!6938552 () Bool)

(declare-fun e!4174289 () Bool)

(declare-fun tp!1912638 () Bool)

(declare-fun tp!1912639 () Bool)

(assert (=> b!6938552 (= e!4174289 (and tp!1912638 tp!1912639))))

(assert (=> b!6937606 (= tp!1912461 e!4174289)))

(declare-fun b!6938549 () Bool)

(assert (=> b!6938549 (= e!4174289 tp_is_empty!43147)))

(declare-fun b!6938551 () Bool)

(declare-fun tp!1912636 () Bool)

(assert (=> b!6938551 (= e!4174289 tp!1912636)))

(declare-fun b!6938550 () Bool)

(declare-fun tp!1912640 () Bool)

(declare-fun tp!1912637 () Bool)

(assert (=> b!6938550 (= e!4174289 (and tp!1912640 tp!1912637))))

(assert (= (and b!6937606 ((_ is ElementMatch!16961) (reg!17290 r2!6280))) b!6938549))

(assert (= (and b!6937606 ((_ is Concat!25806) (reg!17290 r2!6280))) b!6938550))

(assert (= (and b!6937606 ((_ is Star!16961) (reg!17290 r2!6280))) b!6938551))

(assert (= (and b!6937606 ((_ is Union!16961) (reg!17290 r2!6280))) b!6938552))

(declare-fun b!6938557 () Bool)

(declare-fun e!4174292 () Bool)

(declare-fun tp!1912643 () Bool)

(assert (=> b!6938557 (= e!4174292 (and tp_is_empty!43147 tp!1912643))))

(assert (=> b!6937627 (= tp!1912466 e!4174292)))

(assert (= (and b!6937627 ((_ is Cons!66590) (t!380457 s!14361))) b!6938557))

(check-sat (not bm!630376) (not b!6938164) (not b!6937875) (not b!6938262) (not b!6938261) (not b!6938504) (not d!2167242) (not d!2167222) (not b!6938523) (not d!2167284) (not d!2167282) (not bm!630306) (not b!6938448) (not b!6938512) (not b!6938480) (not b!6938256) (not bm!630369) (not b!6938552) (not bm!630370) (not b!6938172) (not d!2167208) (not bm!630356) (not b!6938465) (not b!6938412) (not b!6938516) (not b!6938436) (not b!6938178) (not b!6938122) (not d!2167202) (not bm!630364) (not b!6938421) (not b!6938170) (not d!2167272) (not d!2167212) (not b!6938430) (not b!6938215) (not d!2167204) (not b!6938258) (not d!2167260) (not b!6938551) (not bm!630382) (not b!6938543) (not bm!630377) (not b!6938511) (not b!6938557) (not b!6938435) (not b!6938538) (not bm!630386) (not b!6938454) (not b!6938169) (not b!6938539) (not b!6938379) (not b!6938361) (not b!6938481) (not b!6938118) (not b!6938502) (not b!6938550) (not bm!630359) (not b!6937675) (not b!6938216) (not b!6938260) (not b!6938168) (not b!6938548) (not b!6938181) (not b!6938506) (not d!2167124) (not bm!630299) (not b!6938524) (not b!6937873) (not b!6938365) (not d!2167186) (not b!6938498) (not b!6938444) (not bm!630311) (not b!6938371) (not d!2167250) (not b!6938363) (not bm!630363) (not b!6938420) (not b!6938515) (not d!2167280) (not bm!630372) (not d!2167234) (not b!6938385) (not b!6938526) (not b!6938510) (not b!6938440) (not b!6938514) (not b!6938257) (not b!6938259) (not b!6938434) (not b!6938396) (not b!6938405) (not b!6938494) (not b!6938252) (not bm!630384) (not d!2167194) (not b!6938528) (not b!6938527) (not b!6938508) (not b!6937667) (not d!2167190) (not bm!630374) (not d!2167240) (not b!6937673) (not b!6938367) (not b!6938271) (not b!6938530) (not b!6938167) (not b!6938254) (not b!6937876) (not b!6937878) (not b!6938426) (not b!6938449) (not b!6937677) (not b!6938126) (not d!2167134) (not d!2167238) (not b!6938182) (not b!6938455) (not b!6938520) (not bm!630375) (not bm!630371) (not d!2167252) (not bm!630383) (not b!6938446) (not d!2167236) (not b!6937877) (not b!6938495) (not b!6938091) (not b!6938518) (not b!6938120) (not bm!630378) (not d!2167258) (not b!6938381) (not b!6938171) (not d!2167268) (not b!6938090) (not b!6938264) (not b!6938547) (not bm!630379) (not d!2167098) (not b!6938546) (not d!2167286) (not b!6938116) (not b!6938503) (not bm!630352) (not bm!630380) (not bm!630373) (not d!2167264) (not d!2167210) (not bm!630309) (not bm!630357) (not b!6938248) (not d!2167230) (not bm!630308) (not b!6937737) (not d!2167214) (not b!6938507) (not b!6938540) (not b!6938499) (not b!6938406) tp_is_empty!43147 (not d!2167278) (not b!6938544) (not b!6938366) (not b!6938377) (not b!6938263) (not d!2167188) (not b!6938450) (not b!6938411) (not b!6937752) (not bm!630353) (not d!2167270) (not b!6938121) (not b!6938112) (not b!6938500) (not b!6938536) (not b!6938272) (not b!6937676) (not b!6938534) (not d!2167112) (not b!6938397) (not d!2167206) (not b!6938522) (not b!6938531) (not b!6938482) (not d!2167080) (not b!6938496) (not b!6938532) (not d!2167132) (not b!6938380) (not d!2167248) (not b!6938535) (not b!6938542) (not b!6938432) (not b!6938375) (not b!6938177) (not b!6938519) (not bm!630381) (not b!6937671) (not b!6938357) (not d!2167256) (not b!6938165) (not b!6938386) (not b!6937874))
(check-sat)
