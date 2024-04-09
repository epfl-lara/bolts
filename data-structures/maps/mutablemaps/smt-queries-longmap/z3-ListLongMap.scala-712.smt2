; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16790 () Bool)

(assert start!16790)

(declare-fun b!168838 () Bool)

(declare-fun b_free!4083 () Bool)

(declare-fun b_next!4083 () Bool)

(assert (=> b!168838 (= b_free!4083 (not b_next!4083))))

(declare-fun tp!14849 () Bool)

(declare-fun b_and!10515 () Bool)

(assert (=> b!168838 (= tp!14849 b_and!10515)))

(declare-fun b!168831 () Bool)

(declare-datatypes ((Unit!5212 0))(
  ( (Unit!5213) )
))
(declare-fun e!111085 () Unit!5212)

(declare-fun Unit!5214 () Unit!5212)

(assert (=> b!168831 (= e!111085 Unit!5214)))

(declare-fun lt!84620 () Unit!5212)

(declare-datatypes ((V!4827 0))(
  ( (V!4828 (val!1987 Int)) )
))
(declare-datatypes ((ValueCell!1599 0))(
  ( (ValueCellFull!1599 (v!3848 V!4827)) (EmptyCell!1599) )
))
(declare-datatypes ((array!6866 0))(
  ( (array!6867 (arr!3268 (Array (_ BitVec 32) (_ BitVec 64))) (size!3556 (_ BitVec 32))) )
))
(declare-datatypes ((array!6868 0))(
  ( (array!6869 (arr!3269 (Array (_ BitVec 32) ValueCell!1599)) (size!3557 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2106 0))(
  ( (LongMapFixedSize!2107 (defaultEntry!3495 Int) (mask!8268 (_ BitVec 32)) (extraKeys!3236 (_ BitVec 32)) (zeroValue!3338 V!4827) (minValue!3338 V!4827) (_size!1102 (_ BitVec 32)) (_keys!5320 array!6866) (_values!3478 array!6868) (_vacant!1102 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2106)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!130 (array!6866 array!6868 (_ BitVec 32) (_ BitVec 32) V!4827 V!4827 (_ BitVec 64) Int) Unit!5212)

(assert (=> b!168831 (= lt!84620 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!130 (_keys!5320 thiss!1248) (_values!3478 thiss!1248) (mask!8268 thiss!1248) (extraKeys!3236 thiss!1248) (zeroValue!3338 thiss!1248) (minValue!3338 thiss!1248) key!828 (defaultEntry!3495 thiss!1248)))))

(assert (=> b!168831 false))

(declare-datatypes ((SeekEntryResult!522 0))(
  ( (MissingZero!522 (index!4256 (_ BitVec 32))) (Found!522 (index!4257 (_ BitVec 32))) (Intermediate!522 (undefined!1334 Bool) (index!4258 (_ BitVec 32)) (x!18670 (_ BitVec 32))) (Undefined!522) (MissingVacant!522 (index!4259 (_ BitVec 32))) )
))
(declare-fun lt!84628 () SeekEntryResult!522)

(declare-fun e!111091 () Bool)

(declare-fun b!168832 () Bool)

(assert (=> b!168832 (= e!111091 (= (select (arr!3268 (_keys!5320 thiss!1248)) (index!4257 lt!84628)) key!828))))

(declare-fun mapIsEmpty!6546 () Bool)

(declare-fun mapRes!6546 () Bool)

(assert (=> mapIsEmpty!6546 mapRes!6546))

(declare-fun b!168833 () Bool)

(declare-fun e!111087 () Bool)

(declare-fun tp_is_empty!3885 () Bool)

(assert (=> b!168833 (= e!111087 tp_is_empty!3885)))

(declare-fun b!168834 () Bool)

(declare-fun e!111088 () Bool)

(assert (=> b!168834 (= e!111088 tp_is_empty!3885)))

(declare-fun res!80383 () Bool)

(declare-fun e!111084 () Bool)

(assert (=> start!16790 (=> (not res!80383) (not e!111084))))

(declare-fun valid!904 (LongMapFixedSize!2106) Bool)

(assert (=> start!16790 (= res!80383 (valid!904 thiss!1248))))

(assert (=> start!16790 e!111084))

(declare-fun e!111082 () Bool)

(assert (=> start!16790 e!111082))

(assert (=> start!16790 true))

(assert (=> start!16790 tp_is_empty!3885))

(declare-fun mapNonEmpty!6546 () Bool)

(declare-fun tp!14850 () Bool)

(assert (=> mapNonEmpty!6546 (= mapRes!6546 (and tp!14850 e!111088))))

(declare-fun mapKey!6546 () (_ BitVec 32))

(declare-fun mapValue!6546 () ValueCell!1599)

(declare-fun mapRest!6546 () (Array (_ BitVec 32) ValueCell!1599))

(assert (=> mapNonEmpty!6546 (= (arr!3269 (_values!3478 thiss!1248)) (store mapRest!6546 mapKey!6546 mapValue!6546))))

(declare-fun b!168835 () Bool)

(declare-fun e!111090 () Bool)

(assert (=> b!168835 (= e!111090 true)))

(declare-fun lt!84626 () Bool)

(declare-fun lt!84622 () LongMapFixedSize!2106)

(declare-datatypes ((tuple2!3182 0))(
  ( (tuple2!3183 (_1!1601 (_ BitVec 64)) (_2!1601 V!4827)) )
))
(declare-datatypes ((List!2194 0))(
  ( (Nil!2191) (Cons!2190 (h!2807 tuple2!3182) (t!7004 List!2194)) )
))
(declare-datatypes ((ListLongMap!2151 0))(
  ( (ListLongMap!2152 (toList!1091 List!2194)) )
))
(declare-fun contains!1127 (ListLongMap!2151 (_ BitVec 64)) Bool)

(declare-fun map!1805 (LongMapFixedSize!2106) ListLongMap!2151)

(assert (=> b!168835 (= lt!84626 (contains!1127 (map!1805 lt!84622) key!828))))

(declare-fun b!168836 () Bool)

(declare-fun lt!84624 () Unit!5212)

(assert (=> b!168836 (= e!111085 lt!84624)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!132 (array!6866 array!6868 (_ BitVec 32) (_ BitVec 32) V!4827 V!4827 (_ BitVec 64) Int) Unit!5212)

(assert (=> b!168836 (= lt!84624 (lemmaInListMapThenSeekEntryOrOpenFindsIt!132 (_keys!5320 thiss!1248) (_values!3478 thiss!1248) (mask!8268 thiss!1248) (extraKeys!3236 thiss!1248) (zeroValue!3338 thiss!1248) (minValue!3338 thiss!1248) key!828 (defaultEntry!3495 thiss!1248)))))

(declare-fun res!80382 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!168836 (= res!80382 (inRange!0 (index!4257 lt!84628) (mask!8268 thiss!1248)))))

(assert (=> b!168836 (=> (not res!80382) (not e!111091))))

(assert (=> b!168836 e!111091))

(declare-fun b!168837 () Bool)

(declare-fun res!80381 () Bool)

(assert (=> b!168837 (=> (not res!80381) (not e!111084))))

(assert (=> b!168837 (= res!80381 (not (= key!828 (bvneg key!828))))))

(declare-fun e!111089 () Bool)

(declare-fun array_inv!2093 (array!6866) Bool)

(declare-fun array_inv!2094 (array!6868) Bool)

(assert (=> b!168838 (= e!111082 (and tp!14849 tp_is_empty!3885 (array_inv!2093 (_keys!5320 thiss!1248)) (array_inv!2094 (_values!3478 thiss!1248)) e!111089))))

(declare-fun b!168839 () Bool)

(declare-fun e!111083 () Bool)

(assert (=> b!168839 (= e!111083 (not e!111090))))

(declare-fun res!80385 () Bool)

(assert (=> b!168839 (=> res!80385 e!111090)))

(assert (=> b!168839 (= res!80385 (not (valid!904 lt!84622)))))

(declare-fun lt!84618 () ListLongMap!2151)

(assert (=> b!168839 (contains!1127 lt!84618 (select (arr!3268 (_keys!5320 thiss!1248)) (index!4257 lt!84628)))))

(declare-fun lt!84627 () Unit!5212)

(declare-fun lt!84625 () array!6868)

(declare-fun lemmaValidKeyInArrayIsInListMap!136 (array!6866 array!6868 (_ BitVec 32) (_ BitVec 32) V!4827 V!4827 (_ BitVec 32) Int) Unit!5212)

(assert (=> b!168839 (= lt!84627 (lemmaValidKeyInArrayIsInListMap!136 (_keys!5320 thiss!1248) lt!84625 (mask!8268 thiss!1248) (extraKeys!3236 thiss!1248) (zeroValue!3338 thiss!1248) (minValue!3338 thiss!1248) (index!4257 lt!84628) (defaultEntry!3495 thiss!1248)))))

(assert (=> b!168839 (= lt!84622 (LongMapFixedSize!2107 (defaultEntry!3495 thiss!1248) (mask!8268 thiss!1248) (extraKeys!3236 thiss!1248) (zeroValue!3338 thiss!1248) (minValue!3338 thiss!1248) (_size!1102 thiss!1248) (_keys!5320 thiss!1248) lt!84625 (_vacant!1102 thiss!1248)))))

(declare-fun lt!84623 () ListLongMap!2151)

(assert (=> b!168839 (= lt!84623 lt!84618)))

(declare-fun getCurrentListMap!744 (array!6866 array!6868 (_ BitVec 32) (_ BitVec 32) V!4827 V!4827 (_ BitVec 32) Int) ListLongMap!2151)

(assert (=> b!168839 (= lt!84618 (getCurrentListMap!744 (_keys!5320 thiss!1248) lt!84625 (mask!8268 thiss!1248) (extraKeys!3236 thiss!1248) (zeroValue!3338 thiss!1248) (minValue!3338 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3495 thiss!1248)))))

(declare-fun lt!84621 () ListLongMap!2151)

(declare-fun v!309 () V!4827)

(declare-fun +!233 (ListLongMap!2151 tuple2!3182) ListLongMap!2151)

(assert (=> b!168839 (= lt!84623 (+!233 lt!84621 (tuple2!3183 key!828 v!309)))))

(assert (=> b!168839 (= lt!84625 (array!6869 (store (arr!3269 (_values!3478 thiss!1248)) (index!4257 lt!84628) (ValueCellFull!1599 v!309)) (size!3557 (_values!3478 thiss!1248))))))

(declare-fun lt!84619 () Unit!5212)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!93 (array!6866 array!6868 (_ BitVec 32) (_ BitVec 32) V!4827 V!4827 (_ BitVec 32) (_ BitVec 64) V!4827 Int) Unit!5212)

(assert (=> b!168839 (= lt!84619 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!93 (_keys!5320 thiss!1248) (_values!3478 thiss!1248) (mask!8268 thiss!1248) (extraKeys!3236 thiss!1248) (zeroValue!3338 thiss!1248) (minValue!3338 thiss!1248) (index!4257 lt!84628) key!828 v!309 (defaultEntry!3495 thiss!1248)))))

(declare-fun lt!84629 () Unit!5212)

(assert (=> b!168839 (= lt!84629 e!111085)))

(declare-fun c!30387 () Bool)

(assert (=> b!168839 (= c!30387 (contains!1127 lt!84621 key!828))))

(assert (=> b!168839 (= lt!84621 (getCurrentListMap!744 (_keys!5320 thiss!1248) (_values!3478 thiss!1248) (mask!8268 thiss!1248) (extraKeys!3236 thiss!1248) (zeroValue!3338 thiss!1248) (minValue!3338 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3495 thiss!1248)))))

(declare-fun b!168840 () Bool)

(assert (=> b!168840 (= e!111089 (and e!111087 mapRes!6546))))

(declare-fun condMapEmpty!6546 () Bool)

(declare-fun mapDefault!6546 () ValueCell!1599)

(assert (=> b!168840 (= condMapEmpty!6546 (= (arr!3269 (_values!3478 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1599)) mapDefault!6546)))))

(declare-fun b!168841 () Bool)

(assert (=> b!168841 (= e!111084 e!111083)))

(declare-fun res!80384 () Bool)

(assert (=> b!168841 (=> (not res!80384) (not e!111083))))

(get-info :version)

(assert (=> b!168841 (= res!80384 (and (not ((_ is Undefined!522) lt!84628)) (not ((_ is MissingVacant!522) lt!84628)) (not ((_ is MissingZero!522) lt!84628)) ((_ is Found!522) lt!84628)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6866 (_ BitVec 32)) SeekEntryResult!522)

(assert (=> b!168841 (= lt!84628 (seekEntryOrOpen!0 key!828 (_keys!5320 thiss!1248) (mask!8268 thiss!1248)))))

(assert (= (and start!16790 res!80383) b!168837))

(assert (= (and b!168837 res!80381) b!168841))

(assert (= (and b!168841 res!80384) b!168839))

(assert (= (and b!168839 c!30387) b!168836))

(assert (= (and b!168839 (not c!30387)) b!168831))

(assert (= (and b!168836 res!80382) b!168832))

(assert (= (and b!168839 (not res!80385)) b!168835))

(assert (= (and b!168840 condMapEmpty!6546) mapIsEmpty!6546))

(assert (= (and b!168840 (not condMapEmpty!6546)) mapNonEmpty!6546))

(assert (= (and mapNonEmpty!6546 ((_ is ValueCellFull!1599) mapValue!6546)) b!168834))

(assert (= (and b!168840 ((_ is ValueCellFull!1599) mapDefault!6546)) b!168833))

(assert (= b!168838 b!168840))

(assert (= start!16790 b!168838))

(declare-fun m!197961 () Bool)

(assert (=> b!168836 m!197961))

(declare-fun m!197963 () Bool)

(assert (=> b!168836 m!197963))

(declare-fun m!197965 () Bool)

(assert (=> b!168841 m!197965))

(declare-fun m!197967 () Bool)

(assert (=> b!168835 m!197967))

(assert (=> b!168835 m!197967))

(declare-fun m!197969 () Bool)

(assert (=> b!168835 m!197969))

(declare-fun m!197971 () Bool)

(assert (=> b!168839 m!197971))

(declare-fun m!197973 () Bool)

(assert (=> b!168839 m!197973))

(declare-fun m!197975 () Bool)

(assert (=> b!168839 m!197975))

(declare-fun m!197977 () Bool)

(assert (=> b!168839 m!197977))

(declare-fun m!197979 () Bool)

(assert (=> b!168839 m!197979))

(declare-fun m!197981 () Bool)

(assert (=> b!168839 m!197981))

(declare-fun m!197983 () Bool)

(assert (=> b!168839 m!197983))

(declare-fun m!197985 () Bool)

(assert (=> b!168839 m!197985))

(declare-fun m!197987 () Bool)

(assert (=> b!168839 m!197987))

(assert (=> b!168839 m!197985))

(declare-fun m!197989 () Bool)

(assert (=> b!168839 m!197989))

(assert (=> b!168832 m!197985))

(declare-fun m!197991 () Bool)

(assert (=> b!168838 m!197991))

(declare-fun m!197993 () Bool)

(assert (=> b!168838 m!197993))

(declare-fun m!197995 () Bool)

(assert (=> start!16790 m!197995))

(declare-fun m!197997 () Bool)

(assert (=> mapNonEmpty!6546 m!197997))

(declare-fun m!197999 () Bool)

(assert (=> b!168831 m!197999))

(check-sat tp_is_empty!3885 (not b!168836) b_and!10515 (not b!168838) (not b_next!4083) (not b!168835) (not b!168839) (not b!168841) (not b!168831) (not start!16790) (not mapNonEmpty!6546))
(check-sat b_and!10515 (not b_next!4083))
