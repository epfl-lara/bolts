; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241668 () Bool)

(assert start!241668)

(declare-fun b!2477507 () Bool)

(declare-fun b_free!71993 () Bool)

(declare-fun b_next!72697 () Bool)

(assert (=> b!2477507 (= b_free!71993 (not b_next!72697))))

(declare-fun tp!792610 () Bool)

(declare-fun b_and!188219 () Bool)

(assert (=> b!2477507 (= tp!792610 b_and!188219)))

(declare-fun b!2477503 () Bool)

(declare-fun b_free!71995 () Bool)

(declare-fun b_next!72699 () Bool)

(assert (=> b!2477503 (= b_free!71995 (not b_next!72699))))

(declare-fun tp!792611 () Bool)

(declare-fun b_and!188221 () Bool)

(assert (=> b!2477503 (= tp!792611 b_and!188221)))

(declare-fun b!2477502 () Bool)

(declare-fun e!1572043 () Bool)

(declare-fun e!1572041 () Bool)

(declare-datatypes ((K!5295 0))(
  ( (K!5296 (val!8711 Int)) )
))
(declare-datatypes ((V!5497 0))(
  ( (V!5498 (val!8712 Int)) )
))
(declare-datatypes ((tuple2!28400 0))(
  ( (tuple2!28401 (_1!16741 K!5295) (_2!16741 V!5497)) )
))
(declare-datatypes ((List!29065 0))(
  ( (Nil!28965) (Cons!28965 (h!34367 tuple2!28400) (t!210702 List!29065)) )
))
(declare-datatypes ((array!11573 0))(
  ( (array!11574 (arr!5158 (Array (_ BitVec 32) List!29065)) (size!22577 (_ BitVec 32))) )
))
(declare-datatypes ((array!11575 0))(
  ( (array!11576 (arr!5159 (Array (_ BitVec 32) (_ BitVec 64))) (size!22578 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6568 0))(
  ( (LongMapFixedSize!6569 (defaultEntry!3658 Int) (mask!8415 (_ BitVec 32)) (extraKeys!3532 (_ BitVec 32)) (zeroValue!3542 List!29065) (minValue!3542 List!29065) (_size!6615 (_ BitVec 32)) (_keys!3581 array!11575) (_values!3564 array!11573) (_vacant!3345 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12953 0))(
  ( (Cell!12954 (v!31243 LongMapFixedSize!6568)) )
))
(declare-datatypes ((MutLongMap!3284 0))(
  ( (LongMap!3284 (underlying!6775 Cell!12953)) (MutLongMapExt!3283 (__x!18758 Int)) )
))
(declare-fun lt!884921 () MutLongMap!3284)

(get-info :version)

(assert (=> b!2477502 (= e!1572043 (and e!1572041 ((_ is LongMap!3284) lt!884921)))))

(declare-datatypes ((Hashable!3194 0))(
  ( (HashableExt!3193 (__x!18759 Int)) )
))
(declare-datatypes ((Cell!12955 0))(
  ( (Cell!12956 (v!31244 MutLongMap!3284)) )
))
(declare-datatypes ((MutableMap!3194 0))(
  ( (MutableMapExt!3193 (__x!18760 Int)) (HashMap!3194 (underlying!6776 Cell!12955) (hashF!5132 Hashable!3194) (_size!6616 (_ BitVec 32)) (defaultValue!3356 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3194)

(assert (=> b!2477502 (= lt!884921 (v!31244 (underlying!6776 thiss!42540)))))

(declare-fun e!1572040 () Bool)

(assert (=> b!2477503 (= e!1572040 (and e!1572043 tp!792611))))

(declare-fun b!2477504 () Bool)

(declare-fun e!1572037 () Bool)

(declare-fun e!1572042 () Bool)

(assert (=> b!2477504 (= e!1572037 e!1572042)))

(declare-fun b!2477505 () Bool)

(declare-fun e!1572044 () Bool)

(declare-fun tp!792612 () Bool)

(declare-fun mapRes!15280 () Bool)

(assert (=> b!2477505 (= e!1572044 (and tp!792612 mapRes!15280))))

(declare-fun condMapEmpty!15280 () Bool)

(declare-fun mapDefault!15280 () List!29065)

(assert (=> b!2477505 (= condMapEmpty!15280 (= (arr!5158 (_values!3564 (v!31243 (underlying!6775 (v!31244 (underlying!6776 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29065)) mapDefault!15280)))))

(declare-fun b!2477506 () Bool)

(declare-fun res!1048788 () Bool)

(declare-fun e!1572039 () Bool)

(assert (=> b!2477506 (=> (not res!1048788) (not e!1572039))))

(declare-fun key!2246 () K!5295)

(declare-fun contains!4966 (MutableMap!3194 K!5295) Bool)

(assert (=> b!2477506 (= res!1048788 (contains!4966 thiss!42540 key!2246))))

(declare-fun tp!792608 () Bool)

(declare-fun tp!792609 () Bool)

(declare-fun array_inv!3701 (array!11575) Bool)

(declare-fun array_inv!3702 (array!11573) Bool)

(assert (=> b!2477507 (= e!1572042 (and tp!792610 tp!792608 tp!792609 (array_inv!3701 (_keys!3581 (v!31243 (underlying!6775 (v!31244 (underlying!6776 thiss!42540)))))) (array_inv!3702 (_values!3564 (v!31243 (underlying!6775 (v!31244 (underlying!6776 thiss!42540)))))) e!1572044))))

(declare-fun b!2477508 () Bool)

(assert (=> b!2477508 (= e!1572041 e!1572037)))

(declare-fun b!2477509 () Bool)

(assert (=> b!2477509 (= e!1572039 (not ((_ is LongMap!3284) (v!31244 (underlying!6776 thiss!42540)))))))

(declare-fun lt!884922 () List!29065)

(declare-fun apply!6836 (MutLongMap!3284 (_ BitVec 64)) List!29065)

(declare-fun hash!613 (Hashable!3194 K!5295) (_ BitVec 64))

(assert (=> b!2477509 (= lt!884922 (apply!6836 (v!31244 (underlying!6776 thiss!42540)) (hash!613 (hashF!5132 thiss!42540) key!2246)))))

(declare-fun b!2477510 () Bool)

(declare-fun res!1048789 () Bool)

(assert (=> b!2477510 (=> (not res!1048789) (not e!1572039))))

(declare-fun valid!2488 (MutableMap!3194) Bool)

(assert (=> b!2477510 (= res!1048789 (valid!2488 thiss!42540))))

(declare-fun mapNonEmpty!15280 () Bool)

(declare-fun tp!792614 () Bool)

(declare-fun tp!792613 () Bool)

(assert (=> mapNonEmpty!15280 (= mapRes!15280 (and tp!792614 tp!792613))))

(declare-fun mapValue!15280 () List!29065)

(declare-fun mapRest!15280 () (Array (_ BitVec 32) List!29065))

(declare-fun mapKey!15280 () (_ BitVec 32))

(assert (=> mapNonEmpty!15280 (= (arr!5158 (_values!3564 (v!31243 (underlying!6775 (v!31244 (underlying!6776 thiss!42540)))))) (store mapRest!15280 mapKey!15280 mapValue!15280))))

(declare-fun res!1048787 () Bool)

(assert (=> start!241668 (=> (not res!1048787) (not e!1572039))))

(assert (=> start!241668 (= res!1048787 ((_ is HashMap!3194) thiss!42540))))

(assert (=> start!241668 e!1572039))

(assert (=> start!241668 e!1572040))

(declare-fun tp_is_empty!12071 () Bool)

(assert (=> start!241668 tp_is_empty!12071))

(declare-fun mapIsEmpty!15280 () Bool)

(assert (=> mapIsEmpty!15280 mapRes!15280))

(assert (= (and start!241668 res!1048787) b!2477510))

(assert (= (and b!2477510 res!1048789) b!2477506))

(assert (= (and b!2477506 res!1048788) b!2477509))

(assert (= (and b!2477505 condMapEmpty!15280) mapIsEmpty!15280))

(assert (= (and b!2477505 (not condMapEmpty!15280)) mapNonEmpty!15280))

(assert (= b!2477507 b!2477505))

(assert (= b!2477504 b!2477507))

(assert (= b!2477508 b!2477504))

(assert (= (and b!2477502 ((_ is LongMap!3284) (v!31244 (underlying!6776 thiss!42540)))) b!2477508))

(assert (= b!2477503 b!2477502))

(assert (= (and start!241668 ((_ is HashMap!3194) thiss!42540)) b!2477503))

(declare-fun m!2845355 () Bool)

(assert (=> mapNonEmpty!15280 m!2845355))

(declare-fun m!2845357 () Bool)

(assert (=> b!2477510 m!2845357))

(declare-fun m!2845359 () Bool)

(assert (=> b!2477506 m!2845359))

(declare-fun m!2845361 () Bool)

(assert (=> b!2477507 m!2845361))

(declare-fun m!2845363 () Bool)

(assert (=> b!2477507 m!2845363))

(declare-fun m!2845365 () Bool)

(assert (=> b!2477509 m!2845365))

(assert (=> b!2477509 m!2845365))

(declare-fun m!2845367 () Bool)

(assert (=> b!2477509 m!2845367))

(check-sat (not b!2477505) (not b!2477507) (not b!2477506) (not mapNonEmpty!15280) (not b!2477510) b_and!188219 (not b_next!72697) (not b!2477509) b_and!188221 tp_is_empty!12071 (not b_next!72699))
(check-sat b_and!188221 b_and!188219 (not b_next!72697) (not b_next!72699))
