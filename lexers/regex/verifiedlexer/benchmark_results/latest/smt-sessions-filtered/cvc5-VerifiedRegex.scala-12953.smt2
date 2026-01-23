; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713134 () Bool)

(assert start!713134)

(declare-fun setIsEmpty!54598 () Bool)

(declare-fun setRes!54598 () Bool)

(assert (=> setIsEmpty!54598 setRes!54598))

(declare-fun b!7316505 () Bool)

(declare-fun e!4380050 () Bool)

(declare-fun tp!2077131 () Bool)

(assert (=> b!7316505 (= e!4380050 tp!2077131)))

(declare-fun tp!2077130 () Bool)

(declare-fun setNonEmpty!54598 () Bool)

(declare-fun e!4380047 () Bool)

(declare-datatypes ((C!38154 0))(
  ( (C!38155 (val!29173 Int)) )
))
(declare-datatypes ((Regex!18940 0))(
  ( (ElementMatch!18940 (c!1358219 C!38154)) (Concat!27785 (regOne!38392 Regex!18940) (regTwo!38392 Regex!18940)) (EmptyExpr!18940) (Star!18940 (reg!19269 Regex!18940)) (EmptyLang!18940) (Union!18940 (regOne!38393 Regex!18940) (regTwo!38393 Regex!18940)) )
))
(declare-datatypes ((List!71302 0))(
  ( (Nil!71178) (Cons!71178 (h!77626 Regex!18940) (t!385534 List!71302)) )
))
(declare-datatypes ((Context!15760 0))(
  ( (Context!15761 (exprs!8380 List!71302)) )
))
(declare-fun setElem!54599 () Context!15760)

(declare-fun inv!90472 (Context!15760) Bool)

(assert (=> setNonEmpty!54598 (= setRes!54598 (and tp!2077130 (inv!90472 setElem!54599) e!4380047))))

(declare-fun z1!542 () (Set Context!15760))

(declare-fun setRest!54599 () (Set Context!15760))

(assert (=> setNonEmpty!54598 (= z1!542 (set.union (set.insert setElem!54599 (as set.empty (Set Context!15760))) setRest!54599))))

(declare-fun b!7316506 () Bool)

(declare-datatypes ((Unit!164625 0))(
  ( (Unit!164626) )
))
(declare-fun e!4380052 () Unit!164625)

(declare-fun Unit!164627 () Unit!164625)

(assert (=> b!7316506 (= e!4380052 Unit!164627)))

(declare-fun lt!2602228 () Unit!164625)

(declare-fun call!665806 () Unit!164625)

(assert (=> b!7316506 (= lt!2602228 call!665806)))

(declare-fun call!665805 () Bool)

(assert (=> b!7316506 call!665805))

(declare-fun b!7316507 () Bool)

(declare-fun res!2956479 () Bool)

(declare-fun e!4380056 () Bool)

(assert (=> b!7316507 (=> (not res!2956479) (not e!4380056))))

(declare-fun lt!2602227 () (Set Context!15760))

(declare-fun lambda!452403 () Int)

(declare-fun exists!4590 ((Set Context!15760) Int) Bool)

(assert (=> b!7316507 (= res!2956479 (exists!4590 lt!2602227 lambda!452403))))

(declare-fun b!7316508 () Bool)

(declare-fun Unit!164628 () Unit!164625)

(assert (=> b!7316508 (= e!4380052 Unit!164628)))

(declare-fun lt!2602230 () Unit!164625)

(assert (=> b!7316508 (= lt!2602230 call!665806)))

(assert (=> b!7316508 call!665805))

(declare-fun e!4380049 () Bool)

(declare-fun e!4380054 () Bool)

(declare-fun b!7316509 () Bool)

(declare-datatypes ((List!71303 0))(
  ( (Nil!71179) (Cons!71179 (h!77627 C!38154) (t!385535 List!71303)) )
))
(declare-fun s!7362 () List!71303)

(declare-fun matchZipper!3804 ((Set Context!15760) List!71303) Bool)

(assert (=> b!7316509 (= e!4380054 (not (= (matchZipper!3804 lt!2602227 s!7362) e!4380049)))))

(declare-fun res!2956480 () Bool)

(assert (=> b!7316509 (=> res!2956480 e!4380049)))

(assert (=> b!7316509 (= res!2956480 (matchZipper!3804 z1!542 s!7362))))

(declare-fun b!7316510 () Bool)

(declare-fun z2!461 () (Set Context!15760))

(assert (=> b!7316510 (= e!4380049 (matchZipper!3804 z2!461 s!7362))))

(declare-fun b!7316511 () Bool)

(declare-fun e!4380053 () Bool)

(assert (=> b!7316511 (= e!4380053 e!4380054)))

(declare-fun res!2956484 () Bool)

(assert (=> b!7316511 (=> (not res!2956484) (not e!4380054))))

(declare-fun e!4380051 () Bool)

(assert (=> b!7316511 (= res!2956484 e!4380051)))

(declare-fun res!2956481 () Bool)

(assert (=> b!7316511 (=> res!2956481 e!4380051)))

(declare-fun nullableZipper!3119 ((Set Context!15760)) Bool)

(assert (=> b!7316511 (= res!2956481 (nullableZipper!3119 z1!542))))

(declare-fun lt!2602231 () Unit!164625)

(assert (=> b!7316511 (= lt!2602231 e!4380052)))

(declare-fun c!1358218 () Bool)

(declare-fun lt!2602229 () Context!15760)

(assert (=> b!7316511 (= c!1358218 (set.member lt!2602229 z1!542))))

(declare-fun setIsEmpty!54599 () Bool)

(declare-fun setRes!54599 () Bool)

(assert (=> setIsEmpty!54599 setRes!54599))

(declare-fun bm!665800 () Bool)

(declare-fun lemmaContainsThenExists!254 ((Set Context!15760) Context!15760 Int) Unit!164625)

(assert (=> bm!665800 (= call!665806 (lemmaContainsThenExists!254 (ite c!1358218 z1!542 z2!461) lt!2602229 (ite c!1358218 lambda!452403 lambda!452403)))))

(declare-fun b!7316504 () Bool)

(assert (=> b!7316504 (= e!4380056 e!4380053)))

(declare-fun res!2956482 () Bool)

(assert (=> b!7316504 (=> (not res!2956482) (not e!4380053))))

(assert (=> b!7316504 (= res!2956482 (set.member lt!2602229 lt!2602227))))

(declare-fun getWitness!2328 ((Set Context!15760) Int) Context!15760)

(assert (=> b!7316504 (= lt!2602229 (getWitness!2328 lt!2602227 lambda!452403))))

(declare-fun res!2956478 () Bool)

(declare-fun e!4380055 () Bool)

(assert (=> start!713134 (=> (not res!2956478) (not e!4380055))))

(assert (=> start!713134 (= res!2956478 (not (is-Cons!71179 s!7362)))))

(assert (=> start!713134 e!4380055))

(declare-fun e!4380048 () Bool)

(assert (=> start!713134 e!4380048))

(declare-fun condSetEmpty!54598 () Bool)

(assert (=> start!713134 (= condSetEmpty!54598 (= z1!542 (as set.empty (Set Context!15760))))))

(assert (=> start!713134 setRes!54598))

(declare-fun condSetEmpty!54599 () Bool)

(assert (=> start!713134 (= condSetEmpty!54599 (= z2!461 (as set.empty (Set Context!15760))))))

(assert (=> start!713134 setRes!54599))

(declare-fun b!7316512 () Bool)

(assert (=> b!7316512 (= e!4380055 e!4380056)))

(declare-fun res!2956483 () Bool)

(assert (=> b!7316512 (=> (not res!2956483) (not e!4380056))))

(assert (=> b!7316512 (= res!2956483 (nullableZipper!3119 lt!2602227))))

(assert (=> b!7316512 (= lt!2602227 (set.union z1!542 z2!461))))

(declare-fun tp!2077132 () Bool)

(declare-fun setElem!54598 () Context!15760)

(declare-fun setNonEmpty!54599 () Bool)

(assert (=> setNonEmpty!54599 (= setRes!54599 (and tp!2077132 (inv!90472 setElem!54598) e!4380050))))

(declare-fun setRest!54598 () (Set Context!15760))

(assert (=> setNonEmpty!54599 (= z2!461 (set.union (set.insert setElem!54598 (as set.empty (Set Context!15760))) setRest!54598))))

(declare-fun bm!665801 () Bool)

(assert (=> bm!665801 (= call!665805 (exists!4590 (ite c!1358218 z1!542 z2!461) (ite c!1358218 lambda!452403 lambda!452403)))))

(declare-fun b!7316513 () Bool)

(declare-fun tp_is_empty!47625 () Bool)

(declare-fun tp!2077133 () Bool)

(assert (=> b!7316513 (= e!4380048 (and tp_is_empty!47625 tp!2077133))))

(declare-fun b!7316514 () Bool)

(assert (=> b!7316514 (= e!4380051 (nullableZipper!3119 z2!461))))

(declare-fun b!7316515 () Bool)

(declare-fun tp!2077134 () Bool)

(assert (=> b!7316515 (= e!4380047 tp!2077134)))

(assert (= (and start!713134 res!2956478) b!7316512))

(assert (= (and b!7316512 res!2956483) b!7316507))

(assert (= (and b!7316507 res!2956479) b!7316504))

(assert (= (and b!7316504 res!2956482) b!7316511))

(assert (= (and b!7316511 c!1358218) b!7316508))

(assert (= (and b!7316511 (not c!1358218)) b!7316506))

(assert (= (or b!7316508 b!7316506) bm!665800))

(assert (= (or b!7316508 b!7316506) bm!665801))

(assert (= (and b!7316511 (not res!2956481)) b!7316514))

(assert (= (and b!7316511 res!2956484) b!7316509))

(assert (= (and b!7316509 (not res!2956480)) b!7316510))

(assert (= (and start!713134 (is-Cons!71179 s!7362)) b!7316513))

(assert (= (and start!713134 condSetEmpty!54598) setIsEmpty!54598))

(assert (= (and start!713134 (not condSetEmpty!54598)) setNonEmpty!54598))

(assert (= setNonEmpty!54598 b!7316515))

(assert (= (and start!713134 condSetEmpty!54599) setIsEmpty!54599))

(assert (= (and start!713134 (not condSetEmpty!54599)) setNonEmpty!54599))

(assert (= setNonEmpty!54599 b!7316505))

(declare-fun m!7980584 () Bool)

(assert (=> b!7316509 m!7980584))

(declare-fun m!7980586 () Bool)

(assert (=> b!7316509 m!7980586))

(declare-fun m!7980588 () Bool)

(assert (=> setNonEmpty!54599 m!7980588))

(declare-fun m!7980590 () Bool)

(assert (=> bm!665801 m!7980590))

(declare-fun m!7980592 () Bool)

(assert (=> setNonEmpty!54598 m!7980592))

(declare-fun m!7980594 () Bool)

(assert (=> b!7316514 m!7980594))

(declare-fun m!7980596 () Bool)

(assert (=> b!7316504 m!7980596))

(declare-fun m!7980598 () Bool)

(assert (=> b!7316504 m!7980598))

(declare-fun m!7980600 () Bool)

(assert (=> b!7316512 m!7980600))

(declare-fun m!7980602 () Bool)

(assert (=> b!7316507 m!7980602))

(declare-fun m!7980604 () Bool)

(assert (=> bm!665800 m!7980604))

(declare-fun m!7980606 () Bool)

(assert (=> b!7316511 m!7980606))

(declare-fun m!7980608 () Bool)

(assert (=> b!7316511 m!7980608))

(declare-fun m!7980610 () Bool)

(assert (=> b!7316510 m!7980610))

(push 1)

(assert (not b!7316507))

(assert tp_is_empty!47625)

(assert (not b!7316509))

(assert (not setNonEmpty!54599))

(assert (not setNonEmpty!54598))

(assert (not b!7316510))

(assert (not b!7316514))

(assert (not b!7316505))

(assert (not bm!665801))

(assert (not b!7316511))

(assert (not bm!665800))

(assert (not b!7316513))

(assert (not b!7316515))

(assert (not b!7316504))

(assert (not b!7316512))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1915120 () Bool)

(declare-fun d!2271692 () Bool)

(assert (= bs!1915120 (and d!2271692 b!7316507)))

(declare-fun lambda!452418 () Int)

(assert (=> bs!1915120 (= lambda!452418 lambda!452403)))

(assert (=> d!2271692 (= (nullableZipper!3119 lt!2602227) (exists!4590 lt!2602227 lambda!452418))))

(declare-fun bs!1915121 () Bool)

(assert (= bs!1915121 d!2271692))

(declare-fun m!7980642 () Bool)

(assert (=> bs!1915121 m!7980642))

(assert (=> b!7316512 d!2271692))

(declare-fun d!2271696 () Bool)

(declare-fun c!1358238 () Bool)

(declare-fun isEmpty!40861 (List!71303) Bool)

(assert (=> d!2271696 (= c!1358238 (isEmpty!40861 s!7362))))

(declare-fun e!4380089 () Bool)

(assert (=> d!2271696 (= (matchZipper!3804 lt!2602227 s!7362) e!4380089)))

(declare-fun b!7316556 () Bool)

(assert (=> b!7316556 (= e!4380089 (nullableZipper!3119 lt!2602227))))

(declare-fun b!7316557 () Bool)

(declare-fun derivationStepZipper!3632 ((Set Context!15760) C!38154) (Set Context!15760))

(declare-fun head!15079 (List!71303) C!38154)

(declare-fun tail!14640 (List!71303) List!71303)

(assert (=> b!7316557 (= e!4380089 (matchZipper!3804 (derivationStepZipper!3632 lt!2602227 (head!15079 s!7362)) (tail!14640 s!7362)))))

(assert (= (and d!2271696 c!1358238) b!7316556))

(assert (= (and d!2271696 (not c!1358238)) b!7316557))

(declare-fun m!7980644 () Bool)

(assert (=> d!2271696 m!7980644))

(assert (=> b!7316556 m!7980600))

(declare-fun m!7980646 () Bool)

(assert (=> b!7316557 m!7980646))

(assert (=> b!7316557 m!7980646))

(declare-fun m!7980648 () Bool)

(assert (=> b!7316557 m!7980648))

(declare-fun m!7980650 () Bool)

(assert (=> b!7316557 m!7980650))

(assert (=> b!7316557 m!7980648))

(assert (=> b!7316557 m!7980650))

(declare-fun m!7980652 () Bool)

(assert (=> b!7316557 m!7980652))

(assert (=> b!7316509 d!2271696))

(declare-fun d!2271698 () Bool)

(declare-fun c!1358239 () Bool)

(assert (=> d!2271698 (= c!1358239 (isEmpty!40861 s!7362))))

(declare-fun e!4380090 () Bool)

(assert (=> d!2271698 (= (matchZipper!3804 z1!542 s!7362) e!4380090)))

(declare-fun b!7316558 () Bool)

(assert (=> b!7316558 (= e!4380090 (nullableZipper!3119 z1!542))))

(declare-fun b!7316559 () Bool)

(assert (=> b!7316559 (= e!4380090 (matchZipper!3804 (derivationStepZipper!3632 z1!542 (head!15079 s!7362)) (tail!14640 s!7362)))))

(assert (= (and d!2271698 c!1358239) b!7316558))

(assert (= (and d!2271698 (not c!1358239)) b!7316559))

(assert (=> d!2271698 m!7980644))

(assert (=> b!7316558 m!7980606))

(assert (=> b!7316559 m!7980646))

(assert (=> b!7316559 m!7980646))

(declare-fun m!7980654 () Bool)

(assert (=> b!7316559 m!7980654))

(assert (=> b!7316559 m!7980650))

(assert (=> b!7316559 m!7980654))

(assert (=> b!7316559 m!7980650))

(declare-fun m!7980656 () Bool)

(assert (=> b!7316559 m!7980656))

(assert (=> b!7316509 d!2271698))

(declare-fun d!2271700 () Bool)

(declare-fun e!4380093 () Bool)

(assert (=> d!2271700 e!4380093))

(declare-fun res!2956508 () Bool)

(assert (=> d!2271700 (=> (not res!2956508) (not e!4380093))))

(declare-fun lt!2602249 () Context!15760)

(declare-fun dynLambda!29159 (Int Context!15760) Bool)

(assert (=> d!2271700 (= res!2956508 (dynLambda!29159 lambda!452403 lt!2602249))))

(declare-datatypes ((List!71306 0))(
  ( (Nil!71182) (Cons!71182 (h!77630 Context!15760) (t!385538 List!71306)) )
))
(declare-fun getWitness!2330 (List!71306 Int) Context!15760)

(declare-fun toList!11627 ((Set Context!15760)) List!71306)

(assert (=> d!2271700 (= lt!2602249 (getWitness!2330 (toList!11627 lt!2602227) lambda!452403))))

(assert (=> d!2271700 (exists!4590 lt!2602227 lambda!452403)))

(assert (=> d!2271700 (= (getWitness!2328 lt!2602227 lambda!452403) lt!2602249)))

(declare-fun b!7316562 () Bool)

(assert (=> b!7316562 (= e!4380093 (set.member lt!2602249 lt!2602227))))

(assert (= (and d!2271700 res!2956508) b!7316562))

(declare-fun b_lambda!282567 () Bool)

(assert (=> (not b_lambda!282567) (not d!2271700)))

(declare-fun m!7980660 () Bool)

(assert (=> d!2271700 m!7980660))

(declare-fun m!7980662 () Bool)

(assert (=> d!2271700 m!7980662))

(assert (=> d!2271700 m!7980662))

(declare-fun m!7980664 () Bool)

(assert (=> d!2271700 m!7980664))

(assert (=> d!2271700 m!7980602))

(declare-fun m!7980666 () Bool)

(assert (=> b!7316562 m!7980666))

(assert (=> b!7316504 d!2271700))

(declare-fun bs!1915123 () Bool)

(declare-fun d!2271704 () Bool)

(assert (= bs!1915123 (and d!2271704 b!7316507)))

(declare-fun lambda!452422 () Int)

(assert (=> bs!1915123 (= lambda!452422 lambda!452403)))

(declare-fun bs!1915124 () Bool)

(assert (= bs!1915124 (and d!2271704 d!2271692)))

(assert (=> bs!1915124 (= lambda!452422 lambda!452418)))

(assert (=> d!2271704 (= (nullableZipper!3119 z2!461) (exists!4590 z2!461 lambda!452422))))

(declare-fun bs!1915125 () Bool)

(assert (= bs!1915125 d!2271704))

(declare-fun m!7980668 () Bool)

(assert (=> bs!1915125 m!7980668))

(assert (=> b!7316514 d!2271704))

(declare-fun d!2271706 () Bool)

(assert (=> d!2271706 (exists!4590 (ite c!1358218 z1!542 z2!461) (ite c!1358218 lambda!452403 lambda!452403))))

(declare-fun lt!2602252 () Unit!164625)

(declare-fun choose!56745 ((Set Context!15760) Context!15760 Int) Unit!164625)

(assert (=> d!2271706 (= lt!2602252 (choose!56745 (ite c!1358218 z1!542 z2!461) lt!2602229 (ite c!1358218 lambda!452403 lambda!452403)))))

(assert (=> d!2271706 (set.member lt!2602229 (ite c!1358218 z1!542 z2!461))))

(assert (=> d!2271706 (= (lemmaContainsThenExists!254 (ite c!1358218 z1!542 z2!461) lt!2602229 (ite c!1358218 lambda!452403 lambda!452403)) lt!2602252)))

(declare-fun bs!1915126 () Bool)

(assert (= bs!1915126 d!2271706))

(assert (=> bs!1915126 m!7980590))

(declare-fun m!7980670 () Bool)

(assert (=> bs!1915126 m!7980670))

(declare-fun m!7980672 () Bool)

(assert (=> bs!1915126 m!7980672))

(assert (=> bm!665800 d!2271706))

(declare-fun d!2271708 () Bool)

(declare-fun lt!2602257 () Bool)

(declare-fun exists!4592 (List!71306 Int) Bool)

(assert (=> d!2271708 (= lt!2602257 (exists!4592 (toList!11627 lt!2602227) lambda!452403))))

(declare-fun choose!56746 ((Set Context!15760) Int) Bool)

(assert (=> d!2271708 (= lt!2602257 (choose!56746 lt!2602227 lambda!452403))))

(assert (=> d!2271708 (= (exists!4590 lt!2602227 lambda!452403) lt!2602257)))

(declare-fun bs!1915127 () Bool)

(assert (= bs!1915127 d!2271708))

(assert (=> bs!1915127 m!7980662))

(assert (=> bs!1915127 m!7980662))

(declare-fun m!7980674 () Bool)

(assert (=> bs!1915127 m!7980674))

(declare-fun m!7980676 () Bool)

(assert (=> bs!1915127 m!7980676))

(assert (=> b!7316507 d!2271708))

(declare-fun d!2271710 () Bool)

(declare-fun lt!2602258 () Bool)

(assert (=> d!2271710 (= lt!2602258 (exists!4592 (toList!11627 (ite c!1358218 z1!542 z2!461)) (ite c!1358218 lambda!452403 lambda!452403)))))

(assert (=> d!2271710 (= lt!2602258 (choose!56746 (ite c!1358218 z1!542 z2!461) (ite c!1358218 lambda!452403 lambda!452403)))))

(assert (=> d!2271710 (= (exists!4590 (ite c!1358218 z1!542 z2!461) (ite c!1358218 lambda!452403 lambda!452403)) lt!2602258)))

(declare-fun bs!1915128 () Bool)

(assert (= bs!1915128 d!2271710))

(declare-fun m!7980678 () Bool)

(assert (=> bs!1915128 m!7980678))

(assert (=> bs!1915128 m!7980678))

(declare-fun m!7980680 () Bool)

(assert (=> bs!1915128 m!7980680))

(declare-fun m!7980682 () Bool)

(assert (=> bs!1915128 m!7980682))

(assert (=> bm!665801 d!2271710))

(declare-fun bs!1915129 () Bool)

(declare-fun d!2271712 () Bool)

(assert (= bs!1915129 (and d!2271712 b!7316507)))

(declare-fun lambda!452423 () Int)

(assert (=> bs!1915129 (= lambda!452423 lambda!452403)))

(declare-fun bs!1915130 () Bool)

(assert (= bs!1915130 (and d!2271712 d!2271692)))

(assert (=> bs!1915130 (= lambda!452423 lambda!452418)))

(declare-fun bs!1915131 () Bool)

(assert (= bs!1915131 (and d!2271712 d!2271704)))

(assert (=> bs!1915131 (= lambda!452423 lambda!452422)))

(assert (=> d!2271712 (= (nullableZipper!3119 z1!542) (exists!4590 z1!542 lambda!452423))))

(declare-fun bs!1915132 () Bool)

(assert (= bs!1915132 d!2271712))

(declare-fun m!7980684 () Bool)

(assert (=> bs!1915132 m!7980684))

(assert (=> b!7316511 d!2271712))

(declare-fun d!2271714 () Bool)

(declare-fun c!1358240 () Bool)

(assert (=> d!2271714 (= c!1358240 (isEmpty!40861 s!7362))))

(declare-fun e!4380097 () Bool)

(assert (=> d!2271714 (= (matchZipper!3804 z2!461 s!7362) e!4380097)))

(declare-fun b!7316565 () Bool)

(assert (=> b!7316565 (= e!4380097 (nullableZipper!3119 z2!461))))

(declare-fun b!7316566 () Bool)

(assert (=> b!7316566 (= e!4380097 (matchZipper!3804 (derivationStepZipper!3632 z2!461 (head!15079 s!7362)) (tail!14640 s!7362)))))

(assert (= (and d!2271714 c!1358240) b!7316565))

(assert (= (and d!2271714 (not c!1358240)) b!7316566))

(assert (=> d!2271714 m!7980644))

(assert (=> b!7316565 m!7980594))

(assert (=> b!7316566 m!7980646))

(assert (=> b!7316566 m!7980646))

(declare-fun m!7980686 () Bool)

(assert (=> b!7316566 m!7980686))

(assert (=> b!7316566 m!7980650))

(assert (=> b!7316566 m!7980686))

(assert (=> b!7316566 m!7980650))

(declare-fun m!7980688 () Bool)

(assert (=> b!7316566 m!7980688))

(assert (=> b!7316510 d!2271714))

(declare-fun d!2271716 () Bool)

(declare-fun lambda!452426 () Int)

(declare-fun forall!17775 (List!71302 Int) Bool)

(assert (=> d!2271716 (= (inv!90472 setElem!54599) (forall!17775 (exprs!8380 setElem!54599) lambda!452426))))

(declare-fun bs!1915133 () Bool)

(assert (= bs!1915133 d!2271716))

(declare-fun m!7980698 () Bool)

(assert (=> bs!1915133 m!7980698))

(assert (=> setNonEmpty!54598 d!2271716))

(declare-fun bs!1915134 () Bool)

(declare-fun d!2271720 () Bool)

(assert (= bs!1915134 (and d!2271720 d!2271716)))

(declare-fun lambda!452427 () Int)

(assert (=> bs!1915134 (= lambda!452427 lambda!452426)))

(assert (=> d!2271720 (= (inv!90472 setElem!54598) (forall!17775 (exprs!8380 setElem!54598) lambda!452427))))

(declare-fun bs!1915135 () Bool)

(assert (= bs!1915135 d!2271720))

(declare-fun m!7980700 () Bool)

(assert (=> bs!1915135 m!7980700))

(assert (=> setNonEmpty!54599 d!2271720))

(declare-fun b!7316572 () Bool)

(declare-fun e!4380101 () Bool)

(declare-fun tp!2077154 () Bool)

(declare-fun tp!2077155 () Bool)

(assert (=> b!7316572 (= e!4380101 (and tp!2077154 tp!2077155))))

(assert (=> b!7316515 (= tp!2077134 e!4380101)))

(assert (= (and b!7316515 (is-Cons!71178 (exprs!8380 setElem!54599))) b!7316572))

(declare-fun b!7316577 () Bool)

(declare-fun e!4380104 () Bool)

(declare-fun tp!2077158 () Bool)

(assert (=> b!7316577 (= e!4380104 (and tp_is_empty!47625 tp!2077158))))

(assert (=> b!7316513 (= tp!2077133 e!4380104)))

(assert (= (and b!7316513 (is-Cons!71179 (t!385535 s!7362))) b!7316577))

(declare-fun condSetEmpty!54608 () Bool)

(assert (=> setNonEmpty!54598 (= condSetEmpty!54608 (= setRest!54599 (as set.empty (Set Context!15760))))))

(declare-fun setRes!54608 () Bool)

(assert (=> setNonEmpty!54598 (= tp!2077130 setRes!54608)))

(declare-fun setIsEmpty!54608 () Bool)

(assert (=> setIsEmpty!54608 setRes!54608))

(declare-fun tp!2077164 () Bool)

(declare-fun e!4380107 () Bool)

(declare-fun setElem!54608 () Context!15760)

(declare-fun setNonEmpty!54608 () Bool)

(assert (=> setNonEmpty!54608 (= setRes!54608 (and tp!2077164 (inv!90472 setElem!54608) e!4380107))))

(declare-fun setRest!54608 () (Set Context!15760))

(assert (=> setNonEmpty!54608 (= setRest!54599 (set.union (set.insert setElem!54608 (as set.empty (Set Context!15760))) setRest!54608))))

(declare-fun b!7316582 () Bool)

(declare-fun tp!2077163 () Bool)

(assert (=> b!7316582 (= e!4380107 tp!2077163)))

(assert (= (and setNonEmpty!54598 condSetEmpty!54608) setIsEmpty!54608))

(assert (= (and setNonEmpty!54598 (not condSetEmpty!54608)) setNonEmpty!54608))

(assert (= setNonEmpty!54608 b!7316582))

(declare-fun m!7980702 () Bool)

(assert (=> setNonEmpty!54608 m!7980702))

(declare-fun b!7316583 () Bool)

(declare-fun e!4380108 () Bool)

(declare-fun tp!2077165 () Bool)

(declare-fun tp!2077166 () Bool)

(assert (=> b!7316583 (= e!4380108 (and tp!2077165 tp!2077166))))

(assert (=> b!7316505 (= tp!2077131 e!4380108)))

(assert (= (and b!7316505 (is-Cons!71178 (exprs!8380 setElem!54598))) b!7316583))

(declare-fun condSetEmpty!54609 () Bool)

(assert (=> setNonEmpty!54599 (= condSetEmpty!54609 (= setRest!54598 (as set.empty (Set Context!15760))))))

(declare-fun setRes!54609 () Bool)

(assert (=> setNonEmpty!54599 (= tp!2077132 setRes!54609)))

(declare-fun setIsEmpty!54609 () Bool)

(assert (=> setIsEmpty!54609 setRes!54609))

(declare-fun setNonEmpty!54609 () Bool)

(declare-fun tp!2077168 () Bool)

(declare-fun e!4380109 () Bool)

(declare-fun setElem!54609 () Context!15760)

(assert (=> setNonEmpty!54609 (= setRes!54609 (and tp!2077168 (inv!90472 setElem!54609) e!4380109))))

(declare-fun setRest!54609 () (Set Context!15760))

(assert (=> setNonEmpty!54609 (= setRest!54598 (set.union (set.insert setElem!54609 (as set.empty (Set Context!15760))) setRest!54609))))

(declare-fun b!7316584 () Bool)

(declare-fun tp!2077167 () Bool)

(assert (=> b!7316584 (= e!4380109 tp!2077167)))

(assert (= (and setNonEmpty!54599 condSetEmpty!54609) setIsEmpty!54609))

(assert (= (and setNonEmpty!54599 (not condSetEmpty!54609)) setNonEmpty!54609))

(assert (= setNonEmpty!54609 b!7316584))

(declare-fun m!7980704 () Bool)

(assert (=> setNonEmpty!54609 m!7980704))

(declare-fun b_lambda!282571 () Bool)

(assert (= b_lambda!282567 (or b!7316507 b_lambda!282571)))

(declare-fun bs!1915136 () Bool)

(declare-fun d!2271722 () Bool)

(assert (= bs!1915136 (and d!2271722 b!7316507)))

(declare-fun nullableContext!405 (Context!15760) Bool)

(assert (=> bs!1915136 (= (dynLambda!29159 lambda!452403 lt!2602249) (nullableContext!405 lt!2602249))))

(declare-fun m!7980706 () Bool)

(assert (=> bs!1915136 m!7980706))

(assert (=> d!2271700 d!2271722))

(push 1)

(assert (not b!7316572))

(assert (not b!7316558))

(assert (not b!7316565))

(assert (not d!2271712))

(assert (not b!7316584))

(assert (not d!2271698))

(assert (not d!2271714))

(assert (not d!2271720))

(assert (not b!7316557))

(assert (not d!2271704))

(assert (not d!2271706))

(assert (not d!2271696))

(assert tp_is_empty!47625)

(assert (not b!7316582))

(assert (not b!7316583))

(assert (not b!7316566))

(assert (not b_lambda!282571))

(assert (not d!2271700))

(assert (not setNonEmpty!54608))

(assert (not d!2271716))

(assert (not setNonEmpty!54609))

(assert (not b!7316559))

(assert (not b!7316577))

(assert (not d!2271710))

(assert (not bs!1915136))

(assert (not b!7316556))

(assert (not d!2271692))

(assert (not d!2271708))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2271742 () Bool)

(declare-fun res!2956516 () Bool)

(declare-fun e!4380131 () Bool)

(assert (=> d!2271742 (=> res!2956516 e!4380131)))

(assert (=> d!2271742 (= res!2956516 (is-Nil!71178 (exprs!8380 setElem!54599)))))

(assert (=> d!2271742 (= (forall!17775 (exprs!8380 setElem!54599) lambda!452426) e!4380131)))

(declare-fun b!7316616 () Bool)

(declare-fun e!4380132 () Bool)

(assert (=> b!7316616 (= e!4380131 e!4380132)))

(declare-fun res!2956517 () Bool)

(assert (=> b!7316616 (=> (not res!2956517) (not e!4380132))))

(declare-fun dynLambda!29161 (Int Regex!18940) Bool)

(assert (=> b!7316616 (= res!2956517 (dynLambda!29161 lambda!452426 (h!77626 (exprs!8380 setElem!54599))))))

(declare-fun b!7316617 () Bool)

(assert (=> b!7316617 (= e!4380132 (forall!17775 (t!385534 (exprs!8380 setElem!54599)) lambda!452426))))

(assert (= (and d!2271742 (not res!2956516)) b!7316616))

(assert (= (and b!7316616 res!2956517) b!7316617))

(declare-fun b_lambda!282575 () Bool)

(assert (=> (not b_lambda!282575) (not b!7316616)))

(declare-fun m!7980752 () Bool)

(assert (=> b!7316616 m!7980752))

(declare-fun m!7980754 () Bool)

(assert (=> b!7316617 m!7980754))

(assert (=> d!2271716 d!2271742))

(declare-fun d!2271744 () Bool)

(declare-fun res!2956518 () Bool)

(declare-fun e!4380133 () Bool)

(assert (=> d!2271744 (=> res!2956518 e!4380133)))

(assert (=> d!2271744 (= res!2956518 (is-Nil!71178 (exprs!8380 setElem!54598)))))

(assert (=> d!2271744 (= (forall!17775 (exprs!8380 setElem!54598) lambda!452427) e!4380133)))

(declare-fun b!7316618 () Bool)

(declare-fun e!4380134 () Bool)

(assert (=> b!7316618 (= e!4380133 e!4380134)))

(declare-fun res!2956519 () Bool)

(assert (=> b!7316618 (=> (not res!2956519) (not e!4380134))))

(assert (=> b!7316618 (= res!2956519 (dynLambda!29161 lambda!452427 (h!77626 (exprs!8380 setElem!54598))))))

(declare-fun b!7316619 () Bool)

(assert (=> b!7316619 (= e!4380134 (forall!17775 (t!385534 (exprs!8380 setElem!54598)) lambda!452427))))

(assert (= (and d!2271744 (not res!2956518)) b!7316618))

(assert (= (and b!7316618 res!2956519) b!7316619))

(declare-fun b_lambda!282577 () Bool)

(assert (=> (not b_lambda!282577) (not b!7316618)))

(declare-fun m!7980756 () Bool)

(assert (=> b!7316618 m!7980756))

(declare-fun m!7980758 () Bool)

(assert (=> b!7316619 m!7980758))

(assert (=> d!2271720 d!2271744))

(declare-fun d!2271746 () Bool)

(assert (=> d!2271746 (= (isEmpty!40861 s!7362) (is-Nil!71179 s!7362))))

(assert (=> d!2271714 d!2271746))

(declare-fun d!2271748 () Bool)

(declare-fun c!1358246 () Bool)

(assert (=> d!2271748 (= c!1358246 (isEmpty!40861 (tail!14640 s!7362)))))

(declare-fun e!4380135 () Bool)

(assert (=> d!2271748 (= (matchZipper!3804 (derivationStepZipper!3632 z1!542 (head!15079 s!7362)) (tail!14640 s!7362)) e!4380135)))

(declare-fun b!7316620 () Bool)

(assert (=> b!7316620 (= e!4380135 (nullableZipper!3119 (derivationStepZipper!3632 z1!542 (head!15079 s!7362))))))

(declare-fun b!7316621 () Bool)

(assert (=> b!7316621 (= e!4380135 (matchZipper!3804 (derivationStepZipper!3632 (derivationStepZipper!3632 z1!542 (head!15079 s!7362)) (head!15079 (tail!14640 s!7362))) (tail!14640 (tail!14640 s!7362))))))

(assert (= (and d!2271748 c!1358246) b!7316620))

(assert (= (and d!2271748 (not c!1358246)) b!7316621))

(assert (=> d!2271748 m!7980650))

(declare-fun m!7980760 () Bool)

(assert (=> d!2271748 m!7980760))

(assert (=> b!7316620 m!7980654))

(declare-fun m!7980762 () Bool)

(assert (=> b!7316620 m!7980762))

(assert (=> b!7316621 m!7980650))

(declare-fun m!7980764 () Bool)

(assert (=> b!7316621 m!7980764))

(assert (=> b!7316621 m!7980654))

(assert (=> b!7316621 m!7980764))

(declare-fun m!7980766 () Bool)

(assert (=> b!7316621 m!7980766))

(assert (=> b!7316621 m!7980650))

(declare-fun m!7980768 () Bool)

(assert (=> b!7316621 m!7980768))

(assert (=> b!7316621 m!7980766))

(assert (=> b!7316621 m!7980768))

(declare-fun m!7980770 () Bool)

(assert (=> b!7316621 m!7980770))

(assert (=> b!7316559 d!2271748))

(declare-fun d!2271750 () Bool)

(assert (=> d!2271750 true))

(declare-fun lambda!452433 () Int)

(declare-fun flatMap!3050 ((Set Context!15760) Int) (Set Context!15760))

(assert (=> d!2271750 (= (derivationStepZipper!3632 z1!542 (head!15079 s!7362)) (flatMap!3050 z1!542 lambda!452433))))

(declare-fun bs!1915150 () Bool)

(assert (= bs!1915150 d!2271750))

(declare-fun m!7980772 () Bool)

(assert (=> bs!1915150 m!7980772))

(assert (=> b!7316559 d!2271750))

(declare-fun d!2271752 () Bool)

(assert (=> d!2271752 (= (head!15079 s!7362) (h!77627 s!7362))))

(assert (=> b!7316559 d!2271752))

(declare-fun d!2271754 () Bool)

(assert (=> d!2271754 (= (tail!14640 s!7362) (t!385535 s!7362))))

(assert (=> b!7316559 d!2271754))

(assert (=> d!2271696 d!2271746))

(declare-fun d!2271756 () Bool)

(declare-fun lt!2602267 () Bool)

(assert (=> d!2271756 (= lt!2602267 (exists!4592 (toList!11627 lt!2602227) lambda!452418))))

(assert (=> d!2271756 (= lt!2602267 (choose!56746 lt!2602227 lambda!452418))))

(assert (=> d!2271756 (= (exists!4590 lt!2602227 lambda!452418) lt!2602267)))

(declare-fun bs!1915151 () Bool)

(assert (= bs!1915151 d!2271756))

(assert (=> bs!1915151 m!7980662))

(assert (=> bs!1915151 m!7980662))

(declare-fun m!7980774 () Bool)

(assert (=> bs!1915151 m!7980774))

(declare-fun m!7980776 () Bool)

(assert (=> bs!1915151 m!7980776))

(assert (=> d!2271692 d!2271756))

(declare-fun bs!1915152 () Bool)

(declare-fun d!2271758 () Bool)

(assert (= bs!1915152 (and d!2271758 d!2271716)))

(declare-fun lambda!452434 () Int)

(assert (=> bs!1915152 (= lambda!452434 lambda!452426)))

(declare-fun bs!1915153 () Bool)

(assert (= bs!1915153 (and d!2271758 d!2271720)))

(assert (=> bs!1915153 (= lambda!452434 lambda!452427)))

(assert (=> d!2271758 (= (inv!90472 setElem!54608) (forall!17775 (exprs!8380 setElem!54608) lambda!452434))))

(declare-fun bs!1915154 () Bool)

(assert (= bs!1915154 d!2271758))

(declare-fun m!7980778 () Bool)

(assert (=> bs!1915154 m!7980778))

(assert (=> setNonEmpty!54608 d!2271758))

(declare-fun bs!1915155 () Bool)

(declare-fun d!2271760 () Bool)

(assert (= bs!1915155 (and d!2271760 b!7316507)))

(declare-fun lambda!452437 () Int)

(assert (=> bs!1915155 (not (= lambda!452437 lambda!452403))))

(declare-fun bs!1915156 () Bool)

(assert (= bs!1915156 (and d!2271760 d!2271692)))

(assert (=> bs!1915156 (not (= lambda!452437 lambda!452418))))

(declare-fun bs!1915157 () Bool)

(assert (= bs!1915157 (and d!2271760 d!2271704)))

(assert (=> bs!1915157 (not (= lambda!452437 lambda!452422))))

(declare-fun bs!1915158 () Bool)

(assert (= bs!1915158 (and d!2271760 d!2271712)))

(assert (=> bs!1915158 (not (= lambda!452437 lambda!452423))))

(assert (=> d!2271760 true))

(declare-fun order!29141 () Int)

(declare-fun dynLambda!29162 (Int Int) Int)

(assert (=> d!2271760 (< (dynLambda!29162 order!29141 (ite c!1358218 lambda!452403 lambda!452403)) (dynLambda!29162 order!29141 lambda!452437))))

(declare-fun forall!17777 (List!71306 Int) Bool)

(assert (=> d!2271760 (= (exists!4592 (toList!11627 (ite c!1358218 z1!542 z2!461)) (ite c!1358218 lambda!452403 lambda!452403)) (not (forall!17777 (toList!11627 (ite c!1358218 z1!542 z2!461)) lambda!452437)))))

(declare-fun bs!1915159 () Bool)

(assert (= bs!1915159 d!2271760))

(assert (=> bs!1915159 m!7980678))

(declare-fun m!7980780 () Bool)

(assert (=> bs!1915159 m!7980780))

(assert (=> d!2271710 d!2271760))

(declare-fun d!2271762 () Bool)

(declare-fun e!4380138 () Bool)

(assert (=> d!2271762 e!4380138))

(declare-fun res!2956522 () Bool)

(assert (=> d!2271762 (=> (not res!2956522) (not e!4380138))))

(declare-fun lt!2602270 () List!71306)

(declare-fun noDuplicate!3058 (List!71306) Bool)

(assert (=> d!2271762 (= res!2956522 (noDuplicate!3058 lt!2602270))))

(declare-fun choose!56749 ((Set Context!15760)) List!71306)

(assert (=> d!2271762 (= lt!2602270 (choose!56749 (ite c!1358218 z1!542 z2!461)))))

(assert (=> d!2271762 (= (toList!11627 (ite c!1358218 z1!542 z2!461)) lt!2602270)))

(declare-fun b!7316628 () Bool)

(declare-fun content!14877 (List!71306) (Set Context!15760))

(assert (=> b!7316628 (= e!4380138 (= (content!14877 lt!2602270) (ite c!1358218 z1!542 z2!461)))))

(assert (= (and d!2271762 res!2956522) b!7316628))

(declare-fun m!7980782 () Bool)

(assert (=> d!2271762 m!7980782))

(declare-fun m!7980784 () Bool)

(assert (=> d!2271762 m!7980784))

(declare-fun m!7980786 () Bool)

(assert (=> b!7316628 m!7980786))

(assert (=> d!2271710 d!2271762))

(declare-fun d!2271764 () Bool)

(declare-fun res!2956525 () Bool)

(assert (=> d!2271764 (= res!2956525 (exists!4592 (toList!11627 (ite c!1358218 z1!542 z2!461)) (ite c!1358218 lambda!452403 lambda!452403)))))

(assert (=> d!2271764 true))

(assert (=> d!2271764 (= (choose!56746 (ite c!1358218 z1!542 z2!461) (ite c!1358218 lambda!452403 lambda!452403)) res!2956525)))

(declare-fun bs!1915160 () Bool)

(assert (= bs!1915160 d!2271764))

(assert (=> bs!1915160 m!7980678))

(assert (=> bs!1915160 m!7980678))

(assert (=> bs!1915160 m!7980680))

(assert (=> d!2271710 d!2271764))

(assert (=> b!7316565 d!2271704))

(assert (=> b!7316556 d!2271692))

(declare-fun d!2271766 () Bool)

(declare-fun lt!2602271 () Bool)

(assert (=> d!2271766 (= lt!2602271 (exists!4592 (toList!11627 z1!542) lambda!452423))))

(assert (=> d!2271766 (= lt!2602271 (choose!56746 z1!542 lambda!452423))))

(assert (=> d!2271766 (= (exists!4590 z1!542 lambda!452423) lt!2602271)))

(declare-fun bs!1915161 () Bool)

(assert (= bs!1915161 d!2271766))

(declare-fun m!7980788 () Bool)

(assert (=> bs!1915161 m!7980788))

(assert (=> bs!1915161 m!7980788))

(declare-fun m!7980790 () Bool)

(assert (=> bs!1915161 m!7980790))

(declare-fun m!7980792 () Bool)

(assert (=> bs!1915161 m!7980792))

(assert (=> d!2271712 d!2271766))

(declare-fun bs!1915162 () Bool)

(declare-fun d!2271768 () Bool)

(assert (= bs!1915162 (and d!2271768 d!2271716)))

(declare-fun lambda!452440 () Int)

(assert (=> bs!1915162 (not (= lambda!452440 lambda!452426))))

(declare-fun bs!1915163 () Bool)

(assert (= bs!1915163 (and d!2271768 d!2271720)))

(assert (=> bs!1915163 (not (= lambda!452440 lambda!452427))))

(declare-fun bs!1915164 () Bool)

(assert (= bs!1915164 (and d!2271768 d!2271758)))

(assert (=> bs!1915164 (not (= lambda!452440 lambda!452434))))

(assert (=> d!2271768 (= (nullableContext!405 lt!2602249) (forall!17775 (exprs!8380 lt!2602249) lambda!452440))))

(declare-fun bs!1915165 () Bool)

(assert (= bs!1915165 d!2271768))

(declare-fun m!7980794 () Bool)

(assert (=> bs!1915165 m!7980794))

(assert (=> bs!1915136 d!2271768))

(assert (=> d!2271698 d!2271746))

(declare-fun d!2271770 () Bool)

(declare-fun c!1358250 () Bool)

(assert (=> d!2271770 (= c!1358250 (isEmpty!40861 (tail!14640 s!7362)))))

(declare-fun e!4380139 () Bool)

(assert (=> d!2271770 (= (matchZipper!3804 (derivationStepZipper!3632 lt!2602227 (head!15079 s!7362)) (tail!14640 s!7362)) e!4380139)))

(declare-fun b!7316629 () Bool)

(assert (=> b!7316629 (= e!4380139 (nullableZipper!3119 (derivationStepZipper!3632 lt!2602227 (head!15079 s!7362))))))

(declare-fun b!7316630 () Bool)

(assert (=> b!7316630 (= e!4380139 (matchZipper!3804 (derivationStepZipper!3632 (derivationStepZipper!3632 lt!2602227 (head!15079 s!7362)) (head!15079 (tail!14640 s!7362))) (tail!14640 (tail!14640 s!7362))))))

(assert (= (and d!2271770 c!1358250) b!7316629))

(assert (= (and d!2271770 (not c!1358250)) b!7316630))

(assert (=> d!2271770 m!7980650))

(assert (=> d!2271770 m!7980760))

(assert (=> b!7316629 m!7980648))

(declare-fun m!7980796 () Bool)

(assert (=> b!7316629 m!7980796))

(assert (=> b!7316630 m!7980650))

(assert (=> b!7316630 m!7980764))

(assert (=> b!7316630 m!7980648))

(assert (=> b!7316630 m!7980764))

(declare-fun m!7980798 () Bool)

(assert (=> b!7316630 m!7980798))

(assert (=> b!7316630 m!7980650))

(assert (=> b!7316630 m!7980768))

(assert (=> b!7316630 m!7980798))

(assert (=> b!7316630 m!7980768))

(declare-fun m!7980800 () Bool)

(assert (=> b!7316630 m!7980800))

(assert (=> b!7316557 d!2271770))

(declare-fun bs!1915166 () Bool)

(declare-fun d!2271772 () Bool)

(assert (= bs!1915166 (and d!2271772 d!2271750)))

(declare-fun lambda!452441 () Int)

(assert (=> bs!1915166 (= lambda!452441 lambda!452433)))

(assert (=> d!2271772 true))

(assert (=> d!2271772 (= (derivationStepZipper!3632 lt!2602227 (head!15079 s!7362)) (flatMap!3050 lt!2602227 lambda!452441))))

(declare-fun bs!1915167 () Bool)

(assert (= bs!1915167 d!2271772))

(declare-fun m!7980802 () Bool)

(assert (=> bs!1915167 m!7980802))

(assert (=> b!7316557 d!2271772))

(assert (=> b!7316557 d!2271752))

(assert (=> b!7316557 d!2271754))

(assert (=> d!2271706 d!2271710))

(declare-fun d!2271774 () Bool)

(assert (=> d!2271774 (exists!4590 (ite c!1358218 z1!542 z2!461) (ite c!1358218 lambda!452403 lambda!452403))))

(assert (=> d!2271774 true))

(declare-fun _$17!669 () Unit!164625)

(assert (=> d!2271774 (= (choose!56745 (ite c!1358218 z1!542 z2!461) lt!2602229 (ite c!1358218 lambda!452403 lambda!452403)) _$17!669)))

(declare-fun bs!1915168 () Bool)

(assert (= bs!1915168 d!2271774))

(assert (=> bs!1915168 m!7980590))

(assert (=> d!2271706 d!2271774))

(declare-fun d!2271776 () Bool)

(declare-fun c!1358251 () Bool)

(assert (=> d!2271776 (= c!1358251 (isEmpty!40861 (tail!14640 s!7362)))))

(declare-fun e!4380141 () Bool)

(assert (=> d!2271776 (= (matchZipper!3804 (derivationStepZipper!3632 z2!461 (head!15079 s!7362)) (tail!14640 s!7362)) e!4380141)))

(declare-fun b!7316631 () Bool)

(assert (=> b!7316631 (= e!4380141 (nullableZipper!3119 (derivationStepZipper!3632 z2!461 (head!15079 s!7362))))))

(declare-fun b!7316632 () Bool)

(assert (=> b!7316632 (= e!4380141 (matchZipper!3804 (derivationStepZipper!3632 (derivationStepZipper!3632 z2!461 (head!15079 s!7362)) (head!15079 (tail!14640 s!7362))) (tail!14640 (tail!14640 s!7362))))))

(assert (= (and d!2271776 c!1358251) b!7316631))

(assert (= (and d!2271776 (not c!1358251)) b!7316632))

(assert (=> d!2271776 m!7980650))

(assert (=> d!2271776 m!7980760))

(assert (=> b!7316631 m!7980686))

(declare-fun m!7980804 () Bool)

(assert (=> b!7316631 m!7980804))

(assert (=> b!7316632 m!7980650))

(assert (=> b!7316632 m!7980764))

(assert (=> b!7316632 m!7980686))

(assert (=> b!7316632 m!7980764))

(declare-fun m!7980806 () Bool)

(assert (=> b!7316632 m!7980806))

(assert (=> b!7316632 m!7980650))

(assert (=> b!7316632 m!7980768))

(assert (=> b!7316632 m!7980806))

(assert (=> b!7316632 m!7980768))

(declare-fun m!7980808 () Bool)

(assert (=> b!7316632 m!7980808))

(assert (=> b!7316566 d!2271776))

(declare-fun bs!1915169 () Bool)

(declare-fun d!2271778 () Bool)

(assert (= bs!1915169 (and d!2271778 d!2271750)))

(declare-fun lambda!452442 () Int)

(assert (=> bs!1915169 (= lambda!452442 lambda!452433)))

(declare-fun bs!1915170 () Bool)

(assert (= bs!1915170 (and d!2271778 d!2271772)))

(assert (=> bs!1915170 (= lambda!452442 lambda!452441)))

(assert (=> d!2271778 true))

(assert (=> d!2271778 (= (derivationStepZipper!3632 z2!461 (head!15079 s!7362)) (flatMap!3050 z2!461 lambda!452442))))

(declare-fun bs!1915171 () Bool)

(assert (= bs!1915171 d!2271778))

(declare-fun m!7980810 () Bool)

(assert (=> bs!1915171 m!7980810))

(assert (=> b!7316566 d!2271778))

(assert (=> b!7316566 d!2271752))

(assert (=> b!7316566 d!2271754))

(declare-fun bs!1915172 () Bool)

(declare-fun d!2271780 () Bool)

(assert (= bs!1915172 (and d!2271780 d!2271716)))

(declare-fun lambda!452443 () Int)

(assert (=> bs!1915172 (= lambda!452443 lambda!452426)))

(declare-fun bs!1915173 () Bool)

(assert (= bs!1915173 (and d!2271780 d!2271720)))

(assert (=> bs!1915173 (= lambda!452443 lambda!452427)))

(declare-fun bs!1915174 () Bool)

(assert (= bs!1915174 (and d!2271780 d!2271758)))

(assert (=> bs!1915174 (= lambda!452443 lambda!452434)))

(declare-fun bs!1915175 () Bool)

(assert (= bs!1915175 (and d!2271780 d!2271768)))

(assert (=> bs!1915175 (not (= lambda!452443 lambda!452440))))

(assert (=> d!2271780 (= (inv!90472 setElem!54609) (forall!17775 (exprs!8380 setElem!54609) lambda!452443))))

(declare-fun bs!1915176 () Bool)

(assert (= bs!1915176 d!2271780))

(declare-fun m!7980812 () Bool)

(assert (=> bs!1915176 m!7980812))

(assert (=> setNonEmpty!54609 d!2271780))

(declare-fun b!7316645 () Bool)

(declare-fun e!4380152 () Bool)

(declare-fun lt!2602277 () Context!15760)

(declare-fun contains!20797 (List!71306 Context!15760) Bool)

(assert (=> b!7316645 (= e!4380152 (contains!20797 (toList!11627 lt!2602227) lt!2602277))))

(declare-fun b!7316646 () Bool)

(declare-fun e!4380151 () Context!15760)

(assert (=> b!7316646 (= e!4380151 (h!77630 (toList!11627 lt!2602227)))))

(declare-fun b!7316647 () Bool)

(declare-fun e!4380153 () Context!15760)

(assert (=> b!7316647 (= e!4380153 (getWitness!2330 (t!385538 (toList!11627 lt!2602227)) lambda!452403))))

(declare-fun d!2271782 () Bool)

(assert (=> d!2271782 e!4380152))

(declare-fun res!2956530 () Bool)

(assert (=> d!2271782 (=> (not res!2956530) (not e!4380152))))

(assert (=> d!2271782 (= res!2956530 (dynLambda!29159 lambda!452403 lt!2602277))))

(assert (=> d!2271782 (= lt!2602277 e!4380151)))

(declare-fun c!1358256 () Bool)

(declare-fun e!4380150 () Bool)

(assert (=> d!2271782 (= c!1358256 e!4380150)))

(declare-fun res!2956531 () Bool)

(assert (=> d!2271782 (=> (not res!2956531) (not e!4380150))))

(assert (=> d!2271782 (= res!2956531 (is-Cons!71182 (toList!11627 lt!2602227)))))

(assert (=> d!2271782 (exists!4592 (toList!11627 lt!2602227) lambda!452403)))

(assert (=> d!2271782 (= (getWitness!2330 (toList!11627 lt!2602227) lambda!452403) lt!2602277)))

(declare-fun b!7316648 () Bool)

(assert (=> b!7316648 (= e!4380150 (dynLambda!29159 lambda!452403 (h!77630 (toList!11627 lt!2602227))))))

(declare-fun b!7316649 () Bool)

(assert (=> b!7316649 (= e!4380151 e!4380153)))

(declare-fun c!1358257 () Bool)

(assert (=> b!7316649 (= c!1358257 (is-Cons!71182 (toList!11627 lt!2602227)))))

(declare-fun b!7316650 () Bool)

(declare-fun lt!2602278 () Unit!164625)

(declare-fun Unit!164633 () Unit!164625)

(assert (=> b!7316650 (= lt!2602278 Unit!164633)))

(assert (=> b!7316650 false))

(declare-fun head!15081 (List!71306) Context!15760)

(assert (=> b!7316650 (= e!4380153 (head!15081 (toList!11627 lt!2602227)))))

(assert (= (and d!2271782 res!2956531) b!7316648))

(assert (= (and d!2271782 c!1358256) b!7316646))

(assert (= (and d!2271782 (not c!1358256)) b!7316649))

(assert (= (and b!7316649 c!1358257) b!7316647))

(assert (= (and b!7316649 (not c!1358257)) b!7316650))

(assert (= (and d!2271782 res!2956530) b!7316645))

(declare-fun b_lambda!282579 () Bool)

(assert (=> (not b_lambda!282579) (not d!2271782)))

(declare-fun b_lambda!282581 () Bool)

(assert (=> (not b_lambda!282581) (not b!7316648)))

(assert (=> b!7316645 m!7980662))

(declare-fun m!7980820 () Bool)

(assert (=> b!7316645 m!7980820))

(declare-fun m!7980822 () Bool)

(assert (=> b!7316647 m!7980822))

(declare-fun m!7980824 () Bool)

(assert (=> d!2271782 m!7980824))

(assert (=> d!2271782 m!7980662))

(assert (=> d!2271782 m!7980674))

(declare-fun m!7980826 () Bool)

(assert (=> b!7316648 m!7980826))

(assert (=> b!7316650 m!7980662))

(declare-fun m!7980828 () Bool)

(assert (=> b!7316650 m!7980828))

(assert (=> d!2271700 d!2271782))

(declare-fun d!2271788 () Bool)

(declare-fun e!4380154 () Bool)

(assert (=> d!2271788 e!4380154))

(declare-fun res!2956532 () Bool)

(assert (=> d!2271788 (=> (not res!2956532) (not e!4380154))))

(declare-fun lt!2602279 () List!71306)

(assert (=> d!2271788 (= res!2956532 (noDuplicate!3058 lt!2602279))))

(assert (=> d!2271788 (= lt!2602279 (choose!56749 lt!2602227))))

(assert (=> d!2271788 (= (toList!11627 lt!2602227) lt!2602279)))

(declare-fun b!7316651 () Bool)

(assert (=> b!7316651 (= e!4380154 (= (content!14877 lt!2602279) lt!2602227))))

(assert (= (and d!2271788 res!2956532) b!7316651))

(declare-fun m!7980830 () Bool)

(assert (=> d!2271788 m!7980830))

(declare-fun m!7980832 () Bool)

(assert (=> d!2271788 m!7980832))

(declare-fun m!7980834 () Bool)

(assert (=> b!7316651 m!7980834))

(assert (=> d!2271700 d!2271788))

(assert (=> d!2271700 d!2271708))

(declare-fun bs!1915178 () Bool)

(declare-fun d!2271790 () Bool)

(assert (= bs!1915178 (and d!2271790 d!2271760)))

(declare-fun lambda!452444 () Int)

(assert (=> bs!1915178 (= (= lambda!452403 (ite c!1358218 lambda!452403 lambda!452403)) (= lambda!452444 lambda!452437))))

(declare-fun bs!1915179 () Bool)

(assert (= bs!1915179 (and d!2271790 d!2271712)))

(assert (=> bs!1915179 (not (= lambda!452444 lambda!452423))))

(declare-fun bs!1915180 () Bool)

(assert (= bs!1915180 (and d!2271790 d!2271692)))

(assert (=> bs!1915180 (not (= lambda!452444 lambda!452418))))

(declare-fun bs!1915181 () Bool)

(assert (= bs!1915181 (and d!2271790 b!7316507)))

(assert (=> bs!1915181 (not (= lambda!452444 lambda!452403))))

(declare-fun bs!1915182 () Bool)

(assert (= bs!1915182 (and d!2271790 d!2271704)))

(assert (=> bs!1915182 (not (= lambda!452444 lambda!452422))))

(assert (=> d!2271790 true))

(assert (=> d!2271790 (< (dynLambda!29162 order!29141 lambda!452403) (dynLambda!29162 order!29141 lambda!452444))))

(assert (=> d!2271790 (= (exists!4592 (toList!11627 lt!2602227) lambda!452403) (not (forall!17777 (toList!11627 lt!2602227) lambda!452444)))))

(declare-fun bs!1915183 () Bool)

(assert (= bs!1915183 d!2271790))

(assert (=> bs!1915183 m!7980662))

(declare-fun m!7980836 () Bool)

(assert (=> bs!1915183 m!7980836))

(assert (=> d!2271708 d!2271790))

(assert (=> d!2271708 d!2271788))

(declare-fun d!2271792 () Bool)

(declare-fun res!2956533 () Bool)

(assert (=> d!2271792 (= res!2956533 (exists!4592 (toList!11627 lt!2602227) lambda!452403))))

(assert (=> d!2271792 true))

(assert (=> d!2271792 (= (choose!56746 lt!2602227 lambda!452403) res!2956533)))

(declare-fun bs!1915184 () Bool)

(assert (= bs!1915184 d!2271792))

(assert (=> bs!1915184 m!7980662))

(assert (=> bs!1915184 m!7980662))

(assert (=> bs!1915184 m!7980674))

(assert (=> d!2271708 d!2271792))

(assert (=> b!7316558 d!2271712))

(declare-fun d!2271794 () Bool)

(declare-fun lt!2602280 () Bool)

(assert (=> d!2271794 (= lt!2602280 (exists!4592 (toList!11627 z2!461) lambda!452422))))

(assert (=> d!2271794 (= lt!2602280 (choose!56746 z2!461 lambda!452422))))

(assert (=> d!2271794 (= (exists!4590 z2!461 lambda!452422) lt!2602280)))

(declare-fun bs!1915185 () Bool)

(assert (= bs!1915185 d!2271794))

(declare-fun m!7980838 () Bool)

(assert (=> bs!1915185 m!7980838))

(assert (=> bs!1915185 m!7980838))

(declare-fun m!7980840 () Bool)

(assert (=> bs!1915185 m!7980840))

(declare-fun m!7980842 () Bool)

(assert (=> bs!1915185 m!7980842))

(assert (=> d!2271704 d!2271794))

(declare-fun b!7316652 () Bool)

(declare-fun e!4380155 () Bool)

(declare-fun tp!2077188 () Bool)

(declare-fun tp!2077189 () Bool)

(assert (=> b!7316652 (= e!4380155 (and tp!2077188 tp!2077189))))

(assert (=> b!7316584 (= tp!2077167 e!4380155)))

(assert (= (and b!7316584 (is-Cons!71178 (exprs!8380 setElem!54609))) b!7316652))

(declare-fun b!7316653 () Bool)

(declare-fun e!4380156 () Bool)

(declare-fun tp!2077190 () Bool)

(declare-fun tp!2077191 () Bool)

(assert (=> b!7316653 (= e!4380156 (and tp!2077190 tp!2077191))))

(assert (=> b!7316582 (= tp!2077163 e!4380156)))

(assert (= (and b!7316582 (is-Cons!71178 (exprs!8380 setElem!54608))) b!7316653))

(declare-fun e!4380159 () Bool)

(assert (=> b!7316583 (= tp!2077165 e!4380159)))

(declare-fun b!7316664 () Bool)

(assert (=> b!7316664 (= e!4380159 tp_is_empty!47625)))

(declare-fun b!7316666 () Bool)

(declare-fun tp!2077202 () Bool)

(assert (=> b!7316666 (= e!4380159 tp!2077202)))

(declare-fun b!7316667 () Bool)

(declare-fun tp!2077203 () Bool)

(declare-fun tp!2077206 () Bool)

(assert (=> b!7316667 (= e!4380159 (and tp!2077203 tp!2077206))))

(declare-fun b!7316665 () Bool)

(declare-fun tp!2077204 () Bool)

(declare-fun tp!2077205 () Bool)

(assert (=> b!7316665 (= e!4380159 (and tp!2077204 tp!2077205))))

(assert (= (and b!7316583 (is-ElementMatch!18940 (h!77626 (exprs!8380 setElem!54598)))) b!7316664))

(assert (= (and b!7316583 (is-Concat!27785 (h!77626 (exprs!8380 setElem!54598)))) b!7316665))

(assert (= (and b!7316583 (is-Star!18940 (h!77626 (exprs!8380 setElem!54598)))) b!7316666))

(assert (= (and b!7316583 (is-Union!18940 (h!77626 (exprs!8380 setElem!54598)))) b!7316667))

(declare-fun b!7316668 () Bool)

(declare-fun e!4380160 () Bool)

(declare-fun tp!2077207 () Bool)

(declare-fun tp!2077208 () Bool)

(assert (=> b!7316668 (= e!4380160 (and tp!2077207 tp!2077208))))

(assert (=> b!7316583 (= tp!2077166 e!4380160)))

(assert (= (and b!7316583 (is-Cons!71178 (t!385534 (exprs!8380 setElem!54598)))) b!7316668))

(declare-fun condSetEmpty!54614 () Bool)

(assert (=> setNonEmpty!54609 (= condSetEmpty!54614 (= setRest!54609 (as set.empty (Set Context!15760))))))

(declare-fun setRes!54614 () Bool)

(assert (=> setNonEmpty!54609 (= tp!2077168 setRes!54614)))

(declare-fun setIsEmpty!54614 () Bool)

(assert (=> setIsEmpty!54614 setRes!54614))

(declare-fun setNonEmpty!54614 () Bool)

(declare-fun setElem!54614 () Context!15760)

(declare-fun tp!2077210 () Bool)

(declare-fun e!4380161 () Bool)

(assert (=> setNonEmpty!54614 (= setRes!54614 (and tp!2077210 (inv!90472 setElem!54614) e!4380161))))

(declare-fun setRest!54614 () (Set Context!15760))

(assert (=> setNonEmpty!54614 (= setRest!54609 (set.union (set.insert setElem!54614 (as set.empty (Set Context!15760))) setRest!54614))))

(declare-fun b!7316669 () Bool)

(declare-fun tp!2077209 () Bool)

(assert (=> b!7316669 (= e!4380161 tp!2077209)))

(assert (= (and setNonEmpty!54609 condSetEmpty!54614) setIsEmpty!54614))

(assert (= (and setNonEmpty!54609 (not condSetEmpty!54614)) setNonEmpty!54614))

(assert (= setNonEmpty!54614 b!7316669))

(declare-fun m!7980844 () Bool)

(assert (=> setNonEmpty!54614 m!7980844))

(declare-fun condSetEmpty!54615 () Bool)

(assert (=> setNonEmpty!54608 (= condSetEmpty!54615 (= setRest!54608 (as set.empty (Set Context!15760))))))

(declare-fun setRes!54615 () Bool)

(assert (=> setNonEmpty!54608 (= tp!2077164 setRes!54615)))

(declare-fun setIsEmpty!54615 () Bool)

(assert (=> setIsEmpty!54615 setRes!54615))

(declare-fun tp!2077212 () Bool)

(declare-fun setNonEmpty!54615 () Bool)

(declare-fun setElem!54615 () Context!15760)

(declare-fun e!4380162 () Bool)

(assert (=> setNonEmpty!54615 (= setRes!54615 (and tp!2077212 (inv!90472 setElem!54615) e!4380162))))

(declare-fun setRest!54615 () (Set Context!15760))

(assert (=> setNonEmpty!54615 (= setRest!54608 (set.union (set.insert setElem!54615 (as set.empty (Set Context!15760))) setRest!54615))))

(declare-fun b!7316672 () Bool)

(declare-fun tp!2077211 () Bool)

(assert (=> b!7316672 (= e!4380162 tp!2077211)))

(assert (= (and setNonEmpty!54608 condSetEmpty!54615) setIsEmpty!54615))

(assert (= (and setNonEmpty!54608 (not condSetEmpty!54615)) setNonEmpty!54615))

(assert (= setNonEmpty!54615 b!7316672))

(declare-fun m!7980846 () Bool)

(assert (=> setNonEmpty!54615 m!7980846))

(declare-fun e!4380163 () Bool)

(assert (=> b!7316572 (= tp!2077154 e!4380163)))

(declare-fun b!7316673 () Bool)

(assert (=> b!7316673 (= e!4380163 tp_is_empty!47625)))

(declare-fun b!7316675 () Bool)

(declare-fun tp!2077213 () Bool)

(assert (=> b!7316675 (= e!4380163 tp!2077213)))

(declare-fun b!7316676 () Bool)

(declare-fun tp!2077214 () Bool)

(declare-fun tp!2077217 () Bool)

(assert (=> b!7316676 (= e!4380163 (and tp!2077214 tp!2077217))))

(declare-fun b!7316674 () Bool)

(declare-fun tp!2077215 () Bool)

(declare-fun tp!2077216 () Bool)

(assert (=> b!7316674 (= e!4380163 (and tp!2077215 tp!2077216))))

(assert (= (and b!7316572 (is-ElementMatch!18940 (h!77626 (exprs!8380 setElem!54599)))) b!7316673))

(assert (= (and b!7316572 (is-Concat!27785 (h!77626 (exprs!8380 setElem!54599)))) b!7316674))

(assert (= (and b!7316572 (is-Star!18940 (h!77626 (exprs!8380 setElem!54599)))) b!7316675))

(assert (= (and b!7316572 (is-Union!18940 (h!77626 (exprs!8380 setElem!54599)))) b!7316676))

(declare-fun b!7316677 () Bool)

(declare-fun e!4380164 () Bool)

(declare-fun tp!2077218 () Bool)

(declare-fun tp!2077219 () Bool)

(assert (=> b!7316677 (= e!4380164 (and tp!2077218 tp!2077219))))

(assert (=> b!7316572 (= tp!2077155 e!4380164)))

(assert (= (and b!7316572 (is-Cons!71178 (t!385534 (exprs!8380 setElem!54599)))) b!7316677))

(declare-fun b!7316678 () Bool)

(declare-fun e!4380165 () Bool)

(declare-fun tp!2077220 () Bool)

(assert (=> b!7316678 (= e!4380165 (and tp_is_empty!47625 tp!2077220))))

(assert (=> b!7316577 (= tp!2077158 e!4380165)))

(assert (= (and b!7316577 (is-Cons!71179 (t!385535 (t!385535 s!7362)))) b!7316678))

(declare-fun b_lambda!282583 () Bool)

(assert (= b_lambda!282575 (or d!2271716 b_lambda!282583)))

(declare-fun bs!1915188 () Bool)

(declare-fun d!2271796 () Bool)

(assert (= bs!1915188 (and d!2271796 d!2271716)))

(declare-fun validRegex!9613 (Regex!18940) Bool)

(assert (=> bs!1915188 (= (dynLambda!29161 lambda!452426 (h!77626 (exprs!8380 setElem!54599))) (validRegex!9613 (h!77626 (exprs!8380 setElem!54599))))))

(declare-fun m!7980848 () Bool)

(assert (=> bs!1915188 m!7980848))

(assert (=> b!7316616 d!2271796))

(declare-fun b_lambda!282585 () Bool)

(assert (= b_lambda!282577 (or d!2271720 b_lambda!282585)))

(declare-fun bs!1915190 () Bool)

(declare-fun d!2271798 () Bool)

(assert (= bs!1915190 (and d!2271798 d!2271720)))

(assert (=> bs!1915190 (= (dynLambda!29161 lambda!452427 (h!77626 (exprs!8380 setElem!54598))) (validRegex!9613 (h!77626 (exprs!8380 setElem!54598))))))

(declare-fun m!7980850 () Bool)

(assert (=> bs!1915190 m!7980850))

(assert (=> b!7316618 d!2271798))

(declare-fun b_lambda!282587 () Bool)

(assert (= b_lambda!282579 (or b!7316507 b_lambda!282587)))

(declare-fun bs!1915191 () Bool)

(declare-fun d!2271800 () Bool)

(assert (= bs!1915191 (and d!2271800 b!7316507)))

(assert (=> bs!1915191 (= (dynLambda!29159 lambda!452403 lt!2602277) (nullableContext!405 lt!2602277))))

(declare-fun m!7980852 () Bool)

(assert (=> bs!1915191 m!7980852))

(assert (=> d!2271782 d!2271800))

(declare-fun b_lambda!282589 () Bool)

(assert (= b_lambda!282581 (or b!7316507 b_lambda!282589)))

(declare-fun bs!1915193 () Bool)

(declare-fun d!2271802 () Bool)

(assert (= bs!1915193 (and d!2271802 b!7316507)))

(assert (=> bs!1915193 (= (dynLambda!29159 lambda!452403 (h!77630 (toList!11627 lt!2602227))) (nullableContext!405 (h!77630 (toList!11627 lt!2602227))))))

(declare-fun m!7980854 () Bool)

(assert (=> bs!1915193 m!7980854))

(assert (=> b!7316648 d!2271802))

(push 1)

(assert (not b!7316676))

(assert (not b_lambda!282571))

(assert (not setNonEmpty!54614))

(assert (not d!2271778))

(assert (not b!7316666))

(assert (not b!7316631))

(assert (not b!7316665))

(assert (not b!7316667))

(assert (not b!7316678))

(assert (not d!2271794))

(assert (not b_lambda!282589))

(assert (not b!7316653))

(assert (not b!7316651))

(assert (not b!7316620))

(assert (not b!7316647))

(assert (not d!2271758))

(assert (not b!7316650))

(assert (not d!2271774))

(assert (not b!7316669))

(assert (not b_lambda!282583))

(assert (not bs!1915188))

(assert (not b!7316629))

(assert (not d!2271792))

(assert tp_is_empty!47625)

(assert (not b!7316617))

(assert (not d!2271764))

(assert (not d!2271768))

(assert (not d!2271760))

(assert (not d!2271770))

(assert (not bs!1915193))

(assert (not b!7316672))

(assert (not d!2271756))

(assert (not d!2271750))

(assert (not b!7316619))

(assert (not d!2271776))

(assert (not b!7316632))

(assert (not b!7316645))

(assert (not b!7316677))

(assert (not d!2271782))

(assert (not b!7316674))

(assert (not d!2271788))

(assert (not b_lambda!282587))

(assert (not setNonEmpty!54615))

(assert (not d!2271766))

(assert (not d!2271748))

(assert (not d!2271772))

(assert (not b!7316668))

(assert (not b!7316628))

(assert (not d!2271762))

(assert (not b_lambda!282585))

(assert (not bs!1915191))

(assert (not b!7316630))

(assert (not d!2271790))

(assert (not b!7316675))

(assert (not d!2271780))

(assert (not b!7316621))

(assert (not bs!1915190))

(assert (not b!7316652))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

