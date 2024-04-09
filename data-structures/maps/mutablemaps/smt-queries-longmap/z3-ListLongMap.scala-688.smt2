; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16646 () Bool)

(assert start!16646)

(declare-fun b!166092 () Bool)

(declare-fun b_free!3939 () Bool)

(declare-fun b_next!3939 () Bool)

(assert (=> b!166092 (= b_free!3939 (not b_next!3939))))

(declare-fun tp!14417 () Bool)

(declare-fun b_and!10371 () Bool)

(assert (=> b!166092 (= tp!14417 b_and!10371)))

(declare-fun b!166086 () Bool)

(declare-fun res!78929 () Bool)

(declare-fun e!108949 () Bool)

(assert (=> b!166086 (=> (not res!78929) (not e!108949))))

(declare-datatypes ((V!4635 0))(
  ( (V!4636 (val!1915 Int)) )
))
(declare-datatypes ((ValueCell!1527 0))(
  ( (ValueCellFull!1527 (v!3776 V!4635)) (EmptyCell!1527) )
))
(declare-datatypes ((array!6578 0))(
  ( (array!6579 (arr!3124 (Array (_ BitVec 32) (_ BitVec 64))) (size!3412 (_ BitVec 32))) )
))
(declare-datatypes ((array!6580 0))(
  ( (array!6581 (arr!3125 (Array (_ BitVec 32) ValueCell!1527)) (size!3413 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1962 0))(
  ( (LongMapFixedSize!1963 (defaultEntry!3423 Int) (mask!8148 (_ BitVec 32)) (extraKeys!3164 (_ BitVec 32)) (zeroValue!3266 V!4635) (minValue!3266 V!4635) (_size!1030 (_ BitVec 32)) (_keys!5248 array!6578) (_values!3406 array!6580) (_vacant!1030 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1962)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3092 0))(
  ( (tuple2!3093 (_1!1556 (_ BitVec 64)) (_2!1556 V!4635)) )
))
(declare-datatypes ((List!2101 0))(
  ( (Nil!2098) (Cons!2097 (h!2714 tuple2!3092) (t!6911 List!2101)) )
))
(declare-datatypes ((ListLongMap!2061 0))(
  ( (ListLongMap!2062 (toList!1046 List!2101)) )
))
(declare-fun contains!1082 (ListLongMap!2061 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!699 (array!6578 array!6580 (_ BitVec 32) (_ BitVec 32) V!4635 V!4635 (_ BitVec 32) Int) ListLongMap!2061)

(assert (=> b!166086 (= res!78929 (not (contains!1082 (getCurrentListMap!699 (_keys!5248 thiss!1248) (_values!3406 thiss!1248) (mask!8148 thiss!1248) (extraKeys!3164 thiss!1248) (zeroValue!3266 thiss!1248) (minValue!3266 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3423 thiss!1248)) key!828)))))

(declare-fun b!166087 () Bool)

(declare-fun e!108943 () Bool)

(declare-fun e!108946 () Bool)

(declare-fun mapRes!6330 () Bool)

(assert (=> b!166087 (= e!108943 (and e!108946 mapRes!6330))))

(declare-fun condMapEmpty!6330 () Bool)

(declare-fun mapDefault!6330 () ValueCell!1527)

(assert (=> b!166087 (= condMapEmpty!6330 (= (arr!3125 (_values!3406 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1527)) mapDefault!6330)))))

(declare-fun b!166088 () Bool)

(declare-fun e!108947 () Bool)

(declare-fun tp_is_empty!3741 () Bool)

(assert (=> b!166088 (= e!108947 tp_is_empty!3741)))

(declare-fun mapNonEmpty!6330 () Bool)

(declare-fun tp!14418 () Bool)

(assert (=> mapNonEmpty!6330 (= mapRes!6330 (and tp!14418 e!108947))))

(declare-fun mapRest!6330 () (Array (_ BitVec 32) ValueCell!1527))

(declare-fun mapKey!6330 () (_ BitVec 32))

(declare-fun mapValue!6330 () ValueCell!1527)

(assert (=> mapNonEmpty!6330 (= (arr!3125 (_values!3406 thiss!1248)) (store mapRest!6330 mapKey!6330 mapValue!6330))))

(declare-fun b!166089 () Bool)

(declare-fun res!78930 () Bool)

(assert (=> b!166089 (=> (not res!78930) (not e!108949))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6578 (_ BitVec 32)) Bool)

(assert (=> b!166089 (= res!78930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5248 thiss!1248) (mask!8148 thiss!1248)))))

(declare-fun b!166090 () Bool)

(assert (=> b!166090 (= e!108946 tp_is_empty!3741)))

(declare-fun res!78926 () Bool)

(declare-fun e!108944 () Bool)

(assert (=> start!16646 (=> (not res!78926) (not e!108944))))

(declare-fun valid!856 (LongMapFixedSize!1962) Bool)

(assert (=> start!16646 (= res!78926 (valid!856 thiss!1248))))

(assert (=> start!16646 e!108944))

(declare-fun e!108948 () Bool)

(assert (=> start!16646 e!108948))

(assert (=> start!16646 true))

(declare-fun b!166091 () Bool)

(assert (=> b!166091 (= e!108944 e!108949)))

(declare-fun res!78928 () Bool)

(assert (=> b!166091 (=> (not res!78928) (not e!108949))))

(declare-datatypes ((SeekEntryResult!460 0))(
  ( (MissingZero!460 (index!4008 (_ BitVec 32))) (Found!460 (index!4009 (_ BitVec 32))) (Intermediate!460 (undefined!1272 Bool) (index!4010 (_ BitVec 32)) (x!18416 (_ BitVec 32))) (Undefined!460) (MissingVacant!460 (index!4011 (_ BitVec 32))) )
))
(declare-fun lt!83218 () SeekEntryResult!460)

(get-info :version)

(assert (=> b!166091 (= res!78928 (and (not ((_ is Undefined!460) lt!83218)) (not ((_ is MissingVacant!460) lt!83218)) (not ((_ is MissingZero!460) lt!83218)) ((_ is Found!460) lt!83218)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6578 (_ BitVec 32)) SeekEntryResult!460)

(assert (=> b!166091 (= lt!83218 (seekEntryOrOpen!0 key!828 (_keys!5248 thiss!1248) (mask!8148 thiss!1248)))))

(declare-fun array_inv!1995 (array!6578) Bool)

(declare-fun array_inv!1996 (array!6580) Bool)

(assert (=> b!166092 (= e!108948 (and tp!14417 tp_is_empty!3741 (array_inv!1995 (_keys!5248 thiss!1248)) (array_inv!1996 (_values!3406 thiss!1248)) e!108943))))

(declare-fun b!166093 () Bool)

(declare-fun res!78925 () Bool)

(assert (=> b!166093 (=> (not res!78925) (not e!108944))))

(assert (=> b!166093 (= res!78925 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!6330 () Bool)

(assert (=> mapIsEmpty!6330 mapRes!6330))

(declare-fun b!166094 () Bool)

(declare-fun res!78927 () Bool)

(assert (=> b!166094 (=> (not res!78927) (not e!108949))))

(assert (=> b!166094 (= res!78927 (and (= (size!3413 (_values!3406 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8148 thiss!1248))) (= (size!3412 (_keys!5248 thiss!1248)) (size!3413 (_values!3406 thiss!1248))) (bvsge (mask!8148 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3164 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3164 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!166095 () Bool)

(assert (=> b!166095 (= e!108949 false)))

(declare-fun lt!83219 () Bool)

(declare-datatypes ((List!2102 0))(
  ( (Nil!2099) (Cons!2098 (h!2715 (_ BitVec 64)) (t!6912 List!2102)) )
))
(declare-fun arrayNoDuplicates!0 (array!6578 (_ BitVec 32) List!2102) Bool)

(assert (=> b!166095 (= lt!83219 (arrayNoDuplicates!0 (_keys!5248 thiss!1248) #b00000000000000000000000000000000 Nil!2099))))

(declare-fun b!166096 () Bool)

(declare-fun res!78924 () Bool)

(assert (=> b!166096 (=> (not res!78924) (not e!108949))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!166096 (= res!78924 (validMask!0 (mask!8148 thiss!1248)))))

(assert (= (and start!16646 res!78926) b!166093))

(assert (= (and b!166093 res!78925) b!166091))

(assert (= (and b!166091 res!78928) b!166086))

(assert (= (and b!166086 res!78929) b!166096))

(assert (= (and b!166096 res!78924) b!166094))

(assert (= (and b!166094 res!78927) b!166089))

(assert (= (and b!166089 res!78930) b!166095))

(assert (= (and b!166087 condMapEmpty!6330) mapIsEmpty!6330))

(assert (= (and b!166087 (not condMapEmpty!6330)) mapNonEmpty!6330))

(assert (= (and mapNonEmpty!6330 ((_ is ValueCellFull!1527) mapValue!6330)) b!166088))

(assert (= (and b!166087 ((_ is ValueCellFull!1527) mapDefault!6330)) b!166090))

(assert (= b!166092 b!166087))

(assert (= start!16646 b!166092))

(declare-fun m!195649 () Bool)

(assert (=> b!166095 m!195649))

(declare-fun m!195651 () Bool)

(assert (=> b!166091 m!195651))

(declare-fun m!195653 () Bool)

(assert (=> b!166089 m!195653))

(declare-fun m!195655 () Bool)

(assert (=> b!166096 m!195655))

(declare-fun m!195657 () Bool)

(assert (=> b!166092 m!195657))

(declare-fun m!195659 () Bool)

(assert (=> b!166092 m!195659))

(declare-fun m!195661 () Bool)

(assert (=> mapNonEmpty!6330 m!195661))

(declare-fun m!195663 () Bool)

(assert (=> start!16646 m!195663))

(declare-fun m!195665 () Bool)

(assert (=> b!166086 m!195665))

(assert (=> b!166086 m!195665))

(declare-fun m!195667 () Bool)

(assert (=> b!166086 m!195667))

(check-sat (not b!166086) (not b!166092) (not b_next!3939) tp_is_empty!3741 (not b!166096) (not b!166095) (not mapNonEmpty!6330) (not b!166089) b_and!10371 (not start!16646) (not b!166091))
(check-sat b_and!10371 (not b_next!3939))
