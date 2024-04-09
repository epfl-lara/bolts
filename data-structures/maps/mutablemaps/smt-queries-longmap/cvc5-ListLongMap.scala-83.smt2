; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1176 () Bool)

(assert start!1176)

(declare-fun res!8833 () Bool)

(declare-fun e!5843 () Bool)

(assert (=> start!1176 (=> (not res!8833) (not e!5843))))

(declare-datatypes ((B!302 0))(
  ( (B!303 (val!246 Int)) )
))
(declare-datatypes ((tuple2!274 0))(
  ( (tuple2!275 (_1!137 (_ BitVec 64)) (_2!137 B!302)) )
))
(declare-datatypes ((List!293 0))(
  ( (Nil!290) (Cons!289 (h!855 tuple2!274) (t!2440 List!293)) )
))
(declare-datatypes ((ListLongMap!279 0))(
  ( (ListLongMap!280 (toList!155 List!293)) )
))
(declare-fun lm!213 () ListLongMap!279)

(declare-fun isStrictlySorted!22 (List!293) Bool)

(assert (=> start!1176 (= res!8833 (isStrictlySorted!22 (toList!155 lm!213)))))

(assert (=> start!1176 e!5843))

(declare-fun e!5842 () Bool)

(declare-fun inv!458 (ListLongMap!279) Bool)

(assert (=> start!1176 (and (inv!458 lm!213) e!5842)))

(assert (=> start!1176 true))

(declare-fun b!10150 () Bool)

(declare-fun a1!68 () (_ BitVec 64))

(declare-fun a2!56 () (_ BitVec 64))

(declare-fun -!6 (ListLongMap!279 (_ BitVec 64)) ListLongMap!279)

(assert (=> b!10150 (= e!5843 (not (= (-!6 (-!6 lm!213 a1!68) a2!56) (-!6 (-!6 lm!213 a2!56) a1!68))))))

(declare-fun removeStrictlySorted!1 (List!293 (_ BitVec 64)) List!293)

(assert (=> b!10150 (= (removeStrictlySorted!1 (removeStrictlySorted!1 (toList!155 lm!213) a1!68) a2!56) (removeStrictlySorted!1 (removeStrictlySorted!1 (toList!155 lm!213) a2!56) a1!68))))

(declare-datatypes ((Unit!209 0))(
  ( (Unit!210) )
))
(declare-fun lt!2478 () Unit!209)

(declare-fun lemmaRemoveStrictlySortedCommutative!1 (List!293 (_ BitVec 64) (_ BitVec 64)) Unit!209)

(assert (=> b!10150 (= lt!2478 (lemmaRemoveStrictlySortedCommutative!1 (toList!155 lm!213) a1!68 a2!56))))

(declare-fun b!10151 () Bool)

(declare-fun tp!1445 () Bool)

(assert (=> b!10151 (= e!5842 tp!1445)))

(assert (= (and start!1176 res!8833) b!10150))

(assert (= start!1176 b!10151))

(declare-fun m!6473 () Bool)

(assert (=> start!1176 m!6473))

(declare-fun m!6475 () Bool)

(assert (=> start!1176 m!6475))

(declare-fun m!6477 () Bool)

(assert (=> b!10150 m!6477))

(declare-fun m!6479 () Bool)

(assert (=> b!10150 m!6479))

(declare-fun m!6481 () Bool)

(assert (=> b!10150 m!6481))

(declare-fun m!6483 () Bool)

(assert (=> b!10150 m!6483))

(declare-fun m!6485 () Bool)

(assert (=> b!10150 m!6485))

(declare-fun m!6487 () Bool)

(assert (=> b!10150 m!6487))

(declare-fun m!6489 () Bool)

(assert (=> b!10150 m!6489))

(assert (=> b!10150 m!6489))

(declare-fun m!6491 () Bool)

(assert (=> b!10150 m!6491))

(assert (=> b!10150 m!6477))

(declare-fun m!6493 () Bool)

(assert (=> b!10150 m!6493))

(assert (=> b!10150 m!6479))

(assert (=> b!10150 m!6483))

(push 1)

(assert (not b!10150))

(assert (not start!1176))

(assert (not b!10151))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1015 () Bool)

(declare-fun lt!2490 () ListLongMap!279)

(declare-fun contains!129 (ListLongMap!279 (_ BitVec 64)) Bool)

(assert (=> d!1015 (not (contains!129 lt!2490 a1!68))))

(assert (=> d!1015 (= lt!2490 (ListLongMap!280 (removeStrictlySorted!1 (toList!155 (-!6 lm!213 a2!56)) a1!68)))))

(assert (=> d!1015 (= (-!6 (-!6 lm!213 a2!56) a1!68) lt!2490)))

(declare-fun bs!352 () Bool)

(assert (= bs!352 d!1015))

(declare-fun m!6543 () Bool)

(assert (=> bs!352 m!6543))

(declare-fun m!6545 () Bool)

(assert (=> bs!352 m!6545))

(assert (=> b!10150 d!1015))

(declare-fun d!1021 () Bool)

(declare-fun lt!2492 () ListLongMap!279)

(assert (=> d!1021 (not (contains!129 lt!2492 a1!68))))

(assert (=> d!1021 (= lt!2492 (ListLongMap!280 (removeStrictlySorted!1 (toList!155 lm!213) a1!68)))))

(assert (=> d!1021 (= (-!6 lm!213 a1!68) lt!2492)))

(declare-fun bs!354 () Bool)

(assert (= bs!354 d!1021))

(declare-fun m!6549 () Bool)

(assert (=> bs!354 m!6549))

(assert (=> bs!354 m!6477))

(assert (=> b!10150 d!1021))

(declare-fun e!5877 () List!293)

(declare-fun b!10195 () Bool)

(declare-fun $colon$colon!6 (List!293 tuple2!274) List!293)

(assert (=> b!10195 (= e!5877 ($colon$colon!6 (removeStrictlySorted!1 (t!2440 (removeStrictlySorted!1 (toList!155 lm!213) a1!68)) a2!56) (h!855 (removeStrictlySorted!1 (toList!155 lm!213) a1!68))))))

(declare-fun b!10196 () Bool)

(assert (=> b!10196 (= e!5877 Nil!290)))

(declare-fun b!10197 () Bool)

(declare-fun e!5878 () List!293)

(assert (=> b!10197 (= e!5878 (t!2440 (removeStrictlySorted!1 (toList!155 lm!213) a1!68)))))

(declare-fun d!1025 () Bool)

(declare-fun e!5879 () Bool)

(assert (=> d!1025 e!5879))

(declare-fun res!8851 () Bool)

(assert (=> d!1025 (=> (not res!8851) (not e!5879))))

(declare-fun lt!2502 () List!293)

(assert (=> d!1025 (= res!8851 (isStrictlySorted!22 lt!2502))))

(assert (=> d!1025 (= lt!2502 e!5878)))

(declare-fun c!889 () Bool)

(assert (=> d!1025 (= c!889 (and (is-Cons!289 (removeStrictlySorted!1 (toList!155 lm!213) a1!68)) (= (_1!137 (h!855 (removeStrictlySorted!1 (toList!155 lm!213) a1!68))) a2!56)))))

(assert (=> d!1025 (isStrictlySorted!22 (removeStrictlySorted!1 (toList!155 lm!213) a1!68))))

(assert (=> d!1025 (= (removeStrictlySorted!1 (removeStrictlySorted!1 (toList!155 lm!213) a1!68) a2!56) lt!2502)))

(declare-fun b!10198 () Bool)

(assert (=> b!10198 (= e!5878 e!5877)))

(declare-fun c!890 () Bool)

(assert (=> b!10198 (= c!890 (and (is-Cons!289 (removeStrictlySorted!1 (toList!155 lm!213) a1!68)) (not (= (_1!137 (h!855 (removeStrictlySorted!1 (toList!155 lm!213) a1!68))) a2!56))))))

(declare-fun b!10199 () Bool)

(declare-fun containsKey!11 (List!293 (_ BitVec 64)) Bool)

(assert (=> b!10199 (= e!5879 (not (containsKey!11 lt!2502 a2!56)))))

(assert (= (and d!1025 c!889) b!10197))

(assert (= (and d!1025 (not c!889)) b!10198))

(assert (= (and b!10198 c!890) b!10195))

(assert (= (and b!10198 (not c!890)) b!10196))

(assert (= (and d!1025 res!8851) b!10199))

(declare-fun m!6567 () Bool)

(assert (=> b!10195 m!6567))

(assert (=> b!10195 m!6567))

(declare-fun m!6571 () Bool)

(assert (=> b!10195 m!6571))

(declare-fun m!6573 () Bool)

(assert (=> d!1025 m!6573))

(assert (=> d!1025 m!6477))

(declare-fun m!6575 () Bool)

(assert (=> d!1025 m!6575))

(declare-fun m!6577 () Bool)

(assert (=> b!10199 m!6577))

(assert (=> b!10150 d!1025))

(declare-fun d!1037 () Bool)

(assert (=> d!1037 (= (removeStrictlySorted!1 (removeStrictlySorted!1 (toList!155 lm!213) a1!68) a2!56) (removeStrictlySorted!1 (removeStrictlySorted!1 (toList!155 lm!213) a2!56) a1!68))))

(declare-fun lt!2510 () Unit!209)

(declare-fun choose!145 (List!293 (_ BitVec 64) (_ BitVec 64)) Unit!209)

(assert (=> d!1037 (= lt!2510 (choose!145 (toList!155 lm!213) a1!68 a2!56))))

(assert (=> d!1037 (isStrictlySorted!22 (toList!155 lm!213))))

(assert (=> d!1037 (= (lemmaRemoveStrictlySortedCommutative!1 (toList!155 lm!213) a1!68 a2!56) lt!2510)))

(declare-fun bs!359 () Bool)

(assert (= bs!359 d!1037))

(assert (=> bs!359 m!6477))

(assert (=> bs!359 m!6493))

(assert (=> bs!359 m!6483))

(assert (=> bs!359 m!6483))

(assert (=> bs!359 m!6485))

(declare-fun m!6581 () Bool)

(assert (=> bs!359 m!6581))

(assert (=> bs!359 m!6473))

(assert (=> bs!359 m!6477))

(assert (=> b!10150 d!1037))

(declare-fun b!10215 () Bool)

(declare-fun e!5889 () List!293)

(assert (=> b!10215 (= e!5889 ($colon$colon!6 (removeStrictlySorted!1 (t!2440 (toList!155 lm!213)) a1!68) (h!855 (toList!155 lm!213))))))

(declare-fun b!10216 () Bool)

(assert (=> b!10216 (= e!5889 Nil!290)))

(declare-fun b!10217 () Bool)

(declare-fun e!5890 () List!293)

(assert (=> b!10217 (= e!5890 (t!2440 (toList!155 lm!213)))))

(declare-fun d!1041 () Bool)

(declare-fun e!5891 () Bool)

(assert (=> d!1041 e!5891))

(declare-fun res!8855 () Bool)

(assert (=> d!1041 (=> (not res!8855) (not e!5891))))

(declare-fun lt!2512 () List!293)

(assert (=> d!1041 (= res!8855 (isStrictlySorted!22 lt!2512))))

(assert (=> d!1041 (= lt!2512 e!5890)))

(declare-fun c!897 () Bool)

(assert (=> d!1041 (= c!897 (and (is-Cons!289 (toList!155 lm!213)) (= (_1!137 (h!855 (toList!155 lm!213))) a1!68)))))

(assert (=> d!1041 (isStrictlySorted!22 (toList!155 lm!213))))

(assert (=> d!1041 (= (removeStrictlySorted!1 (toList!155 lm!213) a1!68) lt!2512)))

(declare-fun b!10218 () Bool)

(assert (=> b!10218 (= e!5890 e!5889)))

(declare-fun c!898 () Bool)

(assert (=> b!10218 (= c!898 (and (is-Cons!289 (toList!155 lm!213)) (not (= (_1!137 (h!855 (toList!155 lm!213))) a1!68))))))

(declare-fun b!10219 () Bool)

(assert (=> b!10219 (= e!5891 (not (containsKey!11 lt!2512 a1!68)))))

(assert (= (and d!1041 c!897) b!10217))

(assert (= (and d!1041 (not c!897)) b!10218))

(assert (= (and b!10218 c!898) b!10215))

(assert (= (and b!10218 (not c!898)) b!10216))

(assert (= (and d!1041 res!8855) b!10219))

(declare-fun m!6591 () Bool)

(assert (=> b!10215 m!6591))

(assert (=> b!10215 m!6591))

(declare-fun m!6593 () Bool)

(assert (=> b!10215 m!6593))

(declare-fun m!6595 () Bool)

(assert (=> d!1041 m!6595))

(assert (=> d!1041 m!6473))

(declare-fun m!6597 () Bool)

(assert (=> b!10219 m!6597))

(assert (=> b!10150 d!1041))

(declare-fun e!5895 () List!293)

(declare-fun b!10225 () Bool)

(assert (=> b!10225 (= e!5895 ($colon$colon!6 (removeStrictlySorted!1 (t!2440 (removeStrictlySorted!1 (toList!155 lm!213) a2!56)) a1!68) (h!855 (removeStrictlySorted!1 (toList!155 lm!213) a2!56))))))

(declare-fun b!10226 () Bool)

(assert (=> b!10226 (= e!5895 Nil!290)))

(declare-fun b!10227 () Bool)

(declare-fun e!5896 () List!293)

(assert (=> b!10227 (= e!5896 (t!2440 (removeStrictlySorted!1 (toList!155 lm!213) a2!56)))))

(declare-fun d!1045 () Bool)

(declare-fun e!5897 () Bool)

(assert (=> d!1045 e!5897))

(declare-fun res!8857 () Bool)

(assert (=> d!1045 (=> (not res!8857) (not e!5897))))

(declare-fun lt!2514 () List!293)

(assert (=> d!1045 (= res!8857 (isStrictlySorted!22 lt!2514))))

(assert (=> d!1045 (= lt!2514 e!5896)))

(declare-fun c!901 () Bool)

(assert (=> d!1045 (= c!901 (and (is-Cons!289 (removeStrictlySorted!1 (toList!155 lm!213) a2!56)) (= (_1!137 (h!855 (removeStrictlySorted!1 (toList!155 lm!213) a2!56))) a1!68)))))

(assert (=> d!1045 (isStrictlySorted!22 (removeStrictlySorted!1 (toList!155 lm!213) a2!56))))

(assert (=> d!1045 (= (removeStrictlySorted!1 (removeStrictlySorted!1 (toList!155 lm!213) a2!56) a1!68) lt!2514)))

(declare-fun b!10228 () Bool)

(assert (=> b!10228 (= e!5896 e!5895)))

(declare-fun c!902 () Bool)

(assert (=> b!10228 (= c!902 (and (is-Cons!289 (removeStrictlySorted!1 (toList!155 lm!213) a2!56)) (not (= (_1!137 (h!855 (removeStrictlySorted!1 (toList!155 lm!213) a2!56))) a1!68))))))

(declare-fun b!10229 () Bool)

(assert (=> b!10229 (= e!5897 (not (containsKey!11 lt!2514 a1!68)))))

(assert (= (and d!1045 c!901) b!10227))

(assert (= (and d!1045 (not c!901)) b!10228))

(assert (= (and b!10228 c!902) b!10225))

(assert (= (and b!10228 (not c!902)) b!10226))

(assert (= (and d!1045 res!8857) b!10229))

(declare-fun m!6609 () Bool)

(assert (=> b!10225 m!6609))

(assert (=> b!10225 m!6609))

(declare-fun m!6611 () Bool)

(assert (=> b!10225 m!6611))

(declare-fun m!6613 () Bool)

(assert (=> d!1045 m!6613))

(assert (=> d!1045 m!6483))

(declare-fun m!6615 () Bool)

(assert (=> d!1045 m!6615))

(declare-fun m!6617 () Bool)

(assert (=> b!10229 m!6617))

(assert (=> b!10150 d!1045))

(declare-fun d!1049 () Bool)

(declare-fun lt!2517 () ListLongMap!279)

(assert (=> d!1049 (not (contains!129 lt!2517 a2!56))))

(assert (=> d!1049 (= lt!2517 (ListLongMap!280 (removeStrictlySorted!1 (toList!155 (-!6 lm!213 a1!68)) a2!56)))))

(assert (=> d!1049 (= (-!6 (-!6 lm!213 a1!68) a2!56) lt!2517)))

(declare-fun bs!361 () Bool)

(assert (= bs!361 d!1049))

(declare-fun m!6631 () Bool)

(assert (=> bs!361 m!6631))

(declare-fun m!6635 () Bool)

(assert (=> bs!361 m!6635))

(assert (=> b!10150 d!1049))

(declare-fun b!10240 () Bool)

(declare-fun e!5904 () List!293)

(assert (=> b!10240 (= e!5904 ($colon$colon!6 (removeStrictlySorted!1 (t!2440 (toList!155 lm!213)) a2!56) (h!855 (toList!155 lm!213))))))

(declare-fun b!10241 () Bool)

(assert (=> b!10241 (= e!5904 Nil!290)))

(declare-fun b!10242 () Bool)

(declare-fun e!5905 () List!293)

(assert (=> b!10242 (= e!5905 (t!2440 (toList!155 lm!213)))))

(declare-fun d!1055 () Bool)

(declare-fun e!5906 () Bool)

(assert (=> d!1055 e!5906))

(declare-fun res!8860 () Bool)

(assert (=> d!1055 (=> (not res!8860) (not e!5906))))

(declare-fun lt!2519 () List!293)

(assert (=> d!1055 (= res!8860 (isStrictlySorted!22 lt!2519))))

(assert (=> d!1055 (= lt!2519 e!5905)))

(declare-fun c!907 () Bool)

(assert (=> d!1055 (= c!907 (and (is-Cons!289 (toList!155 lm!213)) (= (_1!137 (h!855 (toList!155 lm!213))) a2!56)))))

(assert (=> d!1055 (isStrictlySorted!22 (toList!155 lm!213))))

(assert (=> d!1055 (= (removeStrictlySorted!1 (toList!155 lm!213) a2!56) lt!2519)))

(declare-fun b!10243 () Bool)

(assert (=> b!10243 (= e!5905 e!5904)))

(declare-fun c!908 () Bool)

(assert (=> b!10243 (= c!908 (and (is-Cons!289 (toList!155 lm!213)) (not (= (_1!137 (h!855 (toList!155 lm!213))) a2!56))))))

(declare-fun b!10244 () Bool)

(assert (=> b!10244 (= e!5906 (not (containsKey!11 lt!2519 a2!56)))))

(assert (= (and d!1055 c!907) b!10242))

(assert (= (and d!1055 (not c!907)) b!10243))

(assert (= (and b!10243 c!908) b!10240))

(assert (= (and b!10243 (not c!908)) b!10241))

(assert (= (and d!1055 res!8860) b!10244))

(declare-fun m!6645 () Bool)

(assert (=> b!10240 m!6645))

(assert (=> b!10240 m!6645))

(declare-fun m!6647 () Bool)

(assert (=> b!10240 m!6647))

(declare-fun m!6649 () Bool)

(assert (=> d!1055 m!6649))

(assert (=> d!1055 m!6473))

(declare-fun m!6651 () Bool)

(assert (=> b!10244 m!6651))

(assert (=> b!10150 d!1055))

(declare-fun d!1059 () Bool)

(declare-fun lt!2521 () ListLongMap!279)

(assert (=> d!1059 (not (contains!129 lt!2521 a2!56))))

(assert (=> d!1059 (= lt!2521 (ListLongMap!280 (removeStrictlySorted!1 (toList!155 lm!213) a2!56)))))

(assert (=> d!1059 (= (-!6 lm!213 a2!56) lt!2521)))

(declare-fun bs!363 () Bool)

(assert (= bs!363 d!1059))

(declare-fun m!6655 () Bool)

(assert (=> bs!363 m!6655))

(assert (=> bs!363 m!6483))

(assert (=> b!10150 d!1059))

(declare-fun d!1063 () Bool)

(declare-fun res!8872 () Bool)

(declare-fun e!5920 () Bool)

(assert (=> d!1063 (=> res!8872 e!5920)))

(assert (=> d!1063 (= res!8872 (or (is-Nil!290 (toList!155 lm!213)) (is-Nil!290 (t!2440 (toList!155 lm!213)))))))

(assert (=> d!1063 (= (isStrictlySorted!22 (toList!155 lm!213)) e!5920)))

(declare-fun b!10260 () Bool)

(declare-fun e!5921 () Bool)

(assert (=> b!10260 (= e!5920 e!5921)))

(declare-fun res!8873 () Bool)

(assert (=> b!10260 (=> (not res!8873) (not e!5921))))

(assert (=> b!10260 (= res!8873 (bvslt (_1!137 (h!855 (toList!155 lm!213))) (_1!137 (h!855 (t!2440 (toList!155 lm!213))))))))

(declare-fun b!10261 () Bool)

(assert (=> b!10261 (= e!5921 (isStrictlySorted!22 (t!2440 (toList!155 lm!213))))))

(assert (= (and d!1063 (not res!8872)) b!10260))

(assert (= (and b!10260 res!8873) b!10261))

(declare-fun m!6661 () Bool)

(assert (=> b!10261 m!6661))

(assert (=> start!1176 d!1063))

(declare-fun d!1069 () Bool)

(assert (=> d!1069 (= (inv!458 lm!213) (isStrictlySorted!22 (toList!155 lm!213)))))

(declare-fun bs!366 () Bool)

(assert (= bs!366 d!1069))

(assert (=> bs!366 m!6473))

(assert (=> start!1176 d!1069))

(declare-fun b!10276 () Bool)

(declare-fun e!5930 () Bool)

(declare-fun tp_is_empty!477 () Bool)

(declare-fun tp!1457 () Bool)

(assert (=> b!10276 (= e!5930 (and tp_is_empty!477 tp!1457))))

(assert (=> b!10151 (= tp!1445 e!5930)))

(assert (= (and b!10151 (is-Cons!289 (toList!155 lm!213))) b!10276))

(push 1)

