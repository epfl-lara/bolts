; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87358 () Bool)

(assert start!87358)

(declare-fun b!1012065 () Bool)

(assert (=> b!1012065 true))

(assert (=> b!1012065 true))

(declare-datatypes ((Unit!33000 0))(
  ( (Unit!33001) )
))
(declare-fun e!569369 () Unit!33000)

(declare-fun lt!447288 () Unit!33000)

(assert (=> b!1012065 (= e!569369 lt!447288)))

(declare-datatypes ((List!21460 0))(
  ( (Nil!21457) (Cons!21456 (h!22654 (_ BitVec 64)) (t!30469 List!21460)) )
))
(declare-fun lt!447286 () List!21460)

(declare-datatypes ((B!1328 0))(
  ( (B!1329 (val!11748 Int)) )
))
(declare-fun value!115 () B!1328)

(declare-datatypes ((tuple2!15132 0))(
  ( (tuple2!15133 (_1!7576 (_ BitVec 64)) (_2!7576 B!1328)) )
))
(declare-datatypes ((List!21461 0))(
  ( (Nil!21458) (Cons!21457 (h!22655 tuple2!15132) (t!30470 List!21461)) )
))
(declare-fun l!412 () List!21461)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!7 (List!21461 List!21460 B!1328 tuple2!15132) Unit!33000)

(assert (=> b!1012065 (= lt!447288 (lemmaForallGetValueByKeySameWithASmallerHead!7 (t!30470 l!412) lt!447286 value!115 (h!22655 l!412)))))

(declare-fun lambda!287 () Int)

(declare-fun forall!209 (List!21460 Int) Bool)

(assert (=> b!1012065 (forall!209 lt!447286 lambda!287)))

(declare-fun b!1012066 () Bool)

(declare-fun e!569367 () Bool)

(declare-fun isStrictlySorted!524 (List!21461) Bool)

(assert (=> b!1012066 (= e!569367 (not (isStrictlySorted!524 (t!30470 l!412))))))

(declare-fun lt!447287 () Unit!33000)

(assert (=> b!1012066 (= lt!447287 e!569369)))

(declare-fun c!102177 () Bool)

(declare-fun isEmpty!788 (List!21460) Bool)

(assert (=> b!1012066 (= c!102177 (not (isEmpty!788 lt!447286)))))

(declare-fun getKeysOf!13 (List!21461 B!1328) List!21460)

(assert (=> b!1012066 (= lt!447286 (getKeysOf!13 (t!30470 l!412) value!115))))

(declare-fun b!1012067 () Bool)

(declare-fun res!679951 () Bool)

(assert (=> b!1012067 (=> (not res!679951) (not e!569367))))

(assert (=> b!1012067 (= res!679951 (and (is-Cons!21457 l!412) (= (_2!7576 (h!22655 l!412)) value!115)))))

(declare-fun b!1012068 () Bool)

(declare-fun e!569368 () Bool)

(declare-fun tp_is_empty!23395 () Bool)

(declare-fun tp!70257 () Bool)

(assert (=> b!1012068 (= e!569368 (and tp_is_empty!23395 tp!70257))))

(declare-fun b!1012069 () Bool)

(declare-fun Unit!33002 () Unit!33000)

(assert (=> b!1012069 (= e!569369 Unit!33002)))

(declare-fun res!679950 () Bool)

(assert (=> start!87358 (=> (not res!679950) (not e!569367))))

(assert (=> start!87358 (= res!679950 (isStrictlySorted!524 l!412))))

(assert (=> start!87358 e!569367))

(assert (=> start!87358 e!569368))

(assert (=> start!87358 tp_is_empty!23395))

(assert (= (and start!87358 res!679950) b!1012067))

(assert (= (and b!1012067 res!679951) b!1012066))

(assert (= (and b!1012066 c!102177) b!1012065))

(assert (= (and b!1012066 (not c!102177)) b!1012069))

(assert (= (and start!87358 (is-Cons!21457 l!412)) b!1012068))

(declare-fun m!935943 () Bool)

(assert (=> b!1012065 m!935943))

(declare-fun m!935945 () Bool)

(assert (=> b!1012065 m!935945))

(declare-fun m!935947 () Bool)

(assert (=> b!1012066 m!935947))

(declare-fun m!935949 () Bool)

(assert (=> b!1012066 m!935949))

(declare-fun m!935951 () Bool)

(assert (=> b!1012066 m!935951))

(declare-fun m!935953 () Bool)

(assert (=> start!87358 m!935953))

(push 1)

(assert (not b!1012066))

(assert (not start!87358))

(assert (not b!1012065))

(assert (not b!1012068))

(assert tp_is_empty!23395)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!28760 () Bool)

(declare-fun b!1012131 () Bool)

(assert (= bs!28760 (and b!1012131 b!1012065)))

(declare-fun lambda!298 () Int)

(assert (=> bs!28760 (= (= (t!30470 l!412) l!412) (= lambda!298 lambda!287))))

(assert (=> b!1012131 true))

(assert (=> b!1012131 true))

(declare-fun bs!28761 () Bool)

(declare-fun d!120213 () Bool)

(assert (= bs!28761 (and d!120213 b!1012065)))

(declare-fun lambda!299 () Int)

(assert (=> bs!28761 (= (= (Cons!21457 (h!22655 l!412) (t!30470 l!412)) l!412) (= lambda!299 lambda!287))))

(declare-fun bs!28762 () Bool)

(assert (= bs!28762 (and d!120213 b!1012131)))

(assert (=> bs!28762 (= (= (Cons!21457 (h!22655 l!412) (t!30470 l!412)) (t!30470 l!412)) (= lambda!299 lambda!298))))

(assert (=> d!120213 true))

(assert (=> d!120213 true))

(assert (=> d!120213 true))

(assert (=> d!120213 (forall!209 lt!447286 lambda!299)))

(declare-fun lt!447309 () Unit!33000)

(declare-fun choose!1631 (List!21461 List!21460 B!1328 tuple2!15132) Unit!33000)

(assert (=> d!120213 (= lt!447309 (choose!1631 (t!30470 l!412) lt!447286 value!115 (h!22655 l!412)))))

(declare-fun e!569402 () Bool)

(assert (=> d!120213 e!569402))

(declare-fun res!679984 () Bool)

(assert (=> d!120213 (=> (not res!679984) (not e!569402))))

(assert (=> d!120213 (= res!679984 (isStrictlySorted!524 (t!30470 l!412)))))

(assert (=> d!120213 (= (lemmaForallGetValueByKeySameWithASmallerHead!7 (t!30470 l!412) lt!447286 value!115 (h!22655 l!412)) lt!447309)))

(declare-fun b!1012130 () Bool)

(declare-fun res!679983 () Bool)

(assert (=> b!1012130 (=> (not res!679983) (not e!569402))))

(declare-fun isEmpty!791 (List!21461) Bool)

(assert (=> b!1012130 (= res!679983 (not (isEmpty!791 (t!30470 l!412))))))

(declare-fun res!679982 () Bool)

(assert (=> b!1012131 (=> (not res!679982) (not e!569402))))

(assert (=> b!1012131 (= res!679982 (forall!209 lt!447286 lambda!298))))

(declare-fun b!1012132 () Bool)

(declare-fun head!923 (List!21461) tuple2!15132)

(assert (=> b!1012132 (= e!569402 (bvslt (_1!7576 (h!22655 l!412)) (_1!7576 (head!923 (t!30470 l!412)))))))

(assert (= (and d!120213 res!679984) b!1012130))

(assert (= (and b!1012130 res!679983) b!1012131))

(assert (= (and b!1012131 res!679982) b!1012132))

(declare-fun m!935983 () Bool)

(assert (=> d!120213 m!935983))

(declare-fun m!935985 () Bool)

(assert (=> d!120213 m!935985))

(assert (=> d!120213 m!935947))

(declare-fun m!935987 () Bool)

(assert (=> b!1012130 m!935987))

(declare-fun m!935989 () Bool)

(assert (=> b!1012131 m!935989))

(declare-fun m!935991 () Bool)

(assert (=> b!1012132 m!935991))

(assert (=> b!1012065 d!120213))

(declare-fun d!120225 () Bool)

(declare-fun res!679989 () Bool)

(declare-fun e!569407 () Bool)

(assert (=> d!120225 (=> res!679989 e!569407)))

(assert (=> d!120225 (= res!679989 (is-Nil!21457 lt!447286))))

(assert (=> d!120225 (= (forall!209 lt!447286 lambda!287) e!569407)))

(declare-fun b!1012139 () Bool)

(declare-fun e!569408 () Bool)

(assert (=> b!1012139 (= e!569407 e!569408)))

(declare-fun res!679990 () Bool)

(assert (=> b!1012139 (=> (not res!679990) (not e!569408))))

(declare-fun dynLambda!1883 (Int (_ BitVec 64)) Bool)

(assert (=> b!1012139 (= res!679990 (dynLambda!1883 lambda!287 (h!22654 lt!447286)))))

(declare-fun b!1012140 () Bool)

(assert (=> b!1012140 (= e!569408 (forall!209 (t!30469 lt!447286) lambda!287))))

(assert (= (and d!120225 (not res!679989)) b!1012139))

(assert (= (and b!1012139 res!679990) b!1012140))

(declare-fun b_lambda!15259 () Bool)

(assert (=> (not b_lambda!15259) (not b!1012139)))

(declare-fun m!935993 () Bool)

(assert (=> b!1012139 m!935993))

(declare-fun m!935995 () Bool)

(assert (=> b!1012140 m!935995))

(assert (=> b!1012065 d!120225))

(declare-fun d!120227 () Bool)

(declare-fun res!679995 () Bool)

(declare-fun e!569413 () Bool)

(assert (=> d!120227 (=> res!679995 e!569413)))

(assert (=> d!120227 (= res!679995 (or (is-Nil!21458 l!412) (is-Nil!21458 (t!30470 l!412))))))

(assert (=> d!120227 (= (isStrictlySorted!524 l!412) e!569413)))

(declare-fun b!1012145 () Bool)

(declare-fun e!569414 () Bool)

(assert (=> b!1012145 (= e!569413 e!569414)))

(declare-fun res!679996 () Bool)

(assert (=> b!1012145 (=> (not res!679996) (not e!569414))))

(assert (=> b!1012145 (= res!679996 (bvslt (_1!7576 (h!22655 l!412)) (_1!7576 (h!22655 (t!30470 l!412)))))))

(declare-fun b!1012146 () Bool)

(assert (=> b!1012146 (= e!569414 (isStrictlySorted!524 (t!30470 l!412)))))

(assert (= (and d!120227 (not res!679995)) b!1012145))

(assert (= (and b!1012145 res!679996) b!1012146))

(assert (=> b!1012146 m!935947))

(assert (=> start!87358 d!120227))

(declare-fun d!120229 () Bool)

(declare-fun res!679997 () Bool)

(declare-fun e!569415 () Bool)

(assert (=> d!120229 (=> res!679997 e!569415)))

(assert (=> d!120229 (= res!679997 (or (is-Nil!21458 (t!30470 l!412)) (is-Nil!21458 (t!30470 (t!30470 l!412)))))))

(assert (=> d!120229 (= (isStrictlySorted!524 (t!30470 l!412)) e!569415)))

(declare-fun b!1012147 () Bool)

(declare-fun e!569416 () Bool)

(assert (=> b!1012147 (= e!569415 e!569416)))

(declare-fun res!679998 () Bool)

(assert (=> b!1012147 (=> (not res!679998) (not e!569416))))

(assert (=> b!1012147 (= res!679998 (bvslt (_1!7576 (h!22655 (t!30470 l!412))) (_1!7576 (h!22655 (t!30470 (t!30470 l!412))))))))

(declare-fun b!1012148 () Bool)

(assert (=> b!1012148 (= e!569416 (isStrictlySorted!524 (t!30470 (t!30470 l!412))))))

(assert (= (and d!120229 (not res!679997)) b!1012147))

(assert (= (and b!1012147 res!679998) b!1012148))

(declare-fun m!935997 () Bool)

(assert (=> b!1012148 m!935997))

(assert (=> b!1012066 d!120229))

(declare-fun d!120231 () Bool)

(assert (=> d!120231 (= (isEmpty!788 lt!447286) (is-Nil!21457 lt!447286))))

(assert (=> b!1012066 d!120231))

(declare-fun bs!28779 () Bool)

(declare-fun b!1012232 () Bool)

(assert (= bs!28779 (and b!1012232 b!1012065)))

(declare-fun lt!447418 () List!21461)

(declare-fun lambda!333 () Int)

(declare-fun lt!447413 () tuple2!15132)

(assert (=> bs!28779 (= (= (Cons!21457 lt!447413 lt!447418) l!412) (= lambda!333 lambda!287))))

(declare-fun bs!28780 () Bool)

(assert (= bs!28780 (and b!1012232 b!1012131)))

(assert (=> bs!28780 (= (= (Cons!21457 lt!447413 lt!447418) (t!30470 l!412)) (= lambda!333 lambda!298))))

(declare-fun bs!28781 () Bool)

(assert (= bs!28781 (and b!1012232 d!120213)))

(assert (=> bs!28781 (= (= (Cons!21457 lt!447413 lt!447418) (Cons!21457 (h!22655 l!412) (t!30470 l!412))) (= lambda!333 lambda!299))))

(assert (=> b!1012232 true))

(assert (=> b!1012232 true))

(assert (=> b!1012232 true))

(declare-fun bs!28790 () Bool)

(declare-fun b!1012238 () Bool)

(assert (= bs!28790 (and b!1012238 b!1012065)))

(declare-fun lt!447419 () tuple2!15132)

(declare-fun lambda!336 () Int)

(declare-fun lt!447421 () List!21461)

(assert (=> bs!28790 (= (= (Cons!21457 lt!447419 lt!447421) l!412) (= lambda!336 lambda!287))))

(declare-fun bs!28792 () Bool)

(assert (= bs!28792 (and b!1012238 b!1012131)))

(assert (=> bs!28792 (= (= (Cons!21457 lt!447419 lt!447421) (t!30470 l!412)) (= lambda!336 lambda!298))))

(declare-fun bs!28793 () Bool)

(assert (= bs!28793 (and b!1012238 d!120213)))

(assert (=> bs!28793 (= (= (Cons!21457 lt!447419 lt!447421) (Cons!21457 (h!22655 l!412) (t!30470 l!412))) (= lambda!336 lambda!299))))

(declare-fun bs!28794 () Bool)

(assert (= bs!28794 (and b!1012238 b!1012232)))

(assert (=> bs!28794 (= (= (Cons!21457 lt!447419 lt!447421) (Cons!21457 lt!447413 lt!447418)) (= lambda!336 lambda!333))))

(assert (=> b!1012238 true))

(assert (=> b!1012238 true))

(assert (=> b!1012238 true))

(declare-fun bs!28799 () Bool)

(declare-fun d!120233 () Bool)

(assert (= bs!28799 (and d!120233 b!1012131)))

(declare-fun lambda!338 () Int)

(assert (=> bs!28799 (= lambda!338 lambda!298)))

(declare-fun bs!28801 () Bool)

(assert (= bs!28801 (and d!120233 b!1012232)))

(assert (=> bs!28801 (= (= (t!30470 l!412) (Cons!21457 lt!447413 lt!447418)) (= lambda!338 lambda!333))))

(declare-fun bs!28802 () Bool)

(assert (= bs!28802 (and d!120233 b!1012238)))

(assert (=> bs!28802 (= (= (t!30470 l!412) (Cons!21457 lt!447419 lt!447421)) (= lambda!338 lambda!336))))

(declare-fun bs!28803 () Bool)

(assert (= bs!28803 (and d!120233 b!1012065)))

(assert (=> bs!28803 (= (= (t!30470 l!412) l!412) (= lambda!338 lambda!287))))

(declare-fun bs!28804 () Bool)

(assert (= bs!28804 (and d!120233 d!120213)))

(assert (=> bs!28804 (= (= (t!30470 l!412) (Cons!21457 (h!22655 l!412) (t!30470 l!412))) (= lambda!338 lambda!299))))

(assert (=> d!120233 true))

(assert (=> d!120233 true))

(declare-fun call!42516 () Bool)

(assert (=> b!1012232 call!42516))

(declare-fun lt!447412 () Unit!33000)

(declare-fun call!42514 () Unit!33000)

(assert (=> b!1012232 (= lt!447412 call!42514)))

(assert (=> b!1012232 (= lt!447413 (h!22655 (t!30470 l!412)))))

(declare-fun lt!447415 () List!21460)

(declare-fun call!42517 () List!21460)

(assert (=> b!1012232 (= lt!447415 call!42517)))

(assert (=> b!1012232 (= lt!447418 (t!30470 (t!30470 l!412)))))

(declare-fun e!569456 () Unit!33000)

(assert (=> b!1012232 (= e!569456 lt!447412)))

(declare-fun b!1012233 () Bool)

(declare-fun e!569457 () List!21460)

(assert (=> b!1012233 (= e!569457 (Cons!21456 (_1!7576 (h!22655 (t!30470 l!412))) call!42517))))

(declare-fun c!102218 () Bool)

(declare-fun call!42515 () Bool)

(assert (=> b!1012233 (= c!102218 (not call!42515))))

(declare-fun lt!447414 () Unit!33000)

(assert (=> b!1012233 (= lt!447414 e!569456)))

(declare-fun lt!447422 () List!21460)

(declare-fun c!102219 () Bool)

(declare-fun bm!42511 () Bool)

(assert (=> bm!42511 (= call!42516 (forall!209 (ite c!102219 lt!447415 lt!447422) (ite c!102219 lambda!333 lambda!336)))))

(declare-fun b!1012234 () Bool)

(declare-fun e!569454 () List!21460)

(assert (=> b!1012234 (= e!569457 e!569454)))

(declare-fun c!102216 () Bool)

(assert (=> b!1012234 (= c!102216 (and (is-Cons!21457 (t!30470 l!412)) (not (= (_2!7576 (h!22655 (t!30470 l!412))) value!115))))))

(declare-fun bm!42512 () Bool)

(assert (=> bm!42512 (= call!42515 (isEmpty!788 call!42517))))

(declare-fun lt!447420 () List!21460)

(assert (=> d!120233 (forall!209 lt!447420 lambda!338)))

(assert (=> d!120233 (= lt!447420 e!569457)))

(assert (=> d!120233 (= c!102219 (and (is-Cons!21457 (t!30470 l!412)) (= (_2!7576 (h!22655 (t!30470 l!412))) value!115)))))

(assert (=> d!120233 (isStrictlySorted!524 (t!30470 l!412))))

(assert (=> d!120233 (= (getKeysOf!13 (t!30470 l!412) value!115) lt!447420)))

(declare-fun b!1012235 () Bool)

(declare-fun e!569455 () Unit!33000)

(declare-fun Unit!33013 () Unit!33000)

(assert (=> b!1012235 (= e!569455 Unit!33013)))

(declare-fun bm!42513 () Bool)

(assert (=> bm!42513 (= call!42514 (lemmaForallGetValueByKeySameWithASmallerHead!7 (ite c!102219 lt!447418 lt!447421) (ite c!102219 lt!447415 lt!447422) value!115 (ite c!102219 lt!447413 lt!447419)))))

(declare-fun b!1012236 () Bool)

(declare-fun lt!447417 () Unit!33000)

(assert (=> b!1012236 (= lt!447417 e!569455)))

(declare-fun c!102217 () Bool)

(assert (=> b!1012236 (= c!102217 (not call!42515))))

(declare-fun lt!447416 () List!21460)

(assert (=> b!1012236 (= lt!447416 call!42517)))

(assert (=> b!1012236 (= e!569454 call!42517)))

(declare-fun b!1012237 () Bool)

(declare-fun Unit!33014 () Unit!33000)

(assert (=> b!1012237 (= e!569456 Unit!33014)))

(declare-fun bm!42514 () Bool)

(assert (=> bm!42514 (= call!42517 (getKeysOf!13 (t!30470 (t!30470 l!412)) value!115))))

(declare-fun lt!447411 () Unit!33000)

(assert (=> b!1012238 (= e!569455 lt!447411)))

(assert (=> b!1012238 (= lt!447421 (t!30470 (t!30470 l!412)))))

(assert (=> b!1012238 (= lt!447422 call!42517)))

(assert (=> b!1012238 (= lt!447419 (h!22655 (t!30470 l!412)))))

(assert (=> b!1012238 (= lt!447411 call!42514)))

(assert (=> b!1012238 call!42516))

(declare-fun b!1012239 () Bool)

(assert (=> b!1012239 (= e!569454 Nil!21457)))

(assert (= (and d!120233 c!102219) b!1012233))

(assert (= (and d!120233 (not c!102219)) b!1012234))

(assert (= (and b!1012233 c!102218) b!1012232))

(assert (= (and b!1012233 (not c!102218)) b!1012237))

(assert (= (and b!1012234 c!102216) b!1012236))

(assert (= (and b!1012234 (not c!102216)) b!1012239))

(assert (= (and b!1012236 c!102217) b!1012238))

(assert (= (and b!1012236 (not c!102217)) b!1012235))

(assert (= (or b!1012232 b!1012238) bm!42513))

(assert (= (or b!1012232 b!1012238) bm!42511))

(assert (= (or b!1012233 b!1012232 b!1012236 b!1012238) bm!42514))

(assert (= (or b!1012233 b!1012236) bm!42512))

(declare-fun m!936039 () Bool)

(assert (=> bm!42512 m!936039))

(declare-fun m!936041 () Bool)

(assert (=> bm!42514 m!936041))

(declare-fun m!936043 () Bool)

(assert (=> bm!42511 m!936043))

(declare-fun m!936045 () Bool)

(assert (=> bm!42513 m!936045))

(declare-fun m!936047 () Bool)

(assert (=> d!120233 m!936047))

(assert (=> d!120233 m!935947))

(assert (=> b!1012066 d!120233))

(declare-fun b!1012263 () Bool)

(declare-fun e!569475 () Bool)

(declare-fun tp!70268 () Bool)

(assert (=> b!1012263 (= e!569475 (and tp_is_empty!23395 tp!70268))))

(assert (=> b!1012068 (= tp!70257 e!569475)))

(assert (= (and b!1012068 (is-Cons!21457 (t!30470 l!412))) b!1012263))

(declare-fun b_lambda!15263 () Bool)

(assert (= b_lambda!15259 (or b!1012065 b_lambda!15263)))

(declare-fun bs!28805 () Bool)

(declare-fun d!120245 () Bool)

(assert (= bs!28805 (and d!120245 b!1012065)))

(declare-datatypes ((Option!571 0))(
  ( (Some!570 (v!14419 B!1328)) (None!569) )
))
(declare-fun getValueByKey!520 (List!21461 (_ BitVec 64)) Option!571)

(assert (=> bs!28805 (= (dynLambda!1883 lambda!287 (h!22654 lt!447286)) (= (getValueByKey!520 l!412 (h!22654 lt!447286)) (Some!570 value!115)))))

(declare-fun m!936055 () Bool)

(assert (=> bs!28805 m!936055))

(assert (=> b!1012139 d!120245))

(push 1)

