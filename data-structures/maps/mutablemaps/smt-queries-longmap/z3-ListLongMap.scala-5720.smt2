; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74134 () Bool)

(assert start!74134)

(declare-fun b!871745 () Bool)

(declare-fun e!485405 () Bool)

(declare-fun tp_is_empty!17157 () Bool)

(assert (=> b!871745 (= e!485405 tp_is_empty!17157)))

(declare-fun res!592658 () Bool)

(declare-fun e!485402 () Bool)

(assert (=> start!74134 (=> (not res!592658) (not e!485402))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50442 0))(
  ( (array!50443 (arr!24248 (Array (_ BitVec 32) (_ BitVec 64))) (size!24689 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50442)

(assert (=> start!74134 (= res!592658 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24689 _keys!868))))))

(assert (=> start!74134 e!485402))

(assert (=> start!74134 true))

(declare-fun array_inv!19118 (array!50442) Bool)

(assert (=> start!74134 (array_inv!19118 _keys!868)))

(declare-datatypes ((V!27923 0))(
  ( (V!27924 (val!8626 Int)) )
))
(declare-datatypes ((ValueCell!8139 0))(
  ( (ValueCellFull!8139 (v!11047 V!27923)) (EmptyCell!8139) )
))
(declare-datatypes ((array!50444 0))(
  ( (array!50445 (arr!24249 (Array (_ BitVec 32) ValueCell!8139)) (size!24690 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50444)

(declare-fun e!485404 () Bool)

(declare-fun array_inv!19119 (array!50444) Bool)

(assert (=> start!74134 (and (array_inv!19119 _values!688) e!485404)))

(declare-fun b!871746 () Bool)

(declare-fun res!592662 () Bool)

(assert (=> b!871746 (=> (not res!592662) (not e!485402))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!871746 (= res!592662 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24689 _keys!868))))))

(declare-fun b!871747 () Bool)

(declare-fun res!592656 () Bool)

(assert (=> b!871747 (=> (not res!592656) (not e!485402))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!871747 (= res!592656 (and (= (size!24690 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24689 _keys!868) (size!24690 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!871748 () Bool)

(declare-fun res!592657 () Bool)

(assert (=> b!871748 (=> (not res!592657) (not e!485402))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50442 (_ BitVec 32)) Bool)

(assert (=> b!871748 (= res!592657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!27335 () Bool)

(declare-fun mapRes!27335 () Bool)

(assert (=> mapIsEmpty!27335 mapRes!27335))

(declare-fun b!871749 () Bool)

(declare-fun e!485406 () Bool)

(assert (=> b!871749 (= e!485404 (and e!485406 mapRes!27335))))

(declare-fun condMapEmpty!27335 () Bool)

(declare-fun mapDefault!27335 () ValueCell!8139)

(assert (=> b!871749 (= condMapEmpty!27335 (= (arr!24249 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8139)) mapDefault!27335)))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun b!871750 () Bool)

(assert (=> b!871750 (= e!485402 (and (= (select (arr!24248 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!24689 _keys!868)) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!871751 () Bool)

(assert (=> b!871751 (= e!485406 tp_is_empty!17157)))

(declare-fun b!871752 () Bool)

(declare-fun res!592660 () Bool)

(assert (=> b!871752 (=> (not res!592660) (not e!485402))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!871752 (= res!592660 (validKeyInArray!0 k0!854))))

(declare-fun b!871753 () Bool)

(declare-fun res!592659 () Bool)

(assert (=> b!871753 (=> (not res!592659) (not e!485402))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871753 (= res!592659 (validMask!0 mask!1196))))

(declare-fun b!871754 () Bool)

(declare-fun res!592661 () Bool)

(assert (=> b!871754 (=> (not res!592661) (not e!485402))))

(declare-datatypes ((List!17310 0))(
  ( (Nil!17307) (Cons!17306 (h!18437 (_ BitVec 64)) (t!24355 List!17310)) )
))
(declare-fun arrayNoDuplicates!0 (array!50442 (_ BitVec 32) List!17310) Bool)

(assert (=> b!871754 (= res!592661 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17307))))

(declare-fun mapNonEmpty!27335 () Bool)

(declare-fun tp!52535 () Bool)

(assert (=> mapNonEmpty!27335 (= mapRes!27335 (and tp!52535 e!485405))))

(declare-fun mapRest!27335 () (Array (_ BitVec 32) ValueCell!8139))

(declare-fun mapKey!27335 () (_ BitVec 32))

(declare-fun mapValue!27335 () ValueCell!8139)

(assert (=> mapNonEmpty!27335 (= (arr!24249 _values!688) (store mapRest!27335 mapKey!27335 mapValue!27335))))

(assert (= (and start!74134 res!592658) b!871753))

(assert (= (and b!871753 res!592659) b!871747))

(assert (= (and b!871747 res!592656) b!871748))

(assert (= (and b!871748 res!592657) b!871754))

(assert (= (and b!871754 res!592661) b!871746))

(assert (= (and b!871746 res!592662) b!871752))

(assert (= (and b!871752 res!592660) b!871750))

(assert (= (and b!871749 condMapEmpty!27335) mapIsEmpty!27335))

(assert (= (and b!871749 (not condMapEmpty!27335)) mapNonEmpty!27335))

(get-info :version)

(assert (= (and mapNonEmpty!27335 ((_ is ValueCellFull!8139) mapValue!27335)) b!871745))

(assert (= (and b!871749 ((_ is ValueCellFull!8139) mapDefault!27335)) b!871751))

(assert (= start!74134 b!871749))

(declare-fun m!812903 () Bool)

(assert (=> mapNonEmpty!27335 m!812903))

(declare-fun m!812905 () Bool)

(assert (=> b!871750 m!812905))

(declare-fun m!812907 () Bool)

(assert (=> start!74134 m!812907))

(declare-fun m!812909 () Bool)

(assert (=> start!74134 m!812909))

(declare-fun m!812911 () Bool)

(assert (=> b!871748 m!812911))

(declare-fun m!812913 () Bool)

(assert (=> b!871752 m!812913))

(declare-fun m!812915 () Bool)

(assert (=> b!871754 m!812915))

(declare-fun m!812917 () Bool)

(assert (=> b!871753 m!812917))

(check-sat (not b!871752) (not start!74134) (not b!871748) tp_is_empty!17157 (not mapNonEmpty!27335) (not b!871754) (not b!871753))
(check-sat)
(get-model)

(declare-fun b!871793 () Bool)

(declare-fun e!485428 () Bool)

(declare-fun e!485429 () Bool)

(assert (=> b!871793 (= e!485428 e!485429)))

(declare-fun c!92307 () Bool)

(assert (=> b!871793 (= c!92307 (validKeyInArray!0 (select (arr!24248 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun d!108371 () Bool)

(declare-fun res!592688 () Bool)

(assert (=> d!108371 (=> res!592688 e!485428)))

(assert (=> d!108371 (= res!592688 (bvsge #b00000000000000000000000000000000 (size!24689 _keys!868)))))

(assert (=> d!108371 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196) e!485428)))

(declare-fun bm!38459 () Bool)

(declare-fun call!38462 () Bool)

(assert (=> bm!38459 (= call!38462 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!868 mask!1196))))

(declare-fun b!871794 () Bool)

(declare-fun e!485430 () Bool)

(assert (=> b!871794 (= e!485429 e!485430)))

(declare-fun lt!395499 () (_ BitVec 64))

(assert (=> b!871794 (= lt!395499 (select (arr!24248 _keys!868) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!29870 0))(
  ( (Unit!29871) )
))
(declare-fun lt!395497 () Unit!29870)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!50442 (_ BitVec 64) (_ BitVec 32)) Unit!29870)

(assert (=> b!871794 (= lt!395497 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!868 lt!395499 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!50442 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!871794 (arrayContainsKey!0 _keys!868 lt!395499 #b00000000000000000000000000000000)))

(declare-fun lt!395498 () Unit!29870)

(assert (=> b!871794 (= lt!395498 lt!395497)))

(declare-fun res!592689 () Bool)

(declare-datatypes ((SeekEntryResult!8738 0))(
  ( (MissingZero!8738 (index!37322 (_ BitVec 32))) (Found!8738 (index!37323 (_ BitVec 32))) (Intermediate!8738 (undefined!9550 Bool) (index!37324 (_ BitVec 32)) (x!73832 (_ BitVec 32))) (Undefined!8738) (MissingVacant!8738 (index!37325 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!50442 (_ BitVec 32)) SeekEntryResult!8738)

(assert (=> b!871794 (= res!592689 (= (seekEntryOrOpen!0 (select (arr!24248 _keys!868) #b00000000000000000000000000000000) _keys!868 mask!1196) (Found!8738 #b00000000000000000000000000000000)))))

(assert (=> b!871794 (=> (not res!592689) (not e!485430))))

(declare-fun b!871795 () Bool)

(assert (=> b!871795 (= e!485430 call!38462)))

(declare-fun b!871796 () Bool)

(assert (=> b!871796 (= e!485429 call!38462)))

(assert (= (and d!108371 (not res!592688)) b!871793))

(assert (= (and b!871793 c!92307) b!871794))

(assert (= (and b!871793 (not c!92307)) b!871796))

(assert (= (and b!871794 res!592689) b!871795))

(assert (= (or b!871795 b!871796) bm!38459))

(declare-fun m!812935 () Bool)

(assert (=> b!871793 m!812935))

(assert (=> b!871793 m!812935))

(declare-fun m!812937 () Bool)

(assert (=> b!871793 m!812937))

(declare-fun m!812939 () Bool)

(assert (=> bm!38459 m!812939))

(assert (=> b!871794 m!812935))

(declare-fun m!812941 () Bool)

(assert (=> b!871794 m!812941))

(declare-fun m!812943 () Bool)

(assert (=> b!871794 m!812943))

(assert (=> b!871794 m!812935))

(declare-fun m!812945 () Bool)

(assert (=> b!871794 m!812945))

(assert (=> b!871748 d!108371))

(declare-fun d!108373 () Bool)

(assert (=> d!108373 (= (validKeyInArray!0 k0!854) (and (not (= k0!854 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!854 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!871752 d!108373))

(declare-fun d!108375 () Bool)

(assert (=> d!108375 (= (validMask!0 mask!1196) (and (or (= mask!1196 #b00000000000000000000000000000111) (= mask!1196 #b00000000000000000000000000001111) (= mask!1196 #b00000000000000000000000000011111) (= mask!1196 #b00000000000000000000000000111111) (= mask!1196 #b00000000000000000000000001111111) (= mask!1196 #b00000000000000000000000011111111) (= mask!1196 #b00000000000000000000000111111111) (= mask!1196 #b00000000000000000000001111111111) (= mask!1196 #b00000000000000000000011111111111) (= mask!1196 #b00000000000000000000111111111111) (= mask!1196 #b00000000000000000001111111111111) (= mask!1196 #b00000000000000000011111111111111) (= mask!1196 #b00000000000000000111111111111111) (= mask!1196 #b00000000000000001111111111111111) (= mask!1196 #b00000000000000011111111111111111) (= mask!1196 #b00000000000000111111111111111111) (= mask!1196 #b00000000000001111111111111111111) (= mask!1196 #b00000000000011111111111111111111) (= mask!1196 #b00000000000111111111111111111111) (= mask!1196 #b00000000001111111111111111111111) (= mask!1196 #b00000000011111111111111111111111) (= mask!1196 #b00000000111111111111111111111111) (= mask!1196 #b00000001111111111111111111111111) (= mask!1196 #b00000011111111111111111111111111) (= mask!1196 #b00000111111111111111111111111111) (= mask!1196 #b00001111111111111111111111111111) (= mask!1196 #b00011111111111111111111111111111) (= mask!1196 #b00111111111111111111111111111111)) (bvsle mask!1196 #b00111111111111111111111111111111)))))

(assert (=> b!871753 d!108375))

(declare-fun d!108377 () Bool)

(declare-fun res!592698 () Bool)

(declare-fun e!485439 () Bool)

(assert (=> d!108377 (=> res!592698 e!485439)))

(assert (=> d!108377 (= res!592698 (bvsge #b00000000000000000000000000000000 (size!24689 _keys!868)))))

(assert (=> d!108377 (= (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17307) e!485439)))

(declare-fun b!871807 () Bool)

(declare-fun e!485442 () Bool)

(declare-fun call!38465 () Bool)

(assert (=> b!871807 (= e!485442 call!38465)))

(declare-fun b!871808 () Bool)

(assert (=> b!871808 (= e!485442 call!38465)))

(declare-fun b!871809 () Bool)

(declare-fun e!485441 () Bool)

(assert (=> b!871809 (= e!485441 e!485442)))

(declare-fun c!92310 () Bool)

(assert (=> b!871809 (= c!92310 (validKeyInArray!0 (select (arr!24248 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!871810 () Bool)

(declare-fun e!485440 () Bool)

(declare-fun contains!4235 (List!17310 (_ BitVec 64)) Bool)

(assert (=> b!871810 (= e!485440 (contains!4235 Nil!17307 (select (arr!24248 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun bm!38462 () Bool)

(assert (=> bm!38462 (= call!38465 (arrayNoDuplicates!0 _keys!868 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!92310 (Cons!17306 (select (arr!24248 _keys!868) #b00000000000000000000000000000000) Nil!17307) Nil!17307)))))

(declare-fun b!871811 () Bool)

(assert (=> b!871811 (= e!485439 e!485441)))

(declare-fun res!592697 () Bool)

(assert (=> b!871811 (=> (not res!592697) (not e!485441))))

(assert (=> b!871811 (= res!592697 (not e!485440))))

(declare-fun res!592696 () Bool)

(assert (=> b!871811 (=> (not res!592696) (not e!485440))))

(assert (=> b!871811 (= res!592696 (validKeyInArray!0 (select (arr!24248 _keys!868) #b00000000000000000000000000000000)))))

(assert (= (and d!108377 (not res!592698)) b!871811))

(assert (= (and b!871811 res!592696) b!871810))

(assert (= (and b!871811 res!592697) b!871809))

(assert (= (and b!871809 c!92310) b!871807))

(assert (= (and b!871809 (not c!92310)) b!871808))

(assert (= (or b!871807 b!871808) bm!38462))

(assert (=> b!871809 m!812935))

(assert (=> b!871809 m!812935))

(assert (=> b!871809 m!812937))

(assert (=> b!871810 m!812935))

(assert (=> b!871810 m!812935))

(declare-fun m!812947 () Bool)

(assert (=> b!871810 m!812947))

(assert (=> bm!38462 m!812935))

(declare-fun m!812949 () Bool)

(assert (=> bm!38462 m!812949))

(assert (=> b!871811 m!812935))

(assert (=> b!871811 m!812935))

(assert (=> b!871811 m!812937))

(assert (=> b!871754 d!108377))

(declare-fun d!108379 () Bool)

(assert (=> d!108379 (= (array_inv!19118 _keys!868) (bvsge (size!24689 _keys!868) #b00000000000000000000000000000000))))

(assert (=> start!74134 d!108379))

(declare-fun d!108381 () Bool)

(assert (=> d!108381 (= (array_inv!19119 _values!688) (bvsge (size!24690 _values!688) #b00000000000000000000000000000000))))

(assert (=> start!74134 d!108381))

(declare-fun mapNonEmpty!27341 () Bool)

(declare-fun mapRes!27341 () Bool)

(declare-fun tp!52541 () Bool)

(declare-fun e!485448 () Bool)

(assert (=> mapNonEmpty!27341 (= mapRes!27341 (and tp!52541 e!485448))))

(declare-fun mapRest!27341 () (Array (_ BitVec 32) ValueCell!8139))

(declare-fun mapKey!27341 () (_ BitVec 32))

(declare-fun mapValue!27341 () ValueCell!8139)

(assert (=> mapNonEmpty!27341 (= mapRest!27335 (store mapRest!27341 mapKey!27341 mapValue!27341))))

(declare-fun b!871818 () Bool)

(assert (=> b!871818 (= e!485448 tp_is_empty!17157)))

(declare-fun b!871819 () Bool)

(declare-fun e!485447 () Bool)

(assert (=> b!871819 (= e!485447 tp_is_empty!17157)))

(declare-fun condMapEmpty!27341 () Bool)

(declare-fun mapDefault!27341 () ValueCell!8139)

(assert (=> mapNonEmpty!27335 (= condMapEmpty!27341 (= mapRest!27335 ((as const (Array (_ BitVec 32) ValueCell!8139)) mapDefault!27341)))))

(assert (=> mapNonEmpty!27335 (= tp!52535 (and e!485447 mapRes!27341))))

(declare-fun mapIsEmpty!27341 () Bool)

(assert (=> mapIsEmpty!27341 mapRes!27341))

(assert (= (and mapNonEmpty!27335 condMapEmpty!27341) mapIsEmpty!27341))

(assert (= (and mapNonEmpty!27335 (not condMapEmpty!27341)) mapNonEmpty!27341))

(assert (= (and mapNonEmpty!27341 ((_ is ValueCellFull!8139) mapValue!27341)) b!871818))

(assert (= (and mapNonEmpty!27335 ((_ is ValueCellFull!8139) mapDefault!27341)) b!871819))

(declare-fun m!812951 () Bool)

(assert (=> mapNonEmpty!27341 m!812951))

(check-sat (not mapNonEmpty!27341) (not bm!38462) tp_is_empty!17157 (not b!871811) (not b!871810) (not b!871809) (not b!871793) (not bm!38459) (not b!871794))
(check-sat)
