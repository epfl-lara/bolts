; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712042 () Bool)

(assert start!712042)

(declare-fun b_free!133907 () Bool)

(declare-fun b_next!134697 () Bool)

(assert (=> start!712042 (= b_free!133907 (not b_next!134697))))

(declare-fun tp!2075001 () Bool)

(declare-fun b_and!351185 () Bool)

(assert (=> start!712042 (= tp!2075001 b_and!351185)))

(declare-fun b!7311006 () Bool)

(assert (=> b!7311006 true))

(declare-fun e!4375908 () Bool)

(declare-datatypes ((B!3455 0))(
  ( (B!3456 (val!29011 Int)) )
))
(declare-datatypes ((List!71129 0))(
  ( (Nil!71005) (Cons!71005 (h!77453 B!3455) (t!385237 List!71129)) )
))
(declare-fun lRes!24 () List!71129)

(declare-fun contains!20756 (List!71129 B!3455) Bool)

(assert (=> b!7311006 (= e!4375908 (not (contains!20756 lRes!24 (h!77453 lRes!24))))))

(declare-fun e!4375909 () Bool)

(assert (=> b!7311006 e!4375909))

(declare-fun res!2953428 () Bool)

(assert (=> b!7311006 (=> (not res!2953428) (not e!4375909))))

(declare-fun lambda!451568 () Int)

(declare-fun forall!17721 (List!71129 Int) Bool)

(assert (=> b!7311006 (= res!2953428 (forall!17721 (t!385237 lRes!24) lambda!451568))))

(declare-fun lt!2600430 () List!71129)

(declare-datatypes ((A!753 0))(
  ( (A!754 (val!29012 Int)) )
))
(declare-fun s!1445 () (Set A!753))

(declare-fun f!903 () Int)

(declare-fun toList!11538 ((Set B!3455)) List!71129)

(declare-fun flatMap!2997 ((Set A!753) Int) (Set B!3455))

(assert (=> b!7311006 (= lt!2600430 (toList!11538 (flatMap!2997 s!1445 f!903)))))

(declare-fun elmt!124 () A!753)

(declare-datatypes ((Unit!164418 0))(
  ( (Unit!164419) )
))
(declare-fun lt!2600428 () Unit!164418)

(declare-fun lemmaFlatMapOnSingletonSetList2!7 ((Set A!753) A!753 Int List!71129) Unit!164418)

(assert (=> b!7311006 (= lt!2600428 (lemmaFlatMapOnSingletonSetList2!7 s!1445 elmt!124 f!903 (t!385237 lRes!24)))))

(declare-fun lt!2600429 () Unit!164418)

(declare-fun lt!2600431 () List!71129)

(declare-fun subseqTail!41 (List!71129 List!71129) Unit!164418)

(assert (=> b!7311006 (= lt!2600429 (subseqTail!41 lRes!24 lt!2600431))))

(declare-fun b!7311007 () Bool)

(declare-fun res!2953425 () Bool)

(assert (=> b!7311007 (=> (not res!2953425) (not e!4375908))))

(assert (=> b!7311007 (= res!2953425 (is-Cons!71005 lRes!24))))

(declare-fun b!7311008 () Bool)

(declare-fun e!4375910 () Bool)

(declare-fun tp_is_empty!47303 () Bool)

(declare-fun tp!2075002 () Bool)

(assert (=> b!7311008 (= e!4375910 (and tp_is_empty!47303 tp!2075002))))

(declare-fun setIsEmpty!53804 () Bool)

(declare-fun setRes!53804 () Bool)

(assert (=> setIsEmpty!53804 setRes!53804))

(declare-fun b!7311009 () Bool)

(declare-fun e!4375911 () Bool)

(assert (=> b!7311009 (= e!4375911 e!4375908)))

(declare-fun res!2953426 () Bool)

(assert (=> b!7311009 (=> (not res!2953426) (not e!4375908))))

(declare-fun subseq!788 (List!71129 List!71129) Bool)

(assert (=> b!7311009 (= res!2953426 (subseq!788 lRes!24 lt!2600431))))

(declare-fun dynLambda!29044 (Int A!753) (Set B!3455))

(assert (=> b!7311009 (= lt!2600431 (toList!11538 (dynLambda!29044 f!903 elmt!124)))))

(declare-fun res!2953427 () Bool)

(assert (=> start!712042 (=> (not res!2953427) (not e!4375911))))

(assert (=> start!712042 (= res!2953427 (= s!1445 (set.insert elmt!124 (as set.empty (Set A!753)))))))

(assert (=> start!712042 e!4375911))

(declare-fun condSetEmpty!53804 () Bool)

(assert (=> start!712042 (= condSetEmpty!53804 (= s!1445 (as set.empty (Set A!753))))))

(assert (=> start!712042 setRes!53804))

(declare-fun tp_is_empty!47301 () Bool)

(assert (=> start!712042 tp_is_empty!47301))

(assert (=> start!712042 e!4375910))

(assert (=> start!712042 tp!2075001))

(declare-fun setNonEmpty!53804 () Bool)

(declare-fun tp!2075000 () Bool)

(assert (=> setNonEmpty!53804 (= setRes!53804 (and tp!2075000 tp_is_empty!47301))))

(declare-fun setElem!53804 () A!753)

(declare-fun setRest!53804 () (Set A!753))

(assert (=> setNonEmpty!53804 (= s!1445 (set.union (set.insert setElem!53804 (as set.empty (Set A!753))) setRest!53804))))

(declare-fun b!7311010 () Bool)

(assert (=> b!7311010 (= e!4375909 (forall!17721 (t!385237 lRes!24) lambda!451568))))

(assert (= (and start!712042 res!2953427) b!7311009))

(assert (= (and b!7311009 res!2953426) b!7311007))

(assert (= (and b!7311007 res!2953425) b!7311006))

(assert (= (and b!7311006 res!2953428) b!7311010))

(assert (= (and start!712042 condSetEmpty!53804) setIsEmpty!53804))

(assert (= (and start!712042 (not condSetEmpty!53804)) setNonEmpty!53804))

(assert (= (and start!712042 (is-Cons!71005 lRes!24)) b!7311008))

(declare-fun b_lambda!282057 () Bool)

(assert (=> (not b_lambda!282057) (not b!7311009)))

(declare-fun t!385236 () Bool)

(declare-fun tb!262145 () Bool)

(assert (=> (and start!712042 (= f!903 f!903) t!385236) tb!262145))

(assert (=> b!7311009 t!385236))

(declare-fun result!352672 () Bool)

(declare-fun b_and!351187 () Bool)

(assert (= b_and!351185 (and (=> t!385236 result!352672) b_and!351187)))

(declare-fun m!7975184 () Bool)

(assert (=> b!7311006 m!7975184))

(declare-fun m!7975186 () Bool)

(assert (=> b!7311006 m!7975186))

(declare-fun m!7975188 () Bool)

(assert (=> b!7311006 m!7975188))

(declare-fun m!7975190 () Bool)

(assert (=> b!7311006 m!7975190))

(declare-fun m!7975192 () Bool)

(assert (=> b!7311006 m!7975192))

(declare-fun m!7975194 () Bool)

(assert (=> b!7311006 m!7975194))

(assert (=> b!7311006 m!7975190))

(declare-fun m!7975196 () Bool)

(assert (=> b!7311009 m!7975196))

(declare-fun m!7975198 () Bool)

(assert (=> b!7311009 m!7975198))

(assert (=> b!7311009 m!7975198))

(declare-fun m!7975200 () Bool)

(assert (=> b!7311009 m!7975200))

(declare-fun m!7975202 () Bool)

(assert (=> start!712042 m!7975202))

(assert (=> b!7311010 m!7975188))

(push 1)

(assert (not tb!262145))

(assert (not b!7311006))

(assert (not b!7311008))

(assert (not b_next!134697))

(assert (not b_lambda!282057))

(assert (not setNonEmpty!53804))

(assert tp_is_empty!47303)

(assert (not b!7311010))

(assert (not b!7311009))

(assert tp_is_empty!47301)

(assert b_and!351187)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351187)

(assert (not b_next!134697))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!282061 () Bool)

(assert (= b_lambda!282057 (or (and start!712042 b_free!133907) b_lambda!282061)))

(push 1)

(assert (not tb!262145))

(assert (not b!7311006))

(assert (not b!7311008))

(assert (not b_next!134697))

(assert (not setNonEmpty!53804))

(assert tp_is_empty!47303)

(assert (not b!7311010))

(assert tp_is_empty!47301)

(assert b_and!351187)

(assert (not b_lambda!282061))

(assert (not b!7311009))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351187)

(assert (not b_next!134697))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7311041 () Bool)

(declare-fun e!4375933 () Bool)

(assert (=> b!7311041 (= e!4375933 (subseq!788 lRes!24 (t!385237 lt!2600431)))))

(declare-fun b!7311038 () Bool)

(declare-fun e!4375932 () Bool)

(declare-fun e!4375934 () Bool)

(assert (=> b!7311038 (= e!4375932 e!4375934)))

(declare-fun res!2953450 () Bool)

(assert (=> b!7311038 (=> (not res!2953450) (not e!4375934))))

(assert (=> b!7311038 (= res!2953450 (is-Cons!71005 lt!2600431))))

(declare-fun d!2269823 () Bool)

(declare-fun res!2953451 () Bool)

(assert (=> d!2269823 (=> res!2953451 e!4375932)))

(assert (=> d!2269823 (= res!2953451 (is-Nil!71005 lRes!24))))

(assert (=> d!2269823 (= (subseq!788 lRes!24 lt!2600431) e!4375932)))

(declare-fun b!7311039 () Bool)

(assert (=> b!7311039 (= e!4375934 e!4375933)))

(declare-fun res!2953449 () Bool)

(assert (=> b!7311039 (=> res!2953449 e!4375933)))

(declare-fun e!4375935 () Bool)

(assert (=> b!7311039 (= res!2953449 e!4375935)))

(declare-fun res!2953452 () Bool)

(assert (=> b!7311039 (=> (not res!2953452) (not e!4375935))))

(assert (=> b!7311039 (= res!2953452 (= (h!77453 lRes!24) (h!77453 lt!2600431)))))

(declare-fun b!7311040 () Bool)

(assert (=> b!7311040 (= e!4375935 (subseq!788 (t!385237 lRes!24) (t!385237 lt!2600431)))))

(assert (= (and d!2269823 (not res!2953451)) b!7311038))

(assert (= (and b!7311038 res!2953450) b!7311039))

(assert (= (and b!7311039 res!2953452) b!7311040))

(assert (= (and b!7311039 (not res!2953449)) b!7311041))

(declare-fun m!7975224 () Bool)

(assert (=> b!7311041 m!7975224))

(declare-fun m!7975226 () Bool)

(assert (=> b!7311040 m!7975226))

(assert (=> b!7311009 d!2269823))

(declare-fun d!2269825 () Bool)

(declare-fun e!4375938 () Bool)

(assert (=> d!2269825 e!4375938))

(declare-fun res!2953455 () Bool)

(assert (=> d!2269825 (=> (not res!2953455) (not e!4375938))))

(declare-fun lt!2600446 () List!71129)

(declare-fun noDuplicate!3023 (List!71129) Bool)

(assert (=> d!2269825 (= res!2953455 (noDuplicate!3023 lt!2600446))))

(declare-fun choose!56618 ((Set B!3455)) List!71129)

(assert (=> d!2269825 (= lt!2600446 (choose!56618 (dynLambda!29044 f!903 elmt!124)))))

(assert (=> d!2269825 (= (toList!11538 (dynLambda!29044 f!903 elmt!124)) lt!2600446)))

(declare-fun b!7311044 () Bool)

(declare-fun content!14842 (List!71129) (Set B!3455))

(assert (=> b!7311044 (= e!4375938 (= (content!14842 lt!2600446) (dynLambda!29044 f!903 elmt!124)))))

(assert (= (and d!2269825 res!2953455) b!7311044))

(declare-fun m!7975228 () Bool)

(assert (=> d!2269825 m!7975228))

(assert (=> d!2269825 m!7975198))

(declare-fun m!7975230 () Bool)

(assert (=> d!2269825 m!7975230))

(declare-fun m!7975232 () Bool)

(assert (=> b!7311044 m!7975232))

(assert (=> b!7311009 d!2269825))

(declare-fun d!2269827 () Bool)

(declare-fun e!4375939 () Bool)

(assert (=> d!2269827 e!4375939))

(declare-fun res!2953456 () Bool)

(assert (=> d!2269827 (=> (not res!2953456) (not e!4375939))))

(declare-fun lt!2600447 () List!71129)

(assert (=> d!2269827 (= res!2953456 (noDuplicate!3023 lt!2600447))))

(assert (=> d!2269827 (= lt!2600447 (choose!56618 (flatMap!2997 s!1445 f!903)))))

(assert (=> d!2269827 (= (toList!11538 (flatMap!2997 s!1445 f!903)) lt!2600447)))

(declare-fun b!7311045 () Bool)

(assert (=> b!7311045 (= e!4375939 (= (content!14842 lt!2600447) (flatMap!2997 s!1445 f!903)))))

(assert (= (and d!2269827 res!2953456) b!7311045))

(declare-fun m!7975234 () Bool)

(assert (=> d!2269827 m!7975234))

(assert (=> d!2269827 m!7975190))

(declare-fun m!7975236 () Bool)

(assert (=> d!2269827 m!7975236))

(declare-fun m!7975238 () Bool)

(assert (=> b!7311045 m!7975238))

(assert (=> b!7311006 d!2269827))

(declare-fun d!2269829 () Bool)

(declare-fun res!2953461 () Bool)

(declare-fun e!4375944 () Bool)

(assert (=> d!2269829 (=> res!2953461 e!4375944)))

(assert (=> d!2269829 (= res!2953461 (is-Nil!71005 (t!385237 lRes!24)))))

(assert (=> d!2269829 (= (forall!17721 (t!385237 lRes!24) lambda!451568) e!4375944)))

(declare-fun b!7311050 () Bool)

(declare-fun e!4375945 () Bool)

(assert (=> b!7311050 (= e!4375944 e!4375945)))

(declare-fun res!2953462 () Bool)

(assert (=> b!7311050 (=> (not res!2953462) (not e!4375945))))

(declare-fun dynLambda!29046 (Int B!3455) Bool)

(assert (=> b!7311050 (= res!2953462 (dynLambda!29046 lambda!451568 (h!77453 (t!385237 lRes!24))))))

(declare-fun b!7311051 () Bool)

(assert (=> b!7311051 (= e!4375945 (forall!17721 (t!385237 (t!385237 lRes!24)) lambda!451568))))

(assert (= (and d!2269829 (not res!2953461)) b!7311050))

(assert (= (and b!7311050 res!2953462) b!7311051))

(declare-fun b_lambda!282065 () Bool)

(assert (=> (not b_lambda!282065) (not b!7311050)))

(declare-fun m!7975240 () Bool)

(assert (=> b!7311050 m!7975240))

(declare-fun m!7975242 () Bool)

(assert (=> b!7311051 m!7975242))

(assert (=> b!7311006 d!2269829))

(declare-fun b!7311066 () Bool)

(declare-fun e!4375957 () Unit!164418)

(declare-fun Unit!164422 () Unit!164418)

(assert (=> b!7311066 (= e!4375957 Unit!164422)))

(declare-fun b!7311067 () Bool)

(declare-fun call!665692 () Unit!164418)

(assert (=> b!7311067 (= e!4375957 call!665692)))

(declare-fun b!7311068 () Bool)

(declare-fun e!4375954 () Bool)

(assert (=> b!7311068 (= e!4375954 (subseq!788 lRes!24 lt!2600431))))

(declare-fun c!1357477 () Bool)

(declare-fun bm!665687 () Bool)

(assert (=> bm!665687 (= call!665692 (subseqTail!41 (ite c!1357477 lRes!24 (t!385237 lRes!24)) (t!385237 lt!2600431)))))

(declare-fun b!7311069 () Bool)

(declare-fun c!1357476 () Bool)

(declare-fun isEmpty!40837 (List!71129) Bool)

(assert (=> b!7311069 (= c!1357476 (not (isEmpty!40837 (t!385237 lRes!24))))))

(declare-fun e!4375956 () Unit!164418)

(assert (=> b!7311069 (= e!4375956 e!4375957)))

(declare-fun b!7311070 () Bool)

(declare-fun e!4375955 () Unit!164418)

(assert (=> b!7311070 (= e!4375955 e!4375956)))

(assert (=> b!7311070 (= c!1357477 (subseq!788 lRes!24 (t!385237 lt!2600431)))))

(declare-fun b!7311072 () Bool)

(assert (=> b!7311072 (= e!4375956 call!665692)))

(declare-fun b!7311071 () Bool)

(declare-fun Unit!164423 () Unit!164418)

(assert (=> b!7311071 (= e!4375955 Unit!164423)))

(declare-fun d!2269831 () Bool)

(declare-fun tail!14618 (List!71129) List!71129)

(assert (=> d!2269831 (subseq!788 (tail!14618 lRes!24) lt!2600431)))

(declare-fun lt!2600450 () Unit!164418)

(assert (=> d!2269831 (= lt!2600450 e!4375955)))

(declare-fun c!1357475 () Bool)

(assert (=> d!2269831 (= c!1357475 (and (is-Cons!71005 lRes!24) (is-Cons!71005 lt!2600431)))))

(assert (=> d!2269831 e!4375954))

(declare-fun res!2953465 () Bool)

(assert (=> d!2269831 (=> (not res!2953465) (not e!4375954))))

(assert (=> d!2269831 (= res!2953465 (not (isEmpty!40837 lRes!24)))))

(assert (=> d!2269831 (= (subseqTail!41 lRes!24 lt!2600431) lt!2600450)))

(assert (= (and d!2269831 res!2953465) b!7311068))

(assert (= (and d!2269831 c!1357475) b!7311070))

(assert (= (and d!2269831 (not c!1357475)) b!7311071))

(assert (= (and b!7311070 c!1357477) b!7311072))

(assert (= (and b!7311070 (not c!1357477)) b!7311069))

(assert (= (and b!7311069 c!1357476) b!7311067))

(assert (= (and b!7311069 (not c!1357476)) b!7311066))

(assert (= (or b!7311072 b!7311067) bm!665687))

(declare-fun m!7975244 () Bool)

(assert (=> bm!665687 m!7975244))

(assert (=> b!7311068 m!7975196))

(assert (=> b!7311070 m!7975224))

(declare-fun m!7975246 () Bool)

(assert (=> b!7311069 m!7975246))

(declare-fun m!7975248 () Bool)

(assert (=> d!2269831 m!7975248))

(assert (=> d!2269831 m!7975248))

(declare-fun m!7975250 () Bool)

(assert (=> d!2269831 m!7975250))

(declare-fun m!7975252 () Bool)

(assert (=> d!2269831 m!7975252))

(assert (=> b!7311006 d!2269831))

(declare-fun d!2269835 () Bool)

(declare-fun lt!2600453 () Bool)

(assert (=> d!2269835 (= lt!2600453 (set.member (h!77453 lRes!24) (content!14842 lRes!24)))))

(declare-fun e!4375969 () Bool)

(assert (=> d!2269835 (= lt!2600453 e!4375969)))

(declare-fun res!2953476 () Bool)

(assert (=> d!2269835 (=> (not res!2953476) (not e!4375969))))

(assert (=> d!2269835 (= res!2953476 (is-Cons!71005 lRes!24))))

(assert (=> d!2269835 (= (contains!20756 lRes!24 (h!77453 lRes!24)) lt!2600453)))

(declare-fun b!7311083 () Bool)

(declare-fun e!4375968 () Bool)

(assert (=> b!7311083 (= e!4375969 e!4375968)))

(declare-fun res!2953477 () Bool)

(assert (=> b!7311083 (=> res!2953477 e!4375968)))

(assert (=> b!7311083 (= res!2953477 (= (h!77453 lRes!24) (h!77453 lRes!24)))))

(declare-fun b!7311084 () Bool)

(assert (=> b!7311084 (= e!4375968 (contains!20756 (t!385237 lRes!24) (h!77453 lRes!24)))))

(assert (= (and d!2269835 res!2953476) b!7311083))

(assert (= (and b!7311083 (not res!2953477)) b!7311084))

(declare-fun m!7975258 () Bool)

(assert (=> d!2269835 m!7975258))

(declare-fun m!7975260 () Bool)

(assert (=> d!2269835 m!7975260))

(declare-fun m!7975262 () Bool)

(assert (=> b!7311084 m!7975262))

(assert (=> b!7311006 d!2269835))

(declare-fun bs!1914481 () Bool)

(declare-fun d!2269839 () Bool)

(assert (= bs!1914481 (and d!2269839 b!7311006)))

(declare-fun lt!2600459 () List!71129)

(declare-fun lambda!451576 () Int)

(assert (=> bs!1914481 (= (= lt!2600459 lt!2600430) (= lambda!451576 lambda!451568))))

(assert (=> d!2269839 true))

(assert (=> d!2269839 (forall!17721 (t!385237 lRes!24) lambda!451576)))

(assert (=> d!2269839 (= lt!2600459 (toList!11538 (flatMap!2997 s!1445 f!903)))))

(declare-fun lt!2600458 () Unit!164418)

(declare-fun choose!56619 ((Set A!753) A!753 Int List!71129) Unit!164418)

(assert (=> d!2269839 (= lt!2600458 (choose!56619 s!1445 elmt!124 f!903 (t!385237 lRes!24)))))

(assert (=> d!2269839 (= s!1445 (set.insert elmt!124 (as set.empty (Set A!753))))))

(assert (=> d!2269839 (= (lemmaFlatMapOnSingletonSetList2!7 s!1445 elmt!124 f!903 (t!385237 lRes!24)) lt!2600458)))

(declare-fun bs!1914482 () Bool)

(assert (= bs!1914482 d!2269839))

(declare-fun m!7975264 () Bool)

(assert (=> bs!1914482 m!7975264))

(assert (=> bs!1914482 m!7975190))

(assert (=> bs!1914482 m!7975192))

(assert (=> bs!1914482 m!7975202))

(assert (=> bs!1914482 m!7975190))

(declare-fun m!7975266 () Bool)

(assert (=> bs!1914482 m!7975266))

(assert (=> b!7311006 d!2269839))

(declare-fun d!2269841 () Bool)

(declare-fun choose!56620 ((Set A!753) Int) (Set B!3455))

(assert (=> d!2269841 (= (flatMap!2997 s!1445 f!903) (choose!56620 s!1445 f!903))))

(declare-fun bs!1914483 () Bool)

(assert (= bs!1914483 d!2269841))

(declare-fun m!7975268 () Bool)

(assert (=> bs!1914483 m!7975268))

(assert (=> b!7311006 d!2269841))

(assert (=> b!7311010 d!2269829))

(declare-fun b!7311095 () Bool)

(declare-fun e!4375976 () Bool)

(declare-fun tp!2075014 () Bool)

(assert (=> b!7311095 (= e!4375976 (and tp_is_empty!47303 tp!2075014))))

(assert (=> b!7311008 (= tp!2075002 e!4375976)))

(assert (= (and b!7311008 (is-Cons!71005 (t!385237 lRes!24))) b!7311095))

(declare-fun condSetEmpty!53810 () Bool)

(assert (=> tb!262145 (= condSetEmpty!53810 (= (dynLambda!29044 f!903 elmt!124) (as set.empty (Set B!3455))))))

(declare-fun setRes!53810 () Bool)

(assert (=> tb!262145 (= result!352672 setRes!53810)))

(declare-fun setIsEmpty!53810 () Bool)

(assert (=> setIsEmpty!53810 setRes!53810))

(declare-fun setNonEmpty!53810 () Bool)

(declare-fun tp!2075017 () Bool)

(assert (=> setNonEmpty!53810 (= setRes!53810 (and tp!2075017 tp_is_empty!47303))))

(declare-fun setRest!53810 () (Set B!3455))

(declare-fun setElem!53810 () B!3455)

(assert (=> setNonEmpty!53810 (= (dynLambda!29044 f!903 elmt!124) (set.union (set.insert setElem!53810 (as set.empty (Set B!3455))) setRest!53810))))

(assert (= (and tb!262145 condSetEmpty!53810) setIsEmpty!53810))

(assert (= (and tb!262145 (not condSetEmpty!53810)) setNonEmpty!53810))

(declare-fun condSetEmpty!53813 () Bool)

(assert (=> setNonEmpty!53804 (= condSetEmpty!53813 (= setRest!53804 (as set.empty (Set A!753))))))

(declare-fun setRes!53813 () Bool)

(assert (=> setNonEmpty!53804 (= tp!2075000 setRes!53813)))

(declare-fun setIsEmpty!53813 () Bool)

(assert (=> setIsEmpty!53813 setRes!53813))

(declare-fun setNonEmpty!53813 () Bool)

(declare-fun tp!2075020 () Bool)

(assert (=> setNonEmpty!53813 (= setRes!53813 (and tp!2075020 tp_is_empty!47301))))

(declare-fun setElem!53813 () A!753)

(declare-fun setRest!53813 () (Set A!753))

(assert (=> setNonEmpty!53813 (= setRest!53804 (set.union (set.insert setElem!53813 (as set.empty (Set A!753))) setRest!53813))))

(assert (= (and setNonEmpty!53804 condSetEmpty!53813) setIsEmpty!53813))

(assert (= (and setNonEmpty!53804 (not condSetEmpty!53813)) setNonEmpty!53813))

(declare-fun b_lambda!282069 () Bool)

(assert (= b_lambda!282065 (or b!7311006 b_lambda!282069)))

(declare-fun bs!1914484 () Bool)

(declare-fun d!2269843 () Bool)

(assert (= bs!1914484 (and d!2269843 b!7311006)))

(assert (=> bs!1914484 (= (dynLambda!29046 lambda!451568 (h!77453 (t!385237 lRes!24))) (contains!20756 lt!2600430 (h!77453 (t!385237 lRes!24))))))

(declare-fun m!7975270 () Bool)

(assert (=> bs!1914484 m!7975270))

(assert (=> b!7311050 d!2269843))

(push 1)

(assert (not bs!1914484))

(assert (not d!2269827))

(assert (not b_lambda!282069))

(assert (not b!7311041))

(assert (not b_next!134697))

(assert (not d!2269839))

(assert (not setNonEmpty!53810))

(assert (not b_lambda!282061))

(assert (not b!7311051))

(assert (not setNonEmpty!53813))

(assert (not b!7311044))

(assert (not b!7311070))

(assert (not b!7311084))

(assert (not b!7311040))

(assert (not bm!665687))

(assert (not b!7311095))

(assert tp_is_empty!47301)

(assert b_and!351187)

(assert (not b!7311069))

(assert tp_is_empty!47303)

(assert (not b!7311068))

(assert (not d!2269825))

(assert (not d!2269835))

(assert (not b!7311045))

(assert (not d!2269831))

(assert (not d!2269841))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351187)

(assert (not b_next!134697))

(check-sat)

(pop 1)

