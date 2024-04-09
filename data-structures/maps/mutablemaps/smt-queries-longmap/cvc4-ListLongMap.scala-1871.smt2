; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33672 () Bool)

(assert start!33672)

(declare-fun b_free!6899 () Bool)

(declare-fun b_next!6899 () Bool)

(assert (=> start!33672 (= b_free!6899 (not b_next!6899))))

(declare-fun tp!24201 () Bool)

(declare-fun b_and!14097 () Bool)

(assert (=> start!33672 (= tp!24201 b_and!14097)))

(declare-fun mapNonEmpty!11673 () Bool)

(declare-fun mapRes!11673 () Bool)

(declare-fun tp!24200 () Bool)

(declare-fun e!205130 () Bool)

(assert (=> mapNonEmpty!11673 (= mapRes!11673 (and tp!24200 e!205130))))

(declare-datatypes ((V!10111 0))(
  ( (V!10112 (val!3470 Int)) )
))
(declare-datatypes ((ValueCell!3082 0))(
  ( (ValueCellFull!3082 (v!5628 V!10111)) (EmptyCell!3082) )
))
(declare-fun mapValue!11673 () ValueCell!3082)

(declare-datatypes ((array!17291 0))(
  ( (array!17292 (arr!8173 (Array (_ BitVec 32) ValueCell!3082)) (size!8525 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17291)

(declare-fun mapKey!11673 () (_ BitVec 32))

(declare-fun mapRest!11673 () (Array (_ BitVec 32) ValueCell!3082))

(assert (=> mapNonEmpty!11673 (= (arr!8173 _values!1525) (store mapRest!11673 mapKey!11673 mapValue!11673))))

(declare-fun b!334135 () Bool)

(declare-fun res!184259 () Bool)

(declare-fun e!205131 () Bool)

(assert (=> b!334135 (=> (not res!184259) (not e!205131))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10111)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((array!17293 0))(
  ( (array!17294 (arr!8174 (Array (_ BitVec 32) (_ BitVec 64))) (size!8526 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17293)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10111)

(declare-datatypes ((tuple2!5042 0))(
  ( (tuple2!5043 (_1!2531 (_ BitVec 64)) (_2!2531 V!10111)) )
))
(declare-datatypes ((List!4684 0))(
  ( (Nil!4681) (Cons!4680 (h!5536 tuple2!5042) (t!9780 List!4684)) )
))
(declare-datatypes ((ListLongMap!3969 0))(
  ( (ListLongMap!3970 (toList!2000 List!4684)) )
))
(declare-fun contains!2040 (ListLongMap!3969 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1523 (array!17293 array!17291 (_ BitVec 32) (_ BitVec 32) V!10111 V!10111 (_ BitVec 32) Int) ListLongMap!3969)

(assert (=> b!334135 (= res!184259 (not (contains!2040 (getCurrentListMap!1523 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!334136 () Bool)

(declare-fun e!205129 () Bool)

(declare-fun e!205133 () Bool)

(assert (=> b!334136 (= e!205129 (and e!205133 mapRes!11673))))

(declare-fun condMapEmpty!11673 () Bool)

(declare-fun mapDefault!11673 () ValueCell!3082)

