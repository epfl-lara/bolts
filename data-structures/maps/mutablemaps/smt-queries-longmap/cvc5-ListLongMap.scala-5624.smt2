; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73556 () Bool)

(assert start!73556)

(declare-fun b_free!14443 () Bool)

(declare-fun b_next!14443 () Bool)

(assert (=> start!73556 (= b_free!14443 (not b_next!14443))))

(declare-fun tp!50834 () Bool)

(declare-fun b_and!23883 () Bool)

(assert (=> start!73556 (= tp!50834 b_and!23883)))

(declare-fun b!859186 () Bool)

(declare-fun res!583885 () Bool)

(declare-fun e!478850 () Bool)

(assert (=> b!859186 (=> (not res!583885) (not e!478850))))

(declare-datatypes ((array!49316 0))(
  ( (array!49317 (arr!23685 (Array (_ BitVec 32) (_ BitVec 64))) (size!24126 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49316)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49316 (_ BitVec 32)) Bool)

(assert (=> b!859186 (= res!583885 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!859187 () Bool)

(declare-fun e!478849 () Bool)

(assert (=> b!859187 (= e!478849 true)))

(declare-fun lt!387153 () Bool)

(declare-datatypes ((List!16870 0))(
  ( (Nil!16867) (Cons!16866 (h!17997 (_ BitVec 64)) (t!23587 List!16870)) )
))
(declare-fun contains!4217 (List!16870 (_ BitVec 64)) Bool)

(assert (=> b!859187 (= lt!387153 (contains!4217 Nil!16867 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!859188 () Bool)

(declare-fun e!478843 () Bool)

(declare-fun tp_is_empty!16579 () Bool)

(assert (=> b!859188 (= e!478843 tp_is_empty!16579)))

(declare-fun mapIsEmpty!26468 () Bool)

(declare-fun mapRes!26468 () Bool)

(assert (=> mapIsEmpty!26468 mapRes!26468))

(declare-fun b!859189 () Bool)

(declare-fun res!583887 () Bool)

(assert (=> b!859189 (=> (not res!583887) (not e!478850))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!859189 (= res!583887 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24126 _keys!868))))))

(declare-fun res!583877 () Bool)

(assert (=> start!73556 (=> (not res!583877) (not e!478850))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73556 (= res!583877 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24126 _keys!868))))))

(assert (=> start!73556 e!478850))

(assert (=> start!73556 tp_is_empty!16579))

(assert (=> start!73556 true))

(assert (=> start!73556 tp!50834))

(declare-fun array_inv!18734 (array!49316) Bool)

(assert (=> start!73556 (array_inv!18734 _keys!868)))

(declare-datatypes ((V!27153 0))(
  ( (V!27154 (val!8337 Int)) )
))
(declare-datatypes ((ValueCell!7850 0))(
  ( (ValueCellFull!7850 (v!10758 V!27153)) (EmptyCell!7850) )
))
(declare-datatypes ((array!49318 0))(
  ( (array!49319 (arr!23686 (Array (_ BitVec 32) ValueCell!7850)) (size!24127 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49318)

(declare-fun e!478847 () Bool)

(declare-fun array_inv!18735 (array!49318) Bool)

(assert (=> start!73556 (and (array_inv!18735 _values!688) e!478847)))

(declare-fun b!859190 () Bool)

(declare-fun e!478845 () Bool)

(assert (=> b!859190 (= e!478850 e!478845)))

(declare-fun res!583879 () Bool)

(assert (=> b!859190 (=> (not res!583879) (not e!478845))))

(assert (=> b!859190 (= res!583879 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!387155 () array!49318)

(declare-datatypes ((tuple2!10998 0))(
  ( (tuple2!10999 (_1!5509 (_ BitVec 64)) (_2!5509 V!27153)) )
))
(declare-datatypes ((List!16871 0))(
  ( (Nil!16868) (Cons!16867 (h!17998 tuple2!10998) (t!23588 List!16871)) )
))
(declare-datatypes ((ListLongMap!9781 0))(
  ( (ListLongMap!9782 (toList!4906 List!16871)) )
))
(declare-fun lt!387158 () ListLongMap!9781)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27153)

(declare-fun zeroValue!654 () V!27153)

(declare-fun getCurrentListMapNoExtraKeys!2886 (array!49316 array!49318 (_ BitVec 32) (_ BitVec 32) V!27153 V!27153 (_ BitVec 32) Int) ListLongMap!9781)

(assert (=> b!859190 (= lt!387158 (getCurrentListMapNoExtraKeys!2886 _keys!868 lt!387155 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27153)

(assert (=> b!859190 (= lt!387155 (array!49319 (store (arr!23686 _values!688) i!612 (ValueCellFull!7850 v!557)) (size!24127 _values!688)))))

(declare-fun lt!387152 () ListLongMap!9781)

(assert (=> b!859190 (= lt!387152 (getCurrentListMapNoExtraKeys!2886 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!859191 () Bool)

(declare-fun res!583878 () Bool)

(assert (=> b!859191 (=> (not res!583878) (not e!478850))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!859191 (= res!583878 (validMask!0 mask!1196))))

(declare-fun b!859192 () Bool)

(declare-fun res!583884 () Bool)

(assert (=> b!859192 (=> (not res!583884) (not e!478850))))

(declare-fun arrayNoDuplicates!0 (array!49316 (_ BitVec 32) List!16870) Bool)

(assert (=> b!859192 (= res!583884 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16867))))

(declare-fun b!859193 () Bool)

(declare-fun res!583882 () Bool)

(assert (=> b!859193 (=> res!583882 e!478849)))

(declare-fun noDuplicate!1299 (List!16870) Bool)

(assert (=> b!859193 (= res!583882 (not (noDuplicate!1299 Nil!16867)))))

(declare-fun b!859194 () Bool)

(declare-fun res!583874 () Bool)

(assert (=> b!859194 (=> res!583874 e!478849)))

(assert (=> b!859194 (= res!583874 (contains!4217 Nil!16867 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!859195 () Bool)

(declare-fun res!583883 () Bool)

(assert (=> b!859195 (=> (not res!583883) (not e!478850))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!859195 (= res!583883 (validKeyInArray!0 k!854))))

(declare-fun b!859196 () Bool)

(declare-fun e!478846 () Bool)

(declare-fun e!478848 () Bool)

(assert (=> b!859196 (= e!478846 e!478848)))

(declare-fun res!583875 () Bool)

(assert (=> b!859196 (=> res!583875 e!478848)))

(assert (=> b!859196 (= res!583875 (not (= (select (arr!23685 _keys!868) from!1053) k!854)))))

(declare-fun lt!387154 () ListLongMap!9781)

(declare-fun +!2209 (ListLongMap!9781 tuple2!10998) ListLongMap!9781)

(declare-fun get!12494 (ValueCell!7850 V!27153) V!27153)

(declare-fun dynLambda!1096 (Int (_ BitVec 64)) V!27153)

(assert (=> b!859196 (= lt!387158 (+!2209 lt!387154 (tuple2!10999 (select (arr!23685 _keys!868) from!1053) (get!12494 (select (arr!23686 _values!688) from!1053) (dynLambda!1096 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!859197 () Bool)

(declare-fun res!583881 () Bool)

(assert (=> b!859197 (=> (not res!583881) (not e!478850))))

(assert (=> b!859197 (= res!583881 (and (= (size!24127 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24126 _keys!868) (size!24127 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!859198 () Bool)

(assert (=> b!859198 (= e!478845 (not e!478846))))

(declare-fun res!583880 () Bool)

(assert (=> b!859198 (=> res!583880 e!478846)))

(assert (=> b!859198 (= res!583880 (not (validKeyInArray!0 (select (arr!23685 _keys!868) from!1053))))))

(declare-fun lt!387150 () ListLongMap!9781)

(assert (=> b!859198 (= lt!387150 lt!387154)))

(declare-fun lt!387159 () ListLongMap!9781)

(assert (=> b!859198 (= lt!387154 (+!2209 lt!387159 (tuple2!10999 k!854 v!557)))))

(assert (=> b!859198 (= lt!387150 (getCurrentListMapNoExtraKeys!2886 _keys!868 lt!387155 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!859198 (= lt!387159 (getCurrentListMapNoExtraKeys!2886 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29262 0))(
  ( (Unit!29263) )
))
(declare-fun lt!387156 () Unit!29262)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!466 (array!49316 array!49318 (_ BitVec 32) (_ BitVec 32) V!27153 V!27153 (_ BitVec 32) (_ BitVec 64) V!27153 (_ BitVec 32) Int) Unit!29262)

(assert (=> b!859198 (= lt!387156 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!466 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!26468 () Bool)

(declare-fun tp!50833 () Bool)

(assert (=> mapNonEmpty!26468 (= mapRes!26468 (and tp!50833 e!478843))))

(declare-fun mapRest!26468 () (Array (_ BitVec 32) ValueCell!7850))

(declare-fun mapKey!26468 () (_ BitVec 32))

(declare-fun mapValue!26468 () ValueCell!7850)

(assert (=> mapNonEmpty!26468 (= (arr!23686 _values!688) (store mapRest!26468 mapKey!26468 mapValue!26468))))

(declare-fun b!859199 () Bool)

(declare-fun res!583886 () Bool)

(assert (=> b!859199 (=> (not res!583886) (not e!478850))))

(assert (=> b!859199 (= res!583886 (and (= (select (arr!23685 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!859200 () Bool)

(assert (=> b!859200 (= e!478848 e!478849)))

(declare-fun res!583876 () Bool)

(assert (=> b!859200 (=> res!583876 e!478849)))

(assert (=> b!859200 (= res!583876 (or (bvsge (size!24126 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24126 _keys!868)) (bvsge from!1053 (size!24126 _keys!868))))))

(declare-fun arrayContainsKey!0 (array!49316 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!859200 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!387157 () Unit!29262)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49316 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29262)

(assert (=> b!859200 (= lt!387157 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!859200 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16867)))

(declare-fun lt!387151 () Unit!29262)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49316 (_ BitVec 32) (_ BitVec 32)) Unit!29262)

(assert (=> b!859200 (= lt!387151 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!859201 () Bool)

(declare-fun e!478851 () Bool)

(assert (=> b!859201 (= e!478847 (and e!478851 mapRes!26468))))

(declare-fun condMapEmpty!26468 () Bool)

(declare-fun mapDefault!26468 () ValueCell!7850)

