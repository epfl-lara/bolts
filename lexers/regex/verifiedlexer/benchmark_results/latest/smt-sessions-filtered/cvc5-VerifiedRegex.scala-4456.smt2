; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!236794 () Bool)

(assert start!236794)

(declare-fun b!2417011 () Bool)

(declare-fun e!1538069 () Bool)

(declare-fun tp!768585 () Bool)

(declare-fun tp!768584 () Bool)

(assert (=> b!2417011 (= e!1538069 (and tp!768585 tp!768584))))

(declare-fun b!2417013 () Bool)

(declare-fun e!1538059 () Bool)

(assert (=> b!2417013 (= e!1538059 false)))

(declare-fun b!2417014 () Bool)

(declare-fun tp!768582 () Bool)

(declare-fun tp!768589 () Bool)

(assert (=> b!2417014 (= e!1538069 (and tp!768582 tp!768589))))

(declare-fun b!2417015 () Bool)

(declare-datatypes ((Unit!41491 0))(
  ( (Unit!41492) )
))
(declare-fun e!1538060 () Unit!41491)

(declare-fun Unit!41493 () Unit!41491)

(assert (=> b!2417015 (= e!1538060 Unit!41493)))

(declare-fun b!2417016 () Bool)

(declare-fun e!1538063 () Bool)

(declare-fun e!1538065 () Bool)

(assert (=> b!2417016 (= e!1538063 e!1538065)))

(declare-fun res!1026477 () Bool)

(assert (=> b!2417016 (=> res!1026477 e!1538065)))

(declare-datatypes ((C!14366 0))(
  ( (C!14367 (val!8425 Int)) )
))
(declare-datatypes ((Regex!7104 0))(
  ( (ElementMatch!7104 (c!385171 C!14366)) (Concat!11740 (regOne!14720 Regex!7104) (regTwo!14720 Regex!7104)) (EmptyExpr!7104) (Star!7104 (reg!7433 Regex!7104)) (EmptyLang!7104) (Union!7104 (regOne!14721 Regex!7104) (regTwo!14721 Regex!7104)) )
))
(declare-fun lt!874436 () Regex!7104)

(declare-fun validRegex!2824 (Regex!7104) Bool)

(assert (=> b!2417016 (= res!1026477 (not (validRegex!2824 lt!874436)))))

(declare-fun lt!874443 () Bool)

(assert (=> b!2417016 (not lt!874443)))

(declare-fun lt!874435 () Unit!41491)

(assert (=> b!2417016 (= lt!874435 e!1538060)))

(declare-fun c!385170 () Bool)

(assert (=> b!2417016 (= c!385170 lt!874443)))

(declare-datatypes ((List!28446 0))(
  ( (Nil!28348) (Cons!28348 (h!33749 C!14366) (t!208423 List!28446)) )
))
(declare-datatypes ((tuple2!27988 0))(
  ( (tuple2!27989 (_1!16535 List!28446) (_2!16535 List!28446)) )
))
(declare-datatypes ((Option!5605 0))(
  ( (None!5604) (Some!5604 (v!31012 tuple2!27988)) )
))
(declare-fun lt!874441 () Option!5605)

(declare-fun isDefined!4431 (Option!5605) Bool)

(assert (=> b!2417016 (= lt!874443 (isDefined!4431 lt!874441))))

(declare-fun s!9460 () List!28446)

(declare-fun findConcatSeparation!713 (Regex!7104 Regex!7104 List!28446 List!28446 List!28446) Option!5605)

(assert (=> b!2417016 (= lt!874441 (findConcatSeparation!713 lt!874436 EmptyExpr!7104 Nil!28348 s!9460 s!9460))))

(declare-fun b!2417017 () Bool)

(declare-fun res!1026472 () Bool)

(declare-fun e!1538061 () Bool)

(assert (=> b!2417017 (=> (not res!1026472) (not e!1538061))))

(declare-fun r!13927 () Regex!7104)

(declare-datatypes ((List!28447 0))(
  ( (Nil!28349) (Cons!28349 (h!33750 Regex!7104) (t!208424 List!28447)) )
))
(declare-fun l!9164 () List!28447)

(declare-fun generalisedConcat!205 (List!28447) Regex!7104)

(assert (=> b!2417017 (= res!1026472 (= r!13927 (generalisedConcat!205 l!9164)))))

(declare-fun b!2417018 () Bool)

(declare-fun lt!874440 () Regex!7104)

(assert (=> b!2417018 (= e!1538065 (validRegex!2824 lt!874440))))

(declare-fun b!2417019 () Bool)

(declare-fun tp_is_empty!11621 () Bool)

(assert (=> b!2417019 (= e!1538069 tp_is_empty!11621)))

(declare-fun b!2417020 () Bool)

(declare-fun res!1026470 () Bool)

(declare-fun e!1538068 () Bool)

(assert (=> b!2417020 (=> res!1026470 e!1538068)))

(declare-fun isEmpty!16358 (List!28447) Bool)

(assert (=> b!2417020 (= res!1026470 (isEmpty!16358 l!9164))))

(declare-fun b!2417021 () Bool)

(declare-fun e!1538062 () Bool)

(declare-fun tp!768587 () Bool)

(declare-fun tp!768588 () Bool)

(assert (=> b!2417021 (= e!1538062 (and tp!768587 tp!768588))))

(declare-fun b!2417012 () Bool)

(declare-fun e!1538064 () Bool)

(declare-fun e!1538066 () Bool)

(assert (=> b!2417012 (= e!1538064 e!1538066)))

(declare-fun res!1026469 () Bool)

(assert (=> b!2417012 (=> res!1026469 e!1538066)))

(assert (=> b!2417012 (= res!1026469 (not (= lt!874440 EmptyExpr!7104)))))

(declare-fun lt!874437 () List!28447)

(assert (=> b!2417012 (= lt!874440 (generalisedConcat!205 lt!874437))))

(declare-fun res!1026474 () Bool)

(assert (=> start!236794 (=> (not res!1026474) (not e!1538061))))

(declare-fun lambda!91032 () Int)

(declare-fun forall!5738 (List!28447 Int) Bool)

(assert (=> start!236794 (= res!1026474 (forall!5738 l!9164 lambda!91032))))

(assert (=> start!236794 e!1538061))

(assert (=> start!236794 e!1538062))

(assert (=> start!236794 e!1538069))

(declare-fun e!1538067 () Bool)

(assert (=> start!236794 e!1538067))

(declare-fun b!2417022 () Bool)

(declare-fun tp!768583 () Bool)

(assert (=> b!2417022 (= e!1538069 tp!768583)))

(declare-fun b!2417023 () Bool)

(assert (=> b!2417023 (= e!1538061 (not e!1538068))))

(declare-fun res!1026476 () Bool)

(assert (=> b!2417023 (=> res!1026476 e!1538068)))

(assert (=> b!2417023 (= res!1026476 (or (is-Concat!11740 r!13927) (is-EmptyExpr!7104 r!13927)))))

(declare-fun matchR!3221 (Regex!7104 List!28446) Bool)

(declare-fun matchRSpec!953 (Regex!7104 List!28446) Bool)

(assert (=> b!2417023 (= (matchR!3221 r!13927 s!9460) (matchRSpec!953 r!13927 s!9460))))

(declare-fun lt!874438 () Unit!41491)

(declare-fun mainMatchTheorem!953 (Regex!7104 List!28446) Unit!41491)

(assert (=> b!2417023 (= lt!874438 (mainMatchTheorem!953 r!13927 s!9460))))

(declare-fun b!2417024 () Bool)

(assert (=> b!2417024 (= e!1538068 e!1538064)))

(declare-fun res!1026475 () Bool)

(assert (=> b!2417024 (=> res!1026475 e!1538064)))

(assert (=> b!2417024 (= res!1026475 (not (isEmpty!16358 lt!874437)))))

(declare-fun tail!3692 (List!28447) List!28447)

(assert (=> b!2417024 (= lt!874437 (tail!3692 l!9164))))

(declare-fun b!2417025 () Bool)

(declare-fun tp!768586 () Bool)

(assert (=> b!2417025 (= e!1538067 (and tp_is_empty!11621 tp!768586))))

(declare-fun b!2417026 () Bool)

(assert (=> b!2417026 (= e!1538066 e!1538063)))

(declare-fun res!1026473 () Bool)

(assert (=> b!2417026 (=> res!1026473 e!1538063)))

(assert (=> b!2417026 (= res!1026473 (matchR!3221 lt!874436 s!9460))))

(declare-fun head!5420 (List!28447) Regex!7104)

(assert (=> b!2417026 (= lt!874436 (head!5420 l!9164))))

(declare-fun b!2417027 () Bool)

(declare-fun Unit!41494 () Unit!41491)

(assert (=> b!2417027 (= e!1538060 Unit!41494)))

(declare-fun lt!874442 () tuple2!27988)

(declare-fun get!8709 (Option!5605) tuple2!27988)

(assert (=> b!2417027 (= lt!874442 (get!8709 lt!874441))))

(declare-fun lt!874439 () Unit!41491)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!53 (Regex!7104 Regex!7104 List!28446 List!28446 List!28446) Unit!41491)

(assert (=> b!2417027 (= lt!874439 (lemmaFindSeparationIsDefinedThenConcatMatches!53 lt!874436 EmptyExpr!7104 (_1!16535 lt!874442) (_2!16535 lt!874442) s!9460))))

(declare-fun res!1026471 () Bool)

(declare-fun ++!7025 (List!28446 List!28446) List!28446)

(assert (=> b!2417027 (= res!1026471 (matchR!3221 (Concat!11740 lt!874436 EmptyExpr!7104) (++!7025 (_1!16535 lt!874442) (_2!16535 lt!874442))))))

(assert (=> b!2417027 (=> (not res!1026471) (not e!1538059))))

(assert (=> b!2417027 e!1538059))

(assert (= (and start!236794 res!1026474) b!2417017))

(assert (= (and b!2417017 res!1026472) b!2417023))

(assert (= (and b!2417023 (not res!1026476)) b!2417020))

(assert (= (and b!2417020 (not res!1026470)) b!2417024))

(assert (= (and b!2417024 (not res!1026475)) b!2417012))

(assert (= (and b!2417012 (not res!1026469)) b!2417026))

(assert (= (and b!2417026 (not res!1026473)) b!2417016))

(assert (= (and b!2417016 c!385170) b!2417027))

(assert (= (and b!2417016 (not c!385170)) b!2417015))

(assert (= (and b!2417027 res!1026471) b!2417013))

(assert (= (and b!2417016 (not res!1026477)) b!2417018))

(assert (= (and start!236794 (is-Cons!28349 l!9164)) b!2417021))

(assert (= (and start!236794 (is-ElementMatch!7104 r!13927)) b!2417019))

(assert (= (and start!236794 (is-Concat!11740 r!13927)) b!2417014))

(assert (= (and start!236794 (is-Star!7104 r!13927)) b!2417022))

(assert (= (and start!236794 (is-Union!7104 r!13927)) b!2417011))

(assert (= (and start!236794 (is-Cons!28348 s!9460)) b!2417025))

(declare-fun m!2805303 () Bool)

(assert (=> start!236794 m!2805303))

(declare-fun m!2805305 () Bool)

(assert (=> b!2417017 m!2805305))

(declare-fun m!2805307 () Bool)

(assert (=> b!2417016 m!2805307))

(declare-fun m!2805309 () Bool)

(assert (=> b!2417016 m!2805309))

(declare-fun m!2805311 () Bool)

(assert (=> b!2417016 m!2805311))

(declare-fun m!2805313 () Bool)

(assert (=> b!2417024 m!2805313))

(declare-fun m!2805315 () Bool)

(assert (=> b!2417024 m!2805315))

(declare-fun m!2805317 () Bool)

(assert (=> b!2417027 m!2805317))

(declare-fun m!2805319 () Bool)

(assert (=> b!2417027 m!2805319))

(declare-fun m!2805321 () Bool)

(assert (=> b!2417027 m!2805321))

(assert (=> b!2417027 m!2805321))

(declare-fun m!2805323 () Bool)

(assert (=> b!2417027 m!2805323))

(declare-fun m!2805325 () Bool)

(assert (=> b!2417012 m!2805325))

(declare-fun m!2805327 () Bool)

(assert (=> b!2417020 m!2805327))

(declare-fun m!2805329 () Bool)

(assert (=> b!2417026 m!2805329))

(declare-fun m!2805331 () Bool)

(assert (=> b!2417026 m!2805331))

(declare-fun m!2805333 () Bool)

(assert (=> b!2417018 m!2805333))

(declare-fun m!2805335 () Bool)

(assert (=> b!2417023 m!2805335))

(declare-fun m!2805337 () Bool)

(assert (=> b!2417023 m!2805337))

(declare-fun m!2805339 () Bool)

(assert (=> b!2417023 m!2805339))

(push 1)

(assert (not b!2417023))

(assert (not b!2417027))

(assert (not b!2417011))

(assert (not b!2417021))

(assert (not b!2417026))

(assert (not b!2417020))

(assert (not b!2417016))

(assert (not b!2417017))

(assert (not b!2417018))

(assert (not start!236794))

(assert (not b!2417024))

(assert tp_is_empty!11621)

(assert (not b!2417014))

(assert (not b!2417022))

(assert (not b!2417012))

(assert (not b!2417025))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!701317 () Bool)

(assert (=> d!701317 (= (isEmpty!16358 l!9164) (is-Nil!28349 l!9164))))

(assert (=> b!2417020 d!701317))

(declare-fun bm!147556 () Bool)

(declare-fun call!147561 () Bool)

(declare-fun c!385181 () Bool)

(assert (=> bm!147556 (= call!147561 (validRegex!2824 (ite c!385181 (regOne!14721 lt!874440) (regTwo!14720 lt!874440))))))

(declare-fun b!2417097 () Bool)

(declare-fun e!1538121 () Bool)

(declare-fun call!147563 () Bool)

(assert (=> b!2417097 (= e!1538121 call!147563)))

(declare-fun b!2417098 () Bool)

(declare-fun e!1538119 () Bool)

(assert (=> b!2417098 (= e!1538119 call!147561)))

(declare-fun d!701319 () Bool)

(declare-fun res!1026517 () Bool)

(declare-fun e!1538117 () Bool)

(assert (=> d!701319 (=> res!1026517 e!1538117)))

(assert (=> d!701319 (= res!1026517 (is-ElementMatch!7104 lt!874440))))

(assert (=> d!701319 (= (validRegex!2824 lt!874440) e!1538117)))

(declare-fun b!2417099 () Bool)

(declare-fun res!1026518 () Bool)

(declare-fun e!1538120 () Bool)

(assert (=> b!2417099 (=> res!1026518 e!1538120)))

(assert (=> b!2417099 (= res!1026518 (not (is-Concat!11740 lt!874440)))))

(declare-fun e!1538122 () Bool)

(assert (=> b!2417099 (= e!1538122 e!1538120)))

(declare-fun b!2417100 () Bool)

(declare-fun e!1538118 () Bool)

(assert (=> b!2417100 (= e!1538117 e!1538118)))

(declare-fun c!385180 () Bool)

(assert (=> b!2417100 (= c!385180 (is-Star!7104 lt!874440))))

(declare-fun b!2417101 () Bool)

(declare-fun res!1026519 () Bool)

(declare-fun e!1538123 () Bool)

(assert (=> b!2417101 (=> (not res!1026519) (not e!1538123))))

(assert (=> b!2417101 (= res!1026519 call!147561)))

(assert (=> b!2417101 (= e!1538122 e!1538123)))

(declare-fun bm!147557 () Bool)

(assert (=> bm!147557 (= call!147563 (validRegex!2824 (ite c!385180 (reg!7433 lt!874440) (ite c!385181 (regTwo!14721 lt!874440) (regOne!14720 lt!874440)))))))

(declare-fun b!2417102 () Bool)

(assert (=> b!2417102 (= e!1538118 e!1538122)))

(assert (=> b!2417102 (= c!385181 (is-Union!7104 lt!874440))))

(declare-fun bm!147558 () Bool)

(declare-fun call!147562 () Bool)

(assert (=> bm!147558 (= call!147562 call!147563)))

(declare-fun b!2417103 () Bool)

(assert (=> b!2417103 (= e!1538118 e!1538121)))

(declare-fun res!1026516 () Bool)

(declare-fun nullable!2139 (Regex!7104) Bool)

(assert (=> b!2417103 (= res!1026516 (not (nullable!2139 (reg!7433 lt!874440))))))

(assert (=> b!2417103 (=> (not res!1026516) (not e!1538121))))

(declare-fun b!2417104 () Bool)

(assert (=> b!2417104 (= e!1538123 call!147562)))

(declare-fun b!2417105 () Bool)

(assert (=> b!2417105 (= e!1538120 e!1538119)))

(declare-fun res!1026515 () Bool)

(assert (=> b!2417105 (=> (not res!1026515) (not e!1538119))))

(assert (=> b!2417105 (= res!1026515 call!147562)))

(assert (= (and d!701319 (not res!1026517)) b!2417100))

(assert (= (and b!2417100 c!385180) b!2417103))

(assert (= (and b!2417100 (not c!385180)) b!2417102))

(assert (= (and b!2417103 res!1026516) b!2417097))

(assert (= (and b!2417102 c!385181) b!2417101))

(assert (= (and b!2417102 (not c!385181)) b!2417099))

(assert (= (and b!2417101 res!1026519) b!2417104))

(assert (= (and b!2417099 (not res!1026518)) b!2417105))

(assert (= (and b!2417105 res!1026515) b!2417098))

(assert (= (or b!2417101 b!2417098) bm!147556))

(assert (= (or b!2417104 b!2417105) bm!147558))

(assert (= (or b!2417097 bm!147558) bm!147557))

(declare-fun m!2805379 () Bool)

(assert (=> bm!147556 m!2805379))

(declare-fun m!2805381 () Bool)

(assert (=> bm!147557 m!2805381))

(declare-fun m!2805383 () Bool)

(assert (=> b!2417103 m!2805383))

(assert (=> b!2417018 d!701319))

(declare-fun d!701321 () Bool)

(assert (=> d!701321 (= (isEmpty!16358 lt!874437) (is-Nil!28349 lt!874437))))

(assert (=> b!2417024 d!701321))

(declare-fun d!701323 () Bool)

(assert (=> d!701323 (= (tail!3692 l!9164) (t!208424 l!9164))))

(assert (=> b!2417024 d!701323))

(declare-fun bs!463603 () Bool)

(declare-fun d!701325 () Bool)

(assert (= bs!463603 (and d!701325 start!236794)))

(declare-fun lambda!91038 () Int)

(assert (=> bs!463603 (= lambda!91038 lambda!91032)))

(declare-fun b!2417132 () Bool)

(declare-fun e!1538144 () Bool)

(declare-fun e!1538147 () Bool)

(assert (=> b!2417132 (= e!1538144 e!1538147)))

(declare-fun c!385193 () Bool)

(assert (=> b!2417132 (= c!385193 (isEmpty!16358 (tail!3692 l!9164)))))

(declare-fun b!2417133 () Bool)

(declare-fun lt!874473 () Regex!7104)

(declare-fun isConcat!159 (Regex!7104) Bool)

(assert (=> b!2417133 (= e!1538147 (isConcat!159 lt!874473))))

(declare-fun b!2417134 () Bool)

(declare-fun e!1538143 () Regex!7104)

(assert (=> b!2417134 (= e!1538143 EmptyExpr!7104)))

(declare-fun b!2417135 () Bool)

(declare-fun e!1538146 () Regex!7104)

(assert (=> b!2417135 (= e!1538146 (h!33750 l!9164))))

(declare-fun b!2417136 () Bool)

(declare-fun e!1538142 () Bool)

(assert (=> b!2417136 (= e!1538142 (isEmpty!16358 (t!208424 l!9164)))))

(declare-fun b!2417137 () Bool)

(declare-fun isEmptyExpr!159 (Regex!7104) Bool)

(assert (=> b!2417137 (= e!1538144 (isEmptyExpr!159 lt!874473))))

(declare-fun b!2417139 () Bool)

(declare-fun e!1538145 () Bool)

(assert (=> b!2417139 (= e!1538145 e!1538144)))

(declare-fun c!385192 () Bool)

(assert (=> b!2417139 (= c!385192 (isEmpty!16358 l!9164))))

(declare-fun b!2417140 () Bool)

(assert (=> b!2417140 (= e!1538147 (= lt!874473 (head!5420 l!9164)))))

(declare-fun b!2417141 () Bool)

(assert (=> b!2417141 (= e!1538143 (Concat!11740 (h!33750 l!9164) (generalisedConcat!205 (t!208424 l!9164))))))

(assert (=> d!701325 e!1538145))

(declare-fun res!1026530 () Bool)

(assert (=> d!701325 (=> (not res!1026530) (not e!1538145))))

(assert (=> d!701325 (= res!1026530 (validRegex!2824 lt!874473))))

(assert (=> d!701325 (= lt!874473 e!1538146)))

(declare-fun c!385191 () Bool)

(assert (=> d!701325 (= c!385191 e!1538142)))

(declare-fun res!1026531 () Bool)

(assert (=> d!701325 (=> (not res!1026531) (not e!1538142))))

(assert (=> d!701325 (= res!1026531 (is-Cons!28349 l!9164))))

(assert (=> d!701325 (forall!5738 l!9164 lambda!91038)))

(assert (=> d!701325 (= (generalisedConcat!205 l!9164) lt!874473)))

(declare-fun b!2417138 () Bool)

(assert (=> b!2417138 (= e!1538146 e!1538143)))

(declare-fun c!385190 () Bool)

(assert (=> b!2417138 (= c!385190 (is-Cons!28349 l!9164))))

(assert (= (and d!701325 res!1026531) b!2417136))

(assert (= (and d!701325 c!385191) b!2417135))

(assert (= (and d!701325 (not c!385191)) b!2417138))

(assert (= (and b!2417138 c!385190) b!2417141))

(assert (= (and b!2417138 (not c!385190)) b!2417134))

(assert (= (and d!701325 res!1026530) b!2417139))

(assert (= (and b!2417139 c!385192) b!2417137))

(assert (= (and b!2417139 (not c!385192)) b!2417132))

(assert (= (and b!2417132 c!385193) b!2417140))

(assert (= (and b!2417132 (not c!385193)) b!2417133))

(declare-fun m!2805389 () Bool)

(assert (=> b!2417133 m!2805389))

(declare-fun m!2805391 () Bool)

(assert (=> b!2417136 m!2805391))

(assert (=> b!2417139 m!2805327))

(declare-fun m!2805393 () Bool)

(assert (=> b!2417137 m!2805393))

(assert (=> b!2417132 m!2805315))

(assert (=> b!2417132 m!2805315))

(declare-fun m!2805395 () Bool)

(assert (=> b!2417132 m!2805395))

(assert (=> b!2417140 m!2805331))

(declare-fun m!2805397 () Bool)

(assert (=> d!701325 m!2805397))

(declare-fun m!2805399 () Bool)

(assert (=> d!701325 m!2805399))

(declare-fun m!2805401 () Bool)

(assert (=> b!2417141 m!2805401))

(assert (=> b!2417017 d!701325))

(declare-fun d!701337 () Bool)

(declare-fun res!1026536 () Bool)

(declare-fun e!1538152 () Bool)

(assert (=> d!701337 (=> res!1026536 e!1538152)))

(assert (=> d!701337 (= res!1026536 (is-Nil!28349 l!9164))))

(assert (=> d!701337 (= (forall!5738 l!9164 lambda!91032) e!1538152)))

(declare-fun b!2417146 () Bool)

(declare-fun e!1538153 () Bool)

(assert (=> b!2417146 (= e!1538152 e!1538153)))

(declare-fun res!1026537 () Bool)

(assert (=> b!2417146 (=> (not res!1026537) (not e!1538153))))

(declare-fun dynLambda!12200 (Int Regex!7104) Bool)

(assert (=> b!2417146 (= res!1026537 (dynLambda!12200 lambda!91032 (h!33750 l!9164)))))

(declare-fun b!2417147 () Bool)

(assert (=> b!2417147 (= e!1538153 (forall!5738 (t!208424 l!9164) lambda!91032))))

(assert (= (and d!701337 (not res!1026536)) b!2417146))

(assert (= (and b!2417146 res!1026537) b!2417147))

(declare-fun b_lambda!74589 () Bool)

(assert (=> (not b_lambda!74589) (not b!2417146)))

(declare-fun m!2805403 () Bool)

(assert (=> b!2417146 m!2805403))

(declare-fun m!2805405 () Bool)

(assert (=> b!2417147 m!2805405))

(assert (=> start!236794 d!701337))

(declare-fun bs!463604 () Bool)

(declare-fun d!701339 () Bool)

(assert (= bs!463604 (and d!701339 start!236794)))

(declare-fun lambda!91039 () Int)

(assert (=> bs!463604 (= lambda!91039 lambda!91032)))

(declare-fun bs!463605 () Bool)

(assert (= bs!463605 (and d!701339 d!701325)))

(assert (=> bs!463605 (= lambda!91039 lambda!91038)))

(declare-fun b!2417148 () Bool)

(declare-fun e!1538156 () Bool)

(declare-fun e!1538159 () Bool)

(assert (=> b!2417148 (= e!1538156 e!1538159)))

(declare-fun c!385197 () Bool)

(assert (=> b!2417148 (= c!385197 (isEmpty!16358 (tail!3692 lt!874437)))))

(declare-fun b!2417149 () Bool)

(declare-fun lt!874474 () Regex!7104)

(assert (=> b!2417149 (= e!1538159 (isConcat!159 lt!874474))))

(declare-fun b!2417150 () Bool)

(declare-fun e!1538155 () Regex!7104)

(assert (=> b!2417150 (= e!1538155 EmptyExpr!7104)))

(declare-fun b!2417151 () Bool)

(declare-fun e!1538158 () Regex!7104)

(assert (=> b!2417151 (= e!1538158 (h!33750 lt!874437))))

(declare-fun b!2417152 () Bool)

(declare-fun e!1538154 () Bool)

(assert (=> b!2417152 (= e!1538154 (isEmpty!16358 (t!208424 lt!874437)))))

(declare-fun b!2417153 () Bool)

(assert (=> b!2417153 (= e!1538156 (isEmptyExpr!159 lt!874474))))

(declare-fun b!2417155 () Bool)

(declare-fun e!1538157 () Bool)

(assert (=> b!2417155 (= e!1538157 e!1538156)))

(declare-fun c!385196 () Bool)

(assert (=> b!2417155 (= c!385196 (isEmpty!16358 lt!874437))))

(declare-fun b!2417156 () Bool)

(assert (=> b!2417156 (= e!1538159 (= lt!874474 (head!5420 lt!874437)))))

(declare-fun b!2417157 () Bool)

(assert (=> b!2417157 (= e!1538155 (Concat!11740 (h!33750 lt!874437) (generalisedConcat!205 (t!208424 lt!874437))))))

(assert (=> d!701339 e!1538157))

(declare-fun res!1026538 () Bool)

(assert (=> d!701339 (=> (not res!1026538) (not e!1538157))))

(assert (=> d!701339 (= res!1026538 (validRegex!2824 lt!874474))))

(assert (=> d!701339 (= lt!874474 e!1538158)))

(declare-fun c!385195 () Bool)

(assert (=> d!701339 (= c!385195 e!1538154)))

(declare-fun res!1026539 () Bool)

(assert (=> d!701339 (=> (not res!1026539) (not e!1538154))))

(assert (=> d!701339 (= res!1026539 (is-Cons!28349 lt!874437))))

(assert (=> d!701339 (forall!5738 lt!874437 lambda!91039)))

(assert (=> d!701339 (= (generalisedConcat!205 lt!874437) lt!874474)))

(declare-fun b!2417154 () Bool)

(assert (=> b!2417154 (= e!1538158 e!1538155)))

(declare-fun c!385194 () Bool)

(assert (=> b!2417154 (= c!385194 (is-Cons!28349 lt!874437))))

(assert (= (and d!701339 res!1026539) b!2417152))

(assert (= (and d!701339 c!385195) b!2417151))

(assert (= (and d!701339 (not c!385195)) b!2417154))

(assert (= (and b!2417154 c!385194) b!2417157))

(assert (= (and b!2417154 (not c!385194)) b!2417150))

(assert (= (and d!701339 res!1026538) b!2417155))

(assert (= (and b!2417155 c!385196) b!2417153))

(assert (= (and b!2417155 (not c!385196)) b!2417148))

(assert (= (and b!2417148 c!385197) b!2417156))

(assert (= (and b!2417148 (not c!385197)) b!2417149))

(declare-fun m!2805407 () Bool)

(assert (=> b!2417149 m!2805407))

(declare-fun m!2805409 () Bool)

(assert (=> b!2417152 m!2805409))

(assert (=> b!2417155 m!2805313))

(declare-fun m!2805411 () Bool)

(assert (=> b!2417153 m!2805411))

(declare-fun m!2805413 () Bool)

(assert (=> b!2417148 m!2805413))

(assert (=> b!2417148 m!2805413))

(declare-fun m!2805415 () Bool)

(assert (=> b!2417148 m!2805415))

(declare-fun m!2805417 () Bool)

(assert (=> b!2417156 m!2805417))

(declare-fun m!2805419 () Bool)

(assert (=> d!701339 m!2805419))

(declare-fun m!2805421 () Bool)

(assert (=> d!701339 m!2805421))

(declare-fun m!2805423 () Bool)

(assert (=> b!2417157 m!2805423))

(assert (=> b!2417012 d!701339))

(declare-fun b!2417213 () Bool)

(declare-fun res!1026578 () Bool)

(declare-fun e!1538197 () Bool)

(assert (=> b!2417213 (=> res!1026578 e!1538197)))

(assert (=> b!2417213 (= res!1026578 (not (is-ElementMatch!7104 r!13927)))))

(declare-fun e!1538200 () Bool)

(assert (=> b!2417213 (= e!1538200 e!1538197)))

(declare-fun b!2417214 () Bool)

(declare-fun e!1538199 () Bool)

(assert (=> b!2417214 (= e!1538197 e!1538199)))

(declare-fun res!1026574 () Bool)

(assert (=> b!2417214 (=> (not res!1026574) (not e!1538199))))

(declare-fun lt!874477 () Bool)

(assert (=> b!2417214 (= res!1026574 (not lt!874477))))

(declare-fun b!2417215 () Bool)

(declare-fun e!1538195 () Bool)

(declare-fun call!147575 () Bool)

(assert (=> b!2417215 (= e!1538195 (= lt!874477 call!147575))))

(declare-fun b!2417216 () Bool)

(declare-fun res!1026576 () Bool)

(declare-fun e!1538196 () Bool)

(assert (=> b!2417216 (=> (not res!1026576) (not e!1538196))))

(assert (=> b!2417216 (= res!1026576 (not call!147575))))

(declare-fun bm!147570 () Bool)

(declare-fun isEmpty!16360 (List!28446) Bool)

(assert (=> bm!147570 (= call!147575 (isEmpty!16360 s!9460))))

(declare-fun b!2417217 () Bool)

(declare-fun e!1538198 () Bool)

(declare-fun head!5422 (List!28446) C!14366)

(assert (=> b!2417217 (= e!1538198 (not (= (head!5422 s!9460) (c!385171 r!13927))))))

(declare-fun d!701341 () Bool)

(assert (=> d!701341 e!1538195))

(declare-fun c!385212 () Bool)

(assert (=> d!701341 (= c!385212 (is-EmptyExpr!7104 r!13927))))

(declare-fun e!1538201 () Bool)

(assert (=> d!701341 (= lt!874477 e!1538201)))

(declare-fun c!385211 () Bool)

(assert (=> d!701341 (= c!385211 (isEmpty!16360 s!9460))))

(assert (=> d!701341 (validRegex!2824 r!13927)))

(assert (=> d!701341 (= (matchR!3221 r!13927 s!9460) lt!874477)))

(declare-fun b!2417218 () Bool)

(declare-fun derivativeStep!1796 (Regex!7104 C!14366) Regex!7104)

(declare-fun tail!3694 (List!28446) List!28446)

(assert (=> b!2417218 (= e!1538201 (matchR!3221 (derivativeStep!1796 r!13927 (head!5422 s!9460)) (tail!3694 s!9460)))))

(declare-fun b!2417219 () Bool)

(assert (=> b!2417219 (= e!1538199 e!1538198)))

(declare-fun res!1026571 () Bool)

(assert (=> b!2417219 (=> res!1026571 e!1538198)))

(assert (=> b!2417219 (= res!1026571 call!147575)))

(declare-fun b!2417220 () Bool)

(assert (=> b!2417220 (= e!1538201 (nullable!2139 r!13927))))

(declare-fun b!2417221 () Bool)

(declare-fun res!1026577 () Bool)

(assert (=> b!2417221 (=> (not res!1026577) (not e!1538196))))

(assert (=> b!2417221 (= res!1026577 (isEmpty!16360 (tail!3694 s!9460)))))

(declare-fun b!2417222 () Bool)

(declare-fun res!1026572 () Bool)

(assert (=> b!2417222 (=> res!1026572 e!1538197)))

(assert (=> b!2417222 (= res!1026572 e!1538196)))

(declare-fun res!1026573 () Bool)

(assert (=> b!2417222 (=> (not res!1026573) (not e!1538196))))

(assert (=> b!2417222 (= res!1026573 lt!874477)))

(declare-fun b!2417223 () Bool)

(declare-fun res!1026575 () Bool)

(assert (=> b!2417223 (=> res!1026575 e!1538198)))

(assert (=> b!2417223 (= res!1026575 (not (isEmpty!16360 (tail!3694 s!9460))))))

(declare-fun b!2417224 () Bool)

(assert (=> b!2417224 (= e!1538200 (not lt!874477))))

(declare-fun b!2417225 () Bool)

(assert (=> b!2417225 (= e!1538196 (= (head!5422 s!9460) (c!385171 r!13927)))))

(declare-fun b!2417226 () Bool)

(assert (=> b!2417226 (= e!1538195 e!1538200)))

(declare-fun c!385210 () Bool)

(assert (=> b!2417226 (= c!385210 (is-EmptyLang!7104 r!13927))))

(assert (= (and d!701341 c!385211) b!2417220))

(assert (= (and d!701341 (not c!385211)) b!2417218))

(assert (= (and d!701341 c!385212) b!2417215))

(assert (= (and d!701341 (not c!385212)) b!2417226))

(assert (= (and b!2417226 c!385210) b!2417224))

(assert (= (and b!2417226 (not c!385210)) b!2417213))

(assert (= (and b!2417213 (not res!1026578)) b!2417222))

(assert (= (and b!2417222 res!1026573) b!2417216))

(assert (= (and b!2417216 res!1026576) b!2417221))

(assert (= (and b!2417221 res!1026577) b!2417225))

(assert (= (and b!2417222 (not res!1026572)) b!2417214))

(assert (= (and b!2417214 res!1026574) b!2417219))

(assert (= (and b!2417219 (not res!1026571)) b!2417223))

(assert (= (and b!2417223 (not res!1026575)) b!2417217))

(assert (= (or b!2417215 b!2417219 b!2417216) bm!147570))

(declare-fun m!2805427 () Bool)

(assert (=> b!2417217 m!2805427))

(assert (=> b!2417218 m!2805427))

(assert (=> b!2417218 m!2805427))

(declare-fun m!2805429 () Bool)

(assert (=> b!2417218 m!2805429))

(declare-fun m!2805431 () Bool)

(assert (=> b!2417218 m!2805431))

(assert (=> b!2417218 m!2805429))

(assert (=> b!2417218 m!2805431))

(declare-fun m!2805435 () Bool)

(assert (=> b!2417218 m!2805435))

(assert (=> b!2417221 m!2805431))

(assert (=> b!2417221 m!2805431))

(declare-fun m!2805437 () Bool)

(assert (=> b!2417221 m!2805437))

(assert (=> b!2417225 m!2805427))

(declare-fun m!2805441 () Bool)

(assert (=> b!2417220 m!2805441))

(declare-fun m!2805443 () Bool)

(assert (=> d!701341 m!2805443))

(declare-fun m!2805445 () Bool)

(assert (=> d!701341 m!2805445))

(assert (=> bm!147570 m!2805443))

(assert (=> b!2417223 m!2805431))

(assert (=> b!2417223 m!2805431))

(assert (=> b!2417223 m!2805437))

(assert (=> b!2417023 d!701341))

(declare-fun b!2417263 () Bool)

(assert (=> b!2417263 true))

(assert (=> b!2417263 true))

(declare-fun bs!463607 () Bool)

(declare-fun b!2417268 () Bool)

(assert (= bs!463607 (and b!2417268 b!2417263)))

(declare-fun lambda!91045 () Int)

(declare-fun lambda!91044 () Int)

(assert (=> bs!463607 (not (= lambda!91045 lambda!91044))))

(assert (=> b!2417268 true))

(assert (=> b!2417268 true))

(declare-fun b!2417259 () Bool)

(declare-fun e!1538222 () Bool)

(declare-fun e!1538224 () Bool)

(assert (=> b!2417259 (= e!1538222 e!1538224)))

(declare-fun res!1026595 () Bool)

(assert (=> b!2417259 (= res!1026595 (matchRSpec!953 (regOne!14721 r!13927) s!9460))))

(assert (=> b!2417259 (=> res!1026595 e!1538224)))

(declare-fun bm!147575 () Bool)

(declare-fun call!147580 () Bool)

(assert (=> bm!147575 (= call!147580 (isEmpty!16360 s!9460))))

(declare-fun call!147581 () Bool)

(declare-fun bm!147576 () Bool)

(declare-fun c!385223 () Bool)

(declare-fun Exists!1145 (Int) Bool)

(assert (=> bm!147576 (= call!147581 (Exists!1145 (ite c!385223 lambda!91044 lambda!91045)))))

(declare-fun b!2417261 () Bool)

(declare-fun e!1538226 () Bool)

(declare-fun e!1538221 () Bool)

(assert (=> b!2417261 (= e!1538226 e!1538221)))

(declare-fun res!1026596 () Bool)

(assert (=> b!2417261 (= res!1026596 (not (is-EmptyLang!7104 r!13927)))))

(assert (=> b!2417261 (=> (not res!1026596) (not e!1538221))))

(declare-fun b!2417262 () Bool)

(declare-fun c!385224 () Bool)

(assert (=> b!2417262 (= c!385224 (is-ElementMatch!7104 r!13927))))

(declare-fun e!1538225 () Bool)

(assert (=> b!2417262 (= e!1538221 e!1538225)))

(declare-fun e!1538220 () Bool)

(assert (=> b!2417263 (= e!1538220 call!147581)))

(declare-fun b!2417264 () Bool)

(assert (=> b!2417264 (= e!1538226 call!147580)))

(declare-fun b!2417265 () Bool)

(declare-fun res!1026597 () Bool)

(assert (=> b!2417265 (=> res!1026597 e!1538220)))

(assert (=> b!2417265 (= res!1026597 call!147580)))

(declare-fun e!1538223 () Bool)

(assert (=> b!2417265 (= e!1538223 e!1538220)))

(declare-fun b!2417266 () Bool)

(assert (=> b!2417266 (= e!1538224 (matchRSpec!953 (regTwo!14721 r!13927) s!9460))))

(declare-fun b!2417267 () Bool)

(assert (=> b!2417267 (= e!1538225 (= s!9460 (Cons!28348 (c!385171 r!13927) Nil!28348)))))

(assert (=> b!2417268 (= e!1538223 call!147581)))

(declare-fun b!2417269 () Bool)

(assert (=> b!2417269 (= e!1538222 e!1538223)))

(assert (=> b!2417269 (= c!385223 (is-Star!7104 r!13927))))

(declare-fun d!701345 () Bool)

(declare-fun c!385221 () Bool)

(assert (=> d!701345 (= c!385221 (is-EmptyExpr!7104 r!13927))))

(assert (=> d!701345 (= (matchRSpec!953 r!13927 s!9460) e!1538226)))

(declare-fun b!2417260 () Bool)

(declare-fun c!385222 () Bool)

(assert (=> b!2417260 (= c!385222 (is-Union!7104 r!13927))))

(assert (=> b!2417260 (= e!1538225 e!1538222)))

(assert (= (and d!701345 c!385221) b!2417264))

(assert (= (and d!701345 (not c!385221)) b!2417261))

(assert (= (and b!2417261 res!1026596) b!2417262))

(assert (= (and b!2417262 c!385224) b!2417267))

(assert (= (and b!2417262 (not c!385224)) b!2417260))

(assert (= (and b!2417260 c!385222) b!2417259))

(assert (= (and b!2417260 (not c!385222)) b!2417269))

(assert (= (and b!2417259 (not res!1026595)) b!2417266))

(assert (= (and b!2417269 c!385223) b!2417265))

(assert (= (and b!2417269 (not c!385223)) b!2417268))

(assert (= (and b!2417265 (not res!1026597)) b!2417263))

(assert (= (or b!2417263 b!2417268) bm!147576))

(assert (= (or b!2417264 b!2417265) bm!147575))

(declare-fun m!2805449 () Bool)

(assert (=> b!2417259 m!2805449))

(assert (=> bm!147575 m!2805443))

(declare-fun m!2805451 () Bool)

(assert (=> bm!147576 m!2805451))

(declare-fun m!2805453 () Bool)

(assert (=> b!2417266 m!2805453))

(assert (=> b!2417023 d!701345))

(declare-fun d!701349 () Bool)

(assert (=> d!701349 (= (matchR!3221 r!13927 s!9460) (matchRSpec!953 r!13927 s!9460))))

(declare-fun lt!874480 () Unit!41491)

(declare-fun choose!14292 (Regex!7104 List!28446) Unit!41491)

(assert (=> d!701349 (= lt!874480 (choose!14292 r!13927 s!9460))))

(assert (=> d!701349 (validRegex!2824 r!13927)))

(assert (=> d!701349 (= (mainMatchTheorem!953 r!13927 s!9460) lt!874480)))

(declare-fun bs!463608 () Bool)

(assert (= bs!463608 d!701349))

(assert (=> bs!463608 m!2805335))

(assert (=> bs!463608 m!2805337))

(declare-fun m!2805455 () Bool)

(assert (=> bs!463608 m!2805455))

(assert (=> bs!463608 m!2805445))

(assert (=> b!2417023 d!701349))

(declare-fun b!2417274 () Bool)

(declare-fun res!1026605 () Bool)

(declare-fun e!1538229 () Bool)

(assert (=> b!2417274 (=> res!1026605 e!1538229)))

(assert (=> b!2417274 (= res!1026605 (not (is-ElementMatch!7104 lt!874436)))))

(declare-fun e!1538232 () Bool)

(assert (=> b!2417274 (= e!1538232 e!1538229)))

(declare-fun b!2417275 () Bool)

(declare-fun e!1538231 () Bool)

(assert (=> b!2417275 (= e!1538229 e!1538231)))

(declare-fun res!1026601 () Bool)

(assert (=> b!2417275 (=> (not res!1026601) (not e!1538231))))

(declare-fun lt!874481 () Bool)

(assert (=> b!2417275 (= res!1026601 (not lt!874481))))

(declare-fun b!2417276 () Bool)

(declare-fun e!1538227 () Bool)

(declare-fun call!147582 () Bool)

(assert (=> b!2417276 (= e!1538227 (= lt!874481 call!147582))))

(declare-fun b!2417277 () Bool)

(declare-fun res!1026603 () Bool)

(declare-fun e!1538228 () Bool)

(assert (=> b!2417277 (=> (not res!1026603) (not e!1538228))))

(assert (=> b!2417277 (= res!1026603 (not call!147582))))

(declare-fun bm!147577 () Bool)

(assert (=> bm!147577 (= call!147582 (isEmpty!16360 s!9460))))

(declare-fun b!2417278 () Bool)

(declare-fun e!1538230 () Bool)

(assert (=> b!2417278 (= e!1538230 (not (= (head!5422 s!9460) (c!385171 lt!874436))))))

(declare-fun d!701351 () Bool)

(assert (=> d!701351 e!1538227))

(declare-fun c!385227 () Bool)

(assert (=> d!701351 (= c!385227 (is-EmptyExpr!7104 lt!874436))))

(declare-fun e!1538233 () Bool)

(assert (=> d!701351 (= lt!874481 e!1538233)))

(declare-fun c!385226 () Bool)

(assert (=> d!701351 (= c!385226 (isEmpty!16360 s!9460))))

(assert (=> d!701351 (validRegex!2824 lt!874436)))

(assert (=> d!701351 (= (matchR!3221 lt!874436 s!9460) lt!874481)))

(declare-fun b!2417279 () Bool)

(assert (=> b!2417279 (= e!1538233 (matchR!3221 (derivativeStep!1796 lt!874436 (head!5422 s!9460)) (tail!3694 s!9460)))))

(declare-fun b!2417280 () Bool)

(assert (=> b!2417280 (= e!1538231 e!1538230)))

(declare-fun res!1026598 () Bool)

(assert (=> b!2417280 (=> res!1026598 e!1538230)))

(assert (=> b!2417280 (= res!1026598 call!147582)))

(declare-fun b!2417281 () Bool)

(assert (=> b!2417281 (= e!1538233 (nullable!2139 lt!874436))))

(declare-fun b!2417282 () Bool)

(declare-fun res!1026604 () Bool)

(assert (=> b!2417282 (=> (not res!1026604) (not e!1538228))))

(assert (=> b!2417282 (= res!1026604 (isEmpty!16360 (tail!3694 s!9460)))))

(declare-fun b!2417283 () Bool)

(declare-fun res!1026599 () Bool)

(assert (=> b!2417283 (=> res!1026599 e!1538229)))

(assert (=> b!2417283 (= res!1026599 e!1538228)))

(declare-fun res!1026600 () Bool)

(assert (=> b!2417283 (=> (not res!1026600) (not e!1538228))))

(assert (=> b!2417283 (= res!1026600 lt!874481)))

(declare-fun b!2417284 () Bool)

(declare-fun res!1026602 () Bool)

(assert (=> b!2417284 (=> res!1026602 e!1538230)))

(assert (=> b!2417284 (= res!1026602 (not (isEmpty!16360 (tail!3694 s!9460))))))

(declare-fun b!2417285 () Bool)

(assert (=> b!2417285 (= e!1538232 (not lt!874481))))

(declare-fun b!2417286 () Bool)

(assert (=> b!2417286 (= e!1538228 (= (head!5422 s!9460) (c!385171 lt!874436)))))

(declare-fun b!2417287 () Bool)

(assert (=> b!2417287 (= e!1538227 e!1538232)))

(declare-fun c!385225 () Bool)

(assert (=> b!2417287 (= c!385225 (is-EmptyLang!7104 lt!874436))))

(assert (= (and d!701351 c!385226) b!2417281))

(assert (= (and d!701351 (not c!385226)) b!2417279))

(assert (= (and d!701351 c!385227) b!2417276))

(assert (= (and d!701351 (not c!385227)) b!2417287))

(assert (= (and b!2417287 c!385225) b!2417285))

(assert (= (and b!2417287 (not c!385225)) b!2417274))

(assert (= (and b!2417274 (not res!1026605)) b!2417283))

(assert (= (and b!2417283 res!1026600) b!2417277))

(assert (= (and b!2417277 res!1026603) b!2417282))

(assert (= (and b!2417282 res!1026604) b!2417286))

(assert (= (and b!2417283 (not res!1026599)) b!2417275))

(assert (= (and b!2417275 res!1026601) b!2417280))

(assert (= (and b!2417280 (not res!1026598)) b!2417284))

(assert (= (and b!2417284 (not res!1026602)) b!2417278))

(assert (= (or b!2417276 b!2417280 b!2417277) bm!147577))

(assert (=> b!2417278 m!2805427))

(assert (=> b!2417279 m!2805427))

(assert (=> b!2417279 m!2805427))

(declare-fun m!2805457 () Bool)

(assert (=> b!2417279 m!2805457))

(assert (=> b!2417279 m!2805431))

(assert (=> b!2417279 m!2805457))

(assert (=> b!2417279 m!2805431))

(declare-fun m!2805459 () Bool)

(assert (=> b!2417279 m!2805459))

(assert (=> b!2417282 m!2805431))

(assert (=> b!2417282 m!2805431))

(assert (=> b!2417282 m!2805437))

(assert (=> b!2417286 m!2805427))

(declare-fun m!2805461 () Bool)

(assert (=> b!2417281 m!2805461))

(assert (=> d!701351 m!2805443))

(assert (=> d!701351 m!2805307))

(assert (=> bm!147577 m!2805443))

(assert (=> b!2417284 m!2805431))

(assert (=> b!2417284 m!2805431))

(assert (=> b!2417284 m!2805437))

(assert (=> b!2417026 d!701351))

(declare-fun d!701353 () Bool)

(assert (=> d!701353 (= (head!5420 l!9164) (h!33750 l!9164))))

(assert (=> b!2417026 d!701353))

(declare-fun bm!147578 () Bool)

(declare-fun call!147583 () Bool)

(declare-fun c!385229 () Bool)

(assert (=> bm!147578 (= call!147583 (validRegex!2824 (ite c!385229 (regOne!14721 lt!874436) (regTwo!14720 lt!874436))))))

(declare-fun b!2417288 () Bool)

(declare-fun e!1538238 () Bool)

(declare-fun call!147585 () Bool)

(assert (=> b!2417288 (= e!1538238 call!147585)))

(declare-fun b!2417289 () Bool)

(declare-fun e!1538236 () Bool)

(assert (=> b!2417289 (= e!1538236 call!147583)))

(declare-fun d!701355 () Bool)

(declare-fun res!1026608 () Bool)

(declare-fun e!1538234 () Bool)

(assert (=> d!701355 (=> res!1026608 e!1538234)))

(assert (=> d!701355 (= res!1026608 (is-ElementMatch!7104 lt!874436))))

(assert (=> d!701355 (= (validRegex!2824 lt!874436) e!1538234)))

(declare-fun b!2417290 () Bool)

(declare-fun res!1026609 () Bool)

(declare-fun e!1538237 () Bool)

(assert (=> b!2417290 (=> res!1026609 e!1538237)))

(assert (=> b!2417290 (= res!1026609 (not (is-Concat!11740 lt!874436)))))

(declare-fun e!1538239 () Bool)

(assert (=> b!2417290 (= e!1538239 e!1538237)))

(declare-fun b!2417291 () Bool)

(declare-fun e!1538235 () Bool)

(assert (=> b!2417291 (= e!1538234 e!1538235)))

(declare-fun c!385228 () Bool)

(assert (=> b!2417291 (= c!385228 (is-Star!7104 lt!874436))))

(declare-fun b!2417292 () Bool)

(declare-fun res!1026610 () Bool)

(declare-fun e!1538240 () Bool)

(assert (=> b!2417292 (=> (not res!1026610) (not e!1538240))))

(assert (=> b!2417292 (= res!1026610 call!147583)))

(assert (=> b!2417292 (= e!1538239 e!1538240)))

(declare-fun bm!147579 () Bool)

(assert (=> bm!147579 (= call!147585 (validRegex!2824 (ite c!385228 (reg!7433 lt!874436) (ite c!385229 (regTwo!14721 lt!874436) (regOne!14720 lt!874436)))))))

(declare-fun b!2417293 () Bool)

(assert (=> b!2417293 (= e!1538235 e!1538239)))

(assert (=> b!2417293 (= c!385229 (is-Union!7104 lt!874436))))

(declare-fun bm!147580 () Bool)

(declare-fun call!147584 () Bool)

(assert (=> bm!147580 (= call!147584 call!147585)))

(declare-fun b!2417294 () Bool)

(assert (=> b!2417294 (= e!1538235 e!1538238)))

(declare-fun res!1026607 () Bool)

(assert (=> b!2417294 (= res!1026607 (not (nullable!2139 (reg!7433 lt!874436))))))

(assert (=> b!2417294 (=> (not res!1026607) (not e!1538238))))

(declare-fun b!2417295 () Bool)

(assert (=> b!2417295 (= e!1538240 call!147584)))

(declare-fun b!2417296 () Bool)

(assert (=> b!2417296 (= e!1538237 e!1538236)))

(declare-fun res!1026606 () Bool)

(assert (=> b!2417296 (=> (not res!1026606) (not e!1538236))))

(assert (=> b!2417296 (= res!1026606 call!147584)))

(assert (= (and d!701355 (not res!1026608)) b!2417291))

(assert (= (and b!2417291 c!385228) b!2417294))

(assert (= (and b!2417291 (not c!385228)) b!2417293))

(assert (= (and b!2417294 res!1026607) b!2417288))

(assert (= (and b!2417293 c!385229) b!2417292))

(assert (= (and b!2417293 (not c!385229)) b!2417290))

(assert (= (and b!2417292 res!1026610) b!2417295))

(assert (= (and b!2417290 (not res!1026609)) b!2417296))

(assert (= (and b!2417296 res!1026606) b!2417289))

(assert (= (or b!2417292 b!2417289) bm!147578))

(assert (= (or b!2417295 b!2417296) bm!147580))

(assert (= (or b!2417288 bm!147580) bm!147579))

(declare-fun m!2805463 () Bool)

(assert (=> bm!147578 m!2805463))

(declare-fun m!2805465 () Bool)

(assert (=> bm!147579 m!2805465))

(declare-fun m!2805467 () Bool)

(assert (=> b!2417294 m!2805467))

(assert (=> b!2417016 d!701355))

(declare-fun d!701357 () Bool)

(declare-fun isEmpty!16361 (Option!5605) Bool)

(assert (=> d!701357 (= (isDefined!4431 lt!874441) (not (isEmpty!16361 lt!874441)))))

(declare-fun bs!463609 () Bool)

(assert (= bs!463609 d!701357))

(declare-fun m!2805469 () Bool)

(assert (=> bs!463609 m!2805469))

(assert (=> b!2417016 d!701357))

(declare-fun b!2417342 () Bool)

(declare-fun lt!874499 () Unit!41491)

(declare-fun lt!874498 () Unit!41491)

(assert (=> b!2417342 (= lt!874499 lt!874498)))

(assert (=> b!2417342 (= (++!7025 (++!7025 Nil!28348 (Cons!28348 (h!33749 s!9460) Nil!28348)) (t!208423 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!651 (List!28446 C!14366 List!28446 List!28446) Unit!41491)

(assert (=> b!2417342 (= lt!874498 (lemmaMoveElementToOtherListKeepsConcatEq!651 Nil!28348 (h!33749 s!9460) (t!208423 s!9460) s!9460))))

(declare-fun e!1538270 () Option!5605)

(assert (=> b!2417342 (= e!1538270 (findConcatSeparation!713 lt!874436 EmptyExpr!7104 (++!7025 Nil!28348 (Cons!28348 (h!33749 s!9460) Nil!28348)) (t!208423 s!9460) s!9460))))

(declare-fun b!2417343 () Bool)

(declare-fun e!1538269 () Option!5605)

(assert (=> b!2417343 (= e!1538269 (Some!5604 (tuple2!27989 Nil!28348 s!9460)))))

(declare-fun b!2417344 () Bool)

(assert (=> b!2417344 (= e!1538269 e!1538270)))

(declare-fun c!385240 () Bool)

(assert (=> b!2417344 (= c!385240 (is-Nil!28348 s!9460))))

(declare-fun b!2417345 () Bool)

(declare-fun e!1538267 () Bool)

(assert (=> b!2417345 (= e!1538267 (matchR!3221 EmptyExpr!7104 s!9460))))

(declare-fun b!2417346 () Bool)

(declare-fun res!1026636 () Bool)

(declare-fun e!1538268 () Bool)

(assert (=> b!2417346 (=> (not res!1026636) (not e!1538268))))

(declare-fun lt!874497 () Option!5605)

(assert (=> b!2417346 (= res!1026636 (matchR!3221 EmptyExpr!7104 (_2!16535 (get!8709 lt!874497))))))

(declare-fun b!2417347 () Bool)

(assert (=> b!2417347 (= e!1538268 (= (++!7025 (_1!16535 (get!8709 lt!874497)) (_2!16535 (get!8709 lt!874497))) s!9460))))

(declare-fun b!2417348 () Bool)

(declare-fun res!1026637 () Bool)

(assert (=> b!2417348 (=> (not res!1026637) (not e!1538268))))

(assert (=> b!2417348 (= res!1026637 (matchR!3221 lt!874436 (_1!16535 (get!8709 lt!874497))))))

(declare-fun d!701359 () Bool)

(declare-fun e!1538266 () Bool)

(assert (=> d!701359 e!1538266))

(declare-fun res!1026639 () Bool)

(assert (=> d!701359 (=> res!1026639 e!1538266)))

(assert (=> d!701359 (= res!1026639 e!1538268)))

(declare-fun res!1026640 () Bool)

(assert (=> d!701359 (=> (not res!1026640) (not e!1538268))))

(assert (=> d!701359 (= res!1026640 (isDefined!4431 lt!874497))))

(assert (=> d!701359 (= lt!874497 e!1538269)))

(declare-fun c!385241 () Bool)

(assert (=> d!701359 (= c!385241 e!1538267)))

(declare-fun res!1026638 () Bool)

(assert (=> d!701359 (=> (not res!1026638) (not e!1538267))))

(assert (=> d!701359 (= res!1026638 (matchR!3221 lt!874436 Nil!28348))))

(assert (=> d!701359 (validRegex!2824 lt!874436)))

(assert (=> d!701359 (= (findConcatSeparation!713 lt!874436 EmptyExpr!7104 Nil!28348 s!9460 s!9460) lt!874497)))

(declare-fun b!2417349 () Bool)

(assert (=> b!2417349 (= e!1538270 None!5604)))

(declare-fun b!2417350 () Bool)

(assert (=> b!2417350 (= e!1538266 (not (isDefined!4431 lt!874497)))))

(assert (= (and d!701359 res!1026638) b!2417345))

(assert (= (and d!701359 c!385241) b!2417343))

(assert (= (and d!701359 (not c!385241)) b!2417344))

(assert (= (and b!2417344 c!385240) b!2417349))

(assert (= (and b!2417344 (not c!385240)) b!2417342))

(assert (= (and d!701359 res!1026640) b!2417348))

(assert (= (and b!2417348 res!1026637) b!2417346))

(assert (= (and b!2417346 res!1026636) b!2417347))

(assert (= (and d!701359 (not res!1026639)) b!2417350))

(declare-fun m!2805471 () Bool)

(assert (=> b!2417347 m!2805471))

(declare-fun m!2805473 () Bool)

(assert (=> b!2417347 m!2805473))

(declare-fun m!2805475 () Bool)

(assert (=> b!2417345 m!2805475))

(assert (=> b!2417348 m!2805471))

(declare-fun m!2805477 () Bool)

(assert (=> b!2417348 m!2805477))

(declare-fun m!2805479 () Bool)

(assert (=> b!2417350 m!2805479))

(assert (=> b!2417346 m!2805471))

(declare-fun m!2805481 () Bool)

(assert (=> b!2417346 m!2805481))

(declare-fun m!2805483 () Bool)

(assert (=> b!2417342 m!2805483))

(assert (=> b!2417342 m!2805483))

(declare-fun m!2805485 () Bool)

(assert (=> b!2417342 m!2805485))

(declare-fun m!2805487 () Bool)

(assert (=> b!2417342 m!2805487))

(assert (=> b!2417342 m!2805483))

(declare-fun m!2805489 () Bool)

(assert (=> b!2417342 m!2805489))

(assert (=> d!701359 m!2805479))

(declare-fun m!2805491 () Bool)

(assert (=> d!701359 m!2805491))

(assert (=> d!701359 m!2805307))

(assert (=> b!2417016 d!701359))

(declare-fun d!701361 () Bool)

(assert (=> d!701361 (= (get!8709 lt!874441) (v!31012 lt!874441))))

(assert (=> b!2417027 d!701361))

(declare-fun d!701363 () Bool)

(assert (=> d!701363 (matchR!3221 (Concat!11740 lt!874436 EmptyExpr!7104) (++!7025 (_1!16535 lt!874442) (_2!16535 lt!874442)))))

(declare-fun lt!874502 () Unit!41491)

(declare-fun choose!14293 (Regex!7104 Regex!7104 List!28446 List!28446 List!28446) Unit!41491)

(assert (=> d!701363 (= lt!874502 (choose!14293 lt!874436 EmptyExpr!7104 (_1!16535 lt!874442) (_2!16535 lt!874442) s!9460))))

(assert (=> d!701363 (validRegex!2824 lt!874436)))

(assert (=> d!701363 (= (lemmaFindSeparationIsDefinedThenConcatMatches!53 lt!874436 EmptyExpr!7104 (_1!16535 lt!874442) (_2!16535 lt!874442) s!9460) lt!874502)))

(declare-fun bs!463610 () Bool)

(assert (= bs!463610 d!701363))

(assert (=> bs!463610 m!2805321))

(assert (=> bs!463610 m!2805321))

(assert (=> bs!463610 m!2805323))

(declare-fun m!2805515 () Bool)

(assert (=> bs!463610 m!2805515))

(assert (=> bs!463610 m!2805307))

(assert (=> b!2417027 d!701363))

(declare-fun b!2417351 () Bool)

(declare-fun res!1026648 () Bool)

(declare-fun e!1538273 () Bool)

(assert (=> b!2417351 (=> res!1026648 e!1538273)))

(assert (=> b!2417351 (= res!1026648 (not (is-ElementMatch!7104 (Concat!11740 lt!874436 EmptyExpr!7104))))))

(declare-fun e!1538276 () Bool)

(assert (=> b!2417351 (= e!1538276 e!1538273)))

(declare-fun b!2417352 () Bool)

(declare-fun e!1538275 () Bool)

(assert (=> b!2417352 (= e!1538273 e!1538275)))

(declare-fun res!1026644 () Bool)

(assert (=> b!2417352 (=> (not res!1026644) (not e!1538275))))

(declare-fun lt!874503 () Bool)

(assert (=> b!2417352 (= res!1026644 (not lt!874503))))

(declare-fun b!2417353 () Bool)

(declare-fun e!1538271 () Bool)

(declare-fun call!147586 () Bool)

(assert (=> b!2417353 (= e!1538271 (= lt!874503 call!147586))))

(declare-fun b!2417354 () Bool)

(declare-fun res!1026646 () Bool)

(declare-fun e!1538272 () Bool)

(assert (=> b!2417354 (=> (not res!1026646) (not e!1538272))))

(assert (=> b!2417354 (= res!1026646 (not call!147586))))

(declare-fun bm!147581 () Bool)

(assert (=> bm!147581 (= call!147586 (isEmpty!16360 (++!7025 (_1!16535 lt!874442) (_2!16535 lt!874442))))))

(declare-fun b!2417355 () Bool)

(declare-fun e!1538274 () Bool)

(assert (=> b!2417355 (= e!1538274 (not (= (head!5422 (++!7025 (_1!16535 lt!874442) (_2!16535 lt!874442))) (c!385171 (Concat!11740 lt!874436 EmptyExpr!7104)))))))

(declare-fun d!701367 () Bool)

(assert (=> d!701367 e!1538271))

(declare-fun c!385244 () Bool)

(assert (=> d!701367 (= c!385244 (is-EmptyExpr!7104 (Concat!11740 lt!874436 EmptyExpr!7104)))))

(declare-fun e!1538277 () Bool)

(assert (=> d!701367 (= lt!874503 e!1538277)))

(declare-fun c!385243 () Bool)

(assert (=> d!701367 (= c!385243 (isEmpty!16360 (++!7025 (_1!16535 lt!874442) (_2!16535 lt!874442))))))

(assert (=> d!701367 (validRegex!2824 (Concat!11740 lt!874436 EmptyExpr!7104))))

(assert (=> d!701367 (= (matchR!3221 (Concat!11740 lt!874436 EmptyExpr!7104) (++!7025 (_1!16535 lt!874442) (_2!16535 lt!874442))) lt!874503)))

(declare-fun b!2417356 () Bool)

(assert (=> b!2417356 (= e!1538277 (matchR!3221 (derivativeStep!1796 (Concat!11740 lt!874436 EmptyExpr!7104) (head!5422 (++!7025 (_1!16535 lt!874442) (_2!16535 lt!874442)))) (tail!3694 (++!7025 (_1!16535 lt!874442) (_2!16535 lt!874442)))))))

(declare-fun b!2417357 () Bool)

(assert (=> b!2417357 (= e!1538275 e!1538274)))

(declare-fun res!1026641 () Bool)

(assert (=> b!2417357 (=> res!1026641 e!1538274)))

(assert (=> b!2417357 (= res!1026641 call!147586)))

(declare-fun b!2417358 () Bool)

(assert (=> b!2417358 (= e!1538277 (nullable!2139 (Concat!11740 lt!874436 EmptyExpr!7104)))))

(declare-fun b!2417359 () Bool)

(declare-fun res!1026647 () Bool)

(assert (=> b!2417359 (=> (not res!1026647) (not e!1538272))))

(assert (=> b!2417359 (= res!1026647 (isEmpty!16360 (tail!3694 (++!7025 (_1!16535 lt!874442) (_2!16535 lt!874442)))))))

(declare-fun b!2417360 () Bool)

(declare-fun res!1026642 () Bool)

(assert (=> b!2417360 (=> res!1026642 e!1538273)))

(assert (=> b!2417360 (= res!1026642 e!1538272)))

(declare-fun res!1026643 () Bool)

(assert (=> b!2417360 (=> (not res!1026643) (not e!1538272))))

(assert (=> b!2417360 (= res!1026643 lt!874503)))

(declare-fun b!2417361 () Bool)

(declare-fun res!1026645 () Bool)

(assert (=> b!2417361 (=> res!1026645 e!1538274)))

(assert (=> b!2417361 (= res!1026645 (not (isEmpty!16360 (tail!3694 (++!7025 (_1!16535 lt!874442) (_2!16535 lt!874442))))))))

(declare-fun b!2417362 () Bool)

(assert (=> b!2417362 (= e!1538276 (not lt!874503))))

(declare-fun b!2417363 () Bool)

(assert (=> b!2417363 (= e!1538272 (= (head!5422 (++!7025 (_1!16535 lt!874442) (_2!16535 lt!874442))) (c!385171 (Concat!11740 lt!874436 EmptyExpr!7104))))))

(declare-fun b!2417364 () Bool)

(assert (=> b!2417364 (= e!1538271 e!1538276)))

(declare-fun c!385242 () Bool)

(assert (=> b!2417364 (= c!385242 (is-EmptyLang!7104 (Concat!11740 lt!874436 EmptyExpr!7104)))))

(assert (= (and d!701367 c!385243) b!2417358))

(assert (= (and d!701367 (not c!385243)) b!2417356))

(assert (= (and d!701367 c!385244) b!2417353))

(assert (= (and d!701367 (not c!385244)) b!2417364))

(assert (= (and b!2417364 c!385242) b!2417362))

(assert (= (and b!2417364 (not c!385242)) b!2417351))

(assert (= (and b!2417351 (not res!1026648)) b!2417360))

(assert (= (and b!2417360 res!1026643) b!2417354))

(assert (= (and b!2417354 res!1026646) b!2417359))

(assert (= (and b!2417359 res!1026647) b!2417363))

(assert (= (and b!2417360 (not res!1026642)) b!2417352))

(assert (= (and b!2417352 res!1026644) b!2417357))

(assert (= (and b!2417357 (not res!1026641)) b!2417361))

(assert (= (and b!2417361 (not res!1026645)) b!2417355))

(assert (= (or b!2417353 b!2417357 b!2417354) bm!147581))

(assert (=> b!2417355 m!2805321))

(declare-fun m!2805517 () Bool)

(assert (=> b!2417355 m!2805517))

(assert (=> b!2417356 m!2805321))

(assert (=> b!2417356 m!2805517))

(assert (=> b!2417356 m!2805517))

(declare-fun m!2805519 () Bool)

(assert (=> b!2417356 m!2805519))

(assert (=> b!2417356 m!2805321))

(declare-fun m!2805521 () Bool)

(assert (=> b!2417356 m!2805521))

(assert (=> b!2417356 m!2805519))

(assert (=> b!2417356 m!2805521))

(declare-fun m!2805523 () Bool)

(assert (=> b!2417356 m!2805523))

(assert (=> b!2417359 m!2805321))

(assert (=> b!2417359 m!2805521))

(assert (=> b!2417359 m!2805521))

(declare-fun m!2805525 () Bool)

(assert (=> b!2417359 m!2805525))

(assert (=> b!2417363 m!2805321))

(assert (=> b!2417363 m!2805517))

(declare-fun m!2805527 () Bool)

(assert (=> b!2417358 m!2805527))

(assert (=> d!701367 m!2805321))

(declare-fun m!2805529 () Bool)

(assert (=> d!701367 m!2805529))

(declare-fun m!2805531 () Bool)

(assert (=> d!701367 m!2805531))

(assert (=> bm!147581 m!2805321))

(assert (=> bm!147581 m!2805529))

(assert (=> b!2417361 m!2805321))

(assert (=> b!2417361 m!2805521))

(assert (=> b!2417361 m!2805521))

(assert (=> b!2417361 m!2805525))

(assert (=> b!2417027 d!701367))

(declare-fun d!701369 () Bool)

(declare-fun e!1538283 () Bool)

(assert (=> d!701369 e!1538283))

(declare-fun res!1026654 () Bool)

(assert (=> d!701369 (=> (not res!1026654) (not e!1538283))))

(declare-fun lt!874506 () List!28446)

(declare-fun content!3891 (List!28446) (Set C!14366))

(assert (=> d!701369 (= res!1026654 (= (content!3891 lt!874506) (set.union (content!3891 (_1!16535 lt!874442)) (content!3891 (_2!16535 lt!874442)))))))

(declare-fun e!1538282 () List!28446)

(assert (=> d!701369 (= lt!874506 e!1538282)))

(declare-fun c!385247 () Bool)

(assert (=> d!701369 (= c!385247 (is-Nil!28348 (_1!16535 lt!874442)))))

(assert (=> d!701369 (= (++!7025 (_1!16535 lt!874442) (_2!16535 lt!874442)) lt!874506)))

(declare-fun b!2417373 () Bool)

(assert (=> b!2417373 (= e!1538282 (_2!16535 lt!874442))))

(declare-fun b!2417375 () Bool)

(declare-fun res!1026653 () Bool)

(assert (=> b!2417375 (=> (not res!1026653) (not e!1538283))))

(declare-fun size!22229 (List!28446) Int)

(assert (=> b!2417375 (= res!1026653 (= (size!22229 lt!874506) (+ (size!22229 (_1!16535 lt!874442)) (size!22229 (_2!16535 lt!874442)))))))

(declare-fun b!2417374 () Bool)

(assert (=> b!2417374 (= e!1538282 (Cons!28348 (h!33749 (_1!16535 lt!874442)) (++!7025 (t!208423 (_1!16535 lt!874442)) (_2!16535 lt!874442))))))

(declare-fun b!2417376 () Bool)

(assert (=> b!2417376 (= e!1538283 (or (not (= (_2!16535 lt!874442) Nil!28348)) (= lt!874506 (_1!16535 lt!874442))))))

(assert (= (and d!701369 c!385247) b!2417373))

(assert (= (and d!701369 (not c!385247)) b!2417374))

(assert (= (and d!701369 res!1026654) b!2417375))

(assert (= (and b!2417375 res!1026653) b!2417376))

(declare-fun m!2805533 () Bool)

(assert (=> d!701369 m!2805533))

(declare-fun m!2805535 () Bool)

(assert (=> d!701369 m!2805535))

(declare-fun m!2805537 () Bool)

(assert (=> d!701369 m!2805537))

(declare-fun m!2805539 () Bool)

(assert (=> b!2417375 m!2805539))

(declare-fun m!2805541 () Bool)

(assert (=> b!2417375 m!2805541))

(declare-fun m!2805543 () Bool)

(assert (=> b!2417375 m!2805543))

(declare-fun m!2805545 () Bool)

(assert (=> b!2417374 m!2805545))

(assert (=> b!2417027 d!701369))

(declare-fun b!2417388 () Bool)

(declare-fun e!1538286 () Bool)

(declare-fun tp!768628 () Bool)

(declare-fun tp!768625 () Bool)

(assert (=> b!2417388 (= e!1538286 (and tp!768628 tp!768625))))

(assert (=> b!2417014 (= tp!768582 e!1538286)))

(declare-fun b!2417390 () Bool)

(declare-fun tp!768627 () Bool)

(declare-fun tp!768624 () Bool)

(assert (=> b!2417390 (= e!1538286 (and tp!768627 tp!768624))))

(declare-fun b!2417389 () Bool)

(declare-fun tp!768626 () Bool)

(assert (=> b!2417389 (= e!1538286 tp!768626)))

(declare-fun b!2417387 () Bool)

(assert (=> b!2417387 (= e!1538286 tp_is_empty!11621)))

(assert (= (and b!2417014 (is-ElementMatch!7104 (regOne!14720 r!13927))) b!2417387))

(assert (= (and b!2417014 (is-Concat!11740 (regOne!14720 r!13927))) b!2417388))

(assert (= (and b!2417014 (is-Star!7104 (regOne!14720 r!13927))) b!2417389))

(assert (= (and b!2417014 (is-Union!7104 (regOne!14720 r!13927))) b!2417390))

(declare-fun b!2417392 () Bool)

(declare-fun e!1538287 () Bool)

(declare-fun tp!768633 () Bool)

(declare-fun tp!768630 () Bool)

(assert (=> b!2417392 (= e!1538287 (and tp!768633 tp!768630))))

(assert (=> b!2417014 (= tp!768589 e!1538287)))

(declare-fun b!2417394 () Bool)

(declare-fun tp!768632 () Bool)

(declare-fun tp!768629 () Bool)

(assert (=> b!2417394 (= e!1538287 (and tp!768632 tp!768629))))

(declare-fun b!2417393 () Bool)

(declare-fun tp!768631 () Bool)

(assert (=> b!2417393 (= e!1538287 tp!768631)))

(declare-fun b!2417391 () Bool)

(assert (=> b!2417391 (= e!1538287 tp_is_empty!11621)))

(assert (= (and b!2417014 (is-ElementMatch!7104 (regTwo!14720 r!13927))) b!2417391))

(assert (= (and b!2417014 (is-Concat!11740 (regTwo!14720 r!13927))) b!2417392))

(assert (= (and b!2417014 (is-Star!7104 (regTwo!14720 r!13927))) b!2417393))

(assert (= (and b!2417014 (is-Union!7104 (regTwo!14720 r!13927))) b!2417394))

(declare-fun b!2417403 () Bool)

(declare-fun e!1538293 () Bool)

(declare-fun tp!768636 () Bool)

(assert (=> b!2417403 (= e!1538293 (and tp_is_empty!11621 tp!768636))))

(assert (=> b!2417025 (= tp!768586 e!1538293)))

(assert (= (and b!2417025 (is-Cons!28348 (t!208423 s!9460))) b!2417403))

(declare-fun b!2417407 () Bool)

(declare-fun e!1538295 () Bool)

(declare-fun tp!768641 () Bool)

(declare-fun tp!768638 () Bool)

(assert (=> b!2417407 (= e!1538295 (and tp!768641 tp!768638))))

(assert (=> b!2417022 (= tp!768583 e!1538295)))

(declare-fun b!2417409 () Bool)

(declare-fun tp!768640 () Bool)

(declare-fun tp!768637 () Bool)

(assert (=> b!2417409 (= e!1538295 (and tp!768640 tp!768637))))

(declare-fun b!2417408 () Bool)

(declare-fun tp!768639 () Bool)

(assert (=> b!2417408 (= e!1538295 tp!768639)))

(declare-fun b!2417406 () Bool)

(assert (=> b!2417406 (= e!1538295 tp_is_empty!11621)))

(assert (= (and b!2417022 (is-ElementMatch!7104 (reg!7433 r!13927))) b!2417406))

(assert (= (and b!2417022 (is-Concat!11740 (reg!7433 r!13927))) b!2417407))

(assert (= (and b!2417022 (is-Star!7104 (reg!7433 r!13927))) b!2417408))

(assert (= (and b!2417022 (is-Union!7104 (reg!7433 r!13927))) b!2417409))

(declare-fun b!2417415 () Bool)

(declare-fun e!1538298 () Bool)

(declare-fun tp!768646 () Bool)

(declare-fun tp!768643 () Bool)

(assert (=> b!2417415 (= e!1538298 (and tp!768646 tp!768643))))

(assert (=> b!2417021 (= tp!768587 e!1538298)))

(declare-fun b!2417417 () Bool)

(declare-fun tp!768645 () Bool)

(declare-fun tp!768642 () Bool)

(assert (=> b!2417417 (= e!1538298 (and tp!768645 tp!768642))))

(declare-fun b!2417416 () Bool)

(declare-fun tp!768644 () Bool)

(assert (=> b!2417416 (= e!1538298 tp!768644)))

(declare-fun b!2417414 () Bool)

(assert (=> b!2417414 (= e!1538298 tp_is_empty!11621)))

(assert (= (and b!2417021 (is-ElementMatch!7104 (h!33750 l!9164))) b!2417414))

(assert (= (and b!2417021 (is-Concat!11740 (h!33750 l!9164))) b!2417415))

(assert (= (and b!2417021 (is-Star!7104 (h!33750 l!9164))) b!2417416))

(assert (= (and b!2417021 (is-Union!7104 (h!33750 l!9164))) b!2417417))

(declare-fun b!2417422 () Bool)

(declare-fun e!1538301 () Bool)

(declare-fun tp!768651 () Bool)

(declare-fun tp!768652 () Bool)

(assert (=> b!2417422 (= e!1538301 (and tp!768651 tp!768652))))

(assert (=> b!2417021 (= tp!768588 e!1538301)))

(assert (= (and b!2417021 (is-Cons!28349 (t!208424 l!9164))) b!2417422))

(declare-fun b!2417424 () Bool)

(declare-fun e!1538302 () Bool)

(declare-fun tp!768657 () Bool)

(declare-fun tp!768654 () Bool)

(assert (=> b!2417424 (= e!1538302 (and tp!768657 tp!768654))))

(assert (=> b!2417011 (= tp!768585 e!1538302)))

(declare-fun b!2417426 () Bool)

(declare-fun tp!768656 () Bool)

(declare-fun tp!768653 () Bool)

(assert (=> b!2417426 (= e!1538302 (and tp!768656 tp!768653))))

(declare-fun b!2417425 () Bool)

(declare-fun tp!768655 () Bool)

(assert (=> b!2417425 (= e!1538302 tp!768655)))

(declare-fun b!2417423 () Bool)

(assert (=> b!2417423 (= e!1538302 tp_is_empty!11621)))

(assert (= (and b!2417011 (is-ElementMatch!7104 (regOne!14721 r!13927))) b!2417423))

(assert (= (and b!2417011 (is-Concat!11740 (regOne!14721 r!13927))) b!2417424))

(assert (= (and b!2417011 (is-Star!7104 (regOne!14721 r!13927))) b!2417425))

(assert (= (and b!2417011 (is-Union!7104 (regOne!14721 r!13927))) b!2417426))

(declare-fun b!2417428 () Bool)

(declare-fun e!1538303 () Bool)

(declare-fun tp!768662 () Bool)

(declare-fun tp!768659 () Bool)

(assert (=> b!2417428 (= e!1538303 (and tp!768662 tp!768659))))

(assert (=> b!2417011 (= tp!768584 e!1538303)))

(declare-fun b!2417430 () Bool)

(declare-fun tp!768661 () Bool)

(declare-fun tp!768658 () Bool)

(assert (=> b!2417430 (= e!1538303 (and tp!768661 tp!768658))))

(declare-fun b!2417429 () Bool)

(declare-fun tp!768660 () Bool)

(assert (=> b!2417429 (= e!1538303 tp!768660)))

(declare-fun b!2417427 () Bool)

(assert (=> b!2417427 (= e!1538303 tp_is_empty!11621)))

(assert (= (and b!2417011 (is-ElementMatch!7104 (regTwo!14721 r!13927))) b!2417427))

(assert (= (and b!2417011 (is-Concat!11740 (regTwo!14721 r!13927))) b!2417428))

(assert (= (and b!2417011 (is-Star!7104 (regTwo!14721 r!13927))) b!2417429))

(assert (= (and b!2417011 (is-Union!7104 (regTwo!14721 r!13927))) b!2417430))

(declare-fun b_lambda!74591 () Bool)

(assert (= b_lambda!74589 (or start!236794 b_lambda!74591)))

(declare-fun bs!463611 () Bool)

(declare-fun d!701371 () Bool)

(assert (= bs!463611 (and d!701371 start!236794)))

(assert (=> bs!463611 (= (dynLambda!12200 lambda!91032 (h!33750 l!9164)) (validRegex!2824 (h!33750 l!9164)))))

(declare-fun m!2805547 () Bool)

(assert (=> bs!463611 m!2805547))

(assert (=> b!2417146 d!701371))

(push 1)

(assert (not b!2417361))

(assert (not b!2417388))

(assert (not b!2417345))

(assert (not b!2417136))

(assert (not d!701369))

(assert (not b!2417424))

(assert (not bm!147581))

(assert (not b!2417363))

(assert (not bm!147570))

(assert (not b!2417409))

(assert (not d!701367))

(assert (not b!2417348))

(assert (not b!2417429))

(assert (not b!2417346))

(assert (not b!2417147))

(assert (not b!2417282))

(assert (not b!2417417))

(assert (not d!701349))

(assert (not d!701339))

(assert (not d!701357))

(assert (not b!2417375))

(assert (not b!2417342))

(assert (not b!2417416))

(assert (not b!2417152))

(assert (not b!2417217))

(assert (not bm!147556))

(assert (not bm!147576))

(assert (not b!2417279))

(assert (not b!2417266))

(assert (not b!2417284))

(assert (not b!2417347))

(assert (not b!2417220))

(assert (not b!2417389))

(assert (not b!2417374))

(assert (not b!2417393))

(assert (not b!2417426))

(assert (not b!2417155))

(assert (not b!2417153))

(assert (not b!2417430))

(assert (not bm!147557))

(assert (not b!2417259))

(assert (not b!2417425))

(assert (not b!2417350))

(assert (not b!2417415))

(assert (not b!2417394))

(assert (not b!2417149))

(assert (not b!2417148))

(assert (not b!2417140))

(assert (not b!2417156))

(assert (not b!2417355))

(assert (not b!2417392))

(assert (not b!2417278))

(assert (not b!2417408))

(assert (not b!2417218))

(assert (not b!2417390))

(assert (not b!2417157))

(assert (not bm!147579))

(assert (not b!2417133))

(assert (not b!2417294))

(assert (not b!2417422))

(assert (not b!2417358))

(assert (not d!701325))

(assert (not b!2417356))

(assert (not b_lambda!74591))

(assert (not bs!463611))

(assert tp_is_empty!11621)

(assert (not d!701359))

(assert (not b!2417141))

(assert (not b!2417407))

(assert (not d!701351))

(assert (not bm!147577))

(assert (not b!2417225))

(assert (not b!2417359))

(assert (not b!2417281))

(assert (not b!2417428))

(assert (not b!2417403))

(assert (not b!2417223))

(assert (not b!2417137))

(assert (not b!2417139))

(assert (not b!2417103))

(assert (not bm!147575))

(assert (not d!701341))

(assert (not b!2417132))

(assert (not b!2417221))

(assert (not d!701363))

(assert (not b!2417286))

(assert (not bm!147578))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

