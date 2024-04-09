; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16802 () Bool)

(assert start!16802)

(declare-fun b!169024 () Bool)

(declare-fun b_free!4095 () Bool)

(declare-fun b_next!4095 () Bool)

(assert (=> b!169024 (= b_free!4095 (not b_next!4095))))

(declare-fun tp!14885 () Bool)

(declare-fun b_and!10527 () Bool)

(assert (=> b!169024 (= tp!14885 b_and!10527)))

(declare-fun mapIsEmpty!6564 () Bool)

(declare-fun mapRes!6564 () Bool)

(assert (=> mapIsEmpty!6564 mapRes!6564))

(declare-fun b!169015 () Bool)

(declare-datatypes ((Unit!5227 0))(
  ( (Unit!5228) )
))
(declare-fun e!111249 () Unit!5227)

(declare-fun Unit!5229 () Unit!5227)

(assert (=> b!169015 (= e!111249 Unit!5229)))

(declare-fun lt!84825 () Unit!5227)

(declare-datatypes ((V!4843 0))(
  ( (V!4844 (val!1993 Int)) )
))
(declare-datatypes ((ValueCell!1605 0))(
  ( (ValueCellFull!1605 (v!3854 V!4843)) (EmptyCell!1605) )
))
(declare-datatypes ((array!6890 0))(
  ( (array!6891 (arr!3280 (Array (_ BitVec 32) (_ BitVec 64))) (size!3568 (_ BitVec 32))) )
))
(declare-datatypes ((array!6892 0))(
  ( (array!6893 (arr!3281 (Array (_ BitVec 32) ValueCell!1605)) (size!3569 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2118 0))(
  ( (LongMapFixedSize!2119 (defaultEntry!3501 Int) (mask!8278 (_ BitVec 32)) (extraKeys!3242 (_ BitVec 32)) (zeroValue!3344 V!4843) (minValue!3344 V!4843) (_size!1108 (_ BitVec 32)) (_keys!5326 array!6890) (_values!3484 array!6892) (_vacant!1108 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2118)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!135 (array!6890 array!6892 (_ BitVec 32) (_ BitVec 32) V!4843 V!4843 (_ BitVec 64) Int) Unit!5227)

(assert (=> b!169015 (= lt!84825 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!135 (_keys!5326 thiss!1248) (_values!3484 thiss!1248) (mask!8278 thiss!1248) (extraKeys!3242 thiss!1248) (zeroValue!3344 thiss!1248) (minValue!3344 thiss!1248) key!828 (defaultEntry!3501 thiss!1248)))))

(assert (=> b!169015 false))

(declare-fun mapNonEmpty!6564 () Bool)

(declare-fun tp!14886 () Bool)

(declare-fun e!111248 () Bool)

(assert (=> mapNonEmpty!6564 (= mapRes!6564 (and tp!14886 e!111248))))

(declare-fun mapRest!6564 () (Array (_ BitVec 32) ValueCell!1605))

(declare-fun mapValue!6564 () ValueCell!1605)

(declare-fun mapKey!6564 () (_ BitVec 32))

(assert (=> mapNonEmpty!6564 (= (arr!3281 (_values!3484 thiss!1248)) (store mapRest!6564 mapKey!6564 mapValue!6564))))

(declare-fun b!169016 () Bool)

(declare-fun tp_is_empty!3897 () Bool)

(assert (=> b!169016 (= e!111248 tp_is_empty!3897)))

(declare-fun b!169017 () Bool)

(declare-fun e!111256 () Bool)

(declare-fun e!111252 () Bool)

(assert (=> b!169017 (= e!111256 (and e!111252 mapRes!6564))))

(declare-fun condMapEmpty!6564 () Bool)

(declare-fun mapDefault!6564 () ValueCell!1605)

(assert (=> b!169017 (= condMapEmpty!6564 (= (arr!3281 (_values!3484 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1605)) mapDefault!6564)))))

(declare-fun b!169019 () Bool)

(declare-fun res!80459 () Bool)

(declare-fun e!111254 () Bool)

(assert (=> b!169019 (=> (not res!80459) (not e!111254))))

(assert (=> b!169019 (= res!80459 (not (= key!828 (bvneg key!828))))))

(declare-fun e!111250 () Bool)

(declare-fun b!169020 () Bool)

(declare-datatypes ((SeekEntryResult!527 0))(
  ( (MissingZero!527 (index!4276 (_ BitVec 32))) (Found!527 (index!4277 (_ BitVec 32))) (Intermediate!527 (undefined!1339 Bool) (index!4278 (_ BitVec 32)) (x!18691 (_ BitVec 32))) (Undefined!527) (MissingVacant!527 (index!4279 (_ BitVec 32))) )
))
(declare-fun lt!84829 () SeekEntryResult!527)

(assert (=> b!169020 (= e!111250 (= (select (arr!3280 (_keys!5326 thiss!1248)) (index!4277 lt!84829)) key!828))))

(declare-fun b!169021 () Bool)

(declare-fun lt!84823 () Unit!5227)

(assert (=> b!169021 (= e!111249 lt!84823)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!135 (array!6890 array!6892 (_ BitVec 32) (_ BitVec 32) V!4843 V!4843 (_ BitVec 64) Int) Unit!5227)

(assert (=> b!169021 (= lt!84823 (lemmaInListMapThenSeekEntryOrOpenFindsIt!135 (_keys!5326 thiss!1248) (_values!3484 thiss!1248) (mask!8278 thiss!1248) (extraKeys!3242 thiss!1248) (zeroValue!3344 thiss!1248) (minValue!3344 thiss!1248) key!828 (defaultEntry!3501 thiss!1248)))))

(declare-fun res!80458 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!169021 (= res!80458 (inRange!0 (index!4277 lt!84829) (mask!8278 thiss!1248)))))

(assert (=> b!169021 (=> (not res!80458) (not e!111250))))

(assert (=> b!169021 e!111250))

(declare-fun b!169022 () Bool)

(declare-fun e!111251 () Bool)

(assert (=> b!169022 (= e!111254 e!111251)))

(declare-fun res!80460 () Bool)

(assert (=> b!169022 (=> (not res!80460) (not e!111251))))

(get-info :version)

(assert (=> b!169022 (= res!80460 (and (not ((_ is Undefined!527) lt!84829)) (not ((_ is MissingVacant!527) lt!84829)) (not ((_ is MissingZero!527) lt!84829)) ((_ is Found!527) lt!84829)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6890 (_ BitVec 32)) SeekEntryResult!527)

(assert (=> b!169022 (= lt!84829 (seekEntryOrOpen!0 key!828 (_keys!5326 thiss!1248) (mask!8278 thiss!1248)))))

(declare-fun b!169023 () Bool)

(assert (=> b!169023 (= e!111252 tp_is_empty!3897)))

(declare-fun e!111255 () Bool)

(declare-fun array_inv!2099 (array!6890) Bool)

(declare-fun array_inv!2100 (array!6892) Bool)

(assert (=> b!169024 (= e!111255 (and tp!14885 tp_is_empty!3897 (array_inv!2099 (_keys!5326 thiss!1248)) (array_inv!2100 (_values!3484 thiss!1248)) e!111256))))

(declare-fun b!169018 () Bool)

(assert (=> b!169018 (= e!111251 (not true))))

(declare-fun lt!84826 () Bool)

(declare-fun lt!84828 () array!6892)

(declare-fun valid!909 (LongMapFixedSize!2118) Bool)

(assert (=> b!169018 (= lt!84826 (valid!909 (LongMapFixedSize!2119 (defaultEntry!3501 thiss!1248) (mask!8278 thiss!1248) (extraKeys!3242 thiss!1248) (zeroValue!3344 thiss!1248) (minValue!3344 thiss!1248) (_size!1108 thiss!1248) (_keys!5326 thiss!1248) lt!84828 (_vacant!1108 thiss!1248))))))

(declare-datatypes ((tuple2!3188 0))(
  ( (tuple2!3189 (_1!1604 (_ BitVec 64)) (_2!1604 V!4843)) )
))
(declare-datatypes ((List!2197 0))(
  ( (Nil!2194) (Cons!2193 (h!2810 tuple2!3188) (t!7007 List!2197)) )
))
(declare-datatypes ((ListLongMap!2157 0))(
  ( (ListLongMap!2158 (toList!1094 List!2197)) )
))
(declare-fun lt!84821 () ListLongMap!2157)

(declare-fun contains!1130 (ListLongMap!2157 (_ BitVec 64)) Bool)

(assert (=> b!169018 (contains!1130 lt!84821 (select (arr!3280 (_keys!5326 thiss!1248)) (index!4277 lt!84829)))))

(declare-fun lt!84820 () Unit!5227)

(declare-fun lemmaValidKeyInArrayIsInListMap!139 (array!6890 array!6892 (_ BitVec 32) (_ BitVec 32) V!4843 V!4843 (_ BitVec 32) Int) Unit!5227)

(assert (=> b!169018 (= lt!84820 (lemmaValidKeyInArrayIsInListMap!139 (_keys!5326 thiss!1248) lt!84828 (mask!8278 thiss!1248) (extraKeys!3242 thiss!1248) (zeroValue!3344 thiss!1248) (minValue!3344 thiss!1248) (index!4277 lt!84829) (defaultEntry!3501 thiss!1248)))))

(declare-fun lt!84824 () ListLongMap!2157)

(assert (=> b!169018 (= lt!84824 lt!84821)))

(declare-fun getCurrentListMap!747 (array!6890 array!6892 (_ BitVec 32) (_ BitVec 32) V!4843 V!4843 (_ BitVec 32) Int) ListLongMap!2157)

(assert (=> b!169018 (= lt!84821 (getCurrentListMap!747 (_keys!5326 thiss!1248) lt!84828 (mask!8278 thiss!1248) (extraKeys!3242 thiss!1248) (zeroValue!3344 thiss!1248) (minValue!3344 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3501 thiss!1248)))))

(declare-fun lt!84822 () ListLongMap!2157)

(declare-fun v!309 () V!4843)

(declare-fun +!236 (ListLongMap!2157 tuple2!3188) ListLongMap!2157)

(assert (=> b!169018 (= lt!84824 (+!236 lt!84822 (tuple2!3189 key!828 v!309)))))

(assert (=> b!169018 (= lt!84828 (array!6893 (store (arr!3281 (_values!3484 thiss!1248)) (index!4277 lt!84829) (ValueCellFull!1605 v!309)) (size!3569 (_values!3484 thiss!1248))))))

(declare-fun lt!84827 () Unit!5227)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!96 (array!6890 array!6892 (_ BitVec 32) (_ BitVec 32) V!4843 V!4843 (_ BitVec 32) (_ BitVec 64) V!4843 Int) Unit!5227)

(assert (=> b!169018 (= lt!84827 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!96 (_keys!5326 thiss!1248) (_values!3484 thiss!1248) (mask!8278 thiss!1248) (extraKeys!3242 thiss!1248) (zeroValue!3344 thiss!1248) (minValue!3344 thiss!1248) (index!4277 lt!84829) key!828 v!309 (defaultEntry!3501 thiss!1248)))))

(declare-fun lt!84830 () Unit!5227)

(assert (=> b!169018 (= lt!84830 e!111249)))

(declare-fun c!30405 () Bool)

(assert (=> b!169018 (= c!30405 (contains!1130 lt!84822 key!828))))

(assert (=> b!169018 (= lt!84822 (getCurrentListMap!747 (_keys!5326 thiss!1248) (_values!3484 thiss!1248) (mask!8278 thiss!1248) (extraKeys!3242 thiss!1248) (zeroValue!3344 thiss!1248) (minValue!3344 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3501 thiss!1248)))))

(declare-fun res!80457 () Bool)

(assert (=> start!16802 (=> (not res!80457) (not e!111254))))

(assert (=> start!16802 (= res!80457 (valid!909 thiss!1248))))

(assert (=> start!16802 e!111254))

(assert (=> start!16802 e!111255))

(assert (=> start!16802 true))

(assert (=> start!16802 tp_is_empty!3897))

(assert (= (and start!16802 res!80457) b!169019))

(assert (= (and b!169019 res!80459) b!169022))

(assert (= (and b!169022 res!80460) b!169018))

(assert (= (and b!169018 c!30405) b!169021))

(assert (= (and b!169018 (not c!30405)) b!169015))

(assert (= (and b!169021 res!80458) b!169020))

(assert (= (and b!169017 condMapEmpty!6564) mapIsEmpty!6564))

(assert (= (and b!169017 (not condMapEmpty!6564)) mapNonEmpty!6564))

(assert (= (and mapNonEmpty!6564 ((_ is ValueCellFull!1605) mapValue!6564)) b!169016))

(assert (= (and b!169017 ((_ is ValueCellFull!1605) mapDefault!6564)) b!169023))

(assert (= b!169024 b!169017))

(assert (= start!16802 b!169024))

(declare-fun m!198185 () Bool)

(assert (=> b!169022 m!198185))

(declare-fun m!198187 () Bool)

(assert (=> b!169018 m!198187))

(declare-fun m!198189 () Bool)

(assert (=> b!169018 m!198189))

(declare-fun m!198191 () Bool)

(assert (=> b!169018 m!198191))

(declare-fun m!198193 () Bool)

(assert (=> b!169018 m!198193))

(declare-fun m!198195 () Bool)

(assert (=> b!169018 m!198195))

(declare-fun m!198197 () Bool)

(assert (=> b!169018 m!198197))

(declare-fun m!198199 () Bool)

(assert (=> b!169018 m!198199))

(declare-fun m!198201 () Bool)

(assert (=> b!169018 m!198201))

(assert (=> b!169018 m!198187))

(declare-fun m!198203 () Bool)

(assert (=> b!169018 m!198203))

(declare-fun m!198205 () Bool)

(assert (=> b!169018 m!198205))

(assert (=> b!169020 m!198187))

(declare-fun m!198207 () Bool)

(assert (=> mapNonEmpty!6564 m!198207))

(declare-fun m!198209 () Bool)

(assert (=> b!169021 m!198209))

(declare-fun m!198211 () Bool)

(assert (=> b!169021 m!198211))

(declare-fun m!198213 () Bool)

(assert (=> b!169015 m!198213))

(declare-fun m!198215 () Bool)

(assert (=> b!169024 m!198215))

(declare-fun m!198217 () Bool)

(assert (=> b!169024 m!198217))

(declare-fun m!198219 () Bool)

(assert (=> start!16802 m!198219))

(check-sat (not b_next!4095) tp_is_empty!3897 (not mapNonEmpty!6564) (not b!169015) (not b!169018) (not b!169022) (not b!169021) b_and!10527 (not start!16802) (not b!169024))
(check-sat b_and!10527 (not b_next!4095))
