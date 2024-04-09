; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73482 () Bool)

(assert start!73482)

(declare-fun b_free!14369 () Bool)

(declare-fun b_next!14369 () Bool)

(assert (=> start!73482 (= b_free!14369 (not b_next!14369))))

(declare-fun tp!50612 () Bool)

(declare-fun b_and!23743 () Bool)

(assert (=> start!73482 (= tp!50612 b_and!23743)))

(declare-fun b!857616 () Bool)

(declare-fun res!582709 () Bool)

(declare-fun e!478013 () Bool)

(assert (=> b!857616 (=> (not res!582709) (not e!478013))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!857616 (= res!582709 (validKeyInArray!0 k!854))))

(declare-fun b!857617 () Bool)

(declare-fun res!582703 () Bool)

(assert (=> b!857617 (=> (not res!582703) (not e!478013))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!857617 (= res!582703 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!26357 () Bool)

(declare-fun mapRes!26357 () Bool)

(declare-fun tp!50611 () Bool)

(declare-fun e!478012 () Bool)

(assert (=> mapNonEmpty!26357 (= mapRes!26357 (and tp!50611 e!478012))))

(declare-datatypes ((V!27053 0))(
  ( (V!27054 (val!8300 Int)) )
))
(declare-datatypes ((ValueCell!7813 0))(
  ( (ValueCellFull!7813 (v!10721 V!27053)) (EmptyCell!7813) )
))
(declare-fun mapValue!26357 () ValueCell!7813)

(declare-fun mapKey!26357 () (_ BitVec 32))

(declare-fun mapRest!26357 () (Array (_ BitVec 32) ValueCell!7813))

(declare-datatypes ((array!49172 0))(
  ( (array!49173 (arr!23613 (Array (_ BitVec 32) ValueCell!7813)) (size!24054 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49172)

(assert (=> mapNonEmpty!26357 (= (arr!23613 _values!688) (store mapRest!26357 mapKey!26357 mapValue!26357))))

(declare-fun b!857619 () Bool)

(declare-fun tp_is_empty!16505 () Bool)

(assert (=> b!857619 (= e!478012 tp_is_empty!16505)))

(declare-fun b!857620 () Bool)

(declare-fun e!478010 () Bool)

(assert (=> b!857620 (= e!478013 e!478010)))

(declare-fun res!582707 () Bool)

(assert (=> b!857620 (=> (not res!582707) (not e!478010))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!857620 (= res!582707 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!386345 () array!49172)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10936 0))(
  ( (tuple2!10937 (_1!5478 (_ BitVec 64)) (_2!5478 V!27053)) )
))
(declare-datatypes ((List!16808 0))(
  ( (Nil!16805) (Cons!16804 (h!17935 tuple2!10936) (t!23457 List!16808)) )
))
(declare-datatypes ((ListLongMap!9719 0))(
  ( (ListLongMap!9720 (toList!4875 List!16808)) )
))
(declare-fun lt!386344 () ListLongMap!9719)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!49174 0))(
  ( (array!49175 (arr!23614 (Array (_ BitVec 32) (_ BitVec 64))) (size!24055 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49174)

(declare-fun minValue!654 () V!27053)

(declare-fun zeroValue!654 () V!27053)

(declare-fun getCurrentListMapNoExtraKeys!2857 (array!49174 array!49172 (_ BitVec 32) (_ BitVec 32) V!27053 V!27053 (_ BitVec 32) Int) ListLongMap!9719)

(assert (=> b!857620 (= lt!386344 (getCurrentListMapNoExtraKeys!2857 _keys!868 lt!386345 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27053)

(assert (=> b!857620 (= lt!386345 (array!49173 (store (arr!23613 _values!688) i!612 (ValueCellFull!7813 v!557)) (size!24054 _values!688)))))

(declare-fun lt!386343 () ListLongMap!9719)

(assert (=> b!857620 (= lt!386343 (getCurrentListMapNoExtraKeys!2857 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!857621 () Bool)

(declare-fun res!582711 () Bool)

(assert (=> b!857621 (=> (not res!582711) (not e!478013))))

(assert (=> b!857621 (= res!582711 (and (= (select (arr!23614 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!857622 () Bool)

(declare-fun res!582705 () Bool)

(assert (=> b!857622 (=> (not res!582705) (not e!478013))))

(assert (=> b!857622 (= res!582705 (and (= (size!24054 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24055 _keys!868) (size!24054 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!26357 () Bool)

(assert (=> mapIsEmpty!26357 mapRes!26357))

(declare-fun b!857623 () Bool)

(declare-fun res!582706 () Bool)

(assert (=> b!857623 (=> (not res!582706) (not e!478013))))

(assert (=> b!857623 (= res!582706 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24055 _keys!868))))))

(declare-fun b!857624 () Bool)

(declare-fun res!582708 () Bool)

(assert (=> b!857624 (=> (not res!582708) (not e!478013))))

(declare-datatypes ((List!16809 0))(
  ( (Nil!16806) (Cons!16805 (h!17936 (_ BitVec 64)) (t!23458 List!16809)) )
))
(declare-fun arrayNoDuplicates!0 (array!49174 (_ BitVec 32) List!16809) Bool)

(assert (=> b!857624 (= res!582708 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16806))))

(declare-fun b!857625 () Bool)

(declare-fun res!582704 () Bool)

(assert (=> b!857625 (=> (not res!582704) (not e!478013))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49174 (_ BitVec 32)) Bool)

(assert (=> b!857625 (= res!582704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!857626 () Bool)

(declare-fun e!478014 () Bool)

(assert (=> b!857626 (= e!478014 tp_is_empty!16505)))

(declare-fun b!857627 () Bool)

(declare-fun e!478011 () Bool)

(assert (=> b!857627 (= e!478011 (and e!478014 mapRes!26357))))

(declare-fun condMapEmpty!26357 () Bool)

(declare-fun mapDefault!26357 () ValueCell!7813)

