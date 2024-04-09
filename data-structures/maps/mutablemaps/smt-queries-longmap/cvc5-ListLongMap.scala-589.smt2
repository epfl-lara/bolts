; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15688 () Bool)

(assert start!15688)

(declare-fun b!156196 () Bool)

(declare-fun b_free!3343 () Bool)

(declare-fun b_next!3343 () Bool)

(assert (=> b!156196 (= b_free!3343 (not b_next!3343))))

(declare-fun tp!12554 () Bool)

(declare-fun b_and!9775 () Bool)

(assert (=> b!156196 (= tp!12554 b_and!9775)))

(declare-fun b!156193 () Bool)

(declare-fun e!102164 () Bool)

(declare-fun tp_is_empty!3145 () Bool)

(assert (=> b!156193 (= e!102164 tp_is_empty!3145)))

(declare-fun b!156194 () Bool)

(declare-fun res!73798 () Bool)

(declare-fun e!102162 () Bool)

(assert (=> b!156194 (=> (not res!73798) (not e!102162))))

(declare-datatypes ((V!3841 0))(
  ( (V!3842 (val!1617 Int)) )
))
(declare-datatypes ((ValueCell!1229 0))(
  ( (ValueCellFull!1229 (v!3478 V!3841)) (EmptyCell!1229) )
))
(declare-datatypes ((array!5342 0))(
  ( (array!5343 (arr!2528 (Array (_ BitVec 32) (_ BitVec 64))) (size!2806 (_ BitVec 32))) )
))
(declare-datatypes ((array!5344 0))(
  ( (array!5345 (arr!2529 (Array (_ BitVec 32) ValueCell!1229)) (size!2807 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1366 0))(
  ( (LongMapFixedSize!1367 (defaultEntry!3125 Int) (mask!7572 (_ BitVec 32)) (extraKeys!2866 (_ BitVec 32)) (zeroValue!2968 V!3841) (minValue!2968 V!3841) (_size!732 (_ BitVec 32)) (_keys!4900 array!5342) (_values!3108 array!5344) (_vacant!732 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1366)

(assert (=> b!156194 (= res!73798 (and (= (size!2807 (_values!3108 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7572 thiss!1248))) (= (size!2806 (_keys!4900 thiss!1248)) (size!2807 (_values!3108 thiss!1248))) (bvsge (mask!7572 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2866 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2866 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2866 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2866 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2866 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2866 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2866 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!73799 () Bool)

(assert (=> start!15688 (=> (not res!73799) (not e!102162))))

(declare-fun valid!659 (LongMapFixedSize!1366) Bool)

(assert (=> start!15688 (= res!73799 (valid!659 thiss!1248))))

(assert (=> start!15688 e!102162))

(declare-fun e!102163 () Bool)

(assert (=> start!15688 e!102163))

(assert (=> start!15688 true))

(declare-fun b!156195 () Bool)

(declare-fun e!102159 () Bool)

(assert (=> b!156195 (= e!102159 tp_is_empty!3145)))

(declare-fun e!102160 () Bool)

(declare-fun array_inv!1589 (array!5342) Bool)

(declare-fun array_inv!1590 (array!5344) Bool)

(assert (=> b!156196 (= e!102163 (and tp!12554 tp_is_empty!3145 (array_inv!1589 (_keys!4900 thiss!1248)) (array_inv!1590 (_values!3108 thiss!1248)) e!102160))))

(declare-fun mapNonEmpty!5360 () Bool)

(declare-fun mapRes!5360 () Bool)

(declare-fun tp!12553 () Bool)

(assert (=> mapNonEmpty!5360 (= mapRes!5360 (and tp!12553 e!102164))))

(declare-fun mapValue!5360 () ValueCell!1229)

(declare-fun mapKey!5360 () (_ BitVec 32))

(declare-fun mapRest!5360 () (Array (_ BitVec 32) ValueCell!1229))

(assert (=> mapNonEmpty!5360 (= (arr!2529 (_values!3108 thiss!1248)) (store mapRest!5360 mapKey!5360 mapValue!5360))))

(declare-fun mapIsEmpty!5360 () Bool)

(assert (=> mapIsEmpty!5360 mapRes!5360))

(declare-fun b!156197 () Bool)

(declare-fun res!73800 () Bool)

(assert (=> b!156197 (=> (not res!73800) (not e!102162))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!156197 (= res!73800 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!156198 () Bool)

(assert (=> b!156198 (= e!102160 (and e!102159 mapRes!5360))))

(declare-fun condMapEmpty!5360 () Bool)

(declare-fun mapDefault!5360 () ValueCell!1229)

