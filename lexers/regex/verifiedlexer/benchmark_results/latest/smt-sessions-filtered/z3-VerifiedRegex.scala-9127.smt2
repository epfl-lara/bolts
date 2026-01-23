; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487462 () Bool)

(assert start!487462)

(declare-fun b!4765577 () Bool)

(declare-fun b_free!129595 () Bool)

(declare-fun b_next!130385 () Bool)

(assert (=> b!4765577 (= b_free!129595 (not b_next!130385))))

(declare-fun tp!1355170 () Bool)

(declare-fun b_and!341295 () Bool)

(assert (=> b!4765577 (= tp!1355170 b_and!341295)))

(declare-fun b!4765578 () Bool)

(declare-fun b_free!129597 () Bool)

(declare-fun b_next!130387 () Bool)

(assert (=> b!4765578 (= b_free!129597 (not b_next!130387))))

(declare-fun tp!1355175 () Bool)

(declare-fun b_and!341297 () Bool)

(assert (=> b!4765578 (= tp!1355175 b_and!341297)))

(declare-fun e!2974436 () Bool)

(declare-fun e!2974434 () Bool)

(assert (=> b!4765578 (= e!2974436 (and e!2974434 tp!1355175))))

(declare-fun b!4765579 () Bool)

(declare-fun res!2021153 () Bool)

(declare-fun e!2974440 () Bool)

(assert (=> b!4765579 (=> (not res!2021153) (not e!2974440))))

(declare-datatypes ((K!14924 0))(
  ( (K!14925 (val!20245 Int)) )
))
(declare-datatypes ((V!15170 0))(
  ( (V!15171 (val!20246 Int)) )
))
(declare-datatypes ((tuple2!55480 0))(
  ( (tuple2!55481 (_1!31034 K!14924) (_2!31034 V!15170)) )
))
(declare-datatypes ((array!17962 0))(
  ( (array!17963 (arr!8011 (Array (_ BitVec 32) (_ BitVec 64))) (size!36241 (_ BitVec 32))) )
))
(declare-datatypes ((List!53584 0))(
  ( (Nil!53460) (Cons!53460 (h!59872 tuple2!55480) (t!360998 List!53584)) )
))
(declare-datatypes ((array!17964 0))(
  ( (array!17965 (arr!8012 (Array (_ BitVec 32) List!53584)) (size!36242 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6574 0))(
  ( (HashableExt!6573 (__x!32487 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9826 0))(
  ( (LongMapFixedSize!9827 (defaultEntry!5331 Int) (mask!14665 (_ BitVec 32)) (extraKeys!5188 (_ BitVec 32)) (zeroValue!5201 List!53584) (minValue!5201 List!53584) (_size!9851 (_ BitVec 32)) (_keys!5255 array!17962) (_values!5226 array!17964) (_vacant!4978 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19417 0))(
  ( (Cell!19418 (v!47583 LongMapFixedSize!9826)) )
))
(declare-datatypes ((MutLongMap!4913 0))(
  ( (LongMap!4913 (underlying!10033 Cell!19417)) (MutLongMapExt!4912 (__x!32488 Int)) )
))
(declare-datatypes ((Cell!19419 0))(
  ( (Cell!19420 (v!47584 MutLongMap!4913)) )
))
(declare-datatypes ((MutableMap!4797 0))(
  ( (MutableMapExt!4796 (__x!32489 Int)) (HashMap!4797 (underlying!10034 Cell!19419) (hashF!12399 Hashable!6574) (_size!9852 (_ BitVec 32)) (defaultValue!4968 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4797)

(declare-fun valid!3911 (MutableMap!4797) Bool)

(assert (=> b!4765579 (= res!2021153 (valid!3911 thiss!42052))))

(declare-fun b!4765580 () Bool)

(declare-fun e!2974435 () Bool)

(assert (=> b!4765580 (= e!2974435 (not true))))

(declare-fun lt!1928240 () List!53584)

(declare-fun key!1776 () K!14924)

(declare-datatypes ((Option!12645 0))(
  ( (None!12644) (Some!12644 (v!47585 tuple2!55480)) )
))
(declare-fun isDefined!9818 (Option!12645) Bool)

(declare-fun getPair!635 (List!53584 K!14924) Option!12645)

(assert (=> b!4765580 (isDefined!9818 (getPair!635 lt!1928240 key!1776))))

(declare-datatypes ((tuple2!55482 0))(
  ( (tuple2!55483 (_1!31035 (_ BitVec 64)) (_2!31035 List!53584)) )
))
(declare-datatypes ((List!53585 0))(
  ( (Nil!53461) (Cons!53461 (h!59873 tuple2!55482) (t!360999 List!53585)) )
))
(declare-datatypes ((ListLongMap!4665 0))(
  ( (ListLongMap!4666 (toList!6268 List!53585)) )
))
(declare-fun lt!1928238 () ListLongMap!4665)

(declare-fun lt!1928242 () tuple2!55482)

(declare-fun lambda!224163 () Int)

(declare-datatypes ((Unit!138166 0))(
  ( (Unit!138167) )
))
(declare-fun lt!1928245 () Unit!138166)

(declare-fun forallContained!3851 (List!53585 Int tuple2!55482) Unit!138166)

(assert (=> b!4765580 (= lt!1928245 (forallContained!3851 (toList!6268 lt!1928238) lambda!224163 lt!1928242))))

(declare-fun lt!1928237 () Unit!138166)

(declare-fun lemmaInGenMapThenGetPairDefined!418 (ListLongMap!4665 K!14924 Hashable!6574) Unit!138166)

(assert (=> b!4765580 (= lt!1928237 (lemmaInGenMapThenGetPairDefined!418 lt!1928238 key!1776 (hashF!12399 thiss!42052)))))

(declare-fun lt!1928244 () Unit!138166)

(assert (=> b!4765580 (= lt!1928244 (forallContained!3851 (toList!6268 lt!1928238) lambda!224163 lt!1928242))))

(declare-fun contains!16787 (List!53585 tuple2!55482) Bool)

(assert (=> b!4765580 (contains!16787 (toList!6268 lt!1928238) lt!1928242)))

(declare-fun lt!1928250 () (_ BitVec 64))

(assert (=> b!4765580 (= lt!1928242 (tuple2!55483 lt!1928250 lt!1928240))))

(declare-fun lt!1928249 () Unit!138166)

(declare-fun lemmaGetValueImpliesTupleContained!427 (ListLongMap!4665 (_ BitVec 64) List!53584) Unit!138166)

(assert (=> b!4765580 (= lt!1928249 (lemmaGetValueImpliesTupleContained!427 lt!1928238 lt!1928250 lt!1928240))))

(declare-fun apply!12603 (ListLongMap!4665 (_ BitVec 64)) List!53584)

(assert (=> b!4765580 (= lt!1928240 (apply!12603 lt!1928238 lt!1928250))))

(declare-fun contains!16788 (ListLongMap!4665 (_ BitVec 64)) Bool)

(assert (=> b!4765580 (contains!16788 lt!1928238 lt!1928250)))

(declare-fun lt!1928239 () Unit!138166)

(declare-fun lemmaInGenMapThenLongMapContainsHash!828 (ListLongMap!4665 K!14924 Hashable!6574) Unit!138166)

(assert (=> b!4765580 (= lt!1928239 (lemmaInGenMapThenLongMapContainsHash!828 lt!1928238 key!1776 (hashF!12399 thiss!42052)))))

(declare-fun mapNonEmpty!21809 () Bool)

(declare-fun mapRes!21809 () Bool)

(declare-fun tp!1355173 () Bool)

(declare-fun tp!1355172 () Bool)

(assert (=> mapNonEmpty!21809 (= mapRes!21809 (and tp!1355173 tp!1355172))))

(declare-fun mapValue!21809 () List!53584)

(declare-fun mapKey!21809 () (_ BitVec 32))

(declare-fun mapRest!21809 () (Array (_ BitVec 32) List!53584))

(assert (=> mapNonEmpty!21809 (= (arr!8012 (_values!5226 (v!47583 (underlying!10033 (v!47584 (underlying!10034 thiss!42052)))))) (store mapRest!21809 mapKey!21809 mapValue!21809))))

(declare-fun b!4765581 () Bool)

(declare-fun res!2021155 () Bool)

(assert (=> b!4765581 (=> (not res!2021155) (not e!2974435))))

(declare-datatypes ((ListMap!5765 0))(
  ( (ListMap!5766 (toList!6269 List!53584)) )
))
(declare-fun contains!16789 (ListMap!5765 K!14924) Bool)

(declare-fun extractMap!2135 (List!53585) ListMap!5765)

(assert (=> b!4765581 (= res!2021155 (contains!16789 (extractMap!2135 (toList!6268 lt!1928238)) key!1776))))

(declare-fun b!4765582 () Bool)

(declare-fun e!2974438 () Unit!138166)

(declare-fun Unit!138168 () Unit!138166)

(assert (=> b!4765582 (= e!2974438 Unit!138168)))

(declare-fun lt!1928252 () Unit!138166)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1977 (List!53585 (_ BitVec 64)) Unit!138166)

(assert (=> b!4765582 (= lt!1928252 (lemmaContainsKeyImpliesGetValueByKeyDefined!1977 (toList!6268 lt!1928238) lt!1928250))))

(declare-datatypes ((Option!12646 0))(
  ( (None!12645) (Some!12645 (v!47586 List!53584)) )
))
(declare-fun isDefined!9819 (Option!12646) Bool)

(declare-fun getValueByKey!2163 (List!53585 (_ BitVec 64)) Option!12646)

(assert (=> b!4765582 (isDefined!9819 (getValueByKey!2163 (toList!6268 lt!1928238) lt!1928250))))

(declare-fun lt!1928246 () Unit!138166)

(declare-fun lt!1928248 () List!53584)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!921 (List!53585 (_ BitVec 64) List!53584) Unit!138166)

(assert (=> b!4765582 (= lt!1928246 (lemmaGetValueByKeyImpliesContainsTuple!921 (toList!6268 lt!1928238) lt!1928250 lt!1928248))))

(assert (=> b!4765582 false))

(declare-fun b!4765583 () Bool)

(declare-fun e!2974437 () Bool)

(declare-fun e!2974443 () Bool)

(assert (=> b!4765583 (= e!2974437 e!2974443)))

(declare-fun b!4765584 () Bool)

(assert (=> b!4765584 (= e!2974440 e!2974435)))

(declare-fun res!2021152 () Bool)

(assert (=> b!4765584 (=> (not res!2021152) (not e!2974435))))

(declare-fun forall!11869 (List!53585 Int) Bool)

(assert (=> b!4765584 (= res!2021152 (forall!11869 (toList!6268 lt!1928238) lambda!224163))))

(declare-fun lt!1928241 () Option!12645)

(assert (=> b!4765584 (= lt!1928241 (getPair!635 lt!1928248 key!1776))))

(declare-fun lt!1928247 () tuple2!55482)

(declare-fun lt!1928236 () Unit!138166)

(assert (=> b!4765584 (= lt!1928236 (forallContained!3851 (toList!6268 lt!1928238) lambda!224163 lt!1928247))))

(declare-fun lt!1928251 () Unit!138166)

(assert (=> b!4765584 (= lt!1928251 e!2974438)))

(declare-fun c!812905 () Bool)

(assert (=> b!4765584 (= c!812905 (not (contains!16787 (toList!6268 lt!1928238) lt!1928247)))))

(assert (=> b!4765584 (= lt!1928247 (tuple2!55483 lt!1928250 lt!1928248))))

(declare-fun apply!12604 (MutLongMap!4913 (_ BitVec 64)) List!53584)

(assert (=> b!4765584 (= lt!1928248 (apply!12604 (v!47584 (underlying!10034 thiss!42052)) lt!1928250))))

(declare-fun map!11962 (MutLongMap!4913) ListLongMap!4665)

(assert (=> b!4765584 (= lt!1928238 (map!11962 (v!47584 (underlying!10034 thiss!42052))))))

(declare-fun hash!4556 (Hashable!6574 K!14924) (_ BitVec 64))

(assert (=> b!4765584 (= lt!1928250 (hash!4556 (hashF!12399 thiss!42052) key!1776))))

(declare-fun b!4765585 () Bool)

(declare-fun e!2974442 () Bool)

(assert (=> b!4765585 (= e!2974443 e!2974442)))

(declare-fun res!2021151 () Bool)

(assert (=> start!487462 (=> (not res!2021151) (not e!2974440))))

(get-info :version)

(assert (=> start!487462 (= res!2021151 ((_ is HashMap!4797) thiss!42052))))

(assert (=> start!487462 e!2974440))

(assert (=> start!487462 e!2974436))

(declare-fun tp_is_empty!32413 () Bool)

(assert (=> start!487462 tp_is_empty!32413))

(declare-fun tp!1355174 () Bool)

(declare-fun tp!1355171 () Bool)

(declare-fun e!2974441 () Bool)

(declare-fun array_inv!5763 (array!17962) Bool)

(declare-fun array_inv!5764 (array!17964) Bool)

(assert (=> b!4765577 (= e!2974442 (and tp!1355170 tp!1355171 tp!1355174 (array_inv!5763 (_keys!5255 (v!47583 (underlying!10033 (v!47584 (underlying!10034 thiss!42052)))))) (array_inv!5764 (_values!5226 (v!47583 (underlying!10033 (v!47584 (underlying!10034 thiss!42052)))))) e!2974441))))

(declare-fun mapIsEmpty!21809 () Bool)

(assert (=> mapIsEmpty!21809 mapRes!21809))

(declare-fun b!4765586 () Bool)

(declare-fun tp!1355169 () Bool)

(assert (=> b!4765586 (= e!2974441 (and tp!1355169 mapRes!21809))))

(declare-fun condMapEmpty!21809 () Bool)

(declare-fun mapDefault!21809 () List!53584)

(assert (=> b!4765586 (= condMapEmpty!21809 (= (arr!8012 (_values!5226 (v!47583 (underlying!10033 (v!47584 (underlying!10034 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53584)) mapDefault!21809)))))

(declare-fun b!4765587 () Bool)

(declare-fun res!2021150 () Bool)

(assert (=> b!4765587 (=> (not res!2021150) (not e!2974435))))

(declare-fun allKeysSameHashInMap!2016 (ListLongMap!4665 Hashable!6574) Bool)

(assert (=> b!4765587 (= res!2021150 (allKeysSameHashInMap!2016 lt!1928238 (hashF!12399 thiss!42052)))))

(declare-fun b!4765588 () Bool)

(declare-fun lt!1928243 () MutLongMap!4913)

(assert (=> b!4765588 (= e!2974434 (and e!2974437 ((_ is LongMap!4913) lt!1928243)))))

(assert (=> b!4765588 (= lt!1928243 (v!47584 (underlying!10034 thiss!42052)))))

(declare-fun b!4765589 () Bool)

(declare-fun res!2021154 () Bool)

(assert (=> b!4765589 (=> (not res!2021154) (not e!2974440))))

(declare-fun contains!16790 (MutableMap!4797 K!14924) Bool)

(assert (=> b!4765589 (= res!2021154 (contains!16790 thiss!42052 key!1776))))

(declare-fun b!4765590 () Bool)

(declare-fun Unit!138169 () Unit!138166)

(assert (=> b!4765590 (= e!2974438 Unit!138169)))

(assert (= (and start!487462 res!2021151) b!4765579))

(assert (= (and b!4765579 res!2021153) b!4765589))

(assert (= (and b!4765589 res!2021154) b!4765584))

(assert (= (and b!4765584 c!812905) b!4765582))

(assert (= (and b!4765584 (not c!812905)) b!4765590))

(assert (= (and b!4765584 res!2021152) b!4765587))

(assert (= (and b!4765587 res!2021150) b!4765581))

(assert (= (and b!4765581 res!2021155) b!4765580))

(assert (= (and b!4765586 condMapEmpty!21809) mapIsEmpty!21809))

(assert (= (and b!4765586 (not condMapEmpty!21809)) mapNonEmpty!21809))

(assert (= b!4765577 b!4765586))

(assert (= b!4765585 b!4765577))

(assert (= b!4765583 b!4765585))

(assert (= (and b!4765588 ((_ is LongMap!4913) (v!47584 (underlying!10034 thiss!42052)))) b!4765583))

(assert (= b!4765578 b!4765588))

(assert (= (and start!487462 ((_ is HashMap!4797) thiss!42052)) b!4765578))

(declare-fun m!5736078 () Bool)

(assert (=> b!4765589 m!5736078))

(declare-fun m!5736080 () Bool)

(assert (=> mapNonEmpty!21809 m!5736080))

(declare-fun m!5736082 () Bool)

(assert (=> b!4765581 m!5736082))

(assert (=> b!4765581 m!5736082))

(declare-fun m!5736084 () Bool)

(assert (=> b!4765581 m!5736084))

(declare-fun m!5736086 () Bool)

(assert (=> b!4765582 m!5736086))

(declare-fun m!5736088 () Bool)

(assert (=> b!4765582 m!5736088))

(assert (=> b!4765582 m!5736088))

(declare-fun m!5736090 () Bool)

(assert (=> b!4765582 m!5736090))

(declare-fun m!5736092 () Bool)

(assert (=> b!4765582 m!5736092))

(declare-fun m!5736094 () Bool)

(assert (=> b!4765584 m!5736094))

(declare-fun m!5736096 () Bool)

(assert (=> b!4765584 m!5736096))

(declare-fun m!5736098 () Bool)

(assert (=> b!4765584 m!5736098))

(declare-fun m!5736100 () Bool)

(assert (=> b!4765584 m!5736100))

(declare-fun m!5736102 () Bool)

(assert (=> b!4765584 m!5736102))

(declare-fun m!5736104 () Bool)

(assert (=> b!4765584 m!5736104))

(declare-fun m!5736106 () Bool)

(assert (=> b!4765584 m!5736106))

(declare-fun m!5736108 () Bool)

(assert (=> b!4765579 m!5736108))

(declare-fun m!5736110 () Bool)

(assert (=> b!4765577 m!5736110))

(declare-fun m!5736112 () Bool)

(assert (=> b!4765577 m!5736112))

(declare-fun m!5736114 () Bool)

(assert (=> b!4765580 m!5736114))

(declare-fun m!5736116 () Bool)

(assert (=> b!4765580 m!5736116))

(declare-fun m!5736118 () Bool)

(assert (=> b!4765580 m!5736118))

(declare-fun m!5736120 () Bool)

(assert (=> b!4765580 m!5736120))

(assert (=> b!4765580 m!5736120))

(declare-fun m!5736122 () Bool)

(assert (=> b!4765580 m!5736122))

(declare-fun m!5736124 () Bool)

(assert (=> b!4765580 m!5736124))

(assert (=> b!4765580 m!5736114))

(declare-fun m!5736126 () Bool)

(assert (=> b!4765580 m!5736126))

(declare-fun m!5736128 () Bool)

(assert (=> b!4765580 m!5736128))

(declare-fun m!5736130 () Bool)

(assert (=> b!4765580 m!5736130))

(declare-fun m!5736132 () Bool)

(assert (=> b!4765587 m!5736132))

(check-sat (not b_next!130385) (not b!4765580) (not b!4765577) tp_is_empty!32413 b_and!341295 b_and!341297 (not b!4765582) (not b!4765579) (not b!4765589) (not b!4765587) (not b!4765586) (not b!4765581) (not b!4765584) (not mapNonEmpty!21809) (not b_next!130387))
(check-sat b_and!341297 b_and!341295 (not b_next!130387) (not b_next!130385))
