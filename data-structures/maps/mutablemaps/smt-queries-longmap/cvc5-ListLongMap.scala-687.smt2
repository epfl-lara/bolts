; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16638 () Bool)

(assert start!16638)

(declare-fun b!165964 () Bool)

(declare-fun b_free!3931 () Bool)

(declare-fun b_next!3931 () Bool)

(assert (=> b!165964 (= b_free!3931 (not b_next!3931))))

(declare-fun tp!14394 () Bool)

(declare-fun b_and!10363 () Bool)

(assert (=> b!165964 (= tp!14394 b_and!10363)))

(declare-fun b!165954 () Bool)

(declare-fun e!108862 () Bool)

(declare-fun e!108863 () Bool)

(declare-fun mapRes!6318 () Bool)

(assert (=> b!165954 (= e!108862 (and e!108863 mapRes!6318))))

(declare-fun condMapEmpty!6318 () Bool)

(declare-datatypes ((V!4625 0))(
  ( (V!4626 (val!1911 Int)) )
))
(declare-datatypes ((ValueCell!1523 0))(
  ( (ValueCellFull!1523 (v!3772 V!4625)) (EmptyCell!1523) )
))
(declare-datatypes ((array!6562 0))(
  ( (array!6563 (arr!3116 (Array (_ BitVec 32) (_ BitVec 64))) (size!3404 (_ BitVec 32))) )
))
(declare-datatypes ((array!6564 0))(
  ( (array!6565 (arr!3117 (Array (_ BitVec 32) ValueCell!1523)) (size!3405 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1954 0))(
  ( (LongMapFixedSize!1955 (defaultEntry!3419 Int) (mask!8142 (_ BitVec 32)) (extraKeys!3160 (_ BitVec 32)) (zeroValue!3262 V!4625) (minValue!3262 V!4625) (_size!1026 (_ BitVec 32)) (_keys!5244 array!6562) (_values!3402 array!6564) (_vacant!1026 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1954)

(declare-fun mapDefault!6318 () ValueCell!1523)

