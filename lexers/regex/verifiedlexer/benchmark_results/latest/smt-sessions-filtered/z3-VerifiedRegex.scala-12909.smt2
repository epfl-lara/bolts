; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!712190 () Bool)

(assert start!712190)

(declare-fun b_free!133937 () Bool)

(declare-fun b_next!134727 () Bool)

(assert (=> start!712190 (= b_free!133937 (not b_next!134727))))

(declare-fun tp!2075237 () Bool)

(declare-fun b_and!351245 () Bool)

(assert (=> start!712190 (= tp!2075237 b_and!351245)))

(declare-fun b!7311804 () Bool)

(assert (=> b!7311804 true))

(declare-datatypes ((B!3485 0))(
  ( (B!3486 (val!29041 Int)) )
))
(declare-datatypes ((List!71144 0))(
  ( (Nil!71020) (Cons!71020 (h!77468 B!3485) (t!385284 List!71144)) )
))
(declare-fun lRes!24 () List!71144)

(declare-fun b!7311801 () Bool)

(declare-fun e!4376488 () Bool)

(declare-datatypes ((A!783 0))(
  ( (A!784 (val!29042 Int)) )
))
(declare-fun empty!3087 () A!783)

(declare-fun f!903 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun s!1445 () (InoxSet A!783))

(declare-fun flatMapPost!92 ((InoxSet A!783) Int B!3485) A!783)

(assert (=> b!7311801 (= e!4376488 (= (flatMapPost!92 s!1445 f!903 (h!77468 lRes!24)) empty!3087))))

(assert (=> b!7311801 true))

(declare-fun tp_is_empty!47361 () Bool)

(assert (=> b!7311801 tp_is_empty!47361))

(declare-fun b!7311802 () Bool)

(declare-fun res!2953875 () Bool)

(declare-fun e!4376487 () Bool)

(assert (=> b!7311802 (=> (not res!2953875) (not e!4376487))))

(get-info :version)

(assert (=> b!7311802 (= res!2953875 ((_ is Cons!71020) lRes!24))))

(declare-fun res!2953873 () Bool)

(declare-fun e!4376486 () Bool)

(assert (=> start!712190 (=> (not res!2953873) (not e!4376486))))

(declare-fun elmt!124 () A!783)

(assert (=> start!712190 (= res!2953873 (= s!1445 (store ((as const (Array A!783 Bool)) false) elmt!124 true)))))

(assert (=> start!712190 e!4376486))

(declare-fun condSetEmpty!53913 () Bool)

(assert (=> start!712190 (= condSetEmpty!53913 (= s!1445 ((as const (Array A!783 Bool)) false)))))

(declare-fun setRes!53913 () Bool)

(assert (=> start!712190 setRes!53913))

(assert (=> start!712190 tp_is_empty!47361))

(declare-fun e!4376490 () Bool)

(assert (=> start!712190 e!4376490))

(assert (=> start!712190 tp!2075237))

(declare-fun setIsEmpty!53913 () Bool)

(assert (=> setIsEmpty!53913 setRes!53913))

(declare-fun b!7311803 () Bool)

(assert (=> b!7311803 (= e!4376486 e!4376487)))

(declare-fun res!2953874 () Bool)

(assert (=> b!7311803 (=> (not res!2953874) (not e!4376487))))

(declare-fun lt!2600676 () List!71144)

(declare-fun subseq!803 (List!71144 List!71144) Bool)

(assert (=> b!7311803 (= res!2953874 (subseq!803 lRes!24 lt!2600676))))

(declare-fun toList!11553 ((InoxSet B!3485)) List!71144)

(declare-fun dynLambda!29062 (Int A!783) (InoxSet B!3485))

(assert (=> b!7311803 (= lt!2600676 (toList!11553 (dynLambda!29062 f!903 elmt!124)))))

(declare-fun lt!2600674 () List!71144)

(declare-fun contains!20763 (List!71144 B!3485) Bool)

(assert (=> b!7311804 (= e!4376487 (not (contains!20763 lt!2600674 (h!77468 lRes!24))))))

(assert (=> b!7311804 e!4376488))

(declare-fun res!2953877 () Bool)

(assert (=> b!7311804 (=> (not res!2953877) (not e!4376488))))

(assert (=> b!7311804 (= res!2953877 (contains!20763 lt!2600676 (h!77468 lRes!24)))))

(declare-datatypes ((Unit!164460 0))(
  ( (Unit!164461) )
))
(declare-fun lt!2600678 () Unit!164460)

(declare-fun subseqContains!30 (List!71144 List!71144 B!3485) Unit!164460)

(assert (=> b!7311804 (= lt!2600678 (subseqContains!30 lRes!24 lt!2600676 (h!77468 lRes!24)))))

(declare-fun e!4376489 () Bool)

(assert (=> b!7311804 e!4376489))

(declare-fun res!2953876 () Bool)

(assert (=> b!7311804 (=> (not res!2953876) (not e!4376489))))

(declare-fun lambda!451615 () Int)

(declare-fun forall!17728 (List!71144 Int) Bool)

(assert (=> b!7311804 (= res!2953876 (forall!17728 (t!385284 lRes!24) lambda!451615))))

(declare-fun flatMap!3004 ((InoxSet A!783) Int) (InoxSet B!3485))

(assert (=> b!7311804 (= lt!2600674 (toList!11553 (flatMap!3004 s!1445 f!903)))))

(declare-fun lt!2600677 () Unit!164460)

(declare-fun lemmaFlatMapOnSingletonSetList2!14 ((InoxSet A!783) A!783 Int List!71144) Unit!164460)

(assert (=> b!7311804 (= lt!2600677 (lemmaFlatMapOnSingletonSetList2!14 s!1445 elmt!124 f!903 (t!385284 lRes!24)))))

(declare-fun lt!2600675 () Unit!164460)

(declare-fun subseqTail!54 (List!71144 List!71144) Unit!164460)

(assert (=> b!7311804 (= lt!2600675 (subseqTail!54 lRes!24 lt!2600676))))

(declare-fun b!7311805 () Bool)

(declare-fun tp_is_empty!47363 () Bool)

(declare-fun tp!2075239 () Bool)

(assert (=> b!7311805 (= e!4376490 (and tp_is_empty!47363 tp!2075239))))

(declare-fun setNonEmpty!53913 () Bool)

(declare-fun tp!2075238 () Bool)

(assert (=> setNonEmpty!53913 (= setRes!53913 (and tp!2075238 tp_is_empty!47361))))

(declare-fun setElem!53913 () A!783)

(declare-fun setRest!53913 () (InoxSet A!783))

(assert (=> setNonEmpty!53913 (= s!1445 ((_ map or) (store ((as const (Array A!783 Bool)) false) setElem!53913 true) setRest!53913))))

(declare-fun b!7311806 () Bool)

(assert (=> b!7311806 (= e!4376489 (forall!17728 (t!385284 lRes!24) lambda!451615))))

(assert (= (and start!712190 res!2953873) b!7311803))

(assert (= (and b!7311803 res!2953874) b!7311802))

(assert (= (and b!7311802 res!2953875) b!7311804))

(assert (= (and b!7311804 res!2953876) b!7311806))

(assert (= (and b!7311804 res!2953877) b!7311801))

(assert (= (and start!712190 condSetEmpty!53913) setIsEmpty!53913))

(assert (= (and start!712190 (not condSetEmpty!53913)) setNonEmpty!53913))

(assert (= (and start!712190 ((_ is Cons!71020) lRes!24)) b!7311805))

(declare-fun b_lambda!282123 () Bool)

(assert (=> (not b_lambda!282123) (not b!7311803)))

(declare-fun t!385283 () Bool)

(declare-fun tb!262175 () Bool)

(assert (=> (and start!712190 (= f!903 f!903) t!385283) tb!262175))

(assert (=> b!7311803 t!385283))

(declare-fun result!352762 () Bool)

(declare-fun b_and!351247 () Bool)

(assert (= b_and!351245 (and (=> t!385283 result!352762) b_and!351247)))

(declare-fun m!7975790 () Bool)

(assert (=> start!712190 m!7975790))

(declare-fun m!7975792 () Bool)

(assert (=> b!7311806 m!7975792))

(declare-fun m!7975794 () Bool)

(assert (=> b!7311801 m!7975794))

(declare-fun m!7975796 () Bool)

(assert (=> b!7311804 m!7975796))

(declare-fun m!7975798 () Bool)

(assert (=> b!7311804 m!7975798))

(declare-fun m!7975800 () Bool)

(assert (=> b!7311804 m!7975800))

(declare-fun m!7975802 () Bool)

(assert (=> b!7311804 m!7975802))

(declare-fun m!7975804 () Bool)

(assert (=> b!7311804 m!7975804))

(declare-fun m!7975806 () Bool)

(assert (=> b!7311804 m!7975806))

(declare-fun m!7975808 () Bool)

(assert (=> b!7311804 m!7975808))

(assert (=> b!7311804 m!7975792))

(assert (=> b!7311804 m!7975804))

(declare-fun m!7975810 () Bool)

(assert (=> b!7311803 m!7975810))

(declare-fun m!7975812 () Bool)

(assert (=> b!7311803 m!7975812))

(assert (=> b!7311803 m!7975812))

(declare-fun m!7975814 () Bool)

(assert (=> b!7311803 m!7975814))

(check-sat (not b_lambda!282123) (not setNonEmpty!53913) (not b!7311805) b_and!351247 (not b!7311804) tp_is_empty!47363 (not b!7311803) (not tb!262175) (not b!7311806) (not b!7311801) tp_is_empty!47361 (not b_next!134727))
(check-sat b_and!351247 (not b_next!134727))
(get-model)

(declare-fun b_lambda!282129 () Bool)

(assert (= b_lambda!282123 (or (and start!712190 b_free!133937) b_lambda!282129)))

(check-sat (not b!7311805) b_and!351247 (not b!7311804) tp_is_empty!47363 (not b!7311803) (not tb!262175) (not b!7311806) (not b!7311801) (not setNonEmpty!53913) (not b_lambda!282129) tp_is_empty!47361 (not b_next!134727))
(check-sat b_and!351247 (not b_next!134727))
(get-model)

(declare-fun d!2270008 () Bool)

(assert (=> d!2270008 true))

(assert (=> d!2270008 true))

(declare-fun order!29077 () Int)

(declare-fun lambda!451624 () Int)

(declare-fun order!29079 () Int)

(declare-fun dynLambda!29066 (Int Int) Int)

(declare-fun dynLambda!29067 (Int Int) Int)

(assert (=> d!2270008 (< (dynLambda!29066 order!29077 f!903) (dynLambda!29067 order!29079 lambda!451624))))

(declare-fun exists!4510 ((InoxSet A!783) Int) Bool)

(assert (=> d!2270008 (= (select (flatMap!3004 s!1445 f!903) (h!77468 lRes!24)) (exists!4510 s!1445 lambda!451624))))

(declare-fun lt!2600703 () A!783)

(declare-fun choose!56635 ((InoxSet A!783) Int B!3485) A!783)

(assert (=> d!2270008 (= lt!2600703 (choose!56635 s!1445 f!903 (h!77468 lRes!24)))))

(assert (=> d!2270008 (= (flatMapPost!92 s!1445 f!903 (h!77468 lRes!24)) lt!2600703)))

(declare-fun bs!1914513 () Bool)

(assert (= bs!1914513 d!2270008))

(assert (=> bs!1914513 m!7975804))

(declare-fun m!7975868 () Bool)

(assert (=> bs!1914513 m!7975868))

(declare-fun m!7975870 () Bool)

(assert (=> bs!1914513 m!7975870))

(declare-fun m!7975872 () Bool)

(assert (=> bs!1914513 m!7975872))

(assert (=> b!7311801 d!2270008))

(declare-fun d!2270020 () Bool)

(declare-fun res!2953918 () Bool)

(declare-fun e!4376543 () Bool)

(assert (=> d!2270020 (=> res!2953918 e!4376543)))

(assert (=> d!2270020 (= res!2953918 ((_ is Nil!71020) (t!385284 lRes!24)))))

(assert (=> d!2270020 (= (forall!17728 (t!385284 lRes!24) lambda!451615) e!4376543)))

(declare-fun b!7311886 () Bool)

(declare-fun e!4376544 () Bool)

(assert (=> b!7311886 (= e!4376543 e!4376544)))

(declare-fun res!2953919 () Bool)

(assert (=> b!7311886 (=> (not res!2953919) (not e!4376544))))

(declare-fun dynLambda!29068 (Int B!3485) Bool)

(assert (=> b!7311886 (= res!2953919 (dynLambda!29068 lambda!451615 (h!77468 (t!385284 lRes!24))))))

(declare-fun b!7311887 () Bool)

(assert (=> b!7311887 (= e!4376544 (forall!17728 (t!385284 (t!385284 lRes!24)) lambda!451615))))

(assert (= (and d!2270020 (not res!2953918)) b!7311886))

(assert (= (and b!7311886 res!2953919) b!7311887))

(declare-fun b_lambda!282133 () Bool)

(assert (=> (not b_lambda!282133) (not b!7311886)))

(declare-fun m!7975882 () Bool)

(assert (=> b!7311886 m!7975882))

(declare-fun m!7975884 () Bool)

(assert (=> b!7311887 m!7975884))

(assert (=> b!7311806 d!2270020))

(declare-fun d!2270024 () Bool)

(declare-fun res!2953929 () Bool)

(declare-fun e!4376553 () Bool)

(assert (=> d!2270024 (=> res!2953929 e!4376553)))

(assert (=> d!2270024 (= res!2953929 ((_ is Nil!71020) lRes!24))))

(assert (=> d!2270024 (= (subseq!803 lRes!24 lt!2600676) e!4376553)))

(declare-fun b!7311899 () Bool)

(declare-fun e!4376556 () Bool)

(assert (=> b!7311899 (= e!4376556 (subseq!803 lRes!24 (t!385284 lt!2600676)))))

(declare-fun b!7311897 () Bool)

(declare-fun e!4376554 () Bool)

(assert (=> b!7311897 (= e!4376554 e!4376556)))

(declare-fun res!2953928 () Bool)

(assert (=> b!7311897 (=> res!2953928 e!4376556)))

(declare-fun e!4376555 () Bool)

(assert (=> b!7311897 (= res!2953928 e!4376555)))

(declare-fun res!2953930 () Bool)

(assert (=> b!7311897 (=> (not res!2953930) (not e!4376555))))

(assert (=> b!7311897 (= res!2953930 (= (h!77468 lRes!24) (h!77468 lt!2600676)))))

(declare-fun b!7311896 () Bool)

(assert (=> b!7311896 (= e!4376553 e!4376554)))

(declare-fun res!2953931 () Bool)

(assert (=> b!7311896 (=> (not res!2953931) (not e!4376554))))

(assert (=> b!7311896 (= res!2953931 ((_ is Cons!71020) lt!2600676))))

(declare-fun b!7311898 () Bool)

(assert (=> b!7311898 (= e!4376555 (subseq!803 (t!385284 lRes!24) (t!385284 lt!2600676)))))

(assert (= (and d!2270024 (not res!2953929)) b!7311896))

(assert (= (and b!7311896 res!2953931) b!7311897))

(assert (= (and b!7311897 res!2953930) b!7311898))

(assert (= (and b!7311897 (not res!2953928)) b!7311899))

(declare-fun m!7975886 () Bool)

(assert (=> b!7311899 m!7975886))

(declare-fun m!7975888 () Bool)

(assert (=> b!7311898 m!7975888))

(assert (=> b!7311803 d!2270024))

(declare-fun d!2270026 () Bool)

(declare-fun e!4376559 () Bool)

(assert (=> d!2270026 e!4376559))

(declare-fun res!2953934 () Bool)

(assert (=> d!2270026 (=> (not res!2953934) (not e!4376559))))

(declare-fun lt!2600707 () List!71144)

(declare-fun noDuplicate!3031 (List!71144) Bool)

(assert (=> d!2270026 (= res!2953934 (noDuplicate!3031 lt!2600707))))

(declare-fun choose!56636 ((InoxSet B!3485)) List!71144)

(assert (=> d!2270026 (= lt!2600707 (choose!56636 (dynLambda!29062 f!903 elmt!124)))))

(assert (=> d!2270026 (= (toList!11553 (dynLambda!29062 f!903 elmt!124)) lt!2600707)))

(declare-fun b!7311902 () Bool)

(declare-fun content!14850 (List!71144) (InoxSet B!3485))

(assert (=> b!7311902 (= e!4376559 (= (content!14850 lt!2600707) (dynLambda!29062 f!903 elmt!124)))))

(assert (= (and d!2270026 res!2953934) b!7311902))

(declare-fun m!7975890 () Bool)

(assert (=> d!2270026 m!7975890))

(assert (=> d!2270026 m!7975812))

(declare-fun m!7975892 () Bool)

(assert (=> d!2270026 m!7975892))

(declare-fun m!7975894 () Bool)

(assert (=> b!7311902 m!7975894))

(assert (=> b!7311803 d!2270026))

(declare-fun d!2270028 () Bool)

(declare-fun lt!2600710 () Bool)

(assert (=> d!2270028 (= lt!2600710 (select (content!14850 lt!2600676) (h!77468 lRes!24)))))

(declare-fun e!4376565 () Bool)

(assert (=> d!2270028 (= lt!2600710 e!4376565)))

(declare-fun res!2953939 () Bool)

(assert (=> d!2270028 (=> (not res!2953939) (not e!4376565))))

(assert (=> d!2270028 (= res!2953939 ((_ is Cons!71020) lt!2600676))))

(assert (=> d!2270028 (= (contains!20763 lt!2600676 (h!77468 lRes!24)) lt!2600710)))

(declare-fun b!7311907 () Bool)

(declare-fun e!4376564 () Bool)

(assert (=> b!7311907 (= e!4376565 e!4376564)))

(declare-fun res!2953940 () Bool)

(assert (=> b!7311907 (=> res!2953940 e!4376564)))

(assert (=> b!7311907 (= res!2953940 (= (h!77468 lt!2600676) (h!77468 lRes!24)))))

(declare-fun b!7311908 () Bool)

(assert (=> b!7311908 (= e!4376564 (contains!20763 (t!385284 lt!2600676) (h!77468 lRes!24)))))

(assert (= (and d!2270028 res!2953939) b!7311907))

(assert (= (and b!7311907 (not res!2953940)) b!7311908))

(declare-fun m!7975896 () Bool)

(assert (=> d!2270028 m!7975896))

(declare-fun m!7975898 () Bool)

(assert (=> d!2270028 m!7975898))

(declare-fun m!7975900 () Bool)

(assert (=> b!7311908 m!7975900))

(assert (=> b!7311804 d!2270028))

(declare-fun d!2270030 () Bool)

(declare-fun lt!2600711 () Bool)

(assert (=> d!2270030 (= lt!2600711 (select (content!14850 lt!2600674) (h!77468 lRes!24)))))

(declare-fun e!4376567 () Bool)

(assert (=> d!2270030 (= lt!2600711 e!4376567)))

(declare-fun res!2953941 () Bool)

(assert (=> d!2270030 (=> (not res!2953941) (not e!4376567))))

(assert (=> d!2270030 (= res!2953941 ((_ is Cons!71020) lt!2600674))))

(assert (=> d!2270030 (= (contains!20763 lt!2600674 (h!77468 lRes!24)) lt!2600711)))

(declare-fun b!7311909 () Bool)

(declare-fun e!4376566 () Bool)

(assert (=> b!7311909 (= e!4376567 e!4376566)))

(declare-fun res!2953942 () Bool)

(assert (=> b!7311909 (=> res!2953942 e!4376566)))

(assert (=> b!7311909 (= res!2953942 (= (h!77468 lt!2600674) (h!77468 lRes!24)))))

(declare-fun b!7311910 () Bool)

(assert (=> b!7311910 (= e!4376566 (contains!20763 (t!385284 lt!2600674) (h!77468 lRes!24)))))

(assert (= (and d!2270030 res!2953941) b!7311909))

(assert (= (and b!7311909 (not res!2953942)) b!7311910))

(declare-fun m!7975902 () Bool)

(assert (=> d!2270030 m!7975902))

(declare-fun m!7975904 () Bool)

(assert (=> d!2270030 m!7975904))

(declare-fun m!7975906 () Bool)

(assert (=> b!7311910 m!7975906))

(assert (=> b!7311804 d!2270030))

(declare-fun d!2270032 () Bool)

(declare-fun tail!14625 (List!71144) List!71144)

(assert (=> d!2270032 (subseq!803 (tail!14625 lRes!24) lt!2600676)))

(declare-fun lt!2600714 () Unit!164460)

(declare-fun e!4376576 () Unit!164460)

(assert (=> d!2270032 (= lt!2600714 e!4376576)))

(declare-fun c!1357583 () Bool)

(assert (=> d!2270032 (= c!1357583 (and ((_ is Cons!71020) lRes!24) ((_ is Cons!71020) lt!2600676)))))

(declare-fun e!4376578 () Bool)

(assert (=> d!2270032 e!4376578))

(declare-fun res!2953945 () Bool)

(assert (=> d!2270032 (=> (not res!2953945) (not e!4376578))))

(declare-fun isEmpty!40844 (List!71144) Bool)

(assert (=> d!2270032 (= res!2953945 (not (isEmpty!40844 lRes!24)))))

(assert (=> d!2270032 (= (subseqTail!54 lRes!24 lt!2600676) lt!2600714)))

(declare-fun bm!665716 () Bool)

(declare-fun c!1357582 () Bool)

(declare-fun call!665721 () Unit!164460)

(assert (=> bm!665716 (= call!665721 (subseqTail!54 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 lt!2600676)))))

(declare-fun b!7311925 () Bool)

(declare-fun e!4376577 () Unit!164460)

(assert (=> b!7311925 (= e!4376577 call!665721)))

(declare-fun b!7311926 () Bool)

(declare-fun c!1357584 () Bool)

(assert (=> b!7311926 (= c!1357584 (not (isEmpty!40844 (t!385284 lRes!24))))))

(declare-fun e!4376579 () Unit!164460)

(assert (=> b!7311926 (= e!4376579 e!4376577)))

(declare-fun b!7311927 () Bool)

(declare-fun Unit!164464 () Unit!164460)

(assert (=> b!7311927 (= e!4376577 Unit!164464)))

(declare-fun b!7311928 () Bool)

(assert (=> b!7311928 (= e!4376578 (subseq!803 lRes!24 lt!2600676))))

(declare-fun b!7311929 () Bool)

(assert (=> b!7311929 (= e!4376576 e!4376579)))

(assert (=> b!7311929 (= c!1357582 (subseq!803 lRes!24 (t!385284 lt!2600676)))))

(declare-fun b!7311930 () Bool)

(assert (=> b!7311930 (= e!4376579 call!665721)))

(declare-fun b!7311931 () Bool)

(declare-fun Unit!164465 () Unit!164460)

(assert (=> b!7311931 (= e!4376576 Unit!164465)))

(assert (= (and d!2270032 res!2953945) b!7311928))

(assert (= (and d!2270032 c!1357583) b!7311929))

(assert (= (and d!2270032 (not c!1357583)) b!7311931))

(assert (= (and b!7311929 c!1357582) b!7311930))

(assert (= (and b!7311929 (not c!1357582)) b!7311926))

(assert (= (and b!7311926 c!1357584) b!7311925))

(assert (= (and b!7311926 (not c!1357584)) b!7311927))

(assert (= (or b!7311930 b!7311925) bm!665716))

(declare-fun m!7975908 () Bool)

(assert (=> b!7311926 m!7975908))

(declare-fun m!7975910 () Bool)

(assert (=> bm!665716 m!7975910))

(assert (=> b!7311928 m!7975810))

(assert (=> b!7311929 m!7975886))

(declare-fun m!7975912 () Bool)

(assert (=> d!2270032 m!7975912))

(assert (=> d!2270032 m!7975912))

(declare-fun m!7975914 () Bool)

(assert (=> d!2270032 m!7975914))

(declare-fun m!7975916 () Bool)

(assert (=> d!2270032 m!7975916))

(assert (=> b!7311804 d!2270032))

(assert (=> b!7311804 d!2270020))

(declare-fun d!2270034 () Bool)

(declare-fun e!4376580 () Bool)

(assert (=> d!2270034 e!4376580))

(declare-fun res!2953946 () Bool)

(assert (=> d!2270034 (=> (not res!2953946) (not e!4376580))))

(declare-fun lt!2600715 () List!71144)

(assert (=> d!2270034 (= res!2953946 (noDuplicate!3031 lt!2600715))))

(assert (=> d!2270034 (= lt!2600715 (choose!56636 (flatMap!3004 s!1445 f!903)))))

(assert (=> d!2270034 (= (toList!11553 (flatMap!3004 s!1445 f!903)) lt!2600715)))

(declare-fun b!7311932 () Bool)

(assert (=> b!7311932 (= e!4376580 (= (content!14850 lt!2600715) (flatMap!3004 s!1445 f!903)))))

(assert (= (and d!2270034 res!2953946) b!7311932))

(declare-fun m!7975918 () Bool)

(assert (=> d!2270034 m!7975918))

(assert (=> d!2270034 m!7975804))

(declare-fun m!7975920 () Bool)

(assert (=> d!2270034 m!7975920))

(declare-fun m!7975922 () Bool)

(assert (=> b!7311932 m!7975922))

(assert (=> b!7311804 d!2270034))

(declare-fun d!2270036 () Bool)

(assert (=> d!2270036 (contains!20763 lt!2600676 (h!77468 lRes!24))))

(declare-fun lt!2600718 () Unit!164460)

(declare-fun choose!56638 (List!71144 List!71144 B!3485) Unit!164460)

(assert (=> d!2270036 (= lt!2600718 (choose!56638 lRes!24 lt!2600676 (h!77468 lRes!24)))))

(declare-fun e!4376583 () Bool)

(assert (=> d!2270036 e!4376583))

(declare-fun res!2953949 () Bool)

(assert (=> d!2270036 (=> (not res!2953949) (not e!4376583))))

(assert (=> d!2270036 (= res!2953949 (subseq!803 lRes!24 lt!2600676))))

(assert (=> d!2270036 (= (subseqContains!30 lRes!24 lt!2600676 (h!77468 lRes!24)) lt!2600718)))

(declare-fun b!7311935 () Bool)

(assert (=> b!7311935 (= e!4376583 (contains!20763 lRes!24 (h!77468 lRes!24)))))

(assert (= (and d!2270036 res!2953949) b!7311935))

(assert (=> d!2270036 m!7975802))

(declare-fun m!7975924 () Bool)

(assert (=> d!2270036 m!7975924))

(assert (=> d!2270036 m!7975810))

(declare-fun m!7975926 () Bool)

(assert (=> b!7311935 m!7975926))

(assert (=> b!7311804 d!2270036))

(declare-fun bs!1914515 () Bool)

(declare-fun d!2270038 () Bool)

(assert (= bs!1914515 (and d!2270038 b!7311804)))

(declare-fun lambda!451627 () Int)

(declare-fun lt!2600724 () List!71144)

(assert (=> bs!1914515 (= (= lt!2600724 lt!2600674) (= lambda!451627 lambda!451615))))

(assert (=> d!2270038 true))

(assert (=> d!2270038 (forall!17728 (t!385284 lRes!24) lambda!451627)))

(assert (=> d!2270038 (= lt!2600724 (toList!11553 (flatMap!3004 s!1445 f!903)))))

(declare-fun lt!2600723 () Unit!164460)

(declare-fun choose!56639 ((InoxSet A!783) A!783 Int List!71144) Unit!164460)

(assert (=> d!2270038 (= lt!2600723 (choose!56639 s!1445 elmt!124 f!903 (t!385284 lRes!24)))))

(assert (=> d!2270038 (= s!1445 (store ((as const (Array A!783 Bool)) false) elmt!124 true))))

(assert (=> d!2270038 (= (lemmaFlatMapOnSingletonSetList2!14 s!1445 elmt!124 f!903 (t!385284 lRes!24)) lt!2600723)))

(declare-fun bs!1914516 () Bool)

(assert (= bs!1914516 d!2270038))

(assert (=> bs!1914516 m!7975804))

(assert (=> bs!1914516 m!7975806))

(assert (=> bs!1914516 m!7975804))

(assert (=> bs!1914516 m!7975790))

(declare-fun m!7975928 () Bool)

(assert (=> bs!1914516 m!7975928))

(declare-fun m!7975930 () Bool)

(assert (=> bs!1914516 m!7975930))

(assert (=> b!7311804 d!2270038))

(declare-fun d!2270040 () Bool)

(declare-fun choose!56640 ((InoxSet A!783) Int) (InoxSet B!3485))

(assert (=> d!2270040 (= (flatMap!3004 s!1445 f!903) (choose!56640 s!1445 f!903))))

(declare-fun bs!1914517 () Bool)

(assert (= bs!1914517 d!2270040))

(declare-fun m!7975932 () Bool)

(assert (=> bs!1914517 m!7975932))

(assert (=> b!7311804 d!2270040))

(declare-fun b!7311940 () Bool)

(declare-fun e!4376586 () Bool)

(declare-fun tp!2075251 () Bool)

(assert (=> b!7311940 (= e!4376586 (and tp_is_empty!47363 tp!2075251))))

(assert (=> b!7311805 (= tp!2075239 e!4376586)))

(assert (= (and b!7311805 ((_ is Cons!71020) (t!385284 lRes!24))) b!7311940))

(declare-fun condSetEmpty!53922 () Bool)

(assert (=> setNonEmpty!53913 (= condSetEmpty!53922 (= setRest!53913 ((as const (Array A!783 Bool)) false)))))

(declare-fun setRes!53922 () Bool)

(assert (=> setNonEmpty!53913 (= tp!2075238 setRes!53922)))

(declare-fun setIsEmpty!53922 () Bool)

(assert (=> setIsEmpty!53922 setRes!53922))

(declare-fun setNonEmpty!53922 () Bool)

(declare-fun tp!2075254 () Bool)

(assert (=> setNonEmpty!53922 (= setRes!53922 (and tp!2075254 tp_is_empty!47361))))

(declare-fun setElem!53922 () A!783)

(declare-fun setRest!53922 () (InoxSet A!783))

(assert (=> setNonEmpty!53922 (= setRest!53913 ((_ map or) (store ((as const (Array A!783 Bool)) false) setElem!53922 true) setRest!53922))))

(assert (= (and setNonEmpty!53913 condSetEmpty!53922) setIsEmpty!53922))

(assert (= (and setNonEmpty!53913 (not condSetEmpty!53922)) setNonEmpty!53922))

(declare-fun condSetEmpty!53925 () Bool)

(assert (=> tb!262175 (= condSetEmpty!53925 (= (dynLambda!29062 f!903 elmt!124) ((as const (Array B!3485 Bool)) false)))))

(declare-fun setRes!53925 () Bool)

(assert (=> tb!262175 (= result!352762 setRes!53925)))

(declare-fun setIsEmpty!53925 () Bool)

(assert (=> setIsEmpty!53925 setRes!53925))

(declare-fun setNonEmpty!53925 () Bool)

(declare-fun tp!2075257 () Bool)

(assert (=> setNonEmpty!53925 (= setRes!53925 (and tp!2075257 tp_is_empty!47363))))

(declare-fun setRest!53925 () (InoxSet B!3485))

(declare-fun setElem!53925 () B!3485)

(assert (=> setNonEmpty!53925 (= (dynLambda!29062 f!903 elmt!124) ((_ map or) (store ((as const (Array B!3485 Bool)) false) setElem!53925 true) setRest!53925))))

(assert (= (and tb!262175 condSetEmpty!53925) setIsEmpty!53925))

(assert (= (and tb!262175 (not condSetEmpty!53925)) setNonEmpty!53925))

(declare-fun b_lambda!282135 () Bool)

(assert (= b_lambda!282133 (or b!7311804 b_lambda!282135)))

(declare-fun bs!1914518 () Bool)

(declare-fun d!2270042 () Bool)

(assert (= bs!1914518 (and d!2270042 b!7311804)))

(assert (=> bs!1914518 (= (dynLambda!29068 lambda!451615 (h!77468 (t!385284 lRes!24))) (contains!20763 lt!2600674 (h!77468 (t!385284 lRes!24))))))

(declare-fun m!7975934 () Bool)

(assert (=> bs!1914518 m!7975934))

(assert (=> b!7311886 d!2270042))

(check-sat (not d!2270036) (not b!7311887) (not d!2270028) (not bm!665716) (not d!2270040) (not bs!1914518) b_and!351247 (not b!7311902) (not d!2270034) (not d!2270032) (not b!7311899) (not d!2270008) (not b_lambda!282129) (not d!2270026) (not b!7311910) (not b!7311935) (not b!7311940) (not b!7311929) tp_is_empty!47363 (not b!7311898) (not b_lambda!282135) (not d!2270030) (not b!7311932) tp_is_empty!47361 (not b_next!134727) (not setNonEmpty!53925) (not b!7311928) (not b!7311908) (not d!2270038) (not setNonEmpty!53922) (not b!7311926))
(check-sat b_and!351247 (not b_next!134727))
(get-model)

(declare-fun d!2270100 () Bool)

(declare-fun res!2953998 () Bool)

(declare-fun e!4376642 () Bool)

(assert (=> d!2270100 (=> res!2953998 e!4376642)))

(assert (=> d!2270100 (= res!2953998 ((_ is Nil!71020) lt!2600715))))

(assert (=> d!2270100 (= (noDuplicate!3031 lt!2600715) e!4376642)))

(declare-fun b!7312010 () Bool)

(declare-fun e!4376643 () Bool)

(assert (=> b!7312010 (= e!4376642 e!4376643)))

(declare-fun res!2953999 () Bool)

(assert (=> b!7312010 (=> (not res!2953999) (not e!4376643))))

(assert (=> b!7312010 (= res!2953999 (not (contains!20763 (t!385284 lt!2600715) (h!77468 lt!2600715))))))

(declare-fun b!7312011 () Bool)

(assert (=> b!7312011 (= e!4376643 (noDuplicate!3031 (t!385284 lt!2600715)))))

(assert (= (and d!2270100 (not res!2953998)) b!7312010))

(assert (= (and b!7312010 res!2953999) b!7312011))

(declare-fun m!7976032 () Bool)

(assert (=> b!7312010 m!7976032))

(declare-fun m!7976034 () Bool)

(assert (=> b!7312011 m!7976034))

(assert (=> d!2270034 d!2270100))

(declare-fun d!2270102 () Bool)

(declare-fun e!4376648 () Bool)

(assert (=> d!2270102 e!4376648))

(declare-fun res!2954005 () Bool)

(assert (=> d!2270102 (=> (not res!2954005) (not e!4376648))))

(declare-fun res!2954004 () List!71144)

(assert (=> d!2270102 (= res!2954005 (noDuplicate!3031 res!2954004))))

(declare-fun e!4376649 () Bool)

(assert (=> d!2270102 e!4376649))

(assert (=> d!2270102 (= (choose!56636 (flatMap!3004 s!1445 f!903)) res!2954004)))

(declare-fun b!7312016 () Bool)

(declare-fun tp!2075270 () Bool)

(assert (=> b!7312016 (= e!4376649 (and tp_is_empty!47363 tp!2075270))))

(declare-fun b!7312017 () Bool)

(assert (=> b!7312017 (= e!4376648 (= (content!14850 res!2954004) (flatMap!3004 s!1445 f!903)))))

(assert (= (and d!2270102 ((_ is Cons!71020) res!2954004)) b!7312016))

(assert (= (and d!2270102 res!2954005) b!7312017))

(declare-fun m!7976036 () Bool)

(assert (=> d!2270102 m!7976036))

(declare-fun m!7976038 () Bool)

(assert (=> b!7312017 m!7976038))

(assert (=> d!2270034 d!2270102))

(declare-fun d!2270104 () Bool)

(declare-fun c!1357596 () Bool)

(assert (=> d!2270104 (= c!1357596 ((_ is Nil!71020) lt!2600674))))

(declare-fun e!4376652 () (InoxSet B!3485))

(assert (=> d!2270104 (= (content!14850 lt!2600674) e!4376652)))

(declare-fun b!7312022 () Bool)

(assert (=> b!7312022 (= e!4376652 ((as const (Array B!3485 Bool)) false))))

(declare-fun b!7312023 () Bool)

(assert (=> b!7312023 (= e!4376652 ((_ map or) (store ((as const (Array B!3485 Bool)) false) (h!77468 lt!2600674) true) (content!14850 (t!385284 lt!2600674))))))

(assert (= (and d!2270104 c!1357596) b!7312022))

(assert (= (and d!2270104 (not c!1357596)) b!7312023))

(declare-fun m!7976040 () Bool)

(assert (=> b!7312023 m!7976040))

(declare-fun m!7976042 () Bool)

(assert (=> b!7312023 m!7976042))

(assert (=> d!2270030 d!2270104))

(assert (=> d!2270036 d!2270028))

(declare-fun d!2270106 () Bool)

(assert (=> d!2270106 (contains!20763 lt!2600676 (h!77468 lRes!24))))

(assert (=> d!2270106 true))

(declare-fun _$10!239 () Unit!164460)

(assert (=> d!2270106 (= (choose!56638 lRes!24 lt!2600676 (h!77468 lRes!24)) _$10!239)))

(declare-fun bs!1914528 () Bool)

(assert (= bs!1914528 d!2270106))

(assert (=> bs!1914528 m!7975802))

(assert (=> d!2270036 d!2270106))

(assert (=> d!2270036 d!2270024))

(declare-fun d!2270108 () Bool)

(declare-fun lt!2600736 () Bool)

(assert (=> d!2270108 (= lt!2600736 (select (content!14850 (t!385284 lt!2600674)) (h!77468 lRes!24)))))

(declare-fun e!4376654 () Bool)

(assert (=> d!2270108 (= lt!2600736 e!4376654)))

(declare-fun res!2954006 () Bool)

(assert (=> d!2270108 (=> (not res!2954006) (not e!4376654))))

(assert (=> d!2270108 (= res!2954006 ((_ is Cons!71020) (t!385284 lt!2600674)))))

(assert (=> d!2270108 (= (contains!20763 (t!385284 lt!2600674) (h!77468 lRes!24)) lt!2600736)))

(declare-fun b!7312024 () Bool)

(declare-fun e!4376653 () Bool)

(assert (=> b!7312024 (= e!4376654 e!4376653)))

(declare-fun res!2954007 () Bool)

(assert (=> b!7312024 (=> res!2954007 e!4376653)))

(assert (=> b!7312024 (= res!2954007 (= (h!77468 (t!385284 lt!2600674)) (h!77468 lRes!24)))))

(declare-fun b!7312025 () Bool)

(assert (=> b!7312025 (= e!4376653 (contains!20763 (t!385284 (t!385284 lt!2600674)) (h!77468 lRes!24)))))

(assert (= (and d!2270108 res!2954006) b!7312024))

(assert (= (and b!7312024 (not res!2954007)) b!7312025))

(assert (=> d!2270108 m!7976042))

(declare-fun m!7976044 () Bool)

(assert (=> d!2270108 m!7976044))

(declare-fun m!7976046 () Bool)

(assert (=> b!7312025 m!7976046))

(assert (=> b!7311910 d!2270108))

(declare-fun d!2270110 () Bool)

(declare-fun res!2954009 () Bool)

(declare-fun e!4376655 () Bool)

(assert (=> d!2270110 (=> res!2954009 e!4376655)))

(assert (=> d!2270110 (= res!2954009 ((_ is Nil!71020) lRes!24))))

(assert (=> d!2270110 (= (subseq!803 lRes!24 (t!385284 lt!2600676)) e!4376655)))

(declare-fun b!7312029 () Bool)

(declare-fun e!4376658 () Bool)

(assert (=> b!7312029 (= e!4376658 (subseq!803 lRes!24 (t!385284 (t!385284 lt!2600676))))))

(declare-fun b!7312027 () Bool)

(declare-fun e!4376656 () Bool)

(assert (=> b!7312027 (= e!4376656 e!4376658)))

(declare-fun res!2954008 () Bool)

(assert (=> b!7312027 (=> res!2954008 e!4376658)))

(declare-fun e!4376657 () Bool)

(assert (=> b!7312027 (= res!2954008 e!4376657)))

(declare-fun res!2954010 () Bool)

(assert (=> b!7312027 (=> (not res!2954010) (not e!4376657))))

(assert (=> b!7312027 (= res!2954010 (= (h!77468 lRes!24) (h!77468 (t!385284 lt!2600676))))))

(declare-fun b!7312026 () Bool)

(assert (=> b!7312026 (= e!4376655 e!4376656)))

(declare-fun res!2954011 () Bool)

(assert (=> b!7312026 (=> (not res!2954011) (not e!4376656))))

(assert (=> b!7312026 (= res!2954011 ((_ is Cons!71020) (t!385284 lt!2600676)))))

(declare-fun b!7312028 () Bool)

(assert (=> b!7312028 (= e!4376657 (subseq!803 (t!385284 lRes!24) (t!385284 (t!385284 lt!2600676))))))

(assert (= (and d!2270110 (not res!2954009)) b!7312026))

(assert (= (and b!7312026 res!2954011) b!7312027))

(assert (= (and b!7312027 res!2954010) b!7312028))

(assert (= (and b!7312027 (not res!2954008)) b!7312029))

(declare-fun m!7976048 () Bool)

(assert (=> b!7312029 m!7976048))

(declare-fun m!7976050 () Bool)

(assert (=> b!7312028 m!7976050))

(assert (=> b!7311929 d!2270110))

(declare-fun d!2270112 () Bool)

(declare-fun lt!2600737 () Bool)

(assert (=> d!2270112 (= lt!2600737 (select (content!14850 lRes!24) (h!77468 lRes!24)))))

(declare-fun e!4376660 () Bool)

(assert (=> d!2270112 (= lt!2600737 e!4376660)))

(declare-fun res!2954012 () Bool)

(assert (=> d!2270112 (=> (not res!2954012) (not e!4376660))))

(assert (=> d!2270112 (= res!2954012 ((_ is Cons!71020) lRes!24))))

(assert (=> d!2270112 (= (contains!20763 lRes!24 (h!77468 lRes!24)) lt!2600737)))

(declare-fun b!7312030 () Bool)

(declare-fun e!4376659 () Bool)

(assert (=> b!7312030 (= e!4376660 e!4376659)))

(declare-fun res!2954013 () Bool)

(assert (=> b!7312030 (=> res!2954013 e!4376659)))

(assert (=> b!7312030 (= res!2954013 (= (h!77468 lRes!24) (h!77468 lRes!24)))))

(declare-fun b!7312031 () Bool)

(assert (=> b!7312031 (= e!4376659 (contains!20763 (t!385284 lRes!24) (h!77468 lRes!24)))))

(assert (= (and d!2270112 res!2954012) b!7312030))

(assert (= (and b!7312030 (not res!2954013)) b!7312031))

(declare-fun m!7976052 () Bool)

(assert (=> d!2270112 m!7976052))

(declare-fun m!7976054 () Bool)

(assert (=> d!2270112 m!7976054))

(declare-fun m!7976056 () Bool)

(assert (=> b!7312031 m!7976056))

(assert (=> b!7311935 d!2270112))

(declare-fun d!2270114 () Bool)

(assert (=> d!2270114 true))

(declare-fun setRes!53933 () Bool)

(assert (=> d!2270114 setRes!53933))

(declare-fun condSetEmpty!53933 () Bool)

(declare-fun res!2954016 () (InoxSet B!3485))

(assert (=> d!2270114 (= condSetEmpty!53933 (= res!2954016 ((as const (Array B!3485 Bool)) false)))))

(assert (=> d!2270114 (= (choose!56640 s!1445 f!903) res!2954016)))

(declare-fun setIsEmpty!53933 () Bool)

(assert (=> setIsEmpty!53933 setRes!53933))

(declare-fun setNonEmpty!53933 () Bool)

(declare-fun tp!2075273 () Bool)

(assert (=> setNonEmpty!53933 (= setRes!53933 (and tp!2075273 tp_is_empty!47363))))

(declare-fun setElem!53933 () B!3485)

(declare-fun setRest!53933 () (InoxSet B!3485))

(assert (=> setNonEmpty!53933 (= res!2954016 ((_ map or) (store ((as const (Array B!3485 Bool)) false) setElem!53933 true) setRest!53933))))

(assert (= (and d!2270114 condSetEmpty!53933) setIsEmpty!53933))

(assert (= (and d!2270114 (not condSetEmpty!53933)) setNonEmpty!53933))

(assert (=> d!2270040 d!2270114))

(declare-fun d!2270116 () Bool)

(declare-fun res!2954018 () Bool)

(declare-fun e!4376661 () Bool)

(assert (=> d!2270116 (=> res!2954018 e!4376661)))

(assert (=> d!2270116 (= res!2954018 ((_ is Nil!71020) (tail!14625 lRes!24)))))

(assert (=> d!2270116 (= (subseq!803 (tail!14625 lRes!24) lt!2600676) e!4376661)))

(declare-fun b!7312035 () Bool)

(declare-fun e!4376664 () Bool)

(assert (=> b!7312035 (= e!4376664 (subseq!803 (tail!14625 lRes!24) (t!385284 lt!2600676)))))

(declare-fun b!7312033 () Bool)

(declare-fun e!4376662 () Bool)

(assert (=> b!7312033 (= e!4376662 e!4376664)))

(declare-fun res!2954017 () Bool)

(assert (=> b!7312033 (=> res!2954017 e!4376664)))

(declare-fun e!4376663 () Bool)

(assert (=> b!7312033 (= res!2954017 e!4376663)))

(declare-fun res!2954019 () Bool)

(assert (=> b!7312033 (=> (not res!2954019) (not e!4376663))))

(assert (=> b!7312033 (= res!2954019 (= (h!77468 (tail!14625 lRes!24)) (h!77468 lt!2600676)))))

(declare-fun b!7312032 () Bool)

(assert (=> b!7312032 (= e!4376661 e!4376662)))

(declare-fun res!2954020 () Bool)

(assert (=> b!7312032 (=> (not res!2954020) (not e!4376662))))

(assert (=> b!7312032 (= res!2954020 ((_ is Cons!71020) lt!2600676))))

(declare-fun b!7312034 () Bool)

(assert (=> b!7312034 (= e!4376663 (subseq!803 (t!385284 (tail!14625 lRes!24)) (t!385284 lt!2600676)))))

(assert (= (and d!2270116 (not res!2954018)) b!7312032))

(assert (= (and b!7312032 res!2954020) b!7312033))

(assert (= (and b!7312033 res!2954019) b!7312034))

(assert (= (and b!7312033 (not res!2954017)) b!7312035))

(assert (=> b!7312035 m!7975912))

(declare-fun m!7976058 () Bool)

(assert (=> b!7312035 m!7976058))

(declare-fun m!7976060 () Bool)

(assert (=> b!7312034 m!7976060))

(assert (=> d!2270032 d!2270116))

(declare-fun d!2270118 () Bool)

(assert (=> d!2270118 (= (tail!14625 lRes!24) (t!385284 lRes!24))))

(assert (=> d!2270032 d!2270118))

(declare-fun d!2270120 () Bool)

(assert (=> d!2270120 (= (isEmpty!40844 lRes!24) ((_ is Nil!71020) lRes!24))))

(assert (=> d!2270032 d!2270120))

(declare-fun d!2270122 () Bool)

(declare-fun c!1357597 () Bool)

(assert (=> d!2270122 (= c!1357597 ((_ is Nil!71020) lt!2600676))))

(declare-fun e!4376665 () (InoxSet B!3485))

(assert (=> d!2270122 (= (content!14850 lt!2600676) e!4376665)))

(declare-fun b!7312036 () Bool)

(assert (=> b!7312036 (= e!4376665 ((as const (Array B!3485 Bool)) false))))

(declare-fun b!7312037 () Bool)

(assert (=> b!7312037 (= e!4376665 ((_ map or) (store ((as const (Array B!3485 Bool)) false) (h!77468 lt!2600676) true) (content!14850 (t!385284 lt!2600676))))))

(assert (= (and d!2270122 c!1357597) b!7312036))

(assert (= (and d!2270122 (not c!1357597)) b!7312037))

(declare-fun m!7976062 () Bool)

(assert (=> b!7312037 m!7976062))

(declare-fun m!7976064 () Bool)

(assert (=> b!7312037 m!7976064))

(assert (=> d!2270028 d!2270122))

(declare-fun d!2270124 () Bool)

(declare-fun c!1357598 () Bool)

(assert (=> d!2270124 (= c!1357598 ((_ is Nil!71020) lt!2600707))))

(declare-fun e!4376666 () (InoxSet B!3485))

(assert (=> d!2270124 (= (content!14850 lt!2600707) e!4376666)))

(declare-fun b!7312038 () Bool)

(assert (=> b!7312038 (= e!4376666 ((as const (Array B!3485 Bool)) false))))

(declare-fun b!7312039 () Bool)

(assert (=> b!7312039 (= e!4376666 ((_ map or) (store ((as const (Array B!3485 Bool)) false) (h!77468 lt!2600707) true) (content!14850 (t!385284 lt!2600707))))))

(assert (= (and d!2270124 c!1357598) b!7312038))

(assert (= (and d!2270124 (not c!1357598)) b!7312039))

(declare-fun m!7976066 () Bool)

(assert (=> b!7312039 m!7976066))

(declare-fun m!7976068 () Bool)

(assert (=> b!7312039 m!7976068))

(assert (=> b!7311902 d!2270124))

(assert (=> b!7311899 d!2270110))

(declare-fun d!2270126 () Bool)

(declare-fun res!2954022 () Bool)

(declare-fun e!4376667 () Bool)

(assert (=> d!2270126 (=> res!2954022 e!4376667)))

(assert (=> d!2270126 (= res!2954022 ((_ is Nil!71020) (t!385284 lRes!24)))))

(assert (=> d!2270126 (= (subseq!803 (t!385284 lRes!24) (t!385284 lt!2600676)) e!4376667)))

(declare-fun b!7312043 () Bool)

(declare-fun e!4376670 () Bool)

(assert (=> b!7312043 (= e!4376670 (subseq!803 (t!385284 lRes!24) (t!385284 (t!385284 lt!2600676))))))

(declare-fun b!7312041 () Bool)

(declare-fun e!4376668 () Bool)

(assert (=> b!7312041 (= e!4376668 e!4376670)))

(declare-fun res!2954021 () Bool)

(assert (=> b!7312041 (=> res!2954021 e!4376670)))

(declare-fun e!4376669 () Bool)

(assert (=> b!7312041 (= res!2954021 e!4376669)))

(declare-fun res!2954023 () Bool)

(assert (=> b!7312041 (=> (not res!2954023) (not e!4376669))))

(assert (=> b!7312041 (= res!2954023 (= (h!77468 (t!385284 lRes!24)) (h!77468 (t!385284 lt!2600676))))))

(declare-fun b!7312040 () Bool)

(assert (=> b!7312040 (= e!4376667 e!4376668)))

(declare-fun res!2954024 () Bool)

(assert (=> b!7312040 (=> (not res!2954024) (not e!4376668))))

(assert (=> b!7312040 (= res!2954024 ((_ is Cons!71020) (t!385284 lt!2600676)))))

(declare-fun b!7312042 () Bool)

(assert (=> b!7312042 (= e!4376669 (subseq!803 (t!385284 (t!385284 lRes!24)) (t!385284 (t!385284 lt!2600676))))))

(assert (= (and d!2270126 (not res!2954022)) b!7312040))

(assert (= (and b!7312040 res!2954024) b!7312041))

(assert (= (and b!7312041 res!2954023) b!7312042))

(assert (= (and b!7312041 (not res!2954021)) b!7312043))

(assert (=> b!7312043 m!7976050))

(declare-fun m!7976070 () Bool)

(assert (=> b!7312042 m!7976070))

(assert (=> b!7311898 d!2270126))

(assert (=> b!7311928 d!2270024))

(declare-fun d!2270128 () Bool)

(declare-fun res!2954025 () Bool)

(declare-fun e!4376671 () Bool)

(assert (=> d!2270128 (=> res!2954025 e!4376671)))

(assert (=> d!2270128 (= res!2954025 ((_ is Nil!71020) (t!385284 lRes!24)))))

(assert (=> d!2270128 (= (forall!17728 (t!385284 lRes!24) lambda!451627) e!4376671)))

(declare-fun b!7312044 () Bool)

(declare-fun e!4376672 () Bool)

(assert (=> b!7312044 (= e!4376671 e!4376672)))

(declare-fun res!2954026 () Bool)

(assert (=> b!7312044 (=> (not res!2954026) (not e!4376672))))

(assert (=> b!7312044 (= res!2954026 (dynLambda!29068 lambda!451627 (h!77468 (t!385284 lRes!24))))))

(declare-fun b!7312045 () Bool)

(assert (=> b!7312045 (= e!4376672 (forall!17728 (t!385284 (t!385284 lRes!24)) lambda!451627))))

(assert (= (and d!2270128 (not res!2954025)) b!7312044))

(assert (= (and b!7312044 res!2954026) b!7312045))

(declare-fun b_lambda!282145 () Bool)

(assert (=> (not b_lambda!282145) (not b!7312044)))

(declare-fun m!7976072 () Bool)

(assert (=> b!7312044 m!7976072))

(declare-fun m!7976074 () Bool)

(assert (=> b!7312045 m!7976074))

(assert (=> d!2270038 d!2270128))

(assert (=> d!2270038 d!2270034))

(assert (=> d!2270038 d!2270040))

(declare-fun bs!1914529 () Bool)

(declare-fun d!2270130 () Bool)

(assert (= bs!1914529 (and d!2270130 b!7311804)))

(declare-fun lt!2600740 () List!71144)

(declare-fun lambda!451636 () Int)

(assert (=> bs!1914529 (= (= lt!2600740 lt!2600674) (= lambda!451636 lambda!451615))))

(declare-fun bs!1914530 () Bool)

(assert (= bs!1914530 (and d!2270130 d!2270038)))

(assert (=> bs!1914530 (= (= lt!2600740 lt!2600724) (= lambda!451636 lambda!451627))))

(assert (=> d!2270130 true))

(assert (=> d!2270130 (forall!17728 (t!385284 lRes!24) lambda!451636)))

(assert (=> d!2270130 (= lt!2600740 (toList!11553 (flatMap!3004 s!1445 f!903)))))

(assert (=> d!2270130 true))

(declare-fun _$15!874 () Unit!164460)

(assert (=> d!2270130 (= (choose!56639 s!1445 elmt!124 f!903 (t!385284 lRes!24)) _$15!874)))

(declare-fun bs!1914531 () Bool)

(assert (= bs!1914531 d!2270130))

(declare-fun m!7976076 () Bool)

(assert (=> bs!1914531 m!7976076))

(assert (=> bs!1914531 m!7975804))

(assert (=> bs!1914531 m!7975804))

(assert (=> bs!1914531 m!7975806))

(assert (=> d!2270038 d!2270130))

(declare-fun d!2270132 () Bool)

(declare-fun lt!2600741 () Bool)

(assert (=> d!2270132 (= lt!2600741 (select (content!14850 (t!385284 lt!2600676)) (h!77468 lRes!24)))))

(declare-fun e!4376674 () Bool)

(assert (=> d!2270132 (= lt!2600741 e!4376674)))

(declare-fun res!2954027 () Bool)

(assert (=> d!2270132 (=> (not res!2954027) (not e!4376674))))

(assert (=> d!2270132 (= res!2954027 ((_ is Cons!71020) (t!385284 lt!2600676)))))

(assert (=> d!2270132 (= (contains!20763 (t!385284 lt!2600676) (h!77468 lRes!24)) lt!2600741)))

(declare-fun b!7312046 () Bool)

(declare-fun e!4376673 () Bool)

(assert (=> b!7312046 (= e!4376674 e!4376673)))

(declare-fun res!2954028 () Bool)

(assert (=> b!7312046 (=> res!2954028 e!4376673)))

(assert (=> b!7312046 (= res!2954028 (= (h!77468 (t!385284 lt!2600676)) (h!77468 lRes!24)))))

(declare-fun b!7312047 () Bool)

(assert (=> b!7312047 (= e!4376673 (contains!20763 (t!385284 (t!385284 lt!2600676)) (h!77468 lRes!24)))))

(assert (= (and d!2270132 res!2954027) b!7312046))

(assert (= (and b!7312046 (not res!2954028)) b!7312047))

(assert (=> d!2270132 m!7976064))

(declare-fun m!7976078 () Bool)

(assert (=> d!2270132 m!7976078))

(declare-fun m!7976080 () Bool)

(assert (=> b!7312047 m!7976080))

(assert (=> b!7311908 d!2270132))

(declare-fun d!2270134 () Bool)

(declare-fun res!2954029 () Bool)

(declare-fun e!4376675 () Bool)

(assert (=> d!2270134 (=> res!2954029 e!4376675)))

(assert (=> d!2270134 (= res!2954029 ((_ is Nil!71020) lt!2600707))))

(assert (=> d!2270134 (= (noDuplicate!3031 lt!2600707) e!4376675)))

(declare-fun b!7312048 () Bool)

(declare-fun e!4376676 () Bool)

(assert (=> b!7312048 (= e!4376675 e!4376676)))

(declare-fun res!2954030 () Bool)

(assert (=> b!7312048 (=> (not res!2954030) (not e!4376676))))

(assert (=> b!7312048 (= res!2954030 (not (contains!20763 (t!385284 lt!2600707) (h!77468 lt!2600707))))))

(declare-fun b!7312049 () Bool)

(assert (=> b!7312049 (= e!4376676 (noDuplicate!3031 (t!385284 lt!2600707)))))

(assert (= (and d!2270134 (not res!2954029)) b!7312048))

(assert (= (and b!7312048 res!2954030) b!7312049))

(declare-fun m!7976082 () Bool)

(assert (=> b!7312048 m!7976082))

(declare-fun m!7976084 () Bool)

(assert (=> b!7312049 m!7976084))

(assert (=> d!2270026 d!2270134))

(declare-fun d!2270136 () Bool)

(declare-fun e!4376677 () Bool)

(assert (=> d!2270136 e!4376677))

(declare-fun res!2954032 () Bool)

(assert (=> d!2270136 (=> (not res!2954032) (not e!4376677))))

(declare-fun res!2954031 () List!71144)

(assert (=> d!2270136 (= res!2954032 (noDuplicate!3031 res!2954031))))

(declare-fun e!4376678 () Bool)

(assert (=> d!2270136 e!4376678))

(assert (=> d!2270136 (= (choose!56636 (dynLambda!29062 f!903 elmt!124)) res!2954031)))

(declare-fun b!7312050 () Bool)

(declare-fun tp!2075274 () Bool)

(assert (=> b!7312050 (= e!4376678 (and tp_is_empty!47363 tp!2075274))))

(declare-fun b!7312051 () Bool)

(assert (=> b!7312051 (= e!4376677 (= (content!14850 res!2954031) (dynLambda!29062 f!903 elmt!124)))))

(assert (= (and d!2270136 ((_ is Cons!71020) res!2954031)) b!7312050))

(assert (= (and d!2270136 res!2954032) b!7312051))

(declare-fun m!7976086 () Bool)

(assert (=> d!2270136 m!7976086))

(declare-fun m!7976088 () Bool)

(assert (=> b!7312051 m!7976088))

(assert (=> d!2270026 d!2270136))

(declare-fun d!2270138 () Bool)

(assert (=> d!2270138 (subseq!803 (tail!14625 (ite c!1357582 lRes!24 (t!385284 lRes!24))) (t!385284 lt!2600676))))

(declare-fun lt!2600742 () Unit!164460)

(declare-fun e!4376679 () Unit!164460)

(assert (=> d!2270138 (= lt!2600742 e!4376679)))

(declare-fun c!1357600 () Bool)

(assert (=> d!2270138 (= c!1357600 (and ((_ is Cons!71020) (ite c!1357582 lRes!24 (t!385284 lRes!24))) ((_ is Cons!71020) (t!385284 lt!2600676))))))

(declare-fun e!4376681 () Bool)

(assert (=> d!2270138 e!4376681))

(declare-fun res!2954033 () Bool)

(assert (=> d!2270138 (=> (not res!2954033) (not e!4376681))))

(assert (=> d!2270138 (= res!2954033 (not (isEmpty!40844 (ite c!1357582 lRes!24 (t!385284 lRes!24)))))))

(assert (=> d!2270138 (= (subseqTail!54 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 lt!2600676)) lt!2600742)))

(declare-fun c!1357599 () Bool)

(declare-fun call!665723 () Unit!164460)

(declare-fun bm!665718 () Bool)

(assert (=> bm!665718 (= call!665723 (subseqTail!54 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (t!385284 (t!385284 lt!2600676))))))

(declare-fun b!7312052 () Bool)

(declare-fun e!4376680 () Unit!164460)

(assert (=> b!7312052 (= e!4376680 call!665723)))

(declare-fun b!7312053 () Bool)

(declare-fun c!1357601 () Bool)

(assert (=> b!7312053 (= c!1357601 (not (isEmpty!40844 (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))))))))

(declare-fun e!4376682 () Unit!164460)

(assert (=> b!7312053 (= e!4376682 e!4376680)))

(declare-fun b!7312054 () Bool)

(declare-fun Unit!164470 () Unit!164460)

(assert (=> b!7312054 (= e!4376680 Unit!164470)))

(declare-fun b!7312055 () Bool)

(assert (=> b!7312055 (= e!4376681 (subseq!803 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 lt!2600676)))))

(declare-fun b!7312056 () Bool)

(assert (=> b!7312056 (= e!4376679 e!4376682)))

(assert (=> b!7312056 (= c!1357599 (subseq!803 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (t!385284 lt!2600676))))))

(declare-fun b!7312057 () Bool)

(assert (=> b!7312057 (= e!4376682 call!665723)))

(declare-fun b!7312058 () Bool)

(declare-fun Unit!164471 () Unit!164460)

(assert (=> b!7312058 (= e!4376679 Unit!164471)))

(assert (= (and d!2270138 res!2954033) b!7312055))

(assert (= (and d!2270138 c!1357600) b!7312056))

(assert (= (and d!2270138 (not c!1357600)) b!7312058))

(assert (= (and b!7312056 c!1357599) b!7312057))

(assert (= (and b!7312056 (not c!1357599)) b!7312053))

(assert (= (and b!7312053 c!1357601) b!7312052))

(assert (= (and b!7312053 (not c!1357601)) b!7312054))

(assert (= (or b!7312057 b!7312052) bm!665718))

(declare-fun m!7976090 () Bool)

(assert (=> b!7312053 m!7976090))

(declare-fun m!7976092 () Bool)

(assert (=> bm!665718 m!7976092))

(declare-fun m!7976094 () Bool)

(assert (=> b!7312055 m!7976094))

(declare-fun m!7976096 () Bool)

(assert (=> b!7312056 m!7976096))

(declare-fun m!7976098 () Bool)

(assert (=> d!2270138 m!7976098))

(assert (=> d!2270138 m!7976098))

(declare-fun m!7976100 () Bool)

(assert (=> d!2270138 m!7976100))

(declare-fun m!7976102 () Bool)

(assert (=> d!2270138 m!7976102))

(assert (=> bm!665716 d!2270138))

(declare-fun d!2270140 () Bool)

(declare-fun c!1357602 () Bool)

(assert (=> d!2270140 (= c!1357602 ((_ is Nil!71020) lt!2600715))))

(declare-fun e!4376683 () (InoxSet B!3485))

(assert (=> d!2270140 (= (content!14850 lt!2600715) e!4376683)))

(declare-fun b!7312059 () Bool)

(assert (=> b!7312059 (= e!4376683 ((as const (Array B!3485 Bool)) false))))

(declare-fun b!7312060 () Bool)

(assert (=> b!7312060 (= e!4376683 ((_ map or) (store ((as const (Array B!3485 Bool)) false) (h!77468 lt!2600715) true) (content!14850 (t!385284 lt!2600715))))))

(assert (= (and d!2270140 c!1357602) b!7312059))

(assert (= (and d!2270140 (not c!1357602)) b!7312060))

(declare-fun m!7976104 () Bool)

(assert (=> b!7312060 m!7976104))

(declare-fun m!7976106 () Bool)

(assert (=> b!7312060 m!7976106))

(assert (=> b!7311932 d!2270140))

(assert (=> d!2270008 d!2270040))

(declare-fun d!2270142 () Bool)

(declare-fun lt!2600745 () Bool)

(declare-datatypes ((List!71146 0))(
  ( (Nil!71022) (Cons!71022 (h!77470 A!783) (t!385290 List!71146)) )
))
(declare-fun exists!4512 (List!71146 Int) Bool)

(declare-fun toList!11555 ((InoxSet A!783)) List!71146)

(assert (=> d!2270142 (= lt!2600745 (exists!4512 (toList!11555 s!1445) lambda!451624))))

(declare-fun choose!56641 ((InoxSet A!783) Int) Bool)

(assert (=> d!2270142 (= lt!2600745 (choose!56641 s!1445 lambda!451624))))

(assert (=> d!2270142 (= (exists!4510 s!1445 lambda!451624) lt!2600745)))

(declare-fun bs!1914532 () Bool)

(assert (= bs!1914532 d!2270142))

(declare-fun m!7976108 () Bool)

(assert (=> bs!1914532 m!7976108))

(assert (=> bs!1914532 m!7976108))

(declare-fun m!7976110 () Bool)

(assert (=> bs!1914532 m!7976110))

(declare-fun m!7976112 () Bool)

(assert (=> bs!1914532 m!7976112))

(assert (=> d!2270008 d!2270142))

(declare-fun bs!1914533 () Bool)

(declare-fun d!2270144 () Bool)

(assert (= bs!1914533 (and d!2270144 d!2270008)))

(declare-fun lambda!451639 () Int)

(assert (=> bs!1914533 (= lambda!451639 lambda!451624)))

(assert (=> d!2270144 true))

(assert (=> d!2270144 true))

(assert (=> d!2270144 (< (dynLambda!29066 order!29077 f!903) (dynLambda!29067 order!29079 lambda!451639))))

(assert (=> d!2270144 (= (select (flatMap!3004 s!1445 f!903) (h!77468 lRes!24)) (exists!4510 s!1445 lambda!451639))))

(assert (=> d!2270144 tp_is_empty!47361))

(declare-fun _$3!504 () A!783)

(assert (=> d!2270144 (= (choose!56635 s!1445 f!903 (h!77468 lRes!24)) _$3!504)))

(declare-fun bs!1914534 () Bool)

(assert (= bs!1914534 d!2270144))

(assert (=> bs!1914534 m!7975804))

(assert (=> bs!1914534 m!7975868))

(declare-fun m!7976114 () Bool)

(assert (=> bs!1914534 m!7976114))

(assert (=> d!2270008 d!2270144))

(declare-fun d!2270146 () Bool)

(declare-fun res!2954034 () Bool)

(declare-fun e!4376684 () Bool)

(assert (=> d!2270146 (=> res!2954034 e!4376684)))

(assert (=> d!2270146 (= res!2954034 ((_ is Nil!71020) (t!385284 (t!385284 lRes!24))))))

(assert (=> d!2270146 (= (forall!17728 (t!385284 (t!385284 lRes!24)) lambda!451615) e!4376684)))

(declare-fun b!7312062 () Bool)

(declare-fun e!4376685 () Bool)

(assert (=> b!7312062 (= e!4376684 e!4376685)))

(declare-fun res!2954035 () Bool)

(assert (=> b!7312062 (=> (not res!2954035) (not e!4376685))))

(assert (=> b!7312062 (= res!2954035 (dynLambda!29068 lambda!451615 (h!77468 (t!385284 (t!385284 lRes!24)))))))

(declare-fun b!7312063 () Bool)

(assert (=> b!7312063 (= e!4376685 (forall!17728 (t!385284 (t!385284 (t!385284 lRes!24))) lambda!451615))))

(assert (= (and d!2270146 (not res!2954034)) b!7312062))

(assert (= (and b!7312062 res!2954035) b!7312063))

(declare-fun b_lambda!282147 () Bool)

(assert (=> (not b_lambda!282147) (not b!7312062)))

(declare-fun m!7976116 () Bool)

(assert (=> b!7312062 m!7976116))

(declare-fun m!7976118 () Bool)

(assert (=> b!7312063 m!7976118))

(assert (=> b!7311887 d!2270146))

(declare-fun d!2270148 () Bool)

(assert (=> d!2270148 (= (isEmpty!40844 (t!385284 lRes!24)) ((_ is Nil!71020) (t!385284 lRes!24)))))

(assert (=> b!7311926 d!2270148))

(declare-fun d!2270150 () Bool)

(declare-fun lt!2600746 () Bool)

(assert (=> d!2270150 (= lt!2600746 (select (content!14850 lt!2600674) (h!77468 (t!385284 lRes!24))))))

(declare-fun e!4376687 () Bool)

(assert (=> d!2270150 (= lt!2600746 e!4376687)))

(declare-fun res!2954036 () Bool)

(assert (=> d!2270150 (=> (not res!2954036) (not e!4376687))))

(assert (=> d!2270150 (= res!2954036 ((_ is Cons!71020) lt!2600674))))

(assert (=> d!2270150 (= (contains!20763 lt!2600674 (h!77468 (t!385284 lRes!24))) lt!2600746)))

(declare-fun b!7312064 () Bool)

(declare-fun e!4376686 () Bool)

(assert (=> b!7312064 (= e!4376687 e!4376686)))

(declare-fun res!2954037 () Bool)

(assert (=> b!7312064 (=> res!2954037 e!4376686)))

(assert (=> b!7312064 (= res!2954037 (= (h!77468 lt!2600674) (h!77468 (t!385284 lRes!24))))))

(declare-fun b!7312065 () Bool)

(assert (=> b!7312065 (= e!4376686 (contains!20763 (t!385284 lt!2600674) (h!77468 (t!385284 lRes!24))))))

(assert (= (and d!2270150 res!2954036) b!7312064))

(assert (= (and b!7312064 (not res!2954037)) b!7312065))

(assert (=> d!2270150 m!7975902))

(declare-fun m!7976120 () Bool)

(assert (=> d!2270150 m!7976120))

(declare-fun m!7976122 () Bool)

(assert (=> b!7312065 m!7976122))

(assert (=> bs!1914518 d!2270150))

(declare-fun b!7312066 () Bool)

(declare-fun e!4376688 () Bool)

(declare-fun tp!2075275 () Bool)

(assert (=> b!7312066 (= e!4376688 (and tp_is_empty!47363 tp!2075275))))

(assert (=> b!7311940 (= tp!2075251 e!4376688)))

(assert (= (and b!7311940 ((_ is Cons!71020) (t!385284 (t!385284 lRes!24)))) b!7312066))

(declare-fun condSetEmpty!53934 () Bool)

(assert (=> setNonEmpty!53922 (= condSetEmpty!53934 (= setRest!53922 ((as const (Array A!783 Bool)) false)))))

(declare-fun setRes!53934 () Bool)

(assert (=> setNonEmpty!53922 (= tp!2075254 setRes!53934)))

(declare-fun setIsEmpty!53934 () Bool)

(assert (=> setIsEmpty!53934 setRes!53934))

(declare-fun setNonEmpty!53934 () Bool)

(declare-fun tp!2075276 () Bool)

(assert (=> setNonEmpty!53934 (= setRes!53934 (and tp!2075276 tp_is_empty!47361))))

(declare-fun setElem!53934 () A!783)

(declare-fun setRest!53934 () (InoxSet A!783))

(assert (=> setNonEmpty!53934 (= setRest!53922 ((_ map or) (store ((as const (Array A!783 Bool)) false) setElem!53934 true) setRest!53934))))

(assert (= (and setNonEmpty!53922 condSetEmpty!53934) setIsEmpty!53934))

(assert (= (and setNonEmpty!53922 (not condSetEmpty!53934)) setNonEmpty!53934))

(declare-fun condSetEmpty!53935 () Bool)

(assert (=> setNonEmpty!53925 (= condSetEmpty!53935 (= setRest!53925 ((as const (Array B!3485 Bool)) false)))))

(declare-fun setRes!53935 () Bool)

(assert (=> setNonEmpty!53925 (= tp!2075257 setRes!53935)))

(declare-fun setIsEmpty!53935 () Bool)

(assert (=> setIsEmpty!53935 setRes!53935))

(declare-fun setNonEmpty!53935 () Bool)

(declare-fun tp!2075277 () Bool)

(assert (=> setNonEmpty!53935 (= setRes!53935 (and tp!2075277 tp_is_empty!47363))))

(declare-fun setElem!53935 () B!3485)

(declare-fun setRest!53935 () (InoxSet B!3485))

(assert (=> setNonEmpty!53935 (= setRest!53925 ((_ map or) (store ((as const (Array B!3485 Bool)) false) setElem!53935 true) setRest!53935))))

(assert (= (and setNonEmpty!53925 condSetEmpty!53935) setIsEmpty!53935))

(assert (= (and setNonEmpty!53925 (not condSetEmpty!53935)) setNonEmpty!53935))

(declare-fun b_lambda!282149 () Bool)

(assert (= b_lambda!282145 (or d!2270038 b_lambda!282149)))

(declare-fun bs!1914535 () Bool)

(declare-fun d!2270152 () Bool)

(assert (= bs!1914535 (and d!2270152 d!2270038)))

(assert (=> bs!1914535 (= (dynLambda!29068 lambda!451627 (h!77468 (t!385284 lRes!24))) (contains!20763 lt!2600724 (h!77468 (t!385284 lRes!24))))))

(declare-fun m!7976124 () Bool)

(assert (=> bs!1914535 m!7976124))

(assert (=> b!7312044 d!2270152))

(declare-fun b_lambda!282151 () Bool)

(assert (= b_lambda!282147 (or b!7311804 b_lambda!282151)))

(declare-fun bs!1914536 () Bool)

(declare-fun d!2270154 () Bool)

(assert (= bs!1914536 (and d!2270154 b!7311804)))

(assert (=> bs!1914536 (= (dynLambda!29068 lambda!451615 (h!77468 (t!385284 (t!385284 lRes!24)))) (contains!20763 lt!2600674 (h!77468 (t!385284 (t!385284 lRes!24)))))))

(declare-fun m!7976126 () Bool)

(assert (=> bs!1914536 m!7976126))

(assert (=> b!7312062 d!2270154))

(check-sat (not b!7312045) (not b!7312055) (not b!7312039) (not b!7312047) (not d!2270136) (not b!7312053) (not b!7312028) (not b!7312029) (not d!2270142) (not b_lambda!282149) (not b!7312016) (not bm!665718) (not b!7312031) (not b!7312048) (not b!7312025) (not bs!1914536) (not b!7312049) (not b!7312051) (not b!7312060) (not b!7312050) (not d!2270130) (not d!2270106) (not d!2270112) (not d!2270108) (not d!2270138) (not b_lambda!282129) (not b!7312010) (not b!7312066) (not b!7312042) (not b!7312023) (not bs!1914535) (not d!2270102) (not b!7312043) (not b!7312017) (not b!7312011) b_and!351247 (not b!7312056) (not d!2270144) tp_is_empty!47363 (not b_lambda!282135) (not b!7312065) (not b!7312063) tp_is_empty!47361 (not b_next!134727) (not b!7312034) (not setNonEmpty!53935) (not b_lambda!282151) (not d!2270150) (not b!7312037) (not d!2270132) (not b!7312035) (not setNonEmpty!53934) (not setNonEmpty!53933))
(check-sat b_and!351247 (not b_next!134727))
(get-model)

(declare-fun d!2270238 () Bool)

(declare-fun c!1357613 () Bool)

(assert (=> d!2270238 (= c!1357613 ((_ is Nil!71020) lRes!24))))

(declare-fun e!4376768 () (InoxSet B!3485))

(assert (=> d!2270238 (= (content!14850 lRes!24) e!4376768)))

(declare-fun b!7312158 () Bool)

(assert (=> b!7312158 (= e!4376768 ((as const (Array B!3485 Bool)) false))))

(declare-fun b!7312159 () Bool)

(assert (=> b!7312159 (= e!4376768 ((_ map or) (store ((as const (Array B!3485 Bool)) false) (h!77468 lRes!24) true) (content!14850 (t!385284 lRes!24))))))

(assert (= (and d!2270238 c!1357613) b!7312158))

(assert (= (and d!2270238 (not c!1357613)) b!7312159))

(declare-fun m!7976274 () Bool)

(assert (=> b!7312159 m!7976274))

(declare-fun m!7976276 () Bool)

(assert (=> b!7312159 m!7976276))

(assert (=> d!2270112 d!2270238))

(assert (=> d!2270106 d!2270028))

(declare-fun d!2270240 () Bool)

(declare-fun res!2954107 () Bool)

(declare-fun e!4376769 () Bool)

(assert (=> d!2270240 (=> res!2954107 e!4376769)))

(assert (=> d!2270240 (= res!2954107 ((_ is Nil!71020) (t!385284 lt!2600707)))))

(assert (=> d!2270240 (= (noDuplicate!3031 (t!385284 lt!2600707)) e!4376769)))

(declare-fun b!7312160 () Bool)

(declare-fun e!4376770 () Bool)

(assert (=> b!7312160 (= e!4376769 e!4376770)))

(declare-fun res!2954108 () Bool)

(assert (=> b!7312160 (=> (not res!2954108) (not e!4376770))))

(assert (=> b!7312160 (= res!2954108 (not (contains!20763 (t!385284 (t!385284 lt!2600707)) (h!77468 (t!385284 lt!2600707)))))))

(declare-fun b!7312161 () Bool)

(assert (=> b!7312161 (= e!4376770 (noDuplicate!3031 (t!385284 (t!385284 lt!2600707))))))

(assert (= (and d!2270240 (not res!2954107)) b!7312160))

(assert (= (and b!7312160 res!2954108) b!7312161))

(declare-fun m!7976278 () Bool)

(assert (=> b!7312160 m!7976278))

(declare-fun m!7976280 () Bool)

(assert (=> b!7312161 m!7976280))

(assert (=> b!7312049 d!2270240))

(declare-fun d!2270242 () Bool)

(declare-fun lt!2600760 () Bool)

(assert (=> d!2270242 (= lt!2600760 (select (content!14850 (t!385284 (t!385284 lt!2600674))) (h!77468 lRes!24)))))

(declare-fun e!4376772 () Bool)

(assert (=> d!2270242 (= lt!2600760 e!4376772)))

(declare-fun res!2954109 () Bool)

(assert (=> d!2270242 (=> (not res!2954109) (not e!4376772))))

(assert (=> d!2270242 (= res!2954109 ((_ is Cons!71020) (t!385284 (t!385284 lt!2600674))))))

(assert (=> d!2270242 (= (contains!20763 (t!385284 (t!385284 lt!2600674)) (h!77468 lRes!24)) lt!2600760)))

(declare-fun b!7312162 () Bool)

(declare-fun e!4376771 () Bool)

(assert (=> b!7312162 (= e!4376772 e!4376771)))

(declare-fun res!2954110 () Bool)

(assert (=> b!7312162 (=> res!2954110 e!4376771)))

(assert (=> b!7312162 (= res!2954110 (= (h!77468 (t!385284 (t!385284 lt!2600674))) (h!77468 lRes!24)))))

(declare-fun b!7312163 () Bool)

(assert (=> b!7312163 (= e!4376771 (contains!20763 (t!385284 (t!385284 (t!385284 lt!2600674))) (h!77468 lRes!24)))))

(assert (= (and d!2270242 res!2954109) b!7312162))

(assert (= (and b!7312162 (not res!2954110)) b!7312163))

(declare-fun m!7976282 () Bool)

(assert (=> d!2270242 m!7976282))

(declare-fun m!7976284 () Bool)

(assert (=> d!2270242 m!7976284))

(declare-fun m!7976286 () Bool)

(assert (=> b!7312163 m!7976286))

(assert (=> b!7312025 d!2270242))

(declare-fun d!2270244 () Bool)

(declare-fun res!2954112 () Bool)

(declare-fun e!4376773 () Bool)

(assert (=> d!2270244 (=> res!2954112 e!4376773)))

(assert (=> d!2270244 (= res!2954112 ((_ is Nil!71020) (t!385284 (t!385284 lRes!24))))))

(assert (=> d!2270244 (= (subseq!803 (t!385284 (t!385284 lRes!24)) (t!385284 (t!385284 lt!2600676))) e!4376773)))

(declare-fun b!7312167 () Bool)

(declare-fun e!4376776 () Bool)

(assert (=> b!7312167 (= e!4376776 (subseq!803 (t!385284 (t!385284 lRes!24)) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312165 () Bool)

(declare-fun e!4376774 () Bool)

(assert (=> b!7312165 (= e!4376774 e!4376776)))

(declare-fun res!2954111 () Bool)

(assert (=> b!7312165 (=> res!2954111 e!4376776)))

(declare-fun e!4376775 () Bool)

(assert (=> b!7312165 (= res!2954111 e!4376775)))

(declare-fun res!2954113 () Bool)

(assert (=> b!7312165 (=> (not res!2954113) (not e!4376775))))

(assert (=> b!7312165 (= res!2954113 (= (h!77468 (t!385284 (t!385284 lRes!24))) (h!77468 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312164 () Bool)

(assert (=> b!7312164 (= e!4376773 e!4376774)))

(declare-fun res!2954114 () Bool)

(assert (=> b!7312164 (=> (not res!2954114) (not e!4376774))))

(assert (=> b!7312164 (= res!2954114 ((_ is Cons!71020) (t!385284 (t!385284 lt!2600676))))))

(declare-fun b!7312166 () Bool)

(assert (=> b!7312166 (= e!4376775 (subseq!803 (t!385284 (t!385284 (t!385284 lRes!24))) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(assert (= (and d!2270244 (not res!2954112)) b!7312164))

(assert (= (and b!7312164 res!2954114) b!7312165))

(assert (= (and b!7312165 res!2954113) b!7312166))

(assert (= (and b!7312165 (not res!2954111)) b!7312167))

(declare-fun m!7976288 () Bool)

(assert (=> b!7312167 m!7976288))

(declare-fun m!7976290 () Bool)

(assert (=> b!7312166 m!7976290))

(assert (=> b!7312042 d!2270244))

(declare-fun d!2270246 () Bool)

(declare-fun lt!2600761 () Bool)

(assert (=> d!2270246 (= lt!2600761 (select (content!14850 lt!2600724) (h!77468 (t!385284 lRes!24))))))

(declare-fun e!4376778 () Bool)

(assert (=> d!2270246 (= lt!2600761 e!4376778)))

(declare-fun res!2954115 () Bool)

(assert (=> d!2270246 (=> (not res!2954115) (not e!4376778))))

(assert (=> d!2270246 (= res!2954115 ((_ is Cons!71020) lt!2600724))))

(assert (=> d!2270246 (= (contains!20763 lt!2600724 (h!77468 (t!385284 lRes!24))) lt!2600761)))

(declare-fun b!7312168 () Bool)

(declare-fun e!4376777 () Bool)

(assert (=> b!7312168 (= e!4376778 e!4376777)))

(declare-fun res!2954116 () Bool)

(assert (=> b!7312168 (=> res!2954116 e!4376777)))

(assert (=> b!7312168 (= res!2954116 (= (h!77468 lt!2600724) (h!77468 (t!385284 lRes!24))))))

(declare-fun b!7312169 () Bool)

(assert (=> b!7312169 (= e!4376777 (contains!20763 (t!385284 lt!2600724) (h!77468 (t!385284 lRes!24))))))

(assert (= (and d!2270246 res!2954115) b!7312168))

(assert (= (and b!7312168 (not res!2954116)) b!7312169))

(declare-fun m!7976292 () Bool)

(assert (=> d!2270246 m!7976292))

(declare-fun m!7976294 () Bool)

(assert (=> d!2270246 m!7976294))

(declare-fun m!7976296 () Bool)

(assert (=> b!7312169 m!7976296))

(assert (=> bs!1914535 d!2270246))

(declare-fun d!2270248 () Bool)

(declare-fun c!1357614 () Bool)

(assert (=> d!2270248 (= c!1357614 ((_ is Nil!71020) (t!385284 lt!2600676)))))

(declare-fun e!4376779 () (InoxSet B!3485))

(assert (=> d!2270248 (= (content!14850 (t!385284 lt!2600676)) e!4376779)))

(declare-fun b!7312170 () Bool)

(assert (=> b!7312170 (= e!4376779 ((as const (Array B!3485 Bool)) false))))

(declare-fun b!7312171 () Bool)

(assert (=> b!7312171 (= e!4376779 ((_ map or) (store ((as const (Array B!3485 Bool)) false) (h!77468 (t!385284 lt!2600676)) true) (content!14850 (t!385284 (t!385284 lt!2600676)))))))

(assert (= (and d!2270248 c!1357614) b!7312170))

(assert (= (and d!2270248 (not c!1357614)) b!7312171))

(declare-fun m!7976298 () Bool)

(assert (=> b!7312171 m!7976298))

(declare-fun m!7976300 () Bool)

(assert (=> b!7312171 m!7976300))

(assert (=> d!2270132 d!2270248))

(declare-fun d!2270250 () Bool)

(declare-fun res!2954118 () Bool)

(declare-fun e!4376780 () Bool)

(assert (=> d!2270250 (=> res!2954118 e!4376780)))

(assert (=> d!2270250 (= res!2954118 ((_ is Nil!71020) (t!385284 lRes!24)))))

(assert (=> d!2270250 (= (subseq!803 (t!385284 lRes!24) (t!385284 (t!385284 lt!2600676))) e!4376780)))

(declare-fun b!7312175 () Bool)

(declare-fun e!4376783 () Bool)

(assert (=> b!7312175 (= e!4376783 (subseq!803 (t!385284 lRes!24) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312173 () Bool)

(declare-fun e!4376781 () Bool)

(assert (=> b!7312173 (= e!4376781 e!4376783)))

(declare-fun res!2954117 () Bool)

(assert (=> b!7312173 (=> res!2954117 e!4376783)))

(declare-fun e!4376782 () Bool)

(assert (=> b!7312173 (= res!2954117 e!4376782)))

(declare-fun res!2954119 () Bool)

(assert (=> b!7312173 (=> (not res!2954119) (not e!4376782))))

(assert (=> b!7312173 (= res!2954119 (= (h!77468 (t!385284 lRes!24)) (h!77468 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312172 () Bool)

(assert (=> b!7312172 (= e!4376780 e!4376781)))

(declare-fun res!2954120 () Bool)

(assert (=> b!7312172 (=> (not res!2954120) (not e!4376781))))

(assert (=> b!7312172 (= res!2954120 ((_ is Cons!71020) (t!385284 (t!385284 lt!2600676))))))

(declare-fun b!7312174 () Bool)

(assert (=> b!7312174 (= e!4376782 (subseq!803 (t!385284 (t!385284 lRes!24)) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(assert (= (and d!2270250 (not res!2954118)) b!7312172))

(assert (= (and b!7312172 res!2954120) b!7312173))

(assert (= (and b!7312173 res!2954119) b!7312174))

(assert (= (and b!7312173 (not res!2954117)) b!7312175))

(declare-fun m!7976302 () Bool)

(assert (=> b!7312175 m!7976302))

(assert (=> b!7312174 m!7976288))

(assert (=> b!7312043 d!2270250))

(declare-fun d!2270252 () Bool)

(assert (=> d!2270252 (subseq!803 (tail!14625 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))))) (t!385284 (t!385284 lt!2600676)))))

(declare-fun lt!2600762 () Unit!164460)

(declare-fun e!4376784 () Unit!164460)

(assert (=> d!2270252 (= lt!2600762 e!4376784)))

(declare-fun c!1357616 () Bool)

(assert (=> d!2270252 (= c!1357616 (and ((_ is Cons!71020) (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))))) ((_ is Cons!71020) (t!385284 (t!385284 lt!2600676)))))))

(declare-fun e!4376786 () Bool)

(assert (=> d!2270252 e!4376786))

(declare-fun res!2954121 () Bool)

(assert (=> d!2270252 (=> (not res!2954121) (not e!4376786))))

(assert (=> d!2270252 (= res!2954121 (not (isEmpty!40844 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))))))))

(assert (=> d!2270252 (= (subseqTail!54 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (t!385284 (t!385284 lt!2600676))) lt!2600762)))

(declare-fun c!1357615 () Bool)

(declare-fun bm!665720 () Bool)

(declare-fun call!665725 () Unit!164460)

(assert (=> bm!665720 (= call!665725 (subseqTail!54 (ite c!1357615 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (t!385284 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))))) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312176 () Bool)

(declare-fun e!4376785 () Unit!164460)

(assert (=> b!7312176 (= e!4376785 call!665725)))

(declare-fun b!7312177 () Bool)

(declare-fun c!1357617 () Bool)

(assert (=> b!7312177 (= c!1357617 (not (isEmpty!40844 (t!385284 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))))))))))

(declare-fun e!4376787 () Unit!164460)

(assert (=> b!7312177 (= e!4376787 e!4376785)))

(declare-fun b!7312178 () Bool)

(declare-fun Unit!164472 () Unit!164460)

(assert (=> b!7312178 (= e!4376785 Unit!164472)))

(declare-fun b!7312179 () Bool)

(assert (=> b!7312179 (= e!4376786 (subseq!803 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (t!385284 (t!385284 lt!2600676))))))

(declare-fun b!7312180 () Bool)

(assert (=> b!7312180 (= e!4376784 e!4376787)))

(assert (=> b!7312180 (= c!1357615 (subseq!803 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312181 () Bool)

(assert (=> b!7312181 (= e!4376787 call!665725)))

(declare-fun b!7312182 () Bool)

(declare-fun Unit!164473 () Unit!164460)

(assert (=> b!7312182 (= e!4376784 Unit!164473)))

(assert (= (and d!2270252 res!2954121) b!7312179))

(assert (= (and d!2270252 c!1357616) b!7312180))

(assert (= (and d!2270252 (not c!1357616)) b!7312182))

(assert (= (and b!7312180 c!1357615) b!7312181))

(assert (= (and b!7312180 (not c!1357615)) b!7312177))

(assert (= (and b!7312177 c!1357617) b!7312176))

(assert (= (and b!7312177 (not c!1357617)) b!7312178))

(assert (= (or b!7312181 b!7312176) bm!665720))

(declare-fun m!7976304 () Bool)

(assert (=> b!7312177 m!7976304))

(declare-fun m!7976306 () Bool)

(assert (=> bm!665720 m!7976306))

(declare-fun m!7976308 () Bool)

(assert (=> b!7312179 m!7976308))

(declare-fun m!7976310 () Bool)

(assert (=> b!7312180 m!7976310))

(declare-fun m!7976312 () Bool)

(assert (=> d!2270252 m!7976312))

(assert (=> d!2270252 m!7976312))

(declare-fun m!7976314 () Bool)

(assert (=> d!2270252 m!7976314))

(declare-fun m!7976316 () Bool)

(assert (=> d!2270252 m!7976316))

(assert (=> bm!665718 d!2270252))

(declare-fun d!2270254 () Bool)

(declare-fun lt!2600763 () Bool)

(assert (=> d!2270254 (= lt!2600763 (select (content!14850 (t!385284 (t!385284 lt!2600676))) (h!77468 lRes!24)))))

(declare-fun e!4376789 () Bool)

(assert (=> d!2270254 (= lt!2600763 e!4376789)))

(declare-fun res!2954122 () Bool)

(assert (=> d!2270254 (=> (not res!2954122) (not e!4376789))))

(assert (=> d!2270254 (= res!2954122 ((_ is Cons!71020) (t!385284 (t!385284 lt!2600676))))))

(assert (=> d!2270254 (= (contains!20763 (t!385284 (t!385284 lt!2600676)) (h!77468 lRes!24)) lt!2600763)))

(declare-fun b!7312183 () Bool)

(declare-fun e!4376788 () Bool)

(assert (=> b!7312183 (= e!4376789 e!4376788)))

(declare-fun res!2954123 () Bool)

(assert (=> b!7312183 (=> res!2954123 e!4376788)))

(assert (=> b!7312183 (= res!2954123 (= (h!77468 (t!385284 (t!385284 lt!2600676))) (h!77468 lRes!24)))))

(declare-fun b!7312184 () Bool)

(assert (=> b!7312184 (= e!4376788 (contains!20763 (t!385284 (t!385284 (t!385284 lt!2600676))) (h!77468 lRes!24)))))

(assert (= (and d!2270254 res!2954122) b!7312183))

(assert (= (and b!7312183 (not res!2954123)) b!7312184))

(assert (=> d!2270254 m!7976300))

(declare-fun m!7976318 () Bool)

(assert (=> d!2270254 m!7976318))

(declare-fun m!7976320 () Bool)

(assert (=> b!7312184 m!7976320))

(assert (=> b!7312047 d!2270254))

(assert (=> d!2270150 d!2270104))

(declare-fun d!2270256 () Bool)

(declare-fun lt!2600764 () Bool)

(assert (=> d!2270256 (= lt!2600764 (select (content!14850 (t!385284 lt!2600715)) (h!77468 lt!2600715)))))

(declare-fun e!4376791 () Bool)

(assert (=> d!2270256 (= lt!2600764 e!4376791)))

(declare-fun res!2954124 () Bool)

(assert (=> d!2270256 (=> (not res!2954124) (not e!4376791))))

(assert (=> d!2270256 (= res!2954124 ((_ is Cons!71020) (t!385284 lt!2600715)))))

(assert (=> d!2270256 (= (contains!20763 (t!385284 lt!2600715) (h!77468 lt!2600715)) lt!2600764)))

(declare-fun b!7312185 () Bool)

(declare-fun e!4376790 () Bool)

(assert (=> b!7312185 (= e!4376791 e!4376790)))

(declare-fun res!2954125 () Bool)

(assert (=> b!7312185 (=> res!2954125 e!4376790)))

(assert (=> b!7312185 (= res!2954125 (= (h!77468 (t!385284 lt!2600715)) (h!77468 lt!2600715)))))

(declare-fun b!7312186 () Bool)

(assert (=> b!7312186 (= e!4376790 (contains!20763 (t!385284 (t!385284 lt!2600715)) (h!77468 lt!2600715)))))

(assert (= (and d!2270256 res!2954124) b!7312185))

(assert (= (and b!7312185 (not res!2954125)) b!7312186))

(assert (=> d!2270256 m!7976106))

(declare-fun m!7976322 () Bool)

(assert (=> d!2270256 m!7976322))

(declare-fun m!7976324 () Bool)

(assert (=> b!7312186 m!7976324))

(assert (=> b!7312010 d!2270256))

(declare-fun d!2270258 () Bool)

(declare-fun c!1357618 () Bool)

(assert (=> d!2270258 (= c!1357618 ((_ is Nil!71020) (t!385284 lt!2600707)))))

(declare-fun e!4376792 () (InoxSet B!3485))

(assert (=> d!2270258 (= (content!14850 (t!385284 lt!2600707)) e!4376792)))

(declare-fun b!7312187 () Bool)

(assert (=> b!7312187 (= e!4376792 ((as const (Array B!3485 Bool)) false))))

(declare-fun b!7312188 () Bool)

(assert (=> b!7312188 (= e!4376792 ((_ map or) (store ((as const (Array B!3485 Bool)) false) (h!77468 (t!385284 lt!2600707)) true) (content!14850 (t!385284 (t!385284 lt!2600707)))))))

(assert (= (and d!2270258 c!1357618) b!7312187))

(assert (= (and d!2270258 (not c!1357618)) b!7312188))

(declare-fun m!7976326 () Bool)

(assert (=> b!7312188 m!7976326))

(declare-fun m!7976328 () Bool)

(assert (=> b!7312188 m!7976328))

(assert (=> b!7312039 d!2270258))

(declare-fun d!2270260 () Bool)

(declare-fun res!2954126 () Bool)

(declare-fun e!4376793 () Bool)

(assert (=> d!2270260 (=> res!2954126 e!4376793)))

(assert (=> d!2270260 (= res!2954126 ((_ is Nil!71020) res!2954031))))

(assert (=> d!2270260 (= (noDuplicate!3031 res!2954031) e!4376793)))

(declare-fun b!7312189 () Bool)

(declare-fun e!4376794 () Bool)

(assert (=> b!7312189 (= e!4376793 e!4376794)))

(declare-fun res!2954127 () Bool)

(assert (=> b!7312189 (=> (not res!2954127) (not e!4376794))))

(assert (=> b!7312189 (= res!2954127 (not (contains!20763 (t!385284 res!2954031) (h!77468 res!2954031))))))

(declare-fun b!7312190 () Bool)

(assert (=> b!7312190 (= e!4376794 (noDuplicate!3031 (t!385284 res!2954031)))))

(assert (= (and d!2270260 (not res!2954126)) b!7312189))

(assert (= (and b!7312189 res!2954127) b!7312190))

(declare-fun m!7976330 () Bool)

(assert (=> b!7312189 m!7976330))

(declare-fun m!7976332 () Bool)

(assert (=> b!7312190 m!7976332))

(assert (=> d!2270136 d!2270260))

(declare-fun d!2270262 () Bool)

(declare-fun lt!2600765 () Bool)

(assert (=> d!2270262 (= lt!2600765 (select (content!14850 lt!2600674) (h!77468 (t!385284 (t!385284 lRes!24)))))))

(declare-fun e!4376796 () Bool)

(assert (=> d!2270262 (= lt!2600765 e!4376796)))

(declare-fun res!2954128 () Bool)

(assert (=> d!2270262 (=> (not res!2954128) (not e!4376796))))

(assert (=> d!2270262 (= res!2954128 ((_ is Cons!71020) lt!2600674))))

(assert (=> d!2270262 (= (contains!20763 lt!2600674 (h!77468 (t!385284 (t!385284 lRes!24)))) lt!2600765)))

(declare-fun b!7312191 () Bool)

(declare-fun e!4376795 () Bool)

(assert (=> b!7312191 (= e!4376796 e!4376795)))

(declare-fun res!2954129 () Bool)

(assert (=> b!7312191 (=> res!2954129 e!4376795)))

(assert (=> b!7312191 (= res!2954129 (= (h!77468 lt!2600674) (h!77468 (t!385284 (t!385284 lRes!24)))))))

(declare-fun b!7312192 () Bool)

(assert (=> b!7312192 (= e!4376795 (contains!20763 (t!385284 lt!2600674) (h!77468 (t!385284 (t!385284 lRes!24)))))))

(assert (= (and d!2270262 res!2954128) b!7312191))

(assert (= (and b!7312191 (not res!2954129)) b!7312192))

(assert (=> d!2270262 m!7975902))

(declare-fun m!7976334 () Bool)

(assert (=> d!2270262 m!7976334))

(declare-fun m!7976336 () Bool)

(assert (=> b!7312192 m!7976336))

(assert (=> bs!1914536 d!2270262))

(declare-fun d!2270264 () Bool)

(declare-fun res!2954131 () Bool)

(declare-fun e!4376797 () Bool)

(assert (=> d!2270264 (=> res!2954131 e!4376797)))

(assert (=> d!2270264 (= res!2954131 ((_ is Nil!71020) (ite c!1357582 lRes!24 (t!385284 lRes!24))))))

(assert (=> d!2270264 (= (subseq!803 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (t!385284 lt!2600676))) e!4376797)))

(declare-fun b!7312196 () Bool)

(declare-fun e!4376800 () Bool)

(assert (=> b!7312196 (= e!4376800 (subseq!803 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312194 () Bool)

(declare-fun e!4376798 () Bool)

(assert (=> b!7312194 (= e!4376798 e!4376800)))

(declare-fun res!2954130 () Bool)

(assert (=> b!7312194 (=> res!2954130 e!4376800)))

(declare-fun e!4376799 () Bool)

(assert (=> b!7312194 (= res!2954130 e!4376799)))

(declare-fun res!2954132 () Bool)

(assert (=> b!7312194 (=> (not res!2954132) (not e!4376799))))

(assert (=> b!7312194 (= res!2954132 (= (h!77468 (ite c!1357582 lRes!24 (t!385284 lRes!24))) (h!77468 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312193 () Bool)

(assert (=> b!7312193 (= e!4376797 e!4376798)))

(declare-fun res!2954133 () Bool)

(assert (=> b!7312193 (=> (not res!2954133) (not e!4376798))))

(assert (=> b!7312193 (= res!2954133 ((_ is Cons!71020) (t!385284 (t!385284 lt!2600676))))))

(declare-fun b!7312195 () Bool)

(assert (=> b!7312195 (= e!4376799 (subseq!803 (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(assert (= (and d!2270264 (not res!2954131)) b!7312193))

(assert (= (and b!7312193 res!2954133) b!7312194))

(assert (= (and b!7312194 res!2954132) b!7312195))

(assert (= (and b!7312194 (not res!2954130)) b!7312196))

(declare-fun m!7976338 () Bool)

(assert (=> b!7312196 m!7976338))

(declare-fun m!7976340 () Bool)

(assert (=> b!7312195 m!7976340))

(assert (=> b!7312056 d!2270264))

(declare-fun d!2270266 () Bool)

(declare-fun c!1357619 () Bool)

(assert (=> d!2270266 (= c!1357619 ((_ is Nil!71020) (t!385284 lt!2600715)))))

(declare-fun e!4376801 () (InoxSet B!3485))

(assert (=> d!2270266 (= (content!14850 (t!385284 lt!2600715)) e!4376801)))

(declare-fun b!7312197 () Bool)

(assert (=> b!7312197 (= e!4376801 ((as const (Array B!3485 Bool)) false))))

(declare-fun b!7312198 () Bool)

(assert (=> b!7312198 (= e!4376801 ((_ map or) (store ((as const (Array B!3485 Bool)) false) (h!77468 (t!385284 lt!2600715)) true) (content!14850 (t!385284 (t!385284 lt!2600715)))))))

(assert (= (and d!2270266 c!1357619) b!7312197))

(assert (= (and d!2270266 (not c!1357619)) b!7312198))

(declare-fun m!7976342 () Bool)

(assert (=> b!7312198 m!7976342))

(declare-fun m!7976344 () Bool)

(assert (=> b!7312198 m!7976344))

(assert (=> b!7312060 d!2270266))

(assert (=> d!2270144 d!2270040))

(declare-fun d!2270268 () Bool)

(declare-fun lt!2600766 () Bool)

(assert (=> d!2270268 (= lt!2600766 (exists!4512 (toList!11555 s!1445) lambda!451639))))

(assert (=> d!2270268 (= lt!2600766 (choose!56641 s!1445 lambda!451639))))

(assert (=> d!2270268 (= (exists!4510 s!1445 lambda!451639) lt!2600766)))

(declare-fun bs!1914545 () Bool)

(assert (= bs!1914545 d!2270268))

(assert (=> bs!1914545 m!7976108))

(assert (=> bs!1914545 m!7976108))

(declare-fun m!7976346 () Bool)

(assert (=> bs!1914545 m!7976346))

(declare-fun m!7976348 () Bool)

(assert (=> bs!1914545 m!7976348))

(assert (=> d!2270144 d!2270268))

(declare-fun d!2270270 () Bool)

(declare-fun c!1357620 () Bool)

(assert (=> d!2270270 (= c!1357620 ((_ is Nil!71020) (t!385284 lt!2600674)))))

(declare-fun e!4376802 () (InoxSet B!3485))

(assert (=> d!2270270 (= (content!14850 (t!385284 lt!2600674)) e!4376802)))

(declare-fun b!7312199 () Bool)

(assert (=> b!7312199 (= e!4376802 ((as const (Array B!3485 Bool)) false))))

(declare-fun b!7312200 () Bool)

(assert (=> b!7312200 (= e!4376802 ((_ map or) (store ((as const (Array B!3485 Bool)) false) (h!77468 (t!385284 lt!2600674)) true) (content!14850 (t!385284 (t!385284 lt!2600674)))))))

(assert (= (and d!2270270 c!1357620) b!7312199))

(assert (= (and d!2270270 (not c!1357620)) b!7312200))

(declare-fun m!7976350 () Bool)

(assert (=> b!7312200 m!7976350))

(assert (=> b!7312200 m!7976282))

(assert (=> d!2270108 d!2270270))

(declare-fun d!2270272 () Bool)

(declare-fun lt!2600767 () Bool)

(assert (=> d!2270272 (= lt!2600767 (select (content!14850 (t!385284 lRes!24)) (h!77468 lRes!24)))))

(declare-fun e!4376804 () Bool)

(assert (=> d!2270272 (= lt!2600767 e!4376804)))

(declare-fun res!2954134 () Bool)

(assert (=> d!2270272 (=> (not res!2954134) (not e!4376804))))

(assert (=> d!2270272 (= res!2954134 ((_ is Cons!71020) (t!385284 lRes!24)))))

(assert (=> d!2270272 (= (contains!20763 (t!385284 lRes!24) (h!77468 lRes!24)) lt!2600767)))

(declare-fun b!7312201 () Bool)

(declare-fun e!4376803 () Bool)

(assert (=> b!7312201 (= e!4376804 e!4376803)))

(declare-fun res!2954135 () Bool)

(assert (=> b!7312201 (=> res!2954135 e!4376803)))

(assert (=> b!7312201 (= res!2954135 (= (h!77468 (t!385284 lRes!24)) (h!77468 lRes!24)))))

(declare-fun b!7312202 () Bool)

(assert (=> b!7312202 (= e!4376803 (contains!20763 (t!385284 (t!385284 lRes!24)) (h!77468 lRes!24)))))

(assert (= (and d!2270272 res!2954134) b!7312201))

(assert (= (and b!7312201 (not res!2954135)) b!7312202))

(assert (=> d!2270272 m!7976276))

(declare-fun m!7976352 () Bool)

(assert (=> d!2270272 m!7976352))

(declare-fun m!7976354 () Bool)

(assert (=> b!7312202 m!7976354))

(assert (=> b!7312031 d!2270272))

(declare-fun d!2270274 () Bool)

(assert (=> d!2270274 (= (isEmpty!40844 (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) ((_ is Nil!71020) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))))))

(assert (=> b!7312053 d!2270274))

(declare-fun d!2270276 () Bool)

(declare-fun res!2954136 () Bool)

(declare-fun e!4376805 () Bool)

(assert (=> d!2270276 (=> res!2954136 e!4376805)))

(assert (=> d!2270276 (= res!2954136 ((_ is Nil!71020) (t!385284 lt!2600715)))))

(assert (=> d!2270276 (= (noDuplicate!3031 (t!385284 lt!2600715)) e!4376805)))

(declare-fun b!7312203 () Bool)

(declare-fun e!4376806 () Bool)

(assert (=> b!7312203 (= e!4376805 e!4376806)))

(declare-fun res!2954137 () Bool)

(assert (=> b!7312203 (=> (not res!2954137) (not e!4376806))))

(assert (=> b!7312203 (= res!2954137 (not (contains!20763 (t!385284 (t!385284 lt!2600715)) (h!77468 (t!385284 lt!2600715)))))))

(declare-fun b!7312204 () Bool)

(assert (=> b!7312204 (= e!4376806 (noDuplicate!3031 (t!385284 (t!385284 lt!2600715))))))

(assert (= (and d!2270276 (not res!2954136)) b!7312203))

(assert (= (and b!7312203 res!2954137) b!7312204))

(declare-fun m!7976356 () Bool)

(assert (=> b!7312203 m!7976356))

(declare-fun m!7976358 () Bool)

(assert (=> b!7312204 m!7976358))

(assert (=> b!7312011 d!2270276))

(declare-fun d!2270278 () Bool)

(declare-fun res!2954138 () Bool)

(declare-fun e!4376807 () Bool)

(assert (=> d!2270278 (=> res!2954138 e!4376807)))

(assert (=> d!2270278 (= res!2954138 ((_ is Nil!71020) (t!385284 (t!385284 lRes!24))))))

(assert (=> d!2270278 (= (forall!17728 (t!385284 (t!385284 lRes!24)) lambda!451627) e!4376807)))

(declare-fun b!7312205 () Bool)

(declare-fun e!4376808 () Bool)

(assert (=> b!7312205 (= e!4376807 e!4376808)))

(declare-fun res!2954139 () Bool)

(assert (=> b!7312205 (=> (not res!2954139) (not e!4376808))))

(assert (=> b!7312205 (= res!2954139 (dynLambda!29068 lambda!451627 (h!77468 (t!385284 (t!385284 lRes!24)))))))

(declare-fun b!7312206 () Bool)

(assert (=> b!7312206 (= e!4376808 (forall!17728 (t!385284 (t!385284 (t!385284 lRes!24))) lambda!451627))))

(assert (= (and d!2270278 (not res!2954138)) b!7312205))

(assert (= (and b!7312205 res!2954139) b!7312206))

(declare-fun b_lambda!282165 () Bool)

(assert (=> (not b_lambda!282165) (not b!7312205)))

(declare-fun m!7976360 () Bool)

(assert (=> b!7312205 m!7976360))

(declare-fun m!7976362 () Bool)

(assert (=> b!7312206 m!7976362))

(assert (=> b!7312045 d!2270278))

(declare-fun d!2270280 () Bool)

(declare-fun c!1357621 () Bool)

(assert (=> d!2270280 (= c!1357621 ((_ is Nil!71020) res!2954031))))

(declare-fun e!4376809 () (InoxSet B!3485))

(assert (=> d!2270280 (= (content!14850 res!2954031) e!4376809)))

(declare-fun b!7312207 () Bool)

(assert (=> b!7312207 (= e!4376809 ((as const (Array B!3485 Bool)) false))))

(declare-fun b!7312208 () Bool)

(assert (=> b!7312208 (= e!4376809 ((_ map or) (store ((as const (Array B!3485 Bool)) false) (h!77468 res!2954031) true) (content!14850 (t!385284 res!2954031))))))

(assert (= (and d!2270280 c!1357621) b!7312207))

(assert (= (and d!2270280 (not c!1357621)) b!7312208))

(declare-fun m!7976364 () Bool)

(assert (=> b!7312208 m!7976364))

(declare-fun m!7976366 () Bool)

(assert (=> b!7312208 m!7976366))

(assert (=> b!7312051 d!2270280))

(declare-fun d!2270282 () Bool)

(declare-fun res!2954141 () Bool)

(declare-fun e!4376810 () Bool)

(assert (=> d!2270282 (=> res!2954141 e!4376810)))

(assert (=> d!2270282 (= res!2954141 ((_ is Nil!71020) (ite c!1357582 lRes!24 (t!385284 lRes!24))))))

(assert (=> d!2270282 (= (subseq!803 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 lt!2600676)) e!4376810)))

(declare-fun e!4376813 () Bool)

(declare-fun b!7312212 () Bool)

(assert (=> b!7312212 (= e!4376813 (subseq!803 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (t!385284 lt!2600676))))))

(declare-fun b!7312210 () Bool)

(declare-fun e!4376811 () Bool)

(assert (=> b!7312210 (= e!4376811 e!4376813)))

(declare-fun res!2954140 () Bool)

(assert (=> b!7312210 (=> res!2954140 e!4376813)))

(declare-fun e!4376812 () Bool)

(assert (=> b!7312210 (= res!2954140 e!4376812)))

(declare-fun res!2954142 () Bool)

(assert (=> b!7312210 (=> (not res!2954142) (not e!4376812))))

(assert (=> b!7312210 (= res!2954142 (= (h!77468 (ite c!1357582 lRes!24 (t!385284 lRes!24))) (h!77468 (t!385284 lt!2600676))))))

(declare-fun b!7312209 () Bool)

(assert (=> b!7312209 (= e!4376810 e!4376811)))

(declare-fun res!2954143 () Bool)

(assert (=> b!7312209 (=> (not res!2954143) (not e!4376811))))

(assert (=> b!7312209 (= res!2954143 ((_ is Cons!71020) (t!385284 lt!2600676)))))

(declare-fun b!7312211 () Bool)

(assert (=> b!7312211 (= e!4376812 (subseq!803 (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))) (t!385284 (t!385284 lt!2600676))))))

(assert (= (and d!2270282 (not res!2954141)) b!7312209))

(assert (= (and b!7312209 res!2954143) b!7312210))

(assert (= (and b!7312210 res!2954142) b!7312211))

(assert (= (and b!7312210 (not res!2954140)) b!7312212))

(assert (=> b!7312212 m!7976096))

(declare-fun m!7976368 () Bool)

(assert (=> b!7312211 m!7976368))

(assert (=> b!7312055 d!2270282))

(declare-fun d!2270284 () Bool)

(declare-fun res!2954145 () Bool)

(declare-fun e!4376814 () Bool)

(assert (=> d!2270284 (=> res!2954145 e!4376814)))

(assert (=> d!2270284 (= res!2954145 ((_ is Nil!71020) lRes!24))))

(assert (=> d!2270284 (= (subseq!803 lRes!24 (t!385284 (t!385284 lt!2600676))) e!4376814)))

(declare-fun b!7312216 () Bool)

(declare-fun e!4376817 () Bool)

(assert (=> b!7312216 (= e!4376817 (subseq!803 lRes!24 (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312214 () Bool)

(declare-fun e!4376815 () Bool)

(assert (=> b!7312214 (= e!4376815 e!4376817)))

(declare-fun res!2954144 () Bool)

(assert (=> b!7312214 (=> res!2954144 e!4376817)))

(declare-fun e!4376816 () Bool)

(assert (=> b!7312214 (= res!2954144 e!4376816)))

(declare-fun res!2954146 () Bool)

(assert (=> b!7312214 (=> (not res!2954146) (not e!4376816))))

(assert (=> b!7312214 (= res!2954146 (= (h!77468 lRes!24) (h!77468 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312213 () Bool)

(assert (=> b!7312213 (= e!4376814 e!4376815)))

(declare-fun res!2954147 () Bool)

(assert (=> b!7312213 (=> (not res!2954147) (not e!4376815))))

(assert (=> b!7312213 (= res!2954147 ((_ is Cons!71020) (t!385284 (t!385284 lt!2600676))))))

(declare-fun b!7312215 () Bool)

(assert (=> b!7312215 (= e!4376816 (subseq!803 (t!385284 lRes!24) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(assert (= (and d!2270284 (not res!2954145)) b!7312213))

(assert (= (and b!7312213 res!2954147) b!7312214))

(assert (= (and b!7312214 res!2954146) b!7312215))

(assert (= (and b!7312214 (not res!2954144)) b!7312216))

(declare-fun m!7976370 () Bool)

(assert (=> b!7312216 m!7976370))

(assert (=> b!7312215 m!7976302))

(assert (=> b!7312029 d!2270284))

(declare-fun d!2270286 () Bool)

(declare-fun res!2954149 () Bool)

(declare-fun e!4376818 () Bool)

(assert (=> d!2270286 (=> res!2954149 e!4376818)))

(assert (=> d!2270286 (= res!2954149 ((_ is Nil!71020) (tail!14625 (ite c!1357582 lRes!24 (t!385284 lRes!24)))))))

(assert (=> d!2270286 (= (subseq!803 (tail!14625 (ite c!1357582 lRes!24 (t!385284 lRes!24))) (t!385284 lt!2600676)) e!4376818)))

(declare-fun b!7312220 () Bool)

(declare-fun e!4376821 () Bool)

(assert (=> b!7312220 (= e!4376821 (subseq!803 (tail!14625 (ite c!1357582 lRes!24 (t!385284 lRes!24))) (t!385284 (t!385284 lt!2600676))))))

(declare-fun b!7312218 () Bool)

(declare-fun e!4376819 () Bool)

(assert (=> b!7312218 (= e!4376819 e!4376821)))

(declare-fun res!2954148 () Bool)

(assert (=> b!7312218 (=> res!2954148 e!4376821)))

(declare-fun e!4376820 () Bool)

(assert (=> b!7312218 (= res!2954148 e!4376820)))

(declare-fun res!2954150 () Bool)

(assert (=> b!7312218 (=> (not res!2954150) (not e!4376820))))

(assert (=> b!7312218 (= res!2954150 (= (h!77468 (tail!14625 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (h!77468 (t!385284 lt!2600676))))))

(declare-fun b!7312217 () Bool)

(assert (=> b!7312217 (= e!4376818 e!4376819)))

(declare-fun res!2954151 () Bool)

(assert (=> b!7312217 (=> (not res!2954151) (not e!4376819))))

(assert (=> b!7312217 (= res!2954151 ((_ is Cons!71020) (t!385284 lt!2600676)))))

(declare-fun b!7312219 () Bool)

(assert (=> b!7312219 (= e!4376820 (subseq!803 (t!385284 (tail!14625 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (t!385284 (t!385284 lt!2600676))))))

(assert (= (and d!2270286 (not res!2954149)) b!7312217))

(assert (= (and b!7312217 res!2954151) b!7312218))

(assert (= (and b!7312218 res!2954150) b!7312219))

(assert (= (and b!7312218 (not res!2954148)) b!7312220))

(assert (=> b!7312220 m!7976098))

(declare-fun m!7976372 () Bool)

(assert (=> b!7312220 m!7976372))

(declare-fun m!7976374 () Bool)

(assert (=> b!7312219 m!7976374))

(assert (=> d!2270138 d!2270286))

(declare-fun d!2270288 () Bool)

(assert (=> d!2270288 (= (tail!14625 (ite c!1357582 lRes!24 (t!385284 lRes!24))) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))))))

(assert (=> d!2270138 d!2270288))

(declare-fun d!2270290 () Bool)

(assert (=> d!2270290 (= (isEmpty!40844 (ite c!1357582 lRes!24 (t!385284 lRes!24))) ((_ is Nil!71020) (ite c!1357582 lRes!24 (t!385284 lRes!24))))))

(assert (=> d!2270138 d!2270290))

(assert (=> b!7312023 d!2270270))

(declare-fun bs!1914546 () Bool)

(declare-fun d!2270292 () Bool)

(assert (= bs!1914546 (and d!2270292 d!2270008)))

(declare-fun lambda!451645 () Int)

(assert (=> bs!1914546 (not (= lambda!451645 lambda!451624))))

(declare-fun bs!1914547 () Bool)

(assert (= bs!1914547 (and d!2270292 d!2270144)))

(assert (=> bs!1914547 (not (= lambda!451645 lambda!451639))))

(assert (=> d!2270292 true))

(assert (=> d!2270292 (< (dynLambda!29067 order!29079 lambda!451624) (dynLambda!29067 order!29079 lambda!451645))))

(declare-fun forall!17730 (List!71146 Int) Bool)

(assert (=> d!2270292 (= (exists!4512 (toList!11555 s!1445) lambda!451624) (not (forall!17730 (toList!11555 s!1445) lambda!451645)))))

(declare-fun bs!1914548 () Bool)

(assert (= bs!1914548 d!2270292))

(assert (=> bs!1914548 m!7976108))

(declare-fun m!7976376 () Bool)

(assert (=> bs!1914548 m!7976376))

(assert (=> d!2270142 d!2270292))

(declare-fun d!2270294 () Bool)

(declare-fun e!4376824 () Bool)

(assert (=> d!2270294 e!4376824))

(declare-fun res!2954154 () Bool)

(assert (=> d!2270294 (=> (not res!2954154) (not e!4376824))))

(declare-fun lt!2600770 () List!71146)

(declare-fun noDuplicate!3033 (List!71146) Bool)

(assert (=> d!2270294 (= res!2954154 (noDuplicate!3033 lt!2600770))))

(declare-fun choose!56643 ((InoxSet A!783)) List!71146)

(assert (=> d!2270294 (= lt!2600770 (choose!56643 s!1445))))

(assert (=> d!2270294 (= (toList!11555 s!1445) lt!2600770)))

(declare-fun b!7312225 () Bool)

(declare-fun content!14852 (List!71146) (InoxSet A!783))

(assert (=> b!7312225 (= e!4376824 (= (content!14852 lt!2600770) s!1445))))

(assert (= (and d!2270294 res!2954154) b!7312225))

(declare-fun m!7976378 () Bool)

(assert (=> d!2270294 m!7976378))

(declare-fun m!7976380 () Bool)

(assert (=> d!2270294 m!7976380))

(declare-fun m!7976382 () Bool)

(assert (=> b!7312225 m!7976382))

(assert (=> d!2270142 d!2270294))

(declare-fun d!2270296 () Bool)

(declare-fun res!2954157 () Bool)

(assert (=> d!2270296 (= res!2954157 (exists!4512 (toList!11555 s!1445) lambda!451624))))

(assert (=> d!2270296 true))

(assert (=> d!2270296 (= (choose!56641 s!1445 lambda!451624) res!2954157)))

(declare-fun bs!1914549 () Bool)

(assert (= bs!1914549 d!2270296))

(assert (=> bs!1914549 m!7976108))

(assert (=> bs!1914549 m!7976108))

(assert (=> bs!1914549 m!7976110))

(assert (=> d!2270142 d!2270296))

(declare-fun d!2270298 () Bool)

(declare-fun lt!2600771 () Bool)

(assert (=> d!2270298 (= lt!2600771 (select (content!14850 (t!385284 lt!2600707)) (h!77468 lt!2600707)))))

(declare-fun e!4376826 () Bool)

(assert (=> d!2270298 (= lt!2600771 e!4376826)))

(declare-fun res!2954158 () Bool)

(assert (=> d!2270298 (=> (not res!2954158) (not e!4376826))))

(assert (=> d!2270298 (= res!2954158 ((_ is Cons!71020) (t!385284 lt!2600707)))))

(assert (=> d!2270298 (= (contains!20763 (t!385284 lt!2600707) (h!77468 lt!2600707)) lt!2600771)))

(declare-fun b!7312226 () Bool)

(declare-fun e!4376825 () Bool)

(assert (=> b!7312226 (= e!4376826 e!4376825)))

(declare-fun res!2954159 () Bool)

(assert (=> b!7312226 (=> res!2954159 e!4376825)))

(assert (=> b!7312226 (= res!2954159 (= (h!77468 (t!385284 lt!2600707)) (h!77468 lt!2600707)))))

(declare-fun b!7312227 () Bool)

(assert (=> b!7312227 (= e!4376825 (contains!20763 (t!385284 (t!385284 lt!2600707)) (h!77468 lt!2600707)))))

(assert (= (and d!2270298 res!2954158) b!7312226))

(assert (= (and b!7312226 (not res!2954159)) b!7312227))

(assert (=> d!2270298 m!7976068))

(declare-fun m!7976384 () Bool)

(assert (=> d!2270298 m!7976384))

(declare-fun m!7976386 () Bool)

(assert (=> b!7312227 m!7976386))

(assert (=> b!7312048 d!2270298))

(declare-fun d!2270300 () Bool)

(declare-fun c!1357622 () Bool)

(assert (=> d!2270300 (= c!1357622 ((_ is Nil!71020) res!2954004))))

(declare-fun e!4376827 () (InoxSet B!3485))

(assert (=> d!2270300 (= (content!14850 res!2954004) e!4376827)))

(declare-fun b!7312228 () Bool)

(assert (=> b!7312228 (= e!4376827 ((as const (Array B!3485 Bool)) false))))

(declare-fun b!7312229 () Bool)

(assert (=> b!7312229 (= e!4376827 ((_ map or) (store ((as const (Array B!3485 Bool)) false) (h!77468 res!2954004) true) (content!14850 (t!385284 res!2954004))))))

(assert (= (and d!2270300 c!1357622) b!7312228))

(assert (= (and d!2270300 (not c!1357622)) b!7312229))

(declare-fun m!7976388 () Bool)

(assert (=> b!7312229 m!7976388))

(declare-fun m!7976390 () Bool)

(assert (=> b!7312229 m!7976390))

(assert (=> b!7312017 d!2270300))

(declare-fun d!2270302 () Bool)

(declare-fun res!2954160 () Bool)

(declare-fun e!4376828 () Bool)

(assert (=> d!2270302 (=> res!2954160 e!4376828)))

(assert (=> d!2270302 (= res!2954160 ((_ is Nil!71020) (t!385284 lRes!24)))))

(assert (=> d!2270302 (= (forall!17728 (t!385284 lRes!24) lambda!451636) e!4376828)))

(declare-fun b!7312230 () Bool)

(declare-fun e!4376829 () Bool)

(assert (=> b!7312230 (= e!4376828 e!4376829)))

(declare-fun res!2954161 () Bool)

(assert (=> b!7312230 (=> (not res!2954161) (not e!4376829))))

(assert (=> b!7312230 (= res!2954161 (dynLambda!29068 lambda!451636 (h!77468 (t!385284 lRes!24))))))

(declare-fun b!7312231 () Bool)

(assert (=> b!7312231 (= e!4376829 (forall!17728 (t!385284 (t!385284 lRes!24)) lambda!451636))))

(assert (= (and d!2270302 (not res!2954160)) b!7312230))

(assert (= (and b!7312230 res!2954161) b!7312231))

(declare-fun b_lambda!282167 () Bool)

(assert (=> (not b_lambda!282167) (not b!7312230)))

(declare-fun m!7976392 () Bool)

(assert (=> b!7312230 m!7976392))

(declare-fun m!7976394 () Bool)

(assert (=> b!7312231 m!7976394))

(assert (=> d!2270130 d!2270302))

(assert (=> d!2270130 d!2270034))

(assert (=> d!2270130 d!2270040))

(declare-fun d!2270304 () Bool)

(declare-fun res!2954162 () Bool)

(declare-fun e!4376830 () Bool)

(assert (=> d!2270304 (=> res!2954162 e!4376830)))

(assert (=> d!2270304 (= res!2954162 ((_ is Nil!71020) (t!385284 (t!385284 (t!385284 lRes!24)))))))

(assert (=> d!2270304 (= (forall!17728 (t!385284 (t!385284 (t!385284 lRes!24))) lambda!451615) e!4376830)))

(declare-fun b!7312232 () Bool)

(declare-fun e!4376831 () Bool)

(assert (=> b!7312232 (= e!4376830 e!4376831)))

(declare-fun res!2954163 () Bool)

(assert (=> b!7312232 (=> (not res!2954163) (not e!4376831))))

(assert (=> b!7312232 (= res!2954163 (dynLambda!29068 lambda!451615 (h!77468 (t!385284 (t!385284 (t!385284 lRes!24))))))))

(declare-fun b!7312233 () Bool)

(assert (=> b!7312233 (= e!4376831 (forall!17728 (t!385284 (t!385284 (t!385284 (t!385284 lRes!24)))) lambda!451615))))

(assert (= (and d!2270304 (not res!2954162)) b!7312232))

(assert (= (and b!7312232 res!2954163) b!7312233))

(declare-fun b_lambda!282169 () Bool)

(assert (=> (not b_lambda!282169) (not b!7312232)))

(declare-fun m!7976396 () Bool)

(assert (=> b!7312232 m!7976396))

(declare-fun m!7976398 () Bool)

(assert (=> b!7312233 m!7976398))

(assert (=> b!7312063 d!2270304))

(declare-fun d!2270306 () Bool)

(declare-fun lt!2600772 () Bool)

(assert (=> d!2270306 (= lt!2600772 (select (content!14850 (t!385284 lt!2600674)) (h!77468 (t!385284 lRes!24))))))

(declare-fun e!4376833 () Bool)

(assert (=> d!2270306 (= lt!2600772 e!4376833)))

(declare-fun res!2954164 () Bool)

(assert (=> d!2270306 (=> (not res!2954164) (not e!4376833))))

(assert (=> d!2270306 (= res!2954164 ((_ is Cons!71020) (t!385284 lt!2600674)))))

(assert (=> d!2270306 (= (contains!20763 (t!385284 lt!2600674) (h!77468 (t!385284 lRes!24))) lt!2600772)))

(declare-fun b!7312234 () Bool)

(declare-fun e!4376832 () Bool)

(assert (=> b!7312234 (= e!4376833 e!4376832)))

(declare-fun res!2954165 () Bool)

(assert (=> b!7312234 (=> res!2954165 e!4376832)))

(assert (=> b!7312234 (= res!2954165 (= (h!77468 (t!385284 lt!2600674)) (h!77468 (t!385284 lRes!24))))))

(declare-fun b!7312235 () Bool)

(assert (=> b!7312235 (= e!4376832 (contains!20763 (t!385284 (t!385284 lt!2600674)) (h!77468 (t!385284 lRes!24))))))

(assert (= (and d!2270306 res!2954164) b!7312234))

(assert (= (and b!7312234 (not res!2954165)) b!7312235))

(assert (=> d!2270306 m!7976042))

(declare-fun m!7976400 () Bool)

(assert (=> d!2270306 m!7976400))

(declare-fun m!7976402 () Bool)

(assert (=> b!7312235 m!7976402))

(assert (=> b!7312065 d!2270306))

(declare-fun d!2270308 () Bool)

(declare-fun res!2954167 () Bool)

(declare-fun e!4376834 () Bool)

(assert (=> d!2270308 (=> res!2954167 e!4376834)))

(assert (=> d!2270308 (= res!2954167 ((_ is Nil!71020) (t!385284 (tail!14625 lRes!24))))))

(assert (=> d!2270308 (= (subseq!803 (t!385284 (tail!14625 lRes!24)) (t!385284 lt!2600676)) e!4376834)))

(declare-fun b!7312239 () Bool)

(declare-fun e!4376837 () Bool)

(assert (=> b!7312239 (= e!4376837 (subseq!803 (t!385284 (tail!14625 lRes!24)) (t!385284 (t!385284 lt!2600676))))))

(declare-fun b!7312237 () Bool)

(declare-fun e!4376835 () Bool)

(assert (=> b!7312237 (= e!4376835 e!4376837)))

(declare-fun res!2954166 () Bool)

(assert (=> b!7312237 (=> res!2954166 e!4376837)))

(declare-fun e!4376836 () Bool)

(assert (=> b!7312237 (= res!2954166 e!4376836)))

(declare-fun res!2954168 () Bool)

(assert (=> b!7312237 (=> (not res!2954168) (not e!4376836))))

(assert (=> b!7312237 (= res!2954168 (= (h!77468 (t!385284 (tail!14625 lRes!24))) (h!77468 (t!385284 lt!2600676))))))

(declare-fun b!7312236 () Bool)

(assert (=> b!7312236 (= e!4376834 e!4376835)))

(declare-fun res!2954169 () Bool)

(assert (=> b!7312236 (=> (not res!2954169) (not e!4376835))))

(assert (=> b!7312236 (= res!2954169 ((_ is Cons!71020) (t!385284 lt!2600676)))))

(declare-fun b!7312238 () Bool)

(assert (=> b!7312238 (= e!4376836 (subseq!803 (t!385284 (t!385284 (tail!14625 lRes!24))) (t!385284 (t!385284 lt!2600676))))))

(assert (= (and d!2270308 (not res!2954167)) b!7312236))

(assert (= (and b!7312236 res!2954169) b!7312237))

(assert (= (and b!7312237 res!2954168) b!7312238))

(assert (= (and b!7312237 (not res!2954166)) b!7312239))

(declare-fun m!7976404 () Bool)

(assert (=> b!7312239 m!7976404))

(declare-fun m!7976406 () Bool)

(assert (=> b!7312238 m!7976406))

(assert (=> b!7312034 d!2270308))

(assert (=> b!7312037 d!2270248))

(declare-fun d!2270310 () Bool)

(declare-fun res!2954170 () Bool)

(declare-fun e!4376838 () Bool)

(assert (=> d!2270310 (=> res!2954170 e!4376838)))

(assert (=> d!2270310 (= res!2954170 ((_ is Nil!71020) res!2954004))))

(assert (=> d!2270310 (= (noDuplicate!3031 res!2954004) e!4376838)))

(declare-fun b!7312240 () Bool)

(declare-fun e!4376839 () Bool)

(assert (=> b!7312240 (= e!4376838 e!4376839)))

(declare-fun res!2954171 () Bool)

(assert (=> b!7312240 (=> (not res!2954171) (not e!4376839))))

(assert (=> b!7312240 (= res!2954171 (not (contains!20763 (t!385284 res!2954004) (h!77468 res!2954004))))))

(declare-fun b!7312241 () Bool)

(assert (=> b!7312241 (= e!4376839 (noDuplicate!3031 (t!385284 res!2954004)))))

(assert (= (and d!2270310 (not res!2954170)) b!7312240))

(assert (= (and b!7312240 res!2954171) b!7312241))

(declare-fun m!7976408 () Bool)

(assert (=> b!7312240 m!7976408))

(declare-fun m!7976410 () Bool)

(assert (=> b!7312241 m!7976410))

(assert (=> d!2270102 d!2270310))

(assert (=> b!7312028 d!2270250))

(declare-fun d!2270312 () Bool)

(declare-fun res!2954173 () Bool)

(declare-fun e!4376840 () Bool)

(assert (=> d!2270312 (=> res!2954173 e!4376840)))

(assert (=> d!2270312 (= res!2954173 ((_ is Nil!71020) (tail!14625 lRes!24)))))

(assert (=> d!2270312 (= (subseq!803 (tail!14625 lRes!24) (t!385284 lt!2600676)) e!4376840)))

(declare-fun b!7312245 () Bool)

(declare-fun e!4376843 () Bool)

(assert (=> b!7312245 (= e!4376843 (subseq!803 (tail!14625 lRes!24) (t!385284 (t!385284 lt!2600676))))))

(declare-fun b!7312243 () Bool)

(declare-fun e!4376841 () Bool)

(assert (=> b!7312243 (= e!4376841 e!4376843)))

(declare-fun res!2954172 () Bool)

(assert (=> b!7312243 (=> res!2954172 e!4376843)))

(declare-fun e!4376842 () Bool)

(assert (=> b!7312243 (= res!2954172 e!4376842)))

(declare-fun res!2954174 () Bool)

(assert (=> b!7312243 (=> (not res!2954174) (not e!4376842))))

(assert (=> b!7312243 (= res!2954174 (= (h!77468 (tail!14625 lRes!24)) (h!77468 (t!385284 lt!2600676))))))

(declare-fun b!7312242 () Bool)

(assert (=> b!7312242 (= e!4376840 e!4376841)))

(declare-fun res!2954175 () Bool)

(assert (=> b!7312242 (=> (not res!2954175) (not e!4376841))))

(assert (=> b!7312242 (= res!2954175 ((_ is Cons!71020) (t!385284 lt!2600676)))))

(declare-fun b!7312244 () Bool)

(assert (=> b!7312244 (= e!4376842 (subseq!803 (t!385284 (tail!14625 lRes!24)) (t!385284 (t!385284 lt!2600676))))))

(assert (= (and d!2270312 (not res!2954173)) b!7312242))

(assert (= (and b!7312242 res!2954175) b!7312243))

(assert (= (and b!7312243 res!2954174) b!7312244))

(assert (= (and b!7312243 (not res!2954172)) b!7312245))

(assert (=> b!7312245 m!7975912))

(declare-fun m!7976412 () Bool)

(assert (=> b!7312245 m!7976412))

(assert (=> b!7312244 m!7976404))

(assert (=> b!7312035 d!2270312))

(declare-fun b!7312246 () Bool)

(declare-fun e!4376844 () Bool)

(declare-fun tp!2075284 () Bool)

(assert (=> b!7312246 (= e!4376844 (and tp_is_empty!47363 tp!2075284))))

(assert (=> b!7312016 (= tp!2075270 e!4376844)))

(assert (= (and b!7312016 ((_ is Cons!71020) (t!385284 res!2954004))) b!7312246))

(declare-fun condSetEmpty!53939 () Bool)

(assert (=> setNonEmpty!53934 (= condSetEmpty!53939 (= setRest!53934 ((as const (Array A!783 Bool)) false)))))

(declare-fun setRes!53939 () Bool)

(assert (=> setNonEmpty!53934 (= tp!2075276 setRes!53939)))

(declare-fun setIsEmpty!53939 () Bool)

(assert (=> setIsEmpty!53939 setRes!53939))

(declare-fun setNonEmpty!53939 () Bool)

(declare-fun tp!2075285 () Bool)

(assert (=> setNonEmpty!53939 (= setRes!53939 (and tp!2075285 tp_is_empty!47361))))

(declare-fun setElem!53939 () A!783)

(declare-fun setRest!53939 () (InoxSet A!783))

(assert (=> setNonEmpty!53939 (= setRest!53934 ((_ map or) (store ((as const (Array A!783 Bool)) false) setElem!53939 true) setRest!53939))))

(assert (= (and setNonEmpty!53934 condSetEmpty!53939) setIsEmpty!53939))

(assert (= (and setNonEmpty!53934 (not condSetEmpty!53939)) setNonEmpty!53939))

(declare-fun condSetEmpty!53940 () Bool)

(assert (=> setNonEmpty!53933 (= condSetEmpty!53940 (= setRest!53933 ((as const (Array B!3485 Bool)) false)))))

(declare-fun setRes!53940 () Bool)

(assert (=> setNonEmpty!53933 (= tp!2075273 setRes!53940)))

(declare-fun setIsEmpty!53940 () Bool)

(assert (=> setIsEmpty!53940 setRes!53940))

(declare-fun setNonEmpty!53940 () Bool)

(declare-fun tp!2075286 () Bool)

(assert (=> setNonEmpty!53940 (= setRes!53940 (and tp!2075286 tp_is_empty!47363))))

(declare-fun setElem!53940 () B!3485)

(declare-fun setRest!53940 () (InoxSet B!3485))

(assert (=> setNonEmpty!53940 (= setRest!53933 ((_ map or) (store ((as const (Array B!3485 Bool)) false) setElem!53940 true) setRest!53940))))

(assert (= (and setNonEmpty!53933 condSetEmpty!53940) setIsEmpty!53940))

(assert (= (and setNonEmpty!53933 (not condSetEmpty!53940)) setNonEmpty!53940))

(declare-fun condSetEmpty!53941 () Bool)

(assert (=> setNonEmpty!53935 (= condSetEmpty!53941 (= setRest!53935 ((as const (Array B!3485 Bool)) false)))))

(declare-fun setRes!53941 () Bool)

(assert (=> setNonEmpty!53935 (= tp!2075277 setRes!53941)))

(declare-fun setIsEmpty!53941 () Bool)

(assert (=> setIsEmpty!53941 setRes!53941))

(declare-fun setNonEmpty!53941 () Bool)

(declare-fun tp!2075287 () Bool)

(assert (=> setNonEmpty!53941 (= setRes!53941 (and tp!2075287 tp_is_empty!47363))))

(declare-fun setElem!53941 () B!3485)

(declare-fun setRest!53941 () (InoxSet B!3485))

(assert (=> setNonEmpty!53941 (= setRest!53935 ((_ map or) (store ((as const (Array B!3485 Bool)) false) setElem!53941 true) setRest!53941))))

(assert (= (and setNonEmpty!53935 condSetEmpty!53941) setIsEmpty!53941))

(assert (= (and setNonEmpty!53935 (not condSetEmpty!53941)) setNonEmpty!53941))

(declare-fun b!7312247 () Bool)

(declare-fun e!4376845 () Bool)

(declare-fun tp!2075288 () Bool)

(assert (=> b!7312247 (= e!4376845 (and tp_is_empty!47363 tp!2075288))))

(assert (=> b!7312050 (= tp!2075274 e!4376845)))

(assert (= (and b!7312050 ((_ is Cons!71020) (t!385284 res!2954031))) b!7312247))

(declare-fun b!7312248 () Bool)

(declare-fun e!4376846 () Bool)

(declare-fun tp!2075289 () Bool)

(assert (=> b!7312248 (= e!4376846 (and tp_is_empty!47363 tp!2075289))))

(assert (=> b!7312066 (= tp!2075275 e!4376846)))

(assert (= (and b!7312066 ((_ is Cons!71020) (t!385284 (t!385284 (t!385284 lRes!24))))) b!7312248))

(declare-fun b_lambda!282171 () Bool)

(assert (= b_lambda!282169 (or b!7311804 b_lambda!282171)))

(declare-fun bs!1914550 () Bool)

(declare-fun d!2270314 () Bool)

(assert (= bs!1914550 (and d!2270314 b!7311804)))

(assert (=> bs!1914550 (= (dynLambda!29068 lambda!451615 (h!77468 (t!385284 (t!385284 (t!385284 lRes!24))))) (contains!20763 lt!2600674 (h!77468 (t!385284 (t!385284 (t!385284 lRes!24))))))))

(declare-fun m!7976414 () Bool)

(assert (=> bs!1914550 m!7976414))

(assert (=> b!7312232 d!2270314))

(declare-fun b_lambda!282173 () Bool)

(assert (= b_lambda!282165 (or d!2270038 b_lambda!282173)))

(declare-fun bs!1914551 () Bool)

(declare-fun d!2270316 () Bool)

(assert (= bs!1914551 (and d!2270316 d!2270038)))

(assert (=> bs!1914551 (= (dynLambda!29068 lambda!451627 (h!77468 (t!385284 (t!385284 lRes!24)))) (contains!20763 lt!2600724 (h!77468 (t!385284 (t!385284 lRes!24)))))))

(declare-fun m!7976416 () Bool)

(assert (=> bs!1914551 m!7976416))

(assert (=> b!7312205 d!2270316))

(declare-fun b_lambda!282175 () Bool)

(assert (= b_lambda!282167 (or d!2270130 b_lambda!282175)))

(declare-fun bs!1914552 () Bool)

(declare-fun d!2270318 () Bool)

(assert (= bs!1914552 (and d!2270318 d!2270130)))

(assert (=> bs!1914552 (= (dynLambda!29068 lambda!451636 (h!77468 (t!385284 lRes!24))) (contains!20763 lt!2600740 (h!77468 (t!385284 lRes!24))))))

(declare-fun m!7976418 () Bool)

(assert (=> bs!1914552 m!7976418))

(assert (=> b!7312230 d!2270318))

(check-sat (not d!2270242) (not d!2270262) (not b!7312175) (not b!7312225) (not d!2270252) (not b!7312203) (not d!2270256) (not setNonEmpty!53941) (not b!7312229) (not d!2270268) (not b!7312177) (not b!7312247) (not d!2270296) (not b!7312204) (not b_lambda!282129) (not b!7312186) (not b!7312179) (not b!7312180) (not b!7312161) (not b!7312188) (not b_lambda!282173) (not b!7312245) (not d!2270292) (not b!7312233) (not b!7312212) (not d!2270306) (not b!7312208) (not b_lambda!282171) (not b!7312169) (not b!7312192) (not bs!1914550) (not b!7312248) (not b!7312231) (not b!7312220) (not b!7312198) (not b!7312238) (not b!7312163) b_and!351247 (not b!7312184) (not b!7312195) (not b!7312215) (not b!7312239) (not b!7312211) (not b!7312159) tp_is_empty!47363 (not b_lambda!282135) (not b!7312200) (not b!7312219) (not b!7312171) (not b!7312206) (not b!7312196) (not b!7312202) tp_is_empty!47361 (not b!7312227) (not b_next!134727) (not b!7312235) (not b!7312167) (not b_lambda!282175) (not b!7312160) (not b!7312216) (not bs!1914551) (not b!7312189) (not b!7312190) (not d!2270294) (not b_lambda!282151) (not b!7312166) (not b!7312241) (not d!2270246) (not bm!665720) (not b!7312246) (not d!2270298) (not setNonEmpty!53940) (not d!2270272) (not b!7312240) (not d!2270254) (not b!7312244) (not b!7312174) (not bs!1914552) (not setNonEmpty!53939) (not b_lambda!282149))
(check-sat b_and!351247 (not b_next!134727))
(get-model)

(declare-fun d!2270438 () Bool)

(assert (=> d!2270438 (subseq!803 (tail!14625 (ite c!1357615 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (t!385284 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))))))) (t!385284 (t!385284 (t!385284 lt!2600676))))))

(declare-fun lt!2600789 () Unit!164460)

(declare-fun e!4376987 () Unit!164460)

(assert (=> d!2270438 (= lt!2600789 e!4376987)))

(declare-fun c!1357638 () Bool)

(assert (=> d!2270438 (= c!1357638 (and ((_ is Cons!71020) (ite c!1357615 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (t!385284 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))))))) ((_ is Cons!71020) (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(declare-fun e!4376989 () Bool)

(assert (=> d!2270438 e!4376989))

(declare-fun res!2954300 () Bool)

(assert (=> d!2270438 (=> (not res!2954300) (not e!4376989))))

(assert (=> d!2270438 (= res!2954300 (not (isEmpty!40844 (ite c!1357615 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (t!385284 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))))))))))

(assert (=> d!2270438 (= (subseqTail!54 (ite c!1357615 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (t!385284 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))))) (t!385284 (t!385284 (t!385284 lt!2600676)))) lt!2600789)))

(declare-fun c!1357637 () Bool)

(declare-fun bm!665722 () Bool)

(declare-fun call!665727 () Unit!164460)

(assert (=> bm!665722 (= call!665727 (subseqTail!54 (ite c!1357637 (ite c!1357615 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (t!385284 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))))) (t!385284 (ite c!1357615 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (t!385284 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))))))) (t!385284 (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(declare-fun b!7312403 () Bool)

(declare-fun e!4376988 () Unit!164460)

(assert (=> b!7312403 (= e!4376988 call!665727)))

(declare-fun b!7312404 () Bool)

(declare-fun c!1357639 () Bool)

(assert (=> b!7312404 (= c!1357639 (not (isEmpty!40844 (t!385284 (ite c!1357615 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (t!385284 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))))))))))))

(declare-fun e!4376990 () Unit!164460)

(assert (=> b!7312404 (= e!4376990 e!4376988)))

(declare-fun b!7312405 () Bool)

(declare-fun Unit!164476 () Unit!164460)

(assert (=> b!7312405 (= e!4376988 Unit!164476)))

(declare-fun b!7312406 () Bool)

(assert (=> b!7312406 (= e!4376989 (subseq!803 (ite c!1357615 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (t!385284 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))))) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312407 () Bool)

(assert (=> b!7312407 (= e!4376987 e!4376990)))

(assert (=> b!7312407 (= c!1357637 (subseq!803 (ite c!1357615 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (t!385284 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))))) (t!385284 (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(declare-fun b!7312408 () Bool)

(assert (=> b!7312408 (= e!4376990 call!665727)))

(declare-fun b!7312409 () Bool)

(declare-fun Unit!164477 () Unit!164460)

(assert (=> b!7312409 (= e!4376987 Unit!164477)))

(assert (= (and d!2270438 res!2954300) b!7312406))

(assert (= (and d!2270438 c!1357638) b!7312407))

(assert (= (and d!2270438 (not c!1357638)) b!7312409))

(assert (= (and b!7312407 c!1357637) b!7312408))

(assert (= (and b!7312407 (not c!1357637)) b!7312404))

(assert (= (and b!7312404 c!1357639) b!7312403))

(assert (= (and b!7312404 (not c!1357639)) b!7312405))

(assert (= (or b!7312408 b!7312403) bm!665722))

(declare-fun m!7976624 () Bool)

(assert (=> b!7312404 m!7976624))

(declare-fun m!7976626 () Bool)

(assert (=> bm!665722 m!7976626))

(declare-fun m!7976628 () Bool)

(assert (=> b!7312406 m!7976628))

(declare-fun m!7976630 () Bool)

(assert (=> b!7312407 m!7976630))

(declare-fun m!7976632 () Bool)

(assert (=> d!2270438 m!7976632))

(assert (=> d!2270438 m!7976632))

(declare-fun m!7976634 () Bool)

(assert (=> d!2270438 m!7976634))

(declare-fun m!7976636 () Bool)

(assert (=> d!2270438 m!7976636))

(assert (=> bm!665720 d!2270438))

(declare-fun d!2270440 () Bool)

(declare-fun c!1357640 () Bool)

(assert (=> d!2270440 (= c!1357640 ((_ is Nil!71020) (t!385284 lRes!24)))))

(declare-fun e!4376991 () (InoxSet B!3485))

(assert (=> d!2270440 (= (content!14850 (t!385284 lRes!24)) e!4376991)))

(declare-fun b!7312410 () Bool)

(assert (=> b!7312410 (= e!4376991 ((as const (Array B!3485 Bool)) false))))

(declare-fun b!7312411 () Bool)

(assert (=> b!7312411 (= e!4376991 ((_ map or) (store ((as const (Array B!3485 Bool)) false) (h!77468 (t!385284 lRes!24)) true) (content!14850 (t!385284 (t!385284 lRes!24)))))))

(assert (= (and d!2270440 c!1357640) b!7312410))

(assert (= (and d!2270440 (not c!1357640)) b!7312411))

(declare-fun m!7976638 () Bool)

(assert (=> b!7312411 m!7976638))

(declare-fun m!7976640 () Bool)

(assert (=> b!7312411 m!7976640))

(assert (=> d!2270272 d!2270440))

(declare-fun d!2270442 () Bool)

(declare-fun res!2954305 () Bool)

(declare-fun e!4376996 () Bool)

(assert (=> d!2270442 (=> res!2954305 e!4376996)))

(assert (=> d!2270442 (= res!2954305 ((_ is Nil!71022) lt!2600770))))

(assert (=> d!2270442 (= (noDuplicate!3033 lt!2600770) e!4376996)))

(declare-fun b!7312416 () Bool)

(declare-fun e!4376997 () Bool)

(assert (=> b!7312416 (= e!4376996 e!4376997)))

(declare-fun res!2954306 () Bool)

(assert (=> b!7312416 (=> (not res!2954306) (not e!4376997))))

(declare-fun contains!20765 (List!71146 A!783) Bool)

(assert (=> b!7312416 (= res!2954306 (not (contains!20765 (t!385290 lt!2600770) (h!77470 lt!2600770))))))

(declare-fun b!7312417 () Bool)

(assert (=> b!7312417 (= e!4376997 (noDuplicate!3033 (t!385290 lt!2600770)))))

(assert (= (and d!2270442 (not res!2954305)) b!7312416))

(assert (= (and b!7312416 res!2954306) b!7312417))

(declare-fun m!7976642 () Bool)

(assert (=> b!7312416 m!7976642))

(declare-fun m!7976644 () Bool)

(assert (=> b!7312417 m!7976644))

(assert (=> d!2270294 d!2270442))

(declare-fun d!2270444 () Bool)

(declare-fun e!4377002 () Bool)

(assert (=> d!2270444 e!4377002))

(declare-fun res!2954311 () Bool)

(assert (=> d!2270444 (=> (not res!2954311) (not e!4377002))))

(declare-fun res!2954312 () List!71146)

(assert (=> d!2270444 (= res!2954311 (noDuplicate!3033 res!2954312))))

(declare-fun e!4377003 () Bool)

(assert (=> d!2270444 e!4377003))

(assert (=> d!2270444 (= (choose!56643 s!1445) res!2954312)))

(declare-fun b!7312422 () Bool)

(declare-fun tp!2075301 () Bool)

(assert (=> b!7312422 (= e!4377003 (and tp_is_empty!47361 tp!2075301))))

(declare-fun b!7312423 () Bool)

(assert (=> b!7312423 (= e!4377002 (= (content!14852 res!2954312) s!1445))))

(assert (= (and d!2270444 ((_ is Cons!71022) res!2954312)) b!7312422))

(assert (= (and d!2270444 res!2954311) b!7312423))

(declare-fun m!7976646 () Bool)

(assert (=> d!2270444 m!7976646))

(declare-fun m!7976648 () Bool)

(assert (=> b!7312423 m!7976648))

(assert (=> d!2270294 d!2270444))

(declare-fun d!2270446 () Bool)

(declare-fun res!2954313 () Bool)

(declare-fun e!4377004 () Bool)

(assert (=> d!2270446 (=> res!2954313 e!4377004)))

(assert (=> d!2270446 (= res!2954313 ((_ is Nil!71020) (t!385284 res!2954031)))))

(assert (=> d!2270446 (= (noDuplicate!3031 (t!385284 res!2954031)) e!4377004)))

(declare-fun b!7312424 () Bool)

(declare-fun e!4377005 () Bool)

(assert (=> b!7312424 (= e!4377004 e!4377005)))

(declare-fun res!2954314 () Bool)

(assert (=> b!7312424 (=> (not res!2954314) (not e!4377005))))

(assert (=> b!7312424 (= res!2954314 (not (contains!20763 (t!385284 (t!385284 res!2954031)) (h!77468 (t!385284 res!2954031)))))))

(declare-fun b!7312425 () Bool)

(assert (=> b!7312425 (= e!4377005 (noDuplicate!3031 (t!385284 (t!385284 res!2954031))))))

(assert (= (and d!2270446 (not res!2954313)) b!7312424))

(assert (= (and b!7312424 res!2954314) b!7312425))

(declare-fun m!7976650 () Bool)

(assert (=> b!7312424 m!7976650))

(declare-fun m!7976652 () Bool)

(assert (=> b!7312425 m!7976652))

(assert (=> b!7312190 d!2270446))

(declare-fun d!2270448 () Bool)

(declare-fun c!1357641 () Bool)

(assert (=> d!2270448 (= c!1357641 ((_ is Nil!71020) (t!385284 (t!385284 lt!2600676))))))

(declare-fun e!4377006 () (InoxSet B!3485))

(assert (=> d!2270448 (= (content!14850 (t!385284 (t!385284 lt!2600676))) e!4377006)))

(declare-fun b!7312426 () Bool)

(assert (=> b!7312426 (= e!4377006 ((as const (Array B!3485 Bool)) false))))

(declare-fun b!7312427 () Bool)

(assert (=> b!7312427 (= e!4377006 ((_ map or) (store ((as const (Array B!3485 Bool)) false) (h!77468 (t!385284 (t!385284 lt!2600676))) true) (content!14850 (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(assert (= (and d!2270448 c!1357641) b!7312426))

(assert (= (and d!2270448 (not c!1357641)) b!7312427))

(declare-fun m!7976654 () Bool)

(assert (=> b!7312427 m!7976654))

(declare-fun m!7976656 () Bool)

(assert (=> b!7312427 m!7976656))

(assert (=> d!2270254 d!2270448))

(assert (=> d!2270296 d!2270292))

(assert (=> d!2270296 d!2270294))

(declare-fun d!2270450 () Bool)

(assert (=> d!2270450 (= (isEmpty!40844 (t!385284 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))))) ((_ is Nil!71020) (t!385284 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))))))))

(assert (=> b!7312177 d!2270450))

(declare-fun d!2270452 () Bool)

(declare-fun res!2954316 () Bool)

(declare-fun e!4377007 () Bool)

(assert (=> d!2270452 (=> res!2954316 e!4377007)))

(assert (=> d!2270452 (= res!2954316 ((_ is Nil!71020) (t!385284 (tail!14625 lRes!24))))))

(assert (=> d!2270452 (= (subseq!803 (t!385284 (tail!14625 lRes!24)) (t!385284 (t!385284 lt!2600676))) e!4377007)))

(declare-fun b!7312431 () Bool)

(declare-fun e!4377010 () Bool)

(assert (=> b!7312431 (= e!4377010 (subseq!803 (t!385284 (tail!14625 lRes!24)) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312429 () Bool)

(declare-fun e!4377008 () Bool)

(assert (=> b!7312429 (= e!4377008 e!4377010)))

(declare-fun res!2954315 () Bool)

(assert (=> b!7312429 (=> res!2954315 e!4377010)))

(declare-fun e!4377009 () Bool)

(assert (=> b!7312429 (= res!2954315 e!4377009)))

(declare-fun res!2954317 () Bool)

(assert (=> b!7312429 (=> (not res!2954317) (not e!4377009))))

(assert (=> b!7312429 (= res!2954317 (= (h!77468 (t!385284 (tail!14625 lRes!24))) (h!77468 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312428 () Bool)

(assert (=> b!7312428 (= e!4377007 e!4377008)))

(declare-fun res!2954318 () Bool)

(assert (=> b!7312428 (=> (not res!2954318) (not e!4377008))))

(assert (=> b!7312428 (= res!2954318 ((_ is Cons!71020) (t!385284 (t!385284 lt!2600676))))))

(declare-fun b!7312430 () Bool)

(assert (=> b!7312430 (= e!4377009 (subseq!803 (t!385284 (t!385284 (tail!14625 lRes!24))) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(assert (= (and d!2270452 (not res!2954316)) b!7312428))

(assert (= (and b!7312428 res!2954318) b!7312429))

(assert (= (and b!7312429 res!2954317) b!7312430))

(assert (= (and b!7312429 (not res!2954315)) b!7312431))

(declare-fun m!7976658 () Bool)

(assert (=> b!7312431 m!7976658))

(declare-fun m!7976660 () Bool)

(assert (=> b!7312430 m!7976660))

(assert (=> b!7312239 d!2270452))

(declare-fun d!2270454 () Bool)

(declare-fun lt!2600790 () Bool)

(assert (=> d!2270454 (= lt!2600790 (select (content!14850 (t!385284 (t!385284 lt!2600707))) (h!77468 lt!2600707)))))

(declare-fun e!4377012 () Bool)

(assert (=> d!2270454 (= lt!2600790 e!4377012)))

(declare-fun res!2954319 () Bool)

(assert (=> d!2270454 (=> (not res!2954319) (not e!4377012))))

(assert (=> d!2270454 (= res!2954319 ((_ is Cons!71020) (t!385284 (t!385284 lt!2600707))))))

(assert (=> d!2270454 (= (contains!20763 (t!385284 (t!385284 lt!2600707)) (h!77468 lt!2600707)) lt!2600790)))

(declare-fun b!7312432 () Bool)

(declare-fun e!4377011 () Bool)

(assert (=> b!7312432 (= e!4377012 e!4377011)))

(declare-fun res!2954320 () Bool)

(assert (=> b!7312432 (=> res!2954320 e!4377011)))

(assert (=> b!7312432 (= res!2954320 (= (h!77468 (t!385284 (t!385284 lt!2600707))) (h!77468 lt!2600707)))))

(declare-fun b!7312433 () Bool)

(assert (=> b!7312433 (= e!4377011 (contains!20763 (t!385284 (t!385284 (t!385284 lt!2600707))) (h!77468 lt!2600707)))))

(assert (= (and d!2270454 res!2954319) b!7312432))

(assert (= (and b!7312432 (not res!2954320)) b!7312433))

(assert (=> d!2270454 m!7976328))

(declare-fun m!7976662 () Bool)

(assert (=> d!2270454 m!7976662))

(declare-fun m!7976664 () Bool)

(assert (=> b!7312433 m!7976664))

(assert (=> b!7312227 d!2270454))

(declare-fun d!2270456 () Bool)

(declare-fun res!2954325 () Bool)

(declare-fun e!4377017 () Bool)

(assert (=> d!2270456 (=> res!2954325 e!4377017)))

(assert (=> d!2270456 (= res!2954325 ((_ is Nil!71022) (toList!11555 s!1445)))))

(assert (=> d!2270456 (= (forall!17730 (toList!11555 s!1445) lambda!451645) e!4377017)))

(declare-fun b!7312438 () Bool)

(declare-fun e!4377018 () Bool)

(assert (=> b!7312438 (= e!4377017 e!4377018)))

(declare-fun res!2954326 () Bool)

(assert (=> b!7312438 (=> (not res!2954326) (not e!4377018))))

(declare-fun dynLambda!29070 (Int A!783) Bool)

(assert (=> b!7312438 (= res!2954326 (dynLambda!29070 lambda!451645 (h!77470 (toList!11555 s!1445))))))

(declare-fun b!7312439 () Bool)

(assert (=> b!7312439 (= e!4377018 (forall!17730 (t!385290 (toList!11555 s!1445)) lambda!451645))))

(assert (= (and d!2270456 (not res!2954325)) b!7312438))

(assert (= (and b!7312438 res!2954326) b!7312439))

(declare-fun b_lambda!282195 () Bool)

(assert (=> (not b_lambda!282195) (not b!7312438)))

(declare-fun m!7976666 () Bool)

(assert (=> b!7312438 m!7976666))

(declare-fun m!7976668 () Bool)

(assert (=> b!7312439 m!7976668))

(assert (=> d!2270292 d!2270456))

(assert (=> d!2270306 d!2270270))

(assert (=> b!7312212 d!2270264))

(declare-fun d!2270458 () Bool)

(declare-fun res!2954327 () Bool)

(declare-fun e!4377019 () Bool)

(assert (=> d!2270458 (=> res!2954327 e!4377019)))

(assert (=> d!2270458 (= res!2954327 ((_ is Nil!71020) (t!385284 (t!385284 lt!2600715))))))

(assert (=> d!2270458 (= (noDuplicate!3031 (t!385284 (t!385284 lt!2600715))) e!4377019)))

(declare-fun b!7312440 () Bool)

(declare-fun e!4377020 () Bool)

(assert (=> b!7312440 (= e!4377019 e!4377020)))

(declare-fun res!2954328 () Bool)

(assert (=> b!7312440 (=> (not res!2954328) (not e!4377020))))

(assert (=> b!7312440 (= res!2954328 (not (contains!20763 (t!385284 (t!385284 (t!385284 lt!2600715))) (h!77468 (t!385284 (t!385284 lt!2600715))))))))

(declare-fun b!7312441 () Bool)

(assert (=> b!7312441 (= e!4377020 (noDuplicate!3031 (t!385284 (t!385284 (t!385284 lt!2600715)))))))

(assert (= (and d!2270458 (not res!2954327)) b!7312440))

(assert (= (and b!7312440 res!2954328) b!7312441))

(declare-fun m!7976670 () Bool)

(assert (=> b!7312440 m!7976670))

(declare-fun m!7976672 () Bool)

(assert (=> b!7312441 m!7976672))

(assert (=> b!7312204 d!2270458))

(declare-fun d!2270460 () Bool)

(declare-fun res!2954330 () Bool)

(declare-fun e!4377021 () Bool)

(assert (=> d!2270460 (=> res!2954330 e!4377021)))

(assert (=> d!2270460 (= res!2954330 ((_ is Nil!71020) (t!385284 lRes!24)))))

(assert (=> d!2270460 (= (subseq!803 (t!385284 lRes!24) (t!385284 (t!385284 (t!385284 lt!2600676)))) e!4377021)))

(declare-fun b!7312445 () Bool)

(declare-fun e!4377024 () Bool)

(assert (=> b!7312445 (= e!4377024 (subseq!803 (t!385284 lRes!24) (t!385284 (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(declare-fun b!7312443 () Bool)

(declare-fun e!4377022 () Bool)

(assert (=> b!7312443 (= e!4377022 e!4377024)))

(declare-fun res!2954329 () Bool)

(assert (=> b!7312443 (=> res!2954329 e!4377024)))

(declare-fun e!4377023 () Bool)

(assert (=> b!7312443 (= res!2954329 e!4377023)))

(declare-fun res!2954331 () Bool)

(assert (=> b!7312443 (=> (not res!2954331) (not e!4377023))))

(assert (=> b!7312443 (= res!2954331 (= (h!77468 (t!385284 lRes!24)) (h!77468 (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(declare-fun b!7312442 () Bool)

(assert (=> b!7312442 (= e!4377021 e!4377022)))

(declare-fun res!2954332 () Bool)

(assert (=> b!7312442 (=> (not res!2954332) (not e!4377022))))

(assert (=> b!7312442 (= res!2954332 ((_ is Cons!71020) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312444 () Bool)

(assert (=> b!7312444 (= e!4377023 (subseq!803 (t!385284 (t!385284 lRes!24)) (t!385284 (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(assert (= (and d!2270460 (not res!2954330)) b!7312442))

(assert (= (and b!7312442 res!2954332) b!7312443))

(assert (= (and b!7312443 res!2954331) b!7312444))

(assert (= (and b!7312443 (not res!2954329)) b!7312445))

(declare-fun m!7976674 () Bool)

(assert (=> b!7312445 m!7976674))

(declare-fun m!7976676 () Bool)

(assert (=> b!7312444 m!7976676))

(assert (=> b!7312175 d!2270460))

(assert (=> d!2270262 d!2270104))

(declare-fun d!2270462 () Bool)

(declare-fun lt!2600791 () Bool)

(assert (=> d!2270462 (= lt!2600791 (select (content!14850 (t!385284 (t!385284 (t!385284 lt!2600674)))) (h!77468 lRes!24)))))

(declare-fun e!4377026 () Bool)

(assert (=> d!2270462 (= lt!2600791 e!4377026)))

(declare-fun res!2954333 () Bool)

(assert (=> d!2270462 (=> (not res!2954333) (not e!4377026))))

(assert (=> d!2270462 (= res!2954333 ((_ is Cons!71020) (t!385284 (t!385284 (t!385284 lt!2600674)))))))

(assert (=> d!2270462 (= (contains!20763 (t!385284 (t!385284 (t!385284 lt!2600674))) (h!77468 lRes!24)) lt!2600791)))

(declare-fun b!7312446 () Bool)

(declare-fun e!4377025 () Bool)

(assert (=> b!7312446 (= e!4377026 e!4377025)))

(declare-fun res!2954334 () Bool)

(assert (=> b!7312446 (=> res!2954334 e!4377025)))

(assert (=> b!7312446 (= res!2954334 (= (h!77468 (t!385284 (t!385284 (t!385284 lt!2600674)))) (h!77468 lRes!24)))))

(declare-fun b!7312447 () Bool)

(assert (=> b!7312447 (= e!4377025 (contains!20763 (t!385284 (t!385284 (t!385284 (t!385284 lt!2600674)))) (h!77468 lRes!24)))))

(assert (= (and d!2270462 res!2954333) b!7312446))

(assert (= (and b!7312446 (not res!2954334)) b!7312447))

(declare-fun m!7976678 () Bool)

(assert (=> d!2270462 m!7976678))

(declare-fun m!7976680 () Bool)

(assert (=> d!2270462 m!7976680))

(declare-fun m!7976682 () Bool)

(assert (=> b!7312447 m!7976682))

(assert (=> b!7312163 d!2270462))

(declare-fun d!2270464 () Bool)

(declare-fun c!1357642 () Bool)

(assert (=> d!2270464 (= c!1357642 ((_ is Nil!71020) (t!385284 res!2954004)))))

(declare-fun e!4377027 () (InoxSet B!3485))

(assert (=> d!2270464 (= (content!14850 (t!385284 res!2954004)) e!4377027)))

(declare-fun b!7312448 () Bool)

(assert (=> b!7312448 (= e!4377027 ((as const (Array B!3485 Bool)) false))))

(declare-fun b!7312449 () Bool)

(assert (=> b!7312449 (= e!4377027 ((_ map or) (store ((as const (Array B!3485 Bool)) false) (h!77468 (t!385284 res!2954004)) true) (content!14850 (t!385284 (t!385284 res!2954004)))))))

(assert (= (and d!2270464 c!1357642) b!7312448))

(assert (= (and d!2270464 (not c!1357642)) b!7312449))

(declare-fun m!7976684 () Bool)

(assert (=> b!7312449 m!7976684))

(declare-fun m!7976686 () Bool)

(assert (=> b!7312449 m!7976686))

(assert (=> b!7312229 d!2270464))

(assert (=> b!7312159 d!2270440))

(declare-fun d!2270466 () Bool)

(declare-fun res!2954336 () Bool)

(declare-fun e!4377028 () Bool)

(assert (=> d!2270466 (=> res!2954336 e!4377028)))

(assert (=> d!2270466 (= res!2954336 ((_ is Nil!71020) (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))))))))

(assert (=> d!2270466 (= (subseq!803 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (t!385284 (t!385284 lt!2600676))) e!4377028)))

(declare-fun b!7312453 () Bool)

(declare-fun e!4377031 () Bool)

(assert (=> b!7312453 (= e!4377031 (subseq!803 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312451 () Bool)

(declare-fun e!4377029 () Bool)

(assert (=> b!7312451 (= e!4377029 e!4377031)))

(declare-fun res!2954335 () Bool)

(assert (=> b!7312451 (=> res!2954335 e!4377031)))

(declare-fun e!4377030 () Bool)

(assert (=> b!7312451 (= res!2954335 e!4377030)))

(declare-fun res!2954337 () Bool)

(assert (=> b!7312451 (=> (not res!2954337) (not e!4377030))))

(assert (=> b!7312451 (= res!2954337 (= (h!77468 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))))) (h!77468 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312450 () Bool)

(assert (=> b!7312450 (= e!4377028 e!4377029)))

(declare-fun res!2954338 () Bool)

(assert (=> b!7312450 (=> (not res!2954338) (not e!4377029))))

(assert (=> b!7312450 (= res!2954338 ((_ is Cons!71020) (t!385284 (t!385284 lt!2600676))))))

(declare-fun b!7312452 () Bool)

(assert (=> b!7312452 (= e!4377030 (subseq!803 (t!385284 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))))) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(assert (= (and d!2270466 (not res!2954336)) b!7312450))

(assert (= (and b!7312450 res!2954338) b!7312451))

(assert (= (and b!7312451 res!2954337) b!7312452))

(assert (= (and b!7312451 (not res!2954335)) b!7312453))

(assert (=> b!7312453 m!7976310))

(declare-fun m!7976688 () Bool)

(assert (=> b!7312452 m!7976688))

(assert (=> b!7312179 d!2270466))

(declare-fun d!2270468 () Bool)

(declare-fun res!2954340 () Bool)

(declare-fun e!4377032 () Bool)

(assert (=> d!2270468 (=> res!2954340 e!4377032)))

(assert (=> d!2270468 (= res!2954340 ((_ is Nil!71020) (t!385284 (t!385284 (t!385284 lRes!24)))))))

(assert (=> d!2270468 (= (subseq!803 (t!385284 (t!385284 (t!385284 lRes!24))) (t!385284 (t!385284 (t!385284 lt!2600676)))) e!4377032)))

(declare-fun b!7312457 () Bool)

(declare-fun e!4377035 () Bool)

(assert (=> b!7312457 (= e!4377035 (subseq!803 (t!385284 (t!385284 (t!385284 lRes!24))) (t!385284 (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(declare-fun b!7312455 () Bool)

(declare-fun e!4377033 () Bool)

(assert (=> b!7312455 (= e!4377033 e!4377035)))

(declare-fun res!2954339 () Bool)

(assert (=> b!7312455 (=> res!2954339 e!4377035)))

(declare-fun e!4377034 () Bool)

(assert (=> b!7312455 (= res!2954339 e!4377034)))

(declare-fun res!2954341 () Bool)

(assert (=> b!7312455 (=> (not res!2954341) (not e!4377034))))

(assert (=> b!7312455 (= res!2954341 (= (h!77468 (t!385284 (t!385284 (t!385284 lRes!24)))) (h!77468 (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(declare-fun b!7312454 () Bool)

(assert (=> b!7312454 (= e!4377032 e!4377033)))

(declare-fun res!2954342 () Bool)

(assert (=> b!7312454 (=> (not res!2954342) (not e!4377033))))

(assert (=> b!7312454 (= res!2954342 ((_ is Cons!71020) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312456 () Bool)

(assert (=> b!7312456 (= e!4377034 (subseq!803 (t!385284 (t!385284 (t!385284 (t!385284 lRes!24)))) (t!385284 (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(assert (= (and d!2270468 (not res!2954340)) b!7312454))

(assert (= (and b!7312454 res!2954342) b!7312455))

(assert (= (and b!7312455 res!2954341) b!7312456))

(assert (= (and b!7312455 (not res!2954339)) b!7312457))

(declare-fun m!7976690 () Bool)

(assert (=> b!7312457 m!7976690))

(declare-fun m!7976692 () Bool)

(assert (=> b!7312456 m!7976692))

(assert (=> b!7312166 d!2270468))

(declare-fun d!2270470 () Bool)

(declare-fun res!2954344 () Bool)

(declare-fun e!4377036 () Bool)

(assert (=> d!2270470 (=> res!2954344 e!4377036)))

(assert (=> d!2270470 (= res!2954344 ((_ is Nil!71020) (ite c!1357582 lRes!24 (t!385284 lRes!24))))))

(assert (=> d!2270470 (= (subseq!803 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (t!385284 (t!385284 lt!2600676)))) e!4377036)))

(declare-fun b!7312461 () Bool)

(declare-fun e!4377039 () Bool)

(assert (=> b!7312461 (= e!4377039 (subseq!803 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(declare-fun b!7312459 () Bool)

(declare-fun e!4377037 () Bool)

(assert (=> b!7312459 (= e!4377037 e!4377039)))

(declare-fun res!2954343 () Bool)

(assert (=> b!7312459 (=> res!2954343 e!4377039)))

(declare-fun e!4377038 () Bool)

(assert (=> b!7312459 (= res!2954343 e!4377038)))

(declare-fun res!2954345 () Bool)

(assert (=> b!7312459 (=> (not res!2954345) (not e!4377038))))

(assert (=> b!7312459 (= res!2954345 (= (h!77468 (ite c!1357582 lRes!24 (t!385284 lRes!24))) (h!77468 (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(declare-fun b!7312458 () Bool)

(assert (=> b!7312458 (= e!4377036 e!4377037)))

(declare-fun res!2954346 () Bool)

(assert (=> b!7312458 (=> (not res!2954346) (not e!4377037))))

(assert (=> b!7312458 (= res!2954346 ((_ is Cons!71020) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312460 () Bool)

(assert (=> b!7312460 (= e!4377038 (subseq!803 (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))) (t!385284 (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(assert (= (and d!2270470 (not res!2954344)) b!7312458))

(assert (= (and b!7312458 res!2954346) b!7312459))

(assert (= (and b!7312459 res!2954345) b!7312460))

(assert (= (and b!7312459 (not res!2954343)) b!7312461))

(declare-fun m!7976694 () Bool)

(assert (=> b!7312461 m!7976694))

(declare-fun m!7976696 () Bool)

(assert (=> b!7312460 m!7976696))

(assert (=> b!7312196 d!2270470))

(declare-fun d!2270472 () Bool)

(declare-fun res!2954347 () Bool)

(declare-fun e!4377040 () Bool)

(assert (=> d!2270472 (=> res!2954347 e!4377040)))

(assert (=> d!2270472 (= res!2954347 ((_ is Nil!71020) (t!385284 (t!385284 (t!385284 lRes!24)))))))

(assert (=> d!2270472 (= (forall!17728 (t!385284 (t!385284 (t!385284 lRes!24))) lambda!451627) e!4377040)))

(declare-fun b!7312462 () Bool)

(declare-fun e!4377041 () Bool)

(assert (=> b!7312462 (= e!4377040 e!4377041)))

(declare-fun res!2954348 () Bool)

(assert (=> b!7312462 (=> (not res!2954348) (not e!4377041))))

(assert (=> b!7312462 (= res!2954348 (dynLambda!29068 lambda!451627 (h!77468 (t!385284 (t!385284 (t!385284 lRes!24))))))))

(declare-fun b!7312463 () Bool)

(assert (=> b!7312463 (= e!4377041 (forall!17728 (t!385284 (t!385284 (t!385284 (t!385284 lRes!24)))) lambda!451627))))

(assert (= (and d!2270472 (not res!2954347)) b!7312462))

(assert (= (and b!7312462 res!2954348) b!7312463))

(declare-fun b_lambda!282197 () Bool)

(assert (=> (not b_lambda!282197) (not b!7312462)))

(declare-fun m!7976698 () Bool)

(assert (=> b!7312462 m!7976698))

(declare-fun m!7976700 () Bool)

(assert (=> b!7312463 m!7976700))

(assert (=> b!7312206 d!2270472))

(assert (=> d!2270298 d!2270258))

(declare-fun d!2270474 () Bool)

(declare-fun res!2954350 () Bool)

(declare-fun e!4377042 () Bool)

(assert (=> d!2270474 (=> res!2954350 e!4377042)))

(assert (=> d!2270474 (= res!2954350 ((_ is Nil!71020) (t!385284 (tail!14625 (ite c!1357582 lRes!24 (t!385284 lRes!24))))))))

(assert (=> d!2270474 (= (subseq!803 (t!385284 (tail!14625 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (t!385284 (t!385284 lt!2600676))) e!4377042)))

(declare-fun b!7312467 () Bool)

(declare-fun e!4377045 () Bool)

(assert (=> b!7312467 (= e!4377045 (subseq!803 (t!385284 (tail!14625 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312465 () Bool)

(declare-fun e!4377043 () Bool)

(assert (=> b!7312465 (= e!4377043 e!4377045)))

(declare-fun res!2954349 () Bool)

(assert (=> b!7312465 (=> res!2954349 e!4377045)))

(declare-fun e!4377044 () Bool)

(assert (=> b!7312465 (= res!2954349 e!4377044)))

(declare-fun res!2954351 () Bool)

(assert (=> b!7312465 (=> (not res!2954351) (not e!4377044))))

(assert (=> b!7312465 (= res!2954351 (= (h!77468 (t!385284 (tail!14625 (ite c!1357582 lRes!24 (t!385284 lRes!24))))) (h!77468 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312464 () Bool)

(assert (=> b!7312464 (= e!4377042 e!4377043)))

(declare-fun res!2954352 () Bool)

(assert (=> b!7312464 (=> (not res!2954352) (not e!4377043))))

(assert (=> b!7312464 (= res!2954352 ((_ is Cons!71020) (t!385284 (t!385284 lt!2600676))))))

(declare-fun b!7312466 () Bool)

(assert (=> b!7312466 (= e!4377044 (subseq!803 (t!385284 (t!385284 (tail!14625 (ite c!1357582 lRes!24 (t!385284 lRes!24))))) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(assert (= (and d!2270474 (not res!2954350)) b!7312464))

(assert (= (and b!7312464 res!2954352) b!7312465))

(assert (= (and b!7312465 res!2954351) b!7312466))

(assert (= (and b!7312465 (not res!2954349)) b!7312467))

(declare-fun m!7976702 () Bool)

(assert (=> b!7312467 m!7976702))

(declare-fun m!7976704 () Bool)

(assert (=> b!7312466 m!7976704))

(assert (=> b!7312219 d!2270474))

(declare-fun d!2270476 () Bool)

(declare-fun lt!2600792 () Bool)

(assert (=> d!2270476 (= lt!2600792 (select (content!14850 lt!2600674) (h!77468 (t!385284 (t!385284 (t!385284 lRes!24))))))))

(declare-fun e!4377047 () Bool)

(assert (=> d!2270476 (= lt!2600792 e!4377047)))

(declare-fun res!2954353 () Bool)

(assert (=> d!2270476 (=> (not res!2954353) (not e!4377047))))

(assert (=> d!2270476 (= res!2954353 ((_ is Cons!71020) lt!2600674))))

(assert (=> d!2270476 (= (contains!20763 lt!2600674 (h!77468 (t!385284 (t!385284 (t!385284 lRes!24))))) lt!2600792)))

(declare-fun b!7312468 () Bool)

(declare-fun e!4377046 () Bool)

(assert (=> b!7312468 (= e!4377047 e!4377046)))

(declare-fun res!2954354 () Bool)

(assert (=> b!7312468 (=> res!2954354 e!4377046)))

(assert (=> b!7312468 (= res!2954354 (= (h!77468 lt!2600674) (h!77468 (t!385284 (t!385284 (t!385284 lRes!24))))))))

(declare-fun b!7312469 () Bool)

(assert (=> b!7312469 (= e!4377046 (contains!20763 (t!385284 lt!2600674) (h!77468 (t!385284 (t!385284 (t!385284 lRes!24))))))))

(assert (= (and d!2270476 res!2954353) b!7312468))

(assert (= (and b!7312468 (not res!2954354)) b!7312469))

(assert (=> d!2270476 m!7975902))

(declare-fun m!7976706 () Bool)

(assert (=> d!2270476 m!7976706))

(declare-fun m!7976708 () Bool)

(assert (=> b!7312469 m!7976708))

(assert (=> bs!1914550 d!2270476))

(assert (=> b!7312244 d!2270452))

(declare-fun d!2270478 () Bool)

(declare-fun res!2954356 () Bool)

(declare-fun e!4377048 () Bool)

(assert (=> d!2270478 (=> res!2954356 e!4377048)))

(assert (=> d!2270478 (= res!2954356 ((_ is Nil!71020) (tail!14625 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))))))))

(assert (=> d!2270478 (= (subseq!803 (tail!14625 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))))) (t!385284 (t!385284 lt!2600676))) e!4377048)))

(declare-fun e!4377051 () Bool)

(declare-fun b!7312473 () Bool)

(assert (=> b!7312473 (= e!4377051 (subseq!803 (tail!14625 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))))) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312471 () Bool)

(declare-fun e!4377049 () Bool)

(assert (=> b!7312471 (= e!4377049 e!4377051)))

(declare-fun res!2954355 () Bool)

(assert (=> b!7312471 (=> res!2954355 e!4377051)))

(declare-fun e!4377050 () Bool)

(assert (=> b!7312471 (= res!2954355 e!4377050)))

(declare-fun res!2954357 () Bool)

(assert (=> b!7312471 (=> (not res!2954357) (not e!4377050))))

(assert (=> b!7312471 (= res!2954357 (= (h!77468 (tail!14625 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))))) (h!77468 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312470 () Bool)

(assert (=> b!7312470 (= e!4377048 e!4377049)))

(declare-fun res!2954358 () Bool)

(assert (=> b!7312470 (=> (not res!2954358) (not e!4377049))))

(assert (=> b!7312470 (= res!2954358 ((_ is Cons!71020) (t!385284 (t!385284 lt!2600676))))))

(declare-fun b!7312472 () Bool)

(assert (=> b!7312472 (= e!4377050 (subseq!803 (t!385284 (tail!14625 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))))) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(assert (= (and d!2270478 (not res!2954356)) b!7312470))

(assert (= (and b!7312470 res!2954358) b!7312471))

(assert (= (and b!7312471 res!2954357) b!7312472))

(assert (= (and b!7312471 (not res!2954355)) b!7312473))

(assert (=> b!7312473 m!7976312))

(declare-fun m!7976710 () Bool)

(assert (=> b!7312473 m!7976710))

(declare-fun m!7976712 () Bool)

(assert (=> b!7312472 m!7976712))

(assert (=> d!2270252 d!2270478))

(declare-fun d!2270480 () Bool)

(assert (=> d!2270480 (= (tail!14625 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))))) (t!385284 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))))))))

(assert (=> d!2270252 d!2270480))

(declare-fun d!2270482 () Bool)

(assert (=> d!2270482 (= (isEmpty!40844 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))))) ((_ is Nil!71020) (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))))))))

(assert (=> d!2270252 d!2270482))

(declare-fun d!2270484 () Bool)

(declare-fun res!2954359 () Bool)

(declare-fun e!4377052 () Bool)

(assert (=> d!2270484 (=> res!2954359 e!4377052)))

(assert (=> d!2270484 (= res!2954359 ((_ is Nil!71020) (t!385284 res!2954004)))))

(assert (=> d!2270484 (= (noDuplicate!3031 (t!385284 res!2954004)) e!4377052)))

(declare-fun b!7312474 () Bool)

(declare-fun e!4377053 () Bool)

(assert (=> b!7312474 (= e!4377052 e!4377053)))

(declare-fun res!2954360 () Bool)

(assert (=> b!7312474 (=> (not res!2954360) (not e!4377053))))

(assert (=> b!7312474 (= res!2954360 (not (contains!20763 (t!385284 (t!385284 res!2954004)) (h!77468 (t!385284 res!2954004)))))))

(declare-fun b!7312475 () Bool)

(assert (=> b!7312475 (= e!4377053 (noDuplicate!3031 (t!385284 (t!385284 res!2954004))))))

(assert (= (and d!2270484 (not res!2954359)) b!7312474))

(assert (= (and b!7312474 res!2954360) b!7312475))

(declare-fun m!7976714 () Bool)

(assert (=> b!7312474 m!7976714))

(declare-fun m!7976716 () Bool)

(assert (=> b!7312475 m!7976716))

(assert (=> b!7312241 d!2270484))

(declare-fun d!2270486 () Bool)

(declare-fun res!2954362 () Bool)

(declare-fun e!4377054 () Bool)

(assert (=> d!2270486 (=> res!2954362 e!4377054)))

(assert (=> d!2270486 (= res!2954362 ((_ is Nil!71020) lRes!24))))

(assert (=> d!2270486 (= (subseq!803 lRes!24 (t!385284 (t!385284 (t!385284 lt!2600676)))) e!4377054)))

(declare-fun b!7312479 () Bool)

(declare-fun e!4377057 () Bool)

(assert (=> b!7312479 (= e!4377057 (subseq!803 lRes!24 (t!385284 (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(declare-fun b!7312477 () Bool)

(declare-fun e!4377055 () Bool)

(assert (=> b!7312477 (= e!4377055 e!4377057)))

(declare-fun res!2954361 () Bool)

(assert (=> b!7312477 (=> res!2954361 e!4377057)))

(declare-fun e!4377056 () Bool)

(assert (=> b!7312477 (= res!2954361 e!4377056)))

(declare-fun res!2954363 () Bool)

(assert (=> b!7312477 (=> (not res!2954363) (not e!4377056))))

(assert (=> b!7312477 (= res!2954363 (= (h!77468 lRes!24) (h!77468 (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(declare-fun b!7312476 () Bool)

(assert (=> b!7312476 (= e!4377054 e!4377055)))

(declare-fun res!2954364 () Bool)

(assert (=> b!7312476 (=> (not res!2954364) (not e!4377055))))

(assert (=> b!7312476 (= res!2954364 ((_ is Cons!71020) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312478 () Bool)

(assert (=> b!7312478 (= e!4377056 (subseq!803 (t!385284 lRes!24) (t!385284 (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(assert (= (and d!2270486 (not res!2954362)) b!7312476))

(assert (= (and b!7312476 res!2954364) b!7312477))

(assert (= (and b!7312477 res!2954363) b!7312478))

(assert (= (and b!7312477 (not res!2954361)) b!7312479))

(declare-fun m!7976718 () Bool)

(assert (=> b!7312479 m!7976718))

(assert (=> b!7312478 m!7976674))

(assert (=> b!7312216 d!2270486))

(declare-fun d!2270488 () Bool)

(declare-fun res!2954365 () Bool)

(declare-fun e!4377058 () Bool)

(assert (=> d!2270488 (=> res!2954365 e!4377058)))

(assert (=> d!2270488 (= res!2954365 ((_ is Nil!71020) (t!385284 (t!385284 lt!2600707))))))

(assert (=> d!2270488 (= (noDuplicate!3031 (t!385284 (t!385284 lt!2600707))) e!4377058)))

(declare-fun b!7312480 () Bool)

(declare-fun e!4377059 () Bool)

(assert (=> b!7312480 (= e!4377058 e!4377059)))

(declare-fun res!2954366 () Bool)

(assert (=> b!7312480 (=> (not res!2954366) (not e!4377059))))

(assert (=> b!7312480 (= res!2954366 (not (contains!20763 (t!385284 (t!385284 (t!385284 lt!2600707))) (h!77468 (t!385284 (t!385284 lt!2600707))))))))

(declare-fun b!7312481 () Bool)

(assert (=> b!7312481 (= e!4377059 (noDuplicate!3031 (t!385284 (t!385284 (t!385284 lt!2600707)))))))

(assert (= (and d!2270488 (not res!2954365)) b!7312480))

(assert (= (and b!7312480 res!2954366) b!7312481))

(declare-fun m!7976720 () Bool)

(assert (=> b!7312480 m!7976720))

(declare-fun m!7976722 () Bool)

(assert (=> b!7312481 m!7976722))

(assert (=> b!7312161 d!2270488))

(declare-fun d!2270490 () Bool)

(declare-fun lt!2600793 () Bool)

(assert (=> d!2270490 (= lt!2600793 (select (content!14850 (t!385284 res!2954031)) (h!77468 res!2954031)))))

(declare-fun e!4377061 () Bool)

(assert (=> d!2270490 (= lt!2600793 e!4377061)))

(declare-fun res!2954367 () Bool)

(assert (=> d!2270490 (=> (not res!2954367) (not e!4377061))))

(assert (=> d!2270490 (= res!2954367 ((_ is Cons!71020) (t!385284 res!2954031)))))

(assert (=> d!2270490 (= (contains!20763 (t!385284 res!2954031) (h!77468 res!2954031)) lt!2600793)))

(declare-fun b!7312482 () Bool)

(declare-fun e!4377060 () Bool)

(assert (=> b!7312482 (= e!4377061 e!4377060)))

(declare-fun res!2954368 () Bool)

(assert (=> b!7312482 (=> res!2954368 e!4377060)))

(assert (=> b!7312482 (= res!2954368 (= (h!77468 (t!385284 res!2954031)) (h!77468 res!2954031)))))

(declare-fun b!7312483 () Bool)

(assert (=> b!7312483 (= e!4377060 (contains!20763 (t!385284 (t!385284 res!2954031)) (h!77468 res!2954031)))))

(assert (= (and d!2270490 res!2954367) b!7312482))

(assert (= (and b!7312482 (not res!2954368)) b!7312483))

(assert (=> d!2270490 m!7976366))

(declare-fun m!7976724 () Bool)

(assert (=> d!2270490 m!7976724))

(declare-fun m!7976726 () Bool)

(assert (=> b!7312483 m!7976726))

(assert (=> b!7312189 d!2270490))

(declare-fun d!2270492 () Bool)

(declare-fun c!1357643 () Bool)

(assert (=> d!2270492 (= c!1357643 ((_ is Nil!71020) (t!385284 (t!385284 lt!2600674))))))

(declare-fun e!4377062 () (InoxSet B!3485))

(assert (=> d!2270492 (= (content!14850 (t!385284 (t!385284 lt!2600674))) e!4377062)))

(declare-fun b!7312484 () Bool)

(assert (=> b!7312484 (= e!4377062 ((as const (Array B!3485 Bool)) false))))

(declare-fun b!7312485 () Bool)

(assert (=> b!7312485 (= e!4377062 ((_ map or) (store ((as const (Array B!3485 Bool)) false) (h!77468 (t!385284 (t!385284 lt!2600674))) true) (content!14850 (t!385284 (t!385284 (t!385284 lt!2600674))))))))

(assert (= (and d!2270492 c!1357643) b!7312484))

(assert (= (and d!2270492 (not c!1357643)) b!7312485))

(declare-fun m!7976728 () Bool)

(assert (=> b!7312485 m!7976728))

(assert (=> b!7312485 m!7976678))

(assert (=> d!2270242 d!2270492))

(declare-fun d!2270494 () Bool)

(declare-fun lt!2600794 () Bool)

(assert (=> d!2270494 (= lt!2600794 (select (content!14850 (t!385284 (t!385284 lt!2600715))) (h!77468 lt!2600715)))))

(declare-fun e!4377064 () Bool)

(assert (=> d!2270494 (= lt!2600794 e!4377064)))

(declare-fun res!2954369 () Bool)

(assert (=> d!2270494 (=> (not res!2954369) (not e!4377064))))

(assert (=> d!2270494 (= res!2954369 ((_ is Cons!71020) (t!385284 (t!385284 lt!2600715))))))

(assert (=> d!2270494 (= (contains!20763 (t!385284 (t!385284 lt!2600715)) (h!77468 lt!2600715)) lt!2600794)))

(declare-fun b!7312486 () Bool)

(declare-fun e!4377063 () Bool)

(assert (=> b!7312486 (= e!4377064 e!4377063)))

(declare-fun res!2954370 () Bool)

(assert (=> b!7312486 (=> res!2954370 e!4377063)))

(assert (=> b!7312486 (= res!2954370 (= (h!77468 (t!385284 (t!385284 lt!2600715))) (h!77468 lt!2600715)))))

(declare-fun b!7312487 () Bool)

(assert (=> b!7312487 (= e!4377063 (contains!20763 (t!385284 (t!385284 (t!385284 lt!2600715))) (h!77468 lt!2600715)))))

(assert (= (and d!2270494 res!2954369) b!7312486))

(assert (= (and b!7312486 (not res!2954370)) b!7312487))

(assert (=> d!2270494 m!7976344))

(declare-fun m!7976730 () Bool)

(assert (=> d!2270494 m!7976730))

(declare-fun m!7976732 () Bool)

(assert (=> b!7312487 m!7976732))

(assert (=> b!7312186 d!2270494))

(declare-fun d!2270496 () Bool)

(declare-fun res!2954372 () Bool)

(declare-fun e!4377065 () Bool)

(assert (=> d!2270496 (=> res!2954372 e!4377065)))

(assert (=> d!2270496 (= res!2954372 ((_ is Nil!71020) (t!385284 (t!385284 (tail!14625 lRes!24)))))))

(assert (=> d!2270496 (= (subseq!803 (t!385284 (t!385284 (tail!14625 lRes!24))) (t!385284 (t!385284 lt!2600676))) e!4377065)))

(declare-fun b!7312491 () Bool)

(declare-fun e!4377068 () Bool)

(assert (=> b!7312491 (= e!4377068 (subseq!803 (t!385284 (t!385284 (tail!14625 lRes!24))) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312489 () Bool)

(declare-fun e!4377066 () Bool)

(assert (=> b!7312489 (= e!4377066 e!4377068)))

(declare-fun res!2954371 () Bool)

(assert (=> b!7312489 (=> res!2954371 e!4377068)))

(declare-fun e!4377067 () Bool)

(assert (=> b!7312489 (= res!2954371 e!4377067)))

(declare-fun res!2954373 () Bool)

(assert (=> b!7312489 (=> (not res!2954373) (not e!4377067))))

(assert (=> b!7312489 (= res!2954373 (= (h!77468 (t!385284 (t!385284 (tail!14625 lRes!24)))) (h!77468 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312488 () Bool)

(assert (=> b!7312488 (= e!4377065 e!4377066)))

(declare-fun res!2954374 () Bool)

(assert (=> b!7312488 (=> (not res!2954374) (not e!4377066))))

(assert (=> b!7312488 (= res!2954374 ((_ is Cons!71020) (t!385284 (t!385284 lt!2600676))))))

(declare-fun b!7312490 () Bool)

(assert (=> b!7312490 (= e!4377067 (subseq!803 (t!385284 (t!385284 (t!385284 (tail!14625 lRes!24)))) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(assert (= (and d!2270496 (not res!2954372)) b!7312488))

(assert (= (and b!7312488 res!2954374) b!7312489))

(assert (= (and b!7312489 res!2954373) b!7312490))

(assert (= (and b!7312489 (not res!2954371)) b!7312491))

(assert (=> b!7312491 m!7976660))

(declare-fun m!7976734 () Bool)

(assert (=> b!7312490 m!7976734))

(assert (=> b!7312238 d!2270496))

(declare-fun d!2270498 () Bool)

(declare-fun c!1357644 () Bool)

(assert (=> d!2270498 (= c!1357644 ((_ is Nil!71020) (t!385284 res!2954031)))))

(declare-fun e!4377069 () (InoxSet B!3485))

(assert (=> d!2270498 (= (content!14850 (t!385284 res!2954031)) e!4377069)))

(declare-fun b!7312492 () Bool)

(assert (=> b!7312492 (= e!4377069 ((as const (Array B!3485 Bool)) false))))

(declare-fun b!7312493 () Bool)

(assert (=> b!7312493 (= e!4377069 ((_ map or) (store ((as const (Array B!3485 Bool)) false) (h!77468 (t!385284 res!2954031)) true) (content!14850 (t!385284 (t!385284 res!2954031)))))))

(assert (= (and d!2270498 c!1357644) b!7312492))

(assert (= (and d!2270498 (not c!1357644)) b!7312493))

(declare-fun m!7976736 () Bool)

(assert (=> b!7312493 m!7976736))

(declare-fun m!7976738 () Bool)

(assert (=> b!7312493 m!7976738))

(assert (=> b!7312208 d!2270498))

(declare-fun d!2270500 () Bool)

(declare-fun lt!2600795 () Bool)

(assert (=> d!2270500 (= lt!2600795 (select (content!14850 (t!385284 lt!2600724)) (h!77468 (t!385284 lRes!24))))))

(declare-fun e!4377071 () Bool)

(assert (=> d!2270500 (= lt!2600795 e!4377071)))

(declare-fun res!2954375 () Bool)

(assert (=> d!2270500 (=> (not res!2954375) (not e!4377071))))

(assert (=> d!2270500 (= res!2954375 ((_ is Cons!71020) (t!385284 lt!2600724)))))

(assert (=> d!2270500 (= (contains!20763 (t!385284 lt!2600724) (h!77468 (t!385284 lRes!24))) lt!2600795)))

(declare-fun b!7312494 () Bool)

(declare-fun e!4377070 () Bool)

(assert (=> b!7312494 (= e!4377071 e!4377070)))

(declare-fun res!2954376 () Bool)

(assert (=> b!7312494 (=> res!2954376 e!4377070)))

(assert (=> b!7312494 (= res!2954376 (= (h!77468 (t!385284 lt!2600724)) (h!77468 (t!385284 lRes!24))))))

(declare-fun b!7312495 () Bool)

(assert (=> b!7312495 (= e!4377070 (contains!20763 (t!385284 (t!385284 lt!2600724)) (h!77468 (t!385284 lRes!24))))))

(assert (= (and d!2270500 res!2954375) b!7312494))

(assert (= (and b!7312494 (not res!2954376)) b!7312495))

(declare-fun m!7976740 () Bool)

(assert (=> d!2270500 m!7976740))

(declare-fun m!7976742 () Bool)

(assert (=> d!2270500 m!7976742))

(declare-fun m!7976744 () Bool)

(assert (=> b!7312495 m!7976744))

(assert (=> b!7312169 d!2270500))

(declare-fun d!2270502 () Bool)

(declare-fun lt!2600796 () Bool)

(assert (=> d!2270502 (= lt!2600796 (select (content!14850 lt!2600740) (h!77468 (t!385284 lRes!24))))))

(declare-fun e!4377073 () Bool)

(assert (=> d!2270502 (= lt!2600796 e!4377073)))

(declare-fun res!2954377 () Bool)

(assert (=> d!2270502 (=> (not res!2954377) (not e!4377073))))

(assert (=> d!2270502 (= res!2954377 ((_ is Cons!71020) lt!2600740))))

(assert (=> d!2270502 (= (contains!20763 lt!2600740 (h!77468 (t!385284 lRes!24))) lt!2600796)))

(declare-fun b!7312496 () Bool)

(declare-fun e!4377072 () Bool)

(assert (=> b!7312496 (= e!4377073 e!4377072)))

(declare-fun res!2954378 () Bool)

(assert (=> b!7312496 (=> res!2954378 e!4377072)))

(assert (=> b!7312496 (= res!2954378 (= (h!77468 lt!2600740) (h!77468 (t!385284 lRes!24))))))

(declare-fun b!7312497 () Bool)

(assert (=> b!7312497 (= e!4377072 (contains!20763 (t!385284 lt!2600740) (h!77468 (t!385284 lRes!24))))))

(assert (= (and d!2270502 res!2954377) b!7312496))

(assert (= (and b!7312496 (not res!2954378)) b!7312497))

(declare-fun m!7976746 () Bool)

(assert (=> d!2270502 m!7976746))

(declare-fun m!7976748 () Bool)

(assert (=> d!2270502 m!7976748))

(declare-fun m!7976750 () Bool)

(assert (=> b!7312497 m!7976750))

(assert (=> bs!1914552 d!2270502))

(declare-fun d!2270504 () Bool)

(declare-fun res!2954380 () Bool)

(declare-fun e!4377074 () Bool)

(assert (=> d!2270504 (=> res!2954380 e!4377074)))

(assert (=> d!2270504 (= res!2954380 ((_ is Nil!71020) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))))))

(assert (=> d!2270504 (= (subseq!803 (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))) (t!385284 (t!385284 lt!2600676))) e!4377074)))

(declare-fun b!7312501 () Bool)

(declare-fun e!4377077 () Bool)

(assert (=> b!7312501 (= e!4377077 (subseq!803 (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312499 () Bool)

(declare-fun e!4377075 () Bool)

(assert (=> b!7312499 (= e!4377075 e!4377077)))

(declare-fun res!2954379 () Bool)

(assert (=> b!7312499 (=> res!2954379 e!4377077)))

(declare-fun e!4377076 () Bool)

(assert (=> b!7312499 (= res!2954379 e!4377076)))

(declare-fun res!2954381 () Bool)

(assert (=> b!7312499 (=> (not res!2954381) (not e!4377076))))

(assert (=> b!7312499 (= res!2954381 (= (h!77468 (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (h!77468 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312498 () Bool)

(assert (=> b!7312498 (= e!4377074 e!4377075)))

(declare-fun res!2954382 () Bool)

(assert (=> b!7312498 (=> (not res!2954382) (not e!4377075))))

(assert (=> b!7312498 (= res!2954382 ((_ is Cons!71020) (t!385284 (t!385284 lt!2600676))))))

(declare-fun b!7312500 () Bool)

(assert (=> b!7312500 (= e!4377076 (subseq!803 (t!385284 (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(assert (= (and d!2270504 (not res!2954380)) b!7312498))

(assert (= (and b!7312498 res!2954382) b!7312499))

(assert (= (and b!7312499 res!2954381) b!7312500))

(assert (= (and b!7312499 (not res!2954379)) b!7312501))

(assert (=> b!7312501 m!7976340))

(declare-fun m!7976752 () Bool)

(assert (=> b!7312500 m!7976752))

(assert (=> b!7312211 d!2270504))

(declare-fun d!2270506 () Bool)

(declare-fun res!2954383 () Bool)

(declare-fun e!4377078 () Bool)

(assert (=> d!2270506 (=> res!2954383 e!4377078)))

(assert (=> d!2270506 (= res!2954383 ((_ is Nil!71020) (t!385284 (t!385284 lRes!24))))))

(assert (=> d!2270506 (= (forall!17728 (t!385284 (t!385284 lRes!24)) lambda!451636) e!4377078)))

(declare-fun b!7312502 () Bool)

(declare-fun e!4377079 () Bool)

(assert (=> b!7312502 (= e!4377078 e!4377079)))

(declare-fun res!2954384 () Bool)

(assert (=> b!7312502 (=> (not res!2954384) (not e!4377079))))

(assert (=> b!7312502 (= res!2954384 (dynLambda!29068 lambda!451636 (h!77468 (t!385284 (t!385284 lRes!24)))))))

(declare-fun b!7312503 () Bool)

(assert (=> b!7312503 (= e!4377079 (forall!17728 (t!385284 (t!385284 (t!385284 lRes!24))) lambda!451636))))

(assert (= (and d!2270506 (not res!2954383)) b!7312502))

(assert (= (and b!7312502 res!2954384) b!7312503))

(declare-fun b_lambda!282199 () Bool)

(assert (=> (not b_lambda!282199) (not b!7312502)))

(declare-fun m!7976754 () Bool)

(assert (=> b!7312502 m!7976754))

(declare-fun m!7976756 () Bool)

(assert (=> b!7312503 m!7976756))

(assert (=> b!7312231 d!2270506))

(declare-fun d!2270508 () Bool)

(declare-fun lt!2600797 () Bool)

(assert (=> d!2270508 (= lt!2600797 (select (content!14850 (t!385284 (t!385284 lt!2600715))) (h!77468 (t!385284 lt!2600715))))))

(declare-fun e!4377081 () Bool)

(assert (=> d!2270508 (= lt!2600797 e!4377081)))

(declare-fun res!2954385 () Bool)

(assert (=> d!2270508 (=> (not res!2954385) (not e!4377081))))

(assert (=> d!2270508 (= res!2954385 ((_ is Cons!71020) (t!385284 (t!385284 lt!2600715))))))

(assert (=> d!2270508 (= (contains!20763 (t!385284 (t!385284 lt!2600715)) (h!77468 (t!385284 lt!2600715))) lt!2600797)))

(declare-fun b!7312504 () Bool)

(declare-fun e!4377080 () Bool)

(assert (=> b!7312504 (= e!4377081 e!4377080)))

(declare-fun res!2954386 () Bool)

(assert (=> b!7312504 (=> res!2954386 e!4377080)))

(assert (=> b!7312504 (= res!2954386 (= (h!77468 (t!385284 (t!385284 lt!2600715))) (h!77468 (t!385284 lt!2600715))))))

(declare-fun b!7312505 () Bool)

(assert (=> b!7312505 (= e!4377080 (contains!20763 (t!385284 (t!385284 (t!385284 lt!2600715))) (h!77468 (t!385284 lt!2600715))))))

(assert (= (and d!2270508 res!2954385) b!7312504))

(assert (= (and b!7312504 (not res!2954386)) b!7312505))

(assert (=> d!2270508 m!7976344))

(declare-fun m!7976758 () Bool)

(assert (=> d!2270508 m!7976758))

(declare-fun m!7976760 () Bool)

(assert (=> b!7312505 m!7976760))

(assert (=> b!7312203 d!2270508))

(declare-fun d!2270510 () Bool)

(declare-fun c!1357645 () Bool)

(assert (=> d!2270510 (= c!1357645 ((_ is Nil!71020) (t!385284 (t!385284 lt!2600715))))))

(declare-fun e!4377082 () (InoxSet B!3485))

(assert (=> d!2270510 (= (content!14850 (t!385284 (t!385284 lt!2600715))) e!4377082)))

(declare-fun b!7312506 () Bool)

(assert (=> b!7312506 (= e!4377082 ((as const (Array B!3485 Bool)) false))))

(declare-fun b!7312507 () Bool)

(assert (=> b!7312507 (= e!4377082 ((_ map or) (store ((as const (Array B!3485 Bool)) false) (h!77468 (t!385284 (t!385284 lt!2600715))) true) (content!14850 (t!385284 (t!385284 (t!385284 lt!2600715))))))))

(assert (= (and d!2270510 c!1357645) b!7312506))

(assert (= (and d!2270510 (not c!1357645)) b!7312507))

(declare-fun m!7976762 () Bool)

(assert (=> b!7312507 m!7976762))

(declare-fun m!7976764 () Bool)

(assert (=> b!7312507 m!7976764))

(assert (=> b!7312198 d!2270510))

(declare-fun d!2270512 () Bool)

(declare-fun res!2954388 () Bool)

(declare-fun e!4377083 () Bool)

(assert (=> d!2270512 (=> res!2954388 e!4377083)))

(assert (=> d!2270512 (= res!2954388 ((_ is Nil!71020) (t!385284 (t!385284 lRes!24))))))

(assert (=> d!2270512 (= (subseq!803 (t!385284 (t!385284 lRes!24)) (t!385284 (t!385284 (t!385284 lt!2600676)))) e!4377083)))

(declare-fun b!7312511 () Bool)

(declare-fun e!4377086 () Bool)

(assert (=> b!7312511 (= e!4377086 (subseq!803 (t!385284 (t!385284 lRes!24)) (t!385284 (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(declare-fun b!7312509 () Bool)

(declare-fun e!4377084 () Bool)

(assert (=> b!7312509 (= e!4377084 e!4377086)))

(declare-fun res!2954387 () Bool)

(assert (=> b!7312509 (=> res!2954387 e!4377086)))

(declare-fun e!4377085 () Bool)

(assert (=> b!7312509 (= res!2954387 e!4377085)))

(declare-fun res!2954389 () Bool)

(assert (=> b!7312509 (=> (not res!2954389) (not e!4377085))))

(assert (=> b!7312509 (= res!2954389 (= (h!77468 (t!385284 (t!385284 lRes!24))) (h!77468 (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(declare-fun b!7312508 () Bool)

(assert (=> b!7312508 (= e!4377083 e!4377084)))

(declare-fun res!2954390 () Bool)

(assert (=> b!7312508 (=> (not res!2954390) (not e!4377084))))

(assert (=> b!7312508 (= res!2954390 ((_ is Cons!71020) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312510 () Bool)

(assert (=> b!7312510 (= e!4377085 (subseq!803 (t!385284 (t!385284 (t!385284 lRes!24))) (t!385284 (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(assert (= (and d!2270512 (not res!2954388)) b!7312508))

(assert (= (and b!7312508 res!2954390) b!7312509))

(assert (= (and b!7312509 res!2954389) b!7312510))

(assert (= (and b!7312509 (not res!2954387)) b!7312511))

(assert (=> b!7312511 m!7976676))

(assert (=> b!7312510 m!7976690))

(assert (=> b!7312174 d!2270512))

(declare-fun bs!1914562 () Bool)

(declare-fun d!2270514 () Bool)

(assert (= bs!1914562 (and d!2270514 d!2270008)))

(declare-fun lambda!451647 () Int)

(assert (=> bs!1914562 (not (= lambda!451647 lambda!451624))))

(declare-fun bs!1914563 () Bool)

(assert (= bs!1914563 (and d!2270514 d!2270144)))

(assert (=> bs!1914563 (not (= lambda!451647 lambda!451639))))

(declare-fun bs!1914564 () Bool)

(assert (= bs!1914564 (and d!2270514 d!2270292)))

(assert (=> bs!1914564 (= (= lambda!451639 lambda!451624) (= lambda!451647 lambda!451645))))

(assert (=> d!2270514 true))

(assert (=> d!2270514 (< (dynLambda!29067 order!29079 lambda!451639) (dynLambda!29067 order!29079 lambda!451647))))

(assert (=> d!2270514 (= (exists!4512 (toList!11555 s!1445) lambda!451639) (not (forall!17730 (toList!11555 s!1445) lambda!451647)))))

(declare-fun bs!1914565 () Bool)

(assert (= bs!1914565 d!2270514))

(assert (=> bs!1914565 m!7976108))

(declare-fun m!7976766 () Bool)

(assert (=> bs!1914565 m!7976766))

(assert (=> d!2270268 d!2270514))

(assert (=> d!2270268 d!2270294))

(declare-fun d!2270516 () Bool)

(declare-fun res!2954391 () Bool)

(assert (=> d!2270516 (= res!2954391 (exists!4512 (toList!11555 s!1445) lambda!451639))))

(assert (=> d!2270516 true))

(assert (=> d!2270516 (= (choose!56641 s!1445 lambda!451639) res!2954391)))

(declare-fun bs!1914566 () Bool)

(assert (= bs!1914566 d!2270516))

(assert (=> bs!1914566 m!7976108))

(assert (=> bs!1914566 m!7976108))

(assert (=> bs!1914566 m!7976346))

(assert (=> d!2270268 d!2270516))

(declare-fun d!2270518 () Bool)

(declare-fun lt!2600798 () Bool)

(assert (=> d!2270518 (= lt!2600798 (select (content!14850 (t!385284 (t!385284 lt!2600674))) (h!77468 (t!385284 lRes!24))))))

(declare-fun e!4377088 () Bool)

(assert (=> d!2270518 (= lt!2600798 e!4377088)))

(declare-fun res!2954392 () Bool)

(assert (=> d!2270518 (=> (not res!2954392) (not e!4377088))))

(assert (=> d!2270518 (= res!2954392 ((_ is Cons!71020) (t!385284 (t!385284 lt!2600674))))))

(assert (=> d!2270518 (= (contains!20763 (t!385284 (t!385284 lt!2600674)) (h!77468 (t!385284 lRes!24))) lt!2600798)))

(declare-fun b!7312512 () Bool)

(declare-fun e!4377087 () Bool)

(assert (=> b!7312512 (= e!4377088 e!4377087)))

(declare-fun res!2954393 () Bool)

(assert (=> b!7312512 (=> res!2954393 e!4377087)))

(assert (=> b!7312512 (= res!2954393 (= (h!77468 (t!385284 (t!385284 lt!2600674))) (h!77468 (t!385284 lRes!24))))))

(declare-fun b!7312513 () Bool)

(assert (=> b!7312513 (= e!4377087 (contains!20763 (t!385284 (t!385284 (t!385284 lt!2600674))) (h!77468 (t!385284 lRes!24))))))

(assert (= (and d!2270518 res!2954392) b!7312512))

(assert (= (and b!7312512 (not res!2954393)) b!7312513))

(assert (=> d!2270518 m!7976282))

(declare-fun m!7976768 () Bool)

(assert (=> d!2270518 m!7976768))

(declare-fun m!7976770 () Bool)

(assert (=> b!7312513 m!7976770))

(assert (=> b!7312235 d!2270518))

(assert (=> b!7312167 d!2270512))

(declare-fun d!2270520 () Bool)

(declare-fun lt!2600799 () Bool)

(assert (=> d!2270520 (= lt!2600799 (select (content!14850 (t!385284 (t!385284 lRes!24))) (h!77468 lRes!24)))))

(declare-fun e!4377090 () Bool)

(assert (=> d!2270520 (= lt!2600799 e!4377090)))

(declare-fun res!2954394 () Bool)

(assert (=> d!2270520 (=> (not res!2954394) (not e!4377090))))

(assert (=> d!2270520 (= res!2954394 ((_ is Cons!71020) (t!385284 (t!385284 lRes!24))))))

(assert (=> d!2270520 (= (contains!20763 (t!385284 (t!385284 lRes!24)) (h!77468 lRes!24)) lt!2600799)))

(declare-fun b!7312514 () Bool)

(declare-fun e!4377089 () Bool)

(assert (=> b!7312514 (= e!4377090 e!4377089)))

(declare-fun res!2954395 () Bool)

(assert (=> b!7312514 (=> res!2954395 e!4377089)))

(assert (=> b!7312514 (= res!2954395 (= (h!77468 (t!385284 (t!385284 lRes!24))) (h!77468 lRes!24)))))

(declare-fun b!7312515 () Bool)

(assert (=> b!7312515 (= e!4377089 (contains!20763 (t!385284 (t!385284 (t!385284 lRes!24))) (h!77468 lRes!24)))))

(assert (= (and d!2270520 res!2954394) b!7312514))

(assert (= (and b!7312514 (not res!2954395)) b!7312515))

(assert (=> d!2270520 m!7976640))

(declare-fun m!7976772 () Bool)

(assert (=> d!2270520 m!7976772))

(declare-fun m!7976774 () Bool)

(assert (=> b!7312515 m!7976774))

(assert (=> b!7312202 d!2270520))

(declare-fun d!2270522 () Bool)

(declare-fun res!2954397 () Bool)

(declare-fun e!4377091 () Bool)

(assert (=> d!2270522 (=> res!2954397 e!4377091)))

(assert (=> d!2270522 (= res!2954397 ((_ is Nil!71020) (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))))))))

(assert (=> d!2270522 (= (subseq!803 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (t!385284 (t!385284 (t!385284 lt!2600676)))) e!4377091)))

(declare-fun e!4377094 () Bool)

(declare-fun b!7312519 () Bool)

(assert (=> b!7312519 (= e!4377094 (subseq!803 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (t!385284 (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(declare-fun b!7312517 () Bool)

(declare-fun e!4377092 () Bool)

(assert (=> b!7312517 (= e!4377092 e!4377094)))

(declare-fun res!2954396 () Bool)

(assert (=> b!7312517 (=> res!2954396 e!4377094)))

(declare-fun e!4377093 () Bool)

(assert (=> b!7312517 (= res!2954396 e!4377093)))

(declare-fun res!2954398 () Bool)

(assert (=> b!7312517 (=> (not res!2954398) (not e!4377093))))

(assert (=> b!7312517 (= res!2954398 (= (h!77468 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))))) (h!77468 (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(declare-fun b!7312516 () Bool)

(assert (=> b!7312516 (= e!4377091 e!4377092)))

(declare-fun res!2954399 () Bool)

(assert (=> b!7312516 (=> (not res!2954399) (not e!4377092))))

(assert (=> b!7312516 (= res!2954399 ((_ is Cons!71020) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312518 () Bool)

(assert (=> b!7312518 (= e!4377093 (subseq!803 (t!385284 (ite c!1357599 (ite c!1357582 lRes!24 (t!385284 lRes!24)) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))))) (t!385284 (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(assert (= (and d!2270522 (not res!2954397)) b!7312516))

(assert (= (and b!7312516 res!2954399) b!7312517))

(assert (= (and b!7312517 res!2954398) b!7312518))

(assert (= (and b!7312517 (not res!2954396)) b!7312519))

(declare-fun m!7976776 () Bool)

(assert (=> b!7312519 m!7976776))

(declare-fun m!7976778 () Bool)

(assert (=> b!7312518 m!7976778))

(assert (=> b!7312180 d!2270522))

(declare-fun d!2270524 () Bool)

(declare-fun res!2954401 () Bool)

(declare-fun e!4377095 () Bool)

(assert (=> d!2270524 (=> res!2954401 e!4377095)))

(assert (=> d!2270524 (= res!2954401 ((_ is Nil!71020) (tail!14625 lRes!24)))))

(assert (=> d!2270524 (= (subseq!803 (tail!14625 lRes!24) (t!385284 (t!385284 lt!2600676))) e!4377095)))

(declare-fun b!7312523 () Bool)

(declare-fun e!4377098 () Bool)

(assert (=> b!7312523 (= e!4377098 (subseq!803 (tail!14625 lRes!24) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312521 () Bool)

(declare-fun e!4377096 () Bool)

(assert (=> b!7312521 (= e!4377096 e!4377098)))

(declare-fun res!2954400 () Bool)

(assert (=> b!7312521 (=> res!2954400 e!4377098)))

(declare-fun e!4377097 () Bool)

(assert (=> b!7312521 (= res!2954400 e!4377097)))

(declare-fun res!2954402 () Bool)

(assert (=> b!7312521 (=> (not res!2954402) (not e!4377097))))

(assert (=> b!7312521 (= res!2954402 (= (h!77468 (tail!14625 lRes!24)) (h!77468 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312520 () Bool)

(assert (=> b!7312520 (= e!4377095 e!4377096)))

(declare-fun res!2954403 () Bool)

(assert (=> b!7312520 (=> (not res!2954403) (not e!4377096))))

(assert (=> b!7312520 (= res!2954403 ((_ is Cons!71020) (t!385284 (t!385284 lt!2600676))))))

(declare-fun b!7312522 () Bool)

(assert (=> b!7312522 (= e!4377097 (subseq!803 (t!385284 (tail!14625 lRes!24)) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(assert (= (and d!2270524 (not res!2954401)) b!7312520))

(assert (= (and b!7312520 res!2954403) b!7312521))

(assert (= (and b!7312521 res!2954402) b!7312522))

(assert (= (and b!7312521 (not res!2954400)) b!7312523))

(assert (=> b!7312523 m!7975912))

(declare-fun m!7976780 () Bool)

(assert (=> b!7312523 m!7976780))

(assert (=> b!7312522 m!7976658))

(assert (=> b!7312245 d!2270524))

(declare-fun d!2270526 () Bool)

(declare-fun c!1357646 () Bool)

(assert (=> d!2270526 (= c!1357646 ((_ is Nil!71020) lt!2600724))))

(declare-fun e!4377099 () (InoxSet B!3485))

(assert (=> d!2270526 (= (content!14850 lt!2600724) e!4377099)))

(declare-fun b!7312524 () Bool)

(assert (=> b!7312524 (= e!4377099 ((as const (Array B!3485 Bool)) false))))

(declare-fun b!7312525 () Bool)

(assert (=> b!7312525 (= e!4377099 ((_ map or) (store ((as const (Array B!3485 Bool)) false) (h!77468 lt!2600724) true) (content!14850 (t!385284 lt!2600724))))))

(assert (= (and d!2270526 c!1357646) b!7312524))

(assert (= (and d!2270526 (not c!1357646)) b!7312525))

(declare-fun m!7976782 () Bool)

(assert (=> b!7312525 m!7976782))

(assert (=> b!7312525 m!7976740))

(assert (=> d!2270246 d!2270526))

(declare-fun d!2270528 () Bool)

(declare-fun res!2954404 () Bool)

(declare-fun e!4377100 () Bool)

(assert (=> d!2270528 (=> res!2954404 e!4377100)))

(assert (=> d!2270528 (= res!2954404 ((_ is Nil!71020) (t!385284 (t!385284 (t!385284 (t!385284 lRes!24))))))))

(assert (=> d!2270528 (= (forall!17728 (t!385284 (t!385284 (t!385284 (t!385284 lRes!24)))) lambda!451615) e!4377100)))

(declare-fun b!7312526 () Bool)

(declare-fun e!4377101 () Bool)

(assert (=> b!7312526 (= e!4377100 e!4377101)))

(declare-fun res!2954405 () Bool)

(assert (=> b!7312526 (=> (not res!2954405) (not e!4377101))))

(assert (=> b!7312526 (= res!2954405 (dynLambda!29068 lambda!451615 (h!77468 (t!385284 (t!385284 (t!385284 (t!385284 lRes!24)))))))))

(declare-fun b!7312527 () Bool)

(assert (=> b!7312527 (= e!4377101 (forall!17728 (t!385284 (t!385284 (t!385284 (t!385284 (t!385284 lRes!24))))) lambda!451615))))

(assert (= (and d!2270528 (not res!2954404)) b!7312526))

(assert (= (and b!7312526 res!2954405) b!7312527))

(declare-fun b_lambda!282201 () Bool)

(assert (=> (not b_lambda!282201) (not b!7312526)))

(declare-fun m!7976784 () Bool)

(assert (=> b!7312526 m!7976784))

(declare-fun m!7976786 () Bool)

(assert (=> b!7312527 m!7976786))

(assert (=> b!7312233 d!2270528))

(declare-fun d!2270530 () Bool)

(declare-fun lt!2600800 () Bool)

(assert (=> d!2270530 (= lt!2600800 (select (content!14850 (t!385284 (t!385284 (t!385284 lt!2600676)))) (h!77468 lRes!24)))))

(declare-fun e!4377103 () Bool)

(assert (=> d!2270530 (= lt!2600800 e!4377103)))

(declare-fun res!2954406 () Bool)

(assert (=> d!2270530 (=> (not res!2954406) (not e!4377103))))

(assert (=> d!2270530 (= res!2954406 ((_ is Cons!71020) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(assert (=> d!2270530 (= (contains!20763 (t!385284 (t!385284 (t!385284 lt!2600676))) (h!77468 lRes!24)) lt!2600800)))

(declare-fun b!7312528 () Bool)

(declare-fun e!4377102 () Bool)

(assert (=> b!7312528 (= e!4377103 e!4377102)))

(declare-fun res!2954407 () Bool)

(assert (=> b!7312528 (=> res!2954407 e!4377102)))

(assert (=> b!7312528 (= res!2954407 (= (h!77468 (t!385284 (t!385284 (t!385284 lt!2600676)))) (h!77468 lRes!24)))))

(declare-fun b!7312529 () Bool)

(assert (=> b!7312529 (= e!4377102 (contains!20763 (t!385284 (t!385284 (t!385284 (t!385284 lt!2600676)))) (h!77468 lRes!24)))))

(assert (= (and d!2270530 res!2954406) b!7312528))

(assert (= (and b!7312528 (not res!2954407)) b!7312529))

(assert (=> d!2270530 m!7976656))

(declare-fun m!7976788 () Bool)

(assert (=> d!2270530 m!7976788))

(declare-fun m!7976790 () Bool)

(assert (=> b!7312529 m!7976790))

(assert (=> b!7312184 d!2270530))

(assert (=> b!7312171 d!2270448))

(declare-fun d!2270532 () Bool)

(declare-fun res!2954409 () Bool)

(declare-fun e!4377104 () Bool)

(assert (=> d!2270532 (=> res!2954409 e!4377104)))

(assert (=> d!2270532 (= res!2954409 ((_ is Nil!71020) (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))))))

(assert (=> d!2270532 (= (subseq!803 (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))) (t!385284 (t!385284 (t!385284 lt!2600676)))) e!4377104)))

(declare-fun b!7312533 () Bool)

(declare-fun e!4377107 () Bool)

(assert (=> b!7312533 (= e!4377107 (subseq!803 (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24))) (t!385284 (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(declare-fun b!7312531 () Bool)

(declare-fun e!4377105 () Bool)

(assert (=> b!7312531 (= e!4377105 e!4377107)))

(declare-fun res!2954408 () Bool)

(assert (=> b!7312531 (=> res!2954408 e!4377107)))

(declare-fun e!4377106 () Bool)

(assert (=> b!7312531 (= res!2954408 e!4377106)))

(declare-fun res!2954410 () Bool)

(assert (=> b!7312531 (=> (not res!2954410) (not e!4377106))))

(assert (=> b!7312531 (= res!2954410 (= (h!77468 (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (h!77468 (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(declare-fun b!7312530 () Bool)

(assert (=> b!7312530 (= e!4377104 e!4377105)))

(declare-fun res!2954411 () Bool)

(assert (=> b!7312530 (=> (not res!2954411) (not e!4377105))))

(assert (=> b!7312530 (= res!2954411 ((_ is Cons!71020) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312532 () Bool)

(assert (=> b!7312532 (= e!4377106 (subseq!803 (t!385284 (t!385284 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (t!385284 (t!385284 (t!385284 (t!385284 lt!2600676))))))))

(assert (= (and d!2270532 (not res!2954409)) b!7312530))

(assert (= (and b!7312530 res!2954411) b!7312531))

(assert (= (and b!7312531 res!2954410) b!7312532))

(assert (= (and b!7312531 (not res!2954408)) b!7312533))

(assert (=> b!7312533 m!7976696))

(declare-fun m!7976792 () Bool)

(assert (=> b!7312532 m!7976792))

(assert (=> b!7312195 d!2270532))

(declare-fun d!2270534 () Bool)

(declare-fun res!2954413 () Bool)

(declare-fun e!4377108 () Bool)

(assert (=> d!2270534 (=> res!2954413 e!4377108)))

(assert (=> d!2270534 (= res!2954413 ((_ is Nil!71020) (tail!14625 (ite c!1357582 lRes!24 (t!385284 lRes!24)))))))

(assert (=> d!2270534 (= (subseq!803 (tail!14625 (ite c!1357582 lRes!24 (t!385284 lRes!24))) (t!385284 (t!385284 lt!2600676))) e!4377108)))

(declare-fun b!7312537 () Bool)

(declare-fun e!4377111 () Bool)

(assert (=> b!7312537 (= e!4377111 (subseq!803 (tail!14625 (ite c!1357582 lRes!24 (t!385284 lRes!24))) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312535 () Bool)

(declare-fun e!4377109 () Bool)

(assert (=> b!7312535 (= e!4377109 e!4377111)))

(declare-fun res!2954412 () Bool)

(assert (=> b!7312535 (=> res!2954412 e!4377111)))

(declare-fun e!4377110 () Bool)

(assert (=> b!7312535 (= res!2954412 e!4377110)))

(declare-fun res!2954414 () Bool)

(assert (=> b!7312535 (=> (not res!2954414) (not e!4377110))))

(assert (=> b!7312535 (= res!2954414 (= (h!77468 (tail!14625 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (h!77468 (t!385284 (t!385284 lt!2600676)))))))

(declare-fun b!7312534 () Bool)

(assert (=> b!7312534 (= e!4377108 e!4377109)))

(declare-fun res!2954415 () Bool)

(assert (=> b!7312534 (=> (not res!2954415) (not e!4377109))))

(assert (=> b!7312534 (= res!2954415 ((_ is Cons!71020) (t!385284 (t!385284 lt!2600676))))))

(declare-fun b!7312536 () Bool)

(assert (=> b!7312536 (= e!4377110 (subseq!803 (t!385284 (tail!14625 (ite c!1357582 lRes!24 (t!385284 lRes!24)))) (t!385284 (t!385284 (t!385284 lt!2600676)))))))

(assert (= (and d!2270534 (not res!2954413)) b!7312534))

(assert (= (and b!7312534 res!2954415) b!7312535))

(assert (= (and b!7312535 res!2954414) b!7312536))

(assert (= (and b!7312535 (not res!2954412)) b!7312537))

(assert (=> b!7312537 m!7976098))

(declare-fun m!7976794 () Bool)

(assert (=> b!7312537 m!7976794))

(assert (=> b!7312536 m!7976702))

(assert (=> b!7312220 d!2270534))

(declare-fun d!2270536 () Bool)

(declare-fun c!1357647 () Bool)

(assert (=> d!2270536 (= c!1357647 ((_ is Nil!71020) (t!385284 (t!385284 lt!2600707))))))

(declare-fun e!4377112 () (InoxSet B!3485))

(assert (=> d!2270536 (= (content!14850 (t!385284 (t!385284 lt!2600707))) e!4377112)))

(declare-fun b!7312538 () Bool)

(assert (=> b!7312538 (= e!4377112 ((as const (Array B!3485 Bool)) false))))

(declare-fun b!7312539 () Bool)

(assert (=> b!7312539 (= e!4377112 ((_ map or) (store ((as const (Array B!3485 Bool)) false) (h!77468 (t!385284 (t!385284 lt!2600707))) true) (content!14850 (t!385284 (t!385284 (t!385284 lt!2600707))))))))

(assert (= (and d!2270536 c!1357647) b!7312538))

(assert (= (and d!2270536 (not c!1357647)) b!7312539))

(declare-fun m!7976796 () Bool)

(assert (=> b!7312539 m!7976796))

(declare-fun m!7976798 () Bool)

(assert (=> b!7312539 m!7976798))

(assert (=> b!7312188 d!2270536))

(assert (=> b!7312200 d!2270492))

(declare-fun d!2270538 () Bool)

(declare-fun lt!2600801 () Bool)

(assert (=> d!2270538 (= lt!2600801 (select (content!14850 (t!385284 res!2954004)) (h!77468 res!2954004)))))

(declare-fun e!4377114 () Bool)

(assert (=> d!2270538 (= lt!2600801 e!4377114)))

(declare-fun res!2954416 () Bool)

(assert (=> d!2270538 (=> (not res!2954416) (not e!4377114))))

(assert (=> d!2270538 (= res!2954416 ((_ is Cons!71020) (t!385284 res!2954004)))))

(assert (=> d!2270538 (= (contains!20763 (t!385284 res!2954004) (h!77468 res!2954004)) lt!2600801)))

(declare-fun b!7312540 () Bool)

(declare-fun e!4377113 () Bool)

(assert (=> b!7312540 (= e!4377114 e!4377113)))

(declare-fun res!2954417 () Bool)

(assert (=> b!7312540 (=> res!2954417 e!4377113)))

(assert (=> b!7312540 (= res!2954417 (= (h!77468 (t!385284 res!2954004)) (h!77468 res!2954004)))))

(declare-fun b!7312541 () Bool)

(assert (=> b!7312541 (= e!4377113 (contains!20763 (t!385284 (t!385284 res!2954004)) (h!77468 res!2954004)))))

(assert (= (and d!2270538 res!2954416) b!7312540))

(assert (= (and b!7312540 (not res!2954417)) b!7312541))

(assert (=> d!2270538 m!7976390))

(declare-fun m!7976800 () Bool)

(assert (=> d!2270538 m!7976800))

(declare-fun m!7976802 () Bool)

(assert (=> b!7312541 m!7976802))

(assert (=> b!7312240 d!2270538))

(declare-fun d!2270540 () Bool)

(declare-fun lt!2600802 () Bool)

(assert (=> d!2270540 (= lt!2600802 (select (content!14850 (t!385284 lt!2600674)) (h!77468 (t!385284 (t!385284 lRes!24)))))))

(declare-fun e!4377116 () Bool)

(assert (=> d!2270540 (= lt!2600802 e!4377116)))

(declare-fun res!2954418 () Bool)

(assert (=> d!2270540 (=> (not res!2954418) (not e!4377116))))

(assert (=> d!2270540 (= res!2954418 ((_ is Cons!71020) (t!385284 lt!2600674)))))

(assert (=> d!2270540 (= (contains!20763 (t!385284 lt!2600674) (h!77468 (t!385284 (t!385284 lRes!24)))) lt!2600802)))

(declare-fun b!7312542 () Bool)

(declare-fun e!4377115 () Bool)

(assert (=> b!7312542 (= e!4377116 e!4377115)))

(declare-fun res!2954419 () Bool)

(assert (=> b!7312542 (=> res!2954419 e!4377115)))

(assert (=> b!7312542 (= res!2954419 (= (h!77468 (t!385284 lt!2600674)) (h!77468 (t!385284 (t!385284 lRes!24)))))))

(declare-fun b!7312543 () Bool)

(assert (=> b!7312543 (= e!4377115 (contains!20763 (t!385284 (t!385284 lt!2600674)) (h!77468 (t!385284 (t!385284 lRes!24)))))))

(assert (= (and d!2270540 res!2954418) b!7312542))

(assert (= (and b!7312542 (not res!2954419)) b!7312543))

(assert (=> d!2270540 m!7976042))

(declare-fun m!7976804 () Bool)

(assert (=> d!2270540 m!7976804))

(declare-fun m!7976806 () Bool)

(assert (=> b!7312543 m!7976806))

(assert (=> b!7312192 d!2270540))

(assert (=> b!7312215 d!2270460))

(declare-fun d!2270542 () Bool)

(declare-fun lt!2600803 () Bool)

(assert (=> d!2270542 (= lt!2600803 (select (content!14850 lt!2600724) (h!77468 (t!385284 (t!385284 lRes!24)))))))

(declare-fun e!4377118 () Bool)

(assert (=> d!2270542 (= lt!2600803 e!4377118)))

(declare-fun res!2954420 () Bool)

(assert (=> d!2270542 (=> (not res!2954420) (not e!4377118))))

(assert (=> d!2270542 (= res!2954420 ((_ is Cons!71020) lt!2600724))))

(assert (=> d!2270542 (= (contains!20763 lt!2600724 (h!77468 (t!385284 (t!385284 lRes!24)))) lt!2600803)))

(declare-fun b!7312544 () Bool)

(declare-fun e!4377117 () Bool)

(assert (=> b!7312544 (= e!4377118 e!4377117)))

(declare-fun res!2954421 () Bool)

(assert (=> b!7312544 (=> res!2954421 e!4377117)))

(assert (=> b!7312544 (= res!2954421 (= (h!77468 lt!2600724) (h!77468 (t!385284 (t!385284 lRes!24)))))))

(declare-fun b!7312545 () Bool)

(assert (=> b!7312545 (= e!4377117 (contains!20763 (t!385284 lt!2600724) (h!77468 (t!385284 (t!385284 lRes!24)))))))

(assert (= (and d!2270542 res!2954420) b!7312544))

(assert (= (and b!7312544 (not res!2954421)) b!7312545))

(assert (=> d!2270542 m!7976292))

(declare-fun m!7976808 () Bool)

(assert (=> d!2270542 m!7976808))

(declare-fun m!7976810 () Bool)

(assert (=> b!7312545 m!7976810))

(assert (=> bs!1914551 d!2270542))

(declare-fun d!2270544 () Bool)

(declare-fun lt!2600804 () Bool)

(assert (=> d!2270544 (= lt!2600804 (select (content!14850 (t!385284 (t!385284 lt!2600707))) (h!77468 (t!385284 lt!2600707))))))

(declare-fun e!4377120 () Bool)

(assert (=> d!2270544 (= lt!2600804 e!4377120)))

(declare-fun res!2954422 () Bool)

(assert (=> d!2270544 (=> (not res!2954422) (not e!4377120))))

(assert (=> d!2270544 (= res!2954422 ((_ is Cons!71020) (t!385284 (t!385284 lt!2600707))))))

(assert (=> d!2270544 (= (contains!20763 (t!385284 (t!385284 lt!2600707)) (h!77468 (t!385284 lt!2600707))) lt!2600804)))

(declare-fun b!7312546 () Bool)

(declare-fun e!4377119 () Bool)

(assert (=> b!7312546 (= e!4377120 e!4377119)))

(declare-fun res!2954423 () Bool)

(assert (=> b!7312546 (=> res!2954423 e!4377119)))

(assert (=> b!7312546 (= res!2954423 (= (h!77468 (t!385284 (t!385284 lt!2600707))) (h!77468 (t!385284 lt!2600707))))))

(declare-fun b!7312547 () Bool)

(assert (=> b!7312547 (= e!4377119 (contains!20763 (t!385284 (t!385284 (t!385284 lt!2600707))) (h!77468 (t!385284 lt!2600707))))))

(assert (= (and d!2270544 res!2954422) b!7312546))

(assert (= (and b!7312546 (not res!2954423)) b!7312547))

(assert (=> d!2270544 m!7976328))

(declare-fun m!7976812 () Bool)

(assert (=> d!2270544 m!7976812))

(declare-fun m!7976814 () Bool)

(assert (=> b!7312547 m!7976814))

(assert (=> b!7312160 d!2270544))

(assert (=> d!2270256 d!2270266))

(declare-fun d!2270546 () Bool)

(declare-fun c!1357650 () Bool)

(assert (=> d!2270546 (= c!1357650 ((_ is Nil!71022) lt!2600770))))

(declare-fun e!4377123 () (InoxSet A!783))

(assert (=> d!2270546 (= (content!14852 lt!2600770) e!4377123)))

(declare-fun b!7312552 () Bool)

(assert (=> b!7312552 (= e!4377123 ((as const (Array A!783 Bool)) false))))

(declare-fun b!7312553 () Bool)

(assert (=> b!7312553 (= e!4377123 ((_ map or) (store ((as const (Array A!783 Bool)) false) (h!77470 lt!2600770) true) (content!14852 (t!385290 lt!2600770))))))

(assert (= (and d!2270546 c!1357650) b!7312552))

(assert (= (and d!2270546 (not c!1357650)) b!7312553))

(declare-fun m!7976816 () Bool)

(assert (=> b!7312553 m!7976816))

(declare-fun m!7976818 () Bool)

(assert (=> b!7312553 m!7976818))

(assert (=> b!7312225 d!2270546))

(declare-fun b!7312554 () Bool)

(declare-fun e!4377124 () Bool)

(declare-fun tp!2075302 () Bool)

(assert (=> b!7312554 (= e!4377124 (and tp_is_empty!47363 tp!2075302))))

(assert (=> b!7312246 (= tp!2075284 e!4377124)))

(assert (= (and b!7312246 ((_ is Cons!71020) (t!385284 (t!385284 res!2954004)))) b!7312554))

(declare-fun b!7312555 () Bool)

(declare-fun e!4377125 () Bool)

(declare-fun tp!2075303 () Bool)

(assert (=> b!7312555 (= e!4377125 (and tp_is_empty!47363 tp!2075303))))

(assert (=> b!7312248 (= tp!2075289 e!4377125)))

(assert (= (and b!7312248 ((_ is Cons!71020) (t!385284 (t!385284 (t!385284 (t!385284 lRes!24)))))) b!7312555))

(declare-fun condSetEmpty!53945 () Bool)

(assert (=> setNonEmpty!53939 (= condSetEmpty!53945 (= setRest!53939 ((as const (Array A!783 Bool)) false)))))

(declare-fun setRes!53945 () Bool)

(assert (=> setNonEmpty!53939 (= tp!2075285 setRes!53945)))

(declare-fun setIsEmpty!53945 () Bool)

(assert (=> setIsEmpty!53945 setRes!53945))

(declare-fun setNonEmpty!53945 () Bool)

(declare-fun tp!2075304 () Bool)

(assert (=> setNonEmpty!53945 (= setRes!53945 (and tp!2075304 tp_is_empty!47361))))

(declare-fun setElem!53945 () A!783)

(declare-fun setRest!53945 () (InoxSet A!783))

(assert (=> setNonEmpty!53945 (= setRest!53939 ((_ map or) (store ((as const (Array A!783 Bool)) false) setElem!53945 true) setRest!53945))))

(assert (= (and setNonEmpty!53939 condSetEmpty!53945) setIsEmpty!53945))

(assert (= (and setNonEmpty!53939 (not condSetEmpty!53945)) setNonEmpty!53945))

(declare-fun b!7312556 () Bool)

(declare-fun e!4377126 () Bool)

(declare-fun tp!2075305 () Bool)

(assert (=> b!7312556 (= e!4377126 (and tp_is_empty!47363 tp!2075305))))

(assert (=> b!7312247 (= tp!2075288 e!4377126)))

(assert (= (and b!7312247 ((_ is Cons!71020) (t!385284 (t!385284 res!2954031)))) b!7312556))

(declare-fun condSetEmpty!53946 () Bool)

(assert (=> setNonEmpty!53940 (= condSetEmpty!53946 (= setRest!53940 ((as const (Array B!3485 Bool)) false)))))

(declare-fun setRes!53946 () Bool)

(assert (=> setNonEmpty!53940 (= tp!2075286 setRes!53946)))

(declare-fun setIsEmpty!53946 () Bool)

(assert (=> setIsEmpty!53946 setRes!53946))

(declare-fun setNonEmpty!53946 () Bool)

(declare-fun tp!2075306 () Bool)

(assert (=> setNonEmpty!53946 (= setRes!53946 (and tp!2075306 tp_is_empty!47363))))

(declare-fun setElem!53946 () B!3485)

(declare-fun setRest!53946 () (InoxSet B!3485))

(assert (=> setNonEmpty!53946 (= setRest!53940 ((_ map or) (store ((as const (Array B!3485 Bool)) false) setElem!53946 true) setRest!53946))))

(assert (= (and setNonEmpty!53940 condSetEmpty!53946) setIsEmpty!53946))

(assert (= (and setNonEmpty!53940 (not condSetEmpty!53946)) setNonEmpty!53946))

(declare-fun condSetEmpty!53947 () Bool)

(assert (=> setNonEmpty!53941 (= condSetEmpty!53947 (= setRest!53941 ((as const (Array B!3485 Bool)) false)))))

(declare-fun setRes!53947 () Bool)

(assert (=> setNonEmpty!53941 (= tp!2075287 setRes!53947)))

(declare-fun setIsEmpty!53947 () Bool)

(assert (=> setIsEmpty!53947 setRes!53947))

(declare-fun setNonEmpty!53947 () Bool)

(declare-fun tp!2075307 () Bool)

(assert (=> setNonEmpty!53947 (= setRes!53947 (and tp!2075307 tp_is_empty!47363))))

(declare-fun setElem!53947 () B!3485)

(declare-fun setRest!53947 () (InoxSet B!3485))

(assert (=> setNonEmpty!53947 (= setRest!53941 ((_ map or) (store ((as const (Array B!3485 Bool)) false) setElem!53947 true) setRest!53947))))

(assert (= (and setNonEmpty!53941 condSetEmpty!53947) setIsEmpty!53947))

(assert (= (and setNonEmpty!53941 (not condSetEmpty!53947)) setNonEmpty!53947))

(declare-fun b_lambda!282203 () Bool)

(assert (= b_lambda!282197 (or d!2270038 b_lambda!282203)))

(declare-fun bs!1914567 () Bool)

(declare-fun d!2270548 () Bool)

(assert (= bs!1914567 (and d!2270548 d!2270038)))

(assert (=> bs!1914567 (= (dynLambda!29068 lambda!451627 (h!77468 (t!385284 (t!385284 (t!385284 lRes!24))))) (contains!20763 lt!2600724 (h!77468 (t!385284 (t!385284 (t!385284 lRes!24))))))))

(declare-fun m!7976820 () Bool)

(assert (=> bs!1914567 m!7976820))

(assert (=> b!7312462 d!2270548))

(declare-fun b_lambda!282205 () Bool)

(assert (= b_lambda!282201 (or b!7311804 b_lambda!282205)))

(declare-fun bs!1914568 () Bool)

(declare-fun d!2270550 () Bool)

(assert (= bs!1914568 (and d!2270550 b!7311804)))

(assert (=> bs!1914568 (= (dynLambda!29068 lambda!451615 (h!77468 (t!385284 (t!385284 (t!385284 (t!385284 lRes!24)))))) (contains!20763 lt!2600674 (h!77468 (t!385284 (t!385284 (t!385284 (t!385284 lRes!24)))))))))

(declare-fun m!7976822 () Bool)

(assert (=> bs!1914568 m!7976822))

(assert (=> b!7312526 d!2270550))

(declare-fun b_lambda!282207 () Bool)

(assert (= b_lambda!282195 (or d!2270292 b_lambda!282207)))

(declare-fun bs!1914569 () Bool)

(declare-fun d!2270552 () Bool)

(assert (= bs!1914569 (and d!2270552 d!2270292)))

(assert (=> bs!1914569 (= (dynLambda!29070 lambda!451645 (h!77470 (toList!11555 s!1445))) (not (dynLambda!29070 lambda!451624 (h!77470 (toList!11555 s!1445)))))))

(declare-fun b_lambda!282211 () Bool)

(assert (=> (not b_lambda!282211) (not bs!1914569)))

(declare-fun m!7976824 () Bool)

(assert (=> bs!1914569 m!7976824))

(assert (=> b!7312438 d!2270552))

(declare-fun b_lambda!282209 () Bool)

(assert (= b_lambda!282199 (or d!2270130 b_lambda!282209)))

(declare-fun bs!1914570 () Bool)

(declare-fun d!2270554 () Bool)

(assert (= bs!1914570 (and d!2270554 d!2270130)))

(assert (=> bs!1914570 (= (dynLambda!29068 lambda!451636 (h!77468 (t!385284 (t!385284 lRes!24)))) (contains!20763 lt!2600740 (h!77468 (t!385284 (t!385284 lRes!24)))))))

(declare-fun m!7976826 () Bool)

(assert (=> bs!1914570 m!7976826))

(assert (=> b!7312502 d!2270554))

(check-sat (not d!2270518) (not b!7312547) (not d!2270530) (not d!2270540) (not b!7312480) (not b!7312515) (not b!7312423) (not b!7312487) (not b!7312505) (not b!7312541) (not b!7312475) (not b!7312478) (not b!7312543) (not b!7312466) (not bs!1914570) (not b!7312425) (not b!7312461) (not d!2270494) (not b!7312479) (not b_lambda!282129) (not b!7312467) (not b!7312473) (not d!2270516) (not b!7312500) (not b!7312523) (not b!7312483) (not b!7312411) (not b_lambda!282173) (not d!2270444) (not d!2270502) (not b!7312532) (not b_lambda!282171) (not b!7312556) (not b!7312510) (not b!7312474) (not b!7312407) (not b!7312553) (not d!2270490) (not b!7312445) (not b!7312503) (not b!7312444) b_and!351247 (not bm!665722) (not b!7312490) (not b_lambda!282203) (not b!7312406) (not setNonEmpty!53947) (not b!7312518) (not d!2270542) (not b!7312404) (not d!2270514) tp_is_empty!47363 (not b!7312460) (not b!7312493) (not d!2270538) (not b!7312440) (not b_lambda!282135) (not b!7312554) (not b!7312447) (not bs!1914568) (not b!7312495) (not b_lambda!282209) (not b!7312456) (not b!7312453) (not setNonEmpty!53945) (not d!2270438) (not b!7312422) (not d!2270500) (not b!7312449) (not b!7312452) (not b!7312545) (not b!7312457) (not b!7312469) (not b!7312431) (not b!7312525) tp_is_empty!47361 (not b!7312463) (not b_next!134727) (not b!7312537) (not b!7312519) (not b!7312433) (not d!2270476) (not b!7312507) (not d!2270462) (not b_lambda!282175) (not b!7312427) (not b_lambda!282205) (not b_lambda!282151) (not b!7312417) (not b!7312529) (not b!7312416) (not b!7312513) (not b!7312511) (not b!7312424) (not d!2270520) (not b!7312501) (not d!2270454) (not b!7312439) (not bs!1914567) (not b!7312472) (not b_lambda!282207) (not b_lambda!282211) (not b!7312497) (not b!7312539) (not b!7312536) (not b!7312527) (not b!7312430) (not b!7312441) (not b_lambda!282149) (not setNonEmpty!53946) (not b!7312555) (not b!7312481) (not d!2270544) (not b!7312522) (not b!7312491) (not b!7312485) (not d!2270508) (not b!7312533))
(check-sat b_and!351247 (not b_next!134727))
(get-model)

(declare-fun b_lambda!282217 () Bool)

(assert (= b_lambda!282211 (or d!2270008 b_lambda!282217)))

(declare-fun bs!1914572 () Bool)

(declare-fun d!2270558 () Bool)

(assert (= bs!1914572 (and d!2270558 d!2270008)))

(assert (=> bs!1914572 (= (dynLambda!29070 lambda!451624 (h!77470 (toList!11555 s!1445))) (select (dynLambda!29062 f!903 (h!77470 (toList!11555 s!1445))) (h!77468 lRes!24)))))

(declare-fun b_lambda!282219 () Bool)

(assert (=> (not b_lambda!282219) (not bs!1914572)))

(declare-fun t!385294 () Bool)

(declare-fun tb!262179 () Bool)

(assert (=> (and start!712190 (= f!903 f!903) t!385294) tb!262179))

(assert (=> bs!1914572 t!385294))

(declare-fun result!352778 () Bool)

(declare-fun b_and!351251 () Bool)

(assert (= b_and!351247 (and (=> t!385294 result!352778) b_and!351251)))

(declare-fun m!7976832 () Bool)

(assert (=> bs!1914572 m!7976832))

(declare-fun m!7976834 () Bool)

(assert (=> bs!1914572 m!7976834))

(assert (=> bs!1914569 d!2270558))

(check-sat (not d!2270518) (not bm!665722) (not b!7312547) (not d!2270530) (not d!2270540) (not b!7312480) (not b!7312515) (not b!7312423) (not b!7312487) (not b!7312505) (not b!7312541) (not b!7312475) (not b!7312478) (not b!7312543) (not b!7312466) b_and!351251 (not bs!1914570) (not b!7312425) (not b!7312461) (not d!2270494) (not b!7312479) (not b_lambda!282129) (not b!7312467) (not b!7312473) (not d!2270516) (not b!7312500) (not b!7312523) (not b!7312483) (not b_lambda!282217) (not b!7312411) (not b_lambda!282173) (not d!2270444) (not d!2270502) (not b!7312532) (not b_lambda!282219) (not b_lambda!282171) (not b!7312556) (not b!7312510) (not b!7312474) (not b!7312407) (not b!7312553) (not d!2270490) (not b!7312445) (not b!7312503) (not b!7312444) (not b!7312490) (not b_lambda!282203) (not b!7312406) (not setNonEmpty!53947) (not b!7312518) (not d!2270542) (not b!7312404) (not d!2270514) tp_is_empty!47363 (not b!7312460) (not b!7312493) (not d!2270538) (not b!7312440) (not b_lambda!282135) (not b!7312554) (not b!7312447) (not bs!1914568) (not b!7312495) (not b_lambda!282209) (not b!7312456) (not b!7312453) (not setNonEmpty!53945) (not d!2270438) (not b!7312422) (not d!2270500) (not b!7312449) (not b!7312452) (not b!7312545) (not b!7312457) (not b!7312469) (not b!7312431) (not b!7312525) tp_is_empty!47361 (not b!7312463) (not b_next!134727) (not b!7312537) (not b!7312519) (not b!7312433) (not d!2270476) (not b!7312507) (not d!2270462) (not b_lambda!282175) (not b!7312427) (not tb!262179) (not b_lambda!282205) (not b_lambda!282151) (not b!7312417) (not b!7312529) (not b!7312416) (not b!7312513) (not b!7312511) (not b!7312424) (not d!2270520) (not b!7312501) (not d!2270454) (not b!7312439) (not bs!1914567) (not b!7312472) (not b_lambda!282207) (not b!7312497) (not b!7312539) (not b!7312536) (not b!7312527) (not b!7312430) (not b!7312441) (not b_lambda!282149) (not setNonEmpty!53946) (not b!7312555) (not b!7312481) (not d!2270544) (not b!7312522) (not b!7312491) (not b!7312485) (not d!2270508) (not b!7312533))
(check-sat b_and!351251 (not b_next!134727))
