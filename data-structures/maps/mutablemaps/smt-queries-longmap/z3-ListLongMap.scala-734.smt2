; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17138 () Bool)

(assert start!17138)

(declare-fun b!172155 () Bool)

(declare-fun b_free!4245 () Bool)

(declare-fun b_next!4245 () Bool)

(assert (=> b!172155 (= b_free!4245 (not b_next!4245))))

(declare-fun tp!15373 () Bool)

(declare-fun b_and!10703 () Bool)

(assert (=> b!172155 (= tp!15373 b_and!10703)))

(declare-fun b!172150 () Bool)

(declare-fun res!81759 () Bool)

(declare-fun e!113634 () Bool)

(assert (=> b!172150 (=> (not res!81759) (not e!113634))))

(declare-datatypes ((V!5003 0))(
  ( (V!5004 (val!2053 Int)) )
))
(declare-datatypes ((ValueCell!1665 0))(
  ( (ValueCellFull!1665 (v!3917 V!5003)) (EmptyCell!1665) )
))
(declare-datatypes ((array!7150 0))(
  ( (array!7151 (arr!3400 (Array (_ BitVec 32) (_ BitVec 64))) (size!3695 (_ BitVec 32))) )
))
(declare-datatypes ((array!7152 0))(
  ( (array!7153 (arr!3401 (Array (_ BitVec 32) ValueCell!1665)) (size!3696 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2238 0))(
  ( (LongMapFixedSize!2239 (defaultEntry!3565 Int) (mask!8402 (_ BitVec 32)) (extraKeys!3304 (_ BitVec 32)) (zeroValue!3406 V!5003) (minValue!3408 V!5003) (_size!1168 (_ BitVec 32)) (_keys!5400 array!7150) (_values!3548 array!7152) (_vacant!1168 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2238)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!172150 (= res!81759 (validMask!0 (mask!8402 thiss!1248)))))

(declare-fun b!172152 () Bool)

(declare-fun res!81757 () Bool)

(assert (=> b!172152 (=> (not res!81757) (not e!113634))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!172152 (= res!81757 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!6827 () Bool)

(declare-fun mapRes!6827 () Bool)

(assert (=> mapIsEmpty!6827 mapRes!6827))

(declare-fun b!172153 () Bool)

(declare-fun e!113633 () Bool)

(declare-fun tp_is_empty!4017 () Bool)

(assert (=> b!172153 (= e!113633 tp_is_empty!4017)))

(declare-fun res!81758 () Bool)

(assert (=> start!17138 (=> (not res!81758) (not e!113634))))

(declare-fun valid!943 (LongMapFixedSize!2238) Bool)

(assert (=> start!17138 (= res!81758 (valid!943 thiss!1248))))

(assert (=> start!17138 e!113634))

(declare-fun e!113635 () Bool)

(assert (=> start!17138 e!113635))

(assert (=> start!17138 true))

(declare-fun b!172151 () Bool)

(declare-fun e!113631 () Bool)

(assert (=> b!172151 (= e!113631 tp_is_empty!4017)))

(declare-fun b!172154 () Bool)

(declare-fun e!113636 () Bool)

(assert (=> b!172154 (= e!113636 (and e!113631 mapRes!6827))))

(declare-fun condMapEmpty!6827 () Bool)

(declare-fun mapDefault!6827 () ValueCell!1665)

(assert (=> b!172154 (= condMapEmpty!6827 (= (arr!3401 (_values!3548 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1665)) mapDefault!6827)))))

(declare-fun array_inv!2167 (array!7150) Bool)

(declare-fun array_inv!2168 (array!7152) Bool)

(assert (=> b!172155 (= e!113635 (and tp!15373 tp_is_empty!4017 (array_inv!2167 (_keys!5400 thiss!1248)) (array_inv!2168 (_values!3548 thiss!1248)) e!113636))))

(declare-fun mapNonEmpty!6827 () Bool)

(declare-fun tp!15374 () Bool)

(assert (=> mapNonEmpty!6827 (= mapRes!6827 (and tp!15374 e!113633))))

(declare-fun mapValue!6827 () ValueCell!1665)

(declare-fun mapKey!6827 () (_ BitVec 32))

(declare-fun mapRest!6827 () (Array (_ BitVec 32) ValueCell!1665))

(assert (=> mapNonEmpty!6827 (= (arr!3401 (_values!3548 thiss!1248)) (store mapRest!6827 mapKey!6827 mapValue!6827))))

(declare-fun b!172156 () Bool)

(assert (=> b!172156 (= e!113634 (not (= (size!3696 (_values!3548 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8402 thiss!1248)))))))

(assert (= (and start!17138 res!81758) b!172152))

(assert (= (and b!172152 res!81757) b!172150))

(assert (= (and b!172150 res!81759) b!172156))

(assert (= (and b!172154 condMapEmpty!6827) mapIsEmpty!6827))

(assert (= (and b!172154 (not condMapEmpty!6827)) mapNonEmpty!6827))

(get-info :version)

(assert (= (and mapNonEmpty!6827 ((_ is ValueCellFull!1665) mapValue!6827)) b!172153))

(assert (= (and b!172154 ((_ is ValueCellFull!1665) mapDefault!6827)) b!172151))

(assert (= b!172155 b!172154))

(assert (= start!17138 b!172155))

(declare-fun m!201093 () Bool)

(assert (=> b!172150 m!201093))

(declare-fun m!201095 () Bool)

(assert (=> start!17138 m!201095))

(declare-fun m!201097 () Bool)

(assert (=> b!172155 m!201097))

(declare-fun m!201099 () Bool)

(assert (=> b!172155 m!201099))

(declare-fun m!201101 () Bool)

(assert (=> mapNonEmpty!6827 m!201101))

(check-sat (not b!172155) tp_is_empty!4017 (not b!172150) (not mapNonEmpty!6827) (not b_next!4245) b_and!10703 (not start!17138))
(check-sat b_and!10703 (not b_next!4245))
(get-model)

(declare-fun d!52389 () Bool)

(assert (=> d!52389 (= (validMask!0 (mask!8402 thiss!1248)) (and (or (= (mask!8402 thiss!1248) #b00000000000000000000000000000111) (= (mask!8402 thiss!1248) #b00000000000000000000000000001111) (= (mask!8402 thiss!1248) #b00000000000000000000000000011111) (= (mask!8402 thiss!1248) #b00000000000000000000000000111111) (= (mask!8402 thiss!1248) #b00000000000000000000000001111111) (= (mask!8402 thiss!1248) #b00000000000000000000000011111111) (= (mask!8402 thiss!1248) #b00000000000000000000000111111111) (= (mask!8402 thiss!1248) #b00000000000000000000001111111111) (= (mask!8402 thiss!1248) #b00000000000000000000011111111111) (= (mask!8402 thiss!1248) #b00000000000000000000111111111111) (= (mask!8402 thiss!1248) #b00000000000000000001111111111111) (= (mask!8402 thiss!1248) #b00000000000000000011111111111111) (= (mask!8402 thiss!1248) #b00000000000000000111111111111111) (= (mask!8402 thiss!1248) #b00000000000000001111111111111111) (= (mask!8402 thiss!1248) #b00000000000000011111111111111111) (= (mask!8402 thiss!1248) #b00000000000000111111111111111111) (= (mask!8402 thiss!1248) #b00000000000001111111111111111111) (= (mask!8402 thiss!1248) #b00000000000011111111111111111111) (= (mask!8402 thiss!1248) #b00000000000111111111111111111111) (= (mask!8402 thiss!1248) #b00000000001111111111111111111111) (= (mask!8402 thiss!1248) #b00000000011111111111111111111111) (= (mask!8402 thiss!1248) #b00000000111111111111111111111111) (= (mask!8402 thiss!1248) #b00000001111111111111111111111111) (= (mask!8402 thiss!1248) #b00000011111111111111111111111111) (= (mask!8402 thiss!1248) #b00000111111111111111111111111111) (= (mask!8402 thiss!1248) #b00001111111111111111111111111111) (= (mask!8402 thiss!1248) #b00011111111111111111111111111111) (= (mask!8402 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8402 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!172150 d!52389))

(declare-fun d!52391 () Bool)

(assert (=> d!52391 (= (array_inv!2167 (_keys!5400 thiss!1248)) (bvsge (size!3695 (_keys!5400 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!172155 d!52391))

(declare-fun d!52393 () Bool)

(assert (=> d!52393 (= (array_inv!2168 (_values!3548 thiss!1248)) (bvsge (size!3696 (_values!3548 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!172155 d!52393))

(declare-fun d!52395 () Bool)

(declare-fun res!81775 () Bool)

(declare-fun e!113657 () Bool)

(assert (=> d!52395 (=> (not res!81775) (not e!113657))))

(declare-fun simpleValid!136 (LongMapFixedSize!2238) Bool)

(assert (=> d!52395 (= res!81775 (simpleValid!136 thiss!1248))))

(assert (=> d!52395 (= (valid!943 thiss!1248) e!113657)))

(declare-fun b!172184 () Bool)

(declare-fun res!81776 () Bool)

(assert (=> b!172184 (=> (not res!81776) (not e!113657))))

(declare-fun arrayCountValidKeys!0 (array!7150 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!172184 (= res!81776 (= (arrayCountValidKeys!0 (_keys!5400 thiss!1248) #b00000000000000000000000000000000 (size!3695 (_keys!5400 thiss!1248))) (_size!1168 thiss!1248)))))

(declare-fun b!172185 () Bool)

(declare-fun res!81777 () Bool)

(assert (=> b!172185 (=> (not res!81777) (not e!113657))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7150 (_ BitVec 32)) Bool)

(assert (=> b!172185 (= res!81777 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5400 thiss!1248) (mask!8402 thiss!1248)))))

(declare-fun b!172186 () Bool)

(declare-datatypes ((List!2217 0))(
  ( (Nil!2214) (Cons!2213 (h!2830 (_ BitVec 64)) (t!7032 List!2217)) )
))
(declare-fun arrayNoDuplicates!0 (array!7150 (_ BitVec 32) List!2217) Bool)

(assert (=> b!172186 (= e!113657 (arrayNoDuplicates!0 (_keys!5400 thiss!1248) #b00000000000000000000000000000000 Nil!2214))))

(assert (= (and d!52395 res!81775) b!172184))

(assert (= (and b!172184 res!81776) b!172185))

(assert (= (and b!172185 res!81777) b!172186))

(declare-fun m!201113 () Bool)

(assert (=> d!52395 m!201113))

(declare-fun m!201115 () Bool)

(assert (=> b!172184 m!201115))

(declare-fun m!201117 () Bool)

(assert (=> b!172185 m!201117))

(declare-fun m!201119 () Bool)

(assert (=> b!172186 m!201119))

(assert (=> start!17138 d!52395))

(declare-fun b!172194 () Bool)

(declare-fun e!113662 () Bool)

(assert (=> b!172194 (= e!113662 tp_is_empty!4017)))

(declare-fun b!172193 () Bool)

(declare-fun e!113663 () Bool)

(assert (=> b!172193 (= e!113663 tp_is_empty!4017)))

(declare-fun mapIsEmpty!6833 () Bool)

(declare-fun mapRes!6833 () Bool)

(assert (=> mapIsEmpty!6833 mapRes!6833))

(declare-fun condMapEmpty!6833 () Bool)

(declare-fun mapDefault!6833 () ValueCell!1665)

(assert (=> mapNonEmpty!6827 (= condMapEmpty!6833 (= mapRest!6827 ((as const (Array (_ BitVec 32) ValueCell!1665)) mapDefault!6833)))))

(assert (=> mapNonEmpty!6827 (= tp!15374 (and e!113662 mapRes!6833))))

(declare-fun mapNonEmpty!6833 () Bool)

(declare-fun tp!15383 () Bool)

(assert (=> mapNonEmpty!6833 (= mapRes!6833 (and tp!15383 e!113663))))

(declare-fun mapKey!6833 () (_ BitVec 32))

(declare-fun mapValue!6833 () ValueCell!1665)

(declare-fun mapRest!6833 () (Array (_ BitVec 32) ValueCell!1665))

(assert (=> mapNonEmpty!6833 (= mapRest!6827 (store mapRest!6833 mapKey!6833 mapValue!6833))))

(assert (= (and mapNonEmpty!6827 condMapEmpty!6833) mapIsEmpty!6833))

(assert (= (and mapNonEmpty!6827 (not condMapEmpty!6833)) mapNonEmpty!6833))

(assert (= (and mapNonEmpty!6833 ((_ is ValueCellFull!1665) mapValue!6833)) b!172193))

(assert (= (and mapNonEmpty!6827 ((_ is ValueCellFull!1665) mapDefault!6833)) b!172194))

(declare-fun m!201121 () Bool)

(assert (=> mapNonEmpty!6833 m!201121))

(check-sat tp_is_empty!4017 (not b!172186) (not mapNonEmpty!6833) (not b!172185) (not d!52395) (not b!172184) b_and!10703 (not b_next!4245))
(check-sat b_and!10703 (not b_next!4245))
(get-model)

(declare-fun d!52397 () Bool)

(declare-fun res!81786 () Bool)

(declare-fun e!113672 () Bool)

(assert (=> d!52397 (=> res!81786 e!113672)))

(assert (=> d!52397 (= res!81786 (bvsge #b00000000000000000000000000000000 (size!3695 (_keys!5400 thiss!1248))))))

(assert (=> d!52397 (= (arrayNoDuplicates!0 (_keys!5400 thiss!1248) #b00000000000000000000000000000000 Nil!2214) e!113672)))

(declare-fun b!172205 () Bool)

(declare-fun e!113674 () Bool)

(declare-fun contains!1148 (List!2217 (_ BitVec 64)) Bool)

(assert (=> b!172205 (= e!113674 (contains!1148 Nil!2214 (select (arr!3400 (_keys!5400 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17510 () Bool)

(declare-fun call!17513 () Bool)

(declare-fun c!30823 () Bool)

(assert (=> bm!17510 (= call!17513 (arrayNoDuplicates!0 (_keys!5400 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30823 (Cons!2213 (select (arr!3400 (_keys!5400 thiss!1248)) #b00000000000000000000000000000000) Nil!2214) Nil!2214)))))

(declare-fun b!172206 () Bool)

(declare-fun e!113675 () Bool)

(assert (=> b!172206 (= e!113672 e!113675)))

(declare-fun res!81785 () Bool)

(assert (=> b!172206 (=> (not res!81785) (not e!113675))))

(assert (=> b!172206 (= res!81785 (not e!113674))))

(declare-fun res!81784 () Bool)

(assert (=> b!172206 (=> (not res!81784) (not e!113674))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!172206 (= res!81784 (validKeyInArray!0 (select (arr!3400 (_keys!5400 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!172207 () Bool)

(declare-fun e!113673 () Bool)

(assert (=> b!172207 (= e!113673 call!17513)))

(declare-fun b!172208 () Bool)

(assert (=> b!172208 (= e!113673 call!17513)))

(declare-fun b!172209 () Bool)

(assert (=> b!172209 (= e!113675 e!113673)))

(assert (=> b!172209 (= c!30823 (validKeyInArray!0 (select (arr!3400 (_keys!5400 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!52397 (not res!81786)) b!172206))

(assert (= (and b!172206 res!81784) b!172205))

(assert (= (and b!172206 res!81785) b!172209))

(assert (= (and b!172209 c!30823) b!172207))

(assert (= (and b!172209 (not c!30823)) b!172208))

(assert (= (or b!172207 b!172208) bm!17510))

(declare-fun m!201123 () Bool)

(assert (=> b!172205 m!201123))

(assert (=> b!172205 m!201123))

(declare-fun m!201125 () Bool)

(assert (=> b!172205 m!201125))

(assert (=> bm!17510 m!201123))

(declare-fun m!201127 () Bool)

(assert (=> bm!17510 m!201127))

(assert (=> b!172206 m!201123))

(assert (=> b!172206 m!201123))

(declare-fun m!201129 () Bool)

(assert (=> b!172206 m!201129))

(assert (=> b!172209 m!201123))

(assert (=> b!172209 m!201123))

(assert (=> b!172209 m!201129))

(assert (=> b!172186 d!52397))

(declare-fun b!172220 () Bool)

(declare-fun res!81796 () Bool)

(declare-fun e!113678 () Bool)

(assert (=> b!172220 (=> (not res!81796) (not e!113678))))

(declare-fun size!3699 (LongMapFixedSize!2238) (_ BitVec 32))

(assert (=> b!172220 (= res!81796 (= (size!3699 thiss!1248) (bvadd (_size!1168 thiss!1248) (bvsdiv (bvadd (extraKeys!3304 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!172218 () Bool)

(declare-fun res!81797 () Bool)

(assert (=> b!172218 (=> (not res!81797) (not e!113678))))

(assert (=> b!172218 (= res!81797 (and (= (size!3696 (_values!3548 thiss!1248)) (bvadd (mask!8402 thiss!1248) #b00000000000000000000000000000001)) (= (size!3695 (_keys!5400 thiss!1248)) (size!3696 (_values!3548 thiss!1248))) (bvsge (_size!1168 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1168 thiss!1248) (bvadd (mask!8402 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!172221 () Bool)

(assert (=> b!172221 (= e!113678 (and (bvsge (extraKeys!3304 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3304 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1168 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun d!52399 () Bool)

(declare-fun res!81795 () Bool)

(assert (=> d!52399 (=> (not res!81795) (not e!113678))))

(assert (=> d!52399 (= res!81795 (validMask!0 (mask!8402 thiss!1248)))))

(assert (=> d!52399 (= (simpleValid!136 thiss!1248) e!113678)))

(declare-fun b!172219 () Bool)

(declare-fun res!81798 () Bool)

(assert (=> b!172219 (=> (not res!81798) (not e!113678))))

(assert (=> b!172219 (= res!81798 (bvsge (size!3699 thiss!1248) (_size!1168 thiss!1248)))))

(assert (= (and d!52399 res!81795) b!172218))

(assert (= (and b!172218 res!81797) b!172219))

(assert (= (and b!172219 res!81798) b!172220))

(assert (= (and b!172220 res!81796) b!172221))

(declare-fun m!201131 () Bool)

(assert (=> b!172220 m!201131))

(assert (=> d!52399 m!201093))

(assert (=> b!172219 m!201131))

(assert (=> d!52395 d!52399))

(declare-fun bm!17513 () Bool)

(declare-fun call!17516 () (_ BitVec 32))

(assert (=> bm!17513 (= call!17516 (arrayCountValidKeys!0 (_keys!5400 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3695 (_keys!5400 thiss!1248))))))

(declare-fun b!172230 () Bool)

(declare-fun e!113684 () (_ BitVec 32))

(declare-fun e!113683 () (_ BitVec 32))

(assert (=> b!172230 (= e!113684 e!113683)))

(declare-fun c!30828 () Bool)

(assert (=> b!172230 (= c!30828 (validKeyInArray!0 (select (arr!3400 (_keys!5400 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!172231 () Bool)

(assert (=> b!172231 (= e!113683 (bvadd #b00000000000000000000000000000001 call!17516))))

(declare-fun b!172232 () Bool)

(assert (=> b!172232 (= e!113684 #b00000000000000000000000000000000)))

(declare-fun d!52401 () Bool)

(declare-fun lt!85670 () (_ BitVec 32))

(assert (=> d!52401 (and (bvsge lt!85670 #b00000000000000000000000000000000) (bvsle lt!85670 (bvsub (size!3695 (_keys!5400 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!52401 (= lt!85670 e!113684)))

(declare-fun c!30829 () Bool)

(assert (=> d!52401 (= c!30829 (bvsge #b00000000000000000000000000000000 (size!3695 (_keys!5400 thiss!1248))))))

(assert (=> d!52401 (and (bvsle #b00000000000000000000000000000000 (size!3695 (_keys!5400 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3695 (_keys!5400 thiss!1248)) (size!3695 (_keys!5400 thiss!1248))))))

(assert (=> d!52401 (= (arrayCountValidKeys!0 (_keys!5400 thiss!1248) #b00000000000000000000000000000000 (size!3695 (_keys!5400 thiss!1248))) lt!85670)))

(declare-fun b!172233 () Bool)

(assert (=> b!172233 (= e!113683 call!17516)))

(assert (= (and d!52401 c!30829) b!172232))

(assert (= (and d!52401 (not c!30829)) b!172230))

(assert (= (and b!172230 c!30828) b!172231))

(assert (= (and b!172230 (not c!30828)) b!172233))

(assert (= (or b!172231 b!172233) bm!17513))

(declare-fun m!201133 () Bool)

(assert (=> bm!17513 m!201133))

(assert (=> b!172230 m!201123))

(assert (=> b!172230 m!201123))

(assert (=> b!172230 m!201129))

(assert (=> b!172184 d!52401))

(declare-fun b!172242 () Bool)

(declare-fun e!113693 () Bool)

(declare-fun e!113692 () Bool)

(assert (=> b!172242 (= e!113693 e!113692)))

(declare-fun lt!85679 () (_ BitVec 64))

(assert (=> b!172242 (= lt!85679 (select (arr!3400 (_keys!5400 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5299 0))(
  ( (Unit!5300) )
))
(declare-fun lt!85677 () Unit!5299)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7150 (_ BitVec 64) (_ BitVec 32)) Unit!5299)

(assert (=> b!172242 (= lt!85677 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5400 thiss!1248) lt!85679 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7150 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!172242 (arrayContainsKey!0 (_keys!5400 thiss!1248) lt!85679 #b00000000000000000000000000000000)))

(declare-fun lt!85678 () Unit!5299)

(assert (=> b!172242 (= lt!85678 lt!85677)))

(declare-fun res!81804 () Bool)

(declare-datatypes ((SeekEntryResult!546 0))(
  ( (MissingZero!546 (index!4352 (_ BitVec 32))) (Found!546 (index!4353 (_ BitVec 32))) (Intermediate!546 (undefined!1358 Bool) (index!4354 (_ BitVec 32)) (x!19023 (_ BitVec 32))) (Undefined!546) (MissingVacant!546 (index!4355 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7150 (_ BitVec 32)) SeekEntryResult!546)

(assert (=> b!172242 (= res!81804 (= (seekEntryOrOpen!0 (select (arr!3400 (_keys!5400 thiss!1248)) #b00000000000000000000000000000000) (_keys!5400 thiss!1248) (mask!8402 thiss!1248)) (Found!546 #b00000000000000000000000000000000)))))

(assert (=> b!172242 (=> (not res!81804) (not e!113692))))

(declare-fun b!172243 () Bool)

(declare-fun e!113691 () Bool)

(assert (=> b!172243 (= e!113691 e!113693)))

(declare-fun c!30832 () Bool)

(assert (=> b!172243 (= c!30832 (validKeyInArray!0 (select (arr!3400 (_keys!5400 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17516 () Bool)

(declare-fun call!17519 () Bool)

(assert (=> bm!17516 (= call!17519 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5400 thiss!1248) (mask!8402 thiss!1248)))))

(declare-fun d!52403 () Bool)

(declare-fun res!81803 () Bool)

(assert (=> d!52403 (=> res!81803 e!113691)))

(assert (=> d!52403 (= res!81803 (bvsge #b00000000000000000000000000000000 (size!3695 (_keys!5400 thiss!1248))))))

(assert (=> d!52403 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5400 thiss!1248) (mask!8402 thiss!1248)) e!113691)))

(declare-fun b!172244 () Bool)

(assert (=> b!172244 (= e!113693 call!17519)))

(declare-fun b!172245 () Bool)

(assert (=> b!172245 (= e!113692 call!17519)))

(assert (= (and d!52403 (not res!81803)) b!172243))

(assert (= (and b!172243 c!30832) b!172242))

(assert (= (and b!172243 (not c!30832)) b!172244))

(assert (= (and b!172242 res!81804) b!172245))

(assert (= (or b!172245 b!172244) bm!17516))

(assert (=> b!172242 m!201123))

(declare-fun m!201135 () Bool)

(assert (=> b!172242 m!201135))

(declare-fun m!201137 () Bool)

(assert (=> b!172242 m!201137))

(assert (=> b!172242 m!201123))

(declare-fun m!201139 () Bool)

(assert (=> b!172242 m!201139))

(assert (=> b!172243 m!201123))

(assert (=> b!172243 m!201123))

(assert (=> b!172243 m!201129))

(declare-fun m!201141 () Bool)

(assert (=> bm!17516 m!201141))

(assert (=> b!172185 d!52403))

(declare-fun b!172247 () Bool)

(declare-fun e!113694 () Bool)

(assert (=> b!172247 (= e!113694 tp_is_empty!4017)))

(declare-fun b!172246 () Bool)

(declare-fun e!113695 () Bool)

(assert (=> b!172246 (= e!113695 tp_is_empty!4017)))

(declare-fun mapIsEmpty!6834 () Bool)

(declare-fun mapRes!6834 () Bool)

(assert (=> mapIsEmpty!6834 mapRes!6834))

(declare-fun condMapEmpty!6834 () Bool)

(declare-fun mapDefault!6834 () ValueCell!1665)

(assert (=> mapNonEmpty!6833 (= condMapEmpty!6834 (= mapRest!6833 ((as const (Array (_ BitVec 32) ValueCell!1665)) mapDefault!6834)))))

(assert (=> mapNonEmpty!6833 (= tp!15383 (and e!113694 mapRes!6834))))

(declare-fun mapNonEmpty!6834 () Bool)

(declare-fun tp!15384 () Bool)

(assert (=> mapNonEmpty!6834 (= mapRes!6834 (and tp!15384 e!113695))))

(declare-fun mapRest!6834 () (Array (_ BitVec 32) ValueCell!1665))

(declare-fun mapKey!6834 () (_ BitVec 32))

(declare-fun mapValue!6834 () ValueCell!1665)

(assert (=> mapNonEmpty!6834 (= mapRest!6833 (store mapRest!6834 mapKey!6834 mapValue!6834))))

(assert (= (and mapNonEmpty!6833 condMapEmpty!6834) mapIsEmpty!6834))

(assert (= (and mapNonEmpty!6833 (not condMapEmpty!6834)) mapNonEmpty!6834))

(assert (= (and mapNonEmpty!6834 ((_ is ValueCellFull!1665) mapValue!6834)) b!172246))

(assert (= (and mapNonEmpty!6833 ((_ is ValueCellFull!1665) mapDefault!6834)) b!172247))

(declare-fun m!201143 () Bool)

(assert (=> mapNonEmpty!6834 m!201143))

(check-sat (not b!172242) (not b!172209) (not b!172206) (not bm!17510) (not b!172243) (not b!172230) b_and!10703 (not b!172220) (not bm!17513) (not b_next!4245) tp_is_empty!4017 (not b!172219) (not mapNonEmpty!6834) (not bm!17516) (not d!52399) (not b!172205))
(check-sat b_and!10703 (not b_next!4245))
