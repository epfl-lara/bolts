; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15682 () Bool)

(assert start!15682)

(declare-fun b!156115 () Bool)

(declare-fun b_free!3337 () Bool)

(declare-fun b_next!3337 () Bool)

(assert (=> b!156115 (= b_free!3337 (not b_next!3337))))

(declare-fun tp!12535 () Bool)

(declare-fun b_and!9769 () Bool)

(assert (=> b!156115 (= tp!12535 b_and!9769)))

(declare-fun mapIsEmpty!5351 () Bool)

(declare-fun mapRes!5351 () Bool)

(assert (=> mapIsEmpty!5351 mapRes!5351))

(declare-fun b!156112 () Bool)

(declare-fun res!73754 () Bool)

(declare-fun e!102105 () Bool)

(assert (=> b!156112 (=> (not res!73754) (not e!102105))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!156112 (= res!73754 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!156113 () Bool)

(declare-fun res!73752 () Bool)

(assert (=> b!156113 (=> (not res!73752) (not e!102105))))

(declare-datatypes ((V!3833 0))(
  ( (V!3834 (val!1614 Int)) )
))
(declare-datatypes ((ValueCell!1226 0))(
  ( (ValueCellFull!1226 (v!3475 V!3833)) (EmptyCell!1226) )
))
(declare-datatypes ((array!5330 0))(
  ( (array!5331 (arr!2522 (Array (_ BitVec 32) (_ BitVec 64))) (size!2800 (_ BitVec 32))) )
))
(declare-datatypes ((array!5332 0))(
  ( (array!5333 (arr!2523 (Array (_ BitVec 32) ValueCell!1226)) (size!2801 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1360 0))(
  ( (LongMapFixedSize!1361 (defaultEntry!3122 Int) (mask!7567 (_ BitVec 32)) (extraKeys!2863 (_ BitVec 32)) (zeroValue!2965 V!3833) (minValue!2965 V!3833) (_size!729 (_ BitVec 32)) (_keys!4897 array!5330) (_values!3105 array!5332) (_vacant!729 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1360)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5330 (_ BitVec 32)) Bool)

(assert (=> b!156113 (= res!73752 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4897 thiss!1248) (mask!7567 thiss!1248)))))

(declare-fun b!156114 () Bool)

(assert (=> b!156114 (= e!102105 false)))

(declare-fun lt!81542 () Bool)

(declare-datatypes ((List!1864 0))(
  ( (Nil!1861) (Cons!1860 (h!2469 (_ BitVec 64)) (t!6674 List!1864)) )
))
(declare-fun arrayNoDuplicates!0 (array!5330 (_ BitVec 32) List!1864) Bool)

(assert (=> b!156114 (= lt!81542 (arrayNoDuplicates!0 (_keys!4897 thiss!1248) #b00000000000000000000000000000000 Nil!1861))))

(declare-fun res!73756 () Bool)

(assert (=> start!15682 (=> (not res!73756) (not e!102105))))

(declare-fun valid!657 (LongMapFixedSize!1360) Bool)

(assert (=> start!15682 (= res!73756 (valid!657 thiss!1248))))

(assert (=> start!15682 e!102105))

(declare-fun e!102107 () Bool)

(assert (=> start!15682 e!102107))

(assert (=> start!15682 true))

(declare-fun e!102110 () Bool)

(declare-fun tp_is_empty!3139 () Bool)

(declare-fun array_inv!1585 (array!5330) Bool)

(declare-fun array_inv!1586 (array!5332) Bool)

(assert (=> b!156115 (= e!102107 (and tp!12535 tp_is_empty!3139 (array_inv!1585 (_keys!4897 thiss!1248)) (array_inv!1586 (_values!3105 thiss!1248)) e!102110))))

(declare-fun b!156116 () Bool)

(declare-fun res!73755 () Bool)

(assert (=> b!156116 (=> (not res!73755) (not e!102105))))

(assert (=> b!156116 (= res!73755 (and (= (size!2801 (_values!3105 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7567 thiss!1248))) (= (size!2800 (_keys!4897 thiss!1248)) (size!2801 (_values!3105 thiss!1248))) (bvsge (mask!7567 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2863 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2863 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2863 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2863 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2863 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2863 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2863 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!156117 () Bool)

(declare-fun e!102106 () Bool)

(assert (=> b!156117 (= e!102110 (and e!102106 mapRes!5351))))

(declare-fun condMapEmpty!5351 () Bool)

(declare-fun mapDefault!5351 () ValueCell!1226)

