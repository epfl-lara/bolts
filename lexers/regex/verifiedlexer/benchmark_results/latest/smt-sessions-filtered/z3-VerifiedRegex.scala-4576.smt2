; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241634 () Bool)

(assert start!241634)

(declare-fun b!2477107 () Bool)

(declare-fun b_free!71945 () Bool)

(declare-fun b_next!72649 () Bool)

(assert (=> b!2477107 (= b_free!71945 (not b_next!72649))))

(declare-fun tp!792343 () Bool)

(declare-fun b_and!188171 () Bool)

(assert (=> b!2477107 (= tp!792343 b_and!188171)))

(declare-fun b!2477105 () Bool)

(declare-fun b_free!71947 () Bool)

(declare-fun b_next!72651 () Bool)

(assert (=> b!2477105 (= b_free!71947 (not b_next!72651))))

(declare-fun tp!792347 () Bool)

(declare-fun b_and!188173 () Bool)

(assert (=> b!2477105 (= tp!792347 b_and!188173)))

(declare-fun b!2477096 () Bool)

(declare-fun e!1571709 () Bool)

(declare-fun tp!792346 () Bool)

(declare-fun mapRes!15241 () Bool)

(assert (=> b!2477096 (= e!1571709 (and tp!792346 mapRes!15241))))

(declare-fun condMapEmpty!15241 () Bool)

(declare-datatypes ((Hashable!3182 0))(
  ( (HashableExt!3181 (__x!18722 Int)) )
))
(declare-datatypes ((K!5265 0))(
  ( (K!5266 (val!8687 Int)) )
))
(declare-datatypes ((V!5467 0))(
  ( (V!5468 (val!8688 Int)) )
))
(declare-datatypes ((tuple2!28360 0))(
  ( (tuple2!28361 (_1!16721 K!5265) (_2!16721 V!5467)) )
))
(declare-datatypes ((List!29045 0))(
  ( (Nil!28945) (Cons!28945 (h!34347 tuple2!28360) (t!210682 List!29045)) )
))
(declare-datatypes ((array!11523 0))(
  ( (array!11524 (arr!5134 (Array (_ BitVec 32) List!29045)) (size!22553 (_ BitVec 32))) )
))
(declare-datatypes ((array!11525 0))(
  ( (array!11526 (arr!5135 (Array (_ BitVec 32) (_ BitVec 64))) (size!22554 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6544 0))(
  ( (LongMapFixedSize!6545 (defaultEntry!3646 Int) (mask!8397 (_ BitVec 32)) (extraKeys!3520 (_ BitVec 32)) (zeroValue!3530 List!29045) (minValue!3530 List!29045) (_size!6591 (_ BitVec 32)) (_keys!3569 array!11525) (_values!3552 array!11523) (_vacant!3333 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12905 0))(
  ( (Cell!12906 (v!31217 LongMapFixedSize!6544)) )
))
(declare-datatypes ((MutLongMap!3272 0))(
  ( (LongMap!3272 (underlying!6751 Cell!12905)) (MutLongMapExt!3271 (__x!18723 Int)) )
))
(declare-datatypes ((Cell!12907 0))(
  ( (Cell!12908 (v!31218 MutLongMap!3272)) )
))
(declare-datatypes ((MutableMap!3182 0))(
  ( (MutableMapExt!3181 (__x!18724 Int)) (HashMap!3182 (underlying!6752 Cell!12907) (hashF!5120 Hashable!3182) (_size!6592 (_ BitVec 32)) (defaultValue!3344 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3182)

(declare-fun mapDefault!15241 () List!29045)

(assert (=> b!2477096 (= condMapEmpty!15241 (= (arr!5134 (_values!3552 (v!31217 (underlying!6751 (v!31218 (underlying!6752 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29045)) mapDefault!15241)))))

(declare-fun b!2477097 () Bool)

(declare-fun res!1048641 () Bool)

(declare-fun e!1571710 () Bool)

(assert (=> b!2477097 (=> (not res!1048641) (not e!1571710))))

(declare-datatypes ((tuple2!28362 0))(
  ( (tuple2!28363 (_1!16722 (_ BitVec 64)) (_2!16722 List!29045)) )
))
(declare-datatypes ((List!29046 0))(
  ( (Nil!28946) (Cons!28946 (h!34348 tuple2!28362) (t!210683 List!29046)) )
))
(declare-datatypes ((ListLongMap!389 0))(
  ( (ListLongMap!390 (toList!1451 List!29046)) )
))
(declare-fun lt!884772 () ListLongMap!389)

(declare-fun allKeysSameHashInMap!128 (ListLongMap!389 Hashable!3182) Bool)

(assert (=> b!2477097 (= res!1048641 (allKeysSameHashInMap!128 lt!884772 (hashF!5120 thiss!42540)))))

(declare-fun b!2477098 () Bool)

(declare-fun res!1048642 () Bool)

(declare-fun e!1571714 () Bool)

(assert (=> b!2477098 (=> (not res!1048642) (not e!1571714))))

(declare-fun key!2246 () K!5265)

(declare-fun contains!4952 (MutableMap!3182 K!5265) Bool)

(assert (=> b!2477098 (= res!1048642 (not (contains!4952 thiss!42540 key!2246)))))

(declare-fun mapIsEmpty!15241 () Bool)

(assert (=> mapIsEmpty!15241 mapRes!15241))

(declare-fun b!2477099 () Bool)

(assert (=> b!2477099 (= e!1571714 e!1571710)))

(declare-fun res!1048638 () Bool)

(assert (=> b!2477099 (=> (not res!1048638) (not e!1571710))))

(declare-fun lambda!93460 () Int)

(declare-fun forall!5927 (List!29046 Int) Bool)

(assert (=> b!2477099 (= res!1048638 (forall!5927 (toList!1451 lt!884772) lambda!93460))))

(declare-fun map!6024 (MutLongMap!3272) ListLongMap!389)

(assert (=> b!2477099 (= lt!884772 (map!6024 (v!31218 (underlying!6752 thiss!42540))))))

(declare-fun b!2477100 () Bool)

(declare-fun res!1048637 () Bool)

(assert (=> b!2477100 (=> (not res!1048637) (not e!1571710))))

(declare-datatypes ((ListMap!943 0))(
  ( (ListMap!944 (toList!1452 List!29045)) )
))
(declare-fun contains!4953 (ListMap!943 K!5265) Bool)

(declare-fun extractMap!138 (List!29046) ListMap!943)

(assert (=> b!2477100 (= res!1048637 (not (contains!4953 (extractMap!138 (toList!1451 lt!884772)) key!2246)))))

(declare-fun b!2477101 () Bool)

(assert (=> b!2477101 (= e!1571710 (not (forall!5927 (toList!1451 lt!884772) lambda!93460)))))

(declare-fun mapNonEmpty!15241 () Bool)

(declare-fun tp!792341 () Bool)

(declare-fun tp!792345 () Bool)

(assert (=> mapNonEmpty!15241 (= mapRes!15241 (and tp!792341 tp!792345))))

(declare-fun mapValue!15241 () List!29045)

(declare-fun mapRest!15241 () (Array (_ BitVec 32) List!29045))

(declare-fun mapKey!15241 () (_ BitVec 32))

(assert (=> mapNonEmpty!15241 (= (arr!5134 (_values!3552 (v!31217 (underlying!6751 (v!31218 (underlying!6752 thiss!42540)))))) (store mapRest!15241 mapKey!15241 mapValue!15241))))

(declare-fun b!2477102 () Bool)

(declare-fun e!1571712 () Bool)

(declare-fun e!1571711 () Bool)

(assert (=> b!2477102 (= e!1571712 e!1571711)))

(declare-fun res!1048639 () Bool)

(assert (=> start!241634 (=> (not res!1048639) (not e!1571714))))

(get-info :version)

(assert (=> start!241634 (= res!1048639 ((_ is HashMap!3182) thiss!42540))))

(assert (=> start!241634 e!1571714))

(declare-fun e!1571708 () Bool)

(assert (=> start!241634 e!1571708))

(declare-fun tp_is_empty!12045 () Bool)

(assert (=> start!241634 tp_is_empty!12045))

(declare-fun b!2477103 () Bool)

(declare-fun e!1571707 () Bool)

(declare-fun lt!884771 () MutLongMap!3272)

(assert (=> b!2477103 (= e!1571707 (and e!1571712 ((_ is LongMap!3272) lt!884771)))))

(assert (=> b!2477103 (= lt!884771 (v!31218 (underlying!6752 thiss!42540)))))

(declare-fun b!2477104 () Bool)

(declare-fun e!1571706 () Bool)

(assert (=> b!2477104 (= e!1571711 e!1571706)))

(assert (=> b!2477105 (= e!1571708 (and e!1571707 tp!792347))))

(declare-fun b!2477106 () Bool)

(declare-fun res!1048640 () Bool)

(assert (=> b!2477106 (=> (not res!1048640) (not e!1571714))))

(declare-fun valid!2476 (MutableMap!3182) Bool)

(assert (=> b!2477106 (= res!1048640 (valid!2476 thiss!42540))))

(declare-fun tp!792344 () Bool)

(declare-fun tp!792342 () Bool)

(declare-fun array_inv!3683 (array!11525) Bool)

(declare-fun array_inv!3684 (array!11523) Bool)

(assert (=> b!2477107 (= e!1571706 (and tp!792343 tp!792342 tp!792344 (array_inv!3683 (_keys!3569 (v!31217 (underlying!6751 (v!31218 (underlying!6752 thiss!42540)))))) (array_inv!3684 (_values!3552 (v!31217 (underlying!6751 (v!31218 (underlying!6752 thiss!42540)))))) e!1571709))))

(assert (= (and start!241634 res!1048639) b!2477106))

(assert (= (and b!2477106 res!1048640) b!2477098))

(assert (= (and b!2477098 res!1048642) b!2477099))

(assert (= (and b!2477099 res!1048638) b!2477097))

(assert (= (and b!2477097 res!1048641) b!2477100))

(assert (= (and b!2477100 res!1048637) b!2477101))

(assert (= (and b!2477096 condMapEmpty!15241) mapIsEmpty!15241))

(assert (= (and b!2477096 (not condMapEmpty!15241)) mapNonEmpty!15241))

(assert (= b!2477107 b!2477096))

(assert (= b!2477104 b!2477107))

(assert (= b!2477102 b!2477104))

(assert (= (and b!2477103 ((_ is LongMap!3272) (v!31218 (underlying!6752 thiss!42540)))) b!2477102))

(assert (= b!2477105 b!2477103))

(assert (= (and start!241634 ((_ is HashMap!3182) thiss!42540)) b!2477105))

(declare-fun m!2845099 () Bool)

(assert (=> b!2477106 m!2845099))

(declare-fun m!2845101 () Bool)

(assert (=> b!2477100 m!2845101))

(assert (=> b!2477100 m!2845101))

(declare-fun m!2845103 () Bool)

(assert (=> b!2477100 m!2845103))

(declare-fun m!2845105 () Bool)

(assert (=> b!2477107 m!2845105))

(declare-fun m!2845107 () Bool)

(assert (=> b!2477107 m!2845107))

(declare-fun m!2845109 () Bool)

(assert (=> b!2477098 m!2845109))

(declare-fun m!2845111 () Bool)

(assert (=> mapNonEmpty!15241 m!2845111))

(declare-fun m!2845113 () Bool)

(assert (=> b!2477097 m!2845113))

(declare-fun m!2845115 () Bool)

(assert (=> b!2477099 m!2845115))

(declare-fun m!2845117 () Bool)

(assert (=> b!2477099 m!2845117))

(assert (=> b!2477101 m!2845115))

(check-sat b_and!188171 (not b!2477100) b_and!188173 (not b_next!72649) (not b!2477098) (not b!2477107) (not mapNonEmpty!15241) tp_is_empty!12045 (not b!2477096) (not b!2477097) (not b!2477106) (not b!2477101) (not b!2477099) (not b_next!72651))
(check-sat b_and!188173 b_and!188171 (not b_next!72649) (not b_next!72651))
