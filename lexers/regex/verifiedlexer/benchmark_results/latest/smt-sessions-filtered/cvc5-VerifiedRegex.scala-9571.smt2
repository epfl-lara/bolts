; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503836 () Bool)

(assert start!503836)

(declare-fun b!4840886 () Bool)

(assert (=> b!4840886 true))

(declare-fun b!4840881 () Bool)

(declare-fun e!3025342 () Bool)

(declare-fun tp!1363903 () Bool)

(assert (=> b!4840881 (= e!3025342 tp!1363903)))

(declare-fun b!4840882 () Bool)

(declare-fun res!2063861 () Bool)

(declare-fun e!3025344 () Bool)

(assert (=> b!4840882 (=> (not res!2063861) (not e!3025344))))

(declare-datatypes ((K!17142 0))(
  ( (K!17143 (val!22019 Int)) )
))
(declare-datatypes ((V!17388 0))(
  ( (V!17389 (val!22020 Int)) )
))
(declare-datatypes ((tuple2!58910 0))(
  ( (tuple2!58911 (_1!32749 K!17142) (_2!32749 V!17388)) )
))
(declare-datatypes ((List!55504 0))(
  ( (Nil!55380) (Cons!55380 (h!61815 tuple2!58910) (t!363000 List!55504)) )
))
(declare-datatypes ((tuple2!58912 0))(
  ( (tuple2!58913 (_1!32750 (_ BitVec 64)) (_2!32750 List!55504)) )
))
(declare-datatypes ((List!55505 0))(
  ( (Nil!55381) (Cons!55381 (h!61816 tuple2!58912) (t!363001 List!55505)) )
))
(declare-datatypes ((ListLongMap!6321 0))(
  ( (ListLongMap!6322 (toList!7765 List!55505)) )
))
(declare-fun lm!2671 () ListLongMap!6321)

(declare-datatypes ((Hashable!7429 0))(
  ( (HashableExt!7428 (__x!33704 Int)) )
))
(declare-fun hashF!1662 () Hashable!7429)

(declare-fun allKeysSameHashInMap!2745 (ListLongMap!6321 Hashable!7429) Bool)

(assert (=> b!4840882 (= res!2063861 (allKeysSameHashInMap!2745 lm!2671 hashF!1662))))

(declare-fun b!4840883 () Bool)

(declare-fun e!3025343 () Bool)

(declare-fun lt!1984991 () tuple2!58910)

(declare-fun contains!19101 (List!55504 tuple2!58910) Bool)

(assert (=> b!4840883 (= e!3025343 (contains!19101 (_2!32750 (h!61816 (toList!7765 lm!2671))) lt!1984991))))

(declare-fun b!4840884 () Bool)

(declare-fun res!2063862 () Bool)

(assert (=> b!4840884 (=> (not res!2063862) (not e!3025344))))

(declare-fun key!6540 () K!17142)

(declare-fun containsKeyBiggerList!713 (List!55505 K!17142) Bool)

(assert (=> b!4840884 (= res!2063862 (containsKeyBiggerList!713 (toList!7765 lm!2671) key!6540))))

(declare-fun res!2063863 () Bool)

(assert (=> start!503836 (=> (not res!2063863) (not e!3025344))))

(declare-fun lambda!241091 () Int)

(declare-fun forall!12854 (List!55505 Int) Bool)

(assert (=> start!503836 (= res!2063863 (forall!12854 (toList!7765 lm!2671) lambda!241091))))

(assert (=> start!503836 e!3025344))

(declare-fun inv!71043 (ListLongMap!6321) Bool)

(assert (=> start!503836 (and (inv!71043 lm!2671) e!3025342)))

(assert (=> start!503836 true))

(declare-fun tp_is_empty!34961 () Bool)

(assert (=> start!503836 tp_is_empty!34961))

(declare-fun b!4840885 () Bool)

(declare-fun res!2063859 () Bool)

(assert (=> b!4840885 (=> (not res!2063859) (not e!3025344))))

(assert (=> b!4840885 (= res!2063859 (is-Cons!55381 (toList!7765 lm!2671)))))

(declare-datatypes ((ListMap!7103 0))(
  ( (ListMap!7104 (toList!7766 List!55504)) )
))
(declare-fun lt!1984994 () ListMap!7103)

(declare-fun contains!19102 (ListMap!7103 K!17142) Bool)

(assert (=> b!4840886 (= e!3025344 (not (contains!19102 lt!1984994 key!6540)))))

(declare-fun lambda!241092 () Int)

(declare-datatypes ((Unit!145037 0))(
  ( (Unit!145038) )
))
(declare-fun lt!1984997 () Unit!145037)

(declare-fun forallContained!4495 (List!55504 Int tuple2!58910) Unit!145037)

(assert (=> b!4840886 (= lt!1984997 (forallContained!4495 (_2!32750 (h!61816 (toList!7765 lm!2671))) lambda!241092 lt!1984991))))

(declare-fun lt!1984996 () ListMap!7103)

(assert (=> b!4840886 (= lt!1984994 lt!1984996)))

(declare-fun lt!1984992 () ListMap!7103)

(declare-fun addToMapMapFromBucket!1911 (List!55504 ListMap!7103) ListMap!7103)

(assert (=> b!4840886 (= lt!1984996 (addToMapMapFromBucket!1911 (_2!32750 (h!61816 (toList!7765 lm!2671))) lt!1984992))))

(declare-fun extractMap!2771 (List!55505) ListMap!7103)

(assert (=> b!4840886 (= lt!1984994 (extractMap!2771 (toList!7765 lm!2671)))))

(assert (=> b!4840886 (= lt!1984992 (extractMap!2771 (t!363001 (toList!7765 lm!2671))))))

(assert (=> b!4840886 e!3025343))

(declare-fun res!2063860 () Bool)

(assert (=> b!4840886 (=> (not res!2063860) (not e!3025343))))

(declare-fun head!10391 (List!55505) tuple2!58912)

(assert (=> b!4840886 (= res!2063860 (contains!19101 (_2!32750 (head!10391 (toList!7765 lm!2671))) lt!1984991))))

(declare-fun lt!1984995 () V!17388)

(assert (=> b!4840886 (= lt!1984991 (tuple2!58911 key!6540 lt!1984995))))

(declare-fun lt!1984993 () Unit!145037)

(declare-fun lemmaInPairListHeadThenGetValueInTuple!19 (ListLongMap!6321 K!17142 V!17388 Hashable!7429) Unit!145037)

(assert (=> b!4840886 (= lt!1984993 (lemmaInPairListHeadThenGetValueInTuple!19 lm!2671 key!6540 lt!1984995 hashF!1662))))

(declare-fun getValue!197 (List!55505 K!17142) V!17388)

(assert (=> b!4840886 (= lt!1984995 (getValue!197 (toList!7765 lm!2671) key!6540))))

(declare-fun b!4840887 () Bool)

(declare-fun res!2063864 () Bool)

(assert (=> b!4840887 (=> (not res!2063864) (not e!3025344))))

(declare-fun containsKey!4595 (List!55504 K!17142) Bool)

(assert (=> b!4840887 (= res!2063864 (containsKey!4595 (_2!32750 (h!61816 (toList!7765 lm!2671))) key!6540))))

(assert (= (and start!503836 res!2063863) b!4840882))

(assert (= (and b!4840882 res!2063861) b!4840884))

(assert (= (and b!4840884 res!2063862) b!4840885))

(assert (= (and b!4840885 res!2063859) b!4840887))

(assert (= (and b!4840887 res!2063864) b!4840886))

(assert (= (and b!4840886 res!2063860) b!4840883))

(assert (= start!503836 b!4840881))

(declare-fun m!5836538 () Bool)

(assert (=> b!4840882 m!5836538))

(declare-fun m!5836540 () Bool)

(assert (=> start!503836 m!5836540))

(declare-fun m!5836542 () Bool)

(assert (=> start!503836 m!5836542))

(declare-fun m!5836544 () Bool)

(assert (=> b!4840886 m!5836544))

(declare-fun m!5836546 () Bool)

(assert (=> b!4840886 m!5836546))

(declare-fun m!5836548 () Bool)

(assert (=> b!4840886 m!5836548))

(declare-fun m!5836550 () Bool)

(assert (=> b!4840886 m!5836550))

(declare-fun m!5836552 () Bool)

(assert (=> b!4840886 m!5836552))

(declare-fun m!5836554 () Bool)

(assert (=> b!4840886 m!5836554))

(declare-fun m!5836556 () Bool)

(assert (=> b!4840886 m!5836556))

(declare-fun m!5836558 () Bool)

(assert (=> b!4840886 m!5836558))

(declare-fun m!5836560 () Bool)

(assert (=> b!4840886 m!5836560))

(declare-fun m!5836562 () Bool)

(assert (=> b!4840884 m!5836562))

(declare-fun m!5836564 () Bool)

(assert (=> b!4840887 m!5836564))

(declare-fun m!5836566 () Bool)

(assert (=> b!4840883 m!5836566))

(push 1)

(assert (not b!4840884))

(assert (not b!4840883))

(assert tp_is_empty!34961)

(assert (not b!4840886))

(assert (not b!4840881))

(assert (not start!503836))

(assert (not b!4840882))

(assert (not b!4840887))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1551716 () Bool)

(declare-fun lt!1985021 () Bool)

(declare-fun content!9855 (List!55504) (Set tuple2!58910))

(assert (=> d!1551716 (= lt!1985021 (set.member lt!1984991 (content!9855 (_2!32750 (h!61816 (toList!7765 lm!2671))))))))

(declare-fun e!3025359 () Bool)

(assert (=> d!1551716 (= lt!1985021 e!3025359)))

(declare-fun res!2063887 () Bool)

(assert (=> d!1551716 (=> (not res!2063887) (not e!3025359))))

(assert (=> d!1551716 (= res!2063887 (is-Cons!55380 (_2!32750 (h!61816 (toList!7765 lm!2671)))))))

(assert (=> d!1551716 (= (contains!19101 (_2!32750 (h!61816 (toList!7765 lm!2671))) lt!1984991) lt!1985021)))

(declare-fun b!4840917 () Bool)

(declare-fun e!3025358 () Bool)

(assert (=> b!4840917 (= e!3025359 e!3025358)))

(declare-fun res!2063888 () Bool)

(assert (=> b!4840917 (=> res!2063888 e!3025358)))

(assert (=> b!4840917 (= res!2063888 (= (h!61815 (_2!32750 (h!61816 (toList!7765 lm!2671)))) lt!1984991))))

(declare-fun b!4840918 () Bool)

(assert (=> b!4840918 (= e!3025358 (contains!19101 (t!363000 (_2!32750 (h!61816 (toList!7765 lm!2671)))) lt!1984991))))

(assert (= (and d!1551716 res!2063887) b!4840917))

(assert (= (and b!4840917 (not res!2063888)) b!4840918))

(declare-fun m!5836598 () Bool)

(assert (=> d!1551716 m!5836598))

(declare-fun m!5836600 () Bool)

(assert (=> d!1551716 m!5836600))

(declare-fun m!5836602 () Bool)

(assert (=> b!4840918 m!5836602))

(assert (=> b!4840883 d!1551716))

(declare-fun d!1551718 () Bool)

(declare-fun res!2063895 () Bool)

(declare-fun e!3025366 () Bool)

(assert (=> d!1551718 (=> res!2063895 e!3025366)))

(declare-fun e!3025368 () Bool)

(assert (=> d!1551718 (= res!2063895 e!3025368)))

(declare-fun res!2063896 () Bool)

(assert (=> d!1551718 (=> (not res!2063896) (not e!3025368))))

(assert (=> d!1551718 (= res!2063896 (is-Cons!55381 (toList!7765 lm!2671)))))

(assert (=> d!1551718 (= (containsKeyBiggerList!713 (toList!7765 lm!2671) key!6540) e!3025366)))

(declare-fun b!4840925 () Bool)

(assert (=> b!4840925 (= e!3025368 (containsKey!4595 (_2!32750 (h!61816 (toList!7765 lm!2671))) key!6540))))

(declare-fun b!4840926 () Bool)

(declare-fun e!3025367 () Bool)

(assert (=> b!4840926 (= e!3025366 e!3025367)))

(declare-fun res!2063897 () Bool)

(assert (=> b!4840926 (=> (not res!2063897) (not e!3025367))))

(assert (=> b!4840926 (= res!2063897 (is-Cons!55381 (toList!7765 lm!2671)))))

(declare-fun b!4840927 () Bool)

(assert (=> b!4840927 (= e!3025367 (containsKeyBiggerList!713 (t!363001 (toList!7765 lm!2671)) key!6540))))

(assert (= (and d!1551718 res!2063896) b!4840925))

(assert (= (and d!1551718 (not res!2063895)) b!4840926))

(assert (= (and b!4840926 res!2063897) b!4840927))

(assert (=> b!4840925 m!5836564))

(declare-fun m!5836604 () Bool)

(assert (=> b!4840927 m!5836604))

(assert (=> b!4840884 d!1551718))

(declare-fun bs!1168420 () Bool)

(declare-fun d!1551720 () Bool)

(assert (= bs!1168420 (and d!1551720 start!503836)))

(declare-fun lambda!241101 () Int)

(assert (=> bs!1168420 (= lambda!241101 lambda!241091)))

(declare-fun lt!1985024 () ListMap!7103)

(declare-fun invariantList!1878 (List!55504) Bool)

(assert (=> d!1551720 (invariantList!1878 (toList!7766 lt!1985024))))

(declare-fun e!3025371 () ListMap!7103)

(assert (=> d!1551720 (= lt!1985024 e!3025371)))

(declare-fun c!824361 () Bool)

(assert (=> d!1551720 (= c!824361 (is-Cons!55381 (toList!7765 lm!2671)))))

(assert (=> d!1551720 (forall!12854 (toList!7765 lm!2671) lambda!241101)))

(assert (=> d!1551720 (= (extractMap!2771 (toList!7765 lm!2671)) lt!1985024)))

(declare-fun b!4840932 () Bool)

(assert (=> b!4840932 (= e!3025371 (addToMapMapFromBucket!1911 (_2!32750 (h!61816 (toList!7765 lm!2671))) (extractMap!2771 (t!363001 (toList!7765 lm!2671)))))))

(declare-fun b!4840933 () Bool)

(assert (=> b!4840933 (= e!3025371 (ListMap!7104 Nil!55380))))

(assert (= (and d!1551720 c!824361) b!4840932))

(assert (= (and d!1551720 (not c!824361)) b!4840933))

(declare-fun m!5836606 () Bool)

(assert (=> d!1551720 m!5836606))

(declare-fun m!5836608 () Bool)

(assert (=> d!1551720 m!5836608))

(assert (=> b!4840932 m!5836556))

(assert (=> b!4840932 m!5836556))

(declare-fun m!5836610 () Bool)

(assert (=> b!4840932 m!5836610))

(assert (=> b!4840886 d!1551720))

(declare-fun bs!1168422 () Bool)

(declare-fun b!4840981 () Bool)

(assert (= bs!1168422 (and b!4840981 b!4840886)))

(declare-fun lambda!241133 () Int)

(assert (=> bs!1168422 (= (= lt!1984992 lt!1984996) (= lambda!241133 lambda!241092))))

(assert (=> b!4840981 true))

(declare-fun bs!1168423 () Bool)

(declare-fun b!4840980 () Bool)

(assert (= bs!1168423 (and b!4840980 b!4840886)))

(declare-fun lambda!241134 () Int)

(assert (=> bs!1168423 (= (= lt!1984992 lt!1984996) (= lambda!241134 lambda!241092))))

(declare-fun bs!1168424 () Bool)

(assert (= bs!1168424 (and b!4840980 b!4840981)))

(assert (=> bs!1168424 (= lambda!241134 lambda!241133)))

(assert (=> b!4840980 true))

(declare-fun lambda!241135 () Int)

(declare-fun lt!1985116 () ListMap!7103)

(assert (=> bs!1168423 (= (= lt!1985116 lt!1984996) (= lambda!241135 lambda!241092))))

(assert (=> bs!1168424 (= (= lt!1985116 lt!1984992) (= lambda!241135 lambda!241133))))

(assert (=> b!4840980 (= (= lt!1985116 lt!1984992) (= lambda!241135 lambda!241134))))

(assert (=> b!4840980 true))

(declare-fun bs!1168425 () Bool)

(declare-fun d!1551722 () Bool)

(assert (= bs!1168425 (and d!1551722 b!4840886)))

(declare-fun lt!1985098 () ListMap!7103)

(declare-fun lambda!241136 () Int)

(assert (=> bs!1168425 (= (= lt!1985098 lt!1984996) (= lambda!241136 lambda!241092))))

(declare-fun bs!1168426 () Bool)

(assert (= bs!1168426 (and d!1551722 b!4840981)))

(assert (=> bs!1168426 (= (= lt!1985098 lt!1984992) (= lambda!241136 lambda!241133))))

(declare-fun bs!1168427 () Bool)

(assert (= bs!1168427 (and d!1551722 b!4840980)))

(assert (=> bs!1168427 (= (= lt!1985098 lt!1984992) (= lambda!241136 lambda!241134))))

(assert (=> bs!1168427 (= (= lt!1985098 lt!1985116) (= lambda!241136 lambda!241135))))

(assert (=> d!1551722 true))

(declare-fun bm!337375 () Bool)

(declare-fun call!337381 () Unit!145037)

(declare-fun lemmaContainsAllItsOwnKeys!1052 (ListMap!7103) Unit!145037)

(assert (=> bm!337375 (= call!337381 (lemmaContainsAllItsOwnKeys!1052 lt!1984992))))

(declare-fun e!3025404 () ListMap!7103)

(assert (=> b!4840980 (= e!3025404 lt!1985116)))

(declare-fun lt!1985111 () ListMap!7103)

(declare-fun +!2612 (ListMap!7103 tuple2!58910) ListMap!7103)

(assert (=> b!4840980 (= lt!1985111 (+!2612 lt!1984992 (h!61815 (_2!32750 (h!61816 (toList!7765 lm!2671))))))))

(assert (=> b!4840980 (= lt!1985116 (addToMapMapFromBucket!1911 (t!363000 (_2!32750 (h!61816 (toList!7765 lm!2671)))) (+!2612 lt!1984992 (h!61815 (_2!32750 (h!61816 (toList!7765 lm!2671)))))))))

(declare-fun lt!1985106 () Unit!145037)

(assert (=> b!4840980 (= lt!1985106 call!337381)))

(declare-fun forall!12856 (List!55504 Int) Bool)

(assert (=> b!4840980 (forall!12856 (toList!7766 lt!1984992) lambda!241134)))

(declare-fun lt!1985105 () Unit!145037)

(assert (=> b!4840980 (= lt!1985105 lt!1985106)))

(assert (=> b!4840980 (forall!12856 (toList!7766 lt!1985111) lambda!241135)))

(declare-fun lt!1985109 () Unit!145037)

(declare-fun Unit!145041 () Unit!145037)

(assert (=> b!4840980 (= lt!1985109 Unit!145041)))

(assert (=> b!4840980 (forall!12856 (t!363000 (_2!32750 (h!61816 (toList!7765 lm!2671)))) lambda!241135)))

(declare-fun lt!1985108 () Unit!145037)

(declare-fun Unit!145042 () Unit!145037)

(assert (=> b!4840980 (= lt!1985108 Unit!145042)))

(declare-fun lt!1985112 () Unit!145037)

(declare-fun Unit!145043 () Unit!145037)

(assert (=> b!4840980 (= lt!1985112 Unit!145043)))

(declare-fun lt!1985100 () Unit!145037)

(assert (=> b!4840980 (= lt!1985100 (forallContained!4495 (toList!7766 lt!1985111) lambda!241135 (h!61815 (_2!32750 (h!61816 (toList!7765 lm!2671))))))))

(assert (=> b!4840980 (contains!19102 lt!1985111 (_1!32749 (h!61815 (_2!32750 (h!61816 (toList!7765 lm!2671))))))))

(declare-fun lt!1985101 () Unit!145037)

(declare-fun Unit!145044 () Unit!145037)

(assert (=> b!4840980 (= lt!1985101 Unit!145044)))

(assert (=> b!4840980 (contains!19102 lt!1985116 (_1!32749 (h!61815 (_2!32750 (h!61816 (toList!7765 lm!2671))))))))

(declare-fun lt!1985113 () Unit!145037)

(declare-fun Unit!145045 () Unit!145037)

(assert (=> b!4840980 (= lt!1985113 Unit!145045)))

(declare-fun call!337380 () Bool)

(assert (=> b!4840980 call!337380))

(declare-fun lt!1985115 () Unit!145037)

(declare-fun Unit!145046 () Unit!145037)

(assert (=> b!4840980 (= lt!1985115 Unit!145046)))

(declare-fun call!337382 () Bool)

(assert (=> b!4840980 call!337382))

(declare-fun lt!1985110 () Unit!145037)

(declare-fun Unit!145047 () Unit!145037)

(assert (=> b!4840980 (= lt!1985110 Unit!145047)))

(declare-fun lt!1985099 () Unit!145037)

(declare-fun Unit!145048 () Unit!145037)

(assert (=> b!4840980 (= lt!1985099 Unit!145048)))

(declare-fun lt!1985103 () Unit!145037)

(declare-fun addForallContainsKeyThenBeforeAdding!1050 (ListMap!7103 ListMap!7103 K!17142 V!17388) Unit!145037)

(assert (=> b!4840980 (= lt!1985103 (addForallContainsKeyThenBeforeAdding!1050 lt!1984992 lt!1985116 (_1!32749 (h!61815 (_2!32750 (h!61816 (toList!7765 lm!2671))))) (_2!32749 (h!61815 (_2!32750 (h!61816 (toList!7765 lm!2671)))))))))

(assert (=> b!4840980 (forall!12856 (toList!7766 lt!1984992) lambda!241135)))

(declare-fun lt!1985107 () Unit!145037)

(assert (=> b!4840980 (= lt!1985107 lt!1985103)))

(assert (=> b!4840980 (forall!12856 (toList!7766 lt!1984992) lambda!241135)))

(declare-fun lt!1985102 () Unit!145037)

(declare-fun Unit!145049 () Unit!145037)

(assert (=> b!4840980 (= lt!1985102 Unit!145049)))

(declare-fun res!2063916 () Bool)

(assert (=> b!4840980 (= res!2063916 (forall!12856 (_2!32750 (h!61816 (toList!7765 lm!2671))) lambda!241135))))

(declare-fun e!3025402 () Bool)

(assert (=> b!4840980 (=> (not res!2063916) (not e!3025402))))

(assert (=> b!4840980 e!3025402))

(declare-fun lt!1985117 () Unit!145037)

(declare-fun Unit!145050 () Unit!145037)

(assert (=> b!4840980 (= lt!1985117 Unit!145050)))

(declare-fun bm!337376 () Bool)

(declare-fun c!824376 () Bool)

(assert (=> bm!337376 (= call!337382 (forall!12856 (ite c!824376 (toList!7766 lt!1984992) (toList!7766 lt!1985111)) (ite c!824376 lambda!241133 lambda!241135)))))

(assert (=> b!4840981 (= e!3025404 lt!1984992)))

(declare-fun lt!1985097 () Unit!145037)

(assert (=> b!4840981 (= lt!1985097 call!337381)))

(assert (=> b!4840981 call!337380))

(declare-fun lt!1985104 () Unit!145037)

(assert (=> b!4840981 (= lt!1985104 lt!1985097)))

(assert (=> b!4840981 call!337382))

(declare-fun lt!1985114 () Unit!145037)

(declare-fun Unit!145051 () Unit!145037)

(assert (=> b!4840981 (= lt!1985114 Unit!145051)))

(declare-fun e!3025403 () Bool)

(assert (=> d!1551722 e!3025403))

(declare-fun res!2063917 () Bool)

(assert (=> d!1551722 (=> (not res!2063917) (not e!3025403))))

(assert (=> d!1551722 (= res!2063917 (forall!12856 (_2!32750 (h!61816 (toList!7765 lm!2671))) lambda!241136))))

(assert (=> d!1551722 (= lt!1985098 e!3025404)))

(assert (=> d!1551722 (= c!824376 (is-Nil!55380 (_2!32750 (h!61816 (toList!7765 lm!2671)))))))

(declare-fun noDuplicateKeys!2546 (List!55504) Bool)

(assert (=> d!1551722 (noDuplicateKeys!2546 (_2!32750 (h!61816 (toList!7765 lm!2671))))))

(assert (=> d!1551722 (= (addToMapMapFromBucket!1911 (_2!32750 (h!61816 (toList!7765 lm!2671))) lt!1984992) lt!1985098)))

(declare-fun b!4840982 () Bool)

(assert (=> b!4840982 (= e!3025402 (forall!12856 (toList!7766 lt!1984992) lambda!241135))))

(declare-fun bm!337377 () Bool)

(assert (=> bm!337377 (= call!337380 (forall!12856 (ite c!824376 (toList!7766 lt!1984992) (_2!32750 (h!61816 (toList!7765 lm!2671)))) (ite c!824376 lambda!241133 lambda!241135)))))

(declare-fun b!4840983 () Bool)

(declare-fun res!2063918 () Bool)

(assert (=> b!4840983 (=> (not res!2063918) (not e!3025403))))

(assert (=> b!4840983 (= res!2063918 (forall!12856 (toList!7766 lt!1984992) lambda!241136))))

(declare-fun b!4840984 () Bool)

(assert (=> b!4840984 (= e!3025403 (invariantList!1878 (toList!7766 lt!1985098)))))

(assert (= (and d!1551722 c!824376) b!4840981))

(assert (= (and d!1551722 (not c!824376)) b!4840980))

(assert (= (and b!4840980 res!2063916) b!4840982))

(assert (= (or b!4840981 b!4840980) bm!337375))

(assert (= (or b!4840981 b!4840980) bm!337377))

(assert (= (or b!4840981 b!4840980) bm!337376))

(assert (= (and d!1551722 res!2063917) b!4840983))

(assert (= (and b!4840983 res!2063918) b!4840984))

(declare-fun m!5836644 () Bool)

(assert (=> b!4840982 m!5836644))

(declare-fun m!5836646 () Bool)

(assert (=> d!1551722 m!5836646))

(declare-fun m!5836648 () Bool)

(assert (=> d!1551722 m!5836648))

(declare-fun m!5836650 () Bool)

(assert (=> bm!337376 m!5836650))

(declare-fun m!5836652 () Bool)

(assert (=> bm!337375 m!5836652))

(declare-fun m!5836654 () Bool)

(assert (=> b!4840984 m!5836654))

(declare-fun m!5836656 () Bool)

(assert (=> b!4840983 m!5836656))

(declare-fun m!5836658 () Bool)

(assert (=> b!4840980 m!5836658))

(declare-fun m!5836660 () Bool)

(assert (=> b!4840980 m!5836660))

(declare-fun m!5836662 () Bool)

(assert (=> b!4840980 m!5836662))

(declare-fun m!5836664 () Bool)

(assert (=> b!4840980 m!5836664))

(declare-fun m!5836666 () Bool)

(assert (=> b!4840980 m!5836666))

(declare-fun m!5836668 () Bool)

(assert (=> b!4840980 m!5836668))

(declare-fun m!5836670 () Bool)

(assert (=> b!4840980 m!5836670))

(assert (=> b!4840980 m!5836644))

(assert (=> b!4840980 m!5836660))

(declare-fun m!5836672 () Bool)

(assert (=> b!4840980 m!5836672))

(declare-fun m!5836674 () Bool)

(assert (=> b!4840980 m!5836674))

(declare-fun m!5836676 () Bool)

(assert (=> b!4840980 m!5836676))

(assert (=> b!4840980 m!5836644))

(declare-fun m!5836678 () Bool)

(assert (=> bm!337377 m!5836678))

(assert (=> b!4840886 d!1551722))

(declare-fun d!1551734 () Bool)

(declare-fun e!3025419 () Bool)

(assert (=> d!1551734 e!3025419))

(declare-fun res!2063927 () Bool)

(assert (=> d!1551734 (=> res!2063927 e!3025419)))

(declare-fun e!3025422 () Bool)

(assert (=> d!1551734 (= res!2063927 e!3025422)))

(declare-fun res!2063925 () Bool)

(assert (=> d!1551734 (=> (not res!2063925) (not e!3025422))))

(declare-fun lt!1985139 () Bool)

(assert (=> d!1551734 (= res!2063925 (not lt!1985139))))

(declare-fun lt!1985136 () Bool)

(assert (=> d!1551734 (= lt!1985139 lt!1985136)))

(declare-fun lt!1985135 () Unit!145037)

(declare-fun e!3025418 () Unit!145037)

(assert (=> d!1551734 (= lt!1985135 e!3025418)))

(declare-fun c!824383 () Bool)

(assert (=> d!1551734 (= c!824383 lt!1985136)))

(declare-fun containsKey!4597 (List!55504 K!17142) Bool)

(assert (=> d!1551734 (= lt!1985136 (containsKey!4597 (toList!7766 lt!1984994) key!6540))))

(assert (=> d!1551734 (= (contains!19102 lt!1984994 key!6540) lt!1985139)))

(declare-fun b!4841003 () Bool)

(declare-fun e!3025420 () Unit!145037)

(declare-fun Unit!145052 () Unit!145037)

(assert (=> b!4841003 (= e!3025420 Unit!145052)))

(declare-fun b!4841004 () Bool)

(declare-fun e!3025417 () Bool)

(declare-datatypes ((List!55508 0))(
  ( (Nil!55384) (Cons!55384 (h!61819 K!17142) (t!363004 List!55508)) )
))
(declare-fun contains!19105 (List!55508 K!17142) Bool)

(declare-fun keys!20472 (ListMap!7103) List!55508)

(assert (=> b!4841004 (= e!3025417 (contains!19105 (keys!20472 lt!1984994) key!6540))))

(declare-fun b!4841005 () Bool)

(assert (=> b!4841005 false))

(declare-fun lt!1985138 () Unit!145037)

(declare-fun lt!1985134 () Unit!145037)

(assert (=> b!4841005 (= lt!1985138 lt!1985134)))

(assert (=> b!4841005 (containsKey!4597 (toList!7766 lt!1984994) key!6540)))

(declare-fun lemmaInGetKeysListThenContainsKey!1209 (List!55504 K!17142) Unit!145037)

(assert (=> b!4841005 (= lt!1985134 (lemmaInGetKeysListThenContainsKey!1209 (toList!7766 lt!1984994) key!6540))))

(declare-fun Unit!145053 () Unit!145037)

(assert (=> b!4841005 (= e!3025420 Unit!145053)))

(declare-fun b!4841006 () Bool)

(declare-fun lt!1985137 () Unit!145037)

(assert (=> b!4841006 (= e!3025418 lt!1985137)))

(declare-fun lt!1985141 () Unit!145037)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2482 (List!55504 K!17142) Unit!145037)

(assert (=> b!4841006 (= lt!1985141 (lemmaContainsKeyImpliesGetValueByKeyDefined!2482 (toList!7766 lt!1984994) key!6540))))

(declare-datatypes ((Option!13613 0))(
  ( (None!13612) (Some!13612 (v!49348 V!17388)) )
))
(declare-fun isDefined!10709 (Option!13613) Bool)

(declare-fun getValueByKey!2708 (List!55504 K!17142) Option!13613)

(assert (=> b!4841006 (isDefined!10709 (getValueByKey!2708 (toList!7766 lt!1984994) key!6540))))

(declare-fun lt!1985140 () Unit!145037)

(assert (=> b!4841006 (= lt!1985140 lt!1985141)))

(declare-fun lemmaInListThenGetKeysListContains!1204 (List!55504 K!17142) Unit!145037)

(assert (=> b!4841006 (= lt!1985137 (lemmaInListThenGetKeysListContains!1204 (toList!7766 lt!1984994) key!6540))))

(declare-fun call!337385 () Bool)

(assert (=> b!4841006 call!337385))

(declare-fun b!4841007 () Bool)

(assert (=> b!4841007 (= e!3025422 (not (contains!19105 (keys!20472 lt!1984994) key!6540)))))

(declare-fun bm!337380 () Bool)

(declare-fun e!3025421 () List!55508)

(assert (=> bm!337380 (= call!337385 (contains!19105 e!3025421 key!6540))))

(declare-fun c!824384 () Bool)

(assert (=> bm!337380 (= c!824384 c!824383)))

(declare-fun b!4841008 () Bool)

(declare-fun getKeysList!1209 (List!55504) List!55508)

(assert (=> b!4841008 (= e!3025421 (getKeysList!1209 (toList!7766 lt!1984994)))))

(declare-fun b!4841009 () Bool)

(assert (=> b!4841009 (= e!3025418 e!3025420)))

(declare-fun c!824385 () Bool)

(assert (=> b!4841009 (= c!824385 call!337385)))

(declare-fun b!4841010 () Bool)

(assert (=> b!4841010 (= e!3025421 (keys!20472 lt!1984994))))

(declare-fun b!4841011 () Bool)

(assert (=> b!4841011 (= e!3025419 e!3025417)))

(declare-fun res!2063926 () Bool)

(assert (=> b!4841011 (=> (not res!2063926) (not e!3025417))))

(assert (=> b!4841011 (= res!2063926 (isDefined!10709 (getValueByKey!2708 (toList!7766 lt!1984994) key!6540)))))

(assert (= (and d!1551734 c!824383) b!4841006))

(assert (= (and d!1551734 (not c!824383)) b!4841009))

(assert (= (and b!4841009 c!824385) b!4841005))

(assert (= (and b!4841009 (not c!824385)) b!4841003))

(assert (= (or b!4841006 b!4841009) bm!337380))

(assert (= (and bm!337380 c!824384) b!4841008))

(assert (= (and bm!337380 (not c!824384)) b!4841010))

(assert (= (and d!1551734 res!2063925) b!4841007))

(assert (= (and d!1551734 (not res!2063927)) b!4841011))

(assert (= (and b!4841011 res!2063926) b!4841004))

(declare-fun m!5836680 () Bool)

(assert (=> b!4841004 m!5836680))

(assert (=> b!4841004 m!5836680))

(declare-fun m!5836682 () Bool)

(assert (=> b!4841004 m!5836682))

(assert (=> b!4841007 m!5836680))

(assert (=> b!4841007 m!5836680))

(assert (=> b!4841007 m!5836682))

(declare-fun m!5836684 () Bool)

(assert (=> b!4841006 m!5836684))

(declare-fun m!5836686 () Bool)

(assert (=> b!4841006 m!5836686))

(assert (=> b!4841006 m!5836686))

(declare-fun m!5836688 () Bool)

(assert (=> b!4841006 m!5836688))

(declare-fun m!5836690 () Bool)

(assert (=> b!4841006 m!5836690))

(declare-fun m!5836692 () Bool)

(assert (=> b!4841005 m!5836692))

(declare-fun m!5836694 () Bool)

(assert (=> b!4841005 m!5836694))

(declare-fun m!5836696 () Bool)

(assert (=> bm!337380 m!5836696))

(assert (=> d!1551734 m!5836692))

(assert (=> b!4841010 m!5836680))

(assert (=> b!4841011 m!5836686))

(assert (=> b!4841011 m!5836686))

(assert (=> b!4841011 m!5836688))

(declare-fun m!5836698 () Bool)

(assert (=> b!4841008 m!5836698))

(assert (=> b!4840886 d!1551734))

(declare-fun d!1551736 () Bool)

(declare-fun c!824388 () Bool)

(declare-fun e!3025428 () Bool)

(assert (=> d!1551736 (= c!824388 e!3025428)))

(declare-fun res!2063930 () Bool)

(assert (=> d!1551736 (=> (not res!2063930) (not e!3025428))))

(assert (=> d!1551736 (= res!2063930 (is-Cons!55381 (toList!7765 lm!2671)))))

(declare-fun e!3025427 () V!17388)

(assert (=> d!1551736 (= (getValue!197 (toList!7765 lm!2671) key!6540) e!3025427)))

(declare-fun b!4841020 () Bool)

(assert (=> b!4841020 (= e!3025428 (containsKey!4595 (_2!32750 (h!61816 (toList!7765 lm!2671))) key!6540))))

(declare-fun b!4841018 () Bool)

(declare-datatypes ((Option!13614 0))(
  ( (None!13613) (Some!13613 (v!49349 tuple2!58910)) )
))
(declare-fun get!18957 (Option!13614) tuple2!58910)

(declare-fun getPair!1053 (List!55504 K!17142) Option!13614)

(assert (=> b!4841018 (= e!3025427 (_2!32749 (get!18957 (getPair!1053 (_2!32750 (h!61816 (toList!7765 lm!2671))) key!6540))))))

(declare-fun b!4841019 () Bool)

(assert (=> b!4841019 (= e!3025427 (getValue!197 (t!363001 (toList!7765 lm!2671)) key!6540))))

(assert (= (and d!1551736 res!2063930) b!4841020))

(assert (= (and d!1551736 c!824388) b!4841018))

(assert (= (and d!1551736 (not c!824388)) b!4841019))

(assert (=> b!4841020 m!5836564))

(declare-fun m!5836700 () Bool)

(assert (=> b!4841018 m!5836700))

(assert (=> b!4841018 m!5836700))

(declare-fun m!5836702 () Bool)

(assert (=> b!4841018 m!5836702))

(declare-fun m!5836704 () Bool)

(assert (=> b!4841019 m!5836704))

(assert (=> b!4840886 d!1551736))

(declare-fun bs!1168428 () Bool)

(declare-fun d!1551738 () Bool)

(assert (= bs!1168428 (and d!1551738 start!503836)))

(declare-fun lambda!241137 () Int)

(assert (=> bs!1168428 (= lambda!241137 lambda!241091)))

(declare-fun bs!1168429 () Bool)

(assert (= bs!1168429 (and d!1551738 d!1551720)))

(assert (=> bs!1168429 (= lambda!241137 lambda!241101)))

(declare-fun lt!1985142 () ListMap!7103)

(assert (=> d!1551738 (invariantList!1878 (toList!7766 lt!1985142))))

(declare-fun e!3025429 () ListMap!7103)

(assert (=> d!1551738 (= lt!1985142 e!3025429)))

(declare-fun c!824389 () Bool)

(assert (=> d!1551738 (= c!824389 (is-Cons!55381 (t!363001 (toList!7765 lm!2671))))))

(assert (=> d!1551738 (forall!12854 (t!363001 (toList!7765 lm!2671)) lambda!241137)))

(assert (=> d!1551738 (= (extractMap!2771 (t!363001 (toList!7765 lm!2671))) lt!1985142)))

(declare-fun b!4841021 () Bool)

(assert (=> b!4841021 (= e!3025429 (addToMapMapFromBucket!1911 (_2!32750 (h!61816 (t!363001 (toList!7765 lm!2671)))) (extractMap!2771 (t!363001 (t!363001 (toList!7765 lm!2671))))))))

(declare-fun b!4841022 () Bool)

(assert (=> b!4841022 (= e!3025429 (ListMap!7104 Nil!55380))))

(assert (= (and d!1551738 c!824389) b!4841021))

(assert (= (and d!1551738 (not c!824389)) b!4841022))

(declare-fun m!5836706 () Bool)

(assert (=> d!1551738 m!5836706))

(declare-fun m!5836708 () Bool)

(assert (=> d!1551738 m!5836708))

(declare-fun m!5836710 () Bool)

(assert (=> b!4841021 m!5836710))

(assert (=> b!4841021 m!5836710))

(declare-fun m!5836712 () Bool)

(assert (=> b!4841021 m!5836712))

(assert (=> b!4840886 d!1551738))

(declare-fun d!1551740 () Bool)

(declare-fun dynLambda!22301 (Int tuple2!58910) Bool)

(assert (=> d!1551740 (dynLambda!22301 lambda!241092 lt!1984991)))

(declare-fun lt!1985145 () Unit!145037)

(declare-fun choose!35372 (List!55504 Int tuple2!58910) Unit!145037)

(assert (=> d!1551740 (= lt!1985145 (choose!35372 (_2!32750 (h!61816 (toList!7765 lm!2671))) lambda!241092 lt!1984991))))

(declare-fun e!3025432 () Bool)

(assert (=> d!1551740 e!3025432))

(declare-fun res!2063933 () Bool)

(assert (=> d!1551740 (=> (not res!2063933) (not e!3025432))))

(assert (=> d!1551740 (= res!2063933 (forall!12856 (_2!32750 (h!61816 (toList!7765 lm!2671))) lambda!241092))))

(assert (=> d!1551740 (= (forallContained!4495 (_2!32750 (h!61816 (toList!7765 lm!2671))) lambda!241092 lt!1984991) lt!1985145)))

(declare-fun b!4841025 () Bool)

(assert (=> b!4841025 (= e!3025432 (contains!19101 (_2!32750 (h!61816 (toList!7765 lm!2671))) lt!1984991))))

(assert (= (and d!1551740 res!2063933) b!4841025))

(declare-fun b_lambda!191353 () Bool)

(assert (=> (not b_lambda!191353) (not d!1551740)))

(declare-fun m!5836714 () Bool)

(assert (=> d!1551740 m!5836714))

(declare-fun m!5836716 () Bool)

(assert (=> d!1551740 m!5836716))

(declare-fun m!5836718 () Bool)

(assert (=> d!1551740 m!5836718))

(assert (=> b!4841025 m!5836566))

(assert (=> b!4840886 d!1551740))

(declare-fun d!1551742 () Bool)

(declare-fun lt!1985146 () Bool)

(assert (=> d!1551742 (= lt!1985146 (set.member lt!1984991 (content!9855 (_2!32750 (head!10391 (toList!7765 lm!2671))))))))

(declare-fun e!3025434 () Bool)

(assert (=> d!1551742 (= lt!1985146 e!3025434)))

(declare-fun res!2063934 () Bool)

(assert (=> d!1551742 (=> (not res!2063934) (not e!3025434))))

(assert (=> d!1551742 (= res!2063934 (is-Cons!55380 (_2!32750 (head!10391 (toList!7765 lm!2671)))))))

(assert (=> d!1551742 (= (contains!19101 (_2!32750 (head!10391 (toList!7765 lm!2671))) lt!1984991) lt!1985146)))

(declare-fun b!4841026 () Bool)

(declare-fun e!3025433 () Bool)

(assert (=> b!4841026 (= e!3025434 e!3025433)))

(declare-fun res!2063935 () Bool)

(assert (=> b!4841026 (=> res!2063935 e!3025433)))

(assert (=> b!4841026 (= res!2063935 (= (h!61815 (_2!32750 (head!10391 (toList!7765 lm!2671)))) lt!1984991))))

(declare-fun b!4841027 () Bool)

(assert (=> b!4841027 (= e!3025433 (contains!19101 (t!363000 (_2!32750 (head!10391 (toList!7765 lm!2671)))) lt!1984991))))

(assert (= (and d!1551742 res!2063934) b!4841026))

(assert (= (and b!4841026 (not res!2063935)) b!4841027))

(declare-fun m!5836720 () Bool)

(assert (=> d!1551742 m!5836720))

(declare-fun m!5836722 () Bool)

(assert (=> d!1551742 m!5836722))

(declare-fun m!5836724 () Bool)

(assert (=> b!4841027 m!5836724))

(assert (=> b!4840886 d!1551742))

(declare-fun bs!1168430 () Bool)

(declare-fun d!1551744 () Bool)

(assert (= bs!1168430 (and d!1551744 start!503836)))

(declare-fun lambda!241140 () Int)

(assert (=> bs!1168430 (= lambda!241140 lambda!241091)))

(declare-fun bs!1168431 () Bool)

(assert (= bs!1168431 (and d!1551744 d!1551720)))

(assert (=> bs!1168431 (= lambda!241140 lambda!241101)))

(declare-fun bs!1168432 () Bool)

(assert (= bs!1168432 (and d!1551744 d!1551738)))

(assert (=> bs!1168432 (= lambda!241140 lambda!241137)))

(assert (=> d!1551744 (contains!19101 (_2!32750 (head!10391 (toList!7765 lm!2671))) (tuple2!58911 key!6540 lt!1984995))))

(declare-fun lt!1985149 () Unit!145037)

(declare-fun choose!35373 (ListLongMap!6321 K!17142 V!17388 Hashable!7429) Unit!145037)

(assert (=> d!1551744 (= lt!1985149 (choose!35373 lm!2671 key!6540 lt!1984995 hashF!1662))))

(assert (=> d!1551744 (forall!12854 (toList!7765 lm!2671) lambda!241140)))

(assert (=> d!1551744 (= (lemmaInPairListHeadThenGetValueInTuple!19 lm!2671 key!6540 lt!1984995 hashF!1662) lt!1985149)))

(declare-fun bs!1168433 () Bool)

(assert (= bs!1168433 d!1551744))

(assert (=> bs!1168433 m!5836548))

(declare-fun m!5836726 () Bool)

(assert (=> bs!1168433 m!5836726))

(declare-fun m!5836728 () Bool)

(assert (=> bs!1168433 m!5836728))

(declare-fun m!5836730 () Bool)

(assert (=> bs!1168433 m!5836730))

(assert (=> b!4840886 d!1551744))

(declare-fun d!1551746 () Bool)

(assert (=> d!1551746 (= (head!10391 (toList!7765 lm!2671)) (h!61816 (toList!7765 lm!2671)))))

(assert (=> b!4840886 d!1551746))

(declare-fun d!1551748 () Bool)

(declare-fun res!2063940 () Bool)

(declare-fun e!3025439 () Bool)

(assert (=> d!1551748 (=> res!2063940 e!3025439)))

(assert (=> d!1551748 (= res!2063940 (and (is-Cons!55380 (_2!32750 (h!61816 (toList!7765 lm!2671)))) (= (_1!32749 (h!61815 (_2!32750 (h!61816 (toList!7765 lm!2671))))) key!6540)))))

(assert (=> d!1551748 (= (containsKey!4595 (_2!32750 (h!61816 (toList!7765 lm!2671))) key!6540) e!3025439)))

(declare-fun b!4841032 () Bool)

(declare-fun e!3025440 () Bool)

(assert (=> b!4841032 (= e!3025439 e!3025440)))

(declare-fun res!2063941 () Bool)

(assert (=> b!4841032 (=> (not res!2063941) (not e!3025440))))

(assert (=> b!4841032 (= res!2063941 (is-Cons!55380 (_2!32750 (h!61816 (toList!7765 lm!2671)))))))

(declare-fun b!4841033 () Bool)

(assert (=> b!4841033 (= e!3025440 (containsKey!4595 (t!363000 (_2!32750 (h!61816 (toList!7765 lm!2671)))) key!6540))))

(assert (= (and d!1551748 (not res!2063940)) b!4841032))

(assert (= (and b!4841032 res!2063941) b!4841033))

(declare-fun m!5836732 () Bool)

(assert (=> b!4841033 m!5836732))

(assert (=> b!4840887 d!1551748))

(declare-fun d!1551750 () Bool)

(declare-fun res!2063946 () Bool)

(declare-fun e!3025445 () Bool)

(assert (=> d!1551750 (=> res!2063946 e!3025445)))

(assert (=> d!1551750 (= res!2063946 (is-Nil!55381 (toList!7765 lm!2671)))))

(assert (=> d!1551750 (= (forall!12854 (toList!7765 lm!2671) lambda!241091) e!3025445)))

(declare-fun b!4841038 () Bool)

(declare-fun e!3025446 () Bool)

(assert (=> b!4841038 (= e!3025445 e!3025446)))

(declare-fun res!2063947 () Bool)

(assert (=> b!4841038 (=> (not res!2063947) (not e!3025446))))

(declare-fun dynLambda!22302 (Int tuple2!58912) Bool)

(assert (=> b!4841038 (= res!2063947 (dynLambda!22302 lambda!241091 (h!61816 (toList!7765 lm!2671))))))

(declare-fun b!4841039 () Bool)

(assert (=> b!4841039 (= e!3025446 (forall!12854 (t!363001 (toList!7765 lm!2671)) lambda!241091))))

(assert (= (and d!1551750 (not res!2063946)) b!4841038))

(assert (= (and b!4841038 res!2063947) b!4841039))

(declare-fun b_lambda!191355 () Bool)

(assert (=> (not b_lambda!191355) (not b!4841038)))

(declare-fun m!5836734 () Bool)

(assert (=> b!4841038 m!5836734))

(declare-fun m!5836736 () Bool)

(assert (=> b!4841039 m!5836736))

(assert (=> start!503836 d!1551750))

(declare-fun d!1551752 () Bool)

(declare-fun isStrictlySorted!1046 (List!55505) Bool)

(assert (=> d!1551752 (= (inv!71043 lm!2671) (isStrictlySorted!1046 (toList!7765 lm!2671)))))

(declare-fun bs!1168434 () Bool)

(assert (= bs!1168434 d!1551752))

(declare-fun m!5836738 () Bool)

(assert (=> bs!1168434 m!5836738))

(assert (=> start!503836 d!1551752))

(declare-fun bs!1168435 () Bool)

(declare-fun d!1551754 () Bool)

(assert (= bs!1168435 (and d!1551754 start!503836)))

(declare-fun lambda!241143 () Int)

(assert (=> bs!1168435 (not (= lambda!241143 lambda!241091))))

(declare-fun bs!1168436 () Bool)

(assert (= bs!1168436 (and d!1551754 d!1551720)))

(assert (=> bs!1168436 (not (= lambda!241143 lambda!241101))))

(declare-fun bs!1168437 () Bool)

(assert (= bs!1168437 (and d!1551754 d!1551738)))

(assert (=> bs!1168437 (not (= lambda!241143 lambda!241137))))

(declare-fun bs!1168438 () Bool)

(assert (= bs!1168438 (and d!1551754 d!1551744)))

(assert (=> bs!1168438 (not (= lambda!241143 lambda!241140))))

(assert (=> d!1551754 true))

(assert (=> d!1551754 (= (allKeysSameHashInMap!2745 lm!2671 hashF!1662) (forall!12854 (toList!7765 lm!2671) lambda!241143))))

(declare-fun bs!1168439 () Bool)

(assert (= bs!1168439 d!1551754))

(declare-fun m!5836740 () Bool)

(assert (=> bs!1168439 m!5836740))

(assert (=> b!4840882 d!1551754))

(declare-fun b!4841046 () Bool)

(declare-fun e!3025449 () Bool)

(declare-fun tp!1363911 () Bool)

(declare-fun tp!1363912 () Bool)

(assert (=> b!4841046 (= e!3025449 (and tp!1363911 tp!1363912))))

(assert (=> b!4840881 (= tp!1363903 e!3025449)))

(assert (= (and b!4840881 (is-Cons!55381 (toList!7765 lm!2671))) b!4841046))

(declare-fun b_lambda!191357 () Bool)

(assert (= b_lambda!191355 (or start!503836 b_lambda!191357)))

(declare-fun bs!1168440 () Bool)

(declare-fun d!1551756 () Bool)

(assert (= bs!1168440 (and d!1551756 start!503836)))

(assert (=> bs!1168440 (= (dynLambda!22302 lambda!241091 (h!61816 (toList!7765 lm!2671))) (noDuplicateKeys!2546 (_2!32750 (h!61816 (toList!7765 lm!2671)))))))

(assert (=> bs!1168440 m!5836648))

(assert (=> b!4841038 d!1551756))

(declare-fun b_lambda!191359 () Bool)

(assert (= b_lambda!191353 (or b!4840886 b_lambda!191359)))

(declare-fun bs!1168441 () Bool)

(declare-fun d!1551758 () Bool)

(assert (= bs!1168441 (and d!1551758 b!4840886)))

(assert (=> bs!1168441 (= (dynLambda!22301 lambda!241092 lt!1984991) (contains!19102 lt!1984996 (_1!32749 lt!1984991)))))

(declare-fun m!5836742 () Bool)

(assert (=> bs!1168441 m!5836742))

(assert (=> d!1551740 d!1551758))

(push 1)

(assert (not b!4841021))

(assert (not b!4841008))

(assert (not b!4841018))

(assert (not bs!1168441))

(assert (not b!4840984))

(assert (not b!4840982))

(assert (not d!1551752))

(assert (not b!4840932))

(assert (not d!1551738))

(assert (not b!4841006))

(assert (not bm!337375))

(assert (not b!4841011))

(assert (not b!4841010))

(assert (not b!4841004))

(assert tp_is_empty!34961)

(assert (not b!4841025))

(assert (not bs!1168440))

(assert (not bm!337376))

(assert (not b!4840925))

(assert (not b!4841046))

(assert (not b!4841007))

(assert (not bm!337380))

(assert (not bm!337377))

(assert (not b_lambda!191359))

(assert (not d!1551744))

(assert (not d!1551740))

(assert (not b!4841005))

(assert (not d!1551722))

(assert (not d!1551754))

(assert (not b!4840980))

(assert (not d!1551720))

(assert (not b!4841019))

(assert (not b!4841039))

(assert (not d!1551742))

(assert (not b!4840983))

(assert (not b!4840927))

(assert (not b_lambda!191357))

(assert (not b!4840918))

(assert (not b!4841027))

(assert (not d!1551734))

(assert (not d!1551716))

(assert (not b!4841033))

(assert (not b!4841020))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

