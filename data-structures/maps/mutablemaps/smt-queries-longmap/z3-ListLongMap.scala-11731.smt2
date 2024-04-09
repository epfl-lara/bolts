; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137580 () Bool)

(assert start!137580)

(declare-fun b!1581817 () Bool)

(declare-fun res!1080761 () Bool)

(declare-fun e!882715 () Bool)

(assert (=> b!1581817 (=> (not res!1080761) (not e!882715))))

(declare-datatypes ((B!2728 0))(
  ( (B!2729 (val!19726 Int)) )
))
(declare-datatypes ((tuple2!25784 0))(
  ( (tuple2!25785 (_1!12902 (_ BitVec 64)) (_2!12902 B!2728)) )
))
(declare-datatypes ((List!37007 0))(
  ( (Nil!37004) (Cons!37003 (h!38547 tuple2!25784) (t!51928 List!37007)) )
))
(declare-fun l!1356 () List!37007)

(get-info :version)

(assert (=> b!1581817 (= res!1080761 (not ((_ is Nil!37004) l!1356)))))

(declare-fun b!1581818 () Bool)

(declare-fun e!882716 () Bool)

(assert (=> b!1581818 (= e!882715 e!882716)))

(declare-fun res!1080763 () Bool)

(assert (=> b!1581818 (=> res!1080763 e!882716)))

(declare-fun isStrictlySorted!1099 (List!37007) Bool)

(assert (=> b!1581818 (= res!1080763 (not (isStrictlySorted!1099 (t!51928 l!1356))))))

(declare-fun b!1581819 () Bool)

(declare-fun key!387 () (_ BitVec 64))

(declare-fun containsKey!945 (List!37007 (_ BitVec 64)) Bool)

(assert (=> b!1581819 (= e!882716 (containsKey!945 (t!51928 l!1356) key!387))))

(declare-fun b!1581820 () Bool)

(declare-fun e!882717 () Bool)

(declare-fun tp_is_empty!39273 () Bool)

(declare-fun tp!114646 () Bool)

(assert (=> b!1581820 (= e!882717 (and tp_is_empty!39273 tp!114646))))

(declare-fun b!1581821 () Bool)

(declare-fun res!1080764 () Bool)

(assert (=> b!1581821 (=> (not res!1080764) (not e!882715))))

(assert (=> b!1581821 (= res!1080764 (not (containsKey!945 l!1356 key!387)))))

(declare-fun res!1080762 () Bool)

(assert (=> start!137580 (=> (not res!1080762) (not e!882715))))

(assert (=> start!137580 (= res!1080762 (isStrictlySorted!1099 l!1356))))

(assert (=> start!137580 e!882715))

(assert (=> start!137580 e!882717))

(assert (=> start!137580 true))

(assert (= (and start!137580 res!1080762) b!1581821))

(assert (= (and b!1581821 res!1080764) b!1581817))

(assert (= (and b!1581817 res!1080761) b!1581818))

(assert (= (and b!1581818 (not res!1080763)) b!1581819))

(assert (= (and start!137580 ((_ is Cons!37003) l!1356)) b!1581820))

(declare-fun m!1452595 () Bool)

(assert (=> b!1581818 m!1452595))

(declare-fun m!1452597 () Bool)

(assert (=> b!1581819 m!1452597))

(declare-fun m!1452599 () Bool)

(assert (=> b!1581821 m!1452599))

(declare-fun m!1452601 () Bool)

(assert (=> start!137580 m!1452601))

(check-sat (not b!1581819) tp_is_empty!39273 (not b!1581820) (not b!1581821) (not start!137580) (not b!1581818))
(check-sat)
(get-model)

(declare-fun d!166807 () Bool)

(declare-fun res!1080781 () Bool)

(declare-fun e!882731 () Bool)

(assert (=> d!166807 (=> res!1080781 e!882731)))

(assert (=> d!166807 (= res!1080781 (and ((_ is Cons!37003) (t!51928 l!1356)) (= (_1!12902 (h!38547 (t!51928 l!1356))) key!387)))))

(assert (=> d!166807 (= (containsKey!945 (t!51928 l!1356) key!387) e!882731)))

(declare-fun b!1581841 () Bool)

(declare-fun e!882732 () Bool)

(assert (=> b!1581841 (= e!882731 e!882732)))

(declare-fun res!1080782 () Bool)

(assert (=> b!1581841 (=> (not res!1080782) (not e!882732))))

(assert (=> b!1581841 (= res!1080782 (and (or (not ((_ is Cons!37003) (t!51928 l!1356))) (bvsle (_1!12902 (h!38547 (t!51928 l!1356))) key!387)) ((_ is Cons!37003) (t!51928 l!1356)) (bvslt (_1!12902 (h!38547 (t!51928 l!1356))) key!387)))))

(declare-fun b!1581842 () Bool)

(assert (=> b!1581842 (= e!882732 (containsKey!945 (t!51928 (t!51928 l!1356)) key!387))))

(assert (= (and d!166807 (not res!1080781)) b!1581841))

(assert (= (and b!1581841 res!1080782) b!1581842))

(declare-fun m!1452611 () Bool)

(assert (=> b!1581842 m!1452611))

(assert (=> b!1581819 d!166807))

(declare-fun d!166813 () Bool)

(declare-fun res!1080795 () Bool)

(declare-fun e!882745 () Bool)

(assert (=> d!166813 (=> res!1080795 e!882745)))

(assert (=> d!166813 (= res!1080795 (or ((_ is Nil!37004) (t!51928 l!1356)) ((_ is Nil!37004) (t!51928 (t!51928 l!1356)))))))

(assert (=> d!166813 (= (isStrictlySorted!1099 (t!51928 l!1356)) e!882745)))

(declare-fun b!1581855 () Bool)

(declare-fun e!882746 () Bool)

(assert (=> b!1581855 (= e!882745 e!882746)))

(declare-fun res!1080796 () Bool)

(assert (=> b!1581855 (=> (not res!1080796) (not e!882746))))

(assert (=> b!1581855 (= res!1080796 (bvslt (_1!12902 (h!38547 (t!51928 l!1356))) (_1!12902 (h!38547 (t!51928 (t!51928 l!1356))))))))

(declare-fun b!1581856 () Bool)

(assert (=> b!1581856 (= e!882746 (isStrictlySorted!1099 (t!51928 (t!51928 l!1356))))))

(assert (= (and d!166813 (not res!1080795)) b!1581855))

(assert (= (and b!1581855 res!1080796) b!1581856))

(declare-fun m!1452613 () Bool)

(assert (=> b!1581856 m!1452613))

(assert (=> b!1581818 d!166813))

(declare-fun d!166815 () Bool)

(declare-fun res!1080799 () Bool)

(declare-fun e!882749 () Bool)

(assert (=> d!166815 (=> res!1080799 e!882749)))

(assert (=> d!166815 (= res!1080799 (or ((_ is Nil!37004) l!1356) ((_ is Nil!37004) (t!51928 l!1356))))))

(assert (=> d!166815 (= (isStrictlySorted!1099 l!1356) e!882749)))

(declare-fun b!1581859 () Bool)

(declare-fun e!882750 () Bool)

(assert (=> b!1581859 (= e!882749 e!882750)))

(declare-fun res!1080800 () Bool)

(assert (=> b!1581859 (=> (not res!1080800) (not e!882750))))

(assert (=> b!1581859 (= res!1080800 (bvslt (_1!12902 (h!38547 l!1356)) (_1!12902 (h!38547 (t!51928 l!1356)))))))

(declare-fun b!1581860 () Bool)

(assert (=> b!1581860 (= e!882750 (isStrictlySorted!1099 (t!51928 l!1356)))))

(assert (= (and d!166815 (not res!1080799)) b!1581859))

(assert (= (and b!1581859 res!1080800) b!1581860))

(assert (=> b!1581860 m!1452595))

(assert (=> start!137580 d!166815))

(declare-fun d!166817 () Bool)

(declare-fun res!1080801 () Bool)

(declare-fun e!882751 () Bool)

(assert (=> d!166817 (=> res!1080801 e!882751)))

(assert (=> d!166817 (= res!1080801 (and ((_ is Cons!37003) l!1356) (= (_1!12902 (h!38547 l!1356)) key!387)))))

(assert (=> d!166817 (= (containsKey!945 l!1356 key!387) e!882751)))

(declare-fun b!1581861 () Bool)

(declare-fun e!882752 () Bool)

(assert (=> b!1581861 (= e!882751 e!882752)))

(declare-fun res!1080802 () Bool)

(assert (=> b!1581861 (=> (not res!1080802) (not e!882752))))

(assert (=> b!1581861 (= res!1080802 (and (or (not ((_ is Cons!37003) l!1356)) (bvsle (_1!12902 (h!38547 l!1356)) key!387)) ((_ is Cons!37003) l!1356) (bvslt (_1!12902 (h!38547 l!1356)) key!387)))))

(declare-fun b!1581862 () Bool)

(assert (=> b!1581862 (= e!882752 (containsKey!945 (t!51928 l!1356) key!387))))

(assert (= (and d!166817 (not res!1080801)) b!1581861))

(assert (= (and b!1581861 res!1080802) b!1581862))

(assert (=> b!1581862 m!1452597))

(assert (=> b!1581821 d!166817))

(declare-fun b!1581869 () Bool)

(declare-fun e!882757 () Bool)

(declare-fun tp!114652 () Bool)

(assert (=> b!1581869 (= e!882757 (and tp_is_empty!39273 tp!114652))))

(assert (=> b!1581820 (= tp!114646 e!882757)))

(assert (= (and b!1581820 ((_ is Cons!37003) (t!51928 l!1356))) b!1581869))

(check-sat (not b!1581869) (not b!1581856) (not b!1581862) tp_is_empty!39273 (not b!1581842) (not b!1581860))
(check-sat)
