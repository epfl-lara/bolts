; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15736 () Bool)

(assert start!15736)

(declare-fun b!156845 () Bool)

(declare-fun b_free!3391 () Bool)

(declare-fun b_next!3391 () Bool)

(assert (=> b!156845 (= b_free!3391 (not b_next!3391))))

(declare-fun tp!12697 () Bool)

(declare-fun b_and!9823 () Bool)

(assert (=> b!156845 (= tp!12697 b_and!9823)))

(declare-fun b!156841 () Bool)

(declare-fun res!74159 () Bool)

(declare-fun e!102593 () Bool)

(assert (=> b!156841 (=> (not res!74159) (not e!102593))))

(declare-datatypes ((V!3905 0))(
  ( (V!3906 (val!1641 Int)) )
))
(declare-datatypes ((ValueCell!1253 0))(
  ( (ValueCellFull!1253 (v!3502 V!3905)) (EmptyCell!1253) )
))
(declare-datatypes ((array!5438 0))(
  ( (array!5439 (arr!2576 (Array (_ BitVec 32) (_ BitVec 64))) (size!2854 (_ BitVec 32))) )
))
(declare-datatypes ((array!5440 0))(
  ( (array!5441 (arr!2577 (Array (_ BitVec 32) ValueCell!1253)) (size!2855 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1414 0))(
  ( (LongMapFixedSize!1415 (defaultEntry!3149 Int) (mask!7612 (_ BitVec 32)) (extraKeys!2890 (_ BitVec 32)) (zeroValue!2992 V!3905) (minValue!2992 V!3905) (_size!756 (_ BitVec 32)) (_keys!4924 array!5438) (_values!3132 array!5440) (_vacant!756 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1414)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!156841 (= res!74159 (validMask!0 (mask!7612 thiss!1248)))))

(declare-fun b!156842 () Bool)

(declare-fun res!74161 () Bool)

(assert (=> b!156842 (=> (not res!74161) (not e!102593))))

(assert (=> b!156842 (= res!74161 (and (= (size!2855 (_values!3132 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7612 thiss!1248))) (= (size!2854 (_keys!4924 thiss!1248)) (size!2855 (_values!3132 thiss!1248))) (bvsge (mask!7612 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2890 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2890 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2890 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2890 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2890 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2890 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2890 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!156843 () Bool)

(declare-fun res!74157 () Bool)

(assert (=> b!156843 (=> (not res!74157) (not e!102593))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5438 (_ BitVec 32)) Bool)

(assert (=> b!156843 (= res!74157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4924 thiss!1248) (mask!7612 thiss!1248)))))

(declare-fun b!156844 () Bool)

(declare-fun e!102596 () Bool)

(declare-fun tp_is_empty!3193 () Bool)

(assert (=> b!156844 (= e!102596 tp_is_empty!3193)))

(declare-fun e!102595 () Bool)

(declare-fun e!102591 () Bool)

(declare-fun array_inv!1625 (array!5438) Bool)

(declare-fun array_inv!1626 (array!5440) Bool)

(assert (=> b!156845 (= e!102595 (and tp!12697 tp_is_empty!3193 (array_inv!1625 (_keys!4924 thiss!1248)) (array_inv!1626 (_values!3132 thiss!1248)) e!102591))))

(declare-fun mapIsEmpty!5432 () Bool)

(declare-fun mapRes!5432 () Bool)

(assert (=> mapIsEmpty!5432 mapRes!5432))

(declare-fun res!74158 () Bool)

(assert (=> start!15736 (=> (not res!74158) (not e!102593))))

(declare-fun valid!675 (LongMapFixedSize!1414) Bool)

(assert (=> start!15736 (= res!74158 (valid!675 thiss!1248))))

(assert (=> start!15736 e!102593))

(assert (=> start!15736 e!102595))

(assert (=> start!15736 true))

(declare-fun mapNonEmpty!5432 () Bool)

(declare-fun tp!12698 () Bool)

(assert (=> mapNonEmpty!5432 (= mapRes!5432 (and tp!12698 e!102596))))

(declare-fun mapRest!5432 () (Array (_ BitVec 32) ValueCell!1253))

(declare-fun mapKey!5432 () (_ BitVec 32))

(declare-fun mapValue!5432 () ValueCell!1253)

(assert (=> mapNonEmpty!5432 (= (arr!2577 (_values!3132 thiss!1248)) (store mapRest!5432 mapKey!5432 mapValue!5432))))

(declare-fun b!156846 () Bool)

(declare-fun e!102594 () Bool)

(assert (=> b!156846 (= e!102591 (and e!102594 mapRes!5432))))

(declare-fun condMapEmpty!5432 () Bool)

(declare-fun mapDefault!5432 () ValueCell!1253)

