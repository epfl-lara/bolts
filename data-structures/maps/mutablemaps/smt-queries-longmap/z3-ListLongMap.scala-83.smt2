; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1178 () Bool)

(assert start!1178)

(declare-fun res!8836 () Bool)

(declare-fun e!5848 () Bool)

(assert (=> start!1178 (=> (not res!8836) (not e!5848))))

(declare-datatypes ((B!304 0))(
  ( (B!305 (val!247 Int)) )
))
(declare-datatypes ((tuple2!276 0))(
  ( (tuple2!277 (_1!138 (_ BitVec 64)) (_2!138 B!304)) )
))
(declare-datatypes ((List!294 0))(
  ( (Nil!291) (Cons!290 (h!856 tuple2!276) (t!2441 List!294)) )
))
(declare-datatypes ((ListLongMap!281 0))(
  ( (ListLongMap!282 (toList!156 List!294)) )
))
(declare-fun lm!213 () ListLongMap!281)

(declare-fun isStrictlySorted!23 (List!294) Bool)

(assert (=> start!1178 (= res!8836 (isStrictlySorted!23 (toList!156 lm!213)))))

(assert (=> start!1178 e!5848))

(declare-fun e!5849 () Bool)

(declare-fun inv!459 (ListLongMap!281) Bool)

(assert (=> start!1178 (and (inv!459 lm!213) e!5849)))

(assert (=> start!1178 true))

(declare-fun a1!68 () (_ BitVec 64))

(declare-fun b!10156 () Bool)

(declare-fun a2!56 () (_ BitVec 64))

(declare-fun -!7 (ListLongMap!281 (_ BitVec 64)) ListLongMap!281)

(assert (=> b!10156 (= e!5848 (not (= (-!7 (-!7 lm!213 a1!68) a2!56) (-!7 (-!7 lm!213 a2!56) a1!68))))))

(declare-fun removeStrictlySorted!2 (List!294 (_ BitVec 64)) List!294)

(assert (=> b!10156 (= (removeStrictlySorted!2 (removeStrictlySorted!2 (toList!156 lm!213) a1!68) a2!56) (removeStrictlySorted!2 (removeStrictlySorted!2 (toList!156 lm!213) a2!56) a1!68))))

(declare-datatypes ((Unit!211 0))(
  ( (Unit!212) )
))
(declare-fun lt!2481 () Unit!211)

(declare-fun lemmaRemoveStrictlySortedCommutative!2 (List!294 (_ BitVec 64) (_ BitVec 64)) Unit!211)

(assert (=> b!10156 (= lt!2481 (lemmaRemoveStrictlySortedCommutative!2 (toList!156 lm!213) a1!68 a2!56))))

(declare-fun b!10157 () Bool)

(declare-fun tp!1448 () Bool)

(assert (=> b!10157 (= e!5849 tp!1448)))

(assert (= (and start!1178 res!8836) b!10156))

(assert (= start!1178 b!10157))

(declare-fun m!6495 () Bool)

(assert (=> start!1178 m!6495))

(declare-fun m!6497 () Bool)

(assert (=> start!1178 m!6497))

(declare-fun m!6499 () Bool)

(assert (=> b!10156 m!6499))

(declare-fun m!6501 () Bool)

(assert (=> b!10156 m!6501))

(declare-fun m!6503 () Bool)

(assert (=> b!10156 m!6503))

(declare-fun m!6505 () Bool)

(assert (=> b!10156 m!6505))

(declare-fun m!6507 () Bool)

(assert (=> b!10156 m!6507))

(declare-fun m!6509 () Bool)

(assert (=> b!10156 m!6509))

(declare-fun m!6511 () Bool)

(assert (=> b!10156 m!6511))

(assert (=> b!10156 m!6511))

(declare-fun m!6513 () Bool)

(assert (=> b!10156 m!6513))

(assert (=> b!10156 m!6499))

(declare-fun m!6515 () Bool)

(assert (=> b!10156 m!6515))

(assert (=> b!10156 m!6501))

(assert (=> b!10156 m!6505))

(check-sat (not start!1178) (not b!10156) (not b!10157))
(check-sat)
(get-model)

(declare-fun d!1017 () Bool)

(declare-fun res!8844 () Bool)

(declare-fun e!5860 () Bool)

(assert (=> d!1017 (=> res!8844 e!5860)))

(get-info :version)

(assert (=> d!1017 (= res!8844 (or ((_ is Nil!291) (toList!156 lm!213)) ((_ is Nil!291) (t!2441 (toList!156 lm!213)))))))

(assert (=> d!1017 (= (isStrictlySorted!23 (toList!156 lm!213)) e!5860)))

(declare-fun b!10168 () Bool)

(declare-fun e!5861 () Bool)

(assert (=> b!10168 (= e!5860 e!5861)))

(declare-fun res!8845 () Bool)

(assert (=> b!10168 (=> (not res!8845) (not e!5861))))

(assert (=> b!10168 (= res!8845 (bvslt (_1!138 (h!856 (toList!156 lm!213))) (_1!138 (h!856 (t!2441 (toList!156 lm!213))))))))

(declare-fun b!10169 () Bool)

(assert (=> b!10169 (= e!5861 (isStrictlySorted!23 (t!2441 (toList!156 lm!213))))))

(assert (= (and d!1017 (not res!8844)) b!10168))

(assert (= (and b!10168 res!8845) b!10169))

(declare-fun m!6551 () Bool)

(assert (=> b!10169 m!6551))

(assert (=> start!1178 d!1017))

(declare-fun d!1027 () Bool)

(assert (=> d!1027 (= (inv!459 lm!213) (isStrictlySorted!23 (toList!156 lm!213)))))

(declare-fun bs!355 () Bool)

(assert (= bs!355 d!1027))

(assert (=> bs!355 m!6495))

(assert (=> start!1178 d!1027))

(declare-fun d!1029 () Bool)

(declare-fun lt!2499 () ListLongMap!281)

(declare-fun contains!131 (ListLongMap!281 (_ BitVec 64)) Bool)

(assert (=> d!1029 (not (contains!131 lt!2499 a1!68))))

(assert (=> d!1029 (= lt!2499 (ListLongMap!282 (removeStrictlySorted!2 (toList!156 (-!7 lm!213 a2!56)) a1!68)))))

(assert (=> d!1029 (= (-!7 (-!7 lm!213 a2!56) a1!68) lt!2499)))

(declare-fun bs!356 () Bool)

(assert (= bs!356 d!1029))

(declare-fun m!6553 () Bool)

(assert (=> bs!356 m!6553))

(declare-fun m!6555 () Bool)

(assert (=> bs!356 m!6555))

(assert (=> b!10156 d!1029))

(declare-fun d!1031 () Bool)

(declare-fun lt!2500 () ListLongMap!281)

(assert (=> d!1031 (not (contains!131 lt!2500 a1!68))))

(assert (=> d!1031 (= lt!2500 (ListLongMap!282 (removeStrictlySorted!2 (toList!156 lm!213) a1!68)))))

(assert (=> d!1031 (= (-!7 lm!213 a1!68) lt!2500)))

(declare-fun bs!357 () Bool)

(assert (= bs!357 d!1031))

(declare-fun m!6557 () Bool)

(assert (=> bs!357 m!6557))

(assert (=> bs!357 m!6499))

(assert (=> b!10156 d!1031))

(declare-fun b!10230 () Bool)

(declare-fun e!5900 () List!294)

(assert (=> b!10230 (= e!5900 (t!2441 (removeStrictlySorted!2 (toList!156 lm!213) a1!68)))))

(declare-fun b!10232 () Bool)

(declare-fun e!5899 () Bool)

(declare-fun lt!2515 () List!294)

(declare-fun containsKey!12 (List!294 (_ BitVec 64)) Bool)

(assert (=> b!10232 (= e!5899 (not (containsKey!12 lt!2515 a2!56)))))

(declare-fun b!10233 () Bool)

(declare-fun e!5898 () List!294)

(declare-fun $colon$colon!8 (List!294 tuple2!276) List!294)

(assert (=> b!10233 (= e!5898 ($colon$colon!8 (removeStrictlySorted!2 (t!2441 (removeStrictlySorted!2 (toList!156 lm!213) a1!68)) a2!56) (h!856 (removeStrictlySorted!2 (toList!156 lm!213) a1!68))))))

(declare-fun b!10234 () Bool)

(assert (=> b!10234 (= e!5898 Nil!291)))

(declare-fun d!1033 () Bool)

(assert (=> d!1033 e!5899))

(declare-fun res!8858 () Bool)

(assert (=> d!1033 (=> (not res!8858) (not e!5899))))

(assert (=> d!1033 (= res!8858 (isStrictlySorted!23 lt!2515))))

(assert (=> d!1033 (= lt!2515 e!5900)))

(declare-fun c!903 () Bool)

(assert (=> d!1033 (= c!903 (and ((_ is Cons!290) (removeStrictlySorted!2 (toList!156 lm!213) a1!68)) (= (_1!138 (h!856 (removeStrictlySorted!2 (toList!156 lm!213) a1!68))) a2!56)))))

(assert (=> d!1033 (isStrictlySorted!23 (removeStrictlySorted!2 (toList!156 lm!213) a1!68))))

(assert (=> d!1033 (= (removeStrictlySorted!2 (removeStrictlySorted!2 (toList!156 lm!213) a1!68) a2!56) lt!2515)))

(declare-fun b!10231 () Bool)

(assert (=> b!10231 (= e!5900 e!5898)))

(declare-fun c!904 () Bool)

(assert (=> b!10231 (= c!904 (and ((_ is Cons!290) (removeStrictlySorted!2 (toList!156 lm!213) a1!68)) (not (= (_1!138 (h!856 (removeStrictlySorted!2 (toList!156 lm!213) a1!68))) a2!56))))))

(assert (= (and d!1033 c!903) b!10230))

(assert (= (and d!1033 (not c!903)) b!10231))

(assert (= (and b!10231 c!904) b!10233))

(assert (= (and b!10231 (not c!904)) b!10234))

(assert (= (and d!1033 res!8858) b!10232))

(declare-fun m!6620 () Bool)

(assert (=> b!10232 m!6620))

(declare-fun m!6623 () Bool)

(assert (=> b!10233 m!6623))

(assert (=> b!10233 m!6623))

(declare-fun m!6627 () Bool)

(assert (=> b!10233 m!6627))

(declare-fun m!6629 () Bool)

(assert (=> d!1033 m!6629))

(assert (=> d!1033 m!6499))

(declare-fun m!6633 () Bool)

(assert (=> d!1033 m!6633))

(assert (=> b!10156 d!1033))

(declare-fun d!1053 () Bool)

(assert (=> d!1053 (= (removeStrictlySorted!2 (removeStrictlySorted!2 (toList!156 lm!213) a1!68) a2!56) (removeStrictlySorted!2 (removeStrictlySorted!2 (toList!156 lm!213) a2!56) a1!68))))

(declare-fun lt!2524 () Unit!211)

(declare-fun choose!147 (List!294 (_ BitVec 64) (_ BitVec 64)) Unit!211)

(assert (=> d!1053 (= lt!2524 (choose!147 (toList!156 lm!213) a1!68 a2!56))))

(assert (=> d!1053 (isStrictlySorted!23 (toList!156 lm!213))))

(assert (=> d!1053 (= (lemmaRemoveStrictlySortedCommutative!2 (toList!156 lm!213) a1!68 a2!56) lt!2524)))

(declare-fun bs!364 () Bool)

(assert (= bs!364 d!1053))

(declare-fun m!6657 () Bool)

(assert (=> bs!364 m!6657))

(assert (=> bs!364 m!6505))

(assert (=> bs!364 m!6505))

(assert (=> bs!364 m!6507))

(assert (=> bs!364 m!6495))

(assert (=> bs!364 m!6499))

(assert (=> bs!364 m!6499))

(assert (=> bs!364 m!6515))

(assert (=> b!10156 d!1053))

(declare-fun b!10255 () Bool)

(declare-fun e!5919 () List!294)

(assert (=> b!10255 (= e!5919 (t!2441 (toList!156 lm!213)))))

(declare-fun b!10257 () Bool)

(declare-fun e!5918 () Bool)

(declare-fun lt!2525 () List!294)

(assert (=> b!10257 (= e!5918 (not (containsKey!12 lt!2525 a1!68)))))

(declare-fun b!10258 () Bool)

(declare-fun e!5917 () List!294)

(assert (=> b!10258 (= e!5917 ($colon$colon!8 (removeStrictlySorted!2 (t!2441 (toList!156 lm!213)) a1!68) (h!856 (toList!156 lm!213))))))

(declare-fun b!10259 () Bool)

(assert (=> b!10259 (= e!5917 Nil!291)))

(declare-fun d!1065 () Bool)

(assert (=> d!1065 e!5918))

(declare-fun res!8871 () Bool)

(assert (=> d!1065 (=> (not res!8871) (not e!5918))))

(assert (=> d!1065 (= res!8871 (isStrictlySorted!23 lt!2525))))

(assert (=> d!1065 (= lt!2525 e!5919)))

(declare-fun c!909 () Bool)

(assert (=> d!1065 (= c!909 (and ((_ is Cons!290) (toList!156 lm!213)) (= (_1!138 (h!856 (toList!156 lm!213))) a1!68)))))

(assert (=> d!1065 (isStrictlySorted!23 (toList!156 lm!213))))

(assert (=> d!1065 (= (removeStrictlySorted!2 (toList!156 lm!213) a1!68) lt!2525)))

(declare-fun b!10256 () Bool)

(assert (=> b!10256 (= e!5919 e!5917)))

(declare-fun c!910 () Bool)

(assert (=> b!10256 (= c!910 (and ((_ is Cons!290) (toList!156 lm!213)) (not (= (_1!138 (h!856 (toList!156 lm!213))) a1!68))))))

(assert (= (and d!1065 c!909) b!10255))

(assert (= (and d!1065 (not c!909)) b!10256))

(assert (= (and b!10256 c!910) b!10258))

(assert (= (and b!10256 (not c!910)) b!10259))

(assert (= (and d!1065 res!8871) b!10257))

(declare-fun m!6663 () Bool)

(assert (=> b!10257 m!6663))

(declare-fun m!6665 () Bool)

(assert (=> b!10258 m!6665))

(assert (=> b!10258 m!6665))

(declare-fun m!6667 () Bool)

(assert (=> b!10258 m!6667))

(declare-fun m!6669 () Bool)

(assert (=> d!1065 m!6669))

(assert (=> d!1065 m!6495))

(assert (=> b!10156 d!1065))

(declare-fun b!10262 () Bool)

(declare-fun e!5924 () List!294)

(assert (=> b!10262 (= e!5924 (t!2441 (removeStrictlySorted!2 (toList!156 lm!213) a2!56)))))

(declare-fun b!10264 () Bool)

(declare-fun e!5923 () Bool)

(declare-fun lt!2526 () List!294)

(assert (=> b!10264 (= e!5923 (not (containsKey!12 lt!2526 a1!68)))))

(declare-fun b!10265 () Bool)

(declare-fun e!5922 () List!294)

(assert (=> b!10265 (= e!5922 ($colon$colon!8 (removeStrictlySorted!2 (t!2441 (removeStrictlySorted!2 (toList!156 lm!213) a2!56)) a1!68) (h!856 (removeStrictlySorted!2 (toList!156 lm!213) a2!56))))))

(declare-fun b!10266 () Bool)

(assert (=> b!10266 (= e!5922 Nil!291)))

(declare-fun d!1071 () Bool)

(assert (=> d!1071 e!5923))

(declare-fun res!8874 () Bool)

(assert (=> d!1071 (=> (not res!8874) (not e!5923))))

(assert (=> d!1071 (= res!8874 (isStrictlySorted!23 lt!2526))))

(assert (=> d!1071 (= lt!2526 e!5924)))

(declare-fun c!911 () Bool)

(assert (=> d!1071 (= c!911 (and ((_ is Cons!290) (removeStrictlySorted!2 (toList!156 lm!213) a2!56)) (= (_1!138 (h!856 (removeStrictlySorted!2 (toList!156 lm!213) a2!56))) a1!68)))))

(assert (=> d!1071 (isStrictlySorted!23 (removeStrictlySorted!2 (toList!156 lm!213) a2!56))))

(assert (=> d!1071 (= (removeStrictlySorted!2 (removeStrictlySorted!2 (toList!156 lm!213) a2!56) a1!68) lt!2526)))

(declare-fun b!10263 () Bool)

(assert (=> b!10263 (= e!5924 e!5922)))

(declare-fun c!912 () Bool)

(assert (=> b!10263 (= c!912 (and ((_ is Cons!290) (removeStrictlySorted!2 (toList!156 lm!213) a2!56)) (not (= (_1!138 (h!856 (removeStrictlySorted!2 (toList!156 lm!213) a2!56))) a1!68))))))

(assert (= (and d!1071 c!911) b!10262))

(assert (= (and d!1071 (not c!911)) b!10263))

(assert (= (and b!10263 c!912) b!10265))

(assert (= (and b!10263 (not c!912)) b!10266))

(assert (= (and d!1071 res!8874) b!10264))

(declare-fun m!6671 () Bool)

(assert (=> b!10264 m!6671))

(declare-fun m!6673 () Bool)

(assert (=> b!10265 m!6673))

(assert (=> b!10265 m!6673))

(declare-fun m!6675 () Bool)

(assert (=> b!10265 m!6675))

(declare-fun m!6677 () Bool)

(assert (=> d!1071 m!6677))

(assert (=> d!1071 m!6505))

(declare-fun m!6679 () Bool)

(assert (=> d!1071 m!6679))

(assert (=> b!10156 d!1071))

(declare-fun d!1073 () Bool)

(declare-fun lt!2527 () ListLongMap!281)

(assert (=> d!1073 (not (contains!131 lt!2527 a2!56))))

(assert (=> d!1073 (= lt!2527 (ListLongMap!282 (removeStrictlySorted!2 (toList!156 (-!7 lm!213 a1!68)) a2!56)))))

(assert (=> d!1073 (= (-!7 (-!7 lm!213 a1!68) a2!56) lt!2527)))

(declare-fun bs!367 () Bool)

(assert (= bs!367 d!1073))

(declare-fun m!6681 () Bool)

(assert (=> bs!367 m!6681))

(declare-fun m!6683 () Bool)

(assert (=> bs!367 m!6683))

(assert (=> b!10156 d!1073))

(declare-fun b!10277 () Bool)

(declare-fun e!5933 () List!294)

(assert (=> b!10277 (= e!5933 (t!2441 (toList!156 lm!213)))))

(declare-fun b!10279 () Bool)

(declare-fun e!5932 () Bool)

(declare-fun lt!2528 () List!294)

(assert (=> b!10279 (= e!5932 (not (containsKey!12 lt!2528 a2!56)))))

(declare-fun b!10280 () Bool)

(declare-fun e!5931 () List!294)

(assert (=> b!10280 (= e!5931 ($colon$colon!8 (removeStrictlySorted!2 (t!2441 (toList!156 lm!213)) a2!56) (h!856 (toList!156 lm!213))))))

(declare-fun b!10281 () Bool)

(assert (=> b!10281 (= e!5931 Nil!291)))

(declare-fun d!1075 () Bool)

(assert (=> d!1075 e!5932))

(declare-fun res!8875 () Bool)

(assert (=> d!1075 (=> (not res!8875) (not e!5932))))

(assert (=> d!1075 (= res!8875 (isStrictlySorted!23 lt!2528))))

(assert (=> d!1075 (= lt!2528 e!5933)))

(declare-fun c!913 () Bool)

(assert (=> d!1075 (= c!913 (and ((_ is Cons!290) (toList!156 lm!213)) (= (_1!138 (h!856 (toList!156 lm!213))) a2!56)))))

(assert (=> d!1075 (isStrictlySorted!23 (toList!156 lm!213))))

(assert (=> d!1075 (= (removeStrictlySorted!2 (toList!156 lm!213) a2!56) lt!2528)))

(declare-fun b!10278 () Bool)

(assert (=> b!10278 (= e!5933 e!5931)))

(declare-fun c!914 () Bool)

(assert (=> b!10278 (= c!914 (and ((_ is Cons!290) (toList!156 lm!213)) (not (= (_1!138 (h!856 (toList!156 lm!213))) a2!56))))))

(assert (= (and d!1075 c!913) b!10277))

(assert (= (and d!1075 (not c!913)) b!10278))

(assert (= (and b!10278 c!914) b!10280))

(assert (= (and b!10278 (not c!914)) b!10281))

(assert (= (and d!1075 res!8875) b!10279))

(declare-fun m!6685 () Bool)

(assert (=> b!10279 m!6685))

(declare-fun m!6687 () Bool)

(assert (=> b!10280 m!6687))

(assert (=> b!10280 m!6687))

(declare-fun m!6689 () Bool)

(assert (=> b!10280 m!6689))

(declare-fun m!6691 () Bool)

(assert (=> d!1075 m!6691))

(assert (=> d!1075 m!6495))

(assert (=> b!10156 d!1075))

(declare-fun d!1077 () Bool)

(declare-fun lt!2529 () ListLongMap!281)

(assert (=> d!1077 (not (contains!131 lt!2529 a2!56))))

(assert (=> d!1077 (= lt!2529 (ListLongMap!282 (removeStrictlySorted!2 (toList!156 lm!213) a2!56)))))

(assert (=> d!1077 (= (-!7 lm!213 a2!56) lt!2529)))

(declare-fun bs!368 () Bool)

(assert (= bs!368 d!1077))

(declare-fun m!6693 () Bool)

(assert (=> bs!368 m!6693))

(assert (=> bs!368 m!6505))

(assert (=> b!10156 d!1077))

(declare-fun b!10286 () Bool)

(declare-fun e!5936 () Bool)

(declare-fun tp_is_empty!479 () Bool)

(declare-fun tp!1460 () Bool)

(assert (=> b!10286 (= e!5936 (and tp_is_empty!479 tp!1460))))

(assert (=> b!10157 (= tp!1448 e!5936)))

(assert (= (and b!10157 ((_ is Cons!290) (toList!156 lm!213))) b!10286))

(check-sat (not b!10257) (not b!10258) (not b!10286) (not d!1031) (not b!10232) tp_is_empty!479 (not d!1073) (not d!1071) (not b!10279) (not d!1029) (not d!1077) (not b!10265) (not b!10233) (not d!1075) (not d!1065) (not b!10169) (not d!1053) (not b!10264) (not d!1033) (not d!1027) (not b!10280))
(check-sat)
