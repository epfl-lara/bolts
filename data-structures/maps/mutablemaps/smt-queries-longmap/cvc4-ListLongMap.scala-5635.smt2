; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73626 () Bool)

(assert start!73626)

(declare-fun b_free!14513 () Bool)

(declare-fun b_next!14513 () Bool)

(assert (=> start!73626 (= b_free!14513 (not b_next!14513))))

(declare-fun tp!51044 () Bool)

(declare-fun b_and!24023 () Bool)

(assert (=> start!73626 (= tp!51044 b_and!24023)))

(declare-fun b!860989 () Bool)

(declare-fun res!585247 () Bool)

(declare-fun e!479762 () Bool)

(assert (=> b!860989 (=> (not res!585247) (not e!479762))))

(declare-datatypes ((array!49446 0))(
  ( (array!49447 (arr!23750 (Array (_ BitVec 32) (_ BitVec 64))) (size!24191 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49446)

(declare-datatypes ((List!16925 0))(
  ( (Nil!16922) (Cons!16921 (h!18052 (_ BitVec 64)) (t!23712 List!16925)) )
))
(declare-fun arrayNoDuplicates!0 (array!49446 (_ BitVec 32) List!16925) Bool)

(assert (=> b!860989 (= res!585247 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16922))))

(declare-fun b!860990 () Bool)

(declare-fun e!479766 () Bool)

(declare-fun e!479763 () Bool)

(assert (=> b!860990 (= e!479766 (not e!479763))))

(declare-fun res!585240 () Bool)

(assert (=> b!860990 (=> res!585240 e!479763)))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!860990 (= res!585240 (not (validKeyInArray!0 (select (arr!23750 _keys!868) from!1053))))))

(declare-datatypes ((V!27245 0))(
  ( (V!27246 (val!8372 Int)) )
))
(declare-datatypes ((tuple2!11054 0))(
  ( (tuple2!11055 (_1!5537 (_ BitVec 64)) (_2!5537 V!27245)) )
))
(declare-datatypes ((List!16926 0))(
  ( (Nil!16923) (Cons!16922 (h!18053 tuple2!11054) (t!23713 List!16926)) )
))
(declare-datatypes ((ListLongMap!9837 0))(
  ( (ListLongMap!9838 (toList!4934 List!16926)) )
))
(declare-fun lt!388228 () ListLongMap!9837)

(declare-fun lt!388230 () ListLongMap!9837)

(assert (=> b!860990 (= lt!388228 lt!388230)))

(declare-fun v!557 () V!27245)

(declare-fun lt!388236 () ListLongMap!9837)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2235 (ListLongMap!9837 tuple2!11054) ListLongMap!9837)

(assert (=> b!860990 (= lt!388230 (+!2235 lt!388236 (tuple2!11055 k!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7885 0))(
  ( (ValueCellFull!7885 (v!10793 V!27245)) (EmptyCell!7885) )
))
(declare-datatypes ((array!49448 0))(
  ( (array!49449 (arr!23751 (Array (_ BitVec 32) ValueCell!7885)) (size!24192 (_ BitVec 32))) )
))
(declare-fun lt!388227 () array!49448)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27245)

(declare-fun zeroValue!654 () V!27245)

(declare-fun getCurrentListMapNoExtraKeys!2914 (array!49446 array!49448 (_ BitVec 32) (_ BitVec 32) V!27245 V!27245 (_ BitVec 32) Int) ListLongMap!9837)

(assert (=> b!860990 (= lt!388228 (getCurrentListMapNoExtraKeys!2914 _keys!868 lt!388227 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun _values!688 () array!49448)

(assert (=> b!860990 (= lt!388236 (getCurrentListMapNoExtraKeys!2914 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29322 0))(
  ( (Unit!29323) )
))
(declare-fun lt!388234 () Unit!29322)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!488 (array!49446 array!49448 (_ BitVec 32) (_ BitVec 32) V!27245 V!27245 (_ BitVec 32) (_ BitVec 64) V!27245 (_ BitVec 32) Int) Unit!29322)

(assert (=> b!860990 (= lt!388234 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!488 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!860991 () Bool)

(declare-fun e!479768 () Bool)

(declare-fun tp_is_empty!16649 () Bool)

(assert (=> b!860991 (= e!479768 tp_is_empty!16649)))

(declare-fun mapNonEmpty!26573 () Bool)

(declare-fun mapRes!26573 () Bool)

(declare-fun tp!51043 () Bool)

(declare-fun e!479769 () Bool)

(assert (=> mapNonEmpty!26573 (= mapRes!26573 (and tp!51043 e!479769))))

(declare-fun mapValue!26573 () ValueCell!7885)

(declare-fun mapKey!26573 () (_ BitVec 32))

(declare-fun mapRest!26573 () (Array (_ BitVec 32) ValueCell!7885))

(assert (=> mapNonEmpty!26573 (= (arr!23751 _values!688) (store mapRest!26573 mapKey!26573 mapValue!26573))))

(declare-fun mapIsEmpty!26573 () Bool)

(assert (=> mapIsEmpty!26573 mapRes!26573))

(declare-fun res!585243 () Bool)

(assert (=> start!73626 (=> (not res!585243) (not e!479762))))

(assert (=> start!73626 (= res!585243 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24191 _keys!868))))))

(assert (=> start!73626 e!479762))

(assert (=> start!73626 tp_is_empty!16649))

(assert (=> start!73626 true))

(assert (=> start!73626 tp!51044))

(declare-fun array_inv!18772 (array!49446) Bool)

(assert (=> start!73626 (array_inv!18772 _keys!868)))

(declare-fun e!479765 () Bool)

(declare-fun array_inv!18773 (array!49448) Bool)

(assert (=> start!73626 (and (array_inv!18773 _values!688) e!479765)))

(declare-fun b!860992 () Bool)

(declare-fun res!585245 () Bool)

(assert (=> b!860992 (=> (not res!585245) (not e!479762))))

(assert (=> b!860992 (= res!585245 (and (= (size!24192 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24191 _keys!868) (size!24192 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!860993 () Bool)

(declare-fun res!585241 () Bool)

(assert (=> b!860993 (=> (not res!585241) (not e!479762))))

(assert (=> b!860993 (= res!585241 (validKeyInArray!0 k!854))))

(declare-fun b!860994 () Bool)

(assert (=> b!860994 (= e!479762 e!479766)))

(declare-fun res!585248 () Bool)

(assert (=> b!860994 (=> (not res!585248) (not e!479766))))

(assert (=> b!860994 (= res!585248 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!388229 () ListLongMap!9837)

(assert (=> b!860994 (= lt!388229 (getCurrentListMapNoExtraKeys!2914 _keys!868 lt!388227 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!860994 (= lt!388227 (array!49449 (store (arr!23751 _values!688) i!612 (ValueCellFull!7885 v!557)) (size!24192 _values!688)))))

(declare-fun lt!388226 () ListLongMap!9837)

(assert (=> b!860994 (= lt!388226 (getCurrentListMapNoExtraKeys!2914 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!860995 () Bool)

(declare-fun res!585244 () Bool)

(assert (=> b!860995 (=> (not res!585244) (not e!479762))))

(assert (=> b!860995 (= res!585244 (and (= (select (arr!23750 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!860996 () Bool)

(declare-fun res!585242 () Bool)

(assert (=> b!860996 (=> (not res!585242) (not e!479762))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!860996 (= res!585242 (validMask!0 mask!1196))))

(declare-fun b!860997 () Bool)

(declare-fun res!585246 () Bool)

(assert (=> b!860997 (=> (not res!585246) (not e!479762))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49446 (_ BitVec 32)) Bool)

(assert (=> b!860997 (= res!585246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!860998 () Bool)

(assert (=> b!860998 (= e!479765 (and e!479768 mapRes!26573))))

(declare-fun condMapEmpty!26573 () Bool)

(declare-fun mapDefault!26573 () ValueCell!7885)

