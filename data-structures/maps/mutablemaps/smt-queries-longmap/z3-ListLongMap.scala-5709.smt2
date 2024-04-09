; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74068 () Bool)

(assert start!74068)

(declare-fun b_free!14955 () Bool)

(declare-fun b_next!14955 () Bool)

(assert (=> start!74068 (= b_free!14955 (not b_next!14955))))

(declare-fun tp!52369 () Bool)

(declare-fun b_and!24725 () Bool)

(assert (=> start!74068 (= tp!52369 b_and!24725)))

(declare-fun b!870693 () Bool)

(declare-fun res!591927 () Bool)

(declare-fun e!484841 () Bool)

(assert (=> b!870693 (=> (not res!591927) (not e!484841))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!50314 0))(
  ( (array!50315 (arr!24184 (Array (_ BitVec 32) (_ BitVec 64))) (size!24625 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50314)

(assert (=> b!870693 (= res!591927 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24625 _keys!868))))))

(declare-fun b!870694 () Bool)

(declare-fun e!484845 () Bool)

(assert (=> b!870694 (= e!484845 (not true))))

(declare-datatypes ((V!27835 0))(
  ( (V!27836 (val!8593 Int)) )
))
(declare-fun v!557 () V!27835)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!27835)

(declare-fun zeroValue!654 () V!27835)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!8106 0))(
  ( (ValueCellFull!8106 (v!11014 V!27835)) (EmptyCell!8106) )
))
(declare-datatypes ((array!50316 0))(
  ( (array!50317 (arr!24185 (Array (_ BitVec 32) ValueCell!8106)) (size!24626 (_ BitVec 32))) )
))
(declare-fun lt!395217 () array!50316)

(declare-fun _values!688 () array!50316)

(declare-datatypes ((tuple2!11416 0))(
  ( (tuple2!11417 (_1!5718 (_ BitVec 64)) (_2!5718 V!27835)) )
))
(declare-datatypes ((List!17271 0))(
  ( (Nil!17268) (Cons!17267 (h!18398 tuple2!11416) (t!24316 List!17271)) )
))
(declare-datatypes ((ListLongMap!10199 0))(
  ( (ListLongMap!10200 (toList!5115 List!17271)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3079 (array!50314 array!50316 (_ BitVec 32) (_ BitVec 32) V!27835 V!27835 (_ BitVec 32) Int) ListLongMap!10199)

(declare-fun +!2396 (ListLongMap!10199 tuple2!11416) ListLongMap!10199)

(assert (=> b!870694 (= (getCurrentListMapNoExtraKeys!3079 _keys!868 lt!395217 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2396 (getCurrentListMapNoExtraKeys!3079 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11417 k0!854 v!557)))))

(declare-datatypes ((Unit!29842 0))(
  ( (Unit!29843) )
))
(declare-fun lt!395216 () Unit!29842)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!627 (array!50314 array!50316 (_ BitVec 32) (_ BitVec 32) V!27835 V!27835 (_ BitVec 32) (_ BitVec 64) V!27835 (_ BitVec 32) Int) Unit!29842)

(assert (=> b!870694 (= lt!395216 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!627 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!870695 () Bool)

(declare-fun e!484840 () Bool)

(declare-fun tp_is_empty!17091 () Bool)

(assert (=> b!870695 (= e!484840 tp_is_empty!17091)))

(declare-fun b!870696 () Bool)

(declare-fun res!591922 () Bool)

(assert (=> b!870696 (=> (not res!591922) (not e!484841))))

(assert (=> b!870696 (= res!591922 (and (= (select (arr!24184 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!870697 () Bool)

(declare-fun e!484842 () Bool)

(declare-fun mapRes!27236 () Bool)

(assert (=> b!870697 (= e!484842 (and e!484840 mapRes!27236))))

(declare-fun condMapEmpty!27236 () Bool)

(declare-fun mapDefault!27236 () ValueCell!8106)

(assert (=> b!870697 (= condMapEmpty!27236 (= (arr!24185 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8106)) mapDefault!27236)))))

(declare-fun b!870698 () Bool)

(assert (=> b!870698 (= e!484841 e!484845)))

(declare-fun res!591924 () Bool)

(assert (=> b!870698 (=> (not res!591924) (not e!484845))))

(assert (=> b!870698 (= res!591924 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!395214 () ListLongMap!10199)

(assert (=> b!870698 (= lt!395214 (getCurrentListMapNoExtraKeys!3079 _keys!868 lt!395217 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!870698 (= lt!395217 (array!50317 (store (arr!24185 _values!688) i!612 (ValueCellFull!8106 v!557)) (size!24626 _values!688)))))

(declare-fun lt!395215 () ListLongMap!10199)

(assert (=> b!870698 (= lt!395215 (getCurrentListMapNoExtraKeys!3079 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!870699 () Bool)

(declare-fun res!591920 () Bool)

(assert (=> b!870699 (=> (not res!591920) (not e!484841))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50314 (_ BitVec 32)) Bool)

(assert (=> b!870699 (= res!591920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!591921 () Bool)

(assert (=> start!74068 (=> (not res!591921) (not e!484841))))

(assert (=> start!74068 (= res!591921 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24625 _keys!868))))))

(assert (=> start!74068 e!484841))

(assert (=> start!74068 tp_is_empty!17091))

(assert (=> start!74068 true))

(assert (=> start!74068 tp!52369))

(declare-fun array_inv!19070 (array!50314) Bool)

(assert (=> start!74068 (array_inv!19070 _keys!868)))

(declare-fun array_inv!19071 (array!50316) Bool)

(assert (=> start!74068 (and (array_inv!19071 _values!688) e!484842)))

(declare-fun b!870700 () Bool)

(declare-fun e!484843 () Bool)

(assert (=> b!870700 (= e!484843 tp_is_empty!17091)))

(declare-fun mapIsEmpty!27236 () Bool)

(assert (=> mapIsEmpty!27236 mapRes!27236))

(declare-fun b!870701 () Bool)

(declare-fun res!591919 () Bool)

(assert (=> b!870701 (=> (not res!591919) (not e!484841))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!870701 (= res!591919 (validMask!0 mask!1196))))

(declare-fun b!870702 () Bool)

(declare-fun res!591925 () Bool)

(assert (=> b!870702 (=> (not res!591925) (not e!484841))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!870702 (= res!591925 (validKeyInArray!0 k0!854))))

(declare-fun b!870703 () Bool)

(declare-fun res!591923 () Bool)

(assert (=> b!870703 (=> (not res!591923) (not e!484841))))

(declare-datatypes ((List!17272 0))(
  ( (Nil!17269) (Cons!17268 (h!18399 (_ BitVec 64)) (t!24317 List!17272)) )
))
(declare-fun arrayNoDuplicates!0 (array!50314 (_ BitVec 32) List!17272) Bool)

(assert (=> b!870703 (= res!591923 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17269))))

(declare-fun mapNonEmpty!27236 () Bool)

(declare-fun tp!52370 () Bool)

(assert (=> mapNonEmpty!27236 (= mapRes!27236 (and tp!52370 e!484843))))

(declare-fun mapRest!27236 () (Array (_ BitVec 32) ValueCell!8106))

(declare-fun mapValue!27236 () ValueCell!8106)

(declare-fun mapKey!27236 () (_ BitVec 32))

(assert (=> mapNonEmpty!27236 (= (arr!24185 _values!688) (store mapRest!27236 mapKey!27236 mapValue!27236))))

(declare-fun b!870704 () Bool)

(declare-fun res!591926 () Bool)

(assert (=> b!870704 (=> (not res!591926) (not e!484841))))

(assert (=> b!870704 (= res!591926 (and (= (size!24626 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24625 _keys!868) (size!24626 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(assert (= (and start!74068 res!591921) b!870701))

(assert (= (and b!870701 res!591919) b!870704))

(assert (= (and b!870704 res!591926) b!870699))

(assert (= (and b!870699 res!591920) b!870703))

(assert (= (and b!870703 res!591923) b!870693))

(assert (= (and b!870693 res!591927) b!870702))

(assert (= (and b!870702 res!591925) b!870696))

(assert (= (and b!870696 res!591922) b!870698))

(assert (= (and b!870698 res!591924) b!870694))

(assert (= (and b!870697 condMapEmpty!27236) mapIsEmpty!27236))

(assert (= (and b!870697 (not condMapEmpty!27236)) mapNonEmpty!27236))

(get-info :version)

(assert (= (and mapNonEmpty!27236 ((_ is ValueCellFull!8106) mapValue!27236)) b!870700))

(assert (= (and b!870697 ((_ is ValueCellFull!8106) mapDefault!27236)) b!870695))

(assert (= start!74068 b!870697))

(declare-fun m!812101 () Bool)

(assert (=> b!870698 m!812101))

(declare-fun m!812103 () Bool)

(assert (=> b!870698 m!812103))

(declare-fun m!812105 () Bool)

(assert (=> b!870698 m!812105))

(declare-fun m!812107 () Bool)

(assert (=> b!870702 m!812107))

(declare-fun m!812109 () Bool)

(assert (=> b!870699 m!812109))

(declare-fun m!812111 () Bool)

(assert (=> mapNonEmpty!27236 m!812111))

(declare-fun m!812113 () Bool)

(assert (=> b!870703 m!812113))

(declare-fun m!812115 () Bool)

(assert (=> b!870701 m!812115))

(declare-fun m!812117 () Bool)

(assert (=> b!870694 m!812117))

(declare-fun m!812119 () Bool)

(assert (=> b!870694 m!812119))

(assert (=> b!870694 m!812119))

(declare-fun m!812121 () Bool)

(assert (=> b!870694 m!812121))

(declare-fun m!812123 () Bool)

(assert (=> b!870694 m!812123))

(declare-fun m!812125 () Bool)

(assert (=> b!870696 m!812125))

(declare-fun m!812127 () Bool)

(assert (=> start!74068 m!812127))

(declare-fun m!812129 () Bool)

(assert (=> start!74068 m!812129))

(check-sat b_and!24725 (not b!870702) (not b!870703) (not b!870699) (not b!870698) tp_is_empty!17091 (not b!870694) (not start!74068) (not b!870701) (not b_next!14955) (not mapNonEmpty!27236))
(check-sat b_and!24725 (not b_next!14955))
