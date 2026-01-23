; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!429566 () Bool)

(assert start!429566)

(declare-fun b!4412963 () Bool)

(declare-fun res!1821948 () Bool)

(declare-fun e!2748102 () Bool)

(assert (=> b!4412963 (=> (not res!1821948) (not e!2748102))))

(declare-datatypes ((V!10989 0))(
  ( (V!10990 (val!16865 Int)) )
))
(declare-datatypes ((K!10743 0))(
  ( (K!10744 (val!16866 Int)) )
))
(declare-datatypes ((tuple2!49050 0))(
  ( (tuple2!49051 (_1!27819 K!10743) (_2!27819 V!10989)) )
))
(declare-datatypes ((List!49508 0))(
  ( (Nil!49384) (Cons!49384 (h!55031 tuple2!49050) (t!356446 List!49508)) )
))
(declare-datatypes ((tuple2!49052 0))(
  ( (tuple2!49053 (_1!27820 (_ BitVec 64)) (_2!27820 List!49508)) )
))
(declare-datatypes ((List!49509 0))(
  ( (Nil!49385) (Cons!49385 (h!55032 tuple2!49052) (t!356447 List!49509)) )
))
(declare-datatypes ((ListLongMap!1973 0))(
  ( (ListLongMap!1974 (toList!3323 List!49509)) )
))
(declare-fun lm!1616 () ListLongMap!1973)

(declare-fun key!3717 () K!10743)

(declare-datatypes ((ListMap!2567 0))(
  ( (ListMap!2568 (toList!3324 List!49508)) )
))
(declare-fun contains!11818 (ListMap!2567 K!10743) Bool)

(declare-fun extractMap!729 (List!49509) ListMap!2567)

(assert (=> b!4412963 (= res!1821948 (not (contains!11818 (extractMap!729 (toList!3323 lm!1616)) key!3717)))))

(declare-fun b!4412964 () Bool)

(declare-fun res!1821953 () Bool)

(assert (=> b!4412964 (=> (not res!1821953) (not e!2748102))))

(declare-fun newBucket!194 () List!49508)

(declare-datatypes ((Hashable!5062 0))(
  ( (HashableExt!5061 (__x!30765 Int)) )
))
(declare-fun hashF!1220 () Hashable!5062)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun allKeysSameHash!628 (List!49508 (_ BitVec 64) Hashable!5062) Bool)

(assert (=> b!4412964 (= res!1821953 (allKeysSameHash!628 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4412965 () Bool)

(declare-fun e!2748105 () Bool)

(declare-fun tp!1332326 () Bool)

(assert (=> b!4412965 (= e!2748105 tp!1332326)))

(declare-fun b!4412966 () Bool)

(declare-fun res!1821942 () Bool)

(assert (=> b!4412966 (=> (not res!1821942) (not e!2748102))))

(declare-fun hash!1970 (Hashable!5062 K!10743) (_ BitVec 64))

(assert (=> b!4412966 (= res!1821942 (= (hash!1970 hashF!1220 key!3717) hash!366))))

(declare-fun b!4412967 () Bool)

(declare-fun res!1821940 () Bool)

(declare-fun e!2748107 () Bool)

(assert (=> b!4412967 (=> res!1821940 e!2748107)))

(declare-fun lt!1615004 () ListLongMap!1973)

(declare-fun tail!7156 (List!49509) List!49509)

(assert (=> b!4412967 (= res!1821940 (not (= (tail!7156 (toList!3323 lt!1615004)) (t!356447 (toList!3323 lm!1616)))))))

(declare-fun b!4412968 () Bool)

(declare-fun res!1821950 () Bool)

(assert (=> b!4412968 (=> res!1821950 e!2748107)))

(declare-fun addToMapMapFromBucket!322 (List!49508 ListMap!2567) ListMap!2567)

(assert (=> b!4412968 (= res!1821950 (not (= (extractMap!729 (toList!3323 lt!1615004)) (addToMapMapFromBucket!322 newBucket!194 (extractMap!729 (t!356447 (toList!3323 lm!1616)))))))))

(declare-fun res!1821954 () Bool)

(assert (=> start!429566 (=> (not res!1821954) (not e!2748102))))

(declare-fun lambda!151068 () Int)

(declare-fun forall!9439 (List!49509 Int) Bool)

(assert (=> start!429566 (= res!1821954 (forall!9439 (toList!3323 lm!1616) lambda!151068))))

(assert (=> start!429566 e!2748102))

(declare-fun tp_is_empty!25917 () Bool)

(assert (=> start!429566 tp_is_empty!25917))

(declare-fun tp_is_empty!25919 () Bool)

(assert (=> start!429566 tp_is_empty!25919))

(declare-fun e!2748101 () Bool)

(assert (=> start!429566 e!2748101))

(declare-fun inv!64930 (ListLongMap!1973) Bool)

(assert (=> start!429566 (and (inv!64930 lm!1616) e!2748105)))

(assert (=> start!429566 true))

(declare-fun b!4412962 () Bool)

(declare-fun tp!1332325 () Bool)

(assert (=> b!4412962 (= e!2748101 (and tp_is_empty!25919 tp_is_empty!25917 tp!1332325))))

(declare-fun b!4412969 () Bool)

(declare-fun e!2748103 () Bool)

(assert (=> b!4412969 (= e!2748102 e!2748103)))

(declare-fun res!1821944 () Bool)

(assert (=> b!4412969 (=> (not res!1821944) (not e!2748103))))

(declare-fun e!2748106 () Bool)

(assert (=> b!4412969 (= res!1821944 e!2748106)))

(declare-fun res!1821949 () Bool)

(assert (=> b!4412969 (=> res!1821949 e!2748106)))

(declare-fun e!2748104 () Bool)

(assert (=> b!4412969 (= res!1821949 e!2748104)))

(declare-fun res!1821952 () Bool)

(assert (=> b!4412969 (=> (not res!1821952) (not e!2748104))))

(declare-fun lt!1615002 () Bool)

(assert (=> b!4412969 (= res!1821952 (not lt!1615002))))

(declare-fun lt!1615005 () Bool)

(assert (=> b!4412969 (= lt!1615002 (not lt!1615005))))

(declare-fun contains!11819 (ListLongMap!1973 (_ BitVec 64)) Bool)

(assert (=> b!4412969 (= lt!1615005 (contains!11819 lm!1616 hash!366))))

(declare-fun b!4412970 () Bool)

(assert (=> b!4412970 (= e!2748107 (forall!9439 (t!356447 (toList!3323 lm!1616)) lambda!151068))))

(declare-fun b!4412971 () Bool)

(declare-fun res!1821946 () Bool)

(assert (=> b!4412971 (=> (not res!1821946) (not e!2748103))))

(declare-fun noDuplicateKeys!668 (List!49508) Bool)

(assert (=> b!4412971 (= res!1821946 (noDuplicateKeys!668 newBucket!194))))

(declare-fun newValue!93 () V!10989)

(declare-fun b!4412972 () Bool)

(assert (=> b!4412972 (= e!2748106 (and (not lt!1615005) (= newBucket!194 (Cons!49384 (tuple2!49051 key!3717 newValue!93) Nil!49384))))))

(declare-fun b!4412973 () Bool)

(declare-fun res!1821939 () Bool)

(assert (=> b!4412973 (=> res!1821939 e!2748107)))

(assert (=> b!4412973 (= res!1821939 (or (not (is-Cons!49385 (toList!3323 lm!1616))) (not (= (_1!27820 (h!55032 (toList!3323 lm!1616))) hash!366)) lt!1615002))))

(declare-fun b!4412974 () Bool)

(declare-fun res!1821941 () Bool)

(assert (=> b!4412974 (=> (not res!1821941) (not e!2748103))))

(assert (=> b!4412974 (= res!1821941 (forall!9439 (toList!3323 lm!1616) lambda!151068))))

(declare-fun b!4412975 () Bool)

(declare-fun res!1821943 () Bool)

(assert (=> b!4412975 (=> res!1821943 e!2748107)))

(declare-fun lt!1615001 () tuple2!49052)

(declare-fun head!9147 (List!49509) tuple2!49052)

(assert (=> b!4412975 (= res!1821943 (not (= (head!9147 (toList!3323 lt!1615004)) lt!1615001)))))

(declare-fun b!4412976 () Bool)

(declare-fun res!1821945 () Bool)

(assert (=> b!4412976 (=> (not res!1821945) (not e!2748102))))

(declare-fun allKeysSameHashInMap!774 (ListLongMap!1973 Hashable!5062) Bool)

(assert (=> b!4412976 (= res!1821945 (allKeysSameHashInMap!774 lm!1616 hashF!1220))))

(declare-fun b!4412977 () Bool)

(assert (=> b!4412977 (= e!2748103 (not e!2748107))))

(declare-fun res!1821951 () Bool)

(assert (=> b!4412977 (=> res!1821951 e!2748107)))

(assert (=> b!4412977 (= res!1821951 (not (forall!9439 (toList!3323 lt!1615004) lambda!151068)))))

(assert (=> b!4412977 (forall!9439 (toList!3323 lt!1615004) lambda!151068)))

(declare-fun +!937 (ListLongMap!1973 tuple2!49052) ListLongMap!1973)

(assert (=> b!4412977 (= lt!1615004 (+!937 lm!1616 lt!1615001))))

(assert (=> b!4412977 (= lt!1615001 (tuple2!49053 hash!366 newBucket!194))))

(declare-datatypes ((Unit!80524 0))(
  ( (Unit!80525) )
))
(declare-fun lt!1615003 () Unit!80524)

(declare-fun addValidProp!312 (ListLongMap!1973 Int (_ BitVec 64) List!49508) Unit!80524)

(assert (=> b!4412977 (= lt!1615003 (addValidProp!312 lm!1616 lambda!151068 hash!366 newBucket!194))))

(declare-fun b!4412978 () Bool)

(declare-fun res!1821947 () Bool)

(assert (=> b!4412978 (=> res!1821947 e!2748107)))

(declare-fun apply!11520 (ListLongMap!1973 (_ BitVec 64)) List!49508)

(assert (=> b!4412978 (= res!1821947 (not (= newBucket!194 (Cons!49384 (tuple2!49051 key!3717 newValue!93) (apply!11520 lm!1616 hash!366)))))))

(declare-fun b!4412979 () Bool)

(assert (=> b!4412979 (= e!2748104 (= newBucket!194 (Cons!49384 (tuple2!49051 key!3717 newValue!93) (apply!11520 lm!1616 hash!366))))))

(assert (= (and start!429566 res!1821954) b!4412976))

(assert (= (and b!4412976 res!1821945) b!4412966))

(assert (= (and b!4412966 res!1821942) b!4412964))

(assert (= (and b!4412964 res!1821953) b!4412963))

(assert (= (and b!4412963 res!1821948) b!4412969))

(assert (= (and b!4412969 res!1821952) b!4412979))

(assert (= (and b!4412969 (not res!1821949)) b!4412972))

(assert (= (and b!4412969 res!1821944) b!4412971))

(assert (= (and b!4412971 res!1821946) b!4412974))

(assert (= (and b!4412974 res!1821941) b!4412977))

(assert (= (and b!4412977 (not res!1821951)) b!4412973))

(assert (= (and b!4412973 (not res!1821939)) b!4412975))

(assert (= (and b!4412975 (not res!1821943)) b!4412967))

(assert (= (and b!4412967 (not res!1821940)) b!4412968))

(assert (= (and b!4412968 (not res!1821950)) b!4412978))

(assert (= (and b!4412978 (not res!1821947)) b!4412970))

(assert (= (and start!429566 (is-Cons!49384 newBucket!194)) b!4412962))

(assert (= start!429566 b!4412965))

(declare-fun m!5088543 () Bool)

(assert (=> b!4412977 m!5088543))

(assert (=> b!4412977 m!5088543))

(declare-fun m!5088545 () Bool)

(assert (=> b!4412977 m!5088545))

(declare-fun m!5088547 () Bool)

(assert (=> b!4412977 m!5088547))

(declare-fun m!5088549 () Bool)

(assert (=> b!4412979 m!5088549))

(declare-fun m!5088551 () Bool)

(assert (=> b!4412964 m!5088551))

(declare-fun m!5088553 () Bool)

(assert (=> b!4412971 m!5088553))

(declare-fun m!5088555 () Bool)

(assert (=> b!4412967 m!5088555))

(declare-fun m!5088557 () Bool)

(assert (=> b!4412968 m!5088557))

(declare-fun m!5088559 () Bool)

(assert (=> b!4412968 m!5088559))

(assert (=> b!4412968 m!5088559))

(declare-fun m!5088561 () Bool)

(assert (=> b!4412968 m!5088561))

(assert (=> b!4412978 m!5088549))

(declare-fun m!5088563 () Bool)

(assert (=> b!4412966 m!5088563))

(declare-fun m!5088565 () Bool)

(assert (=> b!4412969 m!5088565))

(declare-fun m!5088567 () Bool)

(assert (=> b!4412976 m!5088567))

(declare-fun m!5088569 () Bool)

(assert (=> b!4412974 m!5088569))

(declare-fun m!5088571 () Bool)

(assert (=> b!4412963 m!5088571))

(assert (=> b!4412963 m!5088571))

(declare-fun m!5088573 () Bool)

(assert (=> b!4412963 m!5088573))

(declare-fun m!5088575 () Bool)

(assert (=> b!4412975 m!5088575))

(assert (=> start!429566 m!5088569))

(declare-fun m!5088577 () Bool)

(assert (=> start!429566 m!5088577))

(declare-fun m!5088579 () Bool)

(assert (=> b!4412970 m!5088579))

(push 1)

(assert (not b!4412964))

(assert (not b!4412968))

(assert (not b!4412974))

(assert (not b!4412963))

(assert (not b!4412977))

(assert (not b!4412970))

(assert (not b!4412975))

(assert (not b!4412965))

(assert (not b!4412979))

(assert (not b!4412971))

(assert tp_is_empty!25917)

(assert tp_is_empty!25919)

(assert (not b!4412967))

(assert (not b!4412962))

(assert (not b!4412976))

(assert (not b!4412969))

(assert (not b!4412978))

(assert (not b!4412966))

(assert (not start!429566))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!752911 () Bool)

(declare-fun d!1337287 () Bool)

(assert (= bs!752911 (and d!1337287 start!429566)))

(declare-fun lambda!151082 () Int)

(assert (=> bs!752911 (= lambda!151082 lambda!151068)))

(declare-fun lt!1615023 () ListMap!2567)

(declare-fun invariantList!769 (List!49508) Bool)

(assert (=> d!1337287 (invariantList!769 (toList!3324 lt!1615023))))

(declare-fun e!2748131 () ListMap!2567)

(assert (=> d!1337287 (= lt!1615023 e!2748131)))

(declare-fun c!751552 () Bool)

(assert (=> d!1337287 (= c!751552 (is-Cons!49385 (toList!3323 lt!1615004)))))

(assert (=> d!1337287 (forall!9439 (toList!3323 lt!1615004) lambda!151082)))

(assert (=> d!1337287 (= (extractMap!729 (toList!3323 lt!1615004)) lt!1615023)))

(declare-fun b!4413038 () Bool)

(assert (=> b!4413038 (= e!2748131 (addToMapMapFromBucket!322 (_2!27820 (h!55032 (toList!3323 lt!1615004))) (extractMap!729 (t!356447 (toList!3323 lt!1615004)))))))

(declare-fun b!4413039 () Bool)

(assert (=> b!4413039 (= e!2748131 (ListMap!2568 Nil!49384))))

(assert (= (and d!1337287 c!751552) b!4413038))

(assert (= (and d!1337287 (not c!751552)) b!4413039))

(declare-fun m!5088619 () Bool)

(assert (=> d!1337287 m!5088619))

(declare-fun m!5088621 () Bool)

(assert (=> d!1337287 m!5088621))

(declare-fun m!5088623 () Bool)

(assert (=> b!4413038 m!5088623))

(assert (=> b!4413038 m!5088623))

(declare-fun m!5088625 () Bool)

(assert (=> b!4413038 m!5088625))

(assert (=> b!4412968 d!1337287))

(declare-fun b!4413087 () Bool)

(assert (=> b!4413087 true))

(declare-fun bs!752914 () Bool)

(declare-fun b!4413088 () Bool)

(assert (= bs!752914 (and b!4413088 b!4413087)))

(declare-fun lambda!151118 () Int)

(declare-fun lambda!151117 () Int)

(assert (=> bs!752914 (= lambda!151118 lambda!151117)))

(assert (=> b!4413088 true))

(declare-fun lambda!151119 () Int)

(declare-fun lt!1615103 () ListMap!2567)

(assert (=> bs!752914 (= (= lt!1615103 (extractMap!729 (t!356447 (toList!3323 lm!1616)))) (= lambda!151119 lambda!151117))))

(assert (=> b!4413088 (= (= lt!1615103 (extractMap!729 (t!356447 (toList!3323 lm!1616)))) (= lambda!151119 lambda!151118))))

(assert (=> b!4413088 true))

(declare-fun bs!752915 () Bool)

(declare-fun d!1337289 () Bool)

(assert (= bs!752915 (and d!1337289 b!4413087)))

(declare-fun lambda!151120 () Int)

(declare-fun lt!1615100 () ListMap!2567)

(assert (=> bs!752915 (= (= lt!1615100 (extractMap!729 (t!356447 (toList!3323 lm!1616)))) (= lambda!151120 lambda!151117))))

(declare-fun bs!752916 () Bool)

(assert (= bs!752916 (and d!1337289 b!4413088)))

(assert (=> bs!752916 (= (= lt!1615100 (extractMap!729 (t!356447 (toList!3323 lm!1616)))) (= lambda!151120 lambda!151118))))

(assert (=> bs!752916 (= (= lt!1615100 lt!1615103) (= lambda!151120 lambda!151119))))

(assert (=> d!1337289 true))

(declare-fun e!2748161 () ListMap!2567)

(assert (=> b!4413087 (= e!2748161 (extractMap!729 (t!356447 (toList!3323 lm!1616))))))

(declare-fun lt!1615099 () Unit!80524)

(declare-fun call!307136 () Unit!80524)

(assert (=> b!4413087 (= lt!1615099 call!307136)))

(declare-fun call!307137 () Bool)

(assert (=> b!4413087 call!307137))

(declare-fun lt!1615106 () Unit!80524)

(assert (=> b!4413087 (= lt!1615106 lt!1615099)))

(declare-fun call!307138 () Bool)

(assert (=> b!4413087 call!307138))

(declare-fun lt!1615095 () Unit!80524)

(declare-fun Unit!80528 () Unit!80524)

(assert (=> b!4413087 (= lt!1615095 Unit!80528)))

(assert (=> b!4413088 (= e!2748161 lt!1615103)))

(declare-fun lt!1615096 () ListMap!2567)

(declare-fun +!939 (ListMap!2567 tuple2!49050) ListMap!2567)

(assert (=> b!4413088 (= lt!1615096 (+!939 (extractMap!729 (t!356447 (toList!3323 lm!1616))) (h!55031 newBucket!194)))))

(assert (=> b!4413088 (= lt!1615103 (addToMapMapFromBucket!322 (t!356446 newBucket!194) (+!939 (extractMap!729 (t!356447 (toList!3323 lm!1616))) (h!55031 newBucket!194))))))

(declare-fun lt!1615105 () Unit!80524)

(assert (=> b!4413088 (= lt!1615105 call!307136)))

(assert (=> b!4413088 call!307138))

(declare-fun lt!1615104 () Unit!80524)

(assert (=> b!4413088 (= lt!1615104 lt!1615105)))

(declare-fun forall!9441 (List!49508 Int) Bool)

(assert (=> b!4413088 (forall!9441 (toList!3324 lt!1615096) lambda!151119)))

(declare-fun lt!1615094 () Unit!80524)

(declare-fun Unit!80529 () Unit!80524)

(assert (=> b!4413088 (= lt!1615094 Unit!80529)))

(assert (=> b!4413088 (forall!9441 (t!356446 newBucket!194) lambda!151119)))

(declare-fun lt!1615111 () Unit!80524)

(declare-fun Unit!80530 () Unit!80524)

(assert (=> b!4413088 (= lt!1615111 Unit!80530)))

(declare-fun lt!1615093 () Unit!80524)

(declare-fun Unit!80531 () Unit!80524)

(assert (=> b!4413088 (= lt!1615093 Unit!80531)))

(declare-fun lt!1615107 () Unit!80524)

(declare-fun forallContained!2056 (List!49508 Int tuple2!49050) Unit!80524)

(assert (=> b!4413088 (= lt!1615107 (forallContained!2056 (toList!3324 lt!1615096) lambda!151119 (h!55031 newBucket!194)))))

(assert (=> b!4413088 (contains!11818 lt!1615096 (_1!27819 (h!55031 newBucket!194)))))

(declare-fun lt!1615109 () Unit!80524)

(declare-fun Unit!80532 () Unit!80524)

(assert (=> b!4413088 (= lt!1615109 Unit!80532)))

(assert (=> b!4413088 (contains!11818 lt!1615103 (_1!27819 (h!55031 newBucket!194)))))

(declare-fun lt!1615101 () Unit!80524)

(declare-fun Unit!80533 () Unit!80524)

(assert (=> b!4413088 (= lt!1615101 Unit!80533)))

(assert (=> b!4413088 (forall!9441 newBucket!194 lambda!151119)))

(declare-fun lt!1615110 () Unit!80524)

(declare-fun Unit!80534 () Unit!80524)

(assert (=> b!4413088 (= lt!1615110 Unit!80534)))

(assert (=> b!4413088 (forall!9441 (toList!3324 lt!1615096) lambda!151119)))

(declare-fun lt!1615102 () Unit!80524)

(declare-fun Unit!80535 () Unit!80524)

(assert (=> b!4413088 (= lt!1615102 Unit!80535)))

(declare-fun lt!1615097 () Unit!80524)

(declare-fun Unit!80536 () Unit!80524)

(assert (=> b!4413088 (= lt!1615097 Unit!80536)))

(declare-fun lt!1615112 () Unit!80524)

(declare-fun addForallContainsKeyThenBeforeAdding!146 (ListMap!2567 ListMap!2567 K!10743 V!10989) Unit!80524)

(assert (=> b!4413088 (= lt!1615112 (addForallContainsKeyThenBeforeAdding!146 (extractMap!729 (t!356447 (toList!3323 lm!1616))) lt!1615103 (_1!27819 (h!55031 newBucket!194)) (_2!27819 (h!55031 newBucket!194))))))

(assert (=> b!4413088 call!307137))

(declare-fun lt!1615098 () Unit!80524)

(assert (=> b!4413088 (= lt!1615098 lt!1615112)))

(assert (=> b!4413088 (forall!9441 (toList!3324 (extractMap!729 (t!356447 (toList!3323 lm!1616)))) lambda!151119)))

(declare-fun lt!1615113 () Unit!80524)

(declare-fun Unit!80537 () Unit!80524)

(assert (=> b!4413088 (= lt!1615113 Unit!80537)))

(declare-fun res!1822020 () Bool)

(assert (=> b!4413088 (= res!1822020 (forall!9441 newBucket!194 lambda!151119))))

(declare-fun e!2748160 () Bool)

(assert (=> b!4413088 (=> (not res!1822020) (not e!2748160))))

(assert (=> b!4413088 e!2748160))

(declare-fun lt!1615108 () Unit!80524)

(declare-fun Unit!80538 () Unit!80524)

(assert (=> b!4413088 (= lt!1615108 Unit!80538)))

(declare-fun e!2748159 () Bool)

(assert (=> d!1337289 e!2748159))

(declare-fun res!1822019 () Bool)

(assert (=> d!1337289 (=> (not res!1822019) (not e!2748159))))

(assert (=> d!1337289 (= res!1822019 (forall!9441 newBucket!194 lambda!151120))))

(assert (=> d!1337289 (= lt!1615100 e!2748161)))

(declare-fun c!751567 () Bool)

(assert (=> d!1337289 (= c!751567 (is-Nil!49384 newBucket!194))))

(assert (=> d!1337289 (noDuplicateKeys!668 newBucket!194)))

(assert (=> d!1337289 (= (addToMapMapFromBucket!322 newBucket!194 (extractMap!729 (t!356447 (toList!3323 lm!1616)))) lt!1615100)))

(declare-fun bm!307131 () Bool)

(assert (=> bm!307131 (= call!307138 (forall!9441 (toList!3324 (extractMap!729 (t!356447 (toList!3323 lm!1616)))) (ite c!751567 lambda!151117 lambda!151118)))))

(declare-fun b!4413089 () Bool)

(assert (=> b!4413089 (= e!2748159 (invariantList!769 (toList!3324 lt!1615100)))))

(declare-fun b!4413090 () Bool)

(declare-fun res!1822018 () Bool)

(assert (=> b!4413090 (=> (not res!1822018) (not e!2748159))))

(assert (=> b!4413090 (= res!1822018 (forall!9441 (toList!3324 (extractMap!729 (t!356447 (toList!3323 lm!1616)))) lambda!151120))))

(declare-fun bm!307132 () Bool)

(assert (=> bm!307132 (= call!307137 (forall!9441 (toList!3324 (extractMap!729 (t!356447 (toList!3323 lm!1616)))) (ite c!751567 lambda!151117 lambda!151119)))))

(declare-fun b!4413091 () Bool)

(assert (=> b!4413091 (= e!2748160 (forall!9441 (toList!3324 (extractMap!729 (t!356447 (toList!3323 lm!1616)))) lambda!151119))))

(declare-fun bm!307133 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!146 (ListMap!2567) Unit!80524)

(assert (=> bm!307133 (= call!307136 (lemmaContainsAllItsOwnKeys!146 (extractMap!729 (t!356447 (toList!3323 lm!1616)))))))

(assert (= (and d!1337289 c!751567) b!4413087))

(assert (= (and d!1337289 (not c!751567)) b!4413088))

(assert (= (and b!4413088 res!1822020) b!4413091))

(assert (= (or b!4413087 b!4413088) bm!307133))

(assert (= (or b!4413087 b!4413088) bm!307132))

(assert (= (or b!4413087 b!4413088) bm!307131))

(assert (= (and d!1337289 res!1822019) b!4413090))

(assert (= (and b!4413090 res!1822018) b!4413089))

(declare-fun m!5088655 () Bool)

(assert (=> b!4413090 m!5088655))

(declare-fun m!5088657 () Bool)

(assert (=> d!1337289 m!5088657))

(assert (=> d!1337289 m!5088553))

(assert (=> bm!307133 m!5088559))

(declare-fun m!5088659 () Bool)

(assert (=> bm!307133 m!5088659))

(declare-fun m!5088661 () Bool)

(assert (=> bm!307131 m!5088661))

(declare-fun m!5088663 () Bool)

(assert (=> b!4413091 m!5088663))

(declare-fun m!5088665 () Bool)

(assert (=> bm!307132 m!5088665))

(declare-fun m!5088667 () Bool)

(assert (=> b!4413089 m!5088667))

(declare-fun m!5088669 () Bool)

(assert (=> b!4413088 m!5088669))

(declare-fun m!5088671 () Bool)

(assert (=> b!4413088 m!5088671))

(declare-fun m!5088673 () Bool)

(assert (=> b!4413088 m!5088673))

(declare-fun m!5088675 () Bool)

(assert (=> b!4413088 m!5088675))

(declare-fun m!5088677 () Bool)

(assert (=> b!4413088 m!5088677))

(declare-fun m!5088679 () Bool)

(assert (=> b!4413088 m!5088679))

(declare-fun m!5088681 () Bool)

(assert (=> b!4413088 m!5088681))

(declare-fun m!5088683 () Bool)

(assert (=> b!4413088 m!5088683))

(assert (=> b!4413088 m!5088683))

(assert (=> b!4413088 m!5088559))

(declare-fun m!5088685 () Bool)

(assert (=> b!4413088 m!5088685))

(assert (=> b!4413088 m!5088559))

(assert (=> b!4413088 m!5088669))

(assert (=> b!4413088 m!5088681))

(assert (=> b!4413088 m!5088663))

(assert (=> b!4412968 d!1337289))

(declare-fun bs!752917 () Bool)

(declare-fun d!1337299 () Bool)

(assert (= bs!752917 (and d!1337299 start!429566)))

(declare-fun lambda!151121 () Int)

(assert (=> bs!752917 (= lambda!151121 lambda!151068)))

(declare-fun bs!752918 () Bool)

(assert (= bs!752918 (and d!1337299 d!1337287)))

(assert (=> bs!752918 (= lambda!151121 lambda!151082)))

(declare-fun lt!1615114 () ListMap!2567)

(assert (=> d!1337299 (invariantList!769 (toList!3324 lt!1615114))))

(declare-fun e!2748166 () ListMap!2567)

(assert (=> d!1337299 (= lt!1615114 e!2748166)))

(declare-fun c!751568 () Bool)

(assert (=> d!1337299 (= c!751568 (is-Cons!49385 (t!356447 (toList!3323 lm!1616))))))

(assert (=> d!1337299 (forall!9439 (t!356447 (toList!3323 lm!1616)) lambda!151121)))

(assert (=> d!1337299 (= (extractMap!729 (t!356447 (toList!3323 lm!1616))) lt!1615114)))

(declare-fun b!4413098 () Bool)

(assert (=> b!4413098 (= e!2748166 (addToMapMapFromBucket!322 (_2!27820 (h!55032 (t!356447 (toList!3323 lm!1616)))) (extractMap!729 (t!356447 (t!356447 (toList!3323 lm!1616))))))))

(declare-fun b!4413099 () Bool)

(assert (=> b!4413099 (= e!2748166 (ListMap!2568 Nil!49384))))

(assert (= (and d!1337299 c!751568) b!4413098))

(assert (= (and d!1337299 (not c!751568)) b!4413099))

(declare-fun m!5088687 () Bool)

(assert (=> d!1337299 m!5088687))

(declare-fun m!5088689 () Bool)

(assert (=> d!1337299 m!5088689))

(declare-fun m!5088691 () Bool)

(assert (=> b!4413098 m!5088691))

(assert (=> b!4413098 m!5088691))

(declare-fun m!5088693 () Bool)

(assert (=> b!4413098 m!5088693))

(assert (=> b!4412968 d!1337299))

(declare-fun d!1337301 () Bool)

(declare-datatypes ((Option!10651 0))(
  ( (None!10650) (Some!10650 (v!43810 List!49508)) )
))
(declare-fun get!16083 (Option!10651) List!49508)

(declare-fun getValueByKey!637 (List!49509 (_ BitVec 64)) Option!10651)

(assert (=> d!1337301 (= (apply!11520 lm!1616 hash!366) (get!16083 (getValueByKey!637 (toList!3323 lm!1616) hash!366)))))

(declare-fun bs!752919 () Bool)

(assert (= bs!752919 d!1337301))

(declare-fun m!5088699 () Bool)

(assert (=> bs!752919 m!5088699))

(assert (=> bs!752919 m!5088699))

(declare-fun m!5088701 () Bool)

(assert (=> bs!752919 m!5088701))

(assert (=> b!4412979 d!1337301))

(assert (=> b!4412978 d!1337301))

(declare-fun d!1337307 () Bool)

(declare-fun e!2748174 () Bool)

(assert (=> d!1337307 e!2748174))

(declare-fun res!1822029 () Bool)

(assert (=> d!1337307 (=> res!1822029 e!2748174)))

(declare-fun lt!1615126 () Bool)

(assert (=> d!1337307 (= res!1822029 (not lt!1615126))))

(declare-fun lt!1615124 () Bool)

(assert (=> d!1337307 (= lt!1615126 lt!1615124)))

(declare-fun lt!1615123 () Unit!80524)

(declare-fun e!2748173 () Unit!80524)

(assert (=> d!1337307 (= lt!1615123 e!2748173)))

(declare-fun c!751571 () Bool)

(assert (=> d!1337307 (= c!751571 lt!1615124)))

(declare-fun containsKey!1001 (List!49509 (_ BitVec 64)) Bool)

(assert (=> d!1337307 (= lt!1615124 (containsKey!1001 (toList!3323 lm!1616) hash!366))))

(assert (=> d!1337307 (= (contains!11819 lm!1616 hash!366) lt!1615126)))

(declare-fun b!4413108 () Bool)

(declare-fun lt!1615125 () Unit!80524)

(assert (=> b!4413108 (= e!2748173 lt!1615125)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!547 (List!49509 (_ BitVec 64)) Unit!80524)

(assert (=> b!4413108 (= lt!1615125 (lemmaContainsKeyImpliesGetValueByKeyDefined!547 (toList!3323 lm!1616) hash!366))))

(declare-fun isDefined!7944 (Option!10651) Bool)

(assert (=> b!4413108 (isDefined!7944 (getValueByKey!637 (toList!3323 lm!1616) hash!366))))

(declare-fun b!4413109 () Bool)

(declare-fun Unit!80539 () Unit!80524)

(assert (=> b!4413109 (= e!2748173 Unit!80539)))

(declare-fun b!4413110 () Bool)

(assert (=> b!4413110 (= e!2748174 (isDefined!7944 (getValueByKey!637 (toList!3323 lm!1616) hash!366)))))

(assert (= (and d!1337307 c!751571) b!4413108))

(assert (= (and d!1337307 (not c!751571)) b!4413109))

(assert (= (and d!1337307 (not res!1822029)) b!4413110))

(declare-fun m!5088703 () Bool)

(assert (=> d!1337307 m!5088703))

(declare-fun m!5088705 () Bool)

(assert (=> b!4413108 m!5088705))

(assert (=> b!4413108 m!5088699))

(assert (=> b!4413108 m!5088699))

(declare-fun m!5088707 () Bool)

(assert (=> b!4413108 m!5088707))

(assert (=> b!4413110 m!5088699))

(assert (=> b!4413110 m!5088699))

(assert (=> b!4413110 m!5088707))

(assert (=> b!4412969 d!1337307))

(declare-fun bs!752920 () Bool)

(declare-fun d!1337309 () Bool)

(assert (= bs!752920 (and d!1337309 start!429566)))

(declare-fun lambda!151124 () Int)

(assert (=> bs!752920 (not (= lambda!151124 lambda!151068))))

(declare-fun bs!752921 () Bool)

(assert (= bs!752921 (and d!1337309 d!1337287)))

(assert (=> bs!752921 (not (= lambda!151124 lambda!151082))))

(declare-fun bs!752922 () Bool)

(assert (= bs!752922 (and d!1337309 d!1337299)))

(assert (=> bs!752922 (not (= lambda!151124 lambda!151121))))

(assert (=> d!1337309 true))

(assert (=> d!1337309 (= (allKeysSameHashInMap!774 lm!1616 hashF!1220) (forall!9439 (toList!3323 lm!1616) lambda!151124))))

(declare-fun bs!752923 () Bool)

(assert (= bs!752923 d!1337309))

(declare-fun m!5088709 () Bool)

(assert (=> bs!752923 m!5088709))

(assert (=> b!4412976 d!1337309))

(declare-fun d!1337311 () Bool)

(declare-fun res!1822034 () Bool)

(declare-fun e!2748179 () Bool)

(assert (=> d!1337311 (=> res!1822034 e!2748179)))

(assert (=> d!1337311 (= res!1822034 (is-Nil!49385 (toList!3323 lm!1616)))))

(assert (=> d!1337311 (= (forall!9439 (toList!3323 lm!1616) lambda!151068) e!2748179)))

(declare-fun b!4413117 () Bool)

(declare-fun e!2748180 () Bool)

(assert (=> b!4413117 (= e!2748179 e!2748180)))

(declare-fun res!1822035 () Bool)

(assert (=> b!4413117 (=> (not res!1822035) (not e!2748180))))

(declare-fun dynLambda!20799 (Int tuple2!49052) Bool)

(assert (=> b!4413117 (= res!1822035 (dynLambda!20799 lambda!151068 (h!55032 (toList!3323 lm!1616))))))

(declare-fun b!4413118 () Bool)

(assert (=> b!4413118 (= e!2748180 (forall!9439 (t!356447 (toList!3323 lm!1616)) lambda!151068))))

(assert (= (and d!1337311 (not res!1822034)) b!4413117))

(assert (= (and b!4413117 res!1822035) b!4413118))

(declare-fun b_lambda!142009 () Bool)

(assert (=> (not b_lambda!142009) (not b!4413117)))

(declare-fun m!5088711 () Bool)

(assert (=> b!4413117 m!5088711))

(assert (=> b!4413118 m!5088579))

(assert (=> start!429566 d!1337311))

(declare-fun d!1337313 () Bool)

(declare-fun isStrictlySorted!195 (List!49509) Bool)

(assert (=> d!1337313 (= (inv!64930 lm!1616) (isStrictlySorted!195 (toList!3323 lm!1616)))))

(declare-fun bs!752924 () Bool)

(assert (= bs!752924 d!1337313))

(declare-fun m!5088713 () Bool)

(assert (=> bs!752924 m!5088713))

(assert (=> start!429566 d!1337313))

(declare-fun d!1337315 () Bool)

(assert (=> d!1337315 (= (tail!7156 (toList!3323 lt!1615004)) (t!356447 (toList!3323 lt!1615004)))))

(assert (=> b!4412967 d!1337315))

(declare-fun d!1337317 () Bool)

(declare-fun hash!1972 (Hashable!5062 K!10743) (_ BitVec 64))

(assert (=> d!1337317 (= (hash!1970 hashF!1220 key!3717) (hash!1972 hashF!1220 key!3717))))

(declare-fun bs!752925 () Bool)

(assert (= bs!752925 d!1337317))

(declare-fun m!5088715 () Bool)

(assert (=> bs!752925 m!5088715))

(assert (=> b!4412966 d!1337317))

(declare-fun d!1337319 () Bool)

(declare-fun res!1822038 () Bool)

(declare-fun e!2748185 () Bool)

(assert (=> d!1337319 (=> res!1822038 e!2748185)))

(assert (=> d!1337319 (= res!1822038 (is-Nil!49385 (toList!3323 lt!1615004)))))

(assert (=> d!1337319 (= (forall!9439 (toList!3323 lt!1615004) lambda!151068) e!2748185)))

(declare-fun b!4413125 () Bool)

(declare-fun e!2748186 () Bool)

(assert (=> b!4413125 (= e!2748185 e!2748186)))

(declare-fun res!1822039 () Bool)

(assert (=> b!4413125 (=> (not res!1822039) (not e!2748186))))

(assert (=> b!4413125 (= res!1822039 (dynLambda!20799 lambda!151068 (h!55032 (toList!3323 lt!1615004))))))

(declare-fun b!4413126 () Bool)

(assert (=> b!4413126 (= e!2748186 (forall!9439 (t!356447 (toList!3323 lt!1615004)) lambda!151068))))

(assert (= (and d!1337319 (not res!1822038)) b!4413125))

(assert (= (and b!4413125 res!1822039) b!4413126))

(declare-fun b_lambda!142011 () Bool)

(assert (=> (not b_lambda!142011) (not b!4413125)))

(declare-fun m!5088717 () Bool)

(assert (=> b!4413125 m!5088717))

(declare-fun m!5088719 () Bool)

(assert (=> b!4413126 m!5088719))

(assert (=> b!4412977 d!1337319))

(declare-fun d!1337321 () Bool)

(declare-fun e!2748197 () Bool)

(assert (=> d!1337321 e!2748197))

(declare-fun res!1822052 () Bool)

(assert (=> d!1337321 (=> (not res!1822052) (not e!2748197))))

(declare-fun lt!1615148 () ListLongMap!1973)

(assert (=> d!1337321 (= res!1822052 (contains!11819 lt!1615148 (_1!27820 lt!1615001)))))

(declare-fun lt!1615150 () List!49509)

(assert (=> d!1337321 (= lt!1615148 (ListLongMap!1974 lt!1615150))))

(declare-fun lt!1615149 () Unit!80524)

(declare-fun lt!1615147 () Unit!80524)

(assert (=> d!1337321 (= lt!1615149 lt!1615147)))

(assert (=> d!1337321 (= (getValueByKey!637 lt!1615150 (_1!27820 lt!1615001)) (Some!10650 (_2!27820 lt!1615001)))))

(declare-fun lemmaContainsTupThenGetReturnValue!377 (List!49509 (_ BitVec 64) List!49508) Unit!80524)

(assert (=> d!1337321 (= lt!1615147 (lemmaContainsTupThenGetReturnValue!377 lt!1615150 (_1!27820 lt!1615001) (_2!27820 lt!1615001)))))

(declare-fun insertStrictlySorted!223 (List!49509 (_ BitVec 64) List!49508) List!49509)

(assert (=> d!1337321 (= lt!1615150 (insertStrictlySorted!223 (toList!3323 lm!1616) (_1!27820 lt!1615001) (_2!27820 lt!1615001)))))

(assert (=> d!1337321 (= (+!937 lm!1616 lt!1615001) lt!1615148)))

(declare-fun b!4413140 () Bool)

(declare-fun res!1822051 () Bool)

(assert (=> b!4413140 (=> (not res!1822051) (not e!2748197))))

(assert (=> b!4413140 (= res!1822051 (= (getValueByKey!637 (toList!3323 lt!1615148) (_1!27820 lt!1615001)) (Some!10650 (_2!27820 lt!1615001))))))

(declare-fun b!4413141 () Bool)

(declare-fun contains!11822 (List!49509 tuple2!49052) Bool)

(assert (=> b!4413141 (= e!2748197 (contains!11822 (toList!3323 lt!1615148) lt!1615001))))

(assert (= (and d!1337321 res!1822052) b!4413140))

(assert (= (and b!4413140 res!1822051) b!4413141))

(declare-fun m!5088735 () Bool)

(assert (=> d!1337321 m!5088735))

(declare-fun m!5088737 () Bool)

(assert (=> d!1337321 m!5088737))

(declare-fun m!5088739 () Bool)

(assert (=> d!1337321 m!5088739))

(declare-fun m!5088741 () Bool)

(assert (=> d!1337321 m!5088741))

(declare-fun m!5088743 () Bool)

(assert (=> b!4413140 m!5088743))

(declare-fun m!5088745 () Bool)

(assert (=> b!4413141 m!5088745))

(assert (=> b!4412977 d!1337321))

(declare-fun d!1337329 () Bool)

(assert (=> d!1337329 (forall!9439 (toList!3323 (+!937 lm!1616 (tuple2!49053 hash!366 newBucket!194))) lambda!151068)))

(declare-fun lt!1615154 () Unit!80524)

(declare-fun choose!27774 (ListLongMap!1973 Int (_ BitVec 64) List!49508) Unit!80524)

(assert (=> d!1337329 (= lt!1615154 (choose!27774 lm!1616 lambda!151068 hash!366 newBucket!194))))

(declare-fun e!2748201 () Bool)

(assert (=> d!1337329 e!2748201))

(declare-fun res!1822055 () Bool)

(assert (=> d!1337329 (=> (not res!1822055) (not e!2748201))))

(assert (=> d!1337329 (= res!1822055 (forall!9439 (toList!3323 lm!1616) lambda!151068))))

(assert (=> d!1337329 (= (addValidProp!312 lm!1616 lambda!151068 hash!366 newBucket!194) lt!1615154)))

(declare-fun b!4413147 () Bool)

(assert (=> b!4413147 (= e!2748201 (dynLambda!20799 lambda!151068 (tuple2!49053 hash!366 newBucket!194)))))

(assert (= (and d!1337329 res!1822055) b!4413147))

(declare-fun b_lambda!142013 () Bool)

(assert (=> (not b_lambda!142013) (not b!4413147)))

(declare-fun m!5088755 () Bool)

(assert (=> d!1337329 m!5088755))

(declare-fun m!5088757 () Bool)

(assert (=> d!1337329 m!5088757))

(declare-fun m!5088759 () Bool)

(assert (=> d!1337329 m!5088759))

(assert (=> d!1337329 m!5088569))

(declare-fun m!5088761 () Bool)

(assert (=> b!4413147 m!5088761))

(assert (=> b!4412977 d!1337329))

(declare-fun b!4413166 () Bool)

(declare-fun e!2748217 () Bool)

(declare-datatypes ((List!49512 0))(
  ( (Nil!49388) (Cons!49388 (h!55037 K!10743) (t!356450 List!49512)) )
))
(declare-fun contains!11823 (List!49512 K!10743) Bool)

(declare-fun keys!16812 (ListMap!2567) List!49512)

(assert (=> b!4413166 (= e!2748217 (not (contains!11823 (keys!16812 (extractMap!729 (toList!3323 lm!1616))) key!3717)))))

(declare-fun b!4413167 () Bool)

(declare-fun e!2748215 () Bool)

(assert (=> b!4413167 (= e!2748215 (contains!11823 (keys!16812 (extractMap!729 (toList!3323 lm!1616))) key!3717))))

(declare-fun b!4413168 () Bool)

(declare-fun e!2748216 () Unit!80524)

(declare-fun Unit!80540 () Unit!80524)

(assert (=> b!4413168 (= e!2748216 Unit!80540)))

(declare-fun d!1337333 () Bool)

(declare-fun e!2748219 () Bool)

(assert (=> d!1337333 e!2748219))

(declare-fun res!1822062 () Bool)

(assert (=> d!1337333 (=> res!1822062 e!2748219)))

(assert (=> d!1337333 (= res!1822062 e!2748217)))

(declare-fun res!1822063 () Bool)

(assert (=> d!1337333 (=> (not res!1822063) (not e!2748217))))

(declare-fun lt!1615172 () Bool)

(assert (=> d!1337333 (= res!1822063 (not lt!1615172))))

(declare-fun lt!1615177 () Bool)

(assert (=> d!1337333 (= lt!1615172 lt!1615177)))

(declare-fun lt!1615173 () Unit!80524)

(declare-fun e!2748218 () Unit!80524)

(assert (=> d!1337333 (= lt!1615173 e!2748218)))

(declare-fun c!751584 () Bool)

(assert (=> d!1337333 (= c!751584 lt!1615177)))

(declare-fun containsKey!1002 (List!49508 K!10743) Bool)

(assert (=> d!1337333 (= lt!1615177 (containsKey!1002 (toList!3324 (extractMap!729 (toList!3323 lm!1616))) key!3717))))

(assert (=> d!1337333 (= (contains!11818 (extractMap!729 (toList!3323 lm!1616)) key!3717) lt!1615172)))

(declare-fun b!4413169 () Bool)

(declare-fun e!2748214 () List!49512)

(assert (=> b!4413169 (= e!2748214 (keys!16812 (extractMap!729 (toList!3323 lm!1616))))))

(declare-fun bm!307136 () Bool)

(declare-fun call!307141 () Bool)

(assert (=> bm!307136 (= call!307141 (contains!11823 e!2748214 key!3717))))

(declare-fun c!751583 () Bool)

(assert (=> bm!307136 (= c!751583 c!751584)))

(declare-fun b!4413170 () Bool)

(declare-fun getKeysList!216 (List!49508) List!49512)

(assert (=> b!4413170 (= e!2748214 (getKeysList!216 (toList!3324 (extractMap!729 (toList!3323 lm!1616)))))))

(declare-fun b!4413171 () Bool)

(assert (=> b!4413171 (= e!2748219 e!2748215)))

(declare-fun res!1822064 () Bool)

(assert (=> b!4413171 (=> (not res!1822064) (not e!2748215))))

(declare-datatypes ((Option!10652 0))(
  ( (None!10651) (Some!10651 (v!43811 V!10989)) )
))
(declare-fun isDefined!7945 (Option!10652) Bool)

(declare-fun getValueByKey!638 (List!49508 K!10743) Option!10652)

(assert (=> b!4413171 (= res!1822064 (isDefined!7945 (getValueByKey!638 (toList!3324 (extractMap!729 (toList!3323 lm!1616))) key!3717)))))

(declare-fun b!4413172 () Bool)

(assert (=> b!4413172 (= e!2748218 e!2748216)))

(declare-fun c!751582 () Bool)

(assert (=> b!4413172 (= c!751582 call!307141)))

(declare-fun b!4413173 () Bool)

(declare-fun lt!1615175 () Unit!80524)

(assert (=> b!4413173 (= e!2748218 lt!1615175)))

(declare-fun lt!1615174 () Unit!80524)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!548 (List!49508 K!10743) Unit!80524)

(assert (=> b!4413173 (= lt!1615174 (lemmaContainsKeyImpliesGetValueByKeyDefined!548 (toList!3324 (extractMap!729 (toList!3323 lm!1616))) key!3717))))

(assert (=> b!4413173 (isDefined!7945 (getValueByKey!638 (toList!3324 (extractMap!729 (toList!3323 lm!1616))) key!3717))))

(declare-fun lt!1615171 () Unit!80524)

(assert (=> b!4413173 (= lt!1615171 lt!1615174)))

(declare-fun lemmaInListThenGetKeysListContains!213 (List!49508 K!10743) Unit!80524)

(assert (=> b!4413173 (= lt!1615175 (lemmaInListThenGetKeysListContains!213 (toList!3324 (extractMap!729 (toList!3323 lm!1616))) key!3717))))

(assert (=> b!4413173 call!307141))

(declare-fun b!4413174 () Bool)

(assert (=> b!4413174 false))

(declare-fun lt!1615178 () Unit!80524)

(declare-fun lt!1615176 () Unit!80524)

(assert (=> b!4413174 (= lt!1615178 lt!1615176)))

(assert (=> b!4413174 (containsKey!1002 (toList!3324 (extractMap!729 (toList!3323 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!214 (List!49508 K!10743) Unit!80524)

(assert (=> b!4413174 (= lt!1615176 (lemmaInGetKeysListThenContainsKey!214 (toList!3324 (extractMap!729 (toList!3323 lm!1616))) key!3717))))

(declare-fun Unit!80541 () Unit!80524)

(assert (=> b!4413174 (= e!2748216 Unit!80541)))

(assert (= (and d!1337333 c!751584) b!4413173))

(assert (= (and d!1337333 (not c!751584)) b!4413172))

(assert (= (and b!4413172 c!751582) b!4413174))

(assert (= (and b!4413172 (not c!751582)) b!4413168))

(assert (= (or b!4413173 b!4413172) bm!307136))

(assert (= (and bm!307136 c!751583) b!4413170))

(assert (= (and bm!307136 (not c!751583)) b!4413169))

(assert (= (and d!1337333 res!1822063) b!4413166))

(assert (= (and d!1337333 (not res!1822062)) b!4413171))

(assert (= (and b!4413171 res!1822064) b!4413167))

(declare-fun m!5088763 () Bool)

(assert (=> b!4413170 m!5088763))

(assert (=> b!4413167 m!5088571))

(declare-fun m!5088765 () Bool)

(assert (=> b!4413167 m!5088765))

(assert (=> b!4413167 m!5088765))

(declare-fun m!5088767 () Bool)

(assert (=> b!4413167 m!5088767))

(declare-fun m!5088769 () Bool)

(assert (=> b!4413173 m!5088769))

(declare-fun m!5088771 () Bool)

(assert (=> b!4413173 m!5088771))

(assert (=> b!4413173 m!5088771))

(declare-fun m!5088773 () Bool)

(assert (=> b!4413173 m!5088773))

(declare-fun m!5088775 () Bool)

(assert (=> b!4413173 m!5088775))

(assert (=> b!4413171 m!5088771))

(assert (=> b!4413171 m!5088771))

(assert (=> b!4413171 m!5088773))

(assert (=> b!4413166 m!5088571))

(assert (=> b!4413166 m!5088765))

(assert (=> b!4413166 m!5088765))

(assert (=> b!4413166 m!5088767))

(declare-fun m!5088777 () Bool)

(assert (=> d!1337333 m!5088777))

(declare-fun m!5088779 () Bool)

(assert (=> bm!307136 m!5088779))

(assert (=> b!4413169 m!5088571))

(assert (=> b!4413169 m!5088765))

(assert (=> b!4413174 m!5088777))

(declare-fun m!5088781 () Bool)

(assert (=> b!4413174 m!5088781))

(assert (=> b!4412963 d!1337333))

(declare-fun bs!752929 () Bool)

(declare-fun d!1337335 () Bool)

(assert (= bs!752929 (and d!1337335 start!429566)))

(declare-fun lambda!151126 () Int)

(assert (=> bs!752929 (= lambda!151126 lambda!151068)))

(declare-fun bs!752930 () Bool)

(assert (= bs!752930 (and d!1337335 d!1337287)))

(assert (=> bs!752930 (= lambda!151126 lambda!151082)))

(declare-fun bs!752931 () Bool)

(assert (= bs!752931 (and d!1337335 d!1337299)))

(assert (=> bs!752931 (= lambda!151126 lambda!151121)))

(declare-fun bs!752932 () Bool)

(assert (= bs!752932 (and d!1337335 d!1337309)))

(assert (=> bs!752932 (not (= lambda!151126 lambda!151124))))

(declare-fun lt!1615179 () ListMap!2567)

(assert (=> d!1337335 (invariantList!769 (toList!3324 lt!1615179))))

(declare-fun e!2748220 () ListMap!2567)

(assert (=> d!1337335 (= lt!1615179 e!2748220)))

(declare-fun c!751585 () Bool)

(assert (=> d!1337335 (= c!751585 (is-Cons!49385 (toList!3323 lm!1616)))))

(assert (=> d!1337335 (forall!9439 (toList!3323 lm!1616) lambda!151126)))

(assert (=> d!1337335 (= (extractMap!729 (toList!3323 lm!1616)) lt!1615179)))

(declare-fun b!4413175 () Bool)

(assert (=> b!4413175 (= e!2748220 (addToMapMapFromBucket!322 (_2!27820 (h!55032 (toList!3323 lm!1616))) (extractMap!729 (t!356447 (toList!3323 lm!1616)))))))

(declare-fun b!4413176 () Bool)

(assert (=> b!4413176 (= e!2748220 (ListMap!2568 Nil!49384))))

(assert (= (and d!1337335 c!751585) b!4413175))

(assert (= (and d!1337335 (not c!751585)) b!4413176))

(declare-fun m!5088783 () Bool)

(assert (=> d!1337335 m!5088783))

(declare-fun m!5088785 () Bool)

(assert (=> d!1337335 m!5088785))

(assert (=> b!4413175 m!5088559))

(assert (=> b!4413175 m!5088559))

(declare-fun m!5088787 () Bool)

(assert (=> b!4413175 m!5088787))

(assert (=> b!4412963 d!1337335))

(declare-fun bs!752933 () Bool)

(declare-fun d!1337337 () Bool)

(assert (= bs!752933 (and d!1337337 b!4413087)))

(declare-fun lambda!151129 () Int)

(assert (=> bs!752933 (not (= lambda!151129 lambda!151117))))

(declare-fun bs!752934 () Bool)

(assert (= bs!752934 (and d!1337337 b!4413088)))

(assert (=> bs!752934 (not (= lambda!151129 lambda!151118))))

(assert (=> bs!752934 (not (= lambda!151129 lambda!151119))))

(declare-fun bs!752935 () Bool)

(assert (= bs!752935 (and d!1337337 d!1337289)))

(assert (=> bs!752935 (not (= lambda!151129 lambda!151120))))

(assert (=> d!1337337 true))

(assert (=> d!1337337 true))

(assert (=> d!1337337 (= (allKeysSameHash!628 newBucket!194 hash!366 hashF!1220) (forall!9441 newBucket!194 lambda!151129))))

(declare-fun bs!752936 () Bool)

(assert (= bs!752936 d!1337337))

(declare-fun m!5088789 () Bool)

(assert (=> bs!752936 m!5088789))

(assert (=> b!4412964 d!1337337))

(declare-fun d!1337339 () Bool)

(assert (=> d!1337339 (= (head!9147 (toList!3323 lt!1615004)) (h!55032 (toList!3323 lt!1615004)))))

(assert (=> b!4412975 d!1337339))

(assert (=> b!4412974 d!1337311))

(declare-fun d!1337341 () Bool)

(declare-fun res!1822069 () Bool)

(declare-fun e!2748225 () Bool)

(assert (=> d!1337341 (=> res!1822069 e!2748225)))

(assert (=> d!1337341 (= res!1822069 (not (is-Cons!49384 newBucket!194)))))

(assert (=> d!1337341 (= (noDuplicateKeys!668 newBucket!194) e!2748225)))

(declare-fun b!4413185 () Bool)

(declare-fun e!2748226 () Bool)

(assert (=> b!4413185 (= e!2748225 e!2748226)))

(declare-fun res!1822070 () Bool)

(assert (=> b!4413185 (=> (not res!1822070) (not e!2748226))))

(declare-fun containsKey!1003 (List!49508 K!10743) Bool)

(assert (=> b!4413185 (= res!1822070 (not (containsKey!1003 (t!356446 newBucket!194) (_1!27819 (h!55031 newBucket!194)))))))

(declare-fun b!4413186 () Bool)

(assert (=> b!4413186 (= e!2748226 (noDuplicateKeys!668 (t!356446 newBucket!194)))))

(assert (= (and d!1337341 (not res!1822069)) b!4413185))

(assert (= (and b!4413185 res!1822070) b!4413186))

(declare-fun m!5088791 () Bool)

(assert (=> b!4413185 m!5088791))

(declare-fun m!5088793 () Bool)

(assert (=> b!4413186 m!5088793))

(assert (=> b!4412971 d!1337341))

(declare-fun d!1337343 () Bool)

(declare-fun res!1822071 () Bool)

(declare-fun e!2748227 () Bool)

(assert (=> d!1337343 (=> res!1822071 e!2748227)))

(assert (=> d!1337343 (= res!1822071 (is-Nil!49385 (t!356447 (toList!3323 lm!1616))))))

(assert (=> d!1337343 (= (forall!9439 (t!356447 (toList!3323 lm!1616)) lambda!151068) e!2748227)))

(declare-fun b!4413187 () Bool)

(declare-fun e!2748228 () Bool)

(assert (=> b!4413187 (= e!2748227 e!2748228)))

(declare-fun res!1822072 () Bool)

(assert (=> b!4413187 (=> (not res!1822072) (not e!2748228))))

(assert (=> b!4413187 (= res!1822072 (dynLambda!20799 lambda!151068 (h!55032 (t!356447 (toList!3323 lm!1616)))))))

(declare-fun b!4413188 () Bool)

(assert (=> b!4413188 (= e!2748228 (forall!9439 (t!356447 (t!356447 (toList!3323 lm!1616))) lambda!151068))))

(assert (= (and d!1337343 (not res!1822071)) b!4413187))

(assert (= (and b!4413187 res!1822072) b!4413188))

(declare-fun b_lambda!142015 () Bool)

(assert (=> (not b_lambda!142015) (not b!4413187)))

(declare-fun m!5088795 () Bool)

(assert (=> b!4413187 m!5088795))

(declare-fun m!5088797 () Bool)

(assert (=> b!4413188 m!5088797))

(assert (=> b!4412970 d!1337343))

(declare-fun b!4413193 () Bool)

(declare-fun tp!1332335 () Bool)

(declare-fun e!2748231 () Bool)

(assert (=> b!4413193 (= e!2748231 (and tp_is_empty!25919 tp_is_empty!25917 tp!1332335))))

(assert (=> b!4412962 (= tp!1332325 e!2748231)))

(assert (= (and b!4412962 (is-Cons!49384 (t!356446 newBucket!194))) b!4413193))

(declare-fun b!4413198 () Bool)

(declare-fun e!2748234 () Bool)

(declare-fun tp!1332340 () Bool)

(declare-fun tp!1332341 () Bool)

(assert (=> b!4413198 (= e!2748234 (and tp!1332340 tp!1332341))))

(assert (=> b!4412965 (= tp!1332326 e!2748234)))

(assert (= (and b!4412965 (is-Cons!49385 (toList!3323 lm!1616))) b!4413198))

(declare-fun b_lambda!142017 () Bool)

(assert (= b_lambda!142009 (or start!429566 b_lambda!142017)))

(declare-fun bs!752937 () Bool)

(declare-fun d!1337345 () Bool)

(assert (= bs!752937 (and d!1337345 start!429566)))

(assert (=> bs!752937 (= (dynLambda!20799 lambda!151068 (h!55032 (toList!3323 lm!1616))) (noDuplicateKeys!668 (_2!27820 (h!55032 (toList!3323 lm!1616)))))))

(declare-fun m!5088799 () Bool)

(assert (=> bs!752937 m!5088799))

(assert (=> b!4413117 d!1337345))

(declare-fun b_lambda!142019 () Bool)

(assert (= b_lambda!142015 (or start!429566 b_lambda!142019)))

(declare-fun bs!752938 () Bool)

(declare-fun d!1337347 () Bool)

(assert (= bs!752938 (and d!1337347 start!429566)))

(assert (=> bs!752938 (= (dynLambda!20799 lambda!151068 (h!55032 (t!356447 (toList!3323 lm!1616)))) (noDuplicateKeys!668 (_2!27820 (h!55032 (t!356447 (toList!3323 lm!1616))))))))

(declare-fun m!5088801 () Bool)

(assert (=> bs!752938 m!5088801))

(assert (=> b!4413187 d!1337347))

(declare-fun b_lambda!142021 () Bool)

(assert (= b_lambda!142013 (or start!429566 b_lambda!142021)))

(declare-fun bs!752939 () Bool)

(declare-fun d!1337349 () Bool)

(assert (= bs!752939 (and d!1337349 start!429566)))

(assert (=> bs!752939 (= (dynLambda!20799 lambda!151068 (tuple2!49053 hash!366 newBucket!194)) (noDuplicateKeys!668 (_2!27820 (tuple2!49053 hash!366 newBucket!194))))))

(declare-fun m!5088803 () Bool)

(assert (=> bs!752939 m!5088803))

(assert (=> b!4413147 d!1337349))

(declare-fun b_lambda!142023 () Bool)

(assert (= b_lambda!142011 (or start!429566 b_lambda!142023)))

(declare-fun bs!752940 () Bool)

(declare-fun d!1337351 () Bool)

(assert (= bs!752940 (and d!1337351 start!429566)))

(assert (=> bs!752940 (= (dynLambda!20799 lambda!151068 (h!55032 (toList!3323 lt!1615004))) (noDuplicateKeys!668 (_2!27820 (h!55032 (toList!3323 lt!1615004)))))))

(declare-fun m!5088805 () Bool)

(assert (=> bs!752940 m!5088805))

(assert (=> b!4413125 d!1337351))

(push 1)

(assert (not d!1337329))

(assert (not d!1337301))

(assert (not b!4413140))

(assert (not b!4413175))

(assert (not b_lambda!142023))

(assert (not b!4413089))

(assert (not b!4413170))

(assert (not b!4413118))

(assert (not b!4413186))

(assert (not bs!752937))

(assert (not b!4413185))

(assert (not bs!752940))

(assert (not b!4413141))

(assert (not bm!307132))

(assert (not b_lambda!142017))

(assert (not b!4413173))

(assert (not bs!752939))

(assert (not b!4413188))

(assert (not d!1337335))

(assert (not b!4413091))

(assert (not d!1337333))

(assert (not b!4413166))

(assert (not b!4413167))

(assert (not d!1337309))

(assert (not b!4413198))

(assert (not d!1337337))

(assert (not d!1337299))

(assert (not bs!752938))

(assert (not b!4413108))

(assert (not b!4413169))

(assert (not d!1337287))

(assert (not b!4413090))

(assert (not d!1337317))

(assert (not d!1337307))

(assert (not b!4413038))

(assert (not b!4413171))

(assert tp_is_empty!25917)

(assert tp_is_empty!25919)

(assert (not b!4413110))

(assert (not d!1337289))

(assert (not d!1337313))

(assert (not bm!307131))

(assert (not b!4413088))

(assert (not b!4413193))

(assert (not b!4413174))

(assert (not bm!307136))

(assert (not b!4413098))

(assert (not b!4413126))

(assert (not b_lambda!142021))

(assert (not b_lambda!142019))

(assert (not bm!307133))

(assert (not d!1337321))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

