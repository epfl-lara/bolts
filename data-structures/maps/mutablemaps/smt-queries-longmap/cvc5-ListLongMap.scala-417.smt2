; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7822 () Bool)

(assert start!7822)

(declare-fun res!28638 () Bool)

(declare-fun e!31856 () Bool)

(assert (=> start!7822 (=> (not res!28638) (not e!31856))))

(declare-datatypes ((B!1016 0))(
  ( (B!1017 (val!1128 Int)) )
))
(declare-datatypes ((tuple2!1842 0))(
  ( (tuple2!1843 (_1!931 (_ BitVec 64)) (_2!931 B!1016)) )
))
(declare-datatypes ((List!1344 0))(
  ( (Nil!1341) (Cons!1340 (h!1920 tuple2!1842) (t!4386 List!1344)) )
))
(declare-fun keyValues!2 () List!1344)

(assert (=> start!7822 (= res!28638 (not (is-Nil!1341 keyValues!2)))))

(assert (=> start!7822 e!31856))

(declare-fun e!31857 () Bool)

(assert (=> start!7822 e!31857))

(declare-datatypes ((ListLongMap!1261 0))(
  ( (ListLongMap!1262 (toList!646 List!1344)) )
))
(declare-fun thiss!210 () ListLongMap!1261)

(declare-fun e!31858 () Bool)

(declare-fun inv!2317 (ListLongMap!1261) Bool)

(assert (=> start!7822 (and (inv!2317 thiss!210) e!31858)))

(declare-fun b!49561 () Bool)

(declare-fun ListPrimitiveSize!58 (List!1344) Int)

(assert (=> b!49561 (= e!31856 (>= (ListPrimitiveSize!58 (t!4386 keyValues!2)) (ListPrimitiveSize!58 keyValues!2)))))

(declare-fun lt!20778 () ListLongMap!1261)

(declare-fun +!76 (ListLongMap!1261 tuple2!1842) ListLongMap!1261)

(assert (=> b!49561 (= lt!20778 (+!76 thiss!210 (h!1920 keyValues!2)))))

(declare-fun b!49562 () Bool)

(declare-fun tp_is_empty!2167 () Bool)

(declare-fun tp!6572 () Bool)

(assert (=> b!49562 (= e!31857 (and tp_is_empty!2167 tp!6572))))

(declare-fun b!49563 () Bool)

(declare-fun tp!6571 () Bool)

(assert (=> b!49563 (= e!31858 tp!6571)))

(assert (= (and start!7822 res!28638) b!49561))

(assert (= (and start!7822 (is-Cons!1340 keyValues!2)) b!49562))

(assert (= start!7822 b!49563))

(declare-fun m!42933 () Bool)

(assert (=> start!7822 m!42933))

(declare-fun m!42935 () Bool)

(assert (=> b!49561 m!42935))

(declare-fun m!42937 () Bool)

(assert (=> b!49561 m!42937))

(declare-fun m!42939 () Bool)

(assert (=> b!49561 m!42939))

(push 1)

(assert (not start!7822))

(assert tp_is_empty!2167)

(assert (not b!49562))

(assert (not b!49561))

(assert (not b!49563))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9955 () Bool)

(declare-fun isStrictlySorted!276 (List!1344) Bool)

(assert (=> d!9955 (= (inv!2317 thiss!210) (isStrictlySorted!276 (toList!646 thiss!210)))))

(declare-fun bs!2306 () Bool)

(assert (= bs!2306 d!9955))

(declare-fun m!42957 () Bool)

(assert (=> bs!2306 m!42957))

(assert (=> start!7822 d!9955))

(declare-fun d!9961 () Bool)

(declare-fun lt!20789 () Int)

(assert (=> d!9961 (>= lt!20789 0)))

(declare-fun e!31881 () Int)

(assert (=> d!9961 (= lt!20789 e!31881)))

(declare-fun c!6707 () Bool)

(assert (=> d!9961 (= c!6707 (is-Nil!1341 (t!4386 keyValues!2)))))

(assert (=> d!9961 (= (ListPrimitiveSize!58 (t!4386 keyValues!2)) lt!20789)))

(declare-fun b!49590 () Bool)

(assert (=> b!49590 (= e!31881 0)))

(declare-fun b!49591 () Bool)

(assert (=> b!49591 (= e!31881 (+ 1 (ListPrimitiveSize!58 (t!4386 (t!4386 keyValues!2)))))))

(assert (= (and d!9961 c!6707) b!49590))

(assert (= (and d!9961 (not c!6707)) b!49591))

(declare-fun m!42961 () Bool)

(assert (=> b!49591 m!42961))

(assert (=> b!49561 d!9961))

(declare-fun d!9965 () Bool)

(declare-fun lt!20791 () Int)

(assert (=> d!9965 (>= lt!20791 0)))

(declare-fun e!31883 () Int)

(assert (=> d!9965 (= lt!20791 e!31883)))

(declare-fun c!6709 () Bool)

(assert (=> d!9965 (= c!6709 (is-Nil!1341 keyValues!2))))

(assert (=> d!9965 (= (ListPrimitiveSize!58 keyValues!2) lt!20791)))

(declare-fun b!49594 () Bool)

(assert (=> b!49594 (= e!31883 0)))

(declare-fun b!49595 () Bool)

(assert (=> b!49595 (= e!31883 (+ 1 (ListPrimitiveSize!58 (t!4386 keyValues!2))))))

(assert (= (and d!9965 c!6709) b!49594))

(assert (= (and d!9965 (not c!6709)) b!49595))

(assert (=> b!49595 m!42935))

(assert (=> b!49561 d!9965))

(declare-fun d!9969 () Bool)

(declare-fun e!31891 () Bool)

(assert (=> d!9969 e!31891))

(declare-fun res!28649 () Bool)

(assert (=> d!9969 (=> (not res!28649) (not e!31891))))

(declare-fun lt!20805 () ListLongMap!1261)

(declare-fun contains!614 (ListLongMap!1261 (_ BitVec 64)) Bool)

(assert (=> d!9969 (= res!28649 (contains!614 lt!20805 (_1!931 (h!1920 keyValues!2))))))

(declare-fun lt!20807 () List!1344)

(assert (=> d!9969 (= lt!20805 (ListLongMap!1262 lt!20807))))

(declare-datatypes ((Unit!1376 0))(
  ( (Unit!1377) )
))
(declare-fun lt!20808 () Unit!1376)

(declare-fun lt!20806 () Unit!1376)

(assert (=> d!9969 (= lt!20808 lt!20806)))

(declare-datatypes ((Option!124 0))(
  ( (Some!123 (v!2146 B!1016)) (None!122) )
))
(declare-fun getValueByKey!118 (List!1344 (_ BitVec 64)) Option!124)

(assert (=> d!9969 (= (getValueByKey!118 lt!20807 (_1!931 (h!1920 keyValues!2))) (Some!123 (_2!931 (h!1920 keyValues!2))))))

(declare-fun lemmaContainsTupThenGetReturnValue!38 (List!1344 (_ BitVec 64) B!1016) Unit!1376)

(assert (=> d!9969 (= lt!20806 (lemmaContainsTupThenGetReturnValue!38 lt!20807 (_1!931 (h!1920 keyValues!2)) (_2!931 (h!1920 keyValues!2))))))

(declare-fun insertStrictlySorted!41 (List!1344 (_ BitVec 64) B!1016) List!1344)

(assert (=> d!9969 (= lt!20807 (insertStrictlySorted!41 (toList!646 thiss!210) (_1!931 (h!1920 keyValues!2)) (_2!931 (h!1920 keyValues!2))))))

(assert (=> d!9969 (= (+!76 thiss!210 (h!1920 keyValues!2)) lt!20805)))

(declare-fun b!49610 () Bool)

(declare-fun res!28650 () Bool)

(assert (=> b!49610 (=> (not res!28650) (not e!31891))))

(assert (=> b!49610 (= res!28650 (= (getValueByKey!118 (toList!646 lt!20805) (_1!931 (h!1920 keyValues!2))) (Some!123 (_2!931 (h!1920 keyValues!2)))))))

(declare-fun b!49611 () Bool)

(declare-fun contains!615 (List!1344 tuple2!1842) Bool)

(assert (=> b!49611 (= e!31891 (contains!615 (toList!646 lt!20805) (h!1920 keyValues!2)))))

(assert (= (and d!9969 res!28649) b!49610))

(assert (= (and b!49610 res!28650) b!49611))

(declare-fun m!42967 () Bool)

(assert (=> d!9969 m!42967))

(declare-fun m!42969 () Bool)

(assert (=> d!9969 m!42969))

(declare-fun m!42971 () Bool)

(assert (=> d!9969 m!42971))

(declare-fun m!42973 () Bool)

(assert (=> d!9969 m!42973))

(declare-fun m!42975 () Bool)

(assert (=> b!49610 m!42975))

(declare-fun m!42977 () Bool)

(assert (=> b!49611 m!42977))

(assert (=> b!49561 d!9969))

(declare-fun b!49616 () Bool)

(declare-fun e!31894 () Bool)

(declare-fun tp!6587 () Bool)

(assert (=> b!49616 (= e!31894 (and tp_is_empty!2167 tp!6587))))

(assert (=> b!49563 (= tp!6571 e!31894)))

(assert (= (and b!49563 (is-Cons!1340 (toList!646 thiss!210))) b!49616))

(declare-fun b!49617 () Bool)

(declare-fun e!31895 () Bool)

(declare-fun tp!6588 () Bool)

(assert (=> b!49617 (= e!31895 (and tp_is_empty!2167 tp!6588))))

(assert (=> b!49562 (= tp!6572 e!31895)))

(assert (= (and b!49562 (is-Cons!1340 (t!4386 keyValues!2))) b!49617))

(push 1)

(assert (not b!49595))

(assert (not b!49611))

(assert (not d!9969))

(assert (not b!49616))

(assert tp_is_empty!2167)

(assert (not b!49591))

(assert (not b!49610))

(assert (not d!9955))

(assert (not b!49617))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

