; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34826 () Bool)

(assert start!34826)

(declare-fun b_free!7603 () Bool)

(declare-fun b_next!7603 () Bool)

(assert (=> start!34826 (= b_free!7603 (not b_next!7603))))

(declare-fun tp!26375 () Bool)

(declare-fun b_and!14843 () Bool)

(assert (=> start!34826 (= tp!26375 b_and!14843)))

(declare-fun mapNonEmpty!12792 () Bool)

(declare-fun mapRes!12792 () Bool)

(declare-fun tp!26376 () Bool)

(declare-fun e!213412 () Bool)

(assert (=> mapNonEmpty!12792 (= mapRes!12792 (and tp!26376 e!213412))))

(declare-datatypes ((V!11051 0))(
  ( (V!11052 (val!3822 Int)) )
))
(declare-datatypes ((ValueCell!3434 0))(
  ( (ValueCellFull!3434 (v!6001 V!11051)) (EmptyCell!3434) )
))
(declare-datatypes ((array!18663 0))(
  ( (array!18664 (arr!8838 (Array (_ BitVec 32) ValueCell!3434)) (size!9190 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18663)

(declare-fun mapValue!12792 () ValueCell!3434)

(declare-fun mapKey!12792 () (_ BitVec 32))

(declare-fun mapRest!12792 () (Array (_ BitVec 32) ValueCell!3434))

(assert (=> mapNonEmpty!12792 (= (arr!8838 _values!1525) (store mapRest!12792 mapKey!12792 mapValue!12792))))

(declare-fun b!348306 () Bool)

(declare-fun res!193026 () Bool)

(declare-fun e!213413 () Bool)

(assert (=> b!348306 (=> (not res!193026) (not e!213413))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!11051)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((array!18665 0))(
  ( (array!18666 (arr!8839 (Array (_ BitVec 32) (_ BitVec 64))) (size!9191 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18665)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11051)

(declare-datatypes ((tuple2!5518 0))(
  ( (tuple2!5519 (_1!2769 (_ BitVec 64)) (_2!2769 V!11051)) )
))
(declare-datatypes ((List!5160 0))(
  ( (Nil!5157) (Cons!5156 (h!6012 tuple2!5518) (t!10298 List!5160)) )
))
(declare-datatypes ((ListLongMap!4445 0))(
  ( (ListLongMap!4446 (toList!2238 List!5160)) )
))
(declare-fun contains!2299 (ListLongMap!4445 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1755 (array!18665 array!18663 (_ BitVec 32) (_ BitVec 32) V!11051 V!11051 (_ BitVec 32) Int) ListLongMap!4445)

(assert (=> b!348306 (= res!193026 (not (contains!2299 (getCurrentListMap!1755 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!348307 () Bool)

(declare-fun res!193025 () Bool)

(assert (=> b!348307 (=> (not res!193025) (not e!213413))))

(assert (=> b!348307 (= res!193025 (and (= (size!9190 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9191 _keys!1895) (size!9190 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!12792 () Bool)

(assert (=> mapIsEmpty!12792 mapRes!12792))

(declare-fun b!348308 () Bool)

(declare-fun res!193021 () Bool)

(declare-fun e!213408 () Bool)

(assert (=> b!348308 (=> (not res!193021) (not e!213408))))

(declare-fun arrayContainsKey!0 (array!18665 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!348308 (= res!193021 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!348309 () Bool)

(assert (=> b!348309 (= e!213408 false)))

(declare-fun lt!163850 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18665 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!348309 (= lt!163850 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!348310 () Bool)

(declare-fun e!213409 () Bool)

(declare-fun e!213411 () Bool)

(assert (=> b!348310 (= e!213409 (and e!213411 mapRes!12792))))

(declare-fun condMapEmpty!12792 () Bool)

(declare-fun mapDefault!12792 () ValueCell!3434)

