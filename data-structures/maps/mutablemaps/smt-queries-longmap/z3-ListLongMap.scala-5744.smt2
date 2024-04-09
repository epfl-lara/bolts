; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74322 () Bool)

(assert start!74322)

(declare-fun b_free!15057 () Bool)

(declare-fun b_next!15057 () Bool)

(assert (=> start!74322 (= b_free!15057 (not b_next!15057))))

(declare-fun tp!52847 () Bool)

(declare-fun b_and!24851 () Bool)

(assert (=> start!74322 (= tp!52847 b_and!24851)))

(declare-fun b!873965 () Bool)

(declare-fun res!594031 () Bool)

(declare-fun e!486672 () Bool)

(assert (=> b!873965 (=> (not res!594031) (not e!486672))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!873965 (= res!594031 (validMask!0 mask!1196))))

(declare-fun b!873966 () Bool)

(declare-fun res!594024 () Bool)

(assert (=> b!873966 (=> (not res!594024) (not e!486672))))

(declare-datatypes ((array!50716 0))(
  ( (array!50717 (arr!24382 (Array (_ BitVec 32) (_ BitVec 64))) (size!24823 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50716)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50716 (_ BitVec 32)) Bool)

(assert (=> b!873966 (= res!594024 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!873967 () Bool)

(declare-fun e!486673 () Bool)

(declare-fun e!486671 () Bool)

(declare-fun mapRes!27560 () Bool)

(assert (=> b!873967 (= e!486673 (and e!486671 mapRes!27560))))

(declare-fun condMapEmpty!27560 () Bool)

(declare-datatypes ((V!28115 0))(
  ( (V!28116 (val!8698 Int)) )
))
(declare-datatypes ((ValueCell!8211 0))(
  ( (ValueCellFull!8211 (v!11123 V!28115)) (EmptyCell!8211) )
))
(declare-datatypes ((array!50718 0))(
  ( (array!50719 (arr!24383 (Array (_ BitVec 32) ValueCell!8211)) (size!24824 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50718)

(declare-fun mapDefault!27560 () ValueCell!8211)

(assert (=> b!873967 (= condMapEmpty!27560 (= (arr!24383 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8211)) mapDefault!27560)))))

(declare-fun b!873968 () Bool)

(declare-fun e!486670 () Bool)

(declare-fun tp_is_empty!17301 () Bool)

(assert (=> b!873968 (= e!486670 tp_is_empty!17301)))

(declare-fun b!873969 () Bool)

(assert (=> b!873969 (= e!486671 tp_is_empty!17301)))

(declare-fun res!594027 () Bool)

(assert (=> start!74322 (=> (not res!594027) (not e!486672))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74322 (= res!594027 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24823 _keys!868))))))

(assert (=> start!74322 e!486672))

(assert (=> start!74322 tp_is_empty!17301))

(assert (=> start!74322 true))

(assert (=> start!74322 tp!52847))

(declare-fun array_inv!19210 (array!50716) Bool)

(assert (=> start!74322 (array_inv!19210 _keys!868)))

(declare-fun array_inv!19211 (array!50718) Bool)

(assert (=> start!74322 (and (array_inv!19211 _values!688) e!486673)))

(declare-fun b!873970 () Bool)

(declare-fun res!594025 () Bool)

(assert (=> b!873970 (=> (not res!594025) (not e!486672))))

(declare-datatypes ((List!17378 0))(
  ( (Nil!17375) (Cons!17374 (h!18505 (_ BitVec 64)) (t!24427 List!17378)) )
))
(declare-fun arrayNoDuplicates!0 (array!50716 (_ BitVec 32) List!17378) Bool)

(assert (=> b!873970 (= res!594025 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17375))))

(declare-fun b!873971 () Bool)

(assert (=> b!873971 (= e!486672 false)))

(declare-fun v!557 () V!28115)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11490 0))(
  ( (tuple2!11491 (_1!5755 (_ BitVec 64)) (_2!5755 V!28115)) )
))
(declare-datatypes ((List!17379 0))(
  ( (Nil!17376) (Cons!17375 (h!18506 tuple2!11490) (t!24428 List!17379)) )
))
(declare-datatypes ((ListLongMap!10273 0))(
  ( (ListLongMap!10274 (toList!5152 List!17379)) )
))
(declare-fun lt!395830 () ListLongMap!10273)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!28115)

(declare-fun zeroValue!654 () V!28115)

(declare-fun getCurrentListMapNoExtraKeys!3116 (array!50716 array!50718 (_ BitVec 32) (_ BitVec 32) V!28115 V!28115 (_ BitVec 32) Int) ListLongMap!10273)

(assert (=> b!873971 (= lt!395830 (getCurrentListMapNoExtraKeys!3116 _keys!868 (array!50719 (store (arr!24383 _values!688) i!612 (ValueCellFull!8211 v!557)) (size!24824 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395829 () ListLongMap!10273)

(assert (=> b!873971 (= lt!395829 (getCurrentListMapNoExtraKeys!3116 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!27560 () Bool)

(assert (=> mapIsEmpty!27560 mapRes!27560))

(declare-fun b!873972 () Bool)

(declare-fun res!594030 () Bool)

(assert (=> b!873972 (=> (not res!594030) (not e!486672))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!873972 (= res!594030 (validKeyInArray!0 k0!854))))

(declare-fun b!873973 () Bool)

(declare-fun res!594028 () Bool)

(assert (=> b!873973 (=> (not res!594028) (not e!486672))))

(assert (=> b!873973 (= res!594028 (and (= (select (arr!24382 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!873974 () Bool)

(declare-fun res!594026 () Bool)

(assert (=> b!873974 (=> (not res!594026) (not e!486672))))

(assert (=> b!873974 (= res!594026 (and (= (size!24824 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24823 _keys!868) (size!24824 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!873975 () Bool)

(declare-fun res!594029 () Bool)

(assert (=> b!873975 (=> (not res!594029) (not e!486672))))

(assert (=> b!873975 (= res!594029 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24823 _keys!868))))))

(declare-fun mapNonEmpty!27560 () Bool)

(declare-fun tp!52846 () Bool)

(assert (=> mapNonEmpty!27560 (= mapRes!27560 (and tp!52846 e!486670))))

(declare-fun mapValue!27560 () ValueCell!8211)

(declare-fun mapKey!27560 () (_ BitVec 32))

(declare-fun mapRest!27560 () (Array (_ BitVec 32) ValueCell!8211))

(assert (=> mapNonEmpty!27560 (= (arr!24383 _values!688) (store mapRest!27560 mapKey!27560 mapValue!27560))))

(assert (= (and start!74322 res!594027) b!873965))

(assert (= (and b!873965 res!594031) b!873974))

(assert (= (and b!873974 res!594026) b!873966))

(assert (= (and b!873966 res!594024) b!873970))

(assert (= (and b!873970 res!594025) b!873975))

(assert (= (and b!873975 res!594029) b!873972))

(assert (= (and b!873972 res!594030) b!873973))

(assert (= (and b!873973 res!594028) b!873971))

(assert (= (and b!873967 condMapEmpty!27560) mapIsEmpty!27560))

(assert (= (and b!873967 (not condMapEmpty!27560)) mapNonEmpty!27560))

(get-info :version)

(assert (= (and mapNonEmpty!27560 ((_ is ValueCellFull!8211) mapValue!27560)) b!873968))

(assert (= (and b!873967 ((_ is ValueCellFull!8211) mapDefault!27560)) b!873969))

(assert (= start!74322 b!873967))

(declare-fun m!814345 () Bool)

(assert (=> mapNonEmpty!27560 m!814345))

(declare-fun m!814347 () Bool)

(assert (=> b!873970 m!814347))

(declare-fun m!814349 () Bool)

(assert (=> start!74322 m!814349))

(declare-fun m!814351 () Bool)

(assert (=> start!74322 m!814351))

(declare-fun m!814353 () Bool)

(assert (=> b!873966 m!814353))

(declare-fun m!814355 () Bool)

(assert (=> b!873971 m!814355))

(declare-fun m!814357 () Bool)

(assert (=> b!873971 m!814357))

(declare-fun m!814359 () Bool)

(assert (=> b!873971 m!814359))

(declare-fun m!814361 () Bool)

(assert (=> b!873965 m!814361))

(declare-fun m!814363 () Bool)

(assert (=> b!873973 m!814363))

(declare-fun m!814365 () Bool)

(assert (=> b!873972 m!814365))

(check-sat (not b!873966) b_and!24851 (not b!873972) (not b!873965) (not mapNonEmpty!27560) (not b!873970) (not b_next!15057) (not start!74322) (not b!873971) tp_is_empty!17301)
(check-sat b_and!24851 (not b_next!15057))
