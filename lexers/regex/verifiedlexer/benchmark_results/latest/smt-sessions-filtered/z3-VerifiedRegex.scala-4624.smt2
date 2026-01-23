; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242238 () Bool)

(assert start!242238)

(declare-fun b!2482095 () Bool)

(declare-fun b_free!72329 () Bool)

(declare-fun b_next!73033 () Bool)

(assert (=> b!2482095 (= b_free!72329 (not b_next!73033))))

(declare-fun tp!794597 () Bool)

(declare-fun b_and!188577 () Bool)

(assert (=> b!2482095 (= tp!794597 b_and!188577)))

(declare-fun b!2482094 () Bool)

(declare-fun b_free!72331 () Bool)

(declare-fun b_next!73035 () Bool)

(assert (=> b!2482094 (= b_free!72331 (not b_next!73035))))

(declare-fun tp!794596 () Bool)

(declare-fun b_and!188579 () Bool)

(assert (=> b!2482094 (= tp!794596 b_and!188579)))

(declare-fun b!2482090 () Bool)

(declare-fun e!1575608 () Bool)

(declare-fun e!1575612 () Bool)

(declare-datatypes ((K!5505 0))(
  ( (K!5506 (val!8879 Int)) )
))
(declare-datatypes ((V!5707 0))(
  ( (V!5708 (val!8880 Int)) )
))
(declare-datatypes ((tuple2!28842 0))(
  ( (tuple2!28843 (_1!16962 K!5505) (_2!16962 V!5707)) )
))
(declare-datatypes ((List!29215 0))(
  ( (Nil!29115) (Cons!29115 (h!34521 tuple2!28842) (t!210874 List!29215)) )
))
(declare-datatypes ((array!11937 0))(
  ( (array!11938 (arr!5326 (Array (_ BitVec 32) List!29215)) (size!22745 (_ BitVec 32))) )
))
(declare-datatypes ((array!11939 0))(
  ( (array!11940 (arr!5327 (Array (_ BitVec 32) (_ BitVec 64))) (size!22746 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6736 0))(
  ( (LongMapFixedSize!6737 (defaultEntry!3742 Int) (mask!8541 (_ BitVec 32)) (extraKeys!3616 (_ BitVec 32)) (zeroValue!3626 List!29215) (minValue!3626 List!29215) (_size!6783 (_ BitVec 32)) (_keys!3665 array!11939) (_values!3648 array!11937) (_vacant!3429 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13289 0))(
  ( (Cell!13290 (v!31460 LongMapFixedSize!6736)) )
))
(declare-datatypes ((MutLongMap!3368 0))(
  ( (LongMap!3368 (underlying!6943 Cell!13289)) (MutLongMapExt!3367 (__x!19010 Int)) )
))
(declare-fun lt!888694 () MutLongMap!3368)

(get-info :version)

(assert (=> b!2482090 (= e!1575608 (and e!1575612 ((_ is LongMap!3368) lt!888694)))))

(declare-datatypes ((Hashable!3278 0))(
  ( (HashableExt!3277 (__x!19011 Int)) )
))
(declare-datatypes ((Cell!13291 0))(
  ( (Cell!13292 (v!31461 MutLongMap!3368)) )
))
(declare-datatypes ((MutableMap!3278 0))(
  ( (MutableMapExt!3277 (__x!19012 Int)) (HashMap!3278 (underlying!6944 Cell!13291) (hashF!5241 Hashable!3278) (_size!6784 (_ BitVec 32)) (defaultValue!3440 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3278)

(assert (=> b!2482090 (= lt!888694 (v!31461 (underlying!6944 thiss!42540)))))

(declare-fun b!2482091 () Bool)

(declare-fun e!1575607 () Bool)

(assert (=> b!2482091 (= e!1575607 false)))

(declare-datatypes ((ListMap!1067 0))(
  ( (ListMap!1068 (toList!1585 List!29215)) )
))
(declare-fun lt!888693 () ListMap!1067)

(declare-fun map!6206 (MutableMap!3278) ListMap!1067)

(assert (=> b!2482091 (= lt!888693 (map!6206 thiss!42540))))

(declare-datatypes ((Unit!42627 0))(
  ( (Unit!42628) )
))
(declare-fun lt!888692 () Unit!42627)

(declare-fun lt!888691 () (_ BitVec 64))

(declare-fun lambda!94063 () Int)

(declare-datatypes ((tuple2!28844 0))(
  ( (tuple2!28845 (_1!16963 (_ BitVec 64)) (_2!16963 List!29215)) )
))
(declare-datatypes ((List!29216 0))(
  ( (Nil!29116) (Cons!29116 (h!34522 tuple2!28844) (t!210875 List!29216)) )
))
(declare-fun forallContained!860 (List!29216 Int tuple2!28844) Unit!42627)

(declare-datatypes ((ListLongMap!533 0))(
  ( (ListLongMap!534 (toList!1586 List!29216)) )
))
(declare-fun map!6207 (MutLongMap!3368) ListLongMap!533)

(declare-fun apply!6922 (MutLongMap!3368 (_ BitVec 64)) List!29215)

(assert (=> b!2482091 (= lt!888692 (forallContained!860 (toList!1586 (map!6207 (v!31461 (underlying!6944 thiss!42540)))) lambda!94063 (tuple2!28845 lt!888691 (apply!6922 (v!31461 (underlying!6944 thiss!42540)) lt!888691))))))

(declare-fun key!2246 () K!5505)

(declare-fun hash!693 (Hashable!3278 K!5505) (_ BitVec 64))

(assert (=> b!2482091 (= lt!888691 (hash!693 (hashF!5241 thiss!42540) key!2246))))

(declare-fun b!2482092 () Bool)

(declare-fun res!1050773 () Bool)

(assert (=> b!2482092 (=> (not res!1050773) (not e!1575607))))

(declare-fun valid!2573 (MutableMap!3278) Bool)

(assert (=> b!2482092 (= res!1050773 (valid!2573 thiss!42540))))

(declare-fun b!2482093 () Bool)

(declare-fun e!1575610 () Bool)

(assert (=> b!2482093 (= e!1575612 e!1575610)))

(declare-fun res!1050774 () Bool)

(assert (=> start!242238 (=> (not res!1050774) (not e!1575607))))

(assert (=> start!242238 (= res!1050774 ((_ is HashMap!3278) thiss!42540))))

(assert (=> start!242238 e!1575607))

(declare-fun e!1575613 () Bool)

(assert (=> start!242238 e!1575613))

(declare-fun tp_is_empty!12267 () Bool)

(assert (=> start!242238 tp_is_empty!12267))

(assert (=> b!2482094 (= e!1575613 (and e!1575608 tp!794596))))

(declare-fun mapNonEmpty!15575 () Bool)

(declare-fun mapRes!15575 () Bool)

(declare-fun tp!794591 () Bool)

(declare-fun tp!794595 () Bool)

(assert (=> mapNonEmpty!15575 (= mapRes!15575 (and tp!794591 tp!794595))))

(declare-fun mapKey!15575 () (_ BitVec 32))

(declare-fun mapValue!15575 () List!29215)

(declare-fun mapRest!15575 () (Array (_ BitVec 32) List!29215))

(assert (=> mapNonEmpty!15575 (= (arr!5326 (_values!3648 (v!31460 (underlying!6943 (v!31461 (underlying!6944 thiss!42540)))))) (store mapRest!15575 mapKey!15575 mapValue!15575))))

(declare-fun e!1575611 () Bool)

(declare-fun tp!794592 () Bool)

(declare-fun tp!794593 () Bool)

(declare-fun e!1575614 () Bool)

(declare-fun array_inv!3821 (array!11939) Bool)

(declare-fun array_inv!3822 (array!11937) Bool)

(assert (=> b!2482095 (= e!1575611 (and tp!794597 tp!794593 tp!794592 (array_inv!3821 (_keys!3665 (v!31460 (underlying!6943 (v!31461 (underlying!6944 thiss!42540)))))) (array_inv!3822 (_values!3648 (v!31460 (underlying!6943 (v!31461 (underlying!6944 thiss!42540)))))) e!1575614))))

(declare-fun b!2482096 () Bool)

(assert (=> b!2482096 (= e!1575610 e!1575611)))

(declare-fun b!2482097 () Bool)

(declare-fun tp!794594 () Bool)

(assert (=> b!2482097 (= e!1575614 (and tp!794594 mapRes!15575))))

(declare-fun condMapEmpty!15575 () Bool)

(declare-fun mapDefault!15575 () List!29215)

(assert (=> b!2482097 (= condMapEmpty!15575 (= (arr!5326 (_values!3648 (v!31460 (underlying!6943 (v!31461 (underlying!6944 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29215)) mapDefault!15575)))))

(declare-fun mapIsEmpty!15575 () Bool)

(assert (=> mapIsEmpty!15575 mapRes!15575))

(declare-fun b!2482098 () Bool)

(declare-fun res!1050775 () Bool)

(assert (=> b!2482098 (=> (not res!1050775) (not e!1575607))))

(declare-fun contains!5115 (MutableMap!3278 K!5505) Bool)

(assert (=> b!2482098 (= res!1050775 (contains!5115 thiss!42540 key!2246))))

(assert (= (and start!242238 res!1050774) b!2482092))

(assert (= (and b!2482092 res!1050773) b!2482098))

(assert (= (and b!2482098 res!1050775) b!2482091))

(assert (= (and b!2482097 condMapEmpty!15575) mapIsEmpty!15575))

(assert (= (and b!2482097 (not condMapEmpty!15575)) mapNonEmpty!15575))

(assert (= b!2482095 b!2482097))

(assert (= b!2482096 b!2482095))

(assert (= b!2482093 b!2482096))

(assert (= (and b!2482090 ((_ is LongMap!3368) (v!31461 (underlying!6944 thiss!42540)))) b!2482093))

(assert (= b!2482094 b!2482090))

(assert (= (and start!242238 ((_ is HashMap!3278) thiss!42540)) b!2482094))

(declare-fun m!2850167 () Bool)

(assert (=> b!2482098 m!2850167))

(declare-fun m!2850169 () Bool)

(assert (=> b!2482091 m!2850169))

(declare-fun m!2850171 () Bool)

(assert (=> b!2482091 m!2850171))

(declare-fun m!2850173 () Bool)

(assert (=> b!2482091 m!2850173))

(declare-fun m!2850175 () Bool)

(assert (=> b!2482091 m!2850175))

(declare-fun m!2850177 () Bool)

(assert (=> b!2482091 m!2850177))

(declare-fun m!2850179 () Bool)

(assert (=> mapNonEmpty!15575 m!2850179))

(declare-fun m!2850181 () Bool)

(assert (=> b!2482095 m!2850181))

(declare-fun m!2850183 () Bool)

(assert (=> b!2482095 m!2850183))

(declare-fun m!2850185 () Bool)

(assert (=> b!2482092 m!2850185))

(check-sat (not b!2482091) (not b!2482097) tp_is_empty!12267 (not b!2482092) (not b_next!73035) b_and!188579 (not b!2482095) (not b!2482098) b_and!188577 (not b_next!73033) (not mapNonEmpty!15575))
(check-sat b_and!188579 b_and!188577 (not b_next!73033) (not b_next!73035))
