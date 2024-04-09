; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72862 () Bool)

(assert start!72862)

(declare-fun b_free!13749 () Bool)

(declare-fun b_next!13749 () Bool)

(assert (=> start!72862 (= b_free!13749 (not b_next!13749))))

(declare-fun tp!48751 () Bool)

(declare-fun b_and!22853 () Bool)

(assert (=> start!72862 (= tp!48751 b_and!22853)))

(declare-fun b!845093 () Bool)

(declare-fun e!471823 () Bool)

(assert (=> b!845093 (= e!471823 false)))

(declare-datatypes ((V!26227 0))(
  ( (V!26228 (val!7990 Int)) )
))
(declare-datatypes ((tuple2!10450 0))(
  ( (tuple2!10451 (_1!5235 (_ BitVec 64)) (_2!5235 V!26227)) )
))
(declare-datatypes ((List!16362 0))(
  ( (Nil!16359) (Cons!16358 (h!17489 tuple2!10450) (t!22741 List!16362)) )
))
(declare-datatypes ((ListLongMap!9233 0))(
  ( (ListLongMap!9234 (toList!4632 List!16362)) )
))
(declare-fun lt!381339 () ListLongMap!9233)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47974 0))(
  ( (array!47975 (arr!23014 (Array (_ BitVec 32) (_ BitVec 64))) (size!23455 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47974)

(declare-datatypes ((ValueCell!7503 0))(
  ( (ValueCellFull!7503 (v!10411 V!26227)) (EmptyCell!7503) )
))
(declare-datatypes ((array!47976 0))(
  ( (array!47977 (arr!23015 (Array (_ BitVec 32) ValueCell!7503)) (size!23456 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47976)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26227)

(declare-fun zeroValue!654 () V!26227)

(declare-fun getCurrentListMapNoExtraKeys!2621 (array!47974 array!47976 (_ BitVec 32) (_ BitVec 32) V!26227 V!26227 (_ BitVec 32) Int) ListLongMap!9233)

(assert (=> b!845093 (= lt!381339 (getCurrentListMapNoExtraKeys!2621 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!845094 () Bool)

(declare-fun e!471822 () Bool)

(declare-fun tp_is_empty!15885 () Bool)

(assert (=> b!845094 (= e!471822 tp_is_empty!15885)))

(declare-fun b!845095 () Bool)

(declare-fun res!574211 () Bool)

(assert (=> b!845095 (=> (not res!574211) (not e!471823))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!845095 (= res!574211 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23455 _keys!868))))))

(declare-fun mapIsEmpty!25427 () Bool)

(declare-fun mapRes!25427 () Bool)

(assert (=> mapIsEmpty!25427 mapRes!25427))

(declare-fun mapNonEmpty!25427 () Bool)

(declare-fun tp!48752 () Bool)

(assert (=> mapNonEmpty!25427 (= mapRes!25427 (and tp!48752 e!471822))))

(declare-fun mapRest!25427 () (Array (_ BitVec 32) ValueCell!7503))

(declare-fun mapKey!25427 () (_ BitVec 32))

(declare-fun mapValue!25427 () ValueCell!7503)

(assert (=> mapNonEmpty!25427 (= (arr!23015 _values!688) (store mapRest!25427 mapKey!25427 mapValue!25427))))

(declare-fun b!845096 () Bool)

(declare-fun e!471824 () Bool)

(assert (=> b!845096 (= e!471824 tp_is_empty!15885)))

(declare-fun b!845097 () Bool)

(declare-fun res!574215 () Bool)

(assert (=> b!845097 (=> (not res!574215) (not e!471823))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!845097 (= res!574215 (validMask!0 mask!1196))))

(declare-fun b!845098 () Bool)

(declare-fun res!574216 () Bool)

(assert (=> b!845098 (=> (not res!574216) (not e!471823))))

(assert (=> b!845098 (= res!574216 (and (= (size!23456 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23455 _keys!868) (size!23456 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!845092 () Bool)

(declare-fun res!574217 () Bool)

(assert (=> b!845092 (=> (not res!574217) (not e!471823))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!845092 (= res!574217 (validKeyInArray!0 k0!854))))

(declare-fun res!574212 () Bool)

(assert (=> start!72862 (=> (not res!574212) (not e!471823))))

(assert (=> start!72862 (= res!574212 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23455 _keys!868))))))

(assert (=> start!72862 e!471823))

(assert (=> start!72862 true))

(assert (=> start!72862 tp!48751))

(declare-fun array_inv!18274 (array!47974) Bool)

(assert (=> start!72862 (array_inv!18274 _keys!868)))

(declare-fun e!471825 () Bool)

(declare-fun array_inv!18275 (array!47976) Bool)

(assert (=> start!72862 (and (array_inv!18275 _values!688) e!471825)))

(assert (=> start!72862 tp_is_empty!15885))

(declare-fun b!845099 () Bool)

(declare-fun res!574213 () Bool)

(assert (=> b!845099 (=> (not res!574213) (not e!471823))))

(declare-datatypes ((List!16363 0))(
  ( (Nil!16360) (Cons!16359 (h!17490 (_ BitVec 64)) (t!22742 List!16363)) )
))
(declare-fun arrayNoDuplicates!0 (array!47974 (_ BitVec 32) List!16363) Bool)

(assert (=> b!845099 (= res!574213 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16360))))

(declare-fun b!845100 () Bool)

(assert (=> b!845100 (= e!471825 (and e!471824 mapRes!25427))))

(declare-fun condMapEmpty!25427 () Bool)

(declare-fun mapDefault!25427 () ValueCell!7503)

(assert (=> b!845100 (= condMapEmpty!25427 (= (arr!23015 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7503)) mapDefault!25427)))))

(declare-fun b!845101 () Bool)

(declare-fun res!574214 () Bool)

(assert (=> b!845101 (=> (not res!574214) (not e!471823))))

(assert (=> b!845101 (= res!574214 (and (= (select (arr!23014 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!845102 () Bool)

(declare-fun res!574218 () Bool)

(assert (=> b!845102 (=> (not res!574218) (not e!471823))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47974 (_ BitVec 32)) Bool)

(assert (=> b!845102 (= res!574218 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!72862 res!574212) b!845097))

(assert (= (and b!845097 res!574215) b!845098))

(assert (= (and b!845098 res!574216) b!845102))

(assert (= (and b!845102 res!574218) b!845099))

(assert (= (and b!845099 res!574213) b!845095))

(assert (= (and b!845095 res!574211) b!845092))

(assert (= (and b!845092 res!574217) b!845101))

(assert (= (and b!845101 res!574214) b!845093))

(assert (= (and b!845100 condMapEmpty!25427) mapIsEmpty!25427))

(assert (= (and b!845100 (not condMapEmpty!25427)) mapNonEmpty!25427))

(get-info :version)

(assert (= (and mapNonEmpty!25427 ((_ is ValueCellFull!7503) mapValue!25427)) b!845094))

(assert (= (and b!845100 ((_ is ValueCellFull!7503) mapDefault!25427)) b!845096))

(assert (= start!72862 b!845100))

(declare-fun m!787103 () Bool)

(assert (=> b!845093 m!787103))

(declare-fun m!787105 () Bool)

(assert (=> b!845092 m!787105))

(declare-fun m!787107 () Bool)

(assert (=> b!845102 m!787107))

(declare-fun m!787109 () Bool)

(assert (=> start!72862 m!787109))

(declare-fun m!787111 () Bool)

(assert (=> start!72862 m!787111))

(declare-fun m!787113 () Bool)

(assert (=> b!845099 m!787113))

(declare-fun m!787115 () Bool)

(assert (=> mapNonEmpty!25427 m!787115))

(declare-fun m!787117 () Bool)

(assert (=> b!845097 m!787117))

(declare-fun m!787119 () Bool)

(assert (=> b!845101 m!787119))

(check-sat (not b!845092) (not b!845102) (not start!72862) (not b!845099) (not b!845093) (not b_next!13749) (not b!845097) b_and!22853 tp_is_empty!15885 (not mapNonEmpty!25427))
(check-sat b_and!22853 (not b_next!13749))
