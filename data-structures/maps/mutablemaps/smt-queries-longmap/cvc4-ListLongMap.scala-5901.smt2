; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76326 () Bool)

(assert start!76326)

(declare-fun b!895369 () Bool)

(declare-fun b_free!15911 () Bool)

(declare-fun b_next!15911 () Bool)

(assert (=> b!895369 (= b_free!15911 (not b_next!15911))))

(declare-fun tp!55744 () Bool)

(declare-fun b_and!26221 () Bool)

(assert (=> b!895369 (= tp!55744 b_and!26221)))

(declare-fun b!895365 () Bool)

(declare-fun res!605759 () Bool)

(declare-fun e!500317 () Bool)

(assert (=> b!895365 (=> (not res!605759) (not e!500317))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!895365 (= res!605759 (not (= key!785 (bvneg key!785))))))

(declare-fun mapIsEmpty!28954 () Bool)

(declare-fun mapRes!28954 () Bool)

(assert (=> mapIsEmpty!28954 mapRes!28954))

(declare-fun b!895366 () Bool)

(declare-fun e!500320 () Bool)

(declare-fun e!500315 () Bool)

(assert (=> b!895366 (= e!500320 (and e!500315 mapRes!28954))))

(declare-fun condMapEmpty!28954 () Bool)

(declare-datatypes ((array!52466 0))(
  ( (array!52467 (arr!25224 (Array (_ BitVec 32) (_ BitVec 64))) (size!25675 (_ BitVec 32))) )
))
(declare-datatypes ((V!29283 0))(
  ( (V!29284 (val!9170 Int)) )
))
(declare-datatypes ((ValueCell!8638 0))(
  ( (ValueCellFull!8638 (v!11657 V!29283)) (EmptyCell!8638) )
))
(declare-datatypes ((array!52468 0))(
  ( (array!52469 (arr!25225 (Array (_ BitVec 32) ValueCell!8638)) (size!25676 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4292 0))(
  ( (LongMapFixedSize!4293 (defaultEntry!5358 Int) (mask!25950 (_ BitVec 32)) (extraKeys!5054 (_ BitVec 32)) (zeroValue!5158 V!29283) (minValue!5158 V!29283) (_size!2201 (_ BitVec 32)) (_keys!10069 array!52466) (_values!5345 array!52468) (_vacant!2201 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4292)

(declare-fun mapDefault!28954 () ValueCell!8638)

