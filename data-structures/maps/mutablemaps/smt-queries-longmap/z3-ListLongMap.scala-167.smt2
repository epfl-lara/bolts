; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3202 () Bool)

(assert start!3202)

(declare-fun b!19514 () Bool)

(declare-fun b_free!681 () Bool)

(declare-fun b_next!681 () Bool)

(assert (=> b!19514 (= b_free!681 (not b_next!681))))

(declare-fun tp!3255 () Bool)

(declare-fun b_and!1343 () Bool)

(assert (=> b!19514 (= tp!3255 b_and!1343)))

(declare-fun b!19511 () Bool)

(declare-fun e!12616 () Bool)

(declare-fun e!12614 () Bool)

(assert (=> b!19511 (= e!12616 e!12614)))

(declare-fun mapNonEmpty!874 () Bool)

(declare-fun mapRes!874 () Bool)

(declare-fun tp!3256 () Bool)

(declare-fun e!12617 () Bool)

(assert (=> mapNonEmpty!874 (= mapRes!874 (and tp!3256 e!12617))))

(declare-fun mapKey!874 () (_ BitVec 32))

(declare-datatypes ((V!1085 0))(
  ( (V!1086 (val!499 Int)) )
))
(declare-datatypes ((ValueCell!273 0))(
  ( (ValueCellFull!273 (v!1514 V!1085)) (EmptyCell!273) )
))
(declare-fun mapValue!874 () ValueCell!273)

(declare-fun mapRest!874 () (Array (_ BitVec 32) ValueCell!273))

(declare-datatypes ((array!1097 0))(
  ( (array!1098 (arr!525 (Array (_ BitVec 32) ValueCell!273)) (size!618 (_ BitVec 32))) )
))
(declare-datatypes ((array!1099 0))(
  ( (array!1100 (arr!526 (Array (_ BitVec 32) (_ BitVec 64))) (size!619 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!132 0))(
  ( (LongMapFixedSize!133 (defaultEntry!1685 Int) (mask!4636 (_ BitVec 32)) (extraKeys!1595 (_ BitVec 32)) (zeroValue!1619 V!1085) (minValue!1619 V!1085) (_size!99 (_ BitVec 32)) (_keys!3113 array!1099) (_values!1681 array!1097) (_vacant!99 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!132 0))(
  ( (Cell!133 (v!1515 LongMapFixedSize!132)) )
))
(declare-datatypes ((LongMap!132 0))(
  ( (LongMap!133 (underlying!77 Cell!132)) )
))
(declare-fun thiss!938 () LongMap!132)

(assert (=> mapNonEmpty!874 (= (arr!525 (_values!1681 (v!1515 (underlying!77 thiss!938)))) (store mapRest!874 mapKey!874 mapValue!874))))

(declare-fun res!13212 () Bool)

(declare-fun e!12613 () Bool)

(assert (=> start!3202 (=> (not res!13212) (not e!12613))))

(declare-fun valid!66 (LongMap!132) Bool)

(assert (=> start!3202 (= res!13212 (valid!66 thiss!938))))

(assert (=> start!3202 e!12613))

(assert (=> start!3202 e!12616))

(declare-fun b!19512 () Bool)

(declare-fun tp_is_empty!945 () Bool)

(assert (=> b!19512 (= e!12617 tp_is_empty!945)))

(declare-fun b!19513 () Bool)

(declare-fun e!12615 () Bool)

(declare-fun e!12618 () Bool)

(assert (=> b!19513 (= e!12615 (and e!12618 mapRes!874))))

(declare-fun condMapEmpty!874 () Bool)

(declare-fun mapDefault!874 () ValueCell!273)

(assert (=> b!19513 (= condMapEmpty!874 (= (arr!525 (_values!1681 (v!1515 (underlying!77 thiss!938)))) ((as const (Array (_ BitVec 32) ValueCell!273)) mapDefault!874)))))

(declare-fun mapIsEmpty!874 () Bool)

(assert (=> mapIsEmpty!874 mapRes!874))

(declare-fun e!12612 () Bool)

(declare-fun array_inv!375 (array!1099) Bool)

(declare-fun array_inv!376 (array!1097) Bool)

(assert (=> b!19514 (= e!12612 (and tp!3255 tp_is_empty!945 (array_inv!375 (_keys!3113 (v!1515 (underlying!77 thiss!938)))) (array_inv!376 (_values!1681 (v!1515 (underlying!77 thiss!938)))) e!12615))))

(declare-fun b!19515 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(declare-fun computeNewMask!5 (LongMap!132 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!19515 (= e!12613 (not (validMask!0 (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))))))))

(declare-fun b!19516 () Bool)

(assert (=> b!19516 (= e!12614 e!12612)))

(declare-fun b!19517 () Bool)

(assert (=> b!19517 (= e!12618 tp_is_empty!945)))

(assert (= (and start!3202 res!13212) b!19515))

(assert (= (and b!19513 condMapEmpty!874) mapIsEmpty!874))

(assert (= (and b!19513 (not condMapEmpty!874)) mapNonEmpty!874))

(get-info :version)

(assert (= (and mapNonEmpty!874 ((_ is ValueCellFull!273) mapValue!874)) b!19512))

(assert (= (and b!19513 ((_ is ValueCellFull!273) mapDefault!874)) b!19517))

(assert (= b!19514 b!19513))

(assert (= b!19516 b!19514))

(assert (= b!19511 b!19516))

(assert (= start!3202 b!19511))

(declare-fun m!13723 () Bool)

(assert (=> mapNonEmpty!874 m!13723))

(declare-fun m!13725 () Bool)

(assert (=> start!3202 m!13725))

(declare-fun m!13727 () Bool)

(assert (=> b!19514 m!13727))

(declare-fun m!13729 () Bool)

(assert (=> b!19514 m!13729))

(declare-fun m!13731 () Bool)

(assert (=> b!19515 m!13731))

(assert (=> b!19515 m!13731))

(declare-fun m!13733 () Bool)

(assert (=> b!19515 m!13733))

(check-sat b_and!1343 (not b!19515) (not mapNonEmpty!874) (not start!3202) (not b_next!681) (not b!19514) tp_is_empty!945)
(check-sat b_and!1343 (not b_next!681))
(get-model)

(declare-fun d!3609 () Bool)

(assert (=> d!3609 (= (array_inv!375 (_keys!3113 (v!1515 (underlying!77 thiss!938)))) (bvsge (size!619 (_keys!3113 (v!1515 (underlying!77 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!19514 d!3609))

(declare-fun d!3611 () Bool)

(assert (=> d!3611 (= (array_inv!376 (_values!1681 (v!1515 (underlying!77 thiss!938)))) (bvsge (size!618 (_values!1681 (v!1515 (underlying!77 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!19514 d!3611))

(declare-fun d!3613 () Bool)

(assert (=> d!3613 (= (validMask!0 (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938))))) (and (or (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000000000000000000000000000111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000000000000000000000000001111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000000000000000000000000011111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000000000000000000000000111111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000000000000000000000001111111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000000000000000000000011111111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000000000000000000000111111111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000000000000000000001111111111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000000000000000000011111111111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000000000000000000111111111111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000000000000000001111111111111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000000000000000011111111111111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000000000000000111111111111111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000000000000001111111111111111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000000000000011111111111111111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000000000000111111111111111111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000000000001111111111111111111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000000000011111111111111111111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000000000111111111111111111111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000000001111111111111111111111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000000011111111111111111111111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000000111111111111111111111111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000001111111111111111111111111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000011111111111111111111111111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00000111111111111111111111111111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00001111111111111111111111111111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00011111111111111111111111111111) (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00111111111111111111111111111111)) (bvsle (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) #b00111111111111111111111111111111)))))

(assert (=> b!19515 d!3613))

(declare-fun d!3615 () Bool)

(declare-fun e!12647 () Bool)

(assert (=> d!3615 e!12647))

(declare-fun res!13218 () Bool)

(assert (=> d!3615 (=> (not res!13218) (not e!12647))))

(declare-fun lt!5432 () (_ BitVec 32))

(assert (=> d!3615 (= res!13218 (validMask!0 lt!5432))))

(declare-datatypes ((Unit!386 0))(
  ( (Unit!387) )
))
(declare-datatypes ((tuple2!804 0))(
  ( (tuple2!805 (_1!405 Unit!386) (_2!405 (_ BitVec 32))) )
))
(declare-fun e!12648 () tuple2!804)

(assert (=> d!3615 (= lt!5432 (_2!405 e!12648))))

(declare-fun c!2088 () Bool)

(declare-fun lt!5431 () tuple2!804)

(assert (=> d!3615 (= c!2088 (and (bvsgt (_2!405 lt!5431) #b00000000000000000000000000001000) (bvslt (bvmul #b00000000000000000000000000001000 (_size!99 (v!1515 (underlying!77 thiss!938)))) (_2!405 lt!5431)) (bvsge (bvadd (bvand (bvashr (_2!405 lt!5431) #b00000000000000000000000000000001) #b00111111111111111111111111111111) #b00000000000000000000000000000001) (_size!99 (v!1515 (underlying!77 thiss!938))))))))

(declare-fun Unit!388 () Unit!386)

(declare-fun Unit!389 () Unit!386)

(assert (=> d!3615 (= lt!5431 (ite (and (bvsge (bvmul #b00000000000000000000000000000010 (bvadd (_size!99 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))))) (mask!4636 (v!1515 (underlying!77 thiss!938)))) (bvsle (bvmul #b00000000000000000000000000000101 (_vacant!99 (v!1515 (underlying!77 thiss!938)))) (mask!4636 (v!1515 (underlying!77 thiss!938))))) (tuple2!805 Unit!388 (bvand (bvadd (bvshl (mask!4636 (v!1515 (underlying!77 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (tuple2!805 Unit!389 (mask!4636 (v!1515 (underlying!77 thiss!938))))))))

(assert (=> d!3615 (validMask!0 (mask!4636 (v!1515 (underlying!77 thiss!938))))))

(assert (=> d!3615 (= (computeNewMask!5 thiss!938 (mask!4636 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (_size!99 (v!1515 (underlying!77 thiss!938)))) lt!5432)))

(declare-fun b!19545 () Bool)

(declare-fun computeNewMaskWhile!3 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple2!804)

(assert (=> b!19545 (= e!12648 (computeNewMaskWhile!3 (_size!99 (v!1515 (underlying!77 thiss!938))) (_vacant!99 (v!1515 (underlying!77 thiss!938))) (mask!4636 (v!1515 (underlying!77 thiss!938))) (_2!405 lt!5431)))))

(declare-fun b!19546 () Bool)

(declare-fun Unit!390 () Unit!386)

(assert (=> b!19546 (= e!12648 (tuple2!805 Unit!390 (_2!405 lt!5431)))))

(declare-fun b!19547 () Bool)

(assert (=> b!19547 (= e!12647 (bvsle (_size!99 (v!1515 (underlying!77 thiss!938))) (bvadd lt!5432 #b00000000000000000000000000000001)))))

(assert (= (and d!3615 c!2088) b!19545))

(assert (= (and d!3615 (not c!2088)) b!19546))

(assert (= (and d!3615 res!13218) b!19547))

(declare-fun m!13747 () Bool)

(assert (=> d!3615 m!13747))

(declare-fun m!13749 () Bool)

(assert (=> d!3615 m!13749))

(declare-fun m!13751 () Bool)

(assert (=> b!19545 m!13751))

(assert (=> b!19515 d!3615))

(declare-fun d!3617 () Bool)

(declare-fun valid!67 (LongMapFixedSize!132) Bool)

(assert (=> d!3617 (= (valid!66 thiss!938) (valid!67 (v!1515 (underlying!77 thiss!938))))))

(declare-fun bs!873 () Bool)

(assert (= bs!873 d!3617))

(declare-fun m!13753 () Bool)

(assert (=> bs!873 m!13753))

(assert (=> start!3202 d!3617))

(declare-fun condMapEmpty!880 () Bool)

(declare-fun mapDefault!880 () ValueCell!273)

(assert (=> mapNonEmpty!874 (= condMapEmpty!880 (= mapRest!874 ((as const (Array (_ BitVec 32) ValueCell!273)) mapDefault!880)))))

(declare-fun e!12654 () Bool)

(declare-fun mapRes!880 () Bool)

(assert (=> mapNonEmpty!874 (= tp!3256 (and e!12654 mapRes!880))))

(declare-fun b!19554 () Bool)

(declare-fun e!12653 () Bool)

(assert (=> b!19554 (= e!12653 tp_is_empty!945)))

(declare-fun mapIsEmpty!880 () Bool)

(assert (=> mapIsEmpty!880 mapRes!880))

(declare-fun b!19555 () Bool)

(assert (=> b!19555 (= e!12654 tp_is_empty!945)))

(declare-fun mapNonEmpty!880 () Bool)

(declare-fun tp!3265 () Bool)

(assert (=> mapNonEmpty!880 (= mapRes!880 (and tp!3265 e!12653))))

(declare-fun mapValue!880 () ValueCell!273)

(declare-fun mapKey!880 () (_ BitVec 32))

(declare-fun mapRest!880 () (Array (_ BitVec 32) ValueCell!273))

(assert (=> mapNonEmpty!880 (= mapRest!874 (store mapRest!880 mapKey!880 mapValue!880))))

(assert (= (and mapNonEmpty!874 condMapEmpty!880) mapIsEmpty!880))

(assert (= (and mapNonEmpty!874 (not condMapEmpty!880)) mapNonEmpty!880))

(assert (= (and mapNonEmpty!880 ((_ is ValueCellFull!273) mapValue!880)) b!19554))

(assert (= (and mapNonEmpty!874 ((_ is ValueCellFull!273) mapDefault!880)) b!19555))

(declare-fun m!13755 () Bool)

(assert (=> mapNonEmpty!880 m!13755))

(check-sat b_and!1343 (not b!19545) tp_is_empty!945 (not d!3615) (not mapNonEmpty!880) (not b_next!681) (not d!3617))
(check-sat b_and!1343 (not b_next!681))
