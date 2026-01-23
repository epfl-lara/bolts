; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!487206 () Bool)

(assert start!487206)

(declare-fun b!4763823 () Bool)

(declare-fun b_free!129467 () Bool)

(declare-fun b_next!130257 () Bool)

(assert (=> b!4763823 (= b_free!129467 (not b_next!130257))))

(declare-fun tp!1354382 () Bool)

(declare-fun b_and!341153 () Bool)

(assert (=> b!4763823 (= tp!1354382 b_and!341153)))

(declare-fun b!4763825 () Bool)

(declare-fun b_free!129469 () Bool)

(declare-fun b_next!130259 () Bool)

(assert (=> b!4763825 (= b_free!129469 (not b_next!130259))))

(declare-fun tp!1354378 () Bool)

(declare-fun b_and!341155 () Bool)

(assert (=> b!4763825 (= tp!1354378 b_and!341155)))

(declare-fun b!4763822 () Bool)

(declare-fun e!2973076 () Bool)

(declare-fun e!2973079 () Bool)

(assert (=> b!4763822 (= e!2973076 e!2973079)))

(declare-fun mapNonEmpty!21689 () Bool)

(declare-fun mapRes!21689 () Bool)

(declare-fun tp!1354379 () Bool)

(declare-fun tp!1354381 () Bool)

(assert (=> mapNonEmpty!21689 (= mapRes!21689 (and tp!1354379 tp!1354381))))

(declare-datatypes ((K!14844 0))(
  ( (K!14845 (val!20181 Int)) )
))
(declare-datatypes ((V!15090 0))(
  ( (V!15091 (val!20182 Int)) )
))
(declare-datatypes ((tuple2!55372 0))(
  ( (tuple2!55373 (_1!30980 K!14844) (_2!30980 V!15090)) )
))
(declare-datatypes ((List!53530 0))(
  ( (Nil!53406) (Cons!53406 (h!59818 tuple2!55372) (t!360930 List!53530)) )
))
(declare-fun mapRest!21689 () (Array (_ BitVec 32) List!53530))

(declare-fun mapValue!21689 () List!53530)

(declare-datatypes ((array!17818 0))(
  ( (array!17819 (arr!7947 (Array (_ BitVec 32) (_ BitVec 64))) (size!36177 (_ BitVec 32))) )
))
(declare-datatypes ((array!17820 0))(
  ( (array!17821 (arr!7948 (Array (_ BitVec 32) List!53530)) (size!36178 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!6542 0))(
  ( (HashableExt!6541 (__x!32391 Int)) )
))
(declare-datatypes ((LongMapFixedSize!9762 0))(
  ( (LongMapFixedSize!9763 (defaultEntry!5299 Int) (mask!14617 (_ BitVec 32)) (extraKeys!5156 (_ BitVec 32)) (zeroValue!5169 List!53530) (minValue!5169 List!53530) (_size!9787 (_ BitVec 32)) (_keys!5223 array!17818) (_values!5194 array!17820) (_vacant!4946 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19289 0))(
  ( (Cell!19290 (v!47484 LongMapFixedSize!9762)) )
))
(declare-datatypes ((MutLongMap!4881 0))(
  ( (LongMap!4881 (underlying!9969 Cell!19289)) (MutLongMapExt!4880 (__x!32392 Int)) )
))
(declare-datatypes ((Cell!19291 0))(
  ( (Cell!19292 (v!47485 MutLongMap!4881)) )
))
(declare-datatypes ((MutableMap!4765 0))(
  ( (MutableMapExt!4764 (__x!32393 Int)) (HashMap!4765 (underlying!9970 Cell!19291) (hashF!12367 Hashable!6542) (_size!9788 (_ BitVec 32)) (defaultValue!4936 Int)) )
))
(declare-fun thiss!42052 () MutableMap!4765)

(declare-fun mapKey!21689 () (_ BitVec 32))

(assert (=> mapNonEmpty!21689 (= (arr!7948 (_values!5194 (v!47484 (underlying!9969 (v!47485 (underlying!9970 thiss!42052)))))) (store mapRest!21689 mapKey!21689 mapValue!21689))))

(declare-fun tp!1354383 () Bool)

(declare-fun tp!1354377 () Bool)

(declare-fun e!2973080 () Bool)

(declare-fun e!2973077 () Bool)

(declare-fun array_inv!5719 (array!17818) Bool)

(declare-fun array_inv!5720 (array!17820) Bool)

(assert (=> b!4763823 (= e!2973077 (and tp!1354382 tp!1354377 tp!1354383 (array_inv!5719 (_keys!5223 (v!47484 (underlying!9969 (v!47485 (underlying!9970 thiss!42052)))))) (array_inv!5720 (_values!5194 (v!47484 (underlying!9969 (v!47485 (underlying!9970 thiss!42052)))))) e!2973080))))

(declare-fun b!4763824 () Bool)

(declare-fun res!2020525 () Bool)

(declare-fun e!2973078 () Bool)

(assert (=> b!4763824 (=> (not res!2020525) (not e!2973078))))

(declare-fun key!1776 () K!14844)

(declare-fun contains!16718 (MutableMap!4765 K!14844) Bool)

(assert (=> b!4763824 (= res!2020525 (contains!16718 thiss!42052 key!1776))))

(declare-fun e!2973075 () Bool)

(declare-fun e!2973074 () Bool)

(assert (=> b!4763825 (= e!2973075 (and e!2973074 tp!1354378))))

(declare-fun res!2020523 () Bool)

(assert (=> start!487206 (=> (not res!2020523) (not e!2973078))))

(get-info :version)

(assert (=> start!487206 (= res!2020523 ((_ is HashMap!4765) thiss!42052))))

(assert (=> start!487206 e!2973078))

(assert (=> start!487206 e!2973075))

(declare-fun tp_is_empty!32333 () Bool)

(assert (=> start!487206 tp_is_empty!32333))

(declare-fun b!4763826 () Bool)

(declare-fun tp!1354380 () Bool)

(assert (=> b!4763826 (= e!2973080 (and tp!1354380 mapRes!21689))))

(declare-fun condMapEmpty!21689 () Bool)

(declare-fun mapDefault!21689 () List!53530)

(assert (=> b!4763826 (= condMapEmpty!21689 (= (arr!7948 (_values!5194 (v!47484 (underlying!9969 (v!47485 (underlying!9970 thiss!42052)))))) ((as const (Array (_ BitVec 32) List!53530)) mapDefault!21689)))))

(declare-fun b!4763827 () Bool)

(assert (=> b!4763827 (= e!2973078 (not ((_ is LongMap!4881) (v!47485 (underlying!9970 thiss!42052)))))))

(declare-datatypes ((tuple2!55374 0))(
  ( (tuple2!55375 (_1!30981 (_ BitVec 64)) (_2!30981 List!53530)) )
))
(declare-datatypes ((List!53531 0))(
  ( (Nil!53407) (Cons!53407 (h!59819 tuple2!55374) (t!360931 List!53531)) )
))
(declare-datatypes ((ListLongMap!4621 0))(
  ( (ListLongMap!4622 (toList!6237 List!53531)) )
))
(declare-fun lt!1927006 () ListLongMap!4621)

(declare-fun map!11908 (MutLongMap!4881) ListLongMap!4621)

(assert (=> b!4763827 (= lt!1927006 (map!11908 (v!47485 (underlying!9970 thiss!42052))))))

(declare-fun b!4763828 () Bool)

(declare-fun lt!1927007 () MutLongMap!4881)

(assert (=> b!4763828 (= e!2973074 (and e!2973076 ((_ is LongMap!4881) lt!1927007)))))

(assert (=> b!4763828 (= lt!1927007 (v!47485 (underlying!9970 thiss!42052)))))

(declare-fun b!4763829 () Bool)

(assert (=> b!4763829 (= e!2973079 e!2973077)))

(declare-fun mapIsEmpty!21689 () Bool)

(assert (=> mapIsEmpty!21689 mapRes!21689))

(declare-fun b!4763830 () Bool)

(declare-fun res!2020524 () Bool)

(assert (=> b!4763830 (=> (not res!2020524) (not e!2973078))))

(declare-fun valid!3876 (MutableMap!4765) Bool)

(assert (=> b!4763830 (= res!2020524 (valid!3876 thiss!42052))))

(assert (= (and start!487206 res!2020523) b!4763830))

(assert (= (and b!4763830 res!2020524) b!4763824))

(assert (= (and b!4763824 res!2020525) b!4763827))

(assert (= (and b!4763826 condMapEmpty!21689) mapIsEmpty!21689))

(assert (= (and b!4763826 (not condMapEmpty!21689)) mapNonEmpty!21689))

(assert (= b!4763823 b!4763826))

(assert (= b!4763829 b!4763823))

(assert (= b!4763822 b!4763829))

(assert (= (and b!4763828 ((_ is LongMap!4881) (v!47485 (underlying!9970 thiss!42052)))) b!4763822))

(assert (= b!4763825 b!4763828))

(assert (= (and start!487206 ((_ is HashMap!4765) thiss!42052)) b!4763825))

(declare-fun m!5734464 () Bool)

(assert (=> b!4763830 m!5734464))

(declare-fun m!5734466 () Bool)

(assert (=> b!4763824 m!5734466))

(declare-fun m!5734468 () Bool)

(assert (=> mapNonEmpty!21689 m!5734468))

(declare-fun m!5734470 () Bool)

(assert (=> b!4763823 m!5734470))

(declare-fun m!5734472 () Bool)

(assert (=> b!4763823 m!5734472))

(declare-fun m!5734474 () Bool)

(assert (=> b!4763827 m!5734474))

(check-sat (not b!4763826) (not b!4763830) b_and!341155 tp_is_empty!32333 (not b!4763824) (not b!4763823) (not b_next!130257) (not b_next!130259) b_and!341153 (not mapNonEmpty!21689) (not b!4763827))
(check-sat b_and!341155 b_and!341153 (not b_next!130259) (not b_next!130257))
