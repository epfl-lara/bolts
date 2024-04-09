; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137596 () Bool)

(assert start!137596)

(declare-fun res!1080830 () Bool)

(declare-fun e!882788 () Bool)

(assert (=> start!137596 (=> (not res!1080830) (not e!882788))))

(declare-datatypes ((B!2732 0))(
  ( (B!2733 (val!19728 Int)) )
))
(declare-datatypes ((tuple2!25788 0))(
  ( (tuple2!25789 (_1!12904 (_ BitVec 64)) (_2!12904 B!2732)) )
))
(declare-datatypes ((List!37009 0))(
  ( (Nil!37006) (Cons!37005 (h!38549 tuple2!25788) (t!51930 List!37009)) )
))
(declare-fun l!1356 () List!37009)

(declare-fun isStrictlySorted!1101 (List!37009) Bool)

(assert (=> start!137596 (= res!1080830 (isStrictlySorted!1101 l!1356))))

(assert (=> start!137596 e!882788))

(declare-fun e!882789 () Bool)

(assert (=> start!137596 e!882789))

(assert (=> start!137596 true))

(declare-fun b!1581906 () Bool)

(declare-fun res!1080829 () Bool)

(assert (=> b!1581906 (=> (not res!1080829) (not e!882788))))

(declare-fun key!387 () (_ BitVec 64))

(declare-fun containsKey!947 (List!37009 (_ BitVec 64)) Bool)

(assert (=> b!1581906 (= res!1080829 (not (containsKey!947 l!1356 key!387)))))

(declare-fun b!1581907 () Bool)

(declare-fun ListPrimitiveSize!199 (List!37009) Int)

(assert (=> b!1581907 (= e!882788 (< (ListPrimitiveSize!199 l!1356) 0))))

(declare-fun b!1581908 () Bool)

(declare-fun tp_is_empty!39277 () Bool)

(declare-fun tp!114661 () Bool)

(assert (=> b!1581908 (= e!882789 (and tp_is_empty!39277 tp!114661))))

(assert (= (and start!137596 res!1080830) b!1581906))

(assert (= (and b!1581906 res!1080829) b!1581907))

(assert (= (and start!137596 (is-Cons!37005 l!1356)) b!1581908))

(declare-fun m!1452623 () Bool)

(assert (=> start!137596 m!1452623))

(declare-fun m!1452625 () Bool)

(assert (=> b!1581906 m!1452625))

(declare-fun m!1452627 () Bool)

(assert (=> b!1581907 m!1452627))

(push 1)

(assert (not start!137596))

(assert (not b!1581907))

(assert (not b!1581908))

(assert tp_is_empty!39277)

(assert (not b!1581906))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166837 () Bool)

(declare-fun res!1080847 () Bool)

(declare-fun e!882812 () Bool)

(assert (=> d!166837 (=> res!1080847 e!882812)))

(assert (=> d!166837 (= res!1080847 (or (is-Nil!37006 l!1356) (is-Nil!37006 (t!51930 l!1356))))))

(assert (=> d!166837 (= (isStrictlySorted!1101 l!1356) e!882812)))

(declare-fun b!1581943 () Bool)

(declare-fun e!882813 () Bool)

(assert (=> b!1581943 (= e!882812 e!882813)))

(declare-fun res!1080848 () Bool)

(assert (=> b!1581943 (=> (not res!1080848) (not e!882813))))

(assert (=> b!1581943 (= res!1080848 (bvslt (_1!12904 (h!38549 l!1356)) (_1!12904 (h!38549 (t!51930 l!1356)))))))

(declare-fun b!1581944 () Bool)

(assert (=> b!1581944 (= e!882813 (isStrictlySorted!1101 (t!51930 l!1356)))))

(assert (= (and d!166837 (not res!1080847)) b!1581943))

(assert (= (and b!1581943 res!1080848) b!1581944))

(declare-fun m!1452645 () Bool)

(assert (=> b!1581944 m!1452645))

(assert (=> start!137596 d!166837))

(declare-fun d!166843 () Bool)

(declare-fun lt!676966 () Int)

(assert (=> d!166843 (>= lt!676966 0)))

(declare-fun e!882824 () Int)

(assert (=> d!166843 (= lt!676966 e!882824)))

(declare-fun c!146580 () Bool)

(assert (=> d!166843 (= c!146580 (is-Nil!37006 l!1356))))

(assert (=> d!166843 (= (ListPrimitiveSize!199 l!1356) lt!676966)))

(declare-fun b!1581957 () Bool)

(assert (=> b!1581957 (= e!882824 0)))

(declare-fun b!1581958 () Bool)

(assert (=> b!1581958 (= e!882824 (+ 1 (ListPrimitiveSize!199 (t!51930 l!1356))))))

(assert (= (and d!166843 c!146580) b!1581957))

(assert (= (and d!166843 (not c!146580)) b!1581958))

(declare-fun m!1452647 () Bool)

(assert (=> b!1581958 m!1452647))

(assert (=> b!1581907 d!166843))

(declare-fun d!166845 () Bool)

(declare-fun res!1080873 () Bool)

(declare-fun e!882841 () Bool)

(assert (=> d!166845 (=> res!1080873 e!882841)))

(assert (=> d!166845 (= res!1080873 (and (is-Cons!37005 l!1356) (= (_1!12904 (h!38549 l!1356)) key!387)))))

(assert (=> d!166845 (= (containsKey!947 l!1356 key!387) e!882841)))

(declare-fun b!1581975 () Bool)

(declare-fun e!882842 () Bool)

(assert (=> b!1581975 (= e!882841 e!882842)))

(declare-fun res!1080874 () Bool)

(assert (=> b!1581975 (=> (not res!1080874) (not e!882842))))

(assert (=> b!1581975 (= res!1080874 (and (or (not (is-Cons!37005 l!1356)) (bvsle (_1!12904 (h!38549 l!1356)) key!387)) (is-Cons!37005 l!1356) (bvslt (_1!12904 (h!38549 l!1356)) key!387)))))

(declare-fun b!1581976 () Bool)

(assert (=> b!1581976 (= e!882842 (containsKey!947 (t!51930 l!1356) key!387))))

(assert (= (and d!166845 (not res!1080873)) b!1581975))

(assert (= (and b!1581975 res!1080874) b!1581976))

(declare-fun m!1452653 () Bool)

(assert (=> b!1581976 m!1452653))

(assert (=> b!1581906 d!166845))

(declare-fun b!1581993 () Bool)

(declare-fun e!882853 () Bool)

(declare-fun tp!114674 () Bool)

(assert (=> b!1581993 (= e!882853 (and tp_is_empty!39277 tp!114674))))

(assert (=> b!1581908 (= tp!114661 e!882853)))

(assert (= (and b!1581908 (is-Cons!37005 (t!51930 l!1356))) b!1581993))

(push 1)

(assert (not b!1581958))

