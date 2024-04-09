; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73452 () Bool)

(assert start!73452)

(declare-fun b_free!14339 () Bool)

(declare-fun b_next!14339 () Bool)

(assert (=> start!73452 (= b_free!14339 (not b_next!14339))))

(declare-fun tp!50521 () Bool)

(declare-fun b_and!23713 () Bool)

(assert (=> start!73452 (= tp!50521 b_and!23713)))

(declare-fun b!857076 () Bool)

(declare-fun e!477742 () Bool)

(assert (=> b!857076 (= e!477742 (not true))))

(declare-datatypes ((V!27013 0))(
  ( (V!27014 (val!8285 Int)) )
))
(declare-datatypes ((ValueCell!7798 0))(
  ( (ValueCellFull!7798 (v!10706 V!27013)) (EmptyCell!7798) )
))
(declare-datatypes ((array!49116 0))(
  ( (array!49117 (arr!23585 (Array (_ BitVec 32) ValueCell!7798)) (size!24026 (_ BitVec 32))) )
))
(declare-fun lt!386163 () array!49116)

(declare-fun v!557 () V!27013)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49118 0))(
  ( (array!49119 (arr!23586 (Array (_ BitVec 32) (_ BitVec 64))) (size!24027 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49118)

(declare-fun _values!688 () array!49116)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!27013)

(declare-fun zeroValue!654 () V!27013)

(declare-datatypes ((tuple2!10916 0))(
  ( (tuple2!10917 (_1!5468 (_ BitVec 64)) (_2!5468 V!27013)) )
))
(declare-datatypes ((List!16787 0))(
  ( (Nil!16784) (Cons!16783 (h!17914 tuple2!10916) (t!23436 List!16787)) )
))
(declare-datatypes ((ListLongMap!9699 0))(
  ( (ListLongMap!9700 (toList!4865 List!16787)) )
))
(declare-fun getCurrentListMapNoExtraKeys!2847 (array!49118 array!49116 (_ BitVec 32) (_ BitVec 32) V!27013 V!27013 (_ BitVec 32) Int) ListLongMap!9699)

(declare-fun +!2173 (ListLongMap!9699 tuple2!10916) ListLongMap!9699)

(assert (=> b!857076 (= (getCurrentListMapNoExtraKeys!2847 _keys!868 lt!386163 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2173 (getCurrentListMapNoExtraKeys!2847 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10917 k!854 v!557)))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29188 0))(
  ( (Unit!29189) )
))
(declare-fun lt!386166 () Unit!29188)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!433 (array!49118 array!49116 (_ BitVec 32) (_ BitVec 32) V!27013 V!27013 (_ BitVec 32) (_ BitVec 64) V!27013 (_ BitVec 32) Int) Unit!29188)

(assert (=> b!857076 (= lt!386166 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!433 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!26312 () Bool)

(declare-fun mapRes!26312 () Bool)

(assert (=> mapIsEmpty!26312 mapRes!26312))

(declare-fun b!857077 () Bool)

(declare-fun res!582301 () Bool)

(declare-fun e!477743 () Bool)

(assert (=> b!857077 (=> (not res!582301) (not e!477743))))

(declare-datatypes ((List!16788 0))(
  ( (Nil!16785) (Cons!16784 (h!17915 (_ BitVec 64)) (t!23437 List!16788)) )
))
(declare-fun arrayNoDuplicates!0 (array!49118 (_ BitVec 32) List!16788) Bool)

(assert (=> b!857077 (= res!582301 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16785))))

(declare-fun b!857078 () Bool)

(declare-fun res!582304 () Bool)

(assert (=> b!857078 (=> (not res!582304) (not e!477743))))

(assert (=> b!857078 (= res!582304 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24027 _keys!868))))))

(declare-fun b!857079 () Bool)

(declare-fun res!582305 () Bool)

(assert (=> b!857079 (=> (not res!582305) (not e!477743))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49118 (_ BitVec 32)) Bool)

(assert (=> b!857079 (= res!582305 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!857080 () Bool)

(declare-fun e!477739 () Bool)

(declare-fun e!477740 () Bool)

(assert (=> b!857080 (= e!477739 (and e!477740 mapRes!26312))))

(declare-fun condMapEmpty!26312 () Bool)

(declare-fun mapDefault!26312 () ValueCell!7798)

