; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72904 () Bool)

(assert start!72904)

(declare-fun b_free!13791 () Bool)

(declare-fun b_next!13791 () Bool)

(assert (=> start!72904 (= b_free!13791 (not b_next!13791))))

(declare-fun tp!48877 () Bool)

(declare-fun b_and!22895 () Bool)

(assert (=> start!72904 (= tp!48877 b_and!22895)))

(declare-fun b!845785 () Bool)

(declare-fun res!574716 () Bool)

(declare-fun e!472139 () Bool)

(assert (=> b!845785 (=> (not res!574716) (not e!472139))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48054 0))(
  ( (array!48055 (arr!23054 (Array (_ BitVec 32) (_ BitVec 64))) (size!23495 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48054)

(assert (=> b!845785 (= res!574716 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23495 _keys!868))))))

(declare-fun b!845786 () Bool)

(assert (=> b!845786 (= e!472139 false)))

(declare-datatypes ((V!26283 0))(
  ( (V!26284 (val!8011 Int)) )
))
(declare-datatypes ((tuple2!10482 0))(
  ( (tuple2!10483 (_1!5251 (_ BitVec 64)) (_2!5251 V!26283)) )
))
(declare-datatypes ((List!16393 0))(
  ( (Nil!16390) (Cons!16389 (h!17520 tuple2!10482) (t!22772 List!16393)) )
))
(declare-datatypes ((ListLongMap!9265 0))(
  ( (ListLongMap!9266 (toList!4648 List!16393)) )
))
(declare-fun lt!381402 () ListLongMap!9265)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7524 0))(
  ( (ValueCellFull!7524 (v!10432 V!26283)) (EmptyCell!7524) )
))
(declare-datatypes ((array!48056 0))(
  ( (array!48057 (arr!23055 (Array (_ BitVec 32) ValueCell!7524)) (size!23496 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48056)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26283)

(declare-fun zeroValue!654 () V!26283)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2637 (array!48054 array!48056 (_ BitVec 32) (_ BitVec 32) V!26283 V!26283 (_ BitVec 32) Int) ListLongMap!9265)

(assert (=> b!845786 (= lt!381402 (getCurrentListMapNoExtraKeys!2637 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!845787 () Bool)

(declare-fun res!574717 () Bool)

(assert (=> b!845787 (=> (not res!574717) (not e!472139))))

(declare-datatypes ((List!16394 0))(
  ( (Nil!16391) (Cons!16390 (h!17521 (_ BitVec 64)) (t!22773 List!16394)) )
))
(declare-fun arrayNoDuplicates!0 (array!48054 (_ BitVec 32) List!16394) Bool)

(assert (=> b!845787 (= res!574717 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16391))))

(declare-fun b!845788 () Bool)

(declare-fun res!574720 () Bool)

(assert (=> b!845788 (=> (not res!574720) (not e!472139))))

(assert (=> b!845788 (= res!574720 (and (= (size!23496 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23495 _keys!868) (size!23496 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!845789 () Bool)

(declare-fun e!472136 () Bool)

(declare-fun e!472137 () Bool)

(declare-fun mapRes!25490 () Bool)

(assert (=> b!845789 (= e!472136 (and e!472137 mapRes!25490))))

(declare-fun condMapEmpty!25490 () Bool)

(declare-fun mapDefault!25490 () ValueCell!7524)

(assert (=> b!845789 (= condMapEmpty!25490 (= (arr!23055 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7524)) mapDefault!25490)))))

(declare-fun mapNonEmpty!25490 () Bool)

(declare-fun tp!48878 () Bool)

(declare-fun e!472138 () Bool)

(assert (=> mapNonEmpty!25490 (= mapRes!25490 (and tp!48878 e!472138))))

(declare-fun mapKey!25490 () (_ BitVec 32))

(declare-fun mapValue!25490 () ValueCell!7524)

(declare-fun mapRest!25490 () (Array (_ BitVec 32) ValueCell!7524))

(assert (=> mapNonEmpty!25490 (= (arr!23055 _values!688) (store mapRest!25490 mapKey!25490 mapValue!25490))))

(declare-fun b!845791 () Bool)

(declare-fun tp_is_empty!15927 () Bool)

(assert (=> b!845791 (= e!472137 tp_is_empty!15927)))

(declare-fun b!845792 () Bool)

(assert (=> b!845792 (= e!472138 tp_is_empty!15927)))

(declare-fun mapIsEmpty!25490 () Bool)

(assert (=> mapIsEmpty!25490 mapRes!25490))

(declare-fun b!845793 () Bool)

(declare-fun res!574722 () Bool)

(assert (=> b!845793 (=> (not res!574722) (not e!472139))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48054 (_ BitVec 32)) Bool)

(assert (=> b!845793 (= res!574722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!574719 () Bool)

(assert (=> start!72904 (=> (not res!574719) (not e!472139))))

(assert (=> start!72904 (= res!574719 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23495 _keys!868))))))

(assert (=> start!72904 e!472139))

(assert (=> start!72904 true))

(assert (=> start!72904 tp!48877))

(declare-fun array_inv!18300 (array!48054) Bool)

(assert (=> start!72904 (array_inv!18300 _keys!868)))

(declare-fun array_inv!18301 (array!48056) Bool)

(assert (=> start!72904 (and (array_inv!18301 _values!688) e!472136)))

(assert (=> start!72904 tp_is_empty!15927))

(declare-fun b!845790 () Bool)

(declare-fun res!574718 () Bool)

(assert (=> b!845790 (=> (not res!574718) (not e!472139))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!845790 (= res!574718 (and (= (select (arr!23054 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!845794 () Bool)

(declare-fun res!574721 () Bool)

(assert (=> b!845794 (=> (not res!574721) (not e!472139))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!845794 (= res!574721 (validKeyInArray!0 k0!854))))

(declare-fun b!845795 () Bool)

(declare-fun res!574715 () Bool)

(assert (=> b!845795 (=> (not res!574715) (not e!472139))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!845795 (= res!574715 (validMask!0 mask!1196))))

(assert (= (and start!72904 res!574719) b!845795))

(assert (= (and b!845795 res!574715) b!845788))

(assert (= (and b!845788 res!574720) b!845793))

(assert (= (and b!845793 res!574722) b!845787))

(assert (= (and b!845787 res!574717) b!845785))

(assert (= (and b!845785 res!574716) b!845794))

(assert (= (and b!845794 res!574721) b!845790))

(assert (= (and b!845790 res!574718) b!845786))

(assert (= (and b!845789 condMapEmpty!25490) mapIsEmpty!25490))

(assert (= (and b!845789 (not condMapEmpty!25490)) mapNonEmpty!25490))

(get-info :version)

(assert (= (and mapNonEmpty!25490 ((_ is ValueCellFull!7524) mapValue!25490)) b!845792))

(assert (= (and b!845789 ((_ is ValueCellFull!7524) mapDefault!25490)) b!845791))

(assert (= start!72904 b!845789))

(declare-fun m!787481 () Bool)

(assert (=> b!845787 m!787481))

(declare-fun m!787483 () Bool)

(assert (=> b!845794 m!787483))

(declare-fun m!787485 () Bool)

(assert (=> b!845795 m!787485))

(declare-fun m!787487 () Bool)

(assert (=> mapNonEmpty!25490 m!787487))

(declare-fun m!787489 () Bool)

(assert (=> b!845786 m!787489))

(declare-fun m!787491 () Bool)

(assert (=> b!845790 m!787491))

(declare-fun m!787493 () Bool)

(assert (=> b!845793 m!787493))

(declare-fun m!787495 () Bool)

(assert (=> start!72904 m!787495))

(declare-fun m!787497 () Bool)

(assert (=> start!72904 m!787497))

(check-sat (not b!845787) (not b!845795) (not b!845793) tp_is_empty!15927 (not b!845794) b_and!22895 (not start!72904) (not b_next!13791) (not mapNonEmpty!25490) (not b!845786))
(check-sat b_and!22895 (not b_next!13791))
