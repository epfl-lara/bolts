; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16628 () Bool)

(assert start!16628)

(declare-fun b!165792 () Bool)

(declare-fun b_free!3921 () Bool)

(declare-fun b_next!3921 () Bool)

(assert (=> b!165792 (= b_free!3921 (not b_next!3921))))

(declare-fun tp!14363 () Bool)

(declare-fun b_and!10353 () Bool)

(assert (=> b!165792 (= tp!14363 b_and!10353)))

(declare-fun b!165789 () Bool)

(declare-fun res!78740 () Bool)

(declare-fun e!108754 () Bool)

(assert (=> b!165789 (=> (not res!78740) (not e!108754))))

(declare-datatypes ((V!4611 0))(
  ( (V!4612 (val!1906 Int)) )
))
(declare-datatypes ((ValueCell!1518 0))(
  ( (ValueCellFull!1518 (v!3767 V!4611)) (EmptyCell!1518) )
))
(declare-datatypes ((array!6542 0))(
  ( (array!6543 (arr!3106 (Array (_ BitVec 32) (_ BitVec 64))) (size!3394 (_ BitVec 32))) )
))
(declare-datatypes ((array!6544 0))(
  ( (array!6545 (arr!3107 (Array (_ BitVec 32) ValueCell!1518)) (size!3395 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1944 0))(
  ( (LongMapFixedSize!1945 (defaultEntry!3414 Int) (mask!8133 (_ BitVec 32)) (extraKeys!3155 (_ BitVec 32)) (zeroValue!3257 V!4611) (minValue!3257 V!4611) (_size!1021 (_ BitVec 32)) (_keys!5239 array!6542) (_values!3397 array!6544) (_vacant!1021 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1944)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3080 0))(
  ( (tuple2!3081 (_1!1550 (_ BitVec 64)) (_2!1550 V!4611)) )
))
(declare-datatypes ((List!2090 0))(
  ( (Nil!2087) (Cons!2086 (h!2703 tuple2!3080) (t!6900 List!2090)) )
))
(declare-datatypes ((ListLongMap!2049 0))(
  ( (ListLongMap!2050 (toList!1040 List!2090)) )
))
(declare-fun contains!1076 (ListLongMap!2049 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!693 (array!6542 array!6544 (_ BitVec 32) (_ BitVec 32) V!4611 V!4611 (_ BitVec 32) Int) ListLongMap!2049)

(assert (=> b!165789 (= res!78740 (not (contains!1076 (getCurrentListMap!693 (_keys!5239 thiss!1248) (_values!3397 thiss!1248) (mask!8133 thiss!1248) (extraKeys!3155 thiss!1248) (zeroValue!3257 thiss!1248) (minValue!3257 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3414 thiss!1248)) key!828)))))

(declare-fun mapNonEmpty!6303 () Bool)

(declare-fun mapRes!6303 () Bool)

(declare-fun tp!14364 () Bool)

(declare-fun e!108760 () Bool)

(assert (=> mapNonEmpty!6303 (= mapRes!6303 (and tp!14364 e!108760))))

(declare-fun mapValue!6303 () ValueCell!1518)

(declare-fun mapKey!6303 () (_ BitVec 32))

(declare-fun mapRest!6303 () (Array (_ BitVec 32) ValueCell!1518))

(assert (=> mapNonEmpty!6303 (= (arr!3107 (_values!3397 thiss!1248)) (store mapRest!6303 mapKey!6303 mapValue!6303))))

(declare-fun b!165791 () Bool)

(declare-fun res!78736 () Bool)

(assert (=> b!165791 (=> (not res!78736) (not e!108754))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6542 (_ BitVec 32)) Bool)

(assert (=> b!165791 (= res!78736 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5239 thiss!1248) (mask!8133 thiss!1248)))))

(declare-fun e!108757 () Bool)

(declare-fun tp_is_empty!3723 () Bool)

(declare-fun e!108756 () Bool)

(declare-fun array_inv!1983 (array!6542) Bool)

(declare-fun array_inv!1984 (array!6544) Bool)

(assert (=> b!165792 (= e!108756 (and tp!14363 tp_is_empty!3723 (array_inv!1983 (_keys!5239 thiss!1248)) (array_inv!1984 (_values!3397 thiss!1248)) e!108757))))

(declare-fun b!165793 () Bool)

(declare-fun res!78737 () Bool)

(assert (=> b!165793 (=> (not res!78737) (not e!108754))))

(assert (=> b!165793 (= res!78737 (and (= (size!3395 (_values!3397 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8133 thiss!1248))) (= (size!3394 (_keys!5239 thiss!1248)) (size!3395 (_values!3397 thiss!1248))) (bvsge (mask!8133 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3155 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3155 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!165794 () Bool)

(declare-fun res!78738 () Bool)

(declare-fun e!108759 () Bool)

(assert (=> b!165794 (=> (not res!78738) (not e!108759))))

(assert (=> b!165794 (= res!78738 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!6303 () Bool)

(assert (=> mapIsEmpty!6303 mapRes!6303))

(declare-fun b!165795 () Bool)

(assert (=> b!165795 (= e!108754 false)))

(declare-fun lt!83164 () Bool)

(declare-datatypes ((List!2091 0))(
  ( (Nil!2088) (Cons!2087 (h!2704 (_ BitVec 64)) (t!6901 List!2091)) )
))
(declare-fun arrayNoDuplicates!0 (array!6542 (_ BitVec 32) List!2091) Bool)

(assert (=> b!165795 (= lt!83164 (arrayNoDuplicates!0 (_keys!5239 thiss!1248) #b00000000000000000000000000000000 Nil!2088))))

(declare-fun res!78735 () Bool)

(assert (=> start!16628 (=> (not res!78735) (not e!108759))))

(declare-fun valid!850 (LongMapFixedSize!1944) Bool)

(assert (=> start!16628 (= res!78735 (valid!850 thiss!1248))))

(assert (=> start!16628 e!108759))

(assert (=> start!16628 e!108756))

(assert (=> start!16628 true))

(declare-fun b!165790 () Bool)

(declare-fun e!108758 () Bool)

(assert (=> b!165790 (= e!108757 (and e!108758 mapRes!6303))))

(declare-fun condMapEmpty!6303 () Bool)

(declare-fun mapDefault!6303 () ValueCell!1518)

(assert (=> b!165790 (= condMapEmpty!6303 (= (arr!3107 (_values!3397 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1518)) mapDefault!6303)))))

(declare-fun b!165796 () Bool)

(assert (=> b!165796 (= e!108760 tp_is_empty!3723)))

(declare-fun b!165797 () Bool)

(declare-fun res!78741 () Bool)

(assert (=> b!165797 (=> (not res!78741) (not e!108754))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!165797 (= res!78741 (validMask!0 (mask!8133 thiss!1248)))))

(declare-fun b!165798 () Bool)

(assert (=> b!165798 (= e!108758 tp_is_empty!3723)))

(declare-fun b!165799 () Bool)

(assert (=> b!165799 (= e!108759 e!108754)))

(declare-fun res!78739 () Bool)

(assert (=> b!165799 (=> (not res!78739) (not e!108754))))

(declare-datatypes ((SeekEntryResult!453 0))(
  ( (MissingZero!453 (index!3980 (_ BitVec 32))) (Found!453 (index!3981 (_ BitVec 32))) (Intermediate!453 (undefined!1265 Bool) (index!3982 (_ BitVec 32)) (x!18385 (_ BitVec 32))) (Undefined!453) (MissingVacant!453 (index!3983 (_ BitVec 32))) )
))
(declare-fun lt!83165 () SeekEntryResult!453)

(get-info :version)

(assert (=> b!165799 (= res!78739 (and (not ((_ is Undefined!453) lt!83165)) (not ((_ is MissingVacant!453) lt!83165)) (not ((_ is MissingZero!453) lt!83165)) ((_ is Found!453) lt!83165)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6542 (_ BitVec 32)) SeekEntryResult!453)

(assert (=> b!165799 (= lt!83165 (seekEntryOrOpen!0 key!828 (_keys!5239 thiss!1248) (mask!8133 thiss!1248)))))

(assert (= (and start!16628 res!78735) b!165794))

(assert (= (and b!165794 res!78738) b!165799))

(assert (= (and b!165799 res!78739) b!165789))

(assert (= (and b!165789 res!78740) b!165797))

(assert (= (and b!165797 res!78741) b!165793))

(assert (= (and b!165793 res!78737) b!165791))

(assert (= (and b!165791 res!78736) b!165795))

(assert (= (and b!165790 condMapEmpty!6303) mapIsEmpty!6303))

(assert (= (and b!165790 (not condMapEmpty!6303)) mapNonEmpty!6303))

(assert (= (and mapNonEmpty!6303 ((_ is ValueCellFull!1518) mapValue!6303)) b!165796))

(assert (= (and b!165790 ((_ is ValueCellFull!1518) mapDefault!6303)) b!165798))

(assert (= b!165792 b!165790))

(assert (= start!16628 b!165792))

(declare-fun m!195469 () Bool)

(assert (=> b!165799 m!195469))

(declare-fun m!195471 () Bool)

(assert (=> mapNonEmpty!6303 m!195471))

(declare-fun m!195473 () Bool)

(assert (=> start!16628 m!195473))

(declare-fun m!195475 () Bool)

(assert (=> b!165797 m!195475))

(declare-fun m!195477 () Bool)

(assert (=> b!165789 m!195477))

(assert (=> b!165789 m!195477))

(declare-fun m!195479 () Bool)

(assert (=> b!165789 m!195479))

(declare-fun m!195481 () Bool)

(assert (=> b!165795 m!195481))

(declare-fun m!195483 () Bool)

(assert (=> b!165791 m!195483))

(declare-fun m!195485 () Bool)

(assert (=> b!165792 m!195485))

(declare-fun m!195487 () Bool)

(assert (=> b!165792 m!195487))

(check-sat (not b!165791) b_and!10353 (not b!165792) (not start!16628) (not mapNonEmpty!6303) (not b!165797) (not b!165799) (not b!165789) (not b!165795) (not b_next!3921) tp_is_empty!3723)
(check-sat b_and!10353 (not b_next!3921))
