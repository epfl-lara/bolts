; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22220 () Bool)

(assert start!22220)

(declare-fun b!232903 () Bool)

(declare-fun b_free!6275 () Bool)

(declare-fun b_next!6275 () Bool)

(assert (=> b!232903 (= b_free!6275 (not b_next!6275))))

(declare-fun tp!21966 () Bool)

(declare-fun b_and!13191 () Bool)

(assert (=> b!232903 (= tp!21966 b_and!13191)))

(declare-fun b!232893 () Bool)

(declare-fun e!151283 () Bool)

(declare-fun e!151288 () Bool)

(declare-fun mapRes!10375 () Bool)

(assert (=> b!232893 (= e!151283 (and e!151288 mapRes!10375))))

(declare-fun condMapEmpty!10375 () Bool)

(declare-datatypes ((V!7829 0))(
  ( (V!7830 (val!3113 Int)) )
))
(declare-datatypes ((ValueCell!2725 0))(
  ( (ValueCellFull!2725 (v!5129 V!7829)) (EmptyCell!2725) )
))
(declare-datatypes ((array!11516 0))(
  ( (array!11517 (arr!5477 (Array (_ BitVec 32) ValueCell!2725)) (size!5810 (_ BitVec 32))) )
))
(declare-datatypes ((array!11518 0))(
  ( (array!11519 (arr!5478 (Array (_ BitVec 32) (_ BitVec 64))) (size!5811 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3350 0))(
  ( (LongMapFixedSize!3351 (defaultEntry!4334 Int) (mask!10252 (_ BitVec 32)) (extraKeys!4071 (_ BitVec 32)) (zeroValue!4175 V!7829) (minValue!4175 V!7829) (_size!1724 (_ BitVec 32)) (_keys!6388 array!11518) (_values!4317 array!11516) (_vacant!1724 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3350)

(declare-fun mapDefault!10375 () ValueCell!2725)

