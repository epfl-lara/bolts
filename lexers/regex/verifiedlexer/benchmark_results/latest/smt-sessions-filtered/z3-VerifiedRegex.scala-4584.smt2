; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241690 () Bool)

(assert start!241690)

(declare-fun b!2477685 () Bool)

(declare-fun b_free!72009 () Bool)

(declare-fun b_next!72713 () Bool)

(assert (=> b!2477685 (= b_free!72009 (not b_next!72713))))

(declare-fun tp!792712 () Bool)

(declare-fun b_and!188237 () Bool)

(assert (=> b!2477685 (= tp!792712 b_and!188237)))

(declare-fun b!2477682 () Bool)

(declare-fun b_free!72011 () Bool)

(declare-fun b_next!72715 () Bool)

(assert (=> b!2477682 (= b_free!72011 (not b_next!72715))))

(declare-fun tp!792710 () Bool)

(declare-fun b_and!188239 () Bool)

(assert (=> b!2477682 (= tp!792710 b_and!188239)))

(declare-fun b!2477677 () Bool)

(declare-fun e!1572184 () Bool)

(declare-fun e!1572182 () Bool)

(assert (=> b!2477677 (= e!1572184 e!1572182)))

(declare-fun res!1048846 () Bool)

(declare-fun e!1572180 () Bool)

(assert (=> start!241690 (=> (not res!1048846) (not e!1572180))))

(declare-datatypes ((Hashable!3198 0))(
  ( (HashableExt!3197 (__x!18770 Int)) )
))
(declare-datatypes ((K!5305 0))(
  ( (K!5306 (val!8719 Int)) )
))
(declare-datatypes ((V!5507 0))(
  ( (V!5508 (val!8720 Int)) )
))
(declare-datatypes ((tuple2!28412 0))(
  ( (tuple2!28413 (_1!16747 K!5305) (_2!16747 V!5507)) )
))
(declare-datatypes ((List!29071 0))(
  ( (Nil!28971) (Cons!28971 (h!34373 tuple2!28412) (t!210710 List!29071)) )
))
(declare-datatypes ((array!11591 0))(
  ( (array!11592 (arr!5166 (Array (_ BitVec 32) List!29071)) (size!22585 (_ BitVec 32))) )
))
(declare-datatypes ((array!11593 0))(
  ( (array!11594 (arr!5167 (Array (_ BitVec 32) (_ BitVec 64))) (size!22586 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6576 0))(
  ( (LongMapFixedSize!6577 (defaultEntry!3662 Int) (mask!8421 (_ BitVec 32)) (extraKeys!3536 (_ BitVec 32)) (zeroValue!3546 List!29071) (minValue!3546 List!29071) (_size!6623 (_ BitVec 32)) (_keys!3585 array!11593) (_values!3568 array!11591) (_vacant!3349 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12969 0))(
  ( (Cell!12970 (v!31253 LongMapFixedSize!6576)) )
))
(declare-datatypes ((MutLongMap!3288 0))(
  ( (LongMap!3288 (underlying!6783 Cell!12969)) (MutLongMapExt!3287 (__x!18771 Int)) )
))
(declare-datatypes ((Cell!12971 0))(
  ( (Cell!12972 (v!31254 MutLongMap!3288)) )
))
(declare-datatypes ((MutableMap!3198 0))(
  ( (MutableMapExt!3197 (__x!18772 Int)) (HashMap!3198 (underlying!6784 Cell!12971) (hashF!5136 Hashable!3198) (_size!6624 (_ BitVec 32)) (defaultValue!3360 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3198)

(get-info :version)

(assert (=> start!241690 (= res!1048846 ((_ is HashMap!3198) thiss!42540))))

(assert (=> start!241690 e!1572180))

(declare-fun e!1572178 () Bool)

(assert (=> start!241690 e!1572178))

(declare-fun tp_is_empty!12081 () Bool)

(assert (=> start!241690 tp_is_empty!12081))

(declare-fun mapNonEmpty!15295 () Bool)

(declare-fun mapRes!15295 () Bool)

(declare-fun tp!792708 () Bool)

(declare-fun tp!792709 () Bool)

(assert (=> mapNonEmpty!15295 (= mapRes!15295 (and tp!792708 tp!792709))))

(declare-fun mapKey!15295 () (_ BitVec 32))

(declare-fun mapValue!15295 () List!29071)

(declare-fun mapRest!15295 () (Array (_ BitVec 32) List!29071))

(assert (=> mapNonEmpty!15295 (= (arr!5166 (_values!3568 (v!31253 (underlying!6783 (v!31254 (underlying!6784 thiss!42540)))))) (store mapRest!15295 mapKey!15295 mapValue!15295))))

(declare-fun b!2477678 () Bool)

(declare-fun res!1048845 () Bool)

(assert (=> b!2477678 (=> (not res!1048845) (not e!1572180))))

(declare-fun valid!2495 (MutableMap!3198) Bool)

(assert (=> b!2477678 (= res!1048845 (valid!2495 thiss!42540))))

(declare-fun b!2477679 () Bool)

(assert (=> b!2477679 (= e!1572180 (not ((_ is LongMap!3288) (v!31254 (underlying!6784 thiss!42540)))))))

(declare-datatypes ((tuple2!28414 0))(
  ( (tuple2!28415 (_1!16748 (_ BitVec 64)) (_2!16748 List!29071)) )
))
(declare-datatypes ((List!29072 0))(
  ( (Nil!28972) (Cons!28972 (h!34374 tuple2!28414) (t!210711 List!29072)) )
))
(declare-datatypes ((ListLongMap!409 0))(
  ( (ListLongMap!410 (toList!1469 List!29072)) )
))
(declare-fun lt!885015 () ListLongMap!409)

(declare-fun map!6046 (MutLongMap!3288) ListLongMap!409)

(assert (=> b!2477679 (= lt!885015 (map!6046 (v!31254 (underlying!6784 thiss!42540))))))

(declare-fun lt!885014 () List!29071)

(declare-fun key!2246 () K!5305)

(declare-fun apply!6841 (MutLongMap!3288 (_ BitVec 64)) List!29071)

(declare-fun hash!617 (Hashable!3198 K!5305) (_ BitVec 64))

(assert (=> b!2477679 (= lt!885014 (apply!6841 (v!31254 (underlying!6784 thiss!42540)) (hash!617 (hashF!5136 thiss!42540) key!2246)))))

(declare-fun b!2477680 () Bool)

(declare-fun e!1572183 () Bool)

(assert (=> b!2477680 (= e!1572182 e!1572183)))

(declare-fun b!2477681 () Bool)

(declare-fun e!1572181 () Bool)

(declare-fun tp!792707 () Bool)

(assert (=> b!2477681 (= e!1572181 (and tp!792707 mapRes!15295))))

(declare-fun condMapEmpty!15295 () Bool)

(declare-fun mapDefault!15295 () List!29071)

(assert (=> b!2477681 (= condMapEmpty!15295 (= (arr!5166 (_values!3568 (v!31253 (underlying!6783 (v!31254 (underlying!6784 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29071)) mapDefault!15295)))))

(declare-fun e!1572179 () Bool)

(assert (=> b!2477682 (= e!1572178 (and e!1572179 tp!792710))))

(declare-fun mapIsEmpty!15295 () Bool)

(assert (=> mapIsEmpty!15295 mapRes!15295))

(declare-fun b!2477683 () Bool)

(declare-fun res!1048844 () Bool)

(assert (=> b!2477683 (=> (not res!1048844) (not e!1572180))))

(declare-fun contains!4973 (MutableMap!3198 K!5305) Bool)

(assert (=> b!2477683 (= res!1048844 (contains!4973 thiss!42540 key!2246))))

(declare-fun b!2477684 () Bool)

(declare-fun lt!885013 () MutLongMap!3288)

(assert (=> b!2477684 (= e!1572179 (and e!1572184 ((_ is LongMap!3288) lt!885013)))))

(assert (=> b!2477684 (= lt!885013 (v!31254 (underlying!6784 thiss!42540)))))

(declare-fun tp!792711 () Bool)

(declare-fun tp!792713 () Bool)

(declare-fun array_inv!3707 (array!11593) Bool)

(declare-fun array_inv!3708 (array!11591) Bool)

(assert (=> b!2477685 (= e!1572183 (and tp!792712 tp!792713 tp!792711 (array_inv!3707 (_keys!3585 (v!31253 (underlying!6783 (v!31254 (underlying!6784 thiss!42540)))))) (array_inv!3708 (_values!3568 (v!31253 (underlying!6783 (v!31254 (underlying!6784 thiss!42540)))))) e!1572181))))

(assert (= (and start!241690 res!1048846) b!2477678))

(assert (= (and b!2477678 res!1048845) b!2477683))

(assert (= (and b!2477683 res!1048844) b!2477679))

(assert (= (and b!2477681 condMapEmpty!15295) mapIsEmpty!15295))

(assert (= (and b!2477681 (not condMapEmpty!15295)) mapNonEmpty!15295))

(assert (= b!2477685 b!2477681))

(assert (= b!2477680 b!2477685))

(assert (= b!2477677 b!2477680))

(assert (= (and b!2477684 ((_ is LongMap!3288) (v!31254 (underlying!6784 thiss!42540)))) b!2477677))

(assert (= b!2477682 b!2477684))

(assert (= (and start!241690 ((_ is HashMap!3198) thiss!42540)) b!2477682))

(declare-fun m!2845489 () Bool)

(assert (=> mapNonEmpty!15295 m!2845489))

(declare-fun m!2845491 () Bool)

(assert (=> b!2477683 m!2845491))

(declare-fun m!2845493 () Bool)

(assert (=> b!2477679 m!2845493))

(declare-fun m!2845495 () Bool)

(assert (=> b!2477679 m!2845495))

(assert (=> b!2477679 m!2845495))

(declare-fun m!2845497 () Bool)

(assert (=> b!2477679 m!2845497))

(declare-fun m!2845499 () Bool)

(assert (=> b!2477678 m!2845499))

(declare-fun m!2845501 () Bool)

(assert (=> b!2477685 m!2845501))

(declare-fun m!2845503 () Bool)

(assert (=> b!2477685 m!2845503))

(check-sat (not b_next!72713) (not b!2477678) b_and!188237 (not b!2477685) b_and!188239 (not b_next!72715) (not b!2477681) (not b!2477683) tp_is_empty!12081 (not mapNonEmpty!15295) (not b!2477679))
(check-sat b_and!188239 b_and!188237 (not b_next!72713) (not b_next!72715))
