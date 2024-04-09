; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87882 () Bool)

(assert start!87882)

(declare-fun b!1015145 () Bool)

(assert (=> b!1015145 true))

(assert (=> b!1015145 true))

(declare-fun bs!29361 () Bool)

(declare-fun b!1015144 () Bool)

(assert (= bs!29361 (and b!1015144 b!1015145)))

(declare-fun lambda!839 () Int)

(declare-fun lambda!838 () Int)

(assert (=> bs!29361 (= lambda!839 lambda!838)))

(assert (=> b!1015144 true))

(assert (=> b!1015144 true))

(declare-fun b!1015141 () Bool)

(declare-datatypes ((Unit!33180 0))(
  ( (Unit!33181) )
))
(declare-fun e!571104 () Unit!33180)

(declare-fun Unit!33182 () Unit!33180)

(assert (=> b!1015141 (= e!571104 Unit!33182)))

(declare-fun b!1015142 () Bool)

(declare-fun res!681081 () Bool)

(declare-fun e!571106 () Bool)

(assert (=> b!1015142 (=> (not res!681081) (not e!571106))))

(declare-datatypes ((B!1456 0))(
  ( (B!1457 (val!11812 Int)) )
))
(declare-datatypes ((tuple2!15260 0))(
  ( (tuple2!15261 (_1!7640 (_ BitVec 64)) (_2!7640 B!1456)) )
))
(declare-datatypes ((List!21570 0))(
  ( (Nil!21567) (Cons!21566 (h!22764 tuple2!15260) (t!30579 List!21570)) )
))
(declare-fun l!412 () List!21570)

(declare-fun value!115 () B!1456)

(get-info :version)

(assert (=> b!1015142 (= res!681081 (and (not (= (_2!7640 (h!22764 l!412)) value!115)) ((_ is Cons!21566) l!412)))))

(declare-fun b!1015143 () Bool)

(declare-fun e!571105 () Bool)

(declare-fun tp_is_empty!23523 () Bool)

(declare-fun tp!70596 () Bool)

(assert (=> b!1015143 (= e!571105 (and tp_is_empty!23523 tp!70596))))

(declare-fun res!681082 () Bool)

(assert (=> start!87882 (=> (not res!681082) (not e!571106))))

(declare-fun isStrictlySorted!582 (List!21570) Bool)

(assert (=> start!87882 (= res!681082 (isStrictlySorted!582 l!412))))

(assert (=> start!87882 e!571106))

(assert (=> start!87882 e!571105))

(assert (=> start!87882 tp_is_empty!23523))

(declare-datatypes ((List!21571 0))(
  ( (Nil!21568) (Cons!21567 (h!22765 (_ BitVec 64)) (t!30580 List!21571)) )
))
(declare-fun lt!449002 () List!21571)

(declare-fun forall!254 (List!21571 Int) Bool)

(assert (=> b!1015144 (= e!571106 (not (forall!254 lt!449002 lambda!839)))))

(declare-fun lt!449003 () Unit!33180)

(assert (=> b!1015144 (= lt!449003 e!571104)))

(declare-fun c!102804 () Bool)

(declare-fun isEmpty!856 (List!21571) Bool)

(assert (=> b!1015144 (= c!102804 (not (isEmpty!856 lt!449002)))))

(declare-fun getKeysOf!59 (List!21570 B!1456) List!21571)

(assert (=> b!1015144 (= lt!449002 (getKeysOf!59 (t!30579 l!412) value!115))))

(declare-fun lt!449004 () Unit!33180)

(assert (=> b!1015145 (= e!571104 lt!449004)))

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!49 (List!21570 List!21571 B!1456 tuple2!15260) Unit!33180)

(assert (=> b!1015145 (= lt!449004 (lemmaForallGetValueByKeySameWithASmallerHead!49 (t!30579 l!412) lt!449002 value!115 (h!22764 l!412)))))

(assert (=> b!1015145 (forall!254 lt!449002 lambda!838)))

(assert (= (and start!87882 res!681082) b!1015142))

(assert (= (and b!1015142 res!681081) b!1015144))

(assert (= (and b!1015144 c!102804) b!1015145))

(assert (= (and b!1015144 (not c!102804)) b!1015141))

(assert (= (and start!87882 ((_ is Cons!21566) l!412)) b!1015143))

(declare-fun m!937503 () Bool)

(assert (=> start!87882 m!937503))

(declare-fun m!937505 () Bool)

(assert (=> b!1015144 m!937505))

(declare-fun m!937507 () Bool)

(assert (=> b!1015144 m!937507))

(declare-fun m!937509 () Bool)

(assert (=> b!1015144 m!937509))

(declare-fun m!937511 () Bool)

(assert (=> b!1015145 m!937511))

(declare-fun m!937513 () Bool)

(assert (=> b!1015145 m!937513))

(check-sat (not b!1015143) (not b!1015145) tp_is_empty!23523 (not start!87882) (not b!1015144))
(check-sat)
(get-model)

(declare-fun d!120883 () Bool)

(declare-fun res!681093 () Bool)

(declare-fun e!571120 () Bool)

(assert (=> d!120883 (=> res!681093 e!571120)))

(assert (=> d!120883 (= res!681093 ((_ is Nil!21568) lt!449002))))

(assert (=> d!120883 (= (forall!254 lt!449002 lambda!839) e!571120)))

(declare-fun b!1015173 () Bool)

(declare-fun e!571121 () Bool)

(assert (=> b!1015173 (= e!571120 e!571121)))

(declare-fun res!681094 () Bool)

(assert (=> b!1015173 (=> (not res!681094) (not e!571121))))

(declare-fun dynLambda!1900 (Int (_ BitVec 64)) Bool)

(assert (=> b!1015173 (= res!681094 (dynLambda!1900 lambda!839 (h!22765 lt!449002)))))

(declare-fun b!1015174 () Bool)

(assert (=> b!1015174 (= e!571121 (forall!254 (t!30580 lt!449002) lambda!839))))

(assert (= (and d!120883 (not res!681093)) b!1015173))

(assert (= (and b!1015173 res!681094) b!1015174))

(declare-fun b_lambda!15421 () Bool)

(assert (=> (not b_lambda!15421) (not b!1015173)))

(declare-fun m!937527 () Bool)

(assert (=> b!1015173 m!937527))

(declare-fun m!937529 () Bool)

(assert (=> b!1015174 m!937529))

(assert (=> b!1015144 d!120883))

(declare-fun d!120889 () Bool)

(assert (=> d!120889 (= (isEmpty!856 lt!449002) ((_ is Nil!21568) lt!449002))))

(assert (=> b!1015144 d!120889))

(declare-fun bs!29368 () Bool)

(declare-fun b!1015248 () Bool)

(assert (= bs!29368 (and b!1015248 b!1015145)))

(declare-fun lt!449069 () tuple2!15260)

(declare-fun lt!449067 () List!21570)

(declare-fun lambda!862 () Int)

(assert (=> bs!29368 (= (= (Cons!21566 lt!449069 lt!449067) l!412) (= lambda!862 lambda!838))))

(declare-fun bs!29369 () Bool)

(assert (= bs!29369 (and b!1015248 b!1015144)))

(assert (=> bs!29369 (= (= (Cons!21566 lt!449069 lt!449067) l!412) (= lambda!862 lambda!839))))

(assert (=> b!1015248 true))

(assert (=> b!1015248 true))

(assert (=> b!1015248 true))

(declare-fun bs!29370 () Bool)

(declare-fun b!1015244 () Bool)

(assert (= bs!29370 (and b!1015244 b!1015145)))

(declare-fun lt!449073 () tuple2!15260)

(declare-fun lambda!865 () Int)

(declare-fun lt!449072 () List!21570)

(assert (=> bs!29370 (= (= (Cons!21566 lt!449073 lt!449072) l!412) (= lambda!865 lambda!838))))

(declare-fun bs!29371 () Bool)

(assert (= bs!29371 (and b!1015244 b!1015144)))

(assert (=> bs!29371 (= (= (Cons!21566 lt!449073 lt!449072) l!412) (= lambda!865 lambda!839))))

(declare-fun bs!29372 () Bool)

(assert (= bs!29372 (and b!1015244 b!1015248)))

(assert (=> bs!29372 (= (= (Cons!21566 lt!449073 lt!449072) (Cons!21566 lt!449069 lt!449067)) (= lambda!865 lambda!862))))

(assert (=> b!1015244 true))

(assert (=> b!1015244 true))

(assert (=> b!1015244 true))

(declare-fun bs!29373 () Bool)

(declare-fun d!120891 () Bool)

(assert (= bs!29373 (and d!120891 b!1015145)))

(declare-fun lambda!866 () Int)

(assert (=> bs!29373 (= (= (t!30579 l!412) l!412) (= lambda!866 lambda!838))))

(declare-fun bs!29374 () Bool)

(assert (= bs!29374 (and d!120891 b!1015144)))

(assert (=> bs!29374 (= (= (t!30579 l!412) l!412) (= lambda!866 lambda!839))))

(declare-fun bs!29375 () Bool)

(assert (= bs!29375 (and d!120891 b!1015248)))

(assert (=> bs!29375 (= (= (t!30579 l!412) (Cons!21566 lt!449069 lt!449067)) (= lambda!866 lambda!862))))

(declare-fun bs!29376 () Bool)

(assert (= bs!29376 (and d!120891 b!1015244)))

(assert (=> bs!29376 (= (= (t!30579 l!412) (Cons!21566 lt!449073 lt!449072)) (= lambda!866 lambda!865))))

(assert (=> d!120891 true))

(assert (=> d!120891 true))

(declare-fun call!42945 () Bool)

(declare-fun lt!449065 () List!21571)

(declare-fun bm!42939 () Bool)

(declare-fun lt!449071 () List!21571)

(declare-fun c!102825 () Bool)

(assert (=> bm!42939 (= call!42945 (forall!254 (ite c!102825 lt!449071 lt!449065) (ite c!102825 lambda!862 lambda!865)))))

(declare-fun bm!42940 () Bool)

(declare-fun call!42943 () Unit!33180)

(assert (=> bm!42940 (= call!42943 (lemmaForallGetValueByKeySameWithASmallerHead!49 (ite c!102825 lt!449067 lt!449072) (ite c!102825 lt!449071 lt!449065) value!115 (ite c!102825 lt!449069 lt!449073)))))

(declare-fun e!571168 () Unit!33180)

(declare-fun lt!449074 () Unit!33180)

(assert (=> b!1015244 (= e!571168 lt!449074)))

(assert (=> b!1015244 (= lt!449072 (t!30579 (t!30579 l!412)))))

(declare-fun call!42944 () List!21571)

(assert (=> b!1015244 (= lt!449065 call!42944)))

(assert (=> b!1015244 (= lt!449073 (h!22764 (t!30579 l!412)))))

(assert (=> b!1015244 (= lt!449074 call!42943)))

(assert (=> b!1015244 call!42945))

(declare-fun b!1015245 () Bool)

(declare-fun e!571170 () List!21571)

(assert (=> b!1015245 (= e!571170 (Cons!21567 (_1!7640 (h!22764 (t!30579 l!412))) call!42944))))

(declare-fun c!102826 () Bool)

(declare-fun call!42942 () Bool)

(assert (=> b!1015245 (= c!102826 (not call!42942))))

(declare-fun lt!449070 () Unit!33180)

(declare-fun e!571169 () Unit!33180)

(assert (=> b!1015245 (= lt!449070 e!571169)))

(declare-fun lt!449075 () List!21571)

(assert (=> d!120891 (forall!254 lt!449075 lambda!866)))

(assert (=> d!120891 (= lt!449075 e!571170)))

(assert (=> d!120891 (= c!102825 (and ((_ is Cons!21566) (t!30579 l!412)) (= (_2!7640 (h!22764 (t!30579 l!412))) value!115)))))

(assert (=> d!120891 (isStrictlySorted!582 (t!30579 l!412))))

(assert (=> d!120891 (= (getKeysOf!59 (t!30579 l!412) value!115) lt!449075)))

(declare-fun b!1015246 () Bool)

(declare-fun lt!449066 () Unit!33180)

(assert (=> b!1015246 (= lt!449066 e!571168)))

(declare-fun c!102824 () Bool)

(assert (=> b!1015246 (= c!102824 (not call!42942))))

(declare-fun lt!449068 () List!21571)

(assert (=> b!1015246 (= lt!449068 call!42944)))

(declare-fun e!571167 () List!21571)

(assert (=> b!1015246 (= e!571167 call!42944)))

(declare-fun bm!42941 () Bool)

(assert (=> bm!42941 (= call!42942 (isEmpty!856 call!42944))))

(declare-fun b!1015247 () Bool)

(assert (=> b!1015247 (= e!571170 e!571167)))

(declare-fun c!102827 () Bool)

(assert (=> b!1015247 (= c!102827 (and ((_ is Cons!21566) (t!30579 l!412)) (not (= (_2!7640 (h!22764 (t!30579 l!412))) value!115))))))

(declare-fun bm!42942 () Bool)

(assert (=> bm!42942 (= call!42944 (getKeysOf!59 (t!30579 (t!30579 l!412)) value!115))))

(assert (=> b!1015248 call!42945))

(declare-fun lt!449076 () Unit!33180)

(assert (=> b!1015248 (= lt!449076 call!42943)))

(assert (=> b!1015248 (= lt!449069 (h!22764 (t!30579 l!412)))))

(assert (=> b!1015248 (= lt!449071 call!42944)))

(assert (=> b!1015248 (= lt!449067 (t!30579 (t!30579 l!412)))))

(assert (=> b!1015248 (= e!571169 lt!449076)))

(declare-fun b!1015249 () Bool)

(declare-fun Unit!33186 () Unit!33180)

(assert (=> b!1015249 (= e!571169 Unit!33186)))

(declare-fun b!1015250 () Bool)

(declare-fun Unit!33187 () Unit!33180)

(assert (=> b!1015250 (= e!571168 Unit!33187)))

(declare-fun b!1015251 () Bool)

(assert (=> b!1015251 (= e!571167 Nil!21568)))

(assert (= (and d!120891 c!102825) b!1015245))

(assert (= (and d!120891 (not c!102825)) b!1015247))

(assert (= (and b!1015245 c!102826) b!1015248))

(assert (= (and b!1015245 (not c!102826)) b!1015249))

(assert (= (and b!1015247 c!102827) b!1015246))

(assert (= (and b!1015247 (not c!102827)) b!1015251))

(assert (= (and b!1015246 c!102824) b!1015244))

(assert (= (and b!1015246 (not c!102824)) b!1015250))

(assert (= (or b!1015248 b!1015244) bm!42940))

(assert (= (or b!1015248 b!1015244) bm!42939))

(assert (= (or b!1015245 b!1015248 b!1015244 b!1015246) bm!42942))

(assert (= (or b!1015245 b!1015246) bm!42941))

(declare-fun m!937557 () Bool)

(assert (=> bm!42940 m!937557))

(declare-fun m!937559 () Bool)

(assert (=> bm!42941 m!937559))

(declare-fun m!937561 () Bool)

(assert (=> bm!42942 m!937561))

(declare-fun m!937563 () Bool)

(assert (=> bm!42939 m!937563))

(declare-fun m!937565 () Bool)

(assert (=> d!120891 m!937565))

(declare-fun m!937567 () Bool)

(assert (=> d!120891 m!937567))

(assert (=> b!1015144 d!120891))

(declare-fun d!120909 () Bool)

(declare-fun res!681134 () Bool)

(declare-fun e!571187 () Bool)

(assert (=> d!120909 (=> res!681134 e!571187)))

(assert (=> d!120909 (= res!681134 (or ((_ is Nil!21567) l!412) ((_ is Nil!21567) (t!30579 l!412))))))

(assert (=> d!120909 (= (isStrictlySorted!582 l!412) e!571187)))

(declare-fun b!1015284 () Bool)

(declare-fun e!571188 () Bool)

(assert (=> b!1015284 (= e!571187 e!571188)))

(declare-fun res!681135 () Bool)

(assert (=> b!1015284 (=> (not res!681135) (not e!571188))))

(assert (=> b!1015284 (= res!681135 (bvslt (_1!7640 (h!22764 l!412)) (_1!7640 (h!22764 (t!30579 l!412)))))))

(declare-fun b!1015285 () Bool)

(assert (=> b!1015285 (= e!571188 (isStrictlySorted!582 (t!30579 l!412)))))

(assert (= (and d!120909 (not res!681134)) b!1015284))

(assert (= (and b!1015284 res!681135) b!1015285))

(assert (=> b!1015285 m!937567))

(assert (=> start!87882 d!120909))

(declare-fun bs!29386 () Bool)

(declare-fun b!1015299 () Bool)

(assert (= bs!29386 (and b!1015299 b!1015144)))

(declare-fun lambda!884 () Int)

(assert (=> bs!29386 (= (= (t!30579 l!412) l!412) (= lambda!884 lambda!839))))

(declare-fun bs!29387 () Bool)

(assert (= bs!29387 (and b!1015299 b!1015145)))

(assert (=> bs!29387 (= (= (t!30579 l!412) l!412) (= lambda!884 lambda!838))))

(declare-fun bs!29389 () Bool)

(assert (= bs!29389 (and b!1015299 d!120891)))

(assert (=> bs!29389 (= lambda!884 lambda!866)))

(declare-fun bs!29390 () Bool)

(assert (= bs!29390 (and b!1015299 b!1015248)))

(assert (=> bs!29390 (= (= (t!30579 l!412) (Cons!21566 lt!449069 lt!449067)) (= lambda!884 lambda!862))))

(declare-fun bs!29392 () Bool)

(assert (= bs!29392 (and b!1015299 b!1015244)))

(assert (=> bs!29392 (= (= (t!30579 l!412) (Cons!21566 lt!449073 lt!449072)) (= lambda!884 lambda!865))))

(assert (=> b!1015299 true))

(assert (=> b!1015299 true))

(declare-fun bs!29395 () Bool)

(declare-fun d!120911 () Bool)

(assert (= bs!29395 (and d!120911 b!1015144)))

(declare-fun lambda!886 () Int)

(assert (=> bs!29395 (= (= (Cons!21566 (h!22764 l!412) (t!30579 l!412)) l!412) (= lambda!886 lambda!839))))

(declare-fun bs!29396 () Bool)

(assert (= bs!29396 (and d!120911 b!1015145)))

(assert (=> bs!29396 (= (= (Cons!21566 (h!22764 l!412) (t!30579 l!412)) l!412) (= lambda!886 lambda!838))))

(declare-fun bs!29398 () Bool)

(assert (= bs!29398 (and d!120911 b!1015299)))

(assert (=> bs!29398 (= (= (Cons!21566 (h!22764 l!412) (t!30579 l!412)) (t!30579 l!412)) (= lambda!886 lambda!884))))

(declare-fun bs!29400 () Bool)

(assert (= bs!29400 (and d!120911 d!120891)))

(assert (=> bs!29400 (= (= (Cons!21566 (h!22764 l!412) (t!30579 l!412)) (t!30579 l!412)) (= lambda!886 lambda!866))))

(declare-fun bs!29401 () Bool)

(assert (= bs!29401 (and d!120911 b!1015248)))

(assert (=> bs!29401 (= (= (Cons!21566 (h!22764 l!412) (t!30579 l!412)) (Cons!21566 lt!449069 lt!449067)) (= lambda!886 lambda!862))))

(declare-fun bs!29404 () Bool)

(assert (= bs!29404 (and d!120911 b!1015244)))

(assert (=> bs!29404 (= (= (Cons!21566 (h!22764 l!412) (t!30579 l!412)) (Cons!21566 lt!449073 lt!449072)) (= lambda!886 lambda!865))))

(assert (=> d!120911 true))

(assert (=> d!120911 true))

(assert (=> d!120911 true))

(assert (=> d!120911 (forall!254 lt!449002 lambda!886)))

(declare-fun lt!449117 () Unit!33180)

(declare-fun choose!1646 (List!21570 List!21571 B!1456 tuple2!15260) Unit!33180)

(assert (=> d!120911 (= lt!449117 (choose!1646 (t!30579 l!412) lt!449002 value!115 (h!22764 l!412)))))

(declare-fun e!571193 () Bool)

(assert (=> d!120911 e!571193))

(declare-fun res!681150 () Bool)

(assert (=> d!120911 (=> (not res!681150) (not e!571193))))

(assert (=> d!120911 (= res!681150 (isStrictlySorted!582 (t!30579 l!412)))))

(assert (=> d!120911 (= (lemmaForallGetValueByKeySameWithASmallerHead!49 (t!30579 l!412) lt!449002 value!115 (h!22764 l!412)) lt!449117)))

(declare-fun b!1015298 () Bool)

(declare-fun res!681148 () Bool)

(assert (=> b!1015298 (=> (not res!681148) (not e!571193))))

(declare-fun isEmpty!859 (List!21570) Bool)

(assert (=> b!1015298 (= res!681148 (not (isEmpty!859 (t!30579 l!412))))))

(declare-fun res!681149 () Bool)

(assert (=> b!1015299 (=> (not res!681149) (not e!571193))))

(assert (=> b!1015299 (= res!681149 (forall!254 lt!449002 lambda!884))))

(declare-fun b!1015300 () Bool)

(declare-fun head!946 (List!21570) tuple2!15260)

(assert (=> b!1015300 (= e!571193 (bvslt (_1!7640 (h!22764 l!412)) (_1!7640 (head!946 (t!30579 l!412)))))))

(assert (= (and d!120911 res!681150) b!1015298))

(assert (= (and b!1015298 res!681148) b!1015299))

(assert (= (and b!1015299 res!681149) b!1015300))

(declare-fun m!937579 () Bool)

(assert (=> d!120911 m!937579))

(declare-fun m!937581 () Bool)

(assert (=> d!120911 m!937581))

(assert (=> d!120911 m!937567))

(declare-fun m!937583 () Bool)

(assert (=> b!1015298 m!937583))

(declare-fun m!937585 () Bool)

(assert (=> b!1015299 m!937585))

(declare-fun m!937587 () Bool)

(assert (=> b!1015300 m!937587))

(assert (=> b!1015145 d!120911))

(declare-fun d!120915 () Bool)

(declare-fun res!681154 () Bool)

(declare-fun e!571199 () Bool)

(assert (=> d!120915 (=> res!681154 e!571199)))

(assert (=> d!120915 (= res!681154 ((_ is Nil!21568) lt!449002))))

(assert (=> d!120915 (= (forall!254 lt!449002 lambda!838) e!571199)))

(declare-fun b!1015312 () Bool)

(declare-fun e!571200 () Bool)

(assert (=> b!1015312 (= e!571199 e!571200)))

(declare-fun res!681155 () Bool)

(assert (=> b!1015312 (=> (not res!681155) (not e!571200))))

(assert (=> b!1015312 (= res!681155 (dynLambda!1900 lambda!838 (h!22765 lt!449002)))))

(declare-fun b!1015313 () Bool)

(assert (=> b!1015313 (= e!571200 (forall!254 (t!30580 lt!449002) lambda!838))))

(assert (= (and d!120915 (not res!681154)) b!1015312))

(assert (= (and b!1015312 res!681155) b!1015313))

(declare-fun b_lambda!15429 () Bool)

(assert (=> (not b_lambda!15429) (not b!1015312)))

(declare-fun m!937589 () Bool)

(assert (=> b!1015312 m!937589))

(declare-fun m!937591 () Bool)

(assert (=> b!1015313 m!937591))

(assert (=> b!1015145 d!120915))

(declare-fun b!1015318 () Bool)

(declare-fun e!571203 () Bool)

(declare-fun tp!70602 () Bool)

(assert (=> b!1015318 (= e!571203 (and tp_is_empty!23523 tp!70602))))

(assert (=> b!1015143 (= tp!70596 e!571203)))

(assert (= (and b!1015143 ((_ is Cons!21566) (t!30579 l!412))) b!1015318))

(declare-fun b_lambda!15431 () Bool)

(assert (= b_lambda!15429 (or b!1015145 b_lambda!15431)))

(declare-fun bs!29423 () Bool)

(declare-fun d!120917 () Bool)

(assert (= bs!29423 (and d!120917 b!1015145)))

(declare-datatypes ((Option!586 0))(
  ( (Some!585 (v!14434 B!1456)) (None!584) )
))
(declare-fun getValueByKey!535 (List!21570 (_ BitVec 64)) Option!586)

(assert (=> bs!29423 (= (dynLambda!1900 lambda!838 (h!22765 lt!449002)) (= (getValueByKey!535 l!412 (h!22765 lt!449002)) (Some!585 value!115)))))

(declare-fun m!937594 () Bool)

(assert (=> bs!29423 m!937594))

(assert (=> b!1015312 d!120917))

(declare-fun b_lambda!15433 () Bool)

(assert (= b_lambda!15421 (or b!1015144 b_lambda!15433)))

(declare-fun bs!29424 () Bool)

(declare-fun d!120919 () Bool)

(assert (= bs!29424 (and d!120919 b!1015144)))

(assert (=> bs!29424 (= (dynLambda!1900 lambda!839 (h!22765 lt!449002)) (= (getValueByKey!535 l!412 (h!22765 lt!449002)) (Some!585 value!115)))))

(assert (=> bs!29424 m!937594))

(assert (=> b!1015173 d!120919))

(check-sat (not b_lambda!15433) (not d!120911) (not bs!29423) tp_is_empty!23523 (not d!120891) (not b!1015299) (not b_lambda!15431) (not b!1015174) (not b!1015285) (not b!1015298) (not b!1015300) (not bm!42942) (not bm!42940) (not b!1015313) (not b!1015318) (not bm!42941) (not bm!42939) (not bs!29424))
(check-sat)
