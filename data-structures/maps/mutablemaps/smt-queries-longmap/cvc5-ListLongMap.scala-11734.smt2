; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137644 () Bool)

(assert start!137644)

(declare-fun b!1582110 () Bool)

(declare-fun res!1080966 () Bool)

(declare-fun e!882941 () Bool)

(assert (=> b!1582110 (=> (not res!1080966) (not e!882941))))

(declare-datatypes ((B!2744 0))(
  ( (B!2745 (val!19734 Int)) )
))
(declare-datatypes ((tuple2!25800 0))(
  ( (tuple2!25801 (_1!12910 (_ BitVec 64)) (_2!12910 B!2744)) )
))
(declare-datatypes ((List!37015 0))(
  ( (Nil!37012) (Cons!37011 (h!38555 tuple2!25800) (t!51936 List!37015)) )
))
(declare-fun l!1356 () List!37015)

(assert (=> b!1582110 (= res!1080966 (not (is-Nil!37012 l!1356)))))

(declare-fun b!1582109 () Bool)

(declare-fun res!1080968 () Bool)

(assert (=> b!1582109 (=> (not res!1080968) (not e!882941))))

(declare-fun key!387 () (_ BitVec 64))

(declare-fun containsKey!953 (List!37015 (_ BitVec 64)) Bool)

(assert (=> b!1582109 (= res!1080968 (not (containsKey!953 l!1356 key!387)))))

(declare-fun b!1582111 () Bool)

(declare-fun ListPrimitiveSize!202 (List!37015) Int)

(assert (=> b!1582111 (= e!882941 (>= (ListPrimitiveSize!202 (t!51936 l!1356)) (ListPrimitiveSize!202 l!1356)))))

(declare-fun res!1080967 () Bool)

(assert (=> start!137644 (=> (not res!1080967) (not e!882941))))

(declare-fun isStrictlySorted!1107 (List!37015) Bool)

(assert (=> start!137644 (= res!1080967 (isStrictlySorted!1107 l!1356))))

(assert (=> start!137644 e!882941))

(declare-fun e!882942 () Bool)

(assert (=> start!137644 e!882942))

(assert (=> start!137644 true))

(declare-fun b!1582112 () Bool)

(declare-fun tp_is_empty!39289 () Bool)

(declare-fun tp!114697 () Bool)

(assert (=> b!1582112 (= e!882942 (and tp_is_empty!39289 tp!114697))))

(assert (= (and start!137644 res!1080967) b!1582109))

(assert (= (and b!1582109 res!1080968) b!1582110))

(assert (= (and b!1582110 res!1080966) b!1582111))

(assert (= (and start!137644 (is-Cons!37011 l!1356)) b!1582112))

(declare-fun m!1452707 () Bool)

(assert (=> b!1582109 m!1452707))

(declare-fun m!1452709 () Bool)

(assert (=> b!1582111 m!1452709))

(declare-fun m!1452711 () Bool)

(assert (=> b!1582111 m!1452711))

(declare-fun m!1452713 () Bool)

(assert (=> start!137644 m!1452713))

(push 1)

(assert (not b!1582111))

(assert (not b!1582112))

(assert (not start!137644))

(assert tp_is_empty!39289)

(assert (not b!1582109))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166873 () Bool)

(declare-fun res!1080991 () Bool)

(declare-fun e!882959 () Bool)

(assert (=> d!166873 (=> res!1080991 e!882959)))

(assert (=> d!166873 (= res!1080991 (or (is-Nil!37012 l!1356) (is-Nil!37012 (t!51936 l!1356))))))

(assert (=> d!166873 (= (isStrictlySorted!1107 l!1356) e!882959)))

(declare-fun b!1582141 () Bool)

(declare-fun e!882960 () Bool)

(assert (=> b!1582141 (= e!882959 e!882960)))

(declare-fun res!1080992 () Bool)

(assert (=> b!1582141 (=> (not res!1080992) (not e!882960))))

(assert (=> b!1582141 (= res!1080992 (bvslt (_1!12910 (h!38555 l!1356)) (_1!12910 (h!38555 (t!51936 l!1356)))))))

(declare-fun b!1582142 () Bool)

(assert (=> b!1582142 (= e!882960 (isStrictlySorted!1107 (t!51936 l!1356)))))

(assert (= (and d!166873 (not res!1080991)) b!1582141))

(assert (= (and b!1582141 res!1080992) b!1582142))

(declare-fun m!1452731 () Bool)

(assert (=> b!1582142 m!1452731))

(assert (=> start!137644 d!166873))

(declare-fun d!166879 () Bool)

(declare-fun lt!676978 () Int)

(assert (=> d!166879 (>= lt!676978 0)))

(declare-fun e!882973 () Int)

(assert (=> d!166879 (= lt!676978 e!882973)))

(declare-fun c!146583 () Bool)

(assert (=> d!166879 (= c!146583 (is-Nil!37012 (t!51936 l!1356)))))

(assert (=> d!166879 (= (ListPrimitiveSize!202 (t!51936 l!1356)) lt!676978)))

(declare-fun b!1582157 () Bool)

(assert (=> b!1582157 (= e!882973 0)))

(declare-fun b!1582158 () Bool)

(assert (=> b!1582158 (= e!882973 (+ 1 (ListPrimitiveSize!202 (t!51936 (t!51936 l!1356)))))))

(assert (= (and d!166879 c!146583) b!1582157))

(assert (= (and d!166879 (not c!146583)) b!1582158))

(declare-fun m!1452735 () Bool)

(assert (=> b!1582158 m!1452735))

(assert (=> b!1582111 d!166879))

(declare-fun d!166883 () Bool)

(declare-fun lt!676979 () Int)

(assert (=> d!166883 (>= lt!676979 0)))

(declare-fun e!882974 () Int)

(assert (=> d!166883 (= lt!676979 e!882974)))

(declare-fun c!146584 () Bool)

(assert (=> d!166883 (= c!146584 (is-Nil!37012 l!1356))))

(assert (=> d!166883 (= (ListPrimitiveSize!202 l!1356) lt!676979)))

(declare-fun b!1582159 () Bool)

(assert (=> b!1582159 (= e!882974 0)))

(declare-fun b!1582160 () Bool)

(assert (=> b!1582160 (= e!882974 (+ 1 (ListPrimitiveSize!202 (t!51936 l!1356))))))

(assert (= (and d!166883 c!146584) b!1582159))

(assert (= (and d!166883 (not c!146584)) b!1582160))

(assert (=> b!1582160 m!1452709))

(assert (=> b!1582111 d!166883))

(declare-fun d!166885 () Bool)

(declare-fun res!1081013 () Bool)

(declare-fun e!882988 () Bool)

(assert (=> d!166885 (=> res!1081013 e!882988)))

(assert (=> d!166885 (= res!1081013 (and (is-Cons!37011 l!1356) (= (_1!12910 (h!38555 l!1356)) key!387)))))

(assert (=> d!166885 (= (containsKey!953 l!1356 key!387) e!882988)))

(declare-fun b!1582177 () Bool)

(declare-fun e!882989 () Bool)

(assert (=> b!1582177 (= e!882988 e!882989)))

(declare-fun res!1081014 () Bool)

(assert (=> b!1582177 (=> (not res!1081014) (not e!882989))))

(assert (=> b!1582177 (= res!1081014 (and (or (not (is-Cons!37011 l!1356)) (bvsle (_1!12910 (h!38555 l!1356)) key!387)) (is-Cons!37011 l!1356) (bvslt (_1!12910 (h!38555 l!1356)) key!387)))))

(declare-fun b!1582178 () Bool)

(assert (=> b!1582178 (= e!882989 (containsKey!953 (t!51936 l!1356) key!387))))

(assert (= (and d!166885 (not res!1081013)) b!1582177))

(assert (= (and b!1582177 res!1081014) b!1582178))

(declare-fun m!1452741 () Bool)

(assert (=> b!1582178 m!1452741))

(assert (=> b!1582109 d!166885))

(declare-fun b!1582185 () Bool)

(declare-fun e!882993 () Bool)

(declare-fun tp!114706 () Bool)

(assert (=> b!1582185 (= e!882993 (and tp_is_empty!39289 tp!114706))))

(assert (=> b!1582112 (= tp!114697 e!882993)))

(assert (= (and b!1582112 (is-Cons!37011 (t!51936 l!1356))) b!1582185))

(push 1)

(assert (not b!1582178))

(assert (not b!1582185))

(assert (not b!1582158))

(assert tp_is_empty!39289)

(assert (not b!1582160))

(assert (not b!1582142))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

