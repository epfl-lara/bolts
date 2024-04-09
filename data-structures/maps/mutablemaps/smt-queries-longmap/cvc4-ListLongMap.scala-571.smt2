; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15584 () Bool)

(assert start!15584)

(declare-fun b!154909 () Bool)

(declare-fun b_free!3239 () Bool)

(declare-fun b_next!3239 () Bool)

(assert (=> b!154909 (= b_free!3239 (not b_next!3239))))

(declare-fun tp!12241 () Bool)

(declare-fun b_and!9671 () Bool)

(assert (=> b!154909 (= tp!12241 b_and!9671)))

(declare-fun res!73138 () Bool)

(declare-fun e!101205 () Bool)

(assert (=> start!15584 (=> (not res!73138) (not e!101205))))

(declare-datatypes ((V!3701 0))(
  ( (V!3702 (val!1565 Int)) )
))
(declare-datatypes ((ValueCell!1177 0))(
  ( (ValueCellFull!1177 (v!3426 V!3701)) (EmptyCell!1177) )
))
(declare-datatypes ((array!5134 0))(
  ( (array!5135 (arr!2424 (Array (_ BitVec 32) (_ BitVec 64))) (size!2702 (_ BitVec 32))) )
))
(declare-datatypes ((array!5136 0))(
  ( (array!5137 (arr!2425 (Array (_ BitVec 32) ValueCell!1177)) (size!2703 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1262 0))(
  ( (LongMapFixedSize!1263 (defaultEntry!3073 Int) (mask!7484 (_ BitVec 32)) (extraKeys!2814 (_ BitVec 32)) (zeroValue!2916 V!3701) (minValue!2916 V!3701) (_size!680 (_ BitVec 32)) (_keys!4848 array!5134) (_values!3056 array!5136) (_vacant!680 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1262)

(declare-fun valid!616 (LongMapFixedSize!1262) Bool)

(assert (=> start!15584 (= res!73138 (valid!616 thiss!1248))))

(assert (=> start!15584 e!101205))

(declare-fun e!101209 () Bool)

(assert (=> start!15584 e!101209))

(assert (=> start!15584 true))

(declare-fun b!154906 () Bool)

(declare-fun e!101206 () Bool)

(declare-fun tp_is_empty!3041 () Bool)

(assert (=> b!154906 (= e!101206 tp_is_empty!3041)))

(declare-fun b!154907 () Bool)

(declare-fun res!73135 () Bool)

(assert (=> b!154907 (=> (not res!73135) (not e!101205))))

(assert (=> b!154907 (= res!73135 (and (= (size!2703 (_values!3056 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7484 thiss!1248))) (= (size!2702 (_keys!4848 thiss!1248)) (size!2703 (_values!3056 thiss!1248))) (bvsge (mask!7484 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2814 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2814 thiss!1248) #b00000000000000000000000000000011) (bvsge (bvor (extraKeys!2814 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvor (extraKeys!2814 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000011) (= (bvand (extraKeys!2814 thiss!1248) #b00000000000000000000000000000010) (bvand (bvor (extraKeys!2814 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010)) (not (= (bvand (bvor (extraKeys!2814 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!154908 () Bool)

(assert (=> b!154908 (= e!101205 false)))

(declare-fun lt!81332 () Bool)

(declare-datatypes ((List!1829 0))(
  ( (Nil!1826) (Cons!1825 (h!2434 (_ BitVec 64)) (t!6639 List!1829)) )
))
(declare-fun arrayNoDuplicates!0 (array!5134 (_ BitVec 32) List!1829) Bool)

(assert (=> b!154908 (= lt!81332 (arrayNoDuplicates!0 (_keys!4848 thiss!1248) #b00000000000000000000000000000000 Nil!1826))))

(declare-fun e!101210 () Bool)

(declare-fun array_inv!1509 (array!5134) Bool)

(declare-fun array_inv!1510 (array!5136) Bool)

(assert (=> b!154909 (= e!101209 (and tp!12241 tp_is_empty!3041 (array_inv!1509 (_keys!4848 thiss!1248)) (array_inv!1510 (_values!3056 thiss!1248)) e!101210))))

(declare-fun b!154910 () Bool)

(declare-fun res!73134 () Bool)

(assert (=> b!154910 (=> (not res!73134) (not e!101205))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5134 (_ BitVec 32)) Bool)

(assert (=> b!154910 (= res!73134 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4848 thiss!1248) (mask!7484 thiss!1248)))))

(declare-fun mapIsEmpty!5204 () Bool)

(declare-fun mapRes!5204 () Bool)

(assert (=> mapIsEmpty!5204 mapRes!5204))

(declare-fun mapNonEmpty!5204 () Bool)

(declare-fun tp!12242 () Bool)

(declare-fun e!101207 () Bool)

(assert (=> mapNonEmpty!5204 (= mapRes!5204 (and tp!12242 e!101207))))

(declare-fun mapRest!5204 () (Array (_ BitVec 32) ValueCell!1177))

(declare-fun mapValue!5204 () ValueCell!1177)

(declare-fun mapKey!5204 () (_ BitVec 32))

(assert (=> mapNonEmpty!5204 (= (arr!2425 (_values!3056 thiss!1248)) (store mapRest!5204 mapKey!5204 mapValue!5204))))

(declare-fun b!154911 () Bool)

(declare-fun res!73137 () Bool)

(assert (=> b!154911 (=> (not res!73137) (not e!101205))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!154911 (= res!73137 (validMask!0 (mask!7484 thiss!1248)))))

(declare-fun b!154912 () Bool)

(assert (=> b!154912 (= e!101207 tp_is_empty!3041)))

(declare-fun b!154913 () Bool)

(declare-fun res!73136 () Bool)

(assert (=> b!154913 (=> (not res!73136) (not e!101205))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!154913 (= res!73136 (and (= key!828 (bvneg key!828)) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!154914 () Bool)

(assert (=> b!154914 (= e!101210 (and e!101206 mapRes!5204))))

(declare-fun condMapEmpty!5204 () Bool)

(declare-fun mapDefault!5204 () ValueCell!1177)

