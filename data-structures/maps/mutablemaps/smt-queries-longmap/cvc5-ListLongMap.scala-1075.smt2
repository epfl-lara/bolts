; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22144 () Bool)

(assert start!22144)

(declare-fun b!230608 () Bool)

(declare-fun b_free!6199 () Bool)

(declare-fun b_next!6199 () Bool)

(assert (=> b!230608 (= b_free!6199 (not b_next!6199))))

(declare-fun tp!21738 () Bool)

(declare-fun b_and!13115 () Bool)

(assert (=> b!230608 (= tp!21738 b_and!13115)))

(declare-fun b!230596 () Bool)

(declare-fun e!149677 () Bool)

(declare-fun e!149675 () Bool)

(declare-fun mapRes!10261 () Bool)

(assert (=> b!230596 (= e!149677 (and e!149675 mapRes!10261))))

(declare-fun condMapEmpty!10261 () Bool)

(declare-datatypes ((V!7729 0))(
  ( (V!7730 (val!3075 Int)) )
))
(declare-datatypes ((ValueCell!2687 0))(
  ( (ValueCellFull!2687 (v!5091 V!7729)) (EmptyCell!2687) )
))
(declare-datatypes ((array!11364 0))(
  ( (array!11365 (arr!5401 (Array (_ BitVec 32) ValueCell!2687)) (size!5734 (_ BitVec 32))) )
))
(declare-datatypes ((array!11366 0))(
  ( (array!11367 (arr!5402 (Array (_ BitVec 32) (_ BitVec 64))) (size!5735 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3274 0))(
  ( (LongMapFixedSize!3275 (defaultEntry!4296 Int) (mask!10190 (_ BitVec 32)) (extraKeys!4033 (_ BitVec 32)) (zeroValue!4137 V!7729) (minValue!4137 V!7729) (_size!1686 (_ BitVec 32)) (_keys!6350 array!11366) (_values!4279 array!11364) (_vacant!1686 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3274)

(declare-fun mapDefault!10261 () ValueCell!2687)

