; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96114 () Bool)

(assert start!96114)

(declare-fun b_free!22731 () Bool)

(declare-fun b_next!22731 () Bool)

(assert (=> start!96114 (= b_free!22731 (not b_next!22731))))

(declare-fun tp!80043 () Bool)

(declare-fun b_and!36155 () Bool)

(assert (=> start!96114 (= tp!80043 b_and!36155)))

(declare-fun b!1089777 () Bool)

(declare-fun res!727059 () Bool)

(declare-fun e!622477 () Bool)

(assert (=> b!1089777 (=> (not res!727059) (not e!622477))))

(declare-datatypes ((array!70354 0))(
  ( (array!70355 (arr!33847 (Array (_ BitVec 32) (_ BitVec 64))) (size!34384 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70354)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1089777 (= res!727059 (= (select (arr!33847 _keys!1070) i!650) k0!904))))

(declare-fun b!1089778 () Bool)

(declare-fun res!727051 () Bool)

(assert (=> b!1089778 (=> (not res!727051) (not e!622477))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40771 0))(
  ( (V!40772 (val!13423 Int)) )
))
(declare-datatypes ((ValueCell!12657 0))(
  ( (ValueCellFull!12657 (v!16045 V!40771)) (EmptyCell!12657) )
))
(declare-datatypes ((array!70356 0))(
  ( (array!70357 (arr!33848 (Array (_ BitVec 32) ValueCell!12657)) (size!34385 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70356)

(assert (=> b!1089778 (= res!727051 (and (= (size!34385 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34384 _keys!1070) (size!34385 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1089779 () Bool)

(declare-fun e!622479 () Bool)

(declare-fun e!622475 () Bool)

(declare-fun mapRes!41854 () Bool)

(assert (=> b!1089779 (= e!622479 (and e!622475 mapRes!41854))))

(declare-fun condMapEmpty!41854 () Bool)

(declare-fun mapDefault!41854 () ValueCell!12657)

(assert (=> b!1089779 (= condMapEmpty!41854 (= (arr!33848 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12657)) mapDefault!41854)))))

(declare-fun mapNonEmpty!41854 () Bool)

(declare-fun tp!80042 () Bool)

(declare-fun e!622478 () Bool)

(assert (=> mapNonEmpty!41854 (= mapRes!41854 (and tp!80042 e!622478))))

(declare-fun mapValue!41854 () ValueCell!12657)

(declare-fun mapKey!41854 () (_ BitVec 32))

(declare-fun mapRest!41854 () (Array (_ BitVec 32) ValueCell!12657))

(assert (=> mapNonEmpty!41854 (= (arr!33848 _values!874) (store mapRest!41854 mapKey!41854 mapValue!41854))))

(declare-fun mapIsEmpty!41854 () Bool)

(assert (=> mapIsEmpty!41854 mapRes!41854))

(declare-fun b!1089781 () Bool)

(declare-fun res!727053 () Bool)

(assert (=> b!1089781 (=> (not res!727053) (not e!622477))))

(assert (=> b!1089781 (= res!727053 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34384 _keys!1070))))))

(declare-fun b!1089782 () Bool)

(declare-fun tp_is_empty!26733 () Bool)

(assert (=> b!1089782 (= e!622475 tp_is_empty!26733)))

(declare-fun b!1089783 () Bool)

(declare-fun res!727057 () Bool)

(assert (=> b!1089783 (=> (not res!727057) (not e!622477))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70354 (_ BitVec 32)) Bool)

(assert (=> b!1089783 (= res!727057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1089784 () Bool)

(assert (=> b!1089784 (= e!622478 tp_is_empty!26733)))

(declare-fun b!1089785 () Bool)

(declare-fun res!727060 () Bool)

(declare-fun e!622480 () Bool)

(assert (=> b!1089785 (=> (not res!727060) (not e!622480))))

(declare-fun lt!485988 () array!70354)

(declare-datatypes ((List!23770 0))(
  ( (Nil!23767) (Cons!23766 (h!24975 (_ BitVec 64)) (t!33566 List!23770)) )
))
(declare-fun arrayNoDuplicates!0 (array!70354 (_ BitVec 32) List!23770) Bool)

(assert (=> b!1089785 (= res!727060 (arrayNoDuplicates!0 lt!485988 #b00000000000000000000000000000000 Nil!23767))))

(declare-fun b!1089786 () Bool)

(assert (=> b!1089786 (= e!622477 e!622480)))

(declare-fun res!727050 () Bool)

(assert (=> b!1089786 (=> (not res!727050) (not e!622480))))

(assert (=> b!1089786 (= res!727050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!485988 mask!1414))))

(assert (=> b!1089786 (= lt!485988 (array!70355 (store (arr!33847 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34384 _keys!1070)))))

(declare-datatypes ((tuple2!17132 0))(
  ( (tuple2!17133 (_1!8576 (_ BitVec 64)) (_2!8576 V!40771)) )
))
(declare-datatypes ((List!23771 0))(
  ( (Nil!23768) (Cons!23767 (h!24976 tuple2!17132) (t!33567 List!23771)) )
))
(declare-datatypes ((ListLongMap!15113 0))(
  ( (ListLongMap!15114 (toList!7572 List!23771)) )
))
(declare-fun lt!485985 () ListLongMap!15113)

(declare-fun lt!485991 () ListLongMap!15113)

(declare-fun b!1089787 () Bool)

(declare-fun lt!485992 () tuple2!17132)

(declare-fun e!622476 () Bool)

(declare-fun +!3284 (ListLongMap!15113 tuple2!17132) ListLongMap!15113)

(assert (=> b!1089787 (= e!622476 (= lt!485985 (+!3284 lt!485991 lt!485992)))))

(declare-fun b!1089788 () Bool)

(declare-fun res!727061 () Bool)

(assert (=> b!1089788 (=> (not res!727061) (not e!622476))))

(declare-fun lt!485990 () ListLongMap!15113)

(declare-fun lt!485987 () ListLongMap!15113)

(assert (=> b!1089788 (= res!727061 (= lt!485987 (+!3284 lt!485990 lt!485992)))))

(declare-fun res!727054 () Bool)

(assert (=> start!96114 (=> (not res!727054) (not e!622477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96114 (= res!727054 (validMask!0 mask!1414))))

(assert (=> start!96114 e!622477))

(assert (=> start!96114 tp!80043))

(assert (=> start!96114 true))

(assert (=> start!96114 tp_is_empty!26733))

(declare-fun array_inv!25962 (array!70354) Bool)

(assert (=> start!96114 (array_inv!25962 _keys!1070)))

(declare-fun array_inv!25963 (array!70356) Bool)

(assert (=> start!96114 (and (array_inv!25963 _values!874) e!622479)))

(declare-fun b!1089780 () Bool)

(declare-fun e!622474 () Bool)

(assert (=> b!1089780 (= e!622474 true)))

(assert (=> b!1089780 e!622476))

(declare-fun res!727052 () Bool)

(assert (=> b!1089780 (=> (not res!727052) (not e!622476))))

(declare-fun lt!485993 () ListLongMap!15113)

(assert (=> b!1089780 (= res!727052 (= lt!485987 (+!3284 lt!485993 lt!485992)))))

(declare-fun minValue!831 () V!40771)

(assert (=> b!1089780 (= lt!485992 (tuple2!17133 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1089789 () Bool)

(assert (=> b!1089789 (= e!622480 (not e!622474))))

(declare-fun res!727056 () Bool)

(assert (=> b!1089789 (=> res!727056 e!622474)))

(assert (=> b!1089789 (= res!727056 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun zeroValue!831 () V!40771)

(declare-fun getCurrentListMap!4313 (array!70354 array!70356 (_ BitVec 32) (_ BitVec 32) V!40771 V!40771 (_ BitVec 32) Int) ListLongMap!15113)

(assert (=> b!1089789 (= lt!485985 (getCurrentListMap!4313 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!485984 () array!70356)

(assert (=> b!1089789 (= lt!485987 (getCurrentListMap!4313 lt!485988 lt!485984 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1089789 (and (= lt!485993 lt!485990) (= lt!485990 lt!485993))))

(declare-fun -!850 (ListLongMap!15113 (_ BitVec 64)) ListLongMap!15113)

(assert (=> b!1089789 (= lt!485990 (-!850 lt!485991 k0!904))))

(declare-datatypes ((Unit!35815 0))(
  ( (Unit!35816) )
))
(declare-fun lt!485989 () Unit!35815)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!119 (array!70354 array!70356 (_ BitVec 32) (_ BitVec 32) V!40771 V!40771 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35815)

(assert (=> b!1089789 (= lt!485989 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!119 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4065 (array!70354 array!70356 (_ BitVec 32) (_ BitVec 32) V!40771 V!40771 (_ BitVec 32) Int) ListLongMap!15113)

(assert (=> b!1089789 (= lt!485993 (getCurrentListMapNoExtraKeys!4065 lt!485988 lt!485984 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2201 (Int (_ BitVec 64)) V!40771)

(assert (=> b!1089789 (= lt!485984 (array!70357 (store (arr!33848 _values!874) i!650 (ValueCellFull!12657 (dynLambda!2201 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34385 _values!874)))))

(assert (=> b!1089789 (= lt!485991 (getCurrentListMapNoExtraKeys!4065 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70354 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1089789 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!485986 () Unit!35815)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70354 (_ BitVec 64) (_ BitVec 32)) Unit!35815)

(assert (=> b!1089789 (= lt!485986 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1089790 () Bool)

(declare-fun res!727058 () Bool)

(assert (=> b!1089790 (=> (not res!727058) (not e!622477))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1089790 (= res!727058 (validKeyInArray!0 k0!904))))

(declare-fun b!1089791 () Bool)

(declare-fun res!727055 () Bool)

(assert (=> b!1089791 (=> (not res!727055) (not e!622477))))

(assert (=> b!1089791 (= res!727055 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23767))))

(assert (= (and start!96114 res!727054) b!1089778))

(assert (= (and b!1089778 res!727051) b!1089783))

(assert (= (and b!1089783 res!727057) b!1089791))

(assert (= (and b!1089791 res!727055) b!1089781))

(assert (= (and b!1089781 res!727053) b!1089790))

(assert (= (and b!1089790 res!727058) b!1089777))

(assert (= (and b!1089777 res!727059) b!1089786))

(assert (= (and b!1089786 res!727050) b!1089785))

(assert (= (and b!1089785 res!727060) b!1089789))

(assert (= (and b!1089789 (not res!727056)) b!1089780))

(assert (= (and b!1089780 res!727052) b!1089788))

(assert (= (and b!1089788 res!727061) b!1089787))

(assert (= (and b!1089779 condMapEmpty!41854) mapIsEmpty!41854))

(assert (= (and b!1089779 (not condMapEmpty!41854)) mapNonEmpty!41854))

(get-info :version)

(assert (= (and mapNonEmpty!41854 ((_ is ValueCellFull!12657) mapValue!41854)) b!1089784))

(assert (= (and b!1089779 ((_ is ValueCellFull!12657) mapDefault!41854)) b!1089782))

(assert (= start!96114 b!1089779))

(declare-fun b_lambda!17431 () Bool)

(assert (=> (not b_lambda!17431) (not b!1089789)))

(declare-fun t!33565 () Bool)

(declare-fun tb!7617 () Bool)

(assert (=> (and start!96114 (= defaultEntry!882 defaultEntry!882) t!33565) tb!7617))

(declare-fun result!15745 () Bool)

(assert (=> tb!7617 (= result!15745 tp_is_empty!26733)))

(assert (=> b!1089789 t!33565))

(declare-fun b_and!36157 () Bool)

(assert (= b_and!36155 (and (=> t!33565 result!15745) b_and!36157)))

(declare-fun m!1009221 () Bool)

(assert (=> b!1089787 m!1009221))

(declare-fun m!1009223 () Bool)

(assert (=> b!1089785 m!1009223))

(declare-fun m!1009225 () Bool)

(assert (=> mapNonEmpty!41854 m!1009225))

(declare-fun m!1009227 () Bool)

(assert (=> b!1089791 m!1009227))

(declare-fun m!1009229 () Bool)

(assert (=> b!1089777 m!1009229))

(declare-fun m!1009231 () Bool)

(assert (=> b!1089789 m!1009231))

(declare-fun m!1009233 () Bool)

(assert (=> b!1089789 m!1009233))

(declare-fun m!1009235 () Bool)

(assert (=> b!1089789 m!1009235))

(declare-fun m!1009237 () Bool)

(assert (=> b!1089789 m!1009237))

(declare-fun m!1009239 () Bool)

(assert (=> b!1089789 m!1009239))

(declare-fun m!1009241 () Bool)

(assert (=> b!1089789 m!1009241))

(declare-fun m!1009243 () Bool)

(assert (=> b!1089789 m!1009243))

(declare-fun m!1009245 () Bool)

(assert (=> b!1089789 m!1009245))

(declare-fun m!1009247 () Bool)

(assert (=> b!1089789 m!1009247))

(declare-fun m!1009249 () Bool)

(assert (=> b!1089789 m!1009249))

(declare-fun m!1009251 () Bool)

(assert (=> b!1089790 m!1009251))

(declare-fun m!1009253 () Bool)

(assert (=> b!1089780 m!1009253))

(declare-fun m!1009255 () Bool)

(assert (=> b!1089788 m!1009255))

(declare-fun m!1009257 () Bool)

(assert (=> start!96114 m!1009257))

(declare-fun m!1009259 () Bool)

(assert (=> start!96114 m!1009259))

(declare-fun m!1009261 () Bool)

(assert (=> start!96114 m!1009261))

(declare-fun m!1009263 () Bool)

(assert (=> b!1089786 m!1009263))

(declare-fun m!1009265 () Bool)

(assert (=> b!1089786 m!1009265))

(declare-fun m!1009267 () Bool)

(assert (=> b!1089783 m!1009267))

(check-sat b_and!36157 (not b!1089790) (not b_lambda!17431) tp_is_empty!26733 (not start!96114) (not b!1089785) (not b_next!22731) (not b!1089788) (not b!1089783) (not mapNonEmpty!41854) (not b!1089780) (not b!1089791) (not b!1089789) (not b!1089787) (not b!1089786))
(check-sat b_and!36157 (not b_next!22731))
