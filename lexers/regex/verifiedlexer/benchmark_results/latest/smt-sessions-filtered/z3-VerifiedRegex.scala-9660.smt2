; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507004 () Bool)

(assert start!507004)

(declare-fun b!4854426 () Bool)

(declare-fun b_free!130337 () Bool)

(declare-fun b_next!131127 () Bool)

(assert (=> b!4854426 (= b_free!130337 (not b_next!131127))))

(declare-fun tp!1365345 () Bool)

(declare-fun b_and!342165 () Bool)

(assert (=> b!4854426 (= tp!1365345 b_and!342165)))

(declare-fun b!4854422 () Bool)

(declare-fun res!2072539 () Bool)

(declare-fun e!3034833 () Bool)

(assert (=> b!4854422 (=> (not res!2072539) (not e!3034833))))

(declare-datatypes ((V!17835 0))(
  ( (V!17836 (val!22368 Int)) )
))
(declare-datatypes ((array!18806 0))(
  ( (array!18807 (arr!8391 (Array (_ BitVec 32) V!17835)) (size!36665 (_ BitVec 32))) )
))
(declare-datatypes ((array!18808 0))(
  ( (array!18809 (arr!8392 (Array (_ BitVec 32) (_ BitVec 64))) (size!36666 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10206 0))(
  ( (LongMapFixedSize!10207 (defaultEntry!5528 Int) (mask!15404 (_ BitVec 32)) (extraKeys!5387 (_ BitVec 32)) (zeroValue!5400 V!17835) (minValue!5400 V!17835) (_size!10222 (_ BitVec 32)) (_keys!5457 array!18808) (_values!5425 array!18806) (_vacant!5168 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!20159 0))(
  ( (Cell!20160 (v!49583 LongMapFixedSize!10206)) )
))
(declare-datatypes ((MutLongMap!5103 0))(
  ( (LongMap!5103 (underlying!10404 Cell!20159)) (MutLongMapExt!5102 (__x!33835 Int)) )
))
(declare-fun thiss!47233 () MutLongMap!5103)

(declare-fun valid!4130 (MutLongMap!5103) Bool)

(assert (=> b!4854422 (= res!2072539 (valid!4130 thiss!47233))))

(declare-fun mapNonEmpty!22512 () Bool)

(declare-fun mapRes!22512 () Bool)

(declare-fun tp!1365344 () Bool)

(declare-fun tp_is_empty!35471 () Bool)

(assert (=> mapNonEmpty!22512 (= mapRes!22512 (and tp!1365344 tp_is_empty!35471))))

(declare-fun mapRest!22512 () (Array (_ BitVec 32) V!17835))

(declare-fun mapValue!22512 () V!17835)

(declare-fun mapKey!22512 () (_ BitVec 32))

(assert (=> mapNonEmpty!22512 (= (arr!8391 (_values!5425 (v!49583 (underlying!10404 thiss!47233)))) (store mapRest!22512 mapKey!22512 mapValue!22512))))

(declare-fun b!4854423 () Bool)

(declare-fun e!3034838 () Bool)

(assert (=> b!4854423 (= e!3034838 (and tp_is_empty!35471 mapRes!22512))))

(declare-fun condMapEmpty!22512 () Bool)

(declare-fun mapDefault!22512 () V!17835)

(assert (=> b!4854423 (= condMapEmpty!22512 (= (arr!8391 (_values!5425 (v!49583 (underlying!10404 thiss!47233)))) ((as const (Array (_ BitVec 32) V!17835)) mapDefault!22512)))))

(declare-fun b!4854424 () Bool)

(declare-fun e!3034834 () Bool)

(declare-fun e!3034837 () Bool)

(assert (=> b!4854424 (= e!3034834 e!3034837)))

(declare-fun b!4854425 () Bool)

(assert (=> b!4854425 (= e!3034833 false)))

(declare-fun lt!1991072 () Bool)

(declare-fun key!6996 () (_ BitVec 64))

(declare-fun contains!19351 (LongMapFixedSize!10206 (_ BitVec 64)) Bool)

(assert (=> b!4854425 (= lt!1991072 (contains!19351 (v!49583 (underlying!10404 thiss!47233)) key!6996))))

(declare-fun res!2072538 () Bool)

(assert (=> start!507004 (=> (not res!2072538) (not e!3034833))))

(get-info :version)

(assert (=> start!507004 (= res!2072538 ((_ is LongMap!5103) thiss!47233))))

(assert (=> start!507004 e!3034833))

(assert (=> start!507004 e!3034834))

(assert (=> start!507004 true))

(declare-fun mapIsEmpty!22512 () Bool)

(assert (=> mapIsEmpty!22512 mapRes!22512))

(declare-fun e!3034835 () Bool)

(declare-fun array_inv!6065 (array!18808) Bool)

(declare-fun array_inv!6066 (array!18806) Bool)

(assert (=> b!4854426 (= e!3034835 (and tp!1365345 tp_is_empty!35471 (array_inv!6065 (_keys!5457 (v!49583 (underlying!10404 thiss!47233)))) (array_inv!6066 (_values!5425 (v!49583 (underlying!10404 thiss!47233)))) e!3034838))))

(declare-fun b!4854427 () Bool)

(assert (=> b!4854427 (= e!3034837 e!3034835)))

(assert (= (and start!507004 res!2072538) b!4854422))

(assert (= (and b!4854422 res!2072539) b!4854425))

(assert (= (and b!4854423 condMapEmpty!22512) mapIsEmpty!22512))

(assert (= (and b!4854423 (not condMapEmpty!22512)) mapNonEmpty!22512))

(assert (= b!4854426 b!4854423))

(assert (= b!4854427 b!4854426))

(assert (= b!4854424 b!4854427))

(assert (= (and start!507004 ((_ is LongMap!5103) thiss!47233)) b!4854424))

(declare-fun m!5852332 () Bool)

(assert (=> b!4854422 m!5852332))

(declare-fun m!5852334 () Bool)

(assert (=> mapNonEmpty!22512 m!5852334))

(declare-fun m!5852336 () Bool)

(assert (=> b!4854425 m!5852336))

(declare-fun m!5852338 () Bool)

(assert (=> b!4854426 m!5852338))

(declare-fun m!5852340 () Bool)

(assert (=> b!4854426 m!5852340))

(check-sat (not b!4854425) (not b!4854422) (not b_next!131127) (not b!4854426) (not mapNonEmpty!22512) tp_is_empty!35471 b_and!342165)
(check-sat b_and!342165 (not b_next!131127))
