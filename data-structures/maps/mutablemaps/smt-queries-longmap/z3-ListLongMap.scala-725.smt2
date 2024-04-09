; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16940 () Bool)

(assert start!16940)

(declare-fun b!170227 () Bool)

(declare-fun b_free!4191 () Bool)

(declare-fun b_next!4191 () Bool)

(assert (=> b!170227 (= b_free!4191 (not b_next!4191))))

(declare-fun tp!15192 () Bool)

(declare-fun b_and!10623 () Bool)

(assert (=> b!170227 (= tp!15192 b_and!10623)))

(declare-fun mapNonEmpty!6727 () Bool)

(declare-fun mapRes!6727 () Bool)

(declare-fun tp!15193 () Bool)

(declare-fun e!112316 () Bool)

(assert (=> mapNonEmpty!6727 (= mapRes!6727 (and tp!15193 e!112316))))

(declare-datatypes ((V!4931 0))(
  ( (V!4932 (val!2026 Int)) )
))
(declare-datatypes ((ValueCell!1638 0))(
  ( (ValueCellFull!1638 (v!3887 V!4931)) (EmptyCell!1638) )
))
(declare-fun mapValue!6727 () ValueCell!1638)

(declare-fun mapRest!6727 () (Array (_ BitVec 32) ValueCell!1638))

(declare-fun mapKey!6727 () (_ BitVec 32))

(declare-datatypes ((array!7032 0))(
  ( (array!7033 (arr!3346 (Array (_ BitVec 32) (_ BitVec 64))) (size!3638 (_ BitVec 32))) )
))
(declare-datatypes ((array!7034 0))(
  ( (array!7035 (arr!3347 (Array (_ BitVec 32) ValueCell!1638)) (size!3639 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2184 0))(
  ( (LongMapFixedSize!2185 (defaultEntry!3534 Int) (mask!8342 (_ BitVec 32)) (extraKeys!3275 (_ BitVec 32)) (zeroValue!3377 V!4931) (minValue!3377 V!4931) (_size!1141 (_ BitVec 32)) (_keys!5363 array!7032) (_values!3517 array!7034) (_vacant!1141 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2184)

(assert (=> mapNonEmpty!6727 (= (arr!3347 (_values!3517 thiss!1248)) (store mapRest!6727 mapKey!6727 mapValue!6727))))

(declare-fun b!170224 () Bool)

(declare-fun res!80940 () Bool)

(declare-fun e!112315 () Bool)

(assert (=> b!170224 (=> (not res!80940) (not e!112315))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!170224 (= res!80940 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!6727 () Bool)

(assert (=> mapIsEmpty!6727 mapRes!6727))

(declare-fun res!80939 () Bool)

(assert (=> start!16940 (=> (not res!80939) (not e!112315))))

(declare-fun valid!928 (LongMapFixedSize!2184) Bool)

(assert (=> start!16940 (= res!80939 (valid!928 thiss!1248))))

(assert (=> start!16940 e!112315))

(declare-fun e!112320 () Bool)

(assert (=> start!16940 e!112320))

(assert (=> start!16940 true))

(declare-fun b!170225 () Bool)

(declare-fun res!80938 () Bool)

(assert (=> b!170225 (=> (not res!80938) (not e!112315))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!170225 (= res!80938 (validMask!0 (mask!8342 thiss!1248)))))

(declare-fun b!170226 () Bool)

(assert (=> b!170226 (= e!112315 (and (= (size!3639 (_values!3517 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8342 thiss!1248))) (= (size!3638 (_keys!5363 thiss!1248)) (size!3639 (_values!3517 thiss!1248))) (bvsge (mask!8342 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3275 thiss!1248) #b00000000000000000000000000000000) (bvsgt (extraKeys!3275 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun e!112317 () Bool)

(declare-fun tp_is_empty!3963 () Bool)

(declare-fun array_inv!2131 (array!7032) Bool)

(declare-fun array_inv!2132 (array!7034) Bool)

(assert (=> b!170227 (= e!112320 (and tp!15192 tp_is_empty!3963 (array_inv!2131 (_keys!5363 thiss!1248)) (array_inv!2132 (_values!3517 thiss!1248)) e!112317))))

(declare-fun b!170228 () Bool)

(assert (=> b!170228 (= e!112316 tp_is_empty!3963)))

(declare-fun b!170229 () Bool)

(declare-fun e!112319 () Bool)

(assert (=> b!170229 (= e!112317 (and e!112319 mapRes!6727))))

(declare-fun condMapEmpty!6727 () Bool)

(declare-fun mapDefault!6727 () ValueCell!1638)

(assert (=> b!170229 (= condMapEmpty!6727 (= (arr!3347 (_values!3517 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1638)) mapDefault!6727)))))

(declare-fun b!170230 () Bool)

(assert (=> b!170230 (= e!112319 tp_is_empty!3963)))

(assert (= (and start!16940 res!80939) b!170224))

(assert (= (and b!170224 res!80940) b!170225))

(assert (= (and b!170225 res!80938) b!170226))

(assert (= (and b!170229 condMapEmpty!6727) mapIsEmpty!6727))

(assert (= (and b!170229 (not condMapEmpty!6727)) mapNonEmpty!6727))

(get-info :version)

(assert (= (and mapNonEmpty!6727 ((_ is ValueCellFull!1638) mapValue!6727)) b!170228))

(assert (= (and b!170229 ((_ is ValueCellFull!1638) mapDefault!6727)) b!170230))

(assert (= b!170227 b!170229))

(assert (= start!16940 b!170227))

(declare-fun m!198849 () Bool)

(assert (=> mapNonEmpty!6727 m!198849))

(declare-fun m!198851 () Bool)

(assert (=> start!16940 m!198851))

(declare-fun m!198853 () Bool)

(assert (=> b!170225 m!198853))

(declare-fun m!198855 () Bool)

(assert (=> b!170227 m!198855))

(declare-fun m!198857 () Bool)

(assert (=> b!170227 m!198857))

(check-sat b_and!10623 (not b!170225) (not b!170227) (not mapNonEmpty!6727) (not start!16940) (not b_next!4191) tp_is_empty!3963)
(check-sat b_and!10623 (not b_next!4191))
(get-model)

(declare-fun d!51631 () Bool)

(assert (=> d!51631 (= (array_inv!2131 (_keys!5363 thiss!1248)) (bvsge (size!3638 (_keys!5363 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!170227 d!51631))

(declare-fun d!51633 () Bool)

(assert (=> d!51633 (= (array_inv!2132 (_values!3517 thiss!1248)) (bvsge (size!3639 (_values!3517 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!170227 d!51633))

(declare-fun d!51635 () Bool)

(declare-fun res!80956 () Bool)

(declare-fun e!112341 () Bool)

(assert (=> d!51635 (=> (not res!80956) (not e!112341))))

(declare-fun simpleValid!131 (LongMapFixedSize!2184) Bool)

(assert (=> d!51635 (= res!80956 (simpleValid!131 thiss!1248))))

(assert (=> d!51635 (= (valid!928 thiss!1248) e!112341)))

(declare-fun b!170258 () Bool)

(declare-fun res!80957 () Bool)

(assert (=> b!170258 (=> (not res!80957) (not e!112341))))

(declare-fun arrayCountValidKeys!0 (array!7032 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!170258 (= res!80957 (= (arrayCountValidKeys!0 (_keys!5363 thiss!1248) #b00000000000000000000000000000000 (size!3638 (_keys!5363 thiss!1248))) (_size!1141 thiss!1248)))))

(declare-fun b!170259 () Bool)

(declare-fun res!80958 () Bool)

(assert (=> b!170259 (=> (not res!80958) (not e!112341))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7032 (_ BitVec 32)) Bool)

(assert (=> b!170259 (= res!80958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5363 thiss!1248) (mask!8342 thiss!1248)))))

(declare-fun b!170260 () Bool)

(declare-datatypes ((List!2208 0))(
  ( (Nil!2205) (Cons!2204 (h!2821 (_ BitVec 64)) (t!7018 List!2208)) )
))
(declare-fun arrayNoDuplicates!0 (array!7032 (_ BitVec 32) List!2208) Bool)

(assert (=> b!170260 (= e!112341 (arrayNoDuplicates!0 (_keys!5363 thiss!1248) #b00000000000000000000000000000000 Nil!2205))))

(assert (= (and d!51635 res!80956) b!170258))

(assert (= (and b!170258 res!80957) b!170259))

(assert (= (and b!170259 res!80958) b!170260))

(declare-fun m!198869 () Bool)

(assert (=> d!51635 m!198869))

(declare-fun m!198871 () Bool)

(assert (=> b!170258 m!198871))

(declare-fun m!198873 () Bool)

(assert (=> b!170259 m!198873))

(declare-fun m!198875 () Bool)

(assert (=> b!170260 m!198875))

(assert (=> start!16940 d!51635))

(declare-fun d!51637 () Bool)

(assert (=> d!51637 (= (validMask!0 (mask!8342 thiss!1248)) (and (or (= (mask!8342 thiss!1248) #b00000000000000000000000000000111) (= (mask!8342 thiss!1248) #b00000000000000000000000000001111) (= (mask!8342 thiss!1248) #b00000000000000000000000000011111) (= (mask!8342 thiss!1248) #b00000000000000000000000000111111) (= (mask!8342 thiss!1248) #b00000000000000000000000001111111) (= (mask!8342 thiss!1248) #b00000000000000000000000011111111) (= (mask!8342 thiss!1248) #b00000000000000000000000111111111) (= (mask!8342 thiss!1248) #b00000000000000000000001111111111) (= (mask!8342 thiss!1248) #b00000000000000000000011111111111) (= (mask!8342 thiss!1248) #b00000000000000000000111111111111) (= (mask!8342 thiss!1248) #b00000000000000000001111111111111) (= (mask!8342 thiss!1248) #b00000000000000000011111111111111) (= (mask!8342 thiss!1248) #b00000000000000000111111111111111) (= (mask!8342 thiss!1248) #b00000000000000001111111111111111) (= (mask!8342 thiss!1248) #b00000000000000011111111111111111) (= (mask!8342 thiss!1248) #b00000000000000111111111111111111) (= (mask!8342 thiss!1248) #b00000000000001111111111111111111) (= (mask!8342 thiss!1248) #b00000000000011111111111111111111) (= (mask!8342 thiss!1248) #b00000000000111111111111111111111) (= (mask!8342 thiss!1248) #b00000000001111111111111111111111) (= (mask!8342 thiss!1248) #b00000000011111111111111111111111) (= (mask!8342 thiss!1248) #b00000000111111111111111111111111) (= (mask!8342 thiss!1248) #b00000001111111111111111111111111) (= (mask!8342 thiss!1248) #b00000011111111111111111111111111) (= (mask!8342 thiss!1248) #b00000111111111111111111111111111) (= (mask!8342 thiss!1248) #b00001111111111111111111111111111) (= (mask!8342 thiss!1248) #b00011111111111111111111111111111) (= (mask!8342 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8342 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!170225 d!51637))

(declare-fun b!170268 () Bool)

(declare-fun e!112346 () Bool)

(assert (=> b!170268 (= e!112346 tp_is_empty!3963)))

(declare-fun condMapEmpty!6733 () Bool)

(declare-fun mapDefault!6733 () ValueCell!1638)

(assert (=> mapNonEmpty!6727 (= condMapEmpty!6733 (= mapRest!6727 ((as const (Array (_ BitVec 32) ValueCell!1638)) mapDefault!6733)))))

(declare-fun mapRes!6733 () Bool)

(assert (=> mapNonEmpty!6727 (= tp!15193 (and e!112346 mapRes!6733))))

(declare-fun b!170267 () Bool)

(declare-fun e!112347 () Bool)

(assert (=> b!170267 (= e!112347 tp_is_empty!3963)))

(declare-fun mapNonEmpty!6733 () Bool)

(declare-fun tp!15202 () Bool)

(assert (=> mapNonEmpty!6733 (= mapRes!6733 (and tp!15202 e!112347))))

(declare-fun mapKey!6733 () (_ BitVec 32))

(declare-fun mapValue!6733 () ValueCell!1638)

(declare-fun mapRest!6733 () (Array (_ BitVec 32) ValueCell!1638))

(assert (=> mapNonEmpty!6733 (= mapRest!6727 (store mapRest!6733 mapKey!6733 mapValue!6733))))

(declare-fun mapIsEmpty!6733 () Bool)

(assert (=> mapIsEmpty!6733 mapRes!6733))

(assert (= (and mapNonEmpty!6727 condMapEmpty!6733) mapIsEmpty!6733))

(assert (= (and mapNonEmpty!6727 (not condMapEmpty!6733)) mapNonEmpty!6733))

(assert (= (and mapNonEmpty!6733 ((_ is ValueCellFull!1638) mapValue!6733)) b!170267))

(assert (= (and mapNonEmpty!6727 ((_ is ValueCellFull!1638) mapDefault!6733)) b!170268))

(declare-fun m!198877 () Bool)

(assert (=> mapNonEmpty!6733 m!198877))

(check-sat (not mapNonEmpty!6733) (not b!170258) (not b!170259) b_and!10623 (not b!170260) (not d!51635) (not b_next!4191) tp_is_empty!3963)
(check-sat b_and!10623 (not b_next!4191))
(get-model)

(declare-fun d!51639 () Bool)

(declare-fun res!80969 () Bool)

(declare-fun e!112350 () Bool)

(assert (=> d!51639 (=> (not res!80969) (not e!112350))))

(assert (=> d!51639 (= res!80969 (validMask!0 (mask!8342 thiss!1248)))))

(assert (=> d!51639 (= (simpleValid!131 thiss!1248) e!112350)))

(declare-fun b!170279 () Bool)

(declare-fun res!80968 () Bool)

(assert (=> b!170279 (=> (not res!80968) (not e!112350))))

(declare-fun size!3642 (LongMapFixedSize!2184) (_ BitVec 32))

(assert (=> b!170279 (= res!80968 (= (size!3642 thiss!1248) (bvadd (_size!1141 thiss!1248) (bvsdiv (bvadd (extraKeys!3275 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!170278 () Bool)

(declare-fun res!80967 () Bool)

(assert (=> b!170278 (=> (not res!80967) (not e!112350))))

(assert (=> b!170278 (= res!80967 (bvsge (size!3642 thiss!1248) (_size!1141 thiss!1248)))))

(declare-fun b!170280 () Bool)

(assert (=> b!170280 (= e!112350 (and (bvsge (extraKeys!3275 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3275 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1141 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!170277 () Bool)

(declare-fun res!80970 () Bool)

(assert (=> b!170277 (=> (not res!80970) (not e!112350))))

(assert (=> b!170277 (= res!80970 (and (= (size!3639 (_values!3517 thiss!1248)) (bvadd (mask!8342 thiss!1248) #b00000000000000000000000000000001)) (= (size!3638 (_keys!5363 thiss!1248)) (size!3639 (_values!3517 thiss!1248))) (bvsge (_size!1141 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1141 thiss!1248) (bvadd (mask!8342 thiss!1248) #b00000000000000000000000000000001))))))

(assert (= (and d!51639 res!80969) b!170277))

(assert (= (and b!170277 res!80970) b!170278))

(assert (= (and b!170278 res!80967) b!170279))

(assert (= (and b!170279 res!80968) b!170280))

(assert (=> d!51639 m!198853))

(declare-fun m!198879 () Bool)

(assert (=> b!170279 m!198879))

(assert (=> b!170278 m!198879))

(assert (=> d!51635 d!51639))

(declare-fun d!51641 () Bool)

(declare-fun lt!85022 () (_ BitVec 32))

(assert (=> d!51641 (and (bvsge lt!85022 #b00000000000000000000000000000000) (bvsle lt!85022 (bvsub (size!3638 (_keys!5363 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!112356 () (_ BitVec 32))

(assert (=> d!51641 (= lt!85022 e!112356)))

(declare-fun c!30461 () Bool)

(assert (=> d!51641 (= c!30461 (bvsge #b00000000000000000000000000000000 (size!3638 (_keys!5363 thiss!1248))))))

(assert (=> d!51641 (and (bvsle #b00000000000000000000000000000000 (size!3638 (_keys!5363 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3638 (_keys!5363 thiss!1248)) (size!3638 (_keys!5363 thiss!1248))))))

(assert (=> d!51641 (= (arrayCountValidKeys!0 (_keys!5363 thiss!1248) #b00000000000000000000000000000000 (size!3638 (_keys!5363 thiss!1248))) lt!85022)))

(declare-fun bm!17369 () Bool)

(declare-fun call!17372 () (_ BitVec 32))

(assert (=> bm!17369 (= call!17372 (arrayCountValidKeys!0 (_keys!5363 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3638 (_keys!5363 thiss!1248))))))

(declare-fun b!170289 () Bool)

(assert (=> b!170289 (= e!112356 #b00000000000000000000000000000000)))

(declare-fun b!170290 () Bool)

(declare-fun e!112355 () (_ BitVec 32))

(assert (=> b!170290 (= e!112356 e!112355)))

(declare-fun c!30462 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!170290 (= c!30462 (validKeyInArray!0 (select (arr!3346 (_keys!5363 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!170291 () Bool)

(assert (=> b!170291 (= e!112355 call!17372)))

(declare-fun b!170292 () Bool)

(assert (=> b!170292 (= e!112355 (bvadd #b00000000000000000000000000000001 call!17372))))

(assert (= (and d!51641 c!30461) b!170289))

(assert (= (and d!51641 (not c!30461)) b!170290))

(assert (= (and b!170290 c!30462) b!170292))

(assert (= (and b!170290 (not c!30462)) b!170291))

(assert (= (or b!170292 b!170291) bm!17369))

(declare-fun m!198881 () Bool)

(assert (=> bm!17369 m!198881))

(declare-fun m!198883 () Bool)

(assert (=> b!170290 m!198883))

(assert (=> b!170290 m!198883))

(declare-fun m!198885 () Bool)

(assert (=> b!170290 m!198885))

(assert (=> b!170258 d!51641))

(declare-fun b!170303 () Bool)

(declare-fun e!112368 () Bool)

(declare-fun e!112367 () Bool)

(assert (=> b!170303 (= e!112368 e!112367)))

(declare-fun c!30465 () Bool)

(assert (=> b!170303 (= c!30465 (validKeyInArray!0 (select (arr!3346 (_keys!5363 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!170304 () Bool)

(declare-fun call!17375 () Bool)

(assert (=> b!170304 (= e!112367 call!17375)))

(declare-fun bm!17372 () Bool)

(assert (=> bm!17372 (= call!17375 (arrayNoDuplicates!0 (_keys!5363 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30465 (Cons!2204 (select (arr!3346 (_keys!5363 thiss!1248)) #b00000000000000000000000000000000) Nil!2205) Nil!2205)))))

(declare-fun b!170305 () Bool)

(assert (=> b!170305 (= e!112367 call!17375)))

(declare-fun d!51643 () Bool)

(declare-fun res!80978 () Bool)

(declare-fun e!112365 () Bool)

(assert (=> d!51643 (=> res!80978 e!112365)))

(assert (=> d!51643 (= res!80978 (bvsge #b00000000000000000000000000000000 (size!3638 (_keys!5363 thiss!1248))))))

(assert (=> d!51643 (= (arrayNoDuplicates!0 (_keys!5363 thiss!1248) #b00000000000000000000000000000000 Nil!2205) e!112365)))

(declare-fun b!170306 () Bool)

(assert (=> b!170306 (= e!112365 e!112368)))

(declare-fun res!80979 () Bool)

(assert (=> b!170306 (=> (not res!80979) (not e!112368))))

(declare-fun e!112366 () Bool)

(assert (=> b!170306 (= res!80979 (not e!112366))))

(declare-fun res!80977 () Bool)

(assert (=> b!170306 (=> (not res!80977) (not e!112366))))

(assert (=> b!170306 (= res!80977 (validKeyInArray!0 (select (arr!3346 (_keys!5363 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!170307 () Bool)

(declare-fun contains!1140 (List!2208 (_ BitVec 64)) Bool)

(assert (=> b!170307 (= e!112366 (contains!1140 Nil!2205 (select (arr!3346 (_keys!5363 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!51643 (not res!80978)) b!170306))

(assert (= (and b!170306 res!80977) b!170307))

(assert (= (and b!170306 res!80979) b!170303))

(assert (= (and b!170303 c!30465) b!170305))

(assert (= (and b!170303 (not c!30465)) b!170304))

(assert (= (or b!170305 b!170304) bm!17372))

(assert (=> b!170303 m!198883))

(assert (=> b!170303 m!198883))

(assert (=> b!170303 m!198885))

(assert (=> bm!17372 m!198883))

(declare-fun m!198887 () Bool)

(assert (=> bm!17372 m!198887))

(assert (=> b!170306 m!198883))

(assert (=> b!170306 m!198883))

(assert (=> b!170306 m!198885))

(assert (=> b!170307 m!198883))

(assert (=> b!170307 m!198883))

(declare-fun m!198889 () Bool)

(assert (=> b!170307 m!198889))

(assert (=> b!170260 d!51643))

(declare-fun b!170316 () Bool)

(declare-fun e!112377 () Bool)

(declare-fun call!17378 () Bool)

(assert (=> b!170316 (= e!112377 call!17378)))

(declare-fun d!51645 () Bool)

(declare-fun res!80985 () Bool)

(declare-fun e!112375 () Bool)

(assert (=> d!51645 (=> res!80985 e!112375)))

(assert (=> d!51645 (= res!80985 (bvsge #b00000000000000000000000000000000 (size!3638 (_keys!5363 thiss!1248))))))

(assert (=> d!51645 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5363 thiss!1248) (mask!8342 thiss!1248)) e!112375)))

(declare-fun bm!17375 () Bool)

(assert (=> bm!17375 (= call!17378 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5363 thiss!1248) (mask!8342 thiss!1248)))))

(declare-fun b!170317 () Bool)

(declare-fun e!112376 () Bool)

(assert (=> b!170317 (= e!112376 call!17378)))

(declare-fun b!170318 () Bool)

(assert (=> b!170318 (= e!112375 e!112376)))

(declare-fun c!30468 () Bool)

(assert (=> b!170318 (= c!30468 (validKeyInArray!0 (select (arr!3346 (_keys!5363 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!170319 () Bool)

(assert (=> b!170319 (= e!112376 e!112377)))

(declare-fun lt!85029 () (_ BitVec 64))

(assert (=> b!170319 (= lt!85029 (select (arr!3346 (_keys!5363 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5241 0))(
  ( (Unit!5242) )
))
(declare-fun lt!85031 () Unit!5241)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7032 (_ BitVec 64) (_ BitVec 32)) Unit!5241)

(assert (=> b!170319 (= lt!85031 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5363 thiss!1248) lt!85029 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7032 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!170319 (arrayContainsKey!0 (_keys!5363 thiss!1248) lt!85029 #b00000000000000000000000000000000)))

(declare-fun lt!85030 () Unit!5241)

(assert (=> b!170319 (= lt!85030 lt!85031)))

(declare-fun res!80984 () Bool)

(declare-datatypes ((SeekEntryResult!541 0))(
  ( (MissingZero!541 (index!4332 (_ BitVec 32))) (Found!541 (index!4333 (_ BitVec 32))) (Intermediate!541 (undefined!1353 Bool) (index!4334 (_ BitVec 32)) (x!18871 (_ BitVec 32))) (Undefined!541) (MissingVacant!541 (index!4335 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7032 (_ BitVec 32)) SeekEntryResult!541)

(assert (=> b!170319 (= res!80984 (= (seekEntryOrOpen!0 (select (arr!3346 (_keys!5363 thiss!1248)) #b00000000000000000000000000000000) (_keys!5363 thiss!1248) (mask!8342 thiss!1248)) (Found!541 #b00000000000000000000000000000000)))))

(assert (=> b!170319 (=> (not res!80984) (not e!112377))))

(assert (= (and d!51645 (not res!80985)) b!170318))

(assert (= (and b!170318 c!30468) b!170319))

(assert (= (and b!170318 (not c!30468)) b!170317))

(assert (= (and b!170319 res!80984) b!170316))

(assert (= (or b!170316 b!170317) bm!17375))

(declare-fun m!198891 () Bool)

(assert (=> bm!17375 m!198891))

(assert (=> b!170318 m!198883))

(assert (=> b!170318 m!198883))

(assert (=> b!170318 m!198885))

(assert (=> b!170319 m!198883))

(declare-fun m!198893 () Bool)

(assert (=> b!170319 m!198893))

(declare-fun m!198895 () Bool)

(assert (=> b!170319 m!198895))

(assert (=> b!170319 m!198883))

(declare-fun m!198897 () Bool)

(assert (=> b!170319 m!198897))

(assert (=> b!170259 d!51645))

(declare-fun b!170321 () Bool)

(declare-fun e!112378 () Bool)

(assert (=> b!170321 (= e!112378 tp_is_empty!3963)))

(declare-fun condMapEmpty!6734 () Bool)

(declare-fun mapDefault!6734 () ValueCell!1638)

(assert (=> mapNonEmpty!6733 (= condMapEmpty!6734 (= mapRest!6733 ((as const (Array (_ BitVec 32) ValueCell!1638)) mapDefault!6734)))))

(declare-fun mapRes!6734 () Bool)

(assert (=> mapNonEmpty!6733 (= tp!15202 (and e!112378 mapRes!6734))))

(declare-fun b!170320 () Bool)

(declare-fun e!112379 () Bool)

(assert (=> b!170320 (= e!112379 tp_is_empty!3963)))

(declare-fun mapNonEmpty!6734 () Bool)

(declare-fun tp!15203 () Bool)

(assert (=> mapNonEmpty!6734 (= mapRes!6734 (and tp!15203 e!112379))))

(declare-fun mapValue!6734 () ValueCell!1638)

(declare-fun mapRest!6734 () (Array (_ BitVec 32) ValueCell!1638))

(declare-fun mapKey!6734 () (_ BitVec 32))

(assert (=> mapNonEmpty!6734 (= mapRest!6733 (store mapRest!6734 mapKey!6734 mapValue!6734))))

(declare-fun mapIsEmpty!6734 () Bool)

(assert (=> mapIsEmpty!6734 mapRes!6734))

(assert (= (and mapNonEmpty!6733 condMapEmpty!6734) mapIsEmpty!6734))

(assert (= (and mapNonEmpty!6733 (not condMapEmpty!6734)) mapNonEmpty!6734))

(assert (= (and mapNonEmpty!6734 ((_ is ValueCellFull!1638) mapValue!6734)) b!170320))

(assert (= (and mapNonEmpty!6733 ((_ is ValueCellFull!1638) mapDefault!6734)) b!170321))

(declare-fun m!198899 () Bool)

(assert (=> mapNonEmpty!6734 m!198899))

(check-sat (not b!170303) (not b!170290) (not d!51639) b_and!10623 (not bm!17375) (not b!170306) (not mapNonEmpty!6734) (not b!170318) (not b!170278) (not b!170307) (not b!170279) (not bm!17369) (not bm!17372) (not b!170319) (not b_next!4191) tp_is_empty!3963)
(check-sat b_and!10623 (not b_next!4191))
