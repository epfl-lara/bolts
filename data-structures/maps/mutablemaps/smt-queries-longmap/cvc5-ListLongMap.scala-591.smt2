; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15700 () Bool)

(assert start!15700)

(declare-fun b!156356 () Bool)

(declare-fun b_free!3355 () Bool)

(declare-fun b_next!3355 () Bool)

(assert (=> b!156356 (= b_free!3355 (not b_next!3355))))

(declare-fun tp!12589 () Bool)

(declare-fun b_and!9787 () Bool)

(assert (=> b!156356 (= tp!12589 b_and!9787)))

(declare-fun b!156355 () Bool)

(declare-fun res!73890 () Bool)

(declare-fun e!102271 () Bool)

(assert (=> b!156355 (=> (not res!73890) (not e!102271))))

(declare-datatypes ((V!3857 0))(
  ( (V!3858 (val!1623 Int)) )
))
(declare-datatypes ((ValueCell!1235 0))(
  ( (ValueCellFull!1235 (v!3484 V!3857)) (EmptyCell!1235) )
))
(declare-datatypes ((array!5366 0))(
  ( (array!5367 (arr!2540 (Array (_ BitVec 32) (_ BitVec 64))) (size!2818 (_ BitVec 32))) )
))
(declare-datatypes ((array!5368 0))(
  ( (array!5369 (arr!2541 (Array (_ BitVec 32) ValueCell!1235)) (size!2819 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1378 0))(
  ( (LongMapFixedSize!1379 (defaultEntry!3131 Int) (mask!7582 (_ BitVec 32)) (extraKeys!2872 (_ BitVec 32)) (zeroValue!2974 V!3857) (minValue!2974 V!3857) (_size!738 (_ BitVec 32)) (_keys!4906 array!5366) (_values!3114 array!5368) (_vacant!738 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1378)

(assert (=> b!156355 (= res!73890 (and (= (size!2819 (_values!3114 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7582 thiss!1248))) (= (size!2818 (_keys!4906 thiss!1248)) (size!2819 (_values!3114 thiss!1248))) (bvsge (mask!7582 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2872 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2872 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2872 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2872 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (= (bvand (extraKeys!2872 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!2872 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)) (not (= (bvand (bvor (extraKeys!2872 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!5378 () Bool)

(declare-fun mapRes!5378 () Bool)

(declare-fun tp!12590 () Bool)

(declare-fun e!102267 () Bool)

(assert (=> mapNonEmpty!5378 (= mapRes!5378 (and tp!12590 e!102267))))

(declare-fun mapKey!5378 () (_ BitVec 32))

(declare-fun mapRest!5378 () (Array (_ BitVec 32) ValueCell!1235))

(declare-fun mapValue!5378 () ValueCell!1235)

(assert (=> mapNonEmpty!5378 (= (arr!2541 (_values!3114 thiss!1248)) (store mapRest!5378 mapKey!5378 mapValue!5378))))

(declare-fun res!73887 () Bool)

(assert (=> start!15700 (=> (not res!73887) (not e!102271))))

(declare-fun valid!664 (LongMapFixedSize!1378) Bool)

(assert (=> start!15700 (= res!73887 (valid!664 thiss!1248))))

(assert (=> start!15700 e!102271))

(declare-fun e!102270 () Bool)

(assert (=> start!15700 e!102270))

(assert (=> start!15700 true))

(declare-fun tp_is_empty!3157 () Bool)

(declare-fun e!102269 () Bool)

(declare-fun array_inv!1599 (array!5366) Bool)

(declare-fun array_inv!1600 (array!5368) Bool)

(assert (=> b!156356 (= e!102270 (and tp!12589 tp_is_empty!3157 (array_inv!1599 (_keys!4906 thiss!1248)) (array_inv!1600 (_values!3114 thiss!1248)) e!102269))))

(declare-fun b!156357 () Bool)

(declare-fun res!73889 () Bool)

(assert (=> b!156357 (=> (not res!73889) (not e!102271))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5366 (_ BitVec 32)) Bool)

(assert (=> b!156357 (= res!73889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4906 thiss!1248) (mask!7582 thiss!1248)))))

(declare-fun b!156358 () Bool)

(assert (=> b!156358 (= e!102271 false)))

(declare-fun lt!81569 () Bool)

(declare-datatypes ((List!1869 0))(
  ( (Nil!1866) (Cons!1865 (h!2474 (_ BitVec 64)) (t!6679 List!1869)) )
))
(declare-fun arrayNoDuplicates!0 (array!5366 (_ BitVec 32) List!1869) Bool)

(assert (=> b!156358 (= lt!81569 (arrayNoDuplicates!0 (_keys!4906 thiss!1248) #b00000000000000000000000000000000 Nil!1866))))

(declare-fun mapIsEmpty!5378 () Bool)

(assert (=> mapIsEmpty!5378 mapRes!5378))

(declare-fun b!156359 () Bool)

(declare-fun e!102268 () Bool)

(assert (=> b!156359 (= e!102268 tp_is_empty!3157)))

(declare-fun b!156360 () Bool)

(declare-fun res!73891 () Bool)

(assert (=> b!156360 (=> (not res!73891) (not e!102271))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!156360 (= res!73891 (validMask!0 (mask!7582 thiss!1248)))))

(declare-fun b!156361 () Bool)

(assert (=> b!156361 (= e!102267 tp_is_empty!3157)))

(declare-fun b!156362 () Bool)

(declare-fun res!73888 () Bool)

(assert (=> b!156362 (=> (not res!73888) (not e!102271))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!156362 (= res!73888 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!156363 () Bool)

(assert (=> b!156363 (= e!102269 (and e!102268 mapRes!5378))))

(declare-fun condMapEmpty!5378 () Bool)

(declare-fun mapDefault!5378 () ValueCell!1235)

