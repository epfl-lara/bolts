; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77080 () Bool)

(assert start!77080)

(declare-fun b!899725 () Bool)

(declare-fun b_free!16041 () Bool)

(declare-fun b_next!16041 () Bool)

(assert (=> b!899725 (= b_free!16041 (not b_next!16041))))

(declare-fun tp!56208 () Bool)

(declare-fun b_and!26373 () Bool)

(assert (=> b!899725 (= tp!56208 b_and!26373)))

(declare-fun b!899720 () Bool)

(declare-fun e!503535 () Bool)

(declare-datatypes ((array!52770 0))(
  ( (array!52771 (arr!25354 (Array (_ BitVec 32) (_ BitVec 64))) (size!25813 (_ BitVec 32))) )
))
(declare-datatypes ((V!29457 0))(
  ( (V!29458 (val!9235 Int)) )
))
(declare-datatypes ((ValueCell!8703 0))(
  ( (ValueCellFull!8703 (v!11727 V!29457)) (EmptyCell!8703) )
))
(declare-datatypes ((array!52772 0))(
  ( (array!52773 (arr!25355 (Array (_ BitVec 32) ValueCell!8703)) (size!25814 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4422 0))(
  ( (LongMapFixedSize!4423 (defaultEntry!5439 Int) (mask!26201 (_ BitVec 32)) (extraKeys!5162 (_ BitVec 32)) (zeroValue!5266 V!29457) (minValue!5266 V!29457) (_size!2266 (_ BitVec 32)) (_keys!10230 array!52770) (_values!5453 array!52772) (_vacant!2266 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4422)

(assert (=> b!899720 (= e!503535 (or (not (= (size!25814 (_values!5453 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!26201 thiss!1181)))) (not (= (size!25813 (_keys!10230 thiss!1181)) (size!25814 (_values!5453 thiss!1181)))) (bvslt (mask!26201 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!5162 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!5162 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!29223 () Bool)

(declare-fun mapRes!29223 () Bool)

(assert (=> mapIsEmpty!29223 mapRes!29223))

(declare-fun b!899721 () Bool)

(declare-fun e!503528 () Bool)

(declare-fun e!503530 () Bool)

(assert (=> b!899721 (= e!503528 (not e!503530))))

(declare-fun res!607824 () Bool)

(assert (=> b!899721 (=> res!607824 e!503530)))

(declare-datatypes ((SeekEntryResult!8923 0))(
  ( (MissingZero!8923 (index!38062 (_ BitVec 32))) (Found!8923 (index!38063 (_ BitVec 32))) (Intermediate!8923 (undefined!9735 Bool) (index!38064 (_ BitVec 32)) (x!76659 (_ BitVec 32))) (Undefined!8923) (MissingVacant!8923 (index!38065 (_ BitVec 32))) )
))
(declare-fun lt!406443 () SeekEntryResult!8923)

(get-info :version)

(assert (=> b!899721 (= res!607824 (not ((_ is Found!8923) lt!406443)))))

(declare-fun e!503533 () Bool)

(assert (=> b!899721 e!503533))

(declare-fun res!607828 () Bool)

(assert (=> b!899721 (=> res!607828 e!503533)))

(assert (=> b!899721 (= res!607828 (not ((_ is Found!8923) lt!406443)))))

(declare-datatypes ((Unit!30545 0))(
  ( (Unit!30546) )
))
(declare-fun lt!406440 () Unit!30545)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun lemmaSeekEntryGivesInRangeIndex!105 (array!52770 array!52772 (_ BitVec 32) (_ BitVec 32) V!29457 V!29457 (_ BitVec 64)) Unit!30545)

(assert (=> b!899721 (= lt!406440 (lemmaSeekEntryGivesInRangeIndex!105 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52770 (_ BitVec 32)) SeekEntryResult!8923)

(assert (=> b!899721 (= lt!406443 (seekEntry!0 key!785 (_keys!10230 thiss!1181) (mask!26201 thiss!1181)))))

(declare-fun b!899722 () Bool)

(declare-fun e!503536 () Bool)

(declare-fun tp_is_empty!18369 () Bool)

(assert (=> b!899722 (= e!503536 tp_is_empty!18369)))

(declare-fun b!899723 () Bool)

(declare-fun res!607827 () Bool)

(assert (=> b!899723 (=> (not res!607827) (not e!503528))))

(assert (=> b!899723 (= res!607827 (not (= key!785 (bvneg key!785))))))

(declare-fun mapNonEmpty!29223 () Bool)

(declare-fun tp!56207 () Bool)

(assert (=> mapNonEmpty!29223 (= mapRes!29223 (and tp!56207 e!503536))))

(declare-fun mapRest!29223 () (Array (_ BitVec 32) ValueCell!8703))

(declare-fun mapKey!29223 () (_ BitVec 32))

(declare-fun mapValue!29223 () ValueCell!8703)

(assert (=> mapNonEmpty!29223 (= (arr!25355 (_values!5453 thiss!1181)) (store mapRest!29223 mapKey!29223 mapValue!29223))))

(declare-fun b!899724 () Bool)

(assert (=> b!899724 (= e!503530 e!503535)))

(declare-fun res!607825 () Bool)

(assert (=> b!899724 (=> res!607825 e!503535)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!899724 (= res!607825 (not (validMask!0 (mask!26201 thiss!1181))))))

(declare-datatypes ((tuple2!12068 0))(
  ( (tuple2!12069 (_1!6044 (_ BitVec 64)) (_2!6044 V!29457)) )
))
(declare-datatypes ((List!17927 0))(
  ( (Nil!17924) (Cons!17923 (h!19068 tuple2!12068) (t!25284 List!17927)) )
))
(declare-datatypes ((ListLongMap!10779 0))(
  ( (ListLongMap!10780 (toList!5405 List!17927)) )
))
(declare-fun contains!4410 (ListLongMap!10779 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2648 (array!52770 array!52772 (_ BitVec 32) (_ BitVec 32) V!29457 V!29457 (_ BitVec 32) Int) ListLongMap!10779)

(assert (=> b!899724 (contains!4410 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181)) (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406443)))))

(declare-fun lt!406442 () Unit!30545)

(declare-fun lemmaValidKeyInArrayIsInListMap!241 (array!52770 array!52772 (_ BitVec 32) (_ BitVec 32) V!29457 V!29457 (_ BitVec 32) Int) Unit!30545)

(assert (=> b!899724 (= lt!406442 (lemmaValidKeyInArrayIsInListMap!241 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) (index!38063 lt!406443) (defaultEntry!5439 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52770 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!899724 (arrayContainsKey!0 (_keys!10230 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!406441 () Unit!30545)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52770 (_ BitVec 64) (_ BitVec 32)) Unit!30545)

(assert (=> b!899724 (= lt!406441 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10230 thiss!1181) key!785 (index!38063 lt!406443)))))

(declare-fun res!607826 () Bool)

(assert (=> start!77080 (=> (not res!607826) (not e!503528))))

(declare-fun valid!1684 (LongMapFixedSize!4422) Bool)

(assert (=> start!77080 (= res!607826 (valid!1684 thiss!1181))))

(assert (=> start!77080 e!503528))

(declare-fun e!503532 () Bool)

(assert (=> start!77080 e!503532))

(assert (=> start!77080 true))

(declare-fun e!503531 () Bool)

(declare-fun array_inv!19870 (array!52770) Bool)

(declare-fun array_inv!19871 (array!52772) Bool)

(assert (=> b!899725 (= e!503532 (and tp!56208 tp_is_empty!18369 (array_inv!19870 (_keys!10230 thiss!1181)) (array_inv!19871 (_values!5453 thiss!1181)) e!503531))))

(declare-fun b!899726 () Bool)

(declare-fun e!503529 () Bool)

(assert (=> b!899726 (= e!503529 tp_is_empty!18369)))

(declare-fun b!899727 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!899727 (= e!503533 (inRange!0 (index!38063 lt!406443) (mask!26201 thiss!1181)))))

(declare-fun b!899728 () Bool)

(assert (=> b!899728 (= e!503531 (and e!503529 mapRes!29223))))

(declare-fun condMapEmpty!29223 () Bool)

(declare-fun mapDefault!29223 () ValueCell!8703)

(assert (=> b!899728 (= condMapEmpty!29223 (= (arr!25355 (_values!5453 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8703)) mapDefault!29223)))))

(assert (= (and start!77080 res!607826) b!899723))

(assert (= (and b!899723 res!607827) b!899721))

(assert (= (and b!899721 (not res!607828)) b!899727))

(assert (= (and b!899721 (not res!607824)) b!899724))

(assert (= (and b!899724 (not res!607825)) b!899720))

(assert (= (and b!899728 condMapEmpty!29223) mapIsEmpty!29223))

(assert (= (and b!899728 (not condMapEmpty!29223)) mapNonEmpty!29223))

(assert (= (and mapNonEmpty!29223 ((_ is ValueCellFull!8703) mapValue!29223)) b!899722))

(assert (= (and b!899728 ((_ is ValueCellFull!8703) mapDefault!29223)) b!899726))

(assert (= b!899725 b!899728))

(assert (= start!77080 b!899725))

(declare-fun m!836305 () Bool)

(assert (=> b!899724 m!836305))

(declare-fun m!836307 () Bool)

(assert (=> b!899724 m!836307))

(declare-fun m!836309 () Bool)

(assert (=> b!899724 m!836309))

(declare-fun m!836311 () Bool)

(assert (=> b!899724 m!836311))

(declare-fun m!836313 () Bool)

(assert (=> b!899724 m!836313))

(assert (=> b!899724 m!836313))

(assert (=> b!899724 m!836311))

(declare-fun m!836315 () Bool)

(assert (=> b!899724 m!836315))

(declare-fun m!836317 () Bool)

(assert (=> b!899724 m!836317))

(declare-fun m!836319 () Bool)

(assert (=> mapNonEmpty!29223 m!836319))

(declare-fun m!836321 () Bool)

(assert (=> b!899721 m!836321))

(declare-fun m!836323 () Bool)

(assert (=> b!899721 m!836323))

(declare-fun m!836325 () Bool)

(assert (=> b!899725 m!836325))

(declare-fun m!836327 () Bool)

(assert (=> b!899725 m!836327))

(declare-fun m!836329 () Bool)

(assert (=> b!899727 m!836329))

(declare-fun m!836331 () Bool)

(assert (=> start!77080 m!836331))

(check-sat (not start!77080) (not mapNonEmpty!29223) (not b!899724) (not b!899721) (not b_next!16041) (not b!899727) tp_is_empty!18369 (not b!899725) b_and!26373)
(check-sat b_and!26373 (not b_next!16041))
(get-model)

(declare-fun d!111517 () Bool)

(declare-fun e!503566 () Bool)

(assert (=> d!111517 e!503566))

(declare-fun res!607846 () Bool)

(assert (=> d!111517 (=> (not res!607846) (not e!503566))))

(assert (=> d!111517 (= res!607846 (and (bvsge (index!38063 lt!406443) #b00000000000000000000000000000000) (bvslt (index!38063 lt!406443) (size!25813 (_keys!10230 thiss!1181)))))))

(declare-fun lt!406458 () Unit!30545)

(declare-fun choose!1515 (array!52770 array!52772 (_ BitVec 32) (_ BitVec 32) V!29457 V!29457 (_ BitVec 32) Int) Unit!30545)

(assert (=> d!111517 (= lt!406458 (choose!1515 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) (index!38063 lt!406443) (defaultEntry!5439 thiss!1181)))))

(assert (=> d!111517 (validMask!0 (mask!26201 thiss!1181))))

(assert (=> d!111517 (= (lemmaValidKeyInArrayIsInListMap!241 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) (index!38063 lt!406443) (defaultEntry!5439 thiss!1181)) lt!406458)))

(declare-fun b!899758 () Bool)

(assert (=> b!899758 (= e!503566 (contains!4410 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181)) (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406443))))))

(assert (= (and d!111517 res!607846) b!899758))

(declare-fun m!836361 () Bool)

(assert (=> d!111517 m!836361))

(assert (=> d!111517 m!836317))

(assert (=> b!899758 m!836313))

(assert (=> b!899758 m!836311))

(assert (=> b!899758 m!836313))

(assert (=> b!899758 m!836311))

(assert (=> b!899758 m!836315))

(assert (=> b!899724 d!111517))

(declare-fun d!111519 () Bool)

(assert (=> d!111519 (= (validMask!0 (mask!26201 thiss!1181)) (and (or (= (mask!26201 thiss!1181) #b00000000000000000000000000000111) (= (mask!26201 thiss!1181) #b00000000000000000000000000001111) (= (mask!26201 thiss!1181) #b00000000000000000000000000011111) (= (mask!26201 thiss!1181) #b00000000000000000000000000111111) (= (mask!26201 thiss!1181) #b00000000000000000000000001111111) (= (mask!26201 thiss!1181) #b00000000000000000000000011111111) (= (mask!26201 thiss!1181) #b00000000000000000000000111111111) (= (mask!26201 thiss!1181) #b00000000000000000000001111111111) (= (mask!26201 thiss!1181) #b00000000000000000000011111111111) (= (mask!26201 thiss!1181) #b00000000000000000000111111111111) (= (mask!26201 thiss!1181) #b00000000000000000001111111111111) (= (mask!26201 thiss!1181) #b00000000000000000011111111111111) (= (mask!26201 thiss!1181) #b00000000000000000111111111111111) (= (mask!26201 thiss!1181) #b00000000000000001111111111111111) (= (mask!26201 thiss!1181) #b00000000000000011111111111111111) (= (mask!26201 thiss!1181) #b00000000000000111111111111111111) (= (mask!26201 thiss!1181) #b00000000000001111111111111111111) (= (mask!26201 thiss!1181) #b00000000000011111111111111111111) (= (mask!26201 thiss!1181) #b00000000000111111111111111111111) (= (mask!26201 thiss!1181) #b00000000001111111111111111111111) (= (mask!26201 thiss!1181) #b00000000011111111111111111111111) (= (mask!26201 thiss!1181) #b00000000111111111111111111111111) (= (mask!26201 thiss!1181) #b00000001111111111111111111111111) (= (mask!26201 thiss!1181) #b00000011111111111111111111111111) (= (mask!26201 thiss!1181) #b00000111111111111111111111111111) (= (mask!26201 thiss!1181) #b00001111111111111111111111111111) (= (mask!26201 thiss!1181) #b00011111111111111111111111111111) (= (mask!26201 thiss!1181) #b00111111111111111111111111111111)) (bvsle (mask!26201 thiss!1181) #b00111111111111111111111111111111)))))

(assert (=> b!899724 d!111519))

(declare-fun d!111521 () Bool)

(declare-fun res!607851 () Bool)

(declare-fun e!503571 () Bool)

(assert (=> d!111521 (=> res!607851 e!503571)))

(assert (=> d!111521 (= res!607851 (= (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000) key!785))))

(assert (=> d!111521 (= (arrayContainsKey!0 (_keys!10230 thiss!1181) key!785 #b00000000000000000000000000000000) e!503571)))

(declare-fun b!899763 () Bool)

(declare-fun e!503572 () Bool)

(assert (=> b!899763 (= e!503571 e!503572)))

(declare-fun res!607852 () Bool)

(assert (=> b!899763 (=> (not res!607852) (not e!503572))))

(assert (=> b!899763 (= res!607852 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25813 (_keys!10230 thiss!1181))))))

(declare-fun b!899764 () Bool)

(assert (=> b!899764 (= e!503572 (arrayContainsKey!0 (_keys!10230 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!111521 (not res!607851)) b!899763))

(assert (= (and b!899763 res!607852) b!899764))

(declare-fun m!836363 () Bool)

(assert (=> d!111521 m!836363))

(declare-fun m!836365 () Bool)

(assert (=> b!899764 m!836365))

(assert (=> b!899724 d!111521))

(declare-fun b!899807 () Bool)

(declare-fun e!503608 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!899807 (= e!503608 (validKeyInArray!0 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun c!95164 () Bool)

(declare-fun call!39993 () ListLongMap!10779)

(declare-fun call!39997 () ListLongMap!10779)

(declare-fun bm!39988 () Bool)

(declare-fun call!39992 () ListLongMap!10779)

(declare-fun c!95159 () Bool)

(declare-fun call!39991 () ListLongMap!10779)

(declare-fun +!2550 (ListLongMap!10779 tuple2!12068) ListLongMap!10779)

(assert (=> bm!39988 (= call!39997 (+!2550 (ite c!95159 call!39991 (ite c!95164 call!39993 call!39992)) (ite (or c!95159 c!95164) (tuple2!12069 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5266 thiss!1181)) (tuple2!12069 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5266 thiss!1181)))))))

(declare-fun b!899808 () Bool)

(declare-fun e!503603 () ListLongMap!10779)

(assert (=> b!899808 (= e!503603 (+!2550 call!39997 (tuple2!12069 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5266 thiss!1181))))))

(declare-fun b!899809 () Bool)

(declare-fun e!503605 () Bool)

(declare-fun lt!406523 () ListLongMap!10779)

(declare-fun apply!414 (ListLongMap!10779 (_ BitVec 64)) V!29457)

(declare-fun get!13348 (ValueCell!8703 V!29457) V!29457)

(declare-fun dynLambda!1309 (Int (_ BitVec 64)) V!29457)

(assert (=> b!899809 (= e!503605 (= (apply!414 lt!406523 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000)) (get!13348 (select (arr!25355 (_values!5453 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1309 (defaultEntry!5439 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!899809 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25814 (_values!5453 thiss!1181))))))

(assert (=> b!899809 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25813 (_keys!10230 thiss!1181))))))

(declare-fun b!899810 () Bool)

(declare-fun res!607879 () Bool)

(declare-fun e!503611 () Bool)

(assert (=> b!899810 (=> (not res!607879) (not e!503611))))

(declare-fun e!503610 () Bool)

(assert (=> b!899810 (= res!607879 e!503610)))

(declare-fun c!95162 () Bool)

(assert (=> b!899810 (= c!95162 (not (= (bvand (extraKeys!5162 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!899811 () Bool)

(declare-fun e!503604 () Bool)

(assert (=> b!899811 (= e!503604 e!503605)))

(declare-fun res!607873 () Bool)

(assert (=> b!899811 (=> (not res!607873) (not e!503605))))

(assert (=> b!899811 (= res!607873 (contains!4410 lt!406523 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!899811 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25813 (_keys!10230 thiss!1181))))))

(declare-fun b!899812 () Bool)

(declare-fun c!95160 () Bool)

(assert (=> b!899812 (= c!95160 (and (not (= (bvand (extraKeys!5162 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5162 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!503600 () ListLongMap!10779)

(declare-fun e!503601 () ListLongMap!10779)

(assert (=> b!899812 (= e!503600 e!503601)))

(declare-fun d!111523 () Bool)

(assert (=> d!111523 e!503611))

(declare-fun res!607876 () Bool)

(assert (=> d!111523 (=> (not res!607876) (not e!503611))))

(assert (=> d!111523 (= res!607876 (or (bvsge #b00000000000000000000000000000000 (size!25813 (_keys!10230 thiss!1181))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25813 (_keys!10230 thiss!1181))))))))

(declare-fun lt!406521 () ListLongMap!10779)

(assert (=> d!111523 (= lt!406523 lt!406521)))

(declare-fun lt!406516 () Unit!30545)

(declare-fun e!503602 () Unit!30545)

(assert (=> d!111523 (= lt!406516 e!503602)))

(declare-fun c!95161 () Bool)

(assert (=> d!111523 (= c!95161 e!503608)))

(declare-fun res!607878 () Bool)

(assert (=> d!111523 (=> (not res!607878) (not e!503608))))

(assert (=> d!111523 (= res!607878 (bvslt #b00000000000000000000000000000000 (size!25813 (_keys!10230 thiss!1181))))))

(assert (=> d!111523 (= lt!406521 e!503603)))

(assert (=> d!111523 (= c!95159 (and (not (= (bvand (extraKeys!5162 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5162 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!111523 (validMask!0 (mask!26201 thiss!1181))))

(assert (=> d!111523 (= (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181)) lt!406523)))

(declare-fun bm!39989 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3298 (array!52770 array!52772 (_ BitVec 32) (_ BitVec 32) V!29457 V!29457 (_ BitVec 32) Int) ListLongMap!10779)

(assert (=> bm!39989 (= call!39991 (getCurrentListMapNoExtraKeys!3298 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181)))))

(declare-fun b!899813 () Bool)

(declare-fun e!503607 () Bool)

(assert (=> b!899813 (= e!503607 (= (apply!414 lt!406523 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5266 thiss!1181)))))

(declare-fun b!899814 () Bool)

(assert (=> b!899814 (= e!503601 call!39992)))

(declare-fun b!899815 () Bool)

(declare-fun e!503609 () Bool)

(declare-fun call!39994 () Bool)

(assert (=> b!899815 (= e!503609 (not call!39994))))

(declare-fun b!899816 () Bool)

(assert (=> b!899816 (= e!503611 e!503609)))

(declare-fun c!95163 () Bool)

(assert (=> b!899816 (= c!95163 (not (= (bvand (extraKeys!5162 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!899817 () Bool)

(declare-fun call!39995 () Bool)

(assert (=> b!899817 (= e!503610 (not call!39995))))

(declare-fun b!899818 () Bool)

(assert (=> b!899818 (= e!503603 e!503600)))

(assert (=> b!899818 (= c!95164 (and (not (= (bvand (extraKeys!5162 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5162 thiss!1181) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!39990 () Bool)

(assert (=> bm!39990 (= call!39995 (contains!4410 lt!406523 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!39991 () Bool)

(assert (=> bm!39991 (= call!39992 call!39993)))

(declare-fun bm!39992 () Bool)

(assert (=> bm!39992 (= call!39994 (contains!4410 lt!406523 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!899819 () Bool)

(declare-fun call!39996 () ListLongMap!10779)

(assert (=> b!899819 (= e!503601 call!39996)))

(declare-fun b!899820 () Bool)

(assert (=> b!899820 (= e!503600 call!39996)))

(declare-fun b!899821 () Bool)

(declare-fun e!503599 () Bool)

(assert (=> b!899821 (= e!503599 (= (apply!414 lt!406523 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5266 thiss!1181)))))

(declare-fun b!899822 () Bool)

(declare-fun lt!406513 () Unit!30545)

(assert (=> b!899822 (= e!503602 lt!406513)))

(declare-fun lt!406522 () ListLongMap!10779)

(assert (=> b!899822 (= lt!406522 (getCurrentListMapNoExtraKeys!3298 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181)))))

(declare-fun lt!406507 () (_ BitVec 64))

(assert (=> b!899822 (= lt!406507 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!406510 () (_ BitVec 64))

(assert (=> b!899822 (= lt!406510 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!406506 () Unit!30545)

(declare-fun addStillContains!336 (ListLongMap!10779 (_ BitVec 64) V!29457 (_ BitVec 64)) Unit!30545)

(assert (=> b!899822 (= lt!406506 (addStillContains!336 lt!406522 lt!406507 (zeroValue!5266 thiss!1181) lt!406510))))

(assert (=> b!899822 (contains!4410 (+!2550 lt!406522 (tuple2!12069 lt!406507 (zeroValue!5266 thiss!1181))) lt!406510)))

(declare-fun lt!406520 () Unit!30545)

(assert (=> b!899822 (= lt!406520 lt!406506)))

(declare-fun lt!406524 () ListLongMap!10779)

(assert (=> b!899822 (= lt!406524 (getCurrentListMapNoExtraKeys!3298 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181)))))

(declare-fun lt!406505 () (_ BitVec 64))

(assert (=> b!899822 (= lt!406505 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!406512 () (_ BitVec 64))

(assert (=> b!899822 (= lt!406512 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!406508 () Unit!30545)

(declare-fun addApplyDifferent!336 (ListLongMap!10779 (_ BitVec 64) V!29457 (_ BitVec 64)) Unit!30545)

(assert (=> b!899822 (= lt!406508 (addApplyDifferent!336 lt!406524 lt!406505 (minValue!5266 thiss!1181) lt!406512))))

(assert (=> b!899822 (= (apply!414 (+!2550 lt!406524 (tuple2!12069 lt!406505 (minValue!5266 thiss!1181))) lt!406512) (apply!414 lt!406524 lt!406512))))

(declare-fun lt!406519 () Unit!30545)

(assert (=> b!899822 (= lt!406519 lt!406508)))

(declare-fun lt!406511 () ListLongMap!10779)

(assert (=> b!899822 (= lt!406511 (getCurrentListMapNoExtraKeys!3298 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181)))))

(declare-fun lt!406517 () (_ BitVec 64))

(assert (=> b!899822 (= lt!406517 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!406503 () (_ BitVec 64))

(assert (=> b!899822 (= lt!406503 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!406518 () Unit!30545)

(assert (=> b!899822 (= lt!406518 (addApplyDifferent!336 lt!406511 lt!406517 (zeroValue!5266 thiss!1181) lt!406503))))

(assert (=> b!899822 (= (apply!414 (+!2550 lt!406511 (tuple2!12069 lt!406517 (zeroValue!5266 thiss!1181))) lt!406503) (apply!414 lt!406511 lt!406503))))

(declare-fun lt!406504 () Unit!30545)

(assert (=> b!899822 (= lt!406504 lt!406518)))

(declare-fun lt!406514 () ListLongMap!10779)

(assert (=> b!899822 (= lt!406514 (getCurrentListMapNoExtraKeys!3298 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181)))))

(declare-fun lt!406515 () (_ BitVec 64))

(assert (=> b!899822 (= lt!406515 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!406509 () (_ BitVec 64))

(assert (=> b!899822 (= lt!406509 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!899822 (= lt!406513 (addApplyDifferent!336 lt!406514 lt!406515 (minValue!5266 thiss!1181) lt!406509))))

(assert (=> b!899822 (= (apply!414 (+!2550 lt!406514 (tuple2!12069 lt!406515 (minValue!5266 thiss!1181))) lt!406509) (apply!414 lt!406514 lt!406509))))

(declare-fun b!899823 () Bool)

(declare-fun e!503606 () Bool)

(assert (=> b!899823 (= e!503606 (validKeyInArray!0 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!899824 () Bool)

(declare-fun res!607875 () Bool)

(assert (=> b!899824 (=> (not res!607875) (not e!503611))))

(assert (=> b!899824 (= res!607875 e!503604)))

(declare-fun res!607874 () Bool)

(assert (=> b!899824 (=> res!607874 e!503604)))

(assert (=> b!899824 (= res!607874 (not e!503606))))

(declare-fun res!607872 () Bool)

(assert (=> b!899824 (=> (not res!607872) (not e!503606))))

(assert (=> b!899824 (= res!607872 (bvslt #b00000000000000000000000000000000 (size!25813 (_keys!10230 thiss!1181))))))

(declare-fun bm!39993 () Bool)

(assert (=> bm!39993 (= call!39993 call!39991)))

(declare-fun b!899825 () Bool)

(assert (=> b!899825 (= e!503609 e!503607)))

(declare-fun res!607877 () Bool)

(assert (=> b!899825 (= res!607877 call!39994)))

(assert (=> b!899825 (=> (not res!607877) (not e!503607))))

(declare-fun bm!39994 () Bool)

(assert (=> bm!39994 (= call!39996 call!39997)))

(declare-fun b!899826 () Bool)

(assert (=> b!899826 (= e!503610 e!503599)))

(declare-fun res!607871 () Bool)

(assert (=> b!899826 (= res!607871 call!39995)))

(assert (=> b!899826 (=> (not res!607871) (not e!503599))))

(declare-fun b!899827 () Bool)

(declare-fun Unit!30547 () Unit!30545)

(assert (=> b!899827 (= e!503602 Unit!30547)))

(assert (= (and d!111523 c!95159) b!899808))

(assert (= (and d!111523 (not c!95159)) b!899818))

(assert (= (and b!899818 c!95164) b!899820))

(assert (= (and b!899818 (not c!95164)) b!899812))

(assert (= (and b!899812 c!95160) b!899819))

(assert (= (and b!899812 (not c!95160)) b!899814))

(assert (= (or b!899819 b!899814) bm!39991))

(assert (= (or b!899820 bm!39991) bm!39993))

(assert (= (or b!899820 b!899819) bm!39994))

(assert (= (or b!899808 bm!39993) bm!39989))

(assert (= (or b!899808 bm!39994) bm!39988))

(assert (= (and d!111523 res!607878) b!899807))

(assert (= (and d!111523 c!95161) b!899822))

(assert (= (and d!111523 (not c!95161)) b!899827))

(assert (= (and d!111523 res!607876) b!899824))

(assert (= (and b!899824 res!607872) b!899823))

(assert (= (and b!899824 (not res!607874)) b!899811))

(assert (= (and b!899811 res!607873) b!899809))

(assert (= (and b!899824 res!607875) b!899810))

(assert (= (and b!899810 c!95162) b!899826))

(assert (= (and b!899810 (not c!95162)) b!899817))

(assert (= (and b!899826 res!607871) b!899821))

(assert (= (or b!899826 b!899817) bm!39990))

(assert (= (and b!899810 res!607879) b!899816))

(assert (= (and b!899816 c!95163) b!899825))

(assert (= (and b!899816 (not c!95163)) b!899815))

(assert (= (and b!899825 res!607877) b!899813))

(assert (= (or b!899825 b!899815) bm!39992))

(declare-fun b_lambda!13033 () Bool)

(assert (=> (not b_lambda!13033) (not b!899809)))

(declare-fun t!25286 () Bool)

(declare-fun tb!5209 () Bool)

(assert (=> (and b!899725 (= (defaultEntry!5439 thiss!1181) (defaultEntry!5439 thiss!1181)) t!25286) tb!5209))

(declare-fun result!10183 () Bool)

(assert (=> tb!5209 (= result!10183 tp_is_empty!18369)))

(assert (=> b!899809 t!25286))

(declare-fun b_and!26377 () Bool)

(assert (= b_and!26373 (and (=> t!25286 result!10183) b_and!26377)))

(assert (=> b!899807 m!836363))

(assert (=> b!899807 m!836363))

(declare-fun m!836367 () Bool)

(assert (=> b!899807 m!836367))

(declare-fun m!836369 () Bool)

(assert (=> b!899821 m!836369))

(assert (=> b!899811 m!836363))

(assert (=> b!899811 m!836363))

(declare-fun m!836371 () Bool)

(assert (=> b!899811 m!836371))

(declare-fun m!836373 () Bool)

(assert (=> b!899808 m!836373))

(declare-fun m!836375 () Bool)

(assert (=> b!899822 m!836375))

(declare-fun m!836377 () Bool)

(assert (=> b!899822 m!836377))

(declare-fun m!836379 () Bool)

(assert (=> b!899822 m!836379))

(declare-fun m!836381 () Bool)

(assert (=> b!899822 m!836381))

(assert (=> b!899822 m!836377))

(declare-fun m!836383 () Bool)

(assert (=> b!899822 m!836383))

(declare-fun m!836385 () Bool)

(assert (=> b!899822 m!836385))

(declare-fun m!836387 () Bool)

(assert (=> b!899822 m!836387))

(declare-fun m!836389 () Bool)

(assert (=> b!899822 m!836389))

(declare-fun m!836391 () Bool)

(assert (=> b!899822 m!836391))

(assert (=> b!899822 m!836379))

(declare-fun m!836393 () Bool)

(assert (=> b!899822 m!836393))

(declare-fun m!836395 () Bool)

(assert (=> b!899822 m!836395))

(assert (=> b!899822 m!836391))

(declare-fun m!836397 () Bool)

(assert (=> b!899822 m!836397))

(assert (=> b!899822 m!836363))

(declare-fun m!836399 () Bool)

(assert (=> b!899822 m!836399))

(assert (=> b!899822 m!836393))

(declare-fun m!836401 () Bool)

(assert (=> b!899822 m!836401))

(declare-fun m!836403 () Bool)

(assert (=> b!899822 m!836403))

(declare-fun m!836405 () Bool)

(assert (=> b!899822 m!836405))

(assert (=> b!899823 m!836363))

(assert (=> b!899823 m!836363))

(assert (=> b!899823 m!836367))

(declare-fun m!836407 () Bool)

(assert (=> bm!39988 m!836407))

(assert (=> bm!39989 m!836389))

(declare-fun m!836409 () Bool)

(assert (=> bm!39992 m!836409))

(assert (=> d!111523 m!836317))

(assert (=> b!899809 m!836363))

(declare-fun m!836411 () Bool)

(assert (=> b!899809 m!836411))

(declare-fun m!836413 () Bool)

(assert (=> b!899809 m!836413))

(assert (=> b!899809 m!836363))

(declare-fun m!836415 () Bool)

(assert (=> b!899809 m!836415))

(assert (=> b!899809 m!836413))

(assert (=> b!899809 m!836411))

(declare-fun m!836417 () Bool)

(assert (=> b!899809 m!836417))

(declare-fun m!836419 () Bool)

(assert (=> b!899813 m!836419))

(declare-fun m!836421 () Bool)

(assert (=> bm!39990 m!836421))

(assert (=> b!899724 d!111523))

(declare-fun d!111525 () Bool)

(declare-fun e!503616 () Bool)

(assert (=> d!111525 e!503616))

(declare-fun res!607882 () Bool)

(assert (=> d!111525 (=> res!607882 e!503616)))

(declare-fun lt!406536 () Bool)

(assert (=> d!111525 (= res!607882 (not lt!406536))))

(declare-fun lt!406535 () Bool)

(assert (=> d!111525 (= lt!406536 lt!406535)))

(declare-fun lt!406533 () Unit!30545)

(declare-fun e!503617 () Unit!30545)

(assert (=> d!111525 (= lt!406533 e!503617)))

(declare-fun c!95167 () Bool)

(assert (=> d!111525 (= c!95167 lt!406535)))

(declare-fun containsKey!430 (List!17927 (_ BitVec 64)) Bool)

(assert (=> d!111525 (= lt!406535 (containsKey!430 (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181))) (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406443))))))

(assert (=> d!111525 (= (contains!4410 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181)) (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406443))) lt!406536)))

(declare-fun b!899836 () Bool)

(declare-fun lt!406534 () Unit!30545)

(assert (=> b!899836 (= e!503617 lt!406534)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!325 (List!17927 (_ BitVec 64)) Unit!30545)

(assert (=> b!899836 (= lt!406534 (lemmaContainsKeyImpliesGetValueByKeyDefined!325 (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181))) (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406443))))))

(declare-datatypes ((Option!466 0))(
  ( (Some!465 (v!11729 V!29457)) (None!464) )
))
(declare-fun isDefined!335 (Option!466) Bool)

(declare-fun getValueByKey!460 (List!17927 (_ BitVec 64)) Option!466)

(assert (=> b!899836 (isDefined!335 (getValueByKey!460 (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181))) (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406443))))))

(declare-fun b!899837 () Bool)

(declare-fun Unit!30548 () Unit!30545)

(assert (=> b!899837 (= e!503617 Unit!30548)))

(declare-fun b!899838 () Bool)

(assert (=> b!899838 (= e!503616 (isDefined!335 (getValueByKey!460 (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181))) (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406443)))))))

(assert (= (and d!111525 c!95167) b!899836))

(assert (= (and d!111525 (not c!95167)) b!899837))

(assert (= (and d!111525 (not res!607882)) b!899838))

(assert (=> d!111525 m!836311))

(declare-fun m!836423 () Bool)

(assert (=> d!111525 m!836423))

(assert (=> b!899836 m!836311))

(declare-fun m!836425 () Bool)

(assert (=> b!899836 m!836425))

(assert (=> b!899836 m!836311))

(declare-fun m!836427 () Bool)

(assert (=> b!899836 m!836427))

(assert (=> b!899836 m!836427))

(declare-fun m!836429 () Bool)

(assert (=> b!899836 m!836429))

(assert (=> b!899838 m!836311))

(assert (=> b!899838 m!836427))

(assert (=> b!899838 m!836427))

(assert (=> b!899838 m!836429))

(assert (=> b!899724 d!111525))

(declare-fun d!111527 () Bool)

(assert (=> d!111527 (arrayContainsKey!0 (_keys!10230 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!406539 () Unit!30545)

(declare-fun choose!13 (array!52770 (_ BitVec 64) (_ BitVec 32)) Unit!30545)

(assert (=> d!111527 (= lt!406539 (choose!13 (_keys!10230 thiss!1181) key!785 (index!38063 lt!406443)))))

(assert (=> d!111527 (bvsge (index!38063 lt!406443) #b00000000000000000000000000000000)))

(assert (=> d!111527 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10230 thiss!1181) key!785 (index!38063 lt!406443)) lt!406539)))

(declare-fun bs!25261 () Bool)

(assert (= bs!25261 d!111527))

(assert (=> bs!25261 m!836307))

(declare-fun m!836431 () Bool)

(assert (=> bs!25261 m!836431))

(assert (=> b!899724 d!111527))

(declare-fun d!111529 () Bool)

(declare-fun e!503620 () Bool)

(assert (=> d!111529 e!503620))

(declare-fun res!607885 () Bool)

(assert (=> d!111529 (=> res!607885 e!503620)))

(declare-fun lt!406545 () SeekEntryResult!8923)

(assert (=> d!111529 (= res!607885 (not ((_ is Found!8923) lt!406545)))))

(assert (=> d!111529 (= lt!406545 (seekEntry!0 key!785 (_keys!10230 thiss!1181) (mask!26201 thiss!1181)))))

(declare-fun lt!406544 () Unit!30545)

(declare-fun choose!1516 (array!52770 array!52772 (_ BitVec 32) (_ BitVec 32) V!29457 V!29457 (_ BitVec 64)) Unit!30545)

(assert (=> d!111529 (= lt!406544 (choose!1516 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) key!785))))

(assert (=> d!111529 (validMask!0 (mask!26201 thiss!1181))))

(assert (=> d!111529 (= (lemmaSeekEntryGivesInRangeIndex!105 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) key!785) lt!406544)))

(declare-fun b!899841 () Bool)

(assert (=> b!899841 (= e!503620 (inRange!0 (index!38063 lt!406545) (mask!26201 thiss!1181)))))

(assert (= (and d!111529 (not res!607885)) b!899841))

(assert (=> d!111529 m!836323))

(declare-fun m!836433 () Bool)

(assert (=> d!111529 m!836433))

(assert (=> d!111529 m!836317))

(declare-fun m!836435 () Bool)

(assert (=> b!899841 m!836435))

(assert (=> b!899721 d!111529))

(declare-fun b!899855 () Bool)

(declare-fun c!95176 () Bool)

(declare-fun lt!406554 () (_ BitVec 64))

(assert (=> b!899855 (= c!95176 (= lt!406554 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!503628 () SeekEntryResult!8923)

(declare-fun e!503627 () SeekEntryResult!8923)

(assert (=> b!899855 (= e!503628 e!503627)))

(declare-fun b!899856 () Bool)

(declare-fun lt!406556 () SeekEntryResult!8923)

(assert (=> b!899856 (= e!503628 (Found!8923 (index!38064 lt!406556)))))

(declare-fun b!899857 () Bool)

(declare-fun e!503629 () SeekEntryResult!8923)

(assert (=> b!899857 (= e!503629 Undefined!8923)))

(declare-fun b!899854 () Bool)

(declare-fun lt!406555 () SeekEntryResult!8923)

(assert (=> b!899854 (= e!503627 (ite ((_ is MissingVacant!8923) lt!406555) (MissingZero!8923 (index!38065 lt!406555)) lt!406555))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52770 (_ BitVec 32)) SeekEntryResult!8923)

(assert (=> b!899854 (= lt!406555 (seekKeyOrZeroReturnVacant!0 (x!76659 lt!406556) (index!38064 lt!406556) (index!38064 lt!406556) key!785 (_keys!10230 thiss!1181) (mask!26201 thiss!1181)))))

(declare-fun d!111531 () Bool)

(declare-fun lt!406557 () SeekEntryResult!8923)

(assert (=> d!111531 (and (or ((_ is MissingVacant!8923) lt!406557) (not ((_ is Found!8923) lt!406557)) (and (bvsge (index!38063 lt!406557) #b00000000000000000000000000000000) (bvslt (index!38063 lt!406557) (size!25813 (_keys!10230 thiss!1181))))) (not ((_ is MissingVacant!8923) lt!406557)) (or (not ((_ is Found!8923) lt!406557)) (= (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406557)) key!785)))))

(assert (=> d!111531 (= lt!406557 e!503629)))

(declare-fun c!95175 () Bool)

(assert (=> d!111531 (= c!95175 (and ((_ is Intermediate!8923) lt!406556) (undefined!9735 lt!406556)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!52770 (_ BitVec 32)) SeekEntryResult!8923)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!111531 (= lt!406556 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26201 thiss!1181)) key!785 (_keys!10230 thiss!1181) (mask!26201 thiss!1181)))))

(assert (=> d!111531 (validMask!0 (mask!26201 thiss!1181))))

(assert (=> d!111531 (= (seekEntry!0 key!785 (_keys!10230 thiss!1181) (mask!26201 thiss!1181)) lt!406557)))

(declare-fun b!899858 () Bool)

(assert (=> b!899858 (= e!503627 (MissingZero!8923 (index!38064 lt!406556)))))

(declare-fun b!899859 () Bool)

(assert (=> b!899859 (= e!503629 e!503628)))

(assert (=> b!899859 (= lt!406554 (select (arr!25354 (_keys!10230 thiss!1181)) (index!38064 lt!406556)))))

(declare-fun c!95174 () Bool)

(assert (=> b!899859 (= c!95174 (= lt!406554 key!785))))

(assert (= (and d!111531 c!95175) b!899857))

(assert (= (and d!111531 (not c!95175)) b!899859))

(assert (= (and b!899859 c!95174) b!899856))

(assert (= (and b!899859 (not c!95174)) b!899855))

(assert (= (and b!899855 c!95176) b!899858))

(assert (= (and b!899855 (not c!95176)) b!899854))

(declare-fun m!836437 () Bool)

(assert (=> b!899854 m!836437))

(declare-fun m!836439 () Bool)

(assert (=> d!111531 m!836439))

(declare-fun m!836441 () Bool)

(assert (=> d!111531 m!836441))

(assert (=> d!111531 m!836441))

(declare-fun m!836443 () Bool)

(assert (=> d!111531 m!836443))

(assert (=> d!111531 m!836317))

(declare-fun m!836445 () Bool)

(assert (=> b!899859 m!836445))

(assert (=> b!899721 d!111531))

(declare-fun d!111533 () Bool)

(assert (=> d!111533 (= (array_inv!19870 (_keys!10230 thiss!1181)) (bvsge (size!25813 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!899725 d!111533))

(declare-fun d!111535 () Bool)

(assert (=> d!111535 (= (array_inv!19871 (_values!5453 thiss!1181)) (bvsge (size!25814 (_values!5453 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!899725 d!111535))

(declare-fun d!111537 () Bool)

(assert (=> d!111537 (= (inRange!0 (index!38063 lt!406443) (mask!26201 thiss!1181)) (and (bvsge (index!38063 lt!406443) #b00000000000000000000000000000000) (bvslt (index!38063 lt!406443) (bvadd (mask!26201 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!899727 d!111537))

(declare-fun d!111539 () Bool)

(declare-fun res!607892 () Bool)

(declare-fun e!503632 () Bool)

(assert (=> d!111539 (=> (not res!607892) (not e!503632))))

(declare-fun simpleValid!327 (LongMapFixedSize!4422) Bool)

(assert (=> d!111539 (= res!607892 (simpleValid!327 thiss!1181))))

(assert (=> d!111539 (= (valid!1684 thiss!1181) e!503632)))

(declare-fun b!899866 () Bool)

(declare-fun res!607893 () Bool)

(assert (=> b!899866 (=> (not res!607893) (not e!503632))))

(declare-fun arrayCountValidKeys!0 (array!52770 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!899866 (= res!607893 (= (arrayCountValidKeys!0 (_keys!10230 thiss!1181) #b00000000000000000000000000000000 (size!25813 (_keys!10230 thiss!1181))) (_size!2266 thiss!1181)))))

(declare-fun b!899867 () Bool)

(declare-fun res!607894 () Bool)

(assert (=> b!899867 (=> (not res!607894) (not e!503632))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52770 (_ BitVec 32)) Bool)

(assert (=> b!899867 (= res!607894 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10230 thiss!1181) (mask!26201 thiss!1181)))))

(declare-fun b!899868 () Bool)

(declare-datatypes ((List!17928 0))(
  ( (Nil!17925) (Cons!17924 (h!19069 (_ BitVec 64)) (t!25287 List!17928)) )
))
(declare-fun arrayNoDuplicates!0 (array!52770 (_ BitVec 32) List!17928) Bool)

(assert (=> b!899868 (= e!503632 (arrayNoDuplicates!0 (_keys!10230 thiss!1181) #b00000000000000000000000000000000 Nil!17925))))

(assert (= (and d!111539 res!607892) b!899866))

(assert (= (and b!899866 res!607893) b!899867))

(assert (= (and b!899867 res!607894) b!899868))

(declare-fun m!836447 () Bool)

(assert (=> d!111539 m!836447))

(declare-fun m!836449 () Bool)

(assert (=> b!899866 m!836449))

(declare-fun m!836451 () Bool)

(assert (=> b!899867 m!836451))

(declare-fun m!836453 () Bool)

(assert (=> b!899868 m!836453))

(assert (=> start!77080 d!111539))

(declare-fun mapIsEmpty!29229 () Bool)

(declare-fun mapRes!29229 () Bool)

(assert (=> mapIsEmpty!29229 mapRes!29229))

(declare-fun mapNonEmpty!29229 () Bool)

(declare-fun tp!56217 () Bool)

(declare-fun e!503637 () Bool)

(assert (=> mapNonEmpty!29229 (= mapRes!29229 (and tp!56217 e!503637))))

(declare-fun mapValue!29229 () ValueCell!8703)

(declare-fun mapRest!29229 () (Array (_ BitVec 32) ValueCell!8703))

(declare-fun mapKey!29229 () (_ BitVec 32))

(assert (=> mapNonEmpty!29229 (= mapRest!29223 (store mapRest!29229 mapKey!29229 mapValue!29229))))

(declare-fun b!899875 () Bool)

(assert (=> b!899875 (= e!503637 tp_is_empty!18369)))

(declare-fun condMapEmpty!29229 () Bool)

(declare-fun mapDefault!29229 () ValueCell!8703)

(assert (=> mapNonEmpty!29223 (= condMapEmpty!29229 (= mapRest!29223 ((as const (Array (_ BitVec 32) ValueCell!8703)) mapDefault!29229)))))

(declare-fun e!503638 () Bool)

(assert (=> mapNonEmpty!29223 (= tp!56207 (and e!503638 mapRes!29229))))

(declare-fun b!899876 () Bool)

(assert (=> b!899876 (= e!503638 tp_is_empty!18369)))

(assert (= (and mapNonEmpty!29223 condMapEmpty!29229) mapIsEmpty!29229))

(assert (= (and mapNonEmpty!29223 (not condMapEmpty!29229)) mapNonEmpty!29229))

(assert (= (and mapNonEmpty!29229 ((_ is ValueCellFull!8703) mapValue!29229)) b!899875))

(assert (= (and mapNonEmpty!29223 ((_ is ValueCellFull!8703) mapDefault!29229)) b!899876))

(declare-fun m!836455 () Bool)

(assert (=> mapNonEmpty!29229 m!836455))

(declare-fun b_lambda!13035 () Bool)

(assert (= b_lambda!13033 (or (and b!899725 b_free!16041) b_lambda!13035)))

(check-sat (not bm!39988) (not bm!39992) (not d!111531) (not b!899867) (not b!899866) (not mapNonEmpty!29229) (not b_next!16041) (not b!899823) (not d!111523) (not bm!39989) (not bm!39990) (not b!899838) b_and!26377 (not d!111527) (not b!899868) (not b!899808) (not d!111529) (not b!899758) (not b!899813) (not d!111525) (not b!899764) (not d!111517) (not b!899822) (not d!111539) (not b!899841) (not b!899809) (not b!899821) tp_is_empty!18369 (not b!899854) (not b!899807) (not b_lambda!13035) (not b!899836) (not b!899811))
(check-sat b_and!26377 (not b_next!16041))
(get-model)

(assert (=> d!111529 d!111531))

(declare-fun d!111541 () Bool)

(declare-fun e!503641 () Bool)

(assert (=> d!111541 e!503641))

(declare-fun res!607897 () Bool)

(assert (=> d!111541 (=> res!607897 e!503641)))

(declare-fun lt!406560 () SeekEntryResult!8923)

(assert (=> d!111541 (= res!607897 (not ((_ is Found!8923) lt!406560)))))

(assert (=> d!111541 (= lt!406560 (seekEntry!0 key!785 (_keys!10230 thiss!1181) (mask!26201 thiss!1181)))))

(assert (=> d!111541 true))

(declare-fun _$36!375 () Unit!30545)

(assert (=> d!111541 (= (choose!1516 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) key!785) _$36!375)))

(declare-fun b!899879 () Bool)

(assert (=> b!899879 (= e!503641 (inRange!0 (index!38063 lt!406560) (mask!26201 thiss!1181)))))

(assert (= (and d!111541 (not res!607897)) b!899879))

(assert (=> d!111541 m!836323))

(declare-fun m!836457 () Bool)

(assert (=> b!899879 m!836457))

(assert (=> d!111529 d!111541))

(assert (=> d!111529 d!111519))

(declare-fun d!111543 () Bool)

(declare-fun res!607898 () Bool)

(declare-fun e!503642 () Bool)

(assert (=> d!111543 (=> res!607898 e!503642)))

(assert (=> d!111543 (= res!607898 (= (select (arr!25354 (_keys!10230 thiss!1181)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!785))))

(assert (=> d!111543 (= (arrayContainsKey!0 (_keys!10230 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!503642)))

(declare-fun b!899880 () Bool)

(declare-fun e!503643 () Bool)

(assert (=> b!899880 (= e!503642 e!503643)))

(declare-fun res!607899 () Bool)

(assert (=> b!899880 (=> (not res!607899) (not e!503643))))

(assert (=> b!899880 (= res!607899 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!25813 (_keys!10230 thiss!1181))))))

(declare-fun b!899881 () Bool)

(assert (=> b!899881 (= e!503643 (arrayContainsKey!0 (_keys!10230 thiss!1181) key!785 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!111543 (not res!607898)) b!899880))

(assert (= (and b!899880 res!607899) b!899881))

(declare-fun m!836459 () Bool)

(assert (=> d!111543 m!836459))

(declare-fun m!836461 () Bool)

(assert (=> b!899881 m!836461))

(assert (=> b!899764 d!111543))

(declare-fun d!111545 () Bool)

(assert (=> d!111545 (isDefined!335 (getValueByKey!460 (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181))) (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406443))))))

(declare-fun lt!406563 () Unit!30545)

(declare-fun choose!1517 (List!17927 (_ BitVec 64)) Unit!30545)

(assert (=> d!111545 (= lt!406563 (choose!1517 (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181))) (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406443))))))

(declare-fun e!503646 () Bool)

(assert (=> d!111545 e!503646))

(declare-fun res!607902 () Bool)

(assert (=> d!111545 (=> (not res!607902) (not e!503646))))

(declare-fun isStrictlySorted!496 (List!17927) Bool)

(assert (=> d!111545 (= res!607902 (isStrictlySorted!496 (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181)))))))

(assert (=> d!111545 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!325 (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181))) (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406443))) lt!406563)))

(declare-fun b!899884 () Bool)

(assert (=> b!899884 (= e!503646 (containsKey!430 (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181))) (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406443))))))

(assert (= (and d!111545 res!607902) b!899884))

(assert (=> d!111545 m!836311))

(assert (=> d!111545 m!836427))

(assert (=> d!111545 m!836427))

(assert (=> d!111545 m!836429))

(assert (=> d!111545 m!836311))

(declare-fun m!836463 () Bool)

(assert (=> d!111545 m!836463))

(declare-fun m!836465 () Bool)

(assert (=> d!111545 m!836465))

(assert (=> b!899884 m!836311))

(assert (=> b!899884 m!836423))

(assert (=> b!899836 d!111545))

(declare-fun d!111547 () Bool)

(declare-fun isEmpty!695 (Option!466) Bool)

(assert (=> d!111547 (= (isDefined!335 (getValueByKey!460 (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181))) (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406443)))) (not (isEmpty!695 (getValueByKey!460 (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181))) (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406443))))))))

(declare-fun bs!25262 () Bool)

(assert (= bs!25262 d!111547))

(assert (=> bs!25262 m!836427))

(declare-fun m!836467 () Bool)

(assert (=> bs!25262 m!836467))

(assert (=> b!899836 d!111547))

(declare-fun b!899896 () Bool)

(declare-fun e!503652 () Option!466)

(assert (=> b!899896 (= e!503652 None!464)))

(declare-fun b!899894 () Bool)

(declare-fun e!503651 () Option!466)

(assert (=> b!899894 (= e!503651 e!503652)))

(declare-fun c!95182 () Bool)

(assert (=> b!899894 (= c!95182 (and ((_ is Cons!17923) (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181)))) (not (= (_1!6044 (h!19068 (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181))))) (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406443))))))))

(declare-fun d!111549 () Bool)

(declare-fun c!95181 () Bool)

(assert (=> d!111549 (= c!95181 (and ((_ is Cons!17923) (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181)))) (= (_1!6044 (h!19068 (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181))))) (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406443)))))))

(assert (=> d!111549 (= (getValueByKey!460 (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181))) (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406443))) e!503651)))

(declare-fun b!899895 () Bool)

(assert (=> b!899895 (= e!503652 (getValueByKey!460 (t!25284 (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181)))) (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406443))))))

(declare-fun b!899893 () Bool)

(assert (=> b!899893 (= e!503651 (Some!465 (_2!6044 (h!19068 (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181)))))))))

(assert (= (and d!111549 c!95181) b!899893))

(assert (= (and d!111549 (not c!95181)) b!899894))

(assert (= (and b!899894 c!95182) b!899895))

(assert (= (and b!899894 (not c!95182)) b!899896))

(assert (=> b!899895 m!836311))

(declare-fun m!836469 () Bool)

(assert (=> b!899895 m!836469))

(assert (=> b!899836 d!111549))

(declare-fun d!111551 () Bool)

(declare-fun get!13349 (Option!466) V!29457)

(assert (=> d!111551 (= (apply!414 lt!406523 #b1000000000000000000000000000000000000000000000000000000000000000) (get!13349 (getValueByKey!460 (toList!5405 lt!406523) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!25263 () Bool)

(assert (= bs!25263 d!111551))

(declare-fun m!836471 () Bool)

(assert (=> bs!25263 m!836471))

(assert (=> bs!25263 m!836471))

(declare-fun m!836473 () Bool)

(assert (=> bs!25263 m!836473))

(assert (=> b!899813 d!111551))

(assert (=> b!899838 d!111547))

(assert (=> b!899838 d!111549))

(declare-fun e!503661 () SeekEntryResult!8923)

(declare-fun b!899909 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!899909 (= e!503661 (seekKeyOrZeroReturnVacant!0 (bvadd (x!76659 lt!406556) #b00000000000000000000000000000001) (nextIndex!0 (index!38064 lt!406556) (x!76659 lt!406556) (mask!26201 thiss!1181)) (index!38064 lt!406556) key!785 (_keys!10230 thiss!1181) (mask!26201 thiss!1181)))))

(declare-fun d!111553 () Bool)

(declare-fun lt!406568 () SeekEntryResult!8923)

(assert (=> d!111553 (and (or ((_ is Undefined!8923) lt!406568) (not ((_ is Found!8923) lt!406568)) (and (bvsge (index!38063 lt!406568) #b00000000000000000000000000000000) (bvslt (index!38063 lt!406568) (size!25813 (_keys!10230 thiss!1181))))) (or ((_ is Undefined!8923) lt!406568) ((_ is Found!8923) lt!406568) (not ((_ is MissingVacant!8923) lt!406568)) (not (= (index!38065 lt!406568) (index!38064 lt!406556))) (and (bvsge (index!38065 lt!406568) #b00000000000000000000000000000000) (bvslt (index!38065 lt!406568) (size!25813 (_keys!10230 thiss!1181))))) (or ((_ is Undefined!8923) lt!406568) (ite ((_ is Found!8923) lt!406568) (= (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406568)) key!785) (and ((_ is MissingVacant!8923) lt!406568) (= (index!38065 lt!406568) (index!38064 lt!406556)) (= (select (arr!25354 (_keys!10230 thiss!1181)) (index!38065 lt!406568)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!503659 () SeekEntryResult!8923)

(assert (=> d!111553 (= lt!406568 e!503659)))

(declare-fun c!95190 () Bool)

(assert (=> d!111553 (= c!95190 (bvsge (x!76659 lt!406556) #b01111111111111111111111111111110))))

(declare-fun lt!406569 () (_ BitVec 64))

(assert (=> d!111553 (= lt!406569 (select (arr!25354 (_keys!10230 thiss!1181)) (index!38064 lt!406556)))))

(assert (=> d!111553 (validMask!0 (mask!26201 thiss!1181))))

(assert (=> d!111553 (= (seekKeyOrZeroReturnVacant!0 (x!76659 lt!406556) (index!38064 lt!406556) (index!38064 lt!406556) key!785 (_keys!10230 thiss!1181) (mask!26201 thiss!1181)) lt!406568)))

(declare-fun b!899910 () Bool)

(declare-fun e!503660 () SeekEntryResult!8923)

(assert (=> b!899910 (= e!503659 e!503660)))

(declare-fun c!95189 () Bool)

(assert (=> b!899910 (= c!95189 (= lt!406569 key!785))))

(declare-fun b!899911 () Bool)

(assert (=> b!899911 (= e!503660 (Found!8923 (index!38064 lt!406556)))))

(declare-fun b!899912 () Bool)

(assert (=> b!899912 (= e!503659 Undefined!8923)))

(declare-fun b!899913 () Bool)

(declare-fun c!95191 () Bool)

(assert (=> b!899913 (= c!95191 (= lt!406569 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!899913 (= e!503660 e!503661)))

(declare-fun b!899914 () Bool)

(assert (=> b!899914 (= e!503661 (MissingVacant!8923 (index!38064 lt!406556)))))

(assert (= (and d!111553 c!95190) b!899912))

(assert (= (and d!111553 (not c!95190)) b!899910))

(assert (= (and b!899910 c!95189) b!899911))

(assert (= (and b!899910 (not c!95189)) b!899913))

(assert (= (and b!899913 c!95191) b!899914))

(assert (= (and b!899913 (not c!95191)) b!899909))

(declare-fun m!836475 () Bool)

(assert (=> b!899909 m!836475))

(assert (=> b!899909 m!836475))

(declare-fun m!836477 () Bool)

(assert (=> b!899909 m!836477))

(declare-fun m!836479 () Bool)

(assert (=> d!111553 m!836479))

(declare-fun m!836481 () Bool)

(assert (=> d!111553 m!836481))

(assert (=> d!111553 m!836445))

(assert (=> d!111553 m!836317))

(assert (=> b!899854 d!111553))

(declare-fun d!111555 () Bool)

(declare-fun e!503680 () Bool)

(assert (=> d!111555 e!503680))

(declare-fun res!607911 () Bool)

(assert (=> d!111555 (=> (not res!607911) (not e!503680))))

(declare-fun lt!406585 () ListLongMap!10779)

(assert (=> d!111555 (= res!607911 (not (contains!4410 lt!406585 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!503681 () ListLongMap!10779)

(assert (=> d!111555 (= lt!406585 e!503681)))

(declare-fun c!95202 () Bool)

(assert (=> d!111555 (= c!95202 (bvsge #b00000000000000000000000000000000 (size!25813 (_keys!10230 thiss!1181))))))

(assert (=> d!111555 (validMask!0 (mask!26201 thiss!1181))))

(assert (=> d!111555 (= (getCurrentListMapNoExtraKeys!3298 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181)) lt!406585)))

(declare-fun b!899939 () Bool)

(declare-fun e!503677 () Bool)

(assert (=> b!899939 (= e!503677 (validKeyInArray!0 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!899939 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!899940 () Bool)

(declare-fun e!503679 () Bool)

(declare-fun e!503676 () Bool)

(assert (=> b!899940 (= e!503679 e!503676)))

(assert (=> b!899940 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25813 (_keys!10230 thiss!1181))))))

(declare-fun res!607914 () Bool)

(assert (=> b!899940 (= res!607914 (contains!4410 lt!406585 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!899940 (=> (not res!607914) (not e!503676))))

(declare-fun bm!39997 () Bool)

(declare-fun call!40000 () ListLongMap!10779)

(assert (=> bm!39997 (= call!40000 (getCurrentListMapNoExtraKeys!3298 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5439 thiss!1181)))))

(declare-fun b!899941 () Bool)

(assert (=> b!899941 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25813 (_keys!10230 thiss!1181))))))

(assert (=> b!899941 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25814 (_values!5453 thiss!1181))))))

(assert (=> b!899941 (= e!503676 (= (apply!414 lt!406585 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000)) (get!13348 (select (arr!25355 (_values!5453 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1309 (defaultEntry!5439 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!899942 () Bool)

(declare-fun res!607913 () Bool)

(assert (=> b!899942 (=> (not res!607913) (not e!503680))))

(assert (=> b!899942 (= res!607913 (not (contains!4410 lt!406585 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!899943 () Bool)

(declare-fun e!503678 () ListLongMap!10779)

(assert (=> b!899943 (= e!503678 call!40000)))

(declare-fun b!899944 () Bool)

(declare-fun lt!406590 () Unit!30545)

(declare-fun lt!406588 () Unit!30545)

(assert (=> b!899944 (= lt!406590 lt!406588)))

(declare-fun lt!406589 () (_ BitVec 64))

(declare-fun lt!406586 () V!29457)

(declare-fun lt!406587 () ListLongMap!10779)

(declare-fun lt!406584 () (_ BitVec 64))

(assert (=> b!899944 (not (contains!4410 (+!2550 lt!406587 (tuple2!12069 lt!406589 lt!406586)) lt!406584))))

(declare-fun addStillNotContains!219 (ListLongMap!10779 (_ BitVec 64) V!29457 (_ BitVec 64)) Unit!30545)

(assert (=> b!899944 (= lt!406588 (addStillNotContains!219 lt!406587 lt!406589 lt!406586 lt!406584))))

(assert (=> b!899944 (= lt!406584 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!899944 (= lt!406586 (get!13348 (select (arr!25355 (_values!5453 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1309 (defaultEntry!5439 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!899944 (= lt!406589 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000))))

(assert (=> b!899944 (= lt!406587 call!40000)))

(assert (=> b!899944 (= e!503678 (+!2550 call!40000 (tuple2!12069 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000) (get!13348 (select (arr!25355 (_values!5453 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1309 (defaultEntry!5439 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!899945 () Bool)

(declare-fun e!503682 () Bool)

(assert (=> b!899945 (= e!503682 (= lt!406585 (getCurrentListMapNoExtraKeys!3298 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!5439 thiss!1181))))))

(declare-fun b!899946 () Bool)

(assert (=> b!899946 (= e!503681 (ListLongMap!10780 Nil!17924))))

(declare-fun b!899947 () Bool)

(assert (=> b!899947 (= e!503680 e!503679)))

(declare-fun c!95200 () Bool)

(assert (=> b!899947 (= c!95200 e!503677)))

(declare-fun res!607912 () Bool)

(assert (=> b!899947 (=> (not res!607912) (not e!503677))))

(assert (=> b!899947 (= res!607912 (bvslt #b00000000000000000000000000000000 (size!25813 (_keys!10230 thiss!1181))))))

(declare-fun b!899948 () Bool)

(declare-fun isEmpty!696 (ListLongMap!10779) Bool)

(assert (=> b!899948 (= e!503682 (isEmpty!696 lt!406585))))

(declare-fun b!899949 () Bool)

(assert (=> b!899949 (= e!503681 e!503678)))

(declare-fun c!95203 () Bool)

(assert (=> b!899949 (= c!95203 (validKeyInArray!0 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!899950 () Bool)

(assert (=> b!899950 (= e!503679 e!503682)))

(declare-fun c!95201 () Bool)

(assert (=> b!899950 (= c!95201 (bvslt #b00000000000000000000000000000000 (size!25813 (_keys!10230 thiss!1181))))))

(assert (= (and d!111555 c!95202) b!899946))

(assert (= (and d!111555 (not c!95202)) b!899949))

(assert (= (and b!899949 c!95203) b!899944))

(assert (= (and b!899949 (not c!95203)) b!899943))

(assert (= (or b!899944 b!899943) bm!39997))

(assert (= (and d!111555 res!607911) b!899942))

(assert (= (and b!899942 res!607913) b!899947))

(assert (= (and b!899947 res!607912) b!899939))

(assert (= (and b!899947 c!95200) b!899940))

(assert (= (and b!899947 (not c!95200)) b!899950))

(assert (= (and b!899940 res!607914) b!899941))

(assert (= (and b!899950 c!95201) b!899945))

(assert (= (and b!899950 (not c!95201)) b!899948))

(declare-fun b_lambda!13037 () Bool)

(assert (=> (not b_lambda!13037) (not b!899941)))

(assert (=> b!899941 t!25286))

(declare-fun b_and!26379 () Bool)

(assert (= b_and!26377 (and (=> t!25286 result!10183) b_and!26379)))

(declare-fun b_lambda!13039 () Bool)

(assert (=> (not b_lambda!13039) (not b!899944)))

(assert (=> b!899944 t!25286))

(declare-fun b_and!26381 () Bool)

(assert (= b_and!26379 (and (=> t!25286 result!10183) b_and!26381)))

(declare-fun m!836483 () Bool)

(assert (=> b!899945 m!836483))

(assert (=> b!899949 m!836363))

(assert (=> b!899949 m!836363))

(assert (=> b!899949 m!836367))

(assert (=> b!899941 m!836363))

(declare-fun m!836485 () Bool)

(assert (=> b!899941 m!836485))

(assert (=> b!899941 m!836413))

(assert (=> b!899941 m!836411))

(assert (=> b!899941 m!836417))

(assert (=> b!899941 m!836363))

(assert (=> b!899941 m!836411))

(assert (=> b!899941 m!836413))

(assert (=> bm!39997 m!836483))

(declare-fun m!836487 () Bool)

(assert (=> b!899944 m!836487))

(assert (=> b!899944 m!836413))

(assert (=> b!899944 m!836411))

(assert (=> b!899944 m!836417))

(declare-fun m!836489 () Bool)

(assert (=> b!899944 m!836489))

(assert (=> b!899944 m!836363))

(assert (=> b!899944 m!836411))

(assert (=> b!899944 m!836413))

(declare-fun m!836491 () Bool)

(assert (=> b!899944 m!836491))

(assert (=> b!899944 m!836487))

(declare-fun m!836493 () Bool)

(assert (=> b!899944 m!836493))

(assert (=> b!899939 m!836363))

(assert (=> b!899939 m!836363))

(assert (=> b!899939 m!836367))

(declare-fun m!836495 () Bool)

(assert (=> b!899942 m!836495))

(declare-fun m!836497 () Bool)

(assert (=> d!111555 m!836497))

(assert (=> d!111555 m!836317))

(declare-fun m!836499 () Bool)

(assert (=> b!899948 m!836499))

(assert (=> b!899940 m!836363))

(assert (=> b!899940 m!836363))

(declare-fun m!836501 () Bool)

(assert (=> b!899940 m!836501))

(assert (=> bm!39989 d!111555))

(declare-fun d!111557 () Bool)

(assert (=> d!111557 (= (apply!414 lt!406523 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000)) (get!13349 (getValueByKey!460 (toList!5405 lt!406523) (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000))))))

(declare-fun bs!25264 () Bool)

(assert (= bs!25264 d!111557))

(assert (=> bs!25264 m!836363))

(declare-fun m!836503 () Bool)

(assert (=> bs!25264 m!836503))

(assert (=> bs!25264 m!836503))

(declare-fun m!836505 () Bool)

(assert (=> bs!25264 m!836505))

(assert (=> b!899809 d!111557))

(declare-fun d!111559 () Bool)

(declare-fun c!95206 () Bool)

(assert (=> d!111559 (= c!95206 ((_ is ValueCellFull!8703) (select (arr!25355 (_values!5453 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun e!503685 () V!29457)

(assert (=> d!111559 (= (get!13348 (select (arr!25355 (_values!5453 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1309 (defaultEntry!5439 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)) e!503685)))

(declare-fun b!899955 () Bool)

(declare-fun get!13350 (ValueCell!8703 V!29457) V!29457)

(assert (=> b!899955 (= e!503685 (get!13350 (select (arr!25355 (_values!5453 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1309 (defaultEntry!5439 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!899956 () Bool)

(declare-fun get!13351 (ValueCell!8703 V!29457) V!29457)

(assert (=> b!899956 (= e!503685 (get!13351 (select (arr!25355 (_values!5453 thiss!1181)) #b00000000000000000000000000000000) (dynLambda!1309 (defaultEntry!5439 thiss!1181) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!111559 c!95206) b!899955))

(assert (= (and d!111559 (not c!95206)) b!899956))

(assert (=> b!899955 m!836413))

(assert (=> b!899955 m!836411))

(declare-fun m!836507 () Bool)

(assert (=> b!899955 m!836507))

(assert (=> b!899956 m!836413))

(assert (=> b!899956 m!836411))

(declare-fun m!836509 () Bool)

(assert (=> b!899956 m!836509))

(assert (=> b!899809 d!111559))

(declare-fun d!111561 () Bool)

(declare-fun e!503686 () Bool)

(assert (=> d!111561 e!503686))

(declare-fun res!607915 () Bool)

(assert (=> d!111561 (=> res!607915 e!503686)))

(declare-fun lt!406594 () Bool)

(assert (=> d!111561 (= res!607915 (not lt!406594))))

(declare-fun lt!406593 () Bool)

(assert (=> d!111561 (= lt!406594 lt!406593)))

(declare-fun lt!406591 () Unit!30545)

(declare-fun e!503687 () Unit!30545)

(assert (=> d!111561 (= lt!406591 e!503687)))

(declare-fun c!95207 () Bool)

(assert (=> d!111561 (= c!95207 lt!406593)))

(assert (=> d!111561 (= lt!406593 (containsKey!430 (toList!5405 lt!406523) (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> d!111561 (= (contains!4410 lt!406523 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000)) lt!406594)))

(declare-fun b!899957 () Bool)

(declare-fun lt!406592 () Unit!30545)

(assert (=> b!899957 (= e!503687 lt!406592)))

(assert (=> b!899957 (= lt!406592 (lemmaContainsKeyImpliesGetValueByKeyDefined!325 (toList!5405 lt!406523) (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000)))))

(assert (=> b!899957 (isDefined!335 (getValueByKey!460 (toList!5405 lt!406523) (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!899958 () Bool)

(declare-fun Unit!30549 () Unit!30545)

(assert (=> b!899958 (= e!503687 Unit!30549)))

(declare-fun b!899959 () Bool)

(assert (=> b!899959 (= e!503686 (isDefined!335 (getValueByKey!460 (toList!5405 lt!406523) (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000))))))

(assert (= (and d!111561 c!95207) b!899957))

(assert (= (and d!111561 (not c!95207)) b!899958))

(assert (= (and d!111561 (not res!607915)) b!899959))

(assert (=> d!111561 m!836363))

(declare-fun m!836511 () Bool)

(assert (=> d!111561 m!836511))

(assert (=> b!899957 m!836363))

(declare-fun m!836513 () Bool)

(assert (=> b!899957 m!836513))

(assert (=> b!899957 m!836363))

(assert (=> b!899957 m!836503))

(assert (=> b!899957 m!836503))

(declare-fun m!836515 () Bool)

(assert (=> b!899957 m!836515))

(assert (=> b!899959 m!836363))

(assert (=> b!899959 m!836503))

(assert (=> b!899959 m!836503))

(assert (=> b!899959 m!836515))

(assert (=> b!899811 d!111561))

(declare-fun d!111563 () Bool)

(assert (=> d!111563 (= (validKeyInArray!0 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000)) (and (not (= (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!899807 d!111563))

(declare-fun d!111565 () Bool)

(declare-fun e!503690 () Bool)

(assert (=> d!111565 e!503690))

(declare-fun res!607921 () Bool)

(assert (=> d!111565 (=> (not res!607921) (not e!503690))))

(declare-fun lt!406603 () ListLongMap!10779)

(assert (=> d!111565 (= res!607921 (contains!4410 lt!406603 (_1!6044 (ite (or c!95159 c!95164) (tuple2!12069 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5266 thiss!1181)) (tuple2!12069 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5266 thiss!1181))))))))

(declare-fun lt!406606 () List!17927)

(assert (=> d!111565 (= lt!406603 (ListLongMap!10780 lt!406606))))

(declare-fun lt!406605 () Unit!30545)

(declare-fun lt!406604 () Unit!30545)

(assert (=> d!111565 (= lt!406605 lt!406604)))

(assert (=> d!111565 (= (getValueByKey!460 lt!406606 (_1!6044 (ite (or c!95159 c!95164) (tuple2!12069 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5266 thiss!1181)) (tuple2!12069 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5266 thiss!1181))))) (Some!465 (_2!6044 (ite (or c!95159 c!95164) (tuple2!12069 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5266 thiss!1181)) (tuple2!12069 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5266 thiss!1181))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!252 (List!17927 (_ BitVec 64) V!29457) Unit!30545)

(assert (=> d!111565 (= lt!406604 (lemmaContainsTupThenGetReturnValue!252 lt!406606 (_1!6044 (ite (or c!95159 c!95164) (tuple2!12069 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5266 thiss!1181)) (tuple2!12069 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5266 thiss!1181)))) (_2!6044 (ite (or c!95159 c!95164) (tuple2!12069 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5266 thiss!1181)) (tuple2!12069 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5266 thiss!1181))))))))

(declare-fun insertStrictlySorted!308 (List!17927 (_ BitVec 64) V!29457) List!17927)

(assert (=> d!111565 (= lt!406606 (insertStrictlySorted!308 (toList!5405 (ite c!95159 call!39991 (ite c!95164 call!39993 call!39992))) (_1!6044 (ite (or c!95159 c!95164) (tuple2!12069 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5266 thiss!1181)) (tuple2!12069 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5266 thiss!1181)))) (_2!6044 (ite (or c!95159 c!95164) (tuple2!12069 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5266 thiss!1181)) (tuple2!12069 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5266 thiss!1181))))))))

(assert (=> d!111565 (= (+!2550 (ite c!95159 call!39991 (ite c!95164 call!39993 call!39992)) (ite (or c!95159 c!95164) (tuple2!12069 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5266 thiss!1181)) (tuple2!12069 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5266 thiss!1181)))) lt!406603)))

(declare-fun b!899964 () Bool)

(declare-fun res!607920 () Bool)

(assert (=> b!899964 (=> (not res!607920) (not e!503690))))

(assert (=> b!899964 (= res!607920 (= (getValueByKey!460 (toList!5405 lt!406603) (_1!6044 (ite (or c!95159 c!95164) (tuple2!12069 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5266 thiss!1181)) (tuple2!12069 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5266 thiss!1181))))) (Some!465 (_2!6044 (ite (or c!95159 c!95164) (tuple2!12069 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5266 thiss!1181)) (tuple2!12069 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5266 thiss!1181)))))))))

(declare-fun b!899965 () Bool)

(declare-fun contains!4411 (List!17927 tuple2!12068) Bool)

(assert (=> b!899965 (= e!503690 (contains!4411 (toList!5405 lt!406603) (ite (or c!95159 c!95164) (tuple2!12069 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5266 thiss!1181)) (tuple2!12069 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5266 thiss!1181)))))))

(assert (= (and d!111565 res!607921) b!899964))

(assert (= (and b!899964 res!607920) b!899965))

(declare-fun m!836517 () Bool)

(assert (=> d!111565 m!836517))

(declare-fun m!836519 () Bool)

(assert (=> d!111565 m!836519))

(declare-fun m!836521 () Bool)

(assert (=> d!111565 m!836521))

(declare-fun m!836523 () Bool)

(assert (=> d!111565 m!836523))

(declare-fun m!836525 () Bool)

(assert (=> b!899964 m!836525))

(declare-fun m!836527 () Bool)

(assert (=> b!899965 m!836527))

(assert (=> bm!39988 d!111565))

(declare-fun d!111567 () Bool)

(assert (=> d!111567 (contains!4410 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181)) (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406443)))))

(assert (=> d!111567 true))

(declare-fun _$16!187 () Unit!30545)

(assert (=> d!111567 (= (choose!1515 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) (index!38063 lt!406443) (defaultEntry!5439 thiss!1181)) _$16!187)))

(declare-fun bs!25265 () Bool)

(assert (= bs!25265 d!111567))

(assert (=> bs!25265 m!836313))

(assert (=> bs!25265 m!836311))

(assert (=> bs!25265 m!836313))

(assert (=> bs!25265 m!836311))

(assert (=> bs!25265 m!836315))

(assert (=> d!111517 d!111567))

(assert (=> d!111517 d!111519))

(assert (=> b!899758 d!111525))

(assert (=> b!899758 d!111523))

(declare-fun d!111569 () Bool)

(declare-fun e!503691 () Bool)

(assert (=> d!111569 e!503691))

(declare-fun res!607923 () Bool)

(assert (=> d!111569 (=> (not res!607923) (not e!503691))))

(declare-fun lt!406607 () ListLongMap!10779)

(assert (=> d!111569 (= res!607923 (contains!4410 lt!406607 (_1!6044 (tuple2!12069 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5266 thiss!1181)))))))

(declare-fun lt!406610 () List!17927)

(assert (=> d!111569 (= lt!406607 (ListLongMap!10780 lt!406610))))

(declare-fun lt!406609 () Unit!30545)

(declare-fun lt!406608 () Unit!30545)

(assert (=> d!111569 (= lt!406609 lt!406608)))

(assert (=> d!111569 (= (getValueByKey!460 lt!406610 (_1!6044 (tuple2!12069 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5266 thiss!1181)))) (Some!465 (_2!6044 (tuple2!12069 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5266 thiss!1181)))))))

(assert (=> d!111569 (= lt!406608 (lemmaContainsTupThenGetReturnValue!252 lt!406610 (_1!6044 (tuple2!12069 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5266 thiss!1181))) (_2!6044 (tuple2!12069 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5266 thiss!1181)))))))

(assert (=> d!111569 (= lt!406610 (insertStrictlySorted!308 (toList!5405 call!39997) (_1!6044 (tuple2!12069 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5266 thiss!1181))) (_2!6044 (tuple2!12069 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5266 thiss!1181)))))))

(assert (=> d!111569 (= (+!2550 call!39997 (tuple2!12069 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5266 thiss!1181))) lt!406607)))

(declare-fun b!899966 () Bool)

(declare-fun res!607922 () Bool)

(assert (=> b!899966 (=> (not res!607922) (not e!503691))))

(assert (=> b!899966 (= res!607922 (= (getValueByKey!460 (toList!5405 lt!406607) (_1!6044 (tuple2!12069 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5266 thiss!1181)))) (Some!465 (_2!6044 (tuple2!12069 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5266 thiss!1181))))))))

(declare-fun b!899967 () Bool)

(assert (=> b!899967 (= e!503691 (contains!4411 (toList!5405 lt!406607) (tuple2!12069 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5266 thiss!1181))))))

(assert (= (and d!111569 res!607923) b!899966))

(assert (= (and b!899966 res!607922) b!899967))

(declare-fun m!836529 () Bool)

(assert (=> d!111569 m!836529))

(declare-fun m!836531 () Bool)

(assert (=> d!111569 m!836531))

(declare-fun m!836533 () Bool)

(assert (=> d!111569 m!836533))

(declare-fun m!836535 () Bool)

(assert (=> d!111569 m!836535))

(declare-fun m!836537 () Bool)

(assert (=> b!899966 m!836537))

(declare-fun m!836539 () Bool)

(assert (=> b!899967 m!836539))

(assert (=> b!899808 d!111569))

(declare-fun d!111571 () Bool)

(assert (=> d!111571 (= (apply!414 lt!406523 #b0000000000000000000000000000000000000000000000000000000000000000) (get!13349 (getValueByKey!460 (toList!5405 lt!406523) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!25266 () Bool)

(assert (= bs!25266 d!111571))

(declare-fun m!836541 () Bool)

(assert (=> bs!25266 m!836541))

(assert (=> bs!25266 m!836541))

(declare-fun m!836543 () Bool)

(assert (=> bs!25266 m!836543))

(assert (=> b!899821 d!111571))

(declare-fun bm!40000 () Bool)

(declare-fun call!40003 () Bool)

(assert (=> bm!40000 (= call!40003 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!10230 thiss!1181) (mask!26201 thiss!1181)))))

(declare-fun b!899976 () Bool)

(declare-fun e!503699 () Bool)

(assert (=> b!899976 (= e!503699 call!40003)))

(declare-fun b!899977 () Bool)

(declare-fun e!503698 () Bool)

(assert (=> b!899977 (= e!503698 e!503699)))

(declare-fun c!95210 () Bool)

(assert (=> b!899977 (= c!95210 (validKeyInArray!0 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!899978 () Bool)

(declare-fun e!503700 () Bool)

(assert (=> b!899978 (= e!503699 e!503700)))

(declare-fun lt!406618 () (_ BitVec 64))

(assert (=> b!899978 (= lt!406618 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun lt!406619 () Unit!30545)

(assert (=> b!899978 (= lt!406619 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10230 thiss!1181) lt!406618 #b00000000000000000000000000000000))))

(assert (=> b!899978 (arrayContainsKey!0 (_keys!10230 thiss!1181) lt!406618 #b00000000000000000000000000000000)))

(declare-fun lt!406617 () Unit!30545)

(assert (=> b!899978 (= lt!406617 lt!406619)))

(declare-fun res!607929 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52770 (_ BitVec 32)) SeekEntryResult!8923)

(assert (=> b!899978 (= res!607929 (= (seekEntryOrOpen!0 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000) (_keys!10230 thiss!1181) (mask!26201 thiss!1181)) (Found!8923 #b00000000000000000000000000000000)))))

(assert (=> b!899978 (=> (not res!607929) (not e!503700))))

(declare-fun b!899979 () Bool)

(assert (=> b!899979 (= e!503700 call!40003)))

(declare-fun d!111573 () Bool)

(declare-fun res!607928 () Bool)

(assert (=> d!111573 (=> res!607928 e!503698)))

(assert (=> d!111573 (= res!607928 (bvsge #b00000000000000000000000000000000 (size!25813 (_keys!10230 thiss!1181))))))

(assert (=> d!111573 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10230 thiss!1181) (mask!26201 thiss!1181)) e!503698)))

(assert (= (and d!111573 (not res!607928)) b!899977))

(assert (= (and b!899977 c!95210) b!899978))

(assert (= (and b!899977 (not c!95210)) b!899976))

(assert (= (and b!899978 res!607929) b!899979))

(assert (= (or b!899979 b!899976) bm!40000))

(declare-fun m!836545 () Bool)

(assert (=> bm!40000 m!836545))

(assert (=> b!899977 m!836363))

(assert (=> b!899977 m!836363))

(assert (=> b!899977 m!836367))

(assert (=> b!899978 m!836363))

(declare-fun m!836547 () Bool)

(assert (=> b!899978 m!836547))

(declare-fun m!836549 () Bool)

(assert (=> b!899978 m!836549))

(assert (=> b!899978 m!836363))

(declare-fun m!836551 () Bool)

(assert (=> b!899978 m!836551))

(assert (=> b!899867 d!111573))

(declare-fun b!899990 () Bool)

(declare-fun e!503710 () Bool)

(declare-fun call!40006 () Bool)

(assert (=> b!899990 (= e!503710 call!40006)))

(declare-fun b!899991 () Bool)

(declare-fun e!503709 () Bool)

(declare-fun contains!4412 (List!17928 (_ BitVec 64)) Bool)

(assert (=> b!899991 (= e!503709 (contains!4412 Nil!17925 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!899992 () Bool)

(declare-fun e!503712 () Bool)

(assert (=> b!899992 (= e!503712 e!503710)))

(declare-fun c!95213 () Bool)

(assert (=> b!899992 (= c!95213 (validKeyInArray!0 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun bm!40003 () Bool)

(assert (=> bm!40003 (= call!40006 (arrayNoDuplicates!0 (_keys!10230 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!95213 (Cons!17924 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000) Nil!17925) Nil!17925)))))

(declare-fun b!899993 () Bool)

(declare-fun e!503711 () Bool)

(assert (=> b!899993 (= e!503711 e!503712)))

(declare-fun res!607938 () Bool)

(assert (=> b!899993 (=> (not res!607938) (not e!503712))))

(assert (=> b!899993 (= res!607938 (not e!503709))))

(declare-fun res!607936 () Bool)

(assert (=> b!899993 (=> (not res!607936) (not e!503709))))

(assert (=> b!899993 (= res!607936 (validKeyInArray!0 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun d!111575 () Bool)

(declare-fun res!607937 () Bool)

(assert (=> d!111575 (=> res!607937 e!503711)))

(assert (=> d!111575 (= res!607937 (bvsge #b00000000000000000000000000000000 (size!25813 (_keys!10230 thiss!1181))))))

(assert (=> d!111575 (= (arrayNoDuplicates!0 (_keys!10230 thiss!1181) #b00000000000000000000000000000000 Nil!17925) e!503711)))

(declare-fun b!899994 () Bool)

(assert (=> b!899994 (= e!503710 call!40006)))

(assert (= (and d!111575 (not res!607937)) b!899993))

(assert (= (and b!899993 res!607936) b!899991))

(assert (= (and b!899993 res!607938) b!899992))

(assert (= (and b!899992 c!95213) b!899994))

(assert (= (and b!899992 (not c!95213)) b!899990))

(assert (= (or b!899994 b!899990) bm!40003))

(assert (=> b!899991 m!836363))

(assert (=> b!899991 m!836363))

(declare-fun m!836553 () Bool)

(assert (=> b!899991 m!836553))

(assert (=> b!899992 m!836363))

(assert (=> b!899992 m!836363))

(assert (=> b!899992 m!836367))

(assert (=> bm!40003 m!836363))

(declare-fun m!836555 () Bool)

(assert (=> bm!40003 m!836555))

(assert (=> b!899993 m!836363))

(assert (=> b!899993 m!836363))

(assert (=> b!899993 m!836367))

(assert (=> b!899868 d!111575))

(declare-fun b!900013 () Bool)

(declare-fun lt!406625 () SeekEntryResult!8923)

(assert (=> b!900013 (and (bvsge (index!38064 lt!406625) #b00000000000000000000000000000000) (bvslt (index!38064 lt!406625) (size!25813 (_keys!10230 thiss!1181))))))

(declare-fun res!607947 () Bool)

(assert (=> b!900013 (= res!607947 (= (select (arr!25354 (_keys!10230 thiss!1181)) (index!38064 lt!406625)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!503725 () Bool)

(assert (=> b!900013 (=> res!607947 e!503725)))

(declare-fun d!111577 () Bool)

(declare-fun e!503723 () Bool)

(assert (=> d!111577 e!503723))

(declare-fun c!95220 () Bool)

(assert (=> d!111577 (= c!95220 (and ((_ is Intermediate!8923) lt!406625) (undefined!9735 lt!406625)))))

(declare-fun e!503726 () SeekEntryResult!8923)

(assert (=> d!111577 (= lt!406625 e!503726)))

(declare-fun c!95222 () Bool)

(assert (=> d!111577 (= c!95222 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!406624 () (_ BitVec 64))

(assert (=> d!111577 (= lt!406624 (select (arr!25354 (_keys!10230 thiss!1181)) (toIndex!0 key!785 (mask!26201 thiss!1181))))))

(assert (=> d!111577 (validMask!0 (mask!26201 thiss!1181))))

(assert (=> d!111577 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!785 (mask!26201 thiss!1181)) key!785 (_keys!10230 thiss!1181) (mask!26201 thiss!1181)) lt!406625)))

(declare-fun b!900014 () Bool)

(assert (=> b!900014 (and (bvsge (index!38064 lt!406625) #b00000000000000000000000000000000) (bvslt (index!38064 lt!406625) (size!25813 (_keys!10230 thiss!1181))))))

(assert (=> b!900014 (= e!503725 (= (select (arr!25354 (_keys!10230 thiss!1181)) (index!38064 lt!406625)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!900015 () Bool)

(assert (=> b!900015 (= e!503723 (bvsge (x!76659 lt!406625) #b01111111111111111111111111111110))))

(declare-fun b!900016 () Bool)

(declare-fun e!503727 () SeekEntryResult!8923)

(assert (=> b!900016 (= e!503727 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!785 (mask!26201 thiss!1181)) #b00000000000000000000000000000000 (mask!26201 thiss!1181)) key!785 (_keys!10230 thiss!1181) (mask!26201 thiss!1181)))))

(declare-fun b!900017 () Bool)

(assert (=> b!900017 (= e!503726 e!503727)))

(declare-fun c!95221 () Bool)

(assert (=> b!900017 (= c!95221 (or (= lt!406624 key!785) (= (bvadd lt!406624 lt!406624) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!900018 () Bool)

(assert (=> b!900018 (and (bvsge (index!38064 lt!406625) #b00000000000000000000000000000000) (bvslt (index!38064 lt!406625) (size!25813 (_keys!10230 thiss!1181))))))

(declare-fun res!607945 () Bool)

(assert (=> b!900018 (= res!607945 (= (select (arr!25354 (_keys!10230 thiss!1181)) (index!38064 lt!406625)) key!785))))

(assert (=> b!900018 (=> res!607945 e!503725)))

(declare-fun e!503724 () Bool)

(assert (=> b!900018 (= e!503724 e!503725)))

(declare-fun b!900019 () Bool)

(assert (=> b!900019 (= e!503726 (Intermediate!8923 true (toIndex!0 key!785 (mask!26201 thiss!1181)) #b00000000000000000000000000000000))))

(declare-fun b!900020 () Bool)

(assert (=> b!900020 (= e!503723 e!503724)))

(declare-fun res!607946 () Bool)

(assert (=> b!900020 (= res!607946 (and ((_ is Intermediate!8923) lt!406625) (not (undefined!9735 lt!406625)) (bvslt (x!76659 lt!406625) #b01111111111111111111111111111110) (bvsge (x!76659 lt!406625) #b00000000000000000000000000000000) (bvsge (x!76659 lt!406625) #b00000000000000000000000000000000)))))

(assert (=> b!900020 (=> (not res!607946) (not e!503724))))

(declare-fun b!900021 () Bool)

(assert (=> b!900021 (= e!503727 (Intermediate!8923 false (toIndex!0 key!785 (mask!26201 thiss!1181)) #b00000000000000000000000000000000))))

(assert (= (and d!111577 c!95222) b!900019))

(assert (= (and d!111577 (not c!95222)) b!900017))

(assert (= (and b!900017 c!95221) b!900021))

(assert (= (and b!900017 (not c!95221)) b!900016))

(assert (= (and d!111577 c!95220) b!900015))

(assert (= (and d!111577 (not c!95220)) b!900020))

(assert (= (and b!900020 res!607946) b!900018))

(assert (= (and b!900018 (not res!607945)) b!900013))

(assert (= (and b!900013 (not res!607947)) b!900014))

(assert (=> d!111577 m!836441))

(declare-fun m!836557 () Bool)

(assert (=> d!111577 m!836557))

(assert (=> d!111577 m!836317))

(declare-fun m!836559 () Bool)

(assert (=> b!900013 m!836559))

(assert (=> b!900018 m!836559))

(assert (=> b!900016 m!836441))

(declare-fun m!836561 () Bool)

(assert (=> b!900016 m!836561))

(assert (=> b!900016 m!836561))

(declare-fun m!836563 () Bool)

(assert (=> b!900016 m!836563))

(assert (=> b!900014 m!836559))

(assert (=> d!111531 d!111577))

(declare-fun d!111579 () Bool)

(declare-fun lt!406631 () (_ BitVec 32))

(declare-fun lt!406630 () (_ BitVec 32))

(assert (=> d!111579 (= lt!406631 (bvmul (bvxor lt!406630 (bvlshr lt!406630 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!111579 (= lt!406630 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!111579 (and (bvsge (mask!26201 thiss!1181) #b00000000000000000000000000000000) (let ((res!607948 (let ((h!19070 ((_ extract 31 0) (bvand (bvxor key!785 (bvlshr key!785 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!76677 (bvmul (bvxor h!19070 (bvlshr h!19070 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!76677 (bvlshr x!76677 #b00000000000000000000000000001101)) (mask!26201 thiss!1181)))))) (and (bvslt res!607948 (bvadd (mask!26201 thiss!1181) #b00000000000000000000000000000001)) (bvsge res!607948 #b00000000000000000000000000000000))))))

(assert (=> d!111579 (= (toIndex!0 key!785 (mask!26201 thiss!1181)) (bvand (bvxor lt!406631 (bvlshr lt!406631 #b00000000000000000000000000001101)) (mask!26201 thiss!1181)))))

(assert (=> d!111531 d!111579))

(assert (=> d!111531 d!111519))

(assert (=> d!111527 d!111521))

(declare-fun d!111581 () Bool)

(assert (=> d!111581 (arrayContainsKey!0 (_keys!10230 thiss!1181) key!785 #b00000000000000000000000000000000)))

(assert (=> d!111581 true))

(declare-fun _$60!427 () Unit!30545)

(assert (=> d!111581 (= (choose!13 (_keys!10230 thiss!1181) key!785 (index!38063 lt!406443)) _$60!427)))

(declare-fun bs!25267 () Bool)

(assert (= bs!25267 d!111581))

(assert (=> bs!25267 m!836307))

(assert (=> d!111527 d!111581))

(declare-fun d!111583 () Bool)

(assert (=> d!111583 (= (apply!414 (+!2550 lt!406511 (tuple2!12069 lt!406517 (zeroValue!5266 thiss!1181))) lt!406503) (apply!414 lt!406511 lt!406503))))

(declare-fun lt!406634 () Unit!30545)

(declare-fun choose!1518 (ListLongMap!10779 (_ BitVec 64) V!29457 (_ BitVec 64)) Unit!30545)

(assert (=> d!111583 (= lt!406634 (choose!1518 lt!406511 lt!406517 (zeroValue!5266 thiss!1181) lt!406503))))

(declare-fun e!503730 () Bool)

(assert (=> d!111583 e!503730))

(declare-fun res!607951 () Bool)

(assert (=> d!111583 (=> (not res!607951) (not e!503730))))

(assert (=> d!111583 (= res!607951 (contains!4410 lt!406511 lt!406503))))

(assert (=> d!111583 (= (addApplyDifferent!336 lt!406511 lt!406517 (zeroValue!5266 thiss!1181) lt!406503) lt!406634)))

(declare-fun b!900025 () Bool)

(assert (=> b!900025 (= e!503730 (not (= lt!406503 lt!406517)))))

(assert (= (and d!111583 res!607951) b!900025))

(assert (=> d!111583 m!836393))

(assert (=> d!111583 m!836395))

(assert (=> d!111583 m!836393))

(declare-fun m!836565 () Bool)

(assert (=> d!111583 m!836565))

(declare-fun m!836567 () Bool)

(assert (=> d!111583 m!836567))

(assert (=> d!111583 m!836405))

(assert (=> b!899822 d!111583))

(declare-fun d!111585 () Bool)

(assert (=> d!111585 (= (apply!414 (+!2550 lt!406514 (tuple2!12069 lt!406515 (minValue!5266 thiss!1181))) lt!406509) (apply!414 lt!406514 lt!406509))))

(declare-fun lt!406635 () Unit!30545)

(assert (=> d!111585 (= lt!406635 (choose!1518 lt!406514 lt!406515 (minValue!5266 thiss!1181) lt!406509))))

(declare-fun e!503731 () Bool)

(assert (=> d!111585 e!503731))

(declare-fun res!607952 () Bool)

(assert (=> d!111585 (=> (not res!607952) (not e!503731))))

(assert (=> d!111585 (= res!607952 (contains!4410 lt!406514 lt!406509))))

(assert (=> d!111585 (= (addApplyDifferent!336 lt!406514 lt!406515 (minValue!5266 thiss!1181) lt!406509) lt!406635)))

(declare-fun b!900026 () Bool)

(assert (=> b!900026 (= e!503731 (not (= lt!406509 lt!406515)))))

(assert (= (and d!111585 res!607952) b!900026))

(assert (=> d!111585 m!836377))

(assert (=> d!111585 m!836383))

(assert (=> d!111585 m!836377))

(declare-fun m!836569 () Bool)

(assert (=> d!111585 m!836569))

(declare-fun m!836571 () Bool)

(assert (=> d!111585 m!836571))

(assert (=> d!111585 m!836399))

(assert (=> b!899822 d!111585))

(declare-fun d!111587 () Bool)

(declare-fun e!503732 () Bool)

(assert (=> d!111587 e!503732))

(declare-fun res!607953 () Bool)

(assert (=> d!111587 (=> res!607953 e!503732)))

(declare-fun lt!406639 () Bool)

(assert (=> d!111587 (= res!607953 (not lt!406639))))

(declare-fun lt!406638 () Bool)

(assert (=> d!111587 (= lt!406639 lt!406638)))

(declare-fun lt!406636 () Unit!30545)

(declare-fun e!503733 () Unit!30545)

(assert (=> d!111587 (= lt!406636 e!503733)))

(declare-fun c!95223 () Bool)

(assert (=> d!111587 (= c!95223 lt!406638)))

(assert (=> d!111587 (= lt!406638 (containsKey!430 (toList!5405 (+!2550 lt!406522 (tuple2!12069 lt!406507 (zeroValue!5266 thiss!1181)))) lt!406510))))

(assert (=> d!111587 (= (contains!4410 (+!2550 lt!406522 (tuple2!12069 lt!406507 (zeroValue!5266 thiss!1181))) lt!406510) lt!406639)))

(declare-fun b!900027 () Bool)

(declare-fun lt!406637 () Unit!30545)

(assert (=> b!900027 (= e!503733 lt!406637)))

(assert (=> b!900027 (= lt!406637 (lemmaContainsKeyImpliesGetValueByKeyDefined!325 (toList!5405 (+!2550 lt!406522 (tuple2!12069 lt!406507 (zeroValue!5266 thiss!1181)))) lt!406510))))

(assert (=> b!900027 (isDefined!335 (getValueByKey!460 (toList!5405 (+!2550 lt!406522 (tuple2!12069 lt!406507 (zeroValue!5266 thiss!1181)))) lt!406510))))

(declare-fun b!900028 () Bool)

(declare-fun Unit!30550 () Unit!30545)

(assert (=> b!900028 (= e!503733 Unit!30550)))

(declare-fun b!900029 () Bool)

(assert (=> b!900029 (= e!503732 (isDefined!335 (getValueByKey!460 (toList!5405 (+!2550 lt!406522 (tuple2!12069 lt!406507 (zeroValue!5266 thiss!1181)))) lt!406510)))))

(assert (= (and d!111587 c!95223) b!900027))

(assert (= (and d!111587 (not c!95223)) b!900028))

(assert (= (and d!111587 (not res!607953)) b!900029))

(declare-fun m!836573 () Bool)

(assert (=> d!111587 m!836573))

(declare-fun m!836575 () Bool)

(assert (=> b!900027 m!836575))

(declare-fun m!836577 () Bool)

(assert (=> b!900027 m!836577))

(assert (=> b!900027 m!836577))

(declare-fun m!836579 () Bool)

(assert (=> b!900027 m!836579))

(assert (=> b!900029 m!836577))

(assert (=> b!900029 m!836577))

(assert (=> b!900029 m!836579))

(assert (=> b!899822 d!111587))

(declare-fun d!111589 () Bool)

(assert (=> d!111589 (= (apply!414 lt!406511 lt!406503) (get!13349 (getValueByKey!460 (toList!5405 lt!406511) lt!406503)))))

(declare-fun bs!25268 () Bool)

(assert (= bs!25268 d!111589))

(declare-fun m!836581 () Bool)

(assert (=> bs!25268 m!836581))

(assert (=> bs!25268 m!836581))

(declare-fun m!836583 () Bool)

(assert (=> bs!25268 m!836583))

(assert (=> b!899822 d!111589))

(declare-fun d!111591 () Bool)

(declare-fun e!503734 () Bool)

(assert (=> d!111591 e!503734))

(declare-fun res!607955 () Bool)

(assert (=> d!111591 (=> (not res!607955) (not e!503734))))

(declare-fun lt!406640 () ListLongMap!10779)

(assert (=> d!111591 (= res!607955 (contains!4410 lt!406640 (_1!6044 (tuple2!12069 lt!406517 (zeroValue!5266 thiss!1181)))))))

(declare-fun lt!406643 () List!17927)

(assert (=> d!111591 (= lt!406640 (ListLongMap!10780 lt!406643))))

(declare-fun lt!406642 () Unit!30545)

(declare-fun lt!406641 () Unit!30545)

(assert (=> d!111591 (= lt!406642 lt!406641)))

(assert (=> d!111591 (= (getValueByKey!460 lt!406643 (_1!6044 (tuple2!12069 lt!406517 (zeroValue!5266 thiss!1181)))) (Some!465 (_2!6044 (tuple2!12069 lt!406517 (zeroValue!5266 thiss!1181)))))))

(assert (=> d!111591 (= lt!406641 (lemmaContainsTupThenGetReturnValue!252 lt!406643 (_1!6044 (tuple2!12069 lt!406517 (zeroValue!5266 thiss!1181))) (_2!6044 (tuple2!12069 lt!406517 (zeroValue!5266 thiss!1181)))))))

(assert (=> d!111591 (= lt!406643 (insertStrictlySorted!308 (toList!5405 lt!406511) (_1!6044 (tuple2!12069 lt!406517 (zeroValue!5266 thiss!1181))) (_2!6044 (tuple2!12069 lt!406517 (zeroValue!5266 thiss!1181)))))))

(assert (=> d!111591 (= (+!2550 lt!406511 (tuple2!12069 lt!406517 (zeroValue!5266 thiss!1181))) lt!406640)))

(declare-fun b!900030 () Bool)

(declare-fun res!607954 () Bool)

(assert (=> b!900030 (=> (not res!607954) (not e!503734))))

(assert (=> b!900030 (= res!607954 (= (getValueByKey!460 (toList!5405 lt!406640) (_1!6044 (tuple2!12069 lt!406517 (zeroValue!5266 thiss!1181)))) (Some!465 (_2!6044 (tuple2!12069 lt!406517 (zeroValue!5266 thiss!1181))))))))

(declare-fun b!900031 () Bool)

(assert (=> b!900031 (= e!503734 (contains!4411 (toList!5405 lt!406640) (tuple2!12069 lt!406517 (zeroValue!5266 thiss!1181))))))

(assert (= (and d!111591 res!607955) b!900030))

(assert (= (and b!900030 res!607954) b!900031))

(declare-fun m!836585 () Bool)

(assert (=> d!111591 m!836585))

(declare-fun m!836587 () Bool)

(assert (=> d!111591 m!836587))

(declare-fun m!836589 () Bool)

(assert (=> d!111591 m!836589))

(declare-fun m!836591 () Bool)

(assert (=> d!111591 m!836591))

(declare-fun m!836593 () Bool)

(assert (=> b!900030 m!836593))

(declare-fun m!836595 () Bool)

(assert (=> b!900031 m!836595))

(assert (=> b!899822 d!111591))

(declare-fun d!111593 () Bool)

(assert (=> d!111593 (= (apply!414 (+!2550 lt!406524 (tuple2!12069 lt!406505 (minValue!5266 thiss!1181))) lt!406512) (apply!414 lt!406524 lt!406512))))

(declare-fun lt!406644 () Unit!30545)

(assert (=> d!111593 (= lt!406644 (choose!1518 lt!406524 lt!406505 (minValue!5266 thiss!1181) lt!406512))))

(declare-fun e!503735 () Bool)

(assert (=> d!111593 e!503735))

(declare-fun res!607956 () Bool)

(assert (=> d!111593 (=> (not res!607956) (not e!503735))))

(assert (=> d!111593 (= res!607956 (contains!4410 lt!406524 lt!406512))))

(assert (=> d!111593 (= (addApplyDifferent!336 lt!406524 lt!406505 (minValue!5266 thiss!1181) lt!406512) lt!406644)))

(declare-fun b!900032 () Bool)

(assert (=> b!900032 (= e!503735 (not (= lt!406512 lt!406505)))))

(assert (= (and d!111593 res!607956) b!900032))

(assert (=> d!111593 m!836379))

(assert (=> d!111593 m!836381))

(assert (=> d!111593 m!836379))

(declare-fun m!836597 () Bool)

(assert (=> d!111593 m!836597))

(declare-fun m!836599 () Bool)

(assert (=> d!111593 m!836599))

(assert (=> d!111593 m!836401))

(assert (=> b!899822 d!111593))

(declare-fun d!111595 () Bool)

(assert (=> d!111595 (= (apply!414 (+!2550 lt!406524 (tuple2!12069 lt!406505 (minValue!5266 thiss!1181))) lt!406512) (get!13349 (getValueByKey!460 (toList!5405 (+!2550 lt!406524 (tuple2!12069 lt!406505 (minValue!5266 thiss!1181)))) lt!406512)))))

(declare-fun bs!25269 () Bool)

(assert (= bs!25269 d!111595))

(declare-fun m!836601 () Bool)

(assert (=> bs!25269 m!836601))

(assert (=> bs!25269 m!836601))

(declare-fun m!836603 () Bool)

(assert (=> bs!25269 m!836603))

(assert (=> b!899822 d!111595))

(declare-fun d!111597 () Bool)

(assert (=> d!111597 (= (apply!414 lt!406514 lt!406509) (get!13349 (getValueByKey!460 (toList!5405 lt!406514) lt!406509)))))

(declare-fun bs!25270 () Bool)

(assert (= bs!25270 d!111597))

(declare-fun m!836605 () Bool)

(assert (=> bs!25270 m!836605))

(assert (=> bs!25270 m!836605))

(declare-fun m!836607 () Bool)

(assert (=> bs!25270 m!836607))

(assert (=> b!899822 d!111597))

(declare-fun d!111599 () Bool)

(declare-fun e!503736 () Bool)

(assert (=> d!111599 e!503736))

(declare-fun res!607958 () Bool)

(assert (=> d!111599 (=> (not res!607958) (not e!503736))))

(declare-fun lt!406645 () ListLongMap!10779)

(assert (=> d!111599 (= res!607958 (contains!4410 lt!406645 (_1!6044 (tuple2!12069 lt!406505 (minValue!5266 thiss!1181)))))))

(declare-fun lt!406648 () List!17927)

(assert (=> d!111599 (= lt!406645 (ListLongMap!10780 lt!406648))))

(declare-fun lt!406647 () Unit!30545)

(declare-fun lt!406646 () Unit!30545)

(assert (=> d!111599 (= lt!406647 lt!406646)))

(assert (=> d!111599 (= (getValueByKey!460 lt!406648 (_1!6044 (tuple2!12069 lt!406505 (minValue!5266 thiss!1181)))) (Some!465 (_2!6044 (tuple2!12069 lt!406505 (minValue!5266 thiss!1181)))))))

(assert (=> d!111599 (= lt!406646 (lemmaContainsTupThenGetReturnValue!252 lt!406648 (_1!6044 (tuple2!12069 lt!406505 (minValue!5266 thiss!1181))) (_2!6044 (tuple2!12069 lt!406505 (minValue!5266 thiss!1181)))))))

(assert (=> d!111599 (= lt!406648 (insertStrictlySorted!308 (toList!5405 lt!406524) (_1!6044 (tuple2!12069 lt!406505 (minValue!5266 thiss!1181))) (_2!6044 (tuple2!12069 lt!406505 (minValue!5266 thiss!1181)))))))

(assert (=> d!111599 (= (+!2550 lt!406524 (tuple2!12069 lt!406505 (minValue!5266 thiss!1181))) lt!406645)))

(declare-fun b!900033 () Bool)

(declare-fun res!607957 () Bool)

(assert (=> b!900033 (=> (not res!607957) (not e!503736))))

(assert (=> b!900033 (= res!607957 (= (getValueByKey!460 (toList!5405 lt!406645) (_1!6044 (tuple2!12069 lt!406505 (minValue!5266 thiss!1181)))) (Some!465 (_2!6044 (tuple2!12069 lt!406505 (minValue!5266 thiss!1181))))))))

(declare-fun b!900034 () Bool)

(assert (=> b!900034 (= e!503736 (contains!4411 (toList!5405 lt!406645) (tuple2!12069 lt!406505 (minValue!5266 thiss!1181))))))

(assert (= (and d!111599 res!607958) b!900033))

(assert (= (and b!900033 res!607957) b!900034))

(declare-fun m!836609 () Bool)

(assert (=> d!111599 m!836609))

(declare-fun m!836611 () Bool)

(assert (=> d!111599 m!836611))

(declare-fun m!836613 () Bool)

(assert (=> d!111599 m!836613))

(declare-fun m!836615 () Bool)

(assert (=> d!111599 m!836615))

(declare-fun m!836617 () Bool)

(assert (=> b!900033 m!836617))

(declare-fun m!836619 () Bool)

(assert (=> b!900034 m!836619))

(assert (=> b!899822 d!111599))

(declare-fun d!111601 () Bool)

(declare-fun e!503737 () Bool)

(assert (=> d!111601 e!503737))

(declare-fun res!607960 () Bool)

(assert (=> d!111601 (=> (not res!607960) (not e!503737))))

(declare-fun lt!406649 () ListLongMap!10779)

(assert (=> d!111601 (= res!607960 (contains!4410 lt!406649 (_1!6044 (tuple2!12069 lt!406515 (minValue!5266 thiss!1181)))))))

(declare-fun lt!406652 () List!17927)

(assert (=> d!111601 (= lt!406649 (ListLongMap!10780 lt!406652))))

(declare-fun lt!406651 () Unit!30545)

(declare-fun lt!406650 () Unit!30545)

(assert (=> d!111601 (= lt!406651 lt!406650)))

(assert (=> d!111601 (= (getValueByKey!460 lt!406652 (_1!6044 (tuple2!12069 lt!406515 (minValue!5266 thiss!1181)))) (Some!465 (_2!6044 (tuple2!12069 lt!406515 (minValue!5266 thiss!1181)))))))

(assert (=> d!111601 (= lt!406650 (lemmaContainsTupThenGetReturnValue!252 lt!406652 (_1!6044 (tuple2!12069 lt!406515 (minValue!5266 thiss!1181))) (_2!6044 (tuple2!12069 lt!406515 (minValue!5266 thiss!1181)))))))

(assert (=> d!111601 (= lt!406652 (insertStrictlySorted!308 (toList!5405 lt!406514) (_1!6044 (tuple2!12069 lt!406515 (minValue!5266 thiss!1181))) (_2!6044 (tuple2!12069 lt!406515 (minValue!5266 thiss!1181)))))))

(assert (=> d!111601 (= (+!2550 lt!406514 (tuple2!12069 lt!406515 (minValue!5266 thiss!1181))) lt!406649)))

(declare-fun b!900035 () Bool)

(declare-fun res!607959 () Bool)

(assert (=> b!900035 (=> (not res!607959) (not e!503737))))

(assert (=> b!900035 (= res!607959 (= (getValueByKey!460 (toList!5405 lt!406649) (_1!6044 (tuple2!12069 lt!406515 (minValue!5266 thiss!1181)))) (Some!465 (_2!6044 (tuple2!12069 lt!406515 (minValue!5266 thiss!1181))))))))

(declare-fun b!900036 () Bool)

(assert (=> b!900036 (= e!503737 (contains!4411 (toList!5405 lt!406649) (tuple2!12069 lt!406515 (minValue!5266 thiss!1181))))))

(assert (= (and d!111601 res!607960) b!900035))

(assert (= (and b!900035 res!607959) b!900036))

(declare-fun m!836621 () Bool)

(assert (=> d!111601 m!836621))

(declare-fun m!836623 () Bool)

(assert (=> d!111601 m!836623))

(declare-fun m!836625 () Bool)

(assert (=> d!111601 m!836625))

(declare-fun m!836627 () Bool)

(assert (=> d!111601 m!836627))

(declare-fun m!836629 () Bool)

(assert (=> b!900035 m!836629))

(declare-fun m!836631 () Bool)

(assert (=> b!900036 m!836631))

(assert (=> b!899822 d!111601))

(declare-fun d!111603 () Bool)

(assert (=> d!111603 (= (apply!414 lt!406524 lt!406512) (get!13349 (getValueByKey!460 (toList!5405 lt!406524) lt!406512)))))

(declare-fun bs!25271 () Bool)

(assert (= bs!25271 d!111603))

(declare-fun m!836633 () Bool)

(assert (=> bs!25271 m!836633))

(assert (=> bs!25271 m!836633))

(declare-fun m!836635 () Bool)

(assert (=> bs!25271 m!836635))

(assert (=> b!899822 d!111603))

(declare-fun d!111605 () Bool)

(assert (=> d!111605 (= (apply!414 (+!2550 lt!406511 (tuple2!12069 lt!406517 (zeroValue!5266 thiss!1181))) lt!406503) (get!13349 (getValueByKey!460 (toList!5405 (+!2550 lt!406511 (tuple2!12069 lt!406517 (zeroValue!5266 thiss!1181)))) lt!406503)))))

(declare-fun bs!25272 () Bool)

(assert (= bs!25272 d!111605))

(declare-fun m!836637 () Bool)

(assert (=> bs!25272 m!836637))

(assert (=> bs!25272 m!836637))

(declare-fun m!836639 () Bool)

(assert (=> bs!25272 m!836639))

(assert (=> b!899822 d!111605))

(declare-fun d!111607 () Bool)

(assert (=> d!111607 (= (apply!414 (+!2550 lt!406514 (tuple2!12069 lt!406515 (minValue!5266 thiss!1181))) lt!406509) (get!13349 (getValueByKey!460 (toList!5405 (+!2550 lt!406514 (tuple2!12069 lt!406515 (minValue!5266 thiss!1181)))) lt!406509)))))

(declare-fun bs!25273 () Bool)

(assert (= bs!25273 d!111607))

(declare-fun m!836641 () Bool)

(assert (=> bs!25273 m!836641))

(assert (=> bs!25273 m!836641))

(declare-fun m!836643 () Bool)

(assert (=> bs!25273 m!836643))

(assert (=> b!899822 d!111607))

(declare-fun d!111609 () Bool)

(assert (=> d!111609 (contains!4410 (+!2550 lt!406522 (tuple2!12069 lt!406507 (zeroValue!5266 thiss!1181))) lt!406510)))

(declare-fun lt!406655 () Unit!30545)

(declare-fun choose!1519 (ListLongMap!10779 (_ BitVec 64) V!29457 (_ BitVec 64)) Unit!30545)

(assert (=> d!111609 (= lt!406655 (choose!1519 lt!406522 lt!406507 (zeroValue!5266 thiss!1181) lt!406510))))

(assert (=> d!111609 (contains!4410 lt!406522 lt!406510)))

(assert (=> d!111609 (= (addStillContains!336 lt!406522 lt!406507 (zeroValue!5266 thiss!1181) lt!406510) lt!406655)))

(declare-fun bs!25274 () Bool)

(assert (= bs!25274 d!111609))

(assert (=> bs!25274 m!836391))

(assert (=> bs!25274 m!836391))

(assert (=> bs!25274 m!836397))

(declare-fun m!836645 () Bool)

(assert (=> bs!25274 m!836645))

(declare-fun m!836647 () Bool)

(assert (=> bs!25274 m!836647))

(assert (=> b!899822 d!111609))

(assert (=> b!899822 d!111555))

(declare-fun d!111611 () Bool)

(declare-fun e!503738 () Bool)

(assert (=> d!111611 e!503738))

(declare-fun res!607962 () Bool)

(assert (=> d!111611 (=> (not res!607962) (not e!503738))))

(declare-fun lt!406656 () ListLongMap!10779)

(assert (=> d!111611 (= res!607962 (contains!4410 lt!406656 (_1!6044 (tuple2!12069 lt!406507 (zeroValue!5266 thiss!1181)))))))

(declare-fun lt!406659 () List!17927)

(assert (=> d!111611 (= lt!406656 (ListLongMap!10780 lt!406659))))

(declare-fun lt!406658 () Unit!30545)

(declare-fun lt!406657 () Unit!30545)

(assert (=> d!111611 (= lt!406658 lt!406657)))

(assert (=> d!111611 (= (getValueByKey!460 lt!406659 (_1!6044 (tuple2!12069 lt!406507 (zeroValue!5266 thiss!1181)))) (Some!465 (_2!6044 (tuple2!12069 lt!406507 (zeroValue!5266 thiss!1181)))))))

(assert (=> d!111611 (= lt!406657 (lemmaContainsTupThenGetReturnValue!252 lt!406659 (_1!6044 (tuple2!12069 lt!406507 (zeroValue!5266 thiss!1181))) (_2!6044 (tuple2!12069 lt!406507 (zeroValue!5266 thiss!1181)))))))

(assert (=> d!111611 (= lt!406659 (insertStrictlySorted!308 (toList!5405 lt!406522) (_1!6044 (tuple2!12069 lt!406507 (zeroValue!5266 thiss!1181))) (_2!6044 (tuple2!12069 lt!406507 (zeroValue!5266 thiss!1181)))))))

(assert (=> d!111611 (= (+!2550 lt!406522 (tuple2!12069 lt!406507 (zeroValue!5266 thiss!1181))) lt!406656)))

(declare-fun b!900038 () Bool)

(declare-fun res!607961 () Bool)

(assert (=> b!900038 (=> (not res!607961) (not e!503738))))

(assert (=> b!900038 (= res!607961 (= (getValueByKey!460 (toList!5405 lt!406656) (_1!6044 (tuple2!12069 lt!406507 (zeroValue!5266 thiss!1181)))) (Some!465 (_2!6044 (tuple2!12069 lt!406507 (zeroValue!5266 thiss!1181))))))))

(declare-fun b!900039 () Bool)

(assert (=> b!900039 (= e!503738 (contains!4411 (toList!5405 lt!406656) (tuple2!12069 lt!406507 (zeroValue!5266 thiss!1181))))))

(assert (= (and d!111611 res!607962) b!900038))

(assert (= (and b!900038 res!607961) b!900039))

(declare-fun m!836649 () Bool)

(assert (=> d!111611 m!836649))

(declare-fun m!836651 () Bool)

(assert (=> d!111611 m!836651))

(declare-fun m!836653 () Bool)

(assert (=> d!111611 m!836653))

(declare-fun m!836655 () Bool)

(assert (=> d!111611 m!836655))

(declare-fun m!836657 () Bool)

(assert (=> b!900038 m!836657))

(declare-fun m!836659 () Bool)

(assert (=> b!900039 m!836659))

(assert (=> b!899822 d!111611))

(assert (=> b!899823 d!111563))

(declare-fun d!111613 () Bool)

(declare-fun e!503739 () Bool)

(assert (=> d!111613 e!503739))

(declare-fun res!607963 () Bool)

(assert (=> d!111613 (=> res!607963 e!503739)))

(declare-fun lt!406663 () Bool)

(assert (=> d!111613 (= res!607963 (not lt!406663))))

(declare-fun lt!406662 () Bool)

(assert (=> d!111613 (= lt!406663 lt!406662)))

(declare-fun lt!406660 () Unit!30545)

(declare-fun e!503740 () Unit!30545)

(assert (=> d!111613 (= lt!406660 e!503740)))

(declare-fun c!95224 () Bool)

(assert (=> d!111613 (= c!95224 lt!406662)))

(assert (=> d!111613 (= lt!406662 (containsKey!430 (toList!5405 lt!406523) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!111613 (= (contains!4410 lt!406523 #b1000000000000000000000000000000000000000000000000000000000000000) lt!406663)))

(declare-fun b!900040 () Bool)

(declare-fun lt!406661 () Unit!30545)

(assert (=> b!900040 (= e!503740 lt!406661)))

(assert (=> b!900040 (= lt!406661 (lemmaContainsKeyImpliesGetValueByKeyDefined!325 (toList!5405 lt!406523) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!900040 (isDefined!335 (getValueByKey!460 (toList!5405 lt!406523) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!900041 () Bool)

(declare-fun Unit!30551 () Unit!30545)

(assert (=> b!900041 (= e!503740 Unit!30551)))

(declare-fun b!900042 () Bool)

(assert (=> b!900042 (= e!503739 (isDefined!335 (getValueByKey!460 (toList!5405 lt!406523) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!111613 c!95224) b!900040))

(assert (= (and d!111613 (not c!95224)) b!900041))

(assert (= (and d!111613 (not res!607963)) b!900042))

(declare-fun m!836661 () Bool)

(assert (=> d!111613 m!836661))

(declare-fun m!836663 () Bool)

(assert (=> b!900040 m!836663))

(assert (=> b!900040 m!836471))

(assert (=> b!900040 m!836471))

(declare-fun m!836665 () Bool)

(assert (=> b!900040 m!836665))

(assert (=> b!900042 m!836471))

(assert (=> b!900042 m!836471))

(assert (=> b!900042 m!836665))

(assert (=> bm!39992 d!111613))

(declare-fun b!900054 () Bool)

(declare-fun e!503743 () Bool)

(assert (=> b!900054 (= e!503743 (and (bvsge (extraKeys!5162 thiss!1181) #b00000000000000000000000000000000) (bvsle (extraKeys!5162 thiss!1181) #b00000000000000000000000000000011) (bvsge (_vacant!2266 thiss!1181) #b00000000000000000000000000000000)))))

(declare-fun d!111615 () Bool)

(declare-fun res!607975 () Bool)

(assert (=> d!111615 (=> (not res!607975) (not e!503743))))

(assert (=> d!111615 (= res!607975 (validMask!0 (mask!26201 thiss!1181)))))

(assert (=> d!111615 (= (simpleValid!327 thiss!1181) e!503743)))

(declare-fun b!900052 () Bool)

(declare-fun res!607974 () Bool)

(assert (=> b!900052 (=> (not res!607974) (not e!503743))))

(declare-fun size!25817 (LongMapFixedSize!4422) (_ BitVec 32))

(assert (=> b!900052 (= res!607974 (bvsge (size!25817 thiss!1181) (_size!2266 thiss!1181)))))

(declare-fun b!900053 () Bool)

(declare-fun res!607973 () Bool)

(assert (=> b!900053 (=> (not res!607973) (not e!503743))))

(assert (=> b!900053 (= res!607973 (= (size!25817 thiss!1181) (bvadd (_size!2266 thiss!1181) (bvsdiv (bvadd (extraKeys!5162 thiss!1181) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!900051 () Bool)

(declare-fun res!607972 () Bool)

(assert (=> b!900051 (=> (not res!607972) (not e!503743))))

(assert (=> b!900051 (= res!607972 (and (= (size!25814 (_values!5453 thiss!1181)) (bvadd (mask!26201 thiss!1181) #b00000000000000000000000000000001)) (= (size!25813 (_keys!10230 thiss!1181)) (size!25814 (_values!5453 thiss!1181))) (bvsge (_size!2266 thiss!1181) #b00000000000000000000000000000000) (bvsle (_size!2266 thiss!1181) (bvadd (mask!26201 thiss!1181) #b00000000000000000000000000000001))))))

(assert (= (and d!111615 res!607975) b!900051))

(assert (= (and b!900051 res!607972) b!900052))

(assert (= (and b!900052 res!607974) b!900053))

(assert (= (and b!900053 res!607973) b!900054))

(assert (=> d!111615 m!836317))

(declare-fun m!836667 () Bool)

(assert (=> b!900052 m!836667))

(assert (=> b!900053 m!836667))

(assert (=> d!111539 d!111615))

(declare-fun d!111617 () Bool)

(declare-fun lt!406666 () (_ BitVec 32))

(assert (=> d!111617 (and (bvsge lt!406666 #b00000000000000000000000000000000) (bvsle lt!406666 (bvsub (size!25813 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun e!503748 () (_ BitVec 32))

(assert (=> d!111617 (= lt!406666 e!503748)))

(declare-fun c!95230 () Bool)

(assert (=> d!111617 (= c!95230 (bvsge #b00000000000000000000000000000000 (size!25813 (_keys!10230 thiss!1181))))))

(assert (=> d!111617 (and (bvsle #b00000000000000000000000000000000 (size!25813 (_keys!10230 thiss!1181))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!25813 (_keys!10230 thiss!1181)) (size!25813 (_keys!10230 thiss!1181))))))

(assert (=> d!111617 (= (arrayCountValidKeys!0 (_keys!10230 thiss!1181) #b00000000000000000000000000000000 (size!25813 (_keys!10230 thiss!1181))) lt!406666)))

(declare-fun b!900063 () Bool)

(assert (=> b!900063 (= e!503748 #b00000000000000000000000000000000)))

(declare-fun b!900064 () Bool)

(declare-fun e!503749 () (_ BitVec 32))

(declare-fun call!40009 () (_ BitVec 32))

(assert (=> b!900064 (= e!503749 (bvadd #b00000000000000000000000000000001 call!40009))))

(declare-fun bm!40006 () Bool)

(assert (=> bm!40006 (= call!40009 (arrayCountValidKeys!0 (_keys!10230 thiss!1181) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25813 (_keys!10230 thiss!1181))))))

(declare-fun b!900065 () Bool)

(assert (=> b!900065 (= e!503748 e!503749)))

(declare-fun c!95229 () Bool)

(assert (=> b!900065 (= c!95229 (validKeyInArray!0 (select (arr!25354 (_keys!10230 thiss!1181)) #b00000000000000000000000000000000)))))

(declare-fun b!900066 () Bool)

(assert (=> b!900066 (= e!503749 call!40009)))

(assert (= (and d!111617 c!95230) b!900063))

(assert (= (and d!111617 (not c!95230)) b!900065))

(assert (= (and b!900065 c!95229) b!900064))

(assert (= (and b!900065 (not c!95229)) b!900066))

(assert (= (or b!900064 b!900066) bm!40006))

(declare-fun m!836669 () Bool)

(assert (=> bm!40006 m!836669))

(assert (=> b!900065 m!836363))

(assert (=> b!900065 m!836363))

(assert (=> b!900065 m!836367))

(assert (=> b!899866 d!111617))

(assert (=> d!111523 d!111519))

(declare-fun d!111619 () Bool)

(assert (=> d!111619 (= (inRange!0 (index!38063 lt!406545) (mask!26201 thiss!1181)) (and (bvsge (index!38063 lt!406545) #b00000000000000000000000000000000) (bvslt (index!38063 lt!406545) (bvadd (mask!26201 thiss!1181) #b00000000000000000000000000000001))))))

(assert (=> b!899841 d!111619))

(declare-fun d!111621 () Bool)

(declare-fun e!503750 () Bool)

(assert (=> d!111621 e!503750))

(declare-fun res!607976 () Bool)

(assert (=> d!111621 (=> res!607976 e!503750)))

(declare-fun lt!406670 () Bool)

(assert (=> d!111621 (= res!607976 (not lt!406670))))

(declare-fun lt!406669 () Bool)

(assert (=> d!111621 (= lt!406670 lt!406669)))

(declare-fun lt!406667 () Unit!30545)

(declare-fun e!503751 () Unit!30545)

(assert (=> d!111621 (= lt!406667 e!503751)))

(declare-fun c!95231 () Bool)

(assert (=> d!111621 (= c!95231 lt!406669)))

(assert (=> d!111621 (= lt!406669 (containsKey!430 (toList!5405 lt!406523) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!111621 (= (contains!4410 lt!406523 #b0000000000000000000000000000000000000000000000000000000000000000) lt!406670)))

(declare-fun b!900067 () Bool)

(declare-fun lt!406668 () Unit!30545)

(assert (=> b!900067 (= e!503751 lt!406668)))

(assert (=> b!900067 (= lt!406668 (lemmaContainsKeyImpliesGetValueByKeyDefined!325 (toList!5405 lt!406523) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!900067 (isDefined!335 (getValueByKey!460 (toList!5405 lt!406523) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!900068 () Bool)

(declare-fun Unit!30552 () Unit!30545)

(assert (=> b!900068 (= e!503751 Unit!30552)))

(declare-fun b!900069 () Bool)

(assert (=> b!900069 (= e!503750 (isDefined!335 (getValueByKey!460 (toList!5405 lt!406523) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!111621 c!95231) b!900067))

(assert (= (and d!111621 (not c!95231)) b!900068))

(assert (= (and d!111621 (not res!607976)) b!900069))

(declare-fun m!836671 () Bool)

(assert (=> d!111621 m!836671))

(declare-fun m!836673 () Bool)

(assert (=> b!900067 m!836673))

(assert (=> b!900067 m!836541))

(assert (=> b!900067 m!836541))

(declare-fun m!836675 () Bool)

(assert (=> b!900067 m!836675))

(assert (=> b!900069 m!836541))

(assert (=> b!900069 m!836541))

(assert (=> b!900069 m!836675))

(assert (=> bm!39990 d!111621))

(declare-fun d!111623 () Bool)

(declare-fun res!607981 () Bool)

(declare-fun e!503756 () Bool)

(assert (=> d!111623 (=> res!607981 e!503756)))

(assert (=> d!111623 (= res!607981 (and ((_ is Cons!17923) (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181)))) (= (_1!6044 (h!19068 (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181))))) (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406443)))))))

(assert (=> d!111623 (= (containsKey!430 (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181))) (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406443))) e!503756)))

(declare-fun b!900074 () Bool)

(declare-fun e!503757 () Bool)

(assert (=> b!900074 (= e!503756 e!503757)))

(declare-fun res!607982 () Bool)

(assert (=> b!900074 (=> (not res!607982) (not e!503757))))

(assert (=> b!900074 (= res!607982 (and (or (not ((_ is Cons!17923) (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181))))) (bvsle (_1!6044 (h!19068 (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181))))) (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406443)))) ((_ is Cons!17923) (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181)))) (bvslt (_1!6044 (h!19068 (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181))))) (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406443)))))))

(declare-fun b!900075 () Bool)

(assert (=> b!900075 (= e!503757 (containsKey!430 (t!25284 (toList!5405 (getCurrentListMap!2648 (_keys!10230 thiss!1181) (_values!5453 thiss!1181) (mask!26201 thiss!1181) (extraKeys!5162 thiss!1181) (zeroValue!5266 thiss!1181) (minValue!5266 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5439 thiss!1181)))) (select (arr!25354 (_keys!10230 thiss!1181)) (index!38063 lt!406443))))))

(assert (= (and d!111623 (not res!607981)) b!900074))

(assert (= (and b!900074 res!607982) b!900075))

(assert (=> b!900075 m!836311))

(declare-fun m!836677 () Bool)

(assert (=> b!900075 m!836677))

(assert (=> d!111525 d!111623))

(declare-fun mapIsEmpty!29230 () Bool)

(declare-fun mapRes!29230 () Bool)

(assert (=> mapIsEmpty!29230 mapRes!29230))

(declare-fun mapNonEmpty!29230 () Bool)

(declare-fun tp!56218 () Bool)

(declare-fun e!503758 () Bool)

(assert (=> mapNonEmpty!29230 (= mapRes!29230 (and tp!56218 e!503758))))

(declare-fun mapKey!29230 () (_ BitVec 32))

(declare-fun mapRest!29230 () (Array (_ BitVec 32) ValueCell!8703))

(declare-fun mapValue!29230 () ValueCell!8703)

(assert (=> mapNonEmpty!29230 (= mapRest!29229 (store mapRest!29230 mapKey!29230 mapValue!29230))))

(declare-fun b!900076 () Bool)

(assert (=> b!900076 (= e!503758 tp_is_empty!18369)))

(declare-fun condMapEmpty!29230 () Bool)

(declare-fun mapDefault!29230 () ValueCell!8703)

(assert (=> mapNonEmpty!29229 (= condMapEmpty!29230 (= mapRest!29229 ((as const (Array (_ BitVec 32) ValueCell!8703)) mapDefault!29230)))))

(declare-fun e!503759 () Bool)

(assert (=> mapNonEmpty!29229 (= tp!56217 (and e!503759 mapRes!29230))))

(declare-fun b!900077 () Bool)

(assert (=> b!900077 (= e!503759 tp_is_empty!18369)))

(assert (= (and mapNonEmpty!29229 condMapEmpty!29230) mapIsEmpty!29230))

(assert (= (and mapNonEmpty!29229 (not condMapEmpty!29230)) mapNonEmpty!29230))

(assert (= (and mapNonEmpty!29230 ((_ is ValueCellFull!8703) mapValue!29230)) b!900076))

(assert (= (and mapNonEmpty!29229 ((_ is ValueCellFull!8703) mapDefault!29230)) b!900077))

(declare-fun m!836679 () Bool)

(assert (=> mapNonEmpty!29230 m!836679))

(declare-fun b_lambda!13041 () Bool)

(assert (= b_lambda!13037 (or (and b!899725 b_free!16041) b_lambda!13041)))

(declare-fun b_lambda!13043 () Bool)

(assert (= b_lambda!13039 (or (and b!899725 b_free!16041) b_lambda!13043)))

(check-sat (not b!899991) (not d!111557) (not d!111545) (not b!900033) (not b!900029) (not b!899957) b_and!26381 (not b!899942) (not d!111567) (not d!111593) (not b!899955) (not b!899939) (not bm!40006) (not bm!39997) (not b_lambda!13041) (not d!111613) (not b!899977) (not b!900075) (not b!900035) (not b!899949) (not d!111553) (not b_lambda!13043) (not b!899940) (not b!899978) (not d!111591) (not b!899941) (not b!900065) (not d!111547) (not bm!40003) (not b!900052) (not b!900036) (not b!899964) (not b!899965) (not d!111581) (not b!899879) (not b!899993) (not b!900039) (not b!899909) (not b!899944) (not b!899881) (not d!111555) (not d!111611) (not d!111615) (not b!899967) (not b!899884) (not d!111607) (not b!900030) (not b_next!16041) (not d!111541) (not b!899959) (not d!111585) (not b!900069) (not b!900038) (not d!111589) (not d!111569) (not bm!40000) (not d!111605) (not d!111609) (not d!111571) (not d!111599) (not b!900067) (not b!899956) (not d!111583) (not d!111565) tp_is_empty!18369 (not d!111587) (not b!900027) (not b!900042) (not b!900031) (not b!899948) (not b!899992) (not b!899945) (not d!111595) (not b_lambda!13035) (not b!899895) (not b!900053) (not d!111621) (not d!111603) (not b!899966) (not d!111577) (not b!900040) (not b!900016) (not d!111601) (not d!111561) (not d!111551) (not mapNonEmpty!29230) (not b!900034) (not d!111597))
(check-sat b_and!26381 (not b_next!16041))
