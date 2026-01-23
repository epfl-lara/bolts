; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!3548 () Bool)

(assert start!3548)

(declare-fun b_free!1425 () Bool)

(declare-fun b_next!1425 () Bool)

(assert (=> start!3548 (= b_free!1425 (not b_next!1425))))

(declare-fun tp!32969 () Bool)

(declare-fun b_and!1463 () Bool)

(assert (=> start!3548 (= tp!32969 b_and!1463)))

(declare-fun b_free!1427 () Bool)

(declare-fun b_next!1427 () Bool)

(assert (=> start!3548 (= b_free!1427 (not b_next!1427))))

(declare-fun tp!32968 () Bool)

(declare-fun b_and!1465 () Bool)

(assert (=> start!3548 (= tp!32968 b_and!1465)))

(assert (=> start!3548 true))

(declare-fun order!255 () Int)

(declare-fun order!253 () Int)

(declare-fun lambda!1011 () Int)

(declare-fun f!1054 () Int)

(declare-fun dynLambda!157 (Int Int) Int)

(declare-fun dynLambda!158 (Int Int) Int)

(assert (=> start!3548 (< (dynLambda!157 order!253 f!1054) (dynLambda!158 order!255 lambda!1011))))

(assert (=> start!3548 true))

(declare-fun p!1820 () Int)

(declare-fun order!257 () Int)

(declare-fun dynLambda!159 (Int Int) Int)

(assert (=> start!3548 (< (dynLambda!159 order!257 p!1820) (dynLambda!158 order!255 lambda!1011))))

(declare-fun b!49395 () Bool)

(declare-fun e!28833 () Bool)

(declare-datatypes ((B!497 0))(
  ( (B!498 (val!310 Int)) )
))
(declare-fun lt!7738 () (Set B!497))

(declare-fun forall!109 ((Set B!497) Int) Bool)

(assert (=> b!49395 (= e!28833 (forall!109 lt!7738 p!1820))))

(declare-datatypes ((List!858 0))(
  ( (Nil!852) (Cons!852 (h!6249 B!497) (t!17057 List!858)) )
))
(declare-fun lt!7739 () List!858)

(declare-fun forall!110 (List!858 Int) Bool)

(assert (=> b!49395 (forall!110 lt!7739 p!1820)))

(declare-datatypes ((A!201 0))(
  ( (A!202 (val!311 Int)) )
))
(declare-fun s!1504 () (Set A!201))

(declare-datatypes ((Unit!462 0))(
  ( (Unit!463) )
))
(declare-fun lt!7737 () Unit!462)

(declare-fun lemmaFlatMapForallToList!1 ((Set A!201) Int Int List!858) Unit!462)

(assert (=> b!49395 (= lt!7737 (lemmaFlatMapForallToList!1 s!1504 f!1054 p!1820 lt!7739))))

(declare-fun setNonEmpty!1316 () Bool)

(declare-fun setRes!1316 () Bool)

(declare-fun tp!32967 () Bool)

(declare-fun tp_is_empty!519 () Bool)

(assert (=> setNonEmpty!1316 (= setRes!1316 (and tp!32967 tp_is_empty!519))))

(declare-fun setElem!1316 () A!201)

(declare-fun setRest!1316 () (Set A!201))

(assert (=> setNonEmpty!1316 (= s!1504 (set.union (set.insert setElem!1316 (as set.empty (Set A!201))) setRest!1316))))

(declare-fun setIsEmpty!1316 () Bool)

(assert (=> setIsEmpty!1316 setRes!1316))

(declare-fun b!49394 () Bool)

(declare-fun e!28834 () Bool)

(assert (=> b!49394 (= e!28834 (not e!28833))))

(declare-fun res!32447 () Bool)

(assert (=> b!49394 (=> res!32447 e!28833)))

(declare-fun Forall!22 (Int) Bool)

(assert (=> b!49394 (= res!32447 (not (Forall!22 lambda!1011)))))

(declare-fun subseq!8 (List!858 List!858) Bool)

(assert (=> b!49394 (subseq!8 lt!7739 lt!7739)))

(declare-fun lt!7736 () Unit!462)

(declare-fun lemmaSubseqRefl!9 (List!858) Unit!462)

(assert (=> b!49394 (= lt!7736 (lemmaSubseqRefl!9 lt!7739))))

(declare-fun toList!203 ((Set B!497)) List!858)

(assert (=> b!49394 (= lt!7739 (toList!203 lt!7738))))

(declare-fun flatMap!10 ((Set A!201) Int) (Set B!497))

(assert (=> b!49394 (= lt!7738 (flatMap!10 s!1504 f!1054))))

(declare-fun res!32446 () Bool)

(assert (=> start!3548 (=> (not res!32446) (not e!28834))))

(assert (=> start!3548 (= res!32446 (Forall!22 lambda!1011))))

(assert (=> start!3548 e!28834))

(assert (=> start!3548 tp!32969))

(assert (=> start!3548 tp!32968))

(declare-fun condSetEmpty!1316 () Bool)

(assert (=> start!3548 (= condSetEmpty!1316 (= s!1504 (as set.empty (Set A!201))))))

(assert (=> start!3548 setRes!1316))

(assert (= (and start!3548 res!32446) b!49394))

(assert (= (and b!49394 (not res!32447)) b!49395))

(assert (= (and start!3548 condSetEmpty!1316) setIsEmpty!1316))

(assert (= (and start!3548 (not condSetEmpty!1316)) setNonEmpty!1316))

(declare-fun m!23230 () Bool)

(assert (=> b!49395 m!23230))

(declare-fun m!23232 () Bool)

(assert (=> b!49395 m!23232))

(declare-fun m!23234 () Bool)

(assert (=> b!49395 m!23234))

(declare-fun m!23236 () Bool)

(assert (=> b!49394 m!23236))

(declare-fun m!23238 () Bool)

(assert (=> b!49394 m!23238))

(declare-fun m!23240 () Bool)

(assert (=> b!49394 m!23240))

(declare-fun m!23242 () Bool)

(assert (=> b!49394 m!23242))

(declare-fun m!23244 () Bool)

(assert (=> b!49394 m!23244))

(assert (=> start!3548 m!23242))

(push 1)

(assert (not b_next!1425))

(assert (not b!49395))

(assert (not setNonEmpty!1316))

(assert b_and!1463)

(assert b_and!1465)

(assert (not b!49394))

(assert (not b_next!1427))

(assert (not start!3548))

(assert tp_is_empty!519)

(check-sat)

(pop 1)

(push 1)

(assert b_and!1463)

(assert b_and!1465)

(assert (not b_next!1425))

(assert (not b_next!1427))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6012 () Bool)

(declare-fun choose!1172 (Int) Bool)

(assert (=> d!6012 (= (Forall!22 lambda!1011) (choose!1172 lambda!1011))))

(declare-fun bs!6601 () Bool)

(assert (= bs!6601 d!6012))

(declare-fun m!23262 () Bool)

(assert (=> bs!6601 m!23262))

(assert (=> start!3548 d!6012))

(declare-fun d!6014 () Bool)

(declare-fun lt!7754 () Bool)

(assert (=> d!6014 (= lt!7754 (forall!110 (toList!203 lt!7738) p!1820))))

(declare-fun choose!1173 ((Set B!497) Int) Bool)

(assert (=> d!6014 (= lt!7754 (choose!1173 lt!7738 p!1820))))

(assert (=> d!6014 (= (forall!109 lt!7738 p!1820) lt!7754)))

(declare-fun bs!6602 () Bool)

(assert (= bs!6602 d!6014))

(assert (=> bs!6602 m!23238))

(assert (=> bs!6602 m!23238))

(declare-fun m!23264 () Bool)

(assert (=> bs!6602 m!23264))

(declare-fun m!23266 () Bool)

(assert (=> bs!6602 m!23266))

(assert (=> b!49395 d!6014))

(declare-fun d!6016 () Bool)

(declare-fun res!32458 () Bool)

(declare-fun e!28845 () Bool)

(assert (=> d!6016 (=> res!32458 e!28845)))

(assert (=> d!6016 (= res!32458 (is-Nil!852 lt!7739))))

(assert (=> d!6016 (= (forall!110 lt!7739 p!1820) e!28845)))

(declare-fun b!49414 () Bool)

(declare-fun e!28846 () Bool)

(assert (=> b!49414 (= e!28845 e!28846)))

(declare-fun res!32459 () Bool)

(assert (=> b!49414 (=> (not res!32459) (not e!28846))))

(declare-fun dynLambda!163 (Int B!497) Bool)

(assert (=> b!49414 (= res!32459 (dynLambda!163 p!1820 (h!6249 lt!7739)))))

(declare-fun b!49415 () Bool)

(assert (=> b!49415 (= e!28846 (forall!110 (t!17057 lt!7739) p!1820))))

(assert (= (and d!6016 (not res!32458)) b!49414))

(assert (= (and b!49414 res!32459) b!49415))

(declare-fun b_lambda!297 () Bool)

(assert (=> (not b_lambda!297) (not b!49414)))

(declare-fun t!17060 () Bool)

(declare-fun tb!39 () Bool)

(assert (=> (and start!3548 (= p!1820 p!1820) t!17060) tb!39))

(declare-fun result!772 () Bool)

(assert (=> tb!39 (= result!772 true)))

(assert (=> b!49414 t!17060))

(declare-fun b_and!1471 () Bool)

(assert (= b_and!1465 (and (=> t!17060 result!772) b_and!1471)))

(declare-fun m!23268 () Bool)

(assert (=> b!49414 m!23268))

(declare-fun m!23270 () Bool)

(assert (=> b!49415 m!23270))

(assert (=> b!49395 d!6016))

(declare-fun bs!6603 () Bool)

(declare-fun d!6018 () Bool)

(assert (= bs!6603 (and d!6018 start!3548)))

(declare-fun lambda!1019 () Int)

(assert (=> bs!6603 (= lambda!1019 lambda!1011)))

(assert (=> d!6018 true))

(assert (=> d!6018 (< (dynLambda!157 order!253 f!1054) (dynLambda!158 order!255 lambda!1019))))

(assert (=> d!6018 true))

(assert (=> d!6018 (< (dynLambda!159 order!257 p!1820) (dynLambda!158 order!255 lambda!1019))))

(assert (=> d!6018 (forall!110 lt!7739 p!1820)))

(declare-fun lt!7757 () Unit!462)

(declare-fun choose!1174 ((Set A!201) Int Int List!858) Unit!462)

(assert (=> d!6018 (= lt!7757 (choose!1174 s!1504 f!1054 p!1820 lt!7739))))

(assert (=> d!6018 (Forall!22 lambda!1019)))

(assert (=> d!6018 (= (lemmaFlatMapForallToList!1 s!1504 f!1054 p!1820 lt!7739) lt!7757)))

(declare-fun bs!6604 () Bool)

(assert (= bs!6604 d!6018))

(assert (=> bs!6604 m!23232))

(declare-fun m!23272 () Bool)

(assert (=> bs!6604 m!23272))

(declare-fun m!23274 () Bool)

(assert (=> bs!6604 m!23274))

(assert (=> b!49395 d!6018))

(declare-fun d!6020 () Bool)

(declare-fun choose!1175 ((Set A!201) Int) (Set B!497))

(assert (=> d!6020 (= (flatMap!10 s!1504 f!1054) (choose!1175 s!1504 f!1054))))

(declare-fun bs!6605 () Bool)

(assert (= bs!6605 d!6020))

(declare-fun m!23276 () Bool)

(assert (=> bs!6605 m!23276))

(assert (=> b!49394 d!6020))

(declare-fun d!6022 () Bool)

(declare-fun e!28849 () Bool)

(assert (=> d!6022 e!28849))

(declare-fun res!32462 () Bool)

(assert (=> d!6022 (=> (not res!32462) (not e!28849))))

(declare-fun lt!7760 () List!858)

(declare-fun noDuplicate!3 (List!858) Bool)

(assert (=> d!6022 (= res!32462 (noDuplicate!3 lt!7760))))

(declare-fun choose!1176 ((Set B!497)) List!858)

(assert (=> d!6022 (= lt!7760 (choose!1176 lt!7738))))

(assert (=> d!6022 (= (toList!203 lt!7738) lt!7760)))

(declare-fun b!49418 () Bool)

(declare-fun content!24 (List!858) (Set B!497))

(assert (=> b!49418 (= e!28849 (= (content!24 lt!7760) lt!7738))))

(assert (= (and d!6022 res!32462) b!49418))

(declare-fun m!23278 () Bool)

(assert (=> d!6022 m!23278))

(declare-fun m!23280 () Bool)

(assert (=> d!6022 m!23280))

(declare-fun m!23282 () Bool)

(assert (=> b!49418 m!23282))

(assert (=> b!49394 d!6022))

(declare-fun b!49427 () Bool)

(declare-fun e!28859 () Bool)

(declare-fun e!28861 () Bool)

(assert (=> b!49427 (= e!28859 e!28861)))

(declare-fun res!32473 () Bool)

(assert (=> b!49427 (=> (not res!32473) (not e!28861))))

(assert (=> b!49427 (= res!32473 (is-Cons!852 lt!7739))))

(declare-fun d!6024 () Bool)

(declare-fun res!32474 () Bool)

(assert (=> d!6024 (=> res!32474 e!28859)))

(assert (=> d!6024 (= res!32474 (is-Nil!852 lt!7739))))

(assert (=> d!6024 (= (subseq!8 lt!7739 lt!7739) e!28859)))

(declare-fun b!49429 () Bool)

(declare-fun e!28858 () Bool)

(assert (=> b!49429 (= e!28858 (subseq!8 (t!17057 lt!7739) (t!17057 lt!7739)))))

(declare-fun b!49430 () Bool)

(declare-fun e!28860 () Bool)

(assert (=> b!49430 (= e!28860 (subseq!8 lt!7739 (t!17057 lt!7739)))))

(declare-fun b!49428 () Bool)

(assert (=> b!49428 (= e!28861 e!28860)))

(declare-fun res!32471 () Bool)

(assert (=> b!49428 (=> res!32471 e!28860)))

(assert (=> b!49428 (= res!32471 e!28858)))

(declare-fun res!32472 () Bool)

(assert (=> b!49428 (=> (not res!32472) (not e!28858))))

(assert (=> b!49428 (= res!32472 (= (h!6249 lt!7739) (h!6249 lt!7739)))))

(assert (= (and d!6024 (not res!32474)) b!49427))

(assert (= (and b!49427 res!32473) b!49428))

(assert (= (and b!49428 res!32472) b!49429))

(assert (= (and b!49428 (not res!32471)) b!49430))

(declare-fun m!23284 () Bool)

(assert (=> b!49429 m!23284))

(declare-fun m!23286 () Bool)

(assert (=> b!49430 m!23286))

(assert (=> b!49394 d!6024))

(assert (=> b!49394 d!6012))

(declare-fun d!6026 () Bool)

(assert (=> d!6026 (subseq!8 lt!7739 lt!7739)))

(declare-fun lt!7763 () Unit!462)

(declare-fun choose!1177 (List!858) Unit!462)

(assert (=> d!6026 (= lt!7763 (choose!1177 lt!7739))))

(assert (=> d!6026 (= (lemmaSubseqRefl!9 lt!7739) lt!7763)))

(declare-fun bs!6606 () Bool)

(assert (= bs!6606 d!6026))

(assert (=> bs!6606 m!23244))

(declare-fun m!23288 () Bool)

(assert (=> bs!6606 m!23288))

(assert (=> b!49394 d!6026))

(declare-fun condSetEmpty!1322 () Bool)

(assert (=> setNonEmpty!1316 (= condSetEmpty!1322 (= setRest!1316 (as set.empty (Set A!201))))))

(declare-fun setRes!1322 () Bool)

(assert (=> setNonEmpty!1316 (= tp!32967 setRes!1322)))

(declare-fun setIsEmpty!1322 () Bool)

(assert (=> setIsEmpty!1322 setRes!1322))

(declare-fun setNonEmpty!1322 () Bool)

(declare-fun tp!32981 () Bool)

(assert (=> setNonEmpty!1322 (= setRes!1322 (and tp!32981 tp_is_empty!519))))

(declare-fun setElem!1322 () A!201)

(declare-fun setRest!1322 () (Set A!201))

(assert (=> setNonEmpty!1322 (= setRest!1316 (set.union (set.insert setElem!1322 (as set.empty (Set A!201))) setRest!1322))))

(assert (= (and setNonEmpty!1316 condSetEmpty!1322) setIsEmpty!1322))

(assert (= (and setNonEmpty!1316 (not condSetEmpty!1322)) setNonEmpty!1322))

(declare-fun b_lambda!299 () Bool)

(assert (= b_lambda!297 (or (and start!3548 b_free!1427) b_lambda!299)))

(push 1)

(assert (not d!6026))

(assert b_and!1463)

(assert (not b_lambda!299))

(assert (not d!6014))

(assert (not b!49418))

(assert (not d!6022))

(assert (not b_next!1427))

(assert (not b!49430))

(assert (not b_next!1425))

(assert (not d!6012))

(assert (not b!49429))

(assert b_and!1471)

(assert (not setNonEmpty!1322))

(assert (not d!6018))

(assert (not d!6020))

(assert (not b!49415))

(assert tp_is_empty!519)

(check-sat)

(pop 1)

(push 1)

(assert b_and!1463)

(assert b_and!1471)

(assert (not b_next!1425))

(assert (not b_next!1427))

(check-sat)

(pop 1)

