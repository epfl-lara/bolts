; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15698 () Bool)

(assert start!15698)

(declare-fun b!156328 () Bool)

(declare-fun b_free!3353 () Bool)

(declare-fun b_next!3353 () Bool)

(assert (=> b!156328 (= b_free!3353 (not b_next!3353))))

(declare-fun tp!12583 () Bool)

(declare-fun b_and!9785 () Bool)

(assert (=> b!156328 (= tp!12583 b_and!9785)))

(declare-fun e!102253 () Bool)

(declare-datatypes ((V!3853 0))(
  ( (V!3854 (val!1622 Int)) )
))
(declare-datatypes ((ValueCell!1234 0))(
  ( (ValueCellFull!1234 (v!3483 V!3853)) (EmptyCell!1234) )
))
(declare-datatypes ((array!5362 0))(
  ( (array!5363 (arr!2538 (Array (_ BitVec 32) (_ BitVec 64))) (size!2816 (_ BitVec 32))) )
))
(declare-datatypes ((array!5364 0))(
  ( (array!5365 (arr!2539 (Array (_ BitVec 32) ValueCell!1234)) (size!2817 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1376 0))(
  ( (LongMapFixedSize!1377 (defaultEntry!3130 Int) (mask!7579 (_ BitVec 32)) (extraKeys!2871 (_ BitVec 32)) (zeroValue!2973 V!3853) (minValue!2973 V!3853) (_size!737 (_ BitVec 32)) (_keys!4905 array!5362) (_values!3113 array!5364) (_vacant!737 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1376)

(declare-fun e!102251 () Bool)

(declare-fun tp_is_empty!3155 () Bool)

(declare-fun array_inv!1597 (array!5362) Bool)

(declare-fun array_inv!1598 (array!5364) Bool)

(assert (=> b!156328 (= e!102253 (and tp!12583 tp_is_empty!3155 (array_inv!1597 (_keys!4905 thiss!1248)) (array_inv!1598 (_values!3113 thiss!1248)) e!102251))))

(declare-fun b!156329 () Bool)

(declare-fun e!102254 () Bool)

(assert (=> b!156329 (= e!102254 false)))

(declare-fun lt!81566 () Bool)

(declare-datatypes ((List!1868 0))(
  ( (Nil!1865) (Cons!1864 (h!2473 (_ BitVec 64)) (t!6678 List!1868)) )
))
(declare-fun arrayNoDuplicates!0 (array!5362 (_ BitVec 32) List!1868) Bool)

(assert (=> b!156329 (= lt!81566 (arrayNoDuplicates!0 (_keys!4905 thiss!1248) #b00000000000000000000000000000000 Nil!1865))))

(declare-fun b!156330 () Bool)

(declare-fun res!73874 () Bool)

(assert (=> b!156330 (=> (not res!73874) (not e!102254))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5362 (_ BitVec 32)) Bool)

(assert (=> b!156330 (= res!73874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4905 thiss!1248) (mask!7579 thiss!1248)))))

(declare-fun b!156331 () Bool)

(declare-fun res!73873 () Bool)

(assert (=> b!156331 (=> (not res!73873) (not e!102254))))

(assert (=> b!156331 (= res!73873 (and (= (size!2817 (_values!3113 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7579 thiss!1248))) (= (size!2816 (_keys!4905 thiss!1248)) (size!2817 (_values!3113 thiss!1248))) (bvsge (mask!7579 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2871 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2871 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2871 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2871 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2871 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2871 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2871 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!156332 () Bool)

(declare-fun e!102250 () Bool)

(assert (=> b!156332 (= e!102250 tp_is_empty!3155)))

(declare-fun res!73872 () Bool)

(assert (=> start!15698 (=> (not res!73872) (not e!102254))))

(declare-fun valid!663 (LongMapFixedSize!1376) Bool)

(assert (=> start!15698 (= res!73872 (valid!663 thiss!1248))))

(assert (=> start!15698 e!102254))

(assert (=> start!15698 e!102253))

(assert (=> start!15698 true))

(declare-fun mapIsEmpty!5375 () Bool)

(declare-fun mapRes!5375 () Bool)

(assert (=> mapIsEmpty!5375 mapRes!5375))

(declare-fun b!156333 () Bool)

(declare-fun e!102249 () Bool)

(assert (=> b!156333 (= e!102251 (and e!102249 mapRes!5375))))

(declare-fun condMapEmpty!5375 () Bool)

(declare-fun mapDefault!5375 () ValueCell!1234)

