; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87840 () Bool)

(assert start!87840)

(declare-fun b!1014904 () Bool)

(assert (=> b!1014904 true))

(assert (=> b!1014904 true))

(declare-datatypes ((Unit!33165 0))(
  ( (Unit!33166) )
))
(declare-fun e!570975 () Unit!33165)

(declare-fun lt!448848 () Unit!33165)

(assert (=> b!1014904 (= e!570975 lt!448848)))

(declare-datatypes ((List!21564 0))(
  ( (Nil!21561) (Cons!21560 (h!22758 (_ BitVec 64)) (t!30573 List!21564)) )
))
(declare-fun lt!448847 () List!21564)

(declare-datatypes ((B!1450 0))(
  ( (B!1451 (val!11809 Int)) )
))
(declare-fun value!115 () B!1450)

(declare-datatypes ((tuple2!15254 0))(
  ( (tuple2!15255 (_1!7637 (_ BitVec 64)) (_2!7637 B!1450)) )
))
(declare-datatypes ((List!21565 0))(
  ( (Nil!21562) (Cons!21561 (h!22759 tuple2!15254) (t!30574 List!21565)) )
))
(declare-fun l!412 () List!21565)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!46 (List!21565 List!21564 B!1450 tuple2!15254) Unit!33165)

(assert (=> b!1014904 (= lt!448848 (lemmaForallGetValueByKeySameWithASmallerHead!46 (t!30574 l!412) lt!448847 value!115 (h!22759 l!412)))))

(declare-fun lambda!779 () Int)

(declare-fun forall!251 (List!21564 Int) Bool)

(assert (=> b!1014904 (forall!251 lt!448847 lambda!779)))

(declare-fun b!1014905 () Bool)

(declare-fun e!570976 () Bool)

(declare-fun tp_is_empty!23517 () Bool)

(declare-fun tp!70578 () Bool)

(assert (=> b!1014905 (= e!570976 (and tp_is_empty!23517 tp!70578))))

(declare-fun b!1014906 () Bool)

(declare-fun Unit!33167 () Unit!33165)

(assert (=> b!1014906 (= e!570975 Unit!33167)))

(declare-fun b!1014907 () Bool)

(declare-fun res!681000 () Bool)

(declare-fun e!570977 () Bool)

(assert (=> b!1014907 (=> (not res!681000) (not e!570977))))

(get-info :version)

(assert (=> b!1014907 (= res!681000 (and (not (= (_2!7637 (h!22759 l!412)) value!115)) ((_ is Cons!21561) l!412)))))

(declare-fun res!681001 () Bool)

(assert (=> start!87840 (=> (not res!681001) (not e!570977))))

(declare-fun isStrictlySorted!579 (List!21565) Bool)

(assert (=> start!87840 (= res!681001 (isStrictlySorted!579 l!412))))

(assert (=> start!87840 e!570977))

(assert (=> start!87840 e!570976))

(assert (=> start!87840 tp_is_empty!23517))

(declare-fun b!1014908 () Bool)

(declare-fun ListPrimitiveSize!119 (List!21565) Int)

(assert (=> b!1014908 (= e!570977 (>= (ListPrimitiveSize!119 (t!30574 l!412)) (ListPrimitiveSize!119 l!412)))))

(declare-fun lt!448846 () Unit!33165)

(assert (=> b!1014908 (= lt!448846 e!570975)))

(declare-fun c!102747 () Bool)

(declare-fun isEmpty!850 (List!21564) Bool)

(assert (=> b!1014908 (= c!102747 (not (isEmpty!850 lt!448847)))))

(declare-fun getKeysOf!56 (List!21565 B!1450) List!21564)

(assert (=> b!1014908 (= lt!448847 (getKeysOf!56 (t!30574 l!412) value!115))))

(assert (= (and start!87840 res!681001) b!1014907))

(assert (= (and b!1014907 res!681000) b!1014908))

(assert (= (and b!1014908 c!102747) b!1014904))

(assert (= (and b!1014908 (not c!102747)) b!1014906))

(assert (= (and start!87840 ((_ is Cons!21561) l!412)) b!1014905))

(declare-fun m!937373 () Bool)

(assert (=> b!1014904 m!937373))

(declare-fun m!937375 () Bool)

(assert (=> b!1014904 m!937375))

(declare-fun m!937377 () Bool)

(assert (=> start!87840 m!937377))

(declare-fun m!937379 () Bool)

(assert (=> b!1014908 m!937379))

(declare-fun m!937381 () Bool)

(assert (=> b!1014908 m!937381))

(declare-fun m!937383 () Bool)

(assert (=> b!1014908 m!937383))

(declare-fun m!937385 () Bool)

(assert (=> b!1014908 m!937385))

(check-sat tp_is_empty!23517 (not b!1014904) (not b!1014908) (not b!1014905) (not start!87840))
(check-sat)
(get-model)

(declare-fun d!120833 () Bool)

(declare-fun lt!448864 () Int)

(assert (=> d!120833 (>= lt!448864 0)))

(declare-fun e!570993 () Int)

(assert (=> d!120833 (= lt!448864 e!570993)))

(declare-fun c!102757 () Bool)

(assert (=> d!120833 (= c!102757 ((_ is Nil!21562) (t!30574 l!412)))))

(assert (=> d!120833 (= (ListPrimitiveSize!119 (t!30574 l!412)) lt!448864)))

(declare-fun b!1014944 () Bool)

(assert (=> b!1014944 (= e!570993 0)))

(declare-fun b!1014945 () Bool)

(assert (=> b!1014945 (= e!570993 (+ 1 (ListPrimitiveSize!119 (t!30574 (t!30574 l!412)))))))

(assert (= (and d!120833 c!102757) b!1014944))

(assert (= (and d!120833 (not c!102757)) b!1014945))

(declare-fun m!937401 () Bool)

(assert (=> b!1014945 m!937401))

(assert (=> b!1014908 d!120833))

(declare-fun d!120839 () Bool)

(declare-fun lt!448865 () Int)

(assert (=> d!120839 (>= lt!448865 0)))

(declare-fun e!570994 () Int)

(assert (=> d!120839 (= lt!448865 e!570994)))

(declare-fun c!102758 () Bool)

(assert (=> d!120839 (= c!102758 ((_ is Nil!21562) l!412))))

(assert (=> d!120839 (= (ListPrimitiveSize!119 l!412) lt!448865)))

(declare-fun b!1014946 () Bool)

(assert (=> b!1014946 (= e!570994 0)))

(declare-fun b!1014947 () Bool)

(assert (=> b!1014947 (= e!570994 (+ 1 (ListPrimitiveSize!119 (t!30574 l!412))))))

(assert (= (and d!120839 c!102758) b!1014946))

(assert (= (and d!120839 (not c!102758)) b!1014947))

(assert (=> b!1014947 m!937379))

(assert (=> b!1014908 d!120839))

(declare-fun d!120841 () Bool)

(assert (=> d!120841 (= (isEmpty!850 lt!448847) ((_ is Nil!21561) lt!448847))))

(assert (=> b!1014908 d!120841))

(declare-fun bs!29309 () Bool)

(declare-fun b!1015009 () Bool)

(assert (= bs!29309 (and b!1015009 b!1014904)))

(declare-fun lt!448953 () tuple2!15254)

(declare-fun lambda!801 () Int)

(declare-fun lt!448951 () List!21565)

(assert (=> bs!29309 (= (= (Cons!21561 lt!448953 lt!448951) l!412) (= lambda!801 lambda!779))))

(assert (=> b!1015009 true))

(assert (=> b!1015009 true))

(assert (=> b!1015009 true))

(declare-fun bs!29312 () Bool)

(declare-fun b!1015007 () Bool)

(assert (= bs!29312 (and b!1015007 b!1014904)))

(declare-fun lt!448942 () List!21565)

(declare-fun lt!448945 () tuple2!15254)

(declare-fun lambda!804 () Int)

(assert (=> bs!29312 (= (= (Cons!21561 lt!448945 lt!448942) l!412) (= lambda!804 lambda!779))))

(declare-fun bs!29313 () Bool)

(assert (= bs!29313 (and b!1015007 b!1015009)))

(assert (=> bs!29313 (= (= (Cons!21561 lt!448945 lt!448942) (Cons!21561 lt!448953 lt!448951)) (= lambda!804 lambda!801))))

(assert (=> b!1015007 true))

(assert (=> b!1015007 true))

(assert (=> b!1015007 true))

(declare-fun bs!29318 () Bool)

(declare-fun d!120843 () Bool)

(assert (= bs!29318 (and d!120843 b!1014904)))

(declare-fun lambda!807 () Int)

(assert (=> bs!29318 (= (= (t!30574 l!412) l!412) (= lambda!807 lambda!779))))

(declare-fun bs!29319 () Bool)

(assert (= bs!29319 (and d!120843 b!1015009)))

(assert (=> bs!29319 (= (= (t!30574 l!412) (Cons!21561 lt!448953 lt!448951)) (= lambda!807 lambda!801))))

(declare-fun bs!29321 () Bool)

(assert (= bs!29321 (and d!120843 b!1015007)))

(assert (=> bs!29321 (= (= (t!30574 l!412) (Cons!21561 lt!448945 lt!448942)) (= lambda!807 lambda!804))))

(assert (=> d!120843 true))

(assert (=> d!120843 true))

(declare-fun bm!42911 () Bool)

(declare-fun lt!448948 () List!21564)

(declare-fun lt!448947 () List!21564)

(declare-fun c!102787 () Bool)

(declare-fun call!42916 () Unit!33165)

(assert (=> bm!42911 (= call!42916 (lemmaForallGetValueByKeySameWithASmallerHead!46 (ite c!102787 lt!448951 lt!448942) (ite c!102787 lt!448948 lt!448947) value!115 (ite c!102787 lt!448953 lt!448945)))))

(declare-fun b!1015004 () Bool)

(declare-fun e!571025 () Unit!33165)

(declare-fun Unit!33172 () Unit!33165)

(assert (=> b!1015004 (= e!571025 Unit!33172)))

(declare-fun lt!448949 () List!21564)

(assert (=> d!120843 (forall!251 lt!448949 lambda!807)))

(declare-fun e!571026 () List!21564)

(assert (=> d!120843 (= lt!448949 e!571026)))

(assert (=> d!120843 (= c!102787 (and ((_ is Cons!21561) (t!30574 l!412)) (= (_2!7637 (h!22759 (t!30574 l!412))) value!115)))))

(assert (=> d!120843 (isStrictlySorted!579 (t!30574 l!412))))

(assert (=> d!120843 (= (getKeysOf!56 (t!30574 l!412) value!115) lt!448949)))

(declare-fun b!1015005 () Bool)

(declare-fun lt!448946 () Unit!33165)

(declare-fun e!571023 () Unit!33165)

(assert (=> b!1015005 (= lt!448946 e!571023)))

(declare-fun c!102789 () Bool)

(declare-fun call!42914 () Bool)

(assert (=> b!1015005 (= c!102789 (not call!42914))))

(declare-fun lt!448943 () List!21564)

(declare-fun call!42917 () List!21564)

(assert (=> b!1015005 (= lt!448943 call!42917)))

(declare-fun e!571024 () List!21564)

(assert (=> b!1015005 (= e!571024 call!42917)))

(declare-fun b!1015006 () Bool)

(assert (=> b!1015006 (= e!571024 Nil!21561)))

(declare-fun lt!448944 () Unit!33165)

(assert (=> b!1015007 (= e!571023 lt!448944)))

(assert (=> b!1015007 (= lt!448942 (t!30574 (t!30574 l!412)))))

(assert (=> b!1015007 (= lt!448947 call!42917)))

(assert (=> b!1015007 (= lt!448945 (h!22759 (t!30574 l!412)))))

(assert (=> b!1015007 (= lt!448944 call!42916)))

(declare-fun call!42915 () Bool)

(assert (=> b!1015007 call!42915))

(declare-fun b!1015008 () Bool)

(assert (=> b!1015008 (= e!571026 e!571024)))

(declare-fun c!102790 () Bool)

(assert (=> b!1015008 (= c!102790 (and ((_ is Cons!21561) (t!30574 l!412)) (not (= (_2!7637 (h!22759 (t!30574 l!412))) value!115))))))

(declare-fun bm!42912 () Bool)

(assert (=> bm!42912 (= call!42917 (getKeysOf!56 (t!30574 (t!30574 l!412)) value!115))))

(declare-fun bm!42913 () Bool)

(assert (=> bm!42913 (= call!42915 (forall!251 (ite c!102787 lt!448948 lt!448947) (ite c!102787 lambda!801 lambda!804)))))

(assert (=> b!1015009 call!42915))

(declare-fun lt!448950 () Unit!33165)

(assert (=> b!1015009 (= lt!448950 call!42916)))

(assert (=> b!1015009 (= lt!448953 (h!22759 (t!30574 l!412)))))

(assert (=> b!1015009 (= lt!448948 call!42917)))

(assert (=> b!1015009 (= lt!448951 (t!30574 (t!30574 l!412)))))

(assert (=> b!1015009 (= e!571025 lt!448950)))

(declare-fun b!1015010 () Bool)

(assert (=> b!1015010 (= e!571026 (Cons!21560 (_1!7637 (h!22759 (t!30574 l!412))) call!42917))))

(declare-fun c!102788 () Bool)

(assert (=> b!1015010 (= c!102788 (not call!42914))))

(declare-fun lt!448952 () Unit!33165)

(assert (=> b!1015010 (= lt!448952 e!571025)))

(declare-fun b!1015011 () Bool)

(declare-fun Unit!33176 () Unit!33165)

(assert (=> b!1015011 (= e!571023 Unit!33176)))

(declare-fun bm!42914 () Bool)

(assert (=> bm!42914 (= call!42914 (isEmpty!850 call!42917))))

(assert (= (and d!120843 c!102787) b!1015010))

(assert (= (and d!120843 (not c!102787)) b!1015008))

(assert (= (and b!1015010 c!102788) b!1015009))

(assert (= (and b!1015010 (not c!102788)) b!1015004))

(assert (= (and b!1015008 c!102790) b!1015005))

(assert (= (and b!1015008 (not c!102790)) b!1015006))

(assert (= (and b!1015005 c!102789) b!1015007))

(assert (= (and b!1015005 (not c!102789)) b!1015011))

(assert (= (or b!1015009 b!1015007) bm!42911))

(assert (= (or b!1015009 b!1015007) bm!42913))

(assert (= (or b!1015010 b!1015009 b!1015005 b!1015007) bm!42912))

(assert (= (or b!1015010 b!1015005) bm!42914))

(declare-fun m!937407 () Bool)

(assert (=> bm!42913 m!937407))

(declare-fun m!937409 () Bool)

(assert (=> bm!42911 m!937409))

(declare-fun m!937411 () Bool)

(assert (=> d!120843 m!937411))

(declare-fun m!937413 () Bool)

(assert (=> d!120843 m!937413))

(declare-fun m!937415 () Bool)

(assert (=> bm!42914 m!937415))

(declare-fun m!937417 () Bool)

(assert (=> bm!42912 m!937417))

(assert (=> b!1014908 d!120843))

(declare-fun bs!29327 () Bool)

(declare-fun b!1015059 () Bool)

(assert (= bs!29327 (and b!1015059 b!1014904)))

(declare-fun lambda!820 () Int)

(assert (=> bs!29327 (= (= (t!30574 l!412) l!412) (= lambda!820 lambda!779))))

(declare-fun bs!29329 () Bool)

(assert (= bs!29329 (and b!1015059 b!1015009)))

(assert (=> bs!29329 (= (= (t!30574 l!412) (Cons!21561 lt!448953 lt!448951)) (= lambda!820 lambda!801))))

(declare-fun bs!29331 () Bool)

(assert (= bs!29331 (and b!1015059 b!1015007)))

(assert (=> bs!29331 (= (= (t!30574 l!412) (Cons!21561 lt!448945 lt!448942)) (= lambda!820 lambda!804))))

(declare-fun bs!29333 () Bool)

(assert (= bs!29333 (and b!1015059 d!120843)))

(assert (=> bs!29333 (= lambda!820 lambda!807)))

(assert (=> b!1015059 true))

(assert (=> b!1015059 true))

(declare-fun bs!29335 () Bool)

(declare-fun d!120857 () Bool)

(assert (= bs!29335 (and d!120857 b!1015009)))

(declare-fun lambda!824 () Int)

(assert (=> bs!29335 (= (= (Cons!21561 (h!22759 l!412) (t!30574 l!412)) (Cons!21561 lt!448953 lt!448951)) (= lambda!824 lambda!801))))

(declare-fun bs!29337 () Bool)

(assert (= bs!29337 (and d!120857 b!1015059)))

(assert (=> bs!29337 (= (= (Cons!21561 (h!22759 l!412) (t!30574 l!412)) (t!30574 l!412)) (= lambda!824 lambda!820))))

(declare-fun bs!29339 () Bool)

(assert (= bs!29339 (and d!120857 b!1015007)))

(assert (=> bs!29339 (= (= (Cons!21561 (h!22759 l!412) (t!30574 l!412)) (Cons!21561 lt!448945 lt!448942)) (= lambda!824 lambda!804))))

(declare-fun bs!29341 () Bool)

(assert (= bs!29341 (and d!120857 b!1014904)))

(assert (=> bs!29341 (= (= (Cons!21561 (h!22759 l!412) (t!30574 l!412)) l!412) (= lambda!824 lambda!779))))

(declare-fun bs!29343 () Bool)

(assert (= bs!29343 (and d!120857 d!120843)))

(assert (=> bs!29343 (= (= (Cons!21561 (h!22759 l!412) (t!30574 l!412)) (t!30574 l!412)) (= lambda!824 lambda!807))))

(assert (=> d!120857 true))

(assert (=> d!120857 true))

(assert (=> d!120857 true))

(assert (=> d!120857 (forall!251 lt!448847 lambda!824)))

(declare-fun lt!448982 () Unit!33165)

(declare-fun choose!1642 (List!21565 List!21564 B!1450 tuple2!15254) Unit!33165)

(assert (=> d!120857 (= lt!448982 (choose!1642 (t!30574 l!412) lt!448847 value!115 (h!22759 l!412)))))

(declare-fun e!571047 () Bool)

(assert (=> d!120857 e!571047))

(declare-fun res!681034 () Bool)

(assert (=> d!120857 (=> (not res!681034) (not e!571047))))

(assert (=> d!120857 (= res!681034 (isStrictlySorted!579 (t!30574 l!412)))))

(assert (=> d!120857 (= (lemmaForallGetValueByKeySameWithASmallerHead!46 (t!30574 l!412) lt!448847 value!115 (h!22759 l!412)) lt!448982)))

(declare-fun b!1015058 () Bool)

(declare-fun res!681033 () Bool)

(assert (=> b!1015058 (=> (not res!681033) (not e!571047))))

(declare-fun isEmpty!852 (List!21565) Bool)

(assert (=> b!1015058 (= res!681033 (not (isEmpty!852 (t!30574 l!412))))))

(declare-fun res!681032 () Bool)

(assert (=> b!1015059 (=> (not res!681032) (not e!571047))))

(assert (=> b!1015059 (= res!681032 (forall!251 lt!448847 lambda!820))))

(declare-fun b!1015060 () Bool)

(declare-fun head!942 (List!21565) tuple2!15254)

(assert (=> b!1015060 (= e!571047 (bvslt (_1!7637 (h!22759 l!412)) (_1!7637 (head!942 (t!30574 l!412)))))))

(assert (= (and d!120857 res!681034) b!1015058))

(assert (= (and b!1015058 res!681033) b!1015059))

(assert (= (and b!1015059 res!681032) b!1015060))

(declare-fun m!937443 () Bool)

(assert (=> d!120857 m!937443))

(declare-fun m!937447 () Bool)

(assert (=> d!120857 m!937447))

(assert (=> d!120857 m!937413))

(declare-fun m!937451 () Bool)

(assert (=> b!1015058 m!937451))

(declare-fun m!937455 () Bool)

(assert (=> b!1015059 m!937455))

(declare-fun m!937459 () Bool)

(assert (=> b!1015060 m!937459))

(assert (=> b!1014904 d!120857))

(declare-fun d!120865 () Bool)

(declare-fun res!681051 () Bool)

(declare-fun e!571060 () Bool)

(assert (=> d!120865 (=> res!681051 e!571060)))

(assert (=> d!120865 (= res!681051 ((_ is Nil!21561) lt!448847))))

(assert (=> d!120865 (= (forall!251 lt!448847 lambda!779) e!571060)))

(declare-fun b!1015077 () Bool)

(declare-fun e!571061 () Bool)

(assert (=> b!1015077 (= e!571060 e!571061)))

(declare-fun res!681052 () Bool)

(assert (=> b!1015077 (=> (not res!681052) (not e!571061))))

(declare-fun dynLambda!1897 (Int (_ BitVec 64)) Bool)

(assert (=> b!1015077 (= res!681052 (dynLambda!1897 lambda!779 (h!22758 lt!448847)))))

(declare-fun b!1015078 () Bool)

(assert (=> b!1015078 (= e!571061 (forall!251 (t!30573 lt!448847) lambda!779))))

(assert (= (and d!120865 (not res!681051)) b!1015077))

(assert (= (and b!1015077 res!681052) b!1015078))

(declare-fun b_lambda!15411 () Bool)

(assert (=> (not b_lambda!15411) (not b!1015077)))

(declare-fun m!937465 () Bool)

(assert (=> b!1015077 m!937465))

(declare-fun m!937469 () Bool)

(assert (=> b!1015078 m!937469))

(assert (=> b!1014904 d!120865))

(declare-fun d!120871 () Bool)

(declare-fun res!681063 () Bool)

(declare-fun e!571072 () Bool)

(assert (=> d!120871 (=> res!681063 e!571072)))

(assert (=> d!120871 (= res!681063 (or ((_ is Nil!21562) l!412) ((_ is Nil!21562) (t!30574 l!412))))))

(assert (=> d!120871 (= (isStrictlySorted!579 l!412) e!571072)))

(declare-fun b!1015089 () Bool)

(declare-fun e!571073 () Bool)

(assert (=> b!1015089 (= e!571072 e!571073)))

(declare-fun res!681064 () Bool)

(assert (=> b!1015089 (=> (not res!681064) (not e!571073))))

(assert (=> b!1015089 (= res!681064 (bvslt (_1!7637 (h!22759 l!412)) (_1!7637 (h!22759 (t!30574 l!412)))))))

(declare-fun b!1015090 () Bool)

(assert (=> b!1015090 (= e!571073 (isStrictlySorted!579 (t!30574 l!412)))))

(assert (= (and d!120871 (not res!681063)) b!1015089))

(assert (= (and b!1015089 res!681064) b!1015090))

(assert (=> b!1015090 m!937413))

(assert (=> start!87840 d!120871))

(declare-fun b!1015104 () Bool)

(declare-fun e!571083 () Bool)

(declare-fun tp!70587 () Bool)

(assert (=> b!1015104 (= e!571083 (and tp_is_empty!23517 tp!70587))))

(assert (=> b!1014905 (= tp!70578 e!571083)))

(assert (= (and b!1014905 ((_ is Cons!21561) (t!30574 l!412))) b!1015104))

(declare-fun b_lambda!15415 () Bool)

(assert (= b_lambda!15411 (or b!1014904 b_lambda!15415)))

(declare-fun bs!29354 () Bool)

(declare-fun d!120877 () Bool)

(assert (= bs!29354 (and d!120877 b!1014904)))

(declare-datatypes ((Option!584 0))(
  ( (Some!583 (v!14432 B!1450)) (None!582) )
))
(declare-fun getValueByKey!533 (List!21565 (_ BitVec 64)) Option!584)

(assert (=> bs!29354 (= (dynLambda!1897 lambda!779 (h!22758 lt!448847)) (= (getValueByKey!533 l!412 (h!22758 lt!448847)) (Some!583 value!115)))))

(declare-fun m!937483 () Bool)

(assert (=> bs!29354 m!937483))

(assert (=> b!1015077 d!120877))

(check-sat (not bm!42912) (not b!1015060) (not bm!42911) (not b!1015078) (not bs!29354) (not b!1015090) (not d!120843) (not b!1015059) (not b!1015058) (not bm!42914) (not b!1014947) (not bm!42913) (not b_lambda!15415) tp_is_empty!23517 (not b!1015104) (not b!1014945) (not d!120857))
(check-sat)
