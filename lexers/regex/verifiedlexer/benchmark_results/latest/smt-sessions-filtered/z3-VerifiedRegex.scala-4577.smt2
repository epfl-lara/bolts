; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241638 () Bool)

(assert start!241638)

(declare-fun b!2477175 () Bool)

(declare-fun b_free!71953 () Bool)

(declare-fun b_next!72657 () Bool)

(assert (=> b!2477175 (= b_free!71953 (not b_next!72657))))

(declare-fun tp!792386 () Bool)

(declare-fun b_and!188179 () Bool)

(assert (=> b!2477175 (= tp!792386 b_and!188179)))

(declare-fun b!2477177 () Bool)

(declare-fun b_free!71955 () Bool)

(declare-fun b_next!72659 () Bool)

(assert (=> b!2477177 (= b_free!71955 (not b_next!72659))))

(declare-fun tp!792387 () Bool)

(declare-fun b_and!188181 () Bool)

(assert (=> b!2477177 (= tp!792387 b_and!188181)))

(declare-fun mapNonEmpty!15247 () Bool)

(declare-fun mapRes!15247 () Bool)

(declare-fun tp!792383 () Bool)

(declare-fun tp!792384 () Bool)

(assert (=> mapNonEmpty!15247 (= mapRes!15247 (and tp!792383 tp!792384))))

(declare-datatypes ((Hashable!3184 0))(
  ( (HashableExt!3183 (__x!18728 Int)) )
))
(declare-datatypes ((K!5270 0))(
  ( (K!5271 (val!8691 Int)) )
))
(declare-datatypes ((V!5472 0))(
  ( (V!5473 (val!8692 Int)) )
))
(declare-datatypes ((tuple2!28368 0))(
  ( (tuple2!28369 (_1!16725 K!5270) (_2!16725 V!5472)) )
))
(declare-datatypes ((List!29049 0))(
  ( (Nil!28949) (Cons!28949 (h!34351 tuple2!28368) (t!210686 List!29049)) )
))
(declare-datatypes ((array!11531 0))(
  ( (array!11532 (arr!5138 (Array (_ BitVec 32) List!29049)) (size!22557 (_ BitVec 32))) )
))
(declare-datatypes ((array!11533 0))(
  ( (array!11534 (arr!5139 (Array (_ BitVec 32) (_ BitVec 64))) (size!22558 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6548 0))(
  ( (LongMapFixedSize!6549 (defaultEntry!3648 Int) (mask!8400 (_ BitVec 32)) (extraKeys!3522 (_ BitVec 32)) (zeroValue!3532 List!29049) (minValue!3532 List!29049) (_size!6595 (_ BitVec 32)) (_keys!3571 array!11533) (_values!3554 array!11531) (_vacant!3335 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12913 0))(
  ( (Cell!12914 (v!31221 LongMapFixedSize!6548)) )
))
(declare-datatypes ((MutLongMap!3274 0))(
  ( (LongMap!3274 (underlying!6755 Cell!12913)) (MutLongMapExt!3273 (__x!18729 Int)) )
))
(declare-datatypes ((Cell!12915 0))(
  ( (Cell!12916 (v!31222 MutLongMap!3274)) )
))
(declare-datatypes ((MutableMap!3184 0))(
  ( (MutableMapExt!3183 (__x!18730 Int)) (HashMap!3184 (underlying!6756 Cell!12915) (hashF!5122 Hashable!3184) (_size!6596 (_ BitVec 32)) (defaultValue!3346 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3184)

(declare-fun mapRest!15247 () (Array (_ BitVec 32) List!29049))

(declare-fun mapKey!15247 () (_ BitVec 32))

(declare-fun mapValue!15247 () List!29049)

(assert (=> mapNonEmpty!15247 (= (arr!5138 (_values!3554 (v!31221 (underlying!6755 (v!31222 (underlying!6756 thiss!42540)))))) (store mapRest!15247 mapKey!15247 mapValue!15247))))

(declare-fun b!2477168 () Bool)

(declare-fun e!1571760 () Bool)

(declare-fun e!1571763 () Bool)

(assert (=> b!2477168 (= e!1571760 e!1571763)))

(declare-fun b!2477169 () Bool)

(declare-fun res!1048674 () Bool)

(declare-fun e!1571764 () Bool)

(assert (=> b!2477169 (=> (not res!1048674) (not e!1571764))))

(declare-fun valid!2478 (MutableMap!3184) Bool)

(assert (=> b!2477169 (= res!1048674 (valid!2478 thiss!42540))))

(declare-fun mapIsEmpty!15247 () Bool)

(assert (=> mapIsEmpty!15247 mapRes!15247))

(declare-fun b!2477171 () Bool)

(declare-fun e!1571761 () Bool)

(assert (=> b!2477171 (= e!1571763 e!1571761)))

(declare-fun b!2477172 () Bool)

(declare-fun e!1571766 () Bool)

(assert (=> b!2477172 (= e!1571766 false)))

(declare-fun b!2477173 () Bool)

(declare-fun res!1048678 () Bool)

(assert (=> b!2477173 (=> (not res!1048678) (not e!1571764))))

(declare-fun key!2246 () K!5270)

(declare-fun contains!4954 (MutableMap!3184 K!5270) Bool)

(assert (=> b!2477173 (= res!1048678 (not (contains!4954 thiss!42540 key!2246)))))

(declare-fun b!2477174 () Bool)

(assert (=> b!2477174 (= e!1571764 e!1571766)))

(declare-fun res!1048676 () Bool)

(assert (=> b!2477174 (=> (not res!1048676) (not e!1571766))))

(declare-datatypes ((tuple2!28370 0))(
  ( (tuple2!28371 (_1!16726 (_ BitVec 64)) (_2!16726 List!29049)) )
))
(declare-datatypes ((List!29050 0))(
  ( (Nil!28950) (Cons!28950 (h!34352 tuple2!28370) (t!210687 List!29050)) )
))
(declare-datatypes ((ListLongMap!393 0))(
  ( (ListLongMap!394 (toList!1454 List!29050)) )
))
(declare-fun lt!884783 () ListLongMap!393)

(declare-fun lambda!93466 () Int)

(declare-fun forall!5929 (List!29050 Int) Bool)

(assert (=> b!2477174 (= res!1048676 (forall!5929 (toList!1454 lt!884783) lambda!93466))))

(declare-fun map!6027 (MutLongMap!3274) ListLongMap!393)

(assert (=> b!2477174 (= lt!884783 (map!6027 (v!31222 (underlying!6756 thiss!42540))))))

(declare-fun e!1571762 () Bool)

(declare-fun tp!792385 () Bool)

(declare-fun tp!792389 () Bool)

(declare-fun array_inv!3685 (array!11533) Bool)

(declare-fun array_inv!3686 (array!11531) Bool)

(assert (=> b!2477175 (= e!1571761 (and tp!792386 tp!792385 tp!792389 (array_inv!3685 (_keys!3571 (v!31221 (underlying!6755 (v!31222 (underlying!6756 thiss!42540)))))) (array_inv!3686 (_values!3554 (v!31221 (underlying!6755 (v!31222 (underlying!6756 thiss!42540)))))) e!1571762))))

(declare-fun b!2477176 () Bool)

(declare-fun e!1571768 () Bool)

(declare-fun lt!884784 () MutLongMap!3274)

(get-info :version)

(assert (=> b!2477176 (= e!1571768 (and e!1571760 ((_ is LongMap!3274) lt!884784)))))

(assert (=> b!2477176 (= lt!884784 (v!31222 (underlying!6756 thiss!42540)))))

(declare-fun e!1571767 () Bool)

(assert (=> b!2477177 (= e!1571767 (and e!1571768 tp!792387))))

(declare-fun b!2477170 () Bool)

(declare-fun res!1048673 () Bool)

(assert (=> b!2477170 (=> (not res!1048673) (not e!1571766))))

(declare-fun allKeysSameHashInMap!129 (ListLongMap!393 Hashable!3184) Bool)

(assert (=> b!2477170 (= res!1048673 (allKeysSameHashInMap!129 lt!884783 (hashF!5122 thiss!42540)))))

(declare-fun res!1048677 () Bool)

(assert (=> start!241638 (=> (not res!1048677) (not e!1571764))))

(assert (=> start!241638 (= res!1048677 ((_ is HashMap!3184) thiss!42540))))

(assert (=> start!241638 e!1571764))

(assert (=> start!241638 e!1571767))

(declare-fun tp_is_empty!12049 () Bool)

(assert (=> start!241638 tp_is_empty!12049))

(declare-fun b!2477178 () Bool)

(declare-fun tp!792388 () Bool)

(assert (=> b!2477178 (= e!1571762 (and tp!792388 mapRes!15247))))

(declare-fun condMapEmpty!15247 () Bool)

(declare-fun mapDefault!15247 () List!29049)

(assert (=> b!2477178 (= condMapEmpty!15247 (= (arr!5138 (_values!3554 (v!31221 (underlying!6755 (v!31222 (underlying!6756 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29049)) mapDefault!15247)))))

(declare-fun b!2477179 () Bool)

(declare-fun res!1048675 () Bool)

(assert (=> b!2477179 (=> (not res!1048675) (not e!1571766))))

(declare-datatypes ((ListMap!945 0))(
  ( (ListMap!946 (toList!1455 List!29049)) )
))
(declare-fun contains!4955 (ListMap!945 K!5270) Bool)

(declare-fun extractMap!139 (List!29050) ListMap!945)

(assert (=> b!2477179 (= res!1048675 (not (contains!4955 (extractMap!139 (toList!1454 lt!884783)) key!2246)))))

(assert (= (and start!241638 res!1048677) b!2477169))

(assert (= (and b!2477169 res!1048674) b!2477173))

(assert (= (and b!2477173 res!1048678) b!2477174))

(assert (= (and b!2477174 res!1048676) b!2477170))

(assert (= (and b!2477170 res!1048673) b!2477179))

(assert (= (and b!2477179 res!1048675) b!2477172))

(assert (= (and b!2477178 condMapEmpty!15247) mapIsEmpty!15247))

(assert (= (and b!2477178 (not condMapEmpty!15247)) mapNonEmpty!15247))

(assert (= b!2477175 b!2477178))

(assert (= b!2477171 b!2477175))

(assert (= b!2477168 b!2477171))

(assert (= (and b!2477176 ((_ is LongMap!3274) (v!31222 (underlying!6756 thiss!42540)))) b!2477168))

(assert (= b!2477177 b!2477176))

(assert (= (and start!241638 ((_ is HashMap!3184) thiss!42540)) b!2477177))

(declare-fun m!2845139 () Bool)

(assert (=> mapNonEmpty!15247 m!2845139))

(declare-fun m!2845141 () Bool)

(assert (=> b!2477173 m!2845141))

(declare-fun m!2845143 () Bool)

(assert (=> b!2477169 m!2845143))

(declare-fun m!2845145 () Bool)

(assert (=> b!2477179 m!2845145))

(assert (=> b!2477179 m!2845145))

(declare-fun m!2845147 () Bool)

(assert (=> b!2477179 m!2845147))

(declare-fun m!2845149 () Bool)

(assert (=> b!2477175 m!2845149))

(declare-fun m!2845151 () Bool)

(assert (=> b!2477175 m!2845151))

(declare-fun m!2845153 () Bool)

(assert (=> b!2477170 m!2845153))

(declare-fun m!2845155 () Bool)

(assert (=> b!2477174 m!2845155))

(declare-fun m!2845157 () Bool)

(assert (=> b!2477174 m!2845157))

(check-sat (not b!2477169) (not b!2477178) tp_is_empty!12049 (not b!2477174) b_and!188179 (not b!2477173) (not b_next!72657) b_and!188181 (not b!2477170) (not b!2477175) (not b!2477179) (not b_next!72659) (not mapNonEmpty!15247))
(check-sat b_and!188181 b_and!188179 (not b_next!72657) (not b_next!72659))
