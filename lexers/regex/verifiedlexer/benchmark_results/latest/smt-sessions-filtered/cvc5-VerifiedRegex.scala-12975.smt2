; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713552 () Bool)

(assert start!713552)

(declare-fun b_free!134075 () Bool)

(declare-fun b_next!134865 () Bool)

(assert (=> start!713552 (= b_free!134075 (not b_next!134865))))

(declare-fun tp!2078168 () Bool)

(declare-fun b_and!351483 () Bool)

(assert (=> start!713552 (= tp!2078168 b_and!351483)))

(declare-fun b!7318138 () Bool)

(declare-fun e!4381229 () Bool)

(declare-fun e!4381227 () Bool)

(assert (=> b!7318138 (= e!4381229 e!4381227)))

(declare-fun res!2957193 () Bool)

(assert (=> b!7318138 (=> (not res!2957193) (not e!4381227))))

(declare-datatypes ((B!3623 0))(
  ( (B!3624 (val!29241 Int)) )
))
(declare-datatypes ((List!71375 0))(
  ( (Nil!71251) (Cons!71251 (h!77699 B!3623) (t!385607 List!71375)) )
))
(declare-fun l2!808 () List!71375)

(declare-fun lt!2603095 () List!71375)

(declare-fun subseq!872 (List!71375 List!71375) Bool)

(assert (=> b!7318138 (= res!2957193 (subseq!872 l2!808 lt!2603095))))

(declare-fun lt!2603096 () (Set B!3623))

(declare-fun toList!11662 ((Set B!3623)) List!71375)

(assert (=> b!7318138 (= lt!2603095 (toList!11662 lt!2603096))))

(declare-datatypes ((A!921 0))(
  ( (A!922 (val!29242 Int)) )
))
(declare-fun s1!456 () (Set A!921))

(declare-fun f!803 () Int)

(declare-fun s2!427 () (Set A!921))

(declare-fun flatMap!3080 ((Set A!921) Int) (Set B!3623))

(assert (=> b!7318138 (= lt!2603096 (flatMap!3080 (set.union s1!456 s2!427) f!803))))

(declare-fun setIsEmpty!54966 () Bool)

(declare-fun setRes!54966 () Bool)

(assert (=> setIsEmpty!54966 setRes!54966))

(declare-fun setNonEmpty!54966 () Bool)

(declare-fun tp!2078170 () Bool)

(declare-fun tp_is_empty!47735 () Bool)

(assert (=> setNonEmpty!54966 (= setRes!54966 (and tp!2078170 tp_is_empty!47735))))

(declare-fun setElem!54966 () A!921)

(declare-fun setRest!54966 () (Set A!921))

(assert (=> setNonEmpty!54966 (= s2!427 (set.union (set.insert setElem!54966 (as set.empty (Set A!921))) setRest!54966))))

(declare-fun b!7318139 () Bool)

(declare-fun res!2957194 () Bool)

(assert (=> b!7318139 (=> (not res!2957194) (not e!4381227))))

(assert (=> b!7318139 (= res!2957194 (is-Cons!71251 l2!808))))

(declare-fun b!7318141 () Bool)

(declare-fun e!4381228 () Bool)

(declare-fun tp_is_empty!47733 () Bool)

(declare-fun tp!2078169 () Bool)

(assert (=> b!7318141 (= e!4381228 (and tp_is_empty!47733 tp!2078169))))

(declare-fun setNonEmpty!54967 () Bool)

(declare-fun setRes!54967 () Bool)

(declare-fun tp!2078172 () Bool)

(assert (=> setNonEmpty!54967 (= setRes!54967 (and tp!2078172 tp_is_empty!47735))))

(declare-fun setElem!54967 () A!921)

(declare-fun setRest!54967 () (Set A!921))

(assert (=> setNonEmpty!54967 (= s1!456 (set.union (set.insert setElem!54967 (as set.empty (Set A!921))) setRest!54967))))

(declare-fun setIsEmpty!54967 () Bool)

(assert (=> setIsEmpty!54967 setRes!54967))

(declare-fun b!7318142 () Bool)

(assert (=> b!7318142 (= e!4381227 (not (subseq!872 (t!385607 l2!808) lt!2603095)))))

(declare-datatypes ((Unit!164739 0))(
  ( (Unit!164740) )
))
(declare-fun lt!2603097 () Unit!164739)

(declare-fun subseqTail!93 (List!71375 List!71375) Unit!164739)

(assert (=> b!7318142 (= lt!2603097 (subseqTail!93 l2!808 lt!2603095))))

(declare-fun lt!2603098 () (Set B!3623))

(assert (=> b!7318142 (= (set.member (h!77699 l2!808) lt!2603098) (set.member (h!77699 l2!808) lt!2603096))))

(declare-fun lt!2603099 () Unit!164739)

(declare-fun lemmaFlatMapAssociativeElem!9 ((Set A!921) (Set A!921) Int B!3623) Unit!164739)

(assert (=> b!7318142 (= lt!2603099 (lemmaFlatMapAssociativeElem!9 s1!456 s2!427 f!803 (h!77699 l2!808)))))

(declare-fun b!7318140 () Bool)

(declare-fun e!4381230 () Bool)

(declare-fun tp!2078171 () Bool)

(assert (=> b!7318140 (= e!4381230 (and tp_is_empty!47733 tp!2078171))))

(declare-fun res!2957192 () Bool)

(assert (=> start!713552 (=> (not res!2957192) (not e!4381229))))

(declare-fun l1!819 () List!71375)

(assert (=> start!713552 (= res!2957192 (= l1!819 (toList!11662 lt!2603098)))))

(assert (=> start!713552 (= lt!2603098 (set.union (flatMap!3080 s1!456 f!803) (flatMap!3080 s2!427 f!803)))))

(assert (=> start!713552 e!4381229))

(assert (=> start!713552 e!4381230))

(declare-fun condSetEmpty!54966 () Bool)

(assert (=> start!713552 (= condSetEmpty!54966 (= s1!456 (as set.empty (Set A!921))))))

(assert (=> start!713552 setRes!54967))

(assert (=> start!713552 tp!2078168))

(assert (=> start!713552 e!4381228))

(declare-fun condSetEmpty!54967 () Bool)

(assert (=> start!713552 (= condSetEmpty!54967 (= s2!427 (as set.empty (Set A!921))))))

(assert (=> start!713552 setRes!54966))

(assert (= (and start!713552 res!2957192) b!7318138))

(assert (= (and b!7318138 res!2957193) b!7318139))

(assert (= (and b!7318139 res!2957194) b!7318142))

(assert (= (and start!713552 (is-Cons!71251 l2!808)) b!7318140))

(assert (= (and start!713552 condSetEmpty!54966) setIsEmpty!54967))

(assert (= (and start!713552 (not condSetEmpty!54966)) setNonEmpty!54967))

(assert (= (and start!713552 (is-Cons!71251 l1!819)) b!7318141))

(assert (= (and start!713552 condSetEmpty!54967) setIsEmpty!54966))

(assert (= (and start!713552 (not condSetEmpty!54967)) setNonEmpty!54966))

(declare-fun m!7982908 () Bool)

(assert (=> b!7318138 m!7982908))

(declare-fun m!7982910 () Bool)

(assert (=> b!7318138 m!7982910))

(declare-fun m!7982912 () Bool)

(assert (=> b!7318138 m!7982912))

(declare-fun m!7982914 () Bool)

(assert (=> b!7318142 m!7982914))

(declare-fun m!7982916 () Bool)

(assert (=> b!7318142 m!7982916))

(declare-fun m!7982918 () Bool)

(assert (=> b!7318142 m!7982918))

(declare-fun m!7982920 () Bool)

(assert (=> b!7318142 m!7982920))

(declare-fun m!7982922 () Bool)

(assert (=> b!7318142 m!7982922))

(declare-fun m!7982924 () Bool)

(assert (=> start!713552 m!7982924))

(declare-fun m!7982926 () Bool)

(assert (=> start!713552 m!7982926))

(declare-fun m!7982928 () Bool)

(assert (=> start!713552 m!7982928))

(push 1)

(assert (not start!713552))

(assert (not b_next!134865))

(assert (not b!7318142))

(assert (not b!7318140))

(assert (not b!7318138))

(assert (not setNonEmpty!54967))

(assert tp_is_empty!47735)

(assert (not b!7318141))

(assert tp_is_empty!47733)

(assert (not setNonEmpty!54966))

(assert b_and!351483)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351483)

(assert (not b_next!134865))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2272432 () Bool)

(declare-fun res!2957213 () Bool)

(declare-fun e!4381251 () Bool)

(assert (=> d!2272432 (=> res!2957213 e!4381251)))

(assert (=> d!2272432 (= res!2957213 (is-Nil!71251 l2!808))))

(assert (=> d!2272432 (= (subseq!872 l2!808 lt!2603095) e!4381251)))

(declare-fun b!7318169 () Bool)

(declare-fun e!4381252 () Bool)

(assert (=> b!7318169 (= e!4381252 (subseq!872 l2!808 (t!385607 lt!2603095)))))

(declare-fun b!7318167 () Bool)

(declare-fun e!4381253 () Bool)

(assert (=> b!7318167 (= e!4381253 e!4381252)))

(declare-fun res!2957214 () Bool)

(assert (=> b!7318167 (=> res!2957214 e!4381252)))

(declare-fun e!4381254 () Bool)

(assert (=> b!7318167 (= res!2957214 e!4381254)))

(declare-fun res!2957212 () Bool)

(assert (=> b!7318167 (=> (not res!2957212) (not e!4381254))))

(assert (=> b!7318167 (= res!2957212 (= (h!77699 l2!808) (h!77699 lt!2603095)))))

(declare-fun b!7318168 () Bool)

(assert (=> b!7318168 (= e!4381254 (subseq!872 (t!385607 l2!808) (t!385607 lt!2603095)))))

(declare-fun b!7318166 () Bool)

(assert (=> b!7318166 (= e!4381251 e!4381253)))

(declare-fun res!2957215 () Bool)

(assert (=> b!7318166 (=> (not res!2957215) (not e!4381253))))

(assert (=> b!7318166 (= res!2957215 (is-Cons!71251 lt!2603095))))

(assert (= (and d!2272432 (not res!2957213)) b!7318166))

(assert (= (and b!7318166 res!2957215) b!7318167))

(assert (= (and b!7318167 res!2957212) b!7318168))

(assert (= (and b!7318167 (not res!2957214)) b!7318169))

(declare-fun m!7982952 () Bool)

(assert (=> b!7318169 m!7982952))

(declare-fun m!7982954 () Bool)

(assert (=> b!7318168 m!7982954))

(assert (=> b!7318138 d!2272432))

(declare-fun d!2272434 () Bool)

(declare-fun e!4381257 () Bool)

(assert (=> d!2272434 e!4381257))

(declare-fun res!2957218 () Bool)

(assert (=> d!2272434 (=> (not res!2957218) (not e!4381257))))

(declare-fun lt!2603117 () List!71375)

(declare-fun noDuplicate!3068 (List!71375) Bool)

(assert (=> d!2272434 (= res!2957218 (noDuplicate!3068 lt!2603117))))

(declare-fun choose!56794 ((Set B!3623)) List!71375)

(assert (=> d!2272434 (= lt!2603117 (choose!56794 lt!2603096))))

(assert (=> d!2272434 (= (toList!11662 lt!2603096) lt!2603117)))

(declare-fun b!7318172 () Bool)

(declare-fun content!14887 (List!71375) (Set B!3623))

(assert (=> b!7318172 (= e!4381257 (= (content!14887 lt!2603117) lt!2603096))))

(assert (= (and d!2272434 res!2957218) b!7318172))

(declare-fun m!7982956 () Bool)

(assert (=> d!2272434 m!7982956))

(declare-fun m!7982958 () Bool)

(assert (=> d!2272434 m!7982958))

(declare-fun m!7982960 () Bool)

(assert (=> b!7318172 m!7982960))

(assert (=> b!7318138 d!2272434))

(declare-fun d!2272436 () Bool)

(declare-fun choose!56795 ((Set A!921) Int) (Set B!3623))

(assert (=> d!2272436 (= (flatMap!3080 (set.union s1!456 s2!427) f!803) (choose!56795 (set.union s1!456 s2!427) f!803))))

(declare-fun bs!1915608 () Bool)

(assert (= bs!1915608 d!2272436))

(declare-fun m!7982962 () Bool)

(assert (=> bs!1915608 m!7982962))

(assert (=> b!7318138 d!2272436))

(declare-fun d!2272438 () Bool)

(declare-fun e!4381258 () Bool)

(assert (=> d!2272438 e!4381258))

(declare-fun res!2957219 () Bool)

(assert (=> d!2272438 (=> (not res!2957219) (not e!4381258))))

(declare-fun lt!2603118 () List!71375)

(assert (=> d!2272438 (= res!2957219 (noDuplicate!3068 lt!2603118))))

(assert (=> d!2272438 (= lt!2603118 (choose!56794 lt!2603098))))

(assert (=> d!2272438 (= (toList!11662 lt!2603098) lt!2603118)))

(declare-fun b!7318173 () Bool)

(assert (=> b!7318173 (= e!4381258 (= (content!14887 lt!2603118) lt!2603098))))

(assert (= (and d!2272438 res!2957219) b!7318173))

(declare-fun m!7982964 () Bool)

(assert (=> d!2272438 m!7982964))

(declare-fun m!7982966 () Bool)

(assert (=> d!2272438 m!7982966))

(declare-fun m!7982968 () Bool)

(assert (=> b!7318173 m!7982968))

(assert (=> start!713552 d!2272438))

(declare-fun d!2272440 () Bool)

(assert (=> d!2272440 (= (flatMap!3080 s1!456 f!803) (choose!56795 s1!456 f!803))))

(declare-fun bs!1915609 () Bool)

(assert (= bs!1915609 d!2272440))

(declare-fun m!7982970 () Bool)

(assert (=> bs!1915609 m!7982970))

(assert (=> start!713552 d!2272440))

(declare-fun d!2272442 () Bool)

(assert (=> d!2272442 (= (flatMap!3080 s2!427 f!803) (choose!56795 s2!427 f!803))))

(declare-fun bs!1915610 () Bool)

(assert (= bs!1915610 d!2272442))

(declare-fun m!7982972 () Bool)

(assert (=> bs!1915610 m!7982972))

(assert (=> start!713552 d!2272442))

(declare-fun d!2272444 () Bool)

(declare-fun res!2957221 () Bool)

(declare-fun e!4381259 () Bool)

(assert (=> d!2272444 (=> res!2957221 e!4381259)))

(assert (=> d!2272444 (= res!2957221 (is-Nil!71251 (t!385607 l2!808)))))

(assert (=> d!2272444 (= (subseq!872 (t!385607 l2!808) lt!2603095) e!4381259)))

(declare-fun b!7318177 () Bool)

(declare-fun e!4381260 () Bool)

(assert (=> b!7318177 (= e!4381260 (subseq!872 (t!385607 l2!808) (t!385607 lt!2603095)))))

(declare-fun b!7318175 () Bool)

(declare-fun e!4381261 () Bool)

(assert (=> b!7318175 (= e!4381261 e!4381260)))

(declare-fun res!2957222 () Bool)

(assert (=> b!7318175 (=> res!2957222 e!4381260)))

(declare-fun e!4381262 () Bool)

(assert (=> b!7318175 (= res!2957222 e!4381262)))

(declare-fun res!2957220 () Bool)

(assert (=> b!7318175 (=> (not res!2957220) (not e!4381262))))

(assert (=> b!7318175 (= res!2957220 (= (h!77699 (t!385607 l2!808)) (h!77699 lt!2603095)))))

(declare-fun b!7318176 () Bool)

(assert (=> b!7318176 (= e!4381262 (subseq!872 (t!385607 (t!385607 l2!808)) (t!385607 lt!2603095)))))

(declare-fun b!7318174 () Bool)

(assert (=> b!7318174 (= e!4381259 e!4381261)))

(declare-fun res!2957223 () Bool)

(assert (=> b!7318174 (=> (not res!2957223) (not e!4381261))))

(assert (=> b!7318174 (= res!2957223 (is-Cons!71251 lt!2603095))))

(assert (= (and d!2272444 (not res!2957221)) b!7318174))

(assert (= (and b!7318174 res!2957223) b!7318175))

(assert (= (and b!7318175 res!2957220) b!7318176))

(assert (= (and b!7318175 (not res!2957222)) b!7318177))

(assert (=> b!7318177 m!7982954))

(declare-fun m!7982974 () Bool)

(assert (=> b!7318176 m!7982974))

(assert (=> b!7318142 d!2272444))

(declare-fun b!7318200 () Bool)

(declare-fun e!4381279 () Bool)

(assert (=> b!7318200 (= e!4381279 (subseq!872 l2!808 lt!2603095))))

(declare-fun b!7318201 () Bool)

(declare-fun e!4381280 () Unit!164739)

(declare-fun call!665821 () Unit!164739)

(assert (=> b!7318201 (= e!4381280 call!665821)))

(declare-fun b!7318202 () Bool)

(declare-fun c!1358552 () Bool)

(declare-fun isEmpty!40868 (List!71375) Bool)

(assert (=> b!7318202 (= c!1358552 (not (isEmpty!40868 (t!385607 l2!808))))))

(declare-fun e!4381282 () Unit!164739)

(assert (=> b!7318202 (= e!4381282 e!4381280)))

(declare-fun b!7318203 () Bool)

(declare-fun Unit!164743 () Unit!164739)

(assert (=> b!7318203 (= e!4381280 Unit!164743)))

(declare-fun bm!665816 () Bool)

(declare-fun c!1358551 () Bool)

(assert (=> bm!665816 (= call!665821 (subseqTail!93 (ite c!1358551 l2!808 (t!385607 l2!808)) (t!385607 lt!2603095)))))

(declare-fun b!7318204 () Bool)

(declare-fun e!4381281 () Unit!164739)

(assert (=> b!7318204 (= e!4381281 e!4381282)))

(assert (=> b!7318204 (= c!1358551 (subseq!872 l2!808 (t!385607 lt!2603095)))))

(declare-fun d!2272446 () Bool)

(declare-fun tail!14645 (List!71375) List!71375)

(assert (=> d!2272446 (subseq!872 (tail!14645 l2!808) lt!2603095)))

(declare-fun lt!2603121 () Unit!164739)

(assert (=> d!2272446 (= lt!2603121 e!4381281)))

(declare-fun c!1358550 () Bool)

(assert (=> d!2272446 (= c!1358550 (and (is-Cons!71251 l2!808) (is-Cons!71251 lt!2603095)))))

(assert (=> d!2272446 e!4381279))

(declare-fun res!2957234 () Bool)

(assert (=> d!2272446 (=> (not res!2957234) (not e!4381279))))

(assert (=> d!2272446 (= res!2957234 (not (isEmpty!40868 l2!808)))))

(assert (=> d!2272446 (= (subseqTail!93 l2!808 lt!2603095) lt!2603121)))

(declare-fun b!7318205 () Bool)

(declare-fun Unit!164744 () Unit!164739)

(assert (=> b!7318205 (= e!4381281 Unit!164744)))

(declare-fun b!7318206 () Bool)

(assert (=> b!7318206 (= e!4381282 call!665821)))

(assert (= (and d!2272446 res!2957234) b!7318200))

(assert (= (and d!2272446 c!1358550) b!7318204))

(assert (= (and d!2272446 (not c!1358550)) b!7318205))

(assert (= (and b!7318204 c!1358551) b!7318206))

(assert (= (and b!7318204 (not c!1358551)) b!7318202))

(assert (= (and b!7318202 c!1358552) b!7318201))

(assert (= (and b!7318202 (not c!1358552)) b!7318203))

(assert (= (or b!7318206 b!7318201) bm!665816))

(declare-fun m!7982976 () Bool)

(assert (=> bm!665816 m!7982976))

(declare-fun m!7982978 () Bool)

(assert (=> d!2272446 m!7982978))

(assert (=> d!2272446 m!7982978))

(declare-fun m!7982980 () Bool)

(assert (=> d!2272446 m!7982980))

(declare-fun m!7982982 () Bool)

(assert (=> d!2272446 m!7982982))

(declare-fun m!7982984 () Bool)

(assert (=> b!7318202 m!7982984))

(assert (=> b!7318204 m!7982952))

(assert (=> b!7318200 m!7982908))

(assert (=> b!7318142 d!2272446))

(declare-fun d!2272450 () Bool)

(assert (=> d!2272450 (= (set.member (h!77699 l2!808) (set.union (flatMap!3080 s1!456 f!803) (flatMap!3080 s2!427 f!803))) (set.member (h!77699 l2!808) (flatMap!3080 (set.union s1!456 s2!427) f!803)))))

(declare-fun lt!2603124 () Unit!164739)

(declare-fun choose!56796 ((Set A!921) (Set A!921) Int B!3623) Unit!164739)

(assert (=> d!2272450 (= lt!2603124 (choose!56796 s1!456 s2!427 f!803 (h!77699 l2!808)))))

(assert (=> d!2272450 (= (lemmaFlatMapAssociativeElem!9 s1!456 s2!427 f!803 (h!77699 l2!808)) lt!2603124)))

(declare-fun bs!1915611 () Bool)

(assert (= bs!1915611 d!2272450))

(assert (=> bs!1915611 m!7982912))

(declare-fun m!7982990 () Bool)

(assert (=> bs!1915611 m!7982990))

(declare-fun m!7982992 () Bool)

(assert (=> bs!1915611 m!7982992))

(assert (=> bs!1915611 m!7982926))

(declare-fun m!7982994 () Bool)

(assert (=> bs!1915611 m!7982994))

(assert (=> bs!1915611 m!7982928))

(assert (=> b!7318142 d!2272450))

(declare-fun condSetEmpty!54976 () Bool)

(assert (=> setNonEmpty!54967 (= condSetEmpty!54976 (= setRest!54967 (as set.empty (Set A!921))))))

(declare-fun setRes!54976 () Bool)

(assert (=> setNonEmpty!54967 (= tp!2078172 setRes!54976)))

(declare-fun setIsEmpty!54976 () Bool)

(assert (=> setIsEmpty!54976 setRes!54976))

(declare-fun setNonEmpty!54976 () Bool)

(declare-fun tp!2078190 () Bool)

(assert (=> setNonEmpty!54976 (= setRes!54976 (and tp!2078190 tp_is_empty!47735))))

(declare-fun setElem!54976 () A!921)

(declare-fun setRest!54976 () (Set A!921))

(assert (=> setNonEmpty!54976 (= setRest!54967 (set.union (set.insert setElem!54976 (as set.empty (Set A!921))) setRest!54976))))

(assert (= (and setNonEmpty!54967 condSetEmpty!54976) setIsEmpty!54976))

(assert (= (and setNonEmpty!54967 (not condSetEmpty!54976)) setNonEmpty!54976))

(declare-fun b!7318220 () Bool)

(declare-fun e!4381291 () Bool)

(declare-fun tp!2078193 () Bool)

(assert (=> b!7318220 (= e!4381291 (and tp_is_empty!47733 tp!2078193))))

(assert (=> b!7318141 (= tp!2078169 e!4381291)))

(assert (= (and b!7318141 (is-Cons!71251 (t!385607 l1!819))) b!7318220))

(declare-fun b!7318221 () Bool)

(declare-fun e!4381292 () Bool)

(declare-fun tp!2078194 () Bool)

(assert (=> b!7318221 (= e!4381292 (and tp_is_empty!47733 tp!2078194))))

(assert (=> b!7318140 (= tp!2078171 e!4381292)))

(assert (= (and b!7318140 (is-Cons!71251 (t!385607 l2!808))) b!7318221))

(declare-fun condSetEmpty!54977 () Bool)

(assert (=> setNonEmpty!54966 (= condSetEmpty!54977 (= setRest!54966 (as set.empty (Set A!921))))))

(declare-fun setRes!54977 () Bool)

(assert (=> setNonEmpty!54966 (= tp!2078170 setRes!54977)))

(declare-fun setIsEmpty!54977 () Bool)

(assert (=> setIsEmpty!54977 setRes!54977))

(declare-fun setNonEmpty!54977 () Bool)

(declare-fun tp!2078195 () Bool)

(assert (=> setNonEmpty!54977 (= setRes!54977 (and tp!2078195 tp_is_empty!47735))))

(declare-fun setElem!54977 () A!921)

(declare-fun setRest!54977 () (Set A!921))

(assert (=> setNonEmpty!54977 (= setRest!54966 (set.union (set.insert setElem!54977 (as set.empty (Set A!921))) setRest!54977))))

(assert (= (and setNonEmpty!54966 condSetEmpty!54977) setIsEmpty!54977))

(assert (= (and setNonEmpty!54966 (not condSetEmpty!54977)) setNonEmpty!54977))

(push 1)

(assert (not d!2272450))

(assert (not d!2272438))

(assert (not b!7318221))

(assert (not b!7318172))

(assert b_and!351483)

(assert (not b_next!134865))

(assert (not setNonEmpty!54977))

(assert (not d!2272446))

(assert (not b!7318173))

(assert (not b!7318168))

(assert (not b!7318220))

(assert tp_is_empty!47735)

(assert (not b!7318176))

(assert (not b!7318177))

(assert tp_is_empty!47733)

(assert (not b!7318202))

(assert (not setNonEmpty!54976))

(assert (not d!2272436))

(assert (not d!2272440))

(assert (not b!7318204))

(assert (not bm!665816))

(assert (not d!2272434))

(assert (not b!7318169))

(assert (not b!7318200))

(assert (not d!2272442))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351483)

(assert (not b_next!134865))

(check-sat)

(get-model)

(pop 1)

(declare-fun e!4381315 () Bool)

(declare-fun b!7318258 () Bool)

(assert (=> b!7318258 (= e!4381315 (subseq!872 (ite c!1358551 l2!808 (t!385607 l2!808)) (t!385607 lt!2603095)))))

(declare-fun b!7318259 () Bool)

(declare-fun e!4381316 () Unit!164739)

(declare-fun call!665825 () Unit!164739)

(assert (=> b!7318259 (= e!4381316 call!665825)))

(declare-fun b!7318260 () Bool)

(declare-fun c!1358564 () Bool)

(assert (=> b!7318260 (= c!1358564 (not (isEmpty!40868 (t!385607 (ite c!1358551 l2!808 (t!385607 l2!808))))))))

(declare-fun e!4381318 () Unit!164739)

(assert (=> b!7318260 (= e!4381318 e!4381316)))

(declare-fun b!7318261 () Bool)

(declare-fun Unit!164747 () Unit!164739)

(assert (=> b!7318261 (= e!4381316 Unit!164747)))

(declare-fun bm!665820 () Bool)

(declare-fun c!1358563 () Bool)

(assert (=> bm!665820 (= call!665825 (subseqTail!93 (ite c!1358563 (ite c!1358551 l2!808 (t!385607 l2!808)) (t!385607 (ite c!1358551 l2!808 (t!385607 l2!808)))) (t!385607 (t!385607 lt!2603095))))))

(declare-fun b!7318262 () Bool)

(declare-fun e!4381317 () Unit!164739)

(assert (=> b!7318262 (= e!4381317 e!4381318)))

(assert (=> b!7318262 (= c!1358563 (subseq!872 (ite c!1358551 l2!808 (t!385607 l2!808)) (t!385607 (t!385607 lt!2603095))))))

(declare-fun d!2272468 () Bool)

(assert (=> d!2272468 (subseq!872 (tail!14645 (ite c!1358551 l2!808 (t!385607 l2!808))) (t!385607 lt!2603095))))

(declare-fun lt!2603135 () Unit!164739)

(assert (=> d!2272468 (= lt!2603135 e!4381317)))

(declare-fun c!1358562 () Bool)

(assert (=> d!2272468 (= c!1358562 (and (is-Cons!71251 (ite c!1358551 l2!808 (t!385607 l2!808))) (is-Cons!71251 (t!385607 lt!2603095))))))

(assert (=> d!2272468 e!4381315))

(declare-fun res!2957250 () Bool)

(assert (=> d!2272468 (=> (not res!2957250) (not e!4381315))))

(assert (=> d!2272468 (= res!2957250 (not (isEmpty!40868 (ite c!1358551 l2!808 (t!385607 l2!808)))))))

(assert (=> d!2272468 (= (subseqTail!93 (ite c!1358551 l2!808 (t!385607 l2!808)) (t!385607 lt!2603095)) lt!2603135)))

(declare-fun b!7318263 () Bool)

(declare-fun Unit!164748 () Unit!164739)

(assert (=> b!7318263 (= e!4381317 Unit!164748)))

(declare-fun b!7318264 () Bool)

(assert (=> b!7318264 (= e!4381318 call!665825)))

(assert (= (and d!2272468 res!2957250) b!7318258))

(assert (= (and d!2272468 c!1358562) b!7318262))

(assert (= (and d!2272468 (not c!1358562)) b!7318263))

(assert (= (and b!7318262 c!1358563) b!7318264))

(assert (= (and b!7318262 (not c!1358563)) b!7318260))

(assert (= (and b!7318260 c!1358564) b!7318259))

(assert (= (and b!7318260 (not c!1358564)) b!7318261))

(assert (= (or b!7318264 b!7318259) bm!665820))

(declare-fun m!7983032 () Bool)

(assert (=> bm!665820 m!7983032))

(declare-fun m!7983034 () Bool)

(assert (=> d!2272468 m!7983034))

(assert (=> d!2272468 m!7983034))

(declare-fun m!7983036 () Bool)

(assert (=> d!2272468 m!7983036))

(declare-fun m!7983038 () Bool)

(assert (=> d!2272468 m!7983038))

(declare-fun m!7983040 () Bool)

(assert (=> b!7318260 m!7983040))

(declare-fun m!7983042 () Bool)

(assert (=> b!7318262 m!7983042))

(declare-fun m!7983044 () Bool)

(assert (=> b!7318258 m!7983044))

(assert (=> bm!665816 d!2272468))

(declare-fun d!2272470 () Bool)

(assert (=> d!2272470 (= (isEmpty!40868 (t!385607 l2!808)) (is-Nil!71251 (t!385607 l2!808)))))

(assert (=> b!7318202 d!2272470))

(declare-fun d!2272472 () Bool)

(declare-fun c!1358567 () Bool)

(assert (=> d!2272472 (= c!1358567 (is-Nil!71251 lt!2603118))))

(declare-fun e!4381321 () (Set B!3623))

(assert (=> d!2272472 (= (content!14887 lt!2603118) e!4381321)))

(declare-fun b!7318269 () Bool)

(assert (=> b!7318269 (= e!4381321 (as set.empty (Set B!3623)))))

(declare-fun b!7318270 () Bool)

(assert (=> b!7318270 (= e!4381321 (set.union (set.insert (h!77699 lt!2603118) (as set.empty (Set B!3623))) (content!14887 (t!385607 lt!2603118))))))

(assert (= (and d!2272472 c!1358567) b!7318269))

(assert (= (and d!2272472 (not c!1358567)) b!7318270))

(declare-fun m!7983046 () Bool)

(assert (=> b!7318270 m!7983046))

(declare-fun m!7983048 () Bool)

(assert (=> b!7318270 m!7983048))

(assert (=> b!7318173 d!2272472))

(declare-fun d!2272474 () Bool)

(assert (=> d!2272474 true))

(declare-fun setRes!54984 () Bool)

(assert (=> d!2272474 setRes!54984))

(declare-fun condSetEmpty!54984 () Bool)

(declare-fun res!2957253 () (Set B!3623))

(assert (=> d!2272474 (= condSetEmpty!54984 (= res!2957253 (as set.empty (Set B!3623))))))

(assert (=> d!2272474 (= (choose!56795 s2!427 f!803) res!2957253)))

(declare-fun setIsEmpty!54984 () Bool)

(assert (=> setIsEmpty!54984 setRes!54984))

(declare-fun setNonEmpty!54984 () Bool)

(declare-fun tp!2078206 () Bool)

(assert (=> setNonEmpty!54984 (= setRes!54984 (and tp!2078206 tp_is_empty!47733))))

(declare-fun setElem!54984 () B!3623)

(declare-fun setRest!54984 () (Set B!3623))

(assert (=> setNonEmpty!54984 (= res!2957253 (set.union (set.insert setElem!54984 (as set.empty (Set B!3623))) setRest!54984))))

(assert (= (and d!2272474 condSetEmpty!54984) setIsEmpty!54984))

(assert (= (and d!2272474 (not condSetEmpty!54984)) setNonEmpty!54984))

(assert (=> d!2272442 d!2272474))

(declare-fun d!2272476 () Bool)

(declare-fun res!2957255 () Bool)

(declare-fun e!4381322 () Bool)

(assert (=> d!2272476 (=> res!2957255 e!4381322)))

(assert (=> d!2272476 (= res!2957255 (is-Nil!71251 (tail!14645 l2!808)))))

(assert (=> d!2272476 (= (subseq!872 (tail!14645 l2!808) lt!2603095) e!4381322)))

(declare-fun b!7318274 () Bool)

(declare-fun e!4381323 () Bool)

(assert (=> b!7318274 (= e!4381323 (subseq!872 (tail!14645 l2!808) (t!385607 lt!2603095)))))

(declare-fun b!7318272 () Bool)

(declare-fun e!4381324 () Bool)

(assert (=> b!7318272 (= e!4381324 e!4381323)))

(declare-fun res!2957256 () Bool)

(assert (=> b!7318272 (=> res!2957256 e!4381323)))

(declare-fun e!4381325 () Bool)

(assert (=> b!7318272 (= res!2957256 e!4381325)))

(declare-fun res!2957254 () Bool)

(assert (=> b!7318272 (=> (not res!2957254) (not e!4381325))))

(assert (=> b!7318272 (= res!2957254 (= (h!77699 (tail!14645 l2!808)) (h!77699 lt!2603095)))))

(declare-fun b!7318273 () Bool)

(assert (=> b!7318273 (= e!4381325 (subseq!872 (t!385607 (tail!14645 l2!808)) (t!385607 lt!2603095)))))

(declare-fun b!7318271 () Bool)

(assert (=> b!7318271 (= e!4381322 e!4381324)))

(declare-fun res!2957257 () Bool)

(assert (=> b!7318271 (=> (not res!2957257) (not e!4381324))))

(assert (=> b!7318271 (= res!2957257 (is-Cons!71251 lt!2603095))))

(assert (= (and d!2272476 (not res!2957255)) b!7318271))

(assert (= (and b!7318271 res!2957257) b!7318272))

(assert (= (and b!7318272 res!2957254) b!7318273))

(assert (= (and b!7318272 (not res!2957256)) b!7318274))

(assert (=> b!7318274 m!7982978))

(declare-fun m!7983050 () Bool)

(assert (=> b!7318274 m!7983050))

(declare-fun m!7983052 () Bool)

(assert (=> b!7318273 m!7983052))

(assert (=> d!2272446 d!2272476))

(declare-fun d!2272478 () Bool)

(assert (=> d!2272478 (= (tail!14645 l2!808) (t!385607 l2!808))))

(assert (=> d!2272446 d!2272478))

(declare-fun d!2272480 () Bool)

(assert (=> d!2272480 (= (isEmpty!40868 l2!808) (is-Nil!71251 l2!808))))

(assert (=> d!2272446 d!2272480))

(declare-fun d!2272482 () Bool)

(declare-fun res!2957262 () Bool)

(declare-fun e!4381330 () Bool)

(assert (=> d!2272482 (=> res!2957262 e!4381330)))

(assert (=> d!2272482 (= res!2957262 (is-Nil!71251 lt!2603117))))

(assert (=> d!2272482 (= (noDuplicate!3068 lt!2603117) e!4381330)))

(declare-fun b!7318279 () Bool)

(declare-fun e!4381331 () Bool)

(assert (=> b!7318279 (= e!4381330 e!4381331)))

(declare-fun res!2957263 () Bool)

(assert (=> b!7318279 (=> (not res!2957263) (not e!4381331))))

(declare-fun contains!20803 (List!71375 B!3623) Bool)

(assert (=> b!7318279 (= res!2957263 (not (contains!20803 (t!385607 lt!2603117) (h!77699 lt!2603117))))))

(declare-fun b!7318280 () Bool)

(assert (=> b!7318280 (= e!4381331 (noDuplicate!3068 (t!385607 lt!2603117)))))

(assert (= (and d!2272482 (not res!2957262)) b!7318279))

(assert (= (and b!7318279 res!2957263) b!7318280))

(declare-fun m!7983054 () Bool)

(assert (=> b!7318279 m!7983054))

(declare-fun m!7983056 () Bool)

(assert (=> b!7318280 m!7983056))

(assert (=> d!2272434 d!2272482))

(declare-fun d!2272484 () Bool)

(declare-fun e!4381336 () Bool)

(assert (=> d!2272484 e!4381336))

(declare-fun res!2957268 () Bool)

(assert (=> d!2272484 (=> (not res!2957268) (not e!4381336))))

(declare-fun res!2957269 () List!71375)

(assert (=> d!2272484 (= res!2957268 (noDuplicate!3068 res!2957269))))

(declare-fun e!4381337 () Bool)

(assert (=> d!2272484 e!4381337))

(assert (=> d!2272484 (= (choose!56794 lt!2603096) res!2957269)))

(declare-fun b!7318285 () Bool)

(declare-fun tp!2078209 () Bool)

(assert (=> b!7318285 (= e!4381337 (and tp_is_empty!47733 tp!2078209))))

(declare-fun b!7318286 () Bool)

(assert (=> b!7318286 (= e!4381336 (= (content!14887 res!2957269) lt!2603096))))

(assert (= (and d!2272484 (is-Cons!71251 res!2957269)) b!7318285))

(assert (= (and d!2272484 res!2957268) b!7318286))

(declare-fun m!7983058 () Bool)

(assert (=> d!2272484 m!7983058))

(declare-fun m!7983060 () Bool)

(assert (=> b!7318286 m!7983060))

(assert (=> d!2272434 d!2272484))

(declare-fun d!2272486 () Bool)

(declare-fun res!2957271 () Bool)

(declare-fun e!4381338 () Bool)

(assert (=> d!2272486 (=> res!2957271 e!4381338)))

(assert (=> d!2272486 (= res!2957271 (is-Nil!71251 l2!808))))

(assert (=> d!2272486 (= (subseq!872 l2!808 (t!385607 lt!2603095)) e!4381338)))

(declare-fun b!7318290 () Bool)

(declare-fun e!4381339 () Bool)

(assert (=> b!7318290 (= e!4381339 (subseq!872 l2!808 (t!385607 (t!385607 lt!2603095))))))

(declare-fun b!7318288 () Bool)

(declare-fun e!4381340 () Bool)

(assert (=> b!7318288 (= e!4381340 e!4381339)))

(declare-fun res!2957272 () Bool)

(assert (=> b!7318288 (=> res!2957272 e!4381339)))

(declare-fun e!4381341 () Bool)

(assert (=> b!7318288 (= res!2957272 e!4381341)))

(declare-fun res!2957270 () Bool)

(assert (=> b!7318288 (=> (not res!2957270) (not e!4381341))))

(assert (=> b!7318288 (= res!2957270 (= (h!77699 l2!808) (h!77699 (t!385607 lt!2603095))))))

(declare-fun b!7318289 () Bool)

(assert (=> b!7318289 (= e!4381341 (subseq!872 (t!385607 l2!808) (t!385607 (t!385607 lt!2603095))))))

(declare-fun b!7318287 () Bool)

(assert (=> b!7318287 (= e!4381338 e!4381340)))

(declare-fun res!2957273 () Bool)

(assert (=> b!7318287 (=> (not res!2957273) (not e!4381340))))

(assert (=> b!7318287 (= res!2957273 (is-Cons!71251 (t!385607 lt!2603095)))))

(assert (= (and d!2272486 (not res!2957271)) b!7318287))

(assert (= (and b!7318287 res!2957273) b!7318288))

(assert (= (and b!7318288 res!2957270) b!7318289))

(assert (= (and b!7318288 (not res!2957272)) b!7318290))

(declare-fun m!7983062 () Bool)

(assert (=> b!7318290 m!7983062))

(declare-fun m!7983064 () Bool)

(assert (=> b!7318289 m!7983064))

(assert (=> b!7318204 d!2272486))

(declare-fun d!2272488 () Bool)

(assert (=> d!2272488 true))

(declare-fun setRes!54985 () Bool)

(assert (=> d!2272488 setRes!54985))

(declare-fun condSetEmpty!54985 () Bool)

(declare-fun res!2957274 () (Set B!3623))

(assert (=> d!2272488 (= condSetEmpty!54985 (= res!2957274 (as set.empty (Set B!3623))))))

(assert (=> d!2272488 (= (choose!56795 (set.union s1!456 s2!427) f!803) res!2957274)))

(declare-fun setIsEmpty!54985 () Bool)

(assert (=> setIsEmpty!54985 setRes!54985))

(declare-fun setNonEmpty!54985 () Bool)

(declare-fun tp!2078210 () Bool)

(assert (=> setNonEmpty!54985 (= setRes!54985 (and tp!2078210 tp_is_empty!47733))))

(declare-fun setElem!54985 () B!3623)

(declare-fun setRest!54985 () (Set B!3623))

(assert (=> setNonEmpty!54985 (= res!2957274 (set.union (set.insert setElem!54985 (as set.empty (Set B!3623))) setRest!54985))))

(assert (= (and d!2272488 condSetEmpty!54985) setIsEmpty!54985))

(assert (= (and d!2272488 (not condSetEmpty!54985)) setNonEmpty!54985))

(assert (=> d!2272436 d!2272488))

(declare-fun d!2272490 () Bool)

(declare-fun res!2957276 () Bool)

(declare-fun e!4381342 () Bool)

(assert (=> d!2272490 (=> res!2957276 e!4381342)))

(assert (=> d!2272490 (= res!2957276 (is-Nil!71251 (t!385607 l2!808)))))

(assert (=> d!2272490 (= (subseq!872 (t!385607 l2!808) (t!385607 lt!2603095)) e!4381342)))

(declare-fun b!7318294 () Bool)

(declare-fun e!4381343 () Bool)

(assert (=> b!7318294 (= e!4381343 (subseq!872 (t!385607 l2!808) (t!385607 (t!385607 lt!2603095))))))

(declare-fun b!7318292 () Bool)

(declare-fun e!4381344 () Bool)

(assert (=> b!7318292 (= e!4381344 e!4381343)))

(declare-fun res!2957277 () Bool)

(assert (=> b!7318292 (=> res!2957277 e!4381343)))

(declare-fun e!4381345 () Bool)

(assert (=> b!7318292 (= res!2957277 e!4381345)))

(declare-fun res!2957275 () Bool)

(assert (=> b!7318292 (=> (not res!2957275) (not e!4381345))))

(assert (=> b!7318292 (= res!2957275 (= (h!77699 (t!385607 l2!808)) (h!77699 (t!385607 lt!2603095))))))

(declare-fun b!7318293 () Bool)

(assert (=> b!7318293 (= e!4381345 (subseq!872 (t!385607 (t!385607 l2!808)) (t!385607 (t!385607 lt!2603095))))))

(declare-fun b!7318291 () Bool)

(assert (=> b!7318291 (= e!4381342 e!4381344)))

(declare-fun res!2957278 () Bool)

(assert (=> b!7318291 (=> (not res!2957278) (not e!4381344))))

(assert (=> b!7318291 (= res!2957278 (is-Cons!71251 (t!385607 lt!2603095)))))

(assert (= (and d!2272490 (not res!2957276)) b!7318291))

(assert (= (and b!7318291 res!2957278) b!7318292))

(assert (= (and b!7318292 res!2957275) b!7318293))

(assert (= (and b!7318292 (not res!2957277)) b!7318294))

(assert (=> b!7318294 m!7983064))

(declare-fun m!7983066 () Bool)

(assert (=> b!7318293 m!7983066))

(assert (=> b!7318168 d!2272490))

(assert (=> d!2272450 d!2272440))

(assert (=> d!2272450 d!2272442))

(assert (=> d!2272450 d!2272436))

(declare-fun d!2272492 () Bool)

(assert (=> d!2272492 (= (set.member (h!77699 l2!808) (set.union (flatMap!3080 s1!456 f!803) (flatMap!3080 s2!427 f!803))) (set.member (h!77699 l2!808) (flatMap!3080 (set.union s1!456 s2!427) f!803)))))

(assert (=> d!2272492 true))

(declare-fun _$8!743 () Unit!164739)

(assert (=> d!2272492 (= (choose!56796 s1!456 s2!427 f!803 (h!77699 l2!808)) _$8!743)))

(declare-fun bs!1915616 () Bool)

(assert (= bs!1915616 d!2272492))

(assert (=> bs!1915616 m!7982992))

(assert (=> bs!1915616 m!7982912))

(assert (=> bs!1915616 m!7982990))

(assert (=> bs!1915616 m!7982928))

(assert (=> bs!1915616 m!7982926))

(assert (=> d!2272450 d!2272492))

(declare-fun d!2272494 () Bool)

(declare-fun c!1358568 () Bool)

(assert (=> d!2272494 (= c!1358568 (is-Nil!71251 lt!2603117))))

(declare-fun e!4381346 () (Set B!3623))

(assert (=> d!2272494 (= (content!14887 lt!2603117) e!4381346)))

(declare-fun b!7318296 () Bool)

(assert (=> b!7318296 (= e!4381346 (as set.empty (Set B!3623)))))

(declare-fun b!7318297 () Bool)

(assert (=> b!7318297 (= e!4381346 (set.union (set.insert (h!77699 lt!2603117) (as set.empty (Set B!3623))) (content!14887 (t!385607 lt!2603117))))))

(assert (= (and d!2272494 c!1358568) b!7318296))

(assert (= (and d!2272494 (not c!1358568)) b!7318297))

(declare-fun m!7983068 () Bool)

(assert (=> b!7318297 m!7983068))

(declare-fun m!7983070 () Bool)

(assert (=> b!7318297 m!7983070))

(assert (=> b!7318172 d!2272494))

(declare-fun d!2272496 () Bool)

(declare-fun res!2957279 () Bool)

(declare-fun e!4381347 () Bool)

(assert (=> d!2272496 (=> res!2957279 e!4381347)))

(assert (=> d!2272496 (= res!2957279 (is-Nil!71251 lt!2603118))))

(assert (=> d!2272496 (= (noDuplicate!3068 lt!2603118) e!4381347)))

(declare-fun b!7318298 () Bool)

(declare-fun e!4381348 () Bool)

(assert (=> b!7318298 (= e!4381347 e!4381348)))

(declare-fun res!2957280 () Bool)

(assert (=> b!7318298 (=> (not res!2957280) (not e!4381348))))

(assert (=> b!7318298 (= res!2957280 (not (contains!20803 (t!385607 lt!2603118) (h!77699 lt!2603118))))))

(declare-fun b!7318299 () Bool)

(assert (=> b!7318299 (= e!4381348 (noDuplicate!3068 (t!385607 lt!2603118)))))

(assert (= (and d!2272496 (not res!2957279)) b!7318298))

(assert (= (and b!7318298 res!2957280) b!7318299))

(declare-fun m!7983072 () Bool)

(assert (=> b!7318298 m!7983072))

(declare-fun m!7983074 () Bool)

(assert (=> b!7318299 m!7983074))

(assert (=> d!2272438 d!2272496))

(declare-fun d!2272498 () Bool)

(declare-fun e!4381349 () Bool)

(assert (=> d!2272498 e!4381349))

(declare-fun res!2957281 () Bool)

(assert (=> d!2272498 (=> (not res!2957281) (not e!4381349))))

(declare-fun res!2957282 () List!71375)

(assert (=> d!2272498 (= res!2957281 (noDuplicate!3068 res!2957282))))

(declare-fun e!4381350 () Bool)

(assert (=> d!2272498 e!4381350))

(assert (=> d!2272498 (= (choose!56794 lt!2603098) res!2957282)))

(declare-fun b!7318300 () Bool)

(declare-fun tp!2078211 () Bool)

(assert (=> b!7318300 (= e!4381350 (and tp_is_empty!47733 tp!2078211))))

(declare-fun b!7318301 () Bool)

(assert (=> b!7318301 (= e!4381349 (= (content!14887 res!2957282) lt!2603098))))

(assert (= (and d!2272498 (is-Cons!71251 res!2957282)) b!7318300))

(assert (= (and d!2272498 res!2957281) b!7318301))

(declare-fun m!7983076 () Bool)

(assert (=> d!2272498 m!7983076))

(declare-fun m!7983078 () Bool)

(assert (=> b!7318301 m!7983078))

(assert (=> d!2272438 d!2272498))

(assert (=> b!7318177 d!2272490))

(declare-fun d!2272500 () Bool)

(declare-fun res!2957284 () Bool)

(declare-fun e!4381351 () Bool)

(assert (=> d!2272500 (=> res!2957284 e!4381351)))

(assert (=> d!2272500 (= res!2957284 (is-Nil!71251 (t!385607 (t!385607 l2!808))))))

(assert (=> d!2272500 (= (subseq!872 (t!385607 (t!385607 l2!808)) (t!385607 lt!2603095)) e!4381351)))

(declare-fun b!7318305 () Bool)

(declare-fun e!4381352 () Bool)

(assert (=> b!7318305 (= e!4381352 (subseq!872 (t!385607 (t!385607 l2!808)) (t!385607 (t!385607 lt!2603095))))))

(declare-fun b!7318303 () Bool)

(declare-fun e!4381353 () Bool)

(assert (=> b!7318303 (= e!4381353 e!4381352)))

(declare-fun res!2957285 () Bool)

(assert (=> b!7318303 (=> res!2957285 e!4381352)))

(declare-fun e!4381354 () Bool)

(assert (=> b!7318303 (= res!2957285 e!4381354)))

(declare-fun res!2957283 () Bool)

(assert (=> b!7318303 (=> (not res!2957283) (not e!4381354))))

(assert (=> b!7318303 (= res!2957283 (= (h!77699 (t!385607 (t!385607 l2!808))) (h!77699 (t!385607 lt!2603095))))))

(declare-fun b!7318304 () Bool)

(assert (=> b!7318304 (= e!4381354 (subseq!872 (t!385607 (t!385607 (t!385607 l2!808))) (t!385607 (t!385607 lt!2603095))))))

(declare-fun b!7318302 () Bool)

(assert (=> b!7318302 (= e!4381351 e!4381353)))

(declare-fun res!2957286 () Bool)

(assert (=> b!7318302 (=> (not res!2957286) (not e!4381353))))

(assert (=> b!7318302 (= res!2957286 (is-Cons!71251 (t!385607 lt!2603095)))))

(assert (= (and d!2272500 (not res!2957284)) b!7318302))

(assert (= (and b!7318302 res!2957286) b!7318303))

(assert (= (and b!7318303 res!2957283) b!7318304))

(assert (= (and b!7318303 (not res!2957285)) b!7318305))

(assert (=> b!7318305 m!7983066))

(declare-fun m!7983080 () Bool)

(assert (=> b!7318304 m!7983080))

(assert (=> b!7318176 d!2272500))

(assert (=> b!7318169 d!2272486))

(assert (=> b!7318200 d!2272432))

(declare-fun d!2272502 () Bool)

(assert (=> d!2272502 true))

(declare-fun setRes!54986 () Bool)

(assert (=> d!2272502 setRes!54986))

(declare-fun condSetEmpty!54986 () Bool)

(declare-fun res!2957287 () (Set B!3623))

(assert (=> d!2272502 (= condSetEmpty!54986 (= res!2957287 (as set.empty (Set B!3623))))))

(assert (=> d!2272502 (= (choose!56795 s1!456 f!803) res!2957287)))

(declare-fun setIsEmpty!54986 () Bool)

(assert (=> setIsEmpty!54986 setRes!54986))

(declare-fun setNonEmpty!54986 () Bool)

(declare-fun tp!2078212 () Bool)

(assert (=> setNonEmpty!54986 (= setRes!54986 (and tp!2078212 tp_is_empty!47733))))

(declare-fun setElem!54986 () B!3623)

(declare-fun setRest!54986 () (Set B!3623))

(assert (=> setNonEmpty!54986 (= res!2957287 (set.union (set.insert setElem!54986 (as set.empty (Set B!3623))) setRest!54986))))

(assert (= (and d!2272502 condSetEmpty!54986) setIsEmpty!54986))

(assert (= (and d!2272502 (not condSetEmpty!54986)) setNonEmpty!54986))

(assert (=> d!2272440 d!2272502))

(declare-fun condSetEmpty!54987 () Bool)

(assert (=> setNonEmpty!54977 (= condSetEmpty!54987 (= setRest!54977 (as set.empty (Set A!921))))))

(declare-fun setRes!54987 () Bool)

(assert (=> setNonEmpty!54977 (= tp!2078195 setRes!54987)))

(declare-fun setIsEmpty!54987 () Bool)

(assert (=> setIsEmpty!54987 setRes!54987))

(declare-fun setNonEmpty!54987 () Bool)

(declare-fun tp!2078213 () Bool)

(assert (=> setNonEmpty!54987 (= setRes!54987 (and tp!2078213 tp_is_empty!47735))))

(declare-fun setElem!54987 () A!921)

(declare-fun setRest!54987 () (Set A!921))

(assert (=> setNonEmpty!54987 (= setRest!54977 (set.union (set.insert setElem!54987 (as set.empty (Set A!921))) setRest!54987))))

(assert (= (and setNonEmpty!54977 condSetEmpty!54987) setIsEmpty!54987))

(assert (= (and setNonEmpty!54977 (not condSetEmpty!54987)) setNonEmpty!54987))

(declare-fun b!7318306 () Bool)

(declare-fun e!4381355 () Bool)

(declare-fun tp!2078214 () Bool)

(assert (=> b!7318306 (= e!4381355 (and tp_is_empty!47733 tp!2078214))))

(assert (=> b!7318221 (= tp!2078194 e!4381355)))

(assert (= (and b!7318221 (is-Cons!71251 (t!385607 (t!385607 l2!808)))) b!7318306))

(declare-fun condSetEmpty!54988 () Bool)

(assert (=> setNonEmpty!54976 (= condSetEmpty!54988 (= setRest!54976 (as set.empty (Set A!921))))))

(declare-fun setRes!54988 () Bool)

(assert (=> setNonEmpty!54976 (= tp!2078190 setRes!54988)))

(declare-fun setIsEmpty!54988 () Bool)

(assert (=> setIsEmpty!54988 setRes!54988))

(declare-fun setNonEmpty!54988 () Bool)

(declare-fun tp!2078215 () Bool)

(assert (=> setNonEmpty!54988 (= setRes!54988 (and tp!2078215 tp_is_empty!47735))))

(declare-fun setElem!54988 () A!921)

(declare-fun setRest!54988 () (Set A!921))

(assert (=> setNonEmpty!54988 (= setRest!54976 (set.union (set.insert setElem!54988 (as set.empty (Set A!921))) setRest!54988))))

(assert (= (and setNonEmpty!54976 condSetEmpty!54988) setIsEmpty!54988))

(assert (= (and setNonEmpty!54976 (not condSetEmpty!54988)) setNonEmpty!54988))

(declare-fun b!7318307 () Bool)

(declare-fun e!4381356 () Bool)

(declare-fun tp!2078216 () Bool)

(assert (=> b!7318307 (= e!4381356 (and tp_is_empty!47733 tp!2078216))))

(assert (=> b!7318220 (= tp!2078193 e!4381356)))

(assert (= (and b!7318220 (is-Cons!71251 (t!385607 (t!385607 l1!819)))) b!7318307))

(push 1)

(assert (not b!7318258))

(assert (not b!7318304))

(assert b_and!351483)

(assert (not setNonEmpty!54985))

(assert (not b!7318286))

(assert (not setNonEmpty!54986))

(assert (not d!2272498))

(assert (not b!7318262))

(assert (not b!7318274))

(assert (not b!7318301))

(assert (not b!7318285))

(assert (not d!2272492))

(assert (not bm!665820))

(assert (not b!7318279))

(assert (not b!7318280))

(assert (not b!7318293))

(assert (not b!7318298))

(assert (not b!7318294))

(assert (not b!7318307))

(assert (not b_next!134865))

(assert (not d!2272468))

(assert (not b!7318297))

(assert (not setNonEmpty!54984))

(assert (not setNonEmpty!54988))

(assert (not b!7318260))

(assert (not b!7318270))

(assert (not b!7318273))

(assert (not b!7318305))

(assert tp_is_empty!47735)

(assert (not d!2272484))

(assert (not b!7318300))

(assert (not b!7318290))

(assert (not b!7318289))

(assert (not b!7318306))

(assert (not setNonEmpty!54987))

(assert (not b!7318299))

(assert tp_is_empty!47733)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351483)

(assert (not b_next!134865))

(check-sat)

(pop 1)

