; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19330 () Bool)

(assert start!19330)

(declare-fun b!190013 () Bool)

(declare-fun b_free!4663 () Bool)

(declare-fun b_next!4663 () Bool)

(assert (=> b!190013 (= b_free!4663 (not b_next!4663))))

(declare-fun tp!16828 () Bool)

(declare-fun b_and!11327 () Bool)

(assert (=> b!190013 (= tp!16828 b_and!11327)))

(declare-fun b!190009 () Bool)

(declare-fun e!125065 () Bool)

(declare-fun tp_is_empty!4435 () Bool)

(assert (=> b!190009 (= e!125065 tp_is_empty!4435)))

(declare-fun b!190010 () Bool)

(declare-datatypes ((Unit!5737 0))(
  ( (Unit!5738) )
))
(declare-fun e!125068 () Unit!5737)

(declare-fun lt!94190 () Unit!5737)

(assert (=> b!190010 (= e!125068 lt!94190)))

(declare-datatypes ((V!5561 0))(
  ( (V!5562 (val!2262 Int)) )
))
(declare-datatypes ((ValueCell!1874 0))(
  ( (ValueCellFull!1874 (v!4185 V!5561)) (EmptyCell!1874) )
))
(declare-datatypes ((array!8102 0))(
  ( (array!8103 (arr!3818 (Array (_ BitVec 32) (_ BitVec 64))) (size!4138 (_ BitVec 32))) )
))
(declare-datatypes ((array!8104 0))(
  ( (array!8105 (arr!3819 (Array (_ BitVec 32) ValueCell!1874)) (size!4139 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2656 0))(
  ( (LongMapFixedSize!2657 (defaultEntry!3880 Int) (mask!9078 (_ BitVec 32)) (extraKeys!3617 (_ BitVec 32)) (zeroValue!3721 V!5561) (minValue!3721 V!5561) (_size!1377 (_ BitVec 32)) (_keys!5849 array!8102) (_values!3863 array!8104) (_vacant!1377 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2656)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!170 (array!8102 array!8104 (_ BitVec 32) (_ BitVec 32) V!5561 V!5561 (_ BitVec 64) Int) Unit!5737)

(assert (=> b!190010 (= lt!94190 (lemmaInListMapThenSeekEntryOrOpenFindsIt!170 (_keys!5849 thiss!1248) (_values!3863 thiss!1248) (mask!9078 thiss!1248) (extraKeys!3617 thiss!1248) (zeroValue!3721 thiss!1248) (minValue!3721 thiss!1248) key!828 (defaultEntry!3880 thiss!1248)))))

(declare-fun res!89850 () Bool)

(declare-datatypes ((SeekEntryResult!681 0))(
  ( (MissingZero!681 (index!4894 (_ BitVec 32))) (Found!681 (index!4895 (_ BitVec 32))) (Intermediate!681 (undefined!1493 Bool) (index!4896 (_ BitVec 32)) (x!20483 (_ BitVec 32))) (Undefined!681) (MissingVacant!681 (index!4897 (_ BitVec 32))) )
))
(declare-fun lt!94189 () SeekEntryResult!681)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!190010 (= res!89850 (inRange!0 (index!4895 lt!94189) (mask!9078 thiss!1248)))))

(declare-fun e!125066 () Bool)

(assert (=> b!190010 (=> (not res!89850) (not e!125066))))

(assert (=> b!190010 e!125066))

(declare-fun b!190011 () Bool)

(declare-fun Unit!5739 () Unit!5737)

(assert (=> b!190011 (= e!125068 Unit!5739)))

(declare-fun lt!94191 () Unit!5737)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!171 (array!8102 array!8104 (_ BitVec 32) (_ BitVec 32) V!5561 V!5561 (_ BitVec 64) Int) Unit!5737)

(assert (=> b!190011 (= lt!94191 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!171 (_keys!5849 thiss!1248) (_values!3863 thiss!1248) (mask!9078 thiss!1248) (extraKeys!3617 thiss!1248) (zeroValue!3721 thiss!1248) (minValue!3721 thiss!1248) key!828 (defaultEntry!3880 thiss!1248)))))

(assert (=> b!190011 false))

(declare-fun res!89848 () Bool)

(declare-fun e!125064 () Bool)

(assert (=> start!19330 (=> (not res!89848) (not e!125064))))

(declare-fun valid!1083 (LongMapFixedSize!2656) Bool)

(assert (=> start!19330 (= res!89848 (valid!1083 thiss!1248))))

(assert (=> start!19330 e!125064))

(declare-fun e!125062 () Bool)

(assert (=> start!19330 e!125062))

(assert (=> start!19330 true))

(assert (=> start!19330 tp_is_empty!4435))

(declare-fun b!190012 () Bool)

(assert (=> b!190012 (= e!125066 (= (select (arr!3818 (_keys!5849 thiss!1248)) (index!4895 lt!94189)) key!828))))

(declare-fun e!125059 () Bool)

(declare-fun array_inv!2465 (array!8102) Bool)

(declare-fun array_inv!2466 (array!8104) Bool)

(assert (=> b!190013 (= e!125062 (and tp!16828 tp_is_empty!4435 (array_inv!2465 (_keys!5849 thiss!1248)) (array_inv!2466 (_values!3863 thiss!1248)) e!125059))))

(declare-fun mapNonEmpty!7654 () Bool)

(declare-fun mapRes!7654 () Bool)

(declare-fun tp!16827 () Bool)

(declare-fun e!125060 () Bool)

(assert (=> mapNonEmpty!7654 (= mapRes!7654 (and tp!16827 e!125060))))

(declare-fun mapRest!7654 () (Array (_ BitVec 32) ValueCell!1874))

(declare-fun mapValue!7654 () ValueCell!1874)

(declare-fun mapKey!7654 () (_ BitVec 32))

(assert (=> mapNonEmpty!7654 (= (arr!3819 (_values!3863 thiss!1248)) (store mapRest!7654 mapKey!7654 mapValue!7654))))

(declare-fun b!190014 () Bool)

(declare-fun e!125063 () Bool)

(assert (=> b!190014 (= e!125064 e!125063)))

(declare-fun res!89847 () Bool)

(assert (=> b!190014 (=> (not res!89847) (not e!125063))))

(assert (=> b!190014 (= res!89847 (and (not (is-Undefined!681 lt!94189)) (not (is-MissingVacant!681 lt!94189)) (not (is-MissingZero!681 lt!94189)) (is-Found!681 lt!94189)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8102 (_ BitVec 32)) SeekEntryResult!681)

(assert (=> b!190014 (= lt!94189 (seekEntryOrOpen!0 key!828 (_keys!5849 thiss!1248) (mask!9078 thiss!1248)))))

(declare-fun b!190015 () Bool)

(declare-fun res!89851 () Bool)

(assert (=> b!190015 (=> (not res!89851) (not e!125064))))

(assert (=> b!190015 (= res!89851 (not (= key!828 (bvneg key!828))))))

(declare-fun b!190016 () Bool)

(declare-fun e!125067 () Bool)

(assert (=> b!190016 (= e!125067 (= (size!4139 (_values!3863 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9078 thiss!1248))))))

(declare-fun b!190017 () Bool)

(assert (=> b!190017 (= e!125059 (and e!125065 mapRes!7654))))

(declare-fun condMapEmpty!7654 () Bool)

(declare-fun mapDefault!7654 () ValueCell!1874)

