; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16612 () Bool)

(assert start!16612)

(declare-fun b!165531 () Bool)

(declare-fun b_free!3905 () Bool)

(declare-fun b_next!3905 () Bool)

(assert (=> b!165531 (= b_free!3905 (not b_next!3905))))

(declare-fun tp!14315 () Bool)

(declare-fun b_and!10337 () Bool)

(assert (=> b!165531 (= tp!14315 b_and!10337)))

(declare-fun b!165525 () Bool)

(declare-fun res!78569 () Bool)

(declare-fun e!108590 () Bool)

(assert (=> b!165525 (=> (not res!78569) (not e!108590))))

(declare-datatypes ((V!4589 0))(
  ( (V!4590 (val!1898 Int)) )
))
(declare-datatypes ((ValueCell!1510 0))(
  ( (ValueCellFull!1510 (v!3759 V!4589)) (EmptyCell!1510) )
))
(declare-datatypes ((array!6510 0))(
  ( (array!6511 (arr!3090 (Array (_ BitVec 32) (_ BitVec 64))) (size!3378 (_ BitVec 32))) )
))
(declare-datatypes ((array!6512 0))(
  ( (array!6513 (arr!3091 (Array (_ BitVec 32) ValueCell!1510)) (size!3379 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1928 0))(
  ( (LongMapFixedSize!1929 (defaultEntry!3406 Int) (mask!8119 (_ BitVec 32)) (extraKeys!3147 (_ BitVec 32)) (zeroValue!3249 V!4589) (minValue!3249 V!4589) (_size!1013 (_ BitVec 32)) (_keys!5231 array!6510) (_values!3389 array!6512) (_vacant!1013 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1928)

(assert (=> b!165525 (= res!78569 (and (= (size!3379 (_values!3389 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8119 thiss!1248))) (= (size!3378 (_keys!5231 thiss!1248)) (size!3379 (_values!3389 thiss!1248))) (bvsge (mask!8119 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3147 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3147 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!165526 () Bool)

(assert (=> b!165526 (= e!108590 false)))

(declare-fun lt!83116 () Bool)

(declare-datatypes ((List!2080 0))(
  ( (Nil!2077) (Cons!2076 (h!2693 (_ BitVec 64)) (t!6890 List!2080)) )
))
(declare-fun arrayNoDuplicates!0 (array!6510 (_ BitVec 32) List!2080) Bool)

(assert (=> b!165526 (= lt!83116 (arrayNoDuplicates!0 (_keys!5231 thiss!1248) #b00000000000000000000000000000000 Nil!2077))))

(declare-fun b!165527 () Bool)

(declare-fun e!108589 () Bool)

(declare-fun tp_is_empty!3707 () Bool)

(assert (=> b!165527 (= e!108589 tp_is_empty!3707)))

(declare-fun b!165528 () Bool)

(declare-fun res!78568 () Bool)

(declare-fun e!108591 () Bool)

(assert (=> b!165528 (=> (not res!78568) (not e!108591))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!165528 (= res!78568 (not (= key!828 (bvneg key!828))))))

(declare-fun b!165529 () Bool)

(declare-fun e!108586 () Bool)

(declare-fun e!108592 () Bool)

(declare-fun mapRes!6279 () Bool)

(assert (=> b!165529 (= e!108586 (and e!108592 mapRes!6279))))

(declare-fun condMapEmpty!6279 () Bool)

(declare-fun mapDefault!6279 () ValueCell!1510)

