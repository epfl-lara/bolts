; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73660 () Bool)

(assert start!73660)

(declare-fun b_free!14547 () Bool)

(declare-fun b_next!14547 () Bool)

(assert (=> start!73660 (= b_free!14547 (not b_next!14547))))

(declare-fun tp!51145 () Bool)

(declare-fun b_and!24091 () Bool)

(assert (=> start!73660 (= tp!51145 b_and!24091)))

(declare-fun b!861788 () Bool)

(declare-fun res!585753 () Bool)

(declare-fun e!480176 () Bool)

(assert (=> b!861788 (=> (not res!585753) (not e!480176))))

(declare-datatypes ((array!49512 0))(
  ( (array!49513 (arr!23783 (Array (_ BitVec 32) (_ BitVec 64))) (size!24224 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49512)

(declare-datatypes ((List!16956 0))(
  ( (Nil!16953) (Cons!16952 (h!18083 (_ BitVec 64)) (t!23777 List!16956)) )
))
(declare-fun arrayNoDuplicates!0 (array!49512 (_ BitVec 32) List!16956) Bool)

(assert (=> b!861788 (= res!585753 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16953))))

(declare-fun b!861789 () Bool)

(declare-fun e!480177 () Bool)

(declare-fun tp_is_empty!16683 () Bool)

(assert (=> b!861789 (= e!480177 tp_is_empty!16683)))

(declare-fun b!861790 () Bool)

(declare-fun e!480175 () Bool)

(declare-fun e!480170 () Bool)

(assert (=> b!861790 (= e!480175 (not e!480170))))

(declare-fun res!585759 () Bool)

(assert (=> b!861790 (=> res!585759 e!480170)))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!861790 (= res!585759 (not (validKeyInArray!0 (select (arr!23783 _keys!868) from!1053))))))

(declare-datatypes ((V!27291 0))(
  ( (V!27292 (val!8389 Int)) )
))
(declare-datatypes ((tuple2!11086 0))(
  ( (tuple2!11087 (_1!5553 (_ BitVec 64)) (_2!5553 V!27291)) )
))
(declare-datatypes ((List!16957 0))(
  ( (Nil!16954) (Cons!16953 (h!18084 tuple2!11086) (t!23778 List!16957)) )
))
(declare-datatypes ((ListLongMap!9869 0))(
  ( (ListLongMap!9870 (toList!4950 List!16957)) )
))
(declare-fun lt!388797 () ListLongMap!9869)

(declare-fun lt!388787 () ListLongMap!9869)

(assert (=> b!861790 (= lt!388797 lt!388787)))

(declare-fun v!557 () V!27291)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lt!388788 () ListLongMap!9869)

(declare-fun +!2247 (ListLongMap!9869 tuple2!11086) ListLongMap!9869)

(assert (=> b!861790 (= lt!388787 (+!2247 lt!388788 (tuple2!11087 k0!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7902 0))(
  ( (ValueCellFull!7902 (v!10810 V!27291)) (EmptyCell!7902) )
))
(declare-datatypes ((array!49514 0))(
  ( (array!49515 (arr!23784 (Array (_ BitVec 32) ValueCell!7902)) (size!24225 (_ BitVec 32))) )
))
(declare-fun lt!388796 () array!49514)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27291)

(declare-fun zeroValue!654 () V!27291)

(declare-fun getCurrentListMapNoExtraKeys!2928 (array!49512 array!49514 (_ BitVec 32) (_ BitVec 32) V!27291 V!27291 (_ BitVec 32) Int) ListLongMap!9869)

(assert (=> b!861790 (= lt!388797 (getCurrentListMapNoExtraKeys!2928 _keys!868 lt!388796 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun _values!688 () array!49514)

(assert (=> b!861790 (= lt!388788 (getCurrentListMapNoExtraKeys!2928 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29378 0))(
  ( (Unit!29379) )
))
(declare-fun lt!388794 () Unit!29378)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!498 (array!49512 array!49514 (_ BitVec 32) (_ BitVec 32) V!27291 V!27291 (_ BitVec 32) (_ BitVec 64) V!27291 (_ BitVec 32) Int) Unit!29378)

(assert (=> b!861790 (= lt!388794 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!498 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!861791 () Bool)

(declare-fun res!585752 () Bool)

(assert (=> b!861791 (=> (not res!585752) (not e!480176))))

(assert (=> b!861791 (= res!585752 (and (= (select (arr!23783 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!26624 () Bool)

(declare-fun mapRes!26624 () Bool)

(assert (=> mapIsEmpty!26624 mapRes!26624))

(declare-fun b!861792 () Bool)

(declare-fun e!480171 () Bool)

(assert (=> b!861792 (= e!480171 tp_is_empty!16683)))

(declare-fun b!861793 () Bool)

(declare-fun res!585754 () Bool)

(assert (=> b!861793 (=> (not res!585754) (not e!480176))))

(assert (=> b!861793 (= res!585754 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24224 _keys!868))))))

(declare-fun b!861794 () Bool)

(declare-fun res!585750 () Bool)

(assert (=> b!861794 (=> (not res!585750) (not e!480176))))

(assert (=> b!861794 (= res!585750 (and (= (size!24225 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24224 _keys!868) (size!24225 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!26624 () Bool)

(declare-fun tp!51146 () Bool)

(assert (=> mapNonEmpty!26624 (= mapRes!26624 (and tp!51146 e!480171))))

(declare-fun mapValue!26624 () ValueCell!7902)

(declare-fun mapKey!26624 () (_ BitVec 32))

(declare-fun mapRest!26624 () (Array (_ BitVec 32) ValueCell!7902))

(assert (=> mapNonEmpty!26624 (= (arr!23784 _values!688) (store mapRest!26624 mapKey!26624 mapValue!26624))))

(declare-fun b!861796 () Bool)

(declare-fun res!585758 () Bool)

(assert (=> b!861796 (=> (not res!585758) (not e!480176))))

(assert (=> b!861796 (= res!585758 (validKeyInArray!0 k0!854))))

(declare-fun b!861797 () Bool)

(assert (=> b!861797 (= e!480176 e!480175)))

(declare-fun res!585751 () Bool)

(assert (=> b!861797 (=> (not res!585751) (not e!480175))))

(assert (=> b!861797 (= res!585751 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!388793 () ListLongMap!9869)

(assert (=> b!861797 (= lt!388793 (getCurrentListMapNoExtraKeys!2928 _keys!868 lt!388796 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!861797 (= lt!388796 (array!49515 (store (arr!23784 _values!688) i!612 (ValueCellFull!7902 v!557)) (size!24225 _values!688)))))

(declare-fun lt!388792 () ListLongMap!9869)

(assert (=> b!861797 (= lt!388792 (getCurrentListMapNoExtraKeys!2928 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!861798 () Bool)

(declare-fun e!480172 () Unit!29378)

(declare-fun Unit!29380 () Unit!29378)

(assert (=> b!861798 (= e!480172 Unit!29380)))

(declare-fun lt!388789 () Unit!29378)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49512 (_ BitVec 32) (_ BitVec 32)) Unit!29378)

(assert (=> b!861798 (= lt!388789 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!861798 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16953)))

(declare-fun lt!388790 () Unit!29378)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49512 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29378)

(assert (=> b!861798 (= lt!388790 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49512 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!861798 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!388795 () Unit!29378)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49512 (_ BitVec 64) (_ BitVec 32) List!16956) Unit!29378)

(assert (=> b!861798 (= lt!388795 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!16953))))

(assert (=> b!861798 false))

(declare-fun b!861799 () Bool)

(declare-fun res!585756 () Bool)

(assert (=> b!861799 (=> (not res!585756) (not e!480176))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!861799 (= res!585756 (validMask!0 mask!1196))))

(declare-fun b!861800 () Bool)

(declare-fun Unit!29381 () Unit!29378)

(assert (=> b!861800 (= e!480172 Unit!29381)))

(declare-fun b!861801 () Bool)

(declare-fun e!480173 () Bool)

(assert (=> b!861801 (= e!480173 (and e!480177 mapRes!26624))))

(declare-fun condMapEmpty!26624 () Bool)

(declare-fun mapDefault!26624 () ValueCell!7902)

(assert (=> b!861801 (= condMapEmpty!26624 (= (arr!23784 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7902)) mapDefault!26624)))))

(declare-fun b!861802 () Bool)

(declare-fun res!585757 () Bool)

(assert (=> b!861802 (=> (not res!585757) (not e!480176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49512 (_ BitVec 32)) Bool)

(assert (=> b!861802 (= res!585757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!861795 () Bool)

(assert (=> b!861795 (= e!480170 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!24224 _keys!868))))))

(assert (=> b!861795 (not (= (select (arr!23783 _keys!868) from!1053) k0!854))))

(declare-fun lt!388791 () Unit!29378)

(assert (=> b!861795 (= lt!388791 e!480172)))

(declare-fun c!91959 () Bool)

(assert (=> b!861795 (= c!91959 (= (select (arr!23783 _keys!868) from!1053) k0!854))))

(declare-fun get!12560 (ValueCell!7902 V!27291) V!27291)

(declare-fun dynLambda!1128 (Int (_ BitVec 64)) V!27291)

(assert (=> b!861795 (= lt!388793 (+!2247 lt!388787 (tuple2!11087 (select (arr!23783 _keys!868) from!1053) (get!12560 (select (arr!23784 _values!688) from!1053) (dynLambda!1128 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun res!585755 () Bool)

(assert (=> start!73660 (=> (not res!585755) (not e!480176))))

(assert (=> start!73660 (= res!585755 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24224 _keys!868))))))

(assert (=> start!73660 e!480176))

(assert (=> start!73660 tp_is_empty!16683))

(assert (=> start!73660 true))

(assert (=> start!73660 tp!51145))

(declare-fun array_inv!18794 (array!49512) Bool)

(assert (=> start!73660 (array_inv!18794 _keys!868)))

(declare-fun array_inv!18795 (array!49514) Bool)

(assert (=> start!73660 (and (array_inv!18795 _values!688) e!480173)))

(assert (= (and start!73660 res!585755) b!861799))

(assert (= (and b!861799 res!585756) b!861794))

(assert (= (and b!861794 res!585750) b!861802))

(assert (= (and b!861802 res!585757) b!861788))

(assert (= (and b!861788 res!585753) b!861793))

(assert (= (and b!861793 res!585754) b!861796))

(assert (= (and b!861796 res!585758) b!861791))

(assert (= (and b!861791 res!585752) b!861797))

(assert (= (and b!861797 res!585751) b!861790))

(assert (= (and b!861790 (not res!585759)) b!861795))

(assert (= (and b!861795 c!91959) b!861798))

(assert (= (and b!861795 (not c!91959)) b!861800))

(assert (= (and b!861801 condMapEmpty!26624) mapIsEmpty!26624))

(assert (= (and b!861801 (not condMapEmpty!26624)) mapNonEmpty!26624))

(get-info :version)

(assert (= (and mapNonEmpty!26624 ((_ is ValueCellFull!7902) mapValue!26624)) b!861792))

(assert (= (and b!861801 ((_ is ValueCellFull!7902) mapDefault!26624)) b!861789))

(assert (= start!73660 b!861801))

(declare-fun b_lambda!11929 () Bool)

(assert (=> (not b_lambda!11929) (not b!861795)))

(declare-fun t!23776 () Bool)

(declare-fun tb!4677 () Bool)

(assert (=> (and start!73660 (= defaultEntry!696 defaultEntry!696) t!23776) tb!4677))

(declare-fun result!8957 () Bool)

(assert (=> tb!4677 (= result!8957 tp_is_empty!16683)))

(assert (=> b!861795 t!23776))

(declare-fun b_and!24093 () Bool)

(assert (= b_and!24091 (and (=> t!23776 result!8957) b_and!24093)))

(declare-fun m!802847 () Bool)

(assert (=> b!861795 m!802847))

(declare-fun m!802849 () Bool)

(assert (=> b!861795 m!802849))

(declare-fun m!802851 () Bool)

(assert (=> b!861795 m!802851))

(declare-fun m!802853 () Bool)

(assert (=> b!861795 m!802853))

(assert (=> b!861795 m!802849))

(declare-fun m!802855 () Bool)

(assert (=> b!861795 m!802855))

(assert (=> b!861795 m!802851))

(declare-fun m!802857 () Bool)

(assert (=> b!861790 m!802857))

(assert (=> b!861790 m!802855))

(declare-fun m!802859 () Bool)

(assert (=> b!861790 m!802859))

(declare-fun m!802861 () Bool)

(assert (=> b!861790 m!802861))

(declare-fun m!802863 () Bool)

(assert (=> b!861790 m!802863))

(assert (=> b!861790 m!802855))

(declare-fun m!802865 () Bool)

(assert (=> b!861790 m!802865))

(declare-fun m!802867 () Bool)

(assert (=> mapNonEmpty!26624 m!802867))

(declare-fun m!802869 () Bool)

(assert (=> b!861796 m!802869))

(declare-fun m!802871 () Bool)

(assert (=> b!861799 m!802871))

(declare-fun m!802873 () Bool)

(assert (=> start!73660 m!802873))

(declare-fun m!802875 () Bool)

(assert (=> start!73660 m!802875))

(declare-fun m!802877 () Bool)

(assert (=> b!861788 m!802877))

(declare-fun m!802879 () Bool)

(assert (=> b!861791 m!802879))

(declare-fun m!802881 () Bool)

(assert (=> b!861802 m!802881))

(declare-fun m!802883 () Bool)

(assert (=> b!861797 m!802883))

(declare-fun m!802885 () Bool)

(assert (=> b!861797 m!802885))

(declare-fun m!802887 () Bool)

(assert (=> b!861797 m!802887))

(declare-fun m!802889 () Bool)

(assert (=> b!861798 m!802889))

(declare-fun m!802891 () Bool)

(assert (=> b!861798 m!802891))

(declare-fun m!802893 () Bool)

(assert (=> b!861798 m!802893))

(declare-fun m!802895 () Bool)

(assert (=> b!861798 m!802895))

(declare-fun m!802897 () Bool)

(assert (=> b!861798 m!802897))

(check-sat (not b!861790) (not b!861802) b_and!24093 tp_is_empty!16683 (not start!73660) (not b!861797) (not b_lambda!11929) (not b!861795) (not b!861798) (not b!861796) (not b_next!14547) (not mapNonEmpty!26624) (not b!861799) (not b!861788))
(check-sat b_and!24093 (not b_next!14547))
