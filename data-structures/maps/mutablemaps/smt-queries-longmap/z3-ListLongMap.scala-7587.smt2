; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95880 () Bool)

(assert start!95880)

(declare-fun b_free!22497 () Bool)

(declare-fun b_next!22497 () Bool)

(assert (=> start!95880 (= b_free!22497 (not b_next!22497))))

(declare-fun tp!79341 () Bool)

(declare-fun b_and!35687 () Bool)

(assert (=> start!95880 (= tp!79341 b_and!35687)))

(declare-fun b!1084620 () Bool)

(declare-fun res!723180 () Bool)

(declare-fun e!619674 () Bool)

(assert (=> b!1084620 (=> (not res!723180) (not e!619674))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1084620 (= res!723180 (validKeyInArray!0 k0!904))))

(declare-fun b!1084621 () Bool)

(declare-fun res!723191 () Bool)

(assert (=> b!1084621 (=> (not res!723191) (not e!619674))))

(declare-datatypes ((array!69900 0))(
  ( (array!69901 (arr!33620 (Array (_ BitVec 32) (_ BitVec 64))) (size!34157 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69900)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69900 (_ BitVec 32)) Bool)

(assert (=> b!1084621 (= res!723191 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1084622 () Bool)

(declare-fun e!619680 () Bool)

(declare-fun tp_is_empty!26499 () Bool)

(assert (=> b!1084622 (= e!619680 tp_is_empty!26499)))

(declare-fun b!1084623 () Bool)

(declare-fun res!723181 () Bool)

(assert (=> b!1084623 (=> (not res!723181) (not e!619674))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1084623 (= res!723181 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34157 _keys!1070))))))

(declare-fun b!1084624 () Bool)

(declare-fun res!723183 () Bool)

(assert (=> b!1084624 (=> (not res!723183) (not e!619674))))

(assert (=> b!1084624 (= res!723183 (= (select (arr!33620 _keys!1070) i!650) k0!904))))

(declare-fun b!1084625 () Bool)

(declare-fun e!619678 () Bool)

(declare-fun e!619679 () Bool)

(assert (=> b!1084625 (= e!619678 (not e!619679))))

(declare-fun res!723182 () Bool)

(assert (=> b!1084625 (=> res!723182 e!619679)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1084625 (= res!723182 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40459 0))(
  ( (V!40460 (val!13306 Int)) )
))
(declare-fun minValue!831 () V!40459)

(declare-datatypes ((tuple2!16928 0))(
  ( (tuple2!16929 (_1!8474 (_ BitVec 64)) (_2!8474 V!40459)) )
))
(declare-datatypes ((List!23570 0))(
  ( (Nil!23567) (Cons!23566 (h!24775 tuple2!16928) (t!33132 List!23570)) )
))
(declare-datatypes ((ListLongMap!14909 0))(
  ( (ListLongMap!14910 (toList!7470 List!23570)) )
))
(declare-fun lt!480814 () ListLongMap!14909)

(declare-fun zeroValue!831 () V!40459)

(declare-datatypes ((ValueCell!12540 0))(
  ( (ValueCellFull!12540 (v!15928 V!40459)) (EmptyCell!12540) )
))
(declare-datatypes ((array!69902 0))(
  ( (array!69903 (arr!33621 (Array (_ BitVec 32) ValueCell!12540)) (size!34158 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69902)

(declare-fun getCurrentListMap!4228 (array!69900 array!69902 (_ BitVec 32) (_ BitVec 32) V!40459 V!40459 (_ BitVec 32) Int) ListLongMap!14909)

(assert (=> b!1084625 (= lt!480814 (getCurrentListMap!4228 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480822 () array!69902)

(declare-fun lt!480823 () array!69900)

(declare-fun lt!480821 () ListLongMap!14909)

(assert (=> b!1084625 (= lt!480821 (getCurrentListMap!4228 lt!480823 lt!480822 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480817 () ListLongMap!14909)

(declare-fun lt!480816 () ListLongMap!14909)

(assert (=> b!1084625 (and (= lt!480817 lt!480816) (= lt!480816 lt!480817))))

(declare-fun lt!480818 () ListLongMap!14909)

(declare-fun -!751 (ListLongMap!14909 (_ BitVec 64)) ListLongMap!14909)

(assert (=> b!1084625 (= lt!480816 (-!751 lt!480818 k0!904))))

(declare-datatypes ((Unit!35617 0))(
  ( (Unit!35618) )
))
(declare-fun lt!480824 () Unit!35617)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!34 (array!69900 array!69902 (_ BitVec 32) (_ BitVec 32) V!40459 V!40459 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35617)

(assert (=> b!1084625 (= lt!480824 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!34 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3980 (array!69900 array!69902 (_ BitVec 32) (_ BitVec 32) V!40459 V!40459 (_ BitVec 32) Int) ListLongMap!14909)

(assert (=> b!1084625 (= lt!480817 (getCurrentListMapNoExtraKeys!3980 lt!480823 lt!480822 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2116 (Int (_ BitVec 64)) V!40459)

(assert (=> b!1084625 (= lt!480822 (array!69903 (store (arr!33621 _values!874) i!650 (ValueCellFull!12540 (dynLambda!2116 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34158 _values!874)))))

(assert (=> b!1084625 (= lt!480818 (getCurrentListMapNoExtraKeys!3980 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69900 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1084625 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!480820 () Unit!35617)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69900 (_ BitVec 64) (_ BitVec 32)) Unit!35617)

(assert (=> b!1084625 (= lt!480820 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1084626 () Bool)

(declare-fun e!619676 () Bool)

(declare-fun mapRes!41503 () Bool)

(assert (=> b!1084626 (= e!619676 (and e!619680 mapRes!41503))))

(declare-fun condMapEmpty!41503 () Bool)

(declare-fun mapDefault!41503 () ValueCell!12540)

(assert (=> b!1084626 (= condMapEmpty!41503 (= (arr!33621 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12540)) mapDefault!41503)))))

(declare-fun b!1084627 () Bool)

(declare-fun res!723190 () Bool)

(assert (=> b!1084627 (=> (not res!723190) (not e!619674))))

(declare-datatypes ((List!23571 0))(
  ( (Nil!23568) (Cons!23567 (h!24776 (_ BitVec 64)) (t!33133 List!23571)) )
))
(declare-fun arrayNoDuplicates!0 (array!69900 (_ BitVec 32) List!23571) Bool)

(assert (=> b!1084627 (= res!723190 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23568))))

(declare-fun res!723184 () Bool)

(assert (=> start!95880 (=> (not res!723184) (not e!619674))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95880 (= res!723184 (validMask!0 mask!1414))))

(assert (=> start!95880 e!619674))

(assert (=> start!95880 tp!79341))

(assert (=> start!95880 true))

(assert (=> start!95880 tp_is_empty!26499))

(declare-fun array_inv!25798 (array!69900) Bool)

(assert (=> start!95880 (array_inv!25798 _keys!1070)))

(declare-fun array_inv!25799 (array!69902) Bool)

(assert (=> start!95880 (and (array_inv!25799 _values!874) e!619676)))

(declare-fun b!1084628 () Bool)

(assert (=> b!1084628 (= e!619679 true)))

(declare-fun e!619681 () Bool)

(assert (=> b!1084628 e!619681))

(declare-fun res!723189 () Bool)

(assert (=> b!1084628 (=> (not res!723189) (not e!619681))))

(declare-fun lt!480815 () tuple2!16928)

(declare-fun lt!480819 () tuple2!16928)

(declare-fun +!3203 (ListLongMap!14909 tuple2!16928) ListLongMap!14909)

(assert (=> b!1084628 (= res!723189 (= lt!480821 (+!3203 (+!3203 lt!480817 lt!480819) lt!480815)))))

(assert (=> b!1084628 (= lt!480815 (tuple2!16929 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1084628 (= lt!480819 (tuple2!16929 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1084629 () Bool)

(declare-fun res!723185 () Bool)

(assert (=> b!1084629 (=> (not res!723185) (not e!619678))))

(assert (=> b!1084629 (= res!723185 (arrayNoDuplicates!0 lt!480823 #b00000000000000000000000000000000 Nil!23568))))

(declare-fun b!1084630 () Bool)

(declare-fun res!723188 () Bool)

(assert (=> b!1084630 (=> (not res!723188) (not e!619674))))

(assert (=> b!1084630 (= res!723188 (and (= (size!34158 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34157 _keys!1070) (size!34158 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1084631 () Bool)

(assert (=> b!1084631 (= e!619681 (= lt!480821 (+!3203 (+!3203 lt!480816 lt!480819) lt!480815)))))

(declare-fun mapNonEmpty!41503 () Bool)

(declare-fun tp!79340 () Bool)

(declare-fun e!619675 () Bool)

(assert (=> mapNonEmpty!41503 (= mapRes!41503 (and tp!79340 e!619675))))

(declare-fun mapKey!41503 () (_ BitVec 32))

(declare-fun mapValue!41503 () ValueCell!12540)

(declare-fun mapRest!41503 () (Array (_ BitVec 32) ValueCell!12540))

(assert (=> mapNonEmpty!41503 (= (arr!33621 _values!874) (store mapRest!41503 mapKey!41503 mapValue!41503))))

(declare-fun b!1084632 () Bool)

(declare-fun res!723187 () Bool)

(assert (=> b!1084632 (=> (not res!723187) (not e!619681))))

(assert (=> b!1084632 (= res!723187 (= lt!480814 (+!3203 (+!3203 lt!480818 lt!480819) lt!480815)))))

(declare-fun b!1084633 () Bool)

(assert (=> b!1084633 (= e!619674 e!619678)))

(declare-fun res!723186 () Bool)

(assert (=> b!1084633 (=> (not res!723186) (not e!619678))))

(assert (=> b!1084633 (= res!723186 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480823 mask!1414))))

(assert (=> b!1084633 (= lt!480823 (array!69901 (store (arr!33620 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34157 _keys!1070)))))

(declare-fun b!1084634 () Bool)

(assert (=> b!1084634 (= e!619675 tp_is_empty!26499)))

(declare-fun mapIsEmpty!41503 () Bool)

(assert (=> mapIsEmpty!41503 mapRes!41503))

(assert (= (and start!95880 res!723184) b!1084630))

(assert (= (and b!1084630 res!723188) b!1084621))

(assert (= (and b!1084621 res!723191) b!1084627))

(assert (= (and b!1084627 res!723190) b!1084623))

(assert (= (and b!1084623 res!723181) b!1084620))

(assert (= (and b!1084620 res!723180) b!1084624))

(assert (= (and b!1084624 res!723183) b!1084633))

(assert (= (and b!1084633 res!723186) b!1084629))

(assert (= (and b!1084629 res!723185) b!1084625))

(assert (= (and b!1084625 (not res!723182)) b!1084628))

(assert (= (and b!1084628 res!723189) b!1084632))

(assert (= (and b!1084632 res!723187) b!1084631))

(assert (= (and b!1084626 condMapEmpty!41503) mapIsEmpty!41503))

(assert (= (and b!1084626 (not condMapEmpty!41503)) mapNonEmpty!41503))

(get-info :version)

(assert (= (and mapNonEmpty!41503 ((_ is ValueCellFull!12540) mapValue!41503)) b!1084634))

(assert (= (and b!1084626 ((_ is ValueCellFull!12540) mapDefault!41503)) b!1084622))

(assert (= start!95880 b!1084626))

(declare-fun b_lambda!17197 () Bool)

(assert (=> (not b_lambda!17197) (not b!1084625)))

(declare-fun t!33131 () Bool)

(declare-fun tb!7383 () Bool)

(assert (=> (and start!95880 (= defaultEntry!882 defaultEntry!882) t!33131) tb!7383))

(declare-fun result!15277 () Bool)

(assert (=> tb!7383 (= result!15277 tp_is_empty!26499)))

(assert (=> b!1084625 t!33131))

(declare-fun b_and!35689 () Bool)

(assert (= b_and!35687 (and (=> t!33131 result!15277) b_and!35689)))

(declare-fun m!1002483 () Bool)

(assert (=> b!1084629 m!1002483))

(declare-fun m!1002485 () Bool)

(assert (=> b!1084620 m!1002485))

(declare-fun m!1002487 () Bool)

(assert (=> b!1084627 m!1002487))

(declare-fun m!1002489 () Bool)

(assert (=> b!1084625 m!1002489))

(declare-fun m!1002491 () Bool)

(assert (=> b!1084625 m!1002491))

(declare-fun m!1002493 () Bool)

(assert (=> b!1084625 m!1002493))

(declare-fun m!1002495 () Bool)

(assert (=> b!1084625 m!1002495))

(declare-fun m!1002497 () Bool)

(assert (=> b!1084625 m!1002497))

(declare-fun m!1002499 () Bool)

(assert (=> b!1084625 m!1002499))

(declare-fun m!1002501 () Bool)

(assert (=> b!1084625 m!1002501))

(declare-fun m!1002503 () Bool)

(assert (=> b!1084625 m!1002503))

(declare-fun m!1002505 () Bool)

(assert (=> b!1084625 m!1002505))

(declare-fun m!1002507 () Bool)

(assert (=> b!1084625 m!1002507))

(declare-fun m!1002509 () Bool)

(assert (=> b!1084624 m!1002509))

(declare-fun m!1002511 () Bool)

(assert (=> b!1084621 m!1002511))

(declare-fun m!1002513 () Bool)

(assert (=> b!1084632 m!1002513))

(assert (=> b!1084632 m!1002513))

(declare-fun m!1002515 () Bool)

(assert (=> b!1084632 m!1002515))

(declare-fun m!1002517 () Bool)

(assert (=> b!1084633 m!1002517))

(declare-fun m!1002519 () Bool)

(assert (=> b!1084633 m!1002519))

(declare-fun m!1002521 () Bool)

(assert (=> start!95880 m!1002521))

(declare-fun m!1002523 () Bool)

(assert (=> start!95880 m!1002523))

(declare-fun m!1002525 () Bool)

(assert (=> start!95880 m!1002525))

(declare-fun m!1002527 () Bool)

(assert (=> b!1084628 m!1002527))

(assert (=> b!1084628 m!1002527))

(declare-fun m!1002529 () Bool)

(assert (=> b!1084628 m!1002529))

(declare-fun m!1002531 () Bool)

(assert (=> b!1084631 m!1002531))

(assert (=> b!1084631 m!1002531))

(declare-fun m!1002533 () Bool)

(assert (=> b!1084631 m!1002533))

(declare-fun m!1002535 () Bool)

(assert (=> mapNonEmpty!41503 m!1002535))

(check-sat (not b_next!22497) (not start!95880) (not b!1084620) (not b!1084632) (not b!1084628) tp_is_empty!26499 (not b!1084627) (not b_lambda!17197) (not b!1084629) (not mapNonEmpty!41503) (not b!1084633) (not b!1084621) b_and!35689 (not b!1084625) (not b!1084631))
(check-sat b_and!35689 (not b_next!22497))
