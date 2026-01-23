; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!490304 () Bool)

(assert start!490304)

(declare-fun bs!1151366 () Bool)

(declare-fun b!4779015 () Bool)

(assert (= bs!1151366 (and b!4779015 start!490304)))

(declare-fun lambda!227591 () Int)

(declare-fun lambda!227590 () Int)

(assert (=> bs!1151366 (not (= lambda!227591 lambda!227590))))

(assert (=> b!4779015 true))

(declare-fun e!2983512 () Bool)

(declare-fun e!2983509 () Bool)

(assert (=> b!4779015 (= e!2983512 e!2983509)))

(declare-fun res!2028732 () Bool)

(assert (=> b!4779015 (=> res!2028732 e!2983509)))

(declare-datatypes ((K!15522 0))(
  ( (K!15523 (val!20723 Int)) )
))
(declare-datatypes ((V!15768 0))(
  ( (V!15769 (val!20724 Int)) )
))
(declare-datatypes ((tuple2!56420 0))(
  ( (tuple2!56421 (_1!31504 K!15522) (_2!31504 V!15768)) )
))
(declare-datatypes ((List!54081 0))(
  ( (Nil!53957) (Cons!53957 (h!60373 tuple2!56420) (t!361531 List!54081)) )
))
(declare-datatypes ((tuple2!56422 0))(
  ( (tuple2!56423 (_1!31505 (_ BitVec 64)) (_2!31505 List!54081)) )
))
(declare-datatypes ((List!54082 0))(
  ( (Nil!53958) (Cons!53958 (h!60374 tuple2!56422) (t!361532 List!54082)) )
))
(declare-datatypes ((ListLongMap!5127 0))(
  ( (ListLongMap!5128 (toList!6705 List!54082)) )
))
(declare-fun lm!2709 () ListLongMap!5127)

(declare-fun key!6641 () K!15522)

(declare-fun containsKey!3783 (List!54081 K!15522) Bool)

(assert (=> b!4779015 (= res!2028732 (containsKey!3783 (_2!31505 (h!60374 (toList!6705 lm!2709))) key!6641))))

(declare-datatypes ((Unit!139119 0))(
  ( (Unit!139120) )
))
(declare-fun lt!1941868 () Unit!139119)

(declare-fun forallContained!4038 (List!54082 Int tuple2!56422) Unit!139119)

(assert (=> b!4779015 (= lt!1941868 (forallContained!4038 (toList!6705 lm!2709) lambda!227591 (h!60374 (toList!6705 lm!2709))))))

(declare-fun b!4779016 () Bool)

(declare-fun res!2028731 () Bool)

(assert (=> b!4779016 (=> res!2028731 e!2983512)))

(declare-fun lt!1941864 () (_ BitVec 64))

(assert (=> b!4779016 (= res!2028731 (or (not (is-Cons!53958 (toList!6705 lm!2709))) (not (= (_1!31505 (h!60374 (toList!6705 lm!2709))) lt!1941864))))))

(declare-fun b!4779017 () Bool)

(declare-fun res!2028733 () Bool)

(assert (=> b!4779017 (=> res!2028733 e!2983509)))

(declare-fun forall!12093 (List!54082 Int) Bool)

(assert (=> b!4779017 (= res!2028733 (not (forall!12093 (toList!6705 lm!2709) lambda!227590)))))

(declare-fun b!4779018 () Bool)

(declare-fun e!2983511 () Bool)

(assert (=> b!4779018 (= e!2983511 (not e!2983512))))

(declare-fun res!2028729 () Bool)

(assert (=> b!4779018 (=> res!2028729 e!2983512)))

(declare-datatypes ((Option!12901 0))(
  ( (None!12900) (Some!12900 (v!48083 tuple2!56420)) )
))
(declare-fun lt!1941871 () Option!12901)

(declare-fun v!11584 () V!15768)

(declare-fun get!18328 (Option!12901) tuple2!56420)

(assert (=> b!4779018 (= res!2028729 (not (= (_2!31504 (get!18328 lt!1941871)) v!11584)))))

(declare-fun isDefined!10045 (Option!12901) Bool)

(assert (=> b!4779018 (isDefined!10045 lt!1941871)))

(declare-fun lt!1941865 () List!54081)

(declare-fun getPair!785 (List!54081 K!15522) Option!12901)

(assert (=> b!4779018 (= lt!1941871 (getPair!785 lt!1941865 key!6641))))

(declare-fun lt!1941867 () Unit!139119)

(declare-fun lt!1941874 () tuple2!56422)

(assert (=> b!4779018 (= lt!1941867 (forallContained!4038 (toList!6705 lm!2709) lambda!227590 lt!1941874))))

(declare-fun lt!1941872 () Unit!139119)

(declare-datatypes ((Hashable!6813 0))(
  ( (HashableExt!6812 (__x!32836 Int)) )
))
(declare-fun hashF!1687 () Hashable!6813)

(declare-fun lemmaInGenMapThenGetPairDefined!559 (ListLongMap!5127 K!15522 Hashable!6813) Unit!139119)

(assert (=> b!4779018 (= lt!1941872 (lemmaInGenMapThenGetPairDefined!559 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1941873 () Unit!139119)

(assert (=> b!4779018 (= lt!1941873 (forallContained!4038 (toList!6705 lm!2709) lambda!227590 lt!1941874))))

(declare-fun contains!17467 (List!54082 tuple2!56422) Bool)

(assert (=> b!4779018 (contains!17467 (toList!6705 lm!2709) lt!1941874)))

(assert (=> b!4779018 (= lt!1941874 (tuple2!56423 lt!1941864 lt!1941865))))

(declare-fun lt!1941866 () Unit!139119)

(declare-fun lemmaGetValueImpliesTupleContained!592 (ListLongMap!5127 (_ BitVec 64) List!54081) Unit!139119)

(assert (=> b!4779018 (= lt!1941866 (lemmaGetValueImpliesTupleContained!592 lm!2709 lt!1941864 lt!1941865))))

(declare-fun apply!12868 (ListLongMap!5127 (_ BitVec 64)) List!54081)

(assert (=> b!4779018 (= lt!1941865 (apply!12868 lm!2709 lt!1941864))))

(declare-fun contains!17468 (ListLongMap!5127 (_ BitVec 64)) Bool)

(assert (=> b!4779018 (contains!17468 lm!2709 lt!1941864)))

(declare-fun hash!4792 (Hashable!6813 K!15522) (_ BitVec 64))

(assert (=> b!4779018 (= lt!1941864 (hash!4792 hashF!1687 key!6641))))

(declare-fun lt!1941869 () Unit!139119)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1009 (ListLongMap!5127 K!15522 Hashable!6813) Unit!139119)

(assert (=> b!4779018 (= lt!1941869 (lemmaInGenMapThenLongMapContainsHash!1009 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6177 0))(
  ( (ListMap!6178 (toList!6706 List!54081)) )
))
(declare-fun contains!17469 (ListMap!6177 K!15522) Bool)

(declare-fun extractMap!2340 (List!54082) ListMap!6177)

(assert (=> b!4779018 (contains!17469 (extractMap!2340 (toList!6705 lm!2709)) key!6641)))

(declare-fun lt!1941870 () Unit!139119)

(declare-fun lemmaListContainsThenExtractedMapContains!661 (ListLongMap!5127 K!15522 Hashable!6813) Unit!139119)

(assert (=> b!4779018 (= lt!1941870 (lemmaListContainsThenExtractedMapContains!661 lm!2709 key!6641 hashF!1687))))

(declare-fun res!2028734 () Bool)

(assert (=> start!490304 (=> (not res!2028734) (not e!2983511))))

(assert (=> start!490304 (= res!2028734 (forall!12093 (toList!6705 lm!2709) lambda!227590))))

(assert (=> start!490304 e!2983511))

(declare-fun e!2983510 () Bool)

(declare-fun inv!69549 (ListLongMap!5127) Bool)

(assert (=> start!490304 (and (inv!69549 lm!2709) e!2983510)))

(assert (=> start!490304 true))

(declare-fun tp_is_empty!33153 () Bool)

(assert (=> start!490304 tp_is_empty!33153))

(declare-fun tp_is_empty!33155 () Bool)

(assert (=> start!490304 tp_is_empty!33155))

(declare-fun b!4779019 () Bool)

(assert (=> b!4779019 (= e!2983509 (not (containsKey!3783 lt!1941865 key!6641)))))

(declare-fun b!4779020 () Bool)

(declare-fun res!2028730 () Bool)

(assert (=> b!4779020 (=> (not res!2028730) (not e!2983511))))

(declare-fun containsKeyBiggerList!469 (List!54082 K!15522) Bool)

(assert (=> b!4779020 (= res!2028730 (containsKeyBiggerList!469 (toList!6705 lm!2709) key!6641))))

(declare-fun b!4779021 () Bool)

(declare-fun tp!1357319 () Bool)

(assert (=> b!4779021 (= e!2983510 tp!1357319)))

(declare-fun b!4779022 () Bool)

(declare-fun res!2028735 () Bool)

(assert (=> b!4779022 (=> (not res!2028735) (not e!2983511))))

(declare-fun allKeysSameHashInMap!2218 (ListLongMap!5127 Hashable!6813) Bool)

(assert (=> b!4779022 (= res!2028735 (allKeysSameHashInMap!2218 lm!2709 hashF!1687))))

(assert (= (and start!490304 res!2028734) b!4779022))

(assert (= (and b!4779022 res!2028735) b!4779020))

(assert (= (and b!4779020 res!2028730) b!4779018))

(assert (= (and b!4779018 (not res!2028729)) b!4779016))

(assert (= (and b!4779016 (not res!2028731)) b!4779015))

(assert (= (and b!4779015 (not res!2028732)) b!4779017))

(assert (= (and b!4779017 (not res!2028733)) b!4779019))

(assert (= start!490304 b!4779021))

(declare-fun m!5755360 () Bool)

(assert (=> b!4779019 m!5755360))

(declare-fun m!5755362 () Bool)

(assert (=> b!4779015 m!5755362))

(declare-fun m!5755364 () Bool)

(assert (=> b!4779015 m!5755364))

(declare-fun m!5755366 () Bool)

(assert (=> b!4779018 m!5755366))

(declare-fun m!5755368 () Bool)

(assert (=> b!4779018 m!5755368))

(declare-fun m!5755370 () Bool)

(assert (=> b!4779018 m!5755370))

(declare-fun m!5755372 () Bool)

(assert (=> b!4779018 m!5755372))

(declare-fun m!5755374 () Bool)

(assert (=> b!4779018 m!5755374))

(declare-fun m!5755376 () Bool)

(assert (=> b!4779018 m!5755376))

(declare-fun m!5755378 () Bool)

(assert (=> b!4779018 m!5755378))

(declare-fun m!5755380 () Bool)

(assert (=> b!4779018 m!5755380))

(declare-fun m!5755382 () Bool)

(assert (=> b!4779018 m!5755382))

(declare-fun m!5755384 () Bool)

(assert (=> b!4779018 m!5755384))

(declare-fun m!5755386 () Bool)

(assert (=> b!4779018 m!5755386))

(declare-fun m!5755388 () Bool)

(assert (=> b!4779018 m!5755388))

(assert (=> b!4779018 m!5755372))

(declare-fun m!5755390 () Bool)

(assert (=> b!4779018 m!5755390))

(declare-fun m!5755392 () Bool)

(assert (=> b!4779018 m!5755392))

(assert (=> b!4779018 m!5755386))

(declare-fun m!5755394 () Bool)

(assert (=> b!4779020 m!5755394))

(declare-fun m!5755396 () Bool)

(assert (=> b!4779022 m!5755396))

(declare-fun m!5755398 () Bool)

(assert (=> start!490304 m!5755398))

(declare-fun m!5755400 () Bool)

(assert (=> start!490304 m!5755400))

(assert (=> b!4779017 m!5755398))

(push 1)

(assert tp_is_empty!33155)

(assert (not b!4779019))

(assert (not b!4779020))

(assert (not b!4779018))

(assert (not b!4779017))

(assert (not b!4779022))

(assert (not start!490304))

(assert tp_is_empty!33153)

(assert (not b!4779021))

(assert (not b!4779015))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1151368 () Bool)

(declare-fun d!1527554 () Bool)

(assert (= bs!1151368 (and d!1527554 start!490304)))

(declare-fun lambda!227606 () Int)

(assert (=> bs!1151368 (not (= lambda!227606 lambda!227590))))

(declare-fun bs!1151369 () Bool)

(assert (= bs!1151369 (and d!1527554 b!4779015)))

(assert (=> bs!1151369 (= lambda!227606 lambda!227591)))

(assert (=> d!1527554 true))

(assert (=> d!1527554 (= (allKeysSameHashInMap!2218 lm!2709 hashF!1687) (forall!12093 (toList!6705 lm!2709) lambda!227606))))

(declare-fun bs!1151370 () Bool)

(assert (= bs!1151370 d!1527554))

(declare-fun m!5755444 () Bool)

(assert (=> bs!1151370 m!5755444))

(assert (=> b!4779022 d!1527554))

(declare-fun d!1527556 () Bool)

(declare-fun res!2028761 () Bool)

(declare-fun e!2983529 () Bool)

(assert (=> d!1527556 (=> res!2028761 e!2983529)))

(assert (=> d!1527556 (= res!2028761 (is-Nil!53958 (toList!6705 lm!2709)))))

(assert (=> d!1527556 (= (forall!12093 (toList!6705 lm!2709) lambda!227590) e!2983529)))

(declare-fun b!4779055 () Bool)

(declare-fun e!2983530 () Bool)

(assert (=> b!4779055 (= e!2983529 e!2983530)))

(declare-fun res!2028762 () Bool)

(assert (=> b!4779055 (=> (not res!2028762) (not e!2983530))))

(declare-fun dynLambda!22006 (Int tuple2!56422) Bool)

(assert (=> b!4779055 (= res!2028762 (dynLambda!22006 lambda!227590 (h!60374 (toList!6705 lm!2709))))))

(declare-fun b!4779056 () Bool)

(assert (=> b!4779056 (= e!2983530 (forall!12093 (t!361532 (toList!6705 lm!2709)) lambda!227590))))

(assert (= (and d!1527556 (not res!2028761)) b!4779055))

(assert (= (and b!4779055 res!2028762) b!4779056))

(declare-fun b_lambda!185363 () Bool)

(assert (=> (not b_lambda!185363) (not b!4779055)))

(declare-fun m!5755446 () Bool)

(assert (=> b!4779055 m!5755446))

(declare-fun m!5755448 () Bool)

(assert (=> b!4779056 m!5755448))

(assert (=> b!4779017 d!1527556))

(assert (=> start!490304 d!1527556))

(declare-fun d!1527558 () Bool)

(declare-fun isStrictlySorted!839 (List!54082) Bool)

(assert (=> d!1527558 (= (inv!69549 lm!2709) (isStrictlySorted!839 (toList!6705 lm!2709)))))

(declare-fun bs!1151371 () Bool)

(assert (= bs!1151371 d!1527558))

(declare-fun m!5755450 () Bool)

(assert (=> bs!1151371 m!5755450))

(assert (=> start!490304 d!1527558))

(declare-fun d!1527560 () Bool)

(declare-fun isEmpty!29339 (Option!12901) Bool)

(assert (=> d!1527560 (= (isDefined!10045 lt!1941871) (not (isEmpty!29339 lt!1941871)))))

(declare-fun bs!1151372 () Bool)

(assert (= bs!1151372 d!1527560))

(declare-fun m!5755452 () Bool)

(assert (=> bs!1151372 m!5755452))

(assert (=> b!4779018 d!1527560))

(declare-fun bs!1151373 () Bool)

(declare-fun d!1527562 () Bool)

(assert (= bs!1151373 (and d!1527562 start!490304)))

(declare-fun lambda!227609 () Int)

(assert (=> bs!1151373 (= lambda!227609 lambda!227590)))

(declare-fun bs!1151374 () Bool)

(assert (= bs!1151374 (and d!1527562 b!4779015)))

(assert (=> bs!1151374 (not (= lambda!227609 lambda!227591))))

(declare-fun bs!1151375 () Bool)

(assert (= bs!1151375 (and d!1527562 d!1527554)))

(assert (=> bs!1151375 (not (= lambda!227609 lambda!227606))))

(assert (=> d!1527562 (contains!17469 (extractMap!2340 (toList!6705 lm!2709)) key!6641)))

(declare-fun lt!1941910 () Unit!139119)

(declare-fun choose!34209 (ListLongMap!5127 K!15522 Hashable!6813) Unit!139119)

(assert (=> d!1527562 (= lt!1941910 (choose!34209 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1527562 (forall!12093 (toList!6705 lm!2709) lambda!227609)))

(assert (=> d!1527562 (= (lemmaListContainsThenExtractedMapContains!661 lm!2709 key!6641 hashF!1687) lt!1941910)))

(declare-fun bs!1151376 () Bool)

(assert (= bs!1151376 d!1527562))

(assert (=> bs!1151376 m!5755386))

(assert (=> bs!1151376 m!5755386))

(assert (=> bs!1151376 m!5755388))

(declare-fun m!5755454 () Bool)

(assert (=> bs!1151376 m!5755454))

(declare-fun m!5755456 () Bool)

(assert (=> bs!1151376 m!5755456))

(assert (=> b!4779018 d!1527562))

(declare-fun b!4779073 () Bool)

(declare-fun res!2028771 () Bool)

(declare-fun e!2983544 () Bool)

(assert (=> b!4779073 (=> (not res!2028771) (not e!2983544))))

(declare-fun lt!1941913 () Option!12901)

(assert (=> b!4779073 (= res!2028771 (= (_1!31504 (get!18328 lt!1941913)) key!6641))))

(declare-fun b!4779074 () Bool)

(declare-fun e!2983541 () Option!12901)

(assert (=> b!4779074 (= e!2983541 (getPair!785 (t!361531 lt!1941865) key!6641))))

(declare-fun b!4779075 () Bool)

(declare-fun contains!17473 (List!54081 tuple2!56420) Bool)

(assert (=> b!4779075 (= e!2983544 (contains!17473 lt!1941865 (get!18328 lt!1941913)))))

(declare-fun b!4779076 () Bool)

(assert (=> b!4779076 (= e!2983541 None!12900)))

(declare-fun b!4779077 () Bool)

(declare-fun e!2983545 () Option!12901)

(assert (=> b!4779077 (= e!2983545 e!2983541)))

(declare-fun c!814751 () Bool)

(assert (=> b!4779077 (= c!814751 (is-Cons!53957 lt!1941865))))

(declare-fun b!4779079 () Bool)

(declare-fun e!2983542 () Bool)

(assert (=> b!4779079 (= e!2983542 e!2983544)))

(declare-fun res!2028773 () Bool)

(assert (=> b!4779079 (=> (not res!2028773) (not e!2983544))))

(assert (=> b!4779079 (= res!2028773 (isDefined!10045 lt!1941913))))

(declare-fun b!4779080 () Bool)

(declare-fun e!2983543 () Bool)

(assert (=> b!4779080 (= e!2983543 (not (containsKey!3783 lt!1941865 key!6641)))))

(declare-fun d!1527566 () Bool)

(assert (=> d!1527566 e!2983542))

(declare-fun res!2028772 () Bool)

(assert (=> d!1527566 (=> res!2028772 e!2983542)))

(assert (=> d!1527566 (= res!2028772 e!2983543)))

(declare-fun res!2028774 () Bool)

(assert (=> d!1527566 (=> (not res!2028774) (not e!2983543))))

(assert (=> d!1527566 (= res!2028774 (isEmpty!29339 lt!1941913))))

(assert (=> d!1527566 (= lt!1941913 e!2983545)))

(declare-fun c!814750 () Bool)

(assert (=> d!1527566 (= c!814750 (and (is-Cons!53957 lt!1941865) (= (_1!31504 (h!60373 lt!1941865)) key!6641)))))

(declare-fun noDuplicateKeys!2286 (List!54081) Bool)

(assert (=> d!1527566 (noDuplicateKeys!2286 lt!1941865)))

(assert (=> d!1527566 (= (getPair!785 lt!1941865 key!6641) lt!1941913)))

(declare-fun b!4779078 () Bool)

(assert (=> b!4779078 (= e!2983545 (Some!12900 (h!60373 lt!1941865)))))

(assert (= (and d!1527566 c!814750) b!4779078))

(assert (= (and d!1527566 (not c!814750)) b!4779077))

(assert (= (and b!4779077 c!814751) b!4779074))

(assert (= (and b!4779077 (not c!814751)) b!4779076))

(assert (= (and d!1527566 res!2028774) b!4779080))

(assert (= (and d!1527566 (not res!2028772)) b!4779079))

(assert (= (and b!4779079 res!2028773) b!4779073))

(assert (= (and b!4779073 res!2028771) b!4779075))

(declare-fun m!5755460 () Bool)

(assert (=> b!4779073 m!5755460))

(assert (=> b!4779075 m!5755460))

(assert (=> b!4779075 m!5755460))

(declare-fun m!5755462 () Bool)

(assert (=> b!4779075 m!5755462))

(declare-fun m!5755464 () Bool)

(assert (=> b!4779074 m!5755464))

(declare-fun m!5755466 () Bool)

(assert (=> d!1527566 m!5755466))

(declare-fun m!5755468 () Bool)

(assert (=> d!1527566 m!5755468))

(declare-fun m!5755470 () Bool)

(assert (=> b!4779079 m!5755470))

(assert (=> b!4779080 m!5755360))

(assert (=> b!4779018 d!1527566))

(declare-fun d!1527570 () Bool)

(declare-fun lt!1941916 () Bool)

(declare-fun content!9630 (List!54082) (Set tuple2!56422))

(assert (=> d!1527570 (= lt!1941916 (set.member lt!1941874 (content!9630 (toList!6705 lm!2709))))))

(declare-fun e!2983556 () Bool)

(assert (=> d!1527570 (= lt!1941916 e!2983556)))

(declare-fun res!2028786 () Bool)

(assert (=> d!1527570 (=> (not res!2028786) (not e!2983556))))

(assert (=> d!1527570 (= res!2028786 (is-Cons!53958 (toList!6705 lm!2709)))))

(assert (=> d!1527570 (= (contains!17467 (toList!6705 lm!2709) lt!1941874) lt!1941916)))

(declare-fun b!4779091 () Bool)

(declare-fun e!2983557 () Bool)

(assert (=> b!4779091 (= e!2983556 e!2983557)))

(declare-fun res!2028785 () Bool)

(assert (=> b!4779091 (=> res!2028785 e!2983557)))

(assert (=> b!4779091 (= res!2028785 (= (h!60374 (toList!6705 lm!2709)) lt!1941874))))

(declare-fun b!4779092 () Bool)

(assert (=> b!4779092 (= e!2983557 (contains!17467 (t!361532 (toList!6705 lm!2709)) lt!1941874))))

(assert (= (and d!1527570 res!2028786) b!4779091))

(assert (= (and b!4779091 (not res!2028785)) b!4779092))

(declare-fun m!5755472 () Bool)

(assert (=> d!1527570 m!5755472))

(declare-fun m!5755474 () Bool)

(assert (=> d!1527570 m!5755474))

(declare-fun m!5755476 () Bool)

(assert (=> b!4779092 m!5755476))

(assert (=> b!4779018 d!1527570))

(declare-fun d!1527572 () Bool)

(declare-datatypes ((Option!12903 0))(
  ( (None!12902) (Some!12902 (v!48087 List!54081)) )
))
(declare-fun get!18330 (Option!12903) List!54081)

(declare-fun getValueByKey!2264 (List!54082 (_ BitVec 64)) Option!12903)

(assert (=> d!1527572 (= (apply!12868 lm!2709 lt!1941864) (get!18330 (getValueByKey!2264 (toList!6705 lm!2709) lt!1941864)))))

(declare-fun bs!1151380 () Bool)

(assert (= bs!1151380 d!1527572))

(declare-fun m!5755480 () Bool)

(assert (=> bs!1151380 m!5755480))

(assert (=> bs!1151380 m!5755480))

(declare-fun m!5755482 () Bool)

(assert (=> bs!1151380 m!5755482))

(assert (=> b!4779018 d!1527572))

(declare-fun d!1527576 () Bool)

(declare-fun hash!4794 (Hashable!6813 K!15522) (_ BitVec 64))

(assert (=> d!1527576 (= (hash!4792 hashF!1687 key!6641) (hash!4794 hashF!1687 key!6641))))

(declare-fun bs!1151381 () Bool)

(assert (= bs!1151381 d!1527576))

(declare-fun m!5755484 () Bool)

(assert (=> bs!1151381 m!5755484))

(assert (=> b!4779018 d!1527576))

(declare-fun bs!1151382 () Bool)

(declare-fun d!1527578 () Bool)

(assert (= bs!1151382 (and d!1527578 start!490304)))

(declare-fun lambda!227615 () Int)

(assert (=> bs!1151382 (= lambda!227615 lambda!227590)))

(declare-fun bs!1151383 () Bool)

(assert (= bs!1151383 (and d!1527578 b!4779015)))

(assert (=> bs!1151383 (not (= lambda!227615 lambda!227591))))

(declare-fun bs!1151384 () Bool)

(assert (= bs!1151384 (and d!1527578 d!1527554)))

(assert (=> bs!1151384 (not (= lambda!227615 lambda!227606))))

(declare-fun bs!1151385 () Bool)

(assert (= bs!1151385 (and d!1527578 d!1527562)))

(assert (=> bs!1151385 (= lambda!227615 lambda!227609)))

(declare-fun lt!1941922 () ListMap!6177)

(declare-fun invariantList!1688 (List!54081) Bool)

(assert (=> d!1527578 (invariantList!1688 (toList!6706 lt!1941922))))

(declare-fun e!2983574 () ListMap!6177)

(assert (=> d!1527578 (= lt!1941922 e!2983574)))

(declare-fun c!814754 () Bool)

(assert (=> d!1527578 (= c!814754 (is-Cons!53958 (toList!6705 lm!2709)))))

(assert (=> d!1527578 (forall!12093 (toList!6705 lm!2709) lambda!227615)))

(assert (=> d!1527578 (= (extractMap!2340 (toList!6705 lm!2709)) lt!1941922)))

(declare-fun b!4779111 () Bool)

(declare-fun addToMapMapFromBucket!1653 (List!54081 ListMap!6177) ListMap!6177)

(assert (=> b!4779111 (= e!2983574 (addToMapMapFromBucket!1653 (_2!31505 (h!60374 (toList!6705 lm!2709))) (extractMap!2340 (t!361532 (toList!6705 lm!2709)))))))

(declare-fun b!4779112 () Bool)

(assert (=> b!4779112 (= e!2983574 (ListMap!6178 Nil!53957))))

(assert (= (and d!1527578 c!814754) b!4779111))

(assert (= (and d!1527578 (not c!814754)) b!4779112))

(declare-fun m!5755498 () Bool)

(assert (=> d!1527578 m!5755498))

(declare-fun m!5755500 () Bool)

(assert (=> d!1527578 m!5755500))

(declare-fun m!5755502 () Bool)

(assert (=> b!4779111 m!5755502))

(assert (=> b!4779111 m!5755502))

(declare-fun m!5755504 () Bool)

(assert (=> b!4779111 m!5755504))

(assert (=> b!4779018 d!1527578))

(declare-fun d!1527586 () Bool)

(assert (=> d!1527586 (dynLambda!22006 lambda!227590 lt!1941874)))

(declare-fun lt!1941925 () Unit!139119)

(declare-fun choose!34210 (List!54082 Int tuple2!56422) Unit!139119)

(assert (=> d!1527586 (= lt!1941925 (choose!34210 (toList!6705 lm!2709) lambda!227590 lt!1941874))))

(declare-fun e!2983581 () Bool)

(assert (=> d!1527586 e!2983581))

(declare-fun res!2028807 () Bool)

(assert (=> d!1527586 (=> (not res!2028807) (not e!2983581))))

(assert (=> d!1527586 (= res!2028807 (forall!12093 (toList!6705 lm!2709) lambda!227590))))

(assert (=> d!1527586 (= (forallContained!4038 (toList!6705 lm!2709) lambda!227590 lt!1941874) lt!1941925)))

(declare-fun b!4779119 () Bool)

(assert (=> b!4779119 (= e!2983581 (contains!17467 (toList!6705 lm!2709) lt!1941874))))

(assert (= (and d!1527586 res!2028807) b!4779119))

(declare-fun b_lambda!185367 () Bool)

(assert (=> (not b_lambda!185367) (not d!1527586)))

(declare-fun m!5755506 () Bool)

(assert (=> d!1527586 m!5755506))

(declare-fun m!5755508 () Bool)

(assert (=> d!1527586 m!5755508))

(assert (=> d!1527586 m!5755398))

(assert (=> b!4779119 m!5755376))

(assert (=> b!4779018 d!1527586))

(declare-fun bs!1151386 () Bool)

(declare-fun d!1527588 () Bool)

(assert (= bs!1151386 (and d!1527588 b!4779015)))

(declare-fun lambda!227618 () Int)

(assert (=> bs!1151386 (not (= lambda!227618 lambda!227591))))

(declare-fun bs!1151387 () Bool)

(assert (= bs!1151387 (and d!1527588 d!1527554)))

(assert (=> bs!1151387 (not (= lambda!227618 lambda!227606))))

(declare-fun bs!1151388 () Bool)

(assert (= bs!1151388 (and d!1527588 d!1527562)))

(assert (=> bs!1151388 (= lambda!227618 lambda!227609)))

(declare-fun bs!1151389 () Bool)

(assert (= bs!1151389 (and d!1527588 d!1527578)))

(assert (=> bs!1151389 (= lambda!227618 lambda!227615)))

(declare-fun bs!1151390 () Bool)

(assert (= bs!1151390 (and d!1527588 start!490304)))

(assert (=> bs!1151390 (= lambda!227618 lambda!227590)))

(assert (=> d!1527588 (contains!17468 lm!2709 (hash!4792 hashF!1687 key!6641))))

(declare-fun lt!1941928 () Unit!139119)

(declare-fun choose!34211 (ListLongMap!5127 K!15522 Hashable!6813) Unit!139119)

(assert (=> d!1527588 (= lt!1941928 (choose!34211 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1527588 (forall!12093 (toList!6705 lm!2709) lambda!227618)))

(assert (=> d!1527588 (= (lemmaInGenMapThenLongMapContainsHash!1009 lm!2709 key!6641 hashF!1687) lt!1941928)))

(declare-fun bs!1151392 () Bool)

(assert (= bs!1151392 d!1527588))

(assert (=> bs!1151392 m!5755380))

(assert (=> bs!1151392 m!5755380))

(declare-fun m!5755516 () Bool)

(assert (=> bs!1151392 m!5755516))

(declare-fun m!5755518 () Bool)

(assert (=> bs!1151392 m!5755518))

(declare-fun m!5755520 () Bool)

(assert (=> bs!1151392 m!5755520))

(assert (=> b!4779018 d!1527588))

(declare-fun d!1527594 () Bool)

(declare-fun e!2983588 () Bool)

(assert (=> d!1527594 e!2983588))

(declare-fun res!2028812 () Bool)

(assert (=> d!1527594 (=> res!2028812 e!2983588)))

(declare-fun lt!1941938 () Bool)

(assert (=> d!1527594 (= res!2028812 (not lt!1941938))))

(declare-fun lt!1941940 () Bool)

(assert (=> d!1527594 (= lt!1941938 lt!1941940)))

(declare-fun lt!1941937 () Unit!139119)

(declare-fun e!2983589 () Unit!139119)

(assert (=> d!1527594 (= lt!1941937 e!2983589)))

(declare-fun c!814757 () Bool)

(assert (=> d!1527594 (= c!814757 lt!1941940)))

(declare-fun containsKey!3785 (List!54082 (_ BitVec 64)) Bool)

(assert (=> d!1527594 (= lt!1941940 (containsKey!3785 (toList!6705 lm!2709) lt!1941864))))

(assert (=> d!1527594 (= (contains!17468 lm!2709 lt!1941864) lt!1941938)))

(declare-fun b!4779128 () Bool)

(declare-fun lt!1941939 () Unit!139119)

(assert (=> b!4779128 (= e!2983589 lt!1941939)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2058 (List!54082 (_ BitVec 64)) Unit!139119)

(assert (=> b!4779128 (= lt!1941939 (lemmaContainsKeyImpliesGetValueByKeyDefined!2058 (toList!6705 lm!2709) lt!1941864))))

(declare-fun isDefined!10047 (Option!12903) Bool)

(assert (=> b!4779128 (isDefined!10047 (getValueByKey!2264 (toList!6705 lm!2709) lt!1941864))))

(declare-fun b!4779129 () Bool)

(declare-fun Unit!139123 () Unit!139119)

(assert (=> b!4779129 (= e!2983589 Unit!139123)))

(declare-fun b!4779130 () Bool)

(assert (=> b!4779130 (= e!2983588 (isDefined!10047 (getValueByKey!2264 (toList!6705 lm!2709) lt!1941864)))))

(assert (= (and d!1527594 c!814757) b!4779128))

(assert (= (and d!1527594 (not c!814757)) b!4779129))

(assert (= (and d!1527594 (not res!2028812)) b!4779130))

(declare-fun m!5755528 () Bool)

(assert (=> d!1527594 m!5755528))

(declare-fun m!5755530 () Bool)

(assert (=> b!4779128 m!5755530))

(assert (=> b!4779128 m!5755480))

(assert (=> b!4779128 m!5755480))

(declare-fun m!5755532 () Bool)

(assert (=> b!4779128 m!5755532))

(assert (=> b!4779130 m!5755480))

(assert (=> b!4779130 m!5755480))

(assert (=> b!4779130 m!5755532))

(assert (=> b!4779018 d!1527594))

(declare-fun b!4779149 () Bool)

(declare-fun e!2983602 () Bool)

(declare-fun e!2983603 () Bool)

(assert (=> b!4779149 (= e!2983602 e!2983603)))

(declare-fun res!2028819 () Bool)

(assert (=> b!4779149 (=> (not res!2028819) (not e!2983603))))

(declare-datatypes ((Option!12904 0))(
  ( (None!12903) (Some!12903 (v!48089 V!15768)) )
))
(declare-fun isDefined!10048 (Option!12904) Bool)

(declare-fun getValueByKey!2265 (List!54081 K!15522) Option!12904)

(assert (=> b!4779149 (= res!2028819 (isDefined!10048 (getValueByKey!2265 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))) key!6641)))))

(declare-fun b!4779150 () Bool)

(declare-fun e!2983607 () Bool)

(declare-datatypes ((List!54085 0))(
  ( (Nil!53961) (Cons!53961 (h!60377 K!15522) (t!361535 List!54085)) )
))
(declare-fun contains!17474 (List!54085 K!15522) Bool)

(declare-fun keys!19645 (ListMap!6177) List!54085)

(assert (=> b!4779150 (= e!2983607 (not (contains!17474 (keys!19645 (extractMap!2340 (toList!6705 lm!2709))) key!6641)))))

(declare-fun d!1527602 () Bool)

(assert (=> d!1527602 e!2983602))

(declare-fun res!2028821 () Bool)

(assert (=> d!1527602 (=> res!2028821 e!2983602)))

(assert (=> d!1527602 (= res!2028821 e!2983607)))

(declare-fun res!2028820 () Bool)

(assert (=> d!1527602 (=> (not res!2028820) (not e!2983607))))

(declare-fun lt!1941957 () Bool)

(assert (=> d!1527602 (= res!2028820 (not lt!1941957))))

(declare-fun lt!1941959 () Bool)

(assert (=> d!1527602 (= lt!1941957 lt!1941959)))

(declare-fun lt!1941960 () Unit!139119)

(declare-fun e!2983604 () Unit!139119)

(assert (=> d!1527602 (= lt!1941960 e!2983604)))

(declare-fun c!814765 () Bool)

(assert (=> d!1527602 (= c!814765 lt!1941959)))

(declare-fun containsKey!3786 (List!54081 K!15522) Bool)

(assert (=> d!1527602 (= lt!1941959 (containsKey!3786 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))) key!6641))))

(assert (=> d!1527602 (= (contains!17469 (extractMap!2340 (toList!6705 lm!2709)) key!6641) lt!1941957)))

(declare-fun bm!334656 () Bool)

(declare-fun call!334661 () Bool)

(declare-fun e!2983605 () List!54085)

(assert (=> bm!334656 (= call!334661 (contains!17474 e!2983605 key!6641))))

(declare-fun c!814764 () Bool)

(assert (=> bm!334656 (= c!814764 c!814765)))

(declare-fun b!4779151 () Bool)

(declare-fun getKeysList!1032 (List!54081) List!54085)

(assert (=> b!4779151 (= e!2983605 (getKeysList!1032 (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))))))

(declare-fun b!4779152 () Bool)

(declare-fun e!2983606 () Unit!139119)

(assert (=> b!4779152 (= e!2983604 e!2983606)))

(declare-fun c!814766 () Bool)

(assert (=> b!4779152 (= c!814766 call!334661)))

(declare-fun b!4779153 () Bool)

(declare-fun Unit!139124 () Unit!139119)

(assert (=> b!4779153 (= e!2983606 Unit!139124)))

(declare-fun b!4779154 () Bool)

(assert (=> b!4779154 false))

(declare-fun lt!1941963 () Unit!139119)

(declare-fun lt!1941958 () Unit!139119)

(assert (=> b!4779154 (= lt!1941963 lt!1941958)))

(assert (=> b!4779154 (containsKey!3786 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))) key!6641)))

(declare-fun lemmaInGetKeysListThenContainsKey!1032 (List!54081 K!15522) Unit!139119)

(assert (=> b!4779154 (= lt!1941958 (lemmaInGetKeysListThenContainsKey!1032 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))) key!6641))))

(declare-fun Unit!139125 () Unit!139119)

(assert (=> b!4779154 (= e!2983606 Unit!139125)))

(declare-fun b!4779155 () Bool)

(assert (=> b!4779155 (= e!2983603 (contains!17474 (keys!19645 (extractMap!2340 (toList!6705 lm!2709))) key!6641))))

(declare-fun b!4779156 () Bool)

(assert (=> b!4779156 (= e!2983605 (keys!19645 (extractMap!2340 (toList!6705 lm!2709))))))

(declare-fun b!4779157 () Bool)

(declare-fun lt!1941961 () Unit!139119)

(assert (=> b!4779157 (= e!2983604 lt!1941961)))

(declare-fun lt!1941964 () Unit!139119)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2059 (List!54081 K!15522) Unit!139119)

(assert (=> b!4779157 (= lt!1941964 (lemmaContainsKeyImpliesGetValueByKeyDefined!2059 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))) key!6641))))

(assert (=> b!4779157 (isDefined!10048 (getValueByKey!2265 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))) key!6641))))

(declare-fun lt!1941962 () Unit!139119)

(assert (=> b!4779157 (= lt!1941962 lt!1941964)))

(declare-fun lemmaInListThenGetKeysListContains!1027 (List!54081 K!15522) Unit!139119)

(assert (=> b!4779157 (= lt!1941961 (lemmaInListThenGetKeysListContains!1027 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))) key!6641))))

(assert (=> b!4779157 call!334661))

(assert (= (and d!1527602 c!814765) b!4779157))

(assert (= (and d!1527602 (not c!814765)) b!4779152))

(assert (= (and b!4779152 c!814766) b!4779154))

(assert (= (and b!4779152 (not c!814766)) b!4779153))

(assert (= (or b!4779157 b!4779152) bm!334656))

(assert (= (and bm!334656 c!814764) b!4779151))

(assert (= (and bm!334656 (not c!814764)) b!4779156))

(assert (= (and d!1527602 res!2028820) b!4779150))

(assert (= (and d!1527602 (not res!2028821)) b!4779149))

(assert (= (and b!4779149 res!2028819) b!4779155))

(declare-fun m!5755534 () Bool)

(assert (=> b!4779149 m!5755534))

(assert (=> b!4779149 m!5755534))

(declare-fun m!5755536 () Bool)

(assert (=> b!4779149 m!5755536))

(declare-fun m!5755538 () Bool)

(assert (=> b!4779154 m!5755538))

(declare-fun m!5755540 () Bool)

(assert (=> b!4779154 m!5755540))

(assert (=> d!1527602 m!5755538))

(assert (=> b!4779150 m!5755386))

(declare-fun m!5755542 () Bool)

(assert (=> b!4779150 m!5755542))

(assert (=> b!4779150 m!5755542))

(declare-fun m!5755544 () Bool)

(assert (=> b!4779150 m!5755544))

(assert (=> b!4779156 m!5755386))

(assert (=> b!4779156 m!5755542))

(declare-fun m!5755546 () Bool)

(assert (=> b!4779151 m!5755546))

(assert (=> b!4779155 m!5755386))

(assert (=> b!4779155 m!5755542))

(assert (=> b!4779155 m!5755542))

(assert (=> b!4779155 m!5755544))

(declare-fun m!5755548 () Bool)

(assert (=> b!4779157 m!5755548))

(assert (=> b!4779157 m!5755534))

(assert (=> b!4779157 m!5755534))

(assert (=> b!4779157 m!5755536))

(declare-fun m!5755550 () Bool)

(assert (=> b!4779157 m!5755550))

(declare-fun m!5755552 () Bool)

(assert (=> bm!334656 m!5755552))

(assert (=> b!4779018 d!1527602))

(declare-fun d!1527604 () Bool)

(assert (=> d!1527604 (= (get!18328 lt!1941871) (v!48083 lt!1941871))))

(assert (=> b!4779018 d!1527604))

(declare-fun bs!1151399 () Bool)

(declare-fun d!1527606 () Bool)

(assert (= bs!1151399 (and d!1527606 b!4779015)))

(declare-fun lambda!227628 () Int)

(assert (=> bs!1151399 (not (= lambda!227628 lambda!227591))))

(declare-fun bs!1151400 () Bool)

(assert (= bs!1151400 (and d!1527606 d!1527554)))

(assert (=> bs!1151400 (not (= lambda!227628 lambda!227606))))

(declare-fun bs!1151401 () Bool)

(assert (= bs!1151401 (and d!1527606 d!1527562)))

(assert (=> bs!1151401 (= lambda!227628 lambda!227609)))

(declare-fun bs!1151402 () Bool)

(assert (= bs!1151402 (and d!1527606 d!1527578)))

(assert (=> bs!1151402 (= lambda!227628 lambda!227615)))

(declare-fun bs!1151403 () Bool)

(assert (= bs!1151403 (and d!1527606 start!490304)))

(assert (=> bs!1151403 (= lambda!227628 lambda!227590)))

(declare-fun bs!1151404 () Bool)

(assert (= bs!1151404 (and d!1527606 d!1527588)))

(assert (=> bs!1151404 (= lambda!227628 lambda!227618)))

(declare-fun b!4779175 () Bool)

(declare-fun res!2028833 () Bool)

(declare-fun e!2983619 () Bool)

(assert (=> b!4779175 (=> (not res!2028833) (not e!2983619))))

(assert (=> b!4779175 (= res!2028833 (allKeysSameHashInMap!2218 lm!2709 hashF!1687))))

(assert (=> d!1527606 e!2983619))

(declare-fun res!2028834 () Bool)

(assert (=> d!1527606 (=> (not res!2028834) (not e!2983619))))

(assert (=> d!1527606 (= res!2028834 (forall!12093 (toList!6705 lm!2709) lambda!227628))))

(declare-fun lt!1941999 () Unit!139119)

(declare-fun choose!34212 (ListLongMap!5127 K!15522 Hashable!6813) Unit!139119)

(assert (=> d!1527606 (= lt!1941999 (choose!34212 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1527606 (forall!12093 (toList!6705 lm!2709) lambda!227628)))

(assert (=> d!1527606 (= (lemmaInGenMapThenGetPairDefined!559 lm!2709 key!6641 hashF!1687) lt!1941999)))

(declare-fun lt!1941997 () List!54081)

(declare-fun lt!1941996 () (_ BitVec 64))

(declare-fun e!2983618 () Bool)

(declare-fun b!4779178 () Bool)

(assert (=> b!4779178 (= e!2983618 (= (getValueByKey!2264 (toList!6705 lm!2709) lt!1941996) (Some!12902 lt!1941997)))))

(declare-fun b!4779176 () Bool)

(declare-fun res!2028836 () Bool)

(assert (=> b!4779176 (=> (not res!2028836) (not e!2983619))))

(assert (=> b!4779176 (= res!2028836 (contains!17469 (extractMap!2340 (toList!6705 lm!2709)) key!6641))))

(declare-fun b!4779177 () Bool)

(assert (=> b!4779177 (= e!2983619 (isDefined!10045 (getPair!785 (apply!12868 lm!2709 (hash!4792 hashF!1687 key!6641)) key!6641)))))

(declare-fun lt!1942002 () Unit!139119)

(assert (=> b!4779177 (= lt!1942002 (forallContained!4038 (toList!6705 lm!2709) lambda!227628 (tuple2!56423 (hash!4792 hashF!1687 key!6641) (apply!12868 lm!2709 (hash!4792 hashF!1687 key!6641)))))))

(declare-fun lt!1942000 () Unit!139119)

(declare-fun lt!1942003 () Unit!139119)

(assert (=> b!4779177 (= lt!1942000 lt!1942003)))

(assert (=> b!4779177 (contains!17467 (toList!6705 lm!2709) (tuple2!56423 lt!1941996 lt!1941997))))

(assert (=> b!4779177 (= lt!1942003 (lemmaGetValueImpliesTupleContained!592 lm!2709 lt!1941996 lt!1941997))))

(assert (=> b!4779177 e!2983618))

(declare-fun res!2028835 () Bool)

(assert (=> b!4779177 (=> (not res!2028835) (not e!2983618))))

(assert (=> b!4779177 (= res!2028835 (contains!17468 lm!2709 lt!1941996))))

(assert (=> b!4779177 (= lt!1941997 (apply!12868 lm!2709 (hash!4792 hashF!1687 key!6641)))))

(assert (=> b!4779177 (= lt!1941996 (hash!4792 hashF!1687 key!6641))))

(declare-fun lt!1941998 () Unit!139119)

(declare-fun lt!1942001 () Unit!139119)

(assert (=> b!4779177 (= lt!1941998 lt!1942001)))

(assert (=> b!4779177 (contains!17468 lm!2709 (hash!4792 hashF!1687 key!6641))))

(assert (=> b!4779177 (= lt!1942001 (lemmaInGenMapThenLongMapContainsHash!1009 lm!2709 key!6641 hashF!1687))))

(assert (= (and d!1527606 res!2028834) b!4779175))

(assert (= (and b!4779175 res!2028833) b!4779176))

(assert (= (and b!4779176 res!2028836) b!4779177))

(assert (= (and b!4779177 res!2028835) b!4779178))

(declare-fun m!5755564 () Bool)

(assert (=> b!4779178 m!5755564))

(assert (=> b!4779176 m!5755386))

(assert (=> b!4779176 m!5755386))

(assert (=> b!4779176 m!5755388))

(declare-fun m!5755566 () Bool)

(assert (=> d!1527606 m!5755566))

(declare-fun m!5755568 () Bool)

(assert (=> d!1527606 m!5755568))

(assert (=> d!1527606 m!5755566))

(declare-fun m!5755570 () Bool)

(assert (=> b!4779177 m!5755570))

(assert (=> b!4779177 m!5755380))

(assert (=> b!4779177 m!5755516))

(assert (=> b!4779177 m!5755380))

(declare-fun m!5755572 () Bool)

(assert (=> b!4779177 m!5755572))

(declare-fun m!5755574 () Bool)

(assert (=> b!4779177 m!5755574))

(assert (=> b!4779177 m!5755572))

(declare-fun m!5755576 () Bool)

(assert (=> b!4779177 m!5755576))

(declare-fun m!5755578 () Bool)

(assert (=> b!4779177 m!5755578))

(assert (=> b!4779177 m!5755380))

(declare-fun m!5755580 () Bool)

(assert (=> b!4779177 m!5755580))

(assert (=> b!4779177 m!5755384))

(assert (=> b!4779177 m!5755576))

(declare-fun m!5755582 () Bool)

(assert (=> b!4779177 m!5755582))

(assert (=> b!4779175 m!5755396))

(assert (=> b!4779018 d!1527606))

(declare-fun d!1527612 () Bool)

(assert (=> d!1527612 (contains!17467 (toList!6705 lm!2709) (tuple2!56423 lt!1941864 lt!1941865))))

(declare-fun lt!1942006 () Unit!139119)

(declare-fun choose!34213 (ListLongMap!5127 (_ BitVec 64) List!54081) Unit!139119)

(assert (=> d!1527612 (= lt!1942006 (choose!34213 lm!2709 lt!1941864 lt!1941865))))

(assert (=> d!1527612 (contains!17468 lm!2709 lt!1941864)))

(assert (=> d!1527612 (= (lemmaGetValueImpliesTupleContained!592 lm!2709 lt!1941864 lt!1941865) lt!1942006)))

(declare-fun bs!1151405 () Bool)

(assert (= bs!1151405 d!1527612))

(declare-fun m!5755584 () Bool)

(assert (=> bs!1151405 m!5755584))

(declare-fun m!5755586 () Bool)

(assert (=> bs!1151405 m!5755586))

(assert (=> bs!1151405 m!5755382))

(assert (=> b!4779018 d!1527612))

(declare-fun d!1527614 () Bool)

(declare-fun res!2028841 () Bool)

(declare-fun e!2983624 () Bool)

(assert (=> d!1527614 (=> res!2028841 e!2983624)))

(assert (=> d!1527614 (= res!2028841 (and (is-Cons!53957 lt!1941865) (= (_1!31504 (h!60373 lt!1941865)) key!6641)))))

(assert (=> d!1527614 (= (containsKey!3783 lt!1941865 key!6641) e!2983624)))

(declare-fun b!4779184 () Bool)

(declare-fun e!2983625 () Bool)

(assert (=> b!4779184 (= e!2983624 e!2983625)))

(declare-fun res!2028842 () Bool)

(assert (=> b!4779184 (=> (not res!2028842) (not e!2983625))))

(assert (=> b!4779184 (= res!2028842 (is-Cons!53957 lt!1941865))))

(declare-fun b!4779185 () Bool)

(assert (=> b!4779185 (= e!2983625 (containsKey!3783 (t!361531 lt!1941865) key!6641))))

(assert (= (and d!1527614 (not res!2028841)) b!4779184))

(assert (= (and b!4779184 res!2028842) b!4779185))

(declare-fun m!5755588 () Bool)

(assert (=> b!4779185 m!5755588))

(assert (=> b!4779019 d!1527614))

(declare-fun d!1527616 () Bool)

(declare-fun res!2028849 () Bool)

(declare-fun e!2983634 () Bool)

(assert (=> d!1527616 (=> res!2028849 e!2983634)))

(declare-fun e!2983632 () Bool)

(assert (=> d!1527616 (= res!2028849 e!2983632)))

(declare-fun res!2028850 () Bool)

(assert (=> d!1527616 (=> (not res!2028850) (not e!2983632))))

(assert (=> d!1527616 (= res!2028850 (is-Cons!53958 (toList!6705 lm!2709)))))

(assert (=> d!1527616 (= (containsKeyBiggerList!469 (toList!6705 lm!2709) key!6641) e!2983634)))

(declare-fun b!4779192 () Bool)

(assert (=> b!4779192 (= e!2983632 (containsKey!3783 (_2!31505 (h!60374 (toList!6705 lm!2709))) key!6641))))

(declare-fun b!4779193 () Bool)

(declare-fun e!2983633 () Bool)

(assert (=> b!4779193 (= e!2983634 e!2983633)))

(declare-fun res!2028851 () Bool)

(assert (=> b!4779193 (=> (not res!2028851) (not e!2983633))))

(assert (=> b!4779193 (= res!2028851 (is-Cons!53958 (toList!6705 lm!2709)))))

(declare-fun b!4779194 () Bool)

(assert (=> b!4779194 (= e!2983633 (containsKeyBiggerList!469 (t!361532 (toList!6705 lm!2709)) key!6641))))

(assert (= (and d!1527616 res!2028850) b!4779192))

(assert (= (and d!1527616 (not res!2028849)) b!4779193))

(assert (= (and b!4779193 res!2028851) b!4779194))

(assert (=> b!4779192 m!5755362))

(declare-fun m!5755590 () Bool)

(assert (=> b!4779194 m!5755590))

(assert (=> b!4779020 d!1527616))

(declare-fun d!1527618 () Bool)

(declare-fun res!2028852 () Bool)

(declare-fun e!2983635 () Bool)

(assert (=> d!1527618 (=> res!2028852 e!2983635)))

(assert (=> d!1527618 (= res!2028852 (and (is-Cons!53957 (_2!31505 (h!60374 (toList!6705 lm!2709)))) (= (_1!31504 (h!60373 (_2!31505 (h!60374 (toList!6705 lm!2709))))) key!6641)))))

(assert (=> d!1527618 (= (containsKey!3783 (_2!31505 (h!60374 (toList!6705 lm!2709))) key!6641) e!2983635)))

(declare-fun b!4779195 () Bool)

(declare-fun e!2983636 () Bool)

(assert (=> b!4779195 (= e!2983635 e!2983636)))

(declare-fun res!2028853 () Bool)

(assert (=> b!4779195 (=> (not res!2028853) (not e!2983636))))

(assert (=> b!4779195 (= res!2028853 (is-Cons!53957 (_2!31505 (h!60374 (toList!6705 lm!2709)))))))

(declare-fun b!4779196 () Bool)

(assert (=> b!4779196 (= e!2983636 (containsKey!3783 (t!361531 (_2!31505 (h!60374 (toList!6705 lm!2709)))) key!6641))))

(assert (= (and d!1527618 (not res!2028852)) b!4779195))

(assert (= (and b!4779195 res!2028853) b!4779196))

(declare-fun m!5755592 () Bool)

(assert (=> b!4779196 m!5755592))

(assert (=> b!4779015 d!1527618))

(declare-fun d!1527620 () Bool)

(assert (=> d!1527620 (dynLambda!22006 lambda!227591 (h!60374 (toList!6705 lm!2709)))))

(declare-fun lt!1942007 () Unit!139119)

(assert (=> d!1527620 (= lt!1942007 (choose!34210 (toList!6705 lm!2709) lambda!227591 (h!60374 (toList!6705 lm!2709))))))

(declare-fun e!2983637 () Bool)

(assert (=> d!1527620 e!2983637))

(declare-fun res!2028854 () Bool)

(assert (=> d!1527620 (=> (not res!2028854) (not e!2983637))))

(assert (=> d!1527620 (= res!2028854 (forall!12093 (toList!6705 lm!2709) lambda!227591))))

(assert (=> d!1527620 (= (forallContained!4038 (toList!6705 lm!2709) lambda!227591 (h!60374 (toList!6705 lm!2709))) lt!1942007)))

(declare-fun b!4779197 () Bool)

(assert (=> b!4779197 (= e!2983637 (contains!17467 (toList!6705 lm!2709) (h!60374 (toList!6705 lm!2709))))))

(assert (= (and d!1527620 res!2028854) b!4779197))

(declare-fun b_lambda!185371 () Bool)

(assert (=> (not b_lambda!185371) (not d!1527620)))

(declare-fun m!5755594 () Bool)

(assert (=> d!1527620 m!5755594))

(declare-fun m!5755596 () Bool)

(assert (=> d!1527620 m!5755596))

(declare-fun m!5755598 () Bool)

(assert (=> d!1527620 m!5755598))

(declare-fun m!5755600 () Bool)

(assert (=> b!4779197 m!5755600))

(assert (=> b!4779015 d!1527620))

(declare-fun b!4779202 () Bool)

(declare-fun e!2983640 () Bool)

(declare-fun tp!1357327 () Bool)

(declare-fun tp!1357328 () Bool)

(assert (=> b!4779202 (= e!2983640 (and tp!1357327 tp!1357328))))

(assert (=> b!4779021 (= tp!1357319 e!2983640)))

(assert (= (and b!4779021 (is-Cons!53958 (toList!6705 lm!2709))) b!4779202))

(declare-fun b_lambda!185373 () Bool)

(assert (= b_lambda!185367 (or start!490304 b_lambda!185373)))

(declare-fun bs!1151406 () Bool)

(declare-fun d!1527622 () Bool)

(assert (= bs!1151406 (and d!1527622 start!490304)))

(assert (=> bs!1151406 (= (dynLambda!22006 lambda!227590 lt!1941874) (noDuplicateKeys!2286 (_2!31505 lt!1941874)))))

(declare-fun m!5755602 () Bool)

(assert (=> bs!1151406 m!5755602))

(assert (=> d!1527586 d!1527622))

(declare-fun b_lambda!185375 () Bool)

(assert (= b_lambda!185371 (or b!4779015 b_lambda!185375)))

(declare-fun bs!1151407 () Bool)

(declare-fun d!1527624 () Bool)

(assert (= bs!1151407 (and d!1527624 b!4779015)))

(declare-fun allKeysSameHash!1935 (List!54081 (_ BitVec 64) Hashable!6813) Bool)

(assert (=> bs!1151407 (= (dynLambda!22006 lambda!227591 (h!60374 (toList!6705 lm!2709))) (allKeysSameHash!1935 (_2!31505 (h!60374 (toList!6705 lm!2709))) (_1!31505 (h!60374 (toList!6705 lm!2709))) hashF!1687))))

(declare-fun m!5755604 () Bool)

(assert (=> bs!1151407 m!5755604))

(assert (=> d!1527620 d!1527624))

(declare-fun b_lambda!185377 () Bool)

(assert (= b_lambda!185363 (or start!490304 b_lambda!185377)))

(declare-fun bs!1151408 () Bool)

(declare-fun d!1527626 () Bool)

(assert (= bs!1151408 (and d!1527626 start!490304)))

(assert (=> bs!1151408 (= (dynLambda!22006 lambda!227590 (h!60374 (toList!6705 lm!2709))) (noDuplicateKeys!2286 (_2!31505 (h!60374 (toList!6705 lm!2709)))))))

(declare-fun m!5755606 () Bool)

(assert (=> bs!1151408 m!5755606))

(assert (=> b!4779055 d!1527626))

(push 1)

(assert (not d!1527588))

(assert (not d!1527586))

(assert (not b!4779185))

(assert (not b!4779155))

(assert (not b!4779177))

(assert (not b!4779149))

(assert (not d!1527566))

(assert (not bs!1151406))

(assert (not d!1527558))

(assert (not d!1527562))

(assert (not bm!334656))

(assert tp_is_empty!33155)

(assert (not d!1527606))

(assert (not b!4779092))

(assert (not d!1527572))

(assert (not b!4779128))

(assert (not b!4779150))

(assert (not d!1527594))

(assert (not d!1527570))

(assert (not b!4779154))

(assert (not b!4779130))

(assert (not b!4779202))

(assert (not bs!1151407))

(assert (not b!4779079))

(assert (not b_lambda!185377))

(assert (not b!4779157))

(assert (not d!1527602))

(assert (not b!4779156))

(assert (not d!1527620))

(assert (not b!4779074))

(assert (not b!4779197))

(assert (not b!4779175))

(assert (not b!4779151))

(assert (not d!1527578))

(assert (not d!1527560))

(assert (not b_lambda!185373))

(assert (not b!4779178))

(assert (not b!4779176))

(assert (not b!4779192))

(assert (not d!1527576))

(assert (not b_lambda!185375))

(assert tp_is_empty!33153)

(assert (not b!4779056))

(assert (not d!1527612))

(assert (not d!1527554))

(assert (not b!4779196))

(assert (not bs!1151408))

(assert (not b!4779119))

(assert (not b!4779075))

(assert (not b!4779080))

(assert (not b!4779111))

(assert (not b!4779073))

(assert (not b!4779194))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1527650 () Bool)

(declare-fun res!2028895 () Bool)

(declare-fun e!2983693 () Bool)

(assert (=> d!1527650 (=> res!2028895 e!2983693)))

(assert (=> d!1527650 (= res!2028895 (is-Nil!53958 (toList!6705 lm!2709)))))

(assert (=> d!1527650 (= (forall!12093 (toList!6705 lm!2709) lambda!227628) e!2983693)))

(declare-fun b!4779285 () Bool)

(declare-fun e!2983694 () Bool)

(assert (=> b!4779285 (= e!2983693 e!2983694)))

(declare-fun res!2028896 () Bool)

(assert (=> b!4779285 (=> (not res!2028896) (not e!2983694))))

(assert (=> b!4779285 (= res!2028896 (dynLambda!22006 lambda!227628 (h!60374 (toList!6705 lm!2709))))))

(declare-fun b!4779286 () Bool)

(assert (=> b!4779286 (= e!2983694 (forall!12093 (t!361532 (toList!6705 lm!2709)) lambda!227628))))

(assert (= (and d!1527650 (not res!2028895)) b!4779285))

(assert (= (and b!4779285 res!2028896) b!4779286))

(declare-fun b_lambda!185387 () Bool)

(assert (=> (not b_lambda!185387) (not b!4779285)))

(declare-fun m!5755696 () Bool)

(assert (=> b!4779285 m!5755696))

(declare-fun m!5755698 () Bool)

(assert (=> b!4779286 m!5755698))

(assert (=> d!1527606 d!1527650))

(declare-fun bs!1151430 () Bool)

(declare-fun d!1527652 () Bool)

(assert (= bs!1151430 (and d!1527652 b!4779015)))

(declare-fun lambda!227644 () Int)

(assert (=> bs!1151430 (not (= lambda!227644 lambda!227591))))

(declare-fun bs!1151431 () Bool)

(assert (= bs!1151431 (and d!1527652 d!1527606)))

(assert (=> bs!1151431 (= lambda!227644 lambda!227628)))

(declare-fun bs!1151432 () Bool)

(assert (= bs!1151432 (and d!1527652 d!1527554)))

(assert (=> bs!1151432 (not (= lambda!227644 lambda!227606))))

(declare-fun bs!1151433 () Bool)

(assert (= bs!1151433 (and d!1527652 d!1527562)))

(assert (=> bs!1151433 (= lambda!227644 lambda!227609)))

(declare-fun bs!1151434 () Bool)

(assert (= bs!1151434 (and d!1527652 d!1527578)))

(assert (=> bs!1151434 (= lambda!227644 lambda!227615)))

(declare-fun bs!1151435 () Bool)

(assert (= bs!1151435 (and d!1527652 start!490304)))

(assert (=> bs!1151435 (= lambda!227644 lambda!227590)))

(declare-fun bs!1151436 () Bool)

(assert (= bs!1151436 (and d!1527652 d!1527588)))

(assert (=> bs!1151436 (= lambda!227644 lambda!227618)))

(assert (=> d!1527652 (isDefined!10045 (getPair!785 (apply!12868 lm!2709 (hash!4792 hashF!1687 key!6641)) key!6641))))

(declare-fun lt!1942091 () Unit!139119)

(assert (=> d!1527652 (= lt!1942091 (forallContained!4038 (toList!6705 lm!2709) lambda!227644 (tuple2!56423 (hash!4792 hashF!1687 key!6641) (apply!12868 lm!2709 (hash!4792 hashF!1687 key!6641)))))))

(declare-fun lt!1942092 () Unit!139119)

(declare-fun lt!1942087 () Unit!139119)

(assert (=> d!1527652 (= lt!1942092 lt!1942087)))

(declare-fun lt!1942086 () (_ BitVec 64))

(declare-fun lt!1942090 () List!54081)

(assert (=> d!1527652 (contains!17467 (toList!6705 lm!2709) (tuple2!56423 lt!1942086 lt!1942090))))

(assert (=> d!1527652 (= lt!1942087 (lemmaGetValueImpliesTupleContained!592 lm!2709 lt!1942086 lt!1942090))))

(assert (=> d!1527652 (= lt!1942090 (apply!12868 lm!2709 (hash!4792 hashF!1687 key!6641)))))

(assert (=> d!1527652 (= lt!1942086 (hash!4792 hashF!1687 key!6641))))

(declare-fun lt!1942089 () Unit!139119)

(declare-fun lt!1942088 () Unit!139119)

(assert (=> d!1527652 (= lt!1942089 lt!1942088)))

(assert (=> d!1527652 (contains!17468 lm!2709 (hash!4792 hashF!1687 key!6641))))

(assert (=> d!1527652 (= lt!1942088 (lemmaInGenMapThenLongMapContainsHash!1009 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1527652 true))

(declare-fun _$25!313 () Unit!139119)

(assert (=> d!1527652 (= (choose!34212 lm!2709 key!6641 hashF!1687) _$25!313)))

(declare-fun bs!1151437 () Bool)

(assert (= bs!1151437 d!1527652))

(assert (=> bs!1151437 m!5755576))

(assert (=> bs!1151437 m!5755582))

(assert (=> bs!1151437 m!5755572))

(assert (=> bs!1151437 m!5755576))

(assert (=> bs!1151437 m!5755380))

(assert (=> bs!1151437 m!5755384))

(declare-fun m!5755700 () Bool)

(assert (=> bs!1151437 m!5755700))

(declare-fun m!5755702 () Bool)

(assert (=> bs!1151437 m!5755702))

(declare-fun m!5755704 () Bool)

(assert (=> bs!1151437 m!5755704))

(assert (=> bs!1151437 m!5755380))

(assert (=> bs!1151437 m!5755572))

(assert (=> bs!1151437 m!5755380))

(assert (=> bs!1151437 m!5755516))

(assert (=> d!1527606 d!1527652))

(declare-fun d!1527654 () Bool)

(declare-fun lt!1942093 () Bool)

(assert (=> d!1527654 (= lt!1942093 (set.member lt!1941874 (content!9630 (t!361532 (toList!6705 lm!2709)))))))

(declare-fun e!2983695 () Bool)

(assert (=> d!1527654 (= lt!1942093 e!2983695)))

(declare-fun res!2028898 () Bool)

(assert (=> d!1527654 (=> (not res!2028898) (not e!2983695))))

(assert (=> d!1527654 (= res!2028898 (is-Cons!53958 (t!361532 (toList!6705 lm!2709))))))

(assert (=> d!1527654 (= (contains!17467 (t!361532 (toList!6705 lm!2709)) lt!1941874) lt!1942093)))

(declare-fun b!4779287 () Bool)

(declare-fun e!2983696 () Bool)

(assert (=> b!4779287 (= e!2983695 e!2983696)))

(declare-fun res!2028897 () Bool)

(assert (=> b!4779287 (=> res!2028897 e!2983696)))

(assert (=> b!4779287 (= res!2028897 (= (h!60374 (t!361532 (toList!6705 lm!2709))) lt!1941874))))

(declare-fun b!4779288 () Bool)

(assert (=> b!4779288 (= e!2983696 (contains!17467 (t!361532 (t!361532 (toList!6705 lm!2709))) lt!1941874))))

(assert (= (and d!1527654 res!2028898) b!4779287))

(assert (= (and b!4779287 (not res!2028897)) b!4779288))

(declare-fun m!5755706 () Bool)

(assert (=> d!1527654 m!5755706))

(declare-fun m!5755708 () Bool)

(assert (=> d!1527654 m!5755708))

(declare-fun m!5755710 () Bool)

(assert (=> b!4779288 m!5755710))

(assert (=> b!4779092 d!1527654))

(declare-fun d!1527656 () Bool)

(declare-fun res!2028899 () Bool)

(declare-fun e!2983697 () Bool)

(assert (=> d!1527656 (=> res!2028899 e!2983697)))

(assert (=> d!1527656 (= res!2028899 (and (is-Cons!53957 (t!361531 lt!1941865)) (= (_1!31504 (h!60373 (t!361531 lt!1941865))) key!6641)))))

(assert (=> d!1527656 (= (containsKey!3783 (t!361531 lt!1941865) key!6641) e!2983697)))

(declare-fun b!4779289 () Bool)

(declare-fun e!2983698 () Bool)

(assert (=> b!4779289 (= e!2983697 e!2983698)))

(declare-fun res!2028900 () Bool)

(assert (=> b!4779289 (=> (not res!2028900) (not e!2983698))))

(assert (=> b!4779289 (= res!2028900 (is-Cons!53957 (t!361531 lt!1941865)))))

(declare-fun b!4779290 () Bool)

(assert (=> b!4779290 (= e!2983698 (containsKey!3783 (t!361531 (t!361531 lt!1941865)) key!6641))))

(assert (= (and d!1527656 (not res!2028899)) b!4779289))

(assert (= (and b!4779289 res!2028900) b!4779290))

(declare-fun m!5755712 () Bool)

(assert (=> b!4779290 m!5755712))

(assert (=> b!4779185 d!1527656))

(declare-fun d!1527658 () Bool)

(declare-fun res!2028905 () Bool)

(declare-fun e!2983703 () Bool)

(assert (=> d!1527658 (=> res!2028905 e!2983703)))

(assert (=> d!1527658 (= res!2028905 (and (is-Cons!53958 (toList!6705 lm!2709)) (= (_1!31505 (h!60374 (toList!6705 lm!2709))) lt!1941864)))))

(assert (=> d!1527658 (= (containsKey!3785 (toList!6705 lm!2709) lt!1941864) e!2983703)))

(declare-fun b!4779295 () Bool)

(declare-fun e!2983704 () Bool)

(assert (=> b!4779295 (= e!2983703 e!2983704)))

(declare-fun res!2028906 () Bool)

(assert (=> b!4779295 (=> (not res!2028906) (not e!2983704))))

(assert (=> b!4779295 (= res!2028906 (and (or (not (is-Cons!53958 (toList!6705 lm!2709))) (bvsle (_1!31505 (h!60374 (toList!6705 lm!2709))) lt!1941864)) (is-Cons!53958 (toList!6705 lm!2709)) (bvslt (_1!31505 (h!60374 (toList!6705 lm!2709))) lt!1941864)))))

(declare-fun b!4779296 () Bool)

(assert (=> b!4779296 (= e!2983704 (containsKey!3785 (t!361532 (toList!6705 lm!2709)) lt!1941864))))

(assert (= (and d!1527658 (not res!2028905)) b!4779295))

(assert (= (and b!4779295 res!2028906) b!4779296))

(declare-fun m!5755714 () Bool)

(assert (=> b!4779296 m!5755714))

(assert (=> d!1527594 d!1527658))

(assert (=> b!4779080 d!1527614))

(declare-fun d!1527660 () Bool)

(declare-fun res!2028907 () Bool)

(declare-fun e!2983705 () Bool)

(assert (=> d!1527660 (=> res!2028907 e!2983705)))

(assert (=> d!1527660 (= res!2028907 (and (is-Cons!53957 (t!361531 (_2!31505 (h!60374 (toList!6705 lm!2709))))) (= (_1!31504 (h!60373 (t!361531 (_2!31505 (h!60374 (toList!6705 lm!2709)))))) key!6641)))))

(assert (=> d!1527660 (= (containsKey!3783 (t!361531 (_2!31505 (h!60374 (toList!6705 lm!2709)))) key!6641) e!2983705)))

(declare-fun b!4779297 () Bool)

(declare-fun e!2983706 () Bool)

(assert (=> b!4779297 (= e!2983705 e!2983706)))

(declare-fun res!2028908 () Bool)

(assert (=> b!4779297 (=> (not res!2028908) (not e!2983706))))

(assert (=> b!4779297 (= res!2028908 (is-Cons!53957 (t!361531 (_2!31505 (h!60374 (toList!6705 lm!2709))))))))

(declare-fun b!4779298 () Bool)

(assert (=> b!4779298 (= e!2983706 (containsKey!3783 (t!361531 (t!361531 (_2!31505 (h!60374 (toList!6705 lm!2709))))) key!6641))))

(assert (= (and d!1527660 (not res!2028907)) b!4779297))

(assert (= (and b!4779297 res!2028908) b!4779298))

(declare-fun m!5755716 () Bool)

(assert (=> b!4779298 m!5755716))

(assert (=> b!4779196 d!1527660))

(declare-fun d!1527662 () Bool)

(assert (=> d!1527662 (= (isDefined!10045 lt!1941913) (not (isEmpty!29339 lt!1941913)))))

(declare-fun bs!1151438 () Bool)

(assert (= bs!1151438 d!1527662))

(assert (=> bs!1151438 m!5755466))

(assert (=> b!4779079 d!1527662))

(assert (=> b!4779119 d!1527570))

(declare-fun d!1527664 () Bool)

(assert (=> d!1527664 (dynLambda!22006 lambda!227591 (h!60374 (toList!6705 lm!2709)))))

(assert (=> d!1527664 true))

(declare-fun _$7!2329 () Unit!139119)

(assert (=> d!1527664 (= (choose!34210 (toList!6705 lm!2709) lambda!227591 (h!60374 (toList!6705 lm!2709))) _$7!2329)))

(declare-fun b_lambda!185389 () Bool)

(assert (=> (not b_lambda!185389) (not d!1527664)))

(declare-fun bs!1151439 () Bool)

(assert (= bs!1151439 d!1527664))

(assert (=> bs!1151439 m!5755594))

(assert (=> d!1527620 d!1527664))

(declare-fun d!1527666 () Bool)

(declare-fun res!2028909 () Bool)

(declare-fun e!2983707 () Bool)

(assert (=> d!1527666 (=> res!2028909 e!2983707)))

(assert (=> d!1527666 (= res!2028909 (is-Nil!53958 (toList!6705 lm!2709)))))

(assert (=> d!1527666 (= (forall!12093 (toList!6705 lm!2709) lambda!227591) e!2983707)))

(declare-fun b!4779299 () Bool)

(declare-fun e!2983708 () Bool)

(assert (=> b!4779299 (= e!2983707 e!2983708)))

(declare-fun res!2028910 () Bool)

(assert (=> b!4779299 (=> (not res!2028910) (not e!2983708))))

(assert (=> b!4779299 (= res!2028910 (dynLambda!22006 lambda!227591 (h!60374 (toList!6705 lm!2709))))))

(declare-fun b!4779300 () Bool)

(assert (=> b!4779300 (= e!2983708 (forall!12093 (t!361532 (toList!6705 lm!2709)) lambda!227591))))

(assert (= (and d!1527666 (not res!2028909)) b!4779299))

(assert (= (and b!4779299 res!2028910) b!4779300))

(declare-fun b_lambda!185391 () Bool)

(assert (=> (not b_lambda!185391) (not b!4779299)))

(assert (=> b!4779299 m!5755594))

(declare-fun m!5755718 () Bool)

(assert (=> b!4779300 m!5755718))

(assert (=> d!1527620 d!1527666))

(declare-fun d!1527668 () Bool)

(declare-fun lt!1942094 () Bool)

(assert (=> d!1527668 (= lt!1942094 (set.member (tuple2!56423 lt!1941864 lt!1941865) (content!9630 (toList!6705 lm!2709))))))

(declare-fun e!2983709 () Bool)

(assert (=> d!1527668 (= lt!1942094 e!2983709)))

(declare-fun res!2028912 () Bool)

(assert (=> d!1527668 (=> (not res!2028912) (not e!2983709))))

(assert (=> d!1527668 (= res!2028912 (is-Cons!53958 (toList!6705 lm!2709)))))

(assert (=> d!1527668 (= (contains!17467 (toList!6705 lm!2709) (tuple2!56423 lt!1941864 lt!1941865)) lt!1942094)))

(declare-fun b!4779301 () Bool)

(declare-fun e!2983710 () Bool)

(assert (=> b!4779301 (= e!2983709 e!2983710)))

(declare-fun res!2028911 () Bool)

(assert (=> b!4779301 (=> res!2028911 e!2983710)))

(assert (=> b!4779301 (= res!2028911 (= (h!60374 (toList!6705 lm!2709)) (tuple2!56423 lt!1941864 lt!1941865)))))

(declare-fun b!4779302 () Bool)

(assert (=> b!4779302 (= e!2983710 (contains!17467 (t!361532 (toList!6705 lm!2709)) (tuple2!56423 lt!1941864 lt!1941865)))))

(assert (= (and d!1527668 res!2028912) b!4779301))

(assert (= (and b!4779301 (not res!2028911)) b!4779302))

(assert (=> d!1527668 m!5755472))

(declare-fun m!5755720 () Bool)

(assert (=> d!1527668 m!5755720))

(declare-fun m!5755722 () Bool)

(assert (=> b!4779302 m!5755722))

(assert (=> d!1527612 d!1527668))

(declare-fun d!1527670 () Bool)

(assert (=> d!1527670 (contains!17467 (toList!6705 lm!2709) (tuple2!56423 lt!1941864 lt!1941865))))

(assert (=> d!1527670 true))

(declare-fun _$41!481 () Unit!139119)

(assert (=> d!1527670 (= (choose!34213 lm!2709 lt!1941864 lt!1941865) _$41!481)))

(declare-fun bs!1151440 () Bool)

(assert (= bs!1151440 d!1527670))

(assert (=> bs!1151440 m!5755584))

(assert (=> d!1527612 d!1527670))

(assert (=> d!1527612 d!1527594))

(declare-fun d!1527672 () Bool)

(declare-fun res!2028917 () Bool)

(declare-fun e!2983715 () Bool)

(assert (=> d!1527672 (=> res!2028917 e!2983715)))

(assert (=> d!1527672 (= res!2028917 (not (is-Cons!53957 (_2!31505 lt!1941874))))))

(assert (=> d!1527672 (= (noDuplicateKeys!2286 (_2!31505 lt!1941874)) e!2983715)))

(declare-fun b!4779308 () Bool)

(declare-fun e!2983716 () Bool)

(assert (=> b!4779308 (= e!2983715 e!2983716)))

(declare-fun res!2028918 () Bool)

(assert (=> b!4779308 (=> (not res!2028918) (not e!2983716))))

(assert (=> b!4779308 (= res!2028918 (not (containsKey!3783 (t!361531 (_2!31505 lt!1941874)) (_1!31504 (h!60373 (_2!31505 lt!1941874))))))))

(declare-fun b!4779309 () Bool)

(assert (=> b!4779309 (= e!2983716 (noDuplicateKeys!2286 (t!361531 (_2!31505 lt!1941874))))))

(assert (= (and d!1527672 (not res!2028917)) b!4779308))

(assert (= (and b!4779308 res!2028918) b!4779309))

(declare-fun m!5755724 () Bool)

(assert (=> b!4779308 m!5755724))

(declare-fun m!5755726 () Bool)

(assert (=> b!4779309 m!5755726))

(assert (=> bs!1151406 d!1527672))

(declare-fun d!1527674 () Bool)

(declare-fun res!2028923 () Bool)

(declare-fun e!2983721 () Bool)

(assert (=> d!1527674 (=> res!2028923 e!2983721)))

(assert (=> d!1527674 (= res!2028923 (and (is-Cons!53957 (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))) (= (_1!31504 (h!60373 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))))) key!6641)))))

(assert (=> d!1527674 (= (containsKey!3786 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))) key!6641) e!2983721)))

(declare-fun b!4779314 () Bool)

(declare-fun e!2983722 () Bool)

(assert (=> b!4779314 (= e!2983721 e!2983722)))

(declare-fun res!2028924 () Bool)

(assert (=> b!4779314 (=> (not res!2028924) (not e!2983722))))

(assert (=> b!4779314 (= res!2028924 (is-Cons!53957 (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))))))

(declare-fun b!4779315 () Bool)

(assert (=> b!4779315 (= e!2983722 (containsKey!3786 (t!361531 (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))) key!6641))))

(assert (= (and d!1527674 (not res!2028923)) b!4779314))

(assert (= (and b!4779314 res!2028924) b!4779315))

(declare-fun m!5755728 () Bool)

(assert (=> b!4779315 m!5755728))

(assert (=> d!1527602 d!1527674))

(declare-fun d!1527676 () Bool)

(assert (=> d!1527676 (= (isEmpty!29339 lt!1941871) (not (is-Some!12900 lt!1941871)))))

(assert (=> d!1527560 d!1527676))

(declare-fun d!1527678 () Bool)

(declare-fun lt!1942097 () Bool)

(declare-fun content!9632 (List!54085) (Set K!15522))

(assert (=> d!1527678 (= lt!1942097 (set.member key!6641 (content!9632 e!2983605)))))

(declare-fun e!2983728 () Bool)

(assert (=> d!1527678 (= lt!1942097 e!2983728)))

(declare-fun res!2028930 () Bool)

(assert (=> d!1527678 (=> (not res!2028930) (not e!2983728))))

(assert (=> d!1527678 (= res!2028930 (is-Cons!53961 e!2983605))))

(assert (=> d!1527678 (= (contains!17474 e!2983605 key!6641) lt!1942097)))

(declare-fun b!4779320 () Bool)

(declare-fun e!2983727 () Bool)

(assert (=> b!4779320 (= e!2983728 e!2983727)))

(declare-fun res!2028929 () Bool)

(assert (=> b!4779320 (=> res!2028929 e!2983727)))

(assert (=> b!4779320 (= res!2028929 (= (h!60377 e!2983605) key!6641))))

(declare-fun b!4779321 () Bool)

(assert (=> b!4779321 (= e!2983727 (contains!17474 (t!361535 e!2983605) key!6641))))

(assert (= (and d!1527678 res!2028930) b!4779320))

(assert (= (and b!4779320 (not res!2028929)) b!4779321))

(declare-fun m!5755730 () Bool)

(assert (=> d!1527678 m!5755730))

(declare-fun m!5755732 () Bool)

(assert (=> d!1527678 m!5755732))

(declare-fun m!5755734 () Bool)

(assert (=> b!4779321 m!5755734))

(assert (=> bm!334656 d!1527678))

(declare-fun d!1527680 () Bool)

(assert (=> d!1527680 (= (get!18330 (getValueByKey!2264 (toList!6705 lm!2709) lt!1941864)) (v!48087 (getValueByKey!2264 (toList!6705 lm!2709) lt!1941864)))))

(assert (=> d!1527572 d!1527680))

(declare-fun b!4779331 () Bool)

(declare-fun e!2983733 () Option!12903)

(declare-fun e!2983734 () Option!12903)

(assert (=> b!4779331 (= e!2983733 e!2983734)))

(declare-fun c!814793 () Bool)

(assert (=> b!4779331 (= c!814793 (and (is-Cons!53958 (toList!6705 lm!2709)) (not (= (_1!31505 (h!60374 (toList!6705 lm!2709))) lt!1941864))))))

(declare-fun b!4779330 () Bool)

(assert (=> b!4779330 (= e!2983733 (Some!12902 (_2!31505 (h!60374 (toList!6705 lm!2709)))))))

(declare-fun b!4779332 () Bool)

(assert (=> b!4779332 (= e!2983734 (getValueByKey!2264 (t!361532 (toList!6705 lm!2709)) lt!1941864))))

(declare-fun b!4779333 () Bool)

(assert (=> b!4779333 (= e!2983734 None!12902)))

(declare-fun d!1527682 () Bool)

(declare-fun c!814792 () Bool)

(assert (=> d!1527682 (= c!814792 (and (is-Cons!53958 (toList!6705 lm!2709)) (= (_1!31505 (h!60374 (toList!6705 lm!2709))) lt!1941864)))))

(assert (=> d!1527682 (= (getValueByKey!2264 (toList!6705 lm!2709) lt!1941864) e!2983733)))

(assert (= (and d!1527682 c!814792) b!4779330))

(assert (= (and d!1527682 (not c!814792)) b!4779331))

(assert (= (and b!4779331 c!814793) b!4779332))

(assert (= (and b!4779331 (not c!814793)) b!4779333))

(declare-fun m!5755736 () Bool)

(assert (=> b!4779332 m!5755736))

(assert (=> d!1527572 d!1527682))

(declare-fun d!1527684 () Bool)

(declare-fun lt!1942098 () Bool)

(assert (=> d!1527684 (= lt!1942098 (set.member key!6641 (content!9632 (keys!19645 (extractMap!2340 (toList!6705 lm!2709))))))))

(declare-fun e!2983736 () Bool)

(assert (=> d!1527684 (= lt!1942098 e!2983736)))

(declare-fun res!2028932 () Bool)

(assert (=> d!1527684 (=> (not res!2028932) (not e!2983736))))

(assert (=> d!1527684 (= res!2028932 (is-Cons!53961 (keys!19645 (extractMap!2340 (toList!6705 lm!2709)))))))

(assert (=> d!1527684 (= (contains!17474 (keys!19645 (extractMap!2340 (toList!6705 lm!2709))) key!6641) lt!1942098)))

(declare-fun b!4779334 () Bool)

(declare-fun e!2983735 () Bool)

(assert (=> b!4779334 (= e!2983736 e!2983735)))

(declare-fun res!2028931 () Bool)

(assert (=> b!4779334 (=> res!2028931 e!2983735)))

(assert (=> b!4779334 (= res!2028931 (= (h!60377 (keys!19645 (extractMap!2340 (toList!6705 lm!2709)))) key!6641))))

(declare-fun b!4779335 () Bool)

(assert (=> b!4779335 (= e!2983735 (contains!17474 (t!361535 (keys!19645 (extractMap!2340 (toList!6705 lm!2709)))) key!6641))))

(assert (= (and d!1527684 res!2028932) b!4779334))

(assert (= (and b!4779334 (not res!2028931)) b!4779335))

(assert (=> d!1527684 m!5755542))

(declare-fun m!5755738 () Bool)

(assert (=> d!1527684 m!5755738))

(declare-fun m!5755740 () Bool)

(assert (=> d!1527684 m!5755740))

(declare-fun m!5755742 () Bool)

(assert (=> b!4779335 m!5755742))

(assert (=> b!4779150 d!1527684))

(declare-fun b!4779343 () Bool)

(assert (=> b!4779343 true))

(declare-fun d!1527686 () Bool)

(declare-fun e!2983739 () Bool)

(assert (=> d!1527686 e!2983739))

(declare-fun res!2028939 () Bool)

(assert (=> d!1527686 (=> (not res!2028939) (not e!2983739))))

(declare-fun lt!1942101 () List!54085)

(declare-fun noDuplicate!894 (List!54085) Bool)

(assert (=> d!1527686 (= res!2028939 (noDuplicate!894 lt!1942101))))

(assert (=> d!1527686 (= lt!1942101 (getKeysList!1032 (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))))))

(assert (=> d!1527686 (= (keys!19645 (extractMap!2340 (toList!6705 lm!2709))) lt!1942101)))

(declare-fun b!4779342 () Bool)

(declare-fun res!2028940 () Bool)

(assert (=> b!4779342 (=> (not res!2028940) (not e!2983739))))

(declare-fun length!644 (List!54085) Int)

(declare-fun length!645 (List!54081) Int)

(assert (=> b!4779342 (= res!2028940 (= (length!644 lt!1942101) (length!645 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))))))))

(declare-fun res!2028941 () Bool)

(assert (=> b!4779343 (=> (not res!2028941) (not e!2983739))))

(declare-fun lambda!227649 () Int)

(declare-fun forall!12095 (List!54085 Int) Bool)

(assert (=> b!4779343 (= res!2028941 (forall!12095 lt!1942101 lambda!227649))))

(declare-fun b!4779344 () Bool)

(declare-fun lambda!227650 () Int)

(declare-fun map!12162 (List!54081 Int) List!54085)

(assert (=> b!4779344 (= e!2983739 (= (content!9632 lt!1942101) (content!9632 (map!12162 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))) lambda!227650))))))

(assert (= (and d!1527686 res!2028939) b!4779342))

(assert (= (and b!4779342 res!2028940) b!4779343))

(assert (= (and b!4779343 res!2028941) b!4779344))

(declare-fun m!5755744 () Bool)

(assert (=> d!1527686 m!5755744))

(assert (=> d!1527686 m!5755546))

(declare-fun m!5755746 () Bool)

(assert (=> b!4779342 m!5755746))

(declare-fun m!5755748 () Bool)

(assert (=> b!4779342 m!5755748))

(declare-fun m!5755750 () Bool)

(assert (=> b!4779343 m!5755750))

(declare-fun m!5755752 () Bool)

(assert (=> b!4779344 m!5755752))

(declare-fun m!5755754 () Bool)

(assert (=> b!4779344 m!5755754))

(assert (=> b!4779344 m!5755754))

(declare-fun m!5755756 () Bool)

(assert (=> b!4779344 m!5755756))

(assert (=> b!4779150 d!1527686))

(declare-fun d!1527688 () Bool)

(assert (=> d!1527688 (= (isEmpty!29339 lt!1941913) (not (is-Some!12900 lt!1941913)))))

(assert (=> d!1527566 d!1527688))

(declare-fun d!1527690 () Bool)

(declare-fun res!2028942 () Bool)

(declare-fun e!2983740 () Bool)

(assert (=> d!1527690 (=> res!2028942 e!2983740)))

(assert (=> d!1527690 (= res!2028942 (not (is-Cons!53957 lt!1941865)))))

(assert (=> d!1527690 (= (noDuplicateKeys!2286 lt!1941865) e!2983740)))

(declare-fun b!4779347 () Bool)

(declare-fun e!2983741 () Bool)

(assert (=> b!4779347 (= e!2983740 e!2983741)))

(declare-fun res!2028943 () Bool)

(assert (=> b!4779347 (=> (not res!2028943) (not e!2983741))))

(assert (=> b!4779347 (= res!2028943 (not (containsKey!3783 (t!361531 lt!1941865) (_1!31504 (h!60373 lt!1941865)))))))

(declare-fun b!4779348 () Bool)

(assert (=> b!4779348 (= e!2983741 (noDuplicateKeys!2286 (t!361531 lt!1941865)))))

(assert (= (and d!1527690 (not res!2028942)) b!4779347))

(assert (= (and b!4779347 res!2028943) b!4779348))

(declare-fun m!5755758 () Bool)

(assert (=> b!4779347 m!5755758))

(declare-fun m!5755760 () Bool)

(assert (=> b!4779348 m!5755760))

(assert (=> d!1527566 d!1527690))

(declare-fun d!1527692 () Bool)

(declare-fun isEmpty!29341 (Option!12904) Bool)

(assert (=> d!1527692 (= (isDefined!10048 (getValueByKey!2265 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))) key!6641)) (not (isEmpty!29341 (getValueByKey!2265 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))) key!6641))))))

(declare-fun bs!1151441 () Bool)

(assert (= bs!1151441 d!1527692))

(assert (=> bs!1151441 m!5755534))

(declare-fun m!5755762 () Bool)

(assert (=> bs!1151441 m!5755762))

(assert (=> b!4779149 d!1527692))

(declare-fun b!4779357 () Bool)

(declare-fun e!2983746 () Option!12904)

(assert (=> b!4779357 (= e!2983746 (Some!12903 (_2!31504 (h!60373 (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))))))))

(declare-fun b!4779360 () Bool)

(declare-fun e!2983747 () Option!12904)

(assert (=> b!4779360 (= e!2983747 None!12903)))

(declare-fun d!1527694 () Bool)

(declare-fun c!814798 () Bool)

(assert (=> d!1527694 (= c!814798 (and (is-Cons!53957 (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))) (= (_1!31504 (h!60373 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))))) key!6641)))))

(assert (=> d!1527694 (= (getValueByKey!2265 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))) key!6641) e!2983746)))

(declare-fun b!4779358 () Bool)

(assert (=> b!4779358 (= e!2983746 e!2983747)))

(declare-fun c!814799 () Bool)

(assert (=> b!4779358 (= c!814799 (and (is-Cons!53957 (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))) (not (= (_1!31504 (h!60373 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))))) key!6641))))))

(declare-fun b!4779359 () Bool)

(assert (=> b!4779359 (= e!2983747 (getValueByKey!2265 (t!361531 (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))) key!6641))))

(assert (= (and d!1527694 c!814798) b!4779357))

(assert (= (and d!1527694 (not c!814798)) b!4779358))

(assert (= (and b!4779358 c!814799) b!4779359))

(assert (= (and b!4779358 (not c!814799)) b!4779360))

(declare-fun m!5755764 () Bool)

(assert (=> b!4779359 m!5755764))

(assert (=> b!4779149 d!1527694))

(assert (=> b!4779192 d!1527618))

(declare-fun d!1527696 () Bool)

(declare-fun choose!34219 (Hashable!6813 K!15522) (_ BitVec 64))

(assert (=> d!1527696 (= (hash!4794 hashF!1687 key!6641) (choose!34219 hashF!1687 key!6641))))

(declare-fun bs!1151442 () Bool)

(assert (= bs!1151442 d!1527696))

(declare-fun m!5755766 () Bool)

(assert (=> bs!1151442 m!5755766))

(assert (=> d!1527576 d!1527696))

(declare-fun d!1527698 () Bool)

(declare-fun res!2028944 () Bool)

(declare-fun e!2983748 () Bool)

(assert (=> d!1527698 (=> res!2028944 e!2983748)))

(assert (=> d!1527698 (= res!2028944 (is-Nil!53958 (t!361532 (toList!6705 lm!2709))))))

(assert (=> d!1527698 (= (forall!12093 (t!361532 (toList!6705 lm!2709)) lambda!227590) e!2983748)))

(declare-fun b!4779361 () Bool)

(declare-fun e!2983749 () Bool)

(assert (=> b!4779361 (= e!2983748 e!2983749)))

(declare-fun res!2028945 () Bool)

(assert (=> b!4779361 (=> (not res!2028945) (not e!2983749))))

(assert (=> b!4779361 (= res!2028945 (dynLambda!22006 lambda!227590 (h!60374 (t!361532 (toList!6705 lm!2709)))))))

(declare-fun b!4779362 () Bool)

(assert (=> b!4779362 (= e!2983749 (forall!12093 (t!361532 (t!361532 (toList!6705 lm!2709))) lambda!227590))))

(assert (= (and d!1527698 (not res!2028944)) b!4779361))

(assert (= (and b!4779361 res!2028945) b!4779362))

(declare-fun b_lambda!185393 () Bool)

(assert (=> (not b_lambda!185393) (not b!4779361)))

(declare-fun m!5755768 () Bool)

(assert (=> b!4779361 m!5755768))

(declare-fun m!5755770 () Bool)

(assert (=> b!4779362 m!5755770))

(assert (=> b!4779056 d!1527698))

(declare-fun d!1527700 () Bool)

(declare-fun lt!1942102 () Bool)

(assert (=> d!1527700 (= lt!1942102 (set.member (h!60374 (toList!6705 lm!2709)) (content!9630 (toList!6705 lm!2709))))))

(declare-fun e!2983750 () Bool)

(assert (=> d!1527700 (= lt!1942102 e!2983750)))

(declare-fun res!2028947 () Bool)

(assert (=> d!1527700 (=> (not res!2028947) (not e!2983750))))

(assert (=> d!1527700 (= res!2028947 (is-Cons!53958 (toList!6705 lm!2709)))))

(assert (=> d!1527700 (= (contains!17467 (toList!6705 lm!2709) (h!60374 (toList!6705 lm!2709))) lt!1942102)))

(declare-fun b!4779363 () Bool)

(declare-fun e!2983751 () Bool)

(assert (=> b!4779363 (= e!2983750 e!2983751)))

(declare-fun res!2028946 () Bool)

(assert (=> b!4779363 (=> res!2028946 e!2983751)))

(assert (=> b!4779363 (= res!2028946 (= (h!60374 (toList!6705 lm!2709)) (h!60374 (toList!6705 lm!2709))))))

(declare-fun b!4779364 () Bool)

(assert (=> b!4779364 (= e!2983751 (contains!17467 (t!361532 (toList!6705 lm!2709)) (h!60374 (toList!6705 lm!2709))))))

(assert (= (and d!1527700 res!2028947) b!4779363))

(assert (= (and b!4779363 (not res!2028946)) b!4779364))

(assert (=> d!1527700 m!5755472))

(declare-fun m!5755772 () Bool)

(assert (=> d!1527700 m!5755772))

(declare-fun m!5755774 () Bool)

(assert (=> b!4779364 m!5755774))

(assert (=> b!4779197 d!1527700))

(declare-fun bs!1151443 () Bool)

(declare-fun b!4779390 () Bool)

(assert (= bs!1151443 (and b!4779390 b!4779343)))

(declare-fun lambda!227659 () Int)

(assert (=> bs!1151443 (= (= (t!361531 (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))) (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))) (= lambda!227659 lambda!227649))))

(assert (=> b!4779390 true))

(declare-fun bs!1151444 () Bool)

(declare-fun b!4779386 () Bool)

(assert (= bs!1151444 (and b!4779386 b!4779343)))

(declare-fun lambda!227660 () Int)

(assert (=> bs!1151444 (= (= (Cons!53957 (h!60373 (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))) (t!361531 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))))) (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))) (= lambda!227660 lambda!227649))))

(declare-fun bs!1151445 () Bool)

(assert (= bs!1151445 (and b!4779386 b!4779390)))

(assert (=> bs!1151445 (= (= (Cons!53957 (h!60373 (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))) (t!361531 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))))) (t!361531 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))))) (= lambda!227660 lambda!227659))))

(assert (=> b!4779386 true))

(declare-fun bs!1151446 () Bool)

(declare-fun b!4779388 () Bool)

(assert (= bs!1151446 (and b!4779388 b!4779343)))

(declare-fun lambda!227661 () Int)

(assert (=> bs!1151446 (= lambda!227661 lambda!227649)))

(declare-fun bs!1151447 () Bool)

(assert (= bs!1151447 (and b!4779388 b!4779390)))

(assert (=> bs!1151447 (= (= (toList!6706 (extractMap!2340 (toList!6705 lm!2709))) (t!361531 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))))) (= lambda!227661 lambda!227659))))

(declare-fun bs!1151448 () Bool)

(assert (= bs!1151448 (and b!4779388 b!4779386)))

(assert (=> bs!1151448 (= (= (toList!6706 (extractMap!2340 (toList!6705 lm!2709))) (Cons!53957 (h!60373 (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))) (t!361531 (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))))) (= lambda!227661 lambda!227660))))

(assert (=> b!4779388 true))

(declare-fun bs!1151449 () Bool)

(declare-fun b!4779385 () Bool)

(assert (= bs!1151449 (and b!4779385 b!4779344)))

(declare-fun lambda!227662 () Int)

(assert (=> bs!1151449 (= lambda!227662 lambda!227650)))

(declare-fun b!4779383 () Bool)

(declare-fun e!2983763 () List!54085)

(assert (=> b!4779383 (= e!2983763 Nil!53961)))

(declare-fun b!4779384 () Bool)

(declare-fun e!2983762 () Unit!139119)

(declare-fun Unit!139129 () Unit!139119)

(assert (=> b!4779384 (= e!2983762 Unit!139129)))

(declare-fun e!2983760 () Bool)

(declare-fun lt!1942120 () List!54085)

(assert (=> b!4779385 (= e!2983760 (= (content!9632 lt!1942120) (content!9632 (map!12162 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))) lambda!227662))))))

(assert (=> b!4779386 (= e!2983763 (Cons!53961 (_1!31504 (h!60373 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))))) (getKeysList!1032 (t!361531 (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))))))))

(declare-fun c!814806 () Bool)

(assert (=> b!4779386 (= c!814806 (containsKey!3786 (t!361531 (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))) (_1!31504 (h!60373 (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))))))))

(declare-fun lt!1942121 () Unit!139119)

(assert (=> b!4779386 (= lt!1942121 e!2983762)))

(declare-fun c!814807 () Bool)

(assert (=> b!4779386 (= c!814807 (contains!17474 (getKeysList!1032 (t!361531 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))))) (_1!31504 (h!60373 (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))))))))

(declare-fun lt!1942123 () Unit!139119)

(declare-fun e!2983761 () Unit!139119)

(assert (=> b!4779386 (= lt!1942123 e!2983761)))

(declare-fun lt!1942122 () List!54085)

(assert (=> b!4779386 (= lt!1942122 (getKeysList!1032 (t!361531 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))))))))

(declare-fun lt!1942119 () Unit!139119)

(declare-fun lemmaForallContainsAddHeadPreserves!312 (List!54081 List!54085 tuple2!56420) Unit!139119)

(assert (=> b!4779386 (= lt!1942119 (lemmaForallContainsAddHeadPreserves!312 (t!361531 (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))) lt!1942122 (h!60373 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))))))))

(assert (=> b!4779386 (forall!12095 lt!1942122 lambda!227660)))

(declare-fun lt!1942117 () Unit!139119)

(assert (=> b!4779386 (= lt!1942117 lt!1942119)))

(declare-fun d!1527702 () Bool)

(assert (=> d!1527702 e!2983760))

(declare-fun res!2028955 () Bool)

(assert (=> d!1527702 (=> (not res!2028955) (not e!2983760))))

(assert (=> d!1527702 (= res!2028955 (noDuplicate!894 lt!1942120))))

(assert (=> d!1527702 (= lt!1942120 e!2983763)))

(declare-fun c!814808 () Bool)

(assert (=> d!1527702 (= c!814808 (is-Cons!53957 (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))))))

(assert (=> d!1527702 (invariantList!1688 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))))))

(assert (=> d!1527702 (= (getKeysList!1032 (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))) lt!1942120)))

(declare-fun b!4779387 () Bool)

(declare-fun res!2028956 () Bool)

(assert (=> b!4779387 (=> (not res!2028956) (not e!2983760))))

(assert (=> b!4779387 (= res!2028956 (= (length!644 lt!1942120) (length!645 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))))))))

(declare-fun res!2028954 () Bool)

(assert (=> b!4779388 (=> (not res!2028954) (not e!2983760))))

(assert (=> b!4779388 (= res!2028954 (forall!12095 lt!1942120 lambda!227661))))

(declare-fun b!4779389 () Bool)

(declare-fun Unit!139130 () Unit!139119)

(assert (=> b!4779389 (= e!2983761 Unit!139130)))

(assert (=> b!4779390 false))

(declare-fun lt!1942118 () Unit!139119)

(declare-fun forallContained!4040 (List!54085 Int K!15522) Unit!139119)

(assert (=> b!4779390 (= lt!1942118 (forallContained!4040 (getKeysList!1032 (t!361531 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))))) lambda!227659 (_1!31504 (h!60373 (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))))))))

(declare-fun Unit!139131 () Unit!139119)

(assert (=> b!4779390 (= e!2983761 Unit!139131)))

(declare-fun b!4779391 () Bool)

(assert (=> b!4779391 false))

(declare-fun Unit!139132 () Unit!139119)

(assert (=> b!4779391 (= e!2983762 Unit!139132)))

(assert (= (and d!1527702 c!814808) b!4779386))

(assert (= (and d!1527702 (not c!814808)) b!4779383))

(assert (= (and b!4779386 c!814806) b!4779391))

(assert (= (and b!4779386 (not c!814806)) b!4779384))

(assert (= (and b!4779386 c!814807) b!4779390))

(assert (= (and b!4779386 (not c!814807)) b!4779389))

(assert (= (and d!1527702 res!2028955) b!4779387))

(assert (= (and b!4779387 res!2028956) b!4779388))

(assert (= (and b!4779388 res!2028954) b!4779385))

(declare-fun m!5755776 () Bool)

(assert (=> b!4779386 m!5755776))

(declare-fun m!5755778 () Bool)

(assert (=> b!4779386 m!5755778))

(declare-fun m!5755780 () Bool)

(assert (=> b!4779386 m!5755780))

(declare-fun m!5755782 () Bool)

(assert (=> b!4779386 m!5755782))

(declare-fun m!5755784 () Bool)

(assert (=> b!4779386 m!5755784))

(assert (=> b!4779386 m!5755782))

(declare-fun m!5755786 () Bool)

(assert (=> b!4779388 m!5755786))

(assert (=> b!4779390 m!5755782))

(assert (=> b!4779390 m!5755782))

(declare-fun m!5755788 () Bool)

(assert (=> b!4779390 m!5755788))

(declare-fun m!5755790 () Bool)

(assert (=> b!4779387 m!5755790))

(assert (=> b!4779387 m!5755748))

(declare-fun m!5755792 () Bool)

(assert (=> d!1527702 m!5755792))

(declare-fun m!5755794 () Bool)

(assert (=> d!1527702 m!5755794))

(declare-fun m!5755796 () Bool)

(assert (=> b!4779385 m!5755796))

(declare-fun m!5755798 () Bool)

(assert (=> b!4779385 m!5755798))

(assert (=> b!4779385 m!5755798))

(declare-fun m!5755800 () Bool)

(assert (=> b!4779385 m!5755800))

(assert (=> b!4779151 d!1527702))

(declare-fun d!1527704 () Bool)

(assert (=> d!1527704 true))

(assert (=> d!1527704 true))

(declare-fun lambda!227665 () Int)

(declare-fun forall!12096 (List!54081 Int) Bool)

(assert (=> d!1527704 (= (allKeysSameHash!1935 (_2!31505 (h!60374 (toList!6705 lm!2709))) (_1!31505 (h!60374 (toList!6705 lm!2709))) hashF!1687) (forall!12096 (_2!31505 (h!60374 (toList!6705 lm!2709))) lambda!227665))))

(declare-fun bs!1151450 () Bool)

(assert (= bs!1151450 d!1527704))

(declare-fun m!5755802 () Bool)

(assert (=> bs!1151450 m!5755802))

(assert (=> bs!1151407 d!1527704))

(declare-fun d!1527706 () Bool)

(declare-fun e!2983764 () Bool)

(assert (=> d!1527706 e!2983764))

(declare-fun res!2028957 () Bool)

(assert (=> d!1527706 (=> res!2028957 e!2983764)))

(declare-fun lt!1942125 () Bool)

(assert (=> d!1527706 (= res!2028957 (not lt!1942125))))

(declare-fun lt!1942127 () Bool)

(assert (=> d!1527706 (= lt!1942125 lt!1942127)))

(declare-fun lt!1942124 () Unit!139119)

(declare-fun e!2983765 () Unit!139119)

(assert (=> d!1527706 (= lt!1942124 e!2983765)))

(declare-fun c!814809 () Bool)

(assert (=> d!1527706 (= c!814809 lt!1942127)))

(assert (=> d!1527706 (= lt!1942127 (containsKey!3785 (toList!6705 lm!2709) (hash!4792 hashF!1687 key!6641)))))

(assert (=> d!1527706 (= (contains!17468 lm!2709 (hash!4792 hashF!1687 key!6641)) lt!1942125)))

(declare-fun b!4779398 () Bool)

(declare-fun lt!1942126 () Unit!139119)

(assert (=> b!4779398 (= e!2983765 lt!1942126)))

(assert (=> b!4779398 (= lt!1942126 (lemmaContainsKeyImpliesGetValueByKeyDefined!2058 (toList!6705 lm!2709) (hash!4792 hashF!1687 key!6641)))))

(assert (=> b!4779398 (isDefined!10047 (getValueByKey!2264 (toList!6705 lm!2709) (hash!4792 hashF!1687 key!6641)))))

(declare-fun b!4779399 () Bool)

(declare-fun Unit!139133 () Unit!139119)

(assert (=> b!4779399 (= e!2983765 Unit!139133)))

(declare-fun b!4779400 () Bool)

(assert (=> b!4779400 (= e!2983764 (isDefined!10047 (getValueByKey!2264 (toList!6705 lm!2709) (hash!4792 hashF!1687 key!6641))))))

(assert (= (and d!1527706 c!814809) b!4779398))

(assert (= (and d!1527706 (not c!814809)) b!4779399))

(assert (= (and d!1527706 (not res!2028957)) b!4779400))

(assert (=> d!1527706 m!5755380))

(declare-fun m!5755804 () Bool)

(assert (=> d!1527706 m!5755804))

(assert (=> b!4779398 m!5755380))

(declare-fun m!5755806 () Bool)

(assert (=> b!4779398 m!5755806))

(assert (=> b!4779398 m!5755380))

(declare-fun m!5755808 () Bool)

(assert (=> b!4779398 m!5755808))

(assert (=> b!4779398 m!5755808))

(declare-fun m!5755810 () Bool)

(assert (=> b!4779398 m!5755810))

(assert (=> b!4779400 m!5755380))

(assert (=> b!4779400 m!5755808))

(assert (=> b!4779400 m!5755808))

(assert (=> b!4779400 m!5755810))

(assert (=> d!1527588 d!1527706))

(assert (=> d!1527588 d!1527576))

(declare-fun d!1527708 () Bool)

(assert (=> d!1527708 (contains!17468 lm!2709 (hash!4792 hashF!1687 key!6641))))

(assert (=> d!1527708 true))

(declare-fun _$27!1590 () Unit!139119)

(assert (=> d!1527708 (= (choose!34211 lm!2709 key!6641 hashF!1687) _$27!1590)))

(declare-fun bs!1151451 () Bool)

(assert (= bs!1151451 d!1527708))

(assert (=> bs!1151451 m!5755380))

(assert (=> bs!1151451 m!5755380))

(assert (=> bs!1151451 m!5755516))

(assert (=> d!1527588 d!1527708))

(declare-fun d!1527710 () Bool)

(declare-fun res!2028958 () Bool)

(declare-fun e!2983766 () Bool)

(assert (=> d!1527710 (=> res!2028958 e!2983766)))

(assert (=> d!1527710 (= res!2028958 (is-Nil!53958 (toList!6705 lm!2709)))))

(assert (=> d!1527710 (= (forall!12093 (toList!6705 lm!2709) lambda!227618) e!2983766)))

(declare-fun b!4779401 () Bool)

(declare-fun e!2983767 () Bool)

(assert (=> b!4779401 (= e!2983766 e!2983767)))

(declare-fun res!2028959 () Bool)

(assert (=> b!4779401 (=> (not res!2028959) (not e!2983767))))

(assert (=> b!4779401 (= res!2028959 (dynLambda!22006 lambda!227618 (h!60374 (toList!6705 lm!2709))))))

(declare-fun b!4779402 () Bool)

(assert (=> b!4779402 (= e!2983767 (forall!12093 (t!361532 (toList!6705 lm!2709)) lambda!227618))))

(assert (= (and d!1527710 (not res!2028958)) b!4779401))

(assert (= (and b!4779401 res!2028959) b!4779402))

(declare-fun b_lambda!185395 () Bool)

(assert (=> (not b_lambda!185395) (not b!4779401)))

(declare-fun m!5755812 () Bool)

(assert (=> b!4779401 m!5755812))

(declare-fun m!5755814 () Bool)

(assert (=> b!4779402 m!5755814))

(assert (=> d!1527588 d!1527710))

(assert (=> b!4779155 d!1527684))

(assert (=> b!4779155 d!1527686))

(declare-fun d!1527712 () Bool)

(declare-fun res!2028960 () Bool)

(declare-fun e!2983768 () Bool)

(assert (=> d!1527712 (=> res!2028960 e!2983768)))

(assert (=> d!1527712 (= res!2028960 (is-Nil!53958 (toList!6705 lm!2709)))))

(assert (=> d!1527712 (= (forall!12093 (toList!6705 lm!2709) lambda!227606) e!2983768)))

(declare-fun b!4779403 () Bool)

(declare-fun e!2983769 () Bool)

(assert (=> b!4779403 (= e!2983768 e!2983769)))

(declare-fun res!2028961 () Bool)

(assert (=> b!4779403 (=> (not res!2028961) (not e!2983769))))

(assert (=> b!4779403 (= res!2028961 (dynLambda!22006 lambda!227606 (h!60374 (toList!6705 lm!2709))))))

(declare-fun b!4779404 () Bool)

(assert (=> b!4779404 (= e!2983769 (forall!12093 (t!361532 (toList!6705 lm!2709)) lambda!227606))))

(assert (= (and d!1527712 (not res!2028960)) b!4779403))

(assert (= (and b!4779403 res!2028961) b!4779404))

(declare-fun b_lambda!185397 () Bool)

(assert (=> (not b_lambda!185397) (not b!4779403)))

(declare-fun m!5755816 () Bool)

(assert (=> b!4779403 m!5755816))

(declare-fun m!5755818 () Bool)

(assert (=> b!4779404 m!5755818))

(assert (=> d!1527554 d!1527712))

(declare-fun d!1527714 () Bool)

(declare-fun res!2028962 () Bool)

(declare-fun e!2983772 () Bool)

(assert (=> d!1527714 (=> res!2028962 e!2983772)))

(declare-fun e!2983770 () Bool)

(assert (=> d!1527714 (= res!2028962 e!2983770)))

(declare-fun res!2028963 () Bool)

(assert (=> d!1527714 (=> (not res!2028963) (not e!2983770))))

(assert (=> d!1527714 (= res!2028963 (is-Cons!53958 (t!361532 (toList!6705 lm!2709))))))

(assert (=> d!1527714 (= (containsKeyBiggerList!469 (t!361532 (toList!6705 lm!2709)) key!6641) e!2983772)))

(declare-fun b!4779405 () Bool)

(assert (=> b!4779405 (= e!2983770 (containsKey!3783 (_2!31505 (h!60374 (t!361532 (toList!6705 lm!2709)))) key!6641))))

(declare-fun b!4779406 () Bool)

(declare-fun e!2983771 () Bool)

(assert (=> b!4779406 (= e!2983772 e!2983771)))

(declare-fun res!2028964 () Bool)

(assert (=> b!4779406 (=> (not res!2028964) (not e!2983771))))

(assert (=> b!4779406 (= res!2028964 (is-Cons!53958 (t!361532 (toList!6705 lm!2709))))))

(declare-fun b!4779407 () Bool)

(assert (=> b!4779407 (= e!2983771 (containsKeyBiggerList!469 (t!361532 (t!361532 (toList!6705 lm!2709))) key!6641))))

(assert (= (and d!1527714 res!2028963) b!4779405))

(assert (= (and d!1527714 (not res!2028962)) b!4779406))

(assert (= (and b!4779406 res!2028964) b!4779407))

(declare-fun m!5755820 () Bool)

(assert (=> b!4779405 m!5755820))

(declare-fun m!5755822 () Bool)

(assert (=> b!4779407 m!5755822))

(assert (=> b!4779194 d!1527714))

(assert (=> b!4779154 d!1527674))

(declare-fun d!1527716 () Bool)

(assert (=> d!1527716 (containsKey!3786 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))) key!6641)))

(declare-fun lt!1942130 () Unit!139119)

(declare-fun choose!34220 (List!54081 K!15522) Unit!139119)

(assert (=> d!1527716 (= lt!1942130 (choose!34220 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))) key!6641))))

(assert (=> d!1527716 (invariantList!1688 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))))))

(assert (=> d!1527716 (= (lemmaInGetKeysListThenContainsKey!1032 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))) key!6641) lt!1942130)))

(declare-fun bs!1151452 () Bool)

(assert (= bs!1151452 d!1527716))

(assert (=> bs!1151452 m!5755538))

(declare-fun m!5755824 () Bool)

(assert (=> bs!1151452 m!5755824))

(assert (=> bs!1151452 m!5755794))

(assert (=> b!4779154 d!1527716))

(assert (=> d!1527562 d!1527602))

(assert (=> d!1527562 d!1527578))

(declare-fun d!1527718 () Bool)

(assert (=> d!1527718 (contains!17469 (extractMap!2340 (toList!6705 lm!2709)) key!6641)))

(assert (=> d!1527718 true))

(declare-fun _$34!907 () Unit!139119)

(assert (=> d!1527718 (= (choose!34209 lm!2709 key!6641 hashF!1687) _$34!907)))

(declare-fun bs!1151453 () Bool)

(assert (= bs!1151453 d!1527718))

(assert (=> bs!1151453 m!5755386))

(assert (=> bs!1151453 m!5755386))

(assert (=> bs!1151453 m!5755388))

(assert (=> d!1527562 d!1527718))

(declare-fun d!1527720 () Bool)

(declare-fun res!2028965 () Bool)

(declare-fun e!2983773 () Bool)

(assert (=> d!1527720 (=> res!2028965 e!2983773)))

(assert (=> d!1527720 (= res!2028965 (is-Nil!53958 (toList!6705 lm!2709)))))

(assert (=> d!1527720 (= (forall!12093 (toList!6705 lm!2709) lambda!227609) e!2983773)))

(declare-fun b!4779408 () Bool)

(declare-fun e!2983774 () Bool)

(assert (=> b!4779408 (= e!2983773 e!2983774)))

(declare-fun res!2028966 () Bool)

(assert (=> b!4779408 (=> (not res!2028966) (not e!2983774))))

(assert (=> b!4779408 (= res!2028966 (dynLambda!22006 lambda!227609 (h!60374 (toList!6705 lm!2709))))))

(declare-fun b!4779409 () Bool)

(assert (=> b!4779409 (= e!2983774 (forall!12093 (t!361532 (toList!6705 lm!2709)) lambda!227609))))

(assert (= (and d!1527720 (not res!2028965)) b!4779408))

(assert (= (and b!4779408 res!2028966) b!4779409))

(declare-fun b_lambda!185399 () Bool)

(assert (=> (not b_lambda!185399) (not b!4779408)))

(declare-fun m!5755826 () Bool)

(assert (=> b!4779408 m!5755826))

(declare-fun m!5755828 () Bool)

(assert (=> b!4779409 m!5755828))

(assert (=> d!1527562 d!1527720))

(declare-fun d!1527722 () Bool)

(declare-fun c!814812 () Bool)

(assert (=> d!1527722 (= c!814812 (is-Nil!53958 (toList!6705 lm!2709)))))

(declare-fun e!2983777 () (Set tuple2!56422))

(assert (=> d!1527722 (= (content!9630 (toList!6705 lm!2709)) e!2983777)))

(declare-fun b!4779414 () Bool)

(assert (=> b!4779414 (= e!2983777 (as set.empty (Set tuple2!56422)))))

(declare-fun b!4779415 () Bool)

(assert (=> b!4779415 (= e!2983777 (set.union (set.insert (h!60374 (toList!6705 lm!2709)) (as set.empty (Set tuple2!56422))) (content!9630 (t!361532 (toList!6705 lm!2709)))))))

(assert (= (and d!1527722 c!814812) b!4779414))

(assert (= (and d!1527722 (not c!814812)) b!4779415))

(declare-fun m!5755830 () Bool)

(assert (=> b!4779415 m!5755830))

(assert (=> b!4779415 m!5755706))

(assert (=> d!1527570 d!1527722))

(assert (=> b!4779175 d!1527554))

(declare-fun d!1527724 () Bool)

(assert (=> d!1527724 (dynLambda!22006 lambda!227590 lt!1941874)))

(assert (=> d!1527724 true))

(declare-fun _$7!2330 () Unit!139119)

(assert (=> d!1527724 (= (choose!34210 (toList!6705 lm!2709) lambda!227590 lt!1941874) _$7!2330)))

(declare-fun b_lambda!185401 () Bool)

(assert (=> (not b_lambda!185401) (not d!1527724)))

(declare-fun bs!1151454 () Bool)

(assert (= bs!1151454 d!1527724))

(assert (=> bs!1151454 m!5755506))

(assert (=> d!1527586 d!1527724))

(assert (=> d!1527586 d!1527556))

(declare-fun d!1527726 () Bool)

(assert (=> d!1527726 (isDefined!10048 (getValueByKey!2265 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))) key!6641))))

(declare-fun lt!1942133 () Unit!139119)

(declare-fun choose!34221 (List!54081 K!15522) Unit!139119)

(assert (=> d!1527726 (= lt!1942133 (choose!34221 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))) key!6641))))

(assert (=> d!1527726 (invariantList!1688 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))))))

(assert (=> d!1527726 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2059 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))) key!6641) lt!1942133)))

(declare-fun bs!1151455 () Bool)

(assert (= bs!1151455 d!1527726))

(assert (=> bs!1151455 m!5755534))

(assert (=> bs!1151455 m!5755534))

(assert (=> bs!1151455 m!5755536))

(declare-fun m!5755832 () Bool)

(assert (=> bs!1151455 m!5755832))

(assert (=> bs!1151455 m!5755794))

(assert (=> b!4779157 d!1527726))

(assert (=> b!4779157 d!1527692))

(assert (=> b!4779157 d!1527694))

(declare-fun d!1527728 () Bool)

(assert (=> d!1527728 (contains!17474 (getKeysList!1032 (toList!6706 (extractMap!2340 (toList!6705 lm!2709)))) key!6641)))

(declare-fun lt!1942136 () Unit!139119)

(declare-fun choose!34222 (List!54081 K!15522) Unit!139119)

(assert (=> d!1527728 (= lt!1942136 (choose!34222 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))) key!6641))))

(assert (=> d!1527728 (invariantList!1688 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))))))

(assert (=> d!1527728 (= (lemmaInListThenGetKeysListContains!1027 (toList!6706 (extractMap!2340 (toList!6705 lm!2709))) key!6641) lt!1942136)))

(declare-fun bs!1151456 () Bool)

(assert (= bs!1151456 d!1527728))

(assert (=> bs!1151456 m!5755546))

(assert (=> bs!1151456 m!5755546))

(declare-fun m!5755834 () Bool)

(assert (=> bs!1151456 m!5755834))

(declare-fun m!5755836 () Bool)

(assert (=> bs!1151456 m!5755836))

(assert (=> bs!1151456 m!5755794))

(assert (=> b!4779157 d!1527728))

(declare-fun d!1527730 () Bool)

(assert (=> d!1527730 (isDefined!10047 (getValueByKey!2264 (toList!6705 lm!2709) lt!1941864))))

(declare-fun lt!1942139 () Unit!139119)

(declare-fun choose!34223 (List!54082 (_ BitVec 64)) Unit!139119)

(assert (=> d!1527730 (= lt!1942139 (choose!34223 (toList!6705 lm!2709) lt!1941864))))

(declare-fun e!2983780 () Bool)

(assert (=> d!1527730 e!2983780))

(declare-fun res!2028969 () Bool)

(assert (=> d!1527730 (=> (not res!2028969) (not e!2983780))))

(assert (=> d!1527730 (= res!2028969 (isStrictlySorted!839 (toList!6705 lm!2709)))))

(assert (=> d!1527730 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2058 (toList!6705 lm!2709) lt!1941864) lt!1942139)))

(declare-fun b!4779418 () Bool)

(assert (=> b!4779418 (= e!2983780 (containsKey!3785 (toList!6705 lm!2709) lt!1941864))))

(assert (= (and d!1527730 res!2028969) b!4779418))

(assert (=> d!1527730 m!5755480))

(assert (=> d!1527730 m!5755480))

(assert (=> d!1527730 m!5755532))

(declare-fun m!5755838 () Bool)

(assert (=> d!1527730 m!5755838))

(assert (=> d!1527730 m!5755450))

(assert (=> b!4779418 m!5755528))

(assert (=> b!4779128 d!1527730))

(declare-fun d!1527732 () Bool)

(declare-fun isEmpty!29342 (Option!12903) Bool)

(assert (=> d!1527732 (= (isDefined!10047 (getValueByKey!2264 (toList!6705 lm!2709) lt!1941864)) (not (isEmpty!29342 (getValueByKey!2264 (toList!6705 lm!2709) lt!1941864))))))

(declare-fun bs!1151457 () Bool)

(assert (= bs!1151457 d!1527732))

(assert (=> bs!1151457 m!5755480))

(declare-fun m!5755840 () Bool)

(assert (=> bs!1151457 m!5755840))

(assert (=> b!4779128 d!1527732))

(assert (=> b!4779128 d!1527682))

(assert (=> b!4779156 d!1527686))

(declare-fun d!1527734 () Bool)

(declare-fun res!2028970 () Bool)

(declare-fun e!2983781 () Bool)

(assert (=> d!1527734 (=> res!2028970 e!2983781)))

(assert (=> d!1527734 (= res!2028970 (not (is-Cons!53957 (_2!31505 (h!60374 (toList!6705 lm!2709))))))))

(assert (=> d!1527734 (= (noDuplicateKeys!2286 (_2!31505 (h!60374 (toList!6705 lm!2709)))) e!2983781)))

(declare-fun b!4779419 () Bool)

(declare-fun e!2983782 () Bool)

(assert (=> b!4779419 (= e!2983781 e!2983782)))

(declare-fun res!2028971 () Bool)

(assert (=> b!4779419 (=> (not res!2028971) (not e!2983782))))

(assert (=> b!4779419 (= res!2028971 (not (containsKey!3783 (t!361531 (_2!31505 (h!60374 (toList!6705 lm!2709)))) (_1!31504 (h!60373 (_2!31505 (h!60374 (toList!6705 lm!2709))))))))))

(declare-fun b!4779420 () Bool)

(assert (=> b!4779420 (= e!2983782 (noDuplicateKeys!2286 (t!361531 (_2!31505 (h!60374 (toList!6705 lm!2709))))))))

(assert (= (and d!1527734 (not res!2028970)) b!4779419))

(assert (= (and b!4779419 res!2028971) b!4779420))

(declare-fun m!5755842 () Bool)

(assert (=> b!4779419 m!5755842))

(declare-fun m!5755844 () Bool)

(assert (=> b!4779420 m!5755844))

(assert (=> bs!1151408 d!1527734))

(declare-fun d!1527736 () Bool)

(declare-fun noDuplicatedKeys!417 (List!54081) Bool)

(assert (=> d!1527736 (= (invariantList!1688 (toList!6706 lt!1941922)) (noDuplicatedKeys!417 (toList!6706 lt!1941922)))))

(declare-fun bs!1151458 () Bool)

(assert (= bs!1151458 d!1527736))

(declare-fun m!5755846 () Bool)

(assert (=> bs!1151458 m!5755846))

(assert (=> d!1527578 d!1527736))

(declare-fun d!1527738 () Bool)

(declare-fun res!2028972 () Bool)

(declare-fun e!2983783 () Bool)

(assert (=> d!1527738 (=> res!2028972 e!2983783)))

(assert (=> d!1527738 (= res!2028972 (is-Nil!53958 (toList!6705 lm!2709)))))

(assert (=> d!1527738 (= (forall!12093 (toList!6705 lm!2709) lambda!227615) e!2983783)))

(declare-fun b!4779421 () Bool)

(declare-fun e!2983784 () Bool)

(assert (=> b!4779421 (= e!2983783 e!2983784)))

(declare-fun res!2028973 () Bool)

(assert (=> b!4779421 (=> (not res!2028973) (not e!2983784))))

(assert (=> b!4779421 (= res!2028973 (dynLambda!22006 lambda!227615 (h!60374 (toList!6705 lm!2709))))))

(declare-fun b!4779422 () Bool)

(assert (=> b!4779422 (= e!2983784 (forall!12093 (t!361532 (toList!6705 lm!2709)) lambda!227615))))

(assert (= (and d!1527738 (not res!2028972)) b!4779421))

(assert (= (and b!4779421 res!2028973) b!4779422))

(declare-fun b_lambda!185403 () Bool)

(assert (=> (not b_lambda!185403) (not b!4779421)))

(declare-fun m!5755848 () Bool)

(assert (=> b!4779421 m!5755848))

(declare-fun m!5755850 () Bool)

(assert (=> b!4779422 m!5755850))

(assert (=> d!1527578 d!1527738))

(declare-fun d!1527740 () Bool)

(declare-fun lt!1942142 () Bool)

(declare-fun content!9633 (List!54081) (Set tuple2!56420))

(assert (=> d!1527740 (= lt!1942142 (set.member (get!18328 lt!1941913) (content!9633 lt!1941865)))))

(declare-fun e!2983790 () Bool)

(assert (=> d!1527740 (= lt!1942142 e!2983790)))

(declare-fun res!2028979 () Bool)

(assert (=> d!1527740 (=> (not res!2028979) (not e!2983790))))

(assert (=> d!1527740 (= res!2028979 (is-Cons!53957 lt!1941865))))

(assert (=> d!1527740 (= (contains!17473 lt!1941865 (get!18328 lt!1941913)) lt!1942142)))

(declare-fun b!4779427 () Bool)

(declare-fun e!2983789 () Bool)

(assert (=> b!4779427 (= e!2983790 e!2983789)))

(declare-fun res!2028978 () Bool)

(assert (=> b!4779427 (=> res!2028978 e!2983789)))

(assert (=> b!4779427 (= res!2028978 (= (h!60373 lt!1941865) (get!18328 lt!1941913)))))

(declare-fun b!4779428 () Bool)

(assert (=> b!4779428 (= e!2983789 (contains!17473 (t!361531 lt!1941865) (get!18328 lt!1941913)))))

(assert (= (and d!1527740 res!2028979) b!4779427))

(assert (= (and b!4779427 (not res!2028978)) b!4779428))

(declare-fun m!5755852 () Bool)

(assert (=> d!1527740 m!5755852))

(assert (=> d!1527740 m!5755460))

(declare-fun m!5755854 () Bool)

(assert (=> d!1527740 m!5755854))

(assert (=> b!4779428 m!5755460))

(declare-fun m!5755856 () Bool)

(assert (=> b!4779428 m!5755856))

(assert (=> b!4779075 d!1527740))

(declare-fun d!1527742 () Bool)

(assert (=> d!1527742 (= (get!18328 lt!1941913) (v!48083 lt!1941913))))

(assert (=> b!4779075 d!1527742))

(declare-fun b!4779430 () Bool)

(declare-fun e!2983791 () Option!12903)

(declare-fun e!2983792 () Option!12903)

(assert (=> b!4779430 (= e!2983791 e!2983792)))

(declare-fun c!814814 () Bool)

(assert (=> b!4779430 (= c!814814 (and (is-Cons!53958 (toList!6705 lm!2709)) (not (= (_1!31505 (h!60374 (toList!6705 lm!2709))) lt!1941996))))))

(declare-fun b!4779429 () Bool)

(assert (=> b!4779429 (= e!2983791 (Some!12902 (_2!31505 (h!60374 (toList!6705 lm!2709)))))))

(declare-fun b!4779431 () Bool)

(assert (=> b!4779431 (= e!2983792 (getValueByKey!2264 (t!361532 (toList!6705 lm!2709)) lt!1941996))))

(declare-fun b!4779432 () Bool)

(assert (=> b!4779432 (= e!2983792 None!12902)))

(declare-fun d!1527744 () Bool)

(declare-fun c!814813 () Bool)

(assert (=> d!1527744 (= c!814813 (and (is-Cons!53958 (toList!6705 lm!2709)) (= (_1!31505 (h!60374 (toList!6705 lm!2709))) lt!1941996)))))

(assert (=> d!1527744 (= (getValueByKey!2264 (toList!6705 lm!2709) lt!1941996) e!2983791)))

(assert (= (and d!1527744 c!814813) b!4779429))

(assert (= (and d!1527744 (not c!814813)) b!4779430))

(assert (= (and b!4779430 c!814814) b!4779431))

(assert (= (and b!4779430 (not c!814814)) b!4779432))

(declare-fun m!5755858 () Bool)

(assert (=> b!4779431 m!5755858))

(assert (=> b!4779178 d!1527744))

(declare-fun d!1527746 () Bool)

(declare-fun res!2028984 () Bool)

(declare-fun e!2983797 () Bool)

(assert (=> d!1527746 (=> res!2028984 e!2983797)))

(assert (=> d!1527746 (= res!2028984 (or (is-Nil!53958 (toList!6705 lm!2709)) (is-Nil!53958 (t!361532 (toList!6705 lm!2709)))))))

(assert (=> d!1527746 (= (isStrictlySorted!839 (toList!6705 lm!2709)) e!2983797)))

(declare-fun b!4779437 () Bool)

(declare-fun e!2983798 () Bool)

(assert (=> b!4779437 (= e!2983797 e!2983798)))

(declare-fun res!2028985 () Bool)

(assert (=> b!4779437 (=> (not res!2028985) (not e!2983798))))

(assert (=> b!4779437 (= res!2028985 (bvslt (_1!31505 (h!60374 (toList!6705 lm!2709))) (_1!31505 (h!60374 (t!361532 (toList!6705 lm!2709))))))))

(declare-fun b!4779438 () Bool)

(assert (=> b!4779438 (= e!2983798 (isStrictlySorted!839 (t!361532 (toList!6705 lm!2709))))))

(assert (= (and d!1527746 (not res!2028984)) b!4779437))

(assert (= (and b!4779437 res!2028985) b!4779438))

(declare-fun m!5755860 () Bool)

(assert (=> b!4779438 m!5755860))

(assert (=> d!1527558 d!1527746))

(declare-fun b!4779439 () Bool)

(declare-fun res!2028986 () Bool)

(declare-fun e!2983802 () Bool)

(assert (=> b!4779439 (=> (not res!2028986) (not e!2983802))))

(declare-fun lt!1942143 () Option!12901)

(assert (=> b!4779439 (= res!2028986 (= (_1!31504 (get!18328 lt!1942143)) key!6641))))

(declare-fun b!4779440 () Bool)

(declare-fun e!2983799 () Option!12901)

(assert (=> b!4779440 (= e!2983799 (getPair!785 (t!361531 (t!361531 lt!1941865)) key!6641))))

(declare-fun b!4779441 () Bool)

(assert (=> b!4779441 (= e!2983802 (contains!17473 (t!361531 lt!1941865) (get!18328 lt!1942143)))))

(declare-fun b!4779442 () Bool)

(assert (=> b!4779442 (= e!2983799 None!12900)))

(declare-fun b!4779443 () Bool)

(declare-fun e!2983803 () Option!12901)

(assert (=> b!4779443 (= e!2983803 e!2983799)))

(declare-fun c!814816 () Bool)

(assert (=> b!4779443 (= c!814816 (is-Cons!53957 (t!361531 lt!1941865)))))

(declare-fun b!4779445 () Bool)

(declare-fun e!2983800 () Bool)

(assert (=> b!4779445 (= e!2983800 e!2983802)))

(declare-fun res!2028988 () Bool)

(assert (=> b!4779445 (=> (not res!2028988) (not e!2983802))))

(assert (=> b!4779445 (= res!2028988 (isDefined!10045 lt!1942143))))

(declare-fun b!4779446 () Bool)

(declare-fun e!2983801 () Bool)

(assert (=> b!4779446 (= e!2983801 (not (containsKey!3783 (t!361531 lt!1941865) key!6641)))))

(declare-fun d!1527748 () Bool)

(assert (=> d!1527748 e!2983800))

(declare-fun res!2028987 () Bool)

(assert (=> d!1527748 (=> res!2028987 e!2983800)))

(assert (=> d!1527748 (= res!2028987 e!2983801)))

(declare-fun res!2028989 () Bool)

(assert (=> d!1527748 (=> (not res!2028989) (not e!2983801))))

(assert (=> d!1527748 (= res!2028989 (isEmpty!29339 lt!1942143))))

(assert (=> d!1527748 (= lt!1942143 e!2983803)))

(declare-fun c!814815 () Bool)

(assert (=> d!1527748 (= c!814815 (and (is-Cons!53957 (t!361531 lt!1941865)) (= (_1!31504 (h!60373 (t!361531 lt!1941865))) key!6641)))))

(assert (=> d!1527748 (noDuplicateKeys!2286 (t!361531 lt!1941865))))

(assert (=> d!1527748 (= (getPair!785 (t!361531 lt!1941865) key!6641) lt!1942143)))

(declare-fun b!4779444 () Bool)

(assert (=> b!4779444 (= e!2983803 (Some!12900 (h!60373 (t!361531 lt!1941865))))))

(assert (= (and d!1527748 c!814815) b!4779444))

(assert (= (and d!1527748 (not c!814815)) b!4779443))

(assert (= (and b!4779443 c!814816) b!4779440))

(assert (= (and b!4779443 (not c!814816)) b!4779442))

(assert (= (and d!1527748 res!2028989) b!4779446))

(assert (= (and d!1527748 (not res!2028987)) b!4779445))

(assert (= (and b!4779445 res!2028988) b!4779439))

(assert (= (and b!4779439 res!2028986) b!4779441))

(declare-fun m!5755862 () Bool)

(assert (=> b!4779439 m!5755862))

(assert (=> b!4779441 m!5755862))

(assert (=> b!4779441 m!5755862))

(declare-fun m!5755864 () Bool)

(assert (=> b!4779441 m!5755864))

(declare-fun m!5755866 () Bool)

(assert (=> b!4779440 m!5755866))

(declare-fun m!5755868 () Bool)

(assert (=> d!1527748 m!5755868))

(assert (=> d!1527748 m!5755760))

(declare-fun m!5755870 () Bool)

(assert (=> b!4779445 m!5755870))

(assert (=> b!4779446 m!5755588))

(assert (=> b!4779074 d!1527748))

(assert (=> b!4779177 d!1527588))

(declare-fun d!1527750 () Bool)

(assert (=> d!1527750 (= (isDefined!10045 (getPair!785 (apply!12868 lm!2709 (hash!4792 hashF!1687 key!6641)) key!6641)) (not (isEmpty!29339 (getPair!785 (apply!12868 lm!2709 (hash!4792 hashF!1687 key!6641)) key!6641))))))

(declare-fun bs!1151459 () Bool)

(assert (= bs!1151459 d!1527750))

(assert (=> bs!1151459 m!5755576))

(declare-fun m!5755872 () Bool)

(assert (=> bs!1151459 m!5755872))

(assert (=> b!4779177 d!1527750))

(declare-fun lt!1942144 () Bool)

(declare-fun d!1527752 () Bool)

(assert (=> d!1527752 (= lt!1942144 (set.member (tuple2!56423 lt!1941996 lt!1941997) (content!9630 (toList!6705 lm!2709))))))

(declare-fun e!2983804 () Bool)

(assert (=> d!1527752 (= lt!1942144 e!2983804)))

(declare-fun res!2028991 () Bool)

(assert (=> d!1527752 (=> (not res!2028991) (not e!2983804))))

(assert (=> d!1527752 (= res!2028991 (is-Cons!53958 (toList!6705 lm!2709)))))

(assert (=> d!1527752 (= (contains!17467 (toList!6705 lm!2709) (tuple2!56423 lt!1941996 lt!1941997)) lt!1942144)))

(declare-fun b!4779447 () Bool)

(declare-fun e!2983805 () Bool)

(assert (=> b!4779447 (= e!2983804 e!2983805)))

(declare-fun res!2028990 () Bool)

(assert (=> b!4779447 (=> res!2028990 e!2983805)))

(assert (=> b!4779447 (= res!2028990 (= (h!60374 (toList!6705 lm!2709)) (tuple2!56423 lt!1941996 lt!1941997)))))

(declare-fun b!4779448 () Bool)

(assert (=> b!4779448 (= e!2983805 (contains!17467 (t!361532 (toList!6705 lm!2709)) (tuple2!56423 lt!1941996 lt!1941997)))))

(assert (= (and d!1527752 res!2028991) b!4779447))

(assert (= (and b!4779447 (not res!2028990)) b!4779448))

(assert (=> d!1527752 m!5755472))

(declare-fun m!5755874 () Bool)

(assert (=> d!1527752 m!5755874))

(declare-fun m!5755876 () Bool)

(assert (=> b!4779448 m!5755876))

(assert (=> b!4779177 d!1527752))

(assert (=> b!4779177 d!1527706))

(declare-fun d!1527754 () Bool)

(assert (=> d!1527754 (= (apply!12868 lm!2709 (hash!4792 hashF!1687 key!6641)) (get!18330 (getValueByKey!2264 (toList!6705 lm!2709) (hash!4792 hashF!1687 key!6641))))))

(declare-fun bs!1151460 () Bool)

(assert (= bs!1151460 d!1527754))

(assert (=> bs!1151460 m!5755380))

(assert (=> bs!1151460 m!5755808))

(assert (=> bs!1151460 m!5755808))

(declare-fun m!5755878 () Bool)

(assert (=> bs!1151460 m!5755878))

(assert (=> b!4779177 d!1527754))

(declare-fun d!1527756 () Bool)

(assert (=> d!1527756 (contains!17467 (toList!6705 lm!2709) (tuple2!56423 lt!1941996 lt!1941997))))

(declare-fun lt!1942145 () Unit!139119)

(assert (=> d!1527756 (= lt!1942145 (choose!34213 lm!2709 lt!1941996 lt!1941997))))

(assert (=> d!1527756 (contains!17468 lm!2709 lt!1941996)))

(assert (=> d!1527756 (= (lemmaGetValueImpliesTupleContained!592 lm!2709 lt!1941996 lt!1941997) lt!1942145)))

(declare-fun bs!1151461 () Bool)

(assert (= bs!1151461 d!1527756))

(assert (=> bs!1151461 m!5755578))

(declare-fun m!5755880 () Bool)

(assert (=> bs!1151461 m!5755880))

(assert (=> bs!1151461 m!5755570))

(assert (=> b!4779177 d!1527756))

(declare-fun b!4779449 () Bool)

(declare-fun res!2028992 () Bool)

(declare-fun e!2983809 () Bool)

(assert (=> b!4779449 (=> (not res!2028992) (not e!2983809))))

(declare-fun lt!1942146 () Option!12901)

(assert (=> b!4779449 (= res!2028992 (= (_1!31504 (get!18328 lt!1942146)) key!6641))))

(declare-fun e!2983806 () Option!12901)

(declare-fun b!4779450 () Bool)

(assert (=> b!4779450 (= e!2983806 (getPair!785 (t!361531 (apply!12868 lm!2709 (hash!4792 hashF!1687 key!6641))) key!6641))))

(declare-fun b!4779451 () Bool)

(assert (=> b!4779451 (= e!2983809 (contains!17473 (apply!12868 lm!2709 (hash!4792 hashF!1687 key!6641)) (get!18328 lt!1942146)))))

(declare-fun b!4779452 () Bool)

(assert (=> b!4779452 (= e!2983806 None!12900)))

(declare-fun b!4779453 () Bool)

(declare-fun e!2983810 () Option!12901)

(assert (=> b!4779453 (= e!2983810 e!2983806)))

(declare-fun c!814818 () Bool)

(assert (=> b!4779453 (= c!814818 (is-Cons!53957 (apply!12868 lm!2709 (hash!4792 hashF!1687 key!6641))))))

(declare-fun b!4779455 () Bool)

(declare-fun e!2983807 () Bool)

(assert (=> b!4779455 (= e!2983807 e!2983809)))

(declare-fun res!2028994 () Bool)

(assert (=> b!4779455 (=> (not res!2028994) (not e!2983809))))

(assert (=> b!4779455 (= res!2028994 (isDefined!10045 lt!1942146))))

(declare-fun e!2983808 () Bool)

(declare-fun b!4779456 () Bool)

(assert (=> b!4779456 (= e!2983808 (not (containsKey!3783 (apply!12868 lm!2709 (hash!4792 hashF!1687 key!6641)) key!6641)))))

(declare-fun d!1527758 () Bool)

(assert (=> d!1527758 e!2983807))

(declare-fun res!2028993 () Bool)

(assert (=> d!1527758 (=> res!2028993 e!2983807)))

(assert (=> d!1527758 (= res!2028993 e!2983808)))

(declare-fun res!2028995 () Bool)

(assert (=> d!1527758 (=> (not res!2028995) (not e!2983808))))

(assert (=> d!1527758 (= res!2028995 (isEmpty!29339 lt!1942146))))

(assert (=> d!1527758 (= lt!1942146 e!2983810)))

(declare-fun c!814817 () Bool)

(assert (=> d!1527758 (= c!814817 (and (is-Cons!53957 (apply!12868 lm!2709 (hash!4792 hashF!1687 key!6641))) (= (_1!31504 (h!60373 (apply!12868 lm!2709 (hash!4792 hashF!1687 key!6641)))) key!6641)))))

(assert (=> d!1527758 (noDuplicateKeys!2286 (apply!12868 lm!2709 (hash!4792 hashF!1687 key!6641)))))

(assert (=> d!1527758 (= (getPair!785 (apply!12868 lm!2709 (hash!4792 hashF!1687 key!6641)) key!6641) lt!1942146)))

(declare-fun b!4779454 () Bool)

(assert (=> b!4779454 (= e!2983810 (Some!12900 (h!60373 (apply!12868 lm!2709 (hash!4792 hashF!1687 key!6641)))))))

(assert (= (and d!1527758 c!814817) b!4779454))

(assert (= (and d!1527758 (not c!814817)) b!4779453))

(assert (= (and b!4779453 c!814818) b!4779450))

(assert (= (and b!4779453 (not c!814818)) b!4779452))

(assert (= (and d!1527758 res!2028995) b!4779456))

(assert (= (and d!1527758 (not res!2028993)) b!4779455))

(assert (= (and b!4779455 res!2028994) b!4779449))

(assert (= (and b!4779449 res!2028992) b!4779451))

(declare-fun m!5755882 () Bool)

(assert (=> b!4779449 m!5755882))

(assert (=> b!4779451 m!5755882))

(assert (=> b!4779451 m!5755572))

(assert (=> b!4779451 m!5755882))

(declare-fun m!5755884 () Bool)

(assert (=> b!4779451 m!5755884))

(declare-fun m!5755886 () Bool)

(assert (=> b!4779450 m!5755886))

(declare-fun m!5755888 () Bool)

(assert (=> d!1527758 m!5755888))

(assert (=> d!1527758 m!5755572))

(declare-fun m!5755890 () Bool)

(assert (=> d!1527758 m!5755890))

(declare-fun m!5755892 () Bool)

(assert (=> b!4779455 m!5755892))

(assert (=> b!4779456 m!5755572))

(declare-fun m!5755894 () Bool)

(assert (=> b!4779456 m!5755894))

(assert (=> b!4779177 d!1527758))

(declare-fun d!1527760 () Bool)

(declare-fun e!2983811 () Bool)

(assert (=> d!1527760 e!2983811))

(declare-fun res!2028996 () Bool)

(assert (=> d!1527760 (=> res!2028996 e!2983811)))

(declare-fun lt!1942148 () Bool)

(assert (=> d!1527760 (= res!2028996 (not lt!1942148))))

(declare-fun lt!1942150 () Bool)

(assert (=> d!1527760 (= lt!1942148 lt!1942150)))

(declare-fun lt!1942147 () Unit!139119)

(declare-fun e!2983812 () Unit!139119)

(assert (=> d!1527760 (= lt!1942147 e!2983812)))

(declare-fun c!814819 () Bool)

(assert (=> d!1527760 (= c!814819 lt!1942150)))

(assert (=> d!1527760 (= lt!1942150 (containsKey!3785 (toList!6705 lm!2709) lt!1941996))))

(assert (=> d!1527760 (= (contains!17468 lm!2709 lt!1941996) lt!1942148)))

(declare-fun b!4779457 () Bool)

(declare-fun lt!1942149 () Unit!139119)

(assert (=> b!4779457 (= e!2983812 lt!1942149)))

(assert (=> b!4779457 (= lt!1942149 (lemmaContainsKeyImpliesGetValueByKeyDefined!2058 (toList!6705 lm!2709) lt!1941996))))

(assert (=> b!4779457 (isDefined!10047 (getValueByKey!2264 (toList!6705 lm!2709) lt!1941996))))

(declare-fun b!4779458 () Bool)

(declare-fun Unit!139134 () Unit!139119)

(assert (=> b!4779458 (= e!2983812 Unit!139134)))

(declare-fun b!4779459 () Bool)

(assert (=> b!4779459 (= e!2983811 (isDefined!10047 (getValueByKey!2264 (toList!6705 lm!2709) lt!1941996)))))

(assert (= (and d!1527760 c!814819) b!4779457))

(assert (= (and d!1527760 (not c!814819)) b!4779458))

(assert (= (and d!1527760 (not res!2028996)) b!4779459))

(declare-fun m!5755896 () Bool)

(assert (=> d!1527760 m!5755896))

(declare-fun m!5755898 () Bool)

(assert (=> b!4779457 m!5755898))

(assert (=> b!4779457 m!5755564))

(assert (=> b!4779457 m!5755564))

(declare-fun m!5755900 () Bool)

(assert (=> b!4779457 m!5755900))

(assert (=> b!4779459 m!5755564))

(assert (=> b!4779459 m!5755564))

(assert (=> b!4779459 m!5755900))

(assert (=> b!4779177 d!1527760))

(assert (=> b!4779177 d!1527576))

(declare-fun d!1527762 () Bool)

(assert (=> d!1527762 (dynLambda!22006 lambda!227628 (tuple2!56423 (hash!4792 hashF!1687 key!6641) (apply!12868 lm!2709 (hash!4792 hashF!1687 key!6641))))))

(declare-fun lt!1942151 () Unit!139119)

(assert (=> d!1527762 (= lt!1942151 (choose!34210 (toList!6705 lm!2709) lambda!227628 (tuple2!56423 (hash!4792 hashF!1687 key!6641) (apply!12868 lm!2709 (hash!4792 hashF!1687 key!6641)))))))

(declare-fun e!2983813 () Bool)

(assert (=> d!1527762 e!2983813))

(declare-fun res!2028997 () Bool)

(assert (=> d!1527762 (=> (not res!2028997) (not e!2983813))))

(assert (=> d!1527762 (= res!2028997 (forall!12093 (toList!6705 lm!2709) lambda!227628))))

(assert (=> d!1527762 (= (forallContained!4038 (toList!6705 lm!2709) lambda!227628 (tuple2!56423 (hash!4792 hashF!1687 key!6641) (apply!12868 lm!2709 (hash!4792 hashF!1687 key!6641)))) lt!1942151)))

(declare-fun b!4779460 () Bool)

(assert (=> b!4779460 (= e!2983813 (contains!17467 (toList!6705 lm!2709) (tuple2!56423 (hash!4792 hashF!1687 key!6641) (apply!12868 lm!2709 (hash!4792 hashF!1687 key!6641)))))))

(assert (= (and d!1527762 res!2028997) b!4779460))

(declare-fun b_lambda!185405 () Bool)

(assert (=> (not b_lambda!185405) (not d!1527762)))

(declare-fun m!5755902 () Bool)

(assert (=> d!1527762 m!5755902))

(declare-fun m!5755904 () Bool)

(assert (=> d!1527762 m!5755904))

(assert (=> d!1527762 m!5755566))

(declare-fun m!5755906 () Bool)

(assert (=> b!4779460 m!5755906))

(assert (=> b!4779177 d!1527762))

(assert (=> b!4779130 d!1527732))

(assert (=> b!4779130 d!1527682))

(declare-fun bs!1151465 () Bool)

(declare-fun b!4779505 () Bool)

(assert (= bs!1151465 (and b!4779505 d!1527704)))

(declare-fun lambda!227697 () Int)

(assert (=> bs!1151465 (not (= lambda!227697 lambda!227665))))

(assert (=> b!4779505 true))

(declare-fun bs!1151466 () Bool)

(declare-fun b!4779502 () Bool)

(assert (= bs!1151466 (and b!4779502 d!1527704)))

(declare-fun lambda!227698 () Int)

(assert (=> bs!1151466 (not (= lambda!227698 lambda!227665))))

(declare-fun bs!1151467 () Bool)

(assert (= bs!1151467 (and b!4779502 b!4779505)))

(assert (=> bs!1151467 (= lambda!227698 lambda!227697)))

(assert (=> b!4779502 true))

(declare-fun lambda!227699 () Int)

(assert (=> bs!1151466 (not (= lambda!227699 lambda!227665))))

(declare-fun lt!1942201 () ListMap!6177)

(assert (=> bs!1151467 (= (= lt!1942201 (extractMap!2340 (t!361532 (toList!6705 lm!2709)))) (= lambda!227699 lambda!227697))))

(assert (=> b!4779502 (= (= lt!1942201 (extractMap!2340 (t!361532 (toList!6705 lm!2709)))) (= lambda!227699 lambda!227698))))

(assert (=> b!4779502 true))

(declare-fun bs!1151468 () Bool)

(declare-fun d!1527764 () Bool)

(assert (= bs!1151468 (and d!1527764 d!1527704)))

(declare-fun lambda!227700 () Int)

(assert (=> bs!1151468 (not (= lambda!227700 lambda!227665))))

(declare-fun bs!1151469 () Bool)

(assert (= bs!1151469 (and d!1527764 b!4779505)))

(declare-fun lt!1942216 () ListMap!6177)

(assert (=> bs!1151469 (= (= lt!1942216 (extractMap!2340 (t!361532 (toList!6705 lm!2709)))) (= lambda!227700 lambda!227697))))

(declare-fun bs!1151470 () Bool)

(assert (= bs!1151470 (and d!1527764 b!4779502)))

(assert (=> bs!1151470 (= (= lt!1942216 (extractMap!2340 (t!361532 (toList!6705 lm!2709)))) (= lambda!227700 lambda!227698))))

(assert (=> bs!1151470 (= (= lt!1942216 lt!1942201) (= lambda!227700 lambda!227699))))

(assert (=> d!1527764 true))

(declare-fun bm!334666 () Bool)

(declare-fun call!334671 () Unit!139119)

(declare-fun lemmaContainsAllItsOwnKeys!918 (ListMap!6177) Unit!139119)

(assert (=> bm!334666 (= call!334671 (lemmaContainsAllItsOwnKeys!918 (extractMap!2340 (t!361532 (toList!6705 lm!2709)))))))

(declare-fun e!2983842 () Bool)

(assert (=> d!1527764 e!2983842))

(declare-fun res!2029019 () Bool)

(assert (=> d!1527764 (=> (not res!2029019) (not e!2983842))))

(assert (=> d!1527764 (= res!2029019 (forall!12096 (_2!31505 (h!60374 (toList!6705 lm!2709))) lambda!227700))))

(declare-fun e!2983843 () ListMap!6177)

(assert (=> d!1527764 (= lt!1942216 e!2983843)))

(declare-fun c!814828 () Bool)

(assert (=> d!1527764 (= c!814828 (is-Nil!53957 (_2!31505 (h!60374 (toList!6705 lm!2709)))))))

(assert (=> d!1527764 (noDuplicateKeys!2286 (_2!31505 (h!60374 (toList!6705 lm!2709))))))

(assert (=> d!1527764 (= (addToMapMapFromBucket!1653 (_2!31505 (h!60374 (toList!6705 lm!2709))) (extractMap!2340 (t!361532 (toList!6705 lm!2709)))) lt!1942216)))

(declare-fun call!334673 () Bool)

(declare-fun bm!334667 () Bool)

(assert (=> bm!334667 (= call!334673 (forall!12096 (ite c!814828 (toList!6706 (extractMap!2340 (t!361532 (toList!6705 lm!2709)))) (_2!31505 (h!60374 (toList!6705 lm!2709)))) (ite c!814828 lambda!227697 lambda!227699)))))

(declare-fun bm!334668 () Bool)

(declare-fun call!334672 () Bool)

(assert (=> bm!334668 (= call!334672 (forall!12096 (ite c!814828 (toList!6706 (extractMap!2340 (t!361532 (toList!6705 lm!2709)))) (_2!31505 (h!60374 (toList!6705 lm!2709)))) (ite c!814828 lambda!227697 lambda!227699)))))

(assert (=> b!4779502 (= e!2983843 lt!1942201)))

(declare-fun lt!1942211 () ListMap!6177)

(declare-fun +!2462 (ListMap!6177 tuple2!56420) ListMap!6177)

(assert (=> b!4779502 (= lt!1942211 (+!2462 (extractMap!2340 (t!361532 (toList!6705 lm!2709))) (h!60373 (_2!31505 (h!60374 (toList!6705 lm!2709))))))))

(assert (=> b!4779502 (= lt!1942201 (addToMapMapFromBucket!1653 (t!361531 (_2!31505 (h!60374 (toList!6705 lm!2709)))) (+!2462 (extractMap!2340 (t!361532 (toList!6705 lm!2709))) (h!60373 (_2!31505 (h!60374 (toList!6705 lm!2709)))))))))

(declare-fun lt!1942200 () Unit!139119)

(assert (=> b!4779502 (= lt!1942200 call!334671)))

(assert (=> b!4779502 (forall!12096 (toList!6706 (extractMap!2340 (t!361532 (toList!6705 lm!2709)))) lambda!227698)))

(declare-fun lt!1942199 () Unit!139119)

(assert (=> b!4779502 (= lt!1942199 lt!1942200)))

(assert (=> b!4779502 (forall!12096 (toList!6706 lt!1942211) lambda!227699)))

(declare-fun lt!1942204 () Unit!139119)

(declare-fun Unit!139135 () Unit!139119)

(assert (=> b!4779502 (= lt!1942204 Unit!139135)))

(assert (=> b!4779502 (forall!12096 (t!361531 (_2!31505 (h!60374 (toList!6705 lm!2709)))) lambda!227699)))

(declare-fun lt!1942217 () Unit!139119)

(declare-fun Unit!139136 () Unit!139119)

(assert (=> b!4779502 (= lt!1942217 Unit!139136)))

(declare-fun lt!1942202 () Unit!139119)

(declare-fun Unit!139137 () Unit!139119)

(assert (=> b!4779502 (= lt!1942202 Unit!139137)))

(declare-fun lt!1942208 () Unit!139119)

(declare-fun forallContained!4041 (List!54081 Int tuple2!56420) Unit!139119)

(assert (=> b!4779502 (= lt!1942208 (forallContained!4041 (toList!6706 lt!1942211) lambda!227699 (h!60373 (_2!31505 (h!60374 (toList!6705 lm!2709))))))))

(assert (=> b!4779502 (contains!17469 lt!1942211 (_1!31504 (h!60373 (_2!31505 (h!60374 (toList!6705 lm!2709))))))))

(declare-fun lt!1942209 () Unit!139119)

(declare-fun Unit!139138 () Unit!139119)

(assert (=> b!4779502 (= lt!1942209 Unit!139138)))

(assert (=> b!4779502 (contains!17469 lt!1942201 (_1!31504 (h!60373 (_2!31505 (h!60374 (toList!6705 lm!2709))))))))

(declare-fun lt!1942213 () Unit!139119)

(declare-fun Unit!139139 () Unit!139119)

(assert (=> b!4779502 (= lt!1942213 Unit!139139)))

(assert (=> b!4779502 call!334673))

(declare-fun lt!1942206 () Unit!139119)

(declare-fun Unit!139140 () Unit!139119)

(assert (=> b!4779502 (= lt!1942206 Unit!139140)))

(assert (=> b!4779502 (forall!12096 (toList!6706 lt!1942211) lambda!227699)))

(declare-fun lt!1942198 () Unit!139119)

(declare-fun Unit!139141 () Unit!139119)

(assert (=> b!4779502 (= lt!1942198 Unit!139141)))

(declare-fun lt!1942197 () Unit!139119)

(declare-fun Unit!139142 () Unit!139119)

(assert (=> b!4779502 (= lt!1942197 Unit!139142)))

(declare-fun lt!1942214 () Unit!139119)

(declare-fun addForallContainsKeyThenBeforeAdding!917 (ListMap!6177 ListMap!6177 K!15522 V!15768) Unit!139119)

(assert (=> b!4779502 (= lt!1942214 (addForallContainsKeyThenBeforeAdding!917 (extractMap!2340 (t!361532 (toList!6705 lm!2709))) lt!1942201 (_1!31504 (h!60373 (_2!31505 (h!60374 (toList!6705 lm!2709))))) (_2!31504 (h!60373 (_2!31505 (h!60374 (toList!6705 lm!2709)))))))))

(assert (=> b!4779502 (forall!12096 (toList!6706 (extractMap!2340 (t!361532 (toList!6705 lm!2709)))) lambda!227699)))

(declare-fun lt!1942205 () Unit!139119)

(assert (=> b!4779502 (= lt!1942205 lt!1942214)))

(assert (=> b!4779502 (forall!12096 (toList!6706 (extractMap!2340 (t!361532 (toList!6705 lm!2709)))) lambda!227699)))

(declare-fun lt!1942215 () Unit!139119)

(declare-fun Unit!139143 () Unit!139119)

(assert (=> b!4779502 (= lt!1942215 Unit!139143)))

(declare-fun res!2029020 () Bool)

(assert (=> b!4779502 (= res!2029020 call!334672)))

(declare-fun e!2983841 () Bool)

(assert (=> b!4779502 (=> (not res!2029020) (not e!2983841))))

(assert (=> b!4779502 e!2983841))

(declare-fun lt!1942212 () Unit!139119)

(declare-fun Unit!139144 () Unit!139119)

(assert (=> b!4779502 (= lt!1942212 Unit!139144)))

(declare-fun b!4779503 () Bool)

(assert (=> b!4779503 (= e!2983842 (invariantList!1688 (toList!6706 lt!1942216)))))

(declare-fun b!4779504 () Bool)

(declare-fun res!2029021 () Bool)

(assert (=> b!4779504 (=> (not res!2029021) (not e!2983842))))

(assert (=> b!4779504 (= res!2029021 (forall!12096 (toList!6706 (extractMap!2340 (t!361532 (toList!6705 lm!2709)))) lambda!227700))))

(assert (=> b!4779505 (= e!2983843 (extractMap!2340 (t!361532 (toList!6705 lm!2709))))))

(declare-fun lt!1942203 () Unit!139119)

(assert (=> b!4779505 (= lt!1942203 call!334671)))

(assert (=> b!4779505 call!334672))

(declare-fun lt!1942207 () Unit!139119)

(assert (=> b!4779505 (= lt!1942207 lt!1942203)))

(assert (=> b!4779505 call!334673))

(declare-fun lt!1942210 () Unit!139119)

(declare-fun Unit!139145 () Unit!139119)

(assert (=> b!4779505 (= lt!1942210 Unit!139145)))

(declare-fun b!4779506 () Bool)

(assert (=> b!4779506 (= e!2983841 (forall!12096 (toList!6706 (extractMap!2340 (t!361532 (toList!6705 lm!2709)))) lambda!227699))))

(assert (= (and d!1527764 c!814828) b!4779505))

(assert (= (and d!1527764 (not c!814828)) b!4779502))

(assert (= (and b!4779502 res!2029020) b!4779506))

(assert (= (or b!4779505 b!4779502) bm!334666))

(assert (= (or b!4779505 b!4779502) bm!334667))

(assert (= (or b!4779505 b!4779502) bm!334668))

(assert (= (and d!1527764 res!2029019) b!4779504))

(assert (= (and b!4779504 res!2029021) b!4779503))

(declare-fun m!5755928 () Bool)

(assert (=> bm!334667 m!5755928))

(declare-fun m!5755930 () Bool)

(assert (=> b!4779504 m!5755930))

(declare-fun m!5755932 () Bool)

(assert (=> d!1527764 m!5755932))

(assert (=> d!1527764 m!5755606))

(declare-fun m!5755934 () Bool)

(assert (=> b!4779502 m!5755934))

(declare-fun m!5755936 () Bool)

(assert (=> b!4779502 m!5755936))

(declare-fun m!5755938 () Bool)

(assert (=> b!4779502 m!5755938))

(assert (=> b!4779502 m!5755938))

(declare-fun m!5755940 () Bool)

(assert (=> b!4779502 m!5755940))

(declare-fun m!5755942 () Bool)

(assert (=> b!4779502 m!5755942))

(assert (=> b!4779502 m!5755502))

(declare-fun m!5755944 () Bool)

(assert (=> b!4779502 m!5755944))

(declare-fun m!5755946 () Bool)

(assert (=> b!4779502 m!5755946))

(declare-fun m!5755948 () Bool)

(assert (=> b!4779502 m!5755948))

(declare-fun m!5755950 () Bool)

(assert (=> b!4779502 m!5755950))

(assert (=> b!4779502 m!5755942))

(declare-fun m!5755952 () Bool)

(assert (=> b!4779502 m!5755952))

(assert (=> b!4779502 m!5755502))

(assert (=> b!4779502 m!5755946))

(assert (=> bm!334666 m!5755502))

(declare-fun m!5755954 () Bool)

(assert (=> bm!334666 m!5755954))

(assert (=> b!4779506 m!5755938))

(declare-fun m!5755956 () Bool)

(assert (=> b!4779503 m!5755956))

(assert (=> bm!334668 m!5755928))

(assert (=> b!4779111 d!1527764))

(declare-fun bs!1151471 () Bool)

(declare-fun d!1527790 () Bool)

(assert (= bs!1151471 (and d!1527790 d!1527606)))

(declare-fun lambda!227701 () Int)

(assert (=> bs!1151471 (= lambda!227701 lambda!227628)))

(declare-fun bs!1151472 () Bool)

(assert (= bs!1151472 (and d!1527790 d!1527554)))

(assert (=> bs!1151472 (not (= lambda!227701 lambda!227606))))

(declare-fun bs!1151473 () Bool)

(assert (= bs!1151473 (and d!1527790 d!1527562)))

(assert (=> bs!1151473 (= lambda!227701 lambda!227609)))

(declare-fun bs!1151474 () Bool)

(assert (= bs!1151474 (and d!1527790 d!1527578)))

(assert (=> bs!1151474 (= lambda!227701 lambda!227615)))

(declare-fun bs!1151475 () Bool)

(assert (= bs!1151475 (and d!1527790 start!490304)))

(assert (=> bs!1151475 (= lambda!227701 lambda!227590)))

(declare-fun bs!1151476 () Bool)

(assert (= bs!1151476 (and d!1527790 d!1527588)))

(assert (=> bs!1151476 (= lambda!227701 lambda!227618)))

(declare-fun bs!1151477 () Bool)

(assert (= bs!1151477 (and d!1527790 b!4779015)))

(assert (=> bs!1151477 (not (= lambda!227701 lambda!227591))))

(declare-fun bs!1151478 () Bool)

(assert (= bs!1151478 (and d!1527790 d!1527652)))

(assert (=> bs!1151478 (= lambda!227701 lambda!227644)))

(declare-fun lt!1942218 () ListMap!6177)

(assert (=> d!1527790 (invariantList!1688 (toList!6706 lt!1942218))))

(declare-fun e!2983844 () ListMap!6177)

(assert (=> d!1527790 (= lt!1942218 e!2983844)))

(declare-fun c!814829 () Bool)

(assert (=> d!1527790 (= c!814829 (is-Cons!53958 (t!361532 (toList!6705 lm!2709))))))

(assert (=> d!1527790 (forall!12093 (t!361532 (toList!6705 lm!2709)) lambda!227701)))

(assert (=> d!1527790 (= (extractMap!2340 (t!361532 (toList!6705 lm!2709))) lt!1942218)))

(declare-fun b!4779509 () Bool)

(assert (=> b!4779509 (= e!2983844 (addToMapMapFromBucket!1653 (_2!31505 (h!60374 (t!361532 (toList!6705 lm!2709)))) (extractMap!2340 (t!361532 (t!361532 (toList!6705 lm!2709))))))))

(declare-fun b!4779510 () Bool)

(assert (=> b!4779510 (= e!2983844 (ListMap!6178 Nil!53957))))

(assert (= (and d!1527790 c!814829) b!4779509))

(assert (= (and d!1527790 (not c!814829)) b!4779510))

(declare-fun m!5755958 () Bool)

(assert (=> d!1527790 m!5755958))

(declare-fun m!5755960 () Bool)

(assert (=> d!1527790 m!5755960))

(declare-fun m!5755962 () Bool)

(assert (=> b!4779509 m!5755962))

(assert (=> b!4779509 m!5755962))

(declare-fun m!5755964 () Bool)

(assert (=> b!4779509 m!5755964))

(assert (=> b!4779111 d!1527790))

(assert (=> b!4779073 d!1527742))

(assert (=> b!4779176 d!1527602))

(assert (=> b!4779176 d!1527578))

(declare-fun e!2983847 () Bool)

(declare-fun b!4779515 () Bool)

(declare-fun tp!1357337 () Bool)

(assert (=> b!4779515 (= e!2983847 (and tp_is_empty!33153 tp_is_empty!33155 tp!1357337))))

(assert (=> b!4779202 (= tp!1357327 e!2983847)))

(assert (= (and b!4779202 (is-Cons!53957 (_2!31505 (h!60374 (toList!6705 lm!2709))))) b!4779515))

(declare-fun b!4779516 () Bool)

(declare-fun e!2983848 () Bool)

(declare-fun tp!1357338 () Bool)

(declare-fun tp!1357339 () Bool)

(assert (=> b!4779516 (= e!2983848 (and tp!1357338 tp!1357339))))

(assert (=> b!4779202 (= tp!1357328 e!2983848)))

(assert (= (and b!4779202 (is-Cons!53958 (t!361532 (toList!6705 lm!2709)))) b!4779516))

(declare-fun b_lambda!185413 () Bool)

(assert (= b_lambda!185391 (or b!4779015 b_lambda!185413)))

(assert (=> b!4779299 d!1527624))

(declare-fun b_lambda!185415 () Bool)

(assert (= b_lambda!185397 (or d!1527554 b_lambda!185415)))

(declare-fun bs!1151479 () Bool)

(declare-fun d!1527792 () Bool)

(assert (= bs!1151479 (and d!1527792 d!1527554)))

(assert (=> bs!1151479 (= (dynLambda!22006 lambda!227606 (h!60374 (toList!6705 lm!2709))) (allKeysSameHash!1935 (_2!31505 (h!60374 (toList!6705 lm!2709))) (_1!31505 (h!60374 (toList!6705 lm!2709))) hashF!1687))))

(assert (=> bs!1151479 m!5755604))

(assert (=> b!4779403 d!1527792))

(declare-fun b_lambda!185417 () Bool)

(assert (= b_lambda!185405 (or d!1527606 b_lambda!185417)))

(declare-fun bs!1151480 () Bool)

(declare-fun d!1527794 () Bool)

(assert (= bs!1151480 (and d!1527794 d!1527606)))

(assert (=> bs!1151480 (= (dynLambda!22006 lambda!227628 (tuple2!56423 (hash!4792 hashF!1687 key!6641) (apply!12868 lm!2709 (hash!4792 hashF!1687 key!6641)))) (noDuplicateKeys!2286 (_2!31505 (tuple2!56423 (hash!4792 hashF!1687 key!6641) (apply!12868 lm!2709 (hash!4792 hashF!1687 key!6641))))))))

(declare-fun m!5755966 () Bool)

(assert (=> bs!1151480 m!5755966))

(assert (=> d!1527762 d!1527794))

(declare-fun b_lambda!185419 () Bool)

(assert (= b_lambda!185395 (or d!1527588 b_lambda!185419)))

(declare-fun bs!1151481 () Bool)

(declare-fun d!1527796 () Bool)

(assert (= bs!1151481 (and d!1527796 d!1527588)))

(assert (=> bs!1151481 (= (dynLambda!22006 lambda!227618 (h!60374 (toList!6705 lm!2709))) (noDuplicateKeys!2286 (_2!31505 (h!60374 (toList!6705 lm!2709)))))))

(assert (=> bs!1151481 m!5755606))

(assert (=> b!4779401 d!1527796))

(declare-fun b_lambda!185421 () Bool)

(assert (= b_lambda!185403 (or d!1527578 b_lambda!185421)))

(declare-fun bs!1151482 () Bool)

(declare-fun d!1527798 () Bool)

(assert (= bs!1151482 (and d!1527798 d!1527578)))

(assert (=> bs!1151482 (= (dynLambda!22006 lambda!227615 (h!60374 (toList!6705 lm!2709))) (noDuplicateKeys!2286 (_2!31505 (h!60374 (toList!6705 lm!2709)))))))

(assert (=> bs!1151482 m!5755606))

(assert (=> b!4779421 d!1527798))

(declare-fun b_lambda!185423 () Bool)

(assert (= b_lambda!185401 (or start!490304 b_lambda!185423)))

(assert (=> d!1527724 d!1527622))

(declare-fun b_lambda!185425 () Bool)

(assert (= b_lambda!185387 (or d!1527606 b_lambda!185425)))

(declare-fun bs!1151483 () Bool)

(declare-fun d!1527800 () Bool)

(assert (= bs!1151483 (and d!1527800 d!1527606)))

(assert (=> bs!1151483 (= (dynLambda!22006 lambda!227628 (h!60374 (toList!6705 lm!2709))) (noDuplicateKeys!2286 (_2!31505 (h!60374 (toList!6705 lm!2709)))))))

(assert (=> bs!1151483 m!5755606))

(assert (=> b!4779285 d!1527800))

(declare-fun b_lambda!185427 () Bool)

(assert (= b_lambda!185389 (or b!4779015 b_lambda!185427)))

(assert (=> d!1527664 d!1527624))

(declare-fun b_lambda!185429 () Bool)

(assert (= b_lambda!185393 (or start!490304 b_lambda!185429)))

(declare-fun bs!1151484 () Bool)

(declare-fun d!1527802 () Bool)

(assert (= bs!1151484 (and d!1527802 start!490304)))

(assert (=> bs!1151484 (= (dynLambda!22006 lambda!227590 (h!60374 (t!361532 (toList!6705 lm!2709)))) (noDuplicateKeys!2286 (_2!31505 (h!60374 (t!361532 (toList!6705 lm!2709))))))))

(declare-fun m!5755968 () Bool)

(assert (=> bs!1151484 m!5755968))

(assert (=> b!4779361 d!1527802))

(declare-fun b_lambda!185431 () Bool)

(assert (= b_lambda!185399 (or d!1527562 b_lambda!185431)))

(declare-fun bs!1151485 () Bool)

(declare-fun d!1527804 () Bool)

(assert (= bs!1151485 (and d!1527804 d!1527562)))

(assert (=> bs!1151485 (= (dynLambda!22006 lambda!227609 (h!60374 (toList!6705 lm!2709))) (noDuplicateKeys!2286 (_2!31505 (h!60374 (toList!6705 lm!2709)))))))

(assert (=> bs!1151485 m!5755606))

(assert (=> b!4779408 d!1527804))

(push 1)

(assert (not b!4779428))

(assert (not b!4779348))

(assert (not b!4779502))

(assert (not b_lambda!185415))

(assert (not d!1527652))

(assert (not b!4779457))

(assert (not b!4779315))

(assert (not b!4779402))

(assert (not b!4779503))

(assert (not b!4779446))

(assert tp_is_empty!33155)

(assert (not d!1527764))

(assert (not d!1527716))

(assert (not b!4779385))

(assert (not d!1527700))

(assert (not bs!1151479))

(assert (not b!4779440))

(assert (not d!1527686))

(assert (not b_lambda!185431))

(assert (not d!1527758))

(assert (not d!1527756))

(assert (not d!1527736))

(assert (not bm!334667))

(assert (not d!1527748))

(assert (not b!4779359))

(assert (not b!4779388))

(assert (not b!4779387))

(assert (not b!4779409))

(assert (not b!4779286))

(assert (not b!4779335))

(assert (not b!4779420))

(assert (not bs!1151485))

(assert (not d!1527730))

(assert (not b!4779441))

(assert (not b!4779448))

(assert (not b_lambda!185377))

(assert (not b!4779418))

(assert (not b!4779445))

(assert (not b!4779290))

(assert (not d!1527692))

(assert (not b!4779506))

(assert (not d!1527670))

(assert (not d!1527654))

(assert (not b!4779400))

(assert (not d!1527732))

(assert (not bs!1151484))

(assert (not b!4779407))

(assert (not b!4779344))

(assert (not bs!1151481))

(assert (not b!4779431))

(assert (not b!4779450))

(assert (not b!4779386))

(assert (not b!4779364))

(assert (not b_lambda!185373))

(assert (not b_lambda!185421))

(assert (not b_lambda!185413))

(assert (not b!4779504))

(assert (not b!4779308))

(assert (not b!4779309))

(assert (not bm!334668))

(assert (not b!4779438))

(assert (not b!4779516))

(assert (not d!1527696))

(assert (not d!1527790))

(assert (not d!1527728))

(assert (not b!4779515))

(assert (not b_lambda!185423))

(assert (not b!4779362))

(assert (not b_lambda!185427))

(assert (not b_lambda!185375))

(assert (not b!4779415))

(assert (not b!4779298))

(assert (not b!4779321))

(assert (not d!1527684))

(assert (not d!1527726))

(assert tp_is_empty!33153)

(assert (not b!4779459))

(assert (not b!4779296))

(assert (not d!1527704))

(assert (not b!4779404))

(assert (not d!1527760))

(assert (not b!4779398))

(assert (not d!1527706))

(assert (not b!4779347))

(assert (not d!1527754))

(assert (not b!4779449))

(assert (not bs!1151483))

(assert (not b!4779455))

(assert (not b!4779456))

(assert (not d!1527740))

(assert (not bs!1151480))

(assert (not d!1527678))

(assert (not d!1527708))

(assert (not d!1527762))

(assert (not b!4779439))

(assert (not b!4779451))

(assert (not d!1527752))

(assert (not b!4779509))

(assert (not b!4779342))

(assert (not b_lambda!185425))

(assert (not b_lambda!185419))

(assert (not b!4779422))

(assert (not d!1527662))

(assert (not b_lambda!185429))

(assert (not b!4779288))

(assert (not b!4779419))

(assert (not d!1527750))

(assert (not b!4779460))

(assert (not b!4779300))

(assert (not bm!334666))

(assert (not b!4779302))

(assert (not b!4779390))

(assert (not d!1527668))

(assert (not d!1527702))

(assert (not b!4779332))

(assert (not b_lambda!185417))

(assert (not d!1527718))

(assert (not b!4779405))

(assert (not b!4779343))

(assert (not bs!1151482))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

