; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1180 () Bool)

(assert start!1180)

(declare-fun res!8839 () Bool)

(declare-fun e!5854 () Bool)

(assert (=> start!1180 (=> (not res!8839) (not e!5854))))

(declare-datatypes ((B!306 0))(
  ( (B!307 (val!248 Int)) )
))
(declare-datatypes ((tuple2!278 0))(
  ( (tuple2!279 (_1!139 (_ BitVec 64)) (_2!139 B!306)) )
))
(declare-datatypes ((List!295 0))(
  ( (Nil!292) (Cons!291 (h!857 tuple2!278) (t!2442 List!295)) )
))
(declare-datatypes ((ListLongMap!283 0))(
  ( (ListLongMap!284 (toList!157 List!295)) )
))
(declare-fun lm!213 () ListLongMap!283)

(declare-fun isStrictlySorted!24 (List!295) Bool)

(assert (=> start!1180 (= res!8839 (isStrictlySorted!24 (toList!157 lm!213)))))

(assert (=> start!1180 e!5854))

(declare-fun e!5855 () Bool)

(declare-fun inv!460 (ListLongMap!283) Bool)

(assert (=> start!1180 (and (inv!460 lm!213) e!5855)))

(assert (=> start!1180 true))

(declare-fun a1!68 () (_ BitVec 64))

(declare-fun b!10162 () Bool)

(declare-fun a2!56 () (_ BitVec 64))

(declare-fun -!8 (ListLongMap!283 (_ BitVec 64)) ListLongMap!283)

(assert (=> b!10162 (= e!5854 (not (= (-!8 (-!8 lm!213 a1!68) a2!56) (-!8 (-!8 lm!213 a2!56) a1!68))))))

(declare-fun removeStrictlySorted!3 (List!295 (_ BitVec 64)) List!295)

(assert (=> b!10162 (= (removeStrictlySorted!3 (removeStrictlySorted!3 (toList!157 lm!213) a1!68) a2!56) (removeStrictlySorted!3 (removeStrictlySorted!3 (toList!157 lm!213) a2!56) a1!68))))

(declare-datatypes ((Unit!213 0))(
  ( (Unit!214) )
))
(declare-fun lt!2484 () Unit!213)

(declare-fun lemmaRemoveStrictlySortedCommutative!3 (List!295 (_ BitVec 64) (_ BitVec 64)) Unit!213)

(assert (=> b!10162 (= lt!2484 (lemmaRemoveStrictlySortedCommutative!3 (toList!157 lm!213) a1!68 a2!56))))

(declare-fun b!10163 () Bool)

(declare-fun tp!1451 () Bool)

(assert (=> b!10163 (= e!5855 tp!1451)))

(assert (= (and start!1180 res!8839) b!10162))

(assert (= start!1180 b!10163))

(declare-fun m!6517 () Bool)

(assert (=> start!1180 m!6517))

(declare-fun m!6519 () Bool)

(assert (=> start!1180 m!6519))

(declare-fun m!6521 () Bool)

(assert (=> b!10162 m!6521))

(declare-fun m!6523 () Bool)

(assert (=> b!10162 m!6523))

(declare-fun m!6525 () Bool)

(assert (=> b!10162 m!6525))

(declare-fun m!6527 () Bool)

(assert (=> b!10162 m!6527))

(declare-fun m!6529 () Bool)

(assert (=> b!10162 m!6529))

(declare-fun m!6531 () Bool)

(assert (=> b!10162 m!6531))

(declare-fun m!6533 () Bool)

(assert (=> b!10162 m!6533))

(assert (=> b!10162 m!6533))

(declare-fun m!6535 () Bool)

(assert (=> b!10162 m!6535))

(assert (=> b!10162 m!6521))

(declare-fun m!6537 () Bool)

(assert (=> b!10162 m!6537))

(assert (=> b!10162 m!6523))

(assert (=> b!10162 m!6527))

(push 1)

(assert (not b!10162))

(assert (not start!1180))

(assert (not b!10163))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1013 () Bool)

(declare-fun lt!2489 () ListLongMap!283)

(declare-fun contains!130 (ListLongMap!283 (_ BitVec 64)) Bool)

(assert (=> d!1013 (not (contains!130 lt!2489 a1!68))))

(assert (=> d!1013 (= lt!2489 (ListLongMap!284 (removeStrictlySorted!3 (toList!157 (-!8 lm!213 a2!56)) a1!68)))))

(assert (=> d!1013 (= (-!8 (-!8 lm!213 a2!56) a1!68) lt!2489)))

(declare-fun bs!351 () Bool)

(assert (= bs!351 d!1013))

(declare-fun m!6539 () Bool)

(assert (=> bs!351 m!6539))

(declare-fun m!6541 () Bool)

(assert (=> bs!351 m!6541))

(assert (=> b!10162 d!1013))

(declare-fun d!1019 () Bool)

(declare-fun lt!2491 () ListLongMap!283)

(assert (=> d!1019 (not (contains!130 lt!2491 a1!68))))

(assert (=> d!1019 (= lt!2491 (ListLongMap!284 (removeStrictlySorted!3 (toList!157 lm!213) a1!68)))))

(assert (=> d!1019 (= (-!8 lm!213 a1!68) lt!2491)))

(declare-fun bs!353 () Bool)

(assert (= bs!353 d!1019))

(declare-fun m!6547 () Bool)

(assert (=> bs!353 m!6547))

(assert (=> bs!353 m!6521))

(assert (=> b!10162 d!1019))

(declare-fun b!10190 () Bool)

(declare-fun e!5875 () List!295)

(assert (=> b!10190 (= e!5875 Nil!292)))

(declare-fun b!10191 () Bool)

(declare-fun $colon$colon!7 (List!295 tuple2!278) List!295)

(assert (=> b!10191 (= e!5875 ($colon$colon!7 (removeStrictlySorted!3 (t!2442 (removeStrictlySorted!3 (toList!157 lm!213) a1!68)) a2!56) (h!857 (removeStrictlySorted!3 (toList!157 lm!213) a1!68))))))

(declare-fun b!10192 () Bool)

(declare-fun e!5876 () List!295)

(assert (=> b!10192 (= e!5876 (t!2442 (removeStrictlySorted!3 (toList!157 lm!213) a1!68)))))

(declare-fun d!1023 () Bool)

(declare-fun e!5874 () Bool)

(assert (=> d!1023 e!5874))

(declare-fun res!8850 () Bool)

(assert (=> d!1023 (=> (not res!8850) (not e!5874))))

(declare-fun lt!2501 () List!295)

(assert (=> d!1023 (= res!8850 (isStrictlySorted!24 lt!2501))))

(assert (=> d!1023 (= lt!2501 e!5876)))

(declare-fun c!888 () Bool)

(assert (=> d!1023 (= c!888 (and (is-Cons!291 (removeStrictlySorted!3 (toList!157 lm!213) a1!68)) (= (_1!139 (h!857 (removeStrictlySorted!3 (toList!157 lm!213) a1!68))) a2!56)))))

(assert (=> d!1023 (isStrictlySorted!24 (removeStrictlySorted!3 (toList!157 lm!213) a1!68))))

(assert (=> d!1023 (= (removeStrictlySorted!3 (removeStrictlySorted!3 (toList!157 lm!213) a1!68) a2!56) lt!2501)))

(declare-fun b!10193 () Bool)

(assert (=> b!10193 (= e!5876 e!5875)))

(declare-fun c!887 () Bool)

(assert (=> b!10193 (= c!887 (and (is-Cons!291 (removeStrictlySorted!3 (toList!157 lm!213) a1!68)) (not (= (_1!139 (h!857 (removeStrictlySorted!3 (toList!157 lm!213) a1!68))) a2!56))))))

(declare-fun b!10194 () Bool)

(declare-fun containsKey!13 (List!295 (_ BitVec 64)) Bool)

(assert (=> b!10194 (= e!5874 (not (containsKey!13 lt!2501 a2!56)))))

(assert (= (and d!1023 c!888) b!10192))

(assert (= (and d!1023 (not c!888)) b!10193))

(assert (= (and b!10193 c!887) b!10191))

(assert (= (and b!10193 (not c!887)) b!10190))

(assert (= (and d!1023 res!8850) b!10194))

(declare-fun m!6559 () Bool)

(assert (=> b!10191 m!6559))

(assert (=> b!10191 m!6559))

(declare-fun m!6561 () Bool)

(assert (=> b!10191 m!6561))

(declare-fun m!6563 () Bool)

(assert (=> d!1023 m!6563))

(assert (=> d!1023 m!6521))

(declare-fun m!6565 () Bool)

(assert (=> d!1023 m!6565))

(declare-fun m!6569 () Bool)

(assert (=> b!10194 m!6569))

(assert (=> b!10162 d!1023))

(declare-fun d!1035 () Bool)

(assert (=> d!1035 (= (removeStrictlySorted!3 (removeStrictlySorted!3 (toList!157 lm!213) a1!68) a2!56) (removeStrictlySorted!3 (removeStrictlySorted!3 (toList!157 lm!213) a2!56) a1!68))))

(declare-fun lt!2509 () Unit!213)

(declare-fun choose!146 (List!295 (_ BitVec 64) (_ BitVec 64)) Unit!213)

(assert (=> d!1035 (= lt!2509 (choose!146 (toList!157 lm!213) a1!68 a2!56))))

(assert (=> d!1035 (isStrictlySorted!24 (toList!157 lm!213))))

(assert (=> d!1035 (= (lemmaRemoveStrictlySortedCommutative!3 (toList!157 lm!213) a1!68 a2!56) lt!2509)))

(declare-fun bs!358 () Bool)

(assert (= bs!358 d!1035))

(assert (=> bs!358 m!6521))

(assert (=> bs!358 m!6537))

(assert (=> bs!358 m!6527))

(assert (=> bs!358 m!6527))

(assert (=> bs!358 m!6529))

(declare-fun m!6579 () Bool)

(assert (=> bs!358 m!6579))

(assert (=> bs!358 m!6521))

(assert (=> bs!358 m!6517))

(assert (=> b!10162 d!1035))

(declare-fun b!10210 () Bool)

(declare-fun e!5887 () List!295)

(assert (=> b!10210 (= e!5887 Nil!292)))

(declare-fun b!10211 () Bool)

(assert (=> b!10211 (= e!5887 ($colon$colon!7 (removeStrictlySorted!3 (t!2442 (toList!157 lm!213)) a1!68) (h!857 (toList!157 lm!213))))))

(declare-fun b!10212 () Bool)

(declare-fun e!5888 () List!295)

(assert (=> b!10212 (= e!5888 (t!2442 (toList!157 lm!213)))))

(declare-fun d!1039 () Bool)

(declare-fun e!5886 () Bool)

(assert (=> d!1039 e!5886))

(declare-fun res!8854 () Bool)

(assert (=> d!1039 (=> (not res!8854) (not e!5886))))

(declare-fun lt!2511 () List!295)

(assert (=> d!1039 (= res!8854 (isStrictlySorted!24 lt!2511))))

(assert (=> d!1039 (= lt!2511 e!5888)))

(declare-fun c!896 () Bool)

(assert (=> d!1039 (= c!896 (and (is-Cons!291 (toList!157 lm!213)) (= (_1!139 (h!857 (toList!157 lm!213))) a1!68)))))

(assert (=> d!1039 (isStrictlySorted!24 (toList!157 lm!213))))

(assert (=> d!1039 (= (removeStrictlySorted!3 (toList!157 lm!213) a1!68) lt!2511)))

(declare-fun b!10213 () Bool)

(assert (=> b!10213 (= e!5888 e!5887)))

(declare-fun c!895 () Bool)

(assert (=> b!10213 (= c!895 (and (is-Cons!291 (toList!157 lm!213)) (not (= (_1!139 (h!857 (toList!157 lm!213))) a1!68))))))

(declare-fun b!10214 () Bool)

(assert (=> b!10214 (= e!5886 (not (containsKey!13 lt!2511 a1!68)))))

(assert (= (and d!1039 c!896) b!10212))

(assert (= (and d!1039 (not c!896)) b!10213))

(assert (= (and b!10213 c!895) b!10211))

(assert (= (and b!10213 (not c!895)) b!10210))

(assert (= (and d!1039 res!8854) b!10214))

(declare-fun m!6583 () Bool)

(assert (=> b!10211 m!6583))

(assert (=> b!10211 m!6583))

(declare-fun m!6585 () Bool)

(assert (=> b!10211 m!6585))

(declare-fun m!6587 () Bool)

(assert (=> d!1039 m!6587))

(assert (=> d!1039 m!6517))

(declare-fun m!6589 () Bool)

(assert (=> b!10214 m!6589))

(assert (=> b!10162 d!1039))

(declare-fun b!10220 () Bool)

(declare-fun e!5893 () List!295)

(assert (=> b!10220 (= e!5893 Nil!292)))

(declare-fun b!10221 () Bool)

(assert (=> b!10221 (= e!5893 ($colon$colon!7 (removeStrictlySorted!3 (t!2442 (removeStrictlySorted!3 (toList!157 lm!213) a2!56)) a1!68) (h!857 (removeStrictlySorted!3 (toList!157 lm!213) a2!56))))))

(declare-fun b!10222 () Bool)

(declare-fun e!5894 () List!295)

(assert (=> b!10222 (= e!5894 (t!2442 (removeStrictlySorted!3 (toList!157 lm!213) a2!56)))))

(declare-fun d!1043 () Bool)

(declare-fun e!5892 () Bool)

(assert (=> d!1043 e!5892))

(declare-fun res!8856 () Bool)

(assert (=> d!1043 (=> (not res!8856) (not e!5892))))

(declare-fun lt!2513 () List!295)

(assert (=> d!1043 (= res!8856 (isStrictlySorted!24 lt!2513))))

(assert (=> d!1043 (= lt!2513 e!5894)))

(declare-fun c!900 () Bool)

(assert (=> d!1043 (= c!900 (and (is-Cons!291 (removeStrictlySorted!3 (toList!157 lm!213) a2!56)) (= (_1!139 (h!857 (removeStrictlySorted!3 (toList!157 lm!213) a2!56))) a1!68)))))

(assert (=> d!1043 (isStrictlySorted!24 (removeStrictlySorted!3 (toList!157 lm!213) a2!56))))

(assert (=> d!1043 (= (removeStrictlySorted!3 (removeStrictlySorted!3 (toList!157 lm!213) a2!56) a1!68) lt!2513)))

(declare-fun b!10223 () Bool)

(assert (=> b!10223 (= e!5894 e!5893)))

(declare-fun c!899 () Bool)

(assert (=> b!10223 (= c!899 (and (is-Cons!291 (removeStrictlySorted!3 (toList!157 lm!213) a2!56)) (not (= (_1!139 (h!857 (removeStrictlySorted!3 (toList!157 lm!213) a2!56))) a1!68))))))

(declare-fun b!10224 () Bool)

(assert (=> b!10224 (= e!5892 (not (containsKey!13 lt!2513 a1!68)))))

(assert (= (and d!1043 c!900) b!10222))

(assert (= (and d!1043 (not c!900)) b!10223))

(assert (= (and b!10223 c!899) b!10221))

(assert (= (and b!10223 (not c!899)) b!10220))

(assert (= (and d!1043 res!8856) b!10224))

(declare-fun m!6599 () Bool)

(assert (=> b!10221 m!6599))

(assert (=> b!10221 m!6599))

(declare-fun m!6601 () Bool)

(assert (=> b!10221 m!6601))

(declare-fun m!6603 () Bool)

(assert (=> d!1043 m!6603))

(assert (=> d!1043 m!6527))

(declare-fun m!6605 () Bool)

(assert (=> d!1043 m!6605))

(declare-fun m!6607 () Bool)

(assert (=> b!10224 m!6607))

(assert (=> b!10162 d!1043))

(declare-fun d!1047 () Bool)

(declare-fun lt!2516 () ListLongMap!283)

(assert (=> d!1047 (not (contains!130 lt!2516 a2!56))))

(assert (=> d!1047 (= lt!2516 (ListLongMap!284 (removeStrictlySorted!3 (toList!157 (-!8 lm!213 a1!68)) a2!56)))))

(assert (=> d!1047 (= (-!8 (-!8 lm!213 a1!68) a2!56) lt!2516)))

(declare-fun bs!360 () Bool)

(assert (= bs!360 d!1047))

(declare-fun m!6621 () Bool)

(assert (=> bs!360 m!6621))

(declare-fun m!6625 () Bool)

(assert (=> bs!360 m!6625))

(assert (=> b!10162 d!1047))

(declare-fun b!10235 () Bool)

(declare-fun e!5902 () List!295)

(assert (=> b!10235 (= e!5902 Nil!292)))

(declare-fun b!10236 () Bool)

(assert (=> b!10236 (= e!5902 ($colon$colon!7 (removeStrictlySorted!3 (t!2442 (toList!157 lm!213)) a2!56) (h!857 (toList!157 lm!213))))))

(declare-fun b!10237 () Bool)

(declare-fun e!5903 () List!295)

(assert (=> b!10237 (= e!5903 (t!2442 (toList!157 lm!213)))))

(declare-fun d!1051 () Bool)

(declare-fun e!5901 () Bool)

(assert (=> d!1051 e!5901))

(declare-fun res!8859 () Bool)

(assert (=> d!1051 (=> (not res!8859) (not e!5901))))

(declare-fun lt!2518 () List!295)

(assert (=> d!1051 (= res!8859 (isStrictlySorted!24 lt!2518))))

(assert (=> d!1051 (= lt!2518 e!5903)))

(declare-fun c!906 () Bool)

(assert (=> d!1051 (= c!906 (and (is-Cons!291 (toList!157 lm!213)) (= (_1!139 (h!857 (toList!157 lm!213))) a2!56)))))

(assert (=> d!1051 (isStrictlySorted!24 (toList!157 lm!213))))

(assert (=> d!1051 (= (removeStrictlySorted!3 (toList!157 lm!213) a2!56) lt!2518)))

(declare-fun b!10238 () Bool)

(assert (=> b!10238 (= e!5903 e!5902)))

(declare-fun c!905 () Bool)

(assert (=> b!10238 (= c!905 (and (is-Cons!291 (toList!157 lm!213)) (not (= (_1!139 (h!857 (toList!157 lm!213))) a2!56))))))

(declare-fun b!10239 () Bool)

(assert (=> b!10239 (= e!5901 (not (containsKey!13 lt!2518 a2!56)))))

(assert (= (and d!1051 c!906) b!10237))

(assert (= (and d!1051 (not c!906)) b!10238))

(assert (= (and b!10238 c!905) b!10236))

(assert (= (and b!10238 (not c!905)) b!10235))

(assert (= (and d!1051 res!8859) b!10239))

(declare-fun m!6637 () Bool)

(assert (=> b!10236 m!6637))

(assert (=> b!10236 m!6637))

(declare-fun m!6639 () Bool)

(assert (=> b!10236 m!6639))

(declare-fun m!6641 () Bool)

(assert (=> d!1051 m!6641))

(assert (=> d!1051 m!6517))

(declare-fun m!6643 () Bool)

