; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16340 () Bool)

(assert start!16340)

(declare-fun b!162847 () Bool)

(declare-fun b_free!3779 () Bool)

(declare-fun b_next!3779 () Bool)

(assert (=> b!162847 (= b_free!3779 (not b_next!3779))))

(declare-fun tp!13910 () Bool)

(declare-fun b_and!10211 () Bool)

(assert (=> b!162847 (= tp!13910 b_and!10211)))

(declare-fun b!162846 () Bool)

(declare-fun res!77126 () Bool)

(declare-fun e!106845 () Bool)

(assert (=> b!162846 (=> (not res!77126) (not e!106845))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!162846 (= res!77126 (not (= key!828 (bvneg key!828))))))

(declare-fun e!106849 () Bool)

(declare-fun e!106850 () Bool)

(declare-fun tp_is_empty!3581 () Bool)

(declare-datatypes ((V!4421 0))(
  ( (V!4422 (val!1835 Int)) )
))
(declare-datatypes ((ValueCell!1447 0))(
  ( (ValueCellFull!1447 (v!3696 V!4421)) (EmptyCell!1447) )
))
(declare-datatypes ((array!6242 0))(
  ( (array!6243 (arr!2964 (Array (_ BitVec 32) (_ BitVec 64))) (size!3248 (_ BitVec 32))) )
))
(declare-datatypes ((array!6244 0))(
  ( (array!6245 (arr!2965 (Array (_ BitVec 32) ValueCell!1447)) (size!3249 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1802 0))(
  ( (LongMapFixedSize!1803 (defaultEntry!3343 Int) (mask!7979 (_ BitVec 32)) (extraKeys!3084 (_ BitVec 32)) (zeroValue!3186 V!4421) (minValue!3186 V!4421) (_size!950 (_ BitVec 32)) (_keys!5145 array!6242) (_values!3326 array!6244) (_vacant!950 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1802)

(declare-fun array_inv!1885 (array!6242) Bool)

(declare-fun array_inv!1886 (array!6244) Bool)

(assert (=> b!162847 (= e!106849 (and tp!13910 tp_is_empty!3581 (array_inv!1885 (_keys!5145 thiss!1248)) (array_inv!1886 (_values!3326 thiss!1248)) e!106850))))

(declare-fun mapIsEmpty!6062 () Bool)

(declare-fun mapRes!6062 () Bool)

(assert (=> mapIsEmpty!6062 mapRes!6062))

(declare-fun mapNonEmpty!6062 () Bool)

(declare-fun tp!13909 () Bool)

(declare-fun e!106846 () Bool)

(assert (=> mapNonEmpty!6062 (= mapRes!6062 (and tp!13909 e!106846))))

(declare-fun mapValue!6062 () ValueCell!1447)

(declare-fun mapKey!6062 () (_ BitVec 32))

(declare-fun mapRest!6062 () (Array (_ BitVec 32) ValueCell!1447))

(assert (=> mapNonEmpty!6062 (= (arr!2965 (_values!3326 thiss!1248)) (store mapRest!6062 mapKey!6062 mapValue!6062))))

(declare-fun b!162848 () Bool)

(declare-fun e!106848 () Bool)

(assert (=> b!162848 (= e!106850 (and e!106848 mapRes!6062))))

(declare-fun condMapEmpty!6062 () Bool)

(declare-fun mapDefault!6062 () ValueCell!1447)

