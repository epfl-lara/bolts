; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137736 () Bool)

(assert start!137736)

(declare-fun res!1081136 () Bool)

(declare-fun e!883175 () Bool)

(assert (=> start!137736 (=> (not res!1081136) (not e!883175))))

(declare-datatypes ((B!2782 0))(
  ( (B!2783 (val!19753 Int)) )
))
(declare-datatypes ((tuple2!25838 0))(
  ( (tuple2!25839 (_1!12929 (_ BitVec 64)) (_2!12929 B!2782)) )
))
(declare-datatypes ((List!37034 0))(
  ( (Nil!37031) (Cons!37030 (h!38574 tuple2!25838) (t!51955 List!37034)) )
))
(declare-datatypes ((ListLongMap!22961 0))(
  ( (ListLongMap!22962 (toList!11496 List!37034)) )
))
(declare-fun thiss!185 () ListLongMap!22961)

(declare-fun key!86 () (_ BitVec 64))

(declare-fun containsKey!960 (List!37034 (_ BitVec 64)) Bool)

(assert (=> start!137736 (= res!1081136 (containsKey!960 (toList!11496 thiss!185) key!86))))

(assert (=> start!137736 e!883175))

(declare-fun e!883176 () Bool)

(declare-fun inv!59128 (ListLongMap!22961) Bool)

(assert (=> start!137736 (and (inv!59128 thiss!185) e!883176)))

(assert (=> start!137736 true))

(declare-fun b!1582405 () Bool)

(declare-fun isStrictlySorted!1117 (List!37034) Bool)

(assert (=> b!1582405 (= e!883175 (not (isStrictlySorted!1117 (toList!11496 thiss!185))))))

(declare-fun b!1582406 () Bool)

(declare-fun tp!114781 () Bool)

(assert (=> b!1582406 (= e!883176 tp!114781)))

(assert (= (and start!137736 res!1081136) b!1582405))

(assert (= start!137736 b!1582406))

(declare-fun m!1452839 () Bool)

(assert (=> start!137736 m!1452839))

(declare-fun m!1452841 () Bool)

(assert (=> start!137736 m!1452841))

(declare-fun m!1452843 () Bool)

(assert (=> b!1582405 m!1452843))

(check-sat (not start!137736) (not b!1582405) (not b!1582406))
(check-sat)
(get-model)

(declare-fun d!166947 () Bool)

(declare-fun res!1081154 () Bool)

(declare-fun e!883197 () Bool)

(assert (=> d!166947 (=> res!1081154 e!883197)))

(get-info :version)

(assert (=> d!166947 (= res!1081154 (and ((_ is Cons!37030) (toList!11496 thiss!185)) (= (_1!12929 (h!38574 (toList!11496 thiss!185))) key!86)))))

(assert (=> d!166947 (= (containsKey!960 (toList!11496 thiss!185) key!86) e!883197)))

(declare-fun b!1582427 () Bool)

(declare-fun e!883198 () Bool)

(assert (=> b!1582427 (= e!883197 e!883198)))

(declare-fun res!1081155 () Bool)

(assert (=> b!1582427 (=> (not res!1081155) (not e!883198))))

(assert (=> b!1582427 (= res!1081155 (and (or (not ((_ is Cons!37030) (toList!11496 thiss!185))) (bvsle (_1!12929 (h!38574 (toList!11496 thiss!185))) key!86)) ((_ is Cons!37030) (toList!11496 thiss!185)) (bvslt (_1!12929 (h!38574 (toList!11496 thiss!185))) key!86)))))

(declare-fun b!1582428 () Bool)

(assert (=> b!1582428 (= e!883198 (containsKey!960 (t!51955 (toList!11496 thiss!185)) key!86))))

(assert (= (and d!166947 (not res!1081154)) b!1582427))

(assert (= (and b!1582427 res!1081155) b!1582428))

(declare-fun m!1452851 () Bool)

(assert (=> b!1582428 m!1452851))

(assert (=> start!137736 d!166947))

(declare-fun d!166951 () Bool)

(assert (=> d!166951 (= (inv!59128 thiss!185) (isStrictlySorted!1117 (toList!11496 thiss!185)))))

(declare-fun bs!45844 () Bool)

(assert (= bs!45844 d!166951))

(assert (=> bs!45844 m!1452843))

(assert (=> start!137736 d!166951))

(declare-fun d!166957 () Bool)

(declare-fun res!1081172 () Bool)

(declare-fun e!883215 () Bool)

(assert (=> d!166957 (=> res!1081172 e!883215)))

(assert (=> d!166957 (= res!1081172 (or ((_ is Nil!37031) (toList!11496 thiss!185)) ((_ is Nil!37031) (t!51955 (toList!11496 thiss!185)))))))

(assert (=> d!166957 (= (isStrictlySorted!1117 (toList!11496 thiss!185)) e!883215)))

(declare-fun b!1582445 () Bool)

(declare-fun e!883216 () Bool)

(assert (=> b!1582445 (= e!883215 e!883216)))

(declare-fun res!1081173 () Bool)

(assert (=> b!1582445 (=> (not res!1081173) (not e!883216))))

(assert (=> b!1582445 (= res!1081173 (bvslt (_1!12929 (h!38574 (toList!11496 thiss!185))) (_1!12929 (h!38574 (t!51955 (toList!11496 thiss!185))))))))

(declare-fun b!1582446 () Bool)

(assert (=> b!1582446 (= e!883216 (isStrictlySorted!1117 (t!51955 (toList!11496 thiss!185))))))

(assert (= (and d!166957 (not res!1081172)) b!1582445))

(assert (= (and b!1582445 res!1081173) b!1582446))

(declare-fun m!1452859 () Bool)

(assert (=> b!1582446 m!1452859))

(assert (=> b!1582405 d!166957))

(declare-fun b!1582458 () Bool)

(declare-fun e!883224 () Bool)

(declare-fun tp_is_empty!39321 () Bool)

(declare-fun tp!114790 () Bool)

(assert (=> b!1582458 (= e!883224 (and tp_is_empty!39321 tp!114790))))

(assert (=> b!1582406 (= tp!114781 e!883224)))

(assert (= (and b!1582406 ((_ is Cons!37030) (toList!11496 thiss!185))) b!1582458))

(check-sat (not b!1582446) tp_is_empty!39321 (not b!1582458) (not b!1582428) (not d!166951))
(check-sat)
