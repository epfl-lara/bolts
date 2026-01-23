; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!507848 () Bool)

(assert start!507848)

(declare-fun b!4859836 () Bool)

(declare-fun e!3038217 () Bool)

(declare-fun tp_is_empty!35565 () Bool)

(declare-fun tp!1366962 () Bool)

(assert (=> b!4859836 (= e!3038217 (and tp_is_empty!35565 tp!1366962))))

(declare-fun b!4859837 () Bool)

(declare-fun e!3038215 () Bool)

(declare-datatypes ((B!2947 0))(
  ( (B!2948 (val!22429 Int)) )
))
(declare-datatypes ((List!55897 0))(
  ( (Nil!55773) (Cons!55773 (h!62221 B!2947) (t!363517 List!55897)) )
))
(declare-fun l1!1299 () List!55897)

(declare-fun ListPrimitiveSize!370 (List!55897) Int)

(assert (=> b!4859837 (= e!3038215 (>= (ListPrimitiveSize!370 (t!363517 l1!1299)) (ListPrimitiveSize!370 l1!1299)))))

(declare-fun b!4859838 () Bool)

(declare-fun res!2074724 () Bool)

(assert (=> b!4859838 (=> (not res!2074724) (not e!3038215))))

(declare-fun l2!1268 () List!55897)

(declare-fun isEmpty!29862 (List!55897) Bool)

(declare-fun ++!12158 (List!55897 List!55897) List!55897)

(assert (=> b!4859838 (= res!2074724 (not (isEmpty!29862 (++!12158 (t!363517 l1!1299) l2!1268))))))

(declare-fun b!4859839 () Bool)

(declare-fun e!3038216 () Bool)

(declare-fun tp!1366963 () Bool)

(assert (=> b!4859839 (= e!3038216 (and tp_is_empty!35565 tp!1366963))))

(declare-fun res!2074727 () Bool)

(assert (=> start!507848 (=> (not res!2074727) (not e!3038215))))

(assert (=> start!507848 (= res!2074727 (not (isEmpty!29862 (++!12158 l1!1299 l2!1268))))))

(assert (=> start!507848 e!3038215))

(assert (=> start!507848 e!3038216))

(assert (=> start!507848 e!3038217))

(declare-fun b!4859840 () Bool)

(declare-fun res!2074726 () Bool)

(assert (=> b!4859840 (=> (not res!2074726) (not e!3038215))))

(assert (=> b!4859840 (= res!2074726 (not (isEmpty!29862 (t!363517 l1!1299))))))

(declare-fun b!4859841 () Bool)

(declare-fun res!2074725 () Bool)

(assert (=> b!4859841 (=> (not res!2074725) (not e!3038215))))

(assert (=> b!4859841 (= res!2074725 (is-Cons!55773 l1!1299))))

(assert (= (and start!507848 res!2074727) b!4859841))

(assert (= (and b!4859841 res!2074725) b!4859840))

(assert (= (and b!4859840 res!2074726) b!4859838))

(assert (= (and b!4859838 res!2074724) b!4859837))

(assert (= (and start!507848 (is-Cons!55773 l1!1299)) b!4859839))

(assert (= (and start!507848 (is-Cons!55773 l2!1268)) b!4859836))

(declare-fun m!5858070 () Bool)

(assert (=> b!4859837 m!5858070))

(declare-fun m!5858072 () Bool)

(assert (=> b!4859837 m!5858072))

(declare-fun m!5858074 () Bool)

(assert (=> b!4859838 m!5858074))

(assert (=> b!4859838 m!5858074))

(declare-fun m!5858076 () Bool)

(assert (=> b!4859838 m!5858076))

(declare-fun m!5858078 () Bool)

(assert (=> start!507848 m!5858078))

(assert (=> start!507848 m!5858078))

(declare-fun m!5858080 () Bool)

(assert (=> start!507848 m!5858080))

(declare-fun m!5858082 () Bool)

(assert (=> b!4859840 m!5858082))

(push 1)

(assert tp_is_empty!35565)

(assert (not b!4859836))

(assert (not b!4859840))

(assert (not b!4859839))

(assert (not b!4859837))

(assert (not start!507848))

(assert (not b!4859838))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1560008 () Bool)

(assert (=> d!1560008 (= (isEmpty!29862 (t!363517 l1!1299)) (is-Nil!55773 (t!363517 l1!1299)))))

(assert (=> b!4859840 d!1560008))

(declare-fun d!1560010 () Bool)

(assert (=> d!1560010 (= (isEmpty!29862 (++!12158 (t!363517 l1!1299) l2!1268)) (is-Nil!55773 (++!12158 (t!363517 l1!1299) l2!1268)))))

(assert (=> b!4859838 d!1560010))

(declare-fun lt!1992110 () List!55897)

(declare-fun b!4859871 () Bool)

(declare-fun e!3038232 () Bool)

(assert (=> b!4859871 (= e!3038232 (or (not (= l2!1268 Nil!55773)) (= lt!1992110 (t!363517 l1!1299))))))

(declare-fun b!4859869 () Bool)

(declare-fun e!3038231 () List!55897)

(assert (=> b!4859869 (= e!3038231 (Cons!55773 (h!62221 (t!363517 l1!1299)) (++!12158 (t!363517 (t!363517 l1!1299)) l2!1268)))))

(declare-fun b!4859868 () Bool)

(assert (=> b!4859868 (= e!3038231 l2!1268)))

(declare-fun d!1560012 () Bool)

(assert (=> d!1560012 e!3038232))

(declare-fun res!2074745 () Bool)

(assert (=> d!1560012 (=> (not res!2074745) (not e!3038232))))

(declare-fun content!9948 (List!55897) (Set B!2947))

(assert (=> d!1560012 (= res!2074745 (= (content!9948 lt!1992110) (set.union (content!9948 (t!363517 l1!1299)) (content!9948 l2!1268))))))

(assert (=> d!1560012 (= lt!1992110 e!3038231)))

(declare-fun c!826726 () Bool)

(assert (=> d!1560012 (= c!826726 (is-Nil!55773 (t!363517 l1!1299)))))

(assert (=> d!1560012 (= (++!12158 (t!363517 l1!1299) l2!1268) lt!1992110)))

(declare-fun b!4859870 () Bool)

(declare-fun res!2074744 () Bool)

(assert (=> b!4859870 (=> (not res!2074744) (not e!3038232))))

(declare-fun size!36751 (List!55897) Int)

(assert (=> b!4859870 (= res!2074744 (= (size!36751 lt!1992110) (+ (size!36751 (t!363517 l1!1299)) (size!36751 l2!1268))))))

(assert (= (and d!1560012 c!826726) b!4859868))

(assert (= (and d!1560012 (not c!826726)) b!4859869))

(assert (= (and d!1560012 res!2074745) b!4859870))

(assert (= (and b!4859870 res!2074744) b!4859871))

(declare-fun m!5858098 () Bool)

(assert (=> b!4859869 m!5858098))

(declare-fun m!5858100 () Bool)

(assert (=> d!1560012 m!5858100))

(declare-fun m!5858102 () Bool)

(assert (=> d!1560012 m!5858102))

(declare-fun m!5858104 () Bool)

(assert (=> d!1560012 m!5858104))

(declare-fun m!5858106 () Bool)

(assert (=> b!4859870 m!5858106))

(declare-fun m!5858108 () Bool)

(assert (=> b!4859870 m!5858108))

(declare-fun m!5858110 () Bool)

(assert (=> b!4859870 m!5858110))

(assert (=> b!4859838 d!1560012))

(declare-fun d!1560018 () Bool)

(declare-fun lt!1992113 () Int)

(assert (=> d!1560018 (>= lt!1992113 0)))

(declare-fun e!3038235 () Int)

(assert (=> d!1560018 (= lt!1992113 e!3038235)))

(declare-fun c!826729 () Bool)

(assert (=> d!1560018 (= c!826729 (is-Nil!55773 (t!363517 l1!1299)))))

(assert (=> d!1560018 (= (ListPrimitiveSize!370 (t!363517 l1!1299)) lt!1992113)))

(declare-fun b!4859876 () Bool)

(assert (=> b!4859876 (= e!3038235 0)))

(declare-fun b!4859877 () Bool)

(assert (=> b!4859877 (= e!3038235 (+ 1 (ListPrimitiveSize!370 (t!363517 (t!363517 l1!1299)))))))

(assert (= (and d!1560018 c!826729) b!4859876))

(assert (= (and d!1560018 (not c!826729)) b!4859877))

(declare-fun m!5858112 () Bool)

(assert (=> b!4859877 m!5858112))

(assert (=> b!4859837 d!1560018))

(declare-fun d!1560020 () Bool)

(declare-fun lt!1992114 () Int)

(assert (=> d!1560020 (>= lt!1992114 0)))

(declare-fun e!3038236 () Int)

(assert (=> d!1560020 (= lt!1992114 e!3038236)))

(declare-fun c!826730 () Bool)

(assert (=> d!1560020 (= c!826730 (is-Nil!55773 l1!1299))))

(assert (=> d!1560020 (= (ListPrimitiveSize!370 l1!1299) lt!1992114)))

(declare-fun b!4859878 () Bool)

(assert (=> b!4859878 (= e!3038236 0)))

(declare-fun b!4859879 () Bool)

(assert (=> b!4859879 (= e!3038236 (+ 1 (ListPrimitiveSize!370 (t!363517 l1!1299))))))

(assert (= (and d!1560020 c!826730) b!4859878))

(assert (= (and d!1560020 (not c!826730)) b!4859879))

(assert (=> b!4859879 m!5858070))

(assert (=> b!4859837 d!1560020))

(declare-fun d!1560022 () Bool)

(assert (=> d!1560022 (= (isEmpty!29862 (++!12158 l1!1299 l2!1268)) (is-Nil!55773 (++!12158 l1!1299 l2!1268)))))

(assert (=> start!507848 d!1560022))

(declare-fun e!3038238 () Bool)

(declare-fun lt!1992115 () List!55897)

(declare-fun b!4859883 () Bool)

(assert (=> b!4859883 (= e!3038238 (or (not (= l2!1268 Nil!55773)) (= lt!1992115 l1!1299)))))

(declare-fun b!4859881 () Bool)

(declare-fun e!3038237 () List!55897)

(assert (=> b!4859881 (= e!3038237 (Cons!55773 (h!62221 l1!1299) (++!12158 (t!363517 l1!1299) l2!1268)))))

(declare-fun b!4859880 () Bool)

(assert (=> b!4859880 (= e!3038237 l2!1268)))

(declare-fun d!1560024 () Bool)

(assert (=> d!1560024 e!3038238))

(declare-fun res!2074747 () Bool)

(assert (=> d!1560024 (=> (not res!2074747) (not e!3038238))))

(assert (=> d!1560024 (= res!2074747 (= (content!9948 lt!1992115) (set.union (content!9948 l1!1299) (content!9948 l2!1268))))))

(assert (=> d!1560024 (= lt!1992115 e!3038237)))

(declare-fun c!826731 () Bool)

(assert (=> d!1560024 (= c!826731 (is-Nil!55773 l1!1299))))

(assert (=> d!1560024 (= (++!12158 l1!1299 l2!1268) lt!1992115)))

(declare-fun b!4859882 () Bool)

(declare-fun res!2074746 () Bool)

(assert (=> b!4859882 (=> (not res!2074746) (not e!3038238))))

(assert (=> b!4859882 (= res!2074746 (= (size!36751 lt!1992115) (+ (size!36751 l1!1299) (size!36751 l2!1268))))))

(assert (= (and d!1560024 c!826731) b!4859880))

(assert (= (and d!1560024 (not c!826731)) b!4859881))

(assert (= (and d!1560024 res!2074747) b!4859882))

(assert (= (and b!4859882 res!2074746) b!4859883))

(assert (=> b!4859881 m!5858074))

(declare-fun m!5858114 () Bool)

(assert (=> d!1560024 m!5858114))

(declare-fun m!5858116 () Bool)

(assert (=> d!1560024 m!5858116))

(assert (=> d!1560024 m!5858104))

(declare-fun m!5858118 () Bool)

(assert (=> b!4859882 m!5858118))

(declare-fun m!5858120 () Bool)

(assert (=> b!4859882 m!5858120))

(assert (=> b!4859882 m!5858110))

(assert (=> start!507848 d!1560024))

(declare-fun b!4859888 () Bool)

(declare-fun e!3038241 () Bool)

(declare-fun tp!1366972 () Bool)

(assert (=> b!4859888 (= e!3038241 (and tp_is_empty!35565 tp!1366972))))

(assert (=> b!4859836 (= tp!1366962 e!3038241)))

(assert (= (and b!4859836 (is-Cons!55773 (t!363517 l2!1268))) b!4859888))

(declare-fun b!4859889 () Bool)

(declare-fun e!3038242 () Bool)

(declare-fun tp!1366973 () Bool)

(assert (=> b!4859889 (= e!3038242 (and tp_is_empty!35565 tp!1366973))))

(assert (=> b!4859839 (= tp!1366963 e!3038242)))

(assert (= (and b!4859839 (is-Cons!55773 (t!363517 l1!1299))) b!4859889))

(push 1)

(assert (not b!4859870))

(assert (not b!4859881))

(assert (not b!4859869))

(assert (not b!4859877))

(assert (not d!1560012))

(assert tp_is_empty!35565)

(assert (not b!4859882))

(assert (not d!1560024))

(assert (not b!4859879))

(assert (not b!4859888))

(assert (not b!4859889))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

