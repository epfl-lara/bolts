; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!542926 () Bool)

(assert start!542926)

(declare-fun b!5132545 () Bool)

(assert (=> b!5132545 true))

(declare-fun bs!1198728 () Bool)

(declare-fun b!5132546 () Bool)

(declare-fun b!5132543 () Bool)

(assert (= bs!1198728 (and b!5132546 b!5132543)))

(declare-fun lambda!254935 () Int)

(declare-fun lambda!254934 () Int)

(assert (=> bs!1198728 (not (= lambda!254935 lambda!254934))))

(declare-fun bs!1198729 () Bool)

(declare-fun b!5132550 () Bool)

(assert (= bs!1198729 (and b!5132550 b!5132543)))

(declare-fun lambda!254936 () Int)

(assert (=> bs!1198729 (not (= lambda!254936 lambda!254934))))

(declare-fun bs!1198730 () Bool)

(assert (= bs!1198730 (and b!5132550 b!5132546)))

(assert (=> bs!1198730 (not (= lambda!254936 lambda!254935))))

(assert (=> b!5132550 true))

(assert (=> b!5132550 true))

(declare-fun b!5132542 () Bool)

(declare-fun e!3201231 () Bool)

(declare-fun e!3201230 () Bool)

(assert (=> b!5132542 (= e!3201231 e!3201230)))

(declare-fun res!2186000 () Bool)

(assert (=> b!5132542 (=> res!2186000 e!3201230)))

(declare-datatypes ((C!28986 0))(
  ( (C!28987 (val!24145 Int)) )
))
(declare-datatypes ((Regex!14360 0))(
  ( (ElementMatch!14360 (c!883211 C!28986)) (Concat!23205 (regOne!29232 Regex!14360) (regTwo!29232 Regex!14360)) (EmptyExpr!14360) (Star!14360 (reg!14689 Regex!14360)) (EmptyLang!14360) (Union!14360 (regOne!29233 Regex!14360) (regTwo!29233 Regex!14360)) )
))
(declare-datatypes ((List!59661 0))(
  ( (Nil!59537) (Cons!59537 (h!65985 Regex!14360) (t!372688 List!59661)) )
))
(declare-datatypes ((Context!7488 0))(
  ( (Context!7489 (exprs!4244 List!59661)) )
))
(declare-fun lt!2117889 () Context!7488)

(declare-fun z!1054 () (Set Context!7488))

(assert (=> b!5132542 (= res!2186000 (not (set.member lt!2117889 z!1054)))))

(declare-fun getWitness!812 ((Set Context!7488) Int) Context!7488)

(assert (=> b!5132542 (= lt!2117889 (getWitness!812 z!1054 lambda!254936))))

(declare-fun e!3201236 () Bool)

(declare-fun e!3201235 () Bool)

(assert (=> b!5132543 (= e!3201236 e!3201235)))

(declare-fun res!2186001 () Bool)

(assert (=> b!5132543 (=> (not res!2186001) (not e!3201235))))

(declare-fun lt!2117884 () Bool)

(declare-fun lt!2117885 () (Set Context!7488))

(declare-fun forall!13804 ((Set Context!7488) Int) Bool)

(assert (=> b!5132543 (= res!2186001 (= lt!2117884 (forall!13804 lt!2117885 lambda!254934)))))

(declare-fun lostCauseZipper!1204 ((Set Context!7488)) Bool)

(assert (=> b!5132543 (= lt!2117884 (lostCauseZipper!1204 lt!2117885))))

(declare-fun b!5132544 () Bool)

(declare-fun e!3201229 () Bool)

(declare-fun e!3201234 () Bool)

(assert (=> b!5132544 (= e!3201229 e!3201234)))

(declare-fun res!2185999 () Bool)

(assert (=> b!5132544 (=> res!2185999 e!3201234)))

(declare-fun lt!2117891 () Context!7488)

(assert (=> b!5132544 (= res!2185999 (not (set.member lt!2117891 lt!2117885)))))

(declare-datatypes ((List!59662 0))(
  ( (Nil!59538) (Cons!59538 (h!65986 Context!7488) (t!372689 List!59662)) )
))
(declare-fun lt!2117890 () List!59662)

(declare-fun getWitness!813 (List!59662 Int) Context!7488)

(assert (=> b!5132544 (= lt!2117891 (getWitness!813 lt!2117890 lambda!254935))))

(declare-fun setIsEmpty!31191 () Bool)

(declare-fun setRes!31191 () Bool)

(assert (=> setIsEmpty!31191 setRes!31191))

(declare-fun e!3201233 () Bool)

(assert (=> b!5132545 (= e!3201233 e!3201236)))

(declare-fun res!2185997 () Bool)

(assert (=> b!5132545 (=> (not res!2185997) (not e!3201236))))

(declare-fun lambda!254933 () Int)

(declare-fun flatMap!411 ((Set Context!7488) Int) (Set Context!7488))

(assert (=> b!5132545 (= res!2185997 (= lt!2117885 (flatMap!411 z!1054 lambda!254933)))))

(declare-fun a!1233 () C!28986)

(declare-fun derivationStepZipper!915 ((Set Context!7488) C!28986) (Set Context!7488))

(assert (=> b!5132545 (= lt!2117885 (derivationStepZipper!915 z!1054 a!1233))))

(assert (=> b!5132546 (= e!3201235 (not e!3201229))))

(declare-fun res!2186002 () Bool)

(assert (=> b!5132546 (=> res!2186002 e!3201229)))

(declare-fun exists!1682 ((Set Context!7488) Int) Bool)

(assert (=> b!5132546 (= res!2186002 (not (exists!1682 lt!2117885 lambda!254935)))))

(declare-fun exists!1683 (List!59662 Int) Bool)

(assert (=> b!5132546 (exists!1683 lt!2117890 lambda!254935)))

(declare-datatypes ((Unit!150842 0))(
  ( (Unit!150843) )
))
(declare-fun lt!2117887 () Unit!150842)

(declare-fun lemmaNotForallThenExists!393 (List!59662 Int) Unit!150842)

(assert (=> b!5132546 (= lt!2117887 (lemmaNotForallThenExists!393 lt!2117890 lambda!254934))))

(declare-fun toList!8345 ((Set Context!7488)) List!59662)

(assert (=> b!5132546 (= lt!2117890 (toList!8345 lt!2117885))))

(declare-fun b!5132547 () Bool)

(declare-fun lostCause!1303 (Context!7488) Bool)

(assert (=> b!5132547 (= e!3201230 (lostCause!1303 lt!2117889))))

(declare-fun lt!2117888 () Unit!150842)

(declare-fun forallContained!4622 (List!59662 Int Context!7488) Unit!150842)

(assert (=> b!5132547 (= lt!2117888 (forallContained!4622 (toList!8345 z!1054) lambda!254934 lt!2117889))))

(declare-fun setElem!31191 () Context!7488)

(declare-fun e!3201232 () Bool)

(declare-fun setNonEmpty!31191 () Bool)

(declare-fun tp!1431806 () Bool)

(declare-fun inv!79082 (Context!7488) Bool)

(assert (=> setNonEmpty!31191 (= setRes!31191 (and tp!1431806 (inv!79082 setElem!31191) e!3201232))))

(declare-fun setRest!31191 () (Set Context!7488))

(assert (=> setNonEmpty!31191 (= z!1054 (set.union (set.insert setElem!31191 (as set.empty (Set Context!7488))) setRest!31191))))

(declare-fun b!5132548 () Bool)

(declare-fun res!2185998 () Bool)

(assert (=> b!5132548 (=> res!2185998 e!3201230)))

(declare-fun derivationStepZipperUp!68 (Context!7488 C!28986) (Set Context!7488))

(assert (=> b!5132548 (= res!2185998 (not (set.member lt!2117891 (derivationStepZipperUp!68 lt!2117889 a!1233))))))

(declare-fun res!2186006 () Bool)

(assert (=> start!542926 (=> (not res!2186006) (not e!3201233))))

(assert (=> start!542926 (= res!2186006 (lostCauseZipper!1204 z!1054))))

(assert (=> start!542926 e!3201233))

(declare-fun condSetEmpty!31191 () Bool)

(assert (=> start!542926 (= condSetEmpty!31191 (= z!1054 (as set.empty (Set Context!7488))))))

(assert (=> start!542926 setRes!31191))

(declare-fun tp_is_empty!37893 () Bool)

(assert (=> start!542926 tp_is_empty!37893))

(declare-fun b!5132549 () Bool)

(declare-fun res!2186003 () Bool)

(assert (=> b!5132549 (=> res!2186003 e!3201234)))

(assert (=> b!5132549 (= res!2186003 (lostCause!1303 lt!2117891))))

(assert (=> b!5132550 (= e!3201234 e!3201231)))

(declare-fun res!2186005 () Bool)

(assert (=> b!5132550 (=> res!2186005 e!3201231)))

(assert (=> b!5132550 (= res!2186005 (not (exists!1682 z!1054 lambda!254936)))))

(assert (=> b!5132550 (exists!1682 z!1054 lambda!254936)))

(declare-fun lt!2117886 () Unit!150842)

(declare-fun lemmaFlatMapPost!15 ((Set Context!7488) Int Context!7488) Unit!150842)

(assert (=> b!5132550 (= lt!2117886 (lemmaFlatMapPost!15 z!1054 lambda!254933 lt!2117891))))

(declare-fun b!5132551 () Bool)

(declare-fun tp!1431807 () Bool)

(assert (=> b!5132551 (= e!3201232 tp!1431807)))

(declare-fun b!5132552 () Bool)

(declare-fun res!2186004 () Bool)

(assert (=> b!5132552 (=> (not res!2186004) (not e!3201235))))

(assert (=> b!5132552 (= res!2186004 (forall!13804 z!1054 lambda!254934))))

(declare-fun b!5132553 () Bool)

(declare-fun res!2186008 () Bool)

(assert (=> b!5132553 (=> (not res!2186008) (not e!3201235))))

(assert (=> b!5132553 (= res!2186008 (not (forall!13804 lt!2117885 lambda!254934)))))

(declare-fun b!5132554 () Bool)

(declare-fun res!2186007 () Bool)

(assert (=> b!5132554 (=> (not res!2186007) (not e!3201235))))

(assert (=> b!5132554 (= res!2186007 (not lt!2117884))))

(assert (= (and start!542926 res!2186006) b!5132545))

(assert (= (and b!5132545 res!2185997) b!5132543))

(assert (= (and b!5132543 res!2186001) b!5132552))

(assert (= (and b!5132552 res!2186004) b!5132554))

(assert (= (and b!5132554 res!2186007) b!5132553))

(assert (= (and b!5132553 res!2186008) b!5132546))

(assert (= (and b!5132546 (not res!2186002)) b!5132544))

(assert (= (and b!5132544 (not res!2185999)) b!5132549))

(assert (= (and b!5132549 (not res!2186003)) b!5132550))

(assert (= (and b!5132550 (not res!2186005)) b!5132542))

(assert (= (and b!5132542 (not res!2186000)) b!5132548))

(assert (= (and b!5132548 (not res!2185998)) b!5132547))

(assert (= (and start!542926 condSetEmpty!31191) setIsEmpty!31191))

(assert (= (and start!542926 (not condSetEmpty!31191)) setNonEmpty!31191))

(assert (= setNonEmpty!31191 b!5132551))

(declare-fun m!6198358 () Bool)

(assert (=> b!5132550 m!6198358))

(assert (=> b!5132550 m!6198358))

(declare-fun m!6198360 () Bool)

(assert (=> b!5132550 m!6198360))

(declare-fun m!6198362 () Bool)

(assert (=> b!5132542 m!6198362))

(declare-fun m!6198364 () Bool)

(assert (=> b!5132542 m!6198364))

(declare-fun m!6198366 () Bool)

(assert (=> b!5132544 m!6198366))

(declare-fun m!6198368 () Bool)

(assert (=> b!5132544 m!6198368))

(declare-fun m!6198370 () Bool)

(assert (=> b!5132546 m!6198370))

(declare-fun m!6198372 () Bool)

(assert (=> b!5132546 m!6198372))

(declare-fun m!6198374 () Bool)

(assert (=> b!5132546 m!6198374))

(declare-fun m!6198376 () Bool)

(assert (=> b!5132546 m!6198376))

(declare-fun m!6198378 () Bool)

(assert (=> b!5132545 m!6198378))

(declare-fun m!6198380 () Bool)

(assert (=> b!5132545 m!6198380))

(declare-fun m!6198382 () Bool)

(assert (=> b!5132552 m!6198382))

(declare-fun m!6198384 () Bool)

(assert (=> b!5132543 m!6198384))

(declare-fun m!6198386 () Bool)

(assert (=> b!5132543 m!6198386))

(declare-fun m!6198388 () Bool)

(assert (=> b!5132547 m!6198388))

(declare-fun m!6198390 () Bool)

(assert (=> b!5132547 m!6198390))

(assert (=> b!5132547 m!6198390))

(declare-fun m!6198392 () Bool)

(assert (=> b!5132547 m!6198392))

(declare-fun m!6198394 () Bool)

(assert (=> setNonEmpty!31191 m!6198394))

(declare-fun m!6198396 () Bool)

(assert (=> b!5132548 m!6198396))

(declare-fun m!6198398 () Bool)

(assert (=> b!5132548 m!6198398))

(declare-fun m!6198400 () Bool)

(assert (=> start!542926 m!6198400))

(assert (=> b!5132553 m!6198384))

(declare-fun m!6198402 () Bool)

(assert (=> b!5132549 m!6198402))

(push 1)

(assert (not b!5132543))

(assert tp_is_empty!37893)

(assert (not b!5132551))

(assert (not b!5132548))

(assert (not b!5132550))

(assert (not b!5132546))

(assert (not b!5132544))

(assert (not b!5132542))

(assert (not setNonEmpty!31191))

(assert (not b!5132553))

(assert (not start!542926))

(assert (not b!5132552))

(assert (not b!5132547))

(assert (not b!5132549))

(assert (not b!5132545))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1198734 () Bool)

(declare-fun d!1660846 () Bool)

(assert (= bs!1198734 (and d!1660846 b!5132543)))

(declare-fun lambda!254977 () Int)

(assert (=> bs!1198734 (= lambda!254977 lambda!254934)))

(declare-fun bs!1198735 () Bool)

(assert (= bs!1198735 (and d!1660846 b!5132546)))

(assert (=> bs!1198735 (not (= lambda!254977 lambda!254935))))

(declare-fun bs!1198736 () Bool)

(assert (= bs!1198736 (and d!1660846 b!5132550)))

(assert (=> bs!1198736 (not (= lambda!254977 lambda!254936))))

(declare-fun bs!1198737 () Bool)

(declare-fun b!5132610 () Bool)

(assert (= bs!1198737 (and b!5132610 b!5132543)))

(declare-fun lambda!254978 () Int)

(assert (=> bs!1198737 (not (= lambda!254978 lambda!254934))))

(declare-fun bs!1198738 () Bool)

(assert (= bs!1198738 (and b!5132610 b!5132546)))

(assert (=> bs!1198738 (= lambda!254978 lambda!254935)))

(declare-fun bs!1198739 () Bool)

(assert (= bs!1198739 (and b!5132610 b!5132550)))

(assert (=> bs!1198739 (not (= lambda!254978 lambda!254936))))

(declare-fun bs!1198740 () Bool)

(assert (= bs!1198740 (and b!5132610 d!1660846)))

(assert (=> bs!1198740 (not (= lambda!254978 lambda!254977))))

(declare-fun bs!1198741 () Bool)

(declare-fun b!5132611 () Bool)

(assert (= bs!1198741 (and b!5132611 d!1660846)))

(declare-fun lambda!254979 () Int)

(assert (=> bs!1198741 (not (= lambda!254979 lambda!254977))))

(declare-fun bs!1198742 () Bool)

(assert (= bs!1198742 (and b!5132611 b!5132610)))

(assert (=> bs!1198742 (= lambda!254979 lambda!254978)))

(declare-fun bs!1198743 () Bool)

(assert (= bs!1198743 (and b!5132611 b!5132546)))

(assert (=> bs!1198743 (= lambda!254979 lambda!254935)))

(declare-fun bs!1198744 () Bool)

(assert (= bs!1198744 (and b!5132611 b!5132543)))

(assert (=> bs!1198744 (not (= lambda!254979 lambda!254934))))

(declare-fun bs!1198745 () Bool)

(assert (= bs!1198745 (and b!5132611 b!5132550)))

(assert (=> bs!1198745 (not (= lambda!254979 lambda!254936))))

(declare-fun e!3201269 () Unit!150842)

(declare-fun Unit!150846 () Unit!150842)

(assert (=> b!5132611 (= e!3201269 Unit!150846)))

(declare-fun lt!2117934 () List!59662)

(declare-fun call!357263 () List!59662)

(assert (=> b!5132611 (= lt!2117934 call!357263)))

(declare-fun lt!2117935 () Unit!150842)

(declare-fun lemmaForallThenNotExists!366 (List!59662 Int) Unit!150842)

(assert (=> b!5132611 (= lt!2117935 (lemmaForallThenNotExists!366 lt!2117934 lambda!254977))))

(declare-fun call!357262 () Bool)

(assert (=> b!5132611 (not call!357262)))

(declare-fun lt!2117937 () Unit!150842)

(assert (=> b!5132611 (= lt!2117937 lt!2117935)))

(declare-fun Unit!150847 () Unit!150842)

(assert (=> b!5132610 (= e!3201269 Unit!150847)))

(declare-fun lt!2117933 () List!59662)

(assert (=> b!5132610 (= lt!2117933 call!357263)))

(declare-fun lt!2117939 () Unit!150842)

(assert (=> b!5132610 (= lt!2117939 (lemmaNotForallThenExists!393 lt!2117933 lambda!254977))))

(assert (=> b!5132610 call!357262))

(declare-fun lt!2117932 () Unit!150842)

(assert (=> b!5132610 (= lt!2117932 lt!2117939)))

(declare-fun c!883235 () Bool)

(declare-fun bm!357258 () Bool)

(assert (=> bm!357258 (= call!357262 (exists!1683 (ite c!883235 lt!2117933 lt!2117934) (ite c!883235 lambda!254978 lambda!254979)))))

(declare-fun lt!2117938 () Bool)

(declare-datatypes ((List!59665 0))(
  ( (Nil!59541) (Cons!59541 (h!65989 C!28986) (t!372692 List!59665)) )
))
(declare-datatypes ((Option!14744 0))(
  ( (None!14743) (Some!14743 (v!50772 List!59665)) )
))
(declare-fun isEmpty!32005 (Option!14744) Bool)

(declare-fun getLanguageWitness!881 ((Set Context!7488)) Option!14744)

(assert (=> d!1660846 (= lt!2117938 (isEmpty!32005 (getLanguageWitness!881 z!1054)))))

(assert (=> d!1660846 (= lt!2117938 (forall!13804 z!1054 lambda!254977))))

(declare-fun lt!2117936 () Unit!150842)

(assert (=> d!1660846 (= lt!2117936 e!3201269)))

(assert (=> d!1660846 (= c!883235 (not (forall!13804 z!1054 lambda!254977)))))

(assert (=> d!1660846 (= (lostCauseZipper!1204 z!1054) lt!2117938)))

(declare-fun bm!357257 () Bool)

(assert (=> bm!357257 (= call!357263 (toList!8345 z!1054))))

(assert (= (and d!1660846 c!883235) b!5132610))

(assert (= (and d!1660846 (not c!883235)) b!5132611))

(assert (= (or b!5132610 b!5132611) bm!357257))

(assert (= (or b!5132610 b!5132611) bm!357258))

(declare-fun m!6198450 () Bool)

(assert (=> bm!357258 m!6198450))

(declare-fun m!6198452 () Bool)

(assert (=> d!1660846 m!6198452))

(assert (=> d!1660846 m!6198452))

(declare-fun m!6198454 () Bool)

(assert (=> d!1660846 m!6198454))

(declare-fun m!6198456 () Bool)

(assert (=> d!1660846 m!6198456))

(assert (=> d!1660846 m!6198456))

(declare-fun m!6198458 () Bool)

(assert (=> b!5132611 m!6198458))

(declare-fun m!6198460 () Bool)

(assert (=> b!5132610 m!6198460))

(assert (=> bm!357257 m!6198390))

(assert (=> start!542926 d!1660846))

(declare-fun d!1660848 () Bool)

(declare-fun lt!2117942 () Bool)

(declare-fun forall!13806 (List!59662 Int) Bool)

(assert (=> d!1660848 (= lt!2117942 (forall!13806 (toList!8345 lt!2117885) lambda!254934))))

(declare-fun choose!37922 ((Set Context!7488) Int) Bool)

(assert (=> d!1660848 (= lt!2117942 (choose!37922 lt!2117885 lambda!254934))))

(assert (=> d!1660848 (= (forall!13804 lt!2117885 lambda!254934) lt!2117942)))

(declare-fun bs!1198746 () Bool)

(assert (= bs!1198746 d!1660848))

(assert (=> bs!1198746 m!6198376))

(assert (=> bs!1198746 m!6198376))

(declare-fun m!6198462 () Bool)

(assert (=> bs!1198746 m!6198462))

(declare-fun m!6198464 () Bool)

(assert (=> bs!1198746 m!6198464))

(assert (=> b!5132553 d!1660848))

(declare-fun b!5132625 () Bool)

(declare-fun lt!2117948 () Unit!150842)

(declare-fun Unit!150848 () Unit!150842)

(assert (=> b!5132625 (= lt!2117948 Unit!150848)))

(assert (=> b!5132625 false))

(declare-fun e!3201278 () Context!7488)

(declare-fun head!10991 (List!59662) Context!7488)

(assert (=> b!5132625 (= e!3201278 (head!10991 lt!2117890))))

(declare-fun b!5132626 () Bool)

(declare-fun e!3201279 () Bool)

(declare-fun dynLambda!23708 (Int Context!7488) Bool)

(assert (=> b!5132626 (= e!3201279 (dynLambda!23708 lambda!254935 (h!65986 lt!2117890)))))

(declare-fun b!5132627 () Bool)

(assert (=> b!5132627 (= e!3201278 (getWitness!813 (t!372689 lt!2117890) lambda!254935))))

(declare-fun d!1660850 () Bool)

(declare-fun e!3201281 () Bool)

(assert (=> d!1660850 e!3201281))

(declare-fun res!2186050 () Bool)

(assert (=> d!1660850 (=> (not res!2186050) (not e!3201281))))

(declare-fun lt!2117947 () Context!7488)

(assert (=> d!1660850 (= res!2186050 (dynLambda!23708 lambda!254935 lt!2117947))))

(declare-fun e!3201280 () Context!7488)

(assert (=> d!1660850 (= lt!2117947 e!3201280)))

(declare-fun c!883241 () Bool)

(assert (=> d!1660850 (= c!883241 e!3201279)))

(declare-fun res!2186049 () Bool)

(assert (=> d!1660850 (=> (not res!2186049) (not e!3201279))))

(assert (=> d!1660850 (= res!2186049 (is-Cons!59538 lt!2117890))))

(assert (=> d!1660850 (exists!1683 lt!2117890 lambda!254935)))

(assert (=> d!1660850 (= (getWitness!813 lt!2117890 lambda!254935) lt!2117947)))

(declare-fun b!5132624 () Bool)

(assert (=> b!5132624 (= e!3201280 e!3201278)))

(declare-fun c!883240 () Bool)

(assert (=> b!5132624 (= c!883240 (is-Cons!59538 lt!2117890))))

(declare-fun b!5132628 () Bool)

(assert (=> b!5132628 (= e!3201280 (h!65986 lt!2117890))))

(declare-fun b!5132629 () Bool)

(declare-fun contains!19644 (List!59662 Context!7488) Bool)

(assert (=> b!5132629 (= e!3201281 (contains!19644 lt!2117890 lt!2117947))))

(assert (= (and d!1660850 res!2186049) b!5132626))

(assert (= (and d!1660850 c!883241) b!5132628))

(assert (= (and d!1660850 (not c!883241)) b!5132624))

(assert (= (and b!5132624 c!883240) b!5132627))

(assert (= (and b!5132624 (not c!883240)) b!5132625))

(assert (= (and d!1660850 res!2186050) b!5132629))

(declare-fun b_lambda!199909 () Bool)

(assert (=> (not b_lambda!199909) (not b!5132626)))

(declare-fun b_lambda!199911 () Bool)

(assert (=> (not b_lambda!199911) (not d!1660850)))

(declare-fun m!6198466 () Bool)

(assert (=> b!5132629 m!6198466))

(declare-fun m!6198468 () Bool)

(assert (=> d!1660850 m!6198468))

(assert (=> d!1660850 m!6198372))

(declare-fun m!6198470 () Bool)

(assert (=> b!5132627 m!6198470))

(declare-fun m!6198472 () Bool)

(assert (=> b!5132626 m!6198472))

(declare-fun m!6198474 () Bool)

(assert (=> b!5132625 m!6198474))

(assert (=> b!5132544 d!1660850))

(declare-fun d!1660852 () Bool)

(declare-fun lt!2117949 () Bool)

(assert (=> d!1660852 (= lt!2117949 (forall!13806 (toList!8345 z!1054) lambda!254934))))

(assert (=> d!1660852 (= lt!2117949 (choose!37922 z!1054 lambda!254934))))

(assert (=> d!1660852 (= (forall!13804 z!1054 lambda!254934) lt!2117949)))

(declare-fun bs!1198747 () Bool)

(assert (= bs!1198747 d!1660852))

(assert (=> bs!1198747 m!6198390))

(assert (=> bs!1198747 m!6198390))

(declare-fun m!6198476 () Bool)

(assert (=> bs!1198747 m!6198476))

(declare-fun m!6198478 () Bool)

(assert (=> bs!1198747 m!6198478))

(assert (=> b!5132552 d!1660852))

(assert (=> b!5132543 d!1660848))

(declare-fun bs!1198748 () Bool)

(declare-fun d!1660854 () Bool)

(assert (= bs!1198748 (and d!1660854 d!1660846)))

(declare-fun lambda!254980 () Int)

(assert (=> bs!1198748 (= lambda!254980 lambda!254977)))

(declare-fun bs!1198749 () Bool)

(assert (= bs!1198749 (and d!1660854 b!5132610)))

(assert (=> bs!1198749 (not (= lambda!254980 lambda!254978))))

(declare-fun bs!1198750 () Bool)

(assert (= bs!1198750 (and d!1660854 b!5132546)))

(assert (=> bs!1198750 (not (= lambda!254980 lambda!254935))))

(declare-fun bs!1198751 () Bool)

(assert (= bs!1198751 (and d!1660854 b!5132611)))

(assert (=> bs!1198751 (not (= lambda!254980 lambda!254979))))

(declare-fun bs!1198752 () Bool)

(assert (= bs!1198752 (and d!1660854 b!5132543)))

(assert (=> bs!1198752 (= lambda!254980 lambda!254934)))

(declare-fun bs!1198753 () Bool)

(assert (= bs!1198753 (and d!1660854 b!5132550)))

(assert (=> bs!1198753 (not (= lambda!254980 lambda!254936))))

(declare-fun bs!1198754 () Bool)

(declare-fun b!5132630 () Bool)

(assert (= bs!1198754 (and b!5132630 d!1660854)))

(declare-fun lambda!254981 () Int)

(assert (=> bs!1198754 (not (= lambda!254981 lambda!254980))))

(declare-fun bs!1198755 () Bool)

(assert (= bs!1198755 (and b!5132630 d!1660846)))

(assert (=> bs!1198755 (not (= lambda!254981 lambda!254977))))

(declare-fun bs!1198756 () Bool)

(assert (= bs!1198756 (and b!5132630 b!5132610)))

(assert (=> bs!1198756 (= lambda!254981 lambda!254978)))

(declare-fun bs!1198757 () Bool)

(assert (= bs!1198757 (and b!5132630 b!5132546)))

(assert (=> bs!1198757 (= lambda!254981 lambda!254935)))

(declare-fun bs!1198758 () Bool)

(assert (= bs!1198758 (and b!5132630 b!5132611)))

(assert (=> bs!1198758 (= lambda!254981 lambda!254979)))

(declare-fun bs!1198759 () Bool)

(assert (= bs!1198759 (and b!5132630 b!5132543)))

(assert (=> bs!1198759 (not (= lambda!254981 lambda!254934))))

(declare-fun bs!1198760 () Bool)

(assert (= bs!1198760 (and b!5132630 b!5132550)))

(assert (=> bs!1198760 (not (= lambda!254981 lambda!254936))))

(declare-fun bs!1198761 () Bool)

(declare-fun b!5132631 () Bool)

(assert (= bs!1198761 (and b!5132631 d!1660854)))

(declare-fun lambda!254982 () Int)

(assert (=> bs!1198761 (not (= lambda!254982 lambda!254980))))

(declare-fun bs!1198762 () Bool)

(assert (= bs!1198762 (and b!5132631 d!1660846)))

(assert (=> bs!1198762 (not (= lambda!254982 lambda!254977))))

(declare-fun bs!1198763 () Bool)

(assert (= bs!1198763 (and b!5132631 b!5132610)))

(assert (=> bs!1198763 (= lambda!254982 lambda!254978)))

(declare-fun bs!1198764 () Bool)

(assert (= bs!1198764 (and b!5132631 b!5132546)))

(assert (=> bs!1198764 (= lambda!254982 lambda!254935)))

(declare-fun bs!1198765 () Bool)

(assert (= bs!1198765 (and b!5132631 b!5132630)))

(assert (=> bs!1198765 (= lambda!254982 lambda!254981)))

(declare-fun bs!1198766 () Bool)

(assert (= bs!1198766 (and b!5132631 b!5132611)))

(assert (=> bs!1198766 (= lambda!254982 lambda!254979)))

(declare-fun bs!1198767 () Bool)

(assert (= bs!1198767 (and b!5132631 b!5132543)))

(assert (=> bs!1198767 (not (= lambda!254982 lambda!254934))))

(declare-fun bs!1198768 () Bool)

(assert (= bs!1198768 (and b!5132631 b!5132550)))

(assert (=> bs!1198768 (not (= lambda!254982 lambda!254936))))

(declare-fun e!3201282 () Unit!150842)

(declare-fun Unit!150849 () Unit!150842)

(assert (=> b!5132631 (= e!3201282 Unit!150849)))

(declare-fun lt!2117952 () List!59662)

(declare-fun call!357265 () List!59662)

(assert (=> b!5132631 (= lt!2117952 call!357265)))

(declare-fun lt!2117953 () Unit!150842)

(assert (=> b!5132631 (= lt!2117953 (lemmaForallThenNotExists!366 lt!2117952 lambda!254980))))

(declare-fun call!357264 () Bool)

(assert (=> b!5132631 (not call!357264)))

(declare-fun lt!2117955 () Unit!150842)

(assert (=> b!5132631 (= lt!2117955 lt!2117953)))

(declare-fun Unit!150850 () Unit!150842)

(assert (=> b!5132630 (= e!3201282 Unit!150850)))

(declare-fun lt!2117951 () List!59662)

(assert (=> b!5132630 (= lt!2117951 call!357265)))

(declare-fun lt!2117957 () Unit!150842)

(assert (=> b!5132630 (= lt!2117957 (lemmaNotForallThenExists!393 lt!2117951 lambda!254980))))

(assert (=> b!5132630 call!357264))

(declare-fun lt!2117950 () Unit!150842)

(assert (=> b!5132630 (= lt!2117950 lt!2117957)))

(declare-fun c!883242 () Bool)

(declare-fun bm!357260 () Bool)

(assert (=> bm!357260 (= call!357264 (exists!1683 (ite c!883242 lt!2117951 lt!2117952) (ite c!883242 lambda!254981 lambda!254982)))))

(declare-fun lt!2117956 () Bool)

(assert (=> d!1660854 (= lt!2117956 (isEmpty!32005 (getLanguageWitness!881 lt!2117885)))))

(assert (=> d!1660854 (= lt!2117956 (forall!13804 lt!2117885 lambda!254980))))

(declare-fun lt!2117954 () Unit!150842)

(assert (=> d!1660854 (= lt!2117954 e!3201282)))

(assert (=> d!1660854 (= c!883242 (not (forall!13804 lt!2117885 lambda!254980)))))

(assert (=> d!1660854 (= (lostCauseZipper!1204 lt!2117885) lt!2117956)))

(declare-fun bm!357259 () Bool)

(assert (=> bm!357259 (= call!357265 (toList!8345 lt!2117885))))

(assert (= (and d!1660854 c!883242) b!5132630))

(assert (= (and d!1660854 (not c!883242)) b!5132631))

(assert (= (or b!5132630 b!5132631) bm!357259))

(assert (= (or b!5132630 b!5132631) bm!357260))

(declare-fun m!6198480 () Bool)

(assert (=> bm!357260 m!6198480))

(declare-fun m!6198482 () Bool)

(assert (=> d!1660854 m!6198482))

(assert (=> d!1660854 m!6198482))

(declare-fun m!6198484 () Bool)

(assert (=> d!1660854 m!6198484))

(declare-fun m!6198486 () Bool)

(assert (=> d!1660854 m!6198486))

(assert (=> d!1660854 m!6198486))

(declare-fun m!6198488 () Bool)

(assert (=> b!5132631 m!6198488))

(declare-fun m!6198490 () Bool)

(assert (=> b!5132630 m!6198490))

(assert (=> bm!357259 m!6198376))

(assert (=> b!5132543 d!1660854))

(declare-fun d!1660858 () Bool)

(declare-fun e!3201285 () Bool)

(assert (=> d!1660858 e!3201285))

(declare-fun res!2186053 () Bool)

(assert (=> d!1660858 (=> (not res!2186053) (not e!3201285))))

(declare-fun lt!2117960 () Context!7488)

(assert (=> d!1660858 (= res!2186053 (dynLambda!23708 lambda!254936 lt!2117960))))

(assert (=> d!1660858 (= lt!2117960 (getWitness!813 (toList!8345 z!1054) lambda!254936))))

(assert (=> d!1660858 (exists!1682 z!1054 lambda!254936)))

(assert (=> d!1660858 (= (getWitness!812 z!1054 lambda!254936) lt!2117960)))

(declare-fun b!5132634 () Bool)

(assert (=> b!5132634 (= e!3201285 (set.member lt!2117960 z!1054))))

(assert (= (and d!1660858 res!2186053) b!5132634))

(declare-fun b_lambda!199913 () Bool)

(assert (=> (not b_lambda!199913) (not d!1660858)))

(declare-fun m!6198492 () Bool)

(assert (=> d!1660858 m!6198492))

(assert (=> d!1660858 m!6198390))

(assert (=> d!1660858 m!6198390))

(declare-fun m!6198494 () Bool)

(assert (=> d!1660858 m!6198494))

(assert (=> d!1660858 m!6198358))

(declare-fun m!6198496 () Bool)

(assert (=> b!5132634 m!6198496))

(assert (=> b!5132542 d!1660858))

(declare-fun d!1660860 () Bool)

(declare-fun lt!2117963 () Bool)

(assert (=> d!1660860 (= lt!2117963 (exists!1683 (toList!8345 z!1054) lambda!254936))))

(declare-fun choose!37923 ((Set Context!7488) Int) Bool)

(assert (=> d!1660860 (= lt!2117963 (choose!37923 z!1054 lambda!254936))))

(assert (=> d!1660860 (= (exists!1682 z!1054 lambda!254936) lt!2117963)))

(declare-fun bs!1198769 () Bool)

(assert (= bs!1198769 d!1660860))

(assert (=> bs!1198769 m!6198390))

(assert (=> bs!1198769 m!6198390))

(declare-fun m!6198498 () Bool)

(assert (=> bs!1198769 m!6198498))

(declare-fun m!6198500 () Bool)

(assert (=> bs!1198769 m!6198500))

(assert (=> b!5132550 d!1660860))

(declare-fun bs!1198770 () Bool)

(declare-fun d!1660862 () Bool)

(assert (= bs!1198770 (and d!1660862 d!1660846)))

(declare-fun lambda!254987 () Int)

(assert (=> bs!1198770 (not (= lambda!254987 lambda!254977))))

(declare-fun bs!1198771 () Bool)

(assert (= bs!1198771 (and d!1660862 b!5132610)))

(assert (=> bs!1198771 (not (= lambda!254987 lambda!254978))))

(declare-fun bs!1198772 () Bool)

(assert (= bs!1198772 (and d!1660862 b!5132546)))

(assert (=> bs!1198772 (not (= lambda!254987 lambda!254935))))

(declare-fun bs!1198773 () Bool)

(assert (= bs!1198773 (and d!1660862 b!5132630)))

(assert (=> bs!1198773 (not (= lambda!254987 lambda!254981))))

(declare-fun bs!1198774 () Bool)

(assert (= bs!1198774 (and d!1660862 b!5132611)))

(assert (=> bs!1198774 (not (= lambda!254987 lambda!254979))))

(declare-fun bs!1198775 () Bool)

(assert (= bs!1198775 (and d!1660862 b!5132543)))

(assert (=> bs!1198775 (not (= lambda!254987 lambda!254934))))

(declare-fun bs!1198776 () Bool)

(assert (= bs!1198776 (and d!1660862 b!5132550)))

(assert (=> bs!1198776 (not (= lambda!254987 lambda!254936))))

(declare-fun bs!1198778 () Bool)

(assert (= bs!1198778 (and d!1660862 d!1660854)))

(assert (=> bs!1198778 (not (= lambda!254987 lambda!254980))))

(declare-fun bs!1198779 () Bool)

(assert (= bs!1198779 (and d!1660862 b!5132631)))

(assert (=> bs!1198779 (not (= lambda!254987 lambda!254982))))

(assert (=> d!1660862 true))

(assert (=> d!1660862 true))

(declare-fun order!26883 () Int)

(declare-fun order!26885 () Int)

(declare-fun dynLambda!23709 (Int Int) Int)

(declare-fun dynLambda!23710 (Int Int) Int)

(assert (=> d!1660862 (< (dynLambda!23709 order!26883 lambda!254933) (dynLambda!23710 order!26885 lambda!254987))))

(assert (=> d!1660862 (exists!1682 z!1054 lambda!254987)))

(declare-fun lt!2117966 () Unit!150842)

(declare-fun choose!37924 ((Set Context!7488) Int Context!7488) Unit!150842)

(assert (=> d!1660862 (= lt!2117966 (choose!37924 z!1054 lambda!254933 lt!2117891))))

(assert (=> d!1660862 (set.member lt!2117891 (flatMap!411 z!1054 lambda!254933))))

(assert (=> d!1660862 (= (lemmaFlatMapPost!15 z!1054 lambda!254933 lt!2117891) lt!2117966)))

(declare-fun bs!1198780 () Bool)

(assert (= bs!1198780 d!1660862))

(declare-fun m!6198504 () Bool)

(assert (=> bs!1198780 m!6198504))

(declare-fun m!6198506 () Bool)

(assert (=> bs!1198780 m!6198506))

(assert (=> bs!1198780 m!6198378))

(declare-fun m!6198508 () Bool)

(assert (=> bs!1198780 m!6198508))

(assert (=> b!5132550 d!1660862))

(declare-fun d!1660866 () Bool)

(declare-fun lambda!254991 () Int)

(declare-fun exists!1686 (List!59661 Int) Bool)

(assert (=> d!1660866 (= (lostCause!1303 lt!2117891) (exists!1686 (exprs!4244 lt!2117891) lambda!254991))))

(declare-fun bs!1198782 () Bool)

(assert (= bs!1198782 d!1660866))

(declare-fun m!6198514 () Bool)

(assert (=> bs!1198782 m!6198514))

(assert (=> b!5132549 d!1660866))

(declare-fun b!5132649 () Bool)

(declare-fun e!3201294 () (Set Context!7488))

(declare-fun e!3201293 () (Set Context!7488))

(assert (=> b!5132649 (= e!3201294 e!3201293)))

(declare-fun c!883247 () Bool)

(assert (=> b!5132649 (= c!883247 (is-Cons!59537 (exprs!4244 lt!2117889)))))

(declare-fun d!1660870 () Bool)

(declare-fun c!883248 () Bool)

(declare-fun e!3201292 () Bool)

(assert (=> d!1660870 (= c!883248 e!3201292)))

(declare-fun res!2186056 () Bool)

(assert (=> d!1660870 (=> (not res!2186056) (not e!3201292))))

(assert (=> d!1660870 (= res!2186056 (is-Cons!59537 (exprs!4244 lt!2117889)))))

(assert (=> d!1660870 (= (derivationStepZipperUp!68 lt!2117889 a!1233) e!3201294)))

(declare-fun call!357268 () (Set Context!7488))

(declare-fun b!5132650 () Bool)

(assert (=> b!5132650 (= e!3201294 (set.union call!357268 (derivationStepZipperUp!68 (Context!7489 (t!372688 (exprs!4244 lt!2117889))) a!1233)))))

(declare-fun b!5132651 () Bool)

(assert (=> b!5132651 (= e!3201293 call!357268)))

(declare-fun bm!357263 () Bool)

(declare-fun derivationStepZipperDown!97 (Regex!14360 Context!7488 C!28986) (Set Context!7488))

(assert (=> bm!357263 (= call!357268 (derivationStepZipperDown!97 (h!65985 (exprs!4244 lt!2117889)) (Context!7489 (t!372688 (exprs!4244 lt!2117889))) a!1233))))

(declare-fun b!5132652 () Bool)

(assert (=> b!5132652 (= e!3201293 (as set.empty (Set Context!7488)))))

(declare-fun b!5132653 () Bool)

(declare-fun nullable!4748 (Regex!14360) Bool)

(assert (=> b!5132653 (= e!3201292 (nullable!4748 (h!65985 (exprs!4244 lt!2117889))))))

(assert (= (and d!1660870 res!2186056) b!5132653))

(assert (= (and d!1660870 c!883248) b!5132650))

(assert (= (and d!1660870 (not c!883248)) b!5132649))

(assert (= (and b!5132649 c!883247) b!5132651))

(assert (= (and b!5132649 (not c!883247)) b!5132652))

(assert (= (or b!5132650 b!5132651) bm!357263))

(declare-fun m!6198516 () Bool)

(assert (=> b!5132650 m!6198516))

(declare-fun m!6198518 () Bool)

(assert (=> bm!357263 m!6198518))

(declare-fun m!6198520 () Bool)

(assert (=> b!5132653 m!6198520))

(assert (=> b!5132548 d!1660870))

(declare-fun bs!1198783 () Bool)

(declare-fun d!1660872 () Bool)

(assert (= bs!1198783 (and d!1660872 d!1660866)))

(declare-fun lambda!254996 () Int)

(assert (=> bs!1198783 (not (= lambda!254996 lambda!254991))))

(declare-fun forall!13807 (List!59661 Int) Bool)

(assert (=> d!1660872 (= (inv!79082 setElem!31191) (forall!13807 (exprs!4244 setElem!31191) lambda!254996))))

(declare-fun bs!1198784 () Bool)

(assert (= bs!1198784 d!1660872))

(declare-fun m!6198522 () Bool)

(assert (=> bs!1198784 m!6198522))

(assert (=> setNonEmpty!31191 d!1660872))

(declare-fun bs!1198785 () Bool)

(declare-fun d!1660874 () Bool)

(assert (= bs!1198785 (and d!1660874 d!1660866)))

(declare-fun lambda!254998 () Int)

(assert (=> bs!1198785 (= lambda!254998 lambda!254991)))

(declare-fun bs!1198786 () Bool)

(assert (= bs!1198786 (and d!1660874 d!1660872)))

(assert (=> bs!1198786 (not (= lambda!254998 lambda!254996))))

(assert (=> d!1660874 (= (lostCause!1303 lt!2117889) (exists!1686 (exprs!4244 lt!2117889) lambda!254998))))

(declare-fun bs!1198787 () Bool)

(assert (= bs!1198787 d!1660874))

(declare-fun m!6198524 () Bool)

(assert (=> bs!1198787 m!6198524))

(assert (=> b!5132547 d!1660874))

(declare-fun d!1660876 () Bool)

(assert (=> d!1660876 (dynLambda!23708 lambda!254934 lt!2117889)))

(declare-fun lt!2117975 () Unit!150842)

(declare-fun choose!37925 (List!59662 Int Context!7488) Unit!150842)

(assert (=> d!1660876 (= lt!2117975 (choose!37925 (toList!8345 z!1054) lambda!254934 lt!2117889))))

(declare-fun e!3201297 () Bool)

(assert (=> d!1660876 e!3201297))

(declare-fun res!2186059 () Bool)

(assert (=> d!1660876 (=> (not res!2186059) (not e!3201297))))

(assert (=> d!1660876 (= res!2186059 (forall!13806 (toList!8345 z!1054) lambda!254934))))

(assert (=> d!1660876 (= (forallContained!4622 (toList!8345 z!1054) lambda!254934 lt!2117889) lt!2117975)))

(declare-fun b!5132658 () Bool)

(assert (=> b!5132658 (= e!3201297 (contains!19644 (toList!8345 z!1054) lt!2117889))))

(assert (= (and d!1660876 res!2186059) b!5132658))

(declare-fun b_lambda!199915 () Bool)

(assert (=> (not b_lambda!199915) (not d!1660876)))

(declare-fun m!6198532 () Bool)

(assert (=> d!1660876 m!6198532))

(assert (=> d!1660876 m!6198390))

(declare-fun m!6198534 () Bool)

(assert (=> d!1660876 m!6198534))

(assert (=> d!1660876 m!6198390))

(assert (=> d!1660876 m!6198476))

(assert (=> b!5132658 m!6198390))

(declare-fun m!6198536 () Bool)

(assert (=> b!5132658 m!6198536))

(assert (=> b!5132547 d!1660876))

(declare-fun d!1660880 () Bool)

(declare-fun e!3201300 () Bool)

(assert (=> d!1660880 e!3201300))

(declare-fun res!2186062 () Bool)

(assert (=> d!1660880 (=> (not res!2186062) (not e!3201300))))

(declare-fun lt!2117978 () List!59662)

(declare-fun noDuplicate!1099 (List!59662) Bool)

(assert (=> d!1660880 (= res!2186062 (noDuplicate!1099 lt!2117978))))

(declare-fun choose!37926 ((Set Context!7488)) List!59662)

(assert (=> d!1660880 (= lt!2117978 (choose!37926 z!1054))))

(assert (=> d!1660880 (= (toList!8345 z!1054) lt!2117978)))

(declare-fun b!5132661 () Bool)

(declare-fun content!10576 (List!59662) (Set Context!7488))

(assert (=> b!5132661 (= e!3201300 (= (content!10576 lt!2117978) z!1054))))

(assert (= (and d!1660880 res!2186062) b!5132661))

(declare-fun m!6198538 () Bool)

(assert (=> d!1660880 m!6198538))

(declare-fun m!6198540 () Bool)

(assert (=> d!1660880 m!6198540))

(declare-fun m!6198542 () Bool)

(assert (=> b!5132661 m!6198542))

(assert (=> b!5132547 d!1660880))

(declare-fun d!1660882 () Bool)

(declare-fun lt!2117979 () Bool)

(assert (=> d!1660882 (= lt!2117979 (exists!1683 (toList!8345 lt!2117885) lambda!254935))))

(assert (=> d!1660882 (= lt!2117979 (choose!37923 lt!2117885 lambda!254935))))

(assert (=> d!1660882 (= (exists!1682 lt!2117885 lambda!254935) lt!2117979)))

(declare-fun bs!1198792 () Bool)

(assert (= bs!1198792 d!1660882))

(assert (=> bs!1198792 m!6198376))

(assert (=> bs!1198792 m!6198376))

(declare-fun m!6198544 () Bool)

(assert (=> bs!1198792 m!6198544))

(declare-fun m!6198546 () Bool)

(assert (=> bs!1198792 m!6198546))

(assert (=> b!5132546 d!1660882))

(declare-fun bs!1198794 () Bool)

(declare-fun d!1660884 () Bool)

(assert (= bs!1198794 (and d!1660884 d!1660846)))

(declare-fun lambda!255001 () Int)

(assert (=> bs!1198794 (not (= lambda!255001 lambda!254977))))

(declare-fun bs!1198795 () Bool)

(assert (= bs!1198795 (and d!1660884 d!1660862)))

(assert (=> bs!1198795 (not (= lambda!255001 lambda!254987))))

(declare-fun bs!1198796 () Bool)

(assert (= bs!1198796 (and d!1660884 b!5132610)))

(assert (=> bs!1198796 (not (= lambda!255001 lambda!254978))))

(declare-fun bs!1198797 () Bool)

(assert (= bs!1198797 (and d!1660884 b!5132546)))

(assert (=> bs!1198797 (not (= lambda!255001 lambda!254935))))

(declare-fun bs!1198798 () Bool)

(assert (= bs!1198798 (and d!1660884 b!5132630)))

(assert (=> bs!1198798 (not (= lambda!255001 lambda!254981))))

(declare-fun bs!1198799 () Bool)

(assert (= bs!1198799 (and d!1660884 b!5132611)))

(assert (=> bs!1198799 (not (= lambda!255001 lambda!254979))))

(declare-fun bs!1198800 () Bool)

(assert (= bs!1198800 (and d!1660884 b!5132543)))

(assert (=> bs!1198800 (not (= lambda!255001 lambda!254934))))

(declare-fun bs!1198801 () Bool)

(assert (= bs!1198801 (and d!1660884 b!5132550)))

(assert (=> bs!1198801 (not (= lambda!255001 lambda!254936))))

(declare-fun bs!1198802 () Bool)

(assert (= bs!1198802 (and d!1660884 d!1660854)))

(assert (=> bs!1198802 (not (= lambda!255001 lambda!254980))))

(declare-fun bs!1198803 () Bool)

(assert (= bs!1198803 (and d!1660884 b!5132631)))

(assert (=> bs!1198803 (not (= lambda!255001 lambda!254982))))

(assert (=> d!1660884 true))

(assert (=> d!1660884 (< (dynLambda!23710 order!26885 lambda!254935) (dynLambda!23710 order!26885 lambda!255001))))

(assert (=> d!1660884 (= (exists!1683 lt!2117890 lambda!254935) (not (forall!13806 lt!2117890 lambda!255001)))))

(declare-fun bs!1198804 () Bool)

(assert (= bs!1198804 d!1660884))

(declare-fun m!6198552 () Bool)

(assert (=> bs!1198804 m!6198552))

(assert (=> b!5132546 d!1660884))

(declare-fun bs!1198805 () Bool)

(declare-fun d!1660888 () Bool)

(assert (= bs!1198805 (and d!1660888 d!1660846)))

(declare-fun lambda!255004 () Int)

(assert (=> bs!1198805 (not (= lambda!255004 lambda!254977))))

(declare-fun bs!1198806 () Bool)

(assert (= bs!1198806 (and d!1660888 d!1660862)))

(assert (=> bs!1198806 (not (= lambda!255004 lambda!254987))))

(declare-fun bs!1198807 () Bool)

(assert (= bs!1198807 (and d!1660888 b!5132546)))

(assert (=> bs!1198807 (not (= lambda!255004 lambda!254935))))

(declare-fun bs!1198808 () Bool)

(assert (= bs!1198808 (and d!1660888 b!5132630)))

(assert (=> bs!1198808 (not (= lambda!255004 lambda!254981))))

(declare-fun bs!1198809 () Bool)

(assert (= bs!1198809 (and d!1660888 b!5132611)))

(assert (=> bs!1198809 (not (= lambda!255004 lambda!254979))))

(declare-fun bs!1198810 () Bool)

(assert (= bs!1198810 (and d!1660888 b!5132543)))

(assert (=> bs!1198810 (not (= lambda!255004 lambda!254934))))

(declare-fun bs!1198811 () Bool)

(assert (= bs!1198811 (and d!1660888 b!5132550)))

(assert (=> bs!1198811 (not (= lambda!255004 lambda!254936))))

(declare-fun bs!1198812 () Bool)

(assert (= bs!1198812 (and d!1660888 d!1660854)))

(assert (=> bs!1198812 (not (= lambda!255004 lambda!254980))))

(declare-fun bs!1198813 () Bool)

(assert (= bs!1198813 (and d!1660888 b!5132631)))

(assert (=> bs!1198813 (not (= lambda!255004 lambda!254982))))

(declare-fun bs!1198814 () Bool)

(assert (= bs!1198814 (and d!1660888 b!5132610)))

(assert (=> bs!1198814 (not (= lambda!255004 lambda!254978))))

(declare-fun bs!1198815 () Bool)

(assert (= bs!1198815 (and d!1660888 d!1660884)))

(assert (=> bs!1198815 (= (= lambda!254934 lambda!254935) (= lambda!255004 lambda!255001))))

(assert (=> d!1660888 true))

(assert (=> d!1660888 (< (dynLambda!23710 order!26885 lambda!254934) (dynLambda!23710 order!26885 lambda!255004))))

(assert (=> d!1660888 (exists!1683 lt!2117890 lambda!255004)))

(declare-fun lt!2117985 () Unit!150842)

(declare-fun choose!37927 (List!59662 Int) Unit!150842)

(assert (=> d!1660888 (= lt!2117985 (choose!37927 lt!2117890 lambda!254934))))

(assert (=> d!1660888 (not (forall!13806 lt!2117890 lambda!254934))))

(assert (=> d!1660888 (= (lemmaNotForallThenExists!393 lt!2117890 lambda!254934) lt!2117985)))

(declare-fun bs!1198816 () Bool)

(assert (= bs!1198816 d!1660888))

(declare-fun m!6198554 () Bool)

(assert (=> bs!1198816 m!6198554))

(declare-fun m!6198556 () Bool)

(assert (=> bs!1198816 m!6198556))

(declare-fun m!6198558 () Bool)

(assert (=> bs!1198816 m!6198558))

(assert (=> b!5132546 d!1660888))

(declare-fun d!1660890 () Bool)

(declare-fun e!3201303 () Bool)

(assert (=> d!1660890 e!3201303))

(declare-fun res!2186063 () Bool)

(assert (=> d!1660890 (=> (not res!2186063) (not e!3201303))))

(declare-fun lt!2117986 () List!59662)

(assert (=> d!1660890 (= res!2186063 (noDuplicate!1099 lt!2117986))))

(assert (=> d!1660890 (= lt!2117986 (choose!37926 lt!2117885))))

(assert (=> d!1660890 (= (toList!8345 lt!2117885) lt!2117986)))

(declare-fun b!5132664 () Bool)

(assert (=> b!5132664 (= e!3201303 (= (content!10576 lt!2117986) lt!2117885))))

(assert (= (and d!1660890 res!2186063) b!5132664))

(declare-fun m!6198560 () Bool)

(assert (=> d!1660890 m!6198560))

(declare-fun m!6198562 () Bool)

(assert (=> d!1660890 m!6198562))

(declare-fun m!6198564 () Bool)

(assert (=> b!5132664 m!6198564))

(assert (=> b!5132546 d!1660890))

(declare-fun d!1660892 () Bool)

(declare-fun choose!37928 ((Set Context!7488) Int) (Set Context!7488))

(assert (=> d!1660892 (= (flatMap!411 z!1054 lambda!254933) (choose!37928 z!1054 lambda!254933))))

(declare-fun bs!1198817 () Bool)

(assert (= bs!1198817 d!1660892))

(declare-fun m!6198566 () Bool)

(assert (=> bs!1198817 m!6198566))

(assert (=> b!5132545 d!1660892))

(declare-fun bs!1198818 () Bool)

(declare-fun d!1660894 () Bool)

(assert (= bs!1198818 (and d!1660894 b!5132545)))

(declare-fun lambda!255007 () Int)

(assert (=> bs!1198818 (= lambda!255007 lambda!254933)))

(assert (=> d!1660894 true))

(assert (=> d!1660894 (= (derivationStepZipper!915 z!1054 a!1233) (flatMap!411 z!1054 lambda!255007))))

(declare-fun bs!1198819 () Bool)

(assert (= bs!1198819 d!1660894))

(declare-fun m!6198568 () Bool)

(assert (=> bs!1198819 m!6198568))

(assert (=> b!5132545 d!1660894))

(declare-fun condSetEmpty!31197 () Bool)

(assert (=> setNonEmpty!31191 (= condSetEmpty!31197 (= setRest!31191 (as set.empty (Set Context!7488))))))

(declare-fun setRes!31197 () Bool)

(assert (=> setNonEmpty!31191 (= tp!1431806 setRes!31197)))

(declare-fun setIsEmpty!31197 () Bool)

(assert (=> setIsEmpty!31197 setRes!31197))

(declare-fun tp!1431819 () Bool)

(declare-fun setElem!31197 () Context!7488)

(declare-fun e!3201306 () Bool)

(declare-fun setNonEmpty!31197 () Bool)

(assert (=> setNonEmpty!31197 (= setRes!31197 (and tp!1431819 (inv!79082 setElem!31197) e!3201306))))

(declare-fun setRest!31197 () (Set Context!7488))

(assert (=> setNonEmpty!31197 (= setRest!31191 (set.union (set.insert setElem!31197 (as set.empty (Set Context!7488))) setRest!31197))))

(declare-fun b!5132669 () Bool)

(declare-fun tp!1431818 () Bool)

(assert (=> b!5132669 (= e!3201306 tp!1431818)))

(assert (= (and setNonEmpty!31191 condSetEmpty!31197) setIsEmpty!31197))

(assert (= (and setNonEmpty!31191 (not condSetEmpty!31197)) setNonEmpty!31197))

(assert (= setNonEmpty!31197 b!5132669))

(declare-fun m!6198570 () Bool)

(assert (=> setNonEmpty!31197 m!6198570))

(declare-fun b!5132674 () Bool)

(declare-fun e!3201309 () Bool)

(declare-fun tp!1431824 () Bool)

(declare-fun tp!1431825 () Bool)

(assert (=> b!5132674 (= e!3201309 (and tp!1431824 tp!1431825))))

(assert (=> b!5132551 (= tp!1431807 e!3201309)))

(assert (= (and b!5132551 (is-Cons!59537 (exprs!4244 setElem!31191))) b!5132674))

(declare-fun b_lambda!199917 () Bool)

(assert (= b_lambda!199911 (or b!5132546 b_lambda!199917)))

(declare-fun bs!1198820 () Bool)

(declare-fun d!1660896 () Bool)

(assert (= bs!1198820 (and d!1660896 b!5132546)))

(assert (=> bs!1198820 (= (dynLambda!23708 lambda!254935 lt!2117947) (not (lostCause!1303 lt!2117947)))))

(declare-fun m!6198572 () Bool)

(assert (=> bs!1198820 m!6198572))

(assert (=> d!1660850 d!1660896))

(declare-fun b_lambda!199919 () Bool)

(assert (= b_lambda!199915 (or b!5132543 b_lambda!199919)))

(declare-fun bs!1198821 () Bool)

(declare-fun d!1660898 () Bool)

(assert (= bs!1198821 (and d!1660898 b!5132543)))

(assert (=> bs!1198821 (= (dynLambda!23708 lambda!254934 lt!2117889) (lostCause!1303 lt!2117889))))

(assert (=> bs!1198821 m!6198388))

(assert (=> d!1660876 d!1660898))

(declare-fun b_lambda!199921 () Bool)

(assert (= b_lambda!199909 (or b!5132546 b_lambda!199921)))

(declare-fun bs!1198822 () Bool)

(declare-fun d!1660900 () Bool)

(assert (= bs!1198822 (and d!1660900 b!5132546)))

(assert (=> bs!1198822 (= (dynLambda!23708 lambda!254935 (h!65986 lt!2117890)) (not (lostCause!1303 (h!65986 lt!2117890))))))

(declare-fun m!6198574 () Bool)

(assert (=> bs!1198822 m!6198574))

(assert (=> b!5132626 d!1660900))

(declare-fun b_lambda!199923 () Bool)

(assert (= b_lambda!199913 (or b!5132550 b_lambda!199923)))

(declare-fun bs!1198823 () Bool)

(declare-fun d!1660902 () Bool)

(assert (= bs!1198823 (and d!1660902 b!5132550)))

(assert (=> bs!1198823 (= (dynLambda!23708 lambda!254936 lt!2117960) (set.member lt!2117891 (derivationStepZipperUp!68 lt!2117960 a!1233)))))

(declare-fun m!6198576 () Bool)

(assert (=> bs!1198823 m!6198576))

(declare-fun m!6198578 () Bool)

(assert (=> bs!1198823 m!6198578))

(assert (=> d!1660858 d!1660902))

(push 1)

(assert (not d!1660876))

(assert (not d!1660882))

(assert (not d!1660848))

(assert (not d!1660860))

(assert (not b!5132658))

(assert (not b!5132631))

(assert (not bm!357263))

(assert (not b_lambda!199917))

(assert (not bs!1198822))

(assert (not b!5132650))

(assert (not d!1660894))

(assert (not d!1660858))

(assert (not d!1660866))

(assert (not d!1660892))

(assert (not setNonEmpty!31197))

(assert (not b!5132629))

(assert (not bm!357260))

(assert (not b!5132630))

(assert tp_is_empty!37893)

(assert (not b!5132664))

(assert (not d!1660888))

(assert (not d!1660872))

(assert (not b!5132653))

(assert (not d!1660880))

(assert (not d!1660850))

(assert (not b!5132611))

(assert (not d!1660846))

(assert (not d!1660854))

(assert (not b!5132610))

(assert (not b!5132627))

(assert (not b_lambda!199923))

(assert (not bm!357259))

(assert (not b!5132669))

(assert (not b!5132625))

(assert (not b_lambda!199921))

(assert (not b_lambda!199919))

(assert (not d!1660890))

(assert (not d!1660884))

(assert (not d!1660874))

(assert (not bm!357257))

(assert (not bs!1198820))

(assert (not bm!357258))

(assert (not b!5132661))

(assert (not d!1660862))

(assert (not d!1660852))

(assert (not bs!1198821))

(assert (not b!5132674))

(assert (not bs!1198823))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

