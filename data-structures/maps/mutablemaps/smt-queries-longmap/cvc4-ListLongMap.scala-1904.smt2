; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33950 () Bool)

(assert start!33950)

(declare-fun b_free!7097 () Bool)

(declare-fun b_next!7097 () Bool)

(assert (=> start!33950 (= b_free!7097 (not b_next!7097))))

(declare-fun tp!24807 () Bool)

(declare-fun b_and!14303 () Bool)

(assert (=> start!33950 (= tp!24807 b_and!14303)))

(declare-fun b!337882 () Bool)

(declare-fun res!186730 () Bool)

(declare-fun e!207330 () Bool)

(assert (=> b!337882 (=> (not res!186730) (not e!207330))))

(declare-datatypes ((array!17663 0))(
  ( (array!17664 (arr!8355 (Array (_ BitVec 32) (_ BitVec 64))) (size!8707 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17663)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17663 (_ BitVec 32)) Bool)

(assert (=> b!337882 (= res!186730 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!337883 () Bool)

(declare-fun res!186729 () Bool)

(assert (=> b!337883 (=> (not res!186729) (not e!207330))))

(declare-datatypes ((V!10375 0))(
  ( (V!10376 (val!3569 Int)) )
))
(declare-datatypes ((ValueCell!3181 0))(
  ( (ValueCellFull!3181 (v!5731 V!10375)) (EmptyCell!3181) )
))
(declare-datatypes ((array!17665 0))(
  ( (array!17666 (arr!8356 (Array (_ BitVec 32) ValueCell!3181)) (size!8708 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17665)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!337883 (= res!186729 (and (= (size!8708 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8707 _keys!1895) (size!8708 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!11982 () Bool)

(declare-fun mapRes!11982 () Bool)

(declare-fun tp!24806 () Bool)

(declare-fun e!207334 () Bool)

(assert (=> mapNonEmpty!11982 (= mapRes!11982 (and tp!24806 e!207334))))

(declare-fun mapValue!11982 () ValueCell!3181)

(declare-fun mapRest!11982 () (Array (_ BitVec 32) ValueCell!3181))

(declare-fun mapKey!11982 () (_ BitVec 32))

(assert (=> mapNonEmpty!11982 (= (arr!8356 _values!1525) (store mapRest!11982 mapKey!11982 mapValue!11982))))

(declare-fun b!337884 () Bool)

(declare-fun tp_is_empty!7049 () Bool)

(assert (=> b!337884 (= e!207334 tp_is_empty!7049)))

(declare-fun b!337885 () Bool)

(declare-fun res!186726 () Bool)

(assert (=> b!337885 (=> (not res!186726) (not e!207330))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10375)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10375)

(declare-datatypes ((tuple2!5174 0))(
  ( (tuple2!5175 (_1!2597 (_ BitVec 64)) (_2!2597 V!10375)) )
))
(declare-datatypes ((List!4814 0))(
  ( (Nil!4811) (Cons!4810 (h!5666 tuple2!5174) (t!9918 List!4814)) )
))
(declare-datatypes ((ListLongMap!4101 0))(
  ( (ListLongMap!4102 (toList!2066 List!4814)) )
))
(declare-fun contains!2110 (ListLongMap!4101 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1586 (array!17663 array!17665 (_ BitVec 32) (_ BitVec 32) V!10375 V!10375 (_ BitVec 32) Int) ListLongMap!4101)

(assert (=> b!337885 (= res!186726 (not (contains!2110 (getCurrentListMap!1586 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!337886 () Bool)

(declare-datatypes ((Unit!10474 0))(
  ( (Unit!10475) )
))
(declare-fun e!207332 () Unit!10474)

(declare-fun Unit!10476 () Unit!10474)

(assert (=> b!337886 (= e!207332 Unit!10476)))

(declare-fun b!337887 () Bool)

(declare-fun e!207336 () Bool)

(declare-fun e!207331 () Bool)

(assert (=> b!337887 (= e!207336 (and e!207331 mapRes!11982))))

(declare-fun condMapEmpty!11982 () Bool)

(declare-fun mapDefault!11982 () ValueCell!3181)

