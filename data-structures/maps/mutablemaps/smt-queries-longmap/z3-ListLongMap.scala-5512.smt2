; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72886 () Bool)

(assert start!72886)

(declare-fun b_free!13773 () Bool)

(declare-fun b_next!13773 () Bool)

(assert (=> start!72886 (= b_free!13773 (not b_next!13773))))

(declare-fun tp!48823 () Bool)

(declare-fun b_and!22877 () Bool)

(assert (=> start!72886 (= tp!48823 b_and!22877)))

(declare-fun b!845488 () Bool)

(declare-fun res!574506 () Bool)

(declare-fun e!472002 () Bool)

(assert (=> b!845488 (=> (not res!574506) (not e!472002))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48020 0))(
  ( (array!48021 (arr!23037 (Array (_ BitVec 32) (_ BitVec 64))) (size!23478 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48020)

(assert (=> b!845488 (= res!574506 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23478 _keys!868))))))

(declare-fun b!845489 () Bool)

(declare-fun res!574501 () Bool)

(assert (=> b!845489 (=> (not res!574501) (not e!472002))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!845489 (= res!574501 (validMask!0 mask!1196))))

(declare-fun b!845490 () Bool)

(declare-fun res!574499 () Bool)

(assert (=> b!845490 (=> (not res!574499) (not e!472002))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!845490 (= res!574499 (and (= (select (arr!23037 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!25463 () Bool)

(declare-fun mapRes!25463 () Bool)

(declare-fun tp!48824 () Bool)

(declare-fun e!472001 () Bool)

(assert (=> mapNonEmpty!25463 (= mapRes!25463 (and tp!48824 e!472001))))

(declare-datatypes ((V!26259 0))(
  ( (V!26260 (val!8002 Int)) )
))
(declare-datatypes ((ValueCell!7515 0))(
  ( (ValueCellFull!7515 (v!10423 V!26259)) (EmptyCell!7515) )
))
(declare-fun mapValue!25463 () ValueCell!7515)

(declare-fun mapKey!25463 () (_ BitVec 32))

(declare-fun mapRest!25463 () (Array (_ BitVec 32) ValueCell!7515))

(declare-datatypes ((array!48022 0))(
  ( (array!48023 (arr!23038 (Array (_ BitVec 32) ValueCell!7515)) (size!23479 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48022)

(assert (=> mapNonEmpty!25463 (= (arr!23038 _values!688) (store mapRest!25463 mapKey!25463 mapValue!25463))))

(declare-fun b!845491 () Bool)

(assert (=> b!845491 (= e!472002 false)))

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!26259)

(declare-fun zeroValue!654 () V!26259)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!10468 0))(
  ( (tuple2!10469 (_1!5244 (_ BitVec 64)) (_2!5244 V!26259)) )
))
(declare-datatypes ((List!16379 0))(
  ( (Nil!16376) (Cons!16375 (h!17506 tuple2!10468) (t!22758 List!16379)) )
))
(declare-datatypes ((ListLongMap!9251 0))(
  ( (ListLongMap!9252 (toList!4641 List!16379)) )
))
(declare-fun lt!381375 () ListLongMap!9251)

(declare-fun getCurrentListMapNoExtraKeys!2630 (array!48020 array!48022 (_ BitVec 32) (_ BitVec 32) V!26259 V!26259 (_ BitVec 32) Int) ListLongMap!9251)

(assert (=> b!845491 (= lt!381375 (getCurrentListMapNoExtraKeys!2630 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!25463 () Bool)

(assert (=> mapIsEmpty!25463 mapRes!25463))

(declare-fun b!845492 () Bool)

(declare-fun tp_is_empty!15909 () Bool)

(assert (=> b!845492 (= e!472001 tp_is_empty!15909)))

(declare-fun b!845493 () Bool)

(declare-fun res!574505 () Bool)

(assert (=> b!845493 (=> (not res!574505) (not e!472002))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48020 (_ BitVec 32)) Bool)

(assert (=> b!845493 (= res!574505 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!845495 () Bool)

(declare-fun res!574500 () Bool)

(assert (=> b!845495 (=> (not res!574500) (not e!472002))))

(declare-datatypes ((List!16380 0))(
  ( (Nil!16377) (Cons!16376 (h!17507 (_ BitVec 64)) (t!22759 List!16380)) )
))
(declare-fun arrayNoDuplicates!0 (array!48020 (_ BitVec 32) List!16380) Bool)

(assert (=> b!845495 (= res!574500 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16377))))

(declare-fun b!845496 () Bool)

(declare-fun e!472003 () Bool)

(assert (=> b!845496 (= e!472003 tp_is_empty!15909)))

(declare-fun b!845497 () Bool)

(declare-fun res!574503 () Bool)

(assert (=> b!845497 (=> (not res!574503) (not e!472002))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!845497 (= res!574503 (validKeyInArray!0 k0!854))))

(declare-fun b!845498 () Bool)

(declare-fun e!472005 () Bool)

(assert (=> b!845498 (= e!472005 (and e!472003 mapRes!25463))))

(declare-fun condMapEmpty!25463 () Bool)

(declare-fun mapDefault!25463 () ValueCell!7515)

(assert (=> b!845498 (= condMapEmpty!25463 (= (arr!23038 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7515)) mapDefault!25463)))))

(declare-fun res!574504 () Bool)

(assert (=> start!72886 (=> (not res!574504) (not e!472002))))

(assert (=> start!72886 (= res!574504 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23478 _keys!868))))))

(assert (=> start!72886 e!472002))

(assert (=> start!72886 true))

(assert (=> start!72886 tp!48823))

(declare-fun array_inv!18288 (array!48020) Bool)

(assert (=> start!72886 (array_inv!18288 _keys!868)))

(declare-fun array_inv!18289 (array!48022) Bool)

(assert (=> start!72886 (and (array_inv!18289 _values!688) e!472005)))

(assert (=> start!72886 tp_is_empty!15909))

(declare-fun b!845494 () Bool)

(declare-fun res!574502 () Bool)

(assert (=> b!845494 (=> (not res!574502) (not e!472002))))

(assert (=> b!845494 (= res!574502 (and (= (size!23479 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23478 _keys!868) (size!23479 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(assert (= (and start!72886 res!574504) b!845489))

(assert (= (and b!845489 res!574501) b!845494))

(assert (= (and b!845494 res!574502) b!845493))

(assert (= (and b!845493 res!574505) b!845495))

(assert (= (and b!845495 res!574500) b!845488))

(assert (= (and b!845488 res!574506) b!845497))

(assert (= (and b!845497 res!574503) b!845490))

(assert (= (and b!845490 res!574499) b!845491))

(assert (= (and b!845498 condMapEmpty!25463) mapIsEmpty!25463))

(assert (= (and b!845498 (not condMapEmpty!25463)) mapNonEmpty!25463))

(get-info :version)

(assert (= (and mapNonEmpty!25463 ((_ is ValueCellFull!7515) mapValue!25463)) b!845492))

(assert (= (and b!845498 ((_ is ValueCellFull!7515) mapDefault!25463)) b!845496))

(assert (= start!72886 b!845498))

(declare-fun m!787319 () Bool)

(assert (=> b!845490 m!787319))

(declare-fun m!787321 () Bool)

(assert (=> mapNonEmpty!25463 m!787321))

(declare-fun m!787323 () Bool)

(assert (=> b!845491 m!787323))

(declare-fun m!787325 () Bool)

(assert (=> b!845495 m!787325))

(declare-fun m!787327 () Bool)

(assert (=> start!72886 m!787327))

(declare-fun m!787329 () Bool)

(assert (=> start!72886 m!787329))

(declare-fun m!787331 () Bool)

(assert (=> b!845493 m!787331))

(declare-fun m!787333 () Bool)

(assert (=> b!845489 m!787333))

(declare-fun m!787335 () Bool)

(assert (=> b!845497 m!787335))

(check-sat (not b!845489) (not b!845495) b_and!22877 (not b!845497) (not mapNonEmpty!25463) (not b!845491) (not start!72886) (not b!845493) (not b_next!13773) tp_is_empty!15909)
(check-sat b_and!22877 (not b_next!13773))
