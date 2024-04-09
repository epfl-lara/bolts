; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15780 () Bool)

(assert start!15780)

(declare-fun b!157305 () Bool)

(declare-fun b_free!3435 () Bool)

(declare-fun b_next!3435 () Bool)

(assert (=> b!157305 (= b_free!3435 (not b_next!3435))))

(declare-fun tp!12830 () Bool)

(declare-fun b_and!9867 () Bool)

(assert (=> b!157305 (= tp!12830 b_and!9867)))

(declare-fun b!157303 () Bool)

(declare-fun e!103005 () Bool)

(declare-fun tp_is_empty!3237 () Bool)

(assert (=> b!157303 (= e!103005 tp_is_empty!3237)))

(declare-fun b!157304 () Bool)

(declare-fun e!103007 () Bool)

(assert (=> b!157304 (= e!103007 tp_is_empty!3237)))

(declare-fun e!103010 () Bool)

(declare-datatypes ((V!3963 0))(
  ( (V!3964 (val!1663 Int)) )
))
(declare-datatypes ((ValueCell!1275 0))(
  ( (ValueCellFull!1275 (v!3524 V!3963)) (EmptyCell!1275) )
))
(declare-datatypes ((array!5526 0))(
  ( (array!5527 (arr!2620 (Array (_ BitVec 32) (_ BitVec 64))) (size!2898 (_ BitVec 32))) )
))
(declare-datatypes ((array!5528 0))(
  ( (array!5529 (arr!2621 (Array (_ BitVec 32) ValueCell!1275)) (size!2899 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1458 0))(
  ( (LongMapFixedSize!1459 (defaultEntry!3171 Int) (mask!7648 (_ BitVec 32)) (extraKeys!2912 (_ BitVec 32)) (zeroValue!3014 V!3963) (minValue!3014 V!3963) (_size!778 (_ BitVec 32)) (_keys!4946 array!5526) (_values!3154 array!5528) (_vacant!778 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1458)

(declare-fun e!103006 () Bool)

(declare-fun array_inv!1655 (array!5526) Bool)

(declare-fun array_inv!1656 (array!5528) Bool)

(assert (=> b!157305 (= e!103006 (and tp!12830 tp_is_empty!3237 (array_inv!1655 (_keys!4946 thiss!1248)) (array_inv!1656 (_values!3154 thiss!1248)) e!103010))))

(declare-fun b!157306 () Bool)

(declare-fun mapRes!5498 () Bool)

(assert (=> b!157306 (= e!103010 (and e!103005 mapRes!5498))))

(declare-fun condMapEmpty!5498 () Bool)

(declare-fun mapDefault!5498 () ValueCell!1275)

(assert (=> b!157306 (= condMapEmpty!5498 (= (arr!2621 (_values!3154 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1275)) mapDefault!5498)))))

(declare-fun res!74355 () Bool)

(declare-fun e!103009 () Bool)

(assert (=> start!15780 (=> (not res!74355) (not e!103009))))

(declare-fun valid!690 (LongMapFixedSize!1458) Bool)

(assert (=> start!15780 (= res!74355 (valid!690 thiss!1248))))

(assert (=> start!15780 e!103009))

(assert (=> start!15780 e!103006))

(assert (=> start!15780 true))

(declare-fun mapNonEmpty!5498 () Bool)

(declare-fun tp!12829 () Bool)

(assert (=> mapNonEmpty!5498 (= mapRes!5498 (and tp!12829 e!103007))))

(declare-fun mapRest!5498 () (Array (_ BitVec 32) ValueCell!1275))

(declare-fun mapValue!5498 () ValueCell!1275)

(declare-fun mapKey!5498 () (_ BitVec 32))

(assert (=> mapNonEmpty!5498 (= (arr!2621 (_values!3154 thiss!1248)) (store mapRest!5498 mapKey!5498 mapValue!5498))))

(declare-fun mapIsEmpty!5498 () Bool)

(assert (=> mapIsEmpty!5498 mapRes!5498))

(declare-fun b!157307 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!157307 (= e!103009 (not (validMask!0 (mask!7648 thiss!1248))))))

(declare-fun b!157308 () Bool)

(declare-fun res!74356 () Bool)

(assert (=> b!157308 (=> (not res!74356) (not e!103009))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!157308 (= res!74356 (not (= key!828 (bvneg key!828))))))

(assert (= (and start!15780 res!74355) b!157308))

(assert (= (and b!157308 res!74356) b!157307))

(assert (= (and b!157306 condMapEmpty!5498) mapIsEmpty!5498))

(assert (= (and b!157306 (not condMapEmpty!5498)) mapNonEmpty!5498))

(get-info :version)

(assert (= (and mapNonEmpty!5498 ((_ is ValueCellFull!1275) mapValue!5498)) b!157304))

(assert (= (and b!157306 ((_ is ValueCellFull!1275) mapDefault!5498)) b!157303))

(assert (= b!157305 b!157306))

(assert (= start!15780 b!157305))

(declare-fun m!190599 () Bool)

(assert (=> b!157305 m!190599))

(declare-fun m!190601 () Bool)

(assert (=> b!157305 m!190601))

(declare-fun m!190603 () Bool)

(assert (=> start!15780 m!190603))

(declare-fun m!190605 () Bool)

(assert (=> mapNonEmpty!5498 m!190605))

(declare-fun m!190607 () Bool)

(assert (=> b!157307 m!190607))

(check-sat (not mapNonEmpty!5498) (not b!157307) (not start!15780) tp_is_empty!3237 (not b!157305) b_and!9867 (not b_next!3435))
(check-sat b_and!9867 (not b_next!3435))
(get-model)

(declare-fun d!50955 () Bool)

(assert (=> d!50955 (= (validMask!0 (mask!7648 thiss!1248)) (and (or (= (mask!7648 thiss!1248) #b00000000000000000000000000000111) (= (mask!7648 thiss!1248) #b00000000000000000000000000001111) (= (mask!7648 thiss!1248) #b00000000000000000000000000011111) (= (mask!7648 thiss!1248) #b00000000000000000000000000111111) (= (mask!7648 thiss!1248) #b00000000000000000000000001111111) (= (mask!7648 thiss!1248) #b00000000000000000000000011111111) (= (mask!7648 thiss!1248) #b00000000000000000000000111111111) (= (mask!7648 thiss!1248) #b00000000000000000000001111111111) (= (mask!7648 thiss!1248) #b00000000000000000000011111111111) (= (mask!7648 thiss!1248) #b00000000000000000000111111111111) (= (mask!7648 thiss!1248) #b00000000000000000001111111111111) (= (mask!7648 thiss!1248) #b00000000000000000011111111111111) (= (mask!7648 thiss!1248) #b00000000000000000111111111111111) (= (mask!7648 thiss!1248) #b00000000000000001111111111111111) (= (mask!7648 thiss!1248) #b00000000000000011111111111111111) (= (mask!7648 thiss!1248) #b00000000000000111111111111111111) (= (mask!7648 thiss!1248) #b00000000000001111111111111111111) (= (mask!7648 thiss!1248) #b00000000000011111111111111111111) (= (mask!7648 thiss!1248) #b00000000000111111111111111111111) (= (mask!7648 thiss!1248) #b00000000001111111111111111111111) (= (mask!7648 thiss!1248) #b00000000011111111111111111111111) (= (mask!7648 thiss!1248) #b00000000111111111111111111111111) (= (mask!7648 thiss!1248) #b00000001111111111111111111111111) (= (mask!7648 thiss!1248) #b00000011111111111111111111111111) (= (mask!7648 thiss!1248) #b00000111111111111111111111111111) (= (mask!7648 thiss!1248) #b00001111111111111111111111111111) (= (mask!7648 thiss!1248) #b00011111111111111111111111111111) (= (mask!7648 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!7648 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!157307 d!50955))

(declare-fun d!50957 () Bool)

(assert (=> d!50957 (= (array_inv!1655 (_keys!4946 thiss!1248)) (bvsge (size!2898 (_keys!4946 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!157305 d!50957))

(declare-fun d!50959 () Bool)

(assert (=> d!50959 (= (array_inv!1656 (_values!3154 thiss!1248)) (bvsge (size!2899 (_values!3154 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!157305 d!50959))

(declare-fun d!50961 () Bool)

(declare-fun res!74369 () Bool)

(declare-fun e!103031 () Bool)

(assert (=> d!50961 (=> (not res!74369) (not e!103031))))

(declare-fun simpleValid!104 (LongMapFixedSize!1458) Bool)

(assert (=> d!50961 (= res!74369 (simpleValid!104 thiss!1248))))

(assert (=> d!50961 (= (valid!690 thiss!1248) e!103031)))

(declare-fun b!157333 () Bool)

(declare-fun res!74370 () Bool)

(assert (=> b!157333 (=> (not res!74370) (not e!103031))))

(declare-fun arrayCountValidKeys!0 (array!5526 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!157333 (= res!74370 (= (arrayCountValidKeys!0 (_keys!4946 thiss!1248) #b00000000000000000000000000000000 (size!2898 (_keys!4946 thiss!1248))) (_size!778 thiss!1248)))))

(declare-fun b!157334 () Bool)

(declare-fun res!74371 () Bool)

(assert (=> b!157334 (=> (not res!74371) (not e!103031))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5526 (_ BitVec 32)) Bool)

(assert (=> b!157334 (= res!74371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4946 thiss!1248) (mask!7648 thiss!1248)))))

(declare-fun b!157335 () Bool)

(declare-datatypes ((List!1896 0))(
  ( (Nil!1893) (Cons!1892 (h!2501 (_ BitVec 64)) (t!6706 List!1896)) )
))
(declare-fun arrayNoDuplicates!0 (array!5526 (_ BitVec 32) List!1896) Bool)

(assert (=> b!157335 (= e!103031 (arrayNoDuplicates!0 (_keys!4946 thiss!1248) #b00000000000000000000000000000000 Nil!1893))))

(assert (= (and d!50961 res!74369) b!157333))

(assert (= (and b!157333 res!74370) b!157334))

(assert (= (and b!157334 res!74371) b!157335))

(declare-fun m!190619 () Bool)

(assert (=> d!50961 m!190619))

(declare-fun m!190621 () Bool)

(assert (=> b!157333 m!190621))

(declare-fun m!190623 () Bool)

(assert (=> b!157334 m!190623))

(declare-fun m!190625 () Bool)

(assert (=> b!157335 m!190625))

(assert (=> start!15780 d!50961))

(declare-fun b!157343 () Bool)

(declare-fun e!103037 () Bool)

(assert (=> b!157343 (= e!103037 tp_is_empty!3237)))

(declare-fun mapNonEmpty!5504 () Bool)

(declare-fun mapRes!5504 () Bool)

(declare-fun tp!12839 () Bool)

(declare-fun e!103036 () Bool)

(assert (=> mapNonEmpty!5504 (= mapRes!5504 (and tp!12839 e!103036))))

(declare-fun mapValue!5504 () ValueCell!1275)

(declare-fun mapKey!5504 () (_ BitVec 32))

(declare-fun mapRest!5504 () (Array (_ BitVec 32) ValueCell!1275))

(assert (=> mapNonEmpty!5504 (= mapRest!5498 (store mapRest!5504 mapKey!5504 mapValue!5504))))

(declare-fun b!157342 () Bool)

(assert (=> b!157342 (= e!103036 tp_is_empty!3237)))

(declare-fun condMapEmpty!5504 () Bool)

(declare-fun mapDefault!5504 () ValueCell!1275)

(assert (=> mapNonEmpty!5498 (= condMapEmpty!5504 (= mapRest!5498 ((as const (Array (_ BitVec 32) ValueCell!1275)) mapDefault!5504)))))

(assert (=> mapNonEmpty!5498 (= tp!12829 (and e!103037 mapRes!5504))))

(declare-fun mapIsEmpty!5504 () Bool)

(assert (=> mapIsEmpty!5504 mapRes!5504))

(assert (= (and mapNonEmpty!5498 condMapEmpty!5504) mapIsEmpty!5504))

(assert (= (and mapNonEmpty!5498 (not condMapEmpty!5504)) mapNonEmpty!5504))

(assert (= (and mapNonEmpty!5504 ((_ is ValueCellFull!1275) mapValue!5504)) b!157342))

(assert (= (and mapNonEmpty!5498 ((_ is ValueCellFull!1275) mapDefault!5504)) b!157343))

(declare-fun m!190627 () Bool)

(assert (=> mapNonEmpty!5504 m!190627))

(check-sat (not b!157334) (not d!50961) b_and!9867 (not b!157333) (not mapNonEmpty!5504) tp_is_empty!3237 (not b!157335) (not b_next!3435))
(check-sat b_and!9867 (not b_next!3435))
(get-model)

(declare-fun d!50963 () Bool)

(declare-fun res!74381 () Bool)

(declare-fun e!103040 () Bool)

(assert (=> d!50963 (=> (not res!74381) (not e!103040))))

(assert (=> d!50963 (= res!74381 (validMask!0 (mask!7648 thiss!1248)))))

(assert (=> d!50963 (= (simpleValid!104 thiss!1248) e!103040)))

(declare-fun b!157353 () Bool)

(declare-fun res!74382 () Bool)

(assert (=> b!157353 (=> (not res!74382) (not e!103040))))

(declare-fun size!2902 (LongMapFixedSize!1458) (_ BitVec 32))

(assert (=> b!157353 (= res!74382 (bvsge (size!2902 thiss!1248) (_size!778 thiss!1248)))))

(declare-fun b!157354 () Bool)

(declare-fun res!74380 () Bool)

(assert (=> b!157354 (=> (not res!74380) (not e!103040))))

(assert (=> b!157354 (= res!74380 (= (size!2902 thiss!1248) (bvadd (_size!778 thiss!1248) (bvsdiv (bvadd (extraKeys!2912 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!157355 () Bool)

(assert (=> b!157355 (= e!103040 (and (bvsge (extraKeys!2912 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2912 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!778 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!157352 () Bool)

(declare-fun res!74383 () Bool)

(assert (=> b!157352 (=> (not res!74383) (not e!103040))))

(assert (=> b!157352 (= res!74383 (and (= (size!2899 (_values!3154 thiss!1248)) (bvadd (mask!7648 thiss!1248) #b00000000000000000000000000000001)) (= (size!2898 (_keys!4946 thiss!1248)) (size!2899 (_values!3154 thiss!1248))) (bvsge (_size!778 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!778 thiss!1248) (bvadd (mask!7648 thiss!1248) #b00000000000000000000000000000001))))))

(assert (= (and d!50963 res!74381) b!157352))

(assert (= (and b!157352 res!74383) b!157353))

(assert (= (and b!157353 res!74382) b!157354))

(assert (= (and b!157354 res!74380) b!157355))

(assert (=> d!50963 m!190607))

(declare-fun m!190629 () Bool)

(assert (=> b!157353 m!190629))

(assert (=> b!157354 m!190629))

(assert (=> d!50961 d!50963))

(declare-fun b!157364 () Bool)

(declare-fun e!103048 () Bool)

(declare-fun e!103047 () Bool)

(assert (=> b!157364 (= e!103048 e!103047)))

(declare-fun lt!81753 () (_ BitVec 64))

(assert (=> b!157364 (= lt!81753 (select (arr!2620 (_keys!4946 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!4976 0))(
  ( (Unit!4977) )
))
(declare-fun lt!81755 () Unit!4976)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!5526 (_ BitVec 64) (_ BitVec 32)) Unit!4976)

(assert (=> b!157364 (= lt!81755 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!4946 thiss!1248) lt!81753 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!5526 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!157364 (arrayContainsKey!0 (_keys!4946 thiss!1248) lt!81753 #b00000000000000000000000000000000)))

(declare-fun lt!81754 () Unit!4976)

(assert (=> b!157364 (= lt!81754 lt!81755)))

(declare-fun res!74389 () Bool)

(declare-datatypes ((SeekEntryResult!297 0))(
  ( (MissingZero!297 (index!3356 (_ BitVec 32))) (Found!297 (index!3357 (_ BitVec 32))) (Intermediate!297 (undefined!1109 Bool) (index!3358 (_ BitVec 32)) (x!17335 (_ BitVec 32))) (Undefined!297) (MissingVacant!297 (index!3359 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5526 (_ BitVec 32)) SeekEntryResult!297)

(assert (=> b!157364 (= res!74389 (= (seekEntryOrOpen!0 (select (arr!2620 (_keys!4946 thiss!1248)) #b00000000000000000000000000000000) (_keys!4946 thiss!1248) (mask!7648 thiss!1248)) (Found!297 #b00000000000000000000000000000000)))))

(assert (=> b!157364 (=> (not res!74389) (not e!103047))))

(declare-fun b!157365 () Bool)

(declare-fun call!17216 () Bool)

(assert (=> b!157365 (= e!103047 call!17216)))

(declare-fun d!50965 () Bool)

(declare-fun res!74388 () Bool)

(declare-fun e!103049 () Bool)

(assert (=> d!50965 (=> res!74388 e!103049)))

(assert (=> d!50965 (= res!74388 (bvsge #b00000000000000000000000000000000 (size!2898 (_keys!4946 thiss!1248))))))

(assert (=> d!50965 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4946 thiss!1248) (mask!7648 thiss!1248)) e!103049)))

(declare-fun bm!17213 () Bool)

(assert (=> bm!17213 (= call!17216 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!4946 thiss!1248) (mask!7648 thiss!1248)))))

(declare-fun b!157366 () Bool)

(assert (=> b!157366 (= e!103048 call!17216)))

(declare-fun b!157367 () Bool)

(assert (=> b!157367 (= e!103049 e!103048)))

(declare-fun c!29676 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!157367 (= c!29676 (validKeyInArray!0 (select (arr!2620 (_keys!4946 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!50965 (not res!74388)) b!157367))

(assert (= (and b!157367 c!29676) b!157364))

(assert (= (and b!157367 (not c!29676)) b!157366))

(assert (= (and b!157364 res!74389) b!157365))

(assert (= (or b!157365 b!157366) bm!17213))

(declare-fun m!190631 () Bool)

(assert (=> b!157364 m!190631))

(declare-fun m!190633 () Bool)

(assert (=> b!157364 m!190633))

(declare-fun m!190635 () Bool)

(assert (=> b!157364 m!190635))

(assert (=> b!157364 m!190631))

(declare-fun m!190637 () Bool)

(assert (=> b!157364 m!190637))

(declare-fun m!190639 () Bool)

(assert (=> bm!17213 m!190639))

(assert (=> b!157367 m!190631))

(assert (=> b!157367 m!190631))

(declare-fun m!190641 () Bool)

(assert (=> b!157367 m!190641))

(assert (=> b!157334 d!50965))

(declare-fun b!157376 () Bool)

(declare-fun e!103055 () (_ BitVec 32))

(assert (=> b!157376 (= e!103055 #b00000000000000000000000000000000)))

(declare-fun bm!17216 () Bool)

(declare-fun call!17219 () (_ BitVec 32))

(assert (=> bm!17216 (= call!17219 (arrayCountValidKeys!0 (_keys!4946 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!2898 (_keys!4946 thiss!1248))))))

(declare-fun d!50967 () Bool)

(declare-fun lt!81758 () (_ BitVec 32))

(assert (=> d!50967 (and (bvsge lt!81758 #b00000000000000000000000000000000) (bvsle lt!81758 (bvsub (size!2898 (_keys!4946 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!50967 (= lt!81758 e!103055)))

(declare-fun c!29681 () Bool)

(assert (=> d!50967 (= c!29681 (bvsge #b00000000000000000000000000000000 (size!2898 (_keys!4946 thiss!1248))))))

(assert (=> d!50967 (and (bvsle #b00000000000000000000000000000000 (size!2898 (_keys!4946 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!2898 (_keys!4946 thiss!1248)) (size!2898 (_keys!4946 thiss!1248))))))

(assert (=> d!50967 (= (arrayCountValidKeys!0 (_keys!4946 thiss!1248) #b00000000000000000000000000000000 (size!2898 (_keys!4946 thiss!1248))) lt!81758)))

(declare-fun b!157377 () Bool)

(declare-fun e!103054 () (_ BitVec 32))

(assert (=> b!157377 (= e!103054 call!17219)))

(declare-fun b!157378 () Bool)

(assert (=> b!157378 (= e!103055 e!103054)))

(declare-fun c!29682 () Bool)

(assert (=> b!157378 (= c!29682 (validKeyInArray!0 (select (arr!2620 (_keys!4946 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!157379 () Bool)

(assert (=> b!157379 (= e!103054 (bvadd #b00000000000000000000000000000001 call!17219))))

(assert (= (and d!50967 c!29681) b!157376))

(assert (= (and d!50967 (not c!29681)) b!157378))

(assert (= (and b!157378 c!29682) b!157379))

(assert (= (and b!157378 (not c!29682)) b!157377))

(assert (= (or b!157379 b!157377) bm!17216))

(declare-fun m!190643 () Bool)

(assert (=> bm!17216 m!190643))

(assert (=> b!157378 m!190631))

(assert (=> b!157378 m!190631))

(assert (=> b!157378 m!190641))

(assert (=> b!157333 d!50967))

(declare-fun b!157390 () Bool)

(declare-fun e!103064 () Bool)

(declare-fun contains!971 (List!1896 (_ BitVec 64)) Bool)

(assert (=> b!157390 (= e!103064 (contains!971 Nil!1893 (select (arr!2620 (_keys!4946 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!157391 () Bool)

(declare-fun e!103067 () Bool)

(declare-fun e!103065 () Bool)

(assert (=> b!157391 (= e!103067 e!103065)))

(declare-fun c!29685 () Bool)

(assert (=> b!157391 (= c!29685 (validKeyInArray!0 (select (arr!2620 (_keys!4946 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!157392 () Bool)

(declare-fun call!17222 () Bool)

(assert (=> b!157392 (= e!103065 call!17222)))

(declare-fun d!50969 () Bool)

(declare-fun res!74396 () Bool)

(declare-fun e!103066 () Bool)

(assert (=> d!50969 (=> res!74396 e!103066)))

(assert (=> d!50969 (= res!74396 (bvsge #b00000000000000000000000000000000 (size!2898 (_keys!4946 thiss!1248))))))

(assert (=> d!50969 (= (arrayNoDuplicates!0 (_keys!4946 thiss!1248) #b00000000000000000000000000000000 Nil!1893) e!103066)))

(declare-fun bm!17219 () Bool)

(assert (=> bm!17219 (= call!17222 (arrayNoDuplicates!0 (_keys!4946 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!29685 (Cons!1892 (select (arr!2620 (_keys!4946 thiss!1248)) #b00000000000000000000000000000000) Nil!1893) Nil!1893)))))

(declare-fun b!157393 () Bool)

(assert (=> b!157393 (= e!103065 call!17222)))

(declare-fun b!157394 () Bool)

(assert (=> b!157394 (= e!103066 e!103067)))

(declare-fun res!74397 () Bool)

(assert (=> b!157394 (=> (not res!74397) (not e!103067))))

(assert (=> b!157394 (= res!74397 (not e!103064))))

(declare-fun res!74398 () Bool)

(assert (=> b!157394 (=> (not res!74398) (not e!103064))))

(assert (=> b!157394 (= res!74398 (validKeyInArray!0 (select (arr!2620 (_keys!4946 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!50969 (not res!74396)) b!157394))

(assert (= (and b!157394 res!74398) b!157390))

(assert (= (and b!157394 res!74397) b!157391))

(assert (= (and b!157391 c!29685) b!157393))

(assert (= (and b!157391 (not c!29685)) b!157392))

(assert (= (or b!157393 b!157392) bm!17219))

(assert (=> b!157390 m!190631))

(assert (=> b!157390 m!190631))

(declare-fun m!190645 () Bool)

(assert (=> b!157390 m!190645))

(assert (=> b!157391 m!190631))

(assert (=> b!157391 m!190631))

(assert (=> b!157391 m!190641))

(assert (=> bm!17219 m!190631))

(declare-fun m!190647 () Bool)

(assert (=> bm!17219 m!190647))

(assert (=> b!157394 m!190631))

(assert (=> b!157394 m!190631))

(assert (=> b!157394 m!190641))

(assert (=> b!157335 d!50969))

(declare-fun b!157396 () Bool)

(declare-fun e!103069 () Bool)

(assert (=> b!157396 (= e!103069 tp_is_empty!3237)))

(declare-fun mapNonEmpty!5505 () Bool)

(declare-fun mapRes!5505 () Bool)

(declare-fun tp!12840 () Bool)

(declare-fun e!103068 () Bool)

(assert (=> mapNonEmpty!5505 (= mapRes!5505 (and tp!12840 e!103068))))

(declare-fun mapRest!5505 () (Array (_ BitVec 32) ValueCell!1275))

(declare-fun mapKey!5505 () (_ BitVec 32))

(declare-fun mapValue!5505 () ValueCell!1275)

(assert (=> mapNonEmpty!5505 (= mapRest!5504 (store mapRest!5505 mapKey!5505 mapValue!5505))))

(declare-fun b!157395 () Bool)

(assert (=> b!157395 (= e!103068 tp_is_empty!3237)))

(declare-fun condMapEmpty!5505 () Bool)

(declare-fun mapDefault!5505 () ValueCell!1275)

(assert (=> mapNonEmpty!5504 (= condMapEmpty!5505 (= mapRest!5504 ((as const (Array (_ BitVec 32) ValueCell!1275)) mapDefault!5505)))))

(assert (=> mapNonEmpty!5504 (= tp!12839 (and e!103069 mapRes!5505))))

(declare-fun mapIsEmpty!5505 () Bool)

(assert (=> mapIsEmpty!5505 mapRes!5505))

(assert (= (and mapNonEmpty!5504 condMapEmpty!5505) mapIsEmpty!5505))

(assert (= (and mapNonEmpty!5504 (not condMapEmpty!5505)) mapNonEmpty!5505))

(assert (= (and mapNonEmpty!5505 ((_ is ValueCellFull!1275) mapValue!5505)) b!157395))

(assert (= (and mapNonEmpty!5504 ((_ is ValueCellFull!1275) mapDefault!5505)) b!157396))

(declare-fun m!190649 () Bool)

(assert (=> mapNonEmpty!5505 m!190649))

(check-sat (not d!50963) tp_is_empty!3237 (not b!157354) (not b!157367) (not b!157391) b_and!9867 (not b!157378) (not b!157390) (not bm!17219) (not b!157394) (not bm!17213) (not bm!17216) (not mapNonEmpty!5505) (not b!157353) (not b!157364) (not b_next!3435))
(check-sat b_and!9867 (not b_next!3435))
