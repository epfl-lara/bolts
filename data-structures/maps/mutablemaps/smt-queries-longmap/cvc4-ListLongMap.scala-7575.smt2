; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95810 () Bool)

(assert start!95810)

(declare-fun b_free!22427 () Bool)

(declare-fun b_next!22427 () Bool)

(assert (=> start!95810 (= b_free!22427 (not b_next!22427))))

(declare-fun tp!79131 () Bool)

(declare-fun b_and!35547 () Bool)

(assert (=> start!95810 (= tp!79131 b_and!35547)))

(declare-fun b!1083275 () Bool)

(declare-fun res!722224 () Bool)

(declare-fun e!619035 () Bool)

(assert (=> b!1083275 (=> (not res!722224) (not e!619035))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69760 0))(
  ( (array!69761 (arr!33550 (Array (_ BitVec 32) (_ BitVec 64))) (size!34087 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69760)

(declare-datatypes ((V!40365 0))(
  ( (V!40366 (val!13271 Int)) )
))
(declare-datatypes ((ValueCell!12505 0))(
  ( (ValueCellFull!12505 (v!15893 V!40365)) (EmptyCell!12505) )
))
(declare-datatypes ((array!69762 0))(
  ( (array!69763 (arr!33551 (Array (_ BitVec 32) ValueCell!12505)) (size!34088 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69762)

(assert (=> b!1083275 (= res!722224 (and (= (size!34088 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34087 _keys!1070) (size!34088 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1083276 () Bool)

(declare-fun res!722228 () Bool)

(assert (=> b!1083276 (=> (not res!722228) (not e!619035))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1083276 (= res!722228 (validKeyInArray!0 k!904))))

(declare-fun b!1083277 () Bool)

(declare-fun res!722221 () Bool)

(assert (=> b!1083277 (=> (not res!722221) (not e!619035))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1083277 (= res!722221 (= (select (arr!33550 _keys!1070) i!650) k!904))))

(declare-fun b!1083278 () Bool)

(declare-fun e!619038 () Bool)

(assert (=> b!1083278 (= e!619035 e!619038)))

(declare-fun res!722225 () Bool)

(assert (=> b!1083278 (=> (not res!722225) (not e!619038))))

(declare-fun lt!479997 () array!69760)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69760 (_ BitVec 32)) Bool)

(assert (=> b!1083278 (= res!722225 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479997 mask!1414))))

(assert (=> b!1083278 (= lt!479997 (array!69761 (store (arr!33550 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34087 _keys!1070)))))

(declare-fun b!1083279 () Bool)

(assert (=> b!1083279 (= e!619038 (not true))))

(declare-datatypes ((tuple2!16884 0))(
  ( (tuple2!16885 (_1!8452 (_ BitVec 64)) (_2!8452 V!40365)) )
))
(declare-datatypes ((List!23520 0))(
  ( (Nil!23517) (Cons!23516 (h!24725 tuple2!16884) (t!33012 List!23520)) )
))
(declare-datatypes ((ListLongMap!14865 0))(
  ( (ListLongMap!14866 (toList!7448 List!23520)) )
))
(declare-fun lt!480001 () ListLongMap!14865)

(declare-fun lt!480002 () ListLongMap!14865)

(assert (=> b!1083279 (and (= lt!480001 lt!480002) (= lt!480002 lt!480001))))

(declare-fun lt!479998 () ListLongMap!14865)

(declare-fun -!730 (ListLongMap!14865 (_ BitVec 64)) ListLongMap!14865)

(assert (=> b!1083279 (= lt!480002 (-!730 lt!479998 k!904))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40365)

(declare-fun zeroValue!831 () V!40365)

(declare-datatypes ((Unit!35575 0))(
  ( (Unit!35576) )
))
(declare-fun lt!479999 () Unit!35575)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!13 (array!69760 array!69762 (_ BitVec 32) (_ BitVec 32) V!40365 V!40365 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35575)

(assert (=> b!1083279 (= lt!479999 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!13 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3959 (array!69760 array!69762 (_ BitVec 32) (_ BitVec 32) V!40365 V!40365 (_ BitVec 32) Int) ListLongMap!14865)

(declare-fun dynLambda!2095 (Int (_ BitVec 64)) V!40365)

(assert (=> b!1083279 (= lt!480001 (getCurrentListMapNoExtraKeys!3959 lt!479997 (array!69763 (store (arr!33551 _values!874) i!650 (ValueCellFull!12505 (dynLambda!2095 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34088 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1083279 (= lt!479998 (getCurrentListMapNoExtraKeys!3959 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69760 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1083279 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!480000 () Unit!35575)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69760 (_ BitVec 64) (_ BitVec 32)) Unit!35575)

(assert (=> b!1083279 (= lt!480000 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun mapNonEmpty!41398 () Bool)

(declare-fun mapRes!41398 () Bool)

(declare-fun tp!79130 () Bool)

(declare-fun e!619039 () Bool)

(assert (=> mapNonEmpty!41398 (= mapRes!41398 (and tp!79130 e!619039))))

(declare-fun mapKey!41398 () (_ BitVec 32))

(declare-fun mapValue!41398 () ValueCell!12505)

(declare-fun mapRest!41398 () (Array (_ BitVec 32) ValueCell!12505))

(assert (=> mapNonEmpty!41398 (= (arr!33551 _values!874) (store mapRest!41398 mapKey!41398 mapValue!41398))))

(declare-fun res!722226 () Bool)

(assert (=> start!95810 (=> (not res!722226) (not e!619035))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95810 (= res!722226 (validMask!0 mask!1414))))

(assert (=> start!95810 e!619035))

(assert (=> start!95810 tp!79131))

(assert (=> start!95810 true))

(declare-fun tp_is_empty!26429 () Bool)

(assert (=> start!95810 tp_is_empty!26429))

(declare-fun array_inv!25748 (array!69760) Bool)

(assert (=> start!95810 (array_inv!25748 _keys!1070)))

(declare-fun e!619034 () Bool)

(declare-fun array_inv!25749 (array!69762) Bool)

(assert (=> start!95810 (and (array_inv!25749 _values!874) e!619034)))

(declare-fun b!1083280 () Bool)

(declare-fun res!722222 () Bool)

(assert (=> b!1083280 (=> (not res!722222) (not e!619038))))

(declare-datatypes ((List!23521 0))(
  ( (Nil!23518) (Cons!23517 (h!24726 (_ BitVec 64)) (t!33013 List!23521)) )
))
(declare-fun arrayNoDuplicates!0 (array!69760 (_ BitVec 32) List!23521) Bool)

(assert (=> b!1083280 (= res!722222 (arrayNoDuplicates!0 lt!479997 #b00000000000000000000000000000000 Nil!23518))))

(declare-fun b!1083281 () Bool)

(declare-fun res!722220 () Bool)

(assert (=> b!1083281 (=> (not res!722220) (not e!619035))))

(assert (=> b!1083281 (= res!722220 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34087 _keys!1070))))))

(declare-fun b!1083282 () Bool)

(declare-fun e!619036 () Bool)

(assert (=> b!1083282 (= e!619036 tp_is_empty!26429)))

(declare-fun b!1083283 () Bool)

(assert (=> b!1083283 (= e!619039 tp_is_empty!26429)))

(declare-fun b!1083284 () Bool)

(declare-fun res!722227 () Bool)

(assert (=> b!1083284 (=> (not res!722227) (not e!619035))))

(assert (=> b!1083284 (= res!722227 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23518))))

(declare-fun b!1083285 () Bool)

(declare-fun res!722223 () Bool)

(assert (=> b!1083285 (=> (not res!722223) (not e!619035))))

(assert (=> b!1083285 (= res!722223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!41398 () Bool)

(assert (=> mapIsEmpty!41398 mapRes!41398))

(declare-fun b!1083286 () Bool)

(assert (=> b!1083286 (= e!619034 (and e!619036 mapRes!41398))))

(declare-fun condMapEmpty!41398 () Bool)

(declare-fun mapDefault!41398 () ValueCell!12505)

