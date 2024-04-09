; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35048 () Bool)

(assert start!35048)

(declare-fun b_free!7729 () Bool)

(declare-fun b_next!7729 () Bool)

(assert (=> start!35048 (= b_free!7729 (not b_next!7729))))

(declare-fun tp!26765 () Bool)

(declare-fun b_and!14977 () Bool)

(assert (=> start!35048 (= tp!26765 b_and!14977)))

(declare-fun b!351069 () Bool)

(declare-fun res!194756 () Bool)

(declare-fun e!215005 () Bool)

(assert (=> b!351069 (=> (not res!194756) (not e!215005))))

(declare-datatypes ((array!18903 0))(
  ( (array!18904 (arr!8954 (Array (_ BitVec 32) (_ BitVec 64))) (size!9306 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18903)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18903 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!351069 (= res!194756 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!351070 () Bool)

(declare-fun res!194762 () Bool)

(declare-fun e!215006 () Bool)

(assert (=> b!351070 (=> (not res!194762) (not e!215006))))

(declare-datatypes ((V!11219 0))(
  ( (V!11220 (val!3885 Int)) )
))
(declare-fun zeroValue!1467 () V!11219)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3497 0))(
  ( (ValueCellFull!3497 (v!6068 V!11219)) (EmptyCell!3497) )
))
(declare-datatypes ((array!18905 0))(
  ( (array!18906 (arr!8955 (Array (_ BitVec 32) ValueCell!3497)) (size!9307 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18905)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11219)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((tuple2!5596 0))(
  ( (tuple2!5597 (_1!2808 (_ BitVec 64)) (_2!2808 V!11219)) )
))
(declare-datatypes ((List!5234 0))(
  ( (Nil!5231) (Cons!5230 (h!6086 tuple2!5596) (t!10380 List!5234)) )
))
(declare-datatypes ((ListLongMap!4523 0))(
  ( (ListLongMap!4524 (toList!2277 List!5234)) )
))
(declare-fun contains!2342 (ListLongMap!4523 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1794 (array!18903 array!18905 (_ BitVec 32) (_ BitVec 32) V!11219 V!11219 (_ BitVec 32) Int) ListLongMap!4523)

(assert (=> b!351070 (= res!194762 (not (contains!2342 (getCurrentListMap!1794 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!351071 () Bool)

(declare-fun e!215004 () Bool)

(declare-fun e!215008 () Bool)

(declare-fun mapRes!12993 () Bool)

(assert (=> b!351071 (= e!215004 (and e!215008 mapRes!12993))))

(declare-fun condMapEmpty!12993 () Bool)

(declare-fun mapDefault!12993 () ValueCell!3497)

