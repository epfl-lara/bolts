; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96594 () Bool)

(assert start!96594)

(declare-fun b_free!23085 () Bool)

(declare-fun b_next!23085 () Bool)

(assert (=> start!96594 (= b_free!23085 (not b_next!23085))))

(declare-fun tp!81188 () Bool)

(declare-fun b_and!36879 () Bool)

(assert (=> start!96594 (= tp!81188 b_and!36879)))

(declare-fun b!1098103 () Bool)

(declare-fun e!626778 () Bool)

(declare-fun tp_is_empty!27135 () Bool)

(assert (=> b!1098103 (= e!626778 tp_is_empty!27135)))

(declare-fun b!1098104 () Bool)

(declare-fun res!732959 () Bool)

(declare-fun e!626779 () Bool)

(assert (=> b!1098104 (=> (not res!732959) (not e!626779))))

(declare-datatypes ((array!71134 0))(
  ( (array!71135 (arr!34233 (Array (_ BitVec 32) (_ BitVec 64))) (size!34770 (_ BitVec 32))) )
))
(declare-fun lt!491103 () array!71134)

(declare-datatypes ((List!24047 0))(
  ( (Nil!24044) (Cons!24043 (h!25252 (_ BitVec 64)) (t!34185 List!24047)) )
))
(declare-fun arrayNoDuplicates!0 (array!71134 (_ BitVec 32) List!24047) Bool)

(assert (=> b!1098104 (= res!732959 (arrayNoDuplicates!0 lt!491103 #b00000000000000000000000000000000 Nil!24044))))

(declare-datatypes ((V!41307 0))(
  ( (V!41308 (val!13624 Int)) )
))
(declare-datatypes ((tuple2!17370 0))(
  ( (tuple2!17371 (_1!8695 (_ BitVec 64)) (_2!8695 V!41307)) )
))
(declare-fun lt!491104 () tuple2!17370)

(declare-fun lt!491107 () tuple2!17370)

(declare-datatypes ((List!24048 0))(
  ( (Nil!24045) (Cons!24044 (h!25253 tuple2!17370) (t!34186 List!24048)) )
))
(declare-datatypes ((ListLongMap!15351 0))(
  ( (ListLongMap!15352 (toList!7691 List!24048)) )
))
(declare-fun lt!491098 () ListLongMap!15351)

(declare-fun lt!491099 () ListLongMap!15351)

(declare-fun b!1098105 () Bool)

(declare-fun e!626782 () Bool)

(declare-fun +!3326 (ListLongMap!15351 tuple2!17370) ListLongMap!15351)

(assert (=> b!1098105 (= e!626782 (= lt!491099 (+!3326 (+!3326 lt!491098 lt!491107) lt!491104)))))

(declare-fun res!732957 () Bool)

(declare-fun e!626783 () Bool)

(assert (=> start!96594 (=> (not res!732957) (not e!626783))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96594 (= res!732957 (validMask!0 mask!1414))))

(assert (=> start!96594 e!626783))

(assert (=> start!96594 tp!81188))

(assert (=> start!96594 true))

(assert (=> start!96594 tp_is_empty!27135))

(declare-fun _keys!1070 () array!71134)

(declare-fun array_inv!26230 (array!71134) Bool)

(assert (=> start!96594 (array_inv!26230 _keys!1070)))

(declare-datatypes ((ValueCell!12858 0))(
  ( (ValueCellFull!12858 (v!16248 V!41307)) (EmptyCell!12858) )
))
(declare-datatypes ((array!71136 0))(
  ( (array!71137 (arr!34234 (Array (_ BitVec 32) ValueCell!12858)) (size!34771 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71136)

(declare-fun e!626781 () Bool)

(declare-fun array_inv!26231 (array!71136) Bool)

(assert (=> start!96594 (and (array_inv!26231 _values!874) e!626781)))

(declare-fun b!1098106 () Bool)

(declare-fun e!626780 () Bool)

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1098106 (= e!626780 (not (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!904)))))

(assert (=> b!1098106 e!626782))

(declare-fun res!732966 () Bool)

(assert (=> b!1098106 (=> (not res!732966) (not e!626782))))

(declare-fun lt!491101 () ListLongMap!15351)

(assert (=> b!1098106 (= res!732966 (= lt!491099 (+!3326 (+!3326 lt!491101 lt!491107) lt!491104)))))

(declare-fun minValue!831 () V!41307)

(assert (=> b!1098106 (= lt!491104 (tuple2!17371 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun zeroValue!831 () V!41307)

(assert (=> b!1098106 (= lt!491107 (tuple2!17371 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1098107 () Bool)

(declare-fun e!626784 () Bool)

(declare-fun mapRes!42469 () Bool)

(assert (=> b!1098107 (= e!626781 (and e!626784 mapRes!42469))))

(declare-fun condMapEmpty!42469 () Bool)

(declare-fun mapDefault!42469 () ValueCell!12858)

(assert (=> b!1098107 (= condMapEmpty!42469 (= (arr!34234 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12858)) mapDefault!42469)))))

(declare-fun b!1098108 () Bool)

(declare-fun res!732968 () Bool)

(assert (=> b!1098108 (=> (not res!732968) (not e!626783))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71134 (_ BitVec 32)) Bool)

(assert (=> b!1098108 (= res!732968 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1098109 () Bool)

(declare-fun res!732964 () Bool)

(assert (=> b!1098109 (=> (not res!732964) (not e!626783))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1098109 (= res!732964 (and (= (size!34771 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34770 _keys!1070) (size!34771 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1098110 () Bool)

(assert (=> b!1098110 (= e!626779 (not e!626780))))

(declare-fun res!732967 () Bool)

(assert (=> b!1098110 (=> res!732967 e!626780)))

(assert (=> b!1098110 (= res!732967 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun lt!491102 () ListLongMap!15351)

(declare-fun getCurrentListMap!4389 (array!71134 array!71136 (_ BitVec 32) (_ BitVec 32) V!41307 V!41307 (_ BitVec 32) Int) ListLongMap!15351)

(assert (=> b!1098110 (= lt!491102 (getCurrentListMap!4389 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491106 () array!71136)

(assert (=> b!1098110 (= lt!491099 (getCurrentListMap!4389 lt!491103 lt!491106 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1098110 (and (= lt!491101 lt!491098) (= lt!491098 lt!491101))))

(declare-fun lt!491100 () ListLongMap!15351)

(declare-fun -!936 (ListLongMap!15351 (_ BitVec 64)) ListLongMap!15351)

(assert (=> b!1098110 (= lt!491098 (-!936 lt!491100 k0!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!36055 0))(
  ( (Unit!36056) )
))
(declare-fun lt!491105 () Unit!36055)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!201 (array!71134 array!71136 (_ BitVec 32) (_ BitVec 32) V!41307 V!41307 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36055)

(assert (=> b!1098110 (= lt!491105 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!201 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4176 (array!71134 array!71136 (_ BitVec 32) (_ BitVec 32) V!41307 V!41307 (_ BitVec 32) Int) ListLongMap!15351)

(assert (=> b!1098110 (= lt!491101 (getCurrentListMapNoExtraKeys!4176 lt!491103 lt!491106 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2307 (Int (_ BitVec 64)) V!41307)

(assert (=> b!1098110 (= lt!491106 (array!71137 (store (arr!34234 _values!874) i!650 (ValueCellFull!12858 (dynLambda!2307 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34771 _values!874)))))

(assert (=> b!1098110 (= lt!491100 (getCurrentListMapNoExtraKeys!4176 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!71134 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1098110 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!491097 () Unit!36055)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71134 (_ BitVec 64) (_ BitVec 32)) Unit!36055)

(assert (=> b!1098110 (= lt!491097 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1098111 () Bool)

(declare-fun res!732963 () Bool)

(assert (=> b!1098111 (=> (not res!732963) (not e!626782))))

(assert (=> b!1098111 (= res!732963 (= lt!491102 (+!3326 (+!3326 lt!491100 lt!491107) lt!491104)))))

(declare-fun b!1098112 () Bool)

(declare-fun res!732958 () Bool)

(assert (=> b!1098112 (=> (not res!732958) (not e!626783))))

(assert (=> b!1098112 (= res!732958 (= (select (arr!34233 _keys!1070) i!650) k0!904))))

(declare-fun mapIsEmpty!42469 () Bool)

(assert (=> mapIsEmpty!42469 mapRes!42469))

(declare-fun b!1098113 () Bool)

(declare-fun res!732961 () Bool)

(assert (=> b!1098113 (=> (not res!732961) (not e!626783))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1098113 (= res!732961 (validKeyInArray!0 k0!904))))

(declare-fun mapNonEmpty!42469 () Bool)

(declare-fun tp!81189 () Bool)

(assert (=> mapNonEmpty!42469 (= mapRes!42469 (and tp!81189 e!626778))))

(declare-fun mapRest!42469 () (Array (_ BitVec 32) ValueCell!12858))

(declare-fun mapKey!42469 () (_ BitVec 32))

(declare-fun mapValue!42469 () ValueCell!12858)

(assert (=> mapNonEmpty!42469 (= (arr!34234 _values!874) (store mapRest!42469 mapKey!42469 mapValue!42469))))

(declare-fun b!1098114 () Bool)

(declare-fun res!732965 () Bool)

(assert (=> b!1098114 (=> (not res!732965) (not e!626783))))

(assert (=> b!1098114 (= res!732965 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34770 _keys!1070))))))

(declare-fun b!1098115 () Bool)

(assert (=> b!1098115 (= e!626784 tp_is_empty!27135)))

(declare-fun b!1098116 () Bool)

(assert (=> b!1098116 (= e!626783 e!626779)))

(declare-fun res!732960 () Bool)

(assert (=> b!1098116 (=> (not res!732960) (not e!626779))))

(assert (=> b!1098116 (= res!732960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!491103 mask!1414))))

(assert (=> b!1098116 (= lt!491103 (array!71135 (store (arr!34233 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34770 _keys!1070)))))

(declare-fun b!1098117 () Bool)

(declare-fun res!732962 () Bool)

(assert (=> b!1098117 (=> (not res!732962) (not e!626783))))

(assert (=> b!1098117 (= res!732962 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24044))))

(assert (= (and start!96594 res!732957) b!1098109))

(assert (= (and b!1098109 res!732964) b!1098108))

(assert (= (and b!1098108 res!732968) b!1098117))

(assert (= (and b!1098117 res!732962) b!1098114))

(assert (= (and b!1098114 res!732965) b!1098113))

(assert (= (and b!1098113 res!732961) b!1098112))

(assert (= (and b!1098112 res!732958) b!1098116))

(assert (= (and b!1098116 res!732960) b!1098104))

(assert (= (and b!1098104 res!732959) b!1098110))

(assert (= (and b!1098110 (not res!732967)) b!1098106))

(assert (= (and b!1098106 res!732966) b!1098111))

(assert (= (and b!1098111 res!732963) b!1098105))

(assert (= (and b!1098107 condMapEmpty!42469) mapIsEmpty!42469))

(assert (= (and b!1098107 (not condMapEmpty!42469)) mapNonEmpty!42469))

(get-info :version)

(assert (= (and mapNonEmpty!42469 ((_ is ValueCellFull!12858) mapValue!42469)) b!1098103))

(assert (= (and b!1098107 ((_ is ValueCellFull!12858) mapDefault!42469)) b!1098115))

(assert (= start!96594 b!1098107))

(declare-fun b_lambda!17833 () Bool)

(assert (=> (not b_lambda!17833) (not b!1098110)))

(declare-fun t!34184 () Bool)

(declare-fun tb!7959 () Bool)

(assert (=> (and start!96594 (= defaultEntry!882 defaultEntry!882) t!34184) tb!7959))

(declare-fun result!16437 () Bool)

(assert (=> tb!7959 (= result!16437 tp_is_empty!27135)))

(assert (=> b!1098110 t!34184))

(declare-fun b_and!36881 () Bool)

(assert (= b_and!36879 (and (=> t!34184 result!16437) b_and!36881)))

(declare-fun m!1017833 () Bool)

(assert (=> b!1098110 m!1017833))

(declare-fun m!1017835 () Bool)

(assert (=> b!1098110 m!1017835))

(declare-fun m!1017837 () Bool)

(assert (=> b!1098110 m!1017837))

(declare-fun m!1017839 () Bool)

(assert (=> b!1098110 m!1017839))

(declare-fun m!1017841 () Bool)

(assert (=> b!1098110 m!1017841))

(declare-fun m!1017843 () Bool)

(assert (=> b!1098110 m!1017843))

(declare-fun m!1017845 () Bool)

(assert (=> b!1098110 m!1017845))

(declare-fun m!1017847 () Bool)

(assert (=> b!1098110 m!1017847))

(declare-fun m!1017849 () Bool)

(assert (=> b!1098110 m!1017849))

(declare-fun m!1017851 () Bool)

(assert (=> b!1098110 m!1017851))

(declare-fun m!1017853 () Bool)

(assert (=> start!96594 m!1017853))

(declare-fun m!1017855 () Bool)

(assert (=> start!96594 m!1017855))

(declare-fun m!1017857 () Bool)

(assert (=> start!96594 m!1017857))

(declare-fun m!1017859 () Bool)

(assert (=> b!1098116 m!1017859))

(declare-fun m!1017861 () Bool)

(assert (=> b!1098116 m!1017861))

(declare-fun m!1017863 () Bool)

(assert (=> b!1098104 m!1017863))

(declare-fun m!1017865 () Bool)

(assert (=> mapNonEmpty!42469 m!1017865))

(declare-fun m!1017867 () Bool)

(assert (=> b!1098112 m!1017867))

(declare-fun m!1017869 () Bool)

(assert (=> b!1098106 m!1017869))

(assert (=> b!1098106 m!1017869))

(declare-fun m!1017871 () Bool)

(assert (=> b!1098106 m!1017871))

(declare-fun m!1017873 () Bool)

(assert (=> b!1098117 m!1017873))

(declare-fun m!1017875 () Bool)

(assert (=> b!1098105 m!1017875))

(assert (=> b!1098105 m!1017875))

(declare-fun m!1017877 () Bool)

(assert (=> b!1098105 m!1017877))

(declare-fun m!1017879 () Bool)

(assert (=> b!1098111 m!1017879))

(assert (=> b!1098111 m!1017879))

(declare-fun m!1017881 () Bool)

(assert (=> b!1098111 m!1017881))

(declare-fun m!1017883 () Bool)

(assert (=> b!1098113 m!1017883))

(declare-fun m!1017885 () Bool)

(assert (=> b!1098108 m!1017885))

(check-sat (not b_next!23085) (not b!1098108) (not b!1098116) (not b!1098117) tp_is_empty!27135 (not b!1098110) (not b!1098111) (not mapNonEmpty!42469) (not b_lambda!17833) (not b!1098106) (not b!1098104) b_and!36881 (not b!1098113) (not start!96594) (not b!1098105))
(check-sat b_and!36881 (not b_next!23085))
(get-model)

(declare-fun b_lambda!17837 () Bool)

(assert (= b_lambda!17833 (or (and start!96594 b_free!23085) b_lambda!17837)))

(check-sat (not b!1098108) (not b!1098116) (not b!1098117) tp_is_empty!27135 (not b!1098110) (not b!1098111) (not mapNonEmpty!42469) (not b!1098106) (not b!1098104) b_and!36881 (not b!1098113) (not b_next!23085) (not b_lambda!17837) (not start!96594) (not b!1098105))
(check-sat b_and!36881 (not b_next!23085))
(get-model)

(declare-fun d!130327 () Bool)

(declare-fun res!733009 () Bool)

(declare-fun e!626814 () Bool)

(assert (=> d!130327 (=> res!733009 e!626814)))

(assert (=> d!130327 (= res!733009 (= (select (arr!34233 _keys!1070) #b00000000000000000000000000000000) k0!904))))

(assert (=> d!130327 (= (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000) e!626814)))

(declare-fun b!1098171 () Bool)

(declare-fun e!626815 () Bool)

(assert (=> b!1098171 (= e!626814 e!626815)))

(declare-fun res!733010 () Bool)

(assert (=> b!1098171 (=> (not res!733010) (not e!626815))))

(assert (=> b!1098171 (= res!733010 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!34770 _keys!1070)))))

(declare-fun b!1098172 () Bool)

(assert (=> b!1098172 (= e!626815 (arrayContainsKey!0 _keys!1070 k0!904 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!130327 (not res!733009)) b!1098171))

(assert (= (and b!1098171 res!733010) b!1098172))

(declare-fun m!1017941 () Bool)

(assert (=> d!130327 m!1017941))

(declare-fun m!1017943 () Bool)

(assert (=> b!1098172 m!1017943))

(assert (=> b!1098110 d!130327))

(declare-fun bm!45869 () Bool)

(declare-fun call!45878 () ListLongMap!15351)

(declare-fun call!45877 () ListLongMap!15351)

(assert (=> bm!45869 (= call!45878 call!45877)))

(declare-fun b!1098215 () Bool)

(declare-fun e!626853 () ListLongMap!15351)

(declare-fun call!45872 () ListLongMap!15351)

(assert (=> b!1098215 (= e!626853 (+!3326 call!45872 (tuple2!17371 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(declare-fun b!1098216 () Bool)

(declare-fun e!626849 () Unit!36055)

(declare-fun lt!491202 () Unit!36055)

(assert (=> b!1098216 (= e!626849 lt!491202)))

(declare-fun lt!491191 () ListLongMap!15351)

(assert (=> b!1098216 (= lt!491191 (getCurrentListMapNoExtraKeys!4176 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491206 () (_ BitVec 64))

(assert (=> b!1098216 (= lt!491206 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!491194 () (_ BitVec 64))

(assert (=> b!1098216 (= lt!491194 (select (arr!34233 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!491196 () Unit!36055)

(declare-fun addStillContains!662 (ListLongMap!15351 (_ BitVec 64) V!41307 (_ BitVec 64)) Unit!36055)

(assert (=> b!1098216 (= lt!491196 (addStillContains!662 lt!491191 lt!491206 zeroValue!831 lt!491194))))

(declare-fun contains!6396 (ListLongMap!15351 (_ BitVec 64)) Bool)

(assert (=> b!1098216 (contains!6396 (+!3326 lt!491191 (tuple2!17371 lt!491206 zeroValue!831)) lt!491194)))

(declare-fun lt!491199 () Unit!36055)

(assert (=> b!1098216 (= lt!491199 lt!491196)))

(declare-fun lt!491193 () ListLongMap!15351)

(assert (=> b!1098216 (= lt!491193 (getCurrentListMapNoExtraKeys!4176 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491203 () (_ BitVec 64))

(assert (=> b!1098216 (= lt!491203 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!491200 () (_ BitVec 64))

(assert (=> b!1098216 (= lt!491200 (select (arr!34233 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!491192 () Unit!36055)

(declare-fun addApplyDifferent!514 (ListLongMap!15351 (_ BitVec 64) V!41307 (_ BitVec 64)) Unit!36055)

(assert (=> b!1098216 (= lt!491192 (addApplyDifferent!514 lt!491193 lt!491203 minValue!831 lt!491200))))

(declare-fun apply!980 (ListLongMap!15351 (_ BitVec 64)) V!41307)

(assert (=> b!1098216 (= (apply!980 (+!3326 lt!491193 (tuple2!17371 lt!491203 minValue!831)) lt!491200) (apply!980 lt!491193 lt!491200))))

(declare-fun lt!491197 () Unit!36055)

(assert (=> b!1098216 (= lt!491197 lt!491192)))

(declare-fun lt!491198 () ListLongMap!15351)

(assert (=> b!1098216 (= lt!491198 (getCurrentListMapNoExtraKeys!4176 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491188 () (_ BitVec 64))

(assert (=> b!1098216 (= lt!491188 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!491201 () (_ BitVec 64))

(assert (=> b!1098216 (= lt!491201 (select (arr!34233 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!491204 () Unit!36055)

(assert (=> b!1098216 (= lt!491204 (addApplyDifferent!514 lt!491198 lt!491188 zeroValue!831 lt!491201))))

(assert (=> b!1098216 (= (apply!980 (+!3326 lt!491198 (tuple2!17371 lt!491188 zeroValue!831)) lt!491201) (apply!980 lt!491198 lt!491201))))

(declare-fun lt!491189 () Unit!36055)

(assert (=> b!1098216 (= lt!491189 lt!491204)))

(declare-fun lt!491205 () ListLongMap!15351)

(assert (=> b!1098216 (= lt!491205 (getCurrentListMapNoExtraKeys!4176 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491187 () (_ BitVec 64))

(assert (=> b!1098216 (= lt!491187 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!491195 () (_ BitVec 64))

(assert (=> b!1098216 (= lt!491195 (select (arr!34233 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> b!1098216 (= lt!491202 (addApplyDifferent!514 lt!491205 lt!491187 minValue!831 lt!491195))))

(assert (=> b!1098216 (= (apply!980 (+!3326 lt!491205 (tuple2!17371 lt!491187 minValue!831)) lt!491195) (apply!980 lt!491205 lt!491195))))

(declare-fun b!1098217 () Bool)

(declare-fun e!626851 () ListLongMap!15351)

(assert (=> b!1098217 (= e!626853 e!626851)))

(declare-fun c!108423 () Bool)

(assert (=> b!1098217 (= c!108423 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1098218 () Bool)

(declare-fun e!626845 () Bool)

(assert (=> b!1098218 (= e!626845 (validKeyInArray!0 (select (arr!34233 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1098219 () Bool)

(declare-fun e!626842 () Bool)

(declare-fun call!45876 () Bool)

(assert (=> b!1098219 (= e!626842 (not call!45876))))

(declare-fun bm!45870 () Bool)

(declare-fun call!45874 () ListLongMap!15351)

(assert (=> bm!45870 (= call!45874 call!45878)))

(declare-fun b!1098221 () Bool)

(declare-fun e!626854 () Bool)

(assert (=> b!1098221 (= e!626854 (validKeyInArray!0 (select (arr!34233 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun bm!45871 () Bool)

(declare-fun call!45873 () ListLongMap!15351)

(assert (=> bm!45871 (= call!45873 call!45872)))

(declare-fun bm!45872 () Bool)

(declare-fun lt!491185 () ListLongMap!15351)

(assert (=> bm!45872 (= call!45876 (contains!6396 lt!491185 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1098222 () Bool)

(declare-fun e!626848 () Bool)

(assert (=> b!1098222 (= e!626848 (= (apply!980 lt!491185 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!831))))

(declare-fun b!1098223 () Bool)

(declare-fun e!626844 () ListLongMap!15351)

(assert (=> b!1098223 (= e!626844 call!45873)))

(declare-fun bm!45873 () Bool)

(declare-fun call!45875 () Bool)

(assert (=> bm!45873 (= call!45875 (contains!6396 lt!491185 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1098224 () Bool)

(declare-fun e!626847 () Bool)

(assert (=> b!1098224 (= e!626847 (not call!45875))))

(declare-fun b!1098225 () Bool)

(declare-fun c!108422 () Bool)

(assert (=> b!1098225 (= c!108422 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1098225 (= e!626851 e!626844)))

(declare-fun c!108424 () Bool)

(declare-fun bm!45874 () Bool)

(assert (=> bm!45874 (= call!45872 (+!3326 (ite c!108424 call!45877 (ite c!108423 call!45878 call!45874)) (ite (or c!108424 c!108423) (tuple2!17371 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831) (tuple2!17371 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun b!1098226 () Bool)

(declare-fun res!733033 () Bool)

(declare-fun e!626852 () Bool)

(assert (=> b!1098226 (=> (not res!733033) (not e!626852))))

(assert (=> b!1098226 (= res!733033 e!626842)))

(declare-fun c!108425 () Bool)

(assert (=> b!1098226 (= c!108425 (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!45875 () Bool)

(assert (=> bm!45875 (= call!45877 (getCurrentListMapNoExtraKeys!4176 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1098227 () Bool)

(declare-fun e!626850 () Bool)

(assert (=> b!1098227 (= e!626847 e!626850)))

(declare-fun res!733032 () Bool)

(assert (=> b!1098227 (= res!733032 call!45875)))

(assert (=> b!1098227 (=> (not res!733032) (not e!626850))))

(declare-fun b!1098228 () Bool)

(assert (=> b!1098228 (= e!626851 call!45873)))

(declare-fun b!1098229 () Bool)

(declare-fun Unit!36059 () Unit!36055)

(assert (=> b!1098229 (= e!626849 Unit!36059)))

(declare-fun b!1098230 () Bool)

(declare-fun res!733030 () Bool)

(assert (=> b!1098230 (=> (not res!733030) (not e!626852))))

(declare-fun e!626846 () Bool)

(assert (=> b!1098230 (= res!733030 e!626846)))

(declare-fun res!733035 () Bool)

(assert (=> b!1098230 (=> res!733035 e!626846)))

(assert (=> b!1098230 (= res!733035 (not e!626845))))

(declare-fun res!733034 () Bool)

(assert (=> b!1098230 (=> (not res!733034) (not e!626845))))

(assert (=> b!1098230 (= res!733034 (bvslt #b00000000000000000000000000000000 (size!34770 _keys!1070)))))

(declare-fun b!1098231 () Bool)

(declare-fun e!626843 () Bool)

(assert (=> b!1098231 (= e!626846 e!626843)))

(declare-fun res!733036 () Bool)

(assert (=> b!1098231 (=> (not res!733036) (not e!626843))))

(assert (=> b!1098231 (= res!733036 (contains!6396 lt!491185 (select (arr!34233 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1098231 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34770 _keys!1070)))))

(declare-fun b!1098232 () Bool)

(assert (=> b!1098232 (= e!626852 e!626847)))

(declare-fun c!108426 () Bool)

(assert (=> b!1098232 (= c!108426 (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1098233 () Bool)

(declare-fun get!17630 (ValueCell!12858 V!41307) V!41307)

(assert (=> b!1098233 (= e!626843 (= (apply!980 lt!491185 (select (arr!34233 _keys!1070) #b00000000000000000000000000000000)) (get!17630 (select (arr!34234 _values!874) #b00000000000000000000000000000000) (dynLambda!2307 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1098233 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34771 _values!874)))))

(assert (=> b!1098233 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34770 _keys!1070)))))

(declare-fun d!130329 () Bool)

(assert (=> d!130329 e!626852))

(declare-fun res!733037 () Bool)

(assert (=> d!130329 (=> (not res!733037) (not e!626852))))

(assert (=> d!130329 (= res!733037 (or (bvsge #b00000000000000000000000000000000 (size!34770 _keys!1070)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34770 _keys!1070)))))))

(declare-fun lt!491186 () ListLongMap!15351)

(assert (=> d!130329 (= lt!491185 lt!491186)))

(declare-fun lt!491190 () Unit!36055)

(assert (=> d!130329 (= lt!491190 e!626849)))

(declare-fun c!108421 () Bool)

(assert (=> d!130329 (= c!108421 e!626854)))

(declare-fun res!733029 () Bool)

(assert (=> d!130329 (=> (not res!733029) (not e!626854))))

(assert (=> d!130329 (= res!733029 (bvslt #b00000000000000000000000000000000 (size!34770 _keys!1070)))))

(assert (=> d!130329 (= lt!491186 e!626853)))

(assert (=> d!130329 (= c!108424 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!130329 (validMask!0 mask!1414)))

(assert (=> d!130329 (= (getCurrentListMap!4389 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!491185)))

(declare-fun b!1098220 () Bool)

(assert (=> b!1098220 (= e!626850 (= (apply!980 lt!491185 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!831))))

(declare-fun b!1098234 () Bool)

(assert (=> b!1098234 (= e!626844 call!45874)))

(declare-fun b!1098235 () Bool)

(assert (=> b!1098235 (= e!626842 e!626848)))

(declare-fun res!733031 () Bool)

(assert (=> b!1098235 (= res!733031 call!45876)))

(assert (=> b!1098235 (=> (not res!733031) (not e!626848))))

(assert (= (and d!130329 c!108424) b!1098215))

(assert (= (and d!130329 (not c!108424)) b!1098217))

(assert (= (and b!1098217 c!108423) b!1098228))

(assert (= (and b!1098217 (not c!108423)) b!1098225))

(assert (= (and b!1098225 c!108422) b!1098223))

(assert (= (and b!1098225 (not c!108422)) b!1098234))

(assert (= (or b!1098223 b!1098234) bm!45870))

(assert (= (or b!1098228 bm!45870) bm!45869))

(assert (= (or b!1098228 b!1098223) bm!45871))

(assert (= (or b!1098215 bm!45869) bm!45875))

(assert (= (or b!1098215 bm!45871) bm!45874))

(assert (= (and d!130329 res!733029) b!1098221))

(assert (= (and d!130329 c!108421) b!1098216))

(assert (= (and d!130329 (not c!108421)) b!1098229))

(assert (= (and d!130329 res!733037) b!1098230))

(assert (= (and b!1098230 res!733034) b!1098218))

(assert (= (and b!1098230 (not res!733035)) b!1098231))

(assert (= (and b!1098231 res!733036) b!1098233))

(assert (= (and b!1098230 res!733030) b!1098226))

(assert (= (and b!1098226 c!108425) b!1098235))

(assert (= (and b!1098226 (not c!108425)) b!1098219))

(assert (= (and b!1098235 res!733031) b!1098222))

(assert (= (or b!1098235 b!1098219) bm!45872))

(assert (= (and b!1098226 res!733033) b!1098232))

(assert (= (and b!1098232 c!108426) b!1098227))

(assert (= (and b!1098232 (not c!108426)) b!1098224))

(assert (= (and b!1098227 res!733032) b!1098220))

(assert (= (or b!1098227 b!1098224) bm!45873))

(declare-fun b_lambda!17839 () Bool)

(assert (=> (not b_lambda!17839) (not b!1098233)))

(assert (=> b!1098233 t!34184))

(declare-fun b_and!36887 () Bool)

(assert (= b_and!36881 (and (=> t!34184 result!16437) b_and!36887)))

(declare-fun m!1017945 () Bool)

(assert (=> bm!45873 m!1017945))

(declare-fun m!1017947 () Bool)

(assert (=> b!1098222 m!1017947))

(declare-fun m!1017949 () Bool)

(assert (=> bm!45874 m!1017949))

(assert (=> bm!45875 m!1017847))

(assert (=> b!1098221 m!1017941))

(assert (=> b!1098221 m!1017941))

(declare-fun m!1017951 () Bool)

(assert (=> b!1098221 m!1017951))

(assert (=> b!1098231 m!1017941))

(assert (=> b!1098231 m!1017941))

(declare-fun m!1017953 () Bool)

(assert (=> b!1098231 m!1017953))

(declare-fun m!1017955 () Bool)

(assert (=> b!1098220 m!1017955))

(assert (=> d!130329 m!1017853))

(declare-fun m!1017957 () Bool)

(assert (=> b!1098233 m!1017957))

(assert (=> b!1098233 m!1017941))

(assert (=> b!1098233 m!1017941))

(declare-fun m!1017959 () Bool)

(assert (=> b!1098233 m!1017959))

(assert (=> b!1098233 m!1017957))

(assert (=> b!1098233 m!1017833))

(declare-fun m!1017961 () Bool)

(assert (=> b!1098233 m!1017961))

(assert (=> b!1098233 m!1017833))

(declare-fun m!1017963 () Bool)

(assert (=> bm!45872 m!1017963))

(declare-fun m!1017965 () Bool)

(assert (=> b!1098215 m!1017965))

(assert (=> b!1098218 m!1017941))

(assert (=> b!1098218 m!1017941))

(assert (=> b!1098218 m!1017951))

(declare-fun m!1017967 () Bool)

(assert (=> b!1098216 m!1017967))

(declare-fun m!1017969 () Bool)

(assert (=> b!1098216 m!1017969))

(declare-fun m!1017971 () Bool)

(assert (=> b!1098216 m!1017971))

(declare-fun m!1017973 () Bool)

(assert (=> b!1098216 m!1017973))

(declare-fun m!1017975 () Bool)

(assert (=> b!1098216 m!1017975))

(declare-fun m!1017977 () Bool)

(assert (=> b!1098216 m!1017977))

(declare-fun m!1017979 () Bool)

(assert (=> b!1098216 m!1017979))

(declare-fun m!1017981 () Bool)

(assert (=> b!1098216 m!1017981))

(declare-fun m!1017983 () Bool)

(assert (=> b!1098216 m!1017983))

(declare-fun m!1017985 () Bool)

(assert (=> b!1098216 m!1017985))

(assert (=> b!1098216 m!1017847))

(assert (=> b!1098216 m!1017975))

(assert (=> b!1098216 m!1017941))

(assert (=> b!1098216 m!1017985))

(declare-fun m!1017987 () Bool)

(assert (=> b!1098216 m!1017987))

(assert (=> b!1098216 m!1017969))

(assert (=> b!1098216 m!1017973))

(declare-fun m!1017989 () Bool)

(assert (=> b!1098216 m!1017989))

(declare-fun m!1017991 () Bool)

(assert (=> b!1098216 m!1017991))

(declare-fun m!1017993 () Bool)

(assert (=> b!1098216 m!1017993))

(declare-fun m!1017995 () Bool)

(assert (=> b!1098216 m!1017995))

(assert (=> b!1098110 d!130329))

(declare-fun d!130331 () Bool)

(declare-fun e!626875 () Bool)

(assert (=> d!130331 e!626875))

(declare-fun res!733048 () Bool)

(assert (=> d!130331 (=> (not res!733048) (not e!626875))))

(declare-fun lt!491226 () ListLongMap!15351)

(assert (=> d!130331 (= res!733048 (not (contains!6396 lt!491226 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!626869 () ListLongMap!15351)

(assert (=> d!130331 (= lt!491226 e!626869)))

(declare-fun c!108437 () Bool)

(assert (=> d!130331 (= c!108437 (bvsge #b00000000000000000000000000000000 (size!34770 lt!491103)))))

(assert (=> d!130331 (validMask!0 mask!1414)))

(assert (=> d!130331 (= (getCurrentListMapNoExtraKeys!4176 lt!491103 lt!491106 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!491226)))

(declare-fun b!1098260 () Bool)

(assert (=> b!1098260 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34770 lt!491103)))))

(assert (=> b!1098260 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34771 lt!491106)))))

(declare-fun e!626874 () Bool)

(assert (=> b!1098260 (= e!626874 (= (apply!980 lt!491226 (select (arr!34233 lt!491103) #b00000000000000000000000000000000)) (get!17630 (select (arr!34234 lt!491106) #b00000000000000000000000000000000) (dynLambda!2307 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1098261 () Bool)

(declare-fun e!626873 () Bool)

(declare-fun e!626871 () Bool)

(assert (=> b!1098261 (= e!626873 e!626871)))

(declare-fun c!108438 () Bool)

(assert (=> b!1098261 (= c!108438 (bvslt #b00000000000000000000000000000000 (size!34770 lt!491103)))))

(declare-fun b!1098262 () Bool)

(declare-fun e!626870 () ListLongMap!15351)

(assert (=> b!1098262 (= e!626869 e!626870)))

(declare-fun c!108435 () Bool)

(assert (=> b!1098262 (= c!108435 (validKeyInArray!0 (select (arr!34233 lt!491103) #b00000000000000000000000000000000)))))

(declare-fun b!1098263 () Bool)

(declare-fun res!733049 () Bool)

(assert (=> b!1098263 (=> (not res!733049) (not e!626875))))

(assert (=> b!1098263 (= res!733049 (not (contains!6396 lt!491226 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1098264 () Bool)

(declare-fun call!45881 () ListLongMap!15351)

(assert (=> b!1098264 (= e!626870 call!45881)))

(declare-fun b!1098265 () Bool)

(assert (=> b!1098265 (= e!626875 e!626873)))

(declare-fun c!108436 () Bool)

(declare-fun e!626872 () Bool)

(assert (=> b!1098265 (= c!108436 e!626872)))

(declare-fun res!733046 () Bool)

(assert (=> b!1098265 (=> (not res!733046) (not e!626872))))

(assert (=> b!1098265 (= res!733046 (bvslt #b00000000000000000000000000000000 (size!34770 lt!491103)))))

(declare-fun b!1098266 () Bool)

(assert (=> b!1098266 (= e!626869 (ListLongMap!15352 Nil!24045))))

(declare-fun b!1098267 () Bool)

(declare-fun lt!491227 () Unit!36055)

(declare-fun lt!491221 () Unit!36055)

(assert (=> b!1098267 (= lt!491227 lt!491221)))

(declare-fun lt!491224 () (_ BitVec 64))

(declare-fun lt!491225 () ListLongMap!15351)

(declare-fun lt!491223 () (_ BitVec 64))

(declare-fun lt!491222 () V!41307)

(assert (=> b!1098267 (not (contains!6396 (+!3326 lt!491225 (tuple2!17371 lt!491223 lt!491222)) lt!491224))))

(declare-fun addStillNotContains!275 (ListLongMap!15351 (_ BitVec 64) V!41307 (_ BitVec 64)) Unit!36055)

(assert (=> b!1098267 (= lt!491221 (addStillNotContains!275 lt!491225 lt!491223 lt!491222 lt!491224))))

(assert (=> b!1098267 (= lt!491224 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1098267 (= lt!491222 (get!17630 (select (arr!34234 lt!491106) #b00000000000000000000000000000000) (dynLambda!2307 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1098267 (= lt!491223 (select (arr!34233 lt!491103) #b00000000000000000000000000000000))))

(assert (=> b!1098267 (= lt!491225 call!45881)))

(assert (=> b!1098267 (= e!626870 (+!3326 call!45881 (tuple2!17371 (select (arr!34233 lt!491103) #b00000000000000000000000000000000) (get!17630 (select (arr!34234 lt!491106) #b00000000000000000000000000000000) (dynLambda!2307 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1098268 () Bool)

(declare-fun isEmpty!966 (ListLongMap!15351) Bool)

(assert (=> b!1098268 (= e!626871 (isEmpty!966 lt!491226))))

(declare-fun b!1098269 () Bool)

(assert (=> b!1098269 (= e!626873 e!626874)))

(assert (=> b!1098269 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34770 lt!491103)))))

(declare-fun res!733047 () Bool)

(assert (=> b!1098269 (= res!733047 (contains!6396 lt!491226 (select (arr!34233 lt!491103) #b00000000000000000000000000000000)))))

(assert (=> b!1098269 (=> (not res!733047) (not e!626874))))

(declare-fun b!1098270 () Bool)

(assert (=> b!1098270 (= e!626872 (validKeyInArray!0 (select (arr!34233 lt!491103) #b00000000000000000000000000000000)))))

(assert (=> b!1098270 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1098271 () Bool)

(assert (=> b!1098271 (= e!626871 (= lt!491226 (getCurrentListMapNoExtraKeys!4176 lt!491103 lt!491106 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882)))))

(declare-fun bm!45878 () Bool)

(assert (=> bm!45878 (= call!45881 (getCurrentListMapNoExtraKeys!4176 lt!491103 lt!491106 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882))))

(assert (= (and d!130331 c!108437) b!1098266))

(assert (= (and d!130331 (not c!108437)) b!1098262))

(assert (= (and b!1098262 c!108435) b!1098267))

(assert (= (and b!1098262 (not c!108435)) b!1098264))

(assert (= (or b!1098267 b!1098264) bm!45878))

(assert (= (and d!130331 res!733048) b!1098263))

(assert (= (and b!1098263 res!733049) b!1098265))

(assert (= (and b!1098265 res!733046) b!1098270))

(assert (= (and b!1098265 c!108436) b!1098269))

(assert (= (and b!1098265 (not c!108436)) b!1098261))

(assert (= (and b!1098269 res!733047) b!1098260))

(assert (= (and b!1098261 c!108438) b!1098271))

(assert (= (and b!1098261 (not c!108438)) b!1098268))

(declare-fun b_lambda!17841 () Bool)

(assert (=> (not b_lambda!17841) (not b!1098260)))

(assert (=> b!1098260 t!34184))

(declare-fun b_and!36889 () Bool)

(assert (= b_and!36887 (and (=> t!34184 result!16437) b_and!36889)))

(declare-fun b_lambda!17843 () Bool)

(assert (=> (not b_lambda!17843) (not b!1098267)))

(assert (=> b!1098267 t!34184))

(declare-fun b_and!36891 () Bool)

(assert (= b_and!36889 (and (=> t!34184 result!16437) b_and!36891)))

(declare-fun m!1017997 () Bool)

(assert (=> b!1098271 m!1017997))

(declare-fun m!1017999 () Bool)

(assert (=> b!1098260 m!1017999))

(assert (=> b!1098260 m!1017833))

(declare-fun m!1018001 () Bool)

(assert (=> b!1098260 m!1018001))

(assert (=> b!1098260 m!1017999))

(assert (=> b!1098260 m!1017833))

(declare-fun m!1018003 () Bool)

(assert (=> b!1098260 m!1018003))

(assert (=> b!1098260 m!1018003))

(declare-fun m!1018005 () Bool)

(assert (=> b!1098260 m!1018005))

(declare-fun m!1018007 () Bool)

(assert (=> d!130331 m!1018007))

(assert (=> d!130331 m!1017853))

(assert (=> b!1098269 m!1018003))

(assert (=> b!1098269 m!1018003))

(declare-fun m!1018009 () Bool)

(assert (=> b!1098269 m!1018009))

(assert (=> bm!45878 m!1017997))

(assert (=> b!1098267 m!1017999))

(assert (=> b!1098267 m!1017833))

(assert (=> b!1098267 m!1018001))

(assert (=> b!1098267 m!1017999))

(declare-fun m!1018011 () Bool)

(assert (=> b!1098267 m!1018011))

(assert (=> b!1098267 m!1018003))

(declare-fun m!1018013 () Bool)

(assert (=> b!1098267 m!1018013))

(declare-fun m!1018015 () Bool)

(assert (=> b!1098267 m!1018015))

(declare-fun m!1018017 () Bool)

(assert (=> b!1098267 m!1018017))

(assert (=> b!1098267 m!1018013))

(assert (=> b!1098267 m!1017833))

(assert (=> b!1098262 m!1018003))

(assert (=> b!1098262 m!1018003))

(declare-fun m!1018019 () Bool)

(assert (=> b!1098262 m!1018019))

(declare-fun m!1018021 () Bool)

(assert (=> b!1098263 m!1018021))

(declare-fun m!1018023 () Bool)

(assert (=> b!1098268 m!1018023))

(assert (=> b!1098270 m!1018003))

(assert (=> b!1098270 m!1018003))

(assert (=> b!1098270 m!1018019))

(assert (=> b!1098110 d!130331))

(declare-fun call!45887 () ListLongMap!15351)

(declare-fun bm!45883 () Bool)

(assert (=> bm!45883 (= call!45887 (getCurrentListMapNoExtraKeys!4176 (array!71135 (store (arr!34233 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34770 _keys!1070)) (array!71137 (store (arr!34234 _values!874) i!650 (ValueCellFull!12858 (dynLambda!2307 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34771 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun call!45886 () ListLongMap!15351)

(declare-fun bm!45884 () Bool)

(assert (=> bm!45884 (= call!45886 (getCurrentListMapNoExtraKeys!4176 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1098278 () Bool)

(declare-fun e!626880 () Bool)

(declare-fun e!626881 () Bool)

(assert (=> b!1098278 (= e!626880 e!626881)))

(declare-fun c!108441 () Bool)

(assert (=> b!1098278 (= c!108441 (bvsle #b00000000000000000000000000000000 i!650))))

(declare-fun d!130333 () Bool)

(assert (=> d!130333 e!626880))

(declare-fun res!733052 () Bool)

(assert (=> d!130333 (=> (not res!733052) (not e!626880))))

(assert (=> d!130333 (= res!733052 (and (or (not (bvsle #b00000000000000000000000000000000 i!650)) (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34770 _keys!1070)))) (or (bvsle #b00000000000000000000000000000000 i!650) (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34770 _keys!1070))))))))

(declare-fun lt!491230 () Unit!36055)

(declare-fun choose!1770 (array!71134 array!71136 (_ BitVec 32) (_ BitVec 32) V!41307 V!41307 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36055)

(assert (=> d!130333 (= lt!491230 (choose!1770 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> d!130333 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!34770 _keys!1070)))))

(assert (=> d!130333 (= (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!201 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882) lt!491230)))

(declare-fun b!1098279 () Bool)

(assert (=> b!1098279 (= e!626881 (= call!45887 (-!936 call!45886 k0!904)))))

(assert (=> b!1098279 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34771 _values!874)))))

(declare-fun b!1098280 () Bool)

(assert (=> b!1098280 (= e!626881 (= call!45887 call!45886))))

(assert (=> b!1098280 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34771 _values!874)))))

(assert (= (and d!130333 res!733052) b!1098278))

(assert (= (and b!1098278 c!108441) b!1098279))

(assert (= (and b!1098278 (not c!108441)) b!1098280))

(assert (= (or b!1098279 b!1098280) bm!45884))

(assert (= (or b!1098279 b!1098280) bm!45883))

(declare-fun b_lambda!17845 () Bool)

(assert (=> (not b_lambda!17845) (not bm!45883)))

(assert (=> bm!45883 t!34184))

(declare-fun b_and!36893 () Bool)

(assert (= b_and!36891 (and (=> t!34184 result!16437) b_and!36893)))

(assert (=> bm!45883 m!1017861))

(assert (=> bm!45883 m!1017833))

(assert (=> bm!45883 m!1017841))

(declare-fun m!1018025 () Bool)

(assert (=> bm!45883 m!1018025))

(assert (=> bm!45884 m!1017847))

(declare-fun m!1018027 () Bool)

(assert (=> d!130333 m!1018027))

(declare-fun m!1018029 () Bool)

(assert (=> b!1098279 m!1018029))

(assert (=> b!1098110 d!130333))

(declare-fun d!130335 () Bool)

(declare-fun lt!491233 () ListLongMap!15351)

(assert (=> d!130335 (not (contains!6396 lt!491233 k0!904))))

(declare-fun removeStrictlySorted!80 (List!24048 (_ BitVec 64)) List!24048)

(assert (=> d!130335 (= lt!491233 (ListLongMap!15352 (removeStrictlySorted!80 (toList!7691 lt!491100) k0!904)))))

(assert (=> d!130335 (= (-!936 lt!491100 k0!904) lt!491233)))

(declare-fun bs!32263 () Bool)

(assert (= bs!32263 d!130335))

(declare-fun m!1018031 () Bool)

(assert (=> bs!32263 m!1018031))

(declare-fun m!1018033 () Bool)

(assert (=> bs!32263 m!1018033))

(assert (=> b!1098110 d!130335))

(declare-fun d!130337 () Bool)

(declare-fun e!626888 () Bool)

(assert (=> d!130337 e!626888))

(declare-fun res!733055 () Bool)

(assert (=> d!130337 (=> (not res!733055) (not e!626888))))

(declare-fun lt!491239 () ListLongMap!15351)

(assert (=> d!130337 (= res!733055 (not (contains!6396 lt!491239 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!626882 () ListLongMap!15351)

(assert (=> d!130337 (= lt!491239 e!626882)))

(declare-fun c!108444 () Bool)

(assert (=> d!130337 (= c!108444 (bvsge #b00000000000000000000000000000000 (size!34770 _keys!1070)))))

(assert (=> d!130337 (validMask!0 mask!1414)))

(assert (=> d!130337 (= (getCurrentListMapNoExtraKeys!4176 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!491239)))

(declare-fun b!1098281 () Bool)

(assert (=> b!1098281 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34770 _keys!1070)))))

(assert (=> b!1098281 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34771 _values!874)))))

(declare-fun e!626887 () Bool)

(assert (=> b!1098281 (= e!626887 (= (apply!980 lt!491239 (select (arr!34233 _keys!1070) #b00000000000000000000000000000000)) (get!17630 (select (arr!34234 _values!874) #b00000000000000000000000000000000) (dynLambda!2307 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1098282 () Bool)

(declare-fun e!626886 () Bool)

(declare-fun e!626884 () Bool)

(assert (=> b!1098282 (= e!626886 e!626884)))

(declare-fun c!108445 () Bool)

(assert (=> b!1098282 (= c!108445 (bvslt #b00000000000000000000000000000000 (size!34770 _keys!1070)))))

(declare-fun b!1098283 () Bool)

(declare-fun e!626883 () ListLongMap!15351)

(assert (=> b!1098283 (= e!626882 e!626883)))

(declare-fun c!108442 () Bool)

(assert (=> b!1098283 (= c!108442 (validKeyInArray!0 (select (arr!34233 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1098284 () Bool)

(declare-fun res!733056 () Bool)

(assert (=> b!1098284 (=> (not res!733056) (not e!626888))))

(assert (=> b!1098284 (= res!733056 (not (contains!6396 lt!491239 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1098285 () Bool)

(declare-fun call!45888 () ListLongMap!15351)

(assert (=> b!1098285 (= e!626883 call!45888)))

(declare-fun b!1098286 () Bool)

(assert (=> b!1098286 (= e!626888 e!626886)))

(declare-fun c!108443 () Bool)

(declare-fun e!626885 () Bool)

(assert (=> b!1098286 (= c!108443 e!626885)))

(declare-fun res!733053 () Bool)

(assert (=> b!1098286 (=> (not res!733053) (not e!626885))))

(assert (=> b!1098286 (= res!733053 (bvslt #b00000000000000000000000000000000 (size!34770 _keys!1070)))))

(declare-fun b!1098287 () Bool)

(assert (=> b!1098287 (= e!626882 (ListLongMap!15352 Nil!24045))))

(declare-fun b!1098288 () Bool)

(declare-fun lt!491240 () Unit!36055)

(declare-fun lt!491234 () Unit!36055)

(assert (=> b!1098288 (= lt!491240 lt!491234)))

(declare-fun lt!491237 () (_ BitVec 64))

(declare-fun lt!491235 () V!41307)

(declare-fun lt!491236 () (_ BitVec 64))

(declare-fun lt!491238 () ListLongMap!15351)

(assert (=> b!1098288 (not (contains!6396 (+!3326 lt!491238 (tuple2!17371 lt!491236 lt!491235)) lt!491237))))

(assert (=> b!1098288 (= lt!491234 (addStillNotContains!275 lt!491238 lt!491236 lt!491235 lt!491237))))

(assert (=> b!1098288 (= lt!491237 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1098288 (= lt!491235 (get!17630 (select (arr!34234 _values!874) #b00000000000000000000000000000000) (dynLambda!2307 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1098288 (= lt!491236 (select (arr!34233 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> b!1098288 (= lt!491238 call!45888)))

(assert (=> b!1098288 (= e!626883 (+!3326 call!45888 (tuple2!17371 (select (arr!34233 _keys!1070) #b00000000000000000000000000000000) (get!17630 (select (arr!34234 _values!874) #b00000000000000000000000000000000) (dynLambda!2307 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1098289 () Bool)

(assert (=> b!1098289 (= e!626884 (isEmpty!966 lt!491239))))

(declare-fun b!1098290 () Bool)

(assert (=> b!1098290 (= e!626886 e!626887)))

(assert (=> b!1098290 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34770 _keys!1070)))))

(declare-fun res!733054 () Bool)

(assert (=> b!1098290 (= res!733054 (contains!6396 lt!491239 (select (arr!34233 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1098290 (=> (not res!733054) (not e!626887))))

(declare-fun b!1098291 () Bool)

(assert (=> b!1098291 (= e!626885 (validKeyInArray!0 (select (arr!34233 _keys!1070) #b00000000000000000000000000000000)))))

(assert (=> b!1098291 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1098292 () Bool)

(assert (=> b!1098292 (= e!626884 (= lt!491239 (getCurrentListMapNoExtraKeys!4176 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882)))))

(declare-fun bm!45885 () Bool)

(assert (=> bm!45885 (= call!45888 (getCurrentListMapNoExtraKeys!4176 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!882))))

(assert (= (and d!130337 c!108444) b!1098287))

(assert (= (and d!130337 (not c!108444)) b!1098283))

(assert (= (and b!1098283 c!108442) b!1098288))

(assert (= (and b!1098283 (not c!108442)) b!1098285))

(assert (= (or b!1098288 b!1098285) bm!45885))

(assert (= (and d!130337 res!733055) b!1098284))

(assert (= (and b!1098284 res!733056) b!1098286))

(assert (= (and b!1098286 res!733053) b!1098291))

(assert (= (and b!1098286 c!108443) b!1098290))

(assert (= (and b!1098286 (not c!108443)) b!1098282))

(assert (= (and b!1098290 res!733054) b!1098281))

(assert (= (and b!1098282 c!108445) b!1098292))

(assert (= (and b!1098282 (not c!108445)) b!1098289))

(declare-fun b_lambda!17847 () Bool)

(assert (=> (not b_lambda!17847) (not b!1098281)))

(assert (=> b!1098281 t!34184))

(declare-fun b_and!36895 () Bool)

(assert (= b_and!36893 (and (=> t!34184 result!16437) b_and!36895)))

(declare-fun b_lambda!17849 () Bool)

(assert (=> (not b_lambda!17849) (not b!1098288)))

(assert (=> b!1098288 t!34184))

(declare-fun b_and!36897 () Bool)

(assert (= b_and!36895 (and (=> t!34184 result!16437) b_and!36897)))

(declare-fun m!1018035 () Bool)

(assert (=> b!1098292 m!1018035))

(assert (=> b!1098281 m!1017957))

(assert (=> b!1098281 m!1017833))

(assert (=> b!1098281 m!1017961))

(assert (=> b!1098281 m!1017957))

(assert (=> b!1098281 m!1017833))

(assert (=> b!1098281 m!1017941))

(assert (=> b!1098281 m!1017941))

(declare-fun m!1018037 () Bool)

(assert (=> b!1098281 m!1018037))

(declare-fun m!1018039 () Bool)

(assert (=> d!130337 m!1018039))

(assert (=> d!130337 m!1017853))

(assert (=> b!1098290 m!1017941))

(assert (=> b!1098290 m!1017941))

(declare-fun m!1018041 () Bool)

(assert (=> b!1098290 m!1018041))

(assert (=> bm!45885 m!1018035))

(assert (=> b!1098288 m!1017957))

(assert (=> b!1098288 m!1017833))

(assert (=> b!1098288 m!1017961))

(assert (=> b!1098288 m!1017957))

(declare-fun m!1018043 () Bool)

(assert (=> b!1098288 m!1018043))

(assert (=> b!1098288 m!1017941))

(declare-fun m!1018045 () Bool)

(assert (=> b!1098288 m!1018045))

(declare-fun m!1018047 () Bool)

(assert (=> b!1098288 m!1018047))

(declare-fun m!1018049 () Bool)

(assert (=> b!1098288 m!1018049))

(assert (=> b!1098288 m!1018045))

(assert (=> b!1098288 m!1017833))

(assert (=> b!1098283 m!1017941))

(assert (=> b!1098283 m!1017941))

(assert (=> b!1098283 m!1017951))

(declare-fun m!1018051 () Bool)

(assert (=> b!1098284 m!1018051))

(declare-fun m!1018053 () Bool)

(assert (=> b!1098289 m!1018053))

(assert (=> b!1098291 m!1017941))

(assert (=> b!1098291 m!1017941))

(assert (=> b!1098291 m!1017951))

(assert (=> b!1098110 d!130337))

(declare-fun bm!45886 () Bool)

(declare-fun call!45895 () ListLongMap!15351)

(declare-fun call!45894 () ListLongMap!15351)

(assert (=> bm!45886 (= call!45895 call!45894)))

(declare-fun b!1098293 () Bool)

(declare-fun e!626900 () ListLongMap!15351)

(declare-fun call!45889 () ListLongMap!15351)

(assert (=> b!1098293 (= e!626900 (+!3326 call!45889 (tuple2!17371 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831)))))

(declare-fun b!1098294 () Bool)

(declare-fun e!626896 () Unit!36055)

(declare-fun lt!491258 () Unit!36055)

(assert (=> b!1098294 (= e!626896 lt!491258)))

(declare-fun lt!491247 () ListLongMap!15351)

(assert (=> b!1098294 (= lt!491247 (getCurrentListMapNoExtraKeys!4176 lt!491103 lt!491106 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491262 () (_ BitVec 64))

(assert (=> b!1098294 (= lt!491262 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!491250 () (_ BitVec 64))

(assert (=> b!1098294 (= lt!491250 (select (arr!34233 lt!491103) #b00000000000000000000000000000000))))

(declare-fun lt!491252 () Unit!36055)

(assert (=> b!1098294 (= lt!491252 (addStillContains!662 lt!491247 lt!491262 zeroValue!831 lt!491250))))

(assert (=> b!1098294 (contains!6396 (+!3326 lt!491247 (tuple2!17371 lt!491262 zeroValue!831)) lt!491250)))

(declare-fun lt!491255 () Unit!36055)

(assert (=> b!1098294 (= lt!491255 lt!491252)))

(declare-fun lt!491249 () ListLongMap!15351)

(assert (=> b!1098294 (= lt!491249 (getCurrentListMapNoExtraKeys!4176 lt!491103 lt!491106 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491259 () (_ BitVec 64))

(assert (=> b!1098294 (= lt!491259 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!491256 () (_ BitVec 64))

(assert (=> b!1098294 (= lt!491256 (select (arr!34233 lt!491103) #b00000000000000000000000000000000))))

(declare-fun lt!491248 () Unit!36055)

(assert (=> b!1098294 (= lt!491248 (addApplyDifferent!514 lt!491249 lt!491259 minValue!831 lt!491256))))

(assert (=> b!1098294 (= (apply!980 (+!3326 lt!491249 (tuple2!17371 lt!491259 minValue!831)) lt!491256) (apply!980 lt!491249 lt!491256))))

(declare-fun lt!491253 () Unit!36055)

(assert (=> b!1098294 (= lt!491253 lt!491248)))

(declare-fun lt!491254 () ListLongMap!15351)

(assert (=> b!1098294 (= lt!491254 (getCurrentListMapNoExtraKeys!4176 lt!491103 lt!491106 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491244 () (_ BitVec 64))

(assert (=> b!1098294 (= lt!491244 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!491257 () (_ BitVec 64))

(assert (=> b!1098294 (= lt!491257 (select (arr!34233 lt!491103) #b00000000000000000000000000000000))))

(declare-fun lt!491260 () Unit!36055)

(assert (=> b!1098294 (= lt!491260 (addApplyDifferent!514 lt!491254 lt!491244 zeroValue!831 lt!491257))))

(assert (=> b!1098294 (= (apply!980 (+!3326 lt!491254 (tuple2!17371 lt!491244 zeroValue!831)) lt!491257) (apply!980 lt!491254 lt!491257))))

(declare-fun lt!491245 () Unit!36055)

(assert (=> b!1098294 (= lt!491245 lt!491260)))

(declare-fun lt!491261 () ListLongMap!15351)

(assert (=> b!1098294 (= lt!491261 (getCurrentListMapNoExtraKeys!4176 lt!491103 lt!491106 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!491243 () (_ BitVec 64))

(assert (=> b!1098294 (= lt!491243 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!491251 () (_ BitVec 64))

(assert (=> b!1098294 (= lt!491251 (select (arr!34233 lt!491103) #b00000000000000000000000000000000))))

(assert (=> b!1098294 (= lt!491258 (addApplyDifferent!514 lt!491261 lt!491243 minValue!831 lt!491251))))

(assert (=> b!1098294 (= (apply!980 (+!3326 lt!491261 (tuple2!17371 lt!491243 minValue!831)) lt!491251) (apply!980 lt!491261 lt!491251))))

(declare-fun b!1098295 () Bool)

(declare-fun e!626898 () ListLongMap!15351)

(assert (=> b!1098295 (= e!626900 e!626898)))

(declare-fun c!108448 () Bool)

(assert (=> b!1098295 (= c!108448 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1098296 () Bool)

(declare-fun e!626892 () Bool)

(assert (=> b!1098296 (= e!626892 (validKeyInArray!0 (select (arr!34233 lt!491103) #b00000000000000000000000000000000)))))

(declare-fun b!1098297 () Bool)

(declare-fun e!626889 () Bool)

(declare-fun call!45893 () Bool)

(assert (=> b!1098297 (= e!626889 (not call!45893))))

(declare-fun bm!45887 () Bool)

(declare-fun call!45891 () ListLongMap!15351)

(assert (=> bm!45887 (= call!45891 call!45895)))

(declare-fun b!1098299 () Bool)

(declare-fun e!626901 () Bool)

(assert (=> b!1098299 (= e!626901 (validKeyInArray!0 (select (arr!34233 lt!491103) #b00000000000000000000000000000000)))))

(declare-fun bm!45888 () Bool)

(declare-fun call!45890 () ListLongMap!15351)

(assert (=> bm!45888 (= call!45890 call!45889)))

(declare-fun bm!45889 () Bool)

(declare-fun lt!491241 () ListLongMap!15351)

(assert (=> bm!45889 (= call!45893 (contains!6396 lt!491241 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1098300 () Bool)

(declare-fun e!626895 () Bool)

(assert (=> b!1098300 (= e!626895 (= (apply!980 lt!491241 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!831))))

(declare-fun b!1098301 () Bool)

(declare-fun e!626891 () ListLongMap!15351)

(assert (=> b!1098301 (= e!626891 call!45890)))

(declare-fun bm!45890 () Bool)

(declare-fun call!45892 () Bool)

(assert (=> bm!45890 (= call!45892 (contains!6396 lt!491241 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1098302 () Bool)

(declare-fun e!626894 () Bool)

(assert (=> b!1098302 (= e!626894 (not call!45892))))

(declare-fun b!1098303 () Bool)

(declare-fun c!108447 () Bool)

(assert (=> b!1098303 (= c!108447 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1098303 (= e!626898 e!626891)))

(declare-fun c!108449 () Bool)

(declare-fun bm!45891 () Bool)

(assert (=> bm!45891 (= call!45889 (+!3326 (ite c!108449 call!45894 (ite c!108448 call!45895 call!45891)) (ite (or c!108449 c!108448) (tuple2!17371 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831) (tuple2!17371 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))))

(declare-fun b!1098304 () Bool)

(declare-fun res!733061 () Bool)

(declare-fun e!626899 () Bool)

(assert (=> b!1098304 (=> (not res!733061) (not e!626899))))

(assert (=> b!1098304 (= res!733061 e!626889)))

(declare-fun c!108450 () Bool)

(assert (=> b!1098304 (= c!108450 (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!45892 () Bool)

(assert (=> bm!45892 (= call!45894 (getCurrentListMapNoExtraKeys!4176 lt!491103 lt!491106 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun b!1098305 () Bool)

(declare-fun e!626897 () Bool)

(assert (=> b!1098305 (= e!626894 e!626897)))

(declare-fun res!733060 () Bool)

(assert (=> b!1098305 (= res!733060 call!45892)))

(assert (=> b!1098305 (=> (not res!733060) (not e!626897))))

(declare-fun b!1098306 () Bool)

(assert (=> b!1098306 (= e!626898 call!45890)))

(declare-fun b!1098307 () Bool)

(declare-fun Unit!36060 () Unit!36055)

(assert (=> b!1098307 (= e!626896 Unit!36060)))

(declare-fun b!1098308 () Bool)

(declare-fun res!733058 () Bool)

(assert (=> b!1098308 (=> (not res!733058) (not e!626899))))

(declare-fun e!626893 () Bool)

(assert (=> b!1098308 (= res!733058 e!626893)))

(declare-fun res!733063 () Bool)

(assert (=> b!1098308 (=> res!733063 e!626893)))

(assert (=> b!1098308 (= res!733063 (not e!626892))))

(declare-fun res!733062 () Bool)

(assert (=> b!1098308 (=> (not res!733062) (not e!626892))))

(assert (=> b!1098308 (= res!733062 (bvslt #b00000000000000000000000000000000 (size!34770 lt!491103)))))

(declare-fun b!1098309 () Bool)

(declare-fun e!626890 () Bool)

(assert (=> b!1098309 (= e!626893 e!626890)))

(declare-fun res!733064 () Bool)

(assert (=> b!1098309 (=> (not res!733064) (not e!626890))))

(assert (=> b!1098309 (= res!733064 (contains!6396 lt!491241 (select (arr!34233 lt!491103) #b00000000000000000000000000000000)))))

(assert (=> b!1098309 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34770 lt!491103)))))

(declare-fun b!1098310 () Bool)

(assert (=> b!1098310 (= e!626899 e!626894)))

(declare-fun c!108451 () Bool)

(assert (=> b!1098310 (= c!108451 (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1098311 () Bool)

(assert (=> b!1098311 (= e!626890 (= (apply!980 lt!491241 (select (arr!34233 lt!491103) #b00000000000000000000000000000000)) (get!17630 (select (arr!34234 lt!491106) #b00000000000000000000000000000000) (dynLambda!2307 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1098311 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34771 lt!491106)))))

(assert (=> b!1098311 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34770 lt!491103)))))

(declare-fun d!130339 () Bool)

(assert (=> d!130339 e!626899))

(declare-fun res!733065 () Bool)

(assert (=> d!130339 (=> (not res!733065) (not e!626899))))

(assert (=> d!130339 (= res!733065 (or (bvsge #b00000000000000000000000000000000 (size!34770 lt!491103)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!34770 lt!491103)))))))

(declare-fun lt!491242 () ListLongMap!15351)

(assert (=> d!130339 (= lt!491241 lt!491242)))

(declare-fun lt!491246 () Unit!36055)

(assert (=> d!130339 (= lt!491246 e!626896)))

(declare-fun c!108446 () Bool)

(assert (=> d!130339 (= c!108446 e!626901)))

(declare-fun res!733057 () Bool)

(assert (=> d!130339 (=> (not res!733057) (not e!626901))))

(assert (=> d!130339 (= res!733057 (bvslt #b00000000000000000000000000000000 (size!34770 lt!491103)))))

(assert (=> d!130339 (= lt!491242 e!626900)))

(assert (=> d!130339 (= c!108449 (and (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!130339 (validMask!0 mask!1414)))

(assert (=> d!130339 (= (getCurrentListMap!4389 lt!491103 lt!491106 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882) lt!491241)))

(declare-fun b!1098298 () Bool)

(assert (=> b!1098298 (= e!626897 (= (apply!980 lt!491241 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!831))))

(declare-fun b!1098312 () Bool)

(assert (=> b!1098312 (= e!626891 call!45891)))

(declare-fun b!1098313 () Bool)

(assert (=> b!1098313 (= e!626889 e!626895)))

(declare-fun res!733059 () Bool)

(assert (=> b!1098313 (= res!733059 call!45893)))

(assert (=> b!1098313 (=> (not res!733059) (not e!626895))))

(assert (= (and d!130339 c!108449) b!1098293))

(assert (= (and d!130339 (not c!108449)) b!1098295))

(assert (= (and b!1098295 c!108448) b!1098306))

(assert (= (and b!1098295 (not c!108448)) b!1098303))

(assert (= (and b!1098303 c!108447) b!1098301))

(assert (= (and b!1098303 (not c!108447)) b!1098312))

(assert (= (or b!1098301 b!1098312) bm!45887))

(assert (= (or b!1098306 bm!45887) bm!45886))

(assert (= (or b!1098306 b!1098301) bm!45888))

(assert (= (or b!1098293 bm!45886) bm!45892))

(assert (= (or b!1098293 bm!45888) bm!45891))

(assert (= (and d!130339 res!733057) b!1098299))

(assert (= (and d!130339 c!108446) b!1098294))

(assert (= (and d!130339 (not c!108446)) b!1098307))

(assert (= (and d!130339 res!733065) b!1098308))

(assert (= (and b!1098308 res!733062) b!1098296))

(assert (= (and b!1098308 (not res!733063)) b!1098309))

(assert (= (and b!1098309 res!733064) b!1098311))

(assert (= (and b!1098308 res!733058) b!1098304))

(assert (= (and b!1098304 c!108450) b!1098313))

(assert (= (and b!1098304 (not c!108450)) b!1098297))

(assert (= (and b!1098313 res!733059) b!1098300))

(assert (= (or b!1098313 b!1098297) bm!45889))

(assert (= (and b!1098304 res!733061) b!1098310))

(assert (= (and b!1098310 c!108451) b!1098305))

(assert (= (and b!1098310 (not c!108451)) b!1098302))

(assert (= (and b!1098305 res!733060) b!1098298))

(assert (= (or b!1098305 b!1098302) bm!45890))

(declare-fun b_lambda!17851 () Bool)

(assert (=> (not b_lambda!17851) (not b!1098311)))

(assert (=> b!1098311 t!34184))

(declare-fun b_and!36899 () Bool)

(assert (= b_and!36897 (and (=> t!34184 result!16437) b_and!36899)))

(declare-fun m!1018055 () Bool)

(assert (=> bm!45890 m!1018055))

(declare-fun m!1018057 () Bool)

(assert (=> b!1098300 m!1018057))

(declare-fun m!1018059 () Bool)

(assert (=> bm!45891 m!1018059))

(assert (=> bm!45892 m!1017835))

(assert (=> b!1098299 m!1018003))

(assert (=> b!1098299 m!1018003))

(assert (=> b!1098299 m!1018019))

(assert (=> b!1098309 m!1018003))

(assert (=> b!1098309 m!1018003))

(declare-fun m!1018061 () Bool)

(assert (=> b!1098309 m!1018061))

(declare-fun m!1018063 () Bool)

(assert (=> b!1098298 m!1018063))

(assert (=> d!130339 m!1017853))

(assert (=> b!1098311 m!1017999))

(assert (=> b!1098311 m!1018003))

(assert (=> b!1098311 m!1018003))

(declare-fun m!1018065 () Bool)

(assert (=> b!1098311 m!1018065))

(assert (=> b!1098311 m!1017999))

(assert (=> b!1098311 m!1017833))

(assert (=> b!1098311 m!1018001))

(assert (=> b!1098311 m!1017833))

(declare-fun m!1018067 () Bool)

(assert (=> bm!45889 m!1018067))

(declare-fun m!1018069 () Bool)

(assert (=> b!1098293 m!1018069))

(assert (=> b!1098296 m!1018003))

(assert (=> b!1098296 m!1018003))

(assert (=> b!1098296 m!1018019))

(declare-fun m!1018071 () Bool)

(assert (=> b!1098294 m!1018071))

(declare-fun m!1018073 () Bool)

(assert (=> b!1098294 m!1018073))

(declare-fun m!1018075 () Bool)

(assert (=> b!1098294 m!1018075))

(declare-fun m!1018077 () Bool)

(assert (=> b!1098294 m!1018077))

(declare-fun m!1018079 () Bool)

(assert (=> b!1098294 m!1018079))

(declare-fun m!1018081 () Bool)

(assert (=> b!1098294 m!1018081))

(declare-fun m!1018083 () Bool)

(assert (=> b!1098294 m!1018083))

(declare-fun m!1018085 () Bool)

(assert (=> b!1098294 m!1018085))

(declare-fun m!1018087 () Bool)

(assert (=> b!1098294 m!1018087))

(declare-fun m!1018089 () Bool)

(assert (=> b!1098294 m!1018089))

(assert (=> b!1098294 m!1017835))

(assert (=> b!1098294 m!1018079))

(assert (=> b!1098294 m!1018003))

(assert (=> b!1098294 m!1018089))

(declare-fun m!1018091 () Bool)

(assert (=> b!1098294 m!1018091))

(assert (=> b!1098294 m!1018073))

(assert (=> b!1098294 m!1018077))

(declare-fun m!1018093 () Bool)

(assert (=> b!1098294 m!1018093))

(declare-fun m!1018095 () Bool)

(assert (=> b!1098294 m!1018095))

(declare-fun m!1018097 () Bool)

(assert (=> b!1098294 m!1018097))

(declare-fun m!1018099 () Bool)

(assert (=> b!1098294 m!1018099))

(assert (=> b!1098110 d!130339))

(declare-fun d!130341 () Bool)

(assert (=> d!130341 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!491265 () Unit!36055)

(declare-fun choose!13 (array!71134 (_ BitVec 64) (_ BitVec 32)) Unit!36055)

(assert (=> d!130341 (= lt!491265 (choose!13 _keys!1070 k0!904 i!650))))

(assert (=> d!130341 (bvsge i!650 #b00000000000000000000000000000000)))

(assert (=> d!130341 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650) lt!491265)))

(declare-fun bs!32264 () Bool)

(assert (= bs!32264 d!130341))

(assert (=> bs!32264 m!1017843))

(declare-fun m!1018101 () Bool)

(assert (=> bs!32264 m!1018101))

(assert (=> b!1098110 d!130341))

(declare-fun d!130343 () Bool)

(declare-fun e!626904 () Bool)

(assert (=> d!130343 e!626904))

(declare-fun res!733071 () Bool)

(assert (=> d!130343 (=> (not res!733071) (not e!626904))))

(declare-fun lt!491274 () ListLongMap!15351)

(assert (=> d!130343 (= res!733071 (contains!6396 lt!491274 (_1!8695 lt!491104)))))

(declare-fun lt!491277 () List!24048)

(assert (=> d!130343 (= lt!491274 (ListLongMap!15352 lt!491277))))

(declare-fun lt!491276 () Unit!36055)

(declare-fun lt!491275 () Unit!36055)

(assert (=> d!130343 (= lt!491276 lt!491275)))

(declare-datatypes ((Option!674 0))(
  ( (Some!673 (v!16250 V!41307)) (None!672) )
))
(declare-fun getValueByKey!623 (List!24048 (_ BitVec 64)) Option!674)

(assert (=> d!130343 (= (getValueByKey!623 lt!491277 (_1!8695 lt!491104)) (Some!673 (_2!8695 lt!491104)))))

(declare-fun lemmaContainsTupThenGetReturnValue!298 (List!24048 (_ BitVec 64) V!41307) Unit!36055)

(assert (=> d!130343 (= lt!491275 (lemmaContainsTupThenGetReturnValue!298 lt!491277 (_1!8695 lt!491104) (_2!8695 lt!491104)))))

(declare-fun insertStrictlySorted!390 (List!24048 (_ BitVec 64) V!41307) List!24048)

(assert (=> d!130343 (= lt!491277 (insertStrictlySorted!390 (toList!7691 (+!3326 lt!491098 lt!491107)) (_1!8695 lt!491104) (_2!8695 lt!491104)))))

(assert (=> d!130343 (= (+!3326 (+!3326 lt!491098 lt!491107) lt!491104) lt!491274)))

(declare-fun b!1098318 () Bool)

(declare-fun res!733070 () Bool)

(assert (=> b!1098318 (=> (not res!733070) (not e!626904))))

(assert (=> b!1098318 (= res!733070 (= (getValueByKey!623 (toList!7691 lt!491274) (_1!8695 lt!491104)) (Some!673 (_2!8695 lt!491104))))))

(declare-fun b!1098319 () Bool)

(declare-fun contains!6397 (List!24048 tuple2!17370) Bool)

(assert (=> b!1098319 (= e!626904 (contains!6397 (toList!7691 lt!491274) lt!491104))))

(assert (= (and d!130343 res!733071) b!1098318))

(assert (= (and b!1098318 res!733070) b!1098319))

(declare-fun m!1018103 () Bool)

(assert (=> d!130343 m!1018103))

(declare-fun m!1018105 () Bool)

(assert (=> d!130343 m!1018105))

(declare-fun m!1018107 () Bool)

(assert (=> d!130343 m!1018107))

(declare-fun m!1018109 () Bool)

(assert (=> d!130343 m!1018109))

(declare-fun m!1018111 () Bool)

(assert (=> b!1098318 m!1018111))

(declare-fun m!1018113 () Bool)

(assert (=> b!1098319 m!1018113))

(assert (=> b!1098105 d!130343))

(declare-fun d!130345 () Bool)

(declare-fun e!626905 () Bool)

(assert (=> d!130345 e!626905))

(declare-fun res!733073 () Bool)

(assert (=> d!130345 (=> (not res!733073) (not e!626905))))

(declare-fun lt!491278 () ListLongMap!15351)

(assert (=> d!130345 (= res!733073 (contains!6396 lt!491278 (_1!8695 lt!491107)))))

(declare-fun lt!491281 () List!24048)

(assert (=> d!130345 (= lt!491278 (ListLongMap!15352 lt!491281))))

(declare-fun lt!491280 () Unit!36055)

(declare-fun lt!491279 () Unit!36055)

(assert (=> d!130345 (= lt!491280 lt!491279)))

(assert (=> d!130345 (= (getValueByKey!623 lt!491281 (_1!8695 lt!491107)) (Some!673 (_2!8695 lt!491107)))))

(assert (=> d!130345 (= lt!491279 (lemmaContainsTupThenGetReturnValue!298 lt!491281 (_1!8695 lt!491107) (_2!8695 lt!491107)))))

(assert (=> d!130345 (= lt!491281 (insertStrictlySorted!390 (toList!7691 lt!491098) (_1!8695 lt!491107) (_2!8695 lt!491107)))))

(assert (=> d!130345 (= (+!3326 lt!491098 lt!491107) lt!491278)))

(declare-fun b!1098320 () Bool)

(declare-fun res!733072 () Bool)

(assert (=> b!1098320 (=> (not res!733072) (not e!626905))))

(assert (=> b!1098320 (= res!733072 (= (getValueByKey!623 (toList!7691 lt!491278) (_1!8695 lt!491107)) (Some!673 (_2!8695 lt!491107))))))

(declare-fun b!1098321 () Bool)

(assert (=> b!1098321 (= e!626905 (contains!6397 (toList!7691 lt!491278) lt!491107))))

(assert (= (and d!130345 res!733073) b!1098320))

(assert (= (and b!1098320 res!733072) b!1098321))

(declare-fun m!1018115 () Bool)

(assert (=> d!130345 m!1018115))

(declare-fun m!1018117 () Bool)

(assert (=> d!130345 m!1018117))

(declare-fun m!1018119 () Bool)

(assert (=> d!130345 m!1018119))

(declare-fun m!1018121 () Bool)

(assert (=> d!130345 m!1018121))

(declare-fun m!1018123 () Bool)

(assert (=> b!1098320 m!1018123))

(declare-fun m!1018125 () Bool)

(assert (=> b!1098321 m!1018125))

(assert (=> b!1098105 d!130345))

(declare-fun bm!45895 () Bool)

(declare-fun call!45898 () Bool)

(declare-fun c!108454 () Bool)

(assert (=> bm!45895 (= call!45898 (arrayNoDuplicates!0 _keys!1070 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108454 (Cons!24043 (select (arr!34233 _keys!1070) #b00000000000000000000000000000000) Nil!24044) Nil!24044)))))

(declare-fun b!1098332 () Bool)

(declare-fun e!626914 () Bool)

(declare-fun e!626915 () Bool)

(assert (=> b!1098332 (= e!626914 e!626915)))

(assert (=> b!1098332 (= c!108454 (validKeyInArray!0 (select (arr!34233 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1098333 () Bool)

(assert (=> b!1098333 (= e!626915 call!45898)))

(declare-fun d!130347 () Bool)

(declare-fun res!733081 () Bool)

(declare-fun e!626916 () Bool)

(assert (=> d!130347 (=> res!733081 e!626916)))

(assert (=> d!130347 (= res!733081 (bvsge #b00000000000000000000000000000000 (size!34770 _keys!1070)))))

(assert (=> d!130347 (= (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!24044) e!626916)))

(declare-fun b!1098334 () Bool)

(assert (=> b!1098334 (= e!626916 e!626914)))

(declare-fun res!733082 () Bool)

(assert (=> b!1098334 (=> (not res!733082) (not e!626914))))

(declare-fun e!626917 () Bool)

(assert (=> b!1098334 (= res!733082 (not e!626917))))

(declare-fun res!733080 () Bool)

(assert (=> b!1098334 (=> (not res!733080) (not e!626917))))

(assert (=> b!1098334 (= res!733080 (validKeyInArray!0 (select (arr!34233 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1098335 () Bool)

(assert (=> b!1098335 (= e!626915 call!45898)))

(declare-fun b!1098336 () Bool)

(declare-fun contains!6398 (List!24047 (_ BitVec 64)) Bool)

(assert (=> b!1098336 (= e!626917 (contains!6398 Nil!24044 (select (arr!34233 _keys!1070) #b00000000000000000000000000000000)))))

(assert (= (and d!130347 (not res!733081)) b!1098334))

(assert (= (and b!1098334 res!733080) b!1098336))

(assert (= (and b!1098334 res!733082) b!1098332))

(assert (= (and b!1098332 c!108454) b!1098333))

(assert (= (and b!1098332 (not c!108454)) b!1098335))

(assert (= (or b!1098333 b!1098335) bm!45895))

(assert (=> bm!45895 m!1017941))

(declare-fun m!1018127 () Bool)

(assert (=> bm!45895 m!1018127))

(assert (=> b!1098332 m!1017941))

(assert (=> b!1098332 m!1017941))

(assert (=> b!1098332 m!1017951))

(assert (=> b!1098334 m!1017941))

(assert (=> b!1098334 m!1017941))

(assert (=> b!1098334 m!1017951))

(assert (=> b!1098336 m!1017941))

(assert (=> b!1098336 m!1017941))

(declare-fun m!1018129 () Bool)

(assert (=> b!1098336 m!1018129))

(assert (=> b!1098117 d!130347))

(declare-fun d!130349 () Bool)

(assert (=> d!130349 (= (validKeyInArray!0 k0!904) (and (not (= k0!904 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!904 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1098113 d!130349))

(declare-fun d!130351 () Bool)

(assert (=> d!130351 (= (validMask!0 mask!1414) (and (or (= mask!1414 #b00000000000000000000000000000111) (= mask!1414 #b00000000000000000000000000001111) (= mask!1414 #b00000000000000000000000000011111) (= mask!1414 #b00000000000000000000000000111111) (= mask!1414 #b00000000000000000000000001111111) (= mask!1414 #b00000000000000000000000011111111) (= mask!1414 #b00000000000000000000000111111111) (= mask!1414 #b00000000000000000000001111111111) (= mask!1414 #b00000000000000000000011111111111) (= mask!1414 #b00000000000000000000111111111111) (= mask!1414 #b00000000000000000001111111111111) (= mask!1414 #b00000000000000000011111111111111) (= mask!1414 #b00000000000000000111111111111111) (= mask!1414 #b00000000000000001111111111111111) (= mask!1414 #b00000000000000011111111111111111) (= mask!1414 #b00000000000000111111111111111111) (= mask!1414 #b00000000000001111111111111111111) (= mask!1414 #b00000000000011111111111111111111) (= mask!1414 #b00000000000111111111111111111111) (= mask!1414 #b00000000001111111111111111111111) (= mask!1414 #b00000000011111111111111111111111) (= mask!1414 #b00000000111111111111111111111111) (= mask!1414 #b00000001111111111111111111111111) (= mask!1414 #b00000011111111111111111111111111) (= mask!1414 #b00000111111111111111111111111111) (= mask!1414 #b00001111111111111111111111111111) (= mask!1414 #b00011111111111111111111111111111) (= mask!1414 #b00111111111111111111111111111111)) (bvsle mask!1414 #b00111111111111111111111111111111)))))

(assert (=> start!96594 d!130351))

(declare-fun d!130353 () Bool)

(assert (=> d!130353 (= (array_inv!26230 _keys!1070) (bvsge (size!34770 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> start!96594 d!130353))

(declare-fun d!130355 () Bool)

(assert (=> d!130355 (= (array_inv!26231 _values!874) (bvsge (size!34771 _values!874) #b00000000000000000000000000000000))))

(assert (=> start!96594 d!130355))

(declare-fun bm!45896 () Bool)

(declare-fun call!45899 () Bool)

(declare-fun c!108455 () Bool)

(assert (=> bm!45896 (= call!45899 (arrayNoDuplicates!0 lt!491103 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108455 (Cons!24043 (select (arr!34233 lt!491103) #b00000000000000000000000000000000) Nil!24044) Nil!24044)))))

(declare-fun b!1098337 () Bool)

(declare-fun e!626918 () Bool)

(declare-fun e!626919 () Bool)

(assert (=> b!1098337 (= e!626918 e!626919)))

(assert (=> b!1098337 (= c!108455 (validKeyInArray!0 (select (arr!34233 lt!491103) #b00000000000000000000000000000000)))))

(declare-fun b!1098338 () Bool)

(assert (=> b!1098338 (= e!626919 call!45899)))

(declare-fun d!130357 () Bool)

(declare-fun res!733084 () Bool)

(declare-fun e!626920 () Bool)

(assert (=> d!130357 (=> res!733084 e!626920)))

(assert (=> d!130357 (= res!733084 (bvsge #b00000000000000000000000000000000 (size!34770 lt!491103)))))

(assert (=> d!130357 (= (arrayNoDuplicates!0 lt!491103 #b00000000000000000000000000000000 Nil!24044) e!626920)))

(declare-fun b!1098339 () Bool)

(assert (=> b!1098339 (= e!626920 e!626918)))

(declare-fun res!733085 () Bool)

(assert (=> b!1098339 (=> (not res!733085) (not e!626918))))

(declare-fun e!626921 () Bool)

(assert (=> b!1098339 (= res!733085 (not e!626921))))

(declare-fun res!733083 () Bool)

(assert (=> b!1098339 (=> (not res!733083) (not e!626921))))

(assert (=> b!1098339 (= res!733083 (validKeyInArray!0 (select (arr!34233 lt!491103) #b00000000000000000000000000000000)))))

(declare-fun b!1098340 () Bool)

(assert (=> b!1098340 (= e!626919 call!45899)))

(declare-fun b!1098341 () Bool)

(assert (=> b!1098341 (= e!626921 (contains!6398 Nil!24044 (select (arr!34233 lt!491103) #b00000000000000000000000000000000)))))

(assert (= (and d!130357 (not res!733084)) b!1098339))

(assert (= (and b!1098339 res!733083) b!1098341))

(assert (= (and b!1098339 res!733085) b!1098337))

(assert (= (and b!1098337 c!108455) b!1098338))

(assert (= (and b!1098337 (not c!108455)) b!1098340))

(assert (= (or b!1098338 b!1098340) bm!45896))

(assert (=> bm!45896 m!1018003))

(declare-fun m!1018131 () Bool)

(assert (=> bm!45896 m!1018131))

(assert (=> b!1098337 m!1018003))

(assert (=> b!1098337 m!1018003))

(assert (=> b!1098337 m!1018019))

(assert (=> b!1098339 m!1018003))

(assert (=> b!1098339 m!1018003))

(assert (=> b!1098339 m!1018019))

(assert (=> b!1098341 m!1018003))

(assert (=> b!1098341 m!1018003))

(declare-fun m!1018133 () Bool)

(assert (=> b!1098341 m!1018133))

(assert (=> b!1098104 d!130357))

(declare-fun b!1098350 () Bool)

(declare-fun e!626928 () Bool)

(declare-fun call!45902 () Bool)

(assert (=> b!1098350 (= e!626928 call!45902)))

(declare-fun b!1098351 () Bool)

(declare-fun e!626929 () Bool)

(assert (=> b!1098351 (= e!626929 e!626928)))

(declare-fun c!108458 () Bool)

(assert (=> b!1098351 (= c!108458 (validKeyInArray!0 (select (arr!34233 lt!491103) #b00000000000000000000000000000000)))))

(declare-fun b!1098353 () Bool)

(declare-fun e!626930 () Bool)

(assert (=> b!1098353 (= e!626928 e!626930)))

(declare-fun lt!491289 () (_ BitVec 64))

(assert (=> b!1098353 (= lt!491289 (select (arr!34233 lt!491103) #b00000000000000000000000000000000))))

(declare-fun lt!491290 () Unit!36055)

(assert (=> b!1098353 (= lt!491290 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!491103 lt!491289 #b00000000000000000000000000000000))))

(assert (=> b!1098353 (arrayContainsKey!0 lt!491103 lt!491289 #b00000000000000000000000000000000)))

(declare-fun lt!491288 () Unit!36055)

(assert (=> b!1098353 (= lt!491288 lt!491290)))

(declare-fun res!733090 () Bool)

(declare-datatypes ((SeekEntryResult!9905 0))(
  ( (MissingZero!9905 (index!41990 (_ BitVec 32))) (Found!9905 (index!41991 (_ BitVec 32))) (Intermediate!9905 (undefined!10717 Bool) (index!41992 (_ BitVec 32)) (x!98768 (_ BitVec 32))) (Undefined!9905) (MissingVacant!9905 (index!41993 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!71134 (_ BitVec 32)) SeekEntryResult!9905)

(assert (=> b!1098353 (= res!733090 (= (seekEntryOrOpen!0 (select (arr!34233 lt!491103) #b00000000000000000000000000000000) lt!491103 mask!1414) (Found!9905 #b00000000000000000000000000000000)))))

(assert (=> b!1098353 (=> (not res!733090) (not e!626930))))

(declare-fun bm!45899 () Bool)

(assert (=> bm!45899 (= call!45902 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!491103 mask!1414))))

(declare-fun d!130359 () Bool)

(declare-fun res!733091 () Bool)

(assert (=> d!130359 (=> res!733091 e!626929)))

(assert (=> d!130359 (= res!733091 (bvsge #b00000000000000000000000000000000 (size!34770 lt!491103)))))

(assert (=> d!130359 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!491103 mask!1414) e!626929)))

(declare-fun b!1098352 () Bool)

(assert (=> b!1098352 (= e!626930 call!45902)))

(assert (= (and d!130359 (not res!733091)) b!1098351))

(assert (= (and b!1098351 c!108458) b!1098353))

(assert (= (and b!1098351 (not c!108458)) b!1098350))

(assert (= (and b!1098353 res!733090) b!1098352))

(assert (= (or b!1098352 b!1098350) bm!45899))

(assert (=> b!1098351 m!1018003))

(assert (=> b!1098351 m!1018003))

(assert (=> b!1098351 m!1018019))

(assert (=> b!1098353 m!1018003))

(declare-fun m!1018135 () Bool)

(assert (=> b!1098353 m!1018135))

(declare-fun m!1018137 () Bool)

(assert (=> b!1098353 m!1018137))

(assert (=> b!1098353 m!1018003))

(declare-fun m!1018139 () Bool)

(assert (=> b!1098353 m!1018139))

(declare-fun m!1018141 () Bool)

(assert (=> bm!45899 m!1018141))

(assert (=> b!1098116 d!130359))

(declare-fun b!1098354 () Bool)

(declare-fun e!626931 () Bool)

(declare-fun call!45903 () Bool)

(assert (=> b!1098354 (= e!626931 call!45903)))

(declare-fun b!1098355 () Bool)

(declare-fun e!626932 () Bool)

(assert (=> b!1098355 (= e!626932 e!626931)))

(declare-fun c!108459 () Bool)

(assert (=> b!1098355 (= c!108459 (validKeyInArray!0 (select (arr!34233 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1098357 () Bool)

(declare-fun e!626933 () Bool)

(assert (=> b!1098357 (= e!626931 e!626933)))

(declare-fun lt!491292 () (_ BitVec 64))

(assert (=> b!1098357 (= lt!491292 (select (arr!34233 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!491293 () Unit!36055)

(assert (=> b!1098357 (= lt!491293 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 lt!491292 #b00000000000000000000000000000000))))

(assert (=> b!1098357 (arrayContainsKey!0 _keys!1070 lt!491292 #b00000000000000000000000000000000)))

(declare-fun lt!491291 () Unit!36055)

(assert (=> b!1098357 (= lt!491291 lt!491293)))

(declare-fun res!733092 () Bool)

(assert (=> b!1098357 (= res!733092 (= (seekEntryOrOpen!0 (select (arr!34233 _keys!1070) #b00000000000000000000000000000000) _keys!1070 mask!1414) (Found!9905 #b00000000000000000000000000000000)))))

(assert (=> b!1098357 (=> (not res!733092) (not e!626933))))

(declare-fun bm!45900 () Bool)

(assert (=> bm!45900 (= call!45903 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1070 mask!1414))))

(declare-fun d!130361 () Bool)

(declare-fun res!733093 () Bool)

(assert (=> d!130361 (=> res!733093 e!626932)))

(assert (=> d!130361 (= res!733093 (bvsge #b00000000000000000000000000000000 (size!34770 _keys!1070)))))

(assert (=> d!130361 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414) e!626932)))

(declare-fun b!1098356 () Bool)

(assert (=> b!1098356 (= e!626933 call!45903)))

(assert (= (and d!130361 (not res!733093)) b!1098355))

(assert (= (and b!1098355 c!108459) b!1098357))

(assert (= (and b!1098355 (not c!108459)) b!1098354))

(assert (= (and b!1098357 res!733092) b!1098356))

(assert (= (or b!1098356 b!1098354) bm!45900))

(assert (=> b!1098355 m!1017941))

(assert (=> b!1098355 m!1017941))

(assert (=> b!1098355 m!1017951))

(assert (=> b!1098357 m!1017941))

(declare-fun m!1018143 () Bool)

(assert (=> b!1098357 m!1018143))

(declare-fun m!1018145 () Bool)

(assert (=> b!1098357 m!1018145))

(assert (=> b!1098357 m!1017941))

(declare-fun m!1018147 () Bool)

(assert (=> b!1098357 m!1018147))

(declare-fun m!1018149 () Bool)

(assert (=> bm!45900 m!1018149))

(assert (=> b!1098108 d!130361))

(declare-fun d!130363 () Bool)

(declare-fun e!626934 () Bool)

(assert (=> d!130363 e!626934))

(declare-fun res!733095 () Bool)

(assert (=> d!130363 (=> (not res!733095) (not e!626934))))

(declare-fun lt!491294 () ListLongMap!15351)

(assert (=> d!130363 (= res!733095 (contains!6396 lt!491294 (_1!8695 lt!491104)))))

(declare-fun lt!491297 () List!24048)

(assert (=> d!130363 (= lt!491294 (ListLongMap!15352 lt!491297))))

(declare-fun lt!491296 () Unit!36055)

(declare-fun lt!491295 () Unit!36055)

(assert (=> d!130363 (= lt!491296 lt!491295)))

(assert (=> d!130363 (= (getValueByKey!623 lt!491297 (_1!8695 lt!491104)) (Some!673 (_2!8695 lt!491104)))))

(assert (=> d!130363 (= lt!491295 (lemmaContainsTupThenGetReturnValue!298 lt!491297 (_1!8695 lt!491104) (_2!8695 lt!491104)))))

(assert (=> d!130363 (= lt!491297 (insertStrictlySorted!390 (toList!7691 (+!3326 lt!491100 lt!491107)) (_1!8695 lt!491104) (_2!8695 lt!491104)))))

(assert (=> d!130363 (= (+!3326 (+!3326 lt!491100 lt!491107) lt!491104) lt!491294)))

(declare-fun b!1098358 () Bool)

(declare-fun res!733094 () Bool)

(assert (=> b!1098358 (=> (not res!733094) (not e!626934))))

(assert (=> b!1098358 (= res!733094 (= (getValueByKey!623 (toList!7691 lt!491294) (_1!8695 lt!491104)) (Some!673 (_2!8695 lt!491104))))))

(declare-fun b!1098359 () Bool)

(assert (=> b!1098359 (= e!626934 (contains!6397 (toList!7691 lt!491294) lt!491104))))

(assert (= (and d!130363 res!733095) b!1098358))

(assert (= (and b!1098358 res!733094) b!1098359))

(declare-fun m!1018151 () Bool)

(assert (=> d!130363 m!1018151))

(declare-fun m!1018153 () Bool)

(assert (=> d!130363 m!1018153))

(declare-fun m!1018155 () Bool)

(assert (=> d!130363 m!1018155))

(declare-fun m!1018157 () Bool)

(assert (=> d!130363 m!1018157))

(declare-fun m!1018159 () Bool)

(assert (=> b!1098358 m!1018159))

(declare-fun m!1018161 () Bool)

(assert (=> b!1098359 m!1018161))

(assert (=> b!1098111 d!130363))

(declare-fun d!130365 () Bool)

(declare-fun e!626935 () Bool)

(assert (=> d!130365 e!626935))

(declare-fun res!733097 () Bool)

(assert (=> d!130365 (=> (not res!733097) (not e!626935))))

(declare-fun lt!491298 () ListLongMap!15351)

(assert (=> d!130365 (= res!733097 (contains!6396 lt!491298 (_1!8695 lt!491107)))))

(declare-fun lt!491301 () List!24048)

(assert (=> d!130365 (= lt!491298 (ListLongMap!15352 lt!491301))))

(declare-fun lt!491300 () Unit!36055)

(declare-fun lt!491299 () Unit!36055)

(assert (=> d!130365 (= lt!491300 lt!491299)))

(assert (=> d!130365 (= (getValueByKey!623 lt!491301 (_1!8695 lt!491107)) (Some!673 (_2!8695 lt!491107)))))

(assert (=> d!130365 (= lt!491299 (lemmaContainsTupThenGetReturnValue!298 lt!491301 (_1!8695 lt!491107) (_2!8695 lt!491107)))))

(assert (=> d!130365 (= lt!491301 (insertStrictlySorted!390 (toList!7691 lt!491100) (_1!8695 lt!491107) (_2!8695 lt!491107)))))

(assert (=> d!130365 (= (+!3326 lt!491100 lt!491107) lt!491298)))

(declare-fun b!1098360 () Bool)

(declare-fun res!733096 () Bool)

(assert (=> b!1098360 (=> (not res!733096) (not e!626935))))

(assert (=> b!1098360 (= res!733096 (= (getValueByKey!623 (toList!7691 lt!491298) (_1!8695 lt!491107)) (Some!673 (_2!8695 lt!491107))))))

(declare-fun b!1098361 () Bool)

(assert (=> b!1098361 (= e!626935 (contains!6397 (toList!7691 lt!491298) lt!491107))))

(assert (= (and d!130365 res!733097) b!1098360))

(assert (= (and b!1098360 res!733096) b!1098361))

(declare-fun m!1018163 () Bool)

(assert (=> d!130365 m!1018163))

(declare-fun m!1018165 () Bool)

(assert (=> d!130365 m!1018165))

(declare-fun m!1018167 () Bool)

(assert (=> d!130365 m!1018167))

(declare-fun m!1018169 () Bool)

(assert (=> d!130365 m!1018169))

(declare-fun m!1018171 () Bool)

(assert (=> b!1098360 m!1018171))

(declare-fun m!1018173 () Bool)

(assert (=> b!1098361 m!1018173))

(assert (=> b!1098111 d!130365))

(declare-fun d!130367 () Bool)

(declare-fun e!626936 () Bool)

(assert (=> d!130367 e!626936))

(declare-fun res!733099 () Bool)

(assert (=> d!130367 (=> (not res!733099) (not e!626936))))

(declare-fun lt!491302 () ListLongMap!15351)

(assert (=> d!130367 (= res!733099 (contains!6396 lt!491302 (_1!8695 lt!491104)))))

(declare-fun lt!491305 () List!24048)

(assert (=> d!130367 (= lt!491302 (ListLongMap!15352 lt!491305))))

(declare-fun lt!491304 () Unit!36055)

(declare-fun lt!491303 () Unit!36055)

(assert (=> d!130367 (= lt!491304 lt!491303)))

(assert (=> d!130367 (= (getValueByKey!623 lt!491305 (_1!8695 lt!491104)) (Some!673 (_2!8695 lt!491104)))))

(assert (=> d!130367 (= lt!491303 (lemmaContainsTupThenGetReturnValue!298 lt!491305 (_1!8695 lt!491104) (_2!8695 lt!491104)))))

(assert (=> d!130367 (= lt!491305 (insertStrictlySorted!390 (toList!7691 (+!3326 lt!491101 lt!491107)) (_1!8695 lt!491104) (_2!8695 lt!491104)))))

(assert (=> d!130367 (= (+!3326 (+!3326 lt!491101 lt!491107) lt!491104) lt!491302)))

(declare-fun b!1098362 () Bool)

(declare-fun res!733098 () Bool)

(assert (=> b!1098362 (=> (not res!733098) (not e!626936))))

(assert (=> b!1098362 (= res!733098 (= (getValueByKey!623 (toList!7691 lt!491302) (_1!8695 lt!491104)) (Some!673 (_2!8695 lt!491104))))))

(declare-fun b!1098363 () Bool)

(assert (=> b!1098363 (= e!626936 (contains!6397 (toList!7691 lt!491302) lt!491104))))

(assert (= (and d!130367 res!733099) b!1098362))

(assert (= (and b!1098362 res!733098) b!1098363))

(declare-fun m!1018175 () Bool)

(assert (=> d!130367 m!1018175))

(declare-fun m!1018177 () Bool)

(assert (=> d!130367 m!1018177))

(declare-fun m!1018179 () Bool)

(assert (=> d!130367 m!1018179))

(declare-fun m!1018181 () Bool)

(assert (=> d!130367 m!1018181))

(declare-fun m!1018183 () Bool)

(assert (=> b!1098362 m!1018183))

(declare-fun m!1018185 () Bool)

(assert (=> b!1098363 m!1018185))

(assert (=> b!1098106 d!130367))

(declare-fun d!130369 () Bool)

(declare-fun e!626937 () Bool)

(assert (=> d!130369 e!626937))

(declare-fun res!733101 () Bool)

(assert (=> d!130369 (=> (not res!733101) (not e!626937))))

(declare-fun lt!491306 () ListLongMap!15351)

(assert (=> d!130369 (= res!733101 (contains!6396 lt!491306 (_1!8695 lt!491107)))))

(declare-fun lt!491309 () List!24048)

(assert (=> d!130369 (= lt!491306 (ListLongMap!15352 lt!491309))))

(declare-fun lt!491308 () Unit!36055)

(declare-fun lt!491307 () Unit!36055)

(assert (=> d!130369 (= lt!491308 lt!491307)))

(assert (=> d!130369 (= (getValueByKey!623 lt!491309 (_1!8695 lt!491107)) (Some!673 (_2!8695 lt!491107)))))

(assert (=> d!130369 (= lt!491307 (lemmaContainsTupThenGetReturnValue!298 lt!491309 (_1!8695 lt!491107) (_2!8695 lt!491107)))))

(assert (=> d!130369 (= lt!491309 (insertStrictlySorted!390 (toList!7691 lt!491101) (_1!8695 lt!491107) (_2!8695 lt!491107)))))

(assert (=> d!130369 (= (+!3326 lt!491101 lt!491107) lt!491306)))

(declare-fun b!1098364 () Bool)

(declare-fun res!733100 () Bool)

(assert (=> b!1098364 (=> (not res!733100) (not e!626937))))

(assert (=> b!1098364 (= res!733100 (= (getValueByKey!623 (toList!7691 lt!491306) (_1!8695 lt!491107)) (Some!673 (_2!8695 lt!491107))))))

(declare-fun b!1098365 () Bool)

(assert (=> b!1098365 (= e!626937 (contains!6397 (toList!7691 lt!491306) lt!491107))))

(assert (= (and d!130369 res!733101) b!1098364))

(assert (= (and b!1098364 res!733100) b!1098365))

(declare-fun m!1018187 () Bool)

(assert (=> d!130369 m!1018187))

(declare-fun m!1018189 () Bool)

(assert (=> d!130369 m!1018189))

(declare-fun m!1018191 () Bool)

(assert (=> d!130369 m!1018191))

(declare-fun m!1018193 () Bool)

(assert (=> d!130369 m!1018193))

(declare-fun m!1018195 () Bool)

(assert (=> b!1098364 m!1018195))

(declare-fun m!1018197 () Bool)

(assert (=> b!1098365 m!1018197))

(assert (=> b!1098106 d!130369))

(declare-fun b!1098372 () Bool)

(declare-fun e!626942 () Bool)

(assert (=> b!1098372 (= e!626942 tp_is_empty!27135)))

(declare-fun condMapEmpty!42475 () Bool)

(declare-fun mapDefault!42475 () ValueCell!12858)

(assert (=> mapNonEmpty!42469 (= condMapEmpty!42475 (= mapRest!42469 ((as const (Array (_ BitVec 32) ValueCell!12858)) mapDefault!42475)))))

(declare-fun e!626943 () Bool)

(declare-fun mapRes!42475 () Bool)

(assert (=> mapNonEmpty!42469 (= tp!81189 (and e!626943 mapRes!42475))))

(declare-fun b!1098373 () Bool)

(assert (=> b!1098373 (= e!626943 tp_is_empty!27135)))

(declare-fun mapIsEmpty!42475 () Bool)

(assert (=> mapIsEmpty!42475 mapRes!42475))

(declare-fun mapNonEmpty!42475 () Bool)

(declare-fun tp!81198 () Bool)

(assert (=> mapNonEmpty!42475 (= mapRes!42475 (and tp!81198 e!626942))))

(declare-fun mapRest!42475 () (Array (_ BitVec 32) ValueCell!12858))

(declare-fun mapValue!42475 () ValueCell!12858)

(declare-fun mapKey!42475 () (_ BitVec 32))

(assert (=> mapNonEmpty!42475 (= mapRest!42469 (store mapRest!42475 mapKey!42475 mapValue!42475))))

(assert (= (and mapNonEmpty!42469 condMapEmpty!42475) mapIsEmpty!42475))

(assert (= (and mapNonEmpty!42469 (not condMapEmpty!42475)) mapNonEmpty!42475))

(assert (= (and mapNonEmpty!42475 ((_ is ValueCellFull!12858) mapValue!42475)) b!1098372))

(assert (= (and mapNonEmpty!42469 ((_ is ValueCellFull!12858) mapDefault!42475)) b!1098373))

(declare-fun m!1018199 () Bool)

(assert (=> mapNonEmpty!42475 m!1018199))

(declare-fun b_lambda!17853 () Bool)

(assert (= b_lambda!17849 (or (and start!96594 b_free!23085) b_lambda!17853)))

(declare-fun b_lambda!17855 () Bool)

(assert (= b_lambda!17843 (or (and start!96594 b_free!23085) b_lambda!17855)))

(declare-fun b_lambda!17857 () Bool)

(assert (= b_lambda!17839 (or (and start!96594 b_free!23085) b_lambda!17857)))

(declare-fun b_lambda!17859 () Bool)

(assert (= b_lambda!17841 (or (and start!96594 b_free!23085) b_lambda!17859)))

(declare-fun b_lambda!17861 () Bool)

(assert (= b_lambda!17851 (or (and start!96594 b_free!23085) b_lambda!17861)))

(declare-fun b_lambda!17863 () Bool)

(assert (= b_lambda!17847 (or (and start!96594 b_free!23085) b_lambda!17863)))

(declare-fun b_lambda!17865 () Bool)

(assert (= b_lambda!17845 (or (and start!96594 b_free!23085) b_lambda!17865)))

(check-sat (not d!130341) (not b!1098337) (not d!130365) (not d!130331) (not b!1098221) (not b!1098319) (not b!1098364) (not b!1098363) (not b!1098355) (not b_lambda!17853) (not b!1098359) (not b_next!23085) (not b_lambda!17837) b_and!36899 (not bm!45895) (not bm!45873) (not bm!45872) (not bm!45885) (not b!1098311) (not b!1098283) (not b!1098231) (not b_lambda!17857) (not b!1098292) (not d!130343) (not b!1098271) (not bm!45889) (not b!1098341) (not mapNonEmpty!42475) (not b!1098300) (not b_lambda!17865) (not b!1098281) (not b!1098296) (not b!1098321) (not d!130363) (not bm!45900) (not b!1098293) (not b!1098332) (not b_lambda!17861) (not d!130369) (not d!130367) (not bm!45883) (not b_lambda!17863) (not bm!45875) (not b!1098262) (not bm!45892) tp_is_empty!27135 (not b!1098268) (not b!1098269) (not b!1098215) (not bm!45884) (not b!1098294) (not bm!45890) (not b!1098291) (not bm!45891) (not bm!45896) (not b!1098336) (not b!1098361) (not b!1098357) (not b!1098279) (not b!1098299) (not b_lambda!17855) (not b!1098288) (not b!1098358) (not b!1098298) (not b!1098260) (not b!1098270) (not b!1098267) (not b!1098172) (not b!1098284) (not b!1098289) (not d!130345) (not b_lambda!17859) (not d!130333) (not b!1098222) (not d!130335) (not d!130329) (not bm!45878) (not b!1098263) (not d!130339) (not b!1098290) (not bm!45874) (not b!1098351) (not b!1098353) (not b!1098365) (not b!1098216) (not b!1098360) (not b!1098334) (not b!1098309) (not b!1098233) (not b!1098320) (not d!130337) (not bm!45899) (not b!1098220) (not b!1098218) (not b!1098362) (not b!1098339) (not b!1098318))
(check-sat b_and!36899 (not b_next!23085))
