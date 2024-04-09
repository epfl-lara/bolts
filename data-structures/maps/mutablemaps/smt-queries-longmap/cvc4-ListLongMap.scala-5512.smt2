; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72888 () Bool)

(assert start!72888)

(declare-fun b_free!13775 () Bool)

(declare-fun b_next!13775 () Bool)

(assert (=> start!72888 (= b_free!13775 (not b_next!13775))))

(declare-fun tp!48830 () Bool)

(declare-fun b_and!22879 () Bool)

(assert (=> start!72888 (= tp!48830 b_and!22879)))

(declare-fun b!845521 () Bool)

(declare-fun e!472019 () Bool)

(assert (=> b!845521 (= e!472019 false)))

(declare-datatypes ((V!26261 0))(
  ( (V!26262 (val!8003 Int)) )
))
(declare-datatypes ((tuple2!10470 0))(
  ( (tuple2!10471 (_1!5245 (_ BitVec 64)) (_2!5245 V!26261)) )
))
(declare-datatypes ((List!16381 0))(
  ( (Nil!16378) (Cons!16377 (h!17508 tuple2!10470) (t!22760 List!16381)) )
))
(declare-datatypes ((ListLongMap!9253 0))(
  ( (ListLongMap!9254 (toList!4642 List!16381)) )
))
(declare-fun lt!381378 () ListLongMap!9253)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48024 0))(
  ( (array!48025 (arr!23039 (Array (_ BitVec 32) (_ BitVec 64))) (size!23480 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48024)

(declare-datatypes ((ValueCell!7516 0))(
  ( (ValueCellFull!7516 (v!10424 V!26261)) (EmptyCell!7516) )
))
(declare-datatypes ((array!48026 0))(
  ( (array!48027 (arr!23040 (Array (_ BitVec 32) ValueCell!7516)) (size!23481 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48026)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26261)

(declare-fun zeroValue!654 () V!26261)

(declare-fun getCurrentListMapNoExtraKeys!2631 (array!48024 array!48026 (_ BitVec 32) (_ BitVec 32) V!26261 V!26261 (_ BitVec 32) Int) ListLongMap!9253)

(assert (=> b!845521 (= lt!381378 (getCurrentListMapNoExtraKeys!2631 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!25466 () Bool)

(declare-fun mapRes!25466 () Bool)

(assert (=> mapIsEmpty!25466 mapRes!25466))

(declare-fun b!845522 () Bool)

(declare-fun res!574525 () Bool)

(assert (=> b!845522 (=> (not res!574525) (not e!472019))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!845522 (= res!574525 (validMask!0 mask!1196))))

(declare-fun b!845523 () Bool)

(declare-fun res!574526 () Bool)

(assert (=> b!845523 (=> (not res!574526) (not e!472019))))

(assert (=> b!845523 (= res!574526 (and (= (size!23481 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23480 _keys!868) (size!23481 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!845524 () Bool)

(declare-fun res!574527 () Bool)

(assert (=> b!845524 (=> (not res!574527) (not e!472019))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48024 (_ BitVec 32)) Bool)

(assert (=> b!845524 (= res!574527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25466 () Bool)

(declare-fun tp!48829 () Bool)

(declare-fun e!472018 () Bool)

(assert (=> mapNonEmpty!25466 (= mapRes!25466 (and tp!48829 e!472018))))

(declare-fun mapRest!25466 () (Array (_ BitVec 32) ValueCell!7516))

(declare-fun mapValue!25466 () ValueCell!7516)

(declare-fun mapKey!25466 () (_ BitVec 32))

(assert (=> mapNonEmpty!25466 (= (arr!23040 _values!688) (store mapRest!25466 mapKey!25466 mapValue!25466))))

(declare-fun b!845525 () Bool)

(declare-fun e!472017 () Bool)

(declare-fun e!472020 () Bool)

(assert (=> b!845525 (= e!472017 (and e!472020 mapRes!25466))))

(declare-fun condMapEmpty!25466 () Bool)

(declare-fun mapDefault!25466 () ValueCell!7516)

