; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487458 () Bool)

(assert start!487458)

(declare-fun b!4765495 () Bool)

(declare-fun b_free!129587 () Bool)

(declare-fun b_next!130377 () Bool)

(assert (=> b!4765495 (= b_free!129587 (not b_next!130377))))

(declare-fun tp!1355130 () Bool)

(declare-fun b_and!341287 () Bool)

(assert (=> b!4765495 (= tp!1355130 b_and!341287)))

(declare-fun b!4765494 () Bool)

(declare-fun b_free!129589 () Bool)

(declare-fun b_next!130379 () Bool)

(assert (=> b!4765494 (= b_free!129589 (not b_next!130379))))

(declare-fun tp!1355128 () Bool)

(declare-fun b_and!341289 () Bool)

(assert (=> b!4765494 (= tp!1355128 b_and!341289)))

(declare-fun b!4765492 () Bool)

(declare-fun e!2974374 () Bool)

(declare-fun e!2974375 () Bool)

(assert (=> b!4765492 (= e!2974374 e!2974375)))

(declare-fun b!4765493 () Bool)

(declare-datatypes ((Unit!138162 0))(
  ( (Unit!138163) )
))
(declare-fun e!2974381 () Unit!138162)

(declare-fun Unit!138164 () Unit!138162)

(assert (=> b!4765493 (= e!2974381 Unit!138164)))

(declare-fun e!2974378 () Bool)

(declare-fun tp!1355129 () Bool)

(declare-fun e!2974377 () Bool)

(declare-fun tp!1355131 () Bool)

(declare-datatypes ((K!14919 0))(
  ( (K!14920 (val!20241 Int)) )
))
(declare-datatypes ((V!15165 0))(
  ( (V!15166 (val!20242 Int)) )
))
(declare-datatypes ((tuple2!55474 0))(
  ( (tuple2!55475 (_1!31031 K!14919) (_2!31031 V!15165)) )
))
(declare-datatypes ((array!17954 0))(
  ( (array!17955 (arr!8007 (Array (_ BitVec 32) (_ BitVec 64))) (size!36237 (_ BitVec 32))) )
))
(declare-datatypes ((List!53581 0))(
  ( (Nil!53457) (Cons!53457 (h!59869 tuple2!55474) (t!360995 List!53581)) )
))
(declare-datatypes ((array!17956 0))(
  ( (array!17957 (arr!8008 (Array (_ BitVec 32) List!53581)) (size!36238 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6572 0))(
  ( (HashableExt!6571 (__x!32481 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9822 0))(
  ( (LongMapFixedSize!9823 (defaultEntry!5329 Int) (mask!14662 (_ BitVec 32)) (extraKeys!5186 (_ BitVec 32)) (zeroValue!5199 List!53581) (minValue!5199 List!53581) (_size!9847 (_ BitVec 32)) (_keys!5253 array!17954) (_values!5224 array!17956) (_vacant!4976 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19409 0))(
  ( (Cell!19410 (v!47577 LongMapFixedSize!9822)) )
))
(declare-datatypes ((MutLongMap!4911 0))(
  ( (LongMap!4911 (underlying!10029 Cell!19409)) (MutLongMapExt!4910 (__x!32482 Int)) )
))
(declare-datatypes ((Cell!19411 0))(
  ( (Cell!19412 (v!47578 MutLongMap!4911)) )
))
(declare-datatypes ((MutableMap!4795 0))(
  ( (MutableMapExt!4794 (__x!32483 Int)) (HashMap!4795 (underlying!10030 Cell!19411) (hashF!12397 Hashable!6572) (_size!9848 (_ BitVec 32)) (defaultValue!4966 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4795)

(declare-fun array_inv!5761 (array!17954) Bool)

(declare-fun array_inv!5762 (array!17956) Bool)

(assert (=> b!4765495 (= e!2974377 (and tp!1355130 tp!1355129 tp!1355131 (array_inv!5761 (_keys!5253 (v!47577 (underlying!10029 (v!47578 (underlying!10030 thiss!42052)))))) (array_inv!5762 (_values!5224 (v!47577 (underlying!10029 (v!47578 (underlying!10030 thiss!42052)))))) e!2974378))))

(declare-fun b!4765496 () Bool)

(assert (=> b!4765496 (= e!2974375 e!2974377)))

(declare-fun b!4765497 () Bool)

(declare-fun res!2021115 () Bool)

(declare-fun e!2974379 () Bool)

(assert (=> b!4765497 (=> (not res!2021115) (not e!2974379))))

(declare-fun valid!3910 (MutableMap!4795) Bool)

(assert (=> b!4765497 (= res!2021115 (valid!3910 thiss!42052))))

(declare-fun mapIsEmpty!21803 () Bool)

(declare-fun mapRes!21803 () Bool)

(assert (=> mapIsEmpty!21803 mapRes!21803))

(declare-fun b!4765498 () Bool)

(declare-fun tp!1355132 () Bool)

(assert (=> b!4765498 (= e!2974378 (and tp!1355132 mapRes!21803))))

(declare-fun condMapEmpty!21803 () Bool)

(declare-fun mapDefault!21803 () List!53581)

(assert (=> b!4765498 (= condMapEmpty!21803 (= (arr!8008 (_values!5224 (v!47577 (underlying!10029 (v!47578 (underlying!10030 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53581)) mapDefault!21803)))))

(declare-fun b!4765499 () Bool)

(declare-fun res!2021118 () Bool)

(assert (=> b!4765499 (=> (not res!2021118) (not e!2974379))))

(declare-fun key!1776 () K!14919)

(declare-fun contains!16783 (MutableMap!4795 K!14919) Bool)

(assert (=> b!4765499 (= res!2021118 (contains!16783 thiss!42052 key!1776))))

(declare-fun b!4765500 () Bool)

(declare-fun e!2974382 () Bool)

(declare-fun e!2974380 () Bool)

(assert (=> b!4765500 (= e!2974382 (not e!2974380))))

(declare-fun res!2021116 () Bool)

(assert (=> b!4765500 (=> res!2021116 e!2974380)))

(declare-datatypes ((Option!12643 0))(
  ( (None!12642) (Some!12642 (v!47579 tuple2!55474)) )
))
(declare-fun lt!1928136 () Option!12643)

(declare-fun lt!1928143 () Option!12643)

(declare-fun get!18004 (Option!12643) tuple2!55474)

(assert (=> b!4765500 (= res!2021116 (not (= (_2!31031 (get!18004 lt!1928136)) (_2!31031 (get!18004 lt!1928143)))))))

(declare-fun isDefined!9816 (Option!12643) Bool)

(assert (=> b!4765500 (isDefined!9816 lt!1928136)))

(declare-fun lt!1928139 () List!53581)

(declare-fun getPair!634 (List!53581 K!14919) Option!12643)

(assert (=> b!4765500 (= lt!1928136 (getPair!634 lt!1928139 key!1776))))

(declare-fun lt!1928142 () Unit!138162)

(declare-datatypes ((tuple2!55476 0))(
  ( (tuple2!55477 (_1!31032 (_ BitVec 64)) (_2!31032 List!53581)) )
))
(declare-datatypes ((List!53582 0))(
  ( (Nil!53458) (Cons!53458 (h!59870 tuple2!55476) (t!360996 List!53582)) )
))
(declare-datatypes ((ListLongMap!4663 0))(
  ( (ListLongMap!4664 (toList!6266 List!53582)) )
))
(declare-fun lt!1928147 () ListLongMap!4663)

(declare-fun lambda!224145 () Int)

(declare-fun lt!1928149 () tuple2!55476)

(declare-fun forallContained!3850 (List!53582 Int tuple2!55476) Unit!138162)

(assert (=> b!4765500 (= lt!1928142 (forallContained!3850 (toList!6266 lt!1928147) lambda!224145 lt!1928149))))

(declare-fun lt!1928146 () Unit!138162)

(declare-fun lemmaInGenMapThenGetPairDefined!417 (ListLongMap!4663 K!14919 Hashable!6572) Unit!138162)

(assert (=> b!4765500 (= lt!1928146 (lemmaInGenMapThenGetPairDefined!417 lt!1928147 key!1776 (hashF!12397 thiss!42052)))))

(declare-fun lt!1928150 () Unit!138162)

(assert (=> b!4765500 (= lt!1928150 (forallContained!3850 (toList!6266 lt!1928147) lambda!224145 lt!1928149))))

(declare-fun contains!16784 (List!53582 tuple2!55476) Bool)

(assert (=> b!4765500 (contains!16784 (toList!6266 lt!1928147) lt!1928149)))

(declare-fun lt!1928141 () (_ BitVec 64))

(assert (=> b!4765500 (= lt!1928149 (tuple2!55477 lt!1928141 lt!1928139))))

(declare-fun lt!1928144 () Unit!138162)

(declare-fun lemmaGetValueImpliesTupleContained!426 (ListLongMap!4663 (_ BitVec 64) List!53581) Unit!138162)

(assert (=> b!4765500 (= lt!1928144 (lemmaGetValueImpliesTupleContained!426 lt!1928147 lt!1928141 lt!1928139))))

(declare-fun apply!12601 (ListLongMap!4663 (_ BitVec 64)) List!53581)

(assert (=> b!4765500 (= lt!1928139 (apply!12601 lt!1928147 lt!1928141))))

(declare-fun contains!16785 (ListLongMap!4663 (_ BitVec 64)) Bool)

(assert (=> b!4765500 (contains!16785 lt!1928147 lt!1928141)))

(declare-fun lt!1928148 () Unit!138162)

(declare-fun lemmaInGenMapThenLongMapContainsHash!827 (ListLongMap!4663 K!14919 Hashable!6572) Unit!138162)

(assert (=> b!4765500 (= lt!1928148 (lemmaInGenMapThenLongMapContainsHash!827 lt!1928147 key!1776 (hashF!12397 thiss!42052)))))

(declare-fun mapNonEmpty!21803 () Bool)

(declare-fun tp!1355127 () Bool)

(declare-fun tp!1355133 () Bool)

(assert (=> mapNonEmpty!21803 (= mapRes!21803 (and tp!1355127 tp!1355133))))

(declare-fun mapRest!21803 () (Array (_ BitVec 32) List!53581))

(declare-fun mapKey!21803 () (_ BitVec 32))

(declare-fun mapValue!21803 () List!53581)

(assert (=> mapNonEmpty!21803 (= (arr!8008 (_values!5224 (v!47577 (underlying!10029 (v!47578 (underlying!10030 thiss!42052)))))) (store mapRest!21803 mapKey!21803 mapValue!21803))))

(declare-fun b!4765501 () Bool)

(declare-fun forall!11868 (List!53582 Int) Bool)

(assert (=> b!4765501 (= e!2974380 (forall!11868 (toList!6266 lt!1928147) lambda!224145))))

(declare-fun b!4765502 () Bool)

(declare-fun e!2974376 () Bool)

(declare-fun lt!1928145 () MutLongMap!4911)

(get-info :version)

(assert (=> b!4765502 (= e!2974376 (and e!2974374 ((_ is LongMap!4911) lt!1928145)))))

(assert (=> b!4765502 (= lt!1928145 (v!47578 (underlying!10030 thiss!42052)))))

(declare-fun b!4765503 () Bool)

(assert (=> b!4765503 (= e!2974379 e!2974382)))

(declare-fun res!2021113 () Bool)

(assert (=> b!4765503 (=> (not res!2021113) (not e!2974382))))

(assert (=> b!4765503 (= res!2021113 (forall!11868 (toList!6266 lt!1928147) lambda!224145))))

(declare-fun lt!1928138 () List!53581)

(assert (=> b!4765503 (= lt!1928143 (getPair!634 lt!1928138 key!1776))))

(declare-fun lt!1928137 () Unit!138162)

(declare-fun lt!1928135 () tuple2!55476)

(assert (=> b!4765503 (= lt!1928137 (forallContained!3850 (toList!6266 lt!1928147) lambda!224145 lt!1928135))))

(declare-fun lt!1928140 () Unit!138162)

(assert (=> b!4765503 (= lt!1928140 e!2974381)))

(declare-fun c!812899 () Bool)

(assert (=> b!4765503 (= c!812899 (not (contains!16784 (toList!6266 lt!1928147) lt!1928135)))))

(assert (=> b!4765503 (= lt!1928135 (tuple2!55477 lt!1928141 lt!1928138))))

(declare-fun apply!12602 (MutLongMap!4911 (_ BitVec 64)) List!53581)

(assert (=> b!4765503 (= lt!1928138 (apply!12602 (v!47578 (underlying!10030 thiss!42052)) lt!1928141))))

(declare-fun map!11960 (MutLongMap!4911) ListLongMap!4663)

(assert (=> b!4765503 (= lt!1928147 (map!11960 (v!47578 (underlying!10030 thiss!42052))))))

(declare-fun hash!4555 (Hashable!6572 K!14919) (_ BitVec 64))

(assert (=> b!4765503 (= lt!1928141 (hash!4555 (hashF!12397 thiss!42052) key!1776))))

(declare-fun b!4765504 () Bool)

(declare-fun res!2021117 () Bool)

(assert (=> b!4765504 (=> (not res!2021117) (not e!2974382))))

(declare-fun allKeysSameHashInMap!2015 (ListLongMap!4663 Hashable!6572) Bool)

(assert (=> b!4765504 (= res!2021117 (allKeysSameHashInMap!2015 lt!1928147 (hashF!12397 thiss!42052)))))

(declare-fun e!2974373 () Bool)

(assert (=> b!4765494 (= e!2974373 (and e!2974376 tp!1355128))))

(declare-fun res!2021114 () Bool)

(assert (=> start!487458 (=> (not res!2021114) (not e!2974379))))

(assert (=> start!487458 (= res!2021114 ((_ is HashMap!4795) thiss!42052))))

(assert (=> start!487458 e!2974379))

(assert (=> start!487458 e!2974373))

(declare-fun tp_is_empty!32409 () Bool)

(assert (=> start!487458 tp_is_empty!32409))

(declare-fun b!4765505 () Bool)

(declare-fun Unit!138165 () Unit!138162)

(assert (=> b!4765505 (= e!2974381 Unit!138165)))

(declare-fun lt!1928134 () Unit!138162)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1976 (List!53582 (_ BitVec 64)) Unit!138162)

(assert (=> b!4765505 (= lt!1928134 (lemmaContainsKeyImpliesGetValueByKeyDefined!1976 (toList!6266 lt!1928147) lt!1928141))))

(declare-datatypes ((Option!12644 0))(
  ( (None!12643) (Some!12643 (v!47580 List!53581)) )
))
(declare-fun isDefined!9817 (Option!12644) Bool)

(declare-fun getValueByKey!2162 (List!53582 (_ BitVec 64)) Option!12644)

(assert (=> b!4765505 (isDefined!9817 (getValueByKey!2162 (toList!6266 lt!1928147) lt!1928141))))

(declare-fun lt!1928133 () Unit!138162)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!920 (List!53582 (_ BitVec 64) List!53581) Unit!138162)

(assert (=> b!4765505 (= lt!1928133 (lemmaGetValueByKeyImpliesContainsTuple!920 (toList!6266 lt!1928147) lt!1928141 lt!1928138))))

(assert (=> b!4765505 false))

(declare-fun b!4765506 () Bool)

(declare-fun res!2021119 () Bool)

(assert (=> b!4765506 (=> (not res!2021119) (not e!2974382))))

(declare-datatypes ((ListMap!5763 0))(
  ( (ListMap!5764 (toList!6267 List!53581)) )
))
(declare-fun contains!16786 (ListMap!5763 K!14919) Bool)

(declare-fun extractMap!2134 (List!53582) ListMap!5763)

(assert (=> b!4765506 (= res!2021119 (contains!16786 (extractMap!2134 (toList!6266 lt!1928147)) key!1776))))

(assert (= (and start!487458 res!2021114) b!4765497))

(assert (= (and b!4765497 res!2021115) b!4765499))

(assert (= (and b!4765499 res!2021118) b!4765503))

(assert (= (and b!4765503 c!812899) b!4765505))

(assert (= (and b!4765503 (not c!812899)) b!4765493))

(assert (= (and b!4765503 res!2021113) b!4765504))

(assert (= (and b!4765504 res!2021117) b!4765506))

(assert (= (and b!4765506 res!2021119) b!4765500))

(assert (= (and b!4765500 (not res!2021116)) b!4765501))

(assert (= (and b!4765498 condMapEmpty!21803) mapIsEmpty!21803))

(assert (= (and b!4765498 (not condMapEmpty!21803)) mapNonEmpty!21803))

(assert (= b!4765495 b!4765498))

(assert (= b!4765496 b!4765495))

(assert (= b!4765492 b!4765496))

(assert (= (and b!4765502 ((_ is LongMap!4911) (v!47578 (underlying!10030 thiss!42052)))) b!4765492))

(assert (= b!4765494 b!4765502))

(assert (= (and start!487458 ((_ is HashMap!4795) thiss!42052)) b!4765494))

(declare-fun m!5735962 () Bool)

(assert (=> b!4765500 m!5735962))

(declare-fun m!5735964 () Bool)

(assert (=> b!4765500 m!5735964))

(declare-fun m!5735966 () Bool)

(assert (=> b!4765500 m!5735966))

(declare-fun m!5735968 () Bool)

(assert (=> b!4765500 m!5735968))

(assert (=> b!4765500 m!5735962))

(declare-fun m!5735970 () Bool)

(assert (=> b!4765500 m!5735970))

(declare-fun m!5735972 () Bool)

(assert (=> b!4765500 m!5735972))

(declare-fun m!5735974 () Bool)

(assert (=> b!4765500 m!5735974))

(declare-fun m!5735976 () Bool)

(assert (=> b!4765500 m!5735976))

(declare-fun m!5735978 () Bool)

(assert (=> b!4765500 m!5735978))

(declare-fun m!5735980 () Bool)

(assert (=> b!4765500 m!5735980))

(declare-fun m!5735982 () Bool)

(assert (=> b!4765500 m!5735982))

(declare-fun m!5735984 () Bool)

(assert (=> b!4765495 m!5735984))

(declare-fun m!5735986 () Bool)

(assert (=> b!4765495 m!5735986))

(declare-fun m!5735988 () Bool)

(assert (=> mapNonEmpty!21803 m!5735988))

(declare-fun m!5735990 () Bool)

(assert (=> b!4765497 m!5735990))

(declare-fun m!5735992 () Bool)

(assert (=> b!4765505 m!5735992))

(declare-fun m!5735994 () Bool)

(assert (=> b!4765505 m!5735994))

(assert (=> b!4765505 m!5735994))

(declare-fun m!5735996 () Bool)

(assert (=> b!4765505 m!5735996))

(declare-fun m!5735998 () Bool)

(assert (=> b!4765505 m!5735998))

(declare-fun m!5736000 () Bool)

(assert (=> b!4765501 m!5736000))

(declare-fun m!5736002 () Bool)

(assert (=> b!4765506 m!5736002))

(assert (=> b!4765506 m!5736002))

(declare-fun m!5736004 () Bool)

(assert (=> b!4765506 m!5736004))

(declare-fun m!5736006 () Bool)

(assert (=> b!4765499 m!5736006))

(declare-fun m!5736008 () Bool)

(assert (=> b!4765504 m!5736008))

(declare-fun m!5736010 () Bool)

(assert (=> b!4765503 m!5736010))

(declare-fun m!5736012 () Bool)

(assert (=> b!4765503 m!5736012))

(declare-fun m!5736014 () Bool)

(assert (=> b!4765503 m!5736014))

(assert (=> b!4765503 m!5736000))

(declare-fun m!5736016 () Bool)

(assert (=> b!4765503 m!5736016))

(declare-fun m!5736018 () Bool)

(assert (=> b!4765503 m!5736018))

(declare-fun m!5736020 () Bool)

(assert (=> b!4765503 m!5736020))

(check-sat (not b!4765498) (not b!4765503) b_and!341289 (not b_next!130379) b_and!341287 (not b!4765501) (not b!4765495) (not mapNonEmpty!21803) (not b!4765497) (not b!4765500) (not b_next!130377) (not b!4765499) tp_is_empty!32409 (not b!4765506) (not b!4765505) (not b!4765504))
(check-sat b_and!341289 b_and!341287 (not b_next!130379) (not b_next!130377))
