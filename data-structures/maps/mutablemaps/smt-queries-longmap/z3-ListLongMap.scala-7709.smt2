; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96900 () Bool)

(assert start!96900)

(declare-fun b_free!23181 () Bool)

(declare-fun b_next!23181 () Bool)

(assert (=> start!96900 (= b_free!23181 (not b_next!23181))))

(declare-fun tp!81500 () Bool)

(declare-fun b_and!37183 () Bool)

(assert (=> start!96900 (= tp!81500 b_and!37183)))

(declare-fun mapIsEmpty!42637 () Bool)

(declare-fun mapRes!42637 () Bool)

(assert (=> mapIsEmpty!42637 mapRes!42637))

(declare-fun res!735258 () Bool)

(declare-fun e!628939 () Bool)

(assert (=> start!96900 (=> (not res!735258) (not e!628939))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96900 (= res!735258 (validMask!0 mask!1414))))

(assert (=> start!96900 e!628939))

(assert (=> start!96900 tp!81500))

(assert (=> start!96900 true))

(declare-fun tp_is_empty!27231 () Bool)

(assert (=> start!96900 tp_is_empty!27231))

(declare-datatypes ((array!71336 0))(
  ( (array!71337 (arr!34326 (Array (_ BitVec 32) (_ BitVec 64))) (size!34863 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71336)

(declare-fun array_inv!26296 (array!71336) Bool)

(assert (=> start!96900 (array_inv!26296 _keys!1070)))

(declare-datatypes ((V!41435 0))(
  ( (V!41436 (val!13672 Int)) )
))
(declare-datatypes ((ValueCell!12906 0))(
  ( (ValueCellFull!12906 (v!16304 V!41435)) (EmptyCell!12906) )
))
(declare-datatypes ((array!71338 0))(
  ( (array!71339 (arr!34327 (Array (_ BitVec 32) ValueCell!12906)) (size!34864 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71338)

(declare-fun e!628935 () Bool)

(declare-fun array_inv!26297 (array!71338) Bool)

(assert (=> start!96900 (and (array_inv!26297 _values!874) e!628935)))

(declare-fun b!1101802 () Bool)

(declare-fun res!735252 () Bool)

(assert (=> b!1101802 (=> (not res!735252) (not e!628939))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1101802 (= res!735252 (= (select (arr!34326 _keys!1070) i!650) k0!904))))

(declare-fun b!1101803 () Bool)

(declare-fun res!735256 () Bool)

(assert (=> b!1101803 (=> (not res!735256) (not e!628939))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1101803 (= res!735256 (validKeyInArray!0 k0!904))))

(declare-fun b!1101804 () Bool)

(declare-fun res!735257 () Bool)

(assert (=> b!1101804 (=> (not res!735257) (not e!628939))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71336 (_ BitVec 32)) Bool)

(assert (=> b!1101804 (= res!735257 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1101805 () Bool)

(declare-fun res!735255 () Bool)

(assert (=> b!1101805 (=> (not res!735255) (not e!628939))))

(assert (=> b!1101805 (= res!735255 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34863 _keys!1070))))))

(declare-fun b!1101806 () Bool)

(declare-fun res!735249 () Bool)

(assert (=> b!1101806 (=> (not res!735249) (not e!628939))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1101806 (= res!735249 (and (= (size!34864 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34863 _keys!1070) (size!34864 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1101807 () Bool)

(declare-fun e!628934 () Bool)

(assert (=> b!1101807 (= e!628934 true)))

(declare-datatypes ((tuple2!17454 0))(
  ( (tuple2!17455 (_1!8737 (_ BitVec 64)) (_2!8737 V!41435)) )
))
(declare-datatypes ((List!24125 0))(
  ( (Nil!24122) (Cons!24121 (h!25330 tuple2!17454) (t!34359 List!24125)) )
))
(declare-datatypes ((ListLongMap!15435 0))(
  ( (ListLongMap!15436 (toList!7733 List!24125)) )
))
(declare-fun lt!494112 () ListLongMap!15435)

(declare-fun lt!494118 () ListLongMap!15435)

(declare-fun -!970 (ListLongMap!15435 (_ BitVec 64)) ListLongMap!15435)

(assert (=> b!1101807 (= (-!970 lt!494112 k0!904) lt!494118)))

(declare-fun minValue!831 () V!41435)

(declare-fun lt!494109 () ListLongMap!15435)

(declare-datatypes ((Unit!36139 0))(
  ( (Unit!36140) )
))
(declare-fun lt!494116 () Unit!36139)

(declare-fun addRemoveCommutativeForDiffKeys!137 (ListLongMap!15435 (_ BitVec 64) V!41435 (_ BitVec 64)) Unit!36139)

(assert (=> b!1101807 (= lt!494116 (addRemoveCommutativeForDiffKeys!137 lt!494109 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1101808 () Bool)

(declare-fun e!628937 () Bool)

(declare-fun e!628940 () Bool)

(assert (=> b!1101808 (= e!628937 (not e!628940))))

(declare-fun res!735251 () Bool)

(assert (=> b!1101808 (=> res!735251 e!628940)))

(assert (=> b!1101808 (= res!735251 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun lt!494108 () ListLongMap!15435)

(declare-fun zeroValue!831 () V!41435)

(declare-fun getCurrentListMap!4418 (array!71336 array!71338 (_ BitVec 32) (_ BitVec 32) V!41435 V!41435 (_ BitVec 32) Int) ListLongMap!15435)

(assert (=> b!1101808 (= lt!494108 (getCurrentListMap!4418 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494117 () array!71336)

(declare-fun lt!494119 () array!71338)

(declare-fun lt!494111 () ListLongMap!15435)

(assert (=> b!1101808 (= lt!494111 (getCurrentListMap!4418 lt!494117 lt!494119 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!494114 () ListLongMap!15435)

(declare-fun lt!494120 () ListLongMap!15435)

(assert (=> b!1101808 (and (= lt!494114 lt!494120) (= lt!494120 lt!494114))))

(assert (=> b!1101808 (= lt!494120 (-!970 lt!494109 k0!904))))

(declare-fun lt!494115 () Unit!36139)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!230 (array!71336 array!71338 (_ BitVec 32) (_ BitVec 32) V!41435 V!41435 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36139)

(assert (=> b!1101808 (= lt!494115 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!230 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4205 (array!71336 array!71338 (_ BitVec 32) (_ BitVec 32) V!41435 V!41435 (_ BitVec 32) Int) ListLongMap!15435)

(assert (=> b!1101808 (= lt!494114 (getCurrentListMapNoExtraKeys!4205 lt!494117 lt!494119 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2336 (Int (_ BitVec 64)) V!41435)

(assert (=> b!1101808 (= lt!494119 (array!71339 (store (arr!34327 _values!874) i!650 (ValueCellFull!12906 (dynLambda!2336 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34864 _values!874)))))

(assert (=> b!1101808 (= lt!494109 (getCurrentListMapNoExtraKeys!4205 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71336 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1101808 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!494110 () Unit!36139)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71336 (_ BitVec 64) (_ BitVec 32)) Unit!36139)

(assert (=> b!1101808 (= lt!494110 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1101809 () Bool)

(declare-fun res!735253 () Bool)

(assert (=> b!1101809 (=> (not res!735253) (not e!628937))))

(declare-datatypes ((List!24126 0))(
  ( (Nil!24123) (Cons!24122 (h!25331 (_ BitVec 64)) (t!34360 List!24126)) )
))
(declare-fun arrayNoDuplicates!0 (array!71336 (_ BitVec 32) List!24126) Bool)

(assert (=> b!1101809 (= res!735253 (arrayNoDuplicates!0 lt!494117 #b00000000000000000000000000000000 Nil!24123))))

(declare-fun b!1101810 () Bool)

(declare-fun e!628938 () Bool)

(assert (=> b!1101810 (= e!628938 tp_is_empty!27231)))

(declare-fun b!1101811 () Bool)

(assert (=> b!1101811 (= e!628935 (and e!628938 mapRes!42637))))

(declare-fun condMapEmpty!42637 () Bool)

(declare-fun mapDefault!42637 () ValueCell!12906)

(assert (=> b!1101811 (= condMapEmpty!42637 (= (arr!34327 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12906)) mapDefault!42637)))))

(declare-fun b!1101812 () Bool)

(declare-fun res!735254 () Bool)

(assert (=> b!1101812 (=> (not res!735254) (not e!628939))))

(assert (=> b!1101812 (= res!735254 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24123))))

(declare-fun b!1101813 () Bool)

(assert (=> b!1101813 (= e!628940 e!628934)))

(declare-fun res!735250 () Bool)

(assert (=> b!1101813 (=> res!735250 e!628934)))

(assert (=> b!1101813 (= res!735250 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(assert (=> b!1101813 (= lt!494108 lt!494112)))

(declare-fun lt!494113 () tuple2!17454)

(declare-fun +!3365 (ListLongMap!15435 tuple2!17454) ListLongMap!15435)

(assert (=> b!1101813 (= lt!494112 (+!3365 lt!494109 lt!494113))))

(assert (=> b!1101813 (= lt!494111 lt!494118)))

(assert (=> b!1101813 (= lt!494118 (+!3365 lt!494120 lt!494113))))

(assert (=> b!1101813 (= lt!494111 (+!3365 lt!494114 lt!494113))))

(assert (=> b!1101813 (= lt!494113 (tuple2!17455 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1101814 () Bool)

(assert (=> b!1101814 (= e!628939 e!628937)))

(declare-fun res!735248 () Bool)

(assert (=> b!1101814 (=> (not res!735248) (not e!628937))))

(assert (=> b!1101814 (= res!735248 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!494117 mask!1414))))

(assert (=> b!1101814 (= lt!494117 (array!71337 (store (arr!34326 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34863 _keys!1070)))))

(declare-fun b!1101815 () Bool)

(declare-fun e!628941 () Bool)

(assert (=> b!1101815 (= e!628941 tp_is_empty!27231)))

(declare-fun mapNonEmpty!42637 () Bool)

(declare-fun tp!81501 () Bool)

(assert (=> mapNonEmpty!42637 (= mapRes!42637 (and tp!81501 e!628941))))

(declare-fun mapRest!42637 () (Array (_ BitVec 32) ValueCell!12906))

(declare-fun mapValue!42637 () ValueCell!12906)

(declare-fun mapKey!42637 () (_ BitVec 32))

(assert (=> mapNonEmpty!42637 (= (arr!34327 _values!874) (store mapRest!42637 mapKey!42637 mapValue!42637))))

(assert (= (and start!96900 res!735258) b!1101806))

(assert (= (and b!1101806 res!735249) b!1101804))

(assert (= (and b!1101804 res!735257) b!1101812))

(assert (= (and b!1101812 res!735254) b!1101805))

(assert (= (and b!1101805 res!735255) b!1101803))

(assert (= (and b!1101803 res!735256) b!1101802))

(assert (= (and b!1101802 res!735252) b!1101814))

(assert (= (and b!1101814 res!735248) b!1101809))

(assert (= (and b!1101809 res!735253) b!1101808))

(assert (= (and b!1101808 (not res!735251)) b!1101813))

(assert (= (and b!1101813 (not res!735250)) b!1101807))

(assert (= (and b!1101811 condMapEmpty!42637) mapIsEmpty!42637))

(assert (= (and b!1101811 (not condMapEmpty!42637)) mapNonEmpty!42637))

(get-info :version)

(assert (= (and mapNonEmpty!42637 ((_ is ValueCellFull!12906) mapValue!42637)) b!1101815))

(assert (= (and b!1101811 ((_ is ValueCellFull!12906) mapDefault!42637)) b!1101810))

(assert (= start!96900 b!1101811))

(declare-fun b_lambda!18169 () Bool)

(assert (=> (not b_lambda!18169) (not b!1101808)))

(declare-fun t!34358 () Bool)

(declare-fun tb!8055 () Bool)

(assert (=> (and start!96900 (= defaultEntry!882 defaultEntry!882) t!34358) tb!8055))

(declare-fun result!16645 () Bool)

(assert (=> tb!8055 (= result!16645 tp_is_empty!27231)))

(assert (=> b!1101808 t!34358))

(declare-fun b_and!37185 () Bool)

(assert (= b_and!37183 (and (=> t!34358 result!16645) b_and!37185)))

(declare-fun m!1022155 () Bool)

(assert (=> b!1101813 m!1022155))

(declare-fun m!1022157 () Bool)

(assert (=> b!1101813 m!1022157))

(declare-fun m!1022159 () Bool)

(assert (=> b!1101813 m!1022159))

(declare-fun m!1022161 () Bool)

(assert (=> b!1101808 m!1022161))

(declare-fun m!1022163 () Bool)

(assert (=> b!1101808 m!1022163))

(declare-fun m!1022165 () Bool)

(assert (=> b!1101808 m!1022165))

(declare-fun m!1022167 () Bool)

(assert (=> b!1101808 m!1022167))

(declare-fun m!1022169 () Bool)

(assert (=> b!1101808 m!1022169))

(declare-fun m!1022171 () Bool)

(assert (=> b!1101808 m!1022171))

(declare-fun m!1022173 () Bool)

(assert (=> b!1101808 m!1022173))

(declare-fun m!1022175 () Bool)

(assert (=> b!1101808 m!1022175))

(declare-fun m!1022177 () Bool)

(assert (=> b!1101808 m!1022177))

(declare-fun m!1022179 () Bool)

(assert (=> b!1101808 m!1022179))

(declare-fun m!1022181 () Bool)

(assert (=> start!96900 m!1022181))

(declare-fun m!1022183 () Bool)

(assert (=> start!96900 m!1022183))

(declare-fun m!1022185 () Bool)

(assert (=> start!96900 m!1022185))

(declare-fun m!1022187 () Bool)

(assert (=> b!1101812 m!1022187))

(declare-fun m!1022189 () Bool)

(assert (=> b!1101809 m!1022189))

(declare-fun m!1022191 () Bool)

(assert (=> b!1101807 m!1022191))

(declare-fun m!1022193 () Bool)

(assert (=> b!1101807 m!1022193))

(declare-fun m!1022195 () Bool)

(assert (=> b!1101814 m!1022195))

(declare-fun m!1022197 () Bool)

(assert (=> b!1101814 m!1022197))

(declare-fun m!1022199 () Bool)

(assert (=> b!1101802 m!1022199))

(declare-fun m!1022201 () Bool)

(assert (=> b!1101803 m!1022201))

(declare-fun m!1022203 () Bool)

(assert (=> mapNonEmpty!42637 m!1022203))

(declare-fun m!1022205 () Bool)

(assert (=> b!1101804 m!1022205))

(check-sat (not start!96900) (not b!1101814) tp_is_empty!27231 (not b!1101808) b_and!37185 (not b!1101813) (not b!1101807) (not b_lambda!18169) (not b_next!23181) (not mapNonEmpty!42637) (not b!1101804) (not b!1101812) (not b!1101809) (not b!1101803))
(check-sat b_and!37185 (not b_next!23181))
