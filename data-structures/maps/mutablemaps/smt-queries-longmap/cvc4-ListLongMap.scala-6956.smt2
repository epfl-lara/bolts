; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87800 () Bool)

(assert start!87800)

(declare-fun b!1014735 () Bool)

(assert (=> b!1014735 true))

(assert (=> b!1014735 true))

(declare-fun b!1014729 () Bool)

(declare-fun e!570871 () Bool)

(declare-datatypes ((B!1446 0))(
  ( (B!1447 (val!11807 Int)) )
))
(declare-datatypes ((tuple2!15250 0))(
  ( (tuple2!15251 (_1!7635 (_ BitVec 64)) (_2!7635 B!1446)) )
))
(declare-datatypes ((List!21560 0))(
  ( (Nil!21557) (Cons!21556 (h!22754 tuple2!15250) (t!30569 List!21560)) )
))
(declare-fun l!412 () List!21560)

(declare-fun head!941 (List!21560) tuple2!15250)

(assert (=> b!1014729 (= e!570871 (bvsge (_1!7635 (h!22754 l!412)) (_1!7635 (head!941 (t!30569 l!412)))))))

(declare-fun b!1014730 () Bool)

(declare-fun e!570869 () Bool)

(declare-fun e!570870 () Bool)

(assert (=> b!1014730 (= e!570869 e!570870)))

(declare-fun res!680942 () Bool)

(assert (=> b!1014730 (=> (not res!680942) (not e!570870))))

(declare-datatypes ((List!21561 0))(
  ( (Nil!21558) (Cons!21557 (h!22755 (_ BitVec 64)) (t!30570 List!21561)) )
))
(declare-fun lt!448722 () List!21561)

(declare-fun isEmpty!847 (List!21561) Bool)

(assert (=> b!1014730 (= res!680942 (not (isEmpty!847 lt!448722)))))

(declare-fun value!115 () B!1446)

(declare-fun getKeysOf!54 (List!21560 B!1446) List!21561)

(assert (=> b!1014730 (= lt!448722 (getKeysOf!54 (t!30569 l!412) value!115))))

(declare-fun b!1014731 () Bool)

(declare-fun res!680943 () Bool)

(assert (=> b!1014731 (=> (not res!680943) (not e!570869))))

(assert (=> b!1014731 (= res!680943 (and (not (= (_2!7635 (h!22754 l!412)) value!115)) (is-Cons!21556 l!412)))))

(declare-fun b!1014732 () Bool)

(declare-fun res!680945 () Bool)

(assert (=> b!1014732 (=> res!680945 e!570871)))

(declare-fun isEmpty!848 (List!21560) Bool)

(assert (=> b!1014732 (= res!680945 (isEmpty!848 (t!30569 l!412)))))

(declare-fun b!1014733 () Bool)

(declare-fun e!570872 () Bool)

(declare-fun tp_is_empty!23513 () Bool)

(declare-fun tp!70563 () Bool)

(assert (=> b!1014733 (= e!570872 (and tp_is_empty!23513 tp!70563))))

(declare-fun res!680947 () Bool)

(assert (=> start!87800 (=> (not res!680947) (not e!570869))))

(declare-fun isStrictlySorted!577 (List!21560) Bool)

(assert (=> start!87800 (= res!680947 (isStrictlySorted!577 l!412))))

(assert (=> start!87800 e!570869))

(assert (=> start!87800 e!570872))

(assert (=> start!87800 tp_is_empty!23513))

(declare-fun b!1014734 () Bool)

(assert (=> b!1014734 (= e!570870 e!570871)))

(declare-fun res!680944 () Bool)

(assert (=> b!1014734 (=> res!680944 e!570871)))

(assert (=> b!1014734 (= res!680944 (not (isStrictlySorted!577 (t!30569 l!412))))))

(declare-fun res!680946 () Bool)

(assert (=> b!1014735 (=> res!680946 e!570871)))

(declare-fun lambda!746 () Int)

(declare-fun forall!249 (List!21561 Int) Bool)

(assert (=> b!1014735 (= res!680946 (not (forall!249 lt!448722 lambda!746)))))

(assert (= (and start!87800 res!680947) b!1014731))

(assert (= (and b!1014731 res!680943) b!1014730))

(assert (= (and b!1014730 res!680942) b!1014734))

(assert (= (and b!1014734 (not res!680944)) b!1014732))

(assert (= (and b!1014732 (not res!680945)) b!1014735))

(assert (= (and b!1014735 (not res!680946)) b!1014729))

(assert (= (and start!87800 (is-Cons!21556 l!412)) b!1014733))

(declare-fun m!937291 () Bool)

(assert (=> b!1014734 m!937291))

(declare-fun m!937293 () Bool)

(assert (=> b!1014732 m!937293))

(declare-fun m!937295 () Bool)

(assert (=> b!1014735 m!937295))

(declare-fun m!937297 () Bool)

(assert (=> b!1014730 m!937297))

(declare-fun m!937299 () Bool)

(assert (=> b!1014730 m!937299))

(declare-fun m!937301 () Bool)

(assert (=> start!87800 m!937301))

(declare-fun m!937303 () Bool)

(assert (=> b!1014729 m!937303))

(push 1)

(assert (not b!1014732))

(assert tp_is_empty!23513)

(assert (not b!1014734))

(assert (not b!1014729))

(assert (not b!1014735))

(assert (not start!87800))

(assert (not b!1014730))

(assert (not b!1014733))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120783 () Bool)

(declare-fun res!680956 () Bool)

(declare-fun e!570881 () Bool)

(assert (=> d!120783 (=> res!680956 e!570881)))

(assert (=> d!120783 (= res!680956 (is-Nil!21558 lt!448722))))

(assert (=> d!120783 (= (forall!249 lt!448722 lambda!746) e!570881)))

(declare-fun b!1014748 () Bool)

(declare-fun e!570882 () Bool)

(assert (=> b!1014748 (= e!570881 e!570882)))

(declare-fun res!680957 () Bool)

(assert (=> b!1014748 (=> (not res!680957) (not e!570882))))

(declare-fun dynLambda!1895 (Int (_ BitVec 64)) Bool)

(assert (=> b!1014748 (= res!680957 (dynLambda!1895 lambda!746 (h!22755 lt!448722)))))

(declare-fun b!1014749 () Bool)

(assert (=> b!1014749 (= e!570882 (forall!249 (t!30570 lt!448722) lambda!746))))

(assert (= (and d!120783 (not res!680956)) b!1014748))

(assert (= (and b!1014748 res!680957) b!1014749))

(declare-fun b_lambda!15397 () Bool)

(assert (=> (not b_lambda!15397) (not b!1014748)))

(declare-fun m!937305 () Bool)

(assert (=> b!1014748 m!937305))

(declare-fun m!937307 () Bool)

(assert (=> b!1014749 m!937307))

(assert (=> b!1014735 d!120783))

(declare-fun d!120787 () Bool)

(assert (=> d!120787 (= (isEmpty!847 lt!448722) (is-Nil!21558 lt!448722))))

(assert (=> b!1014730 d!120787))

(declare-fun bs!29285 () Bool)

(declare-fun b!1014818 () Bool)

(assert (= bs!29285 (and b!1014818 b!1014735)))

(declare-fun lt!448795 () tuple2!15250)

(declare-fun lambda!765 () Int)

(declare-fun lt!448801 () List!21560)

(assert (=> bs!29285 (= (= (Cons!21556 lt!448795 lt!448801) (t!30569 l!412)) (= lambda!765 lambda!746))))

(assert (=> b!1014818 true))

(assert (=> b!1014818 true))

(assert (=> b!1014818 true))

(declare-fun bs!29286 () Bool)

(declare-fun b!1014819 () Bool)

(assert (= bs!29286 (and b!1014819 b!1014735)))

(declare-fun lambda!766 () Int)

(declare-fun lt!448804 () tuple2!15250)

(declare-fun lt!448805 () List!21560)

(assert (=> bs!29286 (= (= (Cons!21556 lt!448804 lt!448805) (t!30569 l!412)) (= lambda!766 lambda!746))))

(declare-fun bs!29287 () Bool)

(assert (= bs!29287 (and b!1014819 b!1014818)))

(assert (=> bs!29287 (= (= (Cons!21556 lt!448804 lt!448805) (Cons!21556 lt!448795 lt!448801)) (= lambda!766 lambda!765))))

(assert (=> b!1014819 true))

(assert (=> b!1014819 true))

(assert (=> b!1014819 true))

(declare-fun bs!29291 () Bool)

(declare-fun d!120791 () Bool)

(assert (= bs!29291 (and d!120791 b!1014735)))

(declare-fun lambda!769 () Int)

(assert (=> bs!29291 (= lambda!769 lambda!746)))

(declare-fun bs!29293 () Bool)

(assert (= bs!29293 (and d!120791 b!1014818)))

(assert (=> bs!29293 (= (= (t!30569 l!412) (Cons!21556 lt!448795 lt!448801)) (= lambda!769 lambda!765))))

(declare-fun bs!29294 () Bool)

(assert (= bs!29294 (and d!120791 b!1014819)))

(assert (=> bs!29294 (= (= (t!30569 l!412) (Cons!21556 lt!448804 lt!448805)) (= lambda!769 lambda!766))))

(assert (=> d!120791 true))

(assert (=> d!120791 true))

(declare-fun bm!42875 () Bool)

(declare-fun call!42881 () Bool)

(declare-fun call!42880 () List!21561)

(assert (=> bm!42875 (= call!42881 (isEmpty!847 call!42880))))

(declare-fun b!1014813 () Bool)

(declare-datatypes ((Unit!33157 0))(
  ( (Unit!33158) )
))
(declare-fun e!570923 () Unit!33157)

(declare-fun Unit!33160 () Unit!33157)

(assert (=> b!1014813 (= e!570923 Unit!33160)))

(declare-fun c!102730 () Bool)

(declare-fun bm!42876 () Bool)

(declare-fun lt!448802 () List!21561)

(declare-fun call!42879 () Bool)

(declare-fun lt!448798 () List!21561)

(assert (=> bm!42876 (= call!42879 (forall!249 (ite c!102730 lt!448802 lt!448798) (ite c!102730 lambda!765 lambda!766)))))

(declare-fun b!1014814 () Bool)

(declare-fun e!570921 () List!21561)

(assert (=> b!1014814 (= e!570921 (Cons!21557 (_1!7635 (h!22754 (t!30569 l!412))) call!42880))))

(declare-fun c!102732 () Bool)

(assert (=> b!1014814 (= c!102732 (not call!42881))))

(declare-fun lt!448797 () Unit!33157)

(declare-fun e!570924 () Unit!33157)

(assert (=> b!1014814 (= lt!448797 e!570924)))

(declare-fun b!1014815 () Bool)

(declare-fun Unit!33161 () Unit!33157)

(assert (=> b!1014815 (= e!570924 Unit!33161)))

(declare-fun bm!42877 () Bool)

(assert (=> bm!42877 (= call!42880 (getKeysOf!54 (t!30569 (t!30569 l!412)) value!115))))

(declare-fun b!1014812 () Bool)

(declare-fun e!570922 () List!21561)

(assert (=> b!1014812 (= e!570922 Nil!21558)))

(declare-fun lt!448806 () List!21561)

(assert (=> d!120791 (forall!249 lt!448806 lambda!769)))

(assert (=> d!120791 (= lt!448806 e!570921)))

(assert (=> d!120791 (= c!102730 (and (is-Cons!21556 (t!30569 l!412)) (= (_2!7635 (h!22754 (t!30569 l!412))) value!115)))))

(assert (=> d!120791 (isStrictlySorted!577 (t!30569 l!412))))

(assert (=> d!120791 (= (getKeysOf!54 (t!30569 l!412) value!115) lt!448806)))

(declare-fun call!42878 () Unit!33157)

(declare-fun bm!42878 () Bool)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!44 (List!21560 List!21561 B!1446 tuple2!15250) Unit!33157)

(assert (=> bm!42878 (= call!42878 (lemmaForallGetValueByKeySameWithASmallerHead!44 (ite c!102730 lt!448801 lt!448805) (ite c!102730 lt!448802 lt!448798) value!115 (ite c!102730 lt!448795 lt!448804)))))

(declare-fun b!1014816 () Bool)

(assert (=> b!1014816 (= e!570921 e!570922)))

(declare-fun c!102731 () Bool)

(assert (=> b!1014816 (= c!102731 (and (is-Cons!21556 (t!30569 l!412)) (not (= (_2!7635 (h!22754 (t!30569 l!412))) value!115))))))

(declare-fun b!1014817 () Bool)

(declare-fun lt!448796 () Unit!33157)

(assert (=> b!1014817 (= lt!448796 e!570923)))

(declare-fun c!102733 () Bool)

(assert (=> b!1014817 (= c!102733 (not call!42881))))

(declare-fun lt!448803 () List!21561)

(assert (=> b!1014817 (= lt!448803 call!42880)))

(assert (=> b!1014817 (= e!570922 call!42880)))

(assert (=> b!1014818 call!42879))

(declare-fun lt!448799 () Unit!33157)

(assert (=> b!1014818 (= lt!448799 call!42878)))

(assert (=> b!1014818 (= lt!448795 (h!22754 (t!30569 l!412)))))

(assert (=> b!1014818 (= lt!448802 call!42880)))

(assert (=> b!1014818 (= lt!448801 (t!30569 (t!30569 l!412)))))

(assert (=> b!1014818 (= e!570924 lt!448799)))

(declare-fun lt!448800 () Unit!33157)

(assert (=> b!1014819 (= e!570923 lt!448800)))

(assert (=> b!1014819 (= lt!448805 (t!30569 (t!30569 l!412)))))

(assert (=> b!1014819 (= lt!448798 call!42880)))

(assert (=> b!1014819 (= lt!448804 (h!22754 (t!30569 l!412)))))

(assert (=> b!1014819 (= lt!448800 call!42878)))

(assert (=> b!1014819 call!42879))

(assert (= (and d!120791 c!102730) b!1014814))

(assert (= (and d!120791 (not c!102730)) b!1014816))

(assert (= (and b!1014814 c!102732) b!1014818))

(assert (= (and b!1014814 (not c!102732)) b!1014815))

(assert (= (and b!1014816 c!102731) b!1014817))

(assert (= (and b!1014816 (not c!102731)) b!1014812))

(assert (= (and b!1014817 c!102733) b!1014819))

(assert (= (and b!1014817 (not c!102733)) b!1014813))

(assert (= (or b!1014818 b!1014819) bm!42878))

(assert (= (or b!1014818 b!1014819) bm!42876))

(assert (= (or b!1014814 b!1014818 b!1014817 b!1014819) bm!42877))

(assert (= (or b!1014814 b!1014817) bm!42875))

(declare-fun m!937321 () Bool)

(assert (=> bm!42877 m!937321))

(declare-fun m!937327 () Bool)

(assert (=> bm!42876 m!937327))

(declare-fun m!937329 () Bool)

(assert (=> d!120791 m!937329))

(assert (=> d!120791 m!937291))

(declare-fun m!937331 () Bool)

(assert (=> bm!42878 m!937331))

(declare-fun m!937333 () Bool)

(assert (=> bm!42875 m!937333))

(assert (=> b!1014730 d!120791))

(declare-fun d!120811 () Bool)

(declare-fun res!680986 () Bool)

(declare-fun e!570952 () Bool)

(assert (=> d!120811 (=> res!680986 e!570952)))

(assert (=> d!120811 (= res!680986 (or (is-Nil!21557 l!412) (is-Nil!21557 (t!30569 l!412))))))

(assert (=> d!120811 (= (isStrictlySorted!577 l!412) e!570952)))

(declare-fun b!1014865 () Bool)

(declare-fun e!570953 () Bool)

(assert (=> b!1014865 (= e!570952 e!570953)))

(declare-fun res!680987 () Bool)

(assert (=> b!1014865 (=> (not res!680987) (not e!570953))))

(assert (=> b!1014865 (= res!680987 (bvslt (_1!7635 (h!22754 l!412)) (_1!7635 (h!22754 (t!30569 l!412)))))))

(declare-fun b!1014866 () Bool)

(assert (=> b!1014866 (= e!570953 (isStrictlySorted!577 (t!30569 l!412)))))

(assert (= (and d!120811 (not res!680986)) b!1014865))

(assert (= (and b!1014865 res!680987) b!1014866))

(assert (=> b!1014866 m!937291))

(assert (=> start!87800 d!120811))

(declare-fun d!120823 () Bool)

(declare-fun res!680988 () Bool)

(declare-fun e!570955 () Bool)

(assert (=> d!120823 (=> res!680988 e!570955)))

(assert (=> d!120823 (= res!680988 (or (is-Nil!21557 (t!30569 l!412)) (is-Nil!21557 (t!30569 (t!30569 l!412)))))))

(assert (=> d!120823 (= (isStrictlySorted!577 (t!30569 l!412)) e!570955)))

(declare-fun b!1014868 () Bool)

(declare-fun e!570956 () Bool)

(assert (=> b!1014868 (= e!570955 e!570956)))

(declare-fun res!680989 () Bool)

(assert (=> b!1014868 (=> (not res!680989) (not e!570956))))

(assert (=> b!1014868 (= res!680989 (bvslt (_1!7635 (h!22754 (t!30569 l!412))) (_1!7635 (h!22754 (t!30569 (t!30569 l!412))))))))

(declare-fun b!1014869 () Bool)

(assert (=> b!1014869 (= e!570956 (isStrictlySorted!577 (t!30569 (t!30569 l!412))))))

(assert (= (and d!120823 (not res!680988)) b!1014868))

(assert (= (and b!1014868 res!680989) b!1014869))

(declare-fun m!937355 () Bool)

(assert (=> b!1014869 m!937355))

(assert (=> b!1014734 d!120823))

(declare-fun d!120825 () Bool)

(assert (=> d!120825 (= (head!941 (t!30569 l!412)) (h!22754 (t!30569 l!412)))))

(assert (=> b!1014729 d!120825))

(declare-fun d!120827 () Bool)

(assert (=> d!120827 (= (isEmpty!848 (t!30569 l!412)) (is-Nil!21557 (t!30569 l!412)))))

(assert (=> b!1014732 d!120827))

(declare-fun b!1014874 () Bool)

(declare-fun e!570959 () Bool)

(declare-fun tp!70572 () Bool)

(assert (=> b!1014874 (= e!570959 (and tp_is_empty!23513 tp!70572))))

(assert (=> b!1014733 (= tp!70563 e!570959)))

(assert (= (and b!1014733 (is-Cons!21556 (t!30569 l!412))) b!1014874))

(declare-fun b_lambda!15407 () Bool)

(assert (= b_lambda!15397 (or b!1014735 b_lambda!15407)))

(declare-fun bs!29305 () Bool)

(declare-fun d!120829 () Bool)

(assert (= bs!29305 (and d!120829 b!1014735)))

(declare-datatypes ((Option!583 0))(
  ( (Some!582 (v!14431 B!1446)) (None!581) )
))
(declare-fun getValueByKey!532 (List!21560 (_ BitVec 64)) Option!583)

(assert (=> bs!29305 (= (dynLambda!1895 lambda!746 (h!22755 lt!448722)) (= (getValueByKey!532 (t!30569 l!412) (h!22755 lt!448722)) (Some!582 value!115)))))

(declare-fun m!937357 () Bool)

(assert (=> bs!29305 m!937357))

(assert (=> b!1014748 d!120829))

(push 1)

(assert (not b_lambda!15407))

(assert (not b!1014866))

(assert (not bm!42876))

(assert (not bm!42875))

(assert tp_is_empty!23513)

(assert (not d!120791))

(assert (not b!1014749))

(assert (not bm!42877))

(assert (not bm!42878))

(assert (not bs!29305))

(assert (not b!1014869))

(assert (not b!1014874))

(check-sat)

(pop 1)

(push 1)

(check-sat)

