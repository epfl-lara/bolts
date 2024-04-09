; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74826 () Bool)

(assert start!74826)

(declare-fun b_free!15375 () Bool)

(declare-fun b_next!15375 () Bool)

(assert (=> start!74826 (= b_free!15375 (not b_next!15375))))

(declare-fun tp!53823 () Bool)

(declare-fun b_and!25435 () Bool)

(assert (=> start!74826 (= tp!53823 b_and!25435)))

(declare-fun b!881538 () Bool)

(declare-fun e!490630 () Bool)

(declare-fun e!490632 () Bool)

(assert (=> b!881538 (= e!490630 e!490632)))

(declare-fun res!598987 () Bool)

(assert (=> b!881538 (=> res!598987 e!490632)))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!51348 0))(
  ( (array!51349 (arr!24691 (Array (_ BitVec 32) (_ BitVec 64))) (size!25132 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51348)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!881538 (= res!598987 (not (= (select (arr!24691 _keys!868) from!1053) k0!854)))))

(declare-datatypes ((V!28539 0))(
  ( (V!28540 (val!8857 Int)) )
))
(declare-datatypes ((tuple2!11754 0))(
  ( (tuple2!11755 (_1!5887 (_ BitVec 64)) (_2!5887 V!28539)) )
))
(declare-datatypes ((List!17622 0))(
  ( (Nil!17619) (Cons!17618 (h!18749 tuple2!11754) (t!24807 List!17622)) )
))
(declare-datatypes ((ListLongMap!10537 0))(
  ( (ListLongMap!10538 (toList!5284 List!17622)) )
))
(declare-fun lt!398758 () ListLongMap!10537)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!398755 () ListLongMap!10537)

(declare-datatypes ((ValueCell!8370 0))(
  ( (ValueCellFull!8370 (v!11313 V!28539)) (EmptyCell!8370) )
))
(declare-datatypes ((array!51350 0))(
  ( (array!51351 (arr!24692 (Array (_ BitVec 32) ValueCell!8370)) (size!25133 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51350)

(declare-fun +!2490 (ListLongMap!10537 tuple2!11754) ListLongMap!10537)

(declare-fun get!13010 (ValueCell!8370 V!28539) V!28539)

(declare-fun dynLambda!1251 (Int (_ BitVec 64)) V!28539)

(assert (=> b!881538 (= lt!398755 (+!2490 lt!398758 (tuple2!11755 (select (arr!24691 _keys!868) from!1053) (get!13010 (select (arr!24692 _values!688) from!1053) (dynLambda!1251 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!881539 () Bool)

(declare-fun res!598990 () Bool)

(declare-fun e!490637 () Bool)

(assert (=> b!881539 (=> (not res!598990) (not e!490637))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!881539 (= res!598990 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25132 _keys!868))))))

(declare-fun b!881540 () Bool)

(declare-fun res!598989 () Bool)

(assert (=> b!881540 (=> (not res!598989) (not e!490637))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!881540 (= res!598989 (validKeyInArray!0 k0!854))))

(declare-fun b!881541 () Bool)

(declare-fun res!598986 () Bool)

(assert (=> b!881541 (=> (not res!598986) (not e!490637))))

(declare-datatypes ((List!17623 0))(
  ( (Nil!17620) (Cons!17619 (h!18750 (_ BitVec 64)) (t!24808 List!17623)) )
))
(declare-fun arrayNoDuplicates!0 (array!51348 (_ BitVec 32) List!17623) Bool)

(assert (=> b!881541 (= res!598986 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17620))))

(declare-fun b!881542 () Bool)

(declare-fun res!598992 () Bool)

(assert (=> b!881542 (=> (not res!598992) (not e!490637))))

(assert (=> b!881542 (= res!598992 (and (= (select (arr!24691 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!881543 () Bool)

(declare-fun res!598984 () Bool)

(assert (=> b!881543 (=> (not res!598984) (not e!490637))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!881543 (= res!598984 (and (= (size!25133 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25132 _keys!868) (size!25133 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!28059 () Bool)

(declare-fun mapRes!28059 () Bool)

(declare-fun tp!53822 () Bool)

(declare-fun e!490634 () Bool)

(assert (=> mapNonEmpty!28059 (= mapRes!28059 (and tp!53822 e!490634))))

(declare-fun mapRest!28059 () (Array (_ BitVec 32) ValueCell!8370))

(declare-fun mapValue!28059 () ValueCell!8370)

(declare-fun mapKey!28059 () (_ BitVec 32))

(assert (=> mapNonEmpty!28059 (= (arr!24692 _values!688) (store mapRest!28059 mapKey!28059 mapValue!28059))))

(declare-fun b!881544 () Bool)

(declare-fun e!490635 () Bool)

(assert (=> b!881544 (= e!490637 e!490635)))

(declare-fun res!598993 () Bool)

(assert (=> b!881544 (=> (not res!598993) (not e!490635))))

(assert (=> b!881544 (= res!598993 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!398756 () array!51350)

(declare-fun minValue!654 () V!28539)

(declare-fun zeroValue!654 () V!28539)

(declare-fun getCurrentListMapNoExtraKeys!3244 (array!51348 array!51350 (_ BitVec 32) (_ BitVec 32) V!28539 V!28539 (_ BitVec 32) Int) ListLongMap!10537)

(assert (=> b!881544 (= lt!398755 (getCurrentListMapNoExtraKeys!3244 _keys!868 lt!398756 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28539)

(assert (=> b!881544 (= lt!398756 (array!51351 (store (arr!24692 _values!688) i!612 (ValueCellFull!8370 v!557)) (size!25133 _values!688)))))

(declare-fun lt!398752 () ListLongMap!10537)

(assert (=> b!881544 (= lt!398752 (getCurrentListMapNoExtraKeys!3244 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!881545 () Bool)

(declare-fun e!490633 () Bool)

(declare-fun e!490636 () Bool)

(assert (=> b!881545 (= e!490633 (and e!490636 mapRes!28059))))

(declare-fun condMapEmpty!28059 () Bool)

(declare-fun mapDefault!28059 () ValueCell!8370)

(assert (=> b!881545 (= condMapEmpty!28059 (= (arr!24692 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8370)) mapDefault!28059)))))

(declare-fun b!881546 () Bool)

(declare-fun tp_is_empty!17619 () Bool)

(assert (=> b!881546 (= e!490636 tp_is_empty!17619)))

(declare-fun b!881547 () Bool)

(declare-fun res!598985 () Bool)

(assert (=> b!881547 (=> (not res!598985) (not e!490637))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!881547 (= res!598985 (validMask!0 mask!1196))))

(declare-fun res!598988 () Bool)

(assert (=> start!74826 (=> (not res!598988) (not e!490637))))

(assert (=> start!74826 (= res!598988 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25132 _keys!868))))))

(assert (=> start!74826 e!490637))

(assert (=> start!74826 tp_is_empty!17619))

(assert (=> start!74826 true))

(assert (=> start!74826 tp!53823))

(declare-fun array_inv!19430 (array!51348) Bool)

(assert (=> start!74826 (array_inv!19430 _keys!868)))

(declare-fun array_inv!19431 (array!51350) Bool)

(assert (=> start!74826 (and (array_inv!19431 _values!688) e!490633)))

(declare-fun mapIsEmpty!28059 () Bool)

(assert (=> mapIsEmpty!28059 mapRes!28059))

(declare-fun b!881548 () Bool)

(assert (=> b!881548 (= e!490634 tp_is_empty!17619)))

(declare-fun b!881549 () Bool)

(assert (=> b!881549 (= e!490632 true)))

(declare-fun arrayContainsKey!0 (array!51348 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!881549 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-datatypes ((Unit!30056 0))(
  ( (Unit!30057) )
))
(declare-fun lt!398754 () Unit!30056)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51348 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30056)

(assert (=> b!881549 (= lt!398754 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!881549 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17620)))

(declare-fun lt!398750 () Unit!30056)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51348 (_ BitVec 32) (_ BitVec 32)) Unit!30056)

(assert (=> b!881549 (= lt!398750 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!881550 () Bool)

(assert (=> b!881550 (= e!490635 (not e!490630))))

(declare-fun res!598991 () Bool)

(assert (=> b!881550 (=> res!598991 e!490630)))

(assert (=> b!881550 (= res!598991 (not (validKeyInArray!0 (select (arr!24691 _keys!868) from!1053))))))

(declare-fun lt!398753 () ListLongMap!10537)

(assert (=> b!881550 (= lt!398753 lt!398758)))

(declare-fun lt!398757 () ListLongMap!10537)

(assert (=> b!881550 (= lt!398758 (+!2490 lt!398757 (tuple2!11755 k0!854 v!557)))))

(assert (=> b!881550 (= lt!398753 (getCurrentListMapNoExtraKeys!3244 _keys!868 lt!398756 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!881550 (= lt!398757 (getCurrentListMapNoExtraKeys!3244 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!398751 () Unit!30056)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!719 (array!51348 array!51350 (_ BitVec 32) (_ BitVec 32) V!28539 V!28539 (_ BitVec 32) (_ BitVec 64) V!28539 (_ BitVec 32) Int) Unit!30056)

(assert (=> b!881550 (= lt!398751 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!719 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!881551 () Bool)

(declare-fun res!598983 () Bool)

(assert (=> b!881551 (=> (not res!598983) (not e!490637))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51348 (_ BitVec 32)) Bool)

(assert (=> b!881551 (= res!598983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!74826 res!598988) b!881547))

(assert (= (and b!881547 res!598985) b!881543))

(assert (= (and b!881543 res!598984) b!881551))

(assert (= (and b!881551 res!598983) b!881541))

(assert (= (and b!881541 res!598986) b!881539))

(assert (= (and b!881539 res!598990) b!881540))

(assert (= (and b!881540 res!598989) b!881542))

(assert (= (and b!881542 res!598992) b!881544))

(assert (= (and b!881544 res!598993) b!881550))

(assert (= (and b!881550 (not res!598991)) b!881538))

(assert (= (and b!881538 (not res!598987)) b!881549))

(assert (= (and b!881545 condMapEmpty!28059) mapIsEmpty!28059))

(assert (= (and b!881545 (not condMapEmpty!28059)) mapNonEmpty!28059))

(get-info :version)

(assert (= (and mapNonEmpty!28059 ((_ is ValueCellFull!8370) mapValue!28059)) b!881548))

(assert (= (and b!881545 ((_ is ValueCellFull!8370) mapDefault!28059)) b!881546))

(assert (= start!74826 b!881545))

(declare-fun b_lambda!12615 () Bool)

(assert (=> (not b_lambda!12615) (not b!881538)))

(declare-fun t!24806 () Bool)

(declare-fun tb!5041 () Bool)

(assert (=> (and start!74826 (= defaultEntry!696 defaultEntry!696) t!24806) tb!5041))

(declare-fun result!9705 () Bool)

(assert (=> tb!5041 (= result!9705 tp_is_empty!17619)))

(assert (=> b!881538 t!24806))

(declare-fun b_and!25437 () Bool)

(assert (= b_and!25435 (and (=> t!24806 result!9705) b_and!25437)))

(declare-fun m!821521 () Bool)

(assert (=> b!881541 m!821521))

(declare-fun m!821523 () Bool)

(assert (=> b!881551 m!821523))

(declare-fun m!821525 () Bool)

(assert (=> b!881547 m!821525))

(declare-fun m!821527 () Bool)

(assert (=> b!881542 m!821527))

(declare-fun m!821529 () Bool)

(assert (=> mapNonEmpty!28059 m!821529))

(declare-fun m!821531 () Bool)

(assert (=> b!881550 m!821531))

(declare-fun m!821533 () Bool)

(assert (=> b!881550 m!821533))

(declare-fun m!821535 () Bool)

(assert (=> b!881550 m!821535))

(assert (=> b!881550 m!821533))

(declare-fun m!821537 () Bool)

(assert (=> b!881550 m!821537))

(declare-fun m!821539 () Bool)

(assert (=> b!881550 m!821539))

(declare-fun m!821541 () Bool)

(assert (=> b!881550 m!821541))

(declare-fun m!821543 () Bool)

(assert (=> b!881540 m!821543))

(declare-fun m!821545 () Bool)

(assert (=> b!881544 m!821545))

(declare-fun m!821547 () Bool)

(assert (=> b!881544 m!821547))

(declare-fun m!821549 () Bool)

(assert (=> b!881544 m!821549))

(declare-fun m!821551 () Bool)

(assert (=> b!881538 m!821551))

(declare-fun m!821553 () Bool)

(assert (=> b!881538 m!821553))

(declare-fun m!821555 () Bool)

(assert (=> b!881538 m!821555))

(declare-fun m!821557 () Bool)

(assert (=> b!881538 m!821557))

(assert (=> b!881538 m!821553))

(assert (=> b!881538 m!821533))

(assert (=> b!881538 m!821555))

(declare-fun m!821559 () Bool)

(assert (=> b!881549 m!821559))

(declare-fun m!821561 () Bool)

(assert (=> b!881549 m!821561))

(declare-fun m!821563 () Bool)

(assert (=> b!881549 m!821563))

(declare-fun m!821565 () Bool)

(assert (=> b!881549 m!821565))

(declare-fun m!821567 () Bool)

(assert (=> start!74826 m!821567))

(declare-fun m!821569 () Bool)

(assert (=> start!74826 m!821569))

(check-sat (not b!881550) (not mapNonEmpty!28059) (not b_lambda!12615) (not b!881547) (not b!881551) (not b!881538) tp_is_empty!17619 (not b!881549) (not b!881541) (not b!881544) (not b!881540) b_and!25437 (not start!74826) (not b_next!15375))
(check-sat b_and!25437 (not b_next!15375))
