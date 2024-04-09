; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73810 () Bool)

(assert start!73810)

(declare-fun b_free!14697 () Bool)

(declare-fun b_next!14697 () Bool)

(assert (=> start!73810 (= b_free!14697 (not b_next!14697))))

(declare-fun tp!51596 () Bool)

(declare-fun b_and!24391 () Bool)

(assert (=> start!73810 (= tp!51596 b_and!24391)))

(declare-fun b!865525 () Bool)

(declare-fun res!588219 () Bool)

(declare-fun e!482187 () Bool)

(assert (=> b!865525 (=> (not res!588219) (not e!482187))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49810 0))(
  ( (array!49811 (arr!23932 (Array (_ BitVec 32) (_ BitVec 64))) (size!24373 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49810)

(declare-datatypes ((V!27491 0))(
  ( (V!27492 (val!8464 Int)) )
))
(declare-datatypes ((ValueCell!7977 0))(
  ( (ValueCellFull!7977 (v!10885 V!27491)) (EmptyCell!7977) )
))
(declare-datatypes ((array!49812 0))(
  ( (array!49813 (arr!23933 (Array (_ BitVec 32) ValueCell!7977)) (size!24374 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49812)

(assert (=> b!865525 (= res!588219 (and (= (size!24374 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24373 _keys!868) (size!24374 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!865526 () Bool)

(declare-fun res!588216 () Bool)

(assert (=> b!865526 (=> (not res!588216) (not e!482187))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!865526 (= res!588216 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!26849 () Bool)

(declare-fun mapRes!26849 () Bool)

(declare-fun tp!51595 () Bool)

(declare-fun e!482182 () Bool)

(assert (=> mapNonEmpty!26849 (= mapRes!26849 (and tp!51595 e!482182))))

(declare-fun mapValue!26849 () ValueCell!7977)

(declare-fun mapKey!26849 () (_ BitVec 32))

(declare-fun mapRest!26849 () (Array (_ BitVec 32) ValueCell!7977))

(assert (=> mapNonEmpty!26849 (= (arr!23933 _values!688) (store mapRest!26849 mapKey!26849 mapValue!26849))))

(declare-fun mapIsEmpty!26849 () Bool)

(assert (=> mapIsEmpty!26849 mapRes!26849))

(declare-fun b!865527 () Bool)

(declare-fun res!588215 () Bool)

(assert (=> b!865527 (=> (not res!588215) (not e!482187))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!865527 (= res!588215 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24373 _keys!868))))))

(declare-fun b!865529 () Bool)

(declare-fun e!482184 () Bool)

(declare-fun tp_is_empty!16833 () Bool)

(assert (=> b!865529 (= e!482184 tp_is_empty!16833)))

(declare-fun b!865530 () Bool)

(declare-fun e!482186 () Bool)

(assert (=> b!865530 (= e!482186 true)))

(declare-datatypes ((tuple2!11222 0))(
  ( (tuple2!11223 (_1!5621 (_ BitVec 64)) (_2!5621 V!27491)) )
))
(declare-fun lt!392325 () tuple2!11222)

(declare-fun lt!392332 () tuple2!11222)

(declare-datatypes ((List!17086 0))(
  ( (Nil!17083) (Cons!17082 (h!18213 tuple2!11222) (t!24057 List!17086)) )
))
(declare-datatypes ((ListLongMap!10005 0))(
  ( (ListLongMap!10006 (toList!5018 List!17086)) )
))
(declare-fun lt!392324 () ListLongMap!10005)

(declare-fun lt!392327 () ListLongMap!10005)

(declare-fun +!2314 (ListLongMap!10005 tuple2!11222) ListLongMap!10005)

(assert (=> b!865530 (= lt!392327 (+!2314 (+!2314 lt!392324 lt!392332) lt!392325))))

(declare-fun v!557 () V!27491)

(declare-datatypes ((Unit!29626 0))(
  ( (Unit!29627) )
))
(declare-fun lt!392336 () Unit!29626)

(declare-fun lt!392334 () V!27491)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun addCommutativeForDiffKeys!521 (ListLongMap!10005 (_ BitVec 64) V!27491 (_ BitVec 64) V!27491) Unit!29626)

(assert (=> b!865530 (= lt!392336 (addCommutativeForDiffKeys!521 lt!392324 k0!854 v!557 (select (arr!23932 _keys!868) from!1053) lt!392334))))

(declare-fun b!865531 () Bool)

(declare-fun res!588213 () Bool)

(assert (=> b!865531 (=> (not res!588213) (not e!482187))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49810 (_ BitVec 32)) Bool)

(assert (=> b!865531 (= res!588213 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!865532 () Bool)

(declare-fun res!588214 () Bool)

(assert (=> b!865532 (=> (not res!588214) (not e!482187))))

(assert (=> b!865532 (= res!588214 (and (= (select (arr!23932 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!865533 () Bool)

(declare-fun e!482185 () Bool)

(declare-fun e!482188 () Bool)

(assert (=> b!865533 (= e!482185 (not e!482188))))

(declare-fun res!588218 () Bool)

(assert (=> b!865533 (=> res!588218 e!482188)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!865533 (= res!588218 (not (validKeyInArray!0 (select (arr!23932 _keys!868) from!1053))))))

(declare-fun lt!392333 () ListLongMap!10005)

(declare-fun lt!392328 () ListLongMap!10005)

(assert (=> b!865533 (= lt!392333 lt!392328)))

(assert (=> b!865533 (= lt!392328 (+!2314 lt!392324 lt!392325))))

(declare-fun lt!392331 () array!49812)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27491)

(declare-fun zeroValue!654 () V!27491)

(declare-fun getCurrentListMapNoExtraKeys!2986 (array!49810 array!49812 (_ BitVec 32) (_ BitVec 32) V!27491 V!27491 (_ BitVec 32) Int) ListLongMap!10005)

(assert (=> b!865533 (= lt!392333 (getCurrentListMapNoExtraKeys!2986 _keys!868 lt!392331 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!865533 (= lt!392325 (tuple2!11223 k0!854 v!557))))

(assert (=> b!865533 (= lt!392324 (getCurrentListMapNoExtraKeys!2986 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!392335 () Unit!29626)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!552 (array!49810 array!49812 (_ BitVec 32) (_ BitVec 32) V!27491 V!27491 (_ BitVec 32) (_ BitVec 64) V!27491 (_ BitVec 32) Int) Unit!29626)

(assert (=> b!865533 (= lt!392335 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!552 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!865534 () Bool)

(declare-fun e!482190 () Bool)

(assert (=> b!865534 (= e!482190 (and e!482184 mapRes!26849))))

(declare-fun condMapEmpty!26849 () Bool)

(declare-fun mapDefault!26849 () ValueCell!7977)

(assert (=> b!865534 (= condMapEmpty!26849 (= (arr!23933 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7977)) mapDefault!26849)))))

(declare-fun b!865535 () Bool)

(declare-fun e!482189 () Unit!29626)

(declare-fun Unit!29628 () Unit!29626)

(assert (=> b!865535 (= e!482189 Unit!29628)))

(declare-fun b!865536 () Bool)

(declare-fun res!588217 () Bool)

(assert (=> b!865536 (=> (not res!588217) (not e!482187))))

(assert (=> b!865536 (= res!588217 (validKeyInArray!0 k0!854))))

(declare-fun b!865528 () Bool)

(assert (=> b!865528 (= e!482182 tp_is_empty!16833)))

(declare-fun res!588222 () Bool)

(assert (=> start!73810 (=> (not res!588222) (not e!482187))))

(assert (=> start!73810 (= res!588222 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24373 _keys!868))))))

(assert (=> start!73810 e!482187))

(assert (=> start!73810 tp_is_empty!16833))

(assert (=> start!73810 true))

(assert (=> start!73810 tp!51596))

(declare-fun array_inv!18902 (array!49810) Bool)

(assert (=> start!73810 (array_inv!18902 _keys!868)))

(declare-fun array_inv!18903 (array!49812) Bool)

(assert (=> start!73810 (and (array_inv!18903 _values!688) e!482190)))

(declare-fun b!865537 () Bool)

(assert (=> b!865537 (= e!482187 e!482185)))

(declare-fun res!588221 () Bool)

(assert (=> b!865537 (=> (not res!588221) (not e!482185))))

(assert (=> b!865537 (= res!588221 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!392337 () ListLongMap!10005)

(assert (=> b!865537 (= lt!392337 (getCurrentListMapNoExtraKeys!2986 _keys!868 lt!392331 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!865537 (= lt!392331 (array!49813 (store (arr!23933 _values!688) i!612 (ValueCellFull!7977 v!557)) (size!24374 _values!688)))))

(declare-fun lt!392323 () ListLongMap!10005)

(assert (=> b!865537 (= lt!392323 (getCurrentListMapNoExtraKeys!2986 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!865538 () Bool)

(assert (=> b!865538 (= e!482188 e!482186)))

(declare-fun res!588212 () Bool)

(assert (=> b!865538 (=> res!588212 e!482186)))

(assert (=> b!865538 (= res!588212 (= k0!854 (select (arr!23932 _keys!868) from!1053)))))

(assert (=> b!865538 (not (= (select (arr!23932 _keys!868) from!1053) k0!854))))

(declare-fun lt!392330 () Unit!29626)

(assert (=> b!865538 (= lt!392330 e!482189)))

(declare-fun c!92184 () Bool)

(assert (=> b!865538 (= c!92184 (= (select (arr!23932 _keys!868) from!1053) k0!854))))

(assert (=> b!865538 (= lt!392337 lt!392327)))

(assert (=> b!865538 (= lt!392327 (+!2314 lt!392328 lt!392332))))

(assert (=> b!865538 (= lt!392332 (tuple2!11223 (select (arr!23932 _keys!868) from!1053) lt!392334))))

(declare-fun get!12664 (ValueCell!7977 V!27491) V!27491)

(declare-fun dynLambda!1182 (Int (_ BitVec 64)) V!27491)

(assert (=> b!865538 (= lt!392334 (get!12664 (select (arr!23933 _values!688) from!1053) (dynLambda!1182 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!865539 () Bool)

(declare-fun Unit!29629 () Unit!29626)

(assert (=> b!865539 (= e!482189 Unit!29629)))

(declare-fun lt!392322 () Unit!29626)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49810 (_ BitVec 32) (_ BitVec 32)) Unit!29626)

(assert (=> b!865539 (= lt!392322 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17087 0))(
  ( (Nil!17084) (Cons!17083 (h!18214 (_ BitVec 64)) (t!24058 List!17087)) )
))
(declare-fun arrayNoDuplicates!0 (array!49810 (_ BitVec 32) List!17087) Bool)

(assert (=> b!865539 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17084)))

(declare-fun lt!392326 () Unit!29626)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49810 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29626)

(assert (=> b!865539 (= lt!392326 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49810 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!865539 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!392329 () Unit!29626)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49810 (_ BitVec 64) (_ BitVec 32) List!17087) Unit!29626)

(assert (=> b!865539 (= lt!392329 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17084))))

(assert (=> b!865539 false))

(declare-fun b!865540 () Bool)

(declare-fun res!588220 () Bool)

(assert (=> b!865540 (=> (not res!588220) (not e!482187))))

(assert (=> b!865540 (= res!588220 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17084))))

(assert (= (and start!73810 res!588222) b!865526))

(assert (= (and b!865526 res!588216) b!865525))

(assert (= (and b!865525 res!588219) b!865531))

(assert (= (and b!865531 res!588213) b!865540))

(assert (= (and b!865540 res!588220) b!865527))

(assert (= (and b!865527 res!588215) b!865536))

(assert (= (and b!865536 res!588217) b!865532))

(assert (= (and b!865532 res!588214) b!865537))

(assert (= (and b!865537 res!588221) b!865533))

(assert (= (and b!865533 (not res!588218)) b!865538))

(assert (= (and b!865538 c!92184) b!865539))

(assert (= (and b!865538 (not c!92184)) b!865535))

(assert (= (and b!865538 (not res!588212)) b!865530))

(assert (= (and b!865534 condMapEmpty!26849) mapIsEmpty!26849))

(assert (= (and b!865534 (not condMapEmpty!26849)) mapNonEmpty!26849))

(get-info :version)

(assert (= (and mapNonEmpty!26849 ((_ is ValueCellFull!7977) mapValue!26849)) b!865528))

(assert (= (and b!865534 ((_ is ValueCellFull!7977) mapDefault!26849)) b!865529))

(assert (= start!73810 b!865534))

(declare-fun b_lambda!12079 () Bool)

(assert (=> (not b_lambda!12079) (not b!865538)))

(declare-fun t!24056 () Bool)

(declare-fun tb!4827 () Bool)

(assert (=> (and start!73810 (= defaultEntry!696 defaultEntry!696) t!24056) tb!4827))

(declare-fun result!9257 () Bool)

(assert (=> tb!4827 (= result!9257 tp_is_empty!16833)))

(assert (=> b!865538 t!24056))

(declare-fun b_and!24393 () Bool)

(assert (= b_and!24391 (and (=> t!24056 result!9257) b_and!24393)))

(declare-fun m!807167 () Bool)

(assert (=> b!865540 m!807167))

(declare-fun m!807169 () Bool)

(assert (=> b!865526 m!807169))

(declare-fun m!807171 () Bool)

(assert (=> start!73810 m!807171))

(declare-fun m!807173 () Bool)

(assert (=> start!73810 m!807173))

(declare-fun m!807175 () Bool)

(assert (=> b!865536 m!807175))

(declare-fun m!807177 () Bool)

(assert (=> b!865532 m!807177))

(declare-fun m!807179 () Bool)

(assert (=> b!865533 m!807179))

(declare-fun m!807181 () Bool)

(assert (=> b!865533 m!807181))

(declare-fun m!807183 () Bool)

(assert (=> b!865533 m!807183))

(declare-fun m!807185 () Bool)

(assert (=> b!865533 m!807185))

(declare-fun m!807187 () Bool)

(assert (=> b!865533 m!807187))

(assert (=> b!865533 m!807185))

(declare-fun m!807189 () Bool)

(assert (=> b!865533 m!807189))

(declare-fun m!807191 () Bool)

(assert (=> b!865538 m!807191))

(declare-fun m!807193 () Bool)

(assert (=> b!865538 m!807193))

(declare-fun m!807195 () Bool)

(assert (=> b!865538 m!807195))

(declare-fun m!807197 () Bool)

(assert (=> b!865538 m!807197))

(assert (=> b!865538 m!807193))

(assert (=> b!865538 m!807185))

(assert (=> b!865538 m!807195))

(declare-fun m!807199 () Bool)

(assert (=> b!865539 m!807199))

(declare-fun m!807201 () Bool)

(assert (=> b!865539 m!807201))

(declare-fun m!807203 () Bool)

(assert (=> b!865539 m!807203))

(declare-fun m!807205 () Bool)

(assert (=> b!865539 m!807205))

(declare-fun m!807207 () Bool)

(assert (=> b!865539 m!807207))

(declare-fun m!807209 () Bool)

(assert (=> b!865537 m!807209))

(declare-fun m!807211 () Bool)

(assert (=> b!865537 m!807211))

(declare-fun m!807213 () Bool)

(assert (=> b!865537 m!807213))

(declare-fun m!807215 () Bool)

(assert (=> mapNonEmpty!26849 m!807215))

(declare-fun m!807217 () Bool)

(assert (=> b!865531 m!807217))

(declare-fun m!807219 () Bool)

(assert (=> b!865530 m!807219))

(assert (=> b!865530 m!807219))

(declare-fun m!807221 () Bool)

(assert (=> b!865530 m!807221))

(assert (=> b!865530 m!807185))

(assert (=> b!865530 m!807185))

(declare-fun m!807223 () Bool)

(assert (=> b!865530 m!807223))

(check-sat (not b!865531) (not b!865536) (not b!865537) tp_is_empty!16833 b_and!24393 (not b!865530) (not b_lambda!12079) (not b!865538) (not b_next!14697) (not b!865533) (not b!865540) (not mapNonEmpty!26849) (not b!865526) (not b!865539) (not start!73810))
(check-sat b_and!24393 (not b_next!14697))
