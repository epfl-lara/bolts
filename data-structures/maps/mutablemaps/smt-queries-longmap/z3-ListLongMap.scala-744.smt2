; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17280 () Bool)

(assert start!17280)

(declare-fun b!173125 () Bool)

(declare-fun b_free!4305 () Bool)

(declare-fun b_next!4305 () Bool)

(assert (=> b!173125 (= b_free!4305 (not b_next!4305))))

(declare-fun tp!15575 () Bool)

(declare-fun b_and!10763 () Bool)

(assert (=> b!173125 (= tp!15575 b_and!10763)))

(declare-fun mapNonEmpty!6939 () Bool)

(declare-fun mapRes!6939 () Bool)

(declare-fun tp!15576 () Bool)

(declare-fun e!114366 () Bool)

(assert (=> mapNonEmpty!6939 (= mapRes!6939 (and tp!15576 e!114366))))

(declare-datatypes ((V!5083 0))(
  ( (V!5084 (val!2083 Int)) )
))
(declare-datatypes ((ValueCell!1695 0))(
  ( (ValueCellFull!1695 (v!3947 V!5083)) (EmptyCell!1695) )
))
(declare-fun mapRest!6939 () (Array (_ BitVec 32) ValueCell!1695))

(declare-fun mapKey!6939 () (_ BitVec 32))

(declare-fun mapValue!6939 () ValueCell!1695)

(declare-datatypes ((array!7282 0))(
  ( (array!7283 (arr!3460 (Array (_ BitVec 32) (_ BitVec 64))) (size!3759 (_ BitVec 32))) )
))
(declare-datatypes ((array!7284 0))(
  ( (array!7285 (arr!3461 (Array (_ BitVec 32) ValueCell!1695)) (size!3760 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2298 0))(
  ( (LongMapFixedSize!2299 (defaultEntry!3595 Int) (mask!8463 (_ BitVec 32)) (extraKeys!3334 (_ BitVec 32)) (zeroValue!3436 V!5083) (minValue!3438 V!5083) (_size!1198 (_ BitVec 32)) (_keys!5435 array!7282) (_values!3578 array!7284) (_vacant!1198 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2298)

(assert (=> mapNonEmpty!6939 (= (arr!3461 (_values!3578 thiss!1248)) (store mapRest!6939 mapKey!6939 mapValue!6939))))

(declare-fun tp_is_empty!4077 () Bool)

(declare-fun e!114364 () Bool)

(declare-fun e!114367 () Bool)

(declare-fun array_inv!2205 (array!7282) Bool)

(declare-fun array_inv!2206 (array!7284) Bool)

(assert (=> b!173125 (= e!114364 (and tp!15575 tp_is_empty!4077 (array_inv!2205 (_keys!5435 thiss!1248)) (array_inv!2206 (_values!3578 thiss!1248)) e!114367))))

(declare-fun res!82214 () Bool)

(declare-fun e!114362 () Bool)

(assert (=> start!17280 (=> (not res!82214) (not e!114362))))

(declare-fun valid!963 (LongMapFixedSize!2298) Bool)

(assert (=> start!17280 (= res!82214 (valid!963 thiss!1248))))

(assert (=> start!17280 e!114362))

(assert (=> start!17280 e!114364))

(assert (=> start!17280 true))

(declare-fun b!173126 () Bool)

(declare-fun e!114363 () Bool)

(assert (=> b!173126 (= e!114363 tp_is_empty!4077)))

(declare-fun b!173127 () Bool)

(declare-fun res!82215 () Bool)

(assert (=> b!173127 (=> (not res!82215) (not e!114362))))

(assert (=> b!173127 (= res!82215 (and (= (size!3760 (_values!3578 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8463 thiss!1248))) (= (size!3759 (_keys!5435 thiss!1248)) (size!3760 (_values!3578 thiss!1248))) (bvsge (mask!8463 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3334 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3334 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!3334 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!3334 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!3334 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!3334 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!3334 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!173128 () Bool)

(declare-fun res!82216 () Bool)

(assert (=> b!173128 (=> (not res!82216) (not e!114362))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7282 (_ BitVec 32)) Bool)

(assert (=> b!173128 (= res!82216 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5435 thiss!1248) (mask!8463 thiss!1248)))))

(declare-fun b!173129 () Bool)

(declare-fun res!82217 () Bool)

(assert (=> b!173129 (=> (not res!82217) (not e!114362))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!173129 (= res!82217 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!6939 () Bool)

(assert (=> mapIsEmpty!6939 mapRes!6939))

(declare-fun b!173130 () Bool)

(declare-datatypes ((List!2224 0))(
  ( (Nil!2221) (Cons!2220 (h!2837 (_ BitVec 64)) (t!7039 List!2224)) )
))
(declare-fun arrayNoDuplicates!0 (array!7282 (_ BitVec 32) List!2224) Bool)

(assert (=> b!173130 (= e!114362 (not (arrayNoDuplicates!0 (_keys!5435 thiss!1248) #b00000000000000000000000000000000 Nil!2221)))))

(declare-fun b!173131 () Bool)

(assert (=> b!173131 (= e!114366 tp_is_empty!4077)))

(declare-fun b!173132 () Bool)

(assert (=> b!173132 (= e!114367 (and e!114363 mapRes!6939))))

(declare-fun condMapEmpty!6939 () Bool)

(declare-fun mapDefault!6939 () ValueCell!1695)

(assert (=> b!173132 (= condMapEmpty!6939 (= (arr!3461 (_values!3578 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1695)) mapDefault!6939)))))

(declare-fun b!173133 () Bool)

(declare-fun res!82218 () Bool)

(assert (=> b!173133 (=> (not res!82218) (not e!114362))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!173133 (= res!82218 (validMask!0 (mask!8463 thiss!1248)))))

(assert (= (and start!17280 res!82214) b!173129))

(assert (= (and b!173129 res!82217) b!173133))

(assert (= (and b!173133 res!82218) b!173127))

(assert (= (and b!173127 res!82215) b!173128))

(assert (= (and b!173128 res!82216) b!173130))

(assert (= (and b!173132 condMapEmpty!6939) mapIsEmpty!6939))

(assert (= (and b!173132 (not condMapEmpty!6939)) mapNonEmpty!6939))

(get-info :version)

(assert (= (and mapNonEmpty!6939 ((_ is ValueCellFull!1695) mapValue!6939)) b!173131))

(assert (= (and b!173132 ((_ is ValueCellFull!1695) mapDefault!6939)) b!173126))

(assert (= b!173125 b!173132))

(assert (= start!17280 b!173125))

(declare-fun m!201561 () Bool)

(assert (=> b!173130 m!201561))

(declare-fun m!201563 () Bool)

(assert (=> mapNonEmpty!6939 m!201563))

(declare-fun m!201565 () Bool)

(assert (=> start!17280 m!201565))

(declare-fun m!201567 () Bool)

(assert (=> b!173133 m!201567))

(declare-fun m!201569 () Bool)

(assert (=> b!173128 m!201569))

(declare-fun m!201571 () Bool)

(assert (=> b!173125 m!201571))

(declare-fun m!201573 () Bool)

(assert (=> b!173125 m!201573))

(check-sat b_and!10763 tp_is_empty!4077 (not b!173125) (not b_next!4305) (not b!173130) (not b!173133) (not mapNonEmpty!6939) (not b!173128) (not start!17280))
(check-sat b_and!10763 (not b_next!4305))
(get-model)

(declare-fun d!52491 () Bool)

(declare-fun res!82240 () Bool)

(declare-fun e!114388 () Bool)

(assert (=> d!52491 (=> (not res!82240) (not e!114388))))

(declare-fun simpleValid!142 (LongMapFixedSize!2298) Bool)

(assert (=> d!52491 (= res!82240 (simpleValid!142 thiss!1248))))

(assert (=> d!52491 (= (valid!963 thiss!1248) e!114388)))

(declare-fun b!173167 () Bool)

(declare-fun res!82241 () Bool)

(assert (=> b!173167 (=> (not res!82241) (not e!114388))))

(declare-fun arrayCountValidKeys!0 (array!7282 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!173167 (= res!82241 (= (arrayCountValidKeys!0 (_keys!5435 thiss!1248) #b00000000000000000000000000000000 (size!3759 (_keys!5435 thiss!1248))) (_size!1198 thiss!1248)))))

(declare-fun b!173168 () Bool)

(declare-fun res!82242 () Bool)

(assert (=> b!173168 (=> (not res!82242) (not e!114388))))

(assert (=> b!173168 (= res!82242 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5435 thiss!1248) (mask!8463 thiss!1248)))))

(declare-fun b!173169 () Bool)

(assert (=> b!173169 (= e!114388 (arrayNoDuplicates!0 (_keys!5435 thiss!1248) #b00000000000000000000000000000000 Nil!2221))))

(assert (= (and d!52491 res!82240) b!173167))

(assert (= (and b!173167 res!82241) b!173168))

(assert (= (and b!173168 res!82242) b!173169))

(declare-fun m!201589 () Bool)

(assert (=> d!52491 m!201589))

(declare-fun m!201591 () Bool)

(assert (=> b!173167 m!201591))

(assert (=> b!173168 m!201569))

(assert (=> b!173169 m!201561))

(assert (=> start!17280 d!52491))

(declare-fun d!52493 () Bool)

(assert (=> d!52493 (= (validMask!0 (mask!8463 thiss!1248)) (and (or (= (mask!8463 thiss!1248) #b00000000000000000000000000000111) (= (mask!8463 thiss!1248) #b00000000000000000000000000001111) (= (mask!8463 thiss!1248) #b00000000000000000000000000011111) (= (mask!8463 thiss!1248) #b00000000000000000000000000111111) (= (mask!8463 thiss!1248) #b00000000000000000000000001111111) (= (mask!8463 thiss!1248) #b00000000000000000000000011111111) (= (mask!8463 thiss!1248) #b00000000000000000000000111111111) (= (mask!8463 thiss!1248) #b00000000000000000000001111111111) (= (mask!8463 thiss!1248) #b00000000000000000000011111111111) (= (mask!8463 thiss!1248) #b00000000000000000000111111111111) (= (mask!8463 thiss!1248) #b00000000000000000001111111111111) (= (mask!8463 thiss!1248) #b00000000000000000011111111111111) (= (mask!8463 thiss!1248) #b00000000000000000111111111111111) (= (mask!8463 thiss!1248) #b00000000000000001111111111111111) (= (mask!8463 thiss!1248) #b00000000000000011111111111111111) (= (mask!8463 thiss!1248) #b00000000000000111111111111111111) (= (mask!8463 thiss!1248) #b00000000000001111111111111111111) (= (mask!8463 thiss!1248) #b00000000000011111111111111111111) (= (mask!8463 thiss!1248) #b00000000000111111111111111111111) (= (mask!8463 thiss!1248) #b00000000001111111111111111111111) (= (mask!8463 thiss!1248) #b00000000011111111111111111111111) (= (mask!8463 thiss!1248) #b00000000111111111111111111111111) (= (mask!8463 thiss!1248) #b00000001111111111111111111111111) (= (mask!8463 thiss!1248) #b00000011111111111111111111111111) (= (mask!8463 thiss!1248) #b00000111111111111111111111111111) (= (mask!8463 thiss!1248) #b00001111111111111111111111111111) (= (mask!8463 thiss!1248) #b00011111111111111111111111111111) (= (mask!8463 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8463 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!173133 d!52493))

(declare-fun b!173178 () Bool)

(declare-fun e!114397 () Bool)

(declare-fun call!17552 () Bool)

(assert (=> b!173178 (= e!114397 call!17552)))

(declare-fun b!173179 () Bool)

(declare-fun e!114396 () Bool)

(assert (=> b!173179 (= e!114397 e!114396)))

(declare-fun lt!85733 () (_ BitVec 64))

(assert (=> b!173179 (= lt!85733 (select (arr!3460 (_keys!5435 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5309 0))(
  ( (Unit!5310) )
))
(declare-fun lt!85732 () Unit!5309)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7282 (_ BitVec 64) (_ BitVec 32)) Unit!5309)

(assert (=> b!173179 (= lt!85732 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5435 thiss!1248) lt!85733 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7282 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!173179 (arrayContainsKey!0 (_keys!5435 thiss!1248) lt!85733 #b00000000000000000000000000000000)))

(declare-fun lt!85731 () Unit!5309)

(assert (=> b!173179 (= lt!85731 lt!85732)))

(declare-fun res!82247 () Bool)

(declare-datatypes ((SeekEntryResult!551 0))(
  ( (MissingZero!551 (index!4372 (_ BitVec 32))) (Found!551 (index!4373 (_ BitVec 32))) (Intermediate!551 (undefined!1363 Bool) (index!4374 (_ BitVec 32)) (x!19174 (_ BitVec 32))) (Undefined!551) (MissingVacant!551 (index!4375 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7282 (_ BitVec 32)) SeekEntryResult!551)

(assert (=> b!173179 (= res!82247 (= (seekEntryOrOpen!0 (select (arr!3460 (_keys!5435 thiss!1248)) #b00000000000000000000000000000000) (_keys!5435 thiss!1248) (mask!8463 thiss!1248)) (Found!551 #b00000000000000000000000000000000)))))

(assert (=> b!173179 (=> (not res!82247) (not e!114396))))

(declare-fun b!173180 () Bool)

(assert (=> b!173180 (= e!114396 call!17552)))

(declare-fun b!173181 () Bool)

(declare-fun e!114395 () Bool)

(assert (=> b!173181 (= e!114395 e!114397)))

(declare-fun c!30874 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!173181 (= c!30874 (validKeyInArray!0 (select (arr!3460 (_keys!5435 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!52495 () Bool)

(declare-fun res!82248 () Bool)

(assert (=> d!52495 (=> res!82248 e!114395)))

(assert (=> d!52495 (= res!82248 (bvsge #b00000000000000000000000000000000 (size!3759 (_keys!5435 thiss!1248))))))

(assert (=> d!52495 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5435 thiss!1248) (mask!8463 thiss!1248)) e!114395)))

(declare-fun bm!17549 () Bool)

(assert (=> bm!17549 (= call!17552 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5435 thiss!1248) (mask!8463 thiss!1248)))))

(assert (= (and d!52495 (not res!82248)) b!173181))

(assert (= (and b!173181 c!30874) b!173179))

(assert (= (and b!173181 (not c!30874)) b!173178))

(assert (= (and b!173179 res!82247) b!173180))

(assert (= (or b!173180 b!173178) bm!17549))

(declare-fun m!201593 () Bool)

(assert (=> b!173179 m!201593))

(declare-fun m!201595 () Bool)

(assert (=> b!173179 m!201595))

(declare-fun m!201597 () Bool)

(assert (=> b!173179 m!201597))

(assert (=> b!173179 m!201593))

(declare-fun m!201599 () Bool)

(assert (=> b!173179 m!201599))

(assert (=> b!173181 m!201593))

(assert (=> b!173181 m!201593))

(declare-fun m!201601 () Bool)

(assert (=> b!173181 m!201601))

(declare-fun m!201603 () Bool)

(assert (=> bm!17549 m!201603))

(assert (=> b!173128 d!52495))

(declare-fun d!52497 () Bool)

(assert (=> d!52497 (= (array_inv!2205 (_keys!5435 thiss!1248)) (bvsge (size!3759 (_keys!5435 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!173125 d!52497))

(declare-fun d!52499 () Bool)

(assert (=> d!52499 (= (array_inv!2206 (_values!3578 thiss!1248)) (bvsge (size!3760 (_values!3578 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!173125 d!52499))

(declare-fun b!173192 () Bool)

(declare-fun e!114406 () Bool)

(declare-fun e!114409 () Bool)

(assert (=> b!173192 (= e!114406 e!114409)))

(declare-fun res!82255 () Bool)

(assert (=> b!173192 (=> (not res!82255) (not e!114409))))

(declare-fun e!114408 () Bool)

(assert (=> b!173192 (= res!82255 (not e!114408))))

(declare-fun res!82257 () Bool)

(assert (=> b!173192 (=> (not res!82257) (not e!114408))))

(assert (=> b!173192 (= res!82257 (validKeyInArray!0 (select (arr!3460 (_keys!5435 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17552 () Bool)

(declare-fun call!17555 () Bool)

(declare-fun c!30877 () Bool)

(assert (=> bm!17552 (= call!17555 (arrayNoDuplicates!0 (_keys!5435 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30877 (Cons!2220 (select (arr!3460 (_keys!5435 thiss!1248)) #b00000000000000000000000000000000) Nil!2221) Nil!2221)))))

(declare-fun b!173193 () Bool)

(declare-fun e!114407 () Bool)

(assert (=> b!173193 (= e!114407 call!17555)))

(declare-fun b!173194 () Bool)

(declare-fun contains!1152 (List!2224 (_ BitVec 64)) Bool)

(assert (=> b!173194 (= e!114408 (contains!1152 Nil!2221 (select (arr!3460 (_keys!5435 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!52501 () Bool)

(declare-fun res!82256 () Bool)

(assert (=> d!52501 (=> res!82256 e!114406)))

(assert (=> d!52501 (= res!82256 (bvsge #b00000000000000000000000000000000 (size!3759 (_keys!5435 thiss!1248))))))

(assert (=> d!52501 (= (arrayNoDuplicates!0 (_keys!5435 thiss!1248) #b00000000000000000000000000000000 Nil!2221) e!114406)))

(declare-fun b!173195 () Bool)

(assert (=> b!173195 (= e!114407 call!17555)))

(declare-fun b!173196 () Bool)

(assert (=> b!173196 (= e!114409 e!114407)))

(assert (=> b!173196 (= c!30877 (validKeyInArray!0 (select (arr!3460 (_keys!5435 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!52501 (not res!82256)) b!173192))

(assert (= (and b!173192 res!82257) b!173194))

(assert (= (and b!173192 res!82255) b!173196))

(assert (= (and b!173196 c!30877) b!173195))

(assert (= (and b!173196 (not c!30877)) b!173193))

(assert (= (or b!173195 b!173193) bm!17552))

(assert (=> b!173192 m!201593))

(assert (=> b!173192 m!201593))

(assert (=> b!173192 m!201601))

(assert (=> bm!17552 m!201593))

(declare-fun m!201605 () Bool)

(assert (=> bm!17552 m!201605))

(assert (=> b!173194 m!201593))

(assert (=> b!173194 m!201593))

(declare-fun m!201607 () Bool)

(assert (=> b!173194 m!201607))

(assert (=> b!173196 m!201593))

(assert (=> b!173196 m!201593))

(assert (=> b!173196 m!201601))

(assert (=> b!173130 d!52501))

(declare-fun mapNonEmpty!6945 () Bool)

(declare-fun mapRes!6945 () Bool)

(declare-fun tp!15585 () Bool)

(declare-fun e!114415 () Bool)

(assert (=> mapNonEmpty!6945 (= mapRes!6945 (and tp!15585 e!114415))))

(declare-fun mapKey!6945 () (_ BitVec 32))

(declare-fun mapRest!6945 () (Array (_ BitVec 32) ValueCell!1695))

(declare-fun mapValue!6945 () ValueCell!1695)

(assert (=> mapNonEmpty!6945 (= mapRest!6939 (store mapRest!6945 mapKey!6945 mapValue!6945))))

(declare-fun mapIsEmpty!6945 () Bool)

(assert (=> mapIsEmpty!6945 mapRes!6945))

(declare-fun b!173203 () Bool)

(assert (=> b!173203 (= e!114415 tp_is_empty!4077)))

(declare-fun b!173204 () Bool)

(declare-fun e!114414 () Bool)

(assert (=> b!173204 (= e!114414 tp_is_empty!4077)))

(declare-fun condMapEmpty!6945 () Bool)

(declare-fun mapDefault!6945 () ValueCell!1695)

(assert (=> mapNonEmpty!6939 (= condMapEmpty!6945 (= mapRest!6939 ((as const (Array (_ BitVec 32) ValueCell!1695)) mapDefault!6945)))))

(assert (=> mapNonEmpty!6939 (= tp!15576 (and e!114414 mapRes!6945))))

(assert (= (and mapNonEmpty!6939 condMapEmpty!6945) mapIsEmpty!6945))

(assert (= (and mapNonEmpty!6939 (not condMapEmpty!6945)) mapNonEmpty!6945))

(assert (= (and mapNonEmpty!6945 ((_ is ValueCellFull!1695) mapValue!6945)) b!173203))

(assert (= (and mapNonEmpty!6939 ((_ is ValueCellFull!1695) mapDefault!6945)) b!173204))

(declare-fun m!201609 () Bool)

(assert (=> mapNonEmpty!6945 m!201609))

(check-sat (not bm!17552) b_and!10763 (not bm!17549) (not b!173169) (not b!173179) (not b!173181) (not b_next!4305) (not b!173196) tp_is_empty!4077 (not d!52491) (not b!173167) (not b!173192) (not b!173194) (not mapNonEmpty!6945) (not b!173168))
(check-sat b_and!10763 (not b_next!4305))
