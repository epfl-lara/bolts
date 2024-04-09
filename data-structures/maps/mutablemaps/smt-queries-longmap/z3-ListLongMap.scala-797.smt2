; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19148 () Bool)

(assert start!19148)

(declare-fun b!188252 () Bool)

(declare-fun b_free!4623 () Bool)

(declare-fun b_next!4623 () Bool)

(assert (=> b!188252 (= b_free!4623 (not b_next!4623))))

(declare-fun tp!16689 () Bool)

(declare-fun b_and!11271 () Bool)

(assert (=> b!188252 (= tp!16689 b_and!11271)))

(declare-fun b!188250 () Bool)

(declare-fun res!89007 () Bool)

(declare-fun e!123906 () Bool)

(assert (=> b!188250 (=> (not res!89007) (not e!123906))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!188250 (= res!89007 (not (= key!828 (bvneg key!828))))))

(declare-fun b!188251 () Bool)

(declare-datatypes ((Unit!5673 0))(
  ( (Unit!5674) )
))
(declare-fun e!123905 () Unit!5673)

(declare-fun Unit!5675 () Unit!5673)

(assert (=> b!188251 (= e!123905 Unit!5675)))

(declare-fun lt!93206 () Unit!5673)

(declare-datatypes ((V!5507 0))(
  ( (V!5508 (val!2242 Int)) )
))
(declare-datatypes ((ValueCell!1854 0))(
  ( (ValueCellFull!1854 (v!4155 V!5507)) (EmptyCell!1854) )
))
(declare-datatypes ((array!8010 0))(
  ( (array!8011 (arr!3778 (Array (_ BitVec 32) (_ BitVec 64))) (size!4098 (_ BitVec 32))) )
))
(declare-datatypes ((array!8012 0))(
  ( (array!8013 (arr!3779 (Array (_ BitVec 32) ValueCell!1854)) (size!4099 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2616 0))(
  ( (LongMapFixedSize!2617 (defaultEntry!3840 Int) (mask!9003 (_ BitVec 32)) (extraKeys!3577 (_ BitVec 32)) (zeroValue!3681 V!5507) (minValue!3681 V!5507) (_size!1357 (_ BitVec 32)) (_keys!5799 array!8010) (_values!3823 array!8012) (_vacant!1357 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2616)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!157 (array!8010 array!8012 (_ BitVec 32) (_ BitVec 32) V!5507 V!5507 (_ BitVec 64) Int) Unit!5673)

(assert (=> b!188251 (= lt!93206 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!157 (_keys!5799 thiss!1248) (_values!3823 thiss!1248) (mask!9003 thiss!1248) (extraKeys!3577 thiss!1248) (zeroValue!3681 thiss!1248) (minValue!3681 thiss!1248) key!828 (defaultEntry!3840 thiss!1248)))))

(assert (=> b!188251 false))

(declare-fun e!123900 () Bool)

(declare-fun e!123908 () Bool)

(declare-fun tp_is_empty!4395 () Bool)

(declare-fun array_inv!2437 (array!8010) Bool)

(declare-fun array_inv!2438 (array!8012) Bool)

(assert (=> b!188252 (= e!123900 (and tp!16689 tp_is_empty!4395 (array_inv!2437 (_keys!5799 thiss!1248)) (array_inv!2438 (_values!3823 thiss!1248)) e!123908))))

(declare-fun b!188253 () Bool)

(declare-fun e!123901 () Bool)

(assert (=> b!188253 (= e!123901 tp_is_empty!4395)))

(declare-fun b!188254 () Bool)

(declare-fun res!89008 () Bool)

(declare-fun e!123903 () Bool)

(assert (=> b!188254 (=> (not res!89008) (not e!123903))))

(assert (=> b!188254 (= res!89008 (and (= (size!4099 (_values!3823 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9003 thiss!1248))) (= (size!4098 (_keys!5799 thiss!1248)) (size!4099 (_values!3823 thiss!1248))) (bvsge (mask!9003 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3577 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3577 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!7576 () Bool)

(declare-fun mapRes!7576 () Bool)

(declare-fun tp!16690 () Bool)

(assert (=> mapNonEmpty!7576 (= mapRes!7576 (and tp!16690 e!123901))))

(declare-fun mapRest!7576 () (Array (_ BitVec 32) ValueCell!1854))

(declare-fun mapValue!7576 () ValueCell!1854)

(declare-fun mapKey!7576 () (_ BitVec 32))

(assert (=> mapNonEmpty!7576 (= (arr!3779 (_values!3823 thiss!1248)) (store mapRest!7576 mapKey!7576 mapValue!7576))))

(declare-fun b!188255 () Bool)

(declare-fun lt!93205 () Unit!5673)

(assert (=> b!188255 (= e!123905 lt!93205)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!156 (array!8010 array!8012 (_ BitVec 32) (_ BitVec 32) V!5507 V!5507 (_ BitVec 64) Int) Unit!5673)

(assert (=> b!188255 (= lt!93205 (lemmaInListMapThenSeekEntryOrOpenFindsIt!156 (_keys!5799 thiss!1248) (_values!3823 thiss!1248) (mask!9003 thiss!1248) (extraKeys!3577 thiss!1248) (zeroValue!3681 thiss!1248) (minValue!3681 thiss!1248) key!828 (defaultEntry!3840 thiss!1248)))))

(declare-fun res!89011 () Bool)

(declare-datatypes ((SeekEntryResult!663 0))(
  ( (MissingZero!663 (index!4822 (_ BitVec 32))) (Found!663 (index!4823 (_ BitVec 32))) (Intermediate!663 (undefined!1475 Bool) (index!4824 (_ BitVec 32)) (x!20349 (_ BitVec 32))) (Undefined!663) (MissingVacant!663 (index!4825 (_ BitVec 32))) )
))
(declare-fun lt!93204 () SeekEntryResult!663)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!188255 (= res!89011 (inRange!0 (index!4823 lt!93204) (mask!9003 thiss!1248)))))

(declare-fun e!123899 () Bool)

(assert (=> b!188255 (=> (not res!89011) (not e!123899))))

(assert (=> b!188255 e!123899))

(declare-fun mapIsEmpty!7576 () Bool)

(assert (=> mapIsEmpty!7576 mapRes!7576))

(declare-fun res!89009 () Bool)

(assert (=> start!19148 (=> (not res!89009) (not e!123906))))

(declare-fun valid!1069 (LongMapFixedSize!2616) Bool)

(assert (=> start!19148 (= res!89009 (valid!1069 thiss!1248))))

(assert (=> start!19148 e!123906))

(assert (=> start!19148 e!123900))

(assert (=> start!19148 true))

(declare-fun b!188256 () Bool)

(declare-fun e!123902 () Bool)

(assert (=> b!188256 (= e!123906 e!123902)))

(declare-fun res!89010 () Bool)

(assert (=> b!188256 (=> (not res!89010) (not e!123902))))

(get-info :version)

(assert (=> b!188256 (= res!89010 (and (not ((_ is Undefined!663) lt!93204)) (not ((_ is MissingVacant!663) lt!93204)) (not ((_ is MissingZero!663) lt!93204)) ((_ is Found!663) lt!93204)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8010 (_ BitVec 32)) SeekEntryResult!663)

(assert (=> b!188256 (= lt!93204 (seekEntryOrOpen!0 key!828 (_keys!5799 thiss!1248) (mask!9003 thiss!1248)))))

(declare-fun b!188257 () Bool)

(assert (=> b!188257 (= e!123899 (= (select (arr!3778 (_keys!5799 thiss!1248)) (index!4823 lt!93204)) key!828))))

(declare-fun b!188258 () Bool)

(assert (=> b!188258 (= e!123902 e!123903)))

(declare-fun res!89006 () Bool)

(assert (=> b!188258 (=> (not res!89006) (not e!123903))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!188258 (= res!89006 (validMask!0 (mask!9003 thiss!1248)))))

(declare-fun lt!93207 () Unit!5673)

(assert (=> b!188258 (= lt!93207 e!123905)))

(declare-fun c!33823 () Bool)

(declare-datatypes ((tuple2!3484 0))(
  ( (tuple2!3485 (_1!1752 (_ BitVec 64)) (_2!1752 V!5507)) )
))
(declare-datatypes ((List!2409 0))(
  ( (Nil!2406) (Cons!2405 (h!3042 tuple2!3484) (t!7313 List!2409)) )
))
(declare-datatypes ((ListLongMap!2415 0))(
  ( (ListLongMap!2416 (toList!1223 List!2409)) )
))
(declare-fun contains!1321 (ListLongMap!2415 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!866 (array!8010 array!8012 (_ BitVec 32) (_ BitVec 32) V!5507 V!5507 (_ BitVec 32) Int) ListLongMap!2415)

(assert (=> b!188258 (= c!33823 (contains!1321 (getCurrentListMap!866 (_keys!5799 thiss!1248) (_values!3823 thiss!1248) (mask!9003 thiss!1248) (extraKeys!3577 thiss!1248) (zeroValue!3681 thiss!1248) (minValue!3681 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3840 thiss!1248)) key!828))))

(declare-fun b!188259 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8010 (_ BitVec 32)) Bool)

(assert (=> b!188259 (= e!123903 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5799 thiss!1248) (mask!9003 thiss!1248))))))

(declare-fun b!188260 () Bool)

(declare-fun e!123904 () Bool)

(assert (=> b!188260 (= e!123908 (and e!123904 mapRes!7576))))

(declare-fun condMapEmpty!7576 () Bool)

(declare-fun mapDefault!7576 () ValueCell!1854)

(assert (=> b!188260 (= condMapEmpty!7576 (= (arr!3779 (_values!3823 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1854)) mapDefault!7576)))))

(declare-fun b!188261 () Bool)

(assert (=> b!188261 (= e!123904 tp_is_empty!4395)))

(assert (= (and start!19148 res!89009) b!188250))

(assert (= (and b!188250 res!89007) b!188256))

(assert (= (and b!188256 res!89010) b!188258))

(assert (= (and b!188258 c!33823) b!188255))

(assert (= (and b!188258 (not c!33823)) b!188251))

(assert (= (and b!188255 res!89011) b!188257))

(assert (= (and b!188258 res!89006) b!188254))

(assert (= (and b!188254 res!89008) b!188259))

(assert (= (and b!188260 condMapEmpty!7576) mapIsEmpty!7576))

(assert (= (and b!188260 (not condMapEmpty!7576)) mapNonEmpty!7576))

(assert (= (and mapNonEmpty!7576 ((_ is ValueCellFull!1854) mapValue!7576)) b!188253))

(assert (= (and b!188260 ((_ is ValueCellFull!1854) mapDefault!7576)) b!188261))

(assert (= b!188252 b!188260))

(assert (= start!19148 b!188252))

(declare-fun m!214965 () Bool)

(assert (=> b!188252 m!214965))

(declare-fun m!214967 () Bool)

(assert (=> b!188252 m!214967))

(declare-fun m!214969 () Bool)

(assert (=> b!188259 m!214969))

(declare-fun m!214971 () Bool)

(assert (=> b!188255 m!214971))

(declare-fun m!214973 () Bool)

(assert (=> b!188255 m!214973))

(declare-fun m!214975 () Bool)

(assert (=> b!188251 m!214975))

(declare-fun m!214977 () Bool)

(assert (=> b!188257 m!214977))

(declare-fun m!214979 () Bool)

(assert (=> mapNonEmpty!7576 m!214979))

(declare-fun m!214981 () Bool)

(assert (=> b!188258 m!214981))

(declare-fun m!214983 () Bool)

(assert (=> b!188258 m!214983))

(assert (=> b!188258 m!214983))

(declare-fun m!214985 () Bool)

(assert (=> b!188258 m!214985))

(declare-fun m!214987 () Bool)

(assert (=> start!19148 m!214987))

(declare-fun m!214989 () Bool)

(assert (=> b!188256 m!214989))

(check-sat (not b!188251) (not b_next!4623) (not b!188259) (not b!188258) (not b!188255) (not start!19148) (not b!188256) tp_is_empty!4395 (not mapNonEmpty!7576) (not b!188252) b_and!11271)
(check-sat b_and!11271 (not b_next!4623))
(get-model)

(declare-fun b!188306 () Bool)

(declare-fun e!123945 () Bool)

(declare-fun call!18974 () Bool)

(assert (=> b!188306 (= e!123945 call!18974)))

(declare-fun b!188307 () Bool)

(declare-fun e!123946 () Bool)

(assert (=> b!188307 (= e!123946 call!18974)))

(declare-fun bm!18971 () Bool)

(assert (=> bm!18971 (= call!18974 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5799 thiss!1248) (mask!9003 thiss!1248)))))

(declare-fun b!188308 () Bool)

(assert (=> b!188308 (= e!123945 e!123946)))

(declare-fun lt!93227 () (_ BitVec 64))

(assert (=> b!188308 (= lt!93227 (select (arr!3778 (_keys!5799 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93226 () Unit!5673)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!8010 (_ BitVec 64) (_ BitVec 32)) Unit!5673)

(assert (=> b!188308 (= lt!93226 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5799 thiss!1248) lt!93227 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!8010 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!188308 (arrayContainsKey!0 (_keys!5799 thiss!1248) lt!93227 #b00000000000000000000000000000000)))

(declare-fun lt!93228 () Unit!5673)

(assert (=> b!188308 (= lt!93228 lt!93226)))

(declare-fun res!89034 () Bool)

(assert (=> b!188308 (= res!89034 (= (seekEntryOrOpen!0 (select (arr!3778 (_keys!5799 thiss!1248)) #b00000000000000000000000000000000) (_keys!5799 thiss!1248) (mask!9003 thiss!1248)) (Found!663 #b00000000000000000000000000000000)))))

(assert (=> b!188308 (=> (not res!89034) (not e!123946))))

(declare-fun d!55527 () Bool)

(declare-fun res!89035 () Bool)

(declare-fun e!123947 () Bool)

(assert (=> d!55527 (=> res!89035 e!123947)))

(assert (=> d!55527 (= res!89035 (bvsge #b00000000000000000000000000000000 (size!4098 (_keys!5799 thiss!1248))))))

(assert (=> d!55527 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5799 thiss!1248) (mask!9003 thiss!1248)) e!123947)))

(declare-fun b!188309 () Bool)

(assert (=> b!188309 (= e!123947 e!123945)))

(declare-fun c!33829 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!188309 (= c!33829 (validKeyInArray!0 (select (arr!3778 (_keys!5799 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!55527 (not res!89035)) b!188309))

(assert (= (and b!188309 c!33829) b!188308))

(assert (= (and b!188309 (not c!33829)) b!188306))

(assert (= (and b!188308 res!89034) b!188307))

(assert (= (or b!188307 b!188306) bm!18971))

(declare-fun m!215017 () Bool)

(assert (=> bm!18971 m!215017))

(declare-fun m!215019 () Bool)

(assert (=> b!188308 m!215019))

(declare-fun m!215021 () Bool)

(assert (=> b!188308 m!215021))

(declare-fun m!215023 () Bool)

(assert (=> b!188308 m!215023))

(assert (=> b!188308 m!215019))

(declare-fun m!215025 () Bool)

(assert (=> b!188308 m!215025))

(assert (=> b!188309 m!215019))

(assert (=> b!188309 m!215019))

(declare-fun m!215027 () Bool)

(assert (=> b!188309 m!215027))

(assert (=> b!188259 d!55527))

(declare-fun d!55529 () Bool)

(declare-fun e!123950 () Bool)

(assert (=> d!55529 e!123950))

(declare-fun res!89041 () Bool)

(assert (=> d!55529 (=> (not res!89041) (not e!123950))))

(declare-fun lt!93234 () SeekEntryResult!663)

(assert (=> d!55529 (= res!89041 ((_ is Found!663) lt!93234))))

(assert (=> d!55529 (= lt!93234 (seekEntryOrOpen!0 key!828 (_keys!5799 thiss!1248) (mask!9003 thiss!1248)))))

(declare-fun lt!93233 () Unit!5673)

(declare-fun choose!1014 (array!8010 array!8012 (_ BitVec 32) (_ BitVec 32) V!5507 V!5507 (_ BitVec 64) Int) Unit!5673)

(assert (=> d!55529 (= lt!93233 (choose!1014 (_keys!5799 thiss!1248) (_values!3823 thiss!1248) (mask!9003 thiss!1248) (extraKeys!3577 thiss!1248) (zeroValue!3681 thiss!1248) (minValue!3681 thiss!1248) key!828 (defaultEntry!3840 thiss!1248)))))

(assert (=> d!55529 (validMask!0 (mask!9003 thiss!1248))))

(assert (=> d!55529 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!156 (_keys!5799 thiss!1248) (_values!3823 thiss!1248) (mask!9003 thiss!1248) (extraKeys!3577 thiss!1248) (zeroValue!3681 thiss!1248) (minValue!3681 thiss!1248) key!828 (defaultEntry!3840 thiss!1248)) lt!93233)))

(declare-fun b!188314 () Bool)

(declare-fun res!89040 () Bool)

(assert (=> b!188314 (=> (not res!89040) (not e!123950))))

(assert (=> b!188314 (= res!89040 (inRange!0 (index!4823 lt!93234) (mask!9003 thiss!1248)))))

(declare-fun b!188315 () Bool)

(assert (=> b!188315 (= e!123950 (= (select (arr!3778 (_keys!5799 thiss!1248)) (index!4823 lt!93234)) key!828))))

(assert (=> b!188315 (and (bvsge (index!4823 lt!93234) #b00000000000000000000000000000000) (bvslt (index!4823 lt!93234) (size!4098 (_keys!5799 thiss!1248))))))

(assert (= (and d!55529 res!89041) b!188314))

(assert (= (and b!188314 res!89040) b!188315))

(assert (=> d!55529 m!214989))

(declare-fun m!215029 () Bool)

(assert (=> d!55529 m!215029))

(assert (=> d!55529 m!214981))

(declare-fun m!215031 () Bool)

(assert (=> b!188314 m!215031))

(declare-fun m!215033 () Bool)

(assert (=> b!188315 m!215033))

(assert (=> b!188255 d!55529))

(declare-fun d!55531 () Bool)

(assert (=> d!55531 (= (inRange!0 (index!4823 lt!93204) (mask!9003 thiss!1248)) (and (bvsge (index!4823 lt!93204) #b00000000000000000000000000000000) (bvslt (index!4823 lt!93204) (bvadd (mask!9003 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!188255 d!55531))

(declare-fun d!55533 () Bool)

(assert (=> d!55533 (= (validMask!0 (mask!9003 thiss!1248)) (and (or (= (mask!9003 thiss!1248) #b00000000000000000000000000000111) (= (mask!9003 thiss!1248) #b00000000000000000000000000001111) (= (mask!9003 thiss!1248) #b00000000000000000000000000011111) (= (mask!9003 thiss!1248) #b00000000000000000000000000111111) (= (mask!9003 thiss!1248) #b00000000000000000000000001111111) (= (mask!9003 thiss!1248) #b00000000000000000000000011111111) (= (mask!9003 thiss!1248) #b00000000000000000000000111111111) (= (mask!9003 thiss!1248) #b00000000000000000000001111111111) (= (mask!9003 thiss!1248) #b00000000000000000000011111111111) (= (mask!9003 thiss!1248) #b00000000000000000000111111111111) (= (mask!9003 thiss!1248) #b00000000000000000001111111111111) (= (mask!9003 thiss!1248) #b00000000000000000011111111111111) (= (mask!9003 thiss!1248) #b00000000000000000111111111111111) (= (mask!9003 thiss!1248) #b00000000000000001111111111111111) (= (mask!9003 thiss!1248) #b00000000000000011111111111111111) (= (mask!9003 thiss!1248) #b00000000000000111111111111111111) (= (mask!9003 thiss!1248) #b00000000000001111111111111111111) (= (mask!9003 thiss!1248) #b00000000000011111111111111111111) (= (mask!9003 thiss!1248) #b00000000000111111111111111111111) (= (mask!9003 thiss!1248) #b00000000001111111111111111111111) (= (mask!9003 thiss!1248) #b00000000011111111111111111111111) (= (mask!9003 thiss!1248) #b00000000111111111111111111111111) (= (mask!9003 thiss!1248) #b00000001111111111111111111111111) (= (mask!9003 thiss!1248) #b00000011111111111111111111111111) (= (mask!9003 thiss!1248) #b00000111111111111111111111111111) (= (mask!9003 thiss!1248) #b00001111111111111111111111111111) (= (mask!9003 thiss!1248) #b00011111111111111111111111111111) (= (mask!9003 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!9003 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!188258 d!55533))

(declare-fun d!55535 () Bool)

(declare-fun e!123955 () Bool)

(assert (=> d!55535 e!123955))

(declare-fun res!89044 () Bool)

(assert (=> d!55535 (=> res!89044 e!123955)))

(declare-fun lt!93243 () Bool)

(assert (=> d!55535 (= res!89044 (not lt!93243))))

(declare-fun lt!93245 () Bool)

(assert (=> d!55535 (= lt!93243 lt!93245)))

(declare-fun lt!93244 () Unit!5673)

(declare-fun e!123956 () Unit!5673)

(assert (=> d!55535 (= lt!93244 e!123956)))

(declare-fun c!33832 () Bool)

(assert (=> d!55535 (= c!33832 lt!93245)))

(declare-fun containsKey!233 (List!2409 (_ BitVec 64)) Bool)

(assert (=> d!55535 (= lt!93245 (containsKey!233 (toList!1223 (getCurrentListMap!866 (_keys!5799 thiss!1248) (_values!3823 thiss!1248) (mask!9003 thiss!1248) (extraKeys!3577 thiss!1248) (zeroValue!3681 thiss!1248) (minValue!3681 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3840 thiss!1248))) key!828))))

(assert (=> d!55535 (= (contains!1321 (getCurrentListMap!866 (_keys!5799 thiss!1248) (_values!3823 thiss!1248) (mask!9003 thiss!1248) (extraKeys!3577 thiss!1248) (zeroValue!3681 thiss!1248) (minValue!3681 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3840 thiss!1248)) key!828) lt!93243)))

(declare-fun b!188322 () Bool)

(declare-fun lt!93246 () Unit!5673)

(assert (=> b!188322 (= e!123956 lt!93246)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!182 (List!2409 (_ BitVec 64)) Unit!5673)

(assert (=> b!188322 (= lt!93246 (lemmaContainsKeyImpliesGetValueByKeyDefined!182 (toList!1223 (getCurrentListMap!866 (_keys!5799 thiss!1248) (_values!3823 thiss!1248) (mask!9003 thiss!1248) (extraKeys!3577 thiss!1248) (zeroValue!3681 thiss!1248) (minValue!3681 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3840 thiss!1248))) key!828))))

(declare-datatypes ((Option!235 0))(
  ( (Some!234 (v!4157 V!5507)) (None!233) )
))
(declare-fun isDefined!183 (Option!235) Bool)

(declare-fun getValueByKey!229 (List!2409 (_ BitVec 64)) Option!235)

(assert (=> b!188322 (isDefined!183 (getValueByKey!229 (toList!1223 (getCurrentListMap!866 (_keys!5799 thiss!1248) (_values!3823 thiss!1248) (mask!9003 thiss!1248) (extraKeys!3577 thiss!1248) (zeroValue!3681 thiss!1248) (minValue!3681 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3840 thiss!1248))) key!828))))

(declare-fun b!188323 () Bool)

(declare-fun Unit!5679 () Unit!5673)

(assert (=> b!188323 (= e!123956 Unit!5679)))

(declare-fun b!188324 () Bool)

(assert (=> b!188324 (= e!123955 (isDefined!183 (getValueByKey!229 (toList!1223 (getCurrentListMap!866 (_keys!5799 thiss!1248) (_values!3823 thiss!1248) (mask!9003 thiss!1248) (extraKeys!3577 thiss!1248) (zeroValue!3681 thiss!1248) (minValue!3681 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3840 thiss!1248))) key!828)))))

(assert (= (and d!55535 c!33832) b!188322))

(assert (= (and d!55535 (not c!33832)) b!188323))

(assert (= (and d!55535 (not res!89044)) b!188324))

(declare-fun m!215035 () Bool)

(assert (=> d!55535 m!215035))

(declare-fun m!215037 () Bool)

(assert (=> b!188322 m!215037))

(declare-fun m!215039 () Bool)

(assert (=> b!188322 m!215039))

(assert (=> b!188322 m!215039))

(declare-fun m!215041 () Bool)

(assert (=> b!188322 m!215041))

(assert (=> b!188324 m!215039))

(assert (=> b!188324 m!215039))

(assert (=> b!188324 m!215041))

(assert (=> b!188258 d!55535))

(declare-fun b!188367 () Bool)

(declare-fun c!33845 () Bool)

(assert (=> b!188367 (= c!33845 (and (not (= (bvand (extraKeys!3577 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3577 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!123992 () ListLongMap!2415)

(declare-fun e!123995 () ListLongMap!2415)

(assert (=> b!188367 (= e!123992 e!123995)))

(declare-fun b!188368 () Bool)

(declare-fun res!89063 () Bool)

(declare-fun e!123994 () Bool)

(assert (=> b!188368 (=> (not res!89063) (not e!123994))))

(declare-fun e!123988 () Bool)

(assert (=> b!188368 (= res!89063 e!123988)))

(declare-fun c!33847 () Bool)

(assert (=> b!188368 (= c!33847 (not (= (bvand (extraKeys!3577 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!18986 () Bool)

(declare-fun call!18990 () ListLongMap!2415)

(declare-fun call!18992 () ListLongMap!2415)

(assert (=> bm!18986 (= call!18990 call!18992)))

(declare-fun b!188369 () Bool)

(declare-fun e!123987 () Bool)

(declare-fun e!123989 () Bool)

(assert (=> b!188369 (= e!123987 e!123989)))

(declare-fun res!89064 () Bool)

(declare-fun call!18989 () Bool)

(assert (=> b!188369 (= res!89064 call!18989)))

(assert (=> b!188369 (=> (not res!89064) (not e!123989))))

(declare-fun b!188370 () Bool)

(declare-fun e!123983 () ListLongMap!2415)

(declare-fun call!18991 () ListLongMap!2415)

(declare-fun +!288 (ListLongMap!2415 tuple2!3484) ListLongMap!2415)

(assert (=> b!188370 (= e!123983 (+!288 call!18991 (tuple2!3485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3681 thiss!1248))))))

(declare-fun b!188371 () Bool)

(declare-fun e!123986 () Unit!5673)

(declare-fun Unit!5680 () Unit!5673)

(assert (=> b!188371 (= e!123986 Unit!5680)))

(declare-fun b!188372 () Bool)

(declare-fun call!18995 () ListLongMap!2415)

(assert (=> b!188372 (= e!123995 call!18995)))

(declare-fun bm!18987 () Bool)

(declare-fun call!18993 () ListLongMap!2415)

(assert (=> bm!18987 (= call!18993 call!18991)))

(declare-fun b!188374 () Bool)

(declare-fun e!123985 () Bool)

(assert (=> b!188374 (= e!123985 (validKeyInArray!0 (select (arr!3778 (_keys!5799 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!188375 () Bool)

(assert (=> b!188375 (= e!123987 (not call!18989))))

(declare-fun bm!18988 () Bool)

(declare-fun call!18994 () Bool)

(declare-fun lt!93303 () ListLongMap!2415)

(assert (=> bm!18988 (= call!18994 (contains!1321 lt!93303 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!188376 () Bool)

(declare-fun e!123990 () Bool)

(declare-fun e!123984 () Bool)

(assert (=> b!188376 (= e!123990 e!123984)))

(declare-fun res!89070 () Bool)

(assert (=> b!188376 (=> (not res!89070) (not e!123984))))

(assert (=> b!188376 (= res!89070 (contains!1321 lt!93303 (select (arr!3778 (_keys!5799 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!188376 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4098 (_keys!5799 thiss!1248))))))

(declare-fun b!188377 () Bool)

(declare-fun apply!173 (ListLongMap!2415 (_ BitVec 64)) V!5507)

(declare-fun get!2179 (ValueCell!1854 V!5507) V!5507)

(declare-fun dynLambda!511 (Int (_ BitVec 64)) V!5507)

(assert (=> b!188377 (= e!123984 (= (apply!173 lt!93303 (select (arr!3778 (_keys!5799 thiss!1248)) #b00000000000000000000000000000000)) (get!2179 (select (arr!3779 (_values!3823 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!511 (defaultEntry!3840 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!188377 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4099 (_values!3823 thiss!1248))))))

(assert (=> b!188377 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4098 (_keys!5799 thiss!1248))))))

(declare-fun b!188378 () Bool)

(assert (=> b!188378 (= e!123989 (= (apply!173 lt!93303 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3681 thiss!1248)))))

(declare-fun b!188379 () Bool)

(assert (=> b!188379 (= e!123994 e!123987)))

(declare-fun c!33848 () Bool)

(assert (=> b!188379 (= c!33848 (not (= (bvand (extraKeys!3577 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!18989 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!203 (array!8010 array!8012 (_ BitVec 32) (_ BitVec 32) V!5507 V!5507 (_ BitVec 32) Int) ListLongMap!2415)

(assert (=> bm!18989 (= call!18992 (getCurrentListMapNoExtraKeys!203 (_keys!5799 thiss!1248) (_values!3823 thiss!1248) (mask!9003 thiss!1248) (extraKeys!3577 thiss!1248) (zeroValue!3681 thiss!1248) (minValue!3681 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3840 thiss!1248)))))

(declare-fun b!188380 () Bool)

(assert (=> b!188380 (= e!123995 call!18993)))

(declare-fun c!33846 () Bool)

(declare-fun bm!18990 () Bool)

(declare-fun c!33849 () Bool)

(assert (=> bm!18990 (= call!18991 (+!288 (ite c!33846 call!18992 (ite c!33849 call!18990 call!18995)) (ite (or c!33846 c!33849) (tuple2!3485 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3681 thiss!1248)) (tuple2!3485 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3681 thiss!1248)))))))

(declare-fun b!188381 () Bool)

(assert (=> b!188381 (= e!123988 (not call!18994))))

(declare-fun b!188382 () Bool)

(assert (=> b!188382 (= e!123992 call!18993)))

(declare-fun d!55537 () Bool)

(assert (=> d!55537 e!123994))

(declare-fun res!89065 () Bool)

(assert (=> d!55537 (=> (not res!89065) (not e!123994))))

(assert (=> d!55537 (= res!89065 (or (bvsge #b00000000000000000000000000000000 (size!4098 (_keys!5799 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4098 (_keys!5799 thiss!1248))))))))

(declare-fun lt!93310 () ListLongMap!2415)

(assert (=> d!55537 (= lt!93303 lt!93310)))

(declare-fun lt!93302 () Unit!5673)

(assert (=> d!55537 (= lt!93302 e!123986)))

(declare-fun c!33850 () Bool)

(assert (=> d!55537 (= c!33850 e!123985)))

(declare-fun res!89069 () Bool)

(assert (=> d!55537 (=> (not res!89069) (not e!123985))))

(assert (=> d!55537 (= res!89069 (bvslt #b00000000000000000000000000000000 (size!4098 (_keys!5799 thiss!1248))))))

(assert (=> d!55537 (= lt!93310 e!123983)))

(assert (=> d!55537 (= c!33846 (and (not (= (bvand (extraKeys!3577 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3577 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!55537 (validMask!0 (mask!9003 thiss!1248))))

(assert (=> d!55537 (= (getCurrentListMap!866 (_keys!5799 thiss!1248) (_values!3823 thiss!1248) (mask!9003 thiss!1248) (extraKeys!3577 thiss!1248) (zeroValue!3681 thiss!1248) (minValue!3681 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3840 thiss!1248)) lt!93303)))

(declare-fun b!188373 () Bool)

(declare-fun lt!93294 () Unit!5673)

(assert (=> b!188373 (= e!123986 lt!93294)))

(declare-fun lt!93297 () ListLongMap!2415)

(assert (=> b!188373 (= lt!93297 (getCurrentListMapNoExtraKeys!203 (_keys!5799 thiss!1248) (_values!3823 thiss!1248) (mask!9003 thiss!1248) (extraKeys!3577 thiss!1248) (zeroValue!3681 thiss!1248) (minValue!3681 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3840 thiss!1248)))))

(declare-fun lt!93305 () (_ BitVec 64))

(assert (=> b!188373 (= lt!93305 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93298 () (_ BitVec 64))

(assert (=> b!188373 (= lt!93298 (select (arr!3778 (_keys!5799 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93306 () Unit!5673)

(declare-fun addStillContains!149 (ListLongMap!2415 (_ BitVec 64) V!5507 (_ BitVec 64)) Unit!5673)

(assert (=> b!188373 (= lt!93306 (addStillContains!149 lt!93297 lt!93305 (zeroValue!3681 thiss!1248) lt!93298))))

(assert (=> b!188373 (contains!1321 (+!288 lt!93297 (tuple2!3485 lt!93305 (zeroValue!3681 thiss!1248))) lt!93298)))

(declare-fun lt!93299 () Unit!5673)

(assert (=> b!188373 (= lt!93299 lt!93306)))

(declare-fun lt!93312 () ListLongMap!2415)

(assert (=> b!188373 (= lt!93312 (getCurrentListMapNoExtraKeys!203 (_keys!5799 thiss!1248) (_values!3823 thiss!1248) (mask!9003 thiss!1248) (extraKeys!3577 thiss!1248) (zeroValue!3681 thiss!1248) (minValue!3681 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3840 thiss!1248)))))

(declare-fun lt!93309 () (_ BitVec 64))

(assert (=> b!188373 (= lt!93309 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93292 () (_ BitVec 64))

(assert (=> b!188373 (= lt!93292 (select (arr!3778 (_keys!5799 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93308 () Unit!5673)

(declare-fun addApplyDifferent!149 (ListLongMap!2415 (_ BitVec 64) V!5507 (_ BitVec 64)) Unit!5673)

(assert (=> b!188373 (= lt!93308 (addApplyDifferent!149 lt!93312 lt!93309 (minValue!3681 thiss!1248) lt!93292))))

(assert (=> b!188373 (= (apply!173 (+!288 lt!93312 (tuple2!3485 lt!93309 (minValue!3681 thiss!1248))) lt!93292) (apply!173 lt!93312 lt!93292))))

(declare-fun lt!93307 () Unit!5673)

(assert (=> b!188373 (= lt!93307 lt!93308)))

(declare-fun lt!93304 () ListLongMap!2415)

(assert (=> b!188373 (= lt!93304 (getCurrentListMapNoExtraKeys!203 (_keys!5799 thiss!1248) (_values!3823 thiss!1248) (mask!9003 thiss!1248) (extraKeys!3577 thiss!1248) (zeroValue!3681 thiss!1248) (minValue!3681 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3840 thiss!1248)))))

(declare-fun lt!93300 () (_ BitVec 64))

(assert (=> b!188373 (= lt!93300 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93295 () (_ BitVec 64))

(assert (=> b!188373 (= lt!93295 (select (arr!3778 (_keys!5799 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93296 () Unit!5673)

(assert (=> b!188373 (= lt!93296 (addApplyDifferent!149 lt!93304 lt!93300 (zeroValue!3681 thiss!1248) lt!93295))))

(assert (=> b!188373 (= (apply!173 (+!288 lt!93304 (tuple2!3485 lt!93300 (zeroValue!3681 thiss!1248))) lt!93295) (apply!173 lt!93304 lt!93295))))

(declare-fun lt!93293 () Unit!5673)

(assert (=> b!188373 (= lt!93293 lt!93296)))

(declare-fun lt!93291 () ListLongMap!2415)

(assert (=> b!188373 (= lt!93291 (getCurrentListMapNoExtraKeys!203 (_keys!5799 thiss!1248) (_values!3823 thiss!1248) (mask!9003 thiss!1248) (extraKeys!3577 thiss!1248) (zeroValue!3681 thiss!1248) (minValue!3681 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3840 thiss!1248)))))

(declare-fun lt!93311 () (_ BitVec 64))

(assert (=> b!188373 (= lt!93311 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93301 () (_ BitVec 64))

(assert (=> b!188373 (= lt!93301 (select (arr!3778 (_keys!5799 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!188373 (= lt!93294 (addApplyDifferent!149 lt!93291 lt!93311 (minValue!3681 thiss!1248) lt!93301))))

(assert (=> b!188373 (= (apply!173 (+!288 lt!93291 (tuple2!3485 lt!93311 (minValue!3681 thiss!1248))) lt!93301) (apply!173 lt!93291 lt!93301))))

(declare-fun b!188383 () Bool)

(declare-fun res!89066 () Bool)

(assert (=> b!188383 (=> (not res!89066) (not e!123994))))

(assert (=> b!188383 (= res!89066 e!123990)))

(declare-fun res!89071 () Bool)

(assert (=> b!188383 (=> res!89071 e!123990)))

(declare-fun e!123991 () Bool)

(assert (=> b!188383 (= res!89071 (not e!123991))))

(declare-fun res!89067 () Bool)

(assert (=> b!188383 (=> (not res!89067) (not e!123991))))

(assert (=> b!188383 (= res!89067 (bvslt #b00000000000000000000000000000000 (size!4098 (_keys!5799 thiss!1248))))))

(declare-fun bm!18991 () Bool)

(assert (=> bm!18991 (= call!18995 call!18990)))

(declare-fun b!188384 () Bool)

(declare-fun e!123993 () Bool)

(assert (=> b!188384 (= e!123993 (= (apply!173 lt!93303 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3681 thiss!1248)))))

(declare-fun b!188385 () Bool)

(assert (=> b!188385 (= e!123983 e!123992)))

(assert (=> b!188385 (= c!33849 (and (not (= (bvand (extraKeys!3577 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3577 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!188386 () Bool)

(assert (=> b!188386 (= e!123991 (validKeyInArray!0 (select (arr!3778 (_keys!5799 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!188387 () Bool)

(assert (=> b!188387 (= e!123988 e!123993)))

(declare-fun res!89068 () Bool)

(assert (=> b!188387 (= res!89068 call!18994)))

(assert (=> b!188387 (=> (not res!89068) (not e!123993))))

(declare-fun bm!18992 () Bool)

(assert (=> bm!18992 (= call!18989 (contains!1321 lt!93303 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!55537 c!33846) b!188370))

(assert (= (and d!55537 (not c!33846)) b!188385))

(assert (= (and b!188385 c!33849) b!188382))

(assert (= (and b!188385 (not c!33849)) b!188367))

(assert (= (and b!188367 c!33845) b!188380))

(assert (= (and b!188367 (not c!33845)) b!188372))

(assert (= (or b!188380 b!188372) bm!18991))

(assert (= (or b!188382 bm!18991) bm!18986))

(assert (= (or b!188382 b!188380) bm!18987))

(assert (= (or b!188370 bm!18986) bm!18989))

(assert (= (or b!188370 bm!18987) bm!18990))

(assert (= (and d!55537 res!89069) b!188374))

(assert (= (and d!55537 c!33850) b!188373))

(assert (= (and d!55537 (not c!33850)) b!188371))

(assert (= (and d!55537 res!89065) b!188383))

(assert (= (and b!188383 res!89067) b!188386))

(assert (= (and b!188383 (not res!89071)) b!188376))

(assert (= (and b!188376 res!89070) b!188377))

(assert (= (and b!188383 res!89066) b!188368))

(assert (= (and b!188368 c!33847) b!188387))

(assert (= (and b!188368 (not c!33847)) b!188381))

(assert (= (and b!188387 res!89068) b!188384))

(assert (= (or b!188387 b!188381) bm!18988))

(assert (= (and b!188368 res!89063) b!188379))

(assert (= (and b!188379 c!33848) b!188369))

(assert (= (and b!188379 (not c!33848)) b!188375))

(assert (= (and b!188369 res!89064) b!188378))

(assert (= (or b!188369 b!188375) bm!18992))

(declare-fun b_lambda!7341 () Bool)

(assert (=> (not b_lambda!7341) (not b!188377)))

(declare-fun t!7316 () Bool)

(declare-fun tb!2865 () Bool)

(assert (=> (and b!188252 (= (defaultEntry!3840 thiss!1248) (defaultEntry!3840 thiss!1248)) t!7316) tb!2865))

(declare-fun result!4857 () Bool)

(assert (=> tb!2865 (= result!4857 tp_is_empty!4395)))

(assert (=> b!188377 t!7316))

(declare-fun b_and!11275 () Bool)

(assert (= b_and!11271 (and (=> t!7316 result!4857) b_and!11275)))

(declare-fun m!215043 () Bool)

(assert (=> b!188373 m!215043))

(declare-fun m!215045 () Bool)

(assert (=> b!188373 m!215045))

(declare-fun m!215047 () Bool)

(assert (=> b!188373 m!215047))

(declare-fun m!215049 () Bool)

(assert (=> b!188373 m!215049))

(declare-fun m!215051 () Bool)

(assert (=> b!188373 m!215051))

(declare-fun m!215053 () Bool)

(assert (=> b!188373 m!215053))

(declare-fun m!215055 () Bool)

(assert (=> b!188373 m!215055))

(declare-fun m!215057 () Bool)

(assert (=> b!188373 m!215057))

(declare-fun m!215059 () Bool)

(assert (=> b!188373 m!215059))

(assert (=> b!188373 m!215019))

(declare-fun m!215061 () Bool)

(assert (=> b!188373 m!215061))

(assert (=> b!188373 m!215049))

(declare-fun m!215063 () Bool)

(assert (=> b!188373 m!215063))

(declare-fun m!215065 () Bool)

(assert (=> b!188373 m!215065))

(assert (=> b!188373 m!215055))

(declare-fun m!215067 () Bool)

(assert (=> b!188373 m!215067))

(assert (=> b!188373 m!215057))

(declare-fun m!215069 () Bool)

(assert (=> b!188373 m!215069))

(declare-fun m!215071 () Bool)

(assert (=> b!188373 m!215071))

(assert (=> b!188373 m!215059))

(declare-fun m!215073 () Bool)

(assert (=> b!188373 m!215073))

(assert (=> d!55537 m!214981))

(assert (=> bm!18989 m!215043))

(declare-fun m!215075 () Bool)

(assert (=> bm!18988 m!215075))

(assert (=> b!188374 m!215019))

(assert (=> b!188374 m!215019))

(assert (=> b!188374 m!215027))

(declare-fun m!215077 () Bool)

(assert (=> bm!18992 m!215077))

(declare-fun m!215079 () Bool)

(assert (=> b!188378 m!215079))

(declare-fun m!215081 () Bool)

(assert (=> b!188370 m!215081))

(assert (=> b!188376 m!215019))

(assert (=> b!188376 m!215019))

(declare-fun m!215083 () Bool)

(assert (=> b!188376 m!215083))

(assert (=> b!188377 m!215019))

(declare-fun m!215085 () Bool)

(assert (=> b!188377 m!215085))

(declare-fun m!215087 () Bool)

(assert (=> b!188377 m!215087))

(declare-fun m!215089 () Bool)

(assert (=> b!188377 m!215089))

(assert (=> b!188377 m!215089))

(assert (=> b!188377 m!215087))

(declare-fun m!215091 () Bool)

(assert (=> b!188377 m!215091))

(assert (=> b!188377 m!215019))

(assert (=> b!188386 m!215019))

(assert (=> b!188386 m!215019))

(assert (=> b!188386 m!215027))

(declare-fun m!215093 () Bool)

(assert (=> bm!18990 m!215093))

(declare-fun m!215095 () Bool)

(assert (=> b!188384 m!215095))

(assert (=> b!188258 d!55537))

(declare-fun d!55539 () Bool)

(declare-fun res!89078 () Bool)

(declare-fun e!123998 () Bool)

(assert (=> d!55539 (=> (not res!89078) (not e!123998))))

(declare-fun simpleValid!188 (LongMapFixedSize!2616) Bool)

(assert (=> d!55539 (= res!89078 (simpleValid!188 thiss!1248))))

(assert (=> d!55539 (= (valid!1069 thiss!1248) e!123998)))

(declare-fun b!188396 () Bool)

(declare-fun res!89079 () Bool)

(assert (=> b!188396 (=> (not res!89079) (not e!123998))))

(declare-fun arrayCountValidKeys!0 (array!8010 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!188396 (= res!89079 (= (arrayCountValidKeys!0 (_keys!5799 thiss!1248) #b00000000000000000000000000000000 (size!4098 (_keys!5799 thiss!1248))) (_size!1357 thiss!1248)))))

(declare-fun b!188397 () Bool)

(declare-fun res!89080 () Bool)

(assert (=> b!188397 (=> (not res!89080) (not e!123998))))

(assert (=> b!188397 (= res!89080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5799 thiss!1248) (mask!9003 thiss!1248)))))

(declare-fun b!188398 () Bool)

(declare-datatypes ((List!2411 0))(
  ( (Nil!2408) (Cons!2407 (h!3044 (_ BitVec 64)) (t!7317 List!2411)) )
))
(declare-fun arrayNoDuplicates!0 (array!8010 (_ BitVec 32) List!2411) Bool)

(assert (=> b!188398 (= e!123998 (arrayNoDuplicates!0 (_keys!5799 thiss!1248) #b00000000000000000000000000000000 Nil!2408))))

(assert (= (and d!55539 res!89078) b!188396))

(assert (= (and b!188396 res!89079) b!188397))

(assert (= (and b!188397 res!89080) b!188398))

(declare-fun m!215097 () Bool)

(assert (=> d!55539 m!215097))

(declare-fun m!215099 () Bool)

(assert (=> b!188396 m!215099))

(assert (=> b!188397 m!214969))

(declare-fun m!215101 () Bool)

(assert (=> b!188398 m!215101))

(assert (=> start!19148 d!55539))

(declare-fun b!188412 () Bool)

(declare-fun c!33859 () Bool)

(declare-fun lt!93321 () (_ BitVec 64))

(assert (=> b!188412 (= c!33859 (= lt!93321 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!124007 () SeekEntryResult!663)

(declare-fun e!124005 () SeekEntryResult!663)

(assert (=> b!188412 (= e!124007 e!124005)))

(declare-fun b!188413 () Bool)

(declare-fun lt!93319 () SeekEntryResult!663)

(assert (=> b!188413 (= e!124007 (Found!663 (index!4824 lt!93319)))))

(declare-fun b!188414 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8010 (_ BitVec 32)) SeekEntryResult!663)

(assert (=> b!188414 (= e!124005 (seekKeyOrZeroReturnVacant!0 (x!20349 lt!93319) (index!4824 lt!93319) (index!4824 lt!93319) key!828 (_keys!5799 thiss!1248) (mask!9003 thiss!1248)))))

(declare-fun b!188415 () Bool)

(declare-fun e!124006 () SeekEntryResult!663)

(assert (=> b!188415 (= e!124006 e!124007)))

(assert (=> b!188415 (= lt!93321 (select (arr!3778 (_keys!5799 thiss!1248)) (index!4824 lt!93319)))))

(declare-fun c!33857 () Bool)

(assert (=> b!188415 (= c!33857 (= lt!93321 key!828))))

(declare-fun b!188416 () Bool)

(assert (=> b!188416 (= e!124006 Undefined!663)))

(declare-fun d!55541 () Bool)

(declare-fun lt!93320 () SeekEntryResult!663)

(assert (=> d!55541 (and (or ((_ is Undefined!663) lt!93320) (not ((_ is Found!663) lt!93320)) (and (bvsge (index!4823 lt!93320) #b00000000000000000000000000000000) (bvslt (index!4823 lt!93320) (size!4098 (_keys!5799 thiss!1248))))) (or ((_ is Undefined!663) lt!93320) ((_ is Found!663) lt!93320) (not ((_ is MissingZero!663) lt!93320)) (and (bvsge (index!4822 lt!93320) #b00000000000000000000000000000000) (bvslt (index!4822 lt!93320) (size!4098 (_keys!5799 thiss!1248))))) (or ((_ is Undefined!663) lt!93320) ((_ is Found!663) lt!93320) ((_ is MissingZero!663) lt!93320) (not ((_ is MissingVacant!663) lt!93320)) (and (bvsge (index!4825 lt!93320) #b00000000000000000000000000000000) (bvslt (index!4825 lt!93320) (size!4098 (_keys!5799 thiss!1248))))) (or ((_ is Undefined!663) lt!93320) (ite ((_ is Found!663) lt!93320) (= (select (arr!3778 (_keys!5799 thiss!1248)) (index!4823 lt!93320)) key!828) (ite ((_ is MissingZero!663) lt!93320) (= (select (arr!3778 (_keys!5799 thiss!1248)) (index!4822 lt!93320)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!663) lt!93320) (= (select (arr!3778 (_keys!5799 thiss!1248)) (index!4825 lt!93320)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!55541 (= lt!93320 e!124006)))

(declare-fun c!33858 () Bool)

(assert (=> d!55541 (= c!33858 (and ((_ is Intermediate!663) lt!93319) (undefined!1475 lt!93319)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8010 (_ BitVec 32)) SeekEntryResult!663)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!55541 (= lt!93319 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!9003 thiss!1248)) key!828 (_keys!5799 thiss!1248) (mask!9003 thiss!1248)))))

(assert (=> d!55541 (validMask!0 (mask!9003 thiss!1248))))

(assert (=> d!55541 (= (seekEntryOrOpen!0 key!828 (_keys!5799 thiss!1248) (mask!9003 thiss!1248)) lt!93320)))

(declare-fun b!188411 () Bool)

(assert (=> b!188411 (= e!124005 (MissingZero!663 (index!4824 lt!93319)))))

(assert (= (and d!55541 c!33858) b!188416))

(assert (= (and d!55541 (not c!33858)) b!188415))

(assert (= (and b!188415 c!33857) b!188413))

(assert (= (and b!188415 (not c!33857)) b!188412))

(assert (= (and b!188412 c!33859) b!188411))

(assert (= (and b!188412 (not c!33859)) b!188414))

(declare-fun m!215103 () Bool)

(assert (=> b!188414 m!215103))

(declare-fun m!215105 () Bool)

(assert (=> b!188415 m!215105))

(declare-fun m!215107 () Bool)

(assert (=> d!55541 m!215107))

(declare-fun m!215109 () Bool)

(assert (=> d!55541 m!215109))

(declare-fun m!215111 () Bool)

(assert (=> d!55541 m!215111))

(declare-fun m!215113 () Bool)

(assert (=> d!55541 m!215113))

(assert (=> d!55541 m!215107))

(assert (=> d!55541 m!214981))

(declare-fun m!215115 () Bool)

(assert (=> d!55541 m!215115))

(assert (=> b!188256 d!55541))

(declare-fun lt!93326 () SeekEntryResult!663)

(declare-fun call!19001 () Bool)

(declare-fun c!33864 () Bool)

(declare-fun bm!18997 () Bool)

(assert (=> bm!18997 (= call!19001 (inRange!0 (ite c!33864 (index!4822 lt!93326) (index!4825 lt!93326)) (mask!9003 thiss!1248)))))

(declare-fun b!188434 () Bool)

(declare-fun e!124019 () Bool)

(declare-fun call!19000 () Bool)

(assert (=> b!188434 (= e!124019 (not call!19000))))

(declare-fun b!188435 () Bool)

(declare-fun e!124018 () Bool)

(assert (=> b!188435 (= e!124018 (not call!19000))))

(declare-fun bm!18998 () Bool)

(assert (=> bm!18998 (= call!19000 (arrayContainsKey!0 (_keys!5799 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun b!188436 () Bool)

(declare-fun e!124017 () Bool)

(assert (=> b!188436 (= e!124017 ((_ is Undefined!663) lt!93326))))

(declare-fun b!188433 () Bool)

(assert (=> b!188433 (and (bvsge (index!4822 lt!93326) #b00000000000000000000000000000000) (bvslt (index!4822 lt!93326) (size!4098 (_keys!5799 thiss!1248))))))

(declare-fun res!89091 () Bool)

(assert (=> b!188433 (= res!89091 (= (select (arr!3778 (_keys!5799 thiss!1248)) (index!4822 lt!93326)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!188433 (=> (not res!89091) (not e!124018))))

(declare-fun d!55543 () Bool)

(declare-fun e!124016 () Bool)

(assert (=> d!55543 e!124016))

(assert (=> d!55543 (= c!33864 ((_ is MissingZero!663) lt!93326))))

(assert (=> d!55543 (= lt!93326 (seekEntryOrOpen!0 key!828 (_keys!5799 thiss!1248) (mask!9003 thiss!1248)))))

(declare-fun lt!93327 () Unit!5673)

(declare-fun choose!1015 (array!8010 array!8012 (_ BitVec 32) (_ BitVec 32) V!5507 V!5507 (_ BitVec 64) Int) Unit!5673)

(assert (=> d!55543 (= lt!93327 (choose!1015 (_keys!5799 thiss!1248) (_values!3823 thiss!1248) (mask!9003 thiss!1248) (extraKeys!3577 thiss!1248) (zeroValue!3681 thiss!1248) (minValue!3681 thiss!1248) key!828 (defaultEntry!3840 thiss!1248)))))

(assert (=> d!55543 (validMask!0 (mask!9003 thiss!1248))))

(assert (=> d!55543 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!157 (_keys!5799 thiss!1248) (_values!3823 thiss!1248) (mask!9003 thiss!1248) (extraKeys!3577 thiss!1248) (zeroValue!3681 thiss!1248) (minValue!3681 thiss!1248) key!828 (defaultEntry!3840 thiss!1248)) lt!93327)))

(declare-fun b!188437 () Bool)

(declare-fun res!89090 () Bool)

(assert (=> b!188437 (=> (not res!89090) (not e!124019))))

(assert (=> b!188437 (= res!89090 (= (select (arr!3778 (_keys!5799 thiss!1248)) (index!4825 lt!93326)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!188437 (and (bvsge (index!4825 lt!93326) #b00000000000000000000000000000000) (bvslt (index!4825 lt!93326) (size!4098 (_keys!5799 thiss!1248))))))

(declare-fun b!188438 () Bool)

(declare-fun res!89092 () Bool)

(assert (=> b!188438 (=> (not res!89092) (not e!124019))))

(assert (=> b!188438 (= res!89092 call!19001)))

(assert (=> b!188438 (= e!124017 e!124019)))

(declare-fun b!188439 () Bool)

(assert (=> b!188439 (= e!124016 e!124017)))

(declare-fun c!33865 () Bool)

(assert (=> b!188439 (= c!33865 ((_ is MissingVacant!663) lt!93326))))

(declare-fun b!188440 () Bool)

(assert (=> b!188440 (= e!124016 e!124018)))

(declare-fun res!89089 () Bool)

(assert (=> b!188440 (= res!89089 call!19001)))

(assert (=> b!188440 (=> (not res!89089) (not e!124018))))

(assert (= (and d!55543 c!33864) b!188440))

(assert (= (and d!55543 (not c!33864)) b!188439))

(assert (= (and b!188440 res!89089) b!188433))

(assert (= (and b!188433 res!89091) b!188435))

(assert (= (and b!188439 c!33865) b!188438))

(assert (= (and b!188439 (not c!33865)) b!188436))

(assert (= (and b!188438 res!89092) b!188437))

(assert (= (and b!188437 res!89090) b!188434))

(assert (= (or b!188440 b!188438) bm!18997))

(assert (= (or b!188435 b!188434) bm!18998))

(declare-fun m!215117 () Bool)

(assert (=> b!188437 m!215117))

(assert (=> d!55543 m!214989))

(declare-fun m!215119 () Bool)

(assert (=> d!55543 m!215119))

(assert (=> d!55543 m!214981))

(declare-fun m!215121 () Bool)

(assert (=> bm!18998 m!215121))

(declare-fun m!215123 () Bool)

(assert (=> b!188433 m!215123))

(declare-fun m!215125 () Bool)

(assert (=> bm!18997 m!215125))

(assert (=> b!188251 d!55543))

(declare-fun d!55545 () Bool)

(assert (=> d!55545 (= (array_inv!2437 (_keys!5799 thiss!1248)) (bvsge (size!4098 (_keys!5799 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!188252 d!55545))

(declare-fun d!55547 () Bool)

(assert (=> d!55547 (= (array_inv!2438 (_values!3823 thiss!1248)) (bvsge (size!4099 (_values!3823 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!188252 d!55547))

(declare-fun b!188447 () Bool)

(declare-fun e!124024 () Bool)

(assert (=> b!188447 (= e!124024 tp_is_empty!4395)))

(declare-fun mapIsEmpty!7582 () Bool)

(declare-fun mapRes!7582 () Bool)

(assert (=> mapIsEmpty!7582 mapRes!7582))

(declare-fun condMapEmpty!7582 () Bool)

(declare-fun mapDefault!7582 () ValueCell!1854)

(assert (=> mapNonEmpty!7576 (= condMapEmpty!7582 (= mapRest!7576 ((as const (Array (_ BitVec 32) ValueCell!1854)) mapDefault!7582)))))

(declare-fun e!124025 () Bool)

(assert (=> mapNonEmpty!7576 (= tp!16690 (and e!124025 mapRes!7582))))

(declare-fun b!188448 () Bool)

(assert (=> b!188448 (= e!124025 tp_is_empty!4395)))

(declare-fun mapNonEmpty!7582 () Bool)

(declare-fun tp!16699 () Bool)

(assert (=> mapNonEmpty!7582 (= mapRes!7582 (and tp!16699 e!124024))))

(declare-fun mapValue!7582 () ValueCell!1854)

(declare-fun mapKey!7582 () (_ BitVec 32))

(declare-fun mapRest!7582 () (Array (_ BitVec 32) ValueCell!1854))

(assert (=> mapNonEmpty!7582 (= mapRest!7576 (store mapRest!7582 mapKey!7582 mapValue!7582))))

(assert (= (and mapNonEmpty!7576 condMapEmpty!7582) mapIsEmpty!7582))

(assert (= (and mapNonEmpty!7576 (not condMapEmpty!7582)) mapNonEmpty!7582))

(assert (= (and mapNonEmpty!7582 ((_ is ValueCellFull!1854) mapValue!7582)) b!188447))

(assert (= (and mapNonEmpty!7576 ((_ is ValueCellFull!1854) mapDefault!7582)) b!188448))

(declare-fun m!215127 () Bool)

(assert (=> mapNonEmpty!7582 m!215127))

(declare-fun b_lambda!7343 () Bool)

(assert (= b_lambda!7341 (or (and b!188252 b_free!4623) b_lambda!7343)))

(check-sat (not b!188308) (not b!188398) (not d!55537) (not d!55535) (not b!188373) (not d!55539) (not bm!18992) (not b!188322) (not d!55529) (not d!55541) (not b_lambda!7343) (not d!55543) (not bm!18971) (not b!188397) (not b!188374) (not bm!18989) (not b!188309) (not b_next!4623) (not b!188376) (not b!188386) (not b!188370) (not b!188414) (not b!188314) (not b!188324) (not bm!18988) (not b!188396) (not bm!18990) (not b!188384) (not bm!18998) tp_is_empty!4395 (not mapNonEmpty!7582) (not bm!18997) (not b!188377) (not b!188378) b_and!11275)
(check-sat b_and!11275 (not b_next!4623))
