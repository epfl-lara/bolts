; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3318 () Bool)

(assert start!3318)

(declare-fun b!20685 () Bool)

(declare-fun b_free!723 () Bool)

(declare-fun b_next!723 () Bool)

(assert (=> b!20685 (= b_free!723 (not b_next!723))))

(declare-fun tp!3400 () Bool)

(declare-fun b_and!1405 () Bool)

(assert (=> b!20685 (= tp!3400 b_and!1405)))

(declare-fun b!20683 () Bool)

(declare-datatypes ((V!1141 0))(
  ( (V!1142 (val!520 Int)) )
))
(declare-datatypes ((array!1193 0))(
  ( (array!1194 (arr!567 (Array (_ BitVec 32) (_ BitVec 64))) (size!660 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!294 0))(
  ( (ValueCellFull!294 (v!1558 V!1141)) (EmptyCell!294) )
))
(declare-datatypes ((array!1195 0))(
  ( (array!1196 (arr!568 (Array (_ BitVec 32) ValueCell!294)) (size!661 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!174 0))(
  ( (LongMapFixedSize!175 (defaultEntry!1711 Int) (mask!4678 (_ BitVec 32)) (extraKeys!1616 (_ BitVec 32)) (zeroValue!1640 V!1141) (minValue!1640 V!1141) (_size!126 (_ BitVec 32)) (_keys!3134 array!1193) (_values!1702 array!1195) (_vacant!126 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!174 0))(
  ( (Cell!175 (v!1559 LongMapFixedSize!174)) )
))
(declare-datatypes ((tuple2!852 0))(
  ( (tuple2!853 (_1!429 Bool) (_2!429 Cell!174)) )
))
(declare-fun e!13513 () tuple2!852)

(declare-datatypes ((tuple2!854 0))(
  ( (tuple2!855 (_1!430 Bool) (_2!430 LongMapFixedSize!174)) )
))
(declare-fun lt!6187 () tuple2!854)

(assert (=> b!20683 (= e!13513 (tuple2!853 (_1!430 lt!6187) (Cell!175 (_2!430 lt!6187))))))

(declare-fun call!1119 () tuple2!854)

(assert (=> b!20683 (= lt!6187 call!1119)))

(declare-fun b!20684 () Bool)

(declare-fun e!13524 () Bool)

(declare-fun e!13514 () Bool)

(assert (=> b!20684 (= e!13524 e!13514)))

(declare-fun e!13522 () Bool)

(declare-fun tp_is_empty!987 () Bool)

(declare-datatypes ((LongMap!174 0))(
  ( (LongMap!175 (underlying!98 Cell!174)) )
))
(declare-fun thiss!938 () LongMap!174)

(declare-fun e!13515 () Bool)

(declare-fun array_inv!401 (array!1193) Bool)

(declare-fun array_inv!402 (array!1195) Bool)

(assert (=> b!20685 (= e!13522 (and tp!3400 tp_is_empty!987 (array_inv!401 (_keys!3134 (v!1559 (underlying!98 thiss!938)))) (array_inv!402 (_values!1702 (v!1559 (underlying!98 thiss!938)))) e!13515))))

(declare-fun b!20686 () Bool)

(declare-fun e!13518 () Bool)

(assert (=> b!20686 (= e!13518 tp_is_empty!987)))

(declare-fun b!20687 () Bool)

(declare-fun e!13523 () Bool)

(declare-fun e!13519 () Bool)

(assert (=> b!20687 (= e!13523 e!13519)))

(declare-fun res!13526 () Bool)

(assert (=> b!20687 (=> (not res!13526) (not e!13519))))

(declare-fun lt!6191 () tuple2!852)

(assert (=> b!20687 (= res!13526 (_1!429 lt!6191))))

(declare-fun e!13517 () tuple2!852)

(assert (=> b!20687 (= lt!6191 e!13517)))

(declare-fun c!2298 () Bool)

(declare-fun lt!6189 () Bool)

(assert (=> b!20687 (= c!2298 (and (not lt!6189) (not (= (bvand (extraKeys!1616 (v!1559 (underlying!98 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!20687 (= lt!6189 (= (bvand (extraKeys!1616 (v!1559 (underlying!98 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun lt!6190 () LongMapFixedSize!174)

(declare-fun getNewLongMapFixedSize!21 ((_ BitVec 32) Int) LongMapFixedSize!174)

(declare-fun computeNewMask!18 (LongMap!174 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!20687 (= lt!6190 (getNewLongMapFixedSize!21 (computeNewMask!18 thiss!938 (mask!4678 (v!1559 (underlying!98 thiss!938))) (_vacant!126 (v!1559 (underlying!98 thiss!938))) (_size!126 (v!1559 (underlying!98 thiss!938)))) (defaultEntry!1711 (v!1559 (underlying!98 thiss!938)))))))

(declare-fun bm!1116 () Bool)

(declare-fun c!2297 () Bool)

(declare-fun lt!6186 () tuple2!854)

(declare-fun call!1120 () tuple2!854)

(declare-fun update!20 (LongMapFixedSize!174 (_ BitVec 64) V!1141) tuple2!854)

(assert (=> bm!1116 (= call!1120 (update!20 (ite c!2298 (_2!430 lt!6186) lt!6190) (ite c!2298 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2297 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2298 (minValue!1640 (v!1559 (underlying!98 thiss!938))) (ite c!2297 (zeroValue!1640 (v!1559 (underlying!98 thiss!938))) (minValue!1640 (v!1559 (underlying!98 thiss!938)))))))))

(declare-fun b!20689 () Bool)

(declare-fun res!13528 () Bool)

(assert (=> b!20689 (=> (not res!13528) (not e!13519))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!20689 (= res!13528 (validMask!0 (mask!4678 (v!1559 (underlying!98 thiss!938)))))))

(declare-fun bm!1117 () Bool)

(assert (=> bm!1117 (= call!1119 call!1120)))

(declare-fun b!20690 () Bool)

(declare-fun res!13527 () Bool)

(assert (=> b!20690 (=> (not res!13527) (not e!13519))))

(assert (=> b!20690 (= res!13527 (and (= (size!660 (_keys!3134 (v!1559 (underlying!98 thiss!938)))) (bvadd #b00000000000000000000000000000001 (mask!4678 (v!1559 (underlying!98 thiss!938))))) (bvsge (bvsub (size!660 (_keys!3134 (v!1559 (underlying!98 thiss!938)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub (size!660 (_keys!3134 (v!1559 (underlying!98 thiss!938)))) #b00000000000000000000000000000001) (size!660 (_keys!3134 (v!1559 (underlying!98 thiss!938)))))))))

(declare-fun b!20691 () Bool)

(declare-fun e!13516 () Bool)

(declare-fun mapRes!955 () Bool)

(assert (=> b!20691 (= e!13515 (and e!13516 mapRes!955))))

(declare-fun condMapEmpty!955 () Bool)

(declare-fun mapDefault!955 () ValueCell!294)

(assert (=> b!20691 (= condMapEmpty!955 (= (arr!568 (_values!1702 (v!1559 (underlying!98 thiss!938)))) ((as const (Array (_ BitVec 32) ValueCell!294)) mapDefault!955)))))

(declare-fun b!20692 () Bool)

(declare-fun valid!88 (LongMapFixedSize!174) Bool)

(assert (=> b!20692 (= e!13519 (not (valid!88 (v!1559 (_2!429 lt!6191)))))))

(declare-fun b!20693 () Bool)

(declare-fun e!13521 () tuple2!852)

(assert (=> b!20693 (= e!13517 e!13521)))

(assert (=> b!20693 (= c!2297 (and (not lt!6189) (= (bvand (extraKeys!1616 (v!1559 (underlying!98 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!20694 () Bool)

(assert (=> b!20694 (= e!13516 tp_is_empty!987)))

(declare-fun b!20688 () Bool)

(assert (=> b!20688 (= e!13514 e!13522)))

(declare-fun res!13529 () Bool)

(assert (=> start!3318 (=> (not res!13529) (not e!13523))))

(declare-fun valid!89 (LongMap!174) Bool)

(assert (=> start!3318 (= res!13529 (valid!89 thiss!938))))

(assert (=> start!3318 e!13523))

(assert (=> start!3318 e!13524))

(declare-fun b!20695 () Bool)

(declare-fun c!2299 () Bool)

(assert (=> b!20695 (= c!2299 (and (not (= (bvand (extraKeys!1616 (v!1559 (underlying!98 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!6189))))

(assert (=> b!20695 (= e!13521 e!13513)))

(declare-fun b!20696 () Bool)

(declare-fun lt!6188 () tuple2!854)

(assert (=> b!20696 (= e!13517 (tuple2!853 (and (_1!430 lt!6186) (_1!430 lt!6188)) (Cell!175 (_2!430 lt!6188))))))

(assert (=> b!20696 (= lt!6186 (update!20 lt!6190 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1640 (v!1559 (underlying!98 thiss!938)))))))

(assert (=> b!20696 (= lt!6188 call!1120)))

(declare-fun mapIsEmpty!955 () Bool)

(assert (=> mapIsEmpty!955 mapRes!955))

(declare-fun mapNonEmpty!955 () Bool)

(declare-fun tp!3399 () Bool)

(assert (=> mapNonEmpty!955 (= mapRes!955 (and tp!3399 e!13518))))

(declare-fun mapRest!955 () (Array (_ BitVec 32) ValueCell!294))

(declare-fun mapKey!955 () (_ BitVec 32))

(declare-fun mapValue!955 () ValueCell!294)

(assert (=> mapNonEmpty!955 (= (arr!568 (_values!1702 (v!1559 (underlying!98 thiss!938)))) (store mapRest!955 mapKey!955 mapValue!955))))

(declare-fun b!20697 () Bool)

(declare-fun lt!6185 () tuple2!854)

(assert (=> b!20697 (= lt!6185 call!1119)))

(assert (=> b!20697 (= e!13521 (tuple2!853 (_1!430 lt!6185) (Cell!175 (_2!430 lt!6185))))))

(declare-fun b!20698 () Bool)

(assert (=> b!20698 (= e!13513 (tuple2!853 true (Cell!175 lt!6190)))))

(assert (= (and start!3318 res!13529) b!20687))

(assert (= (and b!20687 c!2298) b!20696))

(assert (= (and b!20687 (not c!2298)) b!20693))

(assert (= (and b!20693 c!2297) b!20697))

(assert (= (and b!20693 (not c!2297)) b!20695))

(assert (= (and b!20695 c!2299) b!20683))

(assert (= (and b!20695 (not c!2299)) b!20698))

(assert (= (or b!20697 b!20683) bm!1117))

(assert (= (or b!20696 bm!1117) bm!1116))

(assert (= (and b!20687 res!13526) b!20689))

(assert (= (and b!20689 res!13528) b!20690))

(assert (= (and b!20690 res!13527) b!20692))

(assert (= (and b!20691 condMapEmpty!955) mapIsEmpty!955))

(assert (= (and b!20691 (not condMapEmpty!955)) mapNonEmpty!955))

(get-info :version)

(assert (= (and mapNonEmpty!955 ((_ is ValueCellFull!294) mapValue!955)) b!20686))

(assert (= (and b!20691 ((_ is ValueCellFull!294) mapDefault!955)) b!20694))

(assert (= b!20685 b!20691))

(assert (= b!20688 b!20685))

(assert (= b!20684 b!20688))

(assert (= start!3318 b!20684))

(declare-fun m!14463 () Bool)

(assert (=> start!3318 m!14463))

(declare-fun m!14465 () Bool)

(assert (=> mapNonEmpty!955 m!14465))

(declare-fun m!14467 () Bool)

(assert (=> b!20689 m!14467))

(declare-fun m!14469 () Bool)

(assert (=> bm!1116 m!14469))

(declare-fun m!14471 () Bool)

(assert (=> b!20696 m!14471))

(declare-fun m!14473 () Bool)

(assert (=> b!20692 m!14473))

(declare-fun m!14475 () Bool)

(assert (=> b!20685 m!14475))

(declare-fun m!14477 () Bool)

(assert (=> b!20685 m!14477))

(declare-fun m!14479 () Bool)

(assert (=> b!20687 m!14479))

(assert (=> b!20687 m!14479))

(declare-fun m!14481 () Bool)

(assert (=> b!20687 m!14481))

(check-sat (not b!20687) (not b!20696) (not start!3318) (not bm!1116) (not b!20685) (not b_next!723) (not mapNonEmpty!955) tp_is_empty!987 b_and!1405 (not b!20692) (not b!20689))
(check-sat b_and!1405 (not b_next!723))
(get-model)

(declare-fun d!3699 () Bool)

(assert (=> d!3699 (= (array_inv!401 (_keys!3134 (v!1559 (underlying!98 thiss!938)))) (bvsge (size!660 (_keys!3134 (v!1559 (underlying!98 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!20685 d!3699))

(declare-fun d!3701 () Bool)

(assert (=> d!3701 (= (array_inv!402 (_values!1702 (v!1559 (underlying!98 thiss!938)))) (bvsge (size!661 (_values!1702 (v!1559 (underlying!98 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!20685 d!3701))

(declare-fun d!3703 () Bool)

(assert (=> d!3703 (= (validMask!0 (mask!4678 (v!1559 (underlying!98 thiss!938)))) (and (or (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000000000000000000000000000111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000000000000000000000000001111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000000000000000000000000011111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000000000000000000000000111111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000000000000000000000001111111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000000000000000000000011111111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000000000000000000000111111111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000000000000000000001111111111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000000000000000000011111111111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000000000000000000111111111111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000000000000000001111111111111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000000000000000011111111111111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000000000000000111111111111111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000000000000001111111111111111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000000000000011111111111111111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000000000000111111111111111111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000000000001111111111111111111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000000000011111111111111111111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000000000111111111111111111111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000000001111111111111111111111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000000011111111111111111111111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000000111111111111111111111111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000001111111111111111111111111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000011111111111111111111111111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000111111111111111111111111111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00001111111111111111111111111111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00011111111111111111111111111111) (= (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00111111111111111111111111111111)) (bvsle (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00111111111111111111111111111111)))))

(assert (=> b!20689 d!3703))

(declare-fun b!20760 () Bool)

(declare-fun e!13569 () Bool)

(declare-datatypes ((tuple2!860 0))(
  ( (tuple2!861 (_1!433 (_ BitVec 64)) (_2!433 V!1141)) )
))
(declare-fun lt!6281 () tuple2!860)

(declare-fun lt!6262 () (_ BitVec 32))

(assert (=> b!20760 (= e!13569 (ite (= (_1!433 lt!6281) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!6262 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!6262 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!20761 () Bool)

(declare-fun e!13567 () Bool)

(declare-fun lt!6273 () LongMapFixedSize!174)

(declare-datatypes ((List!553 0))(
  ( (Nil!550) (Cons!549 (h!1115 tuple2!860) (t!3210 List!553)) )
))
(declare-datatypes ((ListLongMap!539 0))(
  ( (ListLongMap!540 (toList!285 List!553)) )
))
(declare-fun map!391 (LongMapFixedSize!174) ListLongMap!539)

(assert (=> b!20761 (= e!13567 (= (map!391 lt!6273) (ListLongMap!540 Nil!550)))))

(declare-fun b!20762 () Bool)

(declare-datatypes ((Unit!432 0))(
  ( (Unit!433) )
))
(declare-fun e!13568 () Unit!432)

(declare-fun Unit!434 () Unit!432)

(assert (=> b!20762 (= e!13568 Unit!434)))

(declare-fun lt!6271 () LongMapFixedSize!174)

(declare-fun head!825 (List!553) tuple2!860)

(assert (=> b!20762 (= lt!6281 (head!825 (toList!285 (map!391 lt!6271))))))

(declare-fun lt!6280 () array!1193)

(assert (=> b!20762 (= lt!6280 (array!1194 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!18 thiss!938 (mask!4678 (v!1559 (underlying!98 thiss!938))) (_vacant!126 (v!1559 (underlying!98 thiss!938))) (_size!126 (v!1559 (underlying!98 thiss!938)))) #b00000000000000000000000000000001)))))

(assert (=> b!20762 (= lt!6262 #b00000000000000000000000000000000)))

(declare-fun lt!6268 () Unit!432)

(declare-fun lemmaKeyInListMapIsInArray!88 (array!1193 array!1195 (_ BitVec 32) (_ BitVec 32) V!1141 V!1141 (_ BitVec 64) Int) Unit!432)

(declare-fun dynLambda!139 (Int (_ BitVec 64)) V!1141)

(assert (=> b!20762 (= lt!6268 (lemmaKeyInListMapIsInArray!88 lt!6280 (array!1196 ((as const (Array (_ BitVec 32) ValueCell!294)) EmptyCell!294) (bvadd (computeNewMask!18 thiss!938 (mask!4678 (v!1559 (underlying!98 thiss!938))) (_vacant!126 (v!1559 (underlying!98 thiss!938))) (_size!126 (v!1559 (underlying!98 thiss!938)))) #b00000000000000000000000000000001)) (computeNewMask!18 thiss!938 (mask!4678 (v!1559 (underlying!98 thiss!938))) (_vacant!126 (v!1559 (underlying!98 thiss!938))) (_size!126 (v!1559 (underlying!98 thiss!938)))) lt!6262 (dynLambda!139 (defaultEntry!1711 (v!1559 (underlying!98 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!139 (defaultEntry!1711 (v!1559 (underlying!98 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (_1!433 lt!6281) (defaultEntry!1711 (v!1559 (underlying!98 thiss!938)))))))

(declare-fun c!2314 () Bool)

(assert (=> b!20762 (= c!2314 (and (not (= (_1!433 lt!6281) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!433 lt!6281) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!20762 e!13569))

(declare-fun lt!6272 () Unit!432)

(assert (=> b!20762 (= lt!6272 lt!6268)))

(declare-fun lt!6278 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1193 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!20762 (= lt!6278 (arrayScanForKey!0 (array!1194 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!18 thiss!938 (mask!4678 (v!1559 (underlying!98 thiss!938))) (_vacant!126 (v!1559 (underlying!98 thiss!938))) (_size!126 (v!1559 (underlying!98 thiss!938)))) #b00000000000000000000000000000001)) (_1!433 lt!6281) #b00000000000000000000000000000000))))

(assert (=> b!20762 false))

(declare-fun b!20763 () Bool)

(declare-fun Unit!435 () Unit!432)

(assert (=> b!20763 (= e!13568 Unit!435)))

(declare-fun b!20764 () Bool)

(declare-fun arrayContainsKey!0 (array!1193 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!20764 (= e!13569 (arrayContainsKey!0 lt!6280 (_1!433 lt!6281) #b00000000000000000000000000000000))))

(declare-fun b!20759 () Bool)

(declare-fun res!13547 () Bool)

(assert (=> b!20759 (=> (not res!13547) (not e!13567))))

(assert (=> b!20759 (= res!13547 (= (mask!4678 lt!6273) (computeNewMask!18 thiss!938 (mask!4678 (v!1559 (underlying!98 thiss!938))) (_vacant!126 (v!1559 (underlying!98 thiss!938))) (_size!126 (v!1559 (underlying!98 thiss!938))))))))

(declare-fun d!3705 () Bool)

(assert (=> d!3705 e!13567))

(declare-fun res!13546 () Bool)

(assert (=> d!3705 (=> (not res!13546) (not e!13567))))

(assert (=> d!3705 (= res!13546 (valid!88 lt!6273))))

(assert (=> d!3705 (= lt!6273 lt!6271)))

(declare-fun lt!6269 () Unit!432)

(assert (=> d!3705 (= lt!6269 e!13568)))

(declare-fun c!2313 () Bool)

(assert (=> d!3705 (= c!2313 (not (= (map!391 lt!6271) (ListLongMap!540 Nil!550))))))

(declare-fun lt!6260 () Unit!432)

(declare-fun lt!6261 () Unit!432)

(assert (=> d!3705 (= lt!6260 lt!6261)))

(declare-fun lt!6276 () array!1193)

(declare-fun lt!6264 () (_ BitVec 32))

(declare-datatypes ((List!554 0))(
  ( (Nil!551) (Cons!550 (h!1116 (_ BitVec 64)) (t!3211 List!554)) )
))
(declare-fun lt!6277 () List!554)

(declare-fun arrayNoDuplicates!0 (array!1193 (_ BitVec 32) List!554) Bool)

(assert (=> d!3705 (arrayNoDuplicates!0 lt!6276 lt!6264 lt!6277)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!1193 (_ BitVec 32) (_ BitVec 32) List!554) Unit!432)

(assert (=> d!3705 (= lt!6261 (lemmaArrayNoDuplicatesInAll0Array!0 lt!6276 lt!6264 (bvadd (computeNewMask!18 thiss!938 (mask!4678 (v!1559 (underlying!98 thiss!938))) (_vacant!126 (v!1559 (underlying!98 thiss!938))) (_size!126 (v!1559 (underlying!98 thiss!938)))) #b00000000000000000000000000000001) lt!6277))))

(assert (=> d!3705 (= lt!6277 Nil!551)))

(assert (=> d!3705 (= lt!6264 #b00000000000000000000000000000000)))

(assert (=> d!3705 (= lt!6276 (array!1194 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!18 thiss!938 (mask!4678 (v!1559 (underlying!98 thiss!938))) (_vacant!126 (v!1559 (underlying!98 thiss!938))) (_size!126 (v!1559 (underlying!98 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!6263 () Unit!432)

(declare-fun lt!6267 () Unit!432)

(assert (=> d!3705 (= lt!6263 lt!6267)))

(declare-fun lt!6279 () (_ BitVec 32))

(declare-fun lt!6274 () array!1193)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1193 (_ BitVec 32)) Bool)

(assert (=> d!3705 (arrayForallSeekEntryOrOpenFound!0 lt!6279 lt!6274 (computeNewMask!18 thiss!938 (mask!4678 (v!1559 (underlying!98 thiss!938))) (_vacant!126 (v!1559 (underlying!98 thiss!938))) (_size!126 (v!1559 (underlying!98 thiss!938)))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!1193 (_ BitVec 32) (_ BitVec 32)) Unit!432)

(assert (=> d!3705 (= lt!6267 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!6274 (computeNewMask!18 thiss!938 (mask!4678 (v!1559 (underlying!98 thiss!938))) (_vacant!126 (v!1559 (underlying!98 thiss!938))) (_size!126 (v!1559 (underlying!98 thiss!938)))) lt!6279))))

(assert (=> d!3705 (= lt!6279 #b00000000000000000000000000000000)))

(assert (=> d!3705 (= lt!6274 (array!1194 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!18 thiss!938 (mask!4678 (v!1559 (underlying!98 thiss!938))) (_vacant!126 (v!1559 (underlying!98 thiss!938))) (_size!126 (v!1559 (underlying!98 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!6266 () Unit!432)

(declare-fun lt!6275 () Unit!432)

(assert (=> d!3705 (= lt!6266 lt!6275)))

(declare-fun lt!6265 () array!1193)

(declare-fun lt!6270 () (_ BitVec 32))

(declare-fun lt!6259 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!1193 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!3705 (= (arrayCountValidKeys!0 lt!6265 lt!6270 lt!6259) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!1193 (_ BitVec 32) (_ BitVec 32)) Unit!432)

(assert (=> d!3705 (= lt!6275 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!6265 lt!6270 lt!6259))))

(assert (=> d!3705 (= lt!6259 (bvadd (computeNewMask!18 thiss!938 (mask!4678 (v!1559 (underlying!98 thiss!938))) (_vacant!126 (v!1559 (underlying!98 thiss!938))) (_size!126 (v!1559 (underlying!98 thiss!938)))) #b00000000000000000000000000000001))))

(assert (=> d!3705 (= lt!6270 #b00000000000000000000000000000000)))

(assert (=> d!3705 (= lt!6265 (array!1194 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!18 thiss!938 (mask!4678 (v!1559 (underlying!98 thiss!938))) (_vacant!126 (v!1559 (underlying!98 thiss!938))) (_size!126 (v!1559 (underlying!98 thiss!938)))) #b00000000000000000000000000000001)))))

(assert (=> d!3705 (= lt!6271 (LongMapFixedSize!175 (defaultEntry!1711 (v!1559 (underlying!98 thiss!938))) (computeNewMask!18 thiss!938 (mask!4678 (v!1559 (underlying!98 thiss!938))) (_vacant!126 (v!1559 (underlying!98 thiss!938))) (_size!126 (v!1559 (underlying!98 thiss!938)))) #b00000000000000000000000000000000 (dynLambda!139 (defaultEntry!1711 (v!1559 (underlying!98 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!139 (defaultEntry!1711 (v!1559 (underlying!98 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000 (array!1194 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!18 thiss!938 (mask!4678 (v!1559 (underlying!98 thiss!938))) (_vacant!126 (v!1559 (underlying!98 thiss!938))) (_size!126 (v!1559 (underlying!98 thiss!938)))) #b00000000000000000000000000000001)) (array!1196 ((as const (Array (_ BitVec 32) ValueCell!294)) EmptyCell!294) (bvadd (computeNewMask!18 thiss!938 (mask!4678 (v!1559 (underlying!98 thiss!938))) (_vacant!126 (v!1559 (underlying!98 thiss!938))) (_size!126 (v!1559 (underlying!98 thiss!938)))) #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(assert (=> d!3705 (validMask!0 (computeNewMask!18 thiss!938 (mask!4678 (v!1559 (underlying!98 thiss!938))) (_vacant!126 (v!1559 (underlying!98 thiss!938))) (_size!126 (v!1559 (underlying!98 thiss!938)))))))

(assert (=> d!3705 (= (getNewLongMapFixedSize!21 (computeNewMask!18 thiss!938 (mask!4678 (v!1559 (underlying!98 thiss!938))) (_vacant!126 (v!1559 (underlying!98 thiss!938))) (_size!126 (v!1559 (underlying!98 thiss!938)))) (defaultEntry!1711 (v!1559 (underlying!98 thiss!938)))) lt!6273)))

(assert (= (and d!3705 c!2313) b!20762))

(assert (= (and d!3705 (not c!2313)) b!20763))

(assert (= (and b!20762 c!2314) b!20764))

(assert (= (and b!20762 (not c!2314)) b!20760))

(assert (= (and d!3705 res!13546) b!20759))

(assert (= (and b!20759 res!13547) b!20761))

(declare-fun b_lambda!1509 () Bool)

(assert (=> (not b_lambda!1509) (not b!20762)))

(declare-fun t!3209 () Bool)

(declare-fun tb!643 () Bool)

(assert (=> (and b!20685 (= (defaultEntry!1711 (v!1559 (underlying!98 thiss!938))) (defaultEntry!1711 (v!1559 (underlying!98 thiss!938)))) t!3209) tb!643))

(declare-fun result!1059 () Bool)

(assert (=> tb!643 (= result!1059 tp_is_empty!987)))

(assert (=> b!20762 t!3209))

(declare-fun b_and!1409 () Bool)

(assert (= b_and!1405 (and (=> t!3209 result!1059) b_and!1409)))

(declare-fun b_lambda!1511 () Bool)

(assert (=> (not b_lambda!1511) (not d!3705)))

(assert (=> d!3705 t!3209))

(declare-fun b_and!1411 () Bool)

(assert (= b_and!1409 (and (=> t!3209 result!1059) b_and!1411)))

(declare-fun m!14503 () Bool)

(assert (=> b!20761 m!14503))

(declare-fun m!14505 () Bool)

(assert (=> b!20762 m!14505))

(declare-fun m!14507 () Bool)

(assert (=> b!20762 m!14507))

(assert (=> b!20762 m!14479))

(declare-fun m!14509 () Bool)

(assert (=> b!20762 m!14509))

(assert (=> b!20762 m!14509))

(declare-fun m!14511 () Bool)

(assert (=> b!20762 m!14511))

(assert (=> b!20762 m!14509))

(declare-fun m!14513 () Bool)

(assert (=> b!20762 m!14513))

(declare-fun m!14515 () Bool)

(assert (=> b!20764 m!14515))

(assert (=> d!3705 m!14479))

(declare-fun m!14517 () Bool)

(assert (=> d!3705 m!14517))

(declare-fun m!14519 () Bool)

(assert (=> d!3705 m!14519))

(assert (=> d!3705 m!14507))

(declare-fun m!14521 () Bool)

(assert (=> d!3705 m!14521))

(assert (=> d!3705 m!14479))

(declare-fun m!14523 () Bool)

(assert (=> d!3705 m!14523))

(assert (=> d!3705 m!14479))

(declare-fun m!14525 () Bool)

(assert (=> d!3705 m!14525))

(declare-fun m!14527 () Bool)

(assert (=> d!3705 m!14527))

(declare-fun m!14529 () Bool)

(assert (=> d!3705 m!14529))

(declare-fun m!14531 () Bool)

(assert (=> d!3705 m!14531))

(assert (=> d!3705 m!14509))

(assert (=> b!20687 d!3705))

(declare-fun d!3707 () Bool)

(declare-fun e!13575 () Bool)

(assert (=> d!3707 e!13575))

(declare-fun res!13550 () Bool)

(assert (=> d!3707 (=> (not res!13550) (not e!13575))))

(declare-fun lt!6286 () (_ BitVec 32))

(assert (=> d!3707 (= res!13550 (validMask!0 lt!6286))))

(declare-datatypes ((tuple2!862 0))(
  ( (tuple2!863 (_1!434 Unit!432) (_2!434 (_ BitVec 32))) )
))
(declare-fun e!13574 () tuple2!862)

(assert (=> d!3707 (= lt!6286 (_2!434 e!13574))))

(declare-fun c!2317 () Bool)

(declare-fun lt!6287 () tuple2!862)

(assert (=> d!3707 (= c!2317 (and (bvsgt (_2!434 lt!6287) #b00000000000000000000000000001000) (bvslt (bvmul #b00000000000000000000000000001000 (_size!126 (v!1559 (underlying!98 thiss!938)))) (_2!434 lt!6287)) (bvsge (bvadd (bvand (bvashr (_2!434 lt!6287) #b00000000000000000000000000000001) #b00111111111111111111111111111111) #b00000000000000000000000000000001) (_size!126 (v!1559 (underlying!98 thiss!938))))))))

(declare-fun Unit!436 () Unit!432)

(declare-fun Unit!437 () Unit!432)

(assert (=> d!3707 (= lt!6287 (ite (and (bvsge (bvmul #b00000000000000000000000000000010 (bvadd (_size!126 (v!1559 (underlying!98 thiss!938))) (_vacant!126 (v!1559 (underlying!98 thiss!938))))) (mask!4678 (v!1559 (underlying!98 thiss!938)))) (bvsle (bvmul #b00000000000000000000000000000101 (_vacant!126 (v!1559 (underlying!98 thiss!938)))) (mask!4678 (v!1559 (underlying!98 thiss!938))))) (tuple2!863 Unit!436 (bvand (bvadd (bvshl (mask!4678 (v!1559 (underlying!98 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (tuple2!863 Unit!437 (mask!4678 (v!1559 (underlying!98 thiss!938))))))))

(assert (=> d!3707 (validMask!0 (mask!4678 (v!1559 (underlying!98 thiss!938))))))

(assert (=> d!3707 (= (computeNewMask!18 thiss!938 (mask!4678 (v!1559 (underlying!98 thiss!938))) (_vacant!126 (v!1559 (underlying!98 thiss!938))) (_size!126 (v!1559 (underlying!98 thiss!938)))) lt!6286)))

(declare-fun b!20773 () Bool)

(declare-fun computeNewMaskWhile!9 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple2!862)

(assert (=> b!20773 (= e!13574 (computeNewMaskWhile!9 (_size!126 (v!1559 (underlying!98 thiss!938))) (_vacant!126 (v!1559 (underlying!98 thiss!938))) (mask!4678 (v!1559 (underlying!98 thiss!938))) (_2!434 lt!6287)))))

(declare-fun b!20774 () Bool)

(declare-fun Unit!438 () Unit!432)

(assert (=> b!20774 (= e!13574 (tuple2!863 Unit!438 (_2!434 lt!6287)))))

(declare-fun b!20775 () Bool)

(assert (=> b!20775 (= e!13575 (bvsle (_size!126 (v!1559 (underlying!98 thiss!938))) (bvadd lt!6286 #b00000000000000000000000000000001)))))

(assert (= (and d!3707 c!2317) b!20773))

(assert (= (and d!3707 (not c!2317)) b!20774))

(assert (= (and d!3707 res!13550) b!20775))

(declare-fun m!14533 () Bool)

(assert (=> d!3707 m!14533))

(assert (=> d!3707 m!14467))

(declare-fun m!14535 () Bool)

(assert (=> b!20773 m!14535))

(assert (=> b!20687 d!3707))

(declare-fun d!3709 () Bool)

(assert (=> d!3709 (= (valid!89 thiss!938) (valid!88 (v!1559 (underlying!98 thiss!938))))))

(declare-fun bs!900 () Bool)

(assert (= bs!900 d!3709))

(declare-fun m!14537 () Bool)

(assert (=> bs!900 m!14537))

(assert (=> start!3318 d!3709))

(declare-fun b!20860 () Bool)

(declare-fun e!13627 () Bool)

(declare-fun e!13636 () Bool)

(assert (=> b!20860 (= e!13627 e!13636)))

(declare-fun c!2348 () Bool)

(declare-fun lt!6358 () tuple2!854)

(assert (=> b!20860 (= c!2348 (_1!430 lt!6358))))

(declare-fun b!20861 () Bool)

(declare-fun e!13628 () ListLongMap!539)

(declare-fun call!1190 () ListLongMap!539)

(assert (=> b!20861 (= e!13628 call!1190)))

(declare-fun b!20862 () Bool)

(declare-fun e!13620 () Bool)

(declare-datatypes ((SeekEntryResult!54 0))(
  ( (MissingZero!54 (index!2336 (_ BitVec 32))) (Found!54 (index!2337 (_ BitVec 32))) (Intermediate!54 (undefined!866 Bool) (index!2338 (_ BitVec 32)) (x!5041 (_ BitVec 32))) (Undefined!54) (MissingVacant!54 (index!2339 (_ BitVec 32))) )
))
(declare-fun lt!6357 () SeekEntryResult!54)

(assert (=> b!20862 (= e!13620 ((_ is Undefined!54) lt!6357))))

(declare-fun b!20863 () Bool)

(declare-fun res!13584 () Bool)

(declare-fun call!1198 () Bool)

(assert (=> b!20863 (= res!13584 call!1198)))

(declare-fun e!13641 () Bool)

(assert (=> b!20863 (=> (not res!13584) (not e!13641))))

(declare-fun bm!1173 () Bool)

(declare-fun call!1178 () SeekEntryResult!54)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1193 (_ BitVec 32)) SeekEntryResult!54)

(assert (=> bm!1173 (= call!1178 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!3134 lt!6190) (mask!4678 lt!6190)))))

(declare-fun bm!1174 () Bool)

(declare-fun call!1194 () Bool)

(declare-fun call!1184 () Bool)

(assert (=> bm!1174 (= call!1194 call!1184)))

(declare-fun bm!1175 () Bool)

(declare-fun call!1187 () ListLongMap!539)

(declare-fun call!1192 () ListLongMap!539)

(assert (=> bm!1175 (= call!1187 call!1192)))

(declare-fun b!20864 () Bool)

(declare-fun lt!6342 () tuple2!854)

(declare-fun call!1189 () tuple2!854)

(assert (=> b!20864 (= lt!6342 call!1189)))

(declare-fun e!13624 () tuple2!854)

(assert (=> b!20864 (= e!13624 (tuple2!855 (_1!430 lt!6342) (_2!430 lt!6342)))))

(declare-fun b!20865 () Bool)

(declare-fun lt!6346 () Unit!432)

(declare-fun lt!6344 () Unit!432)

(assert (=> b!20865 (= lt!6346 lt!6344)))

(declare-fun call!1186 () ListLongMap!539)

(declare-fun call!1177 () ListLongMap!539)

(assert (=> b!20865 (= call!1186 call!1177)))

(declare-fun lt!6364 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!5 (array!1193 array!1195 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!1141 V!1141 V!1141 Int) Unit!432)

(assert (=> b!20865 (= lt!6344 (lemmaChangeZeroKeyThenAddPairToListMap!5 (_keys!3134 lt!6190) (_values!1702 lt!6190) (mask!4678 lt!6190) (extraKeys!1616 lt!6190) lt!6364 (zeroValue!1640 lt!6190) (zeroValue!1640 (v!1559 (underlying!98 thiss!938))) (minValue!1640 lt!6190) (defaultEntry!1711 lt!6190)))))

(assert (=> b!20865 (= lt!6364 (bvor (extraKeys!1616 lt!6190) #b00000000000000000000000000000001))))

(declare-fun e!13639 () tuple2!854)

(assert (=> b!20865 (= e!13639 (tuple2!855 true (LongMapFixedSize!175 (defaultEntry!1711 lt!6190) (mask!4678 lt!6190) (bvor (extraKeys!1616 lt!6190) #b00000000000000000000000000000001) (zeroValue!1640 (v!1559 (underlying!98 thiss!938))) (minValue!1640 lt!6190) (_size!126 lt!6190) (_keys!3134 lt!6190) (_values!1702 lt!6190) (_vacant!126 lt!6190))))))

(declare-fun b!20866 () Bool)

(declare-fun res!13587 () Bool)

(declare-fun e!13621 () Bool)

(assert (=> b!20866 (=> (not res!13587) (not e!13621))))

(declare-fun call!1183 () Bool)

(assert (=> b!20866 (= res!13587 call!1183)))

(declare-fun e!13629 () Bool)

(assert (=> b!20866 (= e!13629 e!13621)))

(declare-fun b!20867 () Bool)

(declare-fun e!13622 () tuple2!854)

(assert (=> b!20867 (= e!13622 e!13639)))

(declare-fun c!2352 () Bool)

(assert (=> b!20867 (= c!2352 (= #b0000000000000000000000000000000000000000000000000000000000000000 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1176 () Bool)

(declare-fun call!1182 () SeekEntryResult!54)

(assert (=> bm!1176 (= call!1182 call!1178)))

(declare-fun b!20868 () Bool)

(declare-fun res!13580 () Bool)

(assert (=> b!20868 (= res!13580 (= (select (arr!567 (_keys!3134 lt!6190)) (index!2339 lt!6357)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!13634 () Bool)

(assert (=> b!20868 (=> (not res!13580) (not e!13634))))

(declare-fun b!20869 () Bool)

(declare-fun e!13625 () Unit!432)

(declare-fun lt!6368 () Unit!432)

(assert (=> b!20869 (= e!13625 lt!6368)))

(declare-fun call!1197 () Unit!432)

(assert (=> b!20869 (= lt!6368 call!1197)))

(declare-fun lt!6361 () SeekEntryResult!54)

(assert (=> b!20869 (= lt!6361 call!1182)))

(declare-fun c!2351 () Bool)

(assert (=> b!20869 (= c!2351 ((_ is MissingZero!54) lt!6361))))

(assert (=> b!20869 e!13629))

(declare-fun b!20870 () Bool)

(declare-fun res!13589 () Bool)

(declare-fun e!13640 () Bool)

(assert (=> b!20870 (=> (not res!13589) (not e!13640))))

(assert (=> b!20870 (= res!13589 (= (select (arr!567 (_keys!3134 lt!6190)) (index!2336 lt!6357)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1177 () Bool)

(declare-fun c!2354 () Bool)

(declare-fun lt!6366 () array!1195)

(declare-fun getCurrentListMap!114 (array!1193 array!1195 (_ BitVec 32) (_ BitVec 32) V!1141 V!1141 (_ BitVec 32) Int) ListLongMap!539)

(assert (=> bm!1177 (= call!1190 (getCurrentListMap!114 (_keys!3134 lt!6190) (ite c!2354 (_values!1702 lt!6190) lt!6366) (mask!4678 lt!6190) (extraKeys!1616 lt!6190) (zeroValue!1640 lt!6190) (minValue!1640 lt!6190) #b00000000000000000000000000000000 (defaultEntry!1711 lt!6190)))))

(declare-fun bm!1178 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!5 (array!1193 array!1195 (_ BitVec 32) (_ BitVec 32) V!1141 V!1141 (_ BitVec 64) Int) Unit!432)

(assert (=> bm!1178 (= call!1197 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!5 (_keys!3134 lt!6190) (_values!1702 lt!6190) (mask!4678 lt!6190) (extraKeys!1616 lt!6190) (zeroValue!1640 lt!6190) (minValue!1640 lt!6190) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1711 lt!6190)))))

(declare-fun b!20871 () Bool)

(declare-fun e!13632 () ListLongMap!539)

(assert (=> b!20871 (= e!13632 (getCurrentListMap!114 (_keys!3134 lt!6190) (_values!1702 lt!6190) (mask!4678 lt!6190) (extraKeys!1616 lt!6190) (zeroValue!1640 lt!6190) (minValue!1640 lt!6190) #b00000000000000000000000000000000 (defaultEntry!1711 lt!6190)))))

(declare-fun bm!1179 () Bool)

(assert (=> bm!1179 (= call!1183 call!1198)))

(declare-fun b!20872 () Bool)

(declare-fun call!1185 () ListLongMap!539)

(assert (=> b!20872 (= e!13632 call!1185)))

(declare-fun bm!1180 () Bool)

(declare-fun call!1181 () Bool)

(declare-fun call!1196 () Bool)

(assert (=> bm!1180 (= call!1181 call!1196)))

(declare-fun b!20873 () Bool)

(declare-fun res!13581 () Bool)

(assert (=> b!20873 (=> (not res!13581) (not e!13621))))

(assert (=> b!20873 (= res!13581 (= (select (arr!567 (_keys!3134 lt!6190)) (index!2336 lt!6361)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1181 () Bool)

(assert (=> bm!1181 (= call!1177 call!1192)))

(declare-fun b!20874 () Bool)

(declare-fun lt!6353 () Unit!432)

(declare-fun lt!6351 () Unit!432)

(assert (=> b!20874 (= lt!6353 lt!6351)))

(declare-fun call!1175 () Bool)

(assert (=> b!20874 call!1175))

(declare-fun lt!6365 () SeekEntryResult!54)

(declare-fun lemmaValidKeyInArrayIsInListMap!5 (array!1193 array!1195 (_ BitVec 32) (_ BitVec 32) V!1141 V!1141 (_ BitVec 32) Int) Unit!432)

(assert (=> b!20874 (= lt!6351 (lemmaValidKeyInArrayIsInListMap!5 (_keys!3134 lt!6190) lt!6366 (mask!4678 lt!6190) (extraKeys!1616 lt!6190) (zeroValue!1640 lt!6190) (minValue!1640 lt!6190) (index!2337 lt!6365) (defaultEntry!1711 lt!6190)))))

(assert (=> b!20874 (= lt!6366 (array!1196 (store (arr!568 (_values!1702 lt!6190)) (index!2337 lt!6365) (ValueCellFull!294 (zeroValue!1640 (v!1559 (underlying!98 thiss!938))))) (size!661 (_values!1702 lt!6190))))))

(declare-fun lt!6355 () Unit!432)

(declare-fun lt!6354 () Unit!432)

(assert (=> b!20874 (= lt!6355 lt!6354)))

(declare-fun call!1193 () ListLongMap!539)

(assert (=> b!20874 (= call!1193 call!1187)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!5 (array!1193 array!1195 (_ BitVec 32) (_ BitVec 32) V!1141 V!1141 (_ BitVec 32) (_ BitVec 64) V!1141 Int) Unit!432)

(assert (=> b!20874 (= lt!6354 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!5 (_keys!3134 lt!6190) (_values!1702 lt!6190) (mask!4678 lt!6190) (extraKeys!1616 lt!6190) (zeroValue!1640 lt!6190) (minValue!1640 lt!6190) (index!2337 lt!6365) #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1640 (v!1559 (underlying!98 thiss!938))) (defaultEntry!1711 lt!6190)))))

(declare-fun lt!6345 () Unit!432)

(declare-fun e!13638 () Unit!432)

(assert (=> b!20874 (= lt!6345 e!13638)))

(declare-fun c!2359 () Bool)

(declare-fun contains!213 (ListLongMap!539 (_ BitVec 64)) Bool)

(assert (=> b!20874 (= c!2359 (contains!213 (getCurrentListMap!114 (_keys!3134 lt!6190) (_values!1702 lt!6190) (mask!4678 lt!6190) (extraKeys!1616 lt!6190) (zeroValue!1640 lt!6190) (minValue!1640 lt!6190) #b00000000000000000000000000000000 (defaultEntry!1711 lt!6190)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!20874 (= e!13624 (tuple2!855 true (LongMapFixedSize!175 (defaultEntry!1711 lt!6190) (mask!4678 lt!6190) (extraKeys!1616 lt!6190) (zeroValue!1640 lt!6190) (minValue!1640 lt!6190) (_size!126 lt!6190) (_keys!3134 lt!6190) (array!1196 (store (arr!568 (_values!1702 lt!6190)) (index!2337 lt!6365) (ValueCellFull!294 (zeroValue!1640 (v!1559 (underlying!98 thiss!938))))) (size!661 (_values!1702 lt!6190))) (_vacant!126 lt!6190))))))

(declare-fun lt!6347 () SeekEntryResult!54)

(declare-fun c!2349 () Bool)

(declare-fun c!2350 () Bool)

(declare-fun bm!1182 () Bool)

(declare-fun lt!6363 () SeekEntryResult!54)

(declare-fun c!2346 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!1182 (= call!1184 (inRange!0 (ite c!2350 (ite c!2346 (index!2337 lt!6347) (ite c!2351 (index!2336 lt!6361) (index!2339 lt!6361))) (ite c!2359 (index!2337 lt!6363) (ite c!2349 (index!2336 lt!6357) (index!2339 lt!6357)))) (mask!4678 lt!6190)))))

(declare-fun b!20875 () Bool)

(declare-fun e!13623 () Bool)

(declare-fun call!1176 () ListLongMap!539)

(declare-fun call!1179 () ListLongMap!539)

(declare-fun +!40 (ListLongMap!539 tuple2!860) ListLongMap!539)

(assert (=> b!20875 (= e!13623 (= call!1179 (+!40 call!1176 (tuple2!861 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1640 (v!1559 (underlying!98 thiss!938)))))))))

(declare-fun b!20876 () Bool)

(assert (=> b!20876 (= e!13621 (not call!1181))))

(declare-fun bm!1183 () Bool)

(declare-fun c!2358 () Bool)

(assert (=> bm!1183 (= c!2358 c!2350)))

(assert (=> bm!1183 (= call!1175 (contains!213 e!13628 (ite c!2350 #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!567 (_keys!3134 lt!6190)) (index!2337 lt!6365)))))))

(declare-fun b!20877 () Bool)

(declare-fun e!13637 () Bool)

(declare-fun e!13631 () Bool)

(assert (=> b!20877 (= e!13637 e!13631)))

(declare-fun res!13582 () Bool)

(assert (=> b!20877 (= res!13582 call!1183)))

(assert (=> b!20877 (=> (not res!13582) (not e!13631))))

(declare-fun bm!1184 () Bool)

(assert (=> bm!1184 (= call!1186 call!1193)))

(declare-fun b!20878 () Bool)

(declare-fun call!1191 () Bool)

(assert (=> b!20878 (= e!13634 (not call!1191))))

(declare-fun b!20879 () Bool)

(declare-fun Unit!439 () Unit!432)

(assert (=> b!20879 (= e!13638 Unit!439)))

(declare-fun lt!6343 () Unit!432)

(assert (=> b!20879 (= lt!6343 call!1197)))

(declare-fun call!1188 () SeekEntryResult!54)

(assert (=> b!20879 (= lt!6357 call!1188)))

(assert (=> b!20879 (= c!2349 ((_ is MissingZero!54) lt!6357))))

(declare-fun e!13630 () Bool)

(assert (=> b!20879 e!13630))

(declare-fun lt!6348 () Unit!432)

(assert (=> b!20879 (= lt!6348 lt!6343)))

(assert (=> b!20879 false))

(declare-fun b!20880 () Bool)

(assert (=> b!20880 (= e!13637 ((_ is Undefined!54) lt!6361))))

(declare-fun bm!1185 () Bool)

(declare-fun call!1180 () Unit!432)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!5 (array!1193 array!1195 (_ BitVec 32) (_ BitVec 32) V!1141 V!1141 (_ BitVec 64) Int) Unit!432)

(assert (=> bm!1185 (= call!1180 (lemmaInListMapThenSeekEntryOrOpenFindsIt!5 (_keys!3134 lt!6190) (_values!1702 lt!6190) (mask!4678 lt!6190) (extraKeys!1616 lt!6190) (zeroValue!1640 lt!6190) (minValue!1640 lt!6190) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1711 lt!6190)))))

(declare-fun bm!1186 () Bool)

(assert (=> bm!1186 (= call!1196 (arrayContainsKey!0 (_keys!3134 lt!6190) #b0000000000000000000000000000000000000000000000000000000000000000 #b00000000000000000000000000000000))))

(declare-fun b!20881 () Bool)

(declare-fun c!2356 () Bool)

(assert (=> b!20881 (= c!2356 ((_ is MissingVacant!54) lt!6357))))

(assert (=> b!20881 (= e!13630 e!13620)))

(declare-fun b!20882 () Bool)

(declare-fun Unit!440 () Unit!432)

(assert (=> b!20882 (= e!13625 Unit!440)))

(declare-fun lt!6350 () Unit!432)

(assert (=> b!20882 (= lt!6350 call!1180)))

(assert (=> b!20882 (= lt!6347 call!1182)))

(declare-fun res!13591 () Bool)

(assert (=> b!20882 (= res!13591 ((_ is Found!54) lt!6347))))

(assert (=> b!20882 (=> (not res!13591) (not e!13641))))

(assert (=> b!20882 e!13641))

(declare-fun lt!6362 () Unit!432)

(assert (=> b!20882 (= lt!6362 lt!6350)))

(assert (=> b!20882 false))

(declare-fun bm!1187 () Bool)

(assert (=> bm!1187 (= call!1191 call!1196)))

(declare-fun b!20883 () Bool)

(declare-fun res!13588 () Bool)

(assert (=> b!20883 (= res!13588 (= (select (arr!567 (_keys!3134 lt!6190)) (index!2339 lt!6361)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!20883 (=> (not res!13588) (not e!13631))))

(declare-fun bm!1188 () Bool)

(declare-fun lt!6360 () (_ BitVec 32))

(assert (=> bm!1188 (= call!1192 (getCurrentListMap!114 (_keys!3134 lt!6190) (ite (or c!2354 c!2350) (_values!1702 lt!6190) (array!1196 (store (arr!568 (_values!1702 lt!6190)) (index!2337 lt!6365) (ValueCellFull!294 (zeroValue!1640 (v!1559 (underlying!98 thiss!938))))) (size!661 (_values!1702 lt!6190)))) (mask!4678 lt!6190) (ite c!2354 (ite c!2352 lt!6364 lt!6360) (extraKeys!1616 lt!6190)) (ite (and c!2354 c!2352) (zeroValue!1640 (v!1559 (underlying!98 thiss!938))) (zeroValue!1640 lt!6190)) (ite c!2354 (ite c!2352 (minValue!1640 lt!6190) (zeroValue!1640 (v!1559 (underlying!98 thiss!938)))) (minValue!1640 lt!6190)) #b00000000000000000000000000000000 (defaultEntry!1711 lt!6190)))))

(declare-fun c!2353 () Bool)

(declare-fun bm!1172 () Bool)

(declare-fun updateHelperNewKey!5 (LongMapFixedSize!174 (_ BitVec 64) V!1141 (_ BitVec 32)) tuple2!854)

(assert (=> bm!1172 (= call!1189 (updateHelperNewKey!5 lt!6190 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1640 (v!1559 (underlying!98 thiss!938))) (ite c!2353 (index!2339 lt!6365) (index!2336 lt!6365))))))

(declare-fun d!3711 () Bool)

(assert (=> d!3711 e!13627))

(declare-fun res!13579 () Bool)

(assert (=> d!3711 (=> (not res!13579) (not e!13627))))

(assert (=> d!3711 (= res!13579 (valid!88 (_2!430 lt!6358)))))

(assert (=> d!3711 (= lt!6358 e!13622)))

(assert (=> d!3711 (= c!2354 (= #b0000000000000000000000000000000000000000000000000000000000000000 (bvneg #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!3711 (valid!88 lt!6190)))

(assert (=> d!3711 (= (update!20 lt!6190 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1640 (v!1559 (underlying!98 thiss!938)))) lt!6358)))

(declare-fun b!20884 () Bool)

(declare-fun res!13585 () Bool)

(assert (=> b!20884 (= res!13585 call!1194)))

(declare-fun e!13635 () Bool)

(assert (=> b!20884 (=> (not res!13585) (not e!13635))))

(declare-fun bm!1189 () Bool)

(assert (=> bm!1189 (= call!1188 call!1178)))

(declare-fun b!20885 () Bool)

(assert (=> b!20885 (= e!13636 e!13623)))

(declare-fun res!13592 () Bool)

(assert (=> b!20885 (= res!13592 (contains!213 call!1179 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!20885 (=> (not res!13592) (not e!13623))))

(declare-fun b!20886 () Bool)

(assert (=> b!20886 (= e!13631 (not call!1181))))

(declare-fun b!20887 () Bool)

(assert (=> b!20887 (= c!2353 ((_ is MissingVacant!54) lt!6365))))

(declare-fun e!13626 () tuple2!854)

(declare-fun e!13633 () tuple2!854)

(assert (=> b!20887 (= e!13626 e!13633)))

(declare-fun bm!1190 () Bool)

(assert (=> bm!1190 (= call!1198 call!1184)))

(declare-fun bm!1191 () Bool)

(assert (=> bm!1191 (= call!1179 (map!391 (_2!430 lt!6358)))))

(declare-fun b!20888 () Bool)

(assert (=> b!20888 (= e!13620 e!13634)))

(declare-fun res!13586 () Bool)

(declare-fun call!1195 () Bool)

(assert (=> b!20888 (= res!13586 call!1195)))

(assert (=> b!20888 (=> (not res!13586) (not e!13634))))

(declare-fun b!20889 () Bool)

(assert (=> b!20889 (= e!13636 (= call!1179 call!1176))))

(declare-fun b!20890 () Bool)

(declare-fun c!2357 () Bool)

(assert (=> b!20890 (= c!2357 ((_ is MissingVacant!54) lt!6361))))

(assert (=> b!20890 (= e!13629 e!13637)))

(declare-fun bm!1192 () Bool)

(assert (=> bm!1192 (= call!1193 (+!40 e!13632 (ite c!2354 (ite c!2352 (tuple2!861 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1640 (v!1559 (underlying!98 thiss!938)))) (tuple2!861 #b1000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1640 (v!1559 (underlying!98 thiss!938))))) (tuple2!861 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!1640 (v!1559 (underlying!98 thiss!938)))))))))

(declare-fun c!2347 () Bool)

(assert (=> bm!1192 (= c!2347 c!2354)))

(declare-fun b!20891 () Bool)

(assert (=> b!20891 (= e!13640 (not call!1191))))

(declare-fun b!20892 () Bool)

(declare-fun lt!6367 () Unit!432)

(assert (=> b!20892 (= e!13638 lt!6367)))

(assert (=> b!20892 (= lt!6367 call!1180)))

(assert (=> b!20892 (= lt!6363 call!1188)))

(declare-fun res!13590 () Bool)

(assert (=> b!20892 (= res!13590 ((_ is Found!54) lt!6363))))

(assert (=> b!20892 (=> (not res!13590) (not e!13635))))

(assert (=> b!20892 e!13635))

(declare-fun bm!1193 () Bool)

(assert (=> bm!1193 (= call!1176 (map!391 lt!6190))))

(declare-fun b!20893 () Bool)

(declare-fun lt!6359 () Unit!432)

(declare-fun lt!6356 () Unit!432)

(assert (=> b!20893 (= lt!6359 lt!6356)))

(assert (=> b!20893 (= call!1186 call!1177)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!5 (array!1193 array!1195 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!1141 V!1141 V!1141 Int) Unit!432)

(assert (=> b!20893 (= lt!6356 (lemmaChangeLongMinValueKeyThenAddPairToListMap!5 (_keys!3134 lt!6190) (_values!1702 lt!6190) (mask!4678 lt!6190) (extraKeys!1616 lt!6190) lt!6360 (zeroValue!1640 lt!6190) (minValue!1640 lt!6190) (zeroValue!1640 (v!1559 (underlying!98 thiss!938))) (defaultEntry!1711 lt!6190)))))

(assert (=> b!20893 (= lt!6360 (bvor (extraKeys!1616 lt!6190) #b00000000000000000000000000000010))))

(assert (=> b!20893 (= e!13639 (tuple2!855 true (LongMapFixedSize!175 (defaultEntry!1711 lt!6190) (mask!4678 lt!6190) (bvor (extraKeys!1616 lt!6190) #b00000000000000000000000000000010) (zeroValue!1640 lt!6190) (zeroValue!1640 (v!1559 (underlying!98 thiss!938))) (_size!126 lt!6190) (_keys!3134 lt!6190) (_values!1702 lt!6190) (_vacant!126 lt!6190))))))

(declare-fun b!20894 () Bool)

(declare-fun lt!6352 () tuple2!854)

(assert (=> b!20894 (= e!13633 (tuple2!855 (_1!430 lt!6352) (_2!430 lt!6352)))))

(assert (=> b!20894 (= lt!6352 call!1189)))

(declare-fun bm!1194 () Bool)

(assert (=> bm!1194 (= call!1185 call!1190)))

(declare-fun b!20895 () Bool)

(declare-fun res!13583 () Bool)

(assert (=> b!20895 (=> (not res!13583) (not e!13640))))

(assert (=> b!20895 (= res!13583 call!1195)))

(assert (=> b!20895 (= e!13630 e!13640)))

(declare-fun b!20896 () Bool)

(assert (=> b!20896 (= e!13628 call!1187)))

(declare-fun b!20897 () Bool)

(assert (=> b!20897 (= e!13633 e!13624)))

(declare-fun c!2355 () Bool)

(assert (=> b!20897 (= c!2355 ((_ is MissingZero!54) lt!6365))))

(declare-fun b!20898 () Bool)

(assert (=> b!20898 (= e!13622 e!13626)))

(assert (=> b!20898 (= lt!6365 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!3134 lt!6190) (mask!4678 lt!6190)))))

(assert (=> b!20898 (= c!2350 ((_ is Undefined!54) lt!6365))))

(declare-fun b!20899 () Bool)

(declare-fun lt!6349 () Unit!432)

(assert (=> b!20899 (= lt!6349 e!13625)))

(assert (=> b!20899 (= c!2346 call!1175)))

(assert (=> b!20899 (= e!13626 (tuple2!855 false lt!6190))))

(declare-fun bm!1195 () Bool)

(assert (=> bm!1195 (= call!1195 call!1194)))

(declare-fun b!20900 () Bool)

(assert (=> b!20900 (= e!13635 (= (select (arr!567 (_keys!3134 lt!6190)) (index!2337 lt!6363)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!20901 () Bool)

(assert (=> b!20901 (= e!13641 (= (select (arr!567 (_keys!3134 lt!6190)) (index!2337 lt!6347)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!3711 c!2354) b!20867))

(assert (= (and d!3711 (not c!2354)) b!20898))

(assert (= (and b!20867 c!2352) b!20865))

(assert (= (and b!20867 (not c!2352)) b!20893))

(assert (= (or b!20865 b!20893) bm!1181))

(assert (= (or b!20865 b!20893) bm!1194))

(assert (= (or b!20865 b!20893) bm!1184))

(assert (= (and b!20898 c!2350) b!20899))

(assert (= (and b!20898 (not c!2350)) b!20887))

(assert (= (and b!20899 c!2346) b!20882))

(assert (= (and b!20899 (not c!2346)) b!20869))

(assert (= (and b!20882 res!13591) b!20863))

(assert (= (and b!20863 res!13584) b!20901))

(assert (= (and b!20869 c!2351) b!20866))

(assert (= (and b!20869 (not c!2351)) b!20890))

(assert (= (and b!20866 res!13587) b!20873))

(assert (= (and b!20873 res!13581) b!20876))

(assert (= (and b!20890 c!2357) b!20877))

(assert (= (and b!20890 (not c!2357)) b!20880))

(assert (= (and b!20877 res!13582) b!20883))

(assert (= (and b!20883 res!13588) b!20886))

(assert (= (or b!20866 b!20877) bm!1179))

(assert (= (or b!20876 b!20886) bm!1180))

(assert (= (or b!20863 bm!1179) bm!1190))

(assert (= (or b!20882 b!20869) bm!1176))

(assert (= (and b!20887 c!2353) b!20894))

(assert (= (and b!20887 (not c!2353)) b!20897))

(assert (= (and b!20897 c!2355) b!20864))

(assert (= (and b!20897 (not c!2355)) b!20874))

(assert (= (and b!20874 c!2359) b!20892))

(assert (= (and b!20874 (not c!2359)) b!20879))

(assert (= (and b!20892 res!13590) b!20884))

(assert (= (and b!20884 res!13585) b!20900))

(assert (= (and b!20879 c!2349) b!20895))

(assert (= (and b!20879 (not c!2349)) b!20881))

(assert (= (and b!20895 res!13583) b!20870))

(assert (= (and b!20870 res!13589) b!20891))

(assert (= (and b!20881 c!2356) b!20888))

(assert (= (and b!20881 (not c!2356)) b!20862))

(assert (= (and b!20888 res!13586) b!20868))

(assert (= (and b!20868 res!13580) b!20878))

(assert (= (or b!20895 b!20888) bm!1195))

(assert (= (or b!20891 b!20878) bm!1187))

(assert (= (or b!20884 bm!1195) bm!1174))

(assert (= (or b!20892 b!20879) bm!1189))

(assert (= (or b!20894 b!20864) bm!1172))

(assert (= (or b!20882 b!20892) bm!1185))

(assert (= (or b!20899 b!20874) bm!1175))

(assert (= (or b!20869 b!20879) bm!1178))

(assert (= (or bm!1180 bm!1187) bm!1186))

(assert (= (or bm!1176 bm!1189) bm!1173))

(assert (= (or bm!1190 bm!1174) bm!1182))

(assert (= (or b!20899 b!20874) bm!1183))

(assert (= (and bm!1183 c!2358) b!20896))

(assert (= (and bm!1183 (not c!2358)) b!20861))

(assert (= (or bm!1181 bm!1175) bm!1188))

(assert (= (or bm!1194 b!20861) bm!1177))

(assert (= (or bm!1184 b!20874) bm!1192))

(assert (= (and bm!1192 c!2347) b!20872))

(assert (= (and bm!1192 (not c!2347)) b!20871))

(assert (= (and d!3711 res!13579) b!20860))

(assert (= (and b!20860 c!2348) b!20885))

(assert (= (and b!20860 (not c!2348)) b!20889))

(assert (= (and b!20885 res!13592) b!20875))

(assert (= (or b!20885 b!20875 b!20889) bm!1191))

(assert (= (or b!20875 b!20889) bm!1193))

(declare-fun m!14539 () Bool)

(assert (=> bm!1178 m!14539))

(declare-fun m!14541 () Bool)

(assert (=> d!3711 m!14541))

(declare-fun m!14543 () Bool)

(assert (=> d!3711 m!14543))

(declare-fun m!14545 () Bool)

(assert (=> b!20873 m!14545))

(declare-fun m!14547 () Bool)

(assert (=> bm!1172 m!14547))

(declare-fun m!14549 () Bool)

(assert (=> bm!1183 m!14549))

(declare-fun m!14551 () Bool)

(assert (=> bm!1183 m!14551))

(declare-fun m!14553 () Bool)

(assert (=> b!20901 m!14553))

(declare-fun m!14555 () Bool)

(assert (=> b!20875 m!14555))

(declare-fun m!14557 () Bool)

(assert (=> b!20874 m!14557))

(declare-fun m!14559 () Bool)

(assert (=> b!20874 m!14559))

(declare-fun m!14561 () Bool)

(assert (=> b!20874 m!14561))

(declare-fun m!14563 () Bool)

(assert (=> b!20874 m!14563))

(assert (=> b!20874 m!14563))

(declare-fun m!14565 () Bool)

(assert (=> b!20874 m!14565))

(declare-fun m!14567 () Bool)

(assert (=> b!20898 m!14567))

(declare-fun m!14569 () Bool)

(assert (=> b!20868 m!14569))

(assert (=> bm!1188 m!14561))

(declare-fun m!14571 () Bool)

(assert (=> bm!1188 m!14571))

(declare-fun m!14573 () Bool)

(assert (=> b!20900 m!14573))

(declare-fun m!14575 () Bool)

(assert (=> bm!1193 m!14575))

(assert (=> bm!1173 m!14567))

(declare-fun m!14577 () Bool)

(assert (=> b!20885 m!14577))

(declare-fun m!14579 () Bool)

(assert (=> bm!1192 m!14579))

(declare-fun m!14581 () Bool)

(assert (=> b!20893 m!14581))

(declare-fun m!14583 () Bool)

(assert (=> bm!1191 m!14583))

(declare-fun m!14585 () Bool)

(assert (=> bm!1177 m!14585))

(declare-fun m!14587 () Bool)

(assert (=> bm!1185 m!14587))

(assert (=> b!20871 m!14563))

(declare-fun m!14589 () Bool)

(assert (=> b!20870 m!14589))

(declare-fun m!14591 () Bool)

(assert (=> b!20865 m!14591))

(declare-fun m!14593 () Bool)

(assert (=> bm!1182 m!14593))

(declare-fun m!14595 () Bool)

(assert (=> b!20883 m!14595))

(declare-fun m!14597 () Bool)

(assert (=> bm!1186 m!14597))

(assert (=> b!20696 d!3711))

(declare-fun b!20902 () Bool)

(declare-fun e!13649 () Bool)

(declare-fun e!13658 () Bool)

(assert (=> b!20902 (= e!13649 e!13658)))

(declare-fun c!2362 () Bool)

(declare-fun lt!6385 () tuple2!854)

(assert (=> b!20902 (= c!2362 (_1!430 lt!6385))))

(declare-fun b!20903 () Bool)

(declare-fun e!13650 () ListLongMap!539)

(declare-fun call!1214 () ListLongMap!539)

(assert (=> b!20903 (= e!13650 call!1214)))

(declare-fun b!20904 () Bool)

(declare-fun e!13642 () Bool)

(declare-fun lt!6384 () SeekEntryResult!54)

(assert (=> b!20904 (= e!13642 ((_ is Undefined!54) lt!6384))))

(declare-fun b!20905 () Bool)

(declare-fun res!13598 () Bool)

(declare-fun call!1222 () Bool)

(assert (=> b!20905 (= res!13598 call!1222)))

(declare-fun e!13663 () Bool)

(assert (=> b!20905 (=> (not res!13598) (not e!13663))))

(declare-fun call!1202 () SeekEntryResult!54)

(declare-fun bm!1197 () Bool)

(assert (=> bm!1197 (= call!1202 (seekEntryOrOpen!0 (ite c!2298 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2297 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!3134 (ite c!2298 (_2!430 lt!6186) lt!6190)) (mask!4678 (ite c!2298 (_2!430 lt!6186) lt!6190))))))

(declare-fun bm!1198 () Bool)

(declare-fun call!1218 () Bool)

(declare-fun call!1208 () Bool)

(assert (=> bm!1198 (= call!1218 call!1208)))

(declare-fun bm!1199 () Bool)

(declare-fun call!1211 () ListLongMap!539)

(declare-fun call!1216 () ListLongMap!539)

(assert (=> bm!1199 (= call!1211 call!1216)))

(declare-fun b!20906 () Bool)

(declare-fun lt!6369 () tuple2!854)

(declare-fun call!1213 () tuple2!854)

(assert (=> b!20906 (= lt!6369 call!1213)))

(declare-fun e!13646 () tuple2!854)

(assert (=> b!20906 (= e!13646 (tuple2!855 (_1!430 lt!6369) (_2!430 lt!6369)))))

(declare-fun b!20907 () Bool)

(declare-fun lt!6373 () Unit!432)

(declare-fun lt!6371 () Unit!432)

(assert (=> b!20907 (= lt!6373 lt!6371)))

(declare-fun call!1210 () ListLongMap!539)

(declare-fun call!1201 () ListLongMap!539)

(assert (=> b!20907 (= call!1210 call!1201)))

(declare-fun lt!6391 () (_ BitVec 32))

(assert (=> b!20907 (= lt!6371 (lemmaChangeZeroKeyThenAddPairToListMap!5 (_keys!3134 (ite c!2298 (_2!430 lt!6186) lt!6190)) (_values!1702 (ite c!2298 (_2!430 lt!6186) lt!6190)) (mask!4678 (ite c!2298 (_2!430 lt!6186) lt!6190)) (extraKeys!1616 (ite c!2298 (_2!430 lt!6186) lt!6190)) lt!6391 (zeroValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190)) (ite c!2298 (minValue!1640 (v!1559 (underlying!98 thiss!938))) (ite c!2297 (zeroValue!1640 (v!1559 (underlying!98 thiss!938))) (minValue!1640 (v!1559 (underlying!98 thiss!938))))) (minValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190)) (defaultEntry!1711 (ite c!2298 (_2!430 lt!6186) lt!6190))))))

(assert (=> b!20907 (= lt!6391 (bvor (extraKeys!1616 (ite c!2298 (_2!430 lt!6186) lt!6190)) #b00000000000000000000000000000001))))

(declare-fun e!13661 () tuple2!854)

(assert (=> b!20907 (= e!13661 (tuple2!855 true (LongMapFixedSize!175 (defaultEntry!1711 (ite c!2298 (_2!430 lt!6186) lt!6190)) (mask!4678 (ite c!2298 (_2!430 lt!6186) lt!6190)) (bvor (extraKeys!1616 (ite c!2298 (_2!430 lt!6186) lt!6190)) #b00000000000000000000000000000001) (ite c!2298 (minValue!1640 (v!1559 (underlying!98 thiss!938))) (ite c!2297 (zeroValue!1640 (v!1559 (underlying!98 thiss!938))) (minValue!1640 (v!1559 (underlying!98 thiss!938))))) (minValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190)) (_size!126 (ite c!2298 (_2!430 lt!6186) lt!6190)) (_keys!3134 (ite c!2298 (_2!430 lt!6186) lt!6190)) (_values!1702 (ite c!2298 (_2!430 lt!6186) lt!6190)) (_vacant!126 (ite c!2298 (_2!430 lt!6186) lt!6190)))))))

(declare-fun b!20908 () Bool)

(declare-fun res!13601 () Bool)

(declare-fun e!13643 () Bool)

(assert (=> b!20908 (=> (not res!13601) (not e!13643))))

(declare-fun call!1207 () Bool)

(assert (=> b!20908 (= res!13601 call!1207)))

(declare-fun e!13651 () Bool)

(assert (=> b!20908 (= e!13651 e!13643)))

(declare-fun b!20909 () Bool)

(declare-fun e!13644 () tuple2!854)

(assert (=> b!20909 (= e!13644 e!13661)))

(declare-fun c!2366 () Bool)

(assert (=> b!20909 (= c!2366 (= (ite c!2298 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2297 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1200 () Bool)

(declare-fun call!1206 () SeekEntryResult!54)

(assert (=> bm!1200 (= call!1206 call!1202)))

(declare-fun res!13594 () Bool)

(declare-fun b!20910 () Bool)

(assert (=> b!20910 (= res!13594 (= (select (arr!567 (_keys!3134 (ite c!2298 (_2!430 lt!6186) lt!6190))) (index!2339 lt!6384)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!13656 () Bool)

(assert (=> b!20910 (=> (not res!13594) (not e!13656))))

(declare-fun b!20911 () Bool)

(declare-fun e!13647 () Unit!432)

(declare-fun lt!6395 () Unit!432)

(assert (=> b!20911 (= e!13647 lt!6395)))

(declare-fun call!1221 () Unit!432)

(assert (=> b!20911 (= lt!6395 call!1221)))

(declare-fun lt!6388 () SeekEntryResult!54)

(assert (=> b!20911 (= lt!6388 call!1206)))

(declare-fun c!2365 () Bool)

(assert (=> b!20911 (= c!2365 ((_ is MissingZero!54) lt!6388))))

(assert (=> b!20911 e!13651))

(declare-fun b!20912 () Bool)

(declare-fun res!13603 () Bool)

(declare-fun e!13662 () Bool)

(assert (=> b!20912 (=> (not res!13603) (not e!13662))))

(assert (=> b!20912 (= res!13603 (= (select (arr!567 (_keys!3134 (ite c!2298 (_2!430 lt!6186) lt!6190))) (index!2336 lt!6384)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!2368 () Bool)

(declare-fun bm!1201 () Bool)

(declare-fun lt!6393 () array!1195)

(assert (=> bm!1201 (= call!1214 (getCurrentListMap!114 (_keys!3134 (ite c!2298 (_2!430 lt!6186) lt!6190)) (ite c!2368 (_values!1702 (ite c!2298 (_2!430 lt!6186) lt!6190)) lt!6393) (mask!4678 (ite c!2298 (_2!430 lt!6186) lt!6190)) (extraKeys!1616 (ite c!2298 (_2!430 lt!6186) lt!6190)) (zeroValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190)) (minValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190)) #b00000000000000000000000000000000 (defaultEntry!1711 (ite c!2298 (_2!430 lt!6186) lt!6190))))))

(declare-fun bm!1202 () Bool)

(assert (=> bm!1202 (= call!1221 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!5 (_keys!3134 (ite c!2298 (_2!430 lt!6186) lt!6190)) (_values!1702 (ite c!2298 (_2!430 lt!6186) lt!6190)) (mask!4678 (ite c!2298 (_2!430 lt!6186) lt!6190)) (extraKeys!1616 (ite c!2298 (_2!430 lt!6186) lt!6190)) (zeroValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190)) (minValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190)) (ite c!2298 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2297 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!1711 (ite c!2298 (_2!430 lt!6186) lt!6190))))))

(declare-fun b!20913 () Bool)

(declare-fun e!13654 () ListLongMap!539)

(assert (=> b!20913 (= e!13654 (getCurrentListMap!114 (_keys!3134 (ite c!2298 (_2!430 lt!6186) lt!6190)) (_values!1702 (ite c!2298 (_2!430 lt!6186) lt!6190)) (mask!4678 (ite c!2298 (_2!430 lt!6186) lt!6190)) (extraKeys!1616 (ite c!2298 (_2!430 lt!6186) lt!6190)) (zeroValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190)) (minValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190)) #b00000000000000000000000000000000 (defaultEntry!1711 (ite c!2298 (_2!430 lt!6186) lt!6190))))))

(declare-fun bm!1203 () Bool)

(assert (=> bm!1203 (= call!1207 call!1222)))

(declare-fun b!20914 () Bool)

(declare-fun call!1209 () ListLongMap!539)

(assert (=> b!20914 (= e!13654 call!1209)))

(declare-fun bm!1204 () Bool)

(declare-fun call!1205 () Bool)

(declare-fun call!1220 () Bool)

(assert (=> bm!1204 (= call!1205 call!1220)))

(declare-fun b!20915 () Bool)

(declare-fun res!13595 () Bool)

(assert (=> b!20915 (=> (not res!13595) (not e!13643))))

(assert (=> b!20915 (= res!13595 (= (select (arr!567 (_keys!3134 (ite c!2298 (_2!430 lt!6186) lt!6190))) (index!2336 lt!6388)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1205 () Bool)

(assert (=> bm!1205 (= call!1201 call!1216)))

(declare-fun b!20916 () Bool)

(declare-fun lt!6380 () Unit!432)

(declare-fun lt!6378 () Unit!432)

(assert (=> b!20916 (= lt!6380 lt!6378)))

(declare-fun call!1199 () Bool)

(assert (=> b!20916 call!1199))

(declare-fun lt!6392 () SeekEntryResult!54)

(assert (=> b!20916 (= lt!6378 (lemmaValidKeyInArrayIsInListMap!5 (_keys!3134 (ite c!2298 (_2!430 lt!6186) lt!6190)) lt!6393 (mask!4678 (ite c!2298 (_2!430 lt!6186) lt!6190)) (extraKeys!1616 (ite c!2298 (_2!430 lt!6186) lt!6190)) (zeroValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190)) (minValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190)) (index!2337 lt!6392) (defaultEntry!1711 (ite c!2298 (_2!430 lt!6186) lt!6190))))))

(assert (=> b!20916 (= lt!6393 (array!1196 (store (arr!568 (_values!1702 (ite c!2298 (_2!430 lt!6186) lt!6190))) (index!2337 lt!6392) (ValueCellFull!294 (ite c!2298 (minValue!1640 (v!1559 (underlying!98 thiss!938))) (ite c!2297 (zeroValue!1640 (v!1559 (underlying!98 thiss!938))) (minValue!1640 (v!1559 (underlying!98 thiss!938))))))) (size!661 (_values!1702 (ite c!2298 (_2!430 lt!6186) lt!6190)))))))

(declare-fun lt!6382 () Unit!432)

(declare-fun lt!6381 () Unit!432)

(assert (=> b!20916 (= lt!6382 lt!6381)))

(declare-fun call!1217 () ListLongMap!539)

(assert (=> b!20916 (= call!1217 call!1211)))

(assert (=> b!20916 (= lt!6381 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!5 (_keys!3134 (ite c!2298 (_2!430 lt!6186) lt!6190)) (_values!1702 (ite c!2298 (_2!430 lt!6186) lt!6190)) (mask!4678 (ite c!2298 (_2!430 lt!6186) lt!6190)) (extraKeys!1616 (ite c!2298 (_2!430 lt!6186) lt!6190)) (zeroValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190)) (minValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190)) (index!2337 lt!6392) (ite c!2298 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2297 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2298 (minValue!1640 (v!1559 (underlying!98 thiss!938))) (ite c!2297 (zeroValue!1640 (v!1559 (underlying!98 thiss!938))) (minValue!1640 (v!1559 (underlying!98 thiss!938))))) (defaultEntry!1711 (ite c!2298 (_2!430 lt!6186) lt!6190))))))

(declare-fun lt!6372 () Unit!432)

(declare-fun e!13660 () Unit!432)

(assert (=> b!20916 (= lt!6372 e!13660)))

(declare-fun c!2373 () Bool)

(assert (=> b!20916 (= c!2373 (contains!213 (getCurrentListMap!114 (_keys!3134 (ite c!2298 (_2!430 lt!6186) lt!6190)) (_values!1702 (ite c!2298 (_2!430 lt!6186) lt!6190)) (mask!4678 (ite c!2298 (_2!430 lt!6186) lt!6190)) (extraKeys!1616 (ite c!2298 (_2!430 lt!6186) lt!6190)) (zeroValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190)) (minValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190)) #b00000000000000000000000000000000 (defaultEntry!1711 (ite c!2298 (_2!430 lt!6186) lt!6190))) (ite c!2298 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2297 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!20916 (= e!13646 (tuple2!855 true (LongMapFixedSize!175 (defaultEntry!1711 (ite c!2298 (_2!430 lt!6186) lt!6190)) (mask!4678 (ite c!2298 (_2!430 lt!6186) lt!6190)) (extraKeys!1616 (ite c!2298 (_2!430 lt!6186) lt!6190)) (zeroValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190)) (minValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190)) (_size!126 (ite c!2298 (_2!430 lt!6186) lt!6190)) (_keys!3134 (ite c!2298 (_2!430 lt!6186) lt!6190)) (array!1196 (store (arr!568 (_values!1702 (ite c!2298 (_2!430 lt!6186) lt!6190))) (index!2337 lt!6392) (ValueCellFull!294 (ite c!2298 (minValue!1640 (v!1559 (underlying!98 thiss!938))) (ite c!2297 (zeroValue!1640 (v!1559 (underlying!98 thiss!938))) (minValue!1640 (v!1559 (underlying!98 thiss!938))))))) (size!661 (_values!1702 (ite c!2298 (_2!430 lt!6186) lt!6190)))) (_vacant!126 (ite c!2298 (_2!430 lt!6186) lt!6190)))))))

(declare-fun lt!6374 () SeekEntryResult!54)

(declare-fun bm!1206 () Bool)

(declare-fun c!2363 () Bool)

(declare-fun lt!6390 () SeekEntryResult!54)

(declare-fun c!2364 () Bool)

(declare-fun c!2360 () Bool)

(assert (=> bm!1206 (= call!1208 (inRange!0 (ite c!2364 (ite c!2360 (index!2337 lt!6374) (ite c!2365 (index!2336 lt!6388) (index!2339 lt!6388))) (ite c!2373 (index!2337 lt!6390) (ite c!2363 (index!2336 lt!6384) (index!2339 lt!6384)))) (mask!4678 (ite c!2298 (_2!430 lt!6186) lt!6190))))))

(declare-fun b!20917 () Bool)

(declare-fun call!1203 () ListLongMap!539)

(declare-fun call!1200 () ListLongMap!539)

(declare-fun e!13645 () Bool)

(assert (=> b!20917 (= e!13645 (= call!1203 (+!40 call!1200 (tuple2!861 (ite c!2298 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2297 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2298 (minValue!1640 (v!1559 (underlying!98 thiss!938))) (ite c!2297 (zeroValue!1640 (v!1559 (underlying!98 thiss!938))) (minValue!1640 (v!1559 (underlying!98 thiss!938)))))))))))

(declare-fun b!20918 () Bool)

(assert (=> b!20918 (= e!13643 (not call!1205))))

(declare-fun bm!1207 () Bool)

(declare-fun c!2372 () Bool)

(assert (=> bm!1207 (= c!2372 c!2364)))

(assert (=> bm!1207 (= call!1199 (contains!213 e!13650 (ite c!2364 (ite c!2298 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2297 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (select (arr!567 (_keys!3134 (ite c!2298 (_2!430 lt!6186) lt!6190))) (index!2337 lt!6392)))))))

(declare-fun b!20919 () Bool)

(declare-fun e!13659 () Bool)

(declare-fun e!13653 () Bool)

(assert (=> b!20919 (= e!13659 e!13653)))

(declare-fun res!13596 () Bool)

(assert (=> b!20919 (= res!13596 call!1207)))

(assert (=> b!20919 (=> (not res!13596) (not e!13653))))

(declare-fun bm!1208 () Bool)

(assert (=> bm!1208 (= call!1210 call!1217)))

(declare-fun b!20920 () Bool)

(declare-fun call!1215 () Bool)

(assert (=> b!20920 (= e!13656 (not call!1215))))

(declare-fun b!20921 () Bool)

(declare-fun Unit!441 () Unit!432)

(assert (=> b!20921 (= e!13660 Unit!441)))

(declare-fun lt!6370 () Unit!432)

(assert (=> b!20921 (= lt!6370 call!1221)))

(declare-fun call!1212 () SeekEntryResult!54)

(assert (=> b!20921 (= lt!6384 call!1212)))

(assert (=> b!20921 (= c!2363 ((_ is MissingZero!54) lt!6384))))

(declare-fun e!13652 () Bool)

(assert (=> b!20921 e!13652))

(declare-fun lt!6375 () Unit!432)

(assert (=> b!20921 (= lt!6375 lt!6370)))

(assert (=> b!20921 false))

(declare-fun b!20922 () Bool)

(assert (=> b!20922 (= e!13659 ((_ is Undefined!54) lt!6388))))

(declare-fun bm!1209 () Bool)

(declare-fun call!1204 () Unit!432)

(assert (=> bm!1209 (= call!1204 (lemmaInListMapThenSeekEntryOrOpenFindsIt!5 (_keys!3134 (ite c!2298 (_2!430 lt!6186) lt!6190)) (_values!1702 (ite c!2298 (_2!430 lt!6186) lt!6190)) (mask!4678 (ite c!2298 (_2!430 lt!6186) lt!6190)) (extraKeys!1616 (ite c!2298 (_2!430 lt!6186) lt!6190)) (zeroValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190)) (minValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190)) (ite c!2298 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2297 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!1711 (ite c!2298 (_2!430 lt!6186) lt!6190))))))

(declare-fun bm!1210 () Bool)

(assert (=> bm!1210 (= call!1220 (arrayContainsKey!0 (_keys!3134 (ite c!2298 (_2!430 lt!6186) lt!6190)) (ite c!2298 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2297 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000))))

(declare-fun b!20923 () Bool)

(declare-fun c!2370 () Bool)

(assert (=> b!20923 (= c!2370 ((_ is MissingVacant!54) lt!6384))))

(assert (=> b!20923 (= e!13652 e!13642)))

(declare-fun b!20924 () Bool)

(declare-fun Unit!442 () Unit!432)

(assert (=> b!20924 (= e!13647 Unit!442)))

(declare-fun lt!6377 () Unit!432)

(assert (=> b!20924 (= lt!6377 call!1204)))

(assert (=> b!20924 (= lt!6374 call!1206)))

(declare-fun res!13605 () Bool)

(assert (=> b!20924 (= res!13605 ((_ is Found!54) lt!6374))))

(assert (=> b!20924 (=> (not res!13605) (not e!13663))))

(assert (=> b!20924 e!13663))

(declare-fun lt!6389 () Unit!432)

(assert (=> b!20924 (= lt!6389 lt!6377)))

(assert (=> b!20924 false))

(declare-fun bm!1211 () Bool)

(assert (=> bm!1211 (= call!1215 call!1220)))

(declare-fun res!13602 () Bool)

(declare-fun b!20925 () Bool)

(assert (=> b!20925 (= res!13602 (= (select (arr!567 (_keys!3134 (ite c!2298 (_2!430 lt!6186) lt!6190))) (index!2339 lt!6388)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!20925 (=> (not res!13602) (not e!13653))))

(declare-fun lt!6387 () (_ BitVec 32))

(declare-fun bm!1212 () Bool)

(assert (=> bm!1212 (= call!1216 (getCurrentListMap!114 (_keys!3134 (ite c!2298 (_2!430 lt!6186) lt!6190)) (ite (or c!2368 c!2364) (_values!1702 (ite c!2298 (_2!430 lt!6186) lt!6190)) (array!1196 (store (arr!568 (_values!1702 (ite c!2298 (_2!430 lt!6186) lt!6190))) (index!2337 lt!6392) (ValueCellFull!294 (ite c!2298 (minValue!1640 (v!1559 (underlying!98 thiss!938))) (ite c!2297 (zeroValue!1640 (v!1559 (underlying!98 thiss!938))) (minValue!1640 (v!1559 (underlying!98 thiss!938))))))) (size!661 (_values!1702 (ite c!2298 (_2!430 lt!6186) lt!6190))))) (mask!4678 (ite c!2298 (_2!430 lt!6186) lt!6190)) (ite c!2368 (ite c!2366 lt!6391 lt!6387) (extraKeys!1616 (ite c!2298 (_2!430 lt!6186) lt!6190))) (ite (and c!2368 c!2366) (ite c!2298 (minValue!1640 (v!1559 (underlying!98 thiss!938))) (ite c!2297 (zeroValue!1640 (v!1559 (underlying!98 thiss!938))) (minValue!1640 (v!1559 (underlying!98 thiss!938))))) (zeroValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190))) (ite c!2368 (ite c!2366 (minValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190)) (ite c!2298 (minValue!1640 (v!1559 (underlying!98 thiss!938))) (ite c!2297 (zeroValue!1640 (v!1559 (underlying!98 thiss!938))) (minValue!1640 (v!1559 (underlying!98 thiss!938)))))) (minValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190))) #b00000000000000000000000000000000 (defaultEntry!1711 (ite c!2298 (_2!430 lt!6186) lt!6190))))))

(declare-fun bm!1196 () Bool)

(declare-fun c!2367 () Bool)

(assert (=> bm!1196 (= call!1213 (updateHelperNewKey!5 (ite c!2298 (_2!430 lt!6186) lt!6190) (ite c!2298 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2297 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2298 (minValue!1640 (v!1559 (underlying!98 thiss!938))) (ite c!2297 (zeroValue!1640 (v!1559 (underlying!98 thiss!938))) (minValue!1640 (v!1559 (underlying!98 thiss!938))))) (ite c!2367 (index!2339 lt!6392) (index!2336 lt!6392))))))

(declare-fun d!3713 () Bool)

(assert (=> d!3713 e!13649))

(declare-fun res!13593 () Bool)

(assert (=> d!3713 (=> (not res!13593) (not e!13649))))

(assert (=> d!3713 (= res!13593 (valid!88 (_2!430 lt!6385)))))

(assert (=> d!3713 (= lt!6385 e!13644)))

(assert (=> d!3713 (= c!2368 (= (ite c!2298 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2297 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvneg (ite c!2298 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2297 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!3713 (valid!88 (ite c!2298 (_2!430 lt!6186) lt!6190))))

(assert (=> d!3713 (= (update!20 (ite c!2298 (_2!430 lt!6186) lt!6190) (ite c!2298 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2297 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2298 (minValue!1640 (v!1559 (underlying!98 thiss!938))) (ite c!2297 (zeroValue!1640 (v!1559 (underlying!98 thiss!938))) (minValue!1640 (v!1559 (underlying!98 thiss!938)))))) lt!6385)))

(declare-fun b!20926 () Bool)

(declare-fun res!13599 () Bool)

(assert (=> b!20926 (= res!13599 call!1218)))

(declare-fun e!13657 () Bool)

(assert (=> b!20926 (=> (not res!13599) (not e!13657))))

(declare-fun bm!1213 () Bool)

(assert (=> bm!1213 (= call!1212 call!1202)))

(declare-fun b!20927 () Bool)

(assert (=> b!20927 (= e!13658 e!13645)))

(declare-fun res!13606 () Bool)

(assert (=> b!20927 (= res!13606 (contains!213 call!1203 (ite c!2298 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2297 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!20927 (=> (not res!13606) (not e!13645))))

(declare-fun b!20928 () Bool)

(assert (=> b!20928 (= e!13653 (not call!1205))))

(declare-fun b!20929 () Bool)

(assert (=> b!20929 (= c!2367 ((_ is MissingVacant!54) lt!6392))))

(declare-fun e!13648 () tuple2!854)

(declare-fun e!13655 () tuple2!854)

(assert (=> b!20929 (= e!13648 e!13655)))

(declare-fun bm!1214 () Bool)

(assert (=> bm!1214 (= call!1222 call!1208)))

(declare-fun bm!1215 () Bool)

(assert (=> bm!1215 (= call!1203 (map!391 (_2!430 lt!6385)))))

(declare-fun b!20930 () Bool)

(assert (=> b!20930 (= e!13642 e!13656)))

(declare-fun res!13600 () Bool)

(declare-fun call!1219 () Bool)

(assert (=> b!20930 (= res!13600 call!1219)))

(assert (=> b!20930 (=> (not res!13600) (not e!13656))))

(declare-fun b!20931 () Bool)

(assert (=> b!20931 (= e!13658 (= call!1203 call!1200))))

(declare-fun b!20932 () Bool)

(declare-fun c!2371 () Bool)

(assert (=> b!20932 (= c!2371 ((_ is MissingVacant!54) lt!6388))))

(assert (=> b!20932 (= e!13651 e!13659)))

(declare-fun bm!1216 () Bool)

(assert (=> bm!1216 (= call!1217 (+!40 e!13654 (ite c!2368 (ite c!2366 (tuple2!861 #b0000000000000000000000000000000000000000000000000000000000000000 (ite c!2298 (minValue!1640 (v!1559 (underlying!98 thiss!938))) (ite c!2297 (zeroValue!1640 (v!1559 (underlying!98 thiss!938))) (minValue!1640 (v!1559 (underlying!98 thiss!938)))))) (tuple2!861 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2298 (minValue!1640 (v!1559 (underlying!98 thiss!938))) (ite c!2297 (zeroValue!1640 (v!1559 (underlying!98 thiss!938))) (minValue!1640 (v!1559 (underlying!98 thiss!938))))))) (tuple2!861 (ite c!2298 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2297 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!2298 (minValue!1640 (v!1559 (underlying!98 thiss!938))) (ite c!2297 (zeroValue!1640 (v!1559 (underlying!98 thiss!938))) (minValue!1640 (v!1559 (underlying!98 thiss!938)))))))))))

(declare-fun c!2361 () Bool)

(assert (=> bm!1216 (= c!2361 c!2368)))

(declare-fun b!20933 () Bool)

(assert (=> b!20933 (= e!13662 (not call!1215))))

(declare-fun b!20934 () Bool)

(declare-fun lt!6394 () Unit!432)

(assert (=> b!20934 (= e!13660 lt!6394)))

(assert (=> b!20934 (= lt!6394 call!1204)))

(assert (=> b!20934 (= lt!6390 call!1212)))

(declare-fun res!13604 () Bool)

(assert (=> b!20934 (= res!13604 ((_ is Found!54) lt!6390))))

(assert (=> b!20934 (=> (not res!13604) (not e!13657))))

(assert (=> b!20934 e!13657))

(declare-fun bm!1217 () Bool)

(assert (=> bm!1217 (= call!1200 (map!391 (ite c!2298 (_2!430 lt!6186) lt!6190)))))

(declare-fun b!20935 () Bool)

(declare-fun lt!6386 () Unit!432)

(declare-fun lt!6383 () Unit!432)

(assert (=> b!20935 (= lt!6386 lt!6383)))

(assert (=> b!20935 (= call!1210 call!1201)))

(assert (=> b!20935 (= lt!6383 (lemmaChangeLongMinValueKeyThenAddPairToListMap!5 (_keys!3134 (ite c!2298 (_2!430 lt!6186) lt!6190)) (_values!1702 (ite c!2298 (_2!430 lt!6186) lt!6190)) (mask!4678 (ite c!2298 (_2!430 lt!6186) lt!6190)) (extraKeys!1616 (ite c!2298 (_2!430 lt!6186) lt!6190)) lt!6387 (zeroValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190)) (minValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190)) (ite c!2298 (minValue!1640 (v!1559 (underlying!98 thiss!938))) (ite c!2297 (zeroValue!1640 (v!1559 (underlying!98 thiss!938))) (minValue!1640 (v!1559 (underlying!98 thiss!938))))) (defaultEntry!1711 (ite c!2298 (_2!430 lt!6186) lt!6190))))))

(assert (=> b!20935 (= lt!6387 (bvor (extraKeys!1616 (ite c!2298 (_2!430 lt!6186) lt!6190)) #b00000000000000000000000000000010))))

(assert (=> b!20935 (= e!13661 (tuple2!855 true (LongMapFixedSize!175 (defaultEntry!1711 (ite c!2298 (_2!430 lt!6186) lt!6190)) (mask!4678 (ite c!2298 (_2!430 lt!6186) lt!6190)) (bvor (extraKeys!1616 (ite c!2298 (_2!430 lt!6186) lt!6190)) #b00000000000000000000000000000010) (zeroValue!1640 (ite c!2298 (_2!430 lt!6186) lt!6190)) (ite c!2298 (minValue!1640 (v!1559 (underlying!98 thiss!938))) (ite c!2297 (zeroValue!1640 (v!1559 (underlying!98 thiss!938))) (minValue!1640 (v!1559 (underlying!98 thiss!938))))) (_size!126 (ite c!2298 (_2!430 lt!6186) lt!6190)) (_keys!3134 (ite c!2298 (_2!430 lt!6186) lt!6190)) (_values!1702 (ite c!2298 (_2!430 lt!6186) lt!6190)) (_vacant!126 (ite c!2298 (_2!430 lt!6186) lt!6190)))))))

(declare-fun b!20936 () Bool)

(declare-fun lt!6379 () tuple2!854)

(assert (=> b!20936 (= e!13655 (tuple2!855 (_1!430 lt!6379) (_2!430 lt!6379)))))

(assert (=> b!20936 (= lt!6379 call!1213)))

(declare-fun bm!1218 () Bool)

(assert (=> bm!1218 (= call!1209 call!1214)))

(declare-fun b!20937 () Bool)

(declare-fun res!13597 () Bool)

(assert (=> b!20937 (=> (not res!13597) (not e!13662))))

(assert (=> b!20937 (= res!13597 call!1219)))

(assert (=> b!20937 (= e!13652 e!13662)))

(declare-fun b!20938 () Bool)

(assert (=> b!20938 (= e!13650 call!1211)))

(declare-fun b!20939 () Bool)

(assert (=> b!20939 (= e!13655 e!13646)))

(declare-fun c!2369 () Bool)

(assert (=> b!20939 (= c!2369 ((_ is MissingZero!54) lt!6392))))

(declare-fun b!20940 () Bool)

(assert (=> b!20940 (= e!13644 e!13648)))

(assert (=> b!20940 (= lt!6392 (seekEntryOrOpen!0 (ite c!2298 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2297 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!3134 (ite c!2298 (_2!430 lt!6186) lt!6190)) (mask!4678 (ite c!2298 (_2!430 lt!6186) lt!6190))))))

(assert (=> b!20940 (= c!2364 ((_ is Undefined!54) lt!6392))))

(declare-fun b!20941 () Bool)

(declare-fun lt!6376 () Unit!432)

(assert (=> b!20941 (= lt!6376 e!13647)))

(assert (=> b!20941 (= c!2360 call!1199)))

(assert (=> b!20941 (= e!13648 (tuple2!855 false (ite c!2298 (_2!430 lt!6186) lt!6190)))))

(declare-fun bm!1219 () Bool)

(assert (=> bm!1219 (= call!1219 call!1218)))

(declare-fun b!20942 () Bool)

(assert (=> b!20942 (= e!13657 (= (select (arr!567 (_keys!3134 (ite c!2298 (_2!430 lt!6186) lt!6190))) (index!2337 lt!6390)) (ite c!2298 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2297 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!20943 () Bool)

(assert (=> b!20943 (= e!13663 (= (select (arr!567 (_keys!3134 (ite c!2298 (_2!430 lt!6186) lt!6190))) (index!2337 lt!6374)) (ite c!2298 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!2297 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and d!3713 c!2368) b!20909))

(assert (= (and d!3713 (not c!2368)) b!20940))

(assert (= (and b!20909 c!2366) b!20907))

(assert (= (and b!20909 (not c!2366)) b!20935))

(assert (= (or b!20907 b!20935) bm!1205))

(assert (= (or b!20907 b!20935) bm!1218))

(assert (= (or b!20907 b!20935) bm!1208))

(assert (= (and b!20940 c!2364) b!20941))

(assert (= (and b!20940 (not c!2364)) b!20929))

(assert (= (and b!20941 c!2360) b!20924))

(assert (= (and b!20941 (not c!2360)) b!20911))

(assert (= (and b!20924 res!13605) b!20905))

(assert (= (and b!20905 res!13598) b!20943))

(assert (= (and b!20911 c!2365) b!20908))

(assert (= (and b!20911 (not c!2365)) b!20932))

(assert (= (and b!20908 res!13601) b!20915))

(assert (= (and b!20915 res!13595) b!20918))

(assert (= (and b!20932 c!2371) b!20919))

(assert (= (and b!20932 (not c!2371)) b!20922))

(assert (= (and b!20919 res!13596) b!20925))

(assert (= (and b!20925 res!13602) b!20928))

(assert (= (or b!20908 b!20919) bm!1203))

(assert (= (or b!20918 b!20928) bm!1204))

(assert (= (or b!20905 bm!1203) bm!1214))

(assert (= (or b!20924 b!20911) bm!1200))

(assert (= (and b!20929 c!2367) b!20936))

(assert (= (and b!20929 (not c!2367)) b!20939))

(assert (= (and b!20939 c!2369) b!20906))

(assert (= (and b!20939 (not c!2369)) b!20916))

(assert (= (and b!20916 c!2373) b!20934))

(assert (= (and b!20916 (not c!2373)) b!20921))

(assert (= (and b!20934 res!13604) b!20926))

(assert (= (and b!20926 res!13599) b!20942))

(assert (= (and b!20921 c!2363) b!20937))

(assert (= (and b!20921 (not c!2363)) b!20923))

(assert (= (and b!20937 res!13597) b!20912))

(assert (= (and b!20912 res!13603) b!20933))

(assert (= (and b!20923 c!2370) b!20930))

(assert (= (and b!20923 (not c!2370)) b!20904))

(assert (= (and b!20930 res!13600) b!20910))

(assert (= (and b!20910 res!13594) b!20920))

(assert (= (or b!20937 b!20930) bm!1219))

(assert (= (or b!20933 b!20920) bm!1211))

(assert (= (or b!20926 bm!1219) bm!1198))

(assert (= (or b!20934 b!20921) bm!1213))

(assert (= (or b!20936 b!20906) bm!1196))

(assert (= (or b!20924 b!20934) bm!1209))

(assert (= (or b!20941 b!20916) bm!1199))

(assert (= (or b!20911 b!20921) bm!1202))

(assert (= (or bm!1204 bm!1211) bm!1210))

(assert (= (or bm!1200 bm!1213) bm!1197))

(assert (= (or bm!1214 bm!1198) bm!1206))

(assert (= (or b!20941 b!20916) bm!1207))

(assert (= (and bm!1207 c!2372) b!20938))

(assert (= (and bm!1207 (not c!2372)) b!20903))

(assert (= (or bm!1205 bm!1199) bm!1212))

(assert (= (or bm!1218 b!20903) bm!1201))

(assert (= (or bm!1208 b!20916) bm!1216))

(assert (= (and bm!1216 c!2361) b!20914))

(assert (= (and bm!1216 (not c!2361)) b!20913))

(assert (= (and d!3713 res!13593) b!20902))

(assert (= (and b!20902 c!2362) b!20927))

(assert (= (and b!20902 (not c!2362)) b!20931))

(assert (= (and b!20927 res!13606) b!20917))

(assert (= (or b!20927 b!20917 b!20931) bm!1215))

(assert (= (or b!20917 b!20931) bm!1217))

(declare-fun m!14599 () Bool)

(assert (=> bm!1202 m!14599))

(declare-fun m!14601 () Bool)

(assert (=> d!3713 m!14601))

(declare-fun m!14603 () Bool)

(assert (=> d!3713 m!14603))

(declare-fun m!14605 () Bool)

(assert (=> b!20915 m!14605))

(declare-fun m!14607 () Bool)

(assert (=> bm!1196 m!14607))

(declare-fun m!14609 () Bool)

(assert (=> bm!1207 m!14609))

(declare-fun m!14611 () Bool)

(assert (=> bm!1207 m!14611))

(declare-fun m!14613 () Bool)

(assert (=> b!20943 m!14613))

(declare-fun m!14615 () Bool)

(assert (=> b!20917 m!14615))

(declare-fun m!14617 () Bool)

(assert (=> b!20916 m!14617))

(declare-fun m!14619 () Bool)

(assert (=> b!20916 m!14619))

(declare-fun m!14621 () Bool)

(assert (=> b!20916 m!14621))

(declare-fun m!14623 () Bool)

(assert (=> b!20916 m!14623))

(assert (=> b!20916 m!14623))

(declare-fun m!14625 () Bool)

(assert (=> b!20916 m!14625))

(declare-fun m!14627 () Bool)

(assert (=> b!20940 m!14627))

(declare-fun m!14629 () Bool)

(assert (=> b!20910 m!14629))

(assert (=> bm!1212 m!14621))

(declare-fun m!14631 () Bool)

(assert (=> bm!1212 m!14631))

(declare-fun m!14633 () Bool)

(assert (=> b!20942 m!14633))

(declare-fun m!14635 () Bool)

(assert (=> bm!1217 m!14635))

(assert (=> bm!1197 m!14627))

(declare-fun m!14637 () Bool)

(assert (=> b!20927 m!14637))

(declare-fun m!14639 () Bool)

(assert (=> bm!1216 m!14639))

(declare-fun m!14641 () Bool)

(assert (=> b!20935 m!14641))

(declare-fun m!14643 () Bool)

(assert (=> bm!1215 m!14643))

(declare-fun m!14645 () Bool)

(assert (=> bm!1201 m!14645))

(declare-fun m!14647 () Bool)

(assert (=> bm!1209 m!14647))

(assert (=> b!20913 m!14623))

(declare-fun m!14649 () Bool)

(assert (=> b!20912 m!14649))

(declare-fun m!14651 () Bool)

(assert (=> b!20907 m!14651))

(declare-fun m!14653 () Bool)

(assert (=> bm!1206 m!14653))

(declare-fun m!14655 () Bool)

(assert (=> b!20925 m!14655))

(declare-fun m!14657 () Bool)

(assert (=> bm!1210 m!14657))

(assert (=> bm!1116 d!3713))

(declare-fun d!3715 () Bool)

(declare-fun res!13613 () Bool)

(declare-fun e!13666 () Bool)

(assert (=> d!3715 (=> (not res!13613) (not e!13666))))

(declare-fun simpleValid!16 (LongMapFixedSize!174) Bool)

(assert (=> d!3715 (= res!13613 (simpleValid!16 (v!1559 (_2!429 lt!6191))))))

(assert (=> d!3715 (= (valid!88 (v!1559 (_2!429 lt!6191))) e!13666)))

(declare-fun b!20950 () Bool)

(declare-fun res!13614 () Bool)

(assert (=> b!20950 (=> (not res!13614) (not e!13666))))

(assert (=> b!20950 (= res!13614 (= (arrayCountValidKeys!0 (_keys!3134 (v!1559 (_2!429 lt!6191))) #b00000000000000000000000000000000 (size!660 (_keys!3134 (v!1559 (_2!429 lt!6191))))) (_size!126 (v!1559 (_2!429 lt!6191)))))))

(declare-fun b!20951 () Bool)

(declare-fun res!13615 () Bool)

(assert (=> b!20951 (=> (not res!13615) (not e!13666))))

(assert (=> b!20951 (= res!13615 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3134 (v!1559 (_2!429 lt!6191))) (mask!4678 (v!1559 (_2!429 lt!6191)))))))

(declare-fun b!20952 () Bool)

(assert (=> b!20952 (= e!13666 (arrayNoDuplicates!0 (_keys!3134 (v!1559 (_2!429 lt!6191))) #b00000000000000000000000000000000 Nil!551))))

(assert (= (and d!3715 res!13613) b!20950))

(assert (= (and b!20950 res!13614) b!20951))

(assert (= (and b!20951 res!13615) b!20952))

(declare-fun m!14659 () Bool)

(assert (=> d!3715 m!14659))

(declare-fun m!14661 () Bool)

(assert (=> b!20950 m!14661))

(declare-fun m!14663 () Bool)

(assert (=> b!20951 m!14663))

(declare-fun m!14665 () Bool)

(assert (=> b!20952 m!14665))

(assert (=> b!20692 d!3715))

(declare-fun mapNonEmpty!961 () Bool)

(declare-fun mapRes!961 () Bool)

(declare-fun tp!3409 () Bool)

(declare-fun e!13671 () Bool)

(assert (=> mapNonEmpty!961 (= mapRes!961 (and tp!3409 e!13671))))

(declare-fun mapKey!961 () (_ BitVec 32))

(declare-fun mapRest!961 () (Array (_ BitVec 32) ValueCell!294))

(declare-fun mapValue!961 () ValueCell!294)

(assert (=> mapNonEmpty!961 (= mapRest!955 (store mapRest!961 mapKey!961 mapValue!961))))

(declare-fun b!20960 () Bool)

(declare-fun e!13672 () Bool)

(assert (=> b!20960 (= e!13672 tp_is_empty!987)))

(declare-fun condMapEmpty!961 () Bool)

(declare-fun mapDefault!961 () ValueCell!294)

(assert (=> mapNonEmpty!955 (= condMapEmpty!961 (= mapRest!955 ((as const (Array (_ BitVec 32) ValueCell!294)) mapDefault!961)))))

(assert (=> mapNonEmpty!955 (= tp!3399 (and e!13672 mapRes!961))))

(declare-fun mapIsEmpty!961 () Bool)

(assert (=> mapIsEmpty!961 mapRes!961))

(declare-fun b!20959 () Bool)

(assert (=> b!20959 (= e!13671 tp_is_empty!987)))

(assert (= (and mapNonEmpty!955 condMapEmpty!961) mapIsEmpty!961))

(assert (= (and mapNonEmpty!955 (not condMapEmpty!961)) mapNonEmpty!961))

(assert (= (and mapNonEmpty!961 ((_ is ValueCellFull!294) mapValue!961)) b!20959))

(assert (= (and mapNonEmpty!955 ((_ is ValueCellFull!294) mapDefault!961)) b!20960))

(declare-fun m!14667 () Bool)

(assert (=> mapNonEmpty!961 m!14667))

(declare-fun b_lambda!1513 () Bool)

(assert (= b_lambda!1511 (or (and b!20685 b_free!723) b_lambda!1513)))

(declare-fun b_lambda!1515 () Bool)

(assert (= b_lambda!1509 (or (and b!20685 b_free!723) b_lambda!1515)))

(check-sat (not bm!1193) (not bm!1207) (not b!20762) (not bm!1217) tp_is_empty!987 (not bm!1192) (not b!20875) (not bm!1201) (not b!20952) (not b!20885) (not bm!1202) (not b!20927) (not d!3711) (not bm!1177) (not d!3709) (not b!20893) (not b!20761) (not bm!1216) (not b!20764) (not bm!1185) (not bm!1191) b_and!1411 (not b!20950) (not bm!1210) (not b!20898) (not bm!1209) (not b!20951) (not b!20935) (not b!20871) (not bm!1173) (not b!20917) (not bm!1215) (not b_next!723) (not d!3705) (not bm!1186) (not b_lambda!1513) (not mapNonEmpty!961) (not b!20913) (not b!20940) (not b!20916) (not d!3715) (not bm!1188) (not bm!1172) (not bm!1196) (not b!20874) (not d!3713) (not bm!1212) (not bm!1197) (not bm!1178) (not bm!1182) (not b!20773) (not b_lambda!1515) (not bm!1183) (not bm!1206) (not b!20907) (not b!20865) (not d!3707))
(check-sat b_and!1411 (not b_next!723))
