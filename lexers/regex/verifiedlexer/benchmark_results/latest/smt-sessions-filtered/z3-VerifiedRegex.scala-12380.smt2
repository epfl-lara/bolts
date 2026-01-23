; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693180 () Bool)

(assert start!693180)

(declare-fun b_free!133625 () Bool)

(declare-fun b_next!134415 () Bool)

(assert (=> start!693180 (= b_free!133625 (not b_next!134415))))

(declare-fun tp!1960573 () Bool)

(declare-fun b_and!350677 () Bool)

(assert (=> start!693180 (= tp!1960573 b_and!350677)))

(declare-fun setNonEmpty!50731 () Bool)

(declare-fun setRes!50731 () Bool)

(declare-fun tp!1960574 () Bool)

(declare-fun tp_is_empty!45255 () Bool)

(assert (=> setNonEmpty!50731 (= setRes!50731 (and tp!1960574 tp_is_empty!45255))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!531 0))(
  ( (A!532 (val!27857 Int)) )
))
(declare-fun s!1427 () (InoxSet A!531))

(declare-fun setElem!50731 () A!531)

(declare-fun setRest!50731 () (InoxSet A!531))

(assert (=> setNonEmpty!50731 (= s!1427 ((_ map or) (store ((as const (Array A!531 Bool)) false) setElem!50731 true) setRest!50731))))

(declare-fun setIsEmpty!50731 () Bool)

(assert (=> setIsEmpty!50731 setRes!50731))

(declare-fun b!7121010 () Bool)

(declare-fun e!4278732 () Bool)

(declare-datatypes ((B!3189 0))(
  ( (B!3190 (val!27858 Int)) )
))
(declare-datatypes ((List!68964 0))(
  ( (Nil!68840) (Cons!68840 (h!75288 B!3189) (t!382831 List!68964)) )
))
(declare-fun lt!2561427 () List!68964)

(declare-fun lt!2561428 () (InoxSet B!3189))

(get-info :version)

(assert (=> b!7121010 (= e!4278732 (not (or (not ((_ is Cons!68840) (t!382831 lt!2561427))) (select lt!2561428 (h!75288 (t!382831 lt!2561427))))))))

(declare-fun empty!2735 () A!531)

(declare-fun f!842 () Int)

(declare-fun mapPost2!552 ((InoxSet A!531) Int B!3189) A!531)

(assert (=> b!7121010 (= (mapPost2!552 s!1427 f!842 (h!75288 lt!2561427)) empty!2735)))

(assert (=> b!7121010 true))

(assert (=> b!7121010 tp_is_empty!45255))

(declare-fun res!2904932 () Bool)

(declare-fun e!4278731 () Bool)

(assert (=> start!693180 (=> (not res!2904932) (not e!4278731))))

(declare-fun elmt!108 () A!531)

(assert (=> start!693180 (= res!2904932 (= s!1427 (store ((as const (Array A!531 Bool)) false) elmt!108 true)))))

(assert (=> start!693180 e!4278731))

(declare-fun condSetEmpty!50731 () Bool)

(assert (=> start!693180 (= condSetEmpty!50731 (= s!1427 ((as const (Array A!531 Bool)) false)))))

(assert (=> start!693180 setRes!50731))

(assert (=> start!693180 tp_is_empty!45255))

(assert (=> start!693180 tp!1960573))

(declare-fun b!7121009 () Bool)

(assert (=> b!7121009 (= e!4278731 e!4278732)))

(declare-fun res!2904931 () Bool)

(assert (=> b!7121009 (=> (not res!2904931) (not e!4278732))))

(assert (=> b!7121009 (= res!2904931 ((_ is Cons!68840) lt!2561427))))

(declare-fun toList!11067 ((InoxSet B!3189)) List!68964)

(assert (=> b!7121009 (= lt!2561427 (toList!11067 lt!2561428))))

(declare-fun map!16344 ((InoxSet A!531) Int) (InoxSet B!3189))

(assert (=> b!7121009 (= lt!2561428 (map!16344 s!1427 f!842))))

(assert (= (and start!693180 res!2904932) b!7121009))

(assert (= (and b!7121009 res!2904931) b!7121010))

(assert (= (and start!693180 condSetEmpty!50731) setIsEmpty!50731))

(assert (= (and start!693180 (not condSetEmpty!50731)) setNonEmpty!50731))

(declare-fun m!7837842 () Bool)

(assert (=> b!7121010 m!7837842))

(declare-fun m!7837844 () Bool)

(assert (=> b!7121010 m!7837844))

(declare-fun m!7837846 () Bool)

(assert (=> start!693180 m!7837846))

(declare-fun m!7837848 () Bool)

(assert (=> b!7121009 m!7837848))

(declare-fun m!7837850 () Bool)

(assert (=> b!7121009 m!7837850))

(check-sat (not b!7121010) (not b!7121009) tp_is_empty!45255 (not b_next!134415) b_and!350677 (not setNonEmpty!50731))
(check-sat b_and!350677 (not b_next!134415))
(get-model)

(declare-fun d!2222017 () Bool)

(declare-fun e!4278738 () Bool)

(assert (=> d!2222017 e!4278738))

(declare-fun res!2904938 () Bool)

(assert (=> d!2222017 (=> (not res!2904938) (not e!4278738))))

(declare-fun lt!2561434 () A!531)

(declare-fun dynLambda!28066 (Int A!531) B!3189)

(assert (=> d!2222017 (= res!2904938 (= (h!75288 lt!2561427) (dynLambda!28066 f!842 lt!2561434)))))

(declare-fun choose!54944 ((InoxSet A!531) Int B!3189) A!531)

(assert (=> d!2222017 (= lt!2561434 (choose!54944 s!1427 f!842 (h!75288 lt!2561427)))))

(assert (=> d!2222017 (select (map!16344 s!1427 f!842) (h!75288 lt!2561427))))

(assert (=> d!2222017 (= (mapPost2!552 s!1427 f!842 (h!75288 lt!2561427)) lt!2561434)))

(declare-fun b!7121017 () Bool)

(assert (=> b!7121017 (= e!4278738 (select s!1427 lt!2561434))))

(assert (= (and d!2222017 res!2904938) b!7121017))

(declare-fun b_lambda!271585 () Bool)

(assert (=> (not b_lambda!271585) (not d!2222017)))

(declare-fun t!382833 () Bool)

(declare-fun tb!261957 () Bool)

(assert (=> (and start!693180 (= f!842 f!842) t!382833) tb!261957))

(declare-fun result!349060 () Bool)

(declare-fun tp_is_empty!45257 () Bool)

(assert (=> tb!261957 (= result!349060 tp_is_empty!45257)))

(assert (=> d!2222017 t!382833))

(declare-fun b_and!350679 () Bool)

(assert (= b_and!350677 (and (=> t!382833 result!349060) b_and!350679)))

(declare-fun m!7837860 () Bool)

(assert (=> d!2222017 m!7837860))

(declare-fun m!7837862 () Bool)

(assert (=> d!2222017 m!7837862))

(assert (=> d!2222017 m!7837850))

(declare-fun m!7837864 () Bool)

(assert (=> d!2222017 m!7837864))

(declare-fun m!7837866 () Bool)

(assert (=> b!7121017 m!7837866))

(assert (=> b!7121010 d!2222017))

(declare-fun d!2222023 () Bool)

(declare-fun e!4278744 () Bool)

(assert (=> d!2222023 e!4278744))

(declare-fun res!2904944 () Bool)

(assert (=> d!2222023 (=> (not res!2904944) (not e!4278744))))

(declare-fun lt!2561440 () List!68964)

(declare-fun noDuplicate!2771 (List!68964) Bool)

(assert (=> d!2222023 (= res!2904944 (noDuplicate!2771 lt!2561440))))

(declare-fun choose!54946 ((InoxSet B!3189)) List!68964)

(assert (=> d!2222023 (= lt!2561440 (choose!54946 lt!2561428))))

(assert (=> d!2222023 (= (toList!11067 lt!2561428) lt!2561440)))

(declare-fun b!7121030 () Bool)

(declare-fun content!14069 (List!68964) (InoxSet B!3189))

(assert (=> b!7121030 (= e!4278744 (= (content!14069 lt!2561440) lt!2561428))))

(assert (= (and d!2222023 res!2904944) b!7121030))

(declare-fun m!7837876 () Bool)

(assert (=> d!2222023 m!7837876))

(declare-fun m!7837878 () Bool)

(assert (=> d!2222023 m!7837878))

(declare-fun m!7837880 () Bool)

(assert (=> b!7121030 m!7837880))

(assert (=> b!7121009 d!2222023))

(declare-fun d!2222025 () Bool)

(declare-fun choose!54947 ((InoxSet A!531) Int) (InoxSet B!3189))

(assert (=> d!2222025 (= (map!16344 s!1427 f!842) (choose!54947 s!1427 f!842))))

(declare-fun bs!1885916 () Bool)

(assert (= bs!1885916 d!2222025))

(declare-fun m!7837882 () Bool)

(assert (=> bs!1885916 m!7837882))

(assert (=> b!7121009 d!2222025))

(declare-fun condSetEmpty!50737 () Bool)

(assert (=> setNonEmpty!50731 (= condSetEmpty!50737 (= setRest!50731 ((as const (Array A!531 Bool)) false)))))

(declare-fun setRes!50737 () Bool)

(assert (=> setNonEmpty!50731 (= tp!1960574 setRes!50737)))

(declare-fun setIsEmpty!50737 () Bool)

(assert (=> setIsEmpty!50737 setRes!50737))

(declare-fun setNonEmpty!50737 () Bool)

(declare-fun tp!1960580 () Bool)

(assert (=> setNonEmpty!50737 (= setRes!50737 (and tp!1960580 tp_is_empty!45255))))

(declare-fun setElem!50737 () A!531)

(declare-fun setRest!50737 () (InoxSet A!531))

(assert (=> setNonEmpty!50737 (= setRest!50731 ((_ map or) (store ((as const (Array A!531 Bool)) false) setElem!50737 true) setRest!50737))))

(assert (= (and setNonEmpty!50731 condSetEmpty!50737) setIsEmpty!50737))

(assert (= (and setNonEmpty!50731 (not condSetEmpty!50737)) setNonEmpty!50737))

(declare-fun b_lambda!271591 () Bool)

(assert (= b_lambda!271585 (or (and start!693180 b_free!133625) b_lambda!271591)))

(check-sat (not d!2222023) b_and!350679 tp_is_empty!45257 (not setNonEmpty!50737) tp_is_empty!45255 (not b_next!134415) (not b_lambda!271591) (not d!2222025) (not d!2222017) (not b!7121030))
(check-sat b_and!350679 (not b_next!134415))
(get-model)

(declare-fun d!2222027 () Bool)

(declare-fun e!4278747 () Bool)

(assert (=> d!2222027 e!4278747))

(declare-fun res!2904947 () Bool)

(assert (=> d!2222027 (=> (not res!2904947) (not e!4278747))))

(declare-fun a!13964 () A!531)

(assert (=> d!2222027 (= res!2904947 (= (h!75288 lt!2561427) (dynLambda!28066 f!842 a!13964)))))

(assert (=> d!2222027 tp_is_empty!45255))

(assert (=> d!2222027 (= (choose!54944 s!1427 f!842 (h!75288 lt!2561427)) a!13964)))

(declare-fun b!7121036 () Bool)

(assert (=> b!7121036 (= e!4278747 (select s!1427 a!13964))))

(assert (= (and d!2222027 res!2904947) b!7121036))

(declare-fun b_lambda!271593 () Bool)

(assert (=> (not b_lambda!271593) (not d!2222027)))

(declare-fun t!382837 () Bool)

(declare-fun tb!261961 () Bool)

(assert (=> (and start!693180 (= f!842 f!842) t!382837) tb!261961))

(declare-fun result!349072 () Bool)

(assert (=> tb!261961 (= result!349072 tp_is_empty!45257)))

(assert (=> d!2222027 t!382837))

(declare-fun b_and!350683 () Bool)

(assert (= b_and!350679 (and (=> t!382837 result!349072) b_and!350683)))

(declare-fun m!7837884 () Bool)

(assert (=> d!2222027 m!7837884))

(declare-fun m!7837886 () Bool)

(assert (=> b!7121036 m!7837886))

(assert (=> d!2222017 d!2222027))

(assert (=> d!2222017 d!2222025))

(declare-fun d!2222029 () Bool)

(declare-fun res!2904954 () Bool)

(declare-fun e!4278754 () Bool)

(assert (=> d!2222029 (=> res!2904954 e!4278754)))

(assert (=> d!2222029 (= res!2904954 ((_ is Nil!68840) lt!2561440))))

(assert (=> d!2222029 (= (noDuplicate!2771 lt!2561440) e!4278754)))

(declare-fun b!7121044 () Bool)

(declare-fun e!4278755 () Bool)

(assert (=> b!7121044 (= e!4278754 e!4278755)))

(declare-fun res!2904955 () Bool)

(assert (=> b!7121044 (=> (not res!2904955) (not e!4278755))))

(declare-fun contains!20510 (List!68964 B!3189) Bool)

(assert (=> b!7121044 (= res!2904955 (not (contains!20510 (t!382831 lt!2561440) (h!75288 lt!2561440))))))

(declare-fun b!7121045 () Bool)

(assert (=> b!7121045 (= e!4278755 (noDuplicate!2771 (t!382831 lt!2561440)))))

(assert (= (and d!2222029 (not res!2904954)) b!7121044))

(assert (= (and b!7121044 res!2904955) b!7121045))

(declare-fun m!7837888 () Bool)

(assert (=> b!7121044 m!7837888))

(declare-fun m!7837890 () Bool)

(assert (=> b!7121045 m!7837890))

(assert (=> d!2222023 d!2222029))

(declare-fun d!2222033 () Bool)

(declare-fun e!4278761 () Bool)

(assert (=> d!2222033 e!4278761))

(declare-fun res!2904964 () Bool)

(assert (=> d!2222033 (=> (not res!2904964) (not e!4278761))))

(declare-fun res!2904963 () List!68964)

(assert (=> d!2222033 (= res!2904964 (noDuplicate!2771 res!2904963))))

(declare-fun e!4278762 () Bool)

(assert (=> d!2222033 e!4278762))

(assert (=> d!2222033 (= (choose!54946 lt!2561428) res!2904963)))

(declare-fun b!7121051 () Bool)

(declare-fun tp!1960585 () Bool)

(assert (=> b!7121051 (= e!4278762 (and tp_is_empty!45257 tp!1960585))))

(declare-fun b!7121052 () Bool)

(assert (=> b!7121052 (= e!4278761 (= (content!14069 res!2904963) lt!2561428))))

(assert (= (and d!2222033 ((_ is Cons!68840) res!2904963)) b!7121051))

(assert (= (and d!2222033 res!2904964) b!7121052))

(declare-fun m!7837896 () Bool)

(assert (=> d!2222033 m!7837896))

(declare-fun m!7837898 () Bool)

(assert (=> b!7121052 m!7837898))

(assert (=> d!2222023 d!2222033))

(declare-fun d!2222037 () Bool)

(assert (=> d!2222037 true))

(declare-fun setRes!50743 () Bool)

(assert (=> d!2222037 setRes!50743))

(declare-fun condSetEmpty!50743 () Bool)

(declare-fun res!2904968 () (InoxSet B!3189))

(assert (=> d!2222037 (= condSetEmpty!50743 (= res!2904968 ((as const (Array B!3189 Bool)) false)))))

(assert (=> d!2222037 (= (choose!54947 s!1427 f!842) res!2904968)))

(declare-fun setIsEmpty!50743 () Bool)

(assert (=> setIsEmpty!50743 setRes!50743))

(declare-fun setNonEmpty!50743 () Bool)

(declare-fun tp!1960589 () Bool)

(assert (=> setNonEmpty!50743 (= setRes!50743 (and tp!1960589 tp_is_empty!45257))))

(declare-fun setElem!50743 () B!3189)

(declare-fun setRest!50743 () (InoxSet B!3189))

(assert (=> setNonEmpty!50743 (= res!2904968 ((_ map or) (store ((as const (Array B!3189 Bool)) false) setElem!50743 true) setRest!50743))))

(assert (= (and d!2222037 condSetEmpty!50743) setIsEmpty!50743))

(assert (= (and d!2222037 (not condSetEmpty!50743)) setNonEmpty!50743))

(assert (=> d!2222025 d!2222037))

(declare-fun d!2222041 () Bool)

(declare-fun c!1328926 () Bool)

(assert (=> d!2222041 (= c!1328926 ((_ is Nil!68840) lt!2561440))))

(declare-fun e!4278768 () (InoxSet B!3189))

(assert (=> d!2222041 (= (content!14069 lt!2561440) e!4278768)))

(declare-fun b!7121063 () Bool)

(assert (=> b!7121063 (= e!4278768 ((as const (Array B!3189 Bool)) false))))

(declare-fun b!7121064 () Bool)

(assert (=> b!7121064 (= e!4278768 ((_ map or) (store ((as const (Array B!3189 Bool)) false) (h!75288 lt!2561440) true) (content!14069 (t!382831 lt!2561440))))))

(assert (= (and d!2222041 c!1328926) b!7121063))

(assert (= (and d!2222041 (not c!1328926)) b!7121064))

(declare-fun m!7837904 () Bool)

(assert (=> b!7121064 m!7837904))

(declare-fun m!7837906 () Bool)

(assert (=> b!7121064 m!7837906))

(assert (=> b!7121030 d!2222041))

(declare-fun condSetEmpty!50744 () Bool)

(assert (=> setNonEmpty!50737 (= condSetEmpty!50744 (= setRest!50737 ((as const (Array A!531 Bool)) false)))))

(declare-fun setRes!50744 () Bool)

(assert (=> setNonEmpty!50737 (= tp!1960580 setRes!50744)))

(declare-fun setIsEmpty!50744 () Bool)

(assert (=> setIsEmpty!50744 setRes!50744))

(declare-fun setNonEmpty!50744 () Bool)

(declare-fun tp!1960590 () Bool)

(assert (=> setNonEmpty!50744 (= setRes!50744 (and tp!1960590 tp_is_empty!45255))))

(declare-fun setElem!50744 () A!531)

(declare-fun setRest!50744 () (InoxSet A!531))

(assert (=> setNonEmpty!50744 (= setRest!50737 ((_ map or) (store ((as const (Array A!531 Bool)) false) setElem!50744 true) setRest!50744))))

(assert (= (and setNonEmpty!50737 condSetEmpty!50744) setIsEmpty!50744))

(assert (= (and setNonEmpty!50737 (not condSetEmpty!50744)) setNonEmpty!50744))

(declare-fun b_lambda!271597 () Bool)

(assert (= b_lambda!271593 (or (and start!693180 b_free!133625) b_lambda!271597)))

(check-sat (not d!2222033) (not setNonEmpty!50743) (not b!7121051) (not b!7121045) tp_is_empty!45257 (not setNonEmpty!50744) tp_is_empty!45255 (not b_next!134415) (not b_lambda!271591) (not b!7121064) b_and!350683 (not b!7121052) (not b!7121044) (not b_lambda!271597))
(check-sat b_and!350683 (not b_next!134415))
(get-model)

(declare-fun d!2222047 () Bool)

(declare-fun c!1328927 () Bool)

(assert (=> d!2222047 (= c!1328927 ((_ is Nil!68840) res!2904963))))

(declare-fun e!4278781 () (InoxSet B!3189))

(assert (=> d!2222047 (= (content!14069 res!2904963) e!4278781)))

(declare-fun b!7121077 () Bool)

(assert (=> b!7121077 (= e!4278781 ((as const (Array B!3189 Bool)) false))))

(declare-fun b!7121078 () Bool)

(assert (=> b!7121078 (= e!4278781 ((_ map or) (store ((as const (Array B!3189 Bool)) false) (h!75288 res!2904963) true) (content!14069 (t!382831 res!2904963))))))

(assert (= (and d!2222047 c!1328927) b!7121077))

(assert (= (and d!2222047 (not c!1328927)) b!7121078))

(declare-fun m!7837916 () Bool)

(assert (=> b!7121078 m!7837916))

(declare-fun m!7837918 () Bool)

(assert (=> b!7121078 m!7837918))

(assert (=> b!7121052 d!2222047))

(declare-fun d!2222049 () Bool)

(declare-fun res!2904981 () Bool)

(declare-fun e!4278782 () Bool)

(assert (=> d!2222049 (=> res!2904981 e!4278782)))

(assert (=> d!2222049 (= res!2904981 ((_ is Nil!68840) res!2904963))))

(assert (=> d!2222049 (= (noDuplicate!2771 res!2904963) e!4278782)))

(declare-fun b!7121079 () Bool)

(declare-fun e!4278783 () Bool)

(assert (=> b!7121079 (= e!4278782 e!4278783)))

(declare-fun res!2904982 () Bool)

(assert (=> b!7121079 (=> (not res!2904982) (not e!4278783))))

(assert (=> b!7121079 (= res!2904982 (not (contains!20510 (t!382831 res!2904963) (h!75288 res!2904963))))))

(declare-fun b!7121080 () Bool)

(assert (=> b!7121080 (= e!4278783 (noDuplicate!2771 (t!382831 res!2904963)))))

(assert (= (and d!2222049 (not res!2904981)) b!7121079))

(assert (= (and b!7121079 res!2904982) b!7121080))

(declare-fun m!7837920 () Bool)

(assert (=> b!7121079 m!7837920))

(declare-fun m!7837922 () Bool)

(assert (=> b!7121080 m!7837922))

(assert (=> d!2222033 d!2222049))

(declare-fun d!2222051 () Bool)

(declare-fun c!1328928 () Bool)

(assert (=> d!2222051 (= c!1328928 ((_ is Nil!68840) (t!382831 lt!2561440)))))

(declare-fun e!4278784 () (InoxSet B!3189))

(assert (=> d!2222051 (= (content!14069 (t!382831 lt!2561440)) e!4278784)))

(declare-fun b!7121081 () Bool)

(assert (=> b!7121081 (= e!4278784 ((as const (Array B!3189 Bool)) false))))

(declare-fun b!7121082 () Bool)

(assert (=> b!7121082 (= e!4278784 ((_ map or) (store ((as const (Array B!3189 Bool)) false) (h!75288 (t!382831 lt!2561440)) true) (content!14069 (t!382831 (t!382831 lt!2561440)))))))

(assert (= (and d!2222051 c!1328928) b!7121081))

(assert (= (and d!2222051 (not c!1328928)) b!7121082))

(declare-fun m!7837924 () Bool)

(assert (=> b!7121082 m!7837924))

(declare-fun m!7837926 () Bool)

(assert (=> b!7121082 m!7837926))

(assert (=> b!7121064 d!2222051))

(declare-fun d!2222053 () Bool)

(declare-fun lt!2561443 () Bool)

(assert (=> d!2222053 (= lt!2561443 (select (content!14069 (t!382831 lt!2561440)) (h!75288 lt!2561440)))))

(declare-fun e!4278789 () Bool)

(assert (=> d!2222053 (= lt!2561443 e!4278789)))

(declare-fun res!2904988 () Bool)

(assert (=> d!2222053 (=> (not res!2904988) (not e!4278789))))

(assert (=> d!2222053 (= res!2904988 ((_ is Cons!68840) (t!382831 lt!2561440)))))

(assert (=> d!2222053 (= (contains!20510 (t!382831 lt!2561440) (h!75288 lt!2561440)) lt!2561443)))

(declare-fun b!7121087 () Bool)

(declare-fun e!4278790 () Bool)

(assert (=> b!7121087 (= e!4278789 e!4278790)))

(declare-fun res!2904987 () Bool)

(assert (=> b!7121087 (=> res!2904987 e!4278790)))

(assert (=> b!7121087 (= res!2904987 (= (h!75288 (t!382831 lt!2561440)) (h!75288 lt!2561440)))))

(declare-fun b!7121088 () Bool)

(assert (=> b!7121088 (= e!4278790 (contains!20510 (t!382831 (t!382831 lt!2561440)) (h!75288 lt!2561440)))))

(assert (= (and d!2222053 res!2904988) b!7121087))

(assert (= (and b!7121087 (not res!2904987)) b!7121088))

(assert (=> d!2222053 m!7837906))

(declare-fun m!7837928 () Bool)

(assert (=> d!2222053 m!7837928))

(declare-fun m!7837930 () Bool)

(assert (=> b!7121088 m!7837930))

(assert (=> b!7121044 d!2222053))

(declare-fun d!2222055 () Bool)

(declare-fun res!2904989 () Bool)

(declare-fun e!4278791 () Bool)

(assert (=> d!2222055 (=> res!2904989 e!4278791)))

(assert (=> d!2222055 (= res!2904989 ((_ is Nil!68840) (t!382831 lt!2561440)))))

(assert (=> d!2222055 (= (noDuplicate!2771 (t!382831 lt!2561440)) e!4278791)))

(declare-fun b!7121089 () Bool)

(declare-fun e!4278792 () Bool)

(assert (=> b!7121089 (= e!4278791 e!4278792)))

(declare-fun res!2904990 () Bool)

(assert (=> b!7121089 (=> (not res!2904990) (not e!4278792))))

(assert (=> b!7121089 (= res!2904990 (not (contains!20510 (t!382831 (t!382831 lt!2561440)) (h!75288 (t!382831 lt!2561440)))))))

(declare-fun b!7121090 () Bool)

(assert (=> b!7121090 (= e!4278792 (noDuplicate!2771 (t!382831 (t!382831 lt!2561440))))))

(assert (= (and d!2222055 (not res!2904989)) b!7121089))

(assert (= (and b!7121089 res!2904990) b!7121090))

(declare-fun m!7837932 () Bool)

(assert (=> b!7121089 m!7837932))

(declare-fun m!7837934 () Bool)

(assert (=> b!7121090 m!7837934))

(assert (=> b!7121045 d!2222055))

(declare-fun condSetEmpty!50748 () Bool)

(assert (=> setNonEmpty!50743 (= condSetEmpty!50748 (= setRest!50743 ((as const (Array B!3189 Bool)) false)))))

(declare-fun setRes!50748 () Bool)

(assert (=> setNonEmpty!50743 (= tp!1960589 setRes!50748)))

(declare-fun setIsEmpty!50748 () Bool)

(assert (=> setIsEmpty!50748 setRes!50748))

(declare-fun setNonEmpty!50748 () Bool)

(declare-fun tp!1960597 () Bool)

(assert (=> setNonEmpty!50748 (= setRes!50748 (and tp!1960597 tp_is_empty!45257))))

(declare-fun setElem!50748 () B!3189)

(declare-fun setRest!50748 () (InoxSet B!3189))

(assert (=> setNonEmpty!50748 (= setRest!50743 ((_ map or) (store ((as const (Array B!3189 Bool)) false) setElem!50748 true) setRest!50748))))

(assert (= (and setNonEmpty!50743 condSetEmpty!50748) setIsEmpty!50748))

(assert (= (and setNonEmpty!50743 (not condSetEmpty!50748)) setNonEmpty!50748))

(declare-fun condSetEmpty!50749 () Bool)

(assert (=> setNonEmpty!50744 (= condSetEmpty!50749 (= setRest!50744 ((as const (Array A!531 Bool)) false)))))

(declare-fun setRes!50749 () Bool)

(assert (=> setNonEmpty!50744 (= tp!1960590 setRes!50749)))

(declare-fun setIsEmpty!50749 () Bool)

(assert (=> setIsEmpty!50749 setRes!50749))

(declare-fun setNonEmpty!50749 () Bool)

(declare-fun tp!1960598 () Bool)

(assert (=> setNonEmpty!50749 (= setRes!50749 (and tp!1960598 tp_is_empty!45255))))

(declare-fun setElem!50749 () A!531)

(declare-fun setRest!50749 () (InoxSet A!531))

(assert (=> setNonEmpty!50749 (= setRest!50744 ((_ map or) (store ((as const (Array A!531 Bool)) false) setElem!50749 true) setRest!50749))))

(assert (= (and setNonEmpty!50744 condSetEmpty!50749) setIsEmpty!50749))

(assert (= (and setNonEmpty!50744 (not condSetEmpty!50749)) setNonEmpty!50749))

(declare-fun b!7121097 () Bool)

(declare-fun e!4278795 () Bool)

(declare-fun tp!1960601 () Bool)

(assert (=> b!7121097 (= e!4278795 (and tp_is_empty!45257 tp!1960601))))

(assert (=> b!7121051 (= tp!1960585 e!4278795)))

(assert (= (and b!7121051 ((_ is Cons!68840) (t!382831 res!2904963))) b!7121097))

(check-sat (not setNonEmpty!50748) (not b!7121097) (not b!7121088) tp_is_empty!45257 (not b!7121082) tp_is_empty!45255 (not b!7121090) (not b_lambda!271591) (not d!2222053) (not b!7121078) (not b!7121079) (not b_lambda!271597) (not setNonEmpty!50749) (not b_next!134415) (not b!7121089) (not b!7121080) b_and!350683)
(check-sat b_and!350683 (not b_next!134415))
