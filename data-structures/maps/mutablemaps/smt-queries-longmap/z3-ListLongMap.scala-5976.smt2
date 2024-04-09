; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77712 () Bool)

(assert start!77712)

(declare-fun b_free!16269 () Bool)

(declare-fun b_next!16269 () Bool)

(assert (=> start!77712 (= b_free!16269 (not b_next!16269))))

(declare-fun tp!57069 () Bool)

(declare-fun b_and!26709 () Bool)

(assert (=> start!77712 (= tp!57069 b_and!26709)))

(declare-fun mapNonEmpty!29743 () Bool)

(declare-fun mapRes!29743 () Bool)

(declare-fun tp!57070 () Bool)

(declare-fun e!507676 () Bool)

(assert (=> mapNonEmpty!29743 (= mapRes!29743 (and tp!57070 e!507676))))

(declare-datatypes ((V!29881 0))(
  ( (V!29882 (val!9394 Int)) )
))
(declare-datatypes ((ValueCell!8862 0))(
  ( (ValueCellFull!8862 (v!11899 V!29881)) (EmptyCell!8862) )
))
(declare-datatypes ((array!53404 0))(
  ( (array!53405 (arr!25657 (Array (_ BitVec 32) ValueCell!8862)) (size!26117 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53404)

(declare-fun mapKey!29743 () (_ BitVec 32))

(declare-fun mapValue!29743 () ValueCell!8862)

(declare-fun mapRest!29743 () (Array (_ BitVec 32) ValueCell!8862))

(assert (=> mapNonEmpty!29743 (= (arr!25657 _values!1152) (store mapRest!29743 mapKey!29743 mapValue!29743))))

(declare-fun b!905875 () Bool)

(declare-fun res!611436 () Bool)

(declare-fun e!507671 () Bool)

(assert (=> b!905875 (=> (not res!611436) (not e!507671))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-datatypes ((array!53406 0))(
  ( (array!53407 (arr!25658 (Array (_ BitVec 32) (_ BitVec 64))) (size!26118 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53406)

(assert (=> b!905875 (= res!611436 (and (= (size!26117 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26118 _keys!1386) (size!26117 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun res!611437 () Bool)

(assert (=> start!77712 (=> (not res!611437) (not e!507671))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77712 (= res!611437 (validMask!0 mask!1756))))

(assert (=> start!77712 e!507671))

(declare-fun e!507675 () Bool)

(declare-fun array_inv!20074 (array!53404) Bool)

(assert (=> start!77712 (and (array_inv!20074 _values!1152) e!507675)))

(assert (=> start!77712 tp!57069))

(assert (=> start!77712 true))

(declare-fun tp_is_empty!18687 () Bool)

(assert (=> start!77712 tp_is_empty!18687))

(declare-fun array_inv!20075 (array!53406) Bool)

(assert (=> start!77712 (array_inv!20075 _keys!1386)))

(declare-fun b!905876 () Bool)

(declare-fun res!611442 () Bool)

(declare-fun e!507670 () Bool)

(assert (=> b!905876 (=> res!611442 e!507670)))

(declare-fun lt!408714 () V!29881)

(declare-datatypes ((tuple2!12246 0))(
  ( (tuple2!12247 (_1!6133 (_ BitVec 64)) (_2!6133 V!29881)) )
))
(declare-datatypes ((List!18108 0))(
  ( (Nil!18105) (Cons!18104 (h!19250 tuple2!12246) (t!25557 List!18108)) )
))
(declare-datatypes ((ListLongMap!10957 0))(
  ( (ListLongMap!10958 (toList!5494 List!18108)) )
))
(declare-fun lt!408715 () ListLongMap!10957)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun apply!471 (ListLongMap!10957 (_ BitVec 64)) V!29881)

(assert (=> b!905876 (= res!611442 (not (= (apply!471 lt!408715 k0!1033) lt!408714)))))

(declare-fun b!905877 () Bool)

(assert (=> b!905877 (= e!507670 true)))

(declare-fun lt!408712 () ListLongMap!10957)

(assert (=> b!905877 (= (apply!471 lt!408712 k0!1033) lt!408714)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((Unit!30713 0))(
  ( (Unit!30714) )
))
(declare-fun lt!408713 () Unit!30713)

(declare-fun zeroValue!1094 () V!29881)

(declare-fun minValue!1094 () V!29881)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!22 (array!53406 array!53404 (_ BitVec 32) (_ BitVec 32) V!29881 V!29881 (_ BitVec 64) V!29881 (_ BitVec 32) Int) Unit!30713)

(assert (=> b!905877 (= lt!408713 (lemmaListMapApplyFromThenApplyFromZero!22 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!408714 i!717 defaultEntry!1160))))

(declare-fun b!905878 () Bool)

(declare-fun e!507672 () Bool)

(assert (=> b!905878 (= e!507672 tp_is_empty!18687)))

(declare-fun b!905879 () Bool)

(declare-fun res!611440 () Bool)

(assert (=> b!905879 (=> (not res!611440) (not e!507671))))

(declare-datatypes ((List!18109 0))(
  ( (Nil!18106) (Cons!18105 (h!19251 (_ BitVec 64)) (t!25558 List!18109)) )
))
(declare-fun arrayNoDuplicates!0 (array!53406 (_ BitVec 32) List!18109) Bool)

(assert (=> b!905879 (= res!611440 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18106))))

(declare-fun b!905880 () Bool)

(declare-fun e!507677 () Bool)

(declare-fun e!507673 () Bool)

(assert (=> b!905880 (= e!507677 (not e!507673))))

(declare-fun res!611433 () Bool)

(assert (=> b!905880 (=> res!611433 e!507673)))

(assert (=> b!905880 (= res!611433 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26118 _keys!1386))))))

(declare-fun get!13499 (ValueCell!8862 V!29881) V!29881)

(declare-fun dynLambda!1343 (Int (_ BitVec 64)) V!29881)

(assert (=> b!905880 (= lt!408714 (get!13499 (select (arr!25657 _values!1152) i!717) (dynLambda!1343 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53406 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!905880 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun lt!408716 () Unit!30713)

(declare-fun lemmaKeyInListMapIsInArray!216 (array!53406 array!53404 (_ BitVec 32) (_ BitVec 32) V!29881 V!29881 (_ BitVec 64) Int) Unit!30713)

(assert (=> b!905880 (= lt!408716 (lemmaKeyInListMapIsInArray!216 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun mapIsEmpty!29743 () Bool)

(assert (=> mapIsEmpty!29743 mapRes!29743))

(declare-fun b!905881 () Bool)

(assert (=> b!905881 (= e!507676 tp_is_empty!18687)))

(declare-fun b!905882 () Bool)

(declare-fun res!611434 () Bool)

(assert (=> b!905882 (=> (not res!611434) (not e!507677))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!905882 (= res!611434 (inRange!0 i!717 mask!1756))))

(declare-fun b!905883 () Bool)

(declare-fun res!611439 () Bool)

(assert (=> b!905883 (=> (not res!611439) (not e!507671))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53406 (_ BitVec 32)) Bool)

(assert (=> b!905883 (= res!611439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!905884 () Bool)

(declare-fun res!611435 () Bool)

(assert (=> b!905884 (=> (not res!611435) (not e!507677))))

(assert (=> b!905884 (= res!611435 (and (= (select (arr!25658 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!905885 () Bool)

(assert (=> b!905885 (= e!507671 e!507677)))

(declare-fun res!611438 () Bool)

(assert (=> b!905885 (=> (not res!611438) (not e!507677))))

(declare-fun contains!4504 (ListLongMap!10957 (_ BitVec 64)) Bool)

(assert (=> b!905885 (= res!611438 (contains!4504 lt!408712 k0!1033))))

(declare-fun getCurrentListMap!2728 (array!53406 array!53404 (_ BitVec 32) (_ BitVec 32) V!29881 V!29881 (_ BitVec 32) Int) ListLongMap!10957)

(assert (=> b!905885 (= lt!408712 (getCurrentListMap!2728 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!905886 () Bool)

(assert (=> b!905886 (= e!507675 (and e!507672 mapRes!29743))))

(declare-fun condMapEmpty!29743 () Bool)

(declare-fun mapDefault!29743 () ValueCell!8862)

(assert (=> b!905886 (= condMapEmpty!29743 (= (arr!25657 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8862)) mapDefault!29743)))))

(declare-fun b!905887 () Bool)

(assert (=> b!905887 (= e!507673 e!507670)))

(declare-fun res!611441 () Bool)

(assert (=> b!905887 (=> res!611441 e!507670)))

(assert (=> b!905887 (= res!611441 (not (contains!4504 lt!408715 k0!1033)))))

(assert (=> b!905887 (= lt!408715 (getCurrentListMap!2728 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(assert (= (and start!77712 res!611437) b!905875))

(assert (= (and b!905875 res!611436) b!905883))

(assert (= (and b!905883 res!611439) b!905879))

(assert (= (and b!905879 res!611440) b!905885))

(assert (= (and b!905885 res!611438) b!905882))

(assert (= (and b!905882 res!611434) b!905884))

(assert (= (and b!905884 res!611435) b!905880))

(assert (= (and b!905880 (not res!611433)) b!905887))

(assert (= (and b!905887 (not res!611441)) b!905876))

(assert (= (and b!905876 (not res!611442)) b!905877))

(assert (= (and b!905886 condMapEmpty!29743) mapIsEmpty!29743))

(assert (= (and b!905886 (not condMapEmpty!29743)) mapNonEmpty!29743))

(get-info :version)

(assert (= (and mapNonEmpty!29743 ((_ is ValueCellFull!8862) mapValue!29743)) b!905881))

(assert (= (and b!905886 ((_ is ValueCellFull!8862) mapDefault!29743)) b!905878))

(assert (= start!77712 b!905886))

(declare-fun b_lambda!13173 () Bool)

(assert (=> (not b_lambda!13173) (not b!905880)))

(declare-fun t!25556 () Bool)

(declare-fun tb!5299 () Bool)

(assert (=> (and start!77712 (= defaultEntry!1160 defaultEntry!1160) t!25556) tb!5299))

(declare-fun result!10385 () Bool)

(assert (=> tb!5299 (= result!10385 tp_is_empty!18687)))

(assert (=> b!905880 t!25556))

(declare-fun b_and!26711 () Bool)

(assert (= b_and!26709 (and (=> t!25556 result!10385) b_and!26711)))

(declare-fun m!841371 () Bool)

(assert (=> b!905876 m!841371))

(declare-fun m!841373 () Bool)

(assert (=> b!905883 m!841373))

(declare-fun m!841375 () Bool)

(assert (=> b!905884 m!841375))

(declare-fun m!841377 () Bool)

(assert (=> b!905877 m!841377))

(declare-fun m!841379 () Bool)

(assert (=> b!905877 m!841379))

(declare-fun m!841381 () Bool)

(assert (=> b!905882 m!841381))

(declare-fun m!841383 () Bool)

(assert (=> b!905887 m!841383))

(declare-fun m!841385 () Bool)

(assert (=> b!905887 m!841385))

(declare-fun m!841387 () Bool)

(assert (=> b!905885 m!841387))

(declare-fun m!841389 () Bool)

(assert (=> b!905885 m!841389))

(declare-fun m!841391 () Bool)

(assert (=> b!905879 m!841391))

(declare-fun m!841393 () Bool)

(assert (=> mapNonEmpty!29743 m!841393))

(declare-fun m!841395 () Bool)

(assert (=> start!77712 m!841395))

(declare-fun m!841397 () Bool)

(assert (=> start!77712 m!841397))

(declare-fun m!841399 () Bool)

(assert (=> start!77712 m!841399))

(declare-fun m!841401 () Bool)

(assert (=> b!905880 m!841401))

(declare-fun m!841403 () Bool)

(assert (=> b!905880 m!841403))

(declare-fun m!841405 () Bool)

(assert (=> b!905880 m!841405))

(declare-fun m!841407 () Bool)

(assert (=> b!905880 m!841407))

(assert (=> b!905880 m!841401))

(assert (=> b!905880 m!841405))

(declare-fun m!841409 () Bool)

(assert (=> b!905880 m!841409))

(check-sat (not mapNonEmpty!29743) (not b_lambda!13173) (not b!905887) b_and!26711 (not b!905877) (not b_next!16269) (not start!77712) (not b!905883) tp_is_empty!18687 (not b!905879) (not b!905885) (not b!905882) (not b!905880) (not b!905876))
(check-sat b_and!26711 (not b_next!16269))
