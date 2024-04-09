; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16986 () Bool)

(assert start!16986)

(declare-fun b!170617 () Bool)

(declare-fun b_free!4221 () Bool)

(declare-fun b_next!4221 () Bool)

(assert (=> b!170617 (= b_free!4221 (not b_next!4221))))

(declare-fun tp!15287 () Bool)

(declare-fun b_and!10653 () Bool)

(assert (=> b!170617 (= tp!15287 b_and!10653)))

(declare-fun b!170614 () Bool)

(declare-fun e!112628 () Bool)

(declare-fun tp_is_empty!3993 () Bool)

(assert (=> b!170614 (= e!112628 tp_is_empty!3993)))

(declare-fun b!170615 () Bool)

(declare-fun e!112629 () Bool)

(assert (=> b!170615 (= e!112629 tp_is_empty!3993)))

(declare-fun res!81117 () Bool)

(declare-fun e!112631 () Bool)

(assert (=> start!16986 (=> (not res!81117) (not e!112631))))

(declare-datatypes ((V!4971 0))(
  ( (V!4972 (val!2041 Int)) )
))
(declare-datatypes ((ValueCell!1653 0))(
  ( (ValueCellFull!1653 (v!3902 V!4971)) (EmptyCell!1653) )
))
(declare-datatypes ((array!7094 0))(
  ( (array!7095 (arr!3376 (Array (_ BitVec 32) (_ BitVec 64))) (size!3669 (_ BitVec 32))) )
))
(declare-datatypes ((array!7096 0))(
  ( (array!7097 (arr!3377 (Array (_ BitVec 32) ValueCell!1653)) (size!3670 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2214 0))(
  ( (LongMapFixedSize!2215 (defaultEntry!3549 Int) (mask!8369 (_ BitVec 32)) (extraKeys!3290 (_ BitVec 32)) (zeroValue!3392 V!4971) (minValue!3392 V!4971) (_size!1156 (_ BitVec 32)) (_keys!5379 array!7094) (_values!3532 array!7096) (_vacant!1156 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2214)

(declare-fun valid!935 (LongMapFixedSize!2214) Bool)

(assert (=> start!16986 (= res!81117 (valid!935 thiss!1248))))

(assert (=> start!16986 e!112631))

(declare-fun e!112630 () Bool)

(assert (=> start!16986 e!112630))

(assert (=> start!16986 true))

(declare-fun mapNonEmpty!6776 () Bool)

(declare-fun mapRes!6776 () Bool)

(declare-fun tp!15286 () Bool)

(assert (=> mapNonEmpty!6776 (= mapRes!6776 (and tp!15286 e!112629))))

(declare-fun mapRest!6776 () (Array (_ BitVec 32) ValueCell!1653))

(declare-fun mapKey!6776 () (_ BitVec 32))

(declare-fun mapValue!6776 () ValueCell!1653)

(assert (=> mapNonEmpty!6776 (= (arr!3377 (_values!3532 thiss!1248)) (store mapRest!6776 mapKey!6776 mapValue!6776))))

(declare-fun b!170616 () Bool)

(declare-fun e!112627 () Bool)

(assert (=> b!170616 (= e!112627 (and e!112628 mapRes!6776))))

(declare-fun condMapEmpty!6776 () Bool)

(declare-fun mapDefault!6776 () ValueCell!1653)

(assert (=> b!170616 (= condMapEmpty!6776 (= (arr!3377 (_values!3532 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1653)) mapDefault!6776)))))

(declare-fun mapIsEmpty!6776 () Bool)

(assert (=> mapIsEmpty!6776 mapRes!6776))

(declare-fun array_inv!2149 (array!7094) Bool)

(declare-fun array_inv!2150 (array!7096) Bool)

(assert (=> b!170617 (= e!112630 (and tp!15287 tp_is_empty!3993 (array_inv!2149 (_keys!5379 thiss!1248)) (array_inv!2150 (_values!3532 thiss!1248)) e!112627))))

(declare-fun b!170618 () Bool)

(declare-fun res!81116 () Bool)

(assert (=> b!170618 (=> (not res!81116) (not e!112631))))

(assert (=> b!170618 (= res!81116 (and (= (size!3670 (_values!3532 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8369 thiss!1248))) (= (size!3669 (_keys!5379 thiss!1248)) (size!3670 (_values!3532 thiss!1248))) (bvsge (mask!8369 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3290 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3290 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!3290 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!3290 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!3290 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!3290 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!3290 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!170619 () Bool)

(declare-fun res!81114 () Bool)

(assert (=> b!170619 (=> (not res!81114) (not e!112631))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!170619 (= res!81114 (validMask!0 (mask!8369 thiss!1248)))))

(declare-fun b!170620 () Bool)

(declare-fun res!81115 () Bool)

(assert (=> b!170620 (=> (not res!81115) (not e!112631))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!170620 (= res!81115 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!170621 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7094 (_ BitVec 32)) Bool)

(assert (=> b!170621 (= e!112631 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5379 thiss!1248) (mask!8369 thiss!1248))))))

(assert (= (and start!16986 res!81117) b!170620))

(assert (= (and b!170620 res!81115) b!170619))

(assert (= (and b!170619 res!81114) b!170618))

(assert (= (and b!170618 res!81116) b!170621))

(assert (= (and b!170616 condMapEmpty!6776) mapIsEmpty!6776))

(assert (= (and b!170616 (not condMapEmpty!6776)) mapNonEmpty!6776))

(get-info :version)

(assert (= (and mapNonEmpty!6776 ((_ is ValueCellFull!1653) mapValue!6776)) b!170615))

(assert (= (and b!170616 ((_ is ValueCellFull!1653) mapDefault!6776)) b!170614))

(assert (= b!170617 b!170616))

(assert (= start!16986 b!170617))

(declare-fun m!199033 () Bool)

(assert (=> mapNonEmpty!6776 m!199033))

(declare-fun m!199035 () Bool)

(assert (=> b!170617 m!199035))

(declare-fun m!199037 () Bool)

(assert (=> b!170617 m!199037))

(declare-fun m!199039 () Bool)

(assert (=> b!170621 m!199039))

(declare-fun m!199041 () Bool)

(assert (=> start!16986 m!199041))

(declare-fun m!199043 () Bool)

(assert (=> b!170619 m!199043))

(check-sat (not mapNonEmpty!6776) tp_is_empty!3993 (not b!170619) (not start!16986) (not b_next!4221) (not b!170621) (not b!170617) b_and!10653)
(check-sat b_and!10653 (not b_next!4221))
(get-model)

(declare-fun d!51657 () Bool)

(assert (=> d!51657 (= (array_inv!2149 (_keys!5379 thiss!1248)) (bvsge (size!3669 (_keys!5379 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!170617 d!51657))

(declare-fun d!51659 () Bool)

(assert (=> d!51659 (= (array_inv!2150 (_values!3532 thiss!1248)) (bvsge (size!3670 (_values!3532 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!170617 d!51659))

(declare-fun d!51661 () Bool)

(assert (=> d!51661 (= (validMask!0 (mask!8369 thiss!1248)) (and (or (= (mask!8369 thiss!1248) #b00000000000000000000000000000111) (= (mask!8369 thiss!1248) #b00000000000000000000000000001111) (= (mask!8369 thiss!1248) #b00000000000000000000000000011111) (= (mask!8369 thiss!1248) #b00000000000000000000000000111111) (= (mask!8369 thiss!1248) #b00000000000000000000000001111111) (= (mask!8369 thiss!1248) #b00000000000000000000000011111111) (= (mask!8369 thiss!1248) #b00000000000000000000000111111111) (= (mask!8369 thiss!1248) #b00000000000000000000001111111111) (= (mask!8369 thiss!1248) #b00000000000000000000011111111111) (= (mask!8369 thiss!1248) #b00000000000000000000111111111111) (= (mask!8369 thiss!1248) #b00000000000000000001111111111111) (= (mask!8369 thiss!1248) #b00000000000000000011111111111111) (= (mask!8369 thiss!1248) #b00000000000000000111111111111111) (= (mask!8369 thiss!1248) #b00000000000000001111111111111111) (= (mask!8369 thiss!1248) #b00000000000000011111111111111111) (= (mask!8369 thiss!1248) #b00000000000000111111111111111111) (= (mask!8369 thiss!1248) #b00000000000001111111111111111111) (= (mask!8369 thiss!1248) #b00000000000011111111111111111111) (= (mask!8369 thiss!1248) #b00000000000111111111111111111111) (= (mask!8369 thiss!1248) #b00000000001111111111111111111111) (= (mask!8369 thiss!1248) #b00000000011111111111111111111111) (= (mask!8369 thiss!1248) #b00000000111111111111111111111111) (= (mask!8369 thiss!1248) #b00000001111111111111111111111111) (= (mask!8369 thiss!1248) #b00000011111111111111111111111111) (= (mask!8369 thiss!1248) #b00000111111111111111111111111111) (= (mask!8369 thiss!1248) #b00001111111111111111111111111111) (= (mask!8369 thiss!1248) #b00011111111111111111111111111111) (= (mask!8369 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8369 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!170619 d!51661))

(declare-fun d!51663 () Bool)

(declare-fun res!81136 () Bool)

(declare-fun e!112652 () Bool)

(assert (=> d!51663 (=> (not res!81136) (not e!112652))))

(declare-fun simpleValid!132 (LongMapFixedSize!2214) Bool)

(assert (=> d!51663 (= res!81136 (simpleValid!132 thiss!1248))))

(assert (=> d!51663 (= (valid!935 thiss!1248) e!112652)))

(declare-fun b!170652 () Bool)

(declare-fun res!81137 () Bool)

(assert (=> b!170652 (=> (not res!81137) (not e!112652))))

(declare-fun arrayCountValidKeys!0 (array!7094 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!170652 (= res!81137 (= (arrayCountValidKeys!0 (_keys!5379 thiss!1248) #b00000000000000000000000000000000 (size!3669 (_keys!5379 thiss!1248))) (_size!1156 thiss!1248)))))

(declare-fun b!170653 () Bool)

(declare-fun res!81138 () Bool)

(assert (=> b!170653 (=> (not res!81138) (not e!112652))))

(assert (=> b!170653 (= res!81138 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5379 thiss!1248) (mask!8369 thiss!1248)))))

(declare-fun b!170654 () Bool)

(declare-datatypes ((List!2209 0))(
  ( (Nil!2206) (Cons!2205 (h!2822 (_ BitVec 64)) (t!7019 List!2209)) )
))
(declare-fun arrayNoDuplicates!0 (array!7094 (_ BitVec 32) List!2209) Bool)

(assert (=> b!170654 (= e!112652 (arrayNoDuplicates!0 (_keys!5379 thiss!1248) #b00000000000000000000000000000000 Nil!2206))))

(assert (= (and d!51663 res!81136) b!170652))

(assert (= (and b!170652 res!81137) b!170653))

(assert (= (and b!170653 res!81138) b!170654))

(declare-fun m!199057 () Bool)

(assert (=> d!51663 m!199057))

(declare-fun m!199059 () Bool)

(assert (=> b!170652 m!199059))

(assert (=> b!170653 m!199039))

(declare-fun m!199061 () Bool)

(assert (=> b!170654 m!199061))

(assert (=> start!16986 d!51663))

(declare-fun b!170663 () Bool)

(declare-fun e!112659 () Bool)

(declare-fun e!112661 () Bool)

(assert (=> b!170663 (= e!112659 e!112661)))

(declare-fun lt!85038 () (_ BitVec 64))

(assert (=> b!170663 (= lt!85038 (select (arr!3376 (_keys!5379 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5243 0))(
  ( (Unit!5244) )
))
(declare-fun lt!85039 () Unit!5243)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7094 (_ BitVec 64) (_ BitVec 32)) Unit!5243)

(assert (=> b!170663 (= lt!85039 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5379 thiss!1248) lt!85038 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7094 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!170663 (arrayContainsKey!0 (_keys!5379 thiss!1248) lt!85038 #b00000000000000000000000000000000)))

(declare-fun lt!85040 () Unit!5243)

(assert (=> b!170663 (= lt!85040 lt!85039)))

(declare-fun res!81144 () Bool)

(declare-datatypes ((SeekEntryResult!542 0))(
  ( (MissingZero!542 (index!4336 (_ BitVec 32))) (Found!542 (index!4337 (_ BitVec 32))) (Intermediate!542 (undefined!1354 Bool) (index!4338 (_ BitVec 32)) (x!18920 (_ BitVec 32))) (Undefined!542) (MissingVacant!542 (index!4339 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7094 (_ BitVec 32)) SeekEntryResult!542)

(assert (=> b!170663 (= res!81144 (= (seekEntryOrOpen!0 (select (arr!3376 (_keys!5379 thiss!1248)) #b00000000000000000000000000000000) (_keys!5379 thiss!1248) (mask!8369 thiss!1248)) (Found!542 #b00000000000000000000000000000000)))))

(assert (=> b!170663 (=> (not res!81144) (not e!112661))))

(declare-fun b!170664 () Bool)

(declare-fun e!112660 () Bool)

(assert (=> b!170664 (= e!112660 e!112659)))

(declare-fun c!30471 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!170664 (= c!30471 (validKeyInArray!0 (select (arr!3376 (_keys!5379 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!170665 () Bool)

(declare-fun call!17381 () Bool)

(assert (=> b!170665 (= e!112659 call!17381)))

(declare-fun d!51665 () Bool)

(declare-fun res!81143 () Bool)

(assert (=> d!51665 (=> res!81143 e!112660)))

(assert (=> d!51665 (= res!81143 (bvsge #b00000000000000000000000000000000 (size!3669 (_keys!5379 thiss!1248))))))

(assert (=> d!51665 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5379 thiss!1248) (mask!8369 thiss!1248)) e!112660)))

(declare-fun bm!17378 () Bool)

(assert (=> bm!17378 (= call!17381 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5379 thiss!1248) (mask!8369 thiss!1248)))))

(declare-fun b!170666 () Bool)

(assert (=> b!170666 (= e!112661 call!17381)))

(assert (= (and d!51665 (not res!81143)) b!170664))

(assert (= (and b!170664 c!30471) b!170663))

(assert (= (and b!170664 (not c!30471)) b!170665))

(assert (= (and b!170663 res!81144) b!170666))

(assert (= (or b!170666 b!170665) bm!17378))

(declare-fun m!199063 () Bool)

(assert (=> b!170663 m!199063))

(declare-fun m!199065 () Bool)

(assert (=> b!170663 m!199065))

(declare-fun m!199067 () Bool)

(assert (=> b!170663 m!199067))

(assert (=> b!170663 m!199063))

(declare-fun m!199069 () Bool)

(assert (=> b!170663 m!199069))

(assert (=> b!170664 m!199063))

(assert (=> b!170664 m!199063))

(declare-fun m!199071 () Bool)

(assert (=> b!170664 m!199071))

(declare-fun m!199073 () Bool)

(assert (=> bm!17378 m!199073))

(assert (=> b!170621 d!51665))

(declare-fun b!170673 () Bool)

(declare-fun e!112667 () Bool)

(assert (=> b!170673 (= e!112667 tp_is_empty!3993)))

(declare-fun mapNonEmpty!6782 () Bool)

(declare-fun mapRes!6782 () Bool)

(declare-fun tp!15296 () Bool)

(assert (=> mapNonEmpty!6782 (= mapRes!6782 (and tp!15296 e!112667))))

(declare-fun mapValue!6782 () ValueCell!1653)

(declare-fun mapRest!6782 () (Array (_ BitVec 32) ValueCell!1653))

(declare-fun mapKey!6782 () (_ BitVec 32))

(assert (=> mapNonEmpty!6782 (= mapRest!6776 (store mapRest!6782 mapKey!6782 mapValue!6782))))

(declare-fun condMapEmpty!6782 () Bool)

(declare-fun mapDefault!6782 () ValueCell!1653)

(assert (=> mapNonEmpty!6776 (= condMapEmpty!6782 (= mapRest!6776 ((as const (Array (_ BitVec 32) ValueCell!1653)) mapDefault!6782)))))

(declare-fun e!112666 () Bool)

(assert (=> mapNonEmpty!6776 (= tp!15286 (and e!112666 mapRes!6782))))

(declare-fun b!170674 () Bool)

(assert (=> b!170674 (= e!112666 tp_is_empty!3993)))

(declare-fun mapIsEmpty!6782 () Bool)

(assert (=> mapIsEmpty!6782 mapRes!6782))

(assert (= (and mapNonEmpty!6776 condMapEmpty!6782) mapIsEmpty!6782))

(assert (= (and mapNonEmpty!6776 (not condMapEmpty!6782)) mapNonEmpty!6782))

(assert (= (and mapNonEmpty!6782 ((_ is ValueCellFull!1653) mapValue!6782)) b!170673))

(assert (= (and mapNonEmpty!6776 ((_ is ValueCellFull!1653) mapDefault!6782)) b!170674))

(declare-fun m!199075 () Bool)

(assert (=> mapNonEmpty!6782 m!199075))

(check-sat tp_is_empty!3993 (not b!170652) b_and!10653 (not bm!17378) (not b!170653) (not mapNonEmpty!6782) (not b_next!4221) (not b!170663) (not b!170654) (not b!170664) (not d!51663))
(check-sat b_and!10653 (not b_next!4221))
