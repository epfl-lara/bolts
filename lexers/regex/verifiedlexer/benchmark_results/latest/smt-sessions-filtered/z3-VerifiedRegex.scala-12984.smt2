; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!713798 () Bool)

(assert start!713798)

(declare-fun b_free!134113 () Bool)

(declare-fun b_next!134903 () Bool)

(assert (=> start!713798 (= b_free!134113 (not b_next!134903))))

(declare-fun tp!2078604 () Bool)

(declare-fun b_and!351521 () Bool)

(assert (=> start!713798 (= tp!2078604 b_and!351521)))

(declare-fun b!7319201 () Bool)

(declare-fun res!2957801 () Bool)

(declare-fun e!4382047 () Bool)

(assert (=> b!7319201 (=> (not res!2957801) (not e!4382047))))

(declare-datatypes ((B!3661 0))(
  ( (B!3662 (val!29279 Int)) )
))
(declare-datatypes ((List!71394 0))(
  ( (Nil!71270) (Cons!71270 (h!77718 B!3661) (t!385629 List!71394)) )
))
(declare-fun l1!805 () List!71394)

(get-info :version)

(assert (=> b!7319201 (= res!2957801 ((_ is Cons!71270) l1!805))))

(declare-fun b!7319202 () Bool)

(declare-fun e!4382046 () Bool)

(assert (=> b!7319202 (= e!4382046 e!4382047)))

(declare-fun res!2957799 () Bool)

(assert (=> b!7319202 (=> (not res!2957799) (not e!4382047))))

(declare-fun l2!794 () List!71394)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2603460 () (InoxSet B!3661))

(declare-fun toList!11681 ((InoxSet B!3661)) List!71394)

(assert (=> b!7319202 (= res!2957799 (= l2!794 (toList!11681 lt!2603460)))))

(declare-datatypes ((A!959 0))(
  ( (A!960 (val!29280 Int)) )
))
(declare-fun s2!417 () (InoxSet A!959))

(declare-fun s1!446 () (InoxSet A!959))

(declare-fun f!760 () Int)

(declare-fun flatMap!3099 ((InoxSet A!959) Int) (InoxSet B!3661))

(assert (=> b!7319202 (= lt!2603460 (flatMap!3099 ((_ map or) s1!446 s2!417) f!760))))

(declare-fun b!7319203 () Bool)

(declare-fun e!4382048 () Bool)

(declare-fun tp_is_empty!47811 () Bool)

(declare-fun tp!2078606 () Bool)

(assert (=> b!7319203 (= e!4382048 (and tp_is_empty!47811 tp!2078606))))

(declare-fun setIsEmpty!55157 () Bool)

(declare-fun setRes!55157 () Bool)

(assert (=> setIsEmpty!55157 setRes!55157))

(declare-fun setNonEmpty!55157 () Bool)

(declare-fun setRes!55158 () Bool)

(declare-fun tp!2078607 () Bool)

(declare-fun tp_is_empty!47809 () Bool)

(assert (=> setNonEmpty!55157 (= setRes!55158 (and tp!2078607 tp_is_empty!47809))))

(declare-fun setElem!55158 () A!959)

(declare-fun setRest!55158 () (InoxSet A!959))

(assert (=> setNonEmpty!55157 (= s2!417 ((_ map or) (store ((as const (Array A!959 Bool)) false) setElem!55158 true) setRest!55158))))

(declare-fun b!7319204 () Bool)

(declare-fun lt!2603463 () List!71394)

(declare-fun subseq!891 (List!71394 List!71394) Bool)

(assert (=> b!7319204 (= e!4382047 (not (subseq!891 (t!385629 l1!805) lt!2603463)))))

(declare-datatypes ((Unit!164783 0))(
  ( (Unit!164784) )
))
(declare-fun lt!2603459 () Unit!164783)

(declare-fun subseqTail!104 (List!71394 List!71394) Unit!164783)

(assert (=> b!7319204 (= lt!2603459 (subseqTail!104 l1!805 lt!2603463))))

(declare-fun lt!2603461 () (InoxSet B!3661))

(assert (=> b!7319204 (= (select lt!2603461 (h!77718 l1!805)) (select lt!2603460 (h!77718 l1!805)))))

(declare-fun lt!2603462 () Unit!164783)

(declare-fun lemmaFlatMapAssociativeElem!22 ((InoxSet A!959) (InoxSet A!959) Int B!3661) Unit!164783)

(assert (=> b!7319204 (= lt!2603462 (lemmaFlatMapAssociativeElem!22 s1!446 s2!417 f!760 (h!77718 l1!805)))))

(declare-fun setIsEmpty!55158 () Bool)

(assert (=> setIsEmpty!55158 setRes!55158))

(declare-fun b!7319205 () Bool)

(declare-fun e!4382045 () Bool)

(declare-fun tp!2078605 () Bool)

(assert (=> b!7319205 (= e!4382045 (and tp_is_empty!47811 tp!2078605))))

(declare-fun res!2957800 () Bool)

(assert (=> start!713798 (=> (not res!2957800) (not e!4382046))))

(assert (=> start!713798 (= res!2957800 (subseq!891 l1!805 lt!2603463))))

(assert (=> start!713798 (= lt!2603463 (toList!11681 lt!2603461))))

(assert (=> start!713798 (= lt!2603461 ((_ map or) (flatMap!3099 s1!446 f!760) (flatMap!3099 s2!417 f!760)))))

(assert (=> start!713798 e!4382046))

(declare-fun condSetEmpty!55158 () Bool)

(assert (=> start!713798 (= condSetEmpty!55158 (= s2!417 ((as const (Array A!959 Bool)) false)))))

(assert (=> start!713798 setRes!55158))

(declare-fun condSetEmpty!55157 () Bool)

(assert (=> start!713798 (= condSetEmpty!55157 (= s1!446 ((as const (Array A!959 Bool)) false)))))

(assert (=> start!713798 setRes!55157))

(assert (=> start!713798 tp!2078604))

(assert (=> start!713798 e!4382045))

(assert (=> start!713798 e!4382048))

(declare-fun setNonEmpty!55158 () Bool)

(declare-fun tp!2078608 () Bool)

(assert (=> setNonEmpty!55158 (= setRes!55157 (and tp!2078608 tp_is_empty!47809))))

(declare-fun setElem!55157 () A!959)

(declare-fun setRest!55157 () (InoxSet A!959))

(assert (=> setNonEmpty!55158 (= s1!446 ((_ map or) (store ((as const (Array A!959 Bool)) false) setElem!55157 true) setRest!55157))))

(assert (= (and start!713798 res!2957800) b!7319202))

(assert (= (and b!7319202 res!2957799) b!7319201))

(assert (= (and b!7319201 res!2957801) b!7319204))

(assert (= (and start!713798 condSetEmpty!55158) setIsEmpty!55158))

(assert (= (and start!713798 (not condSetEmpty!55158)) setNonEmpty!55157))

(assert (= (and start!713798 condSetEmpty!55157) setIsEmpty!55157))

(assert (= (and start!713798 (not condSetEmpty!55157)) setNonEmpty!55158))

(assert (= (and start!713798 ((_ is Cons!71270) l2!794)) b!7319205))

(assert (= (and start!713798 ((_ is Cons!71270) l1!805)) b!7319203))

(declare-fun m!7984024 () Bool)

(assert (=> b!7319202 m!7984024))

(declare-fun m!7984026 () Bool)

(assert (=> b!7319202 m!7984026))

(declare-fun m!7984028 () Bool)

(assert (=> b!7319204 m!7984028))

(declare-fun m!7984030 () Bool)

(assert (=> b!7319204 m!7984030))

(declare-fun m!7984032 () Bool)

(assert (=> b!7319204 m!7984032))

(declare-fun m!7984034 () Bool)

(assert (=> b!7319204 m!7984034))

(declare-fun m!7984036 () Bool)

(assert (=> b!7319204 m!7984036))

(declare-fun m!7984038 () Bool)

(assert (=> start!713798 m!7984038))

(declare-fun m!7984040 () Bool)

(assert (=> start!713798 m!7984040))

(declare-fun m!7984042 () Bool)

(assert (=> start!713798 m!7984042))

(declare-fun m!7984044 () Bool)

(assert (=> start!713798 m!7984044))

(check-sat (not b!7319204) (not setNonEmpty!55158) (not b!7319203) tp_is_empty!47811 b_and!351521 (not b!7319205) (not b!7319202) (not b_next!134903) tp_is_empty!47809 (not setNonEmpty!55157) (not start!713798))
(check-sat b_and!351521 (not b_next!134903))
(get-model)

(declare-fun b!7319234 () Bool)

(declare-fun e!4382079 () Bool)

(declare-fun e!4382080 () Bool)

(assert (=> b!7319234 (= e!4382079 e!4382080)))

(declare-fun res!2957832 () Bool)

(assert (=> b!7319234 (=> (not res!2957832) (not e!4382080))))

(assert (=> b!7319234 (= res!2957832 ((_ is Cons!71270) lt!2603463))))

(declare-fun d!2272843 () Bool)

(declare-fun res!2957830 () Bool)

(assert (=> d!2272843 (=> res!2957830 e!4382079)))

(assert (=> d!2272843 (= res!2957830 ((_ is Nil!71270) l1!805))))

(assert (=> d!2272843 (= (subseq!891 l1!805 lt!2603463) e!4382079)))

(declare-fun b!7319237 () Bool)

(declare-fun e!4382078 () Bool)

(assert (=> b!7319237 (= e!4382078 (subseq!891 l1!805 (t!385629 lt!2603463)))))

(declare-fun b!7319235 () Bool)

(assert (=> b!7319235 (= e!4382080 e!4382078)))

(declare-fun res!2957831 () Bool)

(assert (=> b!7319235 (=> res!2957831 e!4382078)))

(declare-fun e!4382077 () Bool)

(assert (=> b!7319235 (= res!2957831 e!4382077)))

(declare-fun res!2957833 () Bool)

(assert (=> b!7319235 (=> (not res!2957833) (not e!4382077))))

(assert (=> b!7319235 (= res!2957833 (= (h!77718 l1!805) (h!77718 lt!2603463)))))

(declare-fun b!7319236 () Bool)

(assert (=> b!7319236 (= e!4382077 (subseq!891 (t!385629 l1!805) (t!385629 lt!2603463)))))

(assert (= (and d!2272843 (not res!2957830)) b!7319234))

(assert (= (and b!7319234 res!2957832) b!7319235))

(assert (= (and b!7319235 res!2957833) b!7319236))

(assert (= (and b!7319235 (not res!2957831)) b!7319237))

(declare-fun m!7984070 () Bool)

(assert (=> b!7319237 m!7984070))

(declare-fun m!7984072 () Bool)

(assert (=> b!7319236 m!7984072))

(assert (=> start!713798 d!2272843))

(declare-fun d!2272855 () Bool)

(declare-fun e!4382083 () Bool)

(assert (=> d!2272855 e!4382083))

(declare-fun res!2957836 () Bool)

(assert (=> d!2272855 (=> (not res!2957836) (not e!4382083))))

(declare-fun lt!2603470 () List!71394)

(declare-fun noDuplicate!3079 (List!71394) Bool)

(assert (=> d!2272855 (= res!2957836 (noDuplicate!3079 lt!2603470))))

(declare-fun choose!56829 ((InoxSet B!3661)) List!71394)

(assert (=> d!2272855 (= lt!2603470 (choose!56829 lt!2603461))))

(assert (=> d!2272855 (= (toList!11681 lt!2603461) lt!2603470)))

(declare-fun b!7319240 () Bool)

(declare-fun content!14898 (List!71394) (InoxSet B!3661))

(assert (=> b!7319240 (= e!4382083 (= (content!14898 lt!2603470) lt!2603461))))

(assert (= (and d!2272855 res!2957836) b!7319240))

(declare-fun m!7984074 () Bool)

(assert (=> d!2272855 m!7984074))

(declare-fun m!7984076 () Bool)

(assert (=> d!2272855 m!7984076))

(declare-fun m!7984078 () Bool)

(assert (=> b!7319240 m!7984078))

(assert (=> start!713798 d!2272855))

(declare-fun d!2272857 () Bool)

(declare-fun choose!56830 ((InoxSet A!959) Int) (InoxSet B!3661))

(assert (=> d!2272857 (= (flatMap!3099 s1!446 f!760) (choose!56830 s1!446 f!760))))

(declare-fun bs!1915702 () Bool)

(assert (= bs!1915702 d!2272857))

(declare-fun m!7984080 () Bool)

(assert (=> bs!1915702 m!7984080))

(assert (=> start!713798 d!2272857))

(declare-fun d!2272859 () Bool)

(assert (=> d!2272859 (= (flatMap!3099 s2!417 f!760) (choose!56830 s2!417 f!760))))

(declare-fun bs!1915703 () Bool)

(assert (= bs!1915703 d!2272859))

(declare-fun m!7984082 () Bool)

(assert (=> bs!1915703 m!7984082))

(assert (=> start!713798 d!2272859))

(declare-fun d!2272861 () Bool)

(declare-fun e!4382084 () Bool)

(assert (=> d!2272861 e!4382084))

(declare-fun res!2957837 () Bool)

(assert (=> d!2272861 (=> (not res!2957837) (not e!4382084))))

(declare-fun lt!2603471 () List!71394)

(assert (=> d!2272861 (= res!2957837 (noDuplicate!3079 lt!2603471))))

(assert (=> d!2272861 (= lt!2603471 (choose!56829 lt!2603460))))

(assert (=> d!2272861 (= (toList!11681 lt!2603460) lt!2603471)))

(declare-fun b!7319241 () Bool)

(assert (=> b!7319241 (= e!4382084 (= (content!14898 lt!2603471) lt!2603460))))

(assert (= (and d!2272861 res!2957837) b!7319241))

(declare-fun m!7984084 () Bool)

(assert (=> d!2272861 m!7984084))

(declare-fun m!7984086 () Bool)

(assert (=> d!2272861 m!7984086))

(declare-fun m!7984088 () Bool)

(assert (=> b!7319241 m!7984088))

(assert (=> b!7319202 d!2272861))

(declare-fun d!2272863 () Bool)

(assert (=> d!2272863 (= (flatMap!3099 ((_ map or) s1!446 s2!417) f!760) (choose!56830 ((_ map or) s1!446 s2!417) f!760))))

(declare-fun bs!1915704 () Bool)

(assert (= bs!1915704 d!2272863))

(declare-fun m!7984090 () Bool)

(assert (=> bs!1915704 m!7984090))

(assert (=> b!7319202 d!2272863))

(declare-fun b!7319248 () Bool)

(declare-fun e!4382090 () Bool)

(declare-fun e!4382091 () Bool)

(assert (=> b!7319248 (= e!4382090 e!4382091)))

(declare-fun res!2957842 () Bool)

(assert (=> b!7319248 (=> (not res!2957842) (not e!4382091))))

(assert (=> b!7319248 (= res!2957842 ((_ is Cons!71270) lt!2603463))))

(declare-fun d!2272865 () Bool)

(declare-fun res!2957840 () Bool)

(assert (=> d!2272865 (=> res!2957840 e!4382090)))

(assert (=> d!2272865 (= res!2957840 ((_ is Nil!71270) (t!385629 l1!805)))))

(assert (=> d!2272865 (= (subseq!891 (t!385629 l1!805) lt!2603463) e!4382090)))

(declare-fun b!7319251 () Bool)

(declare-fun e!4382088 () Bool)

(assert (=> b!7319251 (= e!4382088 (subseq!891 (t!385629 l1!805) (t!385629 lt!2603463)))))

(declare-fun b!7319249 () Bool)

(assert (=> b!7319249 (= e!4382091 e!4382088)))

(declare-fun res!2957841 () Bool)

(assert (=> b!7319249 (=> res!2957841 e!4382088)))

(declare-fun e!4382087 () Bool)

(assert (=> b!7319249 (= res!2957841 e!4382087)))

(declare-fun res!2957843 () Bool)

(assert (=> b!7319249 (=> (not res!2957843) (not e!4382087))))

(assert (=> b!7319249 (= res!2957843 (= (h!77718 (t!385629 l1!805)) (h!77718 lt!2603463)))))

(declare-fun b!7319250 () Bool)

(assert (=> b!7319250 (= e!4382087 (subseq!891 (t!385629 (t!385629 l1!805)) (t!385629 lt!2603463)))))

(assert (= (and d!2272865 (not res!2957840)) b!7319248))

(assert (= (and b!7319248 res!2957842) b!7319249))

(assert (= (and b!7319249 res!2957843) b!7319250))

(assert (= (and b!7319249 (not res!2957841)) b!7319251))

(assert (=> b!7319251 m!7984072))

(declare-fun m!7984092 () Bool)

(assert (=> b!7319250 m!7984092))

(assert (=> b!7319204 d!2272865))

(declare-fun b!7319288 () Bool)

(declare-fun c!1358666 () Bool)

(declare-fun isEmpty!40878 (List!71394) Bool)

(assert (=> b!7319288 (= c!1358666 (not (isEmpty!40878 (t!385629 l1!805))))))

(declare-fun e!4382110 () Unit!164783)

(declare-fun e!4382109 () Unit!164783)

(assert (=> b!7319288 (= e!4382110 e!4382109)))

(declare-fun b!7319289 () Bool)

(declare-fun call!665851 () Unit!164783)

(assert (=> b!7319289 (= e!4382109 call!665851)))

(declare-fun b!7319290 () Bool)

(declare-fun e!4382111 () Unit!164783)

(assert (=> b!7319290 (= e!4382111 e!4382110)))

(declare-fun c!1358668 () Bool)

(assert (=> b!7319290 (= c!1358668 (subseq!891 l1!805 (t!385629 lt!2603463)))))

(declare-fun bm!665846 () Bool)

(assert (=> bm!665846 (= call!665851 (subseqTail!104 (ite c!1358668 l1!805 (t!385629 l1!805)) (t!385629 lt!2603463)))))

(declare-fun d!2272867 () Bool)

(declare-fun tail!14653 (List!71394) List!71394)

(assert (=> d!2272867 (subseq!891 (tail!14653 l1!805) lt!2603463)))

(declare-fun lt!2603480 () Unit!164783)

(assert (=> d!2272867 (= lt!2603480 e!4382111)))

(declare-fun c!1358667 () Bool)

(assert (=> d!2272867 (= c!1358667 (and ((_ is Cons!71270) l1!805) ((_ is Cons!71270) lt!2603463)))))

(declare-fun e!4382114 () Bool)

(assert (=> d!2272867 e!4382114))

(declare-fun res!2957847 () Bool)

(assert (=> d!2272867 (=> (not res!2957847) (not e!4382114))))

(assert (=> d!2272867 (= res!2957847 (not (isEmpty!40878 l1!805)))))

(assert (=> d!2272867 (= (subseqTail!104 l1!805 lt!2603463) lt!2603480)))

(declare-fun b!7319291 () Bool)

(assert (=> b!7319291 (= e!4382114 (subseq!891 l1!805 lt!2603463))))

(declare-fun b!7319292 () Bool)

(declare-fun Unit!164787 () Unit!164783)

(assert (=> b!7319292 (= e!4382111 Unit!164787)))

(declare-fun b!7319293 () Bool)

(declare-fun Unit!164788 () Unit!164783)

(assert (=> b!7319293 (= e!4382109 Unit!164788)))

(declare-fun b!7319294 () Bool)

(assert (=> b!7319294 (= e!4382110 call!665851)))

(assert (= (and d!2272867 res!2957847) b!7319291))

(assert (= (and d!2272867 c!1358667) b!7319290))

(assert (= (and d!2272867 (not c!1358667)) b!7319292))

(assert (= (and b!7319290 c!1358668) b!7319294))

(assert (= (and b!7319290 (not c!1358668)) b!7319288))

(assert (= (and b!7319288 c!1358666) b!7319289))

(assert (= (and b!7319288 (not c!1358666)) b!7319293))

(assert (= (or b!7319294 b!7319289) bm!665846))

(assert (=> b!7319290 m!7984070))

(declare-fun m!7984110 () Bool)

(assert (=> bm!665846 m!7984110))

(assert (=> b!7319291 m!7984038))

(declare-fun m!7984112 () Bool)

(assert (=> d!2272867 m!7984112))

(assert (=> d!2272867 m!7984112))

(declare-fun m!7984114 () Bool)

(assert (=> d!2272867 m!7984114))

(declare-fun m!7984116 () Bool)

(assert (=> d!2272867 m!7984116))

(declare-fun m!7984118 () Bool)

(assert (=> b!7319288 m!7984118))

(assert (=> b!7319204 d!2272867))

(declare-fun d!2272871 () Bool)

(assert (=> d!2272871 (= (select ((_ map or) (flatMap!3099 s1!446 f!760) (flatMap!3099 s2!417 f!760)) (h!77718 l1!805)) (select (flatMap!3099 ((_ map or) s1!446 s2!417) f!760) (h!77718 l1!805)))))

(declare-fun lt!2603483 () Unit!164783)

(declare-fun choose!56832 ((InoxSet A!959) (InoxSet A!959) Int B!3661) Unit!164783)

(assert (=> d!2272871 (= lt!2603483 (choose!56832 s1!446 s2!417 f!760 (h!77718 l1!805)))))

(assert (=> d!2272871 (= (lemmaFlatMapAssociativeElem!22 s1!446 s2!417 f!760 (h!77718 l1!805)) lt!2603483)))

(declare-fun bs!1915706 () Bool)

(assert (= bs!1915706 d!2272871))

(declare-fun m!7984120 () Bool)

(assert (=> bs!1915706 m!7984120))

(declare-fun m!7984122 () Bool)

(assert (=> bs!1915706 m!7984122))

(assert (=> bs!1915706 m!7984026))

(assert (=> bs!1915706 m!7984042))

(declare-fun m!7984124 () Bool)

(assert (=> bs!1915706 m!7984124))

(assert (=> bs!1915706 m!7984044))

(assert (=> b!7319204 d!2272871))

(declare-fun condSetEmpty!55165 () Bool)

(assert (=> setNonEmpty!55157 (= condSetEmpty!55165 (= setRest!55158 ((as const (Array A!959 Bool)) false)))))

(declare-fun setRes!55165 () Bool)

(assert (=> setNonEmpty!55157 (= tp!2078607 setRes!55165)))

(declare-fun setIsEmpty!55165 () Bool)

(assert (=> setIsEmpty!55165 setRes!55165))

(declare-fun setNonEmpty!55165 () Bool)

(declare-fun tp!2078619 () Bool)

(assert (=> setNonEmpty!55165 (= setRes!55165 (and tp!2078619 tp_is_empty!47809))))

(declare-fun setElem!55165 () A!959)

(declare-fun setRest!55165 () (InoxSet A!959))

(assert (=> setNonEmpty!55165 (= setRest!55158 ((_ map or) (store ((as const (Array A!959 Bool)) false) setElem!55165 true) setRest!55165))))

(assert (= (and setNonEmpty!55157 condSetEmpty!55165) setIsEmpty!55165))

(assert (= (and setNonEmpty!55157 (not condSetEmpty!55165)) setNonEmpty!55165))

(declare-fun condSetEmpty!55166 () Bool)

(assert (=> setNonEmpty!55158 (= condSetEmpty!55166 (= setRest!55157 ((as const (Array A!959 Bool)) false)))))

(declare-fun setRes!55166 () Bool)

(assert (=> setNonEmpty!55158 (= tp!2078608 setRes!55166)))

(declare-fun setIsEmpty!55166 () Bool)

(assert (=> setIsEmpty!55166 setRes!55166))

(declare-fun setNonEmpty!55166 () Bool)

(declare-fun tp!2078620 () Bool)

(assert (=> setNonEmpty!55166 (= setRes!55166 (and tp!2078620 tp_is_empty!47809))))

(declare-fun setElem!55166 () A!959)

(declare-fun setRest!55166 () (InoxSet A!959))

(assert (=> setNonEmpty!55166 (= setRest!55157 ((_ map or) (store ((as const (Array A!959 Bool)) false) setElem!55166 true) setRest!55166))))

(assert (= (and setNonEmpty!55158 condSetEmpty!55166) setIsEmpty!55166))

(assert (= (and setNonEmpty!55158 (not condSetEmpty!55166)) setNonEmpty!55166))

(declare-fun b!7319304 () Bool)

(declare-fun e!4382119 () Bool)

(declare-fun tp!2078623 () Bool)

(assert (=> b!7319304 (= e!4382119 (and tp_is_empty!47811 tp!2078623))))

(assert (=> b!7319205 (= tp!2078605 e!4382119)))

(assert (= (and b!7319205 ((_ is Cons!71270) (t!385629 l2!794))) b!7319304))

(declare-fun b!7319305 () Bool)

(declare-fun e!4382120 () Bool)

(declare-fun tp!2078624 () Bool)

(assert (=> b!7319305 (= e!4382120 (and tp_is_empty!47811 tp!2078624))))

(assert (=> b!7319203 (= tp!2078606 e!4382120)))

(assert (= (and b!7319203 ((_ is Cons!71270) (t!385629 l1!805))) b!7319305))

(check-sat (not b!7319288) (not b!7319241) (not d!2272855) (not b!7319236) (not d!2272863) b_and!351521 (not d!2272867) (not bm!665846) (not b!7319250) (not d!2272857) (not setNonEmpty!55165) tp_is_empty!47811 (not b!7319251) (not setNonEmpty!55166) (not b!7319237) (not b!7319290) (not b!7319240) (not d!2272859) (not d!2272861) (not b!7319291) (not b!7319305) (not b_next!134903) (not b!7319304) tp_is_empty!47809 (not d!2272871))
(check-sat b_and!351521 (not b_next!134903))
(get-model)

(declare-fun b!7319306 () Bool)

(declare-fun e!4382123 () Bool)

(declare-fun e!4382124 () Bool)

(assert (=> b!7319306 (= e!4382123 e!4382124)))

(declare-fun res!2957850 () Bool)

(assert (=> b!7319306 (=> (not res!2957850) (not e!4382124))))

(assert (=> b!7319306 (= res!2957850 ((_ is Cons!71270) (t!385629 lt!2603463)))))

(declare-fun d!2272873 () Bool)

(declare-fun res!2957848 () Bool)

(assert (=> d!2272873 (=> res!2957848 e!4382123)))

(assert (=> d!2272873 (= res!2957848 ((_ is Nil!71270) l1!805))))

(assert (=> d!2272873 (= (subseq!891 l1!805 (t!385629 lt!2603463)) e!4382123)))

(declare-fun b!7319309 () Bool)

(declare-fun e!4382122 () Bool)

(assert (=> b!7319309 (= e!4382122 (subseq!891 l1!805 (t!385629 (t!385629 lt!2603463))))))

(declare-fun b!7319307 () Bool)

(assert (=> b!7319307 (= e!4382124 e!4382122)))

(declare-fun res!2957849 () Bool)

(assert (=> b!7319307 (=> res!2957849 e!4382122)))

(declare-fun e!4382121 () Bool)

(assert (=> b!7319307 (= res!2957849 e!4382121)))

(declare-fun res!2957851 () Bool)

(assert (=> b!7319307 (=> (not res!2957851) (not e!4382121))))

(assert (=> b!7319307 (= res!2957851 (= (h!77718 l1!805) (h!77718 (t!385629 lt!2603463))))))

(declare-fun b!7319308 () Bool)

(assert (=> b!7319308 (= e!4382121 (subseq!891 (t!385629 l1!805) (t!385629 (t!385629 lt!2603463))))))

(assert (= (and d!2272873 (not res!2957848)) b!7319306))

(assert (= (and b!7319306 res!2957850) b!7319307))

(assert (= (and b!7319307 res!2957851) b!7319308))

(assert (= (and b!7319307 (not res!2957849)) b!7319309))

(declare-fun m!7984126 () Bool)

(assert (=> b!7319309 m!7984126))

(declare-fun m!7984128 () Bool)

(assert (=> b!7319308 m!7984128))

(assert (=> b!7319237 d!2272873))

(declare-fun d!2272875 () Bool)

(declare-fun c!1358671 () Bool)

(assert (=> d!2272875 (= c!1358671 ((_ is Nil!71270) lt!2603470))))

(declare-fun e!4382127 () (InoxSet B!3661))

(assert (=> d!2272875 (= (content!14898 lt!2603470) e!4382127)))

(declare-fun b!7319314 () Bool)

(assert (=> b!7319314 (= e!4382127 ((as const (Array B!3661 Bool)) false))))

(declare-fun b!7319315 () Bool)

(assert (=> b!7319315 (= e!4382127 ((_ map or) (store ((as const (Array B!3661 Bool)) false) (h!77718 lt!2603470) true) (content!14898 (t!385629 lt!2603470))))))

(assert (= (and d!2272875 c!1358671) b!7319314))

(assert (= (and d!2272875 (not c!1358671)) b!7319315))

(declare-fun m!7984130 () Bool)

(assert (=> b!7319315 m!7984130))

(declare-fun m!7984132 () Bool)

(assert (=> b!7319315 m!7984132))

(assert (=> b!7319240 d!2272875))

(declare-fun d!2272877 () Bool)

(declare-fun res!2957856 () Bool)

(declare-fun e!4382132 () Bool)

(assert (=> d!2272877 (=> res!2957856 e!4382132)))

(assert (=> d!2272877 (= res!2957856 ((_ is Nil!71270) lt!2603471))))

(assert (=> d!2272877 (= (noDuplicate!3079 lt!2603471) e!4382132)))

(declare-fun b!7319320 () Bool)

(declare-fun e!4382133 () Bool)

(assert (=> b!7319320 (= e!4382132 e!4382133)))

(declare-fun res!2957857 () Bool)

(assert (=> b!7319320 (=> (not res!2957857) (not e!4382133))))

(declare-fun contains!20809 (List!71394 B!3661) Bool)

(assert (=> b!7319320 (= res!2957857 (not (contains!20809 (t!385629 lt!2603471) (h!77718 lt!2603471))))))

(declare-fun b!7319321 () Bool)

(assert (=> b!7319321 (= e!4382133 (noDuplicate!3079 (t!385629 lt!2603471)))))

(assert (= (and d!2272877 (not res!2957856)) b!7319320))

(assert (= (and b!7319320 res!2957857) b!7319321))

(declare-fun m!7984134 () Bool)

(assert (=> b!7319320 m!7984134))

(declare-fun m!7984136 () Bool)

(assert (=> b!7319321 m!7984136))

(assert (=> d!2272861 d!2272877))

(declare-fun d!2272879 () Bool)

(declare-fun e!4382138 () Bool)

(assert (=> d!2272879 e!4382138))

(declare-fun res!2957862 () Bool)

(assert (=> d!2272879 (=> (not res!2957862) (not e!4382138))))

(declare-fun res!2957863 () List!71394)

(assert (=> d!2272879 (= res!2957862 (noDuplicate!3079 res!2957863))))

(declare-fun e!4382139 () Bool)

(assert (=> d!2272879 e!4382139))

(assert (=> d!2272879 (= (choose!56829 lt!2603460) res!2957863)))

(declare-fun b!7319326 () Bool)

(declare-fun tp!2078627 () Bool)

(assert (=> b!7319326 (= e!4382139 (and tp_is_empty!47811 tp!2078627))))

(declare-fun b!7319327 () Bool)

(assert (=> b!7319327 (= e!4382138 (= (content!14898 res!2957863) lt!2603460))))

(assert (= (and d!2272879 ((_ is Cons!71270) res!2957863)) b!7319326))

(assert (= (and d!2272879 res!2957862) b!7319327))

(declare-fun m!7984138 () Bool)

(assert (=> d!2272879 m!7984138))

(declare-fun m!7984140 () Bool)

(assert (=> b!7319327 m!7984140))

(assert (=> d!2272861 d!2272879))

(declare-fun b!7319328 () Bool)

(declare-fun e!4382142 () Bool)

(declare-fun e!4382143 () Bool)

(assert (=> b!7319328 (= e!4382142 e!4382143)))

(declare-fun res!2957866 () Bool)

(assert (=> b!7319328 (=> (not res!2957866) (not e!4382143))))

(assert (=> b!7319328 (= res!2957866 ((_ is Cons!71270) (t!385629 lt!2603463)))))

(declare-fun d!2272881 () Bool)

(declare-fun res!2957864 () Bool)

(assert (=> d!2272881 (=> res!2957864 e!4382142)))

(assert (=> d!2272881 (= res!2957864 ((_ is Nil!71270) (t!385629 l1!805)))))

(assert (=> d!2272881 (= (subseq!891 (t!385629 l1!805) (t!385629 lt!2603463)) e!4382142)))

(declare-fun b!7319331 () Bool)

(declare-fun e!4382141 () Bool)

(assert (=> b!7319331 (= e!4382141 (subseq!891 (t!385629 l1!805) (t!385629 (t!385629 lt!2603463))))))

(declare-fun b!7319329 () Bool)

(assert (=> b!7319329 (= e!4382143 e!4382141)))

(declare-fun res!2957865 () Bool)

(assert (=> b!7319329 (=> res!2957865 e!4382141)))

(declare-fun e!4382140 () Bool)

(assert (=> b!7319329 (= res!2957865 e!4382140)))

(declare-fun res!2957867 () Bool)

(assert (=> b!7319329 (=> (not res!2957867) (not e!4382140))))

(assert (=> b!7319329 (= res!2957867 (= (h!77718 (t!385629 l1!805)) (h!77718 (t!385629 lt!2603463))))))

(declare-fun b!7319330 () Bool)

(assert (=> b!7319330 (= e!4382140 (subseq!891 (t!385629 (t!385629 l1!805)) (t!385629 (t!385629 lt!2603463))))))

(assert (= (and d!2272881 (not res!2957864)) b!7319328))

(assert (= (and b!7319328 res!2957866) b!7319329))

(assert (= (and b!7319329 res!2957867) b!7319330))

(assert (= (and b!7319329 (not res!2957865)) b!7319331))

(assert (=> b!7319331 m!7984128))

(declare-fun m!7984142 () Bool)

(assert (=> b!7319330 m!7984142))

(assert (=> b!7319236 d!2272881))

(declare-fun d!2272883 () Bool)

(assert (=> d!2272883 true))

(declare-fun setRes!55169 () Bool)

(assert (=> d!2272883 setRes!55169))

(declare-fun condSetEmpty!55169 () Bool)

(declare-fun res!2957870 () (InoxSet B!3661))

(assert (=> d!2272883 (= condSetEmpty!55169 (= res!2957870 ((as const (Array B!3661 Bool)) false)))))

(assert (=> d!2272883 (= (choose!56830 s1!446 f!760) res!2957870)))

(declare-fun setIsEmpty!55169 () Bool)

(assert (=> setIsEmpty!55169 setRes!55169))

(declare-fun setNonEmpty!55169 () Bool)

(declare-fun tp!2078630 () Bool)

(assert (=> setNonEmpty!55169 (= setRes!55169 (and tp!2078630 tp_is_empty!47811))))

(declare-fun setElem!55169 () B!3661)

(declare-fun setRest!55169 () (InoxSet B!3661))

(assert (=> setNonEmpty!55169 (= res!2957870 ((_ map or) (store ((as const (Array B!3661 Bool)) false) setElem!55169 true) setRest!55169))))

(assert (= (and d!2272883 condSetEmpty!55169) setIsEmpty!55169))

(assert (= (and d!2272883 (not condSetEmpty!55169)) setNonEmpty!55169))

(assert (=> d!2272857 d!2272883))

(declare-fun b!7319332 () Bool)

(declare-fun c!1358672 () Bool)

(assert (=> b!7319332 (= c!1358672 (not (isEmpty!40878 (t!385629 (ite c!1358668 l1!805 (t!385629 l1!805))))))))

(declare-fun e!4382145 () Unit!164783)

(declare-fun e!4382144 () Unit!164783)

(assert (=> b!7319332 (= e!4382145 e!4382144)))

(declare-fun b!7319333 () Bool)

(declare-fun call!665852 () Unit!164783)

(assert (=> b!7319333 (= e!4382144 call!665852)))

(declare-fun b!7319334 () Bool)

(declare-fun e!4382146 () Unit!164783)

(assert (=> b!7319334 (= e!4382146 e!4382145)))

(declare-fun c!1358674 () Bool)

(assert (=> b!7319334 (= c!1358674 (subseq!891 (ite c!1358668 l1!805 (t!385629 l1!805)) (t!385629 (t!385629 lt!2603463))))))

(declare-fun bm!665847 () Bool)

(assert (=> bm!665847 (= call!665852 (subseqTail!104 (ite c!1358674 (ite c!1358668 l1!805 (t!385629 l1!805)) (t!385629 (ite c!1358668 l1!805 (t!385629 l1!805)))) (t!385629 (t!385629 lt!2603463))))))

(declare-fun d!2272885 () Bool)

(assert (=> d!2272885 (subseq!891 (tail!14653 (ite c!1358668 l1!805 (t!385629 l1!805))) (t!385629 lt!2603463))))

(declare-fun lt!2603484 () Unit!164783)

(assert (=> d!2272885 (= lt!2603484 e!4382146)))

(declare-fun c!1358673 () Bool)

(assert (=> d!2272885 (= c!1358673 (and ((_ is Cons!71270) (ite c!1358668 l1!805 (t!385629 l1!805))) ((_ is Cons!71270) (t!385629 lt!2603463))))))

(declare-fun e!4382147 () Bool)

(assert (=> d!2272885 e!4382147))

(declare-fun res!2957871 () Bool)

(assert (=> d!2272885 (=> (not res!2957871) (not e!4382147))))

(assert (=> d!2272885 (= res!2957871 (not (isEmpty!40878 (ite c!1358668 l1!805 (t!385629 l1!805)))))))

(assert (=> d!2272885 (= (subseqTail!104 (ite c!1358668 l1!805 (t!385629 l1!805)) (t!385629 lt!2603463)) lt!2603484)))

(declare-fun b!7319335 () Bool)

(assert (=> b!7319335 (= e!4382147 (subseq!891 (ite c!1358668 l1!805 (t!385629 l1!805)) (t!385629 lt!2603463)))))

(declare-fun b!7319336 () Bool)

(declare-fun Unit!164789 () Unit!164783)

(assert (=> b!7319336 (= e!4382146 Unit!164789)))

(declare-fun b!7319337 () Bool)

(declare-fun Unit!164790 () Unit!164783)

(assert (=> b!7319337 (= e!4382144 Unit!164790)))

(declare-fun b!7319338 () Bool)

(assert (=> b!7319338 (= e!4382145 call!665852)))

(assert (= (and d!2272885 res!2957871) b!7319335))

(assert (= (and d!2272885 c!1358673) b!7319334))

(assert (= (and d!2272885 (not c!1358673)) b!7319336))

(assert (= (and b!7319334 c!1358674) b!7319338))

(assert (= (and b!7319334 (not c!1358674)) b!7319332))

(assert (= (and b!7319332 c!1358672) b!7319333))

(assert (= (and b!7319332 (not c!1358672)) b!7319337))

(assert (= (or b!7319338 b!7319333) bm!665847))

(declare-fun m!7984144 () Bool)

(assert (=> b!7319334 m!7984144))

(declare-fun m!7984146 () Bool)

(assert (=> bm!665847 m!7984146))

(declare-fun m!7984148 () Bool)

(assert (=> b!7319335 m!7984148))

(declare-fun m!7984150 () Bool)

(assert (=> d!2272885 m!7984150))

(assert (=> d!2272885 m!7984150))

(declare-fun m!7984152 () Bool)

(assert (=> d!2272885 m!7984152))

(declare-fun m!7984154 () Bool)

(assert (=> d!2272885 m!7984154))

(declare-fun m!7984156 () Bool)

(assert (=> b!7319332 m!7984156))

(assert (=> bm!665846 d!2272885))

(assert (=> b!7319291 d!2272843))

(assert (=> b!7319251 d!2272881))

(assert (=> b!7319290 d!2272873))

(assert (=> d!2272871 d!2272857))

(assert (=> d!2272871 d!2272859))

(assert (=> d!2272871 d!2272863))

(declare-fun d!2272887 () Bool)

(assert (=> d!2272887 (= (select ((_ map or) (flatMap!3099 s1!446 f!760) (flatMap!3099 s2!417 f!760)) (h!77718 l1!805)) (select (flatMap!3099 ((_ map or) s1!446 s2!417) f!760) (h!77718 l1!805)))))

(assert (=> d!2272887 true))

(declare-fun _$8!752 () Unit!164783)

(assert (=> d!2272887 (= (choose!56832 s1!446 s2!417 f!760 (h!77718 l1!805)) _$8!752)))

(declare-fun bs!1915707 () Bool)

(assert (= bs!1915707 d!2272887))

(assert (=> bs!1915707 m!7984044))

(assert (=> bs!1915707 m!7984120))

(assert (=> bs!1915707 m!7984026))

(assert (=> bs!1915707 m!7984124))

(assert (=> bs!1915707 m!7984042))

(assert (=> d!2272871 d!2272887))

(declare-fun b!7319340 () Bool)

(declare-fun e!4382150 () Bool)

(declare-fun e!4382151 () Bool)

(assert (=> b!7319340 (= e!4382150 e!4382151)))

(declare-fun res!2957874 () Bool)

(assert (=> b!7319340 (=> (not res!2957874) (not e!4382151))))

(assert (=> b!7319340 (= res!2957874 ((_ is Cons!71270) lt!2603463))))

(declare-fun d!2272889 () Bool)

(declare-fun res!2957872 () Bool)

(assert (=> d!2272889 (=> res!2957872 e!4382150)))

(assert (=> d!2272889 (= res!2957872 ((_ is Nil!71270) (tail!14653 l1!805)))))

(assert (=> d!2272889 (= (subseq!891 (tail!14653 l1!805) lt!2603463) e!4382150)))

(declare-fun b!7319343 () Bool)

(declare-fun e!4382149 () Bool)

(assert (=> b!7319343 (= e!4382149 (subseq!891 (tail!14653 l1!805) (t!385629 lt!2603463)))))

(declare-fun b!7319341 () Bool)

(assert (=> b!7319341 (= e!4382151 e!4382149)))

(declare-fun res!2957873 () Bool)

(assert (=> b!7319341 (=> res!2957873 e!4382149)))

(declare-fun e!4382148 () Bool)

(assert (=> b!7319341 (= res!2957873 e!4382148)))

(declare-fun res!2957875 () Bool)

(assert (=> b!7319341 (=> (not res!2957875) (not e!4382148))))

(assert (=> b!7319341 (= res!2957875 (= (h!77718 (tail!14653 l1!805)) (h!77718 lt!2603463)))))

(declare-fun b!7319342 () Bool)

(assert (=> b!7319342 (= e!4382148 (subseq!891 (t!385629 (tail!14653 l1!805)) (t!385629 lt!2603463)))))

(assert (= (and d!2272889 (not res!2957872)) b!7319340))

(assert (= (and b!7319340 res!2957874) b!7319341))

(assert (= (and b!7319341 res!2957875) b!7319342))

(assert (= (and b!7319341 (not res!2957873)) b!7319343))

(assert (=> b!7319343 m!7984112))

(declare-fun m!7984158 () Bool)

(assert (=> b!7319343 m!7984158))

(declare-fun m!7984160 () Bool)

(assert (=> b!7319342 m!7984160))

(assert (=> d!2272867 d!2272889))

(declare-fun d!2272891 () Bool)

(assert (=> d!2272891 (= (tail!14653 l1!805) (t!385629 l1!805))))

(assert (=> d!2272867 d!2272891))

(declare-fun d!2272893 () Bool)

(assert (=> d!2272893 (= (isEmpty!40878 l1!805) ((_ is Nil!71270) l1!805))))

(assert (=> d!2272867 d!2272893))

(declare-fun d!2272895 () Bool)

(assert (=> d!2272895 true))

(declare-fun setRes!55170 () Bool)

(assert (=> d!2272895 setRes!55170))

(declare-fun condSetEmpty!55170 () Bool)

(declare-fun res!2957876 () (InoxSet B!3661))

(assert (=> d!2272895 (= condSetEmpty!55170 (= res!2957876 ((as const (Array B!3661 Bool)) false)))))

(assert (=> d!2272895 (= (choose!56830 s2!417 f!760) res!2957876)))

(declare-fun setIsEmpty!55170 () Bool)

(assert (=> setIsEmpty!55170 setRes!55170))

(declare-fun setNonEmpty!55170 () Bool)

(declare-fun tp!2078631 () Bool)

(assert (=> setNonEmpty!55170 (= setRes!55170 (and tp!2078631 tp_is_empty!47811))))

(declare-fun setElem!55170 () B!3661)

(declare-fun setRest!55170 () (InoxSet B!3661))

(assert (=> setNonEmpty!55170 (= res!2957876 ((_ map or) (store ((as const (Array B!3661 Bool)) false) setElem!55170 true) setRest!55170))))

(assert (= (and d!2272895 condSetEmpty!55170) setIsEmpty!55170))

(assert (= (and d!2272895 (not condSetEmpty!55170)) setNonEmpty!55170))

(assert (=> d!2272859 d!2272895))

(declare-fun d!2272897 () Bool)

(declare-fun res!2957877 () Bool)

(declare-fun e!4382152 () Bool)

(assert (=> d!2272897 (=> res!2957877 e!4382152)))

(assert (=> d!2272897 (= res!2957877 ((_ is Nil!71270) lt!2603470))))

(assert (=> d!2272897 (= (noDuplicate!3079 lt!2603470) e!4382152)))

(declare-fun b!7319344 () Bool)

(declare-fun e!4382153 () Bool)

(assert (=> b!7319344 (= e!4382152 e!4382153)))

(declare-fun res!2957878 () Bool)

(assert (=> b!7319344 (=> (not res!2957878) (not e!4382153))))

(assert (=> b!7319344 (= res!2957878 (not (contains!20809 (t!385629 lt!2603470) (h!77718 lt!2603470))))))

(declare-fun b!7319345 () Bool)

(assert (=> b!7319345 (= e!4382153 (noDuplicate!3079 (t!385629 lt!2603470)))))

(assert (= (and d!2272897 (not res!2957877)) b!7319344))

(assert (= (and b!7319344 res!2957878) b!7319345))

(declare-fun m!7984162 () Bool)

(assert (=> b!7319344 m!7984162))

(declare-fun m!7984164 () Bool)

(assert (=> b!7319345 m!7984164))

(assert (=> d!2272855 d!2272897))

(declare-fun d!2272901 () Bool)

(declare-fun e!4382154 () Bool)

(assert (=> d!2272901 e!4382154))

(declare-fun res!2957879 () Bool)

(assert (=> d!2272901 (=> (not res!2957879) (not e!4382154))))

(declare-fun res!2957880 () List!71394)

(assert (=> d!2272901 (= res!2957879 (noDuplicate!3079 res!2957880))))

(declare-fun e!4382155 () Bool)

(assert (=> d!2272901 e!4382155))

(assert (=> d!2272901 (= (choose!56829 lt!2603461) res!2957880)))

(declare-fun b!7319346 () Bool)

(declare-fun tp!2078632 () Bool)

(assert (=> b!7319346 (= e!4382155 (and tp_is_empty!47811 tp!2078632))))

(declare-fun b!7319347 () Bool)

(assert (=> b!7319347 (= e!4382154 (= (content!14898 res!2957880) lt!2603461))))

(assert (= (and d!2272901 ((_ is Cons!71270) res!2957880)) b!7319346))

(assert (= (and d!2272901 res!2957879) b!7319347))

(declare-fun m!7984166 () Bool)

(assert (=> d!2272901 m!7984166))

(declare-fun m!7984168 () Bool)

(assert (=> b!7319347 m!7984168))

(assert (=> d!2272855 d!2272901))

(declare-fun d!2272903 () Bool)

(assert (=> d!2272903 true))

(declare-fun setRes!55171 () Bool)

(assert (=> d!2272903 setRes!55171))

(declare-fun condSetEmpty!55171 () Bool)

(declare-fun res!2957881 () (InoxSet B!3661))

(assert (=> d!2272903 (= condSetEmpty!55171 (= res!2957881 ((as const (Array B!3661 Bool)) false)))))

(assert (=> d!2272903 (= (choose!56830 ((_ map or) s1!446 s2!417) f!760) res!2957881)))

(declare-fun setIsEmpty!55171 () Bool)

(assert (=> setIsEmpty!55171 setRes!55171))

(declare-fun setNonEmpty!55171 () Bool)

(declare-fun tp!2078633 () Bool)

(assert (=> setNonEmpty!55171 (= setRes!55171 (and tp!2078633 tp_is_empty!47811))))

(declare-fun setElem!55171 () B!3661)

(declare-fun setRest!55171 () (InoxSet B!3661))

(assert (=> setNonEmpty!55171 (= res!2957881 ((_ map or) (store ((as const (Array B!3661 Bool)) false) setElem!55171 true) setRest!55171))))

(assert (= (and d!2272903 condSetEmpty!55171) setIsEmpty!55171))

(assert (= (and d!2272903 (not condSetEmpty!55171)) setNonEmpty!55171))

(assert (=> d!2272863 d!2272903))

(declare-fun b!7319348 () Bool)

(declare-fun e!4382158 () Bool)

(declare-fun e!4382159 () Bool)

(assert (=> b!7319348 (= e!4382158 e!4382159)))

(declare-fun res!2957884 () Bool)

(assert (=> b!7319348 (=> (not res!2957884) (not e!4382159))))

(assert (=> b!7319348 (= res!2957884 ((_ is Cons!71270) (t!385629 lt!2603463)))))

(declare-fun d!2272905 () Bool)

(declare-fun res!2957882 () Bool)

(assert (=> d!2272905 (=> res!2957882 e!4382158)))

(assert (=> d!2272905 (= res!2957882 ((_ is Nil!71270) (t!385629 (t!385629 l1!805))))))

(assert (=> d!2272905 (= (subseq!891 (t!385629 (t!385629 l1!805)) (t!385629 lt!2603463)) e!4382158)))

(declare-fun b!7319351 () Bool)

(declare-fun e!4382157 () Bool)

(assert (=> b!7319351 (= e!4382157 (subseq!891 (t!385629 (t!385629 l1!805)) (t!385629 (t!385629 lt!2603463))))))

(declare-fun b!7319349 () Bool)

(assert (=> b!7319349 (= e!4382159 e!4382157)))

(declare-fun res!2957883 () Bool)

(assert (=> b!7319349 (=> res!2957883 e!4382157)))

(declare-fun e!4382156 () Bool)

(assert (=> b!7319349 (= res!2957883 e!4382156)))

(declare-fun res!2957885 () Bool)

(assert (=> b!7319349 (=> (not res!2957885) (not e!4382156))))

(assert (=> b!7319349 (= res!2957885 (= (h!77718 (t!385629 (t!385629 l1!805))) (h!77718 (t!385629 lt!2603463))))))

(declare-fun b!7319350 () Bool)

(assert (=> b!7319350 (= e!4382156 (subseq!891 (t!385629 (t!385629 (t!385629 l1!805))) (t!385629 (t!385629 lt!2603463))))))

(assert (= (and d!2272905 (not res!2957882)) b!7319348))

(assert (= (and b!7319348 res!2957884) b!7319349))

(assert (= (and b!7319349 res!2957885) b!7319350))

(assert (= (and b!7319349 (not res!2957883)) b!7319351))

(assert (=> b!7319351 m!7984142))

(declare-fun m!7984170 () Bool)

(assert (=> b!7319350 m!7984170))

(assert (=> b!7319250 d!2272905))

(declare-fun d!2272909 () Bool)

(assert (=> d!2272909 (= (isEmpty!40878 (t!385629 l1!805)) ((_ is Nil!71270) (t!385629 l1!805)))))

(assert (=> b!7319288 d!2272909))

(declare-fun d!2272911 () Bool)

(declare-fun c!1358675 () Bool)

(assert (=> d!2272911 (= c!1358675 ((_ is Nil!71270) lt!2603471))))

(declare-fun e!4382160 () (InoxSet B!3661))

(assert (=> d!2272911 (= (content!14898 lt!2603471) e!4382160)))

(declare-fun b!7319352 () Bool)

(assert (=> b!7319352 (= e!4382160 ((as const (Array B!3661 Bool)) false))))

(declare-fun b!7319353 () Bool)

(assert (=> b!7319353 (= e!4382160 ((_ map or) (store ((as const (Array B!3661 Bool)) false) (h!77718 lt!2603471) true) (content!14898 (t!385629 lt!2603471))))))

(assert (= (and d!2272911 c!1358675) b!7319352))

(assert (= (and d!2272911 (not c!1358675)) b!7319353))

(declare-fun m!7984172 () Bool)

(assert (=> b!7319353 m!7984172))

(declare-fun m!7984174 () Bool)

(assert (=> b!7319353 m!7984174))

(assert (=> b!7319241 d!2272911))

(declare-fun b!7319354 () Bool)

(declare-fun e!4382161 () Bool)

(declare-fun tp!2078636 () Bool)

(assert (=> b!7319354 (= e!4382161 (and tp_is_empty!47811 tp!2078636))))

(assert (=> b!7319304 (= tp!2078623 e!4382161)))

(assert (= (and b!7319304 ((_ is Cons!71270) (t!385629 (t!385629 l2!794)))) b!7319354))

(declare-fun condSetEmpty!55174 () Bool)

(assert (=> setNonEmpty!55166 (= condSetEmpty!55174 (= setRest!55166 ((as const (Array A!959 Bool)) false)))))

(declare-fun setRes!55174 () Bool)

(assert (=> setNonEmpty!55166 (= tp!2078620 setRes!55174)))

(declare-fun setIsEmpty!55174 () Bool)

(assert (=> setIsEmpty!55174 setRes!55174))

(declare-fun setNonEmpty!55174 () Bool)

(declare-fun tp!2078637 () Bool)

(assert (=> setNonEmpty!55174 (= setRes!55174 (and tp!2078637 tp_is_empty!47809))))

(declare-fun setElem!55174 () A!959)

(declare-fun setRest!55174 () (InoxSet A!959))

(assert (=> setNonEmpty!55174 (= setRest!55166 ((_ map or) (store ((as const (Array A!959 Bool)) false) setElem!55174 true) setRest!55174))))

(assert (= (and setNonEmpty!55166 condSetEmpty!55174) setIsEmpty!55174))

(assert (= (and setNonEmpty!55166 (not condSetEmpty!55174)) setNonEmpty!55174))

(declare-fun condSetEmpty!55175 () Bool)

(assert (=> setNonEmpty!55165 (= condSetEmpty!55175 (= setRest!55165 ((as const (Array A!959 Bool)) false)))))

(declare-fun setRes!55175 () Bool)

(assert (=> setNonEmpty!55165 (= tp!2078619 setRes!55175)))

(declare-fun setIsEmpty!55175 () Bool)

(assert (=> setIsEmpty!55175 setRes!55175))

(declare-fun setNonEmpty!55175 () Bool)

(declare-fun tp!2078638 () Bool)

(assert (=> setNonEmpty!55175 (= setRes!55175 (and tp!2078638 tp_is_empty!47809))))

(declare-fun setElem!55175 () A!959)

(declare-fun setRest!55175 () (InoxSet A!959))

(assert (=> setNonEmpty!55175 (= setRest!55165 ((_ map or) (store ((as const (Array A!959 Bool)) false) setElem!55175 true) setRest!55175))))

(assert (= (and setNonEmpty!55165 condSetEmpty!55175) setIsEmpty!55175))

(assert (= (and setNonEmpty!55165 (not condSetEmpty!55175)) setNonEmpty!55175))

(declare-fun b!7319355 () Bool)

(declare-fun e!4382162 () Bool)

(declare-fun tp!2078639 () Bool)

(assert (=> b!7319355 (= e!4382162 (and tp_is_empty!47811 tp!2078639))))

(assert (=> b!7319305 (= tp!2078624 e!4382162)))

(assert (= (and b!7319305 ((_ is Cons!71270) (t!385629 (t!385629 l1!805)))) b!7319355))

(check-sat (not bm!665847) (not b!7319331) (not b!7319350) (not setNonEmpty!55174) (not d!2272901) tp_is_empty!47811 (not setNonEmpty!55170) (not b!7319345) (not b!7319335) (not b!7319332) (not b!7319351) tp_is_empty!47809 (not setNonEmpty!55169) (not b!7319320) (not d!2272879) (not b!7319309) (not b!7319321) (not b!7319343) (not b!7319330) (not b!7319308) (not b!7319327) (not b!7319346) b_and!351521 (not b!7319334) (not b!7319344) (not setNonEmpty!55175) (not b!7319342) (not b!7319315) (not d!2272885) (not b!7319326) (not b!7319354) (not b_next!134903) (not setNonEmpty!55171) (not b!7319347) (not b!7319353) (not d!2272887) (not b!7319355))
(check-sat b_and!351521 (not b_next!134903))
