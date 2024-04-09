; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73434 () Bool)

(assert start!73434)

(declare-fun b_free!14321 () Bool)

(declare-fun b_next!14321 () Bool)

(assert (=> start!73434 (= b_free!14321 (not b_next!14321))))

(declare-fun tp!50467 () Bool)

(declare-fun b_and!23695 () Bool)

(assert (=> start!73434 (= tp!50467 b_and!23695)))

(declare-fun b!856752 () Bool)

(declare-fun res!582057 () Bool)

(declare-fun e!477578 () Bool)

(assert (=> b!856752 (=> (not res!582057) (not e!477578))))

(declare-datatypes ((array!49082 0))(
  ( (array!49083 (arr!23568 (Array (_ BitVec 32) (_ BitVec 64))) (size!24009 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49082)

(declare-datatypes ((List!16775 0))(
  ( (Nil!16772) (Cons!16771 (h!17902 (_ BitVec 64)) (t!23424 List!16775)) )
))
(declare-fun arrayNoDuplicates!0 (array!49082 (_ BitVec 32) List!16775) Bool)

(assert (=> b!856752 (= res!582057 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16772))))

(declare-fun res!582062 () Bool)

(assert (=> start!73434 (=> (not res!582062) (not e!477578))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73434 (= res!582062 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24009 _keys!868))))))

(assert (=> start!73434 e!477578))

(declare-fun tp_is_empty!16457 () Bool)

(assert (=> start!73434 tp_is_empty!16457))

(assert (=> start!73434 true))

(assert (=> start!73434 tp!50467))

(declare-fun array_inv!18656 (array!49082) Bool)

(assert (=> start!73434 (array_inv!18656 _keys!868)))

(declare-datatypes ((V!26989 0))(
  ( (V!26990 (val!8276 Int)) )
))
(declare-datatypes ((ValueCell!7789 0))(
  ( (ValueCellFull!7789 (v!10697 V!26989)) (EmptyCell!7789) )
))
(declare-datatypes ((array!49084 0))(
  ( (array!49085 (arr!23569 (Array (_ BitVec 32) ValueCell!7789)) (size!24010 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49084)

(declare-fun e!477581 () Bool)

(declare-fun array_inv!18657 (array!49084) Bool)

(assert (=> start!73434 (and (array_inv!18657 _values!688) e!477581)))

(declare-fun b!856753 () Bool)

(declare-fun res!582063 () Bool)

(assert (=> b!856753 (=> (not res!582063) (not e!477578))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49082 (_ BitVec 32)) Bool)

(assert (=> b!856753 (= res!582063 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!856754 () Bool)

(declare-fun res!582056 () Bool)

(assert (=> b!856754 (=> (not res!582056) (not e!477578))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!856754 (= res!582056 (and (= (size!24010 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24009 _keys!868) (size!24010 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!856755 () Bool)

(declare-fun res!582060 () Bool)

(assert (=> b!856755 (=> (not res!582060) (not e!477578))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!856755 (= res!582060 (validMask!0 mask!1196))))

(declare-fun b!856756 () Bool)

(declare-fun e!477579 () Bool)

(assert (=> b!856756 (= e!477578 e!477579)))

(declare-fun res!582059 () Bool)

(assert (=> b!856756 (=> (not res!582059) (not e!477579))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!856756 (= res!582059 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!386058 () array!49084)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10904 0))(
  ( (tuple2!10905 (_1!5462 (_ BitVec 64)) (_2!5462 V!26989)) )
))
(declare-datatypes ((List!16776 0))(
  ( (Nil!16773) (Cons!16772 (h!17903 tuple2!10904) (t!23425 List!16776)) )
))
(declare-datatypes ((ListLongMap!9687 0))(
  ( (ListLongMap!9688 (toList!4859 List!16776)) )
))
(declare-fun lt!386055 () ListLongMap!9687)

(declare-fun minValue!654 () V!26989)

(declare-fun zeroValue!654 () V!26989)

(declare-fun getCurrentListMapNoExtraKeys!2841 (array!49082 array!49084 (_ BitVec 32) (_ BitVec 32) V!26989 V!26989 (_ BitVec 32) Int) ListLongMap!9687)

(assert (=> b!856756 (= lt!386055 (getCurrentListMapNoExtraKeys!2841 _keys!868 lt!386058 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26989)

(assert (=> b!856756 (= lt!386058 (array!49085 (store (arr!23569 _values!688) i!612 (ValueCellFull!7789 v!557)) (size!24010 _values!688)))))

(declare-fun lt!386057 () ListLongMap!9687)

(assert (=> b!856756 (= lt!386057 (getCurrentListMapNoExtraKeys!2841 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!26285 () Bool)

(declare-fun mapRes!26285 () Bool)

(declare-fun tp!50468 () Bool)

(declare-fun e!477582 () Bool)

(assert (=> mapNonEmpty!26285 (= mapRes!26285 (and tp!50468 e!477582))))

(declare-fun mapRest!26285 () (Array (_ BitVec 32) ValueCell!7789))

(declare-fun mapValue!26285 () ValueCell!7789)

(declare-fun mapKey!26285 () (_ BitVec 32))

(assert (=> mapNonEmpty!26285 (= (arr!23569 _values!688) (store mapRest!26285 mapKey!26285 mapValue!26285))))

(declare-fun b!856757 () Bool)

(declare-fun e!477577 () Bool)

(assert (=> b!856757 (= e!477577 tp_is_empty!16457)))

(declare-fun b!856758 () Bool)

(assert (=> b!856758 (= e!477579 (not true))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2168 (ListLongMap!9687 tuple2!10904) ListLongMap!9687)

(assert (=> b!856758 (= (getCurrentListMapNoExtraKeys!2841 _keys!868 lt!386058 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2168 (getCurrentListMapNoExtraKeys!2841 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10905 k!854 v!557)))))

(declare-datatypes ((Unit!29178 0))(
  ( (Unit!29179) )
))
(declare-fun lt!386056 () Unit!29178)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!428 (array!49082 array!49084 (_ BitVec 32) (_ BitVec 32) V!26989 V!26989 (_ BitVec 32) (_ BitVec 64) V!26989 (_ BitVec 32) Int) Unit!29178)

(assert (=> b!856758 (= lt!386056 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!428 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!856759 () Bool)

(declare-fun res!582055 () Bool)

(assert (=> b!856759 (=> (not res!582055) (not e!477578))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!856759 (= res!582055 (validKeyInArray!0 k!854))))

(declare-fun b!856760 () Bool)

(assert (=> b!856760 (= e!477581 (and e!477577 mapRes!26285))))

(declare-fun condMapEmpty!26285 () Bool)

(declare-fun mapDefault!26285 () ValueCell!7789)

