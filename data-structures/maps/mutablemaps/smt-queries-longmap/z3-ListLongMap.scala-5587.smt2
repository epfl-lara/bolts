; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73336 () Bool)

(assert start!73336)

(declare-fun b_free!14223 () Bool)

(declare-fun b_next!14223 () Bool)

(assert (=> start!73336 (= b_free!14223 (not b_next!14223))))

(declare-fun tp!50174 () Bool)

(declare-fun b_and!23597 () Bool)

(assert (=> start!73336 (= tp!50174 b_and!23597)))

(declare-fun b!855055 () Bool)

(declare-fun e!476765 () Bool)

(assert (=> b!855055 (= e!476765 false)))

(declare-datatypes ((V!26859 0))(
  ( (V!26860 (val!8227 Int)) )
))
(declare-fun v!557 () V!26859)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48894 0))(
  ( (array!48895 (arr!23474 (Array (_ BitVec 32) (_ BitVec 64))) (size!23915 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48894)

(declare-datatypes ((ValueCell!7740 0))(
  ( (ValueCellFull!7740 (v!10648 V!26859)) (EmptyCell!7740) )
))
(declare-datatypes ((array!48896 0))(
  ( (array!48897 (arr!23475 (Array (_ BitVec 32) ValueCell!7740)) (size!23916 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48896)

(declare-fun minValue!654 () V!26859)

(declare-fun zeroValue!654 () V!26859)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((tuple2!10830 0))(
  ( (tuple2!10831 (_1!5425 (_ BitVec 64)) (_2!5425 V!26859)) )
))
(declare-datatypes ((List!16705 0))(
  ( (Nil!16702) (Cons!16701 (h!17832 tuple2!10830) (t!23354 List!16705)) )
))
(declare-datatypes ((ListLongMap!9613 0))(
  ( (ListLongMap!9614 (toList!4822 List!16705)) )
))
(declare-fun lt!385601 () ListLongMap!9613)

(declare-fun getCurrentListMapNoExtraKeys!2804 (array!48894 array!48896 (_ BitVec 32) (_ BitVec 32) V!26859 V!26859 (_ BitVec 32) Int) ListLongMap!9613)

(assert (=> b!855055 (= lt!385601 (getCurrentListMapNoExtraKeys!2804 _keys!868 (array!48897 (store (arr!23475 _values!688) i!612 (ValueCellFull!7740 v!557)) (size!23916 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!385602 () ListLongMap!9613)

(assert (=> b!855055 (= lt!385602 (getCurrentListMapNoExtraKeys!2804 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!855056 () Bool)

(declare-fun res!580803 () Bool)

(assert (=> b!855056 (=> (not res!580803) (not e!476765))))

(assert (=> b!855056 (= res!580803 (and (= (size!23916 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23915 _keys!868) (size!23916 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!26138 () Bool)

(declare-fun mapRes!26138 () Bool)

(assert (=> mapIsEmpty!26138 mapRes!26138))

(declare-fun b!855057 () Bool)

(declare-fun res!580800 () Bool)

(assert (=> b!855057 (=> (not res!580800) (not e!476765))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!855057 (= res!580800 (validMask!0 mask!1196))))

(declare-fun b!855058 () Bool)

(declare-fun res!580806 () Bool)

(assert (=> b!855058 (=> (not res!580806) (not e!476765))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!855058 (= res!580806 (validKeyInArray!0 k0!854))))

(declare-fun b!855059 () Bool)

(declare-fun res!580802 () Bool)

(assert (=> b!855059 (=> (not res!580802) (not e!476765))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48894 (_ BitVec 32)) Bool)

(assert (=> b!855059 (= res!580802 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!855060 () Bool)

(declare-fun e!476763 () Bool)

(declare-fun tp_is_empty!16359 () Bool)

(assert (=> b!855060 (= e!476763 tp_is_empty!16359)))

(declare-fun res!580804 () Bool)

(assert (=> start!73336 (=> (not res!580804) (not e!476765))))

(assert (=> start!73336 (= res!580804 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23915 _keys!868))))))

(assert (=> start!73336 e!476765))

(assert (=> start!73336 tp_is_empty!16359))

(assert (=> start!73336 true))

(assert (=> start!73336 tp!50174))

(declare-fun array_inv!18586 (array!48894) Bool)

(assert (=> start!73336 (array_inv!18586 _keys!868)))

(declare-fun e!476766 () Bool)

(declare-fun array_inv!18587 (array!48896) Bool)

(assert (=> start!73336 (and (array_inv!18587 _values!688) e!476766)))

(declare-fun b!855061 () Bool)

(declare-fun res!580801 () Bool)

(assert (=> b!855061 (=> (not res!580801) (not e!476765))))

(declare-datatypes ((List!16706 0))(
  ( (Nil!16703) (Cons!16702 (h!17833 (_ BitVec 64)) (t!23355 List!16706)) )
))
(declare-fun arrayNoDuplicates!0 (array!48894 (_ BitVec 32) List!16706) Bool)

(assert (=> b!855061 (= res!580801 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16703))))

(declare-fun b!855062 () Bool)

(declare-fun res!580805 () Bool)

(assert (=> b!855062 (=> (not res!580805) (not e!476765))))

(assert (=> b!855062 (= res!580805 (and (= (select (arr!23474 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!855063 () Bool)

(declare-fun e!476762 () Bool)

(assert (=> b!855063 (= e!476762 tp_is_empty!16359)))

(declare-fun b!855064 () Bool)

(assert (=> b!855064 (= e!476766 (and e!476762 mapRes!26138))))

(declare-fun condMapEmpty!26138 () Bool)

(declare-fun mapDefault!26138 () ValueCell!7740)

(assert (=> b!855064 (= condMapEmpty!26138 (= (arr!23475 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7740)) mapDefault!26138)))))

(declare-fun b!855065 () Bool)

(declare-fun res!580799 () Bool)

(assert (=> b!855065 (=> (not res!580799) (not e!476765))))

(assert (=> b!855065 (= res!580799 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23915 _keys!868))))))

(declare-fun mapNonEmpty!26138 () Bool)

(declare-fun tp!50173 () Bool)

(assert (=> mapNonEmpty!26138 (= mapRes!26138 (and tp!50173 e!476763))))

(declare-fun mapRest!26138 () (Array (_ BitVec 32) ValueCell!7740))

(declare-fun mapValue!26138 () ValueCell!7740)

(declare-fun mapKey!26138 () (_ BitVec 32))

(assert (=> mapNonEmpty!26138 (= (arr!23475 _values!688) (store mapRest!26138 mapKey!26138 mapValue!26138))))

(assert (= (and start!73336 res!580804) b!855057))

(assert (= (and b!855057 res!580800) b!855056))

(assert (= (and b!855056 res!580803) b!855059))

(assert (= (and b!855059 res!580802) b!855061))

(assert (= (and b!855061 res!580801) b!855065))

(assert (= (and b!855065 res!580799) b!855058))

(assert (= (and b!855058 res!580806) b!855062))

(assert (= (and b!855062 res!580805) b!855055))

(assert (= (and b!855064 condMapEmpty!26138) mapIsEmpty!26138))

(assert (= (and b!855064 (not condMapEmpty!26138)) mapNonEmpty!26138))

(get-info :version)

(assert (= (and mapNonEmpty!26138 ((_ is ValueCellFull!7740) mapValue!26138)) b!855060))

(assert (= (and b!855064 ((_ is ValueCellFull!7740) mapDefault!26138)) b!855063))

(assert (= start!73336 b!855064))

(declare-fun m!796439 () Bool)

(assert (=> b!855059 m!796439))

(declare-fun m!796441 () Bool)

(assert (=> b!855058 m!796441))

(declare-fun m!796443 () Bool)

(assert (=> b!855062 m!796443))

(declare-fun m!796445 () Bool)

(assert (=> b!855061 m!796445))

(declare-fun m!796447 () Bool)

(assert (=> b!855057 m!796447))

(declare-fun m!796449 () Bool)

(assert (=> b!855055 m!796449))

(declare-fun m!796451 () Bool)

(assert (=> b!855055 m!796451))

(declare-fun m!796453 () Bool)

(assert (=> b!855055 m!796453))

(declare-fun m!796455 () Bool)

(assert (=> start!73336 m!796455))

(declare-fun m!796457 () Bool)

(assert (=> start!73336 m!796457))

(declare-fun m!796459 () Bool)

(assert (=> mapNonEmpty!26138 m!796459))

(check-sat (not b!855057) (not b!855059) (not start!73336) (not mapNonEmpty!26138) b_and!23597 (not b!855055) (not b!855061) (not b_next!14223) tp_is_empty!16359 (not b!855058))
(check-sat b_and!23597 (not b_next!14223))
