; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17116 () Bool)

(assert start!17116)

(declare-fun b!172023 () Bool)

(declare-fun b_free!4239 () Bool)

(declare-fun b_next!4239 () Bool)

(assert (=> b!172023 (= b_free!4239 (not b_next!4239))))

(declare-fun tp!15351 () Bool)

(declare-fun b_and!10697 () Bool)

(assert (=> b!172023 (= tp!15351 b_and!10697)))

(declare-fun b!172021 () Bool)

(declare-fun e!113539 () Bool)

(declare-fun e!113540 () Bool)

(declare-fun mapRes!6814 () Bool)

(assert (=> b!172021 (= e!113539 (and e!113540 mapRes!6814))))

(declare-fun condMapEmpty!6814 () Bool)

(declare-datatypes ((V!4995 0))(
  ( (V!4996 (val!2050 Int)) )
))
(declare-datatypes ((ValueCell!1662 0))(
  ( (ValueCellFull!1662 (v!3914 V!4995)) (EmptyCell!1662) )
))
(declare-datatypes ((array!7136 0))(
  ( (array!7137 (arr!3394 (Array (_ BitVec 32) (_ BitVec 64))) (size!3688 (_ BitVec 32))) )
))
(declare-datatypes ((array!7138 0))(
  ( (array!7139 (arr!3395 (Array (_ BitVec 32) ValueCell!1662)) (size!3689 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2232 0))(
  ( (LongMapFixedSize!2233 (defaultEntry!3562 Int) (mask!8395 (_ BitVec 32)) (extraKeys!3301 (_ BitVec 32)) (zeroValue!3403 V!4995) (minValue!3405 V!4995) (_size!1165 (_ BitVec 32)) (_keys!5396 array!7136) (_values!3545 array!7138) (_vacant!1165 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2232)

(declare-fun mapDefault!6814 () ValueCell!1662)

(assert (=> b!172021 (= condMapEmpty!6814 (= (arr!3395 (_values!3545 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1662)) mapDefault!6814)))))

(declare-fun b!172022 () Bool)

(declare-fun e!113537 () Bool)

(declare-fun tp_is_empty!4011 () Bool)

(assert (=> b!172022 (= e!113537 tp_is_empty!4011)))

(declare-fun e!113541 () Bool)

(declare-fun array_inv!2163 (array!7136) Bool)

(declare-fun array_inv!2164 (array!7138) Bool)

(assert (=> b!172023 (= e!113541 (and tp!15351 tp_is_empty!4011 (array_inv!2163 (_keys!5396 thiss!1248)) (array_inv!2164 (_values!3545 thiss!1248)) e!113539))))

(declare-fun b!172024 () Bool)

(declare-fun e!113536 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!172024 (= e!113536 (not (validMask!0 (mask!8395 thiss!1248))))))

(declare-fun mapIsEmpty!6814 () Bool)

(assert (=> mapIsEmpty!6814 mapRes!6814))

(declare-fun b!172025 () Bool)

(assert (=> b!172025 (= e!113540 tp_is_empty!4011)))

(declare-fun mapNonEmpty!6814 () Bool)

(declare-fun tp!15352 () Bool)

(assert (=> mapNonEmpty!6814 (= mapRes!6814 (and tp!15352 e!113537))))

(declare-fun mapValue!6814 () ValueCell!1662)

(declare-fun mapKey!6814 () (_ BitVec 32))

(declare-fun mapRest!6814 () (Array (_ BitVec 32) ValueCell!1662))

(assert (=> mapNonEmpty!6814 (= (arr!3395 (_values!3545 thiss!1248)) (store mapRest!6814 mapKey!6814 mapValue!6814))))

(declare-fun b!172026 () Bool)

(declare-fun res!81698 () Bool)

(assert (=> b!172026 (=> (not res!81698) (not e!113536))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!172026 (= res!81698 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!81699 () Bool)

(assert (=> start!17116 (=> (not res!81699) (not e!113536))))

(declare-fun valid!940 (LongMapFixedSize!2232) Bool)

(assert (=> start!17116 (= res!81699 (valid!940 thiss!1248))))

(assert (=> start!17116 e!113536))

(assert (=> start!17116 e!113541))

(assert (=> start!17116 true))

(assert (= (and start!17116 res!81699) b!172026))

(assert (= (and b!172026 res!81698) b!172024))

(assert (= (and b!172021 condMapEmpty!6814) mapIsEmpty!6814))

(assert (= (and b!172021 (not condMapEmpty!6814)) mapNonEmpty!6814))

(get-info :version)

(assert (= (and mapNonEmpty!6814 ((_ is ValueCellFull!1662) mapValue!6814)) b!172022))

(assert (= (and b!172021 ((_ is ValueCellFull!1662) mapDefault!6814)) b!172025))

(assert (= b!172023 b!172021))

(assert (= start!17116 b!172023))

(declare-fun m!201031 () Bool)

(assert (=> b!172023 m!201031))

(declare-fun m!201033 () Bool)

(assert (=> b!172023 m!201033))

(declare-fun m!201035 () Bool)

(assert (=> b!172024 m!201035))

(declare-fun m!201037 () Bool)

(assert (=> mapNonEmpty!6814 m!201037))

(declare-fun m!201039 () Bool)

(assert (=> start!17116 m!201039))

(check-sat b_and!10697 (not mapNonEmpty!6814) tp_is_empty!4011 (not b_next!4239) (not start!17116) (not b!172023) (not b!172024))
(check-sat b_and!10697 (not b_next!4239))
(get-model)

(declare-fun d!52371 () Bool)

(declare-fun res!81712 () Bool)

(declare-fun e!113562 () Bool)

(assert (=> d!52371 (=> (not res!81712) (not e!113562))))

(declare-fun simpleValid!135 (LongMapFixedSize!2232) Bool)

(assert (=> d!52371 (= res!81712 (simpleValid!135 thiss!1248))))

(assert (=> d!52371 (= (valid!940 thiss!1248) e!113562)))

(declare-fun b!172051 () Bool)

(declare-fun res!81713 () Bool)

(assert (=> b!172051 (=> (not res!81713) (not e!113562))))

(declare-fun arrayCountValidKeys!0 (array!7136 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!172051 (= res!81713 (= (arrayCountValidKeys!0 (_keys!5396 thiss!1248) #b00000000000000000000000000000000 (size!3688 (_keys!5396 thiss!1248))) (_size!1165 thiss!1248)))))

(declare-fun b!172052 () Bool)

(declare-fun res!81714 () Bool)

(assert (=> b!172052 (=> (not res!81714) (not e!113562))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7136 (_ BitVec 32)) Bool)

(assert (=> b!172052 (= res!81714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5396 thiss!1248) (mask!8395 thiss!1248)))))

(declare-fun b!172053 () Bool)

(declare-datatypes ((List!2216 0))(
  ( (Nil!2213) (Cons!2212 (h!2829 (_ BitVec 64)) (t!7031 List!2216)) )
))
(declare-fun arrayNoDuplicates!0 (array!7136 (_ BitVec 32) List!2216) Bool)

(assert (=> b!172053 (= e!113562 (arrayNoDuplicates!0 (_keys!5396 thiss!1248) #b00000000000000000000000000000000 Nil!2213))))

(assert (= (and d!52371 res!81712) b!172051))

(assert (= (and b!172051 res!81713) b!172052))

(assert (= (and b!172052 res!81714) b!172053))

(declare-fun m!201051 () Bool)

(assert (=> d!52371 m!201051))

(declare-fun m!201053 () Bool)

(assert (=> b!172051 m!201053))

(declare-fun m!201055 () Bool)

(assert (=> b!172052 m!201055))

(declare-fun m!201057 () Bool)

(assert (=> b!172053 m!201057))

(assert (=> start!17116 d!52371))

(declare-fun d!52373 () Bool)

(assert (=> d!52373 (= (array_inv!2163 (_keys!5396 thiss!1248)) (bvsge (size!3688 (_keys!5396 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!172023 d!52373))

(declare-fun d!52375 () Bool)

(assert (=> d!52375 (= (array_inv!2164 (_values!3545 thiss!1248)) (bvsge (size!3689 (_values!3545 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!172023 d!52375))

(declare-fun d!52377 () Bool)

(assert (=> d!52377 (= (validMask!0 (mask!8395 thiss!1248)) (and (or (= (mask!8395 thiss!1248) #b00000000000000000000000000000111) (= (mask!8395 thiss!1248) #b00000000000000000000000000001111) (= (mask!8395 thiss!1248) #b00000000000000000000000000011111) (= (mask!8395 thiss!1248) #b00000000000000000000000000111111) (= (mask!8395 thiss!1248) #b00000000000000000000000001111111) (= (mask!8395 thiss!1248) #b00000000000000000000000011111111) (= (mask!8395 thiss!1248) #b00000000000000000000000111111111) (= (mask!8395 thiss!1248) #b00000000000000000000001111111111) (= (mask!8395 thiss!1248) #b00000000000000000000011111111111) (= (mask!8395 thiss!1248) #b00000000000000000000111111111111) (= (mask!8395 thiss!1248) #b00000000000000000001111111111111) (= (mask!8395 thiss!1248) #b00000000000000000011111111111111) (= (mask!8395 thiss!1248) #b00000000000000000111111111111111) (= (mask!8395 thiss!1248) #b00000000000000001111111111111111) (= (mask!8395 thiss!1248) #b00000000000000011111111111111111) (= (mask!8395 thiss!1248) #b00000000000000111111111111111111) (= (mask!8395 thiss!1248) #b00000000000001111111111111111111) (= (mask!8395 thiss!1248) #b00000000000011111111111111111111) (= (mask!8395 thiss!1248) #b00000000000111111111111111111111) (= (mask!8395 thiss!1248) #b00000000001111111111111111111111) (= (mask!8395 thiss!1248) #b00000000011111111111111111111111) (= (mask!8395 thiss!1248) #b00000000111111111111111111111111) (= (mask!8395 thiss!1248) #b00000001111111111111111111111111) (= (mask!8395 thiss!1248) #b00000011111111111111111111111111) (= (mask!8395 thiss!1248) #b00000111111111111111111111111111) (= (mask!8395 thiss!1248) #b00001111111111111111111111111111) (= (mask!8395 thiss!1248) #b00011111111111111111111111111111) (= (mask!8395 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8395 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!172024 d!52377))

(declare-fun condMapEmpty!6820 () Bool)

(declare-fun mapDefault!6820 () ValueCell!1662)

(assert (=> mapNonEmpty!6814 (= condMapEmpty!6820 (= mapRest!6814 ((as const (Array (_ BitVec 32) ValueCell!1662)) mapDefault!6820)))))

(declare-fun e!113568 () Bool)

(declare-fun mapRes!6820 () Bool)

(assert (=> mapNonEmpty!6814 (= tp!15352 (and e!113568 mapRes!6820))))

(declare-fun mapIsEmpty!6820 () Bool)

(assert (=> mapIsEmpty!6820 mapRes!6820))

(declare-fun b!172061 () Bool)

(assert (=> b!172061 (= e!113568 tp_is_empty!4011)))

(declare-fun b!172060 () Bool)

(declare-fun e!113567 () Bool)

(assert (=> b!172060 (= e!113567 tp_is_empty!4011)))

(declare-fun mapNonEmpty!6820 () Bool)

(declare-fun tp!15361 () Bool)

(assert (=> mapNonEmpty!6820 (= mapRes!6820 (and tp!15361 e!113567))))

(declare-fun mapKey!6820 () (_ BitVec 32))

(declare-fun mapValue!6820 () ValueCell!1662)

(declare-fun mapRest!6820 () (Array (_ BitVec 32) ValueCell!1662))

(assert (=> mapNonEmpty!6820 (= mapRest!6814 (store mapRest!6820 mapKey!6820 mapValue!6820))))

(assert (= (and mapNonEmpty!6814 condMapEmpty!6820) mapIsEmpty!6820))

(assert (= (and mapNonEmpty!6814 (not condMapEmpty!6820)) mapNonEmpty!6820))

(assert (= (and mapNonEmpty!6820 ((_ is ValueCellFull!1662) mapValue!6820)) b!172060))

(assert (= (and mapNonEmpty!6814 ((_ is ValueCellFull!1662) mapDefault!6820)) b!172061))

(declare-fun m!201059 () Bool)

(assert (=> mapNonEmpty!6820 m!201059))

(check-sat b_and!10697 (not b!172053) (not d!52371) (not mapNonEmpty!6820) tp_is_empty!4011 (not b!172052) (not b_next!4239) (not b!172051))
(check-sat b_and!10697 (not b_next!4239))
(get-model)

(declare-fun b!172070 () Bool)

(declare-fun res!81724 () Bool)

(declare-fun e!113571 () Bool)

(assert (=> b!172070 (=> (not res!81724) (not e!113571))))

(assert (=> b!172070 (= res!81724 (and (= (size!3689 (_values!3545 thiss!1248)) (bvadd (mask!8395 thiss!1248) #b00000000000000000000000000000001)) (= (size!3688 (_keys!5396 thiss!1248)) (size!3689 (_values!3545 thiss!1248))) (bvsge (_size!1165 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1165 thiss!1248) (bvadd (mask!8395 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!172071 () Bool)

(declare-fun res!81723 () Bool)

(assert (=> b!172071 (=> (not res!81723) (not e!113571))))

(declare-fun size!3692 (LongMapFixedSize!2232) (_ BitVec 32))

(assert (=> b!172071 (= res!81723 (bvsge (size!3692 thiss!1248) (_size!1165 thiss!1248)))))

(declare-fun d!52379 () Bool)

(declare-fun res!81726 () Bool)

(assert (=> d!52379 (=> (not res!81726) (not e!113571))))

(assert (=> d!52379 (= res!81726 (validMask!0 (mask!8395 thiss!1248)))))

(assert (=> d!52379 (= (simpleValid!135 thiss!1248) e!113571)))

(declare-fun b!172073 () Bool)

(assert (=> b!172073 (= e!113571 (and (bvsge (extraKeys!3301 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3301 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1165 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!172072 () Bool)

(declare-fun res!81725 () Bool)

(assert (=> b!172072 (=> (not res!81725) (not e!113571))))

(assert (=> b!172072 (= res!81725 (= (size!3692 thiss!1248) (bvadd (_size!1165 thiss!1248) (bvsdiv (bvadd (extraKeys!3301 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!52379 res!81726) b!172070))

(assert (= (and b!172070 res!81724) b!172071))

(assert (= (and b!172071 res!81723) b!172072))

(assert (= (and b!172072 res!81725) b!172073))

(declare-fun m!201061 () Bool)

(assert (=> b!172071 m!201061))

(assert (=> d!52379 m!201035))

(assert (=> b!172072 m!201061))

(assert (=> d!52371 d!52379))

(declare-fun b!172082 () Bool)

(declare-fun e!113577 () (_ BitVec 32))

(assert (=> b!172082 (= e!113577 #b00000000000000000000000000000000)))

(declare-fun b!172083 () Bool)

(declare-fun e!113576 () (_ BitVec 32))

(declare-fun call!17504 () (_ BitVec 32))

(assert (=> b!172083 (= e!113576 (bvadd #b00000000000000000000000000000001 call!17504))))

(declare-fun d!52381 () Bool)

(declare-fun lt!85658 () (_ BitVec 32))

(assert (=> d!52381 (and (bvsge lt!85658 #b00000000000000000000000000000000) (bvsle lt!85658 (bvsub (size!3688 (_keys!5396 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!52381 (= lt!85658 e!113577)))

(declare-fun c!30813 () Bool)

(assert (=> d!52381 (= c!30813 (bvsge #b00000000000000000000000000000000 (size!3688 (_keys!5396 thiss!1248))))))

(assert (=> d!52381 (and (bvsle #b00000000000000000000000000000000 (size!3688 (_keys!5396 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3688 (_keys!5396 thiss!1248)) (size!3688 (_keys!5396 thiss!1248))))))

(assert (=> d!52381 (= (arrayCountValidKeys!0 (_keys!5396 thiss!1248) #b00000000000000000000000000000000 (size!3688 (_keys!5396 thiss!1248))) lt!85658)))

(declare-fun b!172084 () Bool)

(assert (=> b!172084 (= e!113576 call!17504)))

(declare-fun bm!17501 () Bool)

(assert (=> bm!17501 (= call!17504 (arrayCountValidKeys!0 (_keys!5396 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3688 (_keys!5396 thiss!1248))))))

(declare-fun b!172085 () Bool)

(assert (=> b!172085 (= e!113577 e!113576)))

(declare-fun c!30814 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!172085 (= c!30814 (validKeyInArray!0 (select (arr!3394 (_keys!5396 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!52381 c!30813) b!172082))

(assert (= (and d!52381 (not c!30813)) b!172085))

(assert (= (and b!172085 c!30814) b!172083))

(assert (= (and b!172085 (not c!30814)) b!172084))

(assert (= (or b!172083 b!172084) bm!17501))

(declare-fun m!201063 () Bool)

(assert (=> bm!17501 m!201063))

(declare-fun m!201065 () Bool)

(assert (=> b!172085 m!201065))

(assert (=> b!172085 m!201065))

(declare-fun m!201067 () Bool)

(assert (=> b!172085 m!201067))

(assert (=> b!172051 d!52381))

(declare-fun b!172094 () Bool)

(declare-fun e!113585 () Bool)

(declare-fun call!17507 () Bool)

(assert (=> b!172094 (= e!113585 call!17507)))

(declare-fun b!172095 () Bool)

(declare-fun e!113584 () Bool)

(assert (=> b!172095 (= e!113584 call!17507)))

(declare-fun bm!17504 () Bool)

(assert (=> bm!17504 (= call!17507 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5396 thiss!1248) (mask!8395 thiss!1248)))))

(declare-fun b!172096 () Bool)

(assert (=> b!172096 (= e!113584 e!113585)))

(declare-fun lt!85666 () (_ BitVec 64))

(assert (=> b!172096 (= lt!85666 (select (arr!3394 (_keys!5396 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5297 0))(
  ( (Unit!5298) )
))
(declare-fun lt!85665 () Unit!5297)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7136 (_ BitVec 64) (_ BitVec 32)) Unit!5297)

(assert (=> b!172096 (= lt!85665 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5396 thiss!1248) lt!85666 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7136 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!172096 (arrayContainsKey!0 (_keys!5396 thiss!1248) lt!85666 #b00000000000000000000000000000000)))

(declare-fun lt!85667 () Unit!5297)

(assert (=> b!172096 (= lt!85667 lt!85665)))

(declare-fun res!81731 () Bool)

(declare-datatypes ((SeekEntryResult!545 0))(
  ( (MissingZero!545 (index!4348 (_ BitVec 32))) (Found!545 (index!4349 (_ BitVec 32))) (Intermediate!545 (undefined!1357 Bool) (index!4350 (_ BitVec 32)) (x!19000 (_ BitVec 32))) (Undefined!545) (MissingVacant!545 (index!4351 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7136 (_ BitVec 32)) SeekEntryResult!545)

(assert (=> b!172096 (= res!81731 (= (seekEntryOrOpen!0 (select (arr!3394 (_keys!5396 thiss!1248)) #b00000000000000000000000000000000) (_keys!5396 thiss!1248) (mask!8395 thiss!1248)) (Found!545 #b00000000000000000000000000000000)))))

(assert (=> b!172096 (=> (not res!81731) (not e!113585))))

(declare-fun b!172097 () Bool)

(declare-fun e!113586 () Bool)

(assert (=> b!172097 (= e!113586 e!113584)))

(declare-fun c!30817 () Bool)

(assert (=> b!172097 (= c!30817 (validKeyInArray!0 (select (arr!3394 (_keys!5396 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!52383 () Bool)

(declare-fun res!81732 () Bool)

(assert (=> d!52383 (=> res!81732 e!113586)))

(assert (=> d!52383 (= res!81732 (bvsge #b00000000000000000000000000000000 (size!3688 (_keys!5396 thiss!1248))))))

(assert (=> d!52383 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5396 thiss!1248) (mask!8395 thiss!1248)) e!113586)))

(assert (= (and d!52383 (not res!81732)) b!172097))

(assert (= (and b!172097 c!30817) b!172096))

(assert (= (and b!172097 (not c!30817)) b!172095))

(assert (= (and b!172096 res!81731) b!172094))

(assert (= (or b!172094 b!172095) bm!17504))

(declare-fun m!201069 () Bool)

(assert (=> bm!17504 m!201069))

(assert (=> b!172096 m!201065))

(declare-fun m!201071 () Bool)

(assert (=> b!172096 m!201071))

(declare-fun m!201073 () Bool)

(assert (=> b!172096 m!201073))

(assert (=> b!172096 m!201065))

(declare-fun m!201075 () Bool)

(assert (=> b!172096 m!201075))

(assert (=> b!172097 m!201065))

(assert (=> b!172097 m!201065))

(assert (=> b!172097 m!201067))

(assert (=> b!172052 d!52383))

(declare-fun b!172108 () Bool)

(declare-fun e!113597 () Bool)

(declare-fun call!17510 () Bool)

(assert (=> b!172108 (= e!113597 call!17510)))

(declare-fun b!172109 () Bool)

(declare-fun e!113595 () Bool)

(declare-fun contains!1147 (List!2216 (_ BitVec 64)) Bool)

(assert (=> b!172109 (= e!113595 (contains!1147 Nil!2213 (select (arr!3394 (_keys!5396 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17507 () Bool)

(declare-fun c!30820 () Bool)

(assert (=> bm!17507 (= call!17510 (arrayNoDuplicates!0 (_keys!5396 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30820 (Cons!2212 (select (arr!3394 (_keys!5396 thiss!1248)) #b00000000000000000000000000000000) Nil!2213) Nil!2213)))))

(declare-fun b!172110 () Bool)

(declare-fun e!113598 () Bool)

(declare-fun e!113596 () Bool)

(assert (=> b!172110 (= e!113598 e!113596)))

(declare-fun res!81741 () Bool)

(assert (=> b!172110 (=> (not res!81741) (not e!113596))))

(assert (=> b!172110 (= res!81741 (not e!113595))))

(declare-fun res!81739 () Bool)

(assert (=> b!172110 (=> (not res!81739) (not e!113595))))

(assert (=> b!172110 (= res!81739 (validKeyInArray!0 (select (arr!3394 (_keys!5396 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!172111 () Bool)

(assert (=> b!172111 (= e!113597 call!17510)))

(declare-fun d!52385 () Bool)

(declare-fun res!81740 () Bool)

(assert (=> d!52385 (=> res!81740 e!113598)))

(assert (=> d!52385 (= res!81740 (bvsge #b00000000000000000000000000000000 (size!3688 (_keys!5396 thiss!1248))))))

(assert (=> d!52385 (= (arrayNoDuplicates!0 (_keys!5396 thiss!1248) #b00000000000000000000000000000000 Nil!2213) e!113598)))

(declare-fun b!172112 () Bool)

(assert (=> b!172112 (= e!113596 e!113597)))

(assert (=> b!172112 (= c!30820 (validKeyInArray!0 (select (arr!3394 (_keys!5396 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!52385 (not res!81740)) b!172110))

(assert (= (and b!172110 res!81739) b!172109))

(assert (= (and b!172110 res!81741) b!172112))

(assert (= (and b!172112 c!30820) b!172108))

(assert (= (and b!172112 (not c!30820)) b!172111))

(assert (= (or b!172108 b!172111) bm!17507))

(assert (=> b!172109 m!201065))

(assert (=> b!172109 m!201065))

(declare-fun m!201077 () Bool)

(assert (=> b!172109 m!201077))

(assert (=> bm!17507 m!201065))

(declare-fun m!201079 () Bool)

(assert (=> bm!17507 m!201079))

(assert (=> b!172110 m!201065))

(assert (=> b!172110 m!201065))

(assert (=> b!172110 m!201067))

(assert (=> b!172112 m!201065))

(assert (=> b!172112 m!201065))

(assert (=> b!172112 m!201067))

(assert (=> b!172053 d!52385))

(declare-fun condMapEmpty!6821 () Bool)

(declare-fun mapDefault!6821 () ValueCell!1662)

(assert (=> mapNonEmpty!6820 (= condMapEmpty!6821 (= mapRest!6820 ((as const (Array (_ BitVec 32) ValueCell!1662)) mapDefault!6821)))))

(declare-fun e!113600 () Bool)

(declare-fun mapRes!6821 () Bool)

(assert (=> mapNonEmpty!6820 (= tp!15361 (and e!113600 mapRes!6821))))

(declare-fun mapIsEmpty!6821 () Bool)

(assert (=> mapIsEmpty!6821 mapRes!6821))

(declare-fun b!172114 () Bool)

(assert (=> b!172114 (= e!113600 tp_is_empty!4011)))

(declare-fun b!172113 () Bool)

(declare-fun e!113599 () Bool)

(assert (=> b!172113 (= e!113599 tp_is_empty!4011)))

(declare-fun mapNonEmpty!6821 () Bool)

(declare-fun tp!15362 () Bool)

(assert (=> mapNonEmpty!6821 (= mapRes!6821 (and tp!15362 e!113599))))

(declare-fun mapKey!6821 () (_ BitVec 32))

(declare-fun mapRest!6821 () (Array (_ BitVec 32) ValueCell!1662))

(declare-fun mapValue!6821 () ValueCell!1662)

(assert (=> mapNonEmpty!6821 (= mapRest!6820 (store mapRest!6821 mapKey!6821 mapValue!6821))))

(assert (= (and mapNonEmpty!6820 condMapEmpty!6821) mapIsEmpty!6821))

(assert (= (and mapNonEmpty!6820 (not condMapEmpty!6821)) mapNonEmpty!6821))

(assert (= (and mapNonEmpty!6821 ((_ is ValueCellFull!1662) mapValue!6821)) b!172113))

(assert (= (and mapNonEmpty!6820 ((_ is ValueCellFull!1662) mapDefault!6821)) b!172114))

(declare-fun m!201081 () Bool)

(assert (=> mapNonEmpty!6821 m!201081))

(check-sat b_and!10697 (not b!172085) (not bm!17501) (not b!172110) (not b_next!4239) (not b!172112) (not b!172097) (not mapNonEmpty!6821) (not d!52379) (not bm!17507) (not b!172109) (not bm!17504) tp_is_empty!4011 (not b!172096) (not b!172072) (not b!172071))
(check-sat b_and!10697 (not b_next!4239))
