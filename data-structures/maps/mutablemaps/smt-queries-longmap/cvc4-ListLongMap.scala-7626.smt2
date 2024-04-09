; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96116 () Bool)

(assert start!96116)

(declare-fun b_free!22733 () Bool)

(declare-fun b_next!22733 () Bool)

(assert (=> start!96116 (= b_free!22733 (not b_next!22733))))

(declare-fun tp!80048 () Bool)

(declare-fun b_and!36159 () Bool)

(assert (=> start!96116 (= tp!80048 b_and!36159)))

(declare-fun b!1089824 () Bool)

(declare-fun res!727090 () Bool)

(declare-fun e!622498 () Bool)

(assert (=> b!1089824 (=> (not res!727090) (not e!622498))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70358 0))(
  ( (array!70359 (arr!33849 (Array (_ BitVec 32) (_ BitVec 64))) (size!34386 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70358)

(declare-datatypes ((V!40773 0))(
  ( (V!40774 (val!13424 Int)) )
))
(declare-datatypes ((ValueCell!12658 0))(
  ( (ValueCellFull!12658 (v!16046 V!40773)) (EmptyCell!12658) )
))
(declare-datatypes ((array!70360 0))(
  ( (array!70361 (arr!33850 (Array (_ BitVec 32) ValueCell!12658)) (size!34387 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70360)

(assert (=> b!1089824 (= res!727090 (and (= (size!34387 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34386 _keys!1070) (size!34387 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1089825 () Bool)

(declare-fun res!727097 () Bool)

(declare-fun e!622500 () Bool)

(assert (=> b!1089825 (=> (not res!727097) (not e!622500))))

(declare-fun lt!486021 () array!70358)

(declare-datatypes ((List!23772 0))(
  ( (Nil!23769) (Cons!23768 (h!24977 (_ BitVec 64)) (t!33570 List!23772)) )
))
(declare-fun arrayNoDuplicates!0 (array!70358 (_ BitVec 32) List!23772) Bool)

(assert (=> b!1089825 (= res!727097 (arrayNoDuplicates!0 lt!486021 #b00000000000000000000000000000000 Nil!23769))))

(declare-fun res!727089 () Bool)

(assert (=> start!96116 (=> (not res!727089) (not e!622498))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96116 (= res!727089 (validMask!0 mask!1414))))

(assert (=> start!96116 e!622498))

(assert (=> start!96116 tp!80048))

(assert (=> start!96116 true))

(declare-fun tp_is_empty!26735 () Bool)

(assert (=> start!96116 tp_is_empty!26735))

(declare-fun array_inv!25964 (array!70358) Bool)

(assert (=> start!96116 (array_inv!25964 _keys!1070)))

(declare-fun e!622501 () Bool)

(declare-fun array_inv!25965 (array!70360) Bool)

(assert (=> start!96116 (and (array_inv!25965 _values!874) e!622501)))

(declare-fun b!1089826 () Bool)

(declare-fun res!727088 () Bool)

(assert (=> b!1089826 (=> (not res!727088) (not e!622498))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1089826 (= res!727088 (= (select (arr!33849 _keys!1070) i!650) k!904))))

(declare-fun mapIsEmpty!41857 () Bool)

(declare-fun mapRes!41857 () Bool)

(assert (=> mapIsEmpty!41857 mapRes!41857))

(declare-fun b!1089827 () Bool)

(assert (=> b!1089827 (= e!622498 e!622500)))

(declare-fun res!727093 () Bool)

(assert (=> b!1089827 (=> (not res!727093) (not e!622500))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70358 (_ BitVec 32)) Bool)

(assert (=> b!1089827 (= res!727093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!486021 mask!1414))))

(assert (=> b!1089827 (= lt!486021 (array!70359 (store (arr!33849 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34386 _keys!1070)))))

(declare-fun b!1089828 () Bool)

(declare-fun res!727094 () Bool)

(assert (=> b!1089828 (=> (not res!727094) (not e!622498))))

(assert (=> b!1089828 (= res!727094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1089829 () Bool)

(declare-fun e!622503 () Bool)

(assert (=> b!1089829 (= e!622500 (not e!622503))))

(declare-fun res!727091 () Bool)

(assert (=> b!1089829 (=> res!727091 e!622503)))

(assert (=> b!1089829 (= res!727091 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40773)

(declare-datatypes ((tuple2!17134 0))(
  ( (tuple2!17135 (_1!8577 (_ BitVec 64)) (_2!8577 V!40773)) )
))
(declare-datatypes ((List!23773 0))(
  ( (Nil!23770) (Cons!23769 (h!24978 tuple2!17134) (t!33571 List!23773)) )
))
(declare-datatypes ((ListLongMap!15115 0))(
  ( (ListLongMap!15116 (toList!7573 List!23773)) )
))
(declare-fun lt!486020 () ListLongMap!15115)

(declare-fun zeroValue!831 () V!40773)

(declare-fun getCurrentListMap!4314 (array!70358 array!70360 (_ BitVec 32) (_ BitVec 32) V!40773 V!40773 (_ BitVec 32) Int) ListLongMap!15115)

(assert (=> b!1089829 (= lt!486020 (getCurrentListMap!4314 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486019 () ListLongMap!15115)

(declare-fun lt!486016 () array!70360)

(assert (=> b!1089829 (= lt!486019 (getCurrentListMap!4314 lt!486021 lt!486016 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486022 () ListLongMap!15115)

(declare-fun lt!486023 () ListLongMap!15115)

(assert (=> b!1089829 (and (= lt!486022 lt!486023) (= lt!486023 lt!486022))))

(declare-fun lt!486015 () ListLongMap!15115)

(declare-fun -!851 (ListLongMap!15115 (_ BitVec 64)) ListLongMap!15115)

(assert (=> b!1089829 (= lt!486023 (-!851 lt!486015 k!904))))

(declare-datatypes ((Unit!35817 0))(
  ( (Unit!35818) )
))
(declare-fun lt!486018 () Unit!35817)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!120 (array!70358 array!70360 (_ BitVec 32) (_ BitVec 32) V!40773 V!40773 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35817)

(assert (=> b!1089829 (= lt!486018 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!120 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4066 (array!70358 array!70360 (_ BitVec 32) (_ BitVec 32) V!40773 V!40773 (_ BitVec 32) Int) ListLongMap!15115)

(assert (=> b!1089829 (= lt!486022 (getCurrentListMapNoExtraKeys!4066 lt!486021 lt!486016 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2202 (Int (_ BitVec 64)) V!40773)

(assert (=> b!1089829 (= lt!486016 (array!70361 (store (arr!33850 _values!874) i!650 (ValueCellFull!12658 (dynLambda!2202 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34387 _values!874)))))

(assert (=> b!1089829 (= lt!486015 (getCurrentListMapNoExtraKeys!4066 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70358 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1089829 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!486017 () Unit!35817)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70358 (_ BitVec 64) (_ BitVec 32)) Unit!35817)

(assert (=> b!1089829 (= lt!486017 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1089830 () Bool)

(declare-fun res!727092 () Bool)

(assert (=> b!1089830 (=> (not res!727092) (not e!622498))))

(assert (=> b!1089830 (= res!727092 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23769))))

(declare-fun b!1089831 () Bool)

(declare-fun e!622504 () Bool)

(assert (=> b!1089831 (= e!622504 tp_is_empty!26735)))

(declare-fun b!1089832 () Bool)

(declare-fun res!727087 () Bool)

(declare-fun e!622497 () Bool)

(assert (=> b!1089832 (=> (not res!727087) (not e!622497))))

(declare-fun lt!486014 () tuple2!17134)

(declare-fun +!3285 (ListLongMap!15115 tuple2!17134) ListLongMap!15115)

(assert (=> b!1089832 (= res!727087 (= lt!486019 (+!3285 lt!486023 lt!486014)))))

(declare-fun b!1089833 () Bool)

(assert (=> b!1089833 (= e!622497 (= lt!486020 (+!3285 lt!486015 lt!486014)))))

(declare-fun mapNonEmpty!41857 () Bool)

(declare-fun tp!80049 () Bool)

(assert (=> mapNonEmpty!41857 (= mapRes!41857 (and tp!80049 e!622504))))

(declare-fun mapRest!41857 () (Array (_ BitVec 32) ValueCell!12658))

(declare-fun mapKey!41857 () (_ BitVec 32))

(declare-fun mapValue!41857 () ValueCell!12658)

(assert (=> mapNonEmpty!41857 (= (arr!33850 _values!874) (store mapRest!41857 mapKey!41857 mapValue!41857))))

(declare-fun b!1089834 () Bool)

(declare-fun e!622502 () Bool)

(assert (=> b!1089834 (= e!622502 tp_is_empty!26735)))

(declare-fun b!1089835 () Bool)

(declare-fun res!727095 () Bool)

(assert (=> b!1089835 (=> (not res!727095) (not e!622498))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1089835 (= res!727095 (validKeyInArray!0 k!904))))

(declare-fun b!1089836 () Bool)

(declare-fun res!727086 () Bool)

(assert (=> b!1089836 (=> (not res!727086) (not e!622498))))

(assert (=> b!1089836 (= res!727086 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34386 _keys!1070))))))

(declare-fun b!1089837 () Bool)

(assert (=> b!1089837 (= e!622503 true)))

(assert (=> b!1089837 e!622497))

(declare-fun res!727096 () Bool)

(assert (=> b!1089837 (=> (not res!727096) (not e!622497))))

(assert (=> b!1089837 (= res!727096 (= lt!486019 (+!3285 lt!486022 lt!486014)))))

(assert (=> b!1089837 (= lt!486014 (tuple2!17135 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1089838 () Bool)

(assert (=> b!1089838 (= e!622501 (and e!622502 mapRes!41857))))

(declare-fun condMapEmpty!41857 () Bool)

(declare-fun mapDefault!41857 () ValueCell!12658)

