; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87664 () Bool)

(assert start!87664)

(declare-fun b!1013891 () Bool)

(assert (=> b!1013891 true))

(assert (=> b!1013891 true))

(declare-fun bs!28997 () Bool)

(declare-fun b!1013889 () Bool)

(assert (= bs!28997 (and b!1013889 b!1013891)))

(declare-fun lambda!602 () Int)

(declare-fun lambda!601 () Int)

(assert (=> bs!28997 (= lambda!602 lambda!601)))

(assert (=> b!1013889 true))

(assert (=> b!1013889 true))

(declare-datatypes ((B!1418 0))(
  ( (B!1419 (val!11793 Int)) )
))
(declare-datatypes ((tuple2!15222 0))(
  ( (tuple2!15223 (_1!7621 (_ BitVec 64)) (_2!7621 B!1418)) )
))
(declare-datatypes ((List!21535 0))(
  ( (Nil!21532) (Cons!21531 (h!22729 tuple2!15222) (t!30544 List!21535)) )
))
(declare-fun l!412 () List!21535)

(declare-fun e!570394 () Bool)

(declare-datatypes ((List!21536 0))(
  ( (Nil!21533) (Cons!21532 (h!22730 (_ BitVec 64)) (t!30545 List!21536)) )
))
(declare-fun lt!448277 () List!21536)

(declare-fun forall!239 (List!21536 Int) Bool)

(assert (=> b!1013889 (= e!570394 (not (forall!239 (Cons!21532 (_1!7621 (h!22729 l!412)) lt!448277) lambda!602)))))

(declare-datatypes ((Unit!33111 0))(
  ( (Unit!33112) )
))
(declare-fun lt!448278 () Unit!33111)

(declare-fun e!570395 () Unit!33111)

(assert (=> b!1013889 (= lt!448278 e!570395)))

(declare-fun c!102519 () Bool)

(declare-fun isEmpty!831 (List!21536) Bool)

(assert (=> b!1013889 (= c!102519 (not (isEmpty!831 lt!448277)))))

(declare-fun value!115 () B!1418)

(declare-fun getKeysOf!43 (List!21535 B!1418) List!21536)

(assert (=> b!1013889 (= lt!448277 (getKeysOf!43 (t!30544 l!412) value!115))))

(declare-fun b!1013890 () Bool)

(declare-fun Unit!33113 () Unit!33111)

(assert (=> b!1013890 (= e!570395 Unit!33113)))

(declare-fun lt!448276 () Unit!33111)

(assert (=> b!1013891 (= e!570395 lt!448276)))

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!34 (List!21535 List!21536 B!1418 tuple2!15222) Unit!33111)

(assert (=> b!1013891 (= lt!448276 (lemmaForallGetValueByKeySameWithASmallerHead!34 (t!30544 l!412) lt!448277 value!115 (h!22729 l!412)))))

(assert (=> b!1013891 (forall!239 lt!448277 lambda!601)))

(declare-fun b!1013892 () Bool)

(declare-fun e!570393 () Bool)

(declare-fun tp_is_empty!23485 () Bool)

(declare-fun tp!70482 () Bool)

(assert (=> b!1013892 (= e!570393 (and tp_is_empty!23485 tp!70482))))

(declare-fun b!1013893 () Bool)

(declare-fun res!680644 () Bool)

(assert (=> b!1013893 (=> (not res!680644) (not e!570394))))

(assert (=> b!1013893 (= res!680644 (and (is-Cons!21531 l!412) (= (_2!7621 (h!22729 l!412)) value!115)))))

(declare-fun res!680643 () Bool)

(assert (=> start!87664 (=> (not res!680643) (not e!570394))))

(declare-fun isStrictlySorted!563 (List!21535) Bool)

(assert (=> start!87664 (= res!680643 (isStrictlySorted!563 l!412))))

(assert (=> start!87664 e!570394))

(assert (=> start!87664 e!570393))

(assert (=> start!87664 tp_is_empty!23485))

(assert (= (and start!87664 res!680643) b!1013893))

(assert (= (and b!1013893 res!680644) b!1013889))

(assert (= (and b!1013889 c!102519) b!1013891))

(assert (= (and b!1013889 (not c!102519)) b!1013890))

(assert (= (and start!87664 (is-Cons!21531 l!412)) b!1013892))

(declare-fun m!936771 () Bool)

(assert (=> b!1013889 m!936771))

(declare-fun m!936773 () Bool)

(assert (=> b!1013889 m!936773))

(declare-fun m!936775 () Bool)

(assert (=> b!1013889 m!936775))

(declare-fun m!936777 () Bool)

(assert (=> b!1013891 m!936777))

(declare-fun m!936779 () Bool)

(assert (=> b!1013891 m!936779))

(declare-fun m!936781 () Bool)

(assert (=> start!87664 m!936781))

(push 1)

(assert tp_is_empty!23485)

(assert (not b!1013889))

(assert (not start!87664))

(assert (not b!1013892))

(assert (not b!1013891))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120535 () Bool)

(declare-fun res!680665 () Bool)

(declare-fun e!570422 () Bool)

(assert (=> d!120535 (=> res!680665 e!570422)))

(assert (=> d!120535 (= res!680665 (or (is-Nil!21532 l!412) (is-Nil!21532 (t!30544 l!412))))))

(assert (=> d!120535 (= (isStrictlySorted!563 l!412) e!570422)))

(declare-fun b!1013944 () Bool)

(declare-fun e!570423 () Bool)

(assert (=> b!1013944 (= e!570422 e!570423)))

(declare-fun res!680666 () Bool)

(assert (=> b!1013944 (=> (not res!680666) (not e!570423))))

(assert (=> b!1013944 (= res!680666 (bvslt (_1!7621 (h!22729 l!412)) (_1!7621 (h!22729 (t!30544 l!412)))))))

(declare-fun b!1013945 () Bool)

(assert (=> b!1013945 (= e!570423 (isStrictlySorted!563 (t!30544 l!412)))))

(assert (= (and d!120535 (not res!680665)) b!1013944))

(assert (= (and b!1013944 res!680666) b!1013945))

(declare-fun m!936807 () Bool)

(assert (=> b!1013945 m!936807))

(assert (=> start!87664 d!120535))

(declare-fun d!120541 () Bool)

(declare-fun res!680673 () Bool)

(declare-fun e!570430 () Bool)

(assert (=> d!120541 (=> res!680673 e!570430)))

(assert (=> d!120541 (= res!680673 (is-Nil!21533 (Cons!21532 (_1!7621 (h!22729 l!412)) lt!448277)))))

(assert (=> d!120541 (= (forall!239 (Cons!21532 (_1!7621 (h!22729 l!412)) lt!448277) lambda!602) e!570430)))

(declare-fun b!1013952 () Bool)

(declare-fun e!570431 () Bool)

(assert (=> b!1013952 (= e!570430 e!570431)))

(declare-fun res!680674 () Bool)

(assert (=> b!1013952 (=> (not res!680674) (not e!570431))))

(declare-fun dynLambda!1891 (Int (_ BitVec 64)) Bool)

(assert (=> b!1013952 (= res!680674 (dynLambda!1891 lambda!602 (h!22730 (Cons!21532 (_1!7621 (h!22729 l!412)) lt!448277))))))

(declare-fun b!1013953 () Bool)

(assert (=> b!1013953 (= e!570431 (forall!239 (t!30545 (Cons!21532 (_1!7621 (h!22729 l!412)) lt!448277)) lambda!602))))

(assert (= (and d!120541 (not res!680673)) b!1013952))

(assert (= (and b!1013952 res!680674) b!1013953))

(declare-fun b_lambda!15307 () Bool)

(assert (=> (not b_lambda!15307) (not b!1013952)))

(declare-fun m!936811 () Bool)

(assert (=> b!1013952 m!936811))

(declare-fun m!936813 () Bool)

(assert (=> b!1013953 m!936813))

(assert (=> b!1013889 d!120541))

(declare-fun d!120545 () Bool)

(assert (=> d!120545 (= (isEmpty!831 lt!448277) (is-Nil!21533 lt!448277))))

(assert (=> b!1013889 d!120545))

(declare-fun bs!29010 () Bool)

(declare-fun b!1014020 () Bool)

(assert (= bs!29010 (and b!1014020 b!1013891)))

(declare-fun lambda!634 () Int)

(declare-fun lt!448343 () List!21535)

(declare-fun lt!448344 () tuple2!15222)

(assert (=> bs!29010 (= (= (Cons!21531 lt!448344 lt!448343) l!412) (= lambda!634 lambda!601))))

(declare-fun bs!29011 () Bool)

(assert (= bs!29011 (and b!1014020 b!1013889)))

(assert (=> bs!29011 (= (= (Cons!21531 lt!448344 lt!448343) l!412) (= lambda!634 lambda!602))))

(assert (=> b!1014020 true))

(assert (=> b!1014020 true))

(assert (=> b!1014020 true))

(declare-fun bs!29012 () Bool)

(declare-fun b!1014018 () Bool)

(assert (= bs!29012 (and b!1014018 b!1013891)))

(declare-fun lt!448348 () tuple2!15222)

(declare-fun lt!448339 () List!21535)

(declare-fun lambda!638 () Int)

(assert (=> bs!29012 (= (= (Cons!21531 lt!448348 lt!448339) l!412) (= lambda!638 lambda!601))))

(declare-fun bs!29013 () Bool)

(assert (= bs!29013 (and b!1014018 b!1013889)))

(assert (=> bs!29013 (= (= (Cons!21531 lt!448348 lt!448339) l!412) (= lambda!638 lambda!602))))

(declare-fun bs!29014 () Bool)

(assert (= bs!29014 (and b!1014018 b!1014020)))

(assert (=> bs!29014 (= (= (Cons!21531 lt!448348 lt!448339) (Cons!21531 lt!448344 lt!448343)) (= lambda!638 lambda!634))))

(assert (=> b!1014018 true))

(assert (=> b!1014018 true))

(assert (=> b!1014018 true))

(declare-fun bs!29015 () Bool)

(declare-fun d!120547 () Bool)

(assert (= bs!29015 (and d!120547 b!1013891)))

(declare-fun lambda!641 () Int)

(assert (=> bs!29015 (= (= (t!30544 l!412) l!412) (= lambda!641 lambda!601))))

(declare-fun bs!29016 () Bool)

(assert (= bs!29016 (and d!120547 b!1013889)))

(assert (=> bs!29016 (= (= (t!30544 l!412) l!412) (= lambda!641 lambda!602))))

(declare-fun bs!29017 () Bool)

(assert (= bs!29017 (and d!120547 b!1014020)))

(assert (=> bs!29017 (= (= (t!30544 l!412) (Cons!21531 lt!448344 lt!448343)) (= lambda!641 lambda!634))))

(declare-fun bs!29018 () Bool)

(assert (= bs!29018 (and d!120547 b!1014018)))

(assert (=> bs!29018 (= (= (t!30544 l!412) (Cons!21531 lt!448348 lt!448339)) (= lambda!641 lambda!638))))

(assert (=> d!120547 true))

(assert (=> d!120547 true))

(declare-fun b!1014016 () Bool)

(declare-fun e!570467 () List!21536)

(assert (=> b!1014016 (= e!570467 Nil!21533)))

(declare-fun b!1014017 () Bool)

(declare-fun e!570466 () List!21536)

(assert (=> b!1014017 (= e!570466 e!570467)))

(declare-fun c!102540 () Bool)

(assert (=> b!1014017 (= c!102540 (and (is-Cons!21531 (t!30544 l!412)) (not (= (_2!7621 (h!22729 (t!30544 l!412))) value!115))))))

(declare-fun e!570469 () Unit!33111)

(declare-fun lt!448346 () Unit!33111)

(assert (=> b!1014018 (= e!570469 lt!448346)))

(assert (=> b!1014018 (= lt!448339 (t!30544 (t!30544 l!412)))))

(declare-fun lt!448345 () List!21536)

(declare-fun call!42745 () List!21536)

(assert (=> b!1014018 (= lt!448345 call!42745)))

(assert (=> b!1014018 (= lt!448348 (h!22729 (t!30544 l!412)))))

(declare-fun call!42743 () Unit!33111)

(assert (=> b!1014018 (= lt!448346 call!42743)))

(declare-fun call!42742 () Bool)

(assert (=> b!1014018 call!42742))

(declare-fun b!1014019 () Bool)

(declare-fun lt!448341 () Unit!33111)

(assert (=> b!1014019 (= lt!448341 e!570469)))

(declare-fun c!102539 () Bool)

(declare-fun call!42744 () Bool)

(assert (=> b!1014019 (= c!102539 (not call!42744))))

(declare-fun lt!448349 () List!21536)

(assert (=> b!1014019 (= lt!448349 call!42745)))

(assert (=> b!1014019 (= e!570467 call!42745)))

(assert (=> b!1014020 call!42742))

(declare-fun lt!448347 () Unit!33111)

(assert (=> b!1014020 (= lt!448347 call!42743)))

(assert (=> b!1014020 (= lt!448344 (h!22729 (t!30544 l!412)))))

(declare-fun lt!448350 () List!21536)

(assert (=> b!1014020 (= lt!448350 call!42745)))

(assert (=> b!1014020 (= lt!448343 (t!30544 (t!30544 l!412)))))

(declare-fun e!570468 () Unit!33111)

(assert (=> b!1014020 (= e!570468 lt!448347)))

(declare-fun bm!42740 () Bool)

(assert (=> bm!42740 (= call!42744 (isEmpty!831 call!42745))))

(declare-fun b!1014021 () Bool)

(assert (=> b!1014021 (= e!570466 (Cons!21532 (_1!7621 (h!22729 (t!30544 l!412))) call!42745))))

(declare-fun c!102541 () Bool)

(assert (=> b!1014021 (= c!102541 (not call!42744))))

(declare-fun lt!448340 () Unit!33111)

(assert (=> b!1014021 (= lt!448340 e!570468)))

(declare-fun c!102538 () Bool)

(declare-fun bm!42739 () Bool)

(assert (=> bm!42739 (= call!42742 (forall!239 (ite c!102538 lt!448350 lt!448345) (ite c!102538 lambda!634 lambda!638)))))

(declare-fun lt!448342 () List!21536)

(assert (=> d!120547 (forall!239 lt!448342 lambda!641)))

(assert (=> d!120547 (= lt!448342 e!570466)))

(assert (=> d!120547 (= c!102538 (and (is-Cons!21531 (t!30544 l!412)) (= (_2!7621 (h!22729 (t!30544 l!412))) value!115)))))

(assert (=> d!120547 (isStrictlySorted!563 (t!30544 l!412))))

(assert (=> d!120547 (= (getKeysOf!43 (t!30544 l!412) value!115) lt!448342)))

(declare-fun b!1014022 () Bool)

(declare-fun Unit!33120 () Unit!33111)

(assert (=> b!1014022 (= e!570468 Unit!33120)))

(declare-fun bm!42741 () Bool)

(assert (=> bm!42741 (= call!42743 (lemmaForallGetValueByKeySameWithASmallerHead!34 (ite c!102538 lt!448343 lt!448339) (ite c!102538 lt!448350 lt!448345) value!115 (ite c!102538 lt!448344 lt!448348)))))

(declare-fun bm!42742 () Bool)

(assert (=> bm!42742 (= call!42745 (getKeysOf!43 (t!30544 (t!30544 l!412)) value!115))))

(declare-fun b!1014023 () Bool)

(declare-fun Unit!33121 () Unit!33111)

(assert (=> b!1014023 (= e!570469 Unit!33121)))

(assert (= (and d!120547 c!102538) b!1014021))

(assert (= (and d!120547 (not c!102538)) b!1014017))

(assert (= (and b!1014021 c!102541) b!1014020))

(assert (= (and b!1014021 (not c!102541)) b!1014022))

(assert (= (and b!1014017 c!102540) b!1014019))

(assert (= (and b!1014017 (not c!102540)) b!1014016))

(assert (= (and b!1014019 c!102539) b!1014018))

(assert (= (and b!1014019 (not c!102539)) b!1014023))

(assert (= (or b!1014020 b!1014018) bm!42741))

(assert (= (or b!1014020 b!1014018) bm!42739))

(assert (= (or b!1014021 b!1014020 b!1014018 b!1014019) bm!42742))

(assert (= (or b!1014021 b!1014019) bm!42740))

(declare-fun m!936853 () Bool)

(assert (=> bm!42742 m!936853))

(declare-fun m!936855 () Bool)

(assert (=> bm!42741 m!936855))

(declare-fun m!936857 () Bool)

(assert (=> bm!42739 m!936857))

(declare-fun m!936859 () Bool)

(assert (=> bm!42740 m!936859))

(declare-fun m!936861 () Bool)

(assert (=> d!120547 m!936861))

(assert (=> d!120547 m!936807))

(assert (=> b!1013889 d!120547))

(declare-fun bs!29030 () Bool)

(declare-fun b!1014073 () Bool)

(assert (= bs!29030 (and b!1014073 b!1013889)))

(declare-fun lambda!655 () Int)

(assert (=> bs!29030 (= (= (t!30544 l!412) l!412) (= lambda!655 lambda!602))))

(declare-fun bs!29032 () Bool)

(assert (= bs!29032 (and b!1014073 b!1013891)))

(assert (=> bs!29032 (= (= (t!30544 l!412) l!412) (= lambda!655 lambda!601))))

(declare-fun bs!29035 () Bool)

(assert (= bs!29035 (and b!1014073 b!1014018)))

(assert (=> bs!29035 (= (= (t!30544 l!412) (Cons!21531 lt!448348 lt!448339)) (= lambda!655 lambda!638))))

(declare-fun bs!29037 () Bool)

(assert (= bs!29037 (and b!1014073 b!1014020)))

(assert (=> bs!29037 (= (= (t!30544 l!412) (Cons!21531 lt!448344 lt!448343)) (= lambda!655 lambda!634))))

(declare-fun bs!29038 () Bool)

(assert (= bs!29038 (and b!1014073 d!120547)))

(assert (=> bs!29038 (= lambda!655 lambda!641)))

(assert (=> b!1014073 true))

(assert (=> b!1014073 true))

(declare-fun bs!29046 () Bool)

(declare-fun d!120565 () Bool)

(assert (= bs!29046 (and d!120565 b!1013889)))

(declare-fun lambda!658 () Int)

(assert (=> bs!29046 (= (= (Cons!21531 (h!22729 l!412) (t!30544 l!412)) l!412) (= lambda!658 lambda!602))))

(declare-fun bs!29048 () Bool)

(assert (= bs!29048 (and d!120565 b!1013891)))

(assert (=> bs!29048 (= (= (Cons!21531 (h!22729 l!412) (t!30544 l!412)) l!412) (= lambda!658 lambda!601))))

(declare-fun bs!29051 () Bool)

(assert (= bs!29051 (and d!120565 b!1014020)))

(assert (=> bs!29051 (= (= (Cons!21531 (h!22729 l!412) (t!30544 l!412)) (Cons!21531 lt!448344 lt!448343)) (= lambda!658 lambda!634))))

(declare-fun bs!29053 () Bool)

(assert (= bs!29053 (and d!120565 d!120547)))

(assert (=> bs!29053 (= (= (Cons!21531 (h!22729 l!412) (t!30544 l!412)) (t!30544 l!412)) (= lambda!658 lambda!641))))

(declare-fun bs!29055 () Bool)

(assert (= bs!29055 (and d!120565 b!1014073)))

(assert (=> bs!29055 (= (= (Cons!21531 (h!22729 l!412) (t!30544 l!412)) (t!30544 l!412)) (= lambda!658 lambda!655))))

(declare-fun bs!29057 () Bool)

(assert (= bs!29057 (and d!120565 b!1014018)))

(assert (=> bs!29057 (= (= (Cons!21531 (h!22729 l!412) (t!30544 l!412)) (Cons!21531 lt!448348 lt!448339)) (= lambda!658 lambda!638))))

(assert (=> d!120565 true))

(assert (=> d!120565 true))

(assert (=> d!120565 true))

(assert (=> d!120565 (forall!239 lt!448277 lambda!658)))

(declare-fun lt!448413 () Unit!33111)

(declare-fun choose!1641 (List!21535 List!21536 B!1418 tuple2!15222) Unit!33111)

(assert (=> d!120565 (= lt!448413 (choose!1641 (t!30544 l!412) lt!448277 value!115 (h!22729 l!412)))))

(declare-fun e!570492 () Bool)

(assert (=> d!120565 e!570492))

(declare-fun res!680717 () Bool)

(assert (=> d!120565 (=> (not res!680717) (not e!570492))))

(assert (=> d!120565 (= res!680717 (isStrictlySorted!563 (t!30544 l!412)))))

(assert (=> d!120565 (= (lemmaForallGetValueByKeySameWithASmallerHead!34 (t!30544 l!412) lt!448277 value!115 (h!22729 l!412)) lt!448413)))

(declare-fun b!1014072 () Bool)

(declare-fun res!680715 () Bool)

(assert (=> b!1014072 (=> (not res!680715) (not e!570492))))

(declare-fun isEmpty!836 (List!21535) Bool)

(assert (=> b!1014072 (= res!680715 (not (isEmpty!836 (t!30544 l!412))))))

(declare-fun res!680716 () Bool)

(assert (=> b!1014073 (=> (not res!680716) (not e!570492))))

(assert (=> b!1014073 (= res!680716 (forall!239 lt!448277 lambda!655))))

(declare-fun b!1014074 () Bool)

(declare-fun head!938 (List!21535) tuple2!15222)

(assert (=> b!1014074 (= e!570492 (bvslt (_1!7621 (h!22729 l!412)) (_1!7621 (head!938 (t!30544 l!412)))))))

(assert (= (and d!120565 res!680717) b!1014072))

(assert (= (and b!1014072 res!680715) b!1014073))

(assert (= (and b!1014073 res!680716) b!1014074))

(declare-fun m!936867 () Bool)

(assert (=> d!120565 m!936867))

(declare-fun m!936871 () Bool)

(assert (=> d!120565 m!936871))

(assert (=> d!120565 m!936807))

(declare-fun m!936873 () Bool)

(assert (=> b!1014072 m!936873))

(declare-fun m!936877 () Bool)

(assert (=> b!1014073 m!936877))

(declare-fun m!936879 () Bool)

(assert (=> b!1014074 m!936879))

(assert (=> b!1013891 d!120565))

(declare-fun d!120567 () Bool)

(declare-fun res!680718 () Bool)

(declare-fun e!570493 () Bool)

(assert (=> d!120567 (=> res!680718 e!570493)))

(assert (=> d!120567 (= res!680718 (is-Nil!21533 lt!448277))))

(assert (=> d!120567 (= (forall!239 lt!448277 lambda!601) e!570493)))

(declare-fun b!1014075 () Bool)

(declare-fun e!570494 () Bool)

(assert (=> b!1014075 (= e!570493 e!570494)))

(declare-fun res!680719 () Bool)

(assert (=> b!1014075 (=> (not res!680719) (not e!570494))))

(assert (=> b!1014075 (= res!680719 (dynLambda!1891 lambda!601 (h!22730 lt!448277)))))

(declare-fun b!1014076 () Bool)

(assert (=> b!1014076 (= e!570494 (forall!239 (t!30545 lt!448277) lambda!601))))

(assert (= (and d!120567 (not res!680718)) b!1014075))

(assert (= (and b!1014075 res!680719) b!1014076))

(declare-fun b_lambda!15317 () Bool)

(assert (=> (not b_lambda!15317) (not b!1014075)))

(declare-fun m!936883 () Bool)

(assert (=> b!1014075 m!936883))

(declare-fun m!936887 () Bool)

(assert (=> b!1014076 m!936887))

(assert (=> b!1013891 d!120567))

(declare-fun b!1014085 () Bool)

(declare-fun e!570499 () Bool)

(declare-fun tp!70493 () Bool)

(assert (=> b!1014085 (= e!570499 (and tp_is_empty!23485 tp!70493))))

(assert (=> b!1013892 (= tp!70482 e!570499)))

(assert (= (and b!1013892 (is-Cons!21531 (t!30544 l!412))) b!1014085))

(declare-fun b_lambda!15319 () Bool)

(assert (= b_lambda!15307 (or b!1013889 b_lambda!15319)))

(declare-fun bs!29060 () Bool)

(declare-fun d!120571 () Bool)

(assert (= bs!29060 (and d!120571 b!1013889)))

(declare-datatypes ((Option!579 0))(
  ( (Some!578 (v!14427 B!1418)) (None!577) )
))
(declare-fun getValueByKey!528 (List!21535 (_ BitVec 64)) Option!579)

(assert (=> bs!29060 (= (dynLambda!1891 lambda!602 (h!22730 (Cons!21532 (_1!7621 (h!22729 l!412)) lt!448277))) (= (getValueByKey!528 l!412 (h!22730 (Cons!21532 (_1!7621 (h!22729 l!412)) lt!448277))) (Some!578 value!115)))))

(declare-fun m!936897 () Bool)

(assert (=> bs!29060 m!936897))

(assert (=> b!1013952 d!120571))

(declare-fun b_lambda!15321 () Bool)

(assert (= b_lambda!15317 (or b!1013891 b_lambda!15321)))

(declare-fun bs!29062 () Bool)

(declare-fun d!120575 () Bool)

(assert (= bs!29062 (and d!120575 b!1013891)))

(assert (=> bs!29062 (= (dynLambda!1891 lambda!601 (h!22730 lt!448277)) (= (getValueByKey!528 l!412 (h!22730 lt!448277)) (Some!578 value!115)))))

(declare-fun m!936901 () Bool)

(assert (=> bs!29062 m!936901))

(assert (=> b!1014075 d!120575))

(push 1)

(assert (not b!1014076))

(assert (not b_lambda!15321))

(assert (not bs!29060))

(assert (not b!1014073))

(assert (not bm!42739))

(assert (not b!1013953))

(assert (not bm!42742))

(assert (not b!1014074))

(assert (not d!120547))

(assert (not bm!42740))

(assert tp_is_empty!23485)

(assert (not d!120565))

(assert (not bm!42741))

(assert (not b!1014085))

(assert (not b!1013945))

(assert (not b_lambda!15319))

(assert (not b!1014072))

(assert (not bs!29062))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!29081 () Bool)

(declare-fun b!1014129 () Bool)

(assert (= bs!29081 (and b!1014129 b!1013889)))

(declare-fun lt!448419 () List!21535)

(declare-fun lt!448420 () tuple2!15222)

(declare-fun lambda!664 () Int)

(assert (=> bs!29081 (= (= (Cons!21531 lt!448420 lt!448419) l!412) (= lambda!664 lambda!602))))

(declare-fun bs!29082 () Bool)

(assert (= bs!29082 (and b!1014129 b!1013891)))

(assert (=> bs!29082 (= (= (Cons!21531 lt!448420 lt!448419) l!412) (= lambda!664 lambda!601))))

(declare-fun bs!29083 () Bool)

(assert (= bs!29083 (and b!1014129 b!1014020)))

(assert (=> bs!29083 (= (= (Cons!21531 lt!448420 lt!448419) (Cons!21531 lt!448344 lt!448343)) (= lambda!664 lambda!634))))

(declare-fun bs!29084 () Bool)

(assert (= bs!29084 (and b!1014129 d!120547)))

(assert (=> bs!29084 (= (= (Cons!21531 lt!448420 lt!448419) (t!30544 l!412)) (= lambda!664 lambda!641))))

(declare-fun bs!29085 () Bool)

(assert (= bs!29085 (and b!1014129 b!1014073)))

(assert (=> bs!29085 (= (= (Cons!21531 lt!448420 lt!448419) (t!30544 l!412)) (= lambda!664 lambda!655))))

(declare-fun bs!29087 () Bool)

(assert (= bs!29087 (and b!1014129 b!1014018)))

(assert (=> bs!29087 (= (= (Cons!21531 lt!448420 lt!448419) (Cons!21531 lt!448348 lt!448339)) (= lambda!664 lambda!638))))

(declare-fun bs!29089 () Bool)

(assert (= bs!29089 (and b!1014129 d!120565)))

(assert (=> bs!29089 (= (= (Cons!21531 lt!448420 lt!448419) (Cons!21531 (h!22729 l!412) (t!30544 l!412))) (= lambda!664 lambda!658))))

(assert (=> b!1014129 true))

(assert (=> b!1014129 true))

(assert (=> b!1014129 true))

(declare-fun bs!29096 () Bool)

(declare-fun b!1014127 () Bool)

(assert (= bs!29096 (and b!1014127 b!1013889)))

(declare-fun lt!448424 () tuple2!15222)

(declare-fun lambda!666 () Int)

(declare-fun lt!448415 () List!21535)

(assert (=> bs!29096 (= (= (Cons!21531 lt!448424 lt!448415) l!412) (= lambda!666 lambda!602))))

(declare-fun bs!29098 () Bool)

(assert (= bs!29098 (and b!1014127 b!1013891)))

(assert (=> bs!29098 (= (= (Cons!21531 lt!448424 lt!448415) l!412) (= lambda!666 lambda!601))))

(declare-fun bs!29099 () Bool)

(assert (= bs!29099 (and b!1014127 b!1014020)))

(assert (=> bs!29099 (= (= (Cons!21531 lt!448424 lt!448415) (Cons!21531 lt!448344 lt!448343)) (= lambda!666 lambda!634))))

(declare-fun bs!29101 () Bool)

(assert (= bs!29101 (and b!1014127 d!120547)))

(assert (=> bs!29101 (= (= (Cons!21531 lt!448424 lt!448415) (t!30544 l!412)) (= lambda!666 lambda!641))))

(declare-fun bs!29102 () Bool)

(assert (= bs!29102 (and b!1014127 b!1014129)))

(assert (=> bs!29102 (= (= (Cons!21531 lt!448424 lt!448415) (Cons!21531 lt!448420 lt!448419)) (= lambda!666 lambda!664))))

(declare-fun bs!29103 () Bool)

(assert (= bs!29103 (and b!1014127 b!1014073)))

(assert (=> bs!29103 (= (= (Cons!21531 lt!448424 lt!448415) (t!30544 l!412)) (= lambda!666 lambda!655))))

(declare-fun bs!29104 () Bool)

(assert (= bs!29104 (and b!1014127 b!1014018)))

(assert (=> bs!29104 (= (= (Cons!21531 lt!448424 lt!448415) (Cons!21531 lt!448348 lt!448339)) (= lambda!666 lambda!638))))

(declare-fun bs!29105 () Bool)

(assert (= bs!29105 (and b!1014127 d!120565)))

(assert (=> bs!29105 (= (= (Cons!21531 lt!448424 lt!448415) (Cons!21531 (h!22729 l!412) (t!30544 l!412))) (= lambda!666 lambda!658))))

(assert (=> b!1014127 true))

(assert (=> b!1014127 true))

(assert (=> b!1014127 true))

(declare-fun bs!29106 () Bool)

(declare-fun d!120601 () Bool)

(assert (= bs!29106 (and d!120601 b!1014127)))

(declare-fun lambda!667 () Int)

(assert (=> bs!29106 (= (= (t!30544 (t!30544 l!412)) (Cons!21531 lt!448424 lt!448415)) (= lambda!667 lambda!666))))

(declare-fun bs!29107 () Bool)

(assert (= bs!29107 (and d!120601 b!1013889)))

(assert (=> bs!29107 (= (= (t!30544 (t!30544 l!412)) l!412) (= lambda!667 lambda!602))))

(declare-fun bs!29108 () Bool)

(assert (= bs!29108 (and d!120601 b!1013891)))

(assert (=> bs!29108 (= (= (t!30544 (t!30544 l!412)) l!412) (= lambda!667 lambda!601))))

(declare-fun bs!29109 () Bool)

(assert (= bs!29109 (and d!120601 b!1014020)))

(assert (=> bs!29109 (= (= (t!30544 (t!30544 l!412)) (Cons!21531 lt!448344 lt!448343)) (= lambda!667 lambda!634))))

(declare-fun bs!29110 () Bool)

(assert (= bs!29110 (and d!120601 d!120547)))

(assert (=> bs!29110 (= (= (t!30544 (t!30544 l!412)) (t!30544 l!412)) (= lambda!667 lambda!641))))

(declare-fun bs!29111 () Bool)

(assert (= bs!29111 (and d!120601 b!1014129)))

(assert (=> bs!29111 (= (= (t!30544 (t!30544 l!412)) (Cons!21531 lt!448420 lt!448419)) (= lambda!667 lambda!664))))

(declare-fun bs!29112 () Bool)

(assert (= bs!29112 (and d!120601 b!1014073)))

(assert (=> bs!29112 (= (= (t!30544 (t!30544 l!412)) (t!30544 l!412)) (= lambda!667 lambda!655))))

(declare-fun bs!29113 () Bool)

(assert (= bs!29113 (and d!120601 b!1014018)))

(assert (=> bs!29113 (= (= (t!30544 (t!30544 l!412)) (Cons!21531 lt!448348 lt!448339)) (= lambda!667 lambda!638))))

(declare-fun bs!29114 () Bool)

(assert (= bs!29114 (and d!120601 d!120565)))

(assert (=> bs!29114 (= (= (t!30544 (t!30544 l!412)) (Cons!21531 (h!22729 l!412) (t!30544 l!412))) (= lambda!667 lambda!658))))

(assert (=> d!120601 true))

(assert (=> d!120601 true))

(declare-fun b!1014125 () Bool)

(declare-fun e!570528 () List!21536)

(assert (=> b!1014125 (= e!570528 Nil!21533)))

(declare-fun b!1014126 () Bool)

(declare-fun e!570527 () List!21536)

(assert (=> b!1014126 (= e!570527 e!570528)))

(declare-fun c!102572 () Bool)

(assert (=> b!1014126 (= c!102572 (and (is-Cons!21531 (t!30544 (t!30544 l!412))) (not (= (_2!7621 (h!22729 (t!30544 (t!30544 l!412)))) value!115))))))

(declare-fun e!570530 () Unit!33111)

(declare-fun lt!448422 () Unit!33111)

(assert (=> b!1014127 (= e!570530 lt!448422)))

(assert (=> b!1014127 (= lt!448415 (t!30544 (t!30544 (t!30544 l!412))))))

(declare-fun lt!448421 () List!21536)

(declare-fun call!42773 () List!21536)

(assert (=> b!1014127 (= lt!448421 call!42773)))

(assert (=> b!1014127 (= lt!448424 (h!22729 (t!30544 (t!30544 l!412))))))

(declare-fun call!42771 () Unit!33111)

(assert (=> b!1014127 (= lt!448422 call!42771)))

(declare-fun call!42770 () Bool)

(assert (=> b!1014127 call!42770))

(declare-fun b!1014128 () Bool)

(declare-fun lt!448417 () Unit!33111)

(assert (=> b!1014128 (= lt!448417 e!570530)))

(declare-fun c!102571 () Bool)

(declare-fun call!42772 () Bool)

(assert (=> b!1014128 (= c!102571 (not call!42772))))

(declare-fun lt!448425 () List!21536)

(assert (=> b!1014128 (= lt!448425 call!42773)))

(assert (=> b!1014128 (= e!570528 call!42773)))

(assert (=> b!1014129 call!42770))

(declare-fun lt!448423 () Unit!33111)

(assert (=> b!1014129 (= lt!448423 call!42771)))

(assert (=> b!1014129 (= lt!448420 (h!22729 (t!30544 (t!30544 l!412))))))

(declare-fun lt!448426 () List!21536)

(assert (=> b!1014129 (= lt!448426 call!42773)))

(assert (=> b!1014129 (= lt!448419 (t!30544 (t!30544 (t!30544 l!412))))))

(declare-fun e!570529 () Unit!33111)

(assert (=> b!1014129 (= e!570529 lt!448423)))

(declare-fun bm!42768 () Bool)

(assert (=> bm!42768 (= call!42772 (isEmpty!831 call!42773))))

(declare-fun b!1014130 () Bool)

(assert (=> b!1014130 (= e!570527 (Cons!21532 (_1!7621 (h!22729 (t!30544 (t!30544 l!412)))) call!42773))))

(declare-fun c!102573 () Bool)

(assert (=> b!1014130 (= c!102573 (not call!42772))))

(declare-fun lt!448416 () Unit!33111)

(assert (=> b!1014130 (= lt!448416 e!570529)))

(declare-fun c!102570 () Bool)

(declare-fun bm!42767 () Bool)

(assert (=> bm!42767 (= call!42770 (forall!239 (ite c!102570 lt!448426 lt!448421) (ite c!102570 lambda!664 lambda!666)))))

(declare-fun lt!448418 () List!21536)

(assert (=> d!120601 (forall!239 lt!448418 lambda!667)))

(assert (=> d!120601 (= lt!448418 e!570527)))

(assert (=> d!120601 (= c!102570 (and (is-Cons!21531 (t!30544 (t!30544 l!412))) (= (_2!7621 (h!22729 (t!30544 (t!30544 l!412)))) value!115)))))

(assert (=> d!120601 (isStrictlySorted!563 (t!30544 (t!30544 l!412)))))

(assert (=> d!120601 (= (getKeysOf!43 (t!30544 (t!30544 l!412)) value!115) lt!448418)))

(declare-fun b!1014131 () Bool)

(declare-fun Unit!33126 () Unit!33111)

(assert (=> b!1014131 (= e!570529 Unit!33126)))

(declare-fun bm!42769 () Bool)

(assert (=> bm!42769 (= call!42771 (lemmaForallGetValueByKeySameWithASmallerHead!34 (ite c!102570 lt!448419 lt!448415) (ite c!102570 lt!448426 lt!448421) value!115 (ite c!102570 lt!448420 lt!448424)))))

(declare-fun bm!42770 () Bool)

(assert (=> bm!42770 (= call!42773 (getKeysOf!43 (t!30544 (t!30544 (t!30544 l!412))) value!115))))

(declare-fun b!1014132 () Bool)

(declare-fun Unit!33127 () Unit!33111)

(assert (=> b!1014132 (= e!570530 Unit!33127)))

(assert (= (and d!120601 c!102570) b!1014130))

(assert (= (and d!120601 (not c!102570)) b!1014126))

(assert (= (and b!1014130 c!102573) b!1014129))

(assert (= (and b!1014130 (not c!102573)) b!1014131))

(assert (= (and b!1014126 c!102572) b!1014128))

(assert (= (and b!1014126 (not c!102572)) b!1014125))

(assert (= (and b!1014128 c!102571) b!1014127))

(assert (= (and b!1014128 (not c!102571)) b!1014132))

(assert (= (or b!1014129 b!1014127) bm!42769))

(assert (= (or b!1014129 b!1014127) bm!42767))

(assert (= (or b!1014130 b!1014129 b!1014127 b!1014128) bm!42770))

(assert (= (or b!1014130 b!1014128) bm!42768))

(declare-fun m!936949 () Bool)

(assert (=> bm!42770 m!936949))

(declare-fun m!936951 () Bool)

(assert (=> bm!42769 m!936951))

(declare-fun m!936953 () Bool)

(assert (=> bm!42767 m!936953))

(declare-fun m!936955 () Bool)

(assert (=> bm!42768 m!936955))

(declare-fun m!936957 () Bool)

(assert (=> d!120601 m!936957))

(declare-fun m!936959 () Bool)

(assert (=> d!120601 m!936959))

(assert (=> bm!42742 d!120601))

(declare-fun d!120611 () Bool)

(declare-fun res!680743 () Bool)

(declare-fun e!570537 () Bool)

(assert (=> d!120611 (=> res!680743 e!570537)))

(assert (=> d!120611 (= res!680743 (is-Nil!21533 (ite c!102538 lt!448350 lt!448345)))))

(assert (=> d!120611 (= (forall!239 (ite c!102538 lt!448350 lt!448345) (ite c!102538 lambda!634 lambda!638)) e!570537)))

(declare-fun b!1014139 () Bool)

(declare-fun e!570538 () Bool)

(assert (=> b!1014139 (= e!570537 e!570538)))

(declare-fun res!680744 () Bool)

(assert (=> b!1014139 (=> (not res!680744) (not e!570538))))

(assert (=> b!1014139 (= res!680744 (dynLambda!1891 (ite c!102538 lambda!634 lambda!638) (h!22730 (ite c!102538 lt!448350 lt!448345))))))

(declare-fun b!1014140 () Bool)

(assert (=> b!1014140 (= e!570538 (forall!239 (t!30545 (ite c!102538 lt!448350 lt!448345)) (ite c!102538 lambda!634 lambda!638)))))

(assert (= (and d!120611 (not res!680743)) b!1014139))

(assert (= (and b!1014139 res!680744) b!1014140))

(declare-fun b_lambda!15343 () Bool)

(assert (=> (not b_lambda!15343) (not b!1014139)))

(declare-fun m!936965 () Bool)

(assert (=> b!1014139 m!936965))

(declare-fun m!936967 () Bool)

(assert (=> b!1014140 m!936967))

(assert (=> bm!42739 d!120611))

(declare-fun d!120615 () Bool)

(declare-fun c!102582 () Bool)

(assert (=> d!120615 (= c!102582 (and (is-Cons!21531 l!412) (= (_1!7621 (h!22729 l!412)) (h!22730 lt!448277))))))

(declare-fun e!570547 () Option!579)

(assert (=> d!120615 (= (getValueByKey!528 l!412 (h!22730 lt!448277)) e!570547)))

(declare-fun b!1014157 () Bool)

(assert (=> b!1014157 (= e!570547 (Some!578 (_2!7621 (h!22729 l!412))))))

(declare-fun b!1014158 () Bool)

(declare-fun e!570548 () Option!579)

(assert (=> b!1014158 (= e!570547 e!570548)))

(declare-fun c!102583 () Bool)

(assert (=> b!1014158 (= c!102583 (and (is-Cons!21531 l!412) (not (= (_1!7621 (h!22729 l!412)) (h!22730 lt!448277)))))))

(declare-fun b!1014160 () Bool)

(assert (=> b!1014160 (= e!570548 None!577)))

(declare-fun b!1014159 () Bool)

(assert (=> b!1014159 (= e!570548 (getValueByKey!528 (t!30544 l!412) (h!22730 lt!448277)))))

(assert (= (and d!120615 c!102582) b!1014157))

(assert (= (and d!120615 (not c!102582)) b!1014158))

(assert (= (and b!1014158 c!102583) b!1014159))

(assert (= (and b!1014158 (not c!102583)) b!1014160))

(declare-fun m!936969 () Bool)

(assert (=> b!1014159 m!936969))

(assert (=> bs!29062 d!120615))

(declare-fun d!120617 () Bool)

(declare-fun c!102584 () Bool)

(assert (=> d!120617 (= c!102584 (and (is-Cons!21531 l!412) (= (_1!7621 (h!22729 l!412)) (h!22730 (Cons!21532 (_1!7621 (h!22729 l!412)) lt!448277)))))))

(declare-fun e!570549 () Option!579)

(assert (=> d!120617 (= (getValueByKey!528 l!412 (h!22730 (Cons!21532 (_1!7621 (h!22729 l!412)) lt!448277))) e!570549)))

(declare-fun b!1014161 () Bool)

(assert (=> b!1014161 (= e!570549 (Some!578 (_2!7621 (h!22729 l!412))))))

(declare-fun b!1014162 () Bool)

(declare-fun e!570550 () Option!579)

(assert (=> b!1014162 (= e!570549 e!570550)))

(declare-fun c!102585 () Bool)

(assert (=> b!1014162 (= c!102585 (and (is-Cons!21531 l!412) (not (= (_1!7621 (h!22729 l!412)) (h!22730 (Cons!21532 (_1!7621 (h!22729 l!412)) lt!448277))))))))

(declare-fun b!1014164 () Bool)

(assert (=> b!1014164 (= e!570550 None!577)))

(declare-fun b!1014163 () Bool)

(assert (=> b!1014163 (= e!570550 (getValueByKey!528 (t!30544 l!412) (h!22730 (Cons!21532 (_1!7621 (h!22729 l!412)) lt!448277))))))

(assert (= (and d!120617 c!102584) b!1014161))

(assert (= (and d!120617 (not c!102584)) b!1014162))

(assert (= (and b!1014162 c!102585) b!1014163))

(assert (= (and b!1014162 (not c!102585)) b!1014164))

(declare-fun m!936971 () Bool)

(assert (=> b!1014163 m!936971))

(assert (=> bs!29060 d!120617))

(declare-fun d!120619 () Bool)

(declare-fun res!680745 () Bool)

(declare-fun e!570551 () Bool)

(assert (=> d!120619 (=> res!680745 e!570551)))

(assert (=> d!120619 (= res!680745 (or (is-Nil!21532 (t!30544 l!412)) (is-Nil!21532 (t!30544 (t!30544 l!412)))))))

(assert (=> d!120619 (= (isStrictlySorted!563 (t!30544 l!412)) e!570551)))

(declare-fun b!1014165 () Bool)

(declare-fun e!570552 () Bool)

(assert (=> b!1014165 (= e!570551 e!570552)))

(declare-fun res!680746 () Bool)

(assert (=> b!1014165 (=> (not res!680746) (not e!570552))))

(assert (=> b!1014165 (= res!680746 (bvslt (_1!7621 (h!22729 (t!30544 l!412))) (_1!7621 (h!22729 (t!30544 (t!30544 l!412))))))))

(declare-fun b!1014166 () Bool)

(assert (=> b!1014166 (= e!570552 (isStrictlySorted!563 (t!30544 (t!30544 l!412))))))

(assert (= (and d!120619 (not res!680745)) b!1014165))

(assert (= (and b!1014165 res!680746) b!1014166))

(assert (=> b!1014166 m!936959))

(assert (=> b!1013945 d!120619))

(declare-fun d!120621 () Bool)

(declare-fun res!680747 () Bool)

(declare-fun e!570553 () Bool)

(assert (=> d!120621 (=> res!680747 e!570553)))

(assert (=> d!120621 (= res!680747 (is-Nil!21533 (t!30545 lt!448277)))))

(assert (=> d!120621 (= (forall!239 (t!30545 lt!448277) lambda!601) e!570553)))

(declare-fun b!1014167 () Bool)

(declare-fun e!570554 () Bool)

(assert (=> b!1014167 (= e!570553 e!570554)))

(declare-fun res!680748 () Bool)

(assert (=> b!1014167 (=> (not res!680748) (not e!570554))))

(assert (=> b!1014167 (= res!680748 (dynLambda!1891 lambda!601 (h!22730 (t!30545 lt!448277))))))

(declare-fun b!1014168 () Bool)

(assert (=> b!1014168 (= e!570554 (forall!239 (t!30545 (t!30545 lt!448277)) lambda!601))))

(assert (= (and d!120621 (not res!680747)) b!1014167))

(assert (= (and b!1014167 res!680748) b!1014168))

(declare-fun b_lambda!15345 () Bool)

(assert (=> (not b_lambda!15345) (not b!1014167)))

(declare-fun m!936973 () Bool)

(assert (=> b!1014167 m!936973))

(declare-fun m!936975 () Bool)

(assert (=> b!1014168 m!936975))

(assert (=> b!1014076 d!120621))

(declare-fun d!120623 () Bool)

(declare-fun res!680749 () Bool)

(declare-fun e!570555 () Bool)

(assert (=> d!120623 (=> res!680749 e!570555)))

(assert (=> d!120623 (= res!680749 (is-Nil!21533 (t!30545 (Cons!21532 (_1!7621 (h!22729 l!412)) lt!448277))))))

(assert (=> d!120623 (= (forall!239 (t!30545 (Cons!21532 (_1!7621 (h!22729 l!412)) lt!448277)) lambda!602) e!570555)))

(declare-fun b!1014169 () Bool)

(declare-fun e!570556 () Bool)

(assert (=> b!1014169 (= e!570555 e!570556)))

(declare-fun res!680750 () Bool)

(assert (=> b!1014169 (=> (not res!680750) (not e!570556))))

(assert (=> b!1014169 (= res!680750 (dynLambda!1891 lambda!602 (h!22730 (t!30545 (Cons!21532 (_1!7621 (h!22729 l!412)) lt!448277)))))))

(declare-fun b!1014170 () Bool)

(assert (=> b!1014170 (= e!570556 (forall!239 (t!30545 (t!30545 (Cons!21532 (_1!7621 (h!22729 l!412)) lt!448277))) lambda!602))))

(assert (= (and d!120623 (not res!680749)) b!1014169))

(assert (= (and b!1014169 res!680750) b!1014170))

(declare-fun b_lambda!15347 () Bool)

(assert (=> (not b_lambda!15347) (not b!1014169)))

(declare-fun m!936977 () Bool)

(assert (=> b!1014169 m!936977))

(declare-fun m!936979 () Bool)

(assert (=> b!1014170 m!936979))

(assert (=> b!1013953 d!120623))

(declare-fun d!120625 () Bool)

(assert (=> d!120625 (= (isEmpty!831 call!42745) (is-Nil!21533 call!42745))))

(assert (=> bm!42740 d!120625))

(declare-fun d!120627 () Bool)

(declare-fun res!680751 () Bool)

(declare-fun e!570557 () Bool)

(assert (=> d!120627 (=> res!680751 e!570557)))

(assert (=> d!120627 (= res!680751 (is-Nil!21533 lt!448342))))

(assert (=> d!120627 (= (forall!239 lt!448342 lambda!641) e!570557)))

(declare-fun b!1014171 () Bool)

(declare-fun e!570558 () Bool)

(assert (=> b!1014171 (= e!570557 e!570558)))

(declare-fun res!680752 () Bool)

(assert (=> b!1014171 (=> (not res!680752) (not e!570558))))

(assert (=> b!1014171 (= res!680752 (dynLambda!1891 lambda!641 (h!22730 lt!448342)))))

(declare-fun b!1014172 () Bool)

(assert (=> b!1014172 (= e!570558 (forall!239 (t!30545 lt!448342) lambda!641))))

(assert (= (and d!120627 (not res!680751)) b!1014171))

(assert (= (and b!1014171 res!680752) b!1014172))

(declare-fun b_lambda!15349 () Bool)

(assert (=> (not b_lambda!15349) (not b!1014171)))

(declare-fun m!936981 () Bool)

(assert (=> b!1014171 m!936981))

(declare-fun m!936983 () Bool)

(assert (=> b!1014172 m!936983))

(assert (=> d!120547 d!120627))

(assert (=> d!120547 d!120619))

(declare-fun d!120629 () Bool)

(assert (=> d!120629 (= (isEmpty!836 (t!30544 l!412)) (is-Nil!21532 (t!30544 l!412)))))

(assert (=> b!1014072 d!120629))

(declare-fun d!120631 () Bool)

(declare-fun res!680753 () Bool)

(declare-fun e!570559 () Bool)

(assert (=> d!120631 (=> res!680753 e!570559)))

(assert (=> d!120631 (= res!680753 (is-Nil!21533 lt!448277))))

(assert (=> d!120631 (= (forall!239 lt!448277 lambda!658) e!570559)))

(declare-fun b!1014173 () Bool)

(declare-fun e!570560 () Bool)

(assert (=> b!1014173 (= e!570559 e!570560)))

(declare-fun res!680754 () Bool)

(assert (=> b!1014173 (=> (not res!680754) (not e!570560))))

(assert (=> b!1014173 (= res!680754 (dynLambda!1891 lambda!658 (h!22730 lt!448277)))))

(declare-fun b!1014174 () Bool)

(assert (=> b!1014174 (= e!570560 (forall!239 (t!30545 lt!448277) lambda!658))))

(assert (= (and d!120631 (not res!680753)) b!1014173))

(assert (= (and b!1014173 res!680754) b!1014174))

(declare-fun b_lambda!15351 () Bool)

(assert (=> (not b_lambda!15351) (not b!1014173)))

(declare-fun m!936995 () Bool)

(assert (=> b!1014173 m!936995))

(declare-fun m!936997 () Bool)

(assert (=> b!1014174 m!936997))

(assert (=> d!120565 d!120631))

(declare-fun bs!29153 () Bool)

(declare-fun d!120635 () Bool)

(assert (= bs!29153 (and d!120635 b!1014127)))

(declare-fun lambda!673 () Int)

(assert (=> bs!29153 (= (= (Cons!21531 (h!22729 l!412) (t!30544 l!412)) (Cons!21531 lt!448424 lt!448415)) (= lambda!673 lambda!666))))

(declare-fun bs!29154 () Bool)

(assert (= bs!29154 (and d!120635 b!1013889)))

(assert (=> bs!29154 (= (= (Cons!21531 (h!22729 l!412) (t!30544 l!412)) l!412) (= lambda!673 lambda!602))))

(declare-fun bs!29155 () Bool)

(assert (= bs!29155 (and d!120635 b!1013891)))

(assert (=> bs!29155 (= (= (Cons!21531 (h!22729 l!412) (t!30544 l!412)) l!412) (= lambda!673 lambda!601))))

(declare-fun bs!29156 () Bool)

(assert (= bs!29156 (and d!120635 d!120601)))

(assert (=> bs!29156 (= (= (Cons!21531 (h!22729 l!412) (t!30544 l!412)) (t!30544 (t!30544 l!412))) (= lambda!673 lambda!667))))

(declare-fun bs!29157 () Bool)

(assert (= bs!29157 (and d!120635 b!1014020)))

(assert (=> bs!29157 (= (= (Cons!21531 (h!22729 l!412) (t!30544 l!412)) (Cons!21531 lt!448344 lt!448343)) (= lambda!673 lambda!634))))

(declare-fun bs!29158 () Bool)

(assert (= bs!29158 (and d!120635 d!120547)))

(assert (=> bs!29158 (= (= (Cons!21531 (h!22729 l!412) (t!30544 l!412)) (t!30544 l!412)) (= lambda!673 lambda!641))))

(declare-fun bs!29159 () Bool)

(assert (= bs!29159 (and d!120635 b!1014129)))

(assert (=> bs!29159 (= (= (Cons!21531 (h!22729 l!412) (t!30544 l!412)) (Cons!21531 lt!448420 lt!448419)) (= lambda!673 lambda!664))))

(declare-fun bs!29160 () Bool)

(assert (= bs!29160 (and d!120635 b!1014073)))

(assert (=> bs!29160 (= (= (Cons!21531 (h!22729 l!412) (t!30544 l!412)) (t!30544 l!412)) (= lambda!673 lambda!655))))

(declare-fun bs!29161 () Bool)

(assert (= bs!29161 (and d!120635 b!1014018)))

(assert (=> bs!29161 (= (= (Cons!21531 (h!22729 l!412) (t!30544 l!412)) (Cons!21531 lt!448348 lt!448339)) (= lambda!673 lambda!638))))

(declare-fun bs!29162 () Bool)

(assert (= bs!29162 (and d!120635 d!120565)))

(assert (=> bs!29162 (= lambda!673 lambda!658)))

(assert (=> d!120635 true))

(assert (=> d!120635 true))

(assert (=> d!120635 true))

(assert (=> d!120635 (forall!239 lt!448277 lambda!673)))

(assert (=> d!120635 true))

(declare-fun _$15!113 () Unit!33111)

(assert (=> d!120635 (= (choose!1641 (t!30544 l!412) lt!448277 value!115 (h!22729 l!412)) _$15!113)))

(declare-fun bs!29163 () Bool)

(assert (= bs!29163 d!120635))

(declare-fun m!937007 () Bool)

(assert (=> bs!29163 m!937007))

(assert (=> d!120565 d!120635))

(assert (=> d!120565 d!120619))

(declare-fun d!120647 () Bool)

(declare-fun res!680755 () Bool)

(declare-fun e!570562 () Bool)

(assert (=> d!120647 (=> res!680755 e!570562)))

(assert (=> d!120647 (= res!680755 (is-Nil!21533 lt!448277))))

(assert (=> d!120647 (= (forall!239 lt!448277 lambda!655) e!570562)))

(declare-fun b!1014176 () Bool)

(declare-fun e!570563 () Bool)

(assert (=> b!1014176 (= e!570562 e!570563)))

(declare-fun res!680756 () Bool)

(assert (=> b!1014176 (=> (not res!680756) (not e!570563))))

(assert (=> b!1014176 (= res!680756 (dynLambda!1891 lambda!655 (h!22730 lt!448277)))))

(declare-fun b!1014177 () Bool)

(assert (=> b!1014177 (= e!570563 (forall!239 (t!30545 lt!448277) lambda!655))))

(assert (= (and d!120647 (not res!680755)) b!1014176))

(assert (= (and b!1014176 res!680756) b!1014177))

(declare-fun b_lambda!15363 () Bool)

(assert (=> (not b_lambda!15363) (not b!1014176)))

(declare-fun m!937009 () Bool)

(assert (=> b!1014176 m!937009))

(declare-fun m!937011 () Bool)

(assert (=> b!1014177 m!937011))

(assert (=> b!1014073 d!120647))

(declare-fun bs!29164 () Bool)

(declare-fun b!1014179 () Bool)

(assert (= bs!29164 (and b!1014179 b!1014127)))

(declare-fun lambda!674 () Int)

(assert (=> bs!29164 (= (= (ite c!102538 lt!448343 lt!448339) (Cons!21531 lt!448424 lt!448415)) (= lambda!674 lambda!666))))

(declare-fun bs!29165 () Bool)

(assert (= bs!29165 (and b!1014179 b!1013889)))

(assert (=> bs!29165 (= (= (ite c!102538 lt!448343 lt!448339) l!412) (= lambda!674 lambda!602))))

(declare-fun bs!29166 () Bool)

(assert (= bs!29166 (and b!1014179 b!1013891)))

(assert (=> bs!29166 (= (= (ite c!102538 lt!448343 lt!448339) l!412) (= lambda!674 lambda!601))))

(declare-fun bs!29167 () Bool)

(assert (= bs!29167 (and b!1014179 d!120601)))

(assert (=> bs!29167 (= (= (ite c!102538 lt!448343 lt!448339) (t!30544 (t!30544 l!412))) (= lambda!674 lambda!667))))

(declare-fun bs!29168 () Bool)

(assert (= bs!29168 (and b!1014179 b!1014020)))

(assert (=> bs!29168 (= (= (ite c!102538 lt!448343 lt!448339) (Cons!21531 lt!448344 lt!448343)) (= lambda!674 lambda!634))))

(declare-fun bs!29169 () Bool)

(assert (= bs!29169 (and b!1014179 d!120635)))

(assert (=> bs!29169 (= (= (ite c!102538 lt!448343 lt!448339) (Cons!21531 (h!22729 l!412) (t!30544 l!412))) (= lambda!674 lambda!673))))

(declare-fun bs!29170 () Bool)

(assert (= bs!29170 (and b!1014179 d!120547)))

(assert (=> bs!29170 (= (= (ite c!102538 lt!448343 lt!448339) (t!30544 l!412)) (= lambda!674 lambda!641))))

(declare-fun bs!29171 () Bool)

(assert (= bs!29171 (and b!1014179 b!1014129)))

(assert (=> bs!29171 (= (= (ite c!102538 lt!448343 lt!448339) (Cons!21531 lt!448420 lt!448419)) (= lambda!674 lambda!664))))

(declare-fun bs!29172 () Bool)

(assert (= bs!29172 (and b!1014179 b!1014073)))

(assert (=> bs!29172 (= (= (ite c!102538 lt!448343 lt!448339) (t!30544 l!412)) (= lambda!674 lambda!655))))

(declare-fun bs!29173 () Bool)

(assert (= bs!29173 (and b!1014179 b!1014018)))

(assert (=> bs!29173 (= (= (ite c!102538 lt!448343 lt!448339) (Cons!21531 lt!448348 lt!448339)) (= lambda!674 lambda!638))))

(declare-fun bs!29174 () Bool)

(assert (= bs!29174 (and b!1014179 d!120565)))

(assert (=> bs!29174 (= (= (ite c!102538 lt!448343 lt!448339) (Cons!21531 (h!22729 l!412) (t!30544 l!412))) (= lambda!674 lambda!658))))

(assert (=> b!1014179 true))

(assert (=> b!1014179 true))

(declare-fun bs!29175 () Bool)

(declare-fun d!120649 () Bool)

(assert (= bs!29175 (and d!120649 b!1014127)))

(declare-fun lambda!675 () Int)

(assert (=> bs!29175 (= (= (Cons!21531 (ite c!102538 lt!448344 lt!448348) (ite c!102538 lt!448343 lt!448339)) (Cons!21531 lt!448424 lt!448415)) (= lambda!675 lambda!666))))

(declare-fun bs!29176 () Bool)

(assert (= bs!29176 (and d!120649 b!1013889)))

(assert (=> bs!29176 (= (= (Cons!21531 (ite c!102538 lt!448344 lt!448348) (ite c!102538 lt!448343 lt!448339)) l!412) (= lambda!675 lambda!602))))

(declare-fun bs!29177 () Bool)

(assert (= bs!29177 (and d!120649 b!1013891)))

(assert (=> bs!29177 (= (= (Cons!21531 (ite c!102538 lt!448344 lt!448348) (ite c!102538 lt!448343 lt!448339)) l!412) (= lambda!675 lambda!601))))

(declare-fun bs!29178 () Bool)

(assert (= bs!29178 (and d!120649 b!1014179)))

(assert (=> bs!29178 (= (= (Cons!21531 (ite c!102538 lt!448344 lt!448348) (ite c!102538 lt!448343 lt!448339)) (ite c!102538 lt!448343 lt!448339)) (= lambda!675 lambda!674))))

(declare-fun bs!29179 () Bool)

