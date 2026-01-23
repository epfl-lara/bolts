; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!490216 () Bool)

(assert start!490216)

(declare-fun b!4778655 () Bool)

(declare-fun e!2983285 () Bool)

(declare-fun e!2983286 () Bool)

(assert (=> b!4778655 (= e!2983285 (not e!2983286))))

(declare-fun res!2028507 () Bool)

(assert (=> b!4778655 (=> res!2028507 e!2983286)))

(declare-datatypes ((K!15507 0))(
  ( (K!15508 (val!20711 Int)) )
))
(declare-datatypes ((V!15753 0))(
  ( (V!15754 (val!20712 Int)) )
))
(declare-datatypes ((tuple2!56396 0))(
  ( (tuple2!56397 (_1!31492 K!15507) (_2!31492 V!15753)) )
))
(declare-datatypes ((Option!12892 0))(
  ( (None!12891) (Some!12891 (v!48070 tuple2!56396)) )
))
(declare-fun lt!1941510 () Option!12892)

(declare-fun v!11584 () V!15753)

(declare-fun get!18318 (Option!12892) tuple2!56396)

(assert (=> b!4778655 (= res!2028507 (not (= (_2!31492 (get!18318 lt!1941510)) v!11584)))))

(declare-fun isDefined!10036 (Option!12892) Bool)

(assert (=> b!4778655 (isDefined!10036 lt!1941510)))

(declare-datatypes ((List!54067 0))(
  ( (Nil!53943) (Cons!53943 (h!60359 tuple2!56396) (t!361517 List!54067)) )
))
(declare-fun lt!1941511 () List!54067)

(declare-fun key!6641 () K!15507)

(declare-fun getPair!779 (List!54067 K!15507) Option!12892)

(assert (=> b!4778655 (= lt!1941510 (getPair!779 lt!1941511 key!6641))))

(declare-datatypes ((tuple2!56398 0))(
  ( (tuple2!56399 (_1!31493 (_ BitVec 64)) (_2!31493 List!54067)) )
))
(declare-fun lt!1941506 () tuple2!56398)

(declare-datatypes ((Unit!139102 0))(
  ( (Unit!139103) )
))
(declare-fun lt!1941502 () Unit!139102)

(declare-fun lambda!227490 () Int)

(declare-datatypes ((List!54068 0))(
  ( (Nil!53944) (Cons!53944 (h!60360 tuple2!56398) (t!361518 List!54068)) )
))
(declare-datatypes ((ListLongMap!5115 0))(
  ( (ListLongMap!5116 (toList!6693 List!54068)) )
))
(declare-fun lm!2709 () ListLongMap!5115)

(declare-fun forallContained!4032 (List!54068 Int tuple2!56398) Unit!139102)

(assert (=> b!4778655 (= lt!1941502 (forallContained!4032 (toList!6693 lm!2709) lambda!227490 lt!1941506))))

(declare-fun lt!1941509 () Unit!139102)

(declare-datatypes ((Hashable!6807 0))(
  ( (HashableExt!6806 (__x!32830 Int)) )
))
(declare-fun hashF!1687 () Hashable!6807)

(declare-fun lemmaInGenMapThenGetPairDefined!553 (ListLongMap!5115 K!15507 Hashable!6807) Unit!139102)

(assert (=> b!4778655 (= lt!1941509 (lemmaInGenMapThenGetPairDefined!553 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1941503 () Unit!139102)

(assert (=> b!4778655 (= lt!1941503 (forallContained!4032 (toList!6693 lm!2709) lambda!227490 lt!1941506))))

(declare-fun contains!17445 (List!54068 tuple2!56398) Bool)

(assert (=> b!4778655 (contains!17445 (toList!6693 lm!2709) lt!1941506)))

(declare-fun lt!1941508 () (_ BitVec 64))

(assert (=> b!4778655 (= lt!1941506 (tuple2!56399 lt!1941508 lt!1941511))))

(declare-fun lt!1941505 () Unit!139102)

(declare-fun lemmaGetValueImpliesTupleContained!586 (ListLongMap!5115 (_ BitVec 64) List!54067) Unit!139102)

(assert (=> b!4778655 (= lt!1941505 (lemmaGetValueImpliesTupleContained!586 lm!2709 lt!1941508 lt!1941511))))

(declare-fun apply!12862 (ListLongMap!5115 (_ BitVec 64)) List!54067)

(assert (=> b!4778655 (= lt!1941511 (apply!12862 lm!2709 lt!1941508))))

(declare-fun contains!17446 (ListLongMap!5115 (_ BitVec 64)) Bool)

(assert (=> b!4778655 (contains!17446 lm!2709 lt!1941508)))

(declare-fun hash!4785 (Hashable!6807 K!15507) (_ BitVec 64))

(assert (=> b!4778655 (= lt!1941508 (hash!4785 hashF!1687 key!6641))))

(declare-fun lt!1941507 () Unit!139102)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1003 (ListLongMap!5115 K!15507 Hashable!6807) Unit!139102)

(assert (=> b!4778655 (= lt!1941507 (lemmaInGenMapThenLongMapContainsHash!1003 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6165 0))(
  ( (ListMap!6166 (toList!6694 List!54067)) )
))
(declare-fun contains!17447 (ListMap!6165 K!15507) Bool)

(declare-fun extractMap!2334 (List!54068) ListMap!6165)

(assert (=> b!4778655 (contains!17447 (extractMap!2334 (toList!6693 lm!2709)) key!6641)))

(declare-fun lt!1941504 () Unit!139102)

(declare-fun lemmaListContainsThenExtractedMapContains!655 (ListLongMap!5115 K!15507 Hashable!6807) Unit!139102)

(assert (=> b!4778655 (= lt!1941504 (lemmaListContainsThenExtractedMapContains!655 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4778656 () Bool)

(declare-fun e!2983287 () Bool)

(declare-fun tp!1357289 () Bool)

(assert (=> b!4778656 (= e!2983287 tp!1357289)))

(declare-fun res!2028510 () Bool)

(assert (=> start!490216 (=> (not res!2028510) (not e!2983285))))

(declare-fun forall!12087 (List!54068 Int) Bool)

(assert (=> start!490216 (= res!2028510 (forall!12087 (toList!6693 lm!2709) lambda!227490))))

(assert (=> start!490216 e!2983285))

(declare-fun inv!69534 (ListLongMap!5115) Bool)

(assert (=> start!490216 (and (inv!69534 lm!2709) e!2983287)))

(assert (=> start!490216 true))

(declare-fun tp_is_empty!33129 () Bool)

(assert (=> start!490216 tp_is_empty!33129))

(declare-fun tp_is_empty!33131 () Bool)

(assert (=> start!490216 tp_is_empty!33131))

(declare-fun b!4778657 () Bool)

(declare-fun res!2028509 () Bool)

(assert (=> b!4778657 (=> (not res!2028509) (not e!2983285))))

(declare-fun allKeysSameHashInMap!2212 (ListLongMap!5115 Hashable!6807) Bool)

(assert (=> b!4778657 (= res!2028509 (allKeysSameHashInMap!2212 lm!2709 hashF!1687))))

(declare-fun b!4778658 () Bool)

(declare-fun size!36359 (List!54068) Int)

(assert (=> b!4778658 (= e!2983286 (>= (size!36359 (toList!6693 lm!2709)) 0))))

(declare-fun b!4778659 () Bool)

(declare-fun res!2028508 () Bool)

(assert (=> b!4778659 (=> (not res!2028508) (not e!2983285))))

(declare-fun containsKeyBiggerList!463 (List!54068 K!15507) Bool)

(assert (=> b!4778659 (= res!2028508 (containsKeyBiggerList!463 (toList!6693 lm!2709) key!6641))))

(assert (= (and start!490216 res!2028510) b!4778657))

(assert (= (and b!4778657 res!2028509) b!4778659))

(assert (= (and b!4778659 res!2028508) b!4778655))

(assert (= (and b!4778655 (not res!2028507)) b!4778658))

(assert (= start!490216 b!4778656))

(declare-fun m!5754888 () Bool)

(assert (=> b!4778657 m!5754888))

(declare-fun m!5754890 () Bool)

(assert (=> b!4778659 m!5754890))

(declare-fun m!5754892 () Bool)

(assert (=> start!490216 m!5754892))

(declare-fun m!5754894 () Bool)

(assert (=> start!490216 m!5754894))

(declare-fun m!5754896 () Bool)

(assert (=> b!4778655 m!5754896))

(declare-fun m!5754898 () Bool)

(assert (=> b!4778655 m!5754898))

(declare-fun m!5754900 () Bool)

(assert (=> b!4778655 m!5754900))

(declare-fun m!5754902 () Bool)

(assert (=> b!4778655 m!5754902))

(declare-fun m!5754904 () Bool)

(assert (=> b!4778655 m!5754904))

(declare-fun m!5754906 () Bool)

(assert (=> b!4778655 m!5754906))

(declare-fun m!5754908 () Bool)

(assert (=> b!4778655 m!5754908))

(declare-fun m!5754910 () Bool)

(assert (=> b!4778655 m!5754910))

(declare-fun m!5754912 () Bool)

(assert (=> b!4778655 m!5754912))

(declare-fun m!5754914 () Bool)

(assert (=> b!4778655 m!5754914))

(declare-fun m!5754916 () Bool)

(assert (=> b!4778655 m!5754916))

(declare-fun m!5754918 () Bool)

(assert (=> b!4778655 m!5754918))

(assert (=> b!4778655 m!5754902))

(declare-fun m!5754920 () Bool)

(assert (=> b!4778655 m!5754920))

(declare-fun m!5754922 () Bool)

(assert (=> b!4778655 m!5754922))

(assert (=> b!4778655 m!5754912))

(declare-fun m!5754924 () Bool)

(assert (=> b!4778658 m!5754924))

(push 1)

(assert tp_is_empty!33131)

(assert (not b!4778659))

(assert (not b!4778657))

(assert tp_is_empty!33129)

(assert (not b!4778656))

(assert (not b!4778658))

(assert (not start!490216))

(assert (not b!4778655))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1527467 () Bool)

(assert (=> d!1527467 (contains!17445 (toList!6693 lm!2709) (tuple2!56399 lt!1941508 lt!1941511))))

(declare-fun lt!1941544 () Unit!139102)

(declare-fun choose!34201 (ListLongMap!5115 (_ BitVec 64) List!54067) Unit!139102)

(assert (=> d!1527467 (= lt!1941544 (choose!34201 lm!2709 lt!1941508 lt!1941511))))

(assert (=> d!1527467 (contains!17446 lm!2709 lt!1941508)))

(assert (=> d!1527467 (= (lemmaGetValueImpliesTupleContained!586 lm!2709 lt!1941508 lt!1941511) lt!1941544)))

(declare-fun bs!1151306 () Bool)

(assert (= bs!1151306 d!1527467))

(declare-fun m!5754964 () Bool)

(assert (=> bs!1151306 m!5754964))

(declare-fun m!5754966 () Bool)

(assert (=> bs!1151306 m!5754966))

(assert (=> bs!1151306 m!5754904))

(assert (=> b!4778655 d!1527467))

(declare-fun b!4778703 () Bool)

(declare-fun e!2983323 () Bool)

(declare-datatypes ((List!54071 0))(
  ( (Nil!53947) (Cons!53947 (h!60363 K!15507) (t!361521 List!54071)) )
))
(declare-fun contains!17451 (List!54071 K!15507) Bool)

(declare-fun keys!19637 (ListMap!6165) List!54071)

(assert (=> b!4778703 (= e!2983323 (contains!17451 (keys!19637 (extractMap!2334 (toList!6693 lm!2709))) key!6641))))

(declare-fun bm!334650 () Bool)

(declare-fun call!334655 () Bool)

(declare-fun e!2983319 () List!54071)

(assert (=> bm!334650 (= call!334655 (contains!17451 e!2983319 key!6641))))

(declare-fun c!814706 () Bool)

(declare-fun c!814705 () Bool)

(assert (=> bm!334650 (= c!814706 c!814705)))

(declare-fun b!4778704 () Bool)

(assert (=> b!4778704 (= e!2983319 (keys!19637 (extractMap!2334 (toList!6693 lm!2709))))))

(declare-fun b!4778705 () Bool)

(declare-fun e!2983321 () Unit!139102)

(declare-fun e!2983320 () Unit!139102)

(assert (=> b!4778705 (= e!2983321 e!2983320)))

(declare-fun c!814704 () Bool)

(assert (=> b!4778705 (= c!814704 call!334655)))

(declare-fun b!4778706 () Bool)

(declare-fun e!2983318 () Bool)

(assert (=> b!4778706 (= e!2983318 (not (contains!17451 (keys!19637 (extractMap!2334 (toList!6693 lm!2709))) key!6641)))))

(declare-fun d!1527469 () Bool)

(declare-fun e!2983322 () Bool)

(assert (=> d!1527469 e!2983322))

(declare-fun res!2028539 () Bool)

(assert (=> d!1527469 (=> res!2028539 e!2983322)))

(assert (=> d!1527469 (= res!2028539 e!2983318)))

(declare-fun res!2028540 () Bool)

(assert (=> d!1527469 (=> (not res!2028540) (not e!2983318))))

(declare-fun lt!1941566 () Bool)

(assert (=> d!1527469 (= res!2028540 (not lt!1941566))))

(declare-fun lt!1941567 () Bool)

(assert (=> d!1527469 (= lt!1941566 lt!1941567)))

(declare-fun lt!1941563 () Unit!139102)

(assert (=> d!1527469 (= lt!1941563 e!2983321)))

(assert (=> d!1527469 (= c!814705 lt!1941567)))

(declare-fun containsKey!3774 (List!54067 K!15507) Bool)

(assert (=> d!1527469 (= lt!1941567 (containsKey!3774 (toList!6694 (extractMap!2334 (toList!6693 lm!2709))) key!6641))))

(assert (=> d!1527469 (= (contains!17447 (extractMap!2334 (toList!6693 lm!2709)) key!6641) lt!1941566)))

(declare-fun b!4778707 () Bool)

(assert (=> b!4778707 (= e!2983322 e!2983323)))

(declare-fun res!2028538 () Bool)

(assert (=> b!4778707 (=> (not res!2028538) (not e!2983323))))

(declare-datatypes ((Option!12894 0))(
  ( (None!12893) (Some!12893 (v!48075 V!15753)) )
))
(declare-fun isDefined!10038 (Option!12894) Bool)

(declare-fun getValueByKey!2261 (List!54067 K!15507) Option!12894)

(assert (=> b!4778707 (= res!2028538 (isDefined!10038 (getValueByKey!2261 (toList!6694 (extractMap!2334 (toList!6693 lm!2709))) key!6641)))))

(declare-fun b!4778708 () Bool)

(declare-fun lt!1941562 () Unit!139102)

(assert (=> b!4778708 (= e!2983321 lt!1941562)))

(declare-fun lt!1941568 () Unit!139102)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2055 (List!54067 K!15507) Unit!139102)

(assert (=> b!4778708 (= lt!1941568 (lemmaContainsKeyImpliesGetValueByKeyDefined!2055 (toList!6694 (extractMap!2334 (toList!6693 lm!2709))) key!6641))))

(assert (=> b!4778708 (isDefined!10038 (getValueByKey!2261 (toList!6694 (extractMap!2334 (toList!6693 lm!2709))) key!6641))))

(declare-fun lt!1941561 () Unit!139102)

(assert (=> b!4778708 (= lt!1941561 lt!1941568)))

(declare-fun lemmaInListThenGetKeysListContains!1026 (List!54067 K!15507) Unit!139102)

(assert (=> b!4778708 (= lt!1941562 (lemmaInListThenGetKeysListContains!1026 (toList!6694 (extractMap!2334 (toList!6693 lm!2709))) key!6641))))

(assert (=> b!4778708 call!334655))

(declare-fun b!4778709 () Bool)

(assert (=> b!4778709 false))

(declare-fun lt!1941565 () Unit!139102)

(declare-fun lt!1941564 () Unit!139102)

(assert (=> b!4778709 (= lt!1941565 lt!1941564)))

(assert (=> b!4778709 (containsKey!3774 (toList!6694 (extractMap!2334 (toList!6693 lm!2709))) key!6641)))

(declare-fun lemmaInGetKeysListThenContainsKey!1030 (List!54067 K!15507) Unit!139102)

(assert (=> b!4778709 (= lt!1941564 (lemmaInGetKeysListThenContainsKey!1030 (toList!6694 (extractMap!2334 (toList!6693 lm!2709))) key!6641))))

(declare-fun Unit!139106 () Unit!139102)

(assert (=> b!4778709 (= e!2983320 Unit!139106)))

(declare-fun b!4778710 () Bool)

(declare-fun getKeysList!1031 (List!54067) List!54071)

(assert (=> b!4778710 (= e!2983319 (getKeysList!1031 (toList!6694 (extractMap!2334 (toList!6693 lm!2709)))))))

(declare-fun b!4778711 () Bool)

(declare-fun Unit!139107 () Unit!139102)

(assert (=> b!4778711 (= e!2983320 Unit!139107)))

(assert (= (and d!1527469 c!814705) b!4778708))

(assert (= (and d!1527469 (not c!814705)) b!4778705))

(assert (= (and b!4778705 c!814704) b!4778709))

(assert (= (and b!4778705 (not c!814704)) b!4778711))

(assert (= (or b!4778708 b!4778705) bm!334650))

(assert (= (and bm!334650 c!814706) b!4778710))

(assert (= (and bm!334650 (not c!814706)) b!4778704))

(assert (= (and d!1527469 res!2028540) b!4778706))

(assert (= (and d!1527469 (not res!2028539)) b!4778707))

(assert (= (and b!4778707 res!2028538) b!4778703))

(assert (=> b!4778704 m!5754912))

(declare-fun m!5754972 () Bool)

(assert (=> b!4778704 m!5754972))

(assert (=> b!4778703 m!5754912))

(assert (=> b!4778703 m!5754972))

(assert (=> b!4778703 m!5754972))

(declare-fun m!5754974 () Bool)

(assert (=> b!4778703 m!5754974))

(declare-fun m!5754976 () Bool)

(assert (=> d!1527469 m!5754976))

(assert (=> b!4778709 m!5754976))

(declare-fun m!5754978 () Bool)

(assert (=> b!4778709 m!5754978))

(declare-fun m!5754980 () Bool)

(assert (=> b!4778707 m!5754980))

(assert (=> b!4778707 m!5754980))

(declare-fun m!5754982 () Bool)

(assert (=> b!4778707 m!5754982))

(declare-fun m!5754984 () Bool)

(assert (=> b!4778708 m!5754984))

(assert (=> b!4778708 m!5754980))

(assert (=> b!4778708 m!5754980))

(assert (=> b!4778708 m!5754982))

(declare-fun m!5754986 () Bool)

(assert (=> b!4778708 m!5754986))

(declare-fun m!5754988 () Bool)

(assert (=> bm!334650 m!5754988))

(assert (=> b!4778706 m!5754912))

(assert (=> b!4778706 m!5754972))

(assert (=> b!4778706 m!5754972))

(assert (=> b!4778706 m!5754974))

(declare-fun m!5754990 () Bool)

(assert (=> b!4778710 m!5754990))

(assert (=> b!4778655 d!1527469))

(declare-fun b!4778730 () Bool)

(declare-fun e!2983338 () Option!12892)

(assert (=> b!4778730 (= e!2983338 (getPair!779 (t!361517 lt!1941511) key!6641))))

(declare-fun b!4778731 () Bool)

(assert (=> b!4778731 (= e!2983338 None!12891)))

(declare-fun b!4778732 () Bool)

(declare-fun e!2983336 () Option!12892)

(assert (=> b!4778732 (= e!2983336 (Some!12891 (h!60359 lt!1941511)))))

(declare-fun b!4778733 () Bool)

(declare-fun e!2983340 () Bool)

(declare-fun lt!1941573 () Option!12892)

(declare-fun contains!17452 (List!54067 tuple2!56396) Bool)

(assert (=> b!4778733 (= e!2983340 (contains!17452 lt!1941511 (get!18318 lt!1941573)))))

(declare-fun d!1527475 () Bool)

(declare-fun e!2983337 () Bool)

(assert (=> d!1527475 e!2983337))

(declare-fun res!2028554 () Bool)

(assert (=> d!1527475 (=> res!2028554 e!2983337)))

(declare-fun e!2983339 () Bool)

(assert (=> d!1527475 (= res!2028554 e!2983339)))

(declare-fun res!2028551 () Bool)

(assert (=> d!1527475 (=> (not res!2028551) (not e!2983339))))

(declare-fun isEmpty!29337 (Option!12892) Bool)

(assert (=> d!1527475 (= res!2028551 (isEmpty!29337 lt!1941573))))

(assert (=> d!1527475 (= lt!1941573 e!2983336)))

(declare-fun c!814711 () Bool)

(assert (=> d!1527475 (= c!814711 (and (is-Cons!53943 lt!1941511) (= (_1!31492 (h!60359 lt!1941511)) key!6641)))))

(declare-fun noDuplicateKeys!2284 (List!54067) Bool)

(assert (=> d!1527475 (noDuplicateKeys!2284 lt!1941511)))

(assert (=> d!1527475 (= (getPair!779 lt!1941511 key!6641) lt!1941573)))

(declare-fun b!4778734 () Bool)

(assert (=> b!4778734 (= e!2983336 e!2983338)))

(declare-fun c!814712 () Bool)

(assert (=> b!4778734 (= c!814712 (is-Cons!53943 lt!1941511))))

(declare-fun b!4778735 () Bool)

(assert (=> b!4778735 (= e!2983337 e!2983340)))

(declare-fun res!2028552 () Bool)

(assert (=> b!4778735 (=> (not res!2028552) (not e!2983340))))

(assert (=> b!4778735 (= res!2028552 (isDefined!10036 lt!1941573))))

(declare-fun b!4778736 () Bool)

(declare-fun res!2028553 () Bool)

(assert (=> b!4778736 (=> (not res!2028553) (not e!2983340))))

(assert (=> b!4778736 (= res!2028553 (= (_1!31492 (get!18318 lt!1941573)) key!6641))))

(declare-fun b!4778737 () Bool)

(declare-fun containsKey!3775 (List!54067 K!15507) Bool)

(assert (=> b!4778737 (= e!2983339 (not (containsKey!3775 lt!1941511 key!6641)))))

(assert (= (and d!1527475 c!814711) b!4778732))

(assert (= (and d!1527475 (not c!814711)) b!4778734))

(assert (= (and b!4778734 c!814712) b!4778730))

(assert (= (and b!4778734 (not c!814712)) b!4778731))

(assert (= (and d!1527475 res!2028551) b!4778737))

(assert (= (and d!1527475 (not res!2028554)) b!4778735))

(assert (= (and b!4778735 res!2028552) b!4778736))

(assert (= (and b!4778736 res!2028553) b!4778733))

(declare-fun m!5754994 () Bool)

(assert (=> b!4778730 m!5754994))

(declare-fun m!5754996 () Bool)

(assert (=> d!1527475 m!5754996))

(declare-fun m!5754998 () Bool)

(assert (=> d!1527475 m!5754998))

(declare-fun m!5755000 () Bool)

(assert (=> b!4778737 m!5755000))

(declare-fun m!5755002 () Bool)

(assert (=> b!4778736 m!5755002))

(declare-fun m!5755004 () Bool)

(assert (=> b!4778735 m!5755004))

(assert (=> b!4778733 m!5755002))

(assert (=> b!4778733 m!5755002))

(declare-fun m!5755006 () Bool)

(assert (=> b!4778733 m!5755006))

(assert (=> b!4778655 d!1527475))

(declare-fun bs!1151310 () Bool)

(declare-fun d!1527479 () Bool)

(assert (= bs!1151310 (and d!1527479 start!490216)))

(declare-fun lambda!227507 () Int)

(assert (=> bs!1151310 (= lambda!227507 lambda!227490)))

(declare-fun b!4778748 () Bool)

(declare-fun res!2028564 () Bool)

(declare-fun e!2983347 () Bool)

(assert (=> b!4778748 (=> (not res!2028564) (not e!2983347))))

(assert (=> b!4778748 (= res!2028564 (contains!17447 (extractMap!2334 (toList!6693 lm!2709)) key!6641))))

(declare-fun b!4778747 () Bool)

(declare-fun res!2028565 () Bool)

(assert (=> b!4778747 (=> (not res!2028565) (not e!2983347))))

(assert (=> b!4778747 (= res!2028565 (allKeysSameHashInMap!2212 lm!2709 hashF!1687))))

(declare-fun b!4778749 () Bool)

(assert (=> b!4778749 (= e!2983347 (isDefined!10036 (getPair!779 (apply!12862 lm!2709 (hash!4785 hashF!1687 key!6641)) key!6641)))))

(declare-fun lt!1941594 () Unit!139102)

(assert (=> b!4778749 (= lt!1941594 (forallContained!4032 (toList!6693 lm!2709) lambda!227507 (tuple2!56399 (hash!4785 hashF!1687 key!6641) (apply!12862 lm!2709 (hash!4785 hashF!1687 key!6641)))))))

(declare-fun lt!1941595 () Unit!139102)

(declare-fun lt!1941601 () Unit!139102)

(assert (=> b!4778749 (= lt!1941595 lt!1941601)))

(declare-fun lt!1941596 () (_ BitVec 64))

(declare-fun lt!1941597 () List!54067)

(assert (=> b!4778749 (contains!17445 (toList!6693 lm!2709) (tuple2!56399 lt!1941596 lt!1941597))))

(assert (=> b!4778749 (= lt!1941601 (lemmaGetValueImpliesTupleContained!586 lm!2709 lt!1941596 lt!1941597))))

(declare-fun e!2983346 () Bool)

(assert (=> b!4778749 e!2983346))

(declare-fun res!2028566 () Bool)

(assert (=> b!4778749 (=> (not res!2028566) (not e!2983346))))

(assert (=> b!4778749 (= res!2028566 (contains!17446 lm!2709 lt!1941596))))

(assert (=> b!4778749 (= lt!1941597 (apply!12862 lm!2709 (hash!4785 hashF!1687 key!6641)))))

(assert (=> b!4778749 (= lt!1941596 (hash!4785 hashF!1687 key!6641))))

(declare-fun lt!1941599 () Unit!139102)

(declare-fun lt!1941598 () Unit!139102)

(assert (=> b!4778749 (= lt!1941599 lt!1941598)))

(assert (=> b!4778749 (contains!17446 lm!2709 (hash!4785 hashF!1687 key!6641))))

(assert (=> b!4778749 (= lt!1941598 (lemmaInGenMapThenLongMapContainsHash!1003 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1527479 e!2983347))

(declare-fun res!2028567 () Bool)

(assert (=> d!1527479 (=> (not res!2028567) (not e!2983347))))

(assert (=> d!1527479 (= res!2028567 (forall!12087 (toList!6693 lm!2709) lambda!227507))))

(declare-fun lt!1941600 () Unit!139102)

(declare-fun choose!34202 (ListLongMap!5115 K!15507 Hashable!6807) Unit!139102)

(assert (=> d!1527479 (= lt!1941600 (choose!34202 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1527479 (forall!12087 (toList!6693 lm!2709) lambda!227507)))

(assert (=> d!1527479 (= (lemmaInGenMapThenGetPairDefined!553 lm!2709 key!6641 hashF!1687) lt!1941600)))

(declare-fun b!4778750 () Bool)

(declare-datatypes ((Option!12895 0))(
  ( (None!12894) (Some!12894 (v!48077 List!54067)) )
))
(declare-fun getValueByKey!2262 (List!54068 (_ BitVec 64)) Option!12895)

(assert (=> b!4778750 (= e!2983346 (= (getValueByKey!2262 (toList!6693 lm!2709) lt!1941596) (Some!12894 lt!1941597)))))

(assert (= (and d!1527479 res!2028567) b!4778747))

(assert (= (and b!4778747 res!2028565) b!4778748))

(assert (= (and b!4778748 res!2028564) b!4778749))

(assert (= (and b!4778749 res!2028566) b!4778750))

(declare-fun m!5755016 () Bool)

(assert (=> b!4778749 m!5755016))

(declare-fun m!5755018 () Bool)

(assert (=> b!4778749 m!5755018))

(assert (=> b!4778749 m!5754906))

(declare-fun m!5755020 () Bool)

(assert (=> b!4778749 m!5755020))

(assert (=> b!4778749 m!5754908))

(assert (=> b!4778749 m!5755018))

(declare-fun m!5755022 () Bool)

(assert (=> b!4778749 m!5755022))

(declare-fun m!5755024 () Bool)

(assert (=> b!4778749 m!5755024))

(declare-fun m!5755026 () Bool)

(assert (=> b!4778749 m!5755026))

(assert (=> b!4778749 m!5754906))

(declare-fun m!5755028 () Bool)

(assert (=> b!4778749 m!5755028))

(declare-fun m!5755030 () Bool)

(assert (=> b!4778749 m!5755030))

(assert (=> b!4778749 m!5754906))

(assert (=> b!4778749 m!5755016))

(declare-fun m!5755032 () Bool)

(assert (=> d!1527479 m!5755032))

(declare-fun m!5755034 () Bool)

(assert (=> d!1527479 m!5755034))

(assert (=> d!1527479 m!5755032))

(assert (=> b!4778747 m!5754888))

(assert (=> b!4778748 m!5754912))

(assert (=> b!4778748 m!5754912))

(assert (=> b!4778748 m!5754914))

(declare-fun m!5755036 () Bool)

(assert (=> b!4778750 m!5755036))

(assert (=> b!4778655 d!1527479))

(declare-fun bs!1151311 () Bool)

(declare-fun d!1527485 () Bool)

(assert (= bs!1151311 (and d!1527485 start!490216)))

(declare-fun lambda!227510 () Int)

(assert (=> bs!1151311 (= lambda!227510 lambda!227490)))

(declare-fun bs!1151312 () Bool)

(assert (= bs!1151312 (and d!1527485 d!1527479)))

(assert (=> bs!1151312 (= lambda!227510 lambda!227507)))

(declare-fun lt!1941607 () ListMap!6165)

(declare-fun invariantList!1687 (List!54067) Bool)

(assert (=> d!1527485 (invariantList!1687 (toList!6694 lt!1941607))))

(declare-fun e!2983365 () ListMap!6165)

(assert (=> d!1527485 (= lt!1941607 e!2983365)))

(declare-fun c!814721 () Bool)

(assert (=> d!1527485 (= c!814721 (is-Cons!53944 (toList!6693 lm!2709)))))

(assert (=> d!1527485 (forall!12087 (toList!6693 lm!2709) lambda!227510)))

(assert (=> d!1527485 (= (extractMap!2334 (toList!6693 lm!2709)) lt!1941607)))

(declare-fun b!4778779 () Bool)

(declare-fun addToMapMapFromBucket!1652 (List!54067 ListMap!6165) ListMap!6165)

(assert (=> b!4778779 (= e!2983365 (addToMapMapFromBucket!1652 (_2!31493 (h!60360 (toList!6693 lm!2709))) (extractMap!2334 (t!361518 (toList!6693 lm!2709)))))))

(declare-fun b!4778780 () Bool)

(assert (=> b!4778780 (= e!2983365 (ListMap!6166 Nil!53943))))

(assert (= (and d!1527485 c!814721) b!4778779))

(assert (= (and d!1527485 (not c!814721)) b!4778780))

(declare-fun m!5755052 () Bool)

(assert (=> d!1527485 m!5755052))

(declare-fun m!5755054 () Bool)

(assert (=> d!1527485 m!5755054))

(declare-fun m!5755056 () Bool)

(assert (=> b!4778779 m!5755056))

(assert (=> b!4778779 m!5755056))

(declare-fun m!5755058 () Bool)

(assert (=> b!4778779 m!5755058))

(assert (=> b!4778655 d!1527485))

(declare-fun bs!1151313 () Bool)

(declare-fun d!1527489 () Bool)

(assert (= bs!1151313 (and d!1527489 start!490216)))

(declare-fun lambda!227513 () Int)

(assert (=> bs!1151313 (= lambda!227513 lambda!227490)))

(declare-fun bs!1151314 () Bool)

(assert (= bs!1151314 (and d!1527489 d!1527479)))

(assert (=> bs!1151314 (= lambda!227513 lambda!227507)))

(declare-fun bs!1151315 () Bool)

(assert (= bs!1151315 (and d!1527489 d!1527485)))

(assert (=> bs!1151315 (= lambda!227513 lambda!227510)))

(assert (=> d!1527489 (contains!17446 lm!2709 (hash!4785 hashF!1687 key!6641))))

(declare-fun lt!1941612 () Unit!139102)

(declare-fun choose!34203 (ListLongMap!5115 K!15507 Hashable!6807) Unit!139102)

(assert (=> d!1527489 (= lt!1941612 (choose!34203 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1527489 (forall!12087 (toList!6693 lm!2709) lambda!227513)))

(assert (=> d!1527489 (= (lemmaInGenMapThenLongMapContainsHash!1003 lm!2709 key!6641 hashF!1687) lt!1941612)))

(declare-fun bs!1151316 () Bool)

(assert (= bs!1151316 d!1527489))

(assert (=> bs!1151316 m!5754906))

(assert (=> bs!1151316 m!5754906))

(assert (=> bs!1151316 m!5755020))

(declare-fun m!5755060 () Bool)

(assert (=> bs!1151316 m!5755060))

(declare-fun m!5755062 () Bool)

(assert (=> bs!1151316 m!5755062))

(assert (=> b!4778655 d!1527489))

(declare-fun bs!1151318 () Bool)

(declare-fun d!1527491 () Bool)

(assert (= bs!1151318 (and d!1527491 start!490216)))

(declare-fun lambda!227516 () Int)

(assert (=> bs!1151318 (= lambda!227516 lambda!227490)))

(declare-fun bs!1151319 () Bool)

(assert (= bs!1151319 (and d!1527491 d!1527479)))

(assert (=> bs!1151319 (= lambda!227516 lambda!227507)))

(declare-fun bs!1151320 () Bool)

(assert (= bs!1151320 (and d!1527491 d!1527485)))

(assert (=> bs!1151320 (= lambda!227516 lambda!227510)))

(declare-fun bs!1151321 () Bool)

(assert (= bs!1151321 (and d!1527491 d!1527489)))

(assert (=> bs!1151321 (= lambda!227516 lambda!227513)))

(assert (=> d!1527491 (contains!17447 (extractMap!2334 (toList!6693 lm!2709)) key!6641)))

(declare-fun lt!1941619 () Unit!139102)

(declare-fun choose!34204 (ListLongMap!5115 K!15507 Hashable!6807) Unit!139102)

(assert (=> d!1527491 (= lt!1941619 (choose!34204 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1527491 (forall!12087 (toList!6693 lm!2709) lambda!227516)))

(assert (=> d!1527491 (= (lemmaListContainsThenExtractedMapContains!655 lm!2709 key!6641 hashF!1687) lt!1941619)))

(declare-fun bs!1151322 () Bool)

(assert (= bs!1151322 d!1527491))

(assert (=> bs!1151322 m!5754912))

(assert (=> bs!1151322 m!5754912))

(assert (=> bs!1151322 m!5754914))

(declare-fun m!5755074 () Bool)

(assert (=> bs!1151322 m!5755074))

(declare-fun m!5755076 () Bool)

(assert (=> bs!1151322 m!5755076))

(assert (=> b!4778655 d!1527491))

(declare-fun d!1527497 () Bool)

(declare-fun lt!1941622 () Bool)

(declare-fun content!9628 (List!54068) (Set tuple2!56398))

(assert (=> d!1527497 (= lt!1941622 (set.member lt!1941506 (content!9628 (toList!6693 lm!2709))))))

(declare-fun e!2983376 () Bool)

(assert (=> d!1527497 (= lt!1941622 e!2983376)))

(declare-fun res!2028590 () Bool)

(assert (=> d!1527497 (=> (not res!2028590) (not e!2983376))))

(assert (=> d!1527497 (= res!2028590 (is-Cons!53944 (toList!6693 lm!2709)))))

(assert (=> d!1527497 (= (contains!17445 (toList!6693 lm!2709) lt!1941506) lt!1941622)))

(declare-fun b!4778792 () Bool)

(declare-fun e!2983377 () Bool)

(assert (=> b!4778792 (= e!2983376 e!2983377)))

(declare-fun res!2028591 () Bool)

(assert (=> b!4778792 (=> res!2028591 e!2983377)))

(assert (=> b!4778792 (= res!2028591 (= (h!60360 (toList!6693 lm!2709)) lt!1941506))))

(declare-fun b!4778793 () Bool)

(assert (=> b!4778793 (= e!2983377 (contains!17445 (t!361518 (toList!6693 lm!2709)) lt!1941506))))

(assert (= (and d!1527497 res!2028590) b!4778792))

(assert (= (and b!4778792 (not res!2028591)) b!4778793))

(declare-fun m!5755078 () Bool)

(assert (=> d!1527497 m!5755078))

(declare-fun m!5755080 () Bool)

(assert (=> d!1527497 m!5755080))

(declare-fun m!5755082 () Bool)

(assert (=> b!4778793 m!5755082))

(assert (=> b!4778655 d!1527497))

(declare-fun d!1527499 () Bool)

(assert (=> d!1527499 (= (isDefined!10036 lt!1941510) (not (isEmpty!29337 lt!1941510)))))

(declare-fun bs!1151323 () Bool)

(assert (= bs!1151323 d!1527499))

(declare-fun m!5755084 () Bool)

(assert (=> bs!1151323 m!5755084))

(assert (=> b!4778655 d!1527499))

(declare-fun d!1527501 () Bool)

(assert (=> d!1527501 (= (get!18318 lt!1941510) (v!48070 lt!1941510))))

(assert (=> b!4778655 d!1527501))

(declare-fun d!1527503 () Bool)

(declare-fun dynLambda!22004 (Int tuple2!56398) Bool)

(assert (=> d!1527503 (dynLambda!22004 lambda!227490 lt!1941506)))

(declare-fun lt!1941625 () Unit!139102)

(declare-fun choose!34205 (List!54068 Int tuple2!56398) Unit!139102)

(assert (=> d!1527503 (= lt!1941625 (choose!34205 (toList!6693 lm!2709) lambda!227490 lt!1941506))))

(declare-fun e!2983380 () Bool)

(assert (=> d!1527503 e!2983380))

(declare-fun res!2028594 () Bool)

(assert (=> d!1527503 (=> (not res!2028594) (not e!2983380))))

(assert (=> d!1527503 (= res!2028594 (forall!12087 (toList!6693 lm!2709) lambda!227490))))

(assert (=> d!1527503 (= (forallContained!4032 (toList!6693 lm!2709) lambda!227490 lt!1941506) lt!1941625)))

(declare-fun b!4778796 () Bool)

(assert (=> b!4778796 (= e!2983380 (contains!17445 (toList!6693 lm!2709) lt!1941506))))

(assert (= (and d!1527503 res!2028594) b!4778796))

(declare-fun b_lambda!185349 () Bool)

(assert (=> (not b_lambda!185349) (not d!1527503)))

(declare-fun m!5755086 () Bool)

(assert (=> d!1527503 m!5755086))

(declare-fun m!5755088 () Bool)

(assert (=> d!1527503 m!5755088))

(assert (=> d!1527503 m!5754892))

(assert (=> b!4778796 m!5754918))

(assert (=> b!4778655 d!1527503))

(declare-fun d!1527505 () Bool)

(declare-fun get!18320 (Option!12895) List!54067)

(assert (=> d!1527505 (= (apply!12862 lm!2709 lt!1941508) (get!18320 (getValueByKey!2262 (toList!6693 lm!2709) lt!1941508)))))

(declare-fun bs!1151324 () Bool)

(assert (= bs!1151324 d!1527505))

(declare-fun m!5755090 () Bool)

(assert (=> bs!1151324 m!5755090))

(assert (=> bs!1151324 m!5755090))

(declare-fun m!5755092 () Bool)

(assert (=> bs!1151324 m!5755092))

(assert (=> b!4778655 d!1527505))

(declare-fun d!1527507 () Bool)

(declare-fun e!2983386 () Bool)

(assert (=> d!1527507 e!2983386))

(declare-fun res!2028597 () Bool)

(assert (=> d!1527507 (=> res!2028597 e!2983386)))

(declare-fun lt!1941637 () Bool)

(assert (=> d!1527507 (= res!2028597 (not lt!1941637))))

(declare-fun lt!1941636 () Bool)

(assert (=> d!1527507 (= lt!1941637 lt!1941636)))

(declare-fun lt!1941634 () Unit!139102)

(declare-fun e!2983385 () Unit!139102)

(assert (=> d!1527507 (= lt!1941634 e!2983385)))

(declare-fun c!814724 () Bool)

(assert (=> d!1527507 (= c!814724 lt!1941636)))

(declare-fun containsKey!3776 (List!54068 (_ BitVec 64)) Bool)

(assert (=> d!1527507 (= lt!1941636 (containsKey!3776 (toList!6693 lm!2709) lt!1941508))))

(assert (=> d!1527507 (= (contains!17446 lm!2709 lt!1941508) lt!1941637)))

(declare-fun b!4778803 () Bool)

(declare-fun lt!1941635 () Unit!139102)

(assert (=> b!4778803 (= e!2983385 lt!1941635)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2056 (List!54068 (_ BitVec 64)) Unit!139102)

(assert (=> b!4778803 (= lt!1941635 (lemmaContainsKeyImpliesGetValueByKeyDefined!2056 (toList!6693 lm!2709) lt!1941508))))

(declare-fun isDefined!10039 (Option!12895) Bool)

(assert (=> b!4778803 (isDefined!10039 (getValueByKey!2262 (toList!6693 lm!2709) lt!1941508))))

(declare-fun b!4778804 () Bool)

(declare-fun Unit!139108 () Unit!139102)

(assert (=> b!4778804 (= e!2983385 Unit!139108)))

(declare-fun b!4778805 () Bool)

(assert (=> b!4778805 (= e!2983386 (isDefined!10039 (getValueByKey!2262 (toList!6693 lm!2709) lt!1941508)))))

(assert (= (and d!1527507 c!814724) b!4778803))

(assert (= (and d!1527507 (not c!814724)) b!4778804))

(assert (= (and d!1527507 (not res!2028597)) b!4778805))

(declare-fun m!5755094 () Bool)

(assert (=> d!1527507 m!5755094))

(declare-fun m!5755096 () Bool)

(assert (=> b!4778803 m!5755096))

(assert (=> b!4778803 m!5755090))

(assert (=> b!4778803 m!5755090))

(declare-fun m!5755098 () Bool)

(assert (=> b!4778803 m!5755098))

(assert (=> b!4778805 m!5755090))

(assert (=> b!4778805 m!5755090))

(assert (=> b!4778805 m!5755098))

(assert (=> b!4778655 d!1527507))

(declare-fun d!1527509 () Bool)

(declare-fun hash!4787 (Hashable!6807 K!15507) (_ BitVec 64))

(assert (=> d!1527509 (= (hash!4785 hashF!1687 key!6641) (hash!4787 hashF!1687 key!6641))))

(declare-fun bs!1151325 () Bool)

(assert (= bs!1151325 d!1527509))

(declare-fun m!5755100 () Bool)

(assert (=> bs!1151325 m!5755100))

(assert (=> b!4778655 d!1527509))

(declare-fun d!1527511 () Bool)

(declare-fun res!2028602 () Bool)

(declare-fun e!2983391 () Bool)

(assert (=> d!1527511 (=> res!2028602 e!2983391)))

(assert (=> d!1527511 (= res!2028602 (is-Nil!53944 (toList!6693 lm!2709)))))

(assert (=> d!1527511 (= (forall!12087 (toList!6693 lm!2709) lambda!227490) e!2983391)))

(declare-fun b!4778810 () Bool)

(declare-fun e!2983392 () Bool)

(assert (=> b!4778810 (= e!2983391 e!2983392)))

(declare-fun res!2028603 () Bool)

(assert (=> b!4778810 (=> (not res!2028603) (not e!2983392))))

(assert (=> b!4778810 (= res!2028603 (dynLambda!22004 lambda!227490 (h!60360 (toList!6693 lm!2709))))))

(declare-fun b!4778811 () Bool)

(assert (=> b!4778811 (= e!2983392 (forall!12087 (t!361518 (toList!6693 lm!2709)) lambda!227490))))

(assert (= (and d!1527511 (not res!2028602)) b!4778810))

(assert (= (and b!4778810 res!2028603) b!4778811))

(declare-fun b_lambda!185351 () Bool)

(assert (=> (not b_lambda!185351) (not b!4778810)))

(declare-fun m!5755102 () Bool)

(assert (=> b!4778810 m!5755102))

(declare-fun m!5755104 () Bool)

(assert (=> b!4778811 m!5755104))

(assert (=> start!490216 d!1527511))

(declare-fun d!1527513 () Bool)

(declare-fun isStrictlySorted!838 (List!54068) Bool)

(assert (=> d!1527513 (= (inv!69534 lm!2709) (isStrictlySorted!838 (toList!6693 lm!2709)))))

(declare-fun bs!1151326 () Bool)

(assert (= bs!1151326 d!1527513))

(declare-fun m!5755106 () Bool)

(assert (=> bs!1151326 m!5755106))

(assert (=> start!490216 d!1527513))

(declare-fun bs!1151327 () Bool)

(declare-fun d!1527515 () Bool)

(assert (= bs!1151327 (and d!1527515 d!1527489)))

(declare-fun lambda!227519 () Int)

(assert (=> bs!1151327 (not (= lambda!227519 lambda!227513))))

(declare-fun bs!1151328 () Bool)

(assert (= bs!1151328 (and d!1527515 d!1527491)))

(assert (=> bs!1151328 (not (= lambda!227519 lambda!227516))))

(declare-fun bs!1151329 () Bool)

(assert (= bs!1151329 (and d!1527515 start!490216)))

(assert (=> bs!1151329 (not (= lambda!227519 lambda!227490))))

(declare-fun bs!1151330 () Bool)

(assert (= bs!1151330 (and d!1527515 d!1527479)))

(assert (=> bs!1151330 (not (= lambda!227519 lambda!227507))))

(declare-fun bs!1151331 () Bool)

(assert (= bs!1151331 (and d!1527515 d!1527485)))

(assert (=> bs!1151331 (not (= lambda!227519 lambda!227510))))

(assert (=> d!1527515 true))

(assert (=> d!1527515 (= (allKeysSameHashInMap!2212 lm!2709 hashF!1687) (forall!12087 (toList!6693 lm!2709) lambda!227519))))

(declare-fun bs!1151332 () Bool)

(assert (= bs!1151332 d!1527515))

(declare-fun m!5755108 () Bool)

(assert (=> bs!1151332 m!5755108))

(assert (=> b!4778657 d!1527515))

(declare-fun d!1527517 () Bool)

(declare-fun res!2028612 () Bool)

(declare-fun e!2983399 () Bool)

(assert (=> d!1527517 (=> res!2028612 e!2983399)))

(declare-fun e!2983400 () Bool)

(assert (=> d!1527517 (= res!2028612 e!2983400)))

(declare-fun res!2028610 () Bool)

(assert (=> d!1527517 (=> (not res!2028610) (not e!2983400))))

(assert (=> d!1527517 (= res!2028610 (is-Cons!53944 (toList!6693 lm!2709)))))

(assert (=> d!1527517 (= (containsKeyBiggerList!463 (toList!6693 lm!2709) key!6641) e!2983399)))

(declare-fun b!4778820 () Bool)

(assert (=> b!4778820 (= e!2983400 (containsKey!3775 (_2!31493 (h!60360 (toList!6693 lm!2709))) key!6641))))

(declare-fun b!4778821 () Bool)

(declare-fun e!2983401 () Bool)

(assert (=> b!4778821 (= e!2983399 e!2983401)))

(declare-fun res!2028611 () Bool)

(assert (=> b!4778821 (=> (not res!2028611) (not e!2983401))))

(assert (=> b!4778821 (= res!2028611 (is-Cons!53944 (toList!6693 lm!2709)))))

(declare-fun b!4778822 () Bool)

(assert (=> b!4778822 (= e!2983401 (containsKeyBiggerList!463 (t!361518 (toList!6693 lm!2709)) key!6641))))

(assert (= (and d!1527517 res!2028610) b!4778820))

(assert (= (and d!1527517 (not res!2028612)) b!4778821))

(assert (= (and b!4778821 res!2028611) b!4778822))

(declare-fun m!5755110 () Bool)

(assert (=> b!4778820 m!5755110))

(declare-fun m!5755112 () Bool)

(assert (=> b!4778822 m!5755112))

(assert (=> b!4778659 d!1527517))

(declare-fun d!1527519 () Bool)

(declare-fun lt!1941640 () Int)

(assert (=> d!1527519 (>= lt!1941640 0)))

(declare-fun e!2983404 () Int)

(assert (=> d!1527519 (= lt!1941640 e!2983404)))

(declare-fun c!814727 () Bool)

(assert (=> d!1527519 (= c!814727 (is-Nil!53944 (toList!6693 lm!2709)))))

(assert (=> d!1527519 (= (size!36359 (toList!6693 lm!2709)) lt!1941640)))

(declare-fun b!4778827 () Bool)

(assert (=> b!4778827 (= e!2983404 0)))

(declare-fun b!4778828 () Bool)

(assert (=> b!4778828 (= e!2983404 (+ 1 (size!36359 (t!361518 (toList!6693 lm!2709)))))))

(assert (= (and d!1527519 c!814727) b!4778827))

(assert (= (and d!1527519 (not c!814727)) b!4778828))

(declare-fun m!5755114 () Bool)

(assert (=> b!4778828 m!5755114))

(assert (=> b!4778658 d!1527519))

(declare-fun b!4778833 () Bool)

(declare-fun e!2983407 () Bool)

(declare-fun tp!1357297 () Bool)

(declare-fun tp!1357298 () Bool)

(assert (=> b!4778833 (= e!2983407 (and tp!1357297 tp!1357298))))

(assert (=> b!4778656 (= tp!1357289 e!2983407)))

(assert (= (and b!4778656 (is-Cons!53944 (toList!6693 lm!2709))) b!4778833))

(declare-fun b_lambda!185353 () Bool)

(assert (= b_lambda!185351 (or start!490216 b_lambda!185353)))

(declare-fun bs!1151333 () Bool)

(declare-fun d!1527521 () Bool)

(assert (= bs!1151333 (and d!1527521 start!490216)))

(assert (=> bs!1151333 (= (dynLambda!22004 lambda!227490 (h!60360 (toList!6693 lm!2709))) (noDuplicateKeys!2284 (_2!31493 (h!60360 (toList!6693 lm!2709)))))))

(declare-fun m!5755116 () Bool)

(assert (=> bs!1151333 m!5755116))

(assert (=> b!4778810 d!1527521))

(declare-fun b_lambda!185355 () Bool)

(assert (= b_lambda!185349 (or start!490216 b_lambda!185355)))

(declare-fun bs!1151334 () Bool)

(declare-fun d!1527523 () Bool)

(assert (= bs!1151334 (and d!1527523 start!490216)))

(assert (=> bs!1151334 (= (dynLambda!22004 lambda!227490 lt!1941506) (noDuplicateKeys!2284 (_2!31493 lt!1941506)))))

(declare-fun m!5755118 () Bool)

(assert (=> bs!1151334 m!5755118))

(assert (=> d!1527503 d!1527523))

(push 1)

(assert (not d!1527515))

(assert (not d!1527499))

(assert (not b_lambda!185353))

(assert (not b!4778710))

(assert (not b!4778811))

(assert tp_is_empty!33129)

(assert (not b!4778747))

(assert (not b!4778822))

(assert (not b!4778730))

(assert (not b!4778709))

(assert (not bm!334650))

(assert (not b!4778805))

(assert (not d!1527491))

(assert (not b!4778737))

(assert (not b!4778793))

(assert (not b!4778833))

(assert (not d!1527505))

(assert (not d!1527507))

(assert (not d!1527497))

(assert (not b!4778708))

(assert (not d!1527489))

(assert (not b!4778707))

(assert tp_is_empty!33131)

(assert (not b!4778735))

(assert (not b!4778828))

(assert (not b!4778750))

(assert (not d!1527503))

(assert (not d!1527509))

(assert (not d!1527469))

(assert (not bs!1151334))

(assert (not d!1527467))

(assert (not bs!1151333))

(assert (not d!1527485))

(assert (not b!4778820))

(assert (not b!4778796))

(assert (not d!1527479))

(assert (not b!4778706))

(assert (not d!1527475))

(assert (not d!1527513))

(assert (not b!4778733))

(assert (not b!4778749))

(assert (not b!4778736))

(assert (not b!4778748))

(assert (not b_lambda!185355))

(assert (not b!4778704))

(assert (not b!4778779))

(assert (not b!4778803))

(assert (not b!4778703))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

