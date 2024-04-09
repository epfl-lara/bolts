; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73594 () Bool)

(assert start!73594)

(declare-fun b_free!14481 () Bool)

(declare-fun b_next!14481 () Bool)

(assert (=> start!73594 (= b_free!14481 (not b_next!14481))))

(declare-fun tp!50947 () Bool)

(declare-fun b_and!23959 () Bool)

(assert (=> start!73594 (= tp!50947 b_and!23959)))

(declare-fun mapNonEmpty!26525 () Bool)

(declare-fun mapRes!26525 () Bool)

(declare-fun tp!50948 () Bool)

(declare-fun e!479359 () Bool)

(assert (=> mapNonEmpty!26525 (= mapRes!26525 (and tp!50948 e!479359))))

(declare-fun mapKey!26525 () (_ BitVec 32))

(declare-datatypes ((V!27203 0))(
  ( (V!27204 (val!8356 Int)) )
))
(declare-datatypes ((ValueCell!7869 0))(
  ( (ValueCellFull!7869 (v!10777 V!27203)) (EmptyCell!7869) )
))
(declare-fun mapRest!26525 () (Array (_ BitVec 32) ValueCell!7869))

(declare-datatypes ((array!49390 0))(
  ( (array!49391 (arr!23722 (Array (_ BitVec 32) ValueCell!7869)) (size!24163 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49390)

(declare-fun mapValue!26525 () ValueCell!7869)

(assert (=> mapNonEmpty!26525 (= (arr!23722 _values!688) (store mapRest!26525 mapKey!26525 mapValue!26525))))

(declare-fun b!860193 () Bool)

(declare-fun e!479358 () Bool)

(declare-fun e!479364 () Bool)

(assert (=> b!860193 (= e!479358 e!479364)))

(declare-fun res!584674 () Bool)

(assert (=> b!860193 (=> res!584674 e!479364)))

(declare-datatypes ((array!49392 0))(
  ( (array!49393 (arr!23723 (Array (_ BitVec 32) (_ BitVec 64))) (size!24164 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49392)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!860193 (= res!584674 (not (= (select (arr!23723 _keys!868) from!1053) k0!854)))))

(declare-datatypes ((tuple2!11032 0))(
  ( (tuple2!11033 (_1!5526 (_ BitVec 64)) (_2!5526 V!27203)) )
))
(declare-datatypes ((List!16902 0))(
  ( (Nil!16899) (Cons!16898 (h!18029 tuple2!11032) (t!23657 List!16902)) )
))
(declare-datatypes ((ListLongMap!9815 0))(
  ( (ListLongMap!9816 (toList!4923 List!16902)) )
))
(declare-fun lt!387729 () ListLongMap!9815)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!387721 () ListLongMap!9815)

(declare-fun +!2224 (ListLongMap!9815 tuple2!11032) ListLongMap!9815)

(declare-fun get!12518 (ValueCell!7869 V!27203) V!27203)

(declare-fun dynLambda!1108 (Int (_ BitVec 64)) V!27203)

(assert (=> b!860193 (= lt!387721 (+!2224 lt!387729 (tuple2!11033 (select (arr!23723 _keys!868) from!1053) (get!12518 (select (arr!23722 _values!688) from!1053) (dynLambda!1108 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!860194 () Bool)

(declare-fun e!479363 () Bool)

(assert (=> b!860194 (= e!479363 (not e!479358))))

(declare-fun res!584682 () Bool)

(assert (=> b!860194 (=> res!584682 e!479358)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!860194 (= res!584682 (not (validKeyInArray!0 (select (arr!23723 _keys!868) from!1053))))))

(declare-fun lt!387724 () ListLongMap!9815)

(assert (=> b!860194 (= lt!387724 lt!387729)))

(declare-fun v!557 () V!27203)

(declare-fun lt!387725 () ListLongMap!9815)

(assert (=> b!860194 (= lt!387729 (+!2224 lt!387725 (tuple2!11033 k0!854 v!557)))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun lt!387722 () array!49390)

(declare-fun minValue!654 () V!27203)

(declare-fun zeroValue!654 () V!27203)

(declare-fun getCurrentListMapNoExtraKeys!2903 (array!49392 array!49390 (_ BitVec 32) (_ BitVec 32) V!27203 V!27203 (_ BitVec 32) Int) ListLongMap!9815)

(assert (=> b!860194 (= lt!387724 (getCurrentListMapNoExtraKeys!2903 _keys!868 lt!387722 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!860194 (= lt!387725 (getCurrentListMapNoExtraKeys!2903 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29292 0))(
  ( (Unit!29293) )
))
(declare-fun lt!387723 () Unit!29292)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!479 (array!49392 array!49390 (_ BitVec 32) (_ BitVec 32) V!27203 V!27203 (_ BitVec 32) (_ BitVec 64) V!27203 (_ BitVec 32) Int) Unit!29292)

(assert (=> b!860194 (= lt!387723 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!479 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!860195 () Bool)

(declare-fun e!479360 () Bool)

(declare-fun tp_is_empty!16617 () Bool)

(assert (=> b!860195 (= e!479360 tp_is_empty!16617)))

(declare-fun b!860196 () Bool)

(declare-fun res!584672 () Bool)

(declare-fun e!479361 () Bool)

(assert (=> b!860196 (=> (not res!584672) (not e!479361))))

(assert (=> b!860196 (= res!584672 (and (= (select (arr!23723 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!860197 () Bool)

(declare-fun e!479356 () Bool)

(assert (=> b!860197 (= e!479364 e!479356)))

(declare-fun res!584683 () Bool)

(assert (=> b!860197 (=> res!584683 e!479356)))

(assert (=> b!860197 (= res!584683 (or (bvsge (size!24164 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24164 _keys!868)) (bvsge from!1053 (size!24164 _keys!868))))))

(declare-fun arrayContainsKey!0 (array!49392 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!860197 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!387727 () Unit!29292)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49392 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29292)

(assert (=> b!860197 (= lt!387727 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-datatypes ((List!16903 0))(
  ( (Nil!16900) (Cons!16899 (h!18030 (_ BitVec 64)) (t!23658 List!16903)) )
))
(declare-fun arrayNoDuplicates!0 (array!49392 (_ BitVec 32) List!16903) Bool)

(assert (=> b!860197 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16900)))

(declare-fun lt!387726 () Unit!29292)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49392 (_ BitVec 32) (_ BitVec 32)) Unit!29292)

(assert (=> b!860197 (= lt!387726 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!860198 () Bool)

(declare-fun res!584679 () Bool)

(assert (=> b!860198 (=> (not res!584679) (not e!479361))))

(assert (=> b!860198 (= res!584679 (validKeyInArray!0 k0!854))))

(declare-fun b!860199 () Bool)

(declare-fun res!584681 () Bool)

(assert (=> b!860199 (=> (not res!584681) (not e!479361))))

(assert (=> b!860199 (= res!584681 (and (= (size!24163 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24164 _keys!868) (size!24163 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!584677 () Bool)

(assert (=> start!73594 (=> (not res!584677) (not e!479361))))

(assert (=> start!73594 (= res!584677 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24164 _keys!868))))))

(assert (=> start!73594 e!479361))

(assert (=> start!73594 tp_is_empty!16617))

(assert (=> start!73594 true))

(assert (=> start!73594 tp!50947))

(declare-fun array_inv!18752 (array!49392) Bool)

(assert (=> start!73594 (array_inv!18752 _keys!868)))

(declare-fun e!479362 () Bool)

(declare-fun array_inv!18753 (array!49390) Bool)

(assert (=> start!73594 (and (array_inv!18753 _values!688) e!479362)))

(declare-fun mapIsEmpty!26525 () Bool)

(assert (=> mapIsEmpty!26525 mapRes!26525))

(declare-fun b!860200 () Bool)

(assert (=> b!860200 (= e!479362 (and e!479360 mapRes!26525))))

(declare-fun condMapEmpty!26525 () Bool)

(declare-fun mapDefault!26525 () ValueCell!7869)

(assert (=> b!860200 (= condMapEmpty!26525 (= (arr!23722 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7869)) mapDefault!26525)))))

(declare-fun b!860201 () Bool)

(declare-fun res!584685 () Bool)

(assert (=> b!860201 (=> res!584685 e!479356)))

(declare-fun noDuplicate!1310 (List!16903) Bool)

(assert (=> b!860201 (= res!584685 (not (noDuplicate!1310 Nil!16900)))))

(declare-fun b!860202 () Bool)

(declare-fun res!584684 () Bool)

(assert (=> b!860202 (=> res!584684 e!479356)))

(declare-fun contains!4230 (List!16903 (_ BitVec 64)) Bool)

(assert (=> b!860202 (= res!584684 (contains!4230 Nil!16900 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!860203 () Bool)

(declare-fun res!584676 () Bool)

(assert (=> b!860203 (=> (not res!584676) (not e!479361))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!860203 (= res!584676 (validMask!0 mask!1196))))

(declare-fun b!860204 () Bool)

(declare-fun res!584680 () Bool)

(assert (=> b!860204 (=> (not res!584680) (not e!479361))))

(assert (=> b!860204 (= res!584680 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24164 _keys!868))))))

(declare-fun b!860205 () Bool)

(assert (=> b!860205 (= e!479359 tp_is_empty!16617)))

(declare-fun b!860206 () Bool)

(declare-fun res!584675 () Bool)

(assert (=> b!860206 (=> (not res!584675) (not e!479361))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49392 (_ BitVec 32)) Bool)

(assert (=> b!860206 (= res!584675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!860207 () Bool)

(declare-fun res!584678 () Bool)

(assert (=> b!860207 (=> (not res!584678) (not e!479361))))

(assert (=> b!860207 (= res!584678 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16900))))

(declare-fun b!860208 () Bool)

(assert (=> b!860208 (= e!479356 true)))

(declare-fun lt!387728 () Bool)

(assert (=> b!860208 (= lt!387728 (contains!4230 Nil!16900 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!860209 () Bool)

(assert (=> b!860209 (= e!479361 e!479363)))

(declare-fun res!584673 () Bool)

(assert (=> b!860209 (=> (not res!584673) (not e!479363))))

(assert (=> b!860209 (= res!584673 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!860209 (= lt!387721 (getCurrentListMapNoExtraKeys!2903 _keys!868 lt!387722 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!860209 (= lt!387722 (array!49391 (store (arr!23722 _values!688) i!612 (ValueCellFull!7869 v!557)) (size!24163 _values!688)))))

(declare-fun lt!387720 () ListLongMap!9815)

(assert (=> b!860209 (= lt!387720 (getCurrentListMapNoExtraKeys!2903 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (= (and start!73594 res!584677) b!860203))

(assert (= (and b!860203 res!584676) b!860199))

(assert (= (and b!860199 res!584681) b!860206))

(assert (= (and b!860206 res!584675) b!860207))

(assert (= (and b!860207 res!584678) b!860204))

(assert (= (and b!860204 res!584680) b!860198))

(assert (= (and b!860198 res!584679) b!860196))

(assert (= (and b!860196 res!584672) b!860209))

(assert (= (and b!860209 res!584673) b!860194))

(assert (= (and b!860194 (not res!584682)) b!860193))

(assert (= (and b!860193 (not res!584674)) b!860197))

(assert (= (and b!860197 (not res!584683)) b!860201))

(assert (= (and b!860201 (not res!584685)) b!860202))

(assert (= (and b!860202 (not res!584684)) b!860208))

(assert (= (and b!860200 condMapEmpty!26525) mapIsEmpty!26525))

(assert (= (and b!860200 (not condMapEmpty!26525)) mapNonEmpty!26525))

(get-info :version)

(assert (= (and mapNonEmpty!26525 ((_ is ValueCellFull!7869) mapValue!26525)) b!860205))

(assert (= (and b!860200 ((_ is ValueCellFull!7869) mapDefault!26525)) b!860195))

(assert (= start!73594 b!860200))

(declare-fun b_lambda!11863 () Bool)

(assert (=> (not b_lambda!11863) (not b!860193)))

(declare-fun t!23656 () Bool)

(declare-fun tb!4611 () Bool)

(assert (=> (and start!73594 (= defaultEntry!696 defaultEntry!696) t!23656) tb!4611))

(declare-fun result!8825 () Bool)

(assert (=> tb!4611 (= result!8825 tp_is_empty!16617)))

(assert (=> b!860193 t!23656))

(declare-fun b_and!23961 () Bool)

(assert (= b_and!23959 (and (=> t!23656 result!8825) b_and!23961)))

(declare-fun m!801099 () Bool)

(assert (=> b!860202 m!801099))

(declare-fun m!801101 () Bool)

(assert (=> start!73594 m!801101))

(declare-fun m!801103 () Bool)

(assert (=> start!73594 m!801103))

(declare-fun m!801105 () Bool)

(assert (=> b!860207 m!801105))

(declare-fun m!801107 () Bool)

(assert (=> b!860208 m!801107))

(declare-fun m!801109 () Bool)

(assert (=> b!860193 m!801109))

(declare-fun m!801111 () Bool)

(assert (=> b!860193 m!801111))

(declare-fun m!801113 () Bool)

(assert (=> b!860193 m!801113))

(declare-fun m!801115 () Bool)

(assert (=> b!860193 m!801115))

(assert (=> b!860193 m!801111))

(declare-fun m!801117 () Bool)

(assert (=> b!860193 m!801117))

(assert (=> b!860193 m!801113))

(declare-fun m!801119 () Bool)

(assert (=> b!860201 m!801119))

(declare-fun m!801121 () Bool)

(assert (=> b!860196 m!801121))

(declare-fun m!801123 () Bool)

(assert (=> b!860206 m!801123))

(declare-fun m!801125 () Bool)

(assert (=> b!860209 m!801125))

(declare-fun m!801127 () Bool)

(assert (=> b!860209 m!801127))

(declare-fun m!801129 () Bool)

(assert (=> b!860209 m!801129))

(declare-fun m!801131 () Bool)

(assert (=> b!860194 m!801131))

(declare-fun m!801133 () Bool)

(assert (=> b!860194 m!801133))

(assert (=> b!860194 m!801117))

(declare-fun m!801135 () Bool)

(assert (=> b!860194 m!801135))

(assert (=> b!860194 m!801117))

(declare-fun m!801137 () Bool)

(assert (=> b!860194 m!801137))

(declare-fun m!801139 () Bool)

(assert (=> b!860194 m!801139))

(declare-fun m!801141 () Bool)

(assert (=> b!860198 m!801141))

(declare-fun m!801143 () Bool)

(assert (=> b!860197 m!801143))

(declare-fun m!801145 () Bool)

(assert (=> b!860197 m!801145))

(declare-fun m!801147 () Bool)

(assert (=> b!860197 m!801147))

(declare-fun m!801149 () Bool)

(assert (=> b!860197 m!801149))

(declare-fun m!801151 () Bool)

(assert (=> mapNonEmpty!26525 m!801151))

(declare-fun m!801153 () Bool)

(assert (=> b!860203 m!801153))

(check-sat (not b!860198) (not b!860202) b_and!23961 (not b!860201) (not b!860206) tp_is_empty!16617 (not b_lambda!11863) (not b_next!14481) (not b!860209) (not start!73594) (not b!860197) (not mapNonEmpty!26525) (not b!860203) (not b!860194) (not b!860193) (not b!860207) (not b!860208))
(check-sat b_and!23961 (not b_next!14481))
