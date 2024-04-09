; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7826 () Bool)

(assert start!7826)

(declare-fun res!28644 () Bool)

(declare-fun e!31875 () Bool)

(assert (=> start!7826 (=> (not res!28644) (not e!31875))))

(declare-datatypes ((B!1020 0))(
  ( (B!1021 (val!1130 Int)) )
))
(declare-datatypes ((tuple2!1846 0))(
  ( (tuple2!1847 (_1!933 (_ BitVec 64)) (_2!933 B!1020)) )
))
(declare-datatypes ((List!1346 0))(
  ( (Nil!1343) (Cons!1342 (h!1922 tuple2!1846) (t!4388 List!1346)) )
))
(declare-fun keyValues!2 () List!1346)

(assert (=> start!7826 (= res!28644 (not (is-Nil!1343 keyValues!2)))))

(assert (=> start!7826 e!31875))

(declare-fun e!31874 () Bool)

(assert (=> start!7826 e!31874))

(declare-datatypes ((ListLongMap!1265 0))(
  ( (ListLongMap!1266 (toList!648 List!1346)) )
))
(declare-fun thiss!210 () ListLongMap!1265)

(declare-fun e!31876 () Bool)

(declare-fun inv!2319 (ListLongMap!1265) Bool)

(assert (=> start!7826 (and (inv!2319 thiss!210) e!31876)))

(declare-fun b!49579 () Bool)

(declare-fun ListPrimitiveSize!60 (List!1346) Int)

(assert (=> b!49579 (= e!31875 (>= (ListPrimitiveSize!60 (t!4388 keyValues!2)) (ListPrimitiveSize!60 keyValues!2)))))

(declare-fun lt!20784 () ListLongMap!1265)

(declare-fun +!78 (ListLongMap!1265 tuple2!1846) ListLongMap!1265)

(assert (=> b!49579 (= lt!20784 (+!78 thiss!210 (h!1922 keyValues!2)))))

(declare-fun b!49580 () Bool)

(declare-fun tp_is_empty!2171 () Bool)

(declare-fun tp!6584 () Bool)

(assert (=> b!49580 (= e!31874 (and tp_is_empty!2171 tp!6584))))

(declare-fun b!49581 () Bool)

(declare-fun tp!6583 () Bool)

(assert (=> b!49581 (= e!31876 tp!6583)))

(assert (= (and start!7826 res!28644) b!49579))

(assert (= (and start!7826 (is-Cons!1342 keyValues!2)) b!49580))

(assert (= start!7826 b!49581))

(declare-fun m!42949 () Bool)

(assert (=> start!7826 m!42949))

(declare-fun m!42951 () Bool)

(assert (=> b!49579 m!42951))

(declare-fun m!42953 () Bool)

(assert (=> b!49579 m!42953))

(declare-fun m!42955 () Bool)

(assert (=> b!49579 m!42955))

(push 1)

(assert (not b!49580))

(assert (not start!7826))

(assert tp_is_empty!2171)

(assert (not b!49579))

(assert (not b!49581))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9959 () Bool)

(declare-fun isStrictlySorted!277 (List!1346) Bool)

(assert (=> d!9959 (= (inv!2319 thiss!210) (isStrictlySorted!277 (toList!648 thiss!210)))))

(declare-fun bs!2307 () Bool)

(assert (= bs!2307 d!9959))

(declare-fun m!42959 () Bool)

(assert (=> bs!2307 m!42959))

(assert (=> start!7826 d!9959))

(declare-fun d!9963 () Bool)

(declare-fun lt!20795 () Int)

(assert (=> d!9963 (>= lt!20795 0)))

(declare-fun e!31887 () Int)

(assert (=> d!9963 (= lt!20795 e!31887)))

(declare-fun c!6713 () Bool)

(assert (=> d!9963 (= c!6713 (is-Nil!1343 (t!4388 keyValues!2)))))

(assert (=> d!9963 (= (ListPrimitiveSize!60 (t!4388 keyValues!2)) lt!20795)))

(declare-fun b!49602 () Bool)

(assert (=> b!49602 (= e!31887 0)))

(declare-fun b!49603 () Bool)

(assert (=> b!49603 (= e!31887 (+ 1 (ListPrimitiveSize!60 (t!4388 (t!4388 keyValues!2)))))))

(assert (= (and d!9963 c!6713) b!49602))

(assert (= (and d!9963 (not c!6713)) b!49603))

(declare-fun m!42965 () Bool)

(assert (=> b!49603 m!42965))

(assert (=> b!49579 d!9963))

(declare-fun d!9973 () Bool)

(declare-fun lt!20796 () Int)

(assert (=> d!9973 (>= lt!20796 0)))

(declare-fun e!31888 () Int)

(assert (=> d!9973 (= lt!20796 e!31888)))

(declare-fun c!6714 () Bool)

(assert (=> d!9973 (= c!6714 (is-Nil!1343 keyValues!2))))

(assert (=> d!9973 (= (ListPrimitiveSize!60 keyValues!2) lt!20796)))

(declare-fun b!49604 () Bool)

(assert (=> b!49604 (= e!31888 0)))

(declare-fun b!49605 () Bool)

(assert (=> b!49605 (= e!31888 (+ 1 (ListPrimitiveSize!60 (t!4388 keyValues!2))))))

(assert (= (and d!9973 c!6714) b!49604))

(assert (= (and d!9973 (not c!6714)) b!49605))

(assert (=> b!49605 m!42951))

(assert (=> b!49579 d!9973))

(declare-fun d!9975 () Bool)

(declare-fun e!31901 () Bool)

(assert (=> d!9975 e!31901))

(declare-fun res!28662 () Bool)

(assert (=> d!9975 (=> (not res!28662) (not e!31901))))

(declare-fun lt!20830 () ListLongMap!1265)

(declare-fun contains!617 (ListLongMap!1265 (_ BitVec 64)) Bool)

(assert (=> d!9975 (= res!28662 (contains!617 lt!20830 (_1!933 (h!1922 keyValues!2))))))

(declare-fun lt!20829 () List!1346)

(assert (=> d!9975 (= lt!20830 (ListLongMap!1266 lt!20829))))

(declare-datatypes ((Unit!1380 0))(
  ( (Unit!1381) )
))
(declare-fun lt!20831 () Unit!1380)

(declare-fun lt!20832 () Unit!1380)

(assert (=> d!9975 (= lt!20831 lt!20832)))

(declare-datatypes ((Option!126 0))(
  ( (Some!125 (v!2148 B!1020)) (None!124) )
))
(declare-fun getValueByKey!120 (List!1346 (_ BitVec 64)) Option!126)

(assert (=> d!9975 (= (getValueByKey!120 lt!20829 (_1!933 (h!1922 keyValues!2))) (Some!125 (_2!933 (h!1922 keyValues!2))))))

