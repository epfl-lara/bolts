; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!25148 () Bool)

(assert start!25148)

(declare-fun b!261991 () Bool)

(declare-fun b_free!6783 () Bool)

(declare-fun b_next!6783 () Bool)

(assert (=> b!261991 (= b_free!6783 (not b_next!6783))))

(declare-fun tp!23680 () Bool)

(declare-fun b_and!13935 () Bool)

(assert (=> b!261991 (= tp!23680 b_and!13935)))

(declare-fun b!261985 () Bool)

(declare-datatypes ((Unit!8157 0))(
  ( (Unit!8158) )
))
(declare-fun e!169800 () Unit!8157)

(declare-fun Unit!8159 () Unit!8157)

(assert (=> b!261985 (= e!169800 Unit!8159)))

(declare-fun lt!132405 () Unit!8157)

(declare-datatypes ((V!8507 0))(
  ( (V!8508 (val!3367 Int)) )
))
(declare-datatypes ((ValueCell!2979 0))(
  ( (ValueCellFull!2979 (v!5488 V!8507)) (EmptyCell!2979) )
))
(declare-datatypes ((array!12646 0))(
  ( (array!12647 (arr!5985 (Array (_ BitVec 32) ValueCell!2979)) (size!6336 (_ BitVec 32))) )
))
(declare-datatypes ((array!12648 0))(
  ( (array!12649 (arr!5986 (Array (_ BitVec 32) (_ BitVec 64))) (size!6337 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3858 0))(
  ( (LongMapFixedSize!3859 (defaultEntry!4827 Int) (mask!11179 (_ BitVec 32)) (extraKeys!4564 (_ BitVec 32)) (zeroValue!4668 V!8507) (minValue!4668 V!8507) (_size!1978 (_ BitVec 32)) (_keys!7015 array!12648) (_values!4810 array!12646) (_vacant!1978 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3858)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!452 (array!12648 array!12646 (_ BitVec 32) (_ BitVec 32) V!8507 V!8507 (_ BitVec 64) Int) Unit!8157)

(assert (=> b!261985 (= lt!132405 (lemmaInListMapThenSeekEntryOrOpenFindsIt!452 (_keys!7015 thiss!1504) (_values!4810 thiss!1504) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) key!932 (defaultEntry!4827 thiss!1504)))))

(assert (=> b!261985 false))

(declare-fun b!261986 () Bool)

(declare-fun res!127988 () Bool)

(declare-datatypes ((SeekEntryResult!1204 0))(
  ( (MissingZero!1204 (index!6986 (_ BitVec 32))) (Found!1204 (index!6987 (_ BitVec 32))) (Intermediate!1204 (undefined!2016 Bool) (index!6988 (_ BitVec 32)) (x!25210 (_ BitVec 32))) (Undefined!1204) (MissingVacant!1204 (index!6989 (_ BitVec 32))) )
))
(declare-fun lt!132407 () SeekEntryResult!1204)

(assert (=> b!261986 (= res!127988 (= (select (arr!5986 (_keys!7015 thiss!1504)) (index!6989 lt!132407)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!169792 () Bool)

(assert (=> b!261986 (=> (not res!127988) (not e!169792))))

(declare-fun b!261987 () Bool)

(declare-fun e!169791 () Bool)

(get-info :version)

(assert (=> b!261987 (= e!169791 ((_ is Undefined!1204) lt!132407))))

(declare-fun bm!25016 () Bool)

(declare-fun call!25020 () Bool)

(declare-fun arrayContainsKey!0 (array!12648 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!25016 (= call!25020 (arrayContainsKey!0 (_keys!7015 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!261988 () Bool)

(declare-fun e!169789 () Bool)

(declare-fun e!169794 () Bool)

(assert (=> b!261988 (= e!169789 e!169794)))

(declare-fun res!127992 () Bool)

(assert (=> b!261988 (=> (not res!127992) (not e!169794))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!261988 (= res!127992 (or (= lt!132407 (MissingZero!1204 index!297)) (= lt!132407 (MissingVacant!1204 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12648 (_ BitVec 32)) SeekEntryResult!1204)

(assert (=> b!261988 (= lt!132407 (seekEntryOrOpen!0 key!932 (_keys!7015 thiss!1504) (mask!11179 thiss!1504)))))

(declare-fun b!261989 () Bool)

(declare-fun e!169801 () Bool)

(assert (=> b!261989 (= e!169801 (not call!25020))))

(declare-fun mapNonEmpty!11326 () Bool)

(declare-fun mapRes!11326 () Bool)

(declare-fun tp!23679 () Bool)

(declare-fun e!169798 () Bool)

(assert (=> mapNonEmpty!11326 (= mapRes!11326 (and tp!23679 e!169798))))

(declare-fun mapKey!11326 () (_ BitVec 32))

(declare-fun mapRest!11326 () (Array (_ BitVec 32) ValueCell!2979))

(declare-fun mapValue!11326 () ValueCell!2979)

(assert (=> mapNonEmpty!11326 (= (arr!5985 (_values!4810 thiss!1504)) (store mapRest!11326 mapKey!11326 mapValue!11326))))

(declare-fun tp_is_empty!6645 () Bool)

(declare-fun e!169797 () Bool)

(declare-fun e!169799 () Bool)

(declare-fun array_inv!3947 (array!12648) Bool)

(declare-fun array_inv!3948 (array!12646) Bool)

(assert (=> b!261991 (= e!169797 (and tp!23680 tp_is_empty!6645 (array_inv!3947 (_keys!7015 thiss!1504)) (array_inv!3948 (_values!4810 thiss!1504)) e!169799))))

(declare-fun call!25019 () Bool)

(declare-fun bm!25017 () Bool)

(declare-fun c!44616 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!25017 (= call!25019 (inRange!0 (ite c!44616 (index!6986 lt!132407) (index!6989 lt!132407)) (mask!11179 thiss!1504)))))

(declare-fun b!261992 () Bool)

(declare-fun e!169802 () Unit!8157)

(declare-fun Unit!8160 () Unit!8157)

(assert (=> b!261992 (= e!169802 Unit!8160)))

(declare-fun mapIsEmpty!11326 () Bool)

(assert (=> mapIsEmpty!11326 mapRes!11326))

(declare-fun b!261993 () Bool)

(assert (=> b!261993 (= e!169792 (not call!25020))))

(declare-fun b!261994 () Bool)

(declare-fun e!169795 () Bool)

(assert (=> b!261994 (= e!169795 (or (not (= (size!6336 (_values!4810 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!11179 thiss!1504)))) (not (= (size!6337 (_keys!7015 thiss!1504)) (size!6336 (_values!4810 thiss!1504)))) (bvslt (mask!11179 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4564 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4564 thiss!1504) #b00000000000000000000000000000011) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6337 (_keys!7015 thiss!1504))))))))

(declare-fun b!261995 () Bool)

(declare-fun e!169796 () Bool)

(assert (=> b!261995 (= e!169794 e!169796)))

(declare-fun res!127991 () Bool)

(assert (=> b!261995 (=> (not res!127991) (not e!169796))))

(assert (=> b!261995 (= res!127991 (inRange!0 index!297 (mask!11179 thiss!1504)))))

(declare-fun lt!132413 () Unit!8157)

(assert (=> b!261995 (= lt!132413 e!169800)))

(declare-fun c!44617 () Bool)

(declare-datatypes ((tuple2!4962 0))(
  ( (tuple2!4963 (_1!2491 (_ BitVec 64)) (_2!2491 V!8507)) )
))
(declare-datatypes ((List!3862 0))(
  ( (Nil!3859) (Cons!3858 (h!4524 tuple2!4962) (t!8943 List!3862)) )
))
(declare-datatypes ((ListLongMap!3889 0))(
  ( (ListLongMap!3890 (toList!1960 List!3862)) )
))
(declare-fun lt!132406 () ListLongMap!3889)

(declare-fun contains!1901 (ListLongMap!3889 (_ BitVec 64)) Bool)

(assert (=> b!261995 (= c!44617 (contains!1901 lt!132406 key!932))))

(declare-fun getCurrentListMap!1483 (array!12648 array!12646 (_ BitVec 32) (_ BitVec 32) V!8507 V!8507 (_ BitVec 32) Int) ListLongMap!3889)

(assert (=> b!261995 (= lt!132406 (getCurrentListMap!1483 (_keys!7015 thiss!1504) (_values!4810 thiss!1504) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4827 thiss!1504)))))

(declare-fun b!261996 () Bool)

(declare-fun res!127986 () Bool)

(assert (=> b!261996 (=> (not res!127986) (not e!169789))))

(assert (=> b!261996 (= res!127986 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!261997 () Bool)

(declare-fun e!169790 () Bool)

(assert (=> b!261997 (= e!169790 tp_is_empty!6645)))

(declare-fun b!261990 () Bool)

(declare-fun c!44615 () Bool)

(assert (=> b!261990 (= c!44615 ((_ is MissingVacant!1204) lt!132407))))

(declare-fun e!169793 () Bool)

(assert (=> b!261990 (= e!169793 e!169791)))

(declare-fun res!127990 () Bool)

(assert (=> start!25148 (=> (not res!127990) (not e!169789))))

(declare-fun valid!1496 (LongMapFixedSize!3858) Bool)

(assert (=> start!25148 (= res!127990 (valid!1496 thiss!1504))))

(assert (=> start!25148 e!169789))

(assert (=> start!25148 e!169797))

(assert (=> start!25148 true))

(assert (=> start!25148 tp_is_empty!6645))

(declare-fun b!261998 () Bool)

(assert (=> b!261998 (= e!169796 (not e!169795))))

(declare-fun res!127985 () Bool)

(assert (=> b!261998 (=> res!127985 e!169795)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!261998 (= res!127985 (not (validMask!0 (mask!11179 thiss!1504))))))

(declare-fun lt!132408 () array!12648)

(declare-fun arrayCountValidKeys!0 (array!12648 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!261998 (= (arrayCountValidKeys!0 lt!132408 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!132416 () Unit!8157)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12648 (_ BitVec 32)) Unit!8157)

(assert (=> b!261998 (= lt!132416 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!132408 index!297))))

(assert (=> b!261998 (arrayContainsKey!0 lt!132408 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!132417 () Unit!8157)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12648 (_ BitVec 64) (_ BitVec 32)) Unit!8157)

(assert (=> b!261998 (= lt!132417 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!132408 key!932 index!297))))

(declare-fun v!346 () V!8507)

(declare-fun +!701 (ListLongMap!3889 tuple2!4962) ListLongMap!3889)

(assert (=> b!261998 (= (+!701 lt!132406 (tuple2!4963 key!932 v!346)) (getCurrentListMap!1483 lt!132408 (array!12647 (store (arr!5985 (_values!4810 thiss!1504)) index!297 (ValueCellFull!2979 v!346)) (size!6336 (_values!4810 thiss!1504))) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4827 thiss!1504)))))

(declare-fun lt!132414 () Unit!8157)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!116 (array!12648 array!12646 (_ BitVec 32) (_ BitVec 32) V!8507 V!8507 (_ BitVec 32) (_ BitVec 64) V!8507 Int) Unit!8157)

(assert (=> b!261998 (= lt!132414 (lemmaAddValidKeyToArrayThenAddPairToListMap!116 (_keys!7015 thiss!1504) (_values!4810 thiss!1504) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) index!297 key!932 v!346 (defaultEntry!4827 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12648 (_ BitVec 32)) Bool)

(assert (=> b!261998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!132408 (mask!11179 thiss!1504))))

(declare-fun lt!132418 () Unit!8157)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12648 (_ BitVec 32) (_ BitVec 32)) Unit!8157)

(assert (=> b!261998 (= lt!132418 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!7015 thiss!1504) index!297 (mask!11179 thiss!1504)))))

(assert (=> b!261998 (= (arrayCountValidKeys!0 lt!132408 #b00000000000000000000000000000000 (size!6337 (_keys!7015 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!7015 thiss!1504) #b00000000000000000000000000000000 (size!6337 (_keys!7015 thiss!1504)))))))

(declare-fun lt!132411 () Unit!8157)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12648 (_ BitVec 32) (_ BitVec 64)) Unit!8157)

(assert (=> b!261998 (= lt!132411 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!7015 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3863 0))(
  ( (Nil!3860) (Cons!3859 (h!4525 (_ BitVec 64)) (t!8944 List!3863)) )
))
(declare-fun arrayNoDuplicates!0 (array!12648 (_ BitVec 32) List!3863) Bool)

(assert (=> b!261998 (arrayNoDuplicates!0 lt!132408 #b00000000000000000000000000000000 Nil!3860)))

(assert (=> b!261998 (= lt!132408 (array!12649 (store (arr!5986 (_keys!7015 thiss!1504)) index!297 key!932) (size!6337 (_keys!7015 thiss!1504))))))

(declare-fun lt!132412 () Unit!8157)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12648 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3863) Unit!8157)

(assert (=> b!261998 (= lt!132412 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!7015 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3860))))

(declare-fun lt!132410 () Unit!8157)

(assert (=> b!261998 (= lt!132410 e!169802)))

(declare-fun c!44614 () Bool)

(assert (=> b!261998 (= c!44614 (arrayContainsKey!0 (_keys!7015 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!261999 () Bool)

(assert (=> b!261999 (= e!169798 tp_is_empty!6645)))

(declare-fun b!262000 () Bool)

(declare-fun res!127987 () Bool)

(assert (=> b!262000 (=> (not res!127987) (not e!169801))))

(assert (=> b!262000 (= res!127987 call!25019)))

(assert (=> b!262000 (= e!169793 e!169801)))

(declare-fun b!262001 () Bool)

(declare-fun lt!132415 () Unit!8157)

(assert (=> b!262001 (= e!169800 lt!132415)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!449 (array!12648 array!12646 (_ BitVec 32) (_ BitVec 32) V!8507 V!8507 (_ BitVec 64) Int) Unit!8157)

(assert (=> b!262001 (= lt!132415 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!449 (_keys!7015 thiss!1504) (_values!4810 thiss!1504) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) key!932 (defaultEntry!4827 thiss!1504)))))

(assert (=> b!262001 (= c!44616 ((_ is MissingZero!1204) lt!132407))))

(assert (=> b!262001 e!169793))

(declare-fun b!262002 () Bool)

(declare-fun Unit!8161 () Unit!8157)

(assert (=> b!262002 (= e!169802 Unit!8161)))

(declare-fun lt!132409 () Unit!8157)

(declare-fun lemmaArrayContainsKeyThenInListMap!258 (array!12648 array!12646 (_ BitVec 32) (_ BitVec 32) V!8507 V!8507 (_ BitVec 64) (_ BitVec 32) Int) Unit!8157)

(assert (=> b!262002 (= lt!132409 (lemmaArrayContainsKeyThenInListMap!258 (_keys!7015 thiss!1504) (_values!4810 thiss!1504) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4827 thiss!1504)))))

(assert (=> b!262002 false))

(declare-fun b!262003 () Bool)

(assert (=> b!262003 (= e!169799 (and e!169790 mapRes!11326))))

(declare-fun condMapEmpty!11326 () Bool)

(declare-fun mapDefault!11326 () ValueCell!2979)

(assert (=> b!262003 (= condMapEmpty!11326 (= (arr!5985 (_values!4810 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2979)) mapDefault!11326)))))

(declare-fun b!262004 () Bool)

(declare-fun res!127989 () Bool)

(assert (=> b!262004 (=> (not res!127989) (not e!169801))))

(assert (=> b!262004 (= res!127989 (= (select (arr!5986 (_keys!7015 thiss!1504)) (index!6986 lt!132407)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!262005 () Bool)

(assert (=> b!262005 (= e!169791 e!169792)))

(declare-fun res!127993 () Bool)

(assert (=> b!262005 (= res!127993 call!25019)))

(assert (=> b!262005 (=> (not res!127993) (not e!169792))))

(assert (= (and start!25148 res!127990) b!261996))

(assert (= (and b!261996 res!127986) b!261988))

(assert (= (and b!261988 res!127992) b!261995))

(assert (= (and b!261995 c!44617) b!261985))

(assert (= (and b!261995 (not c!44617)) b!262001))

(assert (= (and b!262001 c!44616) b!262000))

(assert (= (and b!262001 (not c!44616)) b!261990))

(assert (= (and b!262000 res!127987) b!262004))

(assert (= (and b!262004 res!127989) b!261989))

(assert (= (and b!261990 c!44615) b!262005))

(assert (= (and b!261990 (not c!44615)) b!261987))

(assert (= (and b!262005 res!127993) b!261986))

(assert (= (and b!261986 res!127988) b!261993))

(assert (= (or b!262000 b!262005) bm!25017))

(assert (= (or b!261989 b!261993) bm!25016))

(assert (= (and b!261995 res!127991) b!261998))

(assert (= (and b!261998 c!44614) b!262002))

(assert (= (and b!261998 (not c!44614)) b!261992))

(assert (= (and b!261998 (not res!127985)) b!261994))

(assert (= (and b!262003 condMapEmpty!11326) mapIsEmpty!11326))

(assert (= (and b!262003 (not condMapEmpty!11326)) mapNonEmpty!11326))

(assert (= (and mapNonEmpty!11326 ((_ is ValueCellFull!2979) mapValue!11326)) b!261999))

(assert (= (and b!262003 ((_ is ValueCellFull!2979) mapDefault!11326)) b!261997))

(assert (= b!261991 b!262003))

(assert (= start!25148 b!261991))

(declare-fun m!278099 () Bool)

(assert (=> bm!25017 m!278099))

(declare-fun m!278101 () Bool)

(assert (=> b!261986 m!278101))

(declare-fun m!278103 () Bool)

(assert (=> b!261985 m!278103))

(declare-fun m!278105 () Bool)

(assert (=> b!261988 m!278105))

(declare-fun m!278107 () Bool)

(assert (=> b!262001 m!278107))

(declare-fun m!278109 () Bool)

(assert (=> b!262004 m!278109))

(declare-fun m!278111 () Bool)

(assert (=> b!261995 m!278111))

(declare-fun m!278113 () Bool)

(assert (=> b!261995 m!278113))

(declare-fun m!278115 () Bool)

(assert (=> b!261995 m!278115))

(declare-fun m!278117 () Bool)

(assert (=> start!25148 m!278117))

(declare-fun m!278119 () Bool)

(assert (=> b!261991 m!278119))

(declare-fun m!278121 () Bool)

(assert (=> b!261991 m!278121))

(declare-fun m!278123 () Bool)

(assert (=> b!261998 m!278123))

(declare-fun m!278125 () Bool)

(assert (=> b!261998 m!278125))

(declare-fun m!278127 () Bool)

(assert (=> b!261998 m!278127))

(declare-fun m!278129 () Bool)

(assert (=> b!261998 m!278129))

(declare-fun m!278131 () Bool)

(assert (=> b!261998 m!278131))

(declare-fun m!278133 () Bool)

(assert (=> b!261998 m!278133))

(declare-fun m!278135 () Bool)

(assert (=> b!261998 m!278135))

(declare-fun m!278137 () Bool)

(assert (=> b!261998 m!278137))

(declare-fun m!278139 () Bool)

(assert (=> b!261998 m!278139))

(declare-fun m!278141 () Bool)

(assert (=> b!261998 m!278141))

(declare-fun m!278143 () Bool)

(assert (=> b!261998 m!278143))

(declare-fun m!278145 () Bool)

(assert (=> b!261998 m!278145))

(declare-fun m!278147 () Bool)

(assert (=> b!261998 m!278147))

(declare-fun m!278149 () Bool)

(assert (=> b!261998 m!278149))

(declare-fun m!278151 () Bool)

(assert (=> b!261998 m!278151))

(declare-fun m!278153 () Bool)

(assert (=> b!261998 m!278153))

(declare-fun m!278155 () Bool)

(assert (=> b!261998 m!278155))

(declare-fun m!278157 () Bool)

(assert (=> b!261998 m!278157))

(declare-fun m!278159 () Bool)

(assert (=> mapNonEmpty!11326 m!278159))

(declare-fun m!278161 () Bool)

(assert (=> b!262002 m!278161))

(assert (=> bm!25016 m!278125))

(check-sat tp_is_empty!6645 (not b!261998) (not b!262001) b_and!13935 (not start!25148) (not mapNonEmpty!11326) (not bm!25016) (not b!261985) (not b!261995) (not b_next!6783) (not b!261991) (not bm!25017) (not b!262002) (not b!261988))
(check-sat b_and!13935 (not b_next!6783))
(get-model)

(declare-fun d!62879 () Bool)

(declare-fun res!128027 () Bool)

(declare-fun e!169850 () Bool)

(assert (=> d!62879 (=> (not res!128027) (not e!169850))))

(declare-fun simpleValid!282 (LongMapFixedSize!3858) Bool)

(assert (=> d!62879 (= res!128027 (simpleValid!282 thiss!1504))))

(assert (=> d!62879 (= (valid!1496 thiss!1504) e!169850)))

(declare-fun b!262075 () Bool)

(declare-fun res!128028 () Bool)

(assert (=> b!262075 (=> (not res!128028) (not e!169850))))

(assert (=> b!262075 (= res!128028 (= (arrayCountValidKeys!0 (_keys!7015 thiss!1504) #b00000000000000000000000000000000 (size!6337 (_keys!7015 thiss!1504))) (_size!1978 thiss!1504)))))

(declare-fun b!262076 () Bool)

(declare-fun res!128029 () Bool)

(assert (=> b!262076 (=> (not res!128029) (not e!169850))))

(assert (=> b!262076 (= res!128029 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!7015 thiss!1504) (mask!11179 thiss!1504)))))

(declare-fun b!262077 () Bool)

(assert (=> b!262077 (= e!169850 (arrayNoDuplicates!0 (_keys!7015 thiss!1504) #b00000000000000000000000000000000 Nil!3860))))

(assert (= (and d!62879 res!128027) b!262075))

(assert (= (and b!262075 res!128028) b!262076))

(assert (= (and b!262076 res!128029) b!262077))

(declare-fun m!278227 () Bool)

(assert (=> d!62879 m!278227))

(assert (=> b!262075 m!278135))

(declare-fun m!278229 () Bool)

(assert (=> b!262076 m!278229))

(declare-fun m!278231 () Bool)

(assert (=> b!262077 m!278231))

(assert (=> start!25148 d!62879))

(declare-fun bm!25028 () Bool)

(declare-fun call!25031 () Bool)

(assert (=> bm!25028 (= call!25031 (arrayContainsKey!0 (_keys!7015 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!262094 () Bool)

(declare-fun res!128041 () Bool)

(declare-fun e!169861 () Bool)

(assert (=> b!262094 (=> (not res!128041) (not e!169861))))

(declare-fun lt!132466 () SeekEntryResult!1204)

(assert (=> b!262094 (= res!128041 (= (select (arr!5986 (_keys!7015 thiss!1504)) (index!6989 lt!132466)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!262094 (and (bvsge (index!6989 lt!132466) #b00000000000000000000000000000000) (bvslt (index!6989 lt!132466) (size!6337 (_keys!7015 thiss!1504))))))

(declare-fun b!262095 () Bool)

(assert (=> b!262095 (= e!169861 (not call!25031))))

(declare-fun b!262096 () Bool)

(declare-fun e!169859 () Bool)

(assert (=> b!262096 (= e!169859 (not call!25031))))

(declare-fun b!262097 () Bool)

(declare-fun e!169860 () Bool)

(assert (=> b!262097 (= e!169860 e!169859)))

(declare-fun res!128038 () Bool)

(declare-fun call!25032 () Bool)

(assert (=> b!262097 (= res!128038 call!25032)))

(assert (=> b!262097 (=> (not res!128038) (not e!169859))))

(declare-fun b!262098 () Bool)

(declare-fun e!169862 () Bool)

(assert (=> b!262098 (= e!169860 e!169862)))

(declare-fun c!44634 () Bool)

(assert (=> b!262098 (= c!44634 ((_ is MissingVacant!1204) lt!132466))))

(declare-fun b!262099 () Bool)

(declare-fun res!128039 () Bool)

(assert (=> b!262099 (=> (not res!128039) (not e!169861))))

(assert (=> b!262099 (= res!128039 call!25032)))

(assert (=> b!262099 (= e!169862 e!169861)))

(declare-fun d!62881 () Bool)

(assert (=> d!62881 e!169860))

(declare-fun c!44635 () Bool)

(assert (=> d!62881 (= c!44635 ((_ is MissingZero!1204) lt!132466))))

(assert (=> d!62881 (= lt!132466 (seekEntryOrOpen!0 key!932 (_keys!7015 thiss!1504) (mask!11179 thiss!1504)))))

(declare-fun lt!132465 () Unit!8157)

(declare-fun choose!1288 (array!12648 array!12646 (_ BitVec 32) (_ BitVec 32) V!8507 V!8507 (_ BitVec 64) Int) Unit!8157)

(assert (=> d!62881 (= lt!132465 (choose!1288 (_keys!7015 thiss!1504) (_values!4810 thiss!1504) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) key!932 (defaultEntry!4827 thiss!1504)))))

(assert (=> d!62881 (validMask!0 (mask!11179 thiss!1504))))

(assert (=> d!62881 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!449 (_keys!7015 thiss!1504) (_values!4810 thiss!1504) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) key!932 (defaultEntry!4827 thiss!1504)) lt!132465)))

(declare-fun b!262100 () Bool)

(assert (=> b!262100 (= e!169862 ((_ is Undefined!1204) lt!132466))))

(declare-fun bm!25029 () Bool)

(assert (=> bm!25029 (= call!25032 (inRange!0 (ite c!44635 (index!6986 lt!132466) (index!6989 lt!132466)) (mask!11179 thiss!1504)))))

(declare-fun b!262101 () Bool)

(assert (=> b!262101 (and (bvsge (index!6986 lt!132466) #b00000000000000000000000000000000) (bvslt (index!6986 lt!132466) (size!6337 (_keys!7015 thiss!1504))))))

(declare-fun res!128040 () Bool)

(assert (=> b!262101 (= res!128040 (= (select (arr!5986 (_keys!7015 thiss!1504)) (index!6986 lt!132466)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!262101 (=> (not res!128040) (not e!169859))))

(assert (= (and d!62881 c!44635) b!262097))

(assert (= (and d!62881 (not c!44635)) b!262098))

(assert (= (and b!262097 res!128038) b!262101))

(assert (= (and b!262101 res!128040) b!262096))

(assert (= (and b!262098 c!44634) b!262099))

(assert (= (and b!262098 (not c!44634)) b!262100))

(assert (= (and b!262099 res!128039) b!262094))

(assert (= (and b!262094 res!128041) b!262095))

(assert (= (or b!262097 b!262099) bm!25029))

(assert (= (or b!262096 b!262095) bm!25028))

(declare-fun m!278233 () Bool)

(assert (=> b!262101 m!278233))

(declare-fun m!278235 () Bool)

(assert (=> b!262094 m!278235))

(assert (=> bm!25028 m!278125))

(declare-fun m!278237 () Bool)

(assert (=> bm!25029 m!278237))

(assert (=> d!62881 m!278105))

(declare-fun m!278239 () Bool)

(assert (=> d!62881 m!278239))

(assert (=> d!62881 m!278123))

(assert (=> b!262001 d!62881))

(declare-fun b!262114 () Bool)

(declare-fun e!169871 () SeekEntryResult!1204)

(declare-fun e!169870 () SeekEntryResult!1204)

(assert (=> b!262114 (= e!169871 e!169870)))

(declare-fun lt!132473 () (_ BitVec 64))

(declare-fun lt!132475 () SeekEntryResult!1204)

(assert (=> b!262114 (= lt!132473 (select (arr!5986 (_keys!7015 thiss!1504)) (index!6988 lt!132475)))))

(declare-fun c!44644 () Bool)

(assert (=> b!262114 (= c!44644 (= lt!132473 key!932))))

(declare-fun b!262115 () Bool)

(assert (=> b!262115 (= e!169870 (Found!1204 (index!6988 lt!132475)))))

(declare-fun d!62883 () Bool)

(declare-fun lt!132474 () SeekEntryResult!1204)

(assert (=> d!62883 (and (or ((_ is Undefined!1204) lt!132474) (not ((_ is Found!1204) lt!132474)) (and (bvsge (index!6987 lt!132474) #b00000000000000000000000000000000) (bvslt (index!6987 lt!132474) (size!6337 (_keys!7015 thiss!1504))))) (or ((_ is Undefined!1204) lt!132474) ((_ is Found!1204) lt!132474) (not ((_ is MissingZero!1204) lt!132474)) (and (bvsge (index!6986 lt!132474) #b00000000000000000000000000000000) (bvslt (index!6986 lt!132474) (size!6337 (_keys!7015 thiss!1504))))) (or ((_ is Undefined!1204) lt!132474) ((_ is Found!1204) lt!132474) ((_ is MissingZero!1204) lt!132474) (not ((_ is MissingVacant!1204) lt!132474)) (and (bvsge (index!6989 lt!132474) #b00000000000000000000000000000000) (bvslt (index!6989 lt!132474) (size!6337 (_keys!7015 thiss!1504))))) (or ((_ is Undefined!1204) lt!132474) (ite ((_ is Found!1204) lt!132474) (= (select (arr!5986 (_keys!7015 thiss!1504)) (index!6987 lt!132474)) key!932) (ite ((_ is MissingZero!1204) lt!132474) (= (select (arr!5986 (_keys!7015 thiss!1504)) (index!6986 lt!132474)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1204) lt!132474) (= (select (arr!5986 (_keys!7015 thiss!1504)) (index!6989 lt!132474)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!62883 (= lt!132474 e!169871)))

(declare-fun c!44642 () Bool)

(assert (=> d!62883 (= c!44642 (and ((_ is Intermediate!1204) lt!132475) (undefined!2016 lt!132475)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12648 (_ BitVec 32)) SeekEntryResult!1204)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!62883 (= lt!132475 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!11179 thiss!1504)) key!932 (_keys!7015 thiss!1504) (mask!11179 thiss!1504)))))

(assert (=> d!62883 (validMask!0 (mask!11179 thiss!1504))))

(assert (=> d!62883 (= (seekEntryOrOpen!0 key!932 (_keys!7015 thiss!1504) (mask!11179 thiss!1504)) lt!132474)))

(declare-fun b!262116 () Bool)

(declare-fun c!44643 () Bool)

(assert (=> b!262116 (= c!44643 (= lt!132473 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!169869 () SeekEntryResult!1204)

(assert (=> b!262116 (= e!169870 e!169869)))

(declare-fun b!262117 () Bool)

(assert (=> b!262117 (= e!169869 (MissingZero!1204 (index!6988 lt!132475)))))

(declare-fun b!262118 () Bool)

(assert (=> b!262118 (= e!169871 Undefined!1204)))

(declare-fun b!262119 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12648 (_ BitVec 32)) SeekEntryResult!1204)

(assert (=> b!262119 (= e!169869 (seekKeyOrZeroReturnVacant!0 (x!25210 lt!132475) (index!6988 lt!132475) (index!6988 lt!132475) key!932 (_keys!7015 thiss!1504) (mask!11179 thiss!1504)))))

(assert (= (and d!62883 c!44642) b!262118))

(assert (= (and d!62883 (not c!44642)) b!262114))

(assert (= (and b!262114 c!44644) b!262115))

(assert (= (and b!262114 (not c!44644)) b!262116))

(assert (= (and b!262116 c!44643) b!262117))

(assert (= (and b!262116 (not c!44643)) b!262119))

(declare-fun m!278241 () Bool)

(assert (=> b!262114 m!278241))

(declare-fun m!278243 () Bool)

(assert (=> d!62883 m!278243))

(declare-fun m!278245 () Bool)

(assert (=> d!62883 m!278245))

(assert (=> d!62883 m!278123))

(declare-fun m!278247 () Bool)

(assert (=> d!62883 m!278247))

(declare-fun m!278249 () Bool)

(assert (=> d!62883 m!278249))

(declare-fun m!278251 () Bool)

(assert (=> d!62883 m!278251))

(assert (=> d!62883 m!278247))

(declare-fun m!278253 () Bool)

(assert (=> b!262119 m!278253))

(assert (=> b!261988 d!62883))

(declare-fun d!62885 () Bool)

(assert (=> d!62885 (= (inRange!0 (ite c!44616 (index!6986 lt!132407) (index!6989 lt!132407)) (mask!11179 thiss!1504)) (and (bvsge (ite c!44616 (index!6986 lt!132407) (index!6989 lt!132407)) #b00000000000000000000000000000000) (bvslt (ite c!44616 (index!6986 lt!132407) (index!6989 lt!132407)) (bvadd (mask!11179 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!25017 d!62885))

(declare-fun d!62887 () Bool)

(assert (=> d!62887 (= (inRange!0 index!297 (mask!11179 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!11179 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!261995 d!62887))

(declare-fun d!62889 () Bool)

(declare-fun e!169876 () Bool)

(assert (=> d!62889 e!169876))

(declare-fun res!128044 () Bool)

(assert (=> d!62889 (=> res!128044 e!169876)))

(declare-fun lt!132486 () Bool)

(assert (=> d!62889 (= res!128044 (not lt!132486))))

(declare-fun lt!132484 () Bool)

(assert (=> d!62889 (= lt!132486 lt!132484)))

(declare-fun lt!132487 () Unit!8157)

(declare-fun e!169877 () Unit!8157)

(assert (=> d!62889 (= lt!132487 e!169877)))

(declare-fun c!44647 () Bool)

(assert (=> d!62889 (= c!44647 lt!132484)))

(declare-fun containsKey!309 (List!3862 (_ BitVec 64)) Bool)

(assert (=> d!62889 (= lt!132484 (containsKey!309 (toList!1960 lt!132406) key!932))))

(assert (=> d!62889 (= (contains!1901 lt!132406 key!932) lt!132486)))

(declare-fun b!262126 () Bool)

(declare-fun lt!132485 () Unit!8157)

(assert (=> b!262126 (= e!169877 lt!132485)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!258 (List!3862 (_ BitVec 64)) Unit!8157)

(assert (=> b!262126 (= lt!132485 (lemmaContainsKeyImpliesGetValueByKeyDefined!258 (toList!1960 lt!132406) key!932))))

(declare-datatypes ((Option!323 0))(
  ( (Some!322 (v!5492 V!8507)) (None!321) )
))
(declare-fun isDefined!259 (Option!323) Bool)

(declare-fun getValueByKey!317 (List!3862 (_ BitVec 64)) Option!323)

(assert (=> b!262126 (isDefined!259 (getValueByKey!317 (toList!1960 lt!132406) key!932))))

(declare-fun b!262127 () Bool)

(declare-fun Unit!8167 () Unit!8157)

(assert (=> b!262127 (= e!169877 Unit!8167)))

(declare-fun b!262128 () Bool)

(assert (=> b!262128 (= e!169876 (isDefined!259 (getValueByKey!317 (toList!1960 lt!132406) key!932)))))

(assert (= (and d!62889 c!44647) b!262126))

(assert (= (and d!62889 (not c!44647)) b!262127))

(assert (= (and d!62889 (not res!128044)) b!262128))

(declare-fun m!278255 () Bool)

(assert (=> d!62889 m!278255))

(declare-fun m!278257 () Bool)

(assert (=> b!262126 m!278257))

(declare-fun m!278259 () Bool)

(assert (=> b!262126 m!278259))

(assert (=> b!262126 m!278259))

(declare-fun m!278261 () Bool)

(assert (=> b!262126 m!278261))

(assert (=> b!262128 m!278259))

(assert (=> b!262128 m!278259))

(assert (=> b!262128 m!278261))

(assert (=> b!261995 d!62889))

(declare-fun bm!25044 () Bool)

(declare-fun call!25050 () ListLongMap!3889)

(declare-fun call!25049 () ListLongMap!3889)

(assert (=> bm!25044 (= call!25050 call!25049)))

(declare-fun b!262171 () Bool)

(declare-fun e!169916 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!262171 (= e!169916 (validKeyInArray!0 (select (arr!5986 (_keys!7015 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!262172 () Bool)

(declare-fun e!169911 () Unit!8157)

(declare-fun Unit!8168 () Unit!8157)

(assert (=> b!262172 (= e!169911 Unit!8168)))

(declare-fun b!262173 () Bool)

(declare-fun lt!132553 () Unit!8157)

(assert (=> b!262173 (= e!169911 lt!132553)))

(declare-fun lt!132534 () ListLongMap!3889)

(declare-fun getCurrentListMapNoExtraKeys!579 (array!12648 array!12646 (_ BitVec 32) (_ BitVec 32) V!8507 V!8507 (_ BitVec 32) Int) ListLongMap!3889)

(assert (=> b!262173 (= lt!132534 (getCurrentListMapNoExtraKeys!579 (_keys!7015 thiss!1504) (_values!4810 thiss!1504) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4827 thiss!1504)))))

(declare-fun lt!132545 () (_ BitVec 64))

(assert (=> b!262173 (= lt!132545 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!132532 () (_ BitVec 64))

(assert (=> b!262173 (= lt!132532 (select (arr!5986 (_keys!7015 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!132536 () Unit!8157)

(declare-fun addStillContains!236 (ListLongMap!3889 (_ BitVec 64) V!8507 (_ BitVec 64)) Unit!8157)

(assert (=> b!262173 (= lt!132536 (addStillContains!236 lt!132534 lt!132545 (zeroValue!4668 thiss!1504) lt!132532))))

(assert (=> b!262173 (contains!1901 (+!701 lt!132534 (tuple2!4963 lt!132545 (zeroValue!4668 thiss!1504))) lt!132532)))

(declare-fun lt!132550 () Unit!8157)

(assert (=> b!262173 (= lt!132550 lt!132536)))

(declare-fun lt!132548 () ListLongMap!3889)

(assert (=> b!262173 (= lt!132548 (getCurrentListMapNoExtraKeys!579 (_keys!7015 thiss!1504) (_values!4810 thiss!1504) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4827 thiss!1504)))))

(declare-fun lt!132535 () (_ BitVec 64))

(assert (=> b!262173 (= lt!132535 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!132533 () (_ BitVec 64))

(assert (=> b!262173 (= lt!132533 (select (arr!5986 (_keys!7015 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!132547 () Unit!8157)

(declare-fun addApplyDifferent!236 (ListLongMap!3889 (_ BitVec 64) V!8507 (_ BitVec 64)) Unit!8157)

(assert (=> b!262173 (= lt!132547 (addApplyDifferent!236 lt!132548 lt!132535 (minValue!4668 thiss!1504) lt!132533))))

(declare-fun apply!260 (ListLongMap!3889 (_ BitVec 64)) V!8507)

(assert (=> b!262173 (= (apply!260 (+!701 lt!132548 (tuple2!4963 lt!132535 (minValue!4668 thiss!1504))) lt!132533) (apply!260 lt!132548 lt!132533))))

(declare-fun lt!132544 () Unit!8157)

(assert (=> b!262173 (= lt!132544 lt!132547)))

(declare-fun lt!132540 () ListLongMap!3889)

(assert (=> b!262173 (= lt!132540 (getCurrentListMapNoExtraKeys!579 (_keys!7015 thiss!1504) (_values!4810 thiss!1504) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4827 thiss!1504)))))

(declare-fun lt!132537 () (_ BitVec 64))

(assert (=> b!262173 (= lt!132537 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!132552 () (_ BitVec 64))

(assert (=> b!262173 (= lt!132552 (select (arr!5986 (_keys!7015 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!132539 () Unit!8157)

(assert (=> b!262173 (= lt!132539 (addApplyDifferent!236 lt!132540 lt!132537 (zeroValue!4668 thiss!1504) lt!132552))))

(assert (=> b!262173 (= (apply!260 (+!701 lt!132540 (tuple2!4963 lt!132537 (zeroValue!4668 thiss!1504))) lt!132552) (apply!260 lt!132540 lt!132552))))

(declare-fun lt!132546 () Unit!8157)

(assert (=> b!262173 (= lt!132546 lt!132539)))

(declare-fun lt!132549 () ListLongMap!3889)

(assert (=> b!262173 (= lt!132549 (getCurrentListMapNoExtraKeys!579 (_keys!7015 thiss!1504) (_values!4810 thiss!1504) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4827 thiss!1504)))))

(declare-fun lt!132541 () (_ BitVec 64))

(assert (=> b!262173 (= lt!132541 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!132551 () (_ BitVec 64))

(assert (=> b!262173 (= lt!132551 (select (arr!5986 (_keys!7015 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!262173 (= lt!132553 (addApplyDifferent!236 lt!132549 lt!132541 (minValue!4668 thiss!1504) lt!132551))))

(assert (=> b!262173 (= (apply!260 (+!701 lt!132549 (tuple2!4963 lt!132541 (minValue!4668 thiss!1504))) lt!132551) (apply!260 lt!132549 lt!132551))))

(declare-fun bm!25045 () Bool)

(declare-fun call!25048 () ListLongMap!3889)

(assert (=> bm!25045 (= call!25049 call!25048)))

(declare-fun bm!25046 () Bool)

(declare-fun call!25047 () Bool)

(declare-fun lt!132538 () ListLongMap!3889)

(assert (=> bm!25046 (= call!25047 (contains!1901 lt!132538 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!262174 () Bool)

(declare-fun e!169907 () Bool)

(assert (=> b!262174 (= e!169907 (validKeyInArray!0 (select (arr!5986 (_keys!7015 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!262176 () Bool)

(declare-fun e!169906 () Bool)

(assert (=> b!262176 (= e!169906 (= (apply!260 lt!132538 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4668 thiss!1504)))))

(declare-fun b!262177 () Bool)

(declare-fun e!169904 () ListLongMap!3889)

(assert (=> b!262177 (= e!169904 call!25050)))

(declare-fun b!262178 () Bool)

(declare-fun e!169910 () ListLongMap!3889)

(declare-fun call!25053 () ListLongMap!3889)

(assert (=> b!262178 (= e!169910 (+!701 call!25053 (tuple2!4963 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4668 thiss!1504))))))

(declare-fun c!44662 () Bool)

(declare-fun bm!25047 () Bool)

(declare-fun c!44660 () Bool)

(assert (=> bm!25047 (= call!25053 (+!701 (ite c!44662 call!25048 (ite c!44660 call!25049 call!25050)) (ite (or c!44662 c!44660) (tuple2!4963 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4668 thiss!1504)) (tuple2!4963 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4668 thiss!1504)))))))

(declare-fun b!262179 () Bool)

(declare-fun e!169912 () Bool)

(assert (=> b!262179 (= e!169912 (not call!25047))))

(declare-fun b!262180 () Bool)

(declare-fun e!169905 () Bool)

(assert (=> b!262180 (= e!169905 e!169906)))

(declare-fun res!128070 () Bool)

(declare-fun call!25051 () Bool)

(assert (=> b!262180 (= res!128070 call!25051)))

(assert (=> b!262180 (=> (not res!128070) (not e!169906))))

(declare-fun b!262181 () Bool)

(declare-fun e!169914 () ListLongMap!3889)

(assert (=> b!262181 (= e!169910 e!169914)))

(assert (=> b!262181 (= c!44660 (and (not (= (bvand (extraKeys!4564 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4564 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!25048 () Bool)

(assert (=> bm!25048 (= call!25048 (getCurrentListMapNoExtraKeys!579 (_keys!7015 thiss!1504) (_values!4810 thiss!1504) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4827 thiss!1504)))))

(declare-fun bm!25049 () Bool)

(declare-fun call!25052 () ListLongMap!3889)

(assert (=> bm!25049 (= call!25052 call!25053)))

(declare-fun d!62891 () Bool)

(declare-fun e!169913 () Bool)

(assert (=> d!62891 e!169913))

(declare-fun res!128068 () Bool)

(assert (=> d!62891 (=> (not res!128068) (not e!169913))))

(assert (=> d!62891 (= res!128068 (or (bvsge #b00000000000000000000000000000000 (size!6337 (_keys!7015 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6337 (_keys!7015 thiss!1504))))))))

(declare-fun lt!132542 () ListLongMap!3889)

(assert (=> d!62891 (= lt!132538 lt!132542)))

(declare-fun lt!132543 () Unit!8157)

(assert (=> d!62891 (= lt!132543 e!169911)))

(declare-fun c!44663 () Bool)

(assert (=> d!62891 (= c!44663 e!169916)))

(declare-fun res!128064 () Bool)

(assert (=> d!62891 (=> (not res!128064) (not e!169916))))

(assert (=> d!62891 (= res!128064 (bvslt #b00000000000000000000000000000000 (size!6337 (_keys!7015 thiss!1504))))))

(assert (=> d!62891 (= lt!132542 e!169910)))

(assert (=> d!62891 (= c!44662 (and (not (= (bvand (extraKeys!4564 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4564 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!62891 (validMask!0 (mask!11179 thiss!1504))))

(assert (=> d!62891 (= (getCurrentListMap!1483 (_keys!7015 thiss!1504) (_values!4810 thiss!1504) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4827 thiss!1504)) lt!132538)))

(declare-fun b!262175 () Bool)

(assert (=> b!262175 (= e!169913 e!169905)))

(declare-fun c!44661 () Bool)

(assert (=> b!262175 (= c!44661 (not (= (bvand (extraKeys!4564 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!262182 () Bool)

(assert (=> b!262182 (= e!169904 call!25052)))

(declare-fun b!262183 () Bool)

(declare-fun e!169915 () Bool)

(assert (=> b!262183 (= e!169912 e!169915)))

(declare-fun res!128066 () Bool)

(assert (=> b!262183 (= res!128066 call!25047)))

(assert (=> b!262183 (=> (not res!128066) (not e!169915))))

(declare-fun b!262184 () Bool)

(assert (=> b!262184 (= e!169914 call!25052)))

(declare-fun b!262185 () Bool)

(declare-fun c!44664 () Bool)

(assert (=> b!262185 (= c!44664 (and (not (= (bvand (extraKeys!4564 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4564 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!262185 (= e!169914 e!169904)))

(declare-fun b!262186 () Bool)

(declare-fun e!169908 () Bool)

(declare-fun e!169909 () Bool)

(assert (=> b!262186 (= e!169908 e!169909)))

(declare-fun res!128063 () Bool)

(assert (=> b!262186 (=> (not res!128063) (not e!169909))))

(assert (=> b!262186 (= res!128063 (contains!1901 lt!132538 (select (arr!5986 (_keys!7015 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!262186 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6337 (_keys!7015 thiss!1504))))))

(declare-fun b!262187 () Bool)

(declare-fun res!128069 () Bool)

(assert (=> b!262187 (=> (not res!128069) (not e!169913))))

(assert (=> b!262187 (= res!128069 e!169912)))

(declare-fun c!44665 () Bool)

(assert (=> b!262187 (= c!44665 (not (= (bvand (extraKeys!4564 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!262188 () Bool)

(declare-fun res!128071 () Bool)

(assert (=> b!262188 (=> (not res!128071) (not e!169913))))

(assert (=> b!262188 (= res!128071 e!169908)))

(declare-fun res!128065 () Bool)

(assert (=> b!262188 (=> res!128065 e!169908)))

(assert (=> b!262188 (= res!128065 (not e!169907))))

(declare-fun res!128067 () Bool)

(assert (=> b!262188 (=> (not res!128067) (not e!169907))))

(assert (=> b!262188 (= res!128067 (bvslt #b00000000000000000000000000000000 (size!6337 (_keys!7015 thiss!1504))))))

(declare-fun b!262189 () Bool)

(assert (=> b!262189 (= e!169915 (= (apply!260 lt!132538 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4668 thiss!1504)))))

(declare-fun b!262190 () Bool)

(assert (=> b!262190 (= e!169905 (not call!25051))))

(declare-fun bm!25050 () Bool)

(assert (=> bm!25050 (= call!25051 (contains!1901 lt!132538 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!262191 () Bool)

(declare-fun get!3088 (ValueCell!2979 V!8507) V!8507)

(declare-fun dynLambda!598 (Int (_ BitVec 64)) V!8507)

(assert (=> b!262191 (= e!169909 (= (apply!260 lt!132538 (select (arr!5986 (_keys!7015 thiss!1504)) #b00000000000000000000000000000000)) (get!3088 (select (arr!5985 (_values!4810 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!598 (defaultEntry!4827 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!262191 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6336 (_values!4810 thiss!1504))))))

(assert (=> b!262191 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6337 (_keys!7015 thiss!1504))))))

(assert (= (and d!62891 c!44662) b!262178))

(assert (= (and d!62891 (not c!44662)) b!262181))

(assert (= (and b!262181 c!44660) b!262184))

(assert (= (and b!262181 (not c!44660)) b!262185))

(assert (= (and b!262185 c!44664) b!262182))

(assert (= (and b!262185 (not c!44664)) b!262177))

(assert (= (or b!262182 b!262177) bm!25044))

(assert (= (or b!262184 bm!25044) bm!25045))

(assert (= (or b!262184 b!262182) bm!25049))

(assert (= (or b!262178 bm!25045) bm!25048))

(assert (= (or b!262178 bm!25049) bm!25047))

(assert (= (and d!62891 res!128064) b!262171))

(assert (= (and d!62891 c!44663) b!262173))

(assert (= (and d!62891 (not c!44663)) b!262172))

(assert (= (and d!62891 res!128068) b!262188))

(assert (= (and b!262188 res!128067) b!262174))

(assert (= (and b!262188 (not res!128065)) b!262186))

(assert (= (and b!262186 res!128063) b!262191))

(assert (= (and b!262188 res!128071) b!262187))

(assert (= (and b!262187 c!44665) b!262183))

(assert (= (and b!262187 (not c!44665)) b!262179))

(assert (= (and b!262183 res!128066) b!262189))

(assert (= (or b!262183 b!262179) bm!25046))

(assert (= (and b!262187 res!128069) b!262175))

(assert (= (and b!262175 c!44661) b!262180))

(assert (= (and b!262175 (not c!44661)) b!262190))

(assert (= (and b!262180 res!128070) b!262176))

(assert (= (or b!262180 b!262190) bm!25050))

(declare-fun b_lambda!8345 () Bool)

(assert (=> (not b_lambda!8345) (not b!262191)))

(declare-fun t!8948 () Bool)

(declare-fun tb!3041 () Bool)

(assert (=> (and b!261991 (= (defaultEntry!4827 thiss!1504) (defaultEntry!4827 thiss!1504)) t!8948) tb!3041))

(declare-fun result!5429 () Bool)

(assert (=> tb!3041 (= result!5429 tp_is_empty!6645)))

(assert (=> b!262191 t!8948))

(declare-fun b_and!13939 () Bool)

(assert (= b_and!13935 (and (=> t!8948 result!5429) b_and!13939)))

(declare-fun m!278263 () Bool)

(assert (=> b!262191 m!278263))

(declare-fun m!278265 () Bool)

(assert (=> b!262191 m!278265))

(declare-fun m!278267 () Bool)

(assert (=> b!262191 m!278267))

(assert (=> b!262191 m!278267))

(assert (=> b!262191 m!278263))

(declare-fun m!278269 () Bool)

(assert (=> b!262191 m!278269))

(assert (=> b!262191 m!278265))

(declare-fun m!278271 () Bool)

(assert (=> b!262191 m!278271))

(declare-fun m!278273 () Bool)

(assert (=> b!262173 m!278273))

(declare-fun m!278275 () Bool)

(assert (=> b!262173 m!278275))

(declare-fun m!278277 () Bool)

(assert (=> b!262173 m!278277))

(declare-fun m!278279 () Bool)

(assert (=> b!262173 m!278279))

(declare-fun m!278281 () Bool)

(assert (=> b!262173 m!278281))

(declare-fun m!278283 () Bool)

(assert (=> b!262173 m!278283))

(declare-fun m!278285 () Bool)

(assert (=> b!262173 m!278285))

(declare-fun m!278287 () Bool)

(assert (=> b!262173 m!278287))

(declare-fun m!278289 () Bool)

(assert (=> b!262173 m!278289))

(declare-fun m!278291 () Bool)

(assert (=> b!262173 m!278291))

(assert (=> b!262173 m!278277))

(declare-fun m!278293 () Bool)

(assert (=> b!262173 m!278293))

(declare-fun m!278295 () Bool)

(assert (=> b!262173 m!278295))

(declare-fun m!278297 () Bool)

(assert (=> b!262173 m!278297))

(assert (=> b!262173 m!278265))

(assert (=> b!262173 m!278291))

(declare-fun m!278299 () Bool)

(assert (=> b!262173 m!278299))

(declare-fun m!278301 () Bool)

(assert (=> b!262173 m!278301))

(assert (=> b!262173 m!278293))

(declare-fun m!278303 () Bool)

(assert (=> b!262173 m!278303))

(assert (=> b!262173 m!278287))

(declare-fun m!278305 () Bool)

(assert (=> bm!25050 m!278305))

(assert (=> b!262171 m!278265))

(assert (=> b!262171 m!278265))

(declare-fun m!278307 () Bool)

(assert (=> b!262171 m!278307))

(declare-fun m!278309 () Bool)

(assert (=> b!262178 m!278309))

(declare-fun m!278311 () Bool)

(assert (=> bm!25046 m!278311))

(declare-fun m!278313 () Bool)

(assert (=> b!262176 m!278313))

(assert (=> bm!25048 m!278301))

(assert (=> d!62891 m!278123))

(assert (=> b!262174 m!278265))

(assert (=> b!262174 m!278265))

(assert (=> b!262174 m!278307))

(declare-fun m!278315 () Bool)

(assert (=> b!262189 m!278315))

(declare-fun m!278317 () Bool)

(assert (=> bm!25047 m!278317))

(assert (=> b!262186 m!278265))

(assert (=> b!262186 m!278265))

(declare-fun m!278319 () Bool)

(assert (=> b!262186 m!278319))

(assert (=> b!261995 d!62891))

(declare-fun d!62893 () Bool)

(declare-fun res!128076 () Bool)

(declare-fun e!169921 () Bool)

(assert (=> d!62893 (=> res!128076 e!169921)))

(assert (=> d!62893 (= res!128076 (= (select (arr!5986 (_keys!7015 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!62893 (= (arrayContainsKey!0 (_keys!7015 thiss!1504) key!932 #b00000000000000000000000000000000) e!169921)))

(declare-fun b!262198 () Bool)

(declare-fun e!169922 () Bool)

(assert (=> b!262198 (= e!169921 e!169922)))

(declare-fun res!128077 () Bool)

(assert (=> b!262198 (=> (not res!128077) (not e!169922))))

(assert (=> b!262198 (= res!128077 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6337 (_keys!7015 thiss!1504))))))

(declare-fun b!262199 () Bool)

(assert (=> b!262199 (= e!169922 (arrayContainsKey!0 (_keys!7015 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!62893 (not res!128076)) b!262198))

(assert (= (and b!262198 res!128077) b!262199))

(assert (=> d!62893 m!278265))

(declare-fun m!278321 () Bool)

(assert (=> b!262199 m!278321))

(assert (=> bm!25016 d!62893))

(declare-fun d!62895 () Bool)

(assert (=> d!62895 (= (array_inv!3947 (_keys!7015 thiss!1504)) (bvsge (size!6337 (_keys!7015 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!261991 d!62895))

(declare-fun d!62897 () Bool)

(assert (=> d!62897 (= (array_inv!3948 (_values!4810 thiss!1504)) (bvsge (size!6336 (_values!4810 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!261991 d!62897))

(declare-fun b!262208 () Bool)

(declare-fun e!169930 () Bool)

(declare-fun e!169929 () Bool)

(assert (=> b!262208 (= e!169930 e!169929)))

(declare-fun lt!132562 () (_ BitVec 64))

(assert (=> b!262208 (= lt!132562 (select (arr!5986 lt!132408) #b00000000000000000000000000000000))))

(declare-fun lt!132561 () Unit!8157)

(assert (=> b!262208 (= lt!132561 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!132408 lt!132562 #b00000000000000000000000000000000))))

(assert (=> b!262208 (arrayContainsKey!0 lt!132408 lt!132562 #b00000000000000000000000000000000)))

(declare-fun lt!132560 () Unit!8157)

(assert (=> b!262208 (= lt!132560 lt!132561)))

(declare-fun res!128082 () Bool)

(assert (=> b!262208 (= res!128082 (= (seekEntryOrOpen!0 (select (arr!5986 lt!132408) #b00000000000000000000000000000000) lt!132408 (mask!11179 thiss!1504)) (Found!1204 #b00000000000000000000000000000000)))))

(assert (=> b!262208 (=> (not res!128082) (not e!169929))))

(declare-fun d!62899 () Bool)

(declare-fun res!128083 () Bool)

(declare-fun e!169931 () Bool)

(assert (=> d!62899 (=> res!128083 e!169931)))

(assert (=> d!62899 (= res!128083 (bvsge #b00000000000000000000000000000000 (size!6337 lt!132408)))))

(assert (=> d!62899 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!132408 (mask!11179 thiss!1504)) e!169931)))

(declare-fun b!262209 () Bool)

(assert (=> b!262209 (= e!169931 e!169930)))

(declare-fun c!44668 () Bool)

(assert (=> b!262209 (= c!44668 (validKeyInArray!0 (select (arr!5986 lt!132408) #b00000000000000000000000000000000)))))

(declare-fun b!262210 () Bool)

(declare-fun call!25056 () Bool)

(assert (=> b!262210 (= e!169930 call!25056)))

(declare-fun b!262211 () Bool)

(assert (=> b!262211 (= e!169929 call!25056)))

(declare-fun bm!25053 () Bool)

(assert (=> bm!25053 (= call!25056 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!132408 (mask!11179 thiss!1504)))))

(assert (= (and d!62899 (not res!128083)) b!262209))

(assert (= (and b!262209 c!44668) b!262208))

(assert (= (and b!262209 (not c!44668)) b!262210))

(assert (= (and b!262208 res!128082) b!262211))

(assert (= (or b!262211 b!262210) bm!25053))

(declare-fun m!278323 () Bool)

(assert (=> b!262208 m!278323))

(declare-fun m!278325 () Bool)

(assert (=> b!262208 m!278325))

(declare-fun m!278327 () Bool)

(assert (=> b!262208 m!278327))

(assert (=> b!262208 m!278323))

(declare-fun m!278329 () Bool)

(assert (=> b!262208 m!278329))

(assert (=> b!262209 m!278323))

(assert (=> b!262209 m!278323))

(declare-fun m!278331 () Bool)

(assert (=> b!262209 m!278331))

(declare-fun m!278333 () Bool)

(assert (=> bm!25053 m!278333))

(assert (=> b!261998 d!62899))

(declare-fun b!262222 () Bool)

(declare-fun e!169937 () Bool)

(assert (=> b!262222 (= e!169937 (bvslt (size!6337 (_keys!7015 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun d!62901 () Bool)

(declare-fun e!169936 () Bool)

(assert (=> d!62901 e!169936))

(declare-fun res!128093 () Bool)

(assert (=> d!62901 (=> (not res!128093) (not e!169936))))

(assert (=> d!62901 (= res!128093 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6337 (_keys!7015 thiss!1504)))))))

(declare-fun lt!132565 () Unit!8157)

(declare-fun choose!1 (array!12648 (_ BitVec 32) (_ BitVec 64)) Unit!8157)

(assert (=> d!62901 (= lt!132565 (choose!1 (_keys!7015 thiss!1504) index!297 key!932))))

(assert (=> d!62901 e!169937))

(declare-fun res!128094 () Bool)

(assert (=> d!62901 (=> (not res!128094) (not e!169937))))

(assert (=> d!62901 (= res!128094 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6337 (_keys!7015 thiss!1504)))))))

(assert (=> d!62901 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!7015 thiss!1504) index!297 key!932) lt!132565)))

(declare-fun b!262220 () Bool)

(declare-fun res!128092 () Bool)

(assert (=> b!262220 (=> (not res!128092) (not e!169937))))

(assert (=> b!262220 (= res!128092 (not (validKeyInArray!0 (select (arr!5986 (_keys!7015 thiss!1504)) index!297))))))

(declare-fun b!262223 () Bool)

(assert (=> b!262223 (= e!169936 (= (arrayCountValidKeys!0 (array!12649 (store (arr!5986 (_keys!7015 thiss!1504)) index!297 key!932) (size!6337 (_keys!7015 thiss!1504))) #b00000000000000000000000000000000 (size!6337 (_keys!7015 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!7015 thiss!1504) #b00000000000000000000000000000000 (size!6337 (_keys!7015 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun b!262221 () Bool)

(declare-fun res!128095 () Bool)

(assert (=> b!262221 (=> (not res!128095) (not e!169937))))

(assert (=> b!262221 (= res!128095 (validKeyInArray!0 key!932))))

(assert (= (and d!62901 res!128094) b!262220))

(assert (= (and b!262220 res!128092) b!262221))

(assert (= (and b!262221 res!128095) b!262222))

(assert (= (and d!62901 res!128093) b!262223))

(declare-fun m!278335 () Bool)

(assert (=> d!62901 m!278335))

(declare-fun m!278337 () Bool)

(assert (=> b!262220 m!278337))

(assert (=> b!262220 m!278337))

(declare-fun m!278339 () Bool)

(assert (=> b!262220 m!278339))

(assert (=> b!262223 m!278153))

(declare-fun m!278341 () Bool)

(assert (=> b!262223 m!278341))

(assert (=> b!262223 m!278135))

(declare-fun m!278343 () Bool)

(assert (=> b!262221 m!278343))

(assert (=> b!261998 d!62901))

(declare-fun d!62903 () Bool)

(declare-fun e!169940 () Bool)

(assert (=> d!62903 e!169940))

(declare-fun res!128098 () Bool)

(assert (=> d!62903 (=> (not res!128098) (not e!169940))))

(assert (=> d!62903 (= res!128098 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6337 (_keys!7015 thiss!1504))) (bvslt index!297 (size!6336 (_values!4810 thiss!1504)))))))

(declare-fun lt!132568 () Unit!8157)

(declare-fun choose!1289 (array!12648 array!12646 (_ BitVec 32) (_ BitVec 32) V!8507 V!8507 (_ BitVec 32) (_ BitVec 64) V!8507 Int) Unit!8157)

(assert (=> d!62903 (= lt!132568 (choose!1289 (_keys!7015 thiss!1504) (_values!4810 thiss!1504) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) index!297 key!932 v!346 (defaultEntry!4827 thiss!1504)))))

(assert (=> d!62903 (validMask!0 (mask!11179 thiss!1504))))

(assert (=> d!62903 (= (lemmaAddValidKeyToArrayThenAddPairToListMap!116 (_keys!7015 thiss!1504) (_values!4810 thiss!1504) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) index!297 key!932 v!346 (defaultEntry!4827 thiss!1504)) lt!132568)))

(declare-fun b!262226 () Bool)

(assert (=> b!262226 (= e!169940 (= (+!701 (getCurrentListMap!1483 (_keys!7015 thiss!1504) (_values!4810 thiss!1504) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4827 thiss!1504)) (tuple2!4963 key!932 v!346)) (getCurrentListMap!1483 (array!12649 (store (arr!5986 (_keys!7015 thiss!1504)) index!297 key!932) (size!6337 (_keys!7015 thiss!1504))) (array!12647 (store (arr!5985 (_values!4810 thiss!1504)) index!297 (ValueCellFull!2979 v!346)) (size!6336 (_values!4810 thiss!1504))) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4827 thiss!1504))))))

(assert (= (and d!62903 res!128098) b!262226))

(declare-fun m!278345 () Bool)

(assert (=> d!62903 m!278345))

(assert (=> d!62903 m!278123))

(assert (=> b!262226 m!278153))

(assert (=> b!262226 m!278141))

(assert (=> b!262226 m!278115))

(declare-fun m!278347 () Bool)

(assert (=> b!262226 m!278347))

(assert (=> b!262226 m!278115))

(declare-fun m!278349 () Bool)

(assert (=> b!262226 m!278349))

(assert (=> b!261998 d!62903))

(declare-fun d!62905 () Bool)

(assert (=> d!62905 (= (validMask!0 (mask!11179 thiss!1504)) (and (or (= (mask!11179 thiss!1504) #b00000000000000000000000000000111) (= (mask!11179 thiss!1504) #b00000000000000000000000000001111) (= (mask!11179 thiss!1504) #b00000000000000000000000000011111) (= (mask!11179 thiss!1504) #b00000000000000000000000000111111) (= (mask!11179 thiss!1504) #b00000000000000000000000001111111) (= (mask!11179 thiss!1504) #b00000000000000000000000011111111) (= (mask!11179 thiss!1504) #b00000000000000000000000111111111) (= (mask!11179 thiss!1504) #b00000000000000000000001111111111) (= (mask!11179 thiss!1504) #b00000000000000000000011111111111) (= (mask!11179 thiss!1504) #b00000000000000000000111111111111) (= (mask!11179 thiss!1504) #b00000000000000000001111111111111) (= (mask!11179 thiss!1504) #b00000000000000000011111111111111) (= (mask!11179 thiss!1504) #b00000000000000000111111111111111) (= (mask!11179 thiss!1504) #b00000000000000001111111111111111) (= (mask!11179 thiss!1504) #b00000000000000011111111111111111) (= (mask!11179 thiss!1504) #b00000000000000111111111111111111) (= (mask!11179 thiss!1504) #b00000000000001111111111111111111) (= (mask!11179 thiss!1504) #b00000000000011111111111111111111) (= (mask!11179 thiss!1504) #b00000000000111111111111111111111) (= (mask!11179 thiss!1504) #b00000000001111111111111111111111) (= (mask!11179 thiss!1504) #b00000000011111111111111111111111) (= (mask!11179 thiss!1504) #b00000000111111111111111111111111) (= (mask!11179 thiss!1504) #b00000001111111111111111111111111) (= (mask!11179 thiss!1504) #b00000011111111111111111111111111) (= (mask!11179 thiss!1504) #b00000111111111111111111111111111) (= (mask!11179 thiss!1504) #b00001111111111111111111111111111) (= (mask!11179 thiss!1504) #b00011111111111111111111111111111) (= (mask!11179 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!11179 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!261998 d!62905))

(declare-fun bm!25054 () Bool)

(declare-fun call!25060 () ListLongMap!3889)

(declare-fun call!25059 () ListLongMap!3889)

(assert (=> bm!25054 (= call!25060 call!25059)))

(declare-fun b!262227 () Bool)

(declare-fun e!169953 () Bool)

(assert (=> b!262227 (= e!169953 (validKeyInArray!0 (select (arr!5986 lt!132408) #b00000000000000000000000000000000)))))

(declare-fun b!262228 () Bool)

(declare-fun e!169948 () Unit!8157)

(declare-fun Unit!8169 () Unit!8157)

(assert (=> b!262228 (= e!169948 Unit!8169)))

(declare-fun b!262229 () Bool)

(declare-fun lt!132590 () Unit!8157)

(assert (=> b!262229 (= e!169948 lt!132590)))

(declare-fun lt!132571 () ListLongMap!3889)

(assert (=> b!262229 (= lt!132571 (getCurrentListMapNoExtraKeys!579 lt!132408 (array!12647 (store (arr!5985 (_values!4810 thiss!1504)) index!297 (ValueCellFull!2979 v!346)) (size!6336 (_values!4810 thiss!1504))) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4827 thiss!1504)))))

(declare-fun lt!132582 () (_ BitVec 64))

(assert (=> b!262229 (= lt!132582 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!132569 () (_ BitVec 64))

(assert (=> b!262229 (= lt!132569 (select (arr!5986 lt!132408) #b00000000000000000000000000000000))))

(declare-fun lt!132573 () Unit!8157)

(assert (=> b!262229 (= lt!132573 (addStillContains!236 lt!132571 lt!132582 (zeroValue!4668 thiss!1504) lt!132569))))

(assert (=> b!262229 (contains!1901 (+!701 lt!132571 (tuple2!4963 lt!132582 (zeroValue!4668 thiss!1504))) lt!132569)))

(declare-fun lt!132587 () Unit!8157)

(assert (=> b!262229 (= lt!132587 lt!132573)))

(declare-fun lt!132585 () ListLongMap!3889)

(assert (=> b!262229 (= lt!132585 (getCurrentListMapNoExtraKeys!579 lt!132408 (array!12647 (store (arr!5985 (_values!4810 thiss!1504)) index!297 (ValueCellFull!2979 v!346)) (size!6336 (_values!4810 thiss!1504))) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4827 thiss!1504)))))

(declare-fun lt!132572 () (_ BitVec 64))

(assert (=> b!262229 (= lt!132572 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!132570 () (_ BitVec 64))

(assert (=> b!262229 (= lt!132570 (select (arr!5986 lt!132408) #b00000000000000000000000000000000))))

(declare-fun lt!132584 () Unit!8157)

(assert (=> b!262229 (= lt!132584 (addApplyDifferent!236 lt!132585 lt!132572 (minValue!4668 thiss!1504) lt!132570))))

(assert (=> b!262229 (= (apply!260 (+!701 lt!132585 (tuple2!4963 lt!132572 (minValue!4668 thiss!1504))) lt!132570) (apply!260 lt!132585 lt!132570))))

(declare-fun lt!132581 () Unit!8157)

(assert (=> b!262229 (= lt!132581 lt!132584)))

(declare-fun lt!132577 () ListLongMap!3889)

(assert (=> b!262229 (= lt!132577 (getCurrentListMapNoExtraKeys!579 lt!132408 (array!12647 (store (arr!5985 (_values!4810 thiss!1504)) index!297 (ValueCellFull!2979 v!346)) (size!6336 (_values!4810 thiss!1504))) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4827 thiss!1504)))))

(declare-fun lt!132574 () (_ BitVec 64))

(assert (=> b!262229 (= lt!132574 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!132589 () (_ BitVec 64))

(assert (=> b!262229 (= lt!132589 (select (arr!5986 lt!132408) #b00000000000000000000000000000000))))

(declare-fun lt!132576 () Unit!8157)

(assert (=> b!262229 (= lt!132576 (addApplyDifferent!236 lt!132577 lt!132574 (zeroValue!4668 thiss!1504) lt!132589))))

(assert (=> b!262229 (= (apply!260 (+!701 lt!132577 (tuple2!4963 lt!132574 (zeroValue!4668 thiss!1504))) lt!132589) (apply!260 lt!132577 lt!132589))))

(declare-fun lt!132583 () Unit!8157)

(assert (=> b!262229 (= lt!132583 lt!132576)))

(declare-fun lt!132586 () ListLongMap!3889)

(assert (=> b!262229 (= lt!132586 (getCurrentListMapNoExtraKeys!579 lt!132408 (array!12647 (store (arr!5985 (_values!4810 thiss!1504)) index!297 (ValueCellFull!2979 v!346)) (size!6336 (_values!4810 thiss!1504))) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4827 thiss!1504)))))

(declare-fun lt!132578 () (_ BitVec 64))

(assert (=> b!262229 (= lt!132578 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!132588 () (_ BitVec 64))

(assert (=> b!262229 (= lt!132588 (select (arr!5986 lt!132408) #b00000000000000000000000000000000))))

(assert (=> b!262229 (= lt!132590 (addApplyDifferent!236 lt!132586 lt!132578 (minValue!4668 thiss!1504) lt!132588))))

(assert (=> b!262229 (= (apply!260 (+!701 lt!132586 (tuple2!4963 lt!132578 (minValue!4668 thiss!1504))) lt!132588) (apply!260 lt!132586 lt!132588))))

(declare-fun bm!25055 () Bool)

(declare-fun call!25058 () ListLongMap!3889)

(assert (=> bm!25055 (= call!25059 call!25058)))

(declare-fun bm!25056 () Bool)

(declare-fun call!25057 () Bool)

(declare-fun lt!132575 () ListLongMap!3889)

(assert (=> bm!25056 (= call!25057 (contains!1901 lt!132575 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!262230 () Bool)

(declare-fun e!169944 () Bool)

(assert (=> b!262230 (= e!169944 (validKeyInArray!0 (select (arr!5986 lt!132408) #b00000000000000000000000000000000)))))

(declare-fun b!262232 () Bool)

(declare-fun e!169943 () Bool)

(assert (=> b!262232 (= e!169943 (= (apply!260 lt!132575 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4668 thiss!1504)))))

(declare-fun b!262233 () Bool)

(declare-fun e!169941 () ListLongMap!3889)

(assert (=> b!262233 (= e!169941 call!25060)))

(declare-fun b!262234 () Bool)

(declare-fun e!169947 () ListLongMap!3889)

(declare-fun call!25063 () ListLongMap!3889)

(assert (=> b!262234 (= e!169947 (+!701 call!25063 (tuple2!4963 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4668 thiss!1504))))))

(declare-fun c!44671 () Bool)

(declare-fun c!44669 () Bool)

(declare-fun bm!25057 () Bool)

(assert (=> bm!25057 (= call!25063 (+!701 (ite c!44671 call!25058 (ite c!44669 call!25059 call!25060)) (ite (or c!44671 c!44669) (tuple2!4963 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4668 thiss!1504)) (tuple2!4963 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4668 thiss!1504)))))))

(declare-fun b!262235 () Bool)

(declare-fun e!169949 () Bool)

(assert (=> b!262235 (= e!169949 (not call!25057))))

(declare-fun b!262236 () Bool)

(declare-fun e!169942 () Bool)

(assert (=> b!262236 (= e!169942 e!169943)))

(declare-fun res!128106 () Bool)

(declare-fun call!25061 () Bool)

(assert (=> b!262236 (= res!128106 call!25061)))

(assert (=> b!262236 (=> (not res!128106) (not e!169943))))

(declare-fun b!262237 () Bool)

(declare-fun e!169951 () ListLongMap!3889)

(assert (=> b!262237 (= e!169947 e!169951)))

(assert (=> b!262237 (= c!44669 (and (not (= (bvand (extraKeys!4564 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4564 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!25058 () Bool)

(assert (=> bm!25058 (= call!25058 (getCurrentListMapNoExtraKeys!579 lt!132408 (array!12647 (store (arr!5985 (_values!4810 thiss!1504)) index!297 (ValueCellFull!2979 v!346)) (size!6336 (_values!4810 thiss!1504))) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4827 thiss!1504)))))

(declare-fun bm!25059 () Bool)

(declare-fun call!25062 () ListLongMap!3889)

(assert (=> bm!25059 (= call!25062 call!25063)))

(declare-fun d!62907 () Bool)

(declare-fun e!169950 () Bool)

(assert (=> d!62907 e!169950))

(declare-fun res!128104 () Bool)

(assert (=> d!62907 (=> (not res!128104) (not e!169950))))

(assert (=> d!62907 (= res!128104 (or (bvsge #b00000000000000000000000000000000 (size!6337 lt!132408)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6337 lt!132408)))))))

(declare-fun lt!132579 () ListLongMap!3889)

(assert (=> d!62907 (= lt!132575 lt!132579)))

(declare-fun lt!132580 () Unit!8157)

(assert (=> d!62907 (= lt!132580 e!169948)))

(declare-fun c!44672 () Bool)

(assert (=> d!62907 (= c!44672 e!169953)))

(declare-fun res!128100 () Bool)

(assert (=> d!62907 (=> (not res!128100) (not e!169953))))

(assert (=> d!62907 (= res!128100 (bvslt #b00000000000000000000000000000000 (size!6337 lt!132408)))))

(assert (=> d!62907 (= lt!132579 e!169947)))

(assert (=> d!62907 (= c!44671 (and (not (= (bvand (extraKeys!4564 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4564 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!62907 (validMask!0 (mask!11179 thiss!1504))))

(assert (=> d!62907 (= (getCurrentListMap!1483 lt!132408 (array!12647 (store (arr!5985 (_values!4810 thiss!1504)) index!297 (ValueCellFull!2979 v!346)) (size!6336 (_values!4810 thiss!1504))) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4827 thiss!1504)) lt!132575)))

(declare-fun b!262231 () Bool)

(assert (=> b!262231 (= e!169950 e!169942)))

(declare-fun c!44670 () Bool)

(assert (=> b!262231 (= c!44670 (not (= (bvand (extraKeys!4564 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!262238 () Bool)

(assert (=> b!262238 (= e!169941 call!25062)))

(declare-fun b!262239 () Bool)

(declare-fun e!169952 () Bool)

(assert (=> b!262239 (= e!169949 e!169952)))

(declare-fun res!128102 () Bool)

(assert (=> b!262239 (= res!128102 call!25057)))

(assert (=> b!262239 (=> (not res!128102) (not e!169952))))

(declare-fun b!262240 () Bool)

(assert (=> b!262240 (= e!169951 call!25062)))

(declare-fun b!262241 () Bool)

(declare-fun c!44673 () Bool)

(assert (=> b!262241 (= c!44673 (and (not (= (bvand (extraKeys!4564 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4564 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!262241 (= e!169951 e!169941)))

(declare-fun b!262242 () Bool)

(declare-fun e!169945 () Bool)

(declare-fun e!169946 () Bool)

(assert (=> b!262242 (= e!169945 e!169946)))

(declare-fun res!128099 () Bool)

(assert (=> b!262242 (=> (not res!128099) (not e!169946))))

(assert (=> b!262242 (= res!128099 (contains!1901 lt!132575 (select (arr!5986 lt!132408) #b00000000000000000000000000000000)))))

(assert (=> b!262242 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6337 lt!132408)))))

(declare-fun b!262243 () Bool)

(declare-fun res!128105 () Bool)

(assert (=> b!262243 (=> (not res!128105) (not e!169950))))

(assert (=> b!262243 (= res!128105 e!169949)))

(declare-fun c!44674 () Bool)

(assert (=> b!262243 (= c!44674 (not (= (bvand (extraKeys!4564 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!262244 () Bool)

(declare-fun res!128107 () Bool)

(assert (=> b!262244 (=> (not res!128107) (not e!169950))))

(assert (=> b!262244 (= res!128107 e!169945)))

(declare-fun res!128101 () Bool)

(assert (=> b!262244 (=> res!128101 e!169945)))

(assert (=> b!262244 (= res!128101 (not e!169944))))

(declare-fun res!128103 () Bool)

(assert (=> b!262244 (=> (not res!128103) (not e!169944))))

(assert (=> b!262244 (= res!128103 (bvslt #b00000000000000000000000000000000 (size!6337 lt!132408)))))

(declare-fun b!262245 () Bool)

(assert (=> b!262245 (= e!169952 (= (apply!260 lt!132575 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4668 thiss!1504)))))

(declare-fun b!262246 () Bool)

(assert (=> b!262246 (= e!169942 (not call!25061))))

(declare-fun bm!25060 () Bool)

(assert (=> bm!25060 (= call!25061 (contains!1901 lt!132575 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!262247 () Bool)

(assert (=> b!262247 (= e!169946 (= (apply!260 lt!132575 (select (arr!5986 lt!132408) #b00000000000000000000000000000000)) (get!3088 (select (arr!5985 (array!12647 (store (arr!5985 (_values!4810 thiss!1504)) index!297 (ValueCellFull!2979 v!346)) (size!6336 (_values!4810 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!598 (defaultEntry!4827 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!262247 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6336 (array!12647 (store (arr!5985 (_values!4810 thiss!1504)) index!297 (ValueCellFull!2979 v!346)) (size!6336 (_values!4810 thiss!1504))))))))

(assert (=> b!262247 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6337 lt!132408)))))

(assert (= (and d!62907 c!44671) b!262234))

(assert (= (and d!62907 (not c!44671)) b!262237))

(assert (= (and b!262237 c!44669) b!262240))

(assert (= (and b!262237 (not c!44669)) b!262241))

(assert (= (and b!262241 c!44673) b!262238))

(assert (= (and b!262241 (not c!44673)) b!262233))

(assert (= (or b!262238 b!262233) bm!25054))

(assert (= (or b!262240 bm!25054) bm!25055))

(assert (= (or b!262240 b!262238) bm!25059))

(assert (= (or b!262234 bm!25055) bm!25058))

(assert (= (or b!262234 bm!25059) bm!25057))

(assert (= (and d!62907 res!128100) b!262227))

(assert (= (and d!62907 c!44672) b!262229))

(assert (= (and d!62907 (not c!44672)) b!262228))

(assert (= (and d!62907 res!128104) b!262244))

(assert (= (and b!262244 res!128103) b!262230))

(assert (= (and b!262244 (not res!128101)) b!262242))

(assert (= (and b!262242 res!128099) b!262247))

(assert (= (and b!262244 res!128107) b!262243))

(assert (= (and b!262243 c!44674) b!262239))

(assert (= (and b!262243 (not c!44674)) b!262235))

(assert (= (and b!262239 res!128102) b!262245))

(assert (= (or b!262239 b!262235) bm!25056))

(assert (= (and b!262243 res!128105) b!262231))

(assert (= (and b!262231 c!44670) b!262236))

(assert (= (and b!262231 (not c!44670)) b!262246))

(assert (= (and b!262236 res!128106) b!262232))

(assert (= (or b!262236 b!262246) bm!25060))

(declare-fun b_lambda!8347 () Bool)

(assert (=> (not b_lambda!8347) (not b!262247)))

(assert (=> b!262247 t!8948))

(declare-fun b_and!13941 () Bool)

(assert (= b_and!13939 (and (=> t!8948 result!5429) b_and!13941)))

(assert (=> b!262247 m!278263))

(assert (=> b!262247 m!278323))

(declare-fun m!278351 () Bool)

(assert (=> b!262247 m!278351))

(assert (=> b!262247 m!278351))

(assert (=> b!262247 m!278263))

(declare-fun m!278353 () Bool)

(assert (=> b!262247 m!278353))

(assert (=> b!262247 m!278323))

(declare-fun m!278355 () Bool)

(assert (=> b!262247 m!278355))

(declare-fun m!278357 () Bool)

(assert (=> b!262229 m!278357))

(declare-fun m!278359 () Bool)

(assert (=> b!262229 m!278359))

(declare-fun m!278361 () Bool)

(assert (=> b!262229 m!278361))

(declare-fun m!278363 () Bool)

(assert (=> b!262229 m!278363))

(declare-fun m!278365 () Bool)

(assert (=> b!262229 m!278365))

(declare-fun m!278367 () Bool)

(assert (=> b!262229 m!278367))

(declare-fun m!278369 () Bool)

(assert (=> b!262229 m!278369))

(declare-fun m!278371 () Bool)

(assert (=> b!262229 m!278371))

(declare-fun m!278373 () Bool)

(assert (=> b!262229 m!278373))

(declare-fun m!278375 () Bool)

(assert (=> b!262229 m!278375))

(assert (=> b!262229 m!278361))

(declare-fun m!278377 () Bool)

(assert (=> b!262229 m!278377))

(declare-fun m!278379 () Bool)

(assert (=> b!262229 m!278379))

(declare-fun m!278381 () Bool)

(assert (=> b!262229 m!278381))

(assert (=> b!262229 m!278323))

(assert (=> b!262229 m!278375))

(declare-fun m!278383 () Bool)

(assert (=> b!262229 m!278383))

(declare-fun m!278385 () Bool)

(assert (=> b!262229 m!278385))

(assert (=> b!262229 m!278377))

(declare-fun m!278387 () Bool)

(assert (=> b!262229 m!278387))

(assert (=> b!262229 m!278371))

(declare-fun m!278389 () Bool)

(assert (=> bm!25060 m!278389))

(assert (=> b!262227 m!278323))

(assert (=> b!262227 m!278323))

(assert (=> b!262227 m!278331))

(declare-fun m!278391 () Bool)

(assert (=> b!262234 m!278391))

(declare-fun m!278393 () Bool)

(assert (=> bm!25056 m!278393))

(declare-fun m!278395 () Bool)

(assert (=> b!262232 m!278395))

(assert (=> bm!25058 m!278385))

(assert (=> d!62907 m!278123))

(assert (=> b!262230 m!278323))

(assert (=> b!262230 m!278323))

(assert (=> b!262230 m!278331))

(declare-fun m!278397 () Bool)

(assert (=> b!262245 m!278397))

(declare-fun m!278399 () Bool)

(assert (=> bm!25057 m!278399))

(assert (=> b!262242 m!278323))

(assert (=> b!262242 m!278323))

(declare-fun m!278401 () Bool)

(assert (=> b!262242 m!278401))

(assert (=> b!261998 d!62907))

(declare-fun b!262257 () Bool)

(declare-fun e!169958 () (_ BitVec 32))

(declare-fun call!25066 () (_ BitVec 32))

(assert (=> b!262257 (= e!169958 (bvadd #b00000000000000000000000000000001 call!25066))))

(declare-fun b!262258 () Bool)

(declare-fun e!169959 () (_ BitVec 32))

(assert (=> b!262258 (= e!169959 #b00000000000000000000000000000000)))

(declare-fun d!62909 () Bool)

(declare-fun lt!132593 () (_ BitVec 32))

(assert (=> d!62909 (and (bvsge lt!132593 #b00000000000000000000000000000000) (bvsle lt!132593 (bvsub (size!6337 lt!132408) index!297)))))

(assert (=> d!62909 (= lt!132593 e!169959)))

(declare-fun c!44680 () Bool)

(assert (=> d!62909 (= c!44680 (bvsge index!297 (bvadd #b00000000000000000000000000000001 index!297)))))

(assert (=> d!62909 (and (bvsle index!297 (bvadd #b00000000000000000000000000000001 index!297)) (bvsge index!297 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 index!297) (size!6337 lt!132408)))))

(assert (=> d!62909 (= (arrayCountValidKeys!0 lt!132408 index!297 (bvadd #b00000000000000000000000000000001 index!297)) lt!132593)))

(declare-fun b!262256 () Bool)

(assert (=> b!262256 (= e!169959 e!169958)))

(declare-fun c!44679 () Bool)

(assert (=> b!262256 (= c!44679 (validKeyInArray!0 (select (arr!5986 lt!132408) index!297)))))

(declare-fun bm!25063 () Bool)

(assert (=> bm!25063 (= call!25066 (arrayCountValidKeys!0 lt!132408 (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)))))

(declare-fun b!262259 () Bool)

(assert (=> b!262259 (= e!169958 call!25066)))

(assert (= (and d!62909 c!44680) b!262258))

(assert (= (and d!62909 (not c!44680)) b!262256))

(assert (= (and b!262256 c!44679) b!262257))

(assert (= (and b!262256 (not c!44679)) b!262259))

(assert (= (or b!262257 b!262259) bm!25063))

(declare-fun m!278403 () Bool)

(assert (=> b!262256 m!278403))

(assert (=> b!262256 m!278403))

(declare-fun m!278405 () Bool)

(assert (=> b!262256 m!278405))

(declare-fun m!278407 () Bool)

(assert (=> bm!25063 m!278407))

(assert (=> b!261998 d!62909))

(declare-fun d!62911 () Bool)

(assert (=> d!62911 (= (arrayCountValidKeys!0 lt!132408 index!297 (bvadd index!297 #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lt!132596 () Unit!8157)

(declare-fun choose!2 (array!12648 (_ BitVec 32)) Unit!8157)

(assert (=> d!62911 (= lt!132596 (choose!2 lt!132408 index!297))))

(declare-fun e!169962 () Bool)

(assert (=> d!62911 e!169962))

(declare-fun res!128112 () Bool)

(assert (=> d!62911 (=> (not res!128112) (not e!169962))))

(assert (=> d!62911 (= res!128112 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6337 lt!132408))))))

(assert (=> d!62911 (= (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!132408 index!297) lt!132596)))

(declare-fun b!262264 () Bool)

(declare-fun res!128113 () Bool)

(assert (=> b!262264 (=> (not res!128113) (not e!169962))))

(assert (=> b!262264 (= res!128113 (validKeyInArray!0 (select (arr!5986 lt!132408) index!297)))))

(declare-fun b!262265 () Bool)

(assert (=> b!262265 (= e!169962 (bvslt (size!6337 lt!132408) #b01111111111111111111111111111111))))

(assert (= (and d!62911 res!128112) b!262264))

(assert (= (and b!262264 res!128113) b!262265))

(declare-fun m!278409 () Bool)

(assert (=> d!62911 m!278409))

(declare-fun m!278411 () Bool)

(assert (=> d!62911 m!278411))

(assert (=> b!262264 m!278403))

(assert (=> b!262264 m!278403))

(assert (=> b!262264 m!278405))

(assert (=> b!261998 d!62911))

(declare-fun d!62913 () Bool)

(assert (=> d!62913 (arrayContainsKey!0 lt!132408 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!132599 () Unit!8157)

(declare-fun choose!13 (array!12648 (_ BitVec 64) (_ BitVec 32)) Unit!8157)

(assert (=> d!62913 (= lt!132599 (choose!13 lt!132408 key!932 index!297))))

(assert (=> d!62913 (bvsge index!297 #b00000000000000000000000000000000)))

(assert (=> d!62913 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!132408 key!932 index!297) lt!132599)))

(declare-fun bs!9238 () Bool)

(assert (= bs!9238 d!62913))

(assert (=> bs!9238 m!278137))

(declare-fun m!278413 () Bool)

(assert (=> bs!9238 m!278413))

(assert (=> b!261998 d!62913))

(declare-fun d!62915 () Bool)

(declare-fun e!169965 () Bool)

(assert (=> d!62915 e!169965))

(declare-fun res!128116 () Bool)

(assert (=> d!62915 (=> (not res!128116) (not e!169965))))

(assert (=> d!62915 (= res!128116 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6337 (_keys!7015 thiss!1504)))))))

(declare-fun lt!132602 () Unit!8157)

(declare-fun choose!41 (array!12648 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3863) Unit!8157)

(assert (=> d!62915 (= lt!132602 (choose!41 (_keys!7015 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3860))))

(assert (=> d!62915 (bvslt (size!6337 (_keys!7015 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!62915 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!7015 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3860) lt!132602)))

(declare-fun b!262268 () Bool)

(assert (=> b!262268 (= e!169965 (arrayNoDuplicates!0 (array!12649 (store (arr!5986 (_keys!7015 thiss!1504)) index!297 key!932) (size!6337 (_keys!7015 thiss!1504))) #b00000000000000000000000000000000 Nil!3860))))

(assert (= (and d!62915 res!128116) b!262268))

(declare-fun m!278415 () Bool)

(assert (=> d!62915 m!278415))

(assert (=> b!262268 m!278153))

(declare-fun m!278417 () Bool)

(assert (=> b!262268 m!278417))

(assert (=> b!261998 d!62915))

(assert (=> b!261998 d!62893))

(declare-fun b!262270 () Bool)

(declare-fun e!169966 () (_ BitVec 32))

(declare-fun call!25067 () (_ BitVec 32))

(assert (=> b!262270 (= e!169966 (bvadd #b00000000000000000000000000000001 call!25067))))

(declare-fun b!262271 () Bool)

(declare-fun e!169967 () (_ BitVec 32))

(assert (=> b!262271 (= e!169967 #b00000000000000000000000000000000)))

(declare-fun d!62917 () Bool)

(declare-fun lt!132603 () (_ BitVec 32))

(assert (=> d!62917 (and (bvsge lt!132603 #b00000000000000000000000000000000) (bvsle lt!132603 (bvsub (size!6337 lt!132408) #b00000000000000000000000000000000)))))

(assert (=> d!62917 (= lt!132603 e!169967)))

(declare-fun c!44682 () Bool)

(assert (=> d!62917 (= c!44682 (bvsge #b00000000000000000000000000000000 (size!6337 (_keys!7015 thiss!1504))))))

(assert (=> d!62917 (and (bvsle #b00000000000000000000000000000000 (size!6337 (_keys!7015 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6337 (_keys!7015 thiss!1504)) (size!6337 lt!132408)))))

(assert (=> d!62917 (= (arrayCountValidKeys!0 lt!132408 #b00000000000000000000000000000000 (size!6337 (_keys!7015 thiss!1504))) lt!132603)))

(declare-fun b!262269 () Bool)

(assert (=> b!262269 (= e!169967 e!169966)))

(declare-fun c!44681 () Bool)

(assert (=> b!262269 (= c!44681 (validKeyInArray!0 (select (arr!5986 lt!132408) #b00000000000000000000000000000000)))))

(declare-fun bm!25064 () Bool)

(assert (=> bm!25064 (= call!25067 (arrayCountValidKeys!0 lt!132408 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6337 (_keys!7015 thiss!1504))))))

(declare-fun b!262272 () Bool)

(assert (=> b!262272 (= e!169966 call!25067)))

(assert (= (and d!62917 c!44682) b!262271))

(assert (= (and d!62917 (not c!44682)) b!262269))

(assert (= (and b!262269 c!44681) b!262270))

(assert (= (and b!262269 (not c!44681)) b!262272))

(assert (= (or b!262270 b!262272) bm!25064))

(assert (=> b!262269 m!278323))

(assert (=> b!262269 m!278323))

(assert (=> b!262269 m!278331))

(declare-fun m!278419 () Bool)

(assert (=> bm!25064 m!278419))

(assert (=> b!261998 d!62917))

(declare-fun d!62919 () Bool)

(declare-fun e!169970 () Bool)

(assert (=> d!62919 e!169970))

(declare-fun res!128119 () Bool)

(assert (=> d!62919 (=> (not res!128119) (not e!169970))))

(assert (=> d!62919 (= res!128119 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6337 (_keys!7015 thiss!1504)))))))

(declare-fun lt!132606 () Unit!8157)

(declare-fun choose!102 ((_ BitVec 64) array!12648 (_ BitVec 32) (_ BitVec 32)) Unit!8157)

(assert (=> d!62919 (= lt!132606 (choose!102 key!932 (_keys!7015 thiss!1504) index!297 (mask!11179 thiss!1504)))))

(assert (=> d!62919 (validMask!0 (mask!11179 thiss!1504))))

(assert (=> d!62919 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!7015 thiss!1504) index!297 (mask!11179 thiss!1504)) lt!132606)))

(declare-fun b!262275 () Bool)

(assert (=> b!262275 (= e!169970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12649 (store (arr!5986 (_keys!7015 thiss!1504)) index!297 key!932) (size!6337 (_keys!7015 thiss!1504))) (mask!11179 thiss!1504)))))

(assert (= (and d!62919 res!128119) b!262275))

(declare-fun m!278421 () Bool)

(assert (=> d!62919 m!278421))

(assert (=> d!62919 m!278123))

(assert (=> b!262275 m!278153))

(declare-fun m!278423 () Bool)

(assert (=> b!262275 m!278423))

(assert (=> b!261998 d!62919))

(declare-fun b!262277 () Bool)

(declare-fun e!169971 () (_ BitVec 32))

(declare-fun call!25068 () (_ BitVec 32))

(assert (=> b!262277 (= e!169971 (bvadd #b00000000000000000000000000000001 call!25068))))

(declare-fun b!262278 () Bool)

(declare-fun e!169972 () (_ BitVec 32))

(assert (=> b!262278 (= e!169972 #b00000000000000000000000000000000)))

(declare-fun d!62921 () Bool)

(declare-fun lt!132607 () (_ BitVec 32))

(assert (=> d!62921 (and (bvsge lt!132607 #b00000000000000000000000000000000) (bvsle lt!132607 (bvsub (size!6337 (_keys!7015 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!62921 (= lt!132607 e!169972)))

(declare-fun c!44684 () Bool)

(assert (=> d!62921 (= c!44684 (bvsge #b00000000000000000000000000000000 (size!6337 (_keys!7015 thiss!1504))))))

(assert (=> d!62921 (and (bvsle #b00000000000000000000000000000000 (size!6337 (_keys!7015 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6337 (_keys!7015 thiss!1504)) (size!6337 (_keys!7015 thiss!1504))))))

(assert (=> d!62921 (= (arrayCountValidKeys!0 (_keys!7015 thiss!1504) #b00000000000000000000000000000000 (size!6337 (_keys!7015 thiss!1504))) lt!132607)))

(declare-fun b!262276 () Bool)

(assert (=> b!262276 (= e!169972 e!169971)))

(declare-fun c!44683 () Bool)

(assert (=> b!262276 (= c!44683 (validKeyInArray!0 (select (arr!5986 (_keys!7015 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!25065 () Bool)

(assert (=> bm!25065 (= call!25068 (arrayCountValidKeys!0 (_keys!7015 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6337 (_keys!7015 thiss!1504))))))

(declare-fun b!262279 () Bool)

(assert (=> b!262279 (= e!169971 call!25068)))

(assert (= (and d!62921 c!44684) b!262278))

(assert (= (and d!62921 (not c!44684)) b!262276))

(assert (= (and b!262276 c!44683) b!262277))

(assert (= (and b!262276 (not c!44683)) b!262279))

(assert (= (or b!262277 b!262279) bm!25065))

(assert (=> b!262276 m!278265))

(assert (=> b!262276 m!278265))

(assert (=> b!262276 m!278307))

(declare-fun m!278425 () Bool)

(assert (=> bm!25065 m!278425))

(assert (=> b!261998 d!62921))

(declare-fun d!62923 () Bool)

(declare-fun res!128120 () Bool)

(declare-fun e!169973 () Bool)

(assert (=> d!62923 (=> res!128120 e!169973)))

(assert (=> d!62923 (= res!128120 (= (select (arr!5986 lt!132408) #b00000000000000000000000000000000) key!932))))

(assert (=> d!62923 (= (arrayContainsKey!0 lt!132408 key!932 #b00000000000000000000000000000000) e!169973)))

(declare-fun b!262280 () Bool)

(declare-fun e!169974 () Bool)

(assert (=> b!262280 (= e!169973 e!169974)))

(declare-fun res!128121 () Bool)

(assert (=> b!262280 (=> (not res!128121) (not e!169974))))

(assert (=> b!262280 (= res!128121 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6337 lt!132408)))))

(declare-fun b!262281 () Bool)

(assert (=> b!262281 (= e!169974 (arrayContainsKey!0 lt!132408 key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!62923 (not res!128120)) b!262280))

(assert (= (and b!262280 res!128121) b!262281))

(assert (=> d!62923 m!278323))

(declare-fun m!278427 () Bool)

(assert (=> b!262281 m!278427))

(assert (=> b!261998 d!62923))

(declare-fun d!62925 () Bool)

(declare-fun res!128128 () Bool)

(declare-fun e!169986 () Bool)

(assert (=> d!62925 (=> res!128128 e!169986)))

(assert (=> d!62925 (= res!128128 (bvsge #b00000000000000000000000000000000 (size!6337 lt!132408)))))

(assert (=> d!62925 (= (arrayNoDuplicates!0 lt!132408 #b00000000000000000000000000000000 Nil!3860) e!169986)))

(declare-fun b!262292 () Bool)

(declare-fun e!169984 () Bool)

(declare-fun contains!1903 (List!3863 (_ BitVec 64)) Bool)

(assert (=> b!262292 (= e!169984 (contains!1903 Nil!3860 (select (arr!5986 lt!132408) #b00000000000000000000000000000000)))))

(declare-fun b!262293 () Bool)

(declare-fun e!169983 () Bool)

(assert (=> b!262293 (= e!169986 e!169983)))

(declare-fun res!128130 () Bool)

(assert (=> b!262293 (=> (not res!128130) (not e!169983))))

(assert (=> b!262293 (= res!128130 (not e!169984))))

(declare-fun res!128129 () Bool)

(assert (=> b!262293 (=> (not res!128129) (not e!169984))))

(assert (=> b!262293 (= res!128129 (validKeyInArray!0 (select (arr!5986 lt!132408) #b00000000000000000000000000000000)))))

(declare-fun b!262294 () Bool)

(declare-fun e!169985 () Bool)

(assert (=> b!262294 (= e!169983 e!169985)))

(declare-fun c!44687 () Bool)

(assert (=> b!262294 (= c!44687 (validKeyInArray!0 (select (arr!5986 lt!132408) #b00000000000000000000000000000000)))))

(declare-fun b!262295 () Bool)

(declare-fun call!25071 () Bool)

(assert (=> b!262295 (= e!169985 call!25071)))

(declare-fun bm!25068 () Bool)

(assert (=> bm!25068 (= call!25071 (arrayNoDuplicates!0 lt!132408 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!44687 (Cons!3859 (select (arr!5986 lt!132408) #b00000000000000000000000000000000) Nil!3860) Nil!3860)))))

(declare-fun b!262296 () Bool)

(assert (=> b!262296 (= e!169985 call!25071)))

(assert (= (and d!62925 (not res!128128)) b!262293))

(assert (= (and b!262293 res!128129) b!262292))

(assert (= (and b!262293 res!128130) b!262294))

(assert (= (and b!262294 c!44687) b!262296))

(assert (= (and b!262294 (not c!44687)) b!262295))

(assert (= (or b!262296 b!262295) bm!25068))

(assert (=> b!262292 m!278323))

(assert (=> b!262292 m!278323))

(declare-fun m!278429 () Bool)

(assert (=> b!262292 m!278429))

(assert (=> b!262293 m!278323))

(assert (=> b!262293 m!278323))

(assert (=> b!262293 m!278331))

(assert (=> b!262294 m!278323))

(assert (=> b!262294 m!278323))

(assert (=> b!262294 m!278331))

(assert (=> bm!25068 m!278323))

(declare-fun m!278431 () Bool)

(assert (=> bm!25068 m!278431))

(assert (=> b!261998 d!62925))

(declare-fun d!62927 () Bool)

(declare-fun e!169989 () Bool)

(assert (=> d!62927 e!169989))

(declare-fun res!128136 () Bool)

(assert (=> d!62927 (=> (not res!128136) (not e!169989))))

(declare-fun lt!132618 () ListLongMap!3889)

(assert (=> d!62927 (= res!128136 (contains!1901 lt!132618 (_1!2491 (tuple2!4963 key!932 v!346))))))

(declare-fun lt!132619 () List!3862)

(assert (=> d!62927 (= lt!132618 (ListLongMap!3890 lt!132619))))

(declare-fun lt!132617 () Unit!8157)

(declare-fun lt!132616 () Unit!8157)

(assert (=> d!62927 (= lt!132617 lt!132616)))

(assert (=> d!62927 (= (getValueByKey!317 lt!132619 (_1!2491 (tuple2!4963 key!932 v!346))) (Some!322 (_2!2491 (tuple2!4963 key!932 v!346))))))

(declare-fun lemmaContainsTupThenGetReturnValue!175 (List!3862 (_ BitVec 64) V!8507) Unit!8157)

(assert (=> d!62927 (= lt!132616 (lemmaContainsTupThenGetReturnValue!175 lt!132619 (_1!2491 (tuple2!4963 key!932 v!346)) (_2!2491 (tuple2!4963 key!932 v!346))))))

(declare-fun insertStrictlySorted!177 (List!3862 (_ BitVec 64) V!8507) List!3862)

(assert (=> d!62927 (= lt!132619 (insertStrictlySorted!177 (toList!1960 lt!132406) (_1!2491 (tuple2!4963 key!932 v!346)) (_2!2491 (tuple2!4963 key!932 v!346))))))

(assert (=> d!62927 (= (+!701 lt!132406 (tuple2!4963 key!932 v!346)) lt!132618)))

(declare-fun b!262301 () Bool)

(declare-fun res!128135 () Bool)

(assert (=> b!262301 (=> (not res!128135) (not e!169989))))

(assert (=> b!262301 (= res!128135 (= (getValueByKey!317 (toList!1960 lt!132618) (_1!2491 (tuple2!4963 key!932 v!346))) (Some!322 (_2!2491 (tuple2!4963 key!932 v!346)))))))

(declare-fun b!262302 () Bool)

(declare-fun contains!1904 (List!3862 tuple2!4962) Bool)

(assert (=> b!262302 (= e!169989 (contains!1904 (toList!1960 lt!132618) (tuple2!4963 key!932 v!346)))))

(assert (= (and d!62927 res!128136) b!262301))

(assert (= (and b!262301 res!128135) b!262302))

(declare-fun m!278433 () Bool)

(assert (=> d!62927 m!278433))

(declare-fun m!278435 () Bool)

(assert (=> d!62927 m!278435))

(declare-fun m!278437 () Bool)

(assert (=> d!62927 m!278437))

(declare-fun m!278439 () Bool)

(assert (=> d!62927 m!278439))

(declare-fun m!278441 () Bool)

(assert (=> b!262301 m!278441))

(declare-fun m!278443 () Bool)

(assert (=> b!262302 m!278443))

(assert (=> b!261998 d!62927))

(declare-fun d!62929 () Bool)

(declare-fun e!169992 () Bool)

(assert (=> d!62929 e!169992))

(declare-fun res!128142 () Bool)

(assert (=> d!62929 (=> (not res!128142) (not e!169992))))

(declare-fun lt!132624 () SeekEntryResult!1204)

(assert (=> d!62929 (= res!128142 ((_ is Found!1204) lt!132624))))

(assert (=> d!62929 (= lt!132624 (seekEntryOrOpen!0 key!932 (_keys!7015 thiss!1504) (mask!11179 thiss!1504)))))

(declare-fun lt!132625 () Unit!8157)

(declare-fun choose!1290 (array!12648 array!12646 (_ BitVec 32) (_ BitVec 32) V!8507 V!8507 (_ BitVec 64) Int) Unit!8157)

(assert (=> d!62929 (= lt!132625 (choose!1290 (_keys!7015 thiss!1504) (_values!4810 thiss!1504) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) key!932 (defaultEntry!4827 thiss!1504)))))

(assert (=> d!62929 (validMask!0 (mask!11179 thiss!1504))))

(assert (=> d!62929 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!452 (_keys!7015 thiss!1504) (_values!4810 thiss!1504) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) key!932 (defaultEntry!4827 thiss!1504)) lt!132625)))

(declare-fun b!262307 () Bool)

(declare-fun res!128141 () Bool)

(assert (=> b!262307 (=> (not res!128141) (not e!169992))))

(assert (=> b!262307 (= res!128141 (inRange!0 (index!6987 lt!132624) (mask!11179 thiss!1504)))))

(declare-fun b!262308 () Bool)

(assert (=> b!262308 (= e!169992 (= (select (arr!5986 (_keys!7015 thiss!1504)) (index!6987 lt!132624)) key!932))))

(assert (=> b!262308 (and (bvsge (index!6987 lt!132624) #b00000000000000000000000000000000) (bvslt (index!6987 lt!132624) (size!6337 (_keys!7015 thiss!1504))))))

(assert (= (and d!62929 res!128142) b!262307))

(assert (= (and b!262307 res!128141) b!262308))

(assert (=> d!62929 m!278105))

(declare-fun m!278445 () Bool)

(assert (=> d!62929 m!278445))

(assert (=> d!62929 m!278123))

(declare-fun m!278447 () Bool)

(assert (=> b!262307 m!278447))

(declare-fun m!278449 () Bool)

(assert (=> b!262308 m!278449))

(assert (=> b!261985 d!62929))

(declare-fun d!62931 () Bool)

(assert (=> d!62931 (contains!1901 (getCurrentListMap!1483 (_keys!7015 thiss!1504) (_values!4810 thiss!1504) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4827 thiss!1504)) key!932)))

(declare-fun lt!132628 () Unit!8157)

(declare-fun choose!1291 (array!12648 array!12646 (_ BitVec 32) (_ BitVec 32) V!8507 V!8507 (_ BitVec 64) (_ BitVec 32) Int) Unit!8157)

(assert (=> d!62931 (= lt!132628 (choose!1291 (_keys!7015 thiss!1504) (_values!4810 thiss!1504) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4827 thiss!1504)))))

(assert (=> d!62931 (validMask!0 (mask!11179 thiss!1504))))

(assert (=> d!62931 (= (lemmaArrayContainsKeyThenInListMap!258 (_keys!7015 thiss!1504) (_values!4810 thiss!1504) (mask!11179 thiss!1504) (extraKeys!4564 thiss!1504) (zeroValue!4668 thiss!1504) (minValue!4668 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4827 thiss!1504)) lt!132628)))

(declare-fun bs!9239 () Bool)

(assert (= bs!9239 d!62931))

(assert (=> bs!9239 m!278115))

(assert (=> bs!9239 m!278115))

(declare-fun m!278451 () Bool)

(assert (=> bs!9239 m!278451))

(declare-fun m!278453 () Bool)

(assert (=> bs!9239 m!278453))

(assert (=> bs!9239 m!278123))

(assert (=> b!262002 d!62931))

(declare-fun condMapEmpty!11332 () Bool)

(declare-fun mapDefault!11332 () ValueCell!2979)

(assert (=> mapNonEmpty!11326 (= condMapEmpty!11332 (= mapRest!11326 ((as const (Array (_ BitVec 32) ValueCell!2979)) mapDefault!11332)))))

(declare-fun e!169997 () Bool)

(declare-fun mapRes!11332 () Bool)

(assert (=> mapNonEmpty!11326 (= tp!23679 (and e!169997 mapRes!11332))))

(declare-fun b!262315 () Bool)

(declare-fun e!169998 () Bool)

(assert (=> b!262315 (= e!169998 tp_is_empty!6645)))

(declare-fun mapIsEmpty!11332 () Bool)

(assert (=> mapIsEmpty!11332 mapRes!11332))

(declare-fun b!262316 () Bool)

(assert (=> b!262316 (= e!169997 tp_is_empty!6645)))

(declare-fun mapNonEmpty!11332 () Bool)

(declare-fun tp!23689 () Bool)

(assert (=> mapNonEmpty!11332 (= mapRes!11332 (and tp!23689 e!169998))))

(declare-fun mapRest!11332 () (Array (_ BitVec 32) ValueCell!2979))

(declare-fun mapValue!11332 () ValueCell!2979)

(declare-fun mapKey!11332 () (_ BitVec 32))

(assert (=> mapNonEmpty!11332 (= mapRest!11326 (store mapRest!11332 mapKey!11332 mapValue!11332))))

(assert (= (and mapNonEmpty!11326 condMapEmpty!11332) mapIsEmpty!11332))

(assert (= (and mapNonEmpty!11326 (not condMapEmpty!11332)) mapNonEmpty!11332))

(assert (= (and mapNonEmpty!11332 ((_ is ValueCellFull!2979) mapValue!11332)) b!262315))

(assert (= (and mapNonEmpty!11326 ((_ is ValueCellFull!2979) mapDefault!11332)) b!262316))

(declare-fun m!278455 () Bool)

(assert (=> mapNonEmpty!11332 m!278455))

(declare-fun b_lambda!8349 () Bool)

(assert (= b_lambda!8347 (or (and b!261991 b_free!6783) b_lambda!8349)))

(declare-fun b_lambda!8351 () Bool)

(assert (= b_lambda!8345 (or (and b!261991 b_free!6783) b_lambda!8351)))

(check-sat (not bm!25048) (not b!262191) (not b!262221) (not bm!25056) (not b!262173) (not b!262256) (not b!262126) (not b!262276) (not bm!25047) (not b_next!6783) (not b!262220) (not b!262234) (not d!62919) (not b!262292) (not d!62915) (not bm!25028) (not b!262176) tp_is_empty!6645 (not d!62889) (not bm!25050) (not b_lambda!8349) (not d!62883) (not d!62911) (not d!62891) (not bm!25053) (not bm!25046) (not b!262242) (not d!62879) (not b!262227) (not d!62927) (not d!62907) (not d!62913) (not d!62931) (not bm!25057) (not b!262119) (not b!262293) (not b!262275) (not bm!25065) (not b!262302) (not b!262189) (not b!262128) (not b!262208) (not d!62903) (not b!262174) (not b!262268) (not bm!25064) (not d!62929) (not bm!25063) (not b!262281) (not b!262264) (not b!262229) (not bm!25058) (not b!262186) (not b!262209) (not d!62881) (not b!262232) (not b!262171) (not b!262075) (not b!262223) (not bm!25068) (not b!262076) (not bm!25060) (not b!262199) (not b!262301) (not b!262247) (not b!262178) (not bm!25029) (not b!262269) (not b!262226) (not b!262230) (not b!262307) (not mapNonEmpty!11332) (not b!262294) (not b!262077) (not b_lambda!8351) b_and!13941 (not d!62901) (not b!262245))
(check-sat b_and!13941 (not b_next!6783))
