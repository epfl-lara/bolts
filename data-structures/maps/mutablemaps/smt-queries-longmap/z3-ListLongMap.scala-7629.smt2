; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96132 () Bool)

(assert start!96132)

(declare-fun b_free!22749 () Bool)

(declare-fun b_next!22749 () Bool)

(assert (=> start!96132 (= b_free!22749 (not b_next!22749))))

(declare-fun tp!80097 () Bool)

(declare-fun b_and!36191 () Bool)

(assert (=> start!96132 (= tp!80097 b_and!36191)))

(declare-fun b!1090177 () Bool)

(declare-fun e!622696 () Bool)

(assert (=> b!1090177 (= e!622696 true)))

(declare-datatypes ((V!40795 0))(
  ( (V!40796 (val!13432 Int)) )
))
(declare-datatypes ((tuple2!17144 0))(
  ( (tuple2!17145 (_1!8582 (_ BitVec 64)) (_2!8582 V!40795)) )
))
(declare-datatypes ((List!23783 0))(
  ( (Nil!23780) (Cons!23779 (h!24988 tuple2!17144) (t!33597 List!23783)) )
))
(declare-datatypes ((ListLongMap!15125 0))(
  ( (ListLongMap!15126 (toList!7578 List!23783)) )
))
(declare-fun lt!486327 () ListLongMap!15125)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun lt!486323 () ListLongMap!15125)

(declare-fun -!856 (ListLongMap!15125 (_ BitVec 64)) ListLongMap!15125)

(assert (=> b!1090177 (= (-!856 lt!486327 k0!904) lt!486323)))

(declare-fun minValue!831 () V!40795)

(declare-fun lt!486326 () ListLongMap!15125)

(declare-datatypes ((Unit!35827 0))(
  ( (Unit!35828) )
))
(declare-fun lt!486325 () Unit!35827)

(declare-fun addRemoveCommutativeForDiffKeys!85 (ListLongMap!15125 (_ BitVec 64) V!40795 (_ BitVec 64)) Unit!35827)

(assert (=> b!1090177 (= lt!486325 (addRemoveCommutativeForDiffKeys!85 lt!486326 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun mapNonEmpty!41881 () Bool)

(declare-fun mapRes!41881 () Bool)

(declare-fun tp!80096 () Bool)

(declare-fun e!622694 () Bool)

(assert (=> mapNonEmpty!41881 (= mapRes!41881 (and tp!80096 e!622694))))

(declare-datatypes ((ValueCell!12666 0))(
  ( (ValueCellFull!12666 (v!16054 V!40795)) (EmptyCell!12666) )
))
(declare-datatypes ((array!70390 0))(
  ( (array!70391 (arr!33865 (Array (_ BitVec 32) ValueCell!12666)) (size!34402 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70390)

(declare-fun mapKey!41881 () (_ BitVec 32))

(declare-fun mapValue!41881 () ValueCell!12666)

(declare-fun mapRest!41881 () (Array (_ BitVec 32) ValueCell!12666))

(assert (=> mapNonEmpty!41881 (= (arr!33865 _values!874) (store mapRest!41881 mapKey!41881 mapValue!41881))))

(declare-fun b!1090178 () Bool)

(declare-fun res!727352 () Bool)

(declare-fun e!622692 () Bool)

(assert (=> b!1090178 (=> (not res!727352) (not e!622692))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1090178 (= res!727352 (validKeyInArray!0 k0!904))))

(declare-fun b!1090179 () Bool)

(declare-fun e!622691 () Bool)

(declare-fun tp_is_empty!26751 () Bool)

(assert (=> b!1090179 (= e!622691 tp_is_empty!26751)))

(declare-fun b!1090180 () Bool)

(declare-fun res!727354 () Bool)

(declare-fun e!622689 () Bool)

(assert (=> b!1090180 (=> (not res!727354) (not e!622689))))

(declare-datatypes ((array!70392 0))(
  ( (array!70393 (arr!33866 (Array (_ BitVec 32) (_ BitVec 64))) (size!34403 (_ BitVec 32))) )
))
(declare-fun lt!486324 () array!70392)

(declare-datatypes ((List!23784 0))(
  ( (Nil!23781) (Cons!23780 (h!24989 (_ BitVec 64)) (t!33598 List!23784)) )
))
(declare-fun arrayNoDuplicates!0 (array!70392 (_ BitVec 32) List!23784) Bool)

(assert (=> b!1090180 (= res!727354 (arrayNoDuplicates!0 lt!486324 #b00000000000000000000000000000000 Nil!23781))))

(declare-fun b!1090181 () Bool)

(declare-fun e!622690 () Bool)

(assert (=> b!1090181 (= e!622690 (and e!622691 mapRes!41881))))

(declare-fun condMapEmpty!41881 () Bool)

(declare-fun mapDefault!41881 () ValueCell!12666)

(assert (=> b!1090181 (= condMapEmpty!41881 (= (arr!33865 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12666)) mapDefault!41881)))))

(declare-fun b!1090182 () Bool)

(declare-fun e!622695 () Bool)

(assert (=> b!1090182 (= e!622689 (not e!622695))))

(declare-fun res!727359 () Bool)

(assert (=> b!1090182 (=> res!727359 e!622695)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1090182 (= res!727359 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun _keys!1070 () array!70392)

(declare-fun zeroValue!831 () V!40795)

(declare-fun lt!486330 () ListLongMap!15125)

(declare-fun getCurrentListMap!4319 (array!70392 array!70390 (_ BitVec 32) (_ BitVec 32) V!40795 V!40795 (_ BitVec 32) Int) ListLongMap!15125)

(assert (=> b!1090182 (= lt!486330 (getCurrentListMap!4319 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486332 () ListLongMap!15125)

(declare-fun lt!486329 () array!70390)

(assert (=> b!1090182 (= lt!486332 (getCurrentListMap!4319 lt!486324 lt!486329 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486334 () ListLongMap!15125)

(declare-fun lt!486328 () ListLongMap!15125)

(assert (=> b!1090182 (and (= lt!486334 lt!486328) (= lt!486328 lt!486334))))

(assert (=> b!1090182 (= lt!486328 (-!856 lt!486326 k0!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun lt!486335 () Unit!35827)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!125 (array!70392 array!70390 (_ BitVec 32) (_ BitVec 32) V!40795 V!40795 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35827)

(assert (=> b!1090182 (= lt!486335 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!125 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4071 (array!70392 array!70390 (_ BitVec 32) (_ BitVec 32) V!40795 V!40795 (_ BitVec 32) Int) ListLongMap!15125)

(assert (=> b!1090182 (= lt!486334 (getCurrentListMapNoExtraKeys!4071 lt!486324 lt!486329 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2207 (Int (_ BitVec 64)) V!40795)

(assert (=> b!1090182 (= lt!486329 (array!70391 (store (arr!33865 _values!874) i!650 (ValueCellFull!12666 (dynLambda!2207 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34402 _values!874)))))

(assert (=> b!1090182 (= lt!486326 (getCurrentListMapNoExtraKeys!4071 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70392 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1090182 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!486333 () Unit!35827)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70392 (_ BitVec 64) (_ BitVec 32)) Unit!35827)

(assert (=> b!1090182 (= lt!486333 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1090183 () Bool)

(declare-fun res!727355 () Bool)

(assert (=> b!1090183 (=> (not res!727355) (not e!622692))))

(assert (=> b!1090183 (= res!727355 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23781))))

(declare-fun b!1090184 () Bool)

(declare-fun res!727358 () Bool)

(assert (=> b!1090184 (=> (not res!727358) (not e!622692))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70392 (_ BitVec 32)) Bool)

(assert (=> b!1090184 (= res!727358 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1090185 () Bool)

(assert (=> b!1090185 (= e!622695 e!622696)))

(declare-fun res!727361 () Bool)

(assert (=> b!1090185 (=> res!727361 e!622696)))

(assert (=> b!1090185 (= res!727361 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(assert (=> b!1090185 (= lt!486330 lt!486327)))

(declare-fun lt!486331 () tuple2!17144)

(declare-fun +!3288 (ListLongMap!15125 tuple2!17144) ListLongMap!15125)

(assert (=> b!1090185 (= lt!486327 (+!3288 lt!486326 lt!486331))))

(assert (=> b!1090185 (= lt!486332 lt!486323)))

(assert (=> b!1090185 (= lt!486323 (+!3288 lt!486328 lt!486331))))

(assert (=> b!1090185 (= lt!486332 (+!3288 lt!486334 lt!486331))))

(assert (=> b!1090185 (= lt!486331 (tuple2!17145 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1090186 () Bool)

(declare-fun res!727351 () Bool)

(assert (=> b!1090186 (=> (not res!727351) (not e!622692))))

(assert (=> b!1090186 (= res!727351 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34403 _keys!1070))))))

(declare-fun res!727357 () Bool)

(assert (=> start!96132 (=> (not res!727357) (not e!622692))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96132 (= res!727357 (validMask!0 mask!1414))))

(assert (=> start!96132 e!622692))

(assert (=> start!96132 tp!80097))

(assert (=> start!96132 true))

(assert (=> start!96132 tp_is_empty!26751))

(declare-fun array_inv!25974 (array!70392) Bool)

(assert (=> start!96132 (array_inv!25974 _keys!1070)))

(declare-fun array_inv!25975 (array!70390) Bool)

(assert (=> start!96132 (and (array_inv!25975 _values!874) e!622690)))

(declare-fun b!1090187 () Bool)

(assert (=> b!1090187 (= e!622694 tp_is_empty!26751)))

(declare-fun b!1090188 () Bool)

(assert (=> b!1090188 (= e!622692 e!622689)))

(declare-fun res!727360 () Bool)

(assert (=> b!1090188 (=> (not res!727360) (not e!622689))))

(assert (=> b!1090188 (= res!727360 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!486324 mask!1414))))

(assert (=> b!1090188 (= lt!486324 (array!70393 (store (arr!33866 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34403 _keys!1070)))))

(declare-fun b!1090189 () Bool)

(declare-fun res!727353 () Bool)

(assert (=> b!1090189 (=> (not res!727353) (not e!622692))))

(assert (=> b!1090189 (= res!727353 (and (= (size!34402 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34403 _keys!1070) (size!34402 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!41881 () Bool)

(assert (=> mapIsEmpty!41881 mapRes!41881))

(declare-fun b!1090190 () Bool)

(declare-fun res!727356 () Bool)

(assert (=> b!1090190 (=> (not res!727356) (not e!622692))))

(assert (=> b!1090190 (= res!727356 (= (select (arr!33866 _keys!1070) i!650) k0!904))))

(assert (= (and start!96132 res!727357) b!1090189))

(assert (= (and b!1090189 res!727353) b!1090184))

(assert (= (and b!1090184 res!727358) b!1090183))

(assert (= (and b!1090183 res!727355) b!1090186))

(assert (= (and b!1090186 res!727351) b!1090178))

(assert (= (and b!1090178 res!727352) b!1090190))

(assert (= (and b!1090190 res!727356) b!1090188))

(assert (= (and b!1090188 res!727360) b!1090180))

(assert (= (and b!1090180 res!727354) b!1090182))

(assert (= (and b!1090182 (not res!727359)) b!1090185))

(assert (= (and b!1090185 (not res!727361)) b!1090177))

(assert (= (and b!1090181 condMapEmpty!41881) mapIsEmpty!41881))

(assert (= (and b!1090181 (not condMapEmpty!41881)) mapNonEmpty!41881))

(get-info :version)

(assert (= (and mapNonEmpty!41881 ((_ is ValueCellFull!12666) mapValue!41881)) b!1090187))

(assert (= (and b!1090181 ((_ is ValueCellFull!12666) mapDefault!41881)) b!1090179))

(assert (= start!96132 b!1090181))

(declare-fun b_lambda!17449 () Bool)

(assert (=> (not b_lambda!17449) (not b!1090182)))

(declare-fun t!33596 () Bool)

(declare-fun tb!7635 () Bool)

(assert (=> (and start!96132 (= defaultEntry!882 defaultEntry!882) t!33596) tb!7635))

(declare-fun result!15781 () Bool)

(assert (=> tb!7635 (= result!15781 tp_is_empty!26751)))

(assert (=> b!1090182 t!33596))

(declare-fun b_and!36193 () Bool)

(assert (= b_and!36191 (and (=> t!33596 result!15781) b_and!36193)))

(declare-fun m!1009681 () Bool)

(assert (=> b!1090180 m!1009681))

(declare-fun m!1009683 () Bool)

(assert (=> b!1090177 m!1009683))

(declare-fun m!1009685 () Bool)

(assert (=> b!1090177 m!1009685))

(declare-fun m!1009687 () Bool)

(assert (=> b!1090184 m!1009687))

(declare-fun m!1009689 () Bool)

(assert (=> b!1090182 m!1009689))

(declare-fun m!1009691 () Bool)

(assert (=> b!1090182 m!1009691))

(declare-fun m!1009693 () Bool)

(assert (=> b!1090182 m!1009693))

(declare-fun m!1009695 () Bool)

(assert (=> b!1090182 m!1009695))

(declare-fun m!1009697 () Bool)

(assert (=> b!1090182 m!1009697))

(declare-fun m!1009699 () Bool)

(assert (=> b!1090182 m!1009699))

(declare-fun m!1009701 () Bool)

(assert (=> b!1090182 m!1009701))

(declare-fun m!1009703 () Bool)

(assert (=> b!1090182 m!1009703))

(declare-fun m!1009705 () Bool)

(assert (=> b!1090182 m!1009705))

(declare-fun m!1009707 () Bool)

(assert (=> b!1090182 m!1009707))

(declare-fun m!1009709 () Bool)

(assert (=> mapNonEmpty!41881 m!1009709))

(declare-fun m!1009711 () Bool)

(assert (=> start!96132 m!1009711))

(declare-fun m!1009713 () Bool)

(assert (=> start!96132 m!1009713))

(declare-fun m!1009715 () Bool)

(assert (=> start!96132 m!1009715))

(declare-fun m!1009717 () Bool)

(assert (=> b!1090183 m!1009717))

(declare-fun m!1009719 () Bool)

(assert (=> b!1090185 m!1009719))

(declare-fun m!1009721 () Bool)

(assert (=> b!1090185 m!1009721))

(declare-fun m!1009723 () Bool)

(assert (=> b!1090185 m!1009723))

(declare-fun m!1009725 () Bool)

(assert (=> b!1090190 m!1009725))

(declare-fun m!1009727 () Bool)

(assert (=> b!1090178 m!1009727))

(declare-fun m!1009729 () Bool)

(assert (=> b!1090188 m!1009729))

(declare-fun m!1009731 () Bool)

(assert (=> b!1090188 m!1009731))

(check-sat (not b_lambda!17449) (not b!1090183) (not b!1090188) tp_is_empty!26751 (not b!1090180) b_and!36193 (not mapNonEmpty!41881) (not b!1090185) (not b!1090177) (not b!1090182) (not b!1090184) (not start!96132) (not b_next!22749) (not b!1090178))
(check-sat b_and!36193 (not b_next!22749))
