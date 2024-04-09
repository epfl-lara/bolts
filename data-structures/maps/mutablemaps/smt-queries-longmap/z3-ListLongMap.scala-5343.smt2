; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71428 () Bool)

(assert start!71428)

(declare-fun b_free!13467 () Bool)

(declare-fun b_next!13467 () Bool)

(assert (=> start!71428 (= b_free!13467 (not b_next!13467))))

(declare-fun tp!47178 () Bool)

(declare-fun b_and!22479 () Bool)

(assert (=> start!71428 (= tp!47178 b_and!22479)))

(declare-fun b!829103 () Bool)

(declare-fun res!564962 () Bool)

(declare-fun e!462157 () Bool)

(assert (=> b!829103 (=> (not res!564962) (not e!462157))))

(declare-datatypes ((array!46496 0))(
  ( (array!46497 (arr!22283 (Array (_ BitVec 32) (_ BitVec 64))) (size!22704 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46496)

(declare-datatypes ((List!15983 0))(
  ( (Nil!15980) (Cons!15979 (h!17108 (_ BitVec 64)) (t!22350 List!15983)) )
))
(declare-fun arrayNoDuplicates!0 (array!46496 (_ BitVec 32) List!15983) Bool)

(assert (=> b!829103 (= res!564962 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15980))))

(declare-fun mapNonEmpty!24409 () Bool)

(declare-fun mapRes!24409 () Bool)

(declare-fun tp!47179 () Bool)

(declare-fun e!462151 () Bool)

(assert (=> mapNonEmpty!24409 (= mapRes!24409 (and tp!47179 e!462151))))

(declare-fun mapKey!24409 () (_ BitVec 32))

(declare-datatypes ((V!25237 0))(
  ( (V!25238 (val!7636 Int)) )
))
(declare-datatypes ((ValueCell!7173 0))(
  ( (ValueCellFull!7173 (v!10071 V!25237)) (EmptyCell!7173) )
))
(declare-fun mapValue!24409 () ValueCell!7173)

(declare-datatypes ((array!46498 0))(
  ( (array!46499 (arr!22284 (Array (_ BitVec 32) ValueCell!7173)) (size!22705 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46498)

(declare-fun mapRest!24409 () (Array (_ BitVec 32) ValueCell!7173))

(assert (=> mapNonEmpty!24409 (= (arr!22284 _values!788) (store mapRest!24409 mapKey!24409 mapValue!24409))))

(declare-fun b!829104 () Bool)

(declare-fun e!462158 () Bool)

(declare-fun e!462155 () Bool)

(assert (=> b!829104 (= e!462158 (and e!462155 mapRes!24409))))

(declare-fun condMapEmpty!24409 () Bool)

(declare-fun mapDefault!24409 () ValueCell!7173)

(assert (=> b!829104 (= condMapEmpty!24409 (= (arr!22284 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7173)) mapDefault!24409)))))

(declare-fun b!829106 () Bool)

(declare-fun res!564961 () Bool)

(assert (=> b!829106 (=> (not res!564961) (not e!462157))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!829106 (= res!564961 (and (= (size!22705 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22704 _keys!976) (size!22705 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun zeroValueBefore!34 () V!25237)

(declare-fun b!829107 () Bool)

(declare-fun minValue!754 () V!25237)

(declare-fun defaultEntry!796 () Int)

(declare-fun e!462153 () Bool)

(declare-datatypes ((tuple2!10152 0))(
  ( (tuple2!10153 (_1!5086 (_ BitVec 64)) (_2!5086 V!25237)) )
))
(declare-datatypes ((List!15984 0))(
  ( (Nil!15981) (Cons!15980 (h!17109 tuple2!10152) (t!22351 List!15984)) )
))
(declare-datatypes ((ListLongMap!8989 0))(
  ( (ListLongMap!8990 (toList!4510 List!15984)) )
))
(declare-fun lt!375925 () ListLongMap!8989)

(declare-fun getCurrentListMap!2583 (array!46496 array!46498 (_ BitVec 32) (_ BitVec 32) V!25237 V!25237 (_ BitVec 32) Int) ListLongMap!8989)

(declare-fun +!1941 (ListLongMap!8989 tuple2!10152) ListLongMap!8989)

(assert (=> b!829107 (= e!462153 (= (getCurrentListMap!2583 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (+!1941 lt!375925 (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun mapIsEmpty!24409 () Bool)

(assert (=> mapIsEmpty!24409 mapRes!24409))

(declare-fun b!829108 () Bool)

(declare-fun e!462156 () Bool)

(assert (=> b!829108 (= e!462156 e!462153)))

(declare-fun res!564957 () Bool)

(assert (=> b!829108 (=> res!564957 e!462153)))

(assert (=> b!829108 (= res!564957 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!829109 () Bool)

(declare-fun e!462152 () Bool)

(assert (=> b!829109 (= e!462157 (not e!462152))))

(declare-fun res!564960 () Bool)

(assert (=> b!829109 (=> res!564960 e!462152)))

(assert (=> b!829109 (= res!564960 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (=> b!829109 e!462156))

(declare-fun res!564959 () Bool)

(assert (=> b!829109 (=> (not res!564959) (not e!462156))))

(declare-fun lt!375924 () ListLongMap!8989)

(assert (=> b!829109 (= res!564959 (= lt!375925 lt!375924))))

(declare-fun zeroValueAfter!34 () V!25237)

(declare-datatypes ((Unit!28409 0))(
  ( (Unit!28410) )
))
(declare-fun lt!375926 () Unit!28409)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!601 (array!46496 array!46498 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25237 V!25237 V!25237 V!25237 (_ BitVec 32) Int) Unit!28409)

(assert (=> b!829109 (= lt!375926 (lemmaNoChangeToArrayThenSameMapNoExtras!601 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2511 (array!46496 array!46498 (_ BitVec 32) (_ BitVec 32) V!25237 V!25237 (_ BitVec 32) Int) ListLongMap!8989)

(assert (=> b!829109 (= lt!375924 (getCurrentListMapNoExtraKeys!2511 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!829109 (= lt!375925 (getCurrentListMapNoExtraKeys!2511 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!829110 () Bool)

(declare-fun res!564956 () Bool)

(assert (=> b!829110 (=> (not res!564956) (not e!462157))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46496 (_ BitVec 32)) Bool)

(assert (=> b!829110 (= res!564956 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!829105 () Bool)

(assert (=> b!829105 (= e!462152 (= (getCurrentListMap!2583 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (+!1941 (+!1941 lt!375925 (tuple2!10153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun res!564958 () Bool)

(assert (=> start!71428 (=> (not res!564958) (not e!462157))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71428 (= res!564958 (validMask!0 mask!1312))))

(assert (=> start!71428 e!462157))

(declare-fun tp_is_empty!15177 () Bool)

(assert (=> start!71428 tp_is_empty!15177))

(declare-fun array_inv!17727 (array!46496) Bool)

(assert (=> start!71428 (array_inv!17727 _keys!976)))

(assert (=> start!71428 true))

(declare-fun array_inv!17728 (array!46498) Bool)

(assert (=> start!71428 (and (array_inv!17728 _values!788) e!462158)))

(assert (=> start!71428 tp!47178))

(declare-fun b!829111 () Bool)

(assert (=> b!829111 (= e!462151 tp_is_empty!15177)))

(declare-fun b!829112 () Bool)

(assert (=> b!829112 (= e!462155 tp_is_empty!15177)))

(assert (= (and start!71428 res!564958) b!829106))

(assert (= (and b!829106 res!564961) b!829110))

(assert (= (and b!829110 res!564956) b!829103))

(assert (= (and b!829103 res!564962) b!829109))

(assert (= (and b!829109 res!564959) b!829108))

(assert (= (and b!829108 (not res!564957)) b!829107))

(assert (= (and b!829109 (not res!564960)) b!829105))

(assert (= (and b!829104 condMapEmpty!24409) mapIsEmpty!24409))

(assert (= (and b!829104 (not condMapEmpty!24409)) mapNonEmpty!24409))

(get-info :version)

(assert (= (and mapNonEmpty!24409 ((_ is ValueCellFull!7173) mapValue!24409)) b!829111))

(assert (= (and b!829104 ((_ is ValueCellFull!7173) mapDefault!24409)) b!829112))

(assert (= start!71428 b!829104))

(declare-fun m!772169 () Bool)

(assert (=> mapNonEmpty!24409 m!772169))

(declare-fun m!772171 () Bool)

(assert (=> b!829103 m!772171))

(declare-fun m!772173 () Bool)

(assert (=> b!829109 m!772173))

(declare-fun m!772175 () Bool)

(assert (=> b!829109 m!772175))

(declare-fun m!772177 () Bool)

(assert (=> b!829109 m!772177))

(declare-fun m!772179 () Bool)

(assert (=> b!829107 m!772179))

(declare-fun m!772181 () Bool)

(assert (=> b!829107 m!772181))

(declare-fun m!772183 () Bool)

(assert (=> b!829110 m!772183))

(declare-fun m!772185 () Bool)

(assert (=> start!71428 m!772185))

(declare-fun m!772187 () Bool)

(assert (=> start!71428 m!772187))

(declare-fun m!772189 () Bool)

(assert (=> start!71428 m!772189))

(declare-fun m!772191 () Bool)

(assert (=> b!829105 m!772191))

(declare-fun m!772193 () Bool)

(assert (=> b!829105 m!772193))

(assert (=> b!829105 m!772193))

(declare-fun m!772195 () Bool)

(assert (=> b!829105 m!772195))

(check-sat tp_is_empty!15177 (not b!829109) (not b!829110) (not b!829105) (not b!829107) (not b!829103) b_and!22479 (not start!71428) (not b_next!13467) (not mapNonEmpty!24409))
(check-sat b_and!22479 (not b_next!13467))
(get-model)

(declare-fun d!105171 () Bool)

(assert (=> d!105171 (= (getCurrentListMapNoExtraKeys!2511 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (getCurrentListMapNoExtraKeys!2511 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!375938 () Unit!28409)

(declare-fun choose!1421 (array!46496 array!46498 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25237 V!25237 V!25237 V!25237 (_ BitVec 32) Int) Unit!28409)

(assert (=> d!105171 (= lt!375938 (choose!1421 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> d!105171 (validMask!0 mask!1312)))

(assert (=> d!105171 (= (lemmaNoChangeToArrayThenSameMapNoExtras!601 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!375938)))

(declare-fun bs!23157 () Bool)

(assert (= bs!23157 d!105171))

(assert (=> bs!23157 m!772177))

(assert (=> bs!23157 m!772175))

(declare-fun m!772225 () Bool)

(assert (=> bs!23157 m!772225))

(assert (=> bs!23157 m!772185))

(assert (=> b!829109 d!105171))

(declare-fun d!105173 () Bool)

(declare-fun e!462203 () Bool)

(assert (=> d!105173 e!462203))

(declare-fun res!564995 () Bool)

(assert (=> d!105173 (=> (not res!564995) (not e!462203))))

(declare-fun lt!375957 () ListLongMap!8989)

(declare-fun contains!4199 (ListLongMap!8989 (_ BitVec 64)) Bool)

(assert (=> d!105173 (= res!564995 (not (contains!4199 lt!375957 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!462201 () ListLongMap!8989)

(assert (=> d!105173 (= lt!375957 e!462201)))

(declare-fun c!89653 () Bool)

(assert (=> d!105173 (= c!89653 (bvsge #b00000000000000000000000000000000 (size!22704 _keys!976)))))

(assert (=> d!105173 (validMask!0 mask!1312)))

(assert (=> d!105173 (= (getCurrentListMapNoExtraKeys!2511 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!375957)))

(declare-fun b!829167 () Bool)

(assert (=> b!829167 (= e!462201 (ListLongMap!8990 Nil!15981))))

(declare-fun b!829168 () Bool)

(declare-fun e!462197 () Bool)

(assert (=> b!829168 (= e!462197 (= lt!375957 (getCurrentListMapNoExtraKeys!2511 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!829169 () Bool)

(declare-fun e!462200 () Bool)

(assert (=> b!829169 (= e!462200 e!462197)))

(declare-fun c!89652 () Bool)

(assert (=> b!829169 (= c!89652 (bvslt #b00000000000000000000000000000000 (size!22704 _keys!976)))))

(declare-fun b!829170 () Bool)

(declare-fun e!462198 () ListLongMap!8989)

(declare-fun call!36111 () ListLongMap!8989)

(assert (=> b!829170 (= e!462198 call!36111)))

(declare-fun bm!36108 () Bool)

(assert (=> bm!36108 (= call!36111 (getCurrentListMapNoExtraKeys!2511 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!829171 () Bool)

(declare-fun e!462202 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!829171 (= e!462202 (validKeyInArray!0 (select (arr!22283 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!829171 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!829172 () Bool)

(assert (=> b!829172 (= e!462201 e!462198)))

(declare-fun c!89654 () Bool)

(assert (=> b!829172 (= c!89654 (validKeyInArray!0 (select (arr!22283 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!829173 () Bool)

(declare-fun res!564992 () Bool)

(assert (=> b!829173 (=> (not res!564992) (not e!462203))))

(assert (=> b!829173 (= res!564992 (not (contains!4199 lt!375957 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!829174 () Bool)

(declare-fun isEmpty!656 (ListLongMap!8989) Bool)

(assert (=> b!829174 (= e!462197 (isEmpty!656 lt!375957))))

(declare-fun b!829175 () Bool)

(declare-fun lt!375958 () Unit!28409)

(declare-fun lt!375954 () Unit!28409)

(assert (=> b!829175 (= lt!375958 lt!375954)))

(declare-fun lt!375956 () ListLongMap!8989)

(declare-fun lt!375955 () (_ BitVec 64))

(declare-fun lt!375959 () (_ BitVec 64))

(declare-fun lt!375953 () V!25237)

(assert (=> b!829175 (not (contains!4199 (+!1941 lt!375956 (tuple2!10153 lt!375959 lt!375953)) lt!375955))))

(declare-fun addStillNotContains!196 (ListLongMap!8989 (_ BitVec 64) V!25237 (_ BitVec 64)) Unit!28409)

(assert (=> b!829175 (= lt!375954 (addStillNotContains!196 lt!375956 lt!375959 lt!375953 lt!375955))))

(assert (=> b!829175 (= lt!375955 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!11809 (ValueCell!7173 V!25237) V!25237)

(declare-fun dynLambda!979 (Int (_ BitVec 64)) V!25237)

(assert (=> b!829175 (= lt!375953 (get!11809 (select (arr!22284 _values!788) #b00000000000000000000000000000000) (dynLambda!979 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!829175 (= lt!375959 (select (arr!22283 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!829175 (= lt!375956 call!36111)))

(assert (=> b!829175 (= e!462198 (+!1941 call!36111 (tuple2!10153 (select (arr!22283 _keys!976) #b00000000000000000000000000000000) (get!11809 (select (arr!22284 _values!788) #b00000000000000000000000000000000) (dynLambda!979 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!829176 () Bool)

(assert (=> b!829176 (= e!462203 e!462200)))

(declare-fun c!89655 () Bool)

(assert (=> b!829176 (= c!89655 e!462202)))

(declare-fun res!564994 () Bool)

(assert (=> b!829176 (=> (not res!564994) (not e!462202))))

(assert (=> b!829176 (= res!564994 (bvslt #b00000000000000000000000000000000 (size!22704 _keys!976)))))

(declare-fun b!829177 () Bool)

(assert (=> b!829177 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22704 _keys!976)))))

(assert (=> b!829177 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22705 _values!788)))))

(declare-fun e!462199 () Bool)

(declare-fun apply!369 (ListLongMap!8989 (_ BitVec 64)) V!25237)

(assert (=> b!829177 (= e!462199 (= (apply!369 lt!375957 (select (arr!22283 _keys!976) #b00000000000000000000000000000000)) (get!11809 (select (arr!22284 _values!788) #b00000000000000000000000000000000) (dynLambda!979 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!829178 () Bool)

(assert (=> b!829178 (= e!462200 e!462199)))

(assert (=> b!829178 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22704 _keys!976)))))

(declare-fun res!564993 () Bool)

(assert (=> b!829178 (= res!564993 (contains!4199 lt!375957 (select (arr!22283 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!829178 (=> (not res!564993) (not e!462199))))

(assert (= (and d!105173 c!89653) b!829167))

(assert (= (and d!105173 (not c!89653)) b!829172))

(assert (= (and b!829172 c!89654) b!829175))

(assert (= (and b!829172 (not c!89654)) b!829170))

(assert (= (or b!829175 b!829170) bm!36108))

(assert (= (and d!105173 res!564995) b!829173))

(assert (= (and b!829173 res!564992) b!829176))

(assert (= (and b!829176 res!564994) b!829171))

(assert (= (and b!829176 c!89655) b!829178))

(assert (= (and b!829176 (not c!89655)) b!829169))

(assert (= (and b!829178 res!564993) b!829177))

(assert (= (and b!829169 c!89652) b!829168))

(assert (= (and b!829169 (not c!89652)) b!829174))

(declare-fun b_lambda!11305 () Bool)

(assert (=> (not b_lambda!11305) (not b!829175)))

(declare-fun t!22353 () Bool)

(declare-fun tb!4227 () Bool)

(assert (=> (and start!71428 (= defaultEntry!796 defaultEntry!796) t!22353) tb!4227))

(declare-fun result!8005 () Bool)

(assert (=> tb!4227 (= result!8005 tp_is_empty!15177)))

(assert (=> b!829175 t!22353))

(declare-fun b_and!22483 () Bool)

(assert (= b_and!22479 (and (=> t!22353 result!8005) b_and!22483)))

(declare-fun b_lambda!11307 () Bool)

(assert (=> (not b_lambda!11307) (not b!829177)))

(assert (=> b!829177 t!22353))

(declare-fun b_and!22485 () Bool)

(assert (= b_and!22483 (and (=> t!22353 result!8005) b_and!22485)))

(declare-fun m!772227 () Bool)

(assert (=> b!829174 m!772227))

(declare-fun m!772229 () Bool)

(assert (=> b!829178 m!772229))

(assert (=> b!829178 m!772229))

(declare-fun m!772231 () Bool)

(assert (=> b!829178 m!772231))

(declare-fun m!772233 () Bool)

(assert (=> b!829168 m!772233))

(declare-fun m!772235 () Bool)

(assert (=> b!829175 m!772235))

(assert (=> b!829175 m!772229))

(declare-fun m!772237 () Bool)

(assert (=> b!829175 m!772237))

(declare-fun m!772239 () Bool)

(assert (=> b!829175 m!772239))

(declare-fun m!772241 () Bool)

(assert (=> b!829175 m!772241))

(declare-fun m!772243 () Bool)

(assert (=> b!829175 m!772243))

(declare-fun m!772245 () Bool)

(assert (=> b!829175 m!772245))

(declare-fun m!772247 () Bool)

(assert (=> b!829175 m!772247))

(assert (=> b!829175 m!772241))

(assert (=> b!829175 m!772237))

(assert (=> b!829175 m!772243))

(declare-fun m!772249 () Bool)

(assert (=> b!829173 m!772249))

(assert (=> b!829172 m!772229))

(assert (=> b!829172 m!772229))

(declare-fun m!772251 () Bool)

(assert (=> b!829172 m!772251))

(assert (=> b!829177 m!772229))

(assert (=> b!829177 m!772229))

(declare-fun m!772253 () Bool)

(assert (=> b!829177 m!772253))

(assert (=> b!829177 m!772241))

(assert (=> b!829177 m!772243))

(assert (=> b!829177 m!772245))

(assert (=> b!829177 m!772241))

(assert (=> b!829177 m!772243))

(assert (=> bm!36108 m!772233))

(declare-fun m!772255 () Bool)

(assert (=> d!105173 m!772255))

(assert (=> d!105173 m!772185))

(assert (=> b!829171 m!772229))

(assert (=> b!829171 m!772229))

(assert (=> b!829171 m!772251))

(assert (=> b!829109 d!105173))

(declare-fun d!105175 () Bool)

(declare-fun e!462210 () Bool)

(assert (=> d!105175 e!462210))

(declare-fun res!564999 () Bool)

(assert (=> d!105175 (=> (not res!564999) (not e!462210))))

(declare-fun lt!375964 () ListLongMap!8989)

(assert (=> d!105175 (= res!564999 (not (contains!4199 lt!375964 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!462208 () ListLongMap!8989)

(assert (=> d!105175 (= lt!375964 e!462208)))

(declare-fun c!89657 () Bool)

(assert (=> d!105175 (= c!89657 (bvsge #b00000000000000000000000000000000 (size!22704 _keys!976)))))

(assert (=> d!105175 (validMask!0 mask!1312)))

(assert (=> d!105175 (= (getCurrentListMapNoExtraKeys!2511 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!375964)))

(declare-fun b!829181 () Bool)

(assert (=> b!829181 (= e!462208 (ListLongMap!8990 Nil!15981))))

(declare-fun e!462204 () Bool)

(declare-fun b!829182 () Bool)

(assert (=> b!829182 (= e!462204 (= lt!375964 (getCurrentListMapNoExtraKeys!2511 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796)))))

(declare-fun b!829183 () Bool)

(declare-fun e!462207 () Bool)

(assert (=> b!829183 (= e!462207 e!462204)))

(declare-fun c!89656 () Bool)

(assert (=> b!829183 (= c!89656 (bvslt #b00000000000000000000000000000000 (size!22704 _keys!976)))))

(declare-fun b!829184 () Bool)

(declare-fun e!462205 () ListLongMap!8989)

(declare-fun call!36112 () ListLongMap!8989)

(assert (=> b!829184 (= e!462205 call!36112)))

(declare-fun bm!36109 () Bool)

(assert (=> bm!36109 (= call!36112 (getCurrentListMapNoExtraKeys!2511 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!796))))

(declare-fun b!829185 () Bool)

(declare-fun e!462209 () Bool)

(assert (=> b!829185 (= e!462209 (validKeyInArray!0 (select (arr!22283 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!829185 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!829186 () Bool)

(assert (=> b!829186 (= e!462208 e!462205)))

(declare-fun c!89658 () Bool)

(assert (=> b!829186 (= c!89658 (validKeyInArray!0 (select (arr!22283 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!829187 () Bool)

(declare-fun res!564996 () Bool)

(assert (=> b!829187 (=> (not res!564996) (not e!462210))))

(assert (=> b!829187 (= res!564996 (not (contains!4199 lt!375964 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!829188 () Bool)

(assert (=> b!829188 (= e!462204 (isEmpty!656 lt!375964))))

(declare-fun b!829189 () Bool)

(declare-fun lt!375965 () Unit!28409)

(declare-fun lt!375961 () Unit!28409)

(assert (=> b!829189 (= lt!375965 lt!375961)))

(declare-fun lt!375962 () (_ BitVec 64))

(declare-fun lt!375966 () (_ BitVec 64))

(declare-fun lt!375960 () V!25237)

(declare-fun lt!375963 () ListLongMap!8989)

(assert (=> b!829189 (not (contains!4199 (+!1941 lt!375963 (tuple2!10153 lt!375966 lt!375960)) lt!375962))))

(assert (=> b!829189 (= lt!375961 (addStillNotContains!196 lt!375963 lt!375966 lt!375960 lt!375962))))

(assert (=> b!829189 (= lt!375962 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!829189 (= lt!375960 (get!11809 (select (arr!22284 _values!788) #b00000000000000000000000000000000) (dynLambda!979 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!829189 (= lt!375966 (select (arr!22283 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!829189 (= lt!375963 call!36112)))

(assert (=> b!829189 (= e!462205 (+!1941 call!36112 (tuple2!10153 (select (arr!22283 _keys!976) #b00000000000000000000000000000000) (get!11809 (select (arr!22284 _values!788) #b00000000000000000000000000000000) (dynLambda!979 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!829190 () Bool)

(assert (=> b!829190 (= e!462210 e!462207)))

(declare-fun c!89659 () Bool)

(assert (=> b!829190 (= c!89659 e!462209)))

(declare-fun res!564998 () Bool)

(assert (=> b!829190 (=> (not res!564998) (not e!462209))))

(assert (=> b!829190 (= res!564998 (bvslt #b00000000000000000000000000000000 (size!22704 _keys!976)))))

(declare-fun b!829191 () Bool)

(assert (=> b!829191 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22704 _keys!976)))))

(assert (=> b!829191 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22705 _values!788)))))

(declare-fun e!462206 () Bool)

(assert (=> b!829191 (= e!462206 (= (apply!369 lt!375964 (select (arr!22283 _keys!976) #b00000000000000000000000000000000)) (get!11809 (select (arr!22284 _values!788) #b00000000000000000000000000000000) (dynLambda!979 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!829192 () Bool)

(assert (=> b!829192 (= e!462207 e!462206)))

(assert (=> b!829192 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22704 _keys!976)))))

(declare-fun res!564997 () Bool)

(assert (=> b!829192 (= res!564997 (contains!4199 lt!375964 (select (arr!22283 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!829192 (=> (not res!564997) (not e!462206))))

(assert (= (and d!105175 c!89657) b!829181))

(assert (= (and d!105175 (not c!89657)) b!829186))

(assert (= (and b!829186 c!89658) b!829189))

(assert (= (and b!829186 (not c!89658)) b!829184))

(assert (= (or b!829189 b!829184) bm!36109))

(assert (= (and d!105175 res!564999) b!829187))

(assert (= (and b!829187 res!564996) b!829190))

(assert (= (and b!829190 res!564998) b!829185))

(assert (= (and b!829190 c!89659) b!829192))

(assert (= (and b!829190 (not c!89659)) b!829183))

(assert (= (and b!829192 res!564997) b!829191))

(assert (= (and b!829183 c!89656) b!829182))

(assert (= (and b!829183 (not c!89656)) b!829188))

(declare-fun b_lambda!11309 () Bool)

(assert (=> (not b_lambda!11309) (not b!829189)))

(assert (=> b!829189 t!22353))

(declare-fun b_and!22487 () Bool)

(assert (= b_and!22485 (and (=> t!22353 result!8005) b_and!22487)))

(declare-fun b_lambda!11311 () Bool)

(assert (=> (not b_lambda!11311) (not b!829191)))

(assert (=> b!829191 t!22353))

(declare-fun b_and!22489 () Bool)

(assert (= b_and!22487 (and (=> t!22353 result!8005) b_and!22489)))

(declare-fun m!772257 () Bool)

(assert (=> b!829188 m!772257))

(assert (=> b!829192 m!772229))

(assert (=> b!829192 m!772229))

(declare-fun m!772259 () Bool)

(assert (=> b!829192 m!772259))

(declare-fun m!772261 () Bool)

(assert (=> b!829182 m!772261))

(declare-fun m!772263 () Bool)

(assert (=> b!829189 m!772263))

(assert (=> b!829189 m!772229))

(declare-fun m!772265 () Bool)

(assert (=> b!829189 m!772265))

(declare-fun m!772267 () Bool)

(assert (=> b!829189 m!772267))

(assert (=> b!829189 m!772241))

(assert (=> b!829189 m!772243))

(assert (=> b!829189 m!772245))

(declare-fun m!772269 () Bool)

(assert (=> b!829189 m!772269))

(assert (=> b!829189 m!772241))

(assert (=> b!829189 m!772265))

(assert (=> b!829189 m!772243))

(declare-fun m!772271 () Bool)

(assert (=> b!829187 m!772271))

(assert (=> b!829186 m!772229))

(assert (=> b!829186 m!772229))

(assert (=> b!829186 m!772251))

(assert (=> b!829191 m!772229))

(assert (=> b!829191 m!772229))

(declare-fun m!772273 () Bool)

(assert (=> b!829191 m!772273))

(assert (=> b!829191 m!772241))

(assert (=> b!829191 m!772243))

(assert (=> b!829191 m!772245))

(assert (=> b!829191 m!772241))

(assert (=> b!829191 m!772243))

(assert (=> bm!36109 m!772261))

(declare-fun m!772275 () Bool)

(assert (=> d!105175 m!772275))

(assert (=> d!105175 m!772185))

(assert (=> b!829185 m!772229))

(assert (=> b!829185 m!772229))

(assert (=> b!829185 m!772251))

(assert (=> b!829109 d!105175))

(declare-fun b!829235 () Bool)

(declare-fun c!89676 () Bool)

(assert (=> b!829235 (= c!89676 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!462249 () ListLongMap!8989)

(declare-fun e!462240 () ListLongMap!8989)

(assert (=> b!829235 (= e!462249 e!462240)))

(declare-fun lt!376011 () ListLongMap!8989)

(declare-fun e!462239 () Bool)

(declare-fun b!829236 () Bool)

(assert (=> b!829236 (= e!462239 (= (apply!369 lt!376011 (select (arr!22283 _keys!976) #b00000000000000000000000000000000)) (get!11809 (select (arr!22284 _values!788) #b00000000000000000000000000000000) (dynLambda!979 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!829236 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22705 _values!788)))))

(assert (=> b!829236 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22704 _keys!976)))))

(declare-fun bm!36124 () Bool)

(declare-fun call!36130 () Bool)

(assert (=> bm!36124 (= call!36130 (contains!4199 lt!376011 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!829237 () Bool)

(declare-fun e!462245 () Bool)

(assert (=> b!829237 (= e!462245 e!462239)))

(declare-fun res!565024 () Bool)

(assert (=> b!829237 (=> (not res!565024) (not e!462239))))

(assert (=> b!829237 (= res!565024 (contains!4199 lt!376011 (select (arr!22283 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!829237 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22704 _keys!976)))))

(declare-fun b!829238 () Bool)

(declare-fun res!565019 () Bool)

(declare-fun e!462244 () Bool)

(assert (=> b!829238 (=> (not res!565019) (not e!462244))))

(declare-fun e!462248 () Bool)

(assert (=> b!829238 (= res!565019 e!462248)))

(declare-fun c!89673 () Bool)

(assert (=> b!829238 (= c!89673 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!829239 () Bool)

(declare-fun e!462243 () Bool)

(assert (=> b!829239 (= e!462243 (= (apply!369 lt!376011 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun b!829240 () Bool)

(declare-fun res!565020 () Bool)

(assert (=> b!829240 (=> (not res!565020) (not e!462244))))

(assert (=> b!829240 (= res!565020 e!462245)))

(declare-fun res!565026 () Bool)

(assert (=> b!829240 (=> res!565026 e!462245)))

(declare-fun e!462242 () Bool)

(assert (=> b!829240 (= res!565026 (not e!462242))))

(declare-fun res!565025 () Bool)

(assert (=> b!829240 (=> (not res!565025) (not e!462242))))

(assert (=> b!829240 (= res!565025 (bvslt #b00000000000000000000000000000000 (size!22704 _keys!976)))))

(declare-fun b!829241 () Bool)

(declare-fun e!462241 () Bool)

(assert (=> b!829241 (= e!462241 (= (apply!369 lt!376011 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!34))))

(declare-fun b!829242 () Bool)

(declare-fun e!462247 () Bool)

(assert (=> b!829242 (= e!462247 (validKeyInArray!0 (select (arr!22283 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun call!36131 () ListLongMap!8989)

(declare-fun bm!36125 () Bool)

(assert (=> bm!36125 (= call!36131 (getCurrentListMapNoExtraKeys!2511 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!829243 () Bool)

(declare-fun call!36133 () ListLongMap!8989)

(assert (=> b!829243 (= e!462249 call!36133)))

(declare-fun b!829244 () Bool)

(assert (=> b!829244 (= e!462240 call!36133)))

(declare-fun bm!36126 () Bool)

(declare-fun call!36132 () Bool)

(assert (=> bm!36126 (= call!36132 (contains!4199 lt!376011 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!829245 () Bool)

(assert (=> b!829245 (= e!462248 e!462241)))

(declare-fun res!565023 () Bool)

(assert (=> b!829245 (= res!565023 call!36130)))

(assert (=> b!829245 (=> (not res!565023) (not e!462241))))

(declare-fun b!829246 () Bool)

(declare-fun call!36127 () ListLongMap!8989)

(assert (=> b!829246 (= e!462240 call!36127)))

(declare-fun bm!36127 () Bool)

(declare-fun call!36128 () ListLongMap!8989)

(assert (=> bm!36127 (= call!36128 call!36131)))

(declare-fun b!829247 () Bool)

(declare-fun e!462238 () ListLongMap!8989)

(assert (=> b!829247 (= e!462238 e!462249)))

(declare-fun c!89677 () Bool)

(assert (=> b!829247 (= c!89677 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!829248 () Bool)

(declare-fun e!462246 () Bool)

(assert (=> b!829248 (= e!462246 e!462243)))

(declare-fun res!565021 () Bool)

(assert (=> b!829248 (= res!565021 call!36132)))

(assert (=> b!829248 (=> (not res!565021) (not e!462243))))

(declare-fun bm!36128 () Bool)

(assert (=> bm!36128 (= call!36127 call!36128)))

(declare-fun b!829249 () Bool)

(declare-fun e!462237 () Unit!28409)

(declare-fun lt!376020 () Unit!28409)

(assert (=> b!829249 (= e!462237 lt!376020)))

(declare-fun lt!376032 () ListLongMap!8989)

(assert (=> b!829249 (= lt!376032 (getCurrentListMapNoExtraKeys!2511 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376012 () (_ BitVec 64))

(assert (=> b!829249 (= lt!376012 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376022 () (_ BitVec 64))

(assert (=> b!829249 (= lt!376022 (select (arr!22283 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376027 () Unit!28409)

(declare-fun addStillContains!320 (ListLongMap!8989 (_ BitVec 64) V!25237 (_ BitVec 64)) Unit!28409)

(assert (=> b!829249 (= lt!376027 (addStillContains!320 lt!376032 lt!376012 zeroValueAfter!34 lt!376022))))

(assert (=> b!829249 (contains!4199 (+!1941 lt!376032 (tuple2!10153 lt!376012 zeroValueAfter!34)) lt!376022)))

(declare-fun lt!376025 () Unit!28409)

(assert (=> b!829249 (= lt!376025 lt!376027)))

(declare-fun lt!376030 () ListLongMap!8989)

(assert (=> b!829249 (= lt!376030 (getCurrentListMapNoExtraKeys!2511 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376026 () (_ BitVec 64))

(assert (=> b!829249 (= lt!376026 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376021 () (_ BitVec 64))

(assert (=> b!829249 (= lt!376021 (select (arr!22283 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376013 () Unit!28409)

(declare-fun addApplyDifferent!320 (ListLongMap!8989 (_ BitVec 64) V!25237 (_ BitVec 64)) Unit!28409)

(assert (=> b!829249 (= lt!376013 (addApplyDifferent!320 lt!376030 lt!376026 minValue!754 lt!376021))))

(assert (=> b!829249 (= (apply!369 (+!1941 lt!376030 (tuple2!10153 lt!376026 minValue!754)) lt!376021) (apply!369 lt!376030 lt!376021))))

(declare-fun lt!376028 () Unit!28409)

(assert (=> b!829249 (= lt!376028 lt!376013)))

(declare-fun lt!376031 () ListLongMap!8989)

(assert (=> b!829249 (= lt!376031 (getCurrentListMapNoExtraKeys!2511 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376019 () (_ BitVec 64))

(assert (=> b!829249 (= lt!376019 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376029 () (_ BitVec 64))

(assert (=> b!829249 (= lt!376029 (select (arr!22283 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376024 () Unit!28409)

(assert (=> b!829249 (= lt!376024 (addApplyDifferent!320 lt!376031 lt!376019 zeroValueAfter!34 lt!376029))))

(assert (=> b!829249 (= (apply!369 (+!1941 lt!376031 (tuple2!10153 lt!376019 zeroValueAfter!34)) lt!376029) (apply!369 lt!376031 lt!376029))))

(declare-fun lt!376018 () Unit!28409)

(assert (=> b!829249 (= lt!376018 lt!376024)))

(declare-fun lt!376017 () ListLongMap!8989)

(assert (=> b!829249 (= lt!376017 (getCurrentListMapNoExtraKeys!2511 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376016 () (_ BitVec 64))

(assert (=> b!829249 (= lt!376016 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376023 () (_ BitVec 64))

(assert (=> b!829249 (= lt!376023 (select (arr!22283 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!829249 (= lt!376020 (addApplyDifferent!320 lt!376017 lt!376016 minValue!754 lt!376023))))

(assert (=> b!829249 (= (apply!369 (+!1941 lt!376017 (tuple2!10153 lt!376016 minValue!754)) lt!376023) (apply!369 lt!376017 lt!376023))))

(declare-fun d!105177 () Bool)

(assert (=> d!105177 e!462244))

(declare-fun res!565018 () Bool)

(assert (=> d!105177 (=> (not res!565018) (not e!462244))))

(assert (=> d!105177 (= res!565018 (or (bvsge #b00000000000000000000000000000000 (size!22704 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22704 _keys!976)))))))

(declare-fun lt!376015 () ListLongMap!8989)

(assert (=> d!105177 (= lt!376011 lt!376015)))

(declare-fun lt!376014 () Unit!28409)

(assert (=> d!105177 (= lt!376014 e!462237)))

(declare-fun c!89674 () Bool)

(assert (=> d!105177 (= c!89674 e!462247)))

(declare-fun res!565022 () Bool)

(assert (=> d!105177 (=> (not res!565022) (not e!462247))))

(assert (=> d!105177 (= res!565022 (bvslt #b00000000000000000000000000000000 (size!22704 _keys!976)))))

(assert (=> d!105177 (= lt!376015 e!462238)))

(declare-fun c!89675 () Bool)

(assert (=> d!105177 (= c!89675 (and (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!105177 (validMask!0 mask!1312)))

(assert (=> d!105177 (= (getCurrentListMap!2583 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!376011)))

(declare-fun call!36129 () ListLongMap!8989)

(declare-fun bm!36129 () Bool)

(assert (=> bm!36129 (= call!36129 (+!1941 (ite c!89675 call!36131 (ite c!89677 call!36128 call!36127)) (ite (or c!89675 c!89677) (tuple2!10153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34) (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!829250 () Bool)

(assert (=> b!829250 (= e!462244 e!462246)))

(declare-fun c!89672 () Bool)

(assert (=> b!829250 (= c!89672 (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!829251 () Bool)

(assert (=> b!829251 (= e!462238 (+!1941 call!36129 (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun bm!36130 () Bool)

(assert (=> bm!36130 (= call!36133 call!36129)))

(declare-fun b!829252 () Bool)

(declare-fun Unit!28411 () Unit!28409)

(assert (=> b!829252 (= e!462237 Unit!28411)))

(declare-fun b!829253 () Bool)

(assert (=> b!829253 (= e!462246 (not call!36132))))

(declare-fun b!829254 () Bool)

(assert (=> b!829254 (= e!462248 (not call!36130))))

(declare-fun b!829255 () Bool)

(assert (=> b!829255 (= e!462242 (validKeyInArray!0 (select (arr!22283 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!105177 c!89675) b!829251))

(assert (= (and d!105177 (not c!89675)) b!829247))

(assert (= (and b!829247 c!89677) b!829243))

(assert (= (and b!829247 (not c!89677)) b!829235))

(assert (= (and b!829235 c!89676) b!829244))

(assert (= (and b!829235 (not c!89676)) b!829246))

(assert (= (or b!829244 b!829246) bm!36128))

(assert (= (or b!829243 bm!36128) bm!36127))

(assert (= (or b!829243 b!829244) bm!36130))

(assert (= (or b!829251 bm!36127) bm!36125))

(assert (= (or b!829251 bm!36130) bm!36129))

(assert (= (and d!105177 res!565022) b!829242))

(assert (= (and d!105177 c!89674) b!829249))

(assert (= (and d!105177 (not c!89674)) b!829252))

(assert (= (and d!105177 res!565018) b!829240))

(assert (= (and b!829240 res!565025) b!829255))

(assert (= (and b!829240 (not res!565026)) b!829237))

(assert (= (and b!829237 res!565024) b!829236))

(assert (= (and b!829240 res!565020) b!829238))

(assert (= (and b!829238 c!89673) b!829245))

(assert (= (and b!829238 (not c!89673)) b!829254))

(assert (= (and b!829245 res!565023) b!829241))

(assert (= (or b!829245 b!829254) bm!36124))

(assert (= (and b!829238 res!565019) b!829250))

(assert (= (and b!829250 c!89672) b!829248))

(assert (= (and b!829250 (not c!89672)) b!829253))

(assert (= (and b!829248 res!565021) b!829239))

(assert (= (or b!829248 b!829253) bm!36126))

(declare-fun b_lambda!11313 () Bool)

(assert (=> (not b_lambda!11313) (not b!829236)))

(assert (=> b!829236 t!22353))

(declare-fun b_and!22491 () Bool)

(assert (= b_and!22489 (and (=> t!22353 result!8005) b_and!22491)))

(assert (=> bm!36125 m!772175))

(declare-fun m!772277 () Bool)

(assert (=> bm!36126 m!772277))

(declare-fun m!772279 () Bool)

(assert (=> b!829249 m!772279))

(declare-fun m!772281 () Bool)

(assert (=> b!829249 m!772281))

(declare-fun m!772283 () Bool)

(assert (=> b!829249 m!772283))

(declare-fun m!772285 () Bool)

(assert (=> b!829249 m!772285))

(declare-fun m!772287 () Bool)

(assert (=> b!829249 m!772287))

(assert (=> b!829249 m!772175))

(declare-fun m!772289 () Bool)

(assert (=> b!829249 m!772289))

(assert (=> b!829249 m!772287))

(declare-fun m!772291 () Bool)

(assert (=> b!829249 m!772291))

(assert (=> b!829249 m!772289))

(declare-fun m!772293 () Bool)

(assert (=> b!829249 m!772293))

(declare-fun m!772295 () Bool)

(assert (=> b!829249 m!772295))

(assert (=> b!829249 m!772229))

(declare-fun m!772297 () Bool)

(assert (=> b!829249 m!772297))

(declare-fun m!772299 () Bool)

(assert (=> b!829249 m!772299))

(declare-fun m!772301 () Bool)

(assert (=> b!829249 m!772301))

(assert (=> b!829249 m!772297))

(declare-fun m!772303 () Bool)

(assert (=> b!829249 m!772303))

(declare-fun m!772305 () Bool)

(assert (=> b!829249 m!772305))

(declare-fun m!772307 () Bool)

(assert (=> b!829249 m!772307))

(assert (=> b!829249 m!772305))

(declare-fun m!772309 () Bool)

(assert (=> bm!36129 m!772309))

(declare-fun m!772311 () Bool)

(assert (=> b!829241 m!772311))

(declare-fun m!772313 () Bool)

(assert (=> b!829239 m!772313))

(assert (=> d!105177 m!772185))

(assert (=> b!829255 m!772229))

(assert (=> b!829255 m!772229))

(assert (=> b!829255 m!772251))

(declare-fun m!772315 () Bool)

(assert (=> bm!36124 m!772315))

(declare-fun m!772317 () Bool)

(assert (=> b!829251 m!772317))

(assert (=> b!829242 m!772229))

(assert (=> b!829242 m!772229))

(assert (=> b!829242 m!772251))

(assert (=> b!829236 m!772241))

(assert (=> b!829236 m!772229))

(declare-fun m!772319 () Bool)

(assert (=> b!829236 m!772319))

(assert (=> b!829236 m!772229))

(assert (=> b!829236 m!772243))

(assert (=> b!829236 m!772241))

(assert (=> b!829236 m!772243))

(assert (=> b!829236 m!772245))

(assert (=> b!829237 m!772229))

(assert (=> b!829237 m!772229))

(declare-fun m!772321 () Bool)

(assert (=> b!829237 m!772321))

(assert (=> b!829105 d!105177))

(declare-fun d!105179 () Bool)

(declare-fun e!462252 () Bool)

(assert (=> d!105179 e!462252))

(declare-fun res!565031 () Bool)

(assert (=> d!105179 (=> (not res!565031) (not e!462252))))

(declare-fun lt!376042 () ListLongMap!8989)

(assert (=> d!105179 (= res!565031 (contains!4199 lt!376042 (_1!5086 (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun lt!376044 () List!15984)

(assert (=> d!105179 (= lt!376042 (ListLongMap!8990 lt!376044))))

(declare-fun lt!376043 () Unit!28409)

(declare-fun lt!376041 () Unit!28409)

(assert (=> d!105179 (= lt!376043 lt!376041)))

(declare-datatypes ((Option!417 0))(
  ( (Some!416 (v!10073 V!25237)) (None!415) )
))
(declare-fun getValueByKey!411 (List!15984 (_ BitVec 64)) Option!417)

(assert (=> d!105179 (= (getValueByKey!411 lt!376044 (_1!5086 (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (Some!416 (_2!5086 (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun lemmaContainsTupThenGetReturnValue!227 (List!15984 (_ BitVec 64) V!25237) Unit!28409)

(assert (=> d!105179 (= lt!376041 (lemmaContainsTupThenGetReturnValue!227 lt!376044 (_1!5086 (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5086 (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun insertStrictlySorted!265 (List!15984 (_ BitVec 64) V!25237) List!15984)

(assert (=> d!105179 (= lt!376044 (insertStrictlySorted!265 (toList!4510 (+!1941 lt!375925 (tuple2!10153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (_1!5086 (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5086 (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!105179 (= (+!1941 (+!1941 lt!375925 (tuple2!10153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) lt!376042)))

(declare-fun b!829260 () Bool)

(declare-fun res!565032 () Bool)

(assert (=> b!829260 (=> (not res!565032) (not e!462252))))

(assert (=> b!829260 (= res!565032 (= (getValueByKey!411 (toList!4510 lt!376042) (_1!5086 (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (Some!416 (_2!5086 (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!829261 () Bool)

(declare-fun contains!4200 (List!15984 tuple2!10152) Bool)

(assert (=> b!829261 (= e!462252 (contains!4200 (toList!4510 lt!376042) (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(assert (= (and d!105179 res!565031) b!829260))

(assert (= (and b!829260 res!565032) b!829261))

(declare-fun m!772323 () Bool)

(assert (=> d!105179 m!772323))

(declare-fun m!772325 () Bool)

(assert (=> d!105179 m!772325))

(declare-fun m!772327 () Bool)

(assert (=> d!105179 m!772327))

(declare-fun m!772329 () Bool)

(assert (=> d!105179 m!772329))

(declare-fun m!772331 () Bool)

(assert (=> b!829260 m!772331))

(declare-fun m!772333 () Bool)

(assert (=> b!829261 m!772333))

(assert (=> b!829105 d!105179))

(declare-fun d!105181 () Bool)

(declare-fun e!462253 () Bool)

(assert (=> d!105181 e!462253))

(declare-fun res!565033 () Bool)

(assert (=> d!105181 (=> (not res!565033) (not e!462253))))

(declare-fun lt!376046 () ListLongMap!8989)

(assert (=> d!105181 (= res!565033 (contains!4199 lt!376046 (_1!5086 (tuple2!10153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun lt!376048 () List!15984)

(assert (=> d!105181 (= lt!376046 (ListLongMap!8990 lt!376048))))

(declare-fun lt!376047 () Unit!28409)

(declare-fun lt!376045 () Unit!28409)

(assert (=> d!105181 (= lt!376047 lt!376045)))

(assert (=> d!105181 (= (getValueByKey!411 lt!376048 (_1!5086 (tuple2!10153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!416 (_2!5086 (tuple2!10153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!105181 (= lt!376045 (lemmaContainsTupThenGetReturnValue!227 lt!376048 (_1!5086 (tuple2!10153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5086 (tuple2!10153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!105181 (= lt!376048 (insertStrictlySorted!265 (toList!4510 lt!375925) (_1!5086 (tuple2!10153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) (_2!5086 (tuple2!10153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(assert (=> d!105181 (= (+!1941 lt!375925 (tuple2!10153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!376046)))

(declare-fun b!829262 () Bool)

(declare-fun res!565034 () Bool)

(assert (=> b!829262 (=> (not res!565034) (not e!462253))))

(assert (=> b!829262 (= res!565034 (= (getValueByKey!411 (toList!4510 lt!376046) (_1!5086 (tuple2!10153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))) (Some!416 (_2!5086 (tuple2!10153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))))

(declare-fun b!829263 () Bool)

(assert (=> b!829263 (= e!462253 (contains!4200 (toList!4510 lt!376046) (tuple2!10153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(assert (= (and d!105181 res!565033) b!829262))

(assert (= (and b!829262 res!565034) b!829263))

(declare-fun m!772335 () Bool)

(assert (=> d!105181 m!772335))

(declare-fun m!772337 () Bool)

(assert (=> d!105181 m!772337))

(declare-fun m!772339 () Bool)

(assert (=> d!105181 m!772339))

(declare-fun m!772341 () Bool)

(assert (=> d!105181 m!772341))

(declare-fun m!772343 () Bool)

(assert (=> b!829262 m!772343))

(declare-fun m!772345 () Bool)

(assert (=> b!829263 m!772345))

(assert (=> b!829105 d!105181))

(declare-fun b!829272 () Bool)

(declare-fun e!462260 () Bool)

(declare-fun call!36136 () Bool)

(assert (=> b!829272 (= e!462260 call!36136)))

(declare-fun b!829273 () Bool)

(declare-fun e!462261 () Bool)

(declare-fun e!462262 () Bool)

(assert (=> b!829273 (= e!462261 e!462262)))

(declare-fun c!89680 () Bool)

(assert (=> b!829273 (= c!89680 (validKeyInArray!0 (select (arr!22283 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!36133 () Bool)

(assert (=> bm!36133 (= call!36136 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun b!829275 () Bool)

(assert (=> b!829275 (= e!462262 e!462260)))

(declare-fun lt!376056 () (_ BitVec 64))

(assert (=> b!829275 (= lt!376056 (select (arr!22283 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376057 () Unit!28409)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!46496 (_ BitVec 64) (_ BitVec 32)) Unit!28409)

(assert (=> b!829275 (= lt!376057 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!376056 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!46496 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!829275 (arrayContainsKey!0 _keys!976 lt!376056 #b00000000000000000000000000000000)))

(declare-fun lt!376055 () Unit!28409)

(assert (=> b!829275 (= lt!376055 lt!376057)))

(declare-fun res!565039 () Bool)

(declare-datatypes ((SeekEntryResult!8730 0))(
  ( (MissingZero!8730 (index!37290 (_ BitVec 32))) (Found!8730 (index!37291 (_ BitVec 32))) (Intermediate!8730 (undefined!9542 Bool) (index!37292 (_ BitVec 32)) (x!70015 (_ BitVec 32))) (Undefined!8730) (MissingVacant!8730 (index!37293 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!46496 (_ BitVec 32)) SeekEntryResult!8730)

(assert (=> b!829275 (= res!565039 (= (seekEntryOrOpen!0 (select (arr!22283 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8730 #b00000000000000000000000000000000)))))

(assert (=> b!829275 (=> (not res!565039) (not e!462260))))

(declare-fun b!829274 () Bool)

(assert (=> b!829274 (= e!462262 call!36136)))

(declare-fun d!105183 () Bool)

(declare-fun res!565040 () Bool)

(assert (=> d!105183 (=> res!565040 e!462261)))

(assert (=> d!105183 (= res!565040 (bvsge #b00000000000000000000000000000000 (size!22704 _keys!976)))))

(assert (=> d!105183 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!462261)))

(assert (= (and d!105183 (not res!565040)) b!829273))

(assert (= (and b!829273 c!89680) b!829275))

(assert (= (and b!829273 (not c!89680)) b!829274))

(assert (= (and b!829275 res!565039) b!829272))

(assert (= (or b!829272 b!829274) bm!36133))

(assert (=> b!829273 m!772229))

(assert (=> b!829273 m!772229))

(assert (=> b!829273 m!772251))

(declare-fun m!772347 () Bool)

(assert (=> bm!36133 m!772347))

(assert (=> b!829275 m!772229))

(declare-fun m!772349 () Bool)

(assert (=> b!829275 m!772349))

(declare-fun m!772351 () Bool)

(assert (=> b!829275 m!772351))

(assert (=> b!829275 m!772229))

(declare-fun m!772353 () Bool)

(assert (=> b!829275 m!772353))

(assert (=> b!829110 d!105183))

(declare-fun b!829286 () Bool)

(declare-fun e!462271 () Bool)

(declare-fun call!36139 () Bool)

(assert (=> b!829286 (= e!462271 call!36139)))

(declare-fun b!829287 () Bool)

(assert (=> b!829287 (= e!462271 call!36139)))

(declare-fun b!829288 () Bool)

(declare-fun e!462274 () Bool)

(declare-fun contains!4201 (List!15983 (_ BitVec 64)) Bool)

(assert (=> b!829288 (= e!462274 (contains!4201 Nil!15980 (select (arr!22283 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun d!105185 () Bool)

(declare-fun res!565048 () Bool)

(declare-fun e!462272 () Bool)

(assert (=> d!105185 (=> res!565048 e!462272)))

(assert (=> d!105185 (= res!565048 (bvsge #b00000000000000000000000000000000 (size!22704 _keys!976)))))

(assert (=> d!105185 (= (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15980) e!462272)))

(declare-fun b!829289 () Bool)

(declare-fun e!462273 () Bool)

(assert (=> b!829289 (= e!462273 e!462271)))

(declare-fun c!89683 () Bool)

(assert (=> b!829289 (= c!89683 (validKeyInArray!0 (select (arr!22283 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun bm!36136 () Bool)

(assert (=> bm!36136 (= call!36139 (arrayNoDuplicates!0 _keys!976 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!89683 (Cons!15979 (select (arr!22283 _keys!976) #b00000000000000000000000000000000) Nil!15980) Nil!15980)))))

(declare-fun b!829290 () Bool)

(assert (=> b!829290 (= e!462272 e!462273)))

(declare-fun res!565047 () Bool)

(assert (=> b!829290 (=> (not res!565047) (not e!462273))))

(assert (=> b!829290 (= res!565047 (not e!462274))))

(declare-fun res!565049 () Bool)

(assert (=> b!829290 (=> (not res!565049) (not e!462274))))

(assert (=> b!829290 (= res!565049 (validKeyInArray!0 (select (arr!22283 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!105185 (not res!565048)) b!829290))

(assert (= (and b!829290 res!565049) b!829288))

(assert (= (and b!829290 res!565047) b!829289))

(assert (= (and b!829289 c!89683) b!829286))

(assert (= (and b!829289 (not c!89683)) b!829287))

(assert (= (or b!829286 b!829287) bm!36136))

(assert (=> b!829288 m!772229))

(assert (=> b!829288 m!772229))

(declare-fun m!772355 () Bool)

(assert (=> b!829288 m!772355))

(assert (=> b!829289 m!772229))

(assert (=> b!829289 m!772229))

(assert (=> b!829289 m!772251))

(assert (=> bm!36136 m!772229))

(declare-fun m!772357 () Bool)

(assert (=> bm!36136 m!772357))

(assert (=> b!829290 m!772229))

(assert (=> b!829290 m!772229))

(assert (=> b!829290 m!772251))

(assert (=> b!829103 d!105185))

(declare-fun d!105187 () Bool)

(assert (=> d!105187 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!71428 d!105187))

(declare-fun d!105189 () Bool)

(assert (=> d!105189 (= (array_inv!17727 _keys!976) (bvsge (size!22704 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!71428 d!105189))

(declare-fun d!105191 () Bool)

(assert (=> d!105191 (= (array_inv!17728 _values!788) (bvsge (size!22705 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!71428 d!105191))

(declare-fun b!829291 () Bool)

(declare-fun c!89688 () Bool)

(assert (=> b!829291 (= c!89688 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!462287 () ListLongMap!8989)

(declare-fun e!462278 () ListLongMap!8989)

(assert (=> b!829291 (= e!462287 e!462278)))

(declare-fun e!462277 () Bool)

(declare-fun lt!376058 () ListLongMap!8989)

(declare-fun b!829292 () Bool)

(assert (=> b!829292 (= e!462277 (= (apply!369 lt!376058 (select (arr!22283 _keys!976) #b00000000000000000000000000000000)) (get!11809 (select (arr!22284 _values!788) #b00000000000000000000000000000000) (dynLambda!979 defaultEntry!796 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!829292 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22705 _values!788)))))

(assert (=> b!829292 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22704 _keys!976)))))

(declare-fun bm!36137 () Bool)

(declare-fun call!36143 () Bool)

(assert (=> bm!36137 (= call!36143 (contains!4199 lt!376058 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!829293 () Bool)

(declare-fun e!462283 () Bool)

(assert (=> b!829293 (= e!462283 e!462277)))

(declare-fun res!565056 () Bool)

(assert (=> b!829293 (=> (not res!565056) (not e!462277))))

(assert (=> b!829293 (= res!565056 (contains!4199 lt!376058 (select (arr!22283 _keys!976) #b00000000000000000000000000000000)))))

(assert (=> b!829293 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22704 _keys!976)))))

(declare-fun b!829294 () Bool)

(declare-fun res!565051 () Bool)

(declare-fun e!462282 () Bool)

(assert (=> b!829294 (=> (not res!565051) (not e!462282))))

(declare-fun e!462286 () Bool)

(assert (=> b!829294 (= res!565051 e!462286)))

(declare-fun c!89685 () Bool)

(assert (=> b!829294 (= c!89685 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!829295 () Bool)

(declare-fun e!462281 () Bool)

(assert (=> b!829295 (= e!462281 (= (apply!369 lt!376058 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!754))))

(declare-fun b!829296 () Bool)

(declare-fun res!565052 () Bool)

(assert (=> b!829296 (=> (not res!565052) (not e!462282))))

(assert (=> b!829296 (= res!565052 e!462283)))

(declare-fun res!565058 () Bool)

(assert (=> b!829296 (=> res!565058 e!462283)))

(declare-fun e!462280 () Bool)

(assert (=> b!829296 (= res!565058 (not e!462280))))

(declare-fun res!565057 () Bool)

(assert (=> b!829296 (=> (not res!565057) (not e!462280))))

(assert (=> b!829296 (= res!565057 (bvslt #b00000000000000000000000000000000 (size!22704 _keys!976)))))

(declare-fun b!829297 () Bool)

(declare-fun e!462279 () Bool)

(assert (=> b!829297 (= e!462279 (= (apply!369 lt!376058 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!34))))

(declare-fun b!829298 () Bool)

(declare-fun e!462285 () Bool)

(assert (=> b!829298 (= e!462285 (validKeyInArray!0 (select (arr!22283 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun call!36144 () ListLongMap!8989)

(declare-fun bm!36138 () Bool)

(assert (=> bm!36138 (= call!36144 (getCurrentListMapNoExtraKeys!2511 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!829299 () Bool)

(declare-fun call!36146 () ListLongMap!8989)

(assert (=> b!829299 (= e!462287 call!36146)))

(declare-fun b!829300 () Bool)

(assert (=> b!829300 (= e!462278 call!36146)))

(declare-fun bm!36139 () Bool)

(declare-fun call!36145 () Bool)

(assert (=> bm!36139 (= call!36145 (contains!4199 lt!376058 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!829301 () Bool)

(assert (=> b!829301 (= e!462286 e!462279)))

(declare-fun res!565055 () Bool)

(assert (=> b!829301 (= res!565055 call!36143)))

(assert (=> b!829301 (=> (not res!565055) (not e!462279))))

(declare-fun b!829302 () Bool)

(declare-fun call!36140 () ListLongMap!8989)

(assert (=> b!829302 (= e!462278 call!36140)))

(declare-fun bm!36140 () Bool)

(declare-fun call!36141 () ListLongMap!8989)

(assert (=> bm!36140 (= call!36141 call!36144)))

(declare-fun b!829303 () Bool)

(declare-fun e!462276 () ListLongMap!8989)

(assert (=> b!829303 (= e!462276 e!462287)))

(declare-fun c!89689 () Bool)

(assert (=> b!829303 (= c!89689 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!829304 () Bool)

(declare-fun e!462284 () Bool)

(assert (=> b!829304 (= e!462284 e!462281)))

(declare-fun res!565053 () Bool)

(assert (=> b!829304 (= res!565053 call!36145)))

(assert (=> b!829304 (=> (not res!565053) (not e!462281))))

(declare-fun bm!36141 () Bool)

(assert (=> bm!36141 (= call!36140 call!36141)))

(declare-fun b!829305 () Bool)

(declare-fun e!462275 () Unit!28409)

(declare-fun lt!376067 () Unit!28409)

(assert (=> b!829305 (= e!462275 lt!376067)))

(declare-fun lt!376079 () ListLongMap!8989)

(assert (=> b!829305 (= lt!376079 (getCurrentListMapNoExtraKeys!2511 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376059 () (_ BitVec 64))

(assert (=> b!829305 (= lt!376059 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376069 () (_ BitVec 64))

(assert (=> b!829305 (= lt!376069 (select (arr!22283 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376074 () Unit!28409)

(assert (=> b!829305 (= lt!376074 (addStillContains!320 lt!376079 lt!376059 zeroValueBefore!34 lt!376069))))

(assert (=> b!829305 (contains!4199 (+!1941 lt!376079 (tuple2!10153 lt!376059 zeroValueBefore!34)) lt!376069)))

(declare-fun lt!376072 () Unit!28409)

(assert (=> b!829305 (= lt!376072 lt!376074)))

(declare-fun lt!376077 () ListLongMap!8989)

(assert (=> b!829305 (= lt!376077 (getCurrentListMapNoExtraKeys!2511 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376073 () (_ BitVec 64))

(assert (=> b!829305 (= lt!376073 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376068 () (_ BitVec 64))

(assert (=> b!829305 (= lt!376068 (select (arr!22283 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376060 () Unit!28409)

(assert (=> b!829305 (= lt!376060 (addApplyDifferent!320 lt!376077 lt!376073 minValue!754 lt!376068))))

(assert (=> b!829305 (= (apply!369 (+!1941 lt!376077 (tuple2!10153 lt!376073 minValue!754)) lt!376068) (apply!369 lt!376077 lt!376068))))

(declare-fun lt!376075 () Unit!28409)

(assert (=> b!829305 (= lt!376075 lt!376060)))

(declare-fun lt!376078 () ListLongMap!8989)

(assert (=> b!829305 (= lt!376078 (getCurrentListMapNoExtraKeys!2511 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376066 () (_ BitVec 64))

(assert (=> b!829305 (= lt!376066 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376076 () (_ BitVec 64))

(assert (=> b!829305 (= lt!376076 (select (arr!22283 _keys!976) #b00000000000000000000000000000000))))

(declare-fun lt!376071 () Unit!28409)

(assert (=> b!829305 (= lt!376071 (addApplyDifferent!320 lt!376078 lt!376066 zeroValueBefore!34 lt!376076))))

(assert (=> b!829305 (= (apply!369 (+!1941 lt!376078 (tuple2!10153 lt!376066 zeroValueBefore!34)) lt!376076) (apply!369 lt!376078 lt!376076))))

(declare-fun lt!376065 () Unit!28409)

(assert (=> b!829305 (= lt!376065 lt!376071)))

(declare-fun lt!376064 () ListLongMap!8989)

(assert (=> b!829305 (= lt!376064 (getCurrentListMapNoExtraKeys!2511 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!376063 () (_ BitVec 64))

(assert (=> b!829305 (= lt!376063 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!376070 () (_ BitVec 64))

(assert (=> b!829305 (= lt!376070 (select (arr!22283 _keys!976) #b00000000000000000000000000000000))))

(assert (=> b!829305 (= lt!376067 (addApplyDifferent!320 lt!376064 lt!376063 minValue!754 lt!376070))))

(assert (=> b!829305 (= (apply!369 (+!1941 lt!376064 (tuple2!10153 lt!376063 minValue!754)) lt!376070) (apply!369 lt!376064 lt!376070))))

(declare-fun d!105193 () Bool)

(assert (=> d!105193 e!462282))

(declare-fun res!565050 () Bool)

(assert (=> d!105193 (=> (not res!565050) (not e!462282))))

(assert (=> d!105193 (= res!565050 (or (bvsge #b00000000000000000000000000000000 (size!22704 _keys!976)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!22704 _keys!976)))))))

(declare-fun lt!376062 () ListLongMap!8989)

(assert (=> d!105193 (= lt!376058 lt!376062)))

(declare-fun lt!376061 () Unit!28409)

(assert (=> d!105193 (= lt!376061 e!462275)))

(declare-fun c!89686 () Bool)

(assert (=> d!105193 (= c!89686 e!462285)))

(declare-fun res!565054 () Bool)

(assert (=> d!105193 (=> (not res!565054) (not e!462285))))

(assert (=> d!105193 (= res!565054 (bvslt #b00000000000000000000000000000000 (size!22704 _keys!976)))))

(assert (=> d!105193 (= lt!376062 e!462276)))

(declare-fun c!89687 () Bool)

(assert (=> d!105193 (= c!89687 (and (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!105193 (validMask!0 mask!1312)))

(assert (=> d!105193 (= (getCurrentListMap!2583 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) lt!376058)))

(declare-fun call!36142 () ListLongMap!8989)

(declare-fun bm!36142 () Bool)

(assert (=> bm!36142 (= call!36142 (+!1941 (ite c!89687 call!36144 (ite c!89689 call!36141 call!36140)) (ite (or c!89687 c!89689) (tuple2!10153 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34) (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun b!829306 () Bool)

(assert (=> b!829306 (= e!462282 e!462284)))

(declare-fun c!89684 () Bool)

(assert (=> b!829306 (= c!89684 (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!829307 () Bool)

(assert (=> b!829307 (= e!462276 (+!1941 call!36142 (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(declare-fun bm!36143 () Bool)

(assert (=> bm!36143 (= call!36146 call!36142)))

(declare-fun b!829308 () Bool)

(declare-fun Unit!28412 () Unit!28409)

(assert (=> b!829308 (= e!462275 Unit!28412)))

(declare-fun b!829309 () Bool)

(assert (=> b!829309 (= e!462284 (not call!36145))))

(declare-fun b!829310 () Bool)

(assert (=> b!829310 (= e!462286 (not call!36143))))

(declare-fun b!829311 () Bool)

(assert (=> b!829311 (= e!462280 (validKeyInArray!0 (select (arr!22283 _keys!976) #b00000000000000000000000000000000)))))

(assert (= (and d!105193 c!89687) b!829307))

(assert (= (and d!105193 (not c!89687)) b!829303))

(assert (= (and b!829303 c!89689) b!829299))

(assert (= (and b!829303 (not c!89689)) b!829291))

(assert (= (and b!829291 c!89688) b!829300))

(assert (= (and b!829291 (not c!89688)) b!829302))

(assert (= (or b!829300 b!829302) bm!36141))

(assert (= (or b!829299 bm!36141) bm!36140))

(assert (= (or b!829299 b!829300) bm!36143))

(assert (= (or b!829307 bm!36140) bm!36138))

(assert (= (or b!829307 bm!36143) bm!36142))

(assert (= (and d!105193 res!565054) b!829298))

(assert (= (and d!105193 c!89686) b!829305))

(assert (= (and d!105193 (not c!89686)) b!829308))

(assert (= (and d!105193 res!565050) b!829296))

(assert (= (and b!829296 res!565057) b!829311))

(assert (= (and b!829296 (not res!565058)) b!829293))

(assert (= (and b!829293 res!565056) b!829292))

(assert (= (and b!829296 res!565052) b!829294))

(assert (= (and b!829294 c!89685) b!829301))

(assert (= (and b!829294 (not c!89685)) b!829310))

(assert (= (and b!829301 res!565055) b!829297))

(assert (= (or b!829301 b!829310) bm!36137))

(assert (= (and b!829294 res!565051) b!829306))

(assert (= (and b!829306 c!89684) b!829304))

(assert (= (and b!829306 (not c!89684)) b!829309))

(assert (= (and b!829304 res!565053) b!829295))

(assert (= (or b!829304 b!829309) bm!36139))

(declare-fun b_lambda!11315 () Bool)

(assert (=> (not b_lambda!11315) (not b!829292)))

(assert (=> b!829292 t!22353))

(declare-fun b_and!22493 () Bool)

(assert (= b_and!22491 (and (=> t!22353 result!8005) b_and!22493)))

(assert (=> bm!36138 m!772177))

(declare-fun m!772359 () Bool)

(assert (=> bm!36139 m!772359))

(declare-fun m!772361 () Bool)

(assert (=> b!829305 m!772361))

(declare-fun m!772363 () Bool)

(assert (=> b!829305 m!772363))

(declare-fun m!772365 () Bool)

(assert (=> b!829305 m!772365))

(declare-fun m!772367 () Bool)

(assert (=> b!829305 m!772367))

(declare-fun m!772369 () Bool)

(assert (=> b!829305 m!772369))

(assert (=> b!829305 m!772177))

(declare-fun m!772371 () Bool)

(assert (=> b!829305 m!772371))

(assert (=> b!829305 m!772369))

(declare-fun m!772373 () Bool)

(assert (=> b!829305 m!772373))

(assert (=> b!829305 m!772371))

(declare-fun m!772375 () Bool)

(assert (=> b!829305 m!772375))

(declare-fun m!772377 () Bool)

(assert (=> b!829305 m!772377))

(assert (=> b!829305 m!772229))

(declare-fun m!772379 () Bool)

(assert (=> b!829305 m!772379))

(declare-fun m!772381 () Bool)

(assert (=> b!829305 m!772381))

(declare-fun m!772383 () Bool)

(assert (=> b!829305 m!772383))

(assert (=> b!829305 m!772379))

(declare-fun m!772385 () Bool)

(assert (=> b!829305 m!772385))

(declare-fun m!772387 () Bool)

(assert (=> b!829305 m!772387))

(declare-fun m!772389 () Bool)

(assert (=> b!829305 m!772389))

(assert (=> b!829305 m!772387))

(declare-fun m!772391 () Bool)

(assert (=> bm!36142 m!772391))

(declare-fun m!772393 () Bool)

(assert (=> b!829297 m!772393))

(declare-fun m!772395 () Bool)

(assert (=> b!829295 m!772395))

(assert (=> d!105193 m!772185))

(assert (=> b!829311 m!772229))

(assert (=> b!829311 m!772229))

(assert (=> b!829311 m!772251))

(declare-fun m!772397 () Bool)

(assert (=> bm!36137 m!772397))

(declare-fun m!772399 () Bool)

(assert (=> b!829307 m!772399))

(assert (=> b!829298 m!772229))

(assert (=> b!829298 m!772229))

(assert (=> b!829298 m!772251))

(assert (=> b!829292 m!772241))

(assert (=> b!829292 m!772229))

(declare-fun m!772401 () Bool)

(assert (=> b!829292 m!772401))

(assert (=> b!829292 m!772229))

(assert (=> b!829292 m!772243))

(assert (=> b!829292 m!772241))

(assert (=> b!829292 m!772243))

(assert (=> b!829292 m!772245))

(assert (=> b!829293 m!772229))

(assert (=> b!829293 m!772229))

(declare-fun m!772403 () Bool)

(assert (=> b!829293 m!772403))

(assert (=> b!829107 d!105193))

(declare-fun d!105195 () Bool)

(declare-fun e!462288 () Bool)

(assert (=> d!105195 e!462288))

(declare-fun res!565059 () Bool)

(assert (=> d!105195 (=> (not res!565059) (not e!462288))))

(declare-fun lt!376081 () ListLongMap!8989)

(assert (=> d!105195 (= res!565059 (contains!4199 lt!376081 (_1!5086 (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(declare-fun lt!376083 () List!15984)

(assert (=> d!105195 (= lt!376081 (ListLongMap!8990 lt!376083))))

(declare-fun lt!376082 () Unit!28409)

(declare-fun lt!376080 () Unit!28409)

(assert (=> d!105195 (= lt!376082 lt!376080)))

(assert (=> d!105195 (= (getValueByKey!411 lt!376083 (_1!5086 (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (Some!416 (_2!5086 (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!105195 (= lt!376080 (lemmaContainsTupThenGetReturnValue!227 lt!376083 (_1!5086 (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5086 (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!105195 (= lt!376083 (insertStrictlySorted!265 (toList!4510 lt!375925) (_1!5086 (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) (_2!5086 (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))))

(assert (=> d!105195 (= (+!1941 lt!375925 (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)) lt!376081)))

(declare-fun b!829312 () Bool)

(declare-fun res!565060 () Bool)

(assert (=> b!829312 (=> (not res!565060) (not e!462288))))

(assert (=> b!829312 (= res!565060 (= (getValueByKey!411 (toList!4510 lt!376081) (_1!5086 (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))) (Some!416 (_2!5086 (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))))

(declare-fun b!829313 () Bool)

(assert (=> b!829313 (= e!462288 (contains!4200 (toList!4510 lt!376081) (tuple2!10153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754)))))

(assert (= (and d!105195 res!565059) b!829312))

(assert (= (and b!829312 res!565060) b!829313))

(declare-fun m!772405 () Bool)

(assert (=> d!105195 m!772405))

(declare-fun m!772407 () Bool)

(assert (=> d!105195 m!772407))

(declare-fun m!772409 () Bool)

(assert (=> d!105195 m!772409))

(declare-fun m!772411 () Bool)

(assert (=> d!105195 m!772411))

(declare-fun m!772413 () Bool)

(assert (=> b!829312 m!772413))

(declare-fun m!772415 () Bool)

(assert (=> b!829313 m!772415))

(assert (=> b!829107 d!105195))

(declare-fun condMapEmpty!24415 () Bool)

(declare-fun mapDefault!24415 () ValueCell!7173)

(assert (=> mapNonEmpty!24409 (= condMapEmpty!24415 (= mapRest!24409 ((as const (Array (_ BitVec 32) ValueCell!7173)) mapDefault!24415)))))

(declare-fun e!462294 () Bool)

(declare-fun mapRes!24415 () Bool)

(assert (=> mapNonEmpty!24409 (= tp!47179 (and e!462294 mapRes!24415))))

(declare-fun b!829321 () Bool)

(assert (=> b!829321 (= e!462294 tp_is_empty!15177)))

(declare-fun b!829320 () Bool)

(declare-fun e!462293 () Bool)

(assert (=> b!829320 (= e!462293 tp_is_empty!15177)))

(declare-fun mapIsEmpty!24415 () Bool)

(assert (=> mapIsEmpty!24415 mapRes!24415))

(declare-fun mapNonEmpty!24415 () Bool)

(declare-fun tp!47188 () Bool)

(assert (=> mapNonEmpty!24415 (= mapRes!24415 (and tp!47188 e!462293))))

(declare-fun mapRest!24415 () (Array (_ BitVec 32) ValueCell!7173))

(declare-fun mapValue!24415 () ValueCell!7173)

(declare-fun mapKey!24415 () (_ BitVec 32))

(assert (=> mapNonEmpty!24415 (= mapRest!24409 (store mapRest!24415 mapKey!24415 mapValue!24415))))

(assert (= (and mapNonEmpty!24409 condMapEmpty!24415) mapIsEmpty!24415))

(assert (= (and mapNonEmpty!24409 (not condMapEmpty!24415)) mapNonEmpty!24415))

(assert (= (and mapNonEmpty!24415 ((_ is ValueCellFull!7173) mapValue!24415)) b!829320))

(assert (= (and mapNonEmpty!24409 ((_ is ValueCellFull!7173) mapDefault!24415)) b!829321))

(declare-fun m!772417 () Bool)

(assert (=> mapNonEmpty!24415 m!772417))

(declare-fun b_lambda!11317 () Bool)

(assert (= b_lambda!11313 (or (and start!71428 b_free!13467) b_lambda!11317)))

(declare-fun b_lambda!11319 () Bool)

(assert (= b_lambda!11307 (or (and start!71428 b_free!13467) b_lambda!11319)))

(declare-fun b_lambda!11321 () Bool)

(assert (= b_lambda!11315 (or (and start!71428 b_free!13467) b_lambda!11321)))

(declare-fun b_lambda!11323 () Bool)

(assert (= b_lambda!11311 (or (and start!71428 b_free!13467) b_lambda!11323)))

(declare-fun b_lambda!11325 () Bool)

(assert (= b_lambda!11309 (or (and start!71428 b_free!13467) b_lambda!11325)))

(declare-fun b_lambda!11327 () Bool)

(assert (= b_lambda!11305 (or (and start!71428 b_free!13467) b_lambda!11327)))

(check-sat (not b!829293) (not d!105175) (not b_lambda!11321) (not d!105181) (not bm!36142) (not b!829298) (not b!829312) (not b!829178) (not b!829239) (not b!829262) (not b!829174) tp_is_empty!15177 (not b!829290) (not bm!36125) (not b!829171) (not b!829273) (not bm!36126) (not b!829242) (not b!829295) (not d!105177) (not b!829191) (not b!829292) (not b!829237) (not d!105171) (not b!829186) (not d!105179) (not b!829260) (not b_lambda!11319) (not b_lambda!11317) (not b!829307) (not bm!36133) (not bm!36137) (not b!829168) (not bm!36136) (not b!829261) (not b!829251) (not b!829255) (not b!829311) (not bm!36124) (not b_lambda!11325) (not b!829185) (not b!829187) (not b!829313) (not bm!36139) (not b!829275) (not b_lambda!11327) (not b!829305) (not d!105173) (not bm!36108) (not mapNonEmpty!24415) (not b!829241) (not b_lambda!11323) (not b!829192) b_and!22493 (not bm!36109) (not b!829289) (not b!829297) (not b!829249) (not b!829263) (not b!829288) (not b!829172) (not b!829189) (not b!829175) (not d!105195) (not b!829177) (not bm!36138) (not b!829188) (not b!829236) (not b!829173) (not d!105193) (not b_next!13467) (not b!829182) (not bm!36129))
(check-sat b_and!22493 (not b_next!13467))
