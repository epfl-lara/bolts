; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15706 () Bool)

(assert start!15706)

(declare-fun b!156442 () Bool)

(declare-fun b_free!3361 () Bool)

(declare-fun b_next!3361 () Bool)

(assert (=> b!156442 (= b_free!3361 (not b_next!3361))))

(declare-fun tp!12607 () Bool)

(declare-fun b_and!9793 () Bool)

(assert (=> b!156442 (= tp!12607 b_and!9793)))

(declare-fun mapIsEmpty!5387 () Bool)

(declare-fun mapRes!5387 () Bool)

(assert (=> mapIsEmpty!5387 mapRes!5387))

(declare-fun b!156436 () Bool)

(declare-fun res!73934 () Bool)

(declare-fun e!102321 () Bool)

(assert (=> b!156436 (=> (not res!73934) (not e!102321))))

(declare-datatypes ((V!3865 0))(
  ( (V!3866 (val!1626 Int)) )
))
(declare-datatypes ((ValueCell!1238 0))(
  ( (ValueCellFull!1238 (v!3487 V!3865)) (EmptyCell!1238) )
))
(declare-datatypes ((array!5378 0))(
  ( (array!5379 (arr!2546 (Array (_ BitVec 32) (_ BitVec 64))) (size!2824 (_ BitVec 32))) )
))
(declare-datatypes ((array!5380 0))(
  ( (array!5381 (arr!2547 (Array (_ BitVec 32) ValueCell!1238)) (size!2825 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1384 0))(
  ( (LongMapFixedSize!1385 (defaultEntry!3134 Int) (mask!7587 (_ BitVec 32)) (extraKeys!2875 (_ BitVec 32)) (zeroValue!2977 V!3865) (minValue!2977 V!3865) (_size!741 (_ BitVec 32)) (_keys!4909 array!5378) (_values!3117 array!5380) (_vacant!741 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1384)

(assert (=> b!156436 (= res!73934 (and (= (size!2825 (_values!3117 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7587 thiss!1248))) (= (size!2824 (_keys!4909 thiss!1248)) (size!2825 (_values!3117 thiss!1248))) (bvsge (mask!7587 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2875 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2875 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2875 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2875 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2875 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2875 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2875 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!156438 () Bool)

(declare-fun e!102322 () Bool)

(declare-fun tp_is_empty!3163 () Bool)

(assert (=> b!156438 (= e!102322 tp_is_empty!3163)))

(declare-fun b!156439 () Bool)

(declare-fun res!73933 () Bool)

(assert (=> b!156439 (=> (not res!73933) (not e!102321))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!156439 (= res!73933 (validMask!0 (mask!7587 thiss!1248)))))

(declare-fun b!156440 () Bool)

(declare-fun e!102326 () Bool)

(declare-fun e!102325 () Bool)

(assert (=> b!156440 (= e!102326 (and e!102325 mapRes!5387))))

(declare-fun condMapEmpty!5387 () Bool)

(declare-fun mapDefault!5387 () ValueCell!1238)

