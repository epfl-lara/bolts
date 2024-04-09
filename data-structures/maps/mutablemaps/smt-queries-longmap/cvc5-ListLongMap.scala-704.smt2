; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16740 () Bool)

(assert start!16740)

(declare-fun b!167921 () Bool)

(declare-fun b_free!4033 () Bool)

(declare-fun b_next!4033 () Bool)

(assert (=> b!167921 (= b_free!4033 (not b_next!4033))))

(declare-fun tp!14700 () Bool)

(declare-fun b_and!10465 () Bool)

(assert (=> b!167921 (= tp!14700 b_and!10465)))

(declare-fun b!167911 () Bool)

(declare-fun e!110348 () Bool)

(declare-fun e!110349 () Bool)

(assert (=> b!167911 (= e!110348 e!110349)))

(declare-fun res!79912 () Bool)

(assert (=> b!167911 (=> (not res!79912) (not e!110349))))

(declare-datatypes ((SeekEntryResult!500 0))(
  ( (MissingZero!500 (index!4168 (_ BitVec 32))) (Found!500 (index!4169 (_ BitVec 32))) (Intermediate!500 (undefined!1312 Bool) (index!4170 (_ BitVec 32)) (x!18584 (_ BitVec 32))) (Undefined!500) (MissingVacant!500 (index!4171 (_ BitVec 32))) )
))
(declare-fun lt!83988 () SeekEntryResult!500)

(assert (=> b!167911 (= res!79912 (and (not (is-Undefined!500 lt!83988)) (not (is-MissingVacant!500 lt!83988)) (not (is-MissingZero!500 lt!83988)) (is-Found!500 lt!83988)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4761 0))(
  ( (V!4762 (val!1962 Int)) )
))
(declare-datatypes ((ValueCell!1574 0))(
  ( (ValueCellFull!1574 (v!3823 V!4761)) (EmptyCell!1574) )
))
(declare-datatypes ((array!6766 0))(
  ( (array!6767 (arr!3218 (Array (_ BitVec 32) (_ BitVec 64))) (size!3506 (_ BitVec 32))) )
))
(declare-datatypes ((array!6768 0))(
  ( (array!6769 (arr!3219 (Array (_ BitVec 32) ValueCell!1574)) (size!3507 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2056 0))(
  ( (LongMapFixedSize!2057 (defaultEntry!3470 Int) (mask!8227 (_ BitVec 32)) (extraKeys!3211 (_ BitVec 32)) (zeroValue!3313 V!4761) (minValue!3313 V!4761) (_size!1077 (_ BitVec 32)) (_keys!5295 array!6766) (_values!3453 array!6768) (_vacant!1077 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2056)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6766 (_ BitVec 32)) SeekEntryResult!500)

(assert (=> b!167911 (= lt!83988 (seekEntryOrOpen!0 key!828 (_keys!5295 thiss!1248) (mask!8227 thiss!1248)))))

(declare-fun b!167912 () Bool)

(declare-fun e!110347 () Bool)

(declare-fun tp_is_empty!3835 () Bool)

(assert (=> b!167912 (= e!110347 tp_is_empty!3835)))

(declare-fun b!167913 () Bool)

(declare-datatypes ((Unit!5151 0))(
  ( (Unit!5152) )
))
(declare-fun e!110345 () Unit!5151)

(declare-fun Unit!5153 () Unit!5151)

(assert (=> b!167913 (= e!110345 Unit!5153)))

(declare-fun lt!83987 () Unit!5151)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!113 (array!6766 array!6768 (_ BitVec 32) (_ BitVec 32) V!4761 V!4761 (_ BitVec 64) Int) Unit!5151)

(assert (=> b!167913 (= lt!83987 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!113 (_keys!5295 thiss!1248) (_values!3453 thiss!1248) (mask!8227 thiss!1248) (extraKeys!3211 thiss!1248) (zeroValue!3313 thiss!1248) (minValue!3313 thiss!1248) key!828 (defaultEntry!3470 thiss!1248)))))

(assert (=> b!167913 false))

(declare-fun mapIsEmpty!6471 () Bool)

(declare-fun mapRes!6471 () Bool)

(assert (=> mapIsEmpty!6471 mapRes!6471))

(declare-fun b!167915 () Bool)

(declare-fun e!110346 () Bool)

(assert (=> b!167915 (= e!110346 (= (select (arr!3218 (_keys!5295 thiss!1248)) (index!4169 lt!83988)) key!828))))

(declare-fun b!167916 () Bool)

(declare-fun lt!83993 () Unit!5151)

(assert (=> b!167916 (= e!110345 lt!83993)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!115 (array!6766 array!6768 (_ BitVec 32) (_ BitVec 32) V!4761 V!4761 (_ BitVec 64) Int) Unit!5151)

(assert (=> b!167916 (= lt!83993 (lemmaInListMapThenSeekEntryOrOpenFindsIt!115 (_keys!5295 thiss!1248) (_values!3453 thiss!1248) (mask!8227 thiss!1248) (extraKeys!3211 thiss!1248) (zeroValue!3313 thiss!1248) (minValue!3313 thiss!1248) key!828 (defaultEntry!3470 thiss!1248)))))

(declare-fun res!79915 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!167916 (= res!79915 (inRange!0 (index!4169 lt!83988) (mask!8227 thiss!1248)))))

(assert (=> b!167916 (=> (not res!79915) (not e!110346))))

(assert (=> b!167916 e!110346))

(declare-fun b!167917 () Bool)

(declare-fun e!110342 () Bool)

(assert (=> b!167917 (= e!110342 true)))

(declare-fun lt!83992 () Bool)

(declare-datatypes ((List!2164 0))(
  ( (Nil!2161) (Cons!2160 (h!2777 (_ BitVec 64)) (t!6974 List!2164)) )
))
(declare-fun arrayNoDuplicates!0 (array!6766 (_ BitVec 32) List!2164) Bool)

(assert (=> b!167917 (= lt!83992 (arrayNoDuplicates!0 (_keys!5295 thiss!1248) #b00000000000000000000000000000000 Nil!2161))))

(declare-fun b!167918 () Bool)

(declare-fun res!79916 () Bool)

(assert (=> b!167918 (=> (not res!79916) (not e!110348))))

(assert (=> b!167918 (= res!79916 (not (= key!828 (bvneg key!828))))))

(declare-fun mapNonEmpty!6471 () Bool)

(declare-fun tp!14699 () Bool)

(assert (=> mapNonEmpty!6471 (= mapRes!6471 (and tp!14699 e!110347))))

(declare-fun mapRest!6471 () (Array (_ BitVec 32) ValueCell!1574))

(declare-fun mapValue!6471 () ValueCell!1574)

(declare-fun mapKey!6471 () (_ BitVec 32))

(assert (=> mapNonEmpty!6471 (= (arr!3219 (_values!3453 thiss!1248)) (store mapRest!6471 mapKey!6471 mapValue!6471))))

(declare-fun b!167919 () Bool)

(declare-fun res!79911 () Bool)

(assert (=> b!167919 (=> res!79911 e!110342)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6766 (_ BitVec 32)) Bool)

(assert (=> b!167919 (= res!79911 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5295 thiss!1248) (mask!8227 thiss!1248))))))

(declare-fun b!167920 () Bool)

(declare-fun e!110344 () Bool)

(declare-fun e!110350 () Bool)

(assert (=> b!167920 (= e!110344 (and e!110350 mapRes!6471))))

(declare-fun condMapEmpty!6471 () Bool)

(declare-fun mapDefault!6471 () ValueCell!1574)

