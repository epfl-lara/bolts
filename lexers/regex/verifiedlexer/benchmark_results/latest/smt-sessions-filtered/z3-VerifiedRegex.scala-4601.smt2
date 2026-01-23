; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241936 () Bool)

(assert start!241936)

(declare-fun b!2479472 () Bool)

(declare-fun b_free!72145 () Bool)

(declare-fun b_next!72849 () Bool)

(assert (=> b!2479472 (= b_free!72145 (not b_next!72849))))

(declare-fun tp!793530 () Bool)

(declare-fun b_and!188387 () Bool)

(assert (=> b!2479472 (= tp!793530 b_and!188387)))

(declare-fun b!2479471 () Bool)

(declare-fun b_free!72147 () Bool)

(declare-fun b_next!72851 () Bool)

(assert (=> b!2479471 (= b_free!72147 (not b_next!72851))))

(declare-fun tp!793527 () Bool)

(declare-fun b_and!188389 () Bool)

(assert (=> b!2479471 (= tp!793527 b_and!188389)))

(declare-fun b!2479464 () Bool)

(declare-fun res!1049497 () Bool)

(declare-fun e!1573592 () Bool)

(assert (=> b!2479464 (=> (not res!1049497) (not e!1573592))))

(declare-datatypes ((V!5592 0))(
  ( (V!5593 (val!8787 Int)) )
))
(declare-datatypes ((K!5390 0))(
  ( (K!5391 (val!8788 Int)) )
))
(declare-datatypes ((tuple2!28586 0))(
  ( (tuple2!28587 (_1!16834 K!5390) (_2!16834 V!5592)) )
))
(declare-datatypes ((List!29132 0))(
  ( (Nil!29032) (Cons!29032 (h!34436 tuple2!28586) (t!210785 List!29132)) )
))
(declare-datatypes ((tuple2!28588 0))(
  ( (tuple2!28589 (_1!16835 (_ BitVec 64)) (_2!16835 List!29132)) )
))
(declare-datatypes ((List!29133 0))(
  ( (Nil!29033) (Cons!29033 (h!34437 tuple2!28588) (t!210786 List!29133)) )
))
(declare-datatypes ((ListLongMap!463 0))(
  ( (ListLongMap!464 (toList!1518 List!29133)) )
))
(declare-fun lt!886476 () ListLongMap!463)

(declare-datatypes ((Unit!42463 0))(
  ( (Unit!42464) )
))
(declare-datatypes ((Hashable!3232 0))(
  ( (HashableExt!3231 (__x!18872 Int)) )
))
(declare-datatypes ((array!11741 0))(
  ( (array!11742 (arr!5234 (Array (_ BitVec 32) List!29132)) (size!22653 (_ BitVec 32))) )
))
(declare-datatypes ((array!11743 0))(
  ( (array!11744 (arr!5235 (Array (_ BitVec 32) (_ BitVec 64))) (size!22654 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6644 0))(
  ( (LongMapFixedSize!6645 (defaultEntry!3696 Int) (mask!8472 (_ BitVec 32)) (extraKeys!3570 (_ BitVec 32)) (zeroValue!3580 List!29132) (minValue!3580 List!29132) (_size!6691 (_ BitVec 32)) (_keys!3619 array!11743) (_values!3602 array!11741) (_vacant!3383 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13105 0))(
  ( (Cell!13106 (v!31344 LongMapFixedSize!6644)) )
))
(declare-datatypes ((MutLongMap!3322 0))(
  ( (LongMap!3322 (underlying!6851 Cell!13105)) (MutLongMapExt!3321 (__x!18873 Int)) )
))
(declare-datatypes ((Cell!13107 0))(
  ( (Cell!13108 (v!31345 MutLongMap!3322)) )
))
(declare-datatypes ((MutableMap!3232 0))(
  ( (MutableMapExt!3231 (__x!18874 Int)) (HashMap!3232 (underlying!6852 Cell!13107) (hashF!5180 Hashable!3232) (_size!6692 (_ BitVec 32)) (defaultValue!3394 Int)) )
))
(declare-datatypes ((tuple2!28590 0))(
  ( (tuple2!28591 (_1!16836 Unit!42463) (_2!16836 MutableMap!3232)) )
))
(declare-fun lt!886471 () tuple2!28590)

(declare-fun allKeysSameHashInMap!142 (ListLongMap!463 Hashable!3232) Bool)

(assert (=> b!2479464 (= res!1049497 (allKeysSameHashInMap!142 lt!886476 (hashF!5180 (_2!16836 lt!886471))))))

(declare-fun b!2479465 () Bool)

(declare-fun e!1573594 () Bool)

(get-info :version)

(assert (=> b!2479465 (= e!1573594 ((_ is LongMap!3322) (v!31345 (underlying!6852 (_2!16836 lt!886471)))))))

(assert (=> b!2479465 e!1573592))

(declare-fun res!1049499 () Bool)

(assert (=> b!2479465 (=> (not res!1049499) (not e!1573592))))

(declare-fun lambda!93690 () Int)

(declare-fun forall!5948 (List!29133 Int) Bool)

(assert (=> b!2479465 (= res!1049499 (forall!5948 (toList!1518 lt!886476) lambda!93690))))

(declare-fun lt!886474 () ListLongMap!463)

(declare-fun lt!886470 () (_ BitVec 64))

(declare-fun lt!886473 () List!29132)

(declare-fun +!67 (ListLongMap!463 tuple2!28588) ListLongMap!463)

(assert (=> b!2479465 (= lt!886476 (+!67 lt!886474 (tuple2!28589 lt!886470 lt!886473)))))

(declare-fun lt!886475 () Unit!42463)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!38 (ListLongMap!463 (_ BitVec 64) List!29132 Hashable!3232) Unit!42463)

(assert (=> b!2479465 (= lt!886475 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!38 lt!886474 lt!886470 lt!886473 (hashF!5180 (_2!16836 lt!886471))))))

(declare-fun allKeysSameHash!48 (List!29132 (_ BitVec 64) Hashable!3232) Bool)

(assert (=> b!2479465 (allKeysSameHash!48 lt!886473 lt!886470 (hashF!5180 (_2!16836 lt!886471)))))

(declare-fun lt!886468 () List!29132)

(declare-fun lt!886477 () Unit!42463)

(declare-fun key!2246 () K!5390)

(declare-fun lemmaRemovePairForKeyPreservesHash!42 (List!29132 K!5390 (_ BitVec 64) Hashable!3232) Unit!42463)

(assert (=> b!2479465 (= lt!886477 (lemmaRemovePairForKeyPreservesHash!42 lt!886468 key!2246 lt!886470 (hashF!5180 (_2!16836 lt!886471))))))

(assert (=> b!2479465 (allKeysSameHash!48 lt!886468 lt!886470 (hashF!5180 (_2!16836 lt!886471)))))

(declare-fun lt!886478 () Unit!42463)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!44 (List!29133 (_ BitVec 64) List!29132 Hashable!3232) Unit!42463)

(assert (=> b!2479465 (= lt!886478 (lemmaInLongMapAllKeySameHashThenForTuple!44 (toList!1518 lt!886474) lt!886470 lt!886468 (hashF!5180 (_2!16836 lt!886471))))))

(declare-fun mapIsEmpty!15418 () Bool)

(declare-fun mapRes!15418 () Bool)

(assert (=> mapIsEmpty!15418 mapRes!15418))

(declare-fun b!2479466 () Bool)

(declare-fun map!6118 (MutLongMap!3322) ListLongMap!463)

(assert (=> b!2479466 (= e!1573592 (forall!5948 (toList!1518 (map!6118 (v!31345 (underlying!6852 (_2!16836 lt!886471))))) lambda!93690))))

(declare-fun res!1049495 () Bool)

(declare-fun e!1573595 () Bool)

(assert (=> start!241936 (=> (not res!1049495) (not e!1573595))))

(declare-fun thiss!42540 () MutableMap!3232)

(assert (=> start!241936 (= res!1049495 ((_ is HashMap!3232) thiss!42540))))

(assert (=> start!241936 e!1573595))

(declare-fun e!1573601 () Bool)

(assert (=> start!241936 e!1573601))

(declare-fun tp_is_empty!12163 () Bool)

(assert (=> start!241936 tp_is_empty!12163))

(declare-fun b!2479467 () Bool)

(assert (=> b!2479467 (= e!1573595 (not e!1573594))))

(declare-fun res!1049496 () Bool)

(assert (=> b!2479467 (=> res!1049496 e!1573594)))

(declare-datatypes ((tuple2!28592 0))(
  ( (tuple2!28593 (_1!16837 Bool) (_2!16837 MutLongMap!3322)) )
))
(declare-fun lt!886481 () tuple2!28592)

(assert (=> b!2479467 (= res!1049496 (not (_1!16837 lt!886481)))))

(declare-fun noDuplicateKeys!61 (List!29132) Bool)

(assert (=> b!2479467 (noDuplicateKeys!61 lt!886473)))

(declare-fun lt!886469 () Unit!42463)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!47 (List!29132 K!5390) Unit!42463)

(assert (=> b!2479467 (= lt!886469 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!47 lt!886468 key!2246))))

(declare-fun lt!886472 () Cell!13107)

(declare-fun Unit!42465 () Unit!42463)

(declare-fun Unit!42466 () Unit!42463)

(assert (=> b!2479467 (= lt!886471 (ite (_1!16837 lt!886481) (tuple2!28591 Unit!42465 (HashMap!3232 lt!886472 (hashF!5180 thiss!42540) (bvsub (_size!6692 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3394 thiss!42540))) (tuple2!28591 Unit!42466 (HashMap!3232 lt!886472 (hashF!5180 thiss!42540) (_size!6692 thiss!42540) (defaultValue!3394 thiss!42540)))))))

(assert (=> b!2479467 (= lt!886472 (Cell!13108 (_2!16837 lt!886481)))))

(declare-fun update!166 (MutLongMap!3322 (_ BitVec 64) List!29132) tuple2!28592)

(assert (=> b!2479467 (= lt!886481 (update!166 (v!31345 (underlying!6852 thiss!42540)) lt!886470 lt!886473))))

(declare-fun removePairForKey!51 (List!29132 K!5390) List!29132)

(assert (=> b!2479467 (= lt!886473 (removePairForKey!51 lt!886468 key!2246))))

(declare-datatypes ((ListMap!1003 0))(
  ( (ListMap!1004 (toList!1519 List!29132)) )
))
(declare-fun lt!886482 () ListMap!1003)

(declare-fun map!6119 (MutableMap!3232) ListMap!1003)

(assert (=> b!2479467 (= lt!886482 (map!6119 thiss!42540))))

(declare-fun lt!886480 () Unit!42463)

(declare-fun forallContained!832 (List!29133 Int tuple2!28588) Unit!42463)

(assert (=> b!2479467 (= lt!886480 (forallContained!832 (toList!1518 lt!886474) lambda!93690 (tuple2!28589 lt!886470 lt!886468)))))

(assert (=> b!2479467 (= lt!886474 (map!6118 (v!31345 (underlying!6852 thiss!42540))))))

(declare-fun apply!6881 (MutLongMap!3322 (_ BitVec 64)) List!29132)

(assert (=> b!2479467 (= lt!886468 (apply!6881 (v!31345 (underlying!6852 thiss!42540)) lt!886470))))

(declare-fun hash!656 (Hashable!3232 K!5390) (_ BitVec 64))

(assert (=> b!2479467 (= lt!886470 (hash!656 (hashF!5180 thiss!42540) key!2246))))

(declare-fun b!2479468 () Bool)

(declare-fun res!1049498 () Bool)

(assert (=> b!2479468 (=> (not res!1049498) (not e!1573595))))

(declare-fun valid!2532 (MutableMap!3232) Bool)

(assert (=> b!2479468 (= res!1049498 (valid!2532 thiss!42540))))

(declare-fun b!2479469 () Bool)

(declare-fun e!1573600 () Bool)

(declare-fun e!1573593 () Bool)

(declare-fun lt!886479 () MutLongMap!3322)

(assert (=> b!2479469 (= e!1573600 (and e!1573593 ((_ is LongMap!3322) lt!886479)))))

(assert (=> b!2479469 (= lt!886479 (v!31345 (underlying!6852 thiss!42540)))))

(declare-fun b!2479470 () Bool)

(declare-fun e!1573598 () Bool)

(declare-fun e!1573596 () Bool)

(assert (=> b!2479470 (= e!1573598 e!1573596)))

(assert (=> b!2479471 (= e!1573601 (and e!1573600 tp!793527))))

(declare-fun tp!793532 () Bool)

(declare-fun tp!793526 () Bool)

(declare-fun e!1573599 () Bool)

(declare-fun array_inv!3753 (array!11743) Bool)

(declare-fun array_inv!3754 (array!11741) Bool)

(assert (=> b!2479472 (= e!1573596 (and tp!793530 tp!793526 tp!793532 (array_inv!3753 (_keys!3619 (v!31344 (underlying!6851 (v!31345 (underlying!6852 thiss!42540)))))) (array_inv!3754 (_values!3602 (v!31344 (underlying!6851 (v!31345 (underlying!6852 thiss!42540)))))) e!1573599))))

(declare-fun mapNonEmpty!15418 () Bool)

(declare-fun tp!793529 () Bool)

(declare-fun tp!793528 () Bool)

(assert (=> mapNonEmpty!15418 (= mapRes!15418 (and tp!793529 tp!793528))))

(declare-fun mapKey!15418 () (_ BitVec 32))

(declare-fun mapValue!15418 () List!29132)

(declare-fun mapRest!15418 () (Array (_ BitVec 32) List!29132))

(assert (=> mapNonEmpty!15418 (= (arr!5234 (_values!3602 (v!31344 (underlying!6851 (v!31345 (underlying!6852 thiss!42540)))))) (store mapRest!15418 mapKey!15418 mapValue!15418))))

(declare-fun b!2479473 () Bool)

(declare-fun res!1049500 () Bool)

(assert (=> b!2479473 (=> (not res!1049500) (not e!1573595))))

(declare-fun contains!5031 (MutableMap!3232 K!5390) Bool)

(assert (=> b!2479473 (= res!1049500 (contains!5031 thiss!42540 key!2246))))

(declare-fun b!2479474 () Bool)

(assert (=> b!2479474 (= e!1573593 e!1573598)))

(declare-fun b!2479475 () Bool)

(declare-fun tp!793531 () Bool)

(assert (=> b!2479475 (= e!1573599 (and tp!793531 mapRes!15418))))

(declare-fun condMapEmpty!15418 () Bool)

(declare-fun mapDefault!15418 () List!29132)

(assert (=> b!2479475 (= condMapEmpty!15418 (= (arr!5234 (_values!3602 (v!31344 (underlying!6851 (v!31345 (underlying!6852 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29132)) mapDefault!15418)))))

(assert (= (and start!241936 res!1049495) b!2479468))

(assert (= (and b!2479468 res!1049498) b!2479473))

(assert (= (and b!2479473 res!1049500) b!2479467))

(assert (= (and b!2479467 (not res!1049496)) b!2479465))

(assert (= (and b!2479465 res!1049499) b!2479464))

(assert (= (and b!2479464 res!1049497) b!2479466))

(assert (= (and b!2479475 condMapEmpty!15418) mapIsEmpty!15418))

(assert (= (and b!2479475 (not condMapEmpty!15418)) mapNonEmpty!15418))

(assert (= b!2479472 b!2479475))

(assert (= b!2479470 b!2479472))

(assert (= b!2479474 b!2479470))

(assert (= (and b!2479469 ((_ is LongMap!3322) (v!31345 (underlying!6852 thiss!42540)))) b!2479474))

(assert (= b!2479471 b!2479469))

(assert (= (and start!241936 ((_ is HashMap!3232) thiss!42540)) b!2479471))

(declare-fun m!2847187 () Bool)

(assert (=> b!2479464 m!2847187))

(declare-fun m!2847189 () Bool)

(assert (=> b!2479472 m!2847189))

(declare-fun m!2847191 () Bool)

(assert (=> b!2479472 m!2847191))

(declare-fun m!2847193 () Bool)

(assert (=> b!2479466 m!2847193))

(declare-fun m!2847195 () Bool)

(assert (=> b!2479466 m!2847195))

(declare-fun m!2847197 () Bool)

(assert (=> b!2479467 m!2847197))

(declare-fun m!2847199 () Bool)

(assert (=> b!2479467 m!2847199))

(declare-fun m!2847201 () Bool)

(assert (=> b!2479467 m!2847201))

(declare-fun m!2847203 () Bool)

(assert (=> b!2479467 m!2847203))

(declare-fun m!2847205 () Bool)

(assert (=> b!2479467 m!2847205))

(declare-fun m!2847207 () Bool)

(assert (=> b!2479467 m!2847207))

(declare-fun m!2847209 () Bool)

(assert (=> b!2479467 m!2847209))

(declare-fun m!2847211 () Bool)

(assert (=> b!2479467 m!2847211))

(declare-fun m!2847213 () Bool)

(assert (=> b!2479467 m!2847213))

(declare-fun m!2847215 () Bool)

(assert (=> b!2479473 m!2847215))

(declare-fun m!2847217 () Bool)

(assert (=> b!2479465 m!2847217))

(declare-fun m!2847219 () Bool)

(assert (=> b!2479465 m!2847219))

(declare-fun m!2847221 () Bool)

(assert (=> b!2479465 m!2847221))

(declare-fun m!2847223 () Bool)

(assert (=> b!2479465 m!2847223))

(declare-fun m!2847225 () Bool)

(assert (=> b!2479465 m!2847225))

(declare-fun m!2847227 () Bool)

(assert (=> b!2479465 m!2847227))

(declare-fun m!2847229 () Bool)

(assert (=> b!2479465 m!2847229))

(declare-fun m!2847231 () Bool)

(assert (=> b!2479468 m!2847231))

(declare-fun m!2847233 () Bool)

(assert (=> mapNonEmpty!15418 m!2847233))

(check-sat (not b!2479465) (not b!2479472) (not b!2479468) (not b!2479467) tp_is_empty!12163 b_and!188389 (not b!2479475) b_and!188387 (not b!2479466) (not b!2479473) (not b!2479464) (not mapNonEmpty!15418) (not b_next!72849) (not b_next!72851))
(check-sat b_and!188389 b_and!188387 (not b_next!72849) (not b_next!72851))
(get-model)

(declare-fun bs!467313 () Bool)

(declare-fun d!712656 () Bool)

(assert (= bs!467313 (and d!712656 b!2479467)))

(declare-fun lambda!93693 () Int)

(assert (=> bs!467313 (not (= lambda!93693 lambda!93690))))

(assert (=> d!712656 true))

(assert (=> d!712656 (allKeysSameHash!48 lt!886468 lt!886470 (hashF!5180 (_2!16836 lt!886471)))))

(declare-fun lt!886485 () Unit!42463)

(declare-fun choose!14628 (List!29133 (_ BitVec 64) List!29132 Hashable!3232) Unit!42463)

(assert (=> d!712656 (= lt!886485 (choose!14628 (toList!1518 lt!886474) lt!886470 lt!886468 (hashF!5180 (_2!16836 lt!886471))))))

(assert (=> d!712656 (forall!5948 (toList!1518 lt!886474) lambda!93693)))

(assert (=> d!712656 (= (lemmaInLongMapAllKeySameHashThenForTuple!44 (toList!1518 lt!886474) lt!886470 lt!886468 (hashF!5180 (_2!16836 lt!886471))) lt!886485)))

(declare-fun bs!467314 () Bool)

(assert (= bs!467314 d!712656))

(assert (=> bs!467314 m!2847219))

(declare-fun m!2847235 () Bool)

(assert (=> bs!467314 m!2847235))

(declare-fun m!2847237 () Bool)

(assert (=> bs!467314 m!2847237))

(assert (=> b!2479465 d!712656))

(declare-fun d!712658 () Bool)

(assert (=> d!712658 (allKeysSameHash!48 (removePairForKey!51 lt!886468 key!2246) lt!886470 (hashF!5180 (_2!16836 lt!886471)))))

(declare-fun lt!886488 () Unit!42463)

(declare-fun choose!14629 (List!29132 K!5390 (_ BitVec 64) Hashable!3232) Unit!42463)

(assert (=> d!712658 (= lt!886488 (choose!14629 lt!886468 key!2246 lt!886470 (hashF!5180 (_2!16836 lt!886471))))))

(assert (=> d!712658 (noDuplicateKeys!61 lt!886468)))

(assert (=> d!712658 (= (lemmaRemovePairForKeyPreservesHash!42 lt!886468 key!2246 lt!886470 (hashF!5180 (_2!16836 lt!886471))) lt!886488)))

(declare-fun bs!467315 () Bool)

(assert (= bs!467315 d!712658))

(assert (=> bs!467315 m!2847211))

(assert (=> bs!467315 m!2847211))

(declare-fun m!2847239 () Bool)

(assert (=> bs!467315 m!2847239))

(declare-fun m!2847241 () Bool)

(assert (=> bs!467315 m!2847241))

(declare-fun m!2847243 () Bool)

(assert (=> bs!467315 m!2847243))

(assert (=> b!2479465 d!712658))

(declare-fun d!712660 () Bool)

(declare-fun e!1573604 () Bool)

(assert (=> d!712660 e!1573604))

(declare-fun res!1049505 () Bool)

(assert (=> d!712660 (=> (not res!1049505) (not e!1573604))))

(declare-fun lt!886500 () ListLongMap!463)

(declare-fun contains!5032 (ListLongMap!463 (_ BitVec 64)) Bool)

(assert (=> d!712660 (= res!1049505 (contains!5032 lt!886500 (_1!16835 (tuple2!28589 lt!886470 lt!886473))))))

(declare-fun lt!886499 () List!29133)

(assert (=> d!712660 (= lt!886500 (ListLongMap!464 lt!886499))))

(declare-fun lt!886497 () Unit!42463)

(declare-fun lt!886498 () Unit!42463)

(assert (=> d!712660 (= lt!886497 lt!886498)))

(declare-datatypes ((Option!5740 0))(
  ( (None!5739) (Some!5739 (v!31350 List!29132)) )
))
(declare-fun getValueByKey!132 (List!29133 (_ BitVec 64)) Option!5740)

(assert (=> d!712660 (= (getValueByKey!132 lt!886499 (_1!16835 (tuple2!28589 lt!886470 lt!886473))) (Some!5739 (_2!16835 (tuple2!28589 lt!886470 lt!886473))))))

(declare-fun lemmaContainsTupThenGetReturnValue!18 (List!29133 (_ BitVec 64) List!29132) Unit!42463)

(assert (=> d!712660 (= lt!886498 (lemmaContainsTupThenGetReturnValue!18 lt!886499 (_1!16835 (tuple2!28589 lt!886470 lt!886473)) (_2!16835 (tuple2!28589 lt!886470 lt!886473))))))

(declare-fun insertStrictlySorted!12 (List!29133 (_ BitVec 64) List!29132) List!29133)

(assert (=> d!712660 (= lt!886499 (insertStrictlySorted!12 (toList!1518 lt!886474) (_1!16835 (tuple2!28589 lt!886470 lt!886473)) (_2!16835 (tuple2!28589 lt!886470 lt!886473))))))

(assert (=> d!712660 (= (+!67 lt!886474 (tuple2!28589 lt!886470 lt!886473)) lt!886500)))

(declare-fun b!2479482 () Bool)

(declare-fun res!1049506 () Bool)

(assert (=> b!2479482 (=> (not res!1049506) (not e!1573604))))

(assert (=> b!2479482 (= res!1049506 (= (getValueByKey!132 (toList!1518 lt!886500) (_1!16835 (tuple2!28589 lt!886470 lt!886473))) (Some!5739 (_2!16835 (tuple2!28589 lt!886470 lt!886473)))))))

(declare-fun b!2479483 () Bool)

(declare-fun contains!5033 (List!29133 tuple2!28588) Bool)

(assert (=> b!2479483 (= e!1573604 (contains!5033 (toList!1518 lt!886500) (tuple2!28589 lt!886470 lt!886473)))))

(assert (= (and d!712660 res!1049505) b!2479482))

(assert (= (and b!2479482 res!1049506) b!2479483))

(declare-fun m!2847245 () Bool)

(assert (=> d!712660 m!2847245))

(declare-fun m!2847247 () Bool)

(assert (=> d!712660 m!2847247))

(declare-fun m!2847249 () Bool)

(assert (=> d!712660 m!2847249))

(declare-fun m!2847251 () Bool)

(assert (=> d!712660 m!2847251))

(declare-fun m!2847253 () Bool)

(assert (=> b!2479482 m!2847253))

(declare-fun m!2847255 () Bool)

(assert (=> b!2479483 m!2847255))

(assert (=> b!2479465 d!712660))

(declare-fun bs!467316 () Bool)

(declare-fun d!712662 () Bool)

(assert (= bs!467316 (and d!712662 b!2479467)))

(declare-fun lambda!93698 () Int)

(assert (=> bs!467316 (= lambda!93698 lambda!93690)))

(declare-fun bs!467317 () Bool)

(assert (= bs!467317 (and d!712662 d!712656)))

(assert (=> bs!467317 (not (= lambda!93698 lambda!93693))))

(declare-fun e!1573607 () Bool)

(assert (=> d!712662 e!1573607))

(declare-fun res!1049509 () Bool)

(assert (=> d!712662 (=> (not res!1049509) (not e!1573607))))

(declare-fun lt!886506 () ListLongMap!463)

(assert (=> d!712662 (= res!1049509 (forall!5948 (toList!1518 lt!886506) lambda!93698))))

(assert (=> d!712662 (= lt!886506 (+!67 lt!886474 (tuple2!28589 lt!886470 lt!886473)))))

(declare-fun lt!886505 () Unit!42463)

(declare-fun choose!14630 (ListLongMap!463 (_ BitVec 64) List!29132 Hashable!3232) Unit!42463)

(assert (=> d!712662 (= lt!886505 (choose!14630 lt!886474 lt!886470 lt!886473 (hashF!5180 (_2!16836 lt!886471))))))

(assert (=> d!712662 (forall!5948 (toList!1518 lt!886474) lambda!93698)))

(assert (=> d!712662 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!38 lt!886474 lt!886470 lt!886473 (hashF!5180 (_2!16836 lt!886471))) lt!886505)))

(declare-fun b!2479486 () Bool)

(assert (=> b!2479486 (= e!1573607 (allKeysSameHashInMap!142 lt!886506 (hashF!5180 (_2!16836 lt!886471))))))

(assert (= (and d!712662 res!1049509) b!2479486))

(declare-fun m!2847257 () Bool)

(assert (=> d!712662 m!2847257))

(assert (=> d!712662 m!2847229))

(declare-fun m!2847259 () Bool)

(assert (=> d!712662 m!2847259))

(declare-fun m!2847261 () Bool)

(assert (=> d!712662 m!2847261))

(declare-fun m!2847263 () Bool)

(assert (=> b!2479486 m!2847263))

(assert (=> b!2479465 d!712662))

(declare-fun d!712664 () Bool)

(assert (=> d!712664 true))

(assert (=> d!712664 true))

(declare-fun lambda!93701 () Int)

(declare-fun forall!5949 (List!29132 Int) Bool)

(assert (=> d!712664 (= (allKeysSameHash!48 lt!886473 lt!886470 (hashF!5180 (_2!16836 lt!886471))) (forall!5949 lt!886473 lambda!93701))))

(declare-fun bs!467318 () Bool)

(assert (= bs!467318 d!712664))

(declare-fun m!2847265 () Bool)

(assert (=> bs!467318 m!2847265))

(assert (=> b!2479465 d!712664))

(declare-fun d!712666 () Bool)

(declare-fun res!1049514 () Bool)

(declare-fun e!1573612 () Bool)

(assert (=> d!712666 (=> res!1049514 e!1573612)))

(assert (=> d!712666 (= res!1049514 ((_ is Nil!29033) (toList!1518 lt!886476)))))

(assert (=> d!712666 (= (forall!5948 (toList!1518 lt!886476) lambda!93690) e!1573612)))

(declare-fun b!2479495 () Bool)

(declare-fun e!1573613 () Bool)

(assert (=> b!2479495 (= e!1573612 e!1573613)))

(declare-fun res!1049515 () Bool)

(assert (=> b!2479495 (=> (not res!1049515) (not e!1573613))))

(declare-fun dynLambda!12458 (Int tuple2!28588) Bool)

(assert (=> b!2479495 (= res!1049515 (dynLambda!12458 lambda!93690 (h!34437 (toList!1518 lt!886476))))))

(declare-fun b!2479496 () Bool)

(assert (=> b!2479496 (= e!1573613 (forall!5948 (t!210786 (toList!1518 lt!886476)) lambda!93690))))

(assert (= (and d!712666 (not res!1049514)) b!2479495))

(assert (= (and b!2479495 res!1049515) b!2479496))

(declare-fun b_lambda!76063 () Bool)

(assert (=> (not b_lambda!76063) (not b!2479495)))

(declare-fun m!2847267 () Bool)

(assert (=> b!2479495 m!2847267))

(declare-fun m!2847269 () Bool)

(assert (=> b!2479496 m!2847269))

(assert (=> b!2479465 d!712666))

(declare-fun bs!467319 () Bool)

(declare-fun d!712668 () Bool)

(assert (= bs!467319 (and d!712668 d!712664)))

(declare-fun lambda!93702 () Int)

(assert (=> bs!467319 (= lambda!93702 lambda!93701)))

(assert (=> d!712668 true))

(assert (=> d!712668 true))

(assert (=> d!712668 (= (allKeysSameHash!48 lt!886468 lt!886470 (hashF!5180 (_2!16836 lt!886471))) (forall!5949 lt!886468 lambda!93702))))

(declare-fun bs!467320 () Bool)

(assert (= bs!467320 d!712668))

(declare-fun m!2847271 () Bool)

(assert (=> bs!467320 m!2847271))

(assert (=> b!2479465 d!712668))

(declare-fun bs!467321 () Bool)

(declare-fun b!2479524 () Bool)

(assert (= bs!467321 (and b!2479524 b!2479467)))

(declare-fun lambda!93705 () Int)

(assert (=> bs!467321 (= lambda!93705 lambda!93690)))

(declare-fun bs!467322 () Bool)

(assert (= bs!467322 (and b!2479524 d!712656)))

(assert (=> bs!467322 (not (= lambda!93705 lambda!93693))))

(declare-fun bs!467323 () Bool)

(assert (= bs!467323 (and b!2479524 d!712662)))

(assert (=> bs!467323 (= lambda!93705 lambda!93698)))

(declare-fun b!2479519 () Bool)

(assert (=> b!2479519 false))

(declare-fun lt!886549 () Unit!42463)

(declare-fun lt!886563 () Unit!42463)

(assert (=> b!2479519 (= lt!886549 lt!886563)))

(declare-fun lt!886562 () ListLongMap!463)

(declare-fun contains!5034 (ListMap!1003 K!5390) Bool)

(declare-fun extractMap!153 (List!29133) ListMap!1003)

(assert (=> b!2479519 (contains!5034 (extractMap!153 (toList!1518 lt!886562)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!65 (ListLongMap!463 K!5390 Hashable!3232) Unit!42463)

(assert (=> b!2479519 (= lt!886563 (lemmaInLongMapThenInGenericMap!65 lt!886562 key!2246 (hashF!5180 thiss!42540)))))

(declare-fun call!151896 () ListLongMap!463)

(assert (=> b!2479519 (= lt!886562 call!151896)))

(declare-fun e!1573630 () Unit!42463)

(declare-fun Unit!42467 () Unit!42463)

(assert (=> b!2479519 (= e!1573630 Unit!42467)))

(declare-fun b!2479520 () Bool)

(declare-fun e!1573634 () Unit!42463)

(assert (=> b!2479520 (= e!1573634 e!1573630)))

(declare-fun res!1049522 () Bool)

(declare-fun call!151897 () Bool)

(assert (=> b!2479520 (= res!1049522 call!151897)))

(declare-fun e!1573628 () Bool)

(assert (=> b!2479520 (=> (not res!1049522) (not e!1573628))))

(declare-fun c!394401 () Bool)

(assert (=> b!2479520 (= c!394401 e!1573628)))

(declare-fun b!2479521 () Bool)

(declare-fun e!1573631 () Unit!42463)

(declare-fun Unit!42468 () Unit!42463)

(assert (=> b!2479521 (= e!1573631 Unit!42468)))

(declare-fun b!2479522 () Bool)

(assert (=> b!2479522 false))

(declare-fun lt!886558 () Unit!42463)

(declare-fun lt!886552 () Unit!42463)

(assert (=> b!2479522 (= lt!886558 lt!886552)))

(declare-fun lt!886557 () List!29133)

(declare-fun lt!886548 () (_ BitVec 64))

(declare-fun lt!886553 () List!29132)

(assert (=> b!2479522 (contains!5033 lt!886557 (tuple2!28589 lt!886548 lt!886553))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!66 (List!29133 (_ BitVec 64) List!29132) Unit!42463)

(assert (=> b!2479522 (= lt!886552 (lemmaGetValueByKeyImpliesContainsTuple!66 lt!886557 lt!886548 lt!886553))))

(assert (=> b!2479522 (= lt!886553 (apply!6881 (v!31345 (underlying!6852 thiss!42540)) lt!886548))))

(assert (=> b!2479522 (= lt!886557 (toList!1518 (map!6118 (v!31345 (underlying!6852 thiss!42540)))))))

(declare-fun lt!886547 () Unit!42463)

(declare-fun lt!886566 () Unit!42463)

(assert (=> b!2479522 (= lt!886547 lt!886566)))

(declare-fun lt!886555 () List!29133)

(declare-fun isDefined!4562 (Option!5740) Bool)

(assert (=> b!2479522 (isDefined!4562 (getValueByKey!132 lt!886555 lt!886548))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!89 (List!29133 (_ BitVec 64)) Unit!42463)

(assert (=> b!2479522 (= lt!886566 (lemmaContainsKeyImpliesGetValueByKeyDefined!89 lt!886555 lt!886548))))

(assert (=> b!2479522 (= lt!886555 (toList!1518 (map!6118 (v!31345 (underlying!6852 thiss!42540)))))))

(declare-fun lt!886564 () Unit!42463)

(declare-fun lt!886565 () Unit!42463)

(assert (=> b!2479522 (= lt!886564 lt!886565)))

(declare-fun lt!886559 () List!29133)

(declare-fun containsKey!127 (List!29133 (_ BitVec 64)) Bool)

(assert (=> b!2479522 (containsKey!127 lt!886559 lt!886548)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!66 (List!29133 (_ BitVec 64)) Unit!42463)

(assert (=> b!2479522 (= lt!886565 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!66 lt!886559 lt!886548))))

(assert (=> b!2479522 (= lt!886559 (toList!1518 (map!6118 (v!31345 (underlying!6852 thiss!42540)))))))

(declare-fun Unit!42469 () Unit!42463)

(assert (=> b!2479522 (= e!1573631 Unit!42469)))

(declare-fun e!1573629 () Bool)

(declare-fun b!2479523 () Bool)

(declare-datatypes ((Option!5741 0))(
  ( (None!5740) (Some!5740 (v!31351 tuple2!28586)) )
))
(declare-fun isDefined!4563 (Option!5741) Bool)

(declare-fun getPair!65 (List!29132 K!5390) Option!5741)

(assert (=> b!2479523 (= e!1573629 (isDefined!4563 (getPair!65 (apply!6881 (v!31345 (underlying!6852 thiss!42540)) lt!886548) key!2246)))))

(declare-fun bm!151891 () Bool)

(declare-fun call!151900 () Option!5741)

(declare-fun call!151899 () List!29132)

(assert (=> bm!151891 (= call!151900 (getPair!65 call!151899 key!2246))))

(declare-fun bm!151892 () Bool)

(assert (=> bm!151892 (= call!151896 (map!6118 (v!31345 (underlying!6852 thiss!42540))))))

(declare-fun bm!151893 () Bool)

(declare-fun lt!886551 () ListLongMap!463)

(declare-fun call!151895 () (_ BitVec 64))

(declare-fun c!394398 () Bool)

(assert (=> bm!151893 (= call!151897 (contains!5032 (ite c!394398 lt!886551 call!151896) call!151895))))

(declare-fun e!1573633 () Unit!42463)

(assert (=> b!2479524 (= e!1573633 (forallContained!832 (toList!1518 (map!6118 (v!31345 (underlying!6852 thiss!42540)))) lambda!93705 (tuple2!28589 lt!886548 (apply!6881 (v!31345 (underlying!6852 thiss!42540)) lt!886548))))))

(declare-fun c!394400 () Bool)

(assert (=> b!2479524 (= c!394400 (not (contains!5033 (toList!1518 (map!6118 (v!31345 (underlying!6852 thiss!42540)))) (tuple2!28589 lt!886548 (apply!6881 (v!31345 (underlying!6852 thiss!42540)) lt!886548)))))))

(declare-fun lt!886561 () Unit!42463)

(assert (=> b!2479524 (= lt!886561 e!1573631)))

(declare-fun b!2479525 () Bool)

(declare-fun lt!886554 () Unit!42463)

(assert (=> b!2479525 (= e!1573634 lt!886554)))

(assert (=> b!2479525 (= lt!886551 call!151896)))

(declare-fun lemmaInGenericMapThenInLongMap!65 (ListLongMap!463 K!5390 Hashable!3232) Unit!42463)

(assert (=> b!2479525 (= lt!886554 (lemmaInGenericMapThenInLongMap!65 lt!886551 key!2246 (hashF!5180 thiss!42540)))))

(declare-fun res!1049524 () Bool)

(assert (=> b!2479525 (= res!1049524 call!151897)))

(declare-fun e!1573632 () Bool)

(assert (=> b!2479525 (=> (not res!1049524) (not e!1573632))))

(assert (=> b!2479525 e!1573632))

(declare-fun b!2479526 () Bool)

(declare-fun call!151898 () Bool)

(assert (=> b!2479526 (= e!1573628 call!151898)))

(declare-fun b!2479527 () Bool)

(declare-fun Unit!42470 () Unit!42463)

(assert (=> b!2479527 (= e!1573633 Unit!42470)))

(declare-fun b!2479528 () Bool)

(declare-fun Unit!42471 () Unit!42463)

(assert (=> b!2479528 (= e!1573630 Unit!42471)))

(declare-fun bm!151894 () Bool)

(declare-fun apply!6882 (ListLongMap!463 (_ BitVec 64)) List!29132)

(assert (=> bm!151894 (= call!151899 (apply!6882 (ite c!394398 lt!886551 call!151896) call!151895))))

(declare-fun d!712670 () Bool)

(declare-fun lt!886550 () Bool)

(assert (=> d!712670 (= lt!886550 (contains!5034 (map!6119 thiss!42540) key!2246))))

(assert (=> d!712670 (= lt!886550 e!1573629)))

(declare-fun res!1049523 () Bool)

(assert (=> d!712670 (=> (not res!1049523) (not e!1573629))))

(declare-fun contains!5035 (MutLongMap!3322 (_ BitVec 64)) Bool)

(assert (=> d!712670 (= res!1049523 (contains!5035 (v!31345 (underlying!6852 thiss!42540)) lt!886548))))

(declare-fun lt!886560 () Unit!42463)

(assert (=> d!712670 (= lt!886560 e!1573634)))

(assert (=> d!712670 (= c!394398 (contains!5034 (extractMap!153 (toList!1518 (map!6118 (v!31345 (underlying!6852 thiss!42540))))) key!2246))))

(declare-fun lt!886556 () Unit!42463)

(assert (=> d!712670 (= lt!886556 e!1573633)))

(declare-fun c!394399 () Bool)

(assert (=> d!712670 (= c!394399 (contains!5035 (v!31345 (underlying!6852 thiss!42540)) lt!886548))))

(assert (=> d!712670 (= lt!886548 (hash!656 (hashF!5180 thiss!42540) key!2246))))

(assert (=> d!712670 (valid!2532 thiss!42540)))

(assert (=> d!712670 (= (contains!5031 thiss!42540 key!2246) lt!886550)))

(declare-fun bm!151890 () Bool)

(assert (=> bm!151890 (= call!151898 (isDefined!4563 call!151900))))

(declare-fun b!2479529 () Bool)

(assert (=> b!2479529 (= e!1573632 call!151898)))

(declare-fun bm!151895 () Bool)

(assert (=> bm!151895 (= call!151895 (hash!656 (hashF!5180 thiss!42540) key!2246))))

(assert (= (and d!712670 c!394399) b!2479524))

(assert (= (and d!712670 (not c!394399)) b!2479527))

(assert (= (and b!2479524 c!394400) b!2479522))

(assert (= (and b!2479524 (not c!394400)) b!2479521))

(assert (= (and d!712670 c!394398) b!2479525))

(assert (= (and d!712670 (not c!394398)) b!2479520))

(assert (= (and b!2479525 res!1049524) b!2479529))

(assert (= (and b!2479520 res!1049522) b!2479526))

(assert (= (and b!2479520 c!394401) b!2479519))

(assert (= (and b!2479520 (not c!394401)) b!2479528))

(assert (= (or b!2479525 b!2479529 b!2479520 b!2479526) bm!151895))

(assert (= (or b!2479525 b!2479520 b!2479526 b!2479519) bm!151892))

(assert (= (or b!2479525 b!2479520) bm!151893))

(assert (= (or b!2479529 b!2479526) bm!151894))

(assert (= (or b!2479529 b!2479526) bm!151891))

(assert (= (or b!2479529 b!2479526) bm!151890))

(assert (= (and d!712670 res!1049523) b!2479523))

(assert (=> b!2479524 m!2847199))

(declare-fun m!2847273 () Bool)

(assert (=> b!2479524 m!2847273))

(declare-fun m!2847275 () Bool)

(assert (=> b!2479524 m!2847275))

(declare-fun m!2847277 () Bool)

(assert (=> b!2479524 m!2847277))

(assert (=> d!712670 m!2847231))

(declare-fun m!2847279 () Bool)

(assert (=> d!712670 m!2847279))

(declare-fun m!2847281 () Bool)

(assert (=> d!712670 m!2847281))

(assert (=> d!712670 m!2847205))

(declare-fun m!2847283 () Bool)

(assert (=> d!712670 m!2847283))

(assert (=> d!712670 m!2847199))

(assert (=> d!712670 m!2847207))

(assert (=> d!712670 m!2847205))

(assert (=> d!712670 m!2847279))

(declare-fun m!2847285 () Bool)

(assert (=> d!712670 m!2847285))

(assert (=> bm!151895 m!2847207))

(declare-fun m!2847287 () Bool)

(assert (=> bm!151894 m!2847287))

(declare-fun m!2847289 () Bool)

(assert (=> bm!151890 m!2847289))

(declare-fun m!2847291 () Bool)

(assert (=> b!2479519 m!2847291))

(assert (=> b!2479519 m!2847291))

(declare-fun m!2847293 () Bool)

(assert (=> b!2479519 m!2847293))

(declare-fun m!2847295 () Bool)

(assert (=> b!2479519 m!2847295))

(declare-fun m!2847297 () Bool)

(assert (=> bm!151893 m!2847297))

(declare-fun m!2847299 () Bool)

(assert (=> bm!151891 m!2847299))

(assert (=> bm!151892 m!2847199))

(assert (=> b!2479523 m!2847273))

(assert (=> b!2479523 m!2847273))

(declare-fun m!2847301 () Bool)

(assert (=> b!2479523 m!2847301))

(assert (=> b!2479523 m!2847301))

(declare-fun m!2847303 () Bool)

(assert (=> b!2479523 m!2847303))

(declare-fun m!2847305 () Bool)

(assert (=> b!2479522 m!2847305))

(assert (=> b!2479522 m!2847273))

(declare-fun m!2847307 () Bool)

(assert (=> b!2479522 m!2847307))

(declare-fun m!2847309 () Bool)

(assert (=> b!2479522 m!2847309))

(declare-fun m!2847311 () Bool)

(assert (=> b!2479522 m!2847311))

(declare-fun m!2847313 () Bool)

(assert (=> b!2479522 m!2847313))

(declare-fun m!2847315 () Bool)

(assert (=> b!2479522 m!2847315))

(declare-fun m!2847317 () Bool)

(assert (=> b!2479522 m!2847317))

(assert (=> b!2479522 m!2847199))

(assert (=> b!2479522 m!2847307))

(declare-fun m!2847319 () Bool)

(assert (=> b!2479525 m!2847319))

(assert (=> b!2479473 d!712670))

(declare-fun d!712672 () Bool)

(assert (=> d!712672 (= (array_inv!3753 (_keys!3619 (v!31344 (underlying!6851 (v!31345 (underlying!6852 thiss!42540)))))) (bvsge (size!22654 (_keys!3619 (v!31344 (underlying!6851 (v!31345 (underlying!6852 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2479472 d!712672))

(declare-fun d!712674 () Bool)

(assert (=> d!712674 (= (array_inv!3754 (_values!3602 (v!31344 (underlying!6851 (v!31345 (underlying!6852 thiss!42540)))))) (bvsge (size!22653 (_values!3602 (v!31344 (underlying!6851 (v!31345 (underlying!6852 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2479472 d!712674))

(declare-fun d!712676 () Bool)

(assert (=> d!712676 (noDuplicateKeys!61 (removePairForKey!51 lt!886468 key!2246))))

(declare-fun lt!886569 () Unit!42463)

(declare-fun choose!14631 (List!29132 K!5390) Unit!42463)

(assert (=> d!712676 (= lt!886569 (choose!14631 lt!886468 key!2246))))

(assert (=> d!712676 (noDuplicateKeys!61 lt!886468)))

(assert (=> d!712676 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!47 lt!886468 key!2246) lt!886569)))

(declare-fun bs!467324 () Bool)

(assert (= bs!467324 d!712676))

(assert (=> bs!467324 m!2847211))

(assert (=> bs!467324 m!2847211))

(declare-fun m!2847321 () Bool)

(assert (=> bs!467324 m!2847321))

(declare-fun m!2847323 () Bool)

(assert (=> bs!467324 m!2847323))

(assert (=> bs!467324 m!2847243))

(assert (=> b!2479467 d!712676))

(declare-fun b!2479538 () Bool)

(declare-fun e!1573639 () List!29132)

(assert (=> b!2479538 (= e!1573639 (t!210785 lt!886468))))

(declare-fun d!712678 () Bool)

(declare-fun lt!886572 () List!29132)

(declare-fun containsKey!128 (List!29132 K!5390) Bool)

(assert (=> d!712678 (not (containsKey!128 lt!886572 key!2246))))

(assert (=> d!712678 (= lt!886572 e!1573639)))

(declare-fun c!394406 () Bool)

(assert (=> d!712678 (= c!394406 (and ((_ is Cons!29032) lt!886468) (= (_1!16834 (h!34436 lt!886468)) key!2246)))))

(assert (=> d!712678 (noDuplicateKeys!61 lt!886468)))

(assert (=> d!712678 (= (removePairForKey!51 lt!886468 key!2246) lt!886572)))

(declare-fun b!2479541 () Bool)

(declare-fun e!1573640 () List!29132)

(assert (=> b!2479541 (= e!1573640 Nil!29032)))

(declare-fun b!2479539 () Bool)

(assert (=> b!2479539 (= e!1573639 e!1573640)))

(declare-fun c!394407 () Bool)

(assert (=> b!2479539 (= c!394407 ((_ is Cons!29032) lt!886468))))

(declare-fun b!2479540 () Bool)

(assert (=> b!2479540 (= e!1573640 (Cons!29032 (h!34436 lt!886468) (removePairForKey!51 (t!210785 lt!886468) key!2246)))))

(assert (= (and d!712678 c!394406) b!2479538))

(assert (= (and d!712678 (not c!394406)) b!2479539))

(assert (= (and b!2479539 c!394407) b!2479540))

(assert (= (and b!2479539 (not c!394407)) b!2479541))

(declare-fun m!2847325 () Bool)

(assert (=> d!712678 m!2847325))

(assert (=> d!712678 m!2847243))

(declare-fun m!2847327 () Bool)

(assert (=> b!2479540 m!2847327))

(assert (=> b!2479467 d!712678))

(declare-fun d!712680 () Bool)

(declare-fun res!1049529 () Bool)

(declare-fun e!1573645 () Bool)

(assert (=> d!712680 (=> res!1049529 e!1573645)))

(assert (=> d!712680 (= res!1049529 (not ((_ is Cons!29032) lt!886473)))))

(assert (=> d!712680 (= (noDuplicateKeys!61 lt!886473) e!1573645)))

(declare-fun b!2479546 () Bool)

(declare-fun e!1573646 () Bool)

(assert (=> b!2479546 (= e!1573645 e!1573646)))

(declare-fun res!1049530 () Bool)

(assert (=> b!2479546 (=> (not res!1049530) (not e!1573646))))

(assert (=> b!2479546 (= res!1049530 (not (containsKey!128 (t!210785 lt!886473) (_1!16834 (h!34436 lt!886473)))))))

(declare-fun b!2479547 () Bool)

(assert (=> b!2479547 (= e!1573646 (noDuplicateKeys!61 (t!210785 lt!886473)))))

(assert (= (and d!712680 (not res!1049529)) b!2479546))

(assert (= (and b!2479546 res!1049530) b!2479547))

(declare-fun m!2847329 () Bool)

(assert (=> b!2479546 m!2847329))

(declare-fun m!2847331 () Bool)

(assert (=> b!2479547 m!2847331))

(assert (=> b!2479467 d!712680))

(declare-fun d!712682 () Bool)

(declare-fun hash!660 (Hashable!3232 K!5390) (_ BitVec 64))

(assert (=> d!712682 (= (hash!656 (hashF!5180 thiss!42540) key!2246) (hash!660 (hashF!5180 thiss!42540) key!2246))))

(declare-fun bs!467325 () Bool)

(assert (= bs!467325 d!712682))

(declare-fun m!2847333 () Bool)

(assert (=> bs!467325 m!2847333))

(assert (=> b!2479467 d!712682))

(declare-fun d!712684 () Bool)

(declare-fun map!6120 (LongMapFixedSize!6644) ListLongMap!463)

(assert (=> d!712684 (= (map!6118 (v!31345 (underlying!6852 thiss!42540))) (map!6120 (v!31344 (underlying!6851 (v!31345 (underlying!6852 thiss!42540))))))))

(declare-fun bs!467326 () Bool)

(assert (= bs!467326 d!712684))

(declare-fun m!2847335 () Bool)

(assert (=> bs!467326 m!2847335))

(assert (=> b!2479467 d!712684))

(declare-fun d!712686 () Bool)

(declare-fun e!1573649 () Bool)

(assert (=> d!712686 e!1573649))

(declare-fun c!394410 () Bool)

(assert (=> d!712686 (= c!394410 (contains!5035 (v!31345 (underlying!6852 thiss!42540)) lt!886470))))

(declare-fun lt!886575 () List!29132)

(declare-fun apply!6883 (LongMapFixedSize!6644 (_ BitVec 64)) List!29132)

(assert (=> d!712686 (= lt!886575 (apply!6883 (v!31344 (underlying!6851 (v!31345 (underlying!6852 thiss!42540)))) lt!886470))))

(declare-fun valid!2533 (MutLongMap!3322) Bool)

(assert (=> d!712686 (valid!2533 (v!31345 (underlying!6852 thiss!42540)))))

(assert (=> d!712686 (= (apply!6881 (v!31345 (underlying!6852 thiss!42540)) lt!886470) lt!886575)))

(declare-fun b!2479552 () Bool)

(declare-fun get!8952 (Option!5740) List!29132)

(assert (=> b!2479552 (= e!1573649 (= lt!886575 (get!8952 (getValueByKey!132 (toList!1518 (map!6118 (v!31345 (underlying!6852 thiss!42540)))) lt!886470))))))

(declare-fun b!2479553 () Bool)

(declare-fun dynLambda!12459 (Int (_ BitVec 64)) List!29132)

(assert (=> b!2479553 (= e!1573649 (= lt!886575 (dynLambda!12459 (defaultEntry!3696 (v!31344 (underlying!6851 (v!31345 (underlying!6852 thiss!42540))))) lt!886470)))))

(assert (=> b!2479553 ((_ is LongMap!3322) (v!31345 (underlying!6852 thiss!42540)))))

(assert (= (and d!712686 c!394410) b!2479552))

(assert (= (and d!712686 (not c!394410)) b!2479553))

(declare-fun b_lambda!76065 () Bool)

(assert (=> (not b_lambda!76065) (not b!2479553)))

(declare-fun t!210788 () Bool)

(declare-fun tb!140371 () Bool)

(assert (=> (and b!2479472 (= (defaultEntry!3696 (v!31344 (underlying!6851 (v!31345 (underlying!6852 thiss!42540))))) (defaultEntry!3696 (v!31344 (underlying!6851 (v!31345 (underlying!6852 thiss!42540)))))) t!210788) tb!140371))

(assert (=> b!2479553 t!210788))

(declare-fun result!173300 () Bool)

(declare-fun b_and!188391 () Bool)

(assert (= b_and!188387 (and (=> t!210788 result!173300) b_and!188391)))

(declare-fun m!2847337 () Bool)

(assert (=> d!712686 m!2847337))

(declare-fun m!2847339 () Bool)

(assert (=> d!712686 m!2847339))

(declare-fun m!2847341 () Bool)

(assert (=> d!712686 m!2847341))

(assert (=> b!2479552 m!2847199))

(declare-fun m!2847343 () Bool)

(assert (=> b!2479552 m!2847343))

(assert (=> b!2479552 m!2847343))

(declare-fun m!2847345 () Bool)

(assert (=> b!2479552 m!2847345))

(declare-fun m!2847347 () Bool)

(assert (=> b!2479553 m!2847347))

(assert (=> b!2479467 d!712686))

(declare-fun d!712688 () Bool)

(assert (=> d!712688 (dynLambda!12458 lambda!93690 (tuple2!28589 lt!886470 lt!886468))))

(declare-fun lt!886578 () Unit!42463)

(declare-fun choose!14632 (List!29133 Int tuple2!28588) Unit!42463)

(assert (=> d!712688 (= lt!886578 (choose!14632 (toList!1518 lt!886474) lambda!93690 (tuple2!28589 lt!886470 lt!886468)))))

(declare-fun e!1573652 () Bool)

(assert (=> d!712688 e!1573652))

(declare-fun res!1049533 () Bool)

(assert (=> d!712688 (=> (not res!1049533) (not e!1573652))))

(assert (=> d!712688 (= res!1049533 (forall!5948 (toList!1518 lt!886474) lambda!93690))))

(assert (=> d!712688 (= (forallContained!832 (toList!1518 lt!886474) lambda!93690 (tuple2!28589 lt!886470 lt!886468)) lt!886578)))

(declare-fun b!2479556 () Bool)

(assert (=> b!2479556 (= e!1573652 (contains!5033 (toList!1518 lt!886474) (tuple2!28589 lt!886470 lt!886468)))))

(assert (= (and d!712688 res!1049533) b!2479556))

(declare-fun b_lambda!76067 () Bool)

(assert (=> (not b_lambda!76067) (not d!712688)))

(declare-fun m!2847349 () Bool)

(assert (=> d!712688 m!2847349))

(declare-fun m!2847351 () Bool)

(assert (=> d!712688 m!2847351))

(declare-fun m!2847353 () Bool)

(assert (=> d!712688 m!2847353))

(declare-fun m!2847355 () Bool)

(assert (=> b!2479556 m!2847355))

(assert (=> b!2479467 d!712688))

(declare-fun d!712690 () Bool)

(declare-fun lt!886581 () ListMap!1003)

(declare-fun invariantList!406 (List!29132) Bool)

(assert (=> d!712690 (invariantList!406 (toList!1519 lt!886581))))

(assert (=> d!712690 (= lt!886581 (extractMap!153 (toList!1518 (map!6118 (v!31345 (underlying!6852 thiss!42540))))))))

(assert (=> d!712690 (valid!2532 thiss!42540)))

(assert (=> d!712690 (= (map!6119 thiss!42540) lt!886581)))

(declare-fun bs!467327 () Bool)

(assert (= bs!467327 d!712690))

(declare-fun m!2847357 () Bool)

(assert (=> bs!467327 m!2847357))

(assert (=> bs!467327 m!2847199))

(assert (=> bs!467327 m!2847279))

(assert (=> bs!467327 m!2847231))

(assert (=> b!2479467 d!712690))

(declare-fun bm!151900 () Bool)

(declare-fun call!151905 () ListLongMap!463)

(assert (=> bm!151900 (= call!151905 (map!6118 (v!31345 (underlying!6852 thiss!42540))))))

(declare-fun b!2479575 () Bool)

(declare-fun e!1573665 () tuple2!28592)

(declare-fun lt!886593 () tuple2!28592)

(assert (=> b!2479575 (= e!1573665 (tuple2!28593 (_1!16837 lt!886593) (_2!16837 lt!886593)))))

(declare-fun repack!17 (MutLongMap!3322) tuple2!28592)

(assert (=> b!2479575 (= lt!886593 (repack!17 (v!31345 (underlying!6852 thiss!42540))))))

(declare-fun b!2479576 () Bool)

(declare-fun e!1573666 () Bool)

(declare-fun e!1573664 () Bool)

(assert (=> b!2479576 (= e!1573666 e!1573664)))

(declare-fun res!1049541 () Bool)

(declare-fun call!151906 () ListLongMap!463)

(assert (=> b!2479576 (= res!1049541 (contains!5032 call!151906 lt!886470))))

(assert (=> b!2479576 (=> (not res!1049541) (not e!1573664))))

(declare-fun b!2479577 () Bool)

(declare-fun res!1049542 () Bool)

(declare-fun e!1573663 () Bool)

(assert (=> b!2479577 (=> (not res!1049542) (not e!1573663))))

(declare-fun lt!886591 () tuple2!28592)

(assert (=> b!2479577 (= res!1049542 (valid!2533 (_2!16837 lt!886591)))))

(declare-fun b!2479578 () Bool)

(assert (=> b!2479578 (= e!1573665 (tuple2!28593 true (v!31345 (underlying!6852 thiss!42540))))))

(declare-fun b!2479579 () Bool)

(declare-fun e!1573667 () tuple2!28592)

(declare-fun lt!886592 () tuple2!28592)

(assert (=> b!2479579 (= e!1573667 (tuple2!28593 false (_2!16837 lt!886592)))))

(declare-fun b!2479580 () Bool)

(assert (=> b!2479580 (= e!1573664 (= call!151906 (+!67 call!151905 (tuple2!28589 lt!886470 lt!886473))))))

(declare-fun b!2479581 () Bool)

(assert (=> b!2479581 (= e!1573663 e!1573666)))

(declare-fun c!394417 () Bool)

(assert (=> b!2479581 (= c!394417 (_1!16837 lt!886591))))

(declare-fun b!2479582 () Bool)

(declare-datatypes ((tuple2!28594 0))(
  ( (tuple2!28595 (_1!16838 Bool) (_2!16838 LongMapFixedSize!6644)) )
))
(declare-fun lt!886590 () tuple2!28594)

(assert (=> b!2479582 (= e!1573667 (tuple2!28593 (_1!16838 lt!886590) (LongMap!3322 (Cell!13106 (_2!16838 lt!886590)))))))

(declare-fun update!167 (LongMapFixedSize!6644 (_ BitVec 64) List!29132) tuple2!28594)

(assert (=> b!2479582 (= lt!886590 (update!167 (v!31344 (underlying!6851 (_2!16837 lt!886592))) lt!886470 lt!886473))))

(declare-fun bm!151901 () Bool)

(assert (=> bm!151901 (= call!151906 (map!6118 (_2!16837 lt!886591)))))

(declare-fun b!2479583 () Bool)

(assert (=> b!2479583 (= e!1573666 (= call!151906 call!151905))))

(declare-fun d!712692 () Bool)

(assert (=> d!712692 e!1573663))

(declare-fun res!1049540 () Bool)

(assert (=> d!712692 (=> (not res!1049540) (not e!1573663))))

(assert (=> d!712692 (= res!1049540 ((_ is LongMap!3322) (_2!16837 lt!886591)))))

(assert (=> d!712692 (= lt!886591 e!1573667)))

(declare-fun c!394419 () Bool)

(assert (=> d!712692 (= c!394419 (_1!16837 lt!886592))))

(assert (=> d!712692 (= lt!886592 e!1573665)))

(declare-fun c!394418 () Bool)

(declare-fun imbalanced!13 (MutLongMap!3322) Bool)

(assert (=> d!712692 (= c!394418 (imbalanced!13 (v!31345 (underlying!6852 thiss!42540))))))

(assert (=> d!712692 (valid!2533 (v!31345 (underlying!6852 thiss!42540)))))

(assert (=> d!712692 (= (update!166 (v!31345 (underlying!6852 thiss!42540)) lt!886470 lt!886473) lt!886591)))

(assert (= (and d!712692 c!394418) b!2479575))

(assert (= (and d!712692 (not c!394418)) b!2479578))

(assert (= (and d!712692 c!394419) b!2479582))

(assert (= (and d!712692 (not c!394419)) b!2479579))

(assert (= (and d!712692 res!1049540) b!2479577))

(assert (= (and b!2479577 res!1049542) b!2479581))

(assert (= (and b!2479581 c!394417) b!2479576))

(assert (= (and b!2479581 (not c!394417)) b!2479583))

(assert (= (and b!2479576 res!1049541) b!2479580))

(assert (= (or b!2479576 b!2479580 b!2479583) bm!151901))

(assert (= (or b!2479580 b!2479583) bm!151900))

(declare-fun m!2847359 () Bool)

(assert (=> b!2479575 m!2847359))

(declare-fun m!2847361 () Bool)

(assert (=> bm!151901 m!2847361))

(declare-fun m!2847363 () Bool)

(assert (=> d!712692 m!2847363))

(assert (=> d!712692 m!2847341))

(declare-fun m!2847365 () Bool)

(assert (=> b!2479577 m!2847365))

(declare-fun m!2847367 () Bool)

(assert (=> b!2479582 m!2847367))

(assert (=> bm!151900 m!2847199))

(declare-fun m!2847369 () Bool)

(assert (=> b!2479576 m!2847369))

(declare-fun m!2847371 () Bool)

(assert (=> b!2479580 m!2847371))

(assert (=> b!2479467 d!712692))

(declare-fun d!712694 () Bool)

(declare-fun res!1049543 () Bool)

(declare-fun e!1573668 () Bool)

(assert (=> d!712694 (=> res!1049543 e!1573668)))

(assert (=> d!712694 (= res!1049543 ((_ is Nil!29033) (toList!1518 (map!6118 (v!31345 (underlying!6852 (_2!16836 lt!886471)))))))))

(assert (=> d!712694 (= (forall!5948 (toList!1518 (map!6118 (v!31345 (underlying!6852 (_2!16836 lt!886471))))) lambda!93690) e!1573668)))

(declare-fun b!2479584 () Bool)

(declare-fun e!1573669 () Bool)

(assert (=> b!2479584 (= e!1573668 e!1573669)))

(declare-fun res!1049544 () Bool)

(assert (=> b!2479584 (=> (not res!1049544) (not e!1573669))))

(assert (=> b!2479584 (= res!1049544 (dynLambda!12458 lambda!93690 (h!34437 (toList!1518 (map!6118 (v!31345 (underlying!6852 (_2!16836 lt!886471))))))))))

(declare-fun b!2479585 () Bool)

(assert (=> b!2479585 (= e!1573669 (forall!5948 (t!210786 (toList!1518 (map!6118 (v!31345 (underlying!6852 (_2!16836 lt!886471)))))) lambda!93690))))

(assert (= (and d!712694 (not res!1049543)) b!2479584))

(assert (= (and b!2479584 res!1049544) b!2479585))

(declare-fun b_lambda!76069 () Bool)

(assert (=> (not b_lambda!76069) (not b!2479584)))

(declare-fun m!2847373 () Bool)

(assert (=> b!2479584 m!2847373))

(declare-fun m!2847375 () Bool)

(assert (=> b!2479585 m!2847375))

(assert (=> b!2479466 d!712694))

(declare-fun d!712696 () Bool)

(assert (=> d!712696 (= (map!6118 (v!31345 (underlying!6852 (_2!16836 lt!886471)))) (map!6120 (v!31344 (underlying!6851 (v!31345 (underlying!6852 (_2!16836 lt!886471)))))))))

(declare-fun bs!467328 () Bool)

(assert (= bs!467328 d!712696))

(declare-fun m!2847377 () Bool)

(assert (=> bs!467328 m!2847377))

(assert (=> b!2479466 d!712696))

(declare-fun bs!467329 () Bool)

(declare-fun b!2479590 () Bool)

(assert (= bs!467329 (and b!2479590 b!2479467)))

(declare-fun lambda!93708 () Int)

(assert (=> bs!467329 (= lambda!93708 lambda!93690)))

(declare-fun bs!467330 () Bool)

(assert (= bs!467330 (and b!2479590 d!712656)))

(assert (=> bs!467330 (not (= lambda!93708 lambda!93693))))

(declare-fun bs!467331 () Bool)

(assert (= bs!467331 (and b!2479590 d!712662)))

(assert (=> bs!467331 (= lambda!93708 lambda!93698)))

(declare-fun bs!467332 () Bool)

(assert (= bs!467332 (and b!2479590 b!2479524)))

(assert (=> bs!467332 (= lambda!93708 lambda!93705)))

(declare-fun d!712698 () Bool)

(declare-fun res!1049549 () Bool)

(declare-fun e!1573672 () Bool)

(assert (=> d!712698 (=> (not res!1049549) (not e!1573672))))

(assert (=> d!712698 (= res!1049549 (valid!2533 (v!31345 (underlying!6852 thiss!42540))))))

(assert (=> d!712698 (= (valid!2532 thiss!42540) e!1573672)))

(declare-fun res!1049550 () Bool)

(assert (=> b!2479590 (=> (not res!1049550) (not e!1573672))))

(assert (=> b!2479590 (= res!1049550 (forall!5948 (toList!1518 (map!6118 (v!31345 (underlying!6852 thiss!42540)))) lambda!93708))))

(declare-fun b!2479591 () Bool)

(assert (=> b!2479591 (= e!1573672 (allKeysSameHashInMap!142 (map!6118 (v!31345 (underlying!6852 thiss!42540))) (hashF!5180 thiss!42540)))))

(assert (= (and d!712698 res!1049549) b!2479590))

(assert (= (and b!2479590 res!1049550) b!2479591))

(assert (=> d!712698 m!2847341))

(assert (=> b!2479590 m!2847199))

(declare-fun m!2847379 () Bool)

(assert (=> b!2479590 m!2847379))

(assert (=> b!2479591 m!2847199))

(assert (=> b!2479591 m!2847199))

(declare-fun m!2847381 () Bool)

(assert (=> b!2479591 m!2847381))

(assert (=> b!2479468 d!712698))

(declare-fun bs!467333 () Bool)

(declare-fun d!712700 () Bool)

(assert (= bs!467333 (and d!712700 b!2479524)))

(declare-fun lambda!93711 () Int)

(assert (=> bs!467333 (not (= lambda!93711 lambda!93705))))

(declare-fun bs!467334 () Bool)

(assert (= bs!467334 (and d!712700 b!2479467)))

(assert (=> bs!467334 (not (= lambda!93711 lambda!93690))))

(declare-fun bs!467335 () Bool)

(assert (= bs!467335 (and d!712700 d!712662)))

(assert (=> bs!467335 (not (= lambda!93711 lambda!93698))))

(declare-fun bs!467336 () Bool)

(assert (= bs!467336 (and d!712700 b!2479590)))

(assert (=> bs!467336 (not (= lambda!93711 lambda!93708))))

(declare-fun bs!467337 () Bool)

(assert (= bs!467337 (and d!712700 d!712656)))

(assert (=> bs!467337 (= lambda!93711 lambda!93693)))

(assert (=> d!712700 true))

(assert (=> d!712700 (= (allKeysSameHashInMap!142 lt!886476 (hashF!5180 (_2!16836 lt!886471))) (forall!5948 (toList!1518 lt!886476) lambda!93711))))

(declare-fun bs!467338 () Bool)

(assert (= bs!467338 d!712700))

(declare-fun m!2847383 () Bool)

(assert (=> bs!467338 m!2847383))

(assert (=> b!2479464 d!712700))

(declare-fun tp!793535 () Bool)

(declare-fun tp_is_empty!12165 () Bool)

(declare-fun b!2479596 () Bool)

(declare-fun e!1573675 () Bool)

(assert (=> b!2479596 (= e!1573675 (and tp_is_empty!12163 tp_is_empty!12165 tp!793535))))

(assert (=> b!2479475 (= tp!793531 e!1573675)))

(assert (= (and b!2479475 ((_ is Cons!29032) mapDefault!15418)) b!2479596))

(declare-fun tp!793536 () Bool)

(declare-fun b!2479597 () Bool)

(declare-fun e!1573676 () Bool)

(assert (=> b!2479597 (= e!1573676 (and tp_is_empty!12163 tp_is_empty!12165 tp!793536))))

(assert (=> b!2479472 (= tp!793526 e!1573676)))

(assert (= (and b!2479472 ((_ is Cons!29032) (zeroValue!3580 (v!31344 (underlying!6851 (v!31345 (underlying!6852 thiss!42540))))))) b!2479597))

(declare-fun e!1573677 () Bool)

(declare-fun tp!793537 () Bool)

(declare-fun b!2479598 () Bool)

(assert (=> b!2479598 (= e!1573677 (and tp_is_empty!12163 tp_is_empty!12165 tp!793537))))

(assert (=> b!2479472 (= tp!793532 e!1573677)))

(assert (= (and b!2479472 ((_ is Cons!29032) (minValue!3580 (v!31344 (underlying!6851 (v!31345 (underlying!6852 thiss!42540))))))) b!2479598))

(declare-fun mapIsEmpty!15421 () Bool)

(declare-fun mapRes!15421 () Bool)

(assert (=> mapIsEmpty!15421 mapRes!15421))

(declare-fun condMapEmpty!15421 () Bool)

(declare-fun mapDefault!15421 () List!29132)

(assert (=> mapNonEmpty!15418 (= condMapEmpty!15421 (= mapRest!15418 ((as const (Array (_ BitVec 32) List!29132)) mapDefault!15421)))))

(declare-fun e!1573683 () Bool)

(assert (=> mapNonEmpty!15418 (= tp!793529 (and e!1573683 mapRes!15421))))

(declare-fun b!2479605 () Bool)

(declare-fun tp!793545 () Bool)

(declare-fun e!1573682 () Bool)

(assert (=> b!2479605 (= e!1573682 (and tp_is_empty!12163 tp_is_empty!12165 tp!793545))))

(declare-fun mapNonEmpty!15421 () Bool)

(declare-fun tp!793544 () Bool)

(assert (=> mapNonEmpty!15421 (= mapRes!15421 (and tp!793544 e!1573682))))

(declare-fun mapKey!15421 () (_ BitVec 32))

(declare-fun mapRest!15421 () (Array (_ BitVec 32) List!29132))

(declare-fun mapValue!15421 () List!29132)

(assert (=> mapNonEmpty!15421 (= mapRest!15418 (store mapRest!15421 mapKey!15421 mapValue!15421))))

(declare-fun b!2479606 () Bool)

(declare-fun tp!793546 () Bool)

(assert (=> b!2479606 (= e!1573683 (and tp_is_empty!12163 tp_is_empty!12165 tp!793546))))

(assert (= (and mapNonEmpty!15418 condMapEmpty!15421) mapIsEmpty!15421))

(assert (= (and mapNonEmpty!15418 (not condMapEmpty!15421)) mapNonEmpty!15421))

(assert (= (and mapNonEmpty!15421 ((_ is Cons!29032) mapValue!15421)) b!2479605))

(assert (= (and mapNonEmpty!15418 ((_ is Cons!29032) mapDefault!15421)) b!2479606))

(declare-fun m!2847385 () Bool)

(assert (=> mapNonEmpty!15421 m!2847385))

(declare-fun tp!793547 () Bool)

(declare-fun e!1573684 () Bool)

(declare-fun b!2479607 () Bool)

(assert (=> b!2479607 (= e!1573684 (and tp_is_empty!12163 tp_is_empty!12165 tp!793547))))

(assert (=> mapNonEmpty!15418 (= tp!793528 e!1573684)))

(assert (= (and mapNonEmpty!15418 ((_ is Cons!29032) mapValue!15418)) b!2479607))

(declare-fun b_lambda!76071 () Bool)

(assert (= b_lambda!76065 (or (and b!2479472 b_free!72145) b_lambda!76071)))

(declare-fun b_lambda!76073 () Bool)

(assert (= b_lambda!76069 (or b!2479467 b_lambda!76073)))

(declare-fun bs!467339 () Bool)

(declare-fun d!712702 () Bool)

(assert (= bs!467339 (and d!712702 b!2479467)))

(assert (=> bs!467339 (= (dynLambda!12458 lambda!93690 (h!34437 (toList!1518 (map!6118 (v!31345 (underlying!6852 (_2!16836 lt!886471))))))) (noDuplicateKeys!61 (_2!16835 (h!34437 (toList!1518 (map!6118 (v!31345 (underlying!6852 (_2!16836 lt!886471)))))))))))

(declare-fun m!2847387 () Bool)

(assert (=> bs!467339 m!2847387))

(assert (=> b!2479584 d!712702))

(declare-fun b_lambda!76075 () Bool)

(assert (= b_lambda!76063 (or b!2479467 b_lambda!76075)))

(declare-fun bs!467340 () Bool)

(declare-fun d!712704 () Bool)

(assert (= bs!467340 (and d!712704 b!2479467)))

(assert (=> bs!467340 (= (dynLambda!12458 lambda!93690 (h!34437 (toList!1518 lt!886476))) (noDuplicateKeys!61 (_2!16835 (h!34437 (toList!1518 lt!886476)))))))

(declare-fun m!2847389 () Bool)

(assert (=> bs!467340 m!2847389))

(assert (=> b!2479495 d!712704))

(declare-fun b_lambda!76077 () Bool)

(assert (= b_lambda!76067 (or b!2479467 b_lambda!76077)))

(declare-fun bs!467341 () Bool)

(declare-fun d!712706 () Bool)

(assert (= bs!467341 (and d!712706 b!2479467)))

(assert (=> bs!467341 (= (dynLambda!12458 lambda!93690 (tuple2!28589 lt!886470 lt!886468)) (noDuplicateKeys!61 (_2!16835 (tuple2!28589 lt!886470 lt!886468))))))

(declare-fun m!2847391 () Bool)

(assert (=> bs!467341 m!2847391))

(assert (=> d!712688 d!712706))

(check-sat (not b!2479590) (not b!2479605) (not b_lambda!76071) (not b!2479582) (not d!712678) tp_is_empty!12163 (not bm!151894) (not b!2479482) (not bm!151900) tp_is_empty!12165 (not d!712660) (not b!2479598) (not b!2479597) (not b!2479523) (not b!2479525) (not d!712688) (not tb!140371) (not b!2479496) (not b!2479596) (not b!2479576) (not b!2479486) (not b!2479524) (not b!2479585) (not bm!151893) (not d!712698) (not bm!151895) b_and!188389 (not bm!151892) (not b!2479546) (not b!2479556) (not b_lambda!76077) (not d!712670) (not b!2479540) (not bm!151891) (not bs!467339) (not b!2479522) (not b!2479591) (not d!712682) (not b!2479575) (not d!712662) (not b_lambda!76075) (not b!2479607) b_and!188391 (not d!712664) (not d!712700) (not bm!151890) (not bm!151901) (not d!712684) (not bs!467341) (not b!2479580) (not b!2479547) (not d!712676) (not d!712696) (not bs!467340) (not b!2479483) (not d!712690) (not d!712692) (not d!712668) (not d!712686) (not d!712658) (not b_next!72849) (not b!2479577) (not b_next!72851) (not b_lambda!76073) (not b!2479606) (not b!2479519) (not d!712656) (not b!2479552) (not mapNonEmpty!15421))
(check-sat b_and!188389 b_and!188391 (not b_next!72849) (not b_next!72851))
