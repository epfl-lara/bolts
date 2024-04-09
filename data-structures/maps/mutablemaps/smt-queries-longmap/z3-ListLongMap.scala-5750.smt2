; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74358 () Bool)

(assert start!74358)

(declare-fun b_free!15093 () Bool)

(declare-fun b_next!15093 () Bool)

(assert (=> start!74358 (= b_free!15093 (not b_next!15093))))

(declare-fun tp!52954 () Bool)

(declare-fun b_and!24887 () Bool)

(assert (=> start!74358 (= tp!52954 b_and!24887)))

(declare-fun b!874559 () Bool)

(declare-fun res!594460 () Bool)

(declare-fun e!486943 () Bool)

(assert (=> b!874559 (=> (not res!594460) (not e!486943))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50786 0))(
  ( (array!50787 (arr!24417 (Array (_ BitVec 32) (_ BitVec 64))) (size!24858 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50786)

(declare-datatypes ((V!28163 0))(
  ( (V!28164 (val!8716 Int)) )
))
(declare-datatypes ((ValueCell!8229 0))(
  ( (ValueCellFull!8229 (v!11141 V!28163)) (EmptyCell!8229) )
))
(declare-datatypes ((array!50788 0))(
  ( (array!50789 (arr!24418 (Array (_ BitVec 32) ValueCell!8229)) (size!24859 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50788)

(assert (=> b!874559 (= res!594460 (and (= (size!24859 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24858 _keys!868) (size!24859 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!874560 () Bool)

(declare-fun res!594462 () Bool)

(assert (=> b!874560 (=> (not res!594462) (not e!486943))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!874560 (= res!594462 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24858 _keys!868))))))

(declare-fun b!874561 () Bool)

(declare-fun res!594463 () Bool)

(assert (=> b!874561 (=> (not res!594463) (not e!486943))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!874561 (= res!594463 (validKeyInArray!0 k0!854))))

(declare-fun b!874562 () Bool)

(declare-fun e!486940 () Bool)

(declare-fun tp_is_empty!17337 () Bool)

(assert (=> b!874562 (= e!486940 tp_is_empty!17337)))

(declare-fun b!874563 () Bool)

(declare-fun res!594461 () Bool)

(assert (=> b!874563 (=> (not res!594461) (not e!486943))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!874563 (= res!594461 (and (= (select (arr!24417 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!874564 () Bool)

(declare-fun res!594458 () Bool)

(assert (=> b!874564 (=> (not res!594458) (not e!486943))))

(declare-datatypes ((List!17404 0))(
  ( (Nil!17401) (Cons!17400 (h!18531 (_ BitVec 64)) (t!24453 List!17404)) )
))
(declare-fun arrayNoDuplicates!0 (array!50786 (_ BitVec 32) List!17404) Bool)

(assert (=> b!874564 (= res!594458 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17401))))

(declare-fun b!874565 () Bool)

(declare-fun res!594457 () Bool)

(assert (=> b!874565 (=> (not res!594457) (not e!486943))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50786 (_ BitVec 32)) Bool)

(assert (=> b!874565 (= res!594457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!874566 () Bool)

(declare-fun e!486941 () Bool)

(declare-fun mapRes!27614 () Bool)

(assert (=> b!874566 (= e!486941 (and e!486940 mapRes!27614))))

(declare-fun condMapEmpty!27614 () Bool)

(declare-fun mapDefault!27614 () ValueCell!8229)

(assert (=> b!874566 (= condMapEmpty!27614 (= (arr!24418 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8229)) mapDefault!27614)))))

(declare-fun mapNonEmpty!27614 () Bool)

(declare-fun tp!52955 () Bool)

(declare-fun e!486939 () Bool)

(assert (=> mapNonEmpty!27614 (= mapRes!27614 (and tp!52955 e!486939))))

(declare-fun mapValue!27614 () ValueCell!8229)

(declare-fun mapRest!27614 () (Array (_ BitVec 32) ValueCell!8229))

(declare-fun mapKey!27614 () (_ BitVec 32))

(assert (=> mapNonEmpty!27614 (= (arr!24418 _values!688) (store mapRest!27614 mapKey!27614 mapValue!27614))))

(declare-fun b!874567 () Bool)

(assert (=> b!874567 (= e!486939 tp_is_empty!17337)))

(declare-fun mapIsEmpty!27614 () Bool)

(assert (=> mapIsEmpty!27614 mapRes!27614))

(declare-fun res!594459 () Bool)

(assert (=> start!74358 (=> (not res!594459) (not e!486943))))

(assert (=> start!74358 (= res!594459 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24858 _keys!868))))))

(assert (=> start!74358 e!486943))

(assert (=> start!74358 tp_is_empty!17337))

(assert (=> start!74358 true))

(assert (=> start!74358 tp!52954))

(declare-fun array_inv!19236 (array!50786) Bool)

(assert (=> start!74358 (array_inv!19236 _keys!868)))

(declare-fun array_inv!19237 (array!50788) Bool)

(assert (=> start!74358 (and (array_inv!19237 _values!688) e!486941)))

(declare-fun b!874568 () Bool)

(declare-fun res!594456 () Bool)

(assert (=> b!874568 (=> (not res!594456) (not e!486943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!874568 (= res!594456 (validMask!0 mask!1196))))

(declare-fun b!874569 () Bool)

(assert (=> b!874569 (= e!486943 false)))

(declare-fun v!557 () V!28163)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11514 0))(
  ( (tuple2!11515 (_1!5767 (_ BitVec 64)) (_2!5767 V!28163)) )
))
(declare-datatypes ((List!17405 0))(
  ( (Nil!17402) (Cons!17401 (h!18532 tuple2!11514) (t!24454 List!17405)) )
))
(declare-datatypes ((ListLongMap!10297 0))(
  ( (ListLongMap!10298 (toList!5164 List!17405)) )
))
(declare-fun lt!395937 () ListLongMap!10297)

(declare-fun minValue!654 () V!28163)

(declare-fun zeroValue!654 () V!28163)

(declare-fun getCurrentListMapNoExtraKeys!3128 (array!50786 array!50788 (_ BitVec 32) (_ BitVec 32) V!28163 V!28163 (_ BitVec 32) Int) ListLongMap!10297)

(assert (=> b!874569 (= lt!395937 (getCurrentListMapNoExtraKeys!3128 _keys!868 (array!50789 (store (arr!24418 _values!688) i!612 (ValueCellFull!8229 v!557)) (size!24859 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395938 () ListLongMap!10297)

(assert (=> b!874569 (= lt!395938 (getCurrentListMapNoExtraKeys!3128 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (= (and start!74358 res!594459) b!874568))

(assert (= (and b!874568 res!594456) b!874559))

(assert (= (and b!874559 res!594460) b!874565))

(assert (= (and b!874565 res!594457) b!874564))

(assert (= (and b!874564 res!594458) b!874560))

(assert (= (and b!874560 res!594462) b!874561))

(assert (= (and b!874561 res!594463) b!874563))

(assert (= (and b!874563 res!594461) b!874569))

(assert (= (and b!874566 condMapEmpty!27614) mapIsEmpty!27614))

(assert (= (and b!874566 (not condMapEmpty!27614)) mapNonEmpty!27614))

(get-info :version)

(assert (= (and mapNonEmpty!27614 ((_ is ValueCellFull!8229) mapValue!27614)) b!874567))

(assert (= (and b!874566 ((_ is ValueCellFull!8229) mapDefault!27614)) b!874562))

(assert (= start!74358 b!874566))

(declare-fun m!814741 () Bool)

(assert (=> b!874563 m!814741))

(declare-fun m!814743 () Bool)

(assert (=> b!874568 m!814743))

(declare-fun m!814745 () Bool)

(assert (=> b!874565 m!814745))

(declare-fun m!814747 () Bool)

(assert (=> b!874564 m!814747))

(declare-fun m!814749 () Bool)

(assert (=> b!874561 m!814749))

(declare-fun m!814751 () Bool)

(assert (=> start!74358 m!814751))

(declare-fun m!814753 () Bool)

(assert (=> start!74358 m!814753))

(declare-fun m!814755 () Bool)

(assert (=> b!874569 m!814755))

(declare-fun m!814757 () Bool)

(assert (=> b!874569 m!814757))

(declare-fun m!814759 () Bool)

(assert (=> b!874569 m!814759))

(declare-fun m!814761 () Bool)

(assert (=> mapNonEmpty!27614 m!814761))

(check-sat (not b_next!15093) (not b!874564) b_and!24887 (not b!874568) (not b!874569) (not mapNonEmpty!27614) tp_is_empty!17337 (not b!874561) (not start!74358) (not b!874565))
(check-sat b_and!24887 (not b_next!15093))
