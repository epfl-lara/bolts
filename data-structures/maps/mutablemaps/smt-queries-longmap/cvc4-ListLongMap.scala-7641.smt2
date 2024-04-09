; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96206 () Bool)

(assert start!96206)

(declare-fun b_free!22823 () Bool)

(declare-fun b_next!22823 () Bool)

(assert (=> start!96206 (= b_free!22823 (not b_next!22823))))

(declare-fun tp!80319 () Bool)

(declare-fun b_and!36339 () Bool)

(assert (=> start!96206 (= tp!80319 b_and!36339)))

(declare-fun b!1091805 () Bool)

(declare-fun res!728574 () Bool)

(declare-fun e!623579 () Bool)

(assert (=> b!1091805 (=> (not res!728574) (not e!623579))))

(declare-datatypes ((array!70534 0))(
  ( (array!70535 (arr!33937 (Array (_ BitVec 32) (_ BitVec 64))) (size!34474 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70534)

(declare-datatypes ((List!23845 0))(
  ( (Nil!23842) (Cons!23841 (h!25050 (_ BitVec 64)) (t!33733 List!23845)) )
))
(declare-fun arrayNoDuplicates!0 (array!70534 (_ BitVec 32) List!23845) Bool)

(assert (=> b!1091805 (= res!728574 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23842))))

(declare-fun mapIsEmpty!41992 () Bool)

(declare-fun mapRes!41992 () Bool)

(assert (=> mapIsEmpty!41992 mapRes!41992))

(declare-fun b!1091806 () Bool)

(declare-fun res!728572 () Bool)

(assert (=> b!1091806 (=> (not res!728572) (not e!623579))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1091806 (= res!728572 (= (select (arr!33937 _keys!1070) i!650) k!904))))

(declare-fun b!1091807 () Bool)

(declare-fun res!728582 () Bool)

(assert (=> b!1091807 (=> (not res!728582) (not e!623579))))

(assert (=> b!1091807 (= res!728582 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34474 _keys!1070))))))

(declare-fun res!728578 () Bool)

(assert (=> start!96206 (=> (not res!728578) (not e!623579))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96206 (= res!728578 (validMask!0 mask!1414))))

(assert (=> start!96206 e!623579))

(assert (=> start!96206 tp!80319))

(assert (=> start!96206 true))

(declare-fun tp_is_empty!26825 () Bool)

(assert (=> start!96206 tp_is_empty!26825))

(declare-fun array_inv!26022 (array!70534) Bool)

(assert (=> start!96206 (array_inv!26022 _keys!1070)))

(declare-datatypes ((V!40893 0))(
  ( (V!40894 (val!13469 Int)) )
))
(declare-datatypes ((ValueCell!12703 0))(
  ( (ValueCellFull!12703 (v!16091 V!40893)) (EmptyCell!12703) )
))
(declare-datatypes ((array!70536 0))(
  ( (array!70537 (arr!33938 (Array (_ BitVec 32) ValueCell!12703)) (size!34475 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70536)

(declare-fun e!623583 () Bool)

(declare-fun array_inv!26023 (array!70536) Bool)

(assert (=> start!96206 (and (array_inv!26023 _values!874) e!623583)))

(declare-fun b!1091808 () Bool)

(declare-fun e!623578 () Bool)

(assert (=> b!1091808 (= e!623578 true)))

(declare-datatypes ((tuple2!17206 0))(
  ( (tuple2!17207 (_1!8613 (_ BitVec 64)) (_2!8613 V!40893)) )
))
(declare-datatypes ((List!23846 0))(
  ( (Nil!23843) (Cons!23842 (h!25051 tuple2!17206) (t!33734 List!23846)) )
))
(declare-datatypes ((ListLongMap!15187 0))(
  ( (ListLongMap!15188 (toList!7609 List!23846)) )
))
(declare-fun lt!487771 () ListLongMap!15187)

(declare-fun lt!487776 () ListLongMap!15187)

(declare-fun -!886 (ListLongMap!15187 (_ BitVec 64)) ListLongMap!15187)

(assert (=> b!1091808 (= (-!886 lt!487771 k!904) lt!487776)))

(declare-fun minValue!831 () V!40893)

(declare-fun lt!487778 () ListLongMap!15187)

(declare-datatypes ((Unit!35887 0))(
  ( (Unit!35888) )
))
(declare-fun lt!487767 () Unit!35887)

(declare-fun addRemoveCommutativeForDiffKeys!114 (ListLongMap!15187 (_ BitVec 64) V!40893 (_ BitVec 64)) Unit!35887)

(assert (=> b!1091808 (= lt!487767 (addRemoveCommutativeForDiffKeys!114 lt!487778 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1091809 () Bool)

(declare-fun res!728576 () Bool)

(assert (=> b!1091809 (=> (not res!728576) (not e!623579))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70534 (_ BitVec 32)) Bool)

(assert (=> b!1091809 (= res!728576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1091810 () Bool)

(declare-fun res!728575 () Bool)

(declare-fun e!623581 () Bool)

(assert (=> b!1091810 (=> (not res!728575) (not e!623581))))

(declare-fun lt!487770 () array!70534)

(assert (=> b!1091810 (= res!728575 (arrayNoDuplicates!0 lt!487770 #b00000000000000000000000000000000 Nil!23842))))

(declare-fun b!1091811 () Bool)

(assert (=> b!1091811 (= e!623579 e!623581)))

(declare-fun res!728581 () Bool)

(assert (=> b!1091811 (=> (not res!728581) (not e!623581))))

(assert (=> b!1091811 (= res!728581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!487770 mask!1414))))

(assert (=> b!1091811 (= lt!487770 (array!70535 (store (arr!33937 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34474 _keys!1070)))))

(declare-fun b!1091812 () Bool)

(declare-fun res!728573 () Bool)

(assert (=> b!1091812 (=> (not res!728573) (not e!623579))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1091812 (= res!728573 (validKeyInArray!0 k!904))))

(declare-fun b!1091813 () Bool)

(declare-fun e!623582 () Bool)

(assert (=> b!1091813 (= e!623581 (not e!623582))))

(declare-fun res!728577 () Bool)

(assert (=> b!1091813 (=> res!728577 e!623582)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1091813 (= res!728577 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun lt!487769 () ListLongMap!15187)

(declare-fun zeroValue!831 () V!40893)

(declare-fun getCurrentListMap!4345 (array!70534 array!70536 (_ BitVec 32) (_ BitVec 32) V!40893 V!40893 (_ BitVec 32) Int) ListLongMap!15187)

(assert (=> b!1091813 (= lt!487769 (getCurrentListMap!4345 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487772 () ListLongMap!15187)

(declare-fun lt!487773 () array!70536)

(assert (=> b!1091813 (= lt!487772 (getCurrentListMap!4345 lt!487770 lt!487773 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487766 () ListLongMap!15187)

(declare-fun lt!487775 () ListLongMap!15187)

(assert (=> b!1091813 (and (= lt!487766 lt!487775) (= lt!487775 lt!487766))))

(assert (=> b!1091813 (= lt!487775 (-!886 lt!487778 k!904))))

(declare-fun lt!487768 () Unit!35887)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!151 (array!70534 array!70536 (_ BitVec 32) (_ BitVec 32) V!40893 V!40893 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35887)

(assert (=> b!1091813 (= lt!487768 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!151 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4097 (array!70534 array!70536 (_ BitVec 32) (_ BitVec 32) V!40893 V!40893 (_ BitVec 32) Int) ListLongMap!15187)

(assert (=> b!1091813 (= lt!487766 (getCurrentListMapNoExtraKeys!4097 lt!487770 lt!487773 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2233 (Int (_ BitVec 64)) V!40893)

(assert (=> b!1091813 (= lt!487773 (array!70537 (store (arr!33938 _values!874) i!650 (ValueCellFull!12703 (dynLambda!2233 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34475 _values!874)))))

(assert (=> b!1091813 (= lt!487778 (getCurrentListMapNoExtraKeys!4097 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70534 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1091813 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!487774 () Unit!35887)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70534 (_ BitVec 64) (_ BitVec 32)) Unit!35887)

(assert (=> b!1091813 (= lt!487774 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun mapNonEmpty!41992 () Bool)

(declare-fun tp!80318 () Bool)

(declare-fun e!623577 () Bool)

(assert (=> mapNonEmpty!41992 (= mapRes!41992 (and tp!80318 e!623577))))

(declare-fun mapKey!41992 () (_ BitVec 32))

(declare-fun mapRest!41992 () (Array (_ BitVec 32) ValueCell!12703))

(declare-fun mapValue!41992 () ValueCell!12703)

(assert (=> mapNonEmpty!41992 (= (arr!33938 _values!874) (store mapRest!41992 mapKey!41992 mapValue!41992))))

(declare-fun b!1091814 () Bool)

(declare-fun e!623584 () Bool)

(assert (=> b!1091814 (= e!623583 (and e!623584 mapRes!41992))))

(declare-fun condMapEmpty!41992 () Bool)

(declare-fun mapDefault!41992 () ValueCell!12703)

