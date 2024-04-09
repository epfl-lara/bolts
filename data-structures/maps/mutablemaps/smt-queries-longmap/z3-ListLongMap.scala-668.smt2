; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16512 () Bool)

(assert start!16512)

(declare-fun b!164048 () Bool)

(declare-fun b_free!3819 () Bool)

(declare-fun b_next!3819 () Bool)

(assert (=> b!164048 (= b_free!3819 (not b_next!3819))))

(declare-fun tp!14055 () Bool)

(declare-fun b_and!10251 () Bool)

(assert (=> b!164048 (= tp!14055 b_and!10251)))

(declare-fun mapIsEmpty!6147 () Bool)

(declare-fun mapRes!6147 () Bool)

(assert (=> mapIsEmpty!6147 mapRes!6147))

(declare-fun mapNonEmpty!6147 () Bool)

(declare-fun tp!14054 () Bool)

(declare-fun e!107644 () Bool)

(assert (=> mapNonEmpty!6147 (= mapRes!6147 (and tp!14054 e!107644))))

(declare-datatypes ((V!4475 0))(
  ( (V!4476 (val!1855 Int)) )
))
(declare-datatypes ((ValueCell!1467 0))(
  ( (ValueCellFull!1467 (v!3716 V!4475)) (EmptyCell!1467) )
))
(declare-fun mapValue!6147 () ValueCell!1467)

(declare-fun mapKey!6147 () (_ BitVec 32))

(declare-datatypes ((array!6336 0))(
  ( (array!6337 (arr!3004 (Array (_ BitVec 32) (_ BitVec 64))) (size!3292 (_ BitVec 32))) )
))
(declare-datatypes ((array!6338 0))(
  ( (array!6339 (arr!3005 (Array (_ BitVec 32) ValueCell!1467)) (size!3293 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1842 0))(
  ( (LongMapFixedSize!1843 (defaultEntry!3363 Int) (mask!8045 (_ BitVec 32)) (extraKeys!3104 (_ BitVec 32)) (zeroValue!3206 V!4475) (minValue!3206 V!4475) (_size!970 (_ BitVec 32)) (_keys!5186 array!6336) (_values!3346 array!6338) (_vacant!970 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1842)

(declare-fun mapRest!6147 () (Array (_ BitVec 32) ValueCell!1467))

(assert (=> mapNonEmpty!6147 (= (arr!3005 (_values!3346 thiss!1248)) (store mapRest!6147 mapKey!6147 mapValue!6147))))

(declare-fun b!164045 () Bool)

(declare-fun tp_is_empty!3621 () Bool)

(assert (=> b!164045 (= e!107644 tp_is_empty!3621)))

(declare-fun b!164046 () Bool)

(declare-fun e!107648 () Bool)

(assert (=> b!164046 (= e!107648 (bvsgt #b00000000000000000000000000000000 (size!3292 (_keys!5186 thiss!1248))))))

(declare-fun b!164047 () Bool)

(declare-fun res!77640 () Bool)

(declare-fun e!107645 () Bool)

(assert (=> b!164047 (=> (not res!77640) (not e!107645))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!164047 (= res!77640 (not (= key!828 (bvneg key!828))))))

(declare-fun e!107647 () Bool)

(declare-fun e!107649 () Bool)

(declare-fun array_inv!1913 (array!6336) Bool)

(declare-fun array_inv!1914 (array!6338) Bool)

(assert (=> b!164048 (= e!107649 (and tp!14055 tp_is_empty!3621 (array_inv!1913 (_keys!5186 thiss!1248)) (array_inv!1914 (_values!3346 thiss!1248)) e!107647))))

(declare-fun b!164049 () Bool)

(declare-fun res!77644 () Bool)

(assert (=> b!164049 (=> (not res!77644) (not e!107648))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!164049 (= res!77644 (validMask!0 (mask!8045 thiss!1248)))))

(declare-fun b!164050 () Bool)

(declare-fun res!77641 () Bool)

(assert (=> b!164050 (=> (not res!77641) (not e!107648))))

(declare-datatypes ((List!2016 0))(
  ( (Nil!2013) (Cons!2012 (h!2629 (_ BitVec 64)) (t!6826 List!2016)) )
))
(declare-fun arrayNoDuplicates!0 (array!6336 (_ BitVec 32) List!2016) Bool)

(assert (=> b!164050 (= res!77641 (arrayNoDuplicates!0 (_keys!5186 thiss!1248) #b00000000000000000000000000000000 Nil!2013))))

(declare-fun b!164051 () Bool)

(declare-fun res!77646 () Bool)

(assert (=> b!164051 (=> (not res!77646) (not e!107648))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6336 (_ BitVec 32)) Bool)

(assert (=> b!164051 (= res!77646 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5186 thiss!1248) (mask!8045 thiss!1248)))))

(declare-fun b!164052 () Bool)

(declare-fun res!77645 () Bool)

(assert (=> b!164052 (=> (not res!77645) (not e!107648))))

(assert (=> b!164052 (= res!77645 (and (= (size!3293 (_values!3346 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8045 thiss!1248))) (= (size!3292 (_keys!5186 thiss!1248)) (size!3293 (_values!3346 thiss!1248))) (bvsge (mask!8045 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3104 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3104 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!164053 () Bool)

(declare-fun e!107646 () Bool)

(assert (=> b!164053 (= e!107646 tp_is_empty!3621)))

(declare-fun b!164054 () Bool)

(assert (=> b!164054 (= e!107647 (and e!107646 mapRes!6147))))

(declare-fun condMapEmpty!6147 () Bool)

(declare-fun mapDefault!6147 () ValueCell!1467)

(assert (=> b!164054 (= condMapEmpty!6147 (= (arr!3005 (_values!3346 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1467)) mapDefault!6147)))))

(declare-fun res!77643 () Bool)

(assert (=> start!16512 (=> (not res!77643) (not e!107645))))

(declare-fun valid!814 (LongMapFixedSize!1842) Bool)

(assert (=> start!16512 (= res!77643 (valid!814 thiss!1248))))

(assert (=> start!16512 e!107645))

(assert (=> start!16512 e!107649))

(assert (=> start!16512 true))

(declare-fun b!164044 () Bool)

(assert (=> b!164044 (= e!107645 e!107648)))

(declare-fun res!77642 () Bool)

(assert (=> b!164044 (=> (not res!77642) (not e!107648))))

(declare-datatypes ((SeekEntryResult!420 0))(
  ( (MissingZero!420 (index!3848 (_ BitVec 32))) (Found!420 (index!3849 (_ BitVec 32))) (Intermediate!420 (undefined!1232 Bool) (index!3850 (_ BitVec 32)) (x!18208 (_ BitVec 32))) (Undefined!420) (MissingVacant!420 (index!3851 (_ BitVec 32))) )
))
(declare-fun lt!82844 () SeekEntryResult!420)

(get-info :version)

(assert (=> b!164044 (= res!77642 (and (not ((_ is Undefined!420) lt!82844)) (not ((_ is MissingVacant!420) lt!82844)) (not ((_ is MissingZero!420) lt!82844)) ((_ is Found!420) lt!82844)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6336 (_ BitVec 32)) SeekEntryResult!420)

(assert (=> b!164044 (= lt!82844 (seekEntryOrOpen!0 key!828 (_keys!5186 thiss!1248) (mask!8045 thiss!1248)))))

(assert (= (and start!16512 res!77643) b!164047))

(assert (= (and b!164047 res!77640) b!164044))

(assert (= (and b!164044 res!77642) b!164049))

(assert (= (and b!164049 res!77644) b!164052))

(assert (= (and b!164052 res!77645) b!164051))

(assert (= (and b!164051 res!77646) b!164050))

(assert (= (and b!164050 res!77641) b!164046))

(assert (= (and b!164054 condMapEmpty!6147) mapIsEmpty!6147))

(assert (= (and b!164054 (not condMapEmpty!6147)) mapNonEmpty!6147))

(assert (= (and mapNonEmpty!6147 ((_ is ValueCellFull!1467) mapValue!6147)) b!164045))

(assert (= (and b!164054 ((_ is ValueCellFull!1467) mapDefault!6147)) b!164053))

(assert (= b!164048 b!164054))

(assert (= start!16512 b!164048))

(declare-fun m!194421 () Bool)

(assert (=> b!164051 m!194421))

(declare-fun m!194423 () Bool)

(assert (=> mapNonEmpty!6147 m!194423))

(declare-fun m!194425 () Bool)

(assert (=> b!164044 m!194425))

(declare-fun m!194427 () Bool)

(assert (=> b!164049 m!194427))

(declare-fun m!194429 () Bool)

(assert (=> b!164050 m!194429))

(declare-fun m!194431 () Bool)

(assert (=> start!16512 m!194431))

(declare-fun m!194433 () Bool)

(assert (=> b!164048 m!194433))

(declare-fun m!194435 () Bool)

(assert (=> b!164048 m!194435))

(check-sat (not b!164051) (not start!16512) (not b_next!3819) (not b!164050) (not mapNonEmpty!6147) (not b!164044) tp_is_empty!3621 (not b!164049) b_and!10251 (not b!164048))
(check-sat b_and!10251 (not b_next!3819))
(get-model)

(declare-fun d!51431 () Bool)

(declare-fun res!77674 () Bool)

(declare-fun e!107674 () Bool)

(assert (=> d!51431 (=> (not res!77674) (not e!107674))))

(declare-fun simpleValid!125 (LongMapFixedSize!1842) Bool)

(assert (=> d!51431 (= res!77674 (simpleValid!125 thiss!1248))))

(assert (=> d!51431 (= (valid!814 thiss!1248) e!107674)))

(declare-fun b!164094 () Bool)

(declare-fun res!77675 () Bool)

(assert (=> b!164094 (=> (not res!77675) (not e!107674))))

(declare-fun arrayCountValidKeys!0 (array!6336 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!164094 (= res!77675 (= (arrayCountValidKeys!0 (_keys!5186 thiss!1248) #b00000000000000000000000000000000 (size!3292 (_keys!5186 thiss!1248))) (_size!970 thiss!1248)))))

(declare-fun b!164095 () Bool)

(declare-fun res!77676 () Bool)

(assert (=> b!164095 (=> (not res!77676) (not e!107674))))

(assert (=> b!164095 (= res!77676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5186 thiss!1248) (mask!8045 thiss!1248)))))

(declare-fun b!164096 () Bool)

(assert (=> b!164096 (= e!107674 (arrayNoDuplicates!0 (_keys!5186 thiss!1248) #b00000000000000000000000000000000 Nil!2013))))

(assert (= (and d!51431 res!77674) b!164094))

(assert (= (and b!164094 res!77675) b!164095))

(assert (= (and b!164095 res!77676) b!164096))

(declare-fun m!194453 () Bool)

(assert (=> d!51431 m!194453))

(declare-fun m!194455 () Bool)

(assert (=> b!164094 m!194455))

(assert (=> b!164095 m!194421))

(assert (=> b!164096 m!194429))

(assert (=> start!16512 d!51431))

(declare-fun d!51433 () Bool)

(declare-fun res!77681 () Bool)

(declare-fun e!107682 () Bool)

(assert (=> d!51433 (=> res!77681 e!107682)))

(assert (=> d!51433 (= res!77681 (bvsge #b00000000000000000000000000000000 (size!3292 (_keys!5186 thiss!1248))))))

(assert (=> d!51433 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5186 thiss!1248) (mask!8045 thiss!1248)) e!107682)))

(declare-fun b!164105 () Bool)

(declare-fun e!107683 () Bool)

(declare-fun e!107681 () Bool)

(assert (=> b!164105 (= e!107683 e!107681)))

(declare-fun lt!82854 () (_ BitVec 64))

(assert (=> b!164105 (= lt!82854 (select (arr!3004 (_keys!5186 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5044 0))(
  ( (Unit!5045) )
))
(declare-fun lt!82855 () Unit!5044)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!6336 (_ BitVec 64) (_ BitVec 32)) Unit!5044)

(assert (=> b!164105 (= lt!82855 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5186 thiss!1248) lt!82854 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!6336 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!164105 (arrayContainsKey!0 (_keys!5186 thiss!1248) lt!82854 #b00000000000000000000000000000000)))

(declare-fun lt!82856 () Unit!5044)

(assert (=> b!164105 (= lt!82856 lt!82855)))

(declare-fun res!77682 () Bool)

(assert (=> b!164105 (= res!77682 (= (seekEntryOrOpen!0 (select (arr!3004 (_keys!5186 thiss!1248)) #b00000000000000000000000000000000) (_keys!5186 thiss!1248) (mask!8045 thiss!1248)) (Found!420 #b00000000000000000000000000000000)))))

(assert (=> b!164105 (=> (not res!77682) (not e!107681))))

(declare-fun b!164106 () Bool)

(declare-fun call!17330 () Bool)

(assert (=> b!164106 (= e!107683 call!17330)))

(declare-fun b!164107 () Bool)

(assert (=> b!164107 (= e!107682 e!107683)))

(declare-fun c!30162 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!164107 (= c!30162 (validKeyInArray!0 (select (arr!3004 (_keys!5186 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17327 () Bool)

(assert (=> bm!17327 (= call!17330 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5186 thiss!1248) (mask!8045 thiss!1248)))))

(declare-fun b!164108 () Bool)

(assert (=> b!164108 (= e!107681 call!17330)))

(assert (= (and d!51433 (not res!77681)) b!164107))

(assert (= (and b!164107 c!30162) b!164105))

(assert (= (and b!164107 (not c!30162)) b!164106))

(assert (= (and b!164105 res!77682) b!164108))

(assert (= (or b!164108 b!164106) bm!17327))

(declare-fun m!194457 () Bool)

(assert (=> b!164105 m!194457))

(declare-fun m!194459 () Bool)

(assert (=> b!164105 m!194459))

(declare-fun m!194461 () Bool)

(assert (=> b!164105 m!194461))

(assert (=> b!164105 m!194457))

(declare-fun m!194463 () Bool)

(assert (=> b!164105 m!194463))

(assert (=> b!164107 m!194457))

(assert (=> b!164107 m!194457))

(declare-fun m!194465 () Bool)

(assert (=> b!164107 m!194465))

(declare-fun m!194467 () Bool)

(assert (=> bm!17327 m!194467))

(assert (=> b!164051 d!51433))

(declare-fun b!164119 () Bool)

(declare-fun e!107695 () Bool)

(declare-fun call!17333 () Bool)

(assert (=> b!164119 (= e!107695 call!17333)))

(declare-fun bm!17330 () Bool)

(declare-fun c!30165 () Bool)

(assert (=> bm!17330 (= call!17333 (arrayNoDuplicates!0 (_keys!5186 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30165 (Cons!2012 (select (arr!3004 (_keys!5186 thiss!1248)) #b00000000000000000000000000000000) Nil!2013) Nil!2013)))))

(declare-fun d!51435 () Bool)

(declare-fun res!77690 () Bool)

(declare-fun e!107693 () Bool)

(assert (=> d!51435 (=> res!77690 e!107693)))

(assert (=> d!51435 (= res!77690 (bvsge #b00000000000000000000000000000000 (size!3292 (_keys!5186 thiss!1248))))))

(assert (=> d!51435 (= (arrayNoDuplicates!0 (_keys!5186 thiss!1248) #b00000000000000000000000000000000 Nil!2013) e!107693)))

(declare-fun b!164120 () Bool)

(declare-fun e!107692 () Bool)

(assert (=> b!164120 (= e!107693 e!107692)))

(declare-fun res!77691 () Bool)

(assert (=> b!164120 (=> (not res!77691) (not e!107692))))

(declare-fun e!107694 () Bool)

(assert (=> b!164120 (= res!77691 (not e!107694))))

(declare-fun res!77689 () Bool)

(assert (=> b!164120 (=> (not res!77689) (not e!107694))))

(assert (=> b!164120 (= res!77689 (validKeyInArray!0 (select (arr!3004 (_keys!5186 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!164121 () Bool)

(assert (=> b!164121 (= e!107692 e!107695)))

(assert (=> b!164121 (= c!30165 (validKeyInArray!0 (select (arr!3004 (_keys!5186 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!164122 () Bool)

(assert (=> b!164122 (= e!107695 call!17333)))

(declare-fun b!164123 () Bool)

(declare-fun contains!1040 (List!2016 (_ BitVec 64)) Bool)

(assert (=> b!164123 (= e!107694 (contains!1040 Nil!2013 (select (arr!3004 (_keys!5186 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!51435 (not res!77690)) b!164120))

(assert (= (and b!164120 res!77689) b!164123))

(assert (= (and b!164120 res!77691) b!164121))

(assert (= (and b!164121 c!30165) b!164119))

(assert (= (and b!164121 (not c!30165)) b!164122))

(assert (= (or b!164119 b!164122) bm!17330))

(assert (=> bm!17330 m!194457))

(declare-fun m!194469 () Bool)

(assert (=> bm!17330 m!194469))

(assert (=> b!164120 m!194457))

(assert (=> b!164120 m!194457))

(assert (=> b!164120 m!194465))

(assert (=> b!164121 m!194457))

(assert (=> b!164121 m!194457))

(assert (=> b!164121 m!194465))

(assert (=> b!164123 m!194457))

(assert (=> b!164123 m!194457))

(declare-fun m!194471 () Bool)

(assert (=> b!164123 m!194471))

(assert (=> b!164050 d!51435))

(declare-fun d!51437 () Bool)

(assert (=> d!51437 (= (validMask!0 (mask!8045 thiss!1248)) (and (or (= (mask!8045 thiss!1248) #b00000000000000000000000000000111) (= (mask!8045 thiss!1248) #b00000000000000000000000000001111) (= (mask!8045 thiss!1248) #b00000000000000000000000000011111) (= (mask!8045 thiss!1248) #b00000000000000000000000000111111) (= (mask!8045 thiss!1248) #b00000000000000000000000001111111) (= (mask!8045 thiss!1248) #b00000000000000000000000011111111) (= (mask!8045 thiss!1248) #b00000000000000000000000111111111) (= (mask!8045 thiss!1248) #b00000000000000000000001111111111) (= (mask!8045 thiss!1248) #b00000000000000000000011111111111) (= (mask!8045 thiss!1248) #b00000000000000000000111111111111) (= (mask!8045 thiss!1248) #b00000000000000000001111111111111) (= (mask!8045 thiss!1248) #b00000000000000000011111111111111) (= (mask!8045 thiss!1248) #b00000000000000000111111111111111) (= (mask!8045 thiss!1248) #b00000000000000001111111111111111) (= (mask!8045 thiss!1248) #b00000000000000011111111111111111) (= (mask!8045 thiss!1248) #b00000000000000111111111111111111) (= (mask!8045 thiss!1248) #b00000000000001111111111111111111) (= (mask!8045 thiss!1248) #b00000000000011111111111111111111) (= (mask!8045 thiss!1248) #b00000000000111111111111111111111) (= (mask!8045 thiss!1248) #b00000000001111111111111111111111) (= (mask!8045 thiss!1248) #b00000000011111111111111111111111) (= (mask!8045 thiss!1248) #b00000000111111111111111111111111) (= (mask!8045 thiss!1248) #b00000001111111111111111111111111) (= (mask!8045 thiss!1248) #b00000011111111111111111111111111) (= (mask!8045 thiss!1248) #b00000111111111111111111111111111) (= (mask!8045 thiss!1248) #b00001111111111111111111111111111) (= (mask!8045 thiss!1248) #b00011111111111111111111111111111) (= (mask!8045 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8045 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!164049 d!51437))

(declare-fun d!51439 () Bool)

(assert (=> d!51439 (= (array_inv!1913 (_keys!5186 thiss!1248)) (bvsge (size!3292 (_keys!5186 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!164048 d!51439))

(declare-fun d!51441 () Bool)

(assert (=> d!51441 (= (array_inv!1914 (_values!3346 thiss!1248)) (bvsge (size!3293 (_values!3346 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!164048 d!51441))

(declare-fun d!51443 () Bool)

(declare-fun lt!82863 () SeekEntryResult!420)

(assert (=> d!51443 (and (or ((_ is Undefined!420) lt!82863) (not ((_ is Found!420) lt!82863)) (and (bvsge (index!3849 lt!82863) #b00000000000000000000000000000000) (bvslt (index!3849 lt!82863) (size!3292 (_keys!5186 thiss!1248))))) (or ((_ is Undefined!420) lt!82863) ((_ is Found!420) lt!82863) (not ((_ is MissingZero!420) lt!82863)) (and (bvsge (index!3848 lt!82863) #b00000000000000000000000000000000) (bvslt (index!3848 lt!82863) (size!3292 (_keys!5186 thiss!1248))))) (or ((_ is Undefined!420) lt!82863) ((_ is Found!420) lt!82863) ((_ is MissingZero!420) lt!82863) (not ((_ is MissingVacant!420) lt!82863)) (and (bvsge (index!3851 lt!82863) #b00000000000000000000000000000000) (bvslt (index!3851 lt!82863) (size!3292 (_keys!5186 thiss!1248))))) (or ((_ is Undefined!420) lt!82863) (ite ((_ is Found!420) lt!82863) (= (select (arr!3004 (_keys!5186 thiss!1248)) (index!3849 lt!82863)) key!828) (ite ((_ is MissingZero!420) lt!82863) (= (select (arr!3004 (_keys!5186 thiss!1248)) (index!3848 lt!82863)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!420) lt!82863) (= (select (arr!3004 (_keys!5186 thiss!1248)) (index!3851 lt!82863)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!107704 () SeekEntryResult!420)

(assert (=> d!51443 (= lt!82863 e!107704)))

(declare-fun c!30174 () Bool)

(declare-fun lt!82864 () SeekEntryResult!420)

(assert (=> d!51443 (= c!30174 (and ((_ is Intermediate!420) lt!82864) (undefined!1232 lt!82864)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!6336 (_ BitVec 32)) SeekEntryResult!420)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!51443 (= lt!82864 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8045 thiss!1248)) key!828 (_keys!5186 thiss!1248) (mask!8045 thiss!1248)))))

(assert (=> d!51443 (validMask!0 (mask!8045 thiss!1248))))

(assert (=> d!51443 (= (seekEntryOrOpen!0 key!828 (_keys!5186 thiss!1248) (mask!8045 thiss!1248)) lt!82863)))

(declare-fun b!164136 () Bool)

(declare-fun e!107703 () SeekEntryResult!420)

(assert (=> b!164136 (= e!107703 (Found!420 (index!3850 lt!82864)))))

(declare-fun b!164137 () Bool)

(declare-fun c!30172 () Bool)

(declare-fun lt!82865 () (_ BitVec 64))

(assert (=> b!164137 (= c!30172 (= lt!82865 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!107702 () SeekEntryResult!420)

(assert (=> b!164137 (= e!107703 e!107702)))

(declare-fun b!164138 () Bool)

(assert (=> b!164138 (= e!107702 (MissingZero!420 (index!3850 lt!82864)))))

(declare-fun b!164139 () Bool)

(assert (=> b!164139 (= e!107704 e!107703)))

(assert (=> b!164139 (= lt!82865 (select (arr!3004 (_keys!5186 thiss!1248)) (index!3850 lt!82864)))))

(declare-fun c!30173 () Bool)

(assert (=> b!164139 (= c!30173 (= lt!82865 key!828))))

(declare-fun b!164140 () Bool)

(assert (=> b!164140 (= e!107704 Undefined!420)))

(declare-fun b!164141 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!6336 (_ BitVec 32)) SeekEntryResult!420)

(assert (=> b!164141 (= e!107702 (seekKeyOrZeroReturnVacant!0 (x!18208 lt!82864) (index!3850 lt!82864) (index!3850 lt!82864) key!828 (_keys!5186 thiss!1248) (mask!8045 thiss!1248)))))

(assert (= (and d!51443 c!30174) b!164140))

(assert (= (and d!51443 (not c!30174)) b!164139))

(assert (= (and b!164139 c!30173) b!164136))

(assert (= (and b!164139 (not c!30173)) b!164137))

(assert (= (and b!164137 c!30172) b!164138))

(assert (= (and b!164137 (not c!30172)) b!164141))

(assert (=> d!51443 m!194427))

(declare-fun m!194473 () Bool)

(assert (=> d!51443 m!194473))

(declare-fun m!194475 () Bool)

(assert (=> d!51443 m!194475))

(declare-fun m!194477 () Bool)

(assert (=> d!51443 m!194477))

(declare-fun m!194479 () Bool)

(assert (=> d!51443 m!194479))

(declare-fun m!194481 () Bool)

(assert (=> d!51443 m!194481))

(assert (=> d!51443 m!194475))

(declare-fun m!194483 () Bool)

(assert (=> b!164139 m!194483))

(declare-fun m!194485 () Bool)

(assert (=> b!164141 m!194485))

(assert (=> b!164044 d!51443))

(declare-fun b!164148 () Bool)

(declare-fun e!107710 () Bool)

(assert (=> b!164148 (= e!107710 tp_is_empty!3621)))

(declare-fun mapNonEmpty!6153 () Bool)

(declare-fun mapRes!6153 () Bool)

(declare-fun tp!14064 () Bool)

(assert (=> mapNonEmpty!6153 (= mapRes!6153 (and tp!14064 e!107710))))

(declare-fun mapValue!6153 () ValueCell!1467)

(declare-fun mapRest!6153 () (Array (_ BitVec 32) ValueCell!1467))

(declare-fun mapKey!6153 () (_ BitVec 32))

(assert (=> mapNonEmpty!6153 (= mapRest!6147 (store mapRest!6153 mapKey!6153 mapValue!6153))))

(declare-fun b!164149 () Bool)

(declare-fun e!107709 () Bool)

(assert (=> b!164149 (= e!107709 tp_is_empty!3621)))

(declare-fun mapIsEmpty!6153 () Bool)

(assert (=> mapIsEmpty!6153 mapRes!6153))

(declare-fun condMapEmpty!6153 () Bool)

(declare-fun mapDefault!6153 () ValueCell!1467)

(assert (=> mapNonEmpty!6147 (= condMapEmpty!6153 (= mapRest!6147 ((as const (Array (_ BitVec 32) ValueCell!1467)) mapDefault!6153)))))

(assert (=> mapNonEmpty!6147 (= tp!14054 (and e!107709 mapRes!6153))))

(assert (= (and mapNonEmpty!6147 condMapEmpty!6153) mapIsEmpty!6153))

(assert (= (and mapNonEmpty!6147 (not condMapEmpty!6153)) mapNonEmpty!6153))

(assert (= (and mapNonEmpty!6153 ((_ is ValueCellFull!1467) mapValue!6153)) b!164148))

(assert (= (and mapNonEmpty!6147 ((_ is ValueCellFull!1467) mapDefault!6153)) b!164149))

(declare-fun m!194487 () Bool)

(assert (=> mapNonEmpty!6153 m!194487))

(check-sat (not b!164105) (not d!51431) (not b!164123) (not b!164095) (not bm!17330) (not b!164120) (not b!164107) (not b!164141) (not b_next!3819) (not b!164121) (not b!164096) (not b!164094) (not d!51443) (not bm!17327) tp_is_empty!3621 b_and!10251 (not mapNonEmpty!6153))
(check-sat b_and!10251 (not b_next!3819))
