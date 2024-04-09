; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8104 () Bool)

(assert start!8104)

(declare-fun b!51049 () Bool)

(declare-fun b_free!1577 () Bool)

(declare-fun b_next!1577 () Bool)

(assert (=> b!51049 (= b_free!1577 (not b_next!1577))))

(declare-fun tp!6806 () Bool)

(declare-fun b_and!2797 () Bool)

(assert (=> b!51049 (= tp!6806 b_and!2797)))

(declare-fun b!51051 () Bool)

(declare-fun b_free!1579 () Bool)

(declare-fun b_next!1579 () Bool)

(assert (=> b!51051 (= b_free!1579 (not b_next!1579))))

(declare-fun tp!6803 () Bool)

(declare-fun b_and!2799 () Bool)

(assert (=> b!51051 (= tp!6803 b_and!2799)))

(declare-fun mapNonEmpty!2257 () Bool)

(declare-fun mapRes!2258 () Bool)

(declare-fun tp!6804 () Bool)

(declare-fun e!33071 () Bool)

(assert (=> mapNonEmpty!2257 (= mapRes!2258 (and tp!6804 e!33071))))

(declare-datatypes ((V!2587 0))(
  ( (V!2588 (val!1147 Int)) )
))
(declare-datatypes ((array!3324 0))(
  ( (array!3325 (arr!1588 (Array (_ BitVec 32) (_ BitVec 64))) (size!1813 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!759 0))(
  ( (ValueCellFull!759 (v!2179 V!2587)) (EmptyCell!759) )
))
(declare-datatypes ((array!3326 0))(
  ( (array!3327 (arr!1589 (Array (_ BitVec 32) ValueCell!759)) (size!1814 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!426 0))(
  ( (LongMapFixedSize!427 (defaultEntry!1927 Int) (mask!5726 (_ BitVec 32)) (extraKeys!1818 (_ BitVec 32)) (zeroValue!1845 V!2587) (minValue!1845 V!2587) (_size!262 (_ BitVec 32)) (_keys!3539 array!3324) (_values!1910 array!3326) (_vacant!262 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!248 0))(
  ( (Cell!249 (v!2180 LongMapFixedSize!426)) )
))
(declare-datatypes ((LongMap!248 0))(
  ( (LongMap!249 (underlying!135 Cell!248)) )
))
(declare-fun thiss!992 () LongMap!248)

(declare-fun mapKey!2258 () (_ BitVec 32))

(declare-fun mapValue!2257 () ValueCell!759)

(declare-fun mapRest!2258 () (Array (_ BitVec 32) ValueCell!759))

(assert (=> mapNonEmpty!2257 (= (arr!1589 (_values!1910 (v!2180 (underlying!135 thiss!992)))) (store mapRest!2258 mapKey!2258 mapValue!2257))))

(declare-fun mapNonEmpty!2258 () Bool)

(declare-fun mapRes!2257 () Bool)

(declare-fun tp!6805 () Bool)

(declare-fun e!33065 () Bool)

(assert (=> mapNonEmpty!2258 (= mapRes!2257 (and tp!6805 e!33065))))

(declare-fun mapValue!2258 () ValueCell!759)

(declare-fun mapKey!2257 () (_ BitVec 32))

(declare-fun newMap!16 () LongMapFixedSize!426)

(declare-fun mapRest!2257 () (Array (_ BitVec 32) ValueCell!759))

(assert (=> mapNonEmpty!2258 (= (arr!1589 (_values!1910 newMap!16)) (store mapRest!2257 mapKey!2257 mapValue!2258))))

(declare-fun b!51046 () Bool)

(declare-fun e!33063 () Bool)

(declare-fun tp_is_empty!2205 () Bool)

(assert (=> b!51046 (= e!33063 tp_is_empty!2205)))

(declare-fun b!51047 () Bool)

(declare-fun res!29267 () Bool)

(declare-fun e!33066 () Bool)

(assert (=> b!51047 (=> (not res!29267) (not e!33066))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!51047 (= res!29267 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1813 (_keys!3539 (v!2180 (underlying!135 thiss!992)))))))))

(declare-fun b!51048 () Bool)

(declare-fun e!33069 () Bool)

(declare-fun e!33070 () Bool)

(assert (=> b!51048 (= e!33069 e!33070)))

(declare-fun mapIsEmpty!2257 () Bool)

(assert (=> mapIsEmpty!2257 mapRes!2258))

(declare-fun e!33061 () Bool)

(declare-fun e!33062 () Bool)

(declare-fun array_inv!923 (array!3324) Bool)

(declare-fun array_inv!924 (array!3326) Bool)

(assert (=> b!51049 (= e!33062 (and tp!6806 tp_is_empty!2205 (array_inv!923 (_keys!3539 (v!2180 (underlying!135 thiss!992)))) (array_inv!924 (_values!1910 (v!2180 (underlying!135 thiss!992)))) e!33061))))

(declare-fun b!51050 () Bool)

(assert (=> b!51050 (= e!33070 e!33062)))

(declare-fun e!33073 () Bool)

(declare-fun e!33067 () Bool)

(assert (=> b!51051 (= e!33067 (and tp!6803 tp_is_empty!2205 (array_inv!923 (_keys!3539 newMap!16)) (array_inv!924 (_values!1910 newMap!16)) e!33073))))

(declare-fun b!51052 () Bool)

(declare-fun res!29271 () Bool)

(assert (=> b!51052 (=> (not res!29271) (not e!33066))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!51052 (= res!29271 (validMask!0 (mask!5726 (v!2180 (underlying!135 thiss!992)))))))

(declare-fun b!51053 () Bool)

(assert (=> b!51053 (= e!33065 tp_is_empty!2205)))

(declare-fun mapIsEmpty!2258 () Bool)

(assert (=> mapIsEmpty!2258 mapRes!2257))

(declare-fun b!51055 () Bool)

(assert (=> b!51055 (= e!33073 (and e!33063 mapRes!2257))))

(declare-fun condMapEmpty!2257 () Bool)

(declare-fun mapDefault!2257 () ValueCell!759)

(assert (=> b!51055 (= condMapEmpty!2257 (= (arr!1589 (_values!1910 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!759)) mapDefault!2257)))))

(declare-fun b!51056 () Bool)

(declare-fun res!29270 () Bool)

(assert (=> b!51056 (=> (not res!29270) (not e!33066))))

(declare-fun valid!145 (LongMapFixedSize!426) Bool)

(assert (=> b!51056 (= res!29270 (valid!145 newMap!16))))

(declare-fun b!51057 () Bool)

(declare-fun e!33072 () Bool)

(assert (=> b!51057 (= e!33061 (and e!33072 mapRes!2258))))

(declare-fun condMapEmpty!2258 () Bool)

(declare-fun mapDefault!2258 () ValueCell!759)

(assert (=> b!51057 (= condMapEmpty!2258 (= (arr!1589 (_values!1910 (v!2180 (underlying!135 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!759)) mapDefault!2258)))))

(declare-fun b!51058 () Bool)

(assert (=> b!51058 (= e!33072 tp_is_empty!2205)))

(declare-fun b!51059 () Bool)

(declare-fun res!29268 () Bool)

(assert (=> b!51059 (=> (not res!29268) (not e!33066))))

(assert (=> b!51059 (= res!29268 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5726 newMap!16)) (_size!262 (v!2180 (underlying!135 thiss!992)))))))

(declare-fun b!51060 () Bool)

(assert (=> b!51060 (= e!33066 (and (= (size!1814 (_values!1910 (v!2180 (underlying!135 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5726 (v!2180 (underlying!135 thiss!992))))) (= (size!1813 (_keys!3539 (v!2180 (underlying!135 thiss!992)))) (size!1814 (_values!1910 (v!2180 (underlying!135 thiss!992))))) (bvsge (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000000000000000000000000000) (bvslt (extraKeys!1818 (v!2180 (underlying!135 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun b!51054 () Bool)

(assert (=> b!51054 (= e!33071 tp_is_empty!2205)))

(declare-fun res!29269 () Bool)

(assert (=> start!8104 (=> (not res!29269) (not e!33066))))

(declare-fun valid!146 (LongMap!248) Bool)

(assert (=> start!8104 (= res!29269 (valid!146 thiss!992))))

(assert (=> start!8104 e!33066))

(assert (=> start!8104 e!33069))

(assert (=> start!8104 true))

(assert (=> start!8104 e!33067))

(assert (= (and start!8104 res!29269) b!51047))

(assert (= (and b!51047 res!29267) b!51056))

(assert (= (and b!51056 res!29270) b!51059))

(assert (= (and b!51059 res!29268) b!51052))

(assert (= (and b!51052 res!29271) b!51060))

(assert (= (and b!51057 condMapEmpty!2258) mapIsEmpty!2257))

(assert (= (and b!51057 (not condMapEmpty!2258)) mapNonEmpty!2257))

(get-info :version)

(assert (= (and mapNonEmpty!2257 ((_ is ValueCellFull!759) mapValue!2257)) b!51054))

(assert (= (and b!51057 ((_ is ValueCellFull!759) mapDefault!2258)) b!51058))

(assert (= b!51049 b!51057))

(assert (= b!51050 b!51049))

(assert (= b!51048 b!51050))

(assert (= start!8104 b!51048))

(assert (= (and b!51055 condMapEmpty!2257) mapIsEmpty!2258))

(assert (= (and b!51055 (not condMapEmpty!2257)) mapNonEmpty!2258))

(assert (= (and mapNonEmpty!2258 ((_ is ValueCellFull!759) mapValue!2258)) b!51053))

(assert (= (and b!51055 ((_ is ValueCellFull!759) mapDefault!2257)) b!51046))

(assert (= b!51051 b!51055))

(assert (= start!8104 b!51051))

(declare-fun m!44085 () Bool)

(assert (=> b!51052 m!44085))

(declare-fun m!44087 () Bool)

(assert (=> start!8104 m!44087))

(declare-fun m!44089 () Bool)

(assert (=> mapNonEmpty!2258 m!44089))

(declare-fun m!44091 () Bool)

(assert (=> b!51049 m!44091))

(declare-fun m!44093 () Bool)

(assert (=> b!51049 m!44093))

(declare-fun m!44095 () Bool)

(assert (=> b!51051 m!44095))

(declare-fun m!44097 () Bool)

(assert (=> b!51051 m!44097))

(declare-fun m!44099 () Bool)

(assert (=> mapNonEmpty!2257 m!44099))

(declare-fun m!44101 () Bool)

(assert (=> b!51056 m!44101))

(check-sat (not start!8104) (not b_next!1577) b_and!2797 tp_is_empty!2205 (not b!51049) b_and!2799 (not mapNonEmpty!2258) (not b!51056) (not b!51051) (not b_next!1579) (not b!51052) (not mapNonEmpty!2257))
(check-sat b_and!2797 b_and!2799 (not b_next!1577) (not b_next!1579))
(get-model)

(declare-fun d!10289 () Bool)

(assert (=> d!10289 (= (array_inv!923 (_keys!3539 newMap!16)) (bvsge (size!1813 (_keys!3539 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!51051 d!10289))

(declare-fun d!10291 () Bool)

(assert (=> d!10291 (= (array_inv!924 (_values!1910 newMap!16)) (bvsge (size!1814 (_values!1910 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!51051 d!10291))

(declare-fun d!10293 () Bool)

(declare-fun res!29293 () Bool)

(declare-fun e!33115 () Bool)

(assert (=> d!10293 (=> (not res!29293) (not e!33115))))

(declare-fun simpleValid!35 (LongMapFixedSize!426) Bool)

(assert (=> d!10293 (= res!29293 (simpleValid!35 newMap!16))))

(assert (=> d!10293 (= (valid!145 newMap!16) e!33115)))

(declare-fun b!51112 () Bool)

(declare-fun res!29294 () Bool)

(assert (=> b!51112 (=> (not res!29294) (not e!33115))))

(declare-fun arrayCountValidKeys!0 (array!3324 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!51112 (= res!29294 (= (arrayCountValidKeys!0 (_keys!3539 newMap!16) #b00000000000000000000000000000000 (size!1813 (_keys!3539 newMap!16))) (_size!262 newMap!16)))))

(declare-fun b!51113 () Bool)

(declare-fun res!29295 () Bool)

(assert (=> b!51113 (=> (not res!29295) (not e!33115))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3324 (_ BitVec 32)) Bool)

(assert (=> b!51113 (= res!29295 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3539 newMap!16) (mask!5726 newMap!16)))))

(declare-fun b!51114 () Bool)

(declare-datatypes ((List!1350 0))(
  ( (Nil!1347) (Cons!1346 (h!1926 (_ BitVec 64)) (t!4392 List!1350)) )
))
(declare-fun arrayNoDuplicates!0 (array!3324 (_ BitVec 32) List!1350) Bool)

(assert (=> b!51114 (= e!33115 (arrayNoDuplicates!0 (_keys!3539 newMap!16) #b00000000000000000000000000000000 Nil!1347))))

(assert (= (and d!10293 res!29293) b!51112))

(assert (= (and b!51112 res!29294) b!51113))

(assert (= (and b!51113 res!29295) b!51114))

(declare-fun m!44121 () Bool)

(assert (=> d!10293 m!44121))

(declare-fun m!44123 () Bool)

(assert (=> b!51112 m!44123))

(declare-fun m!44125 () Bool)

(assert (=> b!51113 m!44125))

(declare-fun m!44127 () Bool)

(assert (=> b!51114 m!44127))

(assert (=> b!51056 d!10293))

(declare-fun d!10295 () Bool)

(assert (=> d!10295 (= (valid!146 thiss!992) (valid!145 (v!2180 (underlying!135 thiss!992))))))

(declare-fun bs!2372 () Bool)

(assert (= bs!2372 d!10295))

(declare-fun m!44129 () Bool)

(assert (=> bs!2372 m!44129))

(assert (=> start!8104 d!10295))

(declare-fun d!10297 () Bool)

(assert (=> d!10297 (= (array_inv!923 (_keys!3539 (v!2180 (underlying!135 thiss!992)))) (bvsge (size!1813 (_keys!3539 (v!2180 (underlying!135 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!51049 d!10297))

(declare-fun d!10299 () Bool)

(assert (=> d!10299 (= (array_inv!924 (_values!1910 (v!2180 (underlying!135 thiss!992)))) (bvsge (size!1814 (_values!1910 (v!2180 (underlying!135 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!51049 d!10299))

(declare-fun d!10301 () Bool)

(assert (=> d!10301 (= (validMask!0 (mask!5726 (v!2180 (underlying!135 thiss!992)))) (and (or (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000000000000000000000000111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000000000000000000000001111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000000000000000000000011111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000000000000000000000111111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000000000000000000001111111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000000000000000000011111111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000000000000000000111111111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000000000000000001111111111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000000000000000011111111111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000000000000000111111111111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000000000000001111111111111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000000000000011111111111111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000000000000111111111111111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000000000001111111111111111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000000000011111111111111111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000000000111111111111111111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000000001111111111111111111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000000011111111111111111111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000000111111111111111111111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000001111111111111111111111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000011111111111111111111111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000111111111111111111111111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000001111111111111111111111111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000011111111111111111111111111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000111111111111111111111111111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00001111111111111111111111111111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00011111111111111111111111111111) (= (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!51052 d!10301))

(declare-fun condMapEmpty!2267 () Bool)

(declare-fun mapDefault!2267 () ValueCell!759)

(assert (=> mapNonEmpty!2258 (= condMapEmpty!2267 (= mapRest!2257 ((as const (Array (_ BitVec 32) ValueCell!759)) mapDefault!2267)))))

(declare-fun e!33121 () Bool)

(declare-fun mapRes!2267 () Bool)

(assert (=> mapNonEmpty!2258 (= tp!6805 (and e!33121 mapRes!2267))))

(declare-fun mapNonEmpty!2267 () Bool)

(declare-fun tp!6821 () Bool)

(declare-fun e!33120 () Bool)

(assert (=> mapNonEmpty!2267 (= mapRes!2267 (and tp!6821 e!33120))))

(declare-fun mapValue!2267 () ValueCell!759)

(declare-fun mapKey!2267 () (_ BitVec 32))

(declare-fun mapRest!2267 () (Array (_ BitVec 32) ValueCell!759))

(assert (=> mapNonEmpty!2267 (= mapRest!2257 (store mapRest!2267 mapKey!2267 mapValue!2267))))

(declare-fun mapIsEmpty!2267 () Bool)

(assert (=> mapIsEmpty!2267 mapRes!2267))

(declare-fun b!51122 () Bool)

(assert (=> b!51122 (= e!33121 tp_is_empty!2205)))

(declare-fun b!51121 () Bool)

(assert (=> b!51121 (= e!33120 tp_is_empty!2205)))

(assert (= (and mapNonEmpty!2258 condMapEmpty!2267) mapIsEmpty!2267))

(assert (= (and mapNonEmpty!2258 (not condMapEmpty!2267)) mapNonEmpty!2267))

(assert (= (and mapNonEmpty!2267 ((_ is ValueCellFull!759) mapValue!2267)) b!51121))

(assert (= (and mapNonEmpty!2258 ((_ is ValueCellFull!759) mapDefault!2267)) b!51122))

(declare-fun m!44131 () Bool)

(assert (=> mapNonEmpty!2267 m!44131))

(declare-fun condMapEmpty!2268 () Bool)

(declare-fun mapDefault!2268 () ValueCell!759)

(assert (=> mapNonEmpty!2257 (= condMapEmpty!2268 (= mapRest!2258 ((as const (Array (_ BitVec 32) ValueCell!759)) mapDefault!2268)))))

(declare-fun e!33123 () Bool)

(declare-fun mapRes!2268 () Bool)

(assert (=> mapNonEmpty!2257 (= tp!6804 (and e!33123 mapRes!2268))))

(declare-fun mapNonEmpty!2268 () Bool)

(declare-fun tp!6822 () Bool)

(declare-fun e!33122 () Bool)

(assert (=> mapNonEmpty!2268 (= mapRes!2268 (and tp!6822 e!33122))))

(declare-fun mapValue!2268 () ValueCell!759)

(declare-fun mapKey!2268 () (_ BitVec 32))

(declare-fun mapRest!2268 () (Array (_ BitVec 32) ValueCell!759))

(assert (=> mapNonEmpty!2268 (= mapRest!2258 (store mapRest!2268 mapKey!2268 mapValue!2268))))

(declare-fun mapIsEmpty!2268 () Bool)

(assert (=> mapIsEmpty!2268 mapRes!2268))

(declare-fun b!51124 () Bool)

(assert (=> b!51124 (= e!33123 tp_is_empty!2205)))

(declare-fun b!51123 () Bool)

(assert (=> b!51123 (= e!33122 tp_is_empty!2205)))

(assert (= (and mapNonEmpty!2257 condMapEmpty!2268) mapIsEmpty!2268))

(assert (= (and mapNonEmpty!2257 (not condMapEmpty!2268)) mapNonEmpty!2268))

(assert (= (and mapNonEmpty!2268 ((_ is ValueCellFull!759) mapValue!2268)) b!51123))

(assert (= (and mapNonEmpty!2257 ((_ is ValueCellFull!759) mapDefault!2268)) b!51124))

(declare-fun m!44133 () Bool)

(assert (=> mapNonEmpty!2268 m!44133))

(check-sat (not mapNonEmpty!2268) (not b!51112) (not b!51113) (not b_next!1577) (not d!10293) tp_is_empty!2205 (not b!51114) b_and!2797 (not mapNonEmpty!2267) b_and!2799 (not d!10295) (not b_next!1579))
(check-sat b_and!2797 b_and!2799 (not b_next!1577) (not b_next!1579))
(get-model)

(declare-fun b!51135 () Bool)

(declare-fun e!33135 () Bool)

(declare-fun call!3921 () Bool)

(assert (=> b!51135 (= e!33135 call!3921)))

(declare-fun b!51136 () Bool)

(declare-fun e!33134 () Bool)

(declare-fun e!33133 () Bool)

(assert (=> b!51136 (= e!33134 e!33133)))

(declare-fun res!29303 () Bool)

(assert (=> b!51136 (=> (not res!29303) (not e!33133))))

(declare-fun e!33132 () Bool)

(assert (=> b!51136 (= res!29303 (not e!33132))))

(declare-fun res!29304 () Bool)

(assert (=> b!51136 (=> (not res!29304) (not e!33132))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!51136 (= res!29304 (validKeyInArray!0 (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!51137 () Bool)

(assert (=> b!51137 (= e!33133 e!33135)))

(declare-fun c!6867 () Bool)

(assert (=> b!51137 (= c!6867 (validKeyInArray!0 (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!10303 () Bool)

(declare-fun res!29302 () Bool)

(assert (=> d!10303 (=> res!29302 e!33134)))

(assert (=> d!10303 (= res!29302 (bvsge #b00000000000000000000000000000000 (size!1813 (_keys!3539 newMap!16))))))

(assert (=> d!10303 (= (arrayNoDuplicates!0 (_keys!3539 newMap!16) #b00000000000000000000000000000000 Nil!1347) e!33134)))

(declare-fun bm!3918 () Bool)

(assert (=> bm!3918 (= call!3921 (arrayNoDuplicates!0 (_keys!3539 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!6867 (Cons!1346 (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000) Nil!1347) Nil!1347)))))

(declare-fun b!51138 () Bool)

(declare-fun contains!622 (List!1350 (_ BitVec 64)) Bool)

(assert (=> b!51138 (= e!33132 (contains!622 Nil!1347 (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!51139 () Bool)

(assert (=> b!51139 (= e!33135 call!3921)))

(assert (= (and d!10303 (not res!29302)) b!51136))

(assert (= (and b!51136 res!29304) b!51138))

(assert (= (and b!51136 res!29303) b!51137))

(assert (= (and b!51137 c!6867) b!51139))

(assert (= (and b!51137 (not c!6867)) b!51135))

(assert (= (or b!51139 b!51135) bm!3918))

(declare-fun m!44135 () Bool)

(assert (=> b!51136 m!44135))

(assert (=> b!51136 m!44135))

(declare-fun m!44137 () Bool)

(assert (=> b!51136 m!44137))

(assert (=> b!51137 m!44135))

(assert (=> b!51137 m!44135))

(assert (=> b!51137 m!44137))

(assert (=> bm!3918 m!44135))

(declare-fun m!44139 () Bool)

(assert (=> bm!3918 m!44139))

(assert (=> b!51138 m!44135))

(assert (=> b!51138 m!44135))

(declare-fun m!44141 () Bool)

(assert (=> b!51138 m!44141))

(assert (=> b!51114 d!10303))

(declare-fun d!10305 () Bool)

(declare-fun res!29305 () Bool)

(declare-fun e!33136 () Bool)

(assert (=> d!10305 (=> (not res!29305) (not e!33136))))

(assert (=> d!10305 (= res!29305 (simpleValid!35 (v!2180 (underlying!135 thiss!992))))))

(assert (=> d!10305 (= (valid!145 (v!2180 (underlying!135 thiss!992))) e!33136)))

(declare-fun b!51140 () Bool)

(declare-fun res!29306 () Bool)

(assert (=> b!51140 (=> (not res!29306) (not e!33136))))

(assert (=> b!51140 (= res!29306 (= (arrayCountValidKeys!0 (_keys!3539 (v!2180 (underlying!135 thiss!992))) #b00000000000000000000000000000000 (size!1813 (_keys!3539 (v!2180 (underlying!135 thiss!992))))) (_size!262 (v!2180 (underlying!135 thiss!992)))))))

(declare-fun b!51141 () Bool)

(declare-fun res!29307 () Bool)

(assert (=> b!51141 (=> (not res!29307) (not e!33136))))

(assert (=> b!51141 (= res!29307 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3539 (v!2180 (underlying!135 thiss!992))) (mask!5726 (v!2180 (underlying!135 thiss!992)))))))

(declare-fun b!51142 () Bool)

(assert (=> b!51142 (= e!33136 (arrayNoDuplicates!0 (_keys!3539 (v!2180 (underlying!135 thiss!992))) #b00000000000000000000000000000000 Nil!1347))))

(assert (= (and d!10305 res!29305) b!51140))

(assert (= (and b!51140 res!29306) b!51141))

(assert (= (and b!51141 res!29307) b!51142))

(declare-fun m!44143 () Bool)

(assert (=> d!10305 m!44143))

(declare-fun m!44145 () Bool)

(assert (=> b!51140 m!44145))

(declare-fun m!44147 () Bool)

(assert (=> b!51141 m!44147))

(declare-fun m!44149 () Bool)

(assert (=> b!51142 m!44149))

(assert (=> d!10295 d!10305))

(declare-fun b!51151 () Bool)

(declare-fun e!33145 () Bool)

(declare-fun e!33143 () Bool)

(assert (=> b!51151 (= e!33145 e!33143)))

(declare-fun lt!21137 () (_ BitVec 64))

(assert (=> b!51151 (= lt!21137 (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!1424 0))(
  ( (Unit!1425) )
))
(declare-fun lt!21136 () Unit!1424)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3324 (_ BitVec 64) (_ BitVec 32)) Unit!1424)

(assert (=> b!51151 (= lt!21136 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3539 newMap!16) lt!21137 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!3324 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!51151 (arrayContainsKey!0 (_keys!3539 newMap!16) lt!21137 #b00000000000000000000000000000000)))

(declare-fun lt!21138 () Unit!1424)

(assert (=> b!51151 (= lt!21138 lt!21136)))

(declare-fun res!29312 () Bool)

(declare-datatypes ((SeekEntryResult!231 0))(
  ( (MissingZero!231 (index!3046 (_ BitVec 32))) (Found!231 (index!3047 (_ BitVec 32))) (Intermediate!231 (undefined!1043 Bool) (index!3048 (_ BitVec 32)) (x!9317 (_ BitVec 32))) (Undefined!231) (MissingVacant!231 (index!3049 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3324 (_ BitVec 32)) SeekEntryResult!231)

(assert (=> b!51151 (= res!29312 (= (seekEntryOrOpen!0 (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000) (_keys!3539 newMap!16) (mask!5726 newMap!16)) (Found!231 #b00000000000000000000000000000000)))))

(assert (=> b!51151 (=> (not res!29312) (not e!33143))))

(declare-fun b!51152 () Bool)

(declare-fun e!33144 () Bool)

(assert (=> b!51152 (= e!33144 e!33145)))

(declare-fun c!6870 () Bool)

(assert (=> b!51152 (= c!6870 (validKeyInArray!0 (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!51153 () Bool)

(declare-fun call!3924 () Bool)

(assert (=> b!51153 (= e!33143 call!3924)))

(declare-fun b!51154 () Bool)

(assert (=> b!51154 (= e!33145 call!3924)))

(declare-fun bm!3921 () Bool)

(assert (=> bm!3921 (= call!3924 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3539 newMap!16) (mask!5726 newMap!16)))))

(declare-fun d!10307 () Bool)

(declare-fun res!29313 () Bool)

(assert (=> d!10307 (=> res!29313 e!33144)))

(assert (=> d!10307 (= res!29313 (bvsge #b00000000000000000000000000000000 (size!1813 (_keys!3539 newMap!16))))))

(assert (=> d!10307 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3539 newMap!16) (mask!5726 newMap!16)) e!33144)))

(assert (= (and d!10307 (not res!29313)) b!51152))

(assert (= (and b!51152 c!6870) b!51151))

(assert (= (and b!51152 (not c!6870)) b!51154))

(assert (= (and b!51151 res!29312) b!51153))

(assert (= (or b!51153 b!51154) bm!3921))

(assert (=> b!51151 m!44135))

(declare-fun m!44151 () Bool)

(assert (=> b!51151 m!44151))

(declare-fun m!44153 () Bool)

(assert (=> b!51151 m!44153))

(assert (=> b!51151 m!44135))

(declare-fun m!44155 () Bool)

(assert (=> b!51151 m!44155))

(assert (=> b!51152 m!44135))

(assert (=> b!51152 m!44135))

(assert (=> b!51152 m!44137))

(declare-fun m!44157 () Bool)

(assert (=> bm!3921 m!44157))

(assert (=> b!51113 d!10307))

(declare-fun b!51163 () Bool)

(declare-fun res!29325 () Bool)

(declare-fun e!33148 () Bool)

(assert (=> b!51163 (=> (not res!29325) (not e!33148))))

(assert (=> b!51163 (= res!29325 (and (= (size!1814 (_values!1910 newMap!16)) (bvadd (mask!5726 newMap!16) #b00000000000000000000000000000001)) (= (size!1813 (_keys!3539 newMap!16)) (size!1814 (_values!1910 newMap!16))) (bvsge (_size!262 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!262 newMap!16) (bvadd (mask!5726 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun b!51166 () Bool)

(assert (=> b!51166 (= e!33148 (and (bvsge (extraKeys!1818 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!1818 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!262 newMap!16) #b00000000000000000000000000000000)))))

(declare-fun d!10309 () Bool)

(declare-fun res!29322 () Bool)

(assert (=> d!10309 (=> (not res!29322) (not e!33148))))

(assert (=> d!10309 (= res!29322 (validMask!0 (mask!5726 newMap!16)))))

(assert (=> d!10309 (= (simpleValid!35 newMap!16) e!33148)))

(declare-fun b!51165 () Bool)

(declare-fun res!29323 () Bool)

(assert (=> b!51165 (=> (not res!29323) (not e!33148))))

(declare-fun size!1817 (LongMapFixedSize!426) (_ BitVec 32))

(assert (=> b!51165 (= res!29323 (= (size!1817 newMap!16) (bvadd (_size!262 newMap!16) (bvsdiv (bvadd (extraKeys!1818 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!51164 () Bool)

(declare-fun res!29324 () Bool)

(assert (=> b!51164 (=> (not res!29324) (not e!33148))))

(assert (=> b!51164 (= res!29324 (bvsge (size!1817 newMap!16) (_size!262 newMap!16)))))

(assert (= (and d!10309 res!29322) b!51163))

(assert (= (and b!51163 res!29325) b!51164))

(assert (= (and b!51164 res!29324) b!51165))

(assert (= (and b!51165 res!29323) b!51166))

(declare-fun m!44159 () Bool)

(assert (=> d!10309 m!44159))

(declare-fun m!44161 () Bool)

(assert (=> b!51165 m!44161))

(assert (=> b!51164 m!44161))

(assert (=> d!10293 d!10309))

(declare-fun b!51175 () Bool)

(declare-fun e!33153 () (_ BitVec 32))

(declare-fun call!3927 () (_ BitVec 32))

(assert (=> b!51175 (= e!33153 call!3927)))

(declare-fun d!10311 () Bool)

(declare-fun lt!21141 () (_ BitVec 32))

(assert (=> d!10311 (and (bvsge lt!21141 #b00000000000000000000000000000000) (bvsle lt!21141 (bvsub (size!1813 (_keys!3539 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!33154 () (_ BitVec 32))

(assert (=> d!10311 (= lt!21141 e!33154)))

(declare-fun c!6875 () Bool)

(assert (=> d!10311 (= c!6875 (bvsge #b00000000000000000000000000000000 (size!1813 (_keys!3539 newMap!16))))))

(assert (=> d!10311 (and (bvsle #b00000000000000000000000000000000 (size!1813 (_keys!3539 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!1813 (_keys!3539 newMap!16)) (size!1813 (_keys!3539 newMap!16))))))

(assert (=> d!10311 (= (arrayCountValidKeys!0 (_keys!3539 newMap!16) #b00000000000000000000000000000000 (size!1813 (_keys!3539 newMap!16))) lt!21141)))

(declare-fun b!51176 () Bool)

(assert (=> b!51176 (= e!33154 #b00000000000000000000000000000000)))

(declare-fun b!51177 () Bool)

(assert (=> b!51177 (= e!33154 e!33153)))

(declare-fun c!6876 () Bool)

(assert (=> b!51177 (= c!6876 (validKeyInArray!0 (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!51178 () Bool)

(assert (=> b!51178 (= e!33153 (bvadd #b00000000000000000000000000000001 call!3927))))

(declare-fun bm!3924 () Bool)

(assert (=> bm!3924 (= call!3927 (arrayCountValidKeys!0 (_keys!3539 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1813 (_keys!3539 newMap!16))))))

(assert (= (and d!10311 c!6875) b!51176))

(assert (= (and d!10311 (not c!6875)) b!51177))

(assert (= (and b!51177 c!6876) b!51178))

(assert (= (and b!51177 (not c!6876)) b!51175))

(assert (= (or b!51178 b!51175) bm!3924))

(assert (=> b!51177 m!44135))

(assert (=> b!51177 m!44135))

(assert (=> b!51177 m!44137))

(declare-fun m!44163 () Bool)

(assert (=> bm!3924 m!44163))

(assert (=> b!51112 d!10311))

(declare-fun condMapEmpty!2269 () Bool)

(declare-fun mapDefault!2269 () ValueCell!759)

(assert (=> mapNonEmpty!2267 (= condMapEmpty!2269 (= mapRest!2267 ((as const (Array (_ BitVec 32) ValueCell!759)) mapDefault!2269)))))

(declare-fun e!33156 () Bool)

(declare-fun mapRes!2269 () Bool)

(assert (=> mapNonEmpty!2267 (= tp!6821 (and e!33156 mapRes!2269))))

(declare-fun mapNonEmpty!2269 () Bool)

(declare-fun tp!6823 () Bool)

(declare-fun e!33155 () Bool)

(assert (=> mapNonEmpty!2269 (= mapRes!2269 (and tp!6823 e!33155))))

(declare-fun mapRest!2269 () (Array (_ BitVec 32) ValueCell!759))

(declare-fun mapValue!2269 () ValueCell!759)

(declare-fun mapKey!2269 () (_ BitVec 32))

(assert (=> mapNonEmpty!2269 (= mapRest!2267 (store mapRest!2269 mapKey!2269 mapValue!2269))))

(declare-fun mapIsEmpty!2269 () Bool)

(assert (=> mapIsEmpty!2269 mapRes!2269))

(declare-fun b!51180 () Bool)

(assert (=> b!51180 (= e!33156 tp_is_empty!2205)))

(declare-fun b!51179 () Bool)

(assert (=> b!51179 (= e!33155 tp_is_empty!2205)))

(assert (= (and mapNonEmpty!2267 condMapEmpty!2269) mapIsEmpty!2269))

(assert (= (and mapNonEmpty!2267 (not condMapEmpty!2269)) mapNonEmpty!2269))

(assert (= (and mapNonEmpty!2269 ((_ is ValueCellFull!759) mapValue!2269)) b!51179))

(assert (= (and mapNonEmpty!2267 ((_ is ValueCellFull!759) mapDefault!2269)) b!51180))

(declare-fun m!44165 () Bool)

(assert (=> mapNonEmpty!2269 m!44165))

(declare-fun condMapEmpty!2270 () Bool)

(declare-fun mapDefault!2270 () ValueCell!759)

(assert (=> mapNonEmpty!2268 (= condMapEmpty!2270 (= mapRest!2268 ((as const (Array (_ BitVec 32) ValueCell!759)) mapDefault!2270)))))

(declare-fun e!33158 () Bool)

(declare-fun mapRes!2270 () Bool)

(assert (=> mapNonEmpty!2268 (= tp!6822 (and e!33158 mapRes!2270))))

(declare-fun mapNonEmpty!2270 () Bool)

(declare-fun tp!6824 () Bool)

(declare-fun e!33157 () Bool)

(assert (=> mapNonEmpty!2270 (= mapRes!2270 (and tp!6824 e!33157))))

(declare-fun mapValue!2270 () ValueCell!759)

(declare-fun mapRest!2270 () (Array (_ BitVec 32) ValueCell!759))

(declare-fun mapKey!2270 () (_ BitVec 32))

(assert (=> mapNonEmpty!2270 (= mapRest!2268 (store mapRest!2270 mapKey!2270 mapValue!2270))))

(declare-fun mapIsEmpty!2270 () Bool)

(assert (=> mapIsEmpty!2270 mapRes!2270))

(declare-fun b!51182 () Bool)

(assert (=> b!51182 (= e!33158 tp_is_empty!2205)))

(declare-fun b!51181 () Bool)

(assert (=> b!51181 (= e!33157 tp_is_empty!2205)))

(assert (= (and mapNonEmpty!2268 condMapEmpty!2270) mapIsEmpty!2270))

(assert (= (and mapNonEmpty!2268 (not condMapEmpty!2270)) mapNonEmpty!2270))

(assert (= (and mapNonEmpty!2270 ((_ is ValueCellFull!759) mapValue!2270)) b!51181))

(assert (= (and mapNonEmpty!2268 ((_ is ValueCellFull!759) mapDefault!2270)) b!51182))

(declare-fun m!44167 () Bool)

(assert (=> mapNonEmpty!2270 m!44167))

(check-sat (not b!51137) (not b!51152) (not b!51164) (not b_next!1577) b_and!2797 (not mapNonEmpty!2269) (not b!51177) (not b_next!1579) (not b!51141) (not bm!3921) (not bm!3918) (not d!10309) (not b!51165) (not b!51142) (not b!51140) b_and!2799 (not b!51138) (not d!10305) (not mapNonEmpty!2270) tp_is_empty!2205 (not b!51151) (not bm!3924) (not b!51136))
(check-sat b_and!2797 b_and!2799 (not b_next!1577) (not b_next!1579))
(get-model)

(declare-fun b!51183 () Bool)

(declare-fun e!33159 () (_ BitVec 32))

(declare-fun call!3928 () (_ BitVec 32))

(assert (=> b!51183 (= e!33159 call!3928)))

(declare-fun d!10313 () Bool)

(declare-fun lt!21142 () (_ BitVec 32))

(assert (=> d!10313 (and (bvsge lt!21142 #b00000000000000000000000000000000) (bvsle lt!21142 (bvsub (size!1813 (_keys!3539 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!33160 () (_ BitVec 32))

(assert (=> d!10313 (= lt!21142 e!33160)))

(declare-fun c!6877 () Bool)

(assert (=> d!10313 (= c!6877 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1813 (_keys!3539 newMap!16))))))

(assert (=> d!10313 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1813 (_keys!3539 newMap!16))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!1813 (_keys!3539 newMap!16)) (size!1813 (_keys!3539 newMap!16))))))

(assert (=> d!10313 (= (arrayCountValidKeys!0 (_keys!3539 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1813 (_keys!3539 newMap!16))) lt!21142)))

(declare-fun b!51184 () Bool)

(assert (=> b!51184 (= e!33160 #b00000000000000000000000000000000)))

(declare-fun b!51185 () Bool)

(assert (=> b!51185 (= e!33160 e!33159)))

(declare-fun c!6878 () Bool)

(assert (=> b!51185 (= c!6878 (validKeyInArray!0 (select (arr!1588 (_keys!3539 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!51186 () Bool)

(assert (=> b!51186 (= e!33159 (bvadd #b00000000000000000000000000000001 call!3928))))

(declare-fun bm!3925 () Bool)

(assert (=> bm!3925 (= call!3928 (arrayCountValidKeys!0 (_keys!3539 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1813 (_keys!3539 newMap!16))))))

(assert (= (and d!10313 c!6877) b!51184))

(assert (= (and d!10313 (not c!6877)) b!51185))

(assert (= (and b!51185 c!6878) b!51186))

(assert (= (and b!51185 (not c!6878)) b!51183))

(assert (= (or b!51186 b!51183) bm!3925))

(declare-fun m!44169 () Bool)

(assert (=> b!51185 m!44169))

(assert (=> b!51185 m!44169))

(declare-fun m!44171 () Bool)

(assert (=> b!51185 m!44171))

(declare-fun m!44173 () Bool)

(assert (=> bm!3925 m!44173))

(assert (=> bm!3924 d!10313))

(declare-fun d!10315 () Bool)

(assert (=> d!10315 (= (validKeyInArray!0 (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000)) (and (not (= (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!51177 d!10315))

(declare-fun d!10317 () Bool)

(declare-fun lt!21145 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!57 (List!1350) (InoxSet (_ BitVec 64)))

(assert (=> d!10317 (= lt!21145 (select (content!57 Nil!1347) (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!33166 () Bool)

(assert (=> d!10317 (= lt!21145 e!33166)))

(declare-fun res!29330 () Bool)

(assert (=> d!10317 (=> (not res!29330) (not e!33166))))

(assert (=> d!10317 (= res!29330 ((_ is Cons!1346) Nil!1347))))

(assert (=> d!10317 (= (contains!622 Nil!1347 (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000)) lt!21145)))

(declare-fun b!51191 () Bool)

(declare-fun e!33165 () Bool)

(assert (=> b!51191 (= e!33166 e!33165)))

(declare-fun res!29331 () Bool)

(assert (=> b!51191 (=> res!29331 e!33165)))

(assert (=> b!51191 (= res!29331 (= (h!1926 Nil!1347) (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!51192 () Bool)

(assert (=> b!51192 (= e!33165 (contains!622 (t!4392 Nil!1347) (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!10317 res!29330) b!51191))

(assert (= (and b!51191 (not res!29331)) b!51192))

(declare-fun m!44175 () Bool)

(assert (=> d!10317 m!44175))

(assert (=> d!10317 m!44135))

(declare-fun m!44177 () Bool)

(assert (=> d!10317 m!44177))

(assert (=> b!51192 m!44135))

(declare-fun m!44179 () Bool)

(assert (=> b!51192 m!44179))

(assert (=> b!51138 d!10317))

(declare-fun d!10319 () Bool)

(assert (=> d!10319 (= (size!1817 newMap!16) (bvadd (_size!262 newMap!16) (bvsdiv (bvadd (extraKeys!1818 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!51165 d!10319))

(declare-fun b!51193 () Bool)

(declare-fun res!29335 () Bool)

(declare-fun e!33167 () Bool)

(assert (=> b!51193 (=> (not res!29335) (not e!33167))))

(assert (=> b!51193 (= res!29335 (and (= (size!1814 (_values!1910 (v!2180 (underlying!135 thiss!992)))) (bvadd (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000000000000000000000000001)) (= (size!1813 (_keys!3539 (v!2180 (underlying!135 thiss!992)))) (size!1814 (_values!1910 (v!2180 (underlying!135 thiss!992))))) (bvsge (_size!262 (v!2180 (underlying!135 thiss!992))) #b00000000000000000000000000000000) (bvsle (_size!262 (v!2180 (underlying!135 thiss!992))) (bvadd (mask!5726 (v!2180 (underlying!135 thiss!992))) #b00000000000000000000000000000001))))))

(declare-fun b!51196 () Bool)

(assert (=> b!51196 (= e!33167 (and (bvsge (extraKeys!1818 (v!2180 (underlying!135 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1818 (v!2180 (underlying!135 thiss!992))) #b00000000000000000000000000000011) (bvsge (_vacant!262 (v!2180 (underlying!135 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun d!10321 () Bool)

(declare-fun res!29332 () Bool)

(assert (=> d!10321 (=> (not res!29332) (not e!33167))))

(assert (=> d!10321 (= res!29332 (validMask!0 (mask!5726 (v!2180 (underlying!135 thiss!992)))))))

(assert (=> d!10321 (= (simpleValid!35 (v!2180 (underlying!135 thiss!992))) e!33167)))

(declare-fun b!51195 () Bool)

(declare-fun res!29333 () Bool)

(assert (=> b!51195 (=> (not res!29333) (not e!33167))))

(assert (=> b!51195 (= res!29333 (= (size!1817 (v!2180 (underlying!135 thiss!992))) (bvadd (_size!262 (v!2180 (underlying!135 thiss!992))) (bvsdiv (bvadd (extraKeys!1818 (v!2180 (underlying!135 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!51194 () Bool)

(declare-fun res!29334 () Bool)

(assert (=> b!51194 (=> (not res!29334) (not e!33167))))

(assert (=> b!51194 (= res!29334 (bvsge (size!1817 (v!2180 (underlying!135 thiss!992))) (_size!262 (v!2180 (underlying!135 thiss!992)))))))

(assert (= (and d!10321 res!29332) b!51193))

(assert (= (and b!51193 res!29335) b!51194))

(assert (= (and b!51194 res!29334) b!51195))

(assert (= (and b!51195 res!29333) b!51196))

(assert (=> d!10321 m!44085))

(declare-fun m!44181 () Bool)

(assert (=> b!51195 m!44181))

(assert (=> b!51194 m!44181))

(assert (=> d!10305 d!10321))

(assert (=> b!51152 d!10315))

(assert (=> b!51164 d!10319))

(declare-fun d!10323 () Bool)

(assert (=> d!10323 (arrayContainsKey!0 (_keys!3539 newMap!16) lt!21137 #b00000000000000000000000000000000)))

(declare-fun lt!21148 () Unit!1424)

(declare-fun choose!13 (array!3324 (_ BitVec 64) (_ BitVec 32)) Unit!1424)

(assert (=> d!10323 (= lt!21148 (choose!13 (_keys!3539 newMap!16) lt!21137 #b00000000000000000000000000000000))))

(assert (=> d!10323 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!10323 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3539 newMap!16) lt!21137 #b00000000000000000000000000000000) lt!21148)))

(declare-fun bs!2373 () Bool)

(assert (= bs!2373 d!10323))

(assert (=> bs!2373 m!44153))

(declare-fun m!44183 () Bool)

(assert (=> bs!2373 m!44183))

(assert (=> b!51151 d!10323))

(declare-fun d!10325 () Bool)

(declare-fun res!29340 () Bool)

(declare-fun e!33172 () Bool)

(assert (=> d!10325 (=> res!29340 e!33172)))

(assert (=> d!10325 (= res!29340 (= (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000) lt!21137))))

(assert (=> d!10325 (= (arrayContainsKey!0 (_keys!3539 newMap!16) lt!21137 #b00000000000000000000000000000000) e!33172)))

(declare-fun b!51201 () Bool)

(declare-fun e!33173 () Bool)

(assert (=> b!51201 (= e!33172 e!33173)))

(declare-fun res!29341 () Bool)

(assert (=> b!51201 (=> (not res!29341) (not e!33173))))

(assert (=> b!51201 (= res!29341 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1813 (_keys!3539 newMap!16))))))

(declare-fun b!51202 () Bool)

(assert (=> b!51202 (= e!33173 (arrayContainsKey!0 (_keys!3539 newMap!16) lt!21137 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!10325 (not res!29340)) b!51201))

(assert (= (and b!51201 res!29341) b!51202))

(assert (=> d!10325 m!44135))

(declare-fun m!44185 () Bool)

(assert (=> b!51202 m!44185))

(assert (=> b!51151 d!10325))

(declare-fun b!51215 () Bool)

(declare-fun e!33180 () SeekEntryResult!231)

(declare-fun lt!21155 () SeekEntryResult!231)

(assert (=> b!51215 (= e!33180 (MissingZero!231 (index!3048 lt!21155)))))

(declare-fun b!51216 () Bool)

(declare-fun c!6885 () Bool)

(declare-fun lt!21156 () (_ BitVec 64))

(assert (=> b!51216 (= c!6885 (= lt!21156 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!33181 () SeekEntryResult!231)

(assert (=> b!51216 (= e!33181 e!33180)))

(declare-fun b!51217 () Bool)

(declare-fun e!33182 () SeekEntryResult!231)

(assert (=> b!51217 (= e!33182 e!33181)))

(assert (=> b!51217 (= lt!21156 (select (arr!1588 (_keys!3539 newMap!16)) (index!3048 lt!21155)))))

(declare-fun c!6887 () Bool)

(assert (=> b!51217 (= c!6887 (= lt!21156 (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!51218 () Bool)

(assert (=> b!51218 (= e!33181 (Found!231 (index!3048 lt!21155)))))

(declare-fun b!51219 () Bool)

(assert (=> b!51219 (= e!33182 Undefined!231)))

(declare-fun d!10327 () Bool)

(declare-fun lt!21157 () SeekEntryResult!231)

(assert (=> d!10327 (and (or ((_ is Undefined!231) lt!21157) (not ((_ is Found!231) lt!21157)) (and (bvsge (index!3047 lt!21157) #b00000000000000000000000000000000) (bvslt (index!3047 lt!21157) (size!1813 (_keys!3539 newMap!16))))) (or ((_ is Undefined!231) lt!21157) ((_ is Found!231) lt!21157) (not ((_ is MissingZero!231) lt!21157)) (and (bvsge (index!3046 lt!21157) #b00000000000000000000000000000000) (bvslt (index!3046 lt!21157) (size!1813 (_keys!3539 newMap!16))))) (or ((_ is Undefined!231) lt!21157) ((_ is Found!231) lt!21157) ((_ is MissingZero!231) lt!21157) (not ((_ is MissingVacant!231) lt!21157)) (and (bvsge (index!3049 lt!21157) #b00000000000000000000000000000000) (bvslt (index!3049 lt!21157) (size!1813 (_keys!3539 newMap!16))))) (or ((_ is Undefined!231) lt!21157) (ite ((_ is Found!231) lt!21157) (= (select (arr!1588 (_keys!3539 newMap!16)) (index!3047 lt!21157)) (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!231) lt!21157) (= (select (arr!1588 (_keys!3539 newMap!16)) (index!3046 lt!21157)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!231) lt!21157) (= (select (arr!1588 (_keys!3539 newMap!16)) (index!3049 lt!21157)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!10327 (= lt!21157 e!33182)))

(declare-fun c!6886 () Bool)

(assert (=> d!10327 (= c!6886 (and ((_ is Intermediate!231) lt!21155) (undefined!1043 lt!21155)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3324 (_ BitVec 32)) SeekEntryResult!231)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!10327 (= lt!21155 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000) (mask!5726 newMap!16)) (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000) (_keys!3539 newMap!16) (mask!5726 newMap!16)))))

(assert (=> d!10327 (validMask!0 (mask!5726 newMap!16))))

(assert (=> d!10327 (= (seekEntryOrOpen!0 (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000) (_keys!3539 newMap!16) (mask!5726 newMap!16)) lt!21157)))

(declare-fun b!51220 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3324 (_ BitVec 32)) SeekEntryResult!231)

(assert (=> b!51220 (= e!33180 (seekKeyOrZeroReturnVacant!0 (x!9317 lt!21155) (index!3048 lt!21155) (index!3048 lt!21155) (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000) (_keys!3539 newMap!16) (mask!5726 newMap!16)))))

(assert (= (and d!10327 c!6886) b!51219))

(assert (= (and d!10327 (not c!6886)) b!51217))

(assert (= (and b!51217 c!6887) b!51218))

(assert (= (and b!51217 (not c!6887)) b!51216))

(assert (= (and b!51216 c!6885) b!51215))

(assert (= (and b!51216 (not c!6885)) b!51220))

(declare-fun m!44187 () Bool)

(assert (=> b!51217 m!44187))

(declare-fun m!44189 () Bool)

(assert (=> d!10327 m!44189))

(assert (=> d!10327 m!44135))

(declare-fun m!44191 () Bool)

(assert (=> d!10327 m!44191))

(declare-fun m!44193 () Bool)

(assert (=> d!10327 m!44193))

(declare-fun m!44195 () Bool)

(assert (=> d!10327 m!44195))

(assert (=> d!10327 m!44159))

(declare-fun m!44197 () Bool)

(assert (=> d!10327 m!44197))

(assert (=> d!10327 m!44135))

(assert (=> d!10327 m!44189))

(assert (=> b!51220 m!44135))

(declare-fun m!44199 () Bool)

(assert (=> b!51220 m!44199))

(assert (=> b!51151 d!10327))

(declare-fun b!51221 () Bool)

(declare-fun e!33186 () Bool)

(declare-fun call!3929 () Bool)

(assert (=> b!51221 (= e!33186 call!3929)))

(declare-fun b!51222 () Bool)

(declare-fun e!33185 () Bool)

(declare-fun e!33184 () Bool)

(assert (=> b!51222 (= e!33185 e!33184)))

(declare-fun res!29343 () Bool)

(assert (=> b!51222 (=> (not res!29343) (not e!33184))))

(declare-fun e!33183 () Bool)

(assert (=> b!51222 (= res!29343 (not e!33183))))

(declare-fun res!29344 () Bool)

(assert (=> b!51222 (=> (not res!29344) (not e!33183))))

(assert (=> b!51222 (= res!29344 (validKeyInArray!0 (select (arr!1588 (_keys!3539 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!51223 () Bool)

(assert (=> b!51223 (= e!33184 e!33186)))

(declare-fun c!6888 () Bool)

(assert (=> b!51223 (= c!6888 (validKeyInArray!0 (select (arr!1588 (_keys!3539 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!10329 () Bool)

(declare-fun res!29342 () Bool)

(assert (=> d!10329 (=> res!29342 e!33185)))

(assert (=> d!10329 (= res!29342 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1813 (_keys!3539 newMap!16))))))

(assert (=> d!10329 (= (arrayNoDuplicates!0 (_keys!3539 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!6867 (Cons!1346 (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000) Nil!1347) Nil!1347)) e!33185)))

(declare-fun bm!3926 () Bool)

(assert (=> bm!3926 (= call!3929 (arrayNoDuplicates!0 (_keys!3539 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!6888 (Cons!1346 (select (arr!1588 (_keys!3539 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!6867 (Cons!1346 (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000) Nil!1347) Nil!1347)) (ite c!6867 (Cons!1346 (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000) Nil!1347) Nil!1347))))))

(declare-fun b!51224 () Bool)

(assert (=> b!51224 (= e!33183 (contains!622 (ite c!6867 (Cons!1346 (select (arr!1588 (_keys!3539 newMap!16)) #b00000000000000000000000000000000) Nil!1347) Nil!1347) (select (arr!1588 (_keys!3539 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!51225 () Bool)

(assert (=> b!51225 (= e!33186 call!3929)))

(assert (= (and d!10329 (not res!29342)) b!51222))

(assert (= (and b!51222 res!29344) b!51224))

(assert (= (and b!51222 res!29343) b!51223))

(assert (= (and b!51223 c!6888) b!51225))

(assert (= (and b!51223 (not c!6888)) b!51221))

(assert (= (or b!51225 b!51221) bm!3926))

(assert (=> b!51222 m!44169))

(assert (=> b!51222 m!44169))

(assert (=> b!51222 m!44171))

(assert (=> b!51223 m!44169))

(assert (=> b!51223 m!44169))

(assert (=> b!51223 m!44171))

(assert (=> bm!3926 m!44169))

(declare-fun m!44201 () Bool)

(assert (=> bm!3926 m!44201))

(assert (=> b!51224 m!44169))

(assert (=> b!51224 m!44169))

(declare-fun m!44203 () Bool)

(assert (=> b!51224 m!44203))

(assert (=> bm!3918 d!10329))

(assert (=> b!51136 d!10315))

(assert (=> b!51137 d!10315))

(declare-fun b!51226 () Bool)

(declare-fun e!33189 () Bool)

(declare-fun e!33187 () Bool)

(assert (=> b!51226 (= e!33189 e!33187)))

(declare-fun lt!21159 () (_ BitVec 64))

(assert (=> b!51226 (= lt!21159 (select (arr!1588 (_keys!3539 (v!2180 (underlying!135 thiss!992)))) #b00000000000000000000000000000000))))

(declare-fun lt!21158 () Unit!1424)

(assert (=> b!51226 (= lt!21158 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3539 (v!2180 (underlying!135 thiss!992))) lt!21159 #b00000000000000000000000000000000))))

(assert (=> b!51226 (arrayContainsKey!0 (_keys!3539 (v!2180 (underlying!135 thiss!992))) lt!21159 #b00000000000000000000000000000000)))

(declare-fun lt!21160 () Unit!1424)

(assert (=> b!51226 (= lt!21160 lt!21158)))

(declare-fun res!29345 () Bool)

(assert (=> b!51226 (= res!29345 (= (seekEntryOrOpen!0 (select (arr!1588 (_keys!3539 (v!2180 (underlying!135 thiss!992)))) #b00000000000000000000000000000000) (_keys!3539 (v!2180 (underlying!135 thiss!992))) (mask!5726 (v!2180 (underlying!135 thiss!992)))) (Found!231 #b00000000000000000000000000000000)))))

(assert (=> b!51226 (=> (not res!29345) (not e!33187))))

(declare-fun b!51227 () Bool)

(declare-fun e!33188 () Bool)

(assert (=> b!51227 (= e!33188 e!33189)))

(declare-fun c!6889 () Bool)

(assert (=> b!51227 (= c!6889 (validKeyInArray!0 (select (arr!1588 (_keys!3539 (v!2180 (underlying!135 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!51228 () Bool)

(declare-fun call!3930 () Bool)

(assert (=> b!51228 (= e!33187 call!3930)))

(declare-fun b!51229 () Bool)

(assert (=> b!51229 (= e!33189 call!3930)))

(declare-fun bm!3927 () Bool)

(assert (=> bm!3927 (= call!3930 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3539 (v!2180 (underlying!135 thiss!992))) (mask!5726 (v!2180 (underlying!135 thiss!992)))))))

(declare-fun d!10331 () Bool)

(declare-fun res!29346 () Bool)

(assert (=> d!10331 (=> res!29346 e!33188)))

(assert (=> d!10331 (= res!29346 (bvsge #b00000000000000000000000000000000 (size!1813 (_keys!3539 (v!2180 (underlying!135 thiss!992))))))))

(assert (=> d!10331 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3539 (v!2180 (underlying!135 thiss!992))) (mask!5726 (v!2180 (underlying!135 thiss!992)))) e!33188)))

(assert (= (and d!10331 (not res!29346)) b!51227))

(assert (= (and b!51227 c!6889) b!51226))

(assert (= (and b!51227 (not c!6889)) b!51229))

(assert (= (and b!51226 res!29345) b!51228))

(assert (= (or b!51228 b!51229) bm!3927))

(declare-fun m!44205 () Bool)

(assert (=> b!51226 m!44205))

(declare-fun m!44207 () Bool)

(assert (=> b!51226 m!44207))

(declare-fun m!44209 () Bool)

(assert (=> b!51226 m!44209))

(assert (=> b!51226 m!44205))

(declare-fun m!44211 () Bool)

(assert (=> b!51226 m!44211))

(assert (=> b!51227 m!44205))

(assert (=> b!51227 m!44205))

(declare-fun m!44213 () Bool)

(assert (=> b!51227 m!44213))

(declare-fun m!44215 () Bool)

(assert (=> bm!3927 m!44215))

(assert (=> b!51141 d!10331))

(declare-fun b!51230 () Bool)

(declare-fun e!33193 () Bool)

(declare-fun call!3931 () Bool)

(assert (=> b!51230 (= e!33193 call!3931)))

(declare-fun b!51231 () Bool)

(declare-fun e!33192 () Bool)

(declare-fun e!33191 () Bool)

(assert (=> b!51231 (= e!33192 e!33191)))

(declare-fun res!29348 () Bool)

(assert (=> b!51231 (=> (not res!29348) (not e!33191))))

(declare-fun e!33190 () Bool)

(assert (=> b!51231 (= res!29348 (not e!33190))))

(declare-fun res!29349 () Bool)

(assert (=> b!51231 (=> (not res!29349) (not e!33190))))

(assert (=> b!51231 (= res!29349 (validKeyInArray!0 (select (arr!1588 (_keys!3539 (v!2180 (underlying!135 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!51232 () Bool)

(assert (=> b!51232 (= e!33191 e!33193)))

(declare-fun c!6890 () Bool)

(assert (=> b!51232 (= c!6890 (validKeyInArray!0 (select (arr!1588 (_keys!3539 (v!2180 (underlying!135 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun d!10333 () Bool)

(declare-fun res!29347 () Bool)

(assert (=> d!10333 (=> res!29347 e!33192)))

(assert (=> d!10333 (= res!29347 (bvsge #b00000000000000000000000000000000 (size!1813 (_keys!3539 (v!2180 (underlying!135 thiss!992))))))))

(assert (=> d!10333 (= (arrayNoDuplicates!0 (_keys!3539 (v!2180 (underlying!135 thiss!992))) #b00000000000000000000000000000000 Nil!1347) e!33192)))

(declare-fun bm!3928 () Bool)

(assert (=> bm!3928 (= call!3931 (arrayNoDuplicates!0 (_keys!3539 (v!2180 (underlying!135 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!6890 (Cons!1346 (select (arr!1588 (_keys!3539 (v!2180 (underlying!135 thiss!992)))) #b00000000000000000000000000000000) Nil!1347) Nil!1347)))))

(declare-fun b!51233 () Bool)

(assert (=> b!51233 (= e!33190 (contains!622 Nil!1347 (select (arr!1588 (_keys!3539 (v!2180 (underlying!135 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!51234 () Bool)

(assert (=> b!51234 (= e!33193 call!3931)))

(assert (= (and d!10333 (not res!29347)) b!51231))

(assert (= (and b!51231 res!29349) b!51233))

(assert (= (and b!51231 res!29348) b!51232))

(assert (= (and b!51232 c!6890) b!51234))

(assert (= (and b!51232 (not c!6890)) b!51230))

(assert (= (or b!51234 b!51230) bm!3928))

(assert (=> b!51231 m!44205))

(assert (=> b!51231 m!44205))

(assert (=> b!51231 m!44213))

(assert (=> b!51232 m!44205))

(assert (=> b!51232 m!44205))

(assert (=> b!51232 m!44213))

(assert (=> bm!3928 m!44205))

(declare-fun m!44217 () Bool)

(assert (=> bm!3928 m!44217))

(assert (=> b!51233 m!44205))

(assert (=> b!51233 m!44205))

(declare-fun m!44219 () Bool)

(assert (=> b!51233 m!44219))

(assert (=> b!51142 d!10333))

(declare-fun b!51235 () Bool)

(declare-fun e!33194 () (_ BitVec 32))

(declare-fun call!3932 () (_ BitVec 32))

(assert (=> b!51235 (= e!33194 call!3932)))

(declare-fun d!10335 () Bool)

(declare-fun lt!21161 () (_ BitVec 32))

(assert (=> d!10335 (and (bvsge lt!21161 #b00000000000000000000000000000000) (bvsle lt!21161 (bvsub (size!1813 (_keys!3539 (v!2180 (underlying!135 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun e!33195 () (_ BitVec 32))

(assert (=> d!10335 (= lt!21161 e!33195)))

(declare-fun c!6891 () Bool)

(assert (=> d!10335 (= c!6891 (bvsge #b00000000000000000000000000000000 (size!1813 (_keys!3539 (v!2180 (underlying!135 thiss!992))))))))

(assert (=> d!10335 (and (bvsle #b00000000000000000000000000000000 (size!1813 (_keys!3539 (v!2180 (underlying!135 thiss!992))))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!1813 (_keys!3539 (v!2180 (underlying!135 thiss!992)))) (size!1813 (_keys!3539 (v!2180 (underlying!135 thiss!992))))))))

(assert (=> d!10335 (= (arrayCountValidKeys!0 (_keys!3539 (v!2180 (underlying!135 thiss!992))) #b00000000000000000000000000000000 (size!1813 (_keys!3539 (v!2180 (underlying!135 thiss!992))))) lt!21161)))

(declare-fun b!51236 () Bool)

(assert (=> b!51236 (= e!33195 #b00000000000000000000000000000000)))

(declare-fun b!51237 () Bool)

(assert (=> b!51237 (= e!33195 e!33194)))

(declare-fun c!6892 () Bool)

(assert (=> b!51237 (= c!6892 (validKeyInArray!0 (select (arr!1588 (_keys!3539 (v!2180 (underlying!135 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!51238 () Bool)

(assert (=> b!51238 (= e!33194 (bvadd #b00000000000000000000000000000001 call!3932))))

(declare-fun bm!3929 () Bool)

(assert (=> bm!3929 (= call!3932 (arrayCountValidKeys!0 (_keys!3539 (v!2180 (underlying!135 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1813 (_keys!3539 (v!2180 (underlying!135 thiss!992))))))))

(assert (= (and d!10335 c!6891) b!51236))

(assert (= (and d!10335 (not c!6891)) b!51237))

(assert (= (and b!51237 c!6892) b!51238))

(assert (= (and b!51237 (not c!6892)) b!51235))

(assert (= (or b!51238 b!51235) bm!3929))

(assert (=> b!51237 m!44205))

(assert (=> b!51237 m!44205))

(assert (=> b!51237 m!44213))

(declare-fun m!44221 () Bool)

(assert (=> bm!3929 m!44221))

(assert (=> b!51140 d!10335))

(declare-fun d!10337 () Bool)

(assert (=> d!10337 (= (validMask!0 (mask!5726 newMap!16)) (and (or (= (mask!5726 newMap!16) #b00000000000000000000000000000111) (= (mask!5726 newMap!16) #b00000000000000000000000000001111) (= (mask!5726 newMap!16) #b00000000000000000000000000011111) (= (mask!5726 newMap!16) #b00000000000000000000000000111111) (= (mask!5726 newMap!16) #b00000000000000000000000001111111) (= (mask!5726 newMap!16) #b00000000000000000000000011111111) (= (mask!5726 newMap!16) #b00000000000000000000000111111111) (= (mask!5726 newMap!16) #b00000000000000000000001111111111) (= (mask!5726 newMap!16) #b00000000000000000000011111111111) (= (mask!5726 newMap!16) #b00000000000000000000111111111111) (= (mask!5726 newMap!16) #b00000000000000000001111111111111) (= (mask!5726 newMap!16) #b00000000000000000011111111111111) (= (mask!5726 newMap!16) #b00000000000000000111111111111111) (= (mask!5726 newMap!16) #b00000000000000001111111111111111) (= (mask!5726 newMap!16) #b00000000000000011111111111111111) (= (mask!5726 newMap!16) #b00000000000000111111111111111111) (= (mask!5726 newMap!16) #b00000000000001111111111111111111) (= (mask!5726 newMap!16) #b00000000000011111111111111111111) (= (mask!5726 newMap!16) #b00000000000111111111111111111111) (= (mask!5726 newMap!16) #b00000000001111111111111111111111) (= (mask!5726 newMap!16) #b00000000011111111111111111111111) (= (mask!5726 newMap!16) #b00000000111111111111111111111111) (= (mask!5726 newMap!16) #b00000001111111111111111111111111) (= (mask!5726 newMap!16) #b00000011111111111111111111111111) (= (mask!5726 newMap!16) #b00000111111111111111111111111111) (= (mask!5726 newMap!16) #b00001111111111111111111111111111) (= (mask!5726 newMap!16) #b00011111111111111111111111111111) (= (mask!5726 newMap!16) #b00111111111111111111111111111111)) (bvsle (mask!5726 newMap!16) #b00111111111111111111111111111111)))))

(assert (=> d!10309 d!10337))

(declare-fun b!51239 () Bool)

(declare-fun e!33198 () Bool)

(declare-fun e!33196 () Bool)

(assert (=> b!51239 (= e!33198 e!33196)))

(declare-fun lt!21163 () (_ BitVec 64))

(assert (=> b!51239 (= lt!21163 (select (arr!1588 (_keys!3539 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!21162 () Unit!1424)

(assert (=> b!51239 (= lt!21162 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3539 newMap!16) lt!21163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!51239 (arrayContainsKey!0 (_keys!3539 newMap!16) lt!21163 #b00000000000000000000000000000000)))

(declare-fun lt!21164 () Unit!1424)

(assert (=> b!51239 (= lt!21164 lt!21162)))

(declare-fun res!29350 () Bool)

(assert (=> b!51239 (= res!29350 (= (seekEntryOrOpen!0 (select (arr!1588 (_keys!3539 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!3539 newMap!16) (mask!5726 newMap!16)) (Found!231 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!51239 (=> (not res!29350) (not e!33196))))

(declare-fun b!51240 () Bool)

(declare-fun e!33197 () Bool)

(assert (=> b!51240 (= e!33197 e!33198)))

(declare-fun c!6893 () Bool)

(assert (=> b!51240 (= c!6893 (validKeyInArray!0 (select (arr!1588 (_keys!3539 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!51241 () Bool)

(declare-fun call!3933 () Bool)

(assert (=> b!51241 (= e!33196 call!3933)))

(declare-fun b!51242 () Bool)

(assert (=> b!51242 (= e!33198 call!3933)))

(declare-fun bm!3930 () Bool)

(assert (=> bm!3930 (= call!3933 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!3539 newMap!16) (mask!5726 newMap!16)))))

(declare-fun d!10339 () Bool)

(declare-fun res!29351 () Bool)

(assert (=> d!10339 (=> res!29351 e!33197)))

(assert (=> d!10339 (= res!29351 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1813 (_keys!3539 newMap!16))))))

(assert (=> d!10339 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3539 newMap!16) (mask!5726 newMap!16)) e!33197)))

(assert (= (and d!10339 (not res!29351)) b!51240))

(assert (= (and b!51240 c!6893) b!51239))

(assert (= (and b!51240 (not c!6893)) b!51242))

(assert (= (and b!51239 res!29350) b!51241))

(assert (= (or b!51241 b!51242) bm!3930))

(assert (=> b!51239 m!44169))

(declare-fun m!44223 () Bool)

(assert (=> b!51239 m!44223))

(declare-fun m!44225 () Bool)

(assert (=> b!51239 m!44225))

(assert (=> b!51239 m!44169))

(declare-fun m!44227 () Bool)

(assert (=> b!51239 m!44227))

(assert (=> b!51240 m!44169))

(assert (=> b!51240 m!44169))

(assert (=> b!51240 m!44171))

(declare-fun m!44229 () Bool)

(assert (=> bm!3930 m!44229))

(assert (=> bm!3921 d!10339))

(declare-fun condMapEmpty!2271 () Bool)

(declare-fun mapDefault!2271 () ValueCell!759)

(assert (=> mapNonEmpty!2269 (= condMapEmpty!2271 (= mapRest!2269 ((as const (Array (_ BitVec 32) ValueCell!759)) mapDefault!2271)))))

(declare-fun e!33200 () Bool)

(declare-fun mapRes!2271 () Bool)

(assert (=> mapNonEmpty!2269 (= tp!6823 (and e!33200 mapRes!2271))))

(declare-fun mapNonEmpty!2271 () Bool)

(declare-fun tp!6825 () Bool)

(declare-fun e!33199 () Bool)

(assert (=> mapNonEmpty!2271 (= mapRes!2271 (and tp!6825 e!33199))))

(declare-fun mapKey!2271 () (_ BitVec 32))

(declare-fun mapRest!2271 () (Array (_ BitVec 32) ValueCell!759))

(declare-fun mapValue!2271 () ValueCell!759)

(assert (=> mapNonEmpty!2271 (= mapRest!2269 (store mapRest!2271 mapKey!2271 mapValue!2271))))

(declare-fun mapIsEmpty!2271 () Bool)

(assert (=> mapIsEmpty!2271 mapRes!2271))

(declare-fun b!51244 () Bool)

(assert (=> b!51244 (= e!33200 tp_is_empty!2205)))

(declare-fun b!51243 () Bool)

(assert (=> b!51243 (= e!33199 tp_is_empty!2205)))

(assert (= (and mapNonEmpty!2269 condMapEmpty!2271) mapIsEmpty!2271))

(assert (= (and mapNonEmpty!2269 (not condMapEmpty!2271)) mapNonEmpty!2271))

(assert (= (and mapNonEmpty!2271 ((_ is ValueCellFull!759) mapValue!2271)) b!51243))

(assert (= (and mapNonEmpty!2269 ((_ is ValueCellFull!759) mapDefault!2271)) b!51244))

(declare-fun m!44231 () Bool)

(assert (=> mapNonEmpty!2271 m!44231))

(declare-fun condMapEmpty!2272 () Bool)

(declare-fun mapDefault!2272 () ValueCell!759)

(assert (=> mapNonEmpty!2270 (= condMapEmpty!2272 (= mapRest!2270 ((as const (Array (_ BitVec 32) ValueCell!759)) mapDefault!2272)))))

(declare-fun e!33202 () Bool)

(declare-fun mapRes!2272 () Bool)

(assert (=> mapNonEmpty!2270 (= tp!6824 (and e!33202 mapRes!2272))))

(declare-fun mapNonEmpty!2272 () Bool)

(declare-fun tp!6826 () Bool)

(declare-fun e!33201 () Bool)

(assert (=> mapNonEmpty!2272 (= mapRes!2272 (and tp!6826 e!33201))))

(declare-fun mapValue!2272 () ValueCell!759)

(declare-fun mapRest!2272 () (Array (_ BitVec 32) ValueCell!759))

(declare-fun mapKey!2272 () (_ BitVec 32))

(assert (=> mapNonEmpty!2272 (= mapRest!2270 (store mapRest!2272 mapKey!2272 mapValue!2272))))

(declare-fun mapIsEmpty!2272 () Bool)

(assert (=> mapIsEmpty!2272 mapRes!2272))

(declare-fun b!51246 () Bool)

(assert (=> b!51246 (= e!33202 tp_is_empty!2205)))

(declare-fun b!51245 () Bool)

(assert (=> b!51245 (= e!33201 tp_is_empty!2205)))

(assert (= (and mapNonEmpty!2270 condMapEmpty!2272) mapIsEmpty!2272))

(assert (= (and mapNonEmpty!2270 (not condMapEmpty!2272)) mapNonEmpty!2272))

(assert (= (and mapNonEmpty!2272 ((_ is ValueCellFull!759) mapValue!2272)) b!51245))

(assert (= (and mapNonEmpty!2270 ((_ is ValueCellFull!759) mapDefault!2272)) b!51246))

(declare-fun m!44233 () Bool)

(assert (=> mapNonEmpty!2272 m!44233))

(check-sat (not b!51240) (not b!51202) (not bm!3926) (not bm!3930) b_and!2797 (not b!51233) (not b!51227) (not d!10327) tp_is_empty!2205 (not bm!3927) (not b!51232) (not b!51192) (not b!51222) (not d!10321) (not b!51226) (not b!51195) (not d!10317) (not b!51194) (not b!51185) (not b!51239) (not b!51224) (not d!10323) (not b_next!1577) (not mapNonEmpty!2271) b_and!2799 (not mapNonEmpty!2272) (not bm!3925) (not b!51223) (not bm!3928) (not b!51231) (not b_next!1579) (not b!51237) (not bm!3929) (not b!51220))
(check-sat b_and!2797 b_and!2799 (not b_next!1577) (not b_next!1579))
