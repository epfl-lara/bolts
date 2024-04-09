; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15676 () Bool)

(assert start!15676)

(declare-fun b!156034 () Bool)

(declare-fun b_free!3331 () Bool)

(declare-fun b_next!3331 () Bool)

(assert (=> b!156034 (= b_free!3331 (not b_next!3331))))

(declare-fun tp!12518 () Bool)

(declare-fun b_and!9763 () Bool)

(assert (=> b!156034 (= tp!12518 b_and!9763)))

(declare-fun b!156031 () Bool)

(declare-fun res!73707 () Bool)

(declare-fun e!102053 () Bool)

(assert (=> b!156031 (=> (not res!73707) (not e!102053))))

(declare-datatypes ((V!3825 0))(
  ( (V!3826 (val!1611 Int)) )
))
(declare-datatypes ((ValueCell!1223 0))(
  ( (ValueCellFull!1223 (v!3472 V!3825)) (EmptyCell!1223) )
))
(declare-datatypes ((array!5318 0))(
  ( (array!5319 (arr!2516 (Array (_ BitVec 32) (_ BitVec 64))) (size!2794 (_ BitVec 32))) )
))
(declare-datatypes ((array!5320 0))(
  ( (array!5321 (arr!2517 (Array (_ BitVec 32) ValueCell!1223)) (size!2795 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1354 0))(
  ( (LongMapFixedSize!1355 (defaultEntry!3119 Int) (mask!7562 (_ BitVec 32)) (extraKeys!2860 (_ BitVec 32)) (zeroValue!2962 V!3825) (minValue!2962 V!3825) (_size!726 (_ BitVec 32)) (_keys!4894 array!5318) (_values!3102 array!5320) (_vacant!726 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1354)

(assert (=> b!156031 (= res!73707 (and (= (size!2795 (_values!3102 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7562 thiss!1248))) (= (size!2794 (_keys!4894 thiss!1248)) (size!2795 (_values!3102 thiss!1248))) (bvsge (mask!7562 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2860 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2860 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2860 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2860 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2860 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2860 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2860 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!5342 () Bool)

(declare-fun mapRes!5342 () Bool)

(assert (=> mapIsEmpty!5342 mapRes!5342))

(declare-fun b!156032 () Bool)

(declare-fun e!102051 () Bool)

(declare-fun tp_is_empty!3133 () Bool)

(assert (=> b!156032 (= e!102051 tp_is_empty!3133)))

(declare-fun mapNonEmpty!5342 () Bool)

(declare-fun tp!12517 () Bool)

(declare-fun e!102054 () Bool)

(assert (=> mapNonEmpty!5342 (= mapRes!5342 (and tp!12517 e!102054))))

(declare-fun mapRest!5342 () (Array (_ BitVec 32) ValueCell!1223))

(declare-fun mapValue!5342 () ValueCell!1223)

(declare-fun mapKey!5342 () (_ BitVec 32))

(assert (=> mapNonEmpty!5342 (= (arr!2517 (_values!3102 thiss!1248)) (store mapRest!5342 mapKey!5342 mapValue!5342))))

(declare-fun res!73710 () Bool)

(assert (=> start!15676 (=> (not res!73710) (not e!102053))))

(declare-fun valid!654 (LongMapFixedSize!1354) Bool)

(assert (=> start!15676 (= res!73710 (valid!654 thiss!1248))))

(assert (=> start!15676 e!102053))

(declare-fun e!102052 () Bool)

(assert (=> start!15676 e!102052))

(assert (=> start!15676 true))

(declare-fun b!156033 () Bool)

(declare-fun res!73708 () Bool)

(assert (=> b!156033 (=> (not res!73708) (not e!102053))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5318 (_ BitVec 32)) Bool)

(assert (=> b!156033 (= res!73708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4894 thiss!1248) (mask!7562 thiss!1248)))))

(declare-fun e!102055 () Bool)

(declare-fun array_inv!1579 (array!5318) Bool)

(declare-fun array_inv!1580 (array!5320) Bool)

(assert (=> b!156034 (= e!102052 (and tp!12518 tp_is_empty!3133 (array_inv!1579 (_keys!4894 thiss!1248)) (array_inv!1580 (_values!3102 thiss!1248)) e!102055))))

(declare-fun b!156035 () Bool)

(declare-fun res!73709 () Bool)

(assert (=> b!156035 (=> (not res!73709) (not e!102053))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!156035 (= res!73709 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!156036 () Bool)

(assert (=> b!156036 (= e!102054 tp_is_empty!3133)))

(declare-fun b!156037 () Bool)

(assert (=> b!156037 (= e!102053 false)))

(declare-fun lt!81533 () Bool)

(declare-datatypes ((List!1862 0))(
  ( (Nil!1859) (Cons!1858 (h!2467 (_ BitVec 64)) (t!6672 List!1862)) )
))
(declare-fun arrayNoDuplicates!0 (array!5318 (_ BitVec 32) List!1862) Bool)

(assert (=> b!156037 (= lt!81533 (arrayNoDuplicates!0 (_keys!4894 thiss!1248) #b00000000000000000000000000000000 Nil!1859))))

(declare-fun b!156038 () Bool)

(assert (=> b!156038 (= e!102055 (and e!102051 mapRes!5342))))

(declare-fun condMapEmpty!5342 () Bool)

(declare-fun mapDefault!5342 () ValueCell!1223)

