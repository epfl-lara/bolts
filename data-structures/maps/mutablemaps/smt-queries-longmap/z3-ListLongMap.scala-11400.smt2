; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132768 () Bool)

(assert start!132768)

(declare-fun b!1555077 () Bool)

(declare-fun e!866010 () Bool)

(assert (=> b!1555077 (= e!866010 (not true))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-datatypes ((B!2278 0))(
  ( (B!2279 (val!19225 Int)) )
))
(declare-fun newValue!105 () B!2278)

(declare-fun lt!670163 () Bool)

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-datatypes ((tuple2!24966 0))(
  ( (tuple2!24967 (_1!12493 (_ BitVec 64)) (_2!12493 B!2278)) )
))
(declare-datatypes ((List!36405 0))(
  ( (Nil!36402) (Cons!36401 (h!37848 tuple2!24966) (t!51133 List!36405)) )
))
(declare-fun l!1177 () List!36405)

(declare-fun containsKey!787 (List!36405 (_ BitVec 64)) Bool)

(declare-fun insertStrictlySorted!529 (List!36405 (_ BitVec 64) B!2278) List!36405)

(assert (=> b!1555077 (= lt!670163 (containsKey!787 (insertStrictlySorted!529 l!1177 newKey!105 newValue!105) otherKey!50))))

(declare-fun e!866008 () Bool)

(assert (=> b!1555077 e!866008))

(declare-fun res!1064187 () Bool)

(assert (=> b!1555077 (=> (not res!1064187) (not e!866008))))

(declare-fun lt!670161 () List!36405)

(assert (=> b!1555077 (= res!1064187 (= (containsKey!787 lt!670161 otherKey!50) (containsKey!787 (t!51133 l!1177) otherKey!50)))))

(assert (=> b!1555077 (= lt!670161 (insertStrictlySorted!529 (t!51133 l!1177) newKey!105 newValue!105))))

(declare-datatypes ((Unit!51757 0))(
  ( (Unit!51758) )
))
(declare-fun lt!670162 () Unit!51757)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!26 (List!36405 (_ BitVec 64) B!2278 (_ BitVec 64)) Unit!51757)

(assert (=> b!1555077 (= lt!670162 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!26 (t!51133 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun res!1064189 () Bool)

(assert (=> start!132768 (=> (not res!1064189) (not e!866010))))

(declare-fun isStrictlySorted!915 (List!36405) Bool)

(assert (=> start!132768 (= res!1064189 (isStrictlySorted!915 l!1177))))

(assert (=> start!132768 e!866010))

(declare-fun e!866009 () Bool)

(assert (=> start!132768 e!866009))

(assert (=> start!132768 true))

(declare-fun tp_is_empty!38289 () Bool)

(assert (=> start!132768 tp_is_empty!38289))

(declare-fun b!1555078 () Bool)

(declare-fun tp!112267 () Bool)

(assert (=> b!1555078 (= e!866009 (and tp_is_empty!38289 tp!112267))))

(declare-fun b!1555079 () Bool)

(declare-fun res!1064188 () Bool)

(assert (=> b!1555079 (=> (not res!1064188) (not e!866010))))

(assert (=> b!1555079 (= res!1064188 (isStrictlySorted!915 (t!51133 l!1177)))))

(declare-fun b!1555080 () Bool)

(declare-datatypes ((Option!844 0))(
  ( (Some!843 (v!22024 B!2278)) (None!842) )
))
(declare-fun getValueByKey!769 (List!36405 (_ BitVec 64)) Option!844)

(assert (=> b!1555080 (= e!866008 (= (getValueByKey!769 lt!670161 otherKey!50) (getValueByKey!769 (t!51133 l!1177) otherKey!50)))))

(declare-fun b!1555081 () Bool)

(declare-fun res!1064190 () Bool)

(assert (=> b!1555081 (=> (not res!1064190) (not e!866010))))

(get-info :version)

(assert (=> b!1555081 (= res!1064190 (and (not (= newKey!105 otherKey!50)) ((_ is Cons!36401) l!1177) (not (= (_1!12493 (h!37848 l!1177)) otherKey!50))))))

(assert (= (and start!132768 res!1064189) b!1555081))

(assert (= (and b!1555081 res!1064190) b!1555079))

(assert (= (and b!1555079 res!1064188) b!1555077))

(assert (= (and b!1555077 res!1064187) b!1555080))

(assert (= (and start!132768 ((_ is Cons!36401) l!1177)) b!1555078))

(declare-fun m!1433207 () Bool)

(assert (=> b!1555077 m!1433207))

(declare-fun m!1433209 () Bool)

(assert (=> b!1555077 m!1433209))

(declare-fun m!1433211 () Bool)

(assert (=> b!1555077 m!1433211))

(declare-fun m!1433213 () Bool)

(assert (=> b!1555077 m!1433213))

(declare-fun m!1433215 () Bool)

(assert (=> b!1555077 m!1433215))

(assert (=> b!1555077 m!1433213))

(declare-fun m!1433217 () Bool)

(assert (=> b!1555077 m!1433217))

(declare-fun m!1433219 () Bool)

(assert (=> start!132768 m!1433219))

(declare-fun m!1433221 () Bool)

(assert (=> b!1555079 m!1433221))

(declare-fun m!1433223 () Bool)

(assert (=> b!1555080 m!1433223))

(declare-fun m!1433225 () Bool)

(assert (=> b!1555080 m!1433225))

(check-sat (not start!132768) (not b!1555078) (not b!1555079) (not b!1555077) (not b!1555080) tp_is_empty!38289)
(check-sat)
