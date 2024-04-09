; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95988 () Bool)

(assert start!95988)

(declare-fun b_free!22605 () Bool)

(declare-fun b_next!22605 () Bool)

(assert (=> start!95988 (= b_free!22605 (not b_next!22605))))

(declare-fun tp!79665 () Bool)

(declare-fun b_and!35903 () Bool)

(assert (=> start!95988 (= tp!79665 b_and!35903)))

(declare-fun res!724967 () Bool)

(declare-fun e!620966 () Bool)

(assert (=> start!95988 (=> (not res!724967) (not e!620966))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95988 (= res!724967 (validMask!0 mask!1414))))

(assert (=> start!95988 e!620966))

(assert (=> start!95988 tp!79665))

(assert (=> start!95988 true))

(declare-fun tp_is_empty!26607 () Bool)

(assert (=> start!95988 tp_is_empty!26607))

(declare-datatypes ((array!70108 0))(
  ( (array!70109 (arr!33724 (Array (_ BitVec 32) (_ BitVec 64))) (size!34261 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70108)

(declare-fun array_inv!25872 (array!70108) Bool)

(assert (=> start!95988 (array_inv!25872 _keys!1070)))

(declare-datatypes ((V!40603 0))(
  ( (V!40604 (val!13360 Int)) )
))
(declare-datatypes ((ValueCell!12594 0))(
  ( (ValueCellFull!12594 (v!15982 V!40603)) (EmptyCell!12594) )
))
(declare-datatypes ((array!70110 0))(
  ( (array!70111 (arr!33725 (Array (_ BitVec 32) ValueCell!12594)) (size!34262 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70110)

(declare-fun e!620962 () Bool)

(declare-fun array_inv!25873 (array!70110) Bool)

(assert (=> start!95988 (and (array_inv!25873 _values!874) e!620962)))

(declare-fun b!1086991 () Bool)

(declare-fun e!620967 () Bool)

(assert (=> b!1086991 (= e!620967 tp_is_empty!26607)))

(declare-fun b!1086992 () Bool)

(declare-fun e!620965 () Bool)

(assert (=> b!1086992 (= e!620965 tp_is_empty!26607)))

(declare-fun b!1086993 () Bool)

(declare-fun e!620968 () Bool)

(assert (=> b!1086993 (= e!620966 e!620968)))

(declare-fun res!724964 () Bool)

(assert (=> b!1086993 (=> (not res!724964) (not e!620968))))

(declare-fun lt!483526 () array!70108)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70108 (_ BitVec 32)) Bool)

(assert (=> b!1086993 (= res!724964 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!483526 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1086993 (= lt!483526 (array!70109 (store (arr!33724 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34261 _keys!1070)))))

(declare-fun b!1086994 () Bool)

(declare-fun res!724965 () Bool)

(assert (=> b!1086994 (=> (not res!724965) (not e!620968))))

(declare-datatypes ((List!23658 0))(
  ( (Nil!23655) (Cons!23654 (h!24863 (_ BitVec 64)) (t!33328 List!23658)) )
))
(declare-fun arrayNoDuplicates!0 (array!70108 (_ BitVec 32) List!23658) Bool)

(assert (=> b!1086994 (= res!724965 (arrayNoDuplicates!0 lt!483526 #b00000000000000000000000000000000 Nil!23655))))

(declare-fun b!1086995 () Bool)

(declare-fun res!724963 () Bool)

(assert (=> b!1086995 (=> (not res!724963) (not e!620966))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1086995 (= res!724963 (= (select (arr!33724 _keys!1070) i!650) k0!904))))

(declare-fun b!1086996 () Bool)

(declare-fun e!620963 () Bool)

(assert (=> b!1086996 (= e!620963 true)))

(declare-datatypes ((tuple2!17018 0))(
  ( (tuple2!17019 (_1!8519 (_ BitVec 64)) (_2!8519 V!40603)) )
))
(declare-fun lt!483520 () tuple2!17018)

(declare-datatypes ((List!23659 0))(
  ( (Nil!23656) (Cons!23655 (h!24864 tuple2!17018) (t!33329 List!23659)) )
))
(declare-datatypes ((ListLongMap!14999 0))(
  ( (ListLongMap!15000 (toList!7515 List!23659)) )
))
(declare-fun lt!483531 () ListLongMap!14999)

(declare-fun lt!483533 () ListLongMap!14999)

(declare-fun -!796 (ListLongMap!14999 (_ BitVec 64)) ListLongMap!14999)

(declare-fun +!3242 (ListLongMap!14999 tuple2!17018) ListLongMap!14999)

(assert (=> b!1086996 (= (-!796 lt!483533 k0!904) (+!3242 lt!483531 lt!483520))))

(declare-fun lt!483530 () ListLongMap!14999)

(declare-fun minValue!831 () V!40603)

(declare-datatypes ((Unit!35707 0))(
  ( (Unit!35708) )
))
(declare-fun lt!483529 () Unit!35707)

(declare-fun addRemoveCommutativeForDiffKeys!38 (ListLongMap!14999 (_ BitVec 64) V!40603 (_ BitVec 64)) Unit!35707)

(assert (=> b!1086996 (= lt!483529 (addRemoveCommutativeForDiffKeys!38 lt!483530 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun mapIsEmpty!41665 () Bool)

(declare-fun mapRes!41665 () Bool)

(assert (=> mapIsEmpty!41665 mapRes!41665))

(declare-fun b!1086997 () Bool)

(assert (=> b!1086997 (= e!620962 (and e!620967 mapRes!41665))))

(declare-fun condMapEmpty!41665 () Bool)

(declare-fun mapDefault!41665 () ValueCell!12594)

(assert (=> b!1086997 (= condMapEmpty!41665 (= (arr!33725 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12594)) mapDefault!41665)))))

(declare-fun b!1086998 () Bool)

(declare-fun e!620961 () Bool)

(assert (=> b!1086998 (= e!620968 (not e!620961))))

(declare-fun res!724957 () Bool)

(assert (=> b!1086998 (=> res!724957 e!620961)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1086998 (= res!724957 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun lt!483521 () ListLongMap!14999)

(declare-fun zeroValue!831 () V!40603)

(declare-fun getCurrentListMap!4269 (array!70108 array!70110 (_ BitVec 32) (_ BitVec 32) V!40603 V!40603 (_ BitVec 32) Int) ListLongMap!14999)

(assert (=> b!1086998 (= lt!483521 (getCurrentListMap!4269 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!483527 () array!70110)

(declare-fun lt!483524 () ListLongMap!14999)

(assert (=> b!1086998 (= lt!483524 (getCurrentListMap!4269 lt!483526 lt!483527 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!483532 () ListLongMap!14999)

(declare-fun lt!483528 () ListLongMap!14999)

(assert (=> b!1086998 (and (= lt!483532 lt!483528) (= lt!483528 lt!483532))))

(declare-fun lt!483522 () ListLongMap!14999)

(assert (=> b!1086998 (= lt!483528 (-!796 lt!483522 k0!904))))

(declare-fun lt!483518 () Unit!35707)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!75 (array!70108 array!70110 (_ BitVec 32) (_ BitVec 32) V!40603 V!40603 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35707)

(assert (=> b!1086998 (= lt!483518 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!75 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4021 (array!70108 array!70110 (_ BitVec 32) (_ BitVec 32) V!40603 V!40603 (_ BitVec 32) Int) ListLongMap!14999)

(assert (=> b!1086998 (= lt!483532 (getCurrentListMapNoExtraKeys!4021 lt!483526 lt!483527 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2157 (Int (_ BitVec 64)) V!40603)

(assert (=> b!1086998 (= lt!483527 (array!70111 (store (arr!33725 _values!874) i!650 (ValueCellFull!12594 (dynLambda!2157 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34262 _values!874)))))

(assert (=> b!1086998 (= lt!483522 (getCurrentListMapNoExtraKeys!4021 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70108 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1086998 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!483523 () Unit!35707)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70108 (_ BitVec 64) (_ BitVec 32)) Unit!35707)

(assert (=> b!1086998 (= lt!483523 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapNonEmpty!41665 () Bool)

(declare-fun tp!79664 () Bool)

(assert (=> mapNonEmpty!41665 (= mapRes!41665 (and tp!79664 e!620965))))

(declare-fun mapValue!41665 () ValueCell!12594)

(declare-fun mapRest!41665 () (Array (_ BitVec 32) ValueCell!12594))

(declare-fun mapKey!41665 () (_ BitVec 32))

(assert (=> mapNonEmpty!41665 (= (arr!33725 _values!874) (store mapRest!41665 mapKey!41665 mapValue!41665))))

(declare-fun b!1086999 () Bool)

(declare-fun res!724959 () Bool)

(assert (=> b!1086999 (=> (not res!724959) (not e!620966))))

(assert (=> b!1086999 (= res!724959 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34261 _keys!1070))))))

(declare-fun b!1087000 () Bool)

(assert (=> b!1087000 (= e!620961 e!620963)))

(declare-fun res!724966 () Bool)

(assert (=> b!1087000 (=> res!724966 e!620963)))

(assert (=> b!1087000 (= res!724966 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!483517 () ListLongMap!14999)

(assert (=> b!1087000 (= lt!483531 lt!483517)))

(assert (=> b!1087000 (= lt!483531 (-!796 lt!483530 k0!904))))

(declare-fun lt!483525 () Unit!35707)

(assert (=> b!1087000 (= lt!483525 (addRemoveCommutativeForDiffKeys!38 lt!483522 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(assert (=> b!1087000 (= lt!483524 (+!3242 lt!483517 lt!483520))))

(declare-fun lt!483519 () tuple2!17018)

(assert (=> b!1087000 (= lt!483517 (+!3242 lt!483528 lt!483519))))

(assert (=> b!1087000 (= lt!483521 lt!483533)))

(assert (=> b!1087000 (= lt!483533 (+!3242 lt!483530 lt!483520))))

(assert (=> b!1087000 (= lt!483530 (+!3242 lt!483522 lt!483519))))

(assert (=> b!1087000 (= lt!483524 (+!3242 (+!3242 lt!483532 lt!483519) lt!483520))))

(assert (=> b!1087000 (= lt!483520 (tuple2!17019 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1087000 (= lt!483519 (tuple2!17019 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1087001 () Bool)

(declare-fun res!724960 () Bool)

(assert (=> b!1087001 (=> (not res!724960) (not e!620966))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1087001 (= res!724960 (validKeyInArray!0 k0!904))))

(declare-fun b!1087002 () Bool)

(declare-fun res!724958 () Bool)

(assert (=> b!1087002 (=> (not res!724958) (not e!620966))))

(assert (=> b!1087002 (= res!724958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1087003 () Bool)

(declare-fun res!724962 () Bool)

(assert (=> b!1087003 (=> (not res!724962) (not e!620966))))

(assert (=> b!1087003 (= res!724962 (and (= (size!34262 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34261 _keys!1070) (size!34262 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1087004 () Bool)

(declare-fun res!724961 () Bool)

(assert (=> b!1087004 (=> (not res!724961) (not e!620966))))

(assert (=> b!1087004 (= res!724961 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23655))))

(assert (= (and start!95988 res!724967) b!1087003))

(assert (= (and b!1087003 res!724962) b!1087002))

(assert (= (and b!1087002 res!724958) b!1087004))

(assert (= (and b!1087004 res!724961) b!1086999))

(assert (= (and b!1086999 res!724959) b!1087001))

(assert (= (and b!1087001 res!724960) b!1086995))

(assert (= (and b!1086995 res!724963) b!1086993))

(assert (= (and b!1086993 res!724964) b!1086994))

(assert (= (and b!1086994 res!724965) b!1086998))

(assert (= (and b!1086998 (not res!724957)) b!1087000))

(assert (= (and b!1087000 (not res!724966)) b!1086996))

(assert (= (and b!1086997 condMapEmpty!41665) mapIsEmpty!41665))

(assert (= (and b!1086997 (not condMapEmpty!41665)) mapNonEmpty!41665))

(get-info :version)

(assert (= (and mapNonEmpty!41665 ((_ is ValueCellFull!12594) mapValue!41665)) b!1086992))

(assert (= (and b!1086997 ((_ is ValueCellFull!12594) mapDefault!41665)) b!1086991))

(assert (= start!95988 b!1086997))

(declare-fun b_lambda!17305 () Bool)

(assert (=> (not b_lambda!17305) (not b!1086998)))

(declare-fun t!33327 () Bool)

(declare-fun tb!7491 () Bool)

(assert (=> (and start!95988 (= defaultEntry!882 defaultEntry!882) t!33327) tb!7491))

(declare-fun result!15493 () Bool)

(assert (=> tb!7491 (= result!15493 tp_is_empty!26607)))

(assert (=> b!1086998 t!33327))

(declare-fun b_and!35905 () Bool)

(assert (= b_and!35903 (and (=> t!33327 result!15493) b_and!35905)))

(declare-fun m!1005901 () Bool)

(assert (=> b!1086998 m!1005901))

(declare-fun m!1005903 () Bool)

(assert (=> b!1086998 m!1005903))

(declare-fun m!1005905 () Bool)

(assert (=> b!1086998 m!1005905))

(declare-fun m!1005907 () Bool)

(assert (=> b!1086998 m!1005907))

(declare-fun m!1005909 () Bool)

(assert (=> b!1086998 m!1005909))

(declare-fun m!1005911 () Bool)

(assert (=> b!1086998 m!1005911))

(declare-fun m!1005913 () Bool)

(assert (=> b!1086998 m!1005913))

(declare-fun m!1005915 () Bool)

(assert (=> b!1086998 m!1005915))

(declare-fun m!1005917 () Bool)

(assert (=> b!1086998 m!1005917))

(declare-fun m!1005919 () Bool)

(assert (=> b!1086998 m!1005919))

(declare-fun m!1005921 () Bool)

(assert (=> mapNonEmpty!41665 m!1005921))

(declare-fun m!1005923 () Bool)

(assert (=> b!1087002 m!1005923))

(declare-fun m!1005925 () Bool)

(assert (=> b!1086995 m!1005925))

(declare-fun m!1005927 () Bool)

(assert (=> b!1086994 m!1005927))

(declare-fun m!1005929 () Bool)

(assert (=> b!1086993 m!1005929))

(declare-fun m!1005931 () Bool)

(assert (=> b!1086993 m!1005931))

(declare-fun m!1005933 () Bool)

(assert (=> start!95988 m!1005933))

(declare-fun m!1005935 () Bool)

(assert (=> start!95988 m!1005935))

(declare-fun m!1005937 () Bool)

(assert (=> start!95988 m!1005937))

(declare-fun m!1005939 () Bool)

(assert (=> b!1087000 m!1005939))

(declare-fun m!1005941 () Bool)

(assert (=> b!1087000 m!1005941))

(declare-fun m!1005943 () Bool)

(assert (=> b!1087000 m!1005943))

(declare-fun m!1005945 () Bool)

(assert (=> b!1087000 m!1005945))

(declare-fun m!1005947 () Bool)

(assert (=> b!1087000 m!1005947))

(declare-fun m!1005949 () Bool)

(assert (=> b!1087000 m!1005949))

(declare-fun m!1005951 () Bool)

(assert (=> b!1087000 m!1005951))

(assert (=> b!1087000 m!1005951))

(declare-fun m!1005953 () Bool)

(assert (=> b!1087000 m!1005953))

(declare-fun m!1005955 () Bool)

(assert (=> b!1087004 m!1005955))

(declare-fun m!1005957 () Bool)

(assert (=> b!1087001 m!1005957))

(declare-fun m!1005959 () Bool)

(assert (=> b!1086996 m!1005959))

(declare-fun m!1005961 () Bool)

(assert (=> b!1086996 m!1005961))

(declare-fun m!1005963 () Bool)

(assert (=> b!1086996 m!1005963))

(check-sat tp_is_empty!26607 (not b_next!22605) (not b!1086998) (not b!1086994) (not start!95988) (not b!1086993) (not b!1087001) (not mapNonEmpty!41665) (not b!1087002) (not b_lambda!17305) (not b!1087000) (not b!1087004) b_and!35905 (not b!1086996))
(check-sat b_and!35905 (not b_next!22605))
