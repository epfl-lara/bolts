; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!45382 () Bool)

(assert start!45382)

(declare-fun b_free!13253 () Bool)

(declare-fun b_next!13253 () Bool)

(assert (=> start!45382 (= b_free!13253 (not b_next!13253))))

(declare-fun tp!131036 () Bool)

(declare-fun b_and!50641 () Bool)

(assert (=> start!45382 (= tp!131036 b_and!50641)))

(declare-fun b_free!13255 () Bool)

(declare-fun b_next!13255 () Bool)

(assert (=> start!45382 (= b_free!13255 (not b_next!13255))))

(declare-fun tp!131037 () Bool)

(declare-fun b_and!50643 () Bool)

(assert (=> start!45382 (= tp!131037 b_and!50643)))

(declare-fun b!472774 () Bool)

(assert (=> b!472774 true))

(declare-fun order!4337 () Int)

(declare-fun order!4335 () Int)

(declare-fun lambda!14238 () Int)

(declare-fun f!1019 () Int)

(declare-fun dynLambda!2951 (Int Int) Int)

(declare-fun dynLambda!2952 (Int Int) Int)

(assert (=> b!472774 (< (dynLambda!2951 order!4335 f!1019) (dynLambda!2952 order!4337 lambda!14238))))

(assert (=> b!472774 true))

(declare-fun order!4339 () Int)

(declare-fun p!1765 () Int)

(declare-fun dynLambda!2953 (Int Int) Int)

(assert (=> b!472774 (< (dynLambda!2953 order!4339 p!1765) (dynLambda!2952 order!4337 lambda!14238))))

(declare-fun bs!58602 () Bool)

(declare-fun b!472772 () Bool)

(assert (= bs!58602 (and b!472772 b!472774)))

(declare-fun lambda!14239 () Int)

(assert (=> bs!58602 (not (= lambda!14239 lambda!14238))))

(assert (=> b!472772 true))

(assert (=> b!472772 true))

(assert (=> b!472772 (< (dynLambda!2951 order!4335 f!1019) (dynLambda!2952 order!4337 lambda!14239))))

(declare-fun tp_is_empty!2221 () Bool)

(declare-fun inst!212 () Bool)

(declare-fun b!472768 () Bool)

(declare-datatypes ((A!421 0))(
  ( (A!422 (val!1559 Int)) )
))
(declare-fun x!113095 () A!421)

(declare-datatypes ((B!983 0))(
  ( (B!984 (val!1560 Int)) )
))
(declare-fun forall!1345 ((Set B!983) Int) Bool)

(declare-fun dynLambda!2954 (Int A!421) (Set B!983))

(assert (=> b!472768 (= inst!212 (=> tp_is_empty!2221 (forall!1345 (dynLambda!2954 f!1019 x!113095) p!1765)))))

(declare-fun b_lambda!19885 () Bool)

(assert (=> (not b_lambda!19885) (not b!472768)))

(declare-fun t!73079 () Bool)

(declare-fun tb!47093 () Bool)

(assert (=> (and start!45382 (= f!1019 f!1019) t!73079) tb!47093))

(assert (=> b!472768 t!73079))

(declare-fun result!51920 () Bool)

(declare-fun b_and!50645 () Bool)

(assert (= b_and!50641 (and (=> t!73079 result!51920) b_and!50645)))

(declare-fun m!746201 () Bool)

(assert (=> b!472768 m!746201))

(assert (=> b!472768 m!746201))

(declare-fun m!746203 () Bool)

(assert (=> b!472768 m!746203))

(declare-fun bs!58603 () Bool)

(declare-fun neg-inst!212 () Bool)

(declare-fun s!18191 () Bool)

(assert (= bs!58603 (and neg-inst!212 s!18191)))

(assert (=> bs!58603 (=> true (forall!1345 (dynLambda!2954 f!1019 x!113095) p!1765))))

(declare-fun b_lambda!19887 () Bool)

(assert (=> (not b_lambda!19887) (not bs!58603)))

(assert (=> bs!58603 t!73079))

(declare-fun b_and!50647 () Bool)

(assert (= b_and!50645 (and (=> t!73079 result!51920) b_and!50647)))

(assert (=> m!746201 m!746203))

(assert (=> m!746201 s!18191))

(declare-fun bs!58604 () Bool)

(assert (= bs!58604 (and neg-inst!212 b!472768)))

(assert (=> bs!58604 (= true inst!212)))

(declare-fun b!472767 () Bool)

(declare-fun e!289137 () Bool)

(declare-fun e!289136 () Bool)

(assert (=> b!472767 (= e!289137 e!289136)))

(declare-fun res!209834 () Bool)

(assert (=> b!472767 (=> res!209834 e!289136)))

(declare-fun elm!3 () B!983)

(declare-fun lt!210488 () (Set B!983))

(assert (=> b!472767 (= res!209834 (not (set.member elm!3 lt!210488)))))

(declare-datatypes ((List!4584 0))(
  ( (Nil!4574) (Cons!4574 (h!9971 A!421) (t!73084 List!4584)) )
))
(declare-fun lt!210486 () List!4584)

(declare-fun getWitness!41 (List!4584 Int) A!421)

(assert (=> b!472767 (= lt!210488 (dynLambda!2954 f!1019 (getWitness!41 lt!210486 lambda!14239)))))

(declare-fun res!209837 () Bool)

(declare-fun e!289134 () Bool)

(assert (=> start!45382 (=> (not res!209837) (not e!289134))))

(declare-fun s!1493 () (Set A!421))

(declare-fun flatMap!115 ((Set A!421) Int) (Set B!983))

(assert (=> start!45382 (= res!209837 (set.member elm!3 (flatMap!115 s!1493 f!1019)))))

(assert (=> start!45382 e!289134))

(declare-fun tp_is_empty!2223 () Bool)

(assert (=> start!45382 tp_is_empty!2223))

(declare-fun condSetEmpty!2097 () Bool)

(assert (=> start!45382 (= condSetEmpty!2097 (= s!1493 (as set.empty (Set A!421))))))

(declare-fun setRes!2097 () Bool)

(assert (=> start!45382 setRes!2097))

(assert (=> start!45382 tp!131036))

(assert (=> start!45382 tp!131037))

(declare-fun setIsEmpty!2097 () Bool)

(assert (=> setIsEmpty!2097 setRes!2097))

(declare-fun setNonEmpty!2097 () Bool)

(declare-fun tp!131038 () Bool)

(assert (=> setNonEmpty!2097 (= setRes!2097 (and tp!131038 tp_is_empty!2221))))

(declare-fun setElem!2097 () A!421)

(declare-fun setRest!2097 () (Set A!421))

(assert (=> setNonEmpty!2097 (= s!1493 (set.union (set.insert setElem!2097 (as set.empty (Set A!421))) setRest!2097))))

(declare-fun e!289135 () Bool)

(declare-fun e!289139 () Bool)

(assert (=> b!472768 (= e!289135 e!289139)))

(declare-fun res!209839 () Bool)

(assert (=> b!472768 (=> res!209839 e!289139)))

(assert (=> b!472768 (= res!209839 (not (forall!1345 lt!210488 p!1765)))))

(declare-fun Forall!265 (Int) Bool)

(assert (=> b!472768 (= (Forall!265 lambda!14238) inst!212)))

(declare-fun b!472769 () Bool)

(assert (=> b!472769 (= e!289136 e!289135)))

(declare-fun res!209841 () Bool)

(assert (=> b!472769 (=> res!209841 e!289135)))

(declare-datatypes ((List!4585 0))(
  ( (Nil!4575) (Cons!4575 (h!9972 B!983) (t!73085 List!4585)) )
))
(declare-fun lt!210487 () List!4585)

(declare-fun contains!1039 (List!4585 B!983) Bool)

(assert (=> b!472769 (= res!209841 (not (contains!1039 lt!210487 elm!3)))))

(declare-fun toList!355 ((Set B!983)) List!4585)

(assert (=> b!472769 (= lt!210487 (toList!355 lt!210488))))

(declare-fun b!472770 () Bool)

(declare-fun e!289138 () Bool)

(assert (=> b!472770 (= e!289138 e!289137)))

(declare-fun res!209836 () Bool)

(assert (=> b!472770 (=> res!209836 e!289137)))

(declare-fun exists!84 (List!4584 Int) Bool)

(assert (=> b!472770 (= res!209836 (not (exists!84 lt!210486 lambda!14239)))))

(declare-fun toList!356 ((Set A!421)) List!4584)

(assert (=> b!472770 (= lt!210486 (toList!356 s!1493))))

(declare-fun b!472771 () Bool)

(declare-fun res!209835 () Bool)

(assert (=> b!472771 (=> res!209835 e!289139)))

(declare-fun forall!1346 (List!4585 Int) Bool)

(assert (=> b!472771 (= res!209835 (not (forall!1346 lt!210487 p!1765)))))

(assert (=> b!472772 (= e!289134 (not e!289138))))

(declare-fun res!209840 () Bool)

(assert (=> b!472772 (=> res!209840 e!289138)))

(declare-fun exists!85 ((Set A!421) Int) Bool)

(assert (=> b!472772 (= res!209840 (not (exists!85 s!1493 lambda!14239)))))

(declare-fun empty!2687 () A!421)

(declare-fun flatMapPost!39 ((Set A!421) Int B!983) A!421)

(assert (=> b!472772 (= (flatMapPost!39 s!1493 f!1019 elm!3) empty!2687)))

(assert (=> b!472772 true))

(assert (=> b!472772 tp_is_empty!2221))

(declare-fun b!472773 () Bool)

(declare-fun dynLambda!2955 (Int B!983) Bool)

(assert (=> b!472773 (= e!289139 (dynLambda!2955 p!1765 elm!3))))

(declare-datatypes ((Unit!8317 0))(
  ( (Unit!8318) )
))
(declare-fun lt!210485 () Unit!8317)

(declare-fun forallContained!431 (List!4585 Int B!983) Unit!8317)

(assert (=> b!472773 (= lt!210485 (forallContained!431 lt!210487 p!1765 elm!3))))

(declare-fun res!209838 () Bool)

(assert (=> b!472774 (=> (not res!209838) (not e!289134))))

(assert (=> b!472774 (= res!209838 (Forall!265 lambda!14238))))

(assert (= (and start!45382 res!209837) b!472774))

(assert (= (and b!472774 res!209838) b!472772))

(assert (= (and b!472772 (not res!209840)) b!472770))

(assert (= (and b!472770 (not res!209836)) b!472767))

(assert (= (and b!472767 (not res!209834)) b!472769))

(assert (= (and b!472769 (not res!209841)) b!472768))

(assert (= neg-inst!212 inst!212))

(assert (= (and b!472768 (not res!209839)) b!472771))

(assert (= (and b!472771 (not res!209835)) b!472773))

(assert (= (and start!45382 condSetEmpty!2097) setIsEmpty!2097))

(assert (= (and start!45382 (not condSetEmpty!2097)) setNonEmpty!2097))

(declare-fun b_lambda!19889 () Bool)

(assert (=> (not b_lambda!19889) (not b!472767)))

(declare-fun t!73081 () Bool)

(declare-fun tb!47095 () Bool)

(assert (=> (and start!45382 (= f!1019 f!1019) t!73081) tb!47095))

(assert (=> b!472767 t!73081))

(declare-fun result!51922 () Bool)

(declare-fun b_and!50649 () Bool)

(assert (= b_and!50647 (and (=> t!73081 result!51922) b_and!50649)))

(declare-fun b_lambda!19891 () Bool)

(assert (=> (not b_lambda!19891) (not b!472773)))

(declare-fun t!73083 () Bool)

(declare-fun tb!47097 () Bool)

(assert (=> (and start!45382 (= p!1765 p!1765) t!73083) tb!47097))

(declare-fun result!51924 () Bool)

(assert (=> tb!47097 (= result!51924 true)))

(assert (=> b!472773 t!73083))

(declare-fun b_and!50651 () Bool)

(assert (= b_and!50643 (and (=> t!73083 result!51924) b_and!50651)))

(declare-fun m!746205 () Bool)

(assert (=> b!472769 m!746205))

(declare-fun m!746207 () Bool)

(assert (=> b!472769 m!746207))

(declare-fun m!746209 () Bool)

(assert (=> b!472774 m!746209))

(declare-fun m!746211 () Bool)

(assert (=> b!472770 m!746211))

(declare-fun m!746213 () Bool)

(assert (=> b!472770 m!746213))

(declare-fun m!746215 () Bool)

(assert (=> start!45382 m!746215))

(declare-fun m!746217 () Bool)

(assert (=> start!45382 m!746217))

(declare-fun m!746219 () Bool)

(assert (=> b!472773 m!746219))

(declare-fun m!746221 () Bool)

(assert (=> b!472773 m!746221))

(declare-fun m!746223 () Bool)

(assert (=> b!472767 m!746223))

(declare-fun m!746225 () Bool)

(assert (=> b!472767 m!746225))

(assert (=> b!472767 m!746225))

(declare-fun m!746227 () Bool)

(assert (=> b!472767 m!746227))

(declare-fun m!746229 () Bool)

(assert (=> b!472772 m!746229))

(declare-fun m!746231 () Bool)

(assert (=> b!472772 m!746231))

(declare-fun m!746233 () Bool)

(assert (=> b!472771 m!746233))

(declare-fun m!746235 () Bool)

(assert (=> b!472768 m!746235))

(assert (=> b!472768 m!746209))

(push 1)

(assert (not b_lambda!19885))

(assert (not b!472772))

(assert (not start!45382))

(assert tp_is_empty!2221)

(assert (not b_lambda!19887))

(assert (not setNonEmpty!2097))

(assert (not b!472767))

(assert (not b_lambda!19889))

(assert b_and!50649)

(assert b_and!50651)

(assert (not b_next!13253))

(assert tp_is_empty!2223)

(assert (not tb!47093))

(assert (not b!472768))

(assert (not b_lambda!19891))

(assert (not b!472773))

(assert (not b!472770))

(assert (not b_next!13255))

(assert (not tb!47095))

(assert (not b!472771))

(assert (not b!472769))

(assert (not b!472774))

(assert (not bs!58603))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50649)

(assert b_and!50651)

(assert (not b_next!13253))

(assert (not b_next!13255))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!19901 () Bool)

(assert (= b_lambda!19885 (or (and start!45382 b_free!13253) b_lambda!19901)))

(declare-fun b_lambda!19903 () Bool)

(assert (= b_lambda!19889 (or (and start!45382 b_free!13253) b_lambda!19903)))

(declare-fun b_lambda!19905 () Bool)

(assert (= b_lambda!19887 (or (and start!45382 b_free!13253) b_lambda!19905)))

(declare-fun b_lambda!19907 () Bool)

(assert (= b_lambda!19891 (or (and start!45382 b_free!13255) b_lambda!19907)))

(push 1)

(assert (not b!472773))

(assert (not b!472772))

(assert (not b_lambda!19905))

(assert tp_is_empty!2221)

(assert (not setNonEmpty!2097))

(assert (not b!472767))

(assert (not b_lambda!19901))

(assert b_and!50649)

(assert b_and!50651)

(assert (not b_next!13253))

(assert tp_is_empty!2223)

(assert (not tb!47093))

(assert (not b_lambda!19903))

(assert (not b!472768))

(assert (not b_lambda!19907))

(assert (not start!45382))

(assert (not b!472770))

(assert (not b_next!13255))

(assert (not tb!47095))

(assert (not b!472771))

(assert (not b!472769))

(assert (not b!472774))

(assert (not bs!58603))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50649)

(assert b_and!50651)

(assert (not b_next!13253))

(assert (not b_next!13255))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!472823 () Bool)

(declare-fun e!289167 () A!421)

(assert (=> b!472823 (= e!289167 (getWitness!41 (t!73084 lt!210486) lambda!14239))))

(declare-fun b!472824 () Bool)

(declare-fun lt!210505 () Unit!8317)

(declare-fun Unit!8321 () Unit!8317)

(assert (=> b!472824 (= lt!210505 Unit!8321)))

(assert (=> b!472824 false))

(declare-fun head!1146 (List!4584) A!421)

(assert (=> b!472824 (= e!289167 (head!1146 lt!210486))))

(declare-fun b!472825 () Bool)

(declare-fun e!289168 () A!421)

(assert (=> b!472825 (= e!289168 (h!9971 lt!210486))))

(declare-fun b!472826 () Bool)

(declare-fun e!289169 () Bool)

(declare-fun lt!210506 () A!421)

(declare-fun contains!1041 (List!4584 A!421) Bool)

(assert (=> b!472826 (= e!289169 (contains!1041 lt!210486 lt!210506))))

(declare-fun b!472827 () Bool)

(declare-fun e!289166 () Bool)

(declare-fun dynLambda!2961 (Int A!421) Bool)

(assert (=> b!472827 (= e!289166 (dynLambda!2961 lambda!14239 (h!9971 lt!210486)))))

(declare-fun b!472828 () Bool)

(assert (=> b!472828 (= e!289168 e!289167)))

(declare-fun c!94910 () Bool)

(assert (=> b!472828 (= c!94910 (is-Cons!4574 lt!210486))))

(declare-fun d!179666 () Bool)

(assert (=> d!179666 e!289169))

(declare-fun res!209871 () Bool)

(assert (=> d!179666 (=> (not res!209871) (not e!289169))))

(assert (=> d!179666 (= res!209871 (dynLambda!2961 lambda!14239 lt!210506))))

(assert (=> d!179666 (= lt!210506 e!289168)))

(declare-fun c!94909 () Bool)

(assert (=> d!179666 (= c!94909 e!289166)))

(declare-fun res!209870 () Bool)

(assert (=> d!179666 (=> (not res!209870) (not e!289166))))

(assert (=> d!179666 (= res!209870 (is-Cons!4574 lt!210486))))

(assert (=> d!179666 (exists!84 lt!210486 lambda!14239)))

(assert (=> d!179666 (= (getWitness!41 lt!210486 lambda!14239) lt!210506)))

(assert (= (and d!179666 res!209870) b!472827))

(assert (= (and d!179666 c!94909) b!472825))

(assert (= (and d!179666 (not c!94909)) b!472828))

(assert (= (and b!472828 c!94910) b!472823))

(assert (= (and b!472828 (not c!94910)) b!472824))

(assert (= (and d!179666 res!209871) b!472826))

(declare-fun b_lambda!19917 () Bool)

(assert (=> (not b_lambda!19917) (not b!472827)))

(declare-fun b_lambda!19919 () Bool)

(assert (=> (not b_lambda!19919) (not d!179666)))

(declare-fun m!746273 () Bool)

(assert (=> b!472826 m!746273))

(declare-fun m!746275 () Bool)

(assert (=> b!472827 m!746275))

(declare-fun m!746277 () Bool)

(assert (=> b!472824 m!746277))

(declare-fun m!746279 () Bool)

(assert (=> b!472823 m!746279))

(declare-fun m!746281 () Bool)

(assert (=> d!179666 m!746281))

(assert (=> d!179666 m!746211))

(assert (=> b!472767 d!179666))

(declare-fun bs!58608 () Bool)

(declare-fun d!179668 () Bool)

(assert (= bs!58608 (and d!179668 b!472774)))

(declare-fun lambda!14254 () Int)

(assert (=> bs!58608 (not (= lambda!14254 lambda!14238))))

(declare-fun bs!58609 () Bool)

(assert (= bs!58609 (and d!179668 b!472772)))

(assert (=> bs!58609 (not (= lambda!14254 lambda!14239))))

(assert (=> d!179668 true))

(assert (=> d!179668 (< (dynLambda!2952 order!4337 lambda!14239) (dynLambda!2952 order!4337 lambda!14254))))

(declare-fun forall!1349 (List!4584 Int) Bool)

(assert (=> d!179668 (= (exists!84 lt!210486 lambda!14239) (not (forall!1349 lt!210486 lambda!14254)))))

(declare-fun bs!58610 () Bool)

(assert (= bs!58610 d!179668))

(declare-fun m!746283 () Bool)

(assert (=> bs!58610 m!746283))

(assert (=> b!472770 d!179668))

(declare-fun d!179670 () Bool)

(declare-fun e!289172 () Bool)

(assert (=> d!179670 e!289172))

(declare-fun res!209874 () Bool)

(assert (=> d!179670 (=> (not res!209874) (not e!289172))))

(declare-fun lt!210509 () List!4584)

(declare-fun noDuplicate!107 (List!4584) Bool)

(assert (=> d!179670 (= res!209874 (noDuplicate!107 lt!210509))))

(declare-fun choose!3615 ((Set A!421)) List!4584)

(assert (=> d!179670 (= lt!210509 (choose!3615 s!1493))))

(assert (=> d!179670 (= (toList!356 s!1493) lt!210509)))

(declare-fun b!472833 () Bool)

(declare-fun content!784 (List!4584) (Set A!421))

(assert (=> b!472833 (= e!289172 (= (content!784 lt!210509) s!1493))))

(assert (= (and d!179670 res!209874) b!472833))

(declare-fun m!746285 () Bool)

(assert (=> d!179670 m!746285))

(declare-fun m!746287 () Bool)

(assert (=> d!179670 m!746287))

(declare-fun m!746289 () Bool)

(assert (=> b!472833 m!746289))

(assert (=> b!472770 d!179670))

(declare-fun d!179672 () Bool)

(declare-fun choose!3616 ((Set A!421) Int) (Set B!983))

(assert (=> d!179672 (= (flatMap!115 s!1493 f!1019) (choose!3616 s!1493 f!1019))))

(declare-fun bs!58611 () Bool)

(assert (= bs!58611 d!179672))

(declare-fun m!746291 () Bool)

(assert (=> bs!58611 m!746291))

(assert (=> start!45382 d!179672))

(declare-fun d!179674 () Bool)

(declare-fun lt!210512 () Bool)

(assert (=> d!179674 (= lt!210512 (exists!84 (toList!356 s!1493) lambda!14239))))

(declare-fun choose!3617 ((Set A!421) Int) Bool)

(assert (=> d!179674 (= lt!210512 (choose!3617 s!1493 lambda!14239))))

(assert (=> d!179674 (= (exists!85 s!1493 lambda!14239) lt!210512)))

(declare-fun bs!58612 () Bool)

(assert (= bs!58612 d!179674))

(assert (=> bs!58612 m!746213))

(assert (=> bs!58612 m!746213))

(declare-fun m!746293 () Bool)

(assert (=> bs!58612 m!746293))

(declare-fun m!746295 () Bool)

(assert (=> bs!58612 m!746295))

(assert (=> b!472772 d!179674))

(declare-fun bs!58613 () Bool)

(declare-fun d!179676 () Bool)

(assert (= bs!58613 (and d!179676 b!472774)))

(declare-fun lambda!14257 () Int)

(assert (=> bs!58613 (not (= lambda!14257 lambda!14238))))

(declare-fun bs!58614 () Bool)

(assert (= bs!58614 (and d!179676 b!472772)))

(assert (=> bs!58614 (= lambda!14257 lambda!14239)))

(declare-fun bs!58615 () Bool)

(assert (= bs!58615 (and d!179676 d!179668)))

(assert (=> bs!58615 (not (= lambda!14257 lambda!14254))))

(assert (=> d!179676 true))

(assert (=> d!179676 true))

(assert (=> d!179676 (< (dynLambda!2951 order!4335 f!1019) (dynLambda!2952 order!4337 lambda!14257))))

(assert (=> d!179676 (= (set.member elm!3 (flatMap!115 s!1493 f!1019)) (exists!85 s!1493 lambda!14257))))

(declare-fun lt!210515 () A!421)

(declare-fun choose!3618 ((Set A!421) Int B!983) A!421)

(assert (=> d!179676 (= lt!210515 (choose!3618 s!1493 f!1019 elm!3))))

(assert (=> d!179676 (= (flatMapPost!39 s!1493 f!1019 elm!3) lt!210515)))

(declare-fun bs!58616 () Bool)

(assert (= bs!58616 d!179676))

(assert (=> bs!58616 m!746215))

(assert (=> bs!58616 m!746217))

(declare-fun m!746297 () Bool)

(assert (=> bs!58616 m!746297))

(declare-fun m!746299 () Bool)

(assert (=> bs!58616 m!746299))

(assert (=> b!472772 d!179676))

(declare-fun d!179678 () Bool)

(declare-fun res!209879 () Bool)

(declare-fun e!289177 () Bool)

(assert (=> d!179678 (=> res!209879 e!289177)))

(assert (=> d!179678 (= res!209879 (is-Nil!4575 lt!210487))))

(assert (=> d!179678 (= (forall!1346 lt!210487 p!1765) e!289177)))

(declare-fun b!472839 () Bool)

(declare-fun e!289178 () Bool)

(assert (=> b!472839 (= e!289177 e!289178)))

(declare-fun res!209880 () Bool)

(assert (=> b!472839 (=> (not res!209880) (not e!289178))))

(assert (=> b!472839 (= res!209880 (dynLambda!2955 p!1765 (h!9972 lt!210487)))))

(declare-fun b!472840 () Bool)

(assert (=> b!472840 (= e!289178 (forall!1346 (t!73085 lt!210487) p!1765))))

(assert (= (and d!179678 (not res!209879)) b!472839))

(assert (= (and b!472839 res!209880) b!472840))

(declare-fun b_lambda!19921 () Bool)

(assert (=> (not b_lambda!19921) (not b!472839)))

(declare-fun t!73095 () Bool)

(declare-fun tb!47105 () Bool)

(assert (=> (and start!45382 (= p!1765 p!1765) t!73095) tb!47105))

(declare-fun result!51932 () Bool)

(assert (=> tb!47105 (= result!51932 true)))

(assert (=> b!472839 t!73095))

(declare-fun b_and!50665 () Bool)

(assert (= b_and!50651 (and (=> t!73095 result!51932) b_and!50665)))

(declare-fun m!746301 () Bool)

(assert (=> b!472839 m!746301))

(declare-fun m!746303 () Bool)

(assert (=> b!472840 m!746303))

(assert (=> b!472771 d!179678))

(declare-fun d!179680 () Bool)

(declare-fun lt!210518 () Bool)

(assert (=> d!179680 (= lt!210518 (forall!1346 (toList!355 (dynLambda!2954 f!1019 x!113095)) p!1765))))

(declare-fun choose!3619 ((Set B!983) Int) Bool)

(assert (=> d!179680 (= lt!210518 (choose!3619 (dynLambda!2954 f!1019 x!113095) p!1765))))

(assert (=> d!179680 (= (forall!1345 (dynLambda!2954 f!1019 x!113095) p!1765) lt!210518)))

(declare-fun bs!58617 () Bool)

(assert (= bs!58617 d!179680))

(assert (=> bs!58617 m!746201))

(declare-fun m!746305 () Bool)

(assert (=> bs!58617 m!746305))

(assert (=> bs!58617 m!746305))

(declare-fun m!746307 () Bool)

(assert (=> bs!58617 m!746307))

(assert (=> bs!58617 m!746201))

(declare-fun m!746309 () Bool)

(assert (=> bs!58617 m!746309))

(assert (=> b!472768 d!179680))

(declare-fun d!179682 () Bool)

(declare-fun lt!210519 () Bool)

(assert (=> d!179682 (= lt!210519 (forall!1346 (toList!355 lt!210488) p!1765))))

(assert (=> d!179682 (= lt!210519 (choose!3619 lt!210488 p!1765))))

(assert (=> d!179682 (= (forall!1345 lt!210488 p!1765) lt!210519)))

(declare-fun bs!58618 () Bool)

(assert (= bs!58618 d!179682))

(assert (=> bs!58618 m!746207))

(assert (=> bs!58618 m!746207))

(declare-fun m!746311 () Bool)

(assert (=> bs!58618 m!746311))

(declare-fun m!746313 () Bool)

(assert (=> bs!58618 m!746313))

(assert (=> b!472768 d!179682))

(declare-fun d!179684 () Bool)

(declare-fun choose!3620 (Int) Bool)

(assert (=> d!179684 (= (Forall!265 lambda!14238) (choose!3620 lambda!14238))))

(declare-fun bs!58619 () Bool)

(assert (= bs!58619 d!179684))

(declare-fun m!746315 () Bool)

(assert (=> bs!58619 m!746315))

(assert (=> b!472768 d!179684))

(declare-fun d!179686 () Bool)

(assert (=> d!179686 (dynLambda!2955 p!1765 elm!3)))

(declare-fun lt!210522 () Unit!8317)

(declare-fun choose!3621 (List!4585 Int B!983) Unit!8317)

(assert (=> d!179686 (= lt!210522 (choose!3621 lt!210487 p!1765 elm!3))))

(declare-fun e!289181 () Bool)

(assert (=> d!179686 e!289181))

(declare-fun res!209883 () Bool)

(assert (=> d!179686 (=> (not res!209883) (not e!289181))))

(assert (=> d!179686 (= res!209883 (forall!1346 lt!210487 p!1765))))

(assert (=> d!179686 (= (forallContained!431 lt!210487 p!1765 elm!3) lt!210522)))

(declare-fun b!472843 () Bool)

(assert (=> b!472843 (= e!289181 (contains!1039 lt!210487 elm!3))))

(assert (= (and d!179686 res!209883) b!472843))

(declare-fun b_lambda!19923 () Bool)

(assert (=> (not b_lambda!19923) (not d!179686)))

(assert (=> d!179686 t!73083))

(declare-fun b_and!50667 () Bool)

(assert (= b_and!50665 (and (=> t!73083 result!51924) b_and!50667)))

(assert (=> d!179686 m!746219))

(declare-fun m!746317 () Bool)

(assert (=> d!179686 m!746317))

(assert (=> d!179686 m!746233))

(assert (=> b!472843 m!746205))

(assert (=> b!472773 d!179686))

(assert (=> bs!58603 d!179680))

(declare-fun d!179688 () Bool)

(declare-fun lt!210525 () Bool)

(declare-fun content!785 (List!4585) (Set B!983))

(assert (=> d!179688 (= lt!210525 (set.member elm!3 (content!785 lt!210487)))))

(declare-fun e!289187 () Bool)

(assert (=> d!179688 (= lt!210525 e!289187)))

(declare-fun res!209888 () Bool)

(assert (=> d!179688 (=> (not res!209888) (not e!289187))))

(assert (=> d!179688 (= res!209888 (is-Cons!4575 lt!210487))))

(assert (=> d!179688 (= (contains!1039 lt!210487 elm!3) lt!210525)))

(declare-fun b!472848 () Bool)

(declare-fun e!289186 () Bool)

(assert (=> b!472848 (= e!289187 e!289186)))

(declare-fun res!209889 () Bool)

(assert (=> b!472848 (=> res!209889 e!289186)))

(assert (=> b!472848 (= res!209889 (= (h!9972 lt!210487) elm!3))))

(declare-fun b!472849 () Bool)

(assert (=> b!472849 (= e!289186 (contains!1039 (t!73085 lt!210487) elm!3))))

(assert (= (and d!179688 res!209888) b!472848))

(assert (= (and b!472848 (not res!209889)) b!472849))

(declare-fun m!746319 () Bool)

(assert (=> d!179688 m!746319))

(declare-fun m!746321 () Bool)

(assert (=> d!179688 m!746321))

(declare-fun m!746323 () Bool)

(assert (=> b!472849 m!746323))

(assert (=> b!472769 d!179688))

(declare-fun d!179690 () Bool)

(declare-fun e!289190 () Bool)

(assert (=> d!179690 e!289190))

(declare-fun res!209892 () Bool)

(assert (=> d!179690 (=> (not res!209892) (not e!289190))))

(declare-fun lt!210528 () List!4585)

(declare-fun noDuplicate!108 (List!4585) Bool)

(assert (=> d!179690 (= res!209892 (noDuplicate!108 lt!210528))))

(declare-fun choose!3622 ((Set B!983)) List!4585)

(assert (=> d!179690 (= lt!210528 (choose!3622 lt!210488))))

(assert (=> d!179690 (= (toList!355 lt!210488) lt!210528)))

(declare-fun b!472852 () Bool)

(assert (=> b!472852 (= e!289190 (= (content!785 lt!210528) lt!210488))))

(assert (= (and d!179690 res!209892) b!472852))

(declare-fun m!746325 () Bool)

(assert (=> d!179690 m!746325))

(declare-fun m!746327 () Bool)

(assert (=> d!179690 m!746327))

(declare-fun m!746329 () Bool)

(assert (=> b!472852 m!746329))

(assert (=> b!472769 d!179690))

(assert (=> b!472774 d!179684))

(declare-fun condSetEmpty!2103 () Bool)

(assert (=> tb!47095 (= condSetEmpty!2103 (= (dynLambda!2954 f!1019 (getWitness!41 lt!210486 lambda!14239)) (as set.empty (Set B!983))))))

(declare-fun setRes!2103 () Bool)

(assert (=> tb!47095 (= result!51922 setRes!2103)))

(declare-fun setIsEmpty!2103 () Bool)

(assert (=> setIsEmpty!2103 setRes!2103))

(declare-fun setNonEmpty!2103 () Bool)

(declare-fun tp!131050 () Bool)

(assert (=> setNonEmpty!2103 (= setRes!2103 (and tp!131050 tp_is_empty!2223))))

(declare-fun setRest!2103 () (Set B!983))

(declare-fun setElem!2103 () B!983)

(assert (=> setNonEmpty!2103 (= (dynLambda!2954 f!1019 (getWitness!41 lt!210486 lambda!14239)) (set.union (set.insert setElem!2103 (as set.empty (Set B!983))) setRest!2103))))

(assert (= (and tb!47095 condSetEmpty!2103) setIsEmpty!2103))

(assert (= (and tb!47095 (not condSetEmpty!2103)) setNonEmpty!2103))

(declare-fun condSetEmpty!2104 () Bool)

(assert (=> tb!47093 (= condSetEmpty!2104 (= (dynLambda!2954 f!1019 x!113095) (as set.empty (Set B!983))))))

(declare-fun setRes!2104 () Bool)

(assert (=> tb!47093 (= result!51920 setRes!2104)))

(declare-fun setIsEmpty!2104 () Bool)

(assert (=> setIsEmpty!2104 setRes!2104))

(declare-fun setNonEmpty!2104 () Bool)

(declare-fun tp!131051 () Bool)

(assert (=> setNonEmpty!2104 (= setRes!2104 (and tp!131051 tp_is_empty!2223))))

(declare-fun setElem!2104 () B!983)

(declare-fun setRest!2104 () (Set B!983))

(assert (=> setNonEmpty!2104 (= (dynLambda!2954 f!1019 x!113095) (set.union (set.insert setElem!2104 (as set.empty (Set B!983))) setRest!2104))))

(assert (= (and tb!47093 condSetEmpty!2104) setIsEmpty!2104))

(assert (= (and tb!47093 (not condSetEmpty!2104)) setNonEmpty!2104))

(declare-fun condSetEmpty!2107 () Bool)

(assert (=> setNonEmpty!2097 (= condSetEmpty!2107 (= setRest!2097 (as set.empty (Set A!421))))))

(declare-fun setRes!2107 () Bool)

(assert (=> setNonEmpty!2097 (= tp!131038 setRes!2107)))

(declare-fun setIsEmpty!2107 () Bool)

(assert (=> setIsEmpty!2107 setRes!2107))

(declare-fun setNonEmpty!2107 () Bool)

(declare-fun tp!131054 () Bool)

(assert (=> setNonEmpty!2107 (= setRes!2107 (and tp!131054 tp_is_empty!2221))))

(declare-fun setElem!2107 () A!421)

(declare-fun setRest!2107 () (Set A!421))

(assert (=> setNonEmpty!2107 (= setRest!2097 (set.union (set.insert setElem!2107 (as set.empty (Set A!421))) setRest!2107))))

(assert (= (and setNonEmpty!2097 condSetEmpty!2107) setIsEmpty!2107))

(assert (= (and setNonEmpty!2097 (not condSetEmpty!2107)) setNonEmpty!2107))

(declare-fun b_lambda!19925 () Bool)

(assert (= b_lambda!19919 (or b!472772 b_lambda!19925)))

(declare-fun bs!58620 () Bool)

(declare-fun d!179692 () Bool)

(assert (= bs!58620 (and d!179692 b!472772)))

(assert (=> bs!58620 (= (dynLambda!2961 lambda!14239 lt!210506) (set.member elm!3 (dynLambda!2954 f!1019 lt!210506)))))

(declare-fun b_lambda!19933 () Bool)

(assert (=> (not b_lambda!19933) (not bs!58620)))

(declare-fun t!73097 () Bool)

(declare-fun tb!47107 () Bool)

(assert (=> (and start!45382 (= f!1019 f!1019) t!73097) tb!47107))

(assert (=> bs!58620 t!73097))

(declare-fun result!51938 () Bool)

(declare-fun b_and!50669 () Bool)

(assert (= b_and!50649 (and (=> t!73097 result!51938) b_and!50669)))

(declare-fun m!746331 () Bool)

(assert (=> bs!58620 m!746331))

(declare-fun m!746333 () Bool)

(assert (=> bs!58620 m!746333))

(assert (=> d!179666 d!179692))

(declare-fun b_lambda!19927 () Bool)

(assert (= b_lambda!19917 (or b!472772 b_lambda!19927)))

(declare-fun bs!58621 () Bool)

(declare-fun d!179694 () Bool)

(assert (= bs!58621 (and d!179694 b!472772)))

(assert (=> bs!58621 (= (dynLambda!2961 lambda!14239 (h!9971 lt!210486)) (set.member elm!3 (dynLambda!2954 f!1019 (h!9971 lt!210486))))))

(declare-fun b_lambda!19935 () Bool)

(assert (=> (not b_lambda!19935) (not bs!58621)))

(declare-fun t!73099 () Bool)

(declare-fun tb!47109 () Bool)

(assert (=> (and start!45382 (= f!1019 f!1019) t!73099) tb!47109))

(assert (=> bs!58621 t!73099))

(declare-fun result!51940 () Bool)

(declare-fun b_and!50671 () Bool)

(assert (= b_and!50669 (and (=> t!73099 result!51940) b_and!50671)))

(declare-fun m!746335 () Bool)

(assert (=> bs!58621 m!746335))

(declare-fun m!746337 () Bool)

(assert (=> bs!58621 m!746337))

(assert (=> b!472827 d!179694))

(declare-fun b_lambda!19929 () Bool)

(assert (= b_lambda!19923 (or (and start!45382 b_free!13255) b_lambda!19929)))

(declare-fun b_lambda!19931 () Bool)

(assert (= b_lambda!19921 (or (and start!45382 b_free!13255) b_lambda!19931)))

(push 1)

(assert (not d!179666))

(assert (not tb!47109))

(assert (not b!472833))

(assert (not b_lambda!19905))

(assert tp_is_empty!2221)

(assert (not d!179668))

(assert (not b_next!13255))

(assert (not d!179672))

(assert (not d!179688))

(assert (not b!472840))

(assert (not d!179676))

(assert (not b!472849))

(assert (not d!179686))

(assert (not setNonEmpty!2104))

(assert (not d!179674))

(assert (not b!472824))

(assert (not b!472826))

(assert (not tb!47107))

(assert (not b!472823))

(assert (not b_lambda!19925))

(assert (not b_lambda!19907))

(assert (not d!179690))

(assert (not b!472852))

(assert (not d!179684))

(assert (not b_lambda!19927))

(assert (not b_lambda!19901))

(assert b_and!50667)

(assert (not setNonEmpty!2103))

(assert (not b_lambda!19935))

(assert (not b_lambda!19931))

(assert (not d!179682))

(assert (not b_next!13253))

(assert b_and!50671)

(assert (not d!179670))

(assert (not b_lambda!19929))

(assert tp_is_empty!2223)

(assert (not b_lambda!19903))

(assert (not b_lambda!19933))

(assert (not b!472843))

(assert (not setNonEmpty!2107))

(assert (not d!179680))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50671)

(assert b_and!50667)

(assert (not b_next!13253))

(assert (not b_next!13255))

(check-sat)

(pop 1)

