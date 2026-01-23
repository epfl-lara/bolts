; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!431164 () Bool)

(assert start!431164)

(declare-fun b!4422429 () Bool)

(declare-datatypes ((Unit!81469 0))(
  ( (Unit!81470) )
))
(declare-fun e!2753583 () Unit!81469)

(declare-fun Unit!81471 () Unit!81469)

(assert (=> b!4422429 (= e!2753583 Unit!81471)))

(declare-fun lt!1622120 () Unit!81469)

(declare-datatypes ((K!10925 0))(
  ( (K!10926 (val!17011 Int)) )
))
(declare-fun key!3717 () K!10925)

(declare-datatypes ((V!11171 0))(
  ( (V!11172 (val!17012 Int)) )
))
(declare-datatypes ((tuple2!49342 0))(
  ( (tuple2!49343 (_1!27965 K!10925) (_2!27965 V!11171)) )
))
(declare-datatypes ((List!49684 0))(
  ( (Nil!49560) (Cons!49560 (h!55239 tuple2!49342) (t!356622 List!49684)) )
))
(declare-datatypes ((tuple2!49344 0))(
  ( (tuple2!49345 (_1!27966 (_ BitVec 64)) (_2!27966 List!49684)) )
))
(declare-datatypes ((List!49685 0))(
  ( (Nil!49561) (Cons!49561 (h!55240 tuple2!49344) (t!356623 List!49685)) )
))
(declare-datatypes ((ListLongMap!2119 0))(
  ( (ListLongMap!2120 (toList!3469 List!49685)) )
))
(declare-fun lm!1616 () ListLongMap!2119)

(declare-datatypes ((Hashable!5135 0))(
  ( (HashableExt!5134 (__x!30838 Int)) )
))
(declare-fun hashF!1220 () Hashable!5135)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!28 (ListLongMap!2119 K!10925 Hashable!5135) Unit!81469)

(assert (=> b!4422429 (= lt!1622120 (lemmaExtractTailMapContainsThenExtractMapDoes!28 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4422429 false))

(declare-fun res!1827957 () Bool)

(declare-fun e!2753578 () Bool)

(assert (=> start!431164 (=> (not res!1827957) (not e!2753578))))

(declare-fun lambda!153264 () Int)

(declare-fun forall!9544 (List!49685 Int) Bool)

(assert (=> start!431164 (= res!1827957 (forall!9544 (toList!3469 lm!1616) lambda!153264))))

(assert (=> start!431164 e!2753578))

(declare-fun tp_is_empty!26209 () Bool)

(assert (=> start!431164 tp_is_empty!26209))

(declare-fun tp_is_empty!26211 () Bool)

(assert (=> start!431164 tp_is_empty!26211))

(declare-fun e!2753579 () Bool)

(assert (=> start!431164 e!2753579))

(declare-fun e!2753582 () Bool)

(declare-fun inv!65111 (ListLongMap!2119) Bool)

(assert (=> start!431164 (and (inv!65111 lm!1616) e!2753582)))

(assert (=> start!431164 true))

(declare-fun b!4422430 () Bool)

(declare-fun tp!1333075 () Bool)

(assert (=> b!4422430 (= e!2753582 tp!1333075)))

(declare-fun b!4422431 () Bool)

(declare-fun res!1827955 () Bool)

(declare-fun e!2753584 () Bool)

(assert (=> b!4422431 (=> res!1827955 e!2753584)))

(declare-fun hash!366 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4422431 (= res!1827955 (or (and ((_ is Cons!49561) (toList!3469 lm!1616)) (= (_1!27966 (h!55240 (toList!3469 lm!1616))) hash!366)) (not ((_ is Cons!49561) (toList!3469 lm!1616))) (= (_1!27966 (h!55240 (toList!3469 lm!1616))) hash!366)))))

(declare-fun b!4422432 () Bool)

(declare-fun newValue!93 () V!11171)

(declare-fun e!2753574 () Bool)

(declare-fun newBucket!194 () List!49684)

(declare-fun apply!11593 (ListLongMap!2119 (_ BitVec 64)) List!49684)

(assert (=> b!4422432 (= e!2753574 (= newBucket!194 (Cons!49560 (tuple2!49343 key!3717 newValue!93) (apply!11593 lm!1616 hash!366))))))

(declare-fun b!4422433 () Bool)

(declare-fun res!1827946 () Bool)

(assert (=> b!4422433 (=> (not res!1827946) (not e!2753578))))

(declare-fun hash!2088 (Hashable!5135 K!10925) (_ BitVec 64))

(assert (=> b!4422433 (= res!1827946 (= (hash!2088 hashF!1220 key!3717) hash!366))))

(declare-fun b!4422434 () Bool)

(declare-fun res!1827959 () Bool)

(declare-fun e!2753577 () Bool)

(assert (=> b!4422434 (=> (not res!1827959) (not e!2753577))))

(declare-fun noDuplicateKeys!741 (List!49684) Bool)

(assert (=> b!4422434 (= res!1827959 (noDuplicateKeys!741 newBucket!194))))

(declare-fun b!4422435 () Bool)

(declare-fun e!2753581 () Bool)

(assert (=> b!4422435 (= e!2753581 e!2753577)))

(declare-fun res!1827950 () Bool)

(assert (=> b!4422435 (=> (not res!1827950) (not e!2753577))))

(declare-fun e!2753575 () Bool)

(assert (=> b!4422435 (= res!1827950 e!2753575)))

(declare-fun res!1827948 () Bool)

(assert (=> b!4422435 (=> res!1827948 e!2753575)))

(assert (=> b!4422435 (= res!1827948 e!2753574)))

(declare-fun res!1827954 () Bool)

(assert (=> b!4422435 (=> (not res!1827954) (not e!2753574))))

(declare-fun lt!1622126 () Bool)

(assert (=> b!4422435 (= res!1827954 lt!1622126)))

(declare-fun contains!12049 (ListLongMap!2119 (_ BitVec 64)) Bool)

(assert (=> b!4422435 (= lt!1622126 (contains!12049 lm!1616 hash!366))))

(declare-fun b!4422436 () Bool)

(declare-fun res!1827951 () Bool)

(declare-fun e!2753576 () Bool)

(assert (=> b!4422436 (=> res!1827951 e!2753576)))

(declare-datatypes ((ListMap!2713 0))(
  ( (ListMap!2714 (toList!3470 List!49684)) )
))
(declare-fun lt!1622116 () ListMap!2713)

(declare-fun lt!1622127 () ListMap!2713)

(declare-fun eq!399 (ListMap!2713 ListMap!2713) Bool)

(declare-fun addToMapMapFromBucket!378 (List!49684 ListMap!2713) ListMap!2713)

(assert (=> b!4422436 (= res!1827951 (not (eq!399 lt!1622127 (addToMapMapFromBucket!378 (_2!27966 (h!55240 (toList!3469 lm!1616))) lt!1622116))))))

(declare-fun b!4422437 () Bool)

(assert (=> b!4422437 (= e!2753575 (and (not lt!1622126) (= newBucket!194 (Cons!49560 (tuple2!49343 key!3717 newValue!93) Nil!49560))))))

(declare-fun b!4422438 () Bool)

(declare-fun res!1827953 () Bool)

(assert (=> b!4422438 (=> (not res!1827953) (not e!2753577))))

(assert (=> b!4422438 (= res!1827953 (forall!9544 (toList!3469 lm!1616) lambda!153264))))

(declare-fun b!4422439 () Bool)

(assert (=> b!4422439 (= e!2753584 e!2753576)))

(declare-fun res!1827947 () Bool)

(assert (=> b!4422439 (=> res!1827947 e!2753576)))

(declare-fun lt!1622124 () tuple2!49344)

(declare-fun head!9202 (ListLongMap!2119) tuple2!49344)

(assert (=> b!4422439 (= res!1827947 (= (head!9202 lm!1616) lt!1622124))))

(declare-fun lt!1622123 () ListMap!2713)

(declare-fun +!1066 (ListMap!2713 tuple2!49342) ListMap!2713)

(assert (=> b!4422439 (eq!399 lt!1622123 (+!1066 lt!1622116 (tuple2!49343 key!3717 newValue!93)))))

(declare-fun lt!1622117 () ListLongMap!2119)

(declare-fun extractMap!802 (List!49685) ListMap!2713)

(assert (=> b!4422439 (= lt!1622116 (extractMap!802 (toList!3469 lt!1622117)))))

(declare-fun +!1067 (ListLongMap!2119 tuple2!49344) ListLongMap!2119)

(assert (=> b!4422439 (= lt!1622123 (extractMap!802 (toList!3469 (+!1067 lt!1622117 lt!1622124))))))

(declare-fun lt!1622119 () Unit!81469)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!115 (ListLongMap!2119 (_ BitVec 64) List!49684 K!10925 V!11171 Hashable!5135) Unit!81469)

(assert (=> b!4422439 (= lt!1622119 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!115 lt!1622117 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7254 (ListLongMap!2119) ListLongMap!2119)

(assert (=> b!4422439 (= lt!1622117 (tail!7254 lm!1616))))

(declare-fun lt!1622121 () Unit!81469)

(assert (=> b!4422439 (= lt!1622121 e!2753583)))

(declare-fun c!752745 () Bool)

(declare-fun contains!12050 (ListMap!2713 K!10925) Bool)

(declare-fun tail!7255 (List!49685) List!49685)

(assert (=> b!4422439 (= c!752745 (contains!12050 (extractMap!802 (tail!7255 (toList!3469 lm!1616))) key!3717))))

(declare-fun b!4422440 () Bool)

(declare-fun e!2753580 () Bool)

(declare-fun isEmpty!28333 (ListLongMap!2119) Bool)

(assert (=> b!4422440 (= e!2753580 (not (isEmpty!28333 lm!1616)))))

(declare-fun b!4422441 () Bool)

(assert (=> b!4422441 (= e!2753578 e!2753581)))

(declare-fun res!1827958 () Bool)

(assert (=> b!4422441 (=> (not res!1827958) (not e!2753581))))

(assert (=> b!4422441 (= res!1827958 (not (contains!12050 lt!1622127 key!3717)))))

(assert (=> b!4422441 (= lt!1622127 (extractMap!802 (toList!3469 lm!1616)))))

(declare-fun b!4422442 () Bool)

(assert (=> b!4422442 (= e!2753576 e!2753580)))

(declare-fun res!1827949 () Bool)

(assert (=> b!4422442 (=> res!1827949 e!2753580)))

(declare-fun containsKey!1093 (List!49684 K!10925) Bool)

(assert (=> b!4422442 (= res!1827949 (containsKey!1093 (_2!27966 (h!55240 (toList!3469 lm!1616))) key!3717))))

(assert (=> b!4422442 (not (containsKey!1093 (apply!11593 lm!1616 (_1!27966 (h!55240 (toList!3469 lm!1616)))) key!3717))))

(declare-fun lt!1622118 () Unit!81469)

(declare-fun lemmaNotSameHashThenCannotContainKey!120 (ListLongMap!2119 K!10925 (_ BitVec 64) Hashable!5135) Unit!81469)

(assert (=> b!4422442 (= lt!1622118 (lemmaNotSameHashThenCannotContainKey!120 lm!1616 key!3717 (_1!27966 (h!55240 (toList!3469 lm!1616))) hashF!1220))))

(declare-fun b!4422443 () Bool)

(declare-fun res!1827956 () Bool)

(assert (=> b!4422443 (=> (not res!1827956) (not e!2753578))))

(declare-fun allKeysSameHash!701 (List!49684 (_ BitVec 64) Hashable!5135) Bool)

(assert (=> b!4422443 (= res!1827956 (allKeysSameHash!701 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4422444 () Bool)

(declare-fun res!1827945 () Bool)

(assert (=> b!4422444 (=> (not res!1827945) (not e!2753578))))

(declare-fun allKeysSameHashInMap!847 (ListLongMap!2119 Hashable!5135) Bool)

(assert (=> b!4422444 (= res!1827945 (allKeysSameHashInMap!847 lm!1616 hashF!1220))))

(declare-fun b!4422445 () Bool)

(declare-fun Unit!81472 () Unit!81469)

(assert (=> b!4422445 (= e!2753583 Unit!81472)))

(declare-fun b!4422446 () Bool)

(declare-fun tp!1333076 () Bool)

(assert (=> b!4422446 (= e!2753579 (and tp_is_empty!26211 tp_is_empty!26209 tp!1333076))))

(declare-fun b!4422447 () Bool)

(assert (=> b!4422447 (= e!2753577 (not e!2753584))))

(declare-fun res!1827952 () Bool)

(assert (=> b!4422447 (=> res!1827952 e!2753584)))

(declare-fun lt!1622125 () ListLongMap!2119)

(assert (=> b!4422447 (= res!1827952 (not (forall!9544 (toList!3469 lt!1622125) lambda!153264)))))

(assert (=> b!4422447 (forall!9544 (toList!3469 lt!1622125) lambda!153264)))

(assert (=> b!4422447 (= lt!1622125 (+!1067 lm!1616 lt!1622124))))

(assert (=> b!4422447 (= lt!1622124 (tuple2!49345 hash!366 newBucket!194))))

(declare-fun lt!1622122 () Unit!81469)

(declare-fun addValidProp!385 (ListLongMap!2119 Int (_ BitVec 64) List!49684) Unit!81469)

(assert (=> b!4422447 (= lt!1622122 (addValidProp!385 lm!1616 lambda!153264 hash!366 newBucket!194))))

(assert (= (and start!431164 res!1827957) b!4422444))

(assert (= (and b!4422444 res!1827945) b!4422433))

(assert (= (and b!4422433 res!1827946) b!4422443))

(assert (= (and b!4422443 res!1827956) b!4422441))

(assert (= (and b!4422441 res!1827958) b!4422435))

(assert (= (and b!4422435 res!1827954) b!4422432))

(assert (= (and b!4422435 (not res!1827948)) b!4422437))

(assert (= (and b!4422435 res!1827950) b!4422434))

(assert (= (and b!4422434 res!1827959) b!4422438))

(assert (= (and b!4422438 res!1827953) b!4422447))

(assert (= (and b!4422447 (not res!1827952)) b!4422431))

(assert (= (and b!4422431 (not res!1827955)) b!4422439))

(assert (= (and b!4422439 c!752745) b!4422429))

(assert (= (and b!4422439 (not c!752745)) b!4422445))

(assert (= (and b!4422439 (not res!1827947)) b!4422436))

(assert (= (and b!4422436 (not res!1827951)) b!4422442))

(assert (= (and b!4422442 (not res!1827949)) b!4422440))

(assert (= (and start!431164 ((_ is Cons!49560) newBucket!194)) b!4422446))

(assert (= start!431164 b!4422430))

(declare-fun m!5100483 () Bool)

(assert (=> b!4422434 m!5100483))

(declare-fun m!5100485 () Bool)

(assert (=> b!4422443 m!5100485))

(declare-fun m!5100487 () Bool)

(assert (=> b!4422447 m!5100487))

(assert (=> b!4422447 m!5100487))

(declare-fun m!5100489 () Bool)

(assert (=> b!4422447 m!5100489))

(declare-fun m!5100491 () Bool)

(assert (=> b!4422447 m!5100491))

(declare-fun m!5100493 () Bool)

(assert (=> b!4422439 m!5100493))

(declare-fun m!5100495 () Bool)

(assert (=> b!4422439 m!5100495))

(declare-fun m!5100497 () Bool)

(assert (=> b!4422439 m!5100497))

(declare-fun m!5100499 () Bool)

(assert (=> b!4422439 m!5100499))

(declare-fun m!5100501 () Bool)

(assert (=> b!4422439 m!5100501))

(assert (=> b!4422439 m!5100497))

(declare-fun m!5100503 () Bool)

(assert (=> b!4422439 m!5100503))

(declare-fun m!5100505 () Bool)

(assert (=> b!4422439 m!5100505))

(assert (=> b!4422439 m!5100493))

(declare-fun m!5100507 () Bool)

(assert (=> b!4422439 m!5100507))

(assert (=> b!4422439 m!5100495))

(declare-fun m!5100509 () Bool)

(assert (=> b!4422439 m!5100509))

(declare-fun m!5100511 () Bool)

(assert (=> b!4422439 m!5100511))

(declare-fun m!5100513 () Bool)

(assert (=> b!4422439 m!5100513))

(declare-fun m!5100515 () Bool)

(assert (=> b!4422442 m!5100515))

(declare-fun m!5100517 () Bool)

(assert (=> b!4422442 m!5100517))

(assert (=> b!4422442 m!5100517))

(declare-fun m!5100519 () Bool)

(assert (=> b!4422442 m!5100519))

(declare-fun m!5100521 () Bool)

(assert (=> b!4422442 m!5100521))

(declare-fun m!5100523 () Bool)

(assert (=> b!4422435 m!5100523))

(declare-fun m!5100525 () Bool)

(assert (=> b!4422433 m!5100525))

(declare-fun m!5100527 () Bool)

(assert (=> b!4422436 m!5100527))

(assert (=> b!4422436 m!5100527))

(declare-fun m!5100529 () Bool)

(assert (=> b!4422436 m!5100529))

(declare-fun m!5100531 () Bool)

(assert (=> b!4422441 m!5100531))

(declare-fun m!5100533 () Bool)

(assert (=> b!4422441 m!5100533))

(declare-fun m!5100535 () Bool)

(assert (=> b!4422429 m!5100535))

(declare-fun m!5100537 () Bool)

(assert (=> b!4422444 m!5100537))

(declare-fun m!5100539 () Bool)

(assert (=> b!4422432 m!5100539))

(declare-fun m!5100541 () Bool)

(assert (=> b!4422440 m!5100541))

(declare-fun m!5100543 () Bool)

(assert (=> b!4422438 m!5100543))

(assert (=> start!431164 m!5100543))

(declare-fun m!5100545 () Bool)

(assert (=> start!431164 m!5100545))

(check-sat (not b!4422447) (not b!4422435) (not b!4422434) (not b!4422438) (not b!4422439) (not b!4422441) (not start!431164) (not b!4422432) (not b!4422446) (not b!4422443) (not b!4422440) (not b!4422433) (not b!4422430) (not b!4422436) tp_is_empty!26211 (not b!4422444) (not b!4422442) tp_is_empty!26209 (not b!4422429))
(check-sat)
(get-model)

(declare-fun d!1340015 () Bool)

(declare-fun res!1827976 () Bool)

(declare-fun e!2753598 () Bool)

(assert (=> d!1340015 (=> res!1827976 e!2753598)))

(assert (=> d!1340015 (= res!1827976 (not ((_ is Cons!49560) newBucket!194)))))

(assert (=> d!1340015 (= (noDuplicateKeys!741 newBucket!194) e!2753598)))

(declare-fun b!4422464 () Bool)

(declare-fun e!2753599 () Bool)

(assert (=> b!4422464 (= e!2753598 e!2753599)))

(declare-fun res!1827977 () Bool)

(assert (=> b!4422464 (=> (not res!1827977) (not e!2753599))))

(assert (=> b!4422464 (= res!1827977 (not (containsKey!1093 (t!356622 newBucket!194) (_1!27965 (h!55239 newBucket!194)))))))

(declare-fun b!4422465 () Bool)

(assert (=> b!4422465 (= e!2753599 (noDuplicateKeys!741 (t!356622 newBucket!194)))))

(assert (= (and d!1340015 (not res!1827976)) b!4422464))

(assert (= (and b!4422464 res!1827977) b!4422465))

(declare-fun m!5100565 () Bool)

(assert (=> b!4422464 m!5100565))

(declare-fun m!5100567 () Bool)

(assert (=> b!4422465 m!5100567))

(assert (=> b!4422434 d!1340015))

(declare-fun bs!755226 () Bool)

(declare-fun d!1340017 () Bool)

(assert (= bs!755226 (and d!1340017 start!431164)))

(declare-fun lambda!153267 () Int)

(assert (=> bs!755226 (not (= lambda!153267 lambda!153264))))

(assert (=> d!1340017 true))

(assert (=> d!1340017 (= (allKeysSameHashInMap!847 lm!1616 hashF!1220) (forall!9544 (toList!3469 lm!1616) lambda!153267))))

(declare-fun bs!755227 () Bool)

(assert (= bs!755227 d!1340017))

(declare-fun m!5100569 () Bool)

(assert (=> bs!755227 m!5100569))

(assert (=> b!4422444 d!1340017))

(declare-fun d!1340019 () Bool)

(declare-fun res!1827988 () Bool)

(declare-fun e!2753607 () Bool)

(assert (=> d!1340019 (=> res!1827988 e!2753607)))

(assert (=> d!1340019 (= res!1827988 ((_ is Nil!49561) (toList!3469 lm!1616)))))

(assert (=> d!1340019 (= (forall!9544 (toList!3469 lm!1616) lambda!153264) e!2753607)))

(declare-fun b!4422478 () Bool)

(declare-fun e!2753608 () Bool)

(assert (=> b!4422478 (= e!2753607 e!2753608)))

(declare-fun res!1827989 () Bool)

(assert (=> b!4422478 (=> (not res!1827989) (not e!2753608))))

(declare-fun dynLambda!20836 (Int tuple2!49344) Bool)

(assert (=> b!4422478 (= res!1827989 (dynLambda!20836 lambda!153264 (h!55240 (toList!3469 lm!1616))))))

(declare-fun b!4422479 () Bool)

(assert (=> b!4422479 (= e!2753608 (forall!9544 (t!356623 (toList!3469 lm!1616)) lambda!153264))))

(assert (= (and d!1340019 (not res!1827988)) b!4422478))

(assert (= (and b!4422478 res!1827989) b!4422479))

(declare-fun b_lambda!142697 () Bool)

(assert (=> (not b_lambda!142697) (not b!4422478)))

(declare-fun m!5100583 () Bool)

(assert (=> b!4422478 m!5100583))

(declare-fun m!5100585 () Bool)

(assert (=> b!4422479 m!5100585))

(assert (=> start!431164 d!1340019))

(declare-fun d!1340023 () Bool)

(declare-fun isStrictlySorted!226 (List!49685) Bool)

(assert (=> d!1340023 (= (inv!65111 lm!1616) (isStrictlySorted!226 (toList!3469 lm!1616)))))

(declare-fun bs!755228 () Bool)

(assert (= bs!755228 d!1340023))

(declare-fun m!5100587 () Bool)

(assert (=> bs!755228 m!5100587))

(assert (=> start!431164 d!1340023))

(declare-fun d!1340025 () Bool)

(declare-fun e!2753613 () Bool)

(assert (=> d!1340025 e!2753613))

(declare-fun res!1827992 () Bool)

(assert (=> d!1340025 (=> res!1827992 e!2753613)))

(declare-fun lt!1622163 () Bool)

(assert (=> d!1340025 (= res!1827992 (not lt!1622163))))

(declare-fun lt!1622160 () Bool)

(assert (=> d!1340025 (= lt!1622163 lt!1622160)))

(declare-fun lt!1622162 () Unit!81469)

(declare-fun e!2753614 () Unit!81469)

(assert (=> d!1340025 (= lt!1622162 e!2753614)))

(declare-fun c!752748 () Bool)

(assert (=> d!1340025 (= c!752748 lt!1622160)))

(declare-fun containsKey!1094 (List!49685 (_ BitVec 64)) Bool)

(assert (=> d!1340025 (= lt!1622160 (containsKey!1094 (toList!3469 lm!1616) hash!366))))

(assert (=> d!1340025 (= (contains!12049 lm!1616 hash!366) lt!1622163)))

(declare-fun b!4422486 () Bool)

(declare-fun lt!1622161 () Unit!81469)

(assert (=> b!4422486 (= e!2753614 lt!1622161)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!607 (List!49685 (_ BitVec 64)) Unit!81469)

(assert (=> b!4422486 (= lt!1622161 (lemmaContainsKeyImpliesGetValueByKeyDefined!607 (toList!3469 lm!1616) hash!366))))

(declare-datatypes ((Option!10713 0))(
  ( (None!10712) (Some!10712 (v!43888 List!49684)) )
))
(declare-fun isDefined!8004 (Option!10713) Bool)

(declare-fun getValueByKey!699 (List!49685 (_ BitVec 64)) Option!10713)

(assert (=> b!4422486 (isDefined!8004 (getValueByKey!699 (toList!3469 lm!1616) hash!366))))

(declare-fun b!4422487 () Bool)

(declare-fun Unit!81474 () Unit!81469)

(assert (=> b!4422487 (= e!2753614 Unit!81474)))

(declare-fun b!4422488 () Bool)

(assert (=> b!4422488 (= e!2753613 (isDefined!8004 (getValueByKey!699 (toList!3469 lm!1616) hash!366)))))

(assert (= (and d!1340025 c!752748) b!4422486))

(assert (= (and d!1340025 (not c!752748)) b!4422487))

(assert (= (and d!1340025 (not res!1827992)) b!4422488))

(declare-fun m!5100589 () Bool)

(assert (=> d!1340025 m!5100589))

(declare-fun m!5100591 () Bool)

(assert (=> b!4422486 m!5100591))

(declare-fun m!5100593 () Bool)

(assert (=> b!4422486 m!5100593))

(assert (=> b!4422486 m!5100593))

(declare-fun m!5100595 () Bool)

(assert (=> b!4422486 m!5100595))

(assert (=> b!4422488 m!5100593))

(assert (=> b!4422488 m!5100593))

(assert (=> b!4422488 m!5100595))

(assert (=> b!4422435 d!1340025))

(declare-fun d!1340027 () Bool)

(declare-fun res!1827997 () Bool)

(declare-fun e!2753619 () Bool)

(assert (=> d!1340027 (=> res!1827997 e!2753619)))

(assert (=> d!1340027 (= res!1827997 (and ((_ is Cons!49560) (_2!27966 (h!55240 (toList!3469 lm!1616)))) (= (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) key!3717)))))

(assert (=> d!1340027 (= (containsKey!1093 (_2!27966 (h!55240 (toList!3469 lm!1616))) key!3717) e!2753619)))

(declare-fun b!4422493 () Bool)

(declare-fun e!2753620 () Bool)

(assert (=> b!4422493 (= e!2753619 e!2753620)))

(declare-fun res!1827998 () Bool)

(assert (=> b!4422493 (=> (not res!1827998) (not e!2753620))))

(assert (=> b!4422493 (= res!1827998 ((_ is Cons!49560) (_2!27966 (h!55240 (toList!3469 lm!1616)))))))

(declare-fun b!4422494 () Bool)

(assert (=> b!4422494 (= e!2753620 (containsKey!1093 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616)))) key!3717))))

(assert (= (and d!1340027 (not res!1827997)) b!4422493))

(assert (= (and b!4422493 res!1827998) b!4422494))

(declare-fun m!5100597 () Bool)

(assert (=> b!4422494 m!5100597))

(assert (=> b!4422442 d!1340027))

(declare-fun d!1340029 () Bool)

(declare-fun res!1827999 () Bool)

(declare-fun e!2753621 () Bool)

(assert (=> d!1340029 (=> res!1827999 e!2753621)))

(assert (=> d!1340029 (= res!1827999 (and ((_ is Cons!49560) (apply!11593 lm!1616 (_1!27966 (h!55240 (toList!3469 lm!1616))))) (= (_1!27965 (h!55239 (apply!11593 lm!1616 (_1!27966 (h!55240 (toList!3469 lm!1616)))))) key!3717)))))

(assert (=> d!1340029 (= (containsKey!1093 (apply!11593 lm!1616 (_1!27966 (h!55240 (toList!3469 lm!1616)))) key!3717) e!2753621)))

(declare-fun b!4422495 () Bool)

(declare-fun e!2753622 () Bool)

(assert (=> b!4422495 (= e!2753621 e!2753622)))

(declare-fun res!1828000 () Bool)

(assert (=> b!4422495 (=> (not res!1828000) (not e!2753622))))

(assert (=> b!4422495 (= res!1828000 ((_ is Cons!49560) (apply!11593 lm!1616 (_1!27966 (h!55240 (toList!3469 lm!1616))))))))

(declare-fun b!4422496 () Bool)

(assert (=> b!4422496 (= e!2753622 (containsKey!1093 (t!356622 (apply!11593 lm!1616 (_1!27966 (h!55240 (toList!3469 lm!1616))))) key!3717))))

(assert (= (and d!1340029 (not res!1827999)) b!4422495))

(assert (= (and b!4422495 res!1828000) b!4422496))

(declare-fun m!5100599 () Bool)

(assert (=> b!4422496 m!5100599))

(assert (=> b!4422442 d!1340029))

(declare-fun d!1340031 () Bool)

(declare-fun get!16148 (Option!10713) List!49684)

(assert (=> d!1340031 (= (apply!11593 lm!1616 (_1!27966 (h!55240 (toList!3469 lm!1616)))) (get!16148 (getValueByKey!699 (toList!3469 lm!1616) (_1!27966 (h!55240 (toList!3469 lm!1616))))))))

(declare-fun bs!755229 () Bool)

(assert (= bs!755229 d!1340031))

(declare-fun m!5100601 () Bool)

(assert (=> bs!755229 m!5100601))

(assert (=> bs!755229 m!5100601))

(declare-fun m!5100603 () Bool)

(assert (=> bs!755229 m!5100603))

(assert (=> b!4422442 d!1340031))

(declare-fun bs!755232 () Bool)

(declare-fun d!1340033 () Bool)

(assert (= bs!755232 (and d!1340033 start!431164)))

(declare-fun lambda!153273 () Int)

(assert (=> bs!755232 (= lambda!153273 lambda!153264)))

(declare-fun bs!755233 () Bool)

(assert (= bs!755233 (and d!1340033 d!1340017)))

(assert (=> bs!755233 (not (= lambda!153273 lambda!153267))))

(assert (=> d!1340033 (not (containsKey!1093 (apply!11593 lm!1616 (_1!27966 (h!55240 (toList!3469 lm!1616)))) key!3717))))

(declare-fun lt!1622169 () Unit!81469)

(declare-fun choose!27877 (ListLongMap!2119 K!10925 (_ BitVec 64) Hashable!5135) Unit!81469)

(assert (=> d!1340033 (= lt!1622169 (choose!27877 lm!1616 key!3717 (_1!27966 (h!55240 (toList!3469 lm!1616))) hashF!1220))))

(assert (=> d!1340033 (forall!9544 (toList!3469 lm!1616) lambda!153273)))

(assert (=> d!1340033 (= (lemmaNotSameHashThenCannotContainKey!120 lm!1616 key!3717 (_1!27966 (h!55240 (toList!3469 lm!1616))) hashF!1220) lt!1622169)))

(declare-fun bs!755234 () Bool)

(assert (= bs!755234 d!1340033))

(assert (=> bs!755234 m!5100517))

(assert (=> bs!755234 m!5100517))

(assert (=> bs!755234 m!5100519))

(declare-fun m!5100617 () Bool)

(assert (=> bs!755234 m!5100617))

(declare-fun m!5100619 () Bool)

(assert (=> bs!755234 m!5100619))

(assert (=> b!4422442 d!1340033))

(declare-fun d!1340037 () Bool)

(declare-fun hash!2093 (Hashable!5135 K!10925) (_ BitVec 64))

(assert (=> d!1340037 (= (hash!2088 hashF!1220 key!3717) (hash!2093 hashF!1220 key!3717))))

(declare-fun bs!755236 () Bool)

(assert (= bs!755236 d!1340037))

(declare-fun m!5100625 () Bool)

(assert (=> bs!755236 m!5100625))

(assert (=> b!4422433 d!1340037))

(declare-fun d!1340041 () Bool)

(assert (=> d!1340041 true))

(assert (=> d!1340041 true))

(declare-fun lambda!153276 () Int)

(declare-fun forall!9546 (List!49684 Int) Bool)

(assert (=> d!1340041 (= (allKeysSameHash!701 newBucket!194 hash!366 hashF!1220) (forall!9546 newBucket!194 lambda!153276))))

(declare-fun bs!755237 () Bool)

(assert (= bs!755237 d!1340041))

(declare-fun m!5100627 () Bool)

(assert (=> bs!755237 m!5100627))

(assert (=> b!4422443 d!1340041))

(declare-fun d!1340043 () Bool)

(assert (=> d!1340043 (= (apply!11593 lm!1616 hash!366) (get!16148 (getValueByKey!699 (toList!3469 lm!1616) hash!366)))))

(declare-fun bs!755238 () Bool)

(assert (= bs!755238 d!1340043))

(assert (=> bs!755238 m!5100593))

(assert (=> bs!755238 m!5100593))

(declare-fun m!5100629 () Bool)

(assert (=> bs!755238 m!5100629))

(assert (=> b!4422432 d!1340043))

(declare-fun bs!755242 () Bool)

(declare-fun d!1340045 () Bool)

(assert (= bs!755242 (and d!1340045 start!431164)))

(declare-fun lambda!153282 () Int)

(assert (=> bs!755242 (= lambda!153282 lambda!153264)))

(declare-fun bs!755243 () Bool)

(assert (= bs!755243 (and d!1340045 d!1340017)))

(assert (=> bs!755243 (not (= lambda!153282 lambda!153267))))

(declare-fun bs!755245 () Bool)

(assert (= bs!755245 (and d!1340045 d!1340033)))

(assert (=> bs!755245 (= lambda!153282 lambda!153273)))

(assert (=> d!1340045 (contains!12050 (extractMap!802 (toList!3469 lm!1616)) key!3717)))

(declare-fun lt!1622175 () Unit!81469)

(declare-fun choose!27879 (ListLongMap!2119 K!10925 Hashable!5135) Unit!81469)

(assert (=> d!1340045 (= lt!1622175 (choose!27879 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1340045 (forall!9544 (toList!3469 lm!1616) lambda!153282)))

(assert (=> d!1340045 (= (lemmaExtractTailMapContainsThenExtractMapDoes!28 lm!1616 key!3717 hashF!1220) lt!1622175)))

(declare-fun bs!755248 () Bool)

(assert (= bs!755248 d!1340045))

(assert (=> bs!755248 m!5100533))

(assert (=> bs!755248 m!5100533))

(declare-fun m!5100639 () Bool)

(assert (=> bs!755248 m!5100639))

(declare-fun m!5100641 () Bool)

(assert (=> bs!755248 m!5100641))

(declare-fun m!5100643 () Bool)

(assert (=> bs!755248 m!5100643))

(assert (=> b!4422429 d!1340045))

(declare-fun d!1340051 () Bool)

(declare-fun e!2753629 () Bool)

(assert (=> d!1340051 e!2753629))

(declare-fun res!1828006 () Bool)

(assert (=> d!1340051 (=> (not res!1828006) (not e!2753629))))

(declare-fun lt!1622185 () ListLongMap!2119)

(assert (=> d!1340051 (= res!1828006 (contains!12049 lt!1622185 (_1!27966 lt!1622124)))))

(declare-fun lt!1622186 () List!49685)

(assert (=> d!1340051 (= lt!1622185 (ListLongMap!2120 lt!1622186))))

(declare-fun lt!1622187 () Unit!81469)

(declare-fun lt!1622188 () Unit!81469)

(assert (=> d!1340051 (= lt!1622187 lt!1622188)))

(assert (=> d!1340051 (= (getValueByKey!699 lt!1622186 (_1!27966 lt!1622124)) (Some!10712 (_2!27966 lt!1622124)))))

(declare-fun lemmaContainsTupThenGetReturnValue!434 (List!49685 (_ BitVec 64) List!49684) Unit!81469)

(assert (=> d!1340051 (= lt!1622188 (lemmaContainsTupThenGetReturnValue!434 lt!1622186 (_1!27966 lt!1622124) (_2!27966 lt!1622124)))))

(declare-fun insertStrictlySorted!254 (List!49685 (_ BitVec 64) List!49684) List!49685)

(assert (=> d!1340051 (= lt!1622186 (insertStrictlySorted!254 (toList!3469 lt!1622117) (_1!27966 lt!1622124) (_2!27966 lt!1622124)))))

(assert (=> d!1340051 (= (+!1067 lt!1622117 lt!1622124) lt!1622185)))

(declare-fun b!4422513 () Bool)

(declare-fun res!1828005 () Bool)

(assert (=> b!4422513 (=> (not res!1828005) (not e!2753629))))

(assert (=> b!4422513 (= res!1828005 (= (getValueByKey!699 (toList!3469 lt!1622185) (_1!27966 lt!1622124)) (Some!10712 (_2!27966 lt!1622124))))))

(declare-fun b!4422514 () Bool)

(declare-fun contains!12054 (List!49685 tuple2!49344) Bool)

(assert (=> b!4422514 (= e!2753629 (contains!12054 (toList!3469 lt!1622185) lt!1622124))))

(assert (= (and d!1340051 res!1828006) b!4422513))

(assert (= (and b!4422513 res!1828005) b!4422514))

(declare-fun m!5100653 () Bool)

(assert (=> d!1340051 m!5100653))

(declare-fun m!5100655 () Bool)

(assert (=> d!1340051 m!5100655))

(declare-fun m!5100657 () Bool)

(assert (=> d!1340051 m!5100657))

(declare-fun m!5100659 () Bool)

(assert (=> d!1340051 m!5100659))

(declare-fun m!5100661 () Bool)

(assert (=> b!4422513 m!5100661))

(declare-fun m!5100663 () Bool)

(assert (=> b!4422514 m!5100663))

(assert (=> b!4422439 d!1340051))

(declare-fun bs!755249 () Bool)

(declare-fun d!1340057 () Bool)

(assert (= bs!755249 (and d!1340057 start!431164)))

(declare-fun lambda!153286 () Int)

(assert (=> bs!755249 (= lambda!153286 lambda!153264)))

(declare-fun bs!755250 () Bool)

(assert (= bs!755250 (and d!1340057 d!1340017)))

(assert (=> bs!755250 (not (= lambda!153286 lambda!153267))))

(declare-fun bs!755251 () Bool)

(assert (= bs!755251 (and d!1340057 d!1340033)))

(assert (=> bs!755251 (= lambda!153286 lambda!153273)))

(declare-fun bs!755252 () Bool)

(assert (= bs!755252 (and d!1340057 d!1340045)))

(assert (=> bs!755252 (= lambda!153286 lambda!153282)))

(declare-fun lt!1622215 () ListMap!2713)

(declare-fun invariantList!799 (List!49684) Bool)

(assert (=> d!1340057 (invariantList!799 (toList!3470 lt!1622215))))

(declare-fun e!2753650 () ListMap!2713)

(assert (=> d!1340057 (= lt!1622215 e!2753650)))

(declare-fun c!752764 () Bool)

(assert (=> d!1340057 (= c!752764 ((_ is Cons!49561) (toList!3469 lt!1622117)))))

(assert (=> d!1340057 (forall!9544 (toList!3469 lt!1622117) lambda!153286)))

(assert (=> d!1340057 (= (extractMap!802 (toList!3469 lt!1622117)) lt!1622215)))

(declare-fun b!4422540 () Bool)

(assert (=> b!4422540 (= e!2753650 (addToMapMapFromBucket!378 (_2!27966 (h!55240 (toList!3469 lt!1622117))) (extractMap!802 (t!356623 (toList!3469 lt!1622117)))))))

(declare-fun b!4422542 () Bool)

(assert (=> b!4422542 (= e!2753650 (ListMap!2714 Nil!49560))))

(assert (= (and d!1340057 c!752764) b!4422540))

(assert (= (and d!1340057 (not c!752764)) b!4422542))

(declare-fun m!5100665 () Bool)

(assert (=> d!1340057 m!5100665))

(declare-fun m!5100669 () Bool)

(assert (=> d!1340057 m!5100669))

(declare-fun m!5100671 () Bool)

(assert (=> b!4422540 m!5100671))

(assert (=> b!4422540 m!5100671))

(declare-fun m!5100677 () Bool)

(assert (=> b!4422540 m!5100677))

(assert (=> b!4422439 d!1340057))

(declare-fun bs!755253 () Bool)

(declare-fun d!1340059 () Bool)

(assert (= bs!755253 (and d!1340059 d!1340057)))

(declare-fun lambda!153287 () Int)

(assert (=> bs!755253 (= lambda!153287 lambda!153286)))

(declare-fun bs!755254 () Bool)

(assert (= bs!755254 (and d!1340059 d!1340045)))

(assert (=> bs!755254 (= lambda!153287 lambda!153282)))

(declare-fun bs!755255 () Bool)

(assert (= bs!755255 (and d!1340059 start!431164)))

(assert (=> bs!755255 (= lambda!153287 lambda!153264)))

(declare-fun bs!755256 () Bool)

(assert (= bs!755256 (and d!1340059 d!1340017)))

(assert (=> bs!755256 (not (= lambda!153287 lambda!153267))))

(declare-fun bs!755257 () Bool)

(assert (= bs!755257 (and d!1340059 d!1340033)))

(assert (=> bs!755257 (= lambda!153287 lambda!153273)))

(declare-fun lt!1622216 () ListMap!2713)

(assert (=> d!1340059 (invariantList!799 (toList!3470 lt!1622216))))

(declare-fun e!2753651 () ListMap!2713)

(assert (=> d!1340059 (= lt!1622216 e!2753651)))

(declare-fun c!752765 () Bool)

(assert (=> d!1340059 (= c!752765 ((_ is Cons!49561) (toList!3469 (+!1067 lt!1622117 lt!1622124))))))

(assert (=> d!1340059 (forall!9544 (toList!3469 (+!1067 lt!1622117 lt!1622124)) lambda!153287)))

(assert (=> d!1340059 (= (extractMap!802 (toList!3469 (+!1067 lt!1622117 lt!1622124))) lt!1622216)))

(declare-fun b!4422548 () Bool)

(assert (=> b!4422548 (= e!2753651 (addToMapMapFromBucket!378 (_2!27966 (h!55240 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))))))

(declare-fun b!4422549 () Bool)

(assert (=> b!4422549 (= e!2753651 (ListMap!2714 Nil!49560))))

(assert (= (and d!1340059 c!752765) b!4422548))

(assert (= (and d!1340059 (not c!752765)) b!4422549))

(declare-fun m!5100693 () Bool)

(assert (=> d!1340059 m!5100693))

(declare-fun m!5100695 () Bool)

(assert (=> d!1340059 m!5100695))

(declare-fun m!5100697 () Bool)

(assert (=> b!4422548 m!5100697))

(assert (=> b!4422548 m!5100697))

(declare-fun m!5100699 () Bool)

(assert (=> b!4422548 m!5100699))

(assert (=> b!4422439 d!1340059))

(declare-fun d!1340063 () Bool)

(declare-fun e!2753655 () Bool)

(assert (=> d!1340063 e!2753655))

(declare-fun res!1828021 () Bool)

(assert (=> d!1340063 (=> (not res!1828021) (not e!2753655))))

(declare-fun lt!1622229 () ListMap!2713)

(assert (=> d!1340063 (= res!1828021 (contains!12050 lt!1622229 (_1!27965 (tuple2!49343 key!3717 newValue!93))))))

(declare-fun lt!1622226 () List!49684)

(assert (=> d!1340063 (= lt!1622229 (ListMap!2714 lt!1622226))))

(declare-fun lt!1622228 () Unit!81469)

(declare-fun lt!1622227 () Unit!81469)

(assert (=> d!1340063 (= lt!1622228 lt!1622227)))

(declare-datatypes ((Option!10714 0))(
  ( (None!10713) (Some!10713 (v!43889 V!11171)) )
))
(declare-fun getValueByKey!700 (List!49684 K!10925) Option!10714)

(assert (=> d!1340063 (= (getValueByKey!700 lt!1622226 (_1!27965 (tuple2!49343 key!3717 newValue!93))) (Some!10713 (_2!27965 (tuple2!49343 key!3717 newValue!93))))))

(declare-fun lemmaContainsTupThenGetReturnValue!435 (List!49684 K!10925 V!11171) Unit!81469)

(assert (=> d!1340063 (= lt!1622227 (lemmaContainsTupThenGetReturnValue!435 lt!1622226 (_1!27965 (tuple2!49343 key!3717 newValue!93)) (_2!27965 (tuple2!49343 key!3717 newValue!93))))))

(declare-fun insertNoDuplicatedKeys!189 (List!49684 K!10925 V!11171) List!49684)

(assert (=> d!1340063 (= lt!1622226 (insertNoDuplicatedKeys!189 (toList!3470 lt!1622116) (_1!27965 (tuple2!49343 key!3717 newValue!93)) (_2!27965 (tuple2!49343 key!3717 newValue!93))))))

(assert (=> d!1340063 (= (+!1066 lt!1622116 (tuple2!49343 key!3717 newValue!93)) lt!1622229)))

(declare-fun b!4422560 () Bool)

(declare-fun res!1828020 () Bool)

(assert (=> b!4422560 (=> (not res!1828020) (not e!2753655))))

(assert (=> b!4422560 (= res!1828020 (= (getValueByKey!700 (toList!3470 lt!1622229) (_1!27965 (tuple2!49343 key!3717 newValue!93))) (Some!10713 (_2!27965 (tuple2!49343 key!3717 newValue!93)))))))

(declare-fun b!4422561 () Bool)

(declare-fun contains!12055 (List!49684 tuple2!49342) Bool)

(assert (=> b!4422561 (= e!2753655 (contains!12055 (toList!3470 lt!1622229) (tuple2!49343 key!3717 newValue!93)))))

(assert (= (and d!1340063 res!1828021) b!4422560))

(assert (= (and b!4422560 res!1828020) b!4422561))

(declare-fun m!5100715 () Bool)

(assert (=> d!1340063 m!5100715))

(declare-fun m!5100717 () Bool)

(assert (=> d!1340063 m!5100717))

(declare-fun m!5100719 () Bool)

(assert (=> d!1340063 m!5100719))

(declare-fun m!5100721 () Bool)

(assert (=> d!1340063 m!5100721))

(declare-fun m!5100723 () Bool)

(assert (=> b!4422560 m!5100723))

(declare-fun m!5100725 () Bool)

(assert (=> b!4422561 m!5100725))

(assert (=> b!4422439 d!1340063))

(declare-fun bs!755279 () Bool)

(declare-fun d!1340073 () Bool)

(assert (= bs!755279 (and d!1340073 d!1340057)))

(declare-fun lambda!153298 () Int)

(assert (=> bs!755279 (= lambda!153298 lambda!153286)))

(declare-fun bs!755280 () Bool)

(assert (= bs!755280 (and d!1340073 d!1340059)))

(assert (=> bs!755280 (= lambda!153298 lambda!153287)))

(declare-fun bs!755281 () Bool)

(assert (= bs!755281 (and d!1340073 d!1340045)))

(assert (=> bs!755281 (= lambda!153298 lambda!153282)))

(declare-fun bs!755282 () Bool)

(assert (= bs!755282 (and d!1340073 start!431164)))

(assert (=> bs!755282 (= lambda!153298 lambda!153264)))

(declare-fun bs!755283 () Bool)

(assert (= bs!755283 (and d!1340073 d!1340017)))

(assert (=> bs!755283 (not (= lambda!153298 lambda!153267))))

(declare-fun bs!755284 () Bool)

(assert (= bs!755284 (and d!1340073 d!1340033)))

(assert (=> bs!755284 (= lambda!153298 lambda!153273)))

(assert (=> d!1340073 (eq!399 (extractMap!802 (toList!3469 (+!1067 lt!1622117 (tuple2!49345 hash!366 newBucket!194)))) (+!1066 (extractMap!802 (toList!3469 lt!1622117)) (tuple2!49343 key!3717 newValue!93)))))

(declare-fun lt!1622244 () Unit!81469)

(declare-fun choose!27881 (ListLongMap!2119 (_ BitVec 64) List!49684 K!10925 V!11171 Hashable!5135) Unit!81469)

(assert (=> d!1340073 (= lt!1622244 (choose!27881 lt!1622117 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(assert (=> d!1340073 (forall!9544 (toList!3469 lt!1622117) lambda!153298)))

(assert (=> d!1340073 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!115 lt!1622117 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) lt!1622244)))

(declare-fun bs!755285 () Bool)

(assert (= bs!755285 d!1340073))

(assert (=> bs!755285 m!5100499))

(assert (=> bs!755285 m!5100499))

(declare-fun m!5100773 () Bool)

(assert (=> bs!755285 m!5100773))

(declare-fun m!5100775 () Bool)

(assert (=> bs!755285 m!5100775))

(assert (=> bs!755285 m!5100775))

(assert (=> bs!755285 m!5100773))

(declare-fun m!5100777 () Bool)

(assert (=> bs!755285 m!5100777))

(declare-fun m!5100779 () Bool)

(assert (=> bs!755285 m!5100779))

(declare-fun m!5100781 () Bool)

(assert (=> bs!755285 m!5100781))

(declare-fun m!5100783 () Bool)

(assert (=> bs!755285 m!5100783))

(assert (=> b!4422439 d!1340073))

(declare-fun d!1340089 () Bool)

(assert (=> d!1340089 (= (tail!7254 lm!1616) (ListLongMap!2120 (tail!7255 (toList!3469 lm!1616))))))

(declare-fun bs!755286 () Bool)

(assert (= bs!755286 d!1340089))

(assert (=> bs!755286 m!5100493))

(assert (=> b!4422439 d!1340089))

(declare-fun bs!755288 () Bool)

(declare-fun d!1340091 () Bool)

(assert (= bs!755288 (and d!1340091 d!1340059)))

(declare-fun lambda!153302 () Int)

(assert (=> bs!755288 (= lambda!153302 lambda!153287)))

(declare-fun bs!755291 () Bool)

(assert (= bs!755291 (and d!1340091 d!1340045)))

(assert (=> bs!755291 (= lambda!153302 lambda!153282)))

(declare-fun bs!755293 () Bool)

(assert (= bs!755293 (and d!1340091 start!431164)))

(assert (=> bs!755293 (= lambda!153302 lambda!153264)))

(declare-fun bs!755295 () Bool)

(assert (= bs!755295 (and d!1340091 d!1340017)))

(assert (=> bs!755295 (not (= lambda!153302 lambda!153267))))

(declare-fun bs!755298 () Bool)

(assert (= bs!755298 (and d!1340091 d!1340033)))

(assert (=> bs!755298 (= lambda!153302 lambda!153273)))

(declare-fun bs!755299 () Bool)

(assert (= bs!755299 (and d!1340091 d!1340057)))

(assert (=> bs!755299 (= lambda!153302 lambda!153286)))

(declare-fun bs!755300 () Bool)

(assert (= bs!755300 (and d!1340091 d!1340073)))

(assert (=> bs!755300 (= lambda!153302 lambda!153298)))

(declare-fun lt!1622248 () ListMap!2713)

(assert (=> d!1340091 (invariantList!799 (toList!3470 lt!1622248))))

(declare-fun e!2753671 () ListMap!2713)

(assert (=> d!1340091 (= lt!1622248 e!2753671)))

(declare-fun c!752771 () Bool)

(assert (=> d!1340091 (= c!752771 ((_ is Cons!49561) (tail!7255 (toList!3469 lm!1616))))))

(assert (=> d!1340091 (forall!9544 (tail!7255 (toList!3469 lm!1616)) lambda!153302)))

(assert (=> d!1340091 (= (extractMap!802 (tail!7255 (toList!3469 lm!1616))) lt!1622248)))

(declare-fun b!4422581 () Bool)

(assert (=> b!4422581 (= e!2753671 (addToMapMapFromBucket!378 (_2!27966 (h!55240 (tail!7255 (toList!3469 lm!1616)))) (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616))))))))

(declare-fun b!4422582 () Bool)

(assert (=> b!4422582 (= e!2753671 (ListMap!2714 Nil!49560))))

(assert (= (and d!1340091 c!752771) b!4422581))

(assert (= (and d!1340091 (not c!752771)) b!4422582))

(declare-fun m!5100789 () Bool)

(assert (=> d!1340091 m!5100789))

(assert (=> d!1340091 m!5100493))

(declare-fun m!5100791 () Bool)

(assert (=> d!1340091 m!5100791))

(declare-fun m!5100793 () Bool)

(assert (=> b!4422581 m!5100793))

(assert (=> b!4422581 m!5100793))

(declare-fun m!5100795 () Bool)

(assert (=> b!4422581 m!5100795))

(assert (=> b!4422439 d!1340091))

(declare-fun d!1340095 () Bool)

(assert (=> d!1340095 (= (tail!7255 (toList!3469 lm!1616)) (t!356623 (toList!3469 lm!1616)))))

(assert (=> b!4422439 d!1340095))

(declare-fun b!4422620 () Bool)

(declare-fun e!2753700 () Bool)

(declare-fun e!2753699 () Bool)

(assert (=> b!4422620 (= e!2753700 e!2753699)))

(declare-fun res!1828050 () Bool)

(assert (=> b!4422620 (=> (not res!1828050) (not e!2753699))))

(declare-fun isDefined!8007 (Option!10714) Bool)

(assert (=> b!4422620 (= res!1828050 (isDefined!8007 (getValueByKey!700 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) key!3717)))))

(declare-fun b!4422621 () Bool)

(declare-datatypes ((List!49687 0))(
  ( (Nil!49563) (Cons!49563 (h!55244 K!10925) (t!356625 List!49687)) )
))
(declare-fun e!2753697 () List!49687)

(declare-fun getKeysList!247 (List!49684) List!49687)

(assert (=> b!4422621 (= e!2753697 (getKeysList!247 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))))))

(declare-fun b!4422622 () Bool)

(assert (=> b!4422622 false))

(declare-fun lt!1622285 () Unit!81469)

(declare-fun lt!1622288 () Unit!81469)

(assert (=> b!4422622 (= lt!1622285 lt!1622288)))

(declare-fun containsKey!1097 (List!49684 K!10925) Bool)

(assert (=> b!4422622 (containsKey!1097 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!245 (List!49684 K!10925) Unit!81469)

(assert (=> b!4422622 (= lt!1622288 (lemmaInGetKeysListThenContainsKey!245 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) key!3717))))

(declare-fun e!2753698 () Unit!81469)

(declare-fun Unit!81479 () Unit!81469)

(assert (=> b!4422622 (= e!2753698 Unit!81479)))

(declare-fun b!4422623 () Bool)

(declare-fun e!2753701 () Bool)

(declare-fun contains!12056 (List!49687 K!10925) Bool)

(declare-fun keys!16915 (ListMap!2713) List!49687)

(assert (=> b!4422623 (= e!2753701 (not (contains!12056 (keys!16915 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) key!3717)))))

(declare-fun d!1340097 () Bool)

(assert (=> d!1340097 e!2753700))

(declare-fun res!1828049 () Bool)

(assert (=> d!1340097 (=> res!1828049 e!2753700)))

(assert (=> d!1340097 (= res!1828049 e!2753701)))

(declare-fun res!1828051 () Bool)

(assert (=> d!1340097 (=> (not res!1828051) (not e!2753701))))

(declare-fun lt!1622291 () Bool)

(assert (=> d!1340097 (= res!1828051 (not lt!1622291))))

(declare-fun lt!1622284 () Bool)

(assert (=> d!1340097 (= lt!1622291 lt!1622284)))

(declare-fun lt!1622287 () Unit!81469)

(declare-fun e!2753696 () Unit!81469)

(assert (=> d!1340097 (= lt!1622287 e!2753696)))

(declare-fun c!752781 () Bool)

(assert (=> d!1340097 (= c!752781 lt!1622284)))

(assert (=> d!1340097 (= lt!1622284 (containsKey!1097 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) key!3717))))

(assert (=> d!1340097 (= (contains!12050 (extractMap!802 (tail!7255 (toList!3469 lm!1616))) key!3717) lt!1622291)))

(declare-fun b!4422624 () Bool)

(declare-fun lt!1622290 () Unit!81469)

(assert (=> b!4422624 (= e!2753696 lt!1622290)))

(declare-fun lt!1622286 () Unit!81469)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!610 (List!49684 K!10925) Unit!81469)

(assert (=> b!4422624 (= lt!1622286 (lemmaContainsKeyImpliesGetValueByKeyDefined!610 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) key!3717))))

(assert (=> b!4422624 (isDefined!8007 (getValueByKey!700 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) key!3717))))

(declare-fun lt!1622289 () Unit!81469)

(assert (=> b!4422624 (= lt!1622289 lt!1622286)))

(declare-fun lemmaInListThenGetKeysListContains!244 (List!49684 K!10925) Unit!81469)

(assert (=> b!4422624 (= lt!1622290 (lemmaInListThenGetKeysListContains!244 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) key!3717))))

(declare-fun call!307655 () Bool)

(assert (=> b!4422624 call!307655))

(declare-fun b!4422625 () Bool)

(declare-fun Unit!81480 () Unit!81469)

(assert (=> b!4422625 (= e!2753698 Unit!81480)))

(declare-fun bm!307650 () Bool)

(assert (=> bm!307650 (= call!307655 (contains!12056 e!2753697 key!3717))))

(declare-fun c!752783 () Bool)

(assert (=> bm!307650 (= c!752783 c!752781)))

(declare-fun b!4422626 () Bool)

(assert (=> b!4422626 (= e!2753696 e!2753698)))

(declare-fun c!752782 () Bool)

(assert (=> b!4422626 (= c!752782 call!307655)))

(declare-fun b!4422627 () Bool)

(assert (=> b!4422627 (= e!2753699 (contains!12056 (keys!16915 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) key!3717))))

(declare-fun b!4422628 () Bool)

(assert (=> b!4422628 (= e!2753697 (keys!16915 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))))))

(assert (= (and d!1340097 c!752781) b!4422624))

(assert (= (and d!1340097 (not c!752781)) b!4422626))

(assert (= (and b!4422626 c!752782) b!4422622))

(assert (= (and b!4422626 (not c!752782)) b!4422625))

(assert (= (or b!4422624 b!4422626) bm!307650))

(assert (= (and bm!307650 c!752783) b!4422621))

(assert (= (and bm!307650 (not c!752783)) b!4422628))

(assert (= (and d!1340097 res!1828051) b!4422623))

(assert (= (and d!1340097 (not res!1828049)) b!4422620))

(assert (= (and b!4422620 res!1828050) b!4422627))

(declare-fun m!5100831 () Bool)

(assert (=> b!4422620 m!5100831))

(assert (=> b!4422620 m!5100831))

(declare-fun m!5100833 () Bool)

(assert (=> b!4422620 m!5100833))

(declare-fun m!5100835 () Bool)

(assert (=> b!4422621 m!5100835))

(assert (=> b!4422623 m!5100495))

(declare-fun m!5100837 () Bool)

(assert (=> b!4422623 m!5100837))

(assert (=> b!4422623 m!5100837))

(declare-fun m!5100839 () Bool)

(assert (=> b!4422623 m!5100839))

(declare-fun m!5100843 () Bool)

(assert (=> b!4422622 m!5100843))

(declare-fun m!5100847 () Bool)

(assert (=> b!4422622 m!5100847))

(assert (=> b!4422627 m!5100495))

(assert (=> b!4422627 m!5100837))

(assert (=> b!4422627 m!5100837))

(assert (=> b!4422627 m!5100839))

(assert (=> b!4422628 m!5100495))

(assert (=> b!4422628 m!5100837))

(declare-fun m!5100849 () Bool)

(assert (=> bm!307650 m!5100849))

(assert (=> d!1340097 m!5100843))

(declare-fun m!5100853 () Bool)

(assert (=> b!4422624 m!5100853))

(assert (=> b!4422624 m!5100831))

(assert (=> b!4422624 m!5100831))

(assert (=> b!4422624 m!5100833))

(declare-fun m!5100857 () Bool)

(assert (=> b!4422624 m!5100857))

(assert (=> b!4422439 d!1340097))

(declare-fun d!1340115 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7944 (List!49684) (InoxSet tuple2!49342))

(assert (=> d!1340115 (= (eq!399 lt!1622123 (+!1066 lt!1622116 (tuple2!49343 key!3717 newValue!93))) (= (content!7944 (toList!3470 lt!1622123)) (content!7944 (toList!3470 (+!1066 lt!1622116 (tuple2!49343 key!3717 newValue!93))))))))

(declare-fun bs!755313 () Bool)

(assert (= bs!755313 d!1340115))

(declare-fun m!5100859 () Bool)

(assert (=> bs!755313 m!5100859))

(declare-fun m!5100861 () Bool)

(assert (=> bs!755313 m!5100861))

(assert (=> b!4422439 d!1340115))

(declare-fun d!1340117 () Bool)

(declare-fun head!9204 (List!49685) tuple2!49344)

(assert (=> d!1340117 (= (head!9202 lm!1616) (head!9204 (toList!3469 lm!1616)))))

(declare-fun bs!755314 () Bool)

(assert (= bs!755314 d!1340117))

(declare-fun m!5100863 () Bool)

(assert (=> bs!755314 m!5100863))

(assert (=> b!4422439 d!1340117))

(declare-fun b!4422635 () Bool)

(declare-fun e!2753712 () Bool)

(declare-fun e!2753711 () Bool)

(assert (=> b!4422635 (= e!2753712 e!2753711)))

(declare-fun res!1828059 () Bool)

(assert (=> b!4422635 (=> (not res!1828059) (not e!2753711))))

(assert (=> b!4422635 (= res!1828059 (isDefined!8007 (getValueByKey!700 (toList!3470 lt!1622127) key!3717)))))

(declare-fun b!4422636 () Bool)

(declare-fun e!2753709 () List!49687)

(assert (=> b!4422636 (= e!2753709 (getKeysList!247 (toList!3470 lt!1622127)))))

(declare-fun b!4422637 () Bool)

(assert (=> b!4422637 false))

(declare-fun lt!1622293 () Unit!81469)

(declare-fun lt!1622296 () Unit!81469)

(assert (=> b!4422637 (= lt!1622293 lt!1622296)))

(assert (=> b!4422637 (containsKey!1097 (toList!3470 lt!1622127) key!3717)))

(assert (=> b!4422637 (= lt!1622296 (lemmaInGetKeysListThenContainsKey!245 (toList!3470 lt!1622127) key!3717))))

(declare-fun e!2753710 () Unit!81469)

(declare-fun Unit!81492 () Unit!81469)

(assert (=> b!4422637 (= e!2753710 Unit!81492)))

(declare-fun b!4422638 () Bool)

(declare-fun e!2753713 () Bool)

(assert (=> b!4422638 (= e!2753713 (not (contains!12056 (keys!16915 lt!1622127) key!3717)))))

(declare-fun d!1340119 () Bool)

(assert (=> d!1340119 e!2753712))

(declare-fun res!1828058 () Bool)

(assert (=> d!1340119 (=> res!1828058 e!2753712)))

(assert (=> d!1340119 (= res!1828058 e!2753713)))

(declare-fun res!1828060 () Bool)

(assert (=> d!1340119 (=> (not res!1828060) (not e!2753713))))

(declare-fun lt!1622299 () Bool)

(assert (=> d!1340119 (= res!1828060 (not lt!1622299))))

(declare-fun lt!1622292 () Bool)

(assert (=> d!1340119 (= lt!1622299 lt!1622292)))

(declare-fun lt!1622295 () Unit!81469)

(declare-fun e!2753708 () Unit!81469)

(assert (=> d!1340119 (= lt!1622295 e!2753708)))

(declare-fun c!752784 () Bool)

(assert (=> d!1340119 (= c!752784 lt!1622292)))

(assert (=> d!1340119 (= lt!1622292 (containsKey!1097 (toList!3470 lt!1622127) key!3717))))

(assert (=> d!1340119 (= (contains!12050 lt!1622127 key!3717) lt!1622299)))

(declare-fun b!4422639 () Bool)

(declare-fun lt!1622298 () Unit!81469)

(assert (=> b!4422639 (= e!2753708 lt!1622298)))

(declare-fun lt!1622294 () Unit!81469)

(assert (=> b!4422639 (= lt!1622294 (lemmaContainsKeyImpliesGetValueByKeyDefined!610 (toList!3470 lt!1622127) key!3717))))

(assert (=> b!4422639 (isDefined!8007 (getValueByKey!700 (toList!3470 lt!1622127) key!3717))))

(declare-fun lt!1622297 () Unit!81469)

(assert (=> b!4422639 (= lt!1622297 lt!1622294)))

(assert (=> b!4422639 (= lt!1622298 (lemmaInListThenGetKeysListContains!244 (toList!3470 lt!1622127) key!3717))))

(declare-fun call!307656 () Bool)

(assert (=> b!4422639 call!307656))

(declare-fun b!4422640 () Bool)

(declare-fun Unit!81493 () Unit!81469)

(assert (=> b!4422640 (= e!2753710 Unit!81493)))

(declare-fun bm!307651 () Bool)

(assert (=> bm!307651 (= call!307656 (contains!12056 e!2753709 key!3717))))

(declare-fun c!752786 () Bool)

(assert (=> bm!307651 (= c!752786 c!752784)))

(declare-fun b!4422641 () Bool)

(assert (=> b!4422641 (= e!2753708 e!2753710)))

(declare-fun c!752785 () Bool)

(assert (=> b!4422641 (= c!752785 call!307656)))

(declare-fun b!4422642 () Bool)

(assert (=> b!4422642 (= e!2753711 (contains!12056 (keys!16915 lt!1622127) key!3717))))

(declare-fun b!4422643 () Bool)

(assert (=> b!4422643 (= e!2753709 (keys!16915 lt!1622127))))

(assert (= (and d!1340119 c!752784) b!4422639))

(assert (= (and d!1340119 (not c!752784)) b!4422641))

(assert (= (and b!4422641 c!752785) b!4422637))

(assert (= (and b!4422641 (not c!752785)) b!4422640))

(assert (= (or b!4422639 b!4422641) bm!307651))

(assert (= (and bm!307651 c!752786) b!4422636))

(assert (= (and bm!307651 (not c!752786)) b!4422643))

(assert (= (and d!1340119 res!1828060) b!4422638))

(assert (= (and d!1340119 (not res!1828058)) b!4422635))

(assert (= (and b!4422635 res!1828059) b!4422642))

(declare-fun m!5100865 () Bool)

(assert (=> b!4422635 m!5100865))

(assert (=> b!4422635 m!5100865))

(declare-fun m!5100867 () Bool)

(assert (=> b!4422635 m!5100867))

(declare-fun m!5100869 () Bool)

(assert (=> b!4422636 m!5100869))

(declare-fun m!5100871 () Bool)

(assert (=> b!4422638 m!5100871))

(assert (=> b!4422638 m!5100871))

(declare-fun m!5100873 () Bool)

(assert (=> b!4422638 m!5100873))

(declare-fun m!5100875 () Bool)

(assert (=> b!4422637 m!5100875))

(declare-fun m!5100877 () Bool)

(assert (=> b!4422637 m!5100877))

(assert (=> b!4422642 m!5100871))

(assert (=> b!4422642 m!5100871))

(assert (=> b!4422642 m!5100873))

(assert (=> b!4422643 m!5100871))

(declare-fun m!5100879 () Bool)

(assert (=> bm!307651 m!5100879))

(assert (=> d!1340119 m!5100875))

(declare-fun m!5100881 () Bool)

(assert (=> b!4422639 m!5100881))

(assert (=> b!4422639 m!5100865))

(assert (=> b!4422639 m!5100865))

(assert (=> b!4422639 m!5100867))

(declare-fun m!5100883 () Bool)

(assert (=> b!4422639 m!5100883))

(assert (=> b!4422441 d!1340119))

(declare-fun bs!755315 () Bool)

(declare-fun d!1340121 () Bool)

(assert (= bs!755315 (and d!1340121 d!1340059)))

(declare-fun lambda!153306 () Int)

(assert (=> bs!755315 (= lambda!153306 lambda!153287)))

(declare-fun bs!755316 () Bool)

(assert (= bs!755316 (and d!1340121 d!1340045)))

(assert (=> bs!755316 (= lambda!153306 lambda!153282)))

(declare-fun bs!755317 () Bool)

(assert (= bs!755317 (and d!1340121 start!431164)))

(assert (=> bs!755317 (= lambda!153306 lambda!153264)))

(declare-fun bs!755318 () Bool)

(assert (= bs!755318 (and d!1340121 d!1340017)))

(assert (=> bs!755318 (not (= lambda!153306 lambda!153267))))

(declare-fun bs!755319 () Bool)

(assert (= bs!755319 (and d!1340121 d!1340033)))

(assert (=> bs!755319 (= lambda!153306 lambda!153273)))

(declare-fun bs!755320 () Bool)

(assert (= bs!755320 (and d!1340121 d!1340091)))

(assert (=> bs!755320 (= lambda!153306 lambda!153302)))

(declare-fun bs!755321 () Bool)

(assert (= bs!755321 (and d!1340121 d!1340057)))

(assert (=> bs!755321 (= lambda!153306 lambda!153286)))

(declare-fun bs!755322 () Bool)

(assert (= bs!755322 (and d!1340121 d!1340073)))

(assert (=> bs!755322 (= lambda!153306 lambda!153298)))

(declare-fun lt!1622300 () ListMap!2713)

(assert (=> d!1340121 (invariantList!799 (toList!3470 lt!1622300))))

(declare-fun e!2753714 () ListMap!2713)

(assert (=> d!1340121 (= lt!1622300 e!2753714)))

(declare-fun c!752787 () Bool)

(assert (=> d!1340121 (= c!752787 ((_ is Cons!49561) (toList!3469 lm!1616)))))

(assert (=> d!1340121 (forall!9544 (toList!3469 lm!1616) lambda!153306)))

(assert (=> d!1340121 (= (extractMap!802 (toList!3469 lm!1616)) lt!1622300)))

(declare-fun b!4422644 () Bool)

(assert (=> b!4422644 (= e!2753714 (addToMapMapFromBucket!378 (_2!27966 (h!55240 (toList!3469 lm!1616))) (extractMap!802 (t!356623 (toList!3469 lm!1616)))))))

(declare-fun b!4422645 () Bool)

(assert (=> b!4422645 (= e!2753714 (ListMap!2714 Nil!49560))))

(assert (= (and d!1340121 c!752787) b!4422644))

(assert (= (and d!1340121 (not c!752787)) b!4422645))

(declare-fun m!5100885 () Bool)

(assert (=> d!1340121 m!5100885))

(declare-fun m!5100887 () Bool)

(assert (=> d!1340121 m!5100887))

(declare-fun m!5100889 () Bool)

(assert (=> b!4422644 m!5100889))

(assert (=> b!4422644 m!5100889))

(declare-fun m!5100891 () Bool)

(assert (=> b!4422644 m!5100891))

(assert (=> b!4422441 d!1340121))

(declare-fun d!1340123 () Bool)

(declare-fun isEmpty!28335 (List!49685) Bool)

(assert (=> d!1340123 (= (isEmpty!28333 lm!1616) (isEmpty!28335 (toList!3469 lm!1616)))))

(declare-fun bs!755323 () Bool)

(assert (= bs!755323 d!1340123))

(declare-fun m!5100893 () Bool)

(assert (=> bs!755323 m!5100893))

(assert (=> b!4422440 d!1340123))

(declare-fun d!1340125 () Bool)

(declare-fun res!1828061 () Bool)

(declare-fun e!2753715 () Bool)

(assert (=> d!1340125 (=> res!1828061 e!2753715)))

(assert (=> d!1340125 (= res!1828061 ((_ is Nil!49561) (toList!3469 lt!1622125)))))

(assert (=> d!1340125 (= (forall!9544 (toList!3469 lt!1622125) lambda!153264) e!2753715)))

(declare-fun b!4422646 () Bool)

(declare-fun e!2753716 () Bool)

(assert (=> b!4422646 (= e!2753715 e!2753716)))

(declare-fun res!1828062 () Bool)

(assert (=> b!4422646 (=> (not res!1828062) (not e!2753716))))

(assert (=> b!4422646 (= res!1828062 (dynLambda!20836 lambda!153264 (h!55240 (toList!3469 lt!1622125))))))

(declare-fun b!4422647 () Bool)

(assert (=> b!4422647 (= e!2753716 (forall!9544 (t!356623 (toList!3469 lt!1622125)) lambda!153264))))

(assert (= (and d!1340125 (not res!1828061)) b!4422646))

(assert (= (and b!4422646 res!1828062) b!4422647))

(declare-fun b_lambda!142703 () Bool)

(assert (=> (not b_lambda!142703) (not b!4422646)))

(declare-fun m!5100895 () Bool)

(assert (=> b!4422646 m!5100895))

(declare-fun m!5100897 () Bool)

(assert (=> b!4422647 m!5100897))

(assert (=> b!4422447 d!1340125))

(declare-fun d!1340127 () Bool)

(declare-fun e!2753717 () Bool)

(assert (=> d!1340127 e!2753717))

(declare-fun res!1828064 () Bool)

(assert (=> d!1340127 (=> (not res!1828064) (not e!2753717))))

(declare-fun lt!1622301 () ListLongMap!2119)

(assert (=> d!1340127 (= res!1828064 (contains!12049 lt!1622301 (_1!27966 lt!1622124)))))

(declare-fun lt!1622302 () List!49685)

(assert (=> d!1340127 (= lt!1622301 (ListLongMap!2120 lt!1622302))))

(declare-fun lt!1622303 () Unit!81469)

(declare-fun lt!1622304 () Unit!81469)

(assert (=> d!1340127 (= lt!1622303 lt!1622304)))

(assert (=> d!1340127 (= (getValueByKey!699 lt!1622302 (_1!27966 lt!1622124)) (Some!10712 (_2!27966 lt!1622124)))))

(assert (=> d!1340127 (= lt!1622304 (lemmaContainsTupThenGetReturnValue!434 lt!1622302 (_1!27966 lt!1622124) (_2!27966 lt!1622124)))))

(assert (=> d!1340127 (= lt!1622302 (insertStrictlySorted!254 (toList!3469 lm!1616) (_1!27966 lt!1622124) (_2!27966 lt!1622124)))))

(assert (=> d!1340127 (= (+!1067 lm!1616 lt!1622124) lt!1622301)))

(declare-fun b!4422648 () Bool)

(declare-fun res!1828063 () Bool)

(assert (=> b!4422648 (=> (not res!1828063) (not e!2753717))))

(assert (=> b!4422648 (= res!1828063 (= (getValueByKey!699 (toList!3469 lt!1622301) (_1!27966 lt!1622124)) (Some!10712 (_2!27966 lt!1622124))))))

(declare-fun b!4422649 () Bool)

(assert (=> b!4422649 (= e!2753717 (contains!12054 (toList!3469 lt!1622301) lt!1622124))))

(assert (= (and d!1340127 res!1828064) b!4422648))

(assert (= (and b!4422648 res!1828063) b!4422649))

(declare-fun m!5100899 () Bool)

(assert (=> d!1340127 m!5100899))

(declare-fun m!5100901 () Bool)

(assert (=> d!1340127 m!5100901))

(declare-fun m!5100903 () Bool)

(assert (=> d!1340127 m!5100903))

(declare-fun m!5100905 () Bool)

(assert (=> d!1340127 m!5100905))

(declare-fun m!5100907 () Bool)

(assert (=> b!4422648 m!5100907))

(declare-fun m!5100909 () Bool)

(assert (=> b!4422649 m!5100909))

(assert (=> b!4422447 d!1340127))

(declare-fun d!1340129 () Bool)

(assert (=> d!1340129 (forall!9544 (toList!3469 (+!1067 lm!1616 (tuple2!49345 hash!366 newBucket!194))) lambda!153264)))

(declare-fun lt!1622307 () Unit!81469)

(declare-fun choose!27883 (ListLongMap!2119 Int (_ BitVec 64) List!49684) Unit!81469)

(assert (=> d!1340129 (= lt!1622307 (choose!27883 lm!1616 lambda!153264 hash!366 newBucket!194))))

(declare-fun e!2753720 () Bool)

(assert (=> d!1340129 e!2753720))

(declare-fun res!1828067 () Bool)

(assert (=> d!1340129 (=> (not res!1828067) (not e!2753720))))

(assert (=> d!1340129 (= res!1828067 (forall!9544 (toList!3469 lm!1616) lambda!153264))))

(assert (=> d!1340129 (= (addValidProp!385 lm!1616 lambda!153264 hash!366 newBucket!194) lt!1622307)))

(declare-fun b!4422653 () Bool)

(assert (=> b!4422653 (= e!2753720 (dynLambda!20836 lambda!153264 (tuple2!49345 hash!366 newBucket!194)))))

(assert (= (and d!1340129 res!1828067) b!4422653))

(declare-fun b_lambda!142705 () Bool)

(assert (=> (not b_lambda!142705) (not b!4422653)))

(declare-fun m!5100911 () Bool)

(assert (=> d!1340129 m!5100911))

(declare-fun m!5100913 () Bool)

(assert (=> d!1340129 m!5100913))

(declare-fun m!5100915 () Bool)

(assert (=> d!1340129 m!5100915))

(assert (=> d!1340129 m!5100543))

(declare-fun m!5100917 () Bool)

(assert (=> b!4422653 m!5100917))

(assert (=> b!4422447 d!1340129))

(declare-fun d!1340131 () Bool)

(assert (=> d!1340131 (= (eq!399 lt!1622127 (addToMapMapFromBucket!378 (_2!27966 (h!55240 (toList!3469 lm!1616))) lt!1622116)) (= (content!7944 (toList!3470 lt!1622127)) (content!7944 (toList!3470 (addToMapMapFromBucket!378 (_2!27966 (h!55240 (toList!3469 lm!1616))) lt!1622116)))))))

(declare-fun bs!755324 () Bool)

(assert (= bs!755324 d!1340131))

(declare-fun m!5100919 () Bool)

(assert (=> bs!755324 m!5100919))

(declare-fun m!5100921 () Bool)

(assert (=> bs!755324 m!5100921))

(assert (=> b!4422436 d!1340131))

(declare-fun bs!755334 () Bool)

(declare-fun b!4422695 () Bool)

(assert (= bs!755334 (and b!4422695 d!1340041)))

(declare-fun lambda!153367 () Int)

(assert (=> bs!755334 (not (= lambda!153367 lambda!153276))))

(assert (=> b!4422695 true))

(declare-fun bs!755335 () Bool)

(declare-fun b!4422692 () Bool)

(assert (= bs!755335 (and b!4422692 d!1340041)))

(declare-fun lambda!153368 () Int)

(assert (=> bs!755335 (not (= lambda!153368 lambda!153276))))

(declare-fun bs!755336 () Bool)

(assert (= bs!755336 (and b!4422692 b!4422695)))

(assert (=> bs!755336 (= lambda!153368 lambda!153367)))

(assert (=> b!4422692 true))

(declare-fun lambda!153369 () Int)

(assert (=> bs!755335 (not (= lambda!153369 lambda!153276))))

(declare-fun lt!1622432 () ListMap!2713)

(assert (=> bs!755336 (= (= lt!1622432 lt!1622116) (= lambda!153369 lambda!153367))))

(assert (=> b!4422692 (= (= lt!1622432 lt!1622116) (= lambda!153369 lambda!153368))))

(assert (=> b!4422692 true))

(declare-fun bs!755337 () Bool)

(declare-fun d!1340133 () Bool)

(assert (= bs!755337 (and d!1340133 d!1340041)))

(declare-fun lambda!153370 () Int)

(assert (=> bs!755337 (not (= lambda!153370 lambda!153276))))

(declare-fun bs!755338 () Bool)

(assert (= bs!755338 (and d!1340133 b!4422695)))

(declare-fun lt!1622415 () ListMap!2713)

(assert (=> bs!755338 (= (= lt!1622415 lt!1622116) (= lambda!153370 lambda!153367))))

(declare-fun bs!755339 () Bool)

(assert (= bs!755339 (and d!1340133 b!4422692)))

(assert (=> bs!755339 (= (= lt!1622415 lt!1622116) (= lambda!153370 lambda!153368))))

(assert (=> bs!755339 (= (= lt!1622415 lt!1622432) (= lambda!153370 lambda!153369))))

(assert (=> d!1340133 true))

(declare-fun b!4422691 () Bool)

(declare-fun e!2753742 () Bool)

(assert (=> b!4422691 (= e!2753742 (forall!9546 (toList!3470 lt!1622116) lambda!153369))))

(declare-fun e!2753743 () ListMap!2713)

(assert (=> b!4422692 (= e!2753743 lt!1622432)))

(declare-fun lt!1622414 () ListMap!2713)

(assert (=> b!4422692 (= lt!1622414 (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))

(assert (=> b!4422692 (= lt!1622432 (addToMapMapFromBucket!378 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616)))) (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(declare-fun lt!1622419 () Unit!81469)

(declare-fun call!307674 () Unit!81469)

(assert (=> b!4422692 (= lt!1622419 call!307674)))

(assert (=> b!4422692 (forall!9546 (toList!3470 lt!1622116) lambda!153368)))

(declare-fun lt!1622426 () Unit!81469)

(assert (=> b!4422692 (= lt!1622426 lt!1622419)))

(assert (=> b!4422692 (forall!9546 (toList!3470 lt!1622414) lambda!153369)))

(declare-fun lt!1622431 () Unit!81469)

(declare-fun Unit!81494 () Unit!81469)

(assert (=> b!4422692 (= lt!1622431 Unit!81494)))

(assert (=> b!4422692 (forall!9546 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616)))) lambda!153369)))

(declare-fun lt!1622428 () Unit!81469)

(declare-fun Unit!81495 () Unit!81469)

(assert (=> b!4422692 (= lt!1622428 Unit!81495)))

(declare-fun lt!1622421 () Unit!81469)

(declare-fun Unit!81496 () Unit!81469)

(assert (=> b!4422692 (= lt!1622421 Unit!81496)))

(declare-fun lt!1622429 () Unit!81469)

(declare-fun forallContained!2083 (List!49684 Int tuple2!49342) Unit!81469)

(assert (=> b!4422692 (= lt!1622429 (forallContained!2083 (toList!3470 lt!1622414) lambda!153369 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))

(assert (=> b!4422692 (contains!12050 lt!1622414 (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))

(declare-fun lt!1622422 () Unit!81469)

(declare-fun Unit!81497 () Unit!81469)

(assert (=> b!4422692 (= lt!1622422 Unit!81497)))

(assert (=> b!4422692 (contains!12050 lt!1622432 (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))

(declare-fun lt!1622413 () Unit!81469)

(declare-fun Unit!81498 () Unit!81469)

(assert (=> b!4422692 (= lt!1622413 Unit!81498)))

(assert (=> b!4422692 (forall!9546 (_2!27966 (h!55240 (toList!3469 lm!1616))) lambda!153369)))

(declare-fun lt!1622427 () Unit!81469)

(declare-fun Unit!81499 () Unit!81469)

(assert (=> b!4422692 (= lt!1622427 Unit!81499)))

(declare-fun call!307672 () Bool)

(assert (=> b!4422692 call!307672))

(declare-fun lt!1622433 () Unit!81469)

(declare-fun Unit!81500 () Unit!81469)

(assert (=> b!4422692 (= lt!1622433 Unit!81500)))

(declare-fun lt!1622423 () Unit!81469)

(declare-fun Unit!81501 () Unit!81469)

(assert (=> b!4422692 (= lt!1622423 Unit!81501)))

(declare-fun lt!1622430 () Unit!81469)

(declare-fun addForallContainsKeyThenBeforeAdding!167 (ListMap!2713 ListMap!2713 K!10925 V!11171) Unit!81469)

(assert (=> b!4422692 (= lt!1622430 (addForallContainsKeyThenBeforeAdding!167 lt!1622116 lt!1622432 (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (_2!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(assert (=> b!4422692 (forall!9546 (toList!3470 lt!1622116) lambda!153369)))

(declare-fun lt!1622424 () Unit!81469)

(assert (=> b!4422692 (= lt!1622424 lt!1622430)))

(declare-fun call!307673 () Bool)

(assert (=> b!4422692 call!307673))

(declare-fun lt!1622425 () Unit!81469)

(declare-fun Unit!81502 () Unit!81469)

(assert (=> b!4422692 (= lt!1622425 Unit!81502)))

(declare-fun res!1828084 () Bool)

(assert (=> b!4422692 (= res!1828084 (forall!9546 (_2!27966 (h!55240 (toList!3469 lm!1616))) lambda!153369))))

(assert (=> b!4422692 (=> (not res!1828084) (not e!2753742))))

(assert (=> b!4422692 e!2753742))

(declare-fun lt!1622417 () Unit!81469)

(declare-fun Unit!81503 () Unit!81469)

(assert (=> b!4422692 (= lt!1622417 Unit!81503)))

(declare-fun c!752793 () Bool)

(declare-fun bm!307667 () Bool)

(assert (=> bm!307667 (= call!307672 (forall!9546 (ite c!752793 (toList!3470 lt!1622116) (toList!3470 lt!1622414)) (ite c!752793 lambda!153367 lambda!153369)))))

(declare-fun b!4422693 () Bool)

(declare-fun e!2753744 () Bool)

(assert (=> b!4422693 (= e!2753744 (invariantList!799 (toList!3470 lt!1622415)))))

(declare-fun b!4422694 () Bool)

(declare-fun res!1828083 () Bool)

(assert (=> b!4422694 (=> (not res!1828083) (not e!2753744))))

(assert (=> b!4422694 (= res!1828083 (forall!9546 (toList!3470 lt!1622116) lambda!153370))))

(assert (=> b!4422695 (= e!2753743 lt!1622116)))

(declare-fun lt!1622420 () Unit!81469)

(assert (=> b!4422695 (= lt!1622420 call!307674)))

(assert (=> b!4422695 call!307673))

(declare-fun lt!1622418 () Unit!81469)

(assert (=> b!4422695 (= lt!1622418 lt!1622420)))

(assert (=> b!4422695 call!307672))

(declare-fun lt!1622416 () Unit!81469)

(declare-fun Unit!81504 () Unit!81469)

(assert (=> b!4422695 (= lt!1622416 Unit!81504)))

(assert (=> d!1340133 e!2753744))

(declare-fun res!1828085 () Bool)

(assert (=> d!1340133 (=> (not res!1828085) (not e!2753744))))

(assert (=> d!1340133 (= res!1828085 (forall!9546 (_2!27966 (h!55240 (toList!3469 lm!1616))) lambda!153370))))

(assert (=> d!1340133 (= lt!1622415 e!2753743)))

(assert (=> d!1340133 (= c!752793 ((_ is Nil!49560) (_2!27966 (h!55240 (toList!3469 lm!1616)))))))

(assert (=> d!1340133 (noDuplicateKeys!741 (_2!27966 (h!55240 (toList!3469 lm!1616))))))

(assert (=> d!1340133 (= (addToMapMapFromBucket!378 (_2!27966 (h!55240 (toList!3469 lm!1616))) lt!1622116) lt!1622415)))

(declare-fun bm!307668 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!167 (ListMap!2713) Unit!81469)

(assert (=> bm!307668 (= call!307674 (lemmaContainsAllItsOwnKeys!167 lt!1622116))))

(declare-fun bm!307669 () Bool)

(assert (=> bm!307669 (= call!307673 (forall!9546 (toList!3470 lt!1622116) (ite c!752793 lambda!153367 lambda!153369)))))

(assert (= (and d!1340133 c!752793) b!4422695))

(assert (= (and d!1340133 (not c!752793)) b!4422692))

(assert (= (and b!4422692 res!1828084) b!4422691))

(assert (= (or b!4422695 b!4422692) bm!307668))

(assert (= (or b!4422695 b!4422692) bm!307667))

(assert (= (or b!4422695 b!4422692) bm!307669))

(assert (= (and d!1340133 res!1828085) b!4422694))

(assert (= (and b!4422694 res!1828083) b!4422693))

(declare-fun m!5100961 () Bool)

(assert (=> bm!307668 m!5100961))

(declare-fun m!5100963 () Bool)

(assert (=> b!4422692 m!5100963))

(declare-fun m!5100965 () Bool)

(assert (=> b!4422692 m!5100965))

(declare-fun m!5100967 () Bool)

(assert (=> b!4422692 m!5100967))

(declare-fun m!5100969 () Bool)

(assert (=> b!4422692 m!5100969))

(declare-fun m!5100971 () Bool)

(assert (=> b!4422692 m!5100971))

(declare-fun m!5100973 () Bool)

(assert (=> b!4422692 m!5100973))

(declare-fun m!5100975 () Bool)

(assert (=> b!4422692 m!5100975))

(declare-fun m!5100977 () Bool)

(assert (=> b!4422692 m!5100977))

(assert (=> b!4422692 m!5100969))

(declare-fun m!5100979 () Bool)

(assert (=> b!4422692 m!5100979))

(declare-fun m!5100981 () Bool)

(assert (=> b!4422692 m!5100981))

(assert (=> b!4422692 m!5100979))

(declare-fun m!5100983 () Bool)

(assert (=> b!4422692 m!5100983))

(declare-fun m!5100985 () Bool)

(assert (=> d!1340133 m!5100985))

(declare-fun m!5100987 () Bool)

(assert (=> d!1340133 m!5100987))

(declare-fun m!5100989 () Bool)

(assert (=> bm!307669 m!5100989))

(declare-fun m!5100991 () Bool)

(assert (=> bm!307667 m!5100991))

(declare-fun m!5100993 () Bool)

(assert (=> b!4422694 m!5100993))

(assert (=> b!4422691 m!5100963))

(declare-fun m!5100995 () Bool)

(assert (=> b!4422693 m!5100995))

(assert (=> b!4422436 d!1340133))

(assert (=> b!4422438 d!1340019))

(declare-fun b!4422702 () Bool)

(declare-fun e!2753747 () Bool)

(declare-fun tp!1333090 () Bool)

(declare-fun tp!1333091 () Bool)

(assert (=> b!4422702 (= e!2753747 (and tp!1333090 tp!1333091))))

(assert (=> b!4422430 (= tp!1333075 e!2753747)))

(assert (= (and b!4422430 ((_ is Cons!49561) (toList!3469 lm!1616))) b!4422702))

(declare-fun tp!1333094 () Bool)

(declare-fun e!2753750 () Bool)

(declare-fun b!4422707 () Bool)

(assert (=> b!4422707 (= e!2753750 (and tp_is_empty!26211 tp_is_empty!26209 tp!1333094))))

(assert (=> b!4422446 (= tp!1333076 e!2753750)))

(assert (= (and b!4422446 ((_ is Cons!49560) (t!356622 newBucket!194))) b!4422707))

(declare-fun b_lambda!142713 () Bool)

(assert (= b_lambda!142703 (or start!431164 b_lambda!142713)))

(declare-fun bs!755340 () Bool)

(declare-fun d!1340141 () Bool)

(assert (= bs!755340 (and d!1340141 start!431164)))

(assert (=> bs!755340 (= (dynLambda!20836 lambda!153264 (h!55240 (toList!3469 lt!1622125))) (noDuplicateKeys!741 (_2!27966 (h!55240 (toList!3469 lt!1622125)))))))

(declare-fun m!5100997 () Bool)

(assert (=> bs!755340 m!5100997))

(assert (=> b!4422646 d!1340141))

(declare-fun b_lambda!142715 () Bool)

(assert (= b_lambda!142697 (or start!431164 b_lambda!142715)))

(declare-fun bs!755341 () Bool)

(declare-fun d!1340143 () Bool)

(assert (= bs!755341 (and d!1340143 start!431164)))

(assert (=> bs!755341 (= (dynLambda!20836 lambda!153264 (h!55240 (toList!3469 lm!1616))) (noDuplicateKeys!741 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))

(assert (=> bs!755341 m!5100987))

(assert (=> b!4422478 d!1340143))

(declare-fun b_lambda!142717 () Bool)

(assert (= b_lambda!142705 (or start!431164 b_lambda!142717)))

(declare-fun bs!755342 () Bool)

(declare-fun d!1340145 () Bool)

(assert (= bs!755342 (and d!1340145 start!431164)))

(assert (=> bs!755342 (= (dynLambda!20836 lambda!153264 (tuple2!49345 hash!366 newBucket!194)) (noDuplicateKeys!741 (_2!27966 (tuple2!49345 hash!366 newBucket!194))))))

(declare-fun m!5100999 () Bool)

(assert (=> bs!755342 m!5100999))

(assert (=> b!4422653 d!1340145))

(check-sat (not d!1340031) tp_is_empty!26211 (not b!4422479) (not d!1340063) (not d!1340133) (not bm!307669) (not b!4422628) (not b!4422494) (not b!4422623) (not bm!307667) (not b!4422692) (not bm!307668) (not d!1340017) (not bs!755341) (not d!1340033) (not b!4422548) (not d!1340115) (not d!1340057) (not b!4422465) (not b!4422621) (not d!1340041) (not d!1340023) (not d!1340051) (not b!4422648) (not d!1340037) (not d!1340091) (not d!1340119) (not b!4422513) (not d!1340117) (not b!4422560) (not b!4422691) (not b!4422636) (not d!1340129) (not d!1340059) (not b_lambda!142717) (not b!4422647) (not b!4422540) (not b!4422581) (not b!4422693) (not b!4422620) (not b!4422496) (not d!1340123) (not d!1340089) (not d!1340131) (not b!4422627) (not d!1340097) (not b!4422622) (not b!4422635) (not b!4422637) (not b!4422702) (not b!4422488) (not bm!307650) tp_is_empty!26209 (not b!4422639) (not b!4422694) (not d!1340073) (not b_lambda!142713) (not b!4422707) (not d!1340121) (not b!4422643) (not bs!755342) (not b!4422649) (not d!1340045) (not b!4422642) (not b!4422514) (not d!1340025) (not bs!755340) (not b!4422561) (not b!4422638) (not b!4422644) (not b!4422624) (not bm!307651) (not b!4422486) (not d!1340043) (not b_lambda!142715) (not b!4422464) (not d!1340127))
(check-sat)
(get-model)

(declare-fun b!4422832 () Bool)

(declare-fun e!2753825 () Option!10713)

(declare-fun e!2753826 () Option!10713)

(assert (=> b!4422832 (= e!2753825 e!2753826)))

(declare-fun c!752827 () Bool)

(assert (=> b!4422832 (= c!752827 (and ((_ is Cons!49561) (toList!3469 lt!1622301)) (not (= (_1!27966 (h!55240 (toList!3469 lt!1622301))) (_1!27966 lt!1622124)))))))

(declare-fun b!4422834 () Bool)

(assert (=> b!4422834 (= e!2753826 None!10712)))

(declare-fun d!1340195 () Bool)

(declare-fun c!752826 () Bool)

(assert (=> d!1340195 (= c!752826 (and ((_ is Cons!49561) (toList!3469 lt!1622301)) (= (_1!27966 (h!55240 (toList!3469 lt!1622301))) (_1!27966 lt!1622124))))))

(assert (=> d!1340195 (= (getValueByKey!699 (toList!3469 lt!1622301) (_1!27966 lt!1622124)) e!2753825)))

(declare-fun b!4422831 () Bool)

(assert (=> b!4422831 (= e!2753825 (Some!10712 (_2!27966 (h!55240 (toList!3469 lt!1622301)))))))

(declare-fun b!4422833 () Bool)

(assert (=> b!4422833 (= e!2753826 (getValueByKey!699 (t!356623 (toList!3469 lt!1622301)) (_1!27966 lt!1622124)))))

(assert (= (and d!1340195 c!752826) b!4422831))

(assert (= (and d!1340195 (not c!752826)) b!4422832))

(assert (= (and b!4422832 c!752827) b!4422833))

(assert (= (and b!4422832 (not c!752827)) b!4422834))

(declare-fun m!5101167 () Bool)

(assert (=> b!4422833 m!5101167))

(assert (=> b!4422648 d!1340195))

(declare-fun d!1340203 () Bool)

(declare-fun res!1828149 () Bool)

(declare-fun e!2753833 () Bool)

(assert (=> d!1340203 (=> res!1828149 e!2753833)))

(assert (=> d!1340203 (= res!1828149 (and ((_ is Cons!49560) (toList!3470 lt!1622127)) (= (_1!27965 (h!55239 (toList!3470 lt!1622127))) key!3717)))))

(assert (=> d!1340203 (= (containsKey!1097 (toList!3470 lt!1622127) key!3717) e!2753833)))

(declare-fun b!4422841 () Bool)

(declare-fun e!2753834 () Bool)

(assert (=> b!4422841 (= e!2753833 e!2753834)))

(declare-fun res!1828150 () Bool)

(assert (=> b!4422841 (=> (not res!1828150) (not e!2753834))))

(assert (=> b!4422841 (= res!1828150 ((_ is Cons!49560) (toList!3470 lt!1622127)))))

(declare-fun b!4422842 () Bool)

(assert (=> b!4422842 (= e!2753834 (containsKey!1097 (t!356622 (toList!3470 lt!1622127)) key!3717))))

(assert (= (and d!1340203 (not res!1828149)) b!4422841))

(assert (= (and b!4422841 res!1828150) b!4422842))

(declare-fun m!5101175 () Bool)

(assert (=> b!4422842 m!5101175))

(assert (=> d!1340119 d!1340203))

(declare-fun b!4422909 () Bool)

(assert (=> b!4422909 true))

(declare-fun bs!755377 () Bool)

(declare-fun b!4422907 () Bool)

(assert (= bs!755377 (and b!4422907 b!4422909)))

(declare-fun lambda!153393 () Int)

(declare-fun lambda!153392 () Int)

(assert (=> bs!755377 (= (= (Cons!49560 (h!55239 (toList!3470 lt!1622127)) (t!356622 (toList!3470 lt!1622127))) (t!356622 (toList!3470 lt!1622127))) (= lambda!153393 lambda!153392))))

(assert (=> b!4422907 true))

(declare-fun bs!755378 () Bool)

(declare-fun b!4422905 () Bool)

(assert (= bs!755378 (and b!4422905 b!4422909)))

(declare-fun lambda!153394 () Int)

(assert (=> bs!755378 (= (= (toList!3470 lt!1622127) (t!356622 (toList!3470 lt!1622127))) (= lambda!153394 lambda!153392))))

(declare-fun bs!755379 () Bool)

(assert (= bs!755379 (and b!4422905 b!4422907)))

(assert (=> bs!755379 (= (= (toList!3470 lt!1622127) (Cons!49560 (h!55239 (toList!3470 lt!1622127)) (t!356622 (toList!3470 lt!1622127)))) (= lambda!153394 lambda!153393))))

(assert (=> b!4422905 true))

(declare-fun res!1828178 () Bool)

(declare-fun e!2753876 () Bool)

(assert (=> b!4422905 (=> (not res!1828178) (not e!2753876))))

(declare-fun lt!1622508 () List!49687)

(declare-fun forall!9547 (List!49687 Int) Bool)

(assert (=> b!4422905 (= res!1828178 (forall!9547 lt!1622508 lambda!153394))))

(declare-fun d!1340209 () Bool)

(assert (=> d!1340209 e!2753876))

(declare-fun res!1828179 () Bool)

(assert (=> d!1340209 (=> (not res!1828179) (not e!2753876))))

(declare-fun noDuplicate!655 (List!49687) Bool)

(assert (=> d!1340209 (= res!1828179 (noDuplicate!655 lt!1622508))))

(declare-fun e!2753878 () List!49687)

(assert (=> d!1340209 (= lt!1622508 e!2753878)))

(declare-fun c!752848 () Bool)

(assert (=> d!1340209 (= c!752848 ((_ is Cons!49560) (toList!3470 lt!1622127)))))

(assert (=> d!1340209 (invariantList!799 (toList!3470 lt!1622127))))

(assert (=> d!1340209 (= (getKeysList!247 (toList!3470 lt!1622127)) lt!1622508)))

(declare-fun b!4422906 () Bool)

(declare-fun res!1828177 () Bool)

(assert (=> b!4422906 (=> (not res!1828177) (not e!2753876))))

(declare-fun length!166 (List!49687) Int)

(declare-fun length!167 (List!49684) Int)

(assert (=> b!4422906 (= res!1828177 (= (length!166 lt!1622508) (length!167 (toList!3470 lt!1622127))))))

(assert (=> b!4422907 (= e!2753878 (Cons!49563 (_1!27965 (h!55239 (toList!3470 lt!1622127))) (getKeysList!247 (t!356622 (toList!3470 lt!1622127)))))))

(declare-fun c!752847 () Bool)

(assert (=> b!4422907 (= c!752847 (containsKey!1097 (t!356622 (toList!3470 lt!1622127)) (_1!27965 (h!55239 (toList!3470 lt!1622127)))))))

(declare-fun lt!1622507 () Unit!81469)

(declare-fun e!2753877 () Unit!81469)

(assert (=> b!4422907 (= lt!1622507 e!2753877)))

(declare-fun c!752846 () Bool)

(assert (=> b!4422907 (= c!752846 (contains!12056 (getKeysList!247 (t!356622 (toList!3470 lt!1622127))) (_1!27965 (h!55239 (toList!3470 lt!1622127)))))))

(declare-fun lt!1622510 () Unit!81469)

(declare-fun e!2753875 () Unit!81469)

(assert (=> b!4422907 (= lt!1622510 e!2753875)))

(declare-fun lt!1622504 () List!49687)

(assert (=> b!4422907 (= lt!1622504 (getKeysList!247 (t!356622 (toList!3470 lt!1622127))))))

(declare-fun lt!1622505 () Unit!81469)

(declare-fun lemmaForallContainsAddHeadPreserves!77 (List!49684 List!49687 tuple2!49342) Unit!81469)

(assert (=> b!4422907 (= lt!1622505 (lemmaForallContainsAddHeadPreserves!77 (t!356622 (toList!3470 lt!1622127)) lt!1622504 (h!55239 (toList!3470 lt!1622127))))))

(assert (=> b!4422907 (forall!9547 lt!1622504 lambda!153393)))

(declare-fun lt!1622506 () Unit!81469)

(assert (=> b!4422907 (= lt!1622506 lt!1622505)))

(declare-fun b!4422908 () Bool)

(assert (=> b!4422908 false))

(declare-fun Unit!81519 () Unit!81469)

(assert (=> b!4422908 (= e!2753877 Unit!81519)))

(assert (=> b!4422909 false))

(declare-fun lt!1622509 () Unit!81469)

(declare-fun forallContained!2084 (List!49687 Int K!10925) Unit!81469)

(assert (=> b!4422909 (= lt!1622509 (forallContained!2084 (getKeysList!247 (t!356622 (toList!3470 lt!1622127))) lambda!153392 (_1!27965 (h!55239 (toList!3470 lt!1622127)))))))

(declare-fun Unit!81520 () Unit!81469)

(assert (=> b!4422909 (= e!2753875 Unit!81520)))

(declare-fun b!4422910 () Bool)

(declare-fun Unit!81521 () Unit!81469)

(assert (=> b!4422910 (= e!2753877 Unit!81521)))

(declare-fun b!4422911 () Bool)

(assert (=> b!4422911 (= e!2753878 Nil!49563)))

(declare-fun b!4422912 () Bool)

(declare-fun Unit!81522 () Unit!81469)

(assert (=> b!4422912 (= e!2753875 Unit!81522)))

(declare-fun b!4422913 () Bool)

(declare-fun lambda!153395 () Int)

(declare-fun content!7945 (List!49687) (InoxSet K!10925))

(declare-fun map!10823 (List!49684 Int) List!49687)

(assert (=> b!4422913 (= e!2753876 (= (content!7945 lt!1622508) (content!7945 (map!10823 (toList!3470 lt!1622127) lambda!153395))))))

(assert (= (and d!1340209 c!752848) b!4422907))

(assert (= (and d!1340209 (not c!752848)) b!4422911))

(assert (= (and b!4422907 c!752847) b!4422908))

(assert (= (and b!4422907 (not c!752847)) b!4422910))

(assert (= (and b!4422907 c!752846) b!4422909))

(assert (= (and b!4422907 (not c!752846)) b!4422912))

(assert (= (and d!1340209 res!1828179) b!4422906))

(assert (= (and b!4422906 res!1828177) b!4422905))

(assert (= (and b!4422905 res!1828178) b!4422913))

(declare-fun m!5101221 () Bool)

(assert (=> d!1340209 m!5101221))

(declare-fun m!5101223 () Bool)

(assert (=> d!1340209 m!5101223))

(declare-fun m!5101225 () Bool)

(assert (=> b!4422906 m!5101225))

(declare-fun m!5101227 () Bool)

(assert (=> b!4422906 m!5101227))

(declare-fun m!5101229 () Bool)

(assert (=> b!4422905 m!5101229))

(declare-fun m!5101231 () Bool)

(assert (=> b!4422913 m!5101231))

(declare-fun m!5101233 () Bool)

(assert (=> b!4422913 m!5101233))

(assert (=> b!4422913 m!5101233))

(declare-fun m!5101235 () Bool)

(assert (=> b!4422913 m!5101235))

(declare-fun m!5101237 () Bool)

(assert (=> b!4422909 m!5101237))

(assert (=> b!4422909 m!5101237))

(declare-fun m!5101239 () Bool)

(assert (=> b!4422909 m!5101239))

(declare-fun m!5101241 () Bool)

(assert (=> b!4422907 m!5101241))

(declare-fun m!5101243 () Bool)

(assert (=> b!4422907 m!5101243))

(assert (=> b!4422907 m!5101237))

(declare-fun m!5101245 () Bool)

(assert (=> b!4422907 m!5101245))

(assert (=> b!4422907 m!5101237))

(declare-fun m!5101247 () Bool)

(assert (=> b!4422907 m!5101247))

(assert (=> b!4422636 d!1340209))

(declare-fun d!1340239 () Bool)

(declare-fun noDuplicatedKeys!172 (List!49684) Bool)

(assert (=> d!1340239 (= (invariantList!799 (toList!3470 lt!1622215)) (noDuplicatedKeys!172 (toList!3470 lt!1622215)))))

(declare-fun bs!755380 () Bool)

(assert (= bs!755380 d!1340239))

(declare-fun m!5101249 () Bool)

(assert (=> bs!755380 m!5101249))

(assert (=> d!1340057 d!1340239))

(declare-fun d!1340241 () Bool)

(declare-fun res!1828180 () Bool)

(declare-fun e!2753879 () Bool)

(assert (=> d!1340241 (=> res!1828180 e!2753879)))

(assert (=> d!1340241 (= res!1828180 ((_ is Nil!49561) (toList!3469 lt!1622117)))))

(assert (=> d!1340241 (= (forall!9544 (toList!3469 lt!1622117) lambda!153286) e!2753879)))

(declare-fun b!4422916 () Bool)

(declare-fun e!2753880 () Bool)

(assert (=> b!4422916 (= e!2753879 e!2753880)))

(declare-fun res!1828181 () Bool)

(assert (=> b!4422916 (=> (not res!1828181) (not e!2753880))))

(assert (=> b!4422916 (= res!1828181 (dynLambda!20836 lambda!153286 (h!55240 (toList!3469 lt!1622117))))))

(declare-fun b!4422917 () Bool)

(assert (=> b!4422917 (= e!2753880 (forall!9544 (t!356623 (toList!3469 lt!1622117)) lambda!153286))))

(assert (= (and d!1340241 (not res!1828180)) b!4422916))

(assert (= (and b!4422916 res!1828181) b!4422917))

(declare-fun b_lambda!142733 () Bool)

(assert (=> (not b_lambda!142733) (not b!4422916)))

(declare-fun m!5101251 () Bool)

(assert (=> b!4422916 m!5101251))

(declare-fun m!5101253 () Bool)

(assert (=> b!4422917 m!5101253))

(assert (=> d!1340057 d!1340241))

(declare-fun d!1340243 () Bool)

(declare-fun isEmpty!28336 (Option!10714) Bool)

(assert (=> d!1340243 (= (isDefined!8007 (getValueByKey!700 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) key!3717)) (not (isEmpty!28336 (getValueByKey!700 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) key!3717))))))

(declare-fun bs!755381 () Bool)

(assert (= bs!755381 d!1340243))

(assert (=> bs!755381 m!5100831))

(declare-fun m!5101255 () Bool)

(assert (=> bs!755381 m!5101255))

(assert (=> b!4422620 d!1340243))

(declare-fun b!4422941 () Bool)

(declare-fun e!2753893 () Option!10714)

(declare-fun e!2753894 () Option!10714)

(assert (=> b!4422941 (= e!2753893 e!2753894)))

(declare-fun c!752860 () Bool)

(assert (=> b!4422941 (= c!752860 (and ((_ is Cons!49560) (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))) (not (= (_1!27965 (h!55239 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))))) key!3717))))))

(declare-fun b!4422943 () Bool)

(assert (=> b!4422943 (= e!2753894 None!10713)))

(declare-fun b!4422940 () Bool)

(assert (=> b!4422940 (= e!2753893 (Some!10713 (_2!27965 (h!55239 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))))))))

(declare-fun d!1340245 () Bool)

(declare-fun c!752859 () Bool)

(assert (=> d!1340245 (= c!752859 (and ((_ is Cons!49560) (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))) (= (_1!27965 (h!55239 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))))) key!3717)))))

(assert (=> d!1340245 (= (getValueByKey!700 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) key!3717) e!2753893)))

(declare-fun b!4422942 () Bool)

(assert (=> b!4422942 (= e!2753894 (getValueByKey!700 (t!356622 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))) key!3717))))

(assert (= (and d!1340245 c!752859) b!4422940))

(assert (= (and d!1340245 (not c!752859)) b!4422941))

(assert (= (and b!4422941 c!752860) b!4422942))

(assert (= (and b!4422941 (not c!752860)) b!4422943))

(declare-fun m!5101257 () Bool)

(assert (=> b!4422942 m!5101257))

(assert (=> b!4422620 d!1340245))

(declare-fun d!1340247 () Bool)

(assert (=> d!1340247 (= (get!16148 (getValueByKey!699 (toList!3469 lm!1616) (_1!27966 (h!55240 (toList!3469 lm!1616))))) (v!43888 (getValueByKey!699 (toList!3469 lm!1616) (_1!27966 (h!55240 (toList!3469 lm!1616))))))))

(assert (=> d!1340031 d!1340247))

(declare-fun b!4422949 () Bool)

(declare-fun e!2753895 () Option!10713)

(declare-fun e!2753896 () Option!10713)

(assert (=> b!4422949 (= e!2753895 e!2753896)))

(declare-fun c!752862 () Bool)

(assert (=> b!4422949 (= c!752862 (and ((_ is Cons!49561) (toList!3469 lm!1616)) (not (= (_1!27966 (h!55240 (toList!3469 lm!1616))) (_1!27966 (h!55240 (toList!3469 lm!1616)))))))))

(declare-fun b!4422951 () Bool)

(assert (=> b!4422951 (= e!2753896 None!10712)))

(declare-fun d!1340249 () Bool)

(declare-fun c!752861 () Bool)

(assert (=> d!1340249 (= c!752861 (and ((_ is Cons!49561) (toList!3469 lm!1616)) (= (_1!27966 (h!55240 (toList!3469 lm!1616))) (_1!27966 (h!55240 (toList!3469 lm!1616))))))))

(assert (=> d!1340249 (= (getValueByKey!699 (toList!3469 lm!1616) (_1!27966 (h!55240 (toList!3469 lm!1616)))) e!2753895)))

(declare-fun b!4422948 () Bool)

(assert (=> b!4422948 (= e!2753895 (Some!10712 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))

(declare-fun b!4422950 () Bool)

(assert (=> b!4422950 (= e!2753896 (getValueByKey!699 (t!356623 (toList!3469 lm!1616)) (_1!27966 (h!55240 (toList!3469 lm!1616)))))))

(assert (= (and d!1340249 c!752861) b!4422948))

(assert (= (and d!1340249 (not c!752861)) b!4422949))

(assert (= (and b!4422949 c!752862) b!4422950))

(assert (= (and b!4422949 (not c!752862)) b!4422951))

(declare-fun m!5101259 () Bool)

(assert (=> b!4422950 m!5101259))

(assert (=> d!1340031 d!1340249))

(assert (=> d!1340033 d!1340029))

(assert (=> d!1340033 d!1340031))

(declare-fun d!1340251 () Bool)

(assert (=> d!1340251 (not (containsKey!1093 (apply!11593 lm!1616 (_1!27966 (h!55240 (toList!3469 lm!1616)))) key!3717))))

(assert (=> d!1340251 true))

(declare-fun _$39!349 () Unit!81469)

(assert (=> d!1340251 (= (choose!27877 lm!1616 key!3717 (_1!27966 (h!55240 (toList!3469 lm!1616))) hashF!1220) _$39!349)))

(declare-fun bs!755382 () Bool)

(assert (= bs!755382 d!1340251))

(assert (=> bs!755382 m!5100517))

(assert (=> bs!755382 m!5100517))

(assert (=> bs!755382 m!5100519))

(assert (=> d!1340033 d!1340251))

(declare-fun d!1340253 () Bool)

(declare-fun res!1828188 () Bool)

(declare-fun e!2753897 () Bool)

(assert (=> d!1340253 (=> res!1828188 e!2753897)))

(assert (=> d!1340253 (= res!1828188 ((_ is Nil!49561) (toList!3469 lm!1616)))))

(assert (=> d!1340253 (= (forall!9544 (toList!3469 lm!1616) lambda!153273) e!2753897)))

(declare-fun b!4422952 () Bool)

(declare-fun e!2753898 () Bool)

(assert (=> b!4422952 (= e!2753897 e!2753898)))

(declare-fun res!1828189 () Bool)

(assert (=> b!4422952 (=> (not res!1828189) (not e!2753898))))

(assert (=> b!4422952 (= res!1828189 (dynLambda!20836 lambda!153273 (h!55240 (toList!3469 lm!1616))))))

(declare-fun b!4422953 () Bool)

(assert (=> b!4422953 (= e!2753898 (forall!9544 (t!356623 (toList!3469 lm!1616)) lambda!153273))))

(assert (= (and d!1340253 (not res!1828188)) b!4422952))

(assert (= (and b!4422952 res!1828189) b!4422953))

(declare-fun b_lambda!142735 () Bool)

(assert (=> (not b_lambda!142735) (not b!4422952)))

(declare-fun m!5101261 () Bool)

(assert (=> b!4422952 m!5101261))

(declare-fun m!5101263 () Bool)

(assert (=> b!4422953 m!5101263))

(assert (=> d!1340033 d!1340253))

(declare-fun d!1340255 () Bool)

(declare-fun res!1828190 () Bool)

(declare-fun e!2753899 () Bool)

(assert (=> d!1340255 (=> res!1828190 e!2753899)))

(assert (=> d!1340255 (= res!1828190 (and ((_ is Cons!49560) (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))) (= (_1!27965 (h!55239 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))))) key!3717)))))

(assert (=> d!1340255 (= (containsKey!1097 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) key!3717) e!2753899)))

(declare-fun b!4422954 () Bool)

(declare-fun e!2753900 () Bool)

(assert (=> b!4422954 (= e!2753899 e!2753900)))

(declare-fun res!1828191 () Bool)

(assert (=> b!4422954 (=> (not res!1828191) (not e!2753900))))

(assert (=> b!4422954 (= res!1828191 ((_ is Cons!49560) (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))))))

(declare-fun b!4422955 () Bool)

(assert (=> b!4422955 (= e!2753900 (containsKey!1097 (t!356622 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))) key!3717))))

(assert (= (and d!1340255 (not res!1828190)) b!4422954))

(assert (= (and b!4422954 res!1828191) b!4422955))

(declare-fun m!5101265 () Bool)

(assert (=> b!4422955 m!5101265))

(assert (=> d!1340097 d!1340255))

(declare-fun d!1340257 () Bool)

(declare-fun res!1828199 () Bool)

(declare-fun e!2753909 () Bool)

(assert (=> d!1340257 (=> res!1828199 e!2753909)))

(assert (=> d!1340257 (= res!1828199 ((_ is Nil!49560) newBucket!194))))

(assert (=> d!1340257 (= (forall!9546 newBucket!194 lambda!153276) e!2753909)))

(declare-fun b!4422971 () Bool)

(declare-fun e!2753910 () Bool)

(assert (=> b!4422971 (= e!2753909 e!2753910)))

(declare-fun res!1828200 () Bool)

(assert (=> b!4422971 (=> (not res!1828200) (not e!2753910))))

(declare-fun dynLambda!20838 (Int tuple2!49342) Bool)

(assert (=> b!4422971 (= res!1828200 (dynLambda!20838 lambda!153276 (h!55239 newBucket!194)))))

(declare-fun b!4422972 () Bool)

(assert (=> b!4422972 (= e!2753910 (forall!9546 (t!356622 newBucket!194) lambda!153276))))

(assert (= (and d!1340257 (not res!1828199)) b!4422971))

(assert (= (and b!4422971 res!1828200) b!4422972))

(declare-fun b_lambda!142737 () Bool)

(assert (=> (not b_lambda!142737) (not b!4422971)))

(declare-fun m!5101267 () Bool)

(assert (=> b!4422971 m!5101267))

(declare-fun m!5101269 () Bool)

(assert (=> b!4422972 m!5101269))

(assert (=> d!1340041 d!1340257))

(declare-fun d!1340259 () Bool)

(assert (=> d!1340259 (= (invariantList!799 (toList!3470 lt!1622216)) (noDuplicatedKeys!172 (toList!3470 lt!1622216)))))

(declare-fun bs!755386 () Bool)

(assert (= bs!755386 d!1340259))

(declare-fun m!5101271 () Bool)

(assert (=> bs!755386 m!5101271))

(assert (=> d!1340059 d!1340259))

(declare-fun d!1340261 () Bool)

(declare-fun res!1828201 () Bool)

(declare-fun e!2753911 () Bool)

(assert (=> d!1340261 (=> res!1828201 e!2753911)))

(assert (=> d!1340261 (= res!1828201 ((_ is Nil!49561) (toList!3469 (+!1067 lt!1622117 lt!1622124))))))

(assert (=> d!1340261 (= (forall!9544 (toList!3469 (+!1067 lt!1622117 lt!1622124)) lambda!153287) e!2753911)))

(declare-fun b!4422973 () Bool)

(declare-fun e!2753912 () Bool)

(assert (=> b!4422973 (= e!2753911 e!2753912)))

(declare-fun res!1828202 () Bool)

(assert (=> b!4422973 (=> (not res!1828202) (not e!2753912))))

(assert (=> b!4422973 (= res!1828202 (dynLambda!20836 lambda!153287 (h!55240 (toList!3469 (+!1067 lt!1622117 lt!1622124)))))))

(declare-fun b!4422974 () Bool)

(assert (=> b!4422974 (= e!2753912 (forall!9544 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))) lambda!153287))))

(assert (= (and d!1340261 (not res!1828201)) b!4422973))

(assert (= (and b!4422973 res!1828202) b!4422974))

(declare-fun b_lambda!142739 () Bool)

(assert (=> (not b_lambda!142739) (not b!4422973)))

(declare-fun m!5101273 () Bool)

(assert (=> b!4422973 m!5101273))

(declare-fun m!5101275 () Bool)

(assert (=> b!4422974 m!5101275))

(assert (=> d!1340059 d!1340261))

(declare-fun d!1340263 () Bool)

(declare-fun isEmpty!28338 (Option!10713) Bool)

(assert (=> d!1340263 (= (isDefined!8004 (getValueByKey!699 (toList!3469 lm!1616) hash!366)) (not (isEmpty!28338 (getValueByKey!699 (toList!3469 lm!1616) hash!366))))))

(declare-fun bs!755395 () Bool)

(assert (= bs!755395 d!1340263))

(assert (=> bs!755395 m!5100593))

(declare-fun m!5101277 () Bool)

(assert (=> bs!755395 m!5101277))

(assert (=> b!4422488 d!1340263))

(declare-fun b!4422976 () Bool)

(declare-fun e!2753913 () Option!10713)

(declare-fun e!2753914 () Option!10713)

(assert (=> b!4422976 (= e!2753913 e!2753914)))

(declare-fun c!752867 () Bool)

(assert (=> b!4422976 (= c!752867 (and ((_ is Cons!49561) (toList!3469 lm!1616)) (not (= (_1!27966 (h!55240 (toList!3469 lm!1616))) hash!366))))))

(declare-fun b!4422978 () Bool)

(assert (=> b!4422978 (= e!2753914 None!10712)))

(declare-fun d!1340265 () Bool)

(declare-fun c!752866 () Bool)

(assert (=> d!1340265 (= c!752866 (and ((_ is Cons!49561) (toList!3469 lm!1616)) (= (_1!27966 (h!55240 (toList!3469 lm!1616))) hash!366)))))

(assert (=> d!1340265 (= (getValueByKey!699 (toList!3469 lm!1616) hash!366) e!2753913)))

(declare-fun b!4422975 () Bool)

(assert (=> b!4422975 (= e!2753913 (Some!10712 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))

(declare-fun b!4422977 () Bool)

(assert (=> b!4422977 (= e!2753914 (getValueByKey!699 (t!356623 (toList!3469 lm!1616)) hash!366))))

(assert (= (and d!1340265 c!752866) b!4422975))

(assert (= (and d!1340265 (not c!752866)) b!4422976))

(assert (= (and b!4422976 c!752867) b!4422977))

(assert (= (and b!4422976 (not c!752867)) b!4422978))

(declare-fun m!5101279 () Bool)

(assert (=> b!4422977 m!5101279))

(assert (=> b!4422488 d!1340265))

(declare-fun d!1340267 () Bool)

(declare-fun res!1828203 () Bool)

(declare-fun e!2753915 () Bool)

(assert (=> d!1340267 (=> res!1828203 e!2753915)))

(assert (=> d!1340267 (= res!1828203 (not ((_ is Cons!49560) (_2!27966 (tuple2!49345 hash!366 newBucket!194)))))))

(assert (=> d!1340267 (= (noDuplicateKeys!741 (_2!27966 (tuple2!49345 hash!366 newBucket!194))) e!2753915)))

(declare-fun b!4422979 () Bool)

(declare-fun e!2753916 () Bool)

(assert (=> b!4422979 (= e!2753915 e!2753916)))

(declare-fun res!1828204 () Bool)

(assert (=> b!4422979 (=> (not res!1828204) (not e!2753916))))

(assert (=> b!4422979 (= res!1828204 (not (containsKey!1093 (t!356622 (_2!27966 (tuple2!49345 hash!366 newBucket!194))) (_1!27965 (h!55239 (_2!27966 (tuple2!49345 hash!366 newBucket!194)))))))))

(declare-fun b!4422980 () Bool)

(assert (=> b!4422980 (= e!2753916 (noDuplicateKeys!741 (t!356622 (_2!27966 (tuple2!49345 hash!366 newBucket!194)))))))

(assert (= (and d!1340267 (not res!1828203)) b!4422979))

(assert (= (and b!4422979 res!1828204) b!4422980))

(declare-fun m!5101283 () Bool)

(assert (=> b!4422979 m!5101283))

(declare-fun m!5101287 () Bool)

(assert (=> b!4422980 m!5101287))

(assert (=> bs!755342 d!1340267))

(declare-fun b!4422981 () Bool)

(declare-fun e!2753921 () Bool)

(declare-fun e!2753920 () Bool)

(assert (=> b!4422981 (= e!2753921 e!2753920)))

(declare-fun res!1828206 () Bool)

(assert (=> b!4422981 (=> (not res!1828206) (not e!2753920))))

(assert (=> b!4422981 (= res!1828206 (isDefined!8007 (getValueByKey!700 (toList!3470 lt!1622229) (_1!27965 (tuple2!49343 key!3717 newValue!93)))))))

(declare-fun b!4422982 () Bool)

(declare-fun e!2753918 () List!49687)

(assert (=> b!4422982 (= e!2753918 (getKeysList!247 (toList!3470 lt!1622229)))))

(declare-fun b!4422983 () Bool)

(assert (=> b!4422983 false))

(declare-fun lt!1622533 () Unit!81469)

(declare-fun lt!1622536 () Unit!81469)

(assert (=> b!4422983 (= lt!1622533 lt!1622536)))

(assert (=> b!4422983 (containsKey!1097 (toList!3470 lt!1622229) (_1!27965 (tuple2!49343 key!3717 newValue!93)))))

(assert (=> b!4422983 (= lt!1622536 (lemmaInGetKeysListThenContainsKey!245 (toList!3470 lt!1622229) (_1!27965 (tuple2!49343 key!3717 newValue!93))))))

(declare-fun e!2753919 () Unit!81469)

(declare-fun Unit!81523 () Unit!81469)

(assert (=> b!4422983 (= e!2753919 Unit!81523)))

(declare-fun e!2753922 () Bool)

(declare-fun b!4422984 () Bool)

(assert (=> b!4422984 (= e!2753922 (not (contains!12056 (keys!16915 lt!1622229) (_1!27965 (tuple2!49343 key!3717 newValue!93)))))))

(declare-fun d!1340269 () Bool)

(assert (=> d!1340269 e!2753921))

(declare-fun res!1828205 () Bool)

(assert (=> d!1340269 (=> res!1828205 e!2753921)))

(assert (=> d!1340269 (= res!1828205 e!2753922)))

(declare-fun res!1828207 () Bool)

(assert (=> d!1340269 (=> (not res!1828207) (not e!2753922))))

(declare-fun lt!1622539 () Bool)

(assert (=> d!1340269 (= res!1828207 (not lt!1622539))))

(declare-fun lt!1622532 () Bool)

(assert (=> d!1340269 (= lt!1622539 lt!1622532)))

(declare-fun lt!1622535 () Unit!81469)

(declare-fun e!2753917 () Unit!81469)

(assert (=> d!1340269 (= lt!1622535 e!2753917)))

(declare-fun c!752868 () Bool)

(assert (=> d!1340269 (= c!752868 lt!1622532)))

(assert (=> d!1340269 (= lt!1622532 (containsKey!1097 (toList!3470 lt!1622229) (_1!27965 (tuple2!49343 key!3717 newValue!93))))))

(assert (=> d!1340269 (= (contains!12050 lt!1622229 (_1!27965 (tuple2!49343 key!3717 newValue!93))) lt!1622539)))

(declare-fun b!4422985 () Bool)

(declare-fun lt!1622538 () Unit!81469)

(assert (=> b!4422985 (= e!2753917 lt!1622538)))

(declare-fun lt!1622534 () Unit!81469)

(assert (=> b!4422985 (= lt!1622534 (lemmaContainsKeyImpliesGetValueByKeyDefined!610 (toList!3470 lt!1622229) (_1!27965 (tuple2!49343 key!3717 newValue!93))))))

(assert (=> b!4422985 (isDefined!8007 (getValueByKey!700 (toList!3470 lt!1622229) (_1!27965 (tuple2!49343 key!3717 newValue!93))))))

(declare-fun lt!1622537 () Unit!81469)

(assert (=> b!4422985 (= lt!1622537 lt!1622534)))

(assert (=> b!4422985 (= lt!1622538 (lemmaInListThenGetKeysListContains!244 (toList!3470 lt!1622229) (_1!27965 (tuple2!49343 key!3717 newValue!93))))))

(declare-fun call!307688 () Bool)

(assert (=> b!4422985 call!307688))

(declare-fun b!4422986 () Bool)

(declare-fun Unit!81524 () Unit!81469)

(assert (=> b!4422986 (= e!2753919 Unit!81524)))

(declare-fun bm!307683 () Bool)

(assert (=> bm!307683 (= call!307688 (contains!12056 e!2753918 (_1!27965 (tuple2!49343 key!3717 newValue!93))))))

(declare-fun c!752870 () Bool)

(assert (=> bm!307683 (= c!752870 c!752868)))

(declare-fun b!4422987 () Bool)

(assert (=> b!4422987 (= e!2753917 e!2753919)))

(declare-fun c!752869 () Bool)

(assert (=> b!4422987 (= c!752869 call!307688)))

(declare-fun b!4422988 () Bool)

(assert (=> b!4422988 (= e!2753920 (contains!12056 (keys!16915 lt!1622229) (_1!27965 (tuple2!49343 key!3717 newValue!93))))))

(declare-fun b!4422989 () Bool)

(assert (=> b!4422989 (= e!2753918 (keys!16915 lt!1622229))))

(assert (= (and d!1340269 c!752868) b!4422985))

(assert (= (and d!1340269 (not c!752868)) b!4422987))

(assert (= (and b!4422987 c!752869) b!4422983))

(assert (= (and b!4422987 (not c!752869)) b!4422986))

(assert (= (or b!4422985 b!4422987) bm!307683))

(assert (= (and bm!307683 c!752870) b!4422982))

(assert (= (and bm!307683 (not c!752870)) b!4422989))

(assert (= (and d!1340269 res!1828207) b!4422984))

(assert (= (and d!1340269 (not res!1828205)) b!4422981))

(assert (= (and b!4422981 res!1828206) b!4422988))

(assert (=> b!4422981 m!5100723))

(assert (=> b!4422981 m!5100723))

(declare-fun m!5101309 () Bool)

(assert (=> b!4422981 m!5101309))

(declare-fun m!5101311 () Bool)

(assert (=> b!4422982 m!5101311))

(declare-fun m!5101313 () Bool)

(assert (=> b!4422984 m!5101313))

(assert (=> b!4422984 m!5101313))

(declare-fun m!5101315 () Bool)

(assert (=> b!4422984 m!5101315))

(declare-fun m!5101317 () Bool)

(assert (=> b!4422983 m!5101317))

(declare-fun m!5101319 () Bool)

(assert (=> b!4422983 m!5101319))

(assert (=> b!4422988 m!5101313))

(assert (=> b!4422988 m!5101313))

(assert (=> b!4422988 m!5101315))

(assert (=> b!4422989 m!5101313))

(declare-fun m!5101321 () Bool)

(assert (=> bm!307683 m!5101321))

(assert (=> d!1340269 m!5101317))

(declare-fun m!5101323 () Bool)

(assert (=> b!4422985 m!5101323))

(assert (=> b!4422985 m!5100723))

(assert (=> b!4422985 m!5100723))

(assert (=> b!4422985 m!5101309))

(declare-fun m!5101325 () Bool)

(assert (=> b!4422985 m!5101325))

(assert (=> d!1340063 d!1340269))

(declare-fun b!4422991 () Bool)

(declare-fun e!2753923 () Option!10714)

(declare-fun e!2753924 () Option!10714)

(assert (=> b!4422991 (= e!2753923 e!2753924)))

(declare-fun c!752872 () Bool)

(assert (=> b!4422991 (= c!752872 (and ((_ is Cons!49560) lt!1622226) (not (= (_1!27965 (h!55239 lt!1622226)) (_1!27965 (tuple2!49343 key!3717 newValue!93))))))))

(declare-fun b!4422993 () Bool)

(assert (=> b!4422993 (= e!2753924 None!10713)))

(declare-fun b!4422990 () Bool)

(assert (=> b!4422990 (= e!2753923 (Some!10713 (_2!27965 (h!55239 lt!1622226))))))

(declare-fun c!752871 () Bool)

(declare-fun d!1340273 () Bool)

(assert (=> d!1340273 (= c!752871 (and ((_ is Cons!49560) lt!1622226) (= (_1!27965 (h!55239 lt!1622226)) (_1!27965 (tuple2!49343 key!3717 newValue!93)))))))

(assert (=> d!1340273 (= (getValueByKey!700 lt!1622226 (_1!27965 (tuple2!49343 key!3717 newValue!93))) e!2753923)))

(declare-fun b!4422992 () Bool)

(assert (=> b!4422992 (= e!2753924 (getValueByKey!700 (t!356622 lt!1622226) (_1!27965 (tuple2!49343 key!3717 newValue!93))))))

(assert (= (and d!1340273 c!752871) b!4422990))

(assert (= (and d!1340273 (not c!752871)) b!4422991))

(assert (= (and b!4422991 c!752872) b!4422992))

(assert (= (and b!4422991 (not c!752872)) b!4422993))

(declare-fun m!5101327 () Bool)

(assert (=> b!4422992 m!5101327))

(assert (=> d!1340063 d!1340273))

(declare-fun d!1340275 () Bool)

(assert (=> d!1340275 (= (getValueByKey!700 lt!1622226 (_1!27965 (tuple2!49343 key!3717 newValue!93))) (Some!10713 (_2!27965 (tuple2!49343 key!3717 newValue!93))))))

(declare-fun lt!1622553 () Unit!81469)

(declare-fun choose!27887 (List!49684 K!10925 V!11171) Unit!81469)

(assert (=> d!1340275 (= lt!1622553 (choose!27887 lt!1622226 (_1!27965 (tuple2!49343 key!3717 newValue!93)) (_2!27965 (tuple2!49343 key!3717 newValue!93))))))

(declare-fun e!2753943 () Bool)

(assert (=> d!1340275 e!2753943))

(declare-fun res!1828225 () Bool)

(assert (=> d!1340275 (=> (not res!1828225) (not e!2753943))))

(assert (=> d!1340275 (= res!1828225 (invariantList!799 lt!1622226))))

(assert (=> d!1340275 (= (lemmaContainsTupThenGetReturnValue!435 lt!1622226 (_1!27965 (tuple2!49343 key!3717 newValue!93)) (_2!27965 (tuple2!49343 key!3717 newValue!93))) lt!1622553)))

(declare-fun b!4423017 () Bool)

(declare-fun res!1828226 () Bool)

(assert (=> b!4423017 (=> (not res!1828226) (not e!2753943))))

(assert (=> b!4423017 (= res!1828226 (containsKey!1097 lt!1622226 (_1!27965 (tuple2!49343 key!3717 newValue!93))))))

(declare-fun b!4423018 () Bool)

(assert (=> b!4423018 (= e!2753943 (contains!12055 lt!1622226 (tuple2!49343 (_1!27965 (tuple2!49343 key!3717 newValue!93)) (_2!27965 (tuple2!49343 key!3717 newValue!93)))))))

(assert (= (and d!1340275 res!1828225) b!4423017))

(assert (= (and b!4423017 res!1828226) b!4423018))

(assert (=> d!1340275 m!5100717))

(declare-fun m!5101363 () Bool)

(assert (=> d!1340275 m!5101363))

(declare-fun m!5101365 () Bool)

(assert (=> d!1340275 m!5101365))

(declare-fun m!5101367 () Bool)

(assert (=> b!4423017 m!5101367))

(declare-fun m!5101369 () Bool)

(assert (=> b!4423018 m!5101369))

(assert (=> d!1340063 d!1340275))

(declare-fun e!2753989 () List!49684)

(declare-fun b!4423096 () Bool)

(assert (=> b!4423096 (= e!2753989 (insertNoDuplicatedKeys!189 (t!356622 (toList!3470 lt!1622116)) (_1!27965 (tuple2!49343 key!3717 newValue!93)) (_2!27965 (tuple2!49343 key!3717 newValue!93))))))

(declare-fun call!307707 () List!49687)

(declare-fun c!752901 () Bool)

(declare-fun bm!307700 () Bool)

(declare-fun lt!1622629 () List!49684)

(assert (=> bm!307700 (= call!307707 (getKeysList!247 (ite c!752901 (toList!3470 lt!1622116) lt!1622629)))))

(declare-fun bm!307701 () Bool)

(declare-fun call!307708 () List!49684)

(declare-fun call!307706 () List!49684)

(assert (=> bm!307701 (= call!307708 call!307706)))

(declare-fun c!752900 () Bool)

(declare-fun c!752898 () Bool)

(assert (=> bm!307701 (= c!752900 c!752898)))

(declare-fun b!4423097 () Bool)

(assert (=> b!4423097 (= c!752898 ((_ is Cons!49560) (toList!3470 lt!1622116)))))

(declare-fun e!2753994 () List!49684)

(declare-fun e!2753996 () List!49684)

(assert (=> b!4423097 (= e!2753994 e!2753996)))

(declare-fun b!4423098 () Bool)

(assert (=> b!4423098 false))

(declare-fun lt!1622621 () Unit!81469)

(declare-fun lt!1622624 () Unit!81469)

(assert (=> b!4423098 (= lt!1622621 lt!1622624)))

(assert (=> b!4423098 (containsKey!1097 (t!356622 (toList!3470 lt!1622116)) (_1!27965 (h!55239 (toList!3470 lt!1622116))))))

(assert (=> b!4423098 (= lt!1622624 (lemmaInGetKeysListThenContainsKey!245 (t!356622 (toList!3470 lt!1622116)) (_1!27965 (h!55239 (toList!3470 lt!1622116)))))))

(declare-fun lt!1622626 () Unit!81469)

(declare-fun lt!1622630 () Unit!81469)

(assert (=> b!4423098 (= lt!1622626 lt!1622630)))

(assert (=> b!4423098 (contains!12056 call!307707 (_1!27965 (h!55239 (toList!3470 lt!1622116))))))

(assert (=> b!4423098 (= lt!1622630 (lemmaInListThenGetKeysListContains!244 lt!1622629 (_1!27965 (h!55239 (toList!3470 lt!1622116)))))))

(assert (=> b!4423098 (= lt!1622629 (insertNoDuplicatedKeys!189 (t!356622 (toList!3470 lt!1622116)) (_1!27965 (tuple2!49343 key!3717 newValue!93)) (_2!27965 (tuple2!49343 key!3717 newValue!93))))))

(declare-fun e!2753995 () Unit!81469)

(declare-fun Unit!81529 () Unit!81469)

(assert (=> b!4423098 (= e!2753995 Unit!81529)))

(declare-fun bm!307702 () Bool)

(declare-fun call!307705 () List!49684)

(declare-fun c!752899 () Bool)

(declare-fun $colon$colon!779 (List!49684 tuple2!49342) List!49684)

(assert (=> bm!307702 (= call!307705 ($colon$colon!779 (ite c!752901 (t!356622 (toList!3470 lt!1622116)) (ite c!752899 (toList!3470 lt!1622116) e!2753989)) (ite (or c!752901 c!752899) (tuple2!49343 (_1!27965 (tuple2!49343 key!3717 newValue!93)) (_2!27965 (tuple2!49343 key!3717 newValue!93))) (ite c!752898 (h!55239 (toList!3470 lt!1622116)) (tuple2!49343 (_1!27965 (tuple2!49343 key!3717 newValue!93)) (_2!27965 (tuple2!49343 key!3717 newValue!93)))))))))

(declare-fun b!4423099 () Bool)

(declare-fun lt!1622631 () List!49684)

(assert (=> b!4423099 (= e!2753996 lt!1622631)))

(assert (=> b!4423099 (= lt!1622631 call!307708)))

(declare-fun c!752897 () Bool)

(assert (=> b!4423099 (= c!752897 (containsKey!1097 (insertNoDuplicatedKeys!189 (t!356622 (toList!3470 lt!1622116)) (_1!27965 (tuple2!49343 key!3717 newValue!93)) (_2!27965 (tuple2!49343 key!3717 newValue!93))) (_1!27965 (h!55239 (toList!3470 lt!1622116)))))))

(declare-fun lt!1622628 () Unit!81469)

(assert (=> b!4423099 (= lt!1622628 e!2753995)))

(declare-fun b!4423100 () Bool)

(declare-fun e!2753992 () Bool)

(assert (=> b!4423100 (= e!2753992 (not (containsKey!1097 (toList!3470 lt!1622116) (_1!27965 (tuple2!49343 key!3717 newValue!93)))))))

(declare-fun lt!1622627 () List!49684)

(declare-fun e!2753990 () Bool)

(declare-fun b!4423101 () Bool)

(assert (=> b!4423101 (= e!2753990 (= (content!7945 (getKeysList!247 lt!1622627)) ((_ map or) (content!7945 (getKeysList!247 (toList!3470 lt!1622116))) (store ((as const (Array K!10925 Bool)) false) (_1!27965 (tuple2!49343 key!3717 newValue!93)) true))))))

(declare-fun b!4423102 () Bool)

(assert (=> b!4423102 (= e!2753996 call!307708)))

(declare-fun d!1340285 () Bool)

(assert (=> d!1340285 e!2753990))

(declare-fun res!1828264 () Bool)

(assert (=> d!1340285 (=> (not res!1828264) (not e!2753990))))

(assert (=> d!1340285 (= res!1828264 (invariantList!799 lt!1622627))))

(declare-fun e!2753997 () List!49684)

(assert (=> d!1340285 (= lt!1622627 e!2753997)))

(assert (=> d!1340285 (= c!752901 (and ((_ is Cons!49560) (toList!3470 lt!1622116)) (= (_1!27965 (h!55239 (toList!3470 lt!1622116))) (_1!27965 (tuple2!49343 key!3717 newValue!93)))))))

(assert (=> d!1340285 (invariantList!799 (toList!3470 lt!1622116))))

(assert (=> d!1340285 (= (insertNoDuplicatedKeys!189 (toList!3470 lt!1622116) (_1!27965 (tuple2!49343 key!3717 newValue!93)) (_2!27965 (tuple2!49343 key!3717 newValue!93))) lt!1622627)))

(declare-fun b!4423103 () Bool)

(assert (=> b!4423103 (= e!2753994 call!307706)))

(declare-fun b!4423104 () Bool)

(assert (=> b!4423104 (= e!2753997 e!2753994)))

(declare-fun res!1828261 () Bool)

(assert (=> b!4423104 (= res!1828261 ((_ is Cons!49560) (toList!3470 lt!1622116)))))

(assert (=> b!4423104 (=> (not res!1828261) (not e!2753992))))

(assert (=> b!4423104 (= c!752899 e!2753992)))

(declare-fun b!4423105 () Bool)

(assert (=> b!4423105 (= e!2753997 call!307705)))

(declare-fun lt!1622623 () List!49687)

(assert (=> b!4423105 (= lt!1622623 call!307707)))

(declare-fun lt!1622625 () Unit!81469)

(declare-fun lemmaSubseqRefl!96 (List!49687) Unit!81469)

(assert (=> b!4423105 (= lt!1622625 (lemmaSubseqRefl!96 lt!1622623))))

(declare-fun subseq!612 (List!49687 List!49687) Bool)

(assert (=> b!4423105 (subseq!612 lt!1622623 lt!1622623)))

(declare-fun lt!1622622 () Unit!81469)

(assert (=> b!4423105 (= lt!1622622 lt!1622625)))

(declare-fun bm!307703 () Bool)

(assert (=> bm!307703 (= call!307706 call!307705)))

(declare-fun b!4423106 () Bool)

(declare-fun res!1828262 () Bool)

(assert (=> b!4423106 (=> (not res!1828262) (not e!2753990))))

(assert (=> b!4423106 (= res!1828262 (contains!12055 lt!1622627 (tuple2!49343 (_1!27965 (tuple2!49343 key!3717 newValue!93)) (_2!27965 (tuple2!49343 key!3717 newValue!93)))))))

(declare-fun b!4423107 () Bool)

(declare-fun res!1828263 () Bool)

(assert (=> b!4423107 (=> (not res!1828263) (not e!2753990))))

(assert (=> b!4423107 (= res!1828263 (containsKey!1097 lt!1622627 (_1!27965 (tuple2!49343 key!3717 newValue!93))))))

(declare-fun b!4423108 () Bool)

(declare-fun Unit!81530 () Unit!81469)

(assert (=> b!4423108 (= e!2753995 Unit!81530)))

(declare-fun b!4423109 () Bool)

(assert (=> b!4423109 (= e!2753989 Nil!49560)))

(assert (= (and d!1340285 c!752901) b!4423105))

(assert (= (and d!1340285 (not c!752901)) b!4423104))

(assert (= (and b!4423104 res!1828261) b!4423100))

(assert (= (and b!4423104 c!752899) b!4423103))

(assert (= (and b!4423104 (not c!752899)) b!4423097))

(assert (= (and b!4423097 c!752898) b!4423099))

(assert (= (and b!4423097 (not c!752898)) b!4423102))

(assert (= (and b!4423099 c!752897) b!4423098))

(assert (= (and b!4423099 (not c!752897)) b!4423108))

(assert (= (or b!4423099 b!4423102) bm!307701))

(assert (= (and bm!307701 c!752900) b!4423096))

(assert (= (and bm!307701 (not c!752900)) b!4423109))

(assert (= (or b!4423103 bm!307701) bm!307703))

(assert (= (or b!4423105 b!4423098) bm!307700))

(assert (= (or b!4423105 bm!307703) bm!307702))

(assert (= (and d!1340285 res!1828264) b!4423107))

(assert (= (and b!4423107 res!1828263) b!4423106))

(assert (= (and b!4423106 res!1828262) b!4423101))

(declare-fun m!5101493 () Bool)

(assert (=> d!1340285 m!5101493))

(declare-fun m!5101495 () Bool)

(assert (=> d!1340285 m!5101495))

(declare-fun m!5101497 () Bool)

(assert (=> bm!307702 m!5101497))

(declare-fun m!5101499 () Bool)

(assert (=> b!4423105 m!5101499))

(declare-fun m!5101501 () Bool)

(assert (=> b!4423105 m!5101501))

(declare-fun m!5101503 () Bool)

(assert (=> b!4423096 m!5101503))

(declare-fun m!5101505 () Bool)

(assert (=> b!4423098 m!5101505))

(assert (=> b!4423098 m!5101503))

(declare-fun m!5101507 () Bool)

(assert (=> b!4423098 m!5101507))

(declare-fun m!5101509 () Bool)

(assert (=> b!4423098 m!5101509))

(declare-fun m!5101511 () Bool)

(assert (=> b!4423098 m!5101511))

(declare-fun m!5101513 () Bool)

(assert (=> b!4423106 m!5101513))

(declare-fun m!5101515 () Bool)

(assert (=> b!4423107 m!5101515))

(declare-fun m!5101517 () Bool)

(assert (=> b!4423100 m!5101517))

(declare-fun m!5101519 () Bool)

(assert (=> b!4423101 m!5101519))

(assert (=> b!4423101 m!5101519))

(declare-fun m!5101521 () Bool)

(assert (=> b!4423101 m!5101521))

(declare-fun m!5101523 () Bool)

(assert (=> b!4423101 m!5101523))

(assert (=> b!4423101 m!5101523))

(declare-fun m!5101525 () Bool)

(assert (=> b!4423101 m!5101525))

(declare-fun m!5101527 () Bool)

(assert (=> b!4423101 m!5101527))

(assert (=> b!4423099 m!5101503))

(assert (=> b!4423099 m!5101503))

(declare-fun m!5101529 () Bool)

(assert (=> b!4423099 m!5101529))

(declare-fun m!5101531 () Bool)

(assert (=> bm!307700 m!5101531))

(assert (=> d!1340063 d!1340285))

(declare-fun d!1340317 () Bool)

(declare-fun e!2754000 () Bool)

(assert (=> d!1340317 e!2754000))

(declare-fun res!1828267 () Bool)

(assert (=> d!1340317 (=> res!1828267 e!2754000)))

(declare-fun lt!1622635 () Bool)

(assert (=> d!1340317 (= res!1828267 (not lt!1622635))))

(declare-fun lt!1622632 () Bool)

(assert (=> d!1340317 (= lt!1622635 lt!1622632)))

(declare-fun lt!1622634 () Unit!81469)

(declare-fun e!2754001 () Unit!81469)

(assert (=> d!1340317 (= lt!1622634 e!2754001)))

(declare-fun c!752902 () Bool)

(assert (=> d!1340317 (= c!752902 lt!1622632)))

(assert (=> d!1340317 (= lt!1622632 (containsKey!1094 (toList!3469 lt!1622301) (_1!27966 lt!1622124)))))

(assert (=> d!1340317 (= (contains!12049 lt!1622301 (_1!27966 lt!1622124)) lt!1622635)))

(declare-fun b!4423112 () Bool)

(declare-fun lt!1622633 () Unit!81469)

(assert (=> b!4423112 (= e!2754001 lt!1622633)))

(assert (=> b!4423112 (= lt!1622633 (lemmaContainsKeyImpliesGetValueByKeyDefined!607 (toList!3469 lt!1622301) (_1!27966 lt!1622124)))))

(assert (=> b!4423112 (isDefined!8004 (getValueByKey!699 (toList!3469 lt!1622301) (_1!27966 lt!1622124)))))

(declare-fun b!4423113 () Bool)

(declare-fun Unit!81533 () Unit!81469)

(assert (=> b!4423113 (= e!2754001 Unit!81533)))

(declare-fun b!4423114 () Bool)

(assert (=> b!4423114 (= e!2754000 (isDefined!8004 (getValueByKey!699 (toList!3469 lt!1622301) (_1!27966 lt!1622124))))))

(assert (= (and d!1340317 c!752902) b!4423112))

(assert (= (and d!1340317 (not c!752902)) b!4423113))

(assert (= (and d!1340317 (not res!1828267)) b!4423114))

(declare-fun m!5101537 () Bool)

(assert (=> d!1340317 m!5101537))

(declare-fun m!5101539 () Bool)

(assert (=> b!4423112 m!5101539))

(assert (=> b!4423112 m!5100907))

(assert (=> b!4423112 m!5100907))

(declare-fun m!5101541 () Bool)

(assert (=> b!4423112 m!5101541))

(assert (=> b!4423114 m!5100907))

(assert (=> b!4423114 m!5100907))

(assert (=> b!4423114 m!5101541))

(assert (=> d!1340127 d!1340317))

(declare-fun b!4423121 () Bool)

(declare-fun e!2754005 () Option!10713)

(declare-fun e!2754006 () Option!10713)

(assert (=> b!4423121 (= e!2754005 e!2754006)))

(declare-fun c!752905 () Bool)

(assert (=> b!4423121 (= c!752905 (and ((_ is Cons!49561) lt!1622302) (not (= (_1!27966 (h!55240 lt!1622302)) (_1!27966 lt!1622124)))))))

(declare-fun b!4423123 () Bool)

(assert (=> b!4423123 (= e!2754006 None!10712)))

(declare-fun d!1340321 () Bool)

(declare-fun c!752904 () Bool)

(assert (=> d!1340321 (= c!752904 (and ((_ is Cons!49561) lt!1622302) (= (_1!27966 (h!55240 lt!1622302)) (_1!27966 lt!1622124))))))

(assert (=> d!1340321 (= (getValueByKey!699 lt!1622302 (_1!27966 lt!1622124)) e!2754005)))

(declare-fun b!4423120 () Bool)

(assert (=> b!4423120 (= e!2754005 (Some!10712 (_2!27966 (h!55240 lt!1622302))))))

(declare-fun b!4423122 () Bool)

(assert (=> b!4423122 (= e!2754006 (getValueByKey!699 (t!356623 lt!1622302) (_1!27966 lt!1622124)))))

(assert (= (and d!1340321 c!752904) b!4423120))

(assert (= (and d!1340321 (not c!752904)) b!4423121))

(assert (= (and b!4423121 c!752905) b!4423122))

(assert (= (and b!4423121 (not c!752905)) b!4423123))

(declare-fun m!5101543 () Bool)

(assert (=> b!4423122 m!5101543))

(assert (=> d!1340127 d!1340321))

(declare-fun d!1340323 () Bool)

(assert (=> d!1340323 (= (getValueByKey!699 lt!1622302 (_1!27966 lt!1622124)) (Some!10712 (_2!27966 lt!1622124)))))

(declare-fun lt!1622659 () Unit!81469)

(declare-fun choose!27889 (List!49685 (_ BitVec 64) List!49684) Unit!81469)

(assert (=> d!1340323 (= lt!1622659 (choose!27889 lt!1622302 (_1!27966 lt!1622124) (_2!27966 lt!1622124)))))

(declare-fun e!2754009 () Bool)

(assert (=> d!1340323 e!2754009))

(declare-fun res!1828275 () Bool)

(assert (=> d!1340323 (=> (not res!1828275) (not e!2754009))))

(assert (=> d!1340323 (= res!1828275 (isStrictlySorted!226 lt!1622302))))

(assert (=> d!1340323 (= (lemmaContainsTupThenGetReturnValue!434 lt!1622302 (_1!27966 lt!1622124) (_2!27966 lt!1622124)) lt!1622659)))

(declare-fun b!4423128 () Bool)

(declare-fun res!1828276 () Bool)

(assert (=> b!4423128 (=> (not res!1828276) (not e!2754009))))

(assert (=> b!4423128 (= res!1828276 (containsKey!1094 lt!1622302 (_1!27966 lt!1622124)))))

(declare-fun b!4423129 () Bool)

(assert (=> b!4423129 (= e!2754009 (contains!12054 lt!1622302 (tuple2!49345 (_1!27966 lt!1622124) (_2!27966 lt!1622124))))))

(assert (= (and d!1340323 res!1828275) b!4423128))

(assert (= (and b!4423128 res!1828276) b!4423129))

(assert (=> d!1340323 m!5100901))

(declare-fun m!5101545 () Bool)

(assert (=> d!1340323 m!5101545))

(declare-fun m!5101547 () Bool)

(assert (=> d!1340323 m!5101547))

(declare-fun m!5101549 () Bool)

(assert (=> b!4423128 m!5101549))

(declare-fun m!5101551 () Bool)

(assert (=> b!4423129 m!5101551))

(assert (=> d!1340127 d!1340323))

(declare-fun b!4423157 () Bool)

(declare-fun e!2754028 () List!49685)

(declare-fun call!307722 () List!49685)

(assert (=> b!4423157 (= e!2754028 call!307722)))

(declare-fun b!4423158 () Bool)

(declare-fun c!752919 () Bool)

(declare-fun e!2754025 () List!49685)

(declare-fun c!752916 () Bool)

(assert (=> b!4423158 (= e!2754025 (ite c!752916 (t!356623 (toList!3469 lm!1616)) (ite c!752919 (Cons!49561 (h!55240 (toList!3469 lm!1616)) (t!356623 (toList!3469 lm!1616))) Nil!49561)))))

(declare-fun b!4423159 () Bool)

(declare-fun e!2754027 () List!49685)

(declare-fun call!307723 () List!49685)

(assert (=> b!4423159 (= e!2754027 call!307723)))

(declare-fun b!4423160 () Bool)

(assert (=> b!4423160 (= e!2754028 call!307722)))

(declare-fun b!4423161 () Bool)

(declare-fun e!2754024 () List!49685)

(assert (=> b!4423161 (= e!2754024 e!2754027)))

(assert (=> b!4423161 (= c!752916 (and ((_ is Cons!49561) (toList!3469 lm!1616)) (= (_1!27966 (h!55240 (toList!3469 lm!1616))) (_1!27966 lt!1622124))))))

(declare-fun bm!307717 () Bool)

(declare-fun call!307721 () List!49685)

(declare-fun c!752918 () Bool)

(declare-fun $colon$colon!780 (List!49685 tuple2!49344) List!49685)

(assert (=> bm!307717 (= call!307721 ($colon$colon!780 e!2754025 (ite c!752918 (h!55240 (toList!3469 lm!1616)) (tuple2!49345 (_1!27966 lt!1622124) (_2!27966 lt!1622124)))))))

(declare-fun c!752917 () Bool)

(assert (=> bm!307717 (= c!752917 c!752918)))

(declare-fun b!4423162 () Bool)

(declare-fun res!1828285 () Bool)

(declare-fun e!2754026 () Bool)

(assert (=> b!4423162 (=> (not res!1828285) (not e!2754026))))

(declare-fun lt!1622684 () List!49685)

(assert (=> b!4423162 (= res!1828285 (containsKey!1094 lt!1622684 (_1!27966 lt!1622124)))))

(declare-fun b!4423163 () Bool)

(assert (=> b!4423163 (= e!2754026 (contains!12054 lt!1622684 (tuple2!49345 (_1!27966 lt!1622124) (_2!27966 lt!1622124))))))

(declare-fun b!4423164 () Bool)

(assert (=> b!4423164 (= c!752919 (and ((_ is Cons!49561) (toList!3469 lm!1616)) (bvsgt (_1!27966 (h!55240 (toList!3469 lm!1616))) (_1!27966 lt!1622124))))))

(assert (=> b!4423164 (= e!2754027 e!2754028)))

(declare-fun b!4423165 () Bool)

(assert (=> b!4423165 (= e!2754024 call!307721)))

(declare-fun bm!307716 () Bool)

(assert (=> bm!307716 (= call!307722 call!307723)))

(declare-fun d!1340325 () Bool)

(assert (=> d!1340325 e!2754026))

(declare-fun res!1828284 () Bool)

(assert (=> d!1340325 (=> (not res!1828284) (not e!2754026))))

(assert (=> d!1340325 (= res!1828284 (isStrictlySorted!226 lt!1622684))))

(assert (=> d!1340325 (= lt!1622684 e!2754024)))

(assert (=> d!1340325 (= c!752918 (and ((_ is Cons!49561) (toList!3469 lm!1616)) (bvslt (_1!27966 (h!55240 (toList!3469 lm!1616))) (_1!27966 lt!1622124))))))

(assert (=> d!1340325 (isStrictlySorted!226 (toList!3469 lm!1616))))

(assert (=> d!1340325 (= (insertStrictlySorted!254 (toList!3469 lm!1616) (_1!27966 lt!1622124) (_2!27966 lt!1622124)) lt!1622684)))

(declare-fun bm!307718 () Bool)

(assert (=> bm!307718 (= call!307723 call!307721)))

(declare-fun b!4423166 () Bool)

(assert (=> b!4423166 (= e!2754025 (insertStrictlySorted!254 (t!356623 (toList!3469 lm!1616)) (_1!27966 lt!1622124) (_2!27966 lt!1622124)))))

(assert (= (and d!1340325 c!752918) b!4423165))

(assert (= (and d!1340325 (not c!752918)) b!4423161))

(assert (= (and b!4423161 c!752916) b!4423159))

(assert (= (and b!4423161 (not c!752916)) b!4423164))

(assert (= (and b!4423164 c!752919) b!4423157))

(assert (= (and b!4423164 (not c!752919)) b!4423160))

(assert (= (or b!4423157 b!4423160) bm!307716))

(assert (= (or b!4423159 bm!307716) bm!307718))

(assert (= (or b!4423165 bm!307718) bm!307717))

(assert (= (and bm!307717 c!752917) b!4423166))

(assert (= (and bm!307717 (not c!752917)) b!4423158))

(assert (= (and d!1340325 res!1828284) b!4423162))

(assert (= (and b!4423162 res!1828285) b!4423163))

(declare-fun m!5101593 () Bool)

(assert (=> b!4423163 m!5101593))

(declare-fun m!5101595 () Bool)

(assert (=> b!4423166 m!5101595))

(declare-fun m!5101597 () Bool)

(assert (=> d!1340325 m!5101597))

(assert (=> d!1340325 m!5100587))

(declare-fun m!5101599 () Bool)

(assert (=> bm!307717 m!5101599))

(declare-fun m!5101601 () Bool)

(assert (=> b!4423162 m!5101601))

(assert (=> d!1340127 d!1340325))

(declare-fun d!1340331 () Bool)

(assert (=> d!1340331 (isDefined!8004 (getValueByKey!699 (toList!3469 lm!1616) hash!366))))

(declare-fun lt!1622687 () Unit!81469)

(declare-fun choose!27890 (List!49685 (_ BitVec 64)) Unit!81469)

(assert (=> d!1340331 (= lt!1622687 (choose!27890 (toList!3469 lm!1616) hash!366))))

(declare-fun e!2754031 () Bool)

(assert (=> d!1340331 e!2754031))

(declare-fun res!1828288 () Bool)

(assert (=> d!1340331 (=> (not res!1828288) (not e!2754031))))

(assert (=> d!1340331 (= res!1828288 (isStrictlySorted!226 (toList!3469 lm!1616)))))

(assert (=> d!1340331 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!607 (toList!3469 lm!1616) hash!366) lt!1622687)))

(declare-fun b!4423169 () Bool)

(assert (=> b!4423169 (= e!2754031 (containsKey!1094 (toList!3469 lm!1616) hash!366))))

(assert (= (and d!1340331 res!1828288) b!4423169))

(assert (=> d!1340331 m!5100593))

(assert (=> d!1340331 m!5100593))

(assert (=> d!1340331 m!5100595))

(declare-fun m!5101603 () Bool)

(assert (=> d!1340331 m!5101603))

(assert (=> d!1340331 m!5100587))

(assert (=> b!4423169 m!5100589))

(assert (=> b!4422486 d!1340331))

(assert (=> b!4422486 d!1340263))

(assert (=> b!4422486 d!1340265))

(declare-fun d!1340333 () Bool)

(assert (=> d!1340333 (= (head!9204 (toList!3469 lm!1616)) (h!55240 (toList!3469 lm!1616)))))

(assert (=> d!1340117 d!1340333))

(declare-fun b!4423170 () Bool)

(declare-fun e!2754036 () Bool)

(declare-fun e!2754035 () Bool)

(assert (=> b!4423170 (= e!2754036 e!2754035)))

(declare-fun res!1828290 () Bool)

(assert (=> b!4423170 (=> (not res!1828290) (not e!2754035))))

(assert (=> b!4423170 (= res!1828290 (isDefined!8007 (getValueByKey!700 (toList!3470 (extractMap!802 (toList!3469 lm!1616))) key!3717)))))

(declare-fun b!4423171 () Bool)

(declare-fun e!2754033 () List!49687)

(assert (=> b!4423171 (= e!2754033 (getKeysList!247 (toList!3470 (extractMap!802 (toList!3469 lm!1616)))))))

(declare-fun b!4423172 () Bool)

(assert (=> b!4423172 false))

(declare-fun lt!1622689 () Unit!81469)

(declare-fun lt!1622692 () Unit!81469)

(assert (=> b!4423172 (= lt!1622689 lt!1622692)))

(assert (=> b!4423172 (containsKey!1097 (toList!3470 (extractMap!802 (toList!3469 lm!1616))) key!3717)))

(assert (=> b!4423172 (= lt!1622692 (lemmaInGetKeysListThenContainsKey!245 (toList!3470 (extractMap!802 (toList!3469 lm!1616))) key!3717))))

(declare-fun e!2754034 () Unit!81469)

(declare-fun Unit!81544 () Unit!81469)

(assert (=> b!4423172 (= e!2754034 Unit!81544)))

(declare-fun b!4423173 () Bool)

(declare-fun e!2754037 () Bool)

(assert (=> b!4423173 (= e!2754037 (not (contains!12056 (keys!16915 (extractMap!802 (toList!3469 lm!1616))) key!3717)))))

(declare-fun d!1340335 () Bool)

(assert (=> d!1340335 e!2754036))

(declare-fun res!1828289 () Bool)

(assert (=> d!1340335 (=> res!1828289 e!2754036)))

(assert (=> d!1340335 (= res!1828289 e!2754037)))

(declare-fun res!1828291 () Bool)

(assert (=> d!1340335 (=> (not res!1828291) (not e!2754037))))

(declare-fun lt!1622695 () Bool)

(assert (=> d!1340335 (= res!1828291 (not lt!1622695))))

(declare-fun lt!1622688 () Bool)

(assert (=> d!1340335 (= lt!1622695 lt!1622688)))

(declare-fun lt!1622691 () Unit!81469)

(declare-fun e!2754032 () Unit!81469)

(assert (=> d!1340335 (= lt!1622691 e!2754032)))

(declare-fun c!752920 () Bool)

(assert (=> d!1340335 (= c!752920 lt!1622688)))

(assert (=> d!1340335 (= lt!1622688 (containsKey!1097 (toList!3470 (extractMap!802 (toList!3469 lm!1616))) key!3717))))

(assert (=> d!1340335 (= (contains!12050 (extractMap!802 (toList!3469 lm!1616)) key!3717) lt!1622695)))

(declare-fun b!4423174 () Bool)

(declare-fun lt!1622694 () Unit!81469)

(assert (=> b!4423174 (= e!2754032 lt!1622694)))

(declare-fun lt!1622690 () Unit!81469)

(assert (=> b!4423174 (= lt!1622690 (lemmaContainsKeyImpliesGetValueByKeyDefined!610 (toList!3470 (extractMap!802 (toList!3469 lm!1616))) key!3717))))

(assert (=> b!4423174 (isDefined!8007 (getValueByKey!700 (toList!3470 (extractMap!802 (toList!3469 lm!1616))) key!3717))))

(declare-fun lt!1622693 () Unit!81469)

(assert (=> b!4423174 (= lt!1622693 lt!1622690)))

(assert (=> b!4423174 (= lt!1622694 (lemmaInListThenGetKeysListContains!244 (toList!3470 (extractMap!802 (toList!3469 lm!1616))) key!3717))))

(declare-fun call!307724 () Bool)

(assert (=> b!4423174 call!307724))

(declare-fun b!4423175 () Bool)

(declare-fun Unit!81546 () Unit!81469)

(assert (=> b!4423175 (= e!2754034 Unit!81546)))

(declare-fun bm!307719 () Bool)

(assert (=> bm!307719 (= call!307724 (contains!12056 e!2754033 key!3717))))

(declare-fun c!752922 () Bool)

(assert (=> bm!307719 (= c!752922 c!752920)))

(declare-fun b!4423176 () Bool)

(assert (=> b!4423176 (= e!2754032 e!2754034)))

(declare-fun c!752921 () Bool)

(assert (=> b!4423176 (= c!752921 call!307724)))

(declare-fun b!4423177 () Bool)

(assert (=> b!4423177 (= e!2754035 (contains!12056 (keys!16915 (extractMap!802 (toList!3469 lm!1616))) key!3717))))

(declare-fun b!4423178 () Bool)

(assert (=> b!4423178 (= e!2754033 (keys!16915 (extractMap!802 (toList!3469 lm!1616))))))

(assert (= (and d!1340335 c!752920) b!4423174))

(assert (= (and d!1340335 (not c!752920)) b!4423176))

(assert (= (and b!4423176 c!752921) b!4423172))

(assert (= (and b!4423176 (not c!752921)) b!4423175))

(assert (= (or b!4423174 b!4423176) bm!307719))

(assert (= (and bm!307719 c!752922) b!4423171))

(assert (= (and bm!307719 (not c!752922)) b!4423178))

(assert (= (and d!1340335 res!1828291) b!4423173))

(assert (= (and d!1340335 (not res!1828289)) b!4423170))

(assert (= (and b!4423170 res!1828290) b!4423177))

(declare-fun m!5101639 () Bool)

(assert (=> b!4423170 m!5101639))

(assert (=> b!4423170 m!5101639))

(declare-fun m!5101641 () Bool)

(assert (=> b!4423170 m!5101641))

(declare-fun m!5101643 () Bool)

(assert (=> b!4423171 m!5101643))

(assert (=> b!4423173 m!5100533))

(declare-fun m!5101645 () Bool)

(assert (=> b!4423173 m!5101645))

(assert (=> b!4423173 m!5101645))

(declare-fun m!5101647 () Bool)

(assert (=> b!4423173 m!5101647))

(declare-fun m!5101649 () Bool)

(assert (=> b!4423172 m!5101649))

(declare-fun m!5101651 () Bool)

(assert (=> b!4423172 m!5101651))

(assert (=> b!4423177 m!5100533))

(assert (=> b!4423177 m!5101645))

(assert (=> b!4423177 m!5101645))

(assert (=> b!4423177 m!5101647))

(assert (=> b!4423178 m!5100533))

(assert (=> b!4423178 m!5101645))

(declare-fun m!5101653 () Bool)

(assert (=> bm!307719 m!5101653))

(assert (=> d!1340335 m!5101649))

(declare-fun m!5101655 () Bool)

(assert (=> b!4423174 m!5101655))

(assert (=> b!4423174 m!5101639))

(assert (=> b!4423174 m!5101639))

(assert (=> b!4423174 m!5101641))

(declare-fun m!5101657 () Bool)

(assert (=> b!4423174 m!5101657))

(assert (=> d!1340045 d!1340335))

(assert (=> d!1340045 d!1340121))

(declare-fun d!1340339 () Bool)

(assert (=> d!1340339 (contains!12050 (extractMap!802 (toList!3469 lm!1616)) key!3717)))

(assert (=> d!1340339 true))

(declare-fun _$12!1184 () Unit!81469)

(assert (=> d!1340339 (= (choose!27879 lm!1616 key!3717 hashF!1220) _$12!1184)))

(declare-fun bs!755553 () Bool)

(assert (= bs!755553 d!1340339))

(assert (=> bs!755553 m!5100533))

(assert (=> bs!755553 m!5100533))

(assert (=> bs!755553 m!5100639))

(assert (=> d!1340045 d!1340339))

(declare-fun d!1340349 () Bool)

(declare-fun res!1828294 () Bool)

(declare-fun e!2754041 () Bool)

(assert (=> d!1340349 (=> res!1828294 e!2754041)))

(assert (=> d!1340349 (= res!1828294 ((_ is Nil!49561) (toList!3469 lm!1616)))))

(assert (=> d!1340349 (= (forall!9544 (toList!3469 lm!1616) lambda!153282) e!2754041)))

(declare-fun b!4423183 () Bool)

(declare-fun e!2754042 () Bool)

(assert (=> b!4423183 (= e!2754041 e!2754042)))

(declare-fun res!1828295 () Bool)

(assert (=> b!4423183 (=> (not res!1828295) (not e!2754042))))

(assert (=> b!4423183 (= res!1828295 (dynLambda!20836 lambda!153282 (h!55240 (toList!3469 lm!1616))))))

(declare-fun b!4423184 () Bool)

(assert (=> b!4423184 (= e!2754042 (forall!9544 (t!356623 (toList!3469 lm!1616)) lambda!153282))))

(assert (= (and d!1340349 (not res!1828294)) b!4423183))

(assert (= (and b!4423183 res!1828295) b!4423184))

(declare-fun b_lambda!142759 () Bool)

(assert (=> (not b_lambda!142759) (not b!4423183)))

(declare-fun m!5101677 () Bool)

(assert (=> b!4423183 m!5101677))

(declare-fun m!5101679 () Bool)

(assert (=> b!4423184 m!5101679))

(assert (=> d!1340045 d!1340349))

(declare-fun d!1340351 () Bool)

(declare-fun res!1828296 () Bool)

(declare-fun e!2754043 () Bool)

(assert (=> d!1340351 (=> res!1828296 e!2754043)))

(assert (=> d!1340351 (= res!1828296 (and ((_ is Cons!49560) (t!356622 (apply!11593 lm!1616 (_1!27966 (h!55240 (toList!3469 lm!1616)))))) (= (_1!27965 (h!55239 (t!356622 (apply!11593 lm!1616 (_1!27966 (h!55240 (toList!3469 lm!1616))))))) key!3717)))))

(assert (=> d!1340351 (= (containsKey!1093 (t!356622 (apply!11593 lm!1616 (_1!27966 (h!55240 (toList!3469 lm!1616))))) key!3717) e!2754043)))

(declare-fun b!4423185 () Bool)

(declare-fun e!2754044 () Bool)

(assert (=> b!4423185 (= e!2754043 e!2754044)))

(declare-fun res!1828297 () Bool)

(assert (=> b!4423185 (=> (not res!1828297) (not e!2754044))))

(assert (=> b!4423185 (= res!1828297 ((_ is Cons!49560) (t!356622 (apply!11593 lm!1616 (_1!27966 (h!55240 (toList!3469 lm!1616)))))))))

(declare-fun b!4423186 () Bool)

(assert (=> b!4423186 (= e!2754044 (containsKey!1093 (t!356622 (t!356622 (apply!11593 lm!1616 (_1!27966 (h!55240 (toList!3469 lm!1616)))))) key!3717))))

(assert (= (and d!1340351 (not res!1828296)) b!4423185))

(assert (= (and b!4423185 res!1828297) b!4423186))

(declare-fun m!5101681 () Bool)

(assert (=> b!4423186 m!5101681))

(assert (=> b!4422496 d!1340351))

(declare-fun d!1340353 () Bool)

(declare-fun res!1828298 () Bool)

(declare-fun e!2754045 () Bool)

(assert (=> d!1340353 (=> res!1828298 e!2754045)))

(assert (=> d!1340353 (= res!1828298 ((_ is Nil!49561) (toList!3469 (+!1067 lm!1616 (tuple2!49345 hash!366 newBucket!194)))))))

(assert (=> d!1340353 (= (forall!9544 (toList!3469 (+!1067 lm!1616 (tuple2!49345 hash!366 newBucket!194))) lambda!153264) e!2754045)))

(declare-fun b!4423187 () Bool)

(declare-fun e!2754046 () Bool)

(assert (=> b!4423187 (= e!2754045 e!2754046)))

(declare-fun res!1828299 () Bool)

(assert (=> b!4423187 (=> (not res!1828299) (not e!2754046))))

(assert (=> b!4423187 (= res!1828299 (dynLambda!20836 lambda!153264 (h!55240 (toList!3469 (+!1067 lm!1616 (tuple2!49345 hash!366 newBucket!194))))))))

(declare-fun b!4423188 () Bool)

(assert (=> b!4423188 (= e!2754046 (forall!9544 (t!356623 (toList!3469 (+!1067 lm!1616 (tuple2!49345 hash!366 newBucket!194)))) lambda!153264))))

(assert (= (and d!1340353 (not res!1828298)) b!4423187))

(assert (= (and b!4423187 res!1828299) b!4423188))

(declare-fun b_lambda!142761 () Bool)

(assert (=> (not b_lambda!142761) (not b!4423187)))

(declare-fun m!5101683 () Bool)

(assert (=> b!4423187 m!5101683))

(declare-fun m!5101685 () Bool)

(assert (=> b!4423188 m!5101685))

(assert (=> d!1340129 d!1340353))

(declare-fun d!1340355 () Bool)

(declare-fun e!2754047 () Bool)

(assert (=> d!1340355 e!2754047))

(declare-fun res!1828301 () Bool)

(assert (=> d!1340355 (=> (not res!1828301) (not e!2754047))))

(declare-fun lt!1622702 () ListLongMap!2119)

(assert (=> d!1340355 (= res!1828301 (contains!12049 lt!1622702 (_1!27966 (tuple2!49345 hash!366 newBucket!194))))))

(declare-fun lt!1622703 () List!49685)

(assert (=> d!1340355 (= lt!1622702 (ListLongMap!2120 lt!1622703))))

(declare-fun lt!1622704 () Unit!81469)

(declare-fun lt!1622705 () Unit!81469)

(assert (=> d!1340355 (= lt!1622704 lt!1622705)))

(assert (=> d!1340355 (= (getValueByKey!699 lt!1622703 (_1!27966 (tuple2!49345 hash!366 newBucket!194))) (Some!10712 (_2!27966 (tuple2!49345 hash!366 newBucket!194))))))

(assert (=> d!1340355 (= lt!1622705 (lemmaContainsTupThenGetReturnValue!434 lt!1622703 (_1!27966 (tuple2!49345 hash!366 newBucket!194)) (_2!27966 (tuple2!49345 hash!366 newBucket!194))))))

(assert (=> d!1340355 (= lt!1622703 (insertStrictlySorted!254 (toList!3469 lm!1616) (_1!27966 (tuple2!49345 hash!366 newBucket!194)) (_2!27966 (tuple2!49345 hash!366 newBucket!194))))))

(assert (=> d!1340355 (= (+!1067 lm!1616 (tuple2!49345 hash!366 newBucket!194)) lt!1622702)))

(declare-fun b!4423189 () Bool)

(declare-fun res!1828300 () Bool)

(assert (=> b!4423189 (=> (not res!1828300) (not e!2754047))))

(assert (=> b!4423189 (= res!1828300 (= (getValueByKey!699 (toList!3469 lt!1622702) (_1!27966 (tuple2!49345 hash!366 newBucket!194))) (Some!10712 (_2!27966 (tuple2!49345 hash!366 newBucket!194)))))))

(declare-fun b!4423190 () Bool)

(assert (=> b!4423190 (= e!2754047 (contains!12054 (toList!3469 lt!1622702) (tuple2!49345 hash!366 newBucket!194)))))

(assert (= (and d!1340355 res!1828301) b!4423189))

(assert (= (and b!4423189 res!1828300) b!4423190))

(declare-fun m!5101689 () Bool)

(assert (=> d!1340355 m!5101689))

(declare-fun m!5101691 () Bool)

(assert (=> d!1340355 m!5101691))

(declare-fun m!5101693 () Bool)

(assert (=> d!1340355 m!5101693))

(declare-fun m!5101695 () Bool)

(assert (=> d!1340355 m!5101695))

(declare-fun m!5101697 () Bool)

(assert (=> b!4423189 m!5101697))

(declare-fun m!5101699 () Bool)

(assert (=> b!4423190 m!5101699))

(assert (=> d!1340129 d!1340355))

(declare-fun d!1340359 () Bool)

(assert (=> d!1340359 (forall!9544 (toList!3469 (+!1067 lm!1616 (tuple2!49345 hash!366 newBucket!194))) lambda!153264)))

(assert (=> d!1340359 true))

(declare-fun _$31!379 () Unit!81469)

(assert (=> d!1340359 (= (choose!27883 lm!1616 lambda!153264 hash!366 newBucket!194) _$31!379)))

(declare-fun bs!755556 () Bool)

(assert (= bs!755556 d!1340359))

(assert (=> bs!755556 m!5100911))

(assert (=> bs!755556 m!5100913))

(assert (=> d!1340129 d!1340359))

(assert (=> d!1340129 d!1340019))

(declare-fun d!1340365 () Bool)

(declare-fun res!1828304 () Bool)

(declare-fun e!2754052 () Bool)

(assert (=> d!1340365 (=> res!1828304 e!2754052)))

(assert (=> d!1340365 (= res!1828304 ((_ is Nil!49561) (t!356623 (toList!3469 lm!1616))))))

(assert (=> d!1340365 (= (forall!9544 (t!356623 (toList!3469 lm!1616)) lambda!153264) e!2754052)))

(declare-fun b!4423198 () Bool)

(declare-fun e!2754053 () Bool)

(assert (=> b!4423198 (= e!2754052 e!2754053)))

(declare-fun res!1828305 () Bool)

(assert (=> b!4423198 (=> (not res!1828305) (not e!2754053))))

(assert (=> b!4423198 (= res!1828305 (dynLambda!20836 lambda!153264 (h!55240 (t!356623 (toList!3469 lm!1616)))))))

(declare-fun b!4423199 () Bool)

(assert (=> b!4423199 (= e!2754053 (forall!9544 (t!356623 (t!356623 (toList!3469 lm!1616))) lambda!153264))))

(assert (= (and d!1340365 (not res!1828304)) b!4423198))

(assert (= (and b!4423198 res!1828305) b!4423199))

(declare-fun b_lambda!142763 () Bool)

(assert (=> (not b_lambda!142763) (not b!4423198)))

(declare-fun m!5101711 () Bool)

(assert (=> b!4423198 m!5101711))

(declare-fun m!5101713 () Bool)

(assert (=> b!4423199 m!5101713))

(assert (=> b!4422479 d!1340365))

(declare-fun bs!755558 () Bool)

(declare-fun b!4423204 () Bool)

(assert (= bs!755558 (and b!4423204 b!4422695)))

(declare-fun lambda!153430 () Int)

(assert (=> bs!755558 (= (= (extractMap!802 (t!356623 (toList!3469 lm!1616))) lt!1622116) (= lambda!153430 lambda!153367))))

(declare-fun bs!755559 () Bool)

(assert (= bs!755559 (and b!4423204 b!4422692)))

(assert (=> bs!755559 (= (= (extractMap!802 (t!356623 (toList!3469 lm!1616))) lt!1622116) (= lambda!153430 lambda!153368))))

(declare-fun bs!755560 () Bool)

(assert (= bs!755560 (and b!4423204 d!1340041)))

(assert (=> bs!755560 (not (= lambda!153430 lambda!153276))))

(declare-fun bs!755561 () Bool)

(assert (= bs!755561 (and b!4423204 d!1340133)))

(assert (=> bs!755561 (= (= (extractMap!802 (t!356623 (toList!3469 lm!1616))) lt!1622415) (= lambda!153430 lambda!153370))))

(assert (=> bs!755559 (= (= (extractMap!802 (t!356623 (toList!3469 lm!1616))) lt!1622432) (= lambda!153430 lambda!153369))))

(assert (=> b!4423204 true))

(declare-fun bs!755564 () Bool)

(declare-fun b!4423201 () Bool)

(assert (= bs!755564 (and b!4423201 b!4422695)))

(declare-fun lambda!153431 () Int)

(assert (=> bs!755564 (= (= (extractMap!802 (t!356623 (toList!3469 lm!1616))) lt!1622116) (= lambda!153431 lambda!153367))))

(declare-fun bs!755565 () Bool)

(assert (= bs!755565 (and b!4423201 b!4422692)))

(assert (=> bs!755565 (= (= (extractMap!802 (t!356623 (toList!3469 lm!1616))) lt!1622116) (= lambda!153431 lambda!153368))))

(declare-fun bs!755566 () Bool)

(assert (= bs!755566 (and b!4423201 d!1340041)))

(assert (=> bs!755566 (not (= lambda!153431 lambda!153276))))

(declare-fun bs!755567 () Bool)

(assert (= bs!755567 (and b!4423201 b!4423204)))

(assert (=> bs!755567 (= lambda!153431 lambda!153430)))

(declare-fun bs!755568 () Bool)

(assert (= bs!755568 (and b!4423201 d!1340133)))

(assert (=> bs!755568 (= (= (extractMap!802 (t!356623 (toList!3469 lm!1616))) lt!1622415) (= lambda!153431 lambda!153370))))

(assert (=> bs!755565 (= (= (extractMap!802 (t!356623 (toList!3469 lm!1616))) lt!1622432) (= lambda!153431 lambda!153369))))

(assert (=> b!4423201 true))

(declare-fun lambda!153432 () Int)

(declare-fun lt!1622729 () ListMap!2713)

(assert (=> bs!755564 (= (= lt!1622729 lt!1622116) (= lambda!153432 lambda!153367))))

(assert (=> bs!755565 (= (= lt!1622729 lt!1622116) (= lambda!153432 lambda!153368))))

(assert (=> b!4423201 (= (= lt!1622729 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153432 lambda!153431))))

(assert (=> bs!755566 (not (= lambda!153432 lambda!153276))))

(assert (=> bs!755567 (= (= lt!1622729 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153432 lambda!153430))))

(assert (=> bs!755568 (= (= lt!1622729 lt!1622415) (= lambda!153432 lambda!153370))))

(assert (=> bs!755565 (= (= lt!1622729 lt!1622432) (= lambda!153432 lambda!153369))))

(assert (=> b!4423201 true))

(declare-fun bs!755569 () Bool)

(declare-fun d!1340369 () Bool)

(assert (= bs!755569 (and d!1340369 b!4422695)))

(declare-fun lt!1622712 () ListMap!2713)

(declare-fun lambda!153433 () Int)

(assert (=> bs!755569 (= (= lt!1622712 lt!1622116) (= lambda!153433 lambda!153367))))

(declare-fun bs!755570 () Bool)

(assert (= bs!755570 (and d!1340369 b!4422692)))

(assert (=> bs!755570 (= (= lt!1622712 lt!1622116) (= lambda!153433 lambda!153368))))

(declare-fun bs!755571 () Bool)

(assert (= bs!755571 (and d!1340369 b!4423201)))

(assert (=> bs!755571 (= (= lt!1622712 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153433 lambda!153431))))

(declare-fun bs!755572 () Bool)

(assert (= bs!755572 (and d!1340369 d!1340041)))

(assert (=> bs!755572 (not (= lambda!153433 lambda!153276))))

(assert (=> bs!755571 (= (= lt!1622712 lt!1622729) (= lambda!153433 lambda!153432))))

(declare-fun bs!755573 () Bool)

(assert (= bs!755573 (and d!1340369 b!4423204)))

(assert (=> bs!755573 (= (= lt!1622712 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153433 lambda!153430))))

(declare-fun bs!755574 () Bool)

(assert (= bs!755574 (and d!1340369 d!1340133)))

(assert (=> bs!755574 (= (= lt!1622712 lt!1622415) (= lambda!153433 lambda!153370))))

(assert (=> bs!755570 (= (= lt!1622712 lt!1622432) (= lambda!153433 lambda!153369))))

(assert (=> d!1340369 true))

(declare-fun b!4423200 () Bool)

(declare-fun e!2754054 () Bool)

(assert (=> b!4423200 (= e!2754054 (forall!9546 (toList!3470 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) lambda!153432))))

(declare-fun e!2754055 () ListMap!2713)

(assert (=> b!4423201 (= e!2754055 lt!1622729)))

(declare-fun lt!1622711 () ListMap!2713)

(assert (=> b!4423201 (= lt!1622711 (+!1066 (extractMap!802 (t!356623 (toList!3469 lm!1616))) (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))

(assert (=> b!4423201 (= lt!1622729 (addToMapMapFromBucket!378 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616)))) (+!1066 (extractMap!802 (t!356623 (toList!3469 lm!1616))) (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(declare-fun lt!1622716 () Unit!81469)

(declare-fun call!307727 () Unit!81469)

(assert (=> b!4423201 (= lt!1622716 call!307727)))

(assert (=> b!4423201 (forall!9546 (toList!3470 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) lambda!153431)))

(declare-fun lt!1622723 () Unit!81469)

(assert (=> b!4423201 (= lt!1622723 lt!1622716)))

(assert (=> b!4423201 (forall!9546 (toList!3470 lt!1622711) lambda!153432)))

(declare-fun lt!1622728 () Unit!81469)

(declare-fun Unit!81550 () Unit!81469)

(assert (=> b!4423201 (= lt!1622728 Unit!81550)))

(assert (=> b!4423201 (forall!9546 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616)))) lambda!153432)))

(declare-fun lt!1622725 () Unit!81469)

(declare-fun Unit!81551 () Unit!81469)

(assert (=> b!4423201 (= lt!1622725 Unit!81551)))

(declare-fun lt!1622718 () Unit!81469)

(declare-fun Unit!81552 () Unit!81469)

(assert (=> b!4423201 (= lt!1622718 Unit!81552)))

(declare-fun lt!1622726 () Unit!81469)

(assert (=> b!4423201 (= lt!1622726 (forallContained!2083 (toList!3470 lt!1622711) lambda!153432 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))

(assert (=> b!4423201 (contains!12050 lt!1622711 (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))

(declare-fun lt!1622719 () Unit!81469)

(declare-fun Unit!81553 () Unit!81469)

(assert (=> b!4423201 (= lt!1622719 Unit!81553)))

(assert (=> b!4423201 (contains!12050 lt!1622729 (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))

(declare-fun lt!1622710 () Unit!81469)

(declare-fun Unit!81554 () Unit!81469)

(assert (=> b!4423201 (= lt!1622710 Unit!81554)))

(assert (=> b!4423201 (forall!9546 (_2!27966 (h!55240 (toList!3469 lm!1616))) lambda!153432)))

(declare-fun lt!1622724 () Unit!81469)

(declare-fun Unit!81555 () Unit!81469)

(assert (=> b!4423201 (= lt!1622724 Unit!81555)))

(declare-fun call!307725 () Bool)

(assert (=> b!4423201 call!307725))

(declare-fun lt!1622730 () Unit!81469)

(declare-fun Unit!81556 () Unit!81469)

(assert (=> b!4423201 (= lt!1622730 Unit!81556)))

(declare-fun lt!1622720 () Unit!81469)

(declare-fun Unit!81557 () Unit!81469)

(assert (=> b!4423201 (= lt!1622720 Unit!81557)))

(declare-fun lt!1622727 () Unit!81469)

(assert (=> b!4423201 (= lt!1622727 (addForallContainsKeyThenBeforeAdding!167 (extractMap!802 (t!356623 (toList!3469 lm!1616))) lt!1622729 (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (_2!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(assert (=> b!4423201 (forall!9546 (toList!3470 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) lambda!153432)))

(declare-fun lt!1622721 () Unit!81469)

(assert (=> b!4423201 (= lt!1622721 lt!1622727)))

(declare-fun call!307726 () Bool)

(assert (=> b!4423201 call!307726))

(declare-fun lt!1622722 () Unit!81469)

(declare-fun Unit!81558 () Unit!81469)

(assert (=> b!4423201 (= lt!1622722 Unit!81558)))

(declare-fun res!1828307 () Bool)

(assert (=> b!4423201 (= res!1828307 (forall!9546 (_2!27966 (h!55240 (toList!3469 lm!1616))) lambda!153432))))

(assert (=> b!4423201 (=> (not res!1828307) (not e!2754054))))

(assert (=> b!4423201 e!2754054))

(declare-fun lt!1622714 () Unit!81469)

(declare-fun Unit!81559 () Unit!81469)

(assert (=> b!4423201 (= lt!1622714 Unit!81559)))

(declare-fun bm!307720 () Bool)

(declare-fun c!752926 () Bool)

(assert (=> bm!307720 (= call!307725 (forall!9546 (ite c!752926 (toList!3470 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (toList!3470 lt!1622711)) (ite c!752926 lambda!153430 lambda!153432)))))

(declare-fun b!4423202 () Bool)

(declare-fun e!2754056 () Bool)

(assert (=> b!4423202 (= e!2754056 (invariantList!799 (toList!3470 lt!1622712)))))

(declare-fun b!4423203 () Bool)

(declare-fun res!1828306 () Bool)

(assert (=> b!4423203 (=> (not res!1828306) (not e!2754056))))

(assert (=> b!4423203 (= res!1828306 (forall!9546 (toList!3470 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) lambda!153433))))

(assert (=> b!4423204 (= e!2754055 (extractMap!802 (t!356623 (toList!3469 lm!1616))))))

(declare-fun lt!1622717 () Unit!81469)

(assert (=> b!4423204 (= lt!1622717 call!307727)))

(assert (=> b!4423204 call!307726))

(declare-fun lt!1622715 () Unit!81469)

(assert (=> b!4423204 (= lt!1622715 lt!1622717)))

(assert (=> b!4423204 call!307725))

(declare-fun lt!1622713 () Unit!81469)

(declare-fun Unit!81560 () Unit!81469)

(assert (=> b!4423204 (= lt!1622713 Unit!81560)))

(assert (=> d!1340369 e!2754056))

(declare-fun res!1828308 () Bool)

(assert (=> d!1340369 (=> (not res!1828308) (not e!2754056))))

(assert (=> d!1340369 (= res!1828308 (forall!9546 (_2!27966 (h!55240 (toList!3469 lm!1616))) lambda!153433))))

(assert (=> d!1340369 (= lt!1622712 e!2754055)))

(assert (=> d!1340369 (= c!752926 ((_ is Nil!49560) (_2!27966 (h!55240 (toList!3469 lm!1616)))))))

(assert (=> d!1340369 (noDuplicateKeys!741 (_2!27966 (h!55240 (toList!3469 lm!1616))))))

(assert (=> d!1340369 (= (addToMapMapFromBucket!378 (_2!27966 (h!55240 (toList!3469 lm!1616))) (extractMap!802 (t!356623 (toList!3469 lm!1616)))) lt!1622712)))

(declare-fun bm!307721 () Bool)

(assert (=> bm!307721 (= call!307727 (lemmaContainsAllItsOwnKeys!167 (extractMap!802 (t!356623 (toList!3469 lm!1616)))))))

(declare-fun bm!307722 () Bool)

(assert (=> bm!307722 (= call!307726 (forall!9546 (toList!3470 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (ite c!752926 lambda!153430 lambda!153432)))))

(assert (= (and d!1340369 c!752926) b!4423204))

(assert (= (and d!1340369 (not c!752926)) b!4423201))

(assert (= (and b!4423201 res!1828307) b!4423200))

(assert (= (or b!4423204 b!4423201) bm!307721))

(assert (= (or b!4423204 b!4423201) bm!307720))

(assert (= (or b!4423204 b!4423201) bm!307722))

(assert (= (and d!1340369 res!1828308) b!4423203))

(assert (= (and b!4423203 res!1828306) b!4423202))

(assert (=> bm!307721 m!5100889))

(declare-fun m!5101739 () Bool)

(assert (=> bm!307721 m!5101739))

(declare-fun m!5101741 () Bool)

(assert (=> b!4423201 m!5101741))

(declare-fun m!5101743 () Bool)

(assert (=> b!4423201 m!5101743))

(declare-fun m!5101745 () Bool)

(assert (=> b!4423201 m!5101745))

(declare-fun m!5101747 () Bool)

(assert (=> b!4423201 m!5101747))

(declare-fun m!5101749 () Bool)

(assert (=> b!4423201 m!5101749))

(declare-fun m!5101751 () Bool)

(assert (=> b!4423201 m!5101751))

(declare-fun m!5101753 () Bool)

(assert (=> b!4423201 m!5101753))

(declare-fun m!5101755 () Bool)

(assert (=> b!4423201 m!5101755))

(assert (=> b!4423201 m!5100889))

(assert (=> b!4423201 m!5101747))

(declare-fun m!5101757 () Bool)

(assert (=> b!4423201 m!5101757))

(assert (=> b!4423201 m!5100889))

(declare-fun m!5101759 () Bool)

(assert (=> b!4423201 m!5101759))

(assert (=> b!4423201 m!5101757))

(declare-fun m!5101761 () Bool)

(assert (=> b!4423201 m!5101761))

(declare-fun m!5101763 () Bool)

(assert (=> d!1340369 m!5101763))

(assert (=> d!1340369 m!5100987))

(declare-fun m!5101765 () Bool)

(assert (=> bm!307722 m!5101765))

(declare-fun m!5101767 () Bool)

(assert (=> bm!307720 m!5101767))

(declare-fun m!5101769 () Bool)

(assert (=> b!4423203 m!5101769))

(assert (=> b!4423200 m!5101741))

(declare-fun m!5101771 () Bool)

(assert (=> b!4423202 m!5101771))

(assert (=> b!4422644 d!1340369))

(declare-fun bs!755576 () Bool)

(declare-fun d!1340389 () Bool)

(assert (= bs!755576 (and d!1340389 d!1340059)))

(declare-fun lambda!153434 () Int)

(assert (=> bs!755576 (= lambda!153434 lambda!153287)))

(declare-fun bs!755577 () Bool)

(assert (= bs!755577 (and d!1340389 d!1340045)))

(assert (=> bs!755577 (= lambda!153434 lambda!153282)))

(declare-fun bs!755578 () Bool)

(assert (= bs!755578 (and d!1340389 start!431164)))

(assert (=> bs!755578 (= lambda!153434 lambda!153264)))

(declare-fun bs!755579 () Bool)

(assert (= bs!755579 (and d!1340389 d!1340017)))

(assert (=> bs!755579 (not (= lambda!153434 lambda!153267))))

(declare-fun bs!755580 () Bool)

(assert (= bs!755580 (and d!1340389 d!1340033)))

(assert (=> bs!755580 (= lambda!153434 lambda!153273)))

(declare-fun bs!755581 () Bool)

(assert (= bs!755581 (and d!1340389 d!1340091)))

(assert (=> bs!755581 (= lambda!153434 lambda!153302)))

(declare-fun bs!755582 () Bool)

(assert (= bs!755582 (and d!1340389 d!1340121)))

(assert (=> bs!755582 (= lambda!153434 lambda!153306)))

(declare-fun bs!755583 () Bool)

(assert (= bs!755583 (and d!1340389 d!1340057)))

(assert (=> bs!755583 (= lambda!153434 lambda!153286)))

(declare-fun bs!755584 () Bool)

(assert (= bs!755584 (and d!1340389 d!1340073)))

(assert (=> bs!755584 (= lambda!153434 lambda!153298)))

(declare-fun lt!1622736 () ListMap!2713)

(assert (=> d!1340389 (invariantList!799 (toList!3470 lt!1622736))))

(declare-fun e!2754071 () ListMap!2713)

(assert (=> d!1340389 (= lt!1622736 e!2754071)))

(declare-fun c!752927 () Bool)

(assert (=> d!1340389 (= c!752927 ((_ is Cons!49561) (t!356623 (toList!3469 lm!1616))))))

(assert (=> d!1340389 (forall!9544 (t!356623 (toList!3469 lm!1616)) lambda!153434)))

(assert (=> d!1340389 (= (extractMap!802 (t!356623 (toList!3469 lm!1616))) lt!1622736)))

(declare-fun b!4423219 () Bool)

(assert (=> b!4423219 (= e!2754071 (addToMapMapFromBucket!378 (_2!27966 (h!55240 (t!356623 (toList!3469 lm!1616)))) (extractMap!802 (t!356623 (t!356623 (toList!3469 lm!1616))))))))

(declare-fun b!4423220 () Bool)

(assert (=> b!4423220 (= e!2754071 (ListMap!2714 Nil!49560))))

(assert (= (and d!1340389 c!752927) b!4423219))

(assert (= (and d!1340389 (not c!752927)) b!4423220))

(declare-fun m!5101775 () Bool)

(assert (=> d!1340389 m!5101775))

(declare-fun m!5101777 () Bool)

(assert (=> d!1340389 m!5101777))

(declare-fun m!5101779 () Bool)

(assert (=> b!4423219 m!5101779))

(assert (=> b!4423219 m!5101779))

(declare-fun m!5101783 () Bool)

(assert (=> b!4423219 m!5101783))

(assert (=> b!4422644 d!1340389))

(assert (=> d!1340089 d!1340095))

(declare-fun d!1340393 () Bool)

(assert (=> d!1340393 (= (invariantList!799 (toList!3470 lt!1622300)) (noDuplicatedKeys!172 (toList!3470 lt!1622300)))))

(declare-fun bs!755585 () Bool)

(assert (= bs!755585 d!1340393))

(declare-fun m!5101789 () Bool)

(assert (=> bs!755585 m!5101789))

(assert (=> d!1340121 d!1340393))

(declare-fun d!1340397 () Bool)

(declare-fun res!1828326 () Bool)

(declare-fun e!2754076 () Bool)

(assert (=> d!1340397 (=> res!1828326 e!2754076)))

(assert (=> d!1340397 (= res!1828326 ((_ is Nil!49561) (toList!3469 lm!1616)))))

(assert (=> d!1340397 (= (forall!9544 (toList!3469 lm!1616) lambda!153306) e!2754076)))

(declare-fun b!4423226 () Bool)

(declare-fun e!2754077 () Bool)

(assert (=> b!4423226 (= e!2754076 e!2754077)))

(declare-fun res!1828327 () Bool)

(assert (=> b!4423226 (=> (not res!1828327) (not e!2754077))))

(assert (=> b!4423226 (= res!1828327 (dynLambda!20836 lambda!153306 (h!55240 (toList!3469 lm!1616))))))

(declare-fun b!4423227 () Bool)

(assert (=> b!4423227 (= e!2754077 (forall!9544 (t!356623 (toList!3469 lm!1616)) lambda!153306))))

(assert (= (and d!1340397 (not res!1828326)) b!4423226))

(assert (= (and b!4423226 res!1828327) b!4423227))

(declare-fun b_lambda!142767 () Bool)

(assert (=> (not b_lambda!142767) (not b!4423226)))

(declare-fun m!5101795 () Bool)

(assert (=> b!4423226 m!5101795))

(declare-fun m!5101801 () Bool)

(assert (=> b!4423227 m!5101801))

(assert (=> d!1340121 d!1340397))

(declare-fun bs!755623 () Bool)

(declare-fun d!1340401 () Bool)

(assert (= bs!755623 (and d!1340401 b!4422695)))

(declare-fun lambda!153439 () Int)

(assert (=> bs!755623 (= lambda!153439 lambda!153367)))

(declare-fun bs!755624 () Bool)

(assert (= bs!755624 (and d!1340401 b!4422692)))

(assert (=> bs!755624 (= lambda!153439 lambda!153368)))

(declare-fun bs!755625 () Bool)

(assert (= bs!755625 (and d!1340401 b!4423201)))

(assert (=> bs!755625 (= (= lt!1622116 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153439 lambda!153431))))

(declare-fun bs!755626 () Bool)

(assert (= bs!755626 (and d!1340401 d!1340041)))

(assert (=> bs!755626 (not (= lambda!153439 lambda!153276))))

(assert (=> bs!755625 (= (= lt!1622116 lt!1622729) (= lambda!153439 lambda!153432))))

(declare-fun bs!755627 () Bool)

(assert (= bs!755627 (and d!1340401 d!1340369)))

(assert (=> bs!755627 (= (= lt!1622116 lt!1622712) (= lambda!153439 lambda!153433))))

(declare-fun bs!755628 () Bool)

(assert (= bs!755628 (and d!1340401 b!4423204)))

(assert (=> bs!755628 (= (= lt!1622116 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153439 lambda!153430))))

(declare-fun bs!755629 () Bool)

(assert (= bs!755629 (and d!1340401 d!1340133)))

(assert (=> bs!755629 (= (= lt!1622116 lt!1622415) (= lambda!153439 lambda!153370))))

(assert (=> bs!755624 (= (= lt!1622116 lt!1622432) (= lambda!153439 lambda!153369))))

(assert (=> d!1340401 true))

(assert (=> d!1340401 (forall!9546 (toList!3470 lt!1622116) lambda!153439)))

(declare-fun lt!1622762 () Unit!81469)

(declare-fun choose!27892 (ListMap!2713) Unit!81469)

(assert (=> d!1340401 (= lt!1622762 (choose!27892 lt!1622116))))

(assert (=> d!1340401 (= (lemmaContainsAllItsOwnKeys!167 lt!1622116) lt!1622762)))

(declare-fun bs!755630 () Bool)

(assert (= bs!755630 d!1340401))

(declare-fun m!5101805 () Bool)

(assert (=> bs!755630 m!5101805))

(declare-fun m!5101807 () Bool)

(assert (=> bs!755630 m!5101807))

(assert (=> bm!307668 d!1340401))

(declare-fun d!1340407 () Bool)

(declare-fun res!1828331 () Bool)

(declare-fun e!2754084 () Bool)

(assert (=> d!1340407 (=> res!1828331 e!2754084)))

(assert (=> d!1340407 (= res!1828331 (and ((_ is Cons!49560) (t!356622 newBucket!194)) (= (_1!27965 (h!55239 (t!356622 newBucket!194))) (_1!27965 (h!55239 newBucket!194)))))))

(assert (=> d!1340407 (= (containsKey!1093 (t!356622 newBucket!194) (_1!27965 (h!55239 newBucket!194))) e!2754084)))

(declare-fun b!4423239 () Bool)

(declare-fun e!2754085 () Bool)

(assert (=> b!4423239 (= e!2754084 e!2754085)))

(declare-fun res!1828332 () Bool)

(assert (=> b!4423239 (=> (not res!1828332) (not e!2754085))))

(assert (=> b!4423239 (= res!1828332 ((_ is Cons!49560) (t!356622 newBucket!194)))))

(declare-fun b!4423240 () Bool)

(assert (=> b!4423240 (= e!2754085 (containsKey!1093 (t!356622 (t!356622 newBucket!194)) (_1!27965 (h!55239 newBucket!194))))))

(assert (= (and d!1340407 (not res!1828331)) b!4423239))

(assert (= (and b!4423239 res!1828332) b!4423240))

(declare-fun m!5101809 () Bool)

(assert (=> b!4423240 m!5101809))

(assert (=> b!4422464 d!1340407))

(declare-fun d!1340409 () Bool)

(declare-fun lt!1622765 () Bool)

(assert (=> d!1340409 (= lt!1622765 (select (content!7945 (keys!16915 lt!1622127)) key!3717))))

(declare-fun e!2754090 () Bool)

(assert (=> d!1340409 (= lt!1622765 e!2754090)))

(declare-fun res!1828337 () Bool)

(assert (=> d!1340409 (=> (not res!1828337) (not e!2754090))))

(assert (=> d!1340409 (= res!1828337 ((_ is Cons!49563) (keys!16915 lt!1622127)))))

(assert (=> d!1340409 (= (contains!12056 (keys!16915 lt!1622127) key!3717) lt!1622765)))

(declare-fun b!4423245 () Bool)

(declare-fun e!2754091 () Bool)

(assert (=> b!4423245 (= e!2754090 e!2754091)))

(declare-fun res!1828338 () Bool)

(assert (=> b!4423245 (=> res!1828338 e!2754091)))

(assert (=> b!4423245 (= res!1828338 (= (h!55244 (keys!16915 lt!1622127)) key!3717))))

(declare-fun b!4423246 () Bool)

(assert (=> b!4423246 (= e!2754091 (contains!12056 (t!356625 (keys!16915 lt!1622127)) key!3717))))

(assert (= (and d!1340409 res!1828337) b!4423245))

(assert (= (and b!4423245 (not res!1828338)) b!4423246))

(assert (=> d!1340409 m!5100871))

(declare-fun m!5101811 () Bool)

(assert (=> d!1340409 m!5101811))

(declare-fun m!5101813 () Bool)

(assert (=> d!1340409 m!5101813))

(declare-fun m!5101815 () Bool)

(assert (=> b!4423246 m!5101815))

(assert (=> b!4422642 d!1340409))

(declare-fun bs!755668 () Bool)

(declare-fun b!4423262 () Bool)

(assert (= bs!755668 (and b!4423262 b!4422909)))

(declare-fun lambda!153448 () Int)

(assert (=> bs!755668 (= (= (toList!3470 lt!1622127) (t!356622 (toList!3470 lt!1622127))) (= lambda!153448 lambda!153392))))

(declare-fun bs!755670 () Bool)

(assert (= bs!755670 (and b!4423262 b!4422907)))

(assert (=> bs!755670 (= (= (toList!3470 lt!1622127) (Cons!49560 (h!55239 (toList!3470 lt!1622127)) (t!356622 (toList!3470 lt!1622127)))) (= lambda!153448 lambda!153393))))

(declare-fun bs!755672 () Bool)

(assert (= bs!755672 (and b!4423262 b!4422905)))

(assert (=> bs!755672 (= lambda!153448 lambda!153394)))

(assert (=> b!4423262 true))

(declare-fun bs!755676 () Bool)

(declare-fun b!4423263 () Bool)

(assert (= bs!755676 (and b!4423263 b!4422913)))

(declare-fun lambda!153449 () Int)

(assert (=> bs!755676 (= lambda!153449 lambda!153395)))

(declare-fun d!1340411 () Bool)

(declare-fun e!2754098 () Bool)

(assert (=> d!1340411 e!2754098))

(declare-fun res!1828346 () Bool)

(assert (=> d!1340411 (=> (not res!1828346) (not e!2754098))))

(declare-fun lt!1622770 () List!49687)

(assert (=> d!1340411 (= res!1828346 (noDuplicate!655 lt!1622770))))

(assert (=> d!1340411 (= lt!1622770 (getKeysList!247 (toList!3470 lt!1622127)))))

(assert (=> d!1340411 (= (keys!16915 lt!1622127) lt!1622770)))

(declare-fun b!4423261 () Bool)

(declare-fun res!1828345 () Bool)

(assert (=> b!4423261 (=> (not res!1828345) (not e!2754098))))

(assert (=> b!4423261 (= res!1828345 (= (length!166 lt!1622770) (length!167 (toList!3470 lt!1622127))))))

(declare-fun res!1828347 () Bool)

(assert (=> b!4423262 (=> (not res!1828347) (not e!2754098))))

(assert (=> b!4423262 (= res!1828347 (forall!9547 lt!1622770 lambda!153448))))

(assert (=> b!4423263 (= e!2754098 (= (content!7945 lt!1622770) (content!7945 (map!10823 (toList!3470 lt!1622127) lambda!153449))))))

(assert (= (and d!1340411 res!1828346) b!4423261))

(assert (= (and b!4423261 res!1828345) b!4423262))

(assert (= (and b!4423262 res!1828347) b!4423263))

(declare-fun m!5101861 () Bool)

(assert (=> d!1340411 m!5101861))

(assert (=> d!1340411 m!5100869))

(declare-fun m!5101863 () Bool)

(assert (=> b!4423261 m!5101863))

(assert (=> b!4423261 m!5101227))

(declare-fun m!5101865 () Bool)

(assert (=> b!4423262 m!5101865))

(declare-fun m!5101867 () Bool)

(assert (=> b!4423263 m!5101867))

(declare-fun m!5101869 () Bool)

(assert (=> b!4423263 m!5101869))

(assert (=> b!4423263 m!5101869))

(declare-fun m!5101873 () Bool)

(assert (=> b!4423263 m!5101873))

(assert (=> b!4422642 d!1340411))

(declare-fun d!1340419 () Bool)

(declare-fun res!1828348 () Bool)

(declare-fun e!2754099 () Bool)

(assert (=> d!1340419 (=> res!1828348 e!2754099)))

(assert (=> d!1340419 (= res!1828348 ((_ is Nil!49560) (toList!3470 lt!1622116)))))

(assert (=> d!1340419 (= (forall!9546 (toList!3470 lt!1622116) lambda!153370) e!2754099)))

(declare-fun b!4423266 () Bool)

(declare-fun e!2754100 () Bool)

(assert (=> b!4423266 (= e!2754099 e!2754100)))

(declare-fun res!1828349 () Bool)

(assert (=> b!4423266 (=> (not res!1828349) (not e!2754100))))

(assert (=> b!4423266 (= res!1828349 (dynLambda!20838 lambda!153370 (h!55239 (toList!3470 lt!1622116))))))

(declare-fun b!4423267 () Bool)

(assert (=> b!4423267 (= e!2754100 (forall!9546 (t!356622 (toList!3470 lt!1622116)) lambda!153370))))

(assert (= (and d!1340419 (not res!1828348)) b!4423266))

(assert (= (and b!4423266 res!1828349) b!4423267))

(declare-fun b_lambda!142769 () Bool)

(assert (=> (not b_lambda!142769) (not b!4423266)))

(declare-fun m!5101881 () Bool)

(assert (=> b!4423266 m!5101881))

(declare-fun m!5101883 () Bool)

(assert (=> b!4423267 m!5101883))

(assert (=> b!4422694 d!1340419))

(declare-fun d!1340423 () Bool)

(declare-fun lt!1622781 () Bool)

(declare-fun content!7948 (List!49685) (InoxSet tuple2!49344))

(assert (=> d!1340423 (= lt!1622781 (select (content!7948 (toList!3469 lt!1622185)) lt!1622124))))

(declare-fun e!2754108 () Bool)

(assert (=> d!1340423 (= lt!1622781 e!2754108)))

(declare-fun res!1828359 () Bool)

(assert (=> d!1340423 (=> (not res!1828359) (not e!2754108))))

(assert (=> d!1340423 (= res!1828359 ((_ is Cons!49561) (toList!3469 lt!1622185)))))

(assert (=> d!1340423 (= (contains!12054 (toList!3469 lt!1622185) lt!1622124) lt!1622781)))

(declare-fun b!4423276 () Bool)

(declare-fun e!2754107 () Bool)

(assert (=> b!4423276 (= e!2754108 e!2754107)))

(declare-fun res!1828358 () Bool)

(assert (=> b!4423276 (=> res!1828358 e!2754107)))

(assert (=> b!4423276 (= res!1828358 (= (h!55240 (toList!3469 lt!1622185)) lt!1622124))))

(declare-fun b!4423277 () Bool)

(assert (=> b!4423277 (= e!2754107 (contains!12054 (t!356623 (toList!3469 lt!1622185)) lt!1622124))))

(assert (= (and d!1340423 res!1828359) b!4423276))

(assert (= (and b!4423276 (not res!1828358)) b!4423277))

(declare-fun m!5101913 () Bool)

(assert (=> d!1340423 m!5101913))

(declare-fun m!5101915 () Bool)

(assert (=> d!1340423 m!5101915))

(declare-fun m!5101917 () Bool)

(assert (=> b!4423277 m!5101917))

(assert (=> b!4422514 d!1340423))

(declare-fun d!1340431 () Bool)

(declare-fun res!1828360 () Bool)

(declare-fun e!2754109 () Bool)

(assert (=> d!1340431 (=> res!1828360 e!2754109)))

(assert (=> d!1340431 (= res!1828360 ((_ is Nil!49561) (t!356623 (toList!3469 lt!1622125))))))

(assert (=> d!1340431 (= (forall!9544 (t!356623 (toList!3469 lt!1622125)) lambda!153264) e!2754109)))

(declare-fun b!4423278 () Bool)

(declare-fun e!2754110 () Bool)

(assert (=> b!4423278 (= e!2754109 e!2754110)))

(declare-fun res!1828361 () Bool)

(assert (=> b!4423278 (=> (not res!1828361) (not e!2754110))))

(assert (=> b!4423278 (= res!1828361 (dynLambda!20836 lambda!153264 (h!55240 (t!356623 (toList!3469 lt!1622125)))))))

(declare-fun b!4423279 () Bool)

(assert (=> b!4423279 (= e!2754110 (forall!9544 (t!356623 (t!356623 (toList!3469 lt!1622125))) lambda!153264))))

(assert (= (and d!1340431 (not res!1828360)) b!4423278))

(assert (= (and b!4423278 res!1828361) b!4423279))

(declare-fun b_lambda!142771 () Bool)

(assert (=> (not b_lambda!142771) (not b!4423278)))

(declare-fun m!5101919 () Bool)

(assert (=> b!4423278 m!5101919))

(declare-fun m!5101921 () Bool)

(assert (=> b!4423279 m!5101921))

(assert (=> b!4422647 d!1340431))

(declare-fun d!1340433 () Bool)

(declare-fun e!2754111 () Bool)

(assert (=> d!1340433 e!2754111))

(declare-fun res!1828362 () Bool)

(assert (=> d!1340433 (=> res!1828362 e!2754111)))

(declare-fun lt!1622785 () Bool)

(assert (=> d!1340433 (= res!1828362 (not lt!1622785))))

(declare-fun lt!1622782 () Bool)

(assert (=> d!1340433 (= lt!1622785 lt!1622782)))

(declare-fun lt!1622784 () Unit!81469)

(declare-fun e!2754112 () Unit!81469)

(assert (=> d!1340433 (= lt!1622784 e!2754112)))

(declare-fun c!752937 () Bool)

(assert (=> d!1340433 (= c!752937 lt!1622782)))

(assert (=> d!1340433 (= lt!1622782 (containsKey!1094 (toList!3469 lt!1622185) (_1!27966 lt!1622124)))))

(assert (=> d!1340433 (= (contains!12049 lt!1622185 (_1!27966 lt!1622124)) lt!1622785)))

(declare-fun b!4423280 () Bool)

(declare-fun lt!1622783 () Unit!81469)

(assert (=> b!4423280 (= e!2754112 lt!1622783)))

(assert (=> b!4423280 (= lt!1622783 (lemmaContainsKeyImpliesGetValueByKeyDefined!607 (toList!3469 lt!1622185) (_1!27966 lt!1622124)))))

(assert (=> b!4423280 (isDefined!8004 (getValueByKey!699 (toList!3469 lt!1622185) (_1!27966 lt!1622124)))))

(declare-fun b!4423281 () Bool)

(declare-fun Unit!81572 () Unit!81469)

(assert (=> b!4423281 (= e!2754112 Unit!81572)))

(declare-fun b!4423282 () Bool)

(assert (=> b!4423282 (= e!2754111 (isDefined!8004 (getValueByKey!699 (toList!3469 lt!1622185) (_1!27966 lt!1622124))))))

(assert (= (and d!1340433 c!752937) b!4423280))

(assert (= (and d!1340433 (not c!752937)) b!4423281))

(assert (= (and d!1340433 (not res!1828362)) b!4423282))

(declare-fun m!5101923 () Bool)

(assert (=> d!1340433 m!5101923))

(declare-fun m!5101925 () Bool)

(assert (=> b!4423280 m!5101925))

(assert (=> b!4423280 m!5100661))

(assert (=> b!4423280 m!5100661))

(declare-fun m!5101927 () Bool)

(assert (=> b!4423280 m!5101927))

(assert (=> b!4423282 m!5100661))

(assert (=> b!4423282 m!5100661))

(assert (=> b!4423282 m!5101927))

(assert (=> d!1340051 d!1340433))

(declare-fun b!4423284 () Bool)

(declare-fun e!2754113 () Option!10713)

(declare-fun e!2754114 () Option!10713)

(assert (=> b!4423284 (= e!2754113 e!2754114)))

(declare-fun c!752939 () Bool)

(assert (=> b!4423284 (= c!752939 (and ((_ is Cons!49561) lt!1622186) (not (= (_1!27966 (h!55240 lt!1622186)) (_1!27966 lt!1622124)))))))

(declare-fun b!4423286 () Bool)

(assert (=> b!4423286 (= e!2754114 None!10712)))

(declare-fun d!1340435 () Bool)

(declare-fun c!752938 () Bool)

(assert (=> d!1340435 (= c!752938 (and ((_ is Cons!49561) lt!1622186) (= (_1!27966 (h!55240 lt!1622186)) (_1!27966 lt!1622124))))))

(assert (=> d!1340435 (= (getValueByKey!699 lt!1622186 (_1!27966 lt!1622124)) e!2754113)))

(declare-fun b!4423283 () Bool)

(assert (=> b!4423283 (= e!2754113 (Some!10712 (_2!27966 (h!55240 lt!1622186))))))

(declare-fun b!4423285 () Bool)

(assert (=> b!4423285 (= e!2754114 (getValueByKey!699 (t!356623 lt!1622186) (_1!27966 lt!1622124)))))

(assert (= (and d!1340435 c!752938) b!4423283))

(assert (= (and d!1340435 (not c!752938)) b!4423284))

(assert (= (and b!4423284 c!752939) b!4423285))

(assert (= (and b!4423284 (not c!752939)) b!4423286))

(declare-fun m!5101929 () Bool)

(assert (=> b!4423285 m!5101929))

(assert (=> d!1340051 d!1340435))

(declare-fun d!1340437 () Bool)

(assert (=> d!1340437 (= (getValueByKey!699 lt!1622186 (_1!27966 lt!1622124)) (Some!10712 (_2!27966 lt!1622124)))))

(declare-fun lt!1622786 () Unit!81469)

(assert (=> d!1340437 (= lt!1622786 (choose!27889 lt!1622186 (_1!27966 lt!1622124) (_2!27966 lt!1622124)))))

(declare-fun e!2754115 () Bool)

(assert (=> d!1340437 e!2754115))

(declare-fun res!1828363 () Bool)

(assert (=> d!1340437 (=> (not res!1828363) (not e!2754115))))

(assert (=> d!1340437 (= res!1828363 (isStrictlySorted!226 lt!1622186))))

(assert (=> d!1340437 (= (lemmaContainsTupThenGetReturnValue!434 lt!1622186 (_1!27966 lt!1622124) (_2!27966 lt!1622124)) lt!1622786)))

(declare-fun b!4423287 () Bool)

(declare-fun res!1828364 () Bool)

(assert (=> b!4423287 (=> (not res!1828364) (not e!2754115))))

(assert (=> b!4423287 (= res!1828364 (containsKey!1094 lt!1622186 (_1!27966 lt!1622124)))))

(declare-fun b!4423288 () Bool)

(assert (=> b!4423288 (= e!2754115 (contains!12054 lt!1622186 (tuple2!49345 (_1!27966 lt!1622124) (_2!27966 lt!1622124))))))

(assert (= (and d!1340437 res!1828363) b!4423287))

(assert (= (and b!4423287 res!1828364) b!4423288))

(assert (=> d!1340437 m!5100655))

(declare-fun m!5101931 () Bool)

(assert (=> d!1340437 m!5101931))

(declare-fun m!5101933 () Bool)

(assert (=> d!1340437 m!5101933))

(declare-fun m!5101935 () Bool)

(assert (=> b!4423287 m!5101935))

(declare-fun m!5101937 () Bool)

(assert (=> b!4423288 m!5101937))

(assert (=> d!1340051 d!1340437))

(declare-fun b!4423289 () Bool)

(declare-fun e!2754120 () List!49685)

(declare-fun call!307732 () List!49685)

(assert (=> b!4423289 (= e!2754120 call!307732)))

(declare-fun c!752940 () Bool)

(declare-fun c!752943 () Bool)

(declare-fun b!4423290 () Bool)

(declare-fun e!2754117 () List!49685)

(assert (=> b!4423290 (= e!2754117 (ite c!752940 (t!356623 (toList!3469 lt!1622117)) (ite c!752943 (Cons!49561 (h!55240 (toList!3469 lt!1622117)) (t!356623 (toList!3469 lt!1622117))) Nil!49561)))))

(declare-fun b!4423291 () Bool)

(declare-fun e!2754119 () List!49685)

(declare-fun call!307733 () List!49685)

(assert (=> b!4423291 (= e!2754119 call!307733)))

(declare-fun b!4423292 () Bool)

(assert (=> b!4423292 (= e!2754120 call!307732)))

(declare-fun b!4423293 () Bool)

(declare-fun e!2754116 () List!49685)

(assert (=> b!4423293 (= e!2754116 e!2754119)))

(assert (=> b!4423293 (= c!752940 (and ((_ is Cons!49561) (toList!3469 lt!1622117)) (= (_1!27966 (h!55240 (toList!3469 lt!1622117))) (_1!27966 lt!1622124))))))

(declare-fun bm!307727 () Bool)

(declare-fun call!307731 () List!49685)

(declare-fun c!752942 () Bool)

(assert (=> bm!307727 (= call!307731 ($colon$colon!780 e!2754117 (ite c!752942 (h!55240 (toList!3469 lt!1622117)) (tuple2!49345 (_1!27966 lt!1622124) (_2!27966 lt!1622124)))))))

(declare-fun c!752941 () Bool)

(assert (=> bm!307727 (= c!752941 c!752942)))

(declare-fun b!4423294 () Bool)

(declare-fun res!1828366 () Bool)

(declare-fun e!2754118 () Bool)

(assert (=> b!4423294 (=> (not res!1828366) (not e!2754118))))

(declare-fun lt!1622787 () List!49685)

(assert (=> b!4423294 (= res!1828366 (containsKey!1094 lt!1622787 (_1!27966 lt!1622124)))))

(declare-fun b!4423295 () Bool)

(assert (=> b!4423295 (= e!2754118 (contains!12054 lt!1622787 (tuple2!49345 (_1!27966 lt!1622124) (_2!27966 lt!1622124))))))

(declare-fun b!4423296 () Bool)

(assert (=> b!4423296 (= c!752943 (and ((_ is Cons!49561) (toList!3469 lt!1622117)) (bvsgt (_1!27966 (h!55240 (toList!3469 lt!1622117))) (_1!27966 lt!1622124))))))

(assert (=> b!4423296 (= e!2754119 e!2754120)))

(declare-fun b!4423297 () Bool)

(assert (=> b!4423297 (= e!2754116 call!307731)))

(declare-fun bm!307726 () Bool)

(assert (=> bm!307726 (= call!307732 call!307733)))

(declare-fun d!1340439 () Bool)

(assert (=> d!1340439 e!2754118))

(declare-fun res!1828365 () Bool)

(assert (=> d!1340439 (=> (not res!1828365) (not e!2754118))))

(assert (=> d!1340439 (= res!1828365 (isStrictlySorted!226 lt!1622787))))

(assert (=> d!1340439 (= lt!1622787 e!2754116)))

(assert (=> d!1340439 (= c!752942 (and ((_ is Cons!49561) (toList!3469 lt!1622117)) (bvslt (_1!27966 (h!55240 (toList!3469 lt!1622117))) (_1!27966 lt!1622124))))))

(assert (=> d!1340439 (isStrictlySorted!226 (toList!3469 lt!1622117))))

(assert (=> d!1340439 (= (insertStrictlySorted!254 (toList!3469 lt!1622117) (_1!27966 lt!1622124) (_2!27966 lt!1622124)) lt!1622787)))

(declare-fun bm!307728 () Bool)

(assert (=> bm!307728 (= call!307733 call!307731)))

(declare-fun b!4423298 () Bool)

(assert (=> b!4423298 (= e!2754117 (insertStrictlySorted!254 (t!356623 (toList!3469 lt!1622117)) (_1!27966 lt!1622124) (_2!27966 lt!1622124)))))

(assert (= (and d!1340439 c!752942) b!4423297))

(assert (= (and d!1340439 (not c!752942)) b!4423293))

(assert (= (and b!4423293 c!752940) b!4423291))

(assert (= (and b!4423293 (not c!752940)) b!4423296))

(assert (= (and b!4423296 c!752943) b!4423289))

(assert (= (and b!4423296 (not c!752943)) b!4423292))

(assert (= (or b!4423289 b!4423292) bm!307726))

(assert (= (or b!4423291 bm!307726) bm!307728))

(assert (= (or b!4423297 bm!307728) bm!307727))

(assert (= (and bm!307727 c!752941) b!4423298))

(assert (= (and bm!307727 (not c!752941)) b!4423290))

(assert (= (and d!1340439 res!1828365) b!4423294))

(assert (= (and b!4423294 res!1828366) b!4423295))

(declare-fun m!5101939 () Bool)

(assert (=> b!4423295 m!5101939))

(declare-fun m!5101941 () Bool)

(assert (=> b!4423298 m!5101941))

(declare-fun m!5101943 () Bool)

(assert (=> d!1340439 m!5101943))

(declare-fun m!5101945 () Bool)

(assert (=> d!1340439 m!5101945))

(declare-fun m!5101947 () Bool)

(assert (=> bm!307727 m!5101947))

(declare-fun m!5101949 () Bool)

(assert (=> b!4423294 m!5101949))

(assert (=> d!1340051 d!1340439))

(declare-fun d!1340441 () Bool)

(declare-fun res!1828367 () Bool)

(declare-fun e!2754121 () Bool)

(assert (=> d!1340441 (=> res!1828367 e!2754121)))

(assert (=> d!1340441 (= res!1828367 ((_ is Nil!49560) (toList!3470 lt!1622116)))))

(assert (=> d!1340441 (= (forall!9546 (toList!3470 lt!1622116) lambda!153369) e!2754121)))

(declare-fun b!4423299 () Bool)

(declare-fun e!2754122 () Bool)

(assert (=> b!4423299 (= e!2754121 e!2754122)))

(declare-fun res!1828368 () Bool)

(assert (=> b!4423299 (=> (not res!1828368) (not e!2754122))))

(assert (=> b!4423299 (= res!1828368 (dynLambda!20838 lambda!153369 (h!55239 (toList!3470 lt!1622116))))))

(declare-fun b!4423300 () Bool)

(assert (=> b!4423300 (= e!2754122 (forall!9546 (t!356622 (toList!3470 lt!1622116)) lambda!153369))))

(assert (= (and d!1340441 (not res!1828367)) b!4423299))

(assert (= (and b!4423299 res!1828368) b!4423300))

(declare-fun b_lambda!142773 () Bool)

(assert (=> (not b_lambda!142773) (not b!4423299)))

(declare-fun m!5101951 () Bool)

(assert (=> b!4423299 m!5101951))

(declare-fun m!5101953 () Bool)

(assert (=> b!4423300 m!5101953))

(assert (=> b!4422691 d!1340441))

(declare-fun d!1340443 () Bool)

(declare-fun res!1828369 () Bool)

(declare-fun e!2754123 () Bool)

(assert (=> d!1340443 (=> res!1828369 e!2754123)))

(assert (=> d!1340443 (= res!1828369 (and ((_ is Cons!49560) (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (= (_1!27965 (h!55239 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616)))))) key!3717)))))

(assert (=> d!1340443 (= (containsKey!1093 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616)))) key!3717) e!2754123)))

(declare-fun b!4423301 () Bool)

(declare-fun e!2754124 () Bool)

(assert (=> b!4423301 (= e!2754123 e!2754124)))

(declare-fun res!1828370 () Bool)

(assert (=> b!4423301 (=> (not res!1828370) (not e!2754124))))

(assert (=> b!4423301 (= res!1828370 ((_ is Cons!49560) (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))

(declare-fun b!4423302 () Bool)

(assert (=> b!4423302 (= e!2754124 (containsKey!1093 (t!356622 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616))))) key!3717))))

(assert (= (and d!1340443 (not res!1828369)) b!4423301))

(assert (= (and b!4423301 res!1828370) b!4423302))

(declare-fun m!5101955 () Bool)

(assert (=> b!4423302 m!5101955))

(assert (=> b!4422494 d!1340443))

(declare-fun bs!755681 () Bool)

(declare-fun b!4423307 () Bool)

(assert (= bs!755681 (and b!4423307 b!4422695)))

(declare-fun lambda!153450 () Int)

(assert (=> bs!755681 (= (= (extractMap!802 (t!356623 (toList!3469 lt!1622117))) lt!1622116) (= lambda!153450 lambda!153367))))

(declare-fun bs!755682 () Bool)

(assert (= bs!755682 (and b!4423307 b!4422692)))

(assert (=> bs!755682 (= (= (extractMap!802 (t!356623 (toList!3469 lt!1622117))) lt!1622116) (= lambda!153450 lambda!153368))))

(declare-fun bs!755683 () Bool)

(assert (= bs!755683 (and b!4423307 d!1340401)))

(assert (=> bs!755683 (= (= (extractMap!802 (t!356623 (toList!3469 lt!1622117))) lt!1622116) (= lambda!153450 lambda!153439))))

(declare-fun bs!755684 () Bool)

(assert (= bs!755684 (and b!4423307 b!4423201)))

(assert (=> bs!755684 (= (= (extractMap!802 (t!356623 (toList!3469 lt!1622117))) (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153450 lambda!153431))))

(declare-fun bs!755685 () Bool)

(assert (= bs!755685 (and b!4423307 d!1340041)))

(assert (=> bs!755685 (not (= lambda!153450 lambda!153276))))

(assert (=> bs!755684 (= (= (extractMap!802 (t!356623 (toList!3469 lt!1622117))) lt!1622729) (= lambda!153450 lambda!153432))))

(declare-fun bs!755686 () Bool)

(assert (= bs!755686 (and b!4423307 d!1340369)))

(assert (=> bs!755686 (= (= (extractMap!802 (t!356623 (toList!3469 lt!1622117))) lt!1622712) (= lambda!153450 lambda!153433))))

(declare-fun bs!755687 () Bool)

(assert (= bs!755687 (and b!4423307 b!4423204)))

(assert (=> bs!755687 (= (= (extractMap!802 (t!356623 (toList!3469 lt!1622117))) (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153450 lambda!153430))))

(declare-fun bs!755688 () Bool)

(assert (= bs!755688 (and b!4423307 d!1340133)))

(assert (=> bs!755688 (= (= (extractMap!802 (t!356623 (toList!3469 lt!1622117))) lt!1622415) (= lambda!153450 lambda!153370))))

(assert (=> bs!755682 (= (= (extractMap!802 (t!356623 (toList!3469 lt!1622117))) lt!1622432) (= lambda!153450 lambda!153369))))

(assert (=> b!4423307 true))

(declare-fun bs!755689 () Bool)

(declare-fun b!4423304 () Bool)

(assert (= bs!755689 (and b!4423304 b!4422695)))

(declare-fun lambda!153451 () Int)

(assert (=> bs!755689 (= (= (extractMap!802 (t!356623 (toList!3469 lt!1622117))) lt!1622116) (= lambda!153451 lambda!153367))))

(declare-fun bs!755690 () Bool)

(assert (= bs!755690 (and b!4423304 b!4423307)))

(assert (=> bs!755690 (= lambda!153451 lambda!153450)))

(declare-fun bs!755691 () Bool)

(assert (= bs!755691 (and b!4423304 b!4422692)))

(assert (=> bs!755691 (= (= (extractMap!802 (t!356623 (toList!3469 lt!1622117))) lt!1622116) (= lambda!153451 lambda!153368))))

(declare-fun bs!755692 () Bool)

(assert (= bs!755692 (and b!4423304 d!1340401)))

(assert (=> bs!755692 (= (= (extractMap!802 (t!356623 (toList!3469 lt!1622117))) lt!1622116) (= lambda!153451 lambda!153439))))

(declare-fun bs!755693 () Bool)

(assert (= bs!755693 (and b!4423304 b!4423201)))

(assert (=> bs!755693 (= (= (extractMap!802 (t!356623 (toList!3469 lt!1622117))) (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153451 lambda!153431))))

(declare-fun bs!755694 () Bool)

(assert (= bs!755694 (and b!4423304 d!1340041)))

(assert (=> bs!755694 (not (= lambda!153451 lambda!153276))))

(assert (=> bs!755693 (= (= (extractMap!802 (t!356623 (toList!3469 lt!1622117))) lt!1622729) (= lambda!153451 lambda!153432))))

(declare-fun bs!755695 () Bool)

(assert (= bs!755695 (and b!4423304 d!1340369)))

(assert (=> bs!755695 (= (= (extractMap!802 (t!356623 (toList!3469 lt!1622117))) lt!1622712) (= lambda!153451 lambda!153433))))

(declare-fun bs!755696 () Bool)

(assert (= bs!755696 (and b!4423304 b!4423204)))

(assert (=> bs!755696 (= (= (extractMap!802 (t!356623 (toList!3469 lt!1622117))) (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153451 lambda!153430))))

(declare-fun bs!755697 () Bool)

(assert (= bs!755697 (and b!4423304 d!1340133)))

(assert (=> bs!755697 (= (= (extractMap!802 (t!356623 (toList!3469 lt!1622117))) lt!1622415) (= lambda!153451 lambda!153370))))

(assert (=> bs!755691 (= (= (extractMap!802 (t!356623 (toList!3469 lt!1622117))) lt!1622432) (= lambda!153451 lambda!153369))))

(assert (=> b!4423304 true))

(declare-fun lambda!153452 () Int)

(declare-fun lt!1622807 () ListMap!2713)

(assert (=> b!4423304 (= (= lt!1622807 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153452 lambda!153451))))

(assert (=> bs!755689 (= (= lt!1622807 lt!1622116) (= lambda!153452 lambda!153367))))

(assert (=> bs!755690 (= (= lt!1622807 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153452 lambda!153450))))

(assert (=> bs!755691 (= (= lt!1622807 lt!1622116) (= lambda!153452 lambda!153368))))

(assert (=> bs!755692 (= (= lt!1622807 lt!1622116) (= lambda!153452 lambda!153439))))

(assert (=> bs!755693 (= (= lt!1622807 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153452 lambda!153431))))

(assert (=> bs!755694 (not (= lambda!153452 lambda!153276))))

(assert (=> bs!755693 (= (= lt!1622807 lt!1622729) (= lambda!153452 lambda!153432))))

(assert (=> bs!755695 (= (= lt!1622807 lt!1622712) (= lambda!153452 lambda!153433))))

(assert (=> bs!755696 (= (= lt!1622807 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153452 lambda!153430))))

(assert (=> bs!755697 (= (= lt!1622807 lt!1622415) (= lambda!153452 lambda!153370))))

(assert (=> bs!755691 (= (= lt!1622807 lt!1622432) (= lambda!153452 lambda!153369))))

(assert (=> b!4423304 true))

(declare-fun bs!755698 () Bool)

(declare-fun d!1340445 () Bool)

(assert (= bs!755698 (and d!1340445 b!4423304)))

(declare-fun lt!1622790 () ListMap!2713)

(declare-fun lambda!153453 () Int)

(assert (=> bs!755698 (= (= lt!1622790 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153453 lambda!153451))))

(declare-fun bs!755699 () Bool)

(assert (= bs!755699 (and d!1340445 b!4422695)))

(assert (=> bs!755699 (= (= lt!1622790 lt!1622116) (= lambda!153453 lambda!153367))))

(declare-fun bs!755700 () Bool)

(assert (= bs!755700 (and d!1340445 b!4423307)))

(assert (=> bs!755700 (= (= lt!1622790 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153453 lambda!153450))))

(declare-fun bs!755701 () Bool)

(assert (= bs!755701 (and d!1340445 b!4422692)))

(assert (=> bs!755701 (= (= lt!1622790 lt!1622116) (= lambda!153453 lambda!153368))))

(declare-fun bs!755702 () Bool)

(assert (= bs!755702 (and d!1340445 d!1340401)))

(assert (=> bs!755702 (= (= lt!1622790 lt!1622116) (= lambda!153453 lambda!153439))))

(declare-fun bs!755703 () Bool)

(assert (= bs!755703 (and d!1340445 b!4423201)))

(assert (=> bs!755703 (= (= lt!1622790 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153453 lambda!153431))))

(declare-fun bs!755704 () Bool)

(assert (= bs!755704 (and d!1340445 d!1340041)))

(assert (=> bs!755704 (not (= lambda!153453 lambda!153276))))

(assert (=> bs!755698 (= (= lt!1622790 lt!1622807) (= lambda!153453 lambda!153452))))

(assert (=> bs!755703 (= (= lt!1622790 lt!1622729) (= lambda!153453 lambda!153432))))

(declare-fun bs!755706 () Bool)

(assert (= bs!755706 (and d!1340445 d!1340369)))

(assert (=> bs!755706 (= (= lt!1622790 lt!1622712) (= lambda!153453 lambda!153433))))

(declare-fun bs!755707 () Bool)

(assert (= bs!755707 (and d!1340445 b!4423204)))

(assert (=> bs!755707 (= (= lt!1622790 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153453 lambda!153430))))

(declare-fun bs!755708 () Bool)

(assert (= bs!755708 (and d!1340445 d!1340133)))

(assert (=> bs!755708 (= (= lt!1622790 lt!1622415) (= lambda!153453 lambda!153370))))

(assert (=> bs!755701 (= (= lt!1622790 lt!1622432) (= lambda!153453 lambda!153369))))

(assert (=> d!1340445 true))

(declare-fun b!4423303 () Bool)

(declare-fun e!2754125 () Bool)

(assert (=> b!4423303 (= e!2754125 (forall!9546 (toList!3470 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) lambda!153452))))

(declare-fun e!2754126 () ListMap!2713)

(assert (=> b!4423304 (= e!2754126 lt!1622807)))

(declare-fun lt!1622789 () ListMap!2713)

(assert (=> b!4423304 (= lt!1622789 (+!1066 (extractMap!802 (t!356623 (toList!3469 lt!1622117))) (h!55239 (_2!27966 (h!55240 (toList!3469 lt!1622117))))))))

(assert (=> b!4423304 (= lt!1622807 (addToMapMapFromBucket!378 (t!356622 (_2!27966 (h!55240 (toList!3469 lt!1622117)))) (+!1066 (extractMap!802 (t!356623 (toList!3469 lt!1622117))) (h!55239 (_2!27966 (h!55240 (toList!3469 lt!1622117)))))))))

(declare-fun lt!1622794 () Unit!81469)

(declare-fun call!307736 () Unit!81469)

(assert (=> b!4423304 (= lt!1622794 call!307736)))

(assert (=> b!4423304 (forall!9546 (toList!3470 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) lambda!153451)))

(declare-fun lt!1622801 () Unit!81469)

(assert (=> b!4423304 (= lt!1622801 lt!1622794)))

(assert (=> b!4423304 (forall!9546 (toList!3470 lt!1622789) lambda!153452)))

(declare-fun lt!1622806 () Unit!81469)

(declare-fun Unit!81584 () Unit!81469)

(assert (=> b!4423304 (= lt!1622806 Unit!81584)))

(assert (=> b!4423304 (forall!9546 (t!356622 (_2!27966 (h!55240 (toList!3469 lt!1622117)))) lambda!153452)))

(declare-fun lt!1622803 () Unit!81469)

(declare-fun Unit!81585 () Unit!81469)

(assert (=> b!4423304 (= lt!1622803 Unit!81585)))

(declare-fun lt!1622796 () Unit!81469)

(declare-fun Unit!81586 () Unit!81469)

(assert (=> b!4423304 (= lt!1622796 Unit!81586)))

(declare-fun lt!1622804 () Unit!81469)

(assert (=> b!4423304 (= lt!1622804 (forallContained!2083 (toList!3470 lt!1622789) lambda!153452 (h!55239 (_2!27966 (h!55240 (toList!3469 lt!1622117))))))))

(assert (=> b!4423304 (contains!12050 lt!1622789 (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lt!1622117))))))))

(declare-fun lt!1622797 () Unit!81469)

(declare-fun Unit!81587 () Unit!81469)

(assert (=> b!4423304 (= lt!1622797 Unit!81587)))

(assert (=> b!4423304 (contains!12050 lt!1622807 (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lt!1622117))))))))

(declare-fun lt!1622788 () Unit!81469)

(declare-fun Unit!81588 () Unit!81469)

(assert (=> b!4423304 (= lt!1622788 Unit!81588)))

(assert (=> b!4423304 (forall!9546 (_2!27966 (h!55240 (toList!3469 lt!1622117))) lambda!153452)))

(declare-fun lt!1622802 () Unit!81469)

(declare-fun Unit!81589 () Unit!81469)

(assert (=> b!4423304 (= lt!1622802 Unit!81589)))

(declare-fun call!307734 () Bool)

(assert (=> b!4423304 call!307734))

(declare-fun lt!1622808 () Unit!81469)

(declare-fun Unit!81590 () Unit!81469)

(assert (=> b!4423304 (= lt!1622808 Unit!81590)))

(declare-fun lt!1622798 () Unit!81469)

(declare-fun Unit!81591 () Unit!81469)

(assert (=> b!4423304 (= lt!1622798 Unit!81591)))

(declare-fun lt!1622805 () Unit!81469)

(assert (=> b!4423304 (= lt!1622805 (addForallContainsKeyThenBeforeAdding!167 (extractMap!802 (t!356623 (toList!3469 lt!1622117))) lt!1622807 (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lt!1622117))))) (_2!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lt!1622117)))))))))

(assert (=> b!4423304 (forall!9546 (toList!3470 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) lambda!153452)))

(declare-fun lt!1622799 () Unit!81469)

(assert (=> b!4423304 (= lt!1622799 lt!1622805)))

(declare-fun call!307735 () Bool)

(assert (=> b!4423304 call!307735))

(declare-fun lt!1622800 () Unit!81469)

(declare-fun Unit!81592 () Unit!81469)

(assert (=> b!4423304 (= lt!1622800 Unit!81592)))

(declare-fun res!1828372 () Bool)

(assert (=> b!4423304 (= res!1828372 (forall!9546 (_2!27966 (h!55240 (toList!3469 lt!1622117))) lambda!153452))))

(assert (=> b!4423304 (=> (not res!1828372) (not e!2754125))))

(assert (=> b!4423304 e!2754125))

(declare-fun lt!1622792 () Unit!81469)

(declare-fun Unit!81593 () Unit!81469)

(assert (=> b!4423304 (= lt!1622792 Unit!81593)))

(declare-fun bm!307729 () Bool)

(declare-fun c!752944 () Bool)

(assert (=> bm!307729 (= call!307734 (forall!9546 (ite c!752944 (toList!3470 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (toList!3470 lt!1622789)) (ite c!752944 lambda!153450 lambda!153452)))))

(declare-fun b!4423305 () Bool)

(declare-fun e!2754127 () Bool)

(assert (=> b!4423305 (= e!2754127 (invariantList!799 (toList!3470 lt!1622790)))))

(declare-fun b!4423306 () Bool)

(declare-fun res!1828371 () Bool)

(assert (=> b!4423306 (=> (not res!1828371) (not e!2754127))))

(assert (=> b!4423306 (= res!1828371 (forall!9546 (toList!3470 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) lambda!153453))))

(assert (=> b!4423307 (= e!2754126 (extractMap!802 (t!356623 (toList!3469 lt!1622117))))))

(declare-fun lt!1622795 () Unit!81469)

(assert (=> b!4423307 (= lt!1622795 call!307736)))

(assert (=> b!4423307 call!307735))

(declare-fun lt!1622793 () Unit!81469)

(assert (=> b!4423307 (= lt!1622793 lt!1622795)))

(assert (=> b!4423307 call!307734))

(declare-fun lt!1622791 () Unit!81469)

(declare-fun Unit!81594 () Unit!81469)

(assert (=> b!4423307 (= lt!1622791 Unit!81594)))

(assert (=> d!1340445 e!2754127))

(declare-fun res!1828373 () Bool)

(assert (=> d!1340445 (=> (not res!1828373) (not e!2754127))))

(assert (=> d!1340445 (= res!1828373 (forall!9546 (_2!27966 (h!55240 (toList!3469 lt!1622117))) lambda!153453))))

(assert (=> d!1340445 (= lt!1622790 e!2754126)))

(assert (=> d!1340445 (= c!752944 ((_ is Nil!49560) (_2!27966 (h!55240 (toList!3469 lt!1622117)))))))

(assert (=> d!1340445 (noDuplicateKeys!741 (_2!27966 (h!55240 (toList!3469 lt!1622117))))))

(assert (=> d!1340445 (= (addToMapMapFromBucket!378 (_2!27966 (h!55240 (toList!3469 lt!1622117))) (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) lt!1622790)))

(declare-fun bm!307730 () Bool)

(assert (=> bm!307730 (= call!307736 (lemmaContainsAllItsOwnKeys!167 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))))))

(declare-fun bm!307731 () Bool)

(assert (=> bm!307731 (= call!307735 (forall!9546 (toList!3470 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (ite c!752944 lambda!153450 lambda!153452)))))

(assert (= (and d!1340445 c!752944) b!4423307))

(assert (= (and d!1340445 (not c!752944)) b!4423304))

(assert (= (and b!4423304 res!1828372) b!4423303))

(assert (= (or b!4423307 b!4423304) bm!307730))

(assert (= (or b!4423307 b!4423304) bm!307729))

(assert (= (or b!4423307 b!4423304) bm!307731))

(assert (= (and d!1340445 res!1828373) b!4423306))

(assert (= (and b!4423306 res!1828371) b!4423305))

(assert (=> bm!307730 m!5100671))

(declare-fun m!5101967 () Bool)

(assert (=> bm!307730 m!5101967))

(declare-fun m!5101969 () Bool)

(assert (=> b!4423304 m!5101969))

(declare-fun m!5101971 () Bool)

(assert (=> b!4423304 m!5101971))

(declare-fun m!5101973 () Bool)

(assert (=> b!4423304 m!5101973))

(declare-fun m!5101975 () Bool)

(assert (=> b!4423304 m!5101975))

(declare-fun m!5101977 () Bool)

(assert (=> b!4423304 m!5101977))

(declare-fun m!5101979 () Bool)

(assert (=> b!4423304 m!5101979))

(declare-fun m!5101981 () Bool)

(assert (=> b!4423304 m!5101981))

(declare-fun m!5101983 () Bool)

(assert (=> b!4423304 m!5101983))

(assert (=> b!4423304 m!5100671))

(assert (=> b!4423304 m!5101975))

(declare-fun m!5101985 () Bool)

(assert (=> b!4423304 m!5101985))

(assert (=> b!4423304 m!5100671))

(declare-fun m!5101987 () Bool)

(assert (=> b!4423304 m!5101987))

(assert (=> b!4423304 m!5101985))

(declare-fun m!5101989 () Bool)

(assert (=> b!4423304 m!5101989))

(declare-fun m!5101991 () Bool)

(assert (=> d!1340445 m!5101991))

(declare-fun m!5101993 () Bool)

(assert (=> d!1340445 m!5101993))

(declare-fun m!5101995 () Bool)

(assert (=> bm!307731 m!5101995))

(declare-fun m!5101997 () Bool)

(assert (=> bm!307729 m!5101997))

(declare-fun m!5101999 () Bool)

(assert (=> b!4423306 m!5101999))

(assert (=> b!4423303 m!5101969))

(declare-fun m!5102001 () Bool)

(assert (=> b!4423305 m!5102001))

(assert (=> b!4422540 d!1340445))

(declare-fun bs!755710 () Bool)

(declare-fun d!1340455 () Bool)

(assert (= bs!755710 (and d!1340455 d!1340059)))

(declare-fun lambda!153454 () Int)

(assert (=> bs!755710 (= lambda!153454 lambda!153287)))

(declare-fun bs!755711 () Bool)

(assert (= bs!755711 (and d!1340455 d!1340045)))

(assert (=> bs!755711 (= lambda!153454 lambda!153282)))

(declare-fun bs!755712 () Bool)

(assert (= bs!755712 (and d!1340455 start!431164)))

(assert (=> bs!755712 (= lambda!153454 lambda!153264)))

(declare-fun bs!755713 () Bool)

(assert (= bs!755713 (and d!1340455 d!1340017)))

(assert (=> bs!755713 (not (= lambda!153454 lambda!153267))))

(declare-fun bs!755714 () Bool)

(assert (= bs!755714 (and d!1340455 d!1340033)))

(assert (=> bs!755714 (= lambda!153454 lambda!153273)))

(declare-fun bs!755715 () Bool)

(assert (= bs!755715 (and d!1340455 d!1340091)))

(assert (=> bs!755715 (= lambda!153454 lambda!153302)))

(declare-fun bs!755716 () Bool)

(assert (= bs!755716 (and d!1340455 d!1340389)))

(assert (=> bs!755716 (= lambda!153454 lambda!153434)))

(declare-fun bs!755717 () Bool)

(assert (= bs!755717 (and d!1340455 d!1340121)))

(assert (=> bs!755717 (= lambda!153454 lambda!153306)))

(declare-fun bs!755718 () Bool)

(assert (= bs!755718 (and d!1340455 d!1340057)))

(assert (=> bs!755718 (= lambda!153454 lambda!153286)))

(declare-fun bs!755719 () Bool)

(assert (= bs!755719 (and d!1340455 d!1340073)))

(assert (=> bs!755719 (= lambda!153454 lambda!153298)))

(declare-fun lt!1622809 () ListMap!2713)

(assert (=> d!1340455 (invariantList!799 (toList!3470 lt!1622809))))

(declare-fun e!2754132 () ListMap!2713)

(assert (=> d!1340455 (= lt!1622809 e!2754132)))

(declare-fun c!752945 () Bool)

(assert (=> d!1340455 (= c!752945 ((_ is Cons!49561) (t!356623 (toList!3469 lt!1622117))))))

(assert (=> d!1340455 (forall!9544 (t!356623 (toList!3469 lt!1622117)) lambda!153454)))

(assert (=> d!1340455 (= (extractMap!802 (t!356623 (toList!3469 lt!1622117))) lt!1622809)))

(declare-fun b!4423312 () Bool)

(assert (=> b!4423312 (= e!2754132 (addToMapMapFromBucket!378 (_2!27966 (h!55240 (t!356623 (toList!3469 lt!1622117)))) (extractMap!802 (t!356623 (t!356623 (toList!3469 lt!1622117))))))))

(declare-fun b!4423313 () Bool)

(assert (=> b!4423313 (= e!2754132 (ListMap!2714 Nil!49560))))

(assert (= (and d!1340455 c!752945) b!4423312))

(assert (= (and d!1340455 (not c!752945)) b!4423313))

(declare-fun m!5102003 () Bool)

(assert (=> d!1340455 m!5102003))

(declare-fun m!5102005 () Bool)

(assert (=> d!1340455 m!5102005))

(declare-fun m!5102007 () Bool)

(assert (=> b!4423312 m!5102007))

(assert (=> b!4423312 m!5102007))

(declare-fun m!5102009 () Bool)

(assert (=> b!4423312 m!5102009))

(assert (=> b!4422540 d!1340455))

(declare-fun b!4423319 () Bool)

(declare-fun e!2754137 () Option!10714)

(declare-fun e!2754138 () Option!10714)

(assert (=> b!4423319 (= e!2754137 e!2754138)))

(declare-fun c!752947 () Bool)

(assert (=> b!4423319 (= c!752947 (and ((_ is Cons!49560) (toList!3470 lt!1622229)) (not (= (_1!27965 (h!55239 (toList!3470 lt!1622229))) (_1!27965 (tuple2!49343 key!3717 newValue!93))))))))

(declare-fun b!4423321 () Bool)

(assert (=> b!4423321 (= e!2754138 None!10713)))

(declare-fun b!4423318 () Bool)

(assert (=> b!4423318 (= e!2754137 (Some!10713 (_2!27965 (h!55239 (toList!3470 lt!1622229)))))))

(declare-fun d!1340457 () Bool)

(declare-fun c!752946 () Bool)

(assert (=> d!1340457 (= c!752946 (and ((_ is Cons!49560) (toList!3470 lt!1622229)) (= (_1!27965 (h!55239 (toList!3470 lt!1622229))) (_1!27965 (tuple2!49343 key!3717 newValue!93)))))))

(assert (=> d!1340457 (= (getValueByKey!700 (toList!3470 lt!1622229) (_1!27965 (tuple2!49343 key!3717 newValue!93))) e!2754137)))

(declare-fun b!4423320 () Bool)

(assert (=> b!4423320 (= e!2754138 (getValueByKey!700 (t!356622 (toList!3470 lt!1622229)) (_1!27965 (tuple2!49343 key!3717 newValue!93))))))

(assert (= (and d!1340457 c!752946) b!4423318))

(assert (= (and d!1340457 (not c!752946)) b!4423319))

(assert (= (and b!4423319 c!752947) b!4423320))

(assert (= (and b!4423319 (not c!752947)) b!4423321))

(declare-fun m!5102011 () Bool)

(assert (=> b!4423320 m!5102011))

(assert (=> b!4422560 d!1340457))

(declare-fun d!1340459 () Bool)

(declare-fun lt!1622810 () Bool)

(assert (=> d!1340459 (= lt!1622810 (select (content!7945 e!2753709) key!3717))))

(declare-fun e!2754141 () Bool)

(assert (=> d!1340459 (= lt!1622810 e!2754141)))

(declare-fun res!1828384 () Bool)

(assert (=> d!1340459 (=> (not res!1828384) (not e!2754141))))

(assert (=> d!1340459 (= res!1828384 ((_ is Cons!49563) e!2753709))))

(assert (=> d!1340459 (= (contains!12056 e!2753709 key!3717) lt!1622810)))

(declare-fun b!4423324 () Bool)

(declare-fun e!2754142 () Bool)

(assert (=> b!4423324 (= e!2754141 e!2754142)))

(declare-fun res!1828385 () Bool)

(assert (=> b!4423324 (=> res!1828385 e!2754142)))

(assert (=> b!4423324 (= res!1828385 (= (h!55244 e!2753709) key!3717))))

(declare-fun b!4423325 () Bool)

(assert (=> b!4423325 (= e!2754142 (contains!12056 (t!356625 e!2753709) key!3717))))

(assert (= (and d!1340459 res!1828384) b!4423324))

(assert (= (and b!4423324 (not res!1828385)) b!4423325))

(declare-fun m!5102015 () Bool)

(assert (=> d!1340459 m!5102015))

(declare-fun m!5102017 () Bool)

(assert (=> d!1340459 m!5102017))

(declare-fun m!5102019 () Bool)

(assert (=> b!4423325 m!5102019))

(assert (=> bm!307651 d!1340459))

(declare-fun d!1340463 () Bool)

(declare-fun res!1828389 () Bool)

(declare-fun e!2754149 () Bool)

(assert (=> d!1340463 (=> res!1828389 e!2754149)))

(assert (=> d!1340463 (= res!1828389 ((_ is Nil!49560) (ite c!752793 (toList!3470 lt!1622116) (toList!3470 lt!1622414))))))

(assert (=> d!1340463 (= (forall!9546 (ite c!752793 (toList!3470 lt!1622116) (toList!3470 lt!1622414)) (ite c!752793 lambda!153367 lambda!153369)) e!2754149)))

(declare-fun b!4423335 () Bool)

(declare-fun e!2754150 () Bool)

(assert (=> b!4423335 (= e!2754149 e!2754150)))

(declare-fun res!1828390 () Bool)

(assert (=> b!4423335 (=> (not res!1828390) (not e!2754150))))

(assert (=> b!4423335 (= res!1828390 (dynLambda!20838 (ite c!752793 lambda!153367 lambda!153369) (h!55239 (ite c!752793 (toList!3470 lt!1622116) (toList!3470 lt!1622414)))))))

(declare-fun b!4423336 () Bool)

(assert (=> b!4423336 (= e!2754150 (forall!9546 (t!356622 (ite c!752793 (toList!3470 lt!1622116) (toList!3470 lt!1622414))) (ite c!752793 lambda!153367 lambda!153369)))))

(assert (= (and d!1340463 (not res!1828389)) b!4423335))

(assert (= (and b!4423335 res!1828390) b!4423336))

(declare-fun b_lambda!142779 () Bool)

(assert (=> (not b_lambda!142779) (not b!4423335)))

(declare-fun m!5102021 () Bool)

(assert (=> b!4423335 m!5102021))

(declare-fun m!5102025 () Bool)

(assert (=> b!4423336 m!5102025))

(assert (=> bm!307667 d!1340463))

(declare-fun bs!755720 () Bool)

(declare-fun b!4423341 () Bool)

(assert (= bs!755720 (and b!4423341 b!4423304)))

(declare-fun lambda!153455 () Int)

(assert (=> bs!755720 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153455 lambda!153451))))

(declare-fun bs!755721 () Bool)

(assert (= bs!755721 (and b!4423341 b!4422695)))

(assert (=> bs!755721 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) lt!1622116) (= lambda!153455 lambda!153367))))

(declare-fun bs!755722 () Bool)

(assert (= bs!755722 (and b!4423341 b!4423307)))

(assert (=> bs!755722 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153455 lambda!153450))))

(declare-fun bs!755723 () Bool)

(assert (= bs!755723 (and b!4423341 b!4422692)))

(assert (=> bs!755723 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) lt!1622116) (= lambda!153455 lambda!153368))))

(declare-fun bs!755724 () Bool)

(assert (= bs!755724 (and b!4423341 d!1340401)))

(assert (=> bs!755724 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) lt!1622116) (= lambda!153455 lambda!153439))))

(declare-fun bs!755725 () Bool)

(assert (= bs!755725 (and b!4423341 b!4423201)))

(assert (=> bs!755725 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153455 lambda!153431))))

(declare-fun bs!755726 () Bool)

(assert (= bs!755726 (and b!4423341 d!1340041)))

(assert (=> bs!755726 (not (= lambda!153455 lambda!153276))))

(assert (=> bs!755720 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) lt!1622807) (= lambda!153455 lambda!153452))))

(assert (=> bs!755725 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) lt!1622729) (= lambda!153455 lambda!153432))))

(declare-fun bs!755727 () Bool)

(assert (= bs!755727 (and b!4423341 b!4423204)))

(assert (=> bs!755727 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153455 lambda!153430))))

(declare-fun bs!755728 () Bool)

(assert (= bs!755728 (and b!4423341 d!1340133)))

(assert (=> bs!755728 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) lt!1622415) (= lambda!153455 lambda!153370))))

(assert (=> bs!755723 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) lt!1622432) (= lambda!153455 lambda!153369))))

(declare-fun bs!755729 () Bool)

(assert (= bs!755729 (and b!4423341 d!1340369)))

(assert (=> bs!755729 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) lt!1622712) (= lambda!153455 lambda!153433))))

(declare-fun bs!755730 () Bool)

(assert (= bs!755730 (and b!4423341 d!1340445)))

(assert (=> bs!755730 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) lt!1622790) (= lambda!153455 lambda!153453))))

(assert (=> b!4423341 true))

(declare-fun bs!755731 () Bool)

(declare-fun b!4423338 () Bool)

(assert (= bs!755731 (and b!4423338 b!4423304)))

(declare-fun lambda!153456 () Int)

(assert (=> bs!755731 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153456 lambda!153451))))

(declare-fun bs!755732 () Bool)

(assert (= bs!755732 (and b!4423338 b!4423341)))

(assert (=> bs!755732 (= lambda!153456 lambda!153455)))

(declare-fun bs!755733 () Bool)

(assert (= bs!755733 (and b!4423338 b!4422695)))

(assert (=> bs!755733 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) lt!1622116) (= lambda!153456 lambda!153367))))

(declare-fun bs!755734 () Bool)

(assert (= bs!755734 (and b!4423338 b!4423307)))

(assert (=> bs!755734 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153456 lambda!153450))))

(declare-fun bs!755735 () Bool)

(assert (= bs!755735 (and b!4423338 b!4422692)))

(assert (=> bs!755735 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) lt!1622116) (= lambda!153456 lambda!153368))))

(declare-fun bs!755736 () Bool)

(assert (= bs!755736 (and b!4423338 d!1340401)))

(assert (=> bs!755736 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) lt!1622116) (= lambda!153456 lambda!153439))))

(declare-fun bs!755737 () Bool)

(assert (= bs!755737 (and b!4423338 b!4423201)))

(assert (=> bs!755737 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153456 lambda!153431))))

(declare-fun bs!755738 () Bool)

(assert (= bs!755738 (and b!4423338 d!1340041)))

(assert (=> bs!755738 (not (= lambda!153456 lambda!153276))))

(assert (=> bs!755731 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) lt!1622807) (= lambda!153456 lambda!153452))))

(assert (=> bs!755737 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) lt!1622729) (= lambda!153456 lambda!153432))))

(declare-fun bs!755739 () Bool)

(assert (= bs!755739 (and b!4423338 b!4423204)))

(assert (=> bs!755739 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153456 lambda!153430))))

(declare-fun bs!755740 () Bool)

(assert (= bs!755740 (and b!4423338 d!1340133)))

(assert (=> bs!755740 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) lt!1622415) (= lambda!153456 lambda!153370))))

(assert (=> bs!755735 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) lt!1622432) (= lambda!153456 lambda!153369))))

(declare-fun bs!755741 () Bool)

(assert (= bs!755741 (and b!4423338 d!1340369)))

(assert (=> bs!755741 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) lt!1622712) (= lambda!153456 lambda!153433))))

(declare-fun bs!755742 () Bool)

(assert (= bs!755742 (and b!4423338 d!1340445)))

(assert (=> bs!755742 (= (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) lt!1622790) (= lambda!153456 lambda!153453))))

(assert (=> b!4423338 true))

(declare-fun lt!1622838 () ListMap!2713)

(declare-fun lambda!153457 () Int)

(assert (=> bs!755731 (= (= lt!1622838 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153457 lambda!153451))))

(assert (=> bs!755732 (= (= lt!1622838 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (= lambda!153457 lambda!153455))))

(assert (=> bs!755733 (= (= lt!1622838 lt!1622116) (= lambda!153457 lambda!153367))))

(assert (=> bs!755734 (= (= lt!1622838 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153457 lambda!153450))))

(assert (=> bs!755735 (= (= lt!1622838 lt!1622116) (= lambda!153457 lambda!153368))))

(assert (=> bs!755736 (= (= lt!1622838 lt!1622116) (= lambda!153457 lambda!153439))))

(assert (=> bs!755737 (= (= lt!1622838 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153457 lambda!153431))))

(assert (=> bs!755738 (not (= lambda!153457 lambda!153276))))

(assert (=> bs!755731 (= (= lt!1622838 lt!1622807) (= lambda!153457 lambda!153452))))

(assert (=> b!4423338 (= (= lt!1622838 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (= lambda!153457 lambda!153456))))

(assert (=> bs!755737 (= (= lt!1622838 lt!1622729) (= lambda!153457 lambda!153432))))

(assert (=> bs!755739 (= (= lt!1622838 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153457 lambda!153430))))

(assert (=> bs!755740 (= (= lt!1622838 lt!1622415) (= lambda!153457 lambda!153370))))

(assert (=> bs!755735 (= (= lt!1622838 lt!1622432) (= lambda!153457 lambda!153369))))

(assert (=> bs!755741 (= (= lt!1622838 lt!1622712) (= lambda!153457 lambda!153433))))

(assert (=> bs!755742 (= (= lt!1622838 lt!1622790) (= lambda!153457 lambda!153453))))

(assert (=> b!4423338 true))

(declare-fun bs!755743 () Bool)

(declare-fun d!1340465 () Bool)

(assert (= bs!755743 (and d!1340465 b!4423304)))

(declare-fun lt!1622821 () ListMap!2713)

(declare-fun lambda!153458 () Int)

(assert (=> bs!755743 (= (= lt!1622821 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153458 lambda!153451))))

(declare-fun bs!755744 () Bool)

(assert (= bs!755744 (and d!1340465 b!4423341)))

(assert (=> bs!755744 (= (= lt!1622821 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (= lambda!153458 lambda!153455))))

(declare-fun bs!755745 () Bool)

(assert (= bs!755745 (and d!1340465 b!4422695)))

(assert (=> bs!755745 (= (= lt!1622821 lt!1622116) (= lambda!153458 lambda!153367))))

(declare-fun bs!755746 () Bool)

(assert (= bs!755746 (and d!1340465 b!4423307)))

(assert (=> bs!755746 (= (= lt!1622821 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153458 lambda!153450))))

(declare-fun bs!755747 () Bool)

(assert (= bs!755747 (and d!1340465 b!4422692)))

(assert (=> bs!755747 (= (= lt!1622821 lt!1622116) (= lambda!153458 lambda!153368))))

(declare-fun bs!755748 () Bool)

(assert (= bs!755748 (and d!1340465 d!1340401)))

(assert (=> bs!755748 (= (= lt!1622821 lt!1622116) (= lambda!153458 lambda!153439))))

(declare-fun bs!755749 () Bool)

(assert (= bs!755749 (and d!1340465 b!4423201)))

(assert (=> bs!755749 (= (= lt!1622821 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153458 lambda!153431))))

(declare-fun bs!755750 () Bool)

(assert (= bs!755750 (and d!1340465 b!4423338)))

(assert (=> bs!755750 (= (= lt!1622821 lt!1622838) (= lambda!153458 lambda!153457))))

(declare-fun bs!755751 () Bool)

(assert (= bs!755751 (and d!1340465 d!1340041)))

(assert (=> bs!755751 (not (= lambda!153458 lambda!153276))))

(assert (=> bs!755743 (= (= lt!1622821 lt!1622807) (= lambda!153458 lambda!153452))))

(assert (=> bs!755750 (= (= lt!1622821 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (= lambda!153458 lambda!153456))))

(assert (=> bs!755749 (= (= lt!1622821 lt!1622729) (= lambda!153458 lambda!153432))))

(declare-fun bs!755752 () Bool)

(assert (= bs!755752 (and d!1340465 b!4423204)))

(assert (=> bs!755752 (= (= lt!1622821 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153458 lambda!153430))))

(declare-fun bs!755753 () Bool)

(assert (= bs!755753 (and d!1340465 d!1340133)))

(assert (=> bs!755753 (= (= lt!1622821 lt!1622415) (= lambda!153458 lambda!153370))))

(assert (=> bs!755747 (= (= lt!1622821 lt!1622432) (= lambda!153458 lambda!153369))))

(declare-fun bs!755754 () Bool)

(assert (= bs!755754 (and d!1340465 d!1340369)))

(assert (=> bs!755754 (= (= lt!1622821 lt!1622712) (= lambda!153458 lambda!153433))))

(declare-fun bs!755755 () Bool)

(assert (= bs!755755 (and d!1340465 d!1340445)))

(assert (=> bs!755755 (= (= lt!1622821 lt!1622790) (= lambda!153458 lambda!153453))))

(assert (=> d!1340465 true))

(declare-fun b!4423337 () Bool)

(declare-fun e!2754151 () Bool)

(assert (=> b!4423337 (= e!2754151 (forall!9546 (toList!3470 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) lambda!153457))))

(declare-fun e!2754152 () ListMap!2713)

(assert (=> b!4423338 (= e!2754152 lt!1622838)))

(declare-fun lt!1622820 () ListMap!2713)

(assert (=> b!4423338 (= lt!1622820 (+!1066 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) (h!55239 (_2!27966 (h!55240 (toList!3469 (+!1067 lt!1622117 lt!1622124)))))))))

(assert (=> b!4423338 (= lt!1622838 (addToMapMapFromBucket!378 (t!356622 (_2!27966 (h!55240 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (+!1066 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) (h!55239 (_2!27966 (h!55240 (toList!3469 (+!1067 lt!1622117 lt!1622124))))))))))

(declare-fun lt!1622825 () Unit!81469)

(declare-fun call!307740 () Unit!81469)

(assert (=> b!4423338 (= lt!1622825 call!307740)))

(assert (=> b!4423338 (forall!9546 (toList!3470 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) lambda!153456)))

(declare-fun lt!1622832 () Unit!81469)

(assert (=> b!4423338 (= lt!1622832 lt!1622825)))

(assert (=> b!4423338 (forall!9546 (toList!3470 lt!1622820) lambda!153457)))

(declare-fun lt!1622837 () Unit!81469)

(declare-fun Unit!81595 () Unit!81469)

(assert (=> b!4423338 (= lt!1622837 Unit!81595)))

(assert (=> b!4423338 (forall!9546 (t!356622 (_2!27966 (h!55240 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) lambda!153457)))

(declare-fun lt!1622834 () Unit!81469)

(declare-fun Unit!81596 () Unit!81469)

(assert (=> b!4423338 (= lt!1622834 Unit!81596)))

(declare-fun lt!1622827 () Unit!81469)

(declare-fun Unit!81597 () Unit!81469)

(assert (=> b!4423338 (= lt!1622827 Unit!81597)))

(declare-fun lt!1622835 () Unit!81469)

(assert (=> b!4423338 (= lt!1622835 (forallContained!2083 (toList!3470 lt!1622820) lambda!153457 (h!55239 (_2!27966 (h!55240 (toList!3469 (+!1067 lt!1622117 lt!1622124)))))))))

(assert (=> b!4423338 (contains!12050 lt!1622820 (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 (+!1067 lt!1622117 lt!1622124)))))))))

(declare-fun lt!1622828 () Unit!81469)

(declare-fun Unit!81598 () Unit!81469)

(assert (=> b!4423338 (= lt!1622828 Unit!81598)))

(assert (=> b!4423338 (contains!12050 lt!1622838 (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 (+!1067 lt!1622117 lt!1622124)))))))))

(declare-fun lt!1622819 () Unit!81469)

(declare-fun Unit!81599 () Unit!81469)

(assert (=> b!4423338 (= lt!1622819 Unit!81599)))

(assert (=> b!4423338 (forall!9546 (_2!27966 (h!55240 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) lambda!153457)))

(declare-fun lt!1622833 () Unit!81469)

(declare-fun Unit!81600 () Unit!81469)

(assert (=> b!4423338 (= lt!1622833 Unit!81600)))

(declare-fun call!307738 () Bool)

(assert (=> b!4423338 call!307738))

(declare-fun lt!1622839 () Unit!81469)

(declare-fun Unit!81601 () Unit!81469)

(assert (=> b!4423338 (= lt!1622839 Unit!81601)))

(declare-fun lt!1622829 () Unit!81469)

(declare-fun Unit!81602 () Unit!81469)

(assert (=> b!4423338 (= lt!1622829 Unit!81602)))

(declare-fun lt!1622836 () Unit!81469)

(assert (=> b!4423338 (= lt!1622836 (addForallContainsKeyThenBeforeAdding!167 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) lt!1622838 (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 (+!1067 lt!1622117 lt!1622124)))))) (_2!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 (+!1067 lt!1622117 lt!1622124))))))))))

(assert (=> b!4423338 (forall!9546 (toList!3470 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) lambda!153457)))

(declare-fun lt!1622830 () Unit!81469)

(assert (=> b!4423338 (= lt!1622830 lt!1622836)))

(declare-fun call!307739 () Bool)

(assert (=> b!4423338 call!307739))

(declare-fun lt!1622831 () Unit!81469)

(declare-fun Unit!81603 () Unit!81469)

(assert (=> b!4423338 (= lt!1622831 Unit!81603)))

(declare-fun res!1828392 () Bool)

(assert (=> b!4423338 (= res!1828392 (forall!9546 (_2!27966 (h!55240 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) lambda!153457))))

(assert (=> b!4423338 (=> (not res!1828392) (not e!2754151))))

(assert (=> b!4423338 e!2754151))

(declare-fun lt!1622823 () Unit!81469)

(declare-fun Unit!81604 () Unit!81469)

(assert (=> b!4423338 (= lt!1622823 Unit!81604)))

(declare-fun bm!307733 () Bool)

(declare-fun c!752951 () Bool)

(assert (=> bm!307733 (= call!307738 (forall!9546 (ite c!752951 (toList!3470 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (toList!3470 lt!1622820)) (ite c!752951 lambda!153455 lambda!153457)))))

(declare-fun b!4423339 () Bool)

(declare-fun e!2754153 () Bool)

(assert (=> b!4423339 (= e!2754153 (invariantList!799 (toList!3470 lt!1622821)))))

(declare-fun b!4423340 () Bool)

(declare-fun res!1828391 () Bool)

(assert (=> b!4423340 (=> (not res!1828391) (not e!2754153))))

(assert (=> b!4423340 (= res!1828391 (forall!9546 (toList!3470 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) lambda!153458))))

(assert (=> b!4423341 (= e!2754152 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))))))

(declare-fun lt!1622826 () Unit!81469)

(assert (=> b!4423341 (= lt!1622826 call!307740)))

(assert (=> b!4423341 call!307739))

(declare-fun lt!1622824 () Unit!81469)

(assert (=> b!4423341 (= lt!1622824 lt!1622826)))

(assert (=> b!4423341 call!307738))

(declare-fun lt!1622822 () Unit!81469)

(declare-fun Unit!81605 () Unit!81469)

(assert (=> b!4423341 (= lt!1622822 Unit!81605)))

(assert (=> d!1340465 e!2754153))

(declare-fun res!1828393 () Bool)

(assert (=> d!1340465 (=> (not res!1828393) (not e!2754153))))

(assert (=> d!1340465 (= res!1828393 (forall!9546 (_2!27966 (h!55240 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) lambda!153458))))

(assert (=> d!1340465 (= lt!1622821 e!2754152)))

(assert (=> d!1340465 (= c!752951 ((_ is Nil!49560) (_2!27966 (h!55240 (toList!3469 (+!1067 lt!1622117 lt!1622124))))))))

(assert (=> d!1340465 (noDuplicateKeys!741 (_2!27966 (h!55240 (toList!3469 (+!1067 lt!1622117 lt!1622124)))))))

(assert (=> d!1340465 (= (addToMapMapFromBucket!378 (_2!27966 (h!55240 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) lt!1622821)))

(declare-fun bm!307734 () Bool)

(assert (=> bm!307734 (= call!307740 (lemmaContainsAllItsOwnKeys!167 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))))))

(declare-fun bm!307735 () Bool)

(assert (=> bm!307735 (= call!307739 (forall!9546 (toList!3470 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (ite c!752951 lambda!153455 lambda!153457)))))

(assert (= (and d!1340465 c!752951) b!4423341))

(assert (= (and d!1340465 (not c!752951)) b!4423338))

(assert (= (and b!4423338 res!1828392) b!4423337))

(assert (= (or b!4423341 b!4423338) bm!307734))

(assert (= (or b!4423341 b!4423338) bm!307733))

(assert (= (or b!4423341 b!4423338) bm!307735))

(assert (= (and d!1340465 res!1828393) b!4423340))

(assert (= (and b!4423340 res!1828391) b!4423339))

(assert (=> bm!307734 m!5100697))

(declare-fun m!5102053 () Bool)

(assert (=> bm!307734 m!5102053))

(declare-fun m!5102055 () Bool)

(assert (=> b!4423338 m!5102055))

(declare-fun m!5102057 () Bool)

(assert (=> b!4423338 m!5102057))

(declare-fun m!5102059 () Bool)

(assert (=> b!4423338 m!5102059))

(declare-fun m!5102061 () Bool)

(assert (=> b!4423338 m!5102061))

(declare-fun m!5102063 () Bool)

(assert (=> b!4423338 m!5102063))

(declare-fun m!5102065 () Bool)

(assert (=> b!4423338 m!5102065))

(declare-fun m!5102067 () Bool)

(assert (=> b!4423338 m!5102067))

(declare-fun m!5102069 () Bool)

(assert (=> b!4423338 m!5102069))

(assert (=> b!4423338 m!5100697))

(assert (=> b!4423338 m!5102061))

(declare-fun m!5102071 () Bool)

(assert (=> b!4423338 m!5102071))

(assert (=> b!4423338 m!5100697))

(declare-fun m!5102073 () Bool)

(assert (=> b!4423338 m!5102073))

(assert (=> b!4423338 m!5102071))

(declare-fun m!5102075 () Bool)

(assert (=> b!4423338 m!5102075))

(declare-fun m!5102077 () Bool)

(assert (=> d!1340465 m!5102077))

(declare-fun m!5102079 () Bool)

(assert (=> d!1340465 m!5102079))

(declare-fun m!5102081 () Bool)

(assert (=> bm!307735 m!5102081))

(declare-fun m!5102083 () Bool)

(assert (=> bm!307733 m!5102083))

(declare-fun m!5102085 () Bool)

(assert (=> b!4423340 m!5102085))

(assert (=> b!4423337 m!5102055))

(declare-fun m!5102087 () Bool)

(assert (=> b!4423339 m!5102087))

(assert (=> b!4422548 d!1340465))

(declare-fun bs!755756 () Bool)

(declare-fun d!1340473 () Bool)

(assert (= bs!755756 (and d!1340473 d!1340059)))

(declare-fun lambda!153459 () Int)

(assert (=> bs!755756 (= lambda!153459 lambda!153287)))

(declare-fun bs!755757 () Bool)

(assert (= bs!755757 (and d!1340473 d!1340045)))

(assert (=> bs!755757 (= lambda!153459 lambda!153282)))

(declare-fun bs!755758 () Bool)

(assert (= bs!755758 (and d!1340473 start!431164)))

(assert (=> bs!755758 (= lambda!153459 lambda!153264)))

(declare-fun bs!755759 () Bool)

(assert (= bs!755759 (and d!1340473 d!1340033)))

(assert (=> bs!755759 (= lambda!153459 lambda!153273)))

(declare-fun bs!755760 () Bool)

(assert (= bs!755760 (and d!1340473 d!1340091)))

(assert (=> bs!755760 (= lambda!153459 lambda!153302)))

(declare-fun bs!755761 () Bool)

(assert (= bs!755761 (and d!1340473 d!1340389)))

(assert (=> bs!755761 (= lambda!153459 lambda!153434)))

(declare-fun bs!755762 () Bool)

(assert (= bs!755762 (and d!1340473 d!1340121)))

(assert (=> bs!755762 (= lambda!153459 lambda!153306)))

(declare-fun bs!755763 () Bool)

(assert (= bs!755763 (and d!1340473 d!1340057)))

(assert (=> bs!755763 (= lambda!153459 lambda!153286)))

(declare-fun bs!755764 () Bool)

(assert (= bs!755764 (and d!1340473 d!1340073)))

(assert (=> bs!755764 (= lambda!153459 lambda!153298)))

(declare-fun bs!755765 () Bool)

(assert (= bs!755765 (and d!1340473 d!1340455)))

(assert (=> bs!755765 (= lambda!153459 lambda!153454)))

(declare-fun bs!755766 () Bool)

(assert (= bs!755766 (and d!1340473 d!1340017)))

(assert (=> bs!755766 (not (= lambda!153459 lambda!153267))))

(declare-fun lt!1622843 () ListMap!2713)

(assert (=> d!1340473 (invariantList!799 (toList!3470 lt!1622843))))

(declare-fun e!2754159 () ListMap!2713)

(assert (=> d!1340473 (= lt!1622843 e!2754159)))

(declare-fun c!752954 () Bool)

(assert (=> d!1340473 (= c!752954 ((_ is Cons!49561) (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))))))

(assert (=> d!1340473 (forall!9544 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))) lambda!153459)))

(assert (=> d!1340473 (= (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) lt!1622843)))

(declare-fun b!4423352 () Bool)

(assert (=> b!4423352 (= e!2754159 (addToMapMapFromBucket!378 (_2!27966 (h!55240 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (extractMap!802 (t!356623 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124)))))))))

(declare-fun b!4423353 () Bool)

(assert (=> b!4423353 (= e!2754159 (ListMap!2714 Nil!49560))))

(assert (= (and d!1340473 c!752954) b!4423352))

(assert (= (and d!1340473 (not c!752954)) b!4423353))

(declare-fun m!5102089 () Bool)

(assert (=> d!1340473 m!5102089))

(declare-fun m!5102091 () Bool)

(assert (=> d!1340473 m!5102091))

(declare-fun m!5102093 () Bool)

(assert (=> b!4423352 m!5102093))

(assert (=> b!4423352 m!5102093))

(declare-fun m!5102095 () Bool)

(assert (=> b!4423352 m!5102095))

(assert (=> b!4422548 d!1340473))

(declare-fun bs!755767 () Bool)

(declare-fun b!4423358 () Bool)

(assert (= bs!755767 (and b!4423358 b!4422909)))

(declare-fun lambda!153460 () Int)

(assert (=> bs!755767 (= (= (t!356622 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))) (t!356622 (toList!3470 lt!1622127))) (= lambda!153460 lambda!153392))))

(declare-fun bs!755768 () Bool)

(assert (= bs!755768 (and b!4423358 b!4422907)))

(assert (=> bs!755768 (= (= (t!356622 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))) (Cons!49560 (h!55239 (toList!3470 lt!1622127)) (t!356622 (toList!3470 lt!1622127)))) (= lambda!153460 lambda!153393))))

(declare-fun bs!755769 () Bool)

(assert (= bs!755769 (and b!4423358 b!4422905)))

(assert (=> bs!755769 (= (= (t!356622 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))) (toList!3470 lt!1622127)) (= lambda!153460 lambda!153394))))

(declare-fun bs!755770 () Bool)

(assert (= bs!755770 (and b!4423358 b!4423262)))

(assert (=> bs!755770 (= (= (t!356622 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))) (toList!3470 lt!1622127)) (= lambda!153460 lambda!153448))))

(assert (=> b!4423358 true))

(declare-fun bs!755771 () Bool)

(declare-fun b!4423356 () Bool)

(assert (= bs!755771 (and b!4423356 b!4423358)))

(declare-fun lambda!153461 () Int)

(assert (=> bs!755771 (= (= (Cons!49560 (h!55239 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))) (t!356622 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))))) (t!356622 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))))) (= lambda!153461 lambda!153460))))

(declare-fun bs!755772 () Bool)

(assert (= bs!755772 (and b!4423356 b!4422907)))

(assert (=> bs!755772 (= (= (Cons!49560 (h!55239 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))) (t!356622 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))))) (Cons!49560 (h!55239 (toList!3470 lt!1622127)) (t!356622 (toList!3470 lt!1622127)))) (= lambda!153461 lambda!153393))))

(declare-fun bs!755773 () Bool)

(assert (= bs!755773 (and b!4423356 b!4422905)))

(assert (=> bs!755773 (= (= (Cons!49560 (h!55239 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))) (t!356622 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))))) (toList!3470 lt!1622127)) (= lambda!153461 lambda!153394))))

(declare-fun bs!755774 () Bool)

(assert (= bs!755774 (and b!4423356 b!4423262)))

(assert (=> bs!755774 (= (= (Cons!49560 (h!55239 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))) (t!356622 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))))) (toList!3470 lt!1622127)) (= lambda!153461 lambda!153448))))

(declare-fun bs!755775 () Bool)

(assert (= bs!755775 (and b!4423356 b!4422909)))

(assert (=> bs!755775 (= (= (Cons!49560 (h!55239 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))) (t!356622 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))))) (t!356622 (toList!3470 lt!1622127))) (= lambda!153461 lambda!153392))))

(assert (=> b!4423356 true))

(declare-fun bs!755776 () Bool)

(declare-fun b!4423354 () Bool)

(assert (= bs!755776 (and b!4423354 b!4423358)))

(declare-fun lambda!153462 () Int)

(assert (=> bs!755776 (= (= (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) (t!356622 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))))) (= lambda!153462 lambda!153460))))

(declare-fun bs!755777 () Bool)

(assert (= bs!755777 (and b!4423354 b!4423356)))

(assert (=> bs!755777 (= (= (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) (Cons!49560 (h!55239 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))) (t!356622 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))))) (= lambda!153462 lambda!153461))))

(declare-fun bs!755778 () Bool)

(assert (= bs!755778 (and b!4423354 b!4422907)))

(assert (=> bs!755778 (= (= (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) (Cons!49560 (h!55239 (toList!3470 lt!1622127)) (t!356622 (toList!3470 lt!1622127)))) (= lambda!153462 lambda!153393))))

(declare-fun bs!755779 () Bool)

(assert (= bs!755779 (and b!4423354 b!4422905)))

(assert (=> bs!755779 (= (= (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) (toList!3470 lt!1622127)) (= lambda!153462 lambda!153394))))

(declare-fun bs!755780 () Bool)

(assert (= bs!755780 (and b!4423354 b!4423262)))

(assert (=> bs!755780 (= (= (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) (toList!3470 lt!1622127)) (= lambda!153462 lambda!153448))))

(declare-fun bs!755781 () Bool)

(assert (= bs!755781 (and b!4423354 b!4422909)))

(assert (=> bs!755781 (= (= (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) (t!356622 (toList!3470 lt!1622127))) (= lambda!153462 lambda!153392))))

(assert (=> b!4423354 true))

(declare-fun bs!755782 () Bool)

(declare-fun b!4423362 () Bool)

(assert (= bs!755782 (and b!4423362 b!4422913)))

(declare-fun lambda!153463 () Int)

(assert (=> bs!755782 (= lambda!153463 lambda!153395)))

(declare-fun bs!755783 () Bool)

(assert (= bs!755783 (and b!4423362 b!4423263)))

(assert (=> bs!755783 (= lambda!153463 lambda!153449)))

(declare-fun res!1828401 () Bool)

(declare-fun e!2754161 () Bool)

(assert (=> b!4423354 (=> (not res!1828401) (not e!2754161))))

(declare-fun lt!1622848 () List!49687)

(assert (=> b!4423354 (= res!1828401 (forall!9547 lt!1622848 lambda!153462))))

(declare-fun d!1340475 () Bool)

(assert (=> d!1340475 e!2754161))

(declare-fun res!1828402 () Bool)

(assert (=> d!1340475 (=> (not res!1828402) (not e!2754161))))

(assert (=> d!1340475 (= res!1828402 (noDuplicate!655 lt!1622848))))

(declare-fun e!2754163 () List!49687)

(assert (=> d!1340475 (= lt!1622848 e!2754163)))

(declare-fun c!752957 () Bool)

(assert (=> d!1340475 (= c!752957 ((_ is Cons!49560) (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))))))

(assert (=> d!1340475 (invariantList!799 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))))))

(assert (=> d!1340475 (= (getKeysList!247 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))) lt!1622848)))

(declare-fun b!4423355 () Bool)

(declare-fun res!1828400 () Bool)

(assert (=> b!4423355 (=> (not res!1828400) (not e!2754161))))

(assert (=> b!4423355 (= res!1828400 (= (length!166 lt!1622848) (length!167 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))))))))

(assert (=> b!4423356 (= e!2754163 (Cons!49563 (_1!27965 (h!55239 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))))) (getKeysList!247 (t!356622 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))))))))

(declare-fun c!752956 () Bool)

(assert (=> b!4423356 (= c!752956 (containsKey!1097 (t!356622 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))) (_1!27965 (h!55239 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))))))))

(declare-fun lt!1622847 () Unit!81469)

(declare-fun e!2754162 () Unit!81469)

(assert (=> b!4423356 (= lt!1622847 e!2754162)))

(declare-fun c!752955 () Bool)

(assert (=> b!4423356 (= c!752955 (contains!12056 (getKeysList!247 (t!356622 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))))) (_1!27965 (h!55239 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))))))))

(declare-fun lt!1622850 () Unit!81469)

(declare-fun e!2754160 () Unit!81469)

(assert (=> b!4423356 (= lt!1622850 e!2754160)))

(declare-fun lt!1622844 () List!49687)

(assert (=> b!4423356 (= lt!1622844 (getKeysList!247 (t!356622 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))))))))

(declare-fun lt!1622845 () Unit!81469)

(assert (=> b!4423356 (= lt!1622845 (lemmaForallContainsAddHeadPreserves!77 (t!356622 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))) lt!1622844 (h!55239 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))))))))

(assert (=> b!4423356 (forall!9547 lt!1622844 lambda!153461)))

(declare-fun lt!1622846 () Unit!81469)

(assert (=> b!4423356 (= lt!1622846 lt!1622845)))

(declare-fun b!4423357 () Bool)

(assert (=> b!4423357 false))

(declare-fun Unit!81617 () Unit!81469)

(assert (=> b!4423357 (= e!2754162 Unit!81617)))

(assert (=> b!4423358 false))

(declare-fun lt!1622849 () Unit!81469)

(assert (=> b!4423358 (= lt!1622849 (forallContained!2084 (getKeysList!247 (t!356622 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))))) lambda!153460 (_1!27965 (h!55239 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))))))))

(declare-fun Unit!81618 () Unit!81469)

(assert (=> b!4423358 (= e!2754160 Unit!81618)))

(declare-fun b!4423359 () Bool)

(declare-fun Unit!81619 () Unit!81469)

(assert (=> b!4423359 (= e!2754162 Unit!81619)))

(declare-fun b!4423360 () Bool)

(assert (=> b!4423360 (= e!2754163 Nil!49563)))

(declare-fun b!4423361 () Bool)

(declare-fun Unit!81620 () Unit!81469)

(assert (=> b!4423361 (= e!2754160 Unit!81620)))

(assert (=> b!4423362 (= e!2754161 (= (content!7945 lt!1622848) (content!7945 (map!10823 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) lambda!153463))))))

(assert (= (and d!1340475 c!752957) b!4423356))

(assert (= (and d!1340475 (not c!752957)) b!4423360))

(assert (= (and b!4423356 c!752956) b!4423357))

(assert (= (and b!4423356 (not c!752956)) b!4423359))

(assert (= (and b!4423356 c!752955) b!4423358))

(assert (= (and b!4423356 (not c!752955)) b!4423361))

(assert (= (and d!1340475 res!1828402) b!4423355))

(assert (= (and b!4423355 res!1828400) b!4423354))

(assert (= (and b!4423354 res!1828401) b!4423362))

(declare-fun m!5102097 () Bool)

(assert (=> d!1340475 m!5102097))

(declare-fun m!5102099 () Bool)

(assert (=> d!1340475 m!5102099))

(declare-fun m!5102101 () Bool)

(assert (=> b!4423355 m!5102101))

(declare-fun m!5102103 () Bool)

(assert (=> b!4423355 m!5102103))

(declare-fun m!5102105 () Bool)

(assert (=> b!4423354 m!5102105))

(declare-fun m!5102107 () Bool)

(assert (=> b!4423362 m!5102107))

(declare-fun m!5102109 () Bool)

(assert (=> b!4423362 m!5102109))

(assert (=> b!4423362 m!5102109))

(declare-fun m!5102111 () Bool)

(assert (=> b!4423362 m!5102111))

(declare-fun m!5102113 () Bool)

(assert (=> b!4423358 m!5102113))

(assert (=> b!4423358 m!5102113))

(declare-fun m!5102115 () Bool)

(assert (=> b!4423358 m!5102115))

(declare-fun m!5102117 () Bool)

(assert (=> b!4423356 m!5102117))

(declare-fun m!5102119 () Bool)

(assert (=> b!4423356 m!5102119))

(assert (=> b!4423356 m!5102113))

(declare-fun m!5102121 () Bool)

(assert (=> b!4423356 m!5102121))

(assert (=> b!4423356 m!5102113))

(declare-fun m!5102123 () Bool)

(assert (=> b!4423356 m!5102123))

(assert (=> b!4422621 d!1340475))

(declare-fun bs!755784 () Bool)

(declare-fun b!4423367 () Bool)

(assert (= bs!755784 (and b!4423367 b!4423304)))

(declare-fun lambda!153464 () Int)

(assert (=> bs!755784 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153464 lambda!153451))))

(declare-fun bs!755785 () Bool)

(assert (= bs!755785 (and b!4423367 b!4423341)))

(assert (=> bs!755785 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (= lambda!153464 lambda!153455))))

(declare-fun bs!755786 () Bool)

(assert (= bs!755786 (and b!4423367 b!4422695)))

(assert (=> bs!755786 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) lt!1622116) (= lambda!153464 lambda!153367))))

(declare-fun bs!755787 () Bool)

(assert (= bs!755787 (and b!4423367 b!4423307)))

(assert (=> bs!755787 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153464 lambda!153450))))

(declare-fun bs!755788 () Bool)

(assert (= bs!755788 (and b!4423367 b!4422692)))

(assert (=> bs!755788 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) lt!1622116) (= lambda!153464 lambda!153368))))

(declare-fun bs!755789 () Bool)

(assert (= bs!755789 (and b!4423367 b!4423201)))

(assert (=> bs!755789 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153464 lambda!153431))))

(declare-fun bs!755790 () Bool)

(assert (= bs!755790 (and b!4423367 b!4423338)))

(assert (=> bs!755790 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) lt!1622838) (= lambda!153464 lambda!153457))))

(declare-fun bs!755791 () Bool)

(assert (= bs!755791 (and b!4423367 d!1340041)))

(assert (=> bs!755791 (not (= lambda!153464 lambda!153276))))

(assert (=> bs!755784 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) lt!1622807) (= lambda!153464 lambda!153452))))

(assert (=> bs!755790 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (= lambda!153464 lambda!153456))))

(assert (=> bs!755789 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) lt!1622729) (= lambda!153464 lambda!153432))))

(declare-fun bs!755792 () Bool)

(assert (= bs!755792 (and b!4423367 b!4423204)))

(assert (=> bs!755792 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153464 lambda!153430))))

(declare-fun bs!755793 () Bool)

(assert (= bs!755793 (and b!4423367 d!1340133)))

(assert (=> bs!755793 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) lt!1622415) (= lambda!153464 lambda!153370))))

(assert (=> bs!755788 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) lt!1622432) (= lambda!153464 lambda!153369))))

(declare-fun bs!755794 () Bool)

(assert (= bs!755794 (and b!4423367 d!1340401)))

(assert (=> bs!755794 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) lt!1622116) (= lambda!153464 lambda!153439))))

(declare-fun bs!755795 () Bool)

(assert (= bs!755795 (and b!4423367 d!1340465)))

(assert (=> bs!755795 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) lt!1622821) (= lambda!153464 lambda!153458))))

(declare-fun bs!755796 () Bool)

(assert (= bs!755796 (and b!4423367 d!1340369)))

(assert (=> bs!755796 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) lt!1622712) (= lambda!153464 lambda!153433))))

(declare-fun bs!755797 () Bool)

(assert (= bs!755797 (and b!4423367 d!1340445)))

(assert (=> bs!755797 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) lt!1622790) (= lambda!153464 lambda!153453))))

(assert (=> b!4423367 true))

(declare-fun bs!755798 () Bool)

(declare-fun b!4423364 () Bool)

(assert (= bs!755798 (and b!4423364 b!4423304)))

(declare-fun lambda!153465 () Int)

(assert (=> bs!755798 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153465 lambda!153451))))

(declare-fun bs!755799 () Bool)

(assert (= bs!755799 (and b!4423364 b!4423341)))

(assert (=> bs!755799 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (= lambda!153465 lambda!153455))))

(declare-fun bs!755800 () Bool)

(assert (= bs!755800 (and b!4423364 b!4422695)))

(assert (=> bs!755800 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) lt!1622116) (= lambda!153465 lambda!153367))))

(declare-fun bs!755801 () Bool)

(assert (= bs!755801 (and b!4423364 b!4423307)))

(assert (=> bs!755801 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153465 lambda!153450))))

(declare-fun bs!755802 () Bool)

(assert (= bs!755802 (and b!4423364 b!4422692)))

(assert (=> bs!755802 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) lt!1622116) (= lambda!153465 lambda!153368))))

(declare-fun bs!755803 () Bool)

(assert (= bs!755803 (and b!4423364 b!4423201)))

(assert (=> bs!755803 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153465 lambda!153431))))

(declare-fun bs!755804 () Bool)

(assert (= bs!755804 (and b!4423364 b!4423338)))

(assert (=> bs!755804 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) lt!1622838) (= lambda!153465 lambda!153457))))

(declare-fun bs!755805 () Bool)

(assert (= bs!755805 (and b!4423364 d!1340041)))

(assert (=> bs!755805 (not (= lambda!153465 lambda!153276))))

(declare-fun bs!755806 () Bool)

(assert (= bs!755806 (and b!4423364 b!4423367)))

(assert (=> bs!755806 (= lambda!153465 lambda!153464)))

(assert (=> bs!755798 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) lt!1622807) (= lambda!153465 lambda!153452))))

(assert (=> bs!755804 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (= lambda!153465 lambda!153456))))

(assert (=> bs!755803 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) lt!1622729) (= lambda!153465 lambda!153432))))

(declare-fun bs!755807 () Bool)

(assert (= bs!755807 (and b!4423364 b!4423204)))

(assert (=> bs!755807 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153465 lambda!153430))))

(declare-fun bs!755808 () Bool)

(assert (= bs!755808 (and b!4423364 d!1340133)))

(assert (=> bs!755808 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) lt!1622415) (= lambda!153465 lambda!153370))))

(assert (=> bs!755802 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) lt!1622432) (= lambda!153465 lambda!153369))))

(declare-fun bs!755809 () Bool)

(assert (= bs!755809 (and b!4423364 d!1340401)))

(assert (=> bs!755809 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) lt!1622116) (= lambda!153465 lambda!153439))))

(declare-fun bs!755810 () Bool)

(assert (= bs!755810 (and b!4423364 d!1340465)))

(assert (=> bs!755810 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) lt!1622821) (= lambda!153465 lambda!153458))))

(declare-fun bs!755811 () Bool)

(assert (= bs!755811 (and b!4423364 d!1340369)))

(assert (=> bs!755811 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) lt!1622712) (= lambda!153465 lambda!153433))))

(declare-fun bs!755812 () Bool)

(assert (= bs!755812 (and b!4423364 d!1340445)))

(assert (=> bs!755812 (= (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) lt!1622790) (= lambda!153465 lambda!153453))))

(assert (=> b!4423364 true))

(declare-fun lambda!153466 () Int)

(declare-fun lt!1622870 () ListMap!2713)

(assert (=> bs!755798 (= (= lt!1622870 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153466 lambda!153451))))

(assert (=> bs!755799 (= (= lt!1622870 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (= lambda!153466 lambda!153455))))

(assert (=> bs!755800 (= (= lt!1622870 lt!1622116) (= lambda!153466 lambda!153367))))

(assert (=> bs!755801 (= (= lt!1622870 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153466 lambda!153450))))

(assert (=> bs!755802 (= (= lt!1622870 lt!1622116) (= lambda!153466 lambda!153368))))

(assert (=> bs!755803 (= (= lt!1622870 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153466 lambda!153431))))

(assert (=> bs!755804 (= (= lt!1622870 lt!1622838) (= lambda!153466 lambda!153457))))

(assert (=> bs!755805 (not (= lambda!153466 lambda!153276))))

(assert (=> b!4423364 (= (= lt!1622870 (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616))))) (= lambda!153466 lambda!153465))))

(assert (=> bs!755806 (= (= lt!1622870 (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616))))) (= lambda!153466 lambda!153464))))

(assert (=> bs!755798 (= (= lt!1622870 lt!1622807) (= lambda!153466 lambda!153452))))

(assert (=> bs!755804 (= (= lt!1622870 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (= lambda!153466 lambda!153456))))

(assert (=> bs!755803 (= (= lt!1622870 lt!1622729) (= lambda!153466 lambda!153432))))

(assert (=> bs!755807 (= (= lt!1622870 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153466 lambda!153430))))

(assert (=> bs!755808 (= (= lt!1622870 lt!1622415) (= lambda!153466 lambda!153370))))

(assert (=> bs!755802 (= (= lt!1622870 lt!1622432) (= lambda!153466 lambda!153369))))

(assert (=> bs!755809 (= (= lt!1622870 lt!1622116) (= lambda!153466 lambda!153439))))

(assert (=> bs!755810 (= (= lt!1622870 lt!1622821) (= lambda!153466 lambda!153458))))

(assert (=> bs!755811 (= (= lt!1622870 lt!1622712) (= lambda!153466 lambda!153433))))

(assert (=> bs!755812 (= (= lt!1622870 lt!1622790) (= lambda!153466 lambda!153453))))

(assert (=> b!4423364 true))

(declare-fun bs!755813 () Bool)

(declare-fun d!1340477 () Bool)

(assert (= bs!755813 (and d!1340477 b!4423304)))

(declare-fun lt!1622853 () ListMap!2713)

(declare-fun lambda!153467 () Int)

(assert (=> bs!755813 (= (= lt!1622853 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153467 lambda!153451))))

(declare-fun bs!755814 () Bool)

(assert (= bs!755814 (and d!1340477 b!4423341)))

(assert (=> bs!755814 (= (= lt!1622853 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (= lambda!153467 lambda!153455))))

(declare-fun bs!755815 () Bool)

(assert (= bs!755815 (and d!1340477 b!4422695)))

(assert (=> bs!755815 (= (= lt!1622853 lt!1622116) (= lambda!153467 lambda!153367))))

(declare-fun bs!755816 () Bool)

(assert (= bs!755816 (and d!1340477 b!4423307)))

(assert (=> bs!755816 (= (= lt!1622853 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153467 lambda!153450))))

(declare-fun bs!755817 () Bool)

(assert (= bs!755817 (and d!1340477 b!4422692)))

(assert (=> bs!755817 (= (= lt!1622853 lt!1622116) (= lambda!153467 lambda!153368))))

(declare-fun bs!755818 () Bool)

(assert (= bs!755818 (and d!1340477 b!4423201)))

(assert (=> bs!755818 (= (= lt!1622853 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153467 lambda!153431))))

(declare-fun bs!755819 () Bool)

(assert (= bs!755819 (and d!1340477 b!4423338)))

(assert (=> bs!755819 (= (= lt!1622853 lt!1622838) (= lambda!153467 lambda!153457))))

(declare-fun bs!755820 () Bool)

(assert (= bs!755820 (and d!1340477 d!1340041)))

(assert (=> bs!755820 (not (= lambda!153467 lambda!153276))))

(declare-fun bs!755821 () Bool)

(assert (= bs!755821 (and d!1340477 b!4423364)))

(assert (=> bs!755821 (= (= lt!1622853 (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616))))) (= lambda!153467 lambda!153465))))

(declare-fun bs!755822 () Bool)

(assert (= bs!755822 (and d!1340477 b!4423367)))

(assert (=> bs!755822 (= (= lt!1622853 (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616))))) (= lambda!153467 lambda!153464))))

(assert (=> bs!755813 (= (= lt!1622853 lt!1622807) (= lambda!153467 lambda!153452))))

(assert (=> bs!755819 (= (= lt!1622853 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (= lambda!153467 lambda!153456))))

(assert (=> bs!755818 (= (= lt!1622853 lt!1622729) (= lambda!153467 lambda!153432))))

(assert (=> bs!755821 (= (= lt!1622853 lt!1622870) (= lambda!153467 lambda!153466))))

(declare-fun bs!755823 () Bool)

(assert (= bs!755823 (and d!1340477 b!4423204)))

(assert (=> bs!755823 (= (= lt!1622853 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153467 lambda!153430))))

(declare-fun bs!755824 () Bool)

(assert (= bs!755824 (and d!1340477 d!1340133)))

(assert (=> bs!755824 (= (= lt!1622853 lt!1622415) (= lambda!153467 lambda!153370))))

(assert (=> bs!755817 (= (= lt!1622853 lt!1622432) (= lambda!153467 lambda!153369))))

(declare-fun bs!755825 () Bool)

(assert (= bs!755825 (and d!1340477 d!1340401)))

(assert (=> bs!755825 (= (= lt!1622853 lt!1622116) (= lambda!153467 lambda!153439))))

(declare-fun bs!755826 () Bool)

(assert (= bs!755826 (and d!1340477 d!1340465)))

(assert (=> bs!755826 (= (= lt!1622853 lt!1622821) (= lambda!153467 lambda!153458))))

(declare-fun bs!755827 () Bool)

(assert (= bs!755827 (and d!1340477 d!1340369)))

(assert (=> bs!755827 (= (= lt!1622853 lt!1622712) (= lambda!153467 lambda!153433))))

(declare-fun bs!755828 () Bool)

(assert (= bs!755828 (and d!1340477 d!1340445)))

(assert (=> bs!755828 (= (= lt!1622853 lt!1622790) (= lambda!153467 lambda!153453))))

(assert (=> d!1340477 true))

(declare-fun b!4423363 () Bool)

(declare-fun e!2754164 () Bool)

(assert (=> b!4423363 (= e!2754164 (forall!9546 (toList!3470 (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616))))) lambda!153466))))

(declare-fun e!2754165 () ListMap!2713)

(assert (=> b!4423364 (= e!2754165 lt!1622870)))

(declare-fun lt!1622852 () ListMap!2713)

(assert (=> b!4423364 (= lt!1622852 (+!1066 (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) (h!55239 (_2!27966 (h!55240 (tail!7255 (toList!3469 lm!1616)))))))))

(assert (=> b!4423364 (= lt!1622870 (addToMapMapFromBucket!378 (t!356622 (_2!27966 (h!55240 (tail!7255 (toList!3469 lm!1616))))) (+!1066 (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) (h!55239 (_2!27966 (h!55240 (tail!7255 (toList!3469 lm!1616))))))))))

(declare-fun lt!1622857 () Unit!81469)

(declare-fun call!307743 () Unit!81469)

(assert (=> b!4423364 (= lt!1622857 call!307743)))

(assert (=> b!4423364 (forall!9546 (toList!3470 (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616))))) lambda!153465)))

(declare-fun lt!1622864 () Unit!81469)

(assert (=> b!4423364 (= lt!1622864 lt!1622857)))

(assert (=> b!4423364 (forall!9546 (toList!3470 lt!1622852) lambda!153466)))

(declare-fun lt!1622869 () Unit!81469)

(declare-fun Unit!81624 () Unit!81469)

(assert (=> b!4423364 (= lt!1622869 Unit!81624)))

(assert (=> b!4423364 (forall!9546 (t!356622 (_2!27966 (h!55240 (tail!7255 (toList!3469 lm!1616))))) lambda!153466)))

(declare-fun lt!1622866 () Unit!81469)

(declare-fun Unit!81625 () Unit!81469)

(assert (=> b!4423364 (= lt!1622866 Unit!81625)))

(declare-fun lt!1622859 () Unit!81469)

(declare-fun Unit!81626 () Unit!81469)

(assert (=> b!4423364 (= lt!1622859 Unit!81626)))

(declare-fun lt!1622867 () Unit!81469)

(assert (=> b!4423364 (= lt!1622867 (forallContained!2083 (toList!3470 lt!1622852) lambda!153466 (h!55239 (_2!27966 (h!55240 (tail!7255 (toList!3469 lm!1616)))))))))

(assert (=> b!4423364 (contains!12050 lt!1622852 (_1!27965 (h!55239 (_2!27966 (h!55240 (tail!7255 (toList!3469 lm!1616)))))))))

(declare-fun lt!1622860 () Unit!81469)

(declare-fun Unit!81628 () Unit!81469)

(assert (=> b!4423364 (= lt!1622860 Unit!81628)))

(assert (=> b!4423364 (contains!12050 lt!1622870 (_1!27965 (h!55239 (_2!27966 (h!55240 (tail!7255 (toList!3469 lm!1616)))))))))

(declare-fun lt!1622851 () Unit!81469)

(declare-fun Unit!81629 () Unit!81469)

(assert (=> b!4423364 (= lt!1622851 Unit!81629)))

(assert (=> b!4423364 (forall!9546 (_2!27966 (h!55240 (tail!7255 (toList!3469 lm!1616)))) lambda!153466)))

(declare-fun lt!1622865 () Unit!81469)

(declare-fun Unit!81630 () Unit!81469)

(assert (=> b!4423364 (= lt!1622865 Unit!81630)))

(declare-fun call!307741 () Bool)

(assert (=> b!4423364 call!307741))

(declare-fun lt!1622871 () Unit!81469)

(declare-fun Unit!81631 () Unit!81469)

(assert (=> b!4423364 (= lt!1622871 Unit!81631)))

(declare-fun lt!1622861 () Unit!81469)

(declare-fun Unit!81632 () Unit!81469)

(assert (=> b!4423364 (= lt!1622861 Unit!81632)))

(declare-fun lt!1622868 () Unit!81469)

(assert (=> b!4423364 (= lt!1622868 (addForallContainsKeyThenBeforeAdding!167 (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) lt!1622870 (_1!27965 (h!55239 (_2!27966 (h!55240 (tail!7255 (toList!3469 lm!1616)))))) (_2!27965 (h!55239 (_2!27966 (h!55240 (tail!7255 (toList!3469 lm!1616))))))))))

(assert (=> b!4423364 (forall!9546 (toList!3470 (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616))))) lambda!153466)))

(declare-fun lt!1622862 () Unit!81469)

(assert (=> b!4423364 (= lt!1622862 lt!1622868)))

(declare-fun call!307742 () Bool)

(assert (=> b!4423364 call!307742))

(declare-fun lt!1622863 () Unit!81469)

(declare-fun Unit!81633 () Unit!81469)

(assert (=> b!4423364 (= lt!1622863 Unit!81633)))

(declare-fun res!1828404 () Bool)

(assert (=> b!4423364 (= res!1828404 (forall!9546 (_2!27966 (h!55240 (tail!7255 (toList!3469 lm!1616)))) lambda!153466))))

(assert (=> b!4423364 (=> (not res!1828404) (not e!2754164))))

(assert (=> b!4423364 e!2754164))

(declare-fun lt!1622855 () Unit!81469)

(declare-fun Unit!81634 () Unit!81469)

(assert (=> b!4423364 (= lt!1622855 Unit!81634)))

(declare-fun bm!307736 () Bool)

(declare-fun c!752958 () Bool)

(assert (=> bm!307736 (= call!307741 (forall!9546 (ite c!752958 (toList!3470 (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616))))) (toList!3470 lt!1622852)) (ite c!752958 lambda!153464 lambda!153466)))))

(declare-fun b!4423365 () Bool)

(declare-fun e!2754166 () Bool)

(assert (=> b!4423365 (= e!2754166 (invariantList!799 (toList!3470 lt!1622853)))))

(declare-fun b!4423366 () Bool)

(declare-fun res!1828403 () Bool)

(assert (=> b!4423366 (=> (not res!1828403) (not e!2754166))))

(assert (=> b!4423366 (= res!1828403 (forall!9546 (toList!3470 (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616))))) lambda!153467))))

(assert (=> b!4423367 (= e!2754165 (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))))))

(declare-fun lt!1622858 () Unit!81469)

(assert (=> b!4423367 (= lt!1622858 call!307743)))

(assert (=> b!4423367 call!307742))

(declare-fun lt!1622856 () Unit!81469)

(assert (=> b!4423367 (= lt!1622856 lt!1622858)))

(assert (=> b!4423367 call!307741))

(declare-fun lt!1622854 () Unit!81469)

(declare-fun Unit!81635 () Unit!81469)

(assert (=> b!4423367 (= lt!1622854 Unit!81635)))

(assert (=> d!1340477 e!2754166))

(declare-fun res!1828405 () Bool)

(assert (=> d!1340477 (=> (not res!1828405) (not e!2754166))))

(assert (=> d!1340477 (= res!1828405 (forall!9546 (_2!27966 (h!55240 (tail!7255 (toList!3469 lm!1616)))) lambda!153467))))

(assert (=> d!1340477 (= lt!1622853 e!2754165)))

(assert (=> d!1340477 (= c!752958 ((_ is Nil!49560) (_2!27966 (h!55240 (tail!7255 (toList!3469 lm!1616))))))))

(assert (=> d!1340477 (noDuplicateKeys!741 (_2!27966 (h!55240 (tail!7255 (toList!3469 lm!1616)))))))

(assert (=> d!1340477 (= (addToMapMapFromBucket!378 (_2!27966 (h!55240 (tail!7255 (toList!3469 lm!1616)))) (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616))))) lt!1622853)))

(declare-fun bm!307737 () Bool)

(assert (=> bm!307737 (= call!307743 (lemmaContainsAllItsOwnKeys!167 (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616))))))))

(declare-fun bm!307738 () Bool)

(assert (=> bm!307738 (= call!307742 (forall!9546 (toList!3470 (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616))))) (ite c!752958 lambda!153464 lambda!153466)))))

(assert (= (and d!1340477 c!752958) b!4423367))

(assert (= (and d!1340477 (not c!752958)) b!4423364))

(assert (= (and b!4423364 res!1828404) b!4423363))

(assert (= (or b!4423367 b!4423364) bm!307737))

(assert (= (or b!4423367 b!4423364) bm!307736))

(assert (= (or b!4423367 b!4423364) bm!307738))

(assert (= (and d!1340477 res!1828405) b!4423366))

(assert (= (and b!4423366 res!1828403) b!4423365))

(assert (=> bm!307737 m!5100793))

(declare-fun m!5102125 () Bool)

(assert (=> bm!307737 m!5102125))

(declare-fun m!5102127 () Bool)

(assert (=> b!4423364 m!5102127))

(declare-fun m!5102129 () Bool)

(assert (=> b!4423364 m!5102129))

(declare-fun m!5102131 () Bool)

(assert (=> b!4423364 m!5102131))

(declare-fun m!5102133 () Bool)

(assert (=> b!4423364 m!5102133))

(declare-fun m!5102135 () Bool)

(assert (=> b!4423364 m!5102135))

(declare-fun m!5102137 () Bool)

(assert (=> b!4423364 m!5102137))

(declare-fun m!5102139 () Bool)

(assert (=> b!4423364 m!5102139))

(declare-fun m!5102141 () Bool)

(assert (=> b!4423364 m!5102141))

(assert (=> b!4423364 m!5100793))

(assert (=> b!4423364 m!5102133))

(declare-fun m!5102143 () Bool)

(assert (=> b!4423364 m!5102143))

(assert (=> b!4423364 m!5100793))

(declare-fun m!5102145 () Bool)

(assert (=> b!4423364 m!5102145))

(assert (=> b!4423364 m!5102143))

(declare-fun m!5102147 () Bool)

(assert (=> b!4423364 m!5102147))

(declare-fun m!5102149 () Bool)

(assert (=> d!1340477 m!5102149))

(declare-fun m!5102151 () Bool)

(assert (=> d!1340477 m!5102151))

(declare-fun m!5102153 () Bool)

(assert (=> bm!307738 m!5102153))

(declare-fun m!5102155 () Bool)

(assert (=> bm!307736 m!5102155))

(declare-fun m!5102157 () Bool)

(assert (=> b!4423366 m!5102157))

(assert (=> b!4423363 m!5102127))

(declare-fun m!5102159 () Bool)

(assert (=> b!4423365 m!5102159))

(assert (=> b!4422581 d!1340477))

(declare-fun bs!755829 () Bool)

(declare-fun d!1340479 () Bool)

(assert (= bs!755829 (and d!1340479 d!1340059)))

(declare-fun lambda!153468 () Int)

(assert (=> bs!755829 (= lambda!153468 lambda!153287)))

(declare-fun bs!755830 () Bool)

(assert (= bs!755830 (and d!1340479 d!1340045)))

(assert (=> bs!755830 (= lambda!153468 lambda!153282)))

(declare-fun bs!755831 () Bool)

(assert (= bs!755831 (and d!1340479 start!431164)))

(assert (=> bs!755831 (= lambda!153468 lambda!153264)))

(declare-fun bs!755832 () Bool)

(assert (= bs!755832 (and d!1340479 d!1340033)))

(assert (=> bs!755832 (= lambda!153468 lambda!153273)))

(declare-fun bs!755833 () Bool)

(assert (= bs!755833 (and d!1340479 d!1340473)))

(assert (=> bs!755833 (= lambda!153468 lambda!153459)))

(declare-fun bs!755834 () Bool)

(assert (= bs!755834 (and d!1340479 d!1340091)))

(assert (=> bs!755834 (= lambda!153468 lambda!153302)))

(declare-fun bs!755835 () Bool)

(assert (= bs!755835 (and d!1340479 d!1340389)))

(assert (=> bs!755835 (= lambda!153468 lambda!153434)))

(declare-fun bs!755836 () Bool)

(assert (= bs!755836 (and d!1340479 d!1340121)))

(assert (=> bs!755836 (= lambda!153468 lambda!153306)))

(declare-fun bs!755837 () Bool)

(assert (= bs!755837 (and d!1340479 d!1340057)))

(assert (=> bs!755837 (= lambda!153468 lambda!153286)))

(declare-fun bs!755838 () Bool)

(assert (= bs!755838 (and d!1340479 d!1340073)))

(assert (=> bs!755838 (= lambda!153468 lambda!153298)))

(declare-fun bs!755839 () Bool)

(assert (= bs!755839 (and d!1340479 d!1340455)))

(assert (=> bs!755839 (= lambda!153468 lambda!153454)))

(declare-fun bs!755840 () Bool)

(assert (= bs!755840 (and d!1340479 d!1340017)))

(assert (=> bs!755840 (not (= lambda!153468 lambda!153267))))

(declare-fun lt!1622894 () ListMap!2713)

(assert (=> d!1340479 (invariantList!799 (toList!3470 lt!1622894))))

(declare-fun e!2754181 () ListMap!2713)

(assert (=> d!1340479 (= lt!1622894 e!2754181)))

(declare-fun c!752969 () Bool)

(assert (=> d!1340479 (= c!752969 ((_ is Cons!49561) (t!356623 (tail!7255 (toList!3469 lm!1616)))))))

(assert (=> d!1340479 (forall!9544 (t!356623 (tail!7255 (toList!3469 lm!1616))) lambda!153468)))

(assert (=> d!1340479 (= (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616)))) lt!1622894)))

(declare-fun b!4423396 () Bool)

(assert (=> b!4423396 (= e!2754181 (addToMapMapFromBucket!378 (_2!27966 (h!55240 (t!356623 (tail!7255 (toList!3469 lm!1616))))) (extractMap!802 (t!356623 (t!356623 (tail!7255 (toList!3469 lm!1616)))))))))

(declare-fun b!4423397 () Bool)

(assert (=> b!4423397 (= e!2754181 (ListMap!2714 Nil!49560))))

(assert (= (and d!1340479 c!752969) b!4423396))

(assert (= (and d!1340479 (not c!752969)) b!4423397))

(declare-fun m!5102161 () Bool)

(assert (=> d!1340479 m!5102161))

(declare-fun m!5102163 () Bool)

(assert (=> d!1340479 m!5102163))

(declare-fun m!5102165 () Bool)

(assert (=> b!4423396 m!5102165))

(assert (=> b!4423396 m!5102165))

(declare-fun m!5102167 () Bool)

(assert (=> b!4423396 m!5102167))

(assert (=> b!4422581 d!1340479))

(declare-fun d!1340481 () Bool)

(declare-fun c!752972 () Bool)

(assert (=> d!1340481 (= c!752972 ((_ is Nil!49560) (toList!3470 lt!1622127)))))

(declare-fun e!2754184 () (InoxSet tuple2!49342))

(assert (=> d!1340481 (= (content!7944 (toList!3470 lt!1622127)) e!2754184)))

(declare-fun b!4423402 () Bool)

(assert (=> b!4423402 (= e!2754184 ((as const (Array tuple2!49342 Bool)) false))))

(declare-fun b!4423403 () Bool)

(assert (=> b!4423403 (= e!2754184 ((_ map or) (store ((as const (Array tuple2!49342 Bool)) false) (h!55239 (toList!3470 lt!1622127)) true) (content!7944 (t!356622 (toList!3470 lt!1622127)))))))

(assert (= (and d!1340481 c!752972) b!4423402))

(assert (= (and d!1340481 (not c!752972)) b!4423403))

(declare-fun m!5102169 () Bool)

(assert (=> b!4423403 m!5102169))

(declare-fun m!5102171 () Bool)

(assert (=> b!4423403 m!5102171))

(assert (=> d!1340131 d!1340481))

(declare-fun d!1340483 () Bool)

(declare-fun c!752973 () Bool)

(assert (=> d!1340483 (= c!752973 ((_ is Nil!49560) (toList!3470 (addToMapMapFromBucket!378 (_2!27966 (h!55240 (toList!3469 lm!1616))) lt!1622116))))))

(declare-fun e!2754185 () (InoxSet tuple2!49342))

(assert (=> d!1340483 (= (content!7944 (toList!3470 (addToMapMapFromBucket!378 (_2!27966 (h!55240 (toList!3469 lm!1616))) lt!1622116))) e!2754185)))

(declare-fun b!4423404 () Bool)

(assert (=> b!4423404 (= e!2754185 ((as const (Array tuple2!49342 Bool)) false))))

(declare-fun b!4423405 () Bool)

(assert (=> b!4423405 (= e!2754185 ((_ map or) (store ((as const (Array tuple2!49342 Bool)) false) (h!55239 (toList!3470 (addToMapMapFromBucket!378 (_2!27966 (h!55240 (toList!3469 lm!1616))) lt!1622116))) true) (content!7944 (t!356622 (toList!3470 (addToMapMapFromBucket!378 (_2!27966 (h!55240 (toList!3469 lm!1616))) lt!1622116))))))))

(assert (= (and d!1340483 c!752973) b!4423404))

(assert (= (and d!1340483 (not c!752973)) b!4423405))

(declare-fun m!5102173 () Bool)

(assert (=> b!4423405 m!5102173))

(declare-fun m!5102175 () Bool)

(assert (=> b!4423405 m!5102175))

(assert (=> d!1340131 d!1340483))

(assert (=> b!4422637 d!1340203))

(declare-fun d!1340485 () Bool)

(assert (=> d!1340485 (containsKey!1097 (toList!3470 lt!1622127) key!3717)))

(declare-fun lt!1622898 () Unit!81469)

(declare-fun choose!27898 (List!49684 K!10925) Unit!81469)

(assert (=> d!1340485 (= lt!1622898 (choose!27898 (toList!3470 lt!1622127) key!3717))))

(assert (=> d!1340485 (invariantList!799 (toList!3470 lt!1622127))))

(assert (=> d!1340485 (= (lemmaInGetKeysListThenContainsKey!245 (toList!3470 lt!1622127) key!3717) lt!1622898)))

(declare-fun bs!755841 () Bool)

(assert (= bs!755841 d!1340485))

(assert (=> bs!755841 m!5100875))

(declare-fun m!5102177 () Bool)

(assert (=> bs!755841 m!5102177))

(assert (=> bs!755841 m!5101223))

(assert (=> b!4422637 d!1340485))

(declare-fun d!1340487 () Bool)

(declare-fun lt!1622909 () Bool)

(assert (=> d!1340487 (= lt!1622909 (select (content!7945 (keys!16915 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))) key!3717))))

(declare-fun e!2754193 () Bool)

(assert (=> d!1340487 (= lt!1622909 e!2754193)))

(declare-fun res!1828418 () Bool)

(assert (=> d!1340487 (=> (not res!1828418) (not e!2754193))))

(assert (=> d!1340487 (= res!1828418 ((_ is Cons!49563) (keys!16915 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))))))

(assert (=> d!1340487 (= (contains!12056 (keys!16915 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) key!3717) lt!1622909)))

(declare-fun b!4423420 () Bool)

(declare-fun e!2754194 () Bool)

(assert (=> b!4423420 (= e!2754193 e!2754194)))

(declare-fun res!1828419 () Bool)

(assert (=> b!4423420 (=> res!1828419 e!2754194)))

(assert (=> b!4423420 (= res!1828419 (= (h!55244 (keys!16915 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))) key!3717))))

(declare-fun b!4423421 () Bool)

(assert (=> b!4423421 (= e!2754194 (contains!12056 (t!356625 (keys!16915 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))) key!3717))))

(assert (= (and d!1340487 res!1828418) b!4423420))

(assert (= (and b!4423420 (not res!1828419)) b!4423421))

(assert (=> d!1340487 m!5100837))

(declare-fun m!5102179 () Bool)

(assert (=> d!1340487 m!5102179))

(declare-fun m!5102181 () Bool)

(assert (=> d!1340487 m!5102181))

(declare-fun m!5102183 () Bool)

(assert (=> b!4423421 m!5102183))

(assert (=> b!4422623 d!1340487))

(declare-fun bs!755842 () Bool)

(declare-fun b!4423423 () Bool)

(assert (= bs!755842 (and b!4423423 b!4423358)))

(declare-fun lambda!153469 () Int)

(assert (=> bs!755842 (= (= (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) (t!356622 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))))) (= lambda!153469 lambda!153460))))

(declare-fun bs!755843 () Bool)

(assert (= bs!755843 (and b!4423423 b!4423356)))

(assert (=> bs!755843 (= (= (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) (Cons!49560 (h!55239 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))) (t!356622 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))))) (= lambda!153469 lambda!153461))))

(declare-fun bs!755844 () Bool)

(assert (= bs!755844 (and b!4423423 b!4422905)))

(assert (=> bs!755844 (= (= (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) (toList!3470 lt!1622127)) (= lambda!153469 lambda!153394))))

(declare-fun bs!755845 () Bool)

(assert (= bs!755845 (and b!4423423 b!4423262)))

(assert (=> bs!755845 (= (= (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) (toList!3470 lt!1622127)) (= lambda!153469 lambda!153448))))

(declare-fun bs!755846 () Bool)

(assert (= bs!755846 (and b!4423423 b!4422909)))

(assert (=> bs!755846 (= (= (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) (t!356622 (toList!3470 lt!1622127))) (= lambda!153469 lambda!153392))))

(declare-fun bs!755847 () Bool)

(assert (= bs!755847 (and b!4423423 b!4422907)))

(assert (=> bs!755847 (= (= (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) (Cons!49560 (h!55239 (toList!3470 lt!1622127)) (t!356622 (toList!3470 lt!1622127)))) (= lambda!153469 lambda!153393))))

(declare-fun bs!755848 () Bool)

(assert (= bs!755848 (and b!4423423 b!4423354)))

(assert (=> bs!755848 (= lambda!153469 lambda!153462)))

(assert (=> b!4423423 true))

(declare-fun bs!755849 () Bool)

(declare-fun b!4423424 () Bool)

(assert (= bs!755849 (and b!4423424 b!4422913)))

(declare-fun lambda!153470 () Int)

(assert (=> bs!755849 (= lambda!153470 lambda!153395)))

(declare-fun bs!755850 () Bool)

(assert (= bs!755850 (and b!4423424 b!4423263)))

(assert (=> bs!755850 (= lambda!153470 lambda!153449)))

(declare-fun bs!755851 () Bool)

(assert (= bs!755851 (and b!4423424 b!4423362)))

(assert (=> bs!755851 (= lambda!153470 lambda!153463)))

(declare-fun d!1340489 () Bool)

(declare-fun e!2754195 () Bool)

(assert (=> d!1340489 e!2754195))

(declare-fun res!1828421 () Bool)

(assert (=> d!1340489 (=> (not res!1828421) (not e!2754195))))

(declare-fun lt!1622910 () List!49687)

(assert (=> d!1340489 (= res!1828421 (noDuplicate!655 lt!1622910))))

(assert (=> d!1340489 (= lt!1622910 (getKeysList!247 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))))))

(assert (=> d!1340489 (= (keys!16915 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) lt!1622910)))

(declare-fun b!4423422 () Bool)

(declare-fun res!1828420 () Bool)

(assert (=> b!4423422 (=> (not res!1828420) (not e!2754195))))

(assert (=> b!4423422 (= res!1828420 (= (length!166 lt!1622910) (length!167 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))))))))

(declare-fun res!1828422 () Bool)

(assert (=> b!4423423 (=> (not res!1828422) (not e!2754195))))

(assert (=> b!4423423 (= res!1828422 (forall!9547 lt!1622910 lambda!153469))))

(assert (=> b!4423424 (= e!2754195 (= (content!7945 lt!1622910) (content!7945 (map!10823 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) lambda!153470))))))

(assert (= (and d!1340489 res!1828421) b!4423422))

(assert (= (and b!4423422 res!1828420) b!4423423))

(assert (= (and b!4423423 res!1828422) b!4423424))

(declare-fun m!5102213 () Bool)

(assert (=> d!1340489 m!5102213))

(assert (=> d!1340489 m!5100835))

(declare-fun m!5102219 () Bool)

(assert (=> b!4423422 m!5102219))

(assert (=> b!4423422 m!5102103))

(declare-fun m!5102225 () Bool)

(assert (=> b!4423423 m!5102225))

(declare-fun m!5102231 () Bool)

(assert (=> b!4423424 m!5102231))

(declare-fun m!5102233 () Bool)

(assert (=> b!4423424 m!5102233))

(assert (=> b!4423424 m!5102233))

(declare-fun m!5102235 () Bool)

(assert (=> b!4423424 m!5102235))

(assert (=> b!4422623 d!1340489))

(declare-fun d!1340493 () Bool)

(assert (=> d!1340493 (isDefined!8007 (getValueByKey!700 (toList!3470 lt!1622127) key!3717))))

(declare-fun lt!1622917 () Unit!81469)

(declare-fun choose!27899 (List!49684 K!10925) Unit!81469)

(assert (=> d!1340493 (= lt!1622917 (choose!27899 (toList!3470 lt!1622127) key!3717))))

(assert (=> d!1340493 (invariantList!799 (toList!3470 lt!1622127))))

(assert (=> d!1340493 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!610 (toList!3470 lt!1622127) key!3717) lt!1622917)))

(declare-fun bs!755852 () Bool)

(assert (= bs!755852 d!1340493))

(assert (=> bs!755852 m!5100865))

(assert (=> bs!755852 m!5100865))

(assert (=> bs!755852 m!5100867))

(declare-fun m!5102261 () Bool)

(assert (=> bs!755852 m!5102261))

(assert (=> bs!755852 m!5101223))

(assert (=> b!4422639 d!1340493))

(declare-fun d!1340503 () Bool)

(assert (=> d!1340503 (= (isDefined!8007 (getValueByKey!700 (toList!3470 lt!1622127) key!3717)) (not (isEmpty!28336 (getValueByKey!700 (toList!3470 lt!1622127) key!3717))))))

(declare-fun bs!755853 () Bool)

(assert (= bs!755853 d!1340503))

(assert (=> bs!755853 m!5100865))

(declare-fun m!5102263 () Bool)

(assert (=> bs!755853 m!5102263))

(assert (=> b!4422639 d!1340503))

(declare-fun b!4423434 () Bool)

(declare-fun e!2754203 () Option!10714)

(declare-fun e!2754204 () Option!10714)

(assert (=> b!4423434 (= e!2754203 e!2754204)))

(declare-fun c!752980 () Bool)

(assert (=> b!4423434 (= c!752980 (and ((_ is Cons!49560) (toList!3470 lt!1622127)) (not (= (_1!27965 (h!55239 (toList!3470 lt!1622127))) key!3717))))))

(declare-fun b!4423436 () Bool)

(assert (=> b!4423436 (= e!2754204 None!10713)))

(declare-fun b!4423433 () Bool)

(assert (=> b!4423433 (= e!2754203 (Some!10713 (_2!27965 (h!55239 (toList!3470 lt!1622127)))))))

(declare-fun d!1340505 () Bool)

(declare-fun c!752979 () Bool)

(assert (=> d!1340505 (= c!752979 (and ((_ is Cons!49560) (toList!3470 lt!1622127)) (= (_1!27965 (h!55239 (toList!3470 lt!1622127))) key!3717)))))

(assert (=> d!1340505 (= (getValueByKey!700 (toList!3470 lt!1622127) key!3717) e!2754203)))

(declare-fun b!4423435 () Bool)

(assert (=> b!4423435 (= e!2754204 (getValueByKey!700 (t!356622 (toList!3470 lt!1622127)) key!3717))))

(assert (= (and d!1340505 c!752979) b!4423433))

(assert (= (and d!1340505 (not c!752979)) b!4423434))

(assert (= (and b!4423434 c!752980) b!4423435))

(assert (= (and b!4423434 (not c!752980)) b!4423436))

(declare-fun m!5102265 () Bool)

(assert (=> b!4423435 m!5102265))

(assert (=> b!4422639 d!1340505))

(declare-fun d!1340507 () Bool)

(assert (=> d!1340507 (contains!12056 (getKeysList!247 (toList!3470 lt!1622127)) key!3717)))

(declare-fun lt!1622920 () Unit!81469)

(declare-fun choose!27900 (List!49684 K!10925) Unit!81469)

(assert (=> d!1340507 (= lt!1622920 (choose!27900 (toList!3470 lt!1622127) key!3717))))

(assert (=> d!1340507 (invariantList!799 (toList!3470 lt!1622127))))

(assert (=> d!1340507 (= (lemmaInListThenGetKeysListContains!244 (toList!3470 lt!1622127) key!3717) lt!1622920)))

(declare-fun bs!755855 () Bool)

(assert (= bs!755855 d!1340507))

(assert (=> bs!755855 m!5100869))

(assert (=> bs!755855 m!5100869))

(declare-fun m!5102267 () Bool)

(assert (=> bs!755855 m!5102267))

(declare-fun m!5102269 () Bool)

(assert (=> bs!755855 m!5102269))

(assert (=> bs!755855 m!5101223))

(assert (=> b!4422639 d!1340507))

(declare-fun d!1340511 () Bool)

(declare-fun choose!27901 (Hashable!5135 K!10925) (_ BitVec 64))

(assert (=> d!1340511 (= (hash!2093 hashF!1220 key!3717) (choose!27901 hashF!1220 key!3717))))

(declare-fun bs!755858 () Bool)

(assert (= bs!755858 d!1340511))

(declare-fun m!5102271 () Bool)

(assert (=> bs!755858 m!5102271))

(assert (=> d!1340037 d!1340511))

(assert (=> b!4422635 d!1340503))

(assert (=> b!4422635 d!1340505))

(declare-fun d!1340513 () Bool)

(declare-fun res!1828438 () Bool)

(declare-fun e!2754213 () Bool)

(assert (=> d!1340513 (=> res!1828438 e!2754213)))

(assert (=> d!1340513 (= res!1828438 (and ((_ is Cons!49561) (toList!3469 lm!1616)) (= (_1!27966 (h!55240 (toList!3469 lm!1616))) hash!366)))))

(assert (=> d!1340513 (= (containsKey!1094 (toList!3469 lm!1616) hash!366) e!2754213)))

(declare-fun b!4423451 () Bool)

(declare-fun e!2754214 () Bool)

(assert (=> b!4423451 (= e!2754213 e!2754214)))

(declare-fun res!1828439 () Bool)

(assert (=> b!4423451 (=> (not res!1828439) (not e!2754214))))

(assert (=> b!4423451 (= res!1828439 (and (or (not ((_ is Cons!49561) (toList!3469 lm!1616))) (bvsle (_1!27966 (h!55240 (toList!3469 lm!1616))) hash!366)) ((_ is Cons!49561) (toList!3469 lm!1616)) (bvslt (_1!27966 (h!55240 (toList!3469 lm!1616))) hash!366)))))

(declare-fun b!4423452 () Bool)

(assert (=> b!4423452 (= e!2754214 (containsKey!1094 (t!356623 (toList!3469 lm!1616)) hash!366))))

(assert (= (and d!1340513 (not res!1828438)) b!4423451))

(assert (= (and b!4423451 res!1828439) b!4423452))

(declare-fun m!5102273 () Bool)

(assert (=> b!4423452 m!5102273))

(assert (=> d!1340025 d!1340513))

(declare-fun d!1340515 () Bool)

(declare-fun e!2754215 () Bool)

(assert (=> d!1340515 e!2754215))

(declare-fun res!1828441 () Bool)

(assert (=> d!1340515 (=> (not res!1828441) (not e!2754215))))

(declare-fun lt!1622931 () ListMap!2713)

(assert (=> d!1340515 (= res!1828441 (contains!12050 lt!1622931 (_1!27965 (tuple2!49343 key!3717 newValue!93))))))

(declare-fun lt!1622928 () List!49684)

(assert (=> d!1340515 (= lt!1622931 (ListMap!2714 lt!1622928))))

(declare-fun lt!1622930 () Unit!81469)

(declare-fun lt!1622929 () Unit!81469)

(assert (=> d!1340515 (= lt!1622930 lt!1622929)))

(assert (=> d!1340515 (= (getValueByKey!700 lt!1622928 (_1!27965 (tuple2!49343 key!3717 newValue!93))) (Some!10713 (_2!27965 (tuple2!49343 key!3717 newValue!93))))))

(assert (=> d!1340515 (= lt!1622929 (lemmaContainsTupThenGetReturnValue!435 lt!1622928 (_1!27965 (tuple2!49343 key!3717 newValue!93)) (_2!27965 (tuple2!49343 key!3717 newValue!93))))))

(assert (=> d!1340515 (= lt!1622928 (insertNoDuplicatedKeys!189 (toList!3470 (extractMap!802 (toList!3469 lt!1622117))) (_1!27965 (tuple2!49343 key!3717 newValue!93)) (_2!27965 (tuple2!49343 key!3717 newValue!93))))))

(assert (=> d!1340515 (= (+!1066 (extractMap!802 (toList!3469 lt!1622117)) (tuple2!49343 key!3717 newValue!93)) lt!1622931)))

(declare-fun b!4423453 () Bool)

(declare-fun res!1828440 () Bool)

(assert (=> b!4423453 (=> (not res!1828440) (not e!2754215))))

(assert (=> b!4423453 (= res!1828440 (= (getValueByKey!700 (toList!3470 lt!1622931) (_1!27965 (tuple2!49343 key!3717 newValue!93))) (Some!10713 (_2!27965 (tuple2!49343 key!3717 newValue!93)))))))

(declare-fun b!4423454 () Bool)

(assert (=> b!4423454 (= e!2754215 (contains!12055 (toList!3470 lt!1622931) (tuple2!49343 key!3717 newValue!93)))))

(assert (= (and d!1340515 res!1828441) b!4423453))

(assert (= (and b!4423453 res!1828440) b!4423454))

(declare-fun m!5102289 () Bool)

(assert (=> d!1340515 m!5102289))

(declare-fun m!5102291 () Bool)

(assert (=> d!1340515 m!5102291))

(declare-fun m!5102295 () Bool)

(assert (=> d!1340515 m!5102295))

(declare-fun m!5102301 () Bool)

(assert (=> d!1340515 m!5102301))

(declare-fun m!5102303 () Bool)

(assert (=> b!4423453 m!5102303))

(declare-fun m!5102309 () Bool)

(assert (=> b!4423454 m!5102309))

(assert (=> d!1340073 d!1340515))

(declare-fun d!1340517 () Bool)

(declare-fun res!1828442 () Bool)

(declare-fun e!2754216 () Bool)

(assert (=> d!1340517 (=> res!1828442 e!2754216)))

(assert (=> d!1340517 (= res!1828442 ((_ is Nil!49561) (toList!3469 lt!1622117)))))

(assert (=> d!1340517 (= (forall!9544 (toList!3469 lt!1622117) lambda!153298) e!2754216)))

(declare-fun b!4423455 () Bool)

(declare-fun e!2754217 () Bool)

(assert (=> b!4423455 (= e!2754216 e!2754217)))

(declare-fun res!1828443 () Bool)

(assert (=> b!4423455 (=> (not res!1828443) (not e!2754217))))

(assert (=> b!4423455 (= res!1828443 (dynLambda!20836 lambda!153298 (h!55240 (toList!3469 lt!1622117))))))

(declare-fun b!4423456 () Bool)

(assert (=> b!4423456 (= e!2754217 (forall!9544 (t!356623 (toList!3469 lt!1622117)) lambda!153298))))

(assert (= (and d!1340517 (not res!1828442)) b!4423455))

(assert (= (and b!4423455 res!1828443) b!4423456))

(declare-fun b_lambda!142785 () Bool)

(assert (=> (not b_lambda!142785) (not b!4423455)))

(declare-fun m!5102311 () Bool)

(assert (=> b!4423455 m!5102311))

(declare-fun m!5102313 () Bool)

(assert (=> b!4423456 m!5102313))

(assert (=> d!1340073 d!1340517))

(assert (=> d!1340073 d!1340057))

(declare-fun d!1340519 () Bool)

(declare-fun e!2754220 () Bool)

(assert (=> d!1340519 e!2754220))

(declare-fun res!1828445 () Bool)

(assert (=> d!1340519 (=> (not res!1828445) (not e!2754220))))

(declare-fun lt!1622932 () ListLongMap!2119)

(assert (=> d!1340519 (= res!1828445 (contains!12049 lt!1622932 (_1!27966 (tuple2!49345 hash!366 newBucket!194))))))

(declare-fun lt!1622933 () List!49685)

(assert (=> d!1340519 (= lt!1622932 (ListLongMap!2120 lt!1622933))))

(declare-fun lt!1622934 () Unit!81469)

(declare-fun lt!1622935 () Unit!81469)

(assert (=> d!1340519 (= lt!1622934 lt!1622935)))

(assert (=> d!1340519 (= (getValueByKey!699 lt!1622933 (_1!27966 (tuple2!49345 hash!366 newBucket!194))) (Some!10712 (_2!27966 (tuple2!49345 hash!366 newBucket!194))))))

(assert (=> d!1340519 (= lt!1622935 (lemmaContainsTupThenGetReturnValue!434 lt!1622933 (_1!27966 (tuple2!49345 hash!366 newBucket!194)) (_2!27966 (tuple2!49345 hash!366 newBucket!194))))))

(assert (=> d!1340519 (= lt!1622933 (insertStrictlySorted!254 (toList!3469 lt!1622117) (_1!27966 (tuple2!49345 hash!366 newBucket!194)) (_2!27966 (tuple2!49345 hash!366 newBucket!194))))))

(assert (=> d!1340519 (= (+!1067 lt!1622117 (tuple2!49345 hash!366 newBucket!194)) lt!1622932)))

(declare-fun b!4423460 () Bool)

(declare-fun res!1828444 () Bool)

(assert (=> b!4423460 (=> (not res!1828444) (not e!2754220))))

(assert (=> b!4423460 (= res!1828444 (= (getValueByKey!699 (toList!3469 lt!1622932) (_1!27966 (tuple2!49345 hash!366 newBucket!194))) (Some!10712 (_2!27966 (tuple2!49345 hash!366 newBucket!194)))))))

(declare-fun b!4423461 () Bool)

(assert (=> b!4423461 (= e!2754220 (contains!12054 (toList!3469 lt!1622932) (tuple2!49345 hash!366 newBucket!194)))))

(assert (= (and d!1340519 res!1828445) b!4423460))

(assert (= (and b!4423460 res!1828444) b!4423461))

(declare-fun m!5102315 () Bool)

(assert (=> d!1340519 m!5102315))

(declare-fun m!5102317 () Bool)

(assert (=> d!1340519 m!5102317))

(declare-fun m!5102319 () Bool)

(assert (=> d!1340519 m!5102319))

(declare-fun m!5102321 () Bool)

(assert (=> d!1340519 m!5102321))

(declare-fun m!5102323 () Bool)

(assert (=> b!4423460 m!5102323))

(declare-fun m!5102325 () Bool)

(assert (=> b!4423461 m!5102325))

(assert (=> d!1340073 d!1340519))

(declare-fun d!1340521 () Bool)

(assert (=> d!1340521 (eq!399 (extractMap!802 (toList!3469 (+!1067 lt!1622117 (tuple2!49345 hash!366 newBucket!194)))) (+!1066 (extractMap!802 (toList!3469 lt!1622117)) (tuple2!49343 key!3717 newValue!93)))))

(assert (=> d!1340521 true))

(declare-fun _$9!206 () Unit!81469)

(assert (=> d!1340521 (= (choose!27881 lt!1622117 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) _$9!206)))

(declare-fun bs!755896 () Bool)

(assert (= bs!755896 d!1340521))

(assert (=> bs!755896 m!5100499))

(assert (=> bs!755896 m!5100773))

(assert (=> bs!755896 m!5100499))

(assert (=> bs!755896 m!5100783))

(assert (=> bs!755896 m!5100775))

(assert (=> bs!755896 m!5100773))

(assert (=> bs!755896 m!5100777))

(assert (=> bs!755896 m!5100775))

(assert (=> d!1340073 d!1340521))

(declare-fun bs!755897 () Bool)

(declare-fun d!1340559 () Bool)

(assert (= bs!755897 (and d!1340559 d!1340059)))

(declare-fun lambda!153475 () Int)

(assert (=> bs!755897 (= lambda!153475 lambda!153287)))

(declare-fun bs!755898 () Bool)

(assert (= bs!755898 (and d!1340559 d!1340045)))

(assert (=> bs!755898 (= lambda!153475 lambda!153282)))

(declare-fun bs!755899 () Bool)

(assert (= bs!755899 (and d!1340559 start!431164)))

(assert (=> bs!755899 (= lambda!153475 lambda!153264)))

(declare-fun bs!755900 () Bool)

(assert (= bs!755900 (and d!1340559 d!1340479)))

(assert (=> bs!755900 (= lambda!153475 lambda!153468)))

(declare-fun bs!755901 () Bool)

(assert (= bs!755901 (and d!1340559 d!1340033)))

(assert (=> bs!755901 (= lambda!153475 lambda!153273)))

(declare-fun bs!755902 () Bool)

(assert (= bs!755902 (and d!1340559 d!1340473)))

(assert (=> bs!755902 (= lambda!153475 lambda!153459)))

(declare-fun bs!755903 () Bool)

(assert (= bs!755903 (and d!1340559 d!1340091)))

(assert (=> bs!755903 (= lambda!153475 lambda!153302)))

(declare-fun bs!755904 () Bool)

(assert (= bs!755904 (and d!1340559 d!1340389)))

(assert (=> bs!755904 (= lambda!153475 lambda!153434)))

(declare-fun bs!755905 () Bool)

(assert (= bs!755905 (and d!1340559 d!1340121)))

(assert (=> bs!755905 (= lambda!153475 lambda!153306)))

(declare-fun bs!755906 () Bool)

(assert (= bs!755906 (and d!1340559 d!1340057)))

(assert (=> bs!755906 (= lambda!153475 lambda!153286)))

(declare-fun bs!755907 () Bool)

(assert (= bs!755907 (and d!1340559 d!1340073)))

(assert (=> bs!755907 (= lambda!153475 lambda!153298)))

(declare-fun bs!755908 () Bool)

(assert (= bs!755908 (and d!1340559 d!1340455)))

(assert (=> bs!755908 (= lambda!153475 lambda!153454)))

(declare-fun bs!755909 () Bool)

(assert (= bs!755909 (and d!1340559 d!1340017)))

(assert (=> bs!755909 (not (= lambda!153475 lambda!153267))))

(declare-fun lt!1622936 () ListMap!2713)

(assert (=> d!1340559 (invariantList!799 (toList!3470 lt!1622936))))

(declare-fun e!2754222 () ListMap!2713)

(assert (=> d!1340559 (= lt!1622936 e!2754222)))

(declare-fun c!752984 () Bool)

(assert (=> d!1340559 (= c!752984 ((_ is Cons!49561) (toList!3469 (+!1067 lt!1622117 (tuple2!49345 hash!366 newBucket!194)))))))

(assert (=> d!1340559 (forall!9544 (toList!3469 (+!1067 lt!1622117 (tuple2!49345 hash!366 newBucket!194))) lambda!153475)))

(assert (=> d!1340559 (= (extractMap!802 (toList!3469 (+!1067 lt!1622117 (tuple2!49345 hash!366 newBucket!194)))) lt!1622936)))

(declare-fun b!4423462 () Bool)

(assert (=> b!4423462 (= e!2754222 (addToMapMapFromBucket!378 (_2!27966 (h!55240 (toList!3469 (+!1067 lt!1622117 (tuple2!49345 hash!366 newBucket!194))))) (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 (tuple2!49345 hash!366 newBucket!194)))))))))

(declare-fun b!4423463 () Bool)

(assert (=> b!4423463 (= e!2754222 (ListMap!2714 Nil!49560))))

(assert (= (and d!1340559 c!752984) b!4423462))

(assert (= (and d!1340559 (not c!752984)) b!4423463))

(declare-fun m!5102347 () Bool)

(assert (=> d!1340559 m!5102347))

(declare-fun m!5102349 () Bool)

(assert (=> d!1340559 m!5102349))

(declare-fun m!5102351 () Bool)

(assert (=> b!4423462 m!5102351))

(assert (=> b!4423462 m!5102351))

(declare-fun m!5102353 () Bool)

(assert (=> b!4423462 m!5102353))

(assert (=> d!1340073 d!1340559))

(declare-fun d!1340561 () Bool)

(assert (=> d!1340561 (= (eq!399 (extractMap!802 (toList!3469 (+!1067 lt!1622117 (tuple2!49345 hash!366 newBucket!194)))) (+!1066 (extractMap!802 (toList!3469 lt!1622117)) (tuple2!49343 key!3717 newValue!93))) (= (content!7944 (toList!3470 (extractMap!802 (toList!3469 (+!1067 lt!1622117 (tuple2!49345 hash!366 newBucket!194)))))) (content!7944 (toList!3470 (+!1066 (extractMap!802 (toList!3469 lt!1622117)) (tuple2!49343 key!3717 newValue!93))))))))

(declare-fun bs!755910 () Bool)

(assert (= bs!755910 d!1340561))

(declare-fun m!5102355 () Bool)

(assert (=> bs!755910 m!5102355))

(declare-fun m!5102357 () Bool)

(assert (=> bs!755910 m!5102357))

(assert (=> d!1340073 d!1340561))

(declare-fun d!1340563 () Bool)

(declare-fun lt!1622937 () Bool)

(assert (=> d!1340563 (= lt!1622937 (select (content!7948 (toList!3469 lt!1622301)) lt!1622124))))

(declare-fun e!2754224 () Bool)

(assert (=> d!1340563 (= lt!1622937 e!2754224)))

(declare-fun res!1828447 () Bool)

(assert (=> d!1340563 (=> (not res!1828447) (not e!2754224))))

(assert (=> d!1340563 (= res!1828447 ((_ is Cons!49561) (toList!3469 lt!1622301)))))

(assert (=> d!1340563 (= (contains!12054 (toList!3469 lt!1622301) lt!1622124) lt!1622937)))

(declare-fun b!4423464 () Bool)

(declare-fun e!2754223 () Bool)

(assert (=> b!4423464 (= e!2754224 e!2754223)))

(declare-fun res!1828446 () Bool)

(assert (=> b!4423464 (=> res!1828446 e!2754223)))

(assert (=> b!4423464 (= res!1828446 (= (h!55240 (toList!3469 lt!1622301)) lt!1622124))))

(declare-fun b!4423465 () Bool)

(assert (=> b!4423465 (= e!2754223 (contains!12054 (t!356623 (toList!3469 lt!1622301)) lt!1622124))))

(assert (= (and d!1340563 res!1828447) b!4423464))

(assert (= (and b!4423464 (not res!1828446)) b!4423465))

(declare-fun m!5102359 () Bool)

(assert (=> d!1340563 m!5102359))

(declare-fun m!5102361 () Bool)

(assert (=> d!1340563 m!5102361))

(declare-fun m!5102363 () Bool)

(assert (=> b!4423465 m!5102363))

(assert (=> b!4422649 d!1340563))

(declare-fun d!1340565 () Bool)

(declare-fun res!1828448 () Bool)

(declare-fun e!2754225 () Bool)

(assert (=> d!1340565 (=> res!1828448 e!2754225)))

(assert (=> d!1340565 (= res!1828448 ((_ is Nil!49561) (toList!3469 lm!1616)))))

(assert (=> d!1340565 (= (forall!9544 (toList!3469 lm!1616) lambda!153267) e!2754225)))

(declare-fun b!4423466 () Bool)

(declare-fun e!2754226 () Bool)

(assert (=> b!4423466 (= e!2754225 e!2754226)))

(declare-fun res!1828449 () Bool)

(assert (=> b!4423466 (=> (not res!1828449) (not e!2754226))))

(assert (=> b!4423466 (= res!1828449 (dynLambda!20836 lambda!153267 (h!55240 (toList!3469 lm!1616))))))

(declare-fun b!4423467 () Bool)

(assert (=> b!4423467 (= e!2754226 (forall!9544 (t!356623 (toList!3469 lm!1616)) lambda!153267))))

(assert (= (and d!1340565 (not res!1828448)) b!4423466))

(assert (= (and b!4423466 res!1828449) b!4423467))

(declare-fun b_lambda!142825 () Bool)

(assert (=> (not b_lambda!142825) (not b!4423466)))

(declare-fun m!5102365 () Bool)

(assert (=> b!4423466 m!5102365))

(declare-fun m!5102367 () Bool)

(assert (=> b!4423467 m!5102367))

(assert (=> d!1340017 d!1340565))

(declare-fun d!1340567 () Bool)

(assert (=> d!1340567 (= (invariantList!799 (toList!3470 lt!1622248)) (noDuplicatedKeys!172 (toList!3470 lt!1622248)))))

(declare-fun bs!755911 () Bool)

(assert (= bs!755911 d!1340567))

(declare-fun m!5102369 () Bool)

(assert (=> bs!755911 m!5102369))

(assert (=> d!1340091 d!1340567))

(declare-fun d!1340569 () Bool)

(declare-fun res!1828450 () Bool)

(declare-fun e!2754227 () Bool)

(assert (=> d!1340569 (=> res!1828450 e!2754227)))

(assert (=> d!1340569 (= res!1828450 ((_ is Nil!49561) (tail!7255 (toList!3469 lm!1616))))))

(assert (=> d!1340569 (= (forall!9544 (tail!7255 (toList!3469 lm!1616)) lambda!153302) e!2754227)))

(declare-fun b!4423468 () Bool)

(declare-fun e!2754228 () Bool)

(assert (=> b!4423468 (= e!2754227 e!2754228)))

(declare-fun res!1828451 () Bool)

(assert (=> b!4423468 (=> (not res!1828451) (not e!2754228))))

(assert (=> b!4423468 (= res!1828451 (dynLambda!20836 lambda!153302 (h!55240 (tail!7255 (toList!3469 lm!1616)))))))

(declare-fun b!4423469 () Bool)

(assert (=> b!4423469 (= e!2754228 (forall!9544 (t!356623 (tail!7255 (toList!3469 lm!1616))) lambda!153302))))

(assert (= (and d!1340569 (not res!1828450)) b!4423468))

(assert (= (and b!4423468 res!1828451) b!4423469))

(declare-fun b_lambda!142827 () Bool)

(assert (=> (not b_lambda!142827) (not b!4423468)))

(declare-fun m!5102371 () Bool)

(assert (=> b!4423468 m!5102371))

(declare-fun m!5102373 () Bool)

(assert (=> b!4423469 m!5102373))

(assert (=> d!1340091 d!1340569))

(declare-fun d!1340571 () Bool)

(declare-fun res!1828456 () Bool)

(declare-fun e!2754233 () Bool)

(assert (=> d!1340571 (=> res!1828456 e!2754233)))

(assert (=> d!1340571 (= res!1828456 (or ((_ is Nil!49561) (toList!3469 lm!1616)) ((_ is Nil!49561) (t!356623 (toList!3469 lm!1616)))))))

(assert (=> d!1340571 (= (isStrictlySorted!226 (toList!3469 lm!1616)) e!2754233)))

(declare-fun b!4423474 () Bool)

(declare-fun e!2754234 () Bool)

(assert (=> b!4423474 (= e!2754233 e!2754234)))

(declare-fun res!1828457 () Bool)

(assert (=> b!4423474 (=> (not res!1828457) (not e!2754234))))

(assert (=> b!4423474 (= res!1828457 (bvslt (_1!27966 (h!55240 (toList!3469 lm!1616))) (_1!27966 (h!55240 (t!356623 (toList!3469 lm!1616))))))))

(declare-fun b!4423475 () Bool)

(assert (=> b!4423475 (= e!2754234 (isStrictlySorted!226 (t!356623 (toList!3469 lm!1616))))))

(assert (= (and d!1340571 (not res!1828456)) b!4423474))

(assert (= (and b!4423474 res!1828457) b!4423475))

(declare-fun m!5102375 () Bool)

(assert (=> b!4423475 m!5102375))

(assert (=> d!1340023 d!1340571))

(declare-fun d!1340573 () Bool)

(assert (=> d!1340573 (= (isEmpty!28335 (toList!3469 lm!1616)) ((_ is Nil!49561) (toList!3469 lm!1616)))))

(assert (=> d!1340123 d!1340573))

(declare-fun d!1340575 () Bool)

(declare-fun res!1828458 () Bool)

(declare-fun e!2754235 () Bool)

(assert (=> d!1340575 (=> res!1828458 e!2754235)))

(assert (=> d!1340575 (= res!1828458 (not ((_ is Cons!49560) (t!356622 newBucket!194))))))

(assert (=> d!1340575 (= (noDuplicateKeys!741 (t!356622 newBucket!194)) e!2754235)))

(declare-fun b!4423476 () Bool)

(declare-fun e!2754236 () Bool)

(assert (=> b!4423476 (= e!2754235 e!2754236)))

(declare-fun res!1828459 () Bool)

(assert (=> b!4423476 (=> (not res!1828459) (not e!2754236))))

(assert (=> b!4423476 (= res!1828459 (not (containsKey!1093 (t!356622 (t!356622 newBucket!194)) (_1!27965 (h!55239 (t!356622 newBucket!194))))))))

(declare-fun b!4423477 () Bool)

(assert (=> b!4423477 (= e!2754236 (noDuplicateKeys!741 (t!356622 (t!356622 newBucket!194))))))

(assert (= (and d!1340575 (not res!1828458)) b!4423476))

(assert (= (and b!4423476 res!1828459) b!4423477))

(declare-fun m!5102377 () Bool)

(assert (=> b!4423476 m!5102377))

(declare-fun m!5102379 () Bool)

(assert (=> b!4423477 m!5102379))

(assert (=> b!4422465 d!1340575))

(assert (=> b!4422628 d!1340489))

(declare-fun d!1340577 () Bool)

(declare-fun res!1828460 () Bool)

(declare-fun e!2754237 () Bool)

(assert (=> d!1340577 (=> res!1828460 e!2754237)))

(assert (=> d!1340577 (= res!1828460 (not ((_ is Cons!49560) (_2!27966 (h!55240 (toList!3469 lm!1616))))))))

(assert (=> d!1340577 (= (noDuplicateKeys!741 (_2!27966 (h!55240 (toList!3469 lm!1616)))) e!2754237)))

(declare-fun b!4423478 () Bool)

(declare-fun e!2754238 () Bool)

(assert (=> b!4423478 (= e!2754237 e!2754238)))

(declare-fun res!1828461 () Bool)

(assert (=> b!4423478 (=> (not res!1828461) (not e!2754238))))

(assert (=> b!4423478 (= res!1828461 (not (containsKey!1093 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616)))) (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))))

(declare-fun b!4423479 () Bool)

(assert (=> b!4423479 (= e!2754238 (noDuplicateKeys!741 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))

(assert (= (and d!1340577 (not res!1828460)) b!4423478))

(assert (= (and b!4423478 res!1828461) b!4423479))

(declare-fun m!5102381 () Bool)

(assert (=> b!4423478 m!5102381))

(declare-fun m!5102383 () Bool)

(assert (=> b!4423479 m!5102383))

(assert (=> bs!755341 d!1340577))

(assert (=> b!4422627 d!1340487))

(assert (=> b!4422627 d!1340489))

(declare-fun d!1340579 () Bool)

(declare-fun res!1828462 () Bool)

(declare-fun e!2754239 () Bool)

(assert (=> d!1340579 (=> res!1828462 e!2754239)))

(assert (=> d!1340579 (= res!1828462 ((_ is Nil!49560) (toList!3470 lt!1622116)))))

(assert (=> d!1340579 (= (forall!9546 (toList!3470 lt!1622116) (ite c!752793 lambda!153367 lambda!153369)) e!2754239)))

(declare-fun b!4423480 () Bool)

(declare-fun e!2754240 () Bool)

(assert (=> b!4423480 (= e!2754239 e!2754240)))

(declare-fun res!1828463 () Bool)

(assert (=> b!4423480 (=> (not res!1828463) (not e!2754240))))

(assert (=> b!4423480 (= res!1828463 (dynLambda!20838 (ite c!752793 lambda!153367 lambda!153369) (h!55239 (toList!3470 lt!1622116))))))

(declare-fun b!4423481 () Bool)

(assert (=> b!4423481 (= e!2754240 (forall!9546 (t!356622 (toList!3470 lt!1622116)) (ite c!752793 lambda!153367 lambda!153369)))))

(assert (= (and d!1340579 (not res!1828462)) b!4423480))

(assert (= (and b!4423480 res!1828463) b!4423481))

(declare-fun b_lambda!142829 () Bool)

(assert (=> (not b_lambda!142829) (not b!4423480)))

(declare-fun m!5102385 () Bool)

(assert (=> b!4423480 m!5102385))

(declare-fun m!5102387 () Bool)

(assert (=> b!4423481 m!5102387))

(assert (=> bm!307669 d!1340579))

(declare-fun d!1340581 () Bool)

(assert (=> d!1340581 (= (invariantList!799 (toList!3470 lt!1622415)) (noDuplicatedKeys!172 (toList!3470 lt!1622415)))))

(declare-fun bs!755912 () Bool)

(assert (= bs!755912 d!1340581))

(declare-fun m!5102389 () Bool)

(assert (=> bs!755912 m!5102389))

(assert (=> b!4422693 d!1340581))

(declare-fun b!4423483 () Bool)

(declare-fun e!2754241 () Option!10713)

(declare-fun e!2754242 () Option!10713)

(assert (=> b!4423483 (= e!2754241 e!2754242)))

(declare-fun c!752986 () Bool)

(assert (=> b!4423483 (= c!752986 (and ((_ is Cons!49561) (toList!3469 lt!1622185)) (not (= (_1!27966 (h!55240 (toList!3469 lt!1622185))) (_1!27966 lt!1622124)))))))

(declare-fun b!4423485 () Bool)

(assert (=> b!4423485 (= e!2754242 None!10712)))

(declare-fun d!1340583 () Bool)

(declare-fun c!752985 () Bool)

(assert (=> d!1340583 (= c!752985 (and ((_ is Cons!49561) (toList!3469 lt!1622185)) (= (_1!27966 (h!55240 (toList!3469 lt!1622185))) (_1!27966 lt!1622124))))))

(assert (=> d!1340583 (= (getValueByKey!699 (toList!3469 lt!1622185) (_1!27966 lt!1622124)) e!2754241)))

(declare-fun b!4423482 () Bool)

(assert (=> b!4423482 (= e!2754241 (Some!10712 (_2!27966 (h!55240 (toList!3469 lt!1622185)))))))

(declare-fun b!4423484 () Bool)

(assert (=> b!4423484 (= e!2754242 (getValueByKey!699 (t!356623 (toList!3469 lt!1622185)) (_1!27966 lt!1622124)))))

(assert (= (and d!1340583 c!752985) b!4423482))

(assert (= (and d!1340583 (not c!752985)) b!4423483))

(assert (= (and b!4423483 c!752986) b!4423484))

(assert (= (and b!4423483 (not c!752986)) b!4423485))

(declare-fun m!5102391 () Bool)

(assert (=> b!4423484 m!5102391))

(assert (=> b!4422513 d!1340583))

(declare-fun d!1340585 () Bool)

(declare-fun res!1828464 () Bool)

(declare-fun e!2754243 () Bool)

(assert (=> d!1340585 (=> res!1828464 e!2754243)))

(assert (=> d!1340585 (= res!1828464 (not ((_ is Cons!49560) (_2!27966 (h!55240 (toList!3469 lt!1622125))))))))

(assert (=> d!1340585 (= (noDuplicateKeys!741 (_2!27966 (h!55240 (toList!3469 lt!1622125)))) e!2754243)))

(declare-fun b!4423486 () Bool)

(declare-fun e!2754244 () Bool)

(assert (=> b!4423486 (= e!2754243 e!2754244)))

(declare-fun res!1828465 () Bool)

(assert (=> b!4423486 (=> (not res!1828465) (not e!2754244))))

(assert (=> b!4423486 (= res!1828465 (not (containsKey!1093 (t!356622 (_2!27966 (h!55240 (toList!3469 lt!1622125)))) (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lt!1622125))))))))))

(declare-fun b!4423487 () Bool)

(assert (=> b!4423487 (= e!2754244 (noDuplicateKeys!741 (t!356622 (_2!27966 (h!55240 (toList!3469 lt!1622125))))))))

(assert (= (and d!1340585 (not res!1828464)) b!4423486))

(assert (= (and b!4423486 res!1828465) b!4423487))

(declare-fun m!5102393 () Bool)

(assert (=> b!4423486 m!5102393))

(declare-fun m!5102395 () Bool)

(assert (=> b!4423487 m!5102395))

(assert (=> bs!755340 d!1340585))

(declare-fun d!1340587 () Bool)

(assert (=> d!1340587 (= (get!16148 (getValueByKey!699 (toList!3469 lm!1616) hash!366)) (v!43888 (getValueByKey!699 (toList!3469 lm!1616) hash!366)))))

(assert (=> d!1340043 d!1340587))

(assert (=> d!1340043 d!1340265))

(declare-fun d!1340589 () Bool)

(declare-fun res!1828466 () Bool)

(declare-fun e!2754245 () Bool)

(assert (=> d!1340589 (=> res!1828466 e!2754245)))

(assert (=> d!1340589 (= res!1828466 ((_ is Nil!49560) (_2!27966 (h!55240 (toList!3469 lm!1616)))))))

(assert (=> d!1340589 (= (forall!9546 (_2!27966 (h!55240 (toList!3469 lm!1616))) lambda!153370) e!2754245)))

(declare-fun b!4423488 () Bool)

(declare-fun e!2754246 () Bool)

(assert (=> b!4423488 (= e!2754245 e!2754246)))

(declare-fun res!1828467 () Bool)

(assert (=> b!4423488 (=> (not res!1828467) (not e!2754246))))

(assert (=> b!4423488 (= res!1828467 (dynLambda!20838 lambda!153370 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))

(declare-fun b!4423489 () Bool)

(assert (=> b!4423489 (= e!2754246 (forall!9546 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616)))) lambda!153370))))

(assert (= (and d!1340589 (not res!1828466)) b!4423488))

(assert (= (and b!4423488 res!1828467) b!4423489))

(declare-fun b_lambda!142831 () Bool)

(assert (=> (not b_lambda!142831) (not b!4423488)))

(declare-fun m!5102397 () Bool)

(assert (=> b!4423488 m!5102397))

(declare-fun m!5102399 () Bool)

(assert (=> b!4423489 m!5102399))

(assert (=> d!1340133 d!1340589))

(assert (=> d!1340133 d!1340577))

(assert (=> b!4422643 d!1340411))

(declare-fun b!4423490 () Bool)

(declare-fun e!2754251 () Bool)

(declare-fun e!2754250 () Bool)

(assert (=> b!4423490 (= e!2754251 e!2754250)))

(declare-fun res!1828469 () Bool)

(assert (=> b!4423490 (=> (not res!1828469) (not e!2754250))))

(assert (=> b!4423490 (= res!1828469 (isDefined!8007 (getValueByKey!700 (toList!3470 lt!1622432) (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))))

(declare-fun b!4423491 () Bool)

(declare-fun e!2754248 () List!49687)

(assert (=> b!4423491 (= e!2754248 (getKeysList!247 (toList!3470 lt!1622432)))))

(declare-fun b!4423492 () Bool)

(assert (=> b!4423492 false))

(declare-fun lt!1622939 () Unit!81469)

(declare-fun lt!1622942 () Unit!81469)

(assert (=> b!4423492 (= lt!1622939 lt!1622942)))

(assert (=> b!4423492 (containsKey!1097 (toList!3470 lt!1622432) (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))

(assert (=> b!4423492 (= lt!1622942 (lemmaInGetKeysListThenContainsKey!245 (toList!3470 lt!1622432) (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(declare-fun e!2754249 () Unit!81469)

(declare-fun Unit!81640 () Unit!81469)

(assert (=> b!4423492 (= e!2754249 Unit!81640)))

(declare-fun b!4423493 () Bool)

(declare-fun e!2754252 () Bool)

(assert (=> b!4423493 (= e!2754252 (not (contains!12056 (keys!16915 lt!1622432) (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))))

(declare-fun d!1340591 () Bool)

(assert (=> d!1340591 e!2754251))

(declare-fun res!1828468 () Bool)

(assert (=> d!1340591 (=> res!1828468 e!2754251)))

(assert (=> d!1340591 (= res!1828468 e!2754252)))

(declare-fun res!1828470 () Bool)

(assert (=> d!1340591 (=> (not res!1828470) (not e!2754252))))

(declare-fun lt!1622945 () Bool)

(assert (=> d!1340591 (= res!1828470 (not lt!1622945))))

(declare-fun lt!1622938 () Bool)

(assert (=> d!1340591 (= lt!1622945 lt!1622938)))

(declare-fun lt!1622941 () Unit!81469)

(declare-fun e!2754247 () Unit!81469)

(assert (=> d!1340591 (= lt!1622941 e!2754247)))

(declare-fun c!752987 () Bool)

(assert (=> d!1340591 (= c!752987 lt!1622938)))

(assert (=> d!1340591 (= lt!1622938 (containsKey!1097 (toList!3470 lt!1622432) (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(assert (=> d!1340591 (= (contains!12050 lt!1622432 (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))) lt!1622945)))

(declare-fun b!4423494 () Bool)

(declare-fun lt!1622944 () Unit!81469)

(assert (=> b!4423494 (= e!2754247 lt!1622944)))

(declare-fun lt!1622940 () Unit!81469)

(assert (=> b!4423494 (= lt!1622940 (lemmaContainsKeyImpliesGetValueByKeyDefined!610 (toList!3470 lt!1622432) (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(assert (=> b!4423494 (isDefined!8007 (getValueByKey!700 (toList!3470 lt!1622432) (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(declare-fun lt!1622943 () Unit!81469)

(assert (=> b!4423494 (= lt!1622943 lt!1622940)))

(assert (=> b!4423494 (= lt!1622944 (lemmaInListThenGetKeysListContains!244 (toList!3470 lt!1622432) (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(declare-fun call!307756 () Bool)

(assert (=> b!4423494 call!307756))

(declare-fun b!4423495 () Bool)

(declare-fun Unit!81641 () Unit!81469)

(assert (=> b!4423495 (= e!2754249 Unit!81641)))

(declare-fun bm!307751 () Bool)

(assert (=> bm!307751 (= call!307756 (contains!12056 e!2754248 (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(declare-fun c!752989 () Bool)

(assert (=> bm!307751 (= c!752989 c!752987)))

(declare-fun b!4423496 () Bool)

(assert (=> b!4423496 (= e!2754247 e!2754249)))

(declare-fun c!752988 () Bool)

(assert (=> b!4423496 (= c!752988 call!307756)))

(declare-fun b!4423497 () Bool)

(assert (=> b!4423497 (= e!2754250 (contains!12056 (keys!16915 lt!1622432) (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(declare-fun b!4423498 () Bool)

(assert (=> b!4423498 (= e!2754248 (keys!16915 lt!1622432))))

(assert (= (and d!1340591 c!752987) b!4423494))

(assert (= (and d!1340591 (not c!752987)) b!4423496))

(assert (= (and b!4423496 c!752988) b!4423492))

(assert (= (and b!4423496 (not c!752988)) b!4423495))

(assert (= (or b!4423494 b!4423496) bm!307751))

(assert (= (and bm!307751 c!752989) b!4423491))

(assert (= (and bm!307751 (not c!752989)) b!4423498))

(assert (= (and d!1340591 res!1828470) b!4423493))

(assert (= (and d!1340591 (not res!1828468)) b!4423490))

(assert (= (and b!4423490 res!1828469) b!4423497))

(declare-fun m!5102401 () Bool)

(assert (=> b!4423490 m!5102401))

(assert (=> b!4423490 m!5102401))

(declare-fun m!5102403 () Bool)

(assert (=> b!4423490 m!5102403))

(declare-fun m!5102405 () Bool)

(assert (=> b!4423491 m!5102405))

(declare-fun m!5102407 () Bool)

(assert (=> b!4423493 m!5102407))

(assert (=> b!4423493 m!5102407))

(declare-fun m!5102409 () Bool)

(assert (=> b!4423493 m!5102409))

(declare-fun m!5102411 () Bool)

(assert (=> b!4423492 m!5102411))

(declare-fun m!5102413 () Bool)

(assert (=> b!4423492 m!5102413))

(assert (=> b!4423497 m!5102407))

(assert (=> b!4423497 m!5102407))

(assert (=> b!4423497 m!5102409))

(assert (=> b!4423498 m!5102407))

(declare-fun m!5102415 () Bool)

(assert (=> bm!307751 m!5102415))

(assert (=> d!1340591 m!5102411))

(declare-fun m!5102417 () Bool)

(assert (=> b!4423494 m!5102417))

(assert (=> b!4423494 m!5102401))

(assert (=> b!4423494 m!5102401))

(assert (=> b!4423494 m!5102403))

(declare-fun m!5102419 () Bool)

(assert (=> b!4423494 m!5102419))

(assert (=> b!4422692 d!1340591))

(declare-fun bs!755913 () Bool)

(declare-fun d!1340593 () Bool)

(assert (= bs!755913 (and d!1340593 b!4423304)))

(declare-fun lambda!153480 () Int)

(assert (=> bs!755913 (= (= lt!1622432 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153480 lambda!153451))))

(declare-fun bs!755914 () Bool)

(assert (= bs!755914 (and d!1340593 b!4423341)))

(assert (=> bs!755914 (= (= lt!1622432 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (= lambda!153480 lambda!153455))))

(declare-fun bs!755915 () Bool)

(assert (= bs!755915 (and d!1340593 b!4422695)))

(assert (=> bs!755915 (= (= lt!1622432 lt!1622116) (= lambda!153480 lambda!153367))))

(declare-fun bs!755916 () Bool)

(assert (= bs!755916 (and d!1340593 b!4423307)))

(assert (=> bs!755916 (= (= lt!1622432 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153480 lambda!153450))))

(declare-fun bs!755917 () Bool)

(assert (= bs!755917 (and d!1340593 b!4422692)))

(assert (=> bs!755917 (= (= lt!1622432 lt!1622116) (= lambda!153480 lambda!153368))))

(declare-fun bs!755918 () Bool)

(assert (= bs!755918 (and d!1340593 b!4423201)))

(assert (=> bs!755918 (= (= lt!1622432 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153480 lambda!153431))))

(declare-fun bs!755919 () Bool)

(assert (= bs!755919 (and d!1340593 b!4423338)))

(assert (=> bs!755919 (= (= lt!1622432 lt!1622838) (= lambda!153480 lambda!153457))))

(declare-fun bs!755920 () Bool)

(assert (= bs!755920 (and d!1340593 d!1340041)))

(assert (=> bs!755920 (not (= lambda!153480 lambda!153276))))

(declare-fun bs!755921 () Bool)

(assert (= bs!755921 (and d!1340593 b!4423364)))

(assert (=> bs!755921 (= (= lt!1622432 (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616))))) (= lambda!153480 lambda!153465))))

(declare-fun bs!755922 () Bool)

(assert (= bs!755922 (and d!1340593 d!1340477)))

(assert (=> bs!755922 (= (= lt!1622432 lt!1622853) (= lambda!153480 lambda!153467))))

(declare-fun bs!755923 () Bool)

(assert (= bs!755923 (and d!1340593 b!4423367)))

(assert (=> bs!755923 (= (= lt!1622432 (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616))))) (= lambda!153480 lambda!153464))))

(assert (=> bs!755913 (= (= lt!1622432 lt!1622807) (= lambda!153480 lambda!153452))))

(assert (=> bs!755919 (= (= lt!1622432 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (= lambda!153480 lambda!153456))))

(assert (=> bs!755918 (= (= lt!1622432 lt!1622729) (= lambda!153480 lambda!153432))))

(assert (=> bs!755921 (= (= lt!1622432 lt!1622870) (= lambda!153480 lambda!153466))))

(declare-fun bs!755924 () Bool)

(assert (= bs!755924 (and d!1340593 b!4423204)))

(assert (=> bs!755924 (= (= lt!1622432 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153480 lambda!153430))))

(declare-fun bs!755925 () Bool)

(assert (= bs!755925 (and d!1340593 d!1340133)))

(assert (=> bs!755925 (= (= lt!1622432 lt!1622415) (= lambda!153480 lambda!153370))))

(assert (=> bs!755917 (= lambda!153480 lambda!153369)))

(declare-fun bs!755926 () Bool)

(assert (= bs!755926 (and d!1340593 d!1340401)))

(assert (=> bs!755926 (= (= lt!1622432 lt!1622116) (= lambda!153480 lambda!153439))))

(declare-fun bs!755927 () Bool)

(assert (= bs!755927 (and d!1340593 d!1340465)))

(assert (=> bs!755927 (= (= lt!1622432 lt!1622821) (= lambda!153480 lambda!153458))))

(declare-fun bs!755928 () Bool)

(assert (= bs!755928 (and d!1340593 d!1340369)))

(assert (=> bs!755928 (= (= lt!1622432 lt!1622712) (= lambda!153480 lambda!153433))))

(declare-fun bs!755929 () Bool)

(assert (= bs!755929 (and d!1340593 d!1340445)))

(assert (=> bs!755929 (= (= lt!1622432 lt!1622790) (= lambda!153480 lambda!153453))))

(assert (=> d!1340593 true))

(assert (=> d!1340593 (forall!9546 (toList!3470 lt!1622116) lambda!153480)))

(declare-fun lt!1622948 () Unit!81469)

(declare-fun choose!27902 (ListMap!2713 ListMap!2713 K!10925 V!11171) Unit!81469)

(assert (=> d!1340593 (= lt!1622948 (choose!27902 lt!1622116 lt!1622432 (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (_2!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(assert (=> d!1340593 (forall!9546 (toList!3470 (+!1066 lt!1622116 (tuple2!49343 (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (_2!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))) lambda!153480)))

(assert (=> d!1340593 (= (addForallContainsKeyThenBeforeAdding!167 lt!1622116 lt!1622432 (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (_2!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))) lt!1622948)))

(declare-fun bs!755930 () Bool)

(assert (= bs!755930 d!1340593))

(declare-fun m!5102421 () Bool)

(assert (=> bs!755930 m!5102421))

(declare-fun m!5102423 () Bool)

(assert (=> bs!755930 m!5102423))

(declare-fun m!5102425 () Bool)

(assert (=> bs!755930 m!5102425))

(declare-fun m!5102427 () Bool)

(assert (=> bs!755930 m!5102427))

(assert (=> b!4422692 d!1340593))

(assert (=> b!4422692 d!1340441))

(declare-fun d!1340595 () Bool)

(assert (=> d!1340595 (dynLambda!20838 lambda!153369 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))

(declare-fun lt!1622951 () Unit!81469)

(declare-fun choose!27903 (List!49684 Int tuple2!49342) Unit!81469)

(assert (=> d!1340595 (= lt!1622951 (choose!27903 (toList!3470 lt!1622414) lambda!153369 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))

(declare-fun e!2754255 () Bool)

(assert (=> d!1340595 e!2754255))

(declare-fun res!1828473 () Bool)

(assert (=> d!1340595 (=> (not res!1828473) (not e!2754255))))

(assert (=> d!1340595 (= res!1828473 (forall!9546 (toList!3470 lt!1622414) lambda!153369))))

(assert (=> d!1340595 (= (forallContained!2083 (toList!3470 lt!1622414) lambda!153369 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622951)))

(declare-fun b!4423502 () Bool)

(assert (=> b!4423502 (= e!2754255 (contains!12055 (toList!3470 lt!1622414) (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))

(assert (= (and d!1340595 res!1828473) b!4423502))

(declare-fun b_lambda!142833 () Bool)

(assert (=> (not b_lambda!142833) (not d!1340595)))

(declare-fun m!5102429 () Bool)

(assert (=> d!1340595 m!5102429))

(declare-fun m!5102431 () Bool)

(assert (=> d!1340595 m!5102431))

(assert (=> d!1340595 m!5100975))

(declare-fun m!5102433 () Bool)

(assert (=> b!4423502 m!5102433))

(assert (=> b!4422692 d!1340595))

(declare-fun d!1340597 () Bool)

(declare-fun res!1828474 () Bool)

(declare-fun e!2754256 () Bool)

(assert (=> d!1340597 (=> res!1828474 e!2754256)))

(assert (=> d!1340597 (= res!1828474 ((_ is Nil!49560) (_2!27966 (h!55240 (toList!3469 lm!1616)))))))

(assert (=> d!1340597 (= (forall!9546 (_2!27966 (h!55240 (toList!3469 lm!1616))) lambda!153369) e!2754256)))

(declare-fun b!4423503 () Bool)

(declare-fun e!2754257 () Bool)

(assert (=> b!4423503 (= e!2754256 e!2754257)))

(declare-fun res!1828475 () Bool)

(assert (=> b!4423503 (=> (not res!1828475) (not e!2754257))))

(assert (=> b!4423503 (= res!1828475 (dynLambda!20838 lambda!153369 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))

(declare-fun b!4423504 () Bool)

(assert (=> b!4423504 (= e!2754257 (forall!9546 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616)))) lambda!153369))))

(assert (= (and d!1340597 (not res!1828474)) b!4423503))

(assert (= (and b!4423503 res!1828475) b!4423504))

(declare-fun b_lambda!142835 () Bool)

(assert (=> (not b_lambda!142835) (not b!4423503)))

(assert (=> b!4423503 m!5102429))

(assert (=> b!4423504 m!5100983))

(assert (=> b!4422692 d!1340597))

(declare-fun bs!755931 () Bool)

(declare-fun b!4423509 () Bool)

(assert (= bs!755931 (and b!4423509 b!4423304)))

(declare-fun lambda!153481 () Int)

(assert (=> bs!755931 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153481 lambda!153451))))

(declare-fun bs!755932 () Bool)

(assert (= bs!755932 (and b!4423509 b!4423341)))

(assert (=> bs!755932 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (= lambda!153481 lambda!153455))))

(declare-fun bs!755933 () Bool)

(assert (= bs!755933 (and b!4423509 b!4422695)))

(assert (=> bs!755933 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622116) (= lambda!153481 lambda!153367))))

(declare-fun bs!755934 () Bool)

(assert (= bs!755934 (and b!4423509 b!4423307)))

(assert (=> bs!755934 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153481 lambda!153450))))

(declare-fun bs!755935 () Bool)

(assert (= bs!755935 (and b!4423509 b!4422692)))

(assert (=> bs!755935 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622116) (= lambda!153481 lambda!153368))))

(declare-fun bs!755936 () Bool)

(assert (= bs!755936 (and b!4423509 b!4423201)))

(assert (=> bs!755936 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153481 lambda!153431))))

(declare-fun bs!755937 () Bool)

(assert (= bs!755937 (and b!4423509 b!4423338)))

(assert (=> bs!755937 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622838) (= lambda!153481 lambda!153457))))

(declare-fun bs!755938 () Bool)

(assert (= bs!755938 (and b!4423509 d!1340041)))

(assert (=> bs!755938 (not (= lambda!153481 lambda!153276))))

(declare-fun bs!755939 () Bool)

(assert (= bs!755939 (and b!4423509 d!1340477)))

(assert (=> bs!755939 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622853) (= lambda!153481 lambda!153467))))

(declare-fun bs!755940 () Bool)

(assert (= bs!755940 (and b!4423509 b!4423367)))

(assert (=> bs!755940 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616))))) (= lambda!153481 lambda!153464))))

(assert (=> bs!755931 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622807) (= lambda!153481 lambda!153452))))

(assert (=> bs!755937 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (= lambda!153481 lambda!153456))))

(assert (=> bs!755936 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622729) (= lambda!153481 lambda!153432))))

(declare-fun bs!755941 () Bool)

(assert (= bs!755941 (and b!4423509 b!4423364)))

(assert (=> bs!755941 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622870) (= lambda!153481 lambda!153466))))

(declare-fun bs!755942 () Bool)

(assert (= bs!755942 (and b!4423509 b!4423204)))

(assert (=> bs!755942 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153481 lambda!153430))))

(declare-fun bs!755943 () Bool)

(assert (= bs!755943 (and b!4423509 d!1340133)))

(assert (=> bs!755943 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622415) (= lambda!153481 lambda!153370))))

(assert (=> bs!755935 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622432) (= lambda!153481 lambda!153369))))

(declare-fun bs!755944 () Bool)

(assert (= bs!755944 (and b!4423509 d!1340401)))

(assert (=> bs!755944 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622116) (= lambda!153481 lambda!153439))))

(declare-fun bs!755945 () Bool)

(assert (= bs!755945 (and b!4423509 d!1340465)))

(assert (=> bs!755945 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622821) (= lambda!153481 lambda!153458))))

(declare-fun bs!755946 () Bool)

(assert (= bs!755946 (and b!4423509 d!1340593)))

(assert (=> bs!755946 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622432) (= lambda!153481 lambda!153480))))

(assert (=> bs!755941 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616))))) (= lambda!153481 lambda!153465))))

(declare-fun bs!755947 () Bool)

(assert (= bs!755947 (and b!4423509 d!1340369)))

(assert (=> bs!755947 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622712) (= lambda!153481 lambda!153433))))

(declare-fun bs!755948 () Bool)

(assert (= bs!755948 (and b!4423509 d!1340445)))

(assert (=> bs!755948 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622790) (= lambda!153481 lambda!153453))))

(assert (=> b!4423509 true))

(declare-fun bs!755949 () Bool)

(declare-fun b!4423506 () Bool)

(assert (= bs!755949 (and b!4423506 b!4423304)))

(declare-fun lambda!153482 () Int)

(assert (=> bs!755949 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153482 lambda!153451))))

(declare-fun bs!755950 () Bool)

(assert (= bs!755950 (and b!4423506 b!4423341)))

(assert (=> bs!755950 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (= lambda!153482 lambda!153455))))

(declare-fun bs!755951 () Bool)

(assert (= bs!755951 (and b!4423506 b!4422695)))

(assert (=> bs!755951 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622116) (= lambda!153482 lambda!153367))))

(declare-fun bs!755952 () Bool)

(assert (= bs!755952 (and b!4423506 b!4423307)))

(assert (=> bs!755952 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153482 lambda!153450))))

(declare-fun bs!755953 () Bool)

(assert (= bs!755953 (and b!4423506 b!4422692)))

(assert (=> bs!755953 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622116) (= lambda!153482 lambda!153368))))

(declare-fun bs!755954 () Bool)

(assert (= bs!755954 (and b!4423506 b!4423201)))

(assert (=> bs!755954 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153482 lambda!153431))))

(declare-fun bs!755955 () Bool)

(assert (= bs!755955 (and b!4423506 b!4423338)))

(assert (=> bs!755955 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622838) (= lambda!153482 lambda!153457))))

(declare-fun bs!755956 () Bool)

(assert (= bs!755956 (and b!4423506 d!1340041)))

(assert (=> bs!755956 (not (= lambda!153482 lambda!153276))))

(declare-fun bs!755957 () Bool)

(assert (= bs!755957 (and b!4423506 d!1340477)))

(assert (=> bs!755957 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622853) (= lambda!153482 lambda!153467))))

(declare-fun bs!755958 () Bool)

(assert (= bs!755958 (and b!4423506 b!4423367)))

(assert (=> bs!755958 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616))))) (= lambda!153482 lambda!153464))))

(assert (=> bs!755949 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622807) (= lambda!153482 lambda!153452))))

(assert (=> bs!755955 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (= lambda!153482 lambda!153456))))

(assert (=> bs!755954 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622729) (= lambda!153482 lambda!153432))))

(declare-fun bs!755959 () Bool)

(assert (= bs!755959 (and b!4423506 b!4423364)))

(assert (=> bs!755959 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622870) (= lambda!153482 lambda!153466))))

(declare-fun bs!755960 () Bool)

(assert (= bs!755960 (and b!4423506 b!4423204)))

(assert (=> bs!755960 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153482 lambda!153430))))

(assert (=> bs!755953 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622432) (= lambda!153482 lambda!153369))))

(declare-fun bs!755961 () Bool)

(assert (= bs!755961 (and b!4423506 d!1340401)))

(assert (=> bs!755961 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622116) (= lambda!153482 lambda!153439))))

(declare-fun bs!755962 () Bool)

(assert (= bs!755962 (and b!4423506 d!1340465)))

(assert (=> bs!755962 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622821) (= lambda!153482 lambda!153458))))

(declare-fun bs!755963 () Bool)

(assert (= bs!755963 (and b!4423506 d!1340593)))

(assert (=> bs!755963 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622432) (= lambda!153482 lambda!153480))))

(assert (=> bs!755959 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616))))) (= lambda!153482 lambda!153465))))

(declare-fun bs!755964 () Bool)

(assert (= bs!755964 (and b!4423506 d!1340369)))

(assert (=> bs!755964 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622712) (= lambda!153482 lambda!153433))))

(declare-fun bs!755965 () Bool)

(assert (= bs!755965 (and b!4423506 d!1340445)))

(assert (=> bs!755965 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622790) (= lambda!153482 lambda!153453))))

(declare-fun bs!755966 () Bool)

(assert (= bs!755966 (and b!4423506 d!1340133)))

(assert (=> bs!755966 (= (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622415) (= lambda!153482 lambda!153370))))

(declare-fun bs!755967 () Bool)

(assert (= bs!755967 (and b!4423506 b!4423509)))

(assert (=> bs!755967 (= lambda!153482 lambda!153481)))

(assert (=> b!4423506 true))

(declare-fun lambda!153483 () Int)

(declare-fun lt!1622971 () ListMap!2713)

(assert (=> bs!755949 (= (= lt!1622971 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153483 lambda!153451))))

(assert (=> b!4423506 (= (= lt!1622971 (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))) (= lambda!153483 lambda!153482))))

(assert (=> bs!755950 (= (= lt!1622971 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (= lambda!153483 lambda!153455))))

(assert (=> bs!755951 (= (= lt!1622971 lt!1622116) (= lambda!153483 lambda!153367))))

(assert (=> bs!755952 (= (= lt!1622971 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153483 lambda!153450))))

(assert (=> bs!755953 (= (= lt!1622971 lt!1622116) (= lambda!153483 lambda!153368))))

(assert (=> bs!755954 (= (= lt!1622971 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153483 lambda!153431))))

(assert (=> bs!755955 (= (= lt!1622971 lt!1622838) (= lambda!153483 lambda!153457))))

(assert (=> bs!755956 (not (= lambda!153483 lambda!153276))))

(assert (=> bs!755957 (= (= lt!1622971 lt!1622853) (= lambda!153483 lambda!153467))))

(assert (=> bs!755958 (= (= lt!1622971 (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616))))) (= lambda!153483 lambda!153464))))

(assert (=> bs!755949 (= (= lt!1622971 lt!1622807) (= lambda!153483 lambda!153452))))

(assert (=> bs!755955 (= (= lt!1622971 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (= lambda!153483 lambda!153456))))

(assert (=> bs!755954 (= (= lt!1622971 lt!1622729) (= lambda!153483 lambda!153432))))

(assert (=> bs!755959 (= (= lt!1622971 lt!1622870) (= lambda!153483 lambda!153466))))

(assert (=> bs!755960 (= (= lt!1622971 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153483 lambda!153430))))

(assert (=> bs!755953 (= (= lt!1622971 lt!1622432) (= lambda!153483 lambda!153369))))

(assert (=> bs!755961 (= (= lt!1622971 lt!1622116) (= lambda!153483 lambda!153439))))

(assert (=> bs!755962 (= (= lt!1622971 lt!1622821) (= lambda!153483 lambda!153458))))

(assert (=> bs!755963 (= (= lt!1622971 lt!1622432) (= lambda!153483 lambda!153480))))

(assert (=> bs!755959 (= (= lt!1622971 (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616))))) (= lambda!153483 lambda!153465))))

(assert (=> bs!755964 (= (= lt!1622971 lt!1622712) (= lambda!153483 lambda!153433))))

(assert (=> bs!755965 (= (= lt!1622971 lt!1622790) (= lambda!153483 lambda!153453))))

(assert (=> bs!755966 (= (= lt!1622971 lt!1622415) (= lambda!153483 lambda!153370))))

(assert (=> bs!755967 (= (= lt!1622971 (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))) (= lambda!153483 lambda!153481))))

(assert (=> b!4423506 true))

(declare-fun bs!755968 () Bool)

(declare-fun d!1340599 () Bool)

(assert (= bs!755968 (and d!1340599 b!4423304)))

(declare-fun lt!1622954 () ListMap!2713)

(declare-fun lambda!153484 () Int)

(assert (=> bs!755968 (= (= lt!1622954 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153484 lambda!153451))))

(declare-fun bs!755969 () Bool)

(assert (= bs!755969 (and d!1340599 b!4423506)))

(assert (=> bs!755969 (= (= lt!1622954 (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))) (= lambda!153484 lambda!153482))))

(declare-fun bs!755970 () Bool)

(assert (= bs!755970 (and d!1340599 b!4423341)))

(assert (=> bs!755970 (= (= lt!1622954 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (= lambda!153484 lambda!153455))))

(declare-fun bs!755971 () Bool)

(assert (= bs!755971 (and d!1340599 b!4422695)))

(assert (=> bs!755971 (= (= lt!1622954 lt!1622116) (= lambda!153484 lambda!153367))))

(declare-fun bs!755972 () Bool)

(assert (= bs!755972 (and d!1340599 b!4423307)))

(assert (=> bs!755972 (= (= lt!1622954 (extractMap!802 (t!356623 (toList!3469 lt!1622117)))) (= lambda!153484 lambda!153450))))

(declare-fun bs!755973 () Bool)

(assert (= bs!755973 (and d!1340599 b!4422692)))

(assert (=> bs!755973 (= (= lt!1622954 lt!1622116) (= lambda!153484 lambda!153368))))

(declare-fun bs!755974 () Bool)

(assert (= bs!755974 (and d!1340599 b!4423201)))

(assert (=> bs!755974 (= (= lt!1622954 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153484 lambda!153431))))

(declare-fun bs!755975 () Bool)

(assert (= bs!755975 (and d!1340599 b!4423338)))

(assert (=> bs!755975 (= (= lt!1622954 lt!1622838) (= lambda!153484 lambda!153457))))

(declare-fun bs!755976 () Bool)

(assert (= bs!755976 (and d!1340599 d!1340477)))

(assert (=> bs!755976 (= (= lt!1622954 lt!1622853) (= lambda!153484 lambda!153467))))

(declare-fun bs!755977 () Bool)

(assert (= bs!755977 (and d!1340599 b!4423367)))

(assert (=> bs!755977 (= (= lt!1622954 (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616))))) (= lambda!153484 lambda!153464))))

(assert (=> bs!755968 (= (= lt!1622954 lt!1622807) (= lambda!153484 lambda!153452))))

(assert (=> bs!755975 (= (= lt!1622954 (extractMap!802 (t!356623 (toList!3469 (+!1067 lt!1622117 lt!1622124))))) (= lambda!153484 lambda!153456))))

(assert (=> bs!755974 (= (= lt!1622954 lt!1622729) (= lambda!153484 lambda!153432))))

(declare-fun bs!755978 () Bool)

(assert (= bs!755978 (and d!1340599 b!4423364)))

(assert (=> bs!755978 (= (= lt!1622954 lt!1622870) (= lambda!153484 lambda!153466))))

(declare-fun bs!755979 () Bool)

(assert (= bs!755979 (and d!1340599 b!4423204)))

(assert (=> bs!755979 (= (= lt!1622954 (extractMap!802 (t!356623 (toList!3469 lm!1616)))) (= lambda!153484 lambda!153430))))

(assert (=> bs!755973 (= (= lt!1622954 lt!1622432) (= lambda!153484 lambda!153369))))

(declare-fun bs!755980 () Bool)

(assert (= bs!755980 (and d!1340599 d!1340401)))

(assert (=> bs!755980 (= (= lt!1622954 lt!1622116) (= lambda!153484 lambda!153439))))

(declare-fun bs!755981 () Bool)

(assert (= bs!755981 (and d!1340599 d!1340465)))

(assert (=> bs!755981 (= (= lt!1622954 lt!1622821) (= lambda!153484 lambda!153458))))

(declare-fun bs!755982 () Bool)

(assert (= bs!755982 (and d!1340599 d!1340041)))

(assert (=> bs!755982 (not (= lambda!153484 lambda!153276))))

(assert (=> bs!755969 (= (= lt!1622954 lt!1622971) (= lambda!153484 lambda!153483))))

(declare-fun bs!755983 () Bool)

(assert (= bs!755983 (and d!1340599 d!1340593)))

(assert (=> bs!755983 (= (= lt!1622954 lt!1622432) (= lambda!153484 lambda!153480))))

(assert (=> bs!755978 (= (= lt!1622954 (extractMap!802 (t!356623 (tail!7255 (toList!3469 lm!1616))))) (= lambda!153484 lambda!153465))))

(declare-fun bs!755984 () Bool)

(assert (= bs!755984 (and d!1340599 d!1340369)))

(assert (=> bs!755984 (= (= lt!1622954 lt!1622712) (= lambda!153484 lambda!153433))))

(declare-fun bs!755985 () Bool)

(assert (= bs!755985 (and d!1340599 d!1340445)))

(assert (=> bs!755985 (= (= lt!1622954 lt!1622790) (= lambda!153484 lambda!153453))))

(declare-fun bs!755986 () Bool)

(assert (= bs!755986 (and d!1340599 d!1340133)))

(assert (=> bs!755986 (= (= lt!1622954 lt!1622415) (= lambda!153484 lambda!153370))))

(declare-fun bs!755987 () Bool)

(assert (= bs!755987 (and d!1340599 b!4423509)))

(assert (=> bs!755987 (= (= lt!1622954 (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))) (= lambda!153484 lambda!153481))))

(assert (=> d!1340599 true))

(declare-fun e!2754258 () Bool)

(declare-fun b!4423505 () Bool)

(assert (=> b!4423505 (= e!2754258 (forall!9546 (toList!3470 (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))) lambda!153483))))

(declare-fun e!2754259 () ListMap!2713)

(assert (=> b!4423506 (= e!2754259 lt!1622971)))

(declare-fun lt!1622953 () ListMap!2713)

(assert (=> b!4423506 (= lt!1622953 (+!1066 (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (h!55239 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(assert (=> b!4423506 (= lt!1622971 (addToMapMapFromBucket!378 (t!356622 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (+!1066 (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (h!55239 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))))

(declare-fun lt!1622958 () Unit!81469)

(declare-fun call!307759 () Unit!81469)

(assert (=> b!4423506 (= lt!1622958 call!307759)))

(assert (=> b!4423506 (forall!9546 (toList!3470 (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))) lambda!153482)))

(declare-fun lt!1622965 () Unit!81469)

(assert (=> b!4423506 (= lt!1622965 lt!1622958)))

(assert (=> b!4423506 (forall!9546 (toList!3470 lt!1622953) lambda!153483)))

(declare-fun lt!1622970 () Unit!81469)

(declare-fun Unit!81642 () Unit!81469)

(assert (=> b!4423506 (= lt!1622970 Unit!81642)))

(assert (=> b!4423506 (forall!9546 (t!356622 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lambda!153483)))

(declare-fun lt!1622967 () Unit!81469)

(declare-fun Unit!81643 () Unit!81469)

(assert (=> b!4423506 (= lt!1622967 Unit!81643)))

(declare-fun lt!1622960 () Unit!81469)

(declare-fun Unit!81644 () Unit!81469)

(assert (=> b!4423506 (= lt!1622960 Unit!81644)))

(declare-fun lt!1622968 () Unit!81469)

(assert (=> b!4423506 (= lt!1622968 (forallContained!2083 (toList!3470 lt!1622953) lambda!153483 (h!55239 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(assert (=> b!4423506 (contains!12050 lt!1622953 (_1!27965 (h!55239 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(declare-fun lt!1622961 () Unit!81469)

(declare-fun Unit!81645 () Unit!81469)

(assert (=> b!4423506 (= lt!1622961 Unit!81645)))

(assert (=> b!4423506 (contains!12050 lt!1622971 (_1!27965 (h!55239 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(declare-fun lt!1622952 () Unit!81469)

(declare-fun Unit!81646 () Unit!81469)

(assert (=> b!4423506 (= lt!1622952 Unit!81646)))

(assert (=> b!4423506 (forall!9546 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616)))) lambda!153483)))

(declare-fun lt!1622966 () Unit!81469)

(declare-fun Unit!81647 () Unit!81469)

(assert (=> b!4423506 (= lt!1622966 Unit!81647)))

(declare-fun call!307757 () Bool)

(assert (=> b!4423506 call!307757))

(declare-fun lt!1622972 () Unit!81469)

(declare-fun Unit!81648 () Unit!81469)

(assert (=> b!4423506 (= lt!1622972 Unit!81648)))

(declare-fun lt!1622962 () Unit!81469)

(declare-fun Unit!81649 () Unit!81469)

(assert (=> b!4423506 (= lt!1622962 Unit!81649)))

(declare-fun lt!1622969 () Unit!81469)

(assert (=> b!4423506 (= lt!1622969 (addForallContainsKeyThenBeforeAdding!167 (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622971 (_1!27965 (h!55239 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616)))))) (_2!27965 (h!55239 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))))

(assert (=> b!4423506 (forall!9546 (toList!3470 (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))) lambda!153483)))

(declare-fun lt!1622963 () Unit!81469)

(assert (=> b!4423506 (= lt!1622963 lt!1622969)))

(declare-fun call!307758 () Bool)

(assert (=> b!4423506 call!307758))

(declare-fun lt!1622964 () Unit!81469)

(declare-fun Unit!81650 () Unit!81469)

(assert (=> b!4423506 (= lt!1622964 Unit!81650)))

(declare-fun res!1828477 () Bool)

(assert (=> b!4423506 (= res!1828477 (forall!9546 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616)))) lambda!153483))))

(assert (=> b!4423506 (=> (not res!1828477) (not e!2754258))))

(assert (=> b!4423506 e!2754258))

(declare-fun lt!1622956 () Unit!81469)

(declare-fun Unit!81651 () Unit!81469)

(assert (=> b!4423506 (= lt!1622956 Unit!81651)))

(declare-fun c!752990 () Bool)

(declare-fun bm!307752 () Bool)

(assert (=> bm!307752 (= call!307757 (forall!9546 (ite c!752990 (toList!3470 (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))) (toList!3470 lt!1622953)) (ite c!752990 lambda!153481 lambda!153483)))))

(declare-fun b!4423507 () Bool)

(declare-fun e!2754260 () Bool)

(assert (=> b!4423507 (= e!2754260 (invariantList!799 (toList!3470 lt!1622954)))))

(declare-fun b!4423508 () Bool)

(declare-fun res!1828476 () Bool)

(assert (=> b!4423508 (=> (not res!1828476) (not e!2754260))))

(assert (=> b!4423508 (= res!1828476 (forall!9546 (toList!3470 (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))) lambda!153484))))

(assert (=> b!4423509 (= e!2754259 (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))

(declare-fun lt!1622959 () Unit!81469)

(assert (=> b!4423509 (= lt!1622959 call!307759)))

(assert (=> b!4423509 call!307758))

(declare-fun lt!1622957 () Unit!81469)

(assert (=> b!4423509 (= lt!1622957 lt!1622959)))

(assert (=> b!4423509 call!307757))

(declare-fun lt!1622955 () Unit!81469)

(declare-fun Unit!81652 () Unit!81469)

(assert (=> b!4423509 (= lt!1622955 Unit!81652)))

(assert (=> d!1340599 e!2754260))

(declare-fun res!1828478 () Bool)

(assert (=> d!1340599 (=> (not res!1828478) (not e!2754260))))

(assert (=> d!1340599 (= res!1828478 (forall!9546 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616)))) lambda!153484))))

(assert (=> d!1340599 (= lt!1622954 e!2754259)))

(assert (=> d!1340599 (= c!752990 ((_ is Nil!49560) (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))

(assert (=> d!1340599 (noDuplicateKeys!741 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))

(assert (=> d!1340599 (= (addToMapMapFromBucket!378 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616)))) (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))) lt!1622954)))

(declare-fun bm!307753 () Bool)

(assert (=> bm!307753 (= call!307759 (lemmaContainsAllItsOwnKeys!167 (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(declare-fun bm!307754 () Bool)

(assert (=> bm!307754 (= call!307758 (forall!9546 (toList!3470 (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))) (ite c!752990 lambda!153481 lambda!153483)))))

(assert (= (and d!1340599 c!752990) b!4423509))

(assert (= (and d!1340599 (not c!752990)) b!4423506))

(assert (= (and b!4423506 res!1828477) b!4423505))

(assert (= (or b!4423509 b!4423506) bm!307753))

(assert (= (or b!4423509 b!4423506) bm!307752))

(assert (= (or b!4423509 b!4423506) bm!307754))

(assert (= (and d!1340599 res!1828478) b!4423508))

(assert (= (and b!4423508 res!1828476) b!4423507))

(assert (=> bm!307753 m!5100969))

(declare-fun m!5102435 () Bool)

(assert (=> bm!307753 m!5102435))

(declare-fun m!5102437 () Bool)

(assert (=> b!4423506 m!5102437))

(declare-fun m!5102439 () Bool)

(assert (=> b!4423506 m!5102439))

(declare-fun m!5102441 () Bool)

(assert (=> b!4423506 m!5102441))

(declare-fun m!5102443 () Bool)

(assert (=> b!4423506 m!5102443))

(declare-fun m!5102445 () Bool)

(assert (=> b!4423506 m!5102445))

(declare-fun m!5102447 () Bool)

(assert (=> b!4423506 m!5102447))

(declare-fun m!5102449 () Bool)

(assert (=> b!4423506 m!5102449))

(declare-fun m!5102451 () Bool)

(assert (=> b!4423506 m!5102451))

(assert (=> b!4423506 m!5100969))

(assert (=> b!4423506 m!5102443))

(declare-fun m!5102453 () Bool)

(assert (=> b!4423506 m!5102453))

(assert (=> b!4423506 m!5100969))

(declare-fun m!5102455 () Bool)

(assert (=> b!4423506 m!5102455))

(assert (=> b!4423506 m!5102453))

(declare-fun m!5102457 () Bool)

(assert (=> b!4423506 m!5102457))

(declare-fun m!5102459 () Bool)

(assert (=> d!1340599 m!5102459))

(assert (=> d!1340599 m!5102383))

(declare-fun m!5102461 () Bool)

(assert (=> bm!307754 m!5102461))

(declare-fun m!5102463 () Bool)

(assert (=> bm!307752 m!5102463))

(declare-fun m!5102465 () Bool)

(assert (=> b!4423508 m!5102465))

(assert (=> b!4423505 m!5102437))

(declare-fun m!5102467 () Bool)

(assert (=> b!4423507 m!5102467))

(assert (=> b!4422692 d!1340599))

(declare-fun b!4423510 () Bool)

(declare-fun e!2754265 () Bool)

(declare-fun e!2754264 () Bool)

(assert (=> b!4423510 (= e!2754265 e!2754264)))

(declare-fun res!1828480 () Bool)

(assert (=> b!4423510 (=> (not res!1828480) (not e!2754264))))

(assert (=> b!4423510 (= res!1828480 (isDefined!8007 (getValueByKey!700 (toList!3470 lt!1622414) (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))))

(declare-fun b!4423511 () Bool)

(declare-fun e!2754262 () List!49687)

(assert (=> b!4423511 (= e!2754262 (getKeysList!247 (toList!3470 lt!1622414)))))

(declare-fun b!4423512 () Bool)

(assert (=> b!4423512 false))

(declare-fun lt!1622974 () Unit!81469)

(declare-fun lt!1622977 () Unit!81469)

(assert (=> b!4423512 (= lt!1622974 lt!1622977)))

(assert (=> b!4423512 (containsKey!1097 (toList!3470 lt!1622414) (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))

(assert (=> b!4423512 (= lt!1622977 (lemmaInGetKeysListThenContainsKey!245 (toList!3470 lt!1622414) (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(declare-fun e!2754263 () Unit!81469)

(declare-fun Unit!81653 () Unit!81469)

(assert (=> b!4423512 (= e!2754263 Unit!81653)))

(declare-fun b!4423513 () Bool)

(declare-fun e!2754266 () Bool)

(assert (=> b!4423513 (= e!2754266 (not (contains!12056 (keys!16915 lt!1622414) (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))))

(declare-fun d!1340601 () Bool)

(assert (=> d!1340601 e!2754265))

(declare-fun res!1828479 () Bool)

(assert (=> d!1340601 (=> res!1828479 e!2754265)))

(assert (=> d!1340601 (= res!1828479 e!2754266)))

(declare-fun res!1828481 () Bool)

(assert (=> d!1340601 (=> (not res!1828481) (not e!2754266))))

(declare-fun lt!1622980 () Bool)

(assert (=> d!1340601 (= res!1828481 (not lt!1622980))))

(declare-fun lt!1622973 () Bool)

(assert (=> d!1340601 (= lt!1622980 lt!1622973)))

(declare-fun lt!1622976 () Unit!81469)

(declare-fun e!2754261 () Unit!81469)

(assert (=> d!1340601 (= lt!1622976 e!2754261)))

(declare-fun c!752991 () Bool)

(assert (=> d!1340601 (= c!752991 lt!1622973)))

(assert (=> d!1340601 (= lt!1622973 (containsKey!1097 (toList!3470 lt!1622414) (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(assert (=> d!1340601 (= (contains!12050 lt!1622414 (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))) lt!1622980)))

(declare-fun b!4423514 () Bool)

(declare-fun lt!1622979 () Unit!81469)

(assert (=> b!4423514 (= e!2754261 lt!1622979)))

(declare-fun lt!1622975 () Unit!81469)

(assert (=> b!4423514 (= lt!1622975 (lemmaContainsKeyImpliesGetValueByKeyDefined!610 (toList!3470 lt!1622414) (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(assert (=> b!4423514 (isDefined!8007 (getValueByKey!700 (toList!3470 lt!1622414) (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(declare-fun lt!1622978 () Unit!81469)

(assert (=> b!4423514 (= lt!1622978 lt!1622975)))

(assert (=> b!4423514 (= lt!1622979 (lemmaInListThenGetKeysListContains!244 (toList!3470 lt!1622414) (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(declare-fun call!307760 () Bool)

(assert (=> b!4423514 call!307760))

(declare-fun b!4423515 () Bool)

(declare-fun Unit!81654 () Unit!81469)

(assert (=> b!4423515 (= e!2754263 Unit!81654)))

(declare-fun bm!307755 () Bool)

(assert (=> bm!307755 (= call!307760 (contains!12056 e!2754262 (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(declare-fun c!752993 () Bool)

(assert (=> bm!307755 (= c!752993 c!752991)))

(declare-fun b!4423516 () Bool)

(assert (=> b!4423516 (= e!2754261 e!2754263)))

(declare-fun c!752992 () Bool)

(assert (=> b!4423516 (= c!752992 call!307760)))

(declare-fun b!4423517 () Bool)

(assert (=> b!4423517 (= e!2754264 (contains!12056 (keys!16915 lt!1622414) (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(declare-fun b!4423518 () Bool)

(assert (=> b!4423518 (= e!2754262 (keys!16915 lt!1622414))))

(assert (= (and d!1340601 c!752991) b!4423514))

(assert (= (and d!1340601 (not c!752991)) b!4423516))

(assert (= (and b!4423516 c!752992) b!4423512))

(assert (= (and b!4423516 (not c!752992)) b!4423515))

(assert (= (or b!4423514 b!4423516) bm!307755))

(assert (= (and bm!307755 c!752993) b!4423511))

(assert (= (and bm!307755 (not c!752993)) b!4423518))

(assert (= (and d!1340601 res!1828481) b!4423513))

(assert (= (and d!1340601 (not res!1828479)) b!4423510))

(assert (= (and b!4423510 res!1828480) b!4423517))

(declare-fun m!5102469 () Bool)

(assert (=> b!4423510 m!5102469))

(assert (=> b!4423510 m!5102469))

(declare-fun m!5102471 () Bool)

(assert (=> b!4423510 m!5102471))

(declare-fun m!5102473 () Bool)

(assert (=> b!4423511 m!5102473))

(declare-fun m!5102475 () Bool)

(assert (=> b!4423513 m!5102475))

(assert (=> b!4423513 m!5102475))

(declare-fun m!5102477 () Bool)

(assert (=> b!4423513 m!5102477))

(declare-fun m!5102479 () Bool)

(assert (=> b!4423512 m!5102479))

(declare-fun m!5102481 () Bool)

(assert (=> b!4423512 m!5102481))

(assert (=> b!4423517 m!5102475))

(assert (=> b!4423517 m!5102475))

(assert (=> b!4423517 m!5102477))

(assert (=> b!4423518 m!5102475))

(declare-fun m!5102483 () Bool)

(assert (=> bm!307755 m!5102483))

(assert (=> d!1340601 m!5102479))

(declare-fun m!5102485 () Bool)

(assert (=> b!4423514 m!5102485))

(assert (=> b!4423514 m!5102469))

(assert (=> b!4423514 m!5102469))

(assert (=> b!4423514 m!5102471))

(declare-fun m!5102487 () Bool)

(assert (=> b!4423514 m!5102487))

(assert (=> b!4422692 d!1340601))

(declare-fun d!1340603 () Bool)

(declare-fun res!1828482 () Bool)

(declare-fun e!2754267 () Bool)

(assert (=> d!1340603 (=> res!1828482 e!2754267)))

(assert (=> d!1340603 (= res!1828482 ((_ is Nil!49560) (toList!3470 lt!1622116)))))

(assert (=> d!1340603 (= (forall!9546 (toList!3470 lt!1622116) lambda!153368) e!2754267)))

(declare-fun b!4423519 () Bool)

(declare-fun e!2754268 () Bool)

(assert (=> b!4423519 (= e!2754267 e!2754268)))

(declare-fun res!1828483 () Bool)

(assert (=> b!4423519 (=> (not res!1828483) (not e!2754268))))

(assert (=> b!4423519 (= res!1828483 (dynLambda!20838 lambda!153368 (h!55239 (toList!3470 lt!1622116))))))

(declare-fun b!4423520 () Bool)

(assert (=> b!4423520 (= e!2754268 (forall!9546 (t!356622 (toList!3470 lt!1622116)) lambda!153368))))

(assert (= (and d!1340603 (not res!1828482)) b!4423519))

(assert (= (and b!4423519 res!1828483) b!4423520))

(declare-fun b_lambda!142837 () Bool)

(assert (=> (not b_lambda!142837) (not b!4423519)))

(declare-fun m!5102489 () Bool)

(assert (=> b!4423519 m!5102489))

(declare-fun m!5102491 () Bool)

(assert (=> b!4423520 m!5102491))

(assert (=> b!4422692 d!1340603))

(declare-fun d!1340605 () Bool)

(declare-fun res!1828484 () Bool)

(declare-fun e!2754269 () Bool)

(assert (=> d!1340605 (=> res!1828484 e!2754269)))

(assert (=> d!1340605 (= res!1828484 ((_ is Nil!49560) (toList!3470 lt!1622414)))))

(assert (=> d!1340605 (= (forall!9546 (toList!3470 lt!1622414) lambda!153369) e!2754269)))

(declare-fun b!4423521 () Bool)

(declare-fun e!2754270 () Bool)

(assert (=> b!4423521 (= e!2754269 e!2754270)))

(declare-fun res!1828485 () Bool)

(assert (=> b!4423521 (=> (not res!1828485) (not e!2754270))))

(assert (=> b!4423521 (= res!1828485 (dynLambda!20838 lambda!153369 (h!55239 (toList!3470 lt!1622414))))))

(declare-fun b!4423522 () Bool)

(assert (=> b!4423522 (= e!2754270 (forall!9546 (t!356622 (toList!3470 lt!1622414)) lambda!153369))))

(assert (= (and d!1340605 (not res!1828484)) b!4423521))

(assert (= (and b!4423521 res!1828485) b!4423522))

(declare-fun b_lambda!142839 () Bool)

(assert (=> (not b_lambda!142839) (not b!4423521)))

(declare-fun m!5102493 () Bool)

(assert (=> b!4423521 m!5102493))

(declare-fun m!5102495 () Bool)

(assert (=> b!4423522 m!5102495))

(assert (=> b!4422692 d!1340605))

(declare-fun d!1340607 () Bool)

(declare-fun res!1828486 () Bool)

(declare-fun e!2754271 () Bool)

(assert (=> d!1340607 (=> res!1828486 e!2754271)))

(assert (=> d!1340607 (= res!1828486 ((_ is Nil!49560) (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))

(assert (=> d!1340607 (= (forall!9546 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616)))) lambda!153369) e!2754271)))

(declare-fun b!4423523 () Bool)

(declare-fun e!2754272 () Bool)

(assert (=> b!4423523 (= e!2754271 e!2754272)))

(declare-fun res!1828487 () Bool)

(assert (=> b!4423523 (=> (not res!1828487) (not e!2754272))))

(assert (=> b!4423523 (= res!1828487 (dynLambda!20838 lambda!153369 (h!55239 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(declare-fun b!4423524 () Bool)

(assert (=> b!4423524 (= e!2754272 (forall!9546 (t!356622 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lambda!153369))))

(assert (= (and d!1340607 (not res!1828486)) b!4423523))

(assert (= (and b!4423523 res!1828487) b!4423524))

(declare-fun b_lambda!142841 () Bool)

(assert (=> (not b_lambda!142841) (not b!4423523)))

(declare-fun m!5102497 () Bool)

(assert (=> b!4423523 m!5102497))

(declare-fun m!5102499 () Bool)

(assert (=> b!4423524 m!5102499))

(assert (=> b!4422692 d!1340607))

(declare-fun d!1340609 () Bool)

(declare-fun e!2754273 () Bool)

(assert (=> d!1340609 e!2754273))

(declare-fun res!1828489 () Bool)

(assert (=> d!1340609 (=> (not res!1828489) (not e!2754273))))

(declare-fun lt!1622984 () ListMap!2713)

(assert (=> d!1340609 (= res!1828489 (contains!12050 lt!1622984 (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(declare-fun lt!1622981 () List!49684)

(assert (=> d!1340609 (= lt!1622984 (ListMap!2714 lt!1622981))))

(declare-fun lt!1622983 () Unit!81469)

(declare-fun lt!1622982 () Unit!81469)

(assert (=> d!1340609 (= lt!1622983 lt!1622982)))

(assert (=> d!1340609 (= (getValueByKey!700 lt!1622981 (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))) (Some!10713 (_2!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(assert (=> d!1340609 (= lt!1622982 (lemmaContainsTupThenGetReturnValue!435 lt!1622981 (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (_2!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(assert (=> d!1340609 (= lt!1622981 (insertNoDuplicatedKeys!189 (toList!3470 lt!1622116) (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (_2!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(assert (=> d!1340609 (= (+!1066 lt!1622116 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) lt!1622984)))

(declare-fun b!4423525 () Bool)

(declare-fun res!1828488 () Bool)

(assert (=> b!4423525 (=> (not res!1828488) (not e!2754273))))

(assert (=> b!4423525 (= res!1828488 (= (getValueByKey!700 (toList!3470 lt!1622984) (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))) (Some!10713 (_2!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))))

(declare-fun b!4423526 () Bool)

(assert (=> b!4423526 (= e!2754273 (contains!12055 (toList!3470 lt!1622984) (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))

(assert (= (and d!1340609 res!1828489) b!4423525))

(assert (= (and b!4423525 res!1828488) b!4423526))

(declare-fun m!5102501 () Bool)

(assert (=> d!1340609 m!5102501))

(declare-fun m!5102503 () Bool)

(assert (=> d!1340609 m!5102503))

(declare-fun m!5102505 () Bool)

(assert (=> d!1340609 m!5102505))

(declare-fun m!5102507 () Bool)

(assert (=> d!1340609 m!5102507))

(declare-fun m!5102509 () Bool)

(assert (=> b!4423525 m!5102509))

(declare-fun m!5102511 () Bool)

(assert (=> b!4423526 m!5102511))

(assert (=> b!4422692 d!1340609))

(declare-fun d!1340611 () Bool)

(assert (=> d!1340611 (isDefined!8007 (getValueByKey!700 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) key!3717))))

(declare-fun lt!1622985 () Unit!81469)

(assert (=> d!1340611 (= lt!1622985 (choose!27899 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) key!3717))))

(assert (=> d!1340611 (invariantList!799 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))))))

(assert (=> d!1340611 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!610 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) key!3717) lt!1622985)))

(declare-fun bs!755988 () Bool)

(assert (= bs!755988 d!1340611))

(assert (=> bs!755988 m!5100831))

(assert (=> bs!755988 m!5100831))

(assert (=> bs!755988 m!5100833))

(declare-fun m!5102513 () Bool)

(assert (=> bs!755988 m!5102513))

(assert (=> bs!755988 m!5102099))

(assert (=> b!4422624 d!1340611))

(assert (=> b!4422624 d!1340243))

(assert (=> b!4422624 d!1340245))

(declare-fun d!1340613 () Bool)

(assert (=> d!1340613 (contains!12056 (getKeysList!247 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616))))) key!3717)))

(declare-fun lt!1622986 () Unit!81469)

(assert (=> d!1340613 (= lt!1622986 (choose!27900 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) key!3717))))

(assert (=> d!1340613 (invariantList!799 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))))))

(assert (=> d!1340613 (= (lemmaInListThenGetKeysListContains!244 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) key!3717) lt!1622986)))

(declare-fun bs!755989 () Bool)

(assert (= bs!755989 d!1340613))

(assert (=> bs!755989 m!5100835))

(assert (=> bs!755989 m!5100835))

(declare-fun m!5102515 () Bool)

(assert (=> bs!755989 m!5102515))

(declare-fun m!5102517 () Bool)

(assert (=> bs!755989 m!5102517))

(assert (=> bs!755989 m!5102099))

(assert (=> b!4422624 d!1340613))

(declare-fun d!1340615 () Bool)

(declare-fun lt!1622989 () Bool)

(assert (=> d!1340615 (= lt!1622989 (select (content!7944 (toList!3470 lt!1622229)) (tuple2!49343 key!3717 newValue!93)))))

(declare-fun e!2754278 () Bool)

(assert (=> d!1340615 (= lt!1622989 e!2754278)))

(declare-fun res!1828495 () Bool)

(assert (=> d!1340615 (=> (not res!1828495) (not e!2754278))))

(assert (=> d!1340615 (= res!1828495 ((_ is Cons!49560) (toList!3470 lt!1622229)))))

(assert (=> d!1340615 (= (contains!12055 (toList!3470 lt!1622229) (tuple2!49343 key!3717 newValue!93)) lt!1622989)))

(declare-fun b!4423531 () Bool)

(declare-fun e!2754279 () Bool)

(assert (=> b!4423531 (= e!2754278 e!2754279)))

(declare-fun res!1828494 () Bool)

(assert (=> b!4423531 (=> res!1828494 e!2754279)))

(assert (=> b!4423531 (= res!1828494 (= (h!55239 (toList!3470 lt!1622229)) (tuple2!49343 key!3717 newValue!93)))))

(declare-fun b!4423532 () Bool)

(assert (=> b!4423532 (= e!2754279 (contains!12055 (t!356622 (toList!3470 lt!1622229)) (tuple2!49343 key!3717 newValue!93)))))

(assert (= (and d!1340615 res!1828495) b!4423531))

(assert (= (and b!4423531 (not res!1828494)) b!4423532))

(declare-fun m!5102519 () Bool)

(assert (=> d!1340615 m!5102519))

(declare-fun m!5102521 () Bool)

(assert (=> d!1340615 m!5102521))

(declare-fun m!5102523 () Bool)

(assert (=> b!4423532 m!5102523))

(assert (=> b!4422561 d!1340615))

(declare-fun d!1340617 () Bool)

(declare-fun lt!1622990 () Bool)

(assert (=> d!1340617 (= lt!1622990 (select (content!7945 e!2753697) key!3717))))

(declare-fun e!2754280 () Bool)

(assert (=> d!1340617 (= lt!1622990 e!2754280)))

(declare-fun res!1828496 () Bool)

(assert (=> d!1340617 (=> (not res!1828496) (not e!2754280))))

(assert (=> d!1340617 (= res!1828496 ((_ is Cons!49563) e!2753697))))

(assert (=> d!1340617 (= (contains!12056 e!2753697 key!3717) lt!1622990)))

(declare-fun b!4423533 () Bool)

(declare-fun e!2754281 () Bool)

(assert (=> b!4423533 (= e!2754280 e!2754281)))

(declare-fun res!1828497 () Bool)

(assert (=> b!4423533 (=> res!1828497 e!2754281)))

(assert (=> b!4423533 (= res!1828497 (= (h!55244 e!2753697) key!3717))))

(declare-fun b!4423534 () Bool)

(assert (=> b!4423534 (= e!2754281 (contains!12056 (t!356625 e!2753697) key!3717))))

(assert (= (and d!1340617 res!1828496) b!4423533))

(assert (= (and b!4423533 (not res!1828497)) b!4423534))

(declare-fun m!5102525 () Bool)

(assert (=> d!1340617 m!5102525))

(declare-fun m!5102527 () Bool)

(assert (=> d!1340617 m!5102527))

(declare-fun m!5102529 () Bool)

(assert (=> b!4423534 m!5102529))

(assert (=> bm!307650 d!1340617))

(assert (=> b!4422622 d!1340255))

(declare-fun d!1340619 () Bool)

(assert (=> d!1340619 (containsKey!1097 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) key!3717)))

(declare-fun lt!1622991 () Unit!81469)

(assert (=> d!1340619 (= lt!1622991 (choose!27898 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) key!3717))))

(assert (=> d!1340619 (invariantList!799 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))))))

(assert (=> d!1340619 (= (lemmaInGetKeysListThenContainsKey!245 (toList!3470 (extractMap!802 (tail!7255 (toList!3469 lm!1616)))) key!3717) lt!1622991)))

(declare-fun bs!755990 () Bool)

(assert (= bs!755990 d!1340619))

(assert (=> bs!755990 m!5100843))

(declare-fun m!5102531 () Bool)

(assert (=> bs!755990 m!5102531))

(assert (=> bs!755990 m!5102099))

(assert (=> b!4422622 d!1340619))

(declare-fun d!1340621 () Bool)

(declare-fun c!752994 () Bool)

(assert (=> d!1340621 (= c!752994 ((_ is Nil!49560) (toList!3470 lt!1622123)))))

(declare-fun e!2754282 () (InoxSet tuple2!49342))

(assert (=> d!1340621 (= (content!7944 (toList!3470 lt!1622123)) e!2754282)))

(declare-fun b!4423535 () Bool)

(assert (=> b!4423535 (= e!2754282 ((as const (Array tuple2!49342 Bool)) false))))

(declare-fun b!4423536 () Bool)

(assert (=> b!4423536 (= e!2754282 ((_ map or) (store ((as const (Array tuple2!49342 Bool)) false) (h!55239 (toList!3470 lt!1622123)) true) (content!7944 (t!356622 (toList!3470 lt!1622123)))))))

(assert (= (and d!1340621 c!752994) b!4423535))

(assert (= (and d!1340621 (not c!752994)) b!4423536))

(declare-fun m!5102533 () Bool)

(assert (=> b!4423536 m!5102533))

(declare-fun m!5102535 () Bool)

(assert (=> b!4423536 m!5102535))

(assert (=> d!1340115 d!1340621))

(declare-fun c!752995 () Bool)

(declare-fun d!1340623 () Bool)

(assert (=> d!1340623 (= c!752995 ((_ is Nil!49560) (toList!3470 (+!1066 lt!1622116 (tuple2!49343 key!3717 newValue!93)))))))

(declare-fun e!2754283 () (InoxSet tuple2!49342))

(assert (=> d!1340623 (= (content!7944 (toList!3470 (+!1066 lt!1622116 (tuple2!49343 key!3717 newValue!93)))) e!2754283)))

(declare-fun b!4423537 () Bool)

(assert (=> b!4423537 (= e!2754283 ((as const (Array tuple2!49342 Bool)) false))))

(declare-fun b!4423538 () Bool)

(assert (=> b!4423538 (= e!2754283 ((_ map or) (store ((as const (Array tuple2!49342 Bool)) false) (h!55239 (toList!3470 (+!1066 lt!1622116 (tuple2!49343 key!3717 newValue!93)))) true) (content!7944 (t!356622 (toList!3470 (+!1066 lt!1622116 (tuple2!49343 key!3717 newValue!93)))))))))

(assert (= (and d!1340623 c!752995) b!4423537))

(assert (= (and d!1340623 (not c!752995)) b!4423538))

(declare-fun m!5102537 () Bool)

(assert (=> b!4423538 m!5102537))

(declare-fun m!5102539 () Bool)

(assert (=> b!4423538 m!5102539))

(assert (=> d!1340115 d!1340623))

(assert (=> b!4422638 d!1340409))

(assert (=> b!4422638 d!1340411))

(declare-fun b!4423539 () Bool)

(declare-fun tp!1333099 () Bool)

(declare-fun e!2754284 () Bool)

(assert (=> b!4423539 (= e!2754284 (and tp_is_empty!26211 tp_is_empty!26209 tp!1333099))))

(assert (=> b!4422702 (= tp!1333090 e!2754284)))

(assert (= (and b!4422702 ((_ is Cons!49560) (_2!27966 (h!55240 (toList!3469 lm!1616))))) b!4423539))

(declare-fun b!4423540 () Bool)

(declare-fun e!2754285 () Bool)

(declare-fun tp!1333100 () Bool)

(declare-fun tp!1333101 () Bool)

(assert (=> b!4423540 (= e!2754285 (and tp!1333100 tp!1333101))))

(assert (=> b!4422702 (= tp!1333091 e!2754285)))

(assert (= (and b!4422702 ((_ is Cons!49561) (t!356623 (toList!3469 lm!1616)))) b!4423540))

(declare-fun e!2754286 () Bool)

(declare-fun b!4423541 () Bool)

(declare-fun tp!1333102 () Bool)

(assert (=> b!4423541 (= e!2754286 (and tp_is_empty!26211 tp_is_empty!26209 tp!1333102))))

(assert (=> b!4422707 (= tp!1333094 e!2754286)))

(assert (= (and b!4422707 ((_ is Cons!49560) (t!356622 (t!356622 newBucket!194)))) b!4423541))

(declare-fun b_lambda!142843 () Bool)

(assert (= b_lambda!142831 (or d!1340133 b_lambda!142843)))

(declare-fun bs!755991 () Bool)

(declare-fun d!1340625 () Bool)

(assert (= bs!755991 (and d!1340625 d!1340133)))

(assert (=> bs!755991 (= (dynLambda!20838 lambda!153370 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (contains!12050 lt!1622415 (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(declare-fun m!5102541 () Bool)

(assert (=> bs!755991 m!5102541))

(assert (=> b!4423488 d!1340625))

(declare-fun b_lambda!142845 () Bool)

(assert (= b_lambda!142837 (or b!4422692 b_lambda!142845)))

(declare-fun bs!755992 () Bool)

(declare-fun d!1340627 () Bool)

(assert (= bs!755992 (and d!1340627 b!4422692)))

(assert (=> bs!755992 (= (dynLambda!20838 lambda!153368 (h!55239 (toList!3470 lt!1622116))) (contains!12050 lt!1622116 (_1!27965 (h!55239 (toList!3470 lt!1622116)))))))

(declare-fun m!5102543 () Bool)

(assert (=> bs!755992 m!5102543))

(assert (=> b!4423519 d!1340627))

(declare-fun b_lambda!142847 () Bool)

(assert (= b_lambda!142827 (or d!1340091 b_lambda!142847)))

(declare-fun bs!755993 () Bool)

(declare-fun d!1340629 () Bool)

(assert (= bs!755993 (and d!1340629 d!1340091)))

(assert (=> bs!755993 (= (dynLambda!20836 lambda!153302 (h!55240 (tail!7255 (toList!3469 lm!1616)))) (noDuplicateKeys!741 (_2!27966 (h!55240 (tail!7255 (toList!3469 lm!1616))))))))

(assert (=> bs!755993 m!5102151))

(assert (=> b!4423468 d!1340629))

(declare-fun b_lambda!142849 () Bool)

(assert (= b_lambda!142835 (or b!4422692 b_lambda!142849)))

(declare-fun bs!755994 () Bool)

(declare-fun d!1340631 () Bool)

(assert (= bs!755994 (and d!1340631 b!4422692)))

(assert (=> bs!755994 (= (dynLambda!20838 lambda!153369 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616))))) (contains!12050 lt!1622432 (_1!27965 (h!55239 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))))

(assert (=> bs!755994 m!5100965))

(assert (=> b!4423503 d!1340631))

(declare-fun b_lambda!142851 () Bool)

(assert (= b_lambda!142759 (or d!1340045 b_lambda!142851)))

(declare-fun bs!755995 () Bool)

(declare-fun d!1340633 () Bool)

(assert (= bs!755995 (and d!1340633 d!1340045)))

(assert (=> bs!755995 (= (dynLambda!20836 lambda!153282 (h!55240 (toList!3469 lm!1616))) (noDuplicateKeys!741 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))

(assert (=> bs!755995 m!5100987))

(assert (=> b!4423183 d!1340633))

(declare-fun b_lambda!142853 () Bool)

(assert (= b_lambda!142767 (or d!1340121 b_lambda!142853)))

(declare-fun bs!755996 () Bool)

(declare-fun d!1340635 () Bool)

(assert (= bs!755996 (and d!1340635 d!1340121)))

(assert (=> bs!755996 (= (dynLambda!20836 lambda!153306 (h!55240 (toList!3469 lm!1616))) (noDuplicateKeys!741 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))

(assert (=> bs!755996 m!5100987))

(assert (=> b!4423226 d!1340635))

(declare-fun b_lambda!142855 () Bool)

(assert (= b_lambda!142825 (or d!1340017 b_lambda!142855)))

(declare-fun bs!755997 () Bool)

(declare-fun d!1340637 () Bool)

(assert (= bs!755997 (and d!1340637 d!1340017)))

(assert (=> bs!755997 (= (dynLambda!20836 lambda!153267 (h!55240 (toList!3469 lm!1616))) (allKeysSameHash!701 (_2!27966 (h!55240 (toList!3469 lm!1616))) (_1!27966 (h!55240 (toList!3469 lm!1616))) hashF!1220))))

(declare-fun m!5102545 () Bool)

(assert (=> bs!755997 m!5102545))

(assert (=> b!4423466 d!1340637))

(declare-fun b_lambda!142857 () Bool)

(assert (= b_lambda!142735 (or d!1340033 b_lambda!142857)))

(declare-fun bs!755998 () Bool)

(declare-fun d!1340639 () Bool)

(assert (= bs!755998 (and d!1340639 d!1340033)))

(assert (=> bs!755998 (= (dynLambda!20836 lambda!153273 (h!55240 (toList!3469 lm!1616))) (noDuplicateKeys!741 (_2!27966 (h!55240 (toList!3469 lm!1616)))))))

(assert (=> bs!755998 m!5100987))

(assert (=> b!4422952 d!1340639))

(declare-fun b_lambda!142859 () Bool)

(assert (= b_lambda!142737 (or d!1340041 b_lambda!142859)))

(declare-fun bs!755999 () Bool)

(declare-fun d!1340641 () Bool)

(assert (= bs!755999 (and d!1340641 d!1340041)))

(assert (=> bs!755999 (= (dynLambda!20838 lambda!153276 (h!55239 newBucket!194)) (= (hash!2088 hashF!1220 (_1!27965 (h!55239 newBucket!194))) hash!366))))

(declare-fun m!5102547 () Bool)

(assert (=> bs!755999 m!5102547))

(assert (=> b!4422971 d!1340641))

(declare-fun b_lambda!142861 () Bool)

(assert (= b_lambda!142785 (or d!1340073 b_lambda!142861)))

(declare-fun bs!756000 () Bool)

(declare-fun d!1340643 () Bool)

(assert (= bs!756000 (and d!1340643 d!1340073)))

(assert (=> bs!756000 (= (dynLambda!20836 lambda!153298 (h!55240 (toList!3469 lt!1622117))) (noDuplicateKeys!741 (_2!27966 (h!55240 (toList!3469 lt!1622117)))))))

(assert (=> bs!756000 m!5101993))

(assert (=> b!4423455 d!1340643))

(declare-fun b_lambda!142863 () Bool)

(assert (= b_lambda!142763 (or start!431164 b_lambda!142863)))

(declare-fun bs!756001 () Bool)

(declare-fun d!1340645 () Bool)

(assert (= bs!756001 (and d!1340645 start!431164)))

(assert (=> bs!756001 (= (dynLambda!20836 lambda!153264 (h!55240 (t!356623 (toList!3469 lm!1616)))) (noDuplicateKeys!741 (_2!27966 (h!55240 (t!356623 (toList!3469 lm!1616))))))))

(declare-fun m!5102549 () Bool)

(assert (=> bs!756001 m!5102549))

(assert (=> b!4423198 d!1340645))

(declare-fun b_lambda!142865 () Bool)

(assert (= b_lambda!142739 (or d!1340059 b_lambda!142865)))

(declare-fun bs!756002 () Bool)

(declare-fun d!1340647 () Bool)

(assert (= bs!756002 (and d!1340647 d!1340059)))

(assert (=> bs!756002 (= (dynLambda!20836 lambda!153287 (h!55240 (toList!3469 (+!1067 lt!1622117 lt!1622124)))) (noDuplicateKeys!741 (_2!27966 (h!55240 (toList!3469 (+!1067 lt!1622117 lt!1622124))))))))

(assert (=> bs!756002 m!5102079))

(assert (=> b!4422973 d!1340647))

(declare-fun b_lambda!142867 () Bool)

(assert (= b_lambda!142761 (or start!431164 b_lambda!142867)))

(declare-fun bs!756003 () Bool)

(declare-fun d!1340649 () Bool)

(assert (= bs!756003 (and d!1340649 start!431164)))

(assert (=> bs!756003 (= (dynLambda!20836 lambda!153264 (h!55240 (toList!3469 (+!1067 lm!1616 (tuple2!49345 hash!366 newBucket!194))))) (noDuplicateKeys!741 (_2!27966 (h!55240 (toList!3469 (+!1067 lm!1616 (tuple2!49345 hash!366 newBucket!194)))))))))

(declare-fun m!5102551 () Bool)

(assert (=> bs!756003 m!5102551))

(assert (=> b!4423187 d!1340649))

(declare-fun b_lambda!142869 () Bool)

(assert (= b_lambda!142773 (or b!4422692 b_lambda!142869)))

(declare-fun bs!756004 () Bool)

(declare-fun d!1340651 () Bool)

(assert (= bs!756004 (and d!1340651 b!4422692)))

(assert (=> bs!756004 (= (dynLambda!20838 lambda!153369 (h!55239 (toList!3470 lt!1622116))) (contains!12050 lt!1622432 (_1!27965 (h!55239 (toList!3470 lt!1622116)))))))

(declare-fun m!5102553 () Bool)

(assert (=> bs!756004 m!5102553))

(assert (=> b!4423299 d!1340651))

(declare-fun b_lambda!142871 () Bool)

(assert (= b_lambda!142733 (or d!1340057 b_lambda!142871)))

(declare-fun bs!756005 () Bool)

(declare-fun d!1340653 () Bool)

(assert (= bs!756005 (and d!1340653 d!1340057)))

(assert (=> bs!756005 (= (dynLambda!20836 lambda!153286 (h!55240 (toList!3469 lt!1622117))) (noDuplicateKeys!741 (_2!27966 (h!55240 (toList!3469 lt!1622117)))))))

(assert (=> bs!756005 m!5101993))

(assert (=> b!4422916 d!1340653))

(declare-fun b_lambda!142873 () Bool)

(assert (= b_lambda!142841 (or b!4422692 b_lambda!142873)))

(declare-fun bs!756006 () Bool)

(declare-fun d!1340655 () Bool)

(assert (= bs!756006 (and d!1340655 b!4422692)))

(assert (=> bs!756006 (= (dynLambda!20838 lambda!153369 (h!55239 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616)))))) (contains!12050 lt!1622432 (_1!27965 (h!55239 (t!356622 (_2!27966 (h!55240 (toList!3469 lm!1616))))))))))

(declare-fun m!5102555 () Bool)

(assert (=> bs!756006 m!5102555))

(assert (=> b!4423523 d!1340655))

(declare-fun b_lambda!142875 () Bool)

(assert (= b_lambda!142769 (or d!1340133 b_lambda!142875)))

(declare-fun bs!756007 () Bool)

(declare-fun d!1340657 () Bool)

(assert (= bs!756007 (and d!1340657 d!1340133)))

(assert (=> bs!756007 (= (dynLambda!20838 lambda!153370 (h!55239 (toList!3470 lt!1622116))) (contains!12050 lt!1622415 (_1!27965 (h!55239 (toList!3470 lt!1622116)))))))

(declare-fun m!5102557 () Bool)

(assert (=> bs!756007 m!5102557))

(assert (=> b!4423266 d!1340657))

(declare-fun b_lambda!142877 () Bool)

(assert (= b_lambda!142771 (or start!431164 b_lambda!142877)))

(declare-fun bs!756008 () Bool)

(declare-fun d!1340659 () Bool)

(assert (= bs!756008 (and d!1340659 start!431164)))

(assert (=> bs!756008 (= (dynLambda!20836 lambda!153264 (h!55240 (t!356623 (toList!3469 lt!1622125)))) (noDuplicateKeys!741 (_2!27966 (h!55240 (t!356623 (toList!3469 lt!1622125))))))))

(declare-fun m!5102559 () Bool)

(assert (=> bs!756008 m!5102559))

(assert (=> b!4423278 d!1340659))

(declare-fun b_lambda!142879 () Bool)

(assert (= b_lambda!142833 (or b!4422692 b_lambda!142879)))

(assert (=> d!1340595 d!1340631))

(declare-fun b_lambda!142881 () Bool)

(assert (= b_lambda!142839 (or b!4422692 b_lambda!142881)))

(declare-fun bs!756009 () Bool)

(declare-fun d!1340661 () Bool)

(assert (= bs!756009 (and d!1340661 b!4422692)))

(assert (=> bs!756009 (= (dynLambda!20838 lambda!153369 (h!55239 (toList!3470 lt!1622414))) (contains!12050 lt!1622432 (_1!27965 (h!55239 (toList!3470 lt!1622414)))))))

(declare-fun m!5102561 () Bool)

(assert (=> bs!756009 m!5102561))

(assert (=> b!4423521 d!1340661))

(check-sat (not d!1340601) (not b_lambda!142879) (not b!4423490) (not d!1340489) (not bm!307733) (not b!4423506) (not b!4423538) (not b!4423491) (not b!4422989) (not bs!756003) (not b!4423170) (not b!4423227) (not b!4423510) (not d!1340487) (not d!1340393) (not b!4423219) (not b!4422972) (not bs!756004) (not b!4422985) (not b!4422992) (not b_lambda!142859) (not b!4423452) (not b!4423511) (not d!1340243) (not bs!756005) (not b!4423364) (not d!1340409) (not b!4423339) (not bm!307734) (not b!4422905) (not d!1340323) (not bm!307727) (not b!4423486) (not b!4423435) (not b!4423107) (not b!4423173) (not b!4423203) (not b!4423096) (not b!4423186) (not b!4423422) (not d!1340269) (not b!4423294) (not b!4423184) (not b!4423261) (not b!4423504) (not b!4423320) (not b_lambda!142877) (not d!1340335) (not d!1340493) (not b!4423478) (not b!4423112) (not d!1340473) (not b!4423162) (not b!4423240) (not d!1340511) (not b!4423188) (not b!4423479) (not d!1340619) (not b!4423541) (not b!4423306) (not d!1340521) (not b!4422942) (not b_lambda!142871) (not b!4423336) (not b!4422977) (not d!1340591) (not b!4423304) (not d!1340613) (not bm!307731) (not b!4422842) (not b!4423337) (not b!4423424) (not d!1340401) (not b!4423279) (not b!4423507) (not b_lambda!142779) (not d!1340317) (not b!4423536) (not b!4423277) (not b!4422984) (not bs!755991) (not d!1340615) (not b!4423262) (not b!4423454) (not b!4423518) (not b!4423122) (not b!4423106) (not b_lambda!142873) (not d!1340465) tp_is_empty!26211 (not d!1340519) (not b!4423246) (not d!1340559) (not d!1340507) (not b!4423358) (not b_lambda!142863) (not b!4423100) (not b!4423017) (not b!4422906) (not d!1340503) (not bm!307722) (not b_lambda!142717) (not b!4423526) (not b!4423287) (not b!4423477) (not b!4423099) (not bm!307736) (not bm!307751) (not d!1340325) (not bs!755998) (not b!4423305) (not b!4423362) (not bs!755999) (not b!4423288) (not b!4423200) (not b!4423405) (not d!1340445) (not bs!755994) (not d!1340515) (not b!4423105) (not bm!307752) (not bs!756009) (not b!4423508) (not d!1340275) (not b!4422909) (not b!4423280) (not bm!307729) (not b_lambda!142855) (not d!1340259) (not b!4423098) (not b!4422917) (not b_lambda!142857) (not b!4422979) (not b!4423166) (not b!4423396) (not b!4423356) (not b!4423300) (not b!4423172) (not b!4423199) (not bm!307735) (not b!4423298) (not bm!307730) (not b!4423456) (not b!4423484) (not b!4423101) (not d!1340609) (not b!4423312) (not b!4423467) (not d!1340263) (not b_lambda!142861) (not d!1340331) (not b!4423461) (not b_lambda!142845) (not b!4422955) (not bs!755995) (not d!1340485) (not d!1340593) (not b!4423498) (not b!4423465) (not b!4423295) (not bm!307721) (not b!4423352) (not b!4423494) (not d!1340599) (not d!1340209) (not d!1340561) (not b!4422974) (not b!4423522) (not b!4423363) (not d!1340611) (not b!4423340) (not b!4423487) (not b!4423475) (not b!4423497) (not b!4423534) (not bm!307753) (not b!4423325) (not b_lambda!142851) (not b!4423462) (not b!4423481) (not bs!755997) (not b_lambda!142869) (not bs!756000) (not b_lambda!142843) tp_is_empty!26209 (not b!4423302) (not d!1340359) (not b!4422953) (not b!4422982) (not b!4423263) (not b!4423365) (not bm!307755) (not b!4423338) (not b!4423355) (not d!1340563) (not bs!756006) (not b!4423189) (not b!4423163) (not b_lambda!142713) (not bs!756008) (not b!4423539) (not d!1340439) (not b!4423512) (not b!4423354) (not bm!307738) (not d!1340475) (not bs!756007) (not d!1340433) (not b!4423201) (not bm!307754) (not b!4423171) (not b!4423469) (not b!4423423) (not d!1340455) (not b_lambda!142853) (not b!4423540) (not b!4423532) (not b!4423513) (not bm!307719) (not d!1340617) (not bm!307720) (not b!4423520) (not b!4423303) (not b_lambda!142849) (not bs!756002) (not b!4422950) (not d!1340567) (not d!1340239) (not b!4422981) (not d!1340339) (not b!4423514) (not b!4423190) (not d!1340459) (not d!1340477) (not d!1340355) (not b!4423489) (not b!4422980) (not b!4422907) (not d!1340389) (not b!4422983) (not b!4423403) (not b_lambda!142867) (not d!1340437) (not bm!307700) (not b!4423421) (not bs!755996) (not d!1340479) (not b!4423493) (not b!4423202) (not b!4423178) (not b!4423114) (not b!4423492) (not b!4423476) (not b!4423453) (not bm!307717) (not b!4423502) (not b!4423169) (not d!1340285) (not b_lambda!142847) (not b!4423285) (not bs!756001) (not b!4423018) (not bm!307737) (not b_lambda!142875) (not b!4423517) (not b!4423505) (not b!4422988) (not b_lambda!142881) (not b!4423282) (not b_lambda!142715) (not b!4422913) (not b!4423524) (not bm!307702) (not b_lambda!142829) (not b!4423177) (not b!4423525) (not bs!755993) (not b!4423366) (not d!1340411) (not bs!755992) (not b!4423174) (not b!4423128) (not b!4423267) (not bm!307683) (not b!4423129) (not b!4423460) (not d!1340369) (not b_lambda!142865) (not d!1340251) (not d!1340581) (not d!1340423) (not b!4422833) (not d!1340595))
(check-sat)
