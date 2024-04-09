; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18818 () Bool)

(assert start!18818)

(declare-fun b!185813 () Bool)

(declare-fun b_free!4581 () Bool)

(declare-fun b_next!4581 () Bool)

(assert (=> b!185813 (= b_free!4581 (not b_next!4581))))

(declare-fun tp!16542 () Bool)

(declare-fun b_and!11201 () Bool)

(assert (=> b!185813 (= tp!16542 b_and!11201)))

(declare-fun b!185811 () Bool)

(declare-fun e!122275 () Bool)

(declare-fun tp_is_empty!4353 () Bool)

(assert (=> b!185811 (= e!122275 tp_is_empty!4353)))

(declare-fun b!185812 () Bool)

(declare-fun e!122279 () Bool)

(assert (=> b!185812 (= e!122279 tp_is_empty!4353)))

(declare-fun e!122280 () Bool)

(declare-datatypes ((V!5451 0))(
  ( (V!5452 (val!2221 Int)) )
))
(declare-datatypes ((ValueCell!1833 0))(
  ( (ValueCellFull!1833 (v!4128 V!5451)) (EmptyCell!1833) )
))
(declare-datatypes ((array!7914 0))(
  ( (array!7915 (arr!3736 (Array (_ BitVec 32) (_ BitVec 64))) (size!4052 (_ BitVec 32))) )
))
(declare-datatypes ((array!7916 0))(
  ( (array!7917 (arr!3737 (Array (_ BitVec 32) ValueCell!1833)) (size!4053 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2574 0))(
  ( (LongMapFixedSize!2575 (defaultEntry!3789 Int) (mask!8904 (_ BitVec 32)) (extraKeys!3526 (_ BitVec 32)) (zeroValue!3630 V!5451) (minValue!3630 V!5451) (_size!1336 (_ BitVec 32)) (_keys!5730 array!7914) (_values!3772 array!7916) (_vacant!1336 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2574)

(declare-fun e!122278 () Bool)

(declare-fun array_inv!2407 (array!7914) Bool)

(declare-fun array_inv!2408 (array!7916) Bool)

(assert (=> b!185813 (= e!122278 (and tp!16542 tp_is_empty!4353 (array_inv!2407 (_keys!5730 thiss!1248)) (array_inv!2408 (_values!3772 thiss!1248)) e!122280))))

(declare-fun mapNonEmpty!7491 () Bool)

(declare-fun mapRes!7491 () Bool)

(declare-fun tp!16541 () Bool)

(assert (=> mapNonEmpty!7491 (= mapRes!7491 (and tp!16541 e!122275))))

(declare-fun mapKey!7491 () (_ BitVec 32))

(declare-fun mapRest!7491 () (Array (_ BitVec 32) ValueCell!1833))

(declare-fun mapValue!7491 () ValueCell!1833)

(assert (=> mapNonEmpty!7491 (= (arr!3737 (_values!3772 thiss!1248)) (store mapRest!7491 mapKey!7491 mapValue!7491))))

(declare-fun res!87929 () Bool)

(declare-fun e!122274 () Bool)

(assert (=> start!18818 (=> (not res!87929) (not e!122274))))

(declare-fun valid!1053 (LongMapFixedSize!2574) Bool)

(assert (=> start!18818 (= res!87929 (valid!1053 thiss!1248))))

(assert (=> start!18818 e!122274))

(assert (=> start!18818 e!122278))

(assert (=> start!18818 true))

(declare-fun b!185814 () Bool)

(declare-fun res!87931 () Bool)

(declare-fun e!122276 () Bool)

(assert (=> b!185814 (=> (not res!87931) (not e!122276))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3456 0))(
  ( (tuple2!3457 (_1!1738 (_ BitVec 64)) (_2!1738 V!5451)) )
))
(declare-datatypes ((List!2389 0))(
  ( (Nil!2386) (Cons!2385 (h!3018 tuple2!3456) (t!7281 List!2389)) )
))
(declare-datatypes ((ListLongMap!2387 0))(
  ( (ListLongMap!2388 (toList!1209 List!2389)) )
))
(declare-fun contains!1299 (ListLongMap!2387 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!852 (array!7914 array!7916 (_ BitVec 32) (_ BitVec 32) V!5451 V!5451 (_ BitVec 32) Int) ListLongMap!2387)

(assert (=> b!185814 (= res!87931 (not (contains!1299 (getCurrentListMap!852 (_keys!5730 thiss!1248) (_values!3772 thiss!1248) (mask!8904 thiss!1248) (extraKeys!3526 thiss!1248) (zeroValue!3630 thiss!1248) (minValue!3630 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3789 thiss!1248)) key!828)))))

(declare-fun b!185815 () Bool)

(declare-fun res!87932 () Bool)

(assert (=> b!185815 (=> (not res!87932) (not e!122274))))

(assert (=> b!185815 (= res!87932 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!7491 () Bool)

(assert (=> mapIsEmpty!7491 mapRes!7491))

(declare-fun b!185816 () Bool)

(assert (=> b!185816 (= e!122276 (not true))))

(assert (=> b!185816 false))

(declare-datatypes ((Unit!5595 0))(
  ( (Unit!5596) )
))
(declare-fun lt!91903 () Unit!5595)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!142 (array!7914 array!7916 (_ BitVec 32) (_ BitVec 32) V!5451 V!5451 (_ BitVec 64) Int) Unit!5595)

(assert (=> b!185816 (= lt!91903 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!142 (_keys!5730 thiss!1248) (_values!3772 thiss!1248) (mask!8904 thiss!1248) (extraKeys!3526 thiss!1248) (zeroValue!3630 thiss!1248) (minValue!3630 thiss!1248) key!828 (defaultEntry!3789 thiss!1248)))))

(declare-fun b!185817 () Bool)

(assert (=> b!185817 (= e!122274 e!122276)))

(declare-fun res!87930 () Bool)

(assert (=> b!185817 (=> (not res!87930) (not e!122276))))

(declare-datatypes ((SeekEntryResult!648 0))(
  ( (MissingZero!648 (index!4762 (_ BitVec 32))) (Found!648 (index!4763 (_ BitVec 32))) (Intermediate!648 (undefined!1460 Bool) (index!4764 (_ BitVec 32)) (x!20186 (_ BitVec 32))) (Undefined!648) (MissingVacant!648 (index!4765 (_ BitVec 32))) )
))
(declare-fun lt!91902 () SeekEntryResult!648)

(get-info :version)

(assert (=> b!185817 (= res!87930 (and (not ((_ is Undefined!648) lt!91902)) (not ((_ is MissingVacant!648) lt!91902)) (not ((_ is MissingZero!648) lt!91902)) ((_ is Found!648) lt!91902)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7914 (_ BitVec 32)) SeekEntryResult!648)

(assert (=> b!185817 (= lt!91902 (seekEntryOrOpen!0 key!828 (_keys!5730 thiss!1248) (mask!8904 thiss!1248)))))

(declare-fun b!185818 () Bool)

(assert (=> b!185818 (= e!122280 (and e!122279 mapRes!7491))))

(declare-fun condMapEmpty!7491 () Bool)

(declare-fun mapDefault!7491 () ValueCell!1833)

(assert (=> b!185818 (= condMapEmpty!7491 (= (arr!3737 (_values!3772 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1833)) mapDefault!7491)))))

(assert (= (and start!18818 res!87929) b!185815))

(assert (= (and b!185815 res!87932) b!185817))

(assert (= (and b!185817 res!87930) b!185814))

(assert (= (and b!185814 res!87931) b!185816))

(assert (= (and b!185818 condMapEmpty!7491) mapIsEmpty!7491))

(assert (= (and b!185818 (not condMapEmpty!7491)) mapNonEmpty!7491))

(assert (= (and mapNonEmpty!7491 ((_ is ValueCellFull!1833) mapValue!7491)) b!185811))

(assert (= (and b!185818 ((_ is ValueCellFull!1833) mapDefault!7491)) b!185812))

(assert (= b!185813 b!185818))

(assert (= start!18818 b!185813))

(declare-fun m!212919 () Bool)

(assert (=> b!185816 m!212919))

(declare-fun m!212921 () Bool)

(assert (=> start!18818 m!212921))

(declare-fun m!212923 () Bool)

(assert (=> b!185814 m!212923))

(assert (=> b!185814 m!212923))

(declare-fun m!212925 () Bool)

(assert (=> b!185814 m!212925))

(declare-fun m!212927 () Bool)

(assert (=> b!185813 m!212927))

(declare-fun m!212929 () Bool)

(assert (=> b!185813 m!212929))

(declare-fun m!212931 () Bool)

(assert (=> b!185817 m!212931))

(declare-fun m!212933 () Bool)

(assert (=> mapNonEmpty!7491 m!212933))

(check-sat (not b!185817) (not b!185816) (not mapNonEmpty!7491) (not b_next!4581) (not b!185814) tp_is_empty!4353 b_and!11201 (not start!18818) (not b!185813))
(check-sat b_and!11201 (not b_next!4581))
