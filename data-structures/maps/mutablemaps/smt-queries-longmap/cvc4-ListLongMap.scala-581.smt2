; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15644 () Bool)

(assert start!15644)

(declare-fun b!155721 () Bool)

(declare-fun b_free!3299 () Bool)

(declare-fun b_next!3299 () Bool)

(assert (=> b!155721 (= b_free!3299 (not b_next!3299))))

(declare-fun tp!12421 () Bool)

(declare-fun b_and!9731 () Bool)

(assert (=> b!155721 (= tp!12421 b_and!9731)))

(declare-fun b!155716 () Bool)

(declare-fun res!73587 () Bool)

(declare-fun e!101747 () Bool)

(assert (=> b!155716 (=> (not res!73587) (not e!101747))))

(declare-datatypes ((V!3781 0))(
  ( (V!3782 (val!1595 Int)) )
))
(declare-datatypes ((ValueCell!1207 0))(
  ( (ValueCellFull!1207 (v!3456 V!3781)) (EmptyCell!1207) )
))
(declare-datatypes ((array!5254 0))(
  ( (array!5255 (arr!2484 (Array (_ BitVec 32) (_ BitVec 64))) (size!2762 (_ BitVec 32))) )
))
(declare-datatypes ((array!5256 0))(
  ( (array!5257 (arr!2485 (Array (_ BitVec 32) ValueCell!1207)) (size!2763 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1322 0))(
  ( (LongMapFixedSize!1323 (defaultEntry!3103 Int) (mask!7534 (_ BitVec 32)) (extraKeys!2844 (_ BitVec 32)) (zeroValue!2946 V!3781) (minValue!2946 V!3781) (_size!710 (_ BitVec 32)) (_keys!4878 array!5254) (_values!3086 array!5256) (_vacant!710 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1322)

(assert (=> b!155716 (= res!73587 (and (= (size!2763 (_values!3086 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7534 thiss!1248))) (= (size!2762 (_keys!4878 thiss!1248)) (size!2763 (_values!3086 thiss!1248))) (bvsge (mask!7534 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2844 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2844 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2844 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2844 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2844 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2844 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2844 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!5294 () Bool)

(declare-fun mapRes!5294 () Bool)

(declare-fun tp!12422 () Bool)

(declare-fun e!101745 () Bool)

(assert (=> mapNonEmpty!5294 (= mapRes!5294 (and tp!12422 e!101745))))

(declare-fun mapValue!5294 () ValueCell!1207)

(declare-fun mapKey!5294 () (_ BitVec 32))

(declare-fun mapRest!5294 () (Array (_ BitVec 32) ValueCell!1207))

(assert (=> mapNonEmpty!5294 (= (arr!2485 (_values!3086 thiss!1248)) (store mapRest!5294 mapKey!5294 mapValue!5294))))

(declare-fun b!155717 () Bool)

(declare-fun res!73585 () Bool)

(assert (=> b!155717 (=> (not res!73585) (not e!101747))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5254 (_ BitVec 32)) Bool)

(assert (=> b!155717 (= res!73585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4878 thiss!1248) (mask!7534 thiss!1248)))))

(declare-fun res!73588 () Bool)

(assert (=> start!15644 (=> (not res!73588) (not e!101747))))

(declare-fun valid!638 (LongMapFixedSize!1322) Bool)

(assert (=> start!15644 (= res!73588 (valid!638 thiss!1248))))

(assert (=> start!15644 e!101747))

(declare-fun e!101746 () Bool)

(assert (=> start!15644 e!101746))

(assert (=> start!15644 true))

(declare-fun b!155718 () Bool)

(assert (=> b!155718 (= e!101747 false)))

(declare-fun lt!81422 () Bool)

(declare-datatypes ((List!1848 0))(
  ( (Nil!1845) (Cons!1844 (h!2453 (_ BitVec 64)) (t!6658 List!1848)) )
))
(declare-fun arrayNoDuplicates!0 (array!5254 (_ BitVec 32) List!1848) Bool)

(assert (=> b!155718 (= lt!81422 (arrayNoDuplicates!0 (_keys!4878 thiss!1248) #b00000000000000000000000000000000 Nil!1845))))

(declare-fun b!155719 () Bool)

(declare-fun tp_is_empty!3101 () Bool)

(assert (=> b!155719 (= e!101745 tp_is_empty!3101)))

(declare-fun b!155720 () Bool)

(declare-fun res!73586 () Bool)

(assert (=> b!155720 (=> (not res!73586) (not e!101747))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!155720 (= res!73586 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!101748 () Bool)

(declare-fun array_inv!1557 (array!5254) Bool)

(declare-fun array_inv!1558 (array!5256) Bool)

(assert (=> b!155721 (= e!101746 (and tp!12421 tp_is_empty!3101 (array_inv!1557 (_keys!4878 thiss!1248)) (array_inv!1558 (_values!3086 thiss!1248)) e!101748))))

(declare-fun b!155722 () Bool)

(declare-fun res!73584 () Bool)

(assert (=> b!155722 (=> (not res!73584) (not e!101747))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!155722 (= res!73584 (validMask!0 (mask!7534 thiss!1248)))))

(declare-fun b!155723 () Bool)

(declare-fun e!101749 () Bool)

(assert (=> b!155723 (= e!101749 tp_is_empty!3101)))

(declare-fun mapIsEmpty!5294 () Bool)

(assert (=> mapIsEmpty!5294 mapRes!5294))

(declare-fun b!155724 () Bool)

(assert (=> b!155724 (= e!101748 (and e!101749 mapRes!5294))))

(declare-fun condMapEmpty!5294 () Bool)

(declare-fun mapDefault!5294 () ValueCell!1207)

