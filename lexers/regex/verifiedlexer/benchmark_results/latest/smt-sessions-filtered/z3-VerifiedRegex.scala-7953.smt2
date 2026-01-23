; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413552 () Bool)

(assert start!413552)

(declare-fun b!4304704 () Bool)

(declare-fun b_free!128307 () Bool)

(declare-fun b_next!129011 () Bool)

(assert (=> b!4304704 (= b_free!128307 (not b_next!129011))))

(declare-fun tp!1322738 () Bool)

(declare-fun b_and!339705 () Bool)

(assert (=> b!4304704 (= tp!1322738 b_and!339705)))

(declare-fun b!4304713 () Bool)

(declare-fun b_free!128309 () Bool)

(declare-fun b_next!129013 () Bool)

(assert (=> b!4304713 (= b_free!128309 (not b_next!129013))))

(declare-fun tp!1322740 () Bool)

(declare-fun b_and!339707 () Bool)

(assert (=> b!4304713 (= tp!1322740 b_and!339707)))

(declare-fun tp!1322735 () Bool)

(declare-fun e!2676433 () Bool)

(declare-fun e!2676434 () Bool)

(declare-fun tp!1322736 () Bool)

(declare-datatypes ((V!9416 0))(
  ( (V!9417 (val!15629 Int)) )
))
(declare-datatypes ((K!9214 0))(
  ( (K!9215 (val!15630 Int)) )
))
(declare-datatypes ((tuple2!46232 0))(
  ( (tuple2!46233 (_1!26395 K!9214) (_2!26395 V!9416)) )
))
(declare-datatypes ((List!48184 0))(
  ( (Nil!48060) (Cons!48060 (h!53487 tuple2!46232) (t!354967 List!48184)) )
))
(declare-datatypes ((array!16484 0))(
  ( (array!16485 (arr!7359 (Array (_ BitVec 32) (_ BitVec 64))) (size!35398 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4503 0))(
  ( (HashableExt!4502 (__x!29786 Int)) )
))
(declare-datatypes ((array!16486 0))(
  ( (array!16487 (arr!7360 (Array (_ BitVec 32) List!48184)) (size!35399 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9174 0))(
  ( (LongMapFixedSize!9175 (defaultEntry!4972 Int) (mask!13109 (_ BitVec 32)) (extraKeys!4836 (_ BitVec 32)) (zeroValue!4846 List!48184) (minValue!4846 List!48184) (_size!9217 (_ BitVec 32)) (_keys!4887 array!16484) (_values!4868 array!16486) (_vacant!4648 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18157 0))(
  ( (Cell!18158 (v!42104 LongMapFixedSize!9174)) )
))
(declare-datatypes ((MutLongMap!4587 0))(
  ( (LongMap!4587 (underlying!9403 Cell!18157)) (MutLongMapExt!4586 (__x!29787 Int)) )
))
(declare-datatypes ((Cell!18159 0))(
  ( (Cell!18160 (v!42105 MutLongMap!4587)) )
))
(declare-datatypes ((MutableMap!4493 0))(
  ( (MutableMapExt!4492 (__x!29788 Int)) (HashMap!4493 (underlying!9404 Cell!18159) (hashF!6577 Hashable!4503) (_size!9218 (_ BitVec 32)) (defaultValue!4664 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4493)

(declare-fun array_inv!5281 (array!16484) Bool)

(declare-fun array_inv!5282 (array!16486) Bool)

(assert (=> b!4304704 (= e!2676433 (and tp!1322738 tp!1322736 tp!1322735 (array_inv!5281 (_keys!4887 (v!42104 (underlying!9403 (v!42105 (underlying!9404 thiss!42308)))))) (array_inv!5282 (_values!4868 (v!42104 (underlying!9403 (v!42105 (underlying!9404 thiss!42308)))))) e!2676434))))

(declare-fun mapIsEmpty!20554 () Bool)

(declare-fun mapRes!20554 () Bool)

(assert (=> mapIsEmpty!20554 mapRes!20554))

(declare-fun mapNonEmpty!20554 () Bool)

(declare-fun tp!1322739 () Bool)

(declare-fun tp!1322737 () Bool)

(assert (=> mapNonEmpty!20554 (= mapRes!20554 (and tp!1322739 tp!1322737))))

(declare-fun mapRest!20554 () (Array (_ BitVec 32) List!48184))

(declare-fun mapKey!20554 () (_ BitVec 32))

(declare-fun mapValue!20554 () List!48184)

(assert (=> mapNonEmpty!20554 (= (arr!7360 (_values!4868 (v!42104 (underlying!9403 (v!42105 (underlying!9404 thiss!42308)))))) (store mapRest!20554 mapKey!20554 mapValue!20554))))

(declare-fun b!4304705 () Bool)

(declare-fun e!2676429 () Bool)

(assert (=> b!4304705 (= e!2676429 (not true))))

(declare-datatypes ((tuple2!46234 0))(
  ( (tuple2!46235 (_1!26396 Bool) (_2!26396 MutLongMap!4587)) )
))
(declare-fun lt!1526266 () tuple2!46234)

(declare-fun valid!3571 (MutableMap!4493) Bool)

(assert (=> b!4304705 (valid!3571 (HashMap!4493 (Cell!18160 (_2!26396 lt!1526266)) (hashF!6577 thiss!42308) (_size!9218 thiss!42308) (defaultValue!4664 thiss!42308)))))

(declare-fun b!4304706 () Bool)

(declare-fun e!2676428 () Bool)

(assert (=> b!4304706 (= e!2676428 e!2676429)))

(declare-fun res!1764419 () Bool)

(assert (=> b!4304706 (=> (not res!1764419) (not e!2676429))))

(assert (=> b!4304706 (= res!1764419 (not (_1!26396 lt!1526266)))))

(declare-fun v!9179 () V!9416)

(declare-fun lt!1526264 () (_ BitVec 64))

(declare-fun key!2048 () K!9214)

(declare-fun update!383 (MutLongMap!4587 (_ BitVec 64) List!48184) tuple2!46234)

(declare-fun removePairForKey!179 (List!48184 K!9214) List!48184)

(declare-fun apply!10941 (MutLongMap!4587 (_ BitVec 64)) List!48184)

(assert (=> b!4304706 (= lt!1526266 (update!383 (v!42105 (underlying!9404 thiss!42308)) lt!1526264 (Cons!48060 (tuple2!46233 key!2048 v!9179) (removePairForKey!179 (apply!10941 (v!42105 (underlying!9404 thiss!42308)) lt!1526264) key!2048))))))

(declare-fun hash!915 (Hashable!4503 K!9214) (_ BitVec 64))

(assert (=> b!4304706 (= lt!1526264 (hash!915 (hashF!6577 thiss!42308) key!2048))))

(declare-fun res!1764418 () Bool)

(declare-fun e!2676427 () Bool)

(assert (=> start!413552 (=> (not res!1764418) (not e!2676427))))

(get-info :version)

(assert (=> start!413552 (= res!1764418 ((_ is HashMap!4493) thiss!42308))))

(assert (=> start!413552 e!2676427))

(declare-fun e!2676431 () Bool)

(assert (=> start!413552 e!2676431))

(declare-fun tp_is_empty!23487 () Bool)

(assert (=> start!413552 tp_is_empty!23487))

(declare-fun tp_is_empty!23489 () Bool)

(assert (=> start!413552 tp_is_empty!23489))

(declare-fun b!4304707 () Bool)

(assert (=> b!4304707 (= e!2676427 e!2676428)))

(declare-fun res!1764420 () Bool)

(assert (=> b!4304707 (=> (not res!1764420) (not e!2676428))))

(declare-fun contains!9994 (MutableMap!4493 K!9214) Bool)

(assert (=> b!4304707 (= res!1764420 (contains!9994 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46236 0))(
  ( (tuple2!46237 (_1!26397 (_ BitVec 64)) (_2!26397 List!48184)) )
))
(declare-datatypes ((List!48185 0))(
  ( (Nil!48061) (Cons!48061 (h!53488 tuple2!46236) (t!354968 List!48185)) )
))
(declare-datatypes ((ListLongMap!897 0))(
  ( (ListLongMap!898 (toList!2288 List!48185)) )
))
(declare-fun lt!1526267 () ListLongMap!897)

(declare-fun map!10029 (MutLongMap!4587) ListLongMap!897)

(assert (=> b!4304707 (= lt!1526267 (map!10029 (v!42105 (underlying!9404 thiss!42308))))))

(declare-datatypes ((ListMap!1573 0))(
  ( (ListMap!1574 (toList!2289 List!48184)) )
))
(declare-fun lt!1526263 () ListMap!1573)

(declare-fun map!10030 (MutableMap!4493) ListMap!1573)

(assert (=> b!4304707 (= lt!1526263 (map!10030 thiss!42308))))

(declare-fun b!4304708 () Bool)

(declare-fun e!2676432 () Bool)

(declare-fun e!2676435 () Bool)

(declare-fun lt!1526265 () MutLongMap!4587)

(assert (=> b!4304708 (= e!2676432 (and e!2676435 ((_ is LongMap!4587) lt!1526265)))))

(assert (=> b!4304708 (= lt!1526265 (v!42105 (underlying!9404 thiss!42308)))))

(declare-fun b!4304709 () Bool)

(declare-fun tp!1322741 () Bool)

(assert (=> b!4304709 (= e!2676434 (and tp!1322741 mapRes!20554))))

(declare-fun condMapEmpty!20554 () Bool)

(declare-fun mapDefault!20554 () List!48184)

(assert (=> b!4304709 (= condMapEmpty!20554 (= (arr!7360 (_values!4868 (v!42104 (underlying!9403 (v!42105 (underlying!9404 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48184)) mapDefault!20554)))))

(declare-fun b!4304710 () Bool)

(declare-fun res!1764421 () Bool)

(assert (=> b!4304710 (=> (not res!1764421) (not e!2676427))))

(assert (=> b!4304710 (= res!1764421 (valid!3571 thiss!42308))))

(declare-fun b!4304711 () Bool)

(declare-fun e!2676430 () Bool)

(assert (=> b!4304711 (= e!2676435 e!2676430)))

(declare-fun b!4304712 () Bool)

(assert (=> b!4304712 (= e!2676430 e!2676433)))

(assert (=> b!4304713 (= e!2676431 (and e!2676432 tp!1322740))))

(assert (= (and start!413552 res!1764418) b!4304710))

(assert (= (and b!4304710 res!1764421) b!4304707))

(assert (= (and b!4304707 res!1764420) b!4304706))

(assert (= (and b!4304706 res!1764419) b!4304705))

(assert (= (and b!4304709 condMapEmpty!20554) mapIsEmpty!20554))

(assert (= (and b!4304709 (not condMapEmpty!20554)) mapNonEmpty!20554))

(assert (= b!4304704 b!4304709))

(assert (= b!4304712 b!4304704))

(assert (= b!4304711 b!4304712))

(assert (= (and b!4304708 ((_ is LongMap!4587) (v!42105 (underlying!9404 thiss!42308)))) b!4304711))

(assert (= b!4304713 b!4304708))

(assert (= (and start!413552 ((_ is HashMap!4493) thiss!42308)) b!4304713))

(declare-fun m!4897697 () Bool)

(assert (=> b!4304705 m!4897697))

(declare-fun m!4897699 () Bool)

(assert (=> b!4304706 m!4897699))

(assert (=> b!4304706 m!4897699))

(declare-fun m!4897701 () Bool)

(assert (=> b!4304706 m!4897701))

(declare-fun m!4897703 () Bool)

(assert (=> b!4304706 m!4897703))

(declare-fun m!4897705 () Bool)

(assert (=> b!4304706 m!4897705))

(declare-fun m!4897707 () Bool)

(assert (=> b!4304704 m!4897707))

(declare-fun m!4897709 () Bool)

(assert (=> b!4304704 m!4897709))

(declare-fun m!4897711 () Bool)

(assert (=> b!4304707 m!4897711))

(declare-fun m!4897713 () Bool)

(assert (=> b!4304707 m!4897713))

(declare-fun m!4897715 () Bool)

(assert (=> b!4304707 m!4897715))

(declare-fun m!4897717 () Bool)

(assert (=> mapNonEmpty!20554 m!4897717))

(declare-fun m!4897719 () Bool)

(assert (=> b!4304710 m!4897719))

(check-sat (not b!4304705) (not b_next!129011) tp_is_empty!23487 (not b!4304709) (not b!4304706) (not b!4304710) (not b!4304707) b_and!339707 tp_is_empty!23489 (not b!4304704) (not b_next!129013) b_and!339705 (not mapNonEmpty!20554))
(check-sat b_and!339705 b_and!339707 (not b_next!129013) (not b_next!129011))
