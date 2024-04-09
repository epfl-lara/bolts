; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73420 () Bool)

(assert start!73420)

(declare-fun b_free!14307 () Bool)

(declare-fun b_next!14307 () Bool)

(assert (=> start!73420 (= b_free!14307 (not b_next!14307))))

(declare-fun tp!50426 () Bool)

(declare-fun b_and!23681 () Bool)

(assert (=> start!73420 (= tp!50426 b_and!23681)))

(declare-fun b!856500 () Bool)

(declare-fun res!581867 () Bool)

(declare-fun e!477452 () Bool)

(assert (=> b!856500 (=> (not res!581867) (not e!477452))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!49054 0))(
  ( (array!49055 (arr!23554 (Array (_ BitVec 32) (_ BitVec 64))) (size!23995 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49054)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!856500 (= res!581867 (and (= (select (arr!23554 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!856501 () Bool)

(declare-fun e!477451 () Bool)

(assert (=> b!856501 (= e!477452 e!477451)))

(declare-fun res!581866 () Bool)

(assert (=> b!856501 (=> (not res!581866) (not e!477451))))

(assert (=> b!856501 (= res!581866 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!26971 0))(
  ( (V!26972 (val!8269 Int)) )
))
(declare-fun minValue!654 () V!26971)

(declare-fun zeroValue!654 () V!26971)

(declare-datatypes ((ValueCell!7782 0))(
  ( (ValueCellFull!7782 (v!10690 V!26971)) (EmptyCell!7782) )
))
(declare-datatypes ((array!49056 0))(
  ( (array!49057 (arr!23555 (Array (_ BitVec 32) ValueCell!7782)) (size!23996 (_ BitVec 32))) )
))
(declare-fun lt!385974 () array!49056)

(declare-datatypes ((tuple2!10892 0))(
  ( (tuple2!10893 (_1!5456 (_ BitVec 64)) (_2!5456 V!26971)) )
))
(declare-datatypes ((List!16765 0))(
  ( (Nil!16762) (Cons!16761 (h!17892 tuple2!10892) (t!23414 List!16765)) )
))
(declare-datatypes ((ListLongMap!9675 0))(
  ( (ListLongMap!9676 (toList!4853 List!16765)) )
))
(declare-fun lt!385973 () ListLongMap!9675)

(declare-fun getCurrentListMapNoExtraKeys!2835 (array!49054 array!49056 (_ BitVec 32) (_ BitVec 32) V!26971 V!26971 (_ BitVec 32) Int) ListLongMap!9675)

(assert (=> b!856501 (= lt!385973 (getCurrentListMapNoExtraKeys!2835 _keys!868 lt!385974 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26971)

(declare-fun _values!688 () array!49056)

(assert (=> b!856501 (= lt!385974 (array!49057 (store (arr!23555 _values!688) i!612 (ValueCellFull!7782 v!557)) (size!23996 _values!688)))))

(declare-fun lt!385971 () ListLongMap!9675)

(assert (=> b!856501 (= lt!385971 (getCurrentListMapNoExtraKeys!2835 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!856502 () Bool)

(declare-fun res!581869 () Bool)

(assert (=> b!856502 (=> (not res!581869) (not e!477452))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!856502 (= res!581869 (validKeyInArray!0 k0!854))))

(declare-fun b!856503 () Bool)

(declare-fun e!477454 () Bool)

(declare-fun tp_is_empty!16443 () Bool)

(assert (=> b!856503 (= e!477454 tp_is_empty!16443)))

(declare-fun b!856504 () Bool)

(declare-fun res!581872 () Bool)

(assert (=> b!856504 (=> (not res!581872) (not e!477452))))

(assert (=> b!856504 (= res!581872 (and (= (size!23996 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23995 _keys!868) (size!23996 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!26264 () Bool)

(declare-fun mapRes!26264 () Bool)

(assert (=> mapIsEmpty!26264 mapRes!26264))

(declare-fun b!856505 () Bool)

(declare-fun res!581870 () Bool)

(assert (=> b!856505 (=> (not res!581870) (not e!477452))))

(assert (=> b!856505 (= res!581870 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23995 _keys!868))))))

(declare-fun b!856506 () Bool)

(declare-fun e!477453 () Bool)

(assert (=> b!856506 (= e!477453 tp_is_empty!16443)))

(declare-fun b!856507 () Bool)

(declare-fun res!581874 () Bool)

(assert (=> b!856507 (=> (not res!581874) (not e!477452))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!856507 (= res!581874 (validMask!0 mask!1196))))

(declare-fun b!856508 () Bool)

(declare-fun res!581868 () Bool)

(assert (=> b!856508 (=> (not res!581868) (not e!477452))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49054 (_ BitVec 32)) Bool)

(assert (=> b!856508 (= res!581868 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!856509 () Bool)

(assert (=> b!856509 (= e!477451 (not true))))

(declare-fun +!2162 (ListLongMap!9675 tuple2!10892) ListLongMap!9675)

(assert (=> b!856509 (= (getCurrentListMapNoExtraKeys!2835 _keys!868 lt!385974 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2162 (getCurrentListMapNoExtraKeys!2835 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10893 k0!854 v!557)))))

(declare-datatypes ((Unit!29166 0))(
  ( (Unit!29167) )
))
(declare-fun lt!385972 () Unit!29166)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!422 (array!49054 array!49056 (_ BitVec 32) (_ BitVec 32) V!26971 V!26971 (_ BitVec 32) (_ BitVec 64) V!26971 (_ BitVec 32) Int) Unit!29166)

(assert (=> b!856509 (= lt!385972 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!422 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!26264 () Bool)

(declare-fun tp!50425 () Bool)

(assert (=> mapNonEmpty!26264 (= mapRes!26264 (and tp!50425 e!477454))))

(declare-fun mapValue!26264 () ValueCell!7782)

(declare-fun mapRest!26264 () (Array (_ BitVec 32) ValueCell!7782))

(declare-fun mapKey!26264 () (_ BitVec 32))

(assert (=> mapNonEmpty!26264 (= (arr!23555 _values!688) (store mapRest!26264 mapKey!26264 mapValue!26264))))

(declare-fun res!581873 () Bool)

(assert (=> start!73420 (=> (not res!581873) (not e!477452))))

(assert (=> start!73420 (= res!581873 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23995 _keys!868))))))

(assert (=> start!73420 e!477452))

(assert (=> start!73420 tp_is_empty!16443))

(assert (=> start!73420 true))

(assert (=> start!73420 tp!50426))

(declare-fun array_inv!18644 (array!49054) Bool)

(assert (=> start!73420 (array_inv!18644 _keys!868)))

(declare-fun e!477456 () Bool)

(declare-fun array_inv!18645 (array!49056) Bool)

(assert (=> start!73420 (and (array_inv!18645 _values!688) e!477456)))

(declare-fun b!856510 () Bool)

(declare-fun res!581871 () Bool)

(assert (=> b!856510 (=> (not res!581871) (not e!477452))))

(declare-datatypes ((List!16766 0))(
  ( (Nil!16763) (Cons!16762 (h!17893 (_ BitVec 64)) (t!23415 List!16766)) )
))
(declare-fun arrayNoDuplicates!0 (array!49054 (_ BitVec 32) List!16766) Bool)

(assert (=> b!856510 (= res!581871 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16763))))

(declare-fun b!856511 () Bool)

(assert (=> b!856511 (= e!477456 (and e!477453 mapRes!26264))))

(declare-fun condMapEmpty!26264 () Bool)

(declare-fun mapDefault!26264 () ValueCell!7782)

(assert (=> b!856511 (= condMapEmpty!26264 (= (arr!23555 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7782)) mapDefault!26264)))))

(assert (= (and start!73420 res!581873) b!856507))

(assert (= (and b!856507 res!581874) b!856504))

(assert (= (and b!856504 res!581872) b!856508))

(assert (= (and b!856508 res!581868) b!856510))

(assert (= (and b!856510 res!581871) b!856505))

(assert (= (and b!856505 res!581870) b!856502))

(assert (= (and b!856502 res!581869) b!856500))

(assert (= (and b!856500 res!581867) b!856501))

(assert (= (and b!856501 res!581866) b!856509))

(assert (= (and b!856511 condMapEmpty!26264) mapIsEmpty!26264))

(assert (= (and b!856511 (not condMapEmpty!26264)) mapNonEmpty!26264))

(get-info :version)

(assert (= (and mapNonEmpty!26264 ((_ is ValueCellFull!7782) mapValue!26264)) b!856503))

(assert (= (and b!856511 ((_ is ValueCellFull!7782) mapDefault!26264)) b!856506))

(assert (= start!73420 b!856511))

(declare-fun m!797515 () Bool)

(assert (=> b!856508 m!797515))

(declare-fun m!797517 () Bool)

(assert (=> b!856510 m!797517))

(declare-fun m!797519 () Bool)

(assert (=> b!856507 m!797519))

(declare-fun m!797521 () Bool)

(assert (=> start!73420 m!797521))

(declare-fun m!797523 () Bool)

(assert (=> start!73420 m!797523))

(declare-fun m!797525 () Bool)

(assert (=> b!856509 m!797525))

(declare-fun m!797527 () Bool)

(assert (=> b!856509 m!797527))

(assert (=> b!856509 m!797527))

(declare-fun m!797529 () Bool)

(assert (=> b!856509 m!797529))

(declare-fun m!797531 () Bool)

(assert (=> b!856509 m!797531))

(declare-fun m!797533 () Bool)

(assert (=> b!856500 m!797533))

(declare-fun m!797535 () Bool)

(assert (=> mapNonEmpty!26264 m!797535))

(declare-fun m!797537 () Bool)

(assert (=> b!856502 m!797537))

(declare-fun m!797539 () Bool)

(assert (=> b!856501 m!797539))

(declare-fun m!797541 () Bool)

(assert (=> b!856501 m!797541))

(declare-fun m!797543 () Bool)

(assert (=> b!856501 m!797543))

(check-sat (not b!856508) (not b!856501) b_and!23681 tp_is_empty!16443 (not b!856507) (not mapNonEmpty!26264) (not b!856509) (not start!73420) (not b!856502) (not b!856510) (not b_next!14307))
(check-sat b_and!23681 (not b_next!14307))
