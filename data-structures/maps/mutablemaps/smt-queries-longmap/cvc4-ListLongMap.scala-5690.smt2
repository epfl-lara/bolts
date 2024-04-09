; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73956 () Bool)

(assert start!73956)

(declare-fun b_free!14843 () Bool)

(declare-fun b_next!14843 () Bool)

(assert (=> start!73956 (= b_free!14843 (not b_next!14843))))

(declare-fun tp!52033 () Bool)

(declare-fun b_and!24613 () Bool)

(assert (=> start!73956 (= tp!52033 b_and!24613)))

(declare-fun b!868677 () Bool)

(declare-fun res!590415 () Bool)

(declare-fun e!483837 () Bool)

(assert (=> b!868677 (=> (not res!590415) (not e!483837))))

(declare-datatypes ((array!50092 0))(
  ( (array!50093 (arr!24073 (Array (_ BitVec 32) (_ BitVec 64))) (size!24514 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50092)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50092 (_ BitVec 32)) Bool)

(assert (=> b!868677 (= res!590415 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!868678 () Bool)

(declare-fun e!483834 () Bool)

(declare-fun tp_is_empty!16979 () Bool)

(assert (=> b!868678 (= e!483834 tp_is_empty!16979)))

(declare-fun mapIsEmpty!27068 () Bool)

(declare-fun mapRes!27068 () Bool)

(assert (=> mapIsEmpty!27068 mapRes!27068))

(declare-fun b!868679 () Bool)

(declare-fun res!590408 () Bool)

(assert (=> b!868679 (=> (not res!590408) (not e!483837))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!868679 (= res!590408 (and (= (select (arr!24073 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!868680 () Bool)

(declare-fun res!590414 () Bool)

(assert (=> b!868680 (=> (not res!590414) (not e!483837))))

(declare-datatypes ((List!17193 0))(
  ( (Nil!17190) (Cons!17189 (h!18320 (_ BitVec 64)) (t!24238 List!17193)) )
))
(declare-fun arrayNoDuplicates!0 (array!50092 (_ BitVec 32) List!17193) Bool)

(assert (=> b!868680 (= res!590414 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17190))))

(declare-fun res!590407 () Bool)

(assert (=> start!73956 (=> (not res!590407) (not e!483837))))

(assert (=> start!73956 (= res!590407 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24514 _keys!868))))))

(assert (=> start!73956 e!483837))

(assert (=> start!73956 tp_is_empty!16979))

(assert (=> start!73956 true))

(assert (=> start!73956 tp!52033))

(declare-fun array_inv!18992 (array!50092) Bool)

(assert (=> start!73956 (array_inv!18992 _keys!868)))

(declare-datatypes ((V!27685 0))(
  ( (V!27686 (val!8537 Int)) )
))
(declare-datatypes ((ValueCell!8050 0))(
  ( (ValueCellFull!8050 (v!10958 V!27685)) (EmptyCell!8050) )
))
(declare-datatypes ((array!50094 0))(
  ( (array!50095 (arr!24074 (Array (_ BitVec 32) ValueCell!8050)) (size!24515 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50094)

(declare-fun e!483833 () Bool)

(declare-fun array_inv!18993 (array!50094) Bool)

(assert (=> start!73956 (and (array_inv!18993 _values!688) e!483833)))

(declare-fun b!868681 () Bool)

(declare-fun e!483835 () Bool)

(assert (=> b!868681 (= e!483837 e!483835)))

(declare-fun res!590410 () Bool)

(assert (=> b!868681 (=> (not res!590410) (not e!483835))))

(assert (=> b!868681 (= res!590410 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!394545 () array!50094)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11334 0))(
  ( (tuple2!11335 (_1!5677 (_ BitVec 64)) (_2!5677 V!27685)) )
))
(declare-datatypes ((List!17194 0))(
  ( (Nil!17191) (Cons!17190 (h!18321 tuple2!11334) (t!24239 List!17194)) )
))
(declare-datatypes ((ListLongMap!10117 0))(
  ( (ListLongMap!10118 (toList!5074 List!17194)) )
))
(declare-fun lt!394544 () ListLongMap!10117)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27685)

(declare-fun zeroValue!654 () V!27685)

(declare-fun getCurrentListMapNoExtraKeys!3038 (array!50092 array!50094 (_ BitVec 32) (_ BitVec 32) V!27685 V!27685 (_ BitVec 32) Int) ListLongMap!10117)

(assert (=> b!868681 (= lt!394544 (getCurrentListMapNoExtraKeys!3038 _keys!868 lt!394545 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27685)

(assert (=> b!868681 (= lt!394545 (array!50095 (store (arr!24074 _values!688) i!612 (ValueCellFull!8050 v!557)) (size!24515 _values!688)))))

(declare-fun lt!394543 () ListLongMap!10117)

(assert (=> b!868681 (= lt!394543 (getCurrentListMapNoExtraKeys!3038 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!868682 () Bool)

(declare-fun res!590409 () Bool)

(assert (=> b!868682 (=> (not res!590409) (not e!483837))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!868682 (= res!590409 (validMask!0 mask!1196))))

(declare-fun b!868683 () Bool)

(declare-fun e!483836 () Bool)

(assert (=> b!868683 (= e!483836 tp_is_empty!16979)))

(declare-fun b!868684 () Bool)

(declare-fun res!590413 () Bool)

(assert (=> b!868684 (=> (not res!590413) (not e!483837))))

(assert (=> b!868684 (= res!590413 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24514 _keys!868))))))

(declare-fun b!868685 () Bool)

(declare-fun res!590412 () Bool)

(assert (=> b!868685 (=> (not res!590412) (not e!483837))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!868685 (= res!590412 (validKeyInArray!0 k!854))))

(declare-fun b!868686 () Bool)

(assert (=> b!868686 (= e!483833 (and e!483834 mapRes!27068))))

(declare-fun condMapEmpty!27068 () Bool)

(declare-fun mapDefault!27068 () ValueCell!8050)

