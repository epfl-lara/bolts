; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74620 () Bool)

(assert start!74620)

(declare-fun b_free!15281 () Bool)

(declare-fun b_next!15281 () Bool)

(assert (=> start!74620 (= b_free!15281 (not b_next!15281))))

(declare-fun tp!53526 () Bool)

(declare-fun b_and!25175 () Bool)

(assert (=> start!74620 (= tp!53526 b_and!25175)))

(declare-fun b!878865 () Bool)

(declare-fun res!597232 () Bool)

(declare-fun e!489137 () Bool)

(assert (=> b!878865 (=> (not res!597232) (not e!489137))))

(declare-datatypes ((array!51156 0))(
  ( (array!51157 (arr!24600 (Array (_ BitVec 32) (_ BitVec 64))) (size!25041 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51156)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51156 (_ BitVec 32)) Bool)

(assert (=> b!878865 (= res!597232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!878867 () Bool)

(declare-fun e!489134 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!878867 (= e!489134 (bvslt from!1053 (size!25041 _keys!868)))))

(declare-fun b!878868 () Bool)

(declare-fun res!597227 () Bool)

(assert (=> b!878868 (=> (not res!597227) (not e!489137))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!28413 0))(
  ( (V!28414 (val!8810 Int)) )
))
(declare-datatypes ((ValueCell!8323 0))(
  ( (ValueCellFull!8323 (v!11246 V!28413)) (EmptyCell!8323) )
))
(declare-datatypes ((array!51158 0))(
  ( (array!51159 (arr!24601 (Array (_ BitVec 32) ValueCell!8323)) (size!25042 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51158)

(assert (=> b!878868 (= res!597227 (and (= (size!25042 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25041 _keys!868) (size!25042 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!27903 () Bool)

(declare-fun mapRes!27903 () Bool)

(declare-fun tp!53525 () Bool)

(declare-fun e!489138 () Bool)

(assert (=> mapNonEmpty!27903 (= mapRes!27903 (and tp!53525 e!489138))))

(declare-fun mapValue!27903 () ValueCell!8323)

(declare-fun mapKey!27903 () (_ BitVec 32))

(declare-fun mapRest!27903 () (Array (_ BitVec 32) ValueCell!8323))

(assert (=> mapNonEmpty!27903 (= (arr!24601 _values!688) (store mapRest!27903 mapKey!27903 mapValue!27903))))

(declare-fun b!878869 () Bool)

(declare-fun res!597225 () Bool)

(assert (=> b!878869 (=> (not res!597225) (not e!489137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!878869 (= res!597225 (validMask!0 mask!1196))))

(declare-fun b!878870 () Bool)

(declare-fun res!597233 () Bool)

(assert (=> b!878870 (=> (not res!597233) (not e!489137))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!878870 (= res!597233 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25041 _keys!868))))))

(declare-fun b!878871 () Bool)

(declare-fun res!597228 () Bool)

(assert (=> b!878871 (=> (not res!597228) (not e!489137))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!878871 (= res!597228 (and (= (select (arr!24600 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!878872 () Bool)

(declare-fun e!489136 () Bool)

(assert (=> b!878872 (= e!489136 (not e!489134))))

(declare-fun res!597234 () Bool)

(assert (=> b!878872 (=> res!597234 e!489134)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!878872 (= res!597234 (not (validKeyInArray!0 (select (arr!24600 _keys!868) from!1053))))))

(declare-fun v!557 () V!28413)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!397352 () array!51158)

(declare-fun minValue!654 () V!28413)

(declare-fun zeroValue!654 () V!28413)

(declare-datatypes ((tuple2!11672 0))(
  ( (tuple2!11673 (_1!5846 (_ BitVec 64)) (_2!5846 V!28413)) )
))
(declare-datatypes ((List!17549 0))(
  ( (Nil!17546) (Cons!17545 (h!18676 tuple2!11672) (t!24646 List!17549)) )
))
(declare-datatypes ((ListLongMap!10455 0))(
  ( (ListLongMap!10456 (toList!5243 List!17549)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3205 (array!51156 array!51158 (_ BitVec 32) (_ BitVec 32) V!28413 V!28413 (_ BitVec 32) Int) ListLongMap!10455)

(declare-fun +!2449 (ListLongMap!10455 tuple2!11672) ListLongMap!10455)

(assert (=> b!878872 (= (getCurrentListMapNoExtraKeys!3205 _keys!868 lt!397352 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2449 (getCurrentListMapNoExtraKeys!3205 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11673 k!854 v!557)))))

(declare-datatypes ((Unit!29978 0))(
  ( (Unit!29979) )
))
(declare-fun lt!397349 () Unit!29978)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!681 (array!51156 array!51158 (_ BitVec 32) (_ BitVec 32) V!28413 V!28413 (_ BitVec 32) (_ BitVec 64) V!28413 (_ BitVec 32) Int) Unit!29978)

(assert (=> b!878872 (= lt!397349 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!681 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!27903 () Bool)

(assert (=> mapIsEmpty!27903 mapRes!27903))

(declare-fun res!597231 () Bool)

(assert (=> start!74620 (=> (not res!597231) (not e!489137))))

(assert (=> start!74620 (= res!597231 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25041 _keys!868))))))

(assert (=> start!74620 e!489137))

(declare-fun tp_is_empty!17525 () Bool)

(assert (=> start!74620 tp_is_empty!17525))

(assert (=> start!74620 true))

(assert (=> start!74620 tp!53526))

(declare-fun array_inv!19366 (array!51156) Bool)

(assert (=> start!74620 (array_inv!19366 _keys!868)))

(declare-fun e!489133 () Bool)

(declare-fun array_inv!19367 (array!51158) Bool)

(assert (=> start!74620 (and (array_inv!19367 _values!688) e!489133)))

(declare-fun b!878866 () Bool)

(assert (=> b!878866 (= e!489137 e!489136)))

(declare-fun res!597226 () Bool)

(assert (=> b!878866 (=> (not res!597226) (not e!489136))))

(assert (=> b!878866 (= res!597226 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!397350 () ListLongMap!10455)

(assert (=> b!878866 (= lt!397350 (getCurrentListMapNoExtraKeys!3205 _keys!868 lt!397352 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!878866 (= lt!397352 (array!51159 (store (arr!24601 _values!688) i!612 (ValueCellFull!8323 v!557)) (size!25042 _values!688)))))

(declare-fun lt!397351 () ListLongMap!10455)

(assert (=> b!878866 (= lt!397351 (getCurrentListMapNoExtraKeys!3205 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!878873 () Bool)

(declare-fun res!597230 () Bool)

(assert (=> b!878873 (=> (not res!597230) (not e!489137))))

(assert (=> b!878873 (= res!597230 (validKeyInArray!0 k!854))))

(declare-fun b!878874 () Bool)

(declare-fun e!489132 () Bool)

(assert (=> b!878874 (= e!489132 tp_is_empty!17525)))

(declare-fun b!878875 () Bool)

(assert (=> b!878875 (= e!489138 tp_is_empty!17525)))

(declare-fun b!878876 () Bool)

(assert (=> b!878876 (= e!489133 (and e!489132 mapRes!27903))))

(declare-fun condMapEmpty!27903 () Bool)

(declare-fun mapDefault!27903 () ValueCell!8323)

