; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16796 () Bool)

(assert start!16796)

(declare-fun b!168929 () Bool)

(declare-fun b_free!4089 () Bool)

(declare-fun b_next!4089 () Bool)

(assert (=> b!168929 (= b_free!4089 (not b_next!4089))))

(declare-fun tp!14868 () Bool)

(declare-fun b_and!10521 () Bool)

(assert (=> b!168929 (= tp!14868 b_and!10521)))

(declare-fun b!168925 () Bool)

(declare-fun res!80422 () Bool)

(declare-fun e!111175 () Bool)

(assert (=> b!168925 (=> (not res!80422) (not e!111175))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!168925 (= res!80422 (not (= key!828 (bvneg key!828))))))

(declare-fun b!168926 () Bool)

(declare-fun e!111168 () Bool)

(assert (=> b!168926 (= e!111168 (not true))))

(declare-fun lt!84721 () Bool)

(declare-datatypes ((V!4835 0))(
  ( (V!4836 (val!1990 Int)) )
))
(declare-datatypes ((ValueCell!1602 0))(
  ( (ValueCellFull!1602 (v!3851 V!4835)) (EmptyCell!1602) )
))
(declare-datatypes ((array!6878 0))(
  ( (array!6879 (arr!3274 (Array (_ BitVec 32) (_ BitVec 64))) (size!3562 (_ BitVec 32))) )
))
(declare-datatypes ((array!6880 0))(
  ( (array!6881 (arr!3275 (Array (_ BitVec 32) ValueCell!1602)) (size!3563 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2112 0))(
  ( (LongMapFixedSize!2113 (defaultEntry!3498 Int) (mask!8273 (_ BitVec 32)) (extraKeys!3239 (_ BitVec 32)) (zeroValue!3341 V!4835) (minValue!3341 V!4835) (_size!1105 (_ BitVec 32)) (_keys!5323 array!6878) (_values!3481 array!6880) (_vacant!1105 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2112)

(declare-fun lt!84726 () array!6880)

(declare-fun valid!907 (LongMapFixedSize!2112) Bool)

(assert (=> b!168926 (= lt!84721 (valid!907 (LongMapFixedSize!2113 (defaultEntry!3498 thiss!1248) (mask!8273 thiss!1248) (extraKeys!3239 thiss!1248) (zeroValue!3341 thiss!1248) (minValue!3341 thiss!1248) (_size!1105 thiss!1248) (_keys!5323 thiss!1248) lt!84726 (_vacant!1105 thiss!1248))))))

(declare-datatypes ((tuple2!3186 0))(
  ( (tuple2!3187 (_1!1603 (_ BitVec 64)) (_2!1603 V!4835)) )
))
(declare-datatypes ((List!2196 0))(
  ( (Nil!2193) (Cons!2192 (h!2809 tuple2!3186) (t!7006 List!2196)) )
))
(declare-datatypes ((ListLongMap!2155 0))(
  ( (ListLongMap!2156 (toList!1093 List!2196)) )
))
(declare-fun lt!84722 () ListLongMap!2155)

(declare-datatypes ((SeekEntryResult!525 0))(
  ( (MissingZero!525 (index!4268 (_ BitVec 32))) (Found!525 (index!4269 (_ BitVec 32))) (Intermediate!525 (undefined!1337 Bool) (index!4270 (_ BitVec 32)) (x!18681 (_ BitVec 32))) (Undefined!525) (MissingVacant!525 (index!4271 (_ BitVec 32))) )
))
(declare-fun lt!84723 () SeekEntryResult!525)

(declare-fun contains!1129 (ListLongMap!2155 (_ BitVec 64)) Bool)

(assert (=> b!168926 (contains!1129 lt!84722 (select (arr!3274 (_keys!5323 thiss!1248)) (index!4269 lt!84723)))))

(declare-datatypes ((Unit!5221 0))(
  ( (Unit!5222) )
))
(declare-fun lt!84729 () Unit!5221)

(declare-fun lemmaValidKeyInArrayIsInListMap!138 (array!6878 array!6880 (_ BitVec 32) (_ BitVec 32) V!4835 V!4835 (_ BitVec 32) Int) Unit!5221)

(assert (=> b!168926 (= lt!84729 (lemmaValidKeyInArrayIsInListMap!138 (_keys!5323 thiss!1248) lt!84726 (mask!8273 thiss!1248) (extraKeys!3239 thiss!1248) (zeroValue!3341 thiss!1248) (minValue!3341 thiss!1248) (index!4269 lt!84723) (defaultEntry!3498 thiss!1248)))))

(declare-fun lt!84727 () ListLongMap!2155)

(assert (=> b!168926 (= lt!84727 lt!84722)))

(declare-fun getCurrentListMap!746 (array!6878 array!6880 (_ BitVec 32) (_ BitVec 32) V!4835 V!4835 (_ BitVec 32) Int) ListLongMap!2155)

(assert (=> b!168926 (= lt!84722 (getCurrentListMap!746 (_keys!5323 thiss!1248) lt!84726 (mask!8273 thiss!1248) (extraKeys!3239 thiss!1248) (zeroValue!3341 thiss!1248) (minValue!3341 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3498 thiss!1248)))))

(declare-fun lt!84725 () ListLongMap!2155)

(declare-fun v!309 () V!4835)

(declare-fun +!235 (ListLongMap!2155 tuple2!3186) ListLongMap!2155)

(assert (=> b!168926 (= lt!84727 (+!235 lt!84725 (tuple2!3187 key!828 v!309)))))

(assert (=> b!168926 (= lt!84726 (array!6881 (store (arr!3275 (_values!3481 thiss!1248)) (index!4269 lt!84723) (ValueCellFull!1602 v!309)) (size!3563 (_values!3481 thiss!1248))))))

(declare-fun lt!84730 () Unit!5221)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!95 (array!6878 array!6880 (_ BitVec 32) (_ BitVec 32) V!4835 V!4835 (_ BitVec 32) (_ BitVec 64) V!4835 Int) Unit!5221)

(assert (=> b!168926 (= lt!84730 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!95 (_keys!5323 thiss!1248) (_values!3481 thiss!1248) (mask!8273 thiss!1248) (extraKeys!3239 thiss!1248) (zeroValue!3341 thiss!1248) (minValue!3341 thiss!1248) (index!4269 lt!84723) key!828 v!309 (defaultEntry!3498 thiss!1248)))))

(declare-fun lt!84728 () Unit!5221)

(declare-fun e!111174 () Unit!5221)

(assert (=> b!168926 (= lt!84728 e!111174)))

(declare-fun c!30396 () Bool)

(assert (=> b!168926 (= c!30396 (contains!1129 lt!84725 key!828))))

(assert (=> b!168926 (= lt!84725 (getCurrentListMap!746 (_keys!5323 thiss!1248) (_values!3481 thiss!1248) (mask!8273 thiss!1248) (extraKeys!3239 thiss!1248) (zeroValue!3341 thiss!1248) (minValue!3341 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3498 thiss!1248)))))

(declare-fun b!168927 () Bool)

(declare-fun e!111172 () Bool)

(declare-fun tp_is_empty!3891 () Bool)

(assert (=> b!168927 (= e!111172 tp_is_empty!3891)))

(declare-fun b!168928 () Bool)

(declare-fun Unit!5223 () Unit!5221)

(assert (=> b!168928 (= e!111174 Unit!5223)))

(declare-fun lt!84731 () Unit!5221)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!133 (array!6878 array!6880 (_ BitVec 32) (_ BitVec 32) V!4835 V!4835 (_ BitVec 64) Int) Unit!5221)

(assert (=> b!168928 (= lt!84731 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!133 (_keys!5323 thiss!1248) (_values!3481 thiss!1248) (mask!8273 thiss!1248) (extraKeys!3239 thiss!1248) (zeroValue!3341 thiss!1248) (minValue!3341 thiss!1248) key!828 (defaultEntry!3498 thiss!1248)))))

(assert (=> b!168928 false))

(declare-fun e!111169 () Bool)

(declare-fun e!111167 () Bool)

(declare-fun array_inv!2097 (array!6878) Bool)

(declare-fun array_inv!2098 (array!6880) Bool)

(assert (=> b!168929 (= e!111167 (and tp!14868 tp_is_empty!3891 (array_inv!2097 (_keys!5323 thiss!1248)) (array_inv!2098 (_values!3481 thiss!1248)) e!111169))))

(declare-fun b!168930 () Bool)

(declare-fun e!111173 () Bool)

(assert (=> b!168930 (= e!111173 tp_is_empty!3891)))

(declare-fun b!168932 () Bool)

(declare-fun mapRes!6555 () Bool)

(assert (=> b!168932 (= e!111169 (and e!111172 mapRes!6555))))

(declare-fun condMapEmpty!6555 () Bool)

(declare-fun mapDefault!6555 () ValueCell!1602)

(assert (=> b!168932 (= condMapEmpty!6555 (= (arr!3275 (_values!3481 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1602)) mapDefault!6555)))))

(declare-fun b!168933 () Bool)

(declare-fun e!111170 () Bool)

(assert (=> b!168933 (= e!111170 (= (select (arr!3274 (_keys!5323 thiss!1248)) (index!4269 lt!84723)) key!828))))

(declare-fun b!168934 () Bool)

(assert (=> b!168934 (= e!111175 e!111168)))

(declare-fun res!80421 () Bool)

(assert (=> b!168934 (=> (not res!80421) (not e!111168))))

(get-info :version)

(assert (=> b!168934 (= res!80421 (and (not ((_ is Undefined!525) lt!84723)) (not ((_ is MissingVacant!525) lt!84723)) (not ((_ is MissingZero!525) lt!84723)) ((_ is Found!525) lt!84723)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6878 (_ BitVec 32)) SeekEntryResult!525)

(assert (=> b!168934 (= lt!84723 (seekEntryOrOpen!0 key!828 (_keys!5323 thiss!1248) (mask!8273 thiss!1248)))))

(declare-fun res!80424 () Bool)

(assert (=> start!16796 (=> (not res!80424) (not e!111175))))

(assert (=> start!16796 (= res!80424 (valid!907 thiss!1248))))

(assert (=> start!16796 e!111175))

(assert (=> start!16796 e!111167))

(assert (=> start!16796 true))

(assert (=> start!16796 tp_is_empty!3891))

(declare-fun b!168931 () Bool)

(declare-fun lt!84724 () Unit!5221)

(assert (=> b!168931 (= e!111174 lt!84724)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!134 (array!6878 array!6880 (_ BitVec 32) (_ BitVec 32) V!4835 V!4835 (_ BitVec 64) Int) Unit!5221)

(assert (=> b!168931 (= lt!84724 (lemmaInListMapThenSeekEntryOrOpenFindsIt!134 (_keys!5323 thiss!1248) (_values!3481 thiss!1248) (mask!8273 thiss!1248) (extraKeys!3239 thiss!1248) (zeroValue!3341 thiss!1248) (minValue!3341 thiss!1248) key!828 (defaultEntry!3498 thiss!1248)))))

(declare-fun res!80423 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!168931 (= res!80423 (inRange!0 (index!4269 lt!84723) (mask!8273 thiss!1248)))))

(assert (=> b!168931 (=> (not res!80423) (not e!111170))))

(assert (=> b!168931 e!111170))

(declare-fun mapIsEmpty!6555 () Bool)

(assert (=> mapIsEmpty!6555 mapRes!6555))

(declare-fun mapNonEmpty!6555 () Bool)

(declare-fun tp!14867 () Bool)

(assert (=> mapNonEmpty!6555 (= mapRes!6555 (and tp!14867 e!111173))))

(declare-fun mapKey!6555 () (_ BitVec 32))

(declare-fun mapValue!6555 () ValueCell!1602)

(declare-fun mapRest!6555 () (Array (_ BitVec 32) ValueCell!1602))

(assert (=> mapNonEmpty!6555 (= (arr!3275 (_values!3481 thiss!1248)) (store mapRest!6555 mapKey!6555 mapValue!6555))))

(assert (= (and start!16796 res!80424) b!168925))

(assert (= (and b!168925 res!80422) b!168934))

(assert (= (and b!168934 res!80421) b!168926))

(assert (= (and b!168926 c!30396) b!168931))

(assert (= (and b!168926 (not c!30396)) b!168928))

(assert (= (and b!168931 res!80423) b!168933))

(assert (= (and b!168932 condMapEmpty!6555) mapIsEmpty!6555))

(assert (= (and b!168932 (not condMapEmpty!6555)) mapNonEmpty!6555))

(assert (= (and mapNonEmpty!6555 ((_ is ValueCellFull!1602) mapValue!6555)) b!168930))

(assert (= (and b!168932 ((_ is ValueCellFull!1602) mapDefault!6555)) b!168927))

(assert (= b!168929 b!168932))

(assert (= start!16796 b!168929))

(declare-fun m!198077 () Bool)

(assert (=> b!168926 m!198077))

(declare-fun m!198079 () Bool)

(assert (=> b!168926 m!198079))

(declare-fun m!198081 () Bool)

(assert (=> b!168926 m!198081))

(declare-fun m!198083 () Bool)

(assert (=> b!168926 m!198083))

(declare-fun m!198085 () Bool)

(assert (=> b!168926 m!198085))

(declare-fun m!198087 () Bool)

(assert (=> b!168926 m!198087))

(assert (=> b!168926 m!198083))

(declare-fun m!198089 () Bool)

(assert (=> b!168926 m!198089))

(declare-fun m!198091 () Bool)

(assert (=> b!168926 m!198091))

(declare-fun m!198093 () Bool)

(assert (=> b!168926 m!198093))

(declare-fun m!198095 () Bool)

(assert (=> b!168926 m!198095))

(declare-fun m!198097 () Bool)

(assert (=> b!168931 m!198097))

(declare-fun m!198099 () Bool)

(assert (=> b!168931 m!198099))

(declare-fun m!198101 () Bool)

(assert (=> b!168928 m!198101))

(declare-fun m!198103 () Bool)

(assert (=> start!16796 m!198103))

(declare-fun m!198105 () Bool)

(assert (=> b!168929 m!198105))

(declare-fun m!198107 () Bool)

(assert (=> b!168929 m!198107))

(declare-fun m!198109 () Bool)

(assert (=> b!168934 m!198109))

(assert (=> b!168933 m!198083))

(declare-fun m!198111 () Bool)

(assert (=> mapNonEmpty!6555 m!198111))

(check-sat (not b!168929) (not b_next!4089) (not start!16796) (not mapNonEmpty!6555) (not b!168931) (not b!168934) (not b!168928) b_and!10521 tp_is_empty!3891 (not b!168926))
(check-sat b_and!10521 (not b_next!4089))
