; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8140 () Bool)

(assert start!8140)

(declare-fun b!51334 () Bool)

(declare-fun b_free!1589 () Bool)

(declare-fun b_next!1589 () Bool)

(assert (=> b!51334 (= b_free!1589 (not b_next!1589))))

(declare-fun tp!6848 () Bool)

(declare-fun b_and!2809 () Bool)

(assert (=> b!51334 (= tp!6848 b_and!2809)))

(declare-fun b!51330 () Bool)

(declare-fun b_free!1591 () Bool)

(declare-fun b_next!1591 () Bool)

(assert (=> b!51330 (= b_free!1591 (not b_next!1591))))

(declare-fun tp!6849 () Bool)

(declare-fun b_and!2811 () Bool)

(assert (=> b!51330 (= tp!6849 b_and!2811)))

(declare-fun b!51322 () Bool)

(declare-fun e!33277 () Bool)

(declare-fun e!33271 () Bool)

(declare-fun mapRes!2284 () Bool)

(assert (=> b!51322 (= e!33277 (and e!33271 mapRes!2284))))

(declare-fun condMapEmpty!2284 () Bool)

(declare-datatypes ((V!2595 0))(
  ( (V!2596 (val!1150 Int)) )
))
(declare-datatypes ((array!3338 0))(
  ( (array!3339 (arr!1594 (Array (_ BitVec 32) (_ BitVec 64))) (size!1820 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!762 0))(
  ( (ValueCellFull!762 (v!2186 V!2595)) (EmptyCell!762) )
))
(declare-datatypes ((array!3340 0))(
  ( (array!3341 (arr!1595 (Array (_ BitVec 32) ValueCell!762)) (size!1821 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!432 0))(
  ( (LongMapFixedSize!433 (defaultEntry!1930 Int) (mask!5734 (_ BitVec 32)) (extraKeys!1821 (_ BitVec 32)) (zeroValue!1848 V!2595) (minValue!1848 V!2595) (_size!265 (_ BitVec 32)) (_keys!3544 array!3338) (_values!1913 array!3340) (_vacant!265 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!254 0))(
  ( (Cell!255 (v!2187 LongMapFixedSize!432)) )
))
(declare-datatypes ((LongMap!254 0))(
  ( (LongMap!255 (underlying!138 Cell!254)) )
))
(declare-fun thiss!992 () LongMap!254)

(declare-fun mapDefault!2283 () ValueCell!762)

(assert (=> b!51322 (= condMapEmpty!2284 (= (arr!1595 (_values!1913 (v!2187 (underlying!138 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!762)) mapDefault!2283)))))

(declare-fun b!51323 () Bool)

(declare-fun e!33275 () Bool)

(assert (=> b!51323 (= e!33275 (and (= (size!1821 (_values!1913 (v!2187 (underlying!138 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5734 (v!2187 (underlying!138 thiss!992))))) (= (size!1820 (_keys!3544 (v!2187 (underlying!138 thiss!992)))) (size!1821 (_values!1913 (v!2187 (underlying!138 thiss!992))))) (bvsge (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!1821 (v!2187 (underlying!138 thiss!992))) #b00000000000000000000000000000000) (bvsgt (extraKeys!1821 (v!2187 (underlying!138 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!51324 () Bool)

(declare-fun tp_is_empty!2211 () Bool)

(assert (=> b!51324 (= e!33271 tp_is_empty!2211)))

(declare-fun b!51325 () Bool)

(declare-fun res!29381 () Bool)

(assert (=> b!51325 (=> (not res!29381) (not e!33275))))

(declare-fun newMap!16 () LongMapFixedSize!432)

(declare-fun valid!149 (LongMapFixedSize!432) Bool)

(assert (=> b!51325 (= res!29381 (valid!149 newMap!16))))

(declare-fun b!51326 () Bool)

(declare-fun e!33278 () Bool)

(declare-fun e!33274 () Bool)

(assert (=> b!51326 (= e!33278 e!33274)))

(declare-fun mapIsEmpty!2283 () Bool)

(assert (=> mapIsEmpty!2283 mapRes!2284))

(declare-fun mapNonEmpty!2283 () Bool)

(declare-fun tp!6847 () Bool)

(declare-fun e!33279 () Bool)

(assert (=> mapNonEmpty!2283 (= mapRes!2284 (and tp!6847 e!33279))))

(declare-fun mapRest!2284 () (Array (_ BitVec 32) ValueCell!762))

(declare-fun mapValue!2283 () ValueCell!762)

(declare-fun mapKey!2284 () (_ BitVec 32))

(assert (=> mapNonEmpty!2283 (= (arr!1595 (_values!1913 (v!2187 (underlying!138 thiss!992)))) (store mapRest!2284 mapKey!2284 mapValue!2283))))

(declare-fun res!29380 () Bool)

(assert (=> start!8140 (=> (not res!29380) (not e!33275))))

(declare-fun valid!150 (LongMap!254) Bool)

(assert (=> start!8140 (= res!29380 (valid!150 thiss!992))))

(assert (=> start!8140 e!33275))

(declare-fun e!33272 () Bool)

(assert (=> start!8140 e!33272))

(assert (=> start!8140 true))

(declare-fun e!33273 () Bool)

(assert (=> start!8140 e!33273))

(declare-fun b!51327 () Bool)

(declare-fun res!29379 () Bool)

(assert (=> b!51327 (=> (not res!29379) (not e!33275))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!51327 (= res!29379 (validMask!0 (mask!5734 (v!2187 (underlying!138 thiss!992)))))))

(declare-fun b!51328 () Bool)

(declare-fun e!33268 () Bool)

(assert (=> b!51328 (= e!33268 tp_is_empty!2211)))

(declare-fun mapNonEmpty!2284 () Bool)

(declare-fun mapRes!2283 () Bool)

(declare-fun tp!6850 () Bool)

(declare-fun e!33270 () Bool)

(assert (=> mapNonEmpty!2284 (= mapRes!2283 (and tp!6850 e!33270))))

(declare-fun mapKey!2283 () (_ BitVec 32))

(declare-fun mapValue!2284 () ValueCell!762)

(declare-fun mapRest!2283 () (Array (_ BitVec 32) ValueCell!762))

(assert (=> mapNonEmpty!2284 (= (arr!1595 (_values!1913 newMap!16)) (store mapRest!2283 mapKey!2283 mapValue!2284))))

(declare-fun b!51329 () Bool)

(declare-fun res!29378 () Bool)

(assert (=> b!51329 (=> (not res!29378) (not e!33275))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!51329 (= res!29378 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1820 (_keys!3544 (v!2187 (underlying!138 thiss!992)))))))))

(declare-fun mapIsEmpty!2284 () Bool)

(assert (=> mapIsEmpty!2284 mapRes!2283))

(declare-fun e!33276 () Bool)

(declare-fun array_inv!927 (array!3338) Bool)

(declare-fun array_inv!928 (array!3340) Bool)

(assert (=> b!51330 (= e!33273 (and tp!6849 tp_is_empty!2211 (array_inv!927 (_keys!3544 newMap!16)) (array_inv!928 (_values!1913 newMap!16)) e!33276))))

(declare-fun b!51331 () Bool)

(declare-fun res!29377 () Bool)

(assert (=> b!51331 (=> (not res!29377) (not e!33275))))

(assert (=> b!51331 (= res!29377 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5734 newMap!16)) (_size!265 (v!2187 (underlying!138 thiss!992)))))))

(declare-fun b!51332 () Bool)

(assert (=> b!51332 (= e!33279 tp_is_empty!2211)))

(declare-fun b!51333 () Bool)

(assert (=> b!51333 (= e!33276 (and e!33268 mapRes!2283))))

(declare-fun condMapEmpty!2283 () Bool)

(declare-fun mapDefault!2284 () ValueCell!762)

(assert (=> b!51333 (= condMapEmpty!2283 (= (arr!1595 (_values!1913 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!762)) mapDefault!2284)))))

(assert (=> b!51334 (= e!33274 (and tp!6848 tp_is_empty!2211 (array_inv!927 (_keys!3544 (v!2187 (underlying!138 thiss!992)))) (array_inv!928 (_values!1913 (v!2187 (underlying!138 thiss!992)))) e!33277))))

(declare-fun b!51335 () Bool)

(assert (=> b!51335 (= e!33272 e!33278)))

(declare-fun b!51336 () Bool)

(assert (=> b!51336 (= e!33270 tp_is_empty!2211)))

(assert (= (and start!8140 res!29380) b!51329))

(assert (= (and b!51329 res!29378) b!51325))

(assert (= (and b!51325 res!29381) b!51331))

(assert (= (and b!51331 res!29377) b!51327))

(assert (= (and b!51327 res!29379) b!51323))

(assert (= (and b!51322 condMapEmpty!2284) mapIsEmpty!2283))

(assert (= (and b!51322 (not condMapEmpty!2284)) mapNonEmpty!2283))

(get-info :version)

(assert (= (and mapNonEmpty!2283 ((_ is ValueCellFull!762) mapValue!2283)) b!51332))

(assert (= (and b!51322 ((_ is ValueCellFull!762) mapDefault!2283)) b!51324))

(assert (= b!51334 b!51322))

(assert (= b!51326 b!51334))

(assert (= b!51335 b!51326))

(assert (= start!8140 b!51335))

(assert (= (and b!51333 condMapEmpty!2283) mapIsEmpty!2284))

(assert (= (and b!51333 (not condMapEmpty!2283)) mapNonEmpty!2284))

(assert (= (and mapNonEmpty!2284 ((_ is ValueCellFull!762) mapValue!2284)) b!51336))

(assert (= (and b!51333 ((_ is ValueCellFull!762) mapDefault!2284)) b!51328))

(assert (= b!51330 b!51333))

(assert (= start!8140 b!51330))

(declare-fun m!44253 () Bool)

(assert (=> b!51327 m!44253))

(declare-fun m!44255 () Bool)

(assert (=> mapNonEmpty!2283 m!44255))

(declare-fun m!44257 () Bool)

(assert (=> b!51334 m!44257))

(declare-fun m!44259 () Bool)

(assert (=> b!51334 m!44259))

(declare-fun m!44261 () Bool)

(assert (=> b!51325 m!44261))

(declare-fun m!44263 () Bool)

(assert (=> start!8140 m!44263))

(declare-fun m!44265 () Bool)

(assert (=> mapNonEmpty!2284 m!44265))

(declare-fun m!44267 () Bool)

(assert (=> b!51330 m!44267))

(declare-fun m!44269 () Bool)

(assert (=> b!51330 m!44269))

(check-sat b_and!2809 (not b!51334) (not b_next!1589) b_and!2811 (not mapNonEmpty!2284) (not mapNonEmpty!2283) tp_is_empty!2211 (not b!51327) (not b!51330) (not b!51325) (not b_next!1591) (not start!8140))
(check-sat b_and!2809 b_and!2811 (not b_next!1589) (not b_next!1591))
(get-model)

(declare-fun d!10343 () Bool)

(assert (=> d!10343 (= (array_inv!927 (_keys!3544 (v!2187 (underlying!138 thiss!992)))) (bvsge (size!1820 (_keys!3544 (v!2187 (underlying!138 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!51334 d!10343))

(declare-fun d!10345 () Bool)

(assert (=> d!10345 (= (array_inv!928 (_values!1913 (v!2187 (underlying!138 thiss!992)))) (bvsge (size!1821 (_values!1913 (v!2187 (underlying!138 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!51334 d!10345))

(declare-fun d!10347 () Bool)

(declare-fun res!29403 () Bool)

(declare-fun e!33322 () Bool)

(assert (=> d!10347 (=> (not res!29403) (not e!33322))))

(declare-fun simpleValid!36 (LongMapFixedSize!432) Bool)

(assert (=> d!10347 (= res!29403 (simpleValid!36 newMap!16))))

(assert (=> d!10347 (= (valid!149 newMap!16) e!33322)))

(declare-fun b!51388 () Bool)

(declare-fun res!29404 () Bool)

(assert (=> b!51388 (=> (not res!29404) (not e!33322))))

(declare-fun arrayCountValidKeys!0 (array!3338 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!51388 (= res!29404 (= (arrayCountValidKeys!0 (_keys!3544 newMap!16) #b00000000000000000000000000000000 (size!1820 (_keys!3544 newMap!16))) (_size!265 newMap!16)))))

(declare-fun b!51389 () Bool)

(declare-fun res!29405 () Bool)

(assert (=> b!51389 (=> (not res!29405) (not e!33322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3338 (_ BitVec 32)) Bool)

(assert (=> b!51389 (= res!29405 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3544 newMap!16) (mask!5734 newMap!16)))))

(declare-fun b!51390 () Bool)

(declare-datatypes ((List!1351 0))(
  ( (Nil!1348) (Cons!1347 (h!1927 (_ BitVec 64)) (t!4393 List!1351)) )
))
(declare-fun arrayNoDuplicates!0 (array!3338 (_ BitVec 32) List!1351) Bool)

(assert (=> b!51390 (= e!33322 (arrayNoDuplicates!0 (_keys!3544 newMap!16) #b00000000000000000000000000000000 Nil!1348))))

(assert (= (and d!10347 res!29403) b!51388))

(assert (= (and b!51388 res!29404) b!51389))

(assert (= (and b!51389 res!29405) b!51390))

(declare-fun m!44289 () Bool)

(assert (=> d!10347 m!44289))

(declare-fun m!44291 () Bool)

(assert (=> b!51388 m!44291))

(declare-fun m!44293 () Bool)

(assert (=> b!51389 m!44293))

(declare-fun m!44295 () Bool)

(assert (=> b!51390 m!44295))

(assert (=> b!51325 d!10347))

(declare-fun d!10349 () Bool)

(assert (=> d!10349 (= (valid!150 thiss!992) (valid!149 (v!2187 (underlying!138 thiss!992))))))

(declare-fun bs!2377 () Bool)

(assert (= bs!2377 d!10349))

(declare-fun m!44297 () Bool)

(assert (=> bs!2377 m!44297))

(assert (=> start!8140 d!10349))

(declare-fun d!10351 () Bool)

(assert (=> d!10351 (= (array_inv!927 (_keys!3544 newMap!16)) (bvsge (size!1820 (_keys!3544 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!51330 d!10351))

(declare-fun d!10353 () Bool)

(assert (=> d!10353 (= (array_inv!928 (_values!1913 newMap!16)) (bvsge (size!1821 (_values!1913 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!51330 d!10353))

(declare-fun d!10355 () Bool)

(assert (=> d!10355 (= (validMask!0 (mask!5734 (v!2187 (underlying!138 thiss!992)))) (and (or (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000000000000000000000000111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000000000000000000000001111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000000000000000000000011111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000000000000000000000111111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000000000000000000001111111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000000000000000000011111111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000000000000000000111111111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000000000000000001111111111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000000000000000011111111111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000000000000000111111111111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000000000000001111111111111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000000000000011111111111111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000000000000111111111111111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000000000001111111111111111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000000000011111111111111111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000000000111111111111111111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000000001111111111111111111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000000011111111111111111111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000000111111111111111111111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000001111111111111111111111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000011111111111111111111111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000111111111111111111111111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000001111111111111111111111111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000011111111111111111111111111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000111111111111111111111111111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00001111111111111111111111111111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00011111111111111111111111111111) (= (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!51327 d!10355))

(declare-fun b!51397 () Bool)

(declare-fun e!33328 () Bool)

(assert (=> b!51397 (= e!33328 tp_is_empty!2211)))

(declare-fun b!51398 () Bool)

(declare-fun e!33327 () Bool)

(assert (=> b!51398 (= e!33327 tp_is_empty!2211)))

(declare-fun mapNonEmpty!2293 () Bool)

(declare-fun mapRes!2293 () Bool)

(declare-fun tp!6865 () Bool)

(assert (=> mapNonEmpty!2293 (= mapRes!2293 (and tp!6865 e!33328))))

(declare-fun mapRest!2293 () (Array (_ BitVec 32) ValueCell!762))

(declare-fun mapValue!2293 () ValueCell!762)

(declare-fun mapKey!2293 () (_ BitVec 32))

(assert (=> mapNonEmpty!2293 (= mapRest!2283 (store mapRest!2293 mapKey!2293 mapValue!2293))))

(declare-fun mapIsEmpty!2293 () Bool)

(assert (=> mapIsEmpty!2293 mapRes!2293))

(declare-fun condMapEmpty!2293 () Bool)

(declare-fun mapDefault!2293 () ValueCell!762)

(assert (=> mapNonEmpty!2284 (= condMapEmpty!2293 (= mapRest!2283 ((as const (Array (_ BitVec 32) ValueCell!762)) mapDefault!2293)))))

(assert (=> mapNonEmpty!2284 (= tp!6850 (and e!33327 mapRes!2293))))

(assert (= (and mapNonEmpty!2284 condMapEmpty!2293) mapIsEmpty!2293))

(assert (= (and mapNonEmpty!2284 (not condMapEmpty!2293)) mapNonEmpty!2293))

(assert (= (and mapNonEmpty!2293 ((_ is ValueCellFull!762) mapValue!2293)) b!51397))

(assert (= (and mapNonEmpty!2284 ((_ is ValueCellFull!762) mapDefault!2293)) b!51398))

(declare-fun m!44299 () Bool)

(assert (=> mapNonEmpty!2293 m!44299))

(declare-fun b!51399 () Bool)

(declare-fun e!33330 () Bool)

(assert (=> b!51399 (= e!33330 tp_is_empty!2211)))

(declare-fun b!51400 () Bool)

(declare-fun e!33329 () Bool)

(assert (=> b!51400 (= e!33329 tp_is_empty!2211)))

(declare-fun mapNonEmpty!2294 () Bool)

(declare-fun mapRes!2294 () Bool)

(declare-fun tp!6866 () Bool)

(assert (=> mapNonEmpty!2294 (= mapRes!2294 (and tp!6866 e!33330))))

(declare-fun mapRest!2294 () (Array (_ BitVec 32) ValueCell!762))

(declare-fun mapValue!2294 () ValueCell!762)

(declare-fun mapKey!2294 () (_ BitVec 32))

(assert (=> mapNonEmpty!2294 (= mapRest!2284 (store mapRest!2294 mapKey!2294 mapValue!2294))))

(declare-fun mapIsEmpty!2294 () Bool)

(assert (=> mapIsEmpty!2294 mapRes!2294))

(declare-fun condMapEmpty!2294 () Bool)

(declare-fun mapDefault!2294 () ValueCell!762)

(assert (=> mapNonEmpty!2283 (= condMapEmpty!2294 (= mapRest!2284 ((as const (Array (_ BitVec 32) ValueCell!762)) mapDefault!2294)))))

(assert (=> mapNonEmpty!2283 (= tp!6847 (and e!33329 mapRes!2294))))

(assert (= (and mapNonEmpty!2283 condMapEmpty!2294) mapIsEmpty!2294))

(assert (= (and mapNonEmpty!2283 (not condMapEmpty!2294)) mapNonEmpty!2294))

(assert (= (and mapNonEmpty!2294 ((_ is ValueCellFull!762) mapValue!2294)) b!51399))

(assert (= (and mapNonEmpty!2283 ((_ is ValueCellFull!762) mapDefault!2294)) b!51400))

(declare-fun m!44301 () Bool)

(assert (=> mapNonEmpty!2294 m!44301))

(check-sat b_and!2809 (not mapNonEmpty!2294) (not b!51389) (not b!51388) (not b_next!1591) (not d!10347) (not b_next!1589) (not mapNonEmpty!2293) (not d!10349) b_and!2811 tp_is_empty!2211 (not b!51390))
(check-sat b_and!2809 b_and!2811 (not b_next!1589) (not b_next!1591))
(get-model)

(declare-fun b!51411 () Bool)

(declare-fun res!29416 () Bool)

(declare-fun e!33333 () Bool)

(assert (=> b!51411 (=> (not res!29416) (not e!33333))))

(declare-fun size!1824 (LongMapFixedSize!432) (_ BitVec 32))

(assert (=> b!51411 (= res!29416 (= (size!1824 newMap!16) (bvadd (_size!265 newMap!16) (bvsdiv (bvadd (extraKeys!1821 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!51409 () Bool)

(declare-fun res!29417 () Bool)

(assert (=> b!51409 (=> (not res!29417) (not e!33333))))

(assert (=> b!51409 (= res!29417 (and (= (size!1821 (_values!1913 newMap!16)) (bvadd (mask!5734 newMap!16) #b00000000000000000000000000000001)) (= (size!1820 (_keys!3544 newMap!16)) (size!1821 (_values!1913 newMap!16))) (bvsge (_size!265 newMap!16) #b00000000000000000000000000000000) (bvsle (_size!265 newMap!16) (bvadd (mask!5734 newMap!16) #b00000000000000000000000000000001))))))

(declare-fun b!51410 () Bool)

(declare-fun res!29414 () Bool)

(assert (=> b!51410 (=> (not res!29414) (not e!33333))))

(assert (=> b!51410 (= res!29414 (bvsge (size!1824 newMap!16) (_size!265 newMap!16)))))

(declare-fun b!51412 () Bool)

(assert (=> b!51412 (= e!33333 (and (bvsge (extraKeys!1821 newMap!16) #b00000000000000000000000000000000) (bvsle (extraKeys!1821 newMap!16) #b00000000000000000000000000000011) (bvsge (_vacant!265 newMap!16) #b00000000000000000000000000000000)))))

(declare-fun d!10357 () Bool)

(declare-fun res!29415 () Bool)

(assert (=> d!10357 (=> (not res!29415) (not e!33333))))

(assert (=> d!10357 (= res!29415 (validMask!0 (mask!5734 newMap!16)))))

(assert (=> d!10357 (= (simpleValid!36 newMap!16) e!33333)))

(assert (= (and d!10357 res!29415) b!51409))

(assert (= (and b!51409 res!29417) b!51410))

(assert (= (and b!51410 res!29414) b!51411))

(assert (= (and b!51411 res!29416) b!51412))

(declare-fun m!44303 () Bool)

(assert (=> b!51411 m!44303))

(assert (=> b!51410 m!44303))

(declare-fun m!44305 () Bool)

(assert (=> d!10357 m!44305))

(assert (=> d!10347 d!10357))

(declare-fun b!51421 () Bool)

(declare-fun e!33339 () (_ BitVec 32))

(declare-fun call!3936 () (_ BitVec 32))

(assert (=> b!51421 (= e!33339 call!3936)))

(declare-fun b!51422 () Bool)

(declare-fun e!33338 () (_ BitVec 32))

(assert (=> b!51422 (= e!33338 #b00000000000000000000000000000000)))

(declare-fun b!51423 () Bool)

(assert (=> b!51423 (= e!33338 e!33339)))

(declare-fun c!6898 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!51423 (= c!6898 (validKeyInArray!0 (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun bm!3933 () Bool)

(assert (=> bm!3933 (= call!3936 (arrayCountValidKeys!0 (_keys!3544 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1820 (_keys!3544 newMap!16))))))

(declare-fun b!51424 () Bool)

(assert (=> b!51424 (= e!33339 (bvadd #b00000000000000000000000000000001 call!3936))))

(declare-fun d!10359 () Bool)

(declare-fun lt!21167 () (_ BitVec 32))

(assert (=> d!10359 (and (bvsge lt!21167 #b00000000000000000000000000000000) (bvsle lt!21167 (bvsub (size!1820 (_keys!3544 newMap!16)) #b00000000000000000000000000000000)))))

(assert (=> d!10359 (= lt!21167 e!33338)))

(declare-fun c!6899 () Bool)

(assert (=> d!10359 (= c!6899 (bvsge #b00000000000000000000000000000000 (size!1820 (_keys!3544 newMap!16))))))

(assert (=> d!10359 (and (bvsle #b00000000000000000000000000000000 (size!1820 (_keys!3544 newMap!16))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!1820 (_keys!3544 newMap!16)) (size!1820 (_keys!3544 newMap!16))))))

(assert (=> d!10359 (= (arrayCountValidKeys!0 (_keys!3544 newMap!16) #b00000000000000000000000000000000 (size!1820 (_keys!3544 newMap!16))) lt!21167)))

(assert (= (and d!10359 c!6899) b!51422))

(assert (= (and d!10359 (not c!6899)) b!51423))

(assert (= (and b!51423 c!6898) b!51424))

(assert (= (and b!51423 (not c!6898)) b!51421))

(assert (= (or b!51424 b!51421) bm!3933))

(declare-fun m!44307 () Bool)

(assert (=> b!51423 m!44307))

(assert (=> b!51423 m!44307))

(declare-fun m!44309 () Bool)

(assert (=> b!51423 m!44309))

(declare-fun m!44311 () Bool)

(assert (=> bm!3933 m!44311))

(assert (=> b!51388 d!10359))

(declare-fun b!51435 () Bool)

(declare-fun e!33348 () Bool)

(declare-fun call!3939 () Bool)

(assert (=> b!51435 (= e!33348 call!3939)))

(declare-fun b!51436 () Bool)

(declare-fun e!33349 () Bool)

(declare-fun e!33350 () Bool)

(assert (=> b!51436 (= e!33349 e!33350)))

(declare-fun res!29425 () Bool)

(assert (=> b!51436 (=> (not res!29425) (not e!33350))))

(declare-fun e!33351 () Bool)

(assert (=> b!51436 (= res!29425 (not e!33351))))

(declare-fun res!29424 () Bool)

(assert (=> b!51436 (=> (not res!29424) (not e!33351))))

(assert (=> b!51436 (= res!29424 (validKeyInArray!0 (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun d!10361 () Bool)

(declare-fun res!29426 () Bool)

(assert (=> d!10361 (=> res!29426 e!33349)))

(assert (=> d!10361 (= res!29426 (bvsge #b00000000000000000000000000000000 (size!1820 (_keys!3544 newMap!16))))))

(assert (=> d!10361 (= (arrayNoDuplicates!0 (_keys!3544 newMap!16) #b00000000000000000000000000000000 Nil!1348) e!33349)))

(declare-fun b!51437 () Bool)

(declare-fun contains!623 (List!1351 (_ BitVec 64)) Bool)

(assert (=> b!51437 (= e!33351 (contains!623 Nil!1348 (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!51438 () Bool)

(assert (=> b!51438 (= e!33350 e!33348)))

(declare-fun c!6902 () Bool)

(assert (=> b!51438 (= c!6902 (validKeyInArray!0 (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!51439 () Bool)

(assert (=> b!51439 (= e!33348 call!3939)))

(declare-fun bm!3936 () Bool)

(assert (=> bm!3936 (= call!3939 (arrayNoDuplicates!0 (_keys!3544 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!6902 (Cons!1347 (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000) Nil!1348) Nil!1348)))))

(assert (= (and d!10361 (not res!29426)) b!51436))

(assert (= (and b!51436 res!29424) b!51437))

(assert (= (and b!51436 res!29425) b!51438))

(assert (= (and b!51438 c!6902) b!51435))

(assert (= (and b!51438 (not c!6902)) b!51439))

(assert (= (or b!51435 b!51439) bm!3936))

(assert (=> b!51436 m!44307))

(assert (=> b!51436 m!44307))

(assert (=> b!51436 m!44309))

(assert (=> b!51437 m!44307))

(assert (=> b!51437 m!44307))

(declare-fun m!44313 () Bool)

(assert (=> b!51437 m!44313))

(assert (=> b!51438 m!44307))

(assert (=> b!51438 m!44307))

(assert (=> b!51438 m!44309))

(assert (=> bm!3936 m!44307))

(declare-fun m!44315 () Bool)

(assert (=> bm!3936 m!44315))

(assert (=> b!51390 d!10361))

(declare-fun d!10363 () Bool)

(declare-fun res!29427 () Bool)

(declare-fun e!33352 () Bool)

(assert (=> d!10363 (=> (not res!29427) (not e!33352))))

(assert (=> d!10363 (= res!29427 (simpleValid!36 (v!2187 (underlying!138 thiss!992))))))

(assert (=> d!10363 (= (valid!149 (v!2187 (underlying!138 thiss!992))) e!33352)))

(declare-fun b!51440 () Bool)

(declare-fun res!29428 () Bool)

(assert (=> b!51440 (=> (not res!29428) (not e!33352))))

(assert (=> b!51440 (= res!29428 (= (arrayCountValidKeys!0 (_keys!3544 (v!2187 (underlying!138 thiss!992))) #b00000000000000000000000000000000 (size!1820 (_keys!3544 (v!2187 (underlying!138 thiss!992))))) (_size!265 (v!2187 (underlying!138 thiss!992)))))))

(declare-fun b!51441 () Bool)

(declare-fun res!29429 () Bool)

(assert (=> b!51441 (=> (not res!29429) (not e!33352))))

(assert (=> b!51441 (= res!29429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3544 (v!2187 (underlying!138 thiss!992))) (mask!5734 (v!2187 (underlying!138 thiss!992)))))))

(declare-fun b!51442 () Bool)

(assert (=> b!51442 (= e!33352 (arrayNoDuplicates!0 (_keys!3544 (v!2187 (underlying!138 thiss!992))) #b00000000000000000000000000000000 Nil!1348))))

(assert (= (and d!10363 res!29427) b!51440))

(assert (= (and b!51440 res!29428) b!51441))

(assert (= (and b!51441 res!29429) b!51442))

(declare-fun m!44317 () Bool)

(assert (=> d!10363 m!44317))

(declare-fun m!44319 () Bool)

(assert (=> b!51440 m!44319))

(declare-fun m!44321 () Bool)

(assert (=> b!51441 m!44321))

(declare-fun m!44323 () Bool)

(assert (=> b!51442 m!44323))

(assert (=> d!10349 d!10363))

(declare-fun b!51451 () Bool)

(declare-fun e!33361 () Bool)

(declare-fun e!33360 () Bool)

(assert (=> b!51451 (= e!33361 e!33360)))

(declare-fun c!6905 () Bool)

(assert (=> b!51451 (= c!6905 (validKeyInArray!0 (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!51452 () Bool)

(declare-fun e!33359 () Bool)

(assert (=> b!51452 (= e!33360 e!33359)))

(declare-fun lt!21175 () (_ BitVec 64))

(assert (=> b!51452 (= lt!21175 (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!1426 0))(
  ( (Unit!1427) )
))
(declare-fun lt!21176 () Unit!1426)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3338 (_ BitVec 64) (_ BitVec 32)) Unit!1426)

(assert (=> b!51452 (= lt!21176 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3544 newMap!16) lt!21175 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!3338 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!51452 (arrayContainsKey!0 (_keys!3544 newMap!16) lt!21175 #b00000000000000000000000000000000)))

(declare-fun lt!21174 () Unit!1426)

(assert (=> b!51452 (= lt!21174 lt!21176)))

(declare-fun res!29435 () Bool)

(declare-datatypes ((SeekEntryResult!232 0))(
  ( (MissingZero!232 (index!3050 (_ BitVec 32))) (Found!232 (index!3051 (_ BitVec 32))) (Intermediate!232 (undefined!1044 Bool) (index!3052 (_ BitVec 32)) (x!9364 (_ BitVec 32))) (Undefined!232) (MissingVacant!232 (index!3053 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3338 (_ BitVec 32)) SeekEntryResult!232)

(assert (=> b!51452 (= res!29435 (= (seekEntryOrOpen!0 (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000) (_keys!3544 newMap!16) (mask!5734 newMap!16)) (Found!232 #b00000000000000000000000000000000)))))

(assert (=> b!51452 (=> (not res!29435) (not e!33359))))

(declare-fun d!10365 () Bool)

(declare-fun res!29434 () Bool)

(assert (=> d!10365 (=> res!29434 e!33361)))

(assert (=> d!10365 (= res!29434 (bvsge #b00000000000000000000000000000000 (size!1820 (_keys!3544 newMap!16))))))

(assert (=> d!10365 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3544 newMap!16) (mask!5734 newMap!16)) e!33361)))

(declare-fun b!51453 () Bool)

(declare-fun call!3942 () Bool)

(assert (=> b!51453 (= e!33360 call!3942)))

(declare-fun b!51454 () Bool)

(assert (=> b!51454 (= e!33359 call!3942)))

(declare-fun bm!3939 () Bool)

(assert (=> bm!3939 (= call!3942 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3544 newMap!16) (mask!5734 newMap!16)))))

(assert (= (and d!10365 (not res!29434)) b!51451))

(assert (= (and b!51451 c!6905) b!51452))

(assert (= (and b!51451 (not c!6905)) b!51453))

(assert (= (and b!51452 res!29435) b!51454))

(assert (= (or b!51454 b!51453) bm!3939))

(assert (=> b!51451 m!44307))

(assert (=> b!51451 m!44307))

(assert (=> b!51451 m!44309))

(assert (=> b!51452 m!44307))

(declare-fun m!44325 () Bool)

(assert (=> b!51452 m!44325))

(declare-fun m!44327 () Bool)

(assert (=> b!51452 m!44327))

(assert (=> b!51452 m!44307))

(declare-fun m!44329 () Bool)

(assert (=> b!51452 m!44329))

(declare-fun m!44331 () Bool)

(assert (=> bm!3939 m!44331))

(assert (=> b!51389 d!10365))

(declare-fun b!51455 () Bool)

(declare-fun e!33363 () Bool)

(assert (=> b!51455 (= e!33363 tp_is_empty!2211)))

(declare-fun b!51456 () Bool)

(declare-fun e!33362 () Bool)

(assert (=> b!51456 (= e!33362 tp_is_empty!2211)))

(declare-fun mapNonEmpty!2295 () Bool)

(declare-fun mapRes!2295 () Bool)

(declare-fun tp!6867 () Bool)

(assert (=> mapNonEmpty!2295 (= mapRes!2295 (and tp!6867 e!33363))))

(declare-fun mapValue!2295 () ValueCell!762)

(declare-fun mapRest!2295 () (Array (_ BitVec 32) ValueCell!762))

(declare-fun mapKey!2295 () (_ BitVec 32))

(assert (=> mapNonEmpty!2295 (= mapRest!2293 (store mapRest!2295 mapKey!2295 mapValue!2295))))

(declare-fun mapIsEmpty!2295 () Bool)

(assert (=> mapIsEmpty!2295 mapRes!2295))

(declare-fun condMapEmpty!2295 () Bool)

(declare-fun mapDefault!2295 () ValueCell!762)

(assert (=> mapNonEmpty!2293 (= condMapEmpty!2295 (= mapRest!2293 ((as const (Array (_ BitVec 32) ValueCell!762)) mapDefault!2295)))))

(assert (=> mapNonEmpty!2293 (= tp!6865 (and e!33362 mapRes!2295))))

(assert (= (and mapNonEmpty!2293 condMapEmpty!2295) mapIsEmpty!2295))

(assert (= (and mapNonEmpty!2293 (not condMapEmpty!2295)) mapNonEmpty!2295))

(assert (= (and mapNonEmpty!2295 ((_ is ValueCellFull!762) mapValue!2295)) b!51455))

(assert (= (and mapNonEmpty!2293 ((_ is ValueCellFull!762) mapDefault!2295)) b!51456))

(declare-fun m!44333 () Bool)

(assert (=> mapNonEmpty!2295 m!44333))

(declare-fun b!51457 () Bool)

(declare-fun e!33365 () Bool)

(assert (=> b!51457 (= e!33365 tp_is_empty!2211)))

(declare-fun b!51458 () Bool)

(declare-fun e!33364 () Bool)

(assert (=> b!51458 (= e!33364 tp_is_empty!2211)))

(declare-fun mapNonEmpty!2296 () Bool)

(declare-fun mapRes!2296 () Bool)

(declare-fun tp!6868 () Bool)

(assert (=> mapNonEmpty!2296 (= mapRes!2296 (and tp!6868 e!33365))))

(declare-fun mapRest!2296 () (Array (_ BitVec 32) ValueCell!762))

(declare-fun mapKey!2296 () (_ BitVec 32))

(declare-fun mapValue!2296 () ValueCell!762)

(assert (=> mapNonEmpty!2296 (= mapRest!2294 (store mapRest!2296 mapKey!2296 mapValue!2296))))

(declare-fun mapIsEmpty!2296 () Bool)

(assert (=> mapIsEmpty!2296 mapRes!2296))

(declare-fun condMapEmpty!2296 () Bool)

(declare-fun mapDefault!2296 () ValueCell!762)

(assert (=> mapNonEmpty!2294 (= condMapEmpty!2296 (= mapRest!2294 ((as const (Array (_ BitVec 32) ValueCell!762)) mapDefault!2296)))))

(assert (=> mapNonEmpty!2294 (= tp!6866 (and e!33364 mapRes!2296))))

(assert (= (and mapNonEmpty!2294 condMapEmpty!2296) mapIsEmpty!2296))

(assert (= (and mapNonEmpty!2294 (not condMapEmpty!2296)) mapNonEmpty!2296))

(assert (= (and mapNonEmpty!2296 ((_ is ValueCellFull!762) mapValue!2296)) b!51457))

(assert (= (and mapNonEmpty!2294 ((_ is ValueCellFull!762) mapDefault!2296)) b!51458))

(declare-fun m!44335 () Bool)

(assert (=> mapNonEmpty!2296 m!44335))

(check-sat b_and!2809 (not b!51436) (not mapNonEmpty!2296) b_and!2811 (not b!51423) (not b_next!1591) tp_is_empty!2211 (not b!51451) (not bm!3933) (not bm!3936) (not b!51441) (not mapNonEmpty!2295) (not b!51437) (not b_next!1589) (not b!51410) (not b!51452) (not b!51440) (not b!51438) (not b!51411) (not bm!3939) (not d!10363) (not d!10357) (not b!51442))
(check-sat b_and!2809 b_and!2811 (not b_next!1589) (not b_next!1591))
(get-model)

(declare-fun d!10367 () Bool)

(assert (=> d!10367 (= (size!1824 newMap!16) (bvadd (_size!265 newMap!16) (bvsdiv (bvadd (extraKeys!1821 newMap!16) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!51411 d!10367))

(assert (=> b!51410 d!10367))

(declare-fun d!10369 () Bool)

(assert (=> d!10369 (= (validKeyInArray!0 (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000)) (and (not (= (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!51451 d!10369))

(assert (=> b!51423 d!10369))

(declare-fun b!51459 () Bool)

(declare-fun e!33367 () (_ BitVec 32))

(declare-fun call!3943 () (_ BitVec 32))

(assert (=> b!51459 (= e!33367 call!3943)))

(declare-fun b!51460 () Bool)

(declare-fun e!33366 () (_ BitVec 32))

(assert (=> b!51460 (= e!33366 #b00000000000000000000000000000000)))

(declare-fun b!51461 () Bool)

(assert (=> b!51461 (= e!33366 e!33367)))

(declare-fun c!6906 () Bool)

(assert (=> b!51461 (= c!6906 (validKeyInArray!0 (select (arr!1594 (_keys!3544 (v!2187 (underlying!138 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun bm!3940 () Bool)

(assert (=> bm!3940 (= call!3943 (arrayCountValidKeys!0 (_keys!3544 (v!2187 (underlying!138 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1820 (_keys!3544 (v!2187 (underlying!138 thiss!992))))))))

(declare-fun b!51462 () Bool)

(assert (=> b!51462 (= e!33367 (bvadd #b00000000000000000000000000000001 call!3943))))

(declare-fun d!10371 () Bool)

(declare-fun lt!21177 () (_ BitVec 32))

(assert (=> d!10371 (and (bvsge lt!21177 #b00000000000000000000000000000000) (bvsle lt!21177 (bvsub (size!1820 (_keys!3544 (v!2187 (underlying!138 thiss!992)))) #b00000000000000000000000000000000)))))

(assert (=> d!10371 (= lt!21177 e!33366)))

(declare-fun c!6907 () Bool)

(assert (=> d!10371 (= c!6907 (bvsge #b00000000000000000000000000000000 (size!1820 (_keys!3544 (v!2187 (underlying!138 thiss!992))))))))

(assert (=> d!10371 (and (bvsle #b00000000000000000000000000000000 (size!1820 (_keys!3544 (v!2187 (underlying!138 thiss!992))))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!1820 (_keys!3544 (v!2187 (underlying!138 thiss!992)))) (size!1820 (_keys!3544 (v!2187 (underlying!138 thiss!992))))))))

(assert (=> d!10371 (= (arrayCountValidKeys!0 (_keys!3544 (v!2187 (underlying!138 thiss!992))) #b00000000000000000000000000000000 (size!1820 (_keys!3544 (v!2187 (underlying!138 thiss!992))))) lt!21177)))

(assert (= (and d!10371 c!6907) b!51460))

(assert (= (and d!10371 (not c!6907)) b!51461))

(assert (= (and b!51461 c!6906) b!51462))

(assert (= (and b!51461 (not c!6906)) b!51459))

(assert (= (or b!51462 b!51459) bm!3940))

(declare-fun m!44337 () Bool)

(assert (=> b!51461 m!44337))

(assert (=> b!51461 m!44337))

(declare-fun m!44339 () Bool)

(assert (=> b!51461 m!44339))

(declare-fun m!44341 () Bool)

(assert (=> bm!3940 m!44341))

(assert (=> b!51440 d!10371))

(declare-fun b!51463 () Bool)

(declare-fun e!33368 () Bool)

(declare-fun call!3944 () Bool)

(assert (=> b!51463 (= e!33368 call!3944)))

(declare-fun b!51464 () Bool)

(declare-fun e!33369 () Bool)

(declare-fun e!33370 () Bool)

(assert (=> b!51464 (= e!33369 e!33370)))

(declare-fun res!29437 () Bool)

(assert (=> b!51464 (=> (not res!29437) (not e!33370))))

(declare-fun e!33371 () Bool)

(assert (=> b!51464 (= res!29437 (not e!33371))))

(declare-fun res!29436 () Bool)

(assert (=> b!51464 (=> (not res!29436) (not e!33371))))

(assert (=> b!51464 (= res!29436 (validKeyInArray!0 (select (arr!1594 (_keys!3544 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!10373 () Bool)

(declare-fun res!29438 () Bool)

(assert (=> d!10373 (=> res!29438 e!33369)))

(assert (=> d!10373 (= res!29438 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1820 (_keys!3544 newMap!16))))))

(assert (=> d!10373 (= (arrayNoDuplicates!0 (_keys!3544 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!6902 (Cons!1347 (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000) Nil!1348) Nil!1348)) e!33369)))

(declare-fun b!51465 () Bool)

(assert (=> b!51465 (= e!33371 (contains!623 (ite c!6902 (Cons!1347 (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000) Nil!1348) Nil!1348) (select (arr!1594 (_keys!3544 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!51466 () Bool)

(assert (=> b!51466 (= e!33370 e!33368)))

(declare-fun c!6908 () Bool)

(assert (=> b!51466 (= c!6908 (validKeyInArray!0 (select (arr!1594 (_keys!3544 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!51467 () Bool)

(assert (=> b!51467 (= e!33368 call!3944)))

(declare-fun bm!3941 () Bool)

(assert (=> bm!3941 (= call!3944 (arrayNoDuplicates!0 (_keys!3544 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!6908 (Cons!1347 (select (arr!1594 (_keys!3544 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!6902 (Cons!1347 (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000) Nil!1348) Nil!1348)) (ite c!6902 (Cons!1347 (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000) Nil!1348) Nil!1348))))))

(assert (= (and d!10373 (not res!29438)) b!51464))

(assert (= (and b!51464 res!29436) b!51465))

(assert (= (and b!51464 res!29437) b!51466))

(assert (= (and b!51466 c!6908) b!51463))

(assert (= (and b!51466 (not c!6908)) b!51467))

(assert (= (or b!51463 b!51467) bm!3941))

(declare-fun m!44343 () Bool)

(assert (=> b!51464 m!44343))

(assert (=> b!51464 m!44343))

(declare-fun m!44345 () Bool)

(assert (=> b!51464 m!44345))

(assert (=> b!51465 m!44343))

(assert (=> b!51465 m!44343))

(declare-fun m!44347 () Bool)

(assert (=> b!51465 m!44347))

(assert (=> b!51466 m!44343))

(assert (=> b!51466 m!44343))

(assert (=> b!51466 m!44345))

(assert (=> bm!3941 m!44343))

(declare-fun m!44349 () Bool)

(assert (=> bm!3941 m!44349))

(assert (=> bm!3936 d!10373))

(declare-fun b!51468 () Bool)

(declare-fun e!33372 () Bool)

(declare-fun call!3945 () Bool)

(assert (=> b!51468 (= e!33372 call!3945)))

(declare-fun b!51469 () Bool)

(declare-fun e!33373 () Bool)

(declare-fun e!33374 () Bool)

(assert (=> b!51469 (= e!33373 e!33374)))

(declare-fun res!29440 () Bool)

(assert (=> b!51469 (=> (not res!29440) (not e!33374))))

(declare-fun e!33375 () Bool)

(assert (=> b!51469 (= res!29440 (not e!33375))))

(declare-fun res!29439 () Bool)

(assert (=> b!51469 (=> (not res!29439) (not e!33375))))

(assert (=> b!51469 (= res!29439 (validKeyInArray!0 (select (arr!1594 (_keys!3544 (v!2187 (underlying!138 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun d!10375 () Bool)

(declare-fun res!29441 () Bool)

(assert (=> d!10375 (=> res!29441 e!33373)))

(assert (=> d!10375 (= res!29441 (bvsge #b00000000000000000000000000000000 (size!1820 (_keys!3544 (v!2187 (underlying!138 thiss!992))))))))

(assert (=> d!10375 (= (arrayNoDuplicates!0 (_keys!3544 (v!2187 (underlying!138 thiss!992))) #b00000000000000000000000000000000 Nil!1348) e!33373)))

(declare-fun b!51470 () Bool)

(assert (=> b!51470 (= e!33375 (contains!623 Nil!1348 (select (arr!1594 (_keys!3544 (v!2187 (underlying!138 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!51471 () Bool)

(assert (=> b!51471 (= e!33374 e!33372)))

(declare-fun c!6909 () Bool)

(assert (=> b!51471 (= c!6909 (validKeyInArray!0 (select (arr!1594 (_keys!3544 (v!2187 (underlying!138 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!51472 () Bool)

(assert (=> b!51472 (= e!33372 call!3945)))

(declare-fun bm!3942 () Bool)

(assert (=> bm!3942 (= call!3945 (arrayNoDuplicates!0 (_keys!3544 (v!2187 (underlying!138 thiss!992))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!6909 (Cons!1347 (select (arr!1594 (_keys!3544 (v!2187 (underlying!138 thiss!992)))) #b00000000000000000000000000000000) Nil!1348) Nil!1348)))))

(assert (= (and d!10375 (not res!29441)) b!51469))

(assert (= (and b!51469 res!29439) b!51470))

(assert (= (and b!51469 res!29440) b!51471))

(assert (= (and b!51471 c!6909) b!51468))

(assert (= (and b!51471 (not c!6909)) b!51472))

(assert (= (or b!51468 b!51472) bm!3942))

(assert (=> b!51469 m!44337))

(assert (=> b!51469 m!44337))

(assert (=> b!51469 m!44339))

(assert (=> b!51470 m!44337))

(assert (=> b!51470 m!44337))

(declare-fun m!44351 () Bool)

(assert (=> b!51470 m!44351))

(assert (=> b!51471 m!44337))

(assert (=> b!51471 m!44337))

(assert (=> b!51471 m!44339))

(assert (=> bm!3942 m!44337))

(declare-fun m!44353 () Bool)

(assert (=> bm!3942 m!44353))

(assert (=> b!51442 d!10375))

(declare-fun b!51473 () Bool)

(declare-fun e!33378 () Bool)

(declare-fun e!33377 () Bool)

(assert (=> b!51473 (= e!33378 e!33377)))

(declare-fun c!6910 () Bool)

(assert (=> b!51473 (= c!6910 (validKeyInArray!0 (select (arr!1594 (_keys!3544 (v!2187 (underlying!138 thiss!992)))) #b00000000000000000000000000000000)))))

(declare-fun b!51474 () Bool)

(declare-fun e!33376 () Bool)

(assert (=> b!51474 (= e!33377 e!33376)))

(declare-fun lt!21179 () (_ BitVec 64))

(assert (=> b!51474 (= lt!21179 (select (arr!1594 (_keys!3544 (v!2187 (underlying!138 thiss!992)))) #b00000000000000000000000000000000))))

(declare-fun lt!21180 () Unit!1426)

(assert (=> b!51474 (= lt!21180 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3544 (v!2187 (underlying!138 thiss!992))) lt!21179 #b00000000000000000000000000000000))))

(assert (=> b!51474 (arrayContainsKey!0 (_keys!3544 (v!2187 (underlying!138 thiss!992))) lt!21179 #b00000000000000000000000000000000)))

(declare-fun lt!21178 () Unit!1426)

(assert (=> b!51474 (= lt!21178 lt!21180)))

(declare-fun res!29443 () Bool)

(assert (=> b!51474 (= res!29443 (= (seekEntryOrOpen!0 (select (arr!1594 (_keys!3544 (v!2187 (underlying!138 thiss!992)))) #b00000000000000000000000000000000) (_keys!3544 (v!2187 (underlying!138 thiss!992))) (mask!5734 (v!2187 (underlying!138 thiss!992)))) (Found!232 #b00000000000000000000000000000000)))))

(assert (=> b!51474 (=> (not res!29443) (not e!33376))))

(declare-fun d!10377 () Bool)

(declare-fun res!29442 () Bool)

(assert (=> d!10377 (=> res!29442 e!33378)))

(assert (=> d!10377 (= res!29442 (bvsge #b00000000000000000000000000000000 (size!1820 (_keys!3544 (v!2187 (underlying!138 thiss!992))))))))

(assert (=> d!10377 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3544 (v!2187 (underlying!138 thiss!992))) (mask!5734 (v!2187 (underlying!138 thiss!992)))) e!33378)))

(declare-fun b!51475 () Bool)

(declare-fun call!3946 () Bool)

(assert (=> b!51475 (= e!33377 call!3946)))

(declare-fun b!51476 () Bool)

(assert (=> b!51476 (= e!33376 call!3946)))

(declare-fun bm!3943 () Bool)

(assert (=> bm!3943 (= call!3946 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3544 (v!2187 (underlying!138 thiss!992))) (mask!5734 (v!2187 (underlying!138 thiss!992)))))))

(assert (= (and d!10377 (not res!29442)) b!51473))

(assert (= (and b!51473 c!6910) b!51474))

(assert (= (and b!51473 (not c!6910)) b!51475))

(assert (= (and b!51474 res!29443) b!51476))

(assert (= (or b!51476 b!51475) bm!3943))

(assert (=> b!51473 m!44337))

(assert (=> b!51473 m!44337))

(assert (=> b!51473 m!44339))

(assert (=> b!51474 m!44337))

(declare-fun m!44355 () Bool)

(assert (=> b!51474 m!44355))

(declare-fun m!44357 () Bool)

(assert (=> b!51474 m!44357))

(assert (=> b!51474 m!44337))

(declare-fun m!44359 () Bool)

(assert (=> b!51474 m!44359))

(declare-fun m!44361 () Bool)

(assert (=> bm!3943 m!44361))

(assert (=> b!51441 d!10377))

(declare-fun b!51477 () Bool)

(declare-fun e!33381 () Bool)

(declare-fun e!33380 () Bool)

(assert (=> b!51477 (= e!33381 e!33380)))

(declare-fun c!6911 () Bool)

(assert (=> b!51477 (= c!6911 (validKeyInArray!0 (select (arr!1594 (_keys!3544 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!51478 () Bool)

(declare-fun e!33379 () Bool)

(assert (=> b!51478 (= e!33380 e!33379)))

(declare-fun lt!21182 () (_ BitVec 64))

(assert (=> b!51478 (= lt!21182 (select (arr!1594 (_keys!3544 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!21183 () Unit!1426)

(assert (=> b!51478 (= lt!21183 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3544 newMap!16) lt!21182 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!51478 (arrayContainsKey!0 (_keys!3544 newMap!16) lt!21182 #b00000000000000000000000000000000)))

(declare-fun lt!21181 () Unit!1426)

(assert (=> b!51478 (= lt!21181 lt!21183)))

(declare-fun res!29445 () Bool)

(assert (=> b!51478 (= res!29445 (= (seekEntryOrOpen!0 (select (arr!1594 (_keys!3544 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!3544 newMap!16) (mask!5734 newMap!16)) (Found!232 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!51478 (=> (not res!29445) (not e!33379))))

(declare-fun d!10379 () Bool)

(declare-fun res!29444 () Bool)

(assert (=> d!10379 (=> res!29444 e!33381)))

(assert (=> d!10379 (= res!29444 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1820 (_keys!3544 newMap!16))))))

(assert (=> d!10379 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!3544 newMap!16) (mask!5734 newMap!16)) e!33381)))

(declare-fun b!51479 () Bool)

(declare-fun call!3947 () Bool)

(assert (=> b!51479 (= e!33380 call!3947)))

(declare-fun b!51480 () Bool)

(assert (=> b!51480 (= e!33379 call!3947)))

(declare-fun bm!3944 () Bool)

(assert (=> bm!3944 (= call!3947 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!3544 newMap!16) (mask!5734 newMap!16)))))

(assert (= (and d!10379 (not res!29444)) b!51477))

(assert (= (and b!51477 c!6911) b!51478))

(assert (= (and b!51477 (not c!6911)) b!51479))

(assert (= (and b!51478 res!29445) b!51480))

(assert (= (or b!51480 b!51479) bm!3944))

(assert (=> b!51477 m!44343))

(assert (=> b!51477 m!44343))

(assert (=> b!51477 m!44345))

(assert (=> b!51478 m!44343))

(declare-fun m!44363 () Bool)

(assert (=> b!51478 m!44363))

(declare-fun m!44365 () Bool)

(assert (=> b!51478 m!44365))

(assert (=> b!51478 m!44343))

(declare-fun m!44367 () Bool)

(assert (=> b!51478 m!44367))

(declare-fun m!44369 () Bool)

(assert (=> bm!3944 m!44369))

(assert (=> bm!3939 d!10379))

(assert (=> b!51438 d!10369))

(declare-fun d!10381 () Bool)

(assert (=> d!10381 (arrayContainsKey!0 (_keys!3544 newMap!16) lt!21175 #b00000000000000000000000000000000)))

(declare-fun lt!21186 () Unit!1426)

(declare-fun choose!13 (array!3338 (_ BitVec 64) (_ BitVec 32)) Unit!1426)

(assert (=> d!10381 (= lt!21186 (choose!13 (_keys!3544 newMap!16) lt!21175 #b00000000000000000000000000000000))))

(assert (=> d!10381 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!10381 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!3544 newMap!16) lt!21175 #b00000000000000000000000000000000) lt!21186)))

(declare-fun bs!2378 () Bool)

(assert (= bs!2378 d!10381))

(assert (=> bs!2378 m!44327))

(declare-fun m!44371 () Bool)

(assert (=> bs!2378 m!44371))

(assert (=> b!51452 d!10381))

(declare-fun d!10383 () Bool)

(declare-fun res!29450 () Bool)

(declare-fun e!33386 () Bool)

(assert (=> d!10383 (=> res!29450 e!33386)))

(assert (=> d!10383 (= res!29450 (= (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000) lt!21175))))

(assert (=> d!10383 (= (arrayContainsKey!0 (_keys!3544 newMap!16) lt!21175 #b00000000000000000000000000000000) e!33386)))

(declare-fun b!51485 () Bool)

(declare-fun e!33387 () Bool)

(assert (=> b!51485 (= e!33386 e!33387)))

(declare-fun res!29451 () Bool)

(assert (=> b!51485 (=> (not res!29451) (not e!33387))))

(assert (=> b!51485 (= res!29451 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1820 (_keys!3544 newMap!16))))))

(declare-fun b!51486 () Bool)

(assert (=> b!51486 (= e!33387 (arrayContainsKey!0 (_keys!3544 newMap!16) lt!21175 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!10383 (not res!29450)) b!51485))

(assert (= (and b!51485 res!29451) b!51486))

(assert (=> d!10383 m!44307))

(declare-fun m!44373 () Bool)

(assert (=> b!51486 m!44373))

(assert (=> b!51452 d!10383))

(declare-fun b!51499 () Bool)

(declare-fun e!33395 () SeekEntryResult!232)

(declare-fun lt!21195 () SeekEntryResult!232)

(assert (=> b!51499 (= e!33395 (Found!232 (index!3052 lt!21195)))))

(declare-fun b!51500 () Bool)

(declare-fun e!33396 () SeekEntryResult!232)

(assert (=> b!51500 (= e!33396 e!33395)))

(declare-fun lt!21193 () (_ BitVec 64))

(assert (=> b!51500 (= lt!21193 (select (arr!1594 (_keys!3544 newMap!16)) (index!3052 lt!21195)))))

(declare-fun c!6919 () Bool)

(assert (=> b!51500 (= c!6919 (= lt!21193 (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!51502 () Bool)

(declare-fun c!6920 () Bool)

(assert (=> b!51502 (= c!6920 (= lt!21193 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!33394 () SeekEntryResult!232)

(assert (=> b!51502 (= e!33395 e!33394)))

(declare-fun b!51503 () Bool)

(assert (=> b!51503 (= e!33396 Undefined!232)))

(declare-fun b!51504 () Bool)

(assert (=> b!51504 (= e!33394 (MissingZero!232 (index!3052 lt!21195)))))

(declare-fun d!10385 () Bool)

(declare-fun lt!21194 () SeekEntryResult!232)

(assert (=> d!10385 (and (or ((_ is Undefined!232) lt!21194) (not ((_ is Found!232) lt!21194)) (and (bvsge (index!3051 lt!21194) #b00000000000000000000000000000000) (bvslt (index!3051 lt!21194) (size!1820 (_keys!3544 newMap!16))))) (or ((_ is Undefined!232) lt!21194) ((_ is Found!232) lt!21194) (not ((_ is MissingZero!232) lt!21194)) (and (bvsge (index!3050 lt!21194) #b00000000000000000000000000000000) (bvslt (index!3050 lt!21194) (size!1820 (_keys!3544 newMap!16))))) (or ((_ is Undefined!232) lt!21194) ((_ is Found!232) lt!21194) ((_ is MissingZero!232) lt!21194) (not ((_ is MissingVacant!232) lt!21194)) (and (bvsge (index!3053 lt!21194) #b00000000000000000000000000000000) (bvslt (index!3053 lt!21194) (size!1820 (_keys!3544 newMap!16))))) (or ((_ is Undefined!232) lt!21194) (ite ((_ is Found!232) lt!21194) (= (select (arr!1594 (_keys!3544 newMap!16)) (index!3051 lt!21194)) (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!232) lt!21194) (= (select (arr!1594 (_keys!3544 newMap!16)) (index!3050 lt!21194)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!232) lt!21194) (= (select (arr!1594 (_keys!3544 newMap!16)) (index!3053 lt!21194)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!10385 (= lt!21194 e!33396)))

(declare-fun c!6918 () Bool)

(assert (=> d!10385 (= c!6918 (and ((_ is Intermediate!232) lt!21195) (undefined!1044 lt!21195)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3338 (_ BitVec 32)) SeekEntryResult!232)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!10385 (= lt!21195 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000) (mask!5734 newMap!16)) (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000) (_keys!3544 newMap!16) (mask!5734 newMap!16)))))

(assert (=> d!10385 (validMask!0 (mask!5734 newMap!16))))

(assert (=> d!10385 (= (seekEntryOrOpen!0 (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000) (_keys!3544 newMap!16) (mask!5734 newMap!16)) lt!21194)))

(declare-fun b!51501 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!3338 (_ BitVec 32)) SeekEntryResult!232)

(assert (=> b!51501 (= e!33394 (seekKeyOrZeroReturnVacant!0 (x!9364 lt!21195) (index!3052 lt!21195) (index!3052 lt!21195) (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000) (_keys!3544 newMap!16) (mask!5734 newMap!16)))))

(assert (= (and d!10385 c!6918) b!51503))

(assert (= (and d!10385 (not c!6918)) b!51500))

(assert (= (and b!51500 c!6919) b!51499))

(assert (= (and b!51500 (not c!6919)) b!51502))

(assert (= (and b!51502 c!6920) b!51504))

(assert (= (and b!51502 (not c!6920)) b!51501))

(declare-fun m!44375 () Bool)

(assert (=> b!51500 m!44375))

(declare-fun m!44377 () Bool)

(assert (=> d!10385 m!44377))

(assert (=> d!10385 m!44305))

(declare-fun m!44379 () Bool)

(assert (=> d!10385 m!44379))

(assert (=> d!10385 m!44307))

(declare-fun m!44381 () Bool)

(assert (=> d!10385 m!44381))

(assert (=> d!10385 m!44381))

(assert (=> d!10385 m!44307))

(declare-fun m!44383 () Bool)

(assert (=> d!10385 m!44383))

(declare-fun m!44385 () Bool)

(assert (=> d!10385 m!44385))

(assert (=> b!51501 m!44307))

(declare-fun m!44387 () Bool)

(assert (=> b!51501 m!44387))

(assert (=> b!51452 d!10385))

(declare-fun b!51505 () Bool)

(declare-fun e!33398 () (_ BitVec 32))

(declare-fun call!3948 () (_ BitVec 32))

(assert (=> b!51505 (= e!33398 call!3948)))

(declare-fun b!51506 () Bool)

(declare-fun e!33397 () (_ BitVec 32))

(assert (=> b!51506 (= e!33397 #b00000000000000000000000000000000)))

(declare-fun b!51507 () Bool)

(assert (=> b!51507 (= e!33397 e!33398)))

(declare-fun c!6921 () Bool)

(assert (=> b!51507 (= c!6921 (validKeyInArray!0 (select (arr!1594 (_keys!3544 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!3945 () Bool)

(assert (=> bm!3945 (= call!3948 (arrayCountValidKeys!0 (_keys!3544 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1820 (_keys!3544 newMap!16))))))

(declare-fun b!51508 () Bool)

(assert (=> b!51508 (= e!33398 (bvadd #b00000000000000000000000000000001 call!3948))))

(declare-fun d!10387 () Bool)

(declare-fun lt!21196 () (_ BitVec 32))

(assert (=> d!10387 (and (bvsge lt!21196 #b00000000000000000000000000000000) (bvsle lt!21196 (bvsub (size!1820 (_keys!3544 newMap!16)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!10387 (= lt!21196 e!33397)))

(declare-fun c!6922 () Bool)

(assert (=> d!10387 (= c!6922 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1820 (_keys!3544 newMap!16))))))

(assert (=> d!10387 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1820 (_keys!3544 newMap!16))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!1820 (_keys!3544 newMap!16)) (size!1820 (_keys!3544 newMap!16))))))

(assert (=> d!10387 (= (arrayCountValidKeys!0 (_keys!3544 newMap!16) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1820 (_keys!3544 newMap!16))) lt!21196)))

(assert (= (and d!10387 c!6922) b!51506))

(assert (= (and d!10387 (not c!6922)) b!51507))

(assert (= (and b!51507 c!6921) b!51508))

(assert (= (and b!51507 (not c!6921)) b!51505))

(assert (= (or b!51508 b!51505) bm!3945))

(assert (=> b!51507 m!44343))

(assert (=> b!51507 m!44343))

(assert (=> b!51507 m!44345))

(declare-fun m!44389 () Bool)

(assert (=> bm!3945 m!44389))

(assert (=> bm!3933 d!10387))

(declare-fun b!51511 () Bool)

(declare-fun res!29454 () Bool)

(declare-fun e!33399 () Bool)

(assert (=> b!51511 (=> (not res!29454) (not e!33399))))

(assert (=> b!51511 (= res!29454 (= (size!1824 (v!2187 (underlying!138 thiss!992))) (bvadd (_size!265 (v!2187 (underlying!138 thiss!992))) (bvsdiv (bvadd (extraKeys!1821 (v!2187 (underlying!138 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!51509 () Bool)

(declare-fun res!29455 () Bool)

(assert (=> b!51509 (=> (not res!29455) (not e!33399))))

(assert (=> b!51509 (= res!29455 (and (= (size!1821 (_values!1913 (v!2187 (underlying!138 thiss!992)))) (bvadd (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000000000000000000000000001)) (= (size!1820 (_keys!3544 (v!2187 (underlying!138 thiss!992)))) (size!1821 (_values!1913 (v!2187 (underlying!138 thiss!992))))) (bvsge (_size!265 (v!2187 (underlying!138 thiss!992))) #b00000000000000000000000000000000) (bvsle (_size!265 (v!2187 (underlying!138 thiss!992))) (bvadd (mask!5734 (v!2187 (underlying!138 thiss!992))) #b00000000000000000000000000000001))))))

(declare-fun b!51510 () Bool)

(declare-fun res!29452 () Bool)

(assert (=> b!51510 (=> (not res!29452) (not e!33399))))

(assert (=> b!51510 (= res!29452 (bvsge (size!1824 (v!2187 (underlying!138 thiss!992))) (_size!265 (v!2187 (underlying!138 thiss!992)))))))

(declare-fun b!51512 () Bool)

(assert (=> b!51512 (= e!33399 (and (bvsge (extraKeys!1821 (v!2187 (underlying!138 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!1821 (v!2187 (underlying!138 thiss!992))) #b00000000000000000000000000000011) (bvsge (_vacant!265 (v!2187 (underlying!138 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun d!10389 () Bool)

(declare-fun res!29453 () Bool)

(assert (=> d!10389 (=> (not res!29453) (not e!33399))))

(assert (=> d!10389 (= res!29453 (validMask!0 (mask!5734 (v!2187 (underlying!138 thiss!992)))))))

(assert (=> d!10389 (= (simpleValid!36 (v!2187 (underlying!138 thiss!992))) e!33399)))

(assert (= (and d!10389 res!29453) b!51509))

(assert (= (and b!51509 res!29455) b!51510))

(assert (= (and b!51510 res!29452) b!51511))

(assert (= (and b!51511 res!29454) b!51512))

(declare-fun m!44391 () Bool)

(assert (=> b!51511 m!44391))

(assert (=> b!51510 m!44391))

(assert (=> d!10389 m!44253))

(assert (=> d!10363 d!10389))

(declare-fun d!10391 () Bool)

(declare-fun lt!21199 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!58 (List!1351) (InoxSet (_ BitVec 64)))

(assert (=> d!10391 (= lt!21199 (select (content!58 Nil!1348) (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun e!33404 () Bool)

(assert (=> d!10391 (= lt!21199 e!33404)))

(declare-fun res!29460 () Bool)

(assert (=> d!10391 (=> (not res!29460) (not e!33404))))

(assert (=> d!10391 (= res!29460 ((_ is Cons!1347) Nil!1348))))

(assert (=> d!10391 (= (contains!623 Nil!1348 (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000)) lt!21199)))

(declare-fun b!51517 () Bool)

(declare-fun e!33405 () Bool)

(assert (=> b!51517 (= e!33404 e!33405)))

(declare-fun res!29461 () Bool)

(assert (=> b!51517 (=> res!29461 e!33405)))

(assert (=> b!51517 (= res!29461 (= (h!1927 Nil!1348) (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000)))))

(declare-fun b!51518 () Bool)

(assert (=> b!51518 (= e!33405 (contains!623 (t!4393 Nil!1348) (select (arr!1594 (_keys!3544 newMap!16)) #b00000000000000000000000000000000)))))

(assert (= (and d!10391 res!29460) b!51517))

(assert (= (and b!51517 (not res!29461)) b!51518))

(declare-fun m!44393 () Bool)

(assert (=> d!10391 m!44393))

(assert (=> d!10391 m!44307))

(declare-fun m!44395 () Bool)

(assert (=> d!10391 m!44395))

(assert (=> b!51518 m!44307))

(declare-fun m!44397 () Bool)

(assert (=> b!51518 m!44397))

(assert (=> b!51437 d!10391))

(assert (=> b!51436 d!10369))

(declare-fun d!10393 () Bool)

(assert (=> d!10393 (= (validMask!0 (mask!5734 newMap!16)) (and (or (= (mask!5734 newMap!16) #b00000000000000000000000000000111) (= (mask!5734 newMap!16) #b00000000000000000000000000001111) (= (mask!5734 newMap!16) #b00000000000000000000000000011111) (= (mask!5734 newMap!16) #b00000000000000000000000000111111) (= (mask!5734 newMap!16) #b00000000000000000000000001111111) (= (mask!5734 newMap!16) #b00000000000000000000000011111111) (= (mask!5734 newMap!16) #b00000000000000000000000111111111) (= (mask!5734 newMap!16) #b00000000000000000000001111111111) (= (mask!5734 newMap!16) #b00000000000000000000011111111111) (= (mask!5734 newMap!16) #b00000000000000000000111111111111) (= (mask!5734 newMap!16) #b00000000000000000001111111111111) (= (mask!5734 newMap!16) #b00000000000000000011111111111111) (= (mask!5734 newMap!16) #b00000000000000000111111111111111) (= (mask!5734 newMap!16) #b00000000000000001111111111111111) (= (mask!5734 newMap!16) #b00000000000000011111111111111111) (= (mask!5734 newMap!16) #b00000000000000111111111111111111) (= (mask!5734 newMap!16) #b00000000000001111111111111111111) (= (mask!5734 newMap!16) #b00000000000011111111111111111111) (= (mask!5734 newMap!16) #b00000000000111111111111111111111) (= (mask!5734 newMap!16) #b00000000001111111111111111111111) (= (mask!5734 newMap!16) #b00000000011111111111111111111111) (= (mask!5734 newMap!16) #b00000000111111111111111111111111) (= (mask!5734 newMap!16) #b00000001111111111111111111111111) (= (mask!5734 newMap!16) #b00000011111111111111111111111111) (= (mask!5734 newMap!16) #b00000111111111111111111111111111) (= (mask!5734 newMap!16) #b00001111111111111111111111111111) (= (mask!5734 newMap!16) #b00011111111111111111111111111111) (= (mask!5734 newMap!16) #b00111111111111111111111111111111)) (bvsle (mask!5734 newMap!16) #b00111111111111111111111111111111)))))

(assert (=> d!10357 d!10393))

(declare-fun b!51519 () Bool)

(declare-fun e!33407 () Bool)

(assert (=> b!51519 (= e!33407 tp_is_empty!2211)))

(declare-fun b!51520 () Bool)

(declare-fun e!33406 () Bool)

(assert (=> b!51520 (= e!33406 tp_is_empty!2211)))

(declare-fun mapNonEmpty!2297 () Bool)

(declare-fun mapRes!2297 () Bool)

(declare-fun tp!6869 () Bool)

(assert (=> mapNonEmpty!2297 (= mapRes!2297 (and tp!6869 e!33407))))

(declare-fun mapRest!2297 () (Array (_ BitVec 32) ValueCell!762))

(declare-fun mapValue!2297 () ValueCell!762)

(declare-fun mapKey!2297 () (_ BitVec 32))

(assert (=> mapNonEmpty!2297 (= mapRest!2296 (store mapRest!2297 mapKey!2297 mapValue!2297))))

(declare-fun mapIsEmpty!2297 () Bool)

(assert (=> mapIsEmpty!2297 mapRes!2297))

(declare-fun condMapEmpty!2297 () Bool)

(declare-fun mapDefault!2297 () ValueCell!762)

(assert (=> mapNonEmpty!2296 (= condMapEmpty!2297 (= mapRest!2296 ((as const (Array (_ BitVec 32) ValueCell!762)) mapDefault!2297)))))

(assert (=> mapNonEmpty!2296 (= tp!6868 (and e!33406 mapRes!2297))))

(assert (= (and mapNonEmpty!2296 condMapEmpty!2297) mapIsEmpty!2297))

(assert (= (and mapNonEmpty!2296 (not condMapEmpty!2297)) mapNonEmpty!2297))

(assert (= (and mapNonEmpty!2297 ((_ is ValueCellFull!762) mapValue!2297)) b!51519))

(assert (= (and mapNonEmpty!2296 ((_ is ValueCellFull!762) mapDefault!2297)) b!51520))

(declare-fun m!44399 () Bool)

(assert (=> mapNonEmpty!2297 m!44399))

(declare-fun b!51521 () Bool)

(declare-fun e!33409 () Bool)

(assert (=> b!51521 (= e!33409 tp_is_empty!2211)))

(declare-fun b!51522 () Bool)

(declare-fun e!33408 () Bool)

(assert (=> b!51522 (= e!33408 tp_is_empty!2211)))

(declare-fun mapNonEmpty!2298 () Bool)

(declare-fun mapRes!2298 () Bool)

(declare-fun tp!6870 () Bool)

(assert (=> mapNonEmpty!2298 (= mapRes!2298 (and tp!6870 e!33409))))

(declare-fun mapRest!2298 () (Array (_ BitVec 32) ValueCell!762))

(declare-fun mapKey!2298 () (_ BitVec 32))

(declare-fun mapValue!2298 () ValueCell!762)

(assert (=> mapNonEmpty!2298 (= mapRest!2295 (store mapRest!2298 mapKey!2298 mapValue!2298))))

(declare-fun mapIsEmpty!2298 () Bool)

(assert (=> mapIsEmpty!2298 mapRes!2298))

(declare-fun condMapEmpty!2298 () Bool)

(declare-fun mapDefault!2298 () ValueCell!762)

(assert (=> mapNonEmpty!2295 (= condMapEmpty!2298 (= mapRest!2295 ((as const (Array (_ BitVec 32) ValueCell!762)) mapDefault!2298)))))

(assert (=> mapNonEmpty!2295 (= tp!6867 (and e!33408 mapRes!2298))))

(assert (= (and mapNonEmpty!2295 condMapEmpty!2298) mapIsEmpty!2298))

(assert (= (and mapNonEmpty!2295 (not condMapEmpty!2298)) mapNonEmpty!2298))

(assert (= (and mapNonEmpty!2298 ((_ is ValueCellFull!762) mapValue!2298)) b!51521))

(assert (= (and mapNonEmpty!2295 ((_ is ValueCellFull!762) mapDefault!2298)) b!51522))

(declare-fun m!44401 () Bool)

(assert (=> mapNonEmpty!2298 m!44401))

(check-sat (not b!51469) (not mapNonEmpty!2298) (not d!10389) (not b!51474) (not bm!3944) (not b!51478) (not b!51477) (not b!51461) (not bm!3941) (not b!51470) (not bm!3940) (not bm!3943) (not b!51511) (not mapNonEmpty!2297) b_and!2809 (not b!51473) (not b!51518) (not b_next!1589) (not b!51465) (not b!51464) b_and!2811 (not b!51501) (not d!10391) (not b_next!1591) (not d!10381) tp_is_empty!2211 (not b!51510) (not b!51471) (not bm!3942) (not b!51486) (not bm!3945) (not d!10385) (not b!51466) (not b!51507))
(check-sat b_and!2809 b_and!2811 (not b_next!1589) (not b_next!1591))
