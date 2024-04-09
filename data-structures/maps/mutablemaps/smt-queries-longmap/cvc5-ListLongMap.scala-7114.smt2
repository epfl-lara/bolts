; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90198 () Bool)

(assert start!90198)

(declare-fun b!1032561 () Bool)

(declare-fun b_free!20737 () Bool)

(declare-fun b_next!20737 () Bool)

(assert (=> b!1032561 (= b_free!20737 (not b_next!20737))))

(declare-fun tp!73291 () Bool)

(declare-fun b_and!33223 () Bool)

(assert (=> b!1032561 (= tp!73291 b_and!33223)))

(declare-fun mapNonEmpty!38147 () Bool)

(declare-fun mapRes!38147 () Bool)

(declare-fun tp!73290 () Bool)

(declare-fun e!583509 () Bool)

(assert (=> mapNonEmpty!38147 (= mapRes!38147 (and tp!73290 e!583509))))

(declare-datatypes ((V!37483 0))(
  ( (V!37484 (val!12279 Int)) )
))
(declare-datatypes ((ValueCell!11525 0))(
  ( (ValueCellFull!11525 (v!14857 V!37483)) (EmptyCell!11525) )
))
(declare-fun mapValue!38147 () ValueCell!11525)

(declare-datatypes ((array!64966 0))(
  ( (array!64967 (arr!31279 (Array (_ BitVec 32) (_ BitVec 64))) (size!31799 (_ BitVec 32))) )
))
(declare-datatypes ((array!64968 0))(
  ( (array!64969 (arr!31280 (Array (_ BitVec 32) ValueCell!11525)) (size!31800 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5644 0))(
  ( (LongMapFixedSize!5645 (defaultEntry!6196 Int) (mask!30017 (_ BitVec 32)) (extraKeys!5928 (_ BitVec 32)) (zeroValue!6032 V!37483) (minValue!6032 V!37483) (_size!2877 (_ BitVec 32)) (_keys!11368 array!64966) (_values!6219 array!64968) (_vacant!2877 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5644)

(declare-fun mapRest!38147 () (Array (_ BitVec 32) ValueCell!11525))

(declare-fun mapKey!38147 () (_ BitVec 32))

(assert (=> mapNonEmpty!38147 (= (arr!31280 (_values!6219 thiss!1427)) (store mapRest!38147 mapKey!38147 mapValue!38147))))

(declare-fun mapIsEmpty!38147 () Bool)

(assert (=> mapIsEmpty!38147 mapRes!38147))

(declare-fun b!1032559 () Bool)

(declare-fun e!583508 () Bool)

(declare-fun tp_is_empty!24457 () Bool)

(assert (=> b!1032559 (= e!583508 tp_is_empty!24457)))

(declare-fun b!1032560 () Bool)

(assert (=> b!1032560 (= e!583509 tp_is_empty!24457)))

(declare-fun b!1032562 () Bool)

(declare-fun e!583506 () Bool)

(assert (=> b!1032562 (= e!583506 (and e!583508 mapRes!38147))))

(declare-fun condMapEmpty!38147 () Bool)

(declare-fun mapDefault!38147 () ValueCell!11525)

