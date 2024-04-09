; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73554 () Bool)

(assert start!73554)

(declare-fun b_free!14441 () Bool)

(declare-fun b_next!14441 () Bool)

(assert (=> start!73554 (= b_free!14441 (not b_next!14441))))

(declare-fun tp!50828 () Bool)

(declare-fun b_and!23879 () Bool)

(assert (=> start!73554 (= tp!50828 b_and!23879)))

(declare-fun b!859136 () Bool)

(declare-fun res!583845 () Bool)

(declare-fun e!478823 () Bool)

(assert (=> b!859136 (=> (not res!583845) (not e!478823))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!49312 0))(
  ( (array!49313 (arr!23683 (Array (_ BitVec 32) (_ BitVec 64))) (size!24124 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49312)

(assert (=> b!859136 (= res!583845 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24124 _keys!868))))))

(declare-fun b!859137 () Bool)

(declare-fun e!478819 () Bool)

(declare-fun e!478824 () Bool)

(assert (=> b!859137 (= e!478819 e!478824)))

(declare-fun res!583840 () Bool)

(assert (=> b!859137 (=> res!583840 e!478824)))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!859137 (= res!583840 (not (= (select (arr!23683 _keys!868) from!1053) k!854)))))

(declare-datatypes ((V!27149 0))(
  ( (V!27150 (val!8336 Int)) )
))
(declare-datatypes ((tuple2!10996 0))(
  ( (tuple2!10997 (_1!5508 (_ BitVec 64)) (_2!5508 V!27149)) )
))
(declare-datatypes ((List!16868 0))(
  ( (Nil!16865) (Cons!16864 (h!17995 tuple2!10996) (t!23583 List!16868)) )
))
(declare-datatypes ((ListLongMap!9779 0))(
  ( (ListLongMap!9780 (toList!4905 List!16868)) )
))
(declare-fun lt!387122 () ListLongMap!9779)

(declare-fun lt!387129 () ListLongMap!9779)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7849 0))(
  ( (ValueCellFull!7849 (v!10757 V!27149)) (EmptyCell!7849) )
))
(declare-datatypes ((array!49314 0))(
  ( (array!49315 (arr!23684 (Array (_ BitVec 32) ValueCell!7849)) (size!24125 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49314)

(declare-fun +!2208 (ListLongMap!9779 tuple2!10996) ListLongMap!9779)

(declare-fun get!12491 (ValueCell!7849 V!27149) V!27149)

(declare-fun dynLambda!1095 (Int (_ BitVec 64)) V!27149)

(assert (=> b!859137 (= lt!387129 (+!2208 lt!387122 (tuple2!10997 (select (arr!23683 _keys!868) from!1053) (get!12491 (select (arr!23684 _values!688) from!1053) (dynLambda!1095 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!859138 () Bool)

(declare-fun e!478820 () Bool)

(assert (=> b!859138 (= e!478820 (not e!478819))))

(declare-fun res!583835 () Bool)

(assert (=> b!859138 (=> res!583835 e!478819)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!859138 (= res!583835 (not (validKeyInArray!0 (select (arr!23683 _keys!868) from!1053))))))

(declare-fun lt!387126 () ListLongMap!9779)

(assert (=> b!859138 (= lt!387126 lt!387122)))

(declare-fun v!557 () V!27149)

(declare-fun lt!387124 () ListLongMap!9779)

(assert (=> b!859138 (= lt!387122 (+!2208 lt!387124 (tuple2!10997 k!854 v!557)))))

(declare-fun lt!387127 () array!49314)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27149)

(declare-fun zeroValue!654 () V!27149)

(declare-fun getCurrentListMapNoExtraKeys!2885 (array!49312 array!49314 (_ BitVec 32) (_ BitVec 32) V!27149 V!27149 (_ BitVec 32) Int) ListLongMap!9779)

(assert (=> b!859138 (= lt!387126 (getCurrentListMapNoExtraKeys!2885 _keys!868 lt!387127 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!859138 (= lt!387124 (getCurrentListMapNoExtraKeys!2885 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29260 0))(
  ( (Unit!29261) )
))
(declare-fun lt!387125 () Unit!29260)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!465 (array!49312 array!49314 (_ BitVec 32) (_ BitVec 32) V!27149 V!27149 (_ BitVec 32) (_ BitVec 64) V!27149 (_ BitVec 32) Int) Unit!29260)

(assert (=> b!859138 (= lt!387125 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!465 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!859139 () Bool)

(declare-fun res!583844 () Bool)

(assert (=> b!859139 (=> (not res!583844) (not e!478823))))

(assert (=> b!859139 (= res!583844 (validKeyInArray!0 k!854))))

(declare-fun res!583841 () Bool)

(assert (=> start!73554 (=> (not res!583841) (not e!478823))))

(assert (=> start!73554 (= res!583841 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24124 _keys!868))))))

(assert (=> start!73554 e!478823))

(declare-fun tp_is_empty!16577 () Bool)

(assert (=> start!73554 tp_is_empty!16577))

(assert (=> start!73554 true))

(assert (=> start!73554 tp!50828))

(declare-fun array_inv!18732 (array!49312) Bool)

(assert (=> start!73554 (array_inv!18732 _keys!868)))

(declare-fun e!478821 () Bool)

(declare-fun array_inv!18733 (array!49314) Bool)

(assert (=> start!73554 (and (array_inv!18733 _values!688) e!478821)))

(declare-fun b!859140 () Bool)

(declare-fun e!478818 () Bool)

(assert (=> b!859140 (= e!478818 tp_is_empty!16577)))

(declare-fun b!859141 () Bool)

(declare-fun res!583843 () Bool)

(assert (=> b!859141 (=> (not res!583843) (not e!478823))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49312 (_ BitVec 32)) Bool)

(assert (=> b!859141 (= res!583843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!859142 () Bool)

(declare-fun e!478817 () Bool)

(assert (=> b!859142 (= e!478817 tp_is_empty!16577)))

(declare-fun b!859143 () Bool)

(assert (=> b!859143 (= e!478824 true)))

(declare-datatypes ((List!16869 0))(
  ( (Nil!16866) (Cons!16865 (h!17996 (_ BitVec 64)) (t!23584 List!16869)) )
))
(declare-fun arrayNoDuplicates!0 (array!49312 (_ BitVec 32) List!16869) Bool)

(assert (=> b!859143 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16866)))

(declare-fun lt!387128 () Unit!29260)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49312 (_ BitVec 32) (_ BitVec 32)) Unit!29260)

(assert (=> b!859143 (= lt!387128 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!859144 () Bool)

(declare-fun res!583838 () Bool)

(assert (=> b!859144 (=> (not res!583838) (not e!478823))))

(assert (=> b!859144 (= res!583838 (and (= (size!24125 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24124 _keys!868) (size!24125 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!26465 () Bool)

(declare-fun mapRes!26465 () Bool)

(assert (=> mapIsEmpty!26465 mapRes!26465))

(declare-fun b!859145 () Bool)

(declare-fun res!583836 () Bool)

(assert (=> b!859145 (=> (not res!583836) (not e!478823))))

(assert (=> b!859145 (= res!583836 (and (= (select (arr!23683 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!26465 () Bool)

(declare-fun tp!50827 () Bool)

(assert (=> mapNonEmpty!26465 (= mapRes!26465 (and tp!50827 e!478818))))

(declare-fun mapValue!26465 () ValueCell!7849)

(declare-fun mapRest!26465 () (Array (_ BitVec 32) ValueCell!7849))

(declare-fun mapKey!26465 () (_ BitVec 32))

(assert (=> mapNonEmpty!26465 (= (arr!23684 _values!688) (store mapRest!26465 mapKey!26465 mapValue!26465))))

(declare-fun b!859146 () Bool)

(declare-fun res!583842 () Bool)

(assert (=> b!859146 (=> (not res!583842) (not e!478823))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!859146 (= res!583842 (validMask!0 mask!1196))))

(declare-fun b!859147 () Bool)

(assert (=> b!859147 (= e!478821 (and e!478817 mapRes!26465))))

(declare-fun condMapEmpty!26465 () Bool)

(declare-fun mapDefault!26465 () ValueCell!7849)

