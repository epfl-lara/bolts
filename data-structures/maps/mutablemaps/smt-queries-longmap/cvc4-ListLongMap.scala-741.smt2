; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17254 () Bool)

(assert start!17254)

(declare-fun b!172915 () Bool)

(declare-fun b_free!4289 () Bool)

(declare-fun b_next!4289 () Bool)

(assert (=> b!172915 (= b_free!4289 (not b_next!4289))))

(declare-fun tp!15524 () Bool)

(declare-fun b_and!10747 () Bool)

(assert (=> b!172915 (= tp!15524 b_and!10747)))

(declare-fun b!172909 () Bool)

(declare-fun e!114203 () Bool)

(declare-fun tp_is_empty!4061 () Bool)

(assert (=> b!172909 (= e!114203 tp_is_empty!4061)))

(declare-fun mapNonEmpty!6912 () Bool)

(declare-fun mapRes!6912 () Bool)

(declare-fun tp!15525 () Bool)

(assert (=> mapNonEmpty!6912 (= mapRes!6912 (and tp!15525 e!114203))))

(declare-datatypes ((V!5061 0))(
  ( (V!5062 (val!2075 Int)) )
))
(declare-datatypes ((ValueCell!1687 0))(
  ( (ValueCellFull!1687 (v!3939 V!5061)) (EmptyCell!1687) )
))
(declare-fun mapValue!6912 () ValueCell!1687)

(declare-datatypes ((array!7248 0))(
  ( (array!7249 (arr!3444 (Array (_ BitVec 32) (_ BitVec 64))) (size!3743 (_ BitVec 32))) )
))
(declare-datatypes ((array!7250 0))(
  ( (array!7251 (arr!3445 (Array (_ BitVec 32) ValueCell!1687)) (size!3744 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2282 0))(
  ( (LongMapFixedSize!2283 (defaultEntry!3587 Int) (mask!8447 (_ BitVec 32)) (extraKeys!3326 (_ BitVec 32)) (zeroValue!3428 V!5061) (minValue!3430 V!5061) (_size!1190 (_ BitVec 32)) (_keys!5426 array!7248) (_values!3570 array!7250) (_vacant!1190 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2282)

(declare-fun mapKey!6912 () (_ BitVec 32))

(declare-fun mapRest!6912 () (Array (_ BitVec 32) ValueCell!1687))

(assert (=> mapNonEmpty!6912 (= (arr!3445 (_values!3570 thiss!1248)) (store mapRest!6912 mapKey!6912 mapValue!6912))))

(declare-fun b!172911 () Bool)

(declare-fun res!82109 () Bool)

(declare-fun e!114201 () Bool)

(assert (=> b!172911 (=> (not res!82109) (not e!114201))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!172911 (= res!82109 (and (= key!828 (bvneg key!828)) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!172912 () Bool)

(declare-fun res!82110 () Bool)

(assert (=> b!172912 (=> (not res!82110) (not e!114201))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!172912 (= res!82110 (validMask!0 (mask!8447 thiss!1248)))))

(declare-fun b!172913 () Bool)

(assert (=> b!172913 (= e!114201 (and (= (size!3744 (_values!3570 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8447 thiss!1248))) (= (size!3743 (_keys!5426 thiss!1248)) (size!3744 (_values!3570 thiss!1248))) (bvsge (mask!8447 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3326 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3326 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!3326 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!3326 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000011) (not (= (bvand (extraKeys!3326 thiss!1248) #b00000000000000000000000000000001) (bvand (bvor (extraKeys!3326 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000001)))))))

(declare-fun b!172914 () Bool)

(declare-fun e!114202 () Bool)

(assert (=> b!172914 (= e!114202 tp_is_empty!4061)))

(declare-fun res!82108 () Bool)

(assert (=> start!17254 (=> (not res!82108) (not e!114201))))

(declare-fun valid!959 (LongMapFixedSize!2282) Bool)

(assert (=> start!17254 (= res!82108 (valid!959 thiss!1248))))

(assert (=> start!17254 e!114201))

(declare-fun e!114205 () Bool)

(assert (=> start!17254 e!114205))

(assert (=> start!17254 true))

(declare-fun b!172910 () Bool)

(declare-fun e!114200 () Bool)

(assert (=> b!172910 (= e!114200 (and e!114202 mapRes!6912))))

(declare-fun condMapEmpty!6912 () Bool)

(declare-fun mapDefault!6912 () ValueCell!1687)

