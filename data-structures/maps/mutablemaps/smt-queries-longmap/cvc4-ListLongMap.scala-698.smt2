; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16708 () Bool)

(assert start!16708)

(declare-fun b!167297 () Bool)

(declare-fun b_free!4001 () Bool)

(declare-fun b_next!4001 () Bool)

(assert (=> b!167297 (= b_free!4001 (not b_next!4001))))

(declare-fun tp!14603 () Bool)

(declare-fun b_and!10433 () Bool)

(assert (=> b!167297 (= tp!14603 b_and!10433)))

(declare-fun b!167287 () Bool)

(declare-fun res!79575 () Bool)

(declare-fun e!109870 () Bool)

(assert (=> b!167287 (=> (not res!79575) (not e!109870))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!167287 (= res!79575 (not (= key!828 (bvneg key!828))))))

(declare-fun b!167288 () Bool)

(declare-fun res!79579 () Bool)

(declare-fun e!109869 () Bool)

(assert (=> b!167288 (=> (not res!79579) (not e!109869))))

(declare-datatypes ((V!4717 0))(
  ( (V!4718 (val!1946 Int)) )
))
(declare-datatypes ((ValueCell!1558 0))(
  ( (ValueCellFull!1558 (v!3807 V!4717)) (EmptyCell!1558) )
))
(declare-datatypes ((array!6702 0))(
  ( (array!6703 (arr!3186 (Array (_ BitVec 32) (_ BitVec 64))) (size!3474 (_ BitVec 32))) )
))
(declare-datatypes ((array!6704 0))(
  ( (array!6705 (arr!3187 (Array (_ BitVec 32) ValueCell!1558)) (size!3475 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2024 0))(
  ( (LongMapFixedSize!2025 (defaultEntry!3454 Int) (mask!8199 (_ BitVec 32)) (extraKeys!3195 (_ BitVec 32)) (zeroValue!3297 V!4717) (minValue!3297 V!4717) (_size!1061 (_ BitVec 32)) (_keys!5279 array!6702) (_values!3437 array!6704) (_vacant!1061 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2024)

(assert (=> b!167288 (= res!79579 (and (= (size!3475 (_values!3437 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8199 thiss!1248))) (= (size!3474 (_keys!5279 thiss!1248)) (size!3475 (_values!3437 thiss!1248))) (bvsge (mask!8199 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3195 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3195 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!167289 () Bool)

(declare-fun e!109865 () Bool)

(declare-fun tp_is_empty!3803 () Bool)

(assert (=> b!167289 (= e!109865 tp_is_empty!3803)))

(declare-fun b!167290 () Bool)

(assert (=> b!167290 (= e!109869 false)))

(declare-fun lt!83673 () Bool)

(declare-datatypes ((List!2145 0))(
  ( (Nil!2142) (Cons!2141 (h!2758 (_ BitVec 64)) (t!6955 List!2145)) )
))
(declare-fun arrayNoDuplicates!0 (array!6702 (_ BitVec 32) List!2145) Bool)

(assert (=> b!167290 (= lt!83673 (arrayNoDuplicates!0 (_keys!5279 thiss!1248) #b00000000000000000000000000000000 Nil!2142))))

(declare-fun b!167291 () Bool)

(declare-fun res!79580 () Bool)

(assert (=> b!167291 (=> (not res!79580) (not e!109869))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6702 (_ BitVec 32)) Bool)

(assert (=> b!167291 (= res!79580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5279 thiss!1248) (mask!8199 thiss!1248)))))

(declare-fun mapNonEmpty!6423 () Bool)

(declare-fun mapRes!6423 () Bool)

(declare-fun tp!14604 () Bool)

(declare-fun e!109868 () Bool)

(assert (=> mapNonEmpty!6423 (= mapRes!6423 (and tp!14604 e!109868))))

(declare-fun mapValue!6423 () ValueCell!1558)

(declare-fun mapKey!6423 () (_ BitVec 32))

(declare-fun mapRest!6423 () (Array (_ BitVec 32) ValueCell!1558))

(assert (=> mapNonEmpty!6423 (= (arr!3187 (_values!3437 thiss!1248)) (store mapRest!6423 mapKey!6423 mapValue!6423))))

(declare-fun b!167292 () Bool)

(assert (=> b!167292 (= e!109868 tp_is_empty!3803)))

(declare-datatypes ((SeekEntryResult!487 0))(
  ( (MissingZero!487 (index!4116 (_ BitVec 32))) (Found!487 (index!4117 (_ BitVec 32))) (Intermediate!487 (undefined!1299 Bool) (index!4118 (_ BitVec 32)) (x!18523 (_ BitVec 32))) (Undefined!487) (MissingVacant!487 (index!4119 (_ BitVec 32))) )
))
(declare-fun lt!83675 () SeekEntryResult!487)

(declare-fun e!109862 () Bool)

(declare-fun b!167293 () Bool)

(assert (=> b!167293 (= e!109862 (= (select (arr!3186 (_keys!5279 thiss!1248)) (index!4117 lt!83675)) key!828))))

(declare-fun b!167294 () Bool)

(declare-datatypes ((Unit!5117 0))(
  ( (Unit!5118) )
))
(declare-fun e!109864 () Unit!5117)

(declare-fun Unit!5119 () Unit!5117)

(assert (=> b!167294 (= e!109864 Unit!5119)))

(declare-fun lt!83674 () Unit!5117)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!103 (array!6702 array!6704 (_ BitVec 32) (_ BitVec 32) V!4717 V!4717 (_ BitVec 64) Int) Unit!5117)

(assert (=> b!167294 (= lt!83674 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!103 (_keys!5279 thiss!1248) (_values!3437 thiss!1248) (mask!8199 thiss!1248) (extraKeys!3195 thiss!1248) (zeroValue!3297 thiss!1248) (minValue!3297 thiss!1248) key!828 (defaultEntry!3454 thiss!1248)))))

(assert (=> b!167294 false))

(declare-fun b!167295 () Bool)

(declare-fun e!109861 () Bool)

(assert (=> b!167295 (= e!109870 e!109861)))

(declare-fun res!79576 () Bool)

(assert (=> b!167295 (=> (not res!79576) (not e!109861))))

(assert (=> b!167295 (= res!79576 (and (not (is-Undefined!487 lt!83675)) (not (is-MissingVacant!487 lt!83675)) (not (is-MissingZero!487 lt!83675)) (is-Found!487 lt!83675)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6702 (_ BitVec 32)) SeekEntryResult!487)

(assert (=> b!167295 (= lt!83675 (seekEntryOrOpen!0 key!828 (_keys!5279 thiss!1248) (mask!8199 thiss!1248)))))

(declare-fun b!167296 () Bool)

(declare-fun lt!83672 () Unit!5117)

(assert (=> b!167296 (= e!109864 lt!83672)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!105 (array!6702 array!6704 (_ BitVec 32) (_ BitVec 32) V!4717 V!4717 (_ BitVec 64) Int) Unit!5117)

(assert (=> b!167296 (= lt!83672 (lemmaInListMapThenSeekEntryOrOpenFindsIt!105 (_keys!5279 thiss!1248) (_values!3437 thiss!1248) (mask!8199 thiss!1248) (extraKeys!3195 thiss!1248) (zeroValue!3297 thiss!1248) (minValue!3297 thiss!1248) key!828 (defaultEntry!3454 thiss!1248)))))

(declare-fun res!79581 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!167296 (= res!79581 (inRange!0 (index!4117 lt!83675) (mask!8199 thiss!1248)))))

(assert (=> b!167296 (=> (not res!79581) (not e!109862))))

(assert (=> b!167296 e!109862))

(declare-fun e!109866 () Bool)

(declare-fun e!109863 () Bool)

(declare-fun array_inv!2043 (array!6702) Bool)

(declare-fun array_inv!2044 (array!6704) Bool)

(assert (=> b!167297 (= e!109866 (and tp!14603 tp_is_empty!3803 (array_inv!2043 (_keys!5279 thiss!1248)) (array_inv!2044 (_values!3437 thiss!1248)) e!109863))))

(declare-fun b!167298 () Bool)

(assert (=> b!167298 (= e!109861 e!109869)))

(declare-fun res!79578 () Bool)

(assert (=> b!167298 (=> (not res!79578) (not e!109869))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!167298 (= res!79578 (validMask!0 (mask!8199 thiss!1248)))))

(declare-fun lt!83671 () Unit!5117)

(assert (=> b!167298 (= lt!83671 e!109864)))

(declare-fun c!30264 () Bool)

(declare-datatypes ((tuple2!3134 0))(
  ( (tuple2!3135 (_1!1577 (_ BitVec 64)) (_2!1577 V!4717)) )
))
(declare-datatypes ((List!2146 0))(
  ( (Nil!2143) (Cons!2142 (h!2759 tuple2!3134) (t!6956 List!2146)) )
))
(declare-datatypes ((ListLongMap!2103 0))(
  ( (ListLongMap!2104 (toList!1067 List!2146)) )
))
(declare-fun contains!1103 (ListLongMap!2103 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!720 (array!6702 array!6704 (_ BitVec 32) (_ BitVec 32) V!4717 V!4717 (_ BitVec 32) Int) ListLongMap!2103)

(assert (=> b!167298 (= c!30264 (contains!1103 (getCurrentListMap!720 (_keys!5279 thiss!1248) (_values!3437 thiss!1248) (mask!8199 thiss!1248) (extraKeys!3195 thiss!1248) (zeroValue!3297 thiss!1248) (minValue!3297 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3454 thiss!1248)) key!828))))

(declare-fun b!167299 () Bool)

(assert (=> b!167299 (= e!109863 (and e!109865 mapRes!6423))))

(declare-fun condMapEmpty!6423 () Bool)

(declare-fun mapDefault!6423 () ValueCell!1558)

