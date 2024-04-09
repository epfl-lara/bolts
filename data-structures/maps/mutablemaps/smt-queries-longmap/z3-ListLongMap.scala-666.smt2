; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16474 () Bool)

(assert start!16474)

(declare-fun b!163755 () Bool)

(declare-fun b_free!3807 () Bool)

(declare-fun b_next!3807 () Bool)

(assert (=> b!163755 (= b_free!3807 (not b_next!3807))))

(declare-fun tp!14012 () Bool)

(declare-fun b_and!10239 () Bool)

(assert (=> b!163755 (= tp!14012 b_and!10239)))

(declare-fun b!163754 () Bool)

(declare-fun res!77494 () Bool)

(declare-fun e!107458 () Bool)

(assert (=> b!163754 (=> (not res!77494) (not e!107458))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!163754 (= res!77494 (not (= key!828 (bvneg key!828))))))

(declare-fun e!107455 () Bool)

(declare-fun e!107453 () Bool)

(declare-datatypes ((V!4459 0))(
  ( (V!4460 (val!1849 Int)) )
))
(declare-datatypes ((ValueCell!1461 0))(
  ( (ValueCellFull!1461 (v!3710 V!4459)) (EmptyCell!1461) )
))
(declare-datatypes ((array!6308 0))(
  ( (array!6309 (arr!2992 (Array (_ BitVec 32) (_ BitVec 64))) (size!3280 (_ BitVec 32))) )
))
(declare-datatypes ((array!6310 0))(
  ( (array!6311 (arr!2993 (Array (_ BitVec 32) ValueCell!1461)) (size!3281 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1830 0))(
  ( (LongMapFixedSize!1831 (defaultEntry!3357 Int) (mask!8029 (_ BitVec 32)) (extraKeys!3098 (_ BitVec 32)) (zeroValue!3200 V!4459) (minValue!3200 V!4459) (_size!964 (_ BitVec 32)) (_keys!5176 array!6308) (_values!3340 array!6310) (_vacant!964 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1830)

(declare-fun tp_is_empty!3609 () Bool)

(declare-fun array_inv!1905 (array!6308) Bool)

(declare-fun array_inv!1906 (array!6310) Bool)

(assert (=> b!163755 (= e!107455 (and tp!14012 tp_is_empty!3609 (array_inv!1905 (_keys!5176 thiss!1248)) (array_inv!1906 (_values!3340 thiss!1248)) e!107453))))

(declare-fun mapIsEmpty!6123 () Bool)

(declare-fun mapRes!6123 () Bool)

(assert (=> mapIsEmpty!6123 mapRes!6123))

(declare-fun b!163756 () Bool)

(declare-fun e!107456 () Bool)

(assert (=> b!163756 (= e!107453 (and e!107456 mapRes!6123))))

(declare-fun condMapEmpty!6123 () Bool)

(declare-fun mapDefault!6123 () ValueCell!1461)

(assert (=> b!163756 (= condMapEmpty!6123 (= (arr!2993 (_values!3340 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1461)) mapDefault!6123)))))

(declare-fun b!163757 () Bool)

(declare-fun e!107452 () Bool)

(assert (=> b!163757 (= e!107452 tp_is_empty!3609)))

(declare-fun b!163758 () Bool)

(declare-fun e!107454 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6308 (_ BitVec 32)) Bool)

(assert (=> b!163758 (= e!107454 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5176 thiss!1248) (mask!8029 thiss!1248))))))

(declare-fun b!163759 () Bool)

(assert (=> b!163759 (= e!107456 tp_is_empty!3609)))

(declare-fun mapNonEmpty!6123 () Bool)

(declare-fun tp!14013 () Bool)

(assert (=> mapNonEmpty!6123 (= mapRes!6123 (and tp!14013 e!107452))))

(declare-fun mapRest!6123 () (Array (_ BitVec 32) ValueCell!1461))

(declare-fun mapKey!6123 () (_ BitVec 32))

(declare-fun mapValue!6123 () ValueCell!1461)

(assert (=> mapNonEmpty!6123 (= (arr!2993 (_values!3340 thiss!1248)) (store mapRest!6123 mapKey!6123 mapValue!6123))))

(declare-fun b!163760 () Bool)

(declare-fun res!77492 () Bool)

(assert (=> b!163760 (=> (not res!77492) (not e!107454))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!163760 (= res!77492 (validMask!0 (mask!8029 thiss!1248)))))

(declare-fun b!163761 () Bool)

(assert (=> b!163761 (= e!107458 e!107454)))

(declare-fun res!77493 () Bool)

(assert (=> b!163761 (=> (not res!77493) (not e!107454))))

(declare-datatypes ((SeekEntryResult!414 0))(
  ( (MissingZero!414 (index!3824 (_ BitVec 32))) (Found!414 (index!3825 (_ BitVec 32))) (Intermediate!414 (undefined!1226 Bool) (index!3826 (_ BitVec 32)) (x!18170 (_ BitVec 32))) (Undefined!414) (MissingVacant!414 (index!3827 (_ BitVec 32))) )
))
(declare-fun lt!82790 () SeekEntryResult!414)

(get-info :version)

(assert (=> b!163761 (= res!77493 (and (not ((_ is Undefined!414) lt!82790)) (not ((_ is MissingVacant!414) lt!82790)) (not ((_ is MissingZero!414) lt!82790)) ((_ is Found!414) lt!82790)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6308 (_ BitVec 32)) SeekEntryResult!414)

(assert (=> b!163761 (= lt!82790 (seekEntryOrOpen!0 key!828 (_keys!5176 thiss!1248) (mask!8029 thiss!1248)))))

(declare-fun b!163762 () Bool)

(declare-fun res!77495 () Bool)

(assert (=> b!163762 (=> (not res!77495) (not e!107454))))

(assert (=> b!163762 (= res!77495 (and (= (size!3281 (_values!3340 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8029 thiss!1248))) (= (size!3280 (_keys!5176 thiss!1248)) (size!3281 (_values!3340 thiss!1248))) (bvsge (mask!8029 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3098 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3098 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun res!77496 () Bool)

(assert (=> start!16474 (=> (not res!77496) (not e!107458))))

(declare-fun valid!810 (LongMapFixedSize!1830) Bool)

(assert (=> start!16474 (= res!77496 (valid!810 thiss!1248))))

(assert (=> start!16474 e!107458))

(assert (=> start!16474 e!107455))

(assert (=> start!16474 true))

(assert (= (and start!16474 res!77496) b!163754))

(assert (= (and b!163754 res!77494) b!163761))

(assert (= (and b!163761 res!77493) b!163760))

(assert (= (and b!163760 res!77492) b!163762))

(assert (= (and b!163762 res!77495) b!163758))

(assert (= (and b!163756 condMapEmpty!6123) mapIsEmpty!6123))

(assert (= (and b!163756 (not condMapEmpty!6123)) mapNonEmpty!6123))

(assert (= (and mapNonEmpty!6123 ((_ is ValueCellFull!1461) mapValue!6123)) b!163757))

(assert (= (and b!163756 ((_ is ValueCellFull!1461) mapDefault!6123)) b!163759))

(assert (= b!163755 b!163756))

(assert (= start!16474 b!163755))

(declare-fun m!194259 () Bool)

(assert (=> start!16474 m!194259))

(declare-fun m!194261 () Bool)

(assert (=> mapNonEmpty!6123 m!194261))

(declare-fun m!194263 () Bool)

(assert (=> b!163760 m!194263))

(declare-fun m!194265 () Bool)

(assert (=> b!163758 m!194265))

(declare-fun m!194267 () Bool)

(assert (=> b!163755 m!194267))

(declare-fun m!194269 () Bool)

(assert (=> b!163755 m!194269))

(declare-fun m!194271 () Bool)

(assert (=> b!163761 m!194271))

(check-sat (not b!163758) (not b!163755) (not start!16474) (not b!163761) (not mapNonEmpty!6123) (not b_next!3807) b_and!10239 (not b!163760) tp_is_empty!3609)
(check-sat b_and!10239 (not b_next!3807))
(get-model)

(declare-fun d!51401 () Bool)

(assert (=> d!51401 (= (validMask!0 (mask!8029 thiss!1248)) (and (or (= (mask!8029 thiss!1248) #b00000000000000000000000000000111) (= (mask!8029 thiss!1248) #b00000000000000000000000000001111) (= (mask!8029 thiss!1248) #b00000000000000000000000000011111) (= (mask!8029 thiss!1248) #b00000000000000000000000000111111) (= (mask!8029 thiss!1248) #b00000000000000000000000001111111) (= (mask!8029 thiss!1248) #b00000000000000000000000011111111) (= (mask!8029 thiss!1248) #b00000000000000000000000111111111) (= (mask!8029 thiss!1248) #b00000000000000000000001111111111) (= (mask!8029 thiss!1248) #b00000000000000000000011111111111) (= (mask!8029 thiss!1248) #b00000000000000000000111111111111) (= (mask!8029 thiss!1248) #b00000000000000000001111111111111) (= (mask!8029 thiss!1248) #b00000000000000000011111111111111) (= (mask!8029 thiss!1248) #b00000000000000000111111111111111) (= (mask!8029 thiss!1248) #b00000000000000001111111111111111) (= (mask!8029 thiss!1248) #b00000000000000011111111111111111) (= (mask!8029 thiss!1248) #b00000000000000111111111111111111) (= (mask!8029 thiss!1248) #b00000000000001111111111111111111) (= (mask!8029 thiss!1248) #b00000000000011111111111111111111) (= (mask!8029 thiss!1248) #b00000000000111111111111111111111) (= (mask!8029 thiss!1248) #b00000000001111111111111111111111) (= (mask!8029 thiss!1248) #b00000000011111111111111111111111) (= (mask!8029 thiss!1248) #b00000000111111111111111111111111) (= (mask!8029 thiss!1248) #b00000001111111111111111111111111) (= (mask!8029 thiss!1248) #b00000011111111111111111111111111) (= (mask!8029 thiss!1248) #b00000111111111111111111111111111) (= (mask!8029 thiss!1248) #b00001111111111111111111111111111) (= (mask!8029 thiss!1248) #b00011111111111111111111111111111) (= (mask!8029 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8029 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!163760 d!51401))

(declare-fun d!51403 () Bool)

(declare-fun res!77518 () Bool)

(declare-fun e!107482 () Bool)

(assert (=> d!51403 (=> (not res!77518) (not e!107482))))

(declare-fun simpleValid!123 (LongMapFixedSize!1830) Bool)

(assert (=> d!51403 (= res!77518 (simpleValid!123 thiss!1248))))

(assert (=> d!51403 (= (valid!810 thiss!1248) e!107482)))

(declare-fun b!163796 () Bool)

(declare-fun res!77519 () Bool)

(assert (=> b!163796 (=> (not res!77519) (not e!107482))))

(declare-fun arrayCountValidKeys!0 (array!6308 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!163796 (= res!77519 (= (arrayCountValidKeys!0 (_keys!5176 thiss!1248) #b00000000000000000000000000000000 (size!3280 (_keys!5176 thiss!1248))) (_size!964 thiss!1248)))))

(declare-fun b!163797 () Bool)

(declare-fun res!77520 () Bool)

(assert (=> b!163797 (=> (not res!77520) (not e!107482))))

(assert (=> b!163797 (= res!77520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5176 thiss!1248) (mask!8029 thiss!1248)))))

(declare-fun b!163798 () Bool)

(declare-datatypes ((List!2013 0))(
  ( (Nil!2010) (Cons!2009 (h!2626 (_ BitVec 64)) (t!6823 List!2013)) )
))
(declare-fun arrayNoDuplicates!0 (array!6308 (_ BitVec 32) List!2013) Bool)

(assert (=> b!163798 (= e!107482 (arrayNoDuplicates!0 (_keys!5176 thiss!1248) #b00000000000000000000000000000000 Nil!2010))))

(assert (= (and d!51403 res!77518) b!163796))

(assert (= (and b!163796 res!77519) b!163797))

(assert (= (and b!163797 res!77520) b!163798))

(declare-fun m!194287 () Bool)

(assert (=> d!51403 m!194287))

(declare-fun m!194289 () Bool)

(assert (=> b!163796 m!194289))

(assert (=> b!163797 m!194265))

(declare-fun m!194291 () Bool)

(assert (=> b!163798 m!194291))

(assert (=> start!16474 d!51403))

(declare-fun b!163811 () Bool)

(declare-fun lt!82801 () SeekEntryResult!414)

(declare-fun e!107489 () SeekEntryResult!414)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!6308 (_ BitVec 32)) SeekEntryResult!414)

(assert (=> b!163811 (= e!107489 (seekKeyOrZeroReturnVacant!0 (x!18170 lt!82801) (index!3826 lt!82801) (index!3826 lt!82801) key!828 (_keys!5176 thiss!1248) (mask!8029 thiss!1248)))))

(declare-fun b!163812 () Bool)

(declare-fun c!30141 () Bool)

(declare-fun lt!82800 () (_ BitVec 64))

(assert (=> b!163812 (= c!30141 (= lt!82800 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!107491 () SeekEntryResult!414)

(assert (=> b!163812 (= e!107491 e!107489)))

(declare-fun b!163813 () Bool)

(assert (=> b!163813 (= e!107489 (MissingZero!414 (index!3826 lt!82801)))))

(declare-fun b!163814 () Bool)

(declare-fun e!107490 () SeekEntryResult!414)

(assert (=> b!163814 (= e!107490 Undefined!414)))

(declare-fun b!163815 () Bool)

(assert (=> b!163815 (= e!107491 (Found!414 (index!3826 lt!82801)))))

(declare-fun b!163816 () Bool)

(assert (=> b!163816 (= e!107490 e!107491)))

(assert (=> b!163816 (= lt!82800 (select (arr!2992 (_keys!5176 thiss!1248)) (index!3826 lt!82801)))))

(declare-fun c!30139 () Bool)

(assert (=> b!163816 (= c!30139 (= lt!82800 key!828))))

(declare-fun d!51405 () Bool)

(declare-fun lt!82802 () SeekEntryResult!414)

(assert (=> d!51405 (and (or ((_ is Undefined!414) lt!82802) (not ((_ is Found!414) lt!82802)) (and (bvsge (index!3825 lt!82802) #b00000000000000000000000000000000) (bvslt (index!3825 lt!82802) (size!3280 (_keys!5176 thiss!1248))))) (or ((_ is Undefined!414) lt!82802) ((_ is Found!414) lt!82802) (not ((_ is MissingZero!414) lt!82802)) (and (bvsge (index!3824 lt!82802) #b00000000000000000000000000000000) (bvslt (index!3824 lt!82802) (size!3280 (_keys!5176 thiss!1248))))) (or ((_ is Undefined!414) lt!82802) ((_ is Found!414) lt!82802) ((_ is MissingZero!414) lt!82802) (not ((_ is MissingVacant!414) lt!82802)) (and (bvsge (index!3827 lt!82802) #b00000000000000000000000000000000) (bvslt (index!3827 lt!82802) (size!3280 (_keys!5176 thiss!1248))))) (or ((_ is Undefined!414) lt!82802) (ite ((_ is Found!414) lt!82802) (= (select (arr!2992 (_keys!5176 thiss!1248)) (index!3825 lt!82802)) key!828) (ite ((_ is MissingZero!414) lt!82802) (= (select (arr!2992 (_keys!5176 thiss!1248)) (index!3824 lt!82802)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!414) lt!82802) (= (select (arr!2992 (_keys!5176 thiss!1248)) (index!3827 lt!82802)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!51405 (= lt!82802 e!107490)))

(declare-fun c!30140 () Bool)

(assert (=> d!51405 (= c!30140 (and ((_ is Intermediate!414) lt!82801) (undefined!1226 lt!82801)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!6308 (_ BitVec 32)) SeekEntryResult!414)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!51405 (= lt!82801 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8029 thiss!1248)) key!828 (_keys!5176 thiss!1248) (mask!8029 thiss!1248)))))

(assert (=> d!51405 (validMask!0 (mask!8029 thiss!1248))))

(assert (=> d!51405 (= (seekEntryOrOpen!0 key!828 (_keys!5176 thiss!1248) (mask!8029 thiss!1248)) lt!82802)))

(assert (= (and d!51405 c!30140) b!163814))

(assert (= (and d!51405 (not c!30140)) b!163816))

(assert (= (and b!163816 c!30139) b!163815))

(assert (= (and b!163816 (not c!30139)) b!163812))

(assert (= (and b!163812 c!30141) b!163813))

(assert (= (and b!163812 (not c!30141)) b!163811))

(declare-fun m!194293 () Bool)

(assert (=> b!163811 m!194293))

(declare-fun m!194295 () Bool)

(assert (=> b!163816 m!194295))

(declare-fun m!194297 () Bool)

(assert (=> d!51405 m!194297))

(declare-fun m!194299 () Bool)

(assert (=> d!51405 m!194299))

(assert (=> d!51405 m!194299))

(declare-fun m!194301 () Bool)

(assert (=> d!51405 m!194301))

(declare-fun m!194303 () Bool)

(assert (=> d!51405 m!194303))

(declare-fun m!194305 () Bool)

(assert (=> d!51405 m!194305))

(assert (=> d!51405 m!194263))

(assert (=> b!163761 d!51405))

(declare-fun b!163825 () Bool)

(declare-fun e!107500 () Bool)

(declare-fun call!17321 () Bool)

(assert (=> b!163825 (= e!107500 call!17321)))

(declare-fun b!163826 () Bool)

(declare-fun e!107499 () Bool)

(assert (=> b!163826 (= e!107499 call!17321)))

(declare-fun b!163827 () Bool)

(declare-fun e!107498 () Bool)

(assert (=> b!163827 (= e!107498 e!107499)))

(declare-fun c!30144 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!163827 (= c!30144 (validKeyInArray!0 (select (arr!2992 (_keys!5176 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17318 () Bool)

(assert (=> bm!17318 (= call!17321 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5176 thiss!1248) (mask!8029 thiss!1248)))))

(declare-fun d!51407 () Bool)

(declare-fun res!77526 () Bool)

(assert (=> d!51407 (=> res!77526 e!107498)))

(assert (=> d!51407 (= res!77526 (bvsge #b00000000000000000000000000000000 (size!3280 (_keys!5176 thiss!1248))))))

(assert (=> d!51407 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5176 thiss!1248) (mask!8029 thiss!1248)) e!107498)))

(declare-fun b!163828 () Bool)

(assert (=> b!163828 (= e!107499 e!107500)))

(declare-fun lt!82810 () (_ BitVec 64))

(assert (=> b!163828 (= lt!82810 (select (arr!2992 (_keys!5176 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5040 0))(
  ( (Unit!5041) )
))
(declare-fun lt!82809 () Unit!5040)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!6308 (_ BitVec 64) (_ BitVec 32)) Unit!5040)

(assert (=> b!163828 (= lt!82809 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5176 thiss!1248) lt!82810 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!6308 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!163828 (arrayContainsKey!0 (_keys!5176 thiss!1248) lt!82810 #b00000000000000000000000000000000)))

(declare-fun lt!82811 () Unit!5040)

(assert (=> b!163828 (= lt!82811 lt!82809)))

(declare-fun res!77525 () Bool)

(assert (=> b!163828 (= res!77525 (= (seekEntryOrOpen!0 (select (arr!2992 (_keys!5176 thiss!1248)) #b00000000000000000000000000000000) (_keys!5176 thiss!1248) (mask!8029 thiss!1248)) (Found!414 #b00000000000000000000000000000000)))))

(assert (=> b!163828 (=> (not res!77525) (not e!107500))))

(assert (= (and d!51407 (not res!77526)) b!163827))

(assert (= (and b!163827 c!30144) b!163828))

(assert (= (and b!163827 (not c!30144)) b!163826))

(assert (= (and b!163828 res!77525) b!163825))

(assert (= (or b!163825 b!163826) bm!17318))

(declare-fun m!194307 () Bool)

(assert (=> b!163827 m!194307))

(assert (=> b!163827 m!194307))

(declare-fun m!194309 () Bool)

(assert (=> b!163827 m!194309))

(declare-fun m!194311 () Bool)

(assert (=> bm!17318 m!194311))

(assert (=> b!163828 m!194307))

(declare-fun m!194313 () Bool)

(assert (=> b!163828 m!194313))

(declare-fun m!194315 () Bool)

(assert (=> b!163828 m!194315))

(assert (=> b!163828 m!194307))

(declare-fun m!194317 () Bool)

(assert (=> b!163828 m!194317))

(assert (=> b!163758 d!51407))

(declare-fun d!51409 () Bool)

(assert (=> d!51409 (= (array_inv!1905 (_keys!5176 thiss!1248)) (bvsge (size!3280 (_keys!5176 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!163755 d!51409))

(declare-fun d!51411 () Bool)

(assert (=> d!51411 (= (array_inv!1906 (_values!3340 thiss!1248)) (bvsge (size!3281 (_values!3340 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!163755 d!51411))

(declare-fun mapNonEmpty!6129 () Bool)

(declare-fun mapRes!6129 () Bool)

(declare-fun tp!14022 () Bool)

(declare-fun e!107505 () Bool)

(assert (=> mapNonEmpty!6129 (= mapRes!6129 (and tp!14022 e!107505))))

(declare-fun mapKey!6129 () (_ BitVec 32))

(declare-fun mapRest!6129 () (Array (_ BitVec 32) ValueCell!1461))

(declare-fun mapValue!6129 () ValueCell!1461)

(assert (=> mapNonEmpty!6129 (= mapRest!6123 (store mapRest!6129 mapKey!6129 mapValue!6129))))

(declare-fun mapIsEmpty!6129 () Bool)

(assert (=> mapIsEmpty!6129 mapRes!6129))

(declare-fun condMapEmpty!6129 () Bool)

(declare-fun mapDefault!6129 () ValueCell!1461)

(assert (=> mapNonEmpty!6123 (= condMapEmpty!6129 (= mapRest!6123 ((as const (Array (_ BitVec 32) ValueCell!1461)) mapDefault!6129)))))

(declare-fun e!107506 () Bool)

(assert (=> mapNonEmpty!6123 (= tp!14013 (and e!107506 mapRes!6129))))

(declare-fun b!163835 () Bool)

(assert (=> b!163835 (= e!107505 tp_is_empty!3609)))

(declare-fun b!163836 () Bool)

(assert (=> b!163836 (= e!107506 tp_is_empty!3609)))

(assert (= (and mapNonEmpty!6123 condMapEmpty!6129) mapIsEmpty!6129))

(assert (= (and mapNonEmpty!6123 (not condMapEmpty!6129)) mapNonEmpty!6129))

(assert (= (and mapNonEmpty!6129 ((_ is ValueCellFull!1461) mapValue!6129)) b!163835))

(assert (= (and mapNonEmpty!6123 ((_ is ValueCellFull!1461) mapDefault!6129)) b!163836))

(declare-fun m!194319 () Bool)

(assert (=> mapNonEmpty!6129 m!194319))

(check-sat (not b!163828) (not b!163796) (not b!163827) (not mapNonEmpty!6129) (not b_next!3807) b_and!10239 (not b!163811) (not b!163797) (not d!51403) (not bm!17318) (not b!163798) (not d!51405) tp_is_empty!3609)
(check-sat b_and!10239 (not b_next!3807))
