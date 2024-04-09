; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16170 () Bool)

(assert start!16170)

(declare-fun b!160972 () Bool)

(declare-fun b_free!3619 () Bool)

(declare-fun b_next!3619 () Bool)

(assert (=> b!160972 (= b_free!3619 (not b_next!3619))))

(declare-fun tp!13426 () Bool)

(declare-fun b_and!10051 () Bool)

(assert (=> b!160972 (= tp!13426 b_and!10051)))

(declare-fun b!160969 () Bool)

(declare-fun res!76328 () Bool)

(declare-fun e!105199 () Bool)

(assert (=> b!160969 (=> (not res!76328) (not e!105199))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!160969 (= res!76328 (not (= key!828 (bvneg key!828))))))

(declare-fun b!160970 () Bool)

(declare-fun e!105201 () Bool)

(declare-fun e!105198 () Bool)

(declare-fun mapRes!5819 () Bool)

(assert (=> b!160970 (= e!105201 (and e!105198 mapRes!5819))))

(declare-fun condMapEmpty!5819 () Bool)

(declare-datatypes ((V!4209 0))(
  ( (V!4210 (val!1755 Int)) )
))
(declare-datatypes ((ValueCell!1367 0))(
  ( (ValueCellFull!1367 (v!3616 V!4209)) (EmptyCell!1367) )
))
(declare-datatypes ((array!5920 0))(
  ( (array!5921 (arr!2804 (Array (_ BitVec 32) (_ BitVec 64))) (size!3088 (_ BitVec 32))) )
))
(declare-datatypes ((array!5922 0))(
  ( (array!5923 (arr!2805 (Array (_ BitVec 32) ValueCell!1367)) (size!3089 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1642 0))(
  ( (LongMapFixedSize!1643 (defaultEntry!3263 Int) (mask!7845 (_ BitVec 32)) (extraKeys!3004 (_ BitVec 32)) (zeroValue!3106 V!4209) (minValue!3106 V!4209) (_size!870 (_ BitVec 32)) (_keys!5064 array!5920) (_values!3246 array!5922) (_vacant!870 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1642)

(declare-fun mapDefault!5819 () ValueCell!1367)

