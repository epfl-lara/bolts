; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16634 () Bool)

(assert start!16634)

(declare-fun b!165889 () Bool)

(declare-fun b_free!3927 () Bool)

(declare-fun b_next!3927 () Bool)

(assert (=> b!165889 (= b_free!3927 (not b_next!3927))))

(declare-fun tp!14382 () Bool)

(declare-fun b_and!10359 () Bool)

(assert (=> b!165889 (= tp!14382 b_and!10359)))

(declare-fun b!165888 () Bool)

(declare-fun res!78798 () Bool)

(declare-fun e!108817 () Bool)

(assert (=> b!165888 (=> (not res!78798) (not e!108817))))

(declare-datatypes ((V!4619 0))(
  ( (V!4620 (val!1909 Int)) )
))
(declare-datatypes ((ValueCell!1521 0))(
  ( (ValueCellFull!1521 (v!3770 V!4619)) (EmptyCell!1521) )
))
(declare-datatypes ((array!6554 0))(
  ( (array!6555 (arr!3112 (Array (_ BitVec 32) (_ BitVec 64))) (size!3400 (_ BitVec 32))) )
))
(declare-datatypes ((array!6556 0))(
  ( (array!6557 (arr!3113 (Array (_ BitVec 32) ValueCell!1521)) (size!3401 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1950 0))(
  ( (LongMapFixedSize!1951 (defaultEntry!3417 Int) (mask!8138 (_ BitVec 32)) (extraKeys!3158 (_ BitVec 32)) (zeroValue!3260 V!4619) (minValue!3260 V!4619) (_size!1024 (_ BitVec 32)) (_keys!5242 array!6554) (_values!3400 array!6556) (_vacant!1024 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1950)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!165888 (= res!78798 (validMask!0 (mask!8138 thiss!1248)))))

(declare-fun tp_is_empty!3729 () Bool)

(declare-fun e!108821 () Bool)

(declare-fun e!108822 () Bool)

(declare-fun array_inv!1989 (array!6554) Bool)

(declare-fun array_inv!1990 (array!6556) Bool)

(assert (=> b!165889 (= e!108821 (and tp!14382 tp_is_empty!3729 (array_inv!1989 (_keys!5242 thiss!1248)) (array_inv!1990 (_values!3400 thiss!1248)) e!108822))))

(declare-fun b!165890 () Bool)

(declare-fun e!108819 () Bool)

(assert (=> b!165890 (= e!108819 tp_is_empty!3729)))

(declare-fun b!165891 () Bool)

(declare-fun e!108823 () Bool)

(assert (=> b!165891 (= e!108823 e!108817)))

(declare-fun res!78804 () Bool)

(assert (=> b!165891 (=> (not res!78804) (not e!108817))))

(declare-datatypes ((SeekEntryResult!456 0))(
  ( (MissingZero!456 (index!3992 (_ BitVec 32))) (Found!456 (index!3993 (_ BitVec 32))) (Intermediate!456 (undefined!1268 Bool) (index!3994 (_ BitVec 32)) (x!18396 (_ BitVec 32))) (Undefined!456) (MissingVacant!456 (index!3995 (_ BitVec 32))) )
))
(declare-fun lt!83183 () SeekEntryResult!456)

(get-info :version)

(assert (=> b!165891 (= res!78804 (and (not ((_ is Undefined!456) lt!83183)) (not ((_ is MissingVacant!456) lt!83183)) (not ((_ is MissingZero!456) lt!83183)) ((_ is Found!456) lt!83183)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6554 (_ BitVec 32)) SeekEntryResult!456)

(assert (=> b!165891 (= lt!83183 (seekEntryOrOpen!0 key!828 (_keys!5242 thiss!1248) (mask!8138 thiss!1248)))))

(declare-fun b!165892 () Bool)

(declare-fun e!108820 () Bool)

(assert (=> b!165892 (= e!108820 tp_is_empty!3729)))

(declare-fun mapIsEmpty!6312 () Bool)

(declare-fun mapRes!6312 () Bool)

(assert (=> mapIsEmpty!6312 mapRes!6312))

(declare-fun b!165893 () Bool)

(declare-fun res!78801 () Bool)

(assert (=> b!165893 (=> (not res!78801) (not e!108817))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6554 (_ BitVec 32)) Bool)

(assert (=> b!165893 (= res!78801 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5242 thiss!1248) (mask!8138 thiss!1248)))))

(declare-fun b!165894 () Bool)

(assert (=> b!165894 (= e!108817 false)))

(declare-fun lt!83182 () Bool)

(declare-datatypes ((List!2094 0))(
  ( (Nil!2091) (Cons!2090 (h!2707 (_ BitVec 64)) (t!6904 List!2094)) )
))
(declare-fun arrayNoDuplicates!0 (array!6554 (_ BitVec 32) List!2094) Bool)

(assert (=> b!165894 (= lt!83182 (arrayNoDuplicates!0 (_keys!5242 thiss!1248) #b00000000000000000000000000000000 Nil!2091))))

(declare-fun b!165895 () Bool)

(declare-fun res!78799 () Bool)

(assert (=> b!165895 (=> (not res!78799) (not e!108817))))

(assert (=> b!165895 (= res!78799 (and (= (size!3401 (_values!3400 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8138 thiss!1248))) (= (size!3400 (_keys!5242 thiss!1248)) (size!3401 (_values!3400 thiss!1248))) (bvsge (mask!8138 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3158 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3158 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun res!78800 () Bool)

(assert (=> start!16634 (=> (not res!78800) (not e!108823))))

(declare-fun valid!853 (LongMapFixedSize!1950) Bool)

(assert (=> start!16634 (= res!78800 (valid!853 thiss!1248))))

(assert (=> start!16634 e!108823))

(assert (=> start!16634 e!108821))

(assert (=> start!16634 true))

(declare-fun b!165896 () Bool)

(declare-fun res!78802 () Bool)

(assert (=> b!165896 (=> (not res!78802) (not e!108817))))

(declare-datatypes ((tuple2!3086 0))(
  ( (tuple2!3087 (_1!1553 (_ BitVec 64)) (_2!1553 V!4619)) )
))
(declare-datatypes ((List!2095 0))(
  ( (Nil!2092) (Cons!2091 (h!2708 tuple2!3086) (t!6905 List!2095)) )
))
(declare-datatypes ((ListLongMap!2055 0))(
  ( (ListLongMap!2056 (toList!1043 List!2095)) )
))
(declare-fun contains!1079 (ListLongMap!2055 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!696 (array!6554 array!6556 (_ BitVec 32) (_ BitVec 32) V!4619 V!4619 (_ BitVec 32) Int) ListLongMap!2055)

(assert (=> b!165896 (= res!78802 (not (contains!1079 (getCurrentListMap!696 (_keys!5242 thiss!1248) (_values!3400 thiss!1248) (mask!8138 thiss!1248) (extraKeys!3158 thiss!1248) (zeroValue!3260 thiss!1248) (minValue!3260 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3417 thiss!1248)) key!828)))))

(declare-fun b!165897 () Bool)

(declare-fun res!78803 () Bool)

(assert (=> b!165897 (=> (not res!78803) (not e!108823))))

(assert (=> b!165897 (= res!78803 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!6312 () Bool)

(declare-fun tp!14381 () Bool)

(assert (=> mapNonEmpty!6312 (= mapRes!6312 (and tp!14381 e!108820))))

(declare-fun mapRest!6312 () (Array (_ BitVec 32) ValueCell!1521))

(declare-fun mapKey!6312 () (_ BitVec 32))

(declare-fun mapValue!6312 () ValueCell!1521)

(assert (=> mapNonEmpty!6312 (= (arr!3113 (_values!3400 thiss!1248)) (store mapRest!6312 mapKey!6312 mapValue!6312))))

(declare-fun b!165898 () Bool)

(assert (=> b!165898 (= e!108822 (and e!108819 mapRes!6312))))

(declare-fun condMapEmpty!6312 () Bool)

(declare-fun mapDefault!6312 () ValueCell!1521)

(assert (=> b!165898 (= condMapEmpty!6312 (= (arr!3113 (_values!3400 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1521)) mapDefault!6312)))))

(assert (= (and start!16634 res!78800) b!165897))

(assert (= (and b!165897 res!78803) b!165891))

(assert (= (and b!165891 res!78804) b!165896))

(assert (= (and b!165896 res!78802) b!165888))

(assert (= (and b!165888 res!78798) b!165895))

(assert (= (and b!165895 res!78799) b!165893))

(assert (= (and b!165893 res!78801) b!165894))

(assert (= (and b!165898 condMapEmpty!6312) mapIsEmpty!6312))

(assert (= (and b!165898 (not condMapEmpty!6312)) mapNonEmpty!6312))

(assert (= (and mapNonEmpty!6312 ((_ is ValueCellFull!1521) mapValue!6312)) b!165892))

(assert (= (and b!165898 ((_ is ValueCellFull!1521) mapDefault!6312)) b!165890))

(assert (= b!165889 b!165898))

(assert (= start!16634 b!165889))

(declare-fun m!195529 () Bool)

(assert (=> b!165896 m!195529))

(assert (=> b!165896 m!195529))

(declare-fun m!195531 () Bool)

(assert (=> b!165896 m!195531))

(declare-fun m!195533 () Bool)

(assert (=> b!165891 m!195533))

(declare-fun m!195535 () Bool)

(assert (=> mapNonEmpty!6312 m!195535))

(declare-fun m!195537 () Bool)

(assert (=> b!165894 m!195537))

(declare-fun m!195539 () Bool)

(assert (=> b!165893 m!195539))

(declare-fun m!195541 () Bool)

(assert (=> start!16634 m!195541))

(declare-fun m!195543 () Bool)

(assert (=> b!165889 m!195543))

(declare-fun m!195545 () Bool)

(assert (=> b!165889 m!195545))

(declare-fun m!195547 () Bool)

(assert (=> b!165888 m!195547))

(check-sat (not b!165888) (not b_next!3927) (not mapNonEmpty!6312) b_and!10359 tp_is_empty!3729 (not b!165893) (not b!165894) (not b!165896) (not start!16634) (not b!165889) (not b!165891))
(check-sat b_and!10359 (not b_next!3927))
