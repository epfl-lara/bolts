; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17196 () Bool)

(assert start!17196)

(declare-fun b!172497 () Bool)

(declare-fun b_free!4263 () Bool)

(declare-fun b_next!4263 () Bool)

(assert (=> b!172497 (= b_free!4263 (not b_next!4263))))

(declare-fun tp!15439 () Bool)

(declare-fun b_and!10721 () Bool)

(assert (=> b!172497 (= tp!15439 b_and!10721)))

(declare-fun b!172496 () Bool)

(declare-fun e!113884 () Bool)

(declare-fun tp_is_empty!4035 () Bool)

(assert (=> b!172496 (= e!113884 tp_is_empty!4035)))

(declare-fun e!113889 () Bool)

(declare-datatypes ((V!5027 0))(
  ( (V!5028 (val!2062 Int)) )
))
(declare-datatypes ((ValueCell!1674 0))(
  ( (ValueCellFull!1674 (v!3926 V!5027)) (EmptyCell!1674) )
))
(declare-datatypes ((array!7192 0))(
  ( (array!7193 (arr!3418 (Array (_ BitVec 32) (_ BitVec 64))) (size!3715 (_ BitVec 32))) )
))
(declare-datatypes ((array!7194 0))(
  ( (array!7195 (arr!3419 (Array (_ BitVec 32) ValueCell!1674)) (size!3716 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2256 0))(
  ( (LongMapFixedSize!2257 (defaultEntry!3574 Int) (mask!8422 (_ BitVec 32)) (extraKeys!3313 (_ BitVec 32)) (zeroValue!3415 V!5027) (minValue!3417 V!5027) (_size!1177 (_ BitVec 32)) (_keys!5411 array!7192) (_values!3557 array!7194) (_vacant!1177 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2256)

(declare-fun e!113886 () Bool)

(declare-fun array_inv!2179 (array!7192) Bool)

(declare-fun array_inv!2180 (array!7194) Bool)

(assert (=> b!172497 (= e!113886 (and tp!15439 tp_is_empty!4035 (array_inv!2179 (_keys!5411 thiss!1248)) (array_inv!2180 (_values!3557 thiss!1248)) e!113889))))

(declare-fun res!81919 () Bool)

(declare-fun e!113885 () Bool)

(assert (=> start!17196 (=> (not res!81919) (not e!113885))))

(declare-fun valid!949 (LongMapFixedSize!2256) Bool)

(assert (=> start!17196 (= res!81919 (valid!949 thiss!1248))))

(assert (=> start!17196 e!113885))

(assert (=> start!17196 e!113886))

(assert (=> start!17196 true))

(declare-fun b!172498 () Bool)

(declare-fun e!113887 () Bool)

(assert (=> b!172498 (= e!113887 tp_is_empty!4035)))

(declare-fun mapNonEmpty!6865 () Bool)

(declare-fun mapRes!6865 () Bool)

(declare-fun tp!15438 () Bool)

(assert (=> mapNonEmpty!6865 (= mapRes!6865 (and tp!15438 e!113884))))

(declare-fun mapValue!6865 () ValueCell!1674)

(declare-fun mapRest!6865 () (Array (_ BitVec 32) ValueCell!1674))

(declare-fun mapKey!6865 () (_ BitVec 32))

(assert (=> mapNonEmpty!6865 (= (arr!3419 (_values!3557 thiss!1248)) (store mapRest!6865 mapKey!6865 mapValue!6865))))

(declare-fun b!172499 () Bool)

(declare-fun res!81920 () Bool)

(assert (=> b!172499 (=> (not res!81920) (not e!113885))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!172499 (= res!81920 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!6865 () Bool)

(assert (=> mapIsEmpty!6865 mapRes!6865))

(declare-fun b!172500 () Bool)

(assert (=> b!172500 (= e!113889 (and e!113887 mapRes!6865))))

(declare-fun condMapEmpty!6865 () Bool)

(declare-fun mapDefault!6865 () ValueCell!1674)

(assert (=> b!172500 (= condMapEmpty!6865 (= (arr!3419 (_values!3557 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1674)) mapDefault!6865)))))

(declare-fun b!172501 () Bool)

(declare-fun res!81921 () Bool)

(assert (=> b!172501 (=> (not res!81921) (not e!113885))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!172501 (= res!81921 (validMask!0 (mask!8422 thiss!1248)))))

(declare-fun b!172502 () Bool)

(assert (=> b!172502 (= e!113885 (and (= (size!3716 (_values!3557 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8422 thiss!1248))) (= (size!3715 (_keys!5411 thiss!1248)) (size!3716 (_values!3557 thiss!1248))) (bvsge (mask!8422 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3313 thiss!1248) #b00000000000000000000000000000000)))))

(assert (= (and start!17196 res!81919) b!172499))

(assert (= (and b!172499 res!81920) b!172501))

(assert (= (and b!172501 res!81921) b!172502))

(assert (= (and b!172500 condMapEmpty!6865) mapIsEmpty!6865))

(assert (= (and b!172500 (not condMapEmpty!6865)) mapNonEmpty!6865))

(get-info :version)

(assert (= (and mapNonEmpty!6865 ((_ is ValueCellFull!1674) mapValue!6865)) b!172496))

(assert (= (and b!172500 ((_ is ValueCellFull!1674) mapDefault!6865)) b!172498))

(assert (= b!172497 b!172500))

(assert (= start!17196 b!172497))

(declare-fun m!201257 () Bool)

(assert (=> b!172497 m!201257))

(declare-fun m!201259 () Bool)

(assert (=> b!172497 m!201259))

(declare-fun m!201261 () Bool)

(assert (=> start!17196 m!201261))

(declare-fun m!201263 () Bool)

(assert (=> mapNonEmpty!6865 m!201263))

(declare-fun m!201265 () Bool)

(assert (=> b!172501 m!201265))

(check-sat (not b!172501) (not start!17196) (not b_next!4263) (not mapNonEmpty!6865) tp_is_empty!4035 (not b!172497) b_and!10721)
(check-sat b_and!10721 (not b_next!4263))
(get-model)

(declare-fun d!52435 () Bool)

(assert (=> d!52435 (= (validMask!0 (mask!8422 thiss!1248)) (and (or (= (mask!8422 thiss!1248) #b00000000000000000000000000000111) (= (mask!8422 thiss!1248) #b00000000000000000000000000001111) (= (mask!8422 thiss!1248) #b00000000000000000000000000011111) (= (mask!8422 thiss!1248) #b00000000000000000000000000111111) (= (mask!8422 thiss!1248) #b00000000000000000000000001111111) (= (mask!8422 thiss!1248) #b00000000000000000000000011111111) (= (mask!8422 thiss!1248) #b00000000000000000000000111111111) (= (mask!8422 thiss!1248) #b00000000000000000000001111111111) (= (mask!8422 thiss!1248) #b00000000000000000000011111111111) (= (mask!8422 thiss!1248) #b00000000000000000000111111111111) (= (mask!8422 thiss!1248) #b00000000000000000001111111111111) (= (mask!8422 thiss!1248) #b00000000000000000011111111111111) (= (mask!8422 thiss!1248) #b00000000000000000111111111111111) (= (mask!8422 thiss!1248) #b00000000000000001111111111111111) (= (mask!8422 thiss!1248) #b00000000000000011111111111111111) (= (mask!8422 thiss!1248) #b00000000000000111111111111111111) (= (mask!8422 thiss!1248) #b00000000000001111111111111111111) (= (mask!8422 thiss!1248) #b00000000000011111111111111111111) (= (mask!8422 thiss!1248) #b00000000000111111111111111111111) (= (mask!8422 thiss!1248) #b00000000001111111111111111111111) (= (mask!8422 thiss!1248) #b00000000011111111111111111111111) (= (mask!8422 thiss!1248) #b00000000111111111111111111111111) (= (mask!8422 thiss!1248) #b00000001111111111111111111111111) (= (mask!8422 thiss!1248) #b00000011111111111111111111111111) (= (mask!8422 thiss!1248) #b00000111111111111111111111111111) (= (mask!8422 thiss!1248) #b00001111111111111111111111111111) (= (mask!8422 thiss!1248) #b00011111111111111111111111111111) (= (mask!8422 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8422 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!172501 d!52435))

(declare-fun d!52437 () Bool)

(assert (=> d!52437 (= (array_inv!2179 (_keys!5411 thiss!1248)) (bvsge (size!3715 (_keys!5411 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!172497 d!52437))

(declare-fun d!52439 () Bool)

(assert (=> d!52439 (= (array_inv!2180 (_values!3557 thiss!1248)) (bvsge (size!3716 (_values!3557 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!172497 d!52439))

(declare-fun d!52441 () Bool)

(declare-fun res!81937 () Bool)

(declare-fun e!113910 () Bool)

(assert (=> d!52441 (=> (not res!81937) (not e!113910))))

(declare-fun simpleValid!139 (LongMapFixedSize!2256) Bool)

(assert (=> d!52441 (= res!81937 (simpleValid!139 thiss!1248))))

(assert (=> d!52441 (= (valid!949 thiss!1248) e!113910)))

(declare-fun b!172530 () Bool)

(declare-fun res!81938 () Bool)

(assert (=> b!172530 (=> (not res!81938) (not e!113910))))

(declare-fun arrayCountValidKeys!0 (array!7192 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!172530 (= res!81938 (= (arrayCountValidKeys!0 (_keys!5411 thiss!1248) #b00000000000000000000000000000000 (size!3715 (_keys!5411 thiss!1248))) (_size!1177 thiss!1248)))))

(declare-fun b!172531 () Bool)

(declare-fun res!81939 () Bool)

(assert (=> b!172531 (=> (not res!81939) (not e!113910))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7192 (_ BitVec 32)) Bool)

(assert (=> b!172531 (= res!81939 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5411 thiss!1248) (mask!8422 thiss!1248)))))

(declare-fun b!172532 () Bool)

(declare-datatypes ((List!2220 0))(
  ( (Nil!2217) (Cons!2216 (h!2833 (_ BitVec 64)) (t!7035 List!2220)) )
))
(declare-fun arrayNoDuplicates!0 (array!7192 (_ BitVec 32) List!2220) Bool)

(assert (=> b!172532 (= e!113910 (arrayNoDuplicates!0 (_keys!5411 thiss!1248) #b00000000000000000000000000000000 Nil!2217))))

(assert (= (and d!52441 res!81937) b!172530))

(assert (= (and b!172530 res!81938) b!172531))

(assert (= (and b!172531 res!81939) b!172532))

(declare-fun m!201277 () Bool)

(assert (=> d!52441 m!201277))

(declare-fun m!201279 () Bool)

(assert (=> b!172530 m!201279))

(declare-fun m!201281 () Bool)

(assert (=> b!172531 m!201281))

(declare-fun m!201283 () Bool)

(assert (=> b!172532 m!201283))

(assert (=> start!17196 d!52441))

(declare-fun condMapEmpty!6871 () Bool)

(declare-fun mapDefault!6871 () ValueCell!1674)

(assert (=> mapNonEmpty!6865 (= condMapEmpty!6871 (= mapRest!6865 ((as const (Array (_ BitVec 32) ValueCell!1674)) mapDefault!6871)))))

(declare-fun e!113916 () Bool)

(declare-fun mapRes!6871 () Bool)

(assert (=> mapNonEmpty!6865 (= tp!15438 (and e!113916 mapRes!6871))))

(declare-fun mapNonEmpty!6871 () Bool)

(declare-fun tp!15448 () Bool)

(declare-fun e!113915 () Bool)

(assert (=> mapNonEmpty!6871 (= mapRes!6871 (and tp!15448 e!113915))))

(declare-fun mapRest!6871 () (Array (_ BitVec 32) ValueCell!1674))

(declare-fun mapValue!6871 () ValueCell!1674)

(declare-fun mapKey!6871 () (_ BitVec 32))

(assert (=> mapNonEmpty!6871 (= mapRest!6865 (store mapRest!6871 mapKey!6871 mapValue!6871))))

(declare-fun mapIsEmpty!6871 () Bool)

(assert (=> mapIsEmpty!6871 mapRes!6871))

(declare-fun b!172540 () Bool)

(assert (=> b!172540 (= e!113916 tp_is_empty!4035)))

(declare-fun b!172539 () Bool)

(assert (=> b!172539 (= e!113915 tp_is_empty!4035)))

(assert (= (and mapNonEmpty!6865 condMapEmpty!6871) mapIsEmpty!6871))

(assert (= (and mapNonEmpty!6865 (not condMapEmpty!6871)) mapNonEmpty!6871))

(assert (= (and mapNonEmpty!6871 ((_ is ValueCellFull!1674) mapValue!6871)) b!172539))

(assert (= (and mapNonEmpty!6865 ((_ is ValueCellFull!1674) mapDefault!6871)) b!172540))

(declare-fun m!201285 () Bool)

(assert (=> mapNonEmpty!6871 m!201285))

(check-sat (not b!172531) (not b_next!4263) (not mapNonEmpty!6871) tp_is_empty!4035 (not d!52441) (not b!172530) (not b!172532) b_and!10721)
(check-sat b_and!10721 (not b_next!4263))
(get-model)

(declare-fun b!172551 () Bool)

(declare-fun e!113928 () Bool)

(declare-fun e!113927 () Bool)

(assert (=> b!172551 (= e!113928 e!113927)))

(declare-fun res!81946 () Bool)

(assert (=> b!172551 (=> (not res!81946) (not e!113927))))

(declare-fun e!113926 () Bool)

(assert (=> b!172551 (= res!81946 (not e!113926))))

(declare-fun res!81947 () Bool)

(assert (=> b!172551 (=> (not res!81947) (not e!113926))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!172551 (= res!81947 (validKeyInArray!0 (select (arr!3418 (_keys!5411 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!172552 () Bool)

(declare-fun contains!1150 (List!2220 (_ BitVec 64)) Bool)

(assert (=> b!172552 (= e!113926 (contains!1150 Nil!2217 (select (arr!3418 (_keys!5411 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!172553 () Bool)

(declare-fun e!113925 () Bool)

(declare-fun call!17531 () Bool)

(assert (=> b!172553 (= e!113925 call!17531)))

(declare-fun d!52443 () Bool)

(declare-fun res!81948 () Bool)

(assert (=> d!52443 (=> res!81948 e!113928)))

(assert (=> d!52443 (= res!81948 (bvsge #b00000000000000000000000000000000 (size!3715 (_keys!5411 thiss!1248))))))

(assert (=> d!52443 (= (arrayNoDuplicates!0 (_keys!5411 thiss!1248) #b00000000000000000000000000000000 Nil!2217) e!113928)))

(declare-fun b!172554 () Bool)

(assert (=> b!172554 (= e!113927 e!113925)))

(declare-fun c!30847 () Bool)

(assert (=> b!172554 (= c!30847 (validKeyInArray!0 (select (arr!3418 (_keys!5411 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!172555 () Bool)

(assert (=> b!172555 (= e!113925 call!17531)))

(declare-fun bm!17528 () Bool)

(assert (=> bm!17528 (= call!17531 (arrayNoDuplicates!0 (_keys!5411 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30847 (Cons!2216 (select (arr!3418 (_keys!5411 thiss!1248)) #b00000000000000000000000000000000) Nil!2217) Nil!2217)))))

(assert (= (and d!52443 (not res!81948)) b!172551))

(assert (= (and b!172551 res!81947) b!172552))

(assert (= (and b!172551 res!81946) b!172554))

(assert (= (and b!172554 c!30847) b!172555))

(assert (= (and b!172554 (not c!30847)) b!172553))

(assert (= (or b!172555 b!172553) bm!17528))

(declare-fun m!201287 () Bool)

(assert (=> b!172551 m!201287))

(assert (=> b!172551 m!201287))

(declare-fun m!201289 () Bool)

(assert (=> b!172551 m!201289))

(assert (=> b!172552 m!201287))

(assert (=> b!172552 m!201287))

(declare-fun m!201291 () Bool)

(assert (=> b!172552 m!201291))

(assert (=> b!172554 m!201287))

(assert (=> b!172554 m!201287))

(assert (=> b!172554 m!201289))

(assert (=> bm!17528 m!201287))

(declare-fun m!201293 () Bool)

(assert (=> bm!17528 m!201293))

(assert (=> b!172532 d!52443))

(declare-fun d!52445 () Bool)

(declare-fun res!81953 () Bool)

(declare-fun e!113936 () Bool)

(assert (=> d!52445 (=> res!81953 e!113936)))

(assert (=> d!52445 (= res!81953 (bvsge #b00000000000000000000000000000000 (size!3715 (_keys!5411 thiss!1248))))))

(assert (=> d!52445 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5411 thiss!1248) (mask!8422 thiss!1248)) e!113936)))

(declare-fun b!172564 () Bool)

(declare-fun e!113935 () Bool)

(declare-fun e!113937 () Bool)

(assert (=> b!172564 (= e!113935 e!113937)))

(declare-fun lt!85699 () (_ BitVec 64))

(assert (=> b!172564 (= lt!85699 (select (arr!3418 (_keys!5411 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5303 0))(
  ( (Unit!5304) )
))
(declare-fun lt!85698 () Unit!5303)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7192 (_ BitVec 64) (_ BitVec 32)) Unit!5303)

(assert (=> b!172564 (= lt!85698 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5411 thiss!1248) lt!85699 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7192 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!172564 (arrayContainsKey!0 (_keys!5411 thiss!1248) lt!85699 #b00000000000000000000000000000000)))

(declare-fun lt!85700 () Unit!5303)

(assert (=> b!172564 (= lt!85700 lt!85698)))

(declare-fun res!81954 () Bool)

(declare-datatypes ((SeekEntryResult!548 0))(
  ( (MissingZero!548 (index!4360 (_ BitVec 32))) (Found!548 (index!4361 (_ BitVec 32))) (Intermediate!548 (undefined!1360 Bool) (index!4362 (_ BitVec 32)) (x!19085 (_ BitVec 32))) (Undefined!548) (MissingVacant!548 (index!4363 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7192 (_ BitVec 32)) SeekEntryResult!548)

(assert (=> b!172564 (= res!81954 (= (seekEntryOrOpen!0 (select (arr!3418 (_keys!5411 thiss!1248)) #b00000000000000000000000000000000) (_keys!5411 thiss!1248) (mask!8422 thiss!1248)) (Found!548 #b00000000000000000000000000000000)))))

(assert (=> b!172564 (=> (not res!81954) (not e!113937))))

(declare-fun bm!17531 () Bool)

(declare-fun call!17534 () Bool)

(assert (=> bm!17531 (= call!17534 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5411 thiss!1248) (mask!8422 thiss!1248)))))

(declare-fun b!172565 () Bool)

(assert (=> b!172565 (= e!113937 call!17534)))

(declare-fun b!172566 () Bool)

(assert (=> b!172566 (= e!113935 call!17534)))

(declare-fun b!172567 () Bool)

(assert (=> b!172567 (= e!113936 e!113935)))

(declare-fun c!30850 () Bool)

(assert (=> b!172567 (= c!30850 (validKeyInArray!0 (select (arr!3418 (_keys!5411 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!52445 (not res!81953)) b!172567))

(assert (= (and b!172567 c!30850) b!172564))

(assert (= (and b!172567 (not c!30850)) b!172566))

(assert (= (and b!172564 res!81954) b!172565))

(assert (= (or b!172565 b!172566) bm!17531))

(assert (=> b!172564 m!201287))

(declare-fun m!201295 () Bool)

(assert (=> b!172564 m!201295))

(declare-fun m!201297 () Bool)

(assert (=> b!172564 m!201297))

(assert (=> b!172564 m!201287))

(declare-fun m!201299 () Bool)

(assert (=> b!172564 m!201299))

(declare-fun m!201301 () Bool)

(assert (=> bm!17531 m!201301))

(assert (=> b!172567 m!201287))

(assert (=> b!172567 m!201287))

(assert (=> b!172567 m!201289))

(assert (=> b!172531 d!52445))

(declare-fun b!172576 () Bool)

(declare-fun e!113942 () (_ BitVec 32))

(declare-fun e!113943 () (_ BitVec 32))

(assert (=> b!172576 (= e!113942 e!113943)))

(declare-fun c!30856 () Bool)

(assert (=> b!172576 (= c!30856 (validKeyInArray!0 (select (arr!3418 (_keys!5411 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!52447 () Bool)

(declare-fun lt!85703 () (_ BitVec 32))

(assert (=> d!52447 (and (bvsge lt!85703 #b00000000000000000000000000000000) (bvsle lt!85703 (bvsub (size!3715 (_keys!5411 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!52447 (= lt!85703 e!113942)))

(declare-fun c!30855 () Bool)

(assert (=> d!52447 (= c!30855 (bvsge #b00000000000000000000000000000000 (size!3715 (_keys!5411 thiss!1248))))))

(assert (=> d!52447 (and (bvsle #b00000000000000000000000000000000 (size!3715 (_keys!5411 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3715 (_keys!5411 thiss!1248)) (size!3715 (_keys!5411 thiss!1248))))))

(assert (=> d!52447 (= (arrayCountValidKeys!0 (_keys!5411 thiss!1248) #b00000000000000000000000000000000 (size!3715 (_keys!5411 thiss!1248))) lt!85703)))

(declare-fun b!172577 () Bool)

(declare-fun call!17537 () (_ BitVec 32))

(assert (=> b!172577 (= e!113943 (bvadd #b00000000000000000000000000000001 call!17537))))

(declare-fun b!172578 () Bool)

(assert (=> b!172578 (= e!113943 call!17537)))

(declare-fun b!172579 () Bool)

(assert (=> b!172579 (= e!113942 #b00000000000000000000000000000000)))

(declare-fun bm!17534 () Bool)

(assert (=> bm!17534 (= call!17537 (arrayCountValidKeys!0 (_keys!5411 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3715 (_keys!5411 thiss!1248))))))

(assert (= (and d!52447 c!30855) b!172579))

(assert (= (and d!52447 (not c!30855)) b!172576))

(assert (= (and b!172576 c!30856) b!172577))

(assert (= (and b!172576 (not c!30856)) b!172578))

(assert (= (or b!172577 b!172578) bm!17534))

(assert (=> b!172576 m!201287))

(assert (=> b!172576 m!201287))

(assert (=> b!172576 m!201289))

(declare-fun m!201303 () Bool)

(assert (=> bm!17534 m!201303))

(assert (=> b!172530 d!52447))

(declare-fun b!172590 () Bool)

(declare-fun res!81966 () Bool)

(declare-fun e!113946 () Bool)

(assert (=> b!172590 (=> (not res!81966) (not e!113946))))

(declare-fun size!3719 (LongMapFixedSize!2256) (_ BitVec 32))

(assert (=> b!172590 (= res!81966 (= (size!3719 thiss!1248) (bvadd (_size!1177 thiss!1248) (bvsdiv (bvadd (extraKeys!3313 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!52449 () Bool)

(declare-fun res!81965 () Bool)

(assert (=> d!52449 (=> (not res!81965) (not e!113946))))

(assert (=> d!52449 (= res!81965 (validMask!0 (mask!8422 thiss!1248)))))

(assert (=> d!52449 (= (simpleValid!139 thiss!1248) e!113946)))

(declare-fun b!172589 () Bool)

(declare-fun res!81963 () Bool)

(assert (=> b!172589 (=> (not res!81963) (not e!113946))))

(assert (=> b!172589 (= res!81963 (bvsge (size!3719 thiss!1248) (_size!1177 thiss!1248)))))

(declare-fun b!172591 () Bool)

(assert (=> b!172591 (= e!113946 (and (bvsge (extraKeys!3313 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3313 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1177 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!172588 () Bool)

(declare-fun res!81964 () Bool)

(assert (=> b!172588 (=> (not res!81964) (not e!113946))))

(assert (=> b!172588 (= res!81964 (and (= (size!3716 (_values!3557 thiss!1248)) (bvadd (mask!8422 thiss!1248) #b00000000000000000000000000000001)) (= (size!3715 (_keys!5411 thiss!1248)) (size!3716 (_values!3557 thiss!1248))) (bvsge (_size!1177 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1177 thiss!1248) (bvadd (mask!8422 thiss!1248) #b00000000000000000000000000000001))))))

(assert (= (and d!52449 res!81965) b!172588))

(assert (= (and b!172588 res!81964) b!172589))

(assert (= (and b!172589 res!81963) b!172590))

(assert (= (and b!172590 res!81966) b!172591))

(declare-fun m!201305 () Bool)

(assert (=> b!172590 m!201305))

(assert (=> d!52449 m!201265))

(assert (=> b!172589 m!201305))

(assert (=> d!52441 d!52449))

(declare-fun condMapEmpty!6872 () Bool)

(declare-fun mapDefault!6872 () ValueCell!1674)

(assert (=> mapNonEmpty!6871 (= condMapEmpty!6872 (= mapRest!6871 ((as const (Array (_ BitVec 32) ValueCell!1674)) mapDefault!6872)))))

(declare-fun e!113948 () Bool)

(declare-fun mapRes!6872 () Bool)

(assert (=> mapNonEmpty!6871 (= tp!15448 (and e!113948 mapRes!6872))))

(declare-fun mapNonEmpty!6872 () Bool)

(declare-fun tp!15449 () Bool)

(declare-fun e!113947 () Bool)

(assert (=> mapNonEmpty!6872 (= mapRes!6872 (and tp!15449 e!113947))))

(declare-fun mapValue!6872 () ValueCell!1674)

(declare-fun mapKey!6872 () (_ BitVec 32))

(declare-fun mapRest!6872 () (Array (_ BitVec 32) ValueCell!1674))

(assert (=> mapNonEmpty!6872 (= mapRest!6871 (store mapRest!6872 mapKey!6872 mapValue!6872))))

(declare-fun mapIsEmpty!6872 () Bool)

(assert (=> mapIsEmpty!6872 mapRes!6872))

(declare-fun b!172593 () Bool)

(assert (=> b!172593 (= e!113948 tp_is_empty!4035)))

(declare-fun b!172592 () Bool)

(assert (=> b!172592 (= e!113947 tp_is_empty!4035)))

(assert (= (and mapNonEmpty!6871 condMapEmpty!6872) mapIsEmpty!6872))

(assert (= (and mapNonEmpty!6871 (not condMapEmpty!6872)) mapNonEmpty!6872))

(assert (= (and mapNonEmpty!6872 ((_ is ValueCellFull!1674) mapValue!6872)) b!172592))

(assert (= (and mapNonEmpty!6871 ((_ is ValueCellFull!1674) mapDefault!6872)) b!172593))

(declare-fun m!201307 () Bool)

(assert (=> mapNonEmpty!6872 m!201307))

(check-sat (not mapNonEmpty!6872) (not b!172590) (not b!172551) tp_is_empty!4035 (not b!172564) (not b!172576) (not b!172567) (not bm!17534) (not b!172589) (not b!172552) b_and!10721 (not bm!17528) (not b!172554) (not b_next!4263) (not d!52449) (not bm!17531))
(check-sat b_and!10721 (not b_next!4263))
