; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487288 () Bool)

(assert start!487288)

(declare-fun b!4764462 () Bool)

(declare-fun b_free!129523 () Bool)

(declare-fun b_next!130313 () Bool)

(assert (=> b!4764462 (= b_free!129523 (not b_next!130313))))

(declare-fun tp!1354717 () Bool)

(declare-fun b_and!341213 () Bool)

(assert (=> b!4764462 (= tp!1354717 b_and!341213)))

(declare-fun b!4764465 () Bool)

(declare-fun b_free!129525 () Bool)

(declare-fun b_next!130315 () Bool)

(assert (=> b!4764465 (= b_free!129525 (not b_next!130315))))

(declare-fun tp!1354720 () Bool)

(declare-fun b_and!341215 () Bool)

(assert (=> b!4764465 (= tp!1354720 b_and!341215)))

(declare-fun mapIsEmpty!21740 () Bool)

(declare-fun mapRes!21740 () Bool)

(assert (=> mapIsEmpty!21740 mapRes!21740))

(declare-fun b!4764457 () Bool)

(declare-fun e!2973595 () Bool)

(assert (=> b!4764457 (= e!2973595 (not true))))

(declare-datatypes ((K!14879 0))(
  ( (K!14880 (val!20209 Int)) )
))
(declare-datatypes ((V!15125 0))(
  ( (V!15126 (val!20210 Int)) )
))
(declare-datatypes ((tuple2!55422 0))(
  ( (tuple2!55423 (_1!31005 K!14879) (_2!31005 V!15125)) )
))
(declare-datatypes ((List!53555 0))(
  ( (Nil!53431) (Cons!53431 (h!59843 tuple2!55422) (t!360959 List!53555)) )
))
(declare-datatypes ((tuple2!55424 0))(
  ( (tuple2!55425 (_1!31006 (_ BitVec 64)) (_2!31006 List!53555)) )
))
(declare-datatypes ((List!53556 0))(
  ( (Nil!53432) (Cons!53432 (h!59844 tuple2!55424) (t!360960 List!53556)) )
))
(declare-datatypes ((ListLongMap!4643 0))(
  ( (ListLongMap!4644 (toList!6251 List!53556)) )
))
(declare-fun lt!1927320 () ListLongMap!4643)

(declare-fun lt!1927319 () (_ BitVec 64))

(declare-datatypes ((Option!12629 0))(
  ( (None!12628) (Some!12628 (v!47521 List!53555)) )
))
(declare-fun isDefined!9802 (Option!12629) Bool)

(declare-fun getValueByKey!2153 (List!53556 (_ BitVec 64)) Option!12629)

(assert (=> b!4764457 (isDefined!9802 (getValueByKey!2153 (toList!6251 lt!1927320) lt!1927319))))

(declare-datatypes ((Unit!138094 0))(
  ( (Unit!138095) )
))
(declare-fun lt!1927321 () Unit!138094)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1967 (List!53556 (_ BitVec 64)) Unit!138094)

(assert (=> b!4764457 (= lt!1927321 (lemmaContainsKeyImpliesGetValueByKeyDefined!1967 (toList!6251 lt!1927320) lt!1927319))))

(declare-fun b!4764458 () Bool)

(declare-fun e!2973600 () Bool)

(declare-fun e!2973593 () Bool)

(assert (=> b!4764458 (= e!2973600 e!2973593)))

(declare-fun b!4764459 () Bool)

(declare-fun e!2973597 () Bool)

(assert (=> b!4764459 (= e!2973597 e!2973595)))

(declare-fun res!2020762 () Bool)

(assert (=> b!4764459 (=> (not res!2020762) (not e!2973595))))

(declare-datatypes ((array!17880 0))(
  ( (array!17881 (arr!7975 (Array (_ BitVec 32) (_ BitVec 64))) (size!36205 (_ BitVec 32))) )
))
(declare-datatypes ((array!17882 0))(
  ( (array!17883 (arr!7976 (Array (_ BitVec 32) List!53555)) (size!36206 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6556 0))(
  ( (HashableExt!6555 (__x!32433 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9790 0))(
  ( (LongMapFixedSize!9791 (defaultEntry!5313 Int) (mask!14638 (_ BitVec 32)) (extraKeys!5170 (_ BitVec 32)) (zeroValue!5183 List!53555) (minValue!5183 List!53555) (_size!9815 (_ BitVec 32)) (_keys!5237 array!17880) (_values!5208 array!17882) (_vacant!4960 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19345 0))(
  ( (Cell!19346 (v!47522 LongMapFixedSize!9790)) )
))
(declare-datatypes ((MutLongMap!4895 0))(
  ( (LongMap!4895 (underlying!9997 Cell!19345)) (MutLongMapExt!4894 (__x!32434 Int)) )
))
(declare-datatypes ((Cell!19347 0))(
  ( (Cell!19348 (v!47523 MutLongMap!4895)) )
))
(declare-datatypes ((MutableMap!4779 0))(
  ( (MutableMapExt!4778 (__x!32435 Int)) (HashMap!4779 (underlying!9998 Cell!19347) (hashF!12381 Hashable!6556) (_size!9816 (_ BitVec 32)) (defaultValue!4950 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4779)

(declare-fun contains!16747 (List!53556 tuple2!55424) Bool)

(declare-fun apply!12581 (MutLongMap!4895 (_ BitVec 64)) List!53555)

(assert (=> b!4764459 (= res!2020762 (not (contains!16747 (toList!6251 lt!1927320) (tuple2!55425 lt!1927319 (apply!12581 (v!47523 (underlying!9998 thiss!42052)) lt!1927319)))))))

(declare-fun map!11932 (MutLongMap!4895) ListLongMap!4643)

(assert (=> b!4764459 (= lt!1927320 (map!11932 (v!47523 (underlying!9998 thiss!42052))))))

(declare-fun key!1776 () K!14879)

(declare-fun hash!4540 (Hashable!6556 K!14879) (_ BitVec 64))

(assert (=> b!4764459 (= lt!1927319 (hash!4540 (hashF!12381 thiss!42052) key!1776))))

(declare-fun b!4764460 () Bool)

(declare-fun res!2020764 () Bool)

(assert (=> b!4764460 (=> (not res!2020764) (not e!2973597))))

(declare-fun contains!16748 (MutableMap!4779 K!14879) Bool)

(assert (=> b!4764460 (= res!2020764 (contains!16748 thiss!42052 key!1776))))

(declare-fun b!4764461 () Bool)

(declare-fun e!2973599 () Bool)

(assert (=> b!4764461 (= e!2973593 e!2973599)))

(declare-fun res!2020765 () Bool)

(assert (=> start!487288 (=> (not res!2020765) (not e!2973597))))

(get-info :version)

(assert (=> start!487288 (= res!2020765 ((_ is HashMap!4779) thiss!42052))))

(assert (=> start!487288 e!2973597))

(declare-fun e!2973598 () Bool)

(assert (=> start!487288 e!2973598))

(declare-fun tp_is_empty!32367 () Bool)

(assert (=> start!487288 tp_is_empty!32367))

(declare-fun tp!1354719 () Bool)

(declare-fun e!2973596 () Bool)

(declare-fun tp!1354721 () Bool)

(declare-fun array_inv!5737 (array!17880) Bool)

(declare-fun array_inv!5738 (array!17882) Bool)

(assert (=> b!4764462 (= e!2973599 (and tp!1354717 tp!1354721 tp!1354719 (array_inv!5737 (_keys!5237 (v!47522 (underlying!9997 (v!47523 (underlying!9998 thiss!42052)))))) (array_inv!5738 (_values!5208 (v!47522 (underlying!9997 (v!47523 (underlying!9998 thiss!42052)))))) e!2973596))))

(declare-fun b!4764463 () Bool)

(declare-fun res!2020763 () Bool)

(assert (=> b!4764463 (=> (not res!2020763) (not e!2973597))))

(declare-fun valid!3894 (MutableMap!4779) Bool)

(assert (=> b!4764463 (= res!2020763 (valid!3894 thiss!42052))))

(declare-fun mapNonEmpty!21740 () Bool)

(declare-fun tp!1354722 () Bool)

(declare-fun tp!1354716 () Bool)

(assert (=> mapNonEmpty!21740 (= mapRes!21740 (and tp!1354722 tp!1354716))))

(declare-fun mapValue!21740 () List!53555)

(declare-fun mapRest!21740 () (Array (_ BitVec 32) List!53555))

(declare-fun mapKey!21740 () (_ BitVec 32))

(assert (=> mapNonEmpty!21740 (= (arr!7976 (_values!5208 (v!47522 (underlying!9997 (v!47523 (underlying!9998 thiss!42052)))))) (store mapRest!21740 mapKey!21740 mapValue!21740))))

(declare-fun b!4764464 () Bool)

(declare-fun e!2973594 () Bool)

(declare-fun lt!1927322 () MutLongMap!4895)

(assert (=> b!4764464 (= e!2973594 (and e!2973600 ((_ is LongMap!4895) lt!1927322)))))

(assert (=> b!4764464 (= lt!1927322 (v!47523 (underlying!9998 thiss!42052)))))

(assert (=> b!4764465 (= e!2973598 (and e!2973594 tp!1354720))))

(declare-fun b!4764466 () Bool)

(declare-fun tp!1354718 () Bool)

(assert (=> b!4764466 (= e!2973596 (and tp!1354718 mapRes!21740))))

(declare-fun condMapEmpty!21740 () Bool)

(declare-fun mapDefault!21740 () List!53555)

(assert (=> b!4764466 (= condMapEmpty!21740 (= (arr!7976 (_values!5208 (v!47522 (underlying!9997 (v!47523 (underlying!9998 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53555)) mapDefault!21740)))))

(assert (= (and start!487288 res!2020765) b!4764463))

(assert (= (and b!4764463 res!2020763) b!4764460))

(assert (= (and b!4764460 res!2020764) b!4764459))

(assert (= (and b!4764459 res!2020762) b!4764457))

(assert (= (and b!4764466 condMapEmpty!21740) mapIsEmpty!21740))

(assert (= (and b!4764466 (not condMapEmpty!21740)) mapNonEmpty!21740))

(assert (= b!4764462 b!4764466))

(assert (= b!4764461 b!4764462))

(assert (= b!4764458 b!4764461))

(assert (= (and b!4764464 ((_ is LongMap!4895) (v!47523 (underlying!9998 thiss!42052)))) b!4764458))

(assert (= b!4764465 b!4764464))

(assert (= (and start!487288 ((_ is HashMap!4779) thiss!42052)) b!4764465))

(declare-fun m!5734968 () Bool)

(assert (=> mapNonEmpty!21740 m!5734968))

(declare-fun m!5734970 () Bool)

(assert (=> b!4764457 m!5734970))

(assert (=> b!4764457 m!5734970))

(declare-fun m!5734972 () Bool)

(assert (=> b!4764457 m!5734972))

(declare-fun m!5734974 () Bool)

(assert (=> b!4764457 m!5734974))

(declare-fun m!5734976 () Bool)

(assert (=> b!4764460 m!5734976))

(declare-fun m!5734978 () Bool)

(assert (=> b!4764463 m!5734978))

(declare-fun m!5734980 () Bool)

(assert (=> b!4764462 m!5734980))

(declare-fun m!5734982 () Bool)

(assert (=> b!4764462 m!5734982))

(declare-fun m!5734984 () Bool)

(assert (=> b!4764459 m!5734984))

(declare-fun m!5734986 () Bool)

(assert (=> b!4764459 m!5734986))

(declare-fun m!5734988 () Bool)

(assert (=> b!4764459 m!5734988))

(declare-fun m!5734990 () Bool)

(assert (=> b!4764459 m!5734990))

(check-sat (not b!4764457) (not b_next!130313) tp_is_empty!32367 (not b!4764466) (not b!4764462) (not b!4764460) (not b!4764459) (not b!4764463) b_and!341215 (not b_next!130315) b_and!341213 (not mapNonEmpty!21740))
(check-sat b_and!341215 b_and!341213 (not b_next!130315) (not b_next!130313))
