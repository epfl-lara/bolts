; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95840 () Bool)

(assert start!95840)

(declare-fun b_free!22457 () Bool)

(declare-fun b_next!22457 () Bool)

(assert (=> start!95840 (= b_free!22457 (not b_next!22457))))

(declare-fun tp!79220 () Bool)

(declare-fun b_and!35607 () Bool)

(assert (=> start!95840 (= tp!79220 b_and!35607)))

(declare-fun b!1083845 () Bool)

(declare-fun e!619308 () Bool)

(declare-fun tp_is_empty!26459 () Bool)

(assert (=> b!1083845 (= e!619308 tp_is_empty!26459)))

(declare-fun mapIsEmpty!41443 () Bool)

(declare-fun mapRes!41443 () Bool)

(assert (=> mapIsEmpty!41443 mapRes!41443))

(declare-fun b!1083846 () Bool)

(declare-fun e!619306 () Bool)

(declare-fun e!619307 () Bool)

(assert (=> b!1083846 (= e!619306 e!619307)))

(declare-fun res!722629 () Bool)

(assert (=> b!1083846 (=> (not res!722629) (not e!619307))))

(declare-datatypes ((array!69820 0))(
  ( (array!69821 (arr!33580 (Array (_ BitVec 32) (_ BitVec 64))) (size!34117 (_ BitVec 32))) )
))
(declare-fun lt!480324 () array!69820)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69820 (_ BitVec 32)) Bool)

(assert (=> b!1083846 (= res!722629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480324 mask!1414))))

(declare-fun _keys!1070 () array!69820)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1083846 (= lt!480324 (array!69821 (store (arr!33580 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34117 _keys!1070)))))

(declare-fun mapNonEmpty!41443 () Bool)

(declare-fun tp!79221 () Bool)

(assert (=> mapNonEmpty!41443 (= mapRes!41443 (and tp!79221 e!619308))))

(declare-datatypes ((V!40405 0))(
  ( (V!40406 (val!13286 Int)) )
))
(declare-datatypes ((ValueCell!12520 0))(
  ( (ValueCellFull!12520 (v!15908 V!40405)) (EmptyCell!12520) )
))
(declare-datatypes ((array!69822 0))(
  ( (array!69823 (arr!33581 (Array (_ BitVec 32) ValueCell!12520)) (size!34118 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69822)

(declare-fun mapRest!41443 () (Array (_ BitVec 32) ValueCell!12520))

(declare-fun mapValue!41443 () ValueCell!12520)

(declare-fun mapKey!41443 () (_ BitVec 32))

(assert (=> mapNonEmpty!41443 (= (arr!33581 _values!874) (store mapRest!41443 mapKey!41443 mapValue!41443))))

(declare-fun res!722628 () Bool)

(assert (=> start!95840 (=> (not res!722628) (not e!619306))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95840 (= res!722628 (validMask!0 mask!1414))))

(assert (=> start!95840 e!619306))

(assert (=> start!95840 tp!79220))

(assert (=> start!95840 true))

(assert (=> start!95840 tp_is_empty!26459))

(declare-fun array_inv!25768 (array!69820) Bool)

(assert (=> start!95840 (array_inv!25768 _keys!1070)))

(declare-fun e!619309 () Bool)

(declare-fun array_inv!25769 (array!69822) Bool)

(assert (=> start!95840 (and (array_inv!25769 _values!874) e!619309)))

(declare-fun b!1083847 () Bool)

(declare-fun res!722625 () Bool)

(assert (=> b!1083847 (=> (not res!722625) (not e!619306))))

(assert (=> b!1083847 (= res!722625 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34117 _keys!1070))))))

(declare-fun b!1083848 () Bool)

(assert (=> b!1083848 (= e!619307 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40405)

(declare-datatypes ((tuple2!16902 0))(
  ( (tuple2!16903 (_1!8461 (_ BitVec 64)) (_2!8461 V!40405)) )
))
(declare-datatypes ((List!23542 0))(
  ( (Nil!23539) (Cons!23538 (h!24747 tuple2!16902) (t!33064 List!23542)) )
))
(declare-datatypes ((ListLongMap!14883 0))(
  ( (ListLongMap!14884 (toList!7457 List!23542)) )
))
(declare-fun lt!480322 () ListLongMap!14883)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40405)

(declare-fun lt!480326 () array!69822)

(declare-fun getCurrentListMap!4216 (array!69820 array!69822 (_ BitVec 32) (_ BitVec 32) V!40405 V!40405 (_ BitVec 32) Int) ListLongMap!14883)

(assert (=> b!1083848 (= lt!480322 (getCurrentListMap!4216 lt!480324 lt!480326 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480320 () ListLongMap!14883)

(declare-fun lt!480319 () ListLongMap!14883)

(assert (=> b!1083848 (and (= lt!480320 lt!480319) (= lt!480319 lt!480320))))

(declare-fun lt!480323 () ListLongMap!14883)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!739 (ListLongMap!14883 (_ BitVec 64)) ListLongMap!14883)

(assert (=> b!1083848 (= lt!480319 (-!739 lt!480323 k!904))))

(declare-datatypes ((Unit!35593 0))(
  ( (Unit!35594) )
))
(declare-fun lt!480321 () Unit!35593)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!22 (array!69820 array!69822 (_ BitVec 32) (_ BitVec 32) V!40405 V!40405 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35593)

(assert (=> b!1083848 (= lt!480321 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!22 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3968 (array!69820 array!69822 (_ BitVec 32) (_ BitVec 32) V!40405 V!40405 (_ BitVec 32) Int) ListLongMap!14883)

(assert (=> b!1083848 (= lt!480320 (getCurrentListMapNoExtraKeys!3968 lt!480324 lt!480326 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2104 (Int (_ BitVec 64)) V!40405)

(assert (=> b!1083848 (= lt!480326 (array!69823 (store (arr!33581 _values!874) i!650 (ValueCellFull!12520 (dynLambda!2104 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34118 _values!874)))))

(assert (=> b!1083848 (= lt!480323 (getCurrentListMapNoExtraKeys!3968 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69820 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1083848 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!480325 () Unit!35593)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69820 (_ BitVec 64) (_ BitVec 32)) Unit!35593)

(assert (=> b!1083848 (= lt!480325 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1083849 () Bool)

(declare-fun res!722626 () Bool)

(assert (=> b!1083849 (=> (not res!722626) (not e!619306))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1083849 (= res!722626 (validKeyInArray!0 k!904))))

(declare-fun b!1083850 () Bool)

(declare-fun res!722627 () Bool)

(assert (=> b!1083850 (=> (not res!722627) (not e!619306))))

(assert (=> b!1083850 (= res!722627 (= (select (arr!33580 _keys!1070) i!650) k!904))))

(declare-fun b!1083851 () Bool)

(declare-fun res!722631 () Bool)

(assert (=> b!1083851 (=> (not res!722631) (not e!619306))))

(declare-datatypes ((List!23543 0))(
  ( (Nil!23540) (Cons!23539 (h!24748 (_ BitVec 64)) (t!33065 List!23543)) )
))
(declare-fun arrayNoDuplicates!0 (array!69820 (_ BitVec 32) List!23543) Bool)

(assert (=> b!1083851 (= res!722631 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23540))))

(declare-fun b!1083852 () Bool)

(declare-fun res!722630 () Bool)

(assert (=> b!1083852 (=> (not res!722630) (not e!619306))))

(assert (=> b!1083852 (= res!722630 (and (= (size!34118 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34117 _keys!1070) (size!34118 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1083853 () Bool)

(declare-fun e!619304 () Bool)

(assert (=> b!1083853 (= e!619304 tp_is_empty!26459)))

(declare-fun b!1083854 () Bool)

(declare-fun res!722632 () Bool)

(assert (=> b!1083854 (=> (not res!722632) (not e!619307))))

(assert (=> b!1083854 (= res!722632 (arrayNoDuplicates!0 lt!480324 #b00000000000000000000000000000000 Nil!23540))))

(declare-fun b!1083855 () Bool)

(declare-fun res!722633 () Bool)

(assert (=> b!1083855 (=> (not res!722633) (not e!619306))))

(assert (=> b!1083855 (= res!722633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1083856 () Bool)

(assert (=> b!1083856 (= e!619309 (and e!619304 mapRes!41443))))

(declare-fun condMapEmpty!41443 () Bool)

(declare-fun mapDefault!41443 () ValueCell!12520)

