; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!45260 () Bool)

(assert start!45260)

(declare-fun b_free!13221 () Bool)

(declare-fun b_next!13221 () Bool)

(assert (=> start!45260 (= b_free!13221 (not b_next!13221))))

(declare-fun tp!130914 () Bool)

(declare-fun b_and!50555 () Bool)

(assert (=> start!45260 (= tp!130914 b_and!50555)))

(declare-fun b_free!13223 () Bool)

(declare-fun b_next!13223 () Bool)

(assert (=> start!45260 (= b_free!13223 (not b_next!13223))))

(declare-fun tp!130912 () Bool)

(declare-fun b_and!50557 () Bool)

(assert (=> start!45260 (= tp!130912 b_and!50557)))

(declare-fun b!472344 () Bool)

(assert (=> b!472344 true))

(declare-fun order!4287 () Int)

(declare-fun lambda!14115 () Int)

(declare-fun order!4289 () Int)

(declare-fun f!1019 () Int)

(declare-fun dynLambda!2914 (Int Int) Int)

(declare-fun dynLambda!2915 (Int Int) Int)

(assert (=> b!472344 (< (dynLambda!2914 order!4287 f!1019) (dynLambda!2915 order!4289 lambda!14115))))

(assert (=> b!472344 true))

(declare-fun order!4291 () Int)

(declare-fun p!1765 () Int)

(declare-fun dynLambda!2916 (Int Int) Int)

(assert (=> b!472344 (< (dynLambda!2916 order!4291 p!1765) (dynLambda!2915 order!4289 lambda!14115))))

(declare-fun bs!58510 () Bool)

(declare-fun b!472347 () Bool)

(assert (= bs!58510 (and b!472347 b!472344)))

(declare-fun lambda!14116 () Int)

(assert (=> bs!58510 (not (= lambda!14116 lambda!14115))))

(assert (=> b!472347 true))

(assert (=> b!472347 true))

(assert (=> b!472347 (< (dynLambda!2914 order!4287 f!1019) (dynLambda!2915 order!4289 lambda!14116))))

(declare-fun res!209581 () Bool)

(declare-fun e!288877 () Bool)

(assert (=> b!472344 (=> (not res!209581) (not e!288877))))

(declare-fun Forall!257 (Int) Bool)

(assert (=> b!472344 (= res!209581 (Forall!257 lambda!14115))))

(declare-fun res!209580 () Bool)

(assert (=> start!45260 (=> (not res!209580) (not e!288877))))

(declare-datatypes ((B!967 0))(
  ( (B!968 (val!1543 Int)) )
))
(declare-fun elm!3 () B!967)

(declare-datatypes ((A!405 0))(
  ( (A!406 (val!1544 Int)) )
))
(declare-fun s!1493 () (Set A!405))

(declare-fun flatMap!107 ((Set A!405) Int) (Set B!967))

(assert (=> start!45260 (= res!209580 (set.member elm!3 (flatMap!107 s!1493 f!1019)))))

(assert (=> start!45260 e!288877))

(declare-fun tp_is_empty!2191 () Bool)

(assert (=> start!45260 tp_is_empty!2191))

(declare-fun condSetEmpty!2021 () Bool)

(assert (=> start!45260 (= condSetEmpty!2021 (= s!1493 (as set.empty (Set A!405))))))

(declare-fun setRes!2021 () Bool)

(assert (=> start!45260 setRes!2021))

(assert (=> start!45260 tp!130914))

(assert (=> start!45260 tp!130912))

(declare-fun b!472345 () Bool)

(declare-fun e!288876 () Bool)

(declare-fun e!288878 () Bool)

(assert (=> b!472345 (= e!288876 e!288878)))

(declare-fun res!209582 () Bool)

(assert (=> b!472345 (=> res!209582 e!288878)))

(declare-datatypes ((List!4570 0))(
  ( (Nil!4560) (Cons!4560 (h!9957 A!405) (t!73022 List!4570)) )
))
(declare-fun lt!210305 () List!4570)

(declare-fun exists!68 (List!4570 Int) Bool)

(assert (=> b!472345 (= res!209582 (not (exists!68 lt!210305 lambda!14116)))))

(declare-fun toList!341 ((Set A!405)) List!4570)

(assert (=> b!472345 (= lt!210305 (toList!341 s!1493))))

(declare-fun b!472346 () Bool)

(declare-fun dynLambda!2917 (Int A!405) (Set B!967))

(declare-fun getWitness!33 (List!4570 Int) A!405)

(assert (=> b!472346 (= e!288878 (set.member elm!3 (dynLambda!2917 f!1019 (getWitness!33 lt!210305 lambda!14116))))))

(assert (=> b!472347 (= e!288877 (not e!288876))))

(declare-fun res!209583 () Bool)

(assert (=> b!472347 (=> res!209583 e!288876)))

(declare-fun exists!69 ((Set A!405) Int) Bool)

(assert (=> b!472347 (= res!209583 (not (exists!69 s!1493 lambda!14116)))))

(declare-fun empty!2655 () A!405)

(declare-fun flatMapPost!31 ((Set A!405) Int B!967) A!405)

(assert (=> b!472347 (= (flatMapPost!31 s!1493 f!1019 elm!3) empty!2655)))

(assert (=> b!472347 true))

(declare-fun tp_is_empty!2189 () Bool)

(assert (=> b!472347 tp_is_empty!2189))

(declare-fun setNonEmpty!2021 () Bool)

(declare-fun tp!130913 () Bool)

(assert (=> setNonEmpty!2021 (= setRes!2021 (and tp!130913 tp_is_empty!2189))))

(declare-fun setElem!2021 () A!405)

(declare-fun setRest!2021 () (Set A!405))

(assert (=> setNonEmpty!2021 (= s!1493 (set.union (set.insert setElem!2021 (as set.empty (Set A!405))) setRest!2021))))

(declare-fun setIsEmpty!2021 () Bool)

(assert (=> setIsEmpty!2021 setRes!2021))

(assert (= (and start!45260 res!209580) b!472344))

(assert (= (and b!472344 res!209581) b!472347))

(assert (= (and b!472347 (not res!209583)) b!472345))

(assert (= (and b!472345 (not res!209582)) b!472346))

(assert (= (and start!45260 condSetEmpty!2021) setIsEmpty!2021))

(assert (= (and start!45260 (not condSetEmpty!2021)) setNonEmpty!2021))

(declare-fun b_lambda!19751 () Bool)

(assert (=> (not b_lambda!19751) (not b!472346)))

(declare-fun t!73021 () Bool)

(declare-fun tb!47049 () Bool)

(assert (=> (and start!45260 (= f!1019 f!1019) t!73021) tb!47049))

(assert (=> b!472346 t!73021))

(declare-fun result!51844 () Bool)

(declare-fun b_and!50559 () Bool)

(assert (= b_and!50555 (and (=> t!73021 result!51844) b_and!50559)))

(declare-fun m!745717 () Bool)

(assert (=> b!472346 m!745717))

(assert (=> b!472346 m!745717))

(declare-fun m!745719 () Bool)

(assert (=> b!472346 m!745719))

(declare-fun m!745721 () Bool)

(assert (=> b!472346 m!745721))

(declare-fun m!745723 () Bool)

(assert (=> b!472347 m!745723))

(declare-fun m!745725 () Bool)

(assert (=> b!472347 m!745725))

(declare-fun m!745727 () Bool)

(assert (=> start!45260 m!745727))

(declare-fun m!745729 () Bool)

(assert (=> start!45260 m!745729))

(declare-fun m!745731 () Bool)

(assert (=> b!472345 m!745731))

(declare-fun m!745733 () Bool)

(assert (=> b!472345 m!745733))

(declare-fun m!745735 () Bool)

(assert (=> b!472344 m!745735))

(push 1)

(assert (not setNonEmpty!2021))

(assert b_and!50557)

(assert b_and!50559)

(assert (not b_next!13223))

(assert (not b!472344))

(assert (not b!472346))

(assert (not b_next!13221))

(assert (not b_lambda!19751))

(assert (not b!472345))

(assert tp_is_empty!2189)

(assert tp_is_empty!2191)

(assert (not start!45260))

(assert (not tb!47049))

(assert (not b!472347))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50559)

(assert b_and!50557)

(assert (not b_next!13221))

(assert (not b_next!13223))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!19755 () Bool)

(assert (= b_lambda!19751 (or (and start!45260 b_free!13221) b_lambda!19755)))

(push 1)

(assert (not setNonEmpty!2021))

(assert b_and!50557)

(assert b_and!50559)

(assert (not b_next!13223))

(assert (not b!472344))

(assert (not b!472346))

(assert (not b_next!13221))

(assert (not b!472345))

(assert tp_is_empty!2189)

(assert tp_is_empty!2191)

(assert (not b_lambda!19755))

(assert (not start!45260))

(assert (not tb!47049))

(assert (not b!472347))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50559)

(assert b_and!50557)

(assert (not b_next!13221))

(assert (not b_next!13223))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!472384 () Bool)

(declare-fun e!288896 () Bool)

(declare-fun dynLambda!2922 (Int A!405) Bool)

(assert (=> b!472384 (= e!288896 (dynLambda!2922 lambda!14116 (h!9957 lt!210305)))))

(declare-fun d!179534 () Bool)

(declare-fun e!288897 () Bool)

(assert (=> d!179534 e!288897))

(declare-fun res!209600 () Bool)

(assert (=> d!179534 (=> (not res!209600) (not e!288897))))

(declare-fun lt!210314 () A!405)

(assert (=> d!179534 (= res!209600 (dynLambda!2922 lambda!14116 lt!210314))))

(declare-fun e!288898 () A!405)

(assert (=> d!179534 (= lt!210314 e!288898)))

(declare-fun c!94874 () Bool)

(assert (=> d!179534 (= c!94874 e!288896)))

(declare-fun res!209601 () Bool)

(assert (=> d!179534 (=> (not res!209601) (not e!288896))))

(assert (=> d!179534 (= res!209601 (is-Cons!4560 lt!210305))))

(assert (=> d!179534 (exists!68 lt!210305 lambda!14116)))

(assert (=> d!179534 (= (getWitness!33 lt!210305 lambda!14116) lt!210314)))

(declare-fun b!472385 () Bool)

(declare-fun e!288899 () A!405)

(assert (=> b!472385 (= e!288899 (getWitness!33 (t!73022 lt!210305) lambda!14116))))

(declare-fun b!472386 () Bool)

(declare-datatypes ((Unit!8305 0))(
  ( (Unit!8306) )
))
(declare-fun lt!210313 () Unit!8305)

(declare-fun Unit!8307 () Unit!8305)

(assert (=> b!472386 (= lt!210313 Unit!8307)))

(assert (=> b!472386 false))

(declare-fun head!1142 (List!4570) A!405)

(assert (=> b!472386 (= e!288899 (head!1142 lt!210305))))

(declare-fun b!472387 () Bool)

(assert (=> b!472387 (= e!288898 e!288899)))

(declare-fun c!94873 () Bool)

(assert (=> b!472387 (= c!94873 (is-Cons!4560 lt!210305))))

(declare-fun b!472388 () Bool)

(declare-fun contains!1029 (List!4570 A!405) Bool)

(assert (=> b!472388 (= e!288897 (contains!1029 lt!210305 lt!210314))))

(declare-fun b!472389 () Bool)

(assert (=> b!472389 (= e!288898 (h!9957 lt!210305))))

(assert (= (and d!179534 res!209601) b!472384))

(assert (= (and d!179534 c!94874) b!472389))

(assert (= (and d!179534 (not c!94874)) b!472387))

(assert (= (and b!472387 c!94873) b!472385))

(assert (= (and b!472387 (not c!94873)) b!472386))

(assert (= (and d!179534 res!209600) b!472388))

(declare-fun b_lambda!19757 () Bool)

(assert (=> (not b_lambda!19757) (not b!472384)))

(declare-fun b_lambda!19759 () Bool)

(assert (=> (not b_lambda!19759) (not d!179534)))

(declare-fun m!745757 () Bool)

(assert (=> b!472386 m!745757))

(declare-fun m!745759 () Bool)

(assert (=> b!472384 m!745759))

(declare-fun m!745761 () Bool)

(assert (=> b!472388 m!745761))

(declare-fun m!745763 () Bool)

(assert (=> d!179534 m!745763))

(assert (=> d!179534 m!745731))

(declare-fun m!745765 () Bool)

(assert (=> b!472385 m!745765))

(assert (=> b!472346 d!179534))

(declare-fun d!179536 () Bool)

(declare-fun lt!210317 () Bool)

(assert (=> d!179536 (= lt!210317 (exists!68 (toList!341 s!1493) lambda!14116))))

(declare-fun choose!3590 ((Set A!405) Int) Bool)

(assert (=> d!179536 (= lt!210317 (choose!3590 s!1493 lambda!14116))))

(assert (=> d!179536 (= (exists!69 s!1493 lambda!14116) lt!210317)))

(declare-fun bs!58512 () Bool)

(assert (= bs!58512 d!179536))

(assert (=> bs!58512 m!745733))

(assert (=> bs!58512 m!745733))

(declare-fun m!745767 () Bool)

(assert (=> bs!58512 m!745767))

(declare-fun m!745769 () Bool)

(assert (=> bs!58512 m!745769))

(assert (=> b!472347 d!179536))

(declare-fun bs!58513 () Bool)

(declare-fun d!179538 () Bool)

(assert (= bs!58513 (and d!179538 b!472344)))

(declare-fun lambda!14129 () Int)

(assert (=> bs!58513 (not (= lambda!14129 lambda!14115))))

(declare-fun bs!58514 () Bool)

(assert (= bs!58514 (and d!179538 b!472347)))

(assert (=> bs!58514 (= lambda!14129 lambda!14116)))

(assert (=> d!179538 true))

(assert (=> d!179538 true))

(assert (=> d!179538 (< (dynLambda!2914 order!4287 f!1019) (dynLambda!2915 order!4289 lambda!14129))))

(assert (=> d!179538 (= (set.member elm!3 (flatMap!107 s!1493 f!1019)) (exists!69 s!1493 lambda!14129))))

(declare-fun lt!210320 () A!405)

(declare-fun choose!3591 ((Set A!405) Int B!967) A!405)

(assert (=> d!179538 (= lt!210320 (choose!3591 s!1493 f!1019 elm!3))))

(assert (=> d!179538 (= (flatMapPost!31 s!1493 f!1019 elm!3) lt!210320)))

(declare-fun bs!58515 () Bool)

(assert (= bs!58515 d!179538))

(assert (=> bs!58515 m!745727))

(assert (=> bs!58515 m!745729))

(declare-fun m!745771 () Bool)

(assert (=> bs!58515 m!745771))

(declare-fun m!745773 () Bool)

(assert (=> bs!58515 m!745773))

(assert (=> b!472347 d!179538))

(declare-fun d!179540 () Bool)

(declare-fun choose!3592 ((Set A!405) Int) (Set B!967))

(assert (=> d!179540 (= (flatMap!107 s!1493 f!1019) (choose!3592 s!1493 f!1019))))

(declare-fun bs!58516 () Bool)

(assert (= bs!58516 d!179540))

(declare-fun m!745775 () Bool)

(assert (=> bs!58516 m!745775))

(assert (=> start!45260 d!179540))

(declare-fun d!179542 () Bool)

(declare-fun choose!3593 (Int) Bool)

(assert (=> d!179542 (= (Forall!257 lambda!14115) (choose!3593 lambda!14115))))

(declare-fun bs!58517 () Bool)

(assert (= bs!58517 d!179542))

(declare-fun m!745777 () Bool)

(assert (=> bs!58517 m!745777))

(assert (=> b!472344 d!179542))

(declare-fun bs!58518 () Bool)

(declare-fun d!179544 () Bool)

(assert (= bs!58518 (and d!179544 b!472344)))

(declare-fun lambda!14132 () Int)

(assert (=> bs!58518 (not (= lambda!14132 lambda!14115))))

(declare-fun bs!58519 () Bool)

(assert (= bs!58519 (and d!179544 b!472347)))

(assert (=> bs!58519 (not (= lambda!14132 lambda!14116))))

(declare-fun bs!58520 () Bool)

(assert (= bs!58520 (and d!179544 d!179538)))

(assert (=> bs!58520 (not (= lambda!14132 lambda!14129))))

(assert (=> d!179544 true))

(assert (=> d!179544 (< (dynLambda!2915 order!4289 lambda!14116) (dynLambda!2915 order!4289 lambda!14132))))

(declare-fun forall!1334 (List!4570 Int) Bool)

(assert (=> d!179544 (= (exists!68 lt!210305 lambda!14116) (not (forall!1334 lt!210305 lambda!14132)))))

(declare-fun bs!58521 () Bool)

(assert (= bs!58521 d!179544))

(declare-fun m!745779 () Bool)

(assert (=> bs!58521 m!745779))

(assert (=> b!472345 d!179544))

(declare-fun d!179546 () Bool)

(declare-fun e!288902 () Bool)

(assert (=> d!179546 e!288902))

(declare-fun res!209604 () Bool)

(assert (=> d!179546 (=> (not res!209604) (not e!288902))))

(declare-fun lt!210323 () List!4570)

(declare-fun noDuplicate!100 (List!4570) Bool)

(assert (=> d!179546 (= res!209604 (noDuplicate!100 lt!210323))))

(declare-fun choose!3594 ((Set A!405)) List!4570)

(assert (=> d!179546 (= lt!210323 (choose!3594 s!1493))))

(assert (=> d!179546 (= (toList!341 s!1493) lt!210323)))

(declare-fun b!472395 () Bool)

(declare-fun content!777 (List!4570) (Set A!405))

(assert (=> b!472395 (= e!288902 (= (content!777 lt!210323) s!1493))))

(assert (= (and d!179546 res!209604) b!472395))

(declare-fun m!745781 () Bool)

(assert (=> d!179546 m!745781))

(declare-fun m!745783 () Bool)

(assert (=> d!179546 m!745783))

(declare-fun m!745785 () Bool)

(assert (=> b!472395 m!745785))

(assert (=> b!472345 d!179546))

(declare-fun condSetEmpty!2027 () Bool)

(assert (=> setNonEmpty!2021 (= condSetEmpty!2027 (= setRest!2021 (as set.empty (Set A!405))))))

(declare-fun setRes!2027 () Bool)

(assert (=> setNonEmpty!2021 (= tp!130913 setRes!2027)))

(declare-fun setIsEmpty!2027 () Bool)

(assert (=> setIsEmpty!2027 setRes!2027))

(declare-fun setNonEmpty!2027 () Bool)

(declare-fun tp!130926 () Bool)

(assert (=> setNonEmpty!2027 (= setRes!2027 (and tp!130926 tp_is_empty!2189))))

(declare-fun setElem!2027 () A!405)

(declare-fun setRest!2027 () (Set A!405))

(assert (=> setNonEmpty!2027 (= setRest!2021 (set.union (set.insert setElem!2027 (as set.empty (Set A!405))) setRest!2027))))

(assert (= (and setNonEmpty!2021 condSetEmpty!2027) setIsEmpty!2027))

(assert (= (and setNonEmpty!2021 (not condSetEmpty!2027)) setNonEmpty!2027))

(declare-fun condSetEmpty!2030 () Bool)

(assert (=> tb!47049 (= condSetEmpty!2030 (= (dynLambda!2917 f!1019 (getWitness!33 lt!210305 lambda!14116)) (as set.empty (Set B!967))))))

(declare-fun setRes!2030 () Bool)

(assert (=> tb!47049 (= result!51844 setRes!2030)))

(declare-fun setIsEmpty!2030 () Bool)

(assert (=> setIsEmpty!2030 setRes!2030))

(declare-fun setNonEmpty!2030 () Bool)

(declare-fun tp!130929 () Bool)

(assert (=> setNonEmpty!2030 (= setRes!2030 (and tp!130929 tp_is_empty!2191))))

(declare-fun setRest!2030 () (Set B!967))

(declare-fun setElem!2030 () B!967)

(assert (=> setNonEmpty!2030 (= (dynLambda!2917 f!1019 (getWitness!33 lt!210305 lambda!14116)) (set.union (set.insert setElem!2030 (as set.empty (Set B!967))) setRest!2030))))

(assert (= (and tb!47049 condSetEmpty!2030) setIsEmpty!2030))

(assert (= (and tb!47049 (not condSetEmpty!2030)) setNonEmpty!2030))

(declare-fun b_lambda!19763 () Bool)

(assert (= b_lambda!19757 (or b!472347 b_lambda!19763)))

(declare-fun bs!58522 () Bool)

(declare-fun d!179548 () Bool)

(assert (= bs!58522 (and d!179548 b!472347)))

(assert (=> bs!58522 (= (dynLambda!2922 lambda!14116 (h!9957 lt!210305)) (set.member elm!3 (dynLambda!2917 f!1019 (h!9957 lt!210305))))))

(declare-fun b_lambda!19767 () Bool)

(assert (=> (not b_lambda!19767) (not bs!58522)))

(declare-fun t!73027 () Bool)

(declare-fun tb!47053 () Bool)

(assert (=> (and start!45260 (= f!1019 f!1019) t!73027) tb!47053))

(assert (=> bs!58522 t!73027))

(declare-fun result!51852 () Bool)

(declare-fun b_and!50567 () Bool)

(assert (= b_and!50559 (and (=> t!73027 result!51852) b_and!50567)))

(declare-fun m!745787 () Bool)

(assert (=> bs!58522 m!745787))

(declare-fun m!745789 () Bool)

(assert (=> bs!58522 m!745789))

(assert (=> b!472384 d!179548))

(declare-fun b_lambda!19765 () Bool)

(assert (= b_lambda!19759 (or b!472347 b_lambda!19765)))

(declare-fun bs!58523 () Bool)

(declare-fun d!179550 () Bool)

(assert (= bs!58523 (and d!179550 b!472347)))

(assert (=> bs!58523 (= (dynLambda!2922 lambda!14116 lt!210314) (set.member elm!3 (dynLambda!2917 f!1019 lt!210314)))))

(declare-fun b_lambda!19769 () Bool)

(assert (=> (not b_lambda!19769) (not bs!58523)))

(declare-fun t!73029 () Bool)

(declare-fun tb!47055 () Bool)

(assert (=> (and start!45260 (= f!1019 f!1019) t!73029) tb!47055))

(assert (=> bs!58523 t!73029))

(declare-fun result!51854 () Bool)

(declare-fun b_and!50569 () Bool)

(assert (= b_and!50567 (and (=> t!73029 result!51854) b_and!50569)))

(declare-fun m!745791 () Bool)

(assert (=> bs!58523 m!745791))

(declare-fun m!745793 () Bool)

(assert (=> bs!58523 m!745793))

(assert (=> d!179534 d!179550))

(push 1)

(assert (not b_lambda!19763))

(assert b_and!50557)

(assert (not b_lambda!19769))

(assert (not b_next!13223))

(assert (not d!179540))

(assert (not b!472385))

(assert (not tb!47053))

(assert (not b!472386))

(assert (not setNonEmpty!2027))

(assert (not b_lambda!19765))

(assert tp_is_empty!2191)

(assert (not d!179536))

(assert (not b_lambda!19755))

(assert (not b!472388))

(assert b_and!50569)

(assert (not d!179534))

(assert (not d!179544))

(assert (not d!179538))

(assert (not b!472395))

(assert (not setNonEmpty!2030))

(assert (not b_next!13221))

(assert (not tb!47055))

(assert (not d!179546))

(assert (not d!179542))

(assert tp_is_empty!2189)

(assert (not b_lambda!19767))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50569)

(assert b_and!50557)

(assert (not b_next!13221))

(assert (not b_next!13223))

(check-sat)

(pop 1)

