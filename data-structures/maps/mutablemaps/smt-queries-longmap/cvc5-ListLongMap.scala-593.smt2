; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15712 () Bool)

(assert start!15712)

(declare-fun b!156518 () Bool)

(declare-fun b_free!3367 () Bool)

(declare-fun b_next!3367 () Bool)

(assert (=> b!156518 (= b_free!3367 (not b_next!3367))))

(declare-fun tp!12626 () Bool)

(declare-fun b_and!9799 () Bool)

(assert (=> b!156518 (= tp!12626 b_and!9799)))

(declare-fun b!156517 () Bool)

(declare-fun res!73979 () Bool)

(declare-fun e!102379 () Bool)

(assert (=> b!156517 (=> (not res!73979) (not e!102379))))

(declare-datatypes ((V!3873 0))(
  ( (V!3874 (val!1629 Int)) )
))
(declare-datatypes ((ValueCell!1241 0))(
  ( (ValueCellFull!1241 (v!3490 V!3873)) (EmptyCell!1241) )
))
(declare-datatypes ((array!5390 0))(
  ( (array!5391 (arr!2552 (Array (_ BitVec 32) (_ BitVec 64))) (size!2830 (_ BitVec 32))) )
))
(declare-datatypes ((array!5392 0))(
  ( (array!5393 (arr!2553 (Array (_ BitVec 32) ValueCell!1241)) (size!2831 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1390 0))(
  ( (LongMapFixedSize!1391 (defaultEntry!3137 Int) (mask!7592 (_ BitVec 32)) (extraKeys!2878 (_ BitVec 32)) (zeroValue!2980 V!3873) (minValue!2980 V!3873) (_size!744 (_ BitVec 32)) (_keys!4912 array!5390) (_values!3120 array!5392) (_vacant!744 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1390)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5390 (_ BitVec 32)) Bool)

(assert (=> b!156517 (= res!73979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4912 thiss!1248) (mask!7592 thiss!1248)))))

(declare-fun e!102377 () Bool)

(declare-fun e!102375 () Bool)

(declare-fun tp_is_empty!3169 () Bool)

(declare-fun array_inv!1609 (array!5390) Bool)

(declare-fun array_inv!1610 (array!5392) Bool)

(assert (=> b!156518 (= e!102377 (and tp!12626 tp_is_empty!3169 (array_inv!1609 (_keys!4912 thiss!1248)) (array_inv!1610 (_values!3120 thiss!1248)) e!102375))))

(declare-fun mapNonEmpty!5396 () Bool)

(declare-fun mapRes!5396 () Bool)

(declare-fun tp!12625 () Bool)

(declare-fun e!102378 () Bool)

(assert (=> mapNonEmpty!5396 (= mapRes!5396 (and tp!12625 e!102378))))

(declare-fun mapValue!5396 () ValueCell!1241)

(declare-fun mapKey!5396 () (_ BitVec 32))

(declare-fun mapRest!5396 () (Array (_ BitVec 32) ValueCell!1241))

(assert (=> mapNonEmpty!5396 (= (arr!2553 (_values!3120 thiss!1248)) (store mapRest!5396 mapKey!5396 mapValue!5396))))

(declare-fun b!156519 () Bool)

(assert (=> b!156519 (= e!102379 false)))

(declare-fun lt!81587 () Bool)

(declare-datatypes ((List!1873 0))(
  ( (Nil!1870) (Cons!1869 (h!2478 (_ BitVec 64)) (t!6683 List!1873)) )
))
(declare-fun arrayNoDuplicates!0 (array!5390 (_ BitVec 32) List!1873) Bool)

(assert (=> b!156519 (= lt!81587 (arrayNoDuplicates!0 (_keys!4912 thiss!1248) #b00000000000000000000000000000000 Nil!1870))))

(declare-fun res!73981 () Bool)

(assert (=> start!15712 (=> (not res!73981) (not e!102379))))

(declare-fun valid!668 (LongMapFixedSize!1390) Bool)

(assert (=> start!15712 (= res!73981 (valid!668 thiss!1248))))

(assert (=> start!15712 e!102379))

(assert (=> start!15712 e!102377))

(assert (=> start!15712 true))

(declare-fun b!156520 () Bool)

(declare-fun res!73977 () Bool)

(assert (=> b!156520 (=> (not res!73977) (not e!102379))))

(assert (=> b!156520 (= res!73977 (and (= (size!2831 (_values!3120 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7592 thiss!1248))) (= (size!2830 (_keys!4912 thiss!1248)) (size!2831 (_values!3120 thiss!1248))) (bvsge (mask!7592 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2878 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2878 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2878 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2878 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2878 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2878 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2878 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!156521 () Bool)

(declare-fun res!73978 () Bool)

(assert (=> b!156521 (=> (not res!73978) (not e!102379))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!156521 (= res!73978 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!5396 () Bool)

(assert (=> mapIsEmpty!5396 mapRes!5396))

(declare-fun b!156522 () Bool)

(declare-fun res!73980 () Bool)

(assert (=> b!156522 (=> (not res!73980) (not e!102379))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!156522 (= res!73980 (validMask!0 (mask!7592 thiss!1248)))))

(declare-fun b!156523 () Bool)

(declare-fun e!102376 () Bool)

(assert (=> b!156523 (= e!102375 (and e!102376 mapRes!5396))))

(declare-fun condMapEmpty!5396 () Bool)

(declare-fun mapDefault!5396 () ValueCell!1241)

