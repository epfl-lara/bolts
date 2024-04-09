; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72978 () Bool)

(assert start!72978)

(declare-fun b_free!13865 () Bool)

(declare-fun b_next!13865 () Bool)

(assert (=> start!72978 (= b_free!13865 (not b_next!13865))))

(declare-fun tp!49099 () Bool)

(declare-fun b_and!22969 () Bool)

(assert (=> start!72978 (= tp!49099 b_and!22969)))

(declare-fun b!847006 () Bool)

(declare-fun res!575604 () Bool)

(declare-fun e!472692 () Bool)

(assert (=> b!847006 (=> (not res!575604) (not e!472692))))

(declare-datatypes ((array!48198 0))(
  ( (array!48199 (arr!23126 (Array (_ BitVec 32) (_ BitVec 64))) (size!23567 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48198)

(declare-datatypes ((List!16439 0))(
  ( (Nil!16436) (Cons!16435 (h!17566 (_ BitVec 64)) (t!22818 List!16439)) )
))
(declare-fun arrayNoDuplicates!0 (array!48198 (_ BitVec 32) List!16439) Bool)

(assert (=> b!847006 (= res!575604 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16436))))

(declare-fun mapIsEmpty!25601 () Bool)

(declare-fun mapRes!25601 () Bool)

(assert (=> mapIsEmpty!25601 mapRes!25601))

(declare-fun b!847007 () Bool)

(assert (=> b!847007 (= e!472692 false)))

(declare-datatypes ((V!26381 0))(
  ( (V!26382 (val!8048 Int)) )
))
(declare-fun v!557 () V!26381)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7561 0))(
  ( (ValueCellFull!7561 (v!10469 V!26381)) (EmptyCell!7561) )
))
(declare-datatypes ((array!48200 0))(
  ( (array!48201 (arr!23127 (Array (_ BitVec 32) ValueCell!7561)) (size!23568 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48200)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26381)

(declare-fun zeroValue!654 () V!26381)

(declare-datatypes ((tuple2!10526 0))(
  ( (tuple2!10527 (_1!5273 (_ BitVec 64)) (_2!5273 V!26381)) )
))
(declare-datatypes ((List!16440 0))(
  ( (Nil!16437) (Cons!16436 (h!17567 tuple2!10526) (t!22819 List!16440)) )
))
(declare-datatypes ((ListLongMap!9309 0))(
  ( (ListLongMap!9310 (toList!4670 List!16440)) )
))
(declare-fun lt!381612 () ListLongMap!9309)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2659 (array!48198 array!48200 (_ BitVec 32) (_ BitVec 32) V!26381 V!26381 (_ BitVec 32) Int) ListLongMap!9309)

(assert (=> b!847007 (= lt!381612 (getCurrentListMapNoExtraKeys!2659 _keys!868 (array!48201 (store (arr!23127 _values!688) i!612 (ValueCellFull!7561 v!557)) (size!23568 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!381611 () ListLongMap!9309)

(assert (=> b!847007 (= lt!381611 (getCurrentListMapNoExtraKeys!2659 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!847008 () Bool)

(declare-fun res!575607 () Bool)

(assert (=> b!847008 (=> (not res!575607) (not e!472692))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!847008 (= res!575607 (and (= (select (arr!23126 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!847009 () Bool)

(declare-fun res!575608 () Bool)

(assert (=> b!847009 (=> (not res!575608) (not e!472692))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48198 (_ BitVec 32)) Bool)

(assert (=> b!847009 (= res!575608 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!847010 () Bool)

(declare-fun e!472695 () Bool)

(declare-fun tp_is_empty!16001 () Bool)

(assert (=> b!847010 (= e!472695 tp_is_empty!16001)))

(declare-fun b!847011 () Bool)

(declare-fun e!472694 () Bool)

(assert (=> b!847011 (= e!472694 tp_is_empty!16001)))

(declare-fun b!847012 () Bool)

(declare-fun res!575610 () Bool)

(assert (=> b!847012 (=> (not res!575610) (not e!472692))))

(assert (=> b!847012 (= res!575610 (and (= (size!23568 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23567 _keys!868) (size!23568 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!847013 () Bool)

(declare-fun res!575605 () Bool)

(assert (=> b!847013 (=> (not res!575605) (not e!472692))))

(assert (=> b!847013 (= res!575605 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23567 _keys!868))))))

(declare-fun res!575603 () Bool)

(assert (=> start!72978 (=> (not res!575603) (not e!472692))))

(assert (=> start!72978 (= res!575603 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23567 _keys!868))))))

(assert (=> start!72978 e!472692))

(assert (=> start!72978 tp_is_empty!16001))

(assert (=> start!72978 true))

(assert (=> start!72978 tp!49099))

(declare-fun array_inv!18350 (array!48198) Bool)

(assert (=> start!72978 (array_inv!18350 _keys!868)))

(declare-fun e!472691 () Bool)

(declare-fun array_inv!18351 (array!48200) Bool)

(assert (=> start!72978 (and (array_inv!18351 _values!688) e!472691)))

(declare-fun b!847014 () Bool)

(assert (=> b!847014 (= e!472691 (and e!472695 mapRes!25601))))

(declare-fun condMapEmpty!25601 () Bool)

(declare-fun mapDefault!25601 () ValueCell!7561)

