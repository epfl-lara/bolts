; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22596 () Bool)

(assert start!22596)

(declare-fun b!236067 () Bool)

(declare-fun b_free!6355 () Bool)

(declare-fun b_next!6355 () Bool)

(assert (=> b!236067 (= b_free!6355 (not b_next!6355))))

(declare-fun tp!22241 () Bool)

(declare-fun b_and!13307 () Bool)

(assert (=> b!236067 (= tp!22241 b_and!13307)))

(declare-fun b!236060 () Bool)

(declare-fun e!153328 () Bool)

(declare-fun e!153327 () Bool)

(declare-fun mapRes!10529 () Bool)

(assert (=> b!236060 (= e!153328 (and e!153327 mapRes!10529))))

(declare-fun condMapEmpty!10529 () Bool)

(declare-datatypes ((V!7937 0))(
  ( (V!7938 (val!3153 Int)) )
))
(declare-datatypes ((ValueCell!2765 0))(
  ( (ValueCellFull!2765 (v!5179 V!7937)) (EmptyCell!2765) )
))
(declare-datatypes ((array!11696 0))(
  ( (array!11697 (arr!5557 (Array (_ BitVec 32) ValueCell!2765)) (size!5894 (_ BitVec 32))) )
))
(declare-datatypes ((array!11698 0))(
  ( (array!11699 (arr!5558 (Array (_ BitVec 32) (_ BitVec 64))) (size!5895 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3430 0))(
  ( (LongMapFixedSize!3431 (defaultEntry!4388 Int) (mask!10373 (_ BitVec 32)) (extraKeys!4125 (_ BitVec 32)) (zeroValue!4229 V!7937) (minValue!4229 V!7937) (_size!1764 (_ BitVec 32)) (_keys!6467 array!11698) (_values!4371 array!11696) (_vacant!1764 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3430)

(declare-fun mapDefault!10529 () ValueCell!2765)

