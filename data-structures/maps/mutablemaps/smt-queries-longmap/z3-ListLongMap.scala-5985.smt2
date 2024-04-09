; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77766 () Bool)

(assert start!77766)

(declare-fun b_free!16323 () Bool)

(declare-fun b_next!16323 () Bool)

(assert (=> start!77766 (= b_free!16323 (not b_next!16323))))

(declare-fun tp!57232 () Bool)

(declare-fun b_and!26817 () Bool)

(assert (=> start!77766 (= tp!57232 b_and!26817)))

(declare-fun res!612248 () Bool)

(declare-fun e!508324 () Bool)

(assert (=> start!77766 (=> (not res!612248) (not e!508324))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77766 (= res!612248 (validMask!0 mask!1756))))

(assert (=> start!77766 e!508324))

(declare-datatypes ((V!29953 0))(
  ( (V!29954 (val!9421 Int)) )
))
(declare-datatypes ((ValueCell!8889 0))(
  ( (ValueCellFull!8889 (v!11926 V!29953)) (EmptyCell!8889) )
))
(declare-datatypes ((array!53508 0))(
  ( (array!53509 (arr!25709 (Array (_ BitVec 32) ValueCell!8889)) (size!26169 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53508)

(declare-fun e!508323 () Bool)

(declare-fun array_inv!20106 (array!53508) Bool)

(assert (=> start!77766 (and (array_inv!20106 _values!1152) e!508323)))

(assert (=> start!77766 tp!57232))

(assert (=> start!77766 true))

(declare-fun tp_is_empty!18741 () Bool)

(assert (=> start!77766 tp_is_empty!18741))

(declare-datatypes ((array!53510 0))(
  ( (array!53511 (arr!25710 (Array (_ BitVec 32) (_ BitVec 64))) (size!26170 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53510)

(declare-fun array_inv!20107 (array!53510) Bool)

(assert (=> start!77766 (array_inv!20107 _keys!1386)))

(declare-fun b!906982 () Bool)

(declare-fun res!612252 () Bool)

(assert (=> b!906982 (=> (not res!612252) (not e!508324))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!906982 (= res!612252 (and (= (size!26169 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26170 _keys!1386) (size!26169 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!906983 () Bool)

(declare-fun res!612246 () Bool)

(assert (=> b!906983 (=> (not res!612246) (not e!508324))))

(declare-datatypes ((List!18148 0))(
  ( (Nil!18145) (Cons!18144 (h!19290 (_ BitVec 64)) (t!25651 List!18148)) )
))
(declare-fun arrayNoDuplicates!0 (array!53510 (_ BitVec 32) List!18148) Bool)

(assert (=> b!906983 (= res!612246 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18145))))

(declare-fun b!906984 () Bool)

(declare-fun e!508318 () Bool)

(assert (=> b!906984 (= e!508324 e!508318)))

(declare-fun res!612251 () Bool)

(assert (=> b!906984 (=> (not res!612251) (not e!508318))))

(declare-datatypes ((tuple2!12286 0))(
  ( (tuple2!12287 (_1!6153 (_ BitVec 64)) (_2!6153 V!29953)) )
))
(declare-datatypes ((List!18149 0))(
  ( (Nil!18146) (Cons!18145 (h!19291 tuple2!12286) (t!25652 List!18149)) )
))
(declare-datatypes ((ListLongMap!10997 0))(
  ( (ListLongMap!10998 (toList!5514 List!18149)) )
))
(declare-fun lt!409119 () ListLongMap!10997)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun contains!4524 (ListLongMap!10997 (_ BitVec 64)) Bool)

(assert (=> b!906984 (= res!612251 (contains!4524 lt!409119 k0!1033))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!29953)

(declare-fun minValue!1094 () V!29953)

(declare-fun getCurrentListMap!2748 (array!53510 array!53508 (_ BitVec 32) (_ BitVec 32) V!29953 V!29953 (_ BitVec 32) Int) ListLongMap!10997)

(assert (=> b!906984 (= lt!409119 (getCurrentListMap!2748 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!906985 () Bool)

(declare-fun res!612247 () Bool)

(assert (=> b!906985 (=> (not res!612247) (not e!508318))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!906985 (= res!612247 (inRange!0 i!717 mask!1756))))

(declare-fun b!906986 () Bool)

(declare-fun res!612250 () Bool)

(assert (=> b!906986 (=> (not res!612250) (not e!508324))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53510 (_ BitVec 32)) Bool)

(assert (=> b!906986 (= res!612250 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapNonEmpty!29824 () Bool)

(declare-fun mapRes!29824 () Bool)

(declare-fun tp!57231 () Bool)

(declare-fun e!508325 () Bool)

(assert (=> mapNonEmpty!29824 (= mapRes!29824 (and tp!57231 e!508325))))

(declare-fun mapRest!29824 () (Array (_ BitVec 32) ValueCell!8889))

(declare-fun mapKey!29824 () (_ BitVec 32))

(declare-fun mapValue!29824 () ValueCell!8889)

(assert (=> mapNonEmpty!29824 (= (arr!25709 _values!1152) (store mapRest!29824 mapKey!29824 mapValue!29824))))

(declare-fun b!906987 () Bool)

(declare-fun e!508321 () Bool)

(assert (=> b!906987 (= e!508318 (not e!508321))))

(declare-fun res!612249 () Bool)

(assert (=> b!906987 (=> res!612249 e!508321)))

(assert (=> b!906987 (= res!612249 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26170 _keys!1386))))))

(declare-fun lt!409121 () V!29953)

(declare-fun get!13537 (ValueCell!8889 V!29953) V!29953)

(declare-fun dynLambda!1363 (Int (_ BitVec 64)) V!29953)

(assert (=> b!906987 (= lt!409121 (get!13537 (select (arr!25709 _values!1152) i!717) (dynLambda!1363 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!53510 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!906987 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30755 0))(
  ( (Unit!30756) )
))
(declare-fun lt!409118 () Unit!30755)

(declare-fun lemmaKeyInListMapIsInArray!236 (array!53510 array!53508 (_ BitVec 32) (_ BitVec 32) V!29953 V!29953 (_ BitVec 64) Int) Unit!30755)

(assert (=> b!906987 (= lt!409118 (lemmaKeyInListMapIsInArray!236 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!906988 () Bool)

(declare-fun e!508320 () Bool)

(assert (=> b!906988 (= e!508320 tp_is_empty!18741)))

(declare-fun b!906989 () Bool)

(declare-fun res!612245 () Bool)

(declare-fun e!508322 () Bool)

(assert (=> b!906989 (=> res!612245 e!508322)))

(declare-fun lt!409120 () ListLongMap!10997)

(declare-fun apply!490 (ListLongMap!10997 (_ BitVec 64)) V!29953)

(assert (=> b!906989 (= res!612245 (not (= (apply!490 lt!409120 k0!1033) lt!409121)))))

(declare-fun b!906990 () Bool)

(assert (=> b!906990 (= e!508323 (and e!508320 mapRes!29824))))

(declare-fun condMapEmpty!29824 () Bool)

(declare-fun mapDefault!29824 () ValueCell!8889)

(assert (=> b!906990 (= condMapEmpty!29824 (= (arr!25709 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8889)) mapDefault!29824)))))

(declare-fun b!906991 () Bool)

(assert (=> b!906991 (= e!508325 tp_is_empty!18741)))

(declare-fun b!906992 () Bool)

(declare-fun res!612243 () Bool)

(assert (=> b!906992 (=> (not res!612243) (not e!508318))))

(assert (=> b!906992 (= res!612243 (and (= (select (arr!25710 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!29824 () Bool)

(assert (=> mapIsEmpty!29824 mapRes!29824))

(declare-fun b!906993 () Bool)

(assert (=> b!906993 (= e!508322 true)))

(assert (=> b!906993 (= (apply!490 lt!409119 k0!1033) lt!409121)))

(declare-fun lt!409117 () Unit!30755)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!37 (array!53510 array!53508 (_ BitVec 32) (_ BitVec 32) V!29953 V!29953 (_ BitVec 64) V!29953 (_ BitVec 32) Int) Unit!30755)

(assert (=> b!906993 (= lt!409117 (lemmaListMapApplyFromThenApplyFromZero!37 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!409121 i!717 defaultEntry!1160))))

(declare-fun b!906994 () Bool)

(assert (=> b!906994 (= e!508321 e!508322)))

(declare-fun res!612244 () Bool)

(assert (=> b!906994 (=> res!612244 e!508322)))

(assert (=> b!906994 (= res!612244 (not (contains!4524 lt!409120 k0!1033)))))

(assert (=> b!906994 (= lt!409120 (getCurrentListMap!2748 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(assert (= (and start!77766 res!612248) b!906982))

(assert (= (and b!906982 res!612252) b!906986))

(assert (= (and b!906986 res!612250) b!906983))

(assert (= (and b!906983 res!612246) b!906984))

(assert (= (and b!906984 res!612251) b!906985))

(assert (= (and b!906985 res!612247) b!906992))

(assert (= (and b!906992 res!612243) b!906987))

(assert (= (and b!906987 (not res!612249)) b!906994))

(assert (= (and b!906994 (not res!612244)) b!906989))

(assert (= (and b!906989 (not res!612245)) b!906993))

(assert (= (and b!906990 condMapEmpty!29824) mapIsEmpty!29824))

(assert (= (and b!906990 (not condMapEmpty!29824)) mapNonEmpty!29824))

(get-info :version)

(assert (= (and mapNonEmpty!29824 ((_ is ValueCellFull!8889) mapValue!29824)) b!906991))

(assert (= (and b!906990 ((_ is ValueCellFull!8889) mapDefault!29824)) b!906988))

(assert (= start!77766 b!906990))

(declare-fun b_lambda!13227 () Bool)

(assert (=> (not b_lambda!13227) (not b!906987)))

(declare-fun t!25650 () Bool)

(declare-fun tb!5353 () Bool)

(assert (=> (and start!77766 (= defaultEntry!1160 defaultEntry!1160) t!25650) tb!5353))

(declare-fun result!10493 () Bool)

(assert (=> tb!5353 (= result!10493 tp_is_empty!18741)))

(assert (=> b!906987 t!25650))

(declare-fun b_and!26819 () Bool)

(assert (= b_and!26817 (and (=> t!25650 result!10493) b_and!26819)))

(declare-fun m!842451 () Bool)

(assert (=> b!906984 m!842451))

(declare-fun m!842453 () Bool)

(assert (=> b!906984 m!842453))

(declare-fun m!842455 () Bool)

(assert (=> b!906992 m!842455))

(declare-fun m!842457 () Bool)

(assert (=> b!906989 m!842457))

(declare-fun m!842459 () Bool)

(assert (=> b!906985 m!842459))

(declare-fun m!842461 () Bool)

(assert (=> b!906993 m!842461))

(declare-fun m!842463 () Bool)

(assert (=> b!906993 m!842463))

(declare-fun m!842465 () Bool)

(assert (=> b!906994 m!842465))

(declare-fun m!842467 () Bool)

(assert (=> b!906994 m!842467))

(declare-fun m!842469 () Bool)

(assert (=> mapNonEmpty!29824 m!842469))

(declare-fun m!842471 () Bool)

(assert (=> b!906983 m!842471))

(declare-fun m!842473 () Bool)

(assert (=> b!906986 m!842473))

(declare-fun m!842475 () Bool)

(assert (=> start!77766 m!842475))

(declare-fun m!842477 () Bool)

(assert (=> start!77766 m!842477))

(declare-fun m!842479 () Bool)

(assert (=> start!77766 m!842479))

(declare-fun m!842481 () Bool)

(assert (=> b!906987 m!842481))

(declare-fun m!842483 () Bool)

(assert (=> b!906987 m!842483))

(declare-fun m!842485 () Bool)

(assert (=> b!906987 m!842485))

(declare-fun m!842487 () Bool)

(assert (=> b!906987 m!842487))

(assert (=> b!906987 m!842481))

(assert (=> b!906987 m!842485))

(declare-fun m!842489 () Bool)

(assert (=> b!906987 m!842489))

(check-sat (not b_next!16323) tp_is_empty!18741 (not mapNonEmpty!29824) (not b!906983) b_and!26819 (not b!906984) (not b_lambda!13227) (not start!77766) (not b!906985) (not b!906994) (not b!906987) (not b!906986) (not b!906989) (not b!906993))
(check-sat b_and!26819 (not b_next!16323))
