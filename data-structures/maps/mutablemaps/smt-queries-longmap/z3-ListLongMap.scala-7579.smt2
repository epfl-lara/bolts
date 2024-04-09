; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95832 () Bool)

(assert start!95832)

(declare-fun b_free!22449 () Bool)

(declare-fun b_next!22449 () Bool)

(assert (=> start!95832 (= b_free!22449 (not b_next!22449))))

(declare-fun tp!79197 () Bool)

(declare-fun b_and!35591 () Bool)

(assert (=> start!95832 (= tp!79197 b_and!35591)))

(declare-fun b!1083693 () Bool)

(declare-fun e!619232 () Bool)

(declare-fun tp_is_empty!26451 () Bool)

(assert (=> b!1083693 (= e!619232 tp_is_empty!26451)))

(declare-fun b!1083694 () Bool)

(declare-fun res!722520 () Bool)

(declare-fun e!619237 () Bool)

(assert (=> b!1083694 (=> (not res!722520) (not e!619237))))

(declare-datatypes ((array!69804 0))(
  ( (array!69805 (arr!33572 (Array (_ BitVec 32) (_ BitVec 64))) (size!34109 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69804)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69804 (_ BitVec 32)) Bool)

(assert (=> b!1083694 (= res!722520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1083696 () Bool)

(declare-fun res!722524 () Bool)

(assert (=> b!1083696 (=> (not res!722524) (not e!619237))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40395 0))(
  ( (V!40396 (val!13282 Int)) )
))
(declare-datatypes ((ValueCell!12516 0))(
  ( (ValueCellFull!12516 (v!15904 V!40395)) (EmptyCell!12516) )
))
(declare-datatypes ((array!69806 0))(
  ( (array!69807 (arr!33573 (Array (_ BitVec 32) ValueCell!12516)) (size!34110 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69806)

(assert (=> b!1083696 (= res!722524 (and (= (size!34110 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34109 _keys!1070) (size!34110 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1083697 () Bool)

(declare-fun e!619236 () Bool)

(assert (=> b!1083697 (= e!619237 e!619236)))

(declare-fun res!722525 () Bool)

(assert (=> b!1083697 (=> (not res!722525) (not e!619236))))

(declare-fun lt!480228 () array!69804)

(assert (=> b!1083697 (= res!722525 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480228 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1083697 (= lt!480228 (array!69805 (store (arr!33572 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34109 _keys!1070)))))

(declare-fun b!1083698 () Bool)

(declare-fun res!722521 () Bool)

(assert (=> b!1083698 (=> (not res!722521) (not e!619237))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1083698 (= res!722521 (= (select (arr!33572 _keys!1070) i!650) k0!904))))

(declare-fun b!1083699 () Bool)

(assert (=> b!1083699 (= e!619236 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40395)

(declare-fun lt!480227 () array!69806)

(declare-datatypes ((tuple2!16896 0))(
  ( (tuple2!16897 (_1!8458 (_ BitVec 64)) (_2!8458 V!40395)) )
))
(declare-datatypes ((List!23535 0))(
  ( (Nil!23532) (Cons!23531 (h!24740 tuple2!16896) (t!33049 List!23535)) )
))
(declare-datatypes ((ListLongMap!14877 0))(
  ( (ListLongMap!14878 (toList!7454 List!23535)) )
))
(declare-fun lt!480229 () ListLongMap!14877)

(declare-fun zeroValue!831 () V!40395)

(declare-fun getCurrentListMap!4213 (array!69804 array!69806 (_ BitVec 32) (_ BitVec 32) V!40395 V!40395 (_ BitVec 32) Int) ListLongMap!14877)

(assert (=> b!1083699 (= lt!480229 (getCurrentListMap!4213 lt!480228 lt!480227 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480223 () ListLongMap!14877)

(declare-fun lt!480224 () ListLongMap!14877)

(assert (=> b!1083699 (and (= lt!480223 lt!480224) (= lt!480224 lt!480223))))

(declare-fun lt!480225 () ListLongMap!14877)

(declare-fun -!736 (ListLongMap!14877 (_ BitVec 64)) ListLongMap!14877)

(assert (=> b!1083699 (= lt!480224 (-!736 lt!480225 k0!904))))

(declare-datatypes ((Unit!35587 0))(
  ( (Unit!35588) )
))
(declare-fun lt!480230 () Unit!35587)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!19 (array!69804 array!69806 (_ BitVec 32) (_ BitVec 32) V!40395 V!40395 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35587)

(assert (=> b!1083699 (= lt!480230 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!19 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3965 (array!69804 array!69806 (_ BitVec 32) (_ BitVec 32) V!40395 V!40395 (_ BitVec 32) Int) ListLongMap!14877)

(assert (=> b!1083699 (= lt!480223 (getCurrentListMapNoExtraKeys!3965 lt!480228 lt!480227 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2101 (Int (_ BitVec 64)) V!40395)

(assert (=> b!1083699 (= lt!480227 (array!69807 (store (arr!33573 _values!874) i!650 (ValueCellFull!12516 (dynLambda!2101 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34110 _values!874)))))

(assert (=> b!1083699 (= lt!480225 (getCurrentListMapNoExtraKeys!3965 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69804 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1083699 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!480226 () Unit!35587)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69804 (_ BitVec 64) (_ BitVec 32)) Unit!35587)

(assert (=> b!1083699 (= lt!480226 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapNonEmpty!41431 () Bool)

(declare-fun mapRes!41431 () Bool)

(declare-fun tp!79196 () Bool)

(declare-fun e!619234 () Bool)

(assert (=> mapNonEmpty!41431 (= mapRes!41431 (and tp!79196 e!619234))))

(declare-fun mapValue!41431 () ValueCell!12516)

(declare-fun mapKey!41431 () (_ BitVec 32))

(declare-fun mapRest!41431 () (Array (_ BitVec 32) ValueCell!12516))

(assert (=> mapNonEmpty!41431 (= (arr!33573 _values!874) (store mapRest!41431 mapKey!41431 mapValue!41431))))

(declare-fun b!1083700 () Bool)

(declare-fun res!722517 () Bool)

(assert (=> b!1083700 (=> (not res!722517) (not e!619237))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1083700 (= res!722517 (validKeyInArray!0 k0!904))))

(declare-fun b!1083701 () Bool)

(declare-fun res!722522 () Bool)

(assert (=> b!1083701 (=> (not res!722522) (not e!619237))))

(assert (=> b!1083701 (= res!722522 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34109 _keys!1070))))))

(declare-fun b!1083702 () Bool)

(declare-fun res!722519 () Bool)

(assert (=> b!1083702 (=> (not res!722519) (not e!619236))))

(declare-datatypes ((List!23536 0))(
  ( (Nil!23533) (Cons!23532 (h!24741 (_ BitVec 64)) (t!33050 List!23536)) )
))
(declare-fun arrayNoDuplicates!0 (array!69804 (_ BitVec 32) List!23536) Bool)

(assert (=> b!1083702 (= res!722519 (arrayNoDuplicates!0 lt!480228 #b00000000000000000000000000000000 Nil!23533))))

(declare-fun b!1083695 () Bool)

(declare-fun e!619235 () Bool)

(assert (=> b!1083695 (= e!619235 (and e!619232 mapRes!41431))))

(declare-fun condMapEmpty!41431 () Bool)

(declare-fun mapDefault!41431 () ValueCell!12516)

(assert (=> b!1083695 (= condMapEmpty!41431 (= (arr!33573 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12516)) mapDefault!41431)))))

(declare-fun res!722523 () Bool)

(assert (=> start!95832 (=> (not res!722523) (not e!619237))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95832 (= res!722523 (validMask!0 mask!1414))))

(assert (=> start!95832 e!619237))

(assert (=> start!95832 tp!79197))

(assert (=> start!95832 true))

(assert (=> start!95832 tp_is_empty!26451))

(declare-fun array_inv!25764 (array!69804) Bool)

(assert (=> start!95832 (array_inv!25764 _keys!1070)))

(declare-fun array_inv!25765 (array!69806) Bool)

(assert (=> start!95832 (and (array_inv!25765 _values!874) e!619235)))

(declare-fun b!1083703 () Bool)

(declare-fun res!722518 () Bool)

(assert (=> b!1083703 (=> (not res!722518) (not e!619237))))

(assert (=> b!1083703 (= res!722518 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23533))))

(declare-fun mapIsEmpty!41431 () Bool)

(assert (=> mapIsEmpty!41431 mapRes!41431))

(declare-fun b!1083704 () Bool)

(assert (=> b!1083704 (= e!619234 tp_is_empty!26451)))

(assert (= (and start!95832 res!722523) b!1083696))

(assert (= (and b!1083696 res!722524) b!1083694))

(assert (= (and b!1083694 res!722520) b!1083703))

(assert (= (and b!1083703 res!722518) b!1083701))

(assert (= (and b!1083701 res!722522) b!1083700))

(assert (= (and b!1083700 res!722517) b!1083698))

(assert (= (and b!1083698 res!722521) b!1083697))

(assert (= (and b!1083697 res!722525) b!1083702))

(assert (= (and b!1083702 res!722519) b!1083699))

(assert (= (and b!1083695 condMapEmpty!41431) mapIsEmpty!41431))

(assert (= (and b!1083695 (not condMapEmpty!41431)) mapNonEmpty!41431))

(get-info :version)

(assert (= (and mapNonEmpty!41431 ((_ is ValueCellFull!12516) mapValue!41431)) b!1083704))

(assert (= (and b!1083695 ((_ is ValueCellFull!12516) mapDefault!41431)) b!1083693))

(assert (= start!95832 b!1083695))

(declare-fun b_lambda!17149 () Bool)

(assert (=> (not b_lambda!17149) (not b!1083699)))

(declare-fun t!33048 () Bool)

(declare-fun tb!7335 () Bool)

(assert (=> (and start!95832 (= defaultEntry!882 defaultEntry!882) t!33048) tb!7335))

(declare-fun result!15181 () Bool)

(assert (=> tb!7335 (= result!15181 tp_is_empty!26451)))

(assert (=> b!1083699 t!33048))

(declare-fun b_and!35593 () Bool)

(assert (= b_and!35591 (and (=> t!33048 result!15181) b_and!35593)))

(declare-fun m!1001509 () Bool)

(assert (=> b!1083697 m!1001509))

(declare-fun m!1001511 () Bool)

(assert (=> b!1083697 m!1001511))

(declare-fun m!1001513 () Bool)

(assert (=> b!1083699 m!1001513))

(declare-fun m!1001515 () Bool)

(assert (=> b!1083699 m!1001515))

(declare-fun m!1001517 () Bool)

(assert (=> b!1083699 m!1001517))

(declare-fun m!1001519 () Bool)

(assert (=> b!1083699 m!1001519))

(declare-fun m!1001521 () Bool)

(assert (=> b!1083699 m!1001521))

(declare-fun m!1001523 () Bool)

(assert (=> b!1083699 m!1001523))

(declare-fun m!1001525 () Bool)

(assert (=> b!1083699 m!1001525))

(declare-fun m!1001527 () Bool)

(assert (=> b!1083699 m!1001527))

(declare-fun m!1001529 () Bool)

(assert (=> b!1083699 m!1001529))

(declare-fun m!1001531 () Bool)

(assert (=> mapNonEmpty!41431 m!1001531))

(declare-fun m!1001533 () Bool)

(assert (=> start!95832 m!1001533))

(declare-fun m!1001535 () Bool)

(assert (=> start!95832 m!1001535))

(declare-fun m!1001537 () Bool)

(assert (=> start!95832 m!1001537))

(declare-fun m!1001539 () Bool)

(assert (=> b!1083694 m!1001539))

(declare-fun m!1001541 () Bool)

(assert (=> b!1083698 m!1001541))

(declare-fun m!1001543 () Bool)

(assert (=> b!1083702 m!1001543))

(declare-fun m!1001545 () Bool)

(assert (=> b!1083703 m!1001545))

(declare-fun m!1001547 () Bool)

(assert (=> b!1083700 m!1001547))

(check-sat tp_is_empty!26451 (not b!1083699) (not b_lambda!17149) (not mapNonEmpty!41431) (not b_next!22449) b_and!35593 (not b!1083694) (not b!1083700) (not start!95832) (not b!1083702) (not b!1083703) (not b!1083697))
(check-sat b_and!35593 (not b_next!22449))
