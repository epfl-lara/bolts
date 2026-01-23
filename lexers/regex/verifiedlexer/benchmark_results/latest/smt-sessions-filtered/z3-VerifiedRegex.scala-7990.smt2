; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414210 () Bool)

(assert start!414210)

(declare-fun b!4310170 () Bool)

(declare-fun b_free!128603 () Bool)

(declare-fun b_next!129307 () Bool)

(assert (=> b!4310170 (= b_free!128603 (not b_next!129307))))

(declare-fun tp!1324497 () Bool)

(declare-fun b_and!340031 () Bool)

(assert (=> b!4310170 (= tp!1324497 b_and!340031)))

(declare-fun b!4310174 () Bool)

(declare-fun b_free!128605 () Bool)

(declare-fun b_next!129309 () Bool)

(assert (=> b!4310174 (= b_free!128605 (not b_next!129309))))

(declare-fun tp!1324500 () Bool)

(declare-fun b_and!340033 () Bool)

(assert (=> b!4310174 (= tp!1324500 b_and!340033)))

(declare-fun b!4310169 () Bool)

(declare-fun e!2680545 () Bool)

(declare-fun e!2680540 () Bool)

(assert (=> b!4310169 (= e!2680545 e!2680540)))

(declare-fun e!2680546 () Bool)

(declare-fun tp!1324499 () Bool)

(declare-fun tp!1324495 () Bool)

(declare-datatypes ((V!9601 0))(
  ( (V!9602 (val!15777 Int)) )
))
(declare-datatypes ((K!9399 0))(
  ( (K!9400 (val!15778 Int)) )
))
(declare-datatypes ((tuple2!46634 0))(
  ( (tuple2!46635 (_1!26597 K!9399) (_2!26597 V!9601)) )
))
(declare-datatypes ((List!48318 0))(
  ( (Nil!48194) (Cons!48194 (h!53629 tuple2!46634) (t!355125 List!48318)) )
))
(declare-datatypes ((array!16806 0))(
  ( (array!16807 (arr!7507 (Array (_ BitVec 32) (_ BitVec 64))) (size!35546 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4577 0))(
  ( (HashableExt!4576 (__x!30008 Int)) )
))
(declare-datatypes ((array!16808 0))(
  ( (array!16809 (arr!7508 (Array (_ BitVec 32) List!48318)) (size!35547 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9322 0))(
  ( (LongMapFixedSize!9323 (defaultEntry!5046 Int) (mask!13220 (_ BitVec 32)) (extraKeys!4910 (_ BitVec 32)) (zeroValue!4920 List!48318) (minValue!4920 List!48318) (_size!9365 (_ BitVec 32)) (_keys!4961 array!16806) (_values!4942 array!16808) (_vacant!4722 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18453 0))(
  ( (Cell!18454 (v!42337 LongMapFixedSize!9322)) )
))
(declare-datatypes ((MutLongMap!4661 0))(
  ( (LongMap!4661 (underlying!9551 Cell!18453)) (MutLongMapExt!4660 (__x!30009 Int)) )
))
(declare-datatypes ((Cell!18455 0))(
  ( (Cell!18456 (v!42338 MutLongMap!4661)) )
))
(declare-datatypes ((MutableMap!4567 0))(
  ( (MutableMapExt!4566 (__x!30010 Int)) (HashMap!4567 (underlying!9552 Cell!18455) (hashF!6697 Hashable!4577) (_size!9366 (_ BitVec 32)) (defaultValue!4738 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4567)

(declare-fun array_inv!5387 (array!16806) Bool)

(declare-fun array_inv!5388 (array!16808) Bool)

(assert (=> b!4310170 (= e!2680540 (and tp!1324497 tp!1324499 tp!1324495 (array_inv!5387 (_keys!4961 (v!42337 (underlying!9551 (v!42338 (underlying!9552 thiss!42308)))))) (array_inv!5388 (_values!4942 (v!42337 (underlying!9551 (v!42338 (underlying!9552 thiss!42308)))))) e!2680546))))

(declare-fun b!4310171 () Bool)

(declare-fun e!2680541 () Bool)

(declare-fun e!2680543 () Bool)

(assert (=> b!4310171 (= e!2680541 e!2680543)))

(declare-fun res!1766488 () Bool)

(assert (=> b!4310171 (=> (not res!1766488) (not e!2680543))))

(declare-fun key!2048 () K!9399)

(declare-fun contains!10170 (MutableMap!4567 K!9399) Bool)

(assert (=> b!4310171 (= res!1766488 (contains!10170 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46636 0))(
  ( (tuple2!46637 (_1!26598 (_ BitVec 64)) (_2!26598 List!48318)) )
))
(declare-datatypes ((List!48319 0))(
  ( (Nil!48195) (Cons!48195 (h!53630 tuple2!46636) (t!355126 List!48319)) )
))
(declare-datatypes ((ListLongMap!1013 0))(
  ( (ListLongMap!1014 (toList!2401 List!48319)) )
))
(declare-fun lt!1530737 () ListLongMap!1013)

(declare-fun map!10184 (MutLongMap!4661) ListLongMap!1013)

(assert (=> b!4310171 (= lt!1530737 (map!10184 (v!42338 (underlying!9552 thiss!42308))))))

(declare-datatypes ((ListMap!1683 0))(
  ( (ListMap!1684 (toList!2402 List!48318)) )
))
(declare-fun lt!1530735 () ListMap!1683)

(declare-fun map!10185 (MutableMap!4567) ListMap!1683)

(assert (=> b!4310171 (= lt!1530735 (map!10185 thiss!42308))))

(declare-fun b!4310172 () Bool)

(declare-fun e!2680544 () Bool)

(declare-fun e!2680547 () Bool)

(declare-fun lt!1530734 () MutLongMap!4661)

(get-info :version)

(assert (=> b!4310172 (= e!2680544 (and e!2680547 ((_ is LongMap!4661) lt!1530734)))))

(assert (=> b!4310172 (= lt!1530734 (v!42338 (underlying!9552 thiss!42308)))))

(declare-fun b!4310173 () Bool)

(assert (=> b!4310173 (= e!2680547 e!2680545)))

(declare-fun res!1766489 () Bool)

(assert (=> start!414210 (=> (not res!1766489) (not e!2680541))))

(assert (=> start!414210 (= res!1766489 ((_ is HashMap!4567) thiss!42308))))

(assert (=> start!414210 e!2680541))

(declare-fun e!2680539 () Bool)

(assert (=> start!414210 e!2680539))

(declare-fun tp_is_empty!23749 () Bool)

(assert (=> start!414210 tp_is_empty!23749))

(declare-fun tp_is_empty!23751 () Bool)

(assert (=> start!414210 tp_is_empty!23751))

(assert (=> b!4310174 (= e!2680539 (and e!2680544 tp!1324500))))

(declare-fun mapNonEmpty!20816 () Bool)

(declare-fun mapRes!20816 () Bool)

(declare-fun tp!1324494 () Bool)

(declare-fun tp!1324496 () Bool)

(assert (=> mapNonEmpty!20816 (= mapRes!20816 (and tp!1324494 tp!1324496))))

(declare-fun mapRest!20816 () (Array (_ BitVec 32) List!48318))

(declare-fun mapValue!20816 () List!48318)

(declare-fun mapKey!20816 () (_ BitVec 32))

(assert (=> mapNonEmpty!20816 (= (arr!7508 (_values!4942 (v!42337 (underlying!9551 (v!42338 (underlying!9552 thiss!42308)))))) (store mapRest!20816 mapKey!20816 mapValue!20816))))

(declare-fun b!4310175 () Bool)

(declare-fun e!2680542 () Bool)

(assert (=> b!4310175 (= e!2680543 e!2680542)))

(declare-fun res!1766486 () Bool)

(assert (=> b!4310175 (=> (not res!1766486) (not e!2680542))))

(declare-fun lt!1530733 () (_ BitVec 64))

(declare-fun lt!1530736 () List!48318)

(declare-fun v!9179 () V!9601)

(declare-datatypes ((tuple2!46638 0))(
  ( (tuple2!46639 (_1!26599 Bool) (_2!26599 MutLongMap!4661)) )
))
(declare-fun update!435 (MutLongMap!4661 (_ BitVec 64) List!48318) tuple2!46638)

(declare-fun removePairForKey!211 (List!48318 K!9399) List!48318)

(assert (=> b!4310175 (= res!1766486 (_1!26599 (update!435 (v!42338 (underlying!9552 thiss!42308)) lt!1530733 (Cons!48194 (tuple2!46635 key!2048 v!9179) (removePairForKey!211 lt!1530736 key!2048)))))))

(declare-fun apply!11014 (MutLongMap!4661 (_ BitVec 64)) List!48318)

(assert (=> b!4310175 (= lt!1530736 (apply!11014 (v!42338 (underlying!9552 thiss!42308)) lt!1530733))))

(declare-fun hash!1005 (Hashable!4577 K!9399) (_ BitVec 64))

(assert (=> b!4310175 (= lt!1530733 (hash!1005 (hashF!6697 thiss!42308) key!2048))))

(declare-fun b!4310176 () Bool)

(declare-fun res!1766487 () Bool)

(assert (=> b!4310176 (=> (not res!1766487) (not e!2680541))))

(declare-fun valid!3650 (MutableMap!4567) Bool)

(assert (=> b!4310176 (= res!1766487 (valid!3650 thiss!42308))))

(declare-fun b!4310177 () Bool)

(assert (=> b!4310177 (= e!2680542 (not true))))

(declare-fun allKeysSameHash!185 (List!48318 (_ BitVec 64) Hashable!4577) Bool)

(assert (=> b!4310177 (allKeysSameHash!185 lt!1530736 lt!1530733 (hashF!6697 thiss!42308))))

(declare-datatypes ((Unit!67314 0))(
  ( (Unit!67315) )
))
(declare-fun lt!1530732 () Unit!67314)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!172 (List!48319 (_ BitVec 64) List!48318 Hashable!4577) Unit!67314)

(assert (=> b!4310177 (= lt!1530732 (lemmaInLongMapAllKeySameHashThenForTuple!172 (toList!2401 lt!1530737) lt!1530733 lt!1530736 (hashF!6697 thiss!42308)))))

(declare-fun b!4310178 () Bool)

(declare-fun tp!1324498 () Bool)

(assert (=> b!4310178 (= e!2680546 (and tp!1324498 mapRes!20816))))

(declare-fun condMapEmpty!20816 () Bool)

(declare-fun mapDefault!20816 () List!48318)

(assert (=> b!4310178 (= condMapEmpty!20816 (= (arr!7508 (_values!4942 (v!42337 (underlying!9551 (v!42338 (underlying!9552 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48318)) mapDefault!20816)))))

(declare-fun mapIsEmpty!20816 () Bool)

(assert (=> mapIsEmpty!20816 mapRes!20816))

(assert (= (and start!414210 res!1766489) b!4310176))

(assert (= (and b!4310176 res!1766487) b!4310171))

(assert (= (and b!4310171 res!1766488) b!4310175))

(assert (= (and b!4310175 res!1766486) b!4310177))

(assert (= (and b!4310178 condMapEmpty!20816) mapIsEmpty!20816))

(assert (= (and b!4310178 (not condMapEmpty!20816)) mapNonEmpty!20816))

(assert (= b!4310170 b!4310178))

(assert (= b!4310169 b!4310170))

(assert (= b!4310173 b!4310169))

(assert (= (and b!4310172 ((_ is LongMap!4661) (v!42338 (underlying!9552 thiss!42308)))) b!4310173))

(assert (= b!4310174 b!4310172))

(assert (= (and start!414210 ((_ is HashMap!4567) thiss!42308)) b!4310174))

(declare-fun m!4903101 () Bool)

(assert (=> b!4310175 m!4903101))

(declare-fun m!4903103 () Bool)

(assert (=> b!4310175 m!4903103))

(declare-fun m!4903105 () Bool)

(assert (=> b!4310175 m!4903105))

(declare-fun m!4903107 () Bool)

(assert (=> b!4310175 m!4903107))

(declare-fun m!4903109 () Bool)

(assert (=> b!4310170 m!4903109))

(declare-fun m!4903111 () Bool)

(assert (=> b!4310170 m!4903111))

(declare-fun m!4903113 () Bool)

(assert (=> b!4310177 m!4903113))

(declare-fun m!4903115 () Bool)

(assert (=> b!4310177 m!4903115))

(declare-fun m!4903117 () Bool)

(assert (=> b!4310171 m!4903117))

(declare-fun m!4903119 () Bool)

(assert (=> b!4310171 m!4903119))

(declare-fun m!4903121 () Bool)

(assert (=> b!4310171 m!4903121))

(declare-fun m!4903123 () Bool)

(assert (=> mapNonEmpty!20816 m!4903123))

(declare-fun m!4903125 () Bool)

(assert (=> b!4310176 m!4903125))

(check-sat (not b!4310178) (not mapNonEmpty!20816) (not b!4310177) (not b!4310176) (not b!4310171) tp_is_empty!23749 b_and!340031 b_and!340033 (not b_next!129309) tp_is_empty!23751 (not b!4310170) (not b_next!129307) (not b!4310175))
(check-sat b_and!340031 b_and!340033 (not b_next!129309) (not b_next!129307))
