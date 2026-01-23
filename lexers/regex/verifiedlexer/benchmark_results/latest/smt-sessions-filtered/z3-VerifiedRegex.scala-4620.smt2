; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242120 () Bool)

(assert start!242120)

(declare-fun b!2481493 () Bool)

(declare-fun b_free!72297 () Bool)

(declare-fun b_next!73001 () Bool)

(assert (=> b!2481493 (= b_free!72297 (not b_next!73001))))

(declare-fun tp!794385 () Bool)

(declare-fun b_and!188543 () Bool)

(assert (=> b!2481493 (= tp!794385 b_and!188543)))

(declare-fun b!2481486 () Bool)

(declare-fun b_free!72299 () Bool)

(declare-fun b_next!73003 () Bool)

(assert (=> b!2481486 (= b_free!72299 (not b_next!73003))))

(declare-fun tp!794387 () Bool)

(declare-fun b_and!188545 () Bool)

(assert (=> b!2481486 (= tp!794387 b_and!188545)))

(declare-fun b!2481485 () Bool)

(declare-fun res!1050542 () Bool)

(declare-fun e!1575164 () Bool)

(assert (=> b!2481485 (=> (not res!1050542) (not e!1575164))))

(declare-datatypes ((Hashable!3270 0))(
  ( (HashableExt!3269 (__x!18986 Int)) )
))
(declare-datatypes ((K!5485 0))(
  ( (K!5486 (val!8863 Int)) )
))
(declare-datatypes ((V!5687 0))(
  ( (V!5688 (val!8864 Int)) )
))
(declare-datatypes ((tuple2!28816 0))(
  ( (tuple2!28817 (_1!16949 K!5485) (_2!16949 V!5687)) )
))
(declare-datatypes ((List!29200 0))(
  ( (Nil!29100) (Cons!29100 (h!34506 tuple2!28816) (t!210857 List!29200)) )
))
(declare-datatypes ((array!11901 0))(
  ( (array!11902 (arr!5310 (Array (_ BitVec 32) List!29200)) (size!22729 (_ BitVec 32))) )
))
(declare-datatypes ((array!11903 0))(
  ( (array!11904 (arr!5311 (Array (_ BitVec 32) (_ BitVec 64))) (size!22730 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6720 0))(
  ( (LongMapFixedSize!6721 (defaultEntry!3734 Int) (mask!8529 (_ BitVec 32)) (extraKeys!3608 (_ BitVec 32)) (zeroValue!3618 List!29200) (minValue!3618 List!29200) (_size!6767 (_ BitVec 32)) (_keys!3657 array!11903) (_values!3640 array!11901) (_vacant!3421 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13257 0))(
  ( (Cell!13258 (v!31436 LongMapFixedSize!6720)) )
))
(declare-datatypes ((MutLongMap!3360 0))(
  ( (LongMap!3360 (underlying!6927 Cell!13257)) (MutLongMapExt!3359 (__x!18987 Int)) )
))
(declare-datatypes ((Cell!13259 0))(
  ( (Cell!13260 (v!31437 MutLongMap!3360)) )
))
(declare-datatypes ((MutableMap!3270 0))(
  ( (MutableMapExt!3269 (__x!18988 Int)) (HashMap!3270 (underlying!6928 Cell!13259) (hashF!5229 Hashable!3270) (_size!6768 (_ BitVec 32)) (defaultValue!3432 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3270)

(declare-fun key!2246 () K!5485)

(declare-fun contains!5098 (MutableMap!3270 K!5485) Bool)

(assert (=> b!2481485 (= res!1050542 (not (contains!5098 thiss!42540 key!2246)))))

(declare-fun e!1575162 () Bool)

(declare-fun e!1575158 () Bool)

(assert (=> b!2481486 (= e!1575162 (and e!1575158 tp!794387))))

(declare-fun mapIsEmpty!15544 () Bool)

(declare-fun mapRes!15544 () Bool)

(assert (=> mapIsEmpty!15544 mapRes!15544))

(declare-fun mapNonEmpty!15544 () Bool)

(declare-fun tp!794384 () Bool)

(declare-fun tp!794389 () Bool)

(assert (=> mapNonEmpty!15544 (= mapRes!15544 (and tp!794384 tp!794389))))

(declare-fun mapRest!15544 () (Array (_ BitVec 32) List!29200))

(declare-fun mapValue!15544 () List!29200)

(declare-fun mapKey!15544 () (_ BitVec 32))

(assert (=> mapNonEmpty!15544 (= (arr!5310 (_values!3640 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540)))))) (store mapRest!15544 mapKey!15544 mapValue!15544))))

(declare-fun b!2481487 () Bool)

(declare-fun e!1575163 () Bool)

(declare-fun tp!794390 () Bool)

(assert (=> b!2481487 (= e!1575163 (and tp!794390 mapRes!15544))))

(declare-fun condMapEmpty!15544 () Bool)

(declare-fun mapDefault!15544 () List!29200)

(assert (=> b!2481487 (= condMapEmpty!15544 (= (arr!5310 (_values!3640 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29200)) mapDefault!15544)))))

(declare-fun b!2481488 () Bool)

(declare-fun res!1050540 () Bool)

(declare-fun e!1575159 () Bool)

(assert (=> b!2481488 (=> (not res!1050540) (not e!1575159))))

(declare-datatypes ((tuple2!28818 0))(
  ( (tuple2!28819 (_1!16950 (_ BitVec 64)) (_2!16950 List!29200)) )
))
(declare-datatypes ((List!29201 0))(
  ( (Nil!29101) (Cons!29101 (h!34507 tuple2!28818) (t!210858 List!29201)) )
))
(declare-datatypes ((ListLongMap!523 0))(
  ( (ListLongMap!524 (toList!1576 List!29201)) )
))
(declare-fun lt!888275 () ListLongMap!523)

(declare-fun allKeysSameHashInMap!165 (ListLongMap!523 Hashable!3270) Bool)

(assert (=> b!2481488 (= res!1050540 (allKeysSameHashInMap!165 lt!888275 (hashF!5229 thiss!42540)))))

(declare-fun b!2481489 () Bool)

(declare-fun res!1050539 () Bool)

(assert (=> b!2481489 (=> (not res!1050539) (not e!1575164))))

(declare-fun valid!2565 (MutableMap!3270) Bool)

(assert (=> b!2481489 (= res!1050539 (valid!2565 thiss!42540))))

(declare-fun b!2481490 () Bool)

(declare-datatypes ((ListMap!1059 0))(
  ( (ListMap!1060 (toList!1577 List!29200)) )
))
(declare-fun contains!5099 (ListMap!1059 K!5485) Bool)

(declare-fun extractMap!173 (List!29201) ListMap!1059)

(assert (=> b!2481490 (= e!1575159 (contains!5099 (extractMap!173 (toList!1576 lt!888275)) key!2246))))

(declare-fun b!2481491 () Bool)

(declare-fun e!1575165 () Bool)

(declare-fun e!1575160 () Bool)

(assert (=> b!2481491 (= e!1575165 e!1575160)))

(declare-fun b!2481492 () Bool)

(declare-fun e!1575161 () Bool)

(assert (=> b!2481492 (= e!1575160 e!1575161)))

(declare-fun b!2481494 () Bool)

(assert (=> b!2481494 (= e!1575164 e!1575159)))

(declare-fun res!1050538 () Bool)

(assert (=> b!2481494 (=> (not res!1050538) (not e!1575159))))

(declare-fun lambda!93973 () Int)

(declare-fun forall!5969 (List!29201 Int) Bool)

(assert (=> b!2481494 (= res!1050538 (forall!5969 (toList!1576 lt!888275) lambda!93973))))

(declare-fun map!6190 (MutLongMap!3360) ListLongMap!523)

(assert (=> b!2481494 (= lt!888275 (map!6190 (v!31437 (underlying!6928 thiss!42540))))))

(declare-fun b!2481495 () Bool)

(declare-fun lt!888276 () MutLongMap!3360)

(get-info :version)

(assert (=> b!2481495 (= e!1575158 (and e!1575165 ((_ is LongMap!3360) lt!888276)))))

(assert (=> b!2481495 (= lt!888276 (v!31437 (underlying!6928 thiss!42540)))))

(declare-fun res!1050541 () Bool)

(assert (=> start!242120 (=> (not res!1050541) (not e!1575164))))

(assert (=> start!242120 (= res!1050541 ((_ is HashMap!3270) thiss!42540))))

(assert (=> start!242120 e!1575164))

(assert (=> start!242120 e!1575162))

(declare-fun tp_is_empty!12247 () Bool)

(assert (=> start!242120 tp_is_empty!12247))

(declare-fun tp!794388 () Bool)

(declare-fun tp!794386 () Bool)

(declare-fun array_inv!3811 (array!11903) Bool)

(declare-fun array_inv!3812 (array!11901) Bool)

(assert (=> b!2481493 (= e!1575161 (and tp!794385 tp!794388 tp!794386 (array_inv!3811 (_keys!3657 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540)))))) (array_inv!3812 (_values!3640 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540)))))) e!1575163))))

(assert (= (and start!242120 res!1050541) b!2481489))

(assert (= (and b!2481489 res!1050539) b!2481485))

(assert (= (and b!2481485 res!1050542) b!2481494))

(assert (= (and b!2481494 res!1050538) b!2481488))

(assert (= (and b!2481488 res!1050540) b!2481490))

(assert (= (and b!2481487 condMapEmpty!15544) mapIsEmpty!15544))

(assert (= (and b!2481487 (not condMapEmpty!15544)) mapNonEmpty!15544))

(assert (= b!2481493 b!2481487))

(assert (= b!2481492 b!2481493))

(assert (= b!2481491 b!2481492))

(assert (= (and b!2481495 ((_ is LongMap!3360) (v!31437 (underlying!6928 thiss!42540)))) b!2481491))

(assert (= b!2481486 b!2481495))

(assert (= (and start!242120 ((_ is HashMap!3270) thiss!42540)) b!2481486))

(declare-fun m!2849475 () Bool)

(assert (=> b!2481493 m!2849475))

(declare-fun m!2849477 () Bool)

(assert (=> b!2481493 m!2849477))

(declare-fun m!2849479 () Bool)

(assert (=> b!2481490 m!2849479))

(assert (=> b!2481490 m!2849479))

(declare-fun m!2849481 () Bool)

(assert (=> b!2481490 m!2849481))

(declare-fun m!2849483 () Bool)

(assert (=> b!2481485 m!2849483))

(declare-fun m!2849485 () Bool)

(assert (=> b!2481489 m!2849485))

(declare-fun m!2849487 () Bool)

(assert (=> b!2481488 m!2849487))

(declare-fun m!2849489 () Bool)

(assert (=> mapNonEmpty!15544 m!2849489))

(declare-fun m!2849491 () Bool)

(assert (=> b!2481494 m!2849491))

(declare-fun m!2849493 () Bool)

(assert (=> b!2481494 m!2849493))

(check-sat (not b!2481490) (not b!2481487) b_and!188543 (not mapNonEmpty!15544) (not b!2481494) (not b!2481493) tp_is_empty!12247 (not b!2481485) b_and!188545 (not b!2481489) (not b_next!73003) (not b!2481488) (not b_next!73001))
(check-sat b_and!188545 b_and!188543 (not b_next!73001) (not b_next!73003))
(get-model)

(declare-fun bs!467424 () Bool)

(declare-fun d!712811 () Bool)

(assert (= bs!467424 (and d!712811 b!2481494)))

(declare-fun lambda!93976 () Int)

(assert (=> bs!467424 (not (= lambda!93976 lambda!93973))))

(assert (=> d!712811 true))

(assert (=> d!712811 (= (allKeysSameHashInMap!165 lt!888275 (hashF!5229 thiss!42540)) (forall!5969 (toList!1576 lt!888275) lambda!93976))))

(declare-fun bs!467425 () Bool)

(assert (= bs!467425 d!712811))

(declare-fun m!2849495 () Bool)

(assert (=> bs!467425 m!2849495))

(assert (=> b!2481488 d!712811))

(declare-fun d!712813 () Bool)

(assert (=> d!712813 (= (array_inv!3811 (_keys!3657 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540)))))) (bvsge (size!22730 (_keys!3657 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2481493 d!712813))

(declare-fun d!712815 () Bool)

(assert (=> d!712815 (= (array_inv!3812 (_values!3640 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540)))))) (bvsge (size!22729 (_values!3640 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2481493 d!712815))

(declare-fun d!712817 () Bool)

(declare-fun res!1050547 () Bool)

(declare-fun e!1575170 () Bool)

(assert (=> d!712817 (=> res!1050547 e!1575170)))

(assert (=> d!712817 (= res!1050547 ((_ is Nil!29101) (toList!1576 lt!888275)))))

(assert (=> d!712817 (= (forall!5969 (toList!1576 lt!888275) lambda!93973) e!1575170)))

(declare-fun b!2481502 () Bool)

(declare-fun e!1575171 () Bool)

(assert (=> b!2481502 (= e!1575170 e!1575171)))

(declare-fun res!1050548 () Bool)

(assert (=> b!2481502 (=> (not res!1050548) (not e!1575171))))

(declare-fun dynLambda!12464 (Int tuple2!28818) Bool)

(assert (=> b!2481502 (= res!1050548 (dynLambda!12464 lambda!93973 (h!34507 (toList!1576 lt!888275))))))

(declare-fun b!2481503 () Bool)

(assert (=> b!2481503 (= e!1575171 (forall!5969 (t!210858 (toList!1576 lt!888275)) lambda!93973))))

(assert (= (and d!712817 (not res!1050547)) b!2481502))

(assert (= (and b!2481502 res!1050548) b!2481503))

(declare-fun b_lambda!76103 () Bool)

(assert (=> (not b_lambda!76103) (not b!2481502)))

(declare-fun m!2849497 () Bool)

(assert (=> b!2481502 m!2849497))

(declare-fun m!2849499 () Bool)

(assert (=> b!2481503 m!2849499))

(assert (=> b!2481494 d!712817))

(declare-fun d!712819 () Bool)

(declare-fun map!6191 (LongMapFixedSize!6720) ListLongMap!523)

(assert (=> d!712819 (= (map!6190 (v!31437 (underlying!6928 thiss!42540))) (map!6191 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540))))))))

(declare-fun bs!467426 () Bool)

(assert (= bs!467426 d!712819))

(declare-fun m!2849501 () Bool)

(assert (=> bs!467426 m!2849501))

(assert (=> b!2481494 d!712819))

(declare-fun bs!467427 () Bool)

(declare-fun b!2481528 () Bool)

(assert (= bs!467427 (and b!2481528 b!2481494)))

(declare-fun lambda!93979 () Int)

(assert (=> bs!467427 (= lambda!93979 lambda!93973)))

(declare-fun bs!467428 () Bool)

(assert (= bs!467428 (and b!2481528 d!712811)))

(assert (=> bs!467428 (not (= lambda!93979 lambda!93976))))

(declare-fun b!2481526 () Bool)

(assert (=> b!2481526 false))

(declare-datatypes ((Unit!42585 0))(
  ( (Unit!42586) )
))
(declare-fun lt!888324 () Unit!42585)

(declare-fun lt!888325 () Unit!42585)

(assert (=> b!2481526 (= lt!888324 lt!888325)))

(declare-fun lt!888320 () ListLongMap!523)

(assert (=> b!2481526 (contains!5099 (extractMap!173 (toList!1576 lt!888320)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!69 (ListLongMap!523 K!5485 Hashable!3270) Unit!42585)

(assert (=> b!2481526 (= lt!888325 (lemmaInLongMapThenInGenericMap!69 lt!888320 key!2246 (hashF!5229 thiss!42540)))))

(declare-fun call!151979 () ListLongMap!523)

(assert (=> b!2481526 (= lt!888320 call!151979)))

(declare-fun e!1575190 () Unit!42585)

(declare-fun Unit!42587 () Unit!42585)

(assert (=> b!2481526 (= e!1575190 Unit!42587)))

(declare-fun call!151981 () (_ BitVec 64))

(declare-fun lt!888323 () ListLongMap!523)

(declare-fun c!394509 () Bool)

(declare-fun call!151980 () List!29200)

(declare-fun bm!151974 () Bool)

(declare-fun apply!6914 (ListLongMap!523 (_ BitVec 64)) List!29200)

(assert (=> bm!151974 (= call!151980 (apply!6914 (ite c!394509 lt!888323 call!151979) call!151981))))

(declare-fun b!2481527 () Bool)

(declare-fun e!1575192 () Unit!42585)

(declare-fun lt!888332 () Unit!42585)

(assert (=> b!2481527 (= e!1575192 lt!888332)))

(assert (=> b!2481527 (= lt!888323 call!151979)))

(declare-fun lemmaInGenericMapThenInLongMap!69 (ListLongMap!523 K!5485 Hashable!3270) Unit!42585)

(assert (=> b!2481527 (= lt!888332 (lemmaInGenericMapThenInLongMap!69 lt!888323 key!2246 (hashF!5229 thiss!42540)))))

(declare-fun res!1050555 () Bool)

(declare-fun call!151982 () Bool)

(assert (=> b!2481527 (= res!1050555 call!151982)))

(declare-fun e!1575191 () Bool)

(assert (=> b!2481527 (=> (not res!1050555) (not e!1575191))))

(assert (=> b!2481527 e!1575191))

(declare-fun bm!151975 () Bool)

(declare-fun call!151983 () Bool)

(declare-datatypes ((Option!5748 0))(
  ( (None!5747) (Some!5747 (v!31438 tuple2!28816)) )
))
(declare-fun call!151984 () Option!5748)

(declare-fun isDefined!4570 (Option!5748) Bool)

(assert (=> bm!151975 (= call!151983 (isDefined!4570 call!151984))))

(declare-fun bm!151976 () Bool)

(declare-fun hash!687 (Hashable!3270 K!5485) (_ BitVec 64))

(assert (=> bm!151976 (= call!151981 (hash!687 (hashF!5229 thiss!42540) key!2246))))

(declare-fun e!1575189 () Unit!42585)

(declare-fun lt!888330 () (_ BitVec 64))

(declare-fun forallContained!855 (List!29201 Int tuple2!28818) Unit!42585)

(declare-fun apply!6915 (MutLongMap!3360 (_ BitVec 64)) List!29200)

(assert (=> b!2481528 (= e!1575189 (forallContained!855 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))) lambda!93979 (tuple2!28819 lt!888330 (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330))))))

(declare-fun c!394508 () Bool)

(declare-fun contains!5100 (List!29201 tuple2!28818) Bool)

(assert (=> b!2481528 (= c!394508 (not (contains!5100 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))) (tuple2!28819 lt!888330 (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330)))))))

(declare-fun lt!888319 () Unit!42585)

(declare-fun e!1575188 () Unit!42585)

(assert (=> b!2481528 (= lt!888319 e!1575188)))

(declare-fun b!2481529 () Bool)

(declare-fun Unit!42588 () Unit!42585)

(assert (=> b!2481529 (= e!1575190 Unit!42588)))

(declare-fun b!2481530 () Bool)

(declare-fun Unit!42589 () Unit!42585)

(assert (=> b!2481530 (= e!1575188 Unit!42589)))

(declare-fun b!2481531 () Bool)

(assert (=> b!2481531 (= e!1575192 e!1575190)))

(declare-fun res!1050556 () Bool)

(assert (=> b!2481531 (= res!1050556 call!151982)))

(declare-fun e!1575187 () Bool)

(assert (=> b!2481531 (=> (not res!1050556) (not e!1575187))))

(declare-fun c!394506 () Bool)

(assert (=> b!2481531 (= c!394506 e!1575187)))

(declare-fun b!2481532 () Bool)

(assert (=> b!2481532 false))

(declare-fun lt!888317 () Unit!42585)

(declare-fun lt!888328 () Unit!42585)

(assert (=> b!2481532 (= lt!888317 lt!888328)))

(declare-fun lt!888336 () List!29201)

(declare-fun lt!888327 () List!29200)

(assert (=> b!2481532 (contains!5100 lt!888336 (tuple2!28819 lt!888330 lt!888327))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!74 (List!29201 (_ BitVec 64) List!29200) Unit!42585)

(assert (=> b!2481532 (= lt!888328 (lemmaGetValueByKeyImpliesContainsTuple!74 lt!888336 lt!888330 lt!888327))))

(assert (=> b!2481532 (= lt!888327 (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330))))

(assert (=> b!2481532 (= lt!888336 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))))))

(declare-fun lt!888321 () Unit!42585)

(declare-fun lt!888333 () Unit!42585)

(assert (=> b!2481532 (= lt!888321 lt!888333)))

(declare-fun lt!888318 () List!29201)

(declare-datatypes ((Option!5749 0))(
  ( (None!5748) (Some!5748 (v!31439 List!29200)) )
))
(declare-fun isDefined!4571 (Option!5749) Bool)

(declare-fun getValueByKey!136 (List!29201 (_ BitVec 64)) Option!5749)

(assert (=> b!2481532 (isDefined!4571 (getValueByKey!136 lt!888318 lt!888330))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!93 (List!29201 (_ BitVec 64)) Unit!42585)

(assert (=> b!2481532 (= lt!888333 (lemmaContainsKeyImpliesGetValueByKeyDefined!93 lt!888318 lt!888330))))

(assert (=> b!2481532 (= lt!888318 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))))))

(declare-fun lt!888331 () Unit!42585)

(declare-fun lt!888335 () Unit!42585)

(assert (=> b!2481532 (= lt!888331 lt!888335)))

(declare-fun lt!888322 () List!29201)

(declare-fun containsKey!133 (List!29201 (_ BitVec 64)) Bool)

(assert (=> b!2481532 (containsKey!133 lt!888322 lt!888330)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!70 (List!29201 (_ BitVec 64)) Unit!42585)

(assert (=> b!2481532 (= lt!888335 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!70 lt!888322 lt!888330))))

(assert (=> b!2481532 (= lt!888322 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))))))

(declare-fun Unit!42590 () Unit!42585)

(assert (=> b!2481532 (= e!1575188 Unit!42590)))

(declare-fun bm!151977 () Bool)

(assert (=> bm!151977 (= call!151979 (map!6190 (v!31437 (underlying!6928 thiss!42540))))))

(declare-fun d!712821 () Bool)

(declare-fun lt!888329 () Bool)

(declare-fun map!6192 (MutableMap!3270) ListMap!1059)

(assert (=> d!712821 (= lt!888329 (contains!5099 (map!6192 thiss!42540) key!2246))))

(declare-fun e!1575186 () Bool)

(assert (=> d!712821 (= lt!888329 e!1575186)))

(declare-fun res!1050557 () Bool)

(assert (=> d!712821 (=> (not res!1050557) (not e!1575186))))

(declare-fun contains!5101 (MutLongMap!3360 (_ BitVec 64)) Bool)

(assert (=> d!712821 (= res!1050557 (contains!5101 (v!31437 (underlying!6928 thiss!42540)) lt!888330))))

(declare-fun lt!888334 () Unit!42585)

(assert (=> d!712821 (= lt!888334 e!1575192)))

(assert (=> d!712821 (= c!394509 (contains!5099 (extractMap!173 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540))))) key!2246))))

(declare-fun lt!888326 () Unit!42585)

(assert (=> d!712821 (= lt!888326 e!1575189)))

(declare-fun c!394507 () Bool)

(assert (=> d!712821 (= c!394507 (contains!5101 (v!31437 (underlying!6928 thiss!42540)) lt!888330))))

(assert (=> d!712821 (= lt!888330 (hash!687 (hashF!5229 thiss!42540) key!2246))))

(assert (=> d!712821 (valid!2565 thiss!42540)))

(assert (=> d!712821 (= (contains!5098 thiss!42540 key!2246) lt!888329)))

(declare-fun bm!151978 () Bool)

(declare-fun contains!5102 (ListLongMap!523 (_ BitVec 64)) Bool)

(assert (=> bm!151978 (= call!151982 (contains!5102 (ite c!394509 lt!888323 call!151979) call!151981))))

(declare-fun b!2481533 () Bool)

(declare-fun getPair!69 (List!29200 K!5485) Option!5748)

(assert (=> b!2481533 (= e!1575186 (isDefined!4570 (getPair!69 (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330) key!2246)))))

(declare-fun b!2481534 () Bool)

(assert (=> b!2481534 (= e!1575187 call!151983)))

(declare-fun b!2481535 () Bool)

(assert (=> b!2481535 (= e!1575191 call!151983)))

(declare-fun bm!151979 () Bool)

(assert (=> bm!151979 (= call!151984 (getPair!69 call!151980 key!2246))))

(declare-fun b!2481536 () Bool)

(declare-fun Unit!42591 () Unit!42585)

(assert (=> b!2481536 (= e!1575189 Unit!42591)))

(assert (= (and d!712821 c!394507) b!2481528))

(assert (= (and d!712821 (not c!394507)) b!2481536))

(assert (= (and b!2481528 c!394508) b!2481532))

(assert (= (and b!2481528 (not c!394508)) b!2481530))

(assert (= (and d!712821 c!394509) b!2481527))

(assert (= (and d!712821 (not c!394509)) b!2481531))

(assert (= (and b!2481527 res!1050555) b!2481535))

(assert (= (and b!2481531 res!1050556) b!2481534))

(assert (= (and b!2481531 c!394506) b!2481526))

(assert (= (and b!2481531 (not c!394506)) b!2481529))

(assert (= (or b!2481527 b!2481531 b!2481534 b!2481526) bm!151977))

(assert (= (or b!2481527 b!2481535 b!2481531 b!2481534) bm!151976))

(assert (= (or b!2481535 b!2481534) bm!151974))

(assert (= (or b!2481527 b!2481531) bm!151978))

(assert (= (or b!2481535 b!2481534) bm!151979))

(assert (= (or b!2481535 b!2481534) bm!151975))

(assert (= (and d!712821 res!1050557) b!2481533))

(declare-fun m!2849503 () Bool)

(assert (=> b!2481533 m!2849503))

(assert (=> b!2481533 m!2849503))

(declare-fun m!2849505 () Bool)

(assert (=> b!2481533 m!2849505))

(assert (=> b!2481533 m!2849505))

(declare-fun m!2849507 () Bool)

(assert (=> b!2481533 m!2849507))

(declare-fun m!2849509 () Bool)

(assert (=> d!712821 m!2849509))

(declare-fun m!2849511 () Bool)

(assert (=> d!712821 m!2849511))

(declare-fun m!2849513 () Bool)

(assert (=> d!712821 m!2849513))

(declare-fun m!2849515 () Bool)

(assert (=> d!712821 m!2849515))

(declare-fun m!2849517 () Bool)

(assert (=> d!712821 m!2849517))

(declare-fun m!2849519 () Bool)

(assert (=> d!712821 m!2849519))

(assert (=> d!712821 m!2849509))

(assert (=> d!712821 m!2849493))

(assert (=> d!712821 m!2849485))

(assert (=> d!712821 m!2849517))

(assert (=> bm!151976 m!2849513))

(declare-fun m!2849521 () Bool)

(assert (=> bm!151975 m!2849521))

(declare-fun m!2849523 () Bool)

(assert (=> bm!151974 m!2849523))

(assert (=> b!2481528 m!2849493))

(assert (=> b!2481528 m!2849503))

(declare-fun m!2849525 () Bool)

(assert (=> b!2481528 m!2849525))

(declare-fun m!2849527 () Bool)

(assert (=> b!2481528 m!2849527))

(assert (=> bm!151977 m!2849493))

(declare-fun m!2849529 () Bool)

(assert (=> bm!151978 m!2849529))

(declare-fun m!2849531 () Bool)

(assert (=> b!2481532 m!2849531))

(declare-fun m!2849533 () Bool)

(assert (=> b!2481532 m!2849533))

(assert (=> b!2481532 m!2849503))

(declare-fun m!2849535 () Bool)

(assert (=> b!2481532 m!2849535))

(declare-fun m!2849537 () Bool)

(assert (=> b!2481532 m!2849537))

(declare-fun m!2849539 () Bool)

(assert (=> b!2481532 m!2849539))

(declare-fun m!2849541 () Bool)

(assert (=> b!2481532 m!2849541))

(assert (=> b!2481532 m!2849537))

(assert (=> b!2481532 m!2849493))

(declare-fun m!2849543 () Bool)

(assert (=> b!2481532 m!2849543))

(declare-fun m!2849545 () Bool)

(assert (=> bm!151979 m!2849545))

(declare-fun m!2849547 () Bool)

(assert (=> b!2481526 m!2849547))

(assert (=> b!2481526 m!2849547))

(declare-fun m!2849549 () Bool)

(assert (=> b!2481526 m!2849549))

(declare-fun m!2849551 () Bool)

(assert (=> b!2481526 m!2849551))

(declare-fun m!2849553 () Bool)

(assert (=> b!2481527 m!2849553))

(assert (=> b!2481485 d!712821))

(declare-fun bs!467429 () Bool)

(declare-fun b!2481541 () Bool)

(assert (= bs!467429 (and b!2481541 b!2481494)))

(declare-fun lambda!93982 () Int)

(assert (=> bs!467429 (= lambda!93982 lambda!93973)))

(declare-fun bs!467430 () Bool)

(assert (= bs!467430 (and b!2481541 d!712811)))

(assert (=> bs!467430 (not (= lambda!93982 lambda!93976))))

(declare-fun bs!467431 () Bool)

(assert (= bs!467431 (and b!2481541 b!2481528)))

(assert (=> bs!467431 (= lambda!93982 lambda!93979)))

(declare-fun d!712823 () Bool)

(declare-fun res!1050562 () Bool)

(declare-fun e!1575195 () Bool)

(assert (=> d!712823 (=> (not res!1050562) (not e!1575195))))

(declare-fun valid!2566 (MutLongMap!3360) Bool)

(assert (=> d!712823 (= res!1050562 (valid!2566 (v!31437 (underlying!6928 thiss!42540))))))

(assert (=> d!712823 (= (valid!2565 thiss!42540) e!1575195)))

(declare-fun res!1050563 () Bool)

(assert (=> b!2481541 (=> (not res!1050563) (not e!1575195))))

(assert (=> b!2481541 (= res!1050563 (forall!5969 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))) lambda!93982))))

(declare-fun b!2481542 () Bool)

(assert (=> b!2481542 (= e!1575195 (allKeysSameHashInMap!165 (map!6190 (v!31437 (underlying!6928 thiss!42540))) (hashF!5229 thiss!42540)))))

(assert (= (and d!712823 res!1050562) b!2481541))

(assert (= (and b!2481541 res!1050563) b!2481542))

(declare-fun m!2849555 () Bool)

(assert (=> d!712823 m!2849555))

(assert (=> b!2481541 m!2849493))

(declare-fun m!2849557 () Bool)

(assert (=> b!2481541 m!2849557))

(assert (=> b!2481542 m!2849493))

(assert (=> b!2481542 m!2849493))

(declare-fun m!2849559 () Bool)

(assert (=> b!2481542 m!2849559))

(assert (=> b!2481489 d!712823))

(declare-fun b!2481561 () Bool)

(declare-fun e!1575210 () Bool)

(declare-fun e!1575213 () Bool)

(assert (=> b!2481561 (= e!1575210 e!1575213)))

(declare-fun res!1050572 () Bool)

(assert (=> b!2481561 (=> (not res!1050572) (not e!1575213))))

(declare-datatypes ((Option!5750 0))(
  ( (None!5749) (Some!5749 (v!31440 V!5687)) )
))
(declare-fun isDefined!4572 (Option!5750) Bool)

(declare-fun getValueByKey!137 (List!29200 K!5485) Option!5750)

(assert (=> b!2481561 (= res!1050572 (isDefined!4572 (getValueByKey!137 (toList!1577 (extractMap!173 (toList!1576 lt!888275))) key!2246)))))

(declare-fun b!2481562 () Bool)

(declare-fun e!1575212 () Unit!42585)

(declare-fun lt!888354 () Unit!42585)

(assert (=> b!2481562 (= e!1575212 lt!888354)))

(declare-fun lt!888357 () Unit!42585)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!94 (List!29200 K!5485) Unit!42585)

(assert (=> b!2481562 (= lt!888357 (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!1577 (extractMap!173 (toList!1576 lt!888275))) key!2246))))

(assert (=> b!2481562 (isDefined!4572 (getValueByKey!137 (toList!1577 (extractMap!173 (toList!1576 lt!888275))) key!2246))))

(declare-fun lt!888355 () Unit!42585)

(assert (=> b!2481562 (= lt!888355 lt!888357)))

(declare-fun lemmaInListThenGetKeysListContains!14 (List!29200 K!5485) Unit!42585)

(assert (=> b!2481562 (= lt!888354 (lemmaInListThenGetKeysListContains!14 (toList!1577 (extractMap!173 (toList!1576 lt!888275))) key!2246))))

(declare-fun call!151987 () Bool)

(assert (=> b!2481562 call!151987))

(declare-fun b!2481563 () Bool)

(declare-fun e!1575211 () Unit!42585)

(declare-fun Unit!42592 () Unit!42585)

(assert (=> b!2481563 (= e!1575211 Unit!42592)))

(declare-fun b!2481564 () Bool)

(assert (=> b!2481564 false))

(declare-fun lt!888356 () Unit!42585)

(declare-fun lt!888358 () Unit!42585)

(assert (=> b!2481564 (= lt!888356 lt!888358)))

(declare-fun containsKey!134 (List!29200 K!5485) Bool)

(assert (=> b!2481564 (containsKey!134 (toList!1577 (extractMap!173 (toList!1576 lt!888275))) key!2246)))

(declare-fun lemmaInGetKeysListThenContainsKey!14 (List!29200 K!5485) Unit!42585)

(assert (=> b!2481564 (= lt!888358 (lemmaInGetKeysListThenContainsKey!14 (toList!1577 (extractMap!173 (toList!1576 lt!888275))) key!2246))))

(declare-fun Unit!42593 () Unit!42585)

(assert (=> b!2481564 (= e!1575211 Unit!42593)))

(declare-fun b!2481565 () Bool)

(declare-datatypes ((List!29202 0))(
  ( (Nil!29102) (Cons!29102 (h!34508 K!5485) (t!210859 List!29202)) )
))
(declare-fun contains!5103 (List!29202 K!5485) Bool)

(declare-fun keys!9310 (ListMap!1059) List!29202)

(assert (=> b!2481565 (= e!1575213 (contains!5103 (keys!9310 (extractMap!173 (toList!1576 lt!888275))) key!2246))))

(declare-fun d!712825 () Bool)

(assert (=> d!712825 e!1575210))

(declare-fun res!1050570 () Bool)

(assert (=> d!712825 (=> res!1050570 e!1575210)))

(declare-fun e!1575208 () Bool)

(assert (=> d!712825 (= res!1050570 e!1575208)))

(declare-fun res!1050571 () Bool)

(assert (=> d!712825 (=> (not res!1050571) (not e!1575208))))

(declare-fun lt!888360 () Bool)

(assert (=> d!712825 (= res!1050571 (not lt!888360))))

(declare-fun lt!888353 () Bool)

(assert (=> d!712825 (= lt!888360 lt!888353)))

(declare-fun lt!888359 () Unit!42585)

(assert (=> d!712825 (= lt!888359 e!1575212)))

(declare-fun c!394518 () Bool)

(assert (=> d!712825 (= c!394518 lt!888353)))

(assert (=> d!712825 (= lt!888353 (containsKey!134 (toList!1577 (extractMap!173 (toList!1576 lt!888275))) key!2246))))

(assert (=> d!712825 (= (contains!5099 (extractMap!173 (toList!1576 lt!888275)) key!2246) lt!888360)))

(declare-fun b!2481566 () Bool)

(declare-fun e!1575209 () List!29202)

(assert (=> b!2481566 (= e!1575209 (keys!9310 (extractMap!173 (toList!1576 lt!888275))))))

(declare-fun b!2481567 () Bool)

(assert (=> b!2481567 (= e!1575208 (not (contains!5103 (keys!9310 (extractMap!173 (toList!1576 lt!888275))) key!2246)))))

(declare-fun bm!151982 () Bool)

(assert (=> bm!151982 (= call!151987 (contains!5103 e!1575209 key!2246))))

(declare-fun c!394517 () Bool)

(assert (=> bm!151982 (= c!394517 c!394518)))

(declare-fun b!2481568 () Bool)

(assert (=> b!2481568 (= e!1575212 e!1575211)))

(declare-fun c!394516 () Bool)

(assert (=> b!2481568 (= c!394516 call!151987)))

(declare-fun b!2481569 () Bool)

(declare-fun getKeysList!17 (List!29200) List!29202)

(assert (=> b!2481569 (= e!1575209 (getKeysList!17 (toList!1577 (extractMap!173 (toList!1576 lt!888275)))))))

(assert (= (and d!712825 c!394518) b!2481562))

(assert (= (and d!712825 (not c!394518)) b!2481568))

(assert (= (and b!2481568 c!394516) b!2481564))

(assert (= (and b!2481568 (not c!394516)) b!2481563))

(assert (= (or b!2481562 b!2481568) bm!151982))

(assert (= (and bm!151982 c!394517) b!2481569))

(assert (= (and bm!151982 (not c!394517)) b!2481566))

(assert (= (and d!712825 res!1050571) b!2481567))

(assert (= (and d!712825 (not res!1050570)) b!2481561))

(assert (= (and b!2481561 res!1050572) b!2481565))

(assert (=> b!2481567 m!2849479))

(declare-fun m!2849561 () Bool)

(assert (=> b!2481567 m!2849561))

(assert (=> b!2481567 m!2849561))

(declare-fun m!2849563 () Bool)

(assert (=> b!2481567 m!2849563))

(declare-fun m!2849565 () Bool)

(assert (=> b!2481569 m!2849565))

(declare-fun m!2849567 () Bool)

(assert (=> bm!151982 m!2849567))

(declare-fun m!2849569 () Bool)

(assert (=> d!712825 m!2849569))

(assert (=> b!2481566 m!2849479))

(assert (=> b!2481566 m!2849561))

(declare-fun m!2849571 () Bool)

(assert (=> b!2481562 m!2849571))

(declare-fun m!2849573 () Bool)

(assert (=> b!2481562 m!2849573))

(assert (=> b!2481562 m!2849573))

(declare-fun m!2849575 () Bool)

(assert (=> b!2481562 m!2849575))

(declare-fun m!2849577 () Bool)

(assert (=> b!2481562 m!2849577))

(assert (=> b!2481565 m!2849479))

(assert (=> b!2481565 m!2849561))

(assert (=> b!2481565 m!2849561))

(assert (=> b!2481565 m!2849563))

(assert (=> b!2481561 m!2849573))

(assert (=> b!2481561 m!2849573))

(assert (=> b!2481561 m!2849575))

(assert (=> b!2481564 m!2849569))

(declare-fun m!2849579 () Bool)

(assert (=> b!2481564 m!2849579))

(assert (=> b!2481490 d!712825))

(declare-fun bs!467432 () Bool)

(declare-fun d!712827 () Bool)

(assert (= bs!467432 (and d!712827 b!2481494)))

(declare-fun lambda!93985 () Int)

(assert (=> bs!467432 (= lambda!93985 lambda!93973)))

(declare-fun bs!467433 () Bool)

(assert (= bs!467433 (and d!712827 d!712811)))

(assert (=> bs!467433 (not (= lambda!93985 lambda!93976))))

(declare-fun bs!467434 () Bool)

(assert (= bs!467434 (and d!712827 b!2481528)))

(assert (=> bs!467434 (= lambda!93985 lambda!93979)))

(declare-fun bs!467435 () Bool)

(assert (= bs!467435 (and d!712827 b!2481541)))

(assert (=> bs!467435 (= lambda!93985 lambda!93982)))

(declare-fun lt!888363 () ListMap!1059)

(declare-fun invariantList!408 (List!29200) Bool)

(assert (=> d!712827 (invariantList!408 (toList!1577 lt!888363))))

(declare-fun e!1575216 () ListMap!1059)

(assert (=> d!712827 (= lt!888363 e!1575216)))

(declare-fun c!394521 () Bool)

(assert (=> d!712827 (= c!394521 ((_ is Cons!29101) (toList!1576 lt!888275)))))

(assert (=> d!712827 (forall!5969 (toList!1576 lt!888275) lambda!93985)))

(assert (=> d!712827 (= (extractMap!173 (toList!1576 lt!888275)) lt!888363)))

(declare-fun b!2481574 () Bool)

(declare-fun addToMapMapFromBucket!14 (List!29200 ListMap!1059) ListMap!1059)

(assert (=> b!2481574 (= e!1575216 (addToMapMapFromBucket!14 (_2!16950 (h!34507 (toList!1576 lt!888275))) (extractMap!173 (t!210858 (toList!1576 lt!888275)))))))

(declare-fun b!2481575 () Bool)

(assert (=> b!2481575 (= e!1575216 (ListMap!1060 Nil!29100))))

(assert (= (and d!712827 c!394521) b!2481574))

(assert (= (and d!712827 (not c!394521)) b!2481575))

(declare-fun m!2849581 () Bool)

(assert (=> d!712827 m!2849581))

(declare-fun m!2849583 () Bool)

(assert (=> d!712827 m!2849583))

(declare-fun m!2849585 () Bool)

(assert (=> b!2481574 m!2849585))

(assert (=> b!2481574 m!2849585))

(declare-fun m!2849587 () Bool)

(assert (=> b!2481574 m!2849587))

(assert (=> b!2481490 d!712827))

(declare-fun b!2481580 () Bool)

(declare-fun e!1575219 () Bool)

(declare-fun tp_is_empty!12249 () Bool)

(declare-fun tp!794393 () Bool)

(assert (=> b!2481580 (= e!1575219 (and tp_is_empty!12247 tp_is_empty!12249 tp!794393))))

(assert (=> b!2481487 (= tp!794390 e!1575219)))

(assert (= (and b!2481487 ((_ is Cons!29100) mapDefault!15544)) b!2481580))

(declare-fun tp!794394 () Bool)

(declare-fun b!2481581 () Bool)

(declare-fun e!1575220 () Bool)

(assert (=> b!2481581 (= e!1575220 (and tp_is_empty!12247 tp_is_empty!12249 tp!794394))))

(assert (=> b!2481493 (= tp!794388 e!1575220)))

(assert (= (and b!2481493 ((_ is Cons!29100) (zeroValue!3618 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540))))))) b!2481581))

(declare-fun tp!794395 () Bool)

(declare-fun b!2481582 () Bool)

(declare-fun e!1575221 () Bool)

(assert (=> b!2481582 (= e!1575221 (and tp_is_empty!12247 tp_is_empty!12249 tp!794395))))

(assert (=> b!2481493 (= tp!794386 e!1575221)))

(assert (= (and b!2481493 ((_ is Cons!29100) (minValue!3618 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540))))))) b!2481582))

(declare-fun mapNonEmpty!15547 () Bool)

(declare-fun mapRes!15547 () Bool)

(declare-fun tp!794403 () Bool)

(declare-fun e!1575227 () Bool)

(assert (=> mapNonEmpty!15547 (= mapRes!15547 (and tp!794403 e!1575227))))

(declare-fun mapValue!15547 () List!29200)

(declare-fun mapKey!15547 () (_ BitVec 32))

(declare-fun mapRest!15547 () (Array (_ BitVec 32) List!29200))

(assert (=> mapNonEmpty!15547 (= mapRest!15544 (store mapRest!15547 mapKey!15547 mapValue!15547))))

(declare-fun condMapEmpty!15547 () Bool)

(declare-fun mapDefault!15547 () List!29200)

(assert (=> mapNonEmpty!15544 (= condMapEmpty!15547 (= mapRest!15544 ((as const (Array (_ BitVec 32) List!29200)) mapDefault!15547)))))

(declare-fun e!1575226 () Bool)

(assert (=> mapNonEmpty!15544 (= tp!794384 (and e!1575226 mapRes!15547))))

(declare-fun mapIsEmpty!15547 () Bool)

(assert (=> mapIsEmpty!15547 mapRes!15547))

(declare-fun tp!794402 () Bool)

(declare-fun b!2481589 () Bool)

(assert (=> b!2481589 (= e!1575227 (and tp_is_empty!12247 tp_is_empty!12249 tp!794402))))

(declare-fun tp!794404 () Bool)

(declare-fun b!2481590 () Bool)

(assert (=> b!2481590 (= e!1575226 (and tp_is_empty!12247 tp_is_empty!12249 tp!794404))))

(assert (= (and mapNonEmpty!15544 condMapEmpty!15547) mapIsEmpty!15547))

(assert (= (and mapNonEmpty!15544 (not condMapEmpty!15547)) mapNonEmpty!15547))

(assert (= (and mapNonEmpty!15547 ((_ is Cons!29100) mapValue!15547)) b!2481589))

(assert (= (and mapNonEmpty!15544 ((_ is Cons!29100) mapDefault!15547)) b!2481590))

(declare-fun m!2849589 () Bool)

(assert (=> mapNonEmpty!15547 m!2849589))

(declare-fun tp!794405 () Bool)

(declare-fun b!2481591 () Bool)

(declare-fun e!1575228 () Bool)

(assert (=> b!2481591 (= e!1575228 (and tp_is_empty!12247 tp_is_empty!12249 tp!794405))))

(assert (=> mapNonEmpty!15544 (= tp!794389 e!1575228)))

(assert (= (and mapNonEmpty!15544 ((_ is Cons!29100) mapValue!15544)) b!2481591))

(declare-fun b_lambda!76105 () Bool)

(assert (= b_lambda!76103 (or b!2481494 b_lambda!76105)))

(declare-fun bs!467436 () Bool)

(declare-fun d!712829 () Bool)

(assert (= bs!467436 (and d!712829 b!2481494)))

(declare-fun noDuplicateKeys!84 (List!29200) Bool)

(assert (=> bs!467436 (= (dynLambda!12464 lambda!93973 (h!34507 (toList!1576 lt!888275))) (noDuplicateKeys!84 (_2!16950 (h!34507 (toList!1576 lt!888275)))))))

(declare-fun m!2849591 () Bool)

(assert (=> bs!467436 m!2849591))

(assert (=> b!2481502 d!712829))

(check-sat (not b_next!73003) (not b!2481580) (not b!2481582) (not b!2481562) b_and!188543 (not b!2481542) (not d!712825) (not b!2481565) (not b!2481581) b_and!188545 (not bm!151978) (not bs!467436) (not mapNonEmpty!15547) (not d!712819) (not b!2481574) (not b!2481569) (not b!2481566) (not b!2481564) (not d!712811) (not b!2481532) (not b!2481528) tp_is_empty!12249 (not b!2481590) (not b_lambda!76105) (not b!2481561) (not bm!151975) (not b!2481589) (not b!2481567) tp_is_empty!12247 (not bm!151976) (not d!712823) (not bm!151977) (not b!2481503) (not d!712827) (not b!2481533) (not b!2481541) (not bm!151979) (not b!2481591) (not b!2481526) (not bm!151974) (not b_next!73001) (not bm!151982) (not d!712821) (not b!2481527))
(check-sat b_and!188545 b_and!188543 (not b_next!73001) (not b_next!73003))
(get-model)

(declare-fun d!712831 () Bool)

(declare-fun get!8973 (Option!5749) List!29200)

(assert (=> d!712831 (= (apply!6914 (ite c!394509 lt!888323 call!151979) call!151981) (get!8973 (getValueByKey!136 (toList!1576 (ite c!394509 lt!888323 call!151979)) call!151981)))))

(declare-fun bs!467437 () Bool)

(assert (= bs!467437 d!712831))

(declare-fun m!2849593 () Bool)

(assert (=> bs!467437 m!2849593))

(assert (=> bs!467437 m!2849593))

(declare-fun m!2849595 () Bool)

(assert (=> bs!467437 m!2849595))

(assert (=> bm!151974 d!712831))

(declare-fun bs!467438 () Bool)

(declare-fun d!712833 () Bool)

(assert (= bs!467438 (and d!712833 b!2481541)))

(declare-fun lambda!93988 () Int)

(assert (=> bs!467438 (= lambda!93988 lambda!93982)))

(declare-fun bs!467439 () Bool)

(assert (= bs!467439 (and d!712833 b!2481528)))

(assert (=> bs!467439 (= lambda!93988 lambda!93979)))

(declare-fun bs!467440 () Bool)

(assert (= bs!467440 (and d!712833 d!712811)))

(assert (=> bs!467440 (not (= lambda!93988 lambda!93976))))

(declare-fun bs!467441 () Bool)

(assert (= bs!467441 (and d!712833 b!2481494)))

(assert (=> bs!467441 (= lambda!93988 lambda!93973)))

(declare-fun bs!467442 () Bool)

(assert (= bs!467442 (and d!712833 d!712827)))

(assert (=> bs!467442 (= lambda!93988 lambda!93985)))

(declare-fun e!1575231 () Bool)

(assert (=> d!712833 e!1575231))

(declare-fun res!1050575 () Bool)

(assert (=> d!712833 (=> (not res!1050575) (not e!1575231))))

(assert (=> d!712833 (= res!1050575 (contains!5102 lt!888323 (hash!687 (hashF!5229 thiss!42540) key!2246)))))

(declare-fun lt!888366 () Unit!42585)

(declare-fun choose!14638 (ListLongMap!523 K!5485 Hashable!3270) Unit!42585)

(assert (=> d!712833 (= lt!888366 (choose!14638 lt!888323 key!2246 (hashF!5229 thiss!42540)))))

(assert (=> d!712833 (forall!5969 (toList!1576 lt!888323) lambda!93988)))

(assert (=> d!712833 (= (lemmaInGenericMapThenInLongMap!69 lt!888323 key!2246 (hashF!5229 thiss!42540)) lt!888366)))

(declare-fun b!2481594 () Bool)

(assert (=> b!2481594 (= e!1575231 (isDefined!4570 (getPair!69 (apply!6914 lt!888323 (hash!687 (hashF!5229 thiss!42540) key!2246)) key!2246)))))

(assert (= (and d!712833 res!1050575) b!2481594))

(assert (=> d!712833 m!2849513))

(assert (=> d!712833 m!2849513))

(declare-fun m!2849597 () Bool)

(assert (=> d!712833 m!2849597))

(declare-fun m!2849599 () Bool)

(assert (=> d!712833 m!2849599))

(declare-fun m!2849601 () Bool)

(assert (=> d!712833 m!2849601))

(assert (=> b!2481594 m!2849513))

(assert (=> b!2481594 m!2849513))

(declare-fun m!2849603 () Bool)

(assert (=> b!2481594 m!2849603))

(assert (=> b!2481594 m!2849603))

(declare-fun m!2849605 () Bool)

(assert (=> b!2481594 m!2849605))

(assert (=> b!2481594 m!2849605))

(declare-fun m!2849607 () Bool)

(assert (=> b!2481594 m!2849607))

(assert (=> b!2481527 d!712833))

(declare-fun d!712835 () Bool)

(declare-fun isEmpty!16777 (Option!5750) Bool)

(assert (=> d!712835 (= (isDefined!4572 (getValueByKey!137 (toList!1577 (extractMap!173 (toList!1576 lt!888275))) key!2246)) (not (isEmpty!16777 (getValueByKey!137 (toList!1577 (extractMap!173 (toList!1576 lt!888275))) key!2246))))))

(declare-fun bs!467443 () Bool)

(assert (= bs!467443 d!712835))

(assert (=> bs!467443 m!2849573))

(declare-fun m!2849609 () Bool)

(assert (=> bs!467443 m!2849609))

(assert (=> b!2481561 d!712835))

(declare-fun b!2481605 () Bool)

(declare-fun e!1575237 () Option!5750)

(assert (=> b!2481605 (= e!1575237 (getValueByKey!137 (t!210857 (toList!1577 (extractMap!173 (toList!1576 lt!888275)))) key!2246))))

(declare-fun b!2481603 () Bool)

(declare-fun e!1575236 () Option!5750)

(assert (=> b!2481603 (= e!1575236 (Some!5749 (_2!16949 (h!34506 (toList!1577 (extractMap!173 (toList!1576 lt!888275)))))))))

(declare-fun b!2481606 () Bool)

(assert (=> b!2481606 (= e!1575237 None!5749)))

(declare-fun d!712837 () Bool)

(declare-fun c!394526 () Bool)

(assert (=> d!712837 (= c!394526 (and ((_ is Cons!29100) (toList!1577 (extractMap!173 (toList!1576 lt!888275)))) (= (_1!16949 (h!34506 (toList!1577 (extractMap!173 (toList!1576 lt!888275))))) key!2246)))))

(assert (=> d!712837 (= (getValueByKey!137 (toList!1577 (extractMap!173 (toList!1576 lt!888275))) key!2246) e!1575236)))

(declare-fun b!2481604 () Bool)

(assert (=> b!2481604 (= e!1575236 e!1575237)))

(declare-fun c!394527 () Bool)

(assert (=> b!2481604 (= c!394527 (and ((_ is Cons!29100) (toList!1577 (extractMap!173 (toList!1576 lt!888275)))) (not (= (_1!16949 (h!34506 (toList!1577 (extractMap!173 (toList!1576 lt!888275))))) key!2246))))))

(assert (= (and d!712837 c!394526) b!2481603))

(assert (= (and d!712837 (not c!394526)) b!2481604))

(assert (= (and b!2481604 c!394527) b!2481605))

(assert (= (and b!2481604 (not c!394527)) b!2481606))

(declare-fun m!2849611 () Bool)

(assert (=> b!2481605 m!2849611))

(assert (=> b!2481561 d!712837))

(declare-fun d!712839 () Bool)

(declare-fun isEmpty!16778 (Option!5748) Bool)

(assert (=> d!712839 (= (isDefined!4570 call!151984) (not (isEmpty!16778 call!151984)))))

(declare-fun bs!467444 () Bool)

(assert (= bs!467444 d!712839))

(declare-fun m!2849613 () Bool)

(assert (=> bs!467444 m!2849613))

(assert (=> bm!151975 d!712839))

(declare-fun d!712841 () Bool)

(assert (=> d!712841 (isDefined!4572 (getValueByKey!137 (toList!1577 (extractMap!173 (toList!1576 lt!888275))) key!2246))))

(declare-fun lt!888369 () Unit!42585)

(declare-fun choose!14639 (List!29200 K!5485) Unit!42585)

(assert (=> d!712841 (= lt!888369 (choose!14639 (toList!1577 (extractMap!173 (toList!1576 lt!888275))) key!2246))))

(assert (=> d!712841 (invariantList!408 (toList!1577 (extractMap!173 (toList!1576 lt!888275))))))

(assert (=> d!712841 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!1577 (extractMap!173 (toList!1576 lt!888275))) key!2246) lt!888369)))

(declare-fun bs!467445 () Bool)

(assert (= bs!467445 d!712841))

(assert (=> bs!467445 m!2849573))

(assert (=> bs!467445 m!2849573))

(assert (=> bs!467445 m!2849575))

(declare-fun m!2849615 () Bool)

(assert (=> bs!467445 m!2849615))

(declare-fun m!2849617 () Bool)

(assert (=> bs!467445 m!2849617))

(assert (=> b!2481562 d!712841))

(assert (=> b!2481562 d!712835))

(assert (=> b!2481562 d!712837))

(declare-fun d!712843 () Bool)

(assert (=> d!712843 (contains!5103 (getKeysList!17 (toList!1577 (extractMap!173 (toList!1576 lt!888275)))) key!2246)))

(declare-fun lt!888372 () Unit!42585)

(declare-fun choose!14640 (List!29200 K!5485) Unit!42585)

(assert (=> d!712843 (= lt!888372 (choose!14640 (toList!1577 (extractMap!173 (toList!1576 lt!888275))) key!2246))))

(assert (=> d!712843 (invariantList!408 (toList!1577 (extractMap!173 (toList!1576 lt!888275))))))

(assert (=> d!712843 (= (lemmaInListThenGetKeysListContains!14 (toList!1577 (extractMap!173 (toList!1576 lt!888275))) key!2246) lt!888372)))

(declare-fun bs!467446 () Bool)

(assert (= bs!467446 d!712843))

(assert (=> bs!467446 m!2849565))

(assert (=> bs!467446 m!2849565))

(declare-fun m!2849619 () Bool)

(assert (=> bs!467446 m!2849619))

(declare-fun m!2849621 () Bool)

(assert (=> bs!467446 m!2849621))

(assert (=> bs!467446 m!2849617))

(assert (=> b!2481562 d!712843))

(declare-fun d!712845 () Bool)

(declare-fun hash!688 (Hashable!3270 K!5485) (_ BitVec 64))

(assert (=> d!712845 (= (hash!687 (hashF!5229 thiss!42540) key!2246) (hash!688 (hashF!5229 thiss!42540) key!2246))))

(declare-fun bs!467447 () Bool)

(assert (= bs!467447 d!712845))

(declare-fun m!2849623 () Bool)

(assert (=> bs!467447 m!2849623))

(assert (=> bm!151976 d!712845))

(declare-fun d!712847 () Bool)

(assert (=> d!712847 (dynLambda!12464 lambda!93979 (tuple2!28819 lt!888330 (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330)))))

(declare-fun lt!888375 () Unit!42585)

(declare-fun choose!14641 (List!29201 Int tuple2!28818) Unit!42585)

(assert (=> d!712847 (= lt!888375 (choose!14641 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))) lambda!93979 (tuple2!28819 lt!888330 (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330))))))

(declare-fun e!1575240 () Bool)

(assert (=> d!712847 e!1575240))

(declare-fun res!1050578 () Bool)

(assert (=> d!712847 (=> (not res!1050578) (not e!1575240))))

(assert (=> d!712847 (= res!1050578 (forall!5969 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))) lambda!93979))))

(assert (=> d!712847 (= (forallContained!855 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))) lambda!93979 (tuple2!28819 lt!888330 (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330))) lt!888375)))

(declare-fun b!2481609 () Bool)

(assert (=> b!2481609 (= e!1575240 (contains!5100 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))) (tuple2!28819 lt!888330 (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330))))))

(assert (= (and d!712847 res!1050578) b!2481609))

(declare-fun b_lambda!76107 () Bool)

(assert (=> (not b_lambda!76107) (not d!712847)))

(declare-fun m!2849625 () Bool)

(assert (=> d!712847 m!2849625))

(declare-fun m!2849627 () Bool)

(assert (=> d!712847 m!2849627))

(declare-fun m!2849629 () Bool)

(assert (=> d!712847 m!2849629))

(assert (=> b!2481609 m!2849527))

(assert (=> b!2481528 d!712847))

(assert (=> b!2481528 d!712819))

(declare-fun d!712849 () Bool)

(declare-fun e!1575243 () Bool)

(assert (=> d!712849 e!1575243))

(declare-fun c!394530 () Bool)

(assert (=> d!712849 (= c!394530 (contains!5101 (v!31437 (underlying!6928 thiss!42540)) lt!888330))))

(declare-fun lt!888378 () List!29200)

(declare-fun apply!6916 (LongMapFixedSize!6720 (_ BitVec 64)) List!29200)

(assert (=> d!712849 (= lt!888378 (apply!6916 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540)))) lt!888330))))

(assert (=> d!712849 (valid!2566 (v!31437 (underlying!6928 thiss!42540)))))

(assert (=> d!712849 (= (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330) lt!888378)))

(declare-fun b!2481614 () Bool)

(assert (=> b!2481614 (= e!1575243 (= lt!888378 (get!8973 (getValueByKey!136 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))) lt!888330))))))

(declare-fun b!2481615 () Bool)

(declare-fun dynLambda!12465 (Int (_ BitVec 64)) List!29200)

(assert (=> b!2481615 (= e!1575243 (= lt!888378 (dynLambda!12465 (defaultEntry!3734 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540))))) lt!888330)))))

(assert (=> b!2481615 ((_ is LongMap!3360) (v!31437 (underlying!6928 thiss!42540)))))

(assert (= (and d!712849 c!394530) b!2481614))

(assert (= (and d!712849 (not c!394530)) b!2481615))

(declare-fun b_lambda!76109 () Bool)

(assert (=> (not b_lambda!76109) (not b!2481615)))

(declare-fun t!210861 () Bool)

(declare-fun tb!140375 () Bool)

(assert (=> (and b!2481493 (= (defaultEntry!3734 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540))))) (defaultEntry!3734 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540)))))) t!210861) tb!140375))

(assert (=> b!2481615 t!210861))

(declare-fun result!173324 () Bool)

(declare-fun b_and!188547 () Bool)

(assert (= b_and!188543 (and (=> t!210861 result!173324) b_and!188547)))

(assert (=> d!712849 m!2849515))

(declare-fun m!2849631 () Bool)

(assert (=> d!712849 m!2849631))

(assert (=> d!712849 m!2849555))

(assert (=> b!2481614 m!2849493))

(declare-fun m!2849633 () Bool)

(assert (=> b!2481614 m!2849633))

(assert (=> b!2481614 m!2849633))

(declare-fun m!2849635 () Bool)

(assert (=> b!2481614 m!2849635))

(declare-fun m!2849637 () Bool)

(assert (=> b!2481615 m!2849637))

(assert (=> b!2481528 d!712849))

(declare-fun d!712851 () Bool)

(declare-fun lt!888381 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3974 (List!29201) (InoxSet tuple2!28818))

(assert (=> d!712851 (= lt!888381 (select (content!3974 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540))))) (tuple2!28819 lt!888330 (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330))))))

(declare-fun e!1575248 () Bool)

(assert (=> d!712851 (= lt!888381 e!1575248)))

(declare-fun res!1050584 () Bool)

(assert (=> d!712851 (=> (not res!1050584) (not e!1575248))))

(assert (=> d!712851 (= res!1050584 ((_ is Cons!29101) (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540))))))))

(assert (=> d!712851 (= (contains!5100 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))) (tuple2!28819 lt!888330 (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330))) lt!888381)))

(declare-fun b!2481620 () Bool)

(declare-fun e!1575249 () Bool)

(assert (=> b!2481620 (= e!1575248 e!1575249)))

(declare-fun res!1050583 () Bool)

(assert (=> b!2481620 (=> res!1050583 e!1575249)))

(assert (=> b!2481620 (= res!1050583 (= (h!34507 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540))))) (tuple2!28819 lt!888330 (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330))))))

(declare-fun b!2481621 () Bool)

(assert (=> b!2481621 (= e!1575249 (contains!5100 (t!210858 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540))))) (tuple2!28819 lt!888330 (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330))))))

(assert (= (and d!712851 res!1050584) b!2481620))

(assert (= (and b!2481620 (not res!1050583)) b!2481621))

(declare-fun m!2849639 () Bool)

(assert (=> d!712851 m!2849639))

(declare-fun m!2849641 () Bool)

(assert (=> d!712851 m!2849641))

(declare-fun m!2849643 () Bool)

(assert (=> b!2481621 m!2849643))

(assert (=> b!2481528 d!712851))

(declare-fun d!712853 () Bool)

(declare-fun res!1050589 () Bool)

(declare-fun e!1575254 () Bool)

(assert (=> d!712853 (=> res!1050589 e!1575254)))

(assert (=> d!712853 (= res!1050589 (not ((_ is Cons!29100) (_2!16950 (h!34507 (toList!1576 lt!888275))))))))

(assert (=> d!712853 (= (noDuplicateKeys!84 (_2!16950 (h!34507 (toList!1576 lt!888275)))) e!1575254)))

(declare-fun b!2481626 () Bool)

(declare-fun e!1575255 () Bool)

(assert (=> b!2481626 (= e!1575254 e!1575255)))

(declare-fun res!1050590 () Bool)

(assert (=> b!2481626 (=> (not res!1050590) (not e!1575255))))

(declare-fun containsKey!135 (List!29200 K!5485) Bool)

(assert (=> b!2481626 (= res!1050590 (not (containsKey!135 (t!210857 (_2!16950 (h!34507 (toList!1576 lt!888275)))) (_1!16949 (h!34506 (_2!16950 (h!34507 (toList!1576 lt!888275))))))))))

(declare-fun b!2481627 () Bool)

(assert (=> b!2481627 (= e!1575255 (noDuplicateKeys!84 (t!210857 (_2!16950 (h!34507 (toList!1576 lt!888275))))))))

(assert (= (and d!712853 (not res!1050589)) b!2481626))

(assert (= (and b!2481626 res!1050590) b!2481627))

(declare-fun m!2849645 () Bool)

(assert (=> b!2481626 m!2849645))

(declare-fun m!2849647 () Bool)

(assert (=> b!2481627 m!2849647))

(assert (=> bs!467436 d!712853))

(declare-fun d!712855 () Bool)

(declare-fun res!1050591 () Bool)

(declare-fun e!1575256 () Bool)

(assert (=> d!712855 (=> res!1050591 e!1575256)))

(assert (=> d!712855 (= res!1050591 ((_ is Nil!29101) (toList!1576 lt!888275)))))

(assert (=> d!712855 (= (forall!5969 (toList!1576 lt!888275) lambda!93976) e!1575256)))

(declare-fun b!2481628 () Bool)

(declare-fun e!1575257 () Bool)

(assert (=> b!2481628 (= e!1575256 e!1575257)))

(declare-fun res!1050592 () Bool)

(assert (=> b!2481628 (=> (not res!1050592) (not e!1575257))))

(assert (=> b!2481628 (= res!1050592 (dynLambda!12464 lambda!93976 (h!34507 (toList!1576 lt!888275))))))

(declare-fun b!2481629 () Bool)

(assert (=> b!2481629 (= e!1575257 (forall!5969 (t!210858 (toList!1576 lt!888275)) lambda!93976))))

(assert (= (and d!712855 (not res!1050591)) b!2481628))

(assert (= (and b!2481628 res!1050592) b!2481629))

(declare-fun b_lambda!76111 () Bool)

(assert (=> (not b_lambda!76111) (not b!2481628)))

(declare-fun m!2849649 () Bool)

(assert (=> b!2481628 m!2849649))

(declare-fun m!2849651 () Bool)

(assert (=> b!2481629 m!2849651))

(assert (=> d!712811 d!712855))

(declare-fun d!712857 () Bool)

(declare-fun getCurrentListMap!12 (array!11903 array!11901 (_ BitVec 32) (_ BitVec 32) List!29200 List!29200 (_ BitVec 32) Int) ListLongMap!523)

(assert (=> d!712857 (= (map!6191 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540))))) (getCurrentListMap!12 (_keys!3657 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540))))) (_values!3640 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540))))) (mask!8529 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540))))) (extraKeys!3608 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540))))) (zeroValue!3618 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540))))) (minValue!3618 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540))))) #b00000000000000000000000000000000 (defaultEntry!3734 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540)))))))))

(declare-fun bs!467448 () Bool)

(assert (= bs!467448 d!712857))

(declare-fun m!2849653 () Bool)

(assert (=> bs!467448 m!2849653))

(assert (=> d!712819 d!712857))

(declare-fun d!712859 () Bool)

(declare-fun res!1050597 () Bool)

(declare-fun e!1575262 () Bool)

(assert (=> d!712859 (=> res!1050597 e!1575262)))

(assert (=> d!712859 (= res!1050597 (and ((_ is Cons!29100) (toList!1577 (extractMap!173 (toList!1576 lt!888275)))) (= (_1!16949 (h!34506 (toList!1577 (extractMap!173 (toList!1576 lt!888275))))) key!2246)))))

(assert (=> d!712859 (= (containsKey!134 (toList!1577 (extractMap!173 (toList!1576 lt!888275))) key!2246) e!1575262)))

(declare-fun b!2481634 () Bool)

(declare-fun e!1575263 () Bool)

(assert (=> b!2481634 (= e!1575262 e!1575263)))

(declare-fun res!1050598 () Bool)

(assert (=> b!2481634 (=> (not res!1050598) (not e!1575263))))

(assert (=> b!2481634 (= res!1050598 ((_ is Cons!29100) (toList!1577 (extractMap!173 (toList!1576 lt!888275)))))))

(declare-fun b!2481635 () Bool)

(assert (=> b!2481635 (= e!1575263 (containsKey!134 (t!210857 (toList!1577 (extractMap!173 (toList!1576 lt!888275)))) key!2246))))

(assert (= (and d!712859 (not res!1050597)) b!2481634))

(assert (= (and b!2481634 res!1050598) b!2481635))

(declare-fun m!2849655 () Bool)

(assert (=> b!2481635 m!2849655))

(assert (=> d!712825 d!712859))

(declare-fun b!2481636 () Bool)

(declare-fun e!1575266 () Bool)

(declare-fun e!1575269 () Bool)

(assert (=> b!2481636 (= e!1575266 e!1575269)))

(declare-fun res!1050601 () Bool)

(assert (=> b!2481636 (=> (not res!1050601) (not e!1575269))))

(assert (=> b!2481636 (= res!1050601 (isDefined!4572 (getValueByKey!137 (toList!1577 (extractMap!173 (toList!1576 lt!888320))) key!2246)))))

(declare-fun b!2481637 () Bool)

(declare-fun e!1575268 () Unit!42585)

(declare-fun lt!888383 () Unit!42585)

(assert (=> b!2481637 (= e!1575268 lt!888383)))

(declare-fun lt!888386 () Unit!42585)

(assert (=> b!2481637 (= lt!888386 (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!1577 (extractMap!173 (toList!1576 lt!888320))) key!2246))))

(assert (=> b!2481637 (isDefined!4572 (getValueByKey!137 (toList!1577 (extractMap!173 (toList!1576 lt!888320))) key!2246))))

(declare-fun lt!888384 () Unit!42585)

(assert (=> b!2481637 (= lt!888384 lt!888386)))

(assert (=> b!2481637 (= lt!888383 (lemmaInListThenGetKeysListContains!14 (toList!1577 (extractMap!173 (toList!1576 lt!888320))) key!2246))))

(declare-fun call!151988 () Bool)

(assert (=> b!2481637 call!151988))

(declare-fun b!2481638 () Bool)

(declare-fun e!1575267 () Unit!42585)

(declare-fun Unit!42594 () Unit!42585)

(assert (=> b!2481638 (= e!1575267 Unit!42594)))

(declare-fun b!2481639 () Bool)

(assert (=> b!2481639 false))

(declare-fun lt!888385 () Unit!42585)

(declare-fun lt!888387 () Unit!42585)

(assert (=> b!2481639 (= lt!888385 lt!888387)))

(assert (=> b!2481639 (containsKey!134 (toList!1577 (extractMap!173 (toList!1576 lt!888320))) key!2246)))

(assert (=> b!2481639 (= lt!888387 (lemmaInGetKeysListThenContainsKey!14 (toList!1577 (extractMap!173 (toList!1576 lt!888320))) key!2246))))

(declare-fun Unit!42595 () Unit!42585)

(assert (=> b!2481639 (= e!1575267 Unit!42595)))

(declare-fun b!2481640 () Bool)

(assert (=> b!2481640 (= e!1575269 (contains!5103 (keys!9310 (extractMap!173 (toList!1576 lt!888320))) key!2246))))

(declare-fun d!712861 () Bool)

(assert (=> d!712861 e!1575266))

(declare-fun res!1050599 () Bool)

(assert (=> d!712861 (=> res!1050599 e!1575266)))

(declare-fun e!1575264 () Bool)

(assert (=> d!712861 (= res!1050599 e!1575264)))

(declare-fun res!1050600 () Bool)

(assert (=> d!712861 (=> (not res!1050600) (not e!1575264))))

(declare-fun lt!888389 () Bool)

(assert (=> d!712861 (= res!1050600 (not lt!888389))))

(declare-fun lt!888382 () Bool)

(assert (=> d!712861 (= lt!888389 lt!888382)))

(declare-fun lt!888388 () Unit!42585)

(assert (=> d!712861 (= lt!888388 e!1575268)))

(declare-fun c!394533 () Bool)

(assert (=> d!712861 (= c!394533 lt!888382)))

(assert (=> d!712861 (= lt!888382 (containsKey!134 (toList!1577 (extractMap!173 (toList!1576 lt!888320))) key!2246))))

(assert (=> d!712861 (= (contains!5099 (extractMap!173 (toList!1576 lt!888320)) key!2246) lt!888389)))

(declare-fun b!2481641 () Bool)

(declare-fun e!1575265 () List!29202)

(assert (=> b!2481641 (= e!1575265 (keys!9310 (extractMap!173 (toList!1576 lt!888320))))))

(declare-fun b!2481642 () Bool)

(assert (=> b!2481642 (= e!1575264 (not (contains!5103 (keys!9310 (extractMap!173 (toList!1576 lt!888320))) key!2246)))))

(declare-fun bm!151983 () Bool)

(assert (=> bm!151983 (= call!151988 (contains!5103 e!1575265 key!2246))))

(declare-fun c!394532 () Bool)

(assert (=> bm!151983 (= c!394532 c!394533)))

(declare-fun b!2481643 () Bool)

(assert (=> b!2481643 (= e!1575268 e!1575267)))

(declare-fun c!394531 () Bool)

(assert (=> b!2481643 (= c!394531 call!151988)))

(declare-fun b!2481644 () Bool)

(assert (=> b!2481644 (= e!1575265 (getKeysList!17 (toList!1577 (extractMap!173 (toList!1576 lt!888320)))))))

(assert (= (and d!712861 c!394533) b!2481637))

(assert (= (and d!712861 (not c!394533)) b!2481643))

(assert (= (and b!2481643 c!394531) b!2481639))

(assert (= (and b!2481643 (not c!394531)) b!2481638))

(assert (= (or b!2481637 b!2481643) bm!151983))

(assert (= (and bm!151983 c!394532) b!2481644))

(assert (= (and bm!151983 (not c!394532)) b!2481641))

(assert (= (and d!712861 res!1050600) b!2481642))

(assert (= (and d!712861 (not res!1050599)) b!2481636))

(assert (= (and b!2481636 res!1050601) b!2481640))

(assert (=> b!2481642 m!2849547))

(declare-fun m!2849657 () Bool)

(assert (=> b!2481642 m!2849657))

(assert (=> b!2481642 m!2849657))

(declare-fun m!2849659 () Bool)

(assert (=> b!2481642 m!2849659))

(declare-fun m!2849661 () Bool)

(assert (=> b!2481644 m!2849661))

(declare-fun m!2849663 () Bool)

(assert (=> bm!151983 m!2849663))

(declare-fun m!2849665 () Bool)

(assert (=> d!712861 m!2849665))

(assert (=> b!2481641 m!2849547))

(assert (=> b!2481641 m!2849657))

(declare-fun m!2849667 () Bool)

(assert (=> b!2481637 m!2849667))

(declare-fun m!2849669 () Bool)

(assert (=> b!2481637 m!2849669))

(assert (=> b!2481637 m!2849669))

(declare-fun m!2849671 () Bool)

(assert (=> b!2481637 m!2849671))

(declare-fun m!2849673 () Bool)

(assert (=> b!2481637 m!2849673))

(assert (=> b!2481640 m!2849547))

(assert (=> b!2481640 m!2849657))

(assert (=> b!2481640 m!2849657))

(assert (=> b!2481640 m!2849659))

(assert (=> b!2481636 m!2849669))

(assert (=> b!2481636 m!2849669))

(assert (=> b!2481636 m!2849671))

(assert (=> b!2481639 m!2849665))

(declare-fun m!2849675 () Bool)

(assert (=> b!2481639 m!2849675))

(assert (=> b!2481526 d!712861))

(declare-fun bs!467449 () Bool)

(declare-fun d!712863 () Bool)

(assert (= bs!467449 (and d!712863 d!712833)))

(declare-fun lambda!93989 () Int)

(assert (=> bs!467449 (= lambda!93989 lambda!93988)))

(declare-fun bs!467450 () Bool)

(assert (= bs!467450 (and d!712863 b!2481541)))

(assert (=> bs!467450 (= lambda!93989 lambda!93982)))

(declare-fun bs!467451 () Bool)

(assert (= bs!467451 (and d!712863 b!2481528)))

(assert (=> bs!467451 (= lambda!93989 lambda!93979)))

(declare-fun bs!467452 () Bool)

(assert (= bs!467452 (and d!712863 d!712811)))

(assert (=> bs!467452 (not (= lambda!93989 lambda!93976))))

(declare-fun bs!467453 () Bool)

(assert (= bs!467453 (and d!712863 b!2481494)))

(assert (=> bs!467453 (= lambda!93989 lambda!93973)))

(declare-fun bs!467454 () Bool)

(assert (= bs!467454 (and d!712863 d!712827)))

(assert (=> bs!467454 (= lambda!93989 lambda!93985)))

(declare-fun lt!888390 () ListMap!1059)

(assert (=> d!712863 (invariantList!408 (toList!1577 lt!888390))))

(declare-fun e!1575270 () ListMap!1059)

(assert (=> d!712863 (= lt!888390 e!1575270)))

(declare-fun c!394534 () Bool)

(assert (=> d!712863 (= c!394534 ((_ is Cons!29101) (toList!1576 lt!888320)))))

(assert (=> d!712863 (forall!5969 (toList!1576 lt!888320) lambda!93989)))

(assert (=> d!712863 (= (extractMap!173 (toList!1576 lt!888320)) lt!888390)))

(declare-fun b!2481645 () Bool)

(assert (=> b!2481645 (= e!1575270 (addToMapMapFromBucket!14 (_2!16950 (h!34507 (toList!1576 lt!888320))) (extractMap!173 (t!210858 (toList!1576 lt!888320)))))))

(declare-fun b!2481646 () Bool)

(assert (=> b!2481646 (= e!1575270 (ListMap!1060 Nil!29100))))

(assert (= (and d!712863 c!394534) b!2481645))

(assert (= (and d!712863 (not c!394534)) b!2481646))

(declare-fun m!2849677 () Bool)

(assert (=> d!712863 m!2849677))

(declare-fun m!2849679 () Bool)

(assert (=> d!712863 m!2849679))

(declare-fun m!2849681 () Bool)

(assert (=> b!2481645 m!2849681))

(assert (=> b!2481645 m!2849681))

(declare-fun m!2849683 () Bool)

(assert (=> b!2481645 m!2849683))

(assert (=> b!2481526 d!712863))

(declare-fun bs!467455 () Bool)

(declare-fun d!712865 () Bool)

(assert (= bs!467455 (and d!712865 d!712833)))

(declare-fun lambda!93992 () Int)

(assert (=> bs!467455 (= lambda!93992 lambda!93988)))

(declare-fun bs!467456 () Bool)

(assert (= bs!467456 (and d!712865 b!2481541)))

(assert (=> bs!467456 (= lambda!93992 lambda!93982)))

(declare-fun bs!467457 () Bool)

(assert (= bs!467457 (and d!712865 b!2481528)))

(assert (=> bs!467457 (= lambda!93992 lambda!93979)))

(declare-fun bs!467458 () Bool)

(assert (= bs!467458 (and d!712865 d!712811)))

(assert (=> bs!467458 (not (= lambda!93992 lambda!93976))))

(declare-fun bs!467459 () Bool)

(assert (= bs!467459 (and d!712865 b!2481494)))

(assert (=> bs!467459 (= lambda!93992 lambda!93973)))

(declare-fun bs!467460 () Bool)

(assert (= bs!467460 (and d!712865 d!712863)))

(assert (=> bs!467460 (= lambda!93992 lambda!93989)))

(declare-fun bs!467461 () Bool)

(assert (= bs!467461 (and d!712865 d!712827)))

(assert (=> bs!467461 (= lambda!93992 lambda!93985)))

(assert (=> d!712865 (contains!5099 (extractMap!173 (toList!1576 lt!888320)) key!2246)))

(declare-fun lt!888393 () Unit!42585)

(declare-fun choose!14642 (ListLongMap!523 K!5485 Hashable!3270) Unit!42585)

(assert (=> d!712865 (= lt!888393 (choose!14642 lt!888320 key!2246 (hashF!5229 thiss!42540)))))

(assert (=> d!712865 (forall!5969 (toList!1576 lt!888320) lambda!93992)))

(assert (=> d!712865 (= (lemmaInLongMapThenInGenericMap!69 lt!888320 key!2246 (hashF!5229 thiss!42540)) lt!888393)))

(declare-fun bs!467462 () Bool)

(assert (= bs!467462 d!712865))

(assert (=> bs!467462 m!2849547))

(assert (=> bs!467462 m!2849547))

(assert (=> bs!467462 m!2849549))

(declare-fun m!2849685 () Bool)

(assert (=> bs!467462 m!2849685))

(declare-fun m!2849687 () Bool)

(assert (=> bs!467462 m!2849687))

(assert (=> b!2481526 d!712865))

(declare-fun b!2481666 () Bool)

(assert (=> b!2481666 true))

(declare-fun bs!467463 () Bool)

(declare-fun b!2481671 () Bool)

(assert (= bs!467463 (and b!2481671 b!2481666)))

(declare-fun lambda!94002 () Int)

(declare-fun lambda!94001 () Int)

(assert (=> bs!467463 (= (= (Cons!29100 (h!34506 (toList!1577 (extractMap!173 (toList!1576 lt!888275)))) (t!210857 (toList!1577 (extractMap!173 (toList!1576 lt!888275))))) (t!210857 (toList!1577 (extractMap!173 (toList!1576 lt!888275))))) (= lambda!94002 lambda!94001))))

(assert (=> b!2481671 true))

(declare-fun bs!467464 () Bool)

(declare-fun b!2481670 () Bool)

(assert (= bs!467464 (and b!2481670 b!2481666)))

(declare-fun lambda!94003 () Int)

(assert (=> bs!467464 (= (= (toList!1577 (extractMap!173 (toList!1576 lt!888275))) (t!210857 (toList!1577 (extractMap!173 (toList!1576 lt!888275))))) (= lambda!94003 lambda!94001))))

(declare-fun bs!467465 () Bool)

(assert (= bs!467465 (and b!2481670 b!2481671)))

(assert (=> bs!467465 (= (= (toList!1577 (extractMap!173 (toList!1576 lt!888275))) (Cons!29100 (h!34506 (toList!1577 (extractMap!173 (toList!1576 lt!888275)))) (t!210857 (toList!1577 (extractMap!173 (toList!1576 lt!888275)))))) (= lambda!94003 lambda!94002))))

(assert (=> b!2481670 true))

(declare-fun d!712867 () Bool)

(declare-fun e!1575280 () Bool)

(assert (=> d!712867 e!1575280))

(declare-fun res!1050608 () Bool)

(assert (=> d!712867 (=> (not res!1050608) (not e!1575280))))

(declare-fun lt!888412 () List!29202)

(declare-fun noDuplicate!323 (List!29202) Bool)

(assert (=> d!712867 (= res!1050608 (noDuplicate!323 lt!888412))))

(declare-fun e!1575282 () List!29202)

(assert (=> d!712867 (= lt!888412 e!1575282)))

(declare-fun c!394541 () Bool)

(assert (=> d!712867 (= c!394541 ((_ is Cons!29100) (toList!1577 (extractMap!173 (toList!1576 lt!888275)))))))

(assert (=> d!712867 (invariantList!408 (toList!1577 (extractMap!173 (toList!1576 lt!888275))))))

(assert (=> d!712867 (= (getKeysList!17 (toList!1577 (extractMap!173 (toList!1576 lt!888275)))) lt!888412)))

(declare-fun b!2481665 () Bool)

(declare-fun e!1575279 () Unit!42585)

(declare-fun Unit!42596 () Unit!42585)

(assert (=> b!2481665 (= e!1575279 Unit!42596)))

(assert (=> b!2481666 false))

(declare-fun lt!888408 () Unit!42585)

(declare-fun forallContained!856 (List!29202 Int K!5485) Unit!42585)

(assert (=> b!2481666 (= lt!888408 (forallContained!856 (getKeysList!17 (t!210857 (toList!1577 (extractMap!173 (toList!1576 lt!888275))))) lambda!94001 (_1!16949 (h!34506 (toList!1577 (extractMap!173 (toList!1576 lt!888275)))))))))

(declare-fun e!1575281 () Unit!42585)

(declare-fun Unit!42597 () Unit!42585)

(assert (=> b!2481666 (= e!1575281 Unit!42597)))

(declare-fun b!2481667 () Bool)

(assert (=> b!2481667 (= e!1575282 Nil!29102)))

(declare-fun b!2481668 () Bool)

(declare-fun res!1050610 () Bool)

(assert (=> b!2481668 (=> (not res!1050610) (not e!1575280))))

(declare-fun length!24 (List!29202) Int)

(declare-fun length!25 (List!29200) Int)

(assert (=> b!2481668 (= res!1050610 (= (length!24 lt!888412) (length!25 (toList!1577 (extractMap!173 (toList!1576 lt!888275))))))))

(declare-fun lambda!94004 () Int)

(declare-fun b!2481669 () Bool)

(declare-fun content!3975 (List!29202) (InoxSet K!5485))

(declare-fun map!6193 (List!29200 Int) List!29202)

(assert (=> b!2481669 (= e!1575280 (= (content!3975 lt!888412) (content!3975 (map!6193 (toList!1577 (extractMap!173 (toList!1576 lt!888275))) lambda!94004))))))

(declare-fun res!1050609 () Bool)

(assert (=> b!2481670 (=> (not res!1050609) (not e!1575280))))

(declare-fun forall!5970 (List!29202 Int) Bool)

(assert (=> b!2481670 (= res!1050609 (forall!5970 lt!888412 lambda!94003))))

(assert (=> b!2481671 (= e!1575282 (Cons!29102 (_1!16949 (h!34506 (toList!1577 (extractMap!173 (toList!1576 lt!888275))))) (getKeysList!17 (t!210857 (toList!1577 (extractMap!173 (toList!1576 lt!888275)))))))))

(declare-fun c!394542 () Bool)

(assert (=> b!2481671 (= c!394542 (containsKey!134 (t!210857 (toList!1577 (extractMap!173 (toList!1576 lt!888275)))) (_1!16949 (h!34506 (toList!1577 (extractMap!173 (toList!1576 lt!888275)))))))))

(declare-fun lt!888413 () Unit!42585)

(assert (=> b!2481671 (= lt!888413 e!1575279)))

(declare-fun c!394543 () Bool)

(assert (=> b!2481671 (= c!394543 (contains!5103 (getKeysList!17 (t!210857 (toList!1577 (extractMap!173 (toList!1576 lt!888275))))) (_1!16949 (h!34506 (toList!1577 (extractMap!173 (toList!1576 lt!888275)))))))))

(declare-fun lt!888409 () Unit!42585)

(assert (=> b!2481671 (= lt!888409 e!1575281)))

(declare-fun lt!888411 () List!29202)

(assert (=> b!2481671 (= lt!888411 (getKeysList!17 (t!210857 (toList!1577 (extractMap!173 (toList!1576 lt!888275))))))))

(declare-fun lt!888410 () Unit!42585)

(declare-fun lemmaForallContainsAddHeadPreserves!7 (List!29200 List!29202 tuple2!28816) Unit!42585)

(assert (=> b!2481671 (= lt!888410 (lemmaForallContainsAddHeadPreserves!7 (t!210857 (toList!1577 (extractMap!173 (toList!1576 lt!888275)))) lt!888411 (h!34506 (toList!1577 (extractMap!173 (toList!1576 lt!888275))))))))

(assert (=> b!2481671 (forall!5970 lt!888411 lambda!94002)))

(declare-fun lt!888414 () Unit!42585)

(assert (=> b!2481671 (= lt!888414 lt!888410)))

(declare-fun b!2481672 () Bool)

(declare-fun Unit!42598 () Unit!42585)

(assert (=> b!2481672 (= e!1575281 Unit!42598)))

(declare-fun b!2481673 () Bool)

(assert (=> b!2481673 false))

(declare-fun Unit!42599 () Unit!42585)

(assert (=> b!2481673 (= e!1575279 Unit!42599)))

(assert (= (and d!712867 c!394541) b!2481671))

(assert (= (and d!712867 (not c!394541)) b!2481667))

(assert (= (and b!2481671 c!394542) b!2481673))

(assert (= (and b!2481671 (not c!394542)) b!2481665))

(assert (= (and b!2481671 c!394543) b!2481666))

(assert (= (and b!2481671 (not c!394543)) b!2481672))

(assert (= (and d!712867 res!1050608) b!2481668))

(assert (= (and b!2481668 res!1050610) b!2481670))

(assert (= (and b!2481670 res!1050609) b!2481669))

(declare-fun m!2849689 () Bool)

(assert (=> d!712867 m!2849689))

(assert (=> d!712867 m!2849617))

(declare-fun m!2849691 () Bool)

(assert (=> b!2481669 m!2849691))

(declare-fun m!2849693 () Bool)

(assert (=> b!2481669 m!2849693))

(assert (=> b!2481669 m!2849693))

(declare-fun m!2849695 () Bool)

(assert (=> b!2481669 m!2849695))

(declare-fun m!2849697 () Bool)

(assert (=> b!2481671 m!2849697))

(assert (=> b!2481671 m!2849697))

(declare-fun m!2849699 () Bool)

(assert (=> b!2481671 m!2849699))

(declare-fun m!2849701 () Bool)

(assert (=> b!2481671 m!2849701))

(declare-fun m!2849703 () Bool)

(assert (=> b!2481671 m!2849703))

(declare-fun m!2849705 () Bool)

(assert (=> b!2481671 m!2849705))

(declare-fun m!2849707 () Bool)

(assert (=> b!2481670 m!2849707))

(assert (=> b!2481666 m!2849697))

(assert (=> b!2481666 m!2849697))

(declare-fun m!2849709 () Bool)

(assert (=> b!2481666 m!2849709))

(declare-fun m!2849711 () Bool)

(assert (=> b!2481668 m!2849711))

(declare-fun m!2849713 () Bool)

(assert (=> b!2481668 m!2849713))

(assert (=> b!2481569 d!712867))

(declare-fun d!712869 () Bool)

(assert (=> d!712869 (= (isDefined!4570 (getPair!69 (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330) key!2246)) (not (isEmpty!16778 (getPair!69 (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330) key!2246))))))

(declare-fun bs!467466 () Bool)

(assert (= bs!467466 d!712869))

(assert (=> bs!467466 m!2849505))

(declare-fun m!2849715 () Bool)

(assert (=> bs!467466 m!2849715))

(assert (=> b!2481533 d!712869))

(declare-fun b!2481692 () Bool)

(declare-fun e!1575297 () Option!5748)

(assert (=> b!2481692 (= e!1575297 (Some!5747 (h!34506 (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330))))))

(declare-fun b!2481693 () Bool)

(declare-fun e!1575293 () Option!5748)

(assert (=> b!2481693 (= e!1575293 None!5747)))

(declare-fun lt!888417 () Option!5748)

(declare-fun e!1575295 () Bool)

(declare-fun b!2481694 () Bool)

(declare-fun contains!5104 (List!29200 tuple2!28816) Bool)

(declare-fun get!8974 (Option!5748) tuple2!28816)

(assert (=> b!2481694 (= e!1575295 (contains!5104 (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330) (get!8974 lt!888417)))))

(declare-fun b!2481695 () Bool)

(declare-fun e!1575296 () Bool)

(assert (=> b!2481695 (= e!1575296 (not (containsKey!135 (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330) key!2246)))))

(declare-fun d!712871 () Bool)

(declare-fun e!1575294 () Bool)

(assert (=> d!712871 e!1575294))

(declare-fun res!1050620 () Bool)

(assert (=> d!712871 (=> res!1050620 e!1575294)))

(assert (=> d!712871 (= res!1050620 e!1575296)))

(declare-fun res!1050622 () Bool)

(assert (=> d!712871 (=> (not res!1050622) (not e!1575296))))

(assert (=> d!712871 (= res!1050622 (isEmpty!16778 lt!888417))))

(assert (=> d!712871 (= lt!888417 e!1575297)))

(declare-fun c!394549 () Bool)

(assert (=> d!712871 (= c!394549 (and ((_ is Cons!29100) (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330)) (= (_1!16949 (h!34506 (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330))) key!2246)))))

(assert (=> d!712871 (noDuplicateKeys!84 (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330))))

(assert (=> d!712871 (= (getPair!69 (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330) key!2246) lt!888417)))

(declare-fun b!2481696 () Bool)

(assert (=> b!2481696 (= e!1575297 e!1575293)))

(declare-fun c!394548 () Bool)

(assert (=> b!2481696 (= c!394548 ((_ is Cons!29100) (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330)))))

(declare-fun b!2481697 () Bool)

(assert (=> b!2481697 (= e!1575294 e!1575295)))

(declare-fun res!1050621 () Bool)

(assert (=> b!2481697 (=> (not res!1050621) (not e!1575295))))

(assert (=> b!2481697 (= res!1050621 (isDefined!4570 lt!888417))))

(declare-fun b!2481698 () Bool)

(declare-fun res!1050619 () Bool)

(assert (=> b!2481698 (=> (not res!1050619) (not e!1575295))))

(assert (=> b!2481698 (= res!1050619 (= (_1!16949 (get!8974 lt!888417)) key!2246))))

(declare-fun b!2481699 () Bool)

(assert (=> b!2481699 (= e!1575293 (getPair!69 (t!210857 (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330)) key!2246))))

(assert (= (and d!712871 c!394549) b!2481692))

(assert (= (and d!712871 (not c!394549)) b!2481696))

(assert (= (and b!2481696 c!394548) b!2481699))

(assert (= (and b!2481696 (not c!394548)) b!2481693))

(assert (= (and d!712871 res!1050622) b!2481695))

(assert (= (and d!712871 (not res!1050620)) b!2481697))

(assert (= (and b!2481697 res!1050621) b!2481698))

(assert (= (and b!2481698 res!1050619) b!2481694))

(declare-fun m!2849717 () Bool)

(assert (=> b!2481698 m!2849717))

(assert (=> b!2481695 m!2849503))

(declare-fun m!2849719 () Bool)

(assert (=> b!2481695 m!2849719))

(declare-fun m!2849721 () Bool)

(assert (=> b!2481699 m!2849721))

(declare-fun m!2849723 () Bool)

(assert (=> d!712871 m!2849723))

(assert (=> d!712871 m!2849503))

(declare-fun m!2849725 () Bool)

(assert (=> d!712871 m!2849725))

(declare-fun m!2849727 () Bool)

(assert (=> b!2481697 m!2849727))

(assert (=> b!2481694 m!2849717))

(assert (=> b!2481694 m!2849503))

(assert (=> b!2481694 m!2849717))

(declare-fun m!2849729 () Bool)

(assert (=> b!2481694 m!2849729))

(assert (=> b!2481533 d!712871))

(assert (=> b!2481533 d!712849))

(declare-fun d!712873 () Bool)

(declare-fun res!1050623 () Bool)

(declare-fun e!1575298 () Bool)

(assert (=> d!712873 (=> res!1050623 e!1575298)))

(assert (=> d!712873 (= res!1050623 ((_ is Nil!29101) (t!210858 (toList!1576 lt!888275))))))

(assert (=> d!712873 (= (forall!5969 (t!210858 (toList!1576 lt!888275)) lambda!93973) e!1575298)))

(declare-fun b!2481700 () Bool)

(declare-fun e!1575299 () Bool)

(assert (=> b!2481700 (= e!1575298 e!1575299)))

(declare-fun res!1050624 () Bool)

(assert (=> b!2481700 (=> (not res!1050624) (not e!1575299))))

(assert (=> b!2481700 (= res!1050624 (dynLambda!12464 lambda!93973 (h!34507 (t!210858 (toList!1576 lt!888275)))))))

(declare-fun b!2481701 () Bool)

(assert (=> b!2481701 (= e!1575299 (forall!5969 (t!210858 (t!210858 (toList!1576 lt!888275))) lambda!93973))))

(assert (= (and d!712873 (not res!1050623)) b!2481700))

(assert (= (and b!2481700 res!1050624) b!2481701))

(declare-fun b_lambda!76113 () Bool)

(assert (=> (not b_lambda!76113) (not b!2481700)))

(declare-fun m!2849731 () Bool)

(assert (=> b!2481700 m!2849731))

(declare-fun m!2849733 () Bool)

(assert (=> b!2481701 m!2849733))

(assert (=> b!2481503 d!712873))

(declare-fun d!712875 () Bool)

(declare-fun noDuplicatedKeys!69 (List!29200) Bool)

(assert (=> d!712875 (= (invariantList!408 (toList!1577 lt!888363)) (noDuplicatedKeys!69 (toList!1577 lt!888363)))))

(declare-fun bs!467467 () Bool)

(assert (= bs!467467 d!712875))

(declare-fun m!2849735 () Bool)

(assert (=> bs!467467 m!2849735))

(assert (=> d!712827 d!712875))

(declare-fun d!712877 () Bool)

(declare-fun res!1050625 () Bool)

(declare-fun e!1575300 () Bool)

(assert (=> d!712877 (=> res!1050625 e!1575300)))

(assert (=> d!712877 (= res!1050625 ((_ is Nil!29101) (toList!1576 lt!888275)))))

(assert (=> d!712877 (= (forall!5969 (toList!1576 lt!888275) lambda!93985) e!1575300)))

(declare-fun b!2481702 () Bool)

(declare-fun e!1575301 () Bool)

(assert (=> b!2481702 (= e!1575300 e!1575301)))

(declare-fun res!1050626 () Bool)

(assert (=> b!2481702 (=> (not res!1050626) (not e!1575301))))

(assert (=> b!2481702 (= res!1050626 (dynLambda!12464 lambda!93985 (h!34507 (toList!1576 lt!888275))))))

(declare-fun b!2481703 () Bool)

(assert (=> b!2481703 (= e!1575301 (forall!5969 (t!210858 (toList!1576 lt!888275)) lambda!93985))))

(assert (= (and d!712877 (not res!1050625)) b!2481702))

(assert (= (and b!2481702 res!1050626) b!2481703))

(declare-fun b_lambda!76115 () Bool)

(assert (=> (not b_lambda!76115) (not b!2481702)))

(declare-fun m!2849737 () Bool)

(assert (=> b!2481702 m!2849737))

(declare-fun m!2849739 () Bool)

(assert (=> b!2481703 m!2849739))

(assert (=> d!712827 d!712877))

(declare-fun b!2481717 () Bool)

(assert (=> b!2481717 true))

(declare-fun bs!467468 () Bool)

(declare-fun b!2481716 () Bool)

(assert (= bs!467468 (and b!2481716 b!2481717)))

(declare-fun lambda!94034 () Int)

(declare-fun lambda!94033 () Int)

(assert (=> bs!467468 (= lambda!94034 lambda!94033)))

(assert (=> b!2481716 true))

(declare-fun lambda!94035 () Int)

(declare-fun lt!888463 () ListMap!1059)

(assert (=> bs!467468 (= (= lt!888463 (extractMap!173 (t!210858 (toList!1576 lt!888275)))) (= lambda!94035 lambda!94033))))

(assert (=> b!2481716 (= (= lt!888463 (extractMap!173 (t!210858 (toList!1576 lt!888275)))) (= lambda!94035 lambda!94034))))

(assert (=> b!2481716 true))

(declare-fun bs!467469 () Bool)

(declare-fun d!712879 () Bool)

(assert (= bs!467469 (and d!712879 b!2481717)))

(declare-fun lt!888464 () ListMap!1059)

(declare-fun lambda!94036 () Int)

(assert (=> bs!467469 (= (= lt!888464 (extractMap!173 (t!210858 (toList!1576 lt!888275)))) (= lambda!94036 lambda!94033))))

(declare-fun bs!467470 () Bool)

(assert (= bs!467470 (and d!712879 b!2481716)))

(assert (=> bs!467470 (= (= lt!888464 (extractMap!173 (t!210858 (toList!1576 lt!888275)))) (= lambda!94036 lambda!94034))))

(assert (=> bs!467470 (= (= lt!888464 lt!888463) (= lambda!94036 lambda!94035))))

(assert (=> d!712879 true))

(declare-fun b!2481714 () Bool)

(declare-fun e!1575309 () Bool)

(assert (=> b!2481714 (= e!1575309 (invariantList!408 (toList!1577 lt!888464)))))

(declare-fun b!2481715 () Bool)

(declare-fun e!1575308 () Bool)

(declare-fun call!151995 () Bool)

(assert (=> b!2481715 (= e!1575308 call!151995)))

(assert (=> d!712879 e!1575309))

(declare-fun res!1050633 () Bool)

(assert (=> d!712879 (=> (not res!1050633) (not e!1575309))))

(declare-fun forall!5971 (List!29200 Int) Bool)

(assert (=> d!712879 (= res!1050633 (forall!5971 (_2!16950 (h!34507 (toList!1576 lt!888275))) lambda!94036))))

(declare-fun e!1575310 () ListMap!1059)

(assert (=> d!712879 (= lt!888464 e!1575310)))

(declare-fun c!394552 () Bool)

(assert (=> d!712879 (= c!394552 ((_ is Nil!29100) (_2!16950 (h!34507 (toList!1576 lt!888275)))))))

(assert (=> d!712879 (noDuplicateKeys!84 (_2!16950 (h!34507 (toList!1576 lt!888275))))))

(assert (=> d!712879 (= (addToMapMapFromBucket!14 (_2!16950 (h!34507 (toList!1576 lt!888275))) (extractMap!173 (t!210858 (toList!1576 lt!888275)))) lt!888464)))

(declare-fun bm!151990 () Bool)

(assert (=> bm!151990 (= call!151995 (forall!5971 (toList!1577 (extractMap!173 (t!210858 (toList!1576 lt!888275)))) (ite c!394552 lambda!94033 lambda!94035)))))

(declare-fun bm!151991 () Bool)

(declare-fun call!151996 () Unit!42585)

(declare-fun lemmaContainsAllItsOwnKeys!2 (ListMap!1059) Unit!42585)

(assert (=> bm!151991 (= call!151996 (lemmaContainsAllItsOwnKeys!2 (extractMap!173 (t!210858 (toList!1576 lt!888275)))))))

(assert (=> b!2481716 (= e!1575310 lt!888463)))

(declare-fun lt!888477 () ListMap!1059)

(declare-fun +!84 (ListMap!1059 tuple2!28816) ListMap!1059)

(assert (=> b!2481716 (= lt!888477 (+!84 (extractMap!173 (t!210858 (toList!1576 lt!888275))) (h!34506 (_2!16950 (h!34507 (toList!1576 lt!888275))))))))

(assert (=> b!2481716 (= lt!888463 (addToMapMapFromBucket!14 (t!210857 (_2!16950 (h!34507 (toList!1576 lt!888275)))) (+!84 (extractMap!173 (t!210858 (toList!1576 lt!888275))) (h!34506 (_2!16950 (h!34507 (toList!1576 lt!888275)))))))))

(declare-fun lt!888479 () Unit!42585)

(assert (=> b!2481716 (= lt!888479 call!151996)))

(assert (=> b!2481716 (forall!5971 (toList!1577 (extractMap!173 (t!210858 (toList!1576 lt!888275)))) lambda!94034)))

(declare-fun lt!888462 () Unit!42585)

(assert (=> b!2481716 (= lt!888462 lt!888479)))

(assert (=> b!2481716 (forall!5971 (toList!1577 lt!888477) lambda!94035)))

(declare-fun lt!888465 () Unit!42585)

(declare-fun Unit!42600 () Unit!42585)

(assert (=> b!2481716 (= lt!888465 Unit!42600)))

(assert (=> b!2481716 (forall!5971 (t!210857 (_2!16950 (h!34507 (toList!1576 lt!888275)))) lambda!94035)))

(declare-fun lt!888466 () Unit!42585)

(declare-fun Unit!42601 () Unit!42585)

(assert (=> b!2481716 (= lt!888466 Unit!42601)))

(declare-fun lt!888468 () Unit!42585)

(declare-fun Unit!42602 () Unit!42585)

(assert (=> b!2481716 (= lt!888468 Unit!42602)))

(declare-fun lt!888472 () Unit!42585)

(declare-fun forallContained!857 (List!29200 Int tuple2!28816) Unit!42585)

(assert (=> b!2481716 (= lt!888472 (forallContained!857 (toList!1577 lt!888477) lambda!94035 (h!34506 (_2!16950 (h!34507 (toList!1576 lt!888275))))))))

(assert (=> b!2481716 (contains!5099 lt!888477 (_1!16949 (h!34506 (_2!16950 (h!34507 (toList!1576 lt!888275))))))))

(declare-fun lt!888470 () Unit!42585)

(declare-fun Unit!42603 () Unit!42585)

(assert (=> b!2481716 (= lt!888470 Unit!42603)))

(assert (=> b!2481716 (contains!5099 lt!888463 (_1!16949 (h!34506 (_2!16950 (h!34507 (toList!1576 lt!888275))))))))

(declare-fun lt!888460 () Unit!42585)

(declare-fun Unit!42604 () Unit!42585)

(assert (=> b!2481716 (= lt!888460 Unit!42604)))

(assert (=> b!2481716 (forall!5971 (_2!16950 (h!34507 (toList!1576 lt!888275))) lambda!94035)))

(declare-fun lt!888461 () Unit!42585)

(declare-fun Unit!42605 () Unit!42585)

(assert (=> b!2481716 (= lt!888461 Unit!42605)))

(assert (=> b!2481716 (forall!5971 (toList!1577 lt!888477) lambda!94035)))

(declare-fun lt!888475 () Unit!42585)

(declare-fun Unit!42606 () Unit!42585)

(assert (=> b!2481716 (= lt!888475 Unit!42606)))

(declare-fun lt!888480 () Unit!42585)

(declare-fun Unit!42607 () Unit!42585)

(assert (=> b!2481716 (= lt!888480 Unit!42607)))

(declare-fun lt!888476 () Unit!42585)

(declare-fun addForallContainsKeyThenBeforeAdding!2 (ListMap!1059 ListMap!1059 K!5485 V!5687) Unit!42585)

(assert (=> b!2481716 (= lt!888476 (addForallContainsKeyThenBeforeAdding!2 (extractMap!173 (t!210858 (toList!1576 lt!888275))) lt!888463 (_1!16949 (h!34506 (_2!16950 (h!34507 (toList!1576 lt!888275))))) (_2!16949 (h!34506 (_2!16950 (h!34507 (toList!1576 lt!888275)))))))))

(assert (=> b!2481716 (forall!5971 (toList!1577 (extractMap!173 (t!210858 (toList!1576 lt!888275)))) lambda!94035)))

(declare-fun lt!888478 () Unit!42585)

(assert (=> b!2481716 (= lt!888478 lt!888476)))

(assert (=> b!2481716 (forall!5971 (toList!1577 (extractMap!173 (t!210858 (toList!1576 lt!888275)))) lambda!94035)))

(declare-fun lt!888471 () Unit!42585)

(declare-fun Unit!42608 () Unit!42585)

(assert (=> b!2481716 (= lt!888471 Unit!42608)))

(declare-fun res!1050635 () Bool)

(declare-fun call!151997 () Bool)

(assert (=> b!2481716 (= res!1050635 call!151997)))

(assert (=> b!2481716 (=> (not res!1050635) (not e!1575308))))

(assert (=> b!2481716 e!1575308))

(declare-fun lt!888467 () Unit!42585)

(declare-fun Unit!42609 () Unit!42585)

(assert (=> b!2481716 (= lt!888467 Unit!42609)))

(assert (=> b!2481717 (= e!1575310 (extractMap!173 (t!210858 (toList!1576 lt!888275))))))

(declare-fun lt!888473 () Unit!42585)

(assert (=> b!2481717 (= lt!888473 call!151996)))

(assert (=> b!2481717 call!151997))

(declare-fun lt!888474 () Unit!42585)

(assert (=> b!2481717 (= lt!888474 lt!888473)))

(assert (=> b!2481717 call!151995))

(declare-fun lt!888469 () Unit!42585)

(declare-fun Unit!42610 () Unit!42585)

(assert (=> b!2481717 (= lt!888469 Unit!42610)))

(declare-fun b!2481718 () Bool)

(declare-fun res!1050634 () Bool)

(assert (=> b!2481718 (=> (not res!1050634) (not e!1575309))))

(assert (=> b!2481718 (= res!1050634 (forall!5971 (toList!1577 (extractMap!173 (t!210858 (toList!1576 lt!888275)))) lambda!94036))))

(declare-fun bm!151992 () Bool)

(assert (=> bm!151992 (= call!151997 (forall!5971 (ite c!394552 (toList!1577 (extractMap!173 (t!210858 (toList!1576 lt!888275)))) (_2!16950 (h!34507 (toList!1576 lt!888275)))) (ite c!394552 lambda!94033 lambda!94035)))))

(assert (= (and d!712879 c!394552) b!2481717))

(assert (= (and d!712879 (not c!394552)) b!2481716))

(assert (= (and b!2481716 res!1050635) b!2481715))

(assert (= (or b!2481717 b!2481716) bm!151991))

(assert (= (or b!2481717 b!2481716) bm!151992))

(assert (= (or b!2481717 b!2481715) bm!151990))

(assert (= (and d!712879 res!1050633) b!2481718))

(assert (= (and b!2481718 res!1050634) b!2481714))

(declare-fun m!2849741 () Bool)

(assert (=> bm!151990 m!2849741))

(declare-fun m!2849743 () Bool)

(assert (=> bm!151992 m!2849743))

(declare-fun m!2849745 () Bool)

(assert (=> b!2481718 m!2849745))

(declare-fun m!2849747 () Bool)

(assert (=> d!712879 m!2849747))

(assert (=> d!712879 m!2849591))

(declare-fun m!2849749 () Bool)

(assert (=> b!2481714 m!2849749))

(assert (=> bm!151991 m!2849585))

(declare-fun m!2849751 () Bool)

(assert (=> bm!151991 m!2849751))

(declare-fun m!2849753 () Bool)

(assert (=> b!2481716 m!2849753))

(assert (=> b!2481716 m!2849585))

(declare-fun m!2849755 () Bool)

(assert (=> b!2481716 m!2849755))

(assert (=> b!2481716 m!2849755))

(declare-fun m!2849757 () Bool)

(assert (=> b!2481716 m!2849757))

(declare-fun m!2849759 () Bool)

(assert (=> b!2481716 m!2849759))

(declare-fun m!2849761 () Bool)

(assert (=> b!2481716 m!2849761))

(assert (=> b!2481716 m!2849585))

(declare-fun m!2849763 () Bool)

(assert (=> b!2481716 m!2849763))

(assert (=> b!2481716 m!2849753))

(declare-fun m!2849765 () Bool)

(assert (=> b!2481716 m!2849765))

(declare-fun m!2849767 () Bool)

(assert (=> b!2481716 m!2849767))

(declare-fun m!2849769 () Bool)

(assert (=> b!2481716 m!2849769))

(assert (=> b!2481716 m!2849759))

(declare-fun m!2849771 () Bool)

(assert (=> b!2481716 m!2849771))

(declare-fun m!2849773 () Bool)

(assert (=> b!2481716 m!2849773))

(assert (=> b!2481574 d!712879))

(declare-fun bs!467471 () Bool)

(declare-fun d!712881 () Bool)

(assert (= bs!467471 (and d!712881 d!712833)))

(declare-fun lambda!94037 () Int)

(assert (=> bs!467471 (= lambda!94037 lambda!93988)))

(declare-fun bs!467472 () Bool)

(assert (= bs!467472 (and d!712881 b!2481541)))

(assert (=> bs!467472 (= lambda!94037 lambda!93982)))

(declare-fun bs!467473 () Bool)

(assert (= bs!467473 (and d!712881 b!2481528)))

(assert (=> bs!467473 (= lambda!94037 lambda!93979)))

(declare-fun bs!467474 () Bool)

(assert (= bs!467474 (and d!712881 d!712865)))

(assert (=> bs!467474 (= lambda!94037 lambda!93992)))

(declare-fun bs!467475 () Bool)

(assert (= bs!467475 (and d!712881 d!712811)))

(assert (=> bs!467475 (not (= lambda!94037 lambda!93976))))

(declare-fun bs!467476 () Bool)

(assert (= bs!467476 (and d!712881 b!2481494)))

(assert (=> bs!467476 (= lambda!94037 lambda!93973)))

(declare-fun bs!467477 () Bool)

(assert (= bs!467477 (and d!712881 d!712863)))

(assert (=> bs!467477 (= lambda!94037 lambda!93989)))

(declare-fun bs!467478 () Bool)

(assert (= bs!467478 (and d!712881 d!712827)))

(assert (=> bs!467478 (= lambda!94037 lambda!93985)))

(declare-fun lt!888481 () ListMap!1059)

(assert (=> d!712881 (invariantList!408 (toList!1577 lt!888481))))

(declare-fun e!1575311 () ListMap!1059)

(assert (=> d!712881 (= lt!888481 e!1575311)))

(declare-fun c!394553 () Bool)

(assert (=> d!712881 (= c!394553 ((_ is Cons!29101) (t!210858 (toList!1576 lt!888275))))))

(assert (=> d!712881 (forall!5969 (t!210858 (toList!1576 lt!888275)) lambda!94037)))

(assert (=> d!712881 (= (extractMap!173 (t!210858 (toList!1576 lt!888275))) lt!888481)))

(declare-fun b!2481721 () Bool)

(assert (=> b!2481721 (= e!1575311 (addToMapMapFromBucket!14 (_2!16950 (h!34507 (t!210858 (toList!1576 lt!888275)))) (extractMap!173 (t!210858 (t!210858 (toList!1576 lt!888275))))))))

(declare-fun b!2481722 () Bool)

(assert (=> b!2481722 (= e!1575311 (ListMap!1060 Nil!29100))))

(assert (= (and d!712881 c!394553) b!2481721))

(assert (= (and d!712881 (not c!394553)) b!2481722))

(declare-fun m!2849775 () Bool)

(assert (=> d!712881 m!2849775))

(declare-fun m!2849777 () Bool)

(assert (=> d!712881 m!2849777))

(declare-fun m!2849779 () Bool)

(assert (=> b!2481721 m!2849779))

(assert (=> b!2481721 m!2849779))

(declare-fun m!2849781 () Bool)

(assert (=> b!2481721 m!2849781))

(assert (=> b!2481574 d!712881))

(declare-fun b!2481723 () Bool)

(declare-fun e!1575316 () Option!5748)

(assert (=> b!2481723 (= e!1575316 (Some!5747 (h!34506 call!151980)))))

(declare-fun b!2481724 () Bool)

(declare-fun e!1575312 () Option!5748)

(assert (=> b!2481724 (= e!1575312 None!5747)))

(declare-fun b!2481725 () Bool)

(declare-fun e!1575314 () Bool)

(declare-fun lt!888482 () Option!5748)

(assert (=> b!2481725 (= e!1575314 (contains!5104 call!151980 (get!8974 lt!888482)))))

(declare-fun b!2481726 () Bool)

(declare-fun e!1575315 () Bool)

(assert (=> b!2481726 (= e!1575315 (not (containsKey!135 call!151980 key!2246)))))

(declare-fun d!712883 () Bool)

(declare-fun e!1575313 () Bool)

(assert (=> d!712883 e!1575313))

(declare-fun res!1050637 () Bool)

(assert (=> d!712883 (=> res!1050637 e!1575313)))

(assert (=> d!712883 (= res!1050637 e!1575315)))

(declare-fun res!1050639 () Bool)

(assert (=> d!712883 (=> (not res!1050639) (not e!1575315))))

(assert (=> d!712883 (= res!1050639 (isEmpty!16778 lt!888482))))

(assert (=> d!712883 (= lt!888482 e!1575316)))

(declare-fun c!394555 () Bool)

(assert (=> d!712883 (= c!394555 (and ((_ is Cons!29100) call!151980) (= (_1!16949 (h!34506 call!151980)) key!2246)))))

(assert (=> d!712883 (noDuplicateKeys!84 call!151980)))

(assert (=> d!712883 (= (getPair!69 call!151980 key!2246) lt!888482)))

(declare-fun b!2481727 () Bool)

(assert (=> b!2481727 (= e!1575316 e!1575312)))

(declare-fun c!394554 () Bool)

(assert (=> b!2481727 (= c!394554 ((_ is Cons!29100) call!151980))))

(declare-fun b!2481728 () Bool)

(assert (=> b!2481728 (= e!1575313 e!1575314)))

(declare-fun res!1050638 () Bool)

(assert (=> b!2481728 (=> (not res!1050638) (not e!1575314))))

(assert (=> b!2481728 (= res!1050638 (isDefined!4570 lt!888482))))

(declare-fun b!2481729 () Bool)

(declare-fun res!1050636 () Bool)

(assert (=> b!2481729 (=> (not res!1050636) (not e!1575314))))

(assert (=> b!2481729 (= res!1050636 (= (_1!16949 (get!8974 lt!888482)) key!2246))))

(declare-fun b!2481730 () Bool)

(assert (=> b!2481730 (= e!1575312 (getPair!69 (t!210857 call!151980) key!2246))))

(assert (= (and d!712883 c!394555) b!2481723))

(assert (= (and d!712883 (not c!394555)) b!2481727))

(assert (= (and b!2481727 c!394554) b!2481730))

(assert (= (and b!2481727 (not c!394554)) b!2481724))

(assert (= (and d!712883 res!1050639) b!2481726))

(assert (= (and d!712883 (not res!1050637)) b!2481728))

(assert (= (and b!2481728 res!1050638) b!2481729))

(assert (= (and b!2481729 res!1050636) b!2481725))

(declare-fun m!2849783 () Bool)

(assert (=> b!2481729 m!2849783))

(declare-fun m!2849785 () Bool)

(assert (=> b!2481726 m!2849785))

(declare-fun m!2849787 () Bool)

(assert (=> b!2481730 m!2849787))

(declare-fun m!2849789 () Bool)

(assert (=> d!712883 m!2849789))

(declare-fun m!2849791 () Bool)

(assert (=> d!712883 m!2849791))

(declare-fun m!2849793 () Bool)

(assert (=> b!2481728 m!2849793))

(assert (=> b!2481725 m!2849783))

(assert (=> b!2481725 m!2849783))

(declare-fun m!2849795 () Bool)

(assert (=> b!2481725 m!2849795))

(assert (=> bm!151979 d!712883))

(assert (=> b!2481564 d!712859))

(declare-fun d!712885 () Bool)

(assert (=> d!712885 (containsKey!134 (toList!1577 (extractMap!173 (toList!1576 lt!888275))) key!2246)))

(declare-fun lt!888485 () Unit!42585)

(declare-fun choose!14643 (List!29200 K!5485) Unit!42585)

(assert (=> d!712885 (= lt!888485 (choose!14643 (toList!1577 (extractMap!173 (toList!1576 lt!888275))) key!2246))))

(assert (=> d!712885 (invariantList!408 (toList!1577 (extractMap!173 (toList!1576 lt!888275))))))

(assert (=> d!712885 (= (lemmaInGetKeysListThenContainsKey!14 (toList!1577 (extractMap!173 (toList!1576 lt!888275))) key!2246) lt!888485)))

(declare-fun bs!467479 () Bool)

(assert (= bs!467479 d!712885))

(assert (=> bs!467479 m!2849569))

(declare-fun m!2849797 () Bool)

(assert (=> bs!467479 m!2849797))

(assert (=> bs!467479 m!2849617))

(assert (=> b!2481564 d!712885))

(declare-fun d!712887 () Bool)

(declare-fun lt!888488 () Bool)

(assert (=> d!712887 (= lt!888488 (select (content!3975 (keys!9310 (extractMap!173 (toList!1576 lt!888275)))) key!2246))))

(declare-fun e!1575321 () Bool)

(assert (=> d!712887 (= lt!888488 e!1575321)))

(declare-fun res!1050645 () Bool)

(assert (=> d!712887 (=> (not res!1050645) (not e!1575321))))

(assert (=> d!712887 (= res!1050645 ((_ is Cons!29102) (keys!9310 (extractMap!173 (toList!1576 lt!888275)))))))

(assert (=> d!712887 (= (contains!5103 (keys!9310 (extractMap!173 (toList!1576 lt!888275))) key!2246) lt!888488)))

(declare-fun b!2481735 () Bool)

(declare-fun e!1575322 () Bool)

(assert (=> b!2481735 (= e!1575321 e!1575322)))

(declare-fun res!1050644 () Bool)

(assert (=> b!2481735 (=> res!1050644 e!1575322)))

(assert (=> b!2481735 (= res!1050644 (= (h!34508 (keys!9310 (extractMap!173 (toList!1576 lt!888275)))) key!2246))))

(declare-fun b!2481736 () Bool)

(assert (=> b!2481736 (= e!1575322 (contains!5103 (t!210859 (keys!9310 (extractMap!173 (toList!1576 lt!888275)))) key!2246))))

(assert (= (and d!712887 res!1050645) b!2481735))

(assert (= (and b!2481735 (not res!1050644)) b!2481736))

(assert (=> d!712887 m!2849561))

(declare-fun m!2849799 () Bool)

(assert (=> d!712887 m!2849799))

(declare-fun m!2849801 () Bool)

(assert (=> d!712887 m!2849801))

(declare-fun m!2849803 () Bool)

(assert (=> b!2481736 m!2849803))

(assert (=> b!2481565 d!712887))

(declare-fun bs!467480 () Bool)

(declare-fun b!2481744 () Bool)

(assert (= bs!467480 (and b!2481744 b!2481666)))

(declare-fun lambda!94042 () Int)

(assert (=> bs!467480 (= (= (toList!1577 (extractMap!173 (toList!1576 lt!888275))) (t!210857 (toList!1577 (extractMap!173 (toList!1576 lt!888275))))) (= lambda!94042 lambda!94001))))

(declare-fun bs!467481 () Bool)

(assert (= bs!467481 (and b!2481744 b!2481671)))

(assert (=> bs!467481 (= (= (toList!1577 (extractMap!173 (toList!1576 lt!888275))) (Cons!29100 (h!34506 (toList!1577 (extractMap!173 (toList!1576 lt!888275)))) (t!210857 (toList!1577 (extractMap!173 (toList!1576 lt!888275)))))) (= lambda!94042 lambda!94002))))

(declare-fun bs!467482 () Bool)

(assert (= bs!467482 (and b!2481744 b!2481670)))

(assert (=> bs!467482 (= lambda!94042 lambda!94003)))

(assert (=> b!2481744 true))

(declare-fun bs!467483 () Bool)

(declare-fun b!2481745 () Bool)

(assert (= bs!467483 (and b!2481745 b!2481669)))

(declare-fun lambda!94043 () Int)

(assert (=> bs!467483 (= lambda!94043 lambda!94004)))

(declare-fun d!712889 () Bool)

(declare-fun e!1575325 () Bool)

(assert (=> d!712889 e!1575325))

(declare-fun res!1050654 () Bool)

(assert (=> d!712889 (=> (not res!1050654) (not e!1575325))))

(declare-fun lt!888491 () List!29202)

(assert (=> d!712889 (= res!1050654 (noDuplicate!323 lt!888491))))

(assert (=> d!712889 (= lt!888491 (getKeysList!17 (toList!1577 (extractMap!173 (toList!1576 lt!888275)))))))

(assert (=> d!712889 (= (keys!9310 (extractMap!173 (toList!1576 lt!888275))) lt!888491)))

(declare-fun b!2481743 () Bool)

(declare-fun res!1050653 () Bool)

(assert (=> b!2481743 (=> (not res!1050653) (not e!1575325))))

(assert (=> b!2481743 (= res!1050653 (= (length!24 lt!888491) (length!25 (toList!1577 (extractMap!173 (toList!1576 lt!888275))))))))

(declare-fun res!1050652 () Bool)

(assert (=> b!2481744 (=> (not res!1050652) (not e!1575325))))

(assert (=> b!2481744 (= res!1050652 (forall!5970 lt!888491 lambda!94042))))

(assert (=> b!2481745 (= e!1575325 (= (content!3975 lt!888491) (content!3975 (map!6193 (toList!1577 (extractMap!173 (toList!1576 lt!888275))) lambda!94043))))))

(assert (= (and d!712889 res!1050654) b!2481743))

(assert (= (and b!2481743 res!1050653) b!2481744))

(assert (= (and b!2481744 res!1050652) b!2481745))

(declare-fun m!2849805 () Bool)

(assert (=> d!712889 m!2849805))

(assert (=> d!712889 m!2849565))

(declare-fun m!2849807 () Bool)

(assert (=> b!2481743 m!2849807))

(assert (=> b!2481743 m!2849713))

(declare-fun m!2849809 () Bool)

(assert (=> b!2481744 m!2849809))

(declare-fun m!2849811 () Bool)

(assert (=> b!2481745 m!2849811))

(declare-fun m!2849813 () Bool)

(assert (=> b!2481745 m!2849813))

(assert (=> b!2481745 m!2849813))

(declare-fun m!2849815 () Bool)

(assert (=> b!2481745 m!2849815))

(assert (=> b!2481565 d!712889))

(assert (=> d!712821 d!712823))

(assert (=> d!712821 d!712845))

(declare-fun d!712891 () Bool)

(declare-fun lt!888494 () ListMap!1059)

(assert (=> d!712891 (invariantList!408 (toList!1577 lt!888494))))

(assert (=> d!712891 (= lt!888494 (extractMap!173 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540))))))))

(assert (=> d!712891 (valid!2565 thiss!42540)))

(assert (=> d!712891 (= (map!6192 thiss!42540) lt!888494)))

(declare-fun bs!467484 () Bool)

(assert (= bs!467484 d!712891))

(declare-fun m!2849817 () Bool)

(assert (=> bs!467484 m!2849817))

(assert (=> bs!467484 m!2849493))

(assert (=> bs!467484 m!2849509))

(assert (=> bs!467484 m!2849485))

(assert (=> d!712821 d!712891))

(declare-fun d!712893 () Bool)

(declare-fun lt!888497 () Bool)

(assert (=> d!712893 (= lt!888497 (contains!5102 (map!6190 (v!31437 (underlying!6928 thiss!42540))) lt!888330))))

(declare-fun contains!5105 (LongMapFixedSize!6720 (_ BitVec 64)) Bool)

(assert (=> d!712893 (= lt!888497 (contains!5105 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540)))) lt!888330))))

(assert (=> d!712893 (valid!2566 (v!31437 (underlying!6928 thiss!42540)))))

(assert (=> d!712893 (= (contains!5101 (v!31437 (underlying!6928 thiss!42540)) lt!888330) lt!888497)))

(declare-fun bs!467485 () Bool)

(assert (= bs!467485 d!712893))

(assert (=> bs!467485 m!2849493))

(assert (=> bs!467485 m!2849493))

(declare-fun m!2849819 () Bool)

(assert (=> bs!467485 m!2849819))

(declare-fun m!2849821 () Bool)

(assert (=> bs!467485 m!2849821))

(assert (=> bs!467485 m!2849555))

(assert (=> d!712821 d!712893))

(declare-fun bs!467486 () Bool)

(declare-fun d!712895 () Bool)

(assert (= bs!467486 (and d!712895 d!712833)))

(declare-fun lambda!94044 () Int)

(assert (=> bs!467486 (= lambda!94044 lambda!93988)))

(declare-fun bs!467487 () Bool)

(assert (= bs!467487 (and d!712895 b!2481541)))

(assert (=> bs!467487 (= lambda!94044 lambda!93982)))

(declare-fun bs!467488 () Bool)

(assert (= bs!467488 (and d!712895 d!712865)))

(assert (=> bs!467488 (= lambda!94044 lambda!93992)))

(declare-fun bs!467489 () Bool)

(assert (= bs!467489 (and d!712895 d!712811)))

(assert (=> bs!467489 (not (= lambda!94044 lambda!93976))))

(declare-fun bs!467490 () Bool)

(assert (= bs!467490 (and d!712895 b!2481494)))

(assert (=> bs!467490 (= lambda!94044 lambda!93973)))

(declare-fun bs!467491 () Bool)

(assert (= bs!467491 (and d!712895 d!712863)))

(assert (=> bs!467491 (= lambda!94044 lambda!93989)))

(declare-fun bs!467492 () Bool)

(assert (= bs!467492 (and d!712895 d!712827)))

(assert (=> bs!467492 (= lambda!94044 lambda!93985)))

(declare-fun bs!467493 () Bool)

(assert (= bs!467493 (and d!712895 b!2481528)))

(assert (=> bs!467493 (= lambda!94044 lambda!93979)))

(declare-fun bs!467494 () Bool)

(assert (= bs!467494 (and d!712895 d!712881)))

(assert (=> bs!467494 (= lambda!94044 lambda!94037)))

(declare-fun lt!888498 () ListMap!1059)

(assert (=> d!712895 (invariantList!408 (toList!1577 lt!888498))))

(declare-fun e!1575326 () ListMap!1059)

(assert (=> d!712895 (= lt!888498 e!1575326)))

(declare-fun c!394556 () Bool)

(assert (=> d!712895 (= c!394556 ((_ is Cons!29101) (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540))))))))

(assert (=> d!712895 (forall!5969 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))) lambda!94044)))

(assert (=> d!712895 (= (extractMap!173 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540))))) lt!888498)))

(declare-fun b!2481748 () Bool)

(assert (=> b!2481748 (= e!1575326 (addToMapMapFromBucket!14 (_2!16950 (h!34507 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))))) (extractMap!173 (t!210858 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540))))))))))

(declare-fun b!2481749 () Bool)

(assert (=> b!2481749 (= e!1575326 (ListMap!1060 Nil!29100))))

(assert (= (and d!712895 c!394556) b!2481748))

(assert (= (and d!712895 (not c!394556)) b!2481749))

(declare-fun m!2849823 () Bool)

(assert (=> d!712895 m!2849823))

(declare-fun m!2849825 () Bool)

(assert (=> d!712895 m!2849825))

(declare-fun m!2849827 () Bool)

(assert (=> b!2481748 m!2849827))

(assert (=> b!2481748 m!2849827))

(declare-fun m!2849829 () Bool)

(assert (=> b!2481748 m!2849829))

(assert (=> d!712821 d!712895))

(declare-fun b!2481750 () Bool)

(declare-fun e!1575329 () Bool)

(declare-fun e!1575332 () Bool)

(assert (=> b!2481750 (= e!1575329 e!1575332)))

(declare-fun res!1050657 () Bool)

(assert (=> b!2481750 (=> (not res!1050657) (not e!1575332))))

(assert (=> b!2481750 (= res!1050657 (isDefined!4572 (getValueByKey!137 (toList!1577 (extractMap!173 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))))) key!2246)))))

(declare-fun b!2481751 () Bool)

(declare-fun e!1575331 () Unit!42585)

(declare-fun lt!888500 () Unit!42585)

(assert (=> b!2481751 (= e!1575331 lt!888500)))

(declare-fun lt!888503 () Unit!42585)

(assert (=> b!2481751 (= lt!888503 (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!1577 (extractMap!173 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))))) key!2246))))

(assert (=> b!2481751 (isDefined!4572 (getValueByKey!137 (toList!1577 (extractMap!173 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))))) key!2246))))

(declare-fun lt!888501 () Unit!42585)

(assert (=> b!2481751 (= lt!888501 lt!888503)))

(assert (=> b!2481751 (= lt!888500 (lemmaInListThenGetKeysListContains!14 (toList!1577 (extractMap!173 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))))) key!2246))))

(declare-fun call!151998 () Bool)

(assert (=> b!2481751 call!151998))

(declare-fun b!2481752 () Bool)

(declare-fun e!1575330 () Unit!42585)

(declare-fun Unit!42611 () Unit!42585)

(assert (=> b!2481752 (= e!1575330 Unit!42611)))

(declare-fun b!2481753 () Bool)

(assert (=> b!2481753 false))

(declare-fun lt!888502 () Unit!42585)

(declare-fun lt!888504 () Unit!42585)

(assert (=> b!2481753 (= lt!888502 lt!888504)))

(assert (=> b!2481753 (containsKey!134 (toList!1577 (extractMap!173 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))))) key!2246)))

(assert (=> b!2481753 (= lt!888504 (lemmaInGetKeysListThenContainsKey!14 (toList!1577 (extractMap!173 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))))) key!2246))))

(declare-fun Unit!42612 () Unit!42585)

(assert (=> b!2481753 (= e!1575330 Unit!42612)))

(declare-fun b!2481754 () Bool)

(assert (=> b!2481754 (= e!1575332 (contains!5103 (keys!9310 (extractMap!173 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))))) key!2246))))

(declare-fun d!712897 () Bool)

(assert (=> d!712897 e!1575329))

(declare-fun res!1050655 () Bool)

(assert (=> d!712897 (=> res!1050655 e!1575329)))

(declare-fun e!1575327 () Bool)

(assert (=> d!712897 (= res!1050655 e!1575327)))

(declare-fun res!1050656 () Bool)

(assert (=> d!712897 (=> (not res!1050656) (not e!1575327))))

(declare-fun lt!888506 () Bool)

(assert (=> d!712897 (= res!1050656 (not lt!888506))))

(declare-fun lt!888499 () Bool)

(assert (=> d!712897 (= lt!888506 lt!888499)))

(declare-fun lt!888505 () Unit!42585)

(assert (=> d!712897 (= lt!888505 e!1575331)))

(declare-fun c!394559 () Bool)

(assert (=> d!712897 (= c!394559 lt!888499)))

(assert (=> d!712897 (= lt!888499 (containsKey!134 (toList!1577 (extractMap!173 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))))) key!2246))))

(assert (=> d!712897 (= (contains!5099 (extractMap!173 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540))))) key!2246) lt!888506)))

(declare-fun b!2481755 () Bool)

(declare-fun e!1575328 () List!29202)

(assert (=> b!2481755 (= e!1575328 (keys!9310 (extractMap!173 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))))))))

(declare-fun b!2481756 () Bool)

(assert (=> b!2481756 (= e!1575327 (not (contains!5103 (keys!9310 (extractMap!173 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))))) key!2246)))))

(declare-fun bm!151993 () Bool)

(assert (=> bm!151993 (= call!151998 (contains!5103 e!1575328 key!2246))))

(declare-fun c!394558 () Bool)

(assert (=> bm!151993 (= c!394558 c!394559)))

(declare-fun b!2481757 () Bool)

(assert (=> b!2481757 (= e!1575331 e!1575330)))

(declare-fun c!394557 () Bool)

(assert (=> b!2481757 (= c!394557 call!151998)))

(declare-fun b!2481758 () Bool)

(assert (=> b!2481758 (= e!1575328 (getKeysList!17 (toList!1577 (extractMap!173 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540))))))))))

(assert (= (and d!712897 c!394559) b!2481751))

(assert (= (and d!712897 (not c!394559)) b!2481757))

(assert (= (and b!2481757 c!394557) b!2481753))

(assert (= (and b!2481757 (not c!394557)) b!2481752))

(assert (= (or b!2481751 b!2481757) bm!151993))

(assert (= (and bm!151993 c!394558) b!2481758))

(assert (= (and bm!151993 (not c!394558)) b!2481755))

(assert (= (and d!712897 res!1050656) b!2481756))

(assert (= (and d!712897 (not res!1050655)) b!2481750))

(assert (= (and b!2481750 res!1050657) b!2481754))

(assert (=> b!2481756 m!2849509))

(declare-fun m!2849831 () Bool)

(assert (=> b!2481756 m!2849831))

(assert (=> b!2481756 m!2849831))

(declare-fun m!2849833 () Bool)

(assert (=> b!2481756 m!2849833))

(declare-fun m!2849835 () Bool)

(assert (=> b!2481758 m!2849835))

(declare-fun m!2849837 () Bool)

(assert (=> bm!151993 m!2849837))

(declare-fun m!2849839 () Bool)

(assert (=> d!712897 m!2849839))

(assert (=> b!2481755 m!2849509))

(assert (=> b!2481755 m!2849831))

(declare-fun m!2849841 () Bool)

(assert (=> b!2481751 m!2849841))

(declare-fun m!2849843 () Bool)

(assert (=> b!2481751 m!2849843))

(assert (=> b!2481751 m!2849843))

(declare-fun m!2849845 () Bool)

(assert (=> b!2481751 m!2849845))

(declare-fun m!2849847 () Bool)

(assert (=> b!2481751 m!2849847))

(assert (=> b!2481754 m!2849509))

(assert (=> b!2481754 m!2849831))

(assert (=> b!2481754 m!2849831))

(assert (=> b!2481754 m!2849833))

(assert (=> b!2481750 m!2849843))

(assert (=> b!2481750 m!2849843))

(assert (=> b!2481750 m!2849845))

(assert (=> b!2481753 m!2849839))

(declare-fun m!2849849 () Bool)

(assert (=> b!2481753 m!2849849))

(assert (=> d!712821 d!712897))

(declare-fun b!2481759 () Bool)

(declare-fun e!1575335 () Bool)

(declare-fun e!1575338 () Bool)

(assert (=> b!2481759 (= e!1575335 e!1575338)))

(declare-fun res!1050660 () Bool)

(assert (=> b!2481759 (=> (not res!1050660) (not e!1575338))))

(assert (=> b!2481759 (= res!1050660 (isDefined!4572 (getValueByKey!137 (toList!1577 (map!6192 thiss!42540)) key!2246)))))

(declare-fun b!2481760 () Bool)

(declare-fun e!1575337 () Unit!42585)

(declare-fun lt!888508 () Unit!42585)

(assert (=> b!2481760 (= e!1575337 lt!888508)))

(declare-fun lt!888511 () Unit!42585)

(assert (=> b!2481760 (= lt!888511 (lemmaContainsKeyImpliesGetValueByKeyDefined!94 (toList!1577 (map!6192 thiss!42540)) key!2246))))

(assert (=> b!2481760 (isDefined!4572 (getValueByKey!137 (toList!1577 (map!6192 thiss!42540)) key!2246))))

(declare-fun lt!888509 () Unit!42585)

(assert (=> b!2481760 (= lt!888509 lt!888511)))

(assert (=> b!2481760 (= lt!888508 (lemmaInListThenGetKeysListContains!14 (toList!1577 (map!6192 thiss!42540)) key!2246))))

(declare-fun call!151999 () Bool)

(assert (=> b!2481760 call!151999))

(declare-fun b!2481761 () Bool)

(declare-fun e!1575336 () Unit!42585)

(declare-fun Unit!42613 () Unit!42585)

(assert (=> b!2481761 (= e!1575336 Unit!42613)))

(declare-fun b!2481762 () Bool)

(assert (=> b!2481762 false))

(declare-fun lt!888510 () Unit!42585)

(declare-fun lt!888512 () Unit!42585)

(assert (=> b!2481762 (= lt!888510 lt!888512)))

(assert (=> b!2481762 (containsKey!134 (toList!1577 (map!6192 thiss!42540)) key!2246)))

(assert (=> b!2481762 (= lt!888512 (lemmaInGetKeysListThenContainsKey!14 (toList!1577 (map!6192 thiss!42540)) key!2246))))

(declare-fun Unit!42614 () Unit!42585)

(assert (=> b!2481762 (= e!1575336 Unit!42614)))

(declare-fun b!2481763 () Bool)

(assert (=> b!2481763 (= e!1575338 (contains!5103 (keys!9310 (map!6192 thiss!42540)) key!2246))))

(declare-fun d!712899 () Bool)

(assert (=> d!712899 e!1575335))

(declare-fun res!1050658 () Bool)

(assert (=> d!712899 (=> res!1050658 e!1575335)))

(declare-fun e!1575333 () Bool)

(assert (=> d!712899 (= res!1050658 e!1575333)))

(declare-fun res!1050659 () Bool)

(assert (=> d!712899 (=> (not res!1050659) (not e!1575333))))

(declare-fun lt!888514 () Bool)

(assert (=> d!712899 (= res!1050659 (not lt!888514))))

(declare-fun lt!888507 () Bool)

(assert (=> d!712899 (= lt!888514 lt!888507)))

(declare-fun lt!888513 () Unit!42585)

(assert (=> d!712899 (= lt!888513 e!1575337)))

(declare-fun c!394562 () Bool)

(assert (=> d!712899 (= c!394562 lt!888507)))

(assert (=> d!712899 (= lt!888507 (containsKey!134 (toList!1577 (map!6192 thiss!42540)) key!2246))))

(assert (=> d!712899 (= (contains!5099 (map!6192 thiss!42540) key!2246) lt!888514)))

(declare-fun b!2481764 () Bool)

(declare-fun e!1575334 () List!29202)

(assert (=> b!2481764 (= e!1575334 (keys!9310 (map!6192 thiss!42540)))))

(declare-fun b!2481765 () Bool)

(assert (=> b!2481765 (= e!1575333 (not (contains!5103 (keys!9310 (map!6192 thiss!42540)) key!2246)))))

(declare-fun bm!151994 () Bool)

(assert (=> bm!151994 (= call!151999 (contains!5103 e!1575334 key!2246))))

(declare-fun c!394561 () Bool)

(assert (=> bm!151994 (= c!394561 c!394562)))

(declare-fun b!2481766 () Bool)

(assert (=> b!2481766 (= e!1575337 e!1575336)))

(declare-fun c!394560 () Bool)

(assert (=> b!2481766 (= c!394560 call!151999)))

(declare-fun b!2481767 () Bool)

(assert (=> b!2481767 (= e!1575334 (getKeysList!17 (toList!1577 (map!6192 thiss!42540))))))

(assert (= (and d!712899 c!394562) b!2481760))

(assert (= (and d!712899 (not c!394562)) b!2481766))

(assert (= (and b!2481766 c!394560) b!2481762))

(assert (= (and b!2481766 (not c!394560)) b!2481761))

(assert (= (or b!2481760 b!2481766) bm!151994))

(assert (= (and bm!151994 c!394561) b!2481767))

(assert (= (and bm!151994 (not c!394561)) b!2481764))

(assert (= (and d!712899 res!1050659) b!2481765))

(assert (= (and d!712899 (not res!1050658)) b!2481759))

(assert (= (and b!2481759 res!1050660) b!2481763))

(assert (=> b!2481765 m!2849517))

(declare-fun m!2849851 () Bool)

(assert (=> b!2481765 m!2849851))

(assert (=> b!2481765 m!2849851))

(declare-fun m!2849853 () Bool)

(assert (=> b!2481765 m!2849853))

(declare-fun m!2849855 () Bool)

(assert (=> b!2481767 m!2849855))

(declare-fun m!2849857 () Bool)

(assert (=> bm!151994 m!2849857))

(declare-fun m!2849859 () Bool)

(assert (=> d!712899 m!2849859))

(assert (=> b!2481764 m!2849517))

(assert (=> b!2481764 m!2849851))

(declare-fun m!2849861 () Bool)

(assert (=> b!2481760 m!2849861))

(declare-fun m!2849863 () Bool)

(assert (=> b!2481760 m!2849863))

(assert (=> b!2481760 m!2849863))

(declare-fun m!2849865 () Bool)

(assert (=> b!2481760 m!2849865))

(declare-fun m!2849867 () Bool)

(assert (=> b!2481760 m!2849867))

(assert (=> b!2481763 m!2849517))

(assert (=> b!2481763 m!2849851))

(assert (=> b!2481763 m!2849851))

(assert (=> b!2481763 m!2849853))

(assert (=> b!2481759 m!2849863))

(assert (=> b!2481759 m!2849863))

(assert (=> b!2481759 m!2849865))

(assert (=> b!2481762 m!2849859))

(declare-fun m!2849869 () Bool)

(assert (=> b!2481762 m!2849869))

(assert (=> d!712821 d!712899))

(assert (=> d!712821 d!712819))

(assert (=> b!2481566 d!712889))

(assert (=> b!2481567 d!712887))

(assert (=> b!2481567 d!712889))

(declare-fun d!712901 () Bool)

(assert (=> d!712901 (isDefined!4571 (getValueByKey!136 lt!888318 lt!888330))))

(declare-fun lt!888517 () Unit!42585)

(declare-fun choose!14644 (List!29201 (_ BitVec 64)) Unit!42585)

(assert (=> d!712901 (= lt!888517 (choose!14644 lt!888318 lt!888330))))

(declare-fun e!1575341 () Bool)

(assert (=> d!712901 e!1575341))

(declare-fun res!1050663 () Bool)

(assert (=> d!712901 (=> (not res!1050663) (not e!1575341))))

(declare-fun isStrictlySorted!9 (List!29201) Bool)

(assert (=> d!712901 (= res!1050663 (isStrictlySorted!9 lt!888318))))

(assert (=> d!712901 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!93 lt!888318 lt!888330) lt!888517)))

(declare-fun b!2481770 () Bool)

(assert (=> b!2481770 (= e!1575341 (containsKey!133 lt!888318 lt!888330))))

(assert (= (and d!712901 res!1050663) b!2481770))

(assert (=> d!712901 m!2849537))

(assert (=> d!712901 m!2849537))

(assert (=> d!712901 m!2849539))

(declare-fun m!2849871 () Bool)

(assert (=> d!712901 m!2849871))

(declare-fun m!2849873 () Bool)

(assert (=> d!712901 m!2849873))

(declare-fun m!2849875 () Bool)

(assert (=> b!2481770 m!2849875))

(assert (=> b!2481532 d!712901))

(declare-fun d!712903 () Bool)

(assert (=> d!712903 (containsKey!133 lt!888322 lt!888330)))

(declare-fun lt!888520 () Unit!42585)

(declare-fun choose!14645 (List!29201 (_ BitVec 64)) Unit!42585)

(assert (=> d!712903 (= lt!888520 (choose!14645 lt!888322 lt!888330))))

(declare-fun e!1575344 () Bool)

(assert (=> d!712903 e!1575344))

(declare-fun res!1050666 () Bool)

(assert (=> d!712903 (=> (not res!1050666) (not e!1575344))))

(assert (=> d!712903 (= res!1050666 (isStrictlySorted!9 lt!888322))))

(assert (=> d!712903 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!70 lt!888322 lt!888330) lt!888520)))

(declare-fun b!2481773 () Bool)

(assert (=> b!2481773 (= e!1575344 (isDefined!4571 (getValueByKey!136 lt!888322 lt!888330)))))

(assert (= (and d!712903 res!1050666) b!2481773))

(assert (=> d!712903 m!2849543))

(declare-fun m!2849877 () Bool)

(assert (=> d!712903 m!2849877))

(declare-fun m!2849879 () Bool)

(assert (=> d!712903 m!2849879))

(declare-fun m!2849881 () Bool)

(assert (=> b!2481773 m!2849881))

(assert (=> b!2481773 m!2849881))

(declare-fun m!2849883 () Bool)

(assert (=> b!2481773 m!2849883))

(assert (=> b!2481532 d!712903))

(assert (=> b!2481532 d!712849))

(declare-fun b!2481785 () Bool)

(declare-fun e!1575350 () Option!5749)

(assert (=> b!2481785 (= e!1575350 None!5748)))

(declare-fun b!2481782 () Bool)

(declare-fun e!1575349 () Option!5749)

(assert (=> b!2481782 (= e!1575349 (Some!5748 (_2!16950 (h!34507 lt!888318))))))

(declare-fun b!2481783 () Bool)

(assert (=> b!2481783 (= e!1575349 e!1575350)))

(declare-fun c!394568 () Bool)

(assert (=> b!2481783 (= c!394568 (and ((_ is Cons!29101) lt!888318) (not (= (_1!16950 (h!34507 lt!888318)) lt!888330))))))

(declare-fun d!712905 () Bool)

(declare-fun c!394567 () Bool)

(assert (=> d!712905 (= c!394567 (and ((_ is Cons!29101) lt!888318) (= (_1!16950 (h!34507 lt!888318)) lt!888330)))))

(assert (=> d!712905 (= (getValueByKey!136 lt!888318 lt!888330) e!1575349)))

(declare-fun b!2481784 () Bool)

(assert (=> b!2481784 (= e!1575350 (getValueByKey!136 (t!210858 lt!888318) lt!888330))))

(assert (= (and d!712905 c!394567) b!2481782))

(assert (= (and d!712905 (not c!394567)) b!2481783))

(assert (= (and b!2481783 c!394568) b!2481784))

(assert (= (and b!2481783 (not c!394568)) b!2481785))

(declare-fun m!2849885 () Bool)

(assert (=> b!2481784 m!2849885))

(assert (=> b!2481532 d!712905))

(declare-fun d!712907 () Bool)

(declare-fun res!1050671 () Bool)

(declare-fun e!1575355 () Bool)

(assert (=> d!712907 (=> res!1050671 e!1575355)))

(assert (=> d!712907 (= res!1050671 (and ((_ is Cons!29101) lt!888322) (= (_1!16950 (h!34507 lt!888322)) lt!888330)))))

(assert (=> d!712907 (= (containsKey!133 lt!888322 lt!888330) e!1575355)))

(declare-fun b!2481790 () Bool)

(declare-fun e!1575356 () Bool)

(assert (=> b!2481790 (= e!1575355 e!1575356)))

(declare-fun res!1050672 () Bool)

(assert (=> b!2481790 (=> (not res!1050672) (not e!1575356))))

(assert (=> b!2481790 (= res!1050672 (and (or (not ((_ is Cons!29101) lt!888322)) (bvsle (_1!16950 (h!34507 lt!888322)) lt!888330)) ((_ is Cons!29101) lt!888322) (bvslt (_1!16950 (h!34507 lt!888322)) lt!888330)))))

(declare-fun b!2481791 () Bool)

(assert (=> b!2481791 (= e!1575356 (containsKey!133 (t!210858 lt!888322) lt!888330))))

(assert (= (and d!712907 (not res!1050671)) b!2481790))

(assert (= (and b!2481790 res!1050672) b!2481791))

(declare-fun m!2849887 () Bool)

(assert (=> b!2481791 m!2849887))

(assert (=> b!2481532 d!712907))

(assert (=> b!2481532 d!712819))

(declare-fun d!712909 () Bool)

(declare-fun isEmpty!16779 (Option!5749) Bool)

(assert (=> d!712909 (= (isDefined!4571 (getValueByKey!136 lt!888318 lt!888330)) (not (isEmpty!16779 (getValueByKey!136 lt!888318 lt!888330))))))

(declare-fun bs!467495 () Bool)

(assert (= bs!467495 d!712909))

(assert (=> bs!467495 m!2849537))

(declare-fun m!2849889 () Bool)

(assert (=> bs!467495 m!2849889))

(assert (=> b!2481532 d!712909))

(declare-fun d!712911 () Bool)

(assert (=> d!712911 (contains!5100 lt!888336 (tuple2!28819 lt!888330 lt!888327))))

(declare-fun lt!888523 () Unit!42585)

(declare-fun choose!14646 (List!29201 (_ BitVec 64) List!29200) Unit!42585)

(assert (=> d!712911 (= lt!888523 (choose!14646 lt!888336 lt!888330 lt!888327))))

(declare-fun e!1575359 () Bool)

(assert (=> d!712911 e!1575359))

(declare-fun res!1050675 () Bool)

(assert (=> d!712911 (=> (not res!1050675) (not e!1575359))))

(assert (=> d!712911 (= res!1050675 (isStrictlySorted!9 lt!888336))))

(assert (=> d!712911 (= (lemmaGetValueByKeyImpliesContainsTuple!74 lt!888336 lt!888330 lt!888327) lt!888523)))

(declare-fun b!2481794 () Bool)

(assert (=> b!2481794 (= e!1575359 (= (getValueByKey!136 lt!888336 lt!888330) (Some!5748 lt!888327)))))

(assert (= (and d!712911 res!1050675) b!2481794))

(assert (=> d!712911 m!2849531))

(declare-fun m!2849891 () Bool)

(assert (=> d!712911 m!2849891))

(declare-fun m!2849893 () Bool)

(assert (=> d!712911 m!2849893))

(declare-fun m!2849895 () Bool)

(assert (=> b!2481794 m!2849895))

(assert (=> b!2481532 d!712911))

(declare-fun lt!888524 () Bool)

(declare-fun d!712913 () Bool)

(assert (=> d!712913 (= lt!888524 (select (content!3974 lt!888336) (tuple2!28819 lt!888330 lt!888327)))))

(declare-fun e!1575360 () Bool)

(assert (=> d!712913 (= lt!888524 e!1575360)))

(declare-fun res!1050677 () Bool)

(assert (=> d!712913 (=> (not res!1050677) (not e!1575360))))

(assert (=> d!712913 (= res!1050677 ((_ is Cons!29101) lt!888336))))

(assert (=> d!712913 (= (contains!5100 lt!888336 (tuple2!28819 lt!888330 lt!888327)) lt!888524)))

(declare-fun b!2481795 () Bool)

(declare-fun e!1575361 () Bool)

(assert (=> b!2481795 (= e!1575360 e!1575361)))

(declare-fun res!1050676 () Bool)

(assert (=> b!2481795 (=> res!1050676 e!1575361)))

(assert (=> b!2481795 (= res!1050676 (= (h!34507 lt!888336) (tuple2!28819 lt!888330 lt!888327)))))

(declare-fun b!2481796 () Bool)

(assert (=> b!2481796 (= e!1575361 (contains!5100 (t!210858 lt!888336) (tuple2!28819 lt!888330 lt!888327)))))

(assert (= (and d!712913 res!1050677) b!2481795))

(assert (= (and b!2481795 (not res!1050676)) b!2481796))

(declare-fun m!2849897 () Bool)

(assert (=> d!712913 m!2849897))

(declare-fun m!2849899 () Bool)

(assert (=> d!712913 m!2849899))

(declare-fun m!2849901 () Bool)

(assert (=> b!2481796 m!2849901))

(assert (=> b!2481532 d!712913))

(declare-fun d!712915 () Bool)

(declare-fun valid!2567 (LongMapFixedSize!6720) Bool)

(assert (=> d!712915 (= (valid!2566 (v!31437 (underlying!6928 thiss!42540))) (valid!2567 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540))))))))

(declare-fun bs!467496 () Bool)

(assert (= bs!467496 d!712915))

(declare-fun m!2849903 () Bool)

(assert (=> bs!467496 m!2849903))

(assert (=> d!712823 d!712915))

(declare-fun d!712917 () Bool)

(declare-fun res!1050678 () Bool)

(declare-fun e!1575362 () Bool)

(assert (=> d!712917 (=> res!1050678 e!1575362)))

(assert (=> d!712917 (= res!1050678 ((_ is Nil!29101) (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540))))))))

(assert (=> d!712917 (= (forall!5969 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))) lambda!93982) e!1575362)))

(declare-fun b!2481797 () Bool)

(declare-fun e!1575363 () Bool)

(assert (=> b!2481797 (= e!1575362 e!1575363)))

(declare-fun res!1050679 () Bool)

(assert (=> b!2481797 (=> (not res!1050679) (not e!1575363))))

(assert (=> b!2481797 (= res!1050679 (dynLambda!12464 lambda!93982 (h!34507 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))))))))

(declare-fun b!2481798 () Bool)

(assert (=> b!2481798 (= e!1575363 (forall!5969 (t!210858 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540))))) lambda!93982))))

(assert (= (and d!712917 (not res!1050678)) b!2481797))

(assert (= (and b!2481797 res!1050679) b!2481798))

(declare-fun b_lambda!76117 () Bool)

(assert (=> (not b_lambda!76117) (not b!2481797)))

(declare-fun m!2849905 () Bool)

(assert (=> b!2481797 m!2849905))

(declare-fun m!2849907 () Bool)

(assert (=> b!2481798 m!2849907))

(assert (=> b!2481541 d!712917))

(assert (=> b!2481541 d!712819))

(declare-fun bs!467497 () Bool)

(declare-fun d!712919 () Bool)

(assert (= bs!467497 (and d!712919 d!712833)))

(declare-fun lambda!94045 () Int)

(assert (=> bs!467497 (not (= lambda!94045 lambda!93988))))

(declare-fun bs!467498 () Bool)

(assert (= bs!467498 (and d!712919 b!2481541)))

(assert (=> bs!467498 (not (= lambda!94045 lambda!93982))))

(declare-fun bs!467499 () Bool)

(assert (= bs!467499 (and d!712919 d!712865)))

(assert (=> bs!467499 (not (= lambda!94045 lambda!93992))))

(declare-fun bs!467500 () Bool)

(assert (= bs!467500 (and d!712919 b!2481494)))

(assert (=> bs!467500 (not (= lambda!94045 lambda!93973))))

(declare-fun bs!467501 () Bool)

(assert (= bs!467501 (and d!712919 d!712863)))

(assert (=> bs!467501 (not (= lambda!94045 lambda!93989))))

(declare-fun bs!467502 () Bool)

(assert (= bs!467502 (and d!712919 d!712827)))

(assert (=> bs!467502 (not (= lambda!94045 lambda!93985))))

(declare-fun bs!467503 () Bool)

(assert (= bs!467503 (and d!712919 b!2481528)))

(assert (=> bs!467503 (not (= lambda!94045 lambda!93979))))

(declare-fun bs!467504 () Bool)

(assert (= bs!467504 (and d!712919 d!712881)))

(assert (=> bs!467504 (not (= lambda!94045 lambda!94037))))

(declare-fun bs!467505 () Bool)

(assert (= bs!467505 (and d!712919 d!712895)))

(assert (=> bs!467505 (not (= lambda!94045 lambda!94044))))

(declare-fun bs!467506 () Bool)

(assert (= bs!467506 (and d!712919 d!712811)))

(assert (=> bs!467506 (= lambda!94045 lambda!93976)))

(assert (=> d!712919 true))

(assert (=> d!712919 (= (allKeysSameHashInMap!165 (map!6190 (v!31437 (underlying!6928 thiss!42540))) (hashF!5229 thiss!42540)) (forall!5969 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))) lambda!94045))))

(declare-fun bs!467507 () Bool)

(assert (= bs!467507 d!712919))

(declare-fun m!2849909 () Bool)

(assert (=> bs!467507 m!2849909))

(assert (=> b!2481542 d!712919))

(assert (=> b!2481542 d!712819))

(declare-fun d!712921 () Bool)

(declare-fun lt!888525 () Bool)

(assert (=> d!712921 (= lt!888525 (select (content!3975 e!1575209) key!2246))))

(declare-fun e!1575364 () Bool)

(assert (=> d!712921 (= lt!888525 e!1575364)))

(declare-fun res!1050681 () Bool)

(assert (=> d!712921 (=> (not res!1050681) (not e!1575364))))

(assert (=> d!712921 (= res!1050681 ((_ is Cons!29102) e!1575209))))

(assert (=> d!712921 (= (contains!5103 e!1575209 key!2246) lt!888525)))

(declare-fun b!2481799 () Bool)

(declare-fun e!1575365 () Bool)

(assert (=> b!2481799 (= e!1575364 e!1575365)))

(declare-fun res!1050680 () Bool)

(assert (=> b!2481799 (=> res!1050680 e!1575365)))

(assert (=> b!2481799 (= res!1050680 (= (h!34508 e!1575209) key!2246))))

(declare-fun b!2481800 () Bool)

(assert (=> b!2481800 (= e!1575365 (contains!5103 (t!210859 e!1575209) key!2246))))

(assert (= (and d!712921 res!1050681) b!2481799))

(assert (= (and b!2481799 (not res!1050680)) b!2481800))

(declare-fun m!2849911 () Bool)

(assert (=> d!712921 m!2849911))

(declare-fun m!2849913 () Bool)

(assert (=> d!712921 m!2849913))

(declare-fun m!2849915 () Bool)

(assert (=> b!2481800 m!2849915))

(assert (=> bm!151982 d!712921))

(assert (=> bm!151977 d!712819))

(declare-fun d!712923 () Bool)

(declare-fun e!1575371 () Bool)

(assert (=> d!712923 e!1575371))

(declare-fun res!1050684 () Bool)

(assert (=> d!712923 (=> res!1050684 e!1575371)))

(declare-fun lt!888535 () Bool)

(assert (=> d!712923 (= res!1050684 (not lt!888535))))

(declare-fun lt!888537 () Bool)

(assert (=> d!712923 (= lt!888535 lt!888537)))

(declare-fun lt!888536 () Unit!42585)

(declare-fun e!1575370 () Unit!42585)

(assert (=> d!712923 (= lt!888536 e!1575370)))

(declare-fun c!394571 () Bool)

(assert (=> d!712923 (= c!394571 lt!888537)))

(assert (=> d!712923 (= lt!888537 (containsKey!133 (toList!1576 (ite c!394509 lt!888323 call!151979)) call!151981))))

(assert (=> d!712923 (= (contains!5102 (ite c!394509 lt!888323 call!151979) call!151981) lt!888535)))

(declare-fun b!2481807 () Bool)

(declare-fun lt!888534 () Unit!42585)

(assert (=> b!2481807 (= e!1575370 lt!888534)))

(assert (=> b!2481807 (= lt!888534 (lemmaContainsKeyImpliesGetValueByKeyDefined!93 (toList!1576 (ite c!394509 lt!888323 call!151979)) call!151981))))

(assert (=> b!2481807 (isDefined!4571 (getValueByKey!136 (toList!1576 (ite c!394509 lt!888323 call!151979)) call!151981))))

(declare-fun b!2481808 () Bool)

(declare-fun Unit!42615 () Unit!42585)

(assert (=> b!2481808 (= e!1575370 Unit!42615)))

(declare-fun b!2481809 () Bool)

(assert (=> b!2481809 (= e!1575371 (isDefined!4571 (getValueByKey!136 (toList!1576 (ite c!394509 lt!888323 call!151979)) call!151981)))))

(assert (= (and d!712923 c!394571) b!2481807))

(assert (= (and d!712923 (not c!394571)) b!2481808))

(assert (= (and d!712923 (not res!1050684)) b!2481809))

(declare-fun m!2849917 () Bool)

(assert (=> d!712923 m!2849917))

(declare-fun m!2849919 () Bool)

(assert (=> b!2481807 m!2849919))

(assert (=> b!2481807 m!2849593))

(assert (=> b!2481807 m!2849593))

(declare-fun m!2849921 () Bool)

(assert (=> b!2481807 m!2849921))

(assert (=> b!2481809 m!2849593))

(assert (=> b!2481809 m!2849593))

(assert (=> b!2481809 m!2849921))

(assert (=> bm!151978 d!712923))

(declare-fun tp!794406 () Bool)

(declare-fun b!2481810 () Bool)

(declare-fun e!1575372 () Bool)

(assert (=> b!2481810 (= e!1575372 (and tp_is_empty!12247 tp_is_empty!12249 tp!794406))))

(assert (=> b!2481580 (= tp!794393 e!1575372)))

(assert (= (and b!2481580 ((_ is Cons!29100) (t!210857 mapDefault!15544))) b!2481810))

(declare-fun e!1575373 () Bool)

(declare-fun tp!794407 () Bool)

(declare-fun b!2481811 () Bool)

(assert (=> b!2481811 (= e!1575373 (and tp_is_empty!12247 tp_is_empty!12249 tp!794407))))

(assert (=> b!2481582 (= tp!794395 e!1575373)))

(assert (= (and b!2481582 ((_ is Cons!29100) (t!210857 (minValue!3618 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540)))))))) b!2481811))

(declare-fun mapNonEmpty!15548 () Bool)

(declare-fun mapRes!15548 () Bool)

(declare-fun tp!794409 () Bool)

(declare-fun e!1575375 () Bool)

(assert (=> mapNonEmpty!15548 (= mapRes!15548 (and tp!794409 e!1575375))))

(declare-fun mapKey!15548 () (_ BitVec 32))

(declare-fun mapValue!15548 () List!29200)

(declare-fun mapRest!15548 () (Array (_ BitVec 32) List!29200))

(assert (=> mapNonEmpty!15548 (= mapRest!15547 (store mapRest!15548 mapKey!15548 mapValue!15548))))

(declare-fun condMapEmpty!15548 () Bool)

(declare-fun mapDefault!15548 () List!29200)

(assert (=> mapNonEmpty!15547 (= condMapEmpty!15548 (= mapRest!15547 ((as const (Array (_ BitVec 32) List!29200)) mapDefault!15548)))))

(declare-fun e!1575374 () Bool)

(assert (=> mapNonEmpty!15547 (= tp!794403 (and e!1575374 mapRes!15548))))

(declare-fun mapIsEmpty!15548 () Bool)

(assert (=> mapIsEmpty!15548 mapRes!15548))

(declare-fun b!2481812 () Bool)

(declare-fun tp!794408 () Bool)

(assert (=> b!2481812 (= e!1575375 (and tp_is_empty!12247 tp_is_empty!12249 tp!794408))))

(declare-fun b!2481813 () Bool)

(declare-fun tp!794410 () Bool)

(assert (=> b!2481813 (= e!1575374 (and tp_is_empty!12247 tp_is_empty!12249 tp!794410))))

(assert (= (and mapNonEmpty!15547 condMapEmpty!15548) mapIsEmpty!15548))

(assert (= (and mapNonEmpty!15547 (not condMapEmpty!15548)) mapNonEmpty!15548))

(assert (= (and mapNonEmpty!15548 ((_ is Cons!29100) mapValue!15548)) b!2481812))

(assert (= (and mapNonEmpty!15547 ((_ is Cons!29100) mapDefault!15548)) b!2481813))

(declare-fun m!2849923 () Bool)

(assert (=> mapNonEmpty!15548 m!2849923))

(declare-fun tp!794411 () Bool)

(declare-fun b!2481814 () Bool)

(declare-fun e!1575376 () Bool)

(assert (=> b!2481814 (= e!1575376 (and tp_is_empty!12247 tp_is_empty!12249 tp!794411))))

(assert (=> b!2481589 (= tp!794402 e!1575376)))

(assert (= (and b!2481589 ((_ is Cons!29100) (t!210857 mapValue!15547))) b!2481814))

(declare-fun e!1575377 () Bool)

(declare-fun b!2481815 () Bool)

(declare-fun tp!794412 () Bool)

(assert (=> b!2481815 (= e!1575377 (and tp_is_empty!12247 tp_is_empty!12249 tp!794412))))

(assert (=> b!2481581 (= tp!794394 e!1575377)))

(assert (= (and b!2481581 ((_ is Cons!29100) (t!210857 (zeroValue!3618 (v!31436 (underlying!6927 (v!31437 (underlying!6928 thiss!42540)))))))) b!2481815))

(declare-fun e!1575378 () Bool)

(declare-fun tp!794413 () Bool)

(declare-fun b!2481816 () Bool)

(assert (=> b!2481816 (= e!1575378 (and tp_is_empty!12247 tp_is_empty!12249 tp!794413))))

(assert (=> b!2481591 (= tp!794405 e!1575378)))

(assert (= (and b!2481591 ((_ is Cons!29100) (t!210857 mapValue!15544))) b!2481816))

(declare-fun b!2481817 () Bool)

(declare-fun e!1575379 () Bool)

(declare-fun tp!794414 () Bool)

(assert (=> b!2481817 (= e!1575379 (and tp_is_empty!12247 tp_is_empty!12249 tp!794414))))

(assert (=> b!2481590 (= tp!794404 e!1575379)))

(assert (= (and b!2481590 ((_ is Cons!29100) (t!210857 mapDefault!15547))) b!2481817))

(declare-fun b_lambda!76119 () Bool)

(assert (= b_lambda!76117 (or b!2481541 b_lambda!76119)))

(declare-fun bs!467508 () Bool)

(declare-fun d!712925 () Bool)

(assert (= bs!467508 (and d!712925 b!2481541)))

(assert (=> bs!467508 (= (dynLambda!12464 lambda!93982 (h!34507 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540)))))) (noDuplicateKeys!84 (_2!16950 (h!34507 (toList!1576 (map!6190 (v!31437 (underlying!6928 thiss!42540))))))))))

(declare-fun m!2849925 () Bool)

(assert (=> bs!467508 m!2849925))

(assert (=> b!2481797 d!712925))

(declare-fun b_lambda!76121 () Bool)

(assert (= b_lambda!76109 (or (and b!2481493 b_free!72297) b_lambda!76121)))

(declare-fun b_lambda!76123 () Bool)

(assert (= b_lambda!76111 (or d!712811 b_lambda!76123)))

(declare-fun bs!467509 () Bool)

(declare-fun d!712927 () Bool)

(assert (= bs!467509 (and d!712927 d!712811)))

(declare-fun allKeysSameHash!65 (List!29200 (_ BitVec 64) Hashable!3270) Bool)

(assert (=> bs!467509 (= (dynLambda!12464 lambda!93976 (h!34507 (toList!1576 lt!888275))) (allKeysSameHash!65 (_2!16950 (h!34507 (toList!1576 lt!888275))) (_1!16950 (h!34507 (toList!1576 lt!888275))) (hashF!5229 thiss!42540)))))

(declare-fun m!2849927 () Bool)

(assert (=> bs!467509 m!2849927))

(assert (=> b!2481628 d!712927))

(declare-fun b_lambda!76125 () Bool)

(assert (= b_lambda!76115 (or d!712827 b_lambda!76125)))

(declare-fun bs!467510 () Bool)

(declare-fun d!712929 () Bool)

(assert (= bs!467510 (and d!712929 d!712827)))

(assert (=> bs!467510 (= (dynLambda!12464 lambda!93985 (h!34507 (toList!1576 lt!888275))) (noDuplicateKeys!84 (_2!16950 (h!34507 (toList!1576 lt!888275)))))))

(assert (=> bs!467510 m!2849591))

(assert (=> b!2481702 d!712929))

(declare-fun b_lambda!76127 () Bool)

(assert (= b_lambda!76107 (or b!2481528 b_lambda!76127)))

(declare-fun bs!467511 () Bool)

(declare-fun d!712931 () Bool)

(assert (= bs!467511 (and d!712931 b!2481528)))

(assert (=> bs!467511 (= (dynLambda!12464 lambda!93979 (tuple2!28819 lt!888330 (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330))) (noDuplicateKeys!84 (_2!16950 (tuple2!28819 lt!888330 (apply!6915 (v!31437 (underlying!6928 thiss!42540)) lt!888330)))))))

(declare-fun m!2849929 () Bool)

(assert (=> bs!467511 m!2849929))

(assert (=> d!712847 d!712931))

(declare-fun b_lambda!76129 () Bool)

(assert (= b_lambda!76113 (or b!2481494 b_lambda!76129)))

(declare-fun bs!467512 () Bool)

(declare-fun d!712933 () Bool)

(assert (= bs!467512 (and d!712933 b!2481494)))

(assert (=> bs!467512 (= (dynLambda!12464 lambda!93973 (h!34507 (t!210858 (toList!1576 lt!888275)))) (noDuplicateKeys!84 (_2!16950 (h!34507 (t!210858 (toList!1576 lt!888275))))))))

(declare-fun m!2849931 () Bool)

(assert (=> bs!467512 m!2849931))

(assert (=> b!2481700 d!712933))

(check-sat (not tb!140375) (not b!2481807) (not d!712843) (not b!2481635) (not d!712915) (not d!712849) (not b!2481729) (not bs!467508) (not b_next!73003) (not b!2481718) (not b!2481756) (not d!712871) (not b!2481698) (not bs!467512) (not b!2481813) b_and!188547 (not b_lambda!76127) (not b!2481669) (not b!2481642) (not b!2481759) (not d!712899) (not d!712863) (not b!2481636) (not d!712869) (not b!2481754) (not b!2481714) (not d!712903) (not d!712891) (not d!712841) (not b!2481817) (not b!2481814) (not b!2481670) (not bs!467511) (not b!2481736) (not b!2481765) (not d!712851) (not b!2481605) (not b!2481750) (not b!2481773) (not d!712887) (not b!2481770) (not mapNonEmpty!15548) (not d!712835) (not d!712913) (not d!712921) tp_is_empty!12249 (not b!2481594) (not b!2481760) (not b!2481726) (not d!712865) (not b!2481629) (not b!2481701) (not d!712901) (not b_lambda!76105) (not b!2481716) (not b!2481764) (not b!2481796) (not d!712831) (not b!2481767) (not b_lambda!76129) (not b!2481728) (not b!2481816) (not d!712895) tp_is_empty!12247 (not b!2481721) (not b!2481640) (not b!2481639) (not b_lambda!76119) (not d!712883) (not b!2481751) (not d!712881) (not b!2481810) (not bm!151991) (not b!2481626) (not b_lambda!76125) (not bm!151983) (not d!712875) (not d!712879) (not bm!151993) (not b!2481784) (not b_lambda!76123) (not b!2481811) (not d!712857) (not bm!151994) (not b!2481755) (not bs!467510) (not b!2481809) (not b!2481791) (not d!712867) (not b!2481812) (not b!2481758) (not b!2481762) (not b!2481645) (not b!2481763) (not b!2481743) (not b!2481753) (not b!2481644) (not b!2481668) (not b!2481794) (not b_lambda!76121) (not d!712893) (not b!2481621) (not b!2481748) (not b!2481637) (not b!2481666) (not b!2481699) (not b!2481614) (not b!2481695) (not d!712897) (not d!712923) (not d!712861) (not bm!151990) (not b!2481725) (not b!2481745) (not d!712847) (not b!2481694) b_and!188545 (not b!2481627) (not b!2481730) (not b!2481744) (not bm!151992) (not b_next!73001) (not d!712833) (not b!2481671) (not d!712839) (not d!712909) (not b!2481609) (not b!2481697) (not b!2481800) (not b!2481703) (not d!712919) (not d!712845) (not d!712889) (not d!712911) (not b!2481798) (not d!712885) (not b!2481815) (not bs!467509) (not b!2481641))
(check-sat b_and!188545 b_and!188547 (not b_next!73001) (not b_next!73003))
