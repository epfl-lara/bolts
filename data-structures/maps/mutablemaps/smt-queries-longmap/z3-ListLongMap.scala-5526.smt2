; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72970 () Bool)

(assert start!72970)

(declare-fun b_free!13857 () Bool)

(declare-fun b_next!13857 () Bool)

(assert (=> start!72970 (= b_free!13857 (not b_next!13857))))

(declare-fun tp!49076 () Bool)

(declare-fun b_and!22961 () Bool)

(assert (=> start!72970 (= tp!49076 b_and!22961)))

(declare-fun b!846874 () Bool)

(declare-fun e!472631 () Bool)

(declare-fun tp_is_empty!15993 () Bool)

(assert (=> b!846874 (= e!472631 tp_is_empty!15993)))

(declare-fun mapNonEmpty!25589 () Bool)

(declare-fun mapRes!25589 () Bool)

(declare-fun tp!49075 () Bool)

(assert (=> mapNonEmpty!25589 (= mapRes!25589 (and tp!49075 e!472631))))

(declare-fun mapKey!25589 () (_ BitVec 32))

(declare-datatypes ((V!26371 0))(
  ( (V!26372 (val!8044 Int)) )
))
(declare-datatypes ((ValueCell!7557 0))(
  ( (ValueCellFull!7557 (v!10465 V!26371)) (EmptyCell!7557) )
))
(declare-datatypes ((array!48182 0))(
  ( (array!48183 (arr!23118 (Array (_ BitVec 32) ValueCell!7557)) (size!23559 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48182)

(declare-fun mapValue!25589 () ValueCell!7557)

(declare-fun mapRest!25589 () (Array (_ BitVec 32) ValueCell!7557))

(assert (=> mapNonEmpty!25589 (= (arr!23118 _values!688) (store mapRest!25589 mapKey!25589 mapValue!25589))))

(declare-fun b!846875 () Bool)

(declare-fun res!575510 () Bool)

(declare-fun e!472634 () Bool)

(assert (=> b!846875 (=> (not res!575510) (not e!472634))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!846875 (= res!575510 (validKeyInArray!0 k0!854))))

(declare-fun b!846877 () Bool)

(declare-fun res!575512 () Bool)

(assert (=> b!846877 (=> (not res!575512) (not e!472634))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48184 0))(
  ( (array!48185 (arr!23119 (Array (_ BitVec 32) (_ BitVec 64))) (size!23560 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48184)

(assert (=> b!846877 (= res!575512 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23560 _keys!868))))))

(declare-fun b!846878 () Bool)

(declare-fun res!575513 () Bool)

(assert (=> b!846878 (=> (not res!575513) (not e!472634))))

(declare-datatypes ((List!16435 0))(
  ( (Nil!16432) (Cons!16431 (h!17562 (_ BitVec 64)) (t!22814 List!16435)) )
))
(declare-fun arrayNoDuplicates!0 (array!48184 (_ BitVec 32) List!16435) Bool)

(assert (=> b!846878 (= res!575513 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16432))))

(declare-fun b!846879 () Bool)

(assert (=> b!846879 (= e!472634 false)))

(declare-fun v!557 () V!26371)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26371)

(declare-fun zeroValue!654 () V!26371)

(declare-datatypes ((tuple2!10522 0))(
  ( (tuple2!10523 (_1!5271 (_ BitVec 64)) (_2!5271 V!26371)) )
))
(declare-datatypes ((List!16436 0))(
  ( (Nil!16433) (Cons!16432 (h!17563 tuple2!10522) (t!22815 List!16436)) )
))
(declare-datatypes ((ListLongMap!9305 0))(
  ( (ListLongMap!9306 (toList!4668 List!16436)) )
))
(declare-fun lt!381587 () ListLongMap!9305)

(declare-fun getCurrentListMapNoExtraKeys!2657 (array!48184 array!48182 (_ BitVec 32) (_ BitVec 32) V!26371 V!26371 (_ BitVec 32) Int) ListLongMap!9305)

(assert (=> b!846879 (= lt!381587 (getCurrentListMapNoExtraKeys!2657 _keys!868 (array!48183 (store (arr!23118 _values!688) i!612 (ValueCellFull!7557 v!557)) (size!23559 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!381588 () ListLongMap!9305)

(assert (=> b!846879 (= lt!381588 (getCurrentListMapNoExtraKeys!2657 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!846880 () Bool)

(declare-fun res!575509 () Bool)

(assert (=> b!846880 (=> (not res!575509) (not e!472634))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48184 (_ BitVec 32)) Bool)

(assert (=> b!846880 (= res!575509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!25589 () Bool)

(assert (=> mapIsEmpty!25589 mapRes!25589))

(declare-fun b!846876 () Bool)

(declare-fun res!575514 () Bool)

(assert (=> b!846876 (=> (not res!575514) (not e!472634))))

(assert (=> b!846876 (= res!575514 (and (= (size!23559 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23560 _keys!868) (size!23559 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!575508 () Bool)

(assert (=> start!72970 (=> (not res!575508) (not e!472634))))

(assert (=> start!72970 (= res!575508 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23560 _keys!868))))))

(assert (=> start!72970 e!472634))

(assert (=> start!72970 tp_is_empty!15993))

(assert (=> start!72970 true))

(assert (=> start!72970 tp!49076))

(declare-fun array_inv!18344 (array!48184) Bool)

(assert (=> start!72970 (array_inv!18344 _keys!868)))

(declare-fun e!472633 () Bool)

(declare-fun array_inv!18345 (array!48182) Bool)

(assert (=> start!72970 (and (array_inv!18345 _values!688) e!472633)))

(declare-fun b!846881 () Bool)

(declare-fun e!472632 () Bool)

(assert (=> b!846881 (= e!472633 (and e!472632 mapRes!25589))))

(declare-fun condMapEmpty!25589 () Bool)

(declare-fun mapDefault!25589 () ValueCell!7557)

(assert (=> b!846881 (= condMapEmpty!25589 (= (arr!23118 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7557)) mapDefault!25589)))))

(declare-fun b!846882 () Bool)

(declare-fun res!575507 () Bool)

(assert (=> b!846882 (=> (not res!575507) (not e!472634))))

(assert (=> b!846882 (= res!575507 (and (= (select (arr!23119 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!846883 () Bool)

(declare-fun res!575511 () Bool)

(assert (=> b!846883 (=> (not res!575511) (not e!472634))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!846883 (= res!575511 (validMask!0 mask!1196))))

(declare-fun b!846884 () Bool)

(assert (=> b!846884 (= e!472632 tp_is_empty!15993)))

(assert (= (and start!72970 res!575508) b!846883))

(assert (= (and b!846883 res!575511) b!846876))

(assert (= (and b!846876 res!575514) b!846880))

(assert (= (and b!846880 res!575509) b!846878))

(assert (= (and b!846878 res!575513) b!846877))

(assert (= (and b!846877 res!575512) b!846875))

(assert (= (and b!846875 res!575510) b!846882))

(assert (= (and b!846882 res!575507) b!846879))

(assert (= (and b!846881 condMapEmpty!25589) mapIsEmpty!25589))

(assert (= (and b!846881 (not condMapEmpty!25589)) mapNonEmpty!25589))

(get-info :version)

(assert (= (and mapNonEmpty!25589 ((_ is ValueCellFull!7557) mapValue!25589)) b!846874))

(assert (= (and b!846881 ((_ is ValueCellFull!7557) mapDefault!25589)) b!846884))

(assert (= start!72970 b!846881))

(declare-fun m!788187 () Bool)

(assert (=> mapNonEmpty!25589 m!788187))

(declare-fun m!788189 () Bool)

(assert (=> b!846880 m!788189))

(declare-fun m!788191 () Bool)

(assert (=> b!846879 m!788191))

(declare-fun m!788193 () Bool)

(assert (=> b!846879 m!788193))

(declare-fun m!788195 () Bool)

(assert (=> b!846879 m!788195))

(declare-fun m!788197 () Bool)

(assert (=> b!846878 m!788197))

(declare-fun m!788199 () Bool)

(assert (=> b!846883 m!788199))

(declare-fun m!788201 () Bool)

(assert (=> b!846875 m!788201))

(declare-fun m!788203 () Bool)

(assert (=> b!846882 m!788203))

(declare-fun m!788205 () Bool)

(assert (=> start!72970 m!788205))

(declare-fun m!788207 () Bool)

(assert (=> start!72970 m!788207))

(check-sat (not start!72970) tp_is_empty!15993 (not b!846883) (not b!846875) (not b!846880) (not mapNonEmpty!25589) (not b!846879) (not b_next!13857) (not b!846878) b_and!22961)
(check-sat b_and!22961 (not b_next!13857))
