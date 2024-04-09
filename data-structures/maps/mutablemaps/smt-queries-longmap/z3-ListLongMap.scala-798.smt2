; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19176 () Bool)

(assert start!19176)

(declare-fun b!188516 () Bool)

(declare-fun b_free!4629 () Bool)

(declare-fun b_next!4629 () Bool)

(assert (=> b!188516 (= b_free!4629 (not b_next!4629))))

(declare-fun tp!16711 () Bool)

(declare-fun b_and!11279 () Bool)

(assert (=> b!188516 (= tp!16711 b_and!11279)))

(declare-fun b!188514 () Bool)

(declare-fun e!124077 () Bool)

(declare-fun e!124082 () Bool)

(assert (=> b!188514 (= e!124077 e!124082)))

(declare-fun res!89128 () Bool)

(assert (=> b!188514 (=> (not res!89128) (not e!124082))))

(declare-datatypes ((SeekEntryResult!665 0))(
  ( (MissingZero!665 (index!4830 (_ BitVec 32))) (Found!665 (index!4831 (_ BitVec 32))) (Intermediate!665 (undefined!1477 Bool) (index!4832 (_ BitVec 32)) (x!20369 (_ BitVec 32))) (Undefined!665) (MissingVacant!665 (index!4833 (_ BitVec 32))) )
))
(declare-fun lt!93351 () SeekEntryResult!665)

(get-info :version)

(assert (=> b!188514 (= res!89128 (and (not ((_ is Undefined!665) lt!93351)) (not ((_ is MissingVacant!665) lt!93351)) (not ((_ is MissingZero!665) lt!93351)) ((_ is Found!665) lt!93351)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!5515 0))(
  ( (V!5516 (val!2245 Int)) )
))
(declare-datatypes ((ValueCell!1857 0))(
  ( (ValueCellFull!1857 (v!4159 V!5515)) (EmptyCell!1857) )
))
(declare-datatypes ((array!8024 0))(
  ( (array!8025 (arr!3784 (Array (_ BitVec 32) (_ BitVec 64))) (size!4104 (_ BitVec 32))) )
))
(declare-datatypes ((array!8026 0))(
  ( (array!8027 (arr!3785 (Array (_ BitVec 32) ValueCell!1857)) (size!4105 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2622 0))(
  ( (LongMapFixedSize!2623 (defaultEntry!3846 Int) (mask!9015 (_ BitVec 32)) (extraKeys!3583 (_ BitVec 32)) (zeroValue!3687 V!5515) (minValue!3687 V!5515) (_size!1360 (_ BitVec 32)) (_keys!5807 array!8024) (_values!3829 array!8026) (_vacant!1360 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2622)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8024 (_ BitVec 32)) SeekEntryResult!665)

(assert (=> b!188514 (= lt!93351 (seekEntryOrOpen!0 key!828 (_keys!5807 thiss!1248) (mask!9015 thiss!1248)))))

(declare-fun b!188515 () Bool)

(declare-fun e!124078 () Bool)

(declare-fun tp_is_empty!4401 () Bool)

(assert (=> b!188515 (= e!124078 tp_is_empty!4401)))

(declare-fun e!124083 () Bool)

(declare-fun e!124080 () Bool)

(declare-fun array_inv!2441 (array!8024) Bool)

(declare-fun array_inv!2442 (array!8026) Bool)

(assert (=> b!188516 (= e!124083 (and tp!16711 tp_is_empty!4401 (array_inv!2441 (_keys!5807 thiss!1248)) (array_inv!2442 (_values!3829 thiss!1248)) e!124080))))

(declare-fun b!188517 () Bool)

(declare-fun e!124076 () Bool)

(assert (=> b!188517 (= e!124082 e!124076)))

(declare-fun res!89134 () Bool)

(assert (=> b!188517 (=> (not res!89134) (not e!124076))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!188517 (= res!89134 (validMask!0 (mask!9015 thiss!1248)))))

(declare-datatypes ((Unit!5683 0))(
  ( (Unit!5684) )
))
(declare-fun lt!93348 () Unit!5683)

(declare-fun e!124085 () Unit!5683)

(assert (=> b!188517 (= lt!93348 e!124085)))

(declare-fun c!33871 () Bool)

(declare-datatypes ((tuple2!3490 0))(
  ( (tuple2!3491 (_1!1755 (_ BitVec 64)) (_2!1755 V!5515)) )
))
(declare-datatypes ((List!2413 0))(
  ( (Nil!2410) (Cons!2409 (h!3046 tuple2!3490) (t!7319 List!2413)) )
))
(declare-datatypes ((ListLongMap!2421 0))(
  ( (ListLongMap!2422 (toList!1226 List!2413)) )
))
(declare-fun contains!1324 (ListLongMap!2421 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!869 (array!8024 array!8026 (_ BitVec 32) (_ BitVec 32) V!5515 V!5515 (_ BitVec 32) Int) ListLongMap!2421)

(assert (=> b!188517 (= c!33871 (contains!1324 (getCurrentListMap!869 (_keys!5807 thiss!1248) (_values!3829 thiss!1248) (mask!9015 thiss!1248) (extraKeys!3583 thiss!1248) (zeroValue!3687 thiss!1248) (minValue!3687 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3846 thiss!1248)) key!828))))

(declare-fun res!89130 () Bool)

(assert (=> start!19176 (=> (not res!89130) (not e!124077))))

(declare-fun valid!1071 (LongMapFixedSize!2622) Bool)

(assert (=> start!19176 (= res!89130 (valid!1071 thiss!1248))))

(assert (=> start!19176 e!124077))

(assert (=> start!19176 e!124083))

(assert (=> start!19176 true))

(declare-fun b!188518 () Bool)

(declare-datatypes ((List!2414 0))(
  ( (Nil!2411) (Cons!2410 (h!3047 (_ BitVec 64)) (t!7320 List!2414)) )
))
(declare-fun arrayNoDuplicates!0 (array!8024 (_ BitVec 32) List!2414) Bool)

(assert (=> b!188518 (= e!124076 (not (arrayNoDuplicates!0 (_keys!5807 thiss!1248) #b00000000000000000000000000000000 Nil!2411)))))

(declare-fun b!188519 () Bool)

(declare-fun Unit!5685 () Unit!5683)

(assert (=> b!188519 (= e!124085 Unit!5685)))

(declare-fun lt!93349 () Unit!5683)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!159 (array!8024 array!8026 (_ BitVec 32) (_ BitVec 32) V!5515 V!5515 (_ BitVec 64) Int) Unit!5683)

(assert (=> b!188519 (= lt!93349 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!159 (_keys!5807 thiss!1248) (_values!3829 thiss!1248) (mask!9015 thiss!1248) (extraKeys!3583 thiss!1248) (zeroValue!3687 thiss!1248) (minValue!3687 thiss!1248) key!828 (defaultEntry!3846 thiss!1248)))))

(assert (=> b!188519 false))

(declare-fun mapNonEmpty!7588 () Bool)

(declare-fun mapRes!7588 () Bool)

(declare-fun tp!16710 () Bool)

(declare-fun e!124079 () Bool)

(assert (=> mapNonEmpty!7588 (= mapRes!7588 (and tp!16710 e!124079))))

(declare-fun mapRest!7588 () (Array (_ BitVec 32) ValueCell!1857))

(declare-fun mapKey!7588 () (_ BitVec 32))

(declare-fun mapValue!7588 () ValueCell!1857)

(assert (=> mapNonEmpty!7588 (= (arr!3785 (_values!3829 thiss!1248)) (store mapRest!7588 mapKey!7588 mapValue!7588))))

(declare-fun b!188520 () Bool)

(declare-fun lt!93350 () Unit!5683)

(assert (=> b!188520 (= e!124085 lt!93350)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!158 (array!8024 array!8026 (_ BitVec 32) (_ BitVec 32) V!5515 V!5515 (_ BitVec 64) Int) Unit!5683)

(assert (=> b!188520 (= lt!93350 (lemmaInListMapThenSeekEntryOrOpenFindsIt!158 (_keys!5807 thiss!1248) (_values!3829 thiss!1248) (mask!9015 thiss!1248) (extraKeys!3583 thiss!1248) (zeroValue!3687 thiss!1248) (minValue!3687 thiss!1248) key!828 (defaultEntry!3846 thiss!1248)))))

(declare-fun res!89131 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!188520 (= res!89131 (inRange!0 (index!4831 lt!93351) (mask!9015 thiss!1248)))))

(declare-fun e!124081 () Bool)

(assert (=> b!188520 (=> (not res!89131) (not e!124081))))

(assert (=> b!188520 e!124081))

(declare-fun mapIsEmpty!7588 () Bool)

(assert (=> mapIsEmpty!7588 mapRes!7588))

(declare-fun b!188521 () Bool)

(declare-fun res!89133 () Bool)

(assert (=> b!188521 (=> (not res!89133) (not e!124077))))

(assert (=> b!188521 (= res!89133 (not (= key!828 (bvneg key!828))))))

(declare-fun b!188522 () Bool)

(assert (=> b!188522 (= e!124080 (and e!124078 mapRes!7588))))

(declare-fun condMapEmpty!7588 () Bool)

(declare-fun mapDefault!7588 () ValueCell!1857)

(assert (=> b!188522 (= condMapEmpty!7588 (= (arr!3785 (_values!3829 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1857)) mapDefault!7588)))))

(declare-fun b!188523 () Bool)

(assert (=> b!188523 (= e!124081 (= (select (arr!3784 (_keys!5807 thiss!1248)) (index!4831 lt!93351)) key!828))))

(declare-fun b!188524 () Bool)

(declare-fun res!89132 () Bool)

(assert (=> b!188524 (=> (not res!89132) (not e!124076))))

(assert (=> b!188524 (= res!89132 (and (= (size!4105 (_values!3829 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9015 thiss!1248))) (= (size!4104 (_keys!5807 thiss!1248)) (size!4105 (_values!3829 thiss!1248))) (bvsge (mask!9015 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3583 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3583 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!188525 () Bool)

(assert (=> b!188525 (= e!124079 tp_is_empty!4401)))

(declare-fun b!188526 () Bool)

(declare-fun res!89129 () Bool)

(assert (=> b!188526 (=> (not res!89129) (not e!124076))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8024 (_ BitVec 32)) Bool)

(assert (=> b!188526 (= res!89129 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5807 thiss!1248) (mask!9015 thiss!1248)))))

(assert (= (and start!19176 res!89130) b!188521))

(assert (= (and b!188521 res!89133) b!188514))

(assert (= (and b!188514 res!89128) b!188517))

(assert (= (and b!188517 c!33871) b!188520))

(assert (= (and b!188517 (not c!33871)) b!188519))

(assert (= (and b!188520 res!89131) b!188523))

(assert (= (and b!188517 res!89134) b!188524))

(assert (= (and b!188524 res!89132) b!188526))

(assert (= (and b!188526 res!89129) b!188518))

(assert (= (and b!188522 condMapEmpty!7588) mapIsEmpty!7588))

(assert (= (and b!188522 (not condMapEmpty!7588)) mapNonEmpty!7588))

(assert (= (and mapNonEmpty!7588 ((_ is ValueCellFull!1857) mapValue!7588)) b!188525))

(assert (= (and b!188522 ((_ is ValueCellFull!1857) mapDefault!7588)) b!188515))

(assert (= b!188516 b!188522))

(assert (= start!19176 b!188516))

(declare-fun m!215157 () Bool)

(assert (=> b!188516 m!215157))

(declare-fun m!215159 () Bool)

(assert (=> b!188516 m!215159))

(declare-fun m!215161 () Bool)

(assert (=> b!188514 m!215161))

(declare-fun m!215163 () Bool)

(assert (=> b!188518 m!215163))

(declare-fun m!215165 () Bool)

(assert (=> start!19176 m!215165))

(declare-fun m!215167 () Bool)

(assert (=> mapNonEmpty!7588 m!215167))

(declare-fun m!215169 () Bool)

(assert (=> b!188526 m!215169))

(declare-fun m!215171 () Bool)

(assert (=> b!188517 m!215171))

(declare-fun m!215173 () Bool)

(assert (=> b!188517 m!215173))

(assert (=> b!188517 m!215173))

(declare-fun m!215175 () Bool)

(assert (=> b!188517 m!215175))

(declare-fun m!215177 () Bool)

(assert (=> b!188520 m!215177))

(declare-fun m!215179 () Bool)

(assert (=> b!188520 m!215179))

(declare-fun m!215181 () Bool)

(assert (=> b!188519 m!215181))

(declare-fun m!215183 () Bool)

(assert (=> b!188523 m!215183))

(check-sat (not b!188526) (not b!188520) (not b!188518) (not mapNonEmpty!7588) tp_is_empty!4401 (not b!188516) (not b!188519) (not b!188517) (not b!188514) (not start!19176) (not b_next!4629) b_and!11279)
(check-sat b_and!11279 (not b_next!4629))
(get-model)

(declare-fun d!55551 () Bool)

(assert (=> d!55551 (= (array_inv!2441 (_keys!5807 thiss!1248)) (bvsge (size!4104 (_keys!5807 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!188516 d!55551))

(declare-fun d!55553 () Bool)

(assert (=> d!55553 (= (array_inv!2442 (_values!3829 thiss!1248)) (bvsge (size!4105 (_values!3829 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!188516 d!55553))

(declare-fun d!55555 () Bool)

(declare-fun e!124118 () Bool)

(assert (=> d!55555 e!124118))

(declare-fun res!89161 () Bool)

(assert (=> d!55555 (=> (not res!89161) (not e!124118))))

(declare-fun lt!93368 () SeekEntryResult!665)

(assert (=> d!55555 (= res!89161 ((_ is Found!665) lt!93368))))

(assert (=> d!55555 (= lt!93368 (seekEntryOrOpen!0 key!828 (_keys!5807 thiss!1248) (mask!9015 thiss!1248)))))

(declare-fun lt!93369 () Unit!5683)

(declare-fun choose!1016 (array!8024 array!8026 (_ BitVec 32) (_ BitVec 32) V!5515 V!5515 (_ BitVec 64) Int) Unit!5683)

(assert (=> d!55555 (= lt!93369 (choose!1016 (_keys!5807 thiss!1248) (_values!3829 thiss!1248) (mask!9015 thiss!1248) (extraKeys!3583 thiss!1248) (zeroValue!3687 thiss!1248) (minValue!3687 thiss!1248) key!828 (defaultEntry!3846 thiss!1248)))))

(assert (=> d!55555 (validMask!0 (mask!9015 thiss!1248))))

(assert (=> d!55555 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!158 (_keys!5807 thiss!1248) (_values!3829 thiss!1248) (mask!9015 thiss!1248) (extraKeys!3583 thiss!1248) (zeroValue!3687 thiss!1248) (minValue!3687 thiss!1248) key!828 (defaultEntry!3846 thiss!1248)) lt!93369)))

(declare-fun b!188570 () Bool)

(declare-fun res!89160 () Bool)

(assert (=> b!188570 (=> (not res!89160) (not e!124118))))

(assert (=> b!188570 (= res!89160 (inRange!0 (index!4831 lt!93368) (mask!9015 thiss!1248)))))

(declare-fun b!188571 () Bool)

(assert (=> b!188571 (= e!124118 (= (select (arr!3784 (_keys!5807 thiss!1248)) (index!4831 lt!93368)) key!828))))

(assert (=> b!188571 (and (bvsge (index!4831 lt!93368) #b00000000000000000000000000000000) (bvslt (index!4831 lt!93368) (size!4104 (_keys!5807 thiss!1248))))))

(assert (= (and d!55555 res!89161) b!188570))

(assert (= (and b!188570 res!89160) b!188571))

(assert (=> d!55555 m!215161))

(declare-fun m!215213 () Bool)

(assert (=> d!55555 m!215213))

(assert (=> d!55555 m!215171))

(declare-fun m!215215 () Bool)

(assert (=> b!188570 m!215215))

(declare-fun m!215217 () Bool)

(assert (=> b!188571 m!215217))

(assert (=> b!188520 d!55555))

(declare-fun d!55557 () Bool)

(assert (=> d!55557 (= (inRange!0 (index!4831 lt!93351) (mask!9015 thiss!1248)) (and (bvsge (index!4831 lt!93351) #b00000000000000000000000000000000) (bvslt (index!4831 lt!93351) (bvadd (mask!9015 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!188520 d!55557))

(declare-fun d!55559 () Bool)

(declare-fun res!89166 () Bool)

(declare-fun e!124125 () Bool)

(assert (=> d!55559 (=> res!89166 e!124125)))

(assert (=> d!55559 (= res!89166 (bvsge #b00000000000000000000000000000000 (size!4104 (_keys!5807 thiss!1248))))))

(assert (=> d!55559 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5807 thiss!1248) (mask!9015 thiss!1248)) e!124125)))

(declare-fun b!188580 () Bool)

(declare-fun e!124127 () Bool)

(declare-fun call!19004 () Bool)

(assert (=> b!188580 (= e!124127 call!19004)))

(declare-fun b!188581 () Bool)

(declare-fun e!124126 () Bool)

(assert (=> b!188581 (= e!124126 e!124127)))

(declare-fun lt!93377 () (_ BitVec 64))

(assert (=> b!188581 (= lt!93377 (select (arr!3784 (_keys!5807 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93378 () Unit!5683)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!8024 (_ BitVec 64) (_ BitVec 32)) Unit!5683)

(assert (=> b!188581 (= lt!93378 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5807 thiss!1248) lt!93377 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!8024 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!188581 (arrayContainsKey!0 (_keys!5807 thiss!1248) lt!93377 #b00000000000000000000000000000000)))

(declare-fun lt!93376 () Unit!5683)

(assert (=> b!188581 (= lt!93376 lt!93378)))

(declare-fun res!89167 () Bool)

(assert (=> b!188581 (= res!89167 (= (seekEntryOrOpen!0 (select (arr!3784 (_keys!5807 thiss!1248)) #b00000000000000000000000000000000) (_keys!5807 thiss!1248) (mask!9015 thiss!1248)) (Found!665 #b00000000000000000000000000000000)))))

(assert (=> b!188581 (=> (not res!89167) (not e!124127))))

(declare-fun b!188582 () Bool)

(assert (=> b!188582 (= e!124126 call!19004)))

(declare-fun bm!19001 () Bool)

(assert (=> bm!19001 (= call!19004 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5807 thiss!1248) (mask!9015 thiss!1248)))))

(declare-fun b!188583 () Bool)

(assert (=> b!188583 (= e!124125 e!124126)))

(declare-fun c!33877 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!188583 (= c!33877 (validKeyInArray!0 (select (arr!3784 (_keys!5807 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!55559 (not res!89166)) b!188583))

(assert (= (and b!188583 c!33877) b!188581))

(assert (= (and b!188583 (not c!33877)) b!188582))

(assert (= (and b!188581 res!89167) b!188580))

(assert (= (or b!188580 b!188582) bm!19001))

(declare-fun m!215219 () Bool)

(assert (=> b!188581 m!215219))

(declare-fun m!215221 () Bool)

(assert (=> b!188581 m!215221))

(declare-fun m!215223 () Bool)

(assert (=> b!188581 m!215223))

(assert (=> b!188581 m!215219))

(declare-fun m!215225 () Bool)

(assert (=> b!188581 m!215225))

(declare-fun m!215227 () Bool)

(assert (=> bm!19001 m!215227))

(assert (=> b!188583 m!215219))

(assert (=> b!188583 m!215219))

(declare-fun m!215229 () Bool)

(assert (=> b!188583 m!215229))

(assert (=> b!188526 d!55559))

(declare-fun d!55561 () Bool)

(assert (=> d!55561 (= (validMask!0 (mask!9015 thiss!1248)) (and (or (= (mask!9015 thiss!1248) #b00000000000000000000000000000111) (= (mask!9015 thiss!1248) #b00000000000000000000000000001111) (= (mask!9015 thiss!1248) #b00000000000000000000000000011111) (= (mask!9015 thiss!1248) #b00000000000000000000000000111111) (= (mask!9015 thiss!1248) #b00000000000000000000000001111111) (= (mask!9015 thiss!1248) #b00000000000000000000000011111111) (= (mask!9015 thiss!1248) #b00000000000000000000000111111111) (= (mask!9015 thiss!1248) #b00000000000000000000001111111111) (= (mask!9015 thiss!1248) #b00000000000000000000011111111111) (= (mask!9015 thiss!1248) #b00000000000000000000111111111111) (= (mask!9015 thiss!1248) #b00000000000000000001111111111111) (= (mask!9015 thiss!1248) #b00000000000000000011111111111111) (= (mask!9015 thiss!1248) #b00000000000000000111111111111111) (= (mask!9015 thiss!1248) #b00000000000000001111111111111111) (= (mask!9015 thiss!1248) #b00000000000000011111111111111111) (= (mask!9015 thiss!1248) #b00000000000000111111111111111111) (= (mask!9015 thiss!1248) #b00000000000001111111111111111111) (= (mask!9015 thiss!1248) #b00000000000011111111111111111111) (= (mask!9015 thiss!1248) #b00000000000111111111111111111111) (= (mask!9015 thiss!1248) #b00000000001111111111111111111111) (= (mask!9015 thiss!1248) #b00000000011111111111111111111111) (= (mask!9015 thiss!1248) #b00000000111111111111111111111111) (= (mask!9015 thiss!1248) #b00000001111111111111111111111111) (= (mask!9015 thiss!1248) #b00000011111111111111111111111111) (= (mask!9015 thiss!1248) #b00000111111111111111111111111111) (= (mask!9015 thiss!1248) #b00001111111111111111111111111111) (= (mask!9015 thiss!1248) #b00011111111111111111111111111111) (= (mask!9015 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!9015 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!188517 d!55561))

(declare-fun d!55563 () Bool)

(declare-fun e!124132 () Bool)

(assert (=> d!55563 e!124132))

(declare-fun res!89170 () Bool)

(assert (=> d!55563 (=> res!89170 e!124132)))

(declare-fun lt!93390 () Bool)

(assert (=> d!55563 (= res!89170 (not lt!93390))))

(declare-fun lt!93388 () Bool)

(assert (=> d!55563 (= lt!93390 lt!93388)))

(declare-fun lt!93387 () Unit!5683)

(declare-fun e!124133 () Unit!5683)

(assert (=> d!55563 (= lt!93387 e!124133)))

(declare-fun c!33880 () Bool)

(assert (=> d!55563 (= c!33880 lt!93388)))

(declare-fun containsKey!234 (List!2413 (_ BitVec 64)) Bool)

(assert (=> d!55563 (= lt!93388 (containsKey!234 (toList!1226 (getCurrentListMap!869 (_keys!5807 thiss!1248) (_values!3829 thiss!1248) (mask!9015 thiss!1248) (extraKeys!3583 thiss!1248) (zeroValue!3687 thiss!1248) (minValue!3687 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3846 thiss!1248))) key!828))))

(assert (=> d!55563 (= (contains!1324 (getCurrentListMap!869 (_keys!5807 thiss!1248) (_values!3829 thiss!1248) (mask!9015 thiss!1248) (extraKeys!3583 thiss!1248) (zeroValue!3687 thiss!1248) (minValue!3687 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3846 thiss!1248)) key!828) lt!93390)))

(declare-fun b!188590 () Bool)

(declare-fun lt!93389 () Unit!5683)

(assert (=> b!188590 (= e!124133 lt!93389)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!183 (List!2413 (_ BitVec 64)) Unit!5683)

(assert (=> b!188590 (= lt!93389 (lemmaContainsKeyImpliesGetValueByKeyDefined!183 (toList!1226 (getCurrentListMap!869 (_keys!5807 thiss!1248) (_values!3829 thiss!1248) (mask!9015 thiss!1248) (extraKeys!3583 thiss!1248) (zeroValue!3687 thiss!1248) (minValue!3687 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3846 thiss!1248))) key!828))))

(declare-datatypes ((Option!236 0))(
  ( (Some!235 (v!4161 V!5515)) (None!234) )
))
(declare-fun isDefined!184 (Option!236) Bool)

(declare-fun getValueByKey!230 (List!2413 (_ BitVec 64)) Option!236)

(assert (=> b!188590 (isDefined!184 (getValueByKey!230 (toList!1226 (getCurrentListMap!869 (_keys!5807 thiss!1248) (_values!3829 thiss!1248) (mask!9015 thiss!1248) (extraKeys!3583 thiss!1248) (zeroValue!3687 thiss!1248) (minValue!3687 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3846 thiss!1248))) key!828))))

(declare-fun b!188591 () Bool)

(declare-fun Unit!5686 () Unit!5683)

(assert (=> b!188591 (= e!124133 Unit!5686)))

(declare-fun b!188592 () Bool)

(assert (=> b!188592 (= e!124132 (isDefined!184 (getValueByKey!230 (toList!1226 (getCurrentListMap!869 (_keys!5807 thiss!1248) (_values!3829 thiss!1248) (mask!9015 thiss!1248) (extraKeys!3583 thiss!1248) (zeroValue!3687 thiss!1248) (minValue!3687 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3846 thiss!1248))) key!828)))))

(assert (= (and d!55563 c!33880) b!188590))

(assert (= (and d!55563 (not c!33880)) b!188591))

(assert (= (and d!55563 (not res!89170)) b!188592))

(declare-fun m!215231 () Bool)

(assert (=> d!55563 m!215231))

(declare-fun m!215233 () Bool)

(assert (=> b!188590 m!215233))

(declare-fun m!215235 () Bool)

(assert (=> b!188590 m!215235))

(assert (=> b!188590 m!215235))

(declare-fun m!215237 () Bool)

(assert (=> b!188590 m!215237))

(assert (=> b!188592 m!215235))

(assert (=> b!188592 m!215235))

(assert (=> b!188592 m!215237))

(assert (=> b!188517 d!55563))

(declare-fun b!188635 () Bool)

(declare-fun e!124170 () Bool)

(declare-fun call!19019 () Bool)

(assert (=> b!188635 (= e!124170 (not call!19019))))

(declare-fun b!188636 () Bool)

(declare-fun e!124166 () Unit!5683)

(declare-fun lt!93454 () Unit!5683)

(assert (=> b!188636 (= e!124166 lt!93454)))

(declare-fun lt!93445 () ListLongMap!2421)

(declare-fun getCurrentListMapNoExtraKeys!204 (array!8024 array!8026 (_ BitVec 32) (_ BitVec 32) V!5515 V!5515 (_ BitVec 32) Int) ListLongMap!2421)

(assert (=> b!188636 (= lt!93445 (getCurrentListMapNoExtraKeys!204 (_keys!5807 thiss!1248) (_values!3829 thiss!1248) (mask!9015 thiss!1248) (extraKeys!3583 thiss!1248) (zeroValue!3687 thiss!1248) (minValue!3687 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3846 thiss!1248)))))

(declare-fun lt!93444 () (_ BitVec 64))

(assert (=> b!188636 (= lt!93444 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93441 () (_ BitVec 64))

(assert (=> b!188636 (= lt!93441 (select (arr!3784 (_keys!5807 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93449 () Unit!5683)

(declare-fun addStillContains!150 (ListLongMap!2421 (_ BitVec 64) V!5515 (_ BitVec 64)) Unit!5683)

(assert (=> b!188636 (= lt!93449 (addStillContains!150 lt!93445 lt!93444 (zeroValue!3687 thiss!1248) lt!93441))))

(declare-fun +!289 (ListLongMap!2421 tuple2!3490) ListLongMap!2421)

(assert (=> b!188636 (contains!1324 (+!289 lt!93445 (tuple2!3491 lt!93444 (zeroValue!3687 thiss!1248))) lt!93441)))

(declare-fun lt!93453 () Unit!5683)

(assert (=> b!188636 (= lt!93453 lt!93449)))

(declare-fun lt!93439 () ListLongMap!2421)

(assert (=> b!188636 (= lt!93439 (getCurrentListMapNoExtraKeys!204 (_keys!5807 thiss!1248) (_values!3829 thiss!1248) (mask!9015 thiss!1248) (extraKeys!3583 thiss!1248) (zeroValue!3687 thiss!1248) (minValue!3687 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3846 thiss!1248)))))

(declare-fun lt!93442 () (_ BitVec 64))

(assert (=> b!188636 (= lt!93442 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93452 () (_ BitVec 64))

(assert (=> b!188636 (= lt!93452 (select (arr!3784 (_keys!5807 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93443 () Unit!5683)

(declare-fun addApplyDifferent!150 (ListLongMap!2421 (_ BitVec 64) V!5515 (_ BitVec 64)) Unit!5683)

(assert (=> b!188636 (= lt!93443 (addApplyDifferent!150 lt!93439 lt!93442 (minValue!3687 thiss!1248) lt!93452))))

(declare-fun apply!174 (ListLongMap!2421 (_ BitVec 64)) V!5515)

(assert (=> b!188636 (= (apply!174 (+!289 lt!93439 (tuple2!3491 lt!93442 (minValue!3687 thiss!1248))) lt!93452) (apply!174 lt!93439 lt!93452))))

(declare-fun lt!93440 () Unit!5683)

(assert (=> b!188636 (= lt!93440 lt!93443)))

(declare-fun lt!93436 () ListLongMap!2421)

(assert (=> b!188636 (= lt!93436 (getCurrentListMapNoExtraKeys!204 (_keys!5807 thiss!1248) (_values!3829 thiss!1248) (mask!9015 thiss!1248) (extraKeys!3583 thiss!1248) (zeroValue!3687 thiss!1248) (minValue!3687 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3846 thiss!1248)))))

(declare-fun lt!93438 () (_ BitVec 64))

(assert (=> b!188636 (= lt!93438 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93448 () (_ BitVec 64))

(assert (=> b!188636 (= lt!93448 (select (arr!3784 (_keys!5807 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93456 () Unit!5683)

(assert (=> b!188636 (= lt!93456 (addApplyDifferent!150 lt!93436 lt!93438 (zeroValue!3687 thiss!1248) lt!93448))))

(assert (=> b!188636 (= (apply!174 (+!289 lt!93436 (tuple2!3491 lt!93438 (zeroValue!3687 thiss!1248))) lt!93448) (apply!174 lt!93436 lt!93448))))

(declare-fun lt!93455 () Unit!5683)

(assert (=> b!188636 (= lt!93455 lt!93456)))

(declare-fun lt!93446 () ListLongMap!2421)

(assert (=> b!188636 (= lt!93446 (getCurrentListMapNoExtraKeys!204 (_keys!5807 thiss!1248) (_values!3829 thiss!1248) (mask!9015 thiss!1248) (extraKeys!3583 thiss!1248) (zeroValue!3687 thiss!1248) (minValue!3687 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3846 thiss!1248)))))

(declare-fun lt!93435 () (_ BitVec 64))

(assert (=> b!188636 (= lt!93435 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93447 () (_ BitVec 64))

(assert (=> b!188636 (= lt!93447 (select (arr!3784 (_keys!5807 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!188636 (= lt!93454 (addApplyDifferent!150 lt!93446 lt!93435 (minValue!3687 thiss!1248) lt!93447))))

(assert (=> b!188636 (= (apply!174 (+!289 lt!93446 (tuple2!3491 lt!93435 (minValue!3687 thiss!1248))) lt!93447) (apply!174 lt!93446 lt!93447))))

(declare-fun b!188637 () Bool)

(declare-fun e!124169 () Bool)

(declare-fun lt!93451 () ListLongMap!2421)

(declare-fun get!2182 (ValueCell!1857 V!5515) V!5515)

(declare-fun dynLambda!512 (Int (_ BitVec 64)) V!5515)

(assert (=> b!188637 (= e!124169 (= (apply!174 lt!93451 (select (arr!3784 (_keys!5807 thiss!1248)) #b00000000000000000000000000000000)) (get!2182 (select (arr!3785 (_values!3829 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!512 (defaultEntry!3846 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!188637 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4105 (_values!3829 thiss!1248))))))

(assert (=> b!188637 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4104 (_keys!5807 thiss!1248))))))

(declare-fun b!188638 () Bool)

(declare-fun e!124167 () Bool)

(assert (=> b!188638 (= e!124167 (= (apply!174 lt!93451 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3687 thiss!1248)))))

(declare-fun bm!19016 () Bool)

(declare-fun call!19022 () ListLongMap!2421)

(assert (=> bm!19016 (= call!19022 (getCurrentListMapNoExtraKeys!204 (_keys!5807 thiss!1248) (_values!3829 thiss!1248) (mask!9015 thiss!1248) (extraKeys!3583 thiss!1248) (zeroValue!3687 thiss!1248) (minValue!3687 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3846 thiss!1248)))))

(declare-fun b!188639 () Bool)

(declare-fun e!124171 () Bool)

(assert (=> b!188639 (= e!124171 e!124169)))

(declare-fun res!89193 () Bool)

(assert (=> b!188639 (=> (not res!89193) (not e!124169))))

(assert (=> b!188639 (= res!89193 (contains!1324 lt!93451 (select (arr!3784 (_keys!5807 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!188639 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4104 (_keys!5807 thiss!1248))))))

(declare-fun b!188640 () Bool)

(declare-fun e!124163 () ListLongMap!2421)

(declare-fun call!19023 () ListLongMap!2421)

(assert (=> b!188640 (= e!124163 call!19023)))

(declare-fun b!188641 () Bool)

(declare-fun e!124161 () ListLongMap!2421)

(assert (=> b!188641 (= e!124161 e!124163)))

(declare-fun c!33894 () Bool)

(assert (=> b!188641 (= c!33894 (and (not (= (bvand (extraKeys!3583 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3583 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!19017 () Bool)

(declare-fun call!19025 () Bool)

(assert (=> bm!19017 (= call!19025 (contains!1324 lt!93451 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!188642 () Bool)

(declare-fun Unit!5687 () Unit!5683)

(assert (=> b!188642 (= e!124166 Unit!5687)))

(declare-fun b!188643 () Bool)

(declare-fun e!124162 () ListLongMap!2421)

(assert (=> b!188643 (= e!124162 call!19023)))

(declare-fun b!188644 () Bool)

(declare-fun e!124160 () Bool)

(assert (=> b!188644 (= e!124160 (validKeyInArray!0 (select (arr!3784 (_keys!5807 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun call!19021 () ListLongMap!2421)

(declare-fun bm!19018 () Bool)

(declare-fun c!33893 () Bool)

(declare-fun call!19020 () ListLongMap!2421)

(declare-fun call!19024 () ListLongMap!2421)

(assert (=> bm!19018 (= call!19021 (+!289 (ite c!33893 call!19022 (ite c!33894 call!19024 call!19020)) (ite (or c!33893 c!33894) (tuple2!3491 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3687 thiss!1248)) (tuple2!3491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3687 thiss!1248)))))))

(declare-fun d!55565 () Bool)

(declare-fun e!124165 () Bool)

(assert (=> d!55565 e!124165))

(declare-fun res!89195 () Bool)

(assert (=> d!55565 (=> (not res!89195) (not e!124165))))

(assert (=> d!55565 (= res!89195 (or (bvsge #b00000000000000000000000000000000 (size!4104 (_keys!5807 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4104 (_keys!5807 thiss!1248))))))))

(declare-fun lt!93450 () ListLongMap!2421)

(assert (=> d!55565 (= lt!93451 lt!93450)))

(declare-fun lt!93437 () Unit!5683)

(assert (=> d!55565 (= lt!93437 e!124166)))

(declare-fun c!33898 () Bool)

(declare-fun e!124164 () Bool)

(assert (=> d!55565 (= c!33898 e!124164)))

(declare-fun res!89189 () Bool)

(assert (=> d!55565 (=> (not res!89189) (not e!124164))))

(assert (=> d!55565 (= res!89189 (bvslt #b00000000000000000000000000000000 (size!4104 (_keys!5807 thiss!1248))))))

(assert (=> d!55565 (= lt!93450 e!124161)))

(assert (=> d!55565 (= c!33893 (and (not (= (bvand (extraKeys!3583 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3583 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!55565 (validMask!0 (mask!9015 thiss!1248))))

(assert (=> d!55565 (= (getCurrentListMap!869 (_keys!5807 thiss!1248) (_values!3829 thiss!1248) (mask!9015 thiss!1248) (extraKeys!3583 thiss!1248) (zeroValue!3687 thiss!1248) (minValue!3687 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3846 thiss!1248)) lt!93451)))

(declare-fun b!188645 () Bool)

(assert (=> b!188645 (= e!124164 (validKeyInArray!0 (select (arr!3784 (_keys!5807 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!188646 () Bool)

(assert (=> b!188646 (= e!124161 (+!289 call!19021 (tuple2!3491 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3687 thiss!1248))))))

(declare-fun bm!19019 () Bool)

(assert (=> bm!19019 (= call!19020 call!19024)))

(declare-fun b!188647 () Bool)

(assert (=> b!188647 (= e!124162 call!19020)))

(declare-fun b!188648 () Bool)

(declare-fun c!33896 () Bool)

(assert (=> b!188648 (= c!33896 (and (not (= (bvand (extraKeys!3583 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3583 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!188648 (= e!124163 e!124162)))

(declare-fun b!188649 () Bool)

(declare-fun e!124172 () Bool)

(assert (=> b!188649 (= e!124172 e!124167)))

(declare-fun res!89194 () Bool)

(assert (=> b!188649 (= res!89194 call!19025)))

(assert (=> b!188649 (=> (not res!89194) (not e!124167))))

(declare-fun b!188650 () Bool)

(assert (=> b!188650 (= e!124172 (not call!19025))))

(declare-fun b!188651 () Bool)

(declare-fun e!124168 () Bool)

(assert (=> b!188651 (= e!124170 e!124168)))

(declare-fun res!89196 () Bool)

(assert (=> b!188651 (= res!89196 call!19019)))

(assert (=> b!188651 (=> (not res!89196) (not e!124168))))

(declare-fun b!188652 () Bool)

(declare-fun res!89197 () Bool)

(assert (=> b!188652 (=> (not res!89197) (not e!124165))))

(assert (=> b!188652 (= res!89197 e!124171)))

(declare-fun res!89190 () Bool)

(assert (=> b!188652 (=> res!89190 e!124171)))

(assert (=> b!188652 (= res!89190 (not e!124160))))

(declare-fun res!89191 () Bool)

(assert (=> b!188652 (=> (not res!89191) (not e!124160))))

(assert (=> b!188652 (= res!89191 (bvslt #b00000000000000000000000000000000 (size!4104 (_keys!5807 thiss!1248))))))

(declare-fun bm!19020 () Bool)

(assert (=> bm!19020 (= call!19024 call!19022)))

(declare-fun b!188653 () Bool)

(assert (=> b!188653 (= e!124168 (= (apply!174 lt!93451 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3687 thiss!1248)))))

(declare-fun bm!19021 () Bool)

(assert (=> bm!19021 (= call!19019 (contains!1324 lt!93451 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!19022 () Bool)

(assert (=> bm!19022 (= call!19023 call!19021)))

(declare-fun b!188654 () Bool)

(assert (=> b!188654 (= e!124165 e!124172)))

(declare-fun c!33895 () Bool)

(assert (=> b!188654 (= c!33895 (not (= (bvand (extraKeys!3583 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!188655 () Bool)

(declare-fun res!89192 () Bool)

(assert (=> b!188655 (=> (not res!89192) (not e!124165))))

(assert (=> b!188655 (= res!89192 e!124170)))

(declare-fun c!33897 () Bool)

(assert (=> b!188655 (= c!33897 (not (= (bvand (extraKeys!3583 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and d!55565 c!33893) b!188646))

(assert (= (and d!55565 (not c!33893)) b!188641))

(assert (= (and b!188641 c!33894) b!188640))

(assert (= (and b!188641 (not c!33894)) b!188648))

(assert (= (and b!188648 c!33896) b!188643))

(assert (= (and b!188648 (not c!33896)) b!188647))

(assert (= (or b!188643 b!188647) bm!19019))

(assert (= (or b!188640 bm!19019) bm!19020))

(assert (= (or b!188640 b!188643) bm!19022))

(assert (= (or b!188646 bm!19020) bm!19016))

(assert (= (or b!188646 bm!19022) bm!19018))

(assert (= (and d!55565 res!89189) b!188645))

(assert (= (and d!55565 c!33898) b!188636))

(assert (= (and d!55565 (not c!33898)) b!188642))

(assert (= (and d!55565 res!89195) b!188652))

(assert (= (and b!188652 res!89191) b!188644))

(assert (= (and b!188652 (not res!89190)) b!188639))

(assert (= (and b!188639 res!89193) b!188637))

(assert (= (and b!188652 res!89197) b!188655))

(assert (= (and b!188655 c!33897) b!188651))

(assert (= (and b!188655 (not c!33897)) b!188635))

(assert (= (and b!188651 res!89196) b!188653))

(assert (= (or b!188651 b!188635) bm!19021))

(assert (= (and b!188655 res!89192) b!188654))

(assert (= (and b!188654 c!33895) b!188649))

(assert (= (and b!188654 (not c!33895)) b!188650))

(assert (= (and b!188649 res!89194) b!188638))

(assert (= (or b!188649 b!188650) bm!19017))

(declare-fun b_lambda!7345 () Bool)

(assert (=> (not b_lambda!7345) (not b!188637)))

(declare-fun t!7322 () Bool)

(declare-fun tb!2867 () Bool)

(assert (=> (and b!188516 (= (defaultEntry!3846 thiss!1248) (defaultEntry!3846 thiss!1248)) t!7322) tb!2867))

(declare-fun result!4863 () Bool)

(assert (=> tb!2867 (= result!4863 tp_is_empty!4401)))

(assert (=> b!188637 t!7322))

(declare-fun b_and!11283 () Bool)

(assert (= b_and!11279 (and (=> t!7322 result!4863) b_and!11283)))

(declare-fun m!215239 () Bool)

(assert (=> b!188646 m!215239))

(declare-fun m!215241 () Bool)

(assert (=> bm!19017 m!215241))

(assert (=> b!188645 m!215219))

(assert (=> b!188645 m!215219))

(assert (=> b!188645 m!215229))

(declare-fun m!215243 () Bool)

(assert (=> b!188636 m!215243))

(declare-fun m!215245 () Bool)

(assert (=> b!188636 m!215245))

(declare-fun m!215247 () Bool)

(assert (=> b!188636 m!215247))

(declare-fun m!215249 () Bool)

(assert (=> b!188636 m!215249))

(declare-fun m!215251 () Bool)

(assert (=> b!188636 m!215251))

(declare-fun m!215253 () Bool)

(assert (=> b!188636 m!215253))

(assert (=> b!188636 m!215219))

(declare-fun m!215255 () Bool)

(assert (=> b!188636 m!215255))

(declare-fun m!215257 () Bool)

(assert (=> b!188636 m!215257))

(assert (=> b!188636 m!215255))

(assert (=> b!188636 m!215247))

(assert (=> b!188636 m!215243))

(declare-fun m!215259 () Bool)

(assert (=> b!188636 m!215259))

(declare-fun m!215261 () Bool)

(assert (=> b!188636 m!215261))

(declare-fun m!215263 () Bool)

(assert (=> b!188636 m!215263))

(declare-fun m!215265 () Bool)

(assert (=> b!188636 m!215265))

(declare-fun m!215267 () Bool)

(assert (=> b!188636 m!215267))

(declare-fun m!215269 () Bool)

(assert (=> b!188636 m!215269))

(declare-fun m!215271 () Bool)

(assert (=> b!188636 m!215271))

(declare-fun m!215273 () Bool)

(assert (=> b!188636 m!215273))

(assert (=> b!188636 m!215251))

(assert (=> d!55565 m!215171))

(declare-fun m!215275 () Bool)

(assert (=> bm!19018 m!215275))

(assert (=> b!188639 m!215219))

(assert (=> b!188639 m!215219))

(declare-fun m!215277 () Bool)

(assert (=> b!188639 m!215277))

(declare-fun m!215279 () Bool)

(assert (=> b!188638 m!215279))

(assert (=> b!188637 m!215219))

(assert (=> b!188637 m!215219))

(declare-fun m!215281 () Bool)

(assert (=> b!188637 m!215281))

(declare-fun m!215283 () Bool)

(assert (=> b!188637 m!215283))

(declare-fun m!215285 () Bool)

(assert (=> b!188637 m!215285))

(declare-fun m!215287 () Bool)

(assert (=> b!188637 m!215287))

(assert (=> b!188637 m!215283))

(assert (=> b!188637 m!215285))

(declare-fun m!215289 () Bool)

(assert (=> b!188653 m!215289))

(declare-fun m!215291 () Bool)

(assert (=> bm!19021 m!215291))

(assert (=> b!188644 m!215219))

(assert (=> b!188644 m!215219))

(assert (=> b!188644 m!215229))

(assert (=> bm!19016 m!215271))

(assert (=> b!188517 d!55565))

(declare-fun call!19030 () Bool)

(declare-fun lt!93461 () SeekEntryResult!665)

(declare-fun bm!19027 () Bool)

(declare-fun c!33904 () Bool)

(assert (=> bm!19027 (= call!19030 (inRange!0 (ite c!33904 (index!4830 lt!93461) (index!4833 lt!93461)) (mask!9015 thiss!1248)))))

(declare-fun b!188674 () Bool)

(assert (=> b!188674 (and (bvsge (index!4830 lt!93461) #b00000000000000000000000000000000) (bvslt (index!4830 lt!93461) (size!4104 (_keys!5807 thiss!1248))))))

(declare-fun res!89206 () Bool)

(assert (=> b!188674 (= res!89206 (= (select (arr!3784 (_keys!5807 thiss!1248)) (index!4830 lt!93461)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!124184 () Bool)

(assert (=> b!188674 (=> (not res!89206) (not e!124184))))

(declare-fun b!188675 () Bool)

(declare-fun res!89207 () Bool)

(declare-fun e!124182 () Bool)

(assert (=> b!188675 (=> (not res!89207) (not e!124182))))

(assert (=> b!188675 (= res!89207 call!19030)))

(declare-fun e!124183 () Bool)

(assert (=> b!188675 (= e!124183 e!124182)))

(declare-fun b!188676 () Bool)

(declare-fun call!19031 () Bool)

(assert (=> b!188676 (= e!124184 (not call!19031))))

(declare-fun b!188678 () Bool)

(declare-fun e!124181 () Bool)

(assert (=> b!188678 (= e!124181 e!124183)))

(declare-fun c!33903 () Bool)

(assert (=> b!188678 (= c!33903 ((_ is MissingVacant!665) lt!93461))))

(declare-fun b!188679 () Bool)

(assert (=> b!188679 (= e!124181 e!124184)))

(declare-fun res!89209 () Bool)

(assert (=> b!188679 (= res!89209 call!19030)))

(assert (=> b!188679 (=> (not res!89209) (not e!124184))))

(declare-fun b!188680 () Bool)

(assert (=> b!188680 (= e!124183 ((_ is Undefined!665) lt!93461))))

(declare-fun bm!19028 () Bool)

(assert (=> bm!19028 (= call!19031 (arrayContainsKey!0 (_keys!5807 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun b!188681 () Bool)

(assert (=> b!188681 (= e!124182 (not call!19031))))

(declare-fun b!188677 () Bool)

(declare-fun res!89208 () Bool)

(assert (=> b!188677 (=> (not res!89208) (not e!124182))))

(assert (=> b!188677 (= res!89208 (= (select (arr!3784 (_keys!5807 thiss!1248)) (index!4833 lt!93461)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!188677 (and (bvsge (index!4833 lt!93461) #b00000000000000000000000000000000) (bvslt (index!4833 lt!93461) (size!4104 (_keys!5807 thiss!1248))))))

(declare-fun d!55567 () Bool)

(assert (=> d!55567 e!124181))

(assert (=> d!55567 (= c!33904 ((_ is MissingZero!665) lt!93461))))

(assert (=> d!55567 (= lt!93461 (seekEntryOrOpen!0 key!828 (_keys!5807 thiss!1248) (mask!9015 thiss!1248)))))

(declare-fun lt!93462 () Unit!5683)

(declare-fun choose!1017 (array!8024 array!8026 (_ BitVec 32) (_ BitVec 32) V!5515 V!5515 (_ BitVec 64) Int) Unit!5683)

(assert (=> d!55567 (= lt!93462 (choose!1017 (_keys!5807 thiss!1248) (_values!3829 thiss!1248) (mask!9015 thiss!1248) (extraKeys!3583 thiss!1248) (zeroValue!3687 thiss!1248) (minValue!3687 thiss!1248) key!828 (defaultEntry!3846 thiss!1248)))))

(assert (=> d!55567 (validMask!0 (mask!9015 thiss!1248))))

(assert (=> d!55567 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!159 (_keys!5807 thiss!1248) (_values!3829 thiss!1248) (mask!9015 thiss!1248) (extraKeys!3583 thiss!1248) (zeroValue!3687 thiss!1248) (minValue!3687 thiss!1248) key!828 (defaultEntry!3846 thiss!1248)) lt!93462)))

(assert (= (and d!55567 c!33904) b!188679))

(assert (= (and d!55567 (not c!33904)) b!188678))

(assert (= (and b!188679 res!89209) b!188674))

(assert (= (and b!188674 res!89206) b!188676))

(assert (= (and b!188678 c!33903) b!188675))

(assert (= (and b!188678 (not c!33903)) b!188680))

(assert (= (and b!188675 res!89207) b!188677))

(assert (= (and b!188677 res!89208) b!188681))

(assert (= (or b!188679 b!188675) bm!19027))

(assert (= (or b!188676 b!188681) bm!19028))

(declare-fun m!215293 () Bool)

(assert (=> bm!19028 m!215293))

(assert (=> d!55567 m!215161))

(declare-fun m!215295 () Bool)

(assert (=> d!55567 m!215295))

(assert (=> d!55567 m!215171))

(declare-fun m!215297 () Bool)

(assert (=> bm!19027 m!215297))

(declare-fun m!215299 () Bool)

(assert (=> b!188677 m!215299))

(declare-fun m!215301 () Bool)

(assert (=> b!188674 m!215301))

(assert (=> b!188519 d!55567))

(declare-fun d!55569 () Bool)

(declare-fun res!89216 () Bool)

(declare-fun e!124187 () Bool)

(assert (=> d!55569 (=> (not res!89216) (not e!124187))))

(declare-fun simpleValid!189 (LongMapFixedSize!2622) Bool)

(assert (=> d!55569 (= res!89216 (simpleValid!189 thiss!1248))))

(assert (=> d!55569 (= (valid!1071 thiss!1248) e!124187)))

(declare-fun b!188688 () Bool)

(declare-fun res!89217 () Bool)

(assert (=> b!188688 (=> (not res!89217) (not e!124187))))

(declare-fun arrayCountValidKeys!0 (array!8024 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!188688 (= res!89217 (= (arrayCountValidKeys!0 (_keys!5807 thiss!1248) #b00000000000000000000000000000000 (size!4104 (_keys!5807 thiss!1248))) (_size!1360 thiss!1248)))))

(declare-fun b!188689 () Bool)

(declare-fun res!89218 () Bool)

(assert (=> b!188689 (=> (not res!89218) (not e!124187))))

(assert (=> b!188689 (= res!89218 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5807 thiss!1248) (mask!9015 thiss!1248)))))

(declare-fun b!188690 () Bool)

(assert (=> b!188690 (= e!124187 (arrayNoDuplicates!0 (_keys!5807 thiss!1248) #b00000000000000000000000000000000 Nil!2411))))

(assert (= (and d!55569 res!89216) b!188688))

(assert (= (and b!188688 res!89217) b!188689))

(assert (= (and b!188689 res!89218) b!188690))

(declare-fun m!215303 () Bool)

(assert (=> d!55569 m!215303))

(declare-fun m!215305 () Bool)

(assert (=> b!188688 m!215305))

(assert (=> b!188689 m!215169))

(assert (=> b!188690 m!215163))

(assert (=> start!19176 d!55569))

(declare-fun b!188701 () Bool)

(declare-fun e!124196 () Bool)

(declare-fun e!124199 () Bool)

(assert (=> b!188701 (= e!124196 e!124199)))

(declare-fun res!89227 () Bool)

(assert (=> b!188701 (=> (not res!89227) (not e!124199))))

(declare-fun e!124197 () Bool)

(assert (=> b!188701 (= res!89227 (not e!124197))))

(declare-fun res!89226 () Bool)

(assert (=> b!188701 (=> (not res!89226) (not e!124197))))

(assert (=> b!188701 (= res!89226 (validKeyInArray!0 (select (arr!3784 (_keys!5807 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!188702 () Bool)

(declare-fun e!124198 () Bool)

(declare-fun call!19034 () Bool)

(assert (=> b!188702 (= e!124198 call!19034)))

(declare-fun b!188703 () Bool)

(assert (=> b!188703 (= e!124199 e!124198)))

(declare-fun c!33907 () Bool)

(assert (=> b!188703 (= c!33907 (validKeyInArray!0 (select (arr!3784 (_keys!5807 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!188704 () Bool)

(declare-fun contains!1325 (List!2414 (_ BitVec 64)) Bool)

(assert (=> b!188704 (= e!124197 (contains!1325 Nil!2411 (select (arr!3784 (_keys!5807 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!55571 () Bool)

(declare-fun res!89225 () Bool)

(assert (=> d!55571 (=> res!89225 e!124196)))

(assert (=> d!55571 (= res!89225 (bvsge #b00000000000000000000000000000000 (size!4104 (_keys!5807 thiss!1248))))))

(assert (=> d!55571 (= (arrayNoDuplicates!0 (_keys!5807 thiss!1248) #b00000000000000000000000000000000 Nil!2411) e!124196)))

(declare-fun bm!19031 () Bool)

(assert (=> bm!19031 (= call!19034 (arrayNoDuplicates!0 (_keys!5807 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!33907 (Cons!2410 (select (arr!3784 (_keys!5807 thiss!1248)) #b00000000000000000000000000000000) Nil!2411) Nil!2411)))))

(declare-fun b!188705 () Bool)

(assert (=> b!188705 (= e!124198 call!19034)))

(assert (= (and d!55571 (not res!89225)) b!188701))

(assert (= (and b!188701 res!89226) b!188704))

(assert (= (and b!188701 res!89227) b!188703))

(assert (= (and b!188703 c!33907) b!188702))

(assert (= (and b!188703 (not c!33907)) b!188705))

(assert (= (or b!188702 b!188705) bm!19031))

(assert (=> b!188701 m!215219))

(assert (=> b!188701 m!215219))

(assert (=> b!188701 m!215229))

(assert (=> b!188703 m!215219))

(assert (=> b!188703 m!215219))

(assert (=> b!188703 m!215229))

(assert (=> b!188704 m!215219))

(assert (=> b!188704 m!215219))

(declare-fun m!215307 () Bool)

(assert (=> b!188704 m!215307))

(assert (=> bm!19031 m!215219))

(declare-fun m!215309 () Bool)

(assert (=> bm!19031 m!215309))

(assert (=> b!188518 d!55571))

(declare-fun lt!93471 () SeekEntryResult!665)

(declare-fun b!188718 () Bool)

(declare-fun e!124207 () SeekEntryResult!665)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8024 (_ BitVec 32)) SeekEntryResult!665)

(assert (=> b!188718 (= e!124207 (seekKeyOrZeroReturnVacant!0 (x!20369 lt!93471) (index!4832 lt!93471) (index!4832 lt!93471) key!828 (_keys!5807 thiss!1248) (mask!9015 thiss!1248)))))

(declare-fun b!188719 () Bool)

(assert (=> b!188719 (= e!124207 (MissingZero!665 (index!4832 lt!93471)))))

(declare-fun b!188720 () Bool)

(declare-fun e!124206 () SeekEntryResult!665)

(assert (=> b!188720 (= e!124206 Undefined!665)))

(declare-fun b!188721 () Bool)

(declare-fun e!124208 () SeekEntryResult!665)

(assert (=> b!188721 (= e!124206 e!124208)))

(declare-fun lt!93469 () (_ BitVec 64))

(assert (=> b!188721 (= lt!93469 (select (arr!3784 (_keys!5807 thiss!1248)) (index!4832 lt!93471)))))

(declare-fun c!33915 () Bool)

(assert (=> b!188721 (= c!33915 (= lt!93469 key!828))))

(declare-fun b!188722 () Bool)

(assert (=> b!188722 (= e!124208 (Found!665 (index!4832 lt!93471)))))

(declare-fun d!55573 () Bool)

(declare-fun lt!93470 () SeekEntryResult!665)

(assert (=> d!55573 (and (or ((_ is Undefined!665) lt!93470) (not ((_ is Found!665) lt!93470)) (and (bvsge (index!4831 lt!93470) #b00000000000000000000000000000000) (bvslt (index!4831 lt!93470) (size!4104 (_keys!5807 thiss!1248))))) (or ((_ is Undefined!665) lt!93470) ((_ is Found!665) lt!93470) (not ((_ is MissingZero!665) lt!93470)) (and (bvsge (index!4830 lt!93470) #b00000000000000000000000000000000) (bvslt (index!4830 lt!93470) (size!4104 (_keys!5807 thiss!1248))))) (or ((_ is Undefined!665) lt!93470) ((_ is Found!665) lt!93470) ((_ is MissingZero!665) lt!93470) (not ((_ is MissingVacant!665) lt!93470)) (and (bvsge (index!4833 lt!93470) #b00000000000000000000000000000000) (bvslt (index!4833 lt!93470) (size!4104 (_keys!5807 thiss!1248))))) (or ((_ is Undefined!665) lt!93470) (ite ((_ is Found!665) lt!93470) (= (select (arr!3784 (_keys!5807 thiss!1248)) (index!4831 lt!93470)) key!828) (ite ((_ is MissingZero!665) lt!93470) (= (select (arr!3784 (_keys!5807 thiss!1248)) (index!4830 lt!93470)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!665) lt!93470) (= (select (arr!3784 (_keys!5807 thiss!1248)) (index!4833 lt!93470)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!55573 (= lt!93470 e!124206)))

(declare-fun c!33914 () Bool)

(assert (=> d!55573 (= c!33914 (and ((_ is Intermediate!665) lt!93471) (undefined!1477 lt!93471)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8024 (_ BitVec 32)) SeekEntryResult!665)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!55573 (= lt!93471 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!9015 thiss!1248)) key!828 (_keys!5807 thiss!1248) (mask!9015 thiss!1248)))))

(assert (=> d!55573 (validMask!0 (mask!9015 thiss!1248))))

(assert (=> d!55573 (= (seekEntryOrOpen!0 key!828 (_keys!5807 thiss!1248) (mask!9015 thiss!1248)) lt!93470)))

(declare-fun b!188723 () Bool)

(declare-fun c!33916 () Bool)

(assert (=> b!188723 (= c!33916 (= lt!93469 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!188723 (= e!124208 e!124207)))

(assert (= (and d!55573 c!33914) b!188720))

(assert (= (and d!55573 (not c!33914)) b!188721))

(assert (= (and b!188721 c!33915) b!188722))

(assert (= (and b!188721 (not c!33915)) b!188723))

(assert (= (and b!188723 c!33916) b!188719))

(assert (= (and b!188723 (not c!33916)) b!188718))

(declare-fun m!215311 () Bool)

(assert (=> b!188718 m!215311))

(declare-fun m!215313 () Bool)

(assert (=> b!188721 m!215313))

(declare-fun m!215315 () Bool)

(assert (=> d!55573 m!215315))

(declare-fun m!215317 () Bool)

(assert (=> d!55573 m!215317))

(assert (=> d!55573 m!215171))

(declare-fun m!215319 () Bool)

(assert (=> d!55573 m!215319))

(assert (=> d!55573 m!215317))

(declare-fun m!215321 () Bool)

(assert (=> d!55573 m!215321))

(declare-fun m!215323 () Bool)

(assert (=> d!55573 m!215323))

(assert (=> b!188514 d!55573))

(declare-fun b!188730 () Bool)

(declare-fun e!124214 () Bool)

(assert (=> b!188730 (= e!124214 tp_is_empty!4401)))

(declare-fun condMapEmpty!7594 () Bool)

(declare-fun mapDefault!7594 () ValueCell!1857)

(assert (=> mapNonEmpty!7588 (= condMapEmpty!7594 (= mapRest!7588 ((as const (Array (_ BitVec 32) ValueCell!1857)) mapDefault!7594)))))

(declare-fun e!124213 () Bool)

(declare-fun mapRes!7594 () Bool)

(assert (=> mapNonEmpty!7588 (= tp!16710 (and e!124213 mapRes!7594))))

(declare-fun b!188731 () Bool)

(assert (=> b!188731 (= e!124213 tp_is_empty!4401)))

(declare-fun mapIsEmpty!7594 () Bool)

(assert (=> mapIsEmpty!7594 mapRes!7594))

(declare-fun mapNonEmpty!7594 () Bool)

(declare-fun tp!16720 () Bool)

(assert (=> mapNonEmpty!7594 (= mapRes!7594 (and tp!16720 e!124214))))

(declare-fun mapKey!7594 () (_ BitVec 32))

(declare-fun mapValue!7594 () ValueCell!1857)

(declare-fun mapRest!7594 () (Array (_ BitVec 32) ValueCell!1857))

(assert (=> mapNonEmpty!7594 (= mapRest!7588 (store mapRest!7594 mapKey!7594 mapValue!7594))))

(assert (= (and mapNonEmpty!7588 condMapEmpty!7594) mapIsEmpty!7594))

(assert (= (and mapNonEmpty!7588 (not condMapEmpty!7594)) mapNonEmpty!7594))

(assert (= (and mapNonEmpty!7594 ((_ is ValueCellFull!1857) mapValue!7594)) b!188730))

(assert (= (and mapNonEmpty!7588 ((_ is ValueCellFull!1857) mapDefault!7594)) b!188731))

(declare-fun m!215325 () Bool)

(assert (=> mapNonEmpty!7594 m!215325))

(declare-fun b_lambda!7347 () Bool)

(assert (= b_lambda!7345 (or (and b!188516 b_free!4629) b_lambda!7347)))

(check-sat (not d!55555) (not b!188570) (not b!188703) (not b!188689) (not bm!19016) (not bm!19017) (not b!188688) (not b!188636) (not b!188653) (not b!188581) (not b!188645) (not bm!19031) (not d!55573) (not d!55567) (not d!55565) (not b!188644) (not b!188718) (not b!188701) (not b!188646) (not b!188704) (not bm!19021) (not b!188590) (not bm!19001) tp_is_empty!4401 (not b!188690) (not bm!19027) (not b!188638) (not d!55569) (not b!188637) (not b!188583) (not b!188639) (not b!188592) b_and!11283 (not bm!19018) (not d!55563) (not bm!19028) (not b_next!4629) (not b_lambda!7347) (not mapNonEmpty!7594))
(check-sat b_and!11283 (not b_next!4629))
