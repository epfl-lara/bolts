; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96126 () Bool)

(assert start!96126)

(declare-fun b_free!22743 () Bool)

(declare-fun b_next!22743 () Bool)

(assert (=> start!96126 (= b_free!22743 (not b_next!22743))))

(declare-fun tp!80078 () Bool)

(declare-fun b_and!36179 () Bool)

(assert (=> start!96126 (= tp!80078 b_and!36179)))

(declare-fun res!727255 () Bool)

(declare-fun e!622621 () Bool)

(assert (=> start!96126 (=> (not res!727255) (not e!622621))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96126 (= res!727255 (validMask!0 mask!1414))))

(assert (=> start!96126 e!622621))

(assert (=> start!96126 tp!80078))

(assert (=> start!96126 true))

(declare-fun tp_is_empty!26745 () Bool)

(assert (=> start!96126 tp_is_empty!26745))

(declare-datatypes ((array!70378 0))(
  ( (array!70379 (arr!33859 (Array (_ BitVec 32) (_ BitVec 64))) (size!34396 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70378)

(declare-fun array_inv!25970 (array!70378) Bool)

(assert (=> start!96126 (array_inv!25970 _keys!1070)))

(declare-datatypes ((V!40787 0))(
  ( (V!40788 (val!13429 Int)) )
))
(declare-datatypes ((ValueCell!12663 0))(
  ( (ValueCellFull!12663 (v!16051 V!40787)) (EmptyCell!12663) )
))
(declare-datatypes ((array!70380 0))(
  ( (array!70381 (arr!33860 (Array (_ BitVec 32) ValueCell!12663)) (size!34397 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70380)

(declare-fun e!622624 () Bool)

(declare-fun array_inv!25971 (array!70380) Bool)

(assert (=> start!96126 (and (array_inv!25971 _values!874) e!622624)))

(declare-fun mapNonEmpty!41872 () Bool)

(declare-fun mapRes!41872 () Bool)

(declare-fun tp!80079 () Bool)

(declare-fun e!622619 () Bool)

(assert (=> mapNonEmpty!41872 (= mapRes!41872 (and tp!80079 e!622619))))

(declare-fun mapValue!41872 () ValueCell!12663)

(declare-fun mapKey!41872 () (_ BitVec 32))

(declare-fun mapRest!41872 () (Array (_ BitVec 32) ValueCell!12663))

(assert (=> mapNonEmpty!41872 (= (arr!33860 _values!874) (store mapRest!41872 mapKey!41872 mapValue!41872))))

(declare-fun b!1090045 () Bool)

(declare-fun e!622623 () Bool)

(assert (=> b!1090045 (= e!622623 true)))

(declare-datatypes ((tuple2!17140 0))(
  ( (tuple2!17141 (_1!8580 (_ BitVec 64)) (_2!8580 V!40787)) )
))
(declare-datatypes ((List!23779 0))(
  ( (Nil!23776) (Cons!23775 (h!24984 tuple2!17140) (t!33587 List!23779)) )
))
(declare-datatypes ((ListLongMap!15121 0))(
  ( (ListLongMap!15122 (toList!7576 List!23779)) )
))
(declare-fun lt!486212 () ListLongMap!15121)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun lt!486213 () ListLongMap!15121)

(declare-fun -!854 (ListLongMap!15121 (_ BitVec 64)) ListLongMap!15121)

(assert (=> b!1090045 (= (-!854 lt!486212 k0!904) lt!486213)))

(declare-fun minValue!831 () V!40787)

(declare-datatypes ((Unit!35823 0))(
  ( (Unit!35824) )
))
(declare-fun lt!486214 () Unit!35823)

(declare-fun lt!486206 () ListLongMap!15121)

(declare-fun addRemoveCommutativeForDiffKeys!83 (ListLongMap!15121 (_ BitVec 64) V!40787 (_ BitVec 64)) Unit!35823)

(assert (=> b!1090045 (= lt!486214 (addRemoveCommutativeForDiffKeys!83 lt!486206 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1090046 () Bool)

(declare-fun e!622620 () Bool)

(declare-fun e!622622 () Bool)

(assert (=> b!1090046 (= e!622620 (not e!622622))))

(declare-fun res!727259 () Bool)

(assert (=> b!1090046 (=> res!727259 e!622622)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1090046 (= res!727259 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun lt!486208 () ListLongMap!15121)

(declare-fun zeroValue!831 () V!40787)

(declare-fun getCurrentListMap!4317 (array!70378 array!70380 (_ BitVec 32) (_ BitVec 32) V!40787 V!40787 (_ BitVec 32) Int) ListLongMap!15121)

(assert (=> b!1090046 (= lt!486208 (getCurrentListMap!4317 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486211 () array!70380)

(declare-fun lt!486217 () ListLongMap!15121)

(declare-fun lt!486207 () array!70378)

(assert (=> b!1090046 (= lt!486217 (getCurrentListMap!4317 lt!486207 lt!486211 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486215 () ListLongMap!15121)

(declare-fun lt!486216 () ListLongMap!15121)

(assert (=> b!1090046 (and (= lt!486215 lt!486216) (= lt!486216 lt!486215))))

(assert (=> b!1090046 (= lt!486216 (-!854 lt!486206 k0!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun lt!486210 () Unit!35823)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!123 (array!70378 array!70380 (_ BitVec 32) (_ BitVec 32) V!40787 V!40787 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35823)

(assert (=> b!1090046 (= lt!486210 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!123 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4069 (array!70378 array!70380 (_ BitVec 32) (_ BitVec 32) V!40787 V!40787 (_ BitVec 32) Int) ListLongMap!15121)

(assert (=> b!1090046 (= lt!486215 (getCurrentListMapNoExtraKeys!4069 lt!486207 lt!486211 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2205 (Int (_ BitVec 64)) V!40787)

(assert (=> b!1090046 (= lt!486211 (array!70381 (store (arr!33860 _values!874) i!650 (ValueCellFull!12663 (dynLambda!2205 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34397 _values!874)))))

(assert (=> b!1090046 (= lt!486206 (getCurrentListMapNoExtraKeys!4069 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70378 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1090046 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!486209 () Unit!35823)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70378 (_ BitVec 64) (_ BitVec 32)) Unit!35823)

(assert (=> b!1090046 (= lt!486209 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1090047 () Bool)

(declare-fun e!622618 () Bool)

(assert (=> b!1090047 (= e!622624 (and e!622618 mapRes!41872))))

(declare-fun condMapEmpty!41872 () Bool)

(declare-fun mapDefault!41872 () ValueCell!12663)

(assert (=> b!1090047 (= condMapEmpty!41872 (= (arr!33860 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12663)) mapDefault!41872)))))

(declare-fun b!1090048 () Bool)

(declare-fun res!727261 () Bool)

(assert (=> b!1090048 (=> (not res!727261) (not e!622620))))

(declare-datatypes ((List!23780 0))(
  ( (Nil!23777) (Cons!23776 (h!24985 (_ BitVec 64)) (t!33588 List!23780)) )
))
(declare-fun arrayNoDuplicates!0 (array!70378 (_ BitVec 32) List!23780) Bool)

(assert (=> b!1090048 (= res!727261 (arrayNoDuplicates!0 lt!486207 #b00000000000000000000000000000000 Nil!23777))))

(declare-fun b!1090049 () Bool)

(assert (=> b!1090049 (= e!622622 e!622623)))

(declare-fun res!727252 () Bool)

(assert (=> b!1090049 (=> res!727252 e!622623)))

(assert (=> b!1090049 (= res!727252 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(assert (=> b!1090049 (= lt!486208 lt!486212)))

(declare-fun lt!486218 () tuple2!17140)

(declare-fun +!3287 (ListLongMap!15121 tuple2!17140) ListLongMap!15121)

(assert (=> b!1090049 (= lt!486212 (+!3287 lt!486206 lt!486218))))

(assert (=> b!1090049 (= lt!486217 lt!486213)))

(assert (=> b!1090049 (= lt!486213 (+!3287 lt!486216 lt!486218))))

(assert (=> b!1090049 (= lt!486217 (+!3287 lt!486215 lt!486218))))

(assert (=> b!1090049 (= lt!486218 (tuple2!17141 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1090050 () Bool)

(declare-fun res!727257 () Bool)

(assert (=> b!1090050 (=> (not res!727257) (not e!622621))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70378 (_ BitVec 32)) Bool)

(assert (=> b!1090050 (= res!727257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1090051 () Bool)

(declare-fun res!727262 () Bool)

(assert (=> b!1090051 (=> (not res!727262) (not e!622621))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1090051 (= res!727262 (validKeyInArray!0 k0!904))))

(declare-fun b!1090052 () Bool)

(declare-fun res!727258 () Bool)

(assert (=> b!1090052 (=> (not res!727258) (not e!622621))))

(assert (=> b!1090052 (= res!727258 (and (= (size!34397 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34396 _keys!1070) (size!34397 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1090053 () Bool)

(assert (=> b!1090053 (= e!622621 e!622620)))

(declare-fun res!727256 () Bool)

(assert (=> b!1090053 (=> (not res!727256) (not e!622620))))

(assert (=> b!1090053 (= res!727256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!486207 mask!1414))))

(assert (=> b!1090053 (= lt!486207 (array!70379 (store (arr!33859 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34396 _keys!1070)))))

(declare-fun b!1090054 () Bool)

(declare-fun res!727260 () Bool)

(assert (=> b!1090054 (=> (not res!727260) (not e!622621))))

(assert (=> b!1090054 (= res!727260 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34396 _keys!1070))))))

(declare-fun b!1090055 () Bool)

(assert (=> b!1090055 (= e!622619 tp_is_empty!26745)))

(declare-fun b!1090056 () Bool)

(assert (=> b!1090056 (= e!622618 tp_is_empty!26745)))

(declare-fun b!1090057 () Bool)

(declare-fun res!727254 () Bool)

(assert (=> b!1090057 (=> (not res!727254) (not e!622621))))

(assert (=> b!1090057 (= res!727254 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23777))))

(declare-fun mapIsEmpty!41872 () Bool)

(assert (=> mapIsEmpty!41872 mapRes!41872))

(declare-fun b!1090058 () Bool)

(declare-fun res!727253 () Bool)

(assert (=> b!1090058 (=> (not res!727253) (not e!622621))))

(assert (=> b!1090058 (= res!727253 (= (select (arr!33859 _keys!1070) i!650) k0!904))))

(assert (= (and start!96126 res!727255) b!1090052))

(assert (= (and b!1090052 res!727258) b!1090050))

(assert (= (and b!1090050 res!727257) b!1090057))

(assert (= (and b!1090057 res!727254) b!1090054))

(assert (= (and b!1090054 res!727260) b!1090051))

(assert (= (and b!1090051 res!727262) b!1090058))

(assert (= (and b!1090058 res!727253) b!1090053))

(assert (= (and b!1090053 res!727256) b!1090048))

(assert (= (and b!1090048 res!727261) b!1090046))

(assert (= (and b!1090046 (not res!727259)) b!1090049))

(assert (= (and b!1090049 (not res!727252)) b!1090045))

(assert (= (and b!1090047 condMapEmpty!41872) mapIsEmpty!41872))

(assert (= (and b!1090047 (not condMapEmpty!41872)) mapNonEmpty!41872))

(get-info :version)

(assert (= (and mapNonEmpty!41872 ((_ is ValueCellFull!12663) mapValue!41872)) b!1090055))

(assert (= (and b!1090047 ((_ is ValueCellFull!12663) mapDefault!41872)) b!1090056))

(assert (= start!96126 b!1090047))

(declare-fun b_lambda!17443 () Bool)

(assert (=> (not b_lambda!17443) (not b!1090046)))

(declare-fun t!33586 () Bool)

(declare-fun tb!7629 () Bool)

(assert (=> (and start!96126 (= defaultEntry!882 defaultEntry!882) t!33586) tb!7629))

(declare-fun result!15769 () Bool)

(assert (=> tb!7629 (= result!15769 tp_is_empty!26745)))

(assert (=> b!1090046 t!33586))

(declare-fun b_and!36181 () Bool)

(assert (= b_and!36179 (and (=> t!33586 result!15769) b_and!36181)))

(declare-fun m!1009525 () Bool)

(assert (=> b!1090048 m!1009525))

(declare-fun m!1009527 () Bool)

(assert (=> b!1090051 m!1009527))

(declare-fun m!1009529 () Bool)

(assert (=> b!1090053 m!1009529))

(declare-fun m!1009531 () Bool)

(assert (=> b!1090053 m!1009531))

(declare-fun m!1009533 () Bool)

(assert (=> b!1090050 m!1009533))

(declare-fun m!1009535 () Bool)

(assert (=> b!1090058 m!1009535))

(declare-fun m!1009537 () Bool)

(assert (=> b!1090057 m!1009537))

(declare-fun m!1009539 () Bool)

(assert (=> b!1090046 m!1009539))

(declare-fun m!1009541 () Bool)

(assert (=> b!1090046 m!1009541))

(declare-fun m!1009543 () Bool)

(assert (=> b!1090046 m!1009543))

(declare-fun m!1009545 () Bool)

(assert (=> b!1090046 m!1009545))

(declare-fun m!1009547 () Bool)

(assert (=> b!1090046 m!1009547))

(declare-fun m!1009549 () Bool)

(assert (=> b!1090046 m!1009549))

(declare-fun m!1009551 () Bool)

(assert (=> b!1090046 m!1009551))

(declare-fun m!1009553 () Bool)

(assert (=> b!1090046 m!1009553))

(declare-fun m!1009555 () Bool)

(assert (=> b!1090046 m!1009555))

(declare-fun m!1009557 () Bool)

(assert (=> b!1090046 m!1009557))

(declare-fun m!1009559 () Bool)

(assert (=> start!96126 m!1009559))

(declare-fun m!1009561 () Bool)

(assert (=> start!96126 m!1009561))

(declare-fun m!1009563 () Bool)

(assert (=> start!96126 m!1009563))

(declare-fun m!1009565 () Bool)

(assert (=> b!1090045 m!1009565))

(declare-fun m!1009567 () Bool)

(assert (=> b!1090045 m!1009567))

(declare-fun m!1009569 () Bool)

(assert (=> b!1090049 m!1009569))

(declare-fun m!1009571 () Bool)

(assert (=> b!1090049 m!1009571))

(declare-fun m!1009573 () Bool)

(assert (=> b!1090049 m!1009573))

(declare-fun m!1009575 () Bool)

(assert (=> mapNonEmpty!41872 m!1009575))

(check-sat (not start!96126) (not mapNonEmpty!41872) b_and!36181 tp_is_empty!26745 (not b!1090051) (not b!1090045) (not b_lambda!17443) (not b!1090057) (not b!1090046) (not b!1090050) (not b!1090048) (not b!1090053) (not b!1090049) (not b_next!22743))
(check-sat b_and!36181 (not b_next!22743))
