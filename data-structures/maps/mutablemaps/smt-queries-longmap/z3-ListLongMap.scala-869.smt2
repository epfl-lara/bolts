; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20324 () Bool)

(assert start!20324)

(declare-fun b_free!4971 () Bool)

(declare-fun b_next!4971 () Bool)

(assert (=> start!20324 (= b_free!4971 (not b_next!4971))))

(declare-fun tp!17944 () Bool)

(declare-fun b_and!11735 () Bool)

(assert (=> start!20324 (= tp!17944 b_and!11735)))

(declare-fun b!200070 () Bool)

(declare-fun res!95259 () Bool)

(declare-fun e!131243 () Bool)

(assert (=> b!200070 (=> (not res!95259) (not e!131243))))

(declare-datatypes ((array!8888 0))(
  ( (array!8889 (arr!4194 (Array (_ BitVec 32) (_ BitVec 64))) (size!4519 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8888)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6083 0))(
  ( (V!6084 (val!2458 Int)) )
))
(declare-datatypes ((ValueCell!2070 0))(
  ( (ValueCellFull!2070 (v!4424 V!6083)) (EmptyCell!2070) )
))
(declare-datatypes ((array!8890 0))(
  ( (array!8891 (arr!4195 (Array (_ BitVec 32) ValueCell!2070)) (size!4520 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8890)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!200070 (= res!95259 (and (= (size!4520 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4519 _keys!825) (size!4520 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!8309 () Bool)

(declare-fun mapRes!8309 () Bool)

(assert (=> mapIsEmpty!8309 mapRes!8309))

(declare-fun b!200071 () Bool)

(assert (=> b!200071 (= e!131243 (not (bvsle #b00000000000000000000000000000000 (size!4519 _keys!825))))))

(declare-fun lt!98744 () array!8890)

(declare-datatypes ((tuple2!3710 0))(
  ( (tuple2!3711 (_1!1865 (_ BitVec 64)) (_2!1865 V!6083)) )
))
(declare-datatypes ((List!2651 0))(
  ( (Nil!2648) (Cons!2647 (h!3289 tuple2!3710) (t!7590 List!2651)) )
))
(declare-datatypes ((ListLongMap!2637 0))(
  ( (ListLongMap!2638 (toList!1334 List!2651)) )
))
(declare-fun lt!98746 () ListLongMap!2637)

(declare-fun zeroValue!615 () V!6083)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6083)

(declare-fun getCurrentListMap!920 (array!8888 array!8890 (_ BitVec 32) (_ BitVec 32) V!6083 V!6083 (_ BitVec 32) Int) ListLongMap!2637)

(assert (=> b!200071 (= lt!98746 (getCurrentListMap!920 _keys!825 lt!98744 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!98747 () ListLongMap!2637)

(declare-fun lt!98749 () ListLongMap!2637)

(assert (=> b!200071 (and (= lt!98747 lt!98749) (= lt!98749 lt!98747))))

(declare-fun lt!98745 () ListLongMap!2637)

(declare-fun v!520 () V!6083)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun +!351 (ListLongMap!2637 tuple2!3710) ListLongMap!2637)

(assert (=> b!200071 (= lt!98749 (+!351 lt!98745 (tuple2!3711 k0!843 v!520)))))

(declare-datatypes ((Unit!6011 0))(
  ( (Unit!6012) )
))
(declare-fun lt!98748 () Unit!6011)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!33 (array!8888 array!8890 (_ BitVec 32) (_ BitVec 32) V!6083 V!6083 (_ BitVec 32) (_ BitVec 64) V!6083 (_ BitVec 32) Int) Unit!6011)

(assert (=> b!200071 (= lt!98748 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!33 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!291 (array!8888 array!8890 (_ BitVec 32) (_ BitVec 32) V!6083 V!6083 (_ BitVec 32) Int) ListLongMap!2637)

(assert (=> b!200071 (= lt!98747 (getCurrentListMapNoExtraKeys!291 _keys!825 lt!98744 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200071 (= lt!98744 (array!8891 (store (arr!4195 _values!649) i!601 (ValueCellFull!2070 v!520)) (size!4520 _values!649)))))

(assert (=> b!200071 (= lt!98745 (getCurrentListMapNoExtraKeys!291 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!200072 () Bool)

(declare-fun e!131241 () Bool)

(declare-fun tp_is_empty!4827 () Bool)

(assert (=> b!200072 (= e!131241 tp_is_empty!4827)))

(declare-fun b!200073 () Bool)

(declare-fun res!95254 () Bool)

(assert (=> b!200073 (=> (not res!95254) (not e!131243))))

(declare-datatypes ((List!2652 0))(
  ( (Nil!2649) (Cons!2648 (h!3290 (_ BitVec 64)) (t!7591 List!2652)) )
))
(declare-fun arrayNoDuplicates!0 (array!8888 (_ BitVec 32) List!2652) Bool)

(assert (=> b!200073 (= res!95254 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2649))))

(declare-fun b!200074 () Bool)

(declare-fun e!131245 () Bool)

(assert (=> b!200074 (= e!131245 (and e!131241 mapRes!8309))))

(declare-fun condMapEmpty!8309 () Bool)

(declare-fun mapDefault!8309 () ValueCell!2070)

(assert (=> b!200074 (= condMapEmpty!8309 (= (arr!4195 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2070)) mapDefault!8309)))))

(declare-fun mapNonEmpty!8309 () Bool)

(declare-fun tp!17945 () Bool)

(declare-fun e!131242 () Bool)

(assert (=> mapNonEmpty!8309 (= mapRes!8309 (and tp!17945 e!131242))))

(declare-fun mapRest!8309 () (Array (_ BitVec 32) ValueCell!2070))

(declare-fun mapKey!8309 () (_ BitVec 32))

(declare-fun mapValue!8309 () ValueCell!2070)

(assert (=> mapNonEmpty!8309 (= (arr!4195 _values!649) (store mapRest!8309 mapKey!8309 mapValue!8309))))

(declare-fun res!95257 () Bool)

(assert (=> start!20324 (=> (not res!95257) (not e!131243))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20324 (= res!95257 (validMask!0 mask!1149))))

(assert (=> start!20324 e!131243))

(declare-fun array_inv!2751 (array!8890) Bool)

(assert (=> start!20324 (and (array_inv!2751 _values!649) e!131245)))

(assert (=> start!20324 true))

(assert (=> start!20324 tp_is_empty!4827))

(declare-fun array_inv!2752 (array!8888) Bool)

(assert (=> start!20324 (array_inv!2752 _keys!825)))

(assert (=> start!20324 tp!17944))

(declare-fun b!200075 () Bool)

(declare-fun res!95260 () Bool)

(assert (=> b!200075 (=> (not res!95260) (not e!131243))))

(assert (=> b!200075 (= res!95260 (= (select (arr!4194 _keys!825) i!601) k0!843))))

(declare-fun b!200076 () Bool)

(declare-fun res!95258 () Bool)

(assert (=> b!200076 (=> (not res!95258) (not e!131243))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!200076 (= res!95258 (validKeyInArray!0 k0!843))))

(declare-fun b!200077 () Bool)

(declare-fun res!95255 () Bool)

(assert (=> b!200077 (=> (not res!95255) (not e!131243))))

(assert (=> b!200077 (= res!95255 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4519 _keys!825))))))

(declare-fun b!200078 () Bool)

(assert (=> b!200078 (= e!131242 tp_is_empty!4827)))

(declare-fun b!200079 () Bool)

(declare-fun res!95256 () Bool)

(assert (=> b!200079 (=> (not res!95256) (not e!131243))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8888 (_ BitVec 32)) Bool)

(assert (=> b!200079 (= res!95256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(assert (= (and start!20324 res!95257) b!200070))

(assert (= (and b!200070 res!95259) b!200079))

(assert (= (and b!200079 res!95256) b!200073))

(assert (= (and b!200073 res!95254) b!200077))

(assert (= (and b!200077 res!95255) b!200076))

(assert (= (and b!200076 res!95258) b!200075))

(assert (= (and b!200075 res!95260) b!200071))

(assert (= (and b!200074 condMapEmpty!8309) mapIsEmpty!8309))

(assert (= (and b!200074 (not condMapEmpty!8309)) mapNonEmpty!8309))

(get-info :version)

(assert (= (and mapNonEmpty!8309 ((_ is ValueCellFull!2070) mapValue!8309)) b!200078))

(assert (= (and b!200074 ((_ is ValueCellFull!2070) mapDefault!8309)) b!200072))

(assert (= start!20324 b!200074))

(declare-fun m!226513 () Bool)

(assert (=> b!200076 m!226513))

(declare-fun m!226515 () Bool)

(assert (=> b!200075 m!226515))

(declare-fun m!226517 () Bool)

(assert (=> b!200073 m!226517))

(declare-fun m!226519 () Bool)

(assert (=> start!20324 m!226519))

(declare-fun m!226521 () Bool)

(assert (=> start!20324 m!226521))

(declare-fun m!226523 () Bool)

(assert (=> start!20324 m!226523))

(declare-fun m!226525 () Bool)

(assert (=> b!200079 m!226525))

(declare-fun m!226527 () Bool)

(assert (=> mapNonEmpty!8309 m!226527))

(declare-fun m!226529 () Bool)

(assert (=> b!200071 m!226529))

(declare-fun m!226531 () Bool)

(assert (=> b!200071 m!226531))

(declare-fun m!226533 () Bool)

(assert (=> b!200071 m!226533))

(declare-fun m!226535 () Bool)

(assert (=> b!200071 m!226535))

(declare-fun m!226537 () Bool)

(assert (=> b!200071 m!226537))

(declare-fun m!226539 () Bool)

(assert (=> b!200071 m!226539))

(check-sat (not b!200076) b_and!11735 (not b!200071) (not b!200073) tp_is_empty!4827 (not start!20324) (not b_next!4971) (not b!200079) (not mapNonEmpty!8309))
(check-sat b_and!11735 (not b_next!4971))
