; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74334 () Bool)

(assert start!74334)

(declare-fun b_free!15069 () Bool)

(declare-fun b_next!15069 () Bool)

(assert (=> start!74334 (= b_free!15069 (not b_next!15069))))

(declare-fun tp!52882 () Bool)

(declare-fun b_and!24863 () Bool)

(assert (=> start!74334 (= tp!52882 b_and!24863)))

(declare-fun b!874163 () Bool)

(declare-fun res!594169 () Bool)

(declare-fun e!486759 () Bool)

(assert (=> b!874163 (=> (not res!594169) (not e!486759))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!874163 (= res!594169 (validKeyInArray!0 k0!854))))

(declare-fun res!594173 () Bool)

(assert (=> start!74334 (=> (not res!594173) (not e!486759))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50738 0))(
  ( (array!50739 (arr!24393 (Array (_ BitVec 32) (_ BitVec 64))) (size!24834 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50738)

(assert (=> start!74334 (= res!594173 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24834 _keys!868))))))

(assert (=> start!74334 e!486759))

(declare-fun tp_is_empty!17313 () Bool)

(assert (=> start!74334 tp_is_empty!17313))

(assert (=> start!74334 true))

(assert (=> start!74334 tp!52882))

(declare-fun array_inv!19218 (array!50738) Bool)

(assert (=> start!74334 (array_inv!19218 _keys!868)))

(declare-datatypes ((V!28131 0))(
  ( (V!28132 (val!8704 Int)) )
))
(declare-datatypes ((ValueCell!8217 0))(
  ( (ValueCellFull!8217 (v!11129 V!28131)) (EmptyCell!8217) )
))
(declare-datatypes ((array!50740 0))(
  ( (array!50741 (arr!24394 (Array (_ BitVec 32) ValueCell!8217)) (size!24835 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50740)

(declare-fun e!486760 () Bool)

(declare-fun array_inv!19219 (array!50740) Bool)

(assert (=> start!74334 (and (array_inv!19219 _values!688) e!486760)))

(declare-fun mapIsEmpty!27578 () Bool)

(declare-fun mapRes!27578 () Bool)

(assert (=> mapIsEmpty!27578 mapRes!27578))

(declare-fun b!874164 () Bool)

(declare-fun e!486762 () Bool)

(assert (=> b!874164 (= e!486760 (and e!486762 mapRes!27578))))

(declare-fun condMapEmpty!27578 () Bool)

(declare-fun mapDefault!27578 () ValueCell!8217)

(assert (=> b!874164 (= condMapEmpty!27578 (= (arr!24394 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8217)) mapDefault!27578)))))

(declare-fun b!874165 () Bool)

(declare-fun res!594175 () Bool)

(assert (=> b!874165 (=> (not res!594175) (not e!486759))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!874165 (= res!594175 (and (= (select (arr!24393 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!874166 () Bool)

(assert (=> b!874166 (= e!486759 false)))

(declare-datatypes ((tuple2!11498 0))(
  ( (tuple2!11499 (_1!5759 (_ BitVec 64)) (_2!5759 V!28131)) )
))
(declare-datatypes ((List!17385 0))(
  ( (Nil!17382) (Cons!17381 (h!18512 tuple2!11498) (t!24434 List!17385)) )
))
(declare-datatypes ((ListLongMap!10281 0))(
  ( (ListLongMap!10282 (toList!5156 List!17385)) )
))
(declare-fun lt!395865 () ListLongMap!10281)

(declare-fun v!557 () V!28131)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!28131)

(declare-fun zeroValue!654 () V!28131)

(declare-fun getCurrentListMapNoExtraKeys!3120 (array!50738 array!50740 (_ BitVec 32) (_ BitVec 32) V!28131 V!28131 (_ BitVec 32) Int) ListLongMap!10281)

(assert (=> b!874166 (= lt!395865 (getCurrentListMapNoExtraKeys!3120 _keys!868 (array!50741 (store (arr!24394 _values!688) i!612 (ValueCellFull!8217 v!557)) (size!24835 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395866 () ListLongMap!10281)

(assert (=> b!874166 (= lt!395866 (getCurrentListMapNoExtraKeys!3120 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!874167 () Bool)

(declare-fun res!594174 () Bool)

(assert (=> b!874167 (=> (not res!594174) (not e!486759))))

(assert (=> b!874167 (= res!594174 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24834 _keys!868))))))

(declare-fun b!874168 () Bool)

(assert (=> b!874168 (= e!486762 tp_is_empty!17313)))

(declare-fun b!874169 () Bool)

(declare-fun res!594168 () Bool)

(assert (=> b!874169 (=> (not res!594168) (not e!486759))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50738 (_ BitVec 32)) Bool)

(assert (=> b!874169 (= res!594168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!874170 () Bool)

(declare-fun e!486763 () Bool)

(assert (=> b!874170 (= e!486763 tp_is_empty!17313)))

(declare-fun b!874171 () Bool)

(declare-fun res!594171 () Bool)

(assert (=> b!874171 (=> (not res!594171) (not e!486759))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!874171 (= res!594171 (validMask!0 mask!1196))))

(declare-fun b!874172 () Bool)

(declare-fun res!594172 () Bool)

(assert (=> b!874172 (=> (not res!594172) (not e!486759))))

(assert (=> b!874172 (= res!594172 (and (= (size!24835 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24834 _keys!868) (size!24835 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!874173 () Bool)

(declare-fun res!594170 () Bool)

(assert (=> b!874173 (=> (not res!594170) (not e!486759))))

(declare-datatypes ((List!17386 0))(
  ( (Nil!17383) (Cons!17382 (h!18513 (_ BitVec 64)) (t!24435 List!17386)) )
))
(declare-fun arrayNoDuplicates!0 (array!50738 (_ BitVec 32) List!17386) Bool)

(assert (=> b!874173 (= res!594170 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17383))))

(declare-fun mapNonEmpty!27578 () Bool)

(declare-fun tp!52883 () Bool)

(assert (=> mapNonEmpty!27578 (= mapRes!27578 (and tp!52883 e!486763))))

(declare-fun mapValue!27578 () ValueCell!8217)

(declare-fun mapKey!27578 () (_ BitVec 32))

(declare-fun mapRest!27578 () (Array (_ BitVec 32) ValueCell!8217))

(assert (=> mapNonEmpty!27578 (= (arr!24394 _values!688) (store mapRest!27578 mapKey!27578 mapValue!27578))))

(assert (= (and start!74334 res!594173) b!874171))

(assert (= (and b!874171 res!594171) b!874172))

(assert (= (and b!874172 res!594172) b!874169))

(assert (= (and b!874169 res!594168) b!874173))

(assert (= (and b!874173 res!594170) b!874167))

(assert (= (and b!874167 res!594174) b!874163))

(assert (= (and b!874163 res!594169) b!874165))

(assert (= (and b!874165 res!594175) b!874166))

(assert (= (and b!874164 condMapEmpty!27578) mapIsEmpty!27578))

(assert (= (and b!874164 (not condMapEmpty!27578)) mapNonEmpty!27578))

(get-info :version)

(assert (= (and mapNonEmpty!27578 ((_ is ValueCellFull!8217) mapValue!27578)) b!874170))

(assert (= (and b!874164 ((_ is ValueCellFull!8217) mapDefault!27578)) b!874168))

(assert (= start!74334 b!874164))

(declare-fun m!814477 () Bool)

(assert (=> b!874166 m!814477))

(declare-fun m!814479 () Bool)

(assert (=> b!874166 m!814479))

(declare-fun m!814481 () Bool)

(assert (=> b!874166 m!814481))

(declare-fun m!814483 () Bool)

(assert (=> start!74334 m!814483))

(declare-fun m!814485 () Bool)

(assert (=> start!74334 m!814485))

(declare-fun m!814487 () Bool)

(assert (=> b!874163 m!814487))

(declare-fun m!814489 () Bool)

(assert (=> b!874173 m!814489))

(declare-fun m!814491 () Bool)

(assert (=> b!874169 m!814491))

(declare-fun m!814493 () Bool)

(assert (=> b!874165 m!814493))

(declare-fun m!814495 () Bool)

(assert (=> b!874171 m!814495))

(declare-fun m!814497 () Bool)

(assert (=> mapNonEmpty!27578 m!814497))

(check-sat (not start!74334) (not b!874166) (not b_next!15069) b_and!24863 tp_is_empty!17313 (not b!874173) (not b!874169) (not b!874163) (not b!874171) (not mapNonEmpty!27578))
(check-sat b_and!24863 (not b_next!15069))
