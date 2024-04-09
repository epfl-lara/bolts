; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21620 () Bool)

(assert start!21620)

(declare-fun b!216467 () Bool)

(declare-fun b_free!5757 () Bool)

(declare-fun b_next!5757 () Bool)

(assert (=> b!216467 (= b_free!5757 (not b_next!5757))))

(declare-fun tp!20405 () Bool)

(declare-fun b_and!12665 () Bool)

(assert (=> b!216467 (= tp!20405 b_and!12665)))

(declare-fun b!216458 () Bool)

(declare-fun e!140839 () Bool)

(declare-fun e!140840 () Bool)

(declare-fun mapRes!9591 () Bool)

(assert (=> b!216458 (= e!140839 (and e!140840 mapRes!9591))))

(declare-fun condMapEmpty!9591 () Bool)

(declare-datatypes ((V!7139 0))(
  ( (V!7140 (val!2854 Int)) )
))
(declare-datatypes ((ValueCell!2466 0))(
  ( (ValueCellFull!2466 (v!4868 V!7139)) (EmptyCell!2466) )
))
(declare-datatypes ((array!10476 0))(
  ( (array!10477 (arr!4959 (Array (_ BitVec 32) ValueCell!2466)) (size!5291 (_ BitVec 32))) )
))
(declare-datatypes ((array!10478 0))(
  ( (array!10479 (arr!4960 (Array (_ BitVec 32) (_ BitVec 64))) (size!5292 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2832 0))(
  ( (LongMapFixedSize!2833 (defaultEntry!4066 Int) (mask!9803 (_ BitVec 32)) (extraKeys!3803 (_ BitVec 32)) (zeroValue!3907 V!7139) (minValue!3907 V!7139) (_size!1465 (_ BitVec 32)) (_keys!6115 array!10478) (_values!4049 array!10476) (_vacant!1465 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2832)

(declare-fun mapDefault!9591 () ValueCell!2466)

(assert (=> b!216458 (= condMapEmpty!9591 (= (arr!4959 (_values!4049 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2466)) mapDefault!9591)))))

(declare-fun b!216459 () Bool)

(declare-fun tp_is_empty!5619 () Bool)

(assert (=> b!216459 (= e!140840 tp_is_empty!5619)))

(declare-fun b!216460 () Bool)

(declare-fun res!105867 () Bool)

(declare-fun e!140842 () Bool)

(assert (=> b!216460 (=> (not res!105867) (not e!140842))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10478 (_ BitVec 32)) Bool)

(assert (=> b!216460 (= res!105867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6115 thiss!1504) (mask!9803 thiss!1504)))))

(declare-fun mapNonEmpty!9591 () Bool)

(declare-fun tp!20406 () Bool)

(declare-fun e!140844 () Bool)

(assert (=> mapNonEmpty!9591 (= mapRes!9591 (and tp!20406 e!140844))))

(declare-fun mapRest!9591 () (Array (_ BitVec 32) ValueCell!2466))

(declare-fun mapValue!9591 () ValueCell!2466)

(declare-fun mapKey!9591 () (_ BitVec 32))

(assert (=> mapNonEmpty!9591 (= (arr!4959 (_values!4049 thiss!1504)) (store mapRest!9591 mapKey!9591 mapValue!9591))))

(declare-fun b!216461 () Bool)

(assert (=> b!216461 (= e!140844 tp_is_empty!5619)))

(declare-fun b!216462 () Bool)

(assert (=> b!216462 (= e!140842 false)))

(declare-fun lt!111199 () Bool)

(declare-datatypes ((List!3169 0))(
  ( (Nil!3166) (Cons!3165 (h!3812 (_ BitVec 64)) (t!8132 List!3169)) )
))
(declare-fun arrayNoDuplicates!0 (array!10478 (_ BitVec 32) List!3169) Bool)

(assert (=> b!216462 (= lt!111199 (arrayNoDuplicates!0 (_keys!6115 thiss!1504) #b00000000000000000000000000000000 Nil!3166))))

(declare-fun b!216463 () Bool)

(declare-fun res!105868 () Bool)

(assert (=> b!216463 (=> (not res!105868) (not e!140842))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!216463 (= res!105868 (validMask!0 (mask!9803 thiss!1504)))))

(declare-fun b!216464 () Bool)

(declare-fun res!105869 () Bool)

(declare-fun e!140838 () Bool)

(assert (=> b!216464 (=> (not res!105869) (not e!140838))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!216464 (= res!105869 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!216466 () Bool)

(declare-fun res!105870 () Bool)

(assert (=> b!216466 (=> (not res!105870) (not e!140842))))

(declare-datatypes ((tuple2!4240 0))(
  ( (tuple2!4241 (_1!2130 (_ BitVec 64)) (_2!2130 V!7139)) )
))
(declare-datatypes ((List!3170 0))(
  ( (Nil!3167) (Cons!3166 (h!3813 tuple2!4240) (t!8133 List!3170)) )
))
(declare-datatypes ((ListLongMap!3167 0))(
  ( (ListLongMap!3168 (toList!1599 List!3170)) )
))
(declare-fun contains!1434 (ListLongMap!3167 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1122 (array!10478 array!10476 (_ BitVec 32) (_ BitVec 32) V!7139 V!7139 (_ BitVec 32) Int) ListLongMap!3167)

(assert (=> b!216466 (= res!105870 (contains!1434 (getCurrentListMap!1122 (_keys!6115 thiss!1504) (_values!4049 thiss!1504) (mask!9803 thiss!1504) (extraKeys!3803 thiss!1504) (zeroValue!3907 thiss!1504) (minValue!3907 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4066 thiss!1504)) key!932))))

(declare-fun mapIsEmpty!9591 () Bool)

(assert (=> mapIsEmpty!9591 mapRes!9591))

(declare-fun b!216465 () Bool)

(assert (=> b!216465 (= e!140838 e!140842)))

(declare-fun res!105871 () Bool)

(assert (=> b!216465 (=> (not res!105871) (not e!140842))))

(declare-datatypes ((SeekEntryResult!756 0))(
  ( (MissingZero!756 (index!5194 (_ BitVec 32))) (Found!756 (index!5195 (_ BitVec 32))) (Intermediate!756 (undefined!1568 Bool) (index!5196 (_ BitVec 32)) (x!22652 (_ BitVec 32))) (Undefined!756) (MissingVacant!756 (index!5197 (_ BitVec 32))) )
))
(declare-fun lt!111198 () SeekEntryResult!756)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!216465 (= res!105871 (or (= lt!111198 (MissingZero!756 index!297)) (= lt!111198 (MissingVacant!756 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10478 (_ BitVec 32)) SeekEntryResult!756)

(assert (=> b!216465 (= lt!111198 (seekEntryOrOpen!0 key!932 (_keys!6115 thiss!1504) (mask!9803 thiss!1504)))))

(declare-fun res!105872 () Bool)

(assert (=> start!21620 (=> (not res!105872) (not e!140838))))

(declare-fun valid!1143 (LongMapFixedSize!2832) Bool)

(assert (=> start!21620 (= res!105872 (valid!1143 thiss!1504))))

(assert (=> start!21620 e!140838))

(declare-fun e!140843 () Bool)

(assert (=> start!21620 e!140843))

(assert (=> start!21620 true))

(declare-fun array_inv!3271 (array!10478) Bool)

(declare-fun array_inv!3272 (array!10476) Bool)

(assert (=> b!216467 (= e!140843 (and tp!20405 tp_is_empty!5619 (array_inv!3271 (_keys!6115 thiss!1504)) (array_inv!3272 (_values!4049 thiss!1504)) e!140839))))

(declare-fun b!216468 () Bool)

(declare-fun res!105873 () Bool)

(assert (=> b!216468 (=> (not res!105873) (not e!140842))))

(assert (=> b!216468 (= res!105873 (and (= (size!5291 (_values!4049 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9803 thiss!1504))) (= (size!5292 (_keys!6115 thiss!1504)) (size!5291 (_values!4049 thiss!1504))) (bvsge (mask!9803 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3803 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3803 thiss!1504) #b00000000000000000000000000000011)))))

(assert (= (and start!21620 res!105872) b!216464))

(assert (= (and b!216464 res!105869) b!216465))

(assert (= (and b!216465 res!105871) b!216466))

(assert (= (and b!216466 res!105870) b!216463))

(assert (= (and b!216463 res!105868) b!216468))

(assert (= (and b!216468 res!105873) b!216460))

(assert (= (and b!216460 res!105867) b!216462))

(assert (= (and b!216458 condMapEmpty!9591) mapIsEmpty!9591))

(assert (= (and b!216458 (not condMapEmpty!9591)) mapNonEmpty!9591))

(get-info :version)

(assert (= (and mapNonEmpty!9591 ((_ is ValueCellFull!2466) mapValue!9591)) b!216461))

(assert (= (and b!216458 ((_ is ValueCellFull!2466) mapDefault!9591)) b!216459))

(assert (= b!216467 b!216458))

(assert (= start!21620 b!216467))

(declare-fun m!243167 () Bool)

(assert (=> b!216467 m!243167))

(declare-fun m!243169 () Bool)

(assert (=> b!216467 m!243169))

(declare-fun m!243171 () Bool)

(assert (=> b!216462 m!243171))

(declare-fun m!243173 () Bool)

(assert (=> b!216460 m!243173))

(declare-fun m!243175 () Bool)

(assert (=> start!21620 m!243175))

(declare-fun m!243177 () Bool)

(assert (=> b!216465 m!243177))

(declare-fun m!243179 () Bool)

(assert (=> b!216466 m!243179))

(assert (=> b!216466 m!243179))

(declare-fun m!243181 () Bool)

(assert (=> b!216466 m!243181))

(declare-fun m!243183 () Bool)

(assert (=> mapNonEmpty!9591 m!243183))

(declare-fun m!243185 () Bool)

(assert (=> b!216463 m!243185))

(check-sat (not b_next!5757) (not b!216460) (not b!216467) (not b!216465) (not b!216462) (not mapNonEmpty!9591) tp_is_empty!5619 b_and!12665 (not start!21620) (not b!216466) (not b!216463))
(check-sat b_and!12665 (not b_next!5757))
