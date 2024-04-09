; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72870 () Bool)

(assert start!72870)

(declare-fun b_free!13757 () Bool)

(declare-fun b_next!13757 () Bool)

(assert (=> start!72870 (= b_free!13757 (not b_next!13757))))

(declare-fun tp!48776 () Bool)

(declare-fun b_and!22861 () Bool)

(assert (=> start!72870 (= tp!48776 b_and!22861)))

(declare-fun b!845224 () Bool)

(declare-fun res!574311 () Bool)

(declare-fun e!471883 () Bool)

(assert (=> b!845224 (=> (not res!574311) (not e!471883))))

(declare-datatypes ((array!47990 0))(
  ( (array!47991 (arr!23022 (Array (_ BitVec 32) (_ BitVec 64))) (size!23463 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47990)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47990 (_ BitVec 32)) Bool)

(assert (=> b!845224 (= res!574311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!845225 () Bool)

(declare-fun res!574312 () Bool)

(assert (=> b!845225 (=> (not res!574312) (not e!471883))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!845225 (= res!574312 (and (= (select (arr!23022 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!845226 () Bool)

(declare-fun e!471882 () Bool)

(declare-fun tp_is_empty!15893 () Bool)

(assert (=> b!845226 (= e!471882 tp_is_empty!15893)))

(declare-fun mapIsEmpty!25439 () Bool)

(declare-fun mapRes!25439 () Bool)

(assert (=> mapIsEmpty!25439 mapRes!25439))

(declare-fun b!845227 () Bool)

(assert (=> b!845227 (= e!471883 false)))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!26237 0))(
  ( (V!26238 (val!7994 Int)) )
))
(declare-datatypes ((tuple2!10456 0))(
  ( (tuple2!10457 (_1!5238 (_ BitVec 64)) (_2!5238 V!26237)) )
))
(declare-datatypes ((List!16369 0))(
  ( (Nil!16366) (Cons!16365 (h!17496 tuple2!10456) (t!22748 List!16369)) )
))
(declare-datatypes ((ListLongMap!9239 0))(
  ( (ListLongMap!9240 (toList!4635 List!16369)) )
))
(declare-fun lt!381351 () ListLongMap!9239)

(declare-datatypes ((ValueCell!7507 0))(
  ( (ValueCellFull!7507 (v!10415 V!26237)) (EmptyCell!7507) )
))
(declare-datatypes ((array!47992 0))(
  ( (array!47993 (arr!23023 (Array (_ BitVec 32) ValueCell!7507)) (size!23464 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47992)

(declare-fun minValue!654 () V!26237)

(declare-fun zeroValue!654 () V!26237)

(declare-fun getCurrentListMapNoExtraKeys!2624 (array!47990 array!47992 (_ BitVec 32) (_ BitVec 32) V!26237 V!26237 (_ BitVec 32) Int) ListLongMap!9239)

(assert (=> b!845227 (= lt!381351 (getCurrentListMapNoExtraKeys!2624 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!845228 () Bool)

(declare-fun e!471881 () Bool)

(declare-fun e!471884 () Bool)

(assert (=> b!845228 (= e!471881 (and e!471884 mapRes!25439))))

(declare-fun condMapEmpty!25439 () Bool)

(declare-fun mapDefault!25439 () ValueCell!7507)

