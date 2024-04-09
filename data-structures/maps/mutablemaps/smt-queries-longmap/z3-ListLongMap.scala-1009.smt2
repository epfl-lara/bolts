; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21668 () Bool)

(assert start!21668)

(declare-fun b!217251 () Bool)

(declare-fun b_free!5805 () Bool)

(declare-fun b_next!5805 () Bool)

(assert (=> b!217251 (= b_free!5805 (not b_next!5805))))

(declare-fun tp!20549 () Bool)

(declare-fun b_and!12713 () Bool)

(assert (=> b!217251 (= tp!20549 b_and!12713)))

(declare-fun b!217250 () Bool)

(declare-fun res!106374 () Bool)

(declare-fun e!141347 () Bool)

(assert (=> b!217250 (=> (not res!106374) (not e!141347))))

(declare-datatypes ((V!7203 0))(
  ( (V!7204 (val!2878 Int)) )
))
(declare-datatypes ((ValueCell!2490 0))(
  ( (ValueCellFull!2490 (v!4892 V!7203)) (EmptyCell!2490) )
))
(declare-datatypes ((array!10572 0))(
  ( (array!10573 (arr!5007 (Array (_ BitVec 32) ValueCell!2490)) (size!5339 (_ BitVec 32))) )
))
(declare-datatypes ((array!10574 0))(
  ( (array!10575 (arr!5008 (Array (_ BitVec 32) (_ BitVec 64))) (size!5340 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2880 0))(
  ( (LongMapFixedSize!2881 (defaultEntry!4090 Int) (mask!9843 (_ BitVec 32)) (extraKeys!3827 (_ BitVec 32)) (zeroValue!3931 V!7203) (minValue!3931 V!7203) (_size!1489 (_ BitVec 32)) (_keys!6139 array!10574) (_values!4073 array!10572) (_vacant!1489 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2880)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4280 0))(
  ( (tuple2!4281 (_1!2150 (_ BitVec 64)) (_2!2150 V!7203)) )
))
(declare-datatypes ((List!3206 0))(
  ( (Nil!3203) (Cons!3202 (h!3849 tuple2!4280) (t!8169 List!3206)) )
))
(declare-datatypes ((ListLongMap!3207 0))(
  ( (ListLongMap!3208 (toList!1619 List!3206)) )
))
(declare-fun contains!1454 (ListLongMap!3207 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1142 (array!10574 array!10572 (_ BitVec 32) (_ BitVec 32) V!7203 V!7203 (_ BitVec 32) Int) ListLongMap!3207)

(assert (=> b!217250 (= res!106374 (contains!1454 (getCurrentListMap!1142 (_keys!6139 thiss!1504) (_values!4073 thiss!1504) (mask!9843 thiss!1504) (extraKeys!3827 thiss!1504) (zeroValue!3931 thiss!1504) (minValue!3931 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4090 thiss!1504)) key!932))))

(declare-fun tp_is_empty!5667 () Bool)

(declare-fun e!141346 () Bool)

(declare-fun e!141343 () Bool)

(declare-fun array_inv!3309 (array!10574) Bool)

(declare-fun array_inv!3310 (array!10572) Bool)

(assert (=> b!217251 (= e!141346 (and tp!20549 tp_is_empty!5667 (array_inv!3309 (_keys!6139 thiss!1504)) (array_inv!3310 (_values!4073 thiss!1504)) e!141343))))

(declare-fun mapNonEmpty!9663 () Bool)

(declare-fun mapRes!9663 () Bool)

(declare-fun tp!20550 () Bool)

(declare-fun e!141345 () Bool)

(assert (=> mapNonEmpty!9663 (= mapRes!9663 (and tp!20550 e!141345))))

(declare-fun mapValue!9663 () ValueCell!2490)

(declare-fun mapKey!9663 () (_ BitVec 32))

(declare-fun mapRest!9663 () (Array (_ BitVec 32) ValueCell!2490))

(assert (=> mapNonEmpty!9663 (= (arr!5007 (_values!4073 thiss!1504)) (store mapRest!9663 mapKey!9663 mapValue!9663))))

(declare-fun b!217252 () Bool)

(assert (=> b!217252 (= e!141347 false)))

(declare-fun lt!111342 () Bool)

(declare-datatypes ((List!3207 0))(
  ( (Nil!3204) (Cons!3203 (h!3850 (_ BitVec 64)) (t!8170 List!3207)) )
))
(declare-fun arrayNoDuplicates!0 (array!10574 (_ BitVec 32) List!3207) Bool)

(assert (=> b!217252 (= lt!111342 (arrayNoDuplicates!0 (_keys!6139 thiss!1504) #b00000000000000000000000000000000 Nil!3204))))

(declare-fun b!217253 () Bool)

(declare-fun e!141344 () Bool)

(assert (=> b!217253 (= e!141344 e!141347)))

(declare-fun res!106377 () Bool)

(assert (=> b!217253 (=> (not res!106377) (not e!141347))))

(declare-datatypes ((SeekEntryResult!776 0))(
  ( (MissingZero!776 (index!5274 (_ BitVec 32))) (Found!776 (index!5275 (_ BitVec 32))) (Intermediate!776 (undefined!1588 Bool) (index!5276 (_ BitVec 32)) (x!22736 (_ BitVec 32))) (Undefined!776) (MissingVacant!776 (index!5277 (_ BitVec 32))) )
))
(declare-fun lt!111343 () SeekEntryResult!776)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!217253 (= res!106377 (or (= lt!111343 (MissingZero!776 index!297)) (= lt!111343 (MissingVacant!776 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10574 (_ BitVec 32)) SeekEntryResult!776)

(assert (=> b!217253 (= lt!111343 (seekEntryOrOpen!0 key!932 (_keys!6139 thiss!1504) (mask!9843 thiss!1504)))))

(declare-fun res!106375 () Bool)

(assert (=> start!21668 (=> (not res!106375) (not e!141344))))

(declare-fun valid!1163 (LongMapFixedSize!2880) Bool)

(assert (=> start!21668 (= res!106375 (valid!1163 thiss!1504))))

(assert (=> start!21668 e!141344))

(assert (=> start!21668 e!141346))

(assert (=> start!21668 true))

(declare-fun b!217254 () Bool)

(declare-fun res!106371 () Bool)

(assert (=> b!217254 (=> (not res!106371) (not e!141347))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!217254 (= res!106371 (validMask!0 (mask!9843 thiss!1504)))))

(declare-fun b!217255 () Bool)

(declare-fun res!106372 () Bool)

(assert (=> b!217255 (=> (not res!106372) (not e!141347))))

(assert (=> b!217255 (= res!106372 (and (= (size!5339 (_values!4073 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9843 thiss!1504))) (= (size!5340 (_keys!6139 thiss!1504)) (size!5339 (_values!4073 thiss!1504))) (bvsge (mask!9843 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3827 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3827 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!217256 () Bool)

(declare-fun e!141342 () Bool)

(assert (=> b!217256 (= e!141342 tp_is_empty!5667)))

(declare-fun b!217257 () Bool)

(assert (=> b!217257 (= e!141345 tp_is_empty!5667)))

(declare-fun b!217258 () Bool)

(declare-fun res!106373 () Bool)

(assert (=> b!217258 (=> (not res!106373) (not e!141344))))

(assert (=> b!217258 (= res!106373 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!217259 () Bool)

(declare-fun res!106376 () Bool)

(assert (=> b!217259 (=> (not res!106376) (not e!141347))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10574 (_ BitVec 32)) Bool)

(assert (=> b!217259 (= res!106376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6139 thiss!1504) (mask!9843 thiss!1504)))))

(declare-fun b!217260 () Bool)

(assert (=> b!217260 (= e!141343 (and e!141342 mapRes!9663))))

(declare-fun condMapEmpty!9663 () Bool)

(declare-fun mapDefault!9663 () ValueCell!2490)

(assert (=> b!217260 (= condMapEmpty!9663 (= (arr!5007 (_values!4073 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2490)) mapDefault!9663)))))

(declare-fun mapIsEmpty!9663 () Bool)

(assert (=> mapIsEmpty!9663 mapRes!9663))

(assert (= (and start!21668 res!106375) b!217258))

(assert (= (and b!217258 res!106373) b!217253))

(assert (= (and b!217253 res!106377) b!217250))

(assert (= (and b!217250 res!106374) b!217254))

(assert (= (and b!217254 res!106371) b!217255))

(assert (= (and b!217255 res!106372) b!217259))

(assert (= (and b!217259 res!106376) b!217252))

(assert (= (and b!217260 condMapEmpty!9663) mapIsEmpty!9663))

(assert (= (and b!217260 (not condMapEmpty!9663)) mapNonEmpty!9663))

(get-info :version)

(assert (= (and mapNonEmpty!9663 ((_ is ValueCellFull!2490) mapValue!9663)) b!217257))

(assert (= (and b!217260 ((_ is ValueCellFull!2490) mapDefault!9663)) b!217256))

(assert (= b!217251 b!217260))

(assert (= start!21668 b!217251))

(declare-fun m!243647 () Bool)

(assert (=> b!217259 m!243647))

(declare-fun m!243649 () Bool)

(assert (=> mapNonEmpty!9663 m!243649))

(declare-fun m!243651 () Bool)

(assert (=> b!217254 m!243651))

(declare-fun m!243653 () Bool)

(assert (=> b!217250 m!243653))

(assert (=> b!217250 m!243653))

(declare-fun m!243655 () Bool)

(assert (=> b!217250 m!243655))

(declare-fun m!243657 () Bool)

(assert (=> b!217252 m!243657))

(declare-fun m!243659 () Bool)

(assert (=> b!217251 m!243659))

(declare-fun m!243661 () Bool)

(assert (=> b!217251 m!243661))

(declare-fun m!243663 () Bool)

(assert (=> start!21668 m!243663))

(declare-fun m!243665 () Bool)

(assert (=> b!217253 m!243665))

(check-sat (not b!217259) (not b_next!5805) (not mapNonEmpty!9663) (not b!217251) (not b!217252) tp_is_empty!5667 (not b!217253) (not b!217254) b_and!12713 (not b!217250) (not start!21668))
(check-sat b_and!12713 (not b_next!5805))
