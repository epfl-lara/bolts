; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137622 () Bool)

(assert start!137622)

(declare-fun b!1582018 () Bool)

(declare-datatypes ((B!2740 0))(
  ( (B!2741 (val!19732 Int)) )
))
(declare-datatypes ((tuple2!25796 0))(
  ( (tuple2!25797 (_1!12908 (_ BitVec 64)) (_2!12908 B!2740)) )
))
(declare-datatypes ((List!37013 0))(
  ( (Nil!37010) (Cons!37009 (h!38553 tuple2!25796) (t!51934 List!37013)) )
))
(declare-fun l!1356 () List!37013)

(declare-fun value!184 () B!2740)

(declare-fun key!387 () (_ BitVec 64))

(declare-fun e!882866 () Bool)

(declare-fun contains!10532 (List!37013 tuple2!25796) Bool)

(assert (=> b!1582018 (= e!882866 (contains!10532 l!1356 (tuple2!25797 key!387 value!184)))))

(declare-fun res!1080895 () Bool)

(assert (=> start!137622 (=> (not res!1080895) (not e!882866))))

(declare-fun isStrictlySorted!1105 (List!37013) Bool)

(assert (=> start!137622 (= res!1080895 (isStrictlySorted!1105 l!1356))))

(assert (=> start!137622 e!882866))

(declare-fun e!882867 () Bool)

(assert (=> start!137622 e!882867))

(assert (=> start!137622 true))

(declare-fun tp_is_empty!39285 () Bool)

(assert (=> start!137622 tp_is_empty!39285))

(declare-fun b!1582017 () Bool)

(declare-fun res!1080896 () Bool)

(assert (=> b!1582017 (=> (not res!1080896) (not e!882866))))

(get-info :version)

(assert (=> b!1582017 (= res!1080896 ((_ is Nil!37010) l!1356))))

(declare-fun b!1582016 () Bool)

(declare-fun res!1080894 () Bool)

(assert (=> b!1582016 (=> (not res!1080894) (not e!882866))))

(declare-fun containsKey!951 (List!37013 (_ BitVec 64)) Bool)

(assert (=> b!1582016 (= res!1080894 (not (containsKey!951 l!1356 key!387)))))

(declare-fun b!1582019 () Bool)

(declare-fun tp!114682 () Bool)

(assert (=> b!1582019 (= e!882867 (and tp_is_empty!39285 tp!114682))))

(assert (= (and start!137622 res!1080895) b!1582016))

(assert (= (and b!1582016 res!1080894) b!1582017))

(assert (= (and b!1582017 res!1080896) b!1582018))

(assert (= (and start!137622 ((_ is Cons!37009) l!1356)) b!1582019))

(declare-fun m!1452665 () Bool)

(assert (=> b!1582018 m!1452665))

(declare-fun m!1452667 () Bool)

(assert (=> start!137622 m!1452667))

(declare-fun m!1452669 () Bool)

(assert (=> b!1582016 m!1452669))

(check-sat (not b!1582019) tp_is_empty!39285 (not b!1582018) (not start!137622) (not b!1582016))
(check-sat)
(get-model)

(declare-fun lt!676969 () Bool)

(declare-fun d!166857 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!859 (List!37013) (InoxSet tuple2!25796))

(assert (=> d!166857 (= lt!676969 (select (content!859 l!1356) (tuple2!25797 key!387 value!184)))))

(declare-fun e!882891 () Bool)

(assert (=> d!166857 (= lt!676969 e!882891)))

(declare-fun res!1080923 () Bool)

(assert (=> d!166857 (=> (not res!1080923) (not e!882891))))

(assert (=> d!166857 (= res!1080923 ((_ is Cons!37009) l!1356))))

(assert (=> d!166857 (= (contains!10532 l!1356 (tuple2!25797 key!387 value!184)) lt!676969)))

(declare-fun b!1582048 () Bool)

(declare-fun e!882890 () Bool)

(assert (=> b!1582048 (= e!882891 e!882890)))

(declare-fun res!1080922 () Bool)

(assert (=> b!1582048 (=> res!1080922 e!882890)))

(assert (=> b!1582048 (= res!1080922 (= (h!38553 l!1356) (tuple2!25797 key!387 value!184)))))

(declare-fun b!1582049 () Bool)

(assert (=> b!1582049 (= e!882890 (contains!10532 (t!51934 l!1356) (tuple2!25797 key!387 value!184)))))

(assert (= (and d!166857 res!1080923) b!1582048))

(assert (= (and b!1582048 (not res!1080922)) b!1582049))

(declare-fun m!1452681 () Bool)

(assert (=> d!166857 m!1452681))

(declare-fun m!1452683 () Bool)

(assert (=> d!166857 m!1452683))

(declare-fun m!1452685 () Bool)

(assert (=> b!1582049 m!1452685))

(assert (=> b!1582018 d!166857))

(declare-fun d!166863 () Bool)

(declare-fun res!1080946 () Bool)

(declare-fun e!882916 () Bool)

(assert (=> d!166863 (=> res!1080946 e!882916)))

(assert (=> d!166863 (= res!1080946 (and ((_ is Cons!37009) l!1356) (= (_1!12908 (h!38553 l!1356)) key!387)))))

(assert (=> d!166863 (= (containsKey!951 l!1356 key!387) e!882916)))

(declare-fun b!1582076 () Bool)

(declare-fun e!882917 () Bool)

(assert (=> b!1582076 (= e!882916 e!882917)))

(declare-fun res!1080947 () Bool)

(assert (=> b!1582076 (=> (not res!1080947) (not e!882917))))

(assert (=> b!1582076 (= res!1080947 (and (or (not ((_ is Cons!37009) l!1356)) (bvsle (_1!12908 (h!38553 l!1356)) key!387)) ((_ is Cons!37009) l!1356) (bvslt (_1!12908 (h!38553 l!1356)) key!387)))))

(declare-fun b!1582077 () Bool)

(assert (=> b!1582077 (= e!882917 (containsKey!951 (t!51934 l!1356) key!387))))

(assert (= (and d!166863 (not res!1080946)) b!1582076))

(assert (= (and b!1582076 res!1080947) b!1582077))

(declare-fun m!1452701 () Bool)

(assert (=> b!1582077 m!1452701))

(assert (=> b!1582016 d!166863))

(declare-fun d!166869 () Bool)

(declare-fun res!1080956 () Bool)

(declare-fun e!882927 () Bool)

(assert (=> d!166869 (=> res!1080956 e!882927)))

(assert (=> d!166869 (= res!1080956 (or ((_ is Nil!37010) l!1356) ((_ is Nil!37010) (t!51934 l!1356))))))

(assert (=> d!166869 (= (isStrictlySorted!1105 l!1356) e!882927)))

(declare-fun b!1582088 () Bool)

(declare-fun e!882929 () Bool)

(assert (=> b!1582088 (= e!882927 e!882929)))

(declare-fun res!1080958 () Bool)

(assert (=> b!1582088 (=> (not res!1080958) (not e!882929))))

(assert (=> b!1582088 (= res!1080958 (bvslt (_1!12908 (h!38553 l!1356)) (_1!12908 (h!38553 (t!51934 l!1356)))))))

(declare-fun b!1582090 () Bool)

(assert (=> b!1582090 (= e!882929 (isStrictlySorted!1105 (t!51934 l!1356)))))

(assert (= (and d!166869 (not res!1080956)) b!1582088))

(assert (= (and b!1582088 res!1080958) b!1582090))

(declare-fun m!1452703 () Bool)

(assert (=> b!1582090 m!1452703))

(assert (=> start!137622 d!166869))

(declare-fun b!1582100 () Bool)

(declare-fun e!882936 () Bool)

(declare-fun tp!114694 () Bool)

(assert (=> b!1582100 (= e!882936 (and tp_is_empty!39285 tp!114694))))

(assert (=> b!1582019 (= tp!114682 e!882936)))

(assert (= (and b!1582019 ((_ is Cons!37009) (t!51934 l!1356))) b!1582100))

(check-sat (not b!1582100) (not d!166857) (not b!1582077) (not b!1582090) (not b!1582049) tp_is_empty!39285)
