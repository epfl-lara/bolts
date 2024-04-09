; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21636 () Bool)

(assert start!21636)

(declare-fun b!216731 () Bool)

(declare-fun b_free!5773 () Bool)

(declare-fun b_next!5773 () Bool)

(assert (=> b!216731 (= b_free!5773 (not b_next!5773))))

(declare-fun tp!20454 () Bool)

(declare-fun b_and!12681 () Bool)

(assert (=> b!216731 (= tp!20454 b_and!12681)))

(declare-fun b!216722 () Bool)

(declare-fun e!141012 () Bool)

(declare-fun e!141010 () Bool)

(assert (=> b!216722 (= e!141012 e!141010)))

(declare-fun res!106037 () Bool)

(assert (=> b!216722 (=> (not res!106037) (not e!141010))))

(declare-datatypes ((SeekEntryResult!761 0))(
  ( (MissingZero!761 (index!5214 (_ BitVec 32))) (Found!761 (index!5215 (_ BitVec 32))) (Intermediate!761 (undefined!1573 Bool) (index!5216 (_ BitVec 32)) (x!22681 (_ BitVec 32))) (Undefined!761) (MissingVacant!761 (index!5217 (_ BitVec 32))) )
))
(declare-fun lt!111247 () SeekEntryResult!761)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!216722 (= res!106037 (or (= lt!111247 (MissingZero!761 index!297)) (= lt!111247 (MissingVacant!761 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7161 0))(
  ( (V!7162 (val!2862 Int)) )
))
(declare-datatypes ((ValueCell!2474 0))(
  ( (ValueCellFull!2474 (v!4876 V!7161)) (EmptyCell!2474) )
))
(declare-datatypes ((array!10508 0))(
  ( (array!10509 (arr!4975 (Array (_ BitVec 32) ValueCell!2474)) (size!5307 (_ BitVec 32))) )
))
(declare-datatypes ((array!10510 0))(
  ( (array!10511 (arr!4976 (Array (_ BitVec 32) (_ BitVec 64))) (size!5308 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2848 0))(
  ( (LongMapFixedSize!2849 (defaultEntry!4074 Int) (mask!9817 (_ BitVec 32)) (extraKeys!3811 (_ BitVec 32)) (zeroValue!3915 V!7161) (minValue!3915 V!7161) (_size!1473 (_ BitVec 32)) (_keys!6123 array!10510) (_values!4057 array!10508) (_vacant!1473 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2848)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10510 (_ BitVec 32)) SeekEntryResult!761)

(assert (=> b!216722 (= lt!111247 (seekEntryOrOpen!0 key!932 (_keys!6123 thiss!1504) (mask!9817 thiss!1504)))))

(declare-fun mapNonEmpty!9615 () Bool)

(declare-fun mapRes!9615 () Bool)

(declare-fun tp!20453 () Bool)

(declare-fun e!141006 () Bool)

(assert (=> mapNonEmpty!9615 (= mapRes!9615 (and tp!20453 e!141006))))

(declare-fun mapKey!9615 () (_ BitVec 32))

(declare-fun mapRest!9615 () (Array (_ BitVec 32) ValueCell!2474))

(declare-fun mapValue!9615 () ValueCell!2474)

(assert (=> mapNonEmpty!9615 (= (arr!4975 (_values!4057 thiss!1504)) (store mapRest!9615 mapKey!9615 mapValue!9615))))

(declare-fun b!216723 () Bool)

(declare-fun res!106039 () Bool)

(assert (=> b!216723 (=> (not res!106039) (not e!141010))))

(assert (=> b!216723 (= res!106039 (and (= (size!5307 (_values!4057 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9817 thiss!1504))) (= (size!5308 (_keys!6123 thiss!1504)) (size!5307 (_values!4057 thiss!1504))) (bvsge (mask!9817 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3811 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3811 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun res!106036 () Bool)

(assert (=> start!21636 (=> (not res!106036) (not e!141012))))

(declare-fun valid!1149 (LongMapFixedSize!2848) Bool)

(assert (=> start!21636 (= res!106036 (valid!1149 thiss!1504))))

(assert (=> start!21636 e!141012))

(declare-fun e!141011 () Bool)

(assert (=> start!21636 e!141011))

(assert (=> start!21636 true))

(declare-fun b!216724 () Bool)

(declare-fun res!106040 () Bool)

(assert (=> b!216724 (=> (not res!106040) (not e!141010))))

(declare-datatypes ((tuple2!4254 0))(
  ( (tuple2!4255 (_1!2137 (_ BitVec 64)) (_2!2137 V!7161)) )
))
(declare-datatypes ((List!3182 0))(
  ( (Nil!3179) (Cons!3178 (h!3825 tuple2!4254) (t!8145 List!3182)) )
))
(declare-datatypes ((ListLongMap!3181 0))(
  ( (ListLongMap!3182 (toList!1606 List!3182)) )
))
(declare-fun contains!1441 (ListLongMap!3181 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1129 (array!10510 array!10508 (_ BitVec 32) (_ BitVec 32) V!7161 V!7161 (_ BitVec 32) Int) ListLongMap!3181)

(assert (=> b!216724 (= res!106040 (contains!1441 (getCurrentListMap!1129 (_keys!6123 thiss!1504) (_values!4057 thiss!1504) (mask!9817 thiss!1504) (extraKeys!3811 thiss!1504) (zeroValue!3915 thiss!1504) (minValue!3915 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4074 thiss!1504)) key!932))))

(declare-fun b!216725 () Bool)

(declare-fun res!106035 () Bool)

(assert (=> b!216725 (=> (not res!106035) (not e!141012))))

(assert (=> b!216725 (= res!106035 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!216726 () Bool)

(declare-fun res!106038 () Bool)

(assert (=> b!216726 (=> (not res!106038) (not e!141010))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10510 (_ BitVec 32)) Bool)

(assert (=> b!216726 (= res!106038 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6123 thiss!1504) (mask!9817 thiss!1504)))))

(declare-fun b!216727 () Bool)

(assert (=> b!216727 (= e!141010 false)))

(declare-fun lt!111246 () Bool)

(declare-datatypes ((List!3183 0))(
  ( (Nil!3180) (Cons!3179 (h!3826 (_ BitVec 64)) (t!8146 List!3183)) )
))
(declare-fun arrayNoDuplicates!0 (array!10510 (_ BitVec 32) List!3183) Bool)

(assert (=> b!216727 (= lt!111246 (arrayNoDuplicates!0 (_keys!6123 thiss!1504) #b00000000000000000000000000000000 Nil!3180))))

(declare-fun b!216728 () Bool)

(declare-fun e!141007 () Bool)

(declare-fun tp_is_empty!5635 () Bool)

(assert (=> b!216728 (= e!141007 tp_is_empty!5635)))

(declare-fun mapIsEmpty!9615 () Bool)

(assert (=> mapIsEmpty!9615 mapRes!9615))

(declare-fun b!216729 () Bool)

(assert (=> b!216729 (= e!141006 tp_is_empty!5635)))

(declare-fun b!216730 () Bool)

(declare-fun e!141009 () Bool)

(assert (=> b!216730 (= e!141009 (and e!141007 mapRes!9615))))

(declare-fun condMapEmpty!9615 () Bool)

(declare-fun mapDefault!9615 () ValueCell!2474)

