; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73438 () Bool)

(assert start!73438)

(declare-fun b_free!14325 () Bool)

(declare-fun b_next!14325 () Bool)

(assert (=> start!73438 (= b_free!14325 (not b_next!14325))))

(declare-fun tp!50479 () Bool)

(declare-fun b_and!23699 () Bool)

(assert (=> start!73438 (= tp!50479 b_and!23699)))

(declare-fun b!856824 () Bool)

(declare-fun e!477615 () Bool)

(declare-fun e!477616 () Bool)

(declare-fun mapRes!26291 () Bool)

(assert (=> b!856824 (= e!477615 (and e!477616 mapRes!26291))))

(declare-fun condMapEmpty!26291 () Bool)

(declare-datatypes ((V!26995 0))(
  ( (V!26996 (val!8278 Int)) )
))
(declare-datatypes ((ValueCell!7791 0))(
  ( (ValueCellFull!7791 (v!10699 V!26995)) (EmptyCell!7791) )
))
(declare-datatypes ((array!49090 0))(
  ( (array!49091 (arr!23572 (Array (_ BitVec 32) ValueCell!7791)) (size!24013 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49090)

(declare-fun mapDefault!26291 () ValueCell!7791)

(assert (=> b!856824 (= condMapEmpty!26291 (= (arr!23572 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7791)) mapDefault!26291)))))

(declare-fun b!856825 () Bool)

(declare-fun res!582116 () Bool)

(declare-fun e!477614 () Bool)

(assert (=> b!856825 (=> (not res!582116) (not e!477614))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!49092 0))(
  ( (array!49093 (arr!23573 (Array (_ BitVec 32) (_ BitVec 64))) (size!24014 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49092)

(assert (=> b!856825 (= res!582116 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24014 _keys!868))))))

(declare-fun b!856826 () Bool)

(declare-fun res!582113 () Bool)

(assert (=> b!856826 (=> (not res!582113) (not e!477614))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!856826 (= res!582113 (and (= (size!24013 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24014 _keys!868) (size!24013 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!582109 () Bool)

(assert (=> start!73438 (=> (not res!582109) (not e!477614))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73438 (= res!582109 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24014 _keys!868))))))

(assert (=> start!73438 e!477614))

(declare-fun tp_is_empty!16461 () Bool)

(assert (=> start!73438 tp_is_empty!16461))

(assert (=> start!73438 true))

(assert (=> start!73438 tp!50479))

(declare-fun array_inv!18658 (array!49092) Bool)

(assert (=> start!73438 (array_inv!18658 _keys!868)))

(declare-fun array_inv!18659 (array!49090) Bool)

(assert (=> start!73438 (and (array_inv!18659 _values!688) e!477615)))

(declare-fun mapIsEmpty!26291 () Bool)

(assert (=> mapIsEmpty!26291 mapRes!26291))

(declare-fun b!856827 () Bool)

(assert (=> b!856827 (= e!477616 tp_is_empty!16461)))

(declare-fun b!856828 () Bool)

(declare-fun res!582112 () Bool)

(assert (=> b!856828 (=> (not res!582112) (not e!477614))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!856828 (= res!582112 (validKeyInArray!0 k0!854))))

(declare-fun b!856829 () Bool)

(declare-fun e!477613 () Bool)

(assert (=> b!856829 (= e!477613 tp_is_empty!16461)))

(declare-fun mapNonEmpty!26291 () Bool)

(declare-fun tp!50480 () Bool)

(assert (=> mapNonEmpty!26291 (= mapRes!26291 (and tp!50480 e!477613))))

(declare-fun mapRest!26291 () (Array (_ BitVec 32) ValueCell!7791))

(declare-fun mapKey!26291 () (_ BitVec 32))

(declare-fun mapValue!26291 () ValueCell!7791)

(assert (=> mapNonEmpty!26291 (= (arr!23572 _values!688) (store mapRest!26291 mapKey!26291 mapValue!26291))))

(declare-fun b!856830 () Bool)

(declare-fun res!582117 () Bool)

(assert (=> b!856830 (=> (not res!582117) (not e!477614))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!856830 (= res!582117 (validMask!0 mask!1196))))

(declare-fun b!856831 () Bool)

(declare-fun res!582110 () Bool)

(assert (=> b!856831 (=> (not res!582110) (not e!477614))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49092 (_ BitVec 32)) Bool)

(assert (=> b!856831 (= res!582110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!856832 () Bool)

(declare-fun e!477618 () Bool)

(assert (=> b!856832 (= e!477614 e!477618)))

(declare-fun res!582114 () Bool)

(assert (=> b!856832 (=> (not res!582114) (not e!477618))))

(assert (=> b!856832 (= res!582114 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!386079 () array!49090)

(declare-datatypes ((tuple2!10906 0))(
  ( (tuple2!10907 (_1!5463 (_ BitVec 64)) (_2!5463 V!26995)) )
))
(declare-datatypes ((List!16778 0))(
  ( (Nil!16775) (Cons!16774 (h!17905 tuple2!10906) (t!23427 List!16778)) )
))
(declare-datatypes ((ListLongMap!9689 0))(
  ( (ListLongMap!9690 (toList!4860 List!16778)) )
))
(declare-fun lt!386081 () ListLongMap!9689)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!26995)

(declare-fun zeroValue!654 () V!26995)

(declare-fun getCurrentListMapNoExtraKeys!2842 (array!49092 array!49090 (_ BitVec 32) (_ BitVec 32) V!26995 V!26995 (_ BitVec 32) Int) ListLongMap!9689)

(assert (=> b!856832 (= lt!386081 (getCurrentListMapNoExtraKeys!2842 _keys!868 lt!386079 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26995)

(assert (=> b!856832 (= lt!386079 (array!49091 (store (arr!23572 _values!688) i!612 (ValueCellFull!7791 v!557)) (size!24013 _values!688)))))

(declare-fun lt!386080 () ListLongMap!9689)

(assert (=> b!856832 (= lt!386080 (getCurrentListMapNoExtraKeys!2842 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!856833 () Bool)

(assert (=> b!856833 (= e!477618 (not true))))

(declare-fun +!2169 (ListLongMap!9689 tuple2!10906) ListLongMap!9689)

(assert (=> b!856833 (= (getCurrentListMapNoExtraKeys!2842 _keys!868 lt!386079 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2169 (getCurrentListMapNoExtraKeys!2842 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10907 k0!854 v!557)))))

(declare-datatypes ((Unit!29180 0))(
  ( (Unit!29181) )
))
(declare-fun lt!386082 () Unit!29180)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!429 (array!49092 array!49090 (_ BitVec 32) (_ BitVec 32) V!26995 V!26995 (_ BitVec 32) (_ BitVec 64) V!26995 (_ BitVec 32) Int) Unit!29180)

(assert (=> b!856833 (= lt!386082 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!429 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!856834 () Bool)

(declare-fun res!582111 () Bool)

(assert (=> b!856834 (=> (not res!582111) (not e!477614))))

(assert (=> b!856834 (= res!582111 (and (= (select (arr!23573 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!856835 () Bool)

(declare-fun res!582115 () Bool)

(assert (=> b!856835 (=> (not res!582115) (not e!477614))))

(declare-datatypes ((List!16779 0))(
  ( (Nil!16776) (Cons!16775 (h!17906 (_ BitVec 64)) (t!23428 List!16779)) )
))
(declare-fun arrayNoDuplicates!0 (array!49092 (_ BitVec 32) List!16779) Bool)

(assert (=> b!856835 (= res!582115 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16776))))

(assert (= (and start!73438 res!582109) b!856830))

(assert (= (and b!856830 res!582117) b!856826))

(assert (= (and b!856826 res!582113) b!856831))

(assert (= (and b!856831 res!582110) b!856835))

(assert (= (and b!856835 res!582115) b!856825))

(assert (= (and b!856825 res!582116) b!856828))

(assert (= (and b!856828 res!582112) b!856834))

(assert (= (and b!856834 res!582111) b!856832))

(assert (= (and b!856832 res!582114) b!856833))

(assert (= (and b!856824 condMapEmpty!26291) mapIsEmpty!26291))

(assert (= (and b!856824 (not condMapEmpty!26291)) mapNonEmpty!26291))

(get-info :version)

(assert (= (and mapNonEmpty!26291 ((_ is ValueCellFull!7791) mapValue!26291)) b!856829))

(assert (= (and b!856824 ((_ is ValueCellFull!7791) mapDefault!26291)) b!856827))

(assert (= start!73438 b!856824))

(declare-fun m!797785 () Bool)

(assert (=> b!856831 m!797785))

(declare-fun m!797787 () Bool)

(assert (=> mapNonEmpty!26291 m!797787))

(declare-fun m!797789 () Bool)

(assert (=> b!856830 m!797789))

(declare-fun m!797791 () Bool)

(assert (=> b!856834 m!797791))

(declare-fun m!797793 () Bool)

(assert (=> b!856832 m!797793))

(declare-fun m!797795 () Bool)

(assert (=> b!856832 m!797795))

(declare-fun m!797797 () Bool)

(assert (=> b!856832 m!797797))

(declare-fun m!797799 () Bool)

(assert (=> start!73438 m!797799))

(declare-fun m!797801 () Bool)

(assert (=> start!73438 m!797801))

(declare-fun m!797803 () Bool)

(assert (=> b!856833 m!797803))

(declare-fun m!797805 () Bool)

(assert (=> b!856833 m!797805))

(assert (=> b!856833 m!797805))

(declare-fun m!797807 () Bool)

(assert (=> b!856833 m!797807))

(declare-fun m!797809 () Bool)

(assert (=> b!856833 m!797809))

(declare-fun m!797811 () Bool)

(assert (=> b!856828 m!797811))

(declare-fun m!797813 () Bool)

(assert (=> b!856835 m!797813))

(check-sat (not b!856833) b_and!23699 (not start!73438) (not b_next!14325) (not mapNonEmpty!26291) (not b!856835) (not b!856832) (not b!856830) tp_is_empty!16461 (not b!856831) (not b!856828))
(check-sat b_and!23699 (not b_next!14325))
